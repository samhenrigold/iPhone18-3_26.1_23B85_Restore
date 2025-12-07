uint64_t sub_10006AC24(uint64_t result, uint64_t a2, uint64_t a3, NSObject *a4)
{
  if (result)
  {

    sub_10006911C(a2, a2 + a3, a4);
    v8 = v7;

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006ACA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    v4 = sub_10006C624();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006AD0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    v4 = sub_10006CA2C();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006AD74(uint64_t result)
{
  if (result)
  {
    *(result + OBJC_IVAR____TtC16KnoxClientPublic30KnoxRandomAccessDownloadStream_isCancelled) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006AD90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    v4 = sub_10006A1F0();
    __chkstk_darwin(v4);
    v6 = v5;
    OS_dispatch_queue.sync<A>(execute:)();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006AE88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_request;
  v4 = type metadata accessor for URLRequest();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void sub_10006AEFC(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v85 = *(v8 - 8);
  v86 = v8;
  __chkstk_darwin(v8);
  v84 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v80 - 8);
  __chkstk_darwin(v80);
  v83 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v82 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v14 - 8);
  v81 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v87 = v5;
  sub_1000039E8(&unk_1004A7340, &unk_100376F30);
  v79 = v16;
  OS_dispatch_queue.sync<A>(execute:)();
  v19 = aBlock;
  v20 = a2 >> 62;
  if (!aBlock || (v21 = a2 >> 62, v22 = v10, v23 = [aBlock statusCode], v19, v24 = v23 == 200, v10 = v22, v4 = v3, LODWORD(v20) = a2 >> 62, !v24))
  {
    if (v20 > 1)
    {
      if (v20 != 2)
      {
        v26 = 0;
        goto LABEL_17;
      }

      v28 = *(a1 + 16);
      v27 = *(a1 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = (v27 - v28);
      if (!v29)
      {
        goto LABEL_17;
      }

      __break(1u);
    }

    else if (!v20)
    {
      v26 = BYTE6(a2);
LABEL_17:
      v19 = *&v5[OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_size];
      if (v26 == v19)
      {
        v95 = a1;
        v96 = a2;
        sub_1000318C0(a1, a2, v17, v18);
        goto LABEL_48;
      }

      aBlock = 0;
      v89 = 0xE000000000000000;
      _StringGuts.grow(_:)(59);
      v30._countAndFlagsBits = 0x6465766965636552;
      v30._object = 0xE900000000000020;
      String.append(_:)(v30);
      if (v20 <= 1)
      {
        if (!v20)
        {
          v31 = BYTE6(a2);
LABEL_32:
          v94 = v31;
          v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v36);

          v37._object = 0x800000010042D870;
          v37._countAndFlagsBits = 0xD000000000000020;
          String.append(_:)(v37);
          v94 = v19;
          v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v38);

          v39._countAndFlagsBits = 0x6E615220726F6620;
          v39._object = 0xEC000000203A6567;
          String.append(_:)(v39);
          String.append(_:)(*&v5[OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_rangeHeader]);
          v77 = aBlock;
          v78 = v89;
          v79 = type metadata accessor for KnoxServiceClient.ClientError();
          v40 = swift_allocObject();
          sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
          v76[1] = "hivePointer.swift";
          static DispatchQoS.userInitiated.getter();
          aBlock = _swiftEmptyArrayStorage;
          sub_10006C56C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
          sub_1000039E8(&unk_1004A7850, &qword_100376280);
          sub_10003DEE8();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          (*(v10 + 104))(v83, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v80);
          v41 = v84;
          v42 = v85;
          v43 = v86;
          (*(v85 + 104))(v84, enum case for DispatchQoS.QoSClass.default(_:), v86);
          static OS_dispatch_queue.global(qos:)();
          (*(v42 + 8))(v41, v43);
          v44 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
          v45 = v77;
          *(v40 + 88) = v44;
          v46 = 386;
LABEL_43:
          *(v40 + 16) = 0xD00000000000001ALL;
          *(v40 + 24) = 0x800000010042A530;
          *(v40 + 32) = 0xD00000000000006FLL;
          *(v40 + 40) = 0x800000010042D800;
          *(v40 + 56) = 10;
          *(v40 + 48) = v46;
          v54 = v78;
          *(v40 + 64) = v45;
          *(v40 + 72) = v54;
          *(v40 + 80) = 0;
          sub_10006C56C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
          swift_allocError();
          *v55 = v40;
          swift_willThrow();
          return;
        }

LABEL_30:
        LODWORD(v31) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v31 = v31;
        goto LABEL_32;
      }

      v31 = 0;
      if (v20 != 2)
      {
        goto LABEL_32;
      }

      v33 = *(a1 + 16);
      v32 = *(a1 + 24);
      v29 = __OFSUB__(v32, v33);
      v31 = (v32 - v33);
      if (!v29)
      {
        goto LABEL_32;
      }

      __break(1u);
      goto LABEL_26;
    }

    LODWORD(v26) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v26 = v26;
    goto LABEL_17;
  }

  if (v21 > 1)
  {
LABEL_26:
    if (v20 == 2)
    {
      v35 = *(a1 + 16);
      v34 = *(a1 + 24);
      v29 = __OFSUB__(v34, v35);
      v25 = v34 - v35;
      if (v29)
      {
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      v25 = 0;
    }

LABEL_36:
    if (v25 != *&v5[OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_fullFileSize])
    {
      v78 = 0x800000010042D8A0;
      v79 = type metadata accessor for KnoxServiceClient.ClientError();
      v40 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v77 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_10006C56C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v10 + 104))(v83, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v80);
      v52 = v84;
      v51 = v85;
      v53 = v86;
      (*(v85 + 104))(v84, enum case for DispatchQoS.QoSClass.default(_:), v86);
      static OS_dispatch_queue.global(qos:)();
      (*(v51 + 8))(v52, v53);
      *(v40 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v45 = 0xD000000000000019;
      v46 = 375;
      goto LABEL_43;
    }

    v47 = *&v5[OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_offset];
    v48 = *&v5[OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_size];
    if (__OFADD__(v47, v48))
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v47 + v48 < v47)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v49 = *(a1 + 16);
        v50 = *(a1 + 24);
LABEL_46:
        if (v50 < v49)
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }
      }
    }

    else if (v20)
    {
      v49 = a1;
      v50 = a1 >> 32;
      goto LABEL_46;
    }

    v95 = Data._Representation.subscript.getter();
    v96 = v56;
LABEL_48:
    v57 = v5;
    v58 = v4;
    sub_10006C1E4(&v95, v57);
    v59 = swift_allocObject();
    *(v59 + 16) = v57;
    *(v59 + 24) = 1;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_10001F9F8;
    *(v60 + 24) = v59;
    v92 = sub_10001F874;
    v93 = v60;
    aBlock = _NSConcreteStackBlock;
    v89 = 1107296256;
    v90 = sub_10003885C;
    v91 = &unk_10047F3A0;
    v61 = _Block_copy(&aBlock);
    v62 = v57;

    dispatch_sync(v79, v61);
    _Block_release(v61);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v64 = *&v62[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
    v65 = v95;
    v66 = v96;
    v67 = v96 >> 62;
    v86 = v58;
    if ((v96 >> 62) <= 1)
    {
      if (!v67)
      {
        v68 = BYTE6(v96);
        goto LABEL_59;
      }

LABEL_56:
      if (__OFSUB__(HIDWORD(v65), v65))
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v68 = HIDWORD(v65) - v65;
      goto LABEL_59;
    }

    if (v67 == 2)
    {
      v70 = *(v95 + 16);
      v69 = *(v95 + 24);
      v68 = v69 - v70;
      if (__OFSUB__(v69, v70))
      {
        __break(1u);
        goto LABEL_56;
      }
    }

    else
    {
      v68 = 0;
    }

LABEL_59:
    v71 = *(v64 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue);
    v72 = swift_allocObject();
    *(v72 + 16) = v68;
    *(v72 + 24) = v64;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_100027124;
    *(v73 + 24) = v72;
    v92 = sub_10001FA40;
    v93 = v73;
    aBlock = _NSConcreteStackBlock;
    v89 = 1107296256;
    v90 = sub_10003885C;
    v91 = &unk_10047F418;
    v74 = _Block_copy(&aBlock);

    dispatch_sync(v71, v74);
    _Block_release(v74);
    LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

    if ((v71 & 1) == 0)
    {
      v75 = *&v62[OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_dataTaskFinishedCallback];

      OS_dispatch_queue.sync<A>(execute:)();
      v75(aBlock, 0);

      sub_100031928(v65, v66);
      return;
    }

    goto LABEL_62;
  }

  if (!v21)
  {
    v25 = BYTE6(a2);
    goto LABEL_36;
  }

  LODWORD(v25) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v25 = v25;
    goto LABEL_36;
  }

LABEL_69:
  __break(1u);
}

char *sub_10006BB54()
{
  type metadata accessor for RetryRunner();
  swift_allocObject();
  v1 = v0;
  v2 = sub_100072164(v1);
  v3 = v1;
  sub_10007AAAC(v2, v3);

  return v3;
}

void sub_10006BBC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    goto LABEL_4;
  }

  v7 = static os_log_type_t.error.getter();
  sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100376A40;
  v9 = (*(*a2 + 168))();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_10001A9EC();
    *(v8 + 32) = v11;
    *(v8 + 40) = v12;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v13, "%{public}s", 10, 2, v8);

    type metadata accessor for KnoxServiceClient.ClientError();
    sub_10006C56C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    v14 = swift_allocError();
    *v15 = a2;
    v16 = *((swift_isaMask & *a1) + 0x410);

    v16(v14);

    v17 = *(a3 + OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_dataTaskFinishedCallback);
    v18 = swift_allocError();
    *v19 = a2;

    v17(0, v18);

LABEL_4:
    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100376BB0;
    v21 = (a3 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name);
    swift_beginAccess();
    v23 = *v21;
    v22 = v21[1];
    *(v20 + 56) = &type metadata for String;
    v24 = sub_10001A9EC();
    *(v20 + 64) = v24;
    *(v20 + 32) = v23;
    *(v20 + 40) = v22;
    __chkstk_darwin(v24);

    OS_dispatch_queue.sync<A>(execute:)();
    *(v20 + 96) = &type metadata for UInt;
    *(v20 + 104) = &protocol witness table for UInt;
    *(v20 + 72) = v27;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v25 = static OS_os_log.default.getter();
    v26 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("%{public}s finished in total tries: %{public}i", 46, 2, &_mh_execute_header, v25, v26, v20);

    return;
  }

  __break(1u);
}

uint64_t sub_10006BF9C()
{

  v1 = OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_request;
  v2 = type metadata accessor for URLRequest();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_10006C02C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KnoxRandomAccessDownloadStream.DownloadByteRangeIntoBufferTask(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006C120(uint64_t a1)
{
  result = type metadata accessor for URLRequest();
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

void sub_10006C1E4(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (v5)
    {
      v23 = a2;
      sub_1000318C0(v4, v3, v24, v25);
      sub_100031928(v4, v3);
      __src = v4;
      v28 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1003780A0;
      sub_100031928(0, 0xC000000000000000);
      sub_10006C490(&__src, v23);

      v26 = v28 | 0x4000000000000000;
      *a1 = __src;
      a1[1] = v26;
      return;
    }

    v29 = HIWORD(v3);
    v6 = a2;
    sub_100031928(v4, v3);
    __src = v4;
    LOWORD(v28) = v3;
    BYTE2(v28) = BYTE2(v3);
    BYTE3(v28) = BYTE3(v3);
    BYTE4(v28) = BYTE4(v3);
    BYTE5(v28) = BYTE5(v3);
    BYTE6(v28) = BYTE6(v3);
    if (!BYTE6(v3))
    {
LABEL_6:
      v8 = __src;
      v9 = v28 | ((WORD2(v28) | (BYTE6(v28) << 16)) << 32);

      *a1 = v8;
      a1[1] = v9;
      return;
    }

    v7 = *&v6[OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_outputBuffer];
    if (v7)
    {
      memcpy(v7, &__src, BYTE6(v3));
      goto LABEL_6;
    }

    goto LABEL_23;
  }

  if (v5 != 2)
  {

    return;
  }

  v10 = a2;

  sub_100031928(v4, v3);
  __src = v4;
  v28 = v3 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_1003780A0;
  sub_100031928(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v11 = v28;
  v12 = *(__src + 16);
  v13 = *(__src + 24);
  v14 = __DataStorage._bytes.getter();
  if (!v14)
  {
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v14;
  v16 = __DataStorage._offset.getter();
  v17 = v12 - v16;
  if (__OFSUB__(v12, v16))
  {
    __break(1u);
    goto LABEL_21;
  }

  v18 = __OFSUB__(v13, v12);
  v19 = v13 - v12;
  if (v18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = __DataStorage._length.getter();
  if (v20 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  if (!v21)
  {
    goto LABEL_17;
  }

  v22 = *&v10[OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_outputBuffer];
  if (v22)
  {
    memmove(v22, (v15 + v17), v21);
LABEL_17:

    *a1 = __src;
    a1[1] = v11 | 0x8000000000000000;
    return;
  }

LABEL_24:
  __break(1u);
}

void sub_10006C490(int *a1, char *a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = __DataStorage._offset.getter();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v5 - v4;
  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = *&a2[OBJC_IVAR____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask_outputBuffer];
  if (v13)
  {
    memmove(v13, (v7 + v9), v12);
LABEL_10:

    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_10006C56C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006C5B4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10006C5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
}

uint64_t sub_10006C624()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v21 = *(v0 - 8);
  v22 = v0;
  __chkstk_darwin(v0);
  v2 = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v16 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v17 = 0x800000010042D800;
  v18 = 0x800000010042D920;
  v20 = type metadata accessor for KnoxServiceClient.ClientError();
  v7 = swift_allocObject();
  v15[1] = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  v15[2] = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10006C56C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  v9 = v21;
  v8 = v22;
  (*(v21 + 104))(v2, enum case for DispatchQoS.QoSClass.default(_:), v22);
  static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v2, v8);
  v10 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  strcpy((v7 + 16), "write(from:)");
  *(v7 + 29) = 0;
  *(v7 + 30) = -5120;
  *(v7 + 32) = 0xD00000000000006FLL;
  v11 = v17;
  *(v7 + 56) = 14;
  *(v7 + 40) = v11;
  *(v7 + 48) = 212;
  v12 = v18;
  *(v7 + 64) = 0xD00000000000003FLL;
  *(v7 + 72) = v12;
  *(v7 + 80) = 0;
  *(v7 + 88) = v10;
  sub_10006C56C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v13 = v7;
  return swift_willThrow();
}

uint64_t sub_10006CA2C()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v2 = v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v21 - 8);
  __chkstk_darwin(v21);
  v16 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v17 = 0x800000010042D800;
  v18 = 0x800000010042D900;
  v19 = 0x800000010042D920;
  v20 = type metadata accessor for KnoxServiceClient.ClientError();
  v7 = swift_allocObject();
  v15[0] = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  v15[1] = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10006C56C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
  v9 = v22;
  v8 = v23;
  (*(v22 + 104))(v2, enum case for DispatchQoS.QoSClass.default(_:), v23);
  static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v2, v8);
  v10 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = v18;
  *(v7 + 16) = 0xD000000000000015;
  *(v7 + 24) = v11;
  v12 = v17;
  *(v7 + 32) = 0xD00000000000006FLL;
  *(v7 + 40) = v12;
  *(v7 + 56) = 14;
  *(v7 + 48) = 216;
  *(v7 + 64) = 0xD00000000000003FLL;
  *(v7 + 72) = v19;
  *(v7 + 80) = 0;
  *(v7 + 88) = v10;
  sub_10006C56C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v13 = v7;
  return swift_willThrow();
}

uint64_t sub_10006CE60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CE98()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006CEEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006D068(uint64_t a1)
{
  v2 = a1;
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken_synchronizationQueue];
  sub_10006D268(a1, v11);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = v11[1];
  *(v4 + 24) = v11[0];
  *(v4 + 40) = v5;
  *(v4 + 56) = v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10006D320;
  *(v6 + 24) = v4;
  aBlock[4] = sub_10001F874;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003885C;
  aBlock[3] = &unk_10047F580;
  v7 = _Block_copy(aBlock);
  v8 = v1;

  dispatch_sync(v3, v7);
  _Block_release(v7);
  sub_100013F2C(v2, &qword_1004A8038, &qword_100378170);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006D200(uint64_t a1, uint64_t a2)
{
  sub_10006D268(a2, v5);
  v3 = OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken__tokenFactory;
  swift_beginAccess();
  sub_10006F6C0(v5, a1 + v3);
  return swift_endAccess();
}

uint64_t sub_10006D268(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A8038, &qword_100378170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006D2D8()
{
  if (*(v0 + 48))
  {
    sub_100003C3C((v0 + 24));
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10006D33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
}

void (*sub_10006D354(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  __chkstk_darwin(v3);
  sub_1000039E8(&qword_1004A8038, &qword_100378170);
  OS_dispatch_queue.sync<A>(execute:)();
  return sub_10006D444;
}

void sub_10006D444(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10006D268(*a1, v2 + 40);
    sub_10006D068(v2 + 40);
    sub_100013F2C(v2, &qword_1004A8038, &qword_100378170);
  }

  else
  {
    sub_10006D068(*a1);
  }

  free(v2);
}

unint64_t sub_10006D4BC()
{
  v2 = v0;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*((swift_isaMask & *v0) + 0x98))(v5);
  if (v8)
  {
    __chkstk_darwin(v8);
    *(&v24 - 2) = v0;
    sub_1000039E8(&qword_1004A8038, &qword_100378170);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v28)
    {
      sub_100003C88(&v27, v29);
      v9 = v30;
      v10 = v31;
      sub_10000E2A8(v29, v30);
      v11 = (*(v10 + 8))(v9, v10);
      if (v1)
      {
        return sub_100003C3C(v29);
      }

      if (v11)
      {
        v13 = (v11 + OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken_token);
        v14 = v11;
        swift_beginAccess();
        v16 = *v13;
        v15 = v13[1];
        v17 = (v2 + OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken_token);
        swift_beginAccess();
        *v17 = v16;
        v17[1] = v15;

        v18 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
        swift_beginAccess();
        (*(v4 + 16))(v7, &v14[v18], v3);

        v19 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
        swift_beginAccess();
        (*(v4 + 40))(v2 + v19, v7, v3);
        swift_endAccess();
      }

      sub_100003C3C(v29);
    }

    else
    {
      sub_100013F2C(&v27, &qword_1004A8038, &qword_100378170);
    }
  }

  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v25 = 0xD000000000000017;
  v26 = 0x800000010042DAA0;
  v20 = (v2 + OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken_token);
  swift_beginAccess();
  v21 = *v20;
  v22 = v20[1];

  v23._countAndFlagsBits = v21;
  v23._object = v22;
  String.append(_:)(v23);

  return v25;
}

uint64_t sub_10006D814(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken_token);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_10006D8E8()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = 0;
  v19[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v6 = type metadata accessor for OIDCToken(0);
  v20.receiver = v0;
  v20.super_class = v6;
  v7 = objc_msgSendSuper2(&v20, "description");
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v21 = v8;
  v22 = v10;
  v11._object = 0x800000010042DAC0;
  v11._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v11);
  v12 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v12, v2);
  v13 = Date.description.getter();
  v15 = v14;
  (*(v3 + 8))(v5, v2);
  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 39;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return v21;
}

uint64_t sub_10006DABC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken_token);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_10006DB28()
{
  v1 = (v0 + OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken_token);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_10006DB80(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken_token);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t type metadata accessor for OIDCToken(uint64_t a1)
{
  result = qword_1004A8090;
  if (!qword_1004A8090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *OIDCToken.init(token:expirationDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v26 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v23 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v24 = OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken_synchronizationQueue;
  sub_10000E014();
  v22[1] = " expirationDate: '";
  static DispatchQoS.userInitiated.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_10006F0AC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v23, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v25);
  v11 = v26;
  (*(v4 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v26);
  static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v6, v11);
  *&v3[v24] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = &v3[OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken__tokenFactory];
  *(v12 + 4) = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *&v3[OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken____lazy_storage___jsonEncoder] = 0;
  v13 = &v3[OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken_token];
  v14 = v28;
  *v13 = v27;
  v13[1] = v14;
  v15 = type metadata accessor for OIDCToken(0);
  v31.receiver = v3;
  v31.super_class = v15;
  v16 = objc_msgSendSuper2(&v31, "init");
  v17 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  swift_beginAccess();
  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 40);
  v20 = v16;
  v19(&v16[v17], v29, v18);
  swift_endAccess();

  return v20;
}

char *OIDCToken.init(from:)(void *a1)
{
  v63 = a1;
  v1 = sub_1000039E8(&qword_1004A73C0, &unk_100376A70);
  __chkstk_darwin(v1 - 8);
  v51 = &v45 - v2;
  v50 = type metadata accessor for Date();
  v47 = *(v50 - 8);
  v3 = __chkstk_darwin(v50);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v48 = &v45 - v6;
  __chkstk_darwin(v5);
  v45 = &v45 - v7;
  v52 = sub_1000039E8(&qword_1004A8050, &qword_100378178);
  v49 = *(v52 - 8);
  __chkstk_darwin(v52);
  v60 = &v45 - v8;
  v57 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v57 - 8);
  __chkstk_darwin(v57);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  v55 = OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken_synchronizationQueue;
  sub_10000E014();
  v53 = " expirationDate: '";
  static DispatchQoS.userInitiated.getter();
  v61 = _swiftEmptyArrayStorage;
  sub_10006F0AC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v54, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v56);
  v16 = v63;
  v17 = v57;
  (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v57);
  static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v11, v17);
  v18 = v58;
  *&v18[v55] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  p_superclass = &OBJC_METACLASS____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask.superclass;
  v20 = &v18[OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken__tokenFactory];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *&v18[OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken____lazy_storage___jsonEncoder] = 0;
  sub_10000E2A8(v16, v16[3]);
  sub_10006E97C();
  v21 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    sub_100003C3C(v63);

    sub_100013F2C(&v18[OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken__tokenFactory], &qword_1004A8038, &qword_100378170);

    type metadata accessor for OIDCToken(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v49;
    v22 = v50;
    v24 = v51;
    LOBYTE(v61) = 0;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = &v18[OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken_token];
    *v27 = v25;
    v27[1] = v28;
    v29 = type metadata accessor for OIDCToken(0);
    v62.receiver = v18;
    v62.super_class = v29;
    p_superclass = objc_msgSendSuper2(&v62, "init");
    LOBYTE(v61) = 1;
    sub_10006F0AC(&qword_1004A7D30, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v30 = v24;
    v31 = v22;
    v32 = v52;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v33 = v47;
    if ((*(v47 + 48))(v30, 1, v31) == 1)
    {
      sub_100013F2C(v30, &qword_1004A73C0, &unk_100376A70);
      v34 = v32;
      v35 = p_superclass;
      v36 = v46;
      Date.init()();
      v37 = v48;
      Date.addingTimeInterval(_:)();
      (*(v33 + 8))(v36, v31);
      (*(v23 + 8))(v60, v34);
      v38 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
      swift_beginAccess();
      (*(v33 + 40))(&v35[v38], v37, v31);
    }

    else
    {
      (*(v23 + 8))(v60, v32);
      v39 = *(v33 + 32);
      v40 = v45;
      v39(v45, v30, v31);
      v41 = v48;
      v39(v48, v40, v31);
      v42 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
      swift_beginAccess();
      v43 = *(v33 + 40);
      v44 = p_superclass;
      v43(p_superclass + v42, v41, v31);
    }

    swift_endAccess();
    sub_100003C3C(v63);
  }

  return p_superclass;
}

unint64_t sub_10006E97C()
{
  result = qword_1004A8058;
  if (!qword_1004A8058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8058);
  }

  return result;
}

uint64_t sub_10006E9D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6974617269707865;
  }

  else
  {
    v3 = 0x6E656B6F74;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEE00657461446E6FLL;
  }

  if (*a2)
  {
    v5 = 0x6974617269707865;
  }

  else
  {
    v5 = 0x6E656B6F74;
  }

  if (*a2)
  {
    v6 = 0xEE00657461446E6FLL;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10006EA80()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10006EB0C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10006EB84()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10006EC0C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10047AC90, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10006EC6C(uint64_t *a1@<X8>)
{
  v2 = 0x6E656B6F74;
  if (*v1)
  {
    v2 = 0x6974617269707865;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEE00657461446E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10006ECB4()
{
  if (*v0)
  {
    return 0x6974617269707865;
  }

  else
  {
    return 0x6E656B6F74;
  }
}

uint64_t sub_10006ECF8@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10047AC90, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10006ED5C(uint64_t a1)
{
  v2 = sub_10006E97C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006ED98(uint64_t a1)
{
  v2 = sub_10006E97C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006EDD4(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v17 = *(v5 - 8);
  v18 = v5;
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000039E8(&qword_1004A8060, &qword_100378180);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  sub_10000E2A8(a1, a1[3]);
  sub_10006E97C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  v19 = 0;

  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {

    v13 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
    swift_beginAccess();
    v14 = v17;
    v15 = v3 + v13;
    v16 = v18;
    (*(v17 + 16))(v7, v15, v18);
    v20 = 1;
    sub_10006F0AC(&qword_1004A7D40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v14 + 8))(v7, v16);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_10006F0AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006F154()
{
  sub_100013F2C(v0 + OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken__tokenFactory, &qword_1004A8038, &qword_100378170);
}

id OIDCToken.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OIDCToken(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006F240@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken_token);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

unint64_t sub_10006F558()
{
  result = qword_1004A80A0;
  if (!qword_1004A80A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A80A0);
  }

  return result;
}

unint64_t sub_10006F5B0()
{
  result = qword_1004A80A8;
  if (!qword_1004A80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A80A8);
  }

  return result;
}

unint64_t sub_10006F608()
{
  result = qword_1004A80B0;
  if (!qword_1004A80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A80B0);
  }

  return result;
}

uint64_t sub_10006F65C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC16KnoxClientPublic9OIDCToken__tokenFactory;
  swift_beginAccess();
  return sub_10006D268(v3 + v4, a1);
}

uint64_t sub_10006F6C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A8038, &qword_100378170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_10006F77C@<X0>(void *a2@<X8>)
{
  sub_1000039E8(&qword_1004A7A88, qword_100378380);
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a2 = v4;
  return result;
}

uint64_t sub_10006F804()
{
  sub_1000039E8(&qword_1004A7A88, qword_100378380);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

id sub_10006F884@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic14ServerInfoTask__serverInfo);
  *a2 = v2;
  return v2;
}

uint64_t sub_10006F8BC(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic14ServerInfoTask_syncronizationQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000701F4;
  *(v5 + 24) = v4;
  v11[4] = sub_10001F874;
  v11[5] = v5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10003885C;
  v11[3] = &unk_10047F6A8;
  v6 = _Block_copy(v11);
  v7 = a1;

  v8 = v1;

  dispatch_sync(v3, v6);

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*sub_10006FA28(uint64_t *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic14ServerInfoTask_syncronizationQueue);
  __chkstk_darwin(v3);
  sub_1000039E8(&qword_1004A7A88, qword_100378380);
  OS_dispatch_queue.sync<A>(execute:)();
  v4[6] = *v4;
  return sub_10006FB24;
}

void sub_10006FB24(void ****a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 6);
  v3 = *v4;
  v6 = (*a1)[7];
  v5 = (*a1)[8];
  if ((a2 & 1) == 0)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 24) = v3;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000720BC;
    *(v15 + 24) = v14;
    v2[4] = sub_10001FA40;
    v2[5] = v15;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_10003885C;
    v2[3] = &unk_10047F798;
    v16 = _Block_copy(v2);
    v17 = v3;

    v18 = v6;

    dispatch_sync(v5, v16);

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000720BC;
  *(v8 + 24) = v7;
  v2[4] = sub_10001FA40;
  v2[5] = v8;
  *v2 = _NSConcreteStackBlock;
  v2[1] = 1107296256;
  v2[2] = sub_10003885C;
  v2[3] = &unk_10047F720;
  v9 = _Block_copy(v2);
  v10 = v3;
  v11 = v6;
  v12 = v10;

  dispatch_sync(v5, v9);

  _Block_release(v9);
  v13 = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

char *ServerInfoTask.init(client:)(void *a1)
{
  v21 = a1;
  v20 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v18 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic14ServerInfoTask__serverInfo) = 0;
  v16 = OBJC_IVAR____TtC16KnoxClientPublic14ServerInfoTask_syncronizationQueue;
  sub_10000E014();
  v15 = "$__lazy_storage_$_jsonEncoder";
  static DispatchQoS.userInitiated.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100071E38(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  v9 = v20;
  (*(v2 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v20);
  static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v4, v9);
  *(v17 + v16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = v21;
  v11 = sub_10003D38C(v10);

  v12 = v11;
  v13 = &v12[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v13 = 0x6E49726576726553;
  *(v13 + 1) = 0xEA00000000006F66;

  return v12;
}

id sub_100070178@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC16KnoxClientPublic14ServerInfoTask__serverInfo);
  *a1 = v2;
  return v2;
}

uint64_t sub_1000701B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000701F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic14ServerInfoTask__serverInfo);
  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic14ServerInfoTask__serverInfo) = v2;
  v3 = v2;
}

uint64_t sub_100070240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
}

uint64_t sub_100070268@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v74 = *(v2 - 8);
  v75 = v2;
  __chkstk_darwin(v2);
  v73 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v70 = *(v4 - 8);
  v71 = v4;
  __chkstk_darwin(v4);
  v72 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v69);
  v68 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v67 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v9 - 8);
  v65 = &v58 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v60 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v58 - v15;
  v17 = sub_1000039E8(&qword_1004A7160, &unk_100378C70);
  __chkstk_darwin(v17 - 8);
  v19 = &v58 - v18;
  v20 = type metadata accessor for URLComponents();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client);
  v26 = v22;
  v27 = *(v12 + 16);
  v63 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL;
  v64 = v27;
  (v27)(v16, v25 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL, v11);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v66 = v12;
  v28 = (v12 + 8);
  v29 = *(v12 + 8);
  v76 = v11;
  v30 = v11;
  v31 = v28;
  v29(v16, v30);
  v79 = v21;
  if ((*(v21 + 48))(v19, 1, v26) == 1)
  {
    sub_100013F2C(v19, &qword_1004A7160, &unk_100378C70);
    v79 = 0x800000010042DBC0;
    v77 = 0;
    v78 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v77 = 0xD00000000000001ALL;
    v78 = 0x800000010042DC30;
    v32 = v76;
    (v64)(v16, v25 + v63, v76);
    sub_100071E38(&qword_1004AAE30, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    v29(v16, v32);
    v65 = v78;
    v66 = v77;
    v76 = type metadata accessor for KnoxServiceClient.ClientError();
    v34 = swift_allocObject();
    sub_10000E014();
    v64 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v77 = _swiftEmptyArrayStorage;
    sub_100071E38(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v70 + 104))(v72, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v71);
    v35 = v73;
    v36 = v74;
    v37 = v75;
    (*(v74 + 104))(v73, enum case for DispatchQoS.QoSClass.default(_:), v75);
    static OS_dispatch_queue.global(qos:)();
    (*(v36 + 8))(v35, v37);
    v38 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    strcpy((v34 + 16), "urlRequest()");
    *(v34 + 29) = 0;
    *(v34 + 30) = -5120;
    v39 = v79;
    *(v34 + 32) = 0xD000000000000068;
    *(v34 + 40) = v39;
    *(v34 + 56) = 14;
    *(v34 + 48) = 49;
    v40 = v65;
    *(v34 + 64) = v66;
    *(v34 + 72) = v40;
    *(v34 + 80) = 0;
    *(v34 + 88) = v38;
    sub_100071E38(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v41 = v34;
    return swift_willThrow();
  }

  else
  {
    v64 = v31;
    (*(v79 + 32))(v24, v19, v26);
    v43 = URLComponents.path.modify();
    v44._countAndFlagsBits = 0xD000000000000011;
    v44._object = 0x800000010042DC50;
    String.append(_:)(v44);
    v43(&v77, 0);
    v45 = v65;
    URLComponents.url.getter();
    v46 = v76;
    if ((*(v66 + 48))(v45, 1, v76) == 1)
    {
      sub_100013F2C(v45, &qword_1004A6D30, &unk_100376820);
      v76 = 0x800000010042DBC0;
      v77 = 0;
      v78 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      v77 = 0xD00000000000001CLL;
      v78 = 0x800000010042DC70;
      sub_100071E38(&qword_1004A80C8, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
      v59 = v26;
      v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v47);

      v64 = v78;
      v65 = v77;
      v66 = type metadata accessor for KnoxServiceClient.ClientError();
      v48 = swift_allocObject();
      sub_10000E014();
      v62 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v77 = _swiftEmptyArrayStorage;
      sub_100071E38(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      v63 = v24;
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v70 + 104))(v72, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v71);
      v50 = v73;
      v49 = v74;
      v51 = v75;
      (*(v74 + 104))(v73, enum case for DispatchQoS.QoSClass.default(_:), v75);
      static OS_dispatch_queue.global(qos:)();
      (*(v49 + 8))(v50, v51);
      v52 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      strcpy((v48 + 16), "urlRequest()");
      *(v48 + 29) = 0;
      *(v48 + 30) = -5120;
      v53 = v76;
      *(v48 + 32) = 0xD000000000000068;
      *(v48 + 40) = v53;
      *(v48 + 56) = 14;
      *(v48 + 48) = 57;
      v54 = v64;
      *(v48 + 64) = v65;
      *(v48 + 72) = v54;
      *(v48 + 80) = 0;
      *(v48 + 88) = v52;
      sub_100071E38(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v55 = v48;
      swift_willThrow();
      return (*(v79 + 8))(v63, v59);
    }

    else
    {
      v56 = v79;
      v57 = v60;
      (*(v66 + 32))(v60, v45, v46);
      LOBYTE(v77) = 1;
      sub_10005ADB0(v57, 0, 0, v61);
      v29(v57, v46);
      return (*(v56 + 8))(v24, v26);
    }
  }
}

void sub_100070DF0(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v63 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v62);
  v64 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
  v17 = a2 >> 62;
  v65 = v11;
  if ((a2 >> 62) > 1)
  {
    v18 = 0;
    if (v17 != 2)
    {
      goto LABEL_10;
    }

    v20 = *(a1 + 16);
    v19 = *(a1 + 24);
    v18 = v19 - v20;
    if (!__OFSUB__(v19, v20))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v17)
  {
    v18 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v18 = HIDWORD(a1) - a1;
LABEL_10:
  v57 = v15;
  v58 = v9;
  v59 = v8;
  v60 = v6;
  v61 = v5;
  v21 = *(v16 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue);
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  *(v22 + 24) = v16;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_100027124;
  *(v23 + 24) = v22;
  v71 = sub_10001FA40;
  v72 = v23;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_10003885C;
  v70 = &unk_10047F810;
  v24 = _Block_copy(&aBlock);

  dispatch_sync(v21, v24);
  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_20;
  }

  v56 = sub_100041C18(&aBlock, a1, a2);
  v66 = v26;
  v27 = aBlock;
  v28 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic14ServerInfoTask_syncronizationQueue];
  v29 = swift_allocObject();
  *(v29 + 16) = v2;
  *(v29 + 24) = v27;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1000720BC;
  *(v30 + 24) = v29;
  v71 = sub_10001FA40;
  v72 = v30;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_10003885C;
  v70 = &unk_10047F888;
  v31 = _Block_copy(&aBlock);
  v32 = v27;
  v33 = v2;

  dispatch_sync(v28, v31);

  _Block_release(v31);
  v34 = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v66)
  {
    v53 = 0x800000010042DBC0;
    v54 = 0x800000010042A530;
    v55 = type metadata accessor for KnoxServiceClient.ClientError();
    v36 = swift_allocObject();
    sub_10000E014();
    v52 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100071E38(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    isa = v63[13].isa;
    v63 = v32;
    isa(v65, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v58);
    v39 = v59;
    v38 = v60;
    v40 = v61;
    (*(v60 + 104))(v59, enum case for DispatchQoS.QoSClass.default(_:), v61);
    static OS_dispatch_queue.global(qos:)();
    (*(v38 + 8))(v39, v40);
    v41 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v42 = v54;
    *(v36 + 16) = 0xD00000000000001ALL;
    *(v36 + 24) = v42;
    v43 = v53;
    *(v36 + 32) = 0xD000000000000068;
    *(v36 + 40) = v43;
    *(v36 + 56) = 7;
    *(v36 + 48) = 79;
    v44 = v66;
    *(v36 + 64) = v56;
    *(v36 + 72) = v44;
    *(v36 + 80) = 0;
    *(v36 + 88) = v41;
    sub_100071E38(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v45 = v36;
    swift_willThrow();

    return;
  }

  __chkstk_darwin(v35);
  *(&v52 - 2) = v33;
  sub_1000039E8(&qword_1004A7A88, qword_100378380);
  OS_dispatch_queue.sync<A>(execute:)();
  if (aBlock)
  {

    v46 = v32;
    v32 = *&v33[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
    v47 = swift_allocObject();
    *(v47 + 16) = v33;
    *(v47 + 24) = 1;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_10001F9F8;
    *(v48 + 24) = v47;
    v71 = sub_10001FA40;
    v72 = v48;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_10003885C;
    v70 = &unk_10047F900;
    v49 = _Block_copy(&aBlock);
    v50 = v33;

    dispatch_sync(v32, v49);
    _Block_release(v49);
    v51 = swift_isEscapingClosureAtFileLocation();

    if ((v51 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }
}

char *sub_10007168C()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v49 = *(v1 - 8);
  v50 = v1;
  __chkstk_darwin(v1);
  v48 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v47 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v45 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v43 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v37 - v13;
  type metadata accessor for RetryRunner();
  swift_allocObject();
  v15 = v0;
  v16 = sub_100072164(v15);
  v17 = dispatch_semaphore_create(0);
  v51 = v16;
  sub_10007B280(v16, v17);
  static DispatchTime.now()();
  + infix(_:_:)();
  v18 = *(v9 + 8);
  v18(v12, v8);
  OS_dispatch_semaphore.wait(timeout:)();
  v18(v14, v8);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v41 = 0x800000010042DBC0;
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v19._countAndFlagsBits = 0x207265746661;
    v19._object = 0xE600000000000000;
    String.append(_:)(v19);
    Double.write<A>(to:)();
    v20._countAndFlagsBits = 0x73646E6F63657320;
    v20._object = 0xE800000000000000;
    String.append(_:)(v20);
    v39 = v52;
    v38 = v53;
    v40 = type metadata accessor for KnoxServiceClient.ClientError();
    v21 = swift_allocObject();
    sub_10000E014();
    v37[1] = "hivePointer.swift";
    v42 = v17;
    static DispatchQoS.userInitiated.getter();
    v52 = _swiftEmptyArrayStorage;
    sub_100071E38(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v44 + 104))(v47, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v46);
    v23 = v48;
    v22 = v49;
    v24 = v50;
    (*(v49 + 104))(v48, enum case for DispatchQoS.QoSClass.default(_:), v50);
    static OS_dispatch_queue.global(qos:)();
    (*(v22 + 8))(v23, v24);
    v25 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v21 + 16) = 0x2865747563657865;
    *(v21 + 24) = 0xE900000000000029;
    *(v21 + 32) = 0xD000000000000068;
    v26 = v41;
    *(v21 + 56) = 20;
    *(v21 + 40) = v26;
    *(v21 + 48) = 103;
    v27 = v38;
    *(v21 + 64) = v39;
    *(v21 + 72) = v27;
    *(v21 + 80) = 0;
    *(v21 + 88) = v25;
    sub_100071E38(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    v28 = swift_allocError();
    *v29 = v21;
    swift_getErrorValue();

    v30 = Error.localizedDescription.getter();
    sub_100036D50(v28, v30, v31);

    v32 = v15;
  }

  else
  {
    sub_100003B20(*&v15[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client] + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, &v52);
    v33 = v54;
    v34 = v55;
    sub_10000E2A8(&v52, v54);
    (*(v34 + 16))(v15, 0, v33, v34);

    sub_100003C3C(&v52);
    v35 = v15;
  }

  return v15;
}

void sub_100071D74()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic14ServerInfoTask_syncronizationQueue);
}

id ServerInfoTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerInfoTask(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100071E38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100071E80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100071EB8()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t type metadata accessor for ServerInfoTask(uint64_t a1)
{
  result = qword_1004A80F8;
  if (!qword_1004A80F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100071F40(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_10006F8BC(v1);
}

Swift::Int sub_1000720F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100078A98(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100077424(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_100072164(char *a1)
{
  v60 = a1;
  v44 = type metadata accessor for UUID();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchQoS.QoSClass();
  v62 = *(v58 - 8);
  __chkstk_darwin(v58);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v50 - 8);
  __chkstk_darwin(v50);
  v56 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
  v57 = " headers: %{public}s";
  static DispatchQoS.userInitiated.getter();
  sub_1000039E8(&qword_1004A83A0, &unk_1003784B8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100376A40;
  static OS_dispatch_queue.Attributes.concurrent.getter();
  aBlock = v11;
  v54 = sub_10007A9B0(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v53 = sub_1000039E8(&unk_1004A7850, &qword_100376280);
  v55 = sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
  v52 = v6;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v48 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v12 = *(v4 + 104);
  v49 = v4 + 104;
  v51 = v12;
  v13 = v56;
  v12(v56);
  v14 = enum case for DispatchQoS.QoSClass.default(_:);
  v15 = v62;
  v47 = *(v62 + 104);
  v16 = v58;
  v47(v3, enum case for DispatchQoS.QoSClass.default(_:), v58);
  static OS_dispatch_queue.global(qos:)();
  v17 = *(v15 + 8);
  v62 = v15 + 8;
  v17(v3, v16);
  v45 = v10;
  v18 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19 = v59;
  *(v59 + 40) = v18;
  v57 = "RetryRunner-ConcurrentQueue";
  static DispatchQoS.userInitiated.getter();
  aBlock = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v51(v13, v48, v50);
  v47(v3, v14, v16);
  static OS_dispatch_queue.global(qos:)();
  v17(v3, v16);
  v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v19 + 88) = 0;
  *(v19 + 48) = v20;
  *(v19 + 56) = 0;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0;
  *(v19 + 80) = 0;
  v21 = v60;
  v22 = v19;
  *(v19 + 32) = v60;
  v23 = *((swift_isaMask & **&v21[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client]) + 0x1E8);
  v24 = v21;
  v25 = v23(&aBlock);
  object = v64;
  if (v64 || (v27 = v42, v28 = v43, v29 = v44, __chkstk_darwin(v25), sub_1000039E8(&qword_1004A72D8, &qword_100376EC0), OS_dispatch_queue.sync<A>(execute:)(), (object = v64) != 0))
  {
    countAndFlagsBits = aBlock;
  }

  else
  {
    UUID.init()();
    v37 = UUID.uuidString.getter();
    v39 = v38;
    (*(v28 + 8))(v27, v29);
    aBlock = v37;
    v64 = v39;
    v71 = 45;
    v72 = 0xE100000000000000;
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_10000B080();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v40 = String.lowercased()();
    countAndFlagsBits = v40._countAndFlagsBits;
    object = v40._object;
  }

  v31 = *&v24[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v32 = swift_allocObject();
  v32[2] = v24;
  v32[3] = countAndFlagsBits;
  v32[4] = object;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10001F858;
  *(v33 + 24) = v32;
  v67 = sub_10001FA40;
  v68 = v33;
  aBlock = _NSConcreteStackBlock;
  v64 = 1107296256;
  v65 = sub_10003885C;
  v66 = &unk_100480A30;
  v34 = _Block_copy(&aBlock);
  v35 = v24;

  dispatch_sync(v31, v34);

  _Block_release(v34);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }

  else
  {
    result = v22;
    *(v22 + 16) = countAndFlagsBits;
    *(v22 + 24) = object;
  }

  return result;
}

uint64_t sub_100072A1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = a1;
  v47 = a2;
  v4 = type metadata accessor for URLRequest();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = __chkstk_darwin(v4);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = &v42 - v7;
  v8 = sub_1000039E8(&qword_1004A73C0, &unk_100376A70);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  countAndFlagsBits = v3[2]._countAndFlagsBits;
  v12 = *(countAndFlagsBits + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  Date.init()();
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  v14 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  swift_beginAccess();
  sub_10007A27C(v10, v12 + v14);
  swift_endAccess();
  v15 = (*((swift_isaMask & *countAndFlagsBits) + 0x1D0))(1);
  v16 = *((swift_isaMask & *countAndFlagsBits) + 0x300);
  v17 = v16(v15);
  v18 = v3[3]._countAndFlagsBits;
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  *(v19 + 24) = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_10007D7F8;
  *(v20 + 24) = v19;
  v52 = sub_10001FA40;
  v53 = v20;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10003885C;
  v51 = &unk_100480940;
  v21 = _Block_copy(&aBlock);

  dispatch_sync(v18, v21);
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    v23 = v16(result) > 1;
    v24 = swift_allocObject();
    *(v24 + 16) = v3;
    *(v24 + 24) = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_10007D8F8;
    *(v25 + 24) = v24;
    v52 = sub_10001FA40;
    v53 = v25;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_10003885C;
    v51 = &unk_1004809B8;
    v26 = _Block_copy(&aBlock);

    dispatch_sync(v18, v26);
    _Block_release(v26);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v28 = v45;
      (*((swift_isaMask & *countAndFlagsBits) + 0x428))(result);
      v29 = v42;
      v30 = v43;
      (*(v43 + 32))(v42, v28, v44);
      v31._countAndFlagsBits = 0x6172542D33422D58;
      v31._object = 0xEC00000064696563;
      URLRequest.addValue(_:forHTTPHeaderField:)(v3[1], v31);
      sub_1000731A8(countAndFlagsBits, v29, v46, v47);
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100376BB0;
      v33 = [countAndFlagsBits description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      *(v32 + 56) = &type metadata for String;
      v37 = sub_10001A9EC();
      *(v32 + 64) = v37;
      *(v32 + 32) = v34;
      *(v32 + 40) = v36;
      v38 = OS_dispatch_queue.label.getter();
      *(v32 + 96) = &type metadata for String;
      *(v32 + 104) = v37;
      *(v32 + 72) = v38;
      *(v32 + 80) = v39;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v40 = static OS_os_log.default.getter();
      v41 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Executing DispatchWorkItem for task=%{public}s on queue %{public}s", 66, 2, &_mh_execute_header, v40, v41, v32);

      OS_dispatch_queue.async(execute:)();

      return (*(v30 + 8))(v29, v44);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000731A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v83 = a4;
  v85 = a3;
  v63 = type metadata accessor for DispatchTimeInterval();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v59 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = type metadata accessor for DispatchTime();
  v60 = *(v62 - 8);
  v9 = __chkstk_darwin(v62);
  v65 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v57 - v11;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URLRequest();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 16);
  v80 = a2;
  v74 = v16 + 16;
  v73 = v19;
  v19(v18, a2, v15);
  v20 = *(v16 + 80);
  v21 = (v20 + 48) & ~v20;
  v76 = v17;
  v69 = v20;
  v22 = swift_allocObject();
  *(v22 + 2) = a1;
  *(v22 + 3) = v5;
  v23 = v83;
  *(v22 + 4) = v85;
  *(v22 + 5) = v23;
  v24 = *(v16 + 32);
  v75 = v18;
  v77 = v15;
  v78 = v16 + 32;
  v72 = v24;
  v24(&v22[v21], v18, v15);
  v91 = sub_10007A3FC;
  v92 = v22;
  aBlock = _NSConcreteStackBlock;
  v88 = 1107296256;
  v89 = sub_100053364;
  v90 = &unk_10047FC48;
  _Block_copy(&aBlock);
  v86 = _swiftEmptyArrayStorage;
  v25 = sub_10007A9B0(&qword_1004A7A70, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v84 = a1;

  v26 = sub_1000039E8(&qword_1004A7A78, &qword_1003F2F40);
  v27 = sub_10000E720(&qword_1004A7A80, &qword_1004A7A78, &qword_1003F2F40, &protocol conformance descriptor for [A]);
  v70 = v26;
  v68 = v27;
  v81 = v12;
  v71 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v82 = v14;
  v79 = DispatchWorkItem.init(flags:block:)();

  v28 = *(v5 + 48);
  OS_dispatch_queue.sync<A>(execute:)();
  v66 = 0;
  v67 = aBlock;
  v29 = swift_allocObject();
  *(v29 + 16) = v85;
  *(v29 + 24) = v23;
  sub_1000039E8(&qword_1004A8378, &qword_100378480);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_10007A4A8;
  *(v30 + 24) = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = v5;
  *(v31 + 24) = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_10007A4D8;
  *(v32 + 24) = v31;
  v91 = sub_10001FA40;
  v92 = v32;
  aBlock = _NSConcreteStackBlock;
  v88 = 1107296256;
  v89 = sub_10003885C;
  v90 = &unk_10047FCE8;
  v33 = _Block_copy(&aBlock);
  v85 = v5;

  v34 = v28;
  dispatch_sync(v28, v33);

  _Block_release(v33);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
    goto LABEL_8;
  }

  v36 = v69;
  v83 = ~v69;
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  v39 = v79;

  sub_1000039E8(&qword_1004A8380, &qword_100378488);
  v40 = v77;
  v64 = v34;
  OS_dispatch_queue.sync<A>(execute:)();
  swift_weakInit();

  v41 = v75;
  v73(v75, v80, v40);
  v42 = (v36 + 40) & v83;
  v43 = (v76 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 2) = v37;
  *(v44 + 3) = v38;
  *(v44 + 4) = v39;
  v72(&v44[v42], v41, v40);
  *&v44[v43] = v67;
  v91 = sub_10007A688;
  v92 = v44;
  aBlock = _NSConcreteStackBlock;
  v88 = 1107296256;
  v89 = sub_100053364;
  v90 = &unk_10047FD88;
  _Block_copy(&aBlock);
  v86 = _swiftEmptyArrayStorage;

  dispatch thunk of SetAlgebra.init<A>(_:)();
  swift_allocObject();
  v45 = DispatchWorkItem.init(flags:block:)();

  v46 = swift_allocObject();
  *(v46 + 16) = v85;
  *(v46 + 24) = v45;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_10007A720;
  *(v47 + 24) = v46;
  v91 = sub_10001FA40;
  v92 = v47;
  aBlock = _NSConcreteStackBlock;
  v88 = 1107296256;
  v89 = sub_10003885C;
  v90 = &unk_10047FE00;
  v48 = _Block_copy(&aBlock);
  swift_retain_n();

  dispatch_sync(v64, v48);

  _Block_release(v48);
  LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

  if (v48)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v49 = v65;
  result = static DispatchTime.now()();
  v50 = *&v84[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_timeoutSeconds];
  if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v50 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v50 < 9.22337204e18)
  {
    v51 = v59;
    *v59 = v50;
    v52 = v61;
    v53 = v63;
    (*(v61 + 104))(v51, enum case for DispatchTimeInterval.seconds(_:), v63);
    v54 = v58;
    + infix(_:_:)();
    (*(v52 + 8))(v51, v53);
    v55 = *(v60 + 8);
    v56 = v62;
    v55(v49, v62);
    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v55(v54, v56);
    return v39;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_100073CA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for URLRequest();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  result = (*((swift_isaMask & *a1) + 0x3E8))(&aBlock);
  v15 = *v14 + 1;
  if (*v14 == -1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v43 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v10;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  *v14 = v15;
  (result)(&aBlock, 0);
  v16 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10007A774;
  *(v18 + 24) = v17;
  v52 = sub_10001FA40;
  v53 = v18;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10003885C;
  v51 = &unk_10047FE78;
  v19 = _Block_copy(&aBlock);
  v20 = a1;

  dispatch_sync(v16, v19);
  _Block_release(v19);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v21 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_lastError;
  swift_beginAccess();
  v22 = v20;
  *&v20[v21] = 0;

  v23 = *(a2 + 48);
  result = OS_dispatch_queue.sync<A>(execute:)();
  v24 = aBlock + 1;
  if (aBlock == -1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_10007A7B4;
  *(v26 + 24) = v25;
  v52 = sub_10001FA40;
  v53 = v26;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10003885C;
  v51 = &unk_10047FEF0;
  v27 = _Block_copy(&aBlock);

  dispatch_sync(v23, v27);
  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = OS_dispatch_queue.sync<A>(execute:)();
  v28 = aBlock - 1;
  if (!aBlock)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v29 = a2;
  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  *(v30 + 24) = v28;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_10007D7F8;
  *(v31 + 24) = v30;
  v52 = sub_10001FA40;
  v53 = v31;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10003885C;
  v51 = &unk_10047FF68;
  v32 = _Block_copy(&aBlock);

  dispatch_sync(v23, v32);
  _Block_release(v32);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v34 = swift_allocObject();
    v35 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_delay;
    swift_beginAccess();
    *(v34 + 16) = *&v22[v35];
    v36 = v43;
    v37 = v44;
    (*(v11 + 16))(v43, v47, v44);
    v38 = (*(v11 + 80) + 48) & ~*(v11 + 80);
    v39 = swift_allocObject();
    *(v39 + 2) = v22;
    *(v39 + 3) = v29;
    v40 = v46;
    *(v39 + 4) = v45;
    *(v39 + 5) = v40;
    (*(v11 + 32))(&v39[v38], v36, v37);
    *&v39[(v12 + v38 + 7) & 0xFFFFFFFFFFFFFFF8] = v34;
    v41 = v22;

    sub_100076598(v41, v47, sub_10007A8C4, v39);
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_100074308(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void (*a7)(void *, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v220 = a8;
  v221 = a7;
  v223 = a2;
  v224 = a4;
  v222 = a1;
  v13 = type metadata accessor for DispatchTimeInterval();
  v202 = *(v13 - 8);
  v203 = v13;
  __chkstk_darwin(v13);
  v200 = (v187 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for DispatchTime();
  v204 = *(v15 - 8);
  v205 = v15;
  v16 = __chkstk_darwin(v15);
  v199 = v187 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v201 = v187 - v18;
  v19 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  v20 = __chkstk_darwin(v19 - 8);
  v206 = v187 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v198 = v187 - v22;
  v23 = type metadata accessor for DispatchQoS.QoSClass();
  v214 = *(v23 - 8);
  v215 = v23;
  __chkstk_darwin(v23);
  v213 = v187 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v209 = *(v211 - 8);
  __chkstk_darwin(v211);
  v212 = v187 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v207);
  v210 = v187 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v27 - 8);
  v208 = v187 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (v29)
    {
      v30 = v29;
      v31 = *(a5 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
      v32 = swift_allocObject();
      *(v32 + 16) = a5;
      *(v32 + 24) = v30;
      v33 = swift_allocObject();
      *(v33 + 16) = sub_10007D8FC;
      *(v33 + 24) = v32;
      v233 = sub_10001FA40;
      v234 = v33;
      aBlock = _NSConcreteStackBlock;
      v230 = 1107296256;
      v231 = sub_10003885C;
      v232 = &unk_100480238;
      v34 = _Block_copy(&aBlock);
      v35 = a6;
      v36 = a3;
      v37 = a5;

      dispatch_sync(v31, v34);

      a6 = v35;
      _Block_release(v34);
      LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

      if (v31)
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }
  }

  v218 = sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
  v38 = swift_allocObject();
  v216 = xmmword_100376A40;
  *(v38 + 16) = xmmword_100376A40;
  v39 = [a5 description];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  *(v38 + 56) = &type metadata for String;
  v219 = sub_10001A9EC();
  *(v38 + 64) = v219;
  *(v38 + 32) = v40;
  *(v38 + 40) = v42;
  v217 = sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
  v43 = static OS_os_log.default.getter();
  v44 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Received server response for %{public}s", 39, 2, &_mh_execute_header, v43, v44, v38);

  v45 = *(a6 + 48);
  sub_1000039E8(&qword_1004A8388, &unk_100378490);
  v225 = v45;
  v46 = 0;
  OS_dispatch_queue.sync<A>(execute:)();
  if (!aBlock)
  {
    goto LABEL_7;
  }

  v47 = swift_allocObject();
  *(v47 + 16) = a6;
  *(v47 + 24) = 0;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_10007D898;
  *(v48 + 24) = v47;
  v233 = sub_10001FA40;
  v234 = v48;
  aBlock = _NSConcreteStackBlock;
  v230 = 1107296256;
  v231 = sub_10003885C;
  v232 = &unk_1004801C0;
  v49 = _Block_copy(&aBlock);

  dispatch_sync(v225, v49);
  _Block_release(v49);
  LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

  if (v49)
  {
    __break(1u);
    goto LABEL_60;
  }

  dispatch thunk of DispatchWorkItem.cancel()();

LABEL_7:
  v50 = a5;
  v51 = (*((swift_isaMask & *a5) + 0x440))(v222, v223, a3, v224);
  v53 = v52;
  v55 = v54;
  v57 = v56;
  sub_100031994(v51, v52, v54, v56);

  sub_100031914(v51, v53);
  v224 = v55;
  if (v57)
  {
    v223 = v53;
    type metadata accessor for KnoxServiceClient.ClientError();
    sub_10007A9B0(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    v60 = swift_allocError();
    *v61 = v57;
    v62 = *((swift_isaMask & *v50) + 0x410);

    v63 = v50;
    v62(v60);

    v64 = swift_allocError();
    *v65 = v57;
    aBlock = v64;

    swift_errorRetain();
    sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
    if (swift_dynamicCast())
    {
      v66 = v226[0];
    }

    else
    {
      v85 = _convertErrorToNSError(_:)();
      swift_allocObject();
      v66 = sub_100059DCC(0xD000000000000038, 0x800000010042DE50, 0xD00000000000005CLL, 0x800000010042DDA0, 271, v85);
    }

    v221(v63, v66);

    sub_100031914(v51, v223);
LABEL_15:

    return;
  }

  v197 = v50;
  sub_100031994(v51, v53, v58, v59);

  v222 = 0;
  if (v53 >> 60 == 15)
  {
    v189 = 0;
    v194 = v51;
    v195 = a6;
    v223 = v53;
    v193 = 0x800000010042DE50;
    v196 = 0x800000010042DDA0;
    aBlock = 0;
    v230 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    aBlock = 0xD000000000000018;
    v230 = 0x800000010042DF50;
    type metadata accessor for URLRequest();
    sub_10007A9B0(&qword_1004A8390, &type metadata accessor for URLRequest, &protocol conformance descriptor for URLRequest);
    v188 = a9;
    v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v67);

    v68._countAndFlagsBits = 41;
    v68._object = 0xE100000000000000;
    String.append(_:)(v68);
    v191 = v230;
    v192 = aBlock;
    type metadata accessor for KnoxServiceClient.ClientError();
    inited = swift_initStackObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v190 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10007A9B0(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v209 + 104))(v212, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v211);
    v71 = v213;
    v70 = v214;
    v72 = v215;
    (*(v214 + 104))(v213, enum case for DispatchQoS.QoSClass.default(_:), v215);
    static OS_dispatch_queue.global(qos:)();
    (*(v70 + 8))(v71, v72);
    v73 = v191;
    v74 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v75 = v193;
    *(inited + 16) = 0xD000000000000038;
    *(inited + 24) = v75;
    v76 = v196;
    *(inited + 32) = 0xD00000000000005CLL;
    *(inited + 40) = v76;
    *(inited + 56) = 15;
    *(inited + 48) = 306;
    *(inited + 64) = v192;
    *(inited + 72) = v73;
    *(inited + 80) = 0;
    *(inited + 88) = v74;
    v77 = swift_allocObject();
    *(v77 + 16) = v216;
    v78 = sub_10005A570();
    if (!v79)
    {
      goto LABEL_66;
    }

    v80 = v219;
    *(v77 + 56) = &type metadata for String;
    *(v77 + 64) = v80;
    *(v77 + 32) = v78;
    *(v77 + 40) = v79;
    v81 = static OS_os_log.default.getter();
    v82 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("%{public}s", 10, 2, &_mh_execute_header, v81, v82, v77);

    swift_setDeallocating();
    v84 = v197;
    a6 = v195;
    v46 = v189;
  }

  else
  {
    v86 = v197;
    (*((swift_isaMask & *v197) + 0x430))(v51, v53);
    v188 = a9;
    v194 = v51;
    v223 = v53;
    v83 = sub_100031914(v51, v53);
    v84 = v86;
  }

  v87 = *(v84 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  __chkstk_darwin(v83);
  v187[-2] = v84;
  v192 = sub_1000039E8(&unk_1004A7340, &unk_100376F30);
  v88 = OS_dispatch_queue.sync<A>(execute:)();
  v196 = v46;
  v89 = aBlock;
  if (aBlock)
  {
    v90 = (*((swift_isaMask & *v84) + 0x108))(v88);
    v91 = [v89 statusCode];
    v92 = *(v90 + 16);
    v93 = 32;
    v94 = v206;
    v193 = v89;
    while (v92)
    {
      v95 = *(v90 + v93);
      v93 += 8;
      --v92;
      if (v95 == v91)
      {

        goto LABEL_34;
      }
    }

    aBlock = 0;
    v230 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    aBlock = 0x7461747320746F47;
    v230 = 0xEB00000000207375;
    v226[0] = [v89 statusCode];
    v108._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v108);

    v109._countAndFlagsBits = 0xD00000000000001DLL;
    v109._object = 0x800000010042E0B0;
    String.append(_:)(v109);
    v110 = [v193 URL];
    if (v110)
    {
      v111 = v110;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v112 = 0;
    }

    else
    {
      v112 = 1;
    }

    v113 = v198;
    v114 = type metadata accessor for URL();
    v115 = *(v114 - 8);
    (*(v115 + 56))(v94, v112, 1, v114);
    sub_10007AA3C(v94, v113);
    v116 = (*(v115 + 48))(v113, 1, v114);
    v195 = a6;
    v187[1] = v87;
    if (v116 == 1)
    {
      sub_100013F2C(v113, &qword_1004A6D30, &unk_100376820);
      v117 = 0;
      v118 = 0;
    }

    else
    {
      v117 = URL.absoluteString.getter();
      v118 = v119;
      (*(v115 + 8))(v113, v114);
    }

    v206 = 0x800000010042DE50;
    v198 = 0x800000010042DDA0;
    v226[0] = v117;
    v226[1] = v118;
    sub_1000039E8(&qword_1004A7330, &qword_1003762A0);
    v120._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v120);

    v190 = v230;
    v191 = aBlock;
    v187[0] = type metadata accessor for KnoxServiceClient.ClientError();
    v121 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v189 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10007A9B0(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v209 + 104))(v212, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v211);
    v122 = v213;
    v123 = v214;
    v124 = v215;
    (*(v214 + 104))(v213, enum case for DispatchQoS.QoSClass.default(_:), v215);
    static OS_dispatch_queue.global(qos:)();
    (*(v123 + 8))(v122, v124);
    v125 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v126 = v206;
    *(v121 + 16) = 0xD000000000000038;
    *(v121 + 24) = v126;
    v127 = v198;
    *(v121 + 32) = 0xD00000000000005CLL;
    *(v121 + 40) = v127;
    *(v121 + 56) = 9;
    *(v121 + 48) = 315;
    v128 = v190;
    *(v121 + 64) = v191;
    *(v121 + 72) = v128;
    *(v121 + 80) = 0;
    *(v121 + 88) = v125;
    v129 = static os_log_type_t.error.getter();
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_100376F00;
    v84 = v197;
    v131 = (v197 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name);
    swift_beginAccess();
    v133 = *v131;
    v132 = v131[1];
    v134 = v219;
    *(v130 + 56) = &type metadata for String;
    *(v130 + 64) = v134;
    *(v130 + 32) = v133;
    *(v130 + 40) = v132;

    v135 = sub_10005A570();
    if (!v136)
    {
      goto LABEL_67;
    }

    *(v130 + 96) = &type metadata for String;
    *(v130 + 104) = v134;
    *(v130 + 72) = v135;
    *(v130 + 80) = v136;
    v137 = sub_10007D1C8(v193);
    *(v130 + 136) = &type metadata for String;
    *(v130 + 144) = v134;
    *(v130 + 112) = v137;
    *(v130 + 120) = v138;
    v139 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v129, &_mh_execute_header, v139, "%{public}s %{public}s - Response headers: %{public}s", 52, 2, v130);

    v140 = (*((swift_isaMask & *v84) + 0x438))();
    v141 = swift_allocObject();
    a6 = v195;
    *(v141 + 16) = v195;
    *(v141 + 24) = v140 & 1;
    v142 = swift_allocObject();
    *(v142 + 16) = sub_10007D8F8;
    *(v142 + 24) = v141;
    v233 = sub_10001FA40;
    v234 = v142;
    aBlock = _NSConcreteStackBlock;
    v230 = 1107296256;
    v231 = sub_10003885C;
    v232 = &unk_100480148;
    v143 = _Block_copy(&aBlock);

    dispatch_sync(v225, v143);
    _Block_release(v143);
    LOBYTE(v143) = swift_isEscapingClosureAtFileLocation();

    if (v143)
    {
      goto LABEL_64;
    }

    v144 = v196;
    OS_dispatch_queue.sync<A>(execute:)();
    if ((aBlock & 1) == 0)
    {
      sub_10007A9B0(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      v161 = swift_allocError();
      *v162 = v121;
      v163 = *((swift_isaMask & *v84) + 0x410);

      v163(v161);

      v164 = swift_allocError();
      *v165 = v121;
      aBlock = v164;

      swift_errorRetain();
      sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
      if (swift_dynamicCast())
      {
        v166 = v226[0];
      }

      else
      {
        v167 = _convertErrorToNSError(_:)();
        swift_allocObject();
        v166 = sub_100059DCC(0xD000000000000038, v206, 0xD00000000000005CLL, v198, 328, v167);
      }

      v221(v84, v166);

      sub_100031914(v194, v223);
      goto LABEL_15;
    }

    v196 = v144;

LABEL_34:
    v145 = (*((swift_isaMask & *v84) + 0x438))(v96);
    v146 = swift_allocObject();
    *(v146 + 16) = a6;
    *(v146 + 24) = v145 & 1;
    v147 = swift_allocObject();
    *(v147 + 16) = sub_10007D8F8;
    *(v147 + 24) = v146;
    v233 = sub_10001FA40;
    v234 = v147;
    aBlock = _NSConcreteStackBlock;
    v230 = 1107296256;
    v231 = sub_10003885C;
    v232 = &unk_1004800D0;
    v148 = _Block_copy(&aBlock);

    dispatch_sync(v225, v148);
    _Block_release(v148);
    LOBYTE(v148) = swift_isEscapingClosureAtFileLocation();

    v106 = v219;
    if (v148)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v97 = (*((swift_isaMask & *v84) + 0x438))(v88);
    v98 = swift_allocObject();
    *(v98 + 16) = a6;
    *(v98 + 24) = v97 & 1;
    v99 = swift_allocObject();
    *(v99 + 16) = sub_10007D8F8;
    *(v99 + 24) = v98;
    v233 = sub_10001FA40;
    v234 = v99;
    aBlock = _NSConcreteStackBlock;
    v230 = 1107296256;
    v231 = sub_10003885C;
    v232 = &unk_100480058;
    v100 = _Block_copy(&aBlock);

    dispatch_sync(v225, v100);
    _Block_release(v100);
    LOBYTE(v100) = swift_isEscapingClosureAtFileLocation();

    if (v100)
    {
      goto LABEL_63;
    }

    v101 = static os_log_type_t.error.getter();
    v102 = swift_allocObject();
    *(v102 + 16) = v216;
    v103 = (v84 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name);
    swift_beginAccess();
    v105 = *v103;
    v104 = v103[1];
    v106 = v219;
    *(v102 + 56) = &type metadata for String;
    *(v102 + 64) = v106;
    *(v102 + 32) = v105;
    *(v102 + 40) = v104;

    v107 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v101, &_mh_execute_header, v107, "%{public}s - Did not get an HTTP response", 41, 2, v102);
  }

  v149 = OS_dispatch_queue.sync<A>(execute:)();
  v150 = v224;
  if (aBlock != 1)
  {
    v221(v84, 0);
    sub_100031914(v194, v223);

    return;
  }

  __chkstk_darwin(v149);
  v187[-2] = v84;
  OS_dispatch_queue.sync<A>(execute:)();
  v151 = aBlock;
  if (aBlock)
  {
    if ([aBlock statusCode] == 429 || objc_msgSend(v151, "statusCode") == 503)
    {
      v152 = [v151 allHeaderFields];
      v153 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v227 = 0x66412D7972746552;
      v228 = 0xEB00000000726574;
      AnyHashable.init<A>(_:)();
      if (*(v153 + 16) && (v154 = sub_100013470(&aBlock), (v155 & 1) != 0))
      {
        sub_100003CA0(*(v153 + 56) + 32 * v154, v226);
        sub_1000142F0(&aBlock);

        if (swift_dynamicCast())
        {
          v156 = sub_1000827A0(v227, v228);
          if ((v156 & 0x100000000) == 0)
          {
            v157 = v156;
            v158 = swift_allocObject();
            *(v158 + 16) = v216;
            *(v158 + 56) = &type metadata for UInt32;
            *(v158 + 64) = &protocol witness table for UInt32;
            *(v158 + 32) = v157;
            v159 = static OS_os_log.default.getter();
            v160 = static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)("The server requested %{public}i seconds delay until the next retry via 'Retry-After' HTTP header in its response. This request will be fulfilled.", 145, 2, &_mh_execute_header, v159, v160, v158);

            swift_beginAccess();
            *(a10 + 16) = v157;
            dword_1004A8108 = v157;
            byte_1004A810C = 0;

            v106 = v219;
            goto LABEL_57;
          }
        }
      }

      else
      {

        sub_1000142F0(&aBlock);
      }

      v106 = v219;
    }

    else
    {
    }
  }

  OS_dispatch_queue.sync<A>(execute:)();
  if (aBlock < 2 || (v168 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_useExponentialRetryDelay, swift_beginAccess(), *(v84 + v168) != 1))
  {
LABEL_57:
    v170 = swift_allocObject();
    *(v170 + 16) = xmmword_100376260;
    v171 = OS_dispatch_queue.sync<A>(execute:)();
    v172 = (aBlock + 1);
    if (aBlock != -1)
    {
      *(v170 + 56) = &type metadata for UInt;
      *(v170 + 64) = &protocol witness table for UInt;
      *(v170 + 32) = v172;
      v173 = (*((swift_isaMask & *v84) + 0x300))(v171);
      *(v170 + 96) = &type metadata for UInt;
      *(v170 + 104) = &protocol witness table for UInt;
      *(v170 + 72) = v173;
      swift_beginAccess();
      v174 = *(a10 + 16);
      *(v170 + 136) = &type metadata for UInt32;
      *(v170 + 144) = &protocol witness table for UInt32;
      *(v170 + 112) = v174;
      v175 = (v84 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name);
      swift_beginAccess();
      v177 = *v175;
      v176 = v175[1];
      *(v170 + 176) = &type metadata for String;
      *(v170 + 184) = v106;
      *(v170 + 152) = v177;
      *(v170 + 160) = v176;

      v178 = static OS_os_log.default.getter();
      v179 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Will dispatch try number %{public}i out of %{public}i total in %{public}lu seconds for %{public}s", 97, 2, &_mh_execute_header, v178, v179, v170);

      sub_1000731A8(v84, v188, v221, v220);
      v180 = v199;
      static DispatchTime.now()();
      swift_beginAccess();
      v181 = v200;
      *v200 = *(a10 + 16);
      v183 = v202;
      v182 = v203;
      (*(v202 + 104))(v181, enum case for DispatchTimeInterval.seconds(_:), v203);
      v184 = v201;
      + infix(_:_:)();
      (*(v183 + 8))(v181, v182);
      v185 = v205;
      v186 = *(v204 + 8);
      v186(v180, v205);
      OS_dispatch_queue.asyncAfter(deadline:execute:)();

      sub_100031914(v194, v223);

      v186(v184, v185);
      return;
    }

    goto LABEL_62;
  }

  swift_beginAccess();
  v169 = *(a10 + 16);
  if ((v169 & 0x80000000) == 0)
  {
    *(a10 + 16) = 2 * v169;
    goto LABEL_57;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  __break(1u);
}

void sub_100076598(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_session);
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v25[4] = a3;
  v25[5] = a4;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_100076810;
  v25[3] = &unk_10047FFE0;
  v9 = _Block_copy(v25);

  v10 = [v7 dataTaskWithRequest:isa completionHandler:v9];
  _Block_release(v9);

  v11 = *((swift_isaMask & *a1) + 0x248);
  v12 = v10;
  v11(v10);
  sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100376BB0;
  v14 = [v12 description];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *(v13 + 56) = &type metadata for String;
  v18 = sub_10001A9EC();
  *(v13 + 64) = v18;
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  v19 = [a1 description];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v18;
  *(v13 + 72) = v20;
  *(v13 + 80) = v22;
  sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
  v23 = static OS_os_log.default.getter();
  v24 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Starting URLSessionDataTask %{public}s for %{public}s", 53, 2, &_mh_execute_header, v23, v24, v13);

  [v12 resume];
}

uint64_t sub_100076810(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_100031914(v6, v10);
}

void sub_1000768D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v65 = a5;
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v67 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v68 = *(v8 - 8);
  v69 = v8;
  __chkstk_darwin(v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v66 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v14 - 8);
  v16 = &v56 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    v19 = swift_weakLoadStrong();
    if (v19)
    {
      v64 = v5;
      v57 = v19;
      dispatch thunk of DispatchWorkItem.cancel()();
      URLRequest.url.getter();
      v20 = type metadata accessor for URL();
      v21 = *(v20 - 8);
      v22 = (*(v21 + 48))(v16, 1, v20);
      v62 = v10;
      v63 = v6;
      if (v22 == 1)
      {
        sub_100013F2C(v16, &qword_1004A6D30, &unk_100376820);
        v23 = 0xEB000000004C5255;
        v24 = 0x206E776F6E6B6E55;
      }

      else
      {
        v24 = URL.absoluteString.getter();
        v23 = v25;
        (*(v21 + 8))(v16, v20);
      }

      v60 = 0x800000010042DE50;
      v61 = 0x800000010042DDA0;
      v71 = 0;
      v72 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);
      v26._countAndFlagsBits = 0x207265746661;
      v26._object = 0xE600000000000000;
      String.append(_:)(v26);
      Double.write<A>(to:)();
      v27._object = 0x800000010042DE90;
      v27._countAndFlagsBits = 0xD000000000000018;
      String.append(_:)(v27);
      v70 = v65;
      v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v28);

      v29._countAndFlagsBits = 0x203A4C5255202CLL;
      v29._object = 0xE700000000000000;
      String.append(_:)(v29);
      v30._countAndFlagsBits = v24;
      v30._object = v23;
      String.append(_:)(v30);

      v31._countAndFlagsBits = 8236;
      v31._object = 0xE200000000000000;
      String.append(_:)(v31);
      v32 = [v18 description];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36._countAndFlagsBits = v33;
      v36._object = v35;
      String.append(_:)(v36);

      v65 = v71;
      v59 = v72;
      v56 = type metadata accessor for KnoxServiceClient.ClientError();
      v37 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v58 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v71 = _swiftEmptyArrayStorage;
      sub_10007A9B0(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10000E720(&qword_1004A6B70, &unk_1004A7850, &qword_100376280, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v68 + 104))(v62, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v69);
      v39 = v63;
      v38 = v64;
      v40 = v67;
      (*(v63 + 104))(v67, enum case for DispatchQoS.QoSClass.default(_:), v64);
      static OS_dispatch_queue.global(qos:)();
      (*(v39 + 8))(v40, v38);
      v41 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v42 = v60;
      *(v37 + 16) = 0xD000000000000038;
      *(v37 + 24) = v42;
      *(v37 + 32) = 0xD00000000000005CLL;
      v43 = v61;
      *(v37 + 56) = 20;
      *(v37 + 40) = v43;
      *(v37 + 48) = 439;
      v44 = v59;
      *(v37 + 64) = v65;
      *(v37 + 72) = v44;
      *(v37 + 80) = 0;
      *(v37 + 88) = v41;
      v45 = static os_log_type_t.error.getter();
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_100376A40;
      v47 = sub_10005A570();
      if (v48)
      {
        v49 = v47;
        v50 = v48;
        *(v46 + 56) = &type metadata for String;
        *(v46 + 64) = sub_10001A9EC();
        *(v46 + 32) = v49;
        *(v46 + 40) = v50;
        sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
        v51 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v51, "%{public}s", 10, 2, v46);

        sub_10007A9B0(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
        v52 = swift_allocError();
        *v53 = v37;
        v54 = *((swift_isaMask & *v18) + 0x410);

        v54(v52);

        v55 = *(v57 + 16);
        v70 = v37;
        v71 = v18;

        v55(&v71, &v70);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100077130()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_1000771DC(uint64_t a1, uint64_t a2)
{
  sub_10001424C(a1, v10);
  if (swift_dynamicCast())
  {
    v4 = v8;
    v3 = v9;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1701736302;
  }

  sub_10001424C(a2, v10);
  if (swift_dynamicCast())
  {
    v5 = v9;
    if (v4 != v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    if (v4 != 1701736302)
    {
LABEL_10:
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_11;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_10;
  }

  v6 = 0;
LABEL_11:

  return v6 & 1;
}

uint64_t sub_1000772F0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100077378(uint64_t a1)
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

Swift::Int sub_100077424(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
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
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000776FC(v7, v8, a1, v4);
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
    return sub_10007751C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10007751C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_6:
    v25 = a3;
    v18 = v6;
    v19 = v5;
    while (1)
    {
      sub_10001424C(v5, v24);
      v7 = v5 - 40;
      sub_10001424C(v5 - 40, v23);
      sub_10001424C(v24, v22);
      if (swift_dynamicCast())
      {
        v9 = v20;
        v8 = v21;
      }

      else
      {
        v8 = 0xE400000000000000;
        v9 = 1701736302;
      }

      sub_10001424C(v23, v22);
      if (swift_dynamicCast())
      {
        v10 = v21;
        if (v9 != v20)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = 0xE400000000000000;
        if (v9 != 1701736302)
        {
          goto LABEL_15;
        }
      }

      if (v8 == v10)
      {

        sub_1000142F0(v23);
        result = sub_1000142F0(v24);
LABEL_5:
        a3 = v25 + 1;
        v5 = v19 + 40;
        v6 = v18 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

LABEL_15:
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1000142F0(v23);
      result = sub_1000142F0(v24);
      if ((v11 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        __break(1u);
        return result;
      }

      v12 = *(v5 + 32);
      v14 = *v5;
      v13 = *(v5 + 16);
      v15 = *(v5 - 24);
      *v5 = *v7;
      *(v5 + 16) = v15;
      *(v5 + 32) = *(v5 - 8);
      *v7 = v14;
      *(v5 - 24) = v13;
      v5 -= 40;
      *(v7 + 32) = v12;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1000776FC(uint64_t result, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v5;
  v7 = a3;
  v101 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_110:
    v8 = *v101;
    if (!*v101)
    {
      goto LABEL_153;
    }

    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_147:
      result = sub_100078454(v4);
    }

    v112 = result;
    v90 = *(result + 16);
    if (v90 >= 2)
    {
      v4 = 40;
      while (1)
      {
        v91 = *v7;
        if (!*v7)
        {
          goto LABEL_151;
        }

        v92 = *(result + 16 * v90);
        v93 = result;
        v7 = *(result + 16 * (v90 - 1) + 40);
        sub_100077F40((v91 + 40 * v92), (v91 + 40 * *(result + 16 * (v90 - 1) + 32)), v91 + 40 * v7, v8);
        if (v6)
        {
        }

        if (v7 < v92)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_100078454(v93);
        }

        if (v90 - 2 >= *(v93 + 2))
        {
          goto LABEL_141;
        }

        v94 = &v93[16 * v90];
        *v94 = v92;
        *(v94 + 1) = v7;
        v112 = v93;
        sub_1000783C8(v90 - 1);
        result = v112;
        v90 = *(v112 + 16);
        v7 = a3;
        if (v90 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v9 + 1 >= v8)
    {
      v14 = v9 + 1;
      goto LABEL_29;
    }

    v99 = v10;
    v11 = *v7;
    sub_10001424C(*v7 + 40 * (v9 + 1), v111);
    sub_10001424C(v11 + 40 * v9, v110);
    v105 = sub_1000771DC(v111, v110);
    if (v6)
    {
      sub_1000142F0(v110);
      sub_1000142F0(v111);
    }

    sub_1000142F0(v110);
    result = sub_1000142F0(v111);
    v4 = v9 + 2;
    v97 = v9;
    v12 = 40 * v9;
    v13 = v11 + 40 * v9 + 80;
    v14 = v8;
    while (v14 != v4)
    {
      sub_10001424C(v13, v111);
      sub_10001424C(v13 - 40, v110);
      sub_10001424C(v111, v109);
      if (swift_dynamicCast())
      {
        v15 = v107;
        v16 = v108;
      }

      else
      {
        v16 = 0xE400000000000000;
        v15 = 1701736302;
      }

      sub_10001424C(v110, v109);
      if (swift_dynamicCast())
      {
        v17 = v108;
        if (v15 != v107)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v17 = 0xE400000000000000;
        if (v15 != 1701736302)
        {
          goto LABEL_7;
        }
      }

      if (v16 == v17)
      {
        v8 = 0;
        goto LABEL_8;
      }

LABEL_7:
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_8:

      sub_1000142F0(v110);
      result = sub_1000142F0(v111);
      ++v4;
      v13 += 40;
      if ((v105 ^ v8))
      {
        v14 = v4 - 1;
        break;
      }
    }

    v9 = v97;
    v10 = v99;
    if ((v105 & 1) == 0)
    {
      goto LABEL_29;
    }

    if (v14 < v97)
    {
      goto LABEL_146;
    }

    if (v97 < v14)
    {
      v18 = 40 * v14 - 40;
      v19 = v14;
      v20 = v97;
      do
      {
        if (v20 != --v19)
        {
          v21 = *v7;
          if (!*v7)
          {
            goto LABEL_150;
          }

          v22 = (v21 + v12);
          v23 = (v21 + v18);
          v24 = *v22;
          v25 = v22[1];
          v26 = *(v22 + 4);
          v27 = *(v23 + 4);
          v28 = v23[1];
          *v22 = *v23;
          v22[1] = v28;
          *(v22 + 4) = v27;
          *(v23 + 4) = v26;
          *v23 = v24;
          v23[1] = v25;
        }

        ++v20;
        v18 -= 40;
        v12 += 40;
      }

      while (v20 < v19);
    }

LABEL_29:
    v29 = *(v7 + 8);
    if (v14 >= v29)
    {
      goto LABEL_38;
    }

    if (__OFSUB__(v14, v9))
    {
      goto LABEL_143;
    }

    if (v14 - v9 >= a4)
    {
LABEL_38:
      v8 = v14;
      if (v14 < v9)
      {
        goto LABEL_142;
      }

      goto LABEL_39;
    }

    if (__OFADD__(v9, a4))
    {
      goto LABEL_144;
    }

    if (v9 + a4 >= v29)
    {
      v8 = *(v7 + 8);
    }

    else
    {
      v8 = v9 + a4;
    }

    if (v8 < v9)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    if (v14 == v8)
    {
      goto LABEL_38;
    }

    v98 = v9;
    v100 = v10;
    v95 = v6;
    v76 = *v7;
    v77 = v76 + 40 * v14;
    v104 = v8;
    v106 = v14;
    v78 = v9 - v14;
LABEL_91:
    v4 = v78;
    v79 = v77;
LABEL_92:
    sub_10001424C(v79, v111);
    v80 = v79 - 40;
    sub_10001424C(v79 - 40, v110);
    sub_10001424C(v111, v109);
    if (swift_dynamicCast())
    {
      v81 = v107;
      v82 = v108;
    }

    else
    {
      v82 = 0xE400000000000000;
      v81 = 1701736302;
    }

    sub_10001424C(v110, v109);
    if (!swift_dynamicCast())
    {
      v83 = 0xE400000000000000;
      if (v81 != 1701736302)
      {
        break;
      }

      goto LABEL_99;
    }

    v83 = v108;
    if (v81 != v107)
    {
      break;
    }

LABEL_99:
    if (v82 != v83)
    {
      break;
    }

    sub_1000142F0(v110);
    sub_1000142F0(v111);
LABEL_90:
    v8 = v104;
    v77 += 40;
    --v78;
    if (++v106 != v104)
    {
      goto LABEL_91;
    }

    v6 = v95;
    v7 = a3;
    v9 = v98;
    v10 = v100;
    if (v104 < v98)
    {
      goto LABEL_142;
    }

LABEL_39:
    v30 = v10;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v10 = v30;
    }

    else
    {
      result = sub_100011948(0, *(v30 + 2) + 1, 1, v30);
      v10 = result;
    }

    v4 = *(v10 + 2);
    v31 = *(v10 + 3);
    v32 = v4 + 1;
    if (v4 >= v31 >> 1)
    {
      result = sub_100011948((v31 > 1), v4 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v32;
    v33 = &v10[16 * v4];
    *(v33 + 4) = v9;
    *(v33 + 5) = v8;
    v103 = v8;
    v34 = *v101;
    if (!*v101)
    {
      goto LABEL_152;
    }

    if (v4)
    {
      while (2)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          v40 = &v10[16 * v32 + 32];
          v41 = *(v40 - 64);
          v42 = *(v40 - 56);
          v46 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          if (v46)
          {
            goto LABEL_129;
          }

          v45 = *(v40 - 48);
          v44 = *(v40 - 40);
          v46 = __OFSUB__(v44, v45);
          v38 = v44 - v45;
          v39 = v46;
          if (v46)
          {
            goto LABEL_130;
          }

          v47 = &v10[16 * v32];
          v49 = *v47;
          v48 = *(v47 + 1);
          v46 = __OFSUB__(v48, v49);
          v50 = v48 - v49;
          if (v46)
          {
            goto LABEL_132;
          }

          v46 = __OFADD__(v38, v50);
          v51 = v38 + v50;
          if (v46)
          {
            goto LABEL_135;
          }

          if (v51 >= v43)
          {
            v69 = &v10[16 * v35 + 32];
            v71 = *v69;
            v70 = *(v69 + 1);
            v46 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v46)
            {
              goto LABEL_139;
            }

            if (v38 < v72)
            {
              v35 = v32 - 2;
            }
          }

          else
          {
LABEL_58:
            if (v39)
            {
              goto LABEL_131;
            }

            v52 = &v10[16 * v32];
            v54 = *v52;
            v53 = *(v52 + 1);
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_134;
            }

            v58 = &v10[16 * v35 + 32];
            v60 = *v58;
            v59 = *(v58 + 1);
            v46 = __OFSUB__(v59, v60);
            v61 = v59 - v60;
            if (v46)
            {
              goto LABEL_137;
            }

            if (__OFADD__(v56, v61))
            {
              goto LABEL_138;
            }

            if (v56 + v61 < v38)
            {
              goto LABEL_72;
            }

            if (v38 < v61)
            {
              v35 = v32 - 2;
            }
          }
        }

        else
        {
          if (v32 == 3)
          {
            v36 = *(v10 + 4);
            v37 = *(v10 + 5);
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
            goto LABEL_58;
          }

          v62 = &v10[16 * v32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v46 = __OFSUB__(v63, v64);
          v56 = v63 - v64;
          v57 = v46;
LABEL_72:
          if (v57)
          {
            goto LABEL_133;
          }

          v65 = &v10[16 * v35];
          v67 = *(v65 + 4);
          v66 = *(v65 + 5);
          v46 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v46)
          {
            goto LABEL_136;
          }

          if (v68 < v56)
          {
            break;
          }
        }

        v4 = v35 - 1;
        if (v35 - 1 >= v32)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
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
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v7)
        {
          goto LABEL_149;
        }

        v8 = v10;
        v73 = *&v10[16 * v4 + 32];
        v74 = *&v10[16 * v35 + 40];
        sub_100077F40((*v7 + 40 * v73), (*v7 + 40 * *&v10[16 * v35 + 32]), *v7 + 40 * v74, v34);
        if (v6)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100078454(v8);
        }

        if (v4 >= *(v8 + 16))
        {
          goto LABEL_128;
        }

        v75 = v8 + 16 * v4;
        *(v75 + 32) = v73;
        *(v75 + 40) = v74;
        v112 = v8;
        result = sub_1000783C8(v35);
        v10 = v112;
        v32 = *(v112 + 16);
        if (v32 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v8 = *(v7 + 8);
    v9 = v103;
    if (v103 >= v8)
    {
      goto LABEL_110;
    }
  }

  v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

  sub_1000142F0(v110);
  result = sub_1000142F0(v111);
  if ((v84 & 1) == 0)
  {
    goto LABEL_90;
  }

  if (v76)
  {
    v85 = *(v79 + 32);
    v87 = *v79;
    v86 = *(v79 + 16);
    v88 = *(v79 - 24);
    *v79 = *v80;
    *(v79 + 16) = v88;
    *(v79 + 32) = *(v79 - 8);
    *v80 = v87;
    *(v79 - 24) = v86;
    v79 -= 40;
    *(v80 + 32) = v85;
    if (__CFADD__(v4++, 1))
    {
      goto LABEL_90;
    }

    goto LABEL_92;
  }

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
  return result;
}

uint64_t sub_100077F40(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 40;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 40;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[40 * v11] <= a4)
    {
      memmove(a4, __dst, 40 * v11);
    }

    v43 = &v4[40 * v11];
    if (v10 < 40 || v6 <= v7)
    {
LABEL_52:
      v20 = v6;
      goto LABEL_53;
    }

    v21 = &type metadata for AnyHashable;
    while (1)
    {
      v22 = (v6 - 40);
      v23 = (v43 - 40);
      v5 -= 40;
      v37 = v6 - 40;
      while (1)
      {
        sub_10001424C(v23, v42);
        sub_10001424C(v22, v41);
        sub_10001424C(v42, v40);
        if (swift_dynamicCast())
        {
          v27 = v38;
          v26 = v39;
        }

        else
        {
          v26 = 0xE400000000000000;
          v27 = 1701736302;
        }

        sub_10001424C(v41, v40);
        v28 = v21;
        if (swift_dynamicCast())
        {
          v29 = v39;
          if (v27 != v38)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v29 = 0xE400000000000000;
          if (v27 != 1701736302)
          {
            goto LABEL_43;
          }
        }

        if (v26 == v29)
        {
          v30 = 0;
          goto LABEL_44;
        }

LABEL_43:
        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_44:

        sub_1000142F0(v41);
        sub_1000142F0(v42);
        if (v30)
        {
          break;
        }

        v21 = v28;
        if (v5 + 40 != v23 + 40)
        {
          v31 = *v23;
          v32 = *(v23 + 16);
          *(v5 + 32) = *(v23 + 32);
          *v5 = v31;
          *(v5 + 16) = v32;
        }

        v24 = v23 - 40;
        v5 -= 40;
        v25 = v23 > v4;
        v23 -= 40;
        v22 = (v6 - 40);
        if (!v25)
        {
          v43 = (v24 + 40);
          goto LABEL_52;
        }
      }

      v21 = v28;
      v20 = v6 - 40;
      if ((v5 + 40) != v6)
      {
        v33 = *v37;
        v34 = *(v6 - 24);
        *(v5 + 32) = *(v6 - 1);
        *v5 = v33;
        *(v5 + 16) = v34;
      }

      v43 = (v23 + 40);
      if (v23 + 40 > v4)
      {
        v6 -= 40;
        if (v37 > v7)
        {
          continue;
        }
      }

      v43 = (v23 + 40);
      goto LABEL_53;
    }
  }

  if (a4 != __src || &__src[40 * v9] <= a4)
  {
    memmove(a4, __src, 40 * v9);
  }

  v43 = &v4[40 * v9];
  if (v8 >= 40 && v6 < v5)
  {
    do
    {
      sub_10001424C(v6, v42);
      sub_10001424C(v4, v41);
      sub_10001424C(v42, v40);
      if (swift_dynamicCast())
      {
        v13 = v38;
        v12 = v39;
      }

      else
      {
        v12 = 0xE400000000000000;
        v13 = 1701736302;
      }

      sub_10001424C(v41, v40);
      if (swift_dynamicCast())
      {
        v14 = v39;
        if (v13 != v38)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v14 = 0xE400000000000000;
        if (v13 != 1701736302)
        {
          goto LABEL_16;
        }
      }

      if (v12 == v14)
      {

        sub_1000142F0(v41);
        sub_1000142F0(v42);
LABEL_20:
        v16 = v4;
        v17 = v7 == v4;
        v4 += 40;
        if (v17)
        {
          goto LABEL_22;
        }

LABEL_21:
        v18 = *v16;
        v19 = *(v16 + 1);
        *(v7 + 4) = *(v16 + 4);
        *v7 = v18;
        *(v7 + 1) = v19;
        goto LABEL_22;
      }

LABEL_16:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1000142F0(v41);
      sub_1000142F0(v42);
      if ((v15 & 1) == 0)
      {
        goto LABEL_20;
      }

      v16 = v6;
      v17 = v7 == v6;
      v6 += 40;
      if (!v17)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 40;
    }

    while (v4 < v43 && v6 < v5);
  }

  v20 = v7;
LABEL_53:
  v35 = (v43 - v4) / 40;
  if (v20 != v4 || v20 >= &v4[40 * v35])
  {
    memmove(v20, v4, 40 * v35);
  }

  return 1;
}

uint64_t sub_1000783C8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100078454(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100078468(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004A6B08, &unk_100376270);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100078574(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000039E8(&qword_1004A6DC8, &qword_1003788D0);
  v10 = *(type metadata accessor for URLQueryItem() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URLQueryItem() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10007874C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000039E8(&qword_1004A6DA8, &unk_100376A00);
  v10 = *(sub_1000039E8(&qword_1004A6DB0, &qword_1003784B0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000039E8(&qword_1004A6DB0, &qword_1003784B0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10007893C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004A6D98, &unk_1003784A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100078AAC(Swift::String *a1, void *a2, void *a3)
{
  v50 = type metadata accessor for URLRequest();
  v47 = *(v50 - 8);
  v6 = __chkstk_darwin(v50);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v45 - v8;
  v9 = sub_1000039E8(&qword_1004A73C0, &unk_100376A70);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v52 = v12;
  countAndFlagsBits = a1[2]._countAndFlagsBits;
  v14 = *(countAndFlagsBits + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v49 = a2;
  v48 = a3;
  Date.init()();
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
  v16 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  swift_beginAccess();
  sub_10007A27C(v11, v14 + v16);
  swift_endAccess();
  v17 = (*((swift_isaMask & *countAndFlagsBits) + 0x1D0))(1);
  v18 = *((swift_isaMask & *countAndFlagsBits) + 0x300);
  v19 = v18(v17);
  v20 = a1[3]._countAndFlagsBits;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = v19;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_10007D7F8;
  *(v22 + 24) = v21;
  v57 = sub_10001FA40;
  v58 = v22;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10003885C;
  v56 = &unk_100480850;
  v23 = _Block_copy(&aBlock);

  dispatch_sync(v20, v23);
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v26 = v18(result) > 1;
    v27 = swift_allocObject();
    *(v27 + 16) = a1;
    *(v27 + 24) = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_10007D8F8;
    *(v28 + 24) = v27;
    v57 = sub_10001FA40;
    v58 = v28;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_10003885C;
    v56 = &unk_1004808C8;
    v29 = _Block_copy(&aBlock);

    dispatch_sync(v20, v29);
    _Block_release(v29);
    v30 = swift_isEscapingClosureAtFileLocation();

    if ((v30 & 1) == 0)
    {
      v31 = v51;
      (*((swift_isaMask & *countAndFlagsBits) + 0x428))(result);
      v32 = v46;
      v33 = v47;
      (*(v47 + 32))(v46, v31, v50);
      v34._countAndFlagsBits = 0x6172542D33422D58;
      v34._object = 0xEC00000064696563;
      URLRequest.addValue(_:forHTTPHeaderField:)(a1[1], v34);
      v51 = sub_1000731A8(countAndFlagsBits, v32, sub_10007D6EC, v52);
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100376BB0;
      v36 = [countAndFlagsBits description];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      *(v35 + 56) = &type metadata for String;
      v40 = sub_10001A9EC();
      *(v35 + 64) = v40;
      *(v35 + 32) = v37;
      *(v35 + 40) = v39;
      v41 = OS_dispatch_queue.label.getter();
      *(v35 + 96) = &type metadata for String;
      *(v35 + 104) = v40;
      *(v35 + 72) = v41;
      *(v35 + 80) = v42;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v43 = static OS_os_log.default.getter();
      v44 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Executing DispatchWorkItem for task=%{public}s on queue %{public}s", 66, 2, &_mh_execute_header, v43, v44, v35);

      OS_dispatch_queue.async(execute:)();

      (*(v33 + 8))(v32, v50);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10007928C(Swift::String *a1, void *a2, void *a3)
{
  v50 = type metadata accessor for URLRequest();
  v47 = *(v50 - 8);
  v6 = __chkstk_darwin(v50);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v45 - v8;
  v9 = sub_1000039E8(&qword_1004A73C0, &unk_100376A70);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v52 = v12;
  countAndFlagsBits = a1[2]._countAndFlagsBits;
  v14 = *(countAndFlagsBits + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v49 = a2;
  v48 = a3;
  Date.init()();
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
  v16 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  swift_beginAccess();
  sub_10007A27C(v11, v14 + v16);
  swift_endAccess();
  v17 = (*((swift_isaMask & *countAndFlagsBits) + 0x1D0))(1);
  v18 = *((swift_isaMask & *countAndFlagsBits) + 0x300);
  v19 = v18(v17);
  v20 = a1[3]._countAndFlagsBits;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = v19;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_10007D7F8;
  *(v22 + 24) = v21;
  v57 = sub_10001FA40;
  v58 = v22;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10003885C;
  v56 = &unk_10047FB80;
  v23 = _Block_copy(&aBlock);

  dispatch_sync(v20, v23);
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v26 = v18(result) > 1;
    v27 = swift_allocObject();
    *(v27 + 16) = a1;
    *(v27 + 24) = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_10007D8F8;
    *(v28 + 24) = v27;
    v57 = sub_10001FA40;
    v58 = v28;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_10003885C;
    v56 = &unk_10047FBF8;
    v29 = _Block_copy(&aBlock);

    dispatch_sync(v20, v29);
    _Block_release(v29);
    v30 = swift_isEscapingClosureAtFileLocation();

    if ((v30 & 1) == 0)
    {
      v31 = v51;
      (*((swift_isaMask & *countAndFlagsBits) + 0x428))(result);
      v32 = v46;
      v33 = v47;
      (*(v47 + 32))(v46, v31, v50);
      v34._countAndFlagsBits = 0x6172542D33422D58;
      v34._object = 0xEC00000064696563;
      URLRequest.addValue(_:forHTTPHeaderField:)(a1[1], v34);
      v51 = sub_1000731A8(countAndFlagsBits, v32, sub_10007A320, v52);
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100376BB0;
      v36 = [countAndFlagsBits description];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      *(v35 + 56) = &type metadata for String;
      v40 = sub_10001A9EC();
      *(v35 + 64) = v40;
      *(v35 + 32) = v37;
      *(v35 + 40) = v39;
      v41 = OS_dispatch_queue.label.getter();
      *(v35 + 96) = &type metadata for String;
      *(v35 + 104) = v40;
      *(v35 + 72) = v41;
      *(v35 + 80) = v42;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v43 = static OS_os_log.default.getter();
      v44 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Executing DispatchWorkItem for task=%{public}s on queue %{public}s", 66, 2, &_mh_execute_header, v43, v44, v35);

      OS_dispatch_queue.async(execute:)();

      (*(v33 + 8))(v32, v50);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100079A68(Swift::String *a1, void *a2)
{
  v45 = type metadata accessor for URLRequest();
  v43 = *(v45 - 8);
  v4 = __chkstk_darwin(v45);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = &v42 - v6;
  v7 = sub_1000039E8(&qword_1004A73C0, &unk_100376A70);
  __chkstk_darwin(v7 - 8);
  v9 = &v42 - v8;
  v47 = swift_allocObject();
  *(v47 + 16) = a2;
  countAndFlagsBits = a1[2]._countAndFlagsBits;
  v11 = *(countAndFlagsBits + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v44 = a2;
  Date.init()();
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  v13 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  swift_beginAccess();
  sub_10007A27C(v9, v11 + v13);
  swift_endAccess();
  v14 = (*((swift_isaMask & *countAndFlagsBits) + 0x1D0))(1);
  v15 = *((swift_isaMask & *countAndFlagsBits) + 0x300);
  v16 = v15(v14);
  v17 = a1[3]._countAndFlagsBits;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10007A2EC;
  *(v19 + 24) = v18;
  v52 = sub_10001F874;
  v53 = v19;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10003885C;
  v51 = &unk_10047FA68;
  v20 = _Block_copy(&aBlock);

  dispatch_sync(v17, v20);
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v23 = v15(result) > 1;
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    *(v24 + 24) = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_10007A310;
    *(v25 + 24) = v24;
    v52 = sub_10001FA40;
    v53 = v25;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_10003885C;
    v51 = &unk_10047FAE0;
    v26 = _Block_copy(&aBlock);

    dispatch_sync(v17, v26);
    _Block_release(v26);
    v27 = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      v28 = v46;
      (*((swift_isaMask & *countAndFlagsBits) + 0x428))(result);
      v29 = v42;
      v30 = v43;
      (*(v43 + 32))(v42, v28, v45);
      v31._countAndFlagsBits = 0x6172542D33422D58;
      v31._object = 0xEC00000064696563;
      URLRequest.addValue(_:forHTTPHeaderField:)(a1[1], v31);
      v46 = sub_1000731A8(countAndFlagsBits, v29, sub_10007A274, v47);
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100376BB0;
      v33 = [countAndFlagsBits description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      *(v32 + 56) = &type metadata for String;
      v37 = sub_10001A9EC();
      *(v32 + 64) = v37;
      *(v32 + 32) = v34;
      *(v32 + 40) = v36;
      v38 = OS_dispatch_queue.label.getter();
      *(v32 + 96) = &type metadata for String;
      *(v32 + 104) = v37;
      *(v32 + 72) = v38;
      *(v32 + 80) = v39;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v40 = static OS_os_log.default.getter();
      v41 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Executing DispatchWorkItem for task=%{public}s on queue %{public}s", 66, 2, &_mh_execute_header, v40, v41, v32);

      OS_dispatch_queue.async(execute:)();

      (*(v30 + 8))(v29, v45);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10007A23C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007A27C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A73C0, &unk_100376A70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007A2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
}

uint64_t sub_10007A328()
{
  v1 = type metadata accessor for URLRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void *sub_10007A3FC()
{
  v1 = *(type metadata accessor for URLRequest() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_100073CA0(v2, v3, v4, v5, v6);
}

uint64_t sub_10007A470()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007A4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(v4 + 16) + 88) = *(v4 + 24);
}

uint64_t sub_10007A518()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007A550()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007A5A8()
{
  v1 = type metadata accessor for URLRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10007A688()
{
  v1 = *(type metadata accessor for URLRequest() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  sub_1000768D8(v3, v4, v6, v0 + v2, v5);
}

uint64_t sub_10007A734()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007A77C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007A7DC()
{
  v1 = type metadata accessor for URLRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10007A8C4(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v9 = *(type metadata accessor for URLRequest() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  sub_100074308(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10007A9B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007A9F8()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10007AA3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007AAAC(Swift::String *a1, void *a2)
{
  v45 = type metadata accessor for URLRequest();
  v43 = *(v45 - 8);
  v4 = __chkstk_darwin(v45);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = &v42 - v6;
  v7 = sub_1000039E8(&qword_1004A73C0, &unk_100376A70);
  __chkstk_darwin(v7 - 8);
  v9 = &v42 - v8;
  v47 = swift_allocObject();
  *(v47 + 16) = a2;
  countAndFlagsBits = a1[2]._countAndFlagsBits;
  v11 = *(countAndFlagsBits + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v44 = a2;
  Date.init()();
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  v13 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  swift_beginAccess();
  sub_10007A27C(v9, v11 + v13);
  swift_endAccess();
  v14 = (*((swift_isaMask & *countAndFlagsBits) + 0x1D0))(1);
  v15 = *((swift_isaMask & *countAndFlagsBits) + 0x300);
  v16 = v15(v14);
  v17 = a1[3]._countAndFlagsBits;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10007D7F8;
  *(v19 + 24) = v18;
  v52 = sub_10001FA40;
  v53 = v19;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10003885C;
  v51 = &unk_1004802D8;
  v20 = _Block_copy(&aBlock);

  dispatch_sync(v17, v20);
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v23 = v15(result) > 1;
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    *(v24 + 24) = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_10007D8F8;
    *(v25 + 24) = v24;
    v52 = sub_10001FA40;
    v53 = v25;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_10003885C;
    v51 = &unk_100480350;
    v26 = _Block_copy(&aBlock);

    dispatch_sync(v17, v26);
    _Block_release(v26);
    v27 = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      v28 = v46;
      (*((swift_isaMask & *countAndFlagsBits) + 0x428))(result);
      v29 = v42;
      v30 = v43;
      (*(v43 + 32))(v42, v28, v45);
      v31._countAndFlagsBits = 0x6172542D33422D58;
      v31._object = 0xEC00000064696563;
      URLRequest.addValue(_:forHTTPHeaderField:)(a1[1], v31);
      v46 = sub_1000731A8(countAndFlagsBits, v29, sub_10007D6C4, v47);
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100376BB0;
      v33 = [countAndFlagsBits description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      *(v32 + 56) = &type metadata for String;
      v37 = sub_10001A9EC();
      *(v32 + 64) = v37;
      *(v32 + 32) = v34;
      *(v32 + 40) = v36;
      v38 = OS_dispatch_queue.label.getter();
      *(v32 + 96) = &type metadata for String;
      *(v32 + 104) = v37;
      *(v32 + 72) = v38;
      *(v32 + 80) = v39;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v40 = static OS_os_log.default.getter();
      v41 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Executing DispatchWorkItem for task=%{public}s on queue %{public}s", 66, 2, &_mh_execute_header, v40, v41, v32);

      OS_dispatch_queue.async(execute:)();

      (*(v30 + 8))(v29, v45);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10007B280(Swift::String *a1, void *a2)
{
  v45 = type metadata accessor for URLRequest();
  v43 = *(v45 - 8);
  v4 = __chkstk_darwin(v45);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = &v42 - v6;
  v7 = sub_1000039E8(&qword_1004A73C0, &unk_100376A70);
  __chkstk_darwin(v7 - 8);
  v9 = &v42 - v8;
  v47 = swift_allocObject();
  *(v47 + 16) = a2;
  countAndFlagsBits = a1[2]._countAndFlagsBits;
  v11 = *(countAndFlagsBits + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v44 = a2;
  Date.init()();
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  v13 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  swift_beginAccess();
  sub_10007A27C(v9, v11 + v13);
  swift_endAccess();
  v14 = (*((swift_isaMask & *countAndFlagsBits) + 0x1D0))(1);
  v15 = *((swift_isaMask & *countAndFlagsBits) + 0x300);
  v16 = v15(v14);
  v17 = a1[3]._countAndFlagsBits;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10007D7F8;
  *(v19 + 24) = v18;
  v52 = sub_10001FA40;
  v53 = v19;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10003885C;
  v51 = &unk_100480738;
  v20 = _Block_copy(&aBlock);

  dispatch_sync(v17, v20);
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v23 = v15(result) > 1;
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    *(v24 + 24) = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_10007D8F8;
    *(v25 + 24) = v24;
    v52 = sub_10001FA40;
    v53 = v25;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_10003885C;
    v51 = &unk_1004807B0;
    v26 = _Block_copy(&aBlock);

    dispatch_sync(v17, v26);
    _Block_release(v26);
    v27 = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      v28 = v46;
      (*((swift_isaMask & *countAndFlagsBits) + 0x428))(result);
      v29 = v42;
      v30 = v43;
      (*(v43 + 32))(v42, v28, v45);
      v31._countAndFlagsBits = 0x6172542D33422D58;
      v31._object = 0xEC00000064696563;
      URLRequest.addValue(_:forHTTPHeaderField:)(a1[1], v31);
      v46 = sub_1000731A8(countAndFlagsBits, v29, sub_10007D6E4, v47);
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100376BB0;
      v33 = [countAndFlagsBits description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      *(v32 + 56) = &type metadata for String;
      v37 = sub_10001A9EC();
      *(v32 + 64) = v37;
      *(v32 + 32) = v34;
      *(v32 + 40) = v36;
      v38 = OS_dispatch_queue.label.getter();
      *(v32 + 96) = &type metadata for String;
      *(v32 + 104) = v37;
      *(v32 + 72) = v38;
      *(v32 + 80) = v39;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v40 = static OS_os_log.default.getter();
      v41 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Executing DispatchWorkItem for task=%{public}s on queue %{public}s", 66, 2, &_mh_execute_header, v40, v41, v32);

      OS_dispatch_queue.async(execute:)();

      (*(v30 + 8))(v29, v45);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10007BA4C(Swift::String *a1, void *a2)
{
  v45 = type metadata accessor for URLRequest();
  v43 = *(v45 - 8);
  v4 = __chkstk_darwin(v45);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = &v42 - v6;
  v7 = sub_1000039E8(&qword_1004A73C0, &unk_100376A70);
  __chkstk_darwin(v7 - 8);
  v9 = &v42 - v8;
  v47 = swift_allocObject();
  *(v47 + 16) = a2;
  countAndFlagsBits = a1[2]._countAndFlagsBits;
  v11 = *(countAndFlagsBits + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v44 = a2;
  Date.init()();
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  v13 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  swift_beginAccess();
  sub_10007A27C(v9, v11 + v13);
  swift_endAccess();
  v14 = (*((swift_isaMask & *countAndFlagsBits) + 0x1D0))(1);
  v15 = *((swift_isaMask & *countAndFlagsBits) + 0x300);
  v16 = v15(v14);
  v17 = a1[3]._countAndFlagsBits;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10007D7F8;
  *(v19 + 24) = v18;
  v52 = sub_10001FA40;
  v53 = v19;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10003885C;
  v51 = &unk_100480620;
  v20 = _Block_copy(&aBlock);

  dispatch_sync(v17, v20);
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v23 = v15(result) > 1;
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    *(v24 + 24) = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_10007D8F8;
    *(v25 + 24) = v24;
    v52 = sub_10001FA40;
    v53 = v25;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_10003885C;
    v51 = &unk_100480698;
    v26 = _Block_copy(&aBlock);

    dispatch_sync(v17, v26);
    _Block_release(v26);
    v27 = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      v28 = v46;
      (*((swift_isaMask & *countAndFlagsBits) + 0x428))(result);
      v29 = v42;
      v30 = v43;
      (*(v43 + 32))(v42, v28, v45);
      v31._countAndFlagsBits = 0x6172542D33422D58;
      v31._object = 0xEC00000064696563;
      URLRequest.addValue(_:forHTTPHeaderField:)(a1[1], v31);
      v46 = sub_1000731A8(countAndFlagsBits, v29, sub_10007D6DC, v47);
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100376BB0;
      v33 = [countAndFlagsBits description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      *(v32 + 56) = &type metadata for String;
      v37 = sub_10001A9EC();
      *(v32 + 64) = v37;
      *(v32 + 32) = v34;
      *(v32 + 40) = v36;
      v38 = OS_dispatch_queue.label.getter();
      *(v32 + 96) = &type metadata for String;
      *(v32 + 104) = v37;
      *(v32 + 72) = v38;
      *(v32 + 80) = v39;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v40 = static OS_os_log.default.getter();
      v41 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Executing DispatchWorkItem for task=%{public}s on queue %{public}s", 66, 2, &_mh_execute_header, v40, v41, v32);

      OS_dispatch_queue.async(execute:)();

      (*(v30 + 8))(v29, v45);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10007C220(Swift::String *a1, void *a2)
{
  v45 = type metadata accessor for URLRequest();
  v43 = *(v45 - 8);
  v4 = __chkstk_darwin(v45);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = &v42 - v6;
  v7 = sub_1000039E8(&qword_1004A73C0, &unk_100376A70);
  __chkstk_darwin(v7 - 8);
  v9 = &v42 - v8;
  v47 = swift_allocObject();
  *(v47 + 16) = a2;
  countAndFlagsBits = a1[2]._countAndFlagsBits;
  v11 = *(countAndFlagsBits + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v44 = a2;
  Date.init()();
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  v13 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  swift_beginAccess();
  sub_10007A27C(v9, v11 + v13);
  swift_endAccess();
  v14 = (*((swift_isaMask & *countAndFlagsBits) + 0x1D0))(1);
  v15 = *((swift_isaMask & *countAndFlagsBits) + 0x300);
  v16 = v15(v14);
  v17 = a1[3]._countAndFlagsBits;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10007D7F8;
  *(v19 + 24) = v18;
  v52 = sub_10001FA40;
  v53 = v19;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10003885C;
  v51 = &unk_1004803F0;
  v20 = _Block_copy(&aBlock);

  dispatch_sync(v17, v20);
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v23 = v15(result) > 1;
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    *(v24 + 24) = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_10007D8F8;
    *(v25 + 24) = v24;
    v52 = sub_10001FA40;
    v53 = v25;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_10003885C;
    v51 = &unk_100480468;
    v26 = _Block_copy(&aBlock);

    dispatch_sync(v17, v26);
    _Block_release(v26);
    v27 = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      v28 = v46;
      (*((swift_isaMask & *countAndFlagsBits) + 0x428))(result);
      v29 = v42;
      v30 = v43;
      (*(v43 + 32))(v42, v28, v45);
      v31._countAndFlagsBits = 0x6172542D33422D58;
      v31._object = 0xEC00000064696563;
      URLRequest.addValue(_:forHTTPHeaderField:)(a1[1], v31);
      v46 = sub_1000731A8(countAndFlagsBits, v29, sub_10007D6CC, v47);
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100376BB0;
      v33 = [countAndFlagsBits description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      *(v32 + 56) = &type metadata for String;
      v37 = sub_10001A9EC();
      *(v32 + 64) = v37;
      *(v32 + 32) = v34;
      *(v32 + 40) = v36;
      v38 = OS_dispatch_queue.label.getter();
      *(v32 + 96) = &type metadata for String;
      *(v32 + 104) = v37;
      *(v32 + 72) = v38;
      *(v32 + 80) = v39;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v40 = static OS_os_log.default.getter();
      v41 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Executing DispatchWorkItem for task=%{public}s on queue %{public}s", 66, 2, &_mh_execute_header, v40, v41, v32);

      OS_dispatch_queue.async(execute:)();

      (*(v30 + 8))(v29, v45);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10007C9F4(Swift::String *a1, void *a2)
{
  v45 = type metadata accessor for URLRequest();
  v43 = *(v45 - 8);
  v4 = __chkstk_darwin(v45);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = &v42 - v6;
  v7 = sub_1000039E8(&qword_1004A73C0, &unk_100376A70);
  __chkstk_darwin(v7 - 8);
  v9 = &v42 - v8;
  v47 = swift_allocObject();
  *(v47 + 16) = a2;
  countAndFlagsBits = a1[2]._countAndFlagsBits;
  v11 = *(countAndFlagsBits + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v44 = a2;
  Date.init()();
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  v13 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_startTime;
  swift_beginAccess();
  sub_10007A27C(v9, v11 + v13);
  swift_endAccess();
  v14 = (*((swift_isaMask & *countAndFlagsBits) + 0x1D0))(1);
  v15 = *((swift_isaMask & *countAndFlagsBits) + 0x300);
  v16 = v15(v14);
  v17 = a1[3]._countAndFlagsBits;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10007D7F8;
  *(v19 + 24) = v18;
  v52 = sub_10001FA40;
  v53 = v19;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10003885C;
  v51 = &unk_100480508;
  v20 = _Block_copy(&aBlock);

  dispatch_sync(v17, v20);
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v23 = v15(result) > 1;
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    *(v24 + 24) = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_10007D8F8;
    *(v25 + 24) = v24;
    v52 = sub_10001FA40;
    v53 = v25;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_10003885C;
    v51 = &unk_100480580;
    v26 = _Block_copy(&aBlock);

    dispatch_sync(v17, v26);
    _Block_release(v26);
    v27 = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      v28 = v46;
      (*((swift_isaMask & *countAndFlagsBits) + 0x428))(result);
      v29 = v42;
      v30 = v43;
      (*(v43 + 32))(v42, v28, v45);
      v31._countAndFlagsBits = 0x6172542D33422D58;
      v31._object = 0xEC00000064696563;
      URLRequest.addValue(_:forHTTPHeaderField:)(a1[1], v31);
      v46 = sub_1000731A8(countAndFlagsBits, v29, sub_10007D6D4, v47);
      sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100376BB0;
      v33 = [countAndFlagsBits description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      *(v32 + 56) = &type metadata for String;
      v37 = sub_10001A9EC();
      *(v32 + 64) = v37;
      *(v32 + 32) = v34;
      *(v32 + 40) = v36;
      v38 = OS_dispatch_queue.label.getter();
      *(v32 + 96) = &type metadata for String;
      *(v32 + 104) = v37;
      *(v32 + 72) = v38;
      *(v32 + 80) = v39;
      sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
      v40 = static OS_os_log.default.getter();
      v41 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Executing DispatchWorkItem for task=%{public}s on queue %{public}s", 66, 2, &_mh_execute_header, v40, v41, v32);

      OS_dispatch_queue.async(execute:)();

      (*(v30 + 8))(v29, v45);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10007D1C8(void *a1)
{
  v2 = [a1 allHeaderFields];
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_1000118B8(*(v3 + 16), 0);
  v6 = sub_100013BA8(&v36, (v5 + 32), v4, v3);
  v7 = v36;

  sub_100013E00(v7);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = _swiftEmptyArrayStorage;
  }

  v36 = v5;
  sub_1000720F8(&v36);

  v8 = *(v36 + 2);
  if (!v8)
  {

    v10 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v9 = v36 + 32;
  v10 = _swiftEmptyArrayStorage;
  do
  {
    sub_10001424C(v9, &v36);
    v34 = 0;
    v35 = 0xE000000000000000;
    v11 = [a1 allHeaderFields];
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v12 + 16) && (v13 = sub_100013470(&v36), (v14 & 1) != 0))
    {
      sub_100003CA0(*(v12 + 56) + 32 * v13, v33);
    }

    else
    {

      memset(v33, 0, sizeof(v33));
    }

    sub_10001424C(&v36, v31);
    if (swift_dynamicCast())
    {
      v15 = v29;
      v16 = v30;
    }

    else
    {
      v15 = 0x7265646165486F4ELL;
      v16 = 0xEC000000656D614ELL;
    }

    v17 = v16;
    String.append(_:)(*&v15);

    v18._countAndFlagsBits = 8250;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    sub_10007D654(v33, v31);
    if (v32)
    {
      if (swift_dynamicCast())
      {
        v19 = v29;
        v20 = v30;
        goto LABEL_19;
      }
    }

    else
    {
      sub_100013F2C(v31, &qword_1004A8398, &qword_100403EA0);
    }

    v20 = 0xE700000000000000;
    v19 = 0x65756C61566F4ELL;
LABEL_19:
    v21 = v20;
    String.append(_:)(*&v19);

    v22 = v34;
    v23 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_100011A4C(0, *(v10 + 2) + 1, 1, v10);
    }

    v25 = *(v10 + 2);
    v24 = *(v10 + 3);
    if (v25 >= v24 >> 1)
    {
      v10 = sub_100011A4C((v24 > 1), v25 + 1, 1, v10);
    }

    sub_100013F2C(v33, &qword_1004A8398, &qword_100403EA0);
    sub_1000142F0(&v36);
    *(v10 + 2) = v25 + 1;
    v26 = &v10[16 * v25];
    *(v26 + 4) = v22;
    *(v26 + 5) = v23;
    v9 += 40;
    --v8;
  }

  while (v8);

LABEL_26:
  v36 = v10;
  sub_1000039E8(&qword_1004A6B48, &unk_100376810);
  sub_10000E720(&qword_1004A6B50, &qword_1004A6B48, &unk_100376810, &protocol conformance descriptor for [A]);
  v27 = BidirectionalCollection<>.joined(separator:)();

  return v27;
}

uint64_t sub_10007D5D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007D614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(v4 + 16) + 56) = *(v4 + 24);
}

uint64_t sub_10007D654(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A8398, &qword_100403EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007D6F4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007DAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC16KnoxClientPublic8DAWToken__dawTokenFactory;
  swift_beginAccess();
  return sub_10007E788(a1 + v4, a2);
}

uint64_t sub_10007DB54(uint64_t a1)
{
  v2 = a1;
  v3 = *&v1[OBJC_IVAR____TtC16KnoxClientPublic8DAWToken_synchronizationQueue];
  sub_10007E788(a1, v11);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = v11[1];
  *(v4 + 24) = v11[0];
  *(v4 + 40) = v5;
  *(v4 + 56) = v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10007E840;
  *(v6 + 24) = v4;
  aBlock[4] = sub_10001F874;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003885C;
  aBlock[3] = &unk_100480AA8;
  v7 = _Block_copy(aBlock);
  v8 = v1;

  dispatch_sync(v3, v7);
  _Block_release(v7);
  sub_100013F2C(v2, &qword_1004A7A50, &unk_100377300);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10007DCEC(uint64_t a1, uint64_t a2)
{
  sub_10007E788(a2, v5);
  v3 = OBJC_IVAR____TtC16KnoxClientPublic8DAWToken__dawTokenFactory;
  swift_beginAccess();
  sub_10007FB9C(v5, a1 + v3);
  return swift_endAccess();
}

void (*sub_10007DD54(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  __chkstk_darwin(v3);
  sub_1000039E8(&qword_1004A7A50, &unk_100377300);
  OS_dispatch_queue.sync<A>(execute:)();
  return sub_10007DE44;
}

void sub_10007DE44(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10007E788(*a1, v2 + 40);
    sub_10007DB54(v2 + 40);
    sub_100013F2C(v2, &qword_1004A7A50, &unk_100377300);
  }

  else
  {
    sub_10007DB54(*a1);
  }

  free(v2);
}

uint64_t sub_10007DEBC()
{
  v1 = (v0 + OBJC_IVAR____TtC16KnoxClientPublic8DAWToken_token);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];

  v4._countAndFlagsBits = v2;
  v4._object = v3;
  String.append(_:)(v4);

  return 0x20726572616542;
}

uint64_t sub_10007DF50(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16KnoxClientPublic8DAWToken_token);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_10007E02C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = 0;
  v19[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v6 = type metadata accessor for DAWToken(0);
  v20.receiver = v0;
  v20.super_class = v6;
  v7 = objc_msgSendSuper2(&v20, "description");
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v21 = v8;
  v22 = v10;
  v11._object = 0x800000010042DAC0;
  v11._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v11);
  v12 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v12, v2);
  v13 = Date.description.getter();
  v15 = v14;
  (*(v3 + 8))(v5, v2);
  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 39;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return v21;
}

uint64_t sub_10007E1F0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC16KnoxClientPublic8DAWToken_token);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_10007E25C()
{
  v1 = (v0 + OBJC_IVAR____TtC16KnoxClientPublic8DAWToken_token);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_10007E2B4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16KnoxClientPublic8DAWToken_token);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

char *DAWToken.init(token:expirationDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v26 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v23 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v24 = OBJC_IVAR____TtC16KnoxClientPublic8DAWToken_synchronizationQueue;
  sub_10000E014();
  v22[1] = "RetryRunner-syncronizationQueue";
  static DispatchQoS.userInitiated.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_10006F0AC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v23, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v25);
  v11 = v26;
  (*(v4 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v26);
  static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v6, v11);
  *&v3[v24] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = &v3[OBJC_IVAR____TtC16KnoxClientPublic8DAWToken__dawTokenFactory];
  *(v12 + 4) = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *&v3[OBJC_IVAR____TtC16KnoxClientPublic8DAWToken____lazy_storage___jsonEncoder] = 0;
  v13 = &v3[OBJC_IVAR____TtC16KnoxClientPublic8DAWToken_token];
  v14 = v28;
  *v13 = v27;
  v13[1] = v14;
  v15 = type metadata accessor for DAWToken(0);
  v31.receiver = v3;
  v31.super_class = v15;
  v16 = objc_msgSendSuper2(&v31, "init");
  v17 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
  swift_beginAccess();
  v18 = type metadata accessor for Date();
  v19 = *(*(v18 - 8) + 40);
  v20 = v16;
  v19(&v16[v17], v29, v18);
  swift_endAccess();

  return v20;
}

uint64_t sub_10007E788(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A7A50, &unk_100377300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007E7F8()
{
  if (*(v0 + 48))
  {
    sub_100003C3C((v0 + 24));
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10007E85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
}

uint64_t type metadata accessor for DAWToken(uint64_t a1)
{
  result = qword_1004A8400;
  if (!qword_1004A8400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *DAWToken.init(from:)(void *a1)
{
  v63 = a1;
  v1 = sub_1000039E8(&qword_1004A73C0, &unk_100376A70);
  __chkstk_darwin(v1 - 8);
  v51 = &v45 - v2;
  v50 = type metadata accessor for Date();
  v47 = *(v50 - 8);
  v3 = __chkstk_darwin(v50);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v48 = &v45 - v6;
  __chkstk_darwin(v5);
  v45 = &v45 - v7;
  v52 = sub_1000039E8(&qword_1004A83C0, &qword_1003784C8);
  v49 = *(v52 - 8);
  __chkstk_darwin(v52);
  v60 = &v45 - v8;
  v57 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v57 - 8);
  __chkstk_darwin(v57);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  v55 = OBJC_IVAR____TtC16KnoxClientPublic8DAWToken_synchronizationQueue;
  sub_10000E014();
  v53 = "RetryRunner-syncronizationQueue";
  static DispatchQoS.userInitiated.getter();
  v61 = _swiftEmptyArrayStorage;
  sub_10006F0AC(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v54, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v56);
  v16 = v63;
  v17 = v57;
  (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v57);
  static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v11, v17);
  v18 = v58;
  *&v18[v55] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  p_superclass = &OBJC_METACLASS____TtCC16KnoxClientPublic30KnoxRandomAccessDownloadStreamP33_8609A5B166BE0E302F0623AF80A089F431DownloadByteRangeIntoBufferTask.superclass;
  v20 = &v18[OBJC_IVAR____TtC16KnoxClientPublic8DAWToken__dawTokenFactory];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *&v18[OBJC_IVAR____TtC16KnoxClientPublic8DAWToken____lazy_storage___jsonEncoder] = 0;
  sub_10000E2A8(v16, v16[3]);
  sub_10007F168();
  v21 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    sub_100003C3C(v63);

    sub_100013F2C(&v18[OBJC_IVAR____TtC16KnoxClientPublic8DAWToken__dawTokenFactory], &qword_1004A7A50, &unk_100377300);

    type metadata accessor for DAWToken(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v49;
    v22 = v50;
    v24 = v51;
    LOBYTE(v61) = 0;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = &v18[OBJC_IVAR____TtC16KnoxClientPublic8DAWToken_token];
    *v27 = v25;
    v27[1] = v28;
    v29 = type metadata accessor for DAWToken(0);
    v62.receiver = v18;
    v62.super_class = v29;
    p_superclass = objc_msgSendSuper2(&v62, "init");
    LOBYTE(v61) = 1;
    sub_10006F0AC(&qword_1004A7D30, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v30 = v24;
    v31 = v22;
    v32 = v52;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v33 = v47;
    if ((*(v47 + 48))(v30, 1, v31) == 1)
    {
      sub_100013F2C(v30, &qword_1004A73C0, &unk_100376A70);
      v34 = v32;
      v35 = p_superclass;
      v36 = v46;
      Date.init()();
      v37 = v48;
      Date.addingTimeInterval(_:)();
      (*(v33 + 8))(v36, v31);
      (*(v23 + 8))(v60, v34);
      v38 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
      swift_beginAccess();
      (*(v33 + 40))(&v35[v38], v37, v31);
    }

    else
    {
      (*(v23 + 8))(v60, v32);
      v39 = *(v33 + 32);
      v40 = v45;
      v39(v45, v30, v31);
      v41 = v48;
      v39(v48, v40, v31);
      v42 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
      swift_beginAccess();
      v43 = *(v33 + 40);
      v44 = p_superclass;
      v43(p_superclass + v42, v41, v31);
    }

    swift_endAccess();
    sub_100003C3C(v63);
  }

  return p_superclass;
}

unint64_t sub_10007F168()
{
  result = qword_1004A83C8;
  if (!qword_1004A83C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A83C8);
  }

  return result;
}

uint64_t sub_10007F1BC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10047ACE0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_10007F21C@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10047ACE0, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10007F280(uint64_t a1)
{
  v2 = sub_10007F168();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007F2BC(uint64_t a1)
{
  v2 = sub_10007F168();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007F2F8(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v17 = *(v5 - 8);
  v18 = v5;
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000039E8(&qword_1004A83D0, &qword_1003784D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  sub_10000E2A8(a1, a1[3]);
  sub_10007F168();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  v19 = 0;

  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {

    v13 = OBJC_IVAR____TtC16KnoxClientPublic9AuthToken_expirationDate;
    swift_beginAccess();
    v14 = v17;
    v15 = v3 + v13;
    v16 = v18;
    (*(v17 + 16))(v7, v15, v18);
    v20 = 1;
    sub_10006F0AC(&qword_1004A7D40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v14 + 8))(v7, v16);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_10007F630()
{
  sub_100013F2C(v0 + OBJC_IVAR____TtC16KnoxClientPublic8DAWToken__dawTokenFactory, &qword_1004A7A50, &unk_100377300);
}

id DAWToken.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DAWToken(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007F71C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16KnoxClientPublic8DAWToken_token);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

unint64_t sub_10007FA34()
{
  result = qword_1004A8410;
  if (!qword_1004A8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8410);
  }

  return result;
}

unint64_t sub_10007FA8C()
{
  result = qword_1004A8418;
  if (!qword_1004A8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8418);
  }

  return result;
}

unint64_t sub_10007FAE4()
{
  result = qword_1004A8420;
  if (!qword_1004A8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8420);
  }

  return result;
}

uint64_t sub_10007FB38@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC16KnoxClientPublic8DAWToken__dawTokenFactory;
  swift_beginAccess();
  return sub_10007E788(v3 + v4, a1);
}

uint64_t sub_10007FB9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A7A50, &unk_100377300);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> KnoxURLSessionPinningDelegate.configureForMTLS(using:)(KnoxClientPublic::mTLSAuth *using)
{
  isa = using->urlCredential.value.super.isa;
  v3 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_clientURLCredential);
  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic29KnoxURLSessionPinningDelegate_clientURLCredential) = isa;
  v4 = isa;
}

uint64_t mTLSAuth.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004A8428, &qword_1003786C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_10007FEE0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v12;
  v23 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;
  a2[6] = 0;

  sub_100003C3C(a1);
}

unint64_t sub_10007FEE0()
{
  result = qword_1004A8430;
  if (!qword_1004A8430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8430);
  }

  return result;
}

uint64_t sub_10007FF34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x64726F7773736170;
  v4 = 0xEC00000068746150;
  if (v2 != 1)
  {
    v3 = 0x6874615079656BLL;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6369666974726563;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEF68746150657461;
  }

  v7 = 0x64726F7773736170;
  v8 = 0xEC00000068746150;
  if (*a2 != 1)
  {
    v7 = 0x6874615079656BLL;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6369666974726563;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEF68746150657461;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100080050()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100080108(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000801AC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100080260@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000806BC(*a1);
  *a2 = result;
  return result;
}

void sub_100080290(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF68746150657461;
  v4 = 0xEC00000068746150;
  v5 = 0x64726F7773736170;
  if (v2 != 1)
  {
    v5 = 0x6874615079656BLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6369666974726563;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100080304()
{
  v1 = 0x64726F7773736170;
  if (*v0 != 1)
  {
    v1 = 0x6874615079656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6369666974726563;
  }
}

unint64_t sub_100080374@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000806BC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10008039C(uint64_t a1)
{
  v2 = sub_10007FEE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000803D8(uint64_t a1)
{
  v2 = sub_10007FEE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> mTLSAuth.init(p12CertificatePath:passwordPath:)(KnoxClientPublic::mTLSAuth *__return_ptr retstr, Swift::String p12CertificatePath, Swift::String passwordPath)
{
  object = passwordPath._object;
  countAndFlagsBits = passwordPath._countAndFlagsBits;
  v6 = p12CertificatePath._object;
  v7 = p12CertificatePath._countAndFlagsBits;
  v27 = retstr;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;

  v26 = v7;
  URL.init(fileURLWithPath:)();

  URL.init(fileURLWithPath:)();

  v15 = sub_100080708(v14, v12);
  if (v3)
  {
    v16 = *(v9 + 8);
    v16(v12, v8);
    v16(v14, v8);
  }

  else
  {
    v17 = v27;
    v24 = v15;
    v25 = countAndFlagsBits;
    v18 = *(v9 + 8);
    v18(v12, v8);
    v18(v14, v8);
    v19 = objc_allocWithZone(NSURLCredential);
    v20 = v24;
    v21 = [v19 initWithIdentity:v24 certificates:0 persistence:1];

    v22 = v25;
    v17->certificatePath.value._countAndFlagsBits = v26;
    v17->certificatePath.value._object = v6;
    v17->passwordPath.value._countAndFlagsBits = v22;
    v17->passwordPath.value._object = object;
    v17->keyPath.value._countAndFlagsBits = 0;
    v17->keyPath.value._object = 0;
    v17->urlCredential.value.super.isa = v21;
  }
}

void __swiftcall mTLSAuth.init(secIdentity:)(KnoxClientPublic::mTLSAuth *__return_ptr retstr, SecIdentityRef secIdentity)
{
  v4 = [objc_allocWithZone(NSURLCredential) initWithIdentity:secIdentity certificates:0 persistence:1];

  retstr->passwordPath = 0u;
  retstr->keyPath = 0u;
  retstr->certificatePath = 0u;
  retstr->urlCredential.value.super.isa = v4;
}

void __swiftcall mTLSAuth.init(urlCredential:)(KnoxClientPublic::mTLSAuth *__return_ptr retstr, NSURLCredential urlCredential)
{
  retstr->passwordPath = 0u;
  retstr->keyPath = 0u;
  retstr->certificatePath = 0u;
  retstr->urlCredential.value.super.isa = urlCredential.super.isa;
}

unint64_t sub_1000806BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10047AD30, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100080708(uint64_t a1, uint64_t a2)
{
  v116 = a2;
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v121 = *(v4 - 8);
  __chkstk_darwin(v4);
  v119 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v120 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v12 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CharacterSet();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = Data.init(contentsOf:options:)();
  v122 = v4;
  if (v2)
  {
    v115 = 0x800000010042E1C0;
    v116 = 0x800000010042E200;
    *&v125[0] = 0;
    *(&v125[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    *&v125[0] = 0xD00000000000001ALL;
    *(&v125[0] + 1) = 0x800000010042E260;
    v19._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 8250;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    *&v114 = v2;
    swift_getErrorValue();
    v21._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v21);

    v111 = *(&v125[0] + 1);
    v112 = *&v125[0];
    v113 = type metadata accessor for KnoxServiceClient.ClientError();
    v22 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v110 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&v125[0] = _swiftEmptyArrayStorage;
    sub_1000823F0(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v117 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v118);
    v23 = v121;
    v24 = v119;
    v25 = v122;
    (*(v121 + 104))(v119, enum case for DispatchQoS.QoSClass.default(_:), v122);
    static OS_dispatch_queue.global(qos:)();
    (*(v23 + 8))(v24, v25);
    v26 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v22 + 16) = 0xD000000000000036;
    *(v22 + 24) = v115;
    *(v22 + 32) = 0xD000000000000059;
    v27 = v116;
    *(v22 + 56) = 11;
    *(v22 + 40) = v27;
    *(v22 + 48) = 384;
    v28 = v111;
    *(v22 + 64) = v112;
    *(v22 + 72) = v28;
    *(v22 + 80) = 0;
    *(v22 + 88) = v26;
    sub_1000823F0(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v29 = v22;
    swift_willThrow();

    return v22;
  }

  v110 = v14;
  v111 = a1;
  v112 = v8;
  v115 = v12;
  v30 = v17;
  v31 = v18;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100031928(v30, v31);
  v33 = String.init(contentsOf:)();
  v113 = isa;
  *&v125[0] = v33;
  *(&v125[0] + 1) = v34;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10000B080();
  v35 = StringProtocol.trimmingCharacters(in:)();
  v37 = v36;
  (*(v110 + 1))(v16, v13);

  sub_1000039E8(&qword_1004A8450, &qword_1003788B0);
  inited = swift_initStackObject();
  v114 = xmmword_100376A40;
  *(inited + 16) = xmmword_100376A40;
  *(inited + 32) = kSecImportExportPassphrase;
  *(inited + 40) = v35;
  *(inited + 48) = v37;
  v39 = kSecImportExportPassphrase;
  sub_100062160(inited);
  swift_setDeallocating();
  sub_100082388(inited + 32);
  type metadata accessor for CFString(0);
  sub_1000823F0(&qword_1004A6CB0, type metadata accessor for CFString, &unk_1003767C8);
  v40 = Dictionary._bridgeToObjectiveC()().super.isa;

  v41 = swift_slowAlloc();
  v109 = v40;
  v42 = SecPKCS12Import(isa, v40, v41);
  v110 = v41;
  if (v42)
  {
    v43 = sub_10009CF04(v42);
    v45 = v44;
    *&v114 = 0x800000010042E1C0;
    v116 = 0x800000010042E200;
    *&v125[0] = 0;
    *(&v125[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v46._countAndFlagsBits = 0xD000000000000027;
    v46._object = 0x800000010042E2A0;
    String.append(_:)(v46);
    v47._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v47);

    v48._countAndFlagsBits = 0x6520687469772027;
    v48._object = 0xEE00203A726F7272;
    String.append(_:)(v48);
    v49._countAndFlagsBits = v43;
    v49._object = v45;
    String.append(_:)(v49);

    v107 = *(&v125[0] + 1);
    v108 = *&v125[0];
    v111 = type metadata accessor for KnoxServiceClient.ClientError();
    v50 = swift_allocObject();
    v22 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v106 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&v125[0] = _swiftEmptyArrayStorage;
    sub_1000823F0(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v117 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v118);
    v51 = v121;
    v52 = v119;
    v53 = v122;
    (*(v121 + 104))(v119, enum case for DispatchQoS.QoSClass.default(_:), v122);
    static OS_dispatch_queue.global(qos:)();
    (*(v51 + 8))(v52, v53);
    v54 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v50 + 16) = 0xD000000000000036;
    *(v50 + 24) = v114;
    *(v50 + 32) = 0xD000000000000059;
    *(v50 + 40) = v116;
    *(v50 + 56) = 12;
    v55 = 410;
LABEL_5:
    *(v50 + 48) = v55;
    v56 = v107;
    *(v50 + 64) = v108;
    *(v50 + 72) = v56;
    *(v50 + 80) = 0;
    *(v50 + 88) = v54;
    sub_1000823F0(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
LABEL_20:
    swift_allocError();
    *v87 = v50;
    swift_willThrow();

    return v22;
  }

  v57 = *v41;
  v58 = v7;
  if (!v57 || (objc_opt_self(), !swift_dynamicCastObjCClass()) || (*&v125[0] = 0, v59 = v57, sub_1000039E8(&qword_1004B07E0, &unk_1003788C0), static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v59, (v60 = *&v125[0]) == 0))
  {
    v111 = 0x800000010042E1C0;
    v108 = 0x800000010042E200;
    *&v114 = 0x800000010042E2D0;
    v116 = type metadata accessor for KnoxServiceClient.ClientError();
    v50 = swift_allocObject();
    v22 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v107 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&v125[0] = _swiftEmptyArrayStorage;
    sub_1000823F0(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v117 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v118);
    v81 = v121;
    v82 = v119;
    v83 = v122;
    (*(v121 + 104))(v119, enum case for DispatchQoS.QoSClass.default(_:), v122);
    static OS_dispatch_queue.global(qos:)();
    (*(v81 + 8))(v82, v83);
    v84 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v50 + 16) = 0xD000000000000036;
    *(v50 + 24) = v111;
    *(v50 + 32) = 0xD000000000000059;
    v85 = v108;
    *(v50 + 56) = 11;
    *(v50 + 40) = v85;
    *(v50 + 48) = 415;
    v86 = v114;
    *(v50 + 64) = 0xD000000000000046;
    *(v50 + 72) = v86;
    *(v50 + 80) = 0;
    *(v50 + 88) = v84;
    sub_1000823F0(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
    goto LABEL_20;
  }

  v61 = *(*&v125[0] + 16);
  if (!v61)
  {

    *&v114 = 0x800000010042E1C0;
    v116 = 0x800000010042E200;
    *&v125[0] = 0;
    *(&v125[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *&v125[0] = 0xD00000000000001CLL;
    *(&v125[0] + 1) = 0x800000010042E320;
    v96._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v96);

    v97._countAndFlagsBits = 39;
    v97._object = 0xE100000000000000;
    String.append(_:)(v97);
    v107 = *(&v125[0] + 1);
    v108 = *&v125[0];
    v111 = type metadata accessor for KnoxServiceClient.ClientError();
    v50 = swift_allocObject();
    v22 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
    v106 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&v125[0] = _swiftEmptyArrayStorage;
    sub_1000823F0(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850, &qword_100376280);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v117 + 104))(v58, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v118);
    v98 = v121;
    v99 = v119;
    v100 = v122;
    (*(v121 + 104))(v119, enum case for DispatchQoS.QoSClass.default(_:), v122);
    static OS_dispatch_queue.global(qos:)();
    (*(v98 + 8))(v99, v100);
    v54 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v50 + 16) = 0xD000000000000036;
    *(v50 + 24) = v114;
    *(v50 + 32) = 0xD000000000000059;
    *(v50 + 40) = v116;
    *(v50 + 56) = 11;
    v55 = 420;
    goto LABEL_5;
  }

  v116 = 0;
  v106 = v58;
  if (v61 != 1)
  {
    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    v62 = swift_allocObject();
    *(v62 + 16) = v114;
    *(v62 + 56) = &type metadata for Int;
    *(v62 + 64) = &protocol witness table for Int;
    *(v62 + 32) = v61;
    sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
    v63 = static OS_os_log.default.getter();
    v64 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Found %{public}i items in p12 file - will use only the first one that contains an Identity", 90, 2, &_mh_execute_header, v63, v64, v62);

    v61 = *(v60 + 16);
    if (!v61)
    {
LABEL_22:

      v115 = 0x800000010042E1C0;
      v116 = 0x800000010042E200;
      *&v125[0] = 0;
      *(&v125[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      *&v125[0] = 0xD000000000000023;
      *(&v125[0] + 1) = 0x800000010042E370;
      v88._countAndFlagsBits = URL.path.getter();
      String.append(_:)(v88);

      v89._countAndFlagsBits = 39;
      v89._object = 0xE100000000000000;
      String.append(_:)(v89);
      v108 = *(&v125[0] + 1);
      v111 = *&v125[0];
      *&v114 = type metadata accessor for KnoxServiceClient.ClientError();
      v50 = swift_allocObject();
      v22 = sub_10001AA40(0, &qword_1004A7840, OS_dispatch_queue_ptr);
      v107 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      *&v125[0] = _swiftEmptyArrayStorage;
      sub_1000823F0(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850, &qword_100376280);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v117 + 104))(v106, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v118);
      v90 = v121;
      v91 = v119;
      v92 = v122;
      (*(v121 + 104))(v119, enum case for DispatchQoS.QoSClass.default(_:), v122);
      static OS_dispatch_queue.global(qos:)();
      (*(v90 + 8))(v91, v92);
      v93 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v50 + 16) = 0xD000000000000036;
      *(v50 + 24) = v115;
      *(v50 + 32) = 0xD000000000000059;
      v94 = v116;
      *(v50 + 56) = 11;
      *(v50 + 40) = v94;
      *(v50 + 48) = 441;
      v95 = v108;
      *(v50 + 64) = v111;
      *(v50 + 72) = v95;
      *(v50 + 80) = 0;
      *(v50 + 88) = v93;
      sub_1000823F0(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
      goto LABEL_20;
    }
  }

  result = sub_10001AA40(0, &qword_1004A7380, OS_os_log_ptr);
  v108 = result;
  v66 = 0;
  v107 = kSecImportItemIdentity;
  while (v66 < *(v60 + 16))
  {
    v67 = v60;
    v68 = *(v60 + 8 * v66 + 32);
    sub_1000039E8(&unk_1004A7370, &qword_100376BC0);
    v69 = swift_allocObject();
    *(v69 + 16) = v114;

    v70 = Dictionary.description.getter();
    v72 = v71;
    *(v69 + 56) = &type metadata for String;
    v73 = sub_10001A9EC();
    *(v69 + 64) = v73;
    *(v69 + 32) = v70;
    *(v69 + 40) = v72;
    v74 = static OS_os_log.default.getter();
    v75 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Found in p12 data file: %{public}s", 34, 2, &_mh_execute_header, v74, v75, v69);

    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v68 + 16))
    {
      v78 = sub_100013364(v76, v77);
      v80 = v79;

      if (v80)
      {

        sub_100003CA0(*(v68 + 56) + 32 * v78, v124);

        sub_1000279A4(v124, v125);
        sub_100003CA0(v125, v124);
        type metadata accessor for SecIdentity(0);
        swift_dynamicCast();
        v22 = v123;
        v101 = swift_allocObject();
        *(v101 + 16) = v114;
        v102 = URL.path.getter();
        *(v101 + 56) = &type metadata for String;
        *(v101 + 64) = v73;
        *(v101 + 32) = v102;
        *(v101 + 40) = v103;
        v104 = static OS_os_log.default.getter();
        v105 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Using first Identity found in p12 data file: %{public}s", 55, 2, &_mh_execute_header, v104, v105, v101);

        sub_100003C3C(v125);

        return v22;
      }
    }

    else
    {
    }

    ++v66;
    v60 = v67;
    if (v61 == v66)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_100082188(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000821A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100082200(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100082284()
{
  result = qword_1004A8438;
  if (!qword_1004A8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8438);
  }

  return result;
}

unint64_t sub_1000822DC()
{
  result = qword_1004A8440;
  if (!qword_1004A8440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8440);
  }

  return result;
}

unint64_t sub_100082334()
{
  result = qword_1004A8448;
  if (!qword_1004A8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8448);
  }

  return result;
}

uint64_t sub_100082388(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004A8458, &qword_1003788B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000823F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100082438()
{
  v1 = v0[1];
  if ((v1 & 0x2000000000000000) == 0)
  {
    if ((*v0 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v1 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return;
  }

LABEL_5:
  String.index(before:)();

  String.remove(at:)();
}

unint64_t sub_1000824A0(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100083C88(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_1000827A0(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_100084214(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

KnoxClientPublic::EarliestTimeFilter __swiftcall EarliestTimeFilter.init(timeValue:timeUnit:)(Swift::UInt32 timeValue, KnoxClientPublic::EarliestTimeFilter::TimeUnit timeUnit)
{
  v3 = *timeUnit;
  *v2 = timeValue;
  *(v2 + 4) = v3;
  result.timeValue = timeValue;
  return result;
}

KnoxClientPublic::EarliestTimeFilter __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EarliestTimeFilter.init(fromString:)(Swift::String fromString)
{
  object = fromString._object;
  countAndFlagsBits = fromString._countAndFlagsBits;
  v5 = v1;
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v55 - v11;
  v61 = countAndFlagsBits;
  v62 = object;

  if (String.count.getter() <= 2)
  {
    goto LABEL_13;
  }

  v13 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v13 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v57 = v2;
  v58 = v5;
  v14 = sub_100083848(countAndFlagsBits, object);
  if (!v15)
  {
LABEL_91:
    __break(1u);
    return v14;
  }

  v16 = v14;
  v17 = v15;
  sub_100084790(1);
  if (v16 == 45 && v17 == 0xE100000000000000)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  sub_100082438();
  v20 = v19;
  v22._countAndFlagsBits = v21;
  v22._object = v20;
  v23 = _findStringSwitchCase(cases:string:)(&off_10047AD98, v22);

  if (v23)
  {
    if (v23 == 1)
    {
      v56 = countAndFlagsBits;
      v63 = 1;
      goto LABEL_17;
    }

LABEL_13:

    goto LABEL_14;
  }

  v56 = countAndFlagsBits;
  v63 = 0;
LABEL_17:
  v25 = v61;
  v26 = v62;
  v59 = v61;
  v60 = v62;

  static CharacterSet.decimalDigits.getter();
  CharacterSet.inverted.getter();
  v27 = *(v7 + 8);
  v27(v12, v6);
  sub_10000B080();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v29 = v28;
  v27(v10, v6);

  if ((v29 & 1) == 0)
  {

    v24 = v56;
    goto LABEL_15;
  }

  v30 = HIBYTE(v26) & 0xF;
  v31 = v25 & 0xFFFFFFFFFFFFLL;
  if ((v26 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(v26) & 0xF;
  }

  else
  {
    v32 = v25 & 0xFFFFFFFFFFFFLL;
  }

  countAndFlagsBits = v56;
  if (!v32)
  {
    goto LABEL_13;
  }

  if ((v26 & 0x1000000000000000) == 0)
  {
    if ((v26 & 0x2000000000000000) != 0)
    {
      v59 = v25;
      v60 = v26 & 0xFFFFFFFFFFFFFFLL;
      v39 = v25;
      if (v25 == 43)
      {
        v33 = v58;
        if (v30)
        {
          if (--v30)
          {
            LODWORD(v35) = 0;
            v46 = &v59 + 1;
            while (1)
            {
              v47 = *v46 - 48;
              if (v47 > 9)
              {
                break;
              }

              v48 = 10 * v35;
              if ((v48 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v35) = v48 + v47;
              if (__CFADD__(v48, v47))
              {
                break;
              }

              ++v46;
              if (!--v30)
              {
                goto LABEL_80;
              }
            }
          }

          goto LABEL_79;
        }

        goto LABEL_90;
      }

      v33 = v58;
      if (v39 != 45)
      {
        if (v30)
        {
          LODWORD(v35) = 0;
          v51 = &v59;
          while (1)
          {
            v52 = *v51 - 48;
            if (v52 > 9)
            {
              break;
            }

            v53 = 10 * v35;
            if ((v53 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            LODWORD(v35) = v53 + v52;
            if (__CFADD__(v53, v52))
            {
              break;
            }

            v51 = (v51 + 1);
            if (!--v30)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_79;
      }

      if (v30)
      {
        if (--v30)
        {
          LODWORD(v35) = 0;
          v40 = &v59 + 1;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              break;
            }

            v42 = 10 * v35;
            if ((v42 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            LODWORD(v35) = v42 - v41;
            if (v42 < v41)
            {
              break;
            }

            ++v40;
            if (!--v30)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_79;
      }
    }

    else
    {
      if ((v25 & 0x1000000000000000) != 0)
      {
        v14 = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v14 = _StringObject.sharedUTF8.getter();
      }

      v33 = v58;
      v34 = *v14;
      if (v34 == 43)
      {
        if (v31 >= 1)
        {
          v30 = v31 - 1;
          if (v31 != 1)
          {
            LODWORD(v35) = 0;
            if (v14)
            {
              v43 = v14 + 1;
              while (1)
              {
                v44 = *v43 - 48;
                if (v44 > 9)
                {
                  goto LABEL_79;
                }

                v45 = 10 * v35;
                if ((v45 & 0xFFFFFFFF00000000) != 0)
                {
                  goto LABEL_79;
                }

                LODWORD(v35) = v45 + v44;
                if (__CFADD__(v45, v44))
                {
                  goto LABEL_79;
                }

                ++v43;
                if (!--v30)
                {
                  goto LABEL_80;
                }
              }
            }

            goto LABEL_71;
          }

          goto LABEL_79;
        }

        goto LABEL_89;
      }

      if (v34 != 45)
      {
        if (v31)
        {
          LODWORD(v35) = 0;
          if (v14)
          {
            while (1)
            {
              v49 = *v14 - 48;
              if (v49 > 9)
              {
                goto LABEL_79;
              }

              v50 = 10 * v35;
              if ((v50 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_79;
              }

              LODWORD(v35) = v50 + v49;
              if (__CFADD__(v50, v49))
              {
                goto LABEL_79;
              }

              ++v14;
              if (!--v31)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_79:
        LODWORD(v35) = 0;
        LOBYTE(v30) = 1;
LABEL_80:
        v64 = v30;
        v54 = v30;

        if ((v54 & 1) == 0)
        {
LABEL_81:

          *v33 = v35;
          *(v33 + 4) = v63;
          return v14;
        }

        goto LABEL_14;
      }

      if (v31 >= 1)
      {
        v30 = v31 - 1;
        if (v31 != 1)
        {
          LODWORD(v35) = 0;
          if (v14)
          {
            v36 = v14 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                goto LABEL_79;
              }

              v38 = 10 * v35;
              if ((v38 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_79;
              }

              LODWORD(v35) = v38 - v37;
              if (v38 < v37)
              {
                goto LABEL_79;
              }

              ++v36;
              if (!--v30)
              {
                goto LABEL_80;
              }
            }
          }

LABEL_71:
          LOBYTE(v30) = 0;
          goto LABEL_80;
        }

        goto LABEL_79;
      }

      __break(1u);
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v35 = sub_100084214(v25, v26, 10);

  v33 = v58;
  if ((v35 & 0x100000000) == 0)
  {
    goto LABEL_81;
  }

LABEL_14:
  v24 = countAndFlagsBits;
LABEL_15:
  sub_100083020(v24, object);

  return swift_willThrow();
}

uint64_t sub_100083020(uint64_t a1, void *a2)
{
  v32 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v32 - 8);
  __chkstk_darwin(v32);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v28 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v27 = 0x800000010042E440;
  v29 = 0x800000010042E460;
  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(50);

  v33 = 39;
  v34 = 0xE100000000000000;
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD00000000000002BLL;
  v12._object = 0x800000010042E4D0;
  String.append(_:)(v12);
  v13._object = 0x80000001003789B0;
  v13._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 11872;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v24 = v34;
  v25 = v33;
  v26 = type metadata accessor for KnoxServiceClient.ClientError();
  v15 = swift_allocObject();
  sub_10000E014();
  v23 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850, &qword_100376280);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v30 + 104))(v28, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  v16 = v32;
  (*(v4 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v32);
  static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v6, v16);
  v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = v27;
  *(v15 + 16) = 0xD000000000000019;
  *(v15 + 24) = v18;
  v19 = v29;
  *(v15 + 32) = 0xD00000000000006FLL;
  *(v15 + 40) = v19;
  *(v15 + 56) = 4;
  *(v15 + 48) = 43;
  v20 = v24;
  *(v15 + 64) = v25;
  *(v15 + 72) = v20;
  *(v15 + 80) = 0;
  *(v15 + 88) = v17;
  sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError, &protocol conformance descriptor for KnoxServiceClient.ClientError);
  result = swift_allocError();
  *v22 = v15;
  return result;
}

KnoxClientPublic::EarliestTimeFilter::TimeUnit_optional __swiftcall EarliestTimeFilter.TimeUnit.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10047ADE8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t EarliestTimeFilter.getURLQueryItems()()
{
  v1 = *(v0 + 4);
  sub_1000039E8(&qword_1004A6DC8, &qword_1003788D0);
  type metadata accessor for URLQueryItem();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100376A40;
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  if (v1)
  {
    v4 = 121;
  }

  else
  {
    v4 = 109;
  }

  v5 = 0xE100000000000000;
  String.append(_:)(*&v4);
  URLQueryItem.init(name:value:)();

  return v2;
}

uint64_t EarliestTimeFilter.TimeUnit.rawValue.getter()
{
  if (*v0)
  {
    return 121;
  }

  else
  {
    return 109;
  }
}

uint64_t sub_100083654(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 121;
  }

  else
  {
    v2 = 109;
  }

  if (*a2)
  {
    v3 = 121;
  }

  else
  {
    v3 = 109;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_1000836C4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100083724(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100083768()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000837C4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10047ADE8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100083824(uint64_t *a1@<X8>)
{
  v2 = 109;
  if (*v1)
  {
    v2 = 121;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_100083848(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100083890(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_100083910(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100083910(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100002B00(v9, 0), v12 = sub_100083A68(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100083A68(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000C34F8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000C34F8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100083C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100083890(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}