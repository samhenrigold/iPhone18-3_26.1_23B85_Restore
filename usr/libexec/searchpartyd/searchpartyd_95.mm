uint64_t sub_100A72CCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A72D3C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100A72DA4()
{
  result = qword_1016B43E8;
  if (!qword_1016B43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B43E8);
  }

  return result;
}

uint64_t type metadata accessor for BeaconPayloadV2(uint64_t a1)
{
  result = qword_1016B4448;
  if (!qword_1016B4448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100A72E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A72EE4(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BeaconPayloadMetaDataV2(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100A72FA0()
{
  result = qword_1016B4498;
  if (!qword_1016B4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4498);
  }

  return result;
}

unint64_t sub_100A72FF4()
{
  result = qword_1016B44A0;
  if (!qword_1016B44A0)
  {
    type metadata accessor for BeaconPayloadMetaDataV2(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B44A0);
  }

  return result;
}

unint64_t sub_100A7304C()
{
  result = qword_1016B44A8;
  if (!qword_1016B44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B44A8);
  }

  return result;
}

uint64_t sub_100A730A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100A730C4, 0, 0);
}

uint64_t sub_100A730C4()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100A73168;
  v2 = *(v0 + 24);

  return sub_100F03968(v2);
}

uint64_t sub_100A73168()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100A732E4;
  }

  else
  {
    v2 = sub_100A7327C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100A7327C()
{
  (*(v0 + 32))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A732E4()
{
  v1 = v0[7];
  v2 = v0[4];
  swift_errorRetain();
  v2(v1);

  (v0[4])(0);
  v3 = v0[1];

  return v3();
}

uint64_t sub_100A733EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100A73410, 0, 0);
}

uint64_t sub_100A73410()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100A734AC;

  return sub_100F03B60();
}

uint64_t sub_100A734AC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100A73628;
  }

  else
  {
    v2 = sub_100A735C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100A735C0()
{
  (*(v0 + 24))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A73628()
{
  v1 = v0[6];
  v2 = v0[3];
  swift_errorRetain();
  v2(v1);

  (v0[3])(0);
  v3 = v0[1];

  return v3();
}

uint64_t sub_100A7380C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return _swift_task_switch(sub_100A73830, 0, 0);
}

uint64_t sub_100A73830()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100A738D4;
  v2 = *(v0 + 32);

  return sub_100F03D48(v2);
}

uint64_t sub_100A738D4(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *v3;
  *(*v3 + 64) = a1;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v5 + 72) = a2;

    return _swift_task_switch(sub_100A73A24, 0, 0);
  }
}

uint64_t sub_100A73A24()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  if (*(v0 + 72))
  {
    *(v0 + 16) = v1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    swift_errorRetain();
    v2(0, v1);
    sub_1000BB578(v1, 1);
    sub_1000BB578(v1, 1);
  }

  else
  {
    v3 = v1;
    v2(v1, 0);
    sub_1000BB578(v1, 0);
    sub_1000BB578(v1, 0);
  }

  v4 = *(v0 + 8);

  return v4();
}

id sub_100A73E04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalFindableConnectionMaterialTrampoline();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100A73E6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100014650;

  return sub_100A7380C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100A73FA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_100A733EC(a1, v4, v5, v6, v7, v8);
}

void sub_100A74070(void *a1, void (**a2)(void, void))
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v6 = v16 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = objc_opt_self();
  _Block_copy(a2);
  v9 = [v8 currentConnection];
  if (v9)
  {
    v10 = v9;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a1;
    v12[5] = v10;
    v12[6] = sub_10026AE30;
    v12[7] = v7;
    v13 = a1;

    sub_10025EDD4(0, 0, v6, &unk_1013D5118, v12);
  }

  else
  {
    type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError(0);
    v16[0] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100A7427C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v14 = v16[1];
    v15 = _convertErrorToNSError(_:)();
    (a2)[2](a2, v15);
  }
}

unint64_t sub_100A7427C()
{
  result = qword_1016961D0;
  if (!qword_1016961D0)
  {
    type metadata accessor for SPLocalFindableConnectionMaterialMonitoringSessionError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016961D0);
  }

  return result;
}

uint64_t sub_100A742D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_100A730A0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100A743A8(uint64_t a1, unint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  __chkstk_darwin(v5 - 8);
  v7 = v40 - v6;
  CCCKG2ParamsP224Sha256Version2();
  v44 = 0;
  v8 = CCCKG2OwnerCreate();
  v41 = v8;
  if (v8 || (v18 = v44) == 0)
  {
    v9 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    v10 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    *(v11 + 56) = &type metadata for Int32;
    *(v11 + 64) = &protocol witness table for Int32;
    *(v11 + 32) = v8;
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "CCCKG2OwnerCreate: Error creating owner for collaborative key generation. Status: %d.", v39);

    CryptoError.init(rawValue:)();
    v12 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    v14 = v13;
    v15 = *(v12 - 8);
    v16 = *(v15 + 48);
    if (v16(v7, 1, v12) == 1)
    {
      (*(v15 + 104))(v14, enum case for CryptoError.unspecifiedError(_:), v12);
      if (v16(v7, 1, v12) != 1)
      {
        sub_100A80D74(v7);
      }
    }

    else
    {
      (*(v15 + 32))(v14, v7, v12);
    }

    return swift_willThrow();
  }

  type metadata accessor for CollaborativeKeyGen.v2.OwnerContext();
  *(swift_allocObject() + 16) = v18;
  CommitmentSize = CCCKG2GetCommitmentSize();
  ShareSize = CCCKG2GetShareSize();
  v21 = ShareSize;
  v22 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v22)
    {
      v40[0] = a1;
      LOWORD(v40[1]) = a2;
      BYTE2(v40[1]) = BYTE2(a2);
      BYTE3(v40[1]) = BYTE3(a2);
      BYTE4(v40[1]) = BYTE4(a2);
      ShareSize = ShareSize;
      BYTE5(v40[1]) = BYTE5(a2);
LABEL_26:
      v42 = sub_100845C88(ShareSize);
      v43 = v36;
      v35 = v40;
LABEL_27:
      sub_100A7B328(&v42, &v41, &v44, v35, CommitmentSize, v21);
      result = v42;
      v29 = v43;
      if (v2)
      {
        goto LABEL_28;
      }

      return result;
    }

    if (a1 <= a1 >> 32)
    {
      v30 = __DataStorage._bytes.getter();
      if (v30)
      {
        v31 = v30;
        v32 = __DataStorage._offset.getter();
        if (!__OFSUB__(a1, v32))
        {
          v33 = (a1 - v32 + v31);
          __DataStorage._length.getter();
          if (v33)
          {
            v42 = sub_100845C88(v21);
            v43 = v34;
            v35 = v33;
            goto LABEL_27;
          }

LABEL_30:
          v37 = type metadata accessor for CryptoError();
          sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
          swift_allocError();
          (*(*(v37 - 8) + 104))(v38, enum case for CryptoError.memoryFailure(_:), v37);
          swift_willThrow();
        }

LABEL_35:
        __break(1u);
      }

LABEL_29:
      __DataStorage._length.getter();
      goto LABEL_30;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v22 != 2)
  {
    memset(v40, 0, 14);
    ShareSize = ShareSize;
    goto LABEL_26;
  }

  v23 = *(a1 + 16);
  v24 = __DataStorage._bytes.getter();
  if (!v24)
  {
    goto LABEL_29;
  }

  v25 = v24;
  v26 = __DataStorage._offset.getter();
  if (__OFSUB__(v23, v26))
  {
    goto LABEL_34;
  }

  v27 = v23 - v26 + v25;
  __DataStorage._length.getter();
  if (!v27)
  {
    goto LABEL_30;
  }

  v42 = sub_100845C88(v21);
  v43 = v28;
  sub_100A7B328(&v42, &v41, &v44, v27, CommitmentSize, v21);
  if (v2)
  {
    result = v42;
    v29 = v43;
LABEL_28:
    sub_100016590(result, v29);
  }

  return v42;
}

uint64_t sub_100A7491C(uint64_t a1, unint64_t a2)
{
  v5 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  __chkstk_darwin(v5 - 8);
  v7 = v39 - v6;
  v43 = 0;
  v8 = CCCKGOwnerCreate();
  v40 = v8;
  if (v8 || (v18 = v43) == 0)
  {
    v9 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    v10 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    *(v11 + 56) = &type metadata for Int32;
    *(v11 + 64) = &protocol witness table for Int32;
    *(v11 + 32) = v8;
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "CCCKGOwnerCreate: Error creating owner for collaborative key generation. Status: %d.", v38);

    CryptoError.init(rawValue:)();
    v12 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    v14 = v13;
    v15 = *(v12 - 8);
    v16 = *(v15 + 48);
    if (v16(v7, 1, v12) == 1)
    {
      (*(v15 + 104))(v14, enum case for CryptoError.unspecifiedError(_:), v12);
      if (v16(v7, 1, v12) != 1)
      {
        sub_100A80D74(v7);
      }
    }

    else
    {
      (*(v15 + 32))(v14, v7, v12);
    }

    return swift_willThrow();
  }

  type metadata accessor for CollaborativeKeyGen.v1.OwnerContext();
  *(swift_allocObject() + 16) = v18;
  v19 = CCCKGGetShareSize();
  v20 = v19;
  v21 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v21)
    {
      v39[0] = a1;
      LOWORD(v39[1]) = a2;
      BYTE2(v39[1]) = BYTE2(a2);
      BYTE3(v39[1]) = BYTE3(a2);
      BYTE4(v39[1]) = BYTE4(a2);
      v19 = v19;
      BYTE5(v39[1]) = BYTE5(a2);
LABEL_26:
      v41 = sub_100845C88(v19);
      v42 = v35;
      v34 = v39;
LABEL_27:
      sub_100A7BFB8(&v41, &v40, &v43, v34, v20);
      result = v41;
      v28 = v42;
      if (v2)
      {
        goto LABEL_28;
      }

      return result;
    }

    if (a1 <= a1 >> 32)
    {
      v29 = __DataStorage._bytes.getter();
      if (v29)
      {
        v30 = v29;
        v31 = __DataStorage._offset.getter();
        if (!__OFSUB__(a1, v31))
        {
          v32 = (a1 - v31 + v30);
          __DataStorage._length.getter();
          if (v32)
          {
            v41 = sub_100845C88(v20);
            v42 = v33;
            v34 = v32;
            goto LABEL_27;
          }

LABEL_30:
          v36 = type metadata accessor for CryptoError();
          sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
          swift_allocError();
          (*(*(v36 - 8) + 104))(v37, enum case for CryptoError.memoryFailure(_:), v36);
          swift_willThrow();
        }

LABEL_35:
        __break(1u);
      }

LABEL_29:
      __DataStorage._length.getter();
      goto LABEL_30;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v21 != 2)
  {
    memset(v39, 0, 14);
    v19 = v19;
    goto LABEL_26;
  }

  v22 = *(a1 + 16);
  v23 = __DataStorage._bytes.getter();
  if (!v23)
  {
    goto LABEL_29;
  }

  v24 = v23;
  v25 = __DataStorage._offset.getter();
  if (__OFSUB__(v22, v25))
  {
    goto LABEL_34;
  }

  v26 = v22 - v25 + v24;
  __DataStorage._length.getter();
  if (!v26)
  {
    goto LABEL_30;
  }

  v41 = sub_100845C88(v20);
  v42 = v27;
  sub_100A7BFB8(&v41, &v40, &v43, v26, v20);
  if (v2)
  {
    result = v41;
    v28 = v42;
LABEL_28:
    sub_100016590(result, v28);
  }

  return v41;
}

__n128 sub_100A74E80@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  CCCKG2ParamsP224Sha256Version2();
  OpeningSize = CCCKG2GetOpeningSize();

  sub_1001003F4(a2, a3, a1, OpeningSize, v13);
  if (!v5)
  {
    v12 = v13[3];
    a4[2] = v13[2];
    a4[3] = v12;
    a4[4] = v13[4];
    result = v13[1];
    *a4 = v13[0];
    a4[1] = result;
  }

  return result;
}

__n128 sub_100A74F14@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v10 = CCCKGGetOpeningSize();

  sub_1003F141C(a2, a3, a1, v10, v13);
  if (!v5)
  {
    v12 = v13[3];
    a4[2] = v13[2];
    a4[3] = v12;
    a4[4] = v13[4];
    result = v13[1];
    *a4 = v13[0];
    a4[1] = result;
  }

  return result;
}

uint64_t sub_100A74FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const __CFString *a7)
{
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v9;
  type metadata accessor for CFString(0);
  v11 = v10;
  *(inited + 72) = v10;
  *(inited + 48) = kSecAttrKeyClassPublic;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v12;
  *(inited + 120) = v11;
  *(inited + 96) = kSecAttrKeyTypeEC;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v13;
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = 256;
  v14 = kSecAttrKeyClassPublic;
  v15 = kSecAttrKeyTypeEC;
  sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
  swift_arrayDestroy();
  error = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v17 = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = SecKeyCreateWithData(isa, v17, &error);

  if (v18)
  {
    if (SecKeyIsAlgorithmSupported(v18, kSecKeyOperationTypeVerify, a7))
    {
      v45 = 0;
      v19 = Data._bridgeToObjectiveC()().super.isa;
      v20 = Data._bridgeToObjectiveC()().super.isa;
      v21 = SecKeyVerifySignature(v18, a7, v19, v20, &v45);

      if (v21)
      {
LABEL_18:

        return 1;
      }

      v22 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v23 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_101385D80;
      sub_1000BC4D4(&qword_1016A2050, &qword_1013AA360);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = sub_100008C00();
      *(v24 + 32) = v25;
      *(v24 + 40) = v27;
      os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "SignatureVerification: Error validating signature. Error - %@", 61, 2, v24);

      v28 = error;
      if (error)
      {
        type metadata accessor for CFError(0);
        sub_100A80DDC(&qword_1016B47F0, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
        swift_allocError();
        *v29 = v28;
LABEL_17:
        swift_willThrow();
        goto LABEL_18;
      }
    }

    else
    {
      v38 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        v44 = v38;
        swift_once();
        v38 = v44;
      }

      os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, qword_10177BA00, "SignatureVerification: Key does not support algorithm.", 54, 2, _swiftEmptyArrayStorage);
    }

    v39 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    (*(*(v39 - 8) + 104))(v40, enum case for CryptoError.unspecifiedError(_:), v39);
    goto LABEL_17;
  }

  v30 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    swift_once();
  }

  v31 = qword_10177BA00;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_101385D80;
  v45 = error;
  sub_1000BC4D4(&qword_1016A2050, &qword_1013AA360);
  v33 = String.init<A>(describing:)();
  v35 = v34;
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = sub_100008C00();
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v31, "SignatureVerification: Error serializing public key. Error - %@", 63, 2, v32);

  v36 = error;
  if (error)
  {
    type metadata accessor for CFError(0);
    sub_100A80DDC(&qword_1016B47F0, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
    swift_allocError();
    *v37 = v36;
  }

  else
  {
    v42 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    (*(*(v42 - 8) + 104))(v43, enum case for CryptoError.invalidKey(_:), v42);
  }

  swift_willThrow();
  return 1;
}

uint64_t sub_100A7563C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  __chkstk_darwin(v8 - 8);
  v10 = &v97 - v9;
  v11 = String.utf8Data.getter();
  v13 = v11;
  v14 = v12;
  if (!a3)
  {
    sub_100016590(v11, v12);
    sub_100017D5C(a1, a2);
    return a1;
  }

  v98 = v10;
  sub_100017D5C(a1, a2);
  v15 = v14 >> 62;
  v114 = v13;
  v111 = v13 >> 32;
  v112 = HIDWORD(v13);
  v16 = __OFSUB__(HIDWORD(v13), v13);
  v101 = v16;
  v100 = HIDWORD(v13) - v13;
  v109 = v14 >> 40;
  v110 = BYTE6(v14);
  v107 = v14 >> 24;
  v108 = HIDWORD(v14);
  v105 = v14 >> 8;
  v106 = v14 >> 16;
  v103 = HIWORD(v13);
  v104 = HIBYTE(v13);
  v115 = v13;
  v102 = v13 >> 40;
  v113 = v14;
  v99 = v14 >> 62;
  while (1)
  {
    v17 = objc_autoreleasePoolPush();
    type metadata accessor for __DataStorage();
    LODWORD(v18) = swift_allocObject();
    sub_100017D5C(a1, a2);
    v19 = __DataStorage.init(length:)();
    v119 = 0x2000000000;
    v120 = v19 | 0x4000000000000000;
    if (v15 <= 1)
    {
      break;
    }

    if (v15 == 2)
    {
      v26 = v4;
      v4 = v17;
      v17 = *(v115 + 16);
      v27 = __DataStorage._bytes.getter();
      if (!v27)
      {
        __DataStorage._length.getter();
LABEL_119:
        v90 = type metadata accessor for CryptoError();
        sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
        swift_allocError();
        (*(*(v90 - 8) + 104))(v91, enum case for CryptoError.memoryFailure(_:), v90);
        swift_willThrow();
        sub_100016590(a1, a2);
        v17 = v4;
        goto LABEL_127;
      }

      v28 = v27;
      LODWORD(v18) = v14;
      v29 = __DataStorage._offset.getter();
      if (__OFSUB__(v17, v29))
      {
        goto LABEL_136;
      }

      v30 = &v17[v28 - v29];
      LODWORD(v18) = v14;
      __DataStorage._length.getter();
      if (!v30)
      {
        goto LABEL_119;
      }

      v117[0] = 0;
      if (__OFSUB__(*(v115 + 24), *(v115 + 16)))
      {
        goto LABEL_138;
      }

      v17 = v4;
      if (CCKDFParametersCreateAnsiX963())
      {
        LODWORD(v18) = -4300;
        v4 = v26;
LABEL_76:
        v14 = v113;
        LODWORD(v15) = v99;
        goto LABEL_88;
      }

      v37 = a2 >> 62;
      if ((a2 >> 62) > 1)
      {
        if (v37 == 2)
        {
          v46 = *(a1 + 16);
          v47 = __DataStorage._bytes.getter();
          if (!v47)
          {
            goto LABEL_123;
          }

          v48 = v47;
          v49 = __DataStorage._offset.getter();
          v50 = v46 - v49;
          if (__OFSUB__(v46, v49))
          {
            goto LABEL_149;
          }

          goto LABEL_70;
        }

        memset(v116, 0, 14);
LABEL_73:
        sub_100017D5C(a1, a2);
        v63 = v116;
      }

      else
      {
        if (!v37)
        {
          v116[0] = a1;
          LOWORD(v116[1]) = a2;
          BYTE2(v116[1]) = BYTE2(a2);
          BYTE3(v116[1]) = BYTE3(a2);
          BYTE4(v116[1]) = BYTE4(a2);
          BYTE5(v116[1]) = BYTE5(a2);
          goto LABEL_73;
        }

        if (a1 > a1 >> 32)
        {
          goto LABEL_147;
        }

        v60 = __DataStorage._bytes.getter();
        if (!v60)
        {
          goto LABEL_123;
        }

        v48 = v60;
        v61 = __DataStorage._offset.getter();
        v50 = a1 - v61;
        if (__OFSUB__(a1, v61))
        {
          goto LABEL_150;
        }

LABEL_70:
        v62 = (v50 + v48);
        __DataStorage._length.getter();
        v17 = v4;
        if (!v62)
        {
          goto LABEL_124;
        }

        sub_100017D5C(a1, a2);
        v63 = v62;
      }

      v64 = sub_100A7E758(&v119, v117, v63, a1, a2, 32);
      v4 = v26;
      if (v26)
      {
        goto LABEL_122;
      }

      LODWORD(v18) = v64;
      sub_100016590(a1, a2);
      goto LABEL_76;
    }

    memset(v116, 0, 14);
    v118 = 0;
    if (CCKDFParametersCreateAnsiX963())
    {
      goto LABEL_33;
    }

    v36 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v36 == 2)
      {
        v21 = v4;
        v4 = v17;
        v41 = *(a1 + 16);
        v42 = __DataStorage._bytes.getter();
        if (!v42)
        {
          goto LABEL_123;
        }

        v23 = v42;
        v43 = __DataStorage._offset.getter();
        v25 = v41 - v43;
        if (__OFSUB__(v41, v43))
        {
          goto LABEL_143;
        }

        goto LABEL_65;
      }

      goto LABEL_50;
    }

    if (v36)
    {
      v21 = v4;
      v4 = v17;
      if (a1 > a1 >> 32)
      {
        goto LABEL_142;
      }

      v56 = __DataStorage._bytes.getter();
      if (!v56)
      {
        goto LABEL_123;
      }

      v23 = v56;
      v57 = __DataStorage._offset.getter();
      v25 = a1 - v57;
      if (__OFSUB__(a1, v57))
      {
        goto LABEL_145;
      }

      goto LABEL_65;
    }

LABEL_36:
    v117[0] = a1;
    LOWORD(v117[1]) = a2;
    BYTE2(v117[1]) = BYTE2(a2);
    BYTE3(v117[1]) = BYTE3(a2);
    BYTE4(v117[1]) = BYTE4(a2);
    BYTE5(v117[1]) = BYTE5(a2);
LABEL_51:
    sub_100017D5C(a1, a2);
    v44 = &v118;
    v45 = v117;
LABEL_86:
    v68 = sub_100A7E758(&v119, v44, v45, a1, a2, 32);
    if (v4)
    {
      sub_100016590(a1, a2);
      goto LABEL_129;
    }

    LODWORD(v18) = v68;
    sub_100016590(a1, a2);
LABEL_88:
    if (v18)
    {
      v4 = v17;
      v17 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        goto LABEL_140;
      }

      goto LABEL_103;
    }

    sub_100016590(a1, a2);
    v69 = v119;
    v18 = v120;
    sub_100017D5C(v119, v120);
    sub_100016590(v69, v18);
    v70 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v70 != 2)
      {
        v84 = 0;
        goto LABEL_117;
      }

      v72 = *(v69 + 16);
      v71 = *(v69 + 24);
      v73 = __OFSUB__(v71, v72);
      v74 = v71 - v72;
      if (v73)
      {
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
        swift_once();
LABEL_103:
        v75 = qword_10177BA00;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_101385D80;
        *(v76 + 56) = &type metadata for Int32;
        *(v76 + 64) = &protocol witness table for Int32;
        *(v76 + 32) = v18;
        os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v75, "Error running CCDeriveKey. Code: %d.", v97);

        v77 = v98;
        CryptoError.init(rawValue:)();
        v78 = type metadata accessor for CryptoError();
        sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
        swift_allocError();
        v114 = v79;
        v80 = *(v78 - 8);
        v81 = *(v80 + 48);
        if (v81(v77, 1, v78) == 1)
        {
          (*(v80 + 104))(v114, enum case for CryptoError.unspecifiedError(_:), v78);
          v82 = v81(v77, 1, v78) == 1;
          v83 = v77;
          v17 = v4;
          if (!v82)
          {
            sub_100A80D74(v83);
          }
        }

        else
        {
          (*(v80 + 32))(v114, v77, v78);
          v17 = v4;
        }

LABEL_125:
        swift_willThrow();
LABEL_126:
        sub_100016590(a1, a2);
LABEL_127:
        v14 = v113;
        goto LABEL_130;
      }

      if (v74 != 32)
      {
        goto LABEL_106;
      }
    }

    else if (v70)
    {
      if (__OFSUB__(HIDWORD(v69), v69))
      {
        goto LABEL_134;
      }

      if (HIDWORD(v69) - v69 != 32)
      {
LABEL_106:
        if (v70 == 2)
        {
          v86 = *(v69 + 16);
          v85 = *(v69 + 24);
          v84 = v85 - v86;
          if (__OFSUB__(v85, v86))
          {
            __break(1u);
            goto LABEL_116;
          }
        }

        else
        {
          if (v70 == 1)
          {
            if (!__OFSUB__(HIDWORD(v69), v69))
            {
              v84 = HIDWORD(v69) - v69;
              goto LABEL_117;
            }

LABEL_153:
            __break(1u);
          }

LABEL_116:
          v84 = BYTE6(v18);
        }

LABEL_117:
        sub_100018350();
        swift_allocError();
        *v87 = 32;
        *(v87 + 8) = v84;
        *(v87 + 16) = 0;
        swift_willThrow();
        v88 = v69;
        v89 = v18;
        goto LABEL_131;
      }
    }

    else if (BYTE6(v18) != 32)
    {
      goto LABEL_106;
    }

    objc_autoreleasePoolPop(v17);
    sub_100016590(a1, a2);
    a1 = v69;
    a2 = v18;
    if (!--a3)
    {
      sub_100016590(v115, v14);
      return v69;
    }
  }

  if (!v15)
  {
    LODWORD(v116[0]) = v115;
    BYTE4(v116[0]) = v112;
    BYTE5(v116[0]) = v102;
    BYTE6(v116[0]) = v103;
    HIBYTE(v116[0]) = v104;
    LOBYTE(v116[1]) = v14;
    BYTE1(v116[1]) = v105;
    BYTE2(v116[1]) = v106;
    BYTE3(v116[1]) = v107;
    BYTE4(v116[1]) = v108;
    BYTE5(v116[1]) = v109;
    v118 = 0;
    if (CCKDFParametersCreateAnsiX963())
    {
      goto LABEL_33;
    }

    v20 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v20 == 2)
      {
        v21 = v4;
        v4 = v17;
        v38 = *(a1 + 16);
        v39 = __DataStorage._bytes.getter();
        if (!v39)
        {
          goto LABEL_123;
        }

        v23 = v39;
        v40 = __DataStorage._offset.getter();
        v25 = v38 - v40;
        if (__OFSUB__(v38, v40))
        {
          goto LABEL_144;
        }

LABEL_65:
        v58 = v25 + v23;
        __DataStorage._length.getter();
        v17 = v4;
        if (!v58)
        {
          goto LABEL_124;
        }

        sub_100017D5C(a1, a2);
        v59 = &v118;
LABEL_82:
        v67 = sub_100A7E758(&v119, v59, v58, a1, a2, 32);
        v4 = v21;
        if (v21)
        {
LABEL_122:
          sub_100016590(a1, a2);
          goto LABEL_126;
        }

        LODWORD(v18) = v67;
        sub_100016590(a1, a2);
        v14 = v113;
        goto LABEL_88;
      }

LABEL_50:
      memset(v117, 0, 14);
      goto LABEL_51;
    }

    if (v20)
    {
      v21 = v4;
      v4 = v17;
      if (a1 > a1 >> 32)
      {
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
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
        goto LABEL_153;
      }

      v22 = __DataStorage._bytes.getter();
      if (!v22)
      {
        goto LABEL_123;
      }

      v23 = v22;
      v24 = __DataStorage._offset.getter();
      v25 = a1 - v24;
      if (__OFSUB__(a1, v24))
      {
        goto LABEL_146;
      }

      goto LABEL_65;
    }

    goto LABEL_36;
  }

  if (v111 < v114)
  {
    goto LABEL_135;
  }

  v31 = __DataStorage._bytes.getter();
  if (v31)
  {
    v32 = v31;
    LODWORD(v18) = v14;
    v33 = __DataStorage._offset.getter();
    if (__OFSUB__(v114, v33))
    {
      goto LABEL_137;
    }

    v34 = v114 - v33 + v32;
    LODWORD(v18) = v14;
    __DataStorage._length.getter();
    if (!v34)
    {
      goto LABEL_121;
    }

    v117[0] = 0;
    if (v101)
    {
      goto LABEL_139;
    }

    if (CCKDFParametersCreateAnsiX963())
    {
LABEL_33:
      LODWORD(v18) = -4300;
      goto LABEL_88;
    }

    v35 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v35 != 2)
      {
        memset(v116, 0, 14);
        goto LABEL_85;
      }

      v21 = v4;
      v4 = v17;
      v51 = *(a1 + 16);
      v52 = __DataStorage._bytes.getter();
      if (!v52)
      {
        goto LABEL_123;
      }

      v53 = v52;
      v54 = __DataStorage._offset.getter();
      v55 = v51 - v54;
      if (__OFSUB__(v51, v54))
      {
        goto LABEL_151;
      }
    }

    else
    {
      if (!v35)
      {
        v116[0] = a1;
        LOWORD(v116[1]) = a2;
        BYTE2(v116[1]) = BYTE2(a2);
        BYTE3(v116[1]) = BYTE3(a2);
        BYTE4(v116[1]) = BYTE4(a2);
        BYTE5(v116[1]) = BYTE5(a2);
LABEL_85:
        sub_100017D5C(a1, a2);
        v44 = v117;
        v45 = v116;
        goto LABEL_86;
      }

      v21 = v4;
      v4 = v17;
      if (a1 > a1 >> 32)
      {
        goto LABEL_148;
      }

      v65 = __DataStorage._bytes.getter();
      if (!v65)
      {
LABEL_123:
        __DataStorage._length.getter();
        v17 = v4;
LABEL_124:
        v94 = type metadata accessor for CryptoError();
        sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
        swift_allocError();
        (*(*(v94 - 8) + 104))(v95, enum case for CryptoError.memoryFailure(_:), v94);
        goto LABEL_125;
      }

      v53 = v65;
      v66 = __DataStorage._offset.getter();
      v55 = a1 - v66;
      if (__OFSUB__(a1, v66))
      {
        goto LABEL_152;
      }
    }

    v58 = v55 + v53;
    __DataStorage._length.getter();
    v17 = v4;
    if (!v58)
    {
      goto LABEL_124;
    }

    sub_100017D5C(a1, a2);
    v59 = v117;
    goto LABEL_82;
  }

  __DataStorage._length.getter();
LABEL_121:
  v92 = type metadata accessor for CryptoError();
  sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
  swift_allocError();
  (*(*(v92 - 8) + 104))(v93, enum case for CryptoError.memoryFailure(_:), v92);
  swift_willThrow();
LABEL_129:
  sub_100016590(a1, a2);
LABEL_130:
  v88 = v119;
  v89 = v120;
LABEL_131:
  sub_100016590(v88, v89);
  objc_autoreleasePoolPop(v17);
  sub_100016590(v115, v14);
  sub_100016590(a1, a2);
  return a1;
}

uint64_t sub_100A76468@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X7>, uint64_t *a9@<X8>)
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v66 = 0x7365547265646E75;
  v67 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((a7 & 1) != 0 || v68)
  {
    result = sub_100A7563C(a5, a6, 1);
    if (!v9)
    {
      v21 = result;
      v22 = v20;
      v24 = String.utf8Data.getter();
      v25 = v23;
      v26 = sub_100A79CBC(v21, v22, v24, v23, 72);
      sub_100495DF4(v26, v28, &v66);
      sub_100016590(v24, v25);
      v30 = v66;
      v29 = v67;
      if (a2 >> 60 == 15)
      {
        sub_100017D5C(v66, v67);
        v31 = sub_100A7A194(a3, a4, 0, 0);
        v33 = sub_100A7A73C(v31, 0, v30, v29);
        CCECCryptorRelease();
        sub_100016590(v30, v29);
        v34 = sub_100A7829C(v33, 0, 0);
        v36 = v35;
        sub_100017D5C(v34, v35);
        v59 = sub_10049C0AC(v34, v36);
        v60 = v41;
        CCECCryptorRelease();
        sub_100016590(v34, v36);
        v42 = a1;
      }

      else
      {
        sub_10002E98C(a1, a2);
        sub_100017D5C(v30, v29);
        v32 = sub_100A7A194(a1, a2, 0, 1);
        v37 = sub_100A7A73C(v32, 1uLL, v30, v29);
        CCECCryptorRelease();
        sub_100016590(v30, v29);
        v38 = sub_100A7829C(v37, 1, 0);
        v40 = v39;
        v57 = sub_100A7829C(v37, 0, 0);
        v58 = v50;
        sub_100017D5C(v38, v40);
        v51 = sub_10049BD68(v38, v40);
        v55 = v52;
        v56 = v51;
        sub_100017D5C(v57, v58);
        v59 = sub_10049C0AC(v57, v58);
        v60 = v54;
        CCECCryptorRelease();
        sub_100016590(v57, v58);
        sub_100016590(v38, v40);
        sub_100006654(a1, a2);
        a2 = v55;
        v42 = v56;
      }

      v43 = *a8;
      v44 = a8[1];
      *a8 = v21;
      a8[1] = v22;
      sub_100017D5C(v21, v22);
      sub_100016590(v43, v44);
      v45 = String.utf8Data.getter();
      v47 = v46;
      v48 = sub_100A79CBC(v21, v22, v45, v46, 32);
      sub_1004A4714(v48, v49, &v66);
      sub_100016590(v45, v47);
      v63 = v67;
      v65 = v66;
      sub_100017D5C(v59, v60);
      sub_10002E98C(v42, a2);
      sub_100006654(v42, a2);
      sub_100016590(v59, v60);
      sub_100016590(v21, v22);
      result = sub_100016590(v30, v29);
      *a9 = v65;
      a9[1] = v63;
      a9[2] = v59;
      a9[3] = v60;
      a9[4] = v42;
      a9[5] = a2;
    }
  }

  else
  {
    v16 = [objc_opt_self() sharedInstance];
    v17 = [v16 isInternalBuild];

    if (v17)
    {
      v18 = static os_log_type_t.fault.getter();
    }

    else
    {
      v18 = static os_log_type_t.error.getter();
    }

    if (qword_101694BE0 != -1)
    {
      v53 = v18;
      swift_once();
      v18 = v53;
    }

    sub_1001BAF88();
    swift_allocError();
    *v27 = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100A76B00()
{
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_10177BA00 = result;
  return result;
}

uint64_t sub_100A76B6C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B4878, &qword_1013D6090);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_100A8124C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = *v3;
  v20 = *(v3 + 2);
  v15 = *v3;
  *&v16 = *(v3 + 2);
  v21 = 0;
  sub_100A813B0(&v19, v14);
  sub_100A813E8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(*(&v15 + 1), v16);
  if (!v2)
  {
    v9 = *(v3 + 40);
    v18[0] = *(v3 + 24);
    v18[1] = v9;
    v18[2] = *(v3 + 56);
    v10 = *(v3 + 40);
    v15 = *(v3 + 24);
    v16 = v10;
    v17 = *(v3 + 56);
    v21 = 1;
    sub_100A8143C(v18, v14);
    sub_100A81474();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v16;
    v12 = v17;
    sub_100006654(v15, *(&v15 + 1));
    sub_100016590(v11, *(&v11 + 1));
    sub_100006654(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100A76D88(uint64_t a1)
{
  *v9 = *v1;
  v10 = *(v1 + 16);
  Hasher._combine(_:)(v9[0]);
  v11 = *(v1 + 8);
  sub_100A80E24(&v11, &v8);
  Data.hash(into:)();
  sub_100429CD4(v9);
  v2 = *(v1 + 32);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *(v1 + 24);
    Hasher._combine(_:)(1u);
    sub_100017D5C(v5, v2);
    Data.hash(into:)();
    sub_100006654(v5, v2);
  }

  v7 = *(v1 + 40);
  v8 = v7;
  sub_100A80E24(&v8, &v6);
  Data.hash(into:)();
  sub_100A80E80(&v7);
  if (v4 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_100017D5C(v3, v4);
    Data.hash(into:)();
    sub_100006654(v3, v4);
  }
}

Swift::Int sub_100A76ED8()
{
  Hasher.init(_seed:)();
  *v9 = *v0;
  *&v9[16] = *(v0 + 16);
  Hasher._combine(_:)(*v9);
  v10 = *&v9[8];
  sub_100A80E24(&v10, &v8);
  Data.hash(into:)();
  sub_100429CD4(v9);
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  if (v1 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v0 + 24);
    Hasher._combine(_:)(1u);
    sub_100017D5C(v4, v1);
    Data.hash(into:)();
    sub_100006654(v4, v1);
  }

  v7 = *(v0 + 40);
  v8 = v7;
  sub_100A80E24(&v8, v6);
  Data.hash(into:)();
  sub_100A80E80(&v7);
  if (v3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_100017D5C(v2, v3);
    Data.hash(into:)();
    sub_100006654(v2, v3);
  }

  return Hasher._finalize()();
}

uint64_t sub_100A7704C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B4808, &qword_1013D5A58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_100A80ED4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_1000D2A70(&v16, v11, &qword_1016B4810, &qword_1013D5A60);
  sub_10049F488();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  sub_100006654(v13, *(&v13 + 1));
  if (!v2)
  {
    v15 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_10012C094(&v15, v11);
    sub_10049E410();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v13 = v3[2];
    v14 = v13;
    v12 = 2;
    sub_1000D2A70(&v14, v11, &qword_1016B4818, &qword_1013D5A68);
    sub_10049DF20();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100A77290(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *v1;
    Hasher._combine(_:)(1u);
    sub_100017D5C(v3, v2);
    Data.hash(into:)();
    sub_100006654(v3, v2);
  }

  v7 = *(v1 + 16);
  v8 = v7;
  sub_100A80E24(&v8, &v6);
  Data.hash(into:)();
  sub_100A80E80(&v7);
  v4 = *(v1 + 40);
  if (v4 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *(v1 + 32);
    Hasher._combine(_:)(1u);
    sub_100017D5C(v5, v4);
    Data.hash(into:)();
    sub_100006654(v5, v4);
  }
}

Swift::Int sub_100A77394()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 8);
  if (v1 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *v0;
    Hasher._combine(_:)(1u);
    sub_100017D5C(v2, v1);
    Data.hash(into:)();
    sub_100006654(v2, v1);
  }

  v7 = *(v0 + 16);
  v8 = v7;
  sub_100A80E24(&v8, v6);
  Data.hash(into:)();
  sub_100A80E80(&v7);
  v3 = *(v0 + 40);
  if (v3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v0 + 32);
    Hasher._combine(_:)(1u);
    sub_100017D5C(v4, v3);
    Data.hash(into:)();
    sub_100006654(v4, v3);
  }

  return Hasher._finalize()();
}

uint64_t sub_100A774B8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = a4;
  v7 = sub_1000BC4D4(&qword_1016B48A0, &qword_1013D60A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_1000035D0(a1, a1[3]);
  sub_100A814C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = a3;
    v15 = v13;
    v16 = 1;
    sub_100017D5C(a3, v13);
    sub_100313230();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v14, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100A77654()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 1953393000;
  }
}

uint64_t sub_100A7768C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953393000 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010136B370 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100A77770(uint64_t a1)
{
  v2 = sub_100A8124C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A777AC(uint64_t a1)
{
  v2 = sub_100A8124C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100A777F0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  sub_100017D5C(v3, v5);
  Data.hash(into:)();
  sub_100016590(v3, v5);
  if (v7 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_100017D5C(v4, v7);
    Data.hash(into:)();
    sub_100006654(v4, v7);
  }

  sub_100017D5C(v6, v9);
  Data.hash(into:)();
  sub_100016590(v6, v9);
  if (v10 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_100017D5C(v8, v10);
    Data.hash(into:)();
    sub_100006654(v8, v10);
  }

  return Hasher._finalize()();
}

__n128 sub_100A7794C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100A7FDBC(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

BOOL sub_100A779B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 5);
  v15[0] = *(a1 + 3);
  v15[1] = v5;
  v6 = *(a1 + 7);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *(a2 + 7);
  v11 = *(a2 + 3);
  v16[1] = *(a2 + 5);
  v16[2] = v10;
  v15[2] = v6;
  v16[0] = v11;
  v13 = v2 == v7 && (sub_100017D5C(v3, v4), sub_100017D5C(v8, v9), v12 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v3, v4, v8, v9), sub_100016590(v8, v9), sub_100016590(v3, v4), v12) && sub_100A7E3CC(v15, v16);
  return v13;
}

uint64_t sub_100A77A8C()
{
  v1 = 0x654B63696C627570;
  if (*v0 != 1)
  {
    v1 = 0x4B65746176697270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656D7265746E69;
  }
}

uint64_t sub_100A77AFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100A8008C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100A77B24(uint64_t a1)
{
  v2 = sub_100A80ED4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A77B60(uint64_t a1)
{
  v2 = sub_100A80ED4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100A77BA4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  Hasher.init(_seed:)();
  if (v3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_100017D5C(v2, v3);
    Data.hash(into:)();
    sub_100006654(v2, v3);
  }

  sub_100017D5C(v4, v5);
  Data.hash(into:)();
  sub_100016590(v4, v5);
  if (v7 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_100017D5C(v6, v7);
    Data.hash(into:)();
    sub_100006654(v6, v7);
  }

  return Hasher._finalize()();
}

double sub_100A77CBC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100A801BC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

BOOL sub_100A77D18(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_100A7E3CC(v7, v8);
}

uint64_t sub_100A77D60()
{
  if (*v0)
  {
    return 0x6553646572616873;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_100A77DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6553646572616873 && a2 == 0xEC00000074657263)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100A77E7C(uint64_t a1)
{
  v2 = sub_100A814C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A77EB8(uint64_t a1)
{
  v2 = sub_100A814C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100A77EF4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  sub_100017D5C(v2, v3);
  Data.hash(into:)();
  sub_100016590(v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_100A77F70(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  Hasher._combine(_:)(*v1);
  sub_100017D5C(v2, v3);
  Data.hash(into:)();

  return sub_100016590(v2, v3);
}

Swift::Int sub_100A77FDC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  sub_100017D5C(v3, v4);
  Data.hash(into:)();
  sub_100016590(v3, v4);
  return Hasher._finalize()();
}

uint64_t sub_100A78054@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100A80484(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

BOOL sub_100A780A4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[1];
  v2 = a2[2];
  v5 = a1[1];
  v4 = a1[2];
  sub_100017D5C(v5, v4);
  sub_100017D5C(v3, v2);
  v6 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v4, v3, v2);
  sub_100016590(v3, v2);
  sub_100016590(v5, v4);
  return v6;
}

uint64_t CollaborativeKeyGen.v1.OwnerContext.__deallocating_deinit()
{
  CCCKGOwnerDestroy();

  return swift_deallocClassInstance();
}

uint64_t CollaborativeKeyGen.v1.ContributorContext.__deallocating_deinit()
{
  CCCKGContributorDestroy();

  return swift_deallocClassInstance();
}

uint64_t CollaborativeKeyGen.v2.OwnerContext.__deallocating_deinit()
{
  CCCKG2OwnerDestroy();

  return swift_deallocClassInstance();
}

uint64_t CollaborativeKeyGen.v2.ContributorContext.__deallocating_deinit()
{
  CCCKG2ContributorDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_100A7829C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  if (a2 == 1)
  {
    v10 = 85;
  }

  else
  {
    v10 = 57;
  }

  v26 = v10;
  v28 = sub_100845C88(v10);
  v29 = v11;
  v12 = sub_100A7AF80(&v28, a3, &v26, a2, a1);
  if (!v3)
  {
    v13 = v12;
    if (!v12)
    {
      v22 = v28;
      v23 = v29;
      v24 = v26;
      sub_100017D5C(v28, v29);
      sub_10002EA98(v24, v22, v23, &v27);
      sub_100016590(v22, v23);
      return v27;
    }

    v14 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    v15 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    *(v16 + 56) = &type metadata for Int32;
    *(v16 + 64) = &protocol witness table for Int32;
    *(v16 + 32) = v13;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Error running CCECCryptorExportKey. Code: %d.", v26);

    CryptoError.init(rawValue:)();
    v17 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    v19 = v18;
    v20 = *(v17 - 8);
    v21 = *(v20 + 48);
    if (v21(v9, 1, v17) == 1)
    {
      (*(v20 + 104))(v19, enum case for CryptoError.unspecifiedError(_:), v17);
      if (v21(v9, 1, v17) != 1)
      {
        sub_100A80D74(v9);
      }
    }

    else
    {
      (*(v20 + 32))(v19, v9, v17);
    }

    swift_willThrow();
  }

  return sub_100016590(v28, v29);
}

double sub_100A785D8@<D0>(uint64_t a1@<X8>)
{
  sub_100A7F75C(v12);
  if (!v1)
  {
    v4 = static Data.random(bytes:)();
    sub_1004A4714(v4, v5, v11);
    v6 = v11[0];
    v7 = v11[1];
    v14 = v12[0];
    v15 = v12[1];
    v13 = v12[2];
    sub_10012C038(&v15, v10);
    sub_10012C094(&v14, v10);
    sub_10012BFDC(&v13, v10);
    sub_100A80F28(v12);
    v9 = v14;
    v8 = v13;
    *a1 = v15;
    *(a1 + 16) = v9;
    result = 0.0;
    *(a1 + 32) = v8;
    *(a1 + 48) = xmmword_10138BBF0;
    *(a1 + 64) = v6;
    *(a1 + 72) = v7;
  }

  return result;
}

uint64_t sub_100A786A8()
{
  v1 = 0x4B65746176697270;
  if (*v0 != 1)
  {
    v1 = 0x6553646572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x654B63696C627570;
  }
}

uint64_t sub_100A78714@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100A80648(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100A7873C(uint64_t a1)
{
  v2 = sub_100A789D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A78778(uint64_t a1)
{
  v2 = sub_100A789D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t RootKey.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B4540, &qword_1013D5130);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_100A789D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = *v3;
  v13 = *v3;
  v12 = 0;
  sub_10012C094(&v16, v11);
  sub_10049E410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v13, *(&v13 + 1));
  if (!v2)
  {
    v15 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_10012C038(&v15, v11);
    sub_10049DF20();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v13 = v3[2];
    v14 = v13;
    v12 = 2;
    sub_10012BFDC(&v14, v11);
    sub_100313230();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100A789D8()
{
  result = qword_1016B4548;
  if (!qword_1016B4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4548);
  }

  return result;
}

double RootKey.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100A80774(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_100A78AB4()
{
  v1 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v22 = 0;
  v4 = CCCKGContributorCreate();
  v19 = v4;
  if (v4 || (v14 = v22) == 0)
  {
    v5 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    v6 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101385D80;
    *(v7 + 56) = &type metadata for Int32;
    *(v7 + 64) = &protocol witness table for Int32;
    *(v7 + 32) = v4;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "CCCKGOwnerCreate: Error creating owner for collaborative key generation. Status: %d.", v18);

    CryptoError.init(rawValue:)();
    v8 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    v10 = v9;
    v11 = *(v8 - 8);
    v12 = *(v11 + 48);
    if (v12(v3, 1, v8) == 1)
    {
      (*(v11 + 104))(v10, enum case for CryptoError.unspecifiedError(_:), v8);
      if (v12(v3, 1, v8) != 1)
      {
        sub_100A80D74(v3);
      }
    }

    else
    {
      (*(v11 + 32))(v10, v3, v8);
    }

    return swift_willThrow();
  }

  else
  {
    type metadata accessor for CollaborativeKeyGen.v1.ContributorContext();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v16 = CCCKGGetCommitmentSize();
    v20 = sub_100845C88(v16);
    v21 = v17;

    sub_100A7CC24(&v20, &v19, v15, v16);
    if (v0)
    {

      return sub_100016590(v20, v21);
    }

    else
    {
      return v20;
    }
  }
}

uint64_t sub_100A78DFC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, void *a3@<X8>)
{
  if (a1)
  {
    v7 = CCCKGGetShareSize();
    v8 = CCCKGGetOpeningSize();
    v14 = sub_100845C88(v8);
    v15 = v9;

    sub_101112EB0(&v14, a2, a1, v7, v8);
    result = v14;
    v11 = v15;
    if (v3)
    {
      return sub_100016590(v14, v15);
    }

    else
    {
      *a3 = v14;
      a3[1] = v11;
    }
  }

  else
  {
    v12 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for CryptoError.memoryFailure(_:), v12);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100A78F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(__int128 *__return_ptr, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  if (a1)
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();
    v21 = 0x4000000000;
    v22 = __DataStorage.init(length:)();

    a4(&v23, &v21, a2, a1, a3, 64);
    if (v5)
    {
    }

    else
    {
      v15 = v21;
      v14 = v22;
      v16 = v23;
      v18 = v24;
      v17 = v25;
      sub_100017D5C(v21, v22 | 0x4000000000000000);
      sub_10002EA98(32, v15, v14 | 0x4000000000000000, &v21);
      sub_1004A4714(v21, v22, &v23);
      v26 = *(&v23 + 1);
      v19 = v23;
      sub_100017D5C(v15, v14 | 0x4000000000000000);
      sub_100035310(32, v15, v14 | 0x4000000000000000, &v21);
      sub_1004A4714(v21, v22, &v23);

      *a5 = v16;
      *(a5 + 16) = v18;
      *(a5 + 24) = v17;
      v20 = v26;
      *(a5 + 32) = v19;
      *(a5 + 40) = v20;
      *(a5 + 48) = v23;
      *(a5 + 64) = xmmword_10138BBF0;
    }
  }

  else
  {
    v12 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for CryptoError.memoryFailure(_:), v12);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100A791E0(uint64_t a1, unint64_t a2)
{
  v3 = sub_100A7A194(a1, a2, 2, 0);
  if (v2)
  {
    v8 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    v9 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100008C00();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Error deriving advertisementKey: %@", 35, 2, v10);

    sub_1001BAF88();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
  }

  else
  {
    v4 = sub_100A7829C(v3, 0, 0);
    v6 = v5;
    CCECCryptorRelease();
    return sub_10049C0AC(v4, v6);
  }
}

void sub_100A79398(uint64_t *a1@<X4>, uint64_t *a2@<X8>)
{
  type metadata accessor for CFString(0);
  v4 = v3;
  v40 = v3;
  error[0] = kSecAttrKeyTypeEC;
  sub_1001E6224(error, v38);
  v5 = kSecAttrKeyType;
  v6 = kSecAttrKeyTypeEC;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFBF20(v38, v5, isUniquelyReferenced_nonNull_native);

  v40 = v4;
  error[0] = kSecAttrKeyClassPublic;
  sub_1001E6224(error, v38);
  v8 = kSecAttrKeyClass;
  v9 = kSecAttrKeyClassPublic;
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFBF20(v38, v8, v10);

  error[0] = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100008BB8(0, &qword_1016C21A0, NSObject_ptr);
  sub_1004A4578();
  v12 = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = SecKeyCreateWithData(isa, v12, error);

  if (!v13)
  {
    v25 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      v35 = v25;
      swift_once();
      v25 = v35;
    }

    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, qword_10177BA00, "CryptoUtil: SecKeyCreateWithData could not be created for the public key", 72, 2, _swiftEmptyArrayStorage);
    v26 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    v17 = swift_allocError();
    (*(*(v26 - 8) + 104))(v27, enum case for CryptoError.encodeError(_:), v26);
    swift_willThrow();
    goto LABEL_9;
  }

  v38[0] = 0;
  v14 = Data._bridgeToObjectiveC()().super.isa;
  EncryptedData = SecKeyCreateEncryptedData(v13, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, v14, v38);

  v16 = v38[0];
  if (v38[0])
  {
    type metadata accessor for CFError(0);
    sub_100A80DDC(&qword_1016B47F0, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
    v17 = swift_allocError();
    *v18 = v16;
    v19 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    v20 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100008C00();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "CryptoUtil: Encryption: Could not encrypt the data. Error - %@", 62, 2, v21);

    swift_willThrow();

LABEL_9:
    *a1 = v17;
    return;
  }

  if (!EncryptedData)
  {
    v32 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      v36 = v32;
      swift_once();
      v32 = v36;
    }

    os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, qword_10177BA00, "CryptoUtil: Encryption did not fail, but encrypted data is nil.", 63, 2, _swiftEmptyArrayStorage);
    v33 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    v17 = swift_allocError();
    (*(*(v33 - 8) + 104))(v34, enum case for CryptoError.encodeError(_:), v33);
    swift_willThrow();

    goto LABEL_9;
  }

  v28 = EncryptedData;
  v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  *a2 = v29;
  a2[1] = v31;
}

void sub_100A79968(__SecKey *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  error = 0;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = SecKeyCreateDecryptedData(a1, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, isa, &error);

  v8 = error;
  if (error)
  {
    type metadata accessor for CFError(0);
    sub_100A80DDC(&qword_1016B47F0, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
    v9 = swift_allocError();
    *v10 = v8;
    v11 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    v12 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "CryptoUtil: Decryption: Could not decrypt the data. Error - %@", 62, 2, v13);

    swift_willThrow();

LABEL_5:
    *a2 = v9;
    return;
  }

  if (!v7)
  {
    v21 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      v24 = v21;
      swift_once();
      v21 = v24;
    }

    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, qword_10177BA00, "CryptoUtil: Decryption did not fail, but decrypted data is nil.", 63, 2, _swiftEmptyArrayStorage);
    v22 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    v9 = swift_allocError();
    (*(*(v22 - 8) + 104))(v23, enum case for CryptoError.decodeError(_:), v22);
    swift_willThrow();
    goto LABEL_5;
  }

  v17 = v7;
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *a3 = v18;
  a3[1] = v20;
}

char *sub_100A79CBC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - v12;
  v26 = sub_100845C88(a5);
  v27 = v14;
  sub_100017D5C(a3, a4);
  sub_100017D5C(a1, a2);
  v15 = sub_100A7F110(a3, a4, a3, a4, a1, a2, &v26, a5);
  sub_100016590(a1, a2);
  sub_100016590(a3, a4);
  if (v5)
  {
LABEL_11:
    sub_100016590(v26, v27);
    return v13;
  }

  if (v15)
  {
    v16 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    v17 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_101385D80;
    *(v18 + 56) = &type metadata for Int32;
    *(v18 + 64) = &protocol witness table for Int32;
    *(v18 + 32) = v15;
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Error running CCDeriveKey. Code: %d.", v26);

    CryptoError.init(rawValue:)();
    v19 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    v21 = v20;
    v22 = *(v19 - 8);
    v23 = *(v22 + 48);
    if (v23(v13, 1, v19) == 1)
    {
      (*(v22 + 104))(v21, enum case for CryptoError.unspecifiedError(_:), v19);
      if (v23(v13, 1, v19) != 1)
      {
        sub_100A80D74(v13);
      }
    }

    else
    {
      (*(v22 + 32))(v21, v13, v19);
    }

    swift_willThrow();
    goto LABEL_11;
  }

  v13 = v26;
  v24 = v27;
  sub_100017D5C(v26, v27);
  sub_100016590(v13, v24);
  return v13;
}

uint64_t sub_100A79FEC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100A7A194(a1, a2, 0, 0);
  v4 = v2;
  if (v2)
  {
    v5 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    v6 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100008C00();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Error deriving advertisementKey: %@", 35, 2, v7);

    sub_1001BAF88();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
  }

  else
  {
    v4 = sub_100A7829C(v3, 0, 2);
    CCECCryptorRelease();
  }

  return v4;
}

uint64_t sub_100A7A194(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v34 - v8;
  v35 = 0;
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      *(&v34 + 6) = 0;
      *&v34 = 0;
      goto LABEL_18;
    }

    v11 = *(a1 + 16);
    v12 = __DataStorage._bytes.getter();
    if (!v12)
    {
      goto LABEL_28;
    }

    v13 = v12;
    v7 = __DataStorage._offset.getter();
    if (__OFSUB__(v11, v7))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v14 = v11 - v7 + v13;
    v7 = __DataStorage._length.getter();
    if (!v14)
    {
      goto LABEL_29;
    }

    if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  else if (!v10)
  {
    *&v34 = a1;
    WORD4(v34) = a2;
    BYTE10(v34) = BYTE2(a2);
    BYTE11(v34) = BYTE3(a2);
    BYTE12(v34) = BYTE4(a2);
    BYTE13(v34) = BYTE5(a2);
    goto LABEL_18;
  }

  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_34;
  }

  v15 = __DataStorage._bytes.getter();
  if (!v15)
  {
LABEL_28:
    __DataStorage._length.getter();
    goto LABEL_29;
  }

  v16 = v15;
  v7 = __DataStorage._offset.getter();
  if (!__OFSUB__(a1, v7))
  {
    v17 = a1 - v7 + v16;
    __DataStorage._length.getter();
    if (v17)
    {
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
      }

LABEL_18:
      v18 = CCECCryptorImportKey();
      if (v18)
      {
        v19 = static os_log_type_t.error.getter();
        if (qword_101694BE0 != -1)
        {
          swift_once();
        }

        v20 = qword_10177BA00;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_101385D80;
        *(v21 + 56) = &type metadata for Int32;
        *(v21 + 64) = &protocol witness table for Int32;
        *(v21 + 32) = v18;
        os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "Error running CCECCryptorImportKey. Code: %d.", v34);

        CryptoError.init(rawValue:)();
        v22 = type metadata accessor for CryptoError();
        sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
        swift_allocError();
        v24 = v23;
        v25 = *(v22 - 8);
        v26 = *(v25 + 48);
        if (v26(v9, 1, v22) == 1)
        {
          (*(v25 + 104))(v24, enum case for CryptoError.unspecifiedError(_:), v22);
          if (v26(v9, 1, v22) != 1)
          {
            sub_100A80D74(v9);
          }
        }

        else
        {
          (*(v25 + 32))(v24, v9, v22);
        }

        return swift_willThrow();
      }

      result = v35;
      if (v35)
      {
        return result;
      }

      v7 = static os_log_type_t.error.getter();
      if (qword_101694BE0 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_36;
    }

LABEL_29:
    v28 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    v30 = v32;
    v31 = &enum case for CryptoError.memoryFailure(_:);
    goto LABEL_30;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v33 = v7;
  swift_once();
  v7 = v33;
LABEL_26:
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10177BA00, "CryptoUtil: diversifyKey: CryptorRef was not populated as expected.", 67, 2, _swiftEmptyArrayStorage, v34);
  v28 = type metadata accessor for CryptoError();
  sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
  swift_allocError();
  v30 = v29;
  v31 = &enum case for CryptoError.unspecifiedError(_:);
LABEL_30:
  (*(*(v28 - 8) + 104))(v30, *v31, v28);
  return swift_willThrow();
}

char *sub_100A7A73C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = a2;
  v9 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  __chkstk_darwin(v9 - 8);
  v11 = &v38 - v10;
  v52 = 0;
  v51 = xmmword_10138C660;
  Data.append(_:)();
  v12 = *(&v51 + 1);
  v13 = v51;
  v14 = *(&v51 + 1) >> 62;
  if ((*(&v51 + 1) >> 62) > 1)
  {
    if (v14 != 2)
    {
      v24 = a4 >> 62;
      *(&v50 + 7) = 0;
      *&v50 = 0;
      if ((a4 >> 62) <= 1)
      {
        if (v24 && __OFSUB__(HIDWORD(a3), a3))
        {
          goto LABEL_73;
        }

LABEL_35:
        v25 = CCECCryptorTwinDiversifyKey();
        if (v25)
        {
LABEL_58:
          v29 = static os_log_type_t.error.getter();
          if (qword_101694BE0 != -1)
          {
            swift_once();
          }

          v30 = qword_10177BA00;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_101385D80;
          *(v31 + 56) = &type metadata for Int32;
          *(v31 + 64) = &protocol witness table for Int32;
          *(v31 + 32) = v25;
          os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "Error running CCECCryptorTwinDiversifyKey. Code: %d.", v38);

          CryptoError.init(rawValue:)();
          v32 = type metadata accessor for CryptoError();
          sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
          swift_allocError();
          v34 = v33;
          v35 = *(v32 - 8);
          v36 = *(v35 + 48);
          if (v36(v11, 1, v32) == 1)
          {
            (*(v35 + 104))(v34, enum case for CryptoError.unspecifiedError(_:), v32);
            if (v36(v11, 1, v32) != 1)
            {
              sub_100A80D74(v11);
            }
          }

          else
          {
            (*(v35 + 32))(v34, v11, v32);
          }

          goto LABEL_64;
        }

LABEL_36:
        v11 = v52;
        if (v52)
        {
          sub_100016590(v13, v12);
          return v11;
        }

        isUniquelyReferenced_nonNull_native = static os_log_type_t.error.getter();
        if (qword_101694BE0 == -1)
        {
          goto LABEL_39;
        }

        goto LABEL_69;
      }

      goto LABEL_24;
    }

    v49 = a1;
    v17 = a4;

    sub_100016590(v13, v12);
    *&v50 = v13;
    *(&v50 + 1) = v12 & 0x3FFFFFFFFFFFFFFFLL;
    sub_100016590(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v12 = *(&v50 + 1);
    v13 = v50;
    v18 = *(v50 + 16);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_77;
    }

    isUniquelyReferenced_nonNull_native = __DataStorage._offset.getter();
    if (!__OFSUB__(v18, isUniquelyReferenced_nonNull_native))
    {
      __DataStorage._length.getter();
      v21 = v17 >> 62;
      if ((v17 >> 62) <= 1)
      {
        if (v21 && __OFSUB__(HIDWORD(a3), a3))
        {
          goto LABEL_74;
        }

        goto LABEL_42;
      }

LABEL_28:
      if (v21 == 2)
      {
        v16 = *(a3 + 16);
        if (__OFSUB__(*(a3 + 24), v16))
        {
          __break(1u);
LABEL_32:
          if (!__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_40;
          }

          goto LABEL_72;
        }
      }

LABEL_42:
      v25 = CCECCryptorTwinDiversifyKey();
      v12 |= 0x8000000000000000;
      goto LABEL_43;
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v48 = a4;
  v46 = a3;
  v47 = v7;
  if (!v14)
  {
    v49 = a1;
    v44 = v4;
    v45 = v11;
    a3 = DWORD1(v51);
    v38 = *(&v51 + 1) >> 8;
    v39 = *(&v51 + 1) >> 16;
    v40 = *(&v51 + 1) >> 24;
    v41 = HIDWORD(*(&v51 + 1));
    v42 = *(&v51 + 1) >> 40;
    v43 = HIWORD(*(&v51 + 1));
    sub_100016590(v51, *(&v51 + 1));
    *&v50 = v13;
    BYTE8(v50) = v12;
    BYTE9(v50) = v38;
    BYTE10(v50) = v39;
    BYTE11(v50) = v40;
    BYTE12(v50) = v41;
    BYTE13(v50) = v42;
    v15 = v48 >> 62;
    BYTE14(v50) = v43;
    if ((v48 >> 62) <= 1)
    {
      v11 = v45;
      v16 = v46;
      if (!v15)
      {
LABEL_40:
        v25 = CCECCryptorTwinDiversifyKey();
        v13 = v50;
        v12 = DWORD2(v50) | ((WORD6(v50) | (BYTE14(v50) << 16)) << 32);
LABEL_43:
        *&v51 = v13;
        goto LABEL_57;
      }

      goto LABEL_32;
    }

    v11 = v45;
    if (v15 != 2)
    {
      goto LABEL_40;
    }

    v24 = *(v46 + 24);
    if (!__OFSUB__(v24, *(v46 + 16)))
    {
      goto LABEL_40;
    }

    __break(1u);
LABEL_24:
    if (v24 != 2)
    {
      goto LABEL_35;
    }

    v21 = *(a3 + 24);
    if (!__OFSUB__(v21, *(a3 + 16)))
    {
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_28;
  }

  v22 = *(&v51 + 1) & 0x3FFFFFFFFFFFFFFFLL;

  sub_100016590(v13, v12);
  sub_100016590(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v13 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v49 = v23 - v13;
    if (v23 < v13)
    {
      __break(1u);
    }

    else
    {

      if (!__DataStorage._bytes.getter() || !__OFSUB__(v13, __DataStorage._offset.getter()))
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v27 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v22 = v27;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

LABEL_45:
  if (v23 < v13)
  {
    goto LABEL_67;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    isUniquelyReferenced_nonNull_native = __DataStorage._offset.getter();
    if (!__OFSUB__(v13, isUniquelyReferenced_nonNull_native))
    {
      __DataStorage._length.getter();
      v28 = v48 >> 62;
      if ((v48 >> 62) > 1)
      {
        if (v28 != 2 || !__OFSUB__(*(v46 + 24), *(v46 + 16)))
        {
          goto LABEL_56;
        }

        __break(1u);
      }

      else if (!v28)
      {
        goto LABEL_56;
      }

      if (__OFSUB__(HIDWORD(v46), v46))
      {
        goto LABEL_75;
      }

LABEL_56:
      v25 = CCECCryptorTwinDiversifyKey();

      v12 = v22 | 0x4000000000000000;
LABEL_57:
      *(&v51 + 1) = v12;
      if (v25)
      {
        goto LABEL_58;
      }

      goto LABEL_36;
    }

LABEL_68:
    __break(1u);
LABEL_69:
    v37 = isUniquelyReferenced_nonNull_native;
    swift_once();
    isUniquelyReferenced_nonNull_native = v37;
LABEL_39:
    os_log(_:dso:log:_:_:)(isUniquelyReferenced_nonNull_native, &_mh_execute_header, qword_10177BA00, "CryptoUtil: diversifyKey: CryptorRef was not populated as expected.", 67, 2, _swiftEmptyArrayStorage);
    v11 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    (*(*(v11 - 1) + 104))(v26, enum case for CryptoError.unspecifiedError(_:), v11);
LABEL_64:
    swift_willThrow();
    sub_100016590(v51, *(&v51 + 1));
    return v11;
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_100A7AF80(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return CCECCryptorExportKey();
    }

    sub_100016590(v7, v6);
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v10 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v11 = *(v7 + 16);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_25;
    }

    if (!__OFSUB__(v11, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      result = CCECCryptorExportKey();
      *a1 = v7;
      a1[1] = v10 | 0x8000000000000000;
      return result;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v8)
  {
    sub_100016590(v7, v6);
    LOWORD(v16) = v6;
    BYTE2(v16) = BYTE2(v6);
    HIBYTE(v16) = BYTE3(v6);
    LOBYTE(v17) = BYTE4(v6);
    HIBYTE(v17) = BYTE5(v6);
    result = CCECCryptorExportKey();
    *a1 = v7;
    a1[1] = v16 | ((v17 | (BYTE6(v6) << 16)) << 32);
    return result;
  }

  v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_100016590(v7, v6);
  *a1 = xmmword_10138C660;
  sub_100016590(0, 0xC000000000000000);
  v13 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v13 < v7)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
    {
LABEL_23:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v12 = v14;
  }

  if (v13 < v7)
  {
    goto LABEL_20;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    if (!__OFSUB__(v7, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      v15 = CCECCryptorExportKey();

      *a1 = v7;
      a1[1] = v12 | 0x4000000000000000;
      return v15;
    }

    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100A7B328(uint64_t *a1, int *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v88 = a3;
  v89 = a5;
  v90 = a2;
  v10 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v76 - v15;
  v17 = __chkstk_darwin(v14);
  __chkstk_darwin(v17);
  v20 = &v76 - v19;
  v21 = *a1;
  v22 = a1[1];
  v23 = v22 >> 62;
  if ((v22 >> 62) <= 1)
  {
    v87 = a4;
    if (!v23)
    {
      v77 = v6;
      v78 = v18;
      v85 = a6;
      v86 = a1;
      v79 = v22 >> 8;
      v80 = v22 >> 16;
      v81 = v22 >> 24;
      v82 = HIDWORD(v22);
      v83 = v22 >> 40;
      v84 = HIWORD(v22);
      sub_100016590(v21, v22);
      *&v91 = v21;
      BYTE8(v91) = v22;
      BYTE9(v91) = v79;
      BYTE10(v91) = v80;
      BYTE11(v91) = v81;
      BYTE12(v91) = v82;
      BYTE13(v91) = v83;
      BYTE14(v91) = v84;
      result = CCCKG2OwnerGenerateShare();
      v21 = v90;
      *v90 = result;
      if (!result)
      {
        v59 = DWORD2(v91) | ((WORD6(v91) | (BYTE14(v91) << 16)) << 32);
        v60 = v86;
        *v86 = v91;
        v60[1] = v59;
        return result;
      }

      v25 = static os_log_type_t.error.getter();
      a6 = v86;
      if (qword_101694BE0 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_53;
    }

    v46 = v22 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100016590(v21, v22);
    v47 = a1;
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    v25 = v21;
    v48 = v21 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v85 = a6;
      v86 = (v48 - v21);
      if (v48 < v21)
      {
        __break(1u);
      }

      else
      {

        if (!__DataStorage._bytes.getter() || !__OFSUB__(v21, __DataStorage._offset.getter()))
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();
          v62 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v46 = v62;
          a6 = v85;
          goto LABEL_37;
        }
      }

      __break(1u);
    }

LABEL_37:
    if (v48 >= v21)
    {

      result = __DataStorage._bytes.getter();
      if (result)
      {
        a6 = v46;
        v63 = __DataStorage._offset.getter();
        v25 = v21 - v63;
        if (!__OFSUB__(v21, v63))
        {
          __DataStorage._length.getter();
          Share = CCCKG2OwnerGenerateShare();
          v65 = v90;
          *v90 = Share;
          if (Share)
          {
            v86 = v47;
            v66 = static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            v67 = qword_10177BA00;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v68 = swift_allocObject();
            *(v68 + 16) = xmmword_101385D80;
            v69 = *v65;
            *(v68 + 56) = &type metadata for Int32;
            *(v68 + 64) = &protocol witness table for Int32;
            *(v68 + 32) = v69;
            os_log(_:dso:log:_:_:)(v66, &_mh_execute_header, v67, "CCCKG2OwnerGenerateShare: Error generating share from owner device. Status: %d.", v76);

            CryptoError.init(rawValue:)();
            v70 = type metadata accessor for CryptoError();
            sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
            swift_allocError();
            v72 = v71;
            v73 = *(v70 - 8);
            v74 = *(v73 + 48);
            if (v74(v16, 1, v70) == 1)
            {
              (*(v73 + 104))(v72, enum case for CryptoError.unspecifiedError(_:), v70);
              if (v74(v16, 1, v70) != 1)
              {
                sub_100A80D74(v16);
              }
            }

            else
            {
              (*(v73 + 32))(v72, v16, v70);
            }

            swift_willThrow();

            v75 = v86;
            *v86 = v21;
            v75[1] = v46 | 0x4000000000000000;
          }

          else
          {

            *v47 = v21;
            v47[1] = v46 | 0x4000000000000000;
          }

          return result;
        }

LABEL_52:
        __break(1u);
LABEL_53:
        swift_once();
LABEL_5:
        v26 = qword_10177BA00;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_101385D80;
        v28 = *v21;
        *(v27 + 56) = &type metadata for Int32;
        *(v27 + 64) = &protocol witness table for Int32;
        *(v27 + 32) = v28;
        os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "CCCKG2OwnerGenerateShare: Error generating share from owner device. Status: %d.", v76);

        v29 = v78;
        CryptoError.init(rawValue:)();
        v30 = type metadata accessor for CryptoError();
        sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
        swift_allocError();
        v32 = v31;
        v33 = *(v30 - 8);
        v34 = *(v33 + 48);
        if (v34(v29, 1, v30) == 1)
        {
          (*(v33 + 104))(v32, enum case for CryptoError.unspecifiedError(_:), v30);
          if (v34(v29, 1, v30) != 1)
          {
            sub_100A80D74(v29);
          }
        }

        else
        {
          (*(v33 + 32))(v32, v29, v30);
        }

        result = swift_willThrow();
        v61 = DWORD2(v91) | ((WORD6(v91) | (BYTE14(v91) << 16)) << 32);
        *a6 = v91;
        *(a6 + 8) = v61;
        return result;
      }

LABEL_57:
      __break(1u);
      return result;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v23 == 2)
  {

    sub_100016590(v21, v22);
    *&v91 = v21;
    *(&v91 + 1) = v22 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    a6 = *(&v91 + 1);
    v21 = v91;
    v35 = *(v91 + 16);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_57;
    }

    v25 = result;
    if (__OFSUB__(v35, __DataStorage._offset.getter()))
    {
      __break(1u);
      goto LABEL_51;
    }

    v87 = v21;
    __DataStorage._length.getter();
    result = CCCKG2OwnerGenerateShare();
    v36 = v90;
    *v90 = result;
    if (result)
    {
      v37 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v38 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_101385D80;
      v40 = *v36;
      *(v39 + 56) = &type metadata for Int32;
      *(v39 + 64) = &protocol witness table for Int32;
      *(v39 + 32) = v40;
      os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "CCCKG2OwnerGenerateShare: Error generating share from owner device. Status: %d.", v76);

      CryptoError.init(rawValue:)();
      v41 = type metadata accessor for CryptoError();
      sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
      swift_allocError();
      v43 = v42;
      v44 = *(v41 - 8);
      v45 = *(v44 + 48);
      if (v45(v13, 1, v41) == 1)
      {
        (*(v44 + 104))(v43, enum case for CryptoError.unspecifiedError(_:), v41);
        if (v45(v13, 1, v41) != 1)
        {
          sub_100A80D74(v13);
        }
      }

      else
      {
        (*(v44 + 32))(v43, v13, v41);
      }

      result = swift_willThrow();
    }

    *a1 = v87;
    a1[1] = a6 | 0x8000000000000000;
  }

  else
  {
    *(&v91 + 7) = 0;
    *&v91 = 0;
    result = CCCKG2OwnerGenerateShare();
    v49 = v90;
    *v90 = result;
    if (result)
    {
      v50 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v51 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_101385D80;
      v53 = *v49;
      *(v52 + 56) = &type metadata for Int32;
      *(v52 + 64) = &protocol witness table for Int32;
      *(v52 + 32) = v53;
      os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v51, "CCCKG2OwnerGenerateShare: Error generating share from owner device. Status: %d.", v76);

      CryptoError.init(rawValue:)();
      v54 = type metadata accessor for CryptoError();
      sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
      swift_allocError();
      v56 = v55;
      v57 = *(v54 - 8);
      v58 = *(v57 + 48);
      if (v58(v20, 1, v54) == 1)
      {
        (*(v57 + 104))(v56, enum case for CryptoError.unspecifiedError(_:), v54);
        if (v58(v20, 1, v54) != 1)
        {
          sub_100A80D74(v20);
        }
      }

      else
      {
        (*(v57 + 32))(v56, v20, v54);
      }

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100A7BFB8(uint64_t *a1, int *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v82 = a3;
  v83 = a5;
  v9 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v71 - v14;
  v16 = __chkstk_darwin(v13);
  __chkstk_darwin(v16);
  v19 = &v71 - v18;
  v21 = *a1;
  v20 = a1[1];
  v22 = v20 >> 62;
  if ((v20 >> 62) <= 1)
  {
    v81 = a2;
    if (!v22)
    {
      v78 = a1;
      v79 = v5;
      v80 = a4;
      v71 = v17;
      v72 = v20 >> 8;
      v73 = v20 >> 16;
      v74 = v20 >> 24;
      v75 = HIDWORD(v20);
      v76 = v20 >> 40;
      v77 = HIWORD(v20);
      sub_100016590(v21, v20);
      *&v84 = v21;
      BYTE8(v84) = v20;
      BYTE9(v84) = v72;
      BYTE10(v84) = v73;
      BYTE11(v84) = v74;
      BYTE12(v84) = v75;
      BYTE13(v84) = v76;
      BYTE14(v84) = v77;
      result = CCCKGOwnerGenerateShare();
      v21 = v81;
      *v81 = result;
      if (!result)
      {
        v54 = DWORD2(v84) | ((WORD6(v84) | (BYTE14(v84) << 16)) << 32);
        v55 = v78;
        *v78 = v84;
        v55[1] = v54;
        return result;
      }

      v20 = static os_log_type_t.error.getter();
      a4 = v78;
      if (qword_101694BE0 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_55;
    }

    v43 = v20 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100016590(v21, v20);
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    v44 = v21 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = v44 - v21;
      v80 = a4;
      if (v44 < v21)
      {
        __break(1u);
      }

      else
      {

        if (!__DataStorage._bytes.getter() || !__OFSUB__(v21, __DataStorage._offset.getter()))
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();
          v20 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v43 = v20;
          a4 = v80;
          goto LABEL_37;
        }
      }

      __break(1u);
    }

LABEL_37:
    if (v44 >= v21)
    {
      v80 = v15;

      result = __DataStorage._bytes.getter();
      if (result)
      {
        v20 = result;
        a4 = v43;
        v58 = __DataStorage._offset.getter();
        v59 = v81;
        if (!__OFSUB__(v21, v58))
        {
          __DataStorage._length.getter();
          Share = CCCKGOwnerGenerateShare();
          *v59 = Share;
          if (Share)
          {
            v61 = static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            v62 = qword_10177BA00;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v63 = swift_allocObject();
            *(v63 + 16) = xmmword_101385D80;
            v64 = *v59;
            *(v63 + 56) = &type metadata for Int32;
            *(v63 + 64) = &protocol witness table for Int32;
            *(v63 + 32) = v64;
            os_log(_:dso:log:_:_:)(v61, &_mh_execute_header, v62, "CCCKGOwnerGenerateShare: Error generating share from owner device. Status: %d.", v71);

            v65 = v80;
            CryptoError.init(rawValue:)();
            v66 = type metadata accessor for CryptoError();
            sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
            v79 = swift_allocError();
            v68 = v67;
            v69 = *(v66 - 8);
            v70 = *(v69 + 48);
            if (v70(v65, 1, v66) == 1)
            {
              (*(v69 + 104))(v68, enum case for CryptoError.unspecifiedError(_:), v66);
              if (v70(v65, 1, v66) != 1)
              {
                sub_100A80D74(v65);
              }
            }

            else
            {
              (*(v69 + 32))(v68, v65, v66);
            }

            swift_willThrow();
          }

          v56 = v43 | 0x4000000000000000;
          goto LABEL_49;
        }

LABEL_54:
        __break(1u);
LABEL_55:
        swift_once();
LABEL_5:
        v24 = qword_10177BA00;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_101385D80;
        v26 = *v21;
        *(v25 + 56) = &type metadata for Int32;
        *(v25 + 64) = &protocol witness table for Int32;
        *(v25 + 32) = v26;
        os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v24, "CCCKGOwnerGenerateShare: Error generating share from owner device. Status: %d.", v71);

        v27 = v71;
        CryptoError.init(rawValue:)();
        v28 = type metadata accessor for CryptoError();
        sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
        swift_allocError();
        v30 = v29;
        v31 = *(v28 - 8);
        v32 = *(v31 + 48);
        if (v32(v27, 1, v28) == 1)
        {
          (*(v31 + 104))(v30, enum case for CryptoError.unspecifiedError(_:), v28);
          if (v32(v27, 1, v28) != 1)
          {
            sub_100A80D74(v27);
          }
        }

        else
        {
          (*(v31 + 32))(v30, v27, v28);
        }

        result = swift_willThrow();
        v57 = DWORD2(v84) | ((WORD6(v84) | (BYTE14(v84) << 16)) << 32);
        *a4 = v84;
        *(a4 + 8) = v57;
        return result;
      }

LABEL_59:
      __break(1u);
      return result;
    }

    goto LABEL_53;
  }

  if (v22 == 2)
  {

    sub_100016590(v21, v20);
    *&v84 = v21;
    *(&v84 + 1) = v20 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    a4 = *(&v84 + 1);
    v21 = v84;
    v33 = *(v84 + 16);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_59;
    }

    v20 = result;
    if (!__OFSUB__(v33, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      result = CCCKGOwnerGenerateShare();
      *a2 = result;
      if (result)
      {
        v83 = v21;
        v34 = static os_log_type_t.error.getter();
        if (qword_101694BE0 != -1)
        {
          swift_once();
        }

        v35 = qword_10177BA00;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_101385D80;
        v37 = *a2;
        *(v36 + 56) = &type metadata for Int32;
        *(v36 + 64) = &protocol witness table for Int32;
        *(v36 + 32) = v37;
        os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v35, "CCCKGOwnerGenerateShare: Error generating share from owner device. Status: %d.", v71);

        CryptoError.init(rawValue:)();
        v38 = type metadata accessor for CryptoError();
        sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
        swift_allocError();
        v40 = v39;
        v41 = *(v38 - 8);
        v42 = *(v41 + 48);
        if (v42(v12, 1, v38) == 1)
        {
          (*(v41 + 104))(v40, enum case for CryptoError.unspecifiedError(_:), v38);
          if (v42(v12, 1, v38) != 1)
          {
            sub_100A80D74(v12);
          }
        }

        else
        {
          (*(v41 + 32))(v40, v12, v38);
        }

        result = swift_willThrow();
        v56 = a4 | 0x8000000000000000;
        *a1 = v83;
        goto LABEL_50;
      }

      v56 = a4 | 0x8000000000000000;
LABEL_49:
      *a1 = v21;
LABEL_50:
      a1[1] = v56;
      return result;
    }

    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(&v84 + 7) = 0;
  *&v84 = 0;
  result = CCCKGOwnerGenerateShare();
  *a2 = result;
  if (result)
  {
    v45 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    v46 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_101385D80;
    v48 = *a2;
    *(v47 + 56) = &type metadata for Int32;
    *(v47 + 64) = &protocol witness table for Int32;
    *(v47 + 32) = v48;
    os_log(_:dso:log:_:_:)(v45, &_mh_execute_header, v46, "CCCKGOwnerGenerateShare: Error generating share from owner device. Status: %d.", v71);

    CryptoError.init(rawValue:)();
    v49 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    v51 = v50;
    v52 = *(v49 - 8);
    v53 = *(v52 + 48);
    if (v53(v19, 1, v49) == 1)
    {
      (*(v52 + 104))(v51, enum case for CryptoError.unspecifiedError(_:), v49);
      if (v53(v19, 1, v49) != 1)
      {
        sub_100A80D74(v19);
      }
    }

    else
    {
      (*(v52 + 32))(v51, v19, v49);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100A7CC24(uint64_t *a1, int *a2, int *a3, uint64_t a4)
{
  v8 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v78 - v13;
  v15 = __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v18 = &v78 - v17;
  v20 = *a1;
  v19 = a1[1];
  v21 = v19 >> 62;
  if ((v19 >> 62) <= 1)
  {
    v88 = a2;
    if (!v21)
    {
      v89 = a1;
      v87 = a4;
      v79 = v16;
      v80 = HIBYTE(v20);
      v81 = v19 >> 8;
      v82 = v19 >> 16;
      v83 = v19 >> 24;
      v84 = HIDWORD(v19);
      v85 = v19 >> 40;
      v86 = HIWORD(v19);

      sub_100016590(v20, v19);
      LOWORD(v91) = v20;
      BYTE2(v91) = BYTE2(v20);
      BYTE3(v91) = BYTE3(v20);
      BYTE4(v91) = BYTE4(v20);
      BYTE5(v91) = BYTE5(v20);
      BYTE6(v91) = BYTE6(v20);
      BYTE7(v91) = v80;
      BYTE8(v91) = v19;
      BYTE9(v91) = v81;
      BYTE10(v91) = v82;
      BYTE11(v91) = v83;
      BYTE12(v91) = v84;
      BYTE13(v91) = v85;
      BYTE14(v91) = v86;
      v22 = CCCKGContributorCommit();
      a4 = v88;
      *v88 = v22;
      if (!v22)
      {
        v56 = v91;
        v57 = DWORD2(v91) | ((WORD6(v91) | (BYTE14(v91) << 16)) << 32);

        v59 = v89;
        *v89 = v56;
        v59[1] = v57;
        return result;
      }

      v23 = static os_log_type_t.error.getter();
      v11 = v89;
      if (qword_101694BE0 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_54;
    }

    v11 = v19 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100017D5C(v20, v19);
    sub_100016590(v20, v19);
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);

    v23 = v20;
    v45 = v20 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = a4;
      v89 = (v45 - v20);
      if (v45 < v20)
      {
        __break(1u);
      }

      else
      {

        if (!__DataStorage._bytes.getter() || !__OFSUB__(v20, __DataStorage._offset.getter()))
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();
          v64 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v11 = v64;
          a4 = v87;
          goto LABEL_38;
        }
      }

      __break(1u);
    }

LABEL_38:
    if (v45 >= v20)
    {
      v87 = a3;

      result = __DataStorage._bytes.getter();
      if (result)
      {
        a4 = v11;
        v65 = __DataStorage._offset.getter();
        v23 = v20 - v65;
        v66 = v88;
        if (!__OFSUB__(v20, v65))
        {
          __DataStorage._length.getter();
          v67 = CCCKGContributorCommit();
          *v66 = v67;
          if (v67)
          {
            v89 = a1;
            v68 = static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            v69 = qword_10177BA00;
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v70 = swift_allocObject();
            *(v70 + 16) = xmmword_101385D80;
            v71 = *v66;
            *(v70 + 56) = &type metadata for Int32;
            *(v70 + 64) = &protocol witness table for Int32;
            *(v70 + 32) = v71;
            os_log(_:dso:log:_:_:)(v68, &_mh_execute_header, v69, "CCCKGContributorCommit: Error generating contributon commmit. Status: %d.", v78);

            CryptoError.init(rawValue:)();
            v72 = type metadata accessor for CryptoError();
            sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
            v90 = swift_allocError();
            v74 = v73;
            v75 = *(v72 - 8);
            v76 = *(v75 + 48);
            if (v76(v14, 1, v72) == 1)
            {
              (*(v75 + 104))(v74, enum case for CryptoError.unspecifiedError(_:), v72);
              if (v76(v14, 1, v72) != 1)
              {
                sub_100A80D74(v14);
              }
            }

            else
            {
              (*(v75 + 32))(v74, v14, v72);
            }

            swift_willThrow();

            v77 = v89;
            *v89 = v20;
            v77[1] = v11 | 0x4000000000000000;
            return result;
          }

          v60 = v11 | 0x4000000000000000;
LABEL_48:
          *a1 = v20;
          a1[1] = v60;
          return result;
        }

LABEL_53:
        __break(1u);
LABEL_54:
        swift_once();
LABEL_5:
        v24 = qword_10177BA00;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_101385D80;
        v26 = *a4;
        *(v25 + 56) = &type metadata for Int32;
        *(v25 + 64) = &protocol witness table for Int32;
        *(v25 + 32) = v26;
        os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "CCCKGContributorCommit: Error generating contributon commmit. Status: %d.", v78);

        v27 = v79;
        CryptoError.init(rawValue:)();
        v28 = type metadata accessor for CryptoError();
        sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
        swift_allocError();
        v30 = v29;
        v31 = *(v28 - 8);
        v32 = *(v31 + 48);
        if (v32(v27, 1, v28) == 1)
        {
          (*(v31 + 104))(v30, enum case for CryptoError.unspecifiedError(_:), v28);
          if (v32(v27, 1, v28) != 1)
          {
            sub_100A80D74(v27);
          }
        }

        else
        {
          (*(v31 + 32))(v30, v27, v28);
        }

        swift_willThrow();
        v61 = v91;
        v62 = DWORD2(v91) | ((WORD6(v91) | (BYTE14(v91) << 16)) << 32);

        *v11 = v61;
        *(v11 + 8) = v62;
        return result;
      }

LABEL_58:
      __break(1u);
      return result;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v21 == 2)
  {

    sub_100016590(v20, v19);
    *&v91 = v20;
    *(&v91 + 1) = v19 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    a4 = *(&v91 + 1);
    v20 = v91;
    v33 = *(v91 + 16);
    v34 = __DataStorage._bytes.getter();
    if (!v34)
    {

      __break(1u);
      goto LABEL_58;
    }

    v23 = v34;
    if (__OFSUB__(v33, __DataStorage._offset.getter()))
    {
      __break(1u);
      goto LABEL_52;
    }

    __DataStorage._length.getter();
    v35 = CCCKGContributorCommit();
    *a2 = v35;
    if (!v35)
    {

      v60 = a4 | 0x8000000000000000;
      goto LABEL_48;
    }

    v89 = a1;
    v90 = v20;
    v36 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    v37 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_101385D80;
    v39 = *a2;
    *(v38 + 56) = &type metadata for Int32;
    *(v38 + 64) = &protocol witness table for Int32;
    *(v38 + 32) = v39;
    os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v37, "CCCKGContributorCommit: Error generating contributon commmit. Status: %d.", v78);

    CryptoError.init(rawValue:)();
    v40 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    v42 = v41;
    v43 = *(v40 - 8);
    v44 = *(v43 + 48);
    if (v44(v11, 1, v40) == 1)
    {
      (*(v43 + 104))(v42, enum case for CryptoError.unspecifiedError(_:), v40);
      if (v44(v11, 1, v40) != 1)
      {
        sub_100A80D74(v11);
      }
    }

    else
    {
      (*(v43 + 32))(v42, v11, v40);
    }

    swift_willThrow();

    v63 = v89;
    *v89 = v90;
    v63[1] = a4 | 0x8000000000000000;
  }

  else
  {
    *(&v91 + 7) = 0;
    *&v91 = 0;

    v46 = CCCKGContributorCommit();
    *a2 = v46;
    if (v46)
    {
      v47 = static os_log_type_t.error.getter();
      if (qword_101694BE0 != -1)
      {
        swift_once();
      }

      v48 = qword_10177BA00;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_101385D80;
      v50 = *a2;
      *(v49 + 56) = &type metadata for Int32;
      *(v49 + 64) = &protocol witness table for Int32;
      *(v49 + 32) = v50;
      os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v48, "CCCKGContributorCommit: Error generating contributon commmit. Status: %d.", v78);

      CryptoError.init(rawValue:)();
      v51 = type metadata accessor for CryptoError();
      sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
      swift_allocError();
      v53 = v52;
      v54 = *(v51 - 8);
      v55 = *(v54 + 48);
      if (v55(v18, 1, v51) == 1)
      {
        (*(v54 + 104))(v53, enum case for CryptoError.unspecifiedError(_:), v51);
        if (v55(v18, 1, v51) != 1)
        {
          sub_100A80D74(v18);
        }
      }

      else
      {
        (*(v54 + 32))(v53, v18, v51);
      }

      swift_willThrow();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100A7D930@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = a5;
  v46 = a2;
  v10 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  Data.InlineSlice.ensureUniqueReference()();
  v13 = *a1;
  if (a1[1] < v13)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
LABEL_6:
    v15 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    *(v16 + 56) = &type metadata for Int32;
    *(v16 + 64) = &protocol witness table for Int32;
    *(v16 + 32) = v7;
    os_log(_:dso:log:_:_:)(a6, &_mh_execute_header, v15, "CCCKGOwnerFinish: Error generating share from owner device. Status: %d", v43);

    CryptoError.init(rawValue:)();
    v17 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    v19 = v18;
    v20 = *(v17 - 8);
    v21 = *(v20 + 48);
    if (v21(v12, 1, v17) == 1)
    {
      (*(v20 + 104))(v19, enum case for CryptoError.unspecifiedError(_:), v17);
      if (v21(v12, 1, v17) != 1)
      {
        sub_100A80D74(v12);
      }
    }

    else
    {
      (*(v20 + 32))(v19, v12, v17);
    }

    goto LABEL_17;
  }

  if (!__DataStorage._bytes.getter())
  {
    __break(1u);
  }

  if (__OFSUB__(v13, __DataStorage._offset.getter()))
  {
    goto LABEL_23;
  }

  __DataStorage._length.getter();
  v47 = 0;
  v14 = CCCKGOwnerFinish();
  if (v14)
  {
    v7 = v14;
    a6 = static os_log_type_t.error.getter();
    if (qword_101694BE0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  v22 = v47;
  if (v47)
  {
    PublicKeyFromPrivateKey = CCECCryptorGetPublicKeyFromPrivateKey();
    if (PublicKeyFromPrivateKey)
    {
      v24 = PublicKeyFromPrivateKey;
      v25 = sub_100A7829C(v22, 1, 0);
      if (!v6)
      {
        v27 = v25;
        v28 = v26;
        v29 = sub_100A7829C(v24, 0, 0);
        v31 = v30;
        sub_100017D5C(v27, v28);
        v44 = sub_10049BD68(v27, v28);
        v45 = v36;
        v37 = sub_10049C0AC(v29, v31);
        v38 = v27;
        v40 = v39;
        sub_100016590(v38, v28);
        v41 = v45;
        *a6 = v44;
        a6[1] = v41;
        a6[2] = v37;
        a6[3] = v40;
      }

      CCECCryptorRelease();
      if (v47)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

  v32 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    v42 = v32;
    swift_once();
    v32 = v42;
  }

  os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, qword_10177BA00, "CCCKGOwnerFinish: Private key not available", 43, 2, _swiftEmptyArrayStorage);
  v33 = type metadata accessor for CryptoError();
  sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
  swift_allocError();
  (*(*(v33 - 8) + 104))(v34, enum case for CryptoError.invalidKey(_:), v33);
LABEL_17:
  swift_willThrow();
  if (v47)
  {
LABEL_18:
    CCECCryptorRelease();
  }

LABEL_19:
}

uint64_t sub_100A7DE80@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v46 = a2;
  v10 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  Data.InlineSlice.ensureUniqueReference()();
  v13 = *a1;
  if (a1[1] < v13)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
LABEL_6:
    v15 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_101385D80;
    *(v16 + 56) = &type metadata for Int;
    *(v16 + 64) = &protocol witness table for Int;
    *(v16 + 32) = v7;
    os_log(_:dso:log:_:_:)(a6, &_mh_execute_header, v15, "CCCKG2OwnerFinish: Error generating share from owner device. Status: %d", v43);

    CryptoError.init(rawValue:)();
    v17 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    v19 = v18;
    v20 = *(v17 - 8);
    v21 = *(v20 + 48);
    if (v21(v12, 1, v17) == 1)
    {
      (*(v20 + 104))(v19, enum case for CryptoError.unspecifiedError(_:), v17);
      if (v21(v12, 1, v17) != 1)
      {
        sub_100A80D74(v12);
      }
    }

    else
    {
      (*(v20 + 32))(v19, v12, v17);
    }

    goto LABEL_17;
  }

  if (!__DataStorage._bytes.getter())
  {
    __break(1u);
  }

  if (__OFSUB__(v13, __DataStorage._offset.getter()))
  {
    goto LABEL_23;
  }

  __DataStorage._length.getter();
  v47 = 0;
  v14 = CCCKG2OwnerFinish();
  if (v14)
  {
    v7 = v14;
    a6 = static os_log_type_t.error.getter();
    if (qword_101694BE0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  v22 = v47;
  if (v47)
  {
    PublicKeyFromPrivateKey = CCECCryptorGetPublicKeyFromPrivateKey();
    if (PublicKeyFromPrivateKey)
    {
      v24 = PublicKeyFromPrivateKey;
      v25 = sub_100A7829C(v22, 1, 0);
      if (!v6)
      {
        v27 = v25;
        v28 = v26;
        v29 = sub_100A7829C(v24, 0, 0);
        v31 = v30;
        sub_100017D5C(v27, v28);
        v44 = sub_10049BD68(v27, v28);
        v45 = v36;
        v37 = sub_10049C0AC(v29, v31);
        v38 = v27;
        v40 = v39;
        sub_100016590(v38, v28);
        v41 = v45;
        *a6 = v44;
        a6[1] = v41;
        a6[2] = v37;
        a6[3] = v40;
      }

      CCECCryptorRelease();
      if (v47)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

  v32 = static os_log_type_t.error.getter();
  if (qword_101694BE0 != -1)
  {
    v42 = v32;
    swift_once();
    v32 = v42;
  }

  os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, qword_10177BA00, "CCCKG2OwnerFinish: Private key not available", 44, 2, _swiftEmptyArrayStorage);
  v33 = type metadata accessor for CryptoError();
  sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
  swift_allocError();
  (*(*(v33 - 8) + 104))(v34, enum case for CryptoError.invalidKey(_:), v33);
LABEL_17:
  swift_willThrow();
  if (v47)
  {
LABEL_18:
    CCECCryptorRelease();
  }

LABEL_19:
}

BOOL sub_100A7E3CC(__int128 *a1, __int128 *a2)
{
  v24 = *a1;
  v23 = *a2;
  v4 = v24;
  v5 = v23;
  if (*(&v24 + 1) >> 60 == 15)
  {
    if (*(&v23 + 1) >> 60 == 15)
    {
      sub_1000D2A70(&v24, &v22, &qword_1016B4810, &qword_1013D5A60);
      sub_1000D2A70(&v23, &v22, &qword_1016B4810, &qword_1013D5A60);
      sub_100006654(v4, *(&v4 + 1));
      goto LABEL_8;
    }

LABEL_5:
    sub_1000D2A70(&v24, &v22, &qword_1016B4810, &qword_1013D5A60);
    sub_1000D2A70(&v23, &v22, &qword_1016B4810, &qword_1013D5A60);
    sub_100006654(v4, *(&v4 + 1));
    v7 = *(&v5 + 1);
    v6 = v5;
LABEL_6:
    sub_100006654(v6, v7);
    return 0;
  }

  if (*(&v23 + 1) >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_1000D2A70(&v24, &v22, &qword_1016B4810, &qword_1013D5A60);
  sub_1000D2A70(&v23, &v22, &qword_1016B4810, &qword_1013D5A60);
  sub_10002E98C(v4, *(&v4 + 1));
  sub_10002E98C(v5, *(&v5 + 1));
  v8 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v4, *(&v4 + 1), v5, *(&v5 + 1));
  sub_100006654(v5, *(&v5 + 1));
  sub_100006654(v5, *(&v5 + 1));
  sub_100006654(v4, *(&v4 + 1));
  sub_100006654(v4, *(&v4 + 1));
  if (!v8)
  {
    return 0;
  }

LABEL_8:
  v9 = a1[1];
  v21 = a2[1];
  v22 = v9;
  v11 = *(&v9 + 1);
  v10 = v9;
  v12 = v21;
  sub_10012C094(&v22, &v20);
  sub_10012C094(&v21, &v20);
  LOBYTE(v10) = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v10, v11, v12, *(&v12 + 1));
  sub_100A80E80(&v21);
  sub_100A80E80(&v22);
  if (!v10)
  {
    return 0;
  }

  v13 = a1[2];
  v19 = a2[2];
  v20 = v13;
  v14 = v13;
  v15 = v19;
  if (*(&v13 + 1) >> 60 == 15)
  {
    if (*(&v19 + 1) >> 60 == 15)
    {
      sub_1000D2A70(&v20, v18, &qword_1016B4818, &qword_1013D5A68);
      sub_1000D2A70(&v19, v18, &qword_1016B4818, &qword_1013D5A68);
      sub_100006654(v14, *(&v14 + 1));
      return 1;
    }

    goto LABEL_13;
  }

  if (*(&v19 + 1) >> 60 == 15)
  {
LABEL_13:
    sub_1000D2A70(&v20, v18, &qword_1016B4818, &qword_1013D5A68);
    sub_1000D2A70(&v19, v18, &qword_1016B4818, &qword_1013D5A68);
    sub_100006654(v14, *(&v14 + 1));
    v7 = *(&v15 + 1);
    v6 = v15;
    goto LABEL_6;
  }

  sub_1000D2A70(&v20, v18, &qword_1016B4818, &qword_1013D5A68);
  sub_1000D2A70(&v19, v18, &qword_1016B4818, &qword_1013D5A68);
  sub_10002E98C(v14, *(&v14 + 1));
  sub_10002E98C(v15, *(&v15 + 1));
  v17 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v14, *(&v14 + 1), v15, *(&v15 + 1));
  sub_100006654(v15, *(&v15 + 1));
  sub_100006654(v14, *(&v14 + 1));
  sub_100006654(v15, *(&v15 + 1));
  sub_100006654(v14, *(&v14 + 1));
  return v17;
}

uint64_t sub_100A7E758(unint64_t *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v12 != 2)
    {
      *(&v25 + 7) = 0;
      *&v25 = 0;
      v20 = a5 >> 62;
      if ((a5 >> 62) <= 1)
      {
        if (v20 && __OFSUB__(HIDWORD(a4), a4))
        {
          goto LABEL_59;
        }

LABEL_35:
        v21 = CCDeriveKey();
        CCKDFParametersDestroy();
        return v21;
      }

      goto LABEL_24;
    }

    sub_100017D5C(a4, a5);
    sub_100017D5C(a4, a5);
    sub_100017D5C(v11, v10);
    sub_100016590(v11, v10);
    *&v25 = v11;
    *(&v25 + 1) = v10 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10138C660;
    sub_100016590(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v6 = v11;
    v14 = v10 & 0x3FFFFFFFFFFFFFFFLL;
    v15 = *(v11 + 16);
    sub_100017D5C(a4, a5);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_63;
    }

    if (!__OFSUB__(v15, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      v17 = a5 >> 62;
      if ((a5 >> 62) <= 1)
      {
        if (v17 && __OFSUB__(HIDWORD(a4), a4))
        {
          goto LABEL_60;
        }

        goto LABEL_38;
      }

LABEL_28:
      if (v17 == 2 && __OFSUB__(*(a4 + 24), *(a4 + 16)))
      {
        __break(1u);
LABEL_32:
        if (!__OFSUB__(HIDWORD(a4), a4))
        {
          goto LABEL_36;
        }

        goto LABEL_58;
      }

LABEL_38:
      v21 = CCDeriveKey();
      CCKDFParametersDestroy();
      sub_100016590(a4, a5);
      sub_100016590(a4, a5);
      sub_100016590(a4, a5);
      *a1 = v6;
      a1[1] = v14 | 0x8000000000000000;
      return v21;
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (!v12)
  {
    v6 = v11 >> 24;
    sub_100017D5C(a4, a5);
    sub_100017D5C(a4, a5);
    sub_100016590(v11, v10);
    *&v25 = v11;
    WORD4(v25) = v10;
    BYTE10(v25) = BYTE2(v10);
    BYTE11(v25) = BYTE3(v10);
    BYTE12(v25) = BYTE4(v10);
    BYTE13(v25) = BYTE5(v10);
    BYTE14(v25) = BYTE6(v10);
    v13 = a5 >> 62;
    if ((a5 >> 62) <= 1)
    {
      if (!v13)
      {
LABEL_36:
        v21 = CCDeriveKey();
        CCKDFParametersDestroy();
        sub_100016590(a4, a5);
        sub_100016590(a4, a5);
        *a1 = v25;
        a1[1] = DWORD2(v25) | ((WORD6(v25) | (BYTE14(v25) << 16)) << 32);
        return v21;
      }

      goto LABEL_32;
    }

    if (v13 != 2)
    {
      goto LABEL_36;
    }

    v20 = *(a4 + 24);
    if (!__OFSUB__(v20, *(a4 + 16)))
    {
      goto LABEL_36;
    }

    __break(1u);
LABEL_24:
    v14 = a2;
    if (v20 != 2)
    {
      goto LABEL_35;
    }

    v17 = *(a4 + 24);
    if (!__OFSUB__(v17, *(a4 + 16)))
    {
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_28;
  }

  v18 = v10 & 0x3FFFFFFFFFFFFFFFLL;
  sub_100017D5C(a4, a5);
  sub_100017D5C(a4, a5);
  sub_100017D5C(v11, v10);
  sub_100016590(v11, v10);
  *a1 = xmmword_10138C660;
  sub_100016590(0, 0xC000000000000000);
  v19 = v11 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v19 < v11)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v11, __DataStorage._offset.getter()))
    {
      goto LABEL_57;
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v22 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v18 = v22;
  }

  if (v19 < v11)
  {
    goto LABEL_54;
  }

  sub_100017D5C(a4, a5);

  result = __DataStorage._bytes.getter();
  if (result)
  {
    if (!__OFSUB__(v11, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      v23 = a5 >> 62;
      if ((a5 >> 62) > 1)
      {
        if (v23 != 2 || !__OFSUB__(*(a4 + 24), *(a4 + 16)))
        {
          goto LABEL_52;
        }

        __break(1u);
      }

      else if (!v23)
      {
LABEL_52:
        v24 = CCDeriveKey();
        CCKDFParametersDestroy();
        sub_100016590(a4, a5);

        sub_100016590(a4, a5);
        sub_100016590(a4, a5);
        *a1 = v11;
        a1[1] = v18 | 0x4000000000000000;
        return v24;
      }

      if (__OFSUB__(HIDWORD(a4), a4))
      {
        goto LABEL_61;
      }

      goto LABEL_52;
    }

    goto LABEL_55;
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_100A7ED3C(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      memset(v32, 0, 14);
      return sub_100A7E758(a3, a4, v32, a5, a6, a7);
    }

    v14 = *(a1 + 16);
    sub_100017D5C(a5, a6);
    sub_100017D5C(a5, a6);
    sub_100017D5C(a5, a6);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v18 = v14 - v17 + v16;
      __DataStorage._length.getter();
      if (v18)
      {
        sub_100017D5C(a5, a6);
        v19 = sub_100A7E758(a3, a4, v18, a5, a6, a7);
        if (!v7)
        {
          v31 = v19;
          sub_100016590(a5, a6);
          sub_100016590(a5, a6);
          sub_100016590(a5, a6);
          sub_100016590(a5, a6);
          return v31;
        }

        sub_100016590(a5, a6);
        goto LABEL_20;
      }

LABEL_19:
      v29 = type metadata accessor for CryptoError();
      sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
      swift_allocError();
      (*(*(v29 - 8) + 104))(v30, enum case for CryptoError.memoryFailure(_:), v29);
      swift_willThrow();
LABEL_20:
      sub_100016590(a5, a6);
      sub_100016590(a5, a6);
      return sub_100016590(a5, a6);
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (!v11)
  {
    v32[0] = a1;
    LOWORD(v32[1]) = a2;
    BYTE2(v32[1]) = BYTE2(a2);
    BYTE3(v32[1]) = BYTE3(a2);
    BYTE4(v32[1]) = BYTE4(a2);
    BYTE5(v32[1]) = BYTE5(a2);
    return sub_100A7E758(a3, a4, v32, a5, a6, a7);
  }

  v20 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_24;
  }

  sub_100017D5C(a5, a6);
  sub_100017D5C(a5, a6);
  sub_100017D5C(a5, a6);
  v23 = __DataStorage._bytes.getter();
  if (!v23)
  {
LABEL_18:
    __DataStorage._length.getter();
    goto LABEL_19;
  }

  v24 = v23;
  v25 = __DataStorage._offset.getter();
  if (__OFSUB__(v20, v25))
  {
    goto LABEL_25;
  }

  v26 = v20 - v25 + v24;
  __DataStorage._length.getter();
  if (!v26)
  {
    goto LABEL_19;
  }

  sub_100017D5C(a5, a6);
  v27 = sub_100A7E758(a3, a4, v26, a5, a6, a7);
  sub_100016590(a5, a6);
  sub_100016590(a5, a6);
  sub_100016590(a5, a6);
  result = sub_100016590(a5, a6);
  if (!v7)
  {
    return v27;
  }

  return result;
}

uint64_t sub_100A7F110(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t *a7, uint64_t a8)
{
  v9 = v8;
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      v44 = 0;
      memset(v45, 0, 14);
      v31 = a4 >> 62;
      if ((a4 >> 62) <= 1)
      {
        if (v31)
        {
          if (__OFSUB__(HIDWORD(a3), a3))
          {
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
          }

          v22 = HIDWORD(a3) - a3;
        }

        else
        {
          v22 = BYTE6(a4);
        }

        goto LABEL_42;
      }

LABEL_32:
      v22 = 0;
      if (v31 == 2)
      {
        v34 = *(a3 + 16);
        v33 = *(a3 + 24);
        v22 = v33 - v34;
        if (__OFSUB__(v33, v34))
        {
          __break(1u);
LABEL_36:
          if (!__OFSUB__(HIDWORD(a3), a3))
          {
            goto LABEL_37;
          }

          goto LABEL_66;
        }
      }

LABEL_42:
      sub_100017D5C(a3, a4);
      sub_100017D5C(a5, a6);
      sub_100017D5C(a3, a4);
      sub_100017D5C(a5, a6);
      if (CCKDFParametersCreateAnsiX963())
      {
        v22 = 4294962996;
LABEL_58:
        sub_100016590(a3, a4);
        sub_100016590(a5, a6);
        goto LABEL_59;
      }

      sub_100017D5C(a5, a6);
      v39 = sub_100A7ED3C(a5, a6, a7, &v44, a5, a6, a8);
      if (!v8)
      {
        v22 = v39;
LABEL_57:
        sub_100016590(a5, a6);
        goto LABEL_58;
      }

      goto LABEL_27;
    }

    v42 = a8;
    v43 = v8;
    v17 = *(a1 + 16);
    sub_100017D5C(a5, a6);
    sub_100017D5C(a3, a4);
    sub_100017D5C(a5, a6);
    sub_100017D5C(a3, a4);
    sub_100017D5C(a5, a6);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      goto LABEL_25;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (__OFSUB__(v17, v20))
    {
      goto LABEL_64;
    }

    v21 = v17 - v20 + v19;
    a1 = __DataStorage._length.getter();
    if (!v21)
    {
      goto LABEL_26;
    }

    v22 = a7;
    v45[0] = 0;
    v23 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      v9 = v8;
      if (v23 != 2)
      {
        goto LABEL_55;
      }

      v30 = *(a3 + 24);
      if (!__OFSUB__(v30, *(a3 + 16)))
      {
        goto LABEL_55;
      }

      __break(1u);
      goto LABEL_50;
    }

    v9 = v8;
    if (!v23 || !__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_55;
    }

    __break(1u);
LABEL_15:
    v43 = v9;
    v24 = a1;
    if (a1 <= a1 >> 32)
    {
      v25 = a7;
      v42 = a8;
      sub_100017D5C(a5, a6);
      sub_100017D5C(a3, a4);
      sub_100017D5C(a5, a6);
      sub_100017D5C(a3, a4);
      sub_100017D5C(a5, a6);
      v26 = __DataStorage._bytes.getter();
      if (v26)
      {
        v27 = v26;
        v28 = __DataStorage._offset.getter();
        if (!__OFSUB__(v24, v28))
        {
          v29 = v24 - v28 + v27;
          __DataStorage._length.getter();
          if (v29)
          {
            v22 = v25;
            v45[0] = 0;
            v30 = a4 >> 62;
            if ((a4 >> 62) <= 1)
            {
              v9 = v43;
              if (!v30)
              {
LABEL_55:
                if (CCKDFParametersCreateAnsiX963())
                {
                  v22 = 4294962996;
                  goto LABEL_57;
                }

                sub_100017D5C(a5, a6);
                v41 = sub_100A7ED3C(a5, a6, v22, v45, a5, a6, v42);
                if (!v9)
                {
                  v22 = v41;
                  sub_100016590(a5, a6);
                  goto LABEL_57;
                }

                sub_100016590(a5, a6);
LABEL_27:
                sub_100016590(a5, a6);
                sub_100016590(a3, a4);
                sub_100016590(a5, a6);
                goto LABEL_59;
              }

LABEL_54:
              if (__OFSUB__(HIDWORD(a3), a3))
              {
                goto LABEL_68;
              }

              goto LABEL_55;
            }

LABEL_50:
            v9 = v43;
            if (v30 != 2 || !__OFSUB__(*(a3 + 24), *(a3 + 16)))
            {
              goto LABEL_55;
            }

            __break(1u);
            goto LABEL_54;
          }

LABEL_26:
          v22 = type metadata accessor for CryptoError();
          sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
          swift_allocError();
          (*(*(v22 - 8) + 104))(v32, enum case for CryptoError.memoryFailure(_:), v22);
          swift_willThrow();
          goto LABEL_27;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

LABEL_25:
      __DataStorage._length.getter();
      goto LABEL_26;
    }

    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v14)
  {
    goto LABEL_15;
  }

  v45[0] = a1;
  LOWORD(v45[1]) = a2;
  BYTE2(v45[1]) = BYTE2(a2);
  BYTE3(v45[1]) = BYTE3(a2);
  BYTE4(v45[1]) = BYTE4(a2);
  BYTE5(v45[1]) = BYTE5(a2);
  v15 = a4 >> 62;
  v44 = 0;
  if ((a4 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_37;
    }

    v31 = *(a3 + 24);
    if (!__OFSUB__(v31, *(a3 + 16)))
    {
      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_32;
  }

  if (v15)
  {
    goto LABEL_36;
  }

LABEL_37:
  sub_100017D5C(a3, a4);
  sub_100017D5C(a5, a6);
  sub_100017D5C(a3, a4);
  sub_100017D5C(a5, a6);
  if (CCKDFParametersCreateAnsiX963())
  {
    sub_100016590(a3, a4);
    sub_100016590(a5, a6);
    v22 = 4294962996;
  }

  else
  {
    sub_100017D5C(a5, a6);
    v22 = sub_100A7ED3C(a5, a6, a7, &v44, a5, a6, a8);
    sub_100016590(a5, a6);
    sub_100016590(a3, a4);
    sub_100016590(a5, a6);
  }

LABEL_59:
  sub_100016590(a3, a4);
  sub_100016590(a5, a6);
  return v22;
}

uint64_t sub_100A7F75C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  v50 = 0;
  v51 = 0;
  Pair = CCECCryptorGeneratePair();
  if (Pair)
  {
    v7 = Pair;
    v8 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      swift_once();
    }

    v9 = qword_10177BA00;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_101385D80;
    *(v10 + 56) = &type metadata for Int32;
    *(v10 + 64) = &protocol witness table for Int32;
    *(v10 + 32) = v7;
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Initial Pairing: CCECCryptorGeneratePair failed. Status: %d", v42);

    CryptoError.init(rawValue:)();
    v11 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    v13 = v12;
    v14 = *(v11 - 8);
    v15 = *(v14 + 48);
    if (v15(v5, 1, v11) == 1)
    {
      (*(v14 + 104))(v13, enum case for CryptoError.unspecifiedError(_:), v11);
      if (v15(v5, 1, v11) != 1)
      {
        sub_100A80D74(v5);
      }
    }

    else
    {
      (*(v14 + 32))(v13, v5, v11);
    }

    return swift_willThrow();
  }

  if (!v50)
  {
    v24 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      v40 = v24;
      swift_once();
      v24 = v40;
    }

    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, qword_10177BA00, "Initial Pairing: Private key is not available.", 46, 2, _swiftEmptyArrayStorage);
    v25 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, enum case for CryptoError.invalidKey(_:), v25);
    return swift_willThrow();
  }

  v16 = sub_100A7829C(v50, 1, 0);
  if (!v1)
  {
    v18 = v16;
    v48 = v17;
    if (v51)
    {
      v46 = sub_100A7829C(v51, 0, 0);
      v47 = v19;
      v20 = static Data.random(bytes:)();
      v22 = v21;
      v23 = v48;
      sub_100017D5C(v18, v48);
      v30 = v20;
      v44 = sub_10049BD68(v18, v23);
      v45 = v31;
      v33 = v46;
      v32 = v47;
      sub_100017D5C(v46, v47);
      v42 = sub_10049C0AC(v33, v32);
      v43 = v34;
      sub_1004A4714(v30, v22, v49);
      sub_100016590(v33, v32);
      v35 = v49[0];
      v36 = v49[1];
      CCECCryptorRelease();
      sub_100016590(v18, v48);
      result = CCECCryptorRelease();
      v38 = v43;
      *a1 = v42;
      a1[1] = v38;
      v39 = v45;
      a1[2] = v44;
      a1[3] = v39;
      a1[4] = v35;
      a1[5] = v36;
      return result;
    }

    v27 = static os_log_type_t.error.getter();
    if (qword_101694BE0 != -1)
    {
      v41 = v27;
      swift_once();
      v27 = v41;
    }

    os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, qword_10177BA00, "Initial Pairing: Public key is not available.", 45, 2, _swiftEmptyArrayStorage);
    v28 = type metadata accessor for CryptoError();
    sub_100A80DDC(&qword_10169C9B8, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, enum case for CryptoError.invalidKey(_:), v28);
    swift_willThrow();
    sub_100016590(v18, v48);
  }

  return CCECCryptorRelease();
}

uint64_t sub_100A7FDBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B4858, &qword_1013D6088);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100A8124C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  LOBYTE(v23) = 0;
  sub_100A812A0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v29;
  v22 = v28;
  v10 = v30;
  v41 = 1;
  sub_100A812F4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v11 = v38;
  v21 = v37;
  v12 = *(&v38 + 1);
  v20 = *(&v39 + 1);
  v13 = v39;
  v19 = v40;
  v14 = v22;
  *&v23 = v22;
  *(&v23 + 1) = v9;
  *&v24 = v10;
  *(&v24 + 1) = v37;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  sub_100A81348(&v23, &v28);
  sub_100007BAC(a1);
  v28 = v14;
  v29 = v9;
  v30 = v10;
  v31 = v21;
  v32 = v11;
  v33 = v12;
  v34 = v13;
  v35 = v20;
  v36 = v19;
  result = sub_100A81380(&v28);
  v16 = v26;
  *(a2 + 32) = v25;
  *(a2 + 48) = v16;
  *(a2 + 64) = v27;
  v17 = v24;
  *a2 = v23;
  *(a2 + 16) = v17;
  return result;
}

uint64_t sub_100A8008C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656D7265746E69 && a2 == 0xEF79654B65746169;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100A801BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B47F8, &qword_1013D5A50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100A80ED4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v23 = 0;
  sub_10049F434();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = a2;
  v10 = v21;
  v9 = v22;
  v23 = 1;
  sub_10049E3BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v21;
  v19 = v22;
  v23 = 2;
  sub_10049DECC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v11 = v21;
  v12 = v22;
  sub_10002E98C(v10, v9);
  v14 = v18;
  v13 = v19;
  sub_100017D5C(v18, v19);
  sub_10002E98C(v11, v12);
  sub_100007BAC(a1);
  sub_100006654(v10, v9);
  sub_100016590(v14, v13);
  result = sub_100006654(v11, v12);
  v16 = v20;
  *v20 = v10;
  v16[1] = v9;
  v16[2] = v14;
  v16[3] = v13;
  v16[4] = v11;
  v16[5] = v12;
  return result;
}

uint64_t sub_100A80484(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B4890, &qword_1013D6098);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1000035D0(a1, v7);
  sub_100A814C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[16] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[15] = 1;
    sub_100313070();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100007BAC(a1);
  return v7;
}

uint64_t sub_100A80648(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654B63696C627570 && a2 == 0xE900000000000079;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6553646572616873 && a2 == 0xEC00000074657263)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100A80774@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B4820, &qword_1013D5A70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100A789D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v23 = 0;
  sub_10049E3BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = a2;
  v10 = v21;
  v9 = v22;
  v23 = 1;
  sub_10049DECC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v21;
  v19 = v22;
  v23 = 2;
  sub_100313070();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v11 = v21;
  v12 = v22;
  sub_100017D5C(v10, v9);
  v14 = v18;
  v13 = v19;
  sub_100017D5C(v18, v19);
  sub_100017D5C(v11, v12);
  sub_100007BAC(a1);
  sub_100016590(v10, v9);
  sub_100016590(v14, v13);
  result = sub_100016590(v11, v12);
  v16 = v20;
  *v20 = v10;
  v16[1] = v9;
  v16[2] = v14;
  v16[3] = v13;
  v16[4] = v11;
  v16[5] = v12;
  return result;
}

uint64_t sub_100A80B0C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100A80B34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100A80B88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_100A80C18()
{
  result = qword_1016B47D0;
  if (!qword_1016B47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B47D0);
  }

  return result;
}

unint64_t sub_100A80C70()
{
  result = qword_1016B47D8;
  if (!qword_1016B47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B47D8);
  }

  return result;
}

unint64_t sub_100A80CC8()
{
  result = qword_1016B47E0;
  if (!qword_1016B47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B47E0);
  }

  return result;
}

unint64_t sub_100A80D20()
{
  result = qword_1016B47E8;
  if (!qword_1016B47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B47E8);
  }

  return result;
}

uint64_t sub_100A80D74(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169C9A0, &unk_1013D5A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100A80DDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100A80ED4()
{
  result = qword_1016B4800;
  if (!qword_1016B4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4800);
  }

  return result;
}

uint64_t sub_100A80F78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100A80FCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_100A81040()
{
  result = qword_1016B4828;
  if (!qword_1016B4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4828);
  }

  return result;
}

unint64_t sub_100A81098()
{
  result = qword_1016B4830;
  if (!qword_1016B4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4830);
  }

  return result;
}

unint64_t sub_100A810F0()
{
  result = qword_1016B4838;
  if (!qword_1016B4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4838);
  }

  return result;
}

unint64_t sub_100A81148()
{
  result = qword_1016B4840;
  if (!qword_1016B4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4840);
  }

  return result;
}

unint64_t sub_100A811A0()
{
  result = qword_1016B4848;
  if (!qword_1016B4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4848);
  }

  return result;
}

unint64_t sub_100A811F8()
{
  result = qword_1016B4850;
  if (!qword_1016B4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4850);
  }

  return result;
}

unint64_t sub_100A8124C()
{
  result = qword_1016B4860;
  if (!qword_1016B4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4860);
  }

  return result;
}

unint64_t sub_100A812A0()
{
  result = qword_1016B4868;
  if (!qword_1016B4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4868);
  }

  return result;
}

unint64_t sub_100A812F4()
{
  result = qword_1016B4870;
  if (!qword_1016B4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4870);
  }

  return result;
}

unint64_t sub_100A813E8()
{
  result = qword_1016B4880;
  if (!qword_1016B4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4880);
  }

  return result;
}

unint64_t sub_100A81474()
{
  result = qword_1016B4888;
  if (!qword_1016B4888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4888);
  }

  return result;
}

unint64_t sub_100A814C8()
{
  result = qword_1016B4898;
  if (!qword_1016B4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B4898);
  }

  return result;
}

unint64_t sub_100A81540()
{
  result = qword_1016B48A8;
  if (!qword_1016B48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B48A8);
  }

  return result;
}

unint64_t sub_100A81598()
{
  result = qword_1016B48B0;
  if (!qword_1016B48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B48B0);
  }

  return result;
}

unint64_t sub_100A815F0()
{
  result = qword_1016B48B8;
  if (!qword_1016B48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B48B8);
  }

  return result;
}

unint64_t sub_100A81648()
{
  result = qword_1016B48C0;
  if (!qword_1016B48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B48C0);
  }

  return result;
}

unint64_t sub_100A816A0()
{
  result = qword_1016B48C8;
  if (!qword_1016B48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B48C8);
  }

  return result;
}

unint64_t sub_100A816F8()
{
  result = qword_1016B48D0;
  if (!qword_1016B48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B48D0);
  }

  return result;
}

uint64_t sub_100A8175C(void *a1, char a2)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v8 = a2;
  sub_100680B90();
  v5 = FixedWidthInteger.data.getter();
  v6 = v3;
  sub_10015049C(v7, v7[3]);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v5, v6);
  return sub_100007BAC(v7);
}

uint64_t sub_100A81828@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100A818F4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_100A81854(uint64_t a1)
{
  *(a1 + 8) = sub_100A81884();
  result = sub_10030FC80();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100A81884()
{
  result = qword_1016B48D8;
  if (!qword_1016B48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B48D8);
  }

  return result;
}

uint64_t sub_100A818F4(void *a1)
{
  v3 = type metadata accessor for Endianness();
  __chkstk_darwin(v3 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v4 = sub_10015049C(v13, v13[3]);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (!v1)
  {
    v7 = v5;
    v8 = v6;
    sub_100017D5C(v5, v6);
    static Endianness.current.getter();
    sub_100680B90();
    FixedWidthInteger.init(data:ofEndianness:)();
    if (v12 != 1)
    {
      v4 = v11;
      sub_100016590(v7, v8);
      sub_100007BAC(v13);
      sub_100007BAC(a1);
      return v4;
    }

    v4 = type metadata accessor for BinaryDecodingError();
    sub_100247A38();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v9, enum case for BinaryDecodingError.decodingError(_:), v4);
    swift_willThrow();
    sub_100016590(v7, v8);
  }

  sub_100007BAC(v13);
  sub_100007BAC(a1);
  return v4;
}

void sub_100A81AC4(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v28 = type metadata accessor for UUID();
  __chkstk_darwin(v28);
  v31 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 56);
  v22 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v21 = (v6 + 63) >> 6;
  v26 = v3 + 16;
  v27 = v3;
  v24 = v3 + 8;
  v29 = a1;

  v9 = 0;
  v23 = xmmword_101385D80;
  while (v8)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v28;
    v13 = v27;
    v14 = *(v29 + 48) + *(v27 + 72) * (v11 | (v10 << 6));
    v30 = *(v27 + 16);
    v15 = v31;
    v30(v31, v14, v28);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v23;
    v30((v17 + v16), v15, v12);
    v18 = sub_10000954C(v17);
    swift_setDeallocating();
    v19 = *(v13 + 8);
    v19(v17 + v16, v12);
    swift_deallocClassInstance();
    sub_100DEEB44(&v32, v18);

    v19(v31, v12);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v21)
    {

      return;
    }

    v8 = *(v22 + 8 * v10);
    ++v9;
    if (v8)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100A81D44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v136 = a3;
  v114 = a4;
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v8 = v108 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v122 = v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v142 = v108 - v14;
  __chkstk_darwin(v13);
  v16 = v108 - v15;
  v17 = type metadata accessor for StableIdentifier(0);
  v18 = __chkstk_darwin(v17);
  v125 = v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = v108 - v21;
  v23 = __chkstk_darwin(v20);
  v123 = v108 - v24;
  v25 = __chkstk_darwin(v23);
  v117 = v108 - v26;
  v27 = __chkstk_darwin(v25);
  v28 = __chkstk_darwin(v27);
  v113 = v108 - v29;
  v30 = __chkstk_darwin(v28);
  v111 = v108 - v31;
  v32 = __chkstk_darwin(v30);
  v110 = v108 - v33;
  v34 = __chkstk_darwin(v32);
  v109 = v108 - v35;
  result = __chkstk_darwin(v34);
  v38 = v108 - v37;
  v39 = 0;
  v132 = &v108[1] - v37;
  v108[1] = v40 + 8;
  v41 = a1[1];
  v119 = *a1;
  v115 = v41;
  v146 = (v10 + 8);
  v131 = (v10 + 48);
  v129 = (v10 + 32);
  v126 = v10;
  v141 = (v10 + 16);
  v42 = a1[3];
  v120 = a1[2];
  v116 = v42;
  v108[2] = v43 + 8;
  v44 = a1[5];
  v135 = a1[4];
  v121 = v22 + 8;
  v134 = a2;
  v45 = *(a2 + 16);
  v130 = v108 - v37;
  v127 = result;
  v128 = v8;
  v143 = v9;
  v144 = v16;
  v124 = v22;
  v112 = v43;
  v133 = v45;
  while (2)
  {
    v118 = v44;
LABEL_5:
    while (2)
    {
      v47 = v39;
      if (v39 == v45)
      {
        goto LABEL_77;
      }

      while (1)
      {
        if (v47 >= v45)
        {
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        result = type metadata accessor for OwnedBeaconRecord(0);
        v48 = *(*(result - 8) + 80);
        v49 = *(*(result - 8) + 72);
        if (__OFADD__(v47, 1))
        {
          goto LABEL_79;
        }

        v138 = v47 + 1;
        v139 = result;
        v50 = v134 + ((v48 + 32) & ~v48) + v49 * v47;
        v137 = *(result + 24);
        sub_100022A54(v50 + v137, v38, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v140 = v50;
        if (EnumCaseMultiPayload != 3)
        {
          if (EnumCaseMultiPayload == 2)
          {
            sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

            goto LABEL_12;
          }

          sub_100022C40(v38, type metadata accessor for StableIdentifier);
          v88 = v137;
          v89 = v50 + v137;
          v90 = v109;
          sub_100022A54(v89, v109, type metadata accessor for StableIdentifier);
          v91 = swift_getEnumCaseMultiPayload();
          v92 = v90;
          v93 = v140;
          sub_100022C40(v92, type metadata accessor for StableIdentifier);
          v99 = v91 == 1;
          v38 = v130;
          if (!v99)
          {
            sub_100022A54(v93 + v88, v110, type metadata accessor for StableIdentifier);
            v94 = swift_getEnumCaseMultiPayload();
            if (v94 == 2)
            {
              sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
            }

            else
            {
              v95 = v110;
              if (v94 != 3)
              {
                goto LABEL_70;
              }

              sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
            }

            (*v146)(v110, v9);
            v93 = v140;
            v88 = v137;
          }

          v100 = v93 + v88;
          v101 = v93;
          v95 = v111;
          sub_100022A54(v100, v111, type metadata accessor for StableIdentifier);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_100022C40(v111, type metadata accessor for StableIdentifier);
            v102 = (v101 + v139[15]);
            result = *v102;
            v103 = *v102 == 0x3830332E302E32 && v102[1] == 0xE700000000000000;
            if (v103 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
            {
              v46 = __OFADD__(v115++, 1);
              v39 = v138;
              v45 = v133;
              if (!v46)
              {
                goto LABEL_5;
              }

              goto LABEL_84;
            }

            goto LABEL_71;
          }

LABEL_70:
          result = sub_100022C40(v95, type metadata accessor for StableIdentifier);
LABEL_71:
          v46 = __OFADD__(v119++, 1);
          v39 = v138;
          v45 = v133;
          if (!v46)
          {
            goto LABEL_5;
          }

          goto LABEL_82;
        }

        sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

LABEL_12:

        v145 = *v146;
        v145(v38, v9);
        v52 = v140;
        if (*(v140 + v139[16]) != 76)
        {
          v78 = v137;
          v79 = v113;
          sub_100022A54(v140 + v137, v113, type metadata accessor for StableIdentifier);
          v80 = swift_getEnumCaseMultiPayload();
          v81 = v79;
          v82 = v140;
          sub_100022C40(v81, type metadata accessor for StableIdentifier);
          v83 = v78;
          if (v80 != 1)
          {
            v84 = v112;
            sub_100022A54(v82 + v78, v112, type metadata accessor for StableIdentifier);
            v85 = swift_getEnumCaseMultiPayload();
            if (v85 == 2)
            {
              sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
            }

            else
            {
              v86 = v85;
              v87 = v84;
              if (v86 != 3)
              {
                goto LABEL_55;
              }

              sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
            }

            v145(v112, v9);
            v82 = v140;
            v83 = v137;
          }

          v96 = v117;
          sub_100022A54(v82 + v83, v117, type metadata accessor for StableIdentifier);
          v97 = swift_getEnumCaseMultiPayload();
          v87 = v96;
          if (v97 == 1)
          {
            sub_100022C40(v117, type metadata accessor for StableIdentifier);
            v98 = (v82 + v139[15]);
            result = *v98;
            v99 = *v98 == 0x3830332E302E32 && v98[1] == 0xE700000000000000;
            if (v99 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
            {
              v46 = __OFADD__(v116++, 1);
              v39 = v138;
              v45 = v133;
              if (!v46)
              {
                goto LABEL_5;
              }

              goto LABEL_83;
            }

            goto LABEL_56;
          }

LABEL_55:
          result = sub_100022C40(v87, type metadata accessor for StableIdentifier);
LABEL_56:
          v46 = __OFADD__(v120++, 1);
          v39 = v138;
          v45 = v133;
          if (!v46)
          {
            goto LABEL_5;
          }

          goto LABEL_81;
        }

        sub_1000D2A70(v140 + v139[7], v8, &qword_1016980D0, &unk_10138F3B0);
        if ((*v131)(v8, 1, v9) == 1)
        {
          v67 = v9;
          sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
          goto LABEL_24;
        }

        (*v129)(v16, v8, v9);
        v53 = *v136;
        if (!*(*v136 + 16))
        {
          goto LABEL_23;
        }

        sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

        v54 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v55 = -1 << *(v53 + 32);
        v56 = v54 & ~v55;
        if (((*(v53 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
        {
          break;
        }

        v57 = ~v55;
        v58 = *(v126 + 72);
        v59 = *(v126 + 16);
        while (1)
        {
          v61 = v142;
          v60 = v143;
          v59(v142, *(v53 + 48) + v58 * v56, v143);
          sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v62 = dispatch thunk of static Equatable.== infix(_:_:)();
          v145(v61, v60);
          if (v62)
          {
            break;
          }

          v56 = (v56 + 1) & v57;
          if (((*(v53 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v9 = v143;
        v16 = v144;
        result = (v145)(v144, v143);
        v47 = v138;
        v45 = v133;
        v8 = v128;
        v38 = v130;
        if (v138 == v133)
        {
          goto LABEL_77;
        }
      }

LABEL_22:

      v8 = v128;
      v9 = v143;
      v16 = v144;
LABEL_23:
      v63 = v122;
      (*v141)(v122, v16, v9);
      v64 = v142;
      sub_100DE8BCC(v142, v63);
      v65 = v64;
      v66 = v145;
      v145(v65, v9);
      v67 = v9;
      v66(v16, v9);
      v38 = v130;
      v52 = v140;
LABEL_24:
      v68 = v137;
      v69 = v123;
      sub_100022A54(v52 + v137, v123, type metadata accessor for StableIdentifier);
      v70 = swift_getEnumCaseMultiPayload();
      v71 = v69;
      v72 = v140;
      sub_100022C40(v71, type metadata accessor for StableIdentifier);
      v73 = v68;
      v74 = v124;
      v9 = v67;
      if (v70 != 1)
      {
        sub_100022A54(v72 + v73, v124, type metadata accessor for StableIdentifier);
        v75 = swift_getEnumCaseMultiPayload();
        if (v75 != 2)
        {
          v76 = v74;
          if (v75 == 3)
          {
            sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

            goto LABEL_29;
          }

LABEL_3:
          result = sub_100022C40(v76, type metadata accessor for StableIdentifier);
          goto LABEL_4;
        }

        sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

LABEL_29:

        v145(v74, v67);
        v72 = v140;
        v73 = v137;
      }

      v76 = v125;
      sub_100022A54(v72 + v73, v125, type metadata accessor for StableIdentifier);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_3;
      }

      sub_100022C40(v125, type metadata accessor for StableIdentifier);
      v77 = (v72 + v139[15]);
      result = *v77;
      if (*v77 != 0x3830332E302E32 || v77[1] != 0xE700000000000000)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
LABEL_4:
          v46 = __OFADD__(v135++, 1);
          v39 = v138;
          v45 = v133;
          if (!v46)
          {
            continue;
          }

LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          return result;
        }
      }

      break;
    }

    v44 = v118 + 1;
    v39 = v138;
    v45 = v133;
    if (!__OFADD__(v118, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_77:
  v104 = v114;
  v105 = v115;
  *v114 = v119;
  v104[1] = v105;
  v106 = v116;
  v104[2] = v120;
  v104[3] = v106;
  v107 = v118;
  v104[4] = v135;
  v104[5] = v107;
  return result;
}

uint64_t sub_100A82D10@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 isInternalBuild];

  if (v10 && (v11 = [objc_opt_self() standardUserDefaults], v12 = String._bridgeToObjectiveC()(), v13 = objc_msgSend(v11, "stringForKey:", v12), v11, v12, v13) && (v14 = objc_msgSend(objc_allocWithZone(NSISO8601DateFormatter), "init"), v15 = objc_msgSend(v14, "dateFromString:", v13), v14, v13, v15))
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(a1, v8, v2);
    v16 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v17 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_101385D80;
    (*(v3 + 16))(v6, a1, v2);
    sub_10000768C(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v3 + 8))(v6, v2);
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100008C00();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Forced pairing date: %@", 23, 2, v18);
  }

  else
  {

    return static Date.trustedNow.getter(a1);
  }
}

uint64_t sub_100A8306C(unsigned __int8 a1)
{
  v2 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  sub_101129AC0(&off_101607AD0);
  v5 = sub_10112C0E0();

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177BA08);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = a1;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v5 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "Posting SPBeaconsChangedNotification for reason %ld, bypass rate-limit %{BOOL}d", v9, 0x12u);
  }

  ThrottledDarwinPoster.post(bypassRateLimit:)(v5 & 1);
  if (v10)
  {
  }

  sub_101129AC0(&off_101607B00);
  v11 = sub_10112C0E0();

  if (v11)
  {
    sub_100B040D4();
  }

  sub_101129AC0(&off_101607B28);
  v12 = sub_10112C0E0();

  if (v12)
  {
    type metadata accessor for Transaction();
    *(swift_allocObject() + 16) = a1;
    static Transaction.asyncTask(name:block:)();
  }

  if (a1 == 7)
  {
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    sub_10025EDD4(0, 0, v4, &unk_1013D6650, v15);
  }

  return result;
}

uint64_t sub_100A8338C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v4 = *(v15 - 8);
  __chkstk_darwin(v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v7);
  v11 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v10, v7);
  aBlock[4] = sub_100B23ABC;
  v19 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101646A60;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v16 + 8))(v3, v1);
  (*(v4 + 8))(v6, v15);

  type metadata accessor for Transaction();
  return static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100A8375C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100AB035C();
  result = sub_100B07CF0(v3);
  if (v3 > 0 != (result & 1))
  {
    v5 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v6 = v3 > 0;
    v7 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10138BBE0;
    v9 = sub_100B07CF0(v8);
    *(v8 + 56) = &type metadata for Bool;
    *(v8 + 64) = &protocol witness table for Bool;
    *(v8 + 32) = v9 & 1;
    *(v8 + 96) = &type metadata for Bool;
    *(v8 + 104) = &protocol witness table for Bool;
    *(v8 + 72) = v6;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v7, "processBeaconStoreChanges FindMyAccessory %{public}d %{public}d - SEND", 70, 2, v8);

    sub_100B07FD8(v6);
    result = CurrentValueSubject.send(_:)();
  }

  v10 = *(v2 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconStoreChanged);
  if (v10)
  {
    v11 = *(v2 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconStoreChanged + 8);

    v10(v2);
    return sub_1000BB27C(v10, v11);
  }

  return result;
}

uint64_t sub_100A838F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000D2A70(a3, v23 - v10, &qword_101698C00, &qword_10138B570);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000B3A8(v11, &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);

      return v21;
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

  sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100A83BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000D2A70(a3, v22 - v9, &qword_101698C00, &qword_10138B570);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000B3A8(v10, &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      sub_1000BC4D4(&qword_1016B55F0, &qword_1013D6BE0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B3A8(a3, &qword_101698C00, &qword_10138B570);
  sub_1000BC4D4(&qword_1016B55F0, &qword_1013D6BE0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100A83E64(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 200) = a3;
  *(v4 + 32) = a1;
  v6 = type metadata accessor for Date();
  *(v4 + 56) = v6;
  *(v4 + 64) = *(v6 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v4 + 120) = v7;
  *(v4 + 128) = *(v7 - 8);
  *(v4 + 136) = swift_task_alloc();
  v8 = type metadata accessor for DateInterval();
  *(v4 + 144) = v8;
  *(v4 + 152) = *(v8 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v9 = swift_task_alloc();
  *(v4 + 176) = v9;
  v10 = swift_task_alloc();
  *(v4 + 184) = v10;
  *v10 = v4;
  v10[1] = sub_100A840A4;

  return sub_1007383E8(v9, a1);
}

uint64_t sub_100A840A4()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100A8481C;
  }

  else
  {
    v2 = sub_100A841B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100A841B8()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 32);
  v3 = v2[3];
  v4 = v2[4];
  sub_1000035D0(v2, v3);
  v5 = (*(v4 + 112))(v3, v4);
  v64 = v2;
  if (v1 == 1)
  {
    v6 = v5;
    v8 = v2[3];
    v7 = v2[4];
    sub_1000035D0(*(v0 + 32), v8);
    (*(*(*(v7 + 8) + 8) + 32))(v8);
    if (v6)
    {
      v10 = *(v0 + 88);
      v9 = *(v0 + 96);
      v11 = *(v0 + 80);
      v13 = *(v0 + 56);
      v12 = *(v0 + 64);
      DateInterval.start.getter();
      Date.timeIntervalSince(_:)();
      v15 = v14;
      v16 = *(v12 + 8);
      v16(v9, v13);
      if (v15 > 0.0)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0.0;
      }

      DateInterval.end.getter();
      Date.timeIntervalSince(_:)();
      v19 = v18;
      v16(v10, v13);
      if (v19 > 0.0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0.0;
      }

      v21 = v20 * 0.0002;
      DateInterval.start.getter();
      Date.addingTimeInterval(_:)();
      v16(v11, v13);
      DateInterval.end.getter();
      Date.addingTimeInterval(_:)();
      v16(v11, v13);
      v63 = static os_log_type_t.default.getter();
      if (qword_101694A20 != -1)
      {
        swift_once();
      }

      v22 = *(v0 + 48);
      v62 = qword_10177B550;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10138C0D0;
      *(v0 + 24) = *v22;
      sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      *(v23 + 56) = &type metadata for String;
      v27 = sub_100008C00();
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      *(v23 + 96) = &type metadata for String;
      *(v23 + 104) = v27;
      *(v23 + 64) = v27;
      *(v23 + 72) = 0xD000000000000053;
      *(v23 + 80) = 0x800000010136BDA0;
      v28 = UUID.uuidString.getter();
      *(v23 + 136) = &type metadata for String;
      *(v23 + 144) = v27;
      *(v23 + 112) = v28;
      *(v23 + 120) = v29;
      *(v23 + 176) = &type metadata for Double;
      *(v23 + 184) = &protocol witness table for Double;
      *(v23 + 152) = v17 * 0.0002;
      *(v23 + 216) = &type metadata for Double;
      *(v23 + 224) = &protocol witness table for Double;
      *(v23 + 192) = v21;
      v30 = "%{public}@: %{public}@. Is drift compensated for beacon %{mask.hash}@, drift %f - %f";
      v31 = 84;
    }

    else
    {
      DateInterval.start.getter();
      DateInterval.end.getter();
      v63 = static os_log_type_t.default.getter();
      if (qword_101694A20 != -1)
      {
        swift_once();
      }

      v32 = *(v0 + 48);
      v62 = qword_10177B550;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10138B360;
      *(v0 + 16) = *v32;
      sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
      v33 = String.init<A>(describing:)();
      v35 = v34;
      *(v23 + 56) = &type metadata for String;
      v36 = sub_100008C00();
      *(v23 + 32) = v33;
      *(v23 + 40) = v35;
      *(v23 + 96) = &type metadata for String;
      *(v23 + 104) = v36;
      *(v23 + 64) = v36;
      *(v23 + 72) = 0xD000000000000053;
      *(v23 + 80) = 0x800000010136BDA0;
      v37 = UUID.uuidString.getter();
      *(v23 + 136) = &type metadata for String;
      *(v23 + 144) = v36;
      *(v23 + 112) = v37;
      *(v23 + 120) = v38;
      v30 = "%{public}@: %{public}@. No drift compensation for beacon %{mask.hash}@";
      v31 = 70;
    }

    v39 = *(v0 + 128);
    v61 = *(v0 + 136);
    v40 = *(v0 + 112);
    v60 = *(v0 + 120);
    v41 = *(v0 + 104);
    v43 = *(v0 + 72);
    v42 = *(v0 + 80);
    v44 = *(v0 + 56);
    v45 = *(v0 + 64);
    os_log(_:dso:log:_:_:)(v63, &_mh_execute_header, v62, v30, v31, 2, v23, *(v0 + 160));

    v46 = *(v45 + 16);
    v46(v42, v40, v44);
    v46(v43, v41, v44);
    DateInterval.init(start:end:)();
    v47 = *(v45 + 8);
    v47(v41, v44);
    v47(v40, v44);
    (*(v39 + 8))(v61, v60);
  }

  else
  {
    (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 40), *(v0 + 144));
  }

  v48 = *(v0 + 176);
  v49 = *(v0 + 152);
  v50 = *(v0 + 160);
  v51 = *(v0 + 144);
  v52 = v64[3];
  v53 = v64[4];
  v54 = sub_1000035D0(*(v0 + 32), v52);
  v55 = sub_100739680(v54, v50, v48, v52, v53);
  v57 = v56;
  (*(v49 + 8))(v50, v51);
  sub_10000B3A8(v48, &unk_1016C8FC0, &unk_10139D7D0);

  v58 = *(v0 + 8);

  return v58(v55, v57);
}

uint64_t sub_100A8481C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A848EC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 200) = a3;
  *(v4 + 32) = a1;
  v6 = type metadata accessor for Date();
  *(v4 + 56) = v6;
  *(v4 + 64) = *(v6 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v4 + 120) = v7;
  *(v4 + 128) = *(v7 - 8);
  *(v4 + 136) = swift_task_alloc();
  v8 = type metadata accessor for DateInterval();
  *(v4 + 144) = v8;
  *(v4 + 152) = *(v8 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v9 = swift_task_alloc();
  *(v4 + 176) = v9;
  v10 = swift_task_alloc();
  *(v4 + 184) = v10;
  *v10 = v4;
  v10[1] = sub_100A84B2C;

  return sub_1007383E8(v9, a1);
}

uint64_t sub_100A84B2C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100B27E14;
  }

  else
  {
    v2 = sub_100A84C40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100A84C40()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 32);
  v3 = v2[3];
  v4 = v2[4];
  sub_1000035D0(v2, v3);
  v5 = (*(v4 + 112))(v3, v4);
  v64 = v2;
  if (v1 == 1)
  {
    v6 = v5;
    v8 = v2[3];
    v7 = v2[4];
    sub_1000035D0(*(v0 + 32), v8);
    (*(*(*(v7 + 8) + 8) + 32))(v8);
    if (v6)
    {
      v10 = *(v0 + 88);
      v9 = *(v0 + 96);
      v11 = *(v0 + 80);
      v13 = *(v0 + 56);
      v12 = *(v0 + 64);
      DateInterval.start.getter();
      Date.timeIntervalSince(_:)();
      v15 = v14;
      v16 = *(v12 + 8);
      v16(v9, v13);
      if (v15 > 0.0)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0.0;
      }

      DateInterval.end.getter();
      Date.timeIntervalSince(_:)();
      v19 = v18;
      v16(v10, v13);
      if (v19 > 0.0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0.0;
      }

      v21 = v20 * 0.0002;
      DateInterval.start.getter();
      Date.addingTimeInterval(_:)();
      v16(v11, v13);
      DateInterval.end.getter();
      Date.addingTimeInterval(_:)();
      v16(v11, v13);
      v63 = static os_log_type_t.default.getter();
      if (qword_101694A20 != -1)
      {
        swift_once();
      }

      v22 = *(v0 + 48);
      v62 = qword_10177B550;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10138C0D0;
      *(v0 + 24) = *v22;
      sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      *(v23 + 56) = &type metadata for String;
      v27 = sub_100008C00();
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      *(v23 + 96) = &type metadata for String;
      *(v23 + 104) = v27;
      *(v23 + 64) = v27;
      *(v23 + 72) = 0xD000000000000053;
      *(v23 + 80) = 0x800000010136BDA0;
      v28 = UUID.uuidString.getter();
      *(v23 + 136) = &type metadata for String;
      *(v23 + 144) = v27;
      *(v23 + 112) = v28;
      *(v23 + 120) = v29;
      *(v23 + 176) = &type metadata for Double;
      *(v23 + 184) = &protocol witness table for Double;
      *(v23 + 152) = v17 * 0.0002;
      *(v23 + 216) = &type metadata for Double;
      *(v23 + 224) = &protocol witness table for Double;
      *(v23 + 192) = v21;
      v30 = "%{public}@: %{public}@. Is drift compensated for beacon %{mask.hash}@, drift %f - %f";
      v31 = 84;
    }

    else
    {
      DateInterval.start.getter();
      DateInterval.end.getter();
      v63 = static os_log_type_t.default.getter();
      if (qword_101694A20 != -1)
      {
        swift_once();
      }

      v32 = *(v0 + 48);
      v62 = qword_10177B550;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10138B360;
      *(v0 + 16) = *v32;
      sub_1000BC4D4(&qword_1016A58F8, &unk_1013B3360);
      v33 = String.init<A>(describing:)();
      v35 = v34;
      *(v23 + 56) = &type metadata for String;
      v36 = sub_100008C00();
      *(v23 + 32) = v33;
      *(v23 + 40) = v35;
      *(v23 + 96) = &type metadata for String;
      *(v23 + 104) = v36;
      *(v23 + 64) = v36;
      *(v23 + 72) = 0xD000000000000053;
      *(v23 + 80) = 0x800000010136BDA0;
      v37 = UUID.uuidString.getter();
      *(v23 + 136) = &type metadata for String;
      *(v23 + 144) = v36;
      *(v23 + 112) = v37;
      *(v23 + 120) = v38;
      v30 = "%{public}@: %{public}@. No drift compensation for beacon %{mask.hash}@";
      v31 = 70;
    }

    v39 = *(v0 + 128);
    v61 = *(v0 + 136);
    v40 = *(v0 + 112);
    v60 = *(v0 + 120);
    v41 = *(v0 + 104);
    v43 = *(v0 + 72);
    v42 = *(v0 + 80);
    v44 = *(v0 + 56);
    v45 = *(v0 + 64);
    os_log(_:dso:log:_:_:)(v63, &_mh_execute_header, v62, v30, v31, 2, v23, *(v0 + 160));

    v46 = *(v45 + 16);
    v46(v42, v40, v44);
    v46(v43, v41, v44);
    DateInterval.init(start:end:)();
    v47 = *(v45 + 8);
    v47(v41, v44);
    v47(v40, v44);
    (*(v39 + 8))(v61, v60);
  }

  else
  {
    (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 40), *(v0 + 144));
  }

  v48 = *(v0 + 176);
  v49 = *(v0 + 152);
  v50 = *(v0 + 160);
  v51 = *(v0 + 144);
  v52 = v64[3];
  v53 = v64[4];
  v54 = sub_1000035D0(*(v0 + 32), v52);
  v55 = sub_10073A160(v54, v50, v48, v52, v53);
  v57 = v56;
  (*(v49 + 8))(v50, v51);
  sub_10000B3A8(v48, &unk_1016C8FC0, &unk_10139D7D0);

  v58 = *(v0 + 8);

  return v58(v55, v57);
}

uint64_t sub_100A852A4@<X0>(__int128 *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v74 = a1;
  v78 = a3;
  v4 = type metadata accessor for Date();
  v75 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v65 - v8;
  v10 = type metadata accessor for UUID();
  v76 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StableIdentifier(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = (&v65 - v17);
  v19 = [a2 systemVersion];
  if (!v19)
  {
    goto LABEL_20;
  }

  v20 = v19;
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v21;

  if ([a2 vendorId] < 1 || objc_msgSend(a2, "productId") < 1 || (v22 = objc_msgSend(a2, "ecid")) == 0)
  {
LABEL_19:

LABEL_20:
    v54 = static os_log_type_t.error.getter();
    if (qword_101695068 != -1)
    {
      v63 = v54;
      swift_once();
      v54 = v63;
    }

    os_log(_:dso:log:_:_:)(v54, &_mh_execute_header, qword_10177C3B0, "generateOwnedBeaconRecord: could not get basic device info from the session.", 76, 2, _swiftEmptyArrayStorage);
    goto LABEL_23;
  }

  v23 = v22;
  v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v24;

  v25 = [a2 chipId];
  if (!v25)
  {
LABEL_18:
    sub_100016590(v71, v72);
    goto LABEL_19;
  }

  v26 = v25;
  v69 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v27;

  v28 = [a2 serialNumber];
  if (!v28)
  {
    sub_100016590(v69, v70);
    goto LABEL_18;
  }

  v29 = v28;
  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v30;

  v31 = Data.hexString.getter();
  v33 = HIBYTE(v32) & 0xF;
  v34 = v32;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    v66 = v31;
    v35 = Data.hexString.getter();
    v37 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v37 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      v38 = v68;
      v39 = HIBYTE(v68) & 0xF;
      v40 = v67;
      if ((v68 & 0x2000000000000000) == 0)
      {
        v39 = v67 & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
        *v18 = v66;
        v18[1] = v34;
        v18[2] = v35;
        v18[3] = v36;
        v18[4] = v40;
        v18[5] = v38;
        swift_storeEnumTagMultiPayload();
        UUID.init()();
        sub_100022A54(v18, v16, type metadata accessor for StableIdentifier);
        (*(v76 + 56))(v9, 1, 1, v10);
        sub_100A82D10(v6);
        v41 = v74[2];
        v83 = v74[3];
        v84 = v41;
        v42 = v74[4];
        v43 = v74[1];
        v81 = *v74;
        v82 = v42;
        v80 = v43;
        sub_10012BFDC(&v84, v79);
        sub_1000D2A70(&v83, v79, &qword_1016977A8, &qword_1013D6820);
        sub_1000D2A70(&v82, v79, &qword_1016977A8, &qword_1013D6820);
        sub_10012C038(&v81, v79);
        sub_10012C094(&v80, v79);
        v74 = [a2 vendorId];
        v68 = [a2 productId];
        v44 = sub_1012C7DEC([a2 batteryLevel]);
        v45 = [a2 isZeus];
        sub_100016590(v71, v72);
        sub_100016590(v69, v70);
        sub_100022C40(v18, type metadata accessor for StableIdentifier);
        v46 = v78;
        *v78 = xmmword_10138C660;
        v47 = type metadata accessor for OwnedBeaconRecord(0);
        (*(v76 + 32))(&v46[v47[5]], v12, v10);
        sub_10002911C(v16, &v46[v47[6]], type metadata accessor for StableIdentifier);
        sub_1000D2AD8(v9, &v46[v47[7]], &qword_1016980D0, &unk_10138F3B0);
        (*(v75 + 32))(&v46[v47[8]], v6, v4);
        v48 = v83;
        *&v46[v47[9]] = v84;
        *&v46[v47[10]] = v48;
        v49 = v81;
        *&v46[v47[11]] = v82;
        *&v46[v47[12]] = v49;
        *&v46[v47[13]] = v80;
        v50 = &v46[v47[14]];
        *v50 = 0;
        *(v50 + 1) = 0xE000000000000000;
        v51 = &v46[v47[15]];
        v52 = v77;
        *v51 = v73;
        v51[1] = v52;
        *&v46[v47[16]] = v74;
        *&v46[v47[17]] = v68;
        v46[v47[18]] = 3;
        v46[v47[19]] = v44;
        v46[v47[20]] = v45;
        return (*(*(v47 - 1) + 56))(v46, 0, 1, v47);
      }

      v68 = v36;
    }

    v60 = v70;
    v61 = v69;
    v59 = v72;
  }

  else
  {
    v59 = v72;
    v60 = v70;
    v61 = v69;
  }

  v62 = static os_log_type_t.error.getter();
  if (qword_101695068 != -1)
  {
    v64 = v62;
    swift_once();
    v62 = v64;
    v59 = v72;
  }

  os_log(_:dso:log:_:_:)(v62, &_mh_execute_header, qword_10177C3B0, "generateOwnedBeaconRecord: invalid parameters for StableIdentifier.", 67, 2, _swiftEmptyArrayStorage);
  sub_100016590(v71, v59);
  sub_100016590(v61, v60);
LABEL_23:
  v55 = type metadata accessor for OwnedBeaconRecord(0);
  v56 = *(*(v55 - 8) + 56);
  v57 = v55;
  v58 = v78;

  return v56(v58, 1, 1, v57);
}

uint64_t sub_100A85AEC()
{
  v2 = v0;
  v24 = type metadata accessor for DispatchPredicate();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = (v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177BA08);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Attempting to purge beacon store files.", v9, 2u);
  }

  v10 = *(v2 + 168);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v22[1] = v1;
  v11 = aBlock[0];
  v12 = *(v10 + 16);
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = sub_100B2F70C;
  v13[4] = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100B24B04;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_1016472D0;
  v15 = _Block_copy(aBlock);

  dispatch_sync(v12, v15);
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    *v5 = v12;
    v17 = v24;
    (*(v3 + 104))(v5, enum case for DispatchPredicate.notOnQueue(_:), v24);
    v18 = v12;
    v19 = _dispatchPreconditionTest(_:)();
    result = (*(v3 + 8))(v5, v17);
    if (v19)
    {
      v20 = dispatch_group_create();
      dispatch_group_enter(v20);

      v21 = v20;
      sub_1010101E8(0, v11, v10, v21);

      return QueueSynchronizer.conditionalSync<A>(_:)();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100A85ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v119 = a2;
  v138 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v138);
  v148 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for OwnedBeaconGroup(0);
  v6 = __chkstk_darwin(v114);
  v112 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v116 = &v111 - v8;
  v9 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  __chkstk_darwin(v9 - 8);
  v142 = &v111 - v10;
  v140 = type metadata accessor for BeaconProductInfoRecord(0);
  v118 = *(v140 - 8);
  __chkstk_darwin(v140);
  v121 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for SystemInfo.DeviceLockState();
  v12 = *(v134 - 8);
  v13 = __chkstk_darwin(v134);
  v133 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v132 = &v111 - v15;
  v16 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v16 - 8);
  v18 = &v111 - v17;
  v144 = type metadata accessor for OwnedBeaconRecord(0);
  v19 = *(v144 - 8);
  v20 = __chkstk_darwin(v144);
  v139 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v115 = &v111 - v23;
  __chkstk_darwin(v22);
  v113 = &v111 - v24;
  v147 = type metadata accessor for UUID();
  v25 = *(v147 - 8);
  __chkstk_darwin(v147);
  v27 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = a1;
  sub_100519FB0();
  v29 = v28;
  v30 = v28 + 56;
  v31 = 1 << *(v28 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v28 + 56);
  v34 = (v31 + 63) >> 6;
  v129 = v25 + 16;
  v128 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v127 = (v12 + 104);
  v126 = (v12 + 8);
  v120 = (v19 + 56);
  v131 = v25;
  v141 = (v25 + 8);
  v143 = v19;
  v124 = (v19 + 48);
  v146 = v3;

  v137 = v29;

  v35 = 0;
  v135 = 0;
  v36 = &_mh_execute_header;
  v123 = xmmword_101385D80;
  v145 = _swiftEmptyArrayStorage;
  v130 = v34;
  v125 = v18;
  v136 = v30;
  v122 = v27;
LABEL_4:
  v37 = v35;
  v38 = v142;
  if (!v33)
  {
    goto LABEL_6;
  }

  do
  {
    v35 = v37;
LABEL_9:
    (*(v131 + 16))(v27, *(v137 + 48) + *(v131 + 72) * (__clz(__rbit64(v33)) | (v35 << 6)), v147);
    v39 = static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v40 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v41 = swift_allocObject();
    *(v41 + 16) = v123;
    v42 = UUID.uuidString.getter();
    v44 = v43;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = sub_100008C00();
    *(v41 + 32) = v42;
    *(v41 + 40) = v44;
    os_log(_:dso:log:_:_:)(v39, v36, v40, "ownedBeaconRecord(for uuid: %@)", 31, 2, v41);

    v45 = v132;
    static SystemInfo.lockState.getter();
    v47 = v133;
    v46 = v134;
    (*v127)(v133, v128, v134);
    sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
    LOBYTE(v42) = dispatch thunk of static Equatable.== infix(_:_:)();
    v48 = v36;
    v49 = *v126;
    (*v126)(v47, v46);
    v49(v45, v46);
    if (v42)
    {
      v50 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v50, v36, v40, "ownedBeaconRecord call failed because in device is in beforeFirstUnlock state", 77, 2, _swiftEmptyArrayStorage);
      v51 = v125;
      v52 = v144;
      (*v120)(v125, 1, 1, v144);
      v27 = v122;
    }

    else
    {
      v53 = sub_100025044();
      __chkstk_darwin(v53);
      v27 = v122;
      *(&v111 - 2) = v122;
      v51 = v125;
      v54 = v135;
      sub_1012BBBD0(sub_100B27F94, v53, v125);
      v135 = v54;

      v52 = v144;
    }

    v34 = v130;
    v36 = v48;
    v33 &= v33 - 1;
    (*v141)(v27, v147);
    v55 = (*v124)(v51, 1, v52);
    v38 = v142;
    v30 = v136;
    if (v55 != 1)
    {
      v56 = v36;
      v57 = v113;
      sub_10002911C(v51, v113, type metadata accessor for OwnedBeaconRecord);
      sub_10002911C(v57, v115, type metadata accessor for OwnedBeaconRecord);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = sub_100A5C050(0, v145[2] + 1, 1, v145);
      }

      v59 = v145[2];
      v58 = v145[3];
      v36 = v56;
      if (v59 >= v58 >> 1)
      {
        v145 = sub_100A5C050((v58 > 1), v59 + 1, 1, v145);
      }

      v30 = v136;
      v60 = v145;
      v145[2] = v59 + 1;
      sub_10002911C(v115, v60 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v59, type metadata accessor for OwnedBeaconRecord);
      goto LABEL_4;
    }

    sub_10000B3A8(v51, &unk_1016A9A20, &qword_10138B280);
    v37 = v35;
  }

  while (v33);
  while (1)
  {
LABEL_6:
    v35 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      swift_once();
LABEL_51:
      v84 = type metadata accessor for Logger();
      sub_1000076D4(v84, qword_10177BA38);
      v85 = v116;
      sub_100022A54(v117, v116, type metadata accessor for OwnedBeaconGroup);

      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        *v88 = 141558531;
        *(v88 + 4) = 1752392040;
        *(v88 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v91 = v90;
        sub_100022C40(v85, type metadata accessor for OwnedBeaconGroup);
        v92 = sub_1000136BC(v89, v91, &v149);

        *(v88 + 14) = v92;
        *(v88 + 22) = 2080;

        v93 = Array.description.getter();
        v95 = v94;

        v96 = sub_1000136BC(v93, v95, &v149);

        *(v88 + 24) = v96;
        _os_log_impl(&_mh_execute_header, v86, v87, "Group %{private,mask.hash}s multipart layout template: %s", v88, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100022C40(v85, type metadata accessor for OwnedBeaconGroup);
      }

      sub_100022C40(v121, type metadata accessor for BeaconProductInfoRecord);
      v98 = v139;
LABEL_57:
      v99 = v119;
      sub_10002911C(v98, v119, type metadata accessor for OwnedBeaconRecord);
      return (*v120)(v99, 0, 1, v144);
    }

    if (v35 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v35);
    ++v37;
    if (v33)
    {
      goto LABEL_9;
    }
  }

  v61 = v145;
  v62 = v145[2];
  if (v62)
  {
    v63 = 0;
    v64 = v144;
    v65 = v145 + ((*(v143 + 80) + 32) & ~*(v143 + 80));
    v66 = (v118 + 48);
    v67 = v139;
    while (1)
    {
      if (v63 >= v61[2])
      {
        goto LABEL_65;
      }

      sub_100022A54(&v65[*(v143 + 72) * v63], v67, type metadata accessor for OwnedBeaconRecord);
      sub_100AC1584(v67 + *(v64 + 20), v38);
      v68 = v140;
      if ((*v66)(v38, 1, v140) == 1)
      {
        break;
      }

      v69 = v121;
      sub_10002911C(v38, v121, type metadata accessor for BeaconProductInfoRecord);
      v70 = *(v69 + *(v68 + 84));
      if (!v70)
      {
        sub_100022C40(v69, type metadata accessor for BeaconProductInfoRecord);
        v67 = v139;
        goto LABEL_36;
      }

      v71 = *(v70 + 16);
      v61 = v145;
      if (v71)
      {
        v72 = 88;
        while (1)
        {
          v73 = *(v70 + v72);
          if (v73 != 2 && (v73 & 1) != 0)
          {
            break;
          }

          v72 += 64;
          if (!--v71)
          {
            goto LABEL_34;
          }
        }

        if (qword_101694BF8 != -1)
        {
          goto LABEL_66;
        }

        goto LABEL_51;
      }

LABEL_34:
      sub_100022C40(v69, type metadata accessor for BeaconProductInfoRecord);
      v67 = v139;
LABEL_37:
      sub_100022A54(v67 + *(v64 + 24), v148, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v80 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

          v81 = *(v148 + *(v80 + 96));
          (*v141)();
          if (v81 == 2)
          {
            goto LABEL_58;
          }

          goto LABEL_46;
        }

LABEL_44:
        sub_100022C40(v67, type metadata accessor for OwnedBeaconRecord);
        v82 = type metadata accessor for StableIdentifier;
        v83 = v148;
LABEL_47:
        sub_100022C40(v83, v82);
        goto LABEL_48;
      }

      if (EnumCaseMultiPayload < 2)
      {
        goto LABEL_44;
      }

      v75 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

      v76 = v148;
      v77 = (v148 + *(v75 + 96));
      v78 = *v77;
      v79 = v77[1];

      (*v141)(v76, v147);
      if ((v79 & 1) == 0)
      {
        v64 = v144;
        v38 = v142;
        if (v78 == 2)
        {
LABEL_58:

          v100 = v139;
          if (qword_101694BF8 != -1)
          {
            swift_once();
          }

          v101 = type metadata accessor for Logger();
          sub_1000076D4(v101, qword_10177BA38);
          v102 = v112;
          sub_100022A54(v117, v112, type metadata accessor for OwnedBeaconGroup);
          v103 = Logger.logObject.getter();
          v104 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v149 = v106;
            *v105 = 16777987;
            *(v105 + 4) = 28674;
            *(v105 + 6) = 8;
            *(v105 + 7) = 1752392040;
            *(v105 + 15) = 2081;
            sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v107 = dispatch thunk of CustomStringConvertible.description.getter();
            v109 = v108;
            sub_100022C40(v102, type metadata accessor for OwnedBeaconGroup);
            v110 = sub_1000136BC(v107, v109, &v149);

            *(v105 + 17) = v110;
            _os_log_impl(&_mh_execute_header, v103, v104, "AlphaWasp: hardcoding primary part %hhu for group %{private,mask.hash}s.", v105, 0x19u);
            sub_100007BAC(v106);
          }

          else
          {

            sub_100022C40(v102, type metadata accessor for OwnedBeaconGroup);
          }

          v98 = v100;
          goto LABEL_57;
        }

LABEL_46:
        v82 = type metadata accessor for OwnedBeaconRecord;
        v67 = v139;
        v83 = v139;
        goto LABEL_47;
      }

      v67 = v139;
      sub_100022C40(v139, type metadata accessor for OwnedBeaconRecord);
      v64 = v144;
      v38 = v142;
LABEL_48:
      if (++v63 == v62)
      {

        return (*v120)(v119, 1, 1, v64);
      }
    }

    sub_10000B3A8(v38, &unk_1016AF8C0, &unk_1013A07A0);
LABEL_36:
    v61 = v145;
    goto LABEL_37;
  }

  v64 = v144;
  return (*v120)(v119, 1, 1, v64);
}

uint64_t sub_100A870CC(uint64_t a1)
{
  v134 = a1;
  v2 = sub_1000BC4D4(&qword_101699ED0, &qword_101393188);
  v3 = __chkstk_darwin(v2 - 8);
  v135 = v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v136 = v132 - v5;
  v6 = sub_1000BC4D4(&qword_101697DE0, &qword_101393190);
  v7 = *(v6 - 8);
  v149 = v6;
  v150 = v7;
  v8 = __chkstk_darwin(v6);
  v133 = v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v148 = v132 - v11;
  v12 = __chkstk_darwin(v10);
  v151 = v132 - v13;
  v14 = __chkstk_darwin(v12);
  v140 = v132 - v15;
  v16 = __chkstk_darwin(v14);
  v145 = v132 - v17;
  v18 = __chkstk_darwin(v16);
  v141 = v132 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = v132 - v21;
  *&v139 = v1;
  v23 = *v1;
  v24 = _swiftEmptyArrayStorage;
  v144 = *(*v1 + 16);
  if (v144)
  {
    v25 = 0;
    *&v143 = v23;
    do
    {
      if (v25 >= *(v23 + 16))
      {
        goto LABEL_66;
      }

      v26 = (*(v150 + 80) + 32) & ~*(v150 + 80);
      v146 = *(v150 + 72);
      v147 = v26;
      sub_1000D2A70(v23 + v26 + v146 * v25, v22, &qword_101697DE0, &qword_101393190);
      v27 = v149;
      v28 = &v22[*(v149 + 40)];
      v29 = *(v28 + 3);
      v30 = *(v28 + 4);
      sub_1000035D0(v28, v29);
      if ((*(v30 + 32))(&v22[*(v27 + 36)], v29, v30))
      {
        v20 = sub_10000B3A8(v22, &qword_101697DE0, &qword_101393190);
        v23 = v143;
      }

      else
      {
        sub_1000D2AD8(v22, v145, &qword_101697DE0, &qword_101393190);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v152 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1011247FC(0, v24[2] + 1, 1);
          v24 = v152;
        }

        v23 = v143;
        v33 = v24[2];
        v32 = v24[3];
        if (v33 >= v32 >> 1)
        {
          sub_1011247FC((v32 > 1), v33 + 1, 1);
          v24 = v152;
        }

        v24[2] = v33 + 1;
        v20 = sub_1000D2AD8(v145, v24 + v147 + v33 * v146, &qword_101697DE0, &qword_101393190);
      }

      ++v25;
    }

    while (v144 != v25);
  }

  __chkstk_darwin(v20);
  v132[-2] = v139;
  v34 = v142;
  v35 = sub_10013D4C8(sub_100B23B20, &v132[-4], v24);
  v36 = v35;
  v132[1] = v34;
  v147 = v35[2];
  if (v147)
  {
    v37 = 0;
    v38 = v141;
    v39 = (v141 + *(v149 + 40));
    v40 = *(v150 + 80);
    v145 = (v40 + 32) & ~v40;
    v146 = v40;
    v144 = v35 + v145;
    v41 = _swiftEmptyDictionarySingleton;
    v143 = xmmword_101385D80;
    v142 = v35;
    while (1)
    {
      if (v37 >= v36[2])
      {
        goto LABEL_67;
      }

      sub_1000D2A70(&v144[*(v150 + 72) * v37], v38, &qword_101697DE0, &qword_101393190);
      v43 = *(v39 + 3);
      v44 = *(v39 + 4);
      sub_1000035D0(v39, v43);
      v45 = (*(v44 + 16))(v43, v44);
      if (v41[2] && (v46 = sub_100772234(v45), (v47 & 1) != 0))
      {
        v48 = *(v41[7] + 8 * v46);
        v49 = *(v39 + 3);
        v50 = *(v39 + 4);
        sub_1000035D0(v39, v49);
        v51 = v41;
        v52 = *(v50 + 16);

        v53 = v52(v49, v50);
        v54 = v51;
        v38 = v141;
        v55 = v53;
        sub_1000BC4D4(&qword_1016B3B00, &qword_1013D48A8);
        v56 = v145;
        v57 = swift_allocObject();
        *(v57 + 16) = v143;
        sub_1000D2A70(v38, v57 + v56, &qword_101697DE0, &qword_101393190);
        v152 = v48;
        sub_100398F38(v57);
        v58 = v152;
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v152 = v54;
        v60 = sub_100772234(v55);
        v62 = v54[2];
        v63 = (v61 & 1) == 0;
        v64 = __OFADD__(v62, v63);
        v65 = v62 + v63;
        if (v64)
        {
          goto LABEL_70;
        }

        v66 = v61;
        if (v54[3] >= v65)
        {
          if ((v59 & 1) == 0)
          {
            v87 = v60;
            sub_1010071AC();
            v60 = v87;
          }
        }

        else
        {
          sub_100FEA784(v65, v59);
          v60 = sub_100772234(v55);
          if ((v66 & 1) != (v67 & 1))
          {
            goto LABEL_72;
          }
        }

        v41 = v152;
        if ((v66 & 1) == 0)
        {
          v152[(v60 >> 6) + 8] |= 1 << v60;
          *(v41[6] + v60) = v55;
          *(v41[7] + 8 * v60) = v58;
          v85 = v41[2];
          v64 = __OFADD__(v85, 1);
          v84 = v85 + 1;
          if (v64)
          {
            goto LABEL_71;
          }

          goto LABEL_37;
        }

        *(v152[7] + 8 * v60) = v58;
      }

      else
      {
        v68 = *(v39 + 3);
        v69 = *(v39 + 4);
        sub_1000035D0(v39, v68);
        v70 = (*(v69 + 16))(v68, v69);
        sub_1000BC4D4(&qword_1016B3B00, &qword_1013D48A8);
        v71 = v145;
        v72 = v41;
        v73 = swift_allocObject();
        *(v73 + 16) = v143;
        sub_1000D2A70(v38, v73 + v71, &qword_101697DE0, &qword_101393190);
        v74 = swift_isUniquelyReferenced_nonNull_native();
        v152 = v72;
        v75 = sub_100772234(v70);
        v77 = v72[2];
        v78 = (v76 & 1) == 0;
        v64 = __OFADD__(v77, v78);
        v79 = v77 + v78;
        if (v64)
        {
          goto LABEL_68;
        }

        v80 = v76;
        if (v72[3] >= v79)
        {
          if ((v74 & 1) == 0)
          {
            v86 = v75;
            sub_1010071AC();
            v75 = v86;
          }
        }

        else
        {
          sub_100FEA784(v79, v74);
          v75 = sub_100772234(v70);
          if ((v80 & 1) != (v81 & 1))
          {
            goto LABEL_72;
          }
        }

        v82 = v152;
        if ((v80 & 1) == 0)
        {
          v152[(v75 >> 6) + 8] |= 1 << v75;
          *(v82[6] + v75) = v70;
          *(v82[7] + 8 * v75) = v73;
          v83 = v82[2];
          v64 = __OFADD__(v83, 1);
          v84 = v83 + 1;
          if (v64)
          {
            goto LABEL_69;
          }

          v41 = v82;
LABEL_37:
          v41[2] = v84;
          goto LABEL_15;
        }

        *(v152[7] + 8 * v75) = v73;

        v41 = v82;
      }

LABEL_15:
      v42 = v148;
      v36 = v142;
      ++v37;
      sub_10000B3A8(v38, &qword_101697DE0, &qword_101393190);
      if (v147 == v37)
      {
        goto LABEL_39;
      }
    }
  }

  v41 = _swiftEmptyDictionarySingleton;
  v42 = v148;
LABEL_39:

  v152 = _swiftEmptyArrayStorage;
  v88 = v41[8];
  v138 = v41 + 8;
  v89 = 1 << *(v41 + 32);
  v90 = -1;
  if (v89 < 64)
  {
    v90 = ~(-1 << v89);
  }

  v91 = v90 & v88;
  v137 = (v89 + 63) >> 6;
  v144 = v41;

  v92 = 0;
  v93 = &qword_101697DE0;
  v139 = xmmword_101385D80;
  v94 = v149;
  while (1)
  {
    do
    {
      if (!v91)
      {
        do
        {
          v98 = v92 + 1;
          if (__OFADD__(v92, 1))
          {
            goto LABEL_65;
          }

          if (v98 >= v137)
          {

            v124 = v136;
            sub_10030BDFC(v152, v136);

            v125 = v135;
            sub_1000D2A70(v124, v135, &qword_101699ED0, &qword_101393188);
            if ((*(v150 + 48))(v125, 1, v94) == 1)
            {
              v126 = &qword_101699ED0;
              sub_10000B3A8(v125, &qword_101699ED0, &qword_101393188);
              sub_1000BC4D4(&qword_1016B5480, &qword_1013D67B0);
              sub_1000041A4(&qword_1016B5488, &qword_1016B5480, &qword_1013D67B0, &unk_1013A3148);
              swift_allocError();
              swift_willThrow();
              sub_10000B3A8(v124, &qword_101699ED0, &qword_101393188);
            }

            else
            {
              v127 = v94;
              v128 = v133;
              sub_1000D2AD8(v125, v133, &qword_101697DE0, &qword_101393190);
              v129 = (v128 + *(v127 + 40));
              v126 = v129[3];
              v130 = v129[4];
              sub_1000035D0(v129, v126);
              LOBYTE(v126) = (*(v130 + 24))(v126, v130);
              sub_10000B3A8(v124, &qword_101699ED0, &qword_101393188);
              sub_100022A54(v128, v134, type metadata accessor for DeviceEvent);
              sub_10000B3A8(v128, &qword_101697DE0, &qword_101393190);
            }

            return v126 & 1;
          }

          v91 = v138[v98];
          ++v92;
        }

        while (!v91);
        v92 = v98;
      }

      v99 = __clz(__rbit64(v91));
      v91 &= v91 - 1;
      v100 = *(*(v144 + 7) + ((v92 << 9) | (8 * v99)));
      v101 = *(v100 + 16);
    }

    while (!v101);
    v141 = *(v150 + 80);
    v142 = (v141 + 32) & ~v141;
    *&v143 = v91;
    v147 = v100 + v142;
    sub_1000D2A70(v100 + v142, v151, v93, &qword_101393190);

    if (v101 != 1)
    {
      break;
    }

LABEL_42:
    v95 = v140;
    sub_1000D2AD8(v151, v140, v93, &qword_101393190);
    sub_1000BC4D4(&qword_1016B3B00, &qword_1013D48A8);
    v96 = v142;
    v97 = swift_allocObject();
    *(v97 + 16) = v139;
    sub_1000D2A70(v95, v97 + v96, v93, &qword_101393190);
    sub_100398F38(v97);

    sub_10000B3A8(v95, v93, &qword_101393190);
    v91 = v143;
  }

  v102 = 1;
  v145 = v101;
  v146 = v100;
  while (v102 < *(v100 + 16))
  {
    v103 = v93;
    sub_1000D2A70(v147 + *(v150 + 72) * v102, v42, v93, &qword_101393190);
    v104 = (v42 + *(v94 + 40));
    v105 = v94;
    v106 = v104[3];
    v107 = v104[4];
    sub_1000035D0(v104, v106);
    v108 = (*(v107 + 16))(v106, v107);
    v109 = (v151 + *(v105 + 40));
    v111 = v109[3];
    v110 = v109[4];
    sub_1000035D0(v109, v111);
    if (v108 == (*(v110 + 16))(v111, v110) || (v112 = v104[3], v113 = v104[4], sub_1000035D0(v104, v112), v114 = (*(v113 + 8))(v112, v113), v116 = v109[3], v115 = v109[4], sub_1000035D0(v109, v116), v114 == (*(v115 + 8))(v116, v115)))
    {
      v42 = v148;
      v94 = v149;
      if (static Date.> infix(_:_:)())
      {
        goto LABEL_59;
      }
    }

    else
    {
      v117 = v104[3];
      v118 = v104[4];
      sub_1000035D0(v104, v117);
      v119 = (*(v118 + 8))(v117, v118);
      v120 = v109[3];
      v121 = v109[4];
      sub_1000035D0(v109, v120);
      v122 = (*(v121 + 8))(v120, v121);
      v42 = v148;
      v94 = v149;
      if (v119 < v122)
      {
LABEL_59:
        v123 = v151;
        v93 = v103;
        sub_10000B3A8(v151, v103, &qword_101393190);
        sub_1000D2AD8(v42, v123, v103, &qword_101393190);
        goto LABEL_52;
      }
    }

    v93 = v103;
    sub_10000B3A8(v42, v103, &qword_101393190);
LABEL_52:
    v100 = v146;
    if (v145 == ++v102)
    {
      goto LABEL_42;
    }
  }

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
LABEL_71:
  __break(1u);
LABEL_72:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100A87EA8(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v11 = __chkstk_darwin(v10 - 8);
  v26 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = *(sub_1000BC4D4(&qword_101697DE0, &qword_101393190) + 44);
  v16 = sub_1000BC4D4(&qword_1016998D0, &unk_1013931A0);
  (*(v4 + 16))(v14, a2 + *(v16 + 36), v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v17 = *(v7 + 56);
  sub_1000D2A70(v27 + v15, v9, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v14, &v9[v17], &qword_1016980D0, &unk_10138F3B0);
  v18 = *(v4 + 48);
  if (v18(v9, 1, v3) != 1)
  {
    v20 = v26;
    sub_1000D2A70(v9, v26, &qword_1016980D0, &unk_10138F3B0);
    if (v18(&v9[v17], 1, v3) != 1)
    {
      v21 = v25;
      (*(v4 + 32))(v25, &v9[v17], v3);
      sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v4 + 8);
      v22(v21, v3);
      sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
      v22(v20, v3);
      sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
      return v19 & 1;
    }

    sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
    (*(v4 + 8))(v20, v3);
    goto LABEL_6;
  }

  sub_10000B3A8(v14, &qword_1016980D0, &unk_10138F3B0);
  if (v18(&v9[v17], 1, v3) != 1)
  {
LABEL_6:
    sub_10000B3A8(v9, &qword_1016AF880, &unk_10138CE20);
    v19 = 0;
    return v19 & 1;
  }

  sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_100A882C8(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v13);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100B27C00();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;
  v5 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12[0] = 0;
  v7 = [v5 JSONObjectWithData:isa options:4 error:v12];

  v8 = v12[0];
  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
    if (swift_dynamicCast())
    {
      sub_1006950E0(v12[0]);
      v10 = v9;

      sub_100016590(v2, v4);

      return v10;
    }

    sub_100016590(v2, v4);
  }

  else
  {
    v11 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_100016590(v2, v4);
  }

  return 0;
}

uint64_t sub_100A884DC(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v13);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100B27B2C();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;
  v5 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12[0] = 0;
  v7 = [v5 JSONObjectWithData:isa options:4 error:v12];

  v8 = v12[0];
  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
    if (swift_dynamicCast())
    {
      sub_1006950E0(v12[0]);
      v10 = v9;

      sub_100016590(v2, v4);

      return v10;
    }

    sub_100016590(v2, v4);
  }

  else
  {
    v11 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_100016590(v2, v4);
  }

  return 0;
}

uint64_t sub_100A886F0(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v13);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100B27AD8();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;
  v5 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12[0] = 0;
  v7 = [v5 JSONObjectWithData:isa options:4 error:v12];

  v8 = v12[0];
  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
    if (swift_dynamicCast())
    {
      sub_1006950E0(v12[0]);
      v10 = v9;

      sub_100016590(v2, v4);

      return v10;
    }

    sub_100016590(v2, v4);
  }

  else
  {
    v11 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_100016590(v2, v4);
  }

  return 0;
}

uint64_t sub_100A88934(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v13);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000BC4D4(&qword_1016A5880, &unk_1013B3270);
  sub_100B26C84();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;
  v5 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12[0] = 0;
  v7 = [v5 JSONObjectWithData:isa options:4 error:v12];

  v8 = v12[0];
  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1000BC4D4(&qword_1016BFE60, &qword_1013D6B40);
    if (swift_dynamicCast())
    {
      sub_1006950E0(v12[0]);
      v10 = v9;

      sub_100016590(v2, v4);

      return v10;
    }

    sub_100016590(v2, v4);
  }

  else
  {
    v11 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_100016590(v2, v4);
  }

  return 0;
}

uint64_t sub_100A88B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v113 = a2;
  v116 = sub_1000BC4D4(&qword_10169EF98, &unk_1013D66D0);
  __chkstk_darwin(v116);
  v119 = v110 - v5;
  v130 = type metadata accessor for OwnedDeviceKeyRecord(0);
  v125 = *(v130 - 8);
  v6 = __chkstk_darwin(v130);
  v122 = v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v114 = v110 - v9;
  v10 = __chkstk_darwin(v8);
  v121 = v110 - v11;
  v12 = __chkstk_darwin(v10);
  v118 = v110 - v13;
  __chkstk_darwin(v12);
  v129 = (v110 - v14);
  v132 = type metadata accessor for UUID();
  v15 = *(v132 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v132);
  v120 = v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v112 = v110 - v19;
  v20 = __chkstk_darwin(v18);
  v117 = v110 - v21;
  v22 = __chkstk_darwin(v20);
  v115 = v110 - v23;
  __chkstk_darwin(v22);
  v25 = v110 - v24;
  if (qword_1016954F0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_1000076D4(v26, qword_10177CE28);
  v28 = v15[2];
  v131 = v15 + 2;
  v127 = v28;
  v28(v25, a1, v132);
  v124 = v27;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v128 = a1;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v123 = v2;
    v34 = v33;
    v133[0] = v33;
    *v32 = 141558275;
    *(v32 + 4) = 1752392040;
    *(v32 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v15;
    v38 = v37;
    v126 = v36[1];
    v126(v25, v132);
    v39 = sub_1000136BC(v35, v38, v133);
    v15 = v36;

    *(v32 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v29, v30, "BeaconStore createNewOwnedDeviceKeyRecord called with deviceIdentifier:%{private,mask.hash}s", v32, 0x16u);
    sub_100007BAC(v34);
    v3 = v123;
  }

  else
  {

    v126 = v15[1];
    v126(v25, v132);
  }

  result = sub_100A7F75C(v134);
  if (!v3)
  {
    v110[1] = 0;
    v42 = v129;
    v41 = v130;
    UUID.init()();
    v43 = v42 + v41[6];
    v123 = v15;
    v44 = v128;
    v45 = v132;
    v46 = v127;
    (v127)(v43);
    v135 = v134[1];
    v136 = v134[0];
    sub_10012C094(&v136, v133);
    sub_10012C038(&v135, v133);
    sub_100A80F28(v134);
    *v42 = xmmword_10138C660;
    v47 = v135;
    *(v42 + v41[7]) = v136;
    *(v42 + v41[8]) = v47;
    v48 = dispatch_group_create();
    v49 = swift_allocBox();
    v50 = *(v125 + 56);
    v111 = v51;
    v50(v51, 1, 1, v41);
    dispatch_group_enter(v48);
    v52 = v115;
    v46(v115, v44, v45);
    v53 = v123;
    v54 = (*(v123 + 80) + 24) & ~*(v123 + 80);
    v55 = (v16 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = v48;
    (v53[4])(v56 + v54, v52, v45);
    *(v56 + v55) = v49;
    v116 = v48;
    v115 = v49;

    sub_1006DE50C(v42, 0, sub_100B2495C, v56);

    v57 = v117;
    v127(v117, v128, v45);
    v58 = v42;
    v59 = v118;
    sub_100022A54(v58, v118, type metadata accessor for OwnedDeviceKeyRecord);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v133[0] = swift_slowAlloc();
      *v62 = 141558787;
      *(v62 + 4) = 1752392040;
      *(v62 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v63 = v132;
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v57;
      v67 = v66;
      v126(v65, v63);
      v68 = sub_1000136BC(v64, v67, v133);

      *(v62 + 14) = v68;
      *(v62 + 22) = 2160;
      *(v62 + 24) = 1752392040;
      *(v62 + 32) = 2081;
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v70;
      sub_100022C40(v59, type metadata accessor for OwnedDeviceKeyRecord);
      v72 = sub_1000136BC(v69, v71, v133);

      *(v62 + 34) = v72;
      _os_log_impl(&_mh_execute_header, v60, v61, "Waiting for the new record to be saved to the cloud %{private,mask.hash}s uuid: %{private,mask.hash}s.", v62, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      sub_100022C40(v59, type metadata accessor for OwnedDeviceKeyRecord);
      v126(v57, v132);
    }

    v73 = v122;
    v74 = v120;
    v75 = v116;
    OS_dispatch_group.wait()();
    v76 = v111;
    swift_beginAccess();
    v77 = v119;
    sub_1000D2A70(v76, v119, &qword_10169EF98, &unk_1013D66D0);
    v78 = (*(v125 + 48))(v77, 1, v130);
    v79 = v128;
    if (v78 == 1)
    {
      sub_10000B3A8(v77, &qword_10169EF98, &unk_1013D66D0);
      v127(v74, v79, v132);
      sub_100022A54(v129, v73, type metadata accessor for OwnedDeviceKeyRecord);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v84 = v132;
        v131 = v83;
        v137 = v83;
        *v82 = 141558787;
        *(v82 + 4) = 1752392040;
        *(v82 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v85 = dispatch thunk of CustomStringConvertible.description.getter();
        v87 = v86;
        v126(v74, v84);
        v88 = sub_1000136BC(v85, v87, &v137);

        *(v82 + 14) = v88;
        *(v82 + 22) = 2160;
        *(v82 + 24) = 1752392040;
        *(v82 + 32) = 2081;
        v89 = v122;
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        v92 = v91;
        sub_100022C40(v89, type metadata accessor for OwnedDeviceKeyRecord);
        v93 = sub_1000136BC(v90, v92, &v137);

        *(v82 + 34) = v93;
        _os_log_impl(&_mh_execute_header, v80, v81, "OwnedDeviceKeyRecord save failed for %{private,mask.hash}s uuid: %{private,mask.hash}s", v82, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        sub_100022C40(v73, type metadata accessor for OwnedDeviceKeyRecord);
        v126(v74, v132);
      }

      sub_100139CA0();
      swift_allocError();
      *v109 = 13;
      swift_willThrow();

      sub_100022C40(v129, type metadata accessor for OwnedDeviceKeyRecord);
    }

    else
    {
      sub_10002911C(v77, v121, type metadata accessor for OwnedDeviceKeyRecord);
      v94 = v112;
      v127(v112, v79, v132);
      v95 = v114;
      sub_100022A54(v129, v114, type metadata accessor for OwnedDeviceKeyRecord);
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        *v98 = 141558787;
        *(v98 + 4) = 1752392040;
        v99 = v132;
        *(v98 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        v102 = v101;
        v126(v94, v99);
        v103 = sub_1000136BC(v100, v102, &v137);

        *(v98 + 14) = v103;
        *(v98 + 22) = 2160;
        *(v98 + 24) = 1752392040;
        *(v98 + 32) = 2081;
        v104 = v114;
        v105 = dispatch thunk of CustomStringConvertible.description.getter();
        v107 = v106;
        sub_100022C40(v104, type metadata accessor for OwnedDeviceKeyRecord);
        v108 = sub_1000136BC(v105, v107, &v137);

        *(v98 + 34) = v108;
        _os_log_impl(&_mh_execute_header, v96, v97, "OwnedDeviceKeyRecord saved to CloudKit for: %{private,mask.hash}s uuid: %{private,mask.hash}s.", v98, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        sub_100022C40(v95, type metadata accessor for OwnedDeviceKeyRecord);
        v126(v94, v132);
      }

      sub_100022C40(v129, type metadata accessor for OwnedDeviceKeyRecord);
      sub_10002911C(v121, v113, type metadata accessor for OwnedDeviceKeyRecord);
    }
  }

  return result;
}

uint64_t sub_100A89AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v49 = a2;
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v46 - v6;
  v65 = type metadata accessor for UUID();
  v50 = *(v65 - 8);
  __chkstk_darwin(v65);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v52 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v46 - v14;
  __chkstk_darwin(v13);
  v17 = &v46 - v16;
  v18 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v18 - 8);
  v20 = &v46 - v19;
  v21 = type metadata accessor for DirectorySequence();
  v47 = *(v21 - 8);
  v48 = v21;
  __chkstk_darwin(v21);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [objc_opt_self() defaultManager];
  if (qword_1016947A0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177AEC8);
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v63 = *(v10 + 48);
  v64 = v10 + 48;
  if (v63(v20, 1, v9) != 1)
  {
    v30 = *(v10 + 32);
    v29 = v10 + 32;
    v61 = v20;
    v62 = v30;
    v66 = 0x80000001013541B0;
    v31 = (v29 - 24);
    v59 = v15;
    v60 = (v50 + 48);
    v55 = (v50 + 8);
    v56 = (v50 + 32);
    v53 = v7;
    v54 = v29;
    v30(v17, v20, v9);
    while (1)
    {
      if (URL.pathExtension.getter() == 0xD000000000000010 && v66 == v34)
      {
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v35 & 1) == 0)
        {
          (*v31)(v17, v9);
          goto LABEL_8;
        }
      }

      URL.deletingPathExtension()();
      URL.lastPathComponent.getter();
      UUID.init(uuidString:)();

      v36 = v15;
      v37 = *v60;
      v38 = v65;
      if ((*v60)(v7, 1, v65) == 1)
      {
        v32 = *v31;
        (*v31)(v36, v9);
        v32(v17, v9);
        sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
        v15 = v36;
      }

      else
      {
        v39 = *v56;
        v40 = v57;
        (*v56)();
        if (static UUID.== infix(_:_:)())
        {
          v51 = v39;
          v41 = v52;
          v42 = v59;
          URL.deletingLastPathComponent()();
          URL.lastPathComponent.getter();
          UUID.init(uuidString:)();

          v43 = *v31;
          (*v31)(v41, v9);
          (*v55)(v40, v65);
          v43(v42, v9);
          v43(v17, v9);
          v27 = v65;
          if (v37(v5, 1, v65) != 1)
          {
            (*(v47 + 8))(v23, v48);
            v45 = v49;
            (v51)(v49, v5, v27);
            v26 = v45;
            v25 = 0;
            return (*(v50 + 56))(v26, v25, 1, v27);
          }

          sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
          v7 = v53;
          v15 = v59;
        }

        else
        {
          (*v55)(v40, v38);
          v44 = *v31;
          v15 = v59;
          (*v31)(v59, v9);
          v44(v17, v9);
          v7 = v53;
        }
      }

LABEL_8:
      v33 = v61;
      DirectorySequence.next()();
      if (v63(v33, 1, v9) == 1)
      {
        break;
      }

      v62(v17, v33, v9);
    }
  }

  (*(v47 + 8))(v23, v48);
  v25 = 1;
  v26 = v49;
  v27 = v65;
  return (*(v50 + 56))(v26, v25, 1, v27);
}