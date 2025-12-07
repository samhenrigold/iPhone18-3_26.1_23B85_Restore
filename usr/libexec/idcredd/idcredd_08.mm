uint64_t sub_1000ED8BC()
{
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000EDA0C()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000EDA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ISO18013CodingKeyFormat();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ACWGPackagePayloadProcessor();
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  (*(v7 + 104))(v9, enum case for ISO18013CodingKeyFormat.ACWG(_:), v6);
  result = sub_1000EE06C(a1, a2, v9);
  *(v10 + 112) = result;
  *a3 = v10;
  return result;
}

uint64_t sub_1000EDB78(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000104D4;

  return sub_1000EC9F4(a1, a2);
}

uint64_t sub_1000EDC24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000EDCBC;

  return sub_1000ECCF0(a1);
}

uint64_t sub_1000EDCBC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1000EDDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1000EE1A0;

  return sub_1000ECFF4(a1, a2, a3, a4, a5);
}

uint64_t sub_1000EDE84(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000105C8;

  return sub_1000ED418(a1);
}

uint64_t sub_1000EDF20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000EE1A0;

  return sub_1000ED710();
}

uint64_t sub_1000EDFB0()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1000EDFD0, v2, 0);
}

uint64_t sub_1000EDFD0()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_1000EDFF4, v1, 0);
}

uint64_t sub_1000EDFF4()
{
  v1 = *(v0 + 24);
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  sub_100009708(v3, v2);
  v4 = *(v0 + 8);

  return v4(v3, v2);
}

uint64_t sub_1000EE06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[3] = &type metadata for PayloadProcessorAnalyticsRecorder;
  v15[4] = &off_1001F7C60;
  type metadata accessor for ISO18013PackagePayloadProcessor(0);
  v6 = swift_allocObject();
  sub_1000129AC(v15, &type metadata for PayloadProcessorAnalyticsRecorder);
  v13 = &type metadata for PayloadProcessorAnalyticsRecorder;
  v14 = &off_1001F7C60;
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_decodedPayload;
  v8 = type metadata accessor for ISO18013Package();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  *(v6 + 112) = a1;
  *(v6 + 120) = a2;
  sub_10001AA08(&v12, v6 + OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_analyticsRecorder);
  v9 = OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_codingKeyFormat;
  v10 = type metadata accessor for ISO18013CodingKeyFormat();
  (*(*(v10 - 8) + 32))(v6 + v9, a3, v10);
  sub_100005090(v15);
  return v6;
}

uint64_t sub_1000EE1A8(uint64_t a1)
{
  result = type metadata accessor for Optional();
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

uint64_t sub_1000EE260@<X0>(uint64_t a1@<X8>)
{
  v18 = *v1;
  v3 = v18;
  v4 = *(v18 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = *(v3 + 128);
  swift_beginAccess();
  (*(v6 + 16))(v11, &v1[v12], v5);
  v13 = *(v4 - 8);
  if ((*(v13 + 48))(v11, 1, v4) != 1)
  {
    return (*(v13 + 32))(a1, v11, v4);
  }

  (*(v6 + 8))(v11, v5);
  v14 = v19;
  result = sub_1000EF1F8();
  if (!v14)
  {
    v16 = *(*(v18 + 88) + 16);
    v19 = 0;
    v16(result);
    (*(v13 + 16))(v9, a1, v4);
    (*(v13 + 56))(v9, 0, 1, v4);
    swift_beginAccess();
    (*(v6 + 40))(&v1[v12], v9, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000EE518(uint64_t a1, char a2)
{
  *(v3 + 80) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *v2;
  *(v3 + 32) = *v2;
  v5 = *(v4 + 80);
  *(v3 + 40) = v5;
  *(v3 + 48) = *(v5 - 8);
  *(v3 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1000EE614, v2, 0);
}

uint64_t sub_1000EE614()
{
  sub_1000EE260(*(v0 + 56));
  v1 = *(*(*(v0 + 32) + 88) + 8);
  v7 = (*(v1 + 8) + **(v1 + 8));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1000EE794;
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 80);

  return v7(v4, v5, v3, v1);
}

uint64_t sub_1000EE794()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  v5[9] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[3];

    return _swift_task_switch(sub_1000F0F08, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_1000EE93C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *v1;
  v4 = *(v3 + 80);
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000EEA34, v1, 0);
}

uint64_t sub_1000EEA34()
{
  sub_1000EE260(v0[7]);
  v1 = *(*(v0[4] + 88) + 8);
  v6 = (*(v1 + 16) + **(v1 + 16));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1000EEBB0;
  v3 = v0[5];
  v4 = v0[2];

  return v6(v4, v3, v1);
}

uint64_t sub_1000EEBB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[9] = v1;

  v6 = v4[6];
  if (v1)
  {
    v7 = v4[3];
    (*(v6 + 8))(v4[7], v4[5]);

    return _swift_task_switch(sub_1000EED78, v7, 0);
  }

  else
  {
    (*(v6 + 8))();

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_1000EED78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EEDDC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *v1;
  v4 = *(v3 + 80);
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000EEED4, v1, 0);
}

uint64_t sub_1000EEED4()
{
  sub_1000EE260(v0[7]);
  v1 = *(*(v0[4] + 88) + 8);
  v6 = (*(v1 + 32) + **(v1 + 32));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1000EF050;
  v3 = v0[5];
  v4 = v0[2];

  return v6(v4, v3, v1);
}

uint64_t sub_1000EF050()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  v5[9] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[3];

    return _swift_task_switch(sub_1000EED78, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_1000EF1F8()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000EF3E8(*(v0 + 112), *(v0 + 120), *(v0 + 128));
  if (v1)
  {
    v7 = result;
    (*(v3 + 104))(v5, enum case for DIPError.Code.internalError(_:), v2);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000F0BFC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return v7;
  }

  return result;
}

uint64_t sub_1000EF3E8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v16 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AES.GCM.SealedBox();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009708(a1, a2);
  sub_1000F0858(a1, a2);
  if (v3)
  {
    (*(v8 + 104))(v16, enum case for DIPError.Code.failedToDecryptPayload(_:), v7);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000F0BFC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v4 = static AES.GCM.open(_:using:)();
    (*(v11 + 8))(v13, v10);
  }

  return v4;
}

uint64_t sub_1000EF6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[8] = *v5;
  v8 = *(v7 + 80);
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000EF7D0, v5, 0);
}

uint64_t sub_1000EF7D0()
{
  sub_1000EE260(v0[11]);
  v1 = *(*(v0[8] + 88) + 8);
  v10 = (*(v1 + 24) + **(v1 + 24));
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1000EF954;
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return v10(v8, v6, v7, v4, v5, v3, v1);
}

uint64_t sub_1000EF954(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[13] = v1;

  v6 = v4[10];
  if (v1)
  {
    v7 = v4[7];
    (*(v6 + 8))(v4[11], v4[9]);

    return _swift_task_switch(sub_1000EFB1C, v7, 0);
  }

  else
  {
    (*(v6 + 8))();

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_1000EFB1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EFB80()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v3 = *(v2 + 80);
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000EFC78, v0, 0);
}

uint64_t sub_1000EFC78()
{
  sub_1000EE260(v0[6]);
  v1 = *(*(v0[3] + 88) + 8);
  v5 = (*(v1 + 40) + **(v1 + 40));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1000EFDF0;
  v3 = v0[4];

  return v5(v3, v1);
}

uint64_t sub_1000EFDF0(uint64_t a1)
{
  v4 = *v2;
  v4[8] = v1;

  if (v1)
  {
    v5 = v4[2];
    (*(v4[5] + 8))(v4[6], v4[4]);

    return _swift_task_switch(sub_1000EFF7C, v5, 0);
  }

  else
  {
    (*(v4[5] + 8))(v4[6], v4[4]);

    v6 = v4[1];

    return v6(a1);
  }
}

uint64_t sub_1000EFF7C()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_1000EFFE0()
{
  sub_1000092BC(*(v0 + 112), *(v0 + 120));

  v1 = *(*v0 + 128);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000F008C()
{
  sub_1000EFFE0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000F00EC(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000104D4;

  return sub_1000EE518(a1, a2);
}

uint64_t sub_1000F0198(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000EDCBC;

  return sub_1000EE93C(a1);
}

uint64_t sub_1000F0230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1000EE1A0;

  return sub_1000EF6D0(a1, a2, a3, a4, a5);
}

uint64_t sub_1000F02F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000105C8;

  return sub_1000EEDDC(a1);
}

uint64_t sub_1000F0394()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000EE1A0;

  return sub_1000EFB80();
}

uint64_t sub_1000F0424()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1000F0444, v2, 0);
}

uint64_t sub_1000F0444()
{
  v1 = sub_1000EF1F8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000F04F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DIPError.Code();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004E70(&qword_100203028, &unk_1001AD880);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for AES.GCM.SealedBox();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = a2;
  v15 = type metadata accessor for AES.GCM.Nonce();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  sub_1000F0E1C();
  v16 = v26;
  static AES.GCM.seal<A>(_:using:nonce:)();
  sub_1000F0E70(v10);
  if (!v16)
  {
    v17 = v23;
    v18 = v5;
    v5 = AES.GCM.SealedBox.combined.getter();
    v20 = v19;
    (*(v12 + 8))(v14, v11);
    if (v20 >> 60 == 15)
    {
      (*(v17 + 104))(v7, enum case for DIPError.Code.failedToEncryptPayload(_:), v18);
      v5 = sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1000F0BFC(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  return v5;
}

uint64_t sub_1000F0858(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_1000092BC(a1, a2);
      v7 = type metadata accessor for CryptoKitError();
      sub_1000F0BFC(&qword_100203020, &type metadata accessor for CryptoKitError, &protocol conformance descriptor for CryptoKitError);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, enum case for CryptoKitError.incorrectParameterSize(_:), v7);
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29[3] = &type metadata for Data;
  v29[4] = &protocol witness table for Data;
  v29[0] = a1;
  v29[1] = a2;
  v10 = sub_100009278(v29, &type metadata for Data);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v27, 0, 14);
      v15 = v27;
      v14 = v27;
      goto LABEL_33;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = __DataStorage._offset.getter();
      v11 = v16 - v19;
      if (__OFSUB__(v16, v19))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 += v11;
    }

    v5 = __OFSUB__(v17, v16);
    v20 = v17 - v16;
    if (!v5)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v13)
  {
LABEL_21:
    v21 = v11;
    v22 = v11 >> 32;
    v20 = v22 - v21;
    if (v22 >= v21)
    {
      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
LABEL_25:
        v24 = __DataStorage._length.getter();
        if (v24 >= v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = v24;
        }

        v26 = (v25 + v18);
        if (v18)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v15 = v18;
        goto LABEL_33;
      }

      v23 = __DataStorage._offset.getter();
      if (!__OFSUB__(v21, v23))
      {
        v18 += v21 - v23;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v27[0] = *v10;
  LOWORD(v27[1]) = v12;
  BYTE2(v27[1]) = BYTE2(v12);
  BYTE3(v27[1]) = BYTE3(v12);
  BYTE4(v27[1]) = BYTE4(v12);
  BYTE5(v27[1]) = BYTE5(v12);
  v14 = v27 + BYTE6(v12);
  v15 = v27;
LABEL_33:
  sub_1000F0B68(v15, v14, &v28);
  sub_100005090(v29);
  return AES.GCM.SealedBox.init(combined:)();
}

_BYTE *sub_1000F0B68@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1000F0C64(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1000F0D1C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000F0D98(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1000F0BFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000F0C44(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F0C64(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000F0D1C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000F0D98(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1000F0E1C()
{
  result = qword_100203030;
  if (!qword_100203030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100203030);
  }

  return result;
}

uint64_t sub_1000F0E70(uint64_t a1)
{
  v2 = sub_100004E70(&qword_100203028, &unk_1001AD880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1000F0F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a3;
  swift_defaultActor_initialize();
  type metadata accessor for SESKeystore();
  swift_allocObject();
  v7 = SESKeystore.init()();
  type metadata accessor for SEPairingManager();
  swift_allocObject();
  v8 = SEPairingManager.init()();
  v9 = type metadata accessor for GenericPasswordKeychainWrapper();
  v26 = v9;
  v27 = &off_1001F4DE8;
  v25[0] = swift_allocObject();
  v10 = type metadata accessor for SyncableKeyStoreProvider();
  v11 = swift_allocObject();
  v12 = sub_1000129AC(v25, v9);
  __chkstk_darwin(v12);
  v14 = (&v25[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v11[5] = v9;
  v11[6] = &off_1001F4DE8;
  v11[2] = v16;

  sub_100005090(v25);
  v26 = v10;
  v27 = &off_1001F5068;
  v25[0] = v11;
  type metadata accessor for CredentialKeyManager();
  v17 = swift_allocObject();
  v18 = sub_1000129AC(v25, v10);
  __chkstk_darwin(v18);
  v20 = (&v25[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = sub_1000F20BC(v7, v8, *v20, v17);

  sub_100005090(v25);
  v4[17] = v22;
  v4[18] = 0;
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = v24;
  return v4;
}

uint64_t sub_1000F1194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = a1;
  v8 = type metadata accessor for DIPError.Code();
  v7[29] = v8;
  v7[30] = *(v8 - 8);
  v7[31] = swift_task_alloc();
  v9 = type metadata accessor for ISO18013CodingKeyFormat();
  v7[32] = v9;
  v7[33] = *(v9 - 8);
  v7[34] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v7[35] = v10;
  v7[36] = *(v10 - 8);
  v7[37] = swift_task_alloc();

  return _swift_task_switch(sub_1000F1318, 0, 0);
}

uint64_t sub_1000F1318(uint64_t a1)
{
  v65 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 288);
  v6 = *(v1 + 296);
  v7 = *(v1 + 280);
  if (v4)
  {
    v61 = *(v1 + 296);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v63 = v9;
    *v8 = 136446210;
    v10 = DCCredentialPayloadFormatToString();
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_10010150C(v11, v13, &v63);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "makePayloadProcessor for payload format %{public}s", v8, 0xCu);
    sub_100005090(v9);

    (*(v5 + 8))(v61, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v15 = *(v1 + 200);
  if (v15 <= 1)
  {
    if (!v15)
    {
      v45 = *(v1 + 264);
      v44 = *(v1 + 272);
      v46 = *(v1 + 256);
      v48 = *(v1 + 184);
      v47 = *(v1 + 192);
      (*(v45 + 104))(v44, enum case for ISO18013CodingKeyFormat.standard(_:), v46);
      *(v1 + 120) = &type metadata for PayloadProcessorAnalyticsRecorder;
      *(v1 + 128) = &off_1001F7C60;
      v21 = type metadata accessor for ISO18013PackagePayloadProcessor(0);
      v22 = swift_allocObject();
      sub_1000129AC(v1 + 96, &type metadata for PayloadProcessorAnalyticsRecorder);
      *(v1 + 160) = &type metadata for PayloadProcessorAnalyticsRecorder;
      *(v1 + 168) = &off_1001F7C60;
      sub_100009708(v48, v47);
      swift_defaultActor_initialize();
      v49 = OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_decodedPayload;
      v50 = type metadata accessor for ISO18013Package();
      (*(*(v50 - 8) + 56))(v22 + v49, 1, 1, v50);
      *(v22 + 112) = v48;
      *(v22 + 120) = v47;
      sub_10001AA08((v1 + 136), v22 + OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_analyticsRecorder);
      (*(v45 + 32))(v22 + OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_codingKeyFormat, v44, v46);
      sub_100005090((v1 + 96));
      v26 = &off_1001F7B50;
      goto LABEL_21;
    }

    if (v15 != 1)
    {
LABEL_22:
      v54 = *(v1 + 240);
      v53 = *(v1 + 248);
      v55 = *(v1 + 232);
      v63 = 0;
      v64 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      v63 = 0xD00000000000001BLL;
      v64 = 0x80000001001BA3E0;
      v56 = DCCredentialPayloadFormatToString();
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60._countAndFlagsBits = v57;
      v60._object = v59;
      String.append(_:)(v60);

      (*(v54 + 104))(v53, enum case for DIPError.Code.idcsUnsupportedPayloadFormat(_:), v55);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v52 = *(v1 + 8);
      goto LABEL_23;
    }

    v27 = swift_task_alloc();
    *(v1 + 304) = v27;
    *v27 = v1;
    v27[1] = sub_1000F1A68;
    v28 = *(v1 + 208);
    v30 = *(v1 + 184);
    v29 = *(v1 + 192);

    return sub_1000F2178(v30, v29, v28);
  }

  else
  {
    switch(v15)
    {
      case 2:
        v32 = swift_task_alloc();
        *(v1 + 320) = v32;
        *v32 = v1;
        v32[1] = sub_1000F1C78;
        v33 = *(v1 + 216);
        v34 = *(v1 + 224);
        v35 = *(v1 + 208);
        v37 = *(v1 + 184);
        v36 = *(v1 + 192);

        return sub_1000F3208(v37, v36, v35, v33, v34);
      case 3:
        v38 = swift_task_alloc();
        *(v1 + 336) = v38;
        *v38 = v1;
        v38[1] = sub_1000F1E88;
        v39 = *(v1 + 216);
        v40 = *(v1 + 224);
        v41 = *(v1 + 208);
        v43 = *(v1 + 184);
        v42 = *(v1 + 192);

        return sub_1000F4898(v43, v42, v41, v39, v40);
      case 4:
        v17 = *(v1 + 264);
        v16 = *(v1 + 272);
        v62 = v16;
        v18 = *(v1 + 256);
        v20 = *(v1 + 184);
        v19 = *(v1 + 192);
        v21 = type metadata accessor for ACWGPackagePayloadProcessor();
        v22 = swift_allocObject();
        swift_defaultActor_initialize();
        (*(v17 + 104))(v16, enum case for ISO18013CodingKeyFormat.ACWG(_:), v18);
        *(v1 + 40) = &type metadata for PayloadProcessorAnalyticsRecorder;
        *(v1 + 48) = &off_1001F7C60;
        type metadata accessor for ISO18013PackagePayloadProcessor(0);
        v23 = swift_allocObject();
        sub_1000129AC(v1 + 16, &type metadata for PayloadProcessorAnalyticsRecorder);
        *(v1 + 80) = &type metadata for PayloadProcessorAnalyticsRecorder;
        *(v1 + 88) = &off_1001F7C60;
        sub_100009708(v20, v19);
        swift_defaultActor_initialize();
        v24 = OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_decodedPayload;
        v25 = type metadata accessor for ISO18013Package();
        (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
        *(v23 + 112) = v20;
        *(v23 + 120) = v19;
        sub_10001AA08((v1 + 56), v23 + OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_analyticsRecorder);
        (*(v17 + 32))(v23 + OBJC_IVAR____TtC7idcredd31ISO18013PackagePayloadProcessor_codingKeyFormat, v62, v18);
        sub_100005090((v1 + 16));
        *(v22 + 112) = v23;
        v26 = &off_1001F77A8;
LABEL_21:
        v51 = *(v1 + 176);
        v51[3] = v21;
        v51[4] = v26;
        *v51 = v22;

        v52 = *(v1 + 8);
LABEL_23:

        return v52();
      default:
        goto LABEL_22;
    }
  }
}

uint64_t sub_1000F1A68(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 312) = a1;

    return _swift_task_switch(sub_1000F1BCC, 0, 0);
  }
}

uint64_t sub_1000F1BCC()
{
  v1 = sub_100004E70(&qword_1002030E0, &qword_1001AD908);
  v2 = v0[39];
  v3 = v0[22];
  v3[3] = v1;
  v3[4] = &off_1001F79C8;
  *v3 = v2;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000F1C78(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 328) = a1;

    return _swift_task_switch(sub_1000F1DDC, 0, 0);
  }
}

uint64_t sub_1000F1DDC()
{
  v1 = sub_100004E70(&qword_1002030D8, &qword_1001AD8F8);
  v2 = v0[41];
  v3 = v0[22];
  v3[3] = v1;
  v3[4] = &off_1001F7AB8;
  *v3 = v2;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000F1E88(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 344) = a1;

    return _swift_task_switch(sub_1000F1FEC, 0, 0);
  }
}

uint64_t sub_1000F1FEC()
{
  v1 = sub_100004E70(&qword_1002030D0, &qword_1001AD8E8);
  v2 = v0[43];
  v3 = v0[22];
  v3[3] = v1;
  v3[4] = &off_1001F78B0;
  *v3 = v2;

  v4 = v0[1];

  return v4();
}

void *sub_1000F20BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = type metadata accessor for SEPairingManager();
  v14 = &protocol witness table for SEPairingManager;
  *&v12 = a2;
  v10 = type metadata accessor for SyncableKeyStoreProvider();
  v11 = &off_1001F5068;
  *&v9 = a3;
  a4[3] = sub_100046C68();
  type metadata accessor for DeviceIdentityKeystore();
  swift_allocObject();
  a4[4] = DeviceIdentityKeystore.init()();
  a4[5] = sub_1000342A8();
  a4[2] = a1;
  sub_10001AA08(&v12, (a4 + 11));
  sub_10001AA08(&v9, (a4 + 6));
  return a4;
}

uint64_t sub_1000F2178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  v5 = type metadata accessor for DeviceIdentityKey();
  v3[34] = v5;
  v3[35] = *(v5 - 8);
  v3[36] = swift_task_alloc();
  v6 = type metadata accessor for CredentialKeyType();
  v3[37] = v6;
  v3[38] = *(v6 - 8);
  v3[39] = swift_task_alloc();
  sub_100004E70(&qword_100202498, &unk_1001AD910);
  v3[40] = swift_task_alloc();
  v7 = type metadata accessor for KeyLookupInfo(0);
  v3[41] = v7;
  v3[42] = *(v7 - 8);
  v3[43] = swift_task_alloc();

  return _swift_task_switch(sub_1000F2388, 0, 0);
}

uint64_t sub_1000F2388()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  sub_100046360(v0[30], v3, &qword_100202498, &unk_1001AD910);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[32];
    v5 = v0[33];
    v6 = v0[31];
    sub_10000A0D4(v0[40], &qword_100202498, &unk_1001AD910);
    v42 = *(v4 + 104);
    v42(v5, enum case for DIPError.Code.idcsMissingDeviceEncryptionKey(_:), v6);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_8:
    v42(v0[33], enum case for DIPError.Code.internalError(_:), v0[31]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v38 = v0[1];

    return v38();
  }

  v7 = v0[43];
  v8 = v0[41];
  v10 = v0[38];
  v9 = v0[39];
  v11 = v0[37];
  sub_1000F52AC(v0[40], v7);
  (*(v10 + 16))(v9, v7 + *(v8 + 24), v11);
  if ((*(v10 + 88))(v9, v11) != enum case for CredentialKeyType.sep(_:))
  {
    v33 = v0[38];
    v41 = v0[39];
    v39 = v0[43];
    v40 = v0[37];
    v34 = v0[32];
    v35 = v0[33];
    v36 = v0[31];
    _StringGuts.grow(_:)(36);

    v37._countAndFlagsBits = CredentialKeyType.rawValue.getter();
    String.append(_:)(v37);

    v42 = *(v34 + 104);
    v42(v35, enum case for DIPError.Code.idcsInvalidDeviceEncryptionKey(_:), v36);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000F5310(v39);
    (*(v33 + 8))(v41, v40);
    goto LABEL_8;
  }

  v12 = v0[43];
  type metadata accessor for SESKeystore();
  swift_allocObject();
  v43 = SESKeystore.init()();
  type metadata accessor for SEPairingManager();
  swift_allocObject();
  v13 = SEPairingManager.init()();
  v14 = type metadata accessor for GenericPasswordKeychainWrapper();
  v15 = swift_allocObject();
  v0[21] = v14;
  v0[22] = &off_1001F4DE8;
  v0[18] = v15;
  v16 = type metadata accessor for SyncableKeyStoreProvider();
  v17 = swift_allocObject();
  v18 = sub_1000129AC((v0 + 18), v14);
  v19 = *(v14 - 8);
  v20 = swift_task_alloc();
  (*(v19 + 16))(v20, v18, v14);
  v21 = *v20;
  v17[5] = v14;
  v17[6] = &off_1001F4DE8;
  v17[2] = v21;

  sub_100005090(v0 + 18);

  v0[26] = v16;
  v0[27] = &off_1001F5068;
  v0[23] = v17;
  type metadata accessor for CredentialKeyManager();
  inited = swift_initStackObject();
  v0[44] = inited;
  v23 = v0[26];
  v24 = sub_1000129AC((v0 + 23), v23);
  v25 = *(v23 - 8);
  v26 = swift_task_alloc();
  (*(v25 + 16))(v26, v24, v23);
  v0[45] = sub_1000F20BC(v43, v13, *v26, inited);

  sub_100005090(v0 + 23);

  v27 = *v12;
  v28 = v12[1];
  v29 = v12[2];
  v30 = v12[3];
  v31 = swift_task_alloc();
  v0[46] = v31;
  *v31 = v0;
  v31[1] = sub_1000F2A9C;

  return sub_100029DFC(v27, v28, v29, v30);
}

uint64_t sub_1000F2A9C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = sub_1000F2F44;
  }

  else
  {
    v4 = sub_1000F2BD8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000F2BD8()
{
  v1 = v0[47];
  v2 = v0[43];
  if (v1)
  {
    v4 = v0[35];
    v3 = v0[36];
    v5 = v0[34];
    v7 = v0[28];
    v6 = v0[29];
    (*(v4 + 16))(v3, v1 + OBJC_IVAR____TtC7idcredd36DeviceIdentityKeyBackedCredentialKey_deviceIdentityKey, v5);
    v8 = DeviceIdentityKey.key.getter();
    (*(v4 + 8))(v3, v5);
    sub_100004E70(&qword_1002030E0, &qword_1001AD908);
    v9 = swift_allocObject();
    swift_defaultActor_initialize();

    v9[14] = v7;
    v9[15] = v6;
    v9[16] = v8;
    v9[17] = 0;
    sub_100009708(v7, v6);
    sub_1000F5310(v2);

    v10 = v0[1];

    return v10(v9);
  }

  else
  {
    v13 = *(v0[32] + 104);
    v13(v0[33], enum case for DIPError.Code.idcsMissingDeviceEncryptionKey(_:), v0[31]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000F5310(v2);
    v13(v0[33], enum case for DIPError.Code.internalError(_:), v0[31]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1000F2F44()
{
  v1 = v0[32];
  sub_1000F5310(v0[43]);
  (*(v1 + 104))(v0[33], enum case for DIPError.Code.internalError(_:), v0[31]);
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

char *sub_1000F30D8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  swift_defaultActor_initialize();
  *&v5[*(*v5 + 128)] = 0;
  *(v5 + 14) = a1;
  *(v5 + 15) = a2;
  v11 = qword_100203210;
  *&v5[qword_100203210] = a3;
  v12 = enum case for HPKEPrivateKey.sep(_:);
  v13 = type metadata accessor for HPKEPrivateKey();
  (*(*(v13 - 8) + 104))(&v5[v11], v12, v13);
  sub_100009708(a1, a2);
  v14 = a3;
  isa = 0;
  if (a5 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001C120(a4, a5);
  }

  v16 = [objc_allocWithZone(LAContext) initWithExternalizedContext:isa];

  *&v5[qword_100203218] = v16;
  return v5;
}

uint64_t sub_1000F3208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[31] = a4;
  v5[32] = a5;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v6 = type metadata accessor for SESKeyForHPKE();
  v5[33] = v6;
  v5[34] = *(v6 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v5[37] = v7;
  v5[38] = *(v7 - 8);
  v5[39] = swift_task_alloc();
  v8 = type metadata accessor for DeviceIdentityKey();
  v5[40] = v8;
  v5[41] = *(v8 - 8);
  v5[42] = swift_task_alloc();
  v9 = type metadata accessor for CredentialKeyType();
  v5[43] = v9;
  v5[44] = *(v9 - 8);
  v5[45] = swift_task_alloc();
  sub_100004E70(&qword_100202498, &unk_1001AD910);
  v5[46] = swift_task_alloc();
  v10 = type metadata accessor for KeyLookupInfo(0);
  v5[47] = v10;
  v5[48] = *(v10 - 8);
  v5[49] = swift_task_alloc();

  return _swift_task_switch(sub_1000F3484, 0, 0);
}

uint64_t sub_1000F3484()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];
  sub_100046360(v0[30], v3, &qword_100202498, &unk_1001AD910);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[38];
    v4 = v0[39];
    v6 = v0[37];
    sub_10000A0D4(v0[46], &qword_100202498, &unk_1001AD910);
    (*(v5 + 104))(v4, enum case for DIPError.Code.idcsMissingDeviceEncryptionKey(_:), v6);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_22:
    (*(v0[38] + 104))(v0[39], enum case for DIPError.Code.internalError(_:), v0[37]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v52 = v0[1];

    return v52();
  }

  v7 = v0[32];
  sub_1000F52AC(v0[46], v0[49]);
  if (v7 >> 60 == 15)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = objc_allocWithZone(LAContext);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v9 = [v10 initWithExternalizedContext:isa];

    if (v9)
    {
      v12 = [v9 externalizedContext];
      if (v12)
      {
        v13 = v12;
        v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        goto LABEL_10;
      }
    }

    v8 = 0;
  }

  v15 = 0xF000000000000000;
LABEL_10:
  v0[51] = v15;
  v0[52] = v9;
  v0[50] = v8;
  v17 = v0[44];
  v16 = v0[45];
  v18 = v0[43];
  (*(v17 + 16))(v16, v0[49] + *(v0[47] + 24), v18);
  v19 = (*(v17 + 88))(v16, v18);
  if (v19 == enum case for CredentialKeyType.ses(_:))
  {
    v20 = v0[49];
    v21 = (v20 + *(v0[47] + 28));
    v22 = v21[1];
    if (v22 >> 60 == 15)
    {
      (*(v0[38] + 104))(v0[39], enum case for DIPError.Code.idcsMissingDeviceEncryptionKey(_:), v0[37]);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v23 = v8;
      v24 = v15;
LABEL_19:
      sub_10001C120(v23, v24);
      sub_1000F5310(v20);
      goto LABEL_22;
    }

    v46 = *v21;
    if (v15 >> 60 == 15)
    {
      (*(v0[38] + 104))(v0[39], enum case for DIPError.Code.idcsMissingDeviceEncryptionKey(_:), v0[37]);
      sub_100009708(v46, v22);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v23 = v46;
      v24 = v22;
      goto LABEL_19;
    }

    type metadata accessor for SESKeystore();
    swift_allocObject();
    sub_100032EBC(v46, v22);
    sub_100032EBC(v8, v15);
    sub_100032EBC(v46, v22);
    sub_100032EBC(v8, v15);
    SESKeystore.init()();
    SESKeyForHPKE.init(keyBlob:sesKeystore:externalizedLAContext:)();
    v51 = v0[49];
    v72 = v0[35];
    v66 = v0[34];
    v69 = v0[36];
    v70 = v0[33];
    v53 = v0[28];
    v54 = *(v66 + 16);
    v62 = v0[29];
    v54();
    sub_100004E70(&qword_1002030D8, &qword_1001AD8F8);
    v68 = v51;
    v55 = swift_allocObject();
    sub_100009708(v53, v62);
    swift_defaultActor_initialize();
    *&v55[*(*v55 + 128)] = 0;
    *(v55 + 14) = v53;
    *(v55 + 15) = v62;
    v56 = qword_100203210;
    (v54)(&v55[qword_100203210], v72, v70);
    v57 = enum case for HPKEPrivateKey.ses(_:);
    v58 = type metadata accessor for HPKEPrivateKey();
    (*(*(v58 - 8) + 104))(&v55[v56], v57, v58);
    v64 = [objc_allocWithZone(LAContext) initWithExternalizedContext:0];
    v59 = *(v66 + 8);
    v59(v72, v70);
    *&v55[qword_100203218] = v64;
    sub_10001C120(v8, v15);
    sub_10001C120(v46, v22);
    sub_10001C120(v8, v15);

    v59(v69, v70);
    sub_1000F5310(v68);

    v60 = v0[1];

    return v60(v55);
  }

  else
  {
    if (v19 != enum case for CredentialKeyType.sep(_:))
    {
      v61 = v0[44];
      v63 = v0[49];
      v65 = v0[43];
      v67 = v0[45];
      v47 = v0[38];
      v48 = v0[39];
      v49 = v0[37];
      _StringGuts.grow(_:)(36);

      v50._countAndFlagsBits = CredentialKeyType.rawValue.getter();
      String.append(_:)(v50);

      (*(v47 + 104))(v48, enum case for DIPError.Code.idcsInvalidDeviceEncryptionKey(_:), v49);
      sub_10002688C(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100008E7C();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      sub_10001C120(v8, v15);
      sub_1000F5310(v63);
      (*(v61 + 8))(v67, v65);
      goto LABEL_22;
    }

    v25 = v0[49];
    type metadata accessor for SESKeystore();
    swift_allocObject();
    v71 = SESKeystore.init()();
    type metadata accessor for SEPairingManager();
    swift_allocObject();
    v26 = SEPairingManager.init()();
    v27 = type metadata accessor for GenericPasswordKeychainWrapper();
    v28 = swift_allocObject();
    v0[21] = v27;
    v0[22] = &off_1001F4DE8;
    v0[18] = v28;
    v29 = type metadata accessor for SyncableKeyStoreProvider();
    v30 = swift_allocObject();
    v31 = sub_1000129AC((v0 + 18), v27);
    v32 = *(v27 - 8);
    v33 = swift_task_alloc();
    (*(v32 + 16))(v33, v31, v27);
    v34 = *v33;
    v30[5] = v27;
    v30[6] = &off_1001F4DE8;
    v30[2] = v34;

    sub_100005090(v0 + 18);

    v0[26] = v29;
    v0[27] = &off_1001F5068;
    v0[23] = v30;
    type metadata accessor for CredentialKeyManager();
    inited = swift_initStackObject();
    v0[53] = inited;
    v36 = v0[26];
    v37 = sub_1000129AC((v0 + 23), v36);
    v38 = *(v36 - 8);
    v39 = swift_task_alloc();
    (*(v38 + 16))(v39, v37, v36);
    v0[54] = sub_1000F20BC(v71, v26, *v39, inited);

    sub_100005090(v0 + 23);

    v40 = *v25;
    v41 = v25[1];
    v42 = v25[2];
    v43 = v25[3];
    v44 = swift_task_alloc();
    v0[55] = v44;
    *v44 = v0;
    v44[1] = sub_1000F41B4;

    return sub_100029DFC(v40, v41, v42, v43);
  }
}

uint64_t sub_1000F41B4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v4 = sub_1000F46D4;
  }

  else
  {
    v4 = sub_1000F42F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000F42F0()
{
  v1 = v0[56];
  v2 = v0[51];
  v3 = v0[50];
  v14 = v0[52];
  v15 = v0[49];
  if (v1)
  {
    v4 = v0[41];
    v5 = v0[42];
    v6 = v0[40];
    v8 = v0[28];
    v7 = v0[29];
    (*(v4 + 16))(v5, v1 + OBJC_IVAR____TtC7idcredd36DeviceIdentityKeyBackedCredentialKey_deviceIdentityKey, v6);
    v9 = DeviceIdentityKey.key.getter();
    (*(v4 + 8))(v5, v6);
    sub_100004E70(&qword_1002030D8, &qword_1001AD8F8);
    swift_allocObject();
    sub_100009708(v8, v7);
    v10 = sub_1000F30D8(v8, v7, v9, v3, v2);

    sub_1000092BC(v8, v7);

    sub_1000F5310(v15);

    v11 = v0[1];

    return v11(v10);
  }

  else
  {
    (*(v0[38] + 104))(v0[39], enum case for DIPError.Code.idcsMissingDeviceEncryptionKey(_:), v0[37]);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10001C120(v3, v2);
    sub_1000F5310(v15);
    (*(v0[38] + 104))(v0[39], enum case for DIPError.Code.internalError(_:), v0[37]);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1000F46D4()
{
  v1 = *(v0 + 408);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);

  sub_10001C120(v2, v1);
  sub_1000F5310(v3);
  (*(*(v0 + 304) + 104))(*(v0 + 312), enum case for DIPError.Code.internalError(_:), *(v0 + 296));
  swift_errorRetain();
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000F4898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[31] = a4;
  v5[32] = a5;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[33] = v6;
  v5[34] = *(v6 - 8);
  v5[35] = swift_task_alloc();
  v7 = type metadata accessor for CredentialKeyType();
  v5[36] = v7;
  v5[37] = *(v7 - 8);
  v5[38] = swift_task_alloc();
  sub_100004E70(&qword_100202498, &unk_1001AD910);
  v5[39] = swift_task_alloc();
  v8 = type metadata accessor for KeyLookupInfo(0);
  v5[40] = v8;
  v5[41] = *(v8 - 8);
  v5[42] = swift_task_alloc();

  return _swift_task_switch(sub_1000F4A50, 0, 0);
}

uint64_t sub_1000F4A50()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];
  sub_100046360(v0[30], v3, &qword_100202498, &unk_1001AD910);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[34];
    v4 = v0[35];
    v6 = v0[33];
    sub_10000A0D4(v0[39], &qword_100202498, &unk_1001AD910);
    v7 = *(v5 + 104);
    v7(v4, enum case for DIPError.Code.idcsMissingPayloadProtectionKey(_:), v6);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v7(v0[35], enum case for DIPError.Code.internalError(_:), v0[33]);
LABEL_9:
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v37 = v0[1];

    return v37();
  }

  v8 = v0[42];
  v9 = v0[40];
  v11 = v0[37];
  v10 = v0[38];
  v12 = v0[36];
  sub_1000F52AC(v0[39], v8);
  (*(v11 + 16))(v10, v8 + *(v9 + 24), v12);
  if ((*(v11 + 88))(v10, v12) != enum case for CredentialKeyType.keychain(_:))
  {
    v13 = v0[37];
    v14 = v0[35];
    v44 = v0[42];
    v45 = v0[36];
    v15 = v0[34];
    v46 = v0[38];
    v49 = v0[33];
    _StringGuts.grow(_:)(38);

    v16._countAndFlagsBits = CredentialKeyType.rawValue.getter();
    String.append(_:)(v16);

    v17 = *(v15 + 104);
    v17(v14, enum case for DIPError.Code.idcsMissingPayloadProtectionKey(_:), v49);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000F5310(v44);
    (*(v13 + 8))(v46, v45);
    v17(v0[35], enum case for DIPError.Code.internalError(_:), v0[33]);
    goto LABEL_9;
  }

  if (v0[32] >> 60 == 15)
  {
    v48 = 0;
  }

  else
  {
    v18 = objc_allocWithZone(LAContext);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v48 = [v18 initWithExternalizedContext:isa];
  }

  v20 = v0[42];
  type metadata accessor for SESKeystore();
  swift_allocObject();
  v47 = SESKeystore.init()();
  type metadata accessor for SEPairingManager();
  swift_allocObject();
  v21 = SEPairingManager.init()();
  v22 = type metadata accessor for GenericPasswordKeychainWrapper();
  v23 = swift_allocObject();
  v0[21] = v22;
  v0[22] = &off_1001F4DE8;
  v0[18] = v23;
  v24 = type metadata accessor for SyncableKeyStoreProvider();
  v25 = swift_allocObject();
  v26 = sub_1000129AC((v0 + 18), v22);
  v27 = *(v22 - 8);
  v28 = swift_task_alloc();
  (*(v27 + 16))(v28, v26, v22);
  v29 = *v28;
  v25[5] = v22;
  v25[6] = &off_1001F4DE8;
  v25[2] = v29;

  sub_100005090(v0 + 18);

  v0[26] = v24;
  v0[27] = &off_1001F5068;
  v0[23] = v25;
  type metadata accessor for CredentialKeyManager();
  inited = swift_initStackObject();
  v31 = v0[26];
  v32 = sub_1000129AC((v0 + 23), v31);
  v33 = *(v31 - 8);
  v34 = swift_task_alloc();
  (*(v33 + 16))(v34, v32, v31);
  sub_1000F20BC(v47, v21, *v34, inited);

  sub_100005090(v0 + 23);

  v35 = sub_10002ED04(*v20, *(v20 + 8), v48);
  v36 = v0[42];
  v39 = v35;
  v41 = v0[28];
  v40 = v0[29];

  sub_100004E70(&qword_1002030D0, &qword_1001AD8E8);
  swift_allocObject();
  sub_100009708(v41, v40);
  v42 = sub_1000F0F0C(v41, v40, v39);

  sub_1000F5310(v36);

  v43 = v0[1];

  return v43(v42);
}

uint64_t type metadata accessor for KeyLookupInfo(uint64_t a1)
{
  result = qword_100203140;
  if (!qword_100203140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F52AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyLookupInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F5310(uint64_t a1)
{
  v2 = type metadata accessor for KeyLookupInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F536C(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 5)
  {
    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315138;
      v11 = DCCredentialPayloadFormatToString();
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_10010150C(v12, v14, &v18);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unknown payload format %s", v9, 0xCu);
      sub_100005090(v10);
    }

    (*(v3 + 8))(v5, v2);
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = 0xEu >> a1;
  }

  return v6 & 1;
}

uint64_t sub_1000F554C(unint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 5)
  {
    return qword_1001AD930[a1];
  }

  v12 = 0;
  v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v12 = 0xD00000000000001BLL;
  v13 = 0x80000001001BA3E0;
  v7 = DCCredentialPayloadFormatToString();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  (*(v3 + 104))(v5, enum case for DIPError.Code.idcsUnsupportedPayloadFormat(_:), v2);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100008E7C();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

id sub_1000F575C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004E70(&qword_100200510, qword_1001AB070);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for CredentialKeyType();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_100046360(a2, v6, &qword_100200510, qword_1001AB070);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000A0D4(v6, &qword_100200510, qword_1001AB070);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    if (a1 == 2)
    {
      (*(v8 + 16))(v11, v13, v7);
      if ((*(v8 + 88))(v11, v7) == enum case for CredentialKeyType.ses(_:))
      {
        v14 = [objc_allocWithZone(LAContext) init];
        (*(v8 + 8))(v13, v7);
        return v14;
      }

      v16 = *(v8 + 8);
      v16(v13, v7);
      v16(v11, v7);
    }

    else
    {
      (*(v8 + 8))(v13, v7);
    }
  }

  return 0;
}

uint64_t sub_1000F59FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CredentialKeyType();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000F5ABC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CredentialKeyType();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000F5B60(uint64_t a1)
{
  type metadata accessor for CredentialKeyType();
  if (v1 <= 0x3F)
  {
    sub_100060F00();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000F5BFC(uint64_t a1)
{
  result = type metadata accessor for Optional();
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

uint64_t sub_1000F5CB4@<X0>(uint64_t a1@<X8>)
{
  v18 = *v1;
  v3 = v18;
  v4 = *(v18 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = *(v3 + 120);
  swift_beginAccess();
  (*(v6 + 16))(v11, &v1[v12], v5);
  v13 = *(v4 - 8);
  if ((*(v13 + 48))(v11, 1, v4) != 1)
  {
    return (*(v13 + 32))(a1, v11, v4);
  }

  (*(v6 + 8))(v11, v5);
  v14 = v19;
  result = sub_1000F6954();
  if (!v14)
  {
    v16 = *(*(v18 + 88) + 16);
    v19 = 0;
    v16(result);
    (*(v13 + 16))(v9, a1, v4);
    (*(v13 + 56))(v9, 0, 1, v4);
    swift_beginAccess();
    (*(v6 + 40))(&v1[v12], v9, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000F5F6C(uint64_t a1, char a2)
{
  *(v3 + 80) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *v2;
  *(v3 + 32) = *v2;
  v5 = *(v4 + 80);
  *(v3 + 40) = v5;
  *(v3 + 48) = *(v5 - 8);
  *(v3 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1000F6068, v2, 0);
}

uint64_t sub_1000F6068()
{
  sub_1000F5CB4(*(v0 + 56));
  v1 = *(*(*(v0 + 32) + 88) + 8);
  v7 = (*(v1 + 8) + **(v1 + 8));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1000EE794;
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 80);

  return v7(v4, v5, v3, v1);
}

uint64_t sub_1000F61E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *v1;
  v4 = *(v3 + 80);
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000F62E0, v1, 0);
}

uint64_t sub_1000F62E0()
{
  sub_1000F5CB4(v0[7]);
  v1 = *(*(v0[4] + 88) + 8);
  v6 = (*(v1 + 16) + **(v1 + 16));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1000EEBB0;
  v3 = v0[5];
  v4 = v0[2];

  return v6(v4, v3, v1);
}

uint64_t sub_1000F645C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *v1;
  v4 = *(v3 + 80);
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000F6554, v1, 0);
}

uint64_t sub_1000F6554()
{
  sub_1000F5CB4(v0[7]);
  v1 = *(*(v0[4] + 88) + 8);
  v6 = (*(v1 + 32) + **(v1 + 32));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1000EF050;
  v3 = v0[5];
  v4 = v0[2];

  return v6(v4, v3, v1);
}

uint64_t sub_1000F66D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[8] = *v5;
  v8 = *(v7 + 80);
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000F67D0, v5, 0);
}

uint64_t sub_1000F67D0()
{
  sub_1000F5CB4(v0[11]);
  v1 = *(*(v0[8] + 88) + 8);
  v10 = (*(v1 + 24) + **(v1 + 24));
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1000EF954;
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return v10(v8, v6, v7, v4, v5, v3, v1);
}

uint64_t sub_1000F6954()
{
  v2 = type metadata accessor for DIPError.Code();
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin(v2);
  v25 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EncryptionParamsAlgorithmIdentifier();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004E70(&qword_100203200, &unk_1001ADA70);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000F7528();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {

    (*(v22 + 104))(v25, enum case for DIPError.Code.idcsPayloadDecryptionFailureECV3(_:), v23);
    swift_errorRetain();
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100008E7C();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v19 = v7;

    v10 = v20;
    v11 = v21;
    (*(v20 + 104))(v21, enum case for EncryptionParamsAlgorithmIdentifier.EC_v3_SH(_:), v4);
    v12 = *(v0 + 128);
    v13 = type metadata accessor for DIPECIESSessionECV3SH();
    swift_allocObject();
    v14 = v12;
    v15 = DIPECIESSessionECV3SH.init(_:)();
    v16 = v10;
    v24[3] = v13;
    v24[4] = &protocol witness table for DIPECIESSessionECV3;
    v24[0] = v15;
    EncryptedDataContainer.getUnencryptedData(alg:decryptor:senderSigningKey:recipientSigningKey:)();
    v17 = v19;
    (*(v16 + 8))(v11, v4);
    (*(v17 + 8))(v9, v6);
    sub_100005090(v24);
    return v24[5];
  }
}

uint64_t sub_1000F6DCC()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v3 = *(v2 + 80);
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000F6EC4, v0, 0);
}

uint64_t sub_1000F6EC4()
{
  sub_1000F5CB4(v0[6]);
  v1 = *(*(v0[3] + 88) + 8);
  v5 = (*(v1 + 40) + **(v1 + 40));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1000EFDF0;
  v3 = v0[4];

  return v5(v3, v1);
}

uint64_t *sub_1000F703C()
{
  sub_1000092BC(*(v0 + 112), *(v0 + 120));

  v1 = *(*v0 + 120);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000F70E0()
{
  sub_1000F703C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000F7124(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000104D4;

  return sub_1000F5F6C(a1, a2);
}

uint64_t sub_1000F71D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000EDCBC;

  return sub_1000F61E8(a1);
}

uint64_t sub_1000F7268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1000EE1A0;

  return sub_1000F66D0(a1, a2, a3, a4, a5);
}

uint64_t sub_1000F7330(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000105C8;

  return sub_1000F645C(a1);
}

uint64_t sub_1000F73CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000EE1A0;

  return sub_1000F6DCC();
}

uint64_t sub_1000F745C()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1000F747C, v2, 0);
}

uint64_t sub_1000F747C()
{
  v1 = sub_1000F6954();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000F7528()
{
  result = qword_100203208;
  if (!qword_100203208)
  {
    sub_100021ED0(&qword_100203200, &unk_1001ADA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100203208);
  }

  return result;
}

uint64_t sub_1000F758C(uint64_t a1)
{
  result = type metadata accessor for HPKEPrivateKey();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000F7678@<X0>(uint64_t a1@<X8>)
{
  v18 = *v1;
  v3 = v18;
  v4 = *(v18 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = *(v3 + 128);
  swift_beginAccess();
  (*(v6 + 16))(v11, &v1[v12], v5);
  v13 = *(v4 - 8);
  if ((*(v13 + 48))(v11, 1, v4) != 1)
  {
    return (*(v13 + 32))(a1, v11, v4);
  }

  (*(v6 + 8))(v11, v5);
  v14 = v19;
  result = sub_1000F8588();
  if (!v14)
  {
    v16 = *(*(v18 + 88) + 16);
    v19 = 0;
    v16(result);
    (*(v13 + 16))(v9, a1, v4);
    (*(v13 + 56))(v9, 0, 1, v4);
    swift_beginAccess();
    (*(v6 + 40))(&v1[v12], v9, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000F7930(uint64_t a1, char a2)
{
  *(v3 + 80) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *v2;
  *(v3 + 32) = *v2;
  v5 = *(v4 + 80);
  *(v3 + 40) = v5;
  *(v3 + 48) = *(v5 - 8);
  *(v3 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1000F7A2C, v2, 0);
}

uint64_t sub_1000F7A2C()
{
  sub_1000F7678(*(v0 + 56));
  v1 = *(*(*(v0 + 32) + 88) + 8);
  v7 = (*(v1 + 8) + **(v1 + 8));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1000EE794;
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 80);

  return v7(v4, v5, v3, v1);
}

uint64_t sub_1000F7BAC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *v1;
  v4 = *(v3 + 80);
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000F7CA4, v1, 0);
}

uint64_t sub_1000F7CA4()
{
  sub_1000F7678(v0[7]);
  v1 = *(*(v0[4] + 88) + 8);
  v6 = (*(v1 + 16) + **(v1 + 16));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1000EEBB0;
  v3 = v0[5];
  v4 = v0[2];

  return v6(v4, v3, v1);
}

uint64_t sub_1000F7E20(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *v1;
  v4 = *(v3 + 80);
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000F7F18, v1, 0);
}

uint64_t sub_1000F7F18()
{
  sub_1000F7678(v0[7]);
  v1 = *(*(v0[4] + 88) + 8);
  v6 = (*(v1 + 32) + **(v1 + 32));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1000EF050;
  v3 = v0[5];
  v4 = v0[2];

  return v6(v4, v3, v1);
}

uint64_t sub_1000F8094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[8] = *v5;
  v8 = *(v7 + 80);
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000F8194, v5, 0);
}

uint64_t sub_1000F8194()
{
  sub_1000F7678(v0[11]);
  v1 = *(*(v0[8] + 88) + 8);
  v10 = (*(v1 + 24) + **(v1 + 24));
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1000EF954;
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return v10(v8, v6, v7, v4, v5, v3, v1);
}

uint64_t sub_1000F8318()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v3 = *(v2 + 80);
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000F8410, v0, 0);
}

uint64_t sub_1000F8410()
{
  sub_1000F7678(v0[6]);
  v1 = *(*(v0[3] + 88) + 8);
  v5 = (*(v1 + 40) + **(v1 + 40));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1000EFDF0;
  v3 = v0[4];

  return v5(v3, v1);
}

uint64_t sub_1000F8588()
{
  v28 = type metadata accessor for DIPError.Code();
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v29 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for HPKEEncryptionParamsAlgorithmIdentifier();
  v32 = *(v35 - 8);
  v2 = __chkstk_darwin(v35);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v25 - v5;
  v7 = type metadata accessor for HPKEEncryptedMessageAlgorithm();
  v31 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v10 = JSONDecoder.init()();
  sub_1000FA7F0(&qword_100203300, &type metadata accessor for HPKEEncryptedMessageAlgorithm, &protocol conformance descriptor for HPKEEncryptedMessageAlgorithm);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v0)
  {
    v27 = v4;
    v11 = v29;
    v12 = v30;
    HPKEEncryptedMessageAlgorithm.algorithm.getter();
    v13 = (*(v32 + 88))(v6, v35);
    if (v13 == enum case for HPKEEncryptionParamsAlgorithmIdentifier.HPKE_v1(_:))
    {
      v14 = sub_1000F9D80();
    }

    else
    {
      if (v13 != enum case for HPKEEncryptionParamsAlgorithmIdentifier.HPKE_KW_v1(_:))
      {
        v25[1] = " decode the decrypted payload";
        v25[2] = "authenticationContext";
        v26 = v7;
        v15 = v12;
        v16 = v28;
        (*(v12 + 104))(v11, enum case for DIPError.Code.internalError(_:), v28);
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        v17 = v6;
        sub_1000FA7F0(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        v18 = v32;
        v19 = v17;
        v20 = v35;
        (*(v32 + 8))(v19, v35);
        v33 = 0;
        v34 = 0xE000000000000000;
        _StringGuts.grow(_:)(51);
        v21._countAndFlagsBits = 0xD00000000000002ALL;
        v21._object = 0x80000001001BA880;
        String.append(_:)(v21);
        v22 = v27;
        HPKEEncryptedMessageAlgorithm.algorithm.getter();
        _print_unlocked<A, B>(_:_:)();
        (*(v18 + 8))(v22, v20);
        v23._countAndFlagsBits = 0x74616D726F6620;
        v23._object = 0xE700000000000000;
        String.append(_:)(v23);
        v35 = v33;
        (*(v15 + 104))(v11, enum case for DIPError.Code.idcsPayloadDecryptionFailureHPKE(_:), v16);
        v10 = v11;
        swift_errorRetain();
        sub_10002688C(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_1000FA7F0(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        (*(v31 + 8))(v9, v26);
        return v10;
      }

      v14 = sub_1000F8BE4();
    }

    v10 = v14;
    (*(v31 + 8))(v9, v7);
  }

  return v10;
}

uint64_t sub_1000F8BE4()
{
  v1 = v0;
  v82 = type metadata accessor for Logger();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for HPKEParams();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for AEADKey();
  v87 = *(v88 - 8);
  v4 = __chkstk_darwin(v88);
  v83 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v90 = &v77 - v6;
  v92 = type metadata accessor for HPKEPrivateKey();
  v103 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HPKESuiteKwV1();
  v9 = *(v8 - 8);
  v93 = v8;
  v94 = v9;
  __chkstk_darwin(v8);
  v96 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004E70(&qword_1002032B0, &qword_1001ADBB0);
  __chkstk_darwin(v11 - 8);
  v102 = &v77 - v12;
  v13 = sub_100004E70(&qword_1002032B8, &qword_1001ADBB8);
  v97 = *(v13 - 8);
  v98 = v13;
  __chkstk_darwin(v13);
  v95 = &v77 - v14;
  v15 = type metadata accessor for DIPError.Code();
  v99 = *(v15 - 8);
  v100 = v15;
  __chkstk_darwin(v15);
  v101 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100004E70(&qword_1002032C0, &qword_1001ADBC0);
  v104 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v77 - v18;
  v20 = sub_100004E70(&qword_1002032C8, &qword_1001ADBC8);
  v105 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v77 - v21;
  v23 = type metadata accessor for JSONDecoder();
  swift_allocObject();
  v24 = JSONDecoder.init()();
  v25 = v1;
  sub_100055454(&qword_1002032D0, &qword_1002032C8, &qword_1001ADBC8, &protocol conformance descriptor for HPKEEncryptedMessageWithKeyWrap<A>);
  v26 = v106;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (!v26)
  {
    v106 = 0;
    v27 = v102;
    v28 = v103;
    v89 = v17;

    HPKEEncryptedMessageWithKeyWrap.getMessages()();
    if (shouldIncludeUnencryptedData()())
    {
      v29 = v89;
      SealedMessage.unencryptedData.getter();
      if (!v108)
      {
        v79 = v19;
        (*(v99 + 104))(v101, enum case for DIPError.Code.idcsPayloadDecryptionDigitalIDMissing(_:), v100);
        sub_10002688C(_swiftEmptyArrayStorage);
        v78 = v22;
        v24 = type metadata accessor for DIPError();
        sub_1000FA7F0(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        (*(v104 + 8))(v79, v29);
        (*(v105 + 8))(v78, v20);
        return v24;
      }

      v24 = Data.init(base64Encoded:options:)();
      v31 = v30;

      v33 = v104;
      v32 = v105;
      if (v31 >> 60 == 15)
      {
        v79 = v19;
        v106 = "field from decrypted payload";
        (*(v99 + 104))(v101, enum case for DIPError.Code.idcsPayloadDecryptionFailureB64Decode(_:), v100);
        sub_10002688C(_swiftEmptyArrayStorage);
        v78 = v22;
        v24 = type metadata accessor for DIPError();
        sub_1000FA7F0(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        (*(v33 + 8))(v79, v89);
        (*(v32 + 8))(v78, v20);
        return v24;
      }

LABEL_12:
      (*(v33 + 8))(v19, v89);
      (*(v32 + 8))(v22, v20);
      return v24;
    }

    v79 = v19;
    v34 = v27;
    HPKEEncryptedMessageWithKeyWrap.getKeys()();
    v36 = v97;
    v35 = v98;
    v37 = (*(v97 + 48))(v27, 1, v98);
    v38 = v89;
    if (v37 == 1)
    {
      sub_1000FA610(v34);
      (*(v99 + 104))(v101, enum case for DIPError.Code.idcsPayloadDecryptionFailureMissingKeys(_:), v100);
      sub_10002688C(_swiftEmptyArrayStorage);
      v24 = type metadata accessor for DIPError();
      sub_1000FA7F0(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v104 + 8))(v79, v38);
      (*(v105 + 8))(v22, v20);
      return v24;
    }

    v78 = v22;
    v39 = *(v36 + 32);
    v40 = v36;
    v41 = v95;
    v39(v95, v34, v35);
    (*(v28 + 16))(v91, v25 + qword_100203210, v92);
    v42 = v96;
    HPKESuiteKwV1.init(skR:info:)();
    swift_allocObject();
    v43 = v35;
    v44 = JSONDecoder.init()();
    v109 = v23;
    v110 = &protocol witness table for JSONDecoder;
    v107 = v44;
    sub_100004E70(&qword_1002032D8, &unk_1001ADBD0);
    sub_1000FA678();
    sub_1000FA734();
    v24 = v42;
    v45 = v106;
    HPKESuiteKwV1.openMessageHPKE<A>(envelope:authenticationContext:decoder:)();
    if (v45)
    {
      (*(v94 + 8))(v42, v93);
      (*(v40 + 8))(v41, v43);
      (*(v104 + 8))(v79, v89);
      (*(v105 + 8))(v78, v20);
      sub_100005090(&v107);
      return v24;
    }

    v106 = v20;
    sub_100005090(&v107);
    v46 = v111;
    v47 = SealedMessage.keyID.getter();
    if (*(v46 + 16))
    {
      v49 = sub_100099644(v47, v48);
      v51 = v50;

      v52 = v94;
      v53 = v101;
      if (v51)
      {
        v54 = v87;
        v55 = *(v46 + 56) + *(v87 + 72) * v49;
        v56 = v83;
        v57 = v88;
        (*(v87 + 16))(v83, v55, v88);

        (*(v54 + 32))(v90, v56, v57);
        v58 = v84;
        HPKEEnvelope.params.getter();
        v59 = HPKEParams.pkISm.getter();
        v61 = v60;
        (*(v85 + 8))(v58, v86);
        if (v61 >> 60 == 15)
        {
          v59 = 0;
          v62 = 0xC000000000000000;
        }

        else
        {
          v64 = v61;
          v65 = v80;
          defaultLogger()();
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 0;
            _os_log_impl(&_mh_execute_header, v66, v67, "pkISm is set; using it for aad", v68, 2u);
          }

          (*(v81 + 8))(v65, v82);
          v62 = v64;
        }

        v103 = v62;
        v69 = SealedMessage.data.getter();
        v71 = v70;
        v72 = HPKESuiteKwV1.openMessageAEAD(cipherText:key:aad:)();
        v73 = (v54 + 8);
        v74 = (v94 + 8);
        v75 = (v97 + 8);
        v24 = v72;
        sub_1000092BC(v69, v71);
        sub_1000092BC(v59, v103);
        (*v73)(v90, v88);
        (*v74)(v96, v93);
        (*v75)(v95, v98);
        v32 = v105;
        v20 = v106;
        v33 = v104;
        v22 = v78;
        v19 = v79;
        goto LABEL_12;
      }
    }

    else
    {

      v52 = v94;
      v53 = v101;
    }

    v107 = 0;
    v108 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v107 = 0xD000000000000021;
    v108 = 0x80000001001BA7D0;
    v63._countAndFlagsBits = SealedMessage.keyID.getter();
    String.append(_:)(v63);

    v24 = v107;
    (*(v99 + 104))(v53, enum case for DIPError.Code.idcsPayloadDecryptionFailureMissingKeys(_:), v100);
    sub_10002688C(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1000FA7F0(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v52 + 8))(v96, v93);
    (*(v97 + 8))(v95, v98);
    (*(v104 + 8))(v79, v89);
    (*(v105 + 8))(v78, v106);
    return v24;
  }

  return v24;
}

uint64_t sub_1000F9D80()
{
  v1 = type metadata accessor for HPKEPrivateKey();
  v18 = *(v1 - 8);
  v19 = v1;
  __chkstk_darwin(v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HPKESuiteKwV1();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v22 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004E70(&qword_1002032A0, &qword_1001ADBA8);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100055454(&qword_1002032A8, &qword_1002032A0, &qword_1001ADBA8, &protocol conformance descriptor for HPKEEncryptedMessagePlain<A>);
  v9 = v23[8];
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v9)
  {
    v11 = v17;
    (*(v18 + 16))(v3, v0 + qword_100203210, v19);
    v12 = v22;
    HPKESuiteKwV1.init(skR:info:)();
    v13 = v21;
    v23[3] = v21;
    v23[4] = &protocol witness table for HPKESuiteKwV1;
    v14 = sub_10001A9A4(v23);
    v15 = v20;
    (*(v20 + 16))(v14, v12, v13);
    HPKEEncryptedMessagePlain.open(with:authenticationContext:)();
    (*(v15 + 8))(v22, v13);
    (*(v11 + 8))(v8, v6);
    sub_100005090(v23);
    return v23[5];
  }

  return result;
}

uint64_t *sub_1000FA0DC()
{
  sub_1000092BC(*(v0 + 112), *(v0 + 120));
  v1 = qword_100203210;
  v2 = type metadata accessor for HPKEPrivateKey();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 128);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000FA1C8()
{
  sub_1000FA0DC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000FA20C(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000104D4;

  return sub_1000F7930(a1, a2);
}

uint64_t sub_1000FA2B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000EDCBC;

  return sub_1000F7BAC(a1);
}

uint64_t sub_1000FA350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1000EE1A0;

  return sub_1000F8094(a1, a2, a3, a4, a5);
}

uint64_t sub_1000FA418(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000105C8;

  return sub_1000F7E20(a1);
}

uint64_t sub_1000FA4B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000EE1A0;

  return sub_1000F8318();
}

uint64_t sub_1000FA544()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1000FA564, v2, 0);
}

uint64_t sub_1000FA564()
{
  v1 = sub_1000F8588();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000FA610(uint64_t a1)
{
  v2 = sub_100004E70(&qword_1002032B0, &qword_1001ADBB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000FA678()
{
  result = qword_1002032E0;
  if (!qword_1002032E0)
  {
    sub_100021ED0(&qword_1002032D8, &unk_1001ADBD0);
    sub_1000FA7F0(&qword_1002032E8, &type metadata accessor for AEADKey, &protocol conformance descriptor for AEADKey);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002032E0);
  }

  return result;
}

unint64_t sub_1000FA734()
{
  result = qword_1002032F0;
  if (!qword_1002032F0)
  {
    sub_100021ED0(&qword_1002032D8, &unk_1001ADBD0);
    sub_1000FA7F0(&qword_1002032F8, &type metadata accessor for AEADKey, &protocol conformance descriptor for AEADKey);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002032F0);
  }

  return result;
}

uint64_t sub_1000FA7F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000FA838(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Initializing InaccessiblyEncryptedPayloadProcessor", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  *(v2 + 112) = a1;
  return v2;
}

void *sub_1000FA98C()
{
  v2 = v1;
  v93 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v3 = *(v93 - 8);
  v4 = __chkstk_darwin(v93);
  v92 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v66 - v6;
  v87 = type metadata accessor for AnyCodable();
  v8 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ISO18013IssuerSignedItem();
  v11 = __chkstk_darwin(v10);
  v85 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v16 = &v66 - v15;
  v17 = *(v0 + 112);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  v23 = (v8 + 16);
  v24 = v13;
  v83 = (v14 + 16);
  v84 = v23;
  v78 = v3 + 8;
  v79 = v3;
  v80 = (v3 + 16);
  v81 = (v14 + 8);
  v75 = v3 + 40;
  v76 = v3 + 32;

  v25 = 0;
  v26 = _swiftEmptyDictionarySingleton;
  v94 = v7;
  v82 = v16;
  v69 = v17;
  v68 = v17 + 64;
  v67 = v22;
  v77 = v24;
  if (!v21)
  {
    goto LABEL_4;
  }

  do
  {
LABEL_8:
    v74 = v26;
    v72 = v21;
    v71 = v25;
    v28 = __clz(__rbit64(v21)) | (v25 << 6);
    v29 = *(v17 + 56);
    v30 = (*(v17 + 48) + 16 * v28);
    v31 = v30[1];
    v70 = *v30;
    v32 = *(v29 + 8 * v28);
    v33 = *(v32 + 16);
    v73 = v31;
    swift_bridgeObjectRetain_n();

    v89 = v33;
    if (v33)
    {
      v34 = 0;
      v35 = (v32 + 40);
      v36 = _swiftEmptyDictionarySingleton;
      v88 = v32;
      while (v34 < *(v32 + 16))
      {
        v39 = v36;
        v90 = v35;
        v91 = v34;
        v41 = *(v35 - 1);
        v40 = *v35;
        v42 = qword_1001FFFD8;
        swift_bridgeObjectRetain_n();
        if (v42 != -1)
        {
          swift_once();
        }

        v43 = v87;
        v44 = sub_1000FC128(v87, qword_100205D38);
        (*v84)(v86, v44, v43);
        ISO18013IssuerSignedItem.init(digestID:random:elementIdentifier:elementValue:)();
        (*v83)(v85, v16, v24);
        type metadata accessor for CBOREncoder();
        swift_allocObject();
        CBOREncoder.init()();
        sub_1000FC160(&qword_100202430, &type metadata accessor for ISO18013IssuerSignedItem, &protocol conformance descriptor for ISO18013IssuerSignedItem);
        sub_1000FC160(&qword_100202438, &type metadata accessor for ISO18013IssuerSignedItem, &protocol conformance descriptor for ISO18013IssuerSignedItem);
        v45 = v94;
        CBOREncodedCBOR.init(value:tag:encoder:)();
        if (v2)
        {

          swift_bridgeObjectRelease_n();

          (*v81)(v82, v24);

          v26 = v74;

          return v26;
        }

        (*v80)(v92, v45, v93);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = v39;
        v47 = v40;
        v49 = sub_100099644(v41, v40);
        v50 = v39[2];
        v51 = (v48 & 1) == 0;
        v52 = v50 + v51;
        if (__OFADD__(v50, v51))
        {
          goto LABEL_32;
        }

        v53 = v48;
        if (v39[3] >= v52)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100109C70();
          }
        }

        else
        {
          sub_100108710(v52, isUniquelyReferenced_nonNull_native);
          v54 = sub_100099644(v41, v40);
          if ((v53 & 1) != (v55 & 1))
          {
            goto LABEL_35;
          }

          v49 = v54;
        }

        v2 = 0;
        v36 = v95;
        if (v53)
        {
          v37 = v79;
          v38 = v93;
          (*(v79 + 40))(v95[7] + *(v79 + 72) * v49, v92, v93);

          (*(v37 + 8))(v94, v38);
          v16 = v82;
          v24 = v77;
          (*v81)(v82, v77);
        }

        else
        {
          v95[(v49 >> 6) + 8] |= 1 << v49;
          v56 = (v36[6] + 16 * v49);
          *v56 = v41;
          v56[1] = v47;
          v57 = v79;
          v58 = v93;
          (*(v79 + 32))(v36[7] + *(v79 + 72) * v49, v92, v93);
          (*(v57 + 8))(v94, v58);
          v16 = v82;
          v24 = v77;
          (*v81)(v82, v77);
          v59 = v36[2];
          v60 = __OFADD__(v59, 1);
          v61 = v59 + 1;
          if (v60)
          {
            goto LABEL_34;
          }

          v36[2] = v61;
        }

        v34 = v91 + 1;
        v35 = v90 + 2;
        v32 = v88;
        if (v89 == v91 + 1)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v36 = _swiftEmptyDictionarySingleton;
LABEL_26:
    v21 = (v72 - 1) & v72;
    v62 = v36;
    v63 = v74;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v63;
    sub_1001217F4(v62, v70, v73, v64);

    swift_bridgeObjectRelease_n();
    v26 = v95;
    v17 = v69;
    v18 = v68;
    v22 = v67;
    v25 = v71;
  }

  while (v21);
LABEL_4:
  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v22)
    {

      return v26;
    }

    v21 = *(v18 + 8 * v27);
    ++v25;
    if (v21)
    {
      v25 = v27;
      goto LABEL_8;
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000FB14C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000FB20C, v1, 0);
}

uint64_t sub_1000FB20C()
{
  v1 = sub_1000FA98C();
  v2 = sub_100123368(*(v0 + 16), v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000FB410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for DIPError.Code();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000FB4D8, v5, 0);
}

uint64_t sub_1000FB4D8()
{
  v1 = sub_1000FA98C();
  v2 = sub_100111F78(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1, *(v0 + 40), *(v0 + 48));

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000FB6E8()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000FB7A8, v0, 0);
}

uint64_t sub_1000FB7A8()
{
  v1 = sub_1000FA98C();
  v2 = sub_100123C64(v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000FB9B0()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000FBA0C()
{
  v2 = type metadata accessor for DIPError.Code();
  v1[2] = v2;
  v1[3] = *(v2 - 8);
  v1[4] = swift_task_alloc();
  v3 = *v0;

  return _swift_task_switch(sub_1000FBAC8, v3, 0);
}

uint64_t sub_1000FBAC8()
{
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.idcsEncryptedPayloadInaccessible(_:), v0[2]);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000FC160(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000FBC40(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000EDCBC;

  return sub_1000FB14C(a1);
}

uint64_t sub_1000FBCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1000EE1A0;

  return sub_1000FB410(a1, a2, a3, a4, a5);
}

uint64_t sub_1000FBDC0()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for COSE_Sign1();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000FBE60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000EE1A0;

  return sub_1000FB6E8();
}

uint64_t sub_1000FBEF0()
{
  v2 = type metadata accessor for DIPError.Code();
  v1[2] = v2;
  v1[3] = *(v2 - 8);
  v1[4] = swift_task_alloc();
  v3 = *v0;

  return _swift_task_switch(sub_1000FBFAC, v3, 0);
}

uint64_t sub_1000FBFAC()
{
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.idcsEncryptedPayloadInaccessible(_:), v0[2]);
  sub_10002688C(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1000FC160(&qword_100200200, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000FC128(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000FC160(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000FC1A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100004E70(&qword_1002034D0, &qword_1001ADD50);
  v15 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = _HashTable.startBucket.getter();
  if (v7 == 1 << *(a1 + 32))
  {
    v8 = *(v15 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v10 = *(v4 + 48);
    *a2 = sub_10010C230(&v6[v10], v7, *(a1 + 36), 0, a1);
    *(a2 + 1) = v11;
    v12 = *(v4 + 48);
    v13 = type metadata accessor for ISO18013Package.Document();
    (*(*(v13 - 8) + 32))(&a2[v12], &v6[v10], v13);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_1000FC35C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100004E70(&qword_1002034A0, &unk_1001AE060);
  v15 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = _HashTable.startBucket.getter();
  if (v7 == 1 << *(a1 + 32))
  {
    v8 = *(v15 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v10 = *(v4 + 48);
    *a2 = sub_10010C304(&v6[v10], v7, *(a1 + 36), 0, a1);
    *(a2 + 1) = v11;
    v12 = *(v4 + 48);
    v13 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
    (*(*(v13 - 8) + 32))(&a2[v12], &v6[v10], v13);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_1000FC51C(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_10010D8E4(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_1000FC598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_10010C574(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void *sub_1000FC660(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100100418(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_100122114(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[7] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_100100418((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[7] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_1000BAE9C(result);
  *v1 = v4;
  return result;
}

uint64_t sub_1000FC91C(uint64_t result)
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

  result = sub_100100418(result, v10, 1, v3);
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

uint64_t sub_1000FCA10(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10010B3D4(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10010C0A0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1000FCB00(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_100100678(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = v8 - v10;
  result = sub_10012251C(v38, &v3[v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v13 = result;
  if (result)
  {
    v14 = *(v3 + 2);
    v15 = __OFADD__(v14, result);
    v16 = result + v14;
    if (v15)
    {
      __break(1u);
LABEL_19:
      v19 = (v11 + 64) >> 6;
      if (v19 <= v16 + 1)
      {
        v20 = v16 + 1;
      }

      else
      {
        v20 = (v11 + 64) >> 6;
      }

      v21 = v20 - 1;
      do
      {
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v22 >= v19)
        {
          v40 = v21;
          v41 = 0;
          goto LABEL_13;
        }

        v23 = *(v12 + 8 * v22);
        ++v16;
      }

      while (!v23);
      v17 = (v23 - 1) & v23;
      v18 = __clz(__rbit64(v23)) | (v22 << 6);
      v16 = v22;
      goto LABEL_27;
    }

    *(v3 + 2) = v16;
  }

  result = v38[0];
  if (v13 != v11)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v12 = v38[1];
  v11 = v39;
  v16 = v40;
  if (!v41)
  {
    goto LABEL_19;
  }

  v17 = (v41 - 1) & v41;
  v18 = __clz(__rbit64(v41)) | (v40 << 6);
  v19 = (v39 + 64) >> 6;
LABEL_27:
  v24 = *(result[7] + v18);
  while (1)
  {
    v25 = *(v3 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v26)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v35 = v16;
  v36 = v19;
  v37 = result;
  v30 = v12;
  v31 = v3;
  v32 = v17;
  v33 = sub_100100678((v25 > 1), v6 + 1, 1, v31);
  v17 = v32;
  v16 = v35;
  v19 = v36;
  v12 = v30;
  v3 = v33;
  result = v37;
  v26 = *(v3 + 3) >> 1;
  if (v6 >= v26)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    v3[v6++ + 32] = v24 & 1;
    if (!v17)
    {
      break;
    }

LABEL_34:
    v27 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = *(result[7] + (v27 | (v16 << 6)));
    if (v6 == v26)
    {
      v6 = v26;
      goto LABEL_30;
    }
  }

  v28 = v16;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v29 >= v19)
    {
      break;
    }

    v17 = *(v12 + 8 * v29);
    ++v28;
    if (v17)
    {
      v16 = v29;
      goto LABEL_34;
    }
  }

  if (v19 <= v16 + 1)
  {
    v34 = v16 + 1;
  }

  else
  {
    v34 = v19;
  }

  v39 = v11;
  v40 = v34 - 1;
  v41 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  result = sub_1000BAE9C(result);
  *v1 = v3;
  return result;
}

uint64_t sub_1000FCD88(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = v4[3] >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100101028(isUniquelyReferenced_nonNull_native, v10, 1, v4, &qword_1002036B8, &qword_1001ADF00, &qword_1002036C0, &qword_1001ADF08);
    v9 = v4[3] >> 1;
  }

  v11 = v9 - v4[2];
  result = sub_1001242E8();
  if (result < v3)
  {
    goto LABEL_15;
  }

  v14 = result;
  if (result)
  {
    v15 = v4[2];
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
LABEL_19:
      v20 = (v13 + 64) >> 6;
      do
      {
        v21 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_42;
        }

        if (v21 >= v20)
        {
          goto LABEL_13;
        }

        v22 = *(v12 + 8 * v21);
        ++v7;
      }

      while (!v22);
      v18 = (v22 - 1) & v22;
      v19 = __clz(__rbit64(v22)) | (v21 << 6);
      v7 = v21;
      goto LABEL_24;
    }

    v4[2] = v17;
  }

  result = v33;
  if (v14 != v11)
  {
LABEL_13:
    result = sub_1000BAE9C(result);
    *v1 = v4;
    return result;
  }

LABEL_16:
  v2 = v4[2];
  v12 = v34;
  v13 = v35;
  v7 = v36;
  v32 = v34;
  if (!v37)
  {
    goto LABEL_19;
  }

  v18 = (v37 - 1) & v37;
  v19 = __clz(__rbit64(v37)) | (v36 << 6);
  v20 = (v35 + 64) >> 6;
LABEL_24:
  v23 = result;
  v24 = *(*(result + 56) + 8 * v19);

  v25 = v32;
LABEL_26:
  while (1)
  {
    v26 = v4[3];
    v27 = v26 >> 1;
    if ((v26 >> 1) < v2 + 1)
    {
      break;
    }

    if (v2 < v27)
    {
      goto LABEL_28;
    }

LABEL_25:
    v4[2] = v2;
  }

  v31 = sub_100101028((v26 > 1), v2 + 1, 1, v4, &qword_1002036B8, &qword_1001ADF00, &qword_1002036C0, &qword_1001ADF08);
  v25 = v32;
  v4 = v31;
  v27 = v31[3] >> 1;
  if (v2 >= v27)
  {
    goto LABEL_25;
  }

LABEL_28:
  while (1)
  {
    v4[v2++ + 4] = v24;
    if (!v18)
    {
      break;
    }

    result = v23;
LABEL_35:
    v30 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v24 = *(*(result + 56) + ((v7 << 9) | (8 * v30)));

    v25 = v32;
    if (v2 == v27)
    {
      v2 = v27;
      v4[2] = v27;
      goto LABEL_26;
    }
  }

  v28 = v7;
  result = v23;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v20)
    {
      v4[2] = v2;
      goto LABEL_13;
    }

    v18 = *(v25 + 8 * v29);
    ++v28;
    if (v18)
    {
      v7 = v29;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1000FD078(uint64_t result)
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

  result = sub_100100900(result, v10, 1, v3);
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

void *sub_1000FD170(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_100100B68(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100004E70(&qword_100200468, &qword_1001AAE98);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000FD274(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = v4[3] >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100101028(isUniquelyReferenced_nonNull_native, v10, 1, v4, &qword_1002036A0, &qword_1001ADEE8, &qword_1002036A8, &qword_1001ADEF0);
    v9 = v4[3] >> 1;
  }

  v11 = v9 - v4[2];
  result = sub_1001242E8();
  if (result < v3)
  {
    goto LABEL_15;
  }

  v14 = result;
  if (result)
  {
    v15 = v4[2];
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
LABEL_19:
      v20 = (v13 + 64) >> 6;
      do
      {
        v21 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_42;
        }

        if (v21 >= v20)
        {
          goto LABEL_13;
        }

        v22 = *(v12 + 8 * v21);
        ++v7;
      }

      while (!v22);
      v18 = (v22 - 1) & v22;
      v19 = __clz(__rbit64(v22)) | (v21 << 6);
      v7 = v21;
      goto LABEL_24;
    }

    v4[2] = v17;
  }

  result = v33;
  if (v14 != v11)
  {
LABEL_13:
    result = sub_1000BAE9C(result);
    *v1 = v4;
    return result;
  }

LABEL_16:
  v2 = v4[2];
  v12 = v34;
  v13 = v35;
  v7 = v36;
  v32 = v34;
  if (!v37)
  {
    goto LABEL_19;
  }

  v18 = (v37 - 1) & v37;
  v19 = __clz(__rbit64(v37)) | (v36 << 6);
  v20 = (v35 + 64) >> 6;
LABEL_24:
  v23 = result;
  v24 = *(*(result + 56) + 8 * v19);

  v25 = v32;
LABEL_26:
  while (1)
  {
    v26 = v4[3];
    v27 = v26 >> 1;
    if ((v26 >> 1) < v2 + 1)
    {
      break;
    }

    if (v2 < v27)
    {
      goto LABEL_28;
    }

LABEL_25:
    v4[2] = v2;
  }

  v31 = sub_100101028((v26 > 1), v2 + 1, 1, v4, &qword_1002036A0, &qword_1001ADEE8, &qword_1002036A8, &qword_1001ADEF0);
  v25 = v32;
  v4 = v31;
  v27 = v31[3] >> 1;
  if (v2 >= v27)
  {
    goto LABEL_25;
  }

LABEL_28:
  while (1)
  {
    v4[v2++ + 4] = v24;
    if (!v18)
    {
      break;
    }

    result = v23;
LABEL_35:
    v30 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v24 = *(*(result + 56) + ((v7 << 9) | (8 * v30)));

    v25 = v32;
    if (v2 == v27)
    {
      v2 = v27;
      v4[2] = v27;
      goto LABEL_26;
    }
  }

  v28 = v7;
  result = v23;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v20)
    {
      v4[2] = v2;
      goto LABEL_13;
    }

    v18 = *(v25 + 8 * v29);
    ++v28;
    if (v18)
    {
      v7 = v29;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1000FD564(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000FD5F4(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    type metadata accessor for SecCertificate(0);
    v4 = v11;
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v3 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v18 = v17;
        sub_100112C20(&qword_100203598, type metadata accessor for SecCertificate, &unk_1001AADD8);
        v19 = static _CFObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v5)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v3 + 32);
    v21 = (a2 + 32);
    v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a2 = v5 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v25 = *v20++;
      v24 = v25;
      v26 = *v21++;
      v3 = sub_100112C20(&qword_100203598, type metadata accessor for SecCertificate, &unk_1001AADD8);
      v27 = v24;
      v28 = v26;
      v19 = static _CFObject.== infix(_:_:)();

      v30 = a2-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v30)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

char *sub_1000FD8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, __n128), uint64_t *a8)
{
  v98 = a6;
  v97 = a5;
  v112 = a2;
  v113 = a3;
  v13 = sub_100004E70(&qword_1002033E8, &qword_1001ADC98);
  __chkstk_darwin(v13 - 8);
  v96 = &v82 - v14;
  v101 = type metadata accessor for IDCSAnalytics.NamespaceElement();
  v15 = *(v101 - 8);
  __chkstk_darwin(v101);
  v107 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for IDCSAnalytics.ElementFallbackAlgorithm();
  v17 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100004E70(&qword_100203488, &qword_1001ADD18);
  v20 = __chkstk_darwin(v19 - 8);
  v95 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v94 = &v82 - v23;
  __chkstk_darwin(v22);
  v111 = (&v82 - v24);
  v116 = type metadata accessor for Logger();
  v25 = *(v116 - 8);
  v26 = __chkstk_darwin(v116);
  v104 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v103 = &v82 - v29;
  __chkstk_darwin(v28);
  v102 = &v82 - v30;
  v31 = sub_100004E70(&qword_100203400, &qword_1001ADCB0);
  __chkstk_darwin(v31 - 8);
  v117 = &v82 - v33;
  result = _swiftEmptyArrayStorage;
  v120 = _swiftEmptyArrayStorage;
  v35 = *(a1 + 16);
  if (v35)
  {
    v108 = v8;
    v115 = (v25 + 8);
    v99 = (v15 + 8);
    v93 = (v17 + 104);
    v92 = enum case for IDCSAnalytics.ElementFallbackAlgorithm.ageOverToNearestAgeOver(_:);
    v83 = (v15 + 32);
    v91 = (v15 + 56);
    v90 = (v17 + 8);
    v36 = (a1 + 40);
    *&v32 = 136315138;
    v89 = v32;
    v118 = a4;
    v109 = a8;
    v110 = a7;
    while (1)
    {
      v38 = *(v36 - 1);
      v37 = *v36;

      (a7)(v38, v37);
      if (v39)
      {
        goto LABEL_3;
      }

      if (a4[2])
      {
        v40 = sub_100099644(v38, v37);
        if (v41)
        {
          v42 = v40;

          v43 = v118[7];
          v44 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
          v45 = *(v44 - 8);
          v46 = v43 + *(v45 + 72) * v42;
          v47 = v117;
          a4 = v118;
          (*(v45 + 16))(v117, v46, v44);
          (*(v45 + 56))(v47, 0, 1, v44);
          sub_10000A0D4(v47, &qword_100203400, &qword_1001ADCB0);
          goto LABEL_4;
        }
      }

      v48 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
      v49 = v117;
      (*(*(v48 - 8) + 56))(v117, 1, 1, v48);
      sub_10000A0D4(v49, &qword_100203400, &qword_1001ADCB0);
      v50 = (a7)(v38, v37);
      if (v51)
      {
LABEL_3:
      }

      else
      {
        v114 = v50;
        v52 = v102;
        defaultLogger()();

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v119 = v56;
          *v55 = v89;
          *(v55 + 4) = sub_10010150C(v38, v37, &v119);
          _os_log_impl(&_mh_execute_header, v53, v54, "Falling back from %s to nearest age_over_nn", v55, 0xCu);
          sub_100005090(v56);
          a4 = v118;
        }

        v57 = *v115;
        (*v115)(v52, v116);
        if (sub_10010F9B0(a4))
        {
          defaultLogger()();
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            _os_log_impl(&_mh_execute_header, v58, v59, "Elements are available, performing ISO fallback", v60, 2u);
            a4 = v118;
          }

          v57(v103, v116);
          v61 = v111;
          sub_1000FE4CC(v112, v113, a4, v38, v37, v114, v110, v109, v111);
          v62 = v94;
          sub_100046360(v61, v94, &qword_100203488, &qword_1001ADD18);
          v63 = sub_100004E70(&qword_100203490, &qword_1001ADD20);
          v64 = *(v63 - 8);
          v114 = *(v64 + 48);
          v100 = v64 + 48;
          if (v114(v62, 1, v63) == 1)
          {
            sub_10000A0D4(v62, &qword_100203488, &qword_1001ADD18);
          }

          else
          {
            v70 = *(v62 + 8);
            v87 = *v62;
            v86 = v70;
            v85 = *(v62 + 16);
            v88 = *(v62 + 24);
            v84 = *(v62 + 40);
            (*v99)(v62 + *(v63 + 48), v101);
            v71 = v120;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v71 = sub_100100900(0, *(v71 + 2) + 1, 1, v71);
            }

            v73 = *(v71 + 2);
            v72 = *(v71 + 3);
            if (v73 >= v72 >> 1)
            {
              v71 = sub_100100900((v72 > 1), v73 + 1, 1, v71);
            }

            *(v71 + 2) = v73 + 1;
            v74 = &v71[48 * v73];
            v75 = v86;
            *(v74 + 4) = v87;
            *(v74 + 5) = v75;
            *(v74 + 6) = v85;
            *(v74 + 56) = v88;
            *(v74 + 9) = v84;
            v120 = v71;
          }

          (*v93)(v105, v92, v106);

          IDCSAnalytics.NamespaceElement.init(namespace:element:)();
          v76 = v95;
          sub_100046360(v111, v95, &qword_100203488, &qword_1001ADD18);
          if (v114(v76, 1, v63) == 1)
          {
            sub_10000A0D4(v76, &qword_100203488, &qword_1001ADD18);
            v77 = 1;
            a7 = v110;
            v78 = v96;
            v79 = v101;
          }

          else
          {

            v78 = v96;
            v79 = v101;
            (*v83)(v96, v76 + *(v63 + 48), v101);
            v77 = 0;
            a7 = v110;
          }

          (*v91)(v78, v77, 1, v79);
          type metadata accessor for IDCSAnalytics();
          v80 = v105;
          v81 = v107;
          static IDCSAnalytics.sendElementFallbackTriggeredEvent(algorithm:from:to:)();
          sub_10000A0D4(v78, &qword_1002033E8, &qword_1001ADC98);
          (*v99)(v81, v79);
          (*v90)(v80, v106);
          sub_10000A0D4(v111, &qword_100203488, &qword_1001ADD18);
          a4 = v118;
        }

        else
        {
          defaultLogger()();
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            _os_log_impl(&_mh_execute_header, v65, v66, "Element values are not available, falling back to nearby elements", v67, 2u);
            a4 = v118;
          }

          v57(v104, v116);
          a7 = v110;
          v68 = v108;
          v69 = sub_1001105C4(v112, v113, a4, v38, v37, v114, v97, v98, v110, v109);

          v108 = v68;
          if (v68)
          {
          }

          sub_1000FD078(v69);
        }
      }

LABEL_4:
      v36 += 2;
      if (!--v35)
      {
        return v120;
      }
    }
  }

  return result;
}

void sub_1000FE4CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, uint64_t, __n128)@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v107 = a2;
  v106 = a1;
  v112 = a9;
  v15 = type metadata accessor for ISO18013IssuerSignedItem();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v103 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v109 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v101 - v18;
  v114 = type metadata accessor for Logger();
  v113 = *(v114 - 1);
  v19 = __chkstk_darwin(v114);
  v110 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v101 - v21;
  sub_10010FE24(a3, a4, a5, a6, 1, a7, a8);
  v24 = *(v23 + 16);
  v116 = a5;
  *&v117 = a6;
  v108 = a4;
  v115 = a3;
  if (v24)
  {
    v101 = v16;
    v25 = v23;
  }

  else
  {

    sub_10010FE24(a3, a4, a5, a6, 0, a7, a8);
    v25 = v26;
    v24 = *(v26 + 16);
    if (!v24)
    {

      defaultLogger()();
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.debug.getter();
      v92 = os_log_type_enabled(v90, v91);
      v93 = v112;
      if (v92)
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&_mh_execute_header, v90, v91, "No available nearest age_over_nn fallbacks found in payload", v94, 2u);
      }

      (*(v113 + 8))(v22, v114);
      v79 = sub_100004E70(&qword_100203490, &qword_1001ADD20);
      v80 = *(*(v79 - 8) + 56);
      v81 = v93;
      goto LABEL_53;
    }

    v101 = v16;
  }

  v27 = *(v25 + 4);
  v28 = *(v25 + 5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v120 = v25;
  v102 = v15;
  if (!isUniquelyReferenced_nonNull_native || (v24 - 1) > *(v25 + 3) >> 1)
  {
    v25 = sub_100100418(isUniquelyReferenced_nonNull_native, v24, 1, v25);
    v120 = v25;
  }

  sub_10010DC58(0, 1, 0);
  v30 = *(v25 + 2);
  v111 = v25;
  if (!v30)
  {
LABEL_26:
    v42 = v110;
    defaultLogger()();
    v43 = v116;

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *v46 = 136315394;
      *(v46 + 4) = sub_10010150C(v108, v43, &v119);
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_10010150C(v27, v28, &v119);
      _os_log_impl(&_mh_execute_header, v44, v45, "Falling back from %s to %s", v46, 0x16u);
      swift_arrayDestroy();
    }

    (*(v113 + 8))(v42, v114);
    v47 = v115;
    if (*(v115 + 16))
    {
      v48 = sub_100099644(v27, v28);
      v50 = v49;

      if (v50)
      {
        v51 = v109;
        v52 = *(v47 + 56) + *(v109 + 72) * v48;
        v114 = *(v109 + 16);
        v53 = v104;
        v54 = v105;
        v114(v104, v52, v105);
        sub_100004E70(&qword_100203408, &qword_1001ADCB8);
        inited = swift_initStackObject();
        v117 = xmmword_1001AA160;
        *(inited + 16) = xmmword_1001AA160;
        *(inited + 32) = v106;
        *(inited + 40) = v107;
        sub_100004E70(&qword_100203410, &qword_1001ADCC0);
        v56 = (*(v51 + 80) + 32) & ~*(v51 + 80);
        v57 = swift_allocObject();
        *(v57 + 16) = v117;
        v114((v57 + v56), v53, v54);
        v58 = v108;

        v59 = sub_10010DE54(v57);
        swift_setDeallocating();
        v60 = *(v51 + 8);
        v109 = v51 + 8;
        v114 = v60;
        (v60)(v57 + v56, v54);
        swift_deallocClassInstance();
        *(inited + 48) = v59;
        v61 = v115;
        v113 = sub_10010D43C(inited, &qword_100203450, &qword_1001ADD00);
        swift_setDeallocating();
        sub_10000A0D4(inited + 32, &qword_100203418, &qword_1001ADCC8);
        v62 = v61 + 64;
        v63 = 1 << *(v61 + 32);
        v64 = -1;
        if (v63 < 64)
        {
          v64 = ~(-1 << v63);
        }

        v65 = v64 & *(v61 + 64);
        v66 = (v63 + 63) >> 6;

        v67 = 0;
        v68 = _swiftEmptyArrayStorage;
LABEL_33:
        v69 = v116;
        while (v65)
        {
LABEL_39:
          v71 = __clz(__rbit64(v65));
          v65 &= v65 - 1;
          v72 = (*(v61 + 48) + ((v67 << 10) | (16 * v71)));
          v74 = *v72;
          v73 = v72[1];
          if (*v72 == v58 && v73 == v69)
          {
            v74 = v58;
LABEL_46:

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v68 = sub_100100418(0, *(v68 + 2) + 1, 1, v68);
            }

            v77 = *(v68 + 2);
            v76 = *(v68 + 3);
            if (v77 >= v76 >> 1)
            {
              v68 = sub_100100418((v76 > 1), v77 + 1, 1, v68);
            }

            *(v68 + 2) = v77 + 1;
            v78 = &v68[16 * v77];
            *(v78 + 4) = v74;
            *(v78 + 5) = v73;
            v61 = v115;
            goto LABEL_33;
          }

          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            goto LABEL_46;
          }
        }

        while (1)
        {
          v70 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            __break(1u);
            goto LABEL_63;
          }

          if (v70 >= v66)
          {
            break;
          }

          v65 = *(v62 + 8 * v70);
          ++v67;
          if (v65)
          {
            v67 = v70;
            goto LABEL_39;
          }
        }

        v119 = v68;
        sub_100004E70(&qword_100201580, &qword_1001AB980);
        sub_1000464D0(&qword_100202448, &qword_100201580, &qword_1001AB980);
        Collection.nilIfEmpty.getter();

        if (v118)
        {
          sub_100004E70(&qword_100203420, &qword_1001ADCD0);
          v83 = swift_initStackObject();
          *(v83 + 16) = v117;
          v84 = v106;
          *(v83 + 32) = v106;
          v85 = v107;
          *(v83 + 40) = v107;

          v87 = sub_10010D640(v86);

          *(v83 + 48) = v87;
          v88 = sub_10010D43C(v83, &qword_100203480, &qword_1001ADD10);
          swift_setDeallocating();
          sub_10000A0D4(v83 + 32, &qword_100203428, &qword_1001ADCD8);

          v89 = v112;
        }

        else
        {

          v88 = sub_10010D43C(_swiftEmptyArrayStorage, &qword_100203480, &qword_1001ADD10);
          v89 = v112;
          v85 = v107;
          v84 = v106;
        }

        v95 = v101;
        v96 = sub_100004E70(&qword_100203490, &qword_1001ADD20);
        *&v117 = *(v96 + 48);
        *v89 = v84;
        v89[1] = v85;
        v97 = v116;
        v89[2] = v58;
        v89[3] = v97;
        v89[4] = v113;
        v89[5] = v88;
        swift_bridgeObjectRetain_n();

        v98 = v103;
        v99 = v105;
        v100 = v104;
        CBOREncodedCBOR.value.getter();
        ISO18013IssuerSignedItem.elementIdentifier.getter();
        (*(v95 + 8))(v98, v102);
        IDCSAnalytics.NamespaceElement.init(namespace:element:)();
        (v114)(v100, v99);
        v80 = *(*(v96 - 8) + 56);
        v81 = v89;
        v82 = 0;
        v79 = v96;
        goto LABEL_61;
      }
    }

    else
    {
    }

    v79 = sub_100004E70(&qword_100203490, &qword_1001ADD20);
    v80 = *(*(v79 - 8) + 56);
    v81 = v112;
LABEL_53:
    v82 = 1;
LABEL_61:
    v80(v81, v82, 1, v79);
    return;
  }

  v31 = (v25 + 40);
  while (1)
  {
    v32 = *(v31 - 1);
    v33 = *v31;

    v34 = (a7)(v32, v33);
    if (v35)
    {
      goto LABEL_12;
    }

    v36 = v34;
    v37 = (a7)(v27, v28);
    if (v38)
    {
      goto LABEL_12;
    }

    v39 = v36 - v117;
    if (__OFSUB__(v36, v117))
    {
      break;
    }

    if (v39 < 0)
    {
      v41 = __OFSUB__(0, v39);
      v39 = v117 - v36;
      if (v41)
      {
        goto LABEL_65;
      }

      v40 = v37 - v117;
      if (__OFSUB__(v37, v117))
      {
        goto LABEL_66;
      }
    }

    else
    {
      v40 = v37 - v117;
      if (__OFSUB__(v37, v117))
      {
        goto LABEL_64;
      }
    }

    if (v40 < 0)
    {
      v41 = __OFSUB__(0, v40);
      v40 = -v40;
      if (v41)
      {
        __break(1u);
        goto LABEL_26;
      }
    }

    if (v39 < v40)
    {
      v27 = v32;
      v28 = v33;
    }

LABEL_12:

    v31 += 2;
    if (!--v30)
    {
      goto LABEL_26;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

uint64_t sub_1000FF0B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v154 = a4;
  v155 = a5;
  v153 = a3;
  v127 = a8;
  v12 = sub_100004E70(&qword_100203400, &qword_1001ADCB0);
  __chkstk_darwin(v12 - 8);
  v128 = &v122 - v13;
  v147 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v14 = *(v147 - 8);
  v15 = __chkstk_darwin(v147);
  v145 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v134 = &v122 - v18;
  v19 = __chkstk_darwin(v17);
  v125 = &v122 - v20;
  v21 = __chkstk_darwin(v19);
  v123 = &v122 - v22;
  v23 = __chkstk_darwin(v21);
  v124 = &v122 - v24;
  v25 = __chkstk_darwin(v23);
  v135 = &v122 - v26;
  __chkstk_darwin(v25);
  v144 = &v122 - v27;
  v151 = type metadata accessor for DocumentRequest.DataElement();
  v28 = *(v151 - 8);
  __chkstk_darwin(v151);
  v30 = &v122 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  v152 = sub_10010D43C(_swiftEmptyArrayStorage, &qword_100203450, &qword_1001ADD00);
  v140 = *(v31 + 16);
  if (!v140)
  {
    v129 = 0;
    v146 = 0;
LABEL_58:
    v115 = v152;
    if (*(v152 + 16))
    {

      v116 = sub_10010D43C(_swiftEmptyArrayStorage, &qword_100203480, &qword_1001ADD10);
      sub_10000ED48(v129, 0);
      result = sub_10000ED48(v146, 0);
      v118 = v154;
      v119 = v155;
      v120 = v153;
    }

    else
    {

      sub_10000ED48(v129, 0);
      result = sub_10000ED48(v146, 0);
      v120 = 0;
      v118 = 0;
      v119 = 0;
      a6 = 0;
      v115 = 0;
      v116 = 0;
    }

    v121 = v127;
    *v127 = v120;
    v121[1] = v118;
    v121[2] = v119;
    v121[3] = a6;
    v121[4] = v115;
    v121[5] = v116;
    return result;
  }

  v129 = 0;
  v146 = 0;
  v32 = 0;
  v33 = *(v28 + 80);
  v149 = *(a2 + 16);
  v143 = v31 + ((v33 + 32) & ~v33);
  v142 = v28 + 16;
  v122 = (v14 + 48);
  v133 = (v14 + 32);
  v132 = (v14 + 16);
  v131 = (v14 + 8);
  v141 = (v28 + 8);
  v126 = (v14 + 56);
  v136 = a7;
  v137 = a2 + 72;
  v130 = v14;
  v148 = v30;
  v138 = v31;
  v139 = v28;
  while (v32 < *(v31 + 16))
  {
    v37 = *(v28 + 72);
    v150 = v32;
    (*(v28 + 16))(v30, v143 + v37 * v32, v151);
    v39 = v154;
    v38 = v155;
    v40 = v153;
    if (v149)
    {
      v41 = a6;
      v42 = v137;
      v43 = v149;
      while (1)
      {
        v44 = *(v42 - 24);
        v45 = *(v42 - 16);
        v46 = *(v42 - 8);
        v47 = *(v42 - 40) == v40 && *(v42 - 32) == v39;
        if (v47 || (v48 = _stringCompareWithSmolCheck(_:_:expecting:)(), v40 = v153, v39 = v154, v41 = a6, v38 = v155, (v48 & 1) != 0))
        {
          if (v44 == v38 && v45 == v41)
          {
            break;
          }

          v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v40 = v153;
          v39 = v154;
          v41 = a6;
          v38 = v155;
          if (v50)
          {
            break;
          }
        }

        v42 += 48;
        if (!--v43)
        {
          goto LABEL_25;
        }
      }

      v51 = sub_1000FC51C(v46);
      if (v52)
      {
        v53 = v52;
        if (*(v46 + 16) && (v54 = v51, sub_100099644(v51, v52), (v55 & 1) != 0))
        {

          v57 = v128;
          sub_1000FC598(v56, v128);

          v58 = v147;
          if ((*v122)(v57, 1, v147) != 1)
          {
            v96 = v124;
            (*v133)(v124, v57, v58);
            (*v132)(v125, v96, v58);
            sub_10000ED48(v129, 0);
            v97 = v152;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v156 = v97;
            v99 = sub_100099644(v54, v53);
            v101 = *(v97 + 16);
            v102 = (v100 & 1) == 0;
            v87 = __OFADD__(v101, v102);
            v103 = v101 + v102;
            v30 = v148;
            if (v87)
            {
              goto LABEL_65;
            }

            v104 = v100;
            if (*(v97 + 24) >= v103)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_46;
              }

              v108 = v99;
              sub_10010A3D0(&qword_100203450, &qword_1001ADD00);
              v99 = v108;
              v106 = v156;
              if ((v104 & 1) == 0)
              {
                goto LABEL_49;
              }

LABEL_47:
            }

            else
            {
              sub_10010917C(v103, isUniquelyReferenced_nonNull_native, &qword_100203450, &qword_1001ADD00);
              v99 = sub_100099644(v54, v53);
              if ((v104 & 1) != (v105 & 1))
              {
                goto LABEL_67;
              }

LABEL_46:
              v106 = v156;
              if (v104)
              {
                goto LABEL_47;
              }

LABEL_49:
              v106[(v99 >> 6) + 8] |= 1 << v99;
              v109 = (v106[6] + 16 * v99);
              *v109 = v54;
              v109[1] = v53;
              *(v106[7] + 8 * v99) = &_swiftEmptySetSingleton;
              v110 = v106[2];
              v87 = __OFADD__(v110, 1);
              v111 = v110 + 1;
              if (v87)
              {
                goto LABEL_66;
              }

              v106[2] = v111;
            }

            v152 = v106;
            v112 = v123;
            sub_100102E24(v123, v125);
            v113 = *v131;
            v114 = v147;
            (*v131)(v112, v147);
            v113(v124, v114);
            (*v141)(v30, v151);
            v129 = sub_100112C70;
            goto LABEL_5;
          }

          v30 = v148;
          (*v141)(v148, v151);
        }

        else
        {

          v30 = v148;
          (*v141)(v148, v151);
          v57 = v128;
          (*v126)(v128, 1, 1, v147);
        }

        sub_10000A0D4(v57, &qword_100203400, &qword_1001ADCB0);
      }

      else
      {
        v95 = v148;
        (*v141)(v148, v151);

        v30 = v95;
      }
    }

    else
    {
LABEL_25:
      v59 = v148;
      v60 = DocumentRequest.DataElement.namespace.getter();
      v62 = v136;
      if (!*(v136 + 16))
      {
        goto LABEL_56;
      }

      v63 = sub_100099644(v60, v61);
      v65 = v64;

      if ((v65 & 1) == 0)
      {
        goto LABEL_57;
      }

      v66 = *(*(v62 + 56) + 8 * v63);

      v67 = DocumentRequest.DataElement.identifier.getter();
      if (!*(v66 + 16))
      {

LABEL_57:

        v152 = sub_10010D43C(_swiftEmptyArrayStorage, &qword_100203450, &qword_1001ADD00);
        (*v141)(v59, v151);
        goto LABEL_58;
      }

      v69 = sub_100099644(v67, v68);
      v71 = v70;

      if ((v71 & 1) == 0)
      {
LABEL_56:

        goto LABEL_57;
      }

      v72 = v130;
      v73 = *(v66 + 56) + *(v130 + 72) * v69;
      v74 = *(v130 + 16);
      v75 = v135;
      v76 = v147;
      v74(v135, v73, v147);

      v77 = v144;
      (*(v72 + 32))(v144, v75, v76);
      v78 = DocumentRequest.DataElement.namespace.getter();
      v80 = v79;
      v74(v145, v77, v76);
      v81 = v152;
      sub_10000ED48(v146, 0);
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v156 = v81;
      v83 = sub_100099644(v78, v80);
      v85 = *(v81 + 16);
      v86 = (v84 & 1) == 0;
      v87 = __OFADD__(v85, v86);
      v88 = v85 + v86;
      if (v87)
      {
        goto LABEL_63;
      }

      v89 = v84;
      if (*(v81 + 24) >= v88)
      {
        if ((v82 & 1) == 0)
        {
          v107 = v83;
          sub_10010A3D0(&qword_100203450, &qword_1001ADD00);
          v83 = v107;
        }
      }

      else
      {
        sub_10010917C(v88, v82, &qword_100203450, &qword_1001ADD00);
        v83 = sub_100099644(v78, v80);
        if ((v89 & 1) != (v90 & 1))
        {
          goto LABEL_67;
        }
      }

      v30 = v148;
      v91 = v156;
      if (v89)
      {
      }

      else
      {
        v156[(v83 >> 6) + 8] |= 1 << v83;
        v92 = (v91[6] + 16 * v83);
        *v92 = v78;
        v92[1] = v80;
        *(v91[7] + 8 * v83) = &_swiftEmptySetSingleton;
        v93 = v91[2];
        v87 = __OFADD__(v93, 1);
        v94 = v93 + 1;
        if (v87)
        {
          goto LABEL_64;
        }

        v91[2] = v94;
      }

      v152 = v91;
      v34 = v134;
      sub_100102E24(v134, v145);
      v35 = *v131;
      v36 = v147;
      (*v131)(v34, v147);
      v35(v144, v36);
      (*v141)(v30, v151);
      v146 = sub_100112C70;
    }

LABEL_5:
    v31 = v138;
    v28 = v139;
    v32 = v150 + 1;
    if (v150 + 1 == v140)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000FFD38(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    sub_100099644(v14, v15);
    v18 = v17;

    if ((v18 & 1) == 0)
    {

      return 0;
    }

    v20 = a3(v19, v16);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FFEB4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_100099644(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100100058@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100100288(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10010C640(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000092BC(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100100058(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000092BC(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

char *sub_100100418(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
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

char *sub_100100524(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E70(&qword_100203628, &qword_1001ADE80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100100678(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E70(&qword_1002036B0, &qword_1001ADEF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

void *sub_1001007B8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004E70(&qword_1002035E8, &qword_1001ADE48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004E70(&qword_1002035F0, &qword_1001ADE50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100100900(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E70(&qword_100203448, &qword_1001ADCF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100100A20(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004E70(&qword_1002034B8, &qword_1001ADD38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004E70(&qword_1002034C0, &qword_1001ADD40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100100B68(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004E70(&qword_1002034C8, &qword_1001ADD48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004E70(&qword_100200468, &qword_1001AAE98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100100CC0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004E70(a5, a6);
  v16 = *(sub_100004E70(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100004E70(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_100100EA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E70(&qword_100203508, &qword_1001ADD78);
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

void *sub_100101028(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100004E70(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004E70(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100101184(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004E70(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100101360(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E70(&qword_100203660, &qword_1001ADEB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100101488(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100004E70(&qword_1002004F8, &qword_1001AAFA8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_10010150C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1001015D8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000B558(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005090(v11);
  return v7;
}

unint64_t sub_1001015D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1001016E4(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

void *sub_1001016E4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100101730(a1, a2);
  sub_100101860(&off_1001F3E60);
  return v3;
}

void *sub_100101730(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10010194C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10010194C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100101860(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1001019C0(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10010194C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100004E70(&qword_100203438, &qword_1001ADCE8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1001019C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004E70(&qword_100203438, &qword_1001ADCE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_100101AB4(uint64_t a1)
{
  type metadata accessor for DIPError.PropertyKey();
  sub_100112C20(&qword_100201080, &type metadata accessor for DIPError.PropertyKey, &protocol conformance descriptor for DIPError.PropertyKey);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100101C40(a1, v2);
}

unint64_t sub_100101B4C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100101E00(a1, v4);
}

unint64_t sub_100101B90(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_100101EC8(a1, v2);
}

unint64_t sub_100101BD4(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_100101EC8(a1, v2);
}

unint64_t sub_100101C40(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for DIPError.PropertyKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100112C20(&qword_100201088, &type metadata accessor for DIPError.PropertyKey, &protocol conformance descriptor for DIPError.PropertyKey);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100101E00(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100112864(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1001128C0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100101EC8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100101F34(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CocoaError.Code();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100112C20(&qword_100203680, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
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
      sub_100112C20(&qword_100203688, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
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
    sub_100104938(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100102214(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

    sub_100104BDC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100102364(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100104D5C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100102444(unint64_t *a1, unint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  sub_10010C3E4(v15, a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v11 = sub_1000FD5F4(v10, a2);

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = *v2;

    sub_100104E7C(v13, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v15[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_100102584(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100105008(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10010267C(void *a1, void *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v38 = v6;
  v39 = v5;
  String.hash(into:)();
  v36 = v7;
  sub_10010B61C(v40, v7, sub_10010B8E0);
  v35 = v8;
  sub_10010B61C(v40, v8, sub_10010B784);
  v10 = Hasher._finalize()();
  v11 = v9 + 56;
  v37 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    do
    {
      v15 = (*(v37 + 48) + 48 * v13);
      v17 = v15[2];
      v16 = v15[3];
      v19 = v15[4];
      v18 = v15[5];
      v20 = *v15 == v4 && v15[1] == v3;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v21 = v17 == v38 && v16 == v39;
        if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          if (sub_1000FFD38(v19, v36, sub_10010BCD4))
          {
            v22 = sub_1000FFD38(v18, v35, sub_10010BB1C);

            if (v22)
            {

              v23 = (*(v37 + 48) + 48 * v13);
              v24 = v23[1];
              v25 = v23[2];
              v26 = v23[3];
              v27 = v23[4];
              v28 = v23[5];
              *a1 = *v23;
              a1[1] = v24;
              a1[2] = v25;
              a1[3] = v26;
              a1[4] = v27;
              a1[5] = v28;

              return 0;
            }
          }

          else
          {
          }
        }
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40[0] = *v32;

  sub_100105154(a2, v13, isUniquelyReferenced_nonNull_native);
  *v32 = v40[0];
  v31 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v31;
  *(a1 + 2) = *(a2 + 2);
  return 1;
}

uint64_t sub_10010299C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    sub_100009708(a2, a3);
    sub_10010543C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
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

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
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
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        sub_100009708(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_100009708(v18, v17);
      v32 = __DataStorage._bytes.getter();
      if (v32)
      {
        v34 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    sub_100009708(v18, v17);
    v32 = __DataStorage._bytes.getter();
    if (v32)
    {
      v33 = __DataStorage._offset.getter();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    __DataStorage._length.getter();
    a3 = v44;
    sub_100100058(v32, a2, v44, v50);
    sub_1000092BC(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  sub_100009708(v18, v17);
LABEL_60:
  sub_100100058(v50, a2, a3, &v49);
  sub_1000092BC(v18, v17);
  if (!v49)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  sub_1000092BC(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  sub_100009708(v39, *(&v39 + 1));
  return 0;
}

uint64_t sub_100102E24(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_100004E70(&qword_1002004D8, &qword_1001ACBF0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - v8;
  v10 = *v2;
  sub_1001126D8(&qword_100203460, &qword_100203468, &protocol conformance descriptor for ISO18013IssuerSignedItem, &protocol conformance descriptor for <> CBOREncodedCBOR<A>);
  v32 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v30 = v10 + 56;
  v31 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v27 = v2;
    v28 = a1;
    v29 = ~v13;
    v26 = v7;
    v16 = v7 + 16;
    v15 = *(v7 + 16);
    v17 = *(v7 + 72);
    v18 = (v7 + 8);
    v25[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v19 = v15;
      v15(v9, *(v31 + 48) + v17 * v14, v6);
      sub_1001126D8(&qword_100203470, &qword_100203478, &protocol conformance descriptor for ISO18013IssuerSignedItem, &protocol conformance descriptor for <> CBOREncodedCBOR<A>);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *v18;
      (*v18)(v9, v6);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v29;
      v15 = v19;
      if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v27;
        a1 = v28;
        v7 = v26;
        goto LABEL_7;
      }
    }

    v21(v32, v6);
    v19(v28, *(v31 + 48) + v17 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v32;
    v15(v9, v32, v6);
    v33 = *v3;
    sub_1001058B4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v33;
    (*(v7 + 32))(a1, v23, v6);
    return 1;
  }
}

uint64_t sub_100103120(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for CocoaError.Code();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100004E70(&qword_100203690, &qword_1001ADED8);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      sub_100112C20(&qword_100203680, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

Swift::Int sub_10010347C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004E70(&qword_100203430, &qword_1001ADCE0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_1001036DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004E70(&qword_100203620, &qword_1001ADE78);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = static Hasher._hash(seed:_:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_100103900(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004E70(&qword_100203590, &qword_1001ADDF8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
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
    v35 = v4;
    while (1)
    {
      if (!v10)
      {
        v15 = v6;
        while (1)
        {
          v6 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_41;
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
            v36 = (v16 - 1) & v16;
            goto LABEL_15;
          }
        }

        v32 = 1 << *(v3 + 32);
        if (v32 >= 64)
        {
          bzero(v7, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v32;
        }

        v2 = v33;
        *(v3 + 16) = 0;
        break;
      }

      v14 = __clz(__rbit64(v10));
      v36 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      if (v17 >> 62)
      {
        v31 = _CocoaArrayWrapper.endIndex.getter();
        Hasher._combine(_:)(v31);
        v18 = _CocoaArrayWrapper.endIndex.getter();
        if (!v18)
        {
          goto LABEL_24;
        }
      }

      else
      {
        Hasher._combine(_:)(*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10));
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_24;
        }
      }

      if (v18 < 1)
      {
        goto LABEL_42;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v19 = 0;
        do
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          ++v19;
          type metadata accessor for SecCertificate(0);
          sub_100112C20(&qword_100203598, type metadata accessor for SecCertificate, &unk_1001AADD8);
          _CFObject.hash(into:)();
          swift_unknownObjectRelease();
        }

        while (v18 != v19);
      }

      else
      {
        v20 = (v17 + 32);
        type metadata accessor for SecCertificate(0);
        sub_100112C20(&qword_100203598, type metadata accessor for SecCertificate, &unk_1001AADD8);
        do
        {
          v21 = *v20++;
          v22 = v21;
          _CFObject.hash(into:)();

          --v18;
        }

        while (v18);
      }

LABEL_24:
      v23 = Hasher._finalize()();
      v5 = v35;
      v24 = -1 << *(v35 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v35 + 48) + 8 * v13) = v17;
      ++*(v35 + 16);
      v3 = v34;
      v10 = v36;
    }
  }

  *v2 = v5;
}

Swift::Int sub_100103CB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004E70(&qword_100203558, &qword_1001ADDC8);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_30;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_100103F00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004E70(&qword_1002034B0, &qword_1001ADD30);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v39 = v1;
    v40 = (v3 + 56);
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
    v41 = v4 + 56;
    v42 = v10;
    v43 = v4;
    v44 = v3;
LABEL_7:
    if (v9)
    {
      v13 = __clz(__rbit64(v9));
      v48 = (v9 - 1) & v9;
LABEL_14:
      v16 = (*(v3 + 48) + 48 * (v13 | (v6 << 6)));
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v20 = v16[3];
      v21 = v16[4];
      v49 = v16[5];
      Hasher.init(_seed:)();
      v47 = v18;
      String.hash(into:)();
      v45 = v20;
      v46 = v19;
      String.hash(into:)();
      v22 = 1 << *(v21 + 32);
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v24 = v23 & *(v21 + 64);
      v25 = (v22 + 63) >> 6;

      v26 = 0;
      v27 = 0;
      if (v24)
      {
        while (1)
        {
          v28 = v27;
LABEL_23:
          v29 = *(*(v21 + 56) + 8 * (__clz(__rbit64(v24)) | (v28 << 6)));
          v24 &= v24 - 1;
          v52 = v57;
          v53 = v58;
          v54 = v59;
          v50 = v55;
          v51 = v56;

          String.hash(into:)();

          sub_10010B8E0(&v50, v29);

          v26 ^= Hasher._finalize()();
          if (!v24)
          {
            goto LABEL_19;
          }
        }
      }

      while (1)
      {
LABEL_19:
        v28 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
          goto LABEL_42;
        }

        if (v28 >= v25)
        {
          break;
        }

        v24 = *(v21 + 64 + 8 * v28);
        ++v27;
        if (v24)
        {
          v27 = v28;
          goto LABEL_23;
        }
      }

      Hasher._combine(_:)(v26);
      v30 = 1 << *(v49 + 32);
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      else
      {
        v31 = -1;
      }

      v32 = v31 & *(v49 + 64);
      v33 = (v30 + 63) >> 6;

      v34 = 0;
      for (i = 0; v32; v34 ^= Hasher._finalize()())
      {
        v36 = i;
LABEL_34:
        v37 = *(*(v49 + 56) + 8 * (__clz(__rbit64(v32)) | (v36 << 6)));
        v32 &= v32 - 1;
        v52 = v57;
        v53 = v58;
        v54 = v59;
        v50 = v55;
        v51 = v56;

        String.hash(into:)();

        sub_10010B784(&v50, v37);
      }

      while (1)
      {
        v36 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v36 >= v33)
        {

          Hasher._combine(_:)(v34);
          Hasher._finalize()();
          v5 = v43;
          v11 = _HashTable.nextHole(atOrAfter:)();
          *(v41 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
          v12 = (*(v43 + 48) + 48 * v11);
          *v12 = v17;
          v12[1] = v47;
          v12[2] = v46;
          v12[3] = v45;
          v12[4] = v21;
          v12[5] = v49;
          ++*(v43 + 16);
          v3 = v44;
          v10 = v42;
          v9 = v48;
          goto LABEL_7;
        }

        v32 = *(v49 + 64 + 8 * v36);
        ++i;
        if (v32)
        {
          i = v36;
          goto LABEL_34;
        }
      }

LABEL_42:
      __break(1u);
    }

    else
    {
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
          v38 = 1 << *(v3 + 32);
          if (v38 >= 64)
          {
            bzero(v40, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v40 = -1 << v38;
          }

          v2 = v39;
          *(v3 + 16) = 0;
          goto LABEL_40;
        }

        v15 = v40[v6];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v48 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_40:

    *v2 = v5;
  }
}