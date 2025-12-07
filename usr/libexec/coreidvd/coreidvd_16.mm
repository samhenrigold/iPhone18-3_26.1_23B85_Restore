uint64_t sub_100181268()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100181338(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v37 - v12;
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  v16 = *a1;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    defaultLogger()();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "PendingProvisioning is not of type PKPendingIdentityCredential.", v29, 2u);
    }

    (*(v7 + 8))(v15, v6);
    return 0;
  }

  v18 = v17;
  v19 = v16;
  v20 = [v18 credentialIdentifier];
  if (!v20)
  {
    defaultLogger()();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Credential Identifier doesn't exist in the pending provisioning.", v32, 2u);
    }

    (*(v7 + 8))(v13, v6);
    return 0;
  }

  v21 = v20;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == a2 && v24 == a3)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {

      return 0;
    }
  }

  defaultLogger()();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Found the credential identifier in the proofing session that matches the pending provisioning credential identifier", v36, 2u);
  }

  (*(v7 + 8))(v10, v6);
  return 1;
}

void sub_100181698(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v37 = a5;
  v38 = a4;
  v8 = type metadata accessor for Logger();
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPError.Code();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v40;
  sub_10057BE48(a1, a2, a3);
  if (!v15)
  {
    v40 = a1;
    v17 = v39;
    v36 = v8;
    if (v16)
    {
      v35 = v16;
      v18 = [v16 credentialIdentifier];
      v19 = v12;
      if (v18)
      {
        v20 = v18;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v26 = v17;
      v27 = v38;
      swift_beginAccess();
      *(v27 + 16) = v21;
      *(v27 + 24) = v23;

      if (v23)
      {
        v28 = v26;
        v29 = v21;

        defaultLogger()();

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *v32 = 136315394;
          *(v32 + 4) = sub_100141FE4(v29, v23, &v43);
          *(v32 + 12) = 2080;
          *(v32 + 14) = sub_100141FE4(v40, a2, &v43);
          _os_log_impl(&_mh_execute_header, v30, v31, "Credential Identifier: %s exists for the proofing session with proofingSessionID: %s", v32, 0x16u);
          swift_arrayDestroy();
        }

        (*(v28 + 8))(v10, v36);
        v33 = v37;
        *v37 = v29;
        v33[1] = v23;
      }

      else
      {
        (*(v19 + 104))(v14, enum case for DIPError.Code.credentialIdentifierDoesNotExist(_:), v11);
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
      v41 = 0;
      v42 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v24._countAndFlagsBits = 0xD000000000000033;
      v24._object = 0x80000001007034F0;
      String.append(_:)(v24);
      v25._countAndFlagsBits = v40;
      v25._object = a2;
      String.append(_:)(v25);
      (*(v12 + 104))(v14, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v11);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_100181BC4()
{

  sub_10000BB78((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_100181C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100181D48, 0, 0);
}

uint64_t sub_100181D48(uint64_t a1)
{
  v29 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[11];
  v5 = v1[12];
  v7 = v1[10];
  if (v4)
  {
    v9 = v1[4];
    v8 = v1[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v28);
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrieving the credential Identifier for the proofing session with proofingSessionID: %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v6 + 8))(v5, v7);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v1[13] = v12;
  v13 = v1[9];
  v14 = v1[8];
  v27 = v1[7];
  v16 = v1[5];
  v15 = v1[6];
  v17 = v1[4];
  v18 = v12;
  v19 = swift_allocObject();
  v1[14] = v19;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  v20 = swift_allocObject();
  v1[15] = v20;
  v20[2] = v18;
  v20[3] = v17;
  v20[4] = v16;
  v20[5] = v15;
  v20[6] = v19;
  v21 = swift_allocObject();
  v1[16] = v21;
  *(v21 + 16) = sub_1001823A0;
  *(v21 + 24) = v20;
  v22 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v23 = *(v14 + 104);

  v23(v13, v22, v27);

  v24 = swift_task_alloc();
  v1[17] = v24;
  *v24 = v1;
  v24[1] = sub_100182084;
  v25 = v1[9];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1 + 2, v25, sub_1001823FC, v21, &type metadata for String);
}

uint64_t sub_100182084()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    (*(v2[8] + 8))(v2[9], v2[7]);

    v3 = sub_100182294;
  }

  else
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];

    (*(v5 + 8))(v4, v6);
    v7 = v2[3];
    v2[19] = v2[2];
    v2[20] = v7;
    v3 = sub_100182204;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100182204()
{

  v1 = v0[1];
  v2 = v0[19];
  v3 = v0[20];

  return v1(v2, v3);
}

uint64_t sub_100182294()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100182320()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100182358()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001823C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_1001823FC@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

void sub_100182440(uint64_t a1, unsigned int a2, void *a3)
{
  v244 = a3;
  v247 = a2;
  v3 = type metadata accessor for DIPError.Code();
  v250 = *(v3 - 8);
  v251 = v3;
  __chkstk_darwin(v3);
  v252 = &v224 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v6 = __chkstk_darwin(v5 - 8);
  v227 = &v224 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v230 = &v224 - v9;
  v10 = __chkstk_darwin(v8);
  v233 = &v224 - v11;
  __chkstk_darwin(v10);
  v232 = &v224 - v12;
  v13 = sub_100007224(&qword_10083BD38, &qword_1006DA250);
  __chkstk_darwin(v13 - 8);
  v238 = &v224 - v14;
  *&v248 = sub_100007224(&qword_1008335C0, &qword_1006DA7B0);
  v236 = *(v248 - 8);
  v15 = __chkstk_darwin(v248);
  v240 = &v224 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v224 - v17;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v228 = &v224 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v229 = &v224 - v24;
  v25 = __chkstk_darwin(v23);
  v235 = &v224 - v26;
  v27 = __chkstk_darwin(v25);
  v234 = &v224 - v28;
  v29 = __chkstk_darwin(v27);
  v241 = &v224 - v30;
  v31 = __chkstk_darwin(v29);
  v237 = &v224 - v32;
  v33 = __chkstk_darwin(v31);
  v242 = &v224 - v34;
  v35 = __chkstk_darwin(v33);
  v231 = &v224 - v36;
  v37 = __chkstk_darwin(v35);
  v239 = &v224 - v38;
  v39 = __chkstk_darwin(v37);
  v41 = &v224 - v40;
  __chkstk_darwin(v39);
  v43 = &v224 - v42;
  defaultLogger()();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "encrypting and saving item to CloudKit", v46, 2u);
  }

  v48 = *(v20 + 8);
  v47 = (v20 + 8);
  v249 = v48;
  v48(v43, v19);
  v258 = IdentityDocument.image.getter();
  if (v49 >> 60 == 15)
  {
    v258 = "e:type:identityKeyPair:)";
    v51 = v250;
    v50 = v251;
    v52 = v252;
    (*(v250 + 104))(v252, enum case for DIPError.Code.invalidStoredData(_:), v251);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v53 = v50;
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_95:
    (*(v51 + 104))(v52, enum case for DIPError.Code.internalError(_:), v53);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v54 = v49;
  v246 = v18;
  v55 = [objc_opt_self() standardUserDefaults];
  v56._countAndFlagsBits = static DaemonInternalDefaultsKeys.saveProofingImages.getter();
  v57 = NSUserDefaults.internalBool(forKey:)(v56);

  v58 = v249;
  if (v57)
  {
    v59 = static DIPFeatures.sharedInstance.getter();
    if (v59)
    {
      v60 = v59;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v62 = String._bridgeToObjectiveC()();

      [v60 saveProofingImage:isa withName:v62];

      swift_unknownObjectRelease();
    }
  }

  defaultLogger()();
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "Starting to encrypt images", v65, 2u);
  }

  v58(v41, v19);
  sub_10000BA08(v244, v244[3]);
  v244 = v47;
  v66 = v19;
  v67 = v58;
  v68 = v258;
  v254 = Data.base64EncodedData(options:)();
  v255 = v69;
  sub_10000B960();
  sub_10000B9B4();
  v70 = v245;
  dispatch thunk of HPKESuite.sealMessageAEAD<A>(message:)();
  if (v70)
  {
    sub_10000B90C(v254, v255);
    sub_10000BD94(v68, v54);
LABEL_94:
    v53 = v251;
    v52 = v252;
    v51 = v250;
    goto LABEL_95;
  }

  v224 = 0;
  v225 = v54;
  sub_10000B90C(v254, v255);
  v71 = v239;
  defaultLogger()();
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "Images encryption complete", v74, 2u);
  }

  v75 = 0xEF746E6F7246746ELL;

  v226 = v66;
  v76 = v66;
  v77 = v67;
  v67(v71, v76);
  v78 = v240;
  sub_10000BBC4(v246, v240, &qword_1008335C0, &qword_1006DA7B0);
  v79 = *(v248 + 48);
  v80 = sub_100007224(&unk_100833638, &unk_1006BF6C0);
  v256 = SealedMessage.data.getter();
  v257 = v81;
  (*(*(v80 - 8) + 8))(v78, v80);
  v82 = type metadata accessor for AEADKey();
  (*(*(v82 - 8) + 8))(v78 + v79, v82);
  v83 = shouldIncludeUnencryptedData()();
  v84 = v247;
  v85 = v258;
  if (v83)
  {
    v86 = v231;
    defaultLogger()();
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v254 = v90;
      *v89 = 136446210;
      if (v84 <= 1u)
      {
        v91 = v226;
        v92 = 0x656D75636F446469;
        if (v84)
        {
          v75 = 0xEE006B636142746ELL;
          v92 = 0x656D75636F446469;
        }
      }

      else if (v84 == 2)
      {
        v91 = v226;
        v75 = 0xE600000000000000;
        v92 = 0x6569666C6573;
      }

      else
      {
        v91 = v226;
        if (v84 == 3)
        {
          v92 = 0x7373656E6576696CLL;
          v75 = 0xED00006F65646956;
        }

        else
        {
          v92 = 0x7261696C69787561;
          v75 = 0xEE006F6564695679;
        }
      }

      v93 = sub_100141FE4(v92, v75, &v254);

      *(v89 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v87, v88, "allowing unencrypted CK data for %{public}s", v89, 0xCu);
      sub_10000BB78(v90);

      v249(v231, v91);
      v84 = v247;
      v85 = v258;
    }

    else
    {

      v77(v86, v226);
    }

    v94 = v256;
    v95 = v257;
    v256 = v85;
    v257 = v225;
    sub_1000363B4(v85, v225);
    sub_10000B90C(v94, v95);
  }

  v96 = v256;
  v97 = v257;
  sub_10000B8B8(v256, v257);
  v98 = Data._bridgeToObjectiveC()().super.isa;
  sub_10000B90C(v96, v97);
  v99 = DigestSha256();

  if (v99)
  {
    v100 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = v101;

    sub_10000B8B8(v100, v102);
    v103 = Data.base64EncodedString(options:)(0);
    countAndFlagsBits = v103._countAndFlagsBits;
    object = v103._object;
    v245 = v100;
    sub_10000B90C(v100, v102);
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
    v245 = 0;
    v102 = 0xF000000000000000;
  }

  v106 = v243;
  swift_beginAccess();
  sub_10014C408(countAndFlagsBits, object, v84);
  swift_endAccess();
  v107 = v256;
  v108 = v257 >> 62;
  if ((v257 >> 62) > 1)
  {
    v109 = 0;
    if (v108 != 2)
    {
      goto LABEL_39;
    }

    v107 = *(v256 + 16);
    v110 = *(v256 + 24);
    v109 = v110 - v107;
    if (!__OFSUB__(v110, v107))
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  else if (!v108)
  {
    v109 = BYTE6(v257);
    goto LABEL_39;
  }

  v111 = __OFSUB__(HIDWORD(v107), v107);
  v112 = HIDWORD(v107) - v107;
  if (v111)
  {
    __break(1u);
    goto LABEL_128;
  }

  v109 = v112;
LABEL_39:
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v253 = *(v106 + 32);
  *(v106 + 32) = 0x8000000000000000;
  sub_10016DA1C(v109, v84, isUniquelyReferenced_nonNull_native);
  *(v106 + 32) = v253;
  swift_endAccess();
  v114 = v242;
  defaultLogger()();
  v115 = v245;
  sub_1000363B4(v245, v102);
  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.debug.getter();
  v240 = v102;
  sub_10000BD94(v115, v102);
  if (os_log_type_enabled(v116, v117))
  {
    v118 = v226;
    v119 = swift_slowAlloc();
    v254 = swift_slowAlloc();
    *v119 = 136446466;
    v120 = 0xE600000000000000;
    v121 = 0x6569666C6573;
    v122 = 0x7373656E6576696CLL;
    v123 = 0xED00006F65646956;
    if (v84 != 3)
    {
      v122 = 0x7261696C69787561;
      v123 = 0xEE006F6564695679;
    }

    if (v84 != 2)
    {
      v121 = v122;
      v120 = v123;
    }

    v124 = 0xEE006B636142746ELL;
    if (!v84)
    {
      v124 = 0xEF746E6F7246746ELL;
    }

    if (v84 <= 1u)
    {
      v125 = 0x656D75636F446469;
    }

    else
    {
      v125 = v121;
    }

    if (v84 <= 1u)
    {
      v126 = v124;
    }

    else
    {
      v126 = v120;
    }

    v127 = sub_100141FE4(v125, v126, &v254);

    *(v119 + 4) = v127;
    *(v119 + 12) = 2080;
    v128 = v242;
    if (v240 >> 60 == 15)
    {
      v129 = 0;
      v130 = 0xE000000000000000;
    }

    else
    {
      v133 = Data.base16EncodedString()();
      v129 = v133._countAndFlagsBits;
      v130 = v133._object;
    }

    v134 = sub_100141FE4(v129, v130, &v254);

    *(v119 + 14) = v134;
    _os_log_impl(&_mh_execute_header, v116, v117, "hash for uploaded %{public}s: %s", v119, 0x16u);
    swift_arrayDestroy();

    v131 = v118;
    v132 = v249;
    v249(v128, v118);
    v84 = v247;
  }

  else
  {

    v131 = v226;
    v132 = v249;
    v249(v114, v226);
  }

  v135 = v238;
  sub_10000BBC4(v246, v238, &qword_1008335C0, &qword_1006DA7B0);
  (*(v236 + 56))(v135, 0, 1, v248);
  swift_beginAccess();
  sub_10014C4DC(v135, v84);
  swift_endAccess();
  v136 = v237;
  defaultLogger()();
  v137 = Logger.logObject.getter();
  v138 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    *v139 = 0;
    _os_log_impl(&_mh_execute_header, v137, v138, "--- BEGIN LOGGING ENCRYPTED IMAGE SIZE----", v139, 2u);
  }

  v132(v136, v131);
  v140 = v241;
  defaultLogger()();
  v141 = Logger.logObject.getter();
  v142 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v141, v142))
  {

    v147 = v140;
    v148 = v131;
    goto LABEL_79;
  }

  v143 = swift_slowAlloc();
  v254 = swift_slowAlloc();
  *v143 = 136446466;
  v144 = v131;
  if (v84 <= 1u)
  {
    v145 = 0x656D75636F446469;
    v146 = 0xEF746E6F7246746ELL;
    if (!v84)
    {
      goto LABEL_70;
    }

    v149 = 0x6B636142746ELL;
  }

  else
  {
    if (v84 == 2)
    {
      v146 = 0xE600000000000000;
      v145 = 0x6569666C6573;
      goto LABEL_70;
    }

    if (v84 == 3)
    {
      v145 = 0x7373656E6576696CLL;
      v146 = 0xED00006F65646956;
      goto LABEL_70;
    }

    v145 = 0x7261696C69787561;
    v149 = 0x6F6564695679;
  }

  v146 = v149 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
LABEL_70:
  v150 = sub_100141FE4(v145, v146, &v254);

  *(v143 + 4) = v150;
  *(v143 + 12) = 2082;
  swift_beginAccess();
  v151 = v256;
  v152 = v257 >> 62;
  if ((v257 >> 62) > 1)
  {
    if (v152 != 2)
    {
      goto LABEL_78;
    }

    v151 = *(v256 + 16);
    if (!__OFSUB__(*(v256 + 24), v151))
    {
      goto LABEL_78;
    }

    __break(1u);
  }

  else if (!v152)
  {
    goto LABEL_78;
  }

  if (__OFSUB__(HIDWORD(v151), v151))
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

LABEL_78:
  v153 = Int.formattedByteSize.getter();
  v155 = sub_100141FE4(v153, v154, &v254);

  *(v143 + 14) = v155;
  _os_log_impl(&_mh_execute_header, v141, v142, "%{public}s: %{public}s", v143, 0x16u);
  swift_arrayDestroy();

  v147 = v241;
  v131 = v144;
  v148 = v144;
  v132 = v249;
LABEL_79:
  v132(v147, v148);
  v156 = v234;
  defaultLogger()();
  v157 = Logger.logObject.getter();
  v158 = static os_log_type_t.debug.getter();
  v159 = os_log_type_enabled(v157, v158);
  v160 = v235;
  if (v159)
  {
    v161 = swift_slowAlloc();
    *v161 = 134349056;
    swift_beginAccess();
    v162 = v256;
    v163 = v257 >> 62;
    if ((v257 >> 62) > 1)
    {
      v164 = 0;
      if (v163 != 2)
      {
        goto LABEL_89;
      }

      v162 = *(v256 + 16);
      v165 = *(v256 + 24);
      v111 = __OFSUB__(v165, v162);
      v164 = v165 - v162;
      if (!v111)
      {
        goto LABEL_89;
      }

      __break(1u);
    }

    else if (!v163)
    {
      v164 = BYTE6(v257);
LABEL_89:
      *(v161 + 4) = v164;
      _os_log_impl(&_mh_execute_header, v157, v158, "size in bytes: %{public}ld", v161, 0xCu);

      goto LABEL_90;
    }

    v111 = __OFSUB__(HIDWORD(v162), v162);
    v166 = HIDWORD(v162) - v162;
    if (!v111)
    {
      v164 = v166;
      goto LABEL_89;
    }

LABEL_129:
    __break(1u);
    return;
  }

LABEL_90:

  v132(v156, v131);
  defaultLogger()();
  v167 = Logger.logObject.getter();
  v168 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v167, v168))
  {
    v169 = swift_slowAlloc();
    *v169 = 0;
    _os_log_impl(&_mh_execute_header, v167, v168, "--- END LOGGING ENCRYPTED IMAGE SIZE----", v169, 2u);
  }

  v132(v160, v131);
  v170 = [objc_allocWithZone(NSUUID) init];
  v171 = [v170 UUIDString];

  v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v174 = v173;

  swift_beginAccess();
  v175 = v256;
  v176 = v257;
  v177 = type metadata accessor for URL();
  v243 = *(v177 - 8);
  v178 = *(v243 + 56);
  v179 = v232;
  v178(v232, 1, 1, v177);
  type metadata accessor for UploadAsset(0);
  v180 = swift_allocObject();
  v248 = xmmword_1006BF650;
  *(v180 + 32) = xmmword_1006BF650;
  v178((v180 + OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL), 1, 1, v177);
  *(v180 + OBJC_IVAR____TtC8coreidvd11UploadAsset_systemData) = v248;
  *(v180 + 16) = v172;
  *(v180 + 24) = v174;
  v181 = *(v180 + 32);
  v182 = *(v180 + 40);
  sub_10000B8B8(v175, v176);
  *(v180 + 32) = v175;
  *(v180 + 40) = v176;
  sub_10000BD94(v181, v182);
  v183 = v247;
  *(v180 + 48) = v247;
  v184 = OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL;
  swift_beginAccess();
  sub_10000BDA8(v179, v180 + v184);
  swift_endAccess();
  v185 = v233;
  v186 = v224;
  sub_1000285B8(v233);
  if (v186)
  {
    sub_10000BE18(v246, &qword_1008335C0, &qword_1006DA7B0);
    sub_10000BD94(v258, v225);
    sub_10000BD94(v245, v240);

    sub_10000B90C(v256, v257);
    goto LABEL_94;
  }

  v252 = v177;
  v187 = v229;
  defaultLogger()();
  v188 = v230;
  sub_10000BBC4(v185, v230, &unk_100844540, &unk_1006BFBC0);
  v189 = Logger.logObject.getter();
  v190 = static os_log_type_t.debug.getter();
  v191 = os_log_type_enabled(v189, v190);
  v192 = v225;
  if (v191)
  {
    v193 = v183;
    v194 = swift_slowAlloc();
    v250 = swift_slowAlloc();
    v253 = v250;
    *v194 = 136315394;
    LODWORD(v251) = v190;
    if (v193 <= 1u)
    {
      v195 = v227;
      if (v193)
      {
        v197 = 0xEE006B636142746ELL;
      }

      else
      {
        v197 = 0xEF746E6F7246746ELL;
      }

      v196 = 0x656D75636F446469;
    }

    else
    {
      v195 = v227;
      if (v193 == 2)
      {
        v197 = 0xE600000000000000;
        v196 = 0x6569666C6573;
      }

      else if (v193 == 3)
      {
        v196 = 0x7373656E6576696CLL;
        v197 = 0xED00006F65646956;
      }

      else
      {
        v196 = 0x7261696C69787561;
        v197 = 0xEE006F6564695679;
      }
    }

    v199 = sub_100141FE4(v196, v197, &v253);

    *(v194 + 4) = v199;
    *(v194 + 12) = 2080;
    sub_10000BBC4(v188, v195, &unk_100844540, &unk_1006BFBC0);
    v200 = v243;
    v201 = v252;
    if ((*(v243 + 48))(v195, 1, v252) == 1)
    {
      sub_10000BE18(v195, &unk_100844540, &unk_1006BFBC0);
      v202 = 0;
      v203 = 0xE000000000000000;
    }

    else
    {
      *&v248 = v189;
      v204 = v200;
      v202 = URL.absoluteString.getter();
      v203 = v205;
      (*(v204 + 8))(v195, v201);
      v189 = v248;
    }

    sub_10000BE18(v230, &unk_100844540, &unk_1006BFBC0);
    v206 = sub_100141FE4(v202, v203, &v253);

    *(v194 + 14) = v206;
    _os_log_impl(&_mh_execute_header, v189, v251, "Successfully persisted assetData to disk for assetType: %s at path: %s", v194, 0x16u);
    swift_arrayDestroy();

    v198 = v226;
    v249(v229, v226);
    v192 = v225;
  }

  else
  {

    sub_10000BE18(v188, &unk_100844540, &unk_1006BFBC0);
    v198 = v226;
    v249(v187, v226);
  }

  v207 = *(v180 + 48);
  v208 = v228;
  v209 = v258;
  v210 = v240;
  if (v207 > 2)
  {
    if (v207 - 4 >= 2)
    {
      v220._countAndFlagsBits = 0x3162336130356262;
      v221._countAndFlagsBits = 0xD00000000000002CLL;
      v221._object = 0x8000000100703830;
      v220._object = 0xE800000000000000;
      logMilestone(tag:description:)(v220, v221);
      sub_10000BD94(v209, v192);
      sub_10000BD94(v245, v210);
    }

    else
    {
      defaultLogger()();
      v215 = Logger.logObject.getter();
      v216 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v215, v216))
      {
        v217 = swift_slowAlloc();
        *v217 = 0;
        _os_log_impl(&_mh_execute_header, v215, v216, "This should never happen.", v217, 2u);

        v218 = v209;
        v219 = v225;
      }

      else
      {

        v218 = v209;
        v219 = v192;
      }

      sub_10000BD94(v218, v219);
      sub_10000BD94(v245, v240);
      v249(v208, v198);
    }

    v211 = v246;
  }

  else
  {
    v211 = v246;
    if (*(v180 + 48))
    {
      if (v207 == 1)
      {
        v212 = " ID front to Cloudkit.";
        v213 = 0xD000000000000025;
        v214 = 0x3165663761383639;
      }

      else
      {
        v212 = " liveness video to Cloudkit.";
        v213 = 0xD000000000000024;
        v214 = 0x6337303262616363;
      }
    }

    else
    {
      v212 = " selfie to Cloudkit.";
      v213 = 0xD000000000000026;
      v214 = 0x3930393464363865;
    }

    v222 = v212 | 0x8000000000000000;
    v223 = 0xE800000000000000;
    logMilestone(tag:description:)(*&v214, *&v213);
    sub_10000BD94(v209, v192);
    sub_10000BD94(v245, v210);
  }

  sub_10000BE18(v185, &unk_100844540, &unk_1006BFBC0);
  sub_10000BE18(v211, &qword_1008335C0, &qword_1006DA7B0);
  sub_10000B90C(v256, v257);
}

void sub_100184250(void *a1, int a2, char *a3)
{
  v279 = a3;
  LODWORD(v3) = a2;
  v284 = a1;
  *&v282 = type metadata accessor for DIPError.Code();
  v281 = *(v282 - 8);
  __chkstk_darwin(v282);
  v283 = &v234 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&qword_10083BD38, &qword_1006DA250);
  __chkstk_darwin(v5 - 8);
  v246 = &v234 - v6;
  v242 = sub_100007224(&qword_10083CA60, &qword_1006DAD48);
  v7 = __chkstk_darwin(v242);
  v243 = &v234 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v254 = &v234 - v9;
  v255 = type metadata accessor for AEADKey();
  v247 = *(v255 - 8);
  __chkstk_darwin(v255);
  v253 = &v234 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for UUID();
  v240 = *(v241 - 8);
  __chkstk_darwin(v241);
  v239 = &v234 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_100007224(&unk_100833638, &unk_1006BF6C0);
  v244 = *(v245 - 8);
  __chkstk_darwin(v245);
  v252 = &v234 - v12;
  v13 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v13 - 8);
  v259 = &v234 - v14;
  v262 = type metadata accessor for URL();
  v266 = *(v262 - 8);
  v15 = __chkstk_darwin(v262);
  v261 = &v234 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v234 - v17;
  v258 = type metadata accessor for DIPFileUploadCryptor.Result();
  v257 = *(v258 - 8);
  __chkstk_darwin(v258);
  v270 = &v234 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = type metadata accessor for DIPFileUploadCryptor.Options();
  v267 = *(v268 - 8);
  __chkstk_darwin(v268);
  v269 = &v234 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = type metadata accessor for AES.GCM.Nonce();
  v276 = *(v277 - 8);
  __chkstk_darwin(v277);
  v275 = &v234 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SymmetricKeySize();
  __chkstk_darwin(v22 - 8);
  v274 = type metadata accessor for SymmetricKey();
  v273 = *(v274 - 8);
  __chkstk_darwin(v274);
  v24 = &v234 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Logger();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v238 = &v234 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v248 = &v234 - v30;
  v31 = __chkstk_darwin(v29);
  v250 = &v234 - v32;
  v33 = __chkstk_darwin(v31);
  v256 = &v234 - v34;
  v35 = __chkstk_darwin(v33);
  v251 = &v234 - v36;
  v37 = __chkstk_darwin(v35);
  v249 = &v234 - v38;
  v39 = __chkstk_darwin(v37);
  v260 = &v234 - v40;
  v41 = __chkstk_darwin(v39);
  v263 = &v234 - v42;
  __chkstk_darwin(v41);
  v44 = &v234 - v43;
  defaultLogger()();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  v47 = os_log_type_enabled(v45, v46);
  v280 = v25;
  v272 = v3;
  v265 = v18;
  v271 = v26;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v285 = v49;
    *v48 = 136315138;
    v50 = 0xEF746E6F7246746ELL;
    v51 = 0xE600000000000000;
    v52 = 0x6569666C6573;
    v53 = 0x7373656E6576696CLL;
    v54 = 0xED00006F65646956;
    if (v3 != 3)
    {
      v53 = 0x7261696C69787561;
      v54 = 0xEE006F6564695679;
    }

    if (v3 != 2)
    {
      v52 = v53;
      v51 = v54;
    }

    if (v3)
    {
      v50 = 0xEE006B636142746ELL;
    }

    if (v3 <= 1u)
    {
      v55 = 0x656D75636F446469;
    }

    else
    {
      v55 = v52;
    }

    if (v3 <= 1u)
    {
      v3 = v50;
    }

    else
    {
      v3 = v51;
    }

    v56 = sub_100141FE4(v55, v3, &v285);

    *(v48 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v45, v46, "Saving %s FileHandle data to CloudKit", v48, 0xCu);
    sub_10000BB78(v49);

    v57 = v271[1];
    v57(v44, v280);
    LOBYTE(v3) = v272;
  }

  else
  {

    v57 = v26[1];
    v57(v44, v25);
  }

  if (!v284)
  {
    *&v285 = 0;
    *(&v285 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    v69._object = 0x8000000100703760;
    v69._countAndFlagsBits = 0xD000000000000038;
    String.append(_:)(v69);
    v70 = 0xEF746E6F7246746ELL;
    v71 = 0xE600000000000000;
    v72 = 0x6569666C6573;
    v73 = 0x7373656E6576696CLL;
    v74 = 0xED00006F65646956;
    if (v3 != 3)
    {
      v73 = 0x7261696C69787561;
      v74 = 0xEE006F6564695679;
    }

    if (v3 != 2)
    {
      v72 = v73;
      v71 = v74;
    }

    if (v3)
    {
      v70 = 0xEE006B636142746ELL;
    }

    if (v3 <= 1u)
    {
      v75 = 0x656D75636F446469;
    }

    else
    {
      v75 = v72;
    }

    if (v3 <= 1u)
    {
      v76 = v70;
    }

    else
    {
      v76 = v71;
    }

    v77 = v76;
    String.append(_:)(*&v75);

    v280 = *(&v285 + 1);
    v284 = v285;
    v78 = v281;
    v79 = v283;
    v80 = v282;
    (*(v281 + 104))(v283, enum case for DIPError.Code.livenessTempFileCreationFailed(_:), v282);
    v279 = "Error saving data to CloudKit";
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_34;
  }

  v237 = v57;
  v284 = v284;
  static SymmetricKeySize.bits128.getter();
  SymmetricKey.init(size:)();
  v58 = v278;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  (*(v273 + 8))(v24, v274);
  v59 = *(&v285 + 1);
  v278 = v285;
  v60 = v275;
  AES.GCM.Nonce.init()();
  AES.GCM.Nonce.withUnsafeBytes<A>(_:)();
  (*(v276 + 8))(v60, v277);
  v61 = *(&v285 + 1);
  v277 = v285;
  v62 = [objc_allocWithZone(NSUUID) init];
  v63 = [v62 UUIDString];

  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;

  sub_10000BA08(v279, *(v279 + 3));
  v67 = dispatch thunk of IdentityKey.getIdentityPublicKeyData()();
  if (v58)
  {

    sub_10000B90C(v277, v61);
    sub_10000B90C(v278, v59);

LABEL_33:
    v79 = v283;
    v80 = v282;
    v78 = v281;
LABEL_34:
    (*(v78 + 104))(v79, enum case for DIPError.Code.internalError(_:), v80);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v81 = v67;
  v82 = v68;

  sub_10000B8B8(v278, v59);
  sub_10000B8B8(v277, v61);
  sub_10000B8B8(v81, v82);
  v276 = v81;
  DIPFileUploadCryptor.Options.init(eraseInputFileData:copyDataForInternalDiagnostics:uuid:key:nonce:publicKey:)();
  v279 = v82;
  static DIPFileUploadCryptor.encryptFileHandle(_:withOptions:)();
  v236 = v61;
  v234 = v64;
  v273 = v59;
  v235 = v66;
  v83 = v265;
  DIPFileUploadCryptor.Result.encryptedFileURL.getter();
  v84 = v259;
  DIPFileUploadCryptor.Result.internalDiagnosticsURL.getter();
  v85 = OBJC_IVAR____TtC8coreidvd34IdentityProofingAssetUploadManager_livenessFlowInternalDiagnosticsVideoURL;
  v86 = v264;
  swift_beginAccess();
  sub_10000BDA8(v84, v86 + v85);
  swift_endAccess();
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v87 = qword_100881E78;
  v88 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v88 + 54);
  sub_1000318FC(&v88[4], &v285);
  v89 = v266;
  v90 = v237;
  os_unfair_lock_unlock(v88 + 54);
  v91 = v286;

  sub_100031918(&v285);
  object = *(v91 + 16);
  os_unfair_lock_lock((object + 24));
  v93 = *(object + 16);
  v94 = __OFADD__(v93, 1);
  v95 = v93 + 1;
  if (v94)
  {
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v275 = 0;
  *(object + 16) = v95;
  os_unfair_lock_unlock((object + 24));

  defaultLogger()();
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = v90;
    v99 = swift_slowAlloc();
    *v99 = 134217984;
    v100 = *(v87 + 16);
    os_unfair_lock_lock(v100 + 54);
    v101 = v275;
    sub_100031B5C(&v100[4], &v285);
    v275 = v101;
    v102 = v100 + 54;
    if (v101)
    {
LABEL_141:
      os_unfair_lock_unlock(v102);
      __break(1u);
      return;
    }

    os_unfair_lock_unlock(v102);
    v103 = v286;

    sub_100031918(&v285);
    v104 = *(v103 + 16);
    os_unfair_lock_lock((v104 + 24));
    v105 = *(v104 + 16);
    os_unfair_lock_unlock((v104 + 24));

    *(v99 + 4) = v105;
    _os_log_impl(&_mh_execute_header, v96, v97, "Current upload count: %ld", v99, 0xCu);

    v89 = v266;
    v83 = v265;
    v90 = v98;
  }

  v106 = v271 + 1;
  v107 = v280;
  v90(v263, v280);
  v108 = v260;
  defaultLogger()();
  v109 = v90;
  v110 = v261;
  v111 = v262;
  (*(v89 + 16))(v261, v83, v262);
  v112 = Logger.logObject.getter();
  LODWORD(v271) = static os_log_type_t.debug.getter();
  v113 = os_log_type_enabled(v112, v271);
  v274 = v106;
  if (!v113)
  {

    v120 = *(v89 + 8);
    v120(v110, v111);
    v109(v108, v107);
    v121 = v111;
    v122 = v109;
    goto LABEL_54;
  }

  v114 = swift_slowAlloc();
  *&v285 = swift_slowAlloc();
  *v114 = 136315394;
  if (v272 <= 1u)
  {
    v118 = 0x656D75636F446469;
    v115 = v261;
    v116 = v260;
    v117 = v271;
    if (!v272)
    {
      v119 = 0xEF746E6F7246746ELL;
      goto LABEL_53;
    }

    v123 = 0x6B636142746ELL;
LABEL_52:
    v119 = v123 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    goto LABEL_53;
  }

  v115 = v261;
  v116 = v260;
  v117 = v271;
  if (v272 == 2)
  {
    v119 = 0xE600000000000000;
    v118 = 0x6569666C6573;
    goto LABEL_53;
  }

  if (v272 != 3)
  {
    v118 = 0x7261696C69787561;
    v123 = 0x6F6564695679;
    goto LABEL_52;
  }

  v118 = 0x7373656E6576696CLL;
  v119 = 0xED00006F65646956;
LABEL_53:
  v124 = sub_100141FE4(v118, v119, &v285);

  *(v114 + 4) = v124;
  *(v114 + 12) = 2080;
  v125 = URL.absoluteString.getter();
  v127 = v126;
  v120 = *(v89 + 8);
  v128 = v115;
  v129 = v262;
  v120(v128, v262);
  v130 = sub_100141FE4(v125, v127, &v285);

  *(v114 + 14) = v130;
  _os_log_impl(&_mh_execute_header, v112, v117, "Successfully persisted assetData to disk for assetType: %s at path: %s", v114, 0x16u);
  swift_arrayDestroy();

  v121 = v129;
  v122 = v237;
  v237(v116, v280);
  v83 = v265;
LABEL_54:
  v131 = v275;
  v132 = Data.init(contentsOf:options:)();
  v134 = v270;
  v135 = v269;
  if (v131)
  {

    sub_10000B90C(v276, v279);
    sub_10000B90C(v277, v236);
    sub_10000B90C(v278, v273);

    v120(v83, v121);
    (*(v257 + 8))(v134, v258);
    (*(v267 + 8))(v135, v268);
    goto LABEL_33;
  }

  v136 = v132;
  v137 = v133;
  v281 = 0;
  v138 = v249;
  defaultLogger()();
  sub_10000B8B8(v136, v137);
  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.debug.getter();
  sub_10000B90C(v136, v137);
  v141 = os_log_type_enabled(v139, v140);
  v142 = v137 >> 62;
  v271 = v136;
  v275 = v137;
  *&v282 = v137 >> 62;
  if (!v141)
  {
    v146 = v136;

    v147 = v274;
    v122(v138, v280);
    v148 = v251;
    v145 = v272;
    goto LABEL_69;
  }

  object = swift_slowAlloc();
  v143 = swift_slowAlloc();
  *&v285 = v143;
  *object = 136446210;
  v144 = &v287;
  if (v142 > 1)
  {
    if (v142 != 2)
    {
      v145 = v272;
      goto LABEL_68;
    }

    v145 = v272;
    v144 = v271[3];
    if (!__OFSUB__(v144, v271[2]))
    {
      goto LABEL_68;
    }

    __break(1u);
LABEL_65:
    v145 = *(v144 - 64);
    if (__OFSUB__(HIDWORD(v271), v271))
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    goto LABEL_68;
  }

  if (v142)
  {
    goto LABEL_65;
  }

  v145 = v272;
LABEL_68:
  v149 = Int.formattedByteSize.getter();
  v151 = sub_100141FE4(v149, v150, &v285);

  *(object + 4) = v151;
  _os_log_impl(&_mh_execute_header, v139, v140, "Read %{public}s from file to upload", object, 0xCu);
  sub_10000BB78(v143);

  v152 = v237;
  v147 = v274;
  v237(v138, v280);
  v122 = v152;
  v148 = v251;
  v146 = v271;
LABEL_69:
  isa = Data._bridgeToObjectiveC()().super.isa;
  countAndFlagsBits = DigestSha256();

  if (countAndFlagsBits)
  {
    v155 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v157 = v156;

    sub_10000B8B8(v155, v157);
    v158 = Data.base64EncodedString(options:)(0);
    countAndFlagsBits = v158._countAndFlagsBits;
    object = v158._object;
    v283 = v157;
    sub_10000B90C(v155, v157);
  }

  else
  {
    object = 0;
    v155 = 0;
    v283 = 0xF000000000000000;
  }

  swift_beginAccess();
  sub_10014C408(countAndFlagsBits, object, v145);
  swift_endAccess();
  if (v282 <= 1)
  {
    if (!v282)
    {
      v159 = BYTE6(v275);
      goto LABEL_81;
    }

LABEL_79:
    if (!__OFSUB__(HIDWORD(v146), v146))
    {
      v159 = HIDWORD(v146) - v146;
      goto LABEL_81;
    }

    goto LABEL_137;
  }

  v159 = 0;
  if (v282 == 2)
  {
    v161 = *(v146 + 16);
    v160 = *(v146 + 24);
    v159 = v160 - v161;
    if (__OFSUB__(v160, v161))
    {
      __break(1u);
      goto LABEL_79;
    }
  }

LABEL_81:
  v162 = v264;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v288 = *(v162 + 32);
  *(v162 + 32) = 0x8000000000000000;
  sub_10016DA1C(v159, v145, isUniquelyReferenced_nonNull_native);
  *(v162 + 32) = v288;
  swift_endAccess();
  defaultLogger()();
  v164 = v283;
  sub_1000363B4(v155, v283);
  v165 = Logger.logObject.getter();
  v166 = static os_log_type_t.debug.getter();
  sub_10000BD94(v155, v164);
  if (!os_log_type_enabled(v165, v166))
  {

    v122(v148, v280);
    goto LABEL_97;
  }

  LODWORD(v263) = v166;
  v167 = swift_slowAlloc();
  *&v285 = swift_slowAlloc();
  *v167 = 136446466;
  if (v145 <= 1u)
  {
    v169 = 0x656D75636F446469;
    v168 = v122;
    if (!v145)
    {
      v170 = 0xEF746E6F7246746ELL;
      goto LABEL_93;
    }

    v171 = 0x6B636142746ELL;
LABEL_92:
    v170 = v171 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    goto LABEL_93;
  }

  v168 = v122;
  if (v145 == 2)
  {
    v170 = 0xE600000000000000;
    v169 = 0x6569666C6573;
    goto LABEL_93;
  }

  if (v145 != 3)
  {
    v169 = 0x7261696C69787561;
    v171 = 0x6F6564695679;
    goto LABEL_92;
  }

  v169 = 0x7373656E6576696CLL;
  v170 = 0xED00006F65646956;
LABEL_93:
  v172 = sub_100141FE4(v169, v170, &v285);

  *(v167 + 4) = v172;
  *(v167 + 12) = 2080;
  if (v283 >> 60 == 15)
  {
    v173 = 0;
    v174 = 0xE000000000000000;
  }

  else
  {
    v175 = Data.base16EncodedString()();
    v173 = v175._countAndFlagsBits;
    v174 = v175._object;
  }

  v176 = sub_100141FE4(v173, v174, &v285);

  *(v167 + 14) = v176;
  _os_log_impl(&_mh_execute_header, v165, v263, "hash for uploaded %{public}s: %s", v167, 0x16u);
  swift_arrayDestroy();

  v147 = v274;
  v122 = v168;
  v168(v251, v280);
  v146 = v271;
LABEL_97:
  v263 = v155;
  defaultLogger()();
  v177 = Logger.logObject.getter();
  v178 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v177, v178))
  {
    v179 = swift_slowAlloc();
    *v179 = 0;
    _os_log_impl(&_mh_execute_header, v177, v178, "--- BEGIN LOGGING ENCRYPTED FILE SIZE----", v179, 2u);
  }

  v180 = v280;
  v122(v256, v280);
  v181 = v250;
  defaultLogger()();
  object = v147;
  v182 = v122;
  v183 = v275;
  sub_10000B8B8(v146, v275);
  v184 = Logger.logObject.getter();
  v185 = static os_log_type_t.debug.getter();
  sub_10000B90C(v146, v183);
  if (!os_log_type_enabled(v184, v185))
  {

    v182(v181, v180);
    v187 = v182;
    goto LABEL_120;
  }

  v186 = swift_slowAlloc();
  *&v285 = swift_slowAlloc();
  *v186 = 136446466;
  if (v145 <= 1u)
  {
    v188 = 0x656D75636F446469;
    v187 = v182;
    object = v185;
    if (!v145)
    {
      v189 = 0xEF746E6F7246746ELL;
      goto LABEL_111;
    }

    v190 = 0x6B636142746ELL;
  }

  else
  {
    v187 = v182;
    object = v185;
    if (v145 == 2)
    {
      v189 = 0xE600000000000000;
      v188 = 0x6569666C6573;
      goto LABEL_111;
    }

    if (v145 == 3)
    {
      v188 = 0x7373656E6576696CLL;
      v189 = 0xED00006F65646956;
      goto LABEL_111;
    }

    v188 = 0x7261696C69787561;
    v190 = 0x6F6564695679;
  }

  v189 = v190 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
LABEL_111:
  v191 = sub_100141FE4(v188, v189, &v285);

  *(v186 + 4) = v191;
  *(v186 + 12) = 2082;
  if (v282 > 1)
  {
    if (v282 != 2 || !__OFSUB__(v271[3], v271[2]))
    {
      goto LABEL_119;
    }

    __break(1u);
  }

  else if (!v282)
  {
    goto LABEL_119;
  }

  if (__OFSUB__(HIDWORD(v271), v271))
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    v102 = (object + 216);
    goto LABEL_141;
  }

LABEL_119:
  v192 = Int.formattedByteSize.getter();
  v194 = sub_100141FE4(v192, v193, &v285);

  *(v186 + 14) = v194;
  _os_log_impl(&_mh_execute_header, v184, object, "%{public}s: %{public}s", v186, 0x16u);
  swift_arrayDestroy();

  v187(v250, v280);
  v146 = v271;
LABEL_120:
  v195 = v248;
  defaultLogger()();
  v196 = v275;
  sub_10000B8B8(v146, v275);
  v197 = Logger.logObject.getter();
  v198 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v197, v198))
  {
    v199 = swift_slowAlloc();
    *v199 = 134349056;
    if (v282 > 1)
    {
      if (v282 != 2)
      {
        v200 = 0;
        goto LABEL_132;
      }

      v202 = *(v146 + 16);
      v201 = *(v146 + 24);
      v94 = __OFSUB__(v201, v202);
      v200 = v201 - v202;
      if (!v94)
      {
        goto LABEL_132;
      }

      __break(1u);
    }

    else if (!v282)
    {
      v200 = BYTE6(v196);
LABEL_132:
      *(v199 + 4) = v200;
      v203 = v199;
      sub_10000B90C(v146, v196);
      _os_log_impl(&_mh_execute_header, v197, v198, "size in bytes: %{public}ld", v203, 0xCu);

      goto LABEL_133;
    }

    LODWORD(v200) = HIDWORD(v146) - v146;
    if (!__OFSUB__(HIDWORD(v146), v146))
    {
      v200 = v200;
      goto LABEL_132;
    }

    goto LABEL_140;
  }

  sub_10000B90C(v146, v196);
LABEL_133:

  v187(v195, v280);
  v204 = v238;
  defaultLogger()();
  v205 = Logger.logObject.getter();
  v206 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v205, v206))
  {
    v207 = swift_slowAlloc();
    *v207 = 0;
    _os_log_impl(&_mh_execute_header, v205, v206, "--- END LOGGING ENCRYPTED FILE SIZE----", v207, 2u);
  }

  v187(v204, v280);
  v208 = v239;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v240 + 8))(v208, v241);
  v282 = xmmword_1006BF650;
  v285 = xmmword_1006BF650;
  sub_10000B8B8(v146, v196);
  sub_10000B960();
  sub_10000B9B4();
  SealedMessage.init(keyID:data:unencryptedData:)();
  Data.base64EncodedString(options:)(0);
  Data.base64EncodedString(options:)(0);
  v209 = v253;
  AEADKey.init(secretKey:nonce:)();
  v210 = v242;
  v211 = *(v242 + 48);
  v212 = v244;
  v213 = v254;
  v214 = v245;
  (*(v244 + 16))();
  v215 = v247;
  (*(v247 + 16))(v213 + v211, v209, v255);
  v216 = v213;
  v217 = v243;
  sub_10000BBC4(v216, v243, &qword_10083CA60, &qword_1006DAD48);
  v218 = *(v210 + 48);
  v219 = sub_100007224(&qword_1008335C0, &qword_1006DA7B0);
  v220 = *(v219 + 48);
  v221 = v246;
  (*(v212 + 32))(v246, v217, v214);
  v222 = v217 + v218;
  v223 = v255;
  (*(v215 + 32))(v221 + v220, v222, v255);
  (*(*(v219 - 8) + 56))(v221, 0, 1, v219);
  swift_beginAccess();
  LOBYTE(v217) = v272;
  sub_10014C4DC(v221, v272);
  swift_endAccess();

  sub_10000BD94(v263, v283);
  sub_10000B90C(v276, v279);
  sub_10000B90C(v277, v236);
  sub_10000B90C(v278, v273);
  sub_10000BE18(v254, &qword_10083CA60, &qword_1006DAD48);
  (*(v215 + 8))(v253, v223);
  (*(v212 + 8))(v252, v214);
  (*(v257 + 8))(v270, v258);
  (*(v267 + 8))(v269, v268);
  v224 = v266;
  v225 = v259;
  v226 = v262;
  (*(v266 + 32))(v259, v265, v262);
  v227 = *(v224 + 56);
  v227(v225, 0, 1, v226);
  type metadata accessor for UploadAsset(0);
  v228 = swift_allocObject();
  *(v228 + 32) = v282;
  v227(v228 + OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL, 1, 1, v226);
  *(v228 + OBJC_IVAR____TtC8coreidvd11UploadAsset_systemData) = v282;
  v229 = v235;
  *(v228 + 16) = v234;
  *(v228 + 24) = v229;
  v230 = *(v228 + 32);
  v231 = *(v228 + 40);
  v232 = v275;
  *(v228 + 32) = v271;
  *(v228 + 40) = v232;
  sub_10000BD94(v230, v231);
  *(v228 + 48) = v217;
  v233 = OBJC_IVAR____TtC8coreidvd11UploadAsset_assetFileURL;
  swift_beginAccess();
  sub_10000BDA8(v225, v228 + v233);
  swift_endAccess();
}

uint64_t sub_10018689C(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = v4;
  *(v5 + 201) = a3;
  *(v5 + 200) = a2;
  *(v5 + 56) = a1;
  v6 = type metadata accessor for DIPError.Code();
  *(v5 + 80) = v6;
  *(v5 + 88) = *(v6 - 8);
  *(v5 + 96) = swift_task_alloc();
  v7 = type metadata accessor for DIPError();
  *(v5 + 104) = v7;
  *(v5 + 112) = *(v7 - 8);
  *(v5 + 120) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v5 + 128) = v8;
  *(v5 + 136) = *(v8 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_100186A44, 0, 0);
}

uint64_t sub_100186A44()
{
  v27 = v0;
  v1 = *(v0 + 56);
  v2 = v1 >> 62;
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_29:
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v23 = os_log_type_enabled(v3, v4);
    v8 = *(v0 + 136);
    v6 = *(v0 + 144);
    v7 = *(v0 + 128);
    if (v23)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "No assets to upload, exiting";
      goto LABEL_31;
    }

LABEL_32:

    (*(v8 + 8))(v6, v7);

    v24 = *(v0 + 8);

    return v24();
  }

LABEL_28:
  if (_CocoaArrayWrapper.endIndex.getter() < 1)
  {
    goto LABEL_29;
  }

LABEL_3:
  if (qword_100832B50 != -1)
  {
    swift_once();
  }

  if (*(v0 + 201) == 1)
  {
    defaultLogger()();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 168);
    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "User has opted out of uploading data on expensive network";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v3, v4, v10, v9, 2u);

      goto LABEL_32;
    }

    goto LABEL_32;
  }

  v11 = qword_100881E48;
  v12 = *(v0 + 64);
  if (v12)
  {
    dispatch_group_enter(v12);
  }

  if (!v2)
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = *(v0 + 56);
    if (!v2)
    {
      goto LABEL_24;
    }

LABEL_14:
    v14 = 0;
    v15 = v1 & 0xC000000000000001;
    v16 = v1 & 0xFFFFFFFFFFFFFF8;
    v17 = v13 + 32;
    while (1)
    {
      if (v15)
      {
        v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_22:
          __break(1u);
LABEL_23:
          v13 = *(v0 + 56);
          goto LABEL_24;
        }
      }

      else
      {
        if (v14 >= *(v16 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v1 = *(v17 + 8 * v14);

        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_22;
        }
      }

      v19 = *(v0 + 200);
      v26 = v1;
      sub_10018736C(&v26, v19, 0);

      ++v14;
      if (v18 == v2)
      {
        goto LABEL_23;
      }
    }
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  v13 = *(v0 + 56);
  if (v2)
  {
    goto LABEL_14;
  }

LABEL_24:
  v20 = *(v0 + 200);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v21 = swift_task_alloc();
  *(v0 + 176) = v21;
  *(v21 + 16) = v11;
  *(v21 + 24) = v13;
  *(v21 + 32) = 1;
  *(v21 + 33) = v20;
  *(v21 + 40) = v0 + 16;
  v22 = swift_task_alloc();
  *(v0 + 184) = v22;
  *v22 = v0;
  v22[1] = sub_100186E28;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v22, 0, 0, 0xD00000000000003FLL, 0x80000001006FCEC0, sub_1000492B4, v21, &type metadata for () + 8);
}

uint64_t sub_100186E28()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1001870AC;
  }

  else
  {

    v2 = sub_100186F44;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100186F44()
{
  sub_10000BE18(v0 + 16, &qword_100834128, &unk_1006DDA60);
  defaultLogger()();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Upload has successfully completed!", v3, 2u);
  }

  v4 = *(v0 + 160);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 64);

  (*(v6 + 8))(v4, v5);
  if (v7)
  {
    dispatch_group_leave(*(v0 + 64));
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001870AC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);
  v12 = *(v0 + 120);
  v13 = *(v0 + 112);
  v14 = *(v0 + 136);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v15 = *(v0 + 72);
  v16 = *(v0 + 128);
  v17 = *(v0 + 64);

  sub_10000BE18(v0 + 16, &qword_100834128, &unk_1006DDA60);
  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v6);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  v7 = *(v13 + 16);
  v7(v8, v12, v3);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v14 + 8))(v2, v16);

  *(v15 + 40) = v1;

  swift_allocError();
  v7(v9, v12, v3);
  swift_willThrow();

  (*(v13 + 8))(v12, v3);
  if (v17)
  {
    dispatch_group_leave(*(v0 + 64));
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10018736C(uint64_t *a1, int a2, int a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  defaultLogger()();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v29 = a2;
    v30 = a3;
    v31 = v3;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446722;
    v16 = 0xEF746E6F7246746ELL;
    v17 = *(v11 + 48);
    v18 = 0xED00006F65646956;
    v19 = 0x7373656E6576696CLL;
    v20 = 0xEE006F6564695679;
    v21 = 0x7261696C69787561;
    if (v17 != 4)
    {
      v21 = 0x5464696C61766E69;
      v20 = 0xEB00000000657079;
    }

    if (v17 != 3)
    {
      v19 = v21;
      v18 = v20;
    }

    v22 = 0xEE006B636142746ELL;
    v23 = 0x6569666C6573;
    if (v17 == 1)
    {
      v23 = 0x656D75636F446469;
    }

    else
    {
      v22 = 0xE600000000000000;
    }

    if (*(v11 + 48))
    {
      v24 = v23;
    }

    else
    {
      v24 = 0x656D75636F446469;
    }

    if (*(v11 + 48))
    {
      v16 = v22;
    }

    if (*(v11 + 48) <= 2u)
    {
      v25 = v24;
    }

    else
    {
      v25 = v19;
    }

    if (*(v11 + 48) <= 2u)
    {
      v26 = v16;
    }

    else
    {
      v26 = v18;
    }

    v27 = sub_100141FE4(v25, v26, &v32);

    *(v14 + 4) = v27;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v29 & 1;
    *(v14 + 18) = 1024;
    *(v14 + 20) = v30 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting to upload asset of type %{public}s with options allowsCellularAccess: %{BOOL}d and shouldScheduleUploads: %{BOOL}d", v14, 0x18u);
    sub_10000BB78(v15);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_100187658()
{

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingAssetUploadManager_livenessFlowInternalDiagnosticsVideoURL, &unk_100844540, &unk_1006BFBC0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingAssetUploadManager(uint64_t a1)
{
  result = qword_10083C910;
  if (!qword_10083C910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100187740(uint64_t a1)
{
  sub_10002A514(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001877EC()
{
  v0 = sub_10018782C();
  type metadata accessor for IdentityProofingBackgroundActivityManager();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_100882238 = result;
  return result;
}

void *sub_10018782C()
{
  v0 = type metadata accessor for Locale();
  v38 = *(v0 - 8);
  v39 = v0;
  __chkstk_darwin(v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IdentityProofingBackgroundActivityScheduler();
  v36 = swift_allocObject();
  *(v36 + 16) = 3600;
  type metadata accessor for IdentityProofingDeviceMigrationManagerFactory();
  v3 = swift_allocObject();
  type metadata accessor for IdentityProofingWorkflowProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  type metadata accessor for IdentityProofingUploadsHelper();
  v5 = swift_allocObject();
  type metadata accessor for NetworkMonitor();
  *(v5 + 16) = static NetworkMonitor.shared.getter();
  *(v5 + 24) = v4;
  v35 = v5;
  type metadata accessor for BackgroundActivityManager();
  static BackgroundActivityManager.shared.getter();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v37 = v2;
  static Locale.current.getter();
  v6 = swift_allocObject();
  v34 = swift_allocObject();
  *(v34 + 16) = v6;
  type metadata accessor for IdentityProofingAttributeConfigHelper();
  swift_allocObject();
  v7 = IdentityProofingAttributeConfigHelper.init()();
  type metadata accessor for IdentityProofingAssetsProvider();
  v33 = swift_allocObject();
  *(v33 + 16) = v7;
  if (qword_100832C50 != -1)
  {
    swift_once();
  }

  v31 = qword_100882310;
  type metadata accessor for IdentityProofingPendingActionsFlowFactory();
  v32 = swift_allocObject();
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  type metadata accessor for IdentityProofingConfigProvider();
  v10 = swift_allocObject();

  v11 = sub_100188160();
  type metadata accessor for IdentityProofingDatabaseProvider();
  v12 = swift_allocObject();
  v13 = [objc_allocWithZone(PKPaymentService) init];
  v41 = sub_10001F8D4(0, &unk_1008458A0, PKPaymentService_ptr);
  v42 = &off_10080C410;
  *&v40 = v13;
  type metadata accessor for IdentityPendingProvisioningManager();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  sub_10001F358(&v40, v14 + 24);
  type metadata accessor for PassManager();
  v30 = swift_allocObject();
  v29 = sub_100187DB4();
  v15 = swift_allocObject();
  v41 = &type metadata for IdentityProofingConnectToWifiAlertProvider;
  v42 = &off_10080D7A0;
  v16 = swift_allocObject();
  *&v40 = v16;
  v16[2] = v9;
  v16[3] = v10;
  v16[4] = v11;
  v16[5] = 0x4024000000000000;
  type metadata accessor for IdentityProofingBackgroundActivityProvider(0);
  v17 = swift_allocObject();
  v18 = sub_10001F370(&v40, &type metadata for IdentityProofingConnectToWifiAlertProvider);
  __chkstk_darwin(v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = *(v20 + 2);
  v23 = *(v20 + 3);
  v24 = (v17 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_connectToWifiAlertProvider);
  v24[3] = &type metadata for IdentityProofingConnectToWifiAlertProvider;
  v24[4] = &off_10080D7A0;
  v25 = swift_allocObject();
  *v24 = v25;
  *(v25 + 16) = *v20;
  *(v25 + 32) = v22;
  *(v25 + 40) = v23;
  v26 = v36;
  v17[2] = &off_1007FB220;
  v17[3] = v26;
  v17[4] = v35;
  sub_10001F358(v44, (v17 + 5));
  sub_10001F358(&v43, (v17 + 10));
  (*(v38 + 32))(v17 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_locale, v37, v39);
  *(v17 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_workflowProvider) = v34;
  *(v17 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_assetProvider) = v33;
  *(v17 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_proofingUpdateManager) = v31;
  *(v17 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_pendingActionsFlowFactory) = v32;
  *(v17 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_pendingProvisioning) = v14;
  *(v17 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_passManager) = v30;
  *(v17 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_cleanupProvider) = v29;
  *(v17 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_databaseProvider) = v15;
  sub_10000BB78(&v40);
  return v17;
}

uint64_t sub_100187DB4()
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

uint64_t sub_100188010()
{
  v1 = *(v0 + 16);
  sub_100020260(v1 + 40, v3);
  sub_10000BA08(v3, v4);
  swift_retain_n();
  dispatch thunk of BackgroundActivityManaging.registerActivity(identifier:activity:)();

  sub_10000BB78(v3);
  sub_100020260(v1 + 40, v3);
  sub_10000BA08(v3, v4);

  dispatch thunk of BackgroundActivityManaging.registerActivity(identifier:activity:)();

  return sub_10000BB78(v3);
}

uint64_t sub_100188160()
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v0 = [objc_allocWithZone(PKPaymentService) init];
  v16[3] = sub_10001F8D4(0, &unk_1008458A0, PKPaymentService_ptr);
  v16[4] = &off_10080C410;
  v16[0] = v0;
  type metadata accessor for IdentityProofingConfigProvider();
  v1 = swift_allocObject();
  type metadata accessor for IdentityProofingTextReplacementProvider();
  swift_allocObject();
  v2 = IdentityProofingTextReplacementProvider.init()();
  type metadata accessor for IdentityProofingDeviceMigrationManagerFactory();
  v3 = swift_allocObject();
  type metadata accessor for IdentityProofingWorkflowProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  type metadata accessor for IdentityProofingUserNotificationProvider(0);
  v5 = swift_allocObject();
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0;
  v6 = OBJC_IVAR____TtC8coreidvd40IdentityProofingUserNotificationProvider_staticWorkflow;
  v7 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  sub_100020260(v16, v5 + 16);
  sub_1001883F8(v17, &v11);
  if (!v12)
  {
    if (qword_1008824A8 && (v8 = *(qword_1008824A8 + 152)) != 0)
    {
      *(&v14 + 1) = type metadata accessor for IdentityWatchSessionManagementListener(0);
      v15 = &off_10080C438;
      *&v13 = v8;
      v9 = v8;
      sub_100188468(v17);
      sub_10000BB78(v16);
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_100188468(v17);
      sub_10000BB78(v16);
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    sub_100188468(&v11);
    goto LABEL_9;
  }

  sub_100188468(v17);
  sub_10000BB78(v16);
  sub_10001F358(&v11, &v13);
LABEL_9:
  swift_beginAccess();
  sub_1001884D0(&v13, v5 + 56);
  swift_endAccess();
  *(v5 + 96) = v1;
  *(v5 + 104) = v2;
  *(v5 + 112) = v4;
  return v5;
}

uint64_t sub_1001883B0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001883F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100845E80, &qword_1006DAD90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100188468(uint64_t a1)
{
  v2 = sub_100007224(&unk_100845E80, &qword_1006DAD90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001884D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100845E80, &qword_1006DAD90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100188540(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_10027DD00(a1, a2);
}

uint64_t sub_1001885E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027B9C;

  return sub_10027DD00(a1, a2);
}

void sub_100188690(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083CC58, &qword_1006DAE48);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  if (*(a2 + 40))
  {
    v8 = *(a2 + 24);

    v9 = String._bridgeToObjectiveC()();

    (*(v5 + 16))(v7, a1, v4);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    (*(v5 + 32))(v11 + v10, v7, v4);
    aBlock[4] = sub_100189A1C;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100188918;
    aBlock[3] = &unk_10080A368;
    v12 = _Block_copy(aBlock);

    [v8 isAccountKeySigningKeyAvailableForAccountKeyIdentifier:v9 completion:v12];
    _Block_release(v12);
  }

  else
  {
    LOBYTE(aBlock[0]) = 0;
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100188894(char a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100007224(&qword_10083CC58, &qword_1006DAE48);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100007224(&qword_10083CC58, &qword_1006DAE48);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_100188918(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100188990()
{
  v1[3] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100188AAC, 0, 0);
}

uint64_t sub_100188AAC(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to create or retrieve Account key signing key", v4, 2u);
  }

  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];
  v8 = v1[3];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 40);
  v1[10] = v9;
  if (v9)
  {
    v10 = v1[3];
    v11 = *(v10 + 32);
    v12 = swift_task_alloc();
    v1[11] = v12;
    v12[2] = v10;
    v12[3] = v11;
    v12[4] = v9;

    v13 = swift_task_alloc();
    v1[12] = v13;
    v14 = sub_100189ACC();
    *v13 = v1;
    v13[1] = sub_100188DA0;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 2, 0, 0, 0xD00000000000001ELL, 0x8000000100703AD0, sub_100189AC0, v12, v14);
  }

  else
  {
    (*(v1[5] + 104))(v1[6], enum case for DIPError.Code.unableToCreateAccountKeySigningKeyLabel(_:), v1[4]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v15 = v1[1];

    return v15();
  }
}

uint64_t sub_100188DA0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100188F3C;
  }

  else
  {

    v2 = sub_100188EC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100188EC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100188F3C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100188FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083CC68, &unk_1006DAE50);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 24);
  v9 = String._bridgeToObjectiveC()();
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_100189BB0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001335C;
  aBlock[3] = &unk_10080A3B8;
  v12 = _Block_copy(aBlock);

  [v8 retrieveAccountKeySigningKeyForAccountKeyIdentifier:v9 completion:v12];
  _Block_release(v12);
}

uint64_t sub_100189190(void *a1, uint64_t a2, uint64_t a3)
{
  v30[1] = a3;
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DIPError();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  if (a2)
  {
    v18 = v15;
    swift_errorRetain();
    defaultLogger()();
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = sub_100141FE4(v23, v24, &v31);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Received an error while retrieving the account key signing key %s", v21, 0xCu);
      sub_10000BB78(v22);
    }

    (*(v14 + 8))(v17, v18);
    v32 = 1;
    v31 = a2;
    sub_100007224(&qword_10083CC68, &unk_1006DAE50);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a1)
  {
    v31 = a1;
    v26 = a1;
    sub_100007224(&qword_10083CC68, &unk_1006DAE50);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    (*(v6 + 104))(v8, enum case for DIPError.Code.unableToRetrieveAccountKeySigningKey(_:), v5);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v32 = 1;
    sub_100037214();
    v27 = swift_allocError();
    (*(v10 + 16))(v28, v12, v9);
    v31 = v27;
    sub_100007224(&qword_10083CC68, &unk_1006DAE50);
    CheckedContinuation.resume(throwing:)();
    (*(v10 + 8))(v12, v9);
  }

  return sub_1001895F4(&v32);
}

uint64_t sub_1001895F4(_BYTE *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Did encounter an error while retrieving the account key signing key for a given accountKeyIdentifier ", v9, 2u);
    }

    (*(v3 + 8))(v6, v2);
    type metadata accessor for DaemonAnalytics();
    return static DaemonAnalytics.sendAccountKeySigningKeyUnavailableEvent()();
  }

  return result;
}

uint64_t sub_100189748()
{

  sub_10000BB78((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1001897DC()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1001898B4;
  v2 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 40, 0, 0, 0xD00000000000001FLL, 0x8000000100703A20, sub_100189A00, v2, &type metadata for Bool);
}

uint64_t sub_1001898B4()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_1001899E4;
  }

  else
  {
    v2 = sub_1001899C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100189A1C(char a1, uint64_t a2)
{
  sub_100007224(&qword_10083CC58, &qword_1006DAE48);

  return sub_100188894(a1, a2);
}

uint64_t sub_100189AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100189ACC()
{
  result = qword_10083CC60;
  if (!qword_10083CC60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10083CC60);
  }

  return result;
}

uint64_t sub_100189B2C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100007224(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100189BB0(void *a1, uint64_t a2)
{
  v5 = *(sub_100007224(&qword_10083CC68, &unk_1006DAE50) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100189190(a1, a2, v6);
}

void *sub_100189C68(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  type metadata accessor for IdentityProofingDeviceMigrationManager();
  v4 = swift_allocObject();
  v4[2] = 0;
  if (qword_100832C20 != -1)
  {
    swift_once();
  }

  v5 = *(qword_100882228 + 16);
  v4[3] = v5;
  v4[4] = a1;
  v4[5] = a2;
  sub_10001F358(&v8, (v4 + 6));
  v6 = v5;

  return v4;
}

uint64_t sub_100189D38(uint64_t a1, uint64_t a2)
{
  v3[54] = a2;
  v3[55] = v2;
  v3[53] = a1;
  v4 = type metadata accessor for IdentityProofingDisplayMessage();
  v3[56] = v4;
  v3[57] = *(v4 - 8);
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  sub_100007224(&qword_10083BD28, &qword_1006DA240);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v3[67] = swift_task_alloc();
  v5 = type metadata accessor for IdentityProofingAttributeConfiguration();
  v3[68] = v5;
  v3[69] = *(v5 - 8);
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  type metadata accessor for IdentityProofingStaticWorkflow(0);
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v3[78] = v6;
  v3[79] = *(v6 - 8);
  v3[80] = swift_task_alloc();
  v7 = type metadata accessor for IdentityDocumentType.Category();
  v3[81] = v7;
  v3[82] = *(v7 - 8);
  v3[83] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[84] = v8;
  v3[85] = *(v8 - 8);
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();

  return _swift_task_switch(sub_10018A0F8, 0, 0);
}

uint64_t sub_10018A0F8(uint64_t a1)
{
  v128 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "STARTING prepareForProofingDisplay", v4, 2u);
  }

  v5 = *(v1 + 744);
  v6 = *(v1 + 680);
  v7 = *(v1 + 672);
  v8 = *(v1 + 432);
  v9 = *(v1 + 440);
  v10 = *(v1 + 424);

  v11 = *(v6 + 8);
  *(v1 + 752) = v11;
  v11(v5, v7);
  v12 = *(v9 + 16);
  v123 = v9;
  *(v9 + 16) = v10;
  v13 = v10;

  if (v8 == 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  defaultLogger()();
  v15 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v1 + 736);
  v20 = *(v1 + 672);
  v124 = v14;
  if (v18)
  {
    v21 = swift_slowAlloc();
    *&v126 = swift_slowAlloc();
    *v21 = 136446466;
    v22 = IdentityTarget.debugDescription.getter();
    v24 = sub_100141FE4(v22, v23, &v126);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    IdentityProofingConfiguration.documentType.getter();
    v25 = IdentityDocumentType.description.getter();
    v27 = sub_100141FE4(v25, v26, &v126);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "The proofing target is %{public}s documentType: %s", v21, 0x16u);
    swift_arrayDestroy();

    v11(v19, v20);
  }

  else
  {

    v11(v19, v20);
  }

  v28 = IdentityProofingConfiguration.credentialIdentifier.getter();
  if (!v29)
  {
    goto LABEL_16;
  }

  v30 = v28;
  v31 = v29;

  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Proofing has been invoked with a credential identifier, This is the XMAS watch scenario", v35, 2u);
    }

    v36 = *(v1 + 728);
    v37 = *(v1 + 672);

    v11(v36, v37);
    v38 = 1;
  }

  else
  {
LABEL_16:
    v38 = 0;
  }

  *(v1 + 1544) = v38;
  v39 = *(v1 + 664);
  v40 = *(v1 + 656);
  v41 = *(v1 + 648);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v42 = (*(v40 + 88))(v39, v41);
  if (v42 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    IdentityProofingConfiguration.state.getter();
    if (!v43)
    {
      v55 = *(v1 + 640);
      v56 = *(v1 + 632);
      v57 = *(v1 + 624);

      sub_1001AC570();

      (*(v56 + 104))(v55, enum case for DIPError.Code.idStateUnavailable(_:), v57);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_29;
    }

    v122 = v38;
    v125 = v11;
    v44 = String.lowercased()();
    countAndFlagsBits = v44._countAndFlagsBits;
    object = v44._object;
  }

  else
  {
    if (v42 != enum case for IdentityDocumentType.Category.passport(_:))
    {
      v52 = *(v1 + 664);
      v53 = *(v1 + 656);
      v54 = *(v1 + 648);
      (*(*(v1 + 632) + 104))(*(v1 + 640), enum case for DIPError.Code.idTypeUnavailable(_:), *(v1 + 624));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v53 + 8))(v52, v54);
LABEL_30:

      v66 = *(v1 + 8);

      return v66();
    }

    v125 = v11;
    v47 = IdentityProofingConfiguration.country.getter();
    if (!v48)
    {
      v63 = *(v1 + 640);
      v64 = *(v1 + 632);
      v65 = *(v1 + 624);

      sub_1001AC570();

      (*(v64 + 104))(v63, enum case for DIPError.Code.idCountryUnavailable(_:), v65);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_29;
    }

    countAndFlagsBits = v47;
    object = v48;
    v122 = v38;
  }

  v49 = IdentityProofingConfiguration.documentType.getter();
  sub_1002E0DD4(countAndFlagsBits, object, v124, 0, 0, v49, &v126);
  v50 = v126;
  *(v1 + 760) = v126;
  v51 = v127;
  *(v1 + 776) = v127;

  v121 = v51;

  if (*(&v50 + 1))
  {
    v120 = *(v1 + 440);

    sub_1001AC570();

    v58 = sub_1002E11B8(v50, *(&v50 + 1));
    v60 = v59;

    v119 = v58;
    *(v1 + 784) = v58;
    *(v1 + 792) = v60;

    v61 = IdentityProofingConfiguration.documentType.getter();
    *(v1 + 800) = sub_1002E11E0(v50, *(&v50 + 1), v121, 0, v61, countAndFlagsBits, object);

    *(v1 + 808) = sub_1001A0380();
    *(v1 + 816) = v62;
    v75 = IdentityProofingActionStatus.rawValue.getter();
    if (v75 == IdentityProofingActionStatus.rawValue.getter())
    {
      *(v1 + 824) = *(*(v1 + 440) + 120);

      v76 = swift_task_alloc();
      *(v1 + 832) = v76;
      *v76 = v1;
      v76[1] = sub_10018B538;

      return sub_100180164(v50, *(&v50 + 1), v124);
    }

    v77 = IdentityProofingActionStatus.rawValue.getter();
    if (v77 == IdentityProofingActionStatus.rawValue.getter())
    {

      *(v1 + 984) = *(v120 + 152);

      v78 = swift_task_alloc();
      *(v1 + 992) = v78;
      *v78 = v1;
      v78[1] = sub_10018D22C;
      v79 = *(v1 + 424);

      return sub_1001B20D0(v79);
    }

    v80 = IdentityProofingActionStatus.rawValue.getter();
    if (v80 == IdentityProofingActionStatus.rawValue.getter())
    {
      v81 = IdentityProofingConfiguration.documentType.getter();
      v82 = swift_task_alloc();
      *(v1 + 1112) = v82;
      *v82 = v1;
      v82[1] = sub_10018E888;

      return sub_1001984EC(v81, v50, *(&v50 + 1), v121);
    }

    v83 = IdentityProofingActionStatus.rawValue.getter();
    if (v83 == IdentityProofingActionStatus.rawValue.getter() || (v84 = IdentityProofingActionStatus.rawValue.getter(), v84 == IdentityProofingActionStatus.rawValue.getter()))
    {
      v85 = *(v1 + 440);

      *(v1 + 1248) = *(v85 + 40);

      v86 = swift_task_alloc();
      *(v1 + 1256) = v86;
      *v86 = v1;
      v86[1] = sub_100190174;
      v87 = *(v1 + 424);

      return sub_100270B00(v1 + 120, v87, v50, *(&v50 + 1), v121, v119, v60);
    }

    v88 = IdentityProofingActionStatus.rawValue.getter();
    if (v88 == IdentityProofingActionStatus.rawValue.getter())
    {

      v89 = *(v123 + 16);
      *(v1 + 1280) = v89;
      if (v89)
      {
        *(v1 + 1288) = *(*(v1 + 440) + 48);
        v90 = v89;

        v91 = sub_1001A0380();
        *(v1 + 1296) = v92;
        v113 = v91;
        v114 = v92;
        v115 = swift_task_alloc();
        *(v1 + 1304) = v115;
        *v115 = v1;
        v115[1] = sub_100190788;
        v131 = v90;
        v130 = v122;

        return sub_1002C1490(v1 + 24, v50, *(&v50 + 1), v121, v113, v114);
      }

      v106 = *(v1 + 640);
      v107 = *(v1 + 632);
      v108 = *(v1 + 624);

      (*(v107 + 104))(v106, enum case for DIPError.Code.proofingConfigurationUnavailable(_:), v108);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_29;
    }

    v93 = IdentityProofingActionStatus.rawValue.getter();
    if (v93 == IdentityProofingActionStatus.rawValue.getter())
    {
      v94 = *(v1 + 528);
      v95 = *(v1 + 448);
      v96 = *(v1 + 456);
      v97 = *(v96 + 56);
      *(v1 + 1328) = v97;
      *(v1 + 1336) = (v96 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v97(v94, 1, 1, v95);
      v98 = swift_task_alloc();
      *(v1 + 1344) = v98;
      *v98 = v1;
      v98[1] = sub_100190D88;
      v99 = *(v1 + 520);
LABEL_62:

      return sub_100199A40(v99, v50, *(&v50 + 1), v121);
    }

    v100 = IdentityProofingActionStatus.rawValue.getter();
    if (v100 == IdentityProofingActionStatus.rawValue.getter())
    {
      v101 = *(v1 + 496);
      v102 = *(v1 + 448);
      v103 = *(v1 + 456);
      v104 = *(v103 + 56);
      *(v1 + 1376) = v104;
      *(v1 + 1384) = (v103 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v104(v101, 1, 1, v102);
      v105 = swift_task_alloc();
      *(v1 + 1392) = v105;
      *v105 = v1;
      v105[1] = sub_100191F54;
      v99 = *(v1 + 488);
      goto LABEL_62;
    }

    v109 = IdentityProofingActionStatus.rawValue.getter();
    if (v109 == IdentityProofingActionStatus.rawValue.getter())
    {
      *(v1 + 1440) = *(v120 + 152);

      v110 = IdentityProofingConfiguration.documentType.getter();
      v111 = swift_task_alloc();
      *(v1 + 1448) = v111;
      *v111 = v1;
      v111[1] = sub_10019334C;
      v112 = *(v1 + 592);

      return sub_1001AA1E4(v112, v110);
    }

    v116 = *(v1 + 640);
    v117 = *(v1 + 632);
    v118 = *(v1 + 624);

    (*(v117 + 104))(v116, enum case for DIPError.Code.serverUnavailable(_:), v118);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_29:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_30;
  }

  defaultLogger()();
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&_mh_execute_header, v68, v69, "No proofing attempt made. Check if there are other proofing sessions", v70, 2u);
  }

  v71 = *(v1 + 688);
  v72 = *(v1 + 672);

  v125(v71, v72);
  v73 = swift_task_alloc();
  *(v1 + 1536) = v73;
  *v73 = v1;
  v73[1] = sub_10019431C;
  v74 = *(v1 + 424);

  return sub_100195E94(v74, v122);
}

uint64_t sub_10018B538(char a1)
{
  v4 = *v2;
  *(*v2 + 840) = v1;

  if (v1)
  {
    v5 = sub_10019479C;
  }

  else
  {

    *(v4 + 1545) = a1 & 1;
    v5 = sub_10018B678;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10018B678()
{
  if (*(v0 + 1545) == 1)
  {
    *(v0 + 848) = *(*(v0 + 440) + 152);

    v1 = swift_task_alloc();
    *(v0 + 856) = v1;
    *v1 = v0;
    v1[1] = sub_10018B7B0;
    v2 = *(v0 + 424);

    return sub_1001B20D0(v2);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 976) = v4;
    *v4 = v0;
    v4[1] = sub_10018CD74;
    v5 = *(v0 + 816);
    v6 = *(v0 + 808);
    v7 = *(v0 + 792);
    v8 = *(v0 + 784);
    v9 = *(v0 + 424);

    return sub_100194F7C(v9, v6, v5, v8, v7);
  }
}

uint64_t sub_10018B7B0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v4 + 864) = a1;
  *(v4 + 872) = a2;

  if (v2)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_10018BAC8, 0, 0);
  }
}

uint64_t sub_10018BAC8()
{
  v0[110] = *(v0[55] + 152);

  v1 = IdentityProofingConfiguration.documentType.getter();
  v2 = swift_task_alloc();
  v0[111] = v2;
  *v2 = v0;
  v2[1] = sub_10018BB84;
  v3 = v0[77];

  return sub_1001AA1E4(v3, v1);
}

uint64_t sub_10018BB84()
{
  *(*v1 + 896) = v0;

  if (v0)
  {

    v2 = sub_10018BF88;
  }

  else
  {

    v2 = sub_10018BCE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018BCE4()
{
  v1 = v0[109];
  v2 = v0[108];
  v0[113] = *(v0[55] + 144);
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  inited = swift_initStackObject();
  v0[114] = inited;
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v4 = swift_task_alloc();
  v0[115] = v4;
  *v4 = v0;
  v4[1] = sub_10018BDDC;
  v5 = v0[102];
  v6 = v0[101];

  return sub_10026F6BC(v6, v5, inited);
}

uint64_t sub_10018BDDC(uint64_t a1)
{
  v4 = *v2;
  v4[116] = v1;

  v5 = v4[114];

  if (v1)
  {

    swift_setDeallocating();
    sub_10004D860(v5 + 32);
    v6 = sub_10018C3E8;
  }

  else
  {
    v4[117] = a1;
    swift_setDeallocating();
    sub_10004D860(v5 + 32);
    v6 = sub_10018C174;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10018BF88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10018C174()
{
  v1 = v0[77];
  v2 = v0[55];
  v3 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  v0[118] = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  v0[119] = *(v2 + 136);
  v4 = *(v1 + 64);

  v5 = IdentityProofingConfiguration.documentType.getter();
  v6 = swift_task_alloc();
  v0[120] = v6;
  *v6 = v0;
  v6[1] = sub_10018C2CC;
  v7 = v0[73];

  return sub_1002A77FC(v7, v4, v5);
}

uint64_t sub_10018C2CC()
{
  *(*v1 + 968) = v0;

  if (v0)
  {

    v2 = sub_10018CB6C;
  }

  else
  {
    v2 = sub_10018C5DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018C3E8()
{
  sub_1001A1FAC(*(v0 + 616));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10018C5DC()
{
  v1 = *(v0 + 968);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A2008(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration, &protocol conformance descriptor for IdentityProofingAttributeConfiguration);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    v4 = *(v0 + 584);
    v5 = *(v0 + 552);
    v6 = *(v0 + 544);

    (*(v5 + 8))(v4, v6);
    v7 = *(v0 + 616);

    sub_1001A1FAC(v7);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 944);
    v20 = *(v0 + 616);
    v11 = *(v0 + 584);
    v12 = *(v0 + 552);
    v13 = *(v0 + 544);
    v14 = v2;
    v15 = v3;

    (*(v12 + 8))(v11, v13);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1006DAE90;
    *(v16 + 32) = v10;
    v17 = v10;
    sub_10000B8B8(v14, v15);
    IdentityProofingConfiguration.documentType.getter();
    v18 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v21 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

    sub_10000B90C(v14, v15);
    sub_1001A1FAC(v20);

    v19 = *(v0 + 8);

    return v19(v21);
  }
}

uint64_t sub_10018CB6C()
{

  v1 = *(v0 + 616);

  sub_1001A1FAC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10018CD74(uint64_t a1)
{
  v7 = *v1;

  v3 = *(v7 + 8);
  if (!v6)
  {
    v2 = a1;
  }

  return v3(v2);
}

uint64_t sub_10018D22C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v4 + 1000) = a1;
  *(v4 + 1008) = a2;

  if (v2)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_10018D548, 0, 0);
  }
}

uint64_t sub_10018D548()
{
  v0[127] = *(v0[55] + 152);

  v1 = IdentityProofingConfiguration.documentType.getter();
  v2 = swift_task_alloc();
  v0[128] = v2;
  *v2 = v0;
  v2[1] = sub_10018D604;
  v3 = v0[76];

  return sub_1001AA1E4(v3, v1);
}

uint64_t sub_10018D604()
{
  *(*v1 + 1032) = v0;

  if (v0)
  {

    v2 = sub_10018DA08;
  }

  else
  {

    v2 = sub_10018D764;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018D764()
{
  v1 = v0[126];
  v2 = v0[125];
  v0[130] = *(v0[55] + 144);
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  inited = swift_initStackObject();
  v0[131] = inited;
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v4 = swift_task_alloc();
  v0[132] = v4;
  *v4 = v0;
  v4[1] = sub_10018D85C;
  v5 = v0[102];
  v6 = v0[101];

  return sub_10026F6BC(v6, v5, inited);
}

uint64_t sub_10018D85C(uint64_t a1)
{
  v4 = *v2;
  v4[133] = v1;

  v5 = v4[131];

  if (v1)
  {

    swift_setDeallocating();
    sub_10004D860(v5 + 32);
    v6 = sub_10018DEFC;
  }

  else
  {
    v4[134] = a1;
    swift_setDeallocating();
    sub_10004D860(v5 + 32);
    v6 = sub_10018DBF4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10018DA08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10018DBF4()
{
  v1 = v0[76];
  v2 = v0[55];
  v3 = type metadata accessor for IdentityProofingUIConfig();
  v4 = objc_allocWithZone(v3);

  v5 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  v6 = objc_allocWithZone(v3);
  v0[135] = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

  v0[136] = *(v2 + 136);
  v7 = *(v1 + 64);

  v8 = IdentityProofingConfiguration.documentType.getter();
  v9 = swift_task_alloc();
  v0[137] = v9;
  *v9 = v0;
  v9[1] = sub_10018DDE0;
  v10 = v0[72];

  return sub_1002A77FC(v10, v7, v8);
}

uint64_t sub_10018DDE0()
{
  *(*v1 + 1104) = v0;

  if (v0)
  {

    v2 = sub_10018E680;
  }

  else
  {
    v2 = sub_10018E0F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018DEFC()
{
  sub_1001A1FAC(*(v0 + 608));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10018E0F0()
{
  v1 = *(v0 + 1104);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A2008(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration, &protocol conformance descriptor for IdentityProofingAttributeConfiguration);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    v4 = *(v0 + 576);
    v5 = *(v0 + 552);
    v6 = *(v0 + 544);

    (*(v5 + 8))(v4, v6);
    v7 = *(v0 + 608);

    sub_1001A1FAC(v7);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 1080);
    v20 = *(v0 + 608);
    v11 = *(v0 + 576);
    v12 = *(v0 + 552);
    v13 = *(v0 + 544);
    v14 = v2;
    v15 = v3;

    (*(v12 + 8))(v11, v13);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1006DAE90;
    *(v16 + 32) = v10;
    v17 = v10;
    sub_10000B8B8(v14, v15);
    IdentityProofingConfiguration.documentType.getter();
    v18 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v21 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

    sub_10000B90C(v14, v15);
    sub_1001A1FAC(v20);

    v19 = *(v0 + 8);

    return v19(v21);
  }
}

uint64_t sub_10018E680()
{

  v1 = *(v0 + 608);

  sub_1001A1FAC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10018E888(char a1)
{
  *(*v1 + 1546) = a1;

  return _swift_task_switch(sub_10018E988, 0, 0);
}

uint64_t sub_10018E988()
{
  v1 = *(v0 + 776);
  v11 = *(v0 + 760);
  v2 = *(v0 + 536);
  v3 = *(v0 + 440);
  v4 = *(v0 + 424);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v3;
  *(v6 + 40) = v11;
  *(v6 + 56) = v1;
  *(v6 + 64) = v4;
  v7 = v4;

  sub_1003E653C(0, 0, v2, &unk_1006DAFD8, v6);

  *(v0 + 1120) = *(v3 + 152);

  v8 = swift_task_alloc();
  *(v0 + 1128) = v8;
  *v8 = v0;
  v8[1] = sub_10018EB00;
  v9 = *(v0 + 424);

  return sub_1001B20D0(v9);
}

uint64_t sub_10018EB00(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v4 + 1136) = a1;
  *(v4 + 1144) = a2;

  if (v2)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_10018EE1C, 0, 0);
  }
}

uint64_t sub_10018EE1C()
{
  v0[144] = *(v0[55] + 152);

  v1 = IdentityProofingConfiguration.documentType.getter();
  v2 = swift_task_alloc();
  v0[145] = v2;
  *v2 = v0;
  v2[1] = sub_10018EED8;
  v3 = v0[75];

  return sub_1001AA1E4(v3, v1);
}

uint64_t sub_10018EED8()
{
  *(*v1 + 1168) = v0;

  if (v0)
  {

    v2 = sub_10018F2E0;
  }

  else
  {

    v2 = sub_10018F038;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018F038()
{
  v1 = v0[143];
  v2 = v0[142];
  v0[147] = *(v0[55] + 144);
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  inited = swift_initStackObject();
  v0[148] = inited;
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v4 = swift_task_alloc();
  v0[149] = v4;
  *v4 = v0;
  v4[1] = sub_10018F130;
  v5 = v0[102];
  v6 = v0[101];

  return sub_10026F6BC(v6, v5, inited);
}

uint64_t sub_10018F130(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1200) = a1;
  *(v4 + 1208) = v1;

  v5 = *(v3 + 1184);

  if (v1)
  {

    swift_setDeallocating();
    sub_10004D860(v5 + 32);
    v6 = sub_10018F6CC;
  }

  else
  {
    swift_setDeallocating();
    sub_10004D860(v5 + 32);
    v6 = sub_10018F4CC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10018F2E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10018F4CC()
{
  v1 = *(v0 + 1546);
  v2 = type metadata accessor for IdentityProofingUIConfig();
  v3 = objc_allocWithZone(v2);

  v4 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  if (v1 == 1)
  {
    v5 = objc_allocWithZone(v2);
    v6 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

    v4 = v6;
  }

  else
  {
  }

  *(v0 + 1216) = v4;
  v7 = *(v0 + 600);
  *(v0 + 1224) = *(*(v0 + 440) + 136);
  v8 = *(v7 + 64);

  v9 = IdentityProofingConfiguration.documentType.getter();
  v10 = swift_task_alloc();
  *(v0 + 1232) = v10;
  *v10 = v0;
  v10[1] = sub_10018F8C0;
  v11 = *(v0 + 568);

  return sub_1002A77FC(v11, v8, v9);
}

uint64_t sub_10018F6CC()
{
  sub_1001A1FAC(*(v0 + 600));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10018F8C0()
{
  *(*v1 + 1240) = v0;

  if (v0)
  {

    v2 = sub_10018FF6C;
  }

  else
  {
    v2 = sub_10018F9DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018F9DC()
{
  v1 = *(v0 + 1240);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A2008(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration, &protocol conformance descriptor for IdentityProofingAttributeConfiguration);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    v4 = *(v0 + 568);
    v5 = *(v0 + 552);
    v6 = *(v0 + 544);

    (*(v5 + 8))(v4, v6);
    v7 = *(v0 + 600);

    sub_1001A1FAC(v7);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 1216);
    v20 = *(v0 + 600);
    v11 = *(v0 + 568);
    v12 = *(v0 + 552);
    v13 = *(v0 + 544);
    v14 = v2;
    v15 = v3;

    (*(v12 + 8))(v11, v13);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1006DAE90;
    *(v16 + 32) = v10;
    v17 = v10;
    sub_10000B8B8(v14, v15);
    IdentityProofingConfiguration.documentType.getter();
    v18 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v21 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

    sub_10000B90C(v14, v15);
    sub_1001A1FAC(v20);

    v19 = *(v0 + 8);

    return v19(v21);
  }
}

uint64_t sub_10018FF6C()
{

  v1 = *(v0 + 600);

  sub_1001A1FAC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100190174(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1264) = v1;

  if (v1)
  {

    v5 = sub_10019059C;
  }

  else
  {

    *(v4 + 1272) = a1;

    v5 = sub_100190314;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100190314()
{
  v1 = *(v0 + 440);
  *(v0 + 112) = *(v0 + 1272);
  v2 = *(v1 + 152);
  sub_10000BBC4(v0 + 112, v0 + 160, &qword_10083D0A8, &qword_1006DAFC8);
  v3 = *(v0 + 160);

  swift_beginAccess();
  sub_1001A2AB0(v0 + 168, v2 + 144);
  swift_endAccess();

  v4 = *(v0 + 128);
  v5 = *(v0 + 144);
  *(v0 + 208) = *(v0 + 112);
  *(v0 + 224) = v4;
  *(v0 + 240) = v5;
  v8 = *(v0 + 208);
  sub_10000BE18(v0 + 216, &qword_10083D0A0, &qword_1006DAFC0);

  v6 = *(v0 + 8);

  return v6(v8);
}

uint64_t sub_10019059C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100190788(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1312) = v1;

  if (v1)
  {

    v5 = sub_100190B94;
  }

  else
  {

    *(v4 + 1320) = a1;

    v5 = sub_10019094C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10019094C()
{
  v1 = *(v0 + 1280);
  *(v0 + 16) = *(v0 + 1320);

  sub_1001A6A30(v0 + 24);

  v2 = *(v0 + 32);
  *(v0 + 64) = *(v0 + 16);
  *(v0 + 80) = v2;
  *(v0 + 96) = *(v0 + 48);
  v5 = *(v0 + 64);
  sub_10000BE18(v0 + 72, &qword_10083D0A0, &qword_1006DAFC0);

  v3 = *(v0 + 8);

  return v3(v5);
}

uint64_t sub_100190B94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100190D88()
{
  *(*v1 + 1352) = v0;

  if (v0)
  {
    v2 = sub_100191530;
  }

  else
  {
    v2 = sub_100190EBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100190EBC()
{
  v38 = v0;
  v1 = v0[166];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[56];
  sub_10000BE18(v2, &qword_10083BD28, &qword_1006DA240);
  v1(v3, 0, 1, v4);
  sub_1001A2A40(v3, v2);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v35 = v0[94];
    v7 = v0[90];
    v8 = v0[84];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37[0] = v10;
    *v9 = 136446210;
    v11 = IdentityProofingActionStatus.debugDescription.getter();
    v13 = sub_100141FE4(v11, v12, v37);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "DISPLAY_MESSAGE exists for action status %{public}s", v9, 0xCu);
    sub_10000BB78(v10);

    v35(v7, v8);
  }

  else
  {
    v14 = v0[94];
    v15 = v0[90];
    v16 = v0[84];

    v14(v15, v16);
  }

  v17 = v0[64];
  v18 = v0[56];
  v19 = v0[57];
  sub_10000BBC4(v0[66], v17, &qword_10083BD28, &qword_1006DA240);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v20 = v0[80];
    v21 = v0[79];
    v22 = v0[78];
    v36 = v0[66];
    v23 = v0[64];

    sub_10000BE18(v23, &qword_10083BD28, &qword_1006DA240);
    v24 = *(v21 + 104);
    v24(v20, enum case for DIPError.Code.displayMessageDataUnavailable(_:), v22);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v36, &qword_10083BD28, &qword_1006DA240);
    v24(v20, enum case for DIPError.Code.internalError(_:), v22);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v25 = v0[1];

    return v25();
  }

  else
  {
    (*(v0[57] + 32))(v0[59], v0[64], v0[56]);
    v27 = swift_task_alloc();
    v0[170] = v27;
    *v27 = v0;
    v27[1] = sub_100191BF4;
    v28 = v0[102];
    v29 = v0[101];
    v30 = v0[100];
    v31 = v0[99];
    v32 = v0[98];
    v33 = v0[59];
    v34 = v0[53];

    return sub_1001A08A0(v33, v34, v29, v28, v30, v32, v31);
  }
}

uint64_t sub_100191530(uint64_t a1)
{
  v39 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v36 = v1[94];
    v4 = v1[89];
    v5 = v1[84];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v38[0] = v7;
    *v6 = 136446210;
    v8 = IdentityProofingActionStatus.debugDescription.getter();
    v10 = sub_100141FE4(v8, v9, v38);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "DISPLAY_MESSAGE doesn't exist for action status %{public}s. Creating display message using fallback strings.", v6, 0xCu);
    sub_10000BB78(v7);

    v36(v4, v5);
  }

  else
  {
    v11 = v1[94];
    v12 = v1[89];
    v13 = v1[84];

    v11(v12, v13);
  }

  v14 = v1[166];
  v15 = v1[66];
  v16 = v1[63];
  v17 = v1[56];
  IdentityProofingDisplayMessage.init(title:messages:primaryButtonTitle:secondaryButtonTitle:learnMoreTitle:url:learnMoreURL:)();

  sub_10000BE18(v15, &qword_10083BD28, &qword_1006DA240);
  v14(v16, 0, 1, v17);
  sub_1001A2A40(v16, v15);
  v18 = v1[64];
  v19 = v1[56];
  v20 = v1[57];
  sub_10000BBC4(v1[66], v18, &qword_10083BD28, &qword_1006DA240);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v21 = v1[80];
    v22 = v1[79];
    v23 = v1[78];
    v37 = v1[66];
    v24 = v1[64];

    sub_10000BE18(v24, &qword_10083BD28, &qword_1006DA240);
    v25 = *(v22 + 104);
    v25(v21, enum case for DIPError.Code.displayMessageDataUnavailable(_:), v23);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v37, &qword_10083BD28, &qword_1006DA240);
    v25(v21, enum case for DIPError.Code.internalError(_:), v23);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v26 = v1[1];

    return v26();
  }

  else
  {
    (*(v1[57] + 32))(v1[59], v1[64], v1[56]);
    v28 = swift_task_alloc();
    v1[170] = v28;
    *v28 = v1;
    v28[1] = sub_100191BF4;
    v29 = v1[102];
    v30 = v1[101];
    v31 = v1[100];
    v32 = v1[99];
    v33 = v1[98];
    v34 = v1[59];
    v35 = v1[53];

    return sub_1001A08A0(v34, v35, v30, v29, v31, v33, v32);
  }
}

uint64_t sub_100191BF4(uint64_t a1)
{
  *(*v1 + 1368) = a1;

  return _swift_task_switch(sub_100191D30, 0, 0);
}

uint64_t sub_100191D30()
{
  v1 = v0[66];
  (*(v0[57] + 8))(v0[59], v0[56]);
  sub_10000BE18(v1, &qword_10083BD28, &qword_1006DA240);
  v4 = v0[171];

  v2 = v0[1];

  return v2(v4);
}

uint64_t sub_100191F54()
{
  *(*v1 + 1400) = v0;

  if (v0)
  {
    v2 = sub_1001926E0;
  }

  else
  {
    v2 = sub_100192068;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100192068()
{
  v38 = v0;
  v1 = v0[172];
  v3 = v0[61];
  v2 = v0[62];
  v4 = v0[56];
  sub_10000BE18(v2, &qword_10083BD28, &qword_1006DA240);
  v1(v3, 0, 1, v4);
  sub_1001A2A40(v3, v2);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v36 = v0[94];
    v7 = v0[88];
    v8 = v0[84];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37[0] = v10;
    *v9 = 136446210;
    v11 = IdentityProofingActionStatus.debugDescription.getter();
    v13 = sub_100141FE4(v11, v12, v37);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "DISPLAY_MESSAGE exists for action status %{public}s", v9, 0xCu);
    sub_10000BB78(v10);

    v36(v7, v8);
  }

  else
  {
    v14 = v0[94];
    v15 = v0[88];
    v16 = v0[84];

    v14(v15, v16);
  }

  v17 = v0[60];
  v18 = v0[56];
  v19 = v0[57];
  sub_10000BBC4(v0[62], v17, &qword_10083BD28, &qword_1006DA240);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v20 = v0[80];
    v21 = v0[79];
    v22 = v0[78];
    v35 = v0[62];
    v23 = v0[60];

    sub_10000BE18(v23, &qword_10083BD28, &qword_1006DA240);
    v24 = *(v21 + 104);
    v24(v20, enum case for DIPError.Code.displayMessageDataUnavailable(_:), v22);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v35, &qword_10083BD28, &qword_1006DA240);
    v24(v20, enum case for DIPError.Code.internalError(_:), v22);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v25 = v0[1];

    return v25();
  }

  else
  {
    (*(v0[57] + 32))(v0[58], v0[60], v0[56]);
    v27 = swift_task_alloc();
    v0[176] = v27;
    *v27 = v0;
    v27[1] = sub_100192DB8;
    v28 = v0[102];
    v29 = v0[101];
    v30 = v0[100];
    v31 = v0[99];
    v32 = v0[98];
    v33 = v0[58];
    v34 = v0[53];

    return sub_1001A08A0(v33, v34, v29, v28, v30, v32, v31);
  }
}

uint64_t sub_1001926E0(uint64_t a1)
{
  v39 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v37 = v1[94];
    v4 = v1[87];
    v5 = v1[84];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v38[0] = v7;
    *v6 = 136446210;
    v8 = IdentityProofingActionStatus.debugDescription.getter();
    v10 = sub_100141FE4(v8, v9, v38);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "DISPLAY_MESSAGE doesn't exist for action status %{public}s. Creating display message using fallback strings.", v6, 0xCu);
    sub_10000BB78(v7);

    v37(v4, v5);
  }

  else
  {
    v11 = v1[94];
    v12 = v1[87];
    v13 = v1[84];

    v11(v12, v13);
  }

  v14 = v1[172];
  v16 = v1[62];
  v15 = v1[63];
  v17 = v1[56];
  IdentityProofingDisplayMessage.init(title:messages:primaryButtonTitle:secondaryButtonTitle:learnMoreTitle:url:learnMoreURL:)();

  sub_10000BE18(v16, &qword_10083BD28, &qword_1006DA240);
  v14(v15, 0, 1, v17);
  sub_1001A2A40(v15, v16);
  v18 = v1[60];
  v19 = v1[56];
  v20 = v1[57];
  sub_10000BBC4(v1[62], v18, &qword_10083BD28, &qword_1006DA240);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v21 = v1[80];
    v22 = v1[79];
    v23 = v1[78];
    v36 = v1[62];
    v24 = v1[60];

    sub_10000BE18(v24, &qword_10083BD28, &qword_1006DA240);
    v25 = *(v22 + 104);
    v25(v21, enum case for DIPError.Code.displayMessageDataUnavailable(_:), v23);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v36, &qword_10083BD28, &qword_1006DA240);
    v25(v21, enum case for DIPError.Code.internalError(_:), v23);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v26 = v1[1];

    return v26();
  }

  else
  {
    (*(v1[57] + 32))(v1[58], v1[60], v1[56]);
    v28 = swift_task_alloc();
    v1[176] = v28;
    *v28 = v1;
    v28[1] = sub_100192DB8;
    v29 = v1[102];
    v30 = v1[101];
    v31 = v1[100];
    v32 = v1[99];
    v33 = v1[98];
    v34 = v1[58];
    v35 = v1[53];

    return sub_1001A08A0(v34, v35, v30, v29, v31, v33, v32);
  }
}

uint64_t sub_100192DB8(uint64_t a1)
{
  *(*v1 + 1416) = a1;

  return _swift_task_switch(sub_100192EF4, 0, 0);
}

uint64_t sub_100192EF4()
{
  v1 = *(v0 + 1544);
  v2 = *(v0 + 496);
  (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));
  sub_10000BE18(v2, &qword_10083BD28, &qword_1006DA240);
  IdentityProofingConfiguration.documentType.getter();
  if (v1 == 1)
  {
    *(v0 + 1424) = *(*(v0 + 440) + 104);

    v3 = swift_task_alloc();
    *(v0 + 1432) = v3;
    *v3 = v0;
    v3[1] = sub_10019303C;
    v4 = *(v0 + 768);
    v5 = *(v0 + 760);

    return sub_10029E160(0, 0, v5, v4, 2, 0);
  }

  else
  {

    return _swift_task_switch(sub_100193154, 0, 0);
  }
}

uint64_t sub_10019303C()
{

  return _swift_task_switch(sub_100193154, 0, 0);
}

uint64_t sub_100193154()
{

  v3 = *(v0 + 1416);

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_10019334C()
{
  *(*v1 + 1456) = v0;

  if (v0)
  {

    v2 = sub_100193708;
  }

  else
  {
    v2 = sub_100193490;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100193490()
{
  v1 = v0[74];
  v2 = v0[55];
  v3 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  v0[183] = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  v0[184] = *(v2 + 136);
  v4 = *(v1 + 64);

  v5 = IdentityProofingConfiguration.documentType.getter();
  v6 = swift_task_alloc();
  v0[185] = v6;
  *v6 = v0;
  v6[1] = sub_1001935EC;
  v7 = v0[70];

  return sub_1002A77FC(v7, v4, v5);
}

uint64_t sub_1001935EC()
{
  *(*v1 + 1488) = v0;

  if (v0)
  {

    v2 = sub_100193DCC;
  }

  else
  {
    v2 = sub_1001938FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100193708()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001938FC()
{
  v1 = *(v0 + 1488);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A2008(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration, &protocol conformance descriptor for IdentityProofingAttributeConfiguration);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 1496) = v2;
  *(v0 + 1504) = v3;
  if (v1)
  {
    v4 = *(v0 + 560);
    v5 = *(v0 + 552);
    v6 = *(v0 + 544);

    (*(v5 + 8))(v4, v6);
    v7 = *(v0 + 592);

    sub_1001A1FAC(v7);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = v2;
    v11 = v3;
    v12 = *(v0 + 1464);
    v22 = *(v0 + 1544);
    v13 = *(v0 + 560);
    v14 = *(v0 + 552);
    v15 = *(v0 + 544);

    (*(v14 + 8))(v13, v15);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1006DAE90;
    *(v16 + 32) = v12;
    v17 = v12;
    sub_10000B8B8(v10, v11);
    IdentityProofingConfiguration.documentType.getter();
    v18 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    *(v0 + 1512) = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
    IdentityProofingConfiguration.documentType.getter();
    if (v22)
    {
      *(v0 + 1520) = *(*(v0 + 440) + 104);

      v19 = swift_task_alloc();
      *(v0 + 1528) = v19;
      *v19 = v0;
      v19[1] = sub_100193FE0;
      v20 = *(v0 + 768);
      v21 = *(v0 + 760);

      return sub_10029E160(0, 0, v21, v20, 2, 0);
    }

    else
    {

      return _swift_task_switch(sub_1001940F8, 0, 0);
    }
  }
}

uint64_t sub_100193DCC()
{

  v1 = *(v0 + 592);

  sub_1001A1FAC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100193FE0()
{

  return _swift_task_switch(sub_1001940F8, 0, 0);
}

uint64_t sub_1001940F8()
{
  v1 = *(v0 + 1504);
  v2 = *(v0 + 1496);
  v3 = *(v0 + 592);

  sub_10000B90C(v2, v1);
  sub_1001A1FAC(v3);
  v6 = *(v0 + 1512);

  v4 = *(v0 + 8);

  return v4(v6);
}

uint64_t sub_10019431C(uint64_t a1)
{
  v7 = *v1;

  v3 = *(v7 + 8);
  if (!v6)
  {
    v2 = a1;
  }

  return v3(v2);
}

uint64_t sub_10019479C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001949B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = type metadata accessor for Logger();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_100194A88, 0, 0);
}

uint64_t sub_100194A88()
{
  v1 = v0[8];
  v0[15] = *(v0[6] + 64);

  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100194B68;
  v4 = v0[9];
  v5 = v0[7];

  return sub_100316898(v5, v1, 0, 0, v2, v4, 1, 0);
}

uint64_t sub_100194B68()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100194D94;
  }

  else
  {

    v2 = sub_100194C84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100194C84(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[14];
  v6 = v1[11];
  v7 = v1[12];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Opportunistic update attempt successful", v8, 2u);
  }

  (*(v7 + 8))(v5, v6);

  v9 = v1[1];

  return v9();
}

uint64_t sub_100194D94()
{
  v17 = v0;

  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[12];
    v15 = v0[13];
    v4 = v0[11];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_100141FE4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received an error during proofing updating. Ignore the error as this is an opportunistic update attempt. %s", v5, 0xCu);
    sub_10000BB78(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[12];
    v10 = v0[13];
    v12 = v0[11];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100194F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = type metadata accessor for IdentityProofingAttributeConfiguration();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  type metadata accessor for IdentityProofingStaticWorkflow(0);
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_100195070, 0, 0);
}

uint64_t sub_100195070()
{
  v0[18] = *(v0[13] + 152);

  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_10019511C;
  v2 = v0[8];

  return sub_1001B189C(v2);
}

uint64_t sub_10019511C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 160) = v2;

  if (v2)
  {
    v7 = sub_100195D48;
  }

  else
  {

    *(v6 + 168) = a2;
    *(v6 + 176) = a1;
    v7 = sub_100195258;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100195258()
{
  v2 = v0[21];
  v1 = v0[22];
  v0[23] = *(v0[13] + 144);
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  inited = swift_initStackObject();
  v0[24] = inited;
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = v1;
  *(inited + 40) = v2;

  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_100195348;
  v6 = v0[9];
  v5 = v0[10];

  return sub_10026F6BC(v6, v5, inited);
}

uint64_t sub_100195348(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = v1;

  v5 = *(v3 + 192);
  if (v1)
  {
    swift_setDeallocating();
    sub_10004D860(v5 + 32);

    v6 = sub_100195DBC;
  }

  else
  {

    swift_setDeallocating();
    sub_10004D860(v5 + 32);
    v6 = sub_1001954C4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001954C4()
{
  v0[28] = *(v0[13] + 152);

  v1 = IdentityProofingConfiguration.documentType.getter();
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_100195580;
  v3 = v0[17];

  return sub_1001AA1E4(v3, v1);
}

uint64_t sub_100195580()
{
  *(*v1 + 240) = v0;

  if (v0)
  {

    v2 = sub_100195E28;
  }

  else
  {
    v2 = sub_1001956C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001956C4()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = type metadata accessor for IdentityProofingUIConfig();
  v4 = objc_allocWithZone(v3);

  v0[31] = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  v5 = objc_allocWithZone(v3);
  v0[32] = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  v0[33] = *(v2 + 136);
  v6 = *(v1 + 64);

  v7 = IdentityProofingConfiguration.documentType.getter();
  v8 = swift_task_alloc();
  v0[34] = v8;
  *v8 = v0;
  v8[1] = sub_1001958BC;
  v9 = v0[16];

  return sub_1002A77FC(v9, v6, v7);
}

uint64_t sub_1001958BC()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_100195CB4;
  }

  else
  {
    v2 = sub_1001959D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001959D0()
{
  v1 = *(v0 + 280);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A2008(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration, &protocol conformance descriptor for IdentityProofingAttributeConfiguration);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 112);

    (*(v5 + 8))(v4, v6);
    v7 = *(v0 + 256);
    v8 = *(v0 + 136);

    sub_1001A1FAC(v8);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v12 = *(v0 + 248);
    v11 = *(v0 + 256);
    v13 = *(v0 + 128);
    v24 = *(v0 + 136);
    v15 = *(v0 + 112);
    v14 = *(v0 + 120);
    v16 = v2;
    v17 = v3;

    (*(v14 + 8))(v13, v15);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1006DAEA0;
    *(v18 + 32) = v12;
    *(v18 + 40) = v11;
    v19 = v12;
    v20 = v11;
    sub_10000B8B8(v16, v17);

    IdentityProofingConfiguration.documentType.getter();
    v21 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v22 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

    sub_10000B90C(v16, v17);
    sub_1001A1FAC(v24);

    v23 = *(v0 + 8);

    return v23(v22);
  }
}

uint64_t sub_100195CB4()
{

  v1 = *(v0 + 256);
  v2 = *(v0 + 136);

  sub_1001A1FAC(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100195D48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100195DBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100195E28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100195E94(uint64_t a1, char a2)
{
  *(v3 + 344) = a2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v2;
  v4 = type metadata accessor for DIPError();
  *(v3 + 152) = v4;
  *(v3 + 160) = *(v4 - 8);
  *(v3 + 168) = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  *(v3 + 176) = v5;
  *(v3 + 184) = *(v5 - 8);
  *(v3 + 192) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v3 + 200) = v6;
  *(v3 + 208) = *(v6 - 8);
  *(v3 + 216) = swift_task_alloc();
  v7 = type metadata accessor for IdentityDocumentType.Category();
  *(v3 + 224) = v7;
  *(v3 + 232) = *(v7 - 8);
  *(v3 + 240) = swift_task_alloc();

  return _swift_task_switch(sub_10019606C, 0, 0);
}

uint64_t sub_10019606C()
{
  if (*(*(v0 + 144) + 112))
  {

    v1 = IdentityProofingConfiguration.accountKeyIdentifier.getter();
    v3 = sub_100189C68(v1, v2);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 248) = v3;
  v4 = [objc_opt_self() standardUserDefaults];
  v5._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceDynamicWorkflowFailure.getter();
  v6 = NSUserDefaults.internalBool(forKey:)(v5);
  *(v0 + 345) = v6;

  if (!v6)
  {
    v7 = *(v0 + 136);

    sub_1001A6ED4(v7);
  }

  if (v3)
  {
    v8 = type metadata accessor for IdentityProofingDeviceMigrationManager();
    swift_unknownObjectRetain();
    v9 = swift_task_alloc();
    *(v0 + 256) = v9;
    *v9 = v0;
    v9[1] = sub_1001969CC;

    return (sub_1001897BC)(v8, &off_10080A320);
  }

  *(v0 + 347) = 0;
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  v13 = *(v0 + 224);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v14 = (*(v12 + 88))(v11, v13);
  if (v14 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    IdentityProofingConfiguration.state.getter();
    if (!v15)
    {
      v26 = *(v0 + 345);
      (*(*(v0 + 184) + 104))(*(v0 + 192), enum case for DIPError.Code.idStateUnavailable(_:), *(v0 + 176));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      swift_unknownObjectRelease();
      if ((v26 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v16 = String.lowercased()();

    v17 = IdentityProofingConfiguration.documentType.getter();
    v18 = swift_allocObject();
    type metadata accessor for IdentityProofingDataContext();
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0u;
    swift_allocObject();
    sub_10057E28C();
    v28 = v27;
    v29 = swift_allocObject();
    v29[1]._countAndFlagsBits = v28;
    v29[1]._object = v17;
    v29[2] = v16;
    v29[3]._countAndFlagsBits = v18;

    sub_10057C18C(sub_1001A29D0, v29);

    swift_beginAccess();
    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    v33 = *(v18 + 32);
    v32 = *(v18 + 40);
    sub_1000AB7D8(v31, v30, v33, v32);

    if (v30)
    {
      v46 = *(v0 + 345);
      v34 = *(v0 + 184);
      v35 = *(v0 + 192);
      v36 = *(v0 + 176);
      _StringGuts.grow(_:)(102);
      v37._countAndFlagsBits = 0xD00000000000004DLL;
      v37._object = 0x80000001007041D0;
      String.append(_:)(v37);
      v38._countAndFlagsBits = v33;
      v38._object = v32;
      String.append(_:)(v38);
      v39._countAndFlagsBits = 0xD000000000000015;
      v39._object = 0x8000000100704140;
      String.append(_:)(v39);
      v40._countAndFlagsBits = v31;
      v40._object = v30;
      String.append(_:)(v40);

      (*(v34 + 104))(v35, enum case for DIPError.Code.proofingInProgressError(_:), v36);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      swift_unknownObjectRelease();
      if ((v46 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v41 = swift_task_alloc();
    *(v0 + 288) = v41;
    *v41 = v0;
    v41[1] = sub_1001974D8;
    v42 = *(v0 + 344);
    v43 = *(v0 + 136);

    return sub_10019A69C(v43, v42, 0);
  }

  else
  {
    if (v14 != enum case for IdentityDocumentType.Category.passport(_:))
    {
      v45 = *(v0 + 345);
      v44 = *(v0 + 240);
      v23 = *(v0 + 224);
      v24 = *(v0 + 232);
      (*(*(v0 + 184) + 104))(*(v0 + 192), enum case for DIPError.Code.unexpectedIDType(_:), *(v0 + 176));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v24 + 8))(v44, v23);
      if (v45 != 1)
      {
LABEL_19:

        v25 = *(v0 + 8);

        return v25();
      }

LABEL_18:

      sub_1001AC570();

      goto LABEL_19;
    }

    v19 = IdentityProofingConfiguration.piiTokenIdentifier.getter();
    v21 = v20;
    *(v0 + 304) = v20;
    v22 = swift_task_alloc();
    *(v0 + 312) = v22;
    *v22 = v0;
    v22[1] = sub_1001976BC;

    return sub_1001A252C(v19, v21);
  }
}

uint64_t sub_1001969CC(char a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = sub_1001981E8;
  }

  else
  {
    *(v4 + 346) = a1 & 1;
    v5 = sub_100196AF8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100196AF8()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 346);
  v2 = *(v0 + 264);
  *(v0 + 347) = v1;
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 224);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v6 = (*(v4 + 88))(v3, v5);
  if (v6 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    if (v1)
    {
      v7 = swift_task_alloc();
      *(v0 + 272) = v7;
      *v7 = v0;
      v7[1] = sub_1001972F4;
      v8 = *(v0 + 344);
      v9 = *(v0 + 136);
      v10 = 1;
LABEL_4:

      return sub_10019A69C(v9, v8, v10);
    }

    IdentityProofingConfiguration.state.getter();
    if (v16)
    {
      v17 = String.lowercased()();

      v18 = IdentityProofingConfiguration.documentType.getter();
      v19 = swift_allocObject();
      type metadata accessor for IdentityProofingDataContext();
      *(v19 + 16) = 0u;
      *(v19 + 32) = 0u;
      swift_allocObject();
      sub_10057E28C();
      if (v2)
      {

        v28 = *(v0 + 208);
        v27 = *(v0 + 216);
        v29 = *(v0 + 200);
        defaultLogger()();
        DIPRecordError(_:message:log:)();

        (*(v28 + 8))(v27, v29);
      }

      else
      {
        v25 = v20;
        v26 = swift_allocObject();
        v26[1]._countAndFlagsBits = v25;
        v26[1]._object = v18;
        v26[2] = v17;
        v26[3]._countAndFlagsBits = v19;

        sub_10057C18C(sub_1001A29D0, v26);
      }

      swift_beginAccess();
      v31 = *(v19 + 16);
      v30 = *(v19 + 24);
      v33 = *(v19 + 32);
      v32 = *(v19 + 40);
      sub_1000AB7D8(v31, v30, v33, v32);

      if (!v30)
      {
        v41 = swift_task_alloc();
        *(v0 + 288) = v41;
        *v41 = v0;
        v41[1] = sub_1001974D8;
        v8 = *(v0 + 344);
        v9 = *(v0 + 136);
        v10 = 0;
        goto LABEL_4;
      }

      v44 = *(v0 + 345);
      v34 = *(v0 + 184);
      v35 = *(v0 + 192);
      v36 = *(v0 + 176);
      _StringGuts.grow(_:)(102);
      v37._countAndFlagsBits = 0xD00000000000004DLL;
      v37._object = 0x80000001007041D0;
      String.append(_:)(v37);
      v38._countAndFlagsBits = v33;
      v38._object = v32;
      String.append(_:)(v38);
      v39._countAndFlagsBits = 0xD000000000000015;
      v39._object = 0x8000000100704140;
      String.append(_:)(v39);
      v40._countAndFlagsBits = v31;
      v40._object = v30;
      String.append(_:)(v40);

      (*(v34 + 104))(v35, enum case for DIPError.Code.proofingInProgressError(_:), v36);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      swift_unknownObjectRelease();
      if ((v44 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v24 = *(v0 + 345);
      (*(*(v0 + 184) + 104))(*(v0 + 192), enum case for DIPError.Code.idStateUnavailable(_:), *(v0 + 176));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      swift_unknownObjectRelease();
      if ((v24 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

  if (v6 != enum case for IdentityDocumentType.Category.passport(_:))
  {
    v43 = *(v0 + 345);
    v42 = *(v0 + 240);
    v21 = *(v0 + 224);
    v22 = *(v0 + 232);
    (*(*(v0 + 184) + 104))(*(v0 + 192), enum case for DIPError.Code.unexpectedIDType(_:), *(v0 + 176));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v22 + 8))(v42, v21);
    if (v43 != 1)
    {
LABEL_16:

      v23 = *(v0 + 8);

      return v23();
    }

LABEL_15:

    sub_1001AC570();

    goto LABEL_16;
  }

  v12 = IdentityProofingConfiguration.piiTokenIdentifier.getter();
  v14 = v13;
  *(v0 + 304) = v13;
  v15 = swift_task_alloc();
  *(v0 + 312) = v15;
  *v15 = v0;
  v15[1] = sub_1001976BC;

  return sub_1001A252C(v12, v14);
}

uint64_t sub_1001972F4(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v3[35] = v1;

  if (v1)
  {
    v4 = sub_1001982AC;
  }

  else
  {
    v4 = sub_100197410;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100197410()
{
  v1 = *(v0 + 345);
  swift_unknownObjectRelease();
  if (v1 == 1)
  {

    sub_1001AC570();
  }

  v2 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1001974D8(uint64_t a1)
{
  v3 = *v2;
  v3[11] = v2;
  v3[12] = a1;
  v3[13] = v1;
  v3[37] = v1;

  if (v1)
  {
    v4 = sub_10019836C;
  }

  else
  {
    v4 = sub_1001975F4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001975F4()
{
  v1 = *(v0 + 345);
  swift_unknownObjectRelease();
  if (v1 == 1)
  {

    sub_1001AC570();
  }

  v2 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1001976BC(char a1)
{
  v3 = *v2;
  *(v3 + 348) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v4 = sub_100197F38;
  }

  else
  {

    v4 = sub_1001977DC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001977DC()
{
  if (*(v0 + 344) == 1)
  {
    if ((*(v0 + 348) & 1) == 0)
    {
      v38 = *(v0 + 345);
      v10 = *(v0 + 208);
      v9 = *(v0 + 216);
      v37 = *(v0 + 200);
      v12 = *(v0 + 160);
      v11 = *(v0 + 168);
      v13 = *(v0 + 152);
      (*(*(v0 + 184) + 104))(*(v0 + 192), enum case for DIPError.Code.failedToStartWatchProofingMissingPIIToken(_:), *(v0 + 176));
      sub_1000402AC(_swiftEmptyArrayStorage);
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v14 = *(v12 + 16);
      v14(v15, v11, v13);
      defaultLogger()();
      DIPLogError(_:message:log:)();
      (*(v10 + 8))(v9, v37);

      swift_allocError();
      v14(v16, v11, v13);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v12 + 8))(v11, v13);
      goto LABEL_17;
    }

    v1 = 1;
  }

  else if (*(v0 + 347) & *(v0 + 348))
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  IdentityProofingConfiguration.country.getter();
  if (!v2)
  {
    v8 = *(v0 + 345);
    (*(*(v0 + 184) + 104))(*(v0 + 192), enum case for DIPError.Code.idCountryUnavailable(_:), *(v0 + 176));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    swift_unknownObjectRelease();
    if (v8 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v3 = *(v0 + 320);
  v4 = String.lowercased()();

  v5 = IdentityProofingConfiguration.documentType.getter();
  v6 = swift_allocObject();
  type metadata accessor for IdentityProofingDataContext();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  swift_allocObject();
  sub_10057E28C();
  if (v3)
  {

    v20 = *(v0 + 208);
    v19 = *(v0 + 216);
    v21 = *(v0 + 200);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    (*(v20 + 8))(v19, v21);
  }

  else
  {
    v17 = v7;
    v18 = swift_allocObject();
    v18[1]._countAndFlagsBits = v17;
    v18[1]._object = v5;
    v18[2] = v4;
    v18[3]._countAndFlagsBits = v6;

    sub_10057C18C(sub_1001A2918, v18);
  }

  swift_beginAccess();
  v23 = *(v6 + 16);
  v22 = *(v6 + 24);
  v25 = *(v6 + 32);
  v24 = *(v6 + 40);
  sub_1000AB7D8(v23, v22, v25, v24);

  if (v22)
  {
    v38 = *(v0 + 345);
    v26 = *(v0 + 184);
    v27 = *(v0 + 192);
    v28 = *(v0 + 176);
    _StringGuts.grow(_:)(104);
    v29._countAndFlagsBits = 0xD00000000000004FLL;
    v29._object = 0x80000001007040F0;
    String.append(_:)(v29);
    v30._countAndFlagsBits = v25;
    v30._object = v24;
    String.append(_:)(v30);
    v31._countAndFlagsBits = 0xD000000000000015;
    v31._object = 0x8000000100704140;
    String.append(_:)(v31);
    v32._countAndFlagsBits = v23;
    v32._object = v22;
    String.append(_:)(v32);

    (*(v26 + 104))(v27, enum case for DIPError.Code.proofingInProgressError(_:), v28);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_17:
    if ((v38 & 1) == 0)
    {
LABEL_19:

      v33 = *(v0 + 8);

      return v33();
    }

LABEL_18:

    sub_1001AC570();

    goto LABEL_19;
  }

  v35 = swift_task_alloc();
  *(v0 + 328) = v35;
  *v35 = v0;
  v35[1] = sub_100198004;
  v36 = *(v0 + 136);

  return sub_1001A2C54(v36, v1);
}

uint64_t sub_100197F38()
{
  v1 = *(v0 + 345);
  swift_unknownObjectRelease();

  if (v1 == 1)
  {

    sub_1001AC570();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100198004(uint64_t a1)
{
  v3 = *v2;
  v3[14] = v2;
  v3[15] = a1;
  v3[16] = v1;
  v3[42] = v1;

  if (v1)
  {
    v4 = sub_10019842C;
  }

  else
  {
    v4 = sub_100198120;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100198120()
{
  v1 = *(v0 + 345);
  swift_unknownObjectRelease();
  if (v1 == 1)
  {

    sub_1001AC570();
  }

  v2 = *(v0 + 120);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1001981E8()
{
  v1 = *(v0 + 345);
  swift_unknownObjectRelease_n();
  if (v1 == 1)
  {

    sub_1001AC570();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001982AC()
{
  v1 = *(v0 + 345);
  swift_unknownObjectRelease();
  if (v1 == 1)
  {

    sub_1001AC570();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019836C()
{
  v1 = *(v0 + 345);
  swift_unknownObjectRelease();
  if (v1 == 1)
  {

    sub_1001AC570();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019842C()
{
  v1 = *(v0 + 345);
  swift_unknownObjectRelease();
  if (v1 == 1)
  {

    sub_1001AC570();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001984EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_100198634, 0, 0);
}

uint64_t sub_100198634(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "check if there are assets left to be uploaded and if the device is on an expensive network and if the shouldScheduleUploads have been set to true", v4, 2u);
  }

  v5 = v1[17];
  v6 = v1[12];
  v7 = v1[13];

  v8 = *(v7 + 8);
  v1[18] = v8;
  v8(v5, v6);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v1[19] = v9;
  v10 = v1[10];
  v24 = v1[11];
  v11 = v1[9];
  v13 = v1[6];
  v12 = v1[7];
  v14 = v1[5];
  v15 = v9;
  v16 = swift_allocObject();
  v1[20] = v16;
  v16[2] = v15;
  v16[3] = v14;
  v16[4] = v13;
  v16[5] = v12;
  v17 = swift_allocObject();
  v1[21] = v17;
  *(v17 + 16) = sub_1001A2488;
  *(v17 + 24) = v16;
  v18 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v19 = *(v10 + 104);

  v19(v24, v18, v11);

  v20 = swift_task_alloc();
  v1[22] = v20;
  v21 = sub_100007224(&qword_10083D098, &unk_1006DAF98);
  *v20 = v1;
  v20[1] = sub_1001989FC;
  v22 = v1[11];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1 + 2, v22, sub_1001A24E0, v17, v21);
}

uint64_t sub_1001989FC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    (*(*(v2 + 80) + 8))(*(v2 + 88), *(v2 + 72));

    v3 = sub_1001990E0;
  }

  else
  {
    v5 = *(v2 + 80);
    v4 = *(v2 + 88);
    v6 = *(v2 + 72);

    (*(v5 + 8))(v4, v6);
    *(v2 + 192) = *(v2 + 16);
    *(v2 + 25) = *(v2 + 24);
    v3 = sub_100198B84;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100198B84()
{
  v1 = *(v0 + 25);
  if (v1 == 2)
  {

    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 67109120;
      _os_log_impl(&_mh_execute_header, v2, v3, "Should change the proofing status to isWaitingForWifi: -> %{BOOL}d", v4, 8u);
    }

    v5 = *(v0 + 144);
    v6 = *(v0 + 120);
    v7 = *(v0 + 96);

    v5(v6, v7);

    v8 = *(v0 + 8);

    return v8(0);
  }

  else
  {
    *(v0 + 200) = *(*(v0 + 64) + 80);

    v10 = swift_task_alloc();
    *(v0 + 208) = v10;
    *v10 = v0;
    v10[1] = sub_100198D84;
    v11 = *(v0 + 192);
    v12 = *(v0 + 32);

    return sub_1002C7430(v12, v11, v1 & 1);
  }
}

uint64_t sub_100198D84(char a1)
{
  *(*v1 + 26) = a1;

  return _swift_task_switch(sub_100198EA4, 0, 0);
}

uint64_t sub_100198EA4(uint64_t a1)
{
  v18 = *(v1 + 26);
  if (v18 == 1)
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "The device is on an expensive network AND the data size is greater than the threshold AND the user has not given consent to upload on cellular network. Update the proofing status to wait for wifi", v4, 2u);
    }

    v5 = *(v1 + 144);
    v6 = *(v1 + 128);
    v7 = *(v1 + 96);
    v9 = *(v1 + 40);
    v8 = *(v1 + 48);

    v5(v6, v7);

    sub_1002E1B4C(v9, v8, 9);
  }

  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Should change the proofing status to isWaitingForWifi: -> %{BOOL}d", v12, 8u);
  }

  v13 = *(v1 + 144);
  v14 = *(v1 + 120);
  v15 = *(v1 + 96);

  v13(v14, v15);

  v16 = *(v1 + 8);

  return v16(v18);
}

uint64_t sub_1001990E0()
{

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[12];
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v1(v2, v3);
  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    _os_log_impl(&_mh_execute_header, v4, v5, "Should change the proofing status to isWaitingForWifi: -> %{BOOL}d", v6, 8u);
  }

  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[12];

  v7(v8, v9);

  v10 = v0[1];

  return v10(0);
}

void sub_10019928C(unint64_t a1@<X0>, uint64_t (**a2)(char *, char *)@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a1;
  v69 = a5;
  v8 = type metadata accessor for Logger();
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = __chkstk_darwin(v8);
  v71 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v70 = &v61 - v12;
  __chkstk_darwin(v11);
  v14 = &v61 - v13;
  v15 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v15 - 8);
  v17 = &v61 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v74;
  sub_10057BE48(a2, a3, a4);
  if (v22)
  {
    return;
  }

  v73 = v19;
  v74 = a4;
  v64 = a2;
  v65 = 0;
  v72 = v18;
  v25 = v70;
  v24 = v71;
  v66 = v21;
  v62 = v14;
  if (v23)
  {
    v63 = v23;
    v26 = [v23 uploadAssets];
    if (v26)
    {
      v27 = v26;
      v28 = sub_10031F088(v27);

      v29 = sub_10057A09C(v28);

      if (v29)
      {
        v30 = v29 & 0xFFFFFFFFFFFFFF8;
        if (v29 >> 62)
        {
          goto LABEL_39;
        }

        v74 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v31 = v17;
        v17 = v73;
        if (v74)
        {
          v61 = v27;
          v75 = _swiftEmptyArrayStorage;
          while (1)
          {
            v32 = 0;
            v73 = v29 & 0xC000000000000001;
            v70 = v17 + 32;
            v71 = (v17 + 48);
            v64 = (v17 + 8);
            while (1)
            {
              if (v73)
              {
                v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v32 >= *(v30 + 16))
                {
                  goto LABEL_38;
                }

                v33 = *(v29 + 8 * v32 + 32);
              }

              v17 = v33;
              v34 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
                break;
              }

              v35 = [v33 assetFileURL];
              if (v35)
              {
                v36 = v29;
                v27 = v35;
                static String._unconditionallyBridgeFromObjectiveC(_:)();

                URL.init(string:)();
                v25 = v72;

                if ((*v71)(v31, 1, v25) == 1)
                {

                  sub_10000BE18(v31, &unk_100844540, &unk_1006BFBC0);
                }

                else
                {
                  v37 = v66;
                  (*v70)(v66, v31, v25);
                  v27 = URL.isFileOnDisk.getter();
                  (*v64)(v37, v25);
                  if (v27)
                  {
                    v27 = &v75;
                    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    specialized ContiguousArray._endMutation()();
                  }

                  else
                  {
                  }

                  v29 = v36;
                }
              }

              else
              {
              }

              ++v32;
              if (v34 == v74)
              {
                v27 = v75;
                goto LABEL_27;
              }
            }

            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            v57 = _CocoaArrayWrapper.endIndex.getter();
            v31 = v17;
            v17 = v73;
            if (v57 <= 0)
            {
              break;
            }

            v61 = v27;
            v27 = _swiftEmptyArrayStorage;
            v75 = _swiftEmptyArrayStorage;
            v74 = _CocoaArrayWrapper.endIndex.getter();
            if (!v74)
            {
LABEL_27:

              v47 = v68;
              v46 = v69;
              v48 = v67;
              v49 = v62;
              if (v27 < 0 || (v27 & 0x4000000000000000) != 0)
              {
                v50 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v50 = *(v27 + 16);
              }

              if (v50 <= 0)
              {
                defaultLogger()();
                v52 = Logger.logObject.getter();
                v53 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v52, v53))
                {
                  v54 = swift_slowAlloc();
                  *v54 = 0;
                  _os_log_impl(&_mh_execute_header, v52, v53, "Upload assets doesn't exist to be uploaded.", v54, 2u);

                  v55 = v61;
                  v56 = v63;
                }

                else
                {
                  v55 = v52;
                  v52 = v63;
                  v56 = v61;
                }

                (*(v48 + 8))(v49, v47);
                v45 = 0;
                v44 = 2;
              }

              else
              {
                v51 = v63;
                v45 = [v63 totalUploadAssetsFileSizeInBytes];
                v44 = [v51 canUploadOnExpensiveNetwork];
              }

              goto LABEL_48;
            }
          }
        }
      }

      else
      {
      }
    }

    v24 = v25;
    defaultLogger()();
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Upload assets doesn't exist to be uploaded.", v60, 2u);
    }
  }

  else
  {
    defaultLogger()();

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v40 = 136315394;
      *(v40 + 4) = sub_100141FE4(v64, a3, &v75);
      *(v40 + 12) = 2080;
      v41 = IdentityTarget.debugDescription.getter();
      v43 = sub_100141FE4(v41, v42, &v75);

      *(v40 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v38, v39, "No proofing session for proofingSessionID %s and target %s", v40, 0x16u);
      v44 = 2;
      swift_arrayDestroy();

      (*(v67 + 8))(v24, v68);
      v45 = 0;
      goto LABEL_47;
    }
  }

  (*(v67 + 8))(v24, v68);
  v45 = 0;
  v44 = 2;
LABEL_47:
  v46 = v69;
LABEL_48:
  *v46 = v45;
  *(v46 + 8) = v44;
}

uint64_t sub_100199A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  sub_100007224(&qword_10083BD28, &qword_1006DA240);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for IdentityProofingDisplayMessage();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100199BF8, 0, 0);
}

uint64_t sub_100199BF8()
{
  v1 = *(*(v0[6] + 128) + 24);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));

  if (*(v2 + 16) && (v3 = sub_10003ADCC(v0[3], v0[4]), (v4 & 1) != 0))
  {
    (*(v0[15] + 16))(v0[16], *(v2 + 56) + *(v0[15] + 72) * v3, v0[14]);

    (*(v0[15] + 32))(v0[2], v0[16], v0[14]);

    v5 = v0[1];

    return v5();
  }

  else
  {

    defaultLogger()();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "The actions repository doesn't contain the display message. Will call pending actions from the server", v9, 2u);
    }

    v11 = v0[12];
    v10 = v0[13];
    v12 = v0[11];
    v13 = v0[4];

    (*(v11 + 8))(v10, v12);

    v0[17] = sub_100266DA8(3, 0);

    v14 = swift_task_alloc();
    v0[18] = v14;
    *v14 = v0;
    v14[1] = sub_100199E7C;
    v15 = v0[5];
    v16 = v0[3];

    return sub_10025AE6C(v16, v13, v15, 0);
  }
}

uint64_t sub_100199E7C(uint64_t a1)
{
  *(*v2 + 152) = v1;

  if (v1)
  {
    v3 = sub_10019A1F0;
  }

  else
  {

    v3 = sub_100199F9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100199F9C()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[10];
  sub_10025CDEC(v0[3], v0[4], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[9];
    v5 = v0[7];
    v6 = v0[8];
    sub_10000BE18(v0[10], &qword_10083BD28, &qword_1006DA240);
    (*(v6 + 104))(v4, enum case for DIPError.Code.displayMessageDataUnavailable(_:), v5);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {

    (*(v0[15] + 32))(v0[2], v0[10], v0[14]);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_10019A1F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019A284(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v28 - v10;
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  if (!a2)
  {
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Credential Identifier is nil, cannot fetch the ID Type", v18, 2u);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  sub_100511C48(a1, a2);
  v15 = v14;

  if (!v15)
  {
    defaultLogger()();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_100141FE4(a1, a2, &v29);
      _os_log_impl(&_mh_execute_header, v19, v20, "No pass exists with the credential identifier - %s ", v21, 0xCu);
      sub_10000BB78(v22);
    }

    (*(v5 + 8))(v11, v4);
    return 0;
  }

  if (*(v15 + 56) > 4u && *(v15 + 56) != 5)
  {
    defaultLogger()();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to retrieve the pass type", v27, 2u);
    }

    else
    {
    }

    (*(v5 + 8))(v13, v4);
    return 0;
  }

  v24 = IdentityDocumentType.init(documentTypeString:)();

  return v24;
}

uint64_t sub_10019A69C(uint64_t a1, char a2, char a3)
{
  *(v4 + 1032) = v3;
  *(v4 + 746) = a3;
  *(v4 + 745) = a2;
  *(v4 + 1024) = a1;
  v5 = type metadata accessor for DIPError.Code();
  *(v4 + 1040) = v5;
  *(v4 + 1048) = *(v5 - 8);
  *(v4 + 1056) = swift_task_alloc();
  v6 = type metadata accessor for IdentityProofingAttributeConfiguration();
  *(v4 + 1064) = v6;
  *(v4 + 1072) = *(v6 - 8);
  *(v4 + 1080) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v4 + 1088) = v7;
  *(v4 + 1096) = *(v7 - 8);
  *(v4 + 1104) = swift_task_alloc();
  *(v4 + 1112) = swift_task_alloc();
  *(v4 + 1120) = swift_task_alloc();
  *(v4 + 1128) = swift_task_alloc();
  *(v4 + 1136) = swift_task_alloc();
  *(v4 + 1144) = swift_task_alloc();
  *(v4 + 1152) = swift_task_alloc();
  *(v4 + 1160) = swift_task_alloc();
  *(v4 + 1168) = swift_task_alloc();
  *(v4 + 1176) = swift_task_alloc();
  *(v4 + 1184) = type metadata accessor for IdentityProofingStaticWorkflow(0);
  *(v4 + 1192) = swift_task_alloc();
  *(v4 + 1200) = swift_task_alloc();

  return _swift_task_switch(sub_10019A8C8, 0, 0);
}

uint64_t sub_10019A8C8()
{
  IdentityProofingConfiguration.state.getter();
  if (v1)
  {
    v2 = *(v0 + 1032);
    v3 = String.lowercased()();

    *(v0 + 1208) = v3;
    *(v0 + 1224) = *(v2 + 152);

    v4 = IdentityProofingConfiguration.documentType.getter();
    v5 = swift_task_alloc();
    *(v0 + 1232) = v5;
    *v5 = v0;
    v5[1] = sub_10019AC94;
    v6 = *(v0 + 1200);

    return sub_1001AA1E4(v6, v4);
  }

  else
  {
    (*(*(v0 + 1048) + 104))(*(v0 + 1056), enum case for DIPError.Code.idStateUnavailable(_:), *(v0 + 1040));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(*(v0 + 1048) + 104))(*(v0 + 1056), enum case for DIPError.Code.internalError(_:), *(v0 + 1040));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_10019AC94()
{
  *(*v1 + 1240) = v0;

  if (v0)
  {

    v2 = sub_10019FB74;
  }

  else
  {
    v2 = sub_10019ADD8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019ADD8()
{
  v174 = v0;
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1184);
  *(v0 + 1008) = _swiftEmptyArrayStorage;
  v3 = *(v1 + *(v2 + 40));
  *(v0 + 1248) = v3;
  if (!v3)
  {
    goto LABEL_70;
  }

  v4 = (v0 + 752);
  v5 = *(v3 + 16);
  *(v0 + 1256) = v5;
  if (!v5)
  {

    v6 = 0;
    *(v0 + 752) = 1;
    *(v0 + 760) = 0u;
    *(v0 + 776) = 0u;
    *(v0 + 792) = 0u;
    *(v0 + 808) = 0;
    v98 = _swiftEmptyArrayStorage;
    v8 = 0xE000000000000000;
    goto LABEL_83;
  }

  *(v0 + 816) = 1;
  *(v0 + 872) = 0;
  *(v0 + 824) = 0u;
  *(v0 + 840) = 0u;
  *(v0 + 856) = 0u;
  *(v0 + 1264) = 0;
  if (!*(v3 + 16))
  {
LABEL_69:
    __break(1u);
LABEL_70:
    v95 = *(v0 + 1056);
    v96 = *(v0 + 1048);
    v97 = *(v0 + 1040);

    (*(v96 + 104))(v95, enum case for DIPError.Code.invalidStaticWorkflow(_:), v97);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_90;
  }

  v6 = 0;
  v7 = 0;
  v163 = (v0 + 880);
  v164 = (v0 + 816);
  v165 = (v0 + 1008);
  v8 = 0xE000000000000000;
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    v1 = *(v0 + 1024);
    v9 = (v3 + 112 * v7);
    v11 = v9[3];
    v10 = v9[4];
    *(v0 + 16) = v9[2];
    *(v0 + 32) = v11;
    *(v0 + 48) = v10;
    v12 = v9[8];
    v14 = v9[5];
    v13 = v9[6];
    *(v0 + 96) = v9[7];
    *(v0 + 112) = v12;
    *(v0 + 64) = v14;
    *(v0 + 80) = v13;
    v16 = *(v0 + 16);
    v15 = *(v0 + 24);

    sub_10009FB70(v0 + 16, v0 + 128);
    v17 = IdentityProofingConfiguration.state.getter();
    if (!v18)
    {
      sub_10009FBA8(v0 + 16);

      v19 = (v0 + 816);
      goto LABEL_67;
    }

    if (v16 == v17 && v18 == v15)
    {
    }

    else
    {
      v1 = v18;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        sub_10009FBA8(v0 + 16);
        v19 = (v0 + 816);
        goto LABEL_67;
      }
    }

    v21 = *(v0 + 745);
    sub_10000BE18(v164, &qword_100835910, &qword_1006C1B68);
    if (v21 == 1)
    {
      v22 = (v0 + 1168);
      if (*(v0 + 746))
      {
        defaultLogger()();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v23, v24))
        {
          v29 = v4;
          v39 = *(v0 + 1176);
          goto LABEL_28;
        }

        v22 = (v0 + 1176);
        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = v24;
        v27 = v23;
        v28 = "Preparing UI for watch device migration flow";
      }

      else
      {
        defaultLogger()();
        v23 = Logger.logObject.getter();
        v38 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v23, v38))
        {
          v29 = v4;
          v39 = *(v0 + 1168);
          goto LABEL_28;
        }

        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = v38;
        v27 = v23;
        v28 = "Preparing UI from static workflow for watch";
      }

      _os_log_impl(&_mh_execute_header, v27, v26, v28, v25, 2u);
      v29 = v4;
      v39 = *v22;

LABEL_28:
      v47 = *(v0 + 1096);
      v48 = *(v0 + 1088);

      v36 = *(v47 + 8);
      v36(v39, v48);
      v37 = *(v0 + 112);
LABEL_29:
      if (v37)
      {
        v46 = v37;
      }

      else
      {
        v46 = _swiftEmptyArrayStorage;
      }

      goto LABEL_32;
    }

    v29 = v4;
    if (*(v0 + 746))
    {
      defaultLogger()();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Preparing UI from static workflow for device migration", v32, 2u);
      }

      v33 = *(v0 + 1160);
      v34 = *(v0 + 1096);
      v35 = *(v0 + 1088);

      v36 = *(v34 + 8);
      v36(v33, v35);
      v37 = *(v0 + 120);
      goto LABEL_29;
    }

    defaultLogger()();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Preparing UI from static workflow for phone", v42, 2u);
    }

    v43 = *(v0 + 1152);
    v44 = *(v0 + 1096);
    v45 = *(v0 + 1088);

    v36 = *(v44 + 8);
    v36(v43, v45);
    v46 = *(v0 + 40);
LABEL_32:
    *(v0 + 1280) = v46;
    *(v0 + 1272) = v36;
    v49 = v46[2];
    *(v0 + 1288) = v49;

    v4 = v29;
    if (v49)
    {
      break;
    }

LABEL_66:

    *(v0 + 1016) = *(v0 + 32);
    sub_10000BBC4(v0 + 48, v0 + 944, &qword_100835910, &qword_1006C1B68);
    v1 = v0 + 1016;
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v92;
    sub_10009FBA8(v0 + 16);
    v19 = (v0 + 48);
LABEL_67:
    v93 = *(v0 + 1256);
    v7 = *(v0 + 1264) + 1;
    v94 = v19[1];
    *v163 = *v19;
    *(v0 + 896) = v94;
    *(v0 + 912) = v19[2];
    *(v0 + 921) = *(v19 + 41);
    if (v7 == v93)
    {

      v122 = *(v0 + 896);
      v98 = v4;
      v4 = (v0 + 752);
      *(v0 + 752) = *v163;
      *(v0 + 768) = v122;
      *(v0 + 784) = *(v0 + 912);
      *(v0 + 793) = *(v0 + 921);
LABEL_83:
      *(v0 + 1424) = v98;
      *(v0 + 1416) = v98;
      *(v0 + 1408) = v8;
      *(v0 + 1400) = v6;
      v123 = v4[1];
      *(v0 + 688) = *v4;
      *(v0 + 704) = v123;
      *(v0 + 720) = v4[2];
      *(v0 + 729) = *(v4 + 41);
      if (v98 >> 62)
      {
LABEL_104:
        v124 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v124 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v1 = *(v0 + 1200);
      if (v124 >= 1)
      {
        v125 = *(v0 + 1192);
        defaultLogger()();
        sub_1001A2050(v1, v125);
        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.debug.getter();
        v128 = os_log_type_enabled(v126, v127);
        v129 = *(v0 + 1192);
        if (v128)
        {
          v130 = *(v0 + 1184);
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v173[0] = v132;
          *v131 = 136315138;
          v133 = (v129 + *(v130 + 44));
          if (v133[1])
          {
            v134 = *v133;
            v135 = v133[1];
          }

          else
          {
            v135 = 0xE300000000000000;
            v134 = 7104878;
          }

          v144 = *(v0 + 1192);
          v171 = *(v0 + 1112);
          v145 = *(v0 + 1096);
          v146 = *(v0 + 1088);

          sub_1001A1FAC(v144);
          v147 = sub_100141FE4(v134, v135, v173);

          *(v131 + 4) = v147;
          _os_log_impl(&_mh_execute_header, v126, v127, "The learnMoreURL is %s", v131, 0xCu);
          sub_10000BB78(v132);

          v143 = *(v145 + 8);
          v143(v171, v146);
        }

        else
        {
          v140 = *(v0 + 1112);
          v141 = *(v0 + 1096);
          v142 = *(v0 + 1088);

          sub_1001A1FAC(v129);
          v143 = *(v141 + 8);
          v143(v140, v142);
        }

        if (*(*(v0 + 1200) + *(*(v0 + 1184) + 76)))
        {
          IdentityProofingConsentFlow.manualReviewEnabledLivenessFlowItem.getter();
          IdentityProofingConsentFlow.manualReviewEnabledFedStatsFlowItem.getter();
          IdentityProofingConsentFlow.manualReviewDisabledFedStatsFlowItem.getter();
        }

        v148 = objc_allocWithZone(type metadata accessor for IdentityProofingFeatureEnablementConfig());
        *(v0 + 1432) = IdentityProofingFeatureEnablementConfig.init(manualReviewEnabledLivenessConsentFlowItem:manualReviewEnabledFedStatsConsentFlowItem:manualReviewDisabledFedStatsConsentFlowItem:)();
        defaultLogger()();
        v149 = Logger.logObject.getter();
        v150 = static os_log_type_t.debug.getter();
        v151 = os_log_type_enabled(v149, v150);
        v152 = *(v0 + 1104);
        v153 = *(v0 + 1088);
        if (v151)
        {
          v154 = *(v0 + 746);
          v172 = v143;
          v155 = *(v0 + 745);
          v156 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          v173[0] = v157;
          *v156 = 136315650;
          *(v156 + 4) = sub_100141FE4(0xD000000000000057, 0x8000000100703E60, v173);
          *(v156 + 12) = 1024;
          *(v156 + 14) = v155;
          *(v156 + 18) = 1024;
          *(v156 + 20) = v154;
          _os_log_impl(&_mh_execute_header, v149, v150, "%s isWatchModeOnly = %{BOOL}d, isDeviceMigration = %{BOOL}d", v156, 0x18u);
          sub_10000BB78(v157);

          v172(v152, v153);
        }

        else
        {

          v143(v152, v153);
        }

        v158 = *(v0 + 1200);
        *(v0 + 1440) = *(*(v0 + 1032) + 136);
        v159 = *(v158 + 64);

        v160 = IdentityProofingConfiguration.documentType.getter();
        v161 = swift_task_alloc();
        *(v0 + 1448) = v161;
        *v161 = v0;
        v161[1] = sub_10019F2B4;
        v162 = *(v0 + 1080);

        return sub_1002A77FC(v162, v159, v160);
      }

      v136 = *(v0 + 1056);
      v137 = *(v0 + 1048);
      v138 = *(v0 + 1040);

      sub_10000BE18(v4, &qword_100835910, &qword_1006C1B68);

      (*(v137 + 104))(v136, enum case for DIPError.Code.invalidStaticWorkflow(_:), v138);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_90:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_1001A1FAC(v1);
      (*(*(v0 + 1048) + 104))(*(v0 + 1056), enum case for DIPError.Code.internalError(_:), *(v0 + 1040));
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v139 = *(v0 + 8);

      return v139();
    }

    memmove(v164, v19, 0x39uLL);
    *(v0 + 1264) = v7;
    v3 = *(v0 + 1248);
    if (v7 >= *(v3 + 16))
    {
      goto LABEL_69;
    }
  }

  v50 = 0;
  while (1)
  {
    *(v0 + 1304) = v50;
    *(v0 + 1296) = v4;
    v51 = &v46[14 * v50];
    v52 = v51[5];
    v53 = v51[6];
    v54 = v51[8];
    *(v0 + 320) = v51[7];
    *(v0 + 336) = v54;
    *(v0 + 304) = v53;
    v55 = v51[3];
    v56 = v51[4];
    *(v0 + 240) = v51[2];
    *(v0 + 256) = v55;
    *(v0 + 272) = v56;
    *(v0 + 288) = v52;
    v58 = *(v0 + 312);
    v57 = *(v0 + 320);
    if (v57 && (v58 == 0xD00000000000001ELL && 0x8000000100703F80 == v57 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v58 == 0xD000000000000017 && 0x8000000100703FA0 == v57 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v58 == 0xD000000000000016 && 0x8000000100703FC0 == v57 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      sub_1000F01B0(v0 + 240, v0 + 464);
      defaultLogger()();
      sub_1000F01B0(v0 + 240, v0 + 576);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      sub_1000F01E8(v0 + 240);
      v61 = os_log_type_enabled(v59, v60);
      v169 = *(v0 + 1272);
      v62 = *(v0 + 1144);
      v63 = *(v0 + 1088);
      if (v61)
      {
        v64 = swift_slowAlloc();
        v166 = v4;
        v65 = swift_slowAlloc();
        v173[0] = v65;
        *v64 = 136315138;

        sub_1000F01E8(v0 + 240);
        v66 = sub_100141FE4(v58, v57, v173);

        *(v64 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v59, v60, "IdentityProofingDisplayManager skipping mapping deprecated page: %s", v64, 0xCu);
        sub_10000BB78(v65);
        v4 = v166;
      }

      else
      {
        sub_1000F01E8(v0 + 240);
      }

      v169(v62, v63);
      goto LABEL_61;
    }

    *(v0 + 1312) = sub_100308788(v58, v57);
    *(v0 + 1320) = v67;
    v68 = objc_opt_self();
    sub_1000F01B0(v0 + 240, v0 + 352);
    v69 = [v68 standardUserDefaults];
    v70._countAndFlagsBits = static DaemonInternalDefaultsKeys.addXMASWatchStrings.getter();
    v71 = NSUserDefaults.internalBool(forKey:)(v70);

    if (v71)
    {
      break;
    }

    v72 = *(v0 + 344);
    *(v0 + 1360) = v72;
    if (v72)
    {

      defaultLogger()();

      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = *(v0 + 1320);
        v113 = *(v0 + 1312);
        v168 = *(v0 + 1128);
        v170 = *(v0 + 1272);
        v114 = *(v0 + 1088);
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v173[0] = v116;
        *v115 = 136315138;
        *(v115 + 4) = sub_100141FE4(v113, v112, v173);
        _os_log_impl(&_mh_execute_header, v110, v111, "Image assets field exists for the page -> %s", v115, 0xCu);
        sub_10000BB78(v116);

        v170(v168, v114);
      }

      else
      {
        v117 = *(v0 + 1272);
        v118 = *(v0 + 1128);
        v119 = *(v0 + 1088);

        v117(v118, v119);
      }

      *(v0 + 1368) = *(*(v0 + 1032) + 144);

      v120 = swift_task_alloc();
      *(v0 + 1376) = v120;
      *v120 = v0;
      v120[1] = sub_10019DBC8;
      v107 = *(v0 + 1216);
      v109 = *(v0 + 1208);
      v108 = v72;
      goto LABEL_79;
    }

    v73 = *(v0 + 280);
    if (*(v0 + 1312) == 0xD000000000000012 && 0x80000001006FE390 == *(v0 + 1320) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v73[2] >= 2uLL)
    {
      v74 = *(v0 + 1024);
      v75 = v73[6];
      v76 = v73[7];

      sub_1001B286C(v74, v75, v76);
    }

    v77 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());

    v78 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    sub_1000F01E8(v0 + 240);
    defaultLogger()();
    v79 = v78;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();

    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 1272);
    v84 = *(v0 + 1120);
    v85 = *(v0 + 1088);
    if (v82)
    {
      v167 = *(v0 + 1272);
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v173[0] = v87;
      *v86 = 136446210;
      v88 = IdentityProofingUIConfig.view.getter();
      v90 = sub_100141FE4(v88, v89, v173);

      *(v86 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v80, v81, "%{public}s to be shown to the user from static views", v86, 0xCu);
      sub_10000BB78(v87);

      v167(v84, v85);
    }

    else
    {

      v83(v84, v85);
    }

    v91 = v79;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v165 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v165 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v4 = *v165;
LABEL_61:
    v50 = *(v0 + 1304) + 1;
    v46 = *(v0 + 1280);
    if (v50 == *(v0 + 1288))
    {

      goto LABEL_66;
    }

    if (v50 >= v46[2])
    {
      __break(1u);
      goto LABEL_104;
    }
  }

  defaultLogger()();
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    *v101 = 0;
    _os_log_impl(&_mh_execute_header, v99, v100, "Adding assets to the page as the internal setting is switched on", v101, 2u);
  }

  v102 = *(v0 + 1272);
  v103 = *(v0 + 1136);
  v104 = *(v0 + 1088);
  v105 = *(v0 + 1032);

  v102(v103, v104);
  *(v0 + 1328) = *(v105 + 144);

  v106 = swift_task_alloc();
  *(v0 + 1336) = v106;
  *v106 = v0;
  v106[1] = sub_10019C4D8;
  v107 = *(v0 + 1216);
  v108 = &off_1007FB260;
  v109 = *(v0 + 1208);
LABEL_79:

  return sub_10026F6BC(v109, v107, v108);
}

uint64_t sub_10019C4D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1344) = v1;

  if (v1)
  {

    sub_1000F01E8(v4 + 240);
    sub_10009FBA8(v4 + 16);
    sub_10004D860(&unk_1007FB280);

    v5 = sub_10019FDC8;
  }

  else
  {
    *(v4 + 1352) = a1;
    sub_10004D860(&unk_1007FB280);
    v5 = sub_10019C66C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10019C66C()
{
  v182 = v0;
  v174 = (v0 + 752);
  v1 = (v0 + 816);
  v2 = (v0 + 880);
  v177 = *(v0 + 1352);
  v167 = (v0 + 1008);
LABEL_2:
  v3 = *(v0 + 344);
  *(v0 + 1360) = v3;
  if (!v3)
  {
    v4 = *(v0 + 280);
    v5 = *(v0 + 1312) == 0xD000000000000012 && 0x80000001006FE390 == *(v0 + 1320);
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v4[2] >= 2uLL)
    {
      v6 = *(v0 + 1024);
      v7 = v4[6];
      v8 = v4[7];

      sub_1001B286C(v6, v7, v8);
    }

    v9 = *(v0 + 336);
    v168 = *(v0 + 328);
    objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());

    LOBYTE(v166) = 1;
    v165 = v177;
    LOBYTE(v164) = 1;
    LOBYTE(v163) = 1;
    v162 = v9;
    v161 = v4;
    v10 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    sub_1000F01E8(v0 + 240);
    defaultLogger()();
    v11 = v10;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 1272);
    v16 = *(v0 + 1120);
    v17 = *(v0 + 1088);
    if (v14)
    {
      v172 = *(v0 + 1120);
      v18 = swift_slowAlloc();
      v171 = v17;
      v19 = swift_slowAlloc();
      v181[0] = v19;
      *v18 = 136446210;
      v20 = IdentityProofingUIConfig.view.getter();
      v169 = v15;
      v22 = sub_100141FE4(v20, v21, v181);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s to be shown to the user from static views", v18, 0xCu);
      sub_10000BB78(v19);

      v169(v172, v171);
    }

    else
    {

      v15(v16, v17);
    }

    v23 = v11;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v167 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v167 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v175 = *v167;
    while (1)
    {
      v24 = *(v0 + 1304) + 1;
      v25 = *(v0 + 1280);
      if (v24 == *(v0 + 1288))
      {
        break;
      }

      if (v24 >= v25[2])
      {
        __break(1u);
LABEL_99:
        v98 = _CocoaArrayWrapper.endIndex.getter();
LABEL_69:
        v99 = *(v0 + 1200);
        if (v98 < 1)
        {
          v111 = *(v0 + 1056);
          v112 = *(v0 + 1048);
          v113 = *(v0 + 1040);

          sub_10000BE18(v174, &qword_100835910, &qword_1006C1B68);

          (*(v112 + 104))(v111, enum case for DIPError.Code.invalidStaticWorkflow(_:), v113);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_1001A1FAC(v99);
          (*(*(v0 + 1048) + 104))(*(v0 + 1056), enum case for DIPError.Code.internalError(_:), *(v0 + 1040));
          swift_errorRetain();
          sub_1000402AC(_swiftEmptyArrayStorage);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          v114 = *(v0 + 8);

          return v114();
        }

        else
        {
          v100 = *(v0 + 1192);
          defaultLogger()();
          sub_1001A2050(v99, v100);
          v101 = Logger.logObject.getter();
          v102 = static os_log_type_t.debug.getter();
          v103 = os_log_type_enabled(v101, v102);
          v104 = *(v0 + 1192);
          if (v103)
          {
            v105 = *(v0 + 1184);
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            v181[0] = v107;
            *v106 = 136315138;
            v108 = (v104 + *(v105 + 44));
            if (v108[1])
            {
              v109 = *v108;
              v110 = v108[1];
            }

            else
            {
              v110 = 0xE300000000000000;
              v109 = 7104878;
            }

            v120 = *(v0 + 1192);
            v178 = *(v0 + 1112);
            v121 = *(v0 + 1096);
            v122 = *(v0 + 1088);

            sub_1001A1FAC(v120);
            v123 = sub_100141FE4(v109, v110, v181);

            *(v106 + 4) = v123;
            _os_log_impl(&_mh_execute_header, v101, v102, "The learnMoreURL is %s", v106, 0xCu);
            sub_10000BB78(v107);

            v119 = *(v121 + 8);
            v119(v178, v122);
          }

          else
          {
            v116 = *(v0 + 1112);
            v117 = *(v0 + 1096);
            v118 = *(v0 + 1088);

            sub_1001A1FAC(v104);
            v119 = *(v117 + 8);
            v119(v116, v118);
          }

          if (*(*(v0 + 1200) + *(*(v0 + 1184) + 76)))
          {
            IdentityProofingConsentFlow.manualReviewEnabledLivenessFlowItem.getter();
            IdentityProofingConsentFlow.manualReviewEnabledFedStatsFlowItem.getter();
            IdentityProofingConsentFlow.manualReviewDisabledFedStatsFlowItem.getter();
          }

          v124 = objc_allocWithZone(type metadata accessor for IdentityProofingFeatureEnablementConfig());
          *(v0 + 1432) = IdentityProofingFeatureEnablementConfig.init(manualReviewEnabledLivenessConsentFlowItem:manualReviewEnabledFedStatsConsentFlowItem:manualReviewDisabledFedStatsConsentFlowItem:)();
          defaultLogger()();
          v125 = Logger.logObject.getter();
          v126 = static os_log_type_t.debug.getter();
          v127 = os_log_type_enabled(v125, v126);
          v128 = *(v0 + 1104);
          v129 = *(v0 + 1088);
          if (v127)
          {
            v130 = *(v0 + 746);
            v179 = v119;
            v131 = *(v0 + 745);
            v132 = swift_slowAlloc();
            v133 = swift_slowAlloc();
            v181[0] = v133;
            *v132 = 136315650;
            *(v132 + 4) = sub_100141FE4(0xD000000000000057, 0x8000000100703E60, v181);
            *(v132 + 12) = 1024;
            *(v132 + 14) = v131;
            *(v132 + 18) = 1024;
            *(v132 + 20) = v130;
            _os_log_impl(&_mh_execute_header, v125, v126, "%s isWatchModeOnly = %{BOOL}d, isDeviceMigration = %{BOOL}d", v132, 0x18u);
            sub_10000BB78(v133);

            v179(v128, v129);
          }

          else
          {

            v119(v128, v129);
          }

          v134 = *(v0 + 1200);
          *(v0 + 1440) = *(*(v0 + 1032) + 136);
          v135 = *(v134 + 64);

          v136 = IdentityProofingConfiguration.documentType.getter();
          v137 = swift_task_alloc();
          *(v0 + 1448) = v137;
          *v137 = v0;
          v137[1] = sub_10019F2B4;
          v138 = *(v0 + 1080);

          return sub_1002A77FC(v138, v135, v136);
        }
      }

LABEL_51:
      *(v0 + 1304) = v24;
      *(v0 + 1296) = v175;
      v74 = &v25[14 * v24];
      v75 = v74[5];
      v76 = v74[6];
      v77 = v74[8];
      *(v0 + 320) = v74[7];
      *(v0 + 336) = v77;
      *(v0 + 304) = v76;
      v78 = v74[3];
      v79 = v74[4];
      *(v0 + 240) = v74[2];
      *(v0 + 256) = v78;
      *(v0 + 272) = v79;
      *(v0 + 288) = v75;
      v80 = *(v0 + 312);
      v81 = *(v0 + 320);
      if (!v81 || (v80 != 0xD00000000000001ELL || 0x8000000100703F80 != v81) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v80 != 0xD000000000000017 || 0x8000000100703FA0 != v81) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v80 != 0xD000000000000016 || 0x8000000100703FC0 != v81) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        *(v0 + 1312) = sub_100308788(v80, v81);
        *(v0 + 1320) = v90;
        v91 = objc_opt_self();
        sub_1000F01B0(v0 + 240, v0 + 352);
        v92 = [v91 standardUserDefaults];
        v93._countAndFlagsBits = static DaemonInternalDefaultsKeys.addXMASWatchStrings.getter();
        v94 = NSUserDefaults.internalBool(forKey:)(v93);

        if (!v94)
        {
          goto LABEL_2;
        }

LABEL_95:

        defaultLogger()();
        v153 = Logger.logObject.getter();
        v154 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v153, v154))
        {
          v155 = swift_slowAlloc();
          *v155 = 0;
          _os_log_impl(&_mh_execute_header, v153, v154, "Adding assets to the page as the internal setting is switched on", v155, 2u);
        }

        v156 = *(v0 + 1272);
        v157 = *(v0 + 1136);
        v158 = *(v0 + 1088);
        v159 = *(v0 + 1032);

        v156(v157, v158);
        *(v0 + 1328) = *(v159 + 144);

        v160 = swift_task_alloc();
        *(v0 + 1336) = v160;
        *v160 = v0;
        v160[1] = sub_10019C4D8;
        v150 = *(v0 + 1216);
        v152 = &off_1007FB260;
        v151 = *(v0 + 1208);
        goto LABEL_91;
      }

      sub_1000F01B0(v0 + 240, v0 + 464);
      defaultLogger()();
      sub_1000F01B0(v0 + 240, v0 + 576);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.debug.getter();
      sub_1000F01E8(v0 + 240);
      v84 = os_log_type_enabled(v82, v83);
      v85 = *(v0 + 1272);
      v86 = *(v0 + 1088);
      v173 = *(v0 + 1144);
      if (v84)
      {
        v170 = *(v0 + 1272);
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v181[0] = v88;
        *v87 = 136315138;

        sub_1000F01E8(v0 + 240);
        v89 = sub_100141FE4(v80, v81, v181);

        *(v87 + 4) = v89;
        _os_log_impl(&_mh_execute_header, v82, v83, "IdentityProofingDisplayManager skipping mapping deprecated page: %s", v87, 0xCu);
        sub_10000BB78(v88);

        v170(v173, v86);
      }

      else
      {
        sub_1000F01E8(v0 + 240);

        v85(v173, v86);
      }
    }

LABEL_18:
    *(v0 + 1016) = *(v0 + 32);
    sub_10000BBC4(v0 + 48, v0 + 944, &qword_100835910, &qword_1006C1B68);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_10009FBA8(v0 + 16);
    v29 = *(v0 + 1256);
    v30 = *(v0 + 1264) + 1;
    v31 = *(v0 + 64);
    *v2 = *(v0 + 48);
    *(v0 + 896) = v31;
    *(v0 + 912) = *(v0 + 80);
    for (i = *(v0 + 89); ; i = *(v0 + 857))
    {
      *(v0 + 921) = i;
      if (v30 == v29)
      {
        break;
      }

      v34 = *(v0 + 896);
      *v1 = *v2;
      *(v0 + 832) = v34;
      *(v0 + 848) = *(v0 + 912);
      *(v0 + 857) = *(v0 + 921);
      *(v0 + 1264) = v30;
      v35 = *(v0 + 1248);
      if (v30 >= *(v35 + 16))
      {
        __break(1u);
        goto LABEL_95;
      }

      v36 = (v35 + 112 * v30);
      v38 = v36[3];
      v37 = v36[4];
      *(v0 + 16) = v36[2];
      *(v0 + 32) = v38;
      *(v0 + 48) = v37;
      v39 = v36[8];
      v41 = v36[5];
      v40 = v36[6];
      *(v0 + 96) = v36[7];
      *(v0 + 112) = v39;
      *(v0 + 64) = v41;
      *(v0 + 80) = v40;
      v43 = *(v0 + 16);
      v42 = *(v0 + 24);

      sub_10009FB70(v0 + 16, v0 + 128);
      v44 = IdentityProofingConfiguration.state.getter();
      if (v45)
      {
        if (v43 == v44 && v45 == v42)
        {

LABEL_29:

          v47 = *(v0 + 745);
          sub_10000BE18(v0 + 816, &qword_100835910, &qword_1006C1B68);
          if (v47 == 1)
          {
            if (*(v0 + 746))
            {
              v48 = (v0 + 1176);
              defaultLogger()();
              v49 = Logger.logObject.getter();
              v50 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v49, v50))
              {
                v51 = swift_slowAlloc();
                *v51 = 0;
                v52 = v50;
                v53 = v49;
                v54 = "Preparing UI for watch device migration flow";
                goto LABEL_39;
              }

LABEL_43:
              v64 = *v48;
            }

            else
            {
              v48 = (v0 + 1168);
              defaultLogger()();
              v49 = Logger.logObject.getter();
              v63 = static os_log_type_t.debug.getter();
              if (!os_log_type_enabled(v49, v63))
              {
                goto LABEL_43;
              }

              v51 = swift_slowAlloc();
              *v51 = 0;
              v52 = v63;
              v53 = v49;
              v54 = "Preparing UI from static workflow for watch";
LABEL_39:
              _os_log_impl(&_mh_execute_header, v53, v52, v54, v51, 2u);
              v64 = *v48;
            }

            v71 = *(v0 + 1096);
            v72 = *(v0 + 1088);

            v61 = *(v71 + 8);
            v61(v64, v72);
            v62 = *(v0 + 112);
LABEL_45:
            if (v62)
            {
              v25 = v62;
            }

            else
            {
              v25 = _swiftEmptyArrayStorage;
            }
          }

          else
          {
            if (*(v0 + 746))
            {
              defaultLogger()();
              v55 = Logger.logObject.getter();
              v56 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v55, v56))
              {
                v57 = swift_slowAlloc();
                *v57 = 0;
                _os_log_impl(&_mh_execute_header, v55, v56, "Preparing UI from static workflow for device migration", v57, 2u);
              }

              v58 = *(v0 + 1160);
              v59 = *(v0 + 1096);
              v60 = *(v0 + 1088);

              v61 = *(v59 + 8);
              v61(v58, v60);
              v62 = *(v0 + 120);
              goto LABEL_45;
            }

            defaultLogger()();
            v65 = Logger.logObject.getter();
            v66 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              *v67 = 0;
              _os_log_impl(&_mh_execute_header, v65, v66, "Preparing UI from static workflow for phone", v67, 2u);
            }

            v68 = *(v0 + 1152);
            v69 = *(v0 + 1096);
            v70 = *(v0 + 1088);

            v61 = *(v69 + 8);
            v61(v68, v70);
            v25 = *(v0 + 40);
          }

          *(v0 + 1280) = v25;
          *(v0 + 1272) = v61;
          v73 = v25[2];
          *(v0 + 1288) = v73;

          if (!v73)
          {

            goto LABEL_18;
          }

          v24 = 0;
          v177 = _swiftEmptyArrayStorage;
          goto LABEL_51;
        }

        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v46)
        {
          goto LABEL_29;
        }

        sub_10009FBA8(v0 + 16);
      }

      else
      {
        sub_10009FBA8(v0 + 16);
      }

      v29 = *(v0 + 1256);
      v30 = *(v0 + 1264) + 1;
      v33 = *(v0 + 832);
      *v2 = *v1;
      *(v0 + 896) = v33;
      *(v0 + 912) = *(v0 + 848);
    }

    v96 = *(v0 + 896);
    v95 = *(v0 + 912);
    *(v0 + 768) = v96;
    *(v0 + 784) = v95;
    *(v0 + 793) = *(v0 + 921);
    v97 = *v2;
    *v174 = *v2;
    *(v0 + 1424) = v175;
    *(v0 + 1416) = v175;
    *(v0 + 1408) = v28;
    *(v0 + 1400) = v26;
    *(v0 + 688) = v97;
    *(v0 + 704) = v96;
    *(v0 + 720) = *(v0 + 784);
    *(v0 + 729) = *(v0 + 793);
    if (v175 >> 62)
    {
      goto LABEL_99;
    }

    v98 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_69;
  }

  defaultLogger()();

  v139 = Logger.logObject.getter();
  v140 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v139, v140))
  {
    v141 = *(v0 + 1320);
    v142 = *(v0 + 1312);
    v176 = *(v0 + 1128);
    v180 = *(v0 + 1272);
    v143 = *(v0 + 1088);
    v144 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v181[0] = v145;
    *v144 = 136315138;
    *(v144 + 4) = sub_100141FE4(v142, v141, v181);
    _os_log_impl(&_mh_execute_header, v139, v140, "Image assets field exists for the page -> %s", v144, 0xCu);
    sub_10000BB78(v145);

    v180(v176, v143);
  }

  else
  {
    v146 = *(v0 + 1272);
    v147 = *(v0 + 1128);
    v148 = *(v0 + 1088);

    v146(v147, v148);
  }

  *(v0 + 1368) = *(*(v0 + 1032) + 144);

  v149 = swift_task_alloc();
  *(v0 + 1376) = v149;
  *v149 = v0;
  v149[1] = sub_10019DBC8;
  v150 = *(v0 + 1216);
  v151 = *(v0 + 1208);
  v152 = v3;
LABEL_91:

  return sub_10026F6BC(v151, v150, v152);
}

uint64_t sub_10019DBC8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1384) = v1;

  if (v1)
  {

    sub_10009FBA8(v4 + 16);
    sub_1000F01E8(v4 + 240);

    v5 = sub_1001A0024;
  }

  else
  {
    *(v4 + 1392) = a1;
    v5 = sub_10019DD5C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10019DD5C()
{
  v183 = v0;
  v175 = (v0 + 752);
  v1 = (v0 + 816);
  v2 = (v0 + 880);
  v178 = *(v0 + 1392);
  v168 = (v0 + 1008);
  while (2)
  {
    v3 = *(v0 + 280);
    v4 = *(v0 + 1312) == 0xD000000000000012 && 0x80000001006FE390 == *(v0 + 1320);
    if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v3[2] >= 2uLL)
    {
      v5 = *(v0 + 1024);
      v6 = v3[6];
      v7 = v3[7];

      sub_1001B286C(v5, v6, v7);
    }

    v8 = *(v0 + 336);
    v169 = *(v0 + 328);
    objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());

    LOBYTE(v167) = 1;
    v166 = v178;
    LOBYTE(v165) = 1;
    LOBYTE(v164) = 1;
    v163 = v8;
    v162 = v3;
    v9 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    sub_1000F01E8(v0 + 240);
    defaultLogger()();
    v10 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 1272);
    v15 = *(v0 + 1120);
    v16 = *(v0 + 1088);
    if (v13)
    {
      v173 = *(v0 + 1120);
      v17 = swift_slowAlloc();
      v172 = v16;
      v18 = swift_slowAlloc();
      v182[0] = v18;
      *v17 = 136446210;
      v19 = IdentityProofingUIConfig.view.getter();
      v170 = v14;
      v21 = sub_100141FE4(v19, v20, v182);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s to be shown to the user from static views", v17, 0xCu);
      sub_10000BB78(v18);

      v170(v173, v172);
    }

    else
    {

      v14(v15, v16);
    }

    v22 = v10;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v168 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v168 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v176 = *v168;
    while (1)
    {
      v23 = *(v0 + 1304) + 1;
      v24 = *(v0 + 1280);
      if (v23 == *(v0 + 1288))
      {

LABEL_17:
        *(v0 + 1016) = *(v0 + 32);
        sub_10000BBC4(v0 + 48, v0 + 944, &qword_100835910, &qword_1006C1B68);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        sub_10009FBA8(v0 + 16);
        v28 = *(v0 + 1256);
        v29 = *(v0 + 1264) + 1;
        v30 = *(v0 + 64);
        *v2 = *(v0 + 48);
        *(v0 + 896) = v30;
        *(v0 + 912) = *(v0 + 80);
        for (i = *(v0 + 89); ; i = *(v0 + 857))
        {
          *(v0 + 921) = i;
          if (v29 == v28)
          {
            break;
          }

          v33 = *(v0 + 896);
          *v1 = *v2;
          *(v0 + 832) = v33;
          *(v0 + 848) = *(v0 + 912);
          *(v0 + 857) = *(v0 + 921);
          *(v0 + 1264) = v29;
          v34 = *(v0 + 1248);
          if (v29 >= *(v34 + 16))
          {
            __break(1u);
            goto LABEL_88;
          }

          v35 = (v34 + 112 * v29);
          v37 = v35[3];
          v36 = v35[4];
          *(v0 + 16) = v35[2];
          *(v0 + 32) = v37;
          *(v0 + 48) = v36;
          v38 = v35[8];
          v40 = v35[5];
          v39 = v35[6];
          *(v0 + 96) = v35[7];
          *(v0 + 112) = v38;
          *(v0 + 64) = v40;
          *(v0 + 80) = v39;
          v42 = *(v0 + 16);
          v41 = *(v0 + 24);

          sub_10009FB70(v0 + 16, v0 + 128);
          v43 = IdentityProofingConfiguration.state.getter();
          if (v44)
          {
            if (v42 == v43 && v44 == v41)
            {

LABEL_28:

              v46 = *(v0 + 745);
              sub_10000BE18(v0 + 816, &qword_100835910, &qword_1006C1B68);
              if (v46 == 1)
              {
                v47 = (v0 + 1168);
                if (*(v0 + 746))
                {
                  v47 = (v0 + 1176);
                  defaultLogger()();
                  v48 = Logger.logObject.getter();
                  v49 = static os_log_type_t.debug.getter();
                  if (os_log_type_enabled(v48, v49))
                  {
                    v50 = swift_slowAlloc();
                    *v50 = 0;
                    v51 = v49;
                    v52 = v48;
                    v53 = "Preparing UI for watch device migration flow";
                    goto LABEL_38;
                  }

LABEL_42:
                  v63 = *v47;
                }

                else
                {
                  defaultLogger()();
                  v48 = Logger.logObject.getter();
                  v62 = static os_log_type_t.debug.getter();
                  if (!os_log_type_enabled(v48, v62))
                  {
                    goto LABEL_42;
                  }

                  v50 = swift_slowAlloc();
                  *v50 = 0;
                  v51 = v62;
                  v52 = v48;
                  v53 = "Preparing UI from static workflow for watch";
LABEL_38:
                  _os_log_impl(&_mh_execute_header, v52, v51, v53, v50, 2u);
                  v63 = *v47;
                }

                v70 = *(v0 + 1096);
                v71 = *(v0 + 1088);

                v60 = *(v70 + 8);
                v60(v63, v71);
                v61 = *(v0 + 112);
LABEL_44:
                if (v61)
                {
                  v24 = v61;
                }

                else
                {
                  v24 = _swiftEmptyArrayStorage;
                }
              }

              else
              {
                if (*(v0 + 746))
                {
                  defaultLogger()();
                  v54 = Logger.logObject.getter();
                  v55 = static os_log_type_t.debug.getter();
                  if (os_log_type_enabled(v54, v55))
                  {
                    v56 = swift_slowAlloc();
                    *v56 = 0;
                    _os_log_impl(&_mh_execute_header, v54, v55, "Preparing UI from static workflow for device migration", v56, 2u);
                  }

                  v57 = *(v0 + 1160);
                  v58 = *(v0 + 1096);
                  v59 = *(v0 + 1088);

                  v60 = *(v58 + 8);
                  v60(v57, v59);
                  v61 = *(v0 + 120);
                  goto LABEL_44;
                }

                defaultLogger()();
                v64 = Logger.logObject.getter();
                v65 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v64, v65))
                {
                  v66 = swift_slowAlloc();
                  *v66 = 0;
                  _os_log_impl(&_mh_execute_header, v64, v65, "Preparing UI from static workflow for phone", v66, 2u);
                }

                v67 = *(v0 + 1152);
                v68 = *(v0 + 1096);
                v69 = *(v0 + 1088);

                v60 = *(v68 + 8);
                v60(v67, v69);
                v24 = *(v0 + 40);
              }

              *(v0 + 1280) = v24;
              *(v0 + 1272) = v60;
              v72 = v24[2];
              *(v0 + 1288) = v72;

              if (!v72)
              {

                goto LABEL_17;
              }

              v23 = 0;
              v178 = _swiftEmptyArrayStorage;
              goto LABEL_50;
            }

            v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v45)
            {
              goto LABEL_28;
            }

            sub_10009FBA8(v0 + 16);
          }

          else
          {
            sub_10009FBA8(v0 + 16);
          }

          v28 = *(v0 + 1256);
          v29 = *(v0 + 1264) + 1;
          v32 = *(v0 + 832);
          *v2 = *v1;
          *(v0 + 896) = v32;
          *(v0 + 912) = *(v0 + 848);
        }

        v96 = *(v0 + 896);
        v95 = *(v0 + 912);
        *(v0 + 768) = v96;
        *(v0 + 784) = v95;
        *(v0 + 793) = *(v0 + 921);
        v97 = *v2;
        *v175 = *v2;
        *(v0 + 1424) = v176;
        *(v0 + 1416) = v176;
        *(v0 + 1408) = v27;
        *(v0 + 1400) = v25;
        *(v0 + 688) = v97;
        *(v0 + 704) = v96;
        *(v0 + 720) = *(v0 + 784);
        *(v0 + 729) = *(v0 + 793);
        if (v176 >> 62)
        {
          goto LABEL_99;
        }

        v98 = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_69;
      }

      if (v23 >= v24[2])
      {
        __break(1u);
LABEL_99:
        v98 = _CocoaArrayWrapper.endIndex.getter();
LABEL_69:
        v99 = *(v0 + 1200);
        if (v98 < 1)
        {
          v111 = *(v0 + 1056);
          v112 = *(v0 + 1048);
          v113 = *(v0 + 1040);

          sub_10000BE18(v175, &qword_100835910, &qword_1006C1B68);

          (*(v112 + 104))(v111, enum case for DIPError.Code.invalidStaticWorkflow(_:), v113);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          sub_1001A1FAC(v99);
          (*(*(v0 + 1048) + 104))(*(v0 + 1056), enum case for DIPError.Code.internalError(_:), *(v0 + 1040));
          swift_errorRetain();
          sub_1000402AC(_swiftEmptyArrayStorage);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          v114 = *(v0 + 8);

          return v114();
        }

        else
        {
          v100 = *(v0 + 1192);
          defaultLogger()();
          sub_1001A2050(v99, v100);
          v101 = Logger.logObject.getter();
          v102 = static os_log_type_t.debug.getter();
          v103 = os_log_type_enabled(v101, v102);
          v104 = *(v0 + 1192);
          if (v103)
          {
            v105 = *(v0 + 1184);
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            v182[0] = v107;
            *v106 = 136315138;
            v108 = (v104 + *(v105 + 44));
            if (v108[1])
            {
              v109 = *v108;
              v110 = v108[1];
            }

            else
            {
              v110 = 0xE300000000000000;
              v109 = 7104878;
            }

            v120 = *(v0 + 1192);
            v179 = *(v0 + 1112);
            v121 = *(v0 + 1096);
            v122 = *(v0 + 1088);

            sub_1001A1FAC(v120);
            v123 = sub_100141FE4(v109, v110, v182);

            *(v106 + 4) = v123;
            _os_log_impl(&_mh_execute_header, v101, v102, "The learnMoreURL is %s", v106, 0xCu);
            sub_10000BB78(v107);

            v119 = *(v121 + 8);
            v119(v179, v122);
          }

          else
          {
            v116 = *(v0 + 1112);
            v117 = *(v0 + 1096);
            v118 = *(v0 + 1088);

            sub_1001A1FAC(v104);
            v119 = *(v117 + 8);
            v119(v116, v118);
          }

          if (*(*(v0 + 1200) + *(*(v0 + 1184) + 76)))
          {
            IdentityProofingConsentFlow.manualReviewEnabledLivenessFlowItem.getter();
            IdentityProofingConsentFlow.manualReviewEnabledFedStatsFlowItem.getter();
            IdentityProofingConsentFlow.manualReviewDisabledFedStatsFlowItem.getter();
          }

          v124 = objc_allocWithZone(type metadata accessor for IdentityProofingFeatureEnablementConfig());
          *(v0 + 1432) = IdentityProofingFeatureEnablementConfig.init(manualReviewEnabledLivenessConsentFlowItem:manualReviewEnabledFedStatsConsentFlowItem:manualReviewDisabledFedStatsConsentFlowItem:)();
          defaultLogger()();
          v125 = Logger.logObject.getter();
          v126 = static os_log_type_t.debug.getter();
          v127 = os_log_type_enabled(v125, v126);
          v128 = *(v0 + 1104);
          v129 = *(v0 + 1088);
          if (v127)
          {
            v130 = *(v0 + 746);
            v180 = v119;
            v131 = *(v0 + 745);
            v132 = swift_slowAlloc();
            v133 = swift_slowAlloc();
            v182[0] = v133;
            *v132 = 136315650;
            *(v132 + 4) = sub_100141FE4(0xD000000000000057, 0x8000000100703E60, v182);
            *(v132 + 12) = 1024;
            *(v132 + 14) = v131;
            *(v132 + 18) = 1024;
            *(v132 + 20) = v130;
            _os_log_impl(&_mh_execute_header, v125, v126, "%s isWatchModeOnly = %{BOOL}d, isDeviceMigration = %{BOOL}d", v132, 0x18u);
            sub_10000BB78(v133);

            v180(v128, v129);
          }

          else
          {

            v119(v128, v129);
          }

          v134 = *(v0 + 1200);
          *(v0 + 1440) = *(*(v0 + 1032) + 136);
          v135 = *(v134 + 64);

          v136 = IdentityProofingConfiguration.documentType.getter();
          v137 = swift_task_alloc();
          *(v0 + 1448) = v137;
          *v137 = v0;
          v137[1] = sub_10019F2B4;
          v138 = *(v0 + 1080);

          return sub_1002A77FC(v138, v135, v136);
        }
      }

LABEL_50:
      *(v0 + 1304) = v23;
      *(v0 + 1296) = v176;
      v73 = &v24[14 * v23];
      v74 = v73[5];
      v75 = v73[6];
      v76 = v73[8];
      *(v0 + 320) = v73[7];
      *(v0 + 336) = v76;
      *(v0 + 304) = v75;
      v77 = v73[3];
      v78 = v73[4];
      *(v0 + 240) = v73[2];
      *(v0 + 256) = v77;
      *(v0 + 272) = v78;
      *(v0 + 288) = v74;
      v79 = *(v0 + 312);
      v80 = *(v0 + 320);
      if (!v80 || (v79 != 0xD00000000000001ELL || 0x8000000100703F80 != v80) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v79 != 0xD000000000000017 || 0x8000000100703FA0 != v80) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v79 != 0xD000000000000016 || 0x8000000100703FC0 != v80) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      sub_1000F01B0(v0 + 240, v0 + 464);
      defaultLogger()();
      sub_1000F01B0(v0 + 240, v0 + 576);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();
      sub_1000F01E8(v0 + 240);
      v83 = os_log_type_enabled(v81, v82);
      v84 = *(v0 + 1272);
      v85 = *(v0 + 1088);
      v174 = *(v0 + 1144);
      if (v83)
      {
        v171 = *(v0 + 1272);
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v182[0] = v87;
        *v86 = 136315138;

        sub_1000F01E8(v0 + 240);
        v88 = sub_100141FE4(v79, v80, v182);

        *(v86 + 4) = v88;
        _os_log_impl(&_mh_execute_header, v81, v82, "IdentityProofingDisplayManager skipping mapping deprecated page: %s", v86, 0xCu);
        sub_10000BB78(v87);

        v171(v174, v85);
      }

      else
      {
        sub_1000F01E8(v0 + 240);

        v84(v174, v85);
      }
    }

    *(v0 + 1312) = sub_100308788(v79, v80);
    *(v0 + 1320) = v89;
    v90 = objc_opt_self();
    sub_1000F01B0(v0 + 240, v0 + 352);
    v91 = [v90 standardUserDefaults];
    v92._countAndFlagsBits = static DaemonInternalDefaultsKeys.addXMASWatchStrings.getter();
    v93 = NSUserDefaults.internalBool(forKey:)(v92);

    if (v93)
    {
LABEL_88:

      defaultLogger()();
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&_mh_execute_header, v139, v140, "Adding assets to the page as the internal setting is switched on", v141, 2u);
      }

      v142 = *(v0 + 1272);
      v143 = *(v0 + 1136);
      v144 = *(v0 + 1088);
      v145 = *(v0 + 1032);

      v142(v143, v144);
      *(v0 + 1328) = *(v145 + 144);

      v146 = swift_task_alloc();
      *(v0 + 1336) = v146;
      *v146 = v0;
      v146[1] = sub_10019C4D8;
      v147 = *(v0 + 1216);
      v148 = &off_1007FB260;
      v149 = *(v0 + 1208);
    }

    else
    {
      v94 = *(v0 + 344);
      *(v0 + 1360) = v94;
      if (!v94)
      {
        continue;
      }

      defaultLogger()();

      v150 = Logger.logObject.getter();
      v151 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v150, v151))
      {
        v153 = *(v0 + 1320);
        v154 = *(v0 + 1312);
        v177 = *(v0 + 1128);
        v181 = *(v0 + 1272);
        v155 = *(v0 + 1088);
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        v182[0] = v157;
        *v156 = 136315138;
        *(v156 + 4) = sub_100141FE4(v154, v153, v182);
        _os_log_impl(&_mh_execute_header, v150, v151, "Image assets field exists for the page -> %s", v156, 0xCu);
        sub_10000BB78(v157);

        v181(v177, v155);
      }

      else
      {
        v158 = *(v0 + 1272);
        v159 = *(v0 + 1128);
        v160 = *(v0 + 1088);

        v158(v159, v160);
      }

      *(v0 + 1368) = *(*(v0 + 1032) + 144);

      v161 = swift_task_alloc();
      *(v0 + 1376) = v161;
      *v161 = v0;
      v161[1] = sub_10019DBC8;
      v147 = *(v0 + 1216);
      v149 = *(v0 + 1208);
      v148 = v94;
    }

    break;
  }

  return sub_10026F6BC(v149, v147, v148);
}

uint64_t sub_10019F2B4()
{
  v2 = *v1;
  *(*v1 + 1456) = v0;

  if (v0)
  {

    sub_10000BE18(v2 + 752, &qword_100835910, &qword_1006C1B68);
    v3 = sub_10019F8D4;
  }

  else
  {
    v3 = sub_10019F3E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10019F3E8()
{
  v1 = v0[182];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A2008(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration, &protocol conformance descriptor for IdentityProofingAttributeConfiguration);
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    v2 = v0[135];
    v3 = v0[134];
    v4 = v0[133];

    sub_10000BE18((v0 + 94), &qword_100835910, &qword_1006C1B68);

    (*(v3 + 8))(v2, v4);

    v5 = v0[179];
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1006DAE90;
    v7 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
    *(v6 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

    IdentityProofingConfiguration.documentType.getter();
    v8 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v19 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
  }

  else
  {
    v9 = v0[176];
    v18 = v0[175];
    v10 = v0[135];
    v11 = v0[134];
    v12 = v0[133];

    (*(v11 + 8))(v10, v12);

    sub_1001A20B4(v0 + 86, v18, v9);

    sub_10000BE18((v0 + 94), &qword_100835910, &qword_1006C1B68);

    v13 = IdentityProofingConfiguration.credentialIdentifier.getter();
    sub_10019A284(v13, v14);

    v15 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v19 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
  }

  sub_1001A1FAC(v0[150]);

  v16 = v0[1];

  return v16(v19);
}

uint64_t sub_10019F8D4()
{

  v1 = v0[179];
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006DAE90;
  v3 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  *(v2 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

  IdentityProofingConfiguration.documentType.getter();
  v4 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v7 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

  sub_1001A1FAC(v0[150]);

  v5 = v0[1];

  return v5(v7);
}

uint64_t sub_10019FB74()
{
  (*(v0[131] + 104))(v0[132], enum case for DIPError.Code.internalError(_:), v0[130]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10019FDC8()
{
  sub_1001A1FAC(v0[150]);
  (*(v0[131] + 104))(v0[132], enum case for DIPError.Code.internalError(_:), v0[130]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001A0024()
{
  sub_1001A1FAC(v0[150]);
  (*(v0[131] + 104))(v0[132], enum case for DIPError.Code.internalError(_:), v0[130]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001A0280()
{

  return v0;
}

uint64_t sub_1001A0328()
{
  sub_1001A0280();

  return swift_deallocClassInstance();
}

char *sub_1001A0380()
{
  v0 = type metadata accessor for DIPError.Code();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  countAndFlagsBits = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IdentityDocumentType.Category();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    IdentityProofingConfiguration.state.getter();
    if (!v9)
    {
      (*(v1 + 104))(countAndFlagsBits, enum case for DIPError.Code.idStateUnavailable(_:), v0);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_9:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      return countAndFlagsBits;
    }
  }

  else
  {
    if (v8 != enum case for IdentityDocumentType.Category.passport(_:))
    {
      v13 = 0;
      v14 = 0xE000000000000000;
      _StringGuts.grow(_:)(42);

      v13 = 0xD000000000000028;
      v14 = 0x8000000100704540;
      IdentityProofingConfiguration.documentType.getter();
      v11._countAndFlagsBits = IdentityDocumentType.description.getter();
      String.append(_:)(v11);

      v15 = v13;
      (*(v1 + 104))(countAndFlagsBits, enum case for DIPError.Code.unableToCreateAssetReplacementID(_:), v0);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v5 + 8))(v7, v4);
      return countAndFlagsBits;
    }

    IdentityProofingConfiguration.country.getter();
    if (!v10)
    {
      (*(v1 + 104))(countAndFlagsBits, enum case for DIPError.Code.idCountryUnavailable(_:), v0);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_9;
    }
  }

  countAndFlagsBits = String.lowercased()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1001A08A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[14] = a7;
  v8[15] = v7;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a3;
  v8[11] = a4;
  v8[8] = a1;
  v8[9] = a2;
  v9 = type metadata accessor for IdentityProofingAttributeConfiguration();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  type metadata accessor for IdentityProofingStaticWorkflow(0);
  v8[19] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[20] = v10;
  v8[21] = *(v10 - 8);
  v8[22] = swift_task_alloc();

  return _swift_task_switch(sub_1001A09F4, 0, 0);
}

uint64_t sub_1001A09F4()
{
  v19 = v0;
  v1 = IdentityProofingActionStatus.rawValue.getter();
  if (v1 == IdentityProofingActionStatus.rawValue.getter())
  {
    v2 = 0xEE00776569766552;
    v3 = 0x6465646E65747865;
  }

  else
  {
    v4 = IdentityProofingActionStatus.rawValue.getter();
    v5 = IdentityProofingActionStatus.rawValue.getter();
    if (v4 == v5)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x676E69646E6570;
    }

    if (v4 == v5)
    {
      v2 = 0x8000000100703DC0;
    }

    else
    {
      v2 = 0xE700000000000000;
    }
  }

  v0[23] = v3;
  v0[24] = v2;
  defaultLogger()();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[20];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;

    v14 = sub_100141FE4(v3, v2, &v18);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Based on the action status, will show %s state UI.", v12, 0xCu);
    sub_10000BB78(v13);
  }

  (*(v10 + 8))(v9, v11);
  v0[25] = *(v0[15] + 152);

  v15 = swift_task_alloc();
  v0[26] = v15;
  *v15 = v0;
  v15[1] = sub_1001A0C54;
  v16 = v0[9];

  return sub_1001B20D0(v16);
}

uint64_t sub_1001A0C54(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 216) = v2;

  if (v2)
  {

    v7 = sub_1001A1A78;
  }

  else
  {

    *(v6 + 224) = a2;
    *(v6 + 232) = a1;
    v7 = sub_1001A0DB0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001A0DB0()
{
  v2 = v0[28];
  v1 = v0[29];
  v0[30] = *(v0[15] + 144);
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  inited = swift_initStackObject();
  v0[31] = inited;
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = v1;
  *(inited + 40) = v2;

  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = sub_1001A0EA0;
  v6 = v0[10];
  v5 = v0[11];

  return sub_10026F6BC(v6, v5, inited);
}

uint64_t sub_1001A0EA0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 264) = a1;
  *(v4 + 272) = v1;

  v5 = *(v3 + 248);
  if (v1)
  {
    swift_setDeallocating();
    sub_10004D860(v5 + 32);

    v6 = sub_1001A1C34;
  }

  else
  {

    swift_setDeallocating();
    sub_10004D860(v5 + 32);
    v6 = sub_1001A1030;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001A1030()
{
  v0[35] = *(v0[15] + 152);

  v1 = IdentityProofingConfiguration.documentType.getter();
  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_1001A10EC;
  v3 = v0[19];

  return sub_1001AA1E4(v3, v1);
}

uint64_t sub_1001A10EC()
{
  *(*v1 + 296) = v0;

  if (v0)
  {

    v2 = sub_1001A1DF0;
  }

  else
  {

    v2 = sub_1001A1240;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A1240()
{
  v1 = v0[19];
  v0[38] = *(v0[15] + 136);
  v2 = *(v1 + 64);

  v3 = IdentityProofingConfiguration.documentType.getter();
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_1001A1310;
  v5 = v0[18];

  return sub_1002A77FC(v5, v2, v3);
}

uint64_t sub_1001A1310()
{
  *(*v1 + 320) = v0;

  if (v0)
  {

    v2 = sub_1001A18AC;
  }

  else
  {
    v2 = sub_1001A1438;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A1438()
{
  v1 = v0[40];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A2008(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration, &protocol conformance descriptor for IdentityProofingAttributeConfiguration);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    v5 = v0[17];
    v4 = v0[18];
    v6 = v0[16];

    (*(v5 + 8))(v4, v6);

    sub_1001A1FAC(v0[19]);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1006DAE90;
    v8 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
    *(v7 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    IdentityProofingConfiguration.documentType.getter();
    v9 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v10 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
  }

  else
  {
    v22 = v2;
    v23 = v3;
    v11 = v0[17];
    v12 = v0[18];
    v13 = v0[16];

    (*(v11 + 8))(v12, v13);
    IdentityProofingDisplayMessage.title.getter();
    IdentityProofingDisplayMessage.url.getter();
    IdentityProofingDisplayMessage.primaryButtonTitle.getter();
    IdentityProofingDisplayMessage.secondaryButtonTitle.getter();
    IdentityProofingDisplayMessage.messages.getter();
    v14 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
    v15 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1006DAE90;
    *(v16 + 32) = v15;
    v17 = v15;
    IdentityProofingDisplayMessage.learnMoreURL.getter();
    if (!v18)
    {
    }

    v19 = v0[19];
    IdentityProofingConfiguration.documentType.getter();
    objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    sub_10000B8B8(v22, v23);
    v10 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

    sub_10000B90C(v22, v23);
    sub_1001A1FAC(v19);
  }

  v20 = v0[1];

  return v20(v10);
}

uint64_t sub_1001A18AC()
{

  sub_1001A1FAC(*(v0 + 152));
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006DAE90;
  v2 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  *(v1 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  IdentityProofingConfiguration.documentType.getter();
  v3 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v4 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1001A1A78()
{
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006DAE90;
  v2 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  *(v1 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  IdentityProofingConfiguration.documentType.getter();
  v3 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v4 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1001A1C34()
{
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006DAE90;
  v2 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  *(v1 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  IdentityProofingConfiguration.documentType.getter();
  v3 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v4 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1001A1DF0()
{
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006DAE90;
  v2 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  *(v1 + 32) = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  IdentityProofingConfiguration.documentType.getter();
  v3 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
  v4 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1001A1FAC(uint64_t a1)
{
  v2 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A2008(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001A2050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A20B4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[4];
  v23 = a2;
  v24 = v4;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Workflow did not contain doc scan settings, using default config.", v11, 2u);
    }

    (*(v6 + 8))(v8, v5);
  }

  v12 = objc_opt_self();
  v13 = [v12 standardUserDefaults];
  v14._countAndFlagsBits = static DaemonInternalDefaultsKeys.pdf417NotRequired.getter();
  NSUserDefaults.internalBool(forKey:)(v14);

  v15 = [v12 standardUserDefaults];
  v16._countAndFlagsBits = static DaemonInternalDefaultsKeys.aamvaCompliantNotRequired.getter();
  NSUserDefaults.internalBool(forKey:)(v16);

  v17 = [v12 standardUserDefaults];
  v18._countAndFlagsBits = static DaemonInternalDefaultsKeys.stateMatchNotRequired.getter();
  NSUserDefaults.internalBool(forKey:)(v18);

  v19 = [v12 standardUserDefaults];
  v20._countAndFlagsBits = static DaemonInternalDefaultsKeys.docScanMaxRetakeCount.getter();
  v25 = NSUserDefaults.internalInt(forKey:)(v20);
  is_nil = v25.is_nil;

  if (is_nil)
  {
    if (*a1 == 1)
    {
      v24 = 0;
    }
  }

  else if (*a1 == 1)
  {
    v24 = 0;
  }

  type metadata accessor for IdentityDocScanConfig();

  return IdentityDocScanConfig.__allocating_init(pdf417ParsingConfigs:requiresPDF417:requiresAAMVACompliant:requiresStateMatch:issuerIdentificationNumber:crTimeout:crManualDelay:maxRetakeCount:)();
}

uint64_t sub_1001A2448()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001A24A8()
{

  return _swift_deallocObject(v0, 32, 7);
}