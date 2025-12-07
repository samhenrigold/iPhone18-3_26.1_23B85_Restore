void *sub_1000CB9F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a8;
  v16 = type metadata accessor for ResourceDownloadRequest(0);
  v40 = *(v16 - 8);
  v17 = *(v40 + 64);
  v18 = __chkstk_darwin(v16);
  v41 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  v44 = a1;
  v45 = a3;
  v46 = a1;
  v47 = a4;
  v48 = a5;
  v49 = a2;
  v42 = a2;
  v50 = a3;
  v51 = a6;
  v52 = a7;
  sub_1000CC224(&unk_1002C0E20, type metadata accessor for ResourceDownloadRequest, &protocol conformance descriptor for ResourceDownloadRequest);
  static Message.with(_:)();
  v21 = sub_1000BD19C(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  if (qword_1002C05F0 != -1)
  {
    swift_once();
  }

  v39 = a9;
  if (byte_1002C0D28 == 1)
  {
    *(v22 + 16) = &_swiftEmptyArrayStorage;

    aBlock[4] = sub_1000CC344;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000BE260;
    aBlock[3] = &unk_100278508;
    v23 = _Block_copy(aBlock);
    v24 = v21;

    [v24 setRequestCompletedBlock:v23];
    _Block_release(v23);
  }

  v25 = v41;
  sub_1000CCBD4(v20, v41, type metadata accessor for ResourceDownloadRequest);
  v26 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v27 = (v17 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_1000CCC3C(v25, v30 + v26, type metadata accessor for ResourceDownloadRequest);
  *(v30 + v27) = v22;
  v31 = (v30 + v28);
  v32 = v44;
  v33 = v39;
  *v31 = v43;
  v31[1] = v33;
  *(v30 + v29) = v32;
  v34 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v45;
  *v34 = v42;
  v34[1] = v35;

  v36 = v32;

  dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
  sub_1000CCD5C(v20, type metadata accessor for ResourceDownloadRequest);

  return v21;
}

uint64_t _s22CloudKitImplementation30CPLCKResourceDownloadOperationC38fetchRawDerivativesUploadConfiguration15completionBlockSo010CKDatabaseF0CySSSg_s5Error_pSgtc_tFZ_0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_1000BB130(&qword_1002C0DE8, &qword_100245048);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v7 = sub_1000BB130(&qword_1002C0DF0, &qword_100245050);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for UploadResourcesRequest(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  sub_1000CCBD4(v13, v9, type metadata accessor for UploadResourcesRequest);
  (*(v11 + 56))(v9, 0, 1, v10);
  (*(v4 + 104))(v6, enum case for CodeOperation.DestinationServer.default<A, B>(_:), v3);
  v14 = objc_allocWithZone(sub_1000BB130(&qword_1002C0DF8, &qword_100245058));
  v15 = CodeOperation.init(service:functionName:request:destinationServer:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  *(v16 + 24) = a2;

  dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
  sub_1000CCD5C(v13, type metadata accessor for UploadResourcesRequest);
  return v15;
}

unint64_t sub_1000CC0F0()
{
  result = qword_1002C0DE0;
  if (!qword_1002C0DE0)
  {
    sub_1000CC8B0(255, &qword_1002C0DD0, CKRecordID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0DE0);
  }

  return result;
}

unint64_t sub_1000CC1A4()
{
  result = qword_1002C0E08;
  if (!qword_1002C0E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0E08);
  }

  return result;
}

uint64_t sub_1000CC224(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000CC26C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ResourceDownloadRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000C6B88(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + v8 + 8), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1000CC360(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_1000CC37C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000CC444(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000CC4E4(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for ResourceDownloadRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000C4F0C(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + v9), *(v2 + v9 + 8), *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1000CC5D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000CC6A8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v5 = *(type metadata accessor for ResourceStreamRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000C2B28(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + v8 + 8), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1000CC794(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000BB130(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000CC854(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000CC8B0(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_1000CC8F8(_DWORD *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = [v3 unsignedIntValue];
  a1[1] = [v4 unsignedIntValue];
  result = [v5 unsignedIntValue];
  a1[2] = result;
  return result;
}

uint64_t sub_1000CC968(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000BB130(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000CC9D8(uint64_t *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
  return result;
}

uint64_t sub_1000CCA98(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for ResourceDownloadRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000BF88C(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + v8 + 8), *(v2 + v9), *(v2 + v10), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1000CCBD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CCC3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000CCCA4()
{
  result = qword_1002C0F38;
  if (!qword_1002C0F38)
  {
    sub_1000BA79C(&qword_1002C0F30, &qword_100245128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0F38);
  }

  return result;
}

unint64_t sub_1000CCD08()
{
  result = qword_1002C0F40;
  if (!qword_1002C0F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0F40);
  }

  return result;
}

uint64_t sub_1000CCD5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000CCDBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000BB130(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000CCE1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t Goldilocks_ExitMoveBatchErrorFeedbackRequest.items.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Utility_DeleteAllZonesResponse.batchError.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t Utility_DeleteAllZonesResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Utility_DeleteAllZonesResponse(0);
  return UnknownStorage.init()();
}

uint64_t Utility_DeleteZoneRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Utility_DeleteZoneRequest(0);
  return UnknownStorage.init()();
}

uint64_t Utility_DeleteZoneResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C0F70, &qword_100245190);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Utility_DeleteZoneResponse(0);
  sub_1000CC794(v1 + *(v6 + 24), v5, &qword_1002C0F70, &qword_100245190);
  v7 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1000D31AC(v5, a1, type metadata accessor for Utility_ErrorInfo.ResultError);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  UnknownStorage.init()();
  v9 = *(v7 + 28);
  v10 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000CCDBC(v5, &qword_1002C0F70, &qword_100245190);
  }

  return result;
}

uint64_t Utility_ErrorInfo.ResultError.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  UnknownStorage.init()();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t Utility_DeleteZoneResponse.error.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Utility_DeleteZoneResponse(0) + 24);
  sub_1000CCDBC(v1 + v3, &qword_1002C0F70, &qword_100245190);
  sub_1000D31AC(a1, v1 + v3, type metadata accessor for Utility_ErrorInfo.ResultError);
  v4 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Utility_DeleteZoneResponse.error.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C0F70, &qword_100245190) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Utility_DeleteZoneResponse(0) + 24);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C0F70, &qword_100245190);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    UnknownStorage.init()();
    v16 = *(v8 + 28);
    v17 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C0F70, &qword_100245190);
    }
  }

  else
  {
    sub_1000D31AC(v7, v13, type metadata accessor for Utility_ErrorInfo.ResultError);
  }

  return sub_1000CD694;
}

BOOL Utility_DeleteZoneResponse.hasError.getter()
{
  v1 = sub_1000BB130(&qword_1002C0F70, &qword_100245190);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Utility_DeleteZoneResponse(0);
  sub_1000CC794(v0 + *(v4 + 24), v3, &qword_1002C0F70, &qword_100245190);
  v5 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1000CCDBC(v3, &qword_1002C0F70, &qword_100245190);
  return v6;
}

Swift::Void __swiftcall Utility_DeleteZoneResponse.clearError()()
{
  v1 = *(type metadata accessor for Utility_DeleteZoneResponse(0) + 24);
  sub_1000CCDBC(v0 + v1, &qword_1002C0F70, &qword_100245190);
  v2 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1000CD854@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000CD8F0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Utility_DeleteZoneResponse.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Utility_DeleteZoneResponse(0);
  UnknownStorage.init()();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t RequestItem.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RequestItem.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1000CDB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D33D8();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000CDC04@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_1000CDC54@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_1000CDC90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D3364();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t Utility_ErrorInfo.DatabaseFailure.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Utility_ErrorInfo.DatabaseFailure.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Utility_ErrorInfo.DatabaseFailure.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  return UnknownStorage.init()();
}

uint64_t Utility_ErrorInfo.ResultError.databaseFailure.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C0F78, &qword_100245198);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  sub_1000CC794(v1 + *(v6 + 28), v5, &qword_1002C0F78, &qword_100245198);
  v7 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1000D31AC(v5, a1, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  UnknownStorage.init()();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000CCDBC(v5, &qword_1002C0F78, &qword_100245198);
  }

  return result;
}

uint64_t Utility_ErrorInfo.ResultError.databaseFailure.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Utility_ErrorInfo.ResultError(0) + 28);
  sub_1000CCDBC(v1 + v3, &qword_1002C0F78, &qword_100245198);
  sub_1000D31AC(a1, v1 + v3, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
  v4 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Utility_ErrorInfo.ResultError.databaseFailure.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C0F78, &qword_100245198) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Utility_ErrorInfo.ResultError(0) + 28);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C0F78, &qword_100245198);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0xE000000000000000;
    *(v13 + 32) = 0;
    *(v13 + 40) = 1;
    *(v13 + 48) = 0;
    *(v13 + 56) = 1;
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C0F78, &qword_100245198);
    }
  }

  else
  {
    sub_1000D31AC(v7, v13, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
  }

  return sub_1000CE2D0;
}

void sub_1000CE2F8(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_1000D3214(v11, v10, a5);
    sub_1000CCDBC(v14 + v9, a3, a4);
    sub_1000D31AC(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_1000D327C(v11, a5);
  }

  else
  {
    sub_1000CCDBC(v14 + v9, a3, a4);
    sub_1000D31AC(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

BOOL Utility_ErrorInfo.ResultError.hasDatabaseFailure.getter()
{
  v1 = sub_1000BB130(&qword_1002C0F78, &qword_100245198);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  sub_1000CC794(v0 + *(v4 + 28), v3, &qword_1002C0F78, &qword_100245198);
  v5 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1000CCDBC(v3, &qword_1002C0F78, &qword_100245198);
  return v6;
}

Swift::Void __swiftcall Utility_ErrorInfo.ResultError.clearDatabaseFailure()()
{
  v1 = *(type metadata accessor for Utility_ErrorInfo.ResultError(0) + 28);
  sub_1000CCDBC(v0 + v1, &qword_1002C0F78, &qword_100245198);
  v2 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1000CE5C8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000CE664(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Goldilocks_ErrorInfo.ResultError.resultErrorCode.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t Utility_ErrorInfo.BatchError.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for Utility_ErrorInfo.BatchError(0);
  return UnknownStorage.init()();
}

uint64_t sub_1000CEA54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D331C(&qword_1002C15E0, type metadata accessor for Utility_DeleteAllZonesRequest, &protocol conformance descriptor for Utility_DeleteAllZonesRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CEAF4(uint64_t a1)
{
  sub_1000D331C(&qword_1002C1040, type metadata accessor for Utility_DeleteAllZonesRequest, &protocol conformance descriptor for Utility_DeleteAllZonesRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_1000CEB60(uint64_t a1, uint64_t a2)
{
  sub_1000D331C(&qword_1002C1040, type metadata accessor for Utility_DeleteAllZonesRequest, &protocol conformance descriptor for Utility_DeleteAllZonesRequest);

  return Message.hash(into:)();
}

uint64_t Utility_DeleteAllZonesResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Utility_DeleteZoneResponse(0);
        sub_1000D331C(&qword_1002C0F90, type metadata accessor for Utility_DeleteZoneResponse, &protocol conformance descriptor for Utility_DeleteZoneResponse);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        sub_1000D3364();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Utility_DeleteAllZonesResponse.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Utility_DeleteZoneResponse(0), sub_1000D331C(&qword_1002C0F90, type metadata accessor for Utility_DeleteZoneResponse, &protocol conformance descriptor for Utility_DeleteZoneResponse), v5 = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (sub_1000D3364(), v5 = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for Utility_DeleteAllZonesResponse(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return v5;
}

uint64_t sub_1000CEEFC@<X0>(uint64_t a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return UnknownStorage.init()();
}

uint64_t sub_1000CEF60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D331C(&qword_1002C15D8, type metadata accessor for Utility_DeleteAllZonesResponse, &protocol conformance descriptor for Utility_DeleteAllZonesResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CF000(uint64_t a1)
{
  sub_1000D331C(&qword_1002C1058, type metadata accessor for Utility_DeleteAllZonesResponse, &protocol conformance descriptor for Utility_DeleteAllZonesResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_1000CF06C(uint64_t a1, uint64_t a2)
{
  sub_1000D331C(&qword_1002C1058, type metadata accessor for Utility_DeleteAllZonesResponse, &protocol conformance descriptor for Utility_DeleteAllZonesResponse);

  return Message.hash(into:)();
}

uint64_t sub_1000CF110()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Utility_DeleteZoneRequest._protobuf_nameMap);
  sub_1000BA040(v0, static Utility_DeleteZoneRequest._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100244100;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "zoneName";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Goldilocks_SilentMoverRampingRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t Utility_DeleteZoneRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for Utility_DeleteZoneRequest(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static Utility_DeleteZoneRequest.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Utility_DeleteZoneRequest(0);
  type metadata accessor for UnknownStorage();
  sub_1000D331C(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000CF4D0@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t sub_1000CF528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D331C(&qword_1002C15D0, type metadata accessor for Utility_DeleteZoneRequest, &protocol conformance descriptor for Utility_DeleteZoneRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CF5C8(uint64_t a1)
{
  sub_1000D331C(&qword_1002C1070, type metadata accessor for Utility_DeleteZoneRequest, &protocol conformance descriptor for Utility_DeleteZoneRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_1000CF634(uint64_t a1, uint64_t a2)
{
  sub_1000D331C(&qword_1002C1070, type metadata accessor for Utility_DeleteZoneRequest, &protocol conformance descriptor for Utility_DeleteZoneRequest);

  return Message.hash(into:)();
}

uint64_t sub_1000CF6B0(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1000D331C(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000CF794()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Utility_DeleteZoneResponse._protobuf_nameMap);
  sub_1000BA040(v0, static Utility_DeleteZoneResponse._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100244120;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "error";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zoneName";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Utility_DeleteZoneResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Utility_DeleteZoneResponse(0);
        type metadata accessor for Utility_ErrorInfo.ResultError(0);
        sub_1000D331C(&qword_1002C0FA8, type metadata accessor for Utility_ErrorInfo.ResultError, &protocol conformance descriptor for Utility_ErrorInfo.ResultError);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Utility_DeleteZoneResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[0] = a1;
  v17[1] = a2;
  v5 = sub_1000BB130(&qword_1002C0F70, &qword_100245190);
  __chkstk_darwin(v5 - 8);
  v7 = v17 - v6;
  v8 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Utility_DeleteZoneResponse(0);
  sub_1000CC794(v4 + *(v12 + 24), v7, &qword_1002C0F70, &qword_100245190);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000CCDBC(v7, &qword_1002C0F70, &qword_100245190);
    v13 = v18;
  }

  else
  {
    sub_1000D31AC(v7, v11, type metadata accessor for Utility_ErrorInfo.ResultError);
    sub_1000D331C(&qword_1002C0FA8, type metadata accessor for Utility_ErrorInfo.ResultError, &protocol conformance descriptor for Utility_ErrorInfo.ResultError);
    v13 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_1000D327C(v11, type metadata accessor for Utility_ErrorInfo.ResultError);
    if (v13)
    {
      return result;
    }
  }

  v15 = v4[1];
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  if (!v13)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000CFD68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1000CFE20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D331C(&qword_1002C15C8, type metadata accessor for Utility_DeleteZoneResponse, &protocol conformance descriptor for Utility_DeleteZoneResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CFEC0(uint64_t a1)
{
  sub_1000D331C(&qword_1002C0F90, type metadata accessor for Utility_DeleteZoneResponse, &protocol conformance descriptor for Utility_DeleteZoneResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_1000CFF2C(uint64_t a1, uint64_t a2)
{
  sub_1000D331C(&qword_1002C0F90, type metadata accessor for Utility_DeleteZoneResponse, &protocol conformance descriptor for Utility_DeleteZoneResponse);

  return Message.hash(into:)();
}

uint64_t sub_1000CFFDC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v3, a2);
  sub_1000BA040(v3, a2);
  return _NameMap.init()();
}

uint64_t Goldilocks_ErrorInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t _s22CloudKitImplementation17Utility_ErrorInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnknownStorage();
  sub_1000D331C(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000D0198(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D331C(&qword_1002C15C0, type metadata accessor for Utility_ErrorInfo, &protocol conformance descriptor for Utility_ErrorInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D0238(uint64_t a1)
{
  sub_1000D331C(&qword_1002C1098, type metadata accessor for Utility_ErrorInfo, &protocol conformance descriptor for Utility_ErrorInfo);

  return Message.debugDescription.getter();
}

uint64_t sub_1000D02A4(uint64_t a1, uint64_t a2)
{
  sub_1000D331C(&qword_1002C1098, type metadata accessor for Utility_ErrorInfo, &protocol conformance descriptor for Utility_ErrorInfo);

  return Message.hash(into:)();
}

uint64_t sub_1000D0320()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Utility_ErrorInfo.ResultErrorCode._protobuf_nameMap);
  sub_1000BA040(v0, static Utility_ErrorInfo.ResultErrorCode._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100245150;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "NO_ERROR";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "UNKNOWN";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "SERVER_ERROR";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "FAILED_CK_CALL";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "MISSING_ARGUMENTS";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "INVALID_ARGUMENTS";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ZONE_NOT_FOUND";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "RECORD_NOT_FOUND";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "PERMISSION_DENIED";
  *(v22 + 8) = 17;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000D070C()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Utility_ErrorInfo.BatchErrorCode._protobuf_nameMap);
  sub_1000BA040(v0, static Utility_ErrorInfo.BatchErrorCode._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NO_BATCH_ERROR";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BATCH_SERVER_ERROR";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MULTI_STATUS";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "INCOMPLETE_BATCH_REQUEST";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "INVALID_BATCHING";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "FORBIDDEN_BATCH_REQUEST";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

void sub_1000D0A40()
{
  v0._object = 0x80000001002022C0;
  v0._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v0);
  static Utility_ErrorInfo.DatabaseFailure.protoMessageName = 0xD000000000000011;
  qword_1002D2E70 = 0x8000000100202270;
}

uint64_t *Utility_ErrorInfo.DatabaseFailure.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002C0638 != -1)
  {
    swift_once();
  }

  return &static Utility_ErrorInfo.DatabaseFailure.protoMessageName;
}

uint64_t sub_1000D0B2C()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Utility_ErrorInfo.DatabaseFailure._protobuf_nameMap);
  sub_1000BA040(v0, static Utility_ErrorInfo.DatabaseFailure._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ckOperation";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "clientCode";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "serverCode";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Goldilocks_ErrorInfo.DatabaseFailure.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v6 = v3;
          sub_1000BA0CC();
LABEL_5:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v6 = v3;
          sub_1000BA078();
          goto LABEL_5;
        }
      }

      else if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Utility_ErrorInfo.DatabaseFailure.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v8 = *(v3 + 24);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      if (Rpcproto_ErrorInfo.Client.Code.rawValue.getter(*(v3 + 32), *(v3 + 40)))
      {
        sub_1000BA0CC();
        result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
        if (v4)
        {
          return result;
        }

        if (!*(v3 + 48))
        {
          goto LABEL_15;
        }
      }

      else if (!*(v3 + 48))
      {
LABEL_15:
        type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }

      sub_1000BA078();
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_1000D1090@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  return UnknownStorage.init()();
}

uint64_t sub_1000D10F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000D116C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000D1234(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D331C(&qword_1002C15B8, type metadata accessor for Utility_ErrorInfo.DatabaseFailure, &protocol conformance descriptor for Utility_ErrorInfo.DatabaseFailure);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D12D4(uint64_t a1)
{
  sub_1000D331C(&qword_1002C0FC8, type metadata accessor for Utility_ErrorInfo.DatabaseFailure, &protocol conformance descriptor for Utility_ErrorInfo.DatabaseFailure);

  return Message.debugDescription.getter();
}

uint64_t sub_1000D1340(uint64_t a1, uint64_t a2)
{
  sub_1000D331C(&qword_1002C0FC8, type metadata accessor for Utility_ErrorInfo.DatabaseFailure, &protocol conformance descriptor for Utility_ErrorInfo.DatabaseFailure);

  return Message.hash(into:)();
}

void sub_1000D13C0(int a1)
{
  v1._countAndFlagsBits = 0x45746C757365522ELL;
  v1._object = 0xEC000000726F7272;
  sub_1000D1DB4(a1, v1, static Utility_ErrorInfo.ResultError.protoMessageName, &static Utility_ErrorInfo.ResultError.protoMessageName[1]);
}

void *Utility_ErrorInfo.ResultError.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002C0648 != -1)
  {
    swift_once();
  }

  return static Utility_ErrorInfo.ResultError.protoMessageName;
}

uint64_t sub_1000D1464()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Utility_ErrorInfo.ResultError._protobuf_nameMap);
  sub_1000BA040(v0, static Utility_ErrorInfo.ResultError._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "errorMessage";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "resultErrorCode";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "databaseFailure";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Utility_ErrorInfo.ResultError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for Utility_ErrorInfo.ResultError(0);
          type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
          sub_1000D331C(&qword_1002C0FC8, type metadata accessor for Utility_ErrorInfo.DatabaseFailure, &protocol conformance descriptor for Utility_ErrorInfo.DatabaseFailure);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 2:
          sub_1000D33D8();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 1:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Utility_ErrorInfo.ResultError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = sub_1000BB130(&qword_1002C0F78, &qword_100245198);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 8);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3 + 16))
  {
    v16 = *(v3 + 24);
    v17 = *(v3 + 16);
    v18 = v16;
    sub_1000D33D8();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v19 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  sub_1000CC794(v3 + *(v19 + 28), v8, &qword_1002C0F78, &qword_100245198);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000CCDBC(v8, &qword_1002C0F78, &qword_100245198);
  }

  else
  {
    sub_1000D31AC(v8, v12, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
    sub_1000D331C(&qword_1002C0FC8, type metadata accessor for Utility_ErrorInfo.DatabaseFailure, &protocol conformance descriptor for Utility_ErrorInfo.DatabaseFailure);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_1000D327C(v12, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
    if (v5)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1000D1B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1000D1C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D331C(&qword_1002C15B0, type metadata accessor for Utility_ErrorInfo.ResultError, &protocol conformance descriptor for Utility_ErrorInfo.ResultError);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D1CA0(uint64_t a1)
{
  sub_1000D331C(&qword_1002C0FA8, type metadata accessor for Utility_ErrorInfo.ResultError, &protocol conformance descriptor for Utility_ErrorInfo.ResultError);

  return Message.debugDescription.getter();
}

uint64_t sub_1000D1D0C(uint64_t a1, uint64_t a2)
{
  sub_1000D331C(&qword_1002C0FA8, type metadata accessor for Utility_ErrorInfo.ResultError, &protocol conformance descriptor for Utility_ErrorInfo.ResultError);

  return Message.hash(into:)();
}

void sub_1000D1D88(int a1)
{
  v1._countAndFlagsBits = 0x724568637461422ELL;
  v1._object = 0xEB00000000726F72;
  sub_1000D1DB4(a1, v1, static Utility_ErrorInfo.BatchError.protoMessageName, &static Utility_ErrorInfo.BatchError.protoMessageName[1]);
}

void sub_1000D1DB4(int a1, Swift::String a2, void *a3, void *a4)
{
  String.append(_:)(a2);
  *a3 = 0xD000000000000011;
  *a4 = 0x8000000100202270;
}

void *Utility_ErrorInfo.BatchError.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002C0658 != -1)
  {
    swift_once();
  }

  return static Utility_ErrorInfo.BatchError.protoMessageName;
}

uint64_t sub_1000D1EB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v7, a2);
  sub_1000BA040(v7, a2);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v8 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100244120;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = enum case for _NameMap.NameDescription.same(_:);
  v15 = type metadata accessor for _NameMap.NameDescription();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = "batchError";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v16();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Utility_ErrorInfo.BatchError.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 2)
      {
        sub_1000D3364();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Utility_ErrorInfo.BatchError.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (!v3[2] || (sub_1000D3364(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for Utility_ErrorInfo.BatchError(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

Swift::Int sub_1000D22A4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  sub_1000D331C(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000D232C@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return UnknownStorage.init()();
}

uint64_t sub_1000D23B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D331C(&qword_1002C15A8, type metadata accessor for Utility_ErrorInfo.BatchError, &protocol conformance descriptor for Utility_ErrorInfo.BatchError);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D2458(uint64_t a1)
{
  sub_1000D331C(&qword_1002C10D0, type metadata accessor for Utility_ErrorInfo.BatchError, &protocol conformance descriptor for Utility_ErrorInfo.BatchError);

  return Message.debugDescription.getter();
}

uint64_t sub_1000D24C4(uint64_t a1, uint64_t a2)
{
  sub_1000D331C(&qword_1002C10D0, type metadata accessor for Utility_ErrorInfo.BatchError, &protocol conformance descriptor for Utility_ErrorInfo.BatchError);

  return Message.hash(into:)();
}

uint64_t _s22CloudKitImplementation30Utility_DeleteAllZonesResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  if ((sub_1000E76A8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = *(a2 + 8);
  if (*(a2 + 16) == 1)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (v4 != 3)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v4 != 4)
        {
          return 0;
        }
      }

      else if (v4 != 5)
      {
        return 0;
      }

      goto LABEL_9;
    }

    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }

LABEL_9:
      type metadata accessor for Utility_DeleteAllZonesResponse(0);
      type metadata accessor for UnknownStorage();
      sub_1000D331C(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else if (v4 == v5)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t _s22CloudKitImplementation26Utility_DeleteZoneResponseV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BB130(&qword_1002C0F70, &qword_100245190);
  __chkstk_darwin(v7 - 8);
  v9 = (&v21 - v8);
  v10 = sub_1000BB130(&qword_1002C15F0, &unk_100246070);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v23 = type metadata accessor for Utility_DeleteZoneResponse(0);
  v24 = a1;
  v14 = *(v23 + 24);
  v15 = *(v11 + 56);
  sub_1000CC794(a1 + v14, v13, &qword_1002C0F70, &qword_100245190);
  sub_1000CC794(a2 + v14, &v13[v15], &qword_1002C0F70, &qword_100245190);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1000CC794(v13, v9, &qword_1002C0F70, &qword_100245190);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v22;
      sub_1000D31AC(&v13[v15], v22, type metadata accessor for Utility_ErrorInfo.ResultError);
      v19 = _s22CloudKitImplementation17Utility_ErrorInfoV06ResultE0V2eeoiySbAE_AEtFZ_0(v9, v18);
      sub_1000D327C(v18, type metadata accessor for Utility_ErrorInfo.ResultError);
      sub_1000D327C(v9, type metadata accessor for Utility_ErrorInfo.ResultError);
      sub_1000CCDBC(v13, &qword_1002C0F70, &qword_100245190);
      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_1000D327C(v9, type metadata accessor for Utility_ErrorInfo.ResultError);
LABEL_6:
    sub_1000CCDBC(v13, &qword_1002C15F0, &unk_100246070);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000CCDBC(v13, &qword_1002C0F70, &qword_100245190);
LABEL_9:
  if (*v24 == *a2 && v24[1] == a2[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for UnknownStorage();
    sub_1000D331C(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s22CloudKitImplementation17Utility_ErrorInfoV15DatabaseFailureV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v6 = *(a2 + 32);
      v7 = *(a2 + 40);
      v8 = Rpcproto_ErrorInfo.Client.Code.rawValue.getter(a1[4], *(a1 + 40));
      if (v8 == Rpcproto_ErrorInfo.Client.Code.rawValue.getter(v6, v7))
      {
        v9 = a1[6];
        if (*(a1 + 56) == 1)
        {
          v9 = qword_100246080[v9];
        }

        v10 = *(a2 + 48);
        if (*(a2 + 56))
        {
          switch(v10)
          {
            case 1:
              if (v9 != 1)
              {
                return 0;
              }

              goto LABEL_19;
            case 2:
              if (v9 != 2)
              {
                return 0;
              }

              goto LABEL_19;
            case 3:
              if (v9 != 3)
              {
                return 0;
              }

              goto LABEL_19;
            case 4:
              if (v9 != 4)
              {
                return 0;
              }

              goto LABEL_19;
            case 5:
              if (v9 != 6)
              {
                return 0;
              }

              goto LABEL_19;
            case 6:
              if (v9 != 7)
              {
                return 0;
              }

              goto LABEL_19;
            case 7:
              if (v9 != 8)
              {
                return 0;
              }

              goto LABEL_19;
            case 8:
              if (v9 != 9)
              {
                return 0;
              }

              goto LABEL_19;
            case 9:
              v12 = 200001;
              break;
            case 10:
              v12 = 200002;
              break;
            case 11:
              v12 = 200003;
              break;
            case 12:
              v12 = 200004;
              break;
            case 13:
              v12 = 200005;
              break;
            default:
              if (!v9)
              {
                goto LABEL_19;
              }

              return 0;
          }

          if (v9 != v12)
          {
            return 0;
          }

LABEL_19:
          type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
          type metadata accessor for UnknownStorage();
          sub_1000D331C(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
          return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
        }

        if (v9 == v10)
        {
          goto LABEL_19;
        }
      }
    }
  }

  return 0;
}

uint64_t _s22CloudKitImplementation17Utility_ErrorInfoV06ResultE0V2eeoiySbAE_AEtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BB130(&qword_1002C0F78, &qword_100245198);
  __chkstk_darwin(v8 - 8);
  v10 = (&v23 - v9);
  v11 = sub_1000BB130(&qword_1002C15E8, &qword_100246068);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v14 = a1[2];
  v15 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v15 <= 3)
    {
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          if (v14 != 2)
          {
            goto LABEL_17;
          }
        }

        else if (v14 != 3)
        {
          goto LABEL_17;
        }
      }

      else if (v15)
      {
        if (v14 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v14)
      {
        goto LABEL_17;
      }
    }

    else if (v15 <= 5)
    {
      if (v15 == 4)
      {
        if (v14 != 4)
        {
          goto LABEL_17;
        }
      }

      else if (v14 != 5)
      {
        goto LABEL_17;
      }
    }

    else if (v15 == 6)
    {
      if (v14 != 6)
      {
        goto LABEL_17;
      }
    }

    else if (v15 == 7)
    {
      if (v14 != 7)
      {
        goto LABEL_17;
      }
    }

    else if (v14 != 8)
    {
      goto LABEL_17;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_17;
  }

  v23 = v7;
  v24 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v16 = *(v24 + 28);
  v17 = *(v11 + 48);
  sub_1000CC794(a1 + v16, v13, &qword_1002C0F78, &qword_100245198);
  sub_1000CC794(a2 + v16, &v13[v17], &qword_1002C0F78, &qword_100245198);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_1000CCDBC(v13, &qword_1002C0F78, &qword_100245198);
LABEL_24:
      type metadata accessor for UnknownStorage();
      sub_1000D331C(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v19 & 1;
    }

    goto LABEL_16;
  }

  sub_1000CC794(v13, v10, &qword_1002C0F78, &qword_100245198);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    sub_1000D327C(v10, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
LABEL_16:
    sub_1000CCDBC(v13, &qword_1002C15E8, &qword_100246068);
    goto LABEL_17;
  }

  v21 = v23;
  sub_1000D31AC(&v13[v17], v23, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
  v22 = _s22CloudKitImplementation17Utility_ErrorInfoV15DatabaseFailureV2eeoiySbAE_AEtFZ_0(v10, v21);
  sub_1000D327C(v21, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
  sub_1000D327C(v10, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
  sub_1000CCDBC(v13, &qword_1002C0F78, &qword_100245198);
  if (v22)
  {
    goto LABEL_24;
  }

LABEL_17:
  v19 = 0;
  return v19 & 1;
}

uint64_t _s22CloudKitImplementation17Utility_ErrorInfoV05BatchE0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        if (v5 != 3)
        {
          return 0;
        }
      }

      else if (v6 == 4)
      {
        if (v5 != 4)
        {
          return 0;
        }
      }

      else if (v5 != 5)
      {
        return 0;
      }

      goto LABEL_13;
    }

    if (v6)
    {
      if (v6 == 1)
      {
        if (v5 != 1)
        {
          return 0;
        }
      }

      else if (v5 != 2)
      {
        return 0;
      }

LABEL_13:
      type metadata accessor for Utility_ErrorInfo.BatchError(0);
      type metadata accessor for UnknownStorage();
      sub_1000D331C(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else if (v5 == v6)
  {
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_1000D31AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D3214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D327C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000D331C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000D3364()
{
  result = qword_1002C0F88;
  if (!qword_1002C0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0F88);
  }

  return result;
}

unint64_t sub_1000D33D8()
{
  result = qword_1002C0FD0;
  if (!qword_1002C0FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0FD0);
  }

  return result;
}

unint64_t sub_1000D3430()
{
  result = qword_1002C0FE8;
  if (!qword_1002C0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0FE8);
  }

  return result;
}

unint64_t sub_1000D3488()
{
  result = qword_1002C0FF0;
  if (!qword_1002C0FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0FF0);
  }

  return result;
}

unint64_t sub_1000D34E0()
{
  result = qword_1002C0FF8;
  if (!qword_1002C0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0FF8);
  }

  return result;
}

unint64_t sub_1000D3538()
{
  result = qword_1002C1000;
  if (!qword_1002C1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1000);
  }

  return result;
}

unint64_t sub_1000D3590()
{
  result = qword_1002C1008;
  if (!qword_1002C1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1008);
  }

  return result;
}

unint64_t sub_1000D35E8()
{
  result = qword_1002C1010;
  if (!qword_1002C1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1010);
  }

  return result;
}

void sub_1000D3FEC(uint64_t a1)
{
  sub_1000D4238(319, &unk_1002C11D8, type metadata accessor for Utility_DeleteZoneResponse, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000D40D0(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1000D4174(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000D4238(319, &unk_1002C1308, type metadata accessor for Utility_ErrorInfo.ResultError, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000D4238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000D42B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000D4330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000D43A0(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000D4454(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1000D450C(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_1000D4238(319, &unk_1002C14D8, type metadata accessor for Utility_ErrorInfo.DatabaseFailure, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000D4600(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Utility_PhotosUtilityAPIAsync.deleteZone(zoneName:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Utility_DeleteZoneRequest(0);
  __chkstk_darwin(v12);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  v18 = a2;
  sub_1000D480C();
  static Message.with(_:)();
  (*(a6 + 8))(v14, a3, a4, a5, a6);
  return sub_1000D4934(v14, type metadata accessor for Utility_DeleteZoneRequest);
}

unint64_t sub_1000D480C()
{
  result = qword_1002C1070;
  if (!qword_1002C1070)
  {
    type metadata accessor for Utility_DeleteZoneRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1070);
  }

  return result;
}

uint64_t Utility_PhotosUtilityAPIAsync.deleteAllZones(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Utility_DeleteAllZonesRequest(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  (*(a4 + 16))(v10, a1, a2, a3, a4);
  return sub_1000D4934(v10, type metadata accessor for Utility_DeleteAllZonesRequest);
}

uint64_t sub_1000D4934(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Utility_PhotosUtilityAPIAsyncClient.__allocating_init(codeService:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void Utility_PhotosUtilityAPIAsyncClient.deleteZone(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000BB130(&qword_1002C15F8, &qword_1002460F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Utility_DeleteZoneRequest(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = objc_allocWithZone(sub_1000BB130(&qword_1002C1600, &qword_1002460F8));
  v10 = CKCodeOperation.init(functionName:request:)();
  sub_1000D4CF4(a1, v6, type metadata accessor for Utility_DeleteZoneRequest);
  v8(v6, 0, 1, v7);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  CKCodeService.add<A, B>(_:)();
}

void Utility_PhotosUtilityAPIAsyncClient.deleteAllZones(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000BB130(&qword_1002C1608, &qword_100246100);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Utility_DeleteAllZonesRequest(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = objc_allocWithZone(sub_1000BB130(&qword_1002C1610, &qword_100246108));
  v10 = CKCodeOperation.init(functionName:request:)();
  sub_1000D4CF4(a1, v6, type metadata accessor for Utility_DeleteAllZonesRequest);
  v8(v6, 0, 1, v7);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  CKCodeService.add<A, B>(_:)();
}

uint64_t sub_1000D4CF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Utility_PhotosUtilityAPIAsyncClient.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t Utility_PhotosUtilityAPIAsyncOperation.deleteZone(zoneName:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Utility_DeleteZoneRequest(0);
  __chkstk_darwin(v12);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1;
  v19 = a2;
  sub_1000D480C();
  static Message.with(_:)();
  v15 = (*(a6 + 8))(v14, a3, a4, a5, a6);
  sub_1000D4934(v14, type metadata accessor for Utility_DeleteZoneRequest);
  return v15;
}

void *sub_1000D4F48(void *result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = result;

    *v4 = v3;
    v4[1] = v2;
  }

  return result;
}

uint64_t Utility_PhotosUtilityAPIAsyncOperation.deleteAllZones(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Utility_DeleteAllZonesRequest(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v11 = (*(a4 + 16))(v10, a1, a2, a3, a4);
  sub_1000D4934(v10, type metadata accessor for Utility_DeleteAllZonesRequest);
  return v11;
}

uint64_t Utility_PhotosUtilityAPIAsyncOperationClient.deleteZone(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000BB130(&qword_1002C15F8, &qword_1002460F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Utility_DeleteZoneRequest(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = objc_allocWithZone(sub_1000BB130(&qword_1002C1600, &qword_1002460F8));
  v10 = CKCodeOperation.init(functionName:request:)();
  sub_1000D4CF4(a1, v6, type metadata accessor for Utility_DeleteZoneRequest);
  v8(v6, 0, 1, v7);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  return v10;
}

uint64_t Utility_PhotosUtilityAPIAsyncOperationClient.deleteAllZones(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000BB130(&qword_1002C1608, &qword_100246100);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Utility_DeleteAllZonesRequest(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = objc_allocWithZone(sub_1000BB130(&qword_1002C1610, &qword_100246108));
  v10 = CKCodeOperation.init(functionName:request:)();
  sub_1000D4CF4(a1, v6, type metadata accessor for Utility_DeleteAllZonesRequest);
  v8(v6, 0, 1, v7);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  return v10;
}

BOOL sub_1000D53F4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_100248408[a1];
  }

  if (a4)
  {
    a3 = qword_100248408[a3];
  }

  return a1 == a3;
}

BOOL sub_1000D5418(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_100248450[a1];
  }

  if (a4)
  {
    a3 = qword_100248450[a3];
  }

  return a1 == a3;
}

uint64_t RequestItem.operationID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v9 = sub_1000EA6A0(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
}

uint64_t RequestItem.recordID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v9 = sub_1000EA6A0(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
}

uint64_t RequestItem.zoneName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v9 = sub_1000EA6A0(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  *(v8 + 64) = a1;
  *(v8 + 72) = a2;
}

uint64_t RequestItem.ownerID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v9 = sub_1000EA6A0(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  *(v8 + 80) = a1;
  *(v8 + 88) = a2;
}

uint64_t RequestItem.resourceFingerprint.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v9 = sub_1000EA6A0(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  *(v8 + 112) = a1;
  *(v8 + 120) = a2;
}

uint64_t RequestItem.records.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v7 = sub_1000EA6A0(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  swift_beginAccess();
  *(v6 + 128) = a1;
}

uint64_t RequestItem.srcFieldName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v9 = sub_1000EA6A0(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  *(v8 + 48) = a1;
  *(v8 + 56) = a2;
}

uint64_t RequestItem.downloadType.setter(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v9 = sub_1000EA6A0(v8);

    *(v3 + v6) = v9;
    v8 = v9;
  }

  result = swift_beginAccess();
  *(v8 + 96) = a1;
  *(v8 + 104) = a2 & 1;
  return result;
}

uint64_t RequestItem.timeRange.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BB130(&qword_1002C0E88, &qword_1002450B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000EA6A0(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000EB0BC(a1, v6, type metadata accessor for CMTimeRange);
  v11 = type metadata accessor for CMTimeRange(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
  swift_beginAccess();
  sub_1000CC968(v6, v9 + v12, &qword_1002C0E88, &qword_1002450B8);
  return swift_endAccess();
}

uint64_t RequestItem.mediaTypeHint.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v7 = sub_1000EA6A0(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
  swift_beginAccess();
  *(v6 + v8) = a1;
}

uint64_t RequestItem.videoProfileTierLevelInformation.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BB130(&qword_1002C0F00, &qword_100246410);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000EA6A0(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000EB0BC(a1, v6, type metadata accessor for VideoHEVCProfileTierLevelInformation);
  v11 = type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
  swift_beginAccess();
  sub_1000CC968(v6, v9 + v12, &qword_1002C0F00, &qword_100246410);
  return swift_endAccess();
}

uint64_t sub_1000D5DD4(int a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v9 = sub_1000EA6A0(v8);

    *(v4 + v6) = v9;
    v8 = v9;
  }

  v10 = *a2;
  result = swift_beginAccess();
  *(v8 + v10) = a1;
  return result;
}

uint64_t sub_1000D5EA4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v11 = sub_1000EA6A0(v10);

    *(v5 + v8) = v11;
    v10 = v11;
  }

  v12 = (v10 + *a3);
  swift_beginAccess();
  *v12 = a1;
  v12[1] = a2;
}

uint64_t RequestItem.clientSupportsProMotionDisplay.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v7 = sub_1000EA6A0(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay;
  result = swift_beginAccess();
  *(v6 + v8) = a1 & 1;
  return result;
}

uint64_t RequestItem.videoDuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000EA6A0(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1000EB0BC(a1, v6, type metadata accessor for CMTime);
  v11 = type metadata accessor for CMTime(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
  swift_beginAccess();
  sub_1000CC968(v6, v9 + v12, &qword_1002C0E90, &qword_1002450C0);
  return swift_endAccess();
}

uint64_t RequestItem.videoNominalFrameRate.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v7 = sub_1000EA6A0(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  v8 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate;
  result = swift_beginAccess();
  *(v6 + v8) = a1;
  return result;
}

uint64_t ResponseItem.assetRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C0E30, &qword_100245080);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for ResponseItem(0);
  sub_1000CC794(v1 + *(v6 + 52), v5, &qword_1002C0E30, &qword_100245080);
  v7 = type metadata accessor for Ckcode_RecordTransport();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  Ckcode_RecordTransport.init()();
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000CCDBC(v5, &qword_1002C0E30, &qword_100245080);
  }

  return result;
}

uint64_t UploadResource.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = &_swiftEmptyArrayStorage;
  type metadata accessor for UploadResource(0);
  return UnknownStorage.init()();
}

BOOL ResponseItem.hasAssetRecord.getter()
{
  v1 = sub_1000BB130(&qword_1002C0E30, &qword_100245080);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for ResponseItem(0);
  sub_1000CC794(v0 + *(v4 + 52), v3, &qword_1002C0E30, &qword_100245080);
  v5 = type metadata accessor for Ckcode_RecordTransport();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1000CCDBC(v3, &qword_1002C0E30, &qword_100245080);
  return v6;
}

uint64_t sub_1000D6550(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB608();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t ItemErrorCode.rawValue.getter(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_1002484E0[result];
  }

  return result;
}

uint64_t sub_1000D66A4()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1002484E0[result];
  }

  return result;
}

void sub_1000D66DC(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_1002484E0[v2];
  }

  *a1 = v2;
}

uint64_t sub_1000D6700(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB5B4();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_1000D674C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_1002484E0[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_1002484E0[v3];
  }

  return v2 == v3;
}

uint64_t BatchErrorCode.rawValue.getter(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_1002484C0[result];
  }

  return result;
}

uint64_t sub_1000D68B4()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1002484C0[result];
  }

  return result;
}

void sub_1000D68EC(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_1002484C0[v2];
  }

  *a1 = v2;
}

uint64_t sub_1000D6910(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB560();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_1000D695C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_1002484C0[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_1002484C0[v3];
  }

  return v2 == v3;
}

uint64_t sub_1000D6A70@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_1000D6ACC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_1000D6B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB65C();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_1000D6B84()
{
  Goldilocks_RecordRetentionPolicy.rawValue.getter();
  v1 = v0;
  Goldilocks_RecordRetentionPolicy.rawValue.getter();
  return v1 == v2;
}

uint64_t sub_1000D6CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB6B0();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000D6E40@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  a1(0);
  return UnknownStorage.init()();
}

uint64_t sub_1000D6F70@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000D700C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000D7104@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000D71A0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000D7280@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  a1(0);
  return UnknownStorage.init()();
}

uint64_t Goldilocks_ExitMoveBatchResponse.batchID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Goldilocks_ExitMoveBatchResponse.batchID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t VideoHEVCProfileTierLevelInformation.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
  return UnknownStorage.init()();
}

uint64_t RequestItem.operationID.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

void (*RequestItem.operationID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;

  return sub_1000D767C;
}

void sub_1000D767C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v11 = sub_1000EA6A0(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v16 = sub_1000EA6A0(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    *(v13 + 16) = v3;
    *(v13 + 24) = v5;
  }

  free(v2);
}

uint64_t RequestItem.recordID.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 32);

  return v2;
}

void (*RequestItem.recordID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 40);
  *(v4 + 72) = *(v6 + 32);
  *(v4 + 80) = v7;

  return sub_1000D78C8;
}

void sub_1000D78C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v11 = sub_1000EA6A0(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v16 = sub_1000EA6A0(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    *(v13 + 32) = v3;
    *(v13 + 40) = v5;
  }

  free(v2);
}

uint64_t RequestItem.srcFieldName.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 48);

  return v2;
}

void (*RequestItem.srcFieldName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 56);
  *(v4 + 72) = *(v6 + 48);
  *(v4 + 80) = v7;

  return sub_1000D7B14;
}

void sub_1000D7B14(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v11 = sub_1000EA6A0(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    *(v8 + 48) = v3;
    *(v8 + 56) = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v16 = sub_1000EA6A0(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    *(v13 + 48) = v3;
    *(v13 + 56) = v5;
  }

  free(v2);
}

uint64_t RequestItem.zoneName.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 64);

  return v2;
}

void (*RequestItem.zoneName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 72);
  *(v4 + 72) = *(v6 + 64);
  *(v4 + 80) = v7;

  return sub_1000D7D60;
}

void sub_1000D7D60(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v11 = sub_1000EA6A0(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    *(v8 + 64) = v3;
    *(v8 + 72) = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v16 = sub_1000EA6A0(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    *(v13 + 64) = v3;
    *(v13 + 72) = v5;
  }

  free(v2);
}

uint64_t RequestItem.ownerID.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 80);

  return v2;
}

void (*RequestItem.ownerID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 88);
  *(v4 + 72) = *(v6 + 80);
  *(v4 + 80) = v7;

  return sub_1000D7FAC;
}

void sub_1000D7FAC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v11 = sub_1000EA6A0(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    *(v8 + 80) = v3;
    *(v8 + 88) = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v16 = sub_1000EA6A0(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    *(v13 + 80) = v3;
    *(v13 + 88) = v5;
  }

  free(v2);
}

uint64_t RequestItem.downloadType.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  swift_beginAccess();
  return *(v1 + 96);
}

void (*RequestItem.downloadType.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 104);
  *(v4 + 72) = *(v6 + 96);
  *(v4 + 80) = v7;
  return sub_1000D81EC;
}

void sub_1000D81EC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 84);
    v10 = *(v2 + 88);
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v11 = sub_1000EA6A0(v8);

    *(v10 + v9) = v11;
    v8 = v11;
  }

  swift_beginAccess();
  *(v8 + 96) = v3;
  *(v8 + 104) = v6;

  free(v2);
}

uint64_t RequestItem.resourceFingerprint.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 112);

  return v2;
}

void (*RequestItem.resourceFingerprint.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 120);
  *(v4 + 72) = *(v6 + 112);
  *(v4 + 80) = v7;

  return sub_1000D83CC;
}

void sub_1000D83CC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v11 = sub_1000EA6A0(v8);

      *(v10 + v9) = v11;
      v8 = v11;
    }

    swift_beginAccess();
    *(v8 + 112) = v3;
    *(v8 + 120) = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v16 = sub_1000EA6A0(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    swift_beginAccess();
    *(v13 + 112) = v3;
    *(v13 + 120) = v5;
  }

  free(v2);
}

uint64_t RequestItem.records.getter()
{
  type metadata accessor for RequestItem(0);
  swift_beginAccess();
}

void (*RequestItem.records.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 128);

  return sub_1000D860C;
}

void sub_1000D860C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v10 = sub_1000EA6A0(v7);

      *(v9 + v8) = v10;
      v7 = v10;
    }

    swift_beginAccess();
    *(v7 + 128) = v3;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v5 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 88);
      v14 = *(v2 + 80);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v15 = sub_1000EA6A0(v12);

      *(v14 + v13) = v15;
      v12 = v15;
    }

    swift_beginAccess();
    *(v12 + 128) = v3;
  }

  free(v2);
}

uint64_t RequestItem.timeRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C0E88, &qword_1002450B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for RequestItem(0) + 20));
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
  swift_beginAccess();
  sub_1000CC794(v6 + v7, v5, &qword_1002C0E88, &qword_1002450B8);
  v8 = type metadata accessor for CMTimeRange(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000EB0BC(v5, a1, type metadata accessor for CMTimeRange);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for CMTime(0);
  v12 = *(*(v11 - 8) + 56);
  v12(a1 + v10, 1, 1, v11);
  v12(a1 + *(v8 + 24), 1, 1, v11);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000CCDBC(v5, &qword_1002C0E88, &qword_1002450B8);
  }

  return result;
}

void (*RequestItem.timeRange.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C0E88, &qword_1002450B8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CMTimeRange(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
  swift_beginAccess();
  sub_1000CC794(v15 + v16, v7, &qword_1002C0E88, &qword_1002450B8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    v19 = type metadata accessor for CMTime(0);
    v20 = *(*(v19 - 8) + 56);
    v20(v13 + v18, 1, 1, v19);
    v20(v13 + *(v8 + 24), 1, 1, v19);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C0E88, &qword_1002450B8);
    }
  }

  else
  {
    sub_1000EB0BC(v7, v13, type metadata accessor for CMTimeRange);
  }

  return sub_1000D8C00;
}

void sub_1000D8C00(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000EB3B0(*(v2 + 120), *(v2 + 112), type metadata accessor for CMTimeRange);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v9 = sub_1000EA6A0(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000EB0BC(v11, v15, type metadata accessor for CMTimeRange);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
    swift_beginAccess();
    sub_1000CC968(v15, v6 + v16, &qword_1002C0E88, &qword_1002450B8);
    swift_endAccess();
    sub_1000EB418(v10, type metadata accessor for CMTimeRange);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v22 = sub_1000EA6A0(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000EB0BC(v10, v15, type metadata accessor for CMTimeRange);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
    swift_beginAccess();
    sub_1000CC968(v15, v19 + v25, &qword_1002C0E88, &qword_1002450B8);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

uint64_t RequestItem.mediaTypeHint.getter()
{
  type metadata accessor for RequestItem(0);
  swift_beginAccess();
}

void (*RequestItem.mediaTypeHint.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1000D8FD0;
}

void sub_1000D8FD0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v10 = sub_1000EA6A0(v7);

      *(v9 + v8) = v10;
      v7 = v10;
    }

    v11 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
    swift_beginAccess();
    *(v7 + v11) = v3;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v5 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 88);
      v15 = *(v2 + 80);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v16 = sub_1000EA6A0(v13);

      *(v15 + v14) = v16;
      v13 = v16;
    }

    v17 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
    swift_beginAccess();
    *(v13 + v17) = v3;
  }

  free(v2);
}

uint64_t RequestItem.videoProfileTierLevelInformation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C0F00, &qword_100246410);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for RequestItem(0) + 20));
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
  swift_beginAccess();
  sub_1000CC794(v6 + v7, v5, &qword_1002C0F00, &qword_100246410);
  v8 = type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000EB0BC(v5, a1, type metadata accessor for VideoHEVCProfileTierLevelInformation);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  UnknownStorage.init()();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000CCDBC(v5, &qword_1002C0F00, &qword_100246410);
  }

  return result;
}

void (*RequestItem.videoProfileTierLevelInformation.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C0F00, &qword_100246410) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
  swift_beginAccess();
  sub_1000CC794(v15 + v16, v7, &qword_1002C0F00, &qword_100246410);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    UnknownStorage.init()();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C0F00, &qword_100246410);
    }
  }

  else
  {
    sub_1000EB0BC(v7, v13, type metadata accessor for VideoHEVCProfileTierLevelInformation);
  }

  return sub_1000D9504;
}

void sub_1000D9504(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000EB3B0(*(v2 + 120), *(v2 + 112), type metadata accessor for VideoHEVCProfileTierLevelInformation);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v9 = sub_1000EA6A0(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000EB0BC(v11, v15, type metadata accessor for VideoHEVCProfileTierLevelInformation);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
    swift_beginAccess();
    sub_1000CC968(v15, v6 + v16, &qword_1002C0F00, &qword_100246410);
    swift_endAccess();
    sub_1000EB418(v10, type metadata accessor for VideoHEVCProfileTierLevelInformation);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v22 = sub_1000EA6A0(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000EB0BC(v10, v15, type metadata accessor for VideoHEVCProfileTierLevelInformation);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
    swift_beginAccess();
    sub_1000CC968(v15, v19 + v25, &qword_1002C0F00, &qword_100246410);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1000D979C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = sub_1000BB130(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for RequestItem(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  sub_1000CC794(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  sub_1000CCDBC(v11, a1, a2);
  return v15;
}

uint64_t sub_1000D98E4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = sub_1000BB130(a1, a2);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v16 = sub_1000EA6A0(v15);

    *(v9 + v13) = v16;
    v15 = v16;
  }

  v17 = a3(0);
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = *a4;
  swift_beginAccess();
  sub_1000CC968(v12, v15 + v18, a1, a2);
  return swift_endAccess();
}

void (*RequestItem.apacAudioTrackChannelCount.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackChannelCount;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1000D9AF4;
}

uint64_t sub_1000D9B0C(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for RequestItem(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

void (*RequestItem.apacAudioTrackHoachannelCount.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackHoachannelCount;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1000D9C08;
}

void sub_1000D9C14(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 84);
    v11 = *(v4 + 72);
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v12 = sub_1000EA6A0(v9);

    *(v11 + v10) = v12;
    v9 = v12;
  }

  v13 = *a3;
  swift_beginAccess();
  *(v9 + v13) = v5;

  free(v4);
}

void (*RequestItem.apacAudioTrackBedchannelCount.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackBedchannelCount;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1000D9DA4;
}

void (*RequestItem.cameraMake.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraMake);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1000D9E70;
}

uint64_t sub_1000D9E88(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for RequestItem(0) + 20)) + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

void (*RequestItem.cameraModel.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraModel);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1000D9FA4;
}

void sub_1000D9FB0(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v8 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v4 + 96);
      v12 = *(v4 + 88);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v13 = sub_1000EA6A0(v10);

      *(v12 + v11) = v13;
      v10 = v13;
    }

    v14 = (v10 + *a3);
    swift_beginAccess();
    *v14 = v5;
    v14[1] = v7;
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v8 + v6);
    if ((v15 & 1) == 0)
    {
      v17 = *(v4 + 96);
      v18 = *(v4 + 88);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v19 = sub_1000EA6A0(v16);

      *(v18 + v17) = v19;
      v16 = v19;
    }

    v20 = (v16 + *a3);
    swift_beginAccess();
    *v20 = v5;
    v20[1] = v7;
  }

  free(v4);
}

void (*RequestItem.apacAudioTrackCodecProfileLevelDescription.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackCodecProfileLevelDescription);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1000DA1CC;
}

uint64_t RequestItem.clientSupportsProMotionDisplay.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  v2 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay;
  swift_beginAccess();
  return *(v1 + v2);
}

void (*RequestItem.clientSupportsProMotionDisplay.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_1000DA2D4;
}

void sub_1000DA2D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000EA6A0(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  v11 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay;
  swift_beginAccess();
  *(v7 + v11) = v5;

  free(v2);
}

uint64_t RequestItem.videoDuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for RequestItem(0) + 20));
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
  swift_beginAccess();
  sub_1000CC794(v6 + v7, v5, &qword_1002C0E90, &qword_1002450C0);
  v8 = type metadata accessor for CMTime(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1000EB0BC(v5, a1, type metadata accessor for CMTime);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  UnknownStorage.init()();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000CCDBC(v5, &qword_1002C0E90, &qword_1002450C0);
  }

  return result;
}

void (*RequestItem.videoDuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C0E90, &qword_1002450C0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CMTime(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
  swift_beginAccess();
  sub_1000CC794(v15 + v16, v7, &qword_1002C0E90, &qword_1002450C0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    UnknownStorage.init()();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C0E90, &qword_1002450C0);
    }
  }

  else
  {
    sub_1000EB0BC(v7, v13, type metadata accessor for CMTime);
  }

  return sub_1000DA788;
}

void sub_1000DA788(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000EB3B0(*(v2 + 120), *(v2 + 112), type metadata accessor for CMTime);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v9 = sub_1000EA6A0(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000EB0BC(v11, v15, type metadata accessor for CMTime);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
    swift_beginAccess();
    sub_1000CC968(v15, v6 + v16, &qword_1002C0E90, &qword_1002450C0);
    swift_endAccess();
    sub_1000EB418(v10, type metadata accessor for CMTime);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for RequestItem._StorageClass(0);
      swift_allocObject();
      v22 = sub_1000EA6A0(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1000EB0BC(v10, v15, type metadata accessor for CMTime);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
    swift_beginAccess();
    sub_1000CC968(v15, v19 + v25, &qword_1002C0E90, &qword_1002450C0);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

double RequestItem.videoNominalFrameRate.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  v2 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate;
  swift_beginAccess();
  return *(v1 + v2);
}

void (*RequestItem.videoNominalFrameRate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return sub_1000DAB4C;
}

void sub_1000DAB4C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v10 = sub_1000EA6A0(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  v11 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate;
  swift_beginAccess();
  *(v7 + v11) = v3;

  free(v2);
}

void (*RequestItem.videoOrientedWidth.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedWidth;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1000DACDC;
}

void (*RequestItem.videoOrientedHeight.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedHeight;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1000DAD9C;
}

void (*RequestItem.videoCodec.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoCodec;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1000DAE5C;
}

uint64_t sub_1000DAE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EDEA4();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t RequestItem.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = *(type metadata accessor for RequestItem(0) + 20);
  if (qword_1002C06D0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1002C17A0;
}

uint64_t Goldilocks_ErrorInfo.ResultError.errorDomain.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Goldilocks_ErrorInfo.ResultError.errorDomain.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ResponseItem.assetRecord.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResponseItem(0) + 52);
  sub_1000CCDBC(v1 + v3, &qword_1002C0E30, &qword_100245080);
  v4 = type metadata accessor for Ckcode_RecordTransport();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ResponseItem.assetRecord.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C0E30, &qword_100245080) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Ckcode_RecordTransport();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for ResponseItem(0) + 52);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C0E30, &qword_100245080);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    Ckcode_RecordTransport.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C0E30, &qword_100245080);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1000DB340;
}

void sub_1000DB340(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1000CCDBC(v9 + v3, &qword_1002C0E30, &qword_100245080);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1000CCDBC(v9 + v3, &qword_1002C0E30, &qword_100245080);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall ResponseItem.clearAssetRecord()()
{
  v1 = *(type metadata accessor for ResponseItem(0) + 52);
  sub_1000CCDBC(v0 + v1, &qword_1002C0E30, &qword_100245080);
  v2 = type metadata accessor for Ckcode_RecordTransport();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t ResponseItem.errorMessage.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ResponseItem.errorMessage.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Goldilocks_InitiateExitRequest.exitSource.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t ResponseItem.errorCode.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t ResponseItem.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResponseItem(0) + 48);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResponseItem.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResponseItem(0) + 48);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ResponseItem.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  v2 = type metadata accessor for ResponseItem(0);
  UnknownStorage.init()();
  v3 = *(v2 + 52);
  v4 = type metadata accessor for Ckcode_RecordTransport();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t Goldilocks_DuplicateState.foundDuplicates.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1000DB888@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000DB924(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ResetInterval.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = &_swiftEmptyArrayStorage;
  type metadata accessor for ResetInterval(0);
  return UnknownStorage.init()();
}

uint64_t Goldilocks_InitiateExitRequest.participantUserIdsToRemove.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t UploadResourcesResponse.skipUploadResources.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t UploadResourcesResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = &_swiftEmptyArrayStorage;
  type metadata accessor for UploadResourcesResponse(0);
  return UnknownStorage.init()();
}

uint64_t UntranscodableItem.ownerDsid.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t UntranscodableItem.ownerDsid.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t UntranscodableItem.referenceChecksumHex.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t UntranscodableItem.referenceChecksumHex.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t UntranscodableItem.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UntranscodableItem(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UntranscodableItem.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UntranscodableItem(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UntranscodableItem.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  type metadata accessor for UntranscodableItem(0);
  return UnknownStorage.init()();
}

uint64_t sub_1000DC034()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static DownloadType._protobuf_nameMap);
  sub_1000BA040(v0, static DownloadType._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DEFAULT";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MMCS";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "TRANSCODE";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000DC2B0()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static ItemErrorCode._protobuf_nameMap);
  sub_1000BA040(v0, static ItemErrorCode._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100246210;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 0;
  *v5 = "NO_ITEM_ERROR";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 101;
  *v9 = "ZONE_NOT_FOUND";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 102;
  *v11 = "RECORD_NOT_FOUND";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 103;
  *v13 = "RESOURCE_NOT_FOUND";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 104;
  *v15 = "STALE_FINGERPRINT";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 105;
  *v17 = "INVALID_REQUEST";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 201;
  *v19 = "SERVER_ITEM_ERROR";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 301;
  *v21 = "NOT_TRANSCODABLE";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000DC668()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static BatchErrorCode._protobuf_nameMap);
  sub_1000BA040(v0, static BatchErrorCode._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NO_BATCH_ERROR";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 101;
  *v10 = "FEATURE_DISABLED";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 102;
  *v12 = "THROTTLED";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 201;
  *v14 = "SERVER_BATCH_ERROR";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000DC91C()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static ResourceType._protobuf_nameMap);
  sub_1000BA040(v0, static ResourceType._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_100246220;
  v4 = v63 + v3;
  v5 = v63 + v3 + v1[14];
  *(v63 + v3) = 0;
  *v5 = "CPLResourceTypeUnknown";
  *(v5 + 8) = 22;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v63 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "CPLResourceTypeOriginal";
  *(v9 + 8) = 23;
  *(v9 + 16) = 2;
  v8();
  v10 = (v63 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "CPLResourceTypeJPEGFullSize";
  *(v11 + 1) = 27;
  v11[16] = 2;
  v8();
  v12 = (v63 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "CPLResourceTypeJPEGLargeSize";
  *(v13 + 1) = 28;
  v13[16] = 2;
  v8();
  v14 = (v63 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "CPLResourceTypeJPEGMediumSize";
  *(v15 + 1) = 29;
  v15[16] = 2;
  v8();
  v16 = (v63 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "CPLResourceTypeJPEGThumbnail";
  *(v17 + 1) = 28;
  v17[16] = 2;
  v8();
  v18 = (v63 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "CPLResourceTypeVideoMediumSize";
  *(v19 + 1) = 30;
  v19[16] = 2;
  v8();
  v20 = (v63 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "CPLResourceTypeVideoSmallSize";
  *(v21 + 1) = 29;
  v21[16] = 2;
  v8();
  v22 = v63 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "CPLResourceTypeSidecarAudio";
  *(v22 + 8) = 27;
  *(v22 + 16) = 2;
  v8();
  v23 = (v63 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "CPLResourceTypeSidecarXMP";
  *(v24 + 1) = 25;
  v24[16] = 2;
  v8();
  v25 = (v63 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "CPLResourceTypeMediaMetaData";
  *(v26 + 1) = 28;
  v26[16] = 2;
  v8();
  v27 = (v63 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "CPLResourceTypeUnused1";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v8();
  v29 = (v63 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "CPLResourceTypeUnused2";
  *(v30 + 1) = 22;
  v30[16] = 2;
  v8();
  v31 = (v63 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "CPLResourceTypeAdjustmentData";
  *(v32 + 1) = 29;
  v32[16] = 2;
  v8();
  v33 = (v63 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "CPLResourceTypeAdjustmentSecondaryData";
  *(v34 + 1) = 38;
  v34[16] = 2;
  v8();
  v35 = (v63 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "CPLResourceTypeAdjustmentBaseJPEGFullSize";
  *(v36 + 1) = 41;
  v36[16] = 2;
  v8();
  v37 = v63 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "CPLResourceTypeVideoFullSize";
  *(v37 + 8) = 28;
  *(v37 + 16) = 2;
  v8();
  v38 = (v63 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "CPLResourceTypeOriginalAlternate";
  *(v39 + 1) = 32;
  v39[16] = 2;
  v8();
  v40 = (v63 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "CPLResourceTypeOriginalVideoComplement";
  *(v41 + 1) = 38;
  v41[16] = 2;
  v8();
  v42 = (v63 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "CPLResourceTypeVideoComplement";
  *(v43 + 1) = 30;
  v43[16] = 2;
  v8();
  v44 = (v63 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "CPLResourceTypeAdjustmentBaseVideoComplement";
  *(v45 + 1) = 44;
  v45[16] = 2;
  v8();
  v46 = (v63 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "CPLResourceTypeVideoLargeSize";
  *(v47 + 1) = 29;
  v47[16] = 2;
  v8();
  v48 = (v63 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "CPLResourceTypeSidecarOther";
  *(v49 + 1) = 27;
  v49[16] = 2;
  v8();
  v50 = (v63 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "CPLResourceTypeOriginalSpatialOverCapture";
  *(v51 + 1) = 41;
  v51[16] = 2;
  v8();
  v52 = (v63 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "CPLResourceTypeOriginalSpatialOverCaptureVideoComplement";
  *(v53 + 1) = 56;
  v53[16] = 2;
  v8();
  v54 = (v63 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "CPLResourceTypeAdjustmentBaseVideo";
  *(v55 + 1) = 34;
  v55[16] = 2;
  v8();
  v56 = (v63 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "CPLResourceTypeVideoMetaData";
  *(v57 + 1) = 28;
  v57[16] = 2;
  v8();
  v58 = (v63 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "CPLResourceTypeAdjustedMediaMetaData";
  *(v59 + 1) = 36;
  v59[16] = 2;
  v8();
  v60 = (v63 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "CPLResourceTypeVideoHDRMediumSize";
  *(v61 + 1) = 33;
  v61[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000DD1BC()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static UploadRecordType._protobuf_nameMap);
  sub_1000BA040(v0, static UploadRecordType._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Master";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Asset";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000DD578(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28F0, type metadata accessor for ResourceAnalyzeRequest, &protocol conformance descriptor for ResourceAnalyzeRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DD618(uint64_t a1)
{
  sub_1000EB518(&qword_1002C19E0, type metadata accessor for ResourceAnalyzeRequest, &protocol conformance descriptor for ResourceAnalyzeRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_1000DD684(uint64_t a1, uint64_t a2)
{
  sub_1000EB518(&qword_1002C19E0, type metadata accessor for ResourceAnalyzeRequest, &protocol conformance descriptor for ResourceAnalyzeRequest);

  return Message.hash(into:)();
}

uint64_t sub_1000DD728()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static ResourceAnalyzeResponse._protobuf_nameMap);
  sub_1000BA040(v0, static ResourceAnalyzeResponse._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "items";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "errorCode";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "errorMessage";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "retryAfterMillis";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000DDA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28E8, type metadata accessor for ResourceAnalyzeResponse, &protocol conformance descriptor for ResourceAnalyzeResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DDAE8(uint64_t a1)
{
  sub_1000EB518(&qword_1002C19F8, type metadata accessor for ResourceAnalyzeResponse, &protocol conformance descriptor for ResourceAnalyzeResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_1000DDB54(uint64_t a1, uint64_t a2)
{
  sub_1000EB518(&qword_1002C19F8, type metadata accessor for ResourceAnalyzeResponse, &protocol conformance descriptor for ResourceAnalyzeResponse);

  return Message.hash(into:)();
}

uint64_t sub_1000DDD10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28E0, type metadata accessor for ResourceDownloadRequest, &protocol conformance descriptor for ResourceDownloadRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DDDB0(uint64_t a1)
{
  sub_1000EB518(&unk_1002C0E20, type metadata accessor for ResourceDownloadRequest, &protocol conformance descriptor for ResourceDownloadRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_1000DDE1C(uint64_t a1, uint64_t a2)
{
  sub_1000EB518(&unk_1002C0E20, type metadata accessor for ResourceDownloadRequest, &protocol conformance descriptor for ResourceDownloadRequest);

  return Message.hash(into:)();
}

uint64_t sub_1000DDEC0()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static ResourceDownloadResponse._protobuf_nameMap);
  sub_1000BA040(v0, static ResourceDownloadResponse._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "items";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "errorCode";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "errorMessage";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "retryAfterMillis";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000DE1E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28D8, type metadata accessor for ResourceDownloadResponse, &protocol conformance descriptor for ResourceDownloadResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DE280(uint64_t a1)
{
  sub_1000EB518(&qword_1002C0E50, type metadata accessor for ResourceDownloadResponse, &protocol conformance descriptor for ResourceDownloadResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_1000DE2EC(uint64_t a1, uint64_t a2)
{
  sub_1000EB518(&qword_1002C0E50, type metadata accessor for ResourceDownloadResponse, &protocol conformance descriptor for ResourceDownloadResponse);

  return Message.hash(into:)();
}

uint64_t sub_1000DE478(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*(*v4 + 16) || (type metadata accessor for RequestItem(0), sub_1000EB518(&qword_1002C0E80, type metadata accessor for RequestItem, &protocol conformance descriptor for RequestItem), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
  {
    (a4)(0, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000DE5F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28D0, type metadata accessor for ResourceStreamRequest, &protocol conformance descriptor for ResourceStreamRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DE690(uint64_t a1)
{
  sub_1000EB518(&qword_1002C0EE0, type metadata accessor for ResourceStreamRequest, &protocol conformance descriptor for ResourceStreamRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_1000DE6FC(uint64_t a1, uint64_t a2)
{
  sub_1000EB518(&qword_1002C0EE0, type metadata accessor for ResourceStreamRequest, &protocol conformance descriptor for ResourceStreamRequest);

  return Message.hash(into:)();
}

uint64_t sub_1000DE7A0()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static ResourceStreamResponse._protobuf_nameMap);
  sub_1000BA040(v0, static ResourceStreamResponse._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "items";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "errorCode";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "errorMessage";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "retryAfterMillis";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000DEA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for ResponseItem(0);
        sub_1000EB518(&qword_1002C1830, type metadata accessor for ResponseItem, &protocol conformance descriptor for ResponseItem);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        sub_1000EB560();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1000DEBD4(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v5;
  if (*(*v4 + 16))
  {
    type metadata accessor for ResponseItem(0);
    sub_1000EB518(&qword_1002C1830, type metadata accessor for ResponseItem, &protocol conformance descriptor for ResponseItem);
    v8 = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return v8;
    }

    v7 = 0;
  }

  if (v4[1])
  {
    sub_1000EB560();
    v9 = v7;
    v8 = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v7)
    {
      return v8;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = v4[4];
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v4[3] & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || (v8 = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v9))
  {
    if (!v4[5] || (v8 = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v9))
    {
      a4(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return v8;
}

uint64_t sub_1000DEDB4@<X0>(uint64_t a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  return UnknownStorage.init()();
}

uint64_t sub_1000DEE0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28C8, type metadata accessor for ResourceStreamResponse, &protocol conformance descriptor for ResourceStreamResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DEEAC(uint64_t a1)
{
  sub_1000EB518(&qword_1002C0EF8, type metadata accessor for ResourceStreamResponse, &protocol conformance descriptor for ResourceStreamResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_1000DEF18(uint64_t a1, uint64_t a2)
{
  sub_1000EB518(&qword_1002C0EF8, type metadata accessor for ResourceStreamResponse, &protocol conformance descriptor for ResourceStreamResponse);

  return Message.hash(into:)();
}

uint64_t sub_1000DEFBC()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static VideoHEVCProfileTierLevelInformation._protobuf_nameMap);
  sub_1000BA040(v0, static VideoHEVCProfileTierLevelInformation._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "profile";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tier";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "level";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t VideoHEVCProfileTierLevelInformation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t VideoHEVCProfileTierLevelInformation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
    {
      if (!v3[2] || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
      {
        type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t sub_1000DF3B8@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  return UnknownStorage.init()();
}

uint64_t sub_1000DF434(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28C0, type metadata accessor for VideoHEVCProfileTierLevelInformation, &protocol conformance descriptor for VideoHEVCProfileTierLevelInformation);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DF4D4(uint64_t a1)
{
  sub_1000EB518(&qword_1002C0F10, type metadata accessor for VideoHEVCProfileTierLevelInformation, &protocol conformance descriptor for VideoHEVCProfileTierLevelInformation);

  return Message.debugDescription.getter();
}

uint64_t sub_1000DF540(uint64_t a1, uint64_t a2)
{
  sub_1000EB518(&qword_1002C0F10, type metadata accessor for VideoHEVCProfileTierLevelInformation, &protocol conformance descriptor for VideoHEVCProfileTierLevelInformation);

  return Message.hash(into:)();
}

uint64_t sub_1000DF5E8()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static RequestItem._protobuf_nameMap);
  sub_1000BA040(v0, static RequestItem._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_100246230;
  v4 = v51 + v3;
  v5 = v51 + v3 + v1[14];
  *(v51 + v3) = 1;
  *v5 = "operationId";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v51 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "recordId";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v51 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "srcFieldName";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v51 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "zoneName";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v51 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "ownerId";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v51 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "downloadType";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v51 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "resourceFingerprint";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v51 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "records";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v51 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 101;
  *v22 = "timeRange";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v51 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 102;
  *v24 = "mediaTypeHint";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v51 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 104;
  *v26 = "videoProfileTierLevelInformation";
  *(v26 + 1) = 32;
  v26[16] = 2;
  v8();
  v27 = (v51 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 105;
  *v28 = "apacAudioTrackChannelCount";
  *(v28 + 1) = 26;
  v28[16] = 2;
  v8();
  v29 = (v51 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 106;
  *v30 = "apacAudioTrackHOAChannelCount";
  *(v30 + 1) = 29;
  v30[16] = 2;
  v8();
  v31 = (v51 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 107;
  *v32 = "apacAudioTrackBEDChannelCount";
  *(v32 + 1) = 29;
  v32[16] = 2;
  v8();
  v33 = (v51 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 108;
  *v34 = "cameraMake";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v8();
  v35 = (v51 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 109;
  *v36 = "cameraModel";
  *(v36 + 1) = 11;
  v36[16] = 2;
  v8();
  v37 = v51 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 110;
  *v37 = "apacAudioTrackCodecProfileLevelDescription";
  *(v37 + 8) = 42;
  *(v37 + 16) = 2;
  v8();
  v38 = (v51 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 111;
  *v39 = "clientSupportsProMotionDisplay";
  *(v39 + 1) = 30;
  v39[16] = 2;
  v8();
  v40 = (v51 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 112;
  *v41 = "videoDuration";
  *(v41 + 1) = 13;
  v41[16] = 2;
  v8();
  v42 = (v51 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 113;
  *v43 = "videoNominalFrameRate";
  *(v43 + 1) = 21;
  v43[16] = 2;
  v8();
  v44 = (v51 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 114;
  *v45 = "videoOrientedWidth";
  *(v45 + 1) = 18;
  v45[16] = 2;
  v8();
  v46 = (v51 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 115;
  *v47 = "videoOrientedHeight";
  *(v47 + 1) = 19;
  v47[16] = 2;
  v8();
  v48 = (v51 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 116;
  *v49 = "videoCodec";
  *(v49 + 1) = 10;
  v49[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000DFD1C()
{
  type metadata accessor for RequestItem._StorageClass(0);
  swift_allocObject();
  result = sub_1000DFD5C();
  qword_1002C17A0 = result;
  return result;
}

uint64_t sub_1000DFD5C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  *(v0 + 128) = &_swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
  v2 = type metadata accessor for CMTimeRange(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint) = &_swiftEmptyArrayStorage;
  v3 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
  v4 = type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackChannelCount) = 0;
  *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackHoachannelCount) = 0;
  *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackBedchannelCount) = 0;
  v5 = (v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraMake);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraModel);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackCodecProfileLevelDescription);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay) = 0;
  v8 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
  v9 = type metadata accessor for CMTime(0);
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate) = 0;
  *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedWidth) = 0;
  *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedHeight) = 0;
  *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoCodec) = 0;
  return v0;
}

void *sub_1000DFF2C()
{

  sub_1000CCDBC(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange, &qword_1002C0E88, &qword_1002450B8);

  sub_1000CCDBC(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation, &qword_1002C0F00, &qword_100246410);

  sub_1000CCDBC(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration, &qword_1002C0E90, &qword_1002450C0);
  return v0;
}

uint64_t sub_1000E0028()
{
  v0 = sub_1000DFF2C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t RequestItem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for RequestItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for RequestItem._StorageClass(0);
    swift_allocObject();
    v12 = sub_1000EA6A0(v11);

    *(v4 + v8) = v12;
    v10 = v12;
  }

  return sub_1000E0130(v10, a1, a2, a3);
}

uint64_t sub_1000E0130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoCodec;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    v7 = v9;
    while ((v6 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          swift_endAccess();
          break;
        case 6:
          swift_beginAccess();
          sub_1000EB608();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_30;
        case 7:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_30;
        case 8:
          swift_beginAccess();
          type metadata accessor for Ckcode_RecordTransport();
          sub_1000EB518(&qword_1002C1880, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_26;
        case 101:
          swift_beginAccess();
          type metadata accessor for CMTimeRange(0);
          sub_1000EB518(&qword_1002C2948, type metadata accessor for CMTimeRange, &protocol conformance descriptor for CMTimeRange);
          goto LABEL_25;
        case 102:
          swift_beginAccess();
          sub_1000EDEA4();
          dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
          goto LABEL_30;
        case 104:
          swift_beginAccess();
          type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
          sub_1000EB518(&qword_1002C0F10, type metadata accessor for VideoHEVCProfileTierLevelInformation, &protocol conformance descriptor for VideoHEVCProfileTierLevelInformation);
          goto LABEL_25;
        case 105:
          v8 = v7;
          goto LABEL_32;
        case 106:
          v8 = v7;
          goto LABEL_32;
        case 107:
          v8 = v7;
          goto LABEL_32;
        case 108:
          v8 = v7;
          goto LABEL_22;
        case 109:
          v8 = v7;
LABEL_22:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_33;
        case 110:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_30;
        case 111:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_30;
        case 112:
          swift_beginAccess();
          type metadata accessor for CMTime(0);
          sub_1000EB518(&qword_1002C2940, type metadata accessor for CMTime, &protocol conformance descriptor for CMTime);
LABEL_25:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_26:
          swift_endAccess();
          v7 = v9;
          break;
        case 113:
          v8 = v7;
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_33;
        case 114:
          v8 = v7;
LABEL_32:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_33:
          swift_endAccess();
          v7 = v8;
          break;
        case 115:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_30;
        case 116:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFixed32Field(value:)();
LABEL_30:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t RequestItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for RequestItem(0);
  result = sub_1000E0814(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000E0814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
  __chkstk_darwin(v7 - 8);
  v75 = &v67 - v8;
  v9 = type metadata accessor for CMTime(0);
  v69 = *(v9 - 8);
  v70 = v9;
  __chkstk_darwin(v9);
  v68 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BB130(&qword_1002C0F00, &qword_100246410);
  __chkstk_darwin(v11 - 8);
  v79 = &v67 - v12;
  v13 = type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
  v72 = *(v13 - 8);
  v73 = v13;
  __chkstk_darwin(v13);
  v71 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BB130(&qword_1002C0E88, &qword_1002450B8);
  __chkstk_darwin(v15 - 8);
  v17 = &v67 - v16;
  v18 = type metadata accessor for CMTimeRange(0);
  v76 = *(v18 - 8);
  __chkstk_darwin(v18);
  v74 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v20 = *(a1 + 24);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 40);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v24 = *(a1 + 56);
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v26 = *(a1 + 72);
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v28 = *(a1 + 88);
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (!v4)
    {

      goto LABEL_26;
    }
  }

LABEL_26:
  swift_beginAccess();
  if (*(a1 + 96))
  {
    v30 = *(a1 + 104);
    v77 = *(a1 + 96);
    v78 = v30;
    sub_1000EB608();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v32 = *(a1 + 120);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v67 = *(a1 + 128);
  if (*(v67 + 16))
  {
    type metadata accessor for Ckcode_RecordTransport();
    sub_1000EB518(&qword_1002C1880, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  v34 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
  swift_beginAccess();
  sub_1000CC794(a1 + v34, v17, &qword_1002C0E88, &qword_1002450B8);
  if ((*(v76 + 48))(v17, 1, v18) == 1)
  {
    sub_1000CCDBC(v17, &qword_1002C0E88, &qword_1002450B8);
    v35 = v79;
  }

  else
  {
    v36 = v17;
    v37 = v74;
    sub_1000EB0BC(v36, v74, type metadata accessor for CMTimeRange);
    sub_1000EB518(&qword_1002C2948, type metadata accessor for CMTimeRange, &protocol conformance descriptor for CMTimeRange);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v35 = v79;
    if (v4)
    {
      v38 = type metadata accessor for CMTimeRange;
      v39 = v37;
      return sub_1000EB418(v39, v38);
    }

    sub_1000EB418(v37, type metadata accessor for CMTimeRange);
  }

  v40 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
  swift_beginAccess();
  v41 = v75;
  if (*(*(a1 + v40) + 16))
  {
    sub_1000EDEA4();

    dispatch thunk of Visitor.visitPackedEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  v42 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
  swift_beginAccess();
  sub_1000CC794(a1 + v42, v35, &qword_1002C0F00, &qword_100246410);
  if ((*(v72 + 48))(v35, 1, v73) != 1)
  {
    v43 = v71;
    sub_1000EB0BC(v35, v71, type metadata accessor for VideoHEVCProfileTierLevelInformation);
    sub_1000EB518(&qword_1002C0F10, type metadata accessor for VideoHEVCProfileTierLevelInformation, &protocol conformance descriptor for VideoHEVCProfileTierLevelInformation);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (!v4)
    {
      sub_1000EB418(v43, type metadata accessor for VideoHEVCProfileTierLevelInformation);
      goto LABEL_52;
    }

    v38 = type metadata accessor for VideoHEVCProfileTierLevelInformation;
    v39 = v43;
    return sub_1000EB418(v39, v38);
  }

  sub_1000CCDBC(v35, &qword_1002C0F00, &qword_100246410);
LABEL_52:
  v44 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackChannelCount;
  swift_beginAccess();
  if (!*(a1 + v44) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    v45 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackHoachannelCount;
    swift_beginAccess();
    if (!*(a1 + v45) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
    {
      v46 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackBedchannelCount;
      swift_beginAccess();
      if (!*(a1 + v46) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
      {
        v47 = (a1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraMake);
        swift_beginAccess();
        v48 = *v47;
        v49 = v47[1];
        v50 = HIBYTE(v49) & 0xF;
        if ((v49 & 0x2000000000000000) == 0)
        {
          v50 = v48 & 0xFFFFFFFFFFFFLL;
        }

        if (!v50 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v5))
        {
          v51 = (a1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraModel);
          swift_beginAccess();
          v52 = *v51;
          v53 = v51[1];
          v54 = HIBYTE(v53) & 0xF;
          if ((v53 & 0x2000000000000000) == 0)
          {
            v54 = v52 & 0xFFFFFFFFFFFFLL;
          }

          if (!v54 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v5))
          {
            v55 = (a1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackCodecProfileLevelDescription);
            swift_beginAccess();
            v56 = *v55;
            v57 = v55[1];
            v58 = HIBYTE(v57) & 0xF;
            if ((v57 & 0x2000000000000000) == 0)
            {
              v58 = v56 & 0xFFFFFFFFFFFFLL;
            }

            if (!v58 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v5))
            {
              v59 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay;
              swift_beginAccess();
              if (*(a1 + v59) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
              {
                v60 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
                swift_beginAccess();
                sub_1000CC794(a1 + v60, v41, &qword_1002C0E90, &qword_1002450C0);
                if ((*(v69 + 48))(v41, 1, v70) == 1)
                {
                  sub_1000CCDBC(v41, &qword_1002C0E90, &qword_1002450C0);
                }

                else
                {
                  v61 = v41;
                  v62 = v68;
                  sub_1000EB0BC(v61, v68, type metadata accessor for CMTime);
                  sub_1000EB518(&qword_1002C2940, type metadata accessor for CMTime, &protocol conformance descriptor for CMTime);
                  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
                  result = sub_1000EB418(v62, type metadata accessor for CMTime);
                  if (v5)
                  {
                    return result;
                  }
                }

                v63 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate;
                swift_beginAccess();
                if (*(a1 + v63) == 0.0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v5))
                {
                  v64 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedWidth;
                  swift_beginAccess();
                  if (!*(a1 + v64) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v5))
                  {
                    v65 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedHeight;
                    swift_beginAccess();
                    if (!*(a1 + v65) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v5))
                    {
                      v66 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoCodec;
                      swift_beginAccess();
                      result = *(a1 + v66);
                      if (result)
                      {
                        return dispatch thunk of Visitor.visitSingularFixed32Field(value:fieldNumber:)();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1000E157C(void *a1, uint64_t a2)
{
  v123 = type metadata accessor for CMTime(0);
  v120 = *(v123 - 8);
  __chkstk_darwin(v123);
  v118 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1000BB130(&qword_1002C2928, &unk_100248840);
  __chkstk_darwin(v119);
  v6 = &v115 - v5;
  v7 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
  v8 = __chkstk_darwin(v7 - 8);
  v121 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v122 = &v115 - v10;
  v11 = type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
  v127 = *(v11 - 8);
  v128 = v11;
  __chkstk_darwin(v11);
  v124 = (&v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = sub_1000BB130(&qword_1002C2930, &qword_1002483F0);
  __chkstk_darwin(v126);
  v129 = &v115 - v13;
  v14 = sub_1000BB130(&qword_1002C0F00, &qword_100246410);
  v15 = __chkstk_darwin(v14 - 8);
  v125 = (&v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v131 = &v115 - v17;
  v18 = type metadata accessor for CMTimeRange(0);
  v132 = *(v18 - 8);
  __chkstk_darwin(v18);
  v130 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BB130(&qword_1002C2938, &unk_1002483F8);
  __chkstk_darwin(v20);
  v133 = &v115 - v21;
  v22 = sub_1000BB130(&qword_1002C0E88, &qword_1002450B8);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v115 - v26;
  swift_beginAccess();
  v29 = a1[2];
  v28 = a1[3];
  swift_beginAccess();
  if (__PAIR128__(v28, v29) != *(a2 + 16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v30 = a1[4];
  v31 = a1[5];
  swift_beginAccess();
  if ((v30 != *(a2 + 32) || v31 != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v32 = a1[6];
  v33 = a1[7];
  swift_beginAccess();
  if ((v32 != *(a2 + 48) || v33 != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v34 = a1[8];
  v35 = a1[9];
  swift_beginAccess();
  if ((v34 != *(a2 + 64) || v35 != *(a2 + 72)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v36 = a1[10];
  v37 = a1[11];
  swift_beginAccess();
  if ((v36 != *(a2 + 80) || v37 != *(a2 + 88)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v38 = a1[12];
  swift_beginAccess();
  v39 = *(a2 + 96);
  if (*(a2 + 104) != 1)
  {
    if (v38 != v39)
    {
      return 0;
    }

    goto LABEL_25;
  }

  if (v39)
  {
    if (v39 == 1)
    {
      if (v38 != 1)
      {
        return 0;
      }

LABEL_25:
      swift_beginAccess();
      v40 = a1[14];
      v41 = a1[15];
      swift_beginAccess();
      if ((v40 != *(a2 + 112) || v41 != *(a2 + 120)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v117 = v6;
      swift_beginAccess();
      v42 = a1[16];
      swift_beginAccess();
      v43 = *(a2 + 128);

      v44 = sub_1000E94E8(v42, v43);

      if ((v44 & 1) == 0)
      {
        goto LABEL_68;
      }

      v45 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
      swift_beginAccess();
      sub_1000CC794(a1 + v45, v27, &qword_1002C0E88, &qword_1002450B8);
      v46 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
      swift_beginAccess();
      v47 = *(v20 + 48);
      v48 = v133;
      sub_1000CC794(v27, v133, &qword_1002C0E88, &qword_1002450B8);
      v116 = v47;
      sub_1000CC794(a2 + v46, v48 + v47, &qword_1002C0E88, &qword_1002450B8);
      v49 = *(v132 + 48);
      if (v49(v48, 1, v18) == 1)
      {
        sub_1000CCDBC(v27, &qword_1002C0E88, &qword_1002450B8);
        if (v49(v48 + v116, 1, v18) == 1)
        {
          sub_1000CCDBC(v48, &qword_1002C0E88, &qword_1002450B8);
LABEL_37:
          v57 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
          swift_beginAccess();
          v58 = *(a1 + v57);
          v59 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
          swift_beginAccess();
          if ((sub_1000E96FC(v58, *(a2 + v59)) & 1) == 0)
          {
            goto LABEL_68;
          }

          v60 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
          swift_beginAccess();
          v61 = v131;
          sub_1000CC794(a1 + v60, v131, &qword_1002C0F00, &qword_100246410);
          v62 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
          swift_beginAccess();
          v63 = *(v126 + 48);
          v64 = v129;
          sub_1000CC794(v61, v129, &qword_1002C0F00, &qword_100246410);
          sub_1000CC794(a2 + v62, v64 + v63, &qword_1002C0F00, &qword_100246410);
          v65 = v128;
          v66 = *(v127 + 48);
          if (v66(v64, 1, v128) == 1)
          {
            sub_1000CCDBC(v61, &qword_1002C0F00, &qword_100246410);
            if (v66(v64 + v63, 1, v65) == 1)
            {
              sub_1000CCDBC(v64, &qword_1002C0F00, &qword_100246410);
              goto LABEL_41;
            }
          }

          else
          {
            v104 = v125;
            sub_1000CC794(v64, v125, &qword_1002C0F00, &qword_100246410);
            if (v66(v64 + v63, 1, v65) != 1)
            {
              v105 = v64 + v63;
              v106 = v124;
              sub_1000EB0BC(v105, v124, type metadata accessor for VideoHEVCProfileTierLevelInformation);
              if (*v104 != *v106 || v104[1] != v106[1] || v104[2] != v106[2])
              {
                sub_1000EB418(v106, type metadata accessor for VideoHEVCProfileTierLevelInformation);
                v108 = &qword_1002C0F00;
                v109 = &qword_100246410;
                sub_1000CCDBC(v131, &qword_1002C0F00, &qword_100246410);
                sub_1000EB418(v104, type metadata accessor for VideoHEVCProfileTierLevelInformation);
                v53 = v64;
LABEL_71:
                v51 = v108;
                v52 = v109;
                goto LABEL_35;
              }

              type metadata accessor for UnknownStorage();
              sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
              v107 = dispatch thunk of static Equatable.== infix(_:_:)();
              sub_1000EB418(v106, type metadata accessor for VideoHEVCProfileTierLevelInformation);
              sub_1000CCDBC(v131, &qword_1002C0F00, &qword_100246410);
              sub_1000EB418(v104, type metadata accessor for VideoHEVCProfileTierLevelInformation);
              sub_1000CCDBC(v64, &qword_1002C0F00, &qword_100246410);
              if ((v107 & 1) == 0)
              {
                goto LABEL_68;
              }

LABEL_41:
              v67 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackChannelCount;
              swift_beginAccess();
              LODWORD(v67) = *(a1 + v67);
              v68 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackChannelCount;
              swift_beginAccess();
              if (v67 != *(a2 + v68))
              {
                goto LABEL_68;
              }

              v69 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackHoachannelCount;
              swift_beginAccess();
              LODWORD(v69) = *(a1 + v69);
              v70 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackHoachannelCount;
              swift_beginAccess();
              if (v69 != *(a2 + v70))
              {
                goto LABEL_68;
              }

              v71 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackBedchannelCount;
              swift_beginAccess();
              LODWORD(v71) = *(a1 + v71);
              v72 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackBedchannelCount;
              swift_beginAccess();
              if (v71 != *(a2 + v72))
              {
                goto LABEL_68;
              }

              v73 = (a1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraMake);
              swift_beginAccess();
              v74 = *v73;
              v75 = v73[1];
              v76 = (a2 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraMake);
              swift_beginAccess();
              if ((v74 != *v76 || v75 != v76[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_68;
              }

              v77 = (a1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraModel);
              swift_beginAccess();
              v78 = *v77;
              v79 = v77[1];
              v80 = (a2 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraModel);
              swift_beginAccess();
              if ((v78 != *v80 || v79 != v80[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_68;
              }

              v81 = (a1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackCodecProfileLevelDescription);
              swift_beginAccess();
              v82 = *v81;
              v83 = v81[1];
              v84 = (a2 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackCodecProfileLevelDescription);
              swift_beginAccess();
              if ((v82 != *v84 || v83 != v84[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_68;
              }

              v85 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay;
              swift_beginAccess();
              LODWORD(v85) = *(a1 + v85);
              v86 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay;
              swift_beginAccess();
              if (v85 != *(a2 + v86))
              {
                goto LABEL_68;
              }

              v87 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
              swift_beginAccess();
              v88 = v122;
              sub_1000CC794(a1 + v87, v122, &qword_1002C0E90, &qword_1002450C0);
              v89 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
              swift_beginAccess();
              v90 = *(v119 + 48);
              v91 = v88;
              v92 = v117;
              sub_1000CC794(v91, v117, &qword_1002C0E90, &qword_1002450C0);
              sub_1000CC794(a2 + v89, v92 + v90, &qword_1002C0E90, &qword_1002450C0);
              v93 = *(v120 + 48);
              if (v93(v92, 1, v123) == 1)
              {
                sub_1000CCDBC(v122, &qword_1002C0E90, &qword_1002450C0);
                if (v93(&v117[v90], 1, v123) == 1)
                {
                  sub_1000CCDBC(v117, &qword_1002C0E90, &qword_1002450C0);
LABEL_57:
                  v94 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate;
                  swift_beginAccess();
                  v95 = *(a1 + v94);
                  v96 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate;
                  swift_beginAccess();
                  if (v95 == *(a2 + v96))
                  {
                    v97 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedWidth;
                    swift_beginAccess();
                    LODWORD(v97) = *(a1 + v97);
                    v98 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedWidth;
                    swift_beginAccess();
                    if (v97 == *(a2 + v98))
                    {
                      v99 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedHeight;
                      swift_beginAccess();
                      LODWORD(v99) = *(a1 + v99);
                      v100 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedHeight;
                      swift_beginAccess();
                      if (v99 == *(a2 + v100))
                      {
                        v101 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoCodec;
                        swift_beginAccess();
                        LODWORD(v101) = *(a1 + v101);

                        v102 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoCodec;
                        swift_beginAccess();
                        LODWORD(v102) = *(a2 + v102);

                        return v101 == v102;
                      }
                    }
                  }

                  goto LABEL_68;
                }

                goto LABEL_74;
              }

              v110 = v117;
              sub_1000CC794(v117, v121, &qword_1002C0E90, &qword_1002450C0);
              if (v93((v110 + v90), 1, v123) == 1)
              {
                sub_1000CCDBC(v122, &qword_1002C0E90, &qword_1002450C0);
                sub_1000EB418(v121, type metadata accessor for CMTime);
LABEL_74:
                v51 = &qword_1002C2928;
                v52 = &unk_100248840;
                v53 = v117;
                goto LABEL_35;
              }

              v111 = v118;
              sub_1000EB0BC(&v117[v90], v118, type metadata accessor for CMTime);
              if (*v121 == *v111 && *(v121 + 8) == *(v118 + 8))
              {
                type metadata accessor for UnknownStorage();
                sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
                v112 = v121;
                v113 = v118;
                v114 = dispatch thunk of static Equatable.== infix(_:_:)();
                sub_1000EB418(v113, type metadata accessor for CMTime);
                sub_1000CCDBC(v122, &qword_1002C0E90, &qword_1002450C0);
                sub_1000EB418(v112, type metadata accessor for CMTime);
                sub_1000CCDBC(v117, &qword_1002C0E90, &qword_1002450C0);
                if (v114)
                {
                  goto LABEL_57;
                }

LABEL_68:

                return 0;
              }

              sub_1000EB418(v118, type metadata accessor for CMTime);
              v108 = &qword_1002C0E90;
              v109 = &qword_1002450C0;
              sub_1000CCDBC(v122, &qword_1002C0E90, &qword_1002450C0);
              sub_1000EB418(v121, type metadata accessor for CMTime);
              v53 = v117;
              goto LABEL_71;
            }

            sub_1000CCDBC(v131, &qword_1002C0F00, &qword_100246410);
            sub_1000EB418(v104, type metadata accessor for VideoHEVCProfileTierLevelInformation);
          }

          v51 = &qword_1002C2930;
          v52 = &qword_1002483F0;
          v53 = v64;
LABEL_35:
          sub_1000CCDBC(v53, v51, v52);
          goto LABEL_68;
        }
      }

      else
      {
        sub_1000CC794(v48, v25, &qword_1002C0E88, &qword_1002450B8);
        v50 = v116;
        if (v49(v48 + v116, 1, v18) != 1)
        {
          v54 = v48 + v50;
          v55 = v130;
          sub_1000EB0BC(v54, v130, type metadata accessor for CMTimeRange);
          v56 = static CMTimeRange.== infix(_:_:)(v25, v55);
          sub_1000EB418(v55, type metadata accessor for CMTimeRange);
          sub_1000CCDBC(v27, &qword_1002C0E88, &qword_1002450B8);
          sub_1000EB418(v25, type metadata accessor for CMTimeRange);
          sub_1000CCDBC(v48, &qword_1002C0E88, &qword_1002450B8);
          if ((v56 & 1) == 0)
          {
            goto LABEL_68;
          }

          goto LABEL_37;
        }

        sub_1000CCDBC(v27, &qword_1002C0E88, &qword_1002450B8);
        sub_1000EB418(v25, type metadata accessor for CMTimeRange);
      }

      v51 = &qword_1002C2938;
      v52 = &unk_1002483F8;
      v53 = v48;
      goto LABEL_35;
    }

    if (v38 == 2)
    {
      goto LABEL_25;
    }
  }

  else if (!v38)
  {
    goto LABEL_25;
  }

  return 0;
}

uint64_t sub_1000E28DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (qword_1002C06D0 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1002C17A0;
}

uint64_t sub_1000E2984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28B8, type metadata accessor for RequestItem, &protocol conformance descriptor for RequestItem);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E2A24(uint64_t a1)
{
  sub_1000EB518(&qword_1002C0E80, type metadata accessor for RequestItem, &protocol conformance descriptor for RequestItem);

  return Message.debugDescription.getter();
}

uint64_t sub_1000E2A90(uint64_t a1, uint64_t a2)
{
  sub_1000EB518(&qword_1002C0E80, type metadata accessor for RequestItem, &protocol conformance descriptor for RequestItem);

  return Message.hash(into:)();
}

uint64_t sub_1000E2B0C()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static RequestItem.MediaTypeHint._protobuf_nameMap);
  sub_1000BA040(v0, static RequestItem.MediaTypeHint._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HDR";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Spatial";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000E2DB4()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static ResponseItem._protobuf_nameMap);
  sub_1000BA040(v0, static ResponseItem._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100245150;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "operationId";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "recordId";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "srcFieldName";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "assetRecord";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "errorMessage";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "transcoderVersion";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "downloadType";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "downloadEstimatedSize";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "errorCode";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t ResponseItem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            goto LABEL_4;
          }

          type metadata accessor for ResponseItem(0);
          type metadata accessor for Ckcode_RecordTransport();
          sub_1000EB518(&qword_1002C1880, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 1 || result == 2)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else
      {
        if (result <= 6)
        {
          if (result == 5)
          {
            goto LABEL_4;
          }

LABEL_25:
          dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
          goto LABEL_5;
        }

        switch(result)
        {
          case 7:
            sub_1000EB608();
            goto LABEL_23;
          case 8:
            goto LABEL_25;
          case 9:
            sub_1000EB5B4();
LABEL_23:
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t ResponseItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BB130(&qword_1002C0E30, &qword_100245080);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Ckcode_RecordTransport();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 8);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v15 = *(v3 + 24);
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      v17 = *(v3 + 40);
      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v18 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
      {
        v25 = type metadata accessor for ResponseItem(0);
        sub_1000CC794(v3 + *(v25 + 52), v7, &qword_1002C0E30, &qword_100245080);
        if ((*(v9 + 48))(v7, 1, v8) == 1)
        {
          sub_1000CCDBC(v7, &qword_1002C0E30, &qword_100245080);
        }

        else
        {
          (*(v9 + 32))(v11, v7, v8);
          sub_1000EB518(&qword_1002C1880, &type metadata accessor for Ckcode_RecordTransport, &protocol conformance descriptor for Ckcode_RecordTransport);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          if (v4)
          {
            return (*(v9 + 8))(v11, v8);
          }

          (*(v9 + 8))(v11, v8);
        }

        v19 = *(v3 + 56);
        v20 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) == 0)
        {
          v20 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
        }

        if (!v20 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
        {
          if (!*(v3 + 64) || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
          {
            if (!*(v3 + 72) || (v21 = *(v3 + 80), v23 = *(v3 + 72), v24 = v21, sub_1000EB608(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
            {
              if (!*(v3 + 88) || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
              {
                if (!*(v3 + 96))
                {
                  return UnknownStorage.traverse<A>(visitor:)();
                }

                v22 = *(v3 + 104);
                v23 = *(v3 + 96);
                v24 = v22;
                sub_1000EB5B4();
                result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
                if (!v4)
                {
                  return UnknownStorage.traverse<A>(visitor:)();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000E37A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  UnknownStorage.init()();
  v4 = *(a1 + 52);
  v5 = type metadata accessor for Ckcode_RecordTransport();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1000E384C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000E38C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000E3988(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28B0, type metadata accessor for ResponseItem, &protocol conformance descriptor for ResponseItem);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E3A28(uint64_t a1)
{
  sub_1000EB518(&qword_1002C1830, type metadata accessor for ResponseItem, &protocol conformance descriptor for ResponseItem);

  return Message.debugDescription.getter();
}

uint64_t sub_1000E3A94(uint64_t a1, uint64_t a2)
{
  sub_1000EB518(&qword_1002C1830, type metadata accessor for ResponseItem, &protocol conformance descriptor for ResponseItem);

  return Message.hash(into:)();
}

uint64_t sub_1000E3B40()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static ResetInterval._protobuf_nameMap);
  sub_1000BA040(v0, static ResetInterval._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "startTimestamp";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endTimestamp";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "resources";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t ResetInterval.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        sub_1000EB65C();
        dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
      }

      else if (result == 2 || result == 1)
      {
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t ResetInterval.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
    {
      if (!*(v3[2] + 16) || (sub_1000EB65C(), result = dispatch thunk of Visitor.visitPackedEnumField<A>(value:fieldNumber:)(), !v4))
      {
        type metadata accessor for ResetInterval(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t sub_1000E3F98@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = &_swiftEmptyArrayStorage;
  return UnknownStorage.init()();
}

uint64_t sub_1000E3FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28A8, type metadata accessor for ResetInterval, &protocol conformance descriptor for ResetInterval);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E4098(uint64_t a1)
{
  sub_1000EB518(&qword_1002C1A80, type metadata accessor for ResetInterval, &protocol conformance descriptor for ResetInterval);

  return Message.debugDescription.getter();
}

uint64_t sub_1000E4104(uint64_t a1, uint64_t a2)
{
  sub_1000EB518(&qword_1002C1A80, type metadata accessor for ResetInterval, &protocol conformance descriptor for ResetInterval);

  return Message.hash(into:)();
}

uint64_t sub_1000E41B0()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static UploadResource._protobuf_nameMap);
  sub_1000BA040(v0, static UploadResource._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "itemType";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sourceResourceType";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "uploadResourceTypes";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t UploadResource.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v6 = v3;
          sub_1000EB65C();
LABEL_5:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          sub_1000EB65C();
          dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v6 = v3;
          sub_1000EB6B0();
          goto LABEL_5;
        }

        if (result == 2)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t UploadResource.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1000EB6B0(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v6 = v3[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      Goldilocks_RecordRetentionPolicy.rawValue.getter();
      if (!v8 || (sub_1000EB65C(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
      {
        if (!*(v3[6] + 16) || (sub_1000EB65C(), result = dispatch thunk of Visitor.visitPackedEnumField<A>(value:fieldNumber:)(), !v4))
        {
          type metadata accessor for UploadResource(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000E473C@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = &_swiftEmptyArrayStorage;
  return UnknownStorage.init()();
}

uint64_t sub_1000E47B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28A0, type metadata accessor for UploadResource, &protocol conformance descriptor for UploadResource);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E4854(uint64_t a1)
{
  sub_1000EB518(&qword_1002C18B0, type metadata accessor for UploadResource, &protocol conformance descriptor for UploadResource);

  return Message.debugDescription.getter();
}

uint64_t sub_1000E48C0(uint64_t a1, uint64_t a2)
{
  sub_1000EB518(&qword_1002C18B0, type metadata accessor for UploadResource, &protocol conformance descriptor for UploadResource);

  return Message.hash(into:)();
}

uint64_t UploadResourcesRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for UploadResource(0), sub_1000EB518(&qword_1002C18B0, type metadata accessor for UploadResource, &protocol conformance descriptor for UploadResource), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for UploadResourcesRequest(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000E4BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C2898, type metadata accessor for UploadResourcesRequest, &protocol conformance descriptor for UploadResourcesRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E4C48(uint64_t a1)
{
  sub_1000EB518(&qword_1002C1AA8, type metadata accessor for UploadResourcesRequest, &protocol conformance descriptor for UploadResourcesRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_1000E4CB4(uint64_t a1, uint64_t a2)
{
  sub_1000EB518(&qword_1002C1AA8, type metadata accessor for UploadResourcesRequest, &protocol conformance descriptor for UploadResourcesRequest);

  return Message.hash(into:)();
}

uint64_t sub_1000E4D70()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static UploadResourcesResponse._protobuf_nameMap);
  sub_1000BA040(v0, static UploadResourcesResponse._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shouldUploadJPEGMediumForOriginalImages";
  *(v6 + 8) = 39;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shouldUploadJPEGMediumForOriginalVideos";
  *(v10 + 1) = 39;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "skipUploadResources";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t UploadResourcesResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for UploadResource(0);
        sub_1000EB518(&qword_1002C18B0, type metadata accessor for UploadResource, &protocol conformance descriptor for UploadResource);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2 || result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t UploadResourcesResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    if (*(v3 + 1) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      if (!*(*(v3 + 8) + 16) || (type metadata accessor for UploadResource(0), sub_1000EB518(&qword_1002C18B0, type metadata accessor for UploadResource, &protocol conformance descriptor for UploadResource), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
      {
        type metadata accessor for UploadResourcesResponse(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t sub_1000E5258@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = &_swiftEmptyArrayStorage;
  return UnknownStorage.init()();
}

uint64_t sub_1000E5288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000E52FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000E53A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C2890, type metadata accessor for UploadResourcesResponse, &protocol conformance descriptor for UploadResourcesResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E5440(uint64_t a1)
{
  sub_1000EB518(&qword_1002C1AC0, type metadata accessor for UploadResourcesResponse, &protocol conformance descriptor for UploadResourcesResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_1000E54AC(uint64_t a1, uint64_t a2)
{
  sub_1000EB518(&qword_1002C1AC0, type metadata accessor for UploadResourcesResponse, &protocol conformance descriptor for UploadResourcesResponse);

  return Message.hash(into:)();
}

uint64_t sub_1000E5550()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static UntranscodableItem._protobuf_nameMap);
  sub_1000BA040(v0, static UntranscodableItem._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "requestorDsid";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "fileChecksumHex";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "errorMessage";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "isTranscodable";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "ownerDsid";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "referenceChecksumHex";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t UntranscodableItem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result == 5)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 6 || result == 7)
      {
LABEL_2:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }
    }

    else if (result == 1 || result == 2 || result == 4)
    {
      goto LABEL_2;
    }
  }
}

uint64_t UntranscodableItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v8 = *(v3 + 24);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      v10 = *(v3 + 40);
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
      {
        if (*(v3 + 48) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
        {
          v12 = *(v3 + 64);
          v13 = HIBYTE(v12) & 0xF;
          if ((v12 & 0x2000000000000000) == 0)
          {
            v13 = *(v3 + 56) & 0xFFFFFFFFFFFFLL;
          }

          if (!v13 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
          {
            v14 = *(v3 + 80);
            v15 = HIBYTE(v14) & 0xF;
            if ((v14 & 0x2000000000000000) == 0)
            {
              v15 = *(v3 + 72) & 0xFFFFFFFFFFFFLL;
            }

            if (!v15 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
            {
              type metadata accessor for UntranscodableItem(0);
              return UnknownStorage.traverse<A>(visitor:)();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000E5B04@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0xE000000000000000;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t sub_1000E5B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000E5BB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000E5C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C2888, type metadata accessor for UntranscodableItem, &protocol conformance descriptor for UntranscodableItem);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E5D1C(uint64_t a1)
{
  sub_1000EB518(&qword_1002C18D0, type metadata accessor for UntranscodableItem, &protocol conformance descriptor for UntranscodableItem);

  return Message.debugDescription.getter();
}

uint64_t sub_1000E5D88(uint64_t a1, uint64_t a2)
{
  sub_1000EB518(&qword_1002C18D0, type metadata accessor for UntranscodableItem, &protocol conformance descriptor for UntranscodableItem);

  return Message.hash(into:)();
}

uint64_t UntranscodableRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for UntranscodableItem(0), sub_1000EB518(&qword_1002C18D0, type metadata accessor for UntranscodableItem, &protocol conformance descriptor for UntranscodableItem), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for UntranscodableRequest(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000E6058(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C2880, type metadata accessor for UntranscodableRequest, &protocol conformance descriptor for UntranscodableRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E60F8(uint64_t a1)
{
  sub_1000EB518(&qword_1002C1AE8, type metadata accessor for UntranscodableRequest, &protocol conformance descriptor for UntranscodableRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_1000E6164(uint64_t a1, uint64_t a2)
{
  sub_1000EB518(&qword_1002C1AE8, type metadata accessor for UntranscodableRequest, &protocol conformance descriptor for UntranscodableRequest);

  return Message.hash(into:)();
}

uint64_t sub_1000E6220(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v7, a2);
  sub_1000BA040(v7, a2);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v8 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100244100;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = enum case for _NameMap.NameDescription.same(_:);
  v13 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000E63D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1000EB518(a5, a6, a7);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    }
  }

  return result;
}

uint64_t UntranscodableResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for UntranscodableItem(0), sub_1000EB518(&qword_1002C18D0, type metadata accessor for UntranscodableItem, &protocol conformance descriptor for UntranscodableItem), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for UntranscodableResponse(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000E65C0(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  type metadata accessor for UnknownStorage();
  sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int sub_1000E66C0(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  sub_1000EB518(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000E6760(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C2878, type metadata accessor for UntranscodableResponse, &protocol conformance descriptor for UntranscodableResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E6800(uint64_t a1)
{
  sub_1000EB518(&qword_1002C1B00, type metadata accessor for UntranscodableResponse, &protocol conformance descriptor for UntranscodableResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_1000E686C(uint64_t a1, uint64_t a2)
{
  sub_1000EB518(&qword_1002C1B00, type metadata accessor for UntranscodableResponse, &protocol conformance descriptor for UntranscodableResponse);

  return Message.hash(into:)();
}

uint64_t sub_1000E68E8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000E6994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  v45 = sub_1000BB130(&qword_1002C2908, &qword_1002483B8);
  __chkstk_darwin(v45);
  v11 = &v40 - v10;
  v44 = type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem(0);
  v12 = __chkstk_darwin(v44);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v17 = (&v40 - v16);
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_27:
    v38 = 0;
    return v38 & 1;
  }

  if (v18 && a1 != a2)
  {
    v40 = v9;
    v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v22 = (v5 + 48);
    v42 = *(v15 + 72);
    v43 = v4;
    v23 = v44;
    while (1)
    {
      sub_1000EB3B0(v20, v17, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
      v47 = v20;
      sub_1000EB3B0(v21, v14, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
      v24 = *v17 == *v14 && v17[1] == v14[1];
      if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v25 = v17[2] == v14[2] && v17[3] == v14[3];
      if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v46 = v18;
      v26 = *(v23 + 28);
      v27 = *(v45 + 48);
      sub_1000CC794(v17 + v26, v11, &qword_1002C2900, &qword_1002483B0);
      sub_1000CC794(v14 + v26, &v11[v27], &qword_1002C2900, &qword_1002483B0);
      v28 = *v22;
      v29 = v11;
      v30 = v11;
      v31 = v43;
      if ((*v22)(v29, 1, v43) == 1)
      {
        if (v28((v30 + v27), 1, v31) != 1)
        {
          goto LABEL_25;
        }

        sub_1000CCDBC(v30, &qword_1002C2900, &qword_1002483B0);
        v11 = v30;
        v32 = v46;
      }

      else
      {
        v33 = v40;
        sub_1000CC794(v30, v40, &qword_1002C2900, &qword_1002483B0);
        if (v28((v30 + v27), 1, v31) == 1)
        {
          sub_1000EB418(v33, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
LABEL_25:
          sub_1000CCDBC(v30, &qword_1002C2908, &qword_1002483B8);
          break;
        }

        v34 = v22;
        v35 = v41;
        sub_1000EB0BC(v30 + v27, v41, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
        v36 = static Goldilocks_ErrorInfo.ResultError.== infix(_:_:)(v33, v35);
        v37 = v35;
        v22 = v34;
        sub_1000EB418(v37, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
        sub_1000EB418(v33, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
        sub_1000CCDBC(v30, &qword_1002C2900, &qword_1002483B0);
        v23 = v44;
        v11 = v30;
        v32 = v46;
        if ((v36 & 1) == 0)
        {
          break;
        }
      }

      type metadata accessor for UnknownStorage();
      sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1000EB418(v14, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
      sub_1000EB418(v17, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
      if (v38)
      {
        v21 += v42;
        v20 = v47 + v42;
        v18 = v32 - 1;
        if (v18)
        {
          continue;
        }
      }

      return v38 & 1;
    }

    sub_1000EB418(v14, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
    sub_1000EB418(v17, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
    goto LABEL_27;
  }

  v38 = 1;
  return v38 & 1;
}

uint64_t sub_1000E6F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v46 = sub_1000BB130(&qword_1002C2908, &qword_1002483B8);
  __chkstk_darwin(v46);
  v12 = &v41 - v11;
  v45 = type metadata accessor for Goldilocks_DuplicateState(0);
  v13 = __chkstk_darwin(v45);
  v15 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v18 = (&v41 - v17);
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
LABEL_24:
    v40 = 0;
    return v40 & 1;
  }

  if (!v19 || a1 == a2)
  {
    v40 = 1;
    return v40 & 1;
  }

  v41 = v7;
  v42 = v10;
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = a1 + v20;
  v22 = a2 + v20;
  v23 = (v5 + 48);
  v43 = *(v16 + 72);
  v44 = v4;
  v24 = &qword_1002C2900;
  v25 = v45;
  while (1)
  {
    result = sub_1000EB3B0(v21, v18, type metadata accessor for Goldilocks_DuplicateState);
    if (!v19)
    {
      break;
    }

    v47 = v19;
    v48 = v21;
    sub_1000EB3B0(v22, v15, type metadata accessor for Goldilocks_DuplicateState);
    v27 = *v18 == *v15 && v18[1] == v15[1];
    if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_23;
    }

    v28 = *(v25 + 28);
    v29 = *(v46 + 48);
    sub_1000CC794(v18 + v28, v12, v24, &qword_1002483B0);
    sub_1000CC794(v15 + v28, &v12[v29], v24, &qword_1002483B0);
    v30 = *v23;
    v31 = v12;
    v32 = v24;
    v33 = v12;
    v34 = v44;
    if ((*v23)(v31, 1, v44) == 1)
    {
      if (v30((v33 + v29), 1, v34) != 1)
      {
        goto LABEL_22;
      }

      sub_1000CCDBC(v33, v32, &qword_1002483B0);
      v12 = v33;
      v24 = v32;
    }

    else
    {
      v35 = v42;
      sub_1000CC794(v33, v42, v32, &qword_1002483B0);
      if (v30((v33 + v29), 1, v34) == 1)
      {
        sub_1000EB418(v35, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
LABEL_22:
        sub_1000CCDBC(v33, &qword_1002C2908, &qword_1002483B8);
LABEL_23:
        sub_1000EB418(v15, type metadata accessor for Goldilocks_DuplicateState);
        sub_1000EB418(v18, type metadata accessor for Goldilocks_DuplicateState);
        goto LABEL_24;
      }

      v36 = v23;
      v37 = v41;
      sub_1000EB0BC(v33 + v29, v41, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
      v38 = static Goldilocks_ErrorInfo.ResultError.== infix(_:_:)(v35, v37);
      v39 = v37;
      v23 = v36;
      sub_1000EB418(v39, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
      sub_1000EB418(v35, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
      sub_1000CCDBC(v33, v32, &qword_1002483B0);
      v25 = v45;
      v12 = v33;
      v24 = v32;
      if ((v38 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if ((sub_1000E7C10(v18[2], v15[2]) & 1) == 0)
    {
      goto LABEL_23;
    }

    type metadata accessor for UnknownStorage();
    sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_1000EB418(v15, type metadata accessor for Goldilocks_DuplicateState);
    sub_1000EB418(v18, type metadata accessor for Goldilocks_DuplicateState);
    if (v40)
    {
      v19 = v47 - 1;
      v22 += v43;
      v21 = v48 + v43;
      if (v47 != 1)
      {
        continue;
      }
    }

    return v40 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E7460(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000E74F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Goldilocks_ParticipantExitResult(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1000EB3B0(v13, v10, type metadata accessor for Goldilocks_ParticipantExitResult);
        sub_1000EB3B0(v14, v7, type metadata accessor for Goldilocks_ParticipantExitResult);
        v16 = _s22CloudKitImplementation32Goldilocks_ParticipantExitResultV2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_1000EB418(v7, type metadata accessor for Goldilocks_ParticipantExitResult);
        sub_1000EB418(v10, type metadata accessor for Goldilocks_ParticipantExitResult);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1000E76A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BB130(&qword_1002C0F70, &qword_100245190);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v44 = sub_1000BB130(&qword_1002C15F0, &unk_100246070);
  __chkstk_darwin(v44);
  v11 = &v38 - v10;
  v47 = type metadata accessor for Utility_DeleteZoneResponse(0);
  v12 = __chkstk_darwin(v47);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
LABEL_21:
    v37 = 0;
    return v37 & 1;
  }

  if (!v17 || a1 == a2)
  {
    v37 = 1;
    return v37 & 1;
  }

  v46 = (&v38 - v16);
  v39 = v9;
  v42 = v14;
  v43 = v4;
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = (v5 + 48);
  v41 = *(v15 + 72);
  v22 = v17;
  while (1)
  {
    v23 = v46;
    result = sub_1000EB3B0(v19, v46, type metadata accessor for Utility_DeleteZoneResponse);
    if (!v22)
    {
      break;
    }

    v45 = v22;
    sub_1000EB3B0(v20, v14, type metadata accessor for Utility_DeleteZoneResponse);
    v25 = *(v47 + 24);
    v26 = *(v44 + 48);
    sub_1000CC794(v23 + v25, v11, &qword_1002C0F70, &qword_100245190);
    sub_1000CC794(v14 + v25, &v11[v26], &qword_1002C0F70, &qword_100245190);
    v27 = *v21;
    v28 = v11;
    v29 = v11;
    v30 = v43;
    if ((*v21)(v28, 1, v43) == 1)
    {
      if (v27((v29 + v26), 1, v30) != 1)
      {
        goto LABEL_19;
      }

      sub_1000CCDBC(v29, &qword_1002C0F70, &qword_100245190);
      v11 = v29;
      v14 = v42;
      v31 = v46;
    }

    else
    {
      v32 = v39;
      sub_1000CC794(v29, v39, &qword_1002C0F70, &qword_100245190);
      if (v27((v29 + v26), 1, v30) == 1)
      {
        sub_1000EB418(v32, type metadata accessor for Utility_ErrorInfo.ResultError);
LABEL_19:
        sub_1000CCDBC(v29, &qword_1002C15F0, &unk_100246070);
        v14 = v42;
        v31 = v46;
LABEL_20:
        sub_1000EB418(v14, type metadata accessor for Utility_DeleteZoneResponse);
        sub_1000EB418(v31, type metadata accessor for Utility_DeleteZoneResponse);
        goto LABEL_21;
      }

      v33 = v21;
      v34 = v40;
      sub_1000EB0BC(v29 + v26, v40, type metadata accessor for Utility_ErrorInfo.ResultError);
      v35 = static Utility_ErrorInfo.ResultError.== infix(_:_:)();
      v36 = v34;
      v21 = v33;
      sub_1000EB418(v36, type metadata accessor for Utility_ErrorInfo.ResultError);
      sub_1000EB418(v32, type metadata accessor for Utility_ErrorInfo.ResultError);
      sub_1000CCDBC(v29, &qword_1002C0F70, &qword_100245190);
      v11 = v29;
      v14 = v42;
      v31 = v46;
      if ((v35 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if ((*v31 != *v14 || v31[1] != v14[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_20;
    }

    type metadata accessor for UnknownStorage();
    sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_1000EB418(v14, type metadata accessor for Utility_DeleteZoneResponse);
    sub_1000EB418(v31, type metadata accessor for Utility_DeleteZoneResponse);
    if (v37)
    {
      v22 = v45 - 1;
      v20 += v41;
      v19 += v41;
      if (v45 != 1)
      {
        continue;
      }
    }

    return v37 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E7C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Goldilocks_ZoneID(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v40 - v9);
  v45 = sub_1000BB130(&qword_1002C2910, &qword_1002483C8);
  __chkstk_darwin(v45);
  v49 = &v40 - v11;
  found = type metadata accessor for Goldilocks_FoundDuplicate(0);
  v13 = __chkstk_darwin(found);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v18 = &v40 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
LABEL_41:
    v36 = 0;
    return v36 & 1;
  }

  if (v19 && a1 != a2)
  {
    v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v21 = v5;
    v22 = a1 + v20;
    v23 = a2 + v20;
    v43 = (v21 + 48);
    v44 = v4;
    v41 = *(v16 + 72);
    v42 = found;
    while (1)
    {
      sub_1000EB3B0(v22, v18, type metadata accessor for Goldilocks_FoundDuplicate);
      v46 = v23;
      v47 = v22;
      sub_1000EB3B0(v23, v15, type metadata accessor for Goldilocks_FoundDuplicate);
      v24 = *v18 == *v15 && *(v18 + 1) == *(v15 + 1);
      if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v48 = v19;
      v25 = v7;
      v26 = *(found + 28);
      v27 = *(v45 + 48);
      v28 = v49;
      sub_1000CC794(&v18[v26], v49, &qword_1002C4050, &qword_1002483C0);
      sub_1000CC794(&v15[v26], v28 + v27, &qword_1002C4050, &qword_1002483C0);
      v29 = v44;
      v30 = *v43;
      if ((*v43)(v28, 1, v44) == 1)
      {
        v24 = v30(v28 + v27, 1, v29) == 1;
        v7 = v25;
        v31 = v28;
        if (!v24)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_1000CC794(v28, v10, &qword_1002C4050, &qword_1002483C0);
        if (v30(v28 + v27, 1, v29) == 1)
        {
          sub_1000EB418(v10, type metadata accessor for Goldilocks_ZoneID);
          v31 = v28;
LABEL_36:
          v37 = &qword_1002C2910;
          v38 = &qword_1002483C8;
          goto LABEL_39;
        }

        v7 = v25;
        sub_1000EB0BC(v28 + v27, v25, type metadata accessor for Goldilocks_ZoneID);
        if ((*v10 != *v25 || v10[1] != *(v25 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v10[2] != *(v25 + 2) || v10[3] != *(v25 + 3)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          sub_1000EB418(v25, type metadata accessor for Goldilocks_ZoneID);
LABEL_38:
          sub_1000EB418(v10, type metadata accessor for Goldilocks_ZoneID);
          v37 = &qword_1002C4050;
          v38 = &qword_1002483C0;
          v31 = v49;
LABEL_39:
          sub_1000CCDBC(v31, v37, v38);
          break;
        }

        type metadata accessor for UnknownStorage();
        sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_1000EB418(v25, type metadata accessor for Goldilocks_ZoneID);
        if ((v32 & 1) == 0)
        {
          goto LABEL_38;
        }

        sub_1000EB418(v10, type metadata accessor for Goldilocks_ZoneID);
        v31 = v49;
      }

      sub_1000CCDBC(v31, &qword_1002C4050, &qword_1002483C0);
      v33 = *(v18 + 2);
      v34 = *(v15 + 2);
      if (v18[24])
      {
        v33 = v33 != 0;
      }

      if (v15[24] == 1)
      {
        found = v42;
        v35 = v48;
        if (v34)
        {
          if (v33 != 1)
          {
            break;
          }
        }

        else if (v33)
        {
          break;
        }
      }

      else
      {
        found = v42;
        v35 = v48;
        if (v33 != v34)
        {
          break;
        }
      }

      type metadata accessor for UnknownStorage();
      sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1000EB418(v15, type metadata accessor for Goldilocks_FoundDuplicate);
      sub_1000EB418(v18, type metadata accessor for Goldilocks_FoundDuplicate);
      if (v36)
      {
        v23 = v46 + v41;
        v22 = v47 + v41;
        v19 = v35 - 1;
        if (v19)
        {
          continue;
        }
      }

      return v36 & 1;
    }

    sub_1000EB418(v15, type metadata accessor for Goldilocks_FoundDuplicate);
    sub_1000EB418(v18, type metadata accessor for Goldilocks_FoundDuplicate);
    goto LABEL_41;
  }

  v36 = 1;
  return v36 & 1;
}

uint64_t sub_1000E8284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResponseItem(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1000EB3B0(v13, v10, type metadata accessor for ResponseItem);
        sub_1000EB3B0(v14, v7, type metadata accessor for ResponseItem);
        v16 = _s22CloudKitImplementation12ResponseItemV2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_1000EB418(v7, type metadata accessor for ResponseItem);
        sub_1000EB418(v10, type metadata accessor for ResponseItem);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1000E843C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadResource(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = (&v22 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v20 = 1;
      return v20 & 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1000EB3B0(v13, v10, type metadata accessor for UploadResource);
      sub_1000EB3B0(v14, v7, type metadata accessor for UploadResource);
      v16 = *v10;
      v17 = *v7;
      if (v7[8] == 1)
      {
        if (v17)
        {
          if (v17 == 1)
          {
            if (v16 != 1)
            {
              break;
            }
          }

          else if (v16 != 2)
          {
            break;
          }
        }

        else if (v16)
        {
          break;
        }
      }

      else if (v16 != v17)
      {
        break;
      }

      if ((v10[2] != *(v7 + 2) || v10[3] != *(v7 + 3)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v18 = v10[4];
      v19 = *(v7 + 4);
      if (v7[40] == 1)
      {
        switch(v19)
        {
          case 13:
            if (v18 != 13)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 14:
            if (v18 != 14)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 15:
            if (v18 != 15)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 16:
            if (v18 != 16)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 17:
            if (v18 != 17)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 18:
            if (v18 != 18)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 19:
            if (v18 != 19)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 20:
            if (v18 != 20)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 21:
            if (v18 != 21)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 22:
            if (v18 != 22)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 23:
            if (v18 != 23)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 24:
            if (v18 != 24)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 25:
            if (v18 != 25)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 26:
            if (v18 != 26)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 27:
            if (v18 != 27)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          case 28:
            if (v18 != 28)
            {
              goto LABEL_56;
            }

            goto LABEL_21;
          default:
            break;
        }
      }

      if (v18 != v19)
      {
        break;
      }

LABEL_21:
      if ((sub_1000E93A0(v10[6], *(v7 + 6)) & 1) == 0)
      {
        break;
      }

      type metadata accessor for UnknownStorage();
      sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1000EB418(v7, type metadata accessor for UploadResource);
      sub_1000EB418(v10, type metadata accessor for UploadResource);
      if (v20)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_56:
    sub_1000EB418(v7, type metadata accessor for UploadResource);
    sub_1000EB418(v10, type metadata accessor for UploadResource);
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1000E87F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestItem(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1000EB3B0(v13, v10, type metadata accessor for RequestItem);
      sub_1000EB3B0(v14, v7, type metadata accessor for RequestItem);
      v16 = *(v4 + 20);
      v17 = *&v10[v16];
      v18 = *&v7[v16];
      if (v17 != v18)
      {

        v19 = sub_1000E157C(v17, v18);

        if (!v19)
        {
          break;
        }
      }

      type metadata accessor for UnknownStorage();
      sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      sub_1000EB418(v7, type metadata accessor for RequestItem);
      sub_1000EB418(v10, type metadata accessor for RequestItem);
      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    sub_1000EB418(v7, type metadata accessor for RequestItem);
    sub_1000EB418(v10, type metadata accessor for RequestItem);
  }

  return 0;
}

uint64_t sub_1000E8A68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UntranscodableItem(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_30:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1000EB3B0(v13, v10, type metadata accessor for UntranscodableItem);
      sub_1000EB3B0(v14, v7, type metadata accessor for UntranscodableItem);
      v16 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v17 = *(v10 + 2) == *(v7 + 2) && *(v10 + 3) == *(v7 + 3);
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(v10 + 4) != *(v7 + 4) || *(v10 + 5) != *(v7 + 5)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if (v10[48] != v7[48] || (*(v10 + 7) != *(v7 + 7) || *(v10 + 8) != *(v7 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(v10 + 9) != *(v7 + 9) || *(v10 + 10) != *(v7 + 10)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      type metadata accessor for UnknownStorage();
      sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1000EB418(v7, type metadata accessor for UntranscodableItem);
      sub_1000EB418(v10, type metadata accessor for UntranscodableItem);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1000EB418(v7, type metadata accessor for UntranscodableItem);
    sub_1000EB418(v10, type metadata accessor for UntranscodableItem);
    goto LABEL_30;
  }

  v18 = 1;
  return v18 & 1;
}