uint64_t sub_100473380(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PartialWebPresentmentRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100007224(&qword_100844F78, &qword_1006E5298) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100027B9C;

  return sub_100472F44(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1004734F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPresentmentResponse();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebPresentmentScannableCodeState(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  v16 = sub_100007224(&qword_100845048, &unk_1006E5340);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  sub_100473C48(a1, &v29 - v18);
  sub_100473C48(a2, &v19[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100473C48(v19, v13);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v31 + 8))(v13, v32);
        goto LABEL_13;
      }

      v23 = v31;
      v22 = v32;
      (*(v31 + 32))(v6, &v19[v20], v32);
      v24 = static WebPresentmentResponse.== infix(_:_:)();
      v25 = *(v23 + 8);
      v25(v6, v22);
      v25(v13, v22);
    }

    else
    {
      sub_100473C48(v19, v15);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v30 + 8))(v15, v7);
LABEL_13:
        sub_100473CAC(v19);
        v24 = 0;
        return v24 & 1;
      }

      v26 = v30;
      (*(v30 + 32))(v9, &v19[v20], v7);
      v24 = static URL.== infix(_:_:)();
      v27 = *(v26 + 8);
      v27(v9, v7);
      v27(v15, v7);
    }

    sub_100473D14(v19);
    return v24 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_13;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_13;
  }

  sub_100473D14(v19);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_1004738B0()
{
  v1 = sub_100007224(&qword_100844F78, &qword_1006E5298);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1004739BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_10047281C(a1, v4, v5, v6, v7, v8);
}

void sub_100473A84()
{
  os_unfair_lock_lock((v0 + 20));
  *(v0 + 16) = 1;

  os_unfair_lock_unlock((v0 + 20));
}

uint64_t sub_100473ABC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100473B38@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

unint64_t sub_100473B80()
{
  result = qword_100844F98;
  if (!qword_100844F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100844F98);
  }

  return result;
}

uint64_t sub_100473BD4(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WebPresentmentResponse();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100473C48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPresentmentScannableCodeState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100473CAC(uint64_t a1)
{
  v2 = sub_100007224(&qword_100845048, &unk_1006E5340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100473D14(uint64_t a1)
{
  v2 = type metadata accessor for WebPresentmentScannableCodeState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100473D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for IdentityDocumentRequestSceneIdentifier();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v47 - v12;
  v14 = __chkstk_darwin(v11);
  v48 = &v47 - v15;
  __chkstk_darwin(v14);
  v17 = &v47 - v16;
  v18 = type metadata accessor for MobileDocumentProviderRecord(0);
  __chkstk_darwin(v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  v49 = v19;
  if (v22 != 1)
  {
    defaultLogger()();

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      *(v36 + 4) = v22;

      _os_log_impl(&_mh_execute_header, v34, v35, "WebPresentmentManager %ld records present, cannot proceed directly to presentment sheet", v36, 0xCu);
    }

    else
    {
    }

    v25 = v18;
    (*(v50 + 8))(v10, v51);
    goto LABEL_20;
  }

  sub_100326DB8(a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v21);
  v23 = sub_100330A28();
  v25 = v18;
  if (v24)
  {
    if (v23 == 0xD000000000000012 && v24 == 0x80000001006FBDE0)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    defaultLogger()();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "WebPresentmentManager one record present, and that record is first party", v44, 2u);
    }

    (*(v50 + 8))(v17, v51);
    goto LABEL_25;
  }

LABEL_8:
  v28 = *&v21[*(v18 + 24)];
  (*(v4 + 104))(v6, enum case for IdentityDocumentRequestSceneIdentifier.iso18013MobileDocumentRequest(_:), v3);
  LOBYTE(v28) = sub_10032D9C0(v6, v28);
  (*(v4 + 8))(v6, v3);
  if (v28)
  {
    sub_100330370();
    if (v29)
    {

      v30 = v48;
      defaultLogger()();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "WebPresentmentManager one record present, and that record is a 3rd party document provider that supports partial requests", v33, 2u);
      }

      (*(v50 + 8))(v30, v51);
LABEL_25:
      v45 = v52;
      sub_10047435C(v21, v52);
      v41 = v45;
      v40 = 0;
      return (*(v49 + 56))(v41, v40, 1, v25);
    }
  }

  defaultLogger()();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "WebPresentmentManager unable to bypass selection view", v39, 2u);
  }

  (*(v50 + 8))(v13, v51);
  sub_100326E1C(v21);
LABEL_20:
  v40 = 1;
  v41 = v52;
  return (*(v49 + 56))(v41, v40, 1, v25);
}

uint64_t sub_10047435C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004743C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[108] = v6;
  v7[107] = a6;
  v7[106] = a5;
  v7[105] = a4;
  v7[104] = a3;
  v7[103] = a2;
  v7[102] = a1;
  v8 = type metadata accessor for Logger();
  v7[109] = v8;
  v7[110] = *(v8 - 8);
  v7[111] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v7[112] = v9;
  v7[113] = *(v9 - 8);
  v7[114] = swift_task_alloc();
  type metadata accessor for WalletPassPresentmentResponse(0);
  v7[115] = swift_task_alloc();
  v10 = type metadata accessor for PartialWebPresentmentRequest();
  v7[116] = v10;
  v7[117] = *(v10 - 8);
  v7[118] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v7[119] = swift_task_alloc();
  v11 = type metadata accessor for IdentityDocumentPresentmentConfiguration();
  v7[120] = v11;
  v7[121] = *(v11 - 8);
  v7[122] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v7[123] = v12;
  v7[124] = *(v12 - 8);
  v7[125] = swift_task_alloc();
  v13 = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal(0) - 8);
  v7[126] = v13;
  v7[127] = *(v13 + 64);
  v7[128] = swift_task_alloc();
  v7[129] = swift_task_alloc();
  v7[130] = swift_task_alloc();

  return _swift_task_switch(sub_1004746E4, 0, 0);
}

uint64_t sub_1004746E4()
{
  v1 = *(v0 + 824);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 1040);
    v3 = *(v0 + 1032);
    v4 = *(v0 + 1000);
    v5 = *(v0 + 992);
    v6 = *(v0 + 984);
    v7 = *(type metadata accessor for DigitalPresentmentEligibleProposalData(0) - 8);
    sub_100478E5C(v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v3, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
    sub_100478F24(v3, v2, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
    PartialWebPresentmentRequest.originatingURL.getter();
    v8 = URL.host(percentEncoded:)(0);
    (*(v5 + 8))(v4, v6);
    v9 = *(v0 + 1040);
    if (v8.value._object)
    {
      sub_10000BA08((*(v0 + 864) + 96), *(*(v0 + 864) + 120));
      v10 = sub_1004352E0(v9);
      *(v0 + 1048) = v11;
      v12 = v10;
      v13 = v11;
      v14 = *(v0 + 976);
      v15 = *(v0 + 824);
      type metadata accessor for IdentityDocumentPresentmentConfigurationBuilder();
      v16 = swift_allocObject();
      *(v0 + 1056) = v16;
      *(v16 + 120) = 0u;
      *(v16 + 136) = 0u;
      *(v16 + 145) = 0u;
      *(v16 + 16) = v15;
      *(v16 + 56) = v12;
      *(v16 + 24) = 0u;
      *(v16 + 40) = 0u;
      *(v16 + 64) = v13;
      *(v16 + 72) = v8;
      *(v16 + 88) = 0x8000000000000000;

      sub_1001764AC(v14);
      v30 = *(v0 + 1040);
      v31 = *(v0 + 1024);
      v66 = v31;
      v79 = *(v0 + 1016);
      v65 = *(v0 + 1008);
      v32 = *(v0 + 952);
      v67 = v32;
      v75 = *(v0 + 944);
      v74 = *(v0 + 936);
      v76 = *(v0 + 928);
      v33 = *(v0 + 864);
      v78 = v33;
      v72 = *(v0 + 840);
      v73 = *(v0 + 832);
      v70 = *(v0 + 824);
      v69 = type metadata accessor for TaskPriority();
      v68 = *(*(v69 - 8) + 56);
      v68(v32, 1, 1, v69);
      sub_1003EB13C(v33, v0 + 16);
      sub_100478E5C(v30, v31, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
      v34 = *(v65 + 80);
      v35 = (v34 + 240) & ~v34;
      v77 = v12;
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      *(v36 + 32) = v12;
      *(v36 + 40) = v13;
      v37 = *(v0 + 160);
      *(v36 + 176) = *(v0 + 144);
      *(v36 + 192) = v37;
      *(v36 + 208) = *(v0 + 176);
      v38 = *(v0 + 192);
      v39 = *(v0 + 96);
      *(v36 + 112) = *(v0 + 80);
      *(v36 + 128) = v39;
      v40 = *(v0 + 128);
      *(v36 + 144) = *(v0 + 112);
      *(v36 + 160) = v40;
      v41 = *(v0 + 32);
      *(v36 + 48) = *(v0 + 16);
      *(v36 + 64) = v41;
      v42 = *(v0 + 64);
      *(v36 + 80) = *(v0 + 48);
      *(v36 + 96) = v42;
      *(v36 + 224) = v38;
      *(v36 + 232) = v70;
      sub_100478F24(v66, v36 + v35, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
      *(v36 + ((v79 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;

      v71 = sub_1003E683C(0, 0, v67, &unk_1006E53E8, v36);
      *(v0 + 1064) = v71;
      v68(v67, 1, 1, v69);
      sub_1003EB13C(v78, v0 + 200);
      sub_100478E5C(v30, v66, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      *(v43 + 24) = 0;
      v44 = *(v0 + 344);
      *(v43 + 160) = *(v0 + 328);
      *(v43 + 176) = v44;
      *(v43 + 192) = *(v0 + 360);
      *(v43 + 208) = *(v0 + 376);
      v45 = *(v0 + 280);
      *(v43 + 96) = *(v0 + 264);
      *(v43 + 112) = v45;
      v46 = *(v0 + 312);
      *(v43 + 128) = *(v0 + 296);
      *(v43 + 144) = v46;
      v47 = *(v0 + 216);
      *(v43 + 32) = *(v0 + 200);
      *(v43 + 48) = v47;
      v48 = *(v0 + 248);
      *(v43 + 64) = *(v0 + 232);
      *(v43 + 80) = v48;
      sub_100478F24(v66, v43 + ((v34 + 216) & ~v34), type metadata accessor for DigitalPresentmentSessionManager.Proposal);
      v49 = sub_100130970(0, 0, v67, &unk_1006E53F8, v43);
      *(v0 + 1072) = v49;
      v50 = *(v78 + 80);
      v51 = *(v78 + 88);
      sub_100020260(v72, v0 + 616);
      (*(v74 + 16))(v75, v73, v76);
      sub_100020260(v78, v0 + 656);
      *(v0 + 720) = type metadata accessor for WebPresentmentRequestAuthenticator(0);
      *(v0 + 728) = &off_100811F68;
      v52 = sub_100032DBC((v0 + 696));
      sub_100462018(v52);
      v53 = *(v51 + 16);
      *(v0 + 600) = v50;
      *(v0 + 608) = v51;
      sub_100032DBC((v0 + 576));

      v53(v0 + 616, v75, v0 + 656, v0 + 696, v71, v49, v50, v51);
      sub_100020260(v78 + 40, v0 + 736);
      sub_10000BA08((v0 + 736), *(v0 + 760));
      v54 = *(v0 + 600);
      v55 = *(v0 + 608);
      v56 = sub_10000BA08((v0 + 576), v54);
      *(v0 + 800) = v54;
      *(v0 + 808) = *(v55 + 8);
      v57 = sub_100032DBC((v0 + 776));
      (*(*(v54 - 8) + 16))(v57, v56, v54);
      if (v13)
      {
        v58 = v77;
      }

      else
      {
        v58 = 0x6E776F6E6B6E75;
      }

      if (!v13)
      {
        v13 = 0xE700000000000000;
      }

      v59 = swift_task_alloc();
      *(v0 + 1080) = v59;
      *v59 = v0;
      v59[1] = sub_100475308;
      v60 = *(v0 + 976);
      v61 = *(v0 + 920);
      v62 = *(v0 + 856);
      v63 = *(v0 + 848);
      v64 = *(v0 + 824);

      return sub_1004242EC(v61, v60, v0 + 776, v64, v58, v13, v63, v62);
    }

    (*(*(v0 + 904) + 104))(*(v0 + 912), enum case for DIPError.Code.webPresentmentMissingHost(_:), *(v0 + 896));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100478740(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_100478EC4(v9, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  }

  else
  {
    (*(*(v0 + 904) + 104))(*(v0 + 912), enum case for DIPError.Code.webPresentmentNoEligibleDocuments(_:), *(v0 + 896));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100478740(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  defaultLogger()();
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v21;
    *v20 = v21;
    _os_log_impl(&_mh_execute_header, v17, v18, "presentAuthorizationSheet failed with error %@", v19, 0xCu);
    sub_10000BE18(v20, &unk_100833B50, &unk_1006D8FB0);
  }

  v22 = *(v0 + 912);
  v23 = *(v0 + 904);
  v24 = *(v0 + 896);
  v25 = *(v0 + 888);
  v26 = *(v0 + 880);
  v27 = *(v0 + 872);

  (*(v26 + 8))(v25, v27);
  (*(v23 + 104))(v22, enum case for DIPError.Code.internalError(_:), v24);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100478740(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100475308()
{
  v2 = *v1;
  *(*v1 + 1088) = v0;

  if (v0)
  {
    v3 = sub_1004756D4;
  }

  else
  {
    sub_10000BB78((v2 + 776));
    v3 = sub_10047544C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10047544C()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 968);
  v10 = *(v0 + 960);
  v11 = *(v0 + 976);
  v4 = *(v0 + 920);
  sub_10000BB78((v0 + 736));
  sub_10000B8B8(*v4, *(v4 + 8));
  WebPresentmentResponse.init(responseData:)();
  sub_100478EC4(v4, type metadata accessor for WalletPassPresentmentResponse);
  sub_10000BB78((v0 + 576));
  sub_100007224(&qword_100843250, &qword_1006E0DF0);
  Task.cancel()();
  sub_100007224(&qword_10083B4C0, &qword_1006D98B8);
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  Task.cancel()();
  swift_setDeallocating();

  v5 = *(v1 + 56);
  v6 = *(v1 + 72);
  v7 = *(v1 + 104);
  *(v0 + 544) = *(v1 + 88);
  *(v0 + 560) = v7;
  *(v0 + 512) = v5;
  *(v0 + 528) = v6;
  sub_100477D2C(v0 + 512);
  sub_1000B00AC(*(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144));
  swift_deallocClassInstance();

  (*(v3 + 8))(v11, v10);
  sub_100478EC4(v2, type metadata accessor for DigitalPresentmentSessionManager.Proposal);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1004756D4()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 976);
  v4 = *(v0 + 968);
  v5 = *(v0 + 960);
  sub_10000BB78((v0 + 776));
  sub_10000BB78((v0 + 736));
  sub_10000BB78((v0 + 576));
  sub_100007224(&qword_100843250, &qword_1006E0DF0);
  Task.cancel()();
  sub_100007224(&qword_10083B4C0, &qword_1006D98B8);
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  Task.cancel()();
  swift_setDeallocating();

  v6 = *(v1 + 56);
  v7 = *(v1 + 72);
  v8 = *(v1 + 104);
  *(v0 + 480) = *(v1 + 88);
  *(v0 + 496) = v8;
  *(v0 + 448) = v6;
  *(v0 + 464) = v7;
  sub_100477D2C(v0 + 448);
  sub_1000B00AC(*(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144));
  swift_deallocClassInstance();

  (*(v4 + 8))(v3, v5);
  sub_100478EC4(v2, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  defaultLogger()();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "presentAuthorizationSheet failed with error %@", v11, 0xCu);
    sub_10000BE18(v12, &unk_100833B50, &unk_1006D8FB0);
  }

  v14 = *(v0 + 912);
  v15 = *(v0 + 904);
  v16 = *(v0 + 896);
  v17 = *(v0 + 888);
  v18 = *(v0 + 880);
  v19 = *(v0 + 872);

  (*(v18 + 8))(v17, v19);
  (*(v15 + 104))(v14, enum case for DIPError.Code.internalError(_:), v16);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100478740(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100475B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[45] = v12;
  v8[46] = v13;
  v8[43] = a7;
  v8[44] = a8;
  v8[41] = a5;
  v8[42] = a6;
  v8[39] = a1;
  v8[40] = a4;
  v9 = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal(0) - 8);
  v8[47] = v9;
  v8[48] = *(v9 + 64);
  v8[49] = swift_task_alloc();

  return _swift_task_switch(sub_100475C0C, 0, 0);
}

uint64_t sub_100475C0C()
{
  v1 = *(v0 + 336);
  *(v0 + 296) = *(v0 + 320);
  v2 = sub_10000BA08((v1 + 96), *(v1 + 120));
  *(v0 + 224) = &type metadata for WebPresentmentBrandConfigurationManager;
  *(v0 + 232) = &off_1008109C8;
  v3 = swift_allocObject();
  *(v0 + 200) = v3;
  sub_1003EB048(v2, v3 + 16);
  sub_100020260(v0 + 200, v0 + 240);
  v4 = swift_allocObject();
  *(v0 + 400) = v4;
  sub_10001F358((v0 + 240), v4 + 16);
  sub_10000BB78((v0 + 200));
  v5 = swift_task_alloc();
  *(v0 + 408) = v5;
  *(v5 + 16) = &unk_1006E5420;
  *(v5 + 24) = v4;
  v6 = swift_task_alloc();
  *(v0 + 416) = v6;
  v7 = sub_100007224(&qword_10084A1D0, &qword_1006DB410);
  *v6 = v0;
  v6[1] = sub_100475DB0;

  return __sSq13CoreIDVSharedE12asyncFlatMapyqd__SgACxYaqd_0_YKXEYaqd_0_YKs5ErrorRd_0_r0_lF(v0 + 280, &unk_1006E5430, v5, v7, &type metadata for String, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100475DB0()
{

  if (!v0)
  {

    return _swift_task_switch(sub_100475ED0, 0, 0);
  }

  return result;
}

uint64_t sub_100475ED0()
{
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = *(v0 + 352);
  v25 = *(v0 + 360);
  v26 = *(v0 + 368);
  v5 = *(v0 + 344);
  v21 = *(v0 + 320);
  v22 = *(v0 + 328);
  v6 = *(v0 + 312);
  v23 = *(v0 + 288);
  v24 = *(v0 + 280);
  sub_1003EB13C(*(v0 + 336), v0 + 16);
  sub_100478E5C(v4, v1, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  v7 = (*(v3 + 80) + 208) & ~*(v3 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v11 = *(v0 + 160);
  *(v10 + 152) = *(v0 + 144);
  *(v10 + 168) = v11;
  *(v10 + 184) = *(v0 + 176);
  v12 = *(v0 + 96);
  *(v10 + 88) = *(v0 + 80);
  *(v10 + 104) = v12;
  v13 = *(v0 + 128);
  *(v10 + 120) = *(v0 + 112);
  *(v10 + 136) = v13;
  v14 = *(v0 + 32);
  *(v10 + 24) = *(v0 + 16);
  *(v10 + 40) = v14;
  v15 = *(v0 + 64);
  *(v10 + 56) = *(v0 + 48);
  *(v10 + 16) = v5;
  *(v10 + 200) = *(v0 + 192);
  *(v10 + 72) = v15;
  sub_100478F24(v1, v10 + v7, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  v16 = (v10 + v8);
  *v16 = v21;
  v16[1] = v22;
  v17 = (v10 + v9);
  *v17 = v25;
  v17[1] = v26;
  v18 = (v10 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v24;
  v18[1] = v23;
  *v6 = &unk_1006E5448;
  v6[1] = v10;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100476090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1004760B4, 0, 0);
}

uint64_t sub_1004760B4()
{
  sub_10000BA08(*(v0 + 32), *(*(v0 + 32) + 24));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100476158;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_100435D6C(v3, v2);
}

uint64_t sub_100476158(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100476258, 0, 0);
}

uint64_t sub_100476258()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = static Locale.preferredLanguages.getter();
    v3 = sub_1004350A0(v2, v1);
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_1004762FC(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = a2[1];
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1004763FC;

  return v8(v4, v5);
}

uint64_t sub_1004763FC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  v5[1] = a2;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_10047651C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v22;
  *(v8 + 176) = v23;
  *(v8 + 152) = v21;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 112) = a4;
  v11 = type metadata accessor for Logger();
  *(v8 + 184) = v11;
  *(v8 + 192) = *(v11 - 8);
  *(v8 + 200) = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  *(v8 + 208) = swift_task_alloc();
  sub_100007224(&qword_10083C3C0, &unk_1006DAA10);
  *(v8 + 216) = swift_task_alloc();
  v12 = type metadata accessor for IdentityDocumentElementCategoryGroups();
  *(v8 + 224) = v12;
  *(v8 + 232) = *(v12 - 8);
  *(v8 + 240) = swift_task_alloc();
  v13 = type metadata accessor for DIPError.Code();
  *(v8 + 248) = v13;
  *(v8 + 256) = *(v13 - 8);
  *(v8 + 264) = swift_task_alloc();
  v14 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
  *(v8 + 272) = v14;
  *(v8 + 280) = *(v14 - 8);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  v15 = swift_task_alloc();
  v16 = *a2;
  v17 = a2[1];
  *(v8 + 304) = v15;
  *(v8 + 312) = v16;
  v18 = *a3;
  *(v8 + 320) = v17;
  *(v8 + 328) = v18;

  return _swift_task_switch(sub_1004767B0, 0, 0);
}

uint64_t sub_1004767B0()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_9:
    (*(*(v0 + 256) + 104))(*(v0 + 264), enum case for DIPError.Code.digitalPresentmentInvalidCredential(_:), *(v0 + 248));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100478740(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_19:

    v22 = *(v0 + 8);
LABEL_20:

    return v22();
  }

  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6 = *(v3 + 72);
  while (1)
  {
    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v9 = *(v0 + 288);
    sub_100478E5C(v5, v9, type metadata accessor for DigitalPresentmentEligibleProposalData);
    v10 = *v9 == v8 && *(v4 + 8) == v7;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    sub_100478EC4(*(v0 + 288), type metadata accessor for DigitalPresentmentEligibleProposalData);
    v5 += v6;
    if (!--v2)
    {
      goto LABEL_9;
    }
  }

  v11 = *(v0 + 296);
  v12 = *(v0 + 304);
  v13 = *(v0 + 120);
  sub_100478F24(*(v0 + 288), v11, type metadata accessor for DigitalPresentmentEligibleProposalData);
  sub_100478F24(v11, v12, type metadata accessor for DigitalPresentmentEligibleProposalData);
  if (*(*sub_10000BA08(v13, v13[3]) + 16))
  {
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 304);
    v19 = *(v0 + 192);
    v18 = *(v0 + 200);
    v20 = *(v0 + 184);
    if (v16)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Skipping transaction history save due to developer test mode being enabled", v21, 2u);
    }

    (*(v19 + 8))(v18, v20);
    sub_100478EC4(v17, type metadata accessor for DigitalPresentmentEligibleProposalData);

    v22 = *(v0 + 8);
    goto LABEL_20;
  }

  v23 = *(v0 + 304);
  v24 = *(v23 + *(*(v0 + 272) + 20));
  *(v0 + 336) = v24;
  if (!v24)
  {
    (*(*(v0 + 256) + 104))(*(v0 + 264), enum case for DIPError.Code.webPresentmentPassMissing(_:), *(v0 + 248));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100478740(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_18;
  }

  v25 = *(v0 + 224);
  v26 = *(v0 + 232);
  v27 = *(v0 + 216);

  IdentityDocumentElementCategoryGroups.init(documentType:documentElements:)();
  if ((*(v26 + 48))(v27, 1, v25) == 1)
  {
    v23 = *(v0 + 304);
    v29 = *(v0 + 256);
    v28 = *(v0 + 264);
    v30 = *(v0 + 248);
    sub_10000BE18(*(v0 + 216), &qword_10083C3C0, &unk_1006DAA10);
    (*(v29 + 104))(v28, enum case for DIPError.Code.webPresentmentMissingRequiredRequestElementPermission(_:), v30);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100478740(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

LABEL_18:
    sub_100478EC4(v23, type metadata accessor for DigitalPresentmentEligibleProposalData);
    goto LABEL_19;
  }

  v32 = *(v0 + 208);
  v34 = *(v0 + 152);
  v33 = *(v0 + 160);
  v41 = *(v0 + 136);
  (*(*(v0 + 232) + 32))(*(v0 + 240), *(v0 + 216), *(v0 + 224));
  *(v0 + 16) = v41;
  *(v0 + 32) = v34;
  *(v0 + 40) = v33;
  *(v0 + 64) = 0;
  *(v0 + 104) = 0x80;
  v35 = type metadata accessor for URL();
  (*(*(v35 - 8) + 56))(v32, 1, 1, v35);
  v36 = swift_task_alloc();
  *(v0 + 344) = v36;
  *v36 = v0;
  v36[1] = sub_100476F84;
  v37 = *(v0 + 240);
  v38 = *(v0 + 208);
  v39 = *(v0 + 168);
  v40 = *(v0 + 176);

  return sub_10050E820(v37, v0 + 16, 0, 0, v38, v39, v40, 0);
}

uint64_t sub_100476F84()
{
  v1 = *(*v0 + 208);

  sub_10000BE18(v1, &unk_100844540, &unk_1006BFBC0);

  return _swift_task_switch(sub_1004770AC, 0, 0);
}

uint64_t sub_1004770AC()
{
  v1 = v0[38];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];

  (*(v3 + 8))(v2, v4);
  sub_100478EC4(v1, type metadata accessor for DigitalPresentmentEligibleProposalData);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004771BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v5[26] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v7 = type metadata accessor for TimeoutError();
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v8 = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal(0) - 8);
  v5[36] = v8;
  v5[37] = *(v8 + 64);
  v5[38] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v5[39] = v9;
  v5[40] = *(v9 - 8);
  v5[41] = swift_task_alloc();

  return _swift_task_switch(sub_1004773A4, 0, 0);
}

uint64_t sub_1004773A4(uint64_t a1)
{
  v2 = UserDefaultsConfiguration.userDefaults.getter();
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.WebPresentment.permissionsCheckTimeout.getter();
  v29 = NSUserDefaults.internalDouble(forKey:)(v3);
  v4 = *&v29.is_nil;
  v6 = v5;

  if (v6)
  {
    v7 = 30.0;
  }

  else
  {
    v7 = v4;
  }

  defaultLogger()();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Permissions timeout is %f sec", v10, 0xCu);
  }

  v12 = *(v1 + 320);
  v11 = *(v1 + 328);
  v13 = *(v1 + 304);
  v14 = *(v1 + 312);
  v15 = *(v1 + 288);
  v17 = *(v1 + 216);
  v16 = *(v1 + 224);

  (*(v12 + 8))(v11, v14);
  sub_1003EB13C(v17, v1 + 16);
  sub_100478E5C(v16, v13, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  v18 = (*(v15 + 80) + 200) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v1 + 336) = v19;
  v20 = *(v1 + 160);
  *(v19 + 144) = *(v1 + 144);
  *(v19 + 160) = v20;
  *(v19 + 176) = *(v1 + 176);
  *(v19 + 192) = *(v1 + 192);
  v21 = *(v1 + 96);
  *(v19 + 80) = *(v1 + 80);
  *(v19 + 96) = v21;
  v22 = *(v1 + 128);
  *(v19 + 112) = *(v1 + 112);
  *(v19 + 128) = v22;
  v23 = *(v1 + 32);
  *(v19 + 16) = *(v1 + 16);
  *(v19 + 32) = v23;
  v24 = *(v1 + 64);
  *(v19 + 48) = *(v1 + 48);
  *(v19 + 64) = v24;
  sub_100478F24(v13, v19 + v18, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  v25 = swift_task_alloc();
  *(v1 + 344) = v25;
  sub_100007224(&qword_10083B4C0, &qword_1006D98B8);
  *v25 = v1;
  v25[1] = sub_100477620;
  v26.n128_f64[0] = v7;

  return withTaskTimeoutHandler<A>(timeout:operation:)(v26);
}

uint64_t sub_100477620()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1004777F4;
  }

  else
  {

    v2 = sub_10047773C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10047773C()
{
  type metadata accessor for DaemonAnalytics();
  static DaemonAnalytics.sendWebPresentmentPermissionsTimeoutEvent(timedOut:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004777F4()
{
  v1 = v0[44];

  v0[25] = v1;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v3 = v0[34];
    v2 = v0[35];
    v4 = v0[32];
    v5 = v0[33];
    v7 = v0[30];
    v6 = v0[31];
    v8 = v0[29];

    (*(v5 + 32))(v2, v3, v4);
    sub_100478740(&qword_1008450E8, &type metadata accessor for TimeoutError, &protocol conformance descriptor for TimeoutError);
    swift_allocError();
    (*(v5 + 16))(v9, v2, v4);
    (*(v7 + 104))(v6, enum case for DIPError.Code.webPresentmentMissingRequiredRequestElementPermission(_:), v8);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100478740(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v5 + 8))(v2, v4);
  }

  type metadata accessor for DaemonAnalytics();
  static DaemonAnalytics.sendWebPresentmentPermissionsTimeoutEvent(timedOut:)();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100477AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100477B14, 0, 0);
}

uint64_t sub_100477B14()
{
  sub_10000BA08((v0[3] + 136), *(v0[3] + 160));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100477BBC;
  v2 = v0[4];

  return sub_10046D634(v2);
}

uint64_t sub_100477BBC(uint64_t a1)
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
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_100477D08, 0, 0);
  }
}

uint64_t sub_100477D80()
{
  v1 = type metadata accessor for DigitalPresentmentSessionManager.Proposal(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 240) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  sub_10000BB78(v0 + 6);
  sub_10000BB78(v0 + 11);
  sub_10000BB78(v0 + 18);
  sub_10000BB78(v0 + 23);

  v5 = (v0 + v3);

  v6 = *(v0 + v3 + 40);
  if (v6 >> 60 != 15)
  {
    sub_10000B90C(v5[4], v6);
  }

  v7 = v5[7];
  if (v7 >> 60 != 15)
  {
    sub_10000B90C(v5[6], v7);
  }

  v8 = (v5 + v1[12]);
  v9 = type metadata accessor for CredentialRevocationInfo(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    sub_10000B90C(*v8, v8[1]);
    v10 = v8[3];
    if (v10 >> 60 != 15)
    {
      sub_10000B90C(v8[2], v10);
    }

    v11 = *(v9 + 24);
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  v13 = (v5 + v1[13]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_10000B90C(*v13, v14);
  }

  v15 = (v5 + v1[14]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_10000B90C(*v15, v16);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_100477FD0(uint64_t a1)
{
  v3 = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal(0) - 8);
  v4 = (*(v3 + 80) + 240) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[29];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100027B9C;

  return sub_100475B34(a1, v5, v6, v7, v8, (v1 + 6), v9, v1 + v4);
}

uint64_t sub_100478124()
{
  v1 = type metadata accessor for DigitalPresentmentSessionManager.Proposal(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 216) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  sub_10000BB78(v0 + 4);
  sub_10000BB78(v0 + 9);
  sub_10000BB78(v0 + 16);
  sub_10000BB78(v0 + 21);

  v5 = (v0 + v3);

  v6 = *(v0 + v3 + 40);
  if (v6 >> 60 != 15)
  {
    sub_10000B90C(v5[4], v6);
  }

  v7 = v5[7];
  if (v7 >> 60 != 15)
  {
    sub_10000B90C(v5[6], v7);
  }

  v8 = (v5 + v1[12]);
  v9 = type metadata accessor for CredentialRevocationInfo(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    sub_10000B90C(*v8, v8[1]);
    v10 = v8[3];
    if (v10 >> 60 != 15)
    {
      sub_10000B90C(v8[2], v10);
    }

    v11 = *(v9 + 24);
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  v13 = (v5 + v1[13]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_10000B90C(*v13, v14);
  }

  v15 = (v5 + v1[14]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_10000B90C(*v15, v16);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10047834C(uint64_t a1)
{
  v4 = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal(0) - 8);
  v5 = (*(v4 + 80) + 216) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100041F04;

  return sub_1004771BC(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_100478440()
{
  v1 = type metadata accessor for DigitalPresentmentSessionManager.Proposal(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 200) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  sub_10000BB78(v0 + 14);
  sub_10000BB78(v0 + 19);

  v5 = (v0 + v3);

  v6 = *(v0 + v3 + 40);
  if (v6 >> 60 != 15)
  {
    sub_10000B90C(v5[4], v6);
  }

  v7 = v5[7];
  if (v7 >> 60 != 15)
  {
    sub_10000B90C(v5[6], v7);
  }

  v8 = (v5 + v1[12]);
  v9 = type metadata accessor for CredentialRevocationInfo(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    sub_10000B90C(*v8, v8[1]);
    v10 = v8[3];
    if (v10 >> 60 != 15)
    {
      sub_10000B90C(v8[2], v10);
    }

    v11 = *(v9 + 24);
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  v13 = (v5 + v1[13]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_10000B90C(*v13, v14);
  }

  v15 = (v5 + v1[14]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_10000B90C(*v15, v16);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100478660(uint64_t a1)
{
  v4 = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal(0) - 8);
  v5 = (*(v4 + 80) + 200) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027B9C;

  return sub_100477AF0(a1, v1 + 16, v1 + v5);
}

uint64_t sub_100478740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100478788()
{
  sub_10000BB78((v0 + 16));
  sub_10000BB78((v0 + 64));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1004787D0()
{
  sub_10000BB78((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100478808(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1004788B0;

  return sub_100476090(a1, a2, v2 + 16);
}

uint64_t sub_1004788B0(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1004789B4(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100041F04;

  return sub_1004762FC(a1, a2, v6);
}

uint64_t sub_100478A84()
{
  v1 = type metadata accessor for DigitalPresentmentSessionManager.Proposal(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 208) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  sub_10000BB78(v0 + 3);
  sub_10000BB78(v0 + 8);
  sub_10000BB78(v0 + 15);
  sub_10000BB78(v0 + 20);

  v5 = (v0 + v3);

  v6 = *(v0 + v3 + 40);
  if (v6 >> 60 != 15)
  {
    sub_10000B90C(v5[4], v6);
  }

  v7 = v5[7];
  if (v7 >> 60 != 15)
  {
    sub_10000B90C(v5[6], v7);
  }

  v8 = (v5 + v1[12]);
  v9 = type metadata accessor for CredentialRevocationInfo(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    sub_10000B90C(*v8, v8[1]);
    v10 = v8[3];
    if (v10 >> 60 != 15)
    {
      sub_10000B90C(v8[2], v10);
    }

    v11 = *(v9 + 24);
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  v13 = (v5 + v1[13]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_10000B90C(*v13, v14);
  }

  v15 = (v5 + v1[14]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_10000B90C(*v15, v16);
  }

  return _swift_deallocObject(v0, ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_100478CEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal(0) - 8);
  v6 = (*(v5 + 80) + 208) & ~*(v5 + 80);
  v7 = *(v3 + 16);
  v8 = (v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_100041F04;

  return sub_10047651C(a1, a2, a3, v7, v3 + 24, v3 + v6, v9, v10);
}

uint64_t sub_100478E5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100478EC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100478F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100478F8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100478FD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 184) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100479060()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  _StringGuts.grow(_:)(1058);
  v3._countAndFlagsBits = 0x646E656720202020;
  v3._object = 0xEC000000203A7265;
  String.append(_:)(v3);
  v4 = [v0 gender];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8._countAndFlagsBits = v6;
  v8._object = v2;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x696B73202020200ALL;
  v9._object = 0xEF203A656E6F546ELL;
  String.append(_:)(v9);
  v10 = [v1 skinTone];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0xD000000000000010;
  v16._object = 0x8000000100718160;
  String.append(_:)(v16);
  v17 = [v1 ethnicity];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 0xD000000000000015;
  v23._object = 0x8000000100718180;
  String.append(_:)(v23);
  v24 = [v1 deviceLanguage];
  if (v24)
  {
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  v30._object = 0x80000001007181A0;
  v30._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v30);
  v31 = [v1 proofingDecision];
  if (v31)
  {
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0xE000000000000000;
  }

  v36._countAndFlagsBits = v33;
  v36._object = v35;
  String.append(_:)(v36);

  v37._countAndFlagsBits = 0x737369202020200ALL;
  v37._object = 0xED0000203A726575;
  String.append(_:)(v37);
  v38 = [v1 issuer];
  if (v38)
  {
    v39 = v38;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0xE000000000000000;
  }

  v43._countAndFlagsBits = v40;
  v43._object = v42;
  String.append(_:)(v43);

  v44._countAndFlagsBits = 0xD000000000000019;
  v44._object = 0x80000001007181C0;
  String.append(_:)(v44);
  v45 = [v1 alAssessment];
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xE000000000000000;
  }

  v50._countAndFlagsBits = v47;
  v50._object = v49;
  String.append(_:)(v50);

  v51._countAndFlagsBits = 0xD000000000000018;
  v51._object = 0x80000001007181E0;
  String.append(_:)(v51);
  v52 = [v1 alGestureAssessment];
  if (v52)
  {
    v53 = v52;
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0xE000000000000000;
  }

  v57._countAndFlagsBits = v54;
  v57._object = v56;
  String.append(_:)(v57);

  v58._object = 0x8000000100718200;
  v58._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v58);
  v59 = [v1 axSettings];
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = Array.description.getter();
  v62 = v61;

  v63._countAndFlagsBits = v60;
  v63._object = v62;
  String.append(_:)(v63);

  v64._object = 0x8000000100718220;
  v64._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v64);
  v65 = [v1 alFacVersion];
  if (v65)
  {
    v66 = v65;
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;
  }

  else
  {
    v67 = 0;
    v69 = 0xE000000000000000;
  }

  v70._countAndFlagsBits = v67;
  v70._object = v69;
  String.append(_:)(v70);

  v71._object = 0x8000000100718240;
  v71._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v71);
  v72 = [v1 alFacePoseVersion];
  if (v72)
  {
    v73 = v72;
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;
  }

  else
  {
    v74 = 0;
    v76 = 0xE000000000000000;
  }

  v77._countAndFlagsBits = v74;
  v77._object = v76;
  String.append(_:)(v77);

  v78._countAndFlagsBits = 0xD000000000000016;
  v78._object = 0x8000000100718260;
  String.append(_:)(v78);
  v79 = [v1 alPadtoolVersion];
  if (v79)
  {
    v80 = v79;
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;
  }

  else
  {
    v81 = 0;
    v83 = 0xE000000000000000;
  }

  v84._countAndFlagsBits = v81;
  v84._object = v83;
  String.append(_:)(v84);

  v85._countAndFlagsBits = 0xD000000000000012;
  v85._object = 0x8000000100718280;
  String.append(_:)(v85);
  v86 = [v1 alPrdVersion];
  if (v86)
  {
    v87 = v86;
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;
  }

  else
  {
    v88 = 0;
    v90 = 0xE000000000000000;
  }

  v91._countAndFlagsBits = v88;
  v91._object = v90;
  String.append(_:)(v91);

  v92._object = 0x80000001007182A0;
  v92._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v92);
  v93 = [v1 didStepUp];
  v94 = v93 == 0;
  if (v93)
  {
    v95 = 1702195828;
  }

  else
  {
    v95 = 0x65736C6166;
  }

  if (v94)
  {
    v96 = 0xE500000000000000;
  }

  else
  {
    v96 = 0xE400000000000000;
  }

  v97 = v96;
  String.append(_:)(*&v95);

  v98._object = 0x80000001007182C0;
  v98._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v98);
  v99 = [v1 plGestureAssessment];
  if (v99)
  {
    v100 = v99;
    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;
  }

  else
  {
    v101 = 0;
    v103 = 0xE000000000000000;
  }

  v104._countAndFlagsBits = v101;
  v104._object = v103;
  String.append(_:)(v104);

  v105._countAndFlagsBits = 0xD000000000000021;
  v105._object = 0x80000001007182F0;
  String.append(_:)(v105);
  v106 = [v1 plAssessment];
  if (v106)
  {
    v107 = v106;
    v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v110 = v109;
  }

  else
  {
    v108 = 0;
    v110 = 0xE000000000000000;
  }

  v111._countAndFlagsBits = v108;
  v111._object = v110;
  String.append(_:)(v111);

  v112._countAndFlagsBits = 0xD000000000000021;
  v112._object = 0x8000000100718320;
  String.append(_:)(v112);
  v113 = [v1 plFacVersion];
  if (v113)
  {
    v114 = v113;
    v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v116;
  }

  else
  {
    v115 = 0;
    v117 = 0xE000000000000000;
  }

  v118._countAndFlagsBits = v115;
  v118._object = v117;
  String.append(_:)(v118);

  v119._countAndFlagsBits = 0xD000000000000026;
  v119._object = 0x8000000100718350;
  String.append(_:)(v119);
  v120 = [v1 plFacePoseVersion];
  if (v120)
  {
    v121 = v120;
    v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = v123;
  }

  else
  {
    v122 = 0;
    v124 = 0xE000000000000000;
  }

  v125._countAndFlagsBits = v122;
  v125._object = v124;
  String.append(_:)(v125);

  v126._countAndFlagsBits = 0xD000000000000025;
  v126._object = 0x8000000100718380;
  String.append(_:)(v126);
  v127 = [v1 plPadtoolVersion];
  if (v127)
  {
    v128 = v127;
    v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v131 = v130;
  }

  else
  {
    v129 = 0;
    v131 = 0xE000000000000000;
  }

  v132._countAndFlagsBits = v129;
  v132._object = v131;
  String.append(_:)(v132);

  v133._countAndFlagsBits = 0xD000000000000021;
  v133._object = 0x80000001007183B0;
  String.append(_:)(v133);
  v134 = [v1 plPrdVersion];
  if (v134)
  {
    v135 = v134;
    v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v138 = v137;
  }

  else
  {
    v136 = 0;
    v138 = 0xE000000000000000;
  }

  v139._countAndFlagsBits = v136;
  v139._object = v138;
  String.append(_:)(v139);

  v140._countAndFlagsBits = 0xD00000000000001BLL;
  v140._object = 0x80000001007183E0;
  String.append(_:)(v140);
  v141 = [v1 shadowLabel];
  if (v141)
  {
    v142 = v141;
    v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v145 = v144;
  }

  else
  {
    v143 = 0;
    v145 = 0xE000000000000000;
  }

  v146._countAndFlagsBits = v143;
  v146._object = v145;
  String.append(_:)(v146);

  v147._object = 0x8000000100718400;
  v147._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v147);
  v148 = [v1 smFacVersion];
  if (v148)
  {
    v149 = v148;
    v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v152 = v151;
  }

  else
  {
    v150 = 0;
    v152 = 0xE000000000000000;
  }

  v153._countAndFlagsBits = v150;
  v153._object = v152;
  String.append(_:)(v153);

  v154._countAndFlagsBits = 0xD000000000000025;
  v154._object = 0x8000000100718430;
  String.append(_:)(v154);
  v155 = [v1 smFacePoseVersion];
  if (v155)
  {
    v156 = v155;
    v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v159 = v158;
  }

  else
  {
    v157 = 0;
    v159 = 0xE000000000000000;
  }

  v160._countAndFlagsBits = v157;
  v160._object = v159;
  String.append(_:)(v160);

  v161._object = 0x8000000100718460;
  v161._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v161);
  v162 = [v1 smPrdVersion];
  if (v162)
  {
    v163 = v162;
    v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v166 = v165;
  }

  else
  {
    v164 = 0;
    v166 = 0xE000000000000000;
  }

  v167._countAndFlagsBits = v164;
  v167._object = v166;
  String.append(_:)(v167);

  v168._countAndFlagsBits = 0xD000000000000024;
  v168._object = 0x8000000100718490;
  String.append(_:)(v168);
  v169 = [v1 smPadtoolVersion];
  if (v169)
  {
    v170 = v169;
    v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v173 = v172;
  }

  else
  {
    v171 = 0;
    v173 = 0xE000000000000000;
  }

  v174._countAndFlagsBits = v171;
  v174._object = v173;
  String.append(_:)(v174);

  v175._countAndFlagsBits = 0xD000000000000028;
  v175._object = 0x80000001007184C0;
  String.append(_:)(v175);
  v176 = [v1 smLivenessAssessment];
  if (v176)
  {
    v177 = v176;
    v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v180 = v179;
  }

  else
  {
    v178 = 0;
    v180 = 0xE000000000000000;
  }

  v181._countAndFlagsBits = v178;
  v181._object = v180;
  String.append(_:)(v181);

  v182._countAndFlagsBits = 0xD000000000000027;
  v182._object = 0x80000001007184F0;
  String.append(_:)(v182);
  v183 = [v1 smGestureAssessment];
  if (v183)
  {
    v184 = v183;
    v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v187 = v186;
  }

  else
  {
    v185 = 0;
    v187 = 0xE000000000000000;
  }

  v188._countAndFlagsBits = v185;
  v188._object = v187;
  String.append(_:)(v188);

  v189._countAndFlagsBits = 0xD000000000000022;
  v189._object = 0x8000000100718520;
  String.append(_:)(v189);
  v190 = [v1 smLivenessType];
  if (v190)
  {
    v191 = v190;
    v192 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v194 = v193;
  }

  else
  {
    v192 = 0;
    v194 = 0xE000000000000000;
  }

  v195._countAndFlagsBits = v192;
  v195._object = v194;
  String.append(_:)(v195);

  v196._countAndFlagsBits = 0xD00000000000001ELL;
  v196._object = 0x8000000100718550;
  String.append(_:)(v196);
  v197 = [v1 fmAssessment];
  if (v197)
  {
    v198 = v197;
    v199 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v201 = v200;
  }

  else
  {
    v199 = 0;
    v201 = 0xE000000000000000;
  }

  v202._countAndFlagsBits = v199;
  v202._object = v201;
  String.append(_:)(v202);

  v203._object = 0x8000000100718570;
  v203._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v203);
  v204 = [v1 fmModelVersion];
  if (v204)
  {
    v205 = v204;
    v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v208 = v207;
  }

  else
  {
    v206 = 0;
    v208 = 0xE000000000000000;
  }

  v209._countAndFlagsBits = v206;
  v209._object = v208;
  String.append(_:)(v209);

  v210._countAndFlagsBits = 0xD000000000000028;
  v210._object = 0x80000001007185A0;
  String.append(_:)(v210);
  v211 = [v1 fmDetectorModelVersion];
  if (v211)
  {
    v212 = v211;
    v213 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v215 = v214;
  }

  else
  {
    v213 = 0;
    v215 = 0xE000000000000000;
  }

  v216._countAndFlagsBits = v213;
  v216._object = v215;
  String.append(_:)(v216);

  v217._countAndFlagsBits = 0xD000000000000024;
  v217._object = 0x80000001007185D0;
  String.append(_:)(v217);
  v218 = [v1 fmSMAssessment];
  if (v218)
  {
    v219 = v218;
    v220 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v222 = v221;
  }

  else
  {
    v220 = 0;
    v222 = 0xE000000000000000;
  }

  v223._countAndFlagsBits = v220;
  v223._object = v222;
  String.append(_:)(v223);

  v224._countAndFlagsBits = 0xD000000000000026;
  v224._object = 0x8000000100718600;
  String.append(_:)(v224);
  v225 = [v1 fmSMModelVersion];
  if (v225)
  {
    v226 = v225;
    v227 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v229 = v228;
  }

  else
  {
    v227 = 0;
    v229 = 0xE000000000000000;
  }

  v230._countAndFlagsBits = v227;
  v230._object = v229;
  String.append(_:)(v230);

  v231._countAndFlagsBits = 0xD00000000000002ELL;
  v231._object = 0x8000000100718630;
  String.append(_:)(v231);
  v232 = [v1 fmSMDetectorModelVersion];
  if (v232)
  {
    v233 = v232;
    v234 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v236 = v235;
  }

  else
  {
    v234 = 0;
    v236 = 0xE000000000000000;
  }

  v237._countAndFlagsBits = v234;
  v237._object = v236;
  String.append(_:)(v237);

  v238._countAndFlagsBits = 0xD000000000000014;
  v238._object = 0x8000000100718660;
  String.append(_:)(v238);
  v239 = [v1 identityType];
  if (v239)
  {
    v240 = v239;
    v241 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v243 = v242;
  }

  else
  {
    v241 = 0;
    v243 = 0xE000000000000000;
  }

  v244._countAndFlagsBits = v241;
  v244._object = v243;
  String.append(_:)(v244);

  return 0;
}

uint64_t sub_10047A054()
{
  swift_defaultActor_initialize();
  v1._countAndFlagsBits = 0x6166346163346664;
  v2._object = 0x80000001007186B0;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  logMilestone(tag:description:)(v1, v2);
  v3 = [objc_opt_self() sharedSubscriber];
  v6[4] = sub_10047BBDC;
  v7 = v0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10047A680;
  v6[3] = &unk_1008122E0;
  v4 = _Block_copy(v6);

  [v3 registerAccountChangeEventHandler:v4];
  _Block_release(v4);

  return v0;
}

uint64_t sub_10047A178(void *a1, int a2, uint64_t a3)
{
  v6 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3;
  v11 = a1;

  sub_1003E653C(0, 0, v8, &unk_1006E55B0, v10);
}

uint64_t sub_10047A2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  return _swift_task_switch(sub_10047A2C4, 0, 0);
}

uint64_t sub_10047A2C4()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
LABEL_7:
    v6 = *(v0 + 8);

    return v6();
  }

  v2 = *(v0 + 48);
  if (v2 != 3)
  {
    if (v2 == 1)
    {
      v3 = v1;
      v4 = swift_task_alloc();
      *(v0 + 32) = v4;
      *v4 = v0;
      v4[1] = sub_10047A428;

      return sub_10047A6F8(v3);
    }

    goto LABEL_7;
  }

  v7 = v1;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *v8 = v0;
  v8[1] = sub_10047A584;

  return sub_10047B104(v7);
}

uint64_t sub_10047A428()
{

  return _swift_task_switch(sub_10047A524, 0, 0);
}

uint64_t sub_10047A524()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10047A584()
{

  return _swift_task_switch(sub_10047BD10, 0, 0);
}

void sub_10047A680(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

uint64_t sub_10047A6F8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for Logger();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_10047A7B8, v1, 0);
}

void sub_10047A7B8(uint64_t a1)
{
  v38 = v1;
  v2 = *(v1 + 80);
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v37 = v8;
    *v7 = 136446210;
    v9 = [v6 accountType];
    v10 = *(v1 + 80);
    if (v9)
    {
      v11 = v9;
      v12 = [v9 identifier];

      if (v12)
      {
        v13 = *(v1 + 104);
        v36 = *(v1 + 112);
        v14 = *(v1 + 96);
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = sub_100141FE4(v15, v17, &v37);

        *(v7 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v4, v5, "Received appleAccountCreated message, of account type %{public}s", v7, 0xCu);
        sub_10000BB78(v8);

        (*(v13 + 8))(v36, v14);
        goto LABEL_6;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }

  v20 = *(v1 + 104);
  v19 = *(v1 + 112);
  v21 = *(v1 + 96);

  (*(v20 + 8))(v19, v21);
LABEL_6:
  type metadata accessor for DIPAccountManager();
  if (static DIPAccountManager.isPrimaryAppleAccount(account:)())
  {
    static DIPAccountManager.sharedInstance.getter();
    sub_10000BA08((v1 + 16), *(v1 + 40));
    dispatch thunk of DIPAccountManagerProtocol.reloadPrimaryAccount()();
    sub_10000BB78((v1 + 16));
    if (qword_100832B40 != -1)
    {
      swift_once();
    }

    v22 = swift_task_alloc();
    *(v1 + 120) = v22;
    *v22 = v1;
    v22[1] = sub_10047AC88;

    sub_100024CD8();
    return;
  }

  v23 = [*(v1 + 80) accountType];
  if (!v23)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = [v23 identifier];

  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_19;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v28)
  {
LABEL_19:

    goto LABEL_20;
  }

  if (v26 == v29 && v28 == v30)
  {

LABEL_24:
    if (qword_100832D40 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v33 = qword_100882578;
    v34 = unk_100882580;
    *(v1 + 128) = qword_100882578;
    *(v1 + 136) = v34;

    v35 = swift_task_alloc();
    *(v1 + 144) = v35;
    *v35 = v1;
    v35[1] = sub_10047AFB4;

    sub_1006802D4(0, v33, v34);
    return;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v32)
  {
    goto LABEL_24;
  }

LABEL_20:

  v31 = *(v1 + 8);

  v31();
}

uint64_t sub_10047AC88()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_10047AD98, v1, 0);
}

id sub_10047AD98()
{
  result = [*(v0 + 80) accountType];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result identifier];

  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_11;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v6)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v4 == v7 && v6 == v8)
  {

LABEL_16:
    if (qword_100832D40 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = qword_100882578;
    v13 = unk_100882580;
    *(v0 + 128) = qword_100882578;
    *(v0 + 136) = v13;

    v14 = swift_task_alloc();
    *(v0 + 144) = v14;
    *v14 = v0;
    v14[1] = sub_10047AFB4;

    return sub_1006802D4(0, v12, v13);
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_16;
  }

LABEL_12:

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10047AFB4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10047B104(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10047B1F4, v1, 0);
}

void sub_10047B1F4(uint64_t a1)
{
  v38 = v1;
  v2 = *(v1 + 16);
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v37 = v8;
    *v7 = 136446210;
    v9 = [v6 accountType];
    v10 = *(v1 + 16);
    if (v9)
    {
      v11 = v9;
      v12 = [v9 identifier];

      if (v12)
      {
        v36 = *(v1 + 80);
        v14 = *(v1 + 32);
        v13 = *(v1 + 40);
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = sub_100141FE4(v15, v17, &v37);

        *(v7 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v4, v5, "Received appleAccountDeleted message, of account type %{public}s", v7, 0xCu);
        sub_10000BB78(v8);

        v19 = *(v13 + 8);
        v19(v36, v14);
        goto LABEL_6;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
    return;
  }

  v20 = *(v1 + 80);
  v21 = *(v1 + 32);
  v22 = *(v1 + 40);

  v19 = *(v22 + 8);
  v19(v20, v21);
LABEL_6:
  *(v1 + 88) = v19;
  type metadata accessor for DIPAccountManager();
  if (static DIPAccountManager.isPrimaryAppleAccount(account:)())
  {
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "User logged out of primary Apple Account, cleaning up state", v25, 2u);
    }

    v26 = *(v1 + 72);
    v27 = *(v1 + 32);

    v19(v26, v27);
    if (qword_100832CA8 != -1)
    {
      swift_once();
    }

    v28 = qword_1008823D8;
    v29 = swift_task_alloc();
    *(v1 + 96) = v29;
    *v29 = v1;
    v29[1] = sub_10047B654;

    sub_100589394(&off_1007FC060, v28);
  }

  else
  {
    defaultLogger()();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Account is not the primary Apple Account, disregarding", v32, 2u);
    }

    v33 = *(v1 + 48);
    v34 = *(v1 + 32);

    v19(v33, v34);

    v35 = *(v1 + 8);

    v35();
  }
}

uint64_t sub_10047B654()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10047B764, v1, 0);
}

uint64_t sub_10047B764()
{
  v1 = [*(v0 + 16) aa_personID];
  if (!v1)
  {
    defaultLogger()();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 88);
    v12 = *(v0 + 64);
    v13 = *(v0 + 32);
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Account DSID is nil, unable to deregister push notifications", v14, 2u);
    }

    v11(v12, v13);
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Done cleaning up state after user logout; terminating process", v17, 2u);
    }

    v18 = *(v0 + 88);
    v19 = *(v0 + 56);
    v20 = *(v0 + 32);

    v18(v19, v20);
    exit(0);
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 104) = v5;
  if (qword_100832B40 != -1)
  {
    swift_once();
  }

  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_10047B9BC;

  return sub_10002543C(v3, v5);
}

uint64_t sub_10047B9BC()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10047BAE8, v1, 0);
}

void sub_10047BAE8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done cleaning up state after user logout; terminating process", v4, 2u);
  }

  v5 = v1[11];
  v6 = v1[7];
  v7 = v1[4];

  v5(v6, v7);
  exit(0);
}

uint64_t sub_10047BBE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10047BBFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10047BC44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100027B9C;

  return sub_10047A2A0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10047BD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = *(a2 - 8);
  v9 = swift_task_alloc();
  v4[4] = v9;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_10047BE38;

  return Task.value.getter(v9, a1, a2, a3, a4);
}

uint64_t sub_10047BE38()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_10047BFC8;
  }

  else
  {
    (*(v2[3] + 8))(v2[4], v2[2]);
    v3 = sub_10047BF64;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10047BF64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10047BFC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10047C040(void *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  *v5 = v2;
  v5[1] = sub_100027B9C;

  return sub_10047BD14(v4, v6, v7, v8);
}

uint64_t sub_10047C0E0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  defaultLogger()();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    sub_100020260(v1 + 16, v14);
    sub_100007224(&unk_100845310, &unk_1006E6D00);
    v10 = String.init<A>(describing:)();
    v12 = sub_100141FE4(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "AnyTaskBox deiniting %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v3 + 8))(v5, v2);
  sub_10000BB78((v1 + 16));
  return v1;
}

uint64_t sub_10047C2C4()
{
  sub_10047C0E0();

  return swift_deallocClassInstance();
}

uint64_t sub_10047C318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_10047C33C, 0, 0);
}

uint64_t sub_10047C33C()
{
  v1 = v0[4];
  v2 = v0[3] + 16;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_10047C450;
  v6 = v0[2];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v6, &unk_1006E5690);
}

uint64_t sub_10047C450()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10047C598, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10047C598()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10047C604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return _swift_task_switch(sub_10047C628, 0, 0);
}

uint64_t sub_10047C628()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  v3 = *v1;
  v0[10] = *v1;
  v0[5] = v3;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *(v4 + 16) = v2;

  v5 = swift_task_alloc();
  v0[12] = v5;
  v6 = sub_100007224(&qword_100845308, &qword_1006E56A8);
  v7 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v5 = v0;
  v5[1] = sub_10047C788;
  v8 = v0[7];

  return __s13CoreIDVShared20withExtendedLifetimeyq0_x_q0_yYaYbq_YKXEtYaq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, v0 + 5, &unk_1006E56A0, v4, v6, v7, &type metadata for () + 8, &protocol self-conformance witness table for Error);
}

uint64_t sub_10047C788()
{
  v2 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_10047C8E8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10047C8E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10047C94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_10047C96C, 0, 0);
}

uint64_t sub_10047C96C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000BA08(v1, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_10047CA90;

  return v6(v2, v3);
}

uint64_t sub_10047CA90()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10047CBC4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10047CBE8()
{
  swift_weakDestroy();
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10047CC44(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027B9C;

  return sub_10047C604(a1, v5, v4);
}

uint64_t sub_10047CCF0()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000BA08(v1, v2);
  return (*(v3 + 8))(v2, v3);
}

uint64_t sub_10047CD44(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100041F04;

  return sub_10047C94C(a1, v6, a2);
}

NSObject *sub_10047CDF4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(NSXPCListener);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithMachServiceName:v6];

  *&v0[OBJC_IVAR____TtC8coreidvd26DIDocUploadSessionListener_xpcListener] = v7;
  v8 = type metadata accessor for DIDocUploadSessionListener();
  v18.receiver = v0;
  v18.super_class = v8;
  v9 = objc_msgSendSuper2(&v18, "init");
  v10 = OBJC_IVAR____TtC8coreidvd26DIDocUploadSessionListener_xpcListener;
  v11 = *&v9[OBJC_IVAR____TtC8coreidvd26DIDocUploadSessionListener_xpcListener];
  v12 = v9;
  [v11 setDelegate:v12];
  [*&v9[v10] resume];
  defaultLogger()();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "DIDocUploadSessionListener started.", v15, 2u);

    v16 = v12;
  }

  else
  {
    v16 = v13;
    v13 = v12;
  }

  (*(v2 + 8))(v4, v1);
  return v12;
}

uint64_t sub_10047D0A0(const char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a1, v8, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_10047D294(uint64_t (*a1)(void), const char *a2, uint64_t (*a3)(uint64_t))
{
  v7 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = a1();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, a2, v14, 2u);
  }

  v15 = (*(v9 + 8))(v11, v8);
  v16 = a3(v15);
  v18.receiver = v7;
  v18.super_class = v16;
  return objc_msgSendSuper2(&v18, "dealloc");
}

uint64_t sub_10047D48C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10047D550, 0, 0);
}

uint64_t sub_10047D550(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DIDocUploadSessionProxy: uploadDocData", v4, 2u);
  }

  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[5];

  (*(v6 + 8))(v5, v7);
  sub_10047E0C8();
  v1[8] = *(v1[4] + OBJC_IVAR____TtC8coreidvd23DIDocUploadSessionProxy_docUploadHandler);

  v8 = swift_task_alloc();
  v1[9] = v8;
  *v8 = v1;
  v8[1] = sub_10047D73C;
  v10 = v1[2];
  v9 = v1[3];

  return sub_100045AB8(v10, v9);
}

uint64_t sub_10047D73C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 80) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_10047D8A0, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_10047D8A0()
{

  sub_10047ECE8(*(v0 + 80), 0xD000000000000020, 0x80000001007189F0, 96);
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10047DAEC(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  sub_10001F8D4(0, &qword_100845400, DIUploadAsset_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4[5] = v7;
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_10047DBE4;

  return sub_10047D48C(v7, v8);
}

uint64_t sub_10047DBE4(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 24);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (v4)
  {
    v11 = _convertErrorToNSError(_:)();

    v12 = v11;
    v13 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10000B90C(a1, a2);
    v13 = isa;
    v12 = 0;
    v11 = isa;
  }

  v15 = *(v7 + 32);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  v16 = *(v10 + 8);

  return v16();
}

uint64_t sub_10047DDB4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  __chkstk_darwin(v2);
  v4 = &v9 - v3;
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "DIDocUploadSessionProxy: cancelUploads", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  sub_10047E0C8();

  sub_100047668();
}

void sub_10047E0C8()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v33 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v32 = v1;
    v28 = v14;
    v35 = v14;
    *v13 = 136315138;
    Strong = swift_unknownObjectWeakLoadStrong();
    v29 = v5;
    v16 = Strong;
    v34 = Strong;
    sub_100007224(&unk_100845850, &qword_1006E5A50);
    v30 = v9;
    v17 = Optional.debugDescription.getter();
    v18 = v3;
    v20 = v19;

    v21 = sub_100141FE4(v17, v20, &v35);
    v3 = v18;

    *(v13 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v10, v11, "DIDocUploadSessionProxy.checkEntitlement: Checking connection %s", v13, 0xCu);
    sub_10000BB78(v28);

    v2 = v31;

    (*(v6 + 8))(v8, v29);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    v24._countAndFlagsBits = 0xD000000000000022;
    v24._object = 0x8000000100718920;
    if (NSXPCConnection.isEntitled(_:)(v24))
    {
      v25._countAndFlagsBits = 0x3931363136363933;
      v26._countAndFlagsBits = 0xD000000000000055;
      v26._object = 0x8000000100718990;
      v25._object = 0xE800000000000000;
      logMilestone(tag:description:)(v25, v26);
    }

    else
    {
      (*(v3 + 104))(v33, enum case for DIPError.Code.missingEntitlement(_:), v2);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    (*(v3 + 104))(v33, enum case for DIPError.Code.missingEntitlement(_:), v2);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

id sub_10047E5E0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Creating DIDocUploadSessionProxy", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  result = os_transaction_create();
  if (result)
  {
    *&v2[OBJC_IVAR____TtC8coreidvd23DIDocUploadSessionProxy_jetsamTransaction] = result;
    swift_unknownObjectWeakAssign();
    type metadata accessor for DocUploadHandler();
    v11 = swift_allocObject();
    type metadata accessor for DocUploadHandler.UploadRequestTracker();
    v12 = swift_allocObject();
    sub_100007224(&qword_100845418, &qword_1006E5718);
    v13 = swift_allocObject();
    *(v13 + 24) = 0;
    *(v13 + 16) = _swiftEmptyArrayStorage;
    *(v12 + 16) = v13;
    *(v11 + 16) = v12;
    *&v2[OBJC_IVAR____TtC8coreidvd23DIDocUploadSessionProxy_docUploadHandler] = v11;
    v14 = type metadata accessor for DIDocUploadSessionProxy();
    v15.receiver = v2;
    v15.super_class = v14;
    return objc_msgSendSuper2(&v15, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10047E7FC(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &aBlock - v7;
  defaultLogger()();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = [v9 processIdentifier];

    _os_log_impl(&_mh_execute_header, v10, v11, "DIDocUploadSessionListener connection received from %d.", v12, 8u);
  }

  else
  {

    v10 = v9;
  }

  v13 = *(v3 + 8);
  v13(v8, v2);
  sub_1004CFB84();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006BF740;
  *(v14 + 32) = sub_10001F8D4(0, &qword_100845408, NSArray_ptr);
  *(v14 + 40) = sub_10001F8D4(0, &qword_100845400, DIUploadAsset_ptr);
  v15 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___DIDocUploadSessionXPCProtocol];
  [v9 setExportedInterface:v15];

  v16 = [v9 exportedInterface];
  if (v16)
  {
    v17 = v16;
    NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();
  }

  sub_1004CFB84();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1006BF520;
  *(v18 + 32) = sub_10001F8D4(0, &qword_100845410, DIDocUploadSettings_ptr);
  v19 = [v9 exportedInterface];
  if (v19)
  {
    v20 = v19;
    NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)();
  }

  defaultLogger()();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "DIDocUploadSessionListener: Set allowed classes on listener. ***", v23, 2u);
  }

  v13(v6, v2);
  v24 = objc_allocWithZone(type metadata accessor for DIDocUploadSessionProxy());
  v25 = v9;
  v26 = sub_10047E5E0(v25);

  [v25 setExportedObject:v26];
  v34 = sub_10047D088;
  v35 = 0;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100503A7C;
  v33 = &unk_1008123D0;
  v27 = _Block_copy(&aBlock);
  [v25 setInvalidationHandler:v27];
  _Block_release(v27);
  v34 = sub_10047D094;
  v35 = 0;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100503A7C;
  v33 = &unk_1008123F8;
  v28 = _Block_copy(&aBlock);
  [v25 setInterruptionHandler:v28];
  _Block_release(v28);
  [v25 resume];
  return 1;
}

uint64_t sub_10047ECE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[1] = a4;
  v20[2] = a2;
  v20[0] = a1;
  v21 = type metadata accessor for Logger();
  v4 = *(v21 - 8);
  __chkstk_darwin(v21);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError.Code();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPError();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, enum case for DIPError.Code.internalError(_:), v7);

  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  v15 = *(v12 + 16);
  v15(v16, v14, v11);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v4 + 8))(v6, v21);

  swift_allocError();
  v15(v17, v14, v11);
  sub_10001F8D4(0, &qword_1008453F0, NSError_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = static NSError.mapFromError(_:domain:mapper:)();

  (*(v12 + 8))(v14, v11);

  return v18;
}

uint64_t sub_10047F070()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10047F0C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100027B9C;

  return sub_10047DAEC(v2, v3, v5, v4);
}

uint64_t sub_10047F184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_10047F1A8(_OWORD *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  machServiceDigitalPresentmentXPC.getter();
  v7 = objc_allocWithZone(NSXPCListener);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 initWithMachServiceName:v8];

  *&v1[OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_xpcListener] = v9;
  v10 = &v1[OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_digitalPresentmentEnvironment];
  v11 = a1[5];
  *(v10 + 4) = a1[4];
  *(v10 + 5) = v11;
  *(v10 + 6) = a1[6];
  v12 = a1[1];
  *v10 = *a1;
  *(v10 + 1) = v12;
  v13 = a1[3];
  *(v10 + 2) = a1[2];
  *(v10 + 3) = v13;
  sub_100484954(a1, v24);
  v14 = type metadata accessor for DigitalPresentmentListener();
  v23.receiver = v1;
  v23.super_class = v14;
  v15 = objc_msgSendSuper2(&v23, "init");
  v16 = OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_xpcListener;
  v17 = *(v15 + OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_xpcListener);
  v18 = v15;
  [v17 setDelegate:v18];
  [*(v15 + v16) resume];
  defaultLogger()();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Digital presentment XPC listener is started", v21, 2u);

    sub_1004849B0(a1);
  }

  else
  {

    sub_1004849B0(a1);
  }

  (*(v4 + 8))(v6, v3);
  return v18;
}

id sub_10047F3F8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Digital presentment listener is tearing down", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  [*&v1[OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_xpcListener] invalidate];
  v9 = type metadata accessor for DigitalPresentmentListener();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_10047F684(const char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, a1, v8, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

void *sub_10047F874()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Destroying DigitalPresentmentSessionProxy", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  swift_unknownObjectWeakDestroy();

  v9 = v1[16];
  v10 = v1[17];
  v11 = v1[18];
  v12 = v1[19];
  v13 = v1[20];
  v14 = v1[21];
  v15 = v1[22];
  v16 = v1[23];
  v17 = v1[24];
  v18 = v1[25];
  v20 = v1[26];
  v19 = v1[27];
  v21 = v1[29];
  v26 = v1[28];
  v24 = v19;
  v25 = v21;
  sub_10001FE8C(v9, v10);
  sub_10001FE8C(v11, v12);
  sub_10001FE8C(v13, v14);
  sub_10001FE8C(v15, v16);
  sub_10001FE8C(v17, v18);
  sub_10001FE8C(v20, v24);
  sub_10001FE8C(v26, v25);
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_10047FA58()
{
  sub_10047F874();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10047FA84(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for DIPError();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for IdentityDocumentCompoundDescriptor();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_10047FC70, v1, 0);
}

uint64_t sub_10047FC70(uint64_t a1)
{
  v2 = v1[5];
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "DigitalPresentmentSessionProxy canRequestDocument %@", v7, 0xCu);
    sub_10000BE18(v8, &unk_100833B50, &unk_1006D8FB0);
  }

  v10 = v1[20];
  v11 = v1[16];
  v12 = v1[17];

  v13 = *(v12 + 8);
  v1[21] = v13;
  v1[22] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v11);
  sub_10048241C();
  XPCIdentityDocumentCompoundDescriptor.value.getter();
  v14 = swift_task_alloc();
  v1[23] = v14;
  *v14 = v1;
  v14[1] = sub_1004800AC;
  v15 = v1[15];

  return sub_100138C78(v15);
}

uint64_t sub_1004800AC(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[4] = v1;
  *(v4 + 24) = a1;
  v4[2] = v2;
  v5 = v3[15];
  v6 = v3[14];
  v7 = v3[13];
  v4[24] = v1;

  (*(v6 + 8))(v5, v7);
  v8 = v3[6];
  if (v1)
  {
    v9 = sub_100480398;
  }

  else
  {
    v9 = sub_100480240;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100480240(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentSessionProxy canRequestDocument returning successfully", v4, 2u);
  }

  v10 = *(v1 + 24);
  v5 = *(v1 + 168);
  v6 = *(v1 + 152);
  v7 = *(v1 + 128);

  v5(v6, v7);

  v8 = *(v1 + 8);

  return v8(v10);
}

uint64_t sub_100480398()
{
  v12 = v0[21];
  v1 = v0[18];
  v11 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10048349C(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v12(v1, v11);

  v7 = swift_allocError();
  v5(v8, v2, v4);
  sub_100175618(v7);

  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_1004807C0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100480884;

  return sub_10047FA84(v5);
}

uint64_t sub_100480884(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100480A38(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for DIPError();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100480C00, v1, 0);
}

uint64_t sub_100480C00(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentSessionProxy present (callback)", v4, 2u);
  }

  v5 = v1[16];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[4];

  v9 = *(v7 + 8);
  v1[17] = v9;
  v9(v5, v6);
  if (*(v8 + 248))
  {
    v10 = *(v1[9] + 104);
    v10(v1[10], enum case for DIPError.Code.digitalPresentmentRequestAlreadyInProgress(_:), v1[8]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_10048349C(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v11 = v1[14];
    v38 = v1[12];
    v39 = v1[17];
    v12 = v1[7];
    v13 = v1[5];
    v14 = v1[6];
    v10(v1[10], enum case for DIPError.Code.internalError(_:), v1[8]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_allocError();
    v15 = *(v14 + 16);
    v15(v16, v12, v13);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    v39(v11, v38);

    v17 = swift_allocError();
    v15(v18, v12, v13);
    sub_100175618(v17);

    swift_willThrow();

    (*(v14 + 8))(v12, v13);

    v19 = v1[1];

    return v19();
  }

  else
  {
    v21 = v1[11];
    v23 = v1[3];
    v22 = v1[4];
    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
    v26 = sub_10048349C(&qword_100845570, v25, type metadata accessor for DigitalPresentmentSessionProxy, &unk_1006E57B0);
    v27 = swift_allocObject();
    v27[2] = v22;
    v27[3] = v26;
    v27[4] = v22;
    v27[5] = v23;
    swift_retain_n();
    v28 = v23;
    v29 = sub_100130C34(0, 0, v21, &unk_1006E57E8, v27);
    v1[18] = v29;
    *(v8 + 248) = v29;

    defaultLogger()();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "DigitalPresentmentSessionProxy requestDocument returning successfully", v32, 2u);
    }

    v33 = v1[15];
    v34 = v1[12];

    v9(v33, v34);
    v35 = swift_task_alloc();
    v1[19] = v35;
    v36 = type metadata accessor for DigitalPresentmentResponse();
    v37 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
    *v35 = v1;
    v35[1] = sub_100481234;

    return Task.value.getter(v1 + 2, v29, v36, v37, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_100481234()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_100481424;
  }

  else
  {
    v4 = sub_100481360;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100481360()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100481424()
{
  v1 = v0[9];

  v2 = v0[14];
  v12 = v0[12];
  v13 = v0[17];
  v3 = v0[7];
  v5 = v0[5];
  v4 = v0[6];
  (*(v1 + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10048349C(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v6 = *(v4 + 16);
  v6(v7, v3, v5);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v13(v2, v12);

  v8 = swift_allocError();
  v6(v9, v3, v5);
  sub_100175618(v8);

  swift_willThrow();

  (*(v4 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1004816D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_1004816F4, a4, 0);
}

uint64_t sub_1004816F4(uint64_t a1)
{
  sub_10048241C();
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_1004817EC;
  v3 = *(v1 + 32);

  return sub_100139FD8(v3);
}

uint64_t sub_1004817EC(uint64_t a1)
{
  v4 = *v2;
  v4[6] = v1;

  v5 = v4[3];
  if (v1)
  {
    v6 = sub_10048199C;
  }

  else
  {
    v4[7] = a1;
    v6 = sub_100481928;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100481928()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = *(v0 + 56);
  *(v1 + 248) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10048199C()
{
  *(*(v0 + 24) + 248) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100481B94(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100481C58;

  return sub_100480A38(v5);
}

uint64_t sub_100481C58(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 32);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 32), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_100481E14()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100481ED4, v0, 0);
}

uint64_t sub_100481ED4(uint64_t a1)
{
  v13 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100141FE4(0x65526C65636E6163, 0xEF29287473657571, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "DigitalPresentmentSessionProxy %s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);
  if (*(v1[2] + 248))
  {
    type metadata accessor for DigitalPresentmentResponse();

    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    Task.cancel()();
  }

  v10 = v1[1];

  return v10();
}

uint64_t sub_100482234(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004822DC;

  return sub_100481E14();
}

uint64_t sub_1004822DC()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v1[2](v1, 0);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

void sub_10048241C()
{
  v0 = type metadata accessor for DIPError.Code();
  v37 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Logger();
  v3 = *(v38 - 8);
  v4 = __chkstk_darwin(v38);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v33 - v7;
  v9 = [objc_opt_self() standardUserDefaults];
  v10._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceDigitalPresentmentFirstParty.getter();
  v11 = NSUserDefaults.internalBool(forKey:)(v10);

  if (v11)
  {
    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Forcing digital presentment entitlement due to user defaults setting", v14, 2u);
    }

    (*(v3 + 8))(v8, v38);
  }

  else
  {
    v36 = v0;
    defaultLogger()();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    v17 = os_log_type_enabled(v15, v16);
    v35 = v2;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v41 = v34;
      *v18 = 136315138;
      Strong = swift_unknownObjectWeakLoadStrong();
      v40 = Strong;
      sub_100007224(&unk_100845850, &qword_1006E5A50);
      v20 = Optional.debugDescription.getter();
      v22 = v21;

      v23 = sub_100141FE4(v20, v22, &v41);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "Checking connection %s", v18, 0xCu);
      sub_10000BB78(v34);
    }

    (*(v3 + 8))(v6, v38);
    v24 = swift_unknownObjectWeakLoadStrong();
    v25 = v36;
    if (v24)
    {
      v26 = v24;
      v27._countAndFlagsBits = 0xD00000000000002FLL;
      v27._object = 0x8000000100718CB0;
      if (!NSXPCConnection.isEntitled(_:)(v27) && (v28._countAndFlagsBits = 0xD000000000000026, v28._object = 0x8000000100718CE0, !NSXPCConnection.isEntitled(_:)(v28)) || (v29._countAndFlagsBits = 0xD000000000000044, v29._object = 0x8000000100718D50, !NSXPCConnection.isEntitled(_:)(v29)) && (v30._countAndFlagsBits = 0xD000000000000030, v30._object = 0x8000000100718DA0, !NSXPCConnection.isEntitled(_:)(v30)))
      {
        (*(v37 + 104))(v35, enum case for DIPError.Code.missingEntitlement(_:), v25);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10048349C(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        v32 = swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        v39 = v32;
        swift_willThrow();
      }
    }

    else
    {
      (*(v37 + 104))(v35, enum case for DIPError.Code.missingEntitlement(_:), v36);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10048349C(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v31 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v39 = v31;
      swift_willThrow();
    }
  }
}

uint64_t sub_100482B14(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v78 = a5;
  v79 = a6;
  v12 = type metadata accessor for DateProvider();
  v75 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v71 - v16;
  v76 = type metadata accessor for WalletPassPresentmentInternalSettingsProvider(0);
  __chkstk_darwin(v76);
  v77 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104[3] = type metadata accessor for DigitalPresentmentRequestValidator();
  v104[4] = &off_100809E20;
  v104[0] = a3;
  swift_defaultActor_initialize();
  *(a7 + 328) = 0;
  v19 = *(a1 + 80);
  *(a7 + 176) = *(a1 + 64);
  *(a7 + 192) = v19;
  *(a7 + 208) = *(a1 + 96);
  v20 = *(a1 + 16);
  *(a7 + 112) = *a1;
  *(a7 + 128) = v20;
  v21 = *(a1 + 48);
  *(a7 + 144) = *(a1 + 32);
  *(a7 + 160) = v21;
  v22 = *a2;
  v23 = a2[1];
  v24 = a2[3];
  *(a7 + 296) = a2[2];
  *(a7 + 312) = v24;
  *(a7 + 264) = v22;
  *(a7 + 280) = v23;
  v25 = *(a1 + 80);
  if (v25)
  {
    v26 = *(a1 + 88);
    sub_100484954(a1, &v98);
    sub_100484954(a1, &v98);
    v27 = sub_10001F640(v25, v26);
    v25(&v101, v27);
    sub_10001FE8C(v25, v26);
  }

  else
  {
    v102 = &type metadata for DigitalPresentmentDeveloperTestModeHelper;
    v103 = &off_100809B88;
    v28 = swift_allocObject();
    *&v101 = v28;
    v28[5] = type metadata accessor for DeviceInformationProvider();
    v28[6] = &protocol witness table for DeviceInformationProvider;
    sub_100032DBC(v28 + 2);
    sub_100484954(a1, &v98);
    sub_100484954(a1, &v98);
    DeviceInformationProvider.init()();
    type metadata accessor for UserDefaultsConfiguration();
    v28[7] = static UserDefaultsConfiguration.standard.getter();
  }

  sub_10001F358(&v101, a7 + 336);
  sub_100020260(a7 + 336, &v101);
  sub_10000BA08(&v101, v102);
  v29 = sub_100134AD0();
  sub_100020260(a7 + 336, &v95);
  sub_10000BA08(&v95, *(&v96 + 1));
  if (sub_100134AD0())
  {
    v30 = 0xED0000747365742DLL;
  }

  else
  {
    v30 = 0xE800000000000000;
  }

  v31 = *a1;
  if (*a1)
  {
    v32 = *(a1 + 8);

    v31(&v98, v33);
    sub_1004849B0(a1);
    sub_10001FE8C(v31, v32);
  }

  else
  {
    v34 = type metadata accessor for DigitalPresentmentSessionManager();
    swift_allocObject();
    v35 = sub_10015D65C(v29 & 1, 0x797469746E656469, v30, 1);
    v99 = v34;
    v100 = &off_100809E48;
    sub_1004849B0(a1);
    *&v98 = v35;
  }

  sub_10000BB78(&v95);
  sub_10000BB78(&v101);
  sub_10001F358(&v98, a7 + 224);
  v36 = type metadata accessor for BiometricsHelper();
  swift_allocObject();
  v37 = BiometricsHelper.init()();
  *(a7 + 400) = v36;
  *(a7 + 408) = &protocol witness table for BiometricsHelper;
  *(a7 + 376) = v37;
  sub_100020260(v104, a7 + 416);
  v38 = v78;
  v39 = v79;
  *(a7 + 456) = a4;
  *(a7 + 464) = v38;
  sub_100484A5C(v39, &v101);
  if (v102)
  {
    sub_10000BE18(v39, &qword_100843230, &qword_1006E0DC0);
    sub_1004849B0(a1);
    sub_10000BB78(v104);
    sub_10001F358(&v101, &v98);
  }

  else
  {
    sub_10000BE18(&v101, &qword_100843230, &qword_1006E0DC0);
    sub_100020260(a7 + 224, &v98);
    type metadata accessor for PassManager();
    v78 = swift_allocObject();
    v74 = type metadata accessor for DigitalPresentmentLocalAuthenticationManager();
    v73 = type metadata accessor for DigitalPresentmentUIPresenter();
    v40 = v77;
    DeviceInformationProvider.init()();
    v102 = type metadata accessor for DeviceInformationProvider();
    v103 = &protocol witness table for DeviceInformationProvider;
    sub_100032DBC(&v101);
    DeviceInformationProvider.init()();
    type metadata accessor for KRLTrustValidator();
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    swift_allocObject();
    v41 = sub_10010F338();

    DateProvider.init()();
    v42 = v75;
    (v75[2])(v15, v17, v12);
    v43 = sub_1003A0748(&v95, v41, v15);

    (v42[1])(v17, v12);
    v44 = sub_10001F370(&v98, v99);
    v75 = v71;
    __chkstk_darwin(v44);
    v46 = (v71 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))(v46);
    v48 = *v46;
    v49 = type metadata accessor for DigitalPresentmentSessionManager();
    *(&v96 + 1) = v49;
    v97 = &off_100809E48;
    *&v95 = v48;
    v93 = v76;
    v94 = &off_100810218;
    v50 = sub_100032DBC(v92);
    sub_1003EADF0(v40, v50);
    v51 = type metadata accessor for PresentmentKeyRevocationValidator();
    v90 = v51;
    v91 = &off_100809510;
    v89[0] = v43;
    v72 = type metadata accessor for WalletPassPresentmentManager();
    v52 = swift_allocObject();
    v53 = sub_10001F370(&v95, v49);
    v71[2] = v71;
    __chkstk_darwin(v53);
    v55 = (v71 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v56 + 16))(v55);
    v57 = sub_10001F370(v92, v93);
    v71[1] = v71;
    __chkstk_darwin(v57);
    v59 = v71 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v60 + 16))(v59);
    v61 = sub_10001F370(v89, v90);
    v71[0] = v71;
    __chkstk_darwin(v61);
    v63 = (v71 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v64 + 16))(v63);
    v65 = *v55;
    v66 = *v63;
    v87 = v49;
    v88 = &off_100809E48;
    *&v86 = v65;
    v84 = v76;
    v85 = &off_100810218;
    v67 = sub_100032DBC(&v83);
    sub_1003EAE54(v59, v67);
    v81 = v51;
    v82 = &off_100809510;
    *&v80 = v66;
    swift_defaultActor_initialize();
    sub_1003EAEB8(v77);
    *(v52 + 272) = 0u;
    *(v52 + 288) = 0u;
    *(v52 + 304) = 0;
    sub_10001F358(&v86, v52 + 112);
    v68 = v74;
    *(v52 + 152) = v78;
    *(v52 + 160) = v68;
    v69 = v73;
    *(v52 + 168) = &off_100809DF0;
    *(v52 + 176) = v69;
    *(v52 + 184) = &off_100809F18;
    sub_10001F358(&v83, v52 + 192);
    sub_10001F358(&v101, v52 + 232);
    sub_10001F358(&v80, v52 + 312);
    sub_10000BB78(v89);
    sub_10000BB78(v92);
    sub_10000BB78(&v95);
    sub_10000BB78(&v98);
    v99 = v72;
    v100 = &off_100810230;
    sub_1004849B0(a1);
    *&v98 = v52;
    sub_10000BE18(v79, &qword_100843230, &qword_1006E0DC0);
    sub_10000BB78(v104);
  }

  sub_10001F358(&v98, a7 + 472);
  return a7;
}

uint64_t sub_10048349C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1004834E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10048352C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027B9C;

  return sub_1004816D0(a1, v4, v5, v7, v6);
}

uint64_t sub_1004835EC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10048362C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100027B9C;

  return sub_100482234(v2, v3);
}

uint64_t sub_1004836E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_100481B94(v2, v3, v4);
}

uint64_t sub_100483794()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_1004807C0(v2, v3, v4);
}

char *sub_100483848()
{
  v0 = type metadata accessor for Logger();
  v65 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v3 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v6 = &v63 - v5;
  v7 = __chkstk_darwin(v4);
  v9 = &v63 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v63 - v11;
  __chkstk_darwin(v10);
  v14 = &v63 - v13;
  v15._countAndFlagsBits = 0xD000000000000044;
  v15._object = 0x8000000100718D50;
  v16 = NSXPCConnection.getArrayEntitlement(name:)(v15);
  v63 = v0;
  v64 = v3;
  if (v16)
  {
    v17 = v16;
    defaultLogger()();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v66 = v21;
      *v20 = 136315138;
      v22 = Array.description.getter();
      v24 = sub_100141FE4(v22, v23, &v66);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Using external merchants entitlement, values: %s", v20, 0xCu);
      sub_10000BB78(v21);
      v0 = v63;
    }

    v25 = *(v65 + 8);
    v25(v14, v0);
  }

  else
  {
    v26._countAndFlagsBits = 0xD000000000000030;
    v26._object = 0x8000000100718DA0;
    v27 = NSXPCConnection.getArrayEntitlement(name:)(v26);
    if (v27)
    {
      v17 = v27;
      defaultLogger()();

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v66 = v31;
        *v30 = 136315138;
        v32 = Array.description.getter();
        v34 = v6;
        v35 = sub_100141FE4(v32, v33, &v66);
        v0 = v63;

        *(v30 + 4) = v35;
        v6 = v34;
        _os_log_impl(&_mh_execute_header, v28, v29, "Using internal merchants entitlement, values: %s", v30, 0xCu);
        sub_10000BB78(v31);
      }

      v25 = *(v65 + 8);
      v25(v12, v0);
    }

    else
    {
      defaultLogger()();
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "No merchants entitlement is present, defaulting to empty value", v62, 2u);
      }

      v25 = *(v65 + 8);
      v25(v9, v0);
      v17 = _swiftEmptyArrayStorage;
    }
  }

  v36._countAndFlagsBits = 0xD00000000000002FLL;
  v36._object = 0x8000000100718CB0;
  v37 = NSXPCConnection.getDictionaryOfStringArraysEntitlement(name:)(v36);
  if (v37)
  {
    v38 = sub_1001292C4(v37, v17);
    v40 = v39;
    v42 = v41;

    v17 = v42;
  }

  else
  {
    v43._object = 0x8000000100718CE0;
    v43._countAndFlagsBits = 0xD000000000000026;
    if (NSXPCConnection.isEntitled(_:)(v43))
    {
      sub_100007224(&qword_100842988, &unk_1006E5850);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1006BF740;
      *(inited + 32) = 256;
      v38 = sub_1003C5778(1, 3, 1, inited);
      *(v38 + 2) = 3;
      v38[34] = 2;

      v40 = &off_1007FB160;
    }

    else
    {

      defaultLogger()();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "No digital presentment entitlement is present, defaulting to empty value", v47, 2u);
      }

      v25(v6, v0);
      v38 = _swiftEmptyArrayStorage;
      v40 = _swiftEmptyArrayStorage;
      v17 = _swiftEmptyArrayStorage;
    }
  }

  v48 = v64;
  defaultLogger()();

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v66 = v52;
    *v51 = 136315138;
    v53 = sub_1001290E0(v38, v40, v17);
    v55 = v54;

    v56 = sub_100141FE4(v53, v55, &v66);

    *(v51 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v49, v50, "Digital presentment: calling process has entitlements: %s", v51, 0xCu);
    sub_10000BB78(v52);

    v57 = v64;
    v58 = v63;
  }

  else
  {

    v57 = v48;
    v58 = v0;
  }

  v25(v57, v58);
  return v38;
}

BOOL sub_100484008()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v18 - v5;
  v7 = [objc_opt_self() standardUserDefaults];
  v8._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceDigitalPresentmentFirstParty.getter();
  v9 = NSUserDefaults.internalBool(forKey:)(v8);

  if (v9)
  {
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      v13 = 1;
      goto LABEL_9;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Forcing digital presentment first party client due to user defaults setting", v12, 2u);
    v13 = 1;
  }

  else
  {
    v14._object = 0x8000000100718F30;
    v14._countAndFlagsBits = 0xD000000000000037;
    v13 = NSXPCConnection.isEntitled(_:)(v14);
    defaultLogger()();
    v10 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v10, v15))
    {
      v6 = v4;
      goto LABEL_9;
    }

    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v10, v15, "DigitalPresentmentSessionProxy.hasFirstPartyClientEntitlement: result = %{BOOL}d", v16, 8u);
    v6 = v4;
  }

LABEL_9:

  (*(v1 + 8))(v6, v0);
  return v13;
}

uint64_t sub_100484268(void *a1, _OWORD *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  *(v3 + 248) = 0;
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Creating DigitalPresentmentSessionProxy", v12, 2u);
  }

  (*(v7 + 8))(v9, v6);
  swift_unknownObjectWeakAssign();
  v13 = a2[5];
  *(v3 + 192) = a2[4];
  *(v3 + 208) = v13;
  *(v3 + 224) = a2[6];
  v14 = a2[1];
  *(v3 + 128) = *a2;
  *(v3 + 144) = v14;
  v15 = a2[3];
  *(v3 + 160) = a2[2];
  *(v3 + 176) = v15;
  sub_100484954(a2, v40);
  result = os_transaction_create();
  if (result)
  {
    *(v3 + 240) = result;
    v17 = sub_100483848();
    v19 = v18;
    v21 = v20;
    [a1 auditToken];
    v42 = sub_100484008();
    v43 = v17;
    v44 = v19;
    v45 = v21;
    v22 = *(v3 + 208);
    v40[4] = *(v3 + 192);
    v40[5] = v22;
    v40[6] = *(v3 + 224);
    v23 = *(v3 + 144);
    v40[0] = *(v3 + 128);
    v40[1] = v23;
    v24 = *(v3 + 176);
    v40[2] = *(v3 + 160);
    v40[3] = v24;
    v25 = type metadata accessor for DigitalPresentmentRequestValidator();
    memset(v38, 0, sizeof(v38));
    v39 = 0;
    v26 = swift_allocObject();
    v27 = type metadata accessor for IdentityDocumentPresentmentConfigurationBuilder();
    v37[3] = v25;
    v37[4] = &off_100809E20;
    v37[0] = v26;
    type metadata accessor for DigitalPresentmentFlow();
    v28 = swift_allocObject();
    v29 = sub_10001F370(v37, v25);
    __chkstk_darwin(v29);
    v31 = (&v35 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31);
    v33 = *v31;
    sub_100484954(v40, &v36);
    v34 = sub_100482B14(v40, &v41, v33, v27, &off_10080A000, v38, v28);
    sub_10000BB78(v37);
    *(v3 + 120) = v34;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004845CC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = [v8 processIdentifier];

    _os_log_impl(&_mh_execute_header, v9, v10, "DigitalPresentmentListener connection received from %d", v11, 8u);
  }

  else
  {

    v9 = v8;
  }

  (*(v5 + 8))(v7, v4);
  type metadata accessor for DigitalPresentmentXPCInterface();
  v12 = static DigitalPresentmentXPCInterface.interface()();
  [v8 setExportedInterface:v12];

  v13 = *(v2 + OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_digitalPresentmentEnvironment + 80);
  v27[4] = *(v2 + OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_digitalPresentmentEnvironment + 64);
  v27[5] = v13;
  v27[6] = *(v2 + OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_digitalPresentmentEnvironment + 96);
  v14 = *(v2 + OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_digitalPresentmentEnvironment + 16);
  v27[0] = *(v2 + OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_digitalPresentmentEnvironment);
  v27[1] = v14;
  v15 = *(v2 + OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_digitalPresentmentEnvironment + 48);
  v27[2] = *(v2 + OBJC_IVAR____TtC8coreidvd26DigitalPresentmentListener_digitalPresentmentEnvironment + 32);
  v27[3] = v15;
  type metadata accessor for DigitalPresentmentSessionProxy();
  swift_allocObject();
  v16 = v8;
  sub_100484954(v27, &aBlock);
  v17 = sub_100484268(v16, v27);
  sub_1004849B0(v27);

  [v16 setExportedObject:v17];

  v25 = sub_10047F66C;
  v26 = 0;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_100503A7C;
  v24 = &unk_1008125B0;
  v18 = _Block_copy(&aBlock);
  [v16 setInvalidationHandler:v18];
  _Block_release(v18);
  v25 = sub_10047F678;
  v26 = 0;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_100503A7C;
  v24 = &unk_1008125D8;
  v19 = _Block_copy(&aBlock);
  [v16 setInterruptionHandler:v19];
  _Block_release(v19);
  [v16 resume];
  return 1;
}

uint64_t sub_100484A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100484A1C()
{
  sub_10000BB78((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100484A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100843230, &qword_1006E0DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100484AEC()
{
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v11 - 8);
  __chkstk_darwin(v11);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC8coreidvd19DIPLockStateMonitor_notifyQueue;
  sub_10017ABC8();
  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_100485E38(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_10031ABF4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  *&v0[v10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6 = &v0[OBJC_IVAR____TtC8coreidvd19DIPLockStateMonitor_deviceLockStateNotification];
  *v6 = 0xD00000000000001FLL;
  *(v6 + 1) = 0x8000000100719130;
  *&v0[OBJC_IVAR____TtC8coreidvd19DIPLockStateMonitor_notifyToken] = -1;
  v7 = type metadata accessor for DIPLockStateMonitor();
  v12.receiver = v0;
  v12.super_class = v7;
  return objc_msgSendSuper2(&v12, "init");
}

void sub_100484DB8(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for DIPError.Code();
  v44 = *(v8 - 8);
  v45 = v8;
  __chkstk_darwin(v8);
  v46 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v43 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v41 - v14;
  defaultLogger()();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  v18 = os_log_type_enabled(v16, v17);
  v47 = a2;
  v48 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v55 = v3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v42 = v5;
    v22 = v11;
    v23 = v10;
    v24 = v21;
    aBlock = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100141FE4(a1, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v16, v17, "Trying to register for phone lock/unlock events for prearming watch with pairingID: %s", v20, 0xCu);
    sub_10000BB78(v24);
    v10 = v23;
    v11 = v22;
    v5 = v42;

    v4 = v55;
  }

  v25 = *(v11 + 8);
  v25(v15, v10);
  v26 = OBJC_IVAR____TtC8coreidvd19DIPLockStateMonitor_notifyToken;
  swift_beginAccess();
  if (*(v5 + v26) == -1)
  {
    v41[0] = v25;
    v41[1] = v11;
    v42 = v10;
    v55 = v4;
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v29 = v47;
    v30 = v48;
    v28[2] = v27;
    v28[3] = v30;
    v28[4] = v29;
    v31 = *(v5 + OBJC_IVAR____TtC8coreidvd19DIPLockStateMonitor_notifyQueue);
    v53 = sub_100485E14;
    v54 = v28;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_1004856F8;
    v52 = &unk_100812678;
    v32 = _Block_copy(&aBlock);

    v33 = String.utf8CString.getter();
    swift_beginAccess();
    LODWORD(v31) = notify_register_dispatch((v33 + 32), (v5 + v26), v31, v32);
    swift_endAccess();
    _Block_release(v32);

    if (v31)
    {
      *(v5 + v26) = -1;
      aBlock = 0;
      v50 = 0xE000000000000000;
      _StringGuts.grow(_:)(92);
      v34._countAndFlagsBits = 0xD00000000000005ALL;
      v34._object = 0x8000000100719030;
      String.append(_:)(v34);
      v35._countAndFlagsBits = v30;
      v35._object = v29;
      String.append(_:)(v35);
      (*(v44 + 104))(v46, enum case for DIPError.Code.unableToRegisterForPhoneLockUnlockEvents(_:), v45);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }

    else
    {
      v36 = v43;
      defaultLogger()();

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        aBlock = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_100141FE4(v30, v29, &aBlock);
        _os_log_impl(&_mh_execute_header, v37, v38, "Successfully registered for phone lock state notifications to prearm watch with pairingID: %s", v39, 0xCu);
        sub_10000BB78(v40);
      }

      else
      {
      }

      (v41[0])(v36, v42);
    }
  }
}

void sub_100485408(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      state64 = 0;
      notify_get_state(a1, &state64);
      defaultLogger()();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v22 = v16;
        v23 = swift_slowAlloc();
        v26[0] = v23;
        *v16 = 136446210;
        swift_beginAccess();
        if (state64)
        {
          v17 = 0x64656B636F6CLL;
        }

        else
        {
          v17 = 0x64656B636F6C6E75;
        }

        v24 = a4;
        if (state64)
        {
          v18 = 0xE600000000000000;
        }

        else
        {
          v18 = 0xE800000000000000;
        }

        v19 = sub_100141FE4(v17, v18, v26);

        v20 = v22;
        *(v22 + 1) = v19;
        _os_log_impl(&_mh_execute_header, v14, v15, "lockStateMonitor: Screen %{public}s", v20, 0xCu);
        sub_10000BB78(v23);
      }

      (*(v7 + 8))(v9, v6);
      swift_beginAccess();
      if (!state64)
      {
        v21 = String._bridgeToObjectiveC()();
        [v13 lockStateMonitor:v11 deviceLockDidUpdate:0 watchPairingID:v21];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1004856F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1004857EC(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = OBJC_IVAR____TtC8coreidvd19DIPLockStateMonitor_notifyToken;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (v13 == -1)
  {
    defaultLogger()();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136315138;
      if (a2)
      {
        v25 = a2;
      }

      else
      {
        a1 = 0;
        v25 = 0xE000000000000000;
      }

      v26 = sub_100141FE4(a1, v25, &v27);

      *(v23 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v21, v22, "Ignoring the call to unregisterFromDeviceLockNotifications, already unregistered for watch with pairingID: %s", v23, 0xCu);
      sub_10000BB78(v24);
    }

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    notify_cancel(v13);
    *(v2 + v12) = -1;
    defaultLogger()();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136315138;
      if (a2)
      {
        v18 = a2;
      }

      else
      {
        a1 = 0;
        v18 = 0xE000000000000000;
      }

      v19 = sub_100141FE4(a1, v18, &v27);

      *(v16 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "Successfully unregistered for phone lock state notifications for watch with pairingID: %s", v16, 0xCu);
      sub_10000BB78(v17);
    }

    return (*(v6 + 8))(v11, v5);
  }
}

id sub_100485B84()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Deallocating DIPLockStateMonitor", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  sub_1004857EC(0, 0);
  v9 = type metadata accessor for DIPLockStateMonitor();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_100485D9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100485DD4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100485E20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100485E38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100485EA8()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  sub_10017ABC8();
  (*(v1 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v0);
  v6 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v3, v0);
  v18[3] = v4;
  v18[4] = &off_10080ADD0;
  v18[0] = v5;
  type metadata accessor for IdentityProofingCleanupProvider();
  v7 = swift_allocObject();
  v8 = sub_10001F370(v18, v4);
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v16 = v4;
  v17 = &off_10080ADD0;
  *&v15 = v12;
  swift_unknownObjectWeakInit();
  if (qword_1008824A8)
  {
    v13 = *(qword_1008824A8 + 152);
  }

  else
  {
    v13 = 0;
  }

  swift_unknownObjectWeakAssign();

  sub_10001F358(&v15, v7 + 24);
  *(v7 + 64) = v6;
  sub_10000BB78(v18);
  return v7;
}

unint64_t sub_1004860F4()
{
  result = sub_100486730();
  qword_100882350 = result;
  *algn_100882358 = v1;
  qword_100882360 = v2;
  unk_100882368 = v3;
  return result;
}

void sub_10048611C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v14[4] = sub_100486378;
  v14[5] = v8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1003E854C;
  v14[3] = &unk_1008126C8;
  v9 = _Block_copy(v14);

  v10 = a4;

  v11 = String.utf8CString.getter();
  xpc_set_event_stream_handler((v11 + 32), v10, v9);

  _Block_release(v9);
  sub_1004B0184(v10, a1, a2, a3);
  v12._countAndFlagsBits = 0x6331386362376136;
  v13._object = 0x8000000100719170;
  v12._object = 0xE800000000000000;
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  logMilestone(tag:description:)(v12, v13);
}

uint64_t sub_100486294(void *a1)
{
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    v3 = result;
    if (!strcmp(result, "Application Installed"))
    {

      return sub_100486B0C(a1);
    }

    else
    {
      result = strcmp(v3, "Application Uninstalled");
      if (!result)
      {

        return sub_100486FB4(a1);
      }
    }
  }

  return result;
}

uint64_t sub_100486330()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100486384(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004863BC()
{
  if (qword_100832D40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_100882578;
  v2 = unk_100882580;
  v0[6] = qword_100882578;
  v0[7] = v2;

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1004864C8;
  v4 = v0[5];

  return sub_100680A68(v4, v1, v2);
}

uint64_t sub_1004864C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100486614()
{
  if (qword_100832D40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_100882578;
  v2 = unk_100882580;
  v0[6] = qword_100882578;
  v0[7] = v2;

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_100487664;
  v4 = v0[5];

  return sub_10068CE1C(v4, v1);
}

unint64_t sub_100486730()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_10017ABC8();
  static DispatchQoS.unspecified.getter();
  v13[1] = _swiftEmptyArrayStorage;
  sub_100487608();
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_10031ABF4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6 = sub_100485EA8();
  type metadata accessor for IdentityProofingActionNotificationFlow();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  type metadata accessor for IdentityProofingDatabaseProvider();
  v8 = swift_allocObject();
  type metadata accessor for IdentityWatchProvisioningManagerFactory();
  v9 = swift_allocObject();
  type metadata accessor for IdentityProofingUserNotificationProviderFactory();
  v10 = swift_allocObject();
  type metadata accessor for IdentityProvisioningCompletionManager();
  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v9;
  v11[6] = v10;
  return 0xD000000000000018;
}

uint64_t sub_1004869E0(void *a1)
{
  v1 = xpc_dictionary_get_array(a1, "bundleIDs");
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  result = xpc_array_get_count(v1);
  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_18:
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      result = xpc_array_get_string(v2, v5);
      if (result)
      {
        v7 = String.init(cString:)();
        v9 = v8;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1003C5110(0, *(v6 + 2) + 1, 1, v6);
          v6 = result;
        }

        v11 = *(v6 + 2);
        v10 = *(v6 + 3);
        if (v11 >= v10 >> 1)
        {
          result = sub_1003C5110((v10 > 1), v11 + 1, 1, v6);
          v6 = result;
        }

        *(v6 + 2) = v11 + 1;
        v12 = &v6[16 * v11];
        *(v12 + 4) = v7;
        *(v12 + 5) = v9;
      }

      if (v4 == v5)
      {
        break;
      }

      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    swift_unknownObjectRelease();
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100486B0C(void *a1)
{
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - v3;
  v41 = type metadata accessor for Logger();
  v5 = *(v41 - 8);
  v6 = __chkstk_darwin(v41);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v40 - v13;
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  defaultLogger()();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Application install event received", v19, 2u);
  }

  v20 = *(v5 + 8);
  v20(v16, v41);
  v21 = xpc_dictionary_get_value(a1, "UserInfo");
  if (!v21)
  {
    goto LABEL_6;
  }

  v22 = v21;
  type = xpc_get_type(v21);
  v24 = xpc_dictionary_create(0, 0, 0);
  v25 = xpc_get_type(v24);
  swift_unknownObjectRelease();
  if (type != v25)
  {
    swift_unknownObjectRelease();
LABEL_6:
    defaultLogger()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Application install event: no user info dictionary", v28, 2u);
    }

    v29 = v8;
    return (v20)(v29, v41);
  }

  if (xpc_dictionary_get_BOOL(v22, "isPlaceholder"))
  {
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Skipping application install event because it refers to a placeholder", v33, 2u);
    }

    swift_unknownObjectRelease();
    v29 = v14;
    return (v20)(v29, v41);
  }

  v34 = sub_1004869E0(v22);
  defaultLogger()();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "XPC application install event: received install event", v37, 2u);
  }

  v20(v11, v41);
  v38 = type metadata accessor for TaskPriority();
  (*(*(v38 - 8) + 56))(v4, 1, 1, v38);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;
  sub_1003E653C(0, 0, v4, &unk_1006E5890, v39);

  return swift_unknownObjectRelease();
}

uint64_t sub_100486FB4(void *a1)
{
  v2 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - v3;
  v41 = type metadata accessor for Logger();
  v5 = *(v41 - 8);
  v6 = __chkstk_darwin(v41);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v40 - v13;
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  defaultLogger()();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Application uninstall event received", v19, 2u);
  }

  v20 = *(v5 + 8);
  v20(v16, v41);
  v21 = xpc_dictionary_get_value(a1, "UserInfo");
  if (!v21)
  {
    goto LABEL_6;
  }

  v22 = v21;
  type = xpc_get_type(v21);
  v24 = xpc_dictionary_create(0, 0, 0);
  v25 = xpc_get_type(v24);
  swift_unknownObjectRelease();
  if (type != v25)
  {
    swift_unknownObjectRelease();
LABEL_6:
    defaultLogger()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Application uninstall event: no user info dictionary", v28, 2u);
    }

    v29 = v8;
    return (v20)(v29, v41);
  }

  if (xpc_dictionary_get_BOOL(v22, "isPlaceholder"))
  {
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Skipping application uninstall event because it refers to a placeholder", v33, 2u);
    }

    swift_unknownObjectRelease();
    v29 = v14;
    return (v20)(v29, v41);
  }

  v34 = sub_1004869E0(v22);
  defaultLogger()();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "XPC application uninstall event: received uninstall event", v37, 2u);
  }

  v20(v11, v41);
  v38 = type metadata accessor for TaskPriority();
  (*(*(v38 - 8) + 56))(v4, 1, 1, v38);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v34;
  sub_1003E653C(0, 0, v4, &unk_1006E58A0, v39);

  return swift_unknownObjectRelease();
}

uint64_t sub_100487460(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100027B9C;

  return sub_10048639C(a1, v4, v5, v6);
}

uint64_t sub_100487514()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100487554(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1004865F4(a1, v4, v5, v6);
}

unint64_t sub_100487608()
{
  result = qword_1008465A0;
  if (!qword_1008465A0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008465A0);
  }

  return result;
}

void *sub_100487668()
{
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v21 = sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v26[0] = _swiftEmptyArrayStorage;
  sub_100485E38(&qword_1008465A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100007224(&unk_1008458B0, &qword_1006BF8A0);
  sub_1000BA30C(&qword_1008465B0, &unk_1008458B0, &qword_1006BF8A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  v5 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_100832B50 != -1)
  {
    swift_once();
  }

  v6 = qword_100881E48;
  v7 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;

  v9 = sub_10031623C();
  type metadata accessor for IdentityProofingBackgroundActivityScheduler();
  v10 = swift_allocObject();
  *(v10 + 16) = 3600;
  type metadata accessor for IdentityProofingDeviceMigrationManagerFactory();
  v11 = swift_allocObject();
  type metadata accessor for IdentityProofingWorkflowProvider();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  type metadata accessor for IdentityProofingUploadsHelper();
  v13 = swift_allocObject();
  type metadata accessor for NetworkMonitor();
  *(v13 + 16) = static NetworkMonitor.shared.getter();
  *(v13 + 24) = v12;
  v26[3] = v7;
  v26[4] = &off_10080ADD0;
  v26[0] = v8;
  type metadata accessor for IdentityProofingUpdateManager();
  v14 = swift_allocObject();
  v15 = sub_10001F370(v26, v7);
  __chkstk_darwin(v15);
  v17 = (&v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v24 = v7;
  v25 = &off_10080ADD0;
  *&v23 = v19;
  v14[2] = v5;
  v14[3] = v6;
  sub_10001F358(&v23, (v14 + 4));
  v14[9] = v9;
  v14[10] = v10;
  v14[11] = v13;
  sub_10000BB78(v26);
  return v14;
}

uint64_t sub_100487AB4()
{
  v0 = type metadata accessor for IdentityBMUserProofingStreamWrapper();
  v1 = swift_allocObject();
  v2 = [BiomeLibrary() WalletPaymentsCommerce];
  swift_unknownObjectRelease();
  v3 = [v2 UserProofing];
  swift_unknownObjectRelease();
  v4 = [v3 Result];
  swift_unknownObjectRelease();
  *(v1 + 16) = v4;
  v5 = objc_allocWithZone(IdentityProofingBiomeDataDeletionManager);

  v6 = [v5 init];
  v17[3] = v0;
  v17[4] = &off_10080D6B8;
  v17[0] = v1;
  type metadata accessor for IdentityProofingBiomeManager();
  v7 = swift_allocObject();
  v8 = sub_10001F370(v17, v0);
  __chkstk_darwin(v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v15 = v0;
  v16 = &off_10080D6B8;
  *&v14 = v12;
  *(v7 + 64) = 90;
  sub_10001F358(&v14, v7 + 16);
  *(v7 + 56) = v6;
  sub_10000BB78(v17);

  return v7;
}

NSObject *sub_100487CA0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8coreidvd26IdentityManagementListener_watchSessionManager;
  type metadata accessor for IdentityProofingConfigProvider();
  v7 = swift_allocObject();
  type metadata accessor for IdentityProofingDeviceMigrationManagerFactory();
  v8 = swift_allocObject();
  type metadata accessor for IdentityProofingWorkflowProvider();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for IdentityProofingTextReplacementHelperProvider(0);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  v12 = OBJC_IVAR____TtC8coreidvd45IdentityProofingTextReplacementHelperProvider_staticWorkflow;
  v13 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  *(v11 + 112) = v7;
  *(v11 + 120) = v9;
  v30[3] = v10;
  v30[4] = &off_10080C400;
  v30[0] = v11;
  v14 = objc_allocWithZone(type metadata accessor for IdentityWatchSessionManagementListener(0));
  *&v1[v6] = sub_1004B1300(v30);
  machServiceIdentityManagementUI.getter();
  v15 = objc_allocWithZone(NSXPCListener);
  v16 = String._bridgeToObjectiveC()();

  v17 = [v15 initWithMachServiceName:v16];

  *&v1[OBJC_IVAR____TtC8coreidvd26IdentityManagementListener_xpcListener] = v17;
  v18 = type metadata accessor for IdentityManagementListener();
  v29.receiver = v1;
  v29.super_class = v18;
  v19 = objc_msgSendSuper2(&v29, "init");
  v20 = OBJC_IVAR____TtC8coreidvd26IdentityManagementListener_xpcListener;
  v21 = *&v19[OBJC_IVAR____TtC8coreidvd26IdentityManagementListener_xpcListener];
  v22 = v19;
  [v21 setDelegate:v22];
  [*&v19[v20] resume];
  defaultLogger()();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Identity management listener is started", v25, 2u);

    v26 = v22;
  }

  else
  {
    v26 = v23;
    v23 = v22;
  }

  (*(v3 + 8))(v5, v2);
  return v22;
}

id sub_100487FC4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Identity management listener is tearing down", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for IdentityManagementListener();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

uint64_t sub_100488194(uint64_t a1, const char *a2, const char *a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    defaultLogger()();
    v14 = v13;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v5;
      v34 = v18;
      v19 = v18;
      *v17 = 136315394;
      v20 = v14;
      v21 = [v20 description];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = a2;
      v24 = v23;

      v25 = sub_100141FE4(v22, v24, &v34);

      *(v17 + 4) = v25;
      *(v17 + 12) = 1024;
      LODWORD(v24) = [v20 processIdentifier];

      *(v17 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, v32, v17, 0x12u);
      sub_10000BB78(v19);

      return (*(v6 + 8))(v9, v33);
    }

    v30 = *(v6 + 8);
    v31 = v9;
  }

  else
  {
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, a3, v29, 2u);
    }

    v30 = *(v6 + 8);
    v31 = v11;
  }

  return v30(v31, v5);
}

uint64_t sub_100488518()
{
  *(v1 + 24) = v0;
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  *(v1 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_1004885B4, 0, 0);
}

uint64_t sub_1004885B4()
{
  v1 = *(v0[3] + 40);
  os_unfair_lock_lock((v1 + 24));
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = v0[3];
    v4 = v0[4];
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v3;

    v2 = sub_1003E6B50(0, 0, v4, &unk_1006E5AA8, v6);
    *(v1 + 16) = v2;
  }

  v0[5] = v2;

  os_unfair_lock_unlock((v1 + 24));
  v7 = swift_task_alloc();
  v0[6] = v7;
  v8 = type metadata accessor for IdentityProofingFlow();
  *v7 = v0;
  v7[1] = sub_100488734;

  return Task<>.value.getter(v0 + 2, v2, v8);
}

uint64_t sub_100488734()
{

  return _swift_task_switch(sub_100488830, 0, 0);
}

uint64_t sub_100488830()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1004888A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[72] = a4;
  v4[71] = a1;
  v5 = type metadata accessor for UUID();
  v4[73] = v5;
  v4[74] = *(v5 - 8);
  v4[75] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v4[76] = v6;
  v4[77] = *(v6 - 8);
  v4[78] = swift_task_alloc();

  return _swift_task_switch(sub_1004889C0, 0, 0);
}

uint64_t sub_1004889C0()
{
  v84 = v0;
  v78 = *(*(v0 + 576) + 72);
  *(v0 + 632) = v78;
  *(v0 + 640) = type metadata accessor for IdentityProofingPendingActionsFlowFactory();
  v77 = swift_allocObject();
  *(v0 + 648) = v77;
  type metadata accessor for IdentityProofingConfigProvider();
  v76 = swift_allocObject();
  *(v0 + 656) = v76;
  v1 = swift_allocObject();
  v2 = swift_allocObject();
  *(v0 + 664) = type metadata accessor for IdentityProofingAttributeConfigHelper();
  swift_allocObject();
  v3 = IdentityProofingAttributeConfigHelper.init()();
  *(v0 + 672) = type metadata accessor for IdentityProofingAssetsProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  if (qword_100832C40 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 624);
  v6 = *(v0 + 616);
  v7 = *(v0 + 608);
  v8 = qword_100882300;
  *(v0 + 680) = qword_100882300;
  type metadata accessor for IdentityProofingAuthCodeUIProvider();
  v9 = swift_allocObject();
  *(v0 + 688) = v9;
  v9[6] = 0;
  v9[7] = 0;
  v9[2] = v1;
  v9[3] = v2;
  v9[4] = v4;
  v9[5] = v8;
  *(v0 + 696) = type metadata accessor for IdentityProofingDeviceMigrationManagerFactory();
  v10 = swift_allocObject();
  *(v0 + 704) = type metadata accessor for IdentityProofingWorkflowProvider();
  v11 = swift_allocObject();
  *(v0 + 712) = v11;
  *(v11 + 16) = v10;
  type metadata accessor for IdentityProofingLivenessConfigProvider(0);
  swift_allocObject();

  v72 = sub_1002BCD94();
  *(v0 + 720) = v72;
  swift_allocObject();
  v12 = IdentityProofingAttributeConfigHelper.init()();
  v13 = swift_allocObject();
  *(v0 + 728) = v13;
  *(v13 + 16) = v12;
  type metadata accessor for IdentityProofingTermsAndConditionsProvider();
  *(v0 + 736) = swift_allocObject();
  v14 = type metadata accessor for IdentityProofingActionNotificationFlow();
  *(v0 + 744) = v14;
  v79 = v14;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v0 + 752) = sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  v15 = enum case for DispatchQoS.QoSClass.default(_:);
  *(v0 + 976) = enum case for DispatchQoS.QoSClass.default(_:);
  v16 = *(v6 + 104);
  *(v0 + 760) = v16;
  *(v0 + 768) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v69 = v15;
  v68 = v16;
  v16(v5);
  v70 = static OS_dispatch_queue.global(qos:)();
  *(v0 + 776) = v70;
  v17 = *(v6 + 8);
  *(v0 + 784) = v17;
  *(v0 + 792) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v71 = v17;
  v17(v5, v7);
  if (qword_100832C18 != -1)
  {
    swift_once();
  }

  v66 = *(v0 + 624);
  v67 = *(v0 + 608);
  v73 = *(v0 + 600);
  v74 = *(v0 + 592);
  v75 = *(v0 + 584);
  v18 = qword_100882220;
  *(v0 + 40) = type metadata accessor for IdentityBiometricStoreHelper();
  *(v0 + 48) = &off_10080A0A8;
  *(v0 + 16) = v18;
  *(v0 + 800) = swift_allocObject();
  type metadata accessor for IdentityProofingCleanupProviderFactory();
  *(v0 + 808) = swift_allocObject();
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  type metadata accessor for IdentityProvisioningManager();
  memset(v82, 0, sizeof(v82));
  v83 = 0;
  swift_allocObject();

  *(v0 + 816) = sub_1002EA490(v80, v82, 0, 0);
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = type metadata accessor for IdentityProofingTextReplacementHelperProvider(0);
  *(v0 + 824) = v22;
  v23 = swift_allocObject();
  swift_defaultActor_initialize();
  v24 = OBJC_IVAR____TtC8coreidvd45IdentityProofingTextReplacementHelperProvider_staticWorkflow;
  v25 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  *(v0 + 832) = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  *(v0 + 840) = v27;
  *(v0 + 848) = (v26 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v27(v23 + v24, 1, 1, v25);
  *(v23 + 112) = v19;
  *(v23 + 120) = v21;
  type metadata accessor for IdentityProofingUserConsentWebService();
  *(v0 + 856) = swift_allocObject();
  v28 = swift_allocObject();
  v29 = swift_allocObject();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  v31 = swift_allocObject();
  *(v0 + 864) = v31;
  swift_defaultActor_initialize();
  v27(v31 + OBJC_IVAR____TtC8coreidvd45IdentityProofingTextReplacementHelperProvider_staticWorkflow, 1, 1, v25);
  *(v31 + 112) = v28;
  *(v31 + 120) = v30;
  *(v0 + 56) = v64;
  *(v0 + 80) = v79;
  *(v0 + 88) = &off_10080ADD0;
  *(v0 + 120) = v22;
  *(v0 + 128) = &off_10080C400;
  *(v0 + 96) = v23;
  type metadata accessor for IdentityProofingFlow();
  v32 = swift_allocObject();
  *(v0 + 872) = v32;
  sub_10001F370(v0 + 56, v79);
  v33 = *(v79 - 8);
  *(v0 + 880) = v33;
  v34 = v33;
  v35 = swift_task_alloc();
  *(v0 + 888) = v35;
  v65 = *(v34 + 16);
  v65();
  v36 = *(v0 + 120);
  sub_10001F370(v0 + 96, v36);
  v37 = *(v36 - 8);
  v38 = swift_task_alloc();
  *(v0 + 896) = v38;
  (*(v37 + 16))();
  v39 = *v35;
  v40 = *v38;
  *(v0 + 160) = v79;
  *(v0 + 168) = &off_10080ADD0;
  *(v0 + 136) = v39;
  *(v0 + 200) = v22;
  *(v0 + 208) = &off_10080C400;
  *(v0 + 176) = v40;
  v32[3] = 0;
  v41 = dispatch_group_create();
  *(v0 + 904) = v41;
  v32[4] = v41;
  v42 = v41;
  v43 = dispatch_group_create();
  *(v0 + 912) = v43;
  v32[5] = v43;
  v32[7] = 0;
  *(v0 + 920) = type metadata accessor for IdentityProofingDatabaseProvider();
  v32[34] = swift_allocObject();
  v32[13] = v76;
  v32[14] = v72;
  v32[6] = v78;
  v32[11] = v70;
  v32[12] = v77;
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  v68(v66, v69, v67);
  swift_retain_n();
  v44 = v78;
  v45 = v43;

  v46 = v70;
  v47 = static OS_dispatch_queue.global(qos:)();
  v71(v66, v67);
  *(v0 + 240) = v79;
  *(v0 + 248) = &off_10080ADD0;
  *(v0 + 216) = v63;
  type metadata accessor for IdentityProofingCleanupProvider();
  v48 = swift_allocObject();
  v49 = sub_10001F370(v0 + 216, v79);
  v50 = swift_task_alloc();
  (v65)(v50, v49, v79);
  v51 = *v50;
  *(v0 + 280) = v79;
  *(v0 + 288) = &off_10080ADD0;
  *(v0 + 256) = v51;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  sub_10001F358((v0 + 256), v48 + 24);
  *(v48 + 64) = v47;
  sub_10000BB78((v0 + 216));

  v32[15] = v48;
  v52 = swift_allocObject();
  v53 = type metadata accessor for IdentitySelfHealer();
  v54 = objc_allocWithZone(v53);
  v55 = &v54[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID];
  *v55 = 0;
  *(v55 + 1) = 0;
  *&v54[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_databaseProvider] = v52;
  *(v0 + 552) = v54;
  *(v0 + 560) = v53;
  v56 = objc_msgSendSuper2((v0 + 552), "init");
  *(v0 + 928) = v56;
  v57 = v32[3];
  v32[3] = v56;

  v58 = v56;
  UUID.init()();
  UUID.uuidString.getter();
  *(v0 + 936) = v59;
  v60 = *(v74 + 8);
  *(v0 + 944) = v60;
  *(v0 + 952) = (v74 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v60(v73, v75);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v61 = swift_task_alloc();
  *(v0 + 960) = v61;
  *v61 = v0;
  v61[1] = sub_1004893D0;

  return sub_1005FB45C(v0 + 296, v56, &off_10080DB50, 0, 0);
}

uint64_t sub_1004893D0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 928);
  *(v2 + 968) = a1;

  sub_10000BB78((v2 + 296));

  return _swift_task_switch(sub_100489518, 0, 0);
}

uint64_t sub_100489518()
{
  v1 = *(v0 + 872);
  v115 = *(v0 + 880);
  v103 = *(v0 + 832);
  v105 = *(v0 + 840);
  v118 = *(v0 + 816);
  v98 = *(v0 + 808);
  v2 = *(v0 + 800);
  v94 = *(v0 + 784);
  v125 = *(v0 + 776);
  v3 = *(v0 + 760);
  v4 = *(v0 + 976);
  v119 = *(v0 + 976);
  v112 = *(v0 + 744);
  v106 = *(v0 + 736);
  v133 = *(v0 + 720);
  v5 = *(v0 + 712);
  v110 = *(v0 + 680);
  v130 = *(v0 + 656);
  v113 = *(v0 + 632);
  v6 = *(v0 + 624);
  v7 = *(v0 + 608);
  v100 = *(v0 + 968);

  v101 = *(v0 + 904);
  v1[2] = v100;
  v1[8] = v5;
  v1[9] = v2;
  v96 = dispatch_group_create();
  v3(v6, v4, v7);
  v8 = static OS_dispatch_queue.global(qos:)();
  v94(v6, v7);
  v1[16] = v98;
  v1[19] = v118;
  v135 = v1;
  type metadata accessor for IdentityProofingWatchProvider();
  v9 = swift_allocObject();
  *(v9 + 16) = v113;
  v1[18] = v9;
  v114 = v113;

  v10 = v96;
  v99 = v8;
  v97 = sub_100487668();
  type metadata accessor for IdentityProofingProducedAssetManager(0);
  v11 = swift_allocObject();
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0u;
  *(v11 + 72) = 0u;
  *(v11 + 81) = 0u;
  v3(v6, v119, v7);
  v12 = static OS_dispatch_queue.global(qos:)();
  v94(v6, v7);
  *(v11 + 136) = v12;
  *(v11 + 144) = 0u;
  *(v11 + 160) = 0u;
  *(v11 + 169) = 0u;
  *(v11 + 192) = 0u;
  *(v11 + 208) = 0u;
  *(v11 + 224) = 0u;
  v13 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_pdf417Data;
  v14 = type metadata accessor for PDF417Data();
  v120 = *(*(v14 - 8) + 56);
  v121 = v14;
  v120(v11 + v13, 1, 1);
  v15 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
  *(v11 + v15) = sub_10003CDF8(_swiftEmptyArrayStorage);
  v16 = (v11 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportMRZ);
  *v16 = 0;
  v16[1] = 0;
  *(v11 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportNFC) = 0;
  *(v11 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportHash) = xmmword_1006BF650;
  v17 = v11 + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_documentType;
  *v17 = 0;
  *(v17 + 8) = 1;
  type metadata accessor for IdentityProofingAssetUploadManager(0);
  v18 = swift_allocObject();
  *(v18 + 2) = &_swiftEmptyDictionarySingleton;
  *(v18 + 3) = &_swiftEmptyDictionarySingleton;
  *(v18 + 4) = &_swiftEmptyDictionarySingleton;
  *(v18 + 5) = 0;
  v19 = OBJC_IVAR____TtC8coreidvd34IdentityProofingAssetUploadManager_livenessFlowInternalDiagnosticsVideoURL;
  v20 = type metadata accessor for URL();
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  *(v11 + 104) = v10;
  *(v11 + 112) = v99;
  *(v11 + 120) = v101;
  *(v11 + 16) = v18;
  *(v11 + 24) = v97;
  *(v11 + 32) = v100;
  v135[33] = v11;
  type metadata accessor for IdentityProofingBiomeFedStatsUIConfigProvider();
  v21 = swift_allocObject();
  v21[2] = &_swiftEmptySetSingleton;
  v21[3] = 0xD00000000000001FLL;
  v21[4] = 0x8000000100719FD0;
  v21[5] = 1852402547;
  v21[6] = 0xE400000000000000;
  v21[7] = 0x6E6F697369636564;
  v21[8] = 0xE800000000000000;
  type metadata accessor for IdentityProofingFetchedAssetManager(0);
  v22 = swift_allocObject();
  *(v22 + 40) = swift_allocObject();
  *(v22 + 72) = 0xD00000000000002BLL;
  *(v22 + 80) = 0x8000000100719FF0;
  *(v22 + 88) = _swiftEmptyArrayStorage;
  *(v22 + 96) = 2;
  *(v22 + 112) = 0;
  *(v22 + 128) = 0;
  *(v22 + 136) = 0x4024000000000000;
  *(v22 + 144) = 0u;
  *(v22 + 160) = 0u;
  *(v22 + 176) = 0;
  v105(v22 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_staticWorkflow, 1, 1, v103);
  *(v22 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_supplementalDataFetcher) = 0;
  v23 = (v22 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_identityKeyPair);
  v23[1] = 0u;
  v23[2] = 0u;
  *v23 = 0u;
  *(v22 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_cloudKitUploadsMaxRetryCount) = 3;
  v24 = (v22 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_termsAndConditions);
  *v24 = 0;
  v24[1] = 0;
  *(v22 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_fetchTermsAndConditionsTask) = 0;
  *(v22 + OBJC_IVAR____TtC8coreidvd35IdentityProofingFetchedAssetManager_biomeFedStatsFieldsToCollect) = 0;
  *(v22 + 16) = v100;
  *(v22 + 24) = v5;
  *(v22 + 32) = v11;
  *(v22 + 48) = v106;
  *(v22 + 56) = v130;
  *(v22 + 104) = v10;
  *(v22 + 120) = v99;
  *(v22 + 64) = v21;
  v135[32] = v22;
  swift_allocObject();
  swift_retain_n();
  swift_retain_n();

  v117 = v10;
  v116 = v99;

  v25 = IdentityProofingAttributeConfigHelper.init()();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  type metadata accessor for IdentityProofingLivenessStepUpUIProvider();
  v27 = swift_allocObject();
  v27[2] = swift_allocObject();
  v27[3] = v130;
  v27[4] = v11;
  v27[5] = v22;
  v27[6] = v26;
  v27[7] = v110;
  v92 = v27;
  v27[8] = v133;
  sub_100020260(v0 + 136, v0 + 336);
  v28 = v135[33];
  v29 = *(v0 + 360);
  v30 = sub_10001F370(v0 + 336, v29);
  v31 = *(v29 - 8);
  v32 = swift_task_alloc();
  (*(v31 + 16))(v32, v30, v29);
  v33 = *v32;
  *(v0 + 400) = v112;
  *(v0 + 408) = &off_10080ADD0;
  *(v0 + 376) = v33;
  type metadata accessor for IdentityProofingActionNotificationProvider();
  v34 = swift_allocObject();
  v35 = sub_10001F370(v0 + 376, v112);
  v36 = swift_task_alloc();
  (*(v115 + 16))(v36, v35, v112);
  v37 = *v36;
  v34[5] = v112;
  v34[6] = &off_10080ADD0;
  v34[2] = v37;
  v38 = swift_allocObject();
  v34[8] = v28;
  v34[9] = v38;
  v34[7] = v22;
  swift_retain_n();
  swift_retain_n();

  sub_10000BB78((v0 + 376));

  sub_10000BB78((v0 + 336));

  v39 = sub_1002A5B90(v114);
  type metadata accessor for IdentityProofingCancellationProvider();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v34;
  v135[17] = v40;
  v41 = v135[15];
  v42 = qword_100832C50;

  v43 = v125;

  v134 = v34;

  v122 = v41;

  if (v42 != -1)
  {
    swift_once();
  }

  v104 = *(v0 + 944);
  v124 = *(v0 + 872);
  v107 = *(v0 + 856);
  v108 = *(v0 + 864);
  v111 = *(v0 + 824);
  v129 = *(v0 + 800);
  v132 = *(v0 + 776);
  v127 = *(v0 + 728);
  v128 = *(v0 + 712);
  v126 = *(v0 + 688);
  v89 = *(v0 + 680);
  v131 = *(v0 + 656);
  v44 = *(v0 + 648);
  v95 = *(v0 + 600);
  v102 = *(v0 + 584);
  v109 = *(v0 + 568);
  v87 = qword_100882310;
  type metadata accessor for IdentityProofingBackgroundActivityScheduler();
  v45 = swift_allocObject();
  *(v45 + 16) = 3600;
  v46 = swift_allocObject();
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  type metadata accessor for IdentityProofingUploadsHelper();
  v48 = swift_allocObject();
  type metadata accessor for NetworkMonitor();

  *(v48 + 16) = static NetworkMonitor.shared.getter();
  *(v48 + 24) = v47;
  type metadata accessor for PassManager();
  v49 = swift_allocObject();
  v50 = swift_allocObject();
  v51 = [objc_allocWithZone(PKPaymentService) init];
  *(v0 + 440) = sub_10001F8D4(0, &unk_1008458A0, PKPaymentService_ptr);
  *(v0 + 448) = &off_10080C410;
  *(v0 + 416) = v51;
  type metadata accessor for IdentityPendingProvisioningManager();
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  sub_10001F358((v0 + 416), v52 + 24);
  type metadata accessor for IdentityProofingDisplayManager();
  v53 = swift_allocObject();
  v53[2] = 0;
  v54 = swift_allocObject();
  v53[5] = v126;
  v53[6] = v92;
  v53[17] = v131;
  v53[18] = v127;
  v53[3] = v132;
  v53[4] = v44;
  v53[19] = v22;
  v53[7] = v54;
  v53[8] = v87;
  v53[9] = v45;
  v53[10] = v48;
  v53[11] = v49;
  v53[12] = v128;
  v53[13] = v122;
  v53[14] = v129;
  v53[15] = v52;
  v53[16] = v89;
  *(v124 + 240) = v53;
  v83 = v135[2];
  v55 = *(v124 + 24);
  v81 = *(v124 + 48);
  v56 = *(v124 + 112);
  v123 = *(v124 + 120);
  v86 = v135[17];
  v88 = *(v124 + 104);
  type metadata accessor for IdentityProofingLivenessDataProvider();
  v93 = swift_allocObject();
  *(v93 + 16) = v56;
  v57 = *(v124 + 88);
  v82 = v135[32];
  v84 = v135[33];
  v85 = v135[18];
  sub_100020260(v0 + 16, v0 + 456);
  v136 = swift_allocObject();
  *(v136 + 16) = 3600;
  v58 = swift_allocObject();
  v59 = swift_allocObject();
  *(v59 + 16) = v58;
  v60 = swift_allocObject();
  v61 = v55;

  v90 = v81;

  v62 = v57;

  v63 = v83;
  *(v60 + 16) = static NetworkMonitor.shared.getter();
  *(v60 + 24) = v59;
  v91 = sub_100487AB4();
  type metadata accessor for IdentityProofingRequestManager(0);
  v64 = swift_allocObject();
  v64[3] = 0;
  v64[7] = swift_allocObject();
  (v120)(v64 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_pdf417Data, 1, 1, v121);
  *(v64 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_proofingDocuments) = 0;
  *(v64 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_livenessManualReviewEncryptedMessage) = xmmword_1006BF650;
  v65 = (v64 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_phoneCredentialIdentifier);
  *v65 = 0;
  v65[1] = 0;
  v66 = (v64 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_workflowId);
  *v66 = 0;
  v66[1] = 0;
  v67 = (v64 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_clientCreatedProofingSessionID);
  *v67 = 0;
  v67[1] = 0;
  v68 = (v64 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_watchCredentialIdentifier);
  *v68 = 0;
  v68[1] = 0;
  v69 = v64 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_manualCheckInterval;
  *v69 = 0;
  v69[8] = 1;
  v70 = (v64 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_termsAndConditions);
  *v70 = 0;
  v70[1] = 0;
  v71 = (v64 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId);
  *v71 = 0;
  v71[1] = 0;
  *(v64 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_comboProofingWatchFailure) = 0;
  v64[2] = v63;
  v64[3] = v55;
  v64[4] = v88;
  v64[5] = v90;
  v64[6] = v123;
  v64[10] = v86;
  v64[11] = v93;
  v64[12] = v134;
  v64[13] = v62;
  v64[14] = v82;
  v64[15] = v84;
  v64[8] = v85;
  v64[16] = v136;
  sub_100020260(v0 + 456, v0 + 496);
  type metadata accessor for IdentityProofingCredentialProvider();
  v72 = swift_allocObject();
  *(v72 + 16) = v82;
  v73 = *(v0 + 512);
  *(v72 + 24) = *(v0 + 496);
  *(v72 + 40) = v73;
  *(v72 + 56) = *(v0 + 528);
  v64[9] = v72;
  v64[17] = v60;
  *(v64 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_biomeManager) = v91;

  v74 = v62;

  UUID.init()();
  v75 = UUID.uuidString.getter();
  v77 = v76;

  v104(v95, v102);
  sub_10000BB78((v0 + 456));
  sub_10000BB78((v0 + 16));
  sub_10000BB78((v0 + 136));
  v78 = (v64 + OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_analyticsSessionId);
  *v78 = v75;
  v78[1] = v77;

  *(v124 + 248) = v64;
  sub_10001F358((v0 + 176), v124 + 160);
  *(v124 + 80) = v107;
  *(v124 + 200) = v108;
  *(v124 + 208) = *(v0 + 536);
  *(v124 + 224) = v111;
  *(v124 + 232) = &off_10080C400;
  sub_10000BB78((v0 + 96));

  sub_10000BB78((v0 + 56));

  *v109 = v124;

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_10048A4CC()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  (*(v1 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v0);
  v6 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v3, v0);
  v18[3] = v4;
  v18[4] = &off_10080ADD0;
  v18[0] = v5;
  type metadata accessor for IdentityProofingCleanupProvider();
  v7 = swift_allocObject();
  v8 = sub_10001F370(v18, v4);
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v16 = v4;
  v17 = &off_10080ADD0;
  *&v15 = v12;
  swift_unknownObjectWeakInit();
  if (qword_1008824A8)
  {
    v13 = *(qword_1008824A8 + 152);
  }

  else
  {
    v13 = 0;
  }

  swift_unknownObjectWeakAssign();

  sub_10001F358(&v15, v7 + 24);
  *(v7 + 64) = v6;
  sub_10000BB78(v18);
  return v7;
}

uint64_t sub_10048A728(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_100141FE4(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "error: identity management ui client init %s", v7, 0xCu);
    sub_10000BB78(v8);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10048A8F4(uint64_t a1, char a2)
{
  *(v3 + 144) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for Logger();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 - 8);
  *(v3 + 72) = swift_task_alloc();
  v6 = type metadata accessor for DIPError();
  *(v3 + 80) = v6;
  *(v3 + 88) = *(v6 - 8);
  *(v3 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_10048AA70, 0, 0);
}

uint64_t sub_10048AA70()
{
  sub_1004A14E4();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_10048AD4C;

  return sub_100488518();
}

uint64_t sub_10048AD4C(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_10048AE4C, 0, 0);
}

uint64_t sub_10048AE4C()
{
  v1 = *(*(v0 + 112) + 56);
  *(v0 + 120) = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_10048AF04;
  v4 = *(v0 + 144);
  v5 = *(v0 + 16);

  return sub_1001CBE48(v1, v4, v5);
}

uint64_t sub_10048AF04()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10048B078, 0, 0);
  }

  else
  {
    v3 = v2[15];

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_10048B078()
{
  v1 = v0[15];

  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  v6 = v0[5];
  v5 = v0[6];
  v12 = v0[4];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v7 = *(v2 + 16);
  v7(v8, v3, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v6 + 8))(v5, v12);

  swift_allocError();
  v7(v9, v3, v4);
  swift_willThrow();

  (*(v2 + 8))(v3, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10048B464(uint64_t a1, char a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);

  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1004A86EC;

  return sub_10048A8F4(a1, a2);
}

uint64_t sub_10048B528(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_10048B6E8, 0, 0);
}

uint64_t sub_10048B6E8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting prepareForProofingDisplay", v4, 2u);
  }

  v5 = v1[15];
  v6 = v1[12];
  v7 = v1[13];

  v8 = *(v7 + 8);
  v1[16] = v8;
  v8(v5, v6);
  v9._countAndFlagsBits = 0x6664373163653865;
  v10._object = 0x8000000100719F50;
  v9._object = 0xE800000000000000;
  v10._countAndFlagsBits = 0xD000000000000022;
  logMilestone(tag:description:)(v9, v10);
  sub_1004A14E4();
  v11 = v1[11];
  v12 = v1[4];
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;

  sub_1003E653C(0, 0, v11, &unk_1006E5A70, v14);

  v15 = swift_task_alloc();
  v1[17] = v15;
  *v15 = v1;
  v15[1] = sub_10048BB40;

  return sub_100488518();
}

uint64_t sub_10048BB40(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[18] = a1;

  v4 = swift_task_alloc();
  v2[19] = v4;
  *v4 = v3;
  v4[1] = sub_10048BCA0;
  v5 = v2[3];
  v6 = v2[2];

  return sub_1003094B0(v6, v5);
}

uint64_t sub_10048BCA0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 160) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10048BE34, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10048BE34()
{

  v11 = v0[16];
  v1 = v0[14];
  v10 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10048C0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_100007224(&qword_100840E28, &unk_1006DD980);
  v4[4] = swift_task_alloc();
  sub_100007224(&qword_100845870, &qword_1006E5A80);
  v4[5] = swift_task_alloc();
  v5 = sub_100007224(&qword_100845878, &qword_1006E5A88);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_100007224(&unk_100845880, &qword_1006E5A90);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_10048C2B8, 0, 0);
}

uint64_t sub_10048C2B8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityManagementSessionProxy Starting to listen for display error messages", v4, 2u);
  }

  v5 = v1[15];
  v6 = v1[12];
  v7 = v1[13];

  v8 = *(v7 + 8);
  v1[16] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v1[17] = v9;
  *v9 = v1;
  v9[1] = sub_10048C3EC;

  return sub_100488518();
}

uint64_t sub_10048C3EC(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_10048C4EC, 0, 0);
}

uint64_t sub_10048C4EC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1003091E0(v1);

  AsyncCompactMapSequence.base.getter();
  sub_1000BA30C(&qword_100840E30, &qword_100840E28, &unk_1006DD980, &protocol conformance descriptor for AsyncStream<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncCompactMapSequence.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncCompactMapSequence.Iterator.init(_:transform:)();
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_10048C684;

  return sub_10048C9F8(0, 0);
}

uint64_t sub_10048C684(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 160) = a1;
  *(v4 + 168) = a2;

  if (!v2)
  {

    return _swift_task_switch(sub_10048C798, 0, 0);
  }

  return result;
}

uint64_t sub_10048C798()
{
  if (v0[21])
  {
    v1 = *(v0[2] + 80);
    if (v1)
    {
      swift_unknownObjectRetain();
      v2 = String._bridgeToObjectiveC()();

      [v1 didGetProofingDisplayErrorMessage:v2];
      swift_unknownObjectRelease();
    }

    else
    {
    }

    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_10048C684;

    return sub_10048C9F8(0, 0);
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "IdentityManagementSessionProxy Finished listening for display error messages", v5, 2u);
    }

    v6 = v0[16];
    v7 = v0[14];
    v8 = v0[12];

    v6(v7, v8);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10048C9F8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  if (a1)
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

  v3[13] = v4;
  v3[14] = v6;

  return _swift_task_switch(sub_10048CA8C, v4, v6);
}

uint64_t sub_10048CA8C()
{
  v0[15] = sub_100007224(&unk_100845880, &qword_1006E5A90);
  v0[16] = AsyncCompactMapSequence.Iterator.baseIterator.modify();
  v1 = sub_100007224(&qword_100845870, &qword_1006E5A80);
  v2 = sub_1000BA30C(&unk_100845890, &qword_100845870, &qword_1006E5A80, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_10048CBB4;
  v5 = v0[10];
  v6 = v0[11];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 9, v5, v6, v3, v1, v2);
}

uint64_t sub_10048CBB4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_10048CE3C;
  }

  else
  {
    (*(v2 + 128))();
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_10048CCDC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10048CCDC()
{
  v1 = v0[9];
  v0[18] = v1;
  if (v1)
  {
    v0[8] = v1;
    v2 = AsyncCompactMapSequence.Iterator.transform.getter();
    v0[19] = v3;
    v7 = (v2 + *v2);
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_10048CEB0;

    return (v7)(v0 + 6, v0 + 8);
  }

  else
  {
    v6 = v0[1];

    return v6(0, 0);
  }
}

uint64_t sub_10048CE3C()
{
  (*(v0 + 128))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10048CEB0()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_10048D010, v3, v2);
}

uint64_t sub_10048D010()
{
  if (v0[7])
  {
    v1 = v0[6];
    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    v0[15] = sub_100007224(&unk_100845880, &qword_1006E5A90);
    v0[16] = AsyncCompactMapSequence.Iterator.baseIterator.modify();
    v4 = sub_100007224(&qword_100845870, &qword_1006E5A80);
    v5 = sub_1000BA30C(&unk_100845890, &qword_100845870, &qword_1006E5A80, &protocol conformance descriptor for AsyncStream<A>.Iterator);
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_10048CBB4;
    v8 = v0[10];
    v9 = v0[11];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 9, v8, v9, v6, v4, v5);
  }
}

uint64_t sub_10048D30C(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_1004A8580;

  return sub_10048B528(v7, a2);
}

uint64_t sub_10048D580(void *a1, void *a2, uint64_t a3, void *aBlock, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = 0;
  }

  v5[6] = v9;
  v10 = a1;
  v11 = a2;

  v12 = swift_task_alloc();
  v5[7] = v12;
  *v12 = v5;
  v12[1] = sub_10048D68C;

  return sub_1004A3C88(v10, v11);
}

uint64_t sub_10048D68C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 40);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_10048D868(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for DIPError();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_10048D9EC, 0, 0);
}

uint64_t sub_10048D9EC(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting fetchImageQualitySettings", v4, 2u);
  }

  v5 = v1[18];
  v6 = v1[15];
  v7 = v1[16];

  v8 = *(v7 + 8);
  v1[19] = v8;
  v8(v5, v6);
  sub_1004A14E4();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v1 + 2, v1[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v1 + 2);
  v9 = swift_task_alloc();
  v1[20] = v9;
  *v9 = v1;
  v9[1] = sub_10048DDB4;

  return sub_100488518();
}

uint64_t sub_10048DDB4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[21] = a1;

  v4 = swift_task_alloc();
  v2[22] = v4;
  *v4 = v3;
  v4[1] = sub_10048DF00;
  v5 = v2[7];

  return sub_10030B5F0(v5);
}

uint64_t sub_10048DF00(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 184) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10048E08C, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10048E08C()
{

  v11 = v0[19];
  v1 = v0[17];
  v2 = v0[14];
  v10 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  (*(v0[10] + 104))(v0[11], enum case for DIPError.Code.internalError(_:), v0[9]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10048E47C(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100481C58;

  return sub_10048D868(v5);
}

uint64_t sub_10048E6D0(void *a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v6 = a1;

  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_1004A8580;

  return sub_1004A43B8(v6);
}

uint64_t sub_10048E7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for DIPError();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_10048E934, 0, 0);
}

uint64_t sub_10048E934(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting provisionIdentity", v4, 2u);
  }

  v5 = v1[21];
  v6 = v1[18];
  v7 = v1[19];

  v8 = *(v7 + 8);
  v1[22] = v8;
  v8(v5, v6);
  sub_1004A14E4();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v1 + 2, v1[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v1 + 2);
  v9 = swift_task_alloc();
  v1[23] = v9;
  *v9 = v1;
  v9[1] = sub_10048ED00;

  return sub_100488518();
}

uint64_t sub_10048ED00(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[24] = a1;

  v4 = swift_task_alloc();
  v2[25] = v4;
  *v4 = v3;
  v4[1] = sub_10048EE88;
  v5 = v2[10];
  v6 = v2[9];
  v7 = v2[8];
  v8 = v2[7];

  return sub_10030FB1C(v8, v7, v6, v5);
}

uint64_t sub_10048EE88()
{
  v2 = *v1;
  *(v2 + 208) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10048F000, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10048F000()
{

  v11 = v0[22];
  v1 = v0[20];
  v2 = v0[17];
  v10 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.internalError(_:), v0[12]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10048F40C(void *a1, uint64_t a2, uint64_t a3, void *aBlock, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[5] = v9;
  v11 = a1;

  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_10048F500;

  return sub_10048E7A8(v11, v8, v10, a3);
}

uint64_t sub_10048F500()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 32);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_10048F6C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = v5;
  *(v6 + 216) = a4;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 56) = a1;
  v7 = type metadata accessor for DIPError.Code();
  *(v6 + 96) = v7;
  *(v6 + 104) = *(v7 - 8);
  *(v6 + 112) = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  *(v6 + 120) = v8;
  *(v6 + 128) = *(v8 - 8);
  *(v6 + 136) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v6 + 144) = v9;
  *(v6 + 152) = *(v9 - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_10048F854, 0, 0);
}

uint64_t sub_10048F854(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting Proofing flow", v4, 2u);
  }

  v5 = v1[21];
  v6 = v1[18];
  v7 = v1[19];

  v8 = *(v7 + 8);
  v1[22] = v8;
  v8(v5, v6);
  sub_1004A14E4();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v1 + 2, v1[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v1 + 2);
  v9 = swift_task_alloc();
  v1[23] = v9;
  *v9 = v1;
  v9[1] = sub_10048FC20;

  return sub_100488518();
}

uint64_t sub_10048FC20(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_10048FD20, 0, 0);
}

uint64_t sub_10048FD20()
{
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_10048FDC4;
  v2 = *(v0 + 216);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);

  return sub_1001D2B9C(v6, v5, v3, v2, v4);
}

uint64_t sub_10048FDC4(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 208) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10048FF50, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10048FF50()
{

  v11 = v0[22];
  v1 = v0[20];
  v2 = v0[17];
  v10 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.internalError(_:), v0[12]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100490374(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, void *aBlock, uint64_t a7)
{
  v7[3] = a2;
  v7[4] = a7;
  v7[2] = a1;
  v7[5] = _Block_copy(aBlock);
  v13 = a1;
  v14 = a2;

  v15 = swift_task_alloc();
  v7[6] = v15;
  *v15 = v7;
  v15[1] = sub_100490474;

  return sub_10048F6C4(v13, v14, a3, a4, a5);
}

uint64_t sub_100490474(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 40);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 40), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100490650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_1004907D0, 0, 0);
}

uint64_t sub_1004907D0(uint64_t a1)
{
  sub_1004A14E4();
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  v2[1] = sub_100490AAC;

  return sub_100488518();
}

uint64_t sub_100490AAC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[17] = a1;

  v4 = swift_task_alloc();
  v2[18] = v4;
  *v4 = v3;
  v4[1] = sub_100490C34;
  v5 = v2[5];
  v6 = v2[4];
  v7 = v2[3];
  v8 = v2[2];

  return sub_10030C5AC(v8, v7, v6, v5);
}

uint64_t sub_100490C34(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 152) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100490DAC, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_100490DAC()
{

  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  v11 = v0[7];
  (*(v0[11] + 104))(v0[12], enum case for DIPError.Code.internalError(_:), v0[10]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v6 = *(v1 + 16);
  v6(v7, v2, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v5 + 8))(v4, v11);

  swift_allocError();
  v6(v8, v2, v3);
  swift_willThrow();

  (*(v1 + 8))(v2, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004911AC(void *a1, void *a2, uint64_t a3, void *aBlock, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[6] = v9;
  v11 = a1;
  v12 = a2;

  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_1004912AC;

  return sub_100490650(v11, v12, v8, v10);
}

uint64_t sub_1004912AC(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 40);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 40), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1004914A4()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for DIPError.Code();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for DIPError();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_10049161C, 0, 0);
}

uint64_t sub_10049161C(uint64_t a1)
{
  sub_1004A14E4();
  v2 = swift_task_alloc();
  *(v1 + 96) = v2;
  *v2 = v1;
  v2[1] = sub_1004918F0;

  return sub_100488518();
}

uint64_t sub_1004918F0(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_1004919F0, 0, 0);
}

uint64_t sub_1004919F0()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100491A84;

  return sub_1001DD4A8();
}

uint64_t sub_100491A84(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 120) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100491BFC, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_100491BFC()
{

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v5 = v0[4];
  v4 = v0[5];
  v11 = v0[3];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v6 = *(v1 + 16);
  v6(v7, v2, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v5 + 8))(v4, v11);

  swift_allocError();
  v6(v8, v2, v3);
  swift_willThrow();

  (*(v1 + 8))(v2, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100491FC4(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004A86E8;

  return sub_1004914A4();
}

uint64_t sub_10049206C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for DIPError();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004921E4, 0, 0);
}

uint64_t sub_1004921E4(uint64_t a1)
{
  sub_1004A14E4();
  v2 = swift_task_alloc();
  *(v1 + 104) = v2;
  *v2 = v1;
  v2[1] = sub_1004924B8;

  return sub_100488518();
}

uint64_t sub_1004924B8(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1004925B8, 0, 0);
}

uint64_t sub_1004925B8()
{
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_100492654;
  v2 = *(v0 + 16);

  return sub_1001DDE38(v2);
}

uint64_t sub_100492654(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 128) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004927CC, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1004927CC()
{

  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v5 = v0[5];
  v4 = v0[6];
  v11 = v0[4];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v6 = *(v1 + 16);
  v6(v7, v2, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v5 + 8))(v4, v11);

  swift_allocError();
  v6(v8, v2, v3);
  swift_willThrow();

  (*(v1 + 8))(v2, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100492BA8(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100481C58;

  return sub_10049206C(a1);
}

uint64_t sub_100492C68()
{
  v1[7] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_100492DEC, 0, 0);
}

uint64_t sub_100492DEC(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting to fetch Identity Proofing Terms and Conditions", v4, 2u);
  }

  v5 = v1[17];
  v6 = v1[14];
  v7 = v1[15];

  v8 = *(v7 + 8);
  v1[18] = v8;
  v8(v5, v6);
  sub_1004A14E4();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v1 + 2, v1[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v1 + 2);
  v9 = swift_task_alloc();
  v1[19] = v9;
  *v9 = v1;
  v9[1] = sub_1004931B0;

  return sub_100488518();
}

uint64_t sub_1004931B0(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 160) = a1;

  v3 = swift_task_alloc();
  *(v2 + 168) = v3;
  *v3 = v5;
  v3[1] = sub_1004932E0;

  return sub_10030AE94();
}

uint64_t sub_1004932E0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 176) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100493474, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_100493474()
{

  v11 = v0[18];
  v1 = v0[16];
  v2 = v0[13];
  v10 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10049384C(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004938F4;

  return sub_100492C68();
}

uint64_t sub_1004938F4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *v3;

  if (v4)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v5 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_100493A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for DIPError();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return _swift_task_switch(sub_100493C14, 0, 0);
}

uint64_t sub_100493C14(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting Proofing flow with authCode", v4, 2u);
  }

  v5 = v1[21];
  v6 = v1[18];
  v7 = v1[19];

  v8 = *(v7 + 8);
  v1[22] = v8;
  v8(v5, v6);
  sub_1004A14E4();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v1 + 2, v1[5]);
  dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  sub_10000BB78(v1 + 2);
  v9 = swift_task_alloc();
  v1[23] = v9;
  *v9 = v1;
  v9[1] = sub_100493FE0;

  return sub_100488518();
}

uint64_t sub_100493FE0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[24] = a1;

  v4 = swift_task_alloc();
  v2[25] = v4;
  *v4 = v3;
  v4[1] = sub_100494168;
  v5 = v2[10];
  v6 = v2[9];
  v7 = v2[8];
  v8 = v2[7];

  return sub_10030C194(v8, v7, v6, v5);
}

uint64_t sub_100494168(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 208) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004942F4, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1004942F4()
{

  v11 = v0[22];
  v1 = v0[20];
  v2 = v0[17];
  v10 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.internalError(_:), v0[12]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100494700(void *a1, uint64_t a2, uint64_t a3, void *aBlock, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[5] = v9;
  v11 = a1;

  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_1004947F4;

  return sub_100493A88(v11, v8, v10, a3);
}

uint64_t sub_1004947F4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 32);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 32), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_100494B64(void *a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v6 = a1;

  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_100494C3C;

  return sub_1004A4E18(v6);
}

uint64_t sub_100494C3C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 32);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_100494DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for DIPError.Code();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for DIPError();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100494F68, 0, 0);
}

uint64_t sub_100494F68(uint64_t a1)
{
  v19 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[14];
    v16 = v1[13];
    v17 = v1[16];
    v6 = v1[4];
    v5 = v1[5];
    v8 = v1[2];
    v7 = v1[3];
    v9 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v9 = 136380931;
    *(v9 + 4) = sub_100141FE4(v8, v7, v18);
    *(v9 + 12) = 2081;
    *(v9 + 14) = sub_100141FE4(v6, v5, v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking proofing status for %{private}s in %{private}s", v9, 0x16u);
    swift_arrayDestroy();

    v10 = *(v4 + 8);
    v10(v17, v16);
  }

  else
  {
    v11 = v1[16];
    v12 = v1[13];
    v13 = v1[14];

    v10 = *(v13 + 8);
    v10(v11, v12);
  }

  v1[17] = v10;
  sub_1004A14E4();
  v14 = swift_task_alloc();
  v1[18] = v14;
  *v14 = v1;
  v14[1] = sub_1004953B0;

  return sub_100488518();
}

uint64_t sub_1004953B0(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_1004954B0, 0, 0);
}

uint64_t sub_1004954B0()
{
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_100495550;
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  return sub_1002DCF70(v5, v4, v2, v3);
}

uint64_t sub_100495550(uint64_t a1)
{
  v4 = *v2;
  v4[21] = a1;
  v4[22] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004957FC, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[23] = v5;
    *v5 = v4;
    v5[1] = sub_1004956D4;

    return sub_10059D940(a1);
  }
}

uint64_t sub_1004956D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_100495B08;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_100495A5C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004957FC()
{

  v11 = v0[17];
  v1 = v0[15];
  v2 = v0[12];
  v10 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  (*(v0[8] + 104))(v0[9], enum case for DIPError.Code.internalError(_:), v0[7]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100495A5C()
{
  v1 = v0[21];

  v2 = v0[1];
  v3 = v0[25];

  return v2(v3);
}

uint64_t sub_100495B08()
{

  v11 = *(v0 + 136);
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v10 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  (*(*(v0 + 64) + 104))(*(v0 + 72), enum case for DIPError.Code.internalError(_:), *(v0 + 56));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100495F04(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v4[4] = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v4[5] = v9;

  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_100496000;

  return sub_100494DDC(v5, v7, v8, v10);
}

uint64_t sub_100496000(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 24);
  if (v3)
  {
    v8 = _convertErrorToNSError(_:)();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](*(v5 + 24), a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1004961E4()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100496368, 0, 0);
}

uint64_t sub_100496368(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if proofing flow is available", v4, 2u);
  }

  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];

  v8 = *(v7 + 8);
  v1[13] = v8;
  v8(v5, v6);
  sub_1004A14E4();
  v9 = swift_task_alloc();
  v1[14] = v9;
  *v9 = v1;
  v9[1] = sub_1004966E4;

  return sub_100488518();
}

uint64_t sub_1004966E4(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 120) = a1;

  v3 = swift_task_alloc();
  *(v2 + 128) = v3;
  *v3 = v5;
  v3[1] = sub_100496814;

  return sub_10030EE9C();
}

uint64_t sub_100496814(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 136) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004969A0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1004969A0()
{

  v11 = v0[13];
  v1 = v0[11];
  v2 = v0[8];
  v10 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  (*(v0[4] + 104))(v0[5], enum case for DIPError.Code.internalError(_:), v0[3]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100485E38(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v5 = *(v3 + 16);
  v5(v6, v2, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v11(v1, v10);

  swift_allocError();
  v5(v7, v2, v4);
  swift_willThrow();

  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100496D78(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1004A86E8;

  return sub_1004961E4();
}

uint64_t sub_100496E20(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for DIPError();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100496FA4, 0, 0);
}

uint64_t sub_100496FA4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if a watch is paired to this device and if its preflight check is successful.", v4, 2u);
  }

  v5 = v1[13];
  v6 = v1[10];
  v7 = v1[11];

  (*(v7 + 8))(v5, v6);
  sub_1004A14E4();
  v8 = swift_task_alloc();
  v1[14] = v8;
  *v8 = v1;
  v8[1] = sub_1004972D4;

  return sub_100488518();
}

uint64_t sub_1004972D4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[15] = a1;

  v4 = swift_task_alloc();
  v2[16] = v4;
  *v4 = v3;
  v4[1] = sub_100497420;
  v5 = v2[2];

  return sub_100309908(v5);
}

uint64_t sub_100497420(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100497744(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_100497808;

  return sub_100496E20(v5);
}

uint64_t sub_100497808(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10049796C()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100497AF0, 0, 0);
}

uint64_t sub_100497AF0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking watch passes.", v4, 2u);
  }

  v5 = v1[12];
  v6 = v1[9];
  v7 = v1[10];

  (*(v7 + 8))(v5, v6);
  sub_1004A14E4();
  v8 = swift_task_alloc();
  v1[13] = v8;
  *v8 = v1;
  v8[1] = sub_100497E68;

  return sub_100488518();
}