uint64_t sub_100001D60()
{
  sub_100005E58();
  __chkstk_darwin();
  sub_100005DA8();
  __chkstk_darwin();
  v0 = sub_100005E68();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000535C(0, &qword_10000C3F0, OS_dispatch_queue_ptr);
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  sub_100005D98();
  v5[1] = &_swiftEmptyArrayStorage;
  sub_100003C50(&qword_10000C3F8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000050E8(&qword_10000C400, &qword_1000068F8);
  sub_1000053A4();
  sub_100005EA8();
  result = sub_100005E88();
  qword_10000CEF0 = result;
  return result;
}

uint64_t sub_100001F98(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_100005E08();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v4 = sub_100005C78();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v5 = sub_100005B68();
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  v6 = sub_100005AF8();
  v2[28] = v6;
  v2[29] = *(v6 - 8);
  v7 = swift_task_alloc();
  v2[30] = v7;
  v8 = swift_task_alloc();
  v2[31] = v8;
  *v8 = v2;
  v8[1] = sub_1000021D0;

  return ThumbnailRequest.fileURL.getter(v7);
}

uint64_t sub_1000021D0()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100002AD8;
  }

  else
  {
    v2 = sub_1000022E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000022E4()
{
  v66 = v0;
  if (qword_10000C4C0 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[15];
  v4 = qword_10000CEF0;
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  sub_10000535C(0, &qword_10000C3A0, &off_1000084E8);
  v6 = v4;
  sub_100005E78();

  if (v1)
  {
    goto LABEL_4;
  }

  v12 = v0[10];
  v13 = [v12 embeddedThumbnail];
  if (v13)
  {
    v14 = v13;
    v15 = sub_100005B08();
    v17 = v16;

    v18 = [v12 embeddedThumbnailType];
    if (v18)
    {
      v20 = v0[23];
      v19 = v0[24];
      v21 = v0[19];
      v22 = v0[20];
      v23 = v18;
      sub_100005C38();

      (*(v22 + 32))(v19, v20, v21);
      sub_100005B58();
      sub_100005094(v15, v17);
      (*(v22 + 8))(v19, v21);
LABEL_24:
      v57 = v0[26];
      v56 = v0[27];
      v58 = v0[25];
      v59 = v0[14];
      [v12 multipage];
      sub_100005B38();

      (*(v57 + 32))(v59, v56, v58);
      (*(v0[29] + 8))(v0[30], v0[28]);

      v24 = v0[1];
      goto LABEL_25;
    }

    sub_100005094(v15, v17);
  }

  v26 = v0[17];
  v25 = v0[18];
  v27 = v0[16];
  v28 = [v12 htmlContent];
  sub_100005DD8();

  sub_100005DF8();
  v29 = sub_100005DE8();
  v31 = v30;

  (*(v26 + 8))(v25, v27);
  if (v31 >> 60 != 15)
  {
    v33 = v0[21];
    v32 = v0[22];
    v35 = v0[19];
    v34 = v0[20];
    sub_100005C48();
    v36 = v29;
    v37 = [v12 attachments];
    sub_10000535C(0, &qword_10000C3B8, QLThumbnailReplyAttachment_ptr);
    sub_100005DB8();

    v62 = v36;
    v63 = v31;
    sub_100005B58();

    v38 = *(v34 + 8);
    v38(v32, v35);
    [v12 size];
    v40 = v39;
    v42 = v41;
    sub_100005B78();
    sub_100005C08();
    LOBYTE(v36) = sub_100005C68();
    v38(v33, v35);
    v38(v32, v35);
    if (v36)
    {
      v43 = v40 * 1.33333333;
      if (v40 * 1.33333333 >= v42)
      {
        v43 = v42;
      }

      if (v42 * 1.33333333 < v40)
      {
        v40 = v42 * 1.33333333;
      }

      else
      {
        v42 = v43;
      }
    }

    v45 = v0[21];
    v44 = v0[22];
    v60 = v0[15];
    v61 = v0[19];
    v46 = sub_100005DD8();
    v48 = v47;
    v68.width = v40;
    v68.height = v42;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v68);
    v65 = sub_10000535C(0, &qword_10000C3C0, NSDictionary_ptr);
    *v64 = DictionaryRepresentation;
    v50 = sub_100005B48();
    sub_1000030BC(v64, v46, v48);
    v50(v0 + 2, 0);
    sub_100005B78();
    sub_100005C18();
    v51 = sub_100005C68();
    v38(v45, v61);
    v38(v44, v61);
    if (v51)
    {
      v52 = sub_100005DD8();
      v54 = v53;
      v65 = &type metadata for String;
      strcpy(v64, "/html/body/div");
      v64[15] = -18;
      v55 = sub_100005B48();
      sub_1000030BC(v64, v52, v54);
      v55(v0 + 6, 0);
    }

    sub_100005080(v62, v63);
    goto LABEL_24;
  }

  type metadata accessor for QLThumbnailError(0);
  v0[13] = 0;
  sub_100004F5C(&_swiftEmptyArrayStorage);
  sub_100003C50(&qword_10000C3B0, type metadata accessor for QLThumbnailError, &unk_100006B14);
  sub_100005AC8();
  swift_willThrow();

LABEL_4:
  type metadata accessor for Code(0);
  v0[11] = 1;
  swift_errorRetain();
  sub_100003C50(&qword_10000C3A8, type metadata accessor for Code, &unk_100006C24);
  v7 = sub_100005A58();

  if (v7)
  {

    v8 = swift_task_alloc();
    v0[33] = v8;
    *v8 = v0;
    v8[1] = sub_100002B94;
    v9 = v0[14];
    v10 = v0[15];

    return sub_10000318C(v9, v10);
  }

  (*(v0[29] + 8))(v0[30], v0[28]);

  v24 = v0[1];
LABEL_25:

  return v24();
}

uint64_t sub_100002AD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002B94()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_100002D7C;
  }

  else
  {
    v2 = sub_100002CA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100002CA8()
{
  (*(v0[29] + 8))(v0[30], v0[28]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100002D7C()
{
  (*(v0[29] + 8))(v0[30], v0[28]);

  v1 = v0[1];

  return v1();
}

id sub_100002E50@<X0>(void *a1@<X8>)
{
  v20 = a1;
  v22 = sub_100005BA8();
  v1 = *(v22 - 8);
  __chkstk_darwin();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005C78();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_opt_self();
  sub_100005AE8(v8);
  v10 = v9;
  sub_100005B78();
  isa = sub_100005C28().super.isa;
  (*(v5 + 8))(v7, v4);
  sub_100005BC8();
  sub_100005B88();
  v13 = v12;
  v15 = v14;
  (*(v1 + 8))(v3, v22);
  v23 = 0;
  v16 = [v21 parseFile:v10 contentType:isa requestedSize:&v23 error:{v13, v15}];

  v17 = v23;
  if (v16)
  {
    *v20 = v16;
    return v17;
  }

  else
  {
    v19 = v23;
    sub_100005AD8();

    return swift_willThrow();
  }
}

uint64_t sub_1000030BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100005130(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_100004B7C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1000052FC(a1, &qword_10000C3C8, &qword_1000068A0);
    sub_1000045D8(a2, a3, v9);

    return sub_1000052FC(v9, &qword_10000C3C8, &qword_1000068A0);
  }

  return result;
}

uint64_t sub_10000318C(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_100005BA8();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_100005C78();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_100005E48();
  v2[15] = sub_100005E38();
  v6 = sub_100005E28();

  return _swift_task_switch(sub_1000032E8, v6, v5);
}

uint64_t sub_1000032E8()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  v14 = *(v0 + 64);

  sub_100005B78();
  sub_100005C18();
  v7 = sub_100005C68();
  v8 = *(v3 + 8);
  v8(v2, v5);
  v8(v1, v5);
  v9 = 1280.0;
  if ((v7 & 1) == 0)
  {
    v9 = 3.0;
  }

  v10 = 720.0;
  if ((v7 & 1) == 0)
  {
    v10 = 4.0;
  }

  *(v0 + 16) = sub_100003540;
  *(v0 + 24) = 0;
  *(v0 + 32) = v9 / v10;
  *(v0 + 40) = 0;
  sub_1000050E8(&qword_10000C3E0, &qword_1000068B8);
  swift_allocObject();
  sub_100005CD8();
  sub_100005BC8();
  sub_100005B88();
  v11 = *(v6 + 8);
  v11(v4, v14);
  sub_100005CA8();
  sub_100005BC8();
  sub_100005B98();
  v11(v4, v14);
  sub_100005CB8();
  sub_100005CE8();

  sub_100005B28();

  v12 = *(v0 + 8);

  return v12();
}

double sub_100003540@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_100005D48();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000050E8(&qword_10000C3E8, &qword_1000068C0);
  __chkstk_darwin();
  v7 = v17 - v6;
  v8 = sub_100005D78();
  sub_100005C98();
  sub_100005C98();
  v9 = sub_100005D28();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = sub_100005D38();
  sub_1000052FC(v7, &qword_10000C3E8, &qword_1000068C0);
  KeyPath = swift_getKeyPath();
  sub_100005C98();
  sub_100005C98();
  sub_100005D88();
  sub_100005C88();
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  v12 = sub_100005D68();
  v13 = sub_100005D58();
  v14 = sub_100005D18();
  *a1 = v8;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v10;
  v15 = v17[1];
  *(a1 + 24) = v17[0];
  *(a1 + 40) = v15;
  result = *&v18;
  *(a1 + 56) = v18;
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  return result;
}

uint64_t sub_1000037B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100005BE8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100003818(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C398, type metadata accessor for OfficeThumbnailExtension, &unk_10000681C);

  return ThumbnailExtension.configuration.getter(a1, v2);
}

uint64_t sub_100003894()
{
  sub_100005C78();
  __chkstk_darwin();
  sub_100005C58();
  sub_100005BD8();
  CGImageSourceDisableCaching();
  CGImageSourceDisableRAWDecoding();
  CGImageSourceDisableMetadataParsing();
  CGImageSourceDisableHardwareDecoding();
  return CGImageSourceEnableRestrictedDecoding();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for OfficeThumbnailExtension(0);
  sub_100003C50(&qword_10000C310, type metadata accessor for OfficeThumbnailExtension, &unk_10000684C);
  sub_100005B18();
  return 0;
}

uint64_t type metadata accessor for OfficeThumbnailExtension(uint64_t a1)
{
  result = qword_10000C4C8;
  if (!qword_10000C4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005BE8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100003AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005BE8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100003B1C(uint64_t a1)
{
  result = sub_100005BE8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100003C50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100003CDC(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C430, type metadata accessor for QLThumbnailError, &unk_100006AD0);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003D48(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C430, type metadata accessor for QLThumbnailError, &unk_100006AD0);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100003DB4(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C3B0, type metadata accessor for QLThumbnailError, &unk_100006B14);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100003E40(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C3B0, type metadata accessor for QLThumbnailError, &unk_100006B14);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003EAC(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C3B0, type metadata accessor for QLThumbnailError, &unk_100006B14);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100003F18(void *a1, uint64_t a2)
{
  v4 = sub_100003C50(&qword_10000C3B0, type metadata accessor for QLThumbnailError, &unk_100006B14);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003C50(&qword_10000C3B0, type metadata accessor for QLThumbnailError, &unk_100006B14);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100004034(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C470, type metadata accessor for OIError, &unk_100006C5C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000040A0(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C470, type metadata accessor for OIError, &unk_100006C5C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000410C(void *a1, uint64_t a2)
{
  v4 = sub_100003C50(&qword_10000C470, type metadata accessor for OIError, &unk_100006C5C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000041C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003C50(&qword_10000C470, type metadata accessor for OIError, &unk_100006C5C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100004240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100005F48();
  sub_100005DC8();
  return sub_100005F58();
}

void *sub_1000042A0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000042D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003C50(&qword_10000C3B0, type metadata accessor for QLThumbnailError, &unk_100006B14);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100004354(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C478, type metadata accessor for OIError, &unk_100006D9C);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000043C0(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C478, type metadata accessor for OIError, &unk_100006D9C);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100004430(uint64_t a1)
{
  v2 = sub_100003C50(&qword_10000C470, type metadata accessor for OIError, &unk_100006C5C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000449C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003C50(&qword_10000C470, type metadata accessor for OIError, &unk_100006C5C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_100004520(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100005EF8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

double sub_1000045D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100004690(a1, a2, sub_100004520);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100004D60();
      v10 = v12;
    }

    sub_100005130((*(v10 + 56) + 32 * v8), a3);
    sub_1000049CC(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_100004690(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_100005F48();
  sub_100005E18();
  v5 = sub_100005F58();

  return a3(a1, a2, v5);
}

uint64_t sub_100004714(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000050E8(&qword_10000C3D0, &qword_1000068A8);
  v33 = v4;
  result = sub_100005ED8();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100005130(v24, v34);
      }

      else
      {
        sub_10000518C(v24, v34);
      }

      sub_100005F48();
      sub_100005E18();
      result = sub_100005F58();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100005130(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000049CC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100005EB8() + 1) & ~v5;
    do
    {
      sub_100005F48();

      sub_100005E18();
      v10 = sub_100005F58();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_100004B7C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100004690(a2, a3, sub_100004520);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100004D60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100004714(v16, a4 & 1);
    v11 = sub_100004690(a2, a3, sub_100004520);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_100005F08();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100005140(v22);

    return sub_100005130(a1, v22);
  }

  else
  {
    sub_100004CF4(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_100004CF4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100005130(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_100004D60()
{
  v1 = v0;
  sub_1000050E8(&qword_10000C3D0, &qword_1000068A8);
  v2 = *v0;
  v3 = sub_100005EC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000518C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100005130(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100004F04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005CF8();
  *a1 = result;
  return result;
}

unint64_t sub_100004F5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000050E8(&qword_10000C3D0, &qword_1000068A8);
    v3 = sub_100005EE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000051E8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100004690(v13, v14, sub_100004520);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100005130(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100005080(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005094(result, a2);
  }

  return result;
}

uint64_t sub_100005094(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000050E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_100005130(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100005140(void *a1)
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

uint64_t sub_10000518C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000051E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000050E8(&qword_10000C3D8, &qword_1000068B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100005298(void (*a1)(void))
{
  v3 = (*(v1 + 16))();
  a1();
}

uint64_t sub_1000052FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000050E8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000535C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1000053A4()
{
  result = qword_10000C408;
  if (!qword_10000C408)
  {
    sub_100005408(&qword_10000C400, &qword_1000068F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C408);
  }

  return result;
}

uint64_t sub_100005408(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000565C()
{
  result = qword_10000C458;
  if (!qword_10000C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C458);
  }

  return result;
}

void sub_1000057E4(uint64_t a1, unint64_t *a2, uint64_t a3)
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