uint64_t sub_1002F1558()
{
  v1 = v0[22];
  sub_10000B90C(v0[25], v0[26]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002F1650(uint64_t a1)
{
  v3 = *v2;
  v3[35] = a1;
  v3[36] = v1;

  if (v1)
  {
    v4 = v3[27];
    v5 = v3[23];

    v6 = sub_1002F2354;
  }

  else
  {
    v6 = sub_1002F1788;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002F1788()
{
  v110 = v0;
  v1 = v0[35];
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_35:
    v87 = v0[30];
    v86 = v0[31];
    v88 = v107[27];
    v102 = v107[26];
    v89 = v107[25];
    v90 = v107[23];
    v103 = v107[22];
    v91 = v107[8];
    v92 = v107[7];
    v93 = v107[6];

    v20 = v107;

    (*(v92 + 104))(v91, enum case for DIPError.Code.progenitorKeyAttestationUnavailable(_:), v93);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v87, v86);
    sub_10000B90C(v89, v102);

    goto LABEL_36;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v107 = v0;
  if (!result)
  {
    goto LABEL_35;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[35] + 32);
  }

  v4 = v3;
  v5 = [v3 progenitorKeyAttestation];

  if (!v5)
  {
    goto LABEL_35;
  }

  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  defaultLogger()();
  sub_10000B8B8(v6, v8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  sub_10000B90C(v6, v8);
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[20];
  v13 = v0[16];
  v14 = v0[9];
  v100 = v6;
  v101 = v8;
  if (v11)
  {
    v15 = v0[20];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v109[0] = v17;
    *v16 = 136315138;
    v18 = Data.base64EncodedString(options:)(0);
    v19 = sub_100141FE4(v18._countAndFlagsBits, v18._object, v109);

    *(v16 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "progenitorKeyAttestation -> %s", v16, 0xCu);
    sub_10000BB78(v17);

    v15(v13, v14);
  }

  else
  {

    v12(v13, v14);
  }

  v20 = v107;
  v21 = v107[35];
  v22 = v107[36];
  v108 = _swiftEmptyArrayStorage;
  sub_1002EA39C(v21, &v108);
  if (v22)
  {
    v24 = v107[30];
    v23 = v107[31];
    v25 = v107[27];
    v27 = v107[25];
    v26 = v107[26];
    v28 = v107[22];

    sub_10000B90C(v27, v26);
    sub_10000B90C(v100, v101);

    sub_10000B90C(v24, v23);

LABEL_36:

    v94 = v20[1];

    return v94();
  }

  defaultLogger()();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v107[20];
  v33 = v107[15];
  v34 = v107[9];
  if (v31)
  {
    v104 = v107[20];
    v36 = v107[2];
    v35 = v107[3];
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v109[0] = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_100141FE4(v36, v35, v109);
    _os_log_impl(&_mh_execute_header, v29, v30, "Building provisioning attestations complete for credential identifier: %s", v37, 0xCu);
    sub_10000BB78(v38);

    v104(v33, v34);
  }

  else
  {

    v32(v33, v34);
  }

  defaultLogger()();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "authorizationKeyAttestations: ", v41, 2u);
  }

  v42 = v107[28];
  v43 = v107[20];
  v44 = v107[14];
  v45 = v107[9];

  v43(v44, v45);
  v46 = *(v42 + 16);
  if (v46)
  {
    v47 = (v107[28] + 40);
    do
    {
      v48 = *(v47 - 1);
      v49 = *v47;

      defaultLogger()();

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.debug.getter();

      v52 = os_log_type_enabled(v50, v51);
      v105 = v20[20];
      v53 = v20[13];
      v54 = v20[9];
      if (v52)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v109[0] = v56;
        *v55 = 136315138;
        v57 = sub_100141FE4(v48, v49, v109);

        *(v55 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v50, v51, "%s", v55, 0xCu);
        sub_10000BB78(v56);

        v20 = v107;
      }

      else
      {
      }

      v105(v53, v54);
      v47 += 2;
      --v46;
    }

    while (v46);
  }

  defaultLogger()();
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "deviceEncryptionKeyAttestations:", v60, 2u);
  }

  v61 = v20[24];
  v62 = v20[20];
  v63 = v20[12];
  v64 = v20[9];

  v62(v63, v64);
  v65 = *(v61 + 16);
  if (v65)
  {
    v66 = (v20[24] + 40);
    do
    {
      v67 = *(v66 - 1);
      v68 = *v66;

      defaultLogger()();

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();

      v71 = os_log_type_enabled(v69, v70);
      v106 = v20[20];
      v72 = v20[11];
      v73 = v20[9];
      if (v71)
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v109[0] = v75;
        *v74 = 136315138;
        v76 = sub_100141FE4(v67, v68, v109);

        *(v74 + 4) = v76;
        _os_log_impl(&_mh_execute_header, v69, v70, "%s", v74, 0xCu);
        sub_10000BB78(v75);

        v20 = v107;
      }

      else
      {
      }

      v106(v72, v73);
      v66 += 2;
      --v65;
    }

    while (v65);
  }

  v78 = v20[30];
  v77 = v20[31];
  v97 = v20[26];
  v95 = v20[27];
  v96 = v20[25];
  v79 = v20[23];
  v99 = v20[22];

  v80 = objc_allocWithZone(DIIdentityProvisioningAttestations);
  sub_10000B8B8(v78, v77);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v82 = Data._bridgeToObjectiveC()().super.isa;
  sub_10001F8D4(0, &qword_1008404D8, DIIdentityProvisioningTransactionKey_ptr);
  v83 = Array._bridgeToObjectiveC()().super.isa;
  v84 = Data._bridgeToObjectiveC()().super.isa;
  v98 = [v80 initWithAuthorizationKeyAttestation:v95 deviceEncryptionKeyAttestation:v79 deviceEncryptionKeyAuthorization:isa progenitorKeyCASDAttestation:v82 transactionKeys:v83 serverAttestedProvisioningData:v84];

  sub_10000B90C(v78, v77);
  sub_10000B90C(v100, v101);

  sub_10000B90C(v96, v97);
  sub_10000B90C(v78, v77);

  v85 = v107[1];

  return v85(v98);
}

uint64_t sub_1002F2354()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[22];
  sub_10000B90C(v0[30], v0[31]);
  sub_10000B90C(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002F245C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a2;
  v4[20] = a4;
  v4[18] = a1;
  v5 = type metadata accessor for DIPError.Code();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return _swift_task_switch(sub_1002F2588, 0, 0);
}

uint64_t sub_1002F2588(uint64_t a1)
{
  if (!v1[20])
  {
    defaultLogger()();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Building Provisioning attestation for the phone", v20, 2u);
    }

    v22 = v1[25];
    v21 = v1[26];
    v23 = v1[24];

    (*(v22 + 8))(v21, v23);
    if (qword_100832C20 != -1)
    {
      swift_once();
    }

    v24 = *(qword_100882228 + 16);
    v1[31] = v24;
    v1[5] = sub_10001F8D4(0, &qword_10083E400, DCCredentialStore_ptr);
    v1[6] = &off_10080D7B0;
    v1[2] = v24;
    v25 = v24;
    v26 = swift_task_alloc();
    v1[32] = v26;
    *v26 = v1;
    v26[1] = sub_1002F2C0C;
    v12 = v1[19];
    v13 = v1[18];
    v14 = (v1 + 2);
    v15 = 1;
    goto LABEL_15;
  }

  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Building Provisioning attestation for the watch", v4, 2u);
  }

  v5 = v1[27];
  v6 = v1[24];
  v7 = v1[25];

  (*(v7 + 8))(v5, v6);
  if (qword_1008824A8)
  {
    v8 = *(qword_1008824A8 + 152);
    if (v8)
    {
      v9 = *(v8 + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_remoteSessionService);
      v1[28] = v9;
      v1[10] = type metadata accessor for DIPWatch();
      v1[11] = &off_10080D850;
      v1[7] = v9;
      v10 = v9;
      v11 = swift_task_alloc();
      v1[29] = v11;
      *v11 = v1;
      v11[1] = sub_1002F29C4;
      v12 = v1[19];
      v13 = v1[18];
      v14 = (v1 + 7);
      v15 = 2;
LABEL_15:

      return sub_1002F0610(v13, v12, v14, v15);
    }
  }

  (*(v1[22] + 104))(v1[23], enum case for DIPError.Code.watchConnectionFailure(_:), v1[21]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v16 = v1[1];

  return v16();
}

uint64_t sub_1002F29C4(uint64_t a1)
{
  v3 = *v2;
  v3[12] = v2;
  v3[13] = a1;
  v3[14] = v1;
  v3[30] = v1;

  if (v1)
  {
    v4 = sub_1002F2B7C;
  }

  else
  {
    sub_10000BB78(v3 + 7);
    v4 = sub_1002F2AE8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002F2AE8()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002F2B7C()
{
  sub_10000BB78((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F2C0C(uint64_t a1)
{
  v3 = *v2;
  v3[15] = v2;
  v3[16] = a1;
  v3[17] = v1;
  v3[33] = v1;

  if (v1)
  {
    v4 = sub_1002F2DC4;
  }

  else
  {
    sub_10000BB78(v3 + 2);
    v4 = sub_1002F2D30;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002F2D30()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002F2DC4()
{
  sub_10000BB78((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F2E54()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002F2EB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002F2F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_1008404E8, &qword_1006DD168);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F2F78()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002F2FE0()
{

  v1 = v0[13];
  if (v1 >> 60 != 15)
  {
    sub_10000B90C(v0[12], v1);
  }

  v2 = v0[15];
  if (v2 >> 60 != 15)
  {
    sub_10000B90C(v0[14], v2);
  }

  sub_10000BB78(v0 + 16);

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_1002F3068(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_1008404E8, &qword_1006DD168);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F30D8()
{

  sub_10000BB78((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1002F3138()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1002F31FC()
{
  type metadata accessor for Date();
  v1 = *(v0 + 16);

  sub_100580FC8(v1);
}

uint64_t sub_1002F3270(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1002F3298(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v56 = a1;
  v53 = type metadata accessor for DIPError.Code();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DIPError();
  v10 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v58 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v54 = &v50 - v17;
  v18 = __chkstk_darwin(v16);
  v57 = &v50 - v19;
  __chkstk_darwin(v18);
  v21 = &v50 - v20;
  defaultLogger()();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  v61 = v13;
  v60 = v10;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v50 = v5;
    v26 = v25;
    v27 = swift_slowAlloc();
    v51 = v12;
    *&v63[0] = v27;
    *v26 = 136315394;
    v28 = IdentityTarget.debugDescription.getter();
    v30 = a4;
    v31 = a3;
    v32 = sub_100141FE4(v28, v29, v63);

    *(v26 + 4) = v32;
    a3 = v31;
    a4 = v30;
    *(v26 + 12) = 2080;
    v33 = v56;
    *(v26 + 14) = sub_100141FE4(v56, a2, v63);
    _os_log_impl(&_mh_execute_header, v22, v23, "Provisioning was initiated successfully for target: %s, credentialIdentifier: %s", v26, 0x16u);
    swift_arrayDestroy();
    v12 = v51;
    v34 = v61;

    v5 = v50;

    v35 = *(v34 + 8);
    v35(v21, v12);
  }

  else
  {

    v35 = *(v13 + 8);
    v35(v21, v12);
    v33 = v56;
  }

  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v37 = v36;
  sub_10026C350(v5, v63);
  v38 = swift_allocObject();
  v39 = v63[7];
  *(v38 + 136) = v63[6];
  *(v38 + 152) = v39;
  *(v38 + 168) = v63[8];
  v40 = v63[3];
  *(v38 + 72) = v63[2];
  *(v38 + 88) = v40;
  v41 = v63[5];
  *(v38 + 104) = v63[4];
  *(v38 + 120) = v41;
  v42 = v63[1];
  *(v38 + 40) = v63[0];
  *(v38 + 16) = v37;
  *(v38 + 24) = v33;
  *(v38 + 32) = a2;
  v43 = v64;
  *(v38 + 56) = v42;
  *(v38 + 184) = v43;
  *(v38 + 192) = a3;
  *(v38 + 200) = a4;

  sub_10057C18C(sub_1002F5058, v38);

  v44 = IdentityTarget.rawValue.getter();
  if (v44 == IdentityTarget.rawValue.getter())
  {
    defaultLogger()();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Resetting watch prearm attempts", v47, 2u);
    }

    v35(v57, v12);
    v48 = [objc_opt_self() standardUserDefaults];
    static DaemonDefaultsKeys.watchPrearmAttempts.getter();
    v49 = String._bridgeToObjectiveC()();

    [v48 removeObjectForKey:v49];
  }
}

void sub_1002F3C64(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v54 = a4;
  v53 = a3;
  v58 = a1;
  v7 = type metadata accessor for DIPError.Code();
  v55 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPError();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v61 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v60 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v56 = v52 - v18;
  v19 = __chkstk_darwin(v17);
  v59 = v52 - v20;
  __chkstk_darwin(v19);
  v22 = v52 - v21;
  defaultLogger()();
  v63 = v5;
  sub_1002F5080(v5, &v64);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  v25 = os_log_type_enabled(v23, v24);
  v62 = v13;
  v57 = v11;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v52[1] = v9;
    v52[0] = v7;
    v27 = v26;
    v64 = swift_slowAlloc();
    *v27 = 136315394;
    v28 = IdentityTarget.debugDescription.getter();
    v29 = v14;
    v31 = v30;
    sub_1002F50DC(v63);
    v32 = sub_100141FE4(v28, v31, &v64);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v33 = v58;
    *(v27 + 14) = sub_100141FE4(v58, a2, &v64);
    _os_log_impl(&_mh_execute_header, v23, v24, "Provisioning was initiated successfully for target: %s, credentialIdentifier: %s", v27, 0x16u);
    swift_arrayDestroy();

    v34 = *(v29 + 8);
    v34(v22, v62);
  }

  else
  {

    sub_1002F50DC(v63);
    v34 = *(v14 + 8);
    v34(v22, v13);
    v33 = v58;
  }

  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v36 = v35;
  v37 = swift_allocObject();
  v38 = v63;
  v39 = *(v63 + 64);
  *(v37 + 120) = *(v63 + 80);
  v40 = *(v38 + 112);
  *(v37 + 136) = *(v38 + 96);
  *(v37 + 152) = v40;
  v41 = *v38;
  *(v37 + 56) = *(v38 + 16);
  v42 = *(v38 + 48);
  *(v37 + 72) = *(v38 + 32);
  *(v37 + 88) = v42;
  *(v37 + 104) = v39;
  *(v37 + 16) = v36;
  *(v37 + 24) = v33;
  *(v37 + 32) = a2;
  v43 = *(v38 + 128);
  *(v37 + 40) = v41;
  v44 = v53;
  *(v37 + 168) = v43;
  *(v37 + 176) = v44;
  *(v37 + 184) = v54;
  sub_1002F5080(v38, &v64);

  sub_10057C18C(sub_1002F51D8, v37);

  v51 = v62;
  v45 = IdentityTarget.rawValue.getter();
  if (v45 == IdentityTarget.rawValue.getter())
  {
    defaultLogger()();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Resetting watch prearm attempts", v48, 2u);
    }

    v34(v59, v51);
    v49 = [objc_opt_self() standardUserDefaults];
    static DaemonDefaultsKeys.watchPrearmAttempts.getter();
    v50 = String._bridgeToObjectiveC()();

    [v49 removeObjectForKey:v50];
  }
}

void sub_1002F4650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057CE48(a2, a3, 1);
  if (!v6)
  {
    v44 = a2;
    v45 = a3;
    v46 = v11;
    v47 = v12;
    v48 = a5;
    if (v15)
    {
      v42 = a6;
      v16 = v15;
      v17 = [v15 proofingSessionID];
      if (v17)
      {
        v18 = v17;
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = IdentityProofingActionStatus.rawValue.getter();
        sub_10057F148(v22, 0);
        sub_10057BA64();
        v43 = v6;
        v23 = v16;
        v24 = v14;
        defaultLogger()();

        v25 = v45;

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v40 = v27;
          v29 = v28;
          v41 = swift_slowAlloc();
          v49 = v41;
          *v29 = 136315650;
          v30 = IdentityTarget.debugDescription.getter();
          v32 = sub_100141FE4(v30, v31, &v49);

          *(v29 + 4) = v32;
          *(v29 + 12) = 2080;
          v33 = sub_100141FE4(v19, v21, &v49);

          *(v29 + 14) = v33;
          *(v29 + 22) = 2080;
          *(v29 + 24) = sub_100141FE4(v44, v25, &v49);
          _os_log_impl(&_mh_execute_header, v26, v40, "Successfully updated the proofing status for target: %s, with proofingSessionID: %s, credentialIdentifier: %s", v29, 0x20u);
          swift_arrayDestroy();
        }

        else
        {
        }

        (*(v47 + 8))(v24, v46);
        v34 = type metadata accessor for IdentityManagementSessionDelegate();
        v35 = [objc_opt_self() defaultCenter];
        v36 = String._bridgeToObjectiveC()();
        v49 = v34;
        sub_100007224(&qword_10083D698, &unk_1006DB6F0);
        [v35 postNotificationName:v36 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

        swift_unknownObjectRelease();
        v37 = [v23 workflowID];
        if (v37)
        {
          v38 = v37;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        type metadata accessor for DaemonAnalytics();

        static DaemonAnalytics.sendIdentityProvisioningAttemptedEvent(workflowID:trigger:target:wasSuccessful:)();
      }

      else
      {
      }
    }
  }
}

void sub_1002F4A9C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53[19] = a6;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10057CE48(a2, a3, 2);
  if (!v6)
  {
    v17 = v16;
    v52 = a1;
    v47 = a2;
    v48 = v15;
    v49 = v12;
    v50 = v13;
    v51 = a5;
    if (v16)
    {
      v18 = [v16 proofingSessionID];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = IdentityProofingActionStatus.rawValue.getter();
        sub_10057F148(v23, 0);
        sub_10057BA64();
        v52 = v6;
        v45 = v20;
        v46 = v17;
        v24 = v48;
        defaultLogger()();
        v25 = a4;
        sub_1002F5080(a4, v53);

        v26 = v22;
        v27 = a3;

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();

        v30 = v26;

        if (os_log_type_enabled(v28, v29))
        {
          v31 = swift_slowAlloc();
          HIDWORD(v43) = v29;
          v32 = v31;
          v44 = swift_slowAlloc();
          v53[0] = v44;
          *v32 = 136315650;
          v33 = IdentityTarget.debugDescription.getter();
          v35 = v34;
          sub_1002F50DC(v25);
          v36 = sub_100141FE4(v33, v35, v53);

          *(v32 + 4) = v36;
          *(v32 + 12) = 2080;
          v37 = sub_100141FE4(v45, v30, v53);

          *(v32 + 14) = v37;
          *(v32 + 22) = 2080;
          *(v32 + 24) = sub_100141FE4(v47, v27, v53);
          _os_log_impl(&_mh_execute_header, v28, BYTE4(v43), "Successfully updated the proofing status for target: %s, with proofingSessionID: %s, credentialIdentifier: %s", v32, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          sub_1002F50DC(v25);
        }

        (*(v50 + 8))(v24, v49);
        v38 = type metadata accessor for IdentityManagementSessionDelegate();
        v39 = [objc_opt_self() defaultCenter];
        v40 = String._bridgeToObjectiveC()();
        v53[0] = v38;
        sub_100007224(&qword_10083D698, &unk_1006DB6F0);
        [v39 postNotificationName:v40 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

        swift_unknownObjectRelease();
        v41 = [v46 workflowID];
        if (v41)
        {
          v42 = v41;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        type metadata accessor for DaemonAnalytics();

        static DaemonAnalytics.sendIdentityProvisioningAttemptedEvent(workflowID:trigger:target:wasSuccessful:)();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1002F4FB8()
{

  v1 = v0[16];
  if (v1 >> 60 != 15)
  {
    sub_10000B90C(v0[15], v1);
  }

  v2 = v0[18];
  if (v2 >> 60 != 15)
  {
    sub_10000B90C(v0[17], v2);
  }

  sub_10000BB78(v0 + 19);

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_1002F5130()
{

  v1 = *(v0 + 144);
  if (v1 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + 136), v1);
  }

  v2 = *(v0 + 160);
  if (v2 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + 152), v2);
  }

  return _swift_deallocObject(v0, 192, 7);
}

__n128 sub_1002F51D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 152);
  v11[6] = *(v0 + 136);
  v11[7] = v7;
  v12 = *(v0 + 168);
  v8 = *(v0 + 56);
  v9 = *(v0 + 88);
  v11[2] = *(v0 + 72);
  v11[3] = v9;
  v11[4] = *(v0 + 104);
  v11[5] = v6;
  v11[0] = *(v0 + 40);
  v11[1] = v8;
  sub_1002F4A9C(v1, v2, v3, v11, v4, v5);
  return result;
}

uint64_t sub_1002F5264(uint64_t a1, uint64_t a2)
{
  v3[87] = v2;
  v3[86] = a2;
  v3[85] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[88] = v4;
  v3[89] = *(v4 - 8);
  v3[90] = swift_task_alloc();
  v5 = type metadata accessor for ProofingSession();
  v3[91] = v5;
  v3[92] = *(v5 - 8);
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v3[96] = sub_100007224(&qword_10083DC18, &unk_1006DB720);
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[99] = v6;
  v3[100] = *(v6 - 8);
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v3[104] = swift_task_alloc();
  v3[105] = swift_task_alloc();
  v3[106] = swift_task_alloc();
  v3[107] = swift_task_alloc();
  v3[108] = swift_task_alloc();

  return _swift_task_switch(sub_1002F5498, 0, 0);
}

uint64_t sub_1002F5498(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to provision on watch", v4, 2u);
  }

  v5 = v1[108];
  v6 = v1[100];
  v7 = v1[99];

  v8 = *(v6 + 8);
  v1[109] = v8;
  v8(v5, v7);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v9 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v9 + 54);
  sub_1000318FC(&v9[4], (v1 + 2));
  os_unfair_lock_unlock(v9 + 54);
  v10 = v1[87];
  v11 = v1[86];
  v12 = v1[85];
  v1[110] = v1[9];

  sub_100031918((v1 + 2));
  v13 = swift_allocObject();
  v1[111] = v13;
  v13[2] = v12;
  v13[3] = v11;
  v13[4] = v10;
  v14 = swift_allocObject();
  v1[112] = v14;
  *(v14 + 16) = sub_1002F86E8;
  *(v14 + 24) = v13;

  v15 = swift_task_alloc();
  v1[113] = v15;
  *v15 = v1;
  v15[1] = sub_1002F5718;
  v16 = v1[98];
  v17 = v1[96];

  return AsyncCoreDataContainer.performRead<A>(_:)(v16, sub_10017F710, v14, v17);
}

uint64_t sub_1002F5718()
{
  *(*v1 + 912) = v0;

  if (v0)
  {
    v2 = sub_1002F6A7C;
  }

  else
  {

    v2 = sub_1002F584C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F584C()
{
  v160 = v0;
  v1 = *(v0 + 776);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  sub_10000BBC4(*(v0 + 784), v1, &qword_10083DC18, &unk_1006DB720);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 784);
    v5 = *(v0 + 720);
    v6 = *(v0 + 712);
    v7 = *(v0 + 704);
    sub_10000BE18(*(v0 + 776), &qword_10083DC18, &unk_1006DB720);
    (*(v6 + 104))(v5, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v8 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_32:
    sub_10000BE18(v4, &qword_10083DC18, &unk_1006DB720);
    *(v0 + 1000) = v8;
    v89 = *(v0 + 872);
    v90 = *(v0 + 840);
    v91 = *(v0 + 800);
    v92 = *(v0 + 792);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    *(v0 + 1008) = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v89(v90, v92);
    defaultLogger()();
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v93, v94, "Provisioning on watch has failed, will delete the proofing", v95, 2u);
    }

    v96 = *(v0 + 872);
    v97 = *(v0 + 832);
    v98 = *(v0 + 792);
    v99 = *(v0 + 696);

    v96(v97, v98);
    v100 = *(v99 + 72);
    v101 = *(v99 + 80);
    *(v0 + 1016) = v101;
    if (v101)
    {

      defaultLogger()();
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        _os_log_impl(&_mh_execute_header, v102, v103, "Deleting the watch proofing session using the watch proofing session ID", v104, 2u);
      }

      v105 = *(v0 + 872);
      v106 = *(v0 + 824);
      v107 = *(v0 + 792);

      v105(v106, v107);
      v108 = swift_task_alloc();
      *(v0 + 1024) = v108;
      *v108 = v0;
      v108[1] = sub_1002F7214;

      return sub_10029E160(0, 0, v100, v101, 2, 0);
    }

    else
    {
      v110 = *(v0 + 696);
      v111 = *(v110 + 88);
      *(v0 + 1032) = v111;
      v112 = *(v110 + 96);
      *(v0 + 1040) = v112;
      if (v112)
      {

        defaultLogger()();
        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          *v115 = 0;
          _os_log_impl(&_mh_execute_header, v113, v114, "Deleting the watch proofing session using watch credential identifier", v115, 2u);
        }

        v116 = *(v0 + 872);
        v117 = *(v0 + 816);
        v118 = *(v0 + 792);
        v119 = *(v0 + 696);

        v116(v117, v118);
        *(v0 + 1048) = *(v119 + 16);
        v120 = swift_task_alloc();
        *(v0 + 1056) = v120;
        *v120 = v0;
        v120[1] = sub_1002F7458;

        return sub_1002A2920(v111, v112, 0, 0);
      }

      else
      {

        v121 = *(v0 + 8);

        return v121();
      }
    }
  }

  v9 = *(v0 + 760);
  v10 = *(v0 + 752);
  v11 = *(v0 + 736);
  v12 = *(v0 + 728);
  (*(v11 + 32))(v9, *(v0 + 776), v12);
  defaultLogger()();
  v146 = *(v11 + 16);
  v146(v10, v9, v12);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 872);
  v17 = *(v0 + 856);
  v18 = *(v0 + 792);
  v19 = *(v0 + 752);
  v20 = *(v0 + 736);
  v21 = *(v0 + 728);
  if (v15)
  {
    v150 = *(v0 + 856);
    v22 = swift_slowAlloc();
    v144 = v18;
    v23 = swift_slowAlloc();
    v159[0] = v23;
    *v22 = 136315138;
    v24 = ProofingSession.proofingSessionID.getter();
    v142 = v16;
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0xE000000000000000;
    }

    v139 = v14;
    v28 = *(v20 + 8);
    v28(v19, v21);
    v29 = sub_100141FE4(v26, v27, v159);

    *(v22 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v13, v139, "Proofing Session exists for watch with %s. Will attempt provisioning.", v22, 0xCu);
    sub_10000BB78(v23);

    v142(v150, v144);
  }

  else
  {

    v28 = *(v20 + 8);
    v28(v19, v21);
    v16(v17, v18);
  }

  *(v0 + 920) = v28;
  v30 = *(*(v0 + 696) + 24);
  *(v0 + 928) = v30;
  if (!v30)
  {
    v151 = v28;
    v154 = *(v0 + 784);
    v75 = *(v0 + 760);
    v76 = *(v0 + 728);
    (*(*(v0 + 712) + 104))(*(v0 + 720), enum case for DIPError.Code.watchListenerDoesntExist(_:), *(v0 + 704));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v8 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v4 = v154;
    v77 = v75;
    v78 = v76;
LABEL_28:
    v151(v77, v78);
    goto LABEL_32;
  }

  v31 = v30;
  v32 = ProofingSession.credentialIdentifier.getter();
  if (!v33)
  {
    v151 = v28;
    v155 = *(v0 + 784);
    v148 = *(v0 + 760);
    v79 = *(v0 + 728);
    (*(*(v0 + 712) + 104))(*(v0 + 720), enum case for DIPError.Code.watchCredentialIdentifierDoesNotExist(_:), *(v0 + 704));
    v80 = v31;
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v8 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v4 = v155;
    v77 = v148;
    v78 = v79;
    goto LABEL_28;
  }

  v34 = v32;
  v35 = v33;
  v145 = v31;
  v36 = ProofingSession.provisioningCredentialID.getter();
  if (!v37)
  {
    v152 = *(v0 + 760);
    v156 = *(v0 + 784);
    v81 = *(v0 + 728);
    v82 = *(v0 + 720);
    v83 = *(v0 + 712);
    v84 = v28;
    v85 = *(v0 + 704);

    (*(v83 + 104))(v82, enum case for DIPError.Code.watchProvisioningCredentialIDDoesntExist(_:), v85);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v8 = swift_allocError();
LABEL_31:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v4 = v156;
    v84(v152, v81);
    goto LABEL_32;
  }

  v38 = v36;
  v39 = v37;
  v40 = ProofingSession.partnerSchemeID.getter();
  if (!v41)
  {
    v152 = *(v0 + 760);
    v156 = *(v0 + 784);
    v81 = *(v0 + 728);
    v86 = *(v0 + 720);
    v87 = *(v0 + 712);
    v84 = v28;
    v88 = *(v0 + 704);

    (*(v87 + 104))(v86, enum case for DIPError.Code.watchPartnerSchemeIDDoesntExist(_:), v88);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v8 = swift_allocError();
    goto LABEL_31;
  }

  v42 = v40;
  v43 = v41;
  v151 = v28;
  v44 = ProofingSession.provisioningTargetInstanceID.getter();
  if (!v45)
  {
    v122 = *(v0 + 784);
    v157 = *(v0 + 760);
    v123 = *(v0 + 728);
    v124 = *(v0 + 720);
    v125 = *(v0 + 712);
    v126 = *(v0 + 704);

    (*(v125 + 104))(v124, enum case for DIPError.Code.watchProvisioningTargetInstanceIDDoesntExist(_:), v126);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v8 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v77 = v157;
    v78 = v123;
    v4 = v122;
    goto LABEL_28;
  }

  v46 = v44;
  v47 = v45;
  v48 = ProofingSession.pairingID.getter();
  if (!v49)
  {
    v127 = *(v0 + 784);
    v158 = *(v0 + 760);
    v149 = *(v0 + 728);
    v128 = *(v0 + 720);
    v129 = *(v0 + 712);
    v130 = *(v0 + 704);

    (*(v129 + 104))(v128, enum case for DIPError.Code.watchPairingIDDoesNotExist(_:), v130);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v8 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v4 = v127;
    v77 = v158;
    v78 = v149;
    goto LABEL_28;
  }

  v136 = v49;
  v140 = *(v0 + 744);
  v143 = *(v0 + 728);
  v137 = *(v0 + 696);
  v138 = *(v0 + 760);
  v134 = v48;
  v135 = ProofingSession.issuerCurrentCredentialCapacity.getter();
  v50 = ProofingSession.serverAttestedProvisioningData.getter();
  v132 = v51;
  v133 = v50;
  *(v0 + 936) = v50;
  *(v0 + 944) = v51;
  v52 = ProofingSession.supplementalProvisioningData.getter();
  *(v0 + 952) = v52;
  *(v0 + 960) = v53;
  LOBYTE(v159[0]) = 0;
  *(v0 + 216) = v34;
  *(v0 + 224) = v35;
  *(v0 + 232) = v38;
  *(v0 + 240) = v39;
  *(v0 + 248) = v42;
  *(v0 + 256) = v43;
  *(v0 + 264) = v46;
  *(v0 + 272) = v47;
  *(v0 + 280) = v134;
  *(v0 + 288) = v136;
  *(v0 + 296) = v135;
  *(v0 + 304) = 0;
  *(v0 + 312) = v133;
  *(v0 + 320) = v132;
  *(v0 + 328) = v52;
  *(v0 + 336) = v53;
  v54 = v53;
  *(v0 + 344) = v145;
  sub_10000BBC4(v137 + 32, v0 + 600, &unk_100833B60, &qword_1006BF9E0);
  *(v0 + 664) = &type metadata for IdentityWatchProvisioningProvider;
  *(v0 + 672) = &off_10080D0B8;
  v55 = swift_allocObject();
  *(v0 + 640) = v55;
  v56 = *(v0 + 328);
  *(v55 + 112) = *(v0 + 312);
  *(v55 + 128) = v56;
  *(v55 + 144) = *(v0 + 344);
  v57 = *(v0 + 264);
  *(v55 + 48) = *(v0 + 248);
  *(v55 + 64) = v57;
  v58 = *(v0 + 296);
  *(v55 + 80) = *(v0 + 280);
  *(v55 + 96) = v58;
  v59 = *(v0 + 232);
  *(v55 + 16) = *(v0 + 216);
  *(v55 + 32) = v59;
  type metadata accessor for IdentityProvisioningManager();
  *(v0 + 968) = swift_initStackObject();
  v60 = v145;
  sub_1000363B4(v133, v132);
  sub_1000363B4(v52, v54);
  sub_1002F5080(v0 + 216, v0 + 352);
  *(v0 + 976) = sub_1002EA490(v0 + 600, v0 + 640, 0, 0);
  defaultLogger()();
  v146(v140, v138, v143);
  v61 = Logger.logObject.getter();
  v153 = static os_log_type_t.default.getter();
  v62 = os_log_type_enabled(v61, v153);
  v63 = *(v0 + 872);
  v64 = *(v0 + 848);
  v65 = *(v0 + 792);
  v66 = *(v0 + 744);
  v67 = *(v0 + 728);
  if (v62)
  {
    v147 = *(v0 + 792);
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v159[0] = v69;
    *v68 = 136446210;
    v70 = ProofingSession.proofingSessionID.getter();
    v141 = v63;
    if (v71)
    {
      v72 = v70;
    }

    else
    {
      v72 = 0;
    }

    if (v71)
    {
      v73 = v71;
    }

    else
    {
      v73 = 0xE000000000000000;
    }

    v151(v66, v67);
    v74 = sub_100141FE4(v72, v73, v159);

    *(v68 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v61, v153, "Trying to provision watch with proofingSessionID: %{public}s", v68, 0xCu);
    sub_10000BB78(v69);

    v141(v64, v147);
  }

  else
  {

    v151(v66, v67);
    v63(v64, v65);
  }

  v131 = swift_task_alloc();
  *(v0 + 984) = v131;
  *v131 = v0;
  v131[1] = sub_1002F6F5C;

  return sub_1002EA818();
}

uint64_t sub_1002F6A7C()
{

  v0[125] = v0[114];
  v1 = v0[109];
  v2 = v0[105];
  v3 = v0[100];
  v4 = v0[99];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v0[126] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v1(v2, v4);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Provisioning on watch has failed, will delete the proofing", v7, 2u);
  }

  v8 = v0[109];
  v9 = v0[104];
  v10 = v0[99];
  v11 = v0[87];

  v8(v9, v10);
  v12 = *(v11 + 72);
  v13 = *(v11 + 80);
  v0[127] = v13;
  if (v13)
  {

    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Deleting the watch proofing session using the watch proofing session ID", v16, 2u);
    }

    v17 = v0[109];
    v18 = v0[103];
    v19 = v0[99];

    v17(v18, v19);
    v20 = swift_task_alloc();
    v0[128] = v20;
    *v20 = v0;
    v20[1] = sub_1002F7214;

    return sub_10029E160(0, 0, v12, v13, 2, 0);
  }

  else
  {
    v22 = v0[87];
    v23 = *(v22 + 88);
    v0[129] = v23;
    v24 = *(v22 + 96);
    v0[130] = v24;
    if (v24)
    {

      defaultLogger()();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Deleting the watch proofing session using watch credential identifier", v27, 2u);
      }

      v28 = v0[109];
      v29 = v0[102];
      v30 = v0[99];
      v31 = v0[87];

      v28(v29, v30);
      v0[131] = *(v31 + 16);
      v32 = swift_task_alloc();
      v0[132] = v32;
      *v32 = v0;
      v32[1] = sub_1002F7458;

      return sub_1002A2920(v23, v24, 0, 0);
    }

    else
    {

      v33 = v0[1];

      return v33();
    }
  }
}

uint64_t sub_1002F6F5C()
{
  *(*v1 + 992) = v0;

  if (v0)
  {
    v2 = sub_1002F78F4;
  }

  else
  {
    v2 = sub_1002F7070;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F7070()
{
  v1 = v0[120];
  v2 = v0[119];
  v3 = v0[116];
  v4 = v0[115];
  v5 = v0[98];
  v6 = v0[95];
  v7 = v0[91];
  sub_10000BD94(v0[117], v0[118]);

  sub_10000BD94(v2, v1);
  sub_1002F50DC((v0 + 27));

  v4(v6, v7);
  sub_10000BE18(v5, &qword_10083DC18, &unk_1006DB720);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002F7214()
{

  return _swift_task_switch(sub_1002F732C, 0, 0);
}

uint64_t sub_1002F732C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F7458()
{

  return _swift_task_switch(sub_1002F7554, 0, 0);
}

uint64_t sub_1002F7554(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to notify provisioning complete to the server", v4, 2u);
  }

  v5 = v1[130];
  v6 = v1[109];
  v7 = v1[101];
  v8 = v1[99];

  v6(v7, v8);
  v9 = swift_task_alloc();
  v1[133] = v9;
  *v9 = v1;
  v9[1] = sub_1002F76A0;
  v10 = v1[129];

  return sub_10029AFAC(v10, v5, 1, 2);
}

uint64_t sub_1002F76A0()
{

  return _swift_task_switch(sub_1002F779C, 0, 0);
}

uint64_t sub_1002F779C()
{
  sub_1002A3AF8(v0[129], v0[130], 0, 0, 2, 0);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002F78F4()
{
  v1 = v0[120];
  v2 = v0[119];
  v3 = v0[116];
  v4 = v0[115];
  v5 = v0[98];
  v6 = v0[95];
  v7 = v0[91];
  sub_10000BD94(v0[117], v0[118]);

  sub_10000BD94(v2, v1);
  sub_1002F50DC((v0 + 27));

  v4(v6, v7);
  sub_10000BE18(v5, &qword_10083DC18, &unk_1006DB720);
  v0[125] = v0[124];
  v8 = v0[109];
  v9 = v0[105];
  v10 = v0[100];
  v11 = v0[99];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v0[126] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v9, v11);
  defaultLogger()();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Provisioning on watch has failed, will delete the proofing", v14, 2u);
  }

  v15 = v0[109];
  v16 = v0[104];
  v17 = v0[99];
  v18 = v0[87];

  v15(v16, v17);
  v19 = *(v18 + 72);
  v20 = *(v18 + 80);
  v0[127] = v20;
  if (v20)
  {

    defaultLogger()();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Deleting the watch proofing session using the watch proofing session ID", v23, 2u);
    }

    v24 = v0[109];
    v25 = v0[103];
    v26 = v0[99];

    v24(v25, v26);
    v27 = swift_task_alloc();
    v0[128] = v27;
    *v27 = v0;
    v27[1] = sub_1002F7214;

    return sub_10029E160(0, 0, v19, v20, 2, 0);
  }

  else
  {
    v29 = v0[87];
    v30 = *(v29 + 88);
    v0[129] = v30;
    v31 = *(v29 + 96);
    v0[130] = v31;
    if (v31)
    {

      defaultLogger()();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Deleting the watch proofing session using watch credential identifier", v34, 2u);
      }

      v35 = v0[109];
      v36 = v0[102];
      v37 = v0[99];
      v38 = v0[87];

      v35(v36, v37);
      v0[131] = *(v38 + 16);
      v39 = swift_task_alloc();
      v0[132] = v39;
      *v39 = v0;
      v39[1] = sub_1002F7458;

      return sub_1002A2920(v30, v31, 0, 0);
    }

    else
    {

      v40 = v0[1];

      return v40();
    }
  }
}

void sub_1002F7E34(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v82 = a4;
  v83 = a5;
  v8 = type metadata accessor for DIPError.Code();
  v80 = *(v8 - 8);
  v81 = v8;
  __chkstk_darwin(v8);
  v84 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v85 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v74 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v74 - v18;
  __chkstk_darwin(v17);
  v21 = &v74 - v20;
  v22 = v87;
  v23 = sub_100579D9C(a2, a3);
  if (!v22)
  {
    v75 = v21;
    v76 = a1;
    v74 = v16;
    v77 = a2;
    v79 = a3;
    v24 = v84;
    v25 = v85;
    v87 = 0;
    if (!v23)
    {
      v56 = v13;
      defaultLogger()();
      v57 = v79;

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v86[0] = v61;
        *v60 = 136315138;
        *(v60 + 4) = sub_100141FE4(v77, v57, v86);
        _os_log_impl(&_mh_execute_header, v58, v59, "Proofing Session doesn't exist for Credential ID %s", v60, 0xCu);
        sub_10000BB78(v61);
      }

      (*(v25 + 8))(v56, v10);
      goto LABEL_16;
    }

    v78 = v23;
    [v23 target];
    IdentityTarget.init(rawValue:)();
    if ((v26 & 1) == 0)
    {
      v27 = IdentityTarget.rawValue.getter();
      if (v27 == IdentityTarget.rawValue.getter())
      {
        v28 = v10;
        v29 = v75;
        defaultLogger()();
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();
        v32 = os_log_type_enabled(v30, v31);
        v33 = v25;
        v34 = v77;
        v35 = v82;
        if (v32)
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "The retrieved proofing session is from the Watch. Use the retrieved proofing session.", v36, 2u);
        }

        (*(v33 + 8))(v29, v28);
        v37 = v79;
        *(v35 + 88) = v34;
        *(v35 + 96) = v37;

        v38 = v83;
        ProofingSession.init(_:)();
        v39 = 0;
        goto LABEL_17;
      }
    }

    v40 = v19;
    defaultLogger()();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "The retrieved proofing session is from the phone. Will attempt to get the watch proofing session.", v43, 2u);
    }

    v46 = *(v25 + 8);
    v44 = v25 + 8;
    v45 = v46;
    v46(v40, v10);
    v47 = v78;
    v48 = [v78 proofingSessionID];
    if (v48)
    {
      v49 = v48;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = v82;
      *(v82 + 72) = v50;
      *(v53 + 80) = v52;

      v54 = v87;
      v55 = sub_1005792EC(v50, v52, 2);
      if (v54)
      {

        return;
      }

      v87 = 0;
      if (v55)
      {

        v38 = v83;
        ProofingSession.init(_:)();

        v39 = 0;
        goto LABEL_17;
      }

      v66 = v74;
      defaultLogger()();

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = v10;
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v85 = v44;
        v86[0] = v71;
        v72 = v71;
        *v70 = 136315138;
        v73 = sub_100141FE4(v50, v52, v86);

        *(v70 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v67, v68, "Proofing Session doesn't exist for proofingSessionID %s", v70, 0xCu);
        sub_10000BB78(v72);

        v45(v66, v69);
      }

      else
      {

        v45(v66, v10);
      }

LABEL_16:
      v39 = 1;
      v38 = v83;
LABEL_17:
      v62 = type metadata accessor for ProofingSession();
      (*(*(v62 - 8) + 56))(v38, v39, 1, v62);
      return;
    }

    v86[0] = 0;
    v86[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v63._countAndFlagsBits = 0xD00000000000002BLL;
    v63._object = 0x800000010070C8D0;
    String.append(_:)(v63);
    v64._countAndFlagsBits = v77;
    v64._object = v79;
    String.append(_:)(v64);
    v65._countAndFlagsBits = 0x74276E73656F6420;
    v65._object = 0xEE00747369786520;
    String.append(_:)(v65);
    (*(v80 + 104))(v24, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v81);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }
}

uint64_t sub_1002F861C()
{

  sub_10000BE18(v0 + 32, &unk_100833B60, &qword_1006BF9E0);

  return swift_deallocClassInstance();
}

uint64_t sub_1002F86A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002F8708()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002F8740()
{

  v1 = *(v0 + 120);
  if (v1 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + 112), v1);
  }

  v2 = *(v0 + 136);
  if (v2 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + 128), v2);
  }

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_1002F87D0()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  sub_10017ABC8();
  (*(v1 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v0);
  v6 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v3, v0);
  v22[3] = v4;
  v22[4] = &off_10080ADD0;
  v22[0] = v5;
  type metadata accessor for IdentityProofingCleanupProvider();
  v7 = swift_allocObject();
  v8 = sub_10001F370(v22, v4);
  __chkstk_darwin(v8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v20 = v4;
  v21 = &off_10080ADD0;
  *&v19 = v12;
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

  sub_10001F358(&v19, v7 + 24);
  *(v7 + 64) = v6;
  sub_10000BB78(v22);
  type metadata accessor for IdentityWatchProvisioningManager();
  result = swift_allocObject();
  v15 = 0uLL;
  *(result + 72) = 0u;
  *(result + 88) = 0u;
  *(result + 16) = v7;
  if (qword_1008824A8)
  {
    v16 = *(qword_1008824A8 + 152);
    v17 = result;
    v18 = v16;
    v15 = 0uLL;
    result = v17;
  }

  else
  {
    v16 = 0;
  }

  *(result + 24) = v16;
  *(result + 32) = v15;
  *(result + 48) = v15;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_1002F8A78()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1002F8AB0()
{
  v1 = *(v0 + 112);
  sub_1000363B4(v1, *(v0 + 120));
  return v1;
}

void *sub_1002F8AE4()
{
  v0 = sub_1002F8B54();
  type metadata accessor for IdentityProofingDataRetentionHelper();
  v1 = swift_allocObject();
  *(v1 + 16) = 90;
  type metadata accessor for IdentityBiomeBackgroundActivityProvider();
  swift_allocObject();
  result = sub_1002F8D40(v0, v1);
  qword_100882308 = result;
  return result;
}

uint64_t sub_1002F8B54()
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
  sub_10012D290(&v14, v7 + 16);
  *(v7 + 56) = v6;
  sub_10000BB78(v17);

  return v7;
}

void *sub_1002F8D40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = 0xD000000000000018;
  v3[3] = 0x800000010070C9D0;
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "IdentityBiomeBackgroundActivityProvider initialized", v12, 2u);
  }

  (*(v7 + 8))(v9, v6);
  v3[4] = a1;
  v3[5] = a2;
  return v3;
}

uint64_t sub_1002F8EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_1002F8FEC, 0, 0);
}

uint64_t sub_1002F8FEC()
{
  v0[23] = os_transaction_create();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v0 + 2, v0[5]);
  v1 = dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccount()();
  if (v1)
  {
    v2 = v1;
    sub_10000BB78(v0 + 2);
    static DIPAccountManager.sharedInstance.getter();
    sub_10000BA08(v0 + 7, v0[10]);
    v10 = dispatch thunk of DIPAccountManagerProtocol.isHSA2Enabled(account:)();
    sub_10000BB78(v0 + 7);
    if (v10)
    {

      type metadata accessor for IdentityProofingDataContext();
      swift_allocObject();
      sub_10057E28C();
      v0[24] = v11;
      v21 = v0[16];
      v22 = v0[14];
      v33 = v0[15];
      v34 = v0[17];
      v23 = v0[12];
      v24 = v0[13];
      v25 = *(v22 + 32);
      v26 = v11;
      v27 = swift_allocObject();
      v0[25] = v27;
      v27[2] = v26;
      v27[3] = v23;
      v27[4] = v24;
      v27[5] = v22;
      v27[6] = v25;
      v28 = swift_allocObject();
      v0[26] = v28;
      *(v28 + 16) = sub_1002FA0DC;
      *(v28 + 24) = v27;
      v29 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
      v30 = *(v21 + 104);

      v30(v34, v29, v33);

      v31 = swift_task_alloc();
      v0[27] = v31;
      *v31 = v0;
      v31[1] = sub_1002F94D8;
      v32 = v0[17];

      return NSManagedObjectContext.perform<A>(schedule:_:)(v31, v32, sub_1002F2EEC, v28, &type metadata for () + 8);
    }

    defaultLogger()();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[21];
    v16 = v0[18];
    v17 = v0[19];
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Skipping biome background activity because account is not HSA2", v18, 2u);
    }

    swift_unknownObjectRelease();
    (*(v17 + 8))(v15, v16);
  }

  else
  {
    sub_10000BB78(v0 + 2);
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[22];
    v7 = v0[18];
    v8 = v0[19];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Skipping biome background activity because user is not logged in", v9, 2u);
    }

    swift_unknownObjectRelease();

    (*(v8 + 8))(v6, v7);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1002F94D8()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    (*(v2[16] + 8))(v2[17], v2[15]);

    v3 = sub_1002F96FC;
  }

  else
  {
    v5 = v2[16];
    v4 = v2[17];
    v6 = v2[15];

    (*(v5 + 8))(v4, v6);
    v3 = sub_1002F9664;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002F9664()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F96FC()
{

  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_1002F97F0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = a5;
  v94 = a4;
  v98 = a3;
  v99 = a2;
  v5 = type metadata accessor for Date();
  v96 = *(v5 - 8);
  v97 = v5;
  __chkstk_darwin(v5);
  v93 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v7 - 8);
  v95 = &v82 - v8;
  v9 = type metadata accessor for DIPBackgroundDeferralStatus();
  v101 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v82 - v13;
  v15 = type metadata accessor for Logger();
  v100 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v82 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v82 - v23;
  __chkstk_darwin(v22);
  v26 = &v82 - v25;
  v27 = v102;
  v28 = sub_10057D18C();
  if (!v27)
  {
    v86 = v18;
    v87 = v24;
    v85 = v21;
    v89 = v9;
    v90 = v12;
    v30 = v100;
    v29 = v101;
    v91 = v15;
    v102 = 0;
    if (v28)
    {
      v88 = v28;
      v99();
      v32 = (v29 + 104);
      v31 = *(v29 + 104);
      v33 = v89;
      v34 = v90;
      v84 = enum case for DIPBackgroundDeferralStatus.shouldDefer(_:);
      v83 = v31;
      v31(v90);
      v35 = static DIPBackgroundDeferralStatus.== infix(_:_:)();
      v38 = *(v29 + 8);
      v36 = v29 + 8;
      v37 = v38;
      v38(v34, v33);
      v38(v14, v33);
      if (v35)
      {

        return;
      }

      v42 = v30;
      v43 = v87;
      defaultLogger()();
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Successfully fetched proofing biome data", v46, 2u);
        v43 = v87;
      }

      v87 = v32;

      v47 = v43;
      v48 = v91;
      v100 = v42[1];
      (v100)(v47, v91);
      v49 = [v88 optInDate];
      v101 = v36;
      if (v49)
      {
        v50 = v93;
        v51 = v49;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v53 = v95;
        v52 = v96;
        v54 = v50;
        v55 = v97;
        (*(v96 + 32))(v95, v54, v97);
        v56 = 0;
      }

      else
      {
        v56 = 1;
        v52 = v96;
        v55 = v97;
        v53 = v95;
      }

      (*(v52 + 56))(v53, v56, 1, v55);
      v57 = v102;
      v58 = sub_10017F818(v53);
      v59 = sub_100103444(v53);
      if (v57)
      {
        goto LABEL_16;
      }

      if (v58)
      {
        sub_1002FEF78();
LABEL_16:

        return;
      }

      (v99)(v59);
      v60 = v90;
      v83(v90, v84, v33);
      v61 = static DIPBackgroundDeferralStatus.== infix(_:_:)();
      v37(v60, v33);
      v37(v14, v33);
      if (v61)
      {
        goto LABEL_16;
      }

      if ([v88 isDonated])
      {
        v62 = v86;
        defaultLogger()();
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          v66 = "The biome data has already been donated.";
LABEL_28:
          _os_log_impl(&_mh_execute_header, v63, v64, v66, v65, 2u);

          goto LABEL_29;
        }

        goto LABEL_29;
      }

      v67 = [v88 proofingSessionID];
      if (!v67)
      {
        v62 = v85;
        defaultLogger()();
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          v66 = "Proofing Session ID doesn't exist in the proofing biome meta data. Exiting...";
          goto LABEL_28;
        }

LABEL_29:

        (v100)(v62, v48);
        return;
      }

      v68 = v67;
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v72 = [v88 proofingDecision];
      if (!v72 || (v73 = v72, v74 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v76 = v75, v73, v103._countAndFlagsBits = v74, v103._object = v76, v77 = sub_100265C7C(v103), v77 == 6))
      {

        goto LABEL_16;
      }

      v78 = v77;
      v102 = v69;
      v99();
      v79 = v89;
      v80 = v90;
      v83(v90, v84, v89);
      v81 = static DIPBackgroundDeferralStatus.== infix(_:_:)();
      v37(v80, v79);
      v37(v14, v79);
      if ((v81 & 1) == 0)
      {
        sub_1002FD90C(v102, v71, v78);
      }
    }

    else
    {
      defaultLogger()();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "No proofing biome data exists. Exiting...", v41, 2u);
      }

      v30[1](v26, v91);
    }
  }
}

uint64_t sub_1002FA020()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002FA08C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002FA100()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002FA15C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16[-1] - v5;
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Removing scheduled dynamic background activity for identity proofing", v9, 2u);
  }

  v10 = *(v1 + 8);
  v10(v6, v0);
  type metadata accessor for BackgroundActivityManager();
  static BackgroundActivityManager.shared.getter();
  sub_10000BA08(v16, v16[3]);
  dispatch thunk of BackgroundActivityManaging.unregisterActivity(identifier:)();
  sub_10000BB78(v16);
  defaultLogger()();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "dynamic background activity for identity proofing unregistration complete", v13, 2u);
  }

  return (v10)(v4, v0);
}

void sub_1002FA39C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for BackgroundActivitySettings();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Date();
  v4 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v39 = &v38 - v12;
  v13 = __chkstk_darwin(v11);
  v46 = &v38 - v14;
  __chkstk_darwin(v13);
  v16 = &v38 - v15;
  defaultLogger()();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Creating a dynamic background activity for identity proofing", v19, 2u);
  }

  v20 = *(v8 + 8);
  v20(v16, v7);
  Date.addingTimeInterval(_:)();
  Date.timeIntervalSinceNow.getter();
  v22 = v21 + 5.0;
  if (COERCE__INT64(fabs(v21 + 5.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v41 = v6;
  defaultLogger()();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v22 % 3600;
    v26 = (((34953 * v25) >> 16) >> 5) + (((v25 + ((-30583 * v25) >> 16)) & 0x8000) >> 15);
    v27 = (v25 - 60 * v26);
    v28 = v7;
    v29 = v26;
    v30 = swift_slowAlloc();
    *v30 = 134218496;
    *(v30 + 4) = v22 / 3600;
    *(v30 + 12) = 2048;
    *(v30 + 14) = v29;
    v7 = v28;
    *(v30 + 22) = 2048;
    *(v30 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v23, v24, "time left before pending actions can be invoked: %ldhour(s) %ldminute(s) %ldsecond(s)", v30, 0x20u);
  }

  v20(v46, v7);
  v31 = v42;
  BackgroundActivitySettings.init()();
  BackgroundActivitySettings.requiresNetworkConnectivity.setter();
  type metadata accessor for BackgroundActivityManager();
  static BackgroundActivityManager.shared.getter();
  sub_10000BA08(v47, v47[3]);
  dispatch thunk of BackgroundActivityManaging.scheduleActivity(identifier:after:gracePeriod:settings:)();
  sub_10000BB78(v47);
  v32 = v39;
  defaultLogger()();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "dynamic background activity for identity proofing scheduling complete", v35, 2u);
  }

  v20(v32, v7);
  v36._countAndFlagsBits = 0x3833353963323166;
  v37._countAndFlagsBits = 0xD00000000000003CLL;
  v37._object = 0x800000010070CA50;
  v36._object = 0xE800000000000000;
  logMilestone(tag:description:)(v36, v37);
  (*(v44 + 8))(v31, v45);
  (*(v4 + 8))(v41, v43);
}

void sub_1002FAAE0(uint64_t a1, int a2, uint64_t a3)
{
  v40 = a3;
  v39 = a2;
  v4 = type metadata accessor for Logger();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = (&v33 - v12);
  type metadata accessor for StoredProofingBiomeData();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(a1 + 16)];
  Date.init()();
  v15 = [v14 managedObjectContext];
  if (v15)
  {
    v33 = 0x800000010070CA90;
    v34 = v15;
    v16 = v7;
    (*(v8 + 16))(v11, v13, v7);
    v17 = *(v8 + 80);
    v35 = v13;
    v36 = a1;
    v18 = v6;
    v19 = (v17 + 57) & ~v17;
    v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 16) = v14;
    *(v21 + 24) = 0xD000000000000015;
    *(v21 + 32) = 0x800000010070CAB0;
    *(v21 + 40) = 0xD000000000000018;
    *(v21 + 48) = v33;
    *(v21 + 56) = v39 & 1;
    v22 = v21 + v19;
    v6 = v18;
    (*(v8 + 32))(v22, v11, v7);
    *(v21 + v20) = v40;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1002FB6A4;
    *(v23 + 24) = v21;
    aBlock[4] = sub_10021E8E8;
    v42 = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10057E264;
    aBlock[3] = &unk_10080D218;
    v24 = _Block_copy(aBlock);
    v7 = v42;
    v13 = v14;
    v25 = v14;

    v14 = v34;
    [v34 performBlockAndWait:v24];

    _Block_release(v24);
    v26 = *(v8 + 8);
    v8 += 8;
    v26(v35, v16);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if ((v16 & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v27 = v13;
  v13 = v14;
  (*(v8 + 8))(v27, v7);
LABEL_5:
  v28 = v43;
  sub_1005783D4();
  if (v28)
  {
  }

  else
  {
    defaultLogger()();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "The biome data has been updated successfully", v31, 2u);

      v32 = v13;
    }

    else
    {
      v32 = v29;
      v29 = v13;
    }

    (*(v37 + 8))(v6, v38);
  }
}

uint64_t sub_1002FAF68(char a1, uint64_t a2)
{
  *(v2 + 248) = a2;
  *(v2 + 328) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 256) = v3;
  *(v2 + 264) = *(v3 - 8);
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1002FB038, 0, 0);
}

uint64_t sub_1002FB038()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], v0 + 16);
  os_unfair_lock_unlock(v1 + 54);
  v2 = *(v0 + 248);
  v3 = *(v0 + 328);
  *(v0 + 288) = *(v0 + 72);

  sub_100031918(v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 296) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v0 + 304) = v5;
  *(v5 + 16) = sub_1002FB56C;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  *(v0 + 312) = v6;
  *v6 = v0;
  v6[1] = sub_1002FB1F8;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v6, sub_10017F710, v5, &type metadata for () + 8);
}

uint64_t sub_1002FB1F8()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1002FB328;
  }

  else
  {

    v2 = sub_1002A5920;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002FB328()
{
  v20 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[35];
    v4 = v0[32];
    v5 = v0[33];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received an error during injection of Biome Fed Stats Data %s", v6, 0xCu);
    sub_10000BB78(v7);

    v11 = *(v5 + 8);
    v11(v3, v4);
  }

  else
  {
    v12 = v0[35];
    v13 = v0[32];
    v14 = v0[33];

    v11 = *(v14 + 8);
    v11(v12, v13);
  }

  v15 = v0[34];
  v16 = v0[32];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v11(v15, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1002FB58C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002FB5C4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1002FB6A4()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 57) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100581D30(v3, v4, v5, v6, v7, v8, v0 + v2, v9);
}

uint64_t sub_1002FB740(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1002FB75C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v224 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v160 - v12;
  result = sub_100576B70(a2, a3);
  if (!v4)
  {
    v15 = result;
    v221 = a2;
    v222 = v8;
    v223 = 0;
    if (result)
    {
      defaultLogger()();
      v16 = a3;

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      v19 = os_log_type_enabled(v17, v18);
      v225 = v15;
      if (v19)
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v227[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_100141FE4(v221, v16, v227);
        _os_log_impl(&_mh_execute_header, v17, v18, "Successfully fetched biome metadata for proofingSessionID: %s", v20, 0xCu);
        sub_10000BB78(v21);
        v15 = v225;
      }

      (*(v222 + 8))(v13, v7);
      v22 = [v15 proofingSessionID];
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v221 = v25;
        v222 = v24;
      }

      else
      {
        v221 = 0;
        v222 = 0;
      }

      v32 = [v15 dob];
      if (v32)
      {
        v33 = v32;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v219 = v35;
        v220 = v34;
      }

      else
      {
        v219 = 0;
        v220 = 0;
      }

      v36 = [v15 ethnicity];
      if (v36)
      {
        v37 = v36;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v217 = v39;
        v218 = v38;
      }

      else
      {
        v217 = 0;
        v218 = 0;
      }

      v40 = [v15 gender];
      if (v40)
      {
        v41 = v40;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v215 = v43;
        v216 = v42;
      }

      else
      {
        v215 = 0;
        v216 = 0;
      }

      v214 = [v15 skinTone];
      v44 = [v15 deviceLanguage];
      if (v44)
      {
        v45 = v44;
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v212 = v47;
        v213 = v46;
      }

      else
      {
        v212 = 0;
        v213 = 0;
      }

      v48 = [v15 issuer];
      if (v48)
      {
        v49 = v48;
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v210 = v51;
        v211 = v50;
      }

      else
      {
        v210 = 0;
        v211 = 0;
      }

      v227[0] = [v15 livenessAssessment];
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v208 = v53;
      v209 = v52;
      v227[0] = [v225 gestureAssessment];
      v54 = v225;
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v206 = v56;
      v207 = v55;
      v57 = [v54 axSettings];
      if (v57)
      {
        v227[0] = 0;
        v58 = v57;
        static Array._conditionallyBridgeFromObjectiveC(_:result:)();

        v205 = v227[0];
      }

      else
      {
        v205 = 0;
      }

      v59 = [v54 facVersion];
      if (v59)
      {
        v60 = v59;
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v203 = v62;
        v204 = v61;
      }

      else
      {
        v203 = 0;
        v204 = 0;
      }

      v63 = [v54 facePoseVersion];
      if (v63)
      {
        v64 = v63;
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v201 = v66;
        v202 = v65;
      }

      else
      {
        v201 = 0;
        v202 = 0;
      }

      v67 = [v54 prdVersion];
      if (v67)
      {
        v68 = v67;
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v199 = v70;
        v200 = v69;
      }

      else
      {
        v199 = 0;
        v200 = 0;
      }

      v71 = [v54 padtoolVersion];
      if (v71)
      {
        v72 = v71;
        v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v197 = v74;
        v198 = v73;
      }

      else
      {
        v197 = 0;
        v198 = 0;
      }

      v229 = [v54 didStepUp];
      v227[0] = [v54 passiveLivenessAssessment];
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v195 = v76;
      v196 = v75;
      v227[0] = [v225 passiveGestureAssessment];
      v77 = v225;
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v193 = v79;
      v194 = v78;
      v80 = [v77 passiveLivenessFacVersion];
      if (v80)
      {
        v81 = v80;
        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v191 = v83;
        v192 = v82;
      }

      else
      {
        v191 = 0;
        v192 = 0;
      }

      v84 = [v77 passiveLivenessFacePoseVersion];
      if (v84)
      {
        v85 = v84;
        v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v189 = v87;
        v190 = v86;
      }

      else
      {
        v189 = 0;
        v190 = 0;
      }

      v88 = [v77 passiveLivenessPrdVersion];
      if (v88)
      {
        v89 = v88;
        v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v187 = v91;
        v188 = v90;
      }

      else
      {
        v187 = 0;
        v188 = 0;
      }

      v92 = [v77 passiveLivenessPadtoolVersion];
      if (v92)
      {
        v93 = v92;
        v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v183 = v95;
        v184 = v94;
      }

      else
      {
        v183 = 0;
        v184 = 0;
      }

      v96 = [v77 livenessShadowLabel];
      if (v96)
      {
        v97 = v96;
        v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v185 = v99;
        v186 = v98;
      }

      else
      {
        v185 = 0;
        v186 = 0;
      }

      v100 = [v77 livenessShadowFacVersion];
      if (v100)
      {
        v101 = v100;
        v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v181 = v103;
        v182 = v102;
      }

      else
      {
        v181 = 0;
        v182 = 0;
      }

      v104 = [v77 livenessShadowFacePoseVersion];
      if (v104)
      {
        v105 = v104;
        v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v179 = v107;
        v180 = v106;
      }

      else
      {
        v179 = 0;
        v180 = 0;
      }

      v108 = [v77 livenessShadowPrdVersion];
      if (v108)
      {
        v109 = v108;
        v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v177 = v111;
        v178 = v110;
      }

      else
      {
        v177 = 0;
        v178 = 0;
      }

      v112 = [v77 livenessShadowPadtoolVersion];
      if (v112)
      {
        v113 = v112;
        v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v175 = v115;
        v176 = v114;
      }

      else
      {
        v175 = 0;
        v176 = 0;
      }

      v116 = [v77 livenessShadowLivenessAssessment];
      if (v116)
      {
        v117 = v116;
        v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v173 = v119;
        v174 = v118;
      }

      else
      {
        v173 = 0;
        v174 = 0;
      }

      v120 = [v77 livenessShadowGestureAssessment];
      if (v120)
      {
        v121 = v120;
        v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v171 = v123;
        v172 = v122;
      }

      else
      {
        v171 = 0;
        v172 = 0;
      }

      v124 = [v77 livenessShadowLivenessType];
      if (v124)
      {
        v125 = v124;
        v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v169 = v127;
        v170 = v126;
      }

      else
      {
        v169 = 0;
        v170 = 0;
      }

      v128 = [v77 faceMatchingAssessment];
      if (v128)
      {
        v129 = v128;
        v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v167 = v131;
        v168 = v130;
      }

      else
      {
        v167 = 0;
        v168 = 0;
      }

      v132 = [v77 faceMatchingModelVersion];
      if (v132)
      {
        v133 = v132;
        v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v165 = v135;
        v166 = v134;
      }

      else
      {
        v165 = 0;
        v166 = 0;
      }

      v136 = [v77 faceMatchingDetectorModelVersion];
      if (v136)
      {
        v137 = v136;
        v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v163 = v139;
        v164 = v138;
      }

      else
      {
        v163 = 0;
        v164 = 0;
      }

      v140 = [v77 faceMatchingShadowAssessment];
      if (v140)
      {
        v141 = v140;
        v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v161 = v143;
        v162 = v142;
      }

      else
      {
        v161 = 0;
        v162 = 0;
      }

      v144 = [v77 faceMatchingShadowModelVersion];
      if (v144)
      {
        v145 = v144;
        v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v148 = v147;
      }

      else
      {
        v146 = 0;
        v148 = 0;
      }

      v149 = [v77 faceMatchingShadowDetectorModelVersion];
      if (v149)
      {
        v150 = v149;
        v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v153 = v152;
      }

      else
      {
        v151 = 0;
        v153 = 0;
      }

      v154 = [v77 identityType];
      if (v154)
      {
        v155 = v154;
        v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v158 = v157;
      }

      else
      {

        v156 = 0;
        v158 = 0;
      }

      v226[0] = v222;
      v226[1] = v221;
      v226[2] = v220;
      v226[3] = v219;
      v226[4] = v218;
      v226[5] = v217;
      v226[6] = v216;
      v226[7] = v215;
      v226[8] = v214;
      v226[10] = v213;
      v226[11] = v212;
      v226[12] = v211;
      v226[13] = v210;
      v226[14] = v209;
      v226[15] = v208;
      v226[16] = v207;
      v226[17] = v206;
      v226[18] = v205;
      v226[19] = v204;
      v226[20] = v203;
      v226[21] = v202;
      v226[22] = v201;
      v226[23] = v200;
      v226[24] = v199;
      v226[25] = v198;
      v226[26] = v197;
      LOBYTE(v226[27]) = v229;
      v226[28] = v196;
      v226[29] = v195;
      v226[30] = v194;
      v226[31] = v193;
      v226[32] = v192;
      v226[33] = v191;
      v226[34] = v190;
      v226[35] = v189;
      v226[36] = v188;
      v226[37] = v187;
      v226[38] = v184;
      v226[39] = v183;
      v228 = 0;
      LOBYTE(v226[9]) = 0;
      v226[40] = v186;
      v226[41] = v185;
      v226[42] = v182;
      v226[43] = v181;
      v226[44] = v180;
      v226[45] = v179;
      v226[46] = v178;
      v226[47] = v177;
      v226[48] = v176;
      v226[49] = v175;
      v226[50] = v174;
      v226[51] = v173;
      v226[52] = v172;
      v226[53] = v171;
      v226[54] = v170;
      v226[55] = v169;
      v226[56] = v168;
      v226[57] = v167;
      v226[58] = v166;
      v226[59] = v165;
      v226[60] = v164;
      v226[61] = v163;
      v226[62] = v162;
      v226[63] = v161;
      v226[64] = v146;
      v226[65] = v148;
      v226[66] = v151;
      v226[67] = v153;
      v226[68] = v156;
      v226[69] = v158;
      nullsub_7();
      v159 = v224;
      swift_beginAccess();
      memcpy(v227, (v159 + 16), 0x230uLL);
      memcpy((v159 + 16), v226, 0x230uLL);
      return sub_10000BE18(v227, &unk_100840940, &unk_1006DD4C0);
    }

    else
    {
      defaultLogger()();
      v26 = a3;
      v27 = v11;

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v227[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_100141FE4(v221, v26, v227);
        _os_log_impl(&_mh_execute_header, v28, v29, "Stored biome metadata doesnt exist for proofingSessionID: %s", v30, 0xCu);
        sub_10000BB78(v31);
      }

      return (*(v222 + 8))(v27, v7);
    }
  }

  return result;
}

void sub_1002FC390(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100576B70(a2, a3);
  if (!v3)
  {
    v12 = v11;
    if (v11)
    {
      [*(a1 + 16) deleteObject:v11];
      sub_100576468();
      defaultLogger()();

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v21 = v14;
        v16 = v15;
        v17 = swift_slowAlloc();
        v20 = v13;
        v18 = v17;
        v22 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_100141FE4(a2, a3, &v22);
        v19 = v20;
        _os_log_impl(&_mh_execute_header, v20, v21, "Successfully deleted biome metadata for proofingSessionID: %s", v16, 0xCu);
        sub_10000BB78(v18);
      }

      else
      {
      }

      (*(v8 + 8))(v10, v7);
    }
  }
}

void sub_1002FC5B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v190 = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v123 - v13;
  v15 = sub_100576B70(a2, a3);
  if (v4)
  {
    return;
  }

  v16 = v12;
  v17 = v190;
  v168 = v8;
  v169 = a3;
  v170 = a1;
  v147 = v14;
  v167 = v9;
  v172 = 0;
  if (v15)
  {
    v171 = v15;
    v18 = type metadata accessor for PendingActionContext(0);
    v19 = v17;
    v20 = *(v17 + v18[33]);
    v123 = a2;
    if (v20 && *(v20 + 16))
    {
      v21 = *(v20 + 32);
      v22 = *(v20 + 64);
      v23 = *(v20 + 80);
      v24 = *(v20 + 112);
      v174[4] = *(v20 + 96);
      v174[5] = v24;
      v175 = *(v20 + 128);
      v174[2] = v22;
      v174[3] = v23;
      v26 = *(v20 + 32);
      v25 = *(v20 + 48);
      v174[0] = v21;
      v174[1] = v25;
      v27 = *(v20 + 48);
      v28 = *(v20 + 64);
      v176 = v26;
      v177 = v27;
      v29 = *(v20 + 80);
      v30 = *(v20 + 96);
      v181 = v24;
      v182 = v175;
      v179 = v29;
      v180 = v30;
      v178 = v28;
      sub_1000AFC58(v174, &v173);
      v187 = v180;
      v188 = v181;
      v189 = v182;
      v183 = v176;
      v184 = v177;
      v185 = v178;
      v186 = v179;
    }

    else
    {
      v188 = 0u;
      v189 = 0u;
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v183 = 0u;
    }

    v31 = v18[35];
    v32 = (v17 + v18[34]);
    v33 = *v32;
    v34 = v32[1];
    v35 = v32[2];
    v153 = v32[3];
    v36 = v32[4];
    v37 = (v17 + v31);
    v39 = *(v17 + v31);
    v38 = *(v17 + v31 + 8);
    v133 = v39;
    v166 = v38;
    v40 = v37[2];
    v164 = v37[3];
    v41 = v37[4];
    v42 = v18[21];
    v43 = (v19 + v18[22]);
    if (*(v43 + 8))
    {
      v44 = 0;
    }

    else
    {
      v44 = *v43;
    }

    v145 = v44;
    v146 = v41;
    v45 = v19 + v42;
    v46 = *(v19 + v42);
    if (*(v45 + 8))
    {
      v47 = 0;
    }

    else
    {
      v47 = v46;
    }

    v144 = v47;
    v48 = (v19 + v18[27]);
    if (v48[1])
    {
      v49 = v48[2];
      v50 = v48[3];
      v51 = v48[7];
      v142 = v48[6];
      v143 = v49;
      v52 = v48[5];
      v141 = v48[4];
      v161 = v52;

      v162 = v50;

      v163 = v51;
    }

    else
    {
      v162 = 0;
      v163 = 0;
      v142 = 0;
      v143 = 0;
      v141 = 0;
      v161 = 0;
    }

    v59 = v18[24];
    v140 = *(v19 + v18[23]);
    v60 = v18[26];
    v61 = (v19 + v18[25]);
    if (*(v61 + 8))
    {
      v62 = 0;
    }

    else
    {
      v62 = *v61;
    }

    v139 = v62;
    v63 = v19 + v59;
    v64 = *(v19 + v59);
    if (*(v63 + 8))
    {
      v65 = 0;
    }

    else
    {
      v65 = v64;
    }

    v138 = v65;
    v66 = (v19 + v60);
    v67 = *(v19 + v60 + 8);
    if (v67)
    {
      v68 = *v66;
      v69 = v66[2];
      v70 = v66[3];
      v71 = v66[7];
      v136 = v66[6];
      v137 = v68;
      v72 = v66[5];
      v134 = v66[4];
      v135 = v69;
      v159 = v72;

      v158 = v70;

      v157 = v71;
    }

    else
    {
      v157 = 0;
      v158 = 0;
      v136 = 0;
      v137 = 0;
      v134 = 0;
      v135 = 0;
      v159 = 0;
    }

    v160 = v67;
    v190 = v40;
    v165 = v34;
    v156 = *(&v183 + 1);
    if (*(&v183 + 1))
    {
      v73 = *(&v184 + 1);
      v74 = *(&v185 + 1);
      v129 = v184;
      v130 = v185;
      v75 = *(&v186 + 1);
      v76 = *(&v187 + 1);
      v127 = v183;
      v128 = v187;
      v124 = v35;
      v77 = v188;
      v78 = *(&v189 + 1);
      v131 = v186;
      v132 = v189;
      *&v176 = *(&v188 + 1);

      v155 = v73;

      v154 = v74;

      v151 = v76;

      v152 = v75;

      v126 = dispatch thunk of CustomStringConvertible.description.getter();
      v149 = v79;
      *&v176 = v77;
      v35 = v124;
      v40 = v190;
      v125 = dispatch thunk of CustomStringConvertible.description.getter();
      v148 = v80;
      v150 = v78;

      sub_10000BE18(&v183, &qword_100840970, &qword_1006DD4D8);
      if (v35)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v131 = 0;
      v132 = 0;
      v149 = 0;
      v150 = 0;
      v125 = 0;
      v126 = 0;
      v148 = 0;
      v151 = 0;
      v152 = 0;
      v128 = 0;
      v129 = 0;
      v130 = 0;
      v154 = 0;
      v155 = 0;
      v127 = 0;
      if (v35)
      {
LABEL_30:
        *&v176 = v33;
        dispatch thunk of CustomStringConvertible.description.getter();

        v81 = v36;
        if (v40)
        {
LABEL_31:
          *&v176 = v133;
          v82 = dispatch thunk of CustomStringConvertible.description.getter();
          v84 = v83;
          v85 = v146;

          goto LABEL_35;
        }

LABEL_34:
        v166 = 0;
        v164 = 0;
        v85 = 0;
        v82 = 0;
        v84 = 0;
LABEL_35:
        v86 = v171;
        v87 = [v171 managedObjectContext];
        if (v87)
        {
          v88 = v87;
          v89 = swift_allocObject();
          v90 = v85;
          v91 = v89;
          v92 = v141;
          *(v89 + 32) = v144;
          *(v89 + 40) = v92;
          v93 = v142;
          *(v89 + 48) = v161;
          *(v89 + 56) = v93;
          v94 = v143;
          *(v89 + 64) = v163;
          *(v89 + 72) = v94;
          v95 = v138;
          v96 = v139;
          *(v89 + 80) = v162;
          *(v89 + 88) = v96;
          *(v89 + 96) = v95;
          v97 = v160;
          *(v89 + 104) = v137;
          *(v89 + 112) = v97;
          v98 = v158;
          *(v89 + 120) = v135;
          *(v89 + 128) = v98;
          v99 = v157;
          *(v89 + 136) = v136;
          *(v89 + 144) = v99;
          v100 = v134;
          v101 = v145;
          *(v89 + 16) = v86;
          *(v89 + 24) = v101;
          v102 = v159;
          *(v89 + 152) = v100;
          *(v89 + 160) = v102;
          *(v89 + 168) = v140 & 1;
          v103 = v156;
          *(v89 + 176) = v127;
          *(v89 + 184) = v103;
          v104 = v155;
          *(v89 + 192) = v129;
          *(v89 + 200) = v104;
          v105 = v154;
          *(v89 + 208) = v130;
          *(v89 + 216) = v105;
          v106 = v151;
          *(v89 + 224) = v128;
          *(v89 + 232) = v106;
          v107 = v152;
          *(v89 + 240) = v131;
          *(v89 + 248) = v107;
          v108 = v149;
          *(v89 + 256) = v126;
          *(v89 + 264) = v108;
          v109 = v148;
          *(v89 + 272) = v125;
          *(v89 + 280) = v109;
          v110 = v150;
          *(v89 + 288) = v132;
          *(v89 + 296) = v110;
          *(v89 + 304) = v153;
          *(v89 + 312) = v81;
          v111 = v164;
          *(v89 + 320) = v165;
          *(v89 + 328) = v35;
          *(v89 + 336) = v82;
          *(v89 + 344) = v84;
          *(v89 + 352) = v111;
          *(v89 + 360) = v90;
          v112 = v190;
          *(v89 + 368) = v166;
          *(v89 + 376) = v112;
          v113 = swift_allocObject();
          *(v113 + 16) = sub_1003067E0;
          *(v113 + 24) = v91;
          *&v178 = sub_10021E8E8;
          *(&v178 + 1) = v113;
          *&v176 = _NSConcreteStackBlock;
          *(&v176 + 1) = 1107296256;
          *&v177 = sub_10057E264;
          *(&v177 + 1) = &unk_10080D3F8;
          v114 = _Block_copy(&v176);
          v115 = v86;

          [v88 performBlockAndWait:v114];

          _Block_release(v114);
          LOBYTE(v88) = swift_isEscapingClosureAtFileLocation();

          if ((v88 & 1) == 0)
          {
            goto LABEL_39;
          }

          __break(1u);
        }

LABEL_39:
        v116 = v172;
        sub_100576468();
        if (v116)
        {
        }

        else
        {
          v117 = v147;
          defaultLogger()();
          v118 = v169;

          v119 = Logger.logObject.getter();
          v120 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v119, v120))
          {
            v121 = swift_slowAlloc();
            v122 = swift_slowAlloc();
            *&v176 = v122;
            *v121 = 136315138;
            *(v121 + 4) = sub_100141FE4(v123, v118, &v176);
            _os_log_impl(&_mh_execute_header, v119, v120, "Successfully updated liveness data for proofingSessionID: %s", v121, 0xCu);
            sub_10000BB78(v122);
          }

          else
          {
          }

          (*(v167 + 8))(v117, v168);
        }

        return;
      }
    }

    v165 = 0;
    v153 = 0;
    v81 = 0;
    if (v40)
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  v53 = v16;
  defaultLogger()();
  v54 = v169;

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *&v183 = v58;
    *v57 = 136315138;
    *(v57 + 4) = sub_100141FE4(a2, v54, &v183);
    _os_log_impl(&_mh_execute_header, v55, v56, "Stored biome metadata doesnt exist for proofingSessionID: %s", v57, 0xCu);
    sub_10000BB78(v58);
  }

  (*(v167 + 8))(v53, v168);
}

uint64_t sub_1002FCFB4(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v5 = v4;
  v34 = a3;
  v35 = a2;
  v33 = a1;
  v7 = type metadata accessor for DIPError.Code();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPError();
  v38 = *(v10 - 8);
  __chkstk_darwin(v10);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v14 = __chkstk_darwin(v13);
  v16 = &v30 - v15;
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  if (a4)
  {
    v31 = v5;
    defaultLogger()();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Checking if biome data needs to be donated.", v21, 2u);
    }

    v32 = *(v12 + 8);
    v32(v16, v11);
    type metadata accessor for IdentityProofingDataContext();
    swift_allocObject();
    sub_10057E28C();
    v26 = v25;
    v30 = v9;
    v27 = swift_allocObject();
    v28 = v33;
    *(v27 + 16) = v26;
    *(v27 + 24) = v28;
    *(v27 + 32) = v35;
    *(v27 + 40) = v34;
    *(v27 + 48) = v31;

    sub_10057C18C(sub_100304524, v27);
  }

  else
  {
    defaultLogger()();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "SEND_TO_BIOME doesn't exist, will not donate to biome.", v24, 2u);
    }

    return (*(v12 + 8))(v18, v11);
  }
}

void sub_1002FD550(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v6 = a4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v41 - v15;
  v17 = sub_10057D604(a2, a3);
  if (!v5)
  {
    v41[1] = a1;
    v42 = v14;
    v44 = v10;
    v45 = 0;
    if (v17)
    {
      v43 = v17;
      v18 = [v17 proofingDecision];
      if (v18)
      {
        v19 = v11;

        v20 = v42;
        defaultLogger()();
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v21, v22, "Proofing decision already exists in biome metadata, will not attempt to update it. Will attempt to donate data to biome.", v23, 2u);
        }

        (*(v19 + 8))(v20, v44);
        v24 = v6;
        v25 = a3;
      }

      else
      {
        v29._countAndFlagsBits = 0x3262326262663363;
        v30._countAndFlagsBits = 0xD000000000000062;
        v30._object = 0x800000010070CE90;
        v29._object = 0xE800000000000000;
        logMilestone(tag:description:)(v29, v30);
        v31 = 0xE700000000000000;
        v32 = 0x44455249505845;
        v33 = 0x80000001006F8A70;
        v34 = 0xD000000000000018;
        v35 = 0x80000001006F8A90;
        if (v6 != 4)
        {
          v35 = 0x80000001006F8AB0;
        }

        if (v6 != 3)
        {
          v34 = 0xD000000000000010;
          v33 = v35;
        }

        v36 = 0xEB00000000594441;
        v37 = 0x45525F4D49414C43;
        if (v6 != 1)
        {
          v37 = 0x474E49444E4550;
          v36 = 0xE700000000000000;
        }

        if (v6)
        {
          v32 = v37;
          v31 = v36;
        }

        if (v6 <= 2u)
        {
          v38 = v32;
        }

        else
        {
          v38 = v34;
        }

        if (v6 <= 2u)
        {
          v39 = v31;
        }

        else
        {
          v39 = v33;
        }

        sub_100580368(a2, a3, v38, v39, 0);

        v40 = v45;
        sub_10057BA64();
        v45 = v40;
        if (v40)
        {
          goto LABEL_26;
        }

        v24 = v6;
        v25 = a3;
      }

      sub_1002FD90C(a2, v25, v24);
LABEL_26:

      return;
    }

    defaultLogger()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Biome Proofing meta data doesn't exist. Will not donate data to Biome.", v28, 2u);
    }

    (*(v11 + 8))(v16, v44);
  }
}

uint64_t sub_1002FD90C(uint64_t a1, unint64_t a2, int a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v177 = &v127 - v12;
  v13 = __chkstk_darwin(v11);
  v176 = &v127 - v14;
  v15 = __chkstk_darwin(v13);
  v175 = &v127 - v16;
  v17 = __chkstk_darwin(v15);
  v174 = &v127 - v18;
  __chkstk_darwin(v17);
  v20 = &v127 - v19;
  defaultLogger()();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  v23 = os_log_type_enabled(v21, v22);
  v182 = a1;
  LODWORD(v172) = a3;
  if (v23)
  {
    v178 = v10;
    v180 = v6;
    v181 = v7;
    v24 = swift_slowAlloc();
    *&v187[0] = swift_slowAlloc();
    *v24 = 136315394;
    v179 = a2;
    *(v24 + 4) = sub_100141FE4(a1, a2, v187);
    v25 = 0xE700000000000000;
    *(v24 + 12) = 2080;
    v26 = 0x44455249505845;
    v27 = 0x80000001006F8A70;
    v28 = 0xD000000000000018;
    v29 = 0x80000001006F8A90;
    if (a3 != 4)
    {
      v29 = 0x80000001006F8AB0;
    }

    if (a3 != 3)
    {
      v28 = 0xD000000000000010;
      v27 = v29;
    }

    v30 = 0xEB00000000594441;
    v31 = 0x45525F4D49414C43;
    if (a3 != 1)
    {
      v31 = 0x474E49444E4550;
      v30 = 0xE700000000000000;
    }

    if (a3)
    {
      v26 = v31;
      v25 = v30;
    }

    if (a3 <= 2u)
    {
      v32 = v26;
    }

    else
    {
      v32 = v28;
    }

    if (a3 <= 2u)
    {
      v33 = v25;
    }

    else
    {
      v33 = v27;
    }

    v34 = sub_100141FE4(v32, v33, v187);

    *(v24 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v21, v22, "donateBiomeEvent called with proofingSessionID: %s and proofingDecision: %s", v24, 0x16u);
    swift_arrayDestroy();

    v6 = v180;
    v7 = v181;
    v35 = *(v181 + 8);
    v35(v20, v180);
    v10 = v178;
    a2 = v179;
  }

  else
  {

    v35 = *(v7 + 8);
    v35(v20, v6);
  }

  sub_100302D98(v182, a2, v186);
  memcpy(v187, v186, sizeof(v187));
  v36 = sub_1001B6DC0(v187);
  if (v36 == 1)
  {
    v37 = v177;
    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Biome Meta data doesn't exist. Cannot donate data to biome.", v40, 2u);
    }

    return (v35)(v37, v6);
  }

  v171 = v35;
  v177 = 0;
  v179 = a2;
  v180 = v6;
  v181 = v7;
  v209 = v187[2];
  v208[0] = *(&v187[13] + 9);
  v207 = v187[15];
  v206 = v187[16];
  v205 = v187[17];
  v204 = v187[18];
  v203 = v187[19];
  v202 = v187[20];
  v201 = v187[21];
  v200 = v187[22];
  v199 = v187[23];
  v198 = v187[24];
  v197 = v187[25];
  v196 = v187[26];
  v195 = v187[27];
  v194 = v187[28];
  v193 = v187[29];
  v192 = v187[30];
  v191 = v187[31];
  v190 = v187[32];
  v189 = v187[33];
  v42 = v187[1];
  v43 = v187[3];
  v44 = *&v187[4];
  v45 = BYTE8(v187[4]);
  v46 = *(&v187[5] + 1);
  v47 = *(&v187[6] + 1);
  *(v208 + 15) = *(&v187[14] + 1);
  v188 = v187[34];
  if (!*(&v187[6] + 1))
  {
    sub_10000BE18(v186, &unk_100840940, &unk_1006DD4C0);
    v61 = v176;
    defaultLogger()();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Unable to donate biome data as the issuer doesn't exist", v64, 2u);
    }

    return v171(v61, v180);
  }

  v152 = *&v187[7];
  v153 = *&v187[8];
  v154 = *(&v187[9] + 1);
  isa = *(&v187[10] + 1);
  v156 = *(&v187[11] + 1);
  v157 = *(&v187[12] + 1);
  v158 = *(&v187[7] + 1);
  v159 = *(&v187[8] + 1);
  v160 = *&v187[10];
  v161 = *&v187[11];
  v162 = *&v187[12];
  v163 = *&v187[13];
  v164 = *&v187[9];
  LODWORD(v167) = BYTE8(v187[13]);
  v178 = v10;
  v48 = *&v187[6];
  v169 = *&v187[5];
  type metadata accessor for IdentityBiomeHelper();
  v49 = swift_allocObject();
  v168 = v44;
  v50 = v49;
  v166 = v48;
  *(v49 + 16) = v48;
  *(v49 + 24) = v47;
  swift_bridgeObjectRetain_n();
  sub_100006078(v42, *(&v42 + 1));
  v170 = v51;
  v165 = sub_100005D38(v43, *(&v43 + 1));
  v176 = v52;
  if (v45)
  {
    v53 = 0;
  }

  else
  {
    v53 = v168;
  }

  v54 = sub_100006EBC(v53, 0);
  v56 = v55;
  v210 = v209;
  if (v46)
  {
    v57 = v169;
  }

  else
  {
    v57 = 0;
  }

  if (v46)
  {
    v58 = v46;
  }

  else
  {
    v58 = 0xE000000000000000;
  }

  sub_10000BBC4(&v210, v185, &qword_10084A1D0, &qword_1006DB410);

  v59 = v177;
  v60 = sub_100303344(v182, v179);
  if (v59)
  {

    sub_10000BE18(v186, &unk_100840940, &unk_1006DD4C0);

    sub_10000BE18(&v210, &qword_10084A1D0, &qword_1006DB410);

    swift_setDeallocating();
    swift_deallocClassInstance();
    v6 = v180;
    v37 = v178;
    v35 = v171;
LABEL_19:
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    return (v35)(v37, v6);
  }

  v150 = v54;
  v151 = v58;
  v147 = v50;
  v149 = v57;
  v171 = v47;
  v177 = 0;
  if (v60)
  {
    v148 = sub_100007060(v172);
    v139 = v65;
  }

  else
  {
    v148 = 0;
    v139 = 0xE000000000000000;
  }

  v66 = isa;
  v67 = v152;
  v68 = _swiftEmptyArrayStorage;
  if (!v158)
  {
    v67 = 0;
  }

  isa = v67;
  if (v158)
  {
    v69 = v158;
  }

  else
  {
    v69 = 0xE000000000000000;
  }

  v172 = v69;
  v211 = v207;
  if (v159)
  {
    v70 = v153;
  }

  else
  {
    v70 = 0;
  }

  v144 = v70;
  if (v159)
  {
    v71 = v159;
  }

  else
  {
    v71 = 0xE000000000000000;
  }

  v169 = v71;
  if (v160)
  {
    v72 = v154;
  }

  else
  {
    v72 = 0;
  }

  v153 = v72;
  v212 = *(v208 + 7);
  if (v160)
  {
    v73 = v160;
  }

  else
  {
    v73 = 0xE000000000000000;
  }

  v168 = v73;
  if (v161)
  {
    v74 = v66;
  }

  else
  {
    v74 = 0;
  }

  v154 = v74;
  if (v161)
  {
    v75 = v161;
  }

  else
  {
    v75 = 0xE000000000000000;
  }

  v158 = v75;
  v213 = v206;
  if (v162)
  {
    v76 = v156;
  }

  else
  {
    v76 = 0;
  }

  v136 = v76;
  if (v162)
  {
    v77 = v162;
  }

  else
  {
    v77 = 0xE000000000000000;
  }

  v214 = v205;
  if (v163)
  {
    v78 = v157;
  }

  else
  {
    v78 = 0;
  }

  v152 = v78;
  if (v163)
  {
    v79 = v163;
  }

  else
  {
    v79 = 0xE000000000000000;
  }

  v156 = v77;
  v157 = v79;
  if (v164)
  {
    v68 = v164;
  }

  v138 = v68;
  v215 = v203;
  v216 = v204;
  v217 = v202;
  v218 = v201;
  v219 = v200;
  v220 = v199;
  v221 = v198;
  v222 = v197;
  v223 = v196;
  v224 = v195;
  v225 = v194;
  v226 = v193;
  v227 = v192;
  v228 = v191;
  v229 = v190;
  v230 = v189;
  v231[0] = v188;

  sub_10000BBC4(&v211, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v212, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v213, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v214, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v215, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v216, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v217, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v218, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v219, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v220, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v221, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v222, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v223, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v224, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v225, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v226, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v227, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v228, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v229, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(&v230, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BBC4(v231, v185, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(v186, &unk_100840940, &unk_1006DD4C0);
  v80 = objc_allocWithZone(NSNumber);
  v167 = [v80 initWithBool:v167 & 1];
  v141 = String._bridgeToObjectiveC()();

  if (v176)
  {
    v146 = String._bridgeToObjectiveC()();
  }

  else
  {
    v146 = 0;
  }

  v140 = String._bridgeToObjectiveC()();
  if (*(&v210 + 1))
  {
    v145 = String._bridgeToObjectiveC()();
  }

  else
  {
    v145 = 0;
  }

  v143 = String._bridgeToObjectiveC()();

  v142 = String._bridgeToObjectiveC()();

  v139 = String._bridgeToObjectiveC()();
  v170 = String._bridgeToObjectiveC()();
  v159 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v138 = String._bridgeToObjectiveC()();
  v137 = String._bridgeToObjectiveC()();
  v153 = String._bridgeToObjectiveC()();
  v166 = String._bridgeToObjectiveC()();
  if (*(&v211 + 1))
  {
    v165 = String._bridgeToObjectiveC()();
    if (*(&v212 + 1))
    {
      goto LABEL_88;
    }
  }

  else
  {
    v165 = 0;
    if (*(&v212 + 1))
    {
LABEL_88:
      v164 = String._bridgeToObjectiveC()();
      if (*(&v213 + 1))
      {
        goto LABEL_89;
      }

      goto LABEL_94;
    }
  }

  v164 = 0;
  if (*(&v213 + 1))
  {
LABEL_89:
    v163 = String._bridgeToObjectiveC()();
    if (*(&v214 + 1))
    {
      goto LABEL_90;
    }

LABEL_95:
    v162 = 0;
    if (*(&v215 + 1))
    {
      goto LABEL_91;
    }

    goto LABEL_96;
  }

LABEL_94:
  v163 = 0;
  if (!*(&v214 + 1))
  {
    goto LABEL_95;
  }

LABEL_90:
  v162 = String._bridgeToObjectiveC()();
  if (*(&v215 + 1))
  {
LABEL_91:
    v161 = String._bridgeToObjectiveC()();
    goto LABEL_97;
  }

LABEL_96:
  v161 = 0;
LABEL_97:
  v144 = v56;
  if (*(&v216 + 1))
  {
    v160 = String._bridgeToObjectiveC()();
    if (*(&v217 + 1))
    {
      goto LABEL_99;
    }
  }

  else
  {
    v160 = 0;
    if (*(&v217 + 1))
    {
LABEL_99:
      v154 = String._bridgeToObjectiveC()();
      if (*(&v218 + 1))
      {
        goto LABEL_100;
      }

      goto LABEL_116;
    }
  }

  v154 = 0;
  if (*(&v218 + 1))
  {
LABEL_100:
    v152 = String._bridgeToObjectiveC()();
    if (*(&v219 + 1))
    {
      goto LABEL_101;
    }

    goto LABEL_117;
  }

LABEL_116:
  v152 = 0;
  if (*(&v219 + 1))
  {
LABEL_101:
    v151 = String._bridgeToObjectiveC()();
    if (*(&v220 + 1))
    {
      goto LABEL_102;
    }

    goto LABEL_118;
  }

LABEL_117:
  v151 = 0;
  if (*(&v220 + 1))
  {
LABEL_102:
    v150 = String._bridgeToObjectiveC()();
    if (*(&v221 + 1))
    {
      goto LABEL_103;
    }

    goto LABEL_119;
  }

LABEL_118:
  v150 = 0;
  if (*(&v221 + 1))
  {
LABEL_103:
    v149 = String._bridgeToObjectiveC()();
    if (*(&v222 + 1))
    {
      goto LABEL_104;
    }

    goto LABEL_120;
  }

LABEL_119:
  v149 = 0;
  if (*(&v222 + 1))
  {
LABEL_104:
    v148 = String._bridgeToObjectiveC()();
    if (*(&v223 + 1))
    {
      goto LABEL_105;
    }

    goto LABEL_121;
  }

LABEL_120:
  v148 = 0;
  if (*(&v223 + 1))
  {
LABEL_105:
    v81 = String._bridgeToObjectiveC()();
    if (*(&v224 + 1))
    {
      goto LABEL_106;
    }

    goto LABEL_122;
  }

LABEL_121:
  v81 = 0;
  if (*(&v224 + 1))
  {
LABEL_106:
    v82 = String._bridgeToObjectiveC()();
    if (*(&v225 + 1))
    {
      goto LABEL_107;
    }

    goto LABEL_123;
  }

LABEL_122:
  v82 = 0;
  if (*(&v225 + 1))
  {
LABEL_107:
    v83 = String._bridgeToObjectiveC()();
    if (*(&v226 + 1))
    {
      goto LABEL_108;
    }

    goto LABEL_124;
  }

LABEL_123:
  v83 = 0;
  if (*(&v226 + 1))
  {
LABEL_108:
    v84 = String._bridgeToObjectiveC()();
    if (*(&v227 + 1))
    {
      goto LABEL_109;
    }

    goto LABEL_125;
  }

LABEL_124:
  v84 = 0;
  if (*(&v227 + 1))
  {
LABEL_109:
    v85 = String._bridgeToObjectiveC()();
    if (*(&v228 + 1))
    {
      goto LABEL_110;
    }

    goto LABEL_126;
  }

LABEL_125:
  v85 = 0;
  if (*(&v228 + 1))
  {
LABEL_110:
    v86 = String._bridgeToObjectiveC()();
    if (*(&v229 + 1))
    {
      goto LABEL_111;
    }

    goto LABEL_127;
  }

LABEL_126:
  v86 = 0;
  if (*(&v229 + 1))
  {
LABEL_111:
    v87 = String._bridgeToObjectiveC()();
    if (*(&v230 + 1))
    {
      goto LABEL_112;
    }

LABEL_128:
    v88 = 0;
    if (*(&v231[0] + 1))
    {
      goto LABEL_113;
    }

LABEL_129:
    v89 = 0;
    goto LABEL_130;
  }

LABEL_127:
  v87 = 0;
  if (!*(&v230 + 1))
  {
    goto LABEL_128;
  }

LABEL_112:
  v88 = String._bridgeToObjectiveC()();
  if (!*(&v231[0] + 1))
  {
    goto LABEL_129;
  }

LABEL_113:
  v89 = String._bridgeToObjectiveC()();
LABEL_130:
  v90 = objc_allocWithZone(BMWalletPaymentsCommerceUserProofingResult);
  v135 = v89;
  v126 = v89;
  v134 = v88;
  v125 = v88;
  v133 = v87;
  v124 = v87;
  v132 = v86;
  v123 = v86;
  v131 = v85;
  v122 = v85;
  v130 = v84;
  v121 = v84;
  v129 = v83;
  v120 = v83;
  v128 = v82;
  v119 = v82;
  v127 = v81;
  v118 = v81;
  v91 = v137;
  v92 = v138;
  v93 = v139;
  v94 = v140;
  v95 = v141;
  v97 = v145;
  v96 = v146;
  v98 = v142;
  v99 = v143;
  v136 = [v90 initWithAge:v141 gender:v146 skinTone:v140 ethnicity:v145 deviceLanguage:v143 proofingDecision:v142 issuer:v139 alAssessment:v170 alGestureAssessment:v159 axSettings:isa alFacVersion:v138 alFacePoseVersion:v137 alPadtoolVersion:v153 alPrdVersion:v166 didStepUp:v167 plGestureAssessment:v165 plAssessment:v164 plFacVersion:v163 plFacePoseVersion:v162 plPadtoolVersion:v161 plPrdVersion:v160 shadowLabel:v154 smFacVersion:v152 smFacePoseVersion:v151 smPrdVersion:v150 smPadtoolVersion:v149 smLivenessAssessment:v148 smGestureAssessment:v118 smLivenessType:v119 fmAssessment:v120 fmModelVersion:v121 fmDetectorModelVersion:v122 fmSMAssessment:v123 fmSMModelVersion:v124 fmSMDetectorModelVersion:v125 identityType:v126];

  v185[3] = sub_1003038CC();
  v185[4] = &off_1008122A8;

  sub_10000BE18(&v210, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v211, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v212, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v213, &qword_10084A1D0, &qword_1006DB410);
  v185[0] = v136;
  sub_10000BE18(&v214, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v215, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v216, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v217, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v218, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v219, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v220, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v221, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v222, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v223, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v224, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v225, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v226, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v227, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v228, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v229, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(&v230, &qword_10084A1D0, &qword_1006DB410);
  sub_10000BE18(v231, &qword_10084A1D0, &qword_1006DB410);

  v100 = v174;
  defaultLogger()();
  sub_100020260(v185, v184);
  v101 = Logger.logObject.getter();
  v102 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v183 = v104;
    *v103 = 136315138;
    sub_10000BA08(v184, v184[3]);
    v105 = sub_100479060();
    v107 = v106;
    sub_10000BB78(v184);
    v108 = sub_100141FE4(v105, v107, &v183);

    *(v103 + 4) = v108;
    _os_log_impl(&_mh_execute_header, v101, v102, "Invoking Biome's sendEvent with the event -> %s", v103, 0xCu);
    sub_10000BB78(v104);

    v6 = v180;
    v35 = *(v181 + 8);
    v35(v100, v180);
  }

  else
  {

    v6 = v180;
    v35 = *(v181 + 8);
    v35(v100, v180);
    sub_10000BB78(v184);
  }

  v37 = v178;
  v109 = v175;
  sub_100020260(v185, v184);
  sub_100007224(&qword_100840958, &qword_1006DD4D0);
  if (swift_dynamicCast())
  {
    v110 = v183;
    v111 = sub_10000BA08((v173 + 16), *(v173 + 40));
    sub_1003005F8(v110, *v111);
  }

  v112 = v179;
  defaultLogger()();
  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    *v115 = 0;
    _os_log_impl(&_mh_execute_header, v113, v114, "Successfully donated user proofing event to Biome.", v115, 2u);
  }

  v35(v109, v6);
  v116 = v182;
  v117 = v177;
  sub_100303918(v182, v112);
  if (v117)
  {
    sub_10000BB78(v185);

    swift_setDeallocating();
    swift_deallocClassInstance();
    goto LABEL_19;
  }

  sub_100303DE0(v116, v112);
  sub_10000BB78(v185);

  swift_setDeallocating();
  return swift_deallocClassInstance();
}

uint64_t sub_1002FEF78()
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPError();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  if (v1)
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v12._countAndFlagsBits = 0xD00000000000003BLL;
    v12._object = 0x8000000100708FF0;
    String.append(_:)(v12);
    swift_getErrorValue();
    v13._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v13);

    (*(v3 + 104))(v5, enum case for DIPError.Code.failedToDeleteProofingBiomeData(_:), v2);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    swift_allocError();
    v14 = v18;
    (*(v18 + 16))(v15, v8, v6);
    swift_willThrow();

    return (*(v14 + 8))(v8, v6);
  }

  else
  {
    v10 = v9;
    v17[1] = v2;
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v0;

    sub_10057C18C(sub_100300708, v11);
  }
}

void sub_1002FF2D8(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v4 = type metadata accessor for Logger();
  v63 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v53 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v53 - v12;
  __chkstk_darwin(v11);
  v15 = &v53 - v14;
  v16 = objc_allocWithZone(NSFetchRequest);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithEntityName:v17];

  v19 = *(a1 + 16);
  sub_100007224(&qword_100848280, &unk_1006E83F0);
  v20 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

    return;
  }

  v58 = v19;
  v59 = v15;
  v65 = a1;
  v53 = 0;
  v21 = sub_10057A1F8(v20);

  if (v21)
  {
    if (v21 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v58;
    v24 = v59;
    if (v23)
    {
      if (v23 < 1)
      {
        __break(1u);
      }

      else
      {
        v26 = 0;
        v60 = v21 & 0xC000000000000001;
        ++v63;
        v64 = v21;
        *&v22 = 136315138;
        v55 = v22;
        v61 = v23;
        v62 = v13;
        v56 = v10;
        v57 = v4;
        do
        {
          if (v60)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v29 = *(v64 + 8 * v26 + 32);
          }

          v30 = v29;
          [v25 deleteObject:v29];
          defaultLogger()();
          v31 = v30;
          v32 = Logger.logObject.getter();
          v33 = v24;
          v34 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v32, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v66 = v36;
            *v35 = v55;
            v37 = [v31 proofingSessionID];
            if (v37)
            {
              v38 = v37;
              v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v41 = v40;
            }

            else
            {
              v39 = 0;
              v41 = 0xE000000000000000;
            }

            v42 = sub_100141FE4(v39, v41, &v66);

            *(v35 + 4) = v42;
            _os_log_impl(&_mh_execute_header, v32, v34, "Successfully deleted proofing biome data for proofingSessionID: %s", v35, 0xCu);
            sub_10000BB78(v36);

            v27 = *v63;
            v24 = v59;
            v4 = v57;
            (*v63)(v59, v57);
            v10 = v56;
            v25 = v58;
          }

          else
          {

            v27 = *v63;
            (*v63)(v33, v4);
            v24 = v33;
          }

          ++v26;
          v28 = v62;
        }

        while (v61 != v26);

        v43 = v53;
        sub_10057BA64();
        if (!v43)
        {
          defaultLogger()();
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&_mh_execute_header, v44, v45, "Successfully deleted proofing biome data", v46, 2u);
          }

          v27(v28, v4);
          defaultLogger()();
          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = 0;
            _os_log_impl(&_mh_execute_header, v47, v48, "Invoking Biome's pruning API to delete biome data", v49, 2u);
          }

          v27(v10, v4);
          [*(v54 + 56) pruneUserProofingStream];
        }
      }

      return;
    }
  }

  defaultLogger()();
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "No proofing biome data exists in the database", v52, 2u);
  }

  v63[1](v7, v4);
}

void sub_1002FF8CC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10057D604(a2, a3);
  if (!v3)
  {
    v11 = v10;
    if (v10)
    {
      sub_10058051C(1);
      sub_10057BA64();
      defaultLogger()();

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v20 = v13;
        v15 = v14;
        v16 = swift_slowAlloc();
        v19 = v12;
        v17 = v16;
        v21 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_100141FE4(a2, a3, &v21);
        v18 = v19;
        _os_log_impl(&_mh_execute_header, v19, v20, "Successfully updated proofing biome data called for proofingSessionID: %s", v15, 0xCu);
        sub_10000BB78(v17);
      }

      else
      {
      }

      (*(v7 + 8))(v9, v6);
    }
  }
}

void sub_1002FFAEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100576B70(a2, a3);
  if (!v4)
  {
    if (v12)
    {
      v13 = v12;
      v14 = [v12 shouldDonateProofingDecision];

      swift_beginAccess();
      *(a4 + 16) = v14;
    }

    else
    {
      (*(v9 + 104))(v11, enum case for DIPError.Code.failedToFetchBiomeMetadata(_:), v8);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

void sub_1002FFCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v69 = a5;
  v64 = a6;
  v65 = a8;
  v70 = a7;
  v63 = a4;
  v66 = a2;
  v19 = type metadata accessor for Logger();
  v61 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_opt_self();
  v23 = String._bridgeToObjectiveC()();
  v67 = a1;
  v24 = [v22 insertNewObjectForEntityForName:v23 inManagedObjectContext:*(a1 + 16)];

  type metadata accessor for StoredBiomeMetadata();
  v72 = v24;
  v25 = swift_dynamicCastClassUnconditional();
  v26 = [objc_opt_self() _deviceLanguage];
  if (v26)
  {
    v27 = v26;
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v62 = 0;
    v29 = 0;
  }

  v30 = a3;
  v31 = sub_10069387C(5, a14);
  if (a17)
  {
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v32 = IdentityDocumentType.description.getter();
    v33 = v34;
  }

  v35 = [v25 managedObjectContext];
  if (v35)
  {
    v57 = a15;
    v54 = a13;
    v55 = v31;
    v56 = v33;
    v58 = a11;
    v60 = v19;
    v53 = v32;
    v59 = v35;
    v36 = swift_allocObject();
    v37 = v66;
    *(v36 + 16) = v25;
    *(v36 + 24) = v37;
    v38 = v63;
    *(v36 + 32) = v30;
    *(v36 + 40) = v38;
    v39 = v64;
    *(v36 + 48) = v69;
    *(v36 + 56) = v39;
    *(v36 + 64) = v70;
    *(v36 + 72) = a10;
    v40 = v65;
    *(v36 + 80) = a11;
    *(v36 + 88) = v40;
    *(v36 + 96) = a9 & 1;
    *(v36 + 104) = v62;
    *(v36 + 112) = v29;
    v41 = v54;
    *(v36 + 120) = a12;
    *(v36 + 128) = v41;
    *(v36 + 136) = v55 & 1;
    v42 = v53;
    *(v36 + 144) = v57;
    *(v36 + 152) = v42;
    *(v36 + 160) = v56;
    v43 = v30;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_100306C94;
    *(v30 + 24) = v36;
    aBlock[4] = sub_10026CBB8;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10057E264;
    aBlock[3] = &unk_10080D588;
    v44 = _Block_copy(aBlock);

    v45 = v72;

    v19 = v60;

    v46 = v59;
    [v59 performBlockAndWait:v44];

    _Block_release(v44);
    LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v43 = v30;
LABEL_11:
  v47 = v68;
  sub_100576468();
  if (v47)
  {
  }

  else
  {
    defaultLogger()();

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_100141FE4(v66, v43, aBlock);
      _os_log_impl(&_mh_execute_header, v48, v49, "Successfully persisted biome metadata for proofingSessionID: %s", v50, 0xCu);
      sub_10000BB78(v51);
    }

    else
    {
    }

    (*(v61 + 8))(v21, v19);
  }
}

void sub_100300240(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a4;
  v33 = a6;
  v34 = a3;
  v35 = a5;
  v37 = a2;
  isEscapingClosureAtFileLocation = type metadata accessor for Date();
  v9 = *(isEscapingClosureAtFileLocation - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(isEscapingClosureAtFileLocation);
  v12 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v28 - v13;
  type metadata accessor for StoredProofingBiomeData();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(a1 + 16)];
  Date.init()();
  v16 = [v15 managedObjectContext];
  if (!v16)
  {
    goto LABEL_4;
  }

  v17 = v16;
  (*(v9 + 16))(v12, v14, isEscapingClosureAtFileLocation);
  v18 = *(v9 + 80);
  v30 = a1;
  v31 = v6;
  v19 = (v18 + 57) & ~v18;
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v37;
  *(v21 + 16) = v15;
  *(v21 + 24) = v22;
  v37 = v15;
  v23 = v32;
  *(v21 + 32) = v34;
  *(v21 + 40) = v23;
  v29 = isEscapingClosureAtFileLocation;
  *(v21 + 48) = v35;
  *(v21 + 56) = 1;
  (*(v9 + 32))(v21 + v19, v12, isEscapingClosureAtFileLocation);
  *(v21 + v20) = v33;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1002FB6A4;
  *(v24 + 24) = v21;
  aBlock[4] = sub_10026CBB8;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10057E264;
  aBlock[3] = &unk_10080D510;
  v25 = _Block_copy(aBlock);
  v26 = v37;
  v15 = v37;

  [v17 performBlockAndWait:v25];

  _Block_release(v25);
  v27 = *(v9 + 8);
  v9 += 8;
  v27(v14, v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_4:
    (*(v9 + 8))(v14, isEscapingClosureAtFileLocation);
  }

  sub_1005783D4();
}

uint64_t sub_100300594()
{
  sub_10000BB78((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1003005F8(void *a1, uint64_t a2)
{
  v9[3] = sub_1003038CC();
  v9[4] = &off_1008122A8;
  v9[0] = a1;
  sub_100020260(v9, v8);
  v4 = a1;
  sub_100007224(&qword_100840958, &qword_1006DD4D0);
  if (swift_dynamicCast())
  {
    v5 = [*(a2 + 16) source];
    [v5 sendEvent:v7];
  }

  return sub_10000BB78(v9);
}

uint64_t sub_1003006C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100300724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v34 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPError();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v39 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = __chkstk_darwin(v8);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  v13 = sub_100007224(&unk_100840960, &qword_1006DBCB0);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v16 = type metadata accessor for PendingActionContext(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v20 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v33 - v21;
  sub_10000BBC4(a3, v15, &unk_100840960, &qword_1006DBCB0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000BE18(v15, &unk_100840960, &qword_1006DBCB0);
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Pending actions doesn't have a SEND_TO_BIOME Context", v25, 2u);
    }

    return (*(v42 + 8))(v12, v43);
  }

  else
  {
    sub_10030454C(v15, v22);
    type metadata accessor for IdentityBiomeDataContext();
    swift_allocObject();
    sub_100576340();
    v28 = v27;
    sub_1003068EC(v22, v20, type metadata accessor for PendingActionContext);
    v29 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v30 = swift_allocObject();
    v31 = v33;
    v32 = v34;
    v30[2] = v28;
    v30[3] = v31;
    v30[4] = v32;
    sub_10030454C(v20, v30 + v29);

    sub_100576834(sub_10030669C, v30);
    sub_100220438(v22);
  }
}

uint64_t sub_100300D78(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 240) = a5;
  *(v6 + 248) = a6;
  *(v6 + 224) = a3;
  *(v6 + 232) = a4;
  *(v6 + 344) = a2;
  *(v6 + 216) = a1;
  v7 = type metadata accessor for Logger();
  *(v6 + 256) = v7;
  *(v6 + 264) = *(v7 - 8);
  *(v6 + 272) = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  *(v6 + 280) = v8;
  *(v6 + 288) = *(v8 - 8);
  *(v6 + 296) = swift_task_alloc();

  return _swift_task_switch(sub_100300EA0, 0, 0);
}

uint64_t sub_100300EA0()
{
  if (*(v0 + 344))
  {
    (*(*(v0 + 288) + 104))(*(v0 + 296), enum case for DIPError.Code.idTypeUnavailable(_:), *(v0 + 280));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v2 = *(v0 + 264);
    v1 = *(v0 + 272);
    v3 = *(v0 + 256);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v2 + 8))(v1, v3);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v6 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v6 + 54);
    sub_1000318FC(&v6[4], v0 + 16);
    os_unfair_lock_unlock(v6 + 54);
    v8 = *(v0 + 240);
    v7 = *(v0 + 248);
    v10 = *(v0 + 224);
    v9 = *(v0 + 232);
    v11 = *(v0 + 216);
    *(v0 + 304) = *(v0 + 72);

    sub_100031918(v0 + 16);
    v12 = swift_allocObject();
    *(v0 + 312) = v12;
    v12[2] = v8;
    v12[3] = v7;
    v12[4] = v10;
    v12[5] = v9;
    v12[6] = v11;
    v13 = swift_allocObject();
    *(v0 + 320) = v13;
    *(v13 + 16) = sub_100306B18;
    *(v13 + 24) = v12;

    v14 = swift_task_alloc();
    *(v0 + 328) = v14;
    *v14 = v0;
    v14[1] = sub_1003011F4;

    return AsyncCoreDataContainer.performWrite<A>(_:)(v14, sub_10017F710, v13, &type metadata for () + 8);
  }
}

uint64_t sub_1003011F4()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_100301390;
  }

  else
  {

    v2 = sub_100301324;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100301324()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100301390()
{

  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100301468(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 112) = v17;
  *(v8 + 96) = v16;
  *(v8 + 321) = a7;
  *(v8 + 80) = a6;
  *(v8 + 88) = a8;
  *(v8 + 320) = a4;
  *(v8 + 64) = a3;
  *(v8 + 72) = a5;
  *(v8 + 48) = a1;
  *(v8 + 56) = a2;
  v9 = type metadata accessor for DIPError();
  *(v8 + 120) = v9;
  *(v8 + 128) = *(v9 - 8);
  *(v8 + 136) = swift_task_alloc();
  v10 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v8 + 144) = v10;
  *(v8 + 152) = *(v10 - 8);
  *(v8 + 160) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 168) = v11;
  *(v8 + 176) = *(v11 - 8);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  v12 = type metadata accessor for DIPError.Code();
  *(v8 + 200) = v12;
  *(v8 + 208) = *(v12 - 8);
  *(v8 + 216) = swift_task_alloc();
  v13 = type metadata accessor for PDF417ParsedData();
  *(v8 + 224) = v13;
  *(v8 + 232) = *(v13 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = type metadata accessor for IdentityProofingBiomeManager.DocumentDataSource(0);
  *(v8 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_1003016F8, 0, 0);
}

uint64_t sub_1003016F8()
{
  v89 = v0;
  sub_1003068EC(*(v0 + 72), *(v0 + 256), type metadata accessor for IdentityProofingBiomeManager.DocumentDataSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 256);
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v2;
    if (sub_10069387C(0, *(v0 + 112)))
    {
      if (*(v3 + 16) && (v4 = sub_10003ADCC(0x6942664F65746164, 0xEB00000000687472), (v5 & 1) != 0))
      {
        v6 = (*(v3 + 56) + 16 * v4);
        v77 = *v6;
        v86 = v6[1];
      }

      else
      {
        v77 = 0;
        v86 = 0;
      }
    }

    else
    {
      v77 = 0;
      v86 = 0xE000000000000000;
    }

    if (sub_10069387C(1, *(v0 + 112)))
    {
      if (*(v3 + 16) && (v12 = sub_10003ADCC(0x7265646E6567, 0xE600000000000000), (v13 & 1) != 0))
      {
        v14 = (*(v3 + 56) + 16 * v12);
        v76 = *v14;
        v85 = v14[1];
      }

      else
      {
        v76 = 0;
        v85 = 0;
      }
    }

    else
    {
      v76 = 0;
      v85 = 0xE000000000000000;
    }

    if (sub_10069387C(7, *(v0 + 112)))
    {
      if (*(v3 + 16) && (v15 = sub_10003ADCC(0xD000000000000011, 0x80000001006FA370), (v16 & 1) != 0))
      {
        v17 = (*(v3 + 56) + 16 * v15);
        v81 = *v17;
        v87 = v17[1];

        v75 = 0;
        v84 = 0;
      }

      else
      {

        v75 = 0;
        v84 = 0;
        v81 = 0;
        v87 = 0;
      }
    }

    else
    {

      v75 = 0;
      v84 = 0;
      v81 = 0;
      v87 = 0xE000000000000000;
    }
  }

  else
  {
    v7 = *(v0 + 112);
    (*(*(v0 + 232) + 32))(*(v0 + 240), v2, *(v0 + 224));
    if (sub_10069387C(0, v7))
    {
      v77 = PDF417ParsedData.dob.getter();
      v86 = v8;
    }

    else
    {
      v77 = 0;
      v86 = 0xE000000000000000;
    }

    if (sub_10069387C(1, *(v0 + 112)))
    {
      v76 = PDF417ParsedData.gender.getter();
      v85 = v9;
    }

    else
    {
      v76 = 0;
      v85 = 0xE000000000000000;
    }

    if (sub_10069387C(2, *(v0 + 112)))
    {
      v81 = PDF417ParsedData.issuer.getter();
      v87 = v10;
    }

    else
    {
      v81 = 0;
      v87 = 0xE000000000000000;
    }

    if (sub_10069387C(3, *(v0 + 112)))
    {
      v75 = PDF417ParsedData.ethnicity.getter();
      v84 = v11;
    }

    else
    {
      v75 = 0;
      v84 = 0xE000000000000000;
    }

    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
  }

  v18 = *(v0 + 112);
  v78 = *(v0 + 321);
  v73 = *(v0 + 80);
  v82 = sub_10069387C(4, v18);
  if (sub_10069387C(8, v18))
  {
    v80 = *(v0 + 88);
  }

  else
  {
    v80 = _swiftEmptyArrayStorage;
  }

  if (sub_10069387C(0, *(v0 + 112)))
  {
    if (!v86)
    {
      goto LABEL_41;
    }

    v19 = HIBYTE(v86) & 0xF;
    if ((v86 & 0x2000000000000000) == 0)
    {
      v19 = v77 & 0xFFFFFFFFFFFFLL;
    }

    if (!v19)
    {
LABEL_41:
      v20 = *(v0 + 192);
      v21 = *(v0 + 168);
      v22 = *(v0 + 176);
      (*(*(v0 + 208) + 104))(*(v0 + 216), enum case for DIPError.Code.biomeDataSharingMissingDateOfBirthField(_:), *(v0 + 200));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      (*(v22 + 8))(v20, v21);
    }
  }

  if (sub_10069387C(1, *(v0 + 112)))
  {
    if (!v85)
    {
      goto LABEL_47;
    }

    v23 = HIBYTE(v85) & 0xF;
    if ((v85 & 0x2000000000000000) == 0)
    {
      v23 = v76 & 0xFFFFFFFFFFFFLL;
    }

    if (!v23)
    {
LABEL_47:
      v24 = *(v0 + 192);
      v25 = *(v0 + 168);
      v26 = *(v0 + 176);
      (*(*(v0 + 208) + 104))(*(v0 + 216), enum case for DIPError.Code.biomeDataSharingMissingGenderField(_:), *(v0 + 200));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      (*(v26 + 8))(v24, v25);
    }
  }

  if (sub_10069387C(2, *(v0 + 112)))
  {
    if (!v87)
    {
      goto LABEL_53;
    }

    v27 = HIBYTE(v87) & 0xF;
    if ((v87 & 0x2000000000000000) == 0)
    {
      v27 = v81 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27)
    {
LABEL_53:
      v28 = *(v0 + 192);
      v29 = *(v0 + 168);
      v30 = *(v0 + 176);
      (*(*(v0 + 208) + 104))(*(v0 + 216), enum case for DIPError.Code.biomeDataSharingMissingStateField(_:), *(v0 + 200));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      (*(v30 + 8))(v28, v29);
    }
  }

  v31 = v82 ^ 1;
  if (sub_10069387C(7, *(v0 + 112)))
  {
    if (!v87)
    {
      goto LABEL_59;
    }

    v32 = HIBYTE(v87) & 0xF;
    if ((v87 & 0x2000000000000000) == 0)
    {
      v32 = v81 & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {
LABEL_59:
      v33 = *(v0 + 192);
      v34 = *(v0 + 176);
      v72 = *(v0 + 168);
      (*(*(v0 + 208) + 104))(*(v0 + 216), enum case for DIPError.Code.biomeDataSharingMissingCountryField(_:), *(v0 + 200));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      (*(v34 + 8))(v33, v72);
    }
  }

  v35 = v31 | v78;
  v79 = v31 | v78;
  if (sub_10069387C(3, *(v0 + 112)))
  {
    if (!v84)
    {
      goto LABEL_65;
    }

    v36 = HIBYTE(v84) & 0xF;
    if ((v84 & 0x2000000000000000) == 0)
    {
      v36 = v75 & 0xFFFFFFFFFFFFLL;
    }

    if (!v36)
    {
LABEL_65:
      v37 = *(v0 + 192);
      v38 = *(v0 + 168);
      v39 = *(v0 + 176);
      (*(*(v0 + 208) + 104))(*(v0 + 216), enum case for DIPError.Code.biomeDataSharingMissingEthnicityField(_:), *(v0 + 200));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      defaultLogger()();
      DIPRecordError(_:message:log:)();
      v40 = v37;
      v35 = v79;
      (*(v39 + 8))(v40, v38);
    }
  }

  if (sub_10069387C(4, *(v0 + 112)) & v35)
  {
    v41 = *(v0 + 192);
    v42 = *(v0 + 168);
    v43 = *(v0 + 176);
    (*(*(v0 + 208) + 104))(*(v0 + 216), enum case for DIPError.Code.biomeDataSharingMissingSkinToneField(_:), *(v0 + 200));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v43 + 8))(v41, v42);
  }

  defaultLogger()();

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  v46 = os_log_type_enabled(v44, v45);
  v48 = *(v0 + 176);
  v47 = *(v0 + 184);
  v49 = *(v0 + 168);
  if (v46)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v88[0] = v51;
    *v50 = 136315138;
    sub_100306A84();
    v52 = Set.description.getter();
    v54 = sub_100141FE4(v52, v53, v88);

    *(v50 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v44, v45, "Biome-Fed Stats attempting to collect - %s", v50, 0xCu);
    sub_10000BB78(v51);
  }

  v55 = *(v48 + 8);
  v55(v47, v49);
  *(v0 + 264) = v55;
  type metadata accessor for IdentityBiomeDataContext();
  swift_allocObject();
  sub_100576340();
  *(v0 + 272) = v56;
  if (v82)
  {
    v57 = v73;
  }

  else
  {
    v57 = 0;
  }

  v58 = *(v0 + 152);
  v83 = *(v0 + 160);
  v74 = *(v0 + 144);
  v59 = *(v0 + 112);
  v60 = *(v0 + 320);
  v62 = *(v0 + 56);
  v61 = *(v0 + 64);
  v63 = *(v0 + 48);
  v64 = v56;
  v65 = swift_allocObject();
  *(v0 + 280) = v65;
  *(v65 + 16) = v64;
  *(v65 + 24) = v63;
  *(v65 + 32) = v62;
  *(v65 + 40) = v77;
  *(v65 + 48) = v86;
  *(v65 + 56) = v76;
  *(v65 + 64) = v85;
  *(v65 + 72) = v57;
  *(v65 + 80) = v79 & 1;
  *(v65 + 88) = v75;
  *(v65 + 96) = v84;
  *(v65 + 104) = v81;
  *(v65 + 112) = v87;
  *(v65 + 120) = v59;
  *(v65 + 128) = v80;
  *(v65 + 136) = v61;
  *(v65 + 144) = v60 & 1;
  v66 = swift_allocObject();
  *(v0 + 288) = v66;
  *(v66 + 16) = sub_1003069C4;
  *(v66 + 24) = v65;
  v67 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v68 = *(v58 + 104);

  v68(v83, v67, v74);

  v69 = swift_task_alloc();
  *(v0 + 296) = v69;
  *v69 = v0;
  v69[1] = sub_100302704;
  v70 = *(v0 + 160);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v69, v70, sub_100306A5C, v66, &type metadata for () + 8);
}

uint64_t sub_100302704()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    (*(v2[19] + 8))(v2[20], v2[18]);

    v3 = sub_100302B00;
  }

  else
  {
    v5 = v2[19];
    v4 = v2[20];
    v6 = v2[18];

    (*(v5 + 8))(v4, v6);
    v3 = sub_100302890;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100302890()
{
  v1 = *(v0 + 320);
  v2 = swift_task_alloc();
  *(v0 + 312) = v2;
  *v2 = v0;
  v2[1] = sub_100302948;
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);

  return sub_100300D78(v6, v1 & 1, v3, v4, v7, v5);
}

uint64_t sub_100302948()
{

  return _swift_task_switch(sub_100302A44, 0, 0);
}

uint64_t sub_100302A44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100302B00()
{

  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v13 = v0[21];
  v14 = v0[33];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  _StringGuts.grow(_:)(55);
  v8._countAndFlagsBits = 0xD000000000000035;
  v8._object = 0x800000010070CF20;
  String.append(_:)(v8);
  swift_getErrorValue();
  v9._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v9);

  (*(v1 + 104))(v2, enum case for DIPError.Code.failedToPersistBiomeMetadata(_:), v4);
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  (*(v6 + 16))(v10, v5, v7);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v14(v3, v13);
  (*(v6 + 8))(v5, v7);

  v11 = v0[1];

  return v11();
}

void *sub_100302D98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v36 = a3;
  v5 = type metadata accessor for DIPError.Code();
  v38 = *(v5 - 8);
  __chkstk_darwin(v5);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError();
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  v15 = os_log_type_enabled(v13, v14);
  v37 = a1;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v35 = v5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v19 = a1;
    v20 = v18;
    *&v46[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100141FE4(v19, a2, v46);
    _os_log_impl(&_mh_execute_header, v13, v14, "fetchBiomeMetadata called for proofingSessionID: %s", v17, 0xCu);
    sub_10000BB78(v20);

    v5 = v35;
  }

  (*(v10 + 8))(v12, v9);
  v21 = swift_allocObject();
  sub_1003044A8(v46);
  memcpy((v21 + 16), v46, 0x230uLL);
  type metadata accessor for IdentityBiomeDataContext();
  swift_allocObject();
  v22 = v43;
  sub_100576340();
  if (v22)
  {
    v45[0] = 0;
    v45[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(154);
    v27._countAndFlagsBits = 0xD000000000000035;
    v27._object = 0x800000010070CD20;
    String.append(_:)(v27);
    swift_getErrorValue();
    v28._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 0xD000000000000063;
    v29._object = 0x800000010070CD60;
    String.append(_:)(v29);
    (*(v38 + 104))(v39, enum case for DIPError.Code.failedToFetchBiomeMetadata(_:), v5);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v30 = v40;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    v31 = v42;
    swift_allocError();
    v32 = v41;
    (*(v41 + 16))(v33, v30, v31);
    swift_willThrow();

    (*(v32 + 8))(v30, v31);
  }

  else
  {
    v24 = v23;
    v25 = swift_allocObject();
    v26 = v37;
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = a2;
    v25[5] = v21;

    sub_100576834(sub_1003044BC, v25);

    swift_beginAccess();
    memcpy(v45, (v21 + 16), 0x230uLL);
    sub_10000BBC4(v45, &v44, &unk_100840940, &unk_1006DD4C0);

    return memcpy(v36, v45, 0x230uLL);
  }
}

uint64_t sub_100303344(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v38 = type metadata accessor for DIPError.Code();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DIPError();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v39 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v43 = v15 + 16;
  type metadata accessor for IdentityBiomeDataContext();
  swift_allocObject();
  sub_100576340();
  if (v2)
  {
    v34 = v14;
    v35 = v10;
    v36 = v9;
    v42 = 0;
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v44 = 0xD000000000000028;
    v45 = 0x800000010070CC80;
    swift_getErrorValue();
    v21._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v21);

    (*(v4 + 104))(v6, enum case for DIPError.Code.failedToPersistBiomeMetadata(_:), v38);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v22 = v37;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    v23 = v41;
    swift_allocError();
    v24 = v40;
    (*(v40 + 16))(v25, v22, v23);
    v26 = v39;
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v10 = v35;
    v27 = v26;
    v9 = v36;
    (*(v35 + 8))(v27, v36);
    (*(v24 + 8))(v22, v23);

    v14 = v34;
  }

  else
  {
    v17 = v16;
    v18 = a2;
    v19 = swift_allocObject();
    v20 = v42;
    v19[2] = v17;
    v19[3] = v20;
    v19[4] = v18;
    v19[5] = v15;

    sub_100576834(sub_100304340, v19);
    v42 = 0;
  }

  defaultLogger()();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 67109120;
    swift_beginAccess();
    *(v30 + 4) = *(v15 + 16);

    _os_log_impl(&_mh_execute_header, v28, v29, "shouldDonateProofingDecision -> %{BOOL}d", v30, 8u);
  }

  else
  {
  }

  (*(v10 + 8))(v14, v9);
  swift_beginAccess();
  v31 = *(v15 + 16);

  return v31;
}

unint64_t sub_1003038CC()
{
  result = qword_100840950;
  if (!qword_100840950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100840950);
  }

  return result;
}

uint64_t sub_100303918(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DIPError.Code();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v38 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPError();
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v17 = os_log_type_enabled(v15, v16);
  v35 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v33 = v2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v34 = v10;
    v21 = v20;
    v41[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_100141FE4(a1, a2, v41);
    _os_log_impl(&_mh_execute_header, v15, v16, "updateProofingBiomeData called for proofingSessionID: %s", v19, 0xCu);
    sub_10000BB78(v21);
    v10 = v34;

    v3 = v33;
  }

  (*(v12 + 8))(v14, v11);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  if (v3)
  {
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v26._countAndFlagsBits = 0xD000000000000039;
    v26._object = 0x800000010070CC10;
    String.append(_:)(v26);
    swift_getErrorValue();
    v27._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v27);

    (*(v36 + 104))(v38, enum case for DIPError.Code.failedToUpdateProofingBiomeData(_:), v37);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    v28 = v40;
    swift_allocError();
    v29 = v39;
    (*(v39 + 16))(v30, v10, v28);
    swift_willThrow();

    return (*(v29 + 8))(v10, v28);
  }

  else
  {
    v23 = v22;
    v24 = swift_allocObject();
    v25 = v35;
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = a2;

    sub_10057C18C(sub_10030430C, v24);
  }
}

uint64_t sub_100303DE0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DIPError.Code();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v38 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPError();
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v17 = os_log_type_enabled(v15, v16);
  v35 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v33 = v2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v34 = v10;
    v21 = v20;
    v41[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_100141FE4(a1, a2, v41);
    _os_log_impl(&_mh_execute_header, v15, v16, "deleteBiomeMetadata called for proofingSessionID: %s", v19, 0xCu);
    sub_10000BB78(v21);
    v10 = v34;

    v3 = v33;
  }

  (*(v12 + 8))(v14, v11);
  type metadata accessor for IdentityBiomeDataContext();
  swift_allocObject();
  sub_100576340();
  if (v3)
  {
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v26._countAndFlagsBits = 0xD000000000000036;
    v26._object = 0x8000000100708F50;
    String.append(_:)(v26);
    swift_getErrorValue();
    v27._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v27);

    (*(v36 + 104))(v38, enum case for DIPError.Code.failedToDeleteBiomeMetadata(_:), v37);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_100037214();
    v28 = v40;
    swift_allocError();
    v29 = v39;
    (*(v39 + 16))(v30, v10, v28);
    swift_willThrow();

    return (*(v29 + 8))(v10, v28);
  }

  else
  {
    v23 = v22;
    v24 = swift_allocObject();
    v25 = v35;
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = a2;

    sub_100576834(sub_1003042AC, v24);
  }
}

uint64_t sub_1003042CC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100304360()
{
  if (*(v0 + 24) != 1)
  {
  }

  return _swift_deallocObject(v0, 576, 7);
}

uint64_t sub_1003044DC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10030454C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingActionContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003045B0()
{
  v1 = type metadata accessor for PendingActionContext(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = (v0 + v3);

  v6 = *(v0 + v3 + 120);
  if (v6 != 1)
  {
    if (v6 == 2)
    {
      goto LABEL_8;
    }
  }

  if (*(v5 + 19) != 1)
  {
  }

  if (*(v5 + 23) != 1)
  {
  }

LABEL_8:
  if (*(v5 + 27) != 1)
  {
  }

  if (*(v5 + 35) != 1)
  {
  }

  v7 = &v5[v1[18]];
  v8 = type metadata accessor for WorkflowRecommendationResponse(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v23 = v1;
    v9 = v0;
    v10 = v2;
    v11 = (v2 + 40) & ~v2;
    v12 = v4;

    v13 = type metadata accessor for Workflow(0);
    v14 = *(v13 + 72);
    v15 = type metadata accessor for HardwareAttestationType();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&v7[v14], 1, v15))
    {
      (*(v16 + 8))(&v7[v14], v15);
    }

    v17 = &v7[*(v13 + 156)];
    v4 = v12;
    v3 = v11;
    v2 = v10;
    v0 = v9;
    if (*(v17 + 1) != 1)
    {

      if (*(v17 + 124) != 1)
      {
        if (*(v17 + 2) != 1)
        {
        }

        if (*(v17 + 6) != 1)
        {
        }

        if (*(v17 + 10) != 1)
        {
        }

        if (*(v17 + 14) != 1)
        {
        }

        if (*(v17 + 18) != 1)
        {
        }

        if (*(v17 + 22) != 1)
        {
        }

        if (*(v17 + 26) != 1)
        {
        }

        if (*(v17 + 30) != 1)
        {
        }

        if (*(v17 + 34) != 1)
        {
        }

        if (*(v17 + 38) != 1)
        {
        }

        if (*(v17 + 42) != 1)
        {
        }

        if (*(v17 + 46) != 1)
        {
        }

        if (*(v17 + 50) != 1)
        {
        }

        if (*(v17 + 54) != 1)
        {
        }

        if (*(v17 + 58) != 1)
        {
        }

        if (*(v17 + 62) != 1)
        {
        }

        if (*(v17 + 66) != 1)
        {
        }

        if (*(v17 + 70) != 1)
        {
        }

        if (*(v17 + 74) != 1)
        {
        }

        if (*(v17 + 78) != 1)
        {
        }

        if (*(v17 + 82) != 1)
        {
        }

        if (*(v17 + 86) != 1)
        {
        }

        if (*(v17 + 90) != 1)
        {
        }

        if (*(v17 + 94) != 1)
        {
        }

        if (*(v17 + 98) != 1)
        {
        }

        if (*(v17 + 102) != 1)
        {
        }
      }

      if (*(v17 + 256) != 1)
      {
        if (*(v17 + 134) != 1)
        {
        }

        if (*(v17 + 138) != 1)
        {
        }

        if (*(v17 + 142) != 1)
        {
        }

        if (*(v17 + 146) != 1)
        {
        }

        if (*(v17 + 150) != 1)
        {
        }

        if (*(v17 + 154) != 1)
        {
        }

        if (*(v17 + 158) != 1)
        {
        }

        if (*(v17 + 162) != 1)
        {
        }

        if (*(v17 + 166) != 1)
        {
        }

        if (*(v17 + 170) != 1)
        {
        }

        if (*(v17 + 174) != 1)
        {
        }

        if (*(v17 + 178) != 1)
        {
        }

        if (*(v17 + 182) != 1)
        {
        }

        if (*(v17 + 186) != 1)
        {
        }

        if (*(v17 + 190) != 1)
        {
        }

        if (*(v17 + 194) != 1)
        {
        }

        if (*(v17 + 198) != 1)
        {
        }

        if (*(v17 + 202) != 1)
        {
        }

        if (*(v17 + 206) != 1)
        {
        }

        if (*(v17 + 210) != 1)
        {
        }

        if (*(v17 + 214) != 1)
        {
        }

        if (*(v17 + 218) != 1)
        {
        }

        if (*(v17 + 222) != 1)
        {
        }

        if (*(v17 + 226) != 1)
        {
        }

        if (*(v17 + 230) != 1)
        {
        }

        if (*(v17 + 234) != 1)
        {
        }
      }

      if (*(v17 + 388) != 1)
      {
        if (*(v17 + 266) != 1)
        {
        }

        if (*(v17 + 270) != 1)
        {
        }

        if (*(v17 + 274) != 1)
        {
        }

        if (*(v17 + 278) != 1)
        {
        }

        if (*(v17 + 282) != 1)
        {
        }

        if (*(v17 + 286) != 1)
        {
        }

        if (*(v17 + 290) != 1)
        {
        }

        if (*(v17 + 294) != 1)
        {
        }

        if (*(v17 + 298) != 1)
        {
        }

        if (*(v17 + 302) != 1)
        {
        }

        if (*(v17 + 306) != 1)
        {
        }

        if (*(v17 + 310) != 1)
        {
        }

        if (*(v17 + 314) != 1)
        {
        }

        if (*(v17 + 318) != 1)
        {
        }

        if (*(v17 + 322) != 1)
        {
        }

        if (*(v17 + 326) != 1)
        {
        }

        if (*(v17 + 330) != 1)
        {
        }

        if (*(v17 + 334) != 1)
        {
        }

        if (*(v17 + 338) != 1)
        {
        }

        if (*(v17 + 342) != 1)
        {
        }

        if (*(v17 + 346) != 1)
        {
        }

        if (*(v17 + 350) != 1)
        {
        }

        if (*(v17 + 354) != 1)
        {
        }

        if (*(v17 + 358) != 1)
        {
        }

        if (*(v17 + 362) != 1)
        {
        }

        if (*(v17 + 366) != 1)
        {
        }
      }

      if (*(v17 + 520) != 1)
      {
        if (*(v17 + 398) != 1)
        {
        }

        if (*(v17 + 402) != 1)
        {
        }

        if (*(v17 + 406) != 1)
        {
        }

        if (*(v17 + 410) != 1)
        {
        }

        if (*(v17 + 414) != 1)
        {
        }

        if (*(v17 + 418) != 1)
        {
        }

        if (*(v17 + 422) != 1)
        {
        }

        if (*(v17 + 426) != 1)
        {
        }

        if (*(v17 + 430) != 1)
        {
        }

        if (*(v17 + 434) != 1)
        {
        }

        if (*(v17 + 438) != 1)
        {
        }

        if (*(v17 + 442) != 1)
        {
        }

        if (*(v17 + 446) != 1)
        {
        }

        if (*(v17 + 450) != 1)
        {
        }

        if (*(v17 + 454) != 1)
        {
        }

        if (*(v17 + 458) != 1)
        {
        }

        if (*(v17 + 462) != 1)
        {
        }

        if (*(v17 + 466) != 1)
        {
        }

        if (*(v17 + 470) != 1)
        {
        }

        if (*(v17 + 474) != 1)
        {
        }

        if (*(v17 + 478) != 1)
        {
        }

        if (*(v17 + 482) != 1)
        {
        }

        if (*(v17 + 486) != 1)
        {
        }

        if (*(v17 + 490) != 1)
        {
        }

        if (*(v17 + 494) != 1)
        {
        }

        if (*(v17 + 498) != 1)
        {
        }
      }

      if (*(v17 + 652) != 1)
      {
        if (*(v17 + 530) != 1)
        {
        }

        if (*(v17 + 534) != 1)
        {
        }

        if (*(v17 + 538) != 1)
        {
        }

        if (*(v17 + 542) != 1)
        {
        }

        if (*(v17 + 546) != 1)
        {
        }

        if (*(v17 + 550) != 1)
        {
        }

        if (*(v17 + 554) != 1)
        {
        }

        if (*(v17 + 558) != 1)
        {
        }

        if (*(v17 + 562) != 1)
        {
        }

        if (*(v17 + 566) != 1)
        {
        }

        if (*(v17 + 570) != 1)
        {
        }

        if (*(v17 + 574) != 1)
        {
        }

        if (*(v17 + 578) != 1)
        {
        }

        if (*(v17 + 582) != 1)
        {
        }

        if (*(v17 + 586) != 1)
        {
        }

        if (*(v17 + 590) != 1)
        {
        }

        if (*(v17 + 594) != 1)
        {
        }

        if (*(v17 + 598) != 1)
        {
        }

        if (*(v17 + 602) != 1)
        {
        }

        if (*(v17 + 606) != 1)
        {
        }

        if (*(v17 + 610) != 1)
        {
        }

        if (*(v17 + 614) != 1)
        {
        }

        if (*(v17 + 618) != 1)
        {
        }

        if (*(v17 + 622) != 1)
        {
        }

        if (*(v17 + 626) != 1)
        {
        }

        if (*(v17 + 630) != 1)
        {
        }
      }

      if (*(v17 + 784) != 1)
      {
        if (*(v17 + 662) != 1)
        {
        }

        if (*(v17 + 666) != 1)
        {
        }

        if (*(v17 + 670) != 1)
        {
        }

        if (*(v17 + 674) != 1)
        {
        }

        if (*(v17 + 678) != 1)
        {
        }

        if (*(v17 + 682) != 1)
        {
        }

        if (*(v17 + 686) != 1)
        {
        }

        if (*(v17 + 690) != 1)
        {
        }

        if (*(v17 + 694) != 1)
        {
        }

        if (*(v17 + 698) != 1)
        {
        }

        if (*(v17 + 702) != 1)
        {
        }

        if (*(v17 + 706) != 1)
        {
        }

        if (*(v17 + 710) != 1)
        {
        }

        if (*(v17 + 714) != 1)
        {
        }

        if (*(v17 + 718) != 1)
        {
        }

        if (*(v17 + 722) != 1)
        {
        }

        if (*(v17 + 726) != 1)
        {
        }

        if (*(v17 + 730) != 1)
        {
        }

        if (*(v17 + 734) != 1)
        {
        }

        if (*(v17 + 738) != 1)
        {
        }

        if (*(v17 + 742) != 1)
        {
        }

        if (*(v17 + 746) != 1)
        {
        }

        if (*(v17 + 750) != 1)
        {
        }

        if (*(v17 + 754) != 1)
        {
        }

        if (*(v17 + 758) != 1)
        {
        }

        if (*(v17 + 762) != 1)
        {
        }
      }

      if (*(v17 + 916) != 1)
      {
        if (*(v17 + 794) != 1)
        {
        }

        if (*(v17 + 798) != 1)
        {
        }

        if (*(v17 + 802) != 1)
        {
        }

        if (*(v17 + 806) != 1)
        {
        }

        if (*(v17 + 810) != 1)
        {
        }

        if (*(v17 + 814) != 1)
        {
        }

        if (*(v17 + 818) != 1)
        {
        }

        if (*(v17 + 822) != 1)
        {
        }

        if (*(v17 + 826) != 1)
        {
        }

        if (*(v17 + 830) != 1)
        {
        }

        if (*(v17 + 834) != 1)
        {
        }

        if (*(v17 + 838) != 1)
        {
        }

        if (*(v17 + 842) != 1)
        {
        }

        if (*(v17 + 846) != 1)
        {
        }

        if (*(v17 + 850) != 1)
        {
        }

        if (*(v17 + 854) != 1)
        {
        }

        if (*(v17 + 858) != 1)
        {
        }

        if (*(v17 + 862) != 1)
        {
        }

        if (*(v17 + 866) != 1)
        {
        }

        if (*(v17 + 870) != 1)
        {
        }

        if (*(v17 + 874) != 1)
        {
        }

        if (*(v17 + 878) != 1)
        {
        }

        if (*(v17 + 882) != 1)
        {
        }

        if (*(v17 + 886) != 1)
        {
        }

        if (*(v17 + 890) != 1)
        {
        }

        if (*(v17 + 894) != 1)
        {
        }
      }

      if (*(v17 + 1059) != 1)
      {
        if (*(v17 + 937) != 1)
        {
        }

        if (*(v17 + 941) != 1)
        {
        }

        if (*(v17 + 945) != 1)
        {
        }

        if (*(v17 + 949) != 1)
        {
        }

        if (*(v17 + 953) != 1)
        {
        }

        if (*(v17 + 957) != 1)
        {
        }

        if (*(v17 + 961) != 1)
        {
        }

        if (*(v17 + 965) != 1)
        {
        }

        if (*(v17 + 969) != 1)
        {
        }

        if (*(v17 + 973) != 1)
        {
        }

        if (*(v17 + 977) != 1)
        {
        }

        if (*(v17 + 981) != 1)
        {
        }

        if (*(v17 + 985) != 1)
        {
        }

        if (*(v17 + 989) != 1)
        {
        }

        if (*(v17 + 993) != 1)
        {
        }

        if (*(v17 + 997) != 1)
        {
        }

        if (*(v17 + 1001) != 1)
        {
        }

        if (*(v17 + 1005) != 1)
        {
        }

        if (*(v17 + 1009) != 1)
        {
        }

        if (*(v17 + 1013) != 1)
        {
        }

        if (*(v17 + 1017) != 1)
        {
        }

        if (*(v17 + 1021) != 1)
        {
        }

        if (*(v17 + 1025) != 1)
        {
        }

        if (*(v17 + 1029) != 1)
        {
        }

        if (*(v17 + 1033) != 1)
        {
        }

        if (*(v17 + 1037) != 1)
        {
        }
      }
    }

    v1 = v23;
  }

  if (*&v5[v1[26] + 8])
  {
  }

  if (*&v5[v1[27] + 8])
  {
  }

  v18 = v1[29];
  v19 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(&v5[v18], 1, v19))
  {
    (*(v20 + 8))(&v5[v18], v19);
  }

  v21 = &v5[v1[30]];
  if (*(v21 + 1) != 1)
  {

    if (*(v21 + 124) != 1)
    {
      if (*(v21 + 2) != 1)
      {
      }

      if (*(v21 + 6) != 1)
      {
      }

      if (*(v21 + 10) != 1)
      {
      }

      if (*(v21 + 14) != 1)
      {
      }

      if (*(v21 + 18) != 1)
      {
      }

      if (*(v21 + 22) != 1)
      {
      }

      if (*(v21 + 26) != 1)
      {
      }

      if (*(v21 + 30) != 1)
      {
      }

      if (*(v21 + 34) != 1)
      {
      }

      if (*(v21 + 38) != 1)
      {
      }

      if (*(v21 + 42) != 1)
      {
      }

      if (*(v21 + 46) != 1)
      {
      }

      if (*(v21 + 50) != 1)
      {
      }

      if (*(v21 + 54) != 1)
      {
      }

      if (*(v21 + 58) != 1)
      {
      }

      if (*(v21 + 62) != 1)
      {
      }

      if (*(v21 + 66) != 1)
      {
      }

      if (*(v21 + 70) != 1)
      {
      }

      if (*(v21 + 74) != 1)
      {
      }

      if (*(v21 + 78) != 1)
      {
      }

      if (*(v21 + 82) != 1)
      {
      }

      if (*(v21 + 86) != 1)
      {
      }

      if (*(v21 + 90) != 1)
      {
      }

      if (*(v21 + 94) != 1)
      {
      }

      if (*(v21 + 98) != 1)
      {
      }

      if (*(v21 + 102) != 1)
      {
      }
    }

    if (*(v21 + 256) != 1)
    {
      if (*(v21 + 134) != 1)
      {
      }

      if (*(v21 + 138) != 1)
      {
      }

      if (*(v21 + 142) != 1)
      {
      }

      if (*(v21 + 146) != 1)
      {
      }

      if (*(v21 + 150) != 1)
      {
      }

      if (*(v21 + 154) != 1)
      {
      }

      if (*(v21 + 158) != 1)
      {
      }

      if (*(v21 + 162) != 1)
      {
      }

      if (*(v21 + 166) != 1)
      {
      }

      if (*(v21 + 170) != 1)
      {
      }

      if (*(v21 + 174) != 1)
      {
      }

      if (*(v21 + 178) != 1)
      {
      }

      if (*(v21 + 182) != 1)
      {
      }

      if (*(v21 + 186) != 1)
      {
      }

      if (*(v21 + 190) != 1)
      {
      }

      if (*(v21 + 194) != 1)
      {
      }

      if (*(v21 + 198) != 1)
      {
      }

      if (*(v21 + 202) != 1)
      {
      }

      if (*(v21 + 206) != 1)
      {
      }

      if (*(v21 + 210) != 1)
      {
      }

      if (*(v21 + 214) != 1)
      {
      }

      if (*(v21 + 218) != 1)
      {
      }

      if (*(v21 + 222) != 1)
      {
      }

      if (*(v21 + 226) != 1)
      {
      }

      if (*(v21 + 230) != 1)
      {
      }

      if (*(v21 + 234) != 1)
      {
      }
    }

    if (*(v21 + 388) != 1)
    {
      if (*(v21 + 266) != 1)
      {
      }

      if (*(v21 + 270) != 1)
      {
      }

      if (*(v21 + 274) != 1)
      {
      }

      if (*(v21 + 278) != 1)
      {
      }

      if (*(v21 + 282) != 1)
      {
      }

      if (*(v21 + 286) != 1)
      {
      }

      if (*(v21 + 290) != 1)
      {
      }

      if (*(v21 + 294) != 1)
      {
      }

      if (*(v21 + 298) != 1)
      {
      }

      if (*(v21 + 302) != 1)
      {
      }

      if (*(v21 + 306) != 1)
      {
      }

      if (*(v21 + 310) != 1)
      {
      }

      if (*(v21 + 314) != 1)
      {
      }

      if (*(v21 + 318) != 1)
      {
      }

      if (*(v21 + 322) != 1)
      {
      }

      if (*(v21 + 326) != 1)
      {
      }

      if (*(v21 + 330) != 1)
      {
      }

      if (*(v21 + 334) != 1)
      {
      }

      if (*(v21 + 338) != 1)
      {
      }

      if (*(v21 + 342) != 1)
      {
      }

      if (*(v21 + 346) != 1)
      {
      }

      if (*(v21 + 350) != 1)
      {
      }

      if (*(v21 + 354) != 1)
      {
      }

      if (*(v21 + 358) != 1)
      {
      }

      if (*(v21 + 362) != 1)
      {
      }

      if (*(v21 + 366) != 1)
      {
      }
    }

    if (*(v21 + 520) != 1)
    {
      if (*(v21 + 398) != 1)
      {
      }

      if (*(v21 + 402) != 1)
      {
      }

      if (*(v21 + 406) != 1)
      {
      }

      if (*(v21 + 410) != 1)
      {
      }

      if (*(v21 + 414) != 1)
      {
      }

      if (*(v21 + 418) != 1)
      {
      }

      if (*(v21 + 422) != 1)
      {
      }

      if (*(v21 + 426) != 1)
      {
      }

      if (*(v21 + 430) != 1)
      {
      }

      if (*(v21 + 434) != 1)
      {
      }

      if (*(v21 + 438) != 1)
      {
      }

      if (*(v21 + 442) != 1)
      {
      }

      if (*(v21 + 446) != 1)
      {
      }

      if (*(v21 + 450) != 1)
      {
      }

      if (*(v21 + 454) != 1)
      {
      }

      if (*(v21 + 458) != 1)
      {
      }

      if (*(v21 + 462) != 1)
      {
      }

      if (*(v21 + 466) != 1)
      {
      }

      if (*(v21 + 470) != 1)
      {
      }

      if (*(v21 + 474) != 1)
      {
      }

      if (*(v21 + 478) != 1)
      {
      }

      if (*(v21 + 482) != 1)
      {
      }

      if (*(v21 + 486) != 1)
      {
      }

      if (*(v21 + 490) != 1)
      {
      }

      if (*(v21 + 494) != 1)
      {
      }

      if (*(v21 + 498) != 1)
      {
      }
    }

    if (*(v21 + 652) != 1)
    {
      if (*(v21 + 530) != 1)
      {
      }

      if (*(v21 + 534) != 1)
      {
      }

      if (*(v21 + 538) != 1)
      {
      }

      if (*(v21 + 542) != 1)
      {
      }

      if (*(v21 + 546) != 1)
      {
      }

      if (*(v21 + 550) != 1)
      {
      }

      if (*(v21 + 554) != 1)
      {
      }

      if (*(v21 + 558) != 1)
      {
      }

      if (*(v21 + 562) != 1)
      {
      }

      if (*(v21 + 566) != 1)
      {
      }

      if (*(v21 + 570) != 1)
      {
      }

      if (*(v21 + 574) != 1)
      {
      }

      if (*(v21 + 578) != 1)
      {
      }

      if (*(v21 + 582) != 1)
      {
      }

      if (*(v21 + 586) != 1)
      {
      }

      if (*(v21 + 590) != 1)
      {
      }

      if (*(v21 + 594) != 1)
      {
      }

      if (*(v21 + 598) != 1)
      {
      }

      if (*(v21 + 602) != 1)
      {
      }

      if (*(v21 + 606) != 1)
      {
      }

      if (*(v21 + 610) != 1)
      {
      }

      if (*(v21 + 614) != 1)
      {
      }

      if (*(v21 + 618) != 1)
      {
      }

      if (*(v21 + 622) != 1)
      {
      }

      if (*(v21 + 626) != 1)
      {
      }

      if (*(v21 + 630) != 1)
      {
      }
    }

    if (*(v21 + 784) != 1)
    {
      if (*(v21 + 662) != 1)
      {
      }

      if (*(v21 + 666) != 1)
      {
      }

      if (*(v21 + 670) != 1)
      {
      }

      if (*(v21 + 674) != 1)
      {
      }

      if (*(v21 + 678) != 1)
      {
      }

      if (*(v21 + 682) != 1)
      {
      }

      if (*(v21 + 686) != 1)
      {
      }

      if (*(v21 + 690) != 1)
      {
      }

      if (*(v21 + 694) != 1)
      {
      }

      if (*(v21 + 698) != 1)
      {
      }

      if (*(v21 + 702) != 1)
      {
      }

      if (*(v21 + 706) != 1)
      {
      }

      if (*(v21 + 710) != 1)
      {
      }

      if (*(v21 + 714) != 1)
      {
      }

      if (*(v21 + 718) != 1)
      {
      }

      if (*(v21 + 722) != 1)
      {
      }

      if (*(v21 + 726) != 1)
      {
      }

      if (*(v21 + 730) != 1)
      {
      }

      if (*(v21 + 734) != 1)
      {
      }

      if (*(v21 + 738) != 1)
      {
      }

      if (*(v21 + 742) != 1)
      {
      }

      if (*(v21 + 746) != 1)
      {
      }

      if (*(v21 + 750) != 1)
      {
      }

      if (*(v21 + 754) != 1)
      {
      }

      if (*(v21 + 758) != 1)
      {
      }

      if (*(v21 + 762) != 1)
      {
      }
    }

    if (*(v21 + 916) != 1)
    {
      if (*(v21 + 794) != 1)
      {
      }

      if (*(v21 + 798) != 1)
      {
      }

      if (*(v21 + 802) != 1)
      {
      }

      if (*(v21 + 806) != 1)
      {
      }

      if (*(v21 + 810) != 1)
      {
      }

      if (*(v21 + 814) != 1)
      {
      }

      if (*(v21 + 818) != 1)
      {
      }

      if (*(v21 + 822) != 1)
      {
      }

      if (*(v21 + 826) != 1)
      {
      }

      if (*(v21 + 830) != 1)
      {
      }

      if (*(v21 + 834) != 1)
      {
      }

      if (*(v21 + 838) != 1)
      {
      }

      if (*(v21 + 842) != 1)
      {
      }

      if (*(v21 + 846) != 1)
      {
      }

      if (*(v21 + 850) != 1)
      {
      }

      if (*(v21 + 854) != 1)
      {
      }

      if (*(v21 + 858) != 1)
      {
      }

      if (*(v21 + 862) != 1)
      {
      }

      if (*(v21 + 866) != 1)
      {
      }

      if (*(v21 + 870) != 1)
      {
      }

      if (*(v21 + 874) != 1)
      {
      }

      if (*(v21 + 878) != 1)
      {
      }

      if (*(v21 + 882) != 1)
      {
      }

      if (*(v21 + 886) != 1)
      {
      }

      if (*(v21 + 890) != 1)
      {
      }

      if (*(v21 + 894) != 1)
      {
      }
    }

    if (*(v21 + 1059) != 1)
    {
      if (*(v21 + 937) != 1)
      {
      }

      if (*(v21 + 941) != 1)
      {
      }

      if (*(v21 + 945) != 1)
      {
      }

      if (*(v21 + 949) != 1)
      {
      }

      if (*(v21 + 953) != 1)
      {
      }

      if (*(v21 + 957) != 1)
      {
      }

      if (*(v21 + 961) != 1)
      {
      }

      if (*(v21 + 965) != 1)
      {
      }

      if (*(v21 + 969) != 1)
      {
      }

      if (*(v21 + 973) != 1)
      {
      }

      if (*(v21 + 977) != 1)
      {
      }

      if (*(v21 + 981) != 1)
      {
      }

      if (*(v21 + 985) != 1)
      {
      }

      if (*(v21 + 989) != 1)
      {
      }

      if (*(v21 + 993) != 1)
      {
      }

      if (*(v21 + 997) != 1)
      {
      }

      if (*(v21 + 1001) != 1)
      {
      }

      if (*(v21 + 1005) != 1)
      {
      }

      if (*(v21 + 1009) != 1)
      {
      }

      if (*(v21 + 1013) != 1)
      {
      }

      if (*(v21 + 1017) != 1)
      {
      }

      if (*(v21 + 1021) != 1)
      {
      }

      if (*(v21 + 1025) != 1)
      {
      }

      if (*(v21 + 1029) != 1)
      {
      }

      if (*(v21 + 1033) != 1)
      {
      }

      if (*(v21 + 1037) != 1)
      {
      }
    }
  }

  if (*&v5[v1[32] + 8])
  {
  }

  if (*&v5[v1[34] + 16])
  {
  }

  if (*&v5[v1[35] + 16])
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100306708()
{

  return _swift_deallocObject(v0, 384, 7);
}

void sub_1003067E0()
{
  v7 = *(v0 + 336);
  v8 = *(v0 + 352);
  v5 = *(v0 + 304);
  v6 = *(v0 + 320);
  v3 = *(v0 + 272);
  v4 = *(v0 + 288);
  v1 = *(v0 + 240);
  v2 = *(v0 + 256);
  sub_1005779B4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), v1, *(&v1 + 1), v2, *(&v2 + 1), v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), v7, *(&v7 + 1), v8, *(&v8 + 1), *(v0 + 368), *(v0 + 376));
}

uint64_t sub_100306888(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for IdentityProofingBiomeManager.DocumentDataSource(uint64_t a1)
{
  result = qword_1008409F0;
  if (!qword_1008409F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003068EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100306954()
{

  return _swift_deallocObject(v0, 145, 7);
}

uint64_t sub_100306A24()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100306A84()
{
  result = qword_100840978;
  if (!qword_100840978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100840978);
  }

  return result;
}

uint64_t sub_100306AD8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100306B3C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100306C1C()
{

  return _swift_deallocObject(v0, 168, 7);
}

void sub_100306D4C(uint64_t a1)
{
  type metadata accessor for PDF417ParsedData();
  if (v1 <= 0x3F)
  {
    sub_100306DC0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100306DC0()
{
  if (!qword_100840A00)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_100840A00);
    }
  }
}

uint64_t sub_100306E24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 560))
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

uint64_t sub_100306E80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 552) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 560) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 560) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_100306FC0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v55 = a1;
  v53 = a5;
  v8 = type metadata accessor for Logger();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v52 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v46 - v14;
  v16 = type metadata accessor for DIPError.Code();
  v54 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v56;
  v20 = sub_1005792EC(a2, a3, a4);
  if (v19)
  {
    return;
  }

  v47._countAndFlagsBits = a2;
  v47._object = a3;
  v55 = v16;
  v56 = v18;
  v46 = v13;
  v48 = v15;
  v21 = v53;
  if (!v20)
  {
    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v57 = 0xD000000000000023;
    v58 = 0x800000010070D310;
    String.append(_:)(v47);
    v29._countAndFlagsBits = 0x20646E6120;
    v29._object = 0xE500000000000000;
    String.append(_:)(v29);
    v30._countAndFlagsBits = IdentityTarget.debugDescription.getter();
    String.append(_:)(v30);

    (*(v54 + 104))(v56, enum case for DIPError.Code.internalError(_:), v55);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return;
  }

  v47._object = 0;
  v22 = v20;
  v23 = [v20 createdAt];
  if (!v23)
  {
    (*(v54 + 104))(v56, enum case for DIPError.Code.createdAtDateUnavailable(_:), v55);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v24 = v48;
  v25 = v23;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = [objc_opt_self() standardUserDefaults];
  v27._countAndFlagsBits = static DaemonInternalDefaultsKeys.clearConnectToWifiReminderTimeout.getter();
  v28 = NSUserDefaults.internalBool(forKey:)(v27);

  if (v28)
  {
    (*(v52 + 8))(v24, v10);
LABEL_10:

    *v21 = 1;
    return;
  }

  v31 = v46;
  Date.init()();
  [v22 connectToWifiReminderInDays];
  v32 = Date.isAtLeast(days:after:)();
  v33 = v52 + 8;
  v34 = *(v52 + 8);
  v35 = v10;
  v34(v31, v10);
  if (v32)
  {
    v34(v24, v10);
    goto LABEL_10;
  }

  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v37 = v36;
  v52 = v33;
  v34(v31, v10);
  Date.timeIntervalSinceReferenceDate.getter();
  v39 = v37 - v38;
  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v40 = v21;
  defaultLogger()();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = v39 % 3600;
    v44 = (v43 - 60 * ((((34953 * v43) >> 16) >> 5) + (((v43 + ((-30583 * v43) >> 16)) & 0x8000) >> 15)));
    v56 = ((((34953 * v43) >> 16) >> 5) + (((v43 + ((-30583 * v43) >> 16)) & 0x8000) >> 15));
    v45 = swift_slowAlloc();
    *v45 = 134218496;
    *(v45 + 4) = v39 / 3600;
    *(v45 + 12) = 2048;
    *(v45 + 14) = v56;
    v40 = v21;
    *(v45 + 22) = 2048;
    *(v45 + 24) = v44;
    _os_log_impl(&_mh_execute_header, v41, v42, "%ld hour(s) %ld minute(s) %ld second(s) is the time left before which the connect to wifi alert can be triggered.", v45, 0x20u);
    v35 = v10;
  }

  (*(v49 + 8))(v51, v50);
  v34(v48, v35);
  *v40 = 0;
}

void *sub_1003076D4@<X0>(void *a1@<X0>, void *(*a2)(uint64_t *__return_ptr, void)@<X1>, _BYTE *a3@<X8>)
{
  result = a2(&v6, *a1);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_10030771C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 240) = a4;
  *(v6 + 248) = a6;
  *(v6 + 433) = a5;
  *(v6 + 224) = a2;
  *(v6 + 232) = a3;
  *(v6 + 216) = a1;
  v7 = type metadata accessor for DIPError.Code();
  *(v6 + 256) = v7;
  *(v6 + 264) = *(v7 - 8);
  *(v6 + 272) = swift_task_alloc();
  v8 = type metadata accessor for IdentityProofingUnorderedUIElement();
  *(v6 + 280) = v8;
  *(v6 + 288) = *(v8 - 8);
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = type metadata accessor for IdentityProofingStaticWorkflow(0);
  *(v6 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_100307880, 0, 0);
}