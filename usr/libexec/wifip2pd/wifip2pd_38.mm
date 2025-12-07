void sub_1002EFFB0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + qword_10059B898) == 1)
    {
      sub_1002F0018();
    }
  }
}

uint64_t sub_1002F0018()
{
  v44 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  __chkstk_darwin();
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10005DC58(&unk_100595C80, &qword_1004AFD40);
  __chkstk_darwin();
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v39 - v5;
  __chkstk_darwin();
  v7 = &v39 - v6;
  v8 = qword_10059B8A8;
  swift_beginAccess();

  LOBYTE(v10) = 0;
  sub_1002FF908(v9);
  v12 = v11;
  v46 = 0;

  v13 = *(v0 + v8);
  v47 = v0;
  *(v0 + v8) = v12;

  v14 = v12 + 64;
  v15 = 1 << *(v12 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v12 + 64);
  v18 = (v15 + 63) >> 6;
  v49 = v12;

  v19 = 0;
  v48 = _swiftEmptyArrayStorage;
  v43 = v3;
  while (1)
  {
    v20 = v19;
    if (!v17)
    {
      break;
    }

LABEL_8:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = v21 | (v19 << 6);
    v23 = *(v49 + 56);
    v24 = *(v49 + 48) - v22 + 8 * v22;
    v25 = *(v24 + 4);
    v26 = *(v24 + 6);
    v27 = v23 + *(*(type metadata accessor for NANPeer.Service.AuthenticationStatus(0) - 8) + 72) * v22;
    v13 = v45;
    LODWORD(v22) = *v24;
    sub_1003013DC(v27, &v7[*(v45 + 48)], type metadata accessor for NANPeer.Service.AuthenticationStatus);
    *v7 = v22;
    *(v7 + 2) = v25;
    v7[6] = v26;
    v12 = v42;
    v10 = &qword_1004AFD40;
    sub_100012400(v7, v42, &unk_100595C80, &qword_1004AFD40);
    v28 = *(v13 + 48);
    v3 = v43;
    sub_1003013DC(v12 + v28, v43, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    sub_100301450(v12 + v28, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = *v3;
      v29 = v41;
      sub_10001CEA8(v7, v41, &unk_100595C80, &qword_1004AFD40);
      v1.i32[0] = *v29;
      LOBYTE(v12) = *(v29 + 4);
      v30 = *(v29 + 5);
      v39 = *(v29 + 6);
      v40 = v30;
      sub_100301450(v29 + *(v45 + 48), type metadata accessor for NANPeer.Service.AuthenticationStatus);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1003A7694(0, v48[2] + 1, 1, v48);
      }

      v10 = v48[2];
      v31 = v48[3];
      if (v10 >= v31 >> 1)
      {
        v48 = sub_1003A7694((v31 > 1), v10 + 1, 1, v48);
      }

      v32 = vmovl_u8(v1).u64[0];
      v33 = v48;
      v48[2] = v10 + 1;
      v34 = &v33[2 * v10];
      *(v34 + 8) = vuzp1_s8(v32, v32).u32[0];
      *(v34 + 36) = v12;
      v35 = v39;
      *(v34 + 37) = v40;
      *(v34 + 38) = v35;
      v34[5] = v13;
    }

    else
    {
      sub_100016290(v7, &unk_100595C80, &qword_1004AFD40);
      sub_100301450(v3, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    }
  }

  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v19);
    ++v20;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  v45 = v48[2];
  if (!v45)
  {
  }

  v36 = 0;
  v37 = (v48 + 4);
  while (v36 < v48[2])
  {
    v56 = *v37;
    v12 = v56;
    v13 = BYTE1(v56);
    v10 = BYTE2(v56);
    v3 = *(&v56 + 3);
    LODWORD(v49) = BYTE7(v56);
    v7 = *(&v56 + 1);
    sub_100012400(&v56, &v50, &unk_1005987C0, &unk_1004AFD48);
    sub_1002FDCA0(v7, v12 | (v13 << 8) | (v10 << 16) | (v3 << 24));
    if (v46)
    {
      goto LABEL_23;
    }

    ++v36;
    v50 = v12;
    v51 = v13;
    v52 = v10;
    v53 = v3;
    v54 = v49;
    v55 = v7;
    sub_100016290(&v50, &unk_1005987C0, &unk_1004AFD48);
    ++v37;
    if (v45 == v36)
    {
    }
  }

LABEL_22:
  __break(1u);
LABEL_23:

  v50 = v12;
  v51 = v13;
  v52 = v10;
  v53 = v3;
  v54 = v49;
  v55 = v7;
  result = sub_100016290(&v50, &unk_1005987C0, &unk_1004AFD48);
  __break(1u);
  return result;
}

id sub_1002F0570()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = swift_isaMask;
  sub_10005DC58(&qword_10058C8D8, &qword_100482300);
  __chkstk_darwin();
  v54 = &v50[-v4];
  v5 = *((v3 & v2) + 0x58);
  v6 = *((v3 & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v10 = &v50[-v9];
  v11 = type metadata accessor for Logger();
  v58 = *(v11 - 8);
  __chkstk_darwin();
  v55 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v14 = &v50[-v13];
  v15 = qword_1005959A8;
  swift_beginAccess();
  is_valid_token = notify_is_valid_token(*&v1[v15]);
  v57 = v11;
  if (is_valid_token)
  {
    v17 = notify_cancel(*&v1[v15]);
    *&v1[v15] = -1;
    if (v17)
    {
      v18 = v17;
      v53 = v8;
      v19 = v58;
      (*(v58 + 16))(v14, &v1[qword_10059B8A0], v11);
      v20 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      v52 = v20;
      if (os_log_type_enabled(v20, v51))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v62[0] = v22;
        *v21 = 136315138;
        v23 = static WiFiError.notifyErrorMessage(from:)(v18);
        v25 = sub_100002320(v23, v24, v62);

        *(v21 + 4) = v25;
        v26 = v52;
        _os_log_impl(&_mh_execute_header, v52, v51, "Failed to cancel monitoring statistic reset events with error: %s", v21, 0xCu);
        sub_100002A00(v22);

        (*(v58 + 8))(v14, v57);
      }

      else
      {

        (*(v19 + 8))(v14, v11);
      }

      v8 = v53;
    }
  }

  if (v1[qword_10059B898] == 1)
  {
    v27 = *&v1[qword_100595970];
    swift_unownedRetainStrong();
    v28 = *(*v27 + 96);
    swift_beginAccess();
    (*(v8 + 16))(v10, v27 + v28, AssociatedTypeWitness);

    v29 = qword_10059B890;
    swift_beginAccess();
    v30 = v1[v29];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 256))(v30, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v8 + 8))(v10, AssociatedTypeWitness);
  }

  swift_beginAccess();
  _s17ResponderInstanceCMa(0, v6, v5, v32);
  sub_10020CB70();
  NANBitmap.Channel.operatingClass.getter();
  v61[0] = v33;
  __chkstk_darwin();
  *&v50[-16] = v1;
  v34 = type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Keys, v34);
  Sequence.forEach(_:)();

  v35 = qword_100595988;
  swift_beginAccess();
  v60 = *&v1[v35];
  __chkstk_darwin();
  *&v50[-16] = v6;
  *&v50[-8] = v5;
  _s8InstanceC21NANPublishClientProxyVMa(255, v6, v5, v36);
  v37 = type metadata accessor for Array();

  swift_getWitnessTable(&protocol conformance descriptor for [A], v37);
  Sequence.forEach(_:)();

  swift_beginAccess();
  Array.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  v38 = v54;
  sub_100012400(&v1[qword_1005959A0], v54, &qword_10058C8D8, &qword_100482300);
  v39 = type metadata accessor for LongTermPairingKeys(0);
  if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
  {
    sub_100016290(v38, &qword_10058C8D8, &qword_100482300);
  }

  else
  {
    LongTermPairingKeys.updatedPairedDevicesHandler.setter(0, 0);
    sub_100301450(v38, type metadata accessor for LongTermPairingKeys);
  }

  v40 = v57;
  v41 = v58;
  v42 = v55;
  (*(v58 + 16))(v55, &v1[qword_10059B8A0], v57);
  v43 = v1;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    *(v46 + 4) = v43;
    *v47 = v1;
    v48 = v43;
    _os_log_impl(&_mh_execute_header, v44, v45, "Destroyed %@", v46, 0xCu);
    sub_100016290(v47, &qword_10058B780, &qword_100480AC0);
  }

  (*(v41 + 8))(v42, v40);
  v59.receiver = v43;
  v59.super_class = ObjectType;
  return objc_msgSendSuper2(&v59, "dealloc");
}

void *sub_1002F0E18(unsigned __int8 *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 3);
  result = sub_1002EBB84(a2, a1, a3, a4, a5);
  if (result)
  {
    v10 = result;
    sub_1002CAF78();
    v11 = WiFiAwarePublisherDataSessionHandle.init(_:)(v5 | (v6 << 8) | (v7 << 16) | (v8 << 24));
    [v10 publishDataTerminatedForHandle:v11 reason:-1];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002F0EE0(uint64_t a1)
{
  swift_unownedRelease();
  sub_100301450(a1 + qword_10059B890, type metadata accessor for NANPublish.Configuration);
  v2 = qword_100595978;
  v3 = type metadata accessor for DispatchTime();
  v4 = *(*(v3 - 8) + 8);
  v4(a1 + v2, v3);

  v5 = qword_10059B8A0;
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);

  sub_100016290(a1 + qword_1005959A0, &qword_10058C8D8, &qword_100482300);

  sub_100083690(*(a1 + qword_10059B8B8), *(a1 + qword_10059B8B8 + 8), *(a1 + qword_10059B8B8 + 16), *(a1 + qword_10059B8B8 + 24));

  memcpy(v8, (a1 + qword_10059B8D0), sizeof(v8));
  sub_1002CB088(v8);
  return (v4)(a1 + qword_1005959E8, v3);
}

void sub_1002F10E0()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v129 = *(v2 + 0x58);
  v3 = *(v2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v119 - v9;
  v11 = type metadata accessor for NANPublish.Configuration(0);
  __chkstk_darwin();
  v13 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v3;
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v119 - v16;
  type metadata accessor for OWEKeys(0);
  __chkstk_darwin();
  v130 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058C8D8, &qword_100482300);
  __chkstk_darwin();
  if (*(v1 + qword_10059B898))
  {
    return;
  }

  v127 = &v119 - v19;
  v123 = v17;
  v124 = v15;
  v125 = v13;
  v126 = v14;
  v121 = v10;
  v119 = v8;
  v120 = v7;
  v122 = qword_10059B898;
  v20 = *(v1 + qword_100595970);
  swift_unownedRetainStrong();
  v21 = WiFiInterface.macAddress.getter();
  v134 = v20;

  v22 = v1 + qword_10059B890;
  swift_beginAccess();
  *(v22 + 78) = v21;
  *(v22 + 80) = BYTE2(v21);
  v23 = v22;
  *(v22 + 81) = BYTE3(v21);
  *(v22 + 82) = BYTE4(v21);
  *(v22 + 83) = BYTE5(v21);
  v131 = v1;
  v24 = *sub_1002EEA34();
  v25 = (*(v24 + 256))();

  *(v22 + 84) = v25;
  *(v22 + 86) = BYTE2(v25);
  *(v22 + 87) = BYTE3(v25);
  *(v22 + 88) = BYTE4(v25);
  *(v22 + 89) = BYTE5(v25);
  v26 = *(v22 + v11[21] + 16);
  v27 = *(v26 + 2);
  v137 = v22;
  v135 = v27;
  if (!v27)
  {
LABEL_15:
    v50 = v127;
    sub_100012400(&v131[qword_1005959A0], v127, &qword_10058C8D8, &qword_100482300);
    v51 = type metadata accessor for LongTermPairingKeys(0);
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {
      sub_100016290(v50, &qword_10058C8D8, &qword_100482300);
      v52 = 0;
      v53 = 0xF000000000000000;
      v54 = v134;
    }

    else
    {
      v55 = v130;
      sub_1003013DC(v23 + v11[23], v130, type metadata accessor for OWEKeys);
      v54 = v134;
      swift_unownedRetainStrong();
      v56 = WiFiInterface.macAddress.getter();

      v52 = LongTermPairingKeys.authenticationToken(using:on:)(v55, v56 & 0xFFFFFFFFFFFFLL);
      v53 = v57;
      sub_100301450(v55, type metadata accessor for OWEKeys);
      sub_100301450(v50, type metadata accessor for LongTermPairingKeys);
    }

    swift_beginAccess();
    v139 = *(v23 + 24);

    NANGenericServiceProtocol.publisherAuthenticationToken.setter(v52, v53);
    *(v23 + 24) = v139;
    ++*(v23 + 32);
    swift_endAccess();

    v58 = v131;
    *(v23 + 77) = sub_1002F2178();
    sub_1002F22E8();
    swift_unownedRetainStrong();
    v59 = v132;
    sub_10040CBA8();
    if (!v59)
    {

      swift_unownedRetainStrong();
      v60 = *(*v54 + 96);
      swift_beginAccess();
      v61 = v124;
      v62 = v54 + v60;
      v63 = v123;
      v64 = v126;
      (*(v124 + 16))(v123, v62, v126);

      v65 = v125;
      sub_1003013DC(v23, v125, type metadata accessor for NANPublish.Configuration);
      v66 = swift_getAssociatedConformanceWitness();
      (*(v66 + 208))(v65, v64, v66);
      sub_100301450(v65, type metadata accessor for NANPublish.Configuration);
      (*(v61 + 8))(v63, v64);
      goto LABEL_32;
    }

    v139 = v59;
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if (swift_dynamicCast())
    {
      if (v141 == 1)
      {
        if (v140 == 7)
        {

          swift_unownedRetainStrong();
          v67 = sub_100019F94();

          if (v67)
          {

LABEL_29:
            v70 = v58;
            v71 = Logger.logObject.getter();
            v72 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v71, v72))
            {
              v73 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              *v73 = 138412290;
              *(v73 + 4) = v70;
              *v74 = v58;
              v75 = v70;
              _os_log_impl(&_mh_execute_header, v71, v72, "%@ faking start until NAN becomes available", v73, 0xCu);
              sub_100016290(v74, &qword_10058B780, &qword_100480AC0);
            }

LABEL_32:
            v76 = v137;
            v77 = &v137[v11[27]];
            if (v77[6] & 1) != 0 || (v137[v11[29]])
            {
              v78 = v122;
LABEL_35:
              v58[v78] = 1;
              v79 = v58;
              v80 = Logger.logObject.getter();
              v81 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v80, v81))
              {
                v82 = swift_slowAlloc();
                v83 = swift_slowAlloc();
                *v82 = 138412290;
                *(v82 + 4) = v79;
                *v83 = v58;
                v84 = v79;
                _os_log_impl(&_mh_execute_header, v80, v81, "%@ was started", v82, 0xCu);
                sub_100016290(v83, &qword_10058B780, &qword_100480AC0);
              }

              v85 = v137;
              v86 = v137[v11[27] + 6];
              v92 = sub_1002EBB84(v91, v87, v88, v89, v90);
              if (v92)
              {
                if (v86)
                {
                  v93 = 0;
                }

                else
                {
                  v93 = 8;
                }

                [v92 publishStartedWithInstanceID:*v85 maximumNANDataPath:v93];
                swift_unknownObjectRelease();
              }

              sub_1002EF33C();
              sub_1002EEB78(*&v85[v11[30]]);
              return;
            }

            v133 = v11;
            v94 = *(v77 + 2);
            v95 = *v77;
            v96 = type metadata accessor for MulticastSenderManager(0, v128, v129, v68);
            v97 = swift_unownedRetainStrong();
            v98 = *v76;
            v138 = v96;
            v101 = sub_10031CE9C(v97, v98, v99, v100);

            v102 = qword_10059B8B0;
            *&v58[qword_10059B8B0] = v101;

            if (*&v58[v102])
            {

              v103 = sub_1002EEA34();
              v104 = (*(*v103 + 256))(v103);

              sub_1003182E8((v95 | (v94 << 32)) & 0xFFFFFFFFFFFFLL, v104 & 0xFFFFFFFFFFFFLL, *&v76[v133[32]] | (*&v76[v133[32] + 4] << 32), *&v76[v133[33]] | (v76[v133[33] + 2] << 16));

              v107 = v121;
              v108 = *&v58[v102];
              v106 = v133;
              v76 = v137;
              if (v108)
              {
                *(v108 + qword_10059B998) = v137[v133[29]];
              }
            }

            else
            {
              v106 = v133;
              v107 = v121;
            }

            if (v76[v106[35] + 7])
            {
              v109 = *&v58[v102];
              v78 = v122;
              if (v109)
              {
                v11 = v133;
                goto LABEL_55;
              }
            }

            else
            {
              swift_unownedRetainStrong();
              WiFiInterface.preferences.getter();

              v110 = v120;
              v111 = Preferences.disableMulticastRateAdapter.getter(v120);
              (*(v119 + 8))(v107, v110);
              v109 = *&v58[v102];
              v78 = v122;
              if (v109)
              {
                v11 = v133;
                if (v111)
                {
                  v142 = 0;
                  v140 = 0u;
                  v141 = 0u;

LABEL_56:
                  v118 = qword_10059B9A0;
                  swift_beginAccess();
                  sub_10030136C(&v140, v109 + v118);
                  swift_endAccess();

                  goto LABEL_35;
                }

LABEL_55:
                v112 = v138;
                WitnessTable = swift_getWitnessTable(aX_2, v138);
                v115 = type metadata accessor for MulticastRateAdapter(0, v112, WitnessTable, v114);
                v116 = *(v109 + qword_10059B9A8);
                swift_retain_n();

                v117 = sub_10040A2E4(v109, v116);
                *(&v141 + 1) = v115;
                v142 = &off_10057A6A0;
                *&v140 = v117;
                goto LABEL_56;
              }
            }

            v11 = v133;
            goto LABEL_35;
          }

          v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v69)
          {
            goto LABEL_29;
          }

          sub_10000B02C();
          swift_allocError();
          *v105 = xmmword_10047CE50;
          *(v105 + 16) = 1;
          swift_willThrow();
        }
      }

      else
      {
        sub_1000B2594(v140, *(&v140 + 1), v141);
      }
    }

    return;
  }

  v28 = 0;
  v29 = 0;
  v138 = v23 + 16;
  v133 = v11;
  while (v29 < *(v26 + 2))
  {
    v31 = &v26[v28];
    v32 = *&v26[v28 + 80];
    if (v32)
    {
      v136 = *(v31 + 9);
      v34 = *(v23 + 8);
      v33 = *(v23 + 16);
      v35 = v11;
      v36 = v31[32];
      swift_unownedRetainStrong();

      v37 = WiFiInterface.macAddress.getter();

      v38 = NANPassphrase.pmk(for:serviceName:publisherAddress:)(v36, v34, v33, v37 & 0xFFFFFFFFFFFFLL, v136, v32);
      v40 = v39;

      swift_beginAccess();
      v41 = v35[21];
      v42 = v138;
      v26 = *(v138 + v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v42 + v41) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_10046EC20(v26);
        *(v138 + v41) = v26;
      }

      v23 = v137;
      if (v29 >= *(v26 + 2))
      {
        goto LABEL_59;
      }

      v44 = &v26[v28];
      v45 = *&v26[v28 + 40];
      v46 = *&v26[v28 + 48];
      *(v44 + 5) = v38;
      *(v44 + 6) = v40;
      v47 = v138;
      *(v138 + v41) = v26;
      swift_endAccess();
      sub_1000124C8(v45, v46);
      swift_beginAccess();
      v11 = v133;
      v48 = v133[21];
      v49 = swift_isUniquelyReferenced_nonNull_native();
      *(v47 + v48) = v26;
      if ((v49 & 1) == 0)
      {
        v26 = sub_10046EC20(v26);
        *(v138 + v48) = v26;
      }

      if (v29 >= *(v26 + 2))
      {
        goto LABEL_60;
      }

      v30 = &v26[v28];
      *(v30 + 9) = 0;
      *(v30 + 10) = 0;
      *(v138 + v48) = v26;
      swift_endAccess();
    }

    ++v29;
    v28 += 56;
    if (v135 == v29)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_1002F2178()
{
  v1 = v0 + qword_10059B890;
  swift_beginAccess();
  if (*(v1 + *(type metadata accessor for NANPublish.Configuration(0) + 96)) != 1)
  {
    return 2;
  }

  v2 = *(v1 + 24);

  v3 = NANGenericServiceProtocol.AttributeFilter.all.unsafeMutableAddressor();
  v4 = NANGenericServiceProtocol.packetData(for:)(*v3, v2);
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    return 2;
  }

  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      if (BYTE6(v6) > 0x63uLL)
      {
        goto LABEL_14;
      }

LABEL_11:
      sub_100017554(v4, v6);
      return 2;
    }

    if (!__OFSUB__(HIDWORD(v4), v4))
    {
      if (HIDWORD(v4) - v4 <= 99)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  if (v8 != 2)
  {
    goto LABEL_11;
  }

  v10 = *(v4 + 16);
  v9 = *(v4 + 24);
  v11 = __OFSUB__(v9, v10);
  v12 = v9 - v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v12 <= 99)
  {
    goto LABEL_11;
  }

LABEL_14:
  v13 = *(v1 + 24);

  v14 = NANGenericServiceProtocol.AttributeFilter.standardizedAttributes.unsafeMutableAddressor();
  v15 = NANGenericServiceProtocol.packetData(for:)(*v14, v13);
  v17 = v16;
  sub_100017554(v4, v6);

  if (v17 >> 60 == 15)
  {
    return 2;
  }

  sub_100017554(v15, v17);
  return 0;
}

double sub_1002F22E8()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = type metadata accessor for DispatchTimeInterval();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin();
  v36 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v35 = &v32 - v6;
  __chkstk_darwin();
  v8 = &v32 - v7;
  v32 = *((v3 & v2) + 0x58);
  v9 = *((v3 & v2) + 0x50);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v32 - v17;
  swift_unownedRetainStrong();
  WiFiInterface.preferences.getter();

  v19 = Preferences.unsolicitedPublishOnUpdate.getter(v13);
  v20 = *(v14 + 8);
  v20(v18, v13);
  if (v19)
  {
    v22 = v1 + qword_10059B890;
    swift_beginAccess();
    if (v22[*(type metadata accessor for NANPublish.Configuration(0) + 116)] == 1)
    {
      v22[72] = 0;
      *(v1 + qword_100595998) = 0;

      swift_unownedRetainStrong();
      WiFiInterface.preferences.getter();

      v23 = Preferences.unsolicitedPublishSeconds.getter(v13);
      v20(v16, v13);
      *v8 = v23;
      v24 = v34;
      v25 = *(v33 + 104);
      v25(v8, enum case for DispatchTimeInterval.seconds(_:), v34);
      v26 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      v29 = v32;
      v28[2] = v9;
      v28[3] = v29;
      v28[4] = v27;
      v30 = v35;
      v25(v35, enum case for DispatchTimeInterval.never(_:), v24);
      v31 = v36;
      *v36 = 100;
      v25(v31, enum case for DispatchTimeInterval.milliseconds(_:), v24);
      type metadata accessor for P2PTimer(0);
      swift_allocObject();
      *(v1 + qword_100595998) = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v8, v26, v30, v31, sub_100300280, v28);
    }
  }

  return result;
}

void sub_1002F276C(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    (*(v2 + 16))(v4, Strong + qword_10059B8A0, v1);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "%@ timed out. Stopping.", v9, 0xCu);
      sub_100016290(v10, &qword_10058B780, &qword_100480AC0);
    }

    (*(v2 + 8))(v4, v1);
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v12[qword_1005959B8] = 1;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_1002F29CC();
  }
}

void sub_1002F29CC()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v45 = *(v2 + 0x58);
  v44 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v5 = &v38 - v4;
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  __chkstk_darwin();
  v12 = qword_10059B898;
  if (*(v1 + qword_10059B898) == 1)
  {
    v39 = &v38 - v10;
    v40 = v11;
    v41 = v5;
    v42 = v3;
    v13 = qword_10059B8A0;
    v14 = v1;
    v38 = v13;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = v14;
      v19 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v18;
      *v19 = v1;
      v20 = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "%@ will attempt to stop", v17, 0xCu);
      sub_100016290(v19, &qword_10058B780, &qword_100480AC0);
      v14 = v18;
    }

    *(v1 + v12) = 0;
    v21 = NANConstants.serviceTerminateEventTimeout.unsafeMutableAddressor();
    v22 = v39;
    (*(v7 + 16))(v39, v21, v6);
    v23 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    v26 = v45;
    v25[2] = v44;
    v25[3] = v26;
    v25[4] = v24;
    v27 = *(v7 + 104);
    v28 = v40;
    v27(v40, enum case for DispatchTimeInterval.never(_:), v6);
    *v9 = 100;
    v27(v9, enum case for DispatchTimeInterval.milliseconds(_:), v6);
    type metadata accessor for P2PTimer(0);
    swift_allocObject();
    *&v14[qword_100595980] = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v22, v23, v28, v9, sub_100300180, v25);

    v29 = qword_10059B8B0;
    if (*&v14[qword_10059B8B0])
    {

      sub_10031A4D0();
    }

    v31 = v41;
    v30 = v42;
    *&v14[v29] = 0;

    v32 = *&v14[qword_100595970];
    swift_unownedRetainStrong();
    sub_10040CBA8();

    swift_unownedRetainStrong();
    v33 = *(*v32 + 96);
    swift_beginAccess();
    v34 = AssociatedTypeWitness;
    (*(v30 + 16))(v31, v32 + v33, AssociatedTypeWitness);

    v35 = qword_10059B890;
    swift_beginAccess();
    v36 = v14[v35];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 256))(v36, v34, AssociatedConformanceWitness);
    (*(v30 + 8))(v31, AssociatedTypeWitness);
  }
}

uint64_t sub_1002F30F0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = *v1;
  v4 = swift_isaMask;
  v515 = type metadata accessor for NANPublish.Configuration(0);
  __chkstk_darwin();
  v497 = &v463 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v489 = &v463 - v6;
  v517 = *((v4 & v3) + 0x58);
  v518 = v1;
  v7 = *((v4 & v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v510 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v503 = &v463 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v499 = &v463 - v9;
  v10 = type metadata accessor for DispatchTime();
  v513 = *(v10 - 8);
  v514 = v10;
  __chkstk_darwin();
  v506 = &v463 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v512 = &v463 - v12;
  v13 = type metadata accessor for DispatchTimeInterval();
  v507 = *(v13 - 8);
  v508 = v13;
  __chkstk_darwin();
  v505 = &v463 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v504 = &v463 - v15;
  type metadata accessor for NANDriverCapabilities(0);
  __chkstk_darwin();
  v479 = &v463 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v516 = v7;
  swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v498 = type metadata accessor for Preferences(0, v17, AssociatedConformanceWitness, v19);
  v501 = *(v498 - 8);
  __chkstk_darwin();
  v483 = &v463 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v480 = &v463 - v21;
  __chkstk_darwin();
  v496 = &v463 - v22;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v491 = &v463 - v23;
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  v493 = v24;
  v494 = v25;
  __chkstk_darwin();
  v482 = &v463 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v484 = &v463 - v27;
  __chkstk_darwin();
  v488 = &v463 - v28;
  v495 = type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v490 = &v463 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v487 = &v463 - v30;
  __chkstk_darwin();
  v486 = (&v463 - v31);
  __chkstk_darwin();
  v481 = &v463 - v32;
  __chkstk_darwin();
  v485 = &v463 - v33;
  __chkstk_darwin();
  v511 = &v463 - v34;
  sub_10005DC58(&unk_100595C00, &qword_10048F790);
  __chkstk_darwin();
  v492 = (&v463 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v502 = (&v463 - v36);
  __chkstk_darwin();
  v38 = (&v463 - v37);
  type metadata accessor for DriverEvent(0);
  __chkstk_darwin();
  __chkstk_darwin();
  v40 = &v463 - v39;
  __chkstk_darwin();
  v42 = &v463 - v41;
  __chkstk_darwin();
  v44 = &v463 - v43;
  __chkstk_darwin();
  v46 = &v463 - v45;
  v47 = a1;
  sub_1003013DC(a1, &v463 - v45, type metadata accessor for DriverEvent);
  v519 = v46;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 6:
      goto LABEL_13;
    case 4:
      sub_1003013DC(v519, v42, type metadata accessor for DriverEvent);
      v68 = *v42;
      if (v68 != 2)
      {
        if (v68 == 1)
        {
          v70 = qword_10059B898;
          v71 = v518;
          if (v518[qword_10059B898] != 1)
          {
            return sub_100301450(v519, type metadata accessor for DriverEvent);
          }

          v72 = *&v518[qword_100595970];
          swift_unownedRetainStrong();
          sub_10040CBA8();
          v515 = v70;

          swift_unownedRetainStrong();
          v151 = *(*v72 + 96);
          swift_beginAccess();
          v152 = v72 + v151;
          v153 = AssociatedTypeWitness;
          (*(v510 + 16))(v503, v152, AssociatedTypeWitness);

          v154 = qword_10059B890;
          swift_beginAccess();
          v155 = v497;
          sub_1003013DC(&v71[v154], v497, type metadata accessor for NANPublish.Configuration);
          v156 = swift_getAssociatedConformanceWitness();
          (*(v156 + 208))(v155, v153, v156);
          sub_100301450(v155, type metadata accessor for NANPublish.Configuration);
          (*(v510 + 8))(v503, v153);
          if (!*&v71[qword_10059B8B0])
          {
            return sub_100301450(v519, type metadata accessor for DriverEvent);
          }

LABEL_14:

          sub_10031A918(v47);
LABEL_99:

          return sub_100301450(v519, type metadata accessor for DriverEvent);
        }

        if (*v42)
        {
          break;
        }
      }

LABEL_13:
      if (!*&v518[qword_10059B8B0])
      {
        return sub_100301450(v519, type metadata accessor for DriverEvent);
      }

      goto LABEL_14;
    case 0:
      sub_1003013DC(v519, v44, type metadata accessor for DriverEvent);
      memcpy(v532, v44, 0x16AuLL);
      memcpy(v533, v44, 0x16AuLL);
      v49 = sub_100185198(v533);
      if (v49 <= 11)
      {
        if (v49 == 3)
        {
          NANBitmap.Channel.operatingClass.getter();
          goto LABEL_35;
        }

        if (v49 == 5)
        {
          NANBitmap.Channel.operatingClass.getter();
          v51 = *v50;
          v52 = v50[2];
          v53 = v50[3];
          v54 = v50[4];
          v55 = v50[5];
          v56 = v50[6];
          v57 = v50[7];
          v58 = v518;
          v59 = v518[qword_10059B898];
          v60 = *(v50 + 2) | (v50[12] << 32) | (v50[13] << 40);
          v513 = v54;
          v514 = v55;
          if (v59 == 1)
          {
            v506 = v50[1];
            ObjectType = *(v50 + 2);
            AssociatedTypeWitness = v53;
            v61 = (v54 << 16) | (v53 << 8) | (v55 << 24) | (v56 << 32) | (v57 << 40);
            v62 = WiFiAddress.description.getter(v61 | v52);
            v64 = v63;
            v512 = v61;
            v65 = static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v61 | v52, v60);
            v507 = v51;
            v510 = v60;
            v503 = v56;
            v504 = v57;
            if (v65)
            {
              v66 = 0;
              v67 = 0xE000000000000000;
            }

            else
            {
              v531[0] = 0x203A49444E5BLL;
              v531[1] = 0xE600000000000000;
              v125._countAndFlagsBits = WiFiAddress.description.getter(v60);
              String.append(_:)(v125);

              v126._countAndFlagsBits = 93;
              v126._object = 0xE100000000000000;
              String.append(_:)(v126);
              v66 = v531[0];
              v67 = v531[1];
            }

            v531[0] = v62;
            v531[1] = v64;

            v127._countAndFlagsBits = v66;
            v127._object = v67;
            String.append(_:)(v127);

            v128 = v531[0];
            v129 = v531[1];
            v130 = qword_10059B8A0;

            v131 = Logger.logObject.getter();
            v132 = static os_log_type_t.default.getter();

            v133 = os_log_type_enabled(v131, v132);
            v508 = v129;
            if (v133)
            {
              v134 = swift_slowAlloc();
              v135 = swift_slowAlloc();
              v531[0] = v135;
              *v134 = 136315138;
              *(v134 + 4) = sub_100002320(v128, v129, v531);
              _os_log_impl(&_mh_execute_header, v131, v132, "Received a new datapath request from peer: %s", v134, 0xCu);
              sub_100002A00(v135);
            }

            memcpy(v531, v532, 0x16AuLL);
            NANBitmap.Channel.operatingClass.getter();

            v136 = ObjectType;
            Array<A>.retrieve(attribute:)(41, ObjectType, v38);
            sub_1001854F8(v532);
            v137 = type metadata accessor for NANAttribute(0);
            v138 = *(v137 - 8);
            v139 = *(v138 + 48);
            v140 = v138 + 48;
            if (v139(v38, 1, v137) == 1)
            {
              sub_100016290(v38, &unk_100595C00, &qword_10048F790);
            }

            else
            {
              if (swift_getEnumCaseMultiPayload() == 36)
              {
                v489 = v140;
                v474 = v139;
                v475 = v137;
                v465 = v128;
                v505 = v130;
                v141 = v38[1];
                v530[0] = *v38;
                v142 = v38[3];
                v530[2] = v38[2];
                v530[3] = v142;
                v530[1] = v141;
                v473 = LOBYTE(v530[0]);
                v143 = BYTE3(v530[0]);
                v144 = BYTE4(v530[0]);
                v145 = BYTE5(v530[0]);
                v146 = BYTE6(v530[0]);
                v147 = BYTE7(v530[0]);
                v148 = BYTE8(v530[0]);
                v149 = BYTE10(v530[0]);
                v502 = *(&v530[2] + 1);
                v497 = *(&v142 + 1);
                v499 = v142;
                sub_100184290(*(&v530[2] + 1), v142, *(&v142 + 1));
                v150 = *NANAttribute.DatapathExtension.Control.security.unsafeMutableAddressor();
                sub_10027A06C(v530);
                goto LABEL_50;
              }

              sub_100301450(v38, type metadata accessor for NANAttribute);
            }

            memcpy(v530, v532, 0x16AuLL);
            NANBitmap.Channel.operatingClass.getter();

            v157 = v502;
            Array<A>.retrieve(attribute:)(16, v136, v502);
            sub_1001854F8(v532);
            if (v139(v157, 1, v137) == 1)
            {

              sub_100016290(v157, &unk_100595C00, &qword_10048F790);
LABEL_63:
              v204 = swift_unownedRetainStrong();
              sub_10040CAE8(v204, v205, v206, v207);

              sub_10033975C(v507, v510, v512 | v52, 0xD00000000000002FLL, 0x80000001004BEF00);
              sub_1001854F8(v532);
              goto LABEL_99;
            }

            if (swift_getEnumCaseMultiPayload() != 16)
            {

              sub_100301450(v157, type metadata accessor for NANAttribute);
              goto LABEL_63;
            }

            v489 = v140;
            v474 = v139;
            v475 = v137;
            v465 = v128;
            v505 = v130;
            v158 = v157[1];
            v535 = *v157;
            v536 = v158;
            v537 = v157[2];
            v473 = v535;
            v502 = *(&v158 + 1);
            v497 = *(&v537 + 1);
            v499 = v537;
            v143 = BYTE3(v535);
            v144 = BYTE4(v535);
            v145 = BYTE5(v535);
            v146 = BYTE6(v535);
            v147 = BYTE7(v535);
            v148 = BYTE8(v535);
            v149 = BYTE10(v535);
            sub_1002862DC(&v535, v534);
            v150 = *NANAttribute.Datapath.Control.security.unsafeMutableAddressor();
            sub_10027A15C(&v535);
LABEL_50:
            v464 = (v150 & ~v149) == 0;
            v471 = v144;
            v468 = v147;
            v469 = v146;
            v476 = v143;
            v477 = (v147 << 32) | (v148 << 40) | (v146 << 24) | (v145 << 16) | (v144 << 8);
            v159 = static WiFiAddress.!= infix(_:_:)(v477 | v143, v510);
            v160 = v511;
            v161 = v148;
            v162 = v52;
            v472 = v143;
            v470 = v145;
            if (v159)
            {
              sub_100185558(v532, v530);
              v163 = v518;
              v164 = v518;
              v165 = Logger.logObject.getter();
              v166 = static os_log_type_t.error.getter();

              sub_1001854F8(v532);
              if (os_log_type_enabled(v165, v166))
              {
                v167 = swift_slowAlloc();
                v168 = swift_slowAlloc();
                *&v530[0] = swift_slowAlloc();
                *v167 = 138412802;
                *(v167 + 4) = v164;
                *v168 = v163;
                *(v167 + 12) = 2080;
                v169 = v164;
                v170 = WiFiAddress.description.getter(v510);
                v172 = v52;
                v173 = v161;
                v174 = sub_100002320(v170, v171, v530);

                *(v167 + 14) = v174;
                *(v167 + 22) = 2080;
                v175 = WiFiAddress.description.getter(v477 | v476);
                v177 = sub_100002320(v175, v176, v530);

                *(v167 + 24) = v177;
                v161 = v173;
                _os_log_impl(&_mh_execute_header, v165, v166, "%@ bad initiator data address in the event %s compared to attributes %s", v167, 0x20u);
                sub_100016290(v168, &qword_10058B780, &qword_100480AC0);
                v162 = v172;

                swift_arrayDestroy();

                v160 = v511;
              }
            }

            v467 = v161;
            v178 = v518;
            v179 = *&v518[qword_100595970];
            swift_unownedRetainStrong();
            sub_10040CD68(v512 | v162, v160);

            v180 = &v178[qword_10059B890];
            swift_beginAccess();
            v181 = v180[v515[21] + 24];
            if (v181 > 1)
            {
              LODWORD(v494) = 0;
              v491 = 0;
              v202 = 0xE000000000000000;
              v203 = v501;
              goto LABEL_121;
            }

            v466 = v180;
            v182 = v162;
            v183 = v491;
            sub_100012400(v160 + *(v495 + 88), v491, &qword_10058F4D0, &qword_100491AB0);
            v184 = v493;
            v185 = v494;
            if ((*(v494 + 48))(v183, 1, v493) == 1)
            {
              sub_100016290(v183, &qword_10058F4D0, &qword_100491AB0);
              v186 = v486;
              sub_1003013DC(v160, v486, type metadata accessor for NANPeer);
              v187 = v518;
              v188 = Logger.logObject.getter();
              v189 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v188, v189))
              {
                v485 = v179;
                v190 = v466;
                v478 = v182;
                v191 = swift_slowAlloc();
                *&v530[0] = swift_slowAlloc();
                *v191 = 136315394;
                v192 = WiFiAddress.description.getter(*(&v186->isa + *(v495 + 20)) | (*(&v186->isa + *(v495 + 20) + 2) << 16));
                v193 = v186;
                v194 = v192;
                v196 = v195;
                sub_100301450(v193, type metadata accessor for NANPeer);
                v197 = sub_100002320(v194, v196, v530);

                *(v191 + 4) = v197;
                *(v191 + 12) = 2080;
                v198 = v190;
                v199 = v190[v515[21] + 24];

                if (v199)
                {
                  if (v199 == 1)
                  {
                    v200 = "Allow connection to all devices";
                    v201 = 0xD000000000000032;
                  }

                  else
                  {
                    v200 = "OWE Key Generation";
                    v201 = 0xD00000000000001FLL;
                  }
                }

                else
                {
                  v201 = 0xD000000000000027;
                  v200 = "rable devices only";
                }

                v491 = 0x746F6E2072656550;
                v282 = sub_100002320(v201, v200 | 0x8000000000000000, v530);

                *(v191 + 14) = v282;
                _os_log_impl(&_mh_execute_header, v188, v189, "NAN-DP: Peer %s not paired, in '%s' mode", v191, 0x16u);
                swift_arrayDestroy();

                LODWORD(v494) = 1;
                v202 = 0xEF64657269617020;
                v162 = v478;
                v203 = v501;
                v180 = v198;
                v179 = v485;
                goto LABEL_121;
              }

              v491 = 0x746F6E2072656550;

              sub_100301450(v186, type metadata accessor for NANPeer);
              LODWORD(v494) = 1;
              v202 = 0xEF64657269617020;
              v203 = v501;
              v162 = v182;
LABEL_73:
              v180 = v466;
              goto LABEL_121;
            }

            v208 = v488;
            (*(v185 + 32))(v488, v183, v184);
            v203 = v501;
            if (v181)
            {
              v209 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v162 = v182;
              if ((v209 & 1) == 0)
              {
                (*(v494 + 8))(v208, v184);
                LODWORD(v494) = 0;
                v491 = 0;
                v202 = 0xE000000000000000;
                goto LABEL_73;
              }
            }

            else
            {

              v162 = v182;
            }

            v180 = v466;
            v243 = *&v466[v515[28]];
            if (v243)
            {

              v244 = sub_10030BDDC(v208, v243);

              v245 = (v494 + 16);
              if (!v244)
              {
                v485 = v179;
                v491 = 0xD000000000000018;
                v262 = v481;
                sub_1003013DC(v511, v481, type metadata accessor for NANPeer);
                v263 = v482;
                (*v245)(v482, v208, v184);
                v264 = v518;
                v265 = Logger.logObject.getter();
                v266 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v265, v266))
                {
                  LODWORD(v484) = v266;
                  v486 = v265;
                  v478 = v162;
                  v267 = v184;
                  v268 = swift_slowAlloc();
                  v463 = swift_slowAlloc();
                  *&v530[0] = v463;
                  *v268 = 136315650;
                  v269 = WiFiAddress.description.getter(*(v262 + *(v495 + 20)) | (*(v262 + *(v495 + 20) + 2) << 16));
                  v271 = v270;
                  sub_100301450(v262, type metadata accessor for NANPeer);
                  v272 = sub_100002320(v269, v271, v530);

                  *(v268 + 4) = v272;
                  *(v268 + 12) = 2080;
                  sub_10030115C(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                  v273 = dispatch thunk of CustomStringConvertible.description.getter();
                  v275 = v274;
                  v276 = v263;
                  v277 = *(v494 + 8);
                  v277(v276, v267);
                  v278 = sub_100002320(v273, v275, v530);

                  *(v268 + 14) = v278;
                  *(v268 + 22) = 2080;
                  v279 = v180[v515[21] + 24];

                  if (v279)
                  {
                    v179 = v485;
                    if (v279 == 1)
                    {
                      v280 = "Allow connection to all devices";
                      v281 = 0xD000000000000032;
                    }

                    else
                    {
                      v280 = "OWE Key Generation";
                      v281 = 0xD00000000000001FLL;
                    }
                  }

                  else
                  {
                    v281 = 0xD000000000000027;
                    v280 = "rable devices only";
                    v179 = v485;
                  }

                  v285 = sub_100002320(v281, v280 | 0x8000000000000000, v530);

                  *(v268 + 24) = v285;
                  v286 = v486;
                  _os_log_impl(&_mh_execute_header, v486, v484, "NAN-DP: Peer %s UUID: %s not allowed, in '%s' mode", v268, 0x20u);
                  swift_arrayDestroy();

                  v162 = v478;
                  v203 = v501;
                  v184 = v493;
                }

                else
                {

                  v284 = v263;
                  v277 = *(v494 + 8);
                  v277(v284, v184);
                  sub_100301450(v262, type metadata accessor for NANPeer);
                  v179 = v485;
                }

                v202 = 0x80000001004BEF30;
                v277(v488, v184);
                LODWORD(v494) = 1;
LABEL_121:
                swift_unownedRetainStrong();
                v287 = v496;
                WiFiInterface.preferences.getter();

                v288 = v498;
                v289 = Preferences.enableMulticastKeys.getter(v498);
                v291 = *(v203 + 8);
                v290 = v203 + 8;
                v493 = v291;
                v291(v287, v288);
                v292 = v518;
                if ((v289 & 1) == 0)
                {
                  goto LABEL_143;
                }

                LODWORD(v496) = v180[v515[34]];
                v293 = ObjectType;

                v294 = v492;
                Array<A>.retrieve(attribute:)(41, v293, v492);
                sub_1001854F8(v532);
                if (v474(v294, 1, v475) == 1)
                {
                  sub_100016290(v294, &unk_100595C00, &qword_10048F790);
                }

                else
                {
                  if (swift_getEnumCaseMultiPayload() == 36)
                  {
                    v295 = v294[1];
                    v530[0] = *v294;
                    v296 = v294[2];
                    v297 = v294[3];
                    v530[1] = v295;
                    v530[2] = v296;
                    v530[3] = v297;
                    sub_10027A06C(v530);
                    if ((BYTE10(v530[0]) & 0x20) != 0)
                    {
                      if ((v496 & 1) == 0)
                      {
                        sub_1001854F8(v532);

                        v300 = 1;
                        goto LABEL_131;
                      }

                      v501 = v290;
                      v478 = v162;
                      v298 = 1;
                    }

                    else
                    {
                      if (v496)
                      {
LABEL_130:
                        sub_1001854F8(v532);

                        v300 = 0;
LABEL_131:
                        v301 = v511;
                        v302 = v487;
                        sub_1003013DC(v511, v487, type metadata accessor for NANPeer);
                        v303 = v518;
                        v304 = v518;
                        v305 = Logger.logObject.getter();
                        v306 = static os_log_type_t.error.getter();

                        if (os_log_type_enabled(v305, v306))
                        {
                          v307 = swift_slowAlloc();
                          v308 = swift_slowAlloc();
                          v309 = swift_slowAlloc();
                          *&v530[0] = v309;
                          *v307 = 138413058;
                          *(v307 + 4) = v304;
                          *v308 = v303;
                          *(v307 + 12) = 2080;
                          v310 = *(v302 + *(v495 + 20)) | (*(v302 + *(v495 + 20) + 2) << 16);
                          v311 = v304;
                          v312 = WiFiAddress.description.getter(v310);
                          v313 = v302;
                          v315 = v314;
                          sub_100301450(v313, type metadata accessor for NANPeer);
                          v316 = sub_100002320(v312, v315, v530);

                          *(v307 + 14) = v316;
                          *(v307 + 22) = 1024;
                          *(v307 + 24) = v496 & 1;
                          *(v307 + 28) = 1024;
                          *(v307 + 30) = v300;
                          _os_log_impl(&_mh_execute_header, v305, v306, "%@ NAN-DPReq: Peer %s, Self gtk_required: %{BOOL}d, Peer gtk_required: %{BOOL}d mismatch, terminating data path", v307, 0x22u);
                          sub_100016290(v308, &qword_10058B780, &qword_100480AC0);

                          sub_100002A00(v309);

                          sub_1001842D0(v502, v499, v497);
                          v86 = v511;
                        }

                        else
                        {

                          sub_1001842D0(v502, v499, v497);
                          sub_100301450(v302, type metadata accessor for NANPeer);
                          v86 = v301;
                        }

                        v85 = type metadata accessor for NANPeer;
                        goto LABEL_24;
                      }

                      v501 = v290;
                      v478 = v162;
                      v298 = 0;
                    }

                    v299 = v490;
                    goto LABEL_139;
                  }

                  sub_100301450(v294, type metadata accessor for NANAttribute);
                }

                v299 = v490;
                if (v496)
                {
                  goto LABEL_130;
                }

                v501 = v290;
                v478 = v162;
                v298 = 0;
LABEL_139:
                sub_1003013DC(v511, v299, type metadata accessor for NANPeer);
                v317 = v292;
                v318 = Logger.logObject.getter();
                v319 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v318, v319))
                {
                  v320 = swift_slowAlloc();
                  LODWORD(v490) = v298;
                  v321 = v320;
                  v322 = swift_slowAlloc();
                  v485 = v179;
                  v323 = v322;
                  v492 = swift_slowAlloc();
                  *&v530[0] = v492;
                  *v321 = 138413058;
                  *(v321 + 4) = v317;
                  *v323 = v292;
                  *(v321 + 12) = 2080;
                  v324 = v180;
                  v325 = *(v299 + *(v495 + 20)) | (*(v299 + *(v495 + 20) + 2) << 16);
                  v326 = v317;
                  v327 = WiFiAddress.description.getter(v325);
                  v329 = v328;
                  sub_100301450(v299, type metadata accessor for NANPeer);
                  v330 = sub_100002320(v327, v329, v530);
                  v180 = v324;

                  *(v321 + 14) = v330;
                  *(v321 + 22) = 1024;
                  *(v321 + 24) = v496 & 1;
                  *(v321 + 28) = 1024;
                  *(v321 + 30) = v490;
                  _os_log_impl(&_mh_execute_header, v318, v319, "%@ NAN-DPReq: Peer %s, Self gtk_required: %{BOOL}d, Peer gtk_required: %{BOOL}d", v321, 0x22u);
                  sub_100016290(v323, &qword_10058B780, &qword_100480AC0);
                  v179 = v485;

                  sub_100002A00(v492);
                }

                else
                {

                  sub_100301450(v299, type metadata accessor for NANPeer);
                }

                v162 = v478;
LABEL_143:
                if (v494)
                {

                  v331 = swift_unownedRetainStrong();
                  sub_10040CAE8(v331, v332, v333, v334);

                  sub_10033975C(v507, v510, v512 | v162, v491, v202);

                  sub_1001854F8(v532);
                  sub_1001842D0(v502, v499, v497);
LABEL_211:
                  v85 = type metadata accessor for NANPeer;
                  v86 = v511;
                  goto LABEL_24;
                }

                sub_100012400(&v180[v515[22]], v530, &unk_1005974B0, &qword_1004AFCF0);
                v335 = BYTE8(v530[2]);
                v478 = v162;
                if (BYTE8(v530[2]) == 255)
                {
                  v360 = &unk_1005974B0;
                  v361 = &qword_1004AFCF0;
                  v362 = v530;
                }

                else
                {
                  v336 = sub_10020C758(v530);
                  if (v335)
                  {
                    goto LABEL_159;
                  }

                  v341 = sub_1002EBB84(v340, v336, v337, v338, v339);
                  if (v341 && (v534[0] = v341, sub_10005DC58(&unk_100595B60, qword_1004AFC70), sub_10005DC58(&unk_100595C20, &qword_1004AFD10), (swift_dynamicCast() & 1) != 0))
                  {
                    if (*(&v536 + 1))
                    {
                      sub_100029954(&v535, v530);
                      v342 = *(&v530[1] + 1);
                      v343 = *&v530[2];
                      sub_100029B34(v530, *(&v530[1] + 1));
                      v344 = (*(v343 + 24))(v512 | v162, v342, v343);
                      if (v345 >> 60 != 15)
                      {
                        v346 = v344;
                        v514 = v345;
                        swift_unownedRetainStrong();
                        v347 = *(*v179 + 736);
                        swift_beginAccess();
                        v348 = v179 + v347;
                        v349 = v479;
                        sub_1003013DC(v348, v479, type metadata accessor for NANDriverCapabilities);

                        v350 = *(v349 + 8);

                        sub_100301450(v349, type metadata accessor for NANDriverCapabilities);
                        *&v535 = v350;
                        v351 = sub_10005DC58(&unk_100597490, &qword_1004B17B0);
                        v352 = sub_100168950();
                        v353 = Collection<>.strongestSupportedSharedKeySuite.getter(v351, v352);
                        if (v353 != 8)
                        {
                          v410 = v353;

                          v513 = 0xF000000000000000;
                          sub_100017554(0, 0xF000000000000000);
                          v411 = v514;
                          sub_10000AB0C(v346, v514);
                          sub_10005D67C(0, 0xF000000000000000);
                          ObjectType = v346;
                          sub_1000124C8(v346, v411);
                          sub_100017554(0, 0xF000000000000000);

                          v357 = 0;
                          v358 = v410;
                          v359 = 1;
LABEL_189:
                          LODWORD(v503) = v359;
                          v367 = v508;
                          sub_100002A00(v530);
                          v510 = 0;
LABEL_190:

                          v412 = Logger.logObject.getter();
                          v413 = v367;
                          v414 = static os_log_type_t.default.getter();

                          if (os_log_type_enabled(v412, v414))
                          {
                            v415 = v357;
                            v416 = v358;
                            v417 = swift_slowAlloc();
                            *&v530[0] = swift_slowAlloc();
                            *v417 = 136315394;
                            v418 = sub_100002320(v465, v413, v530);
                            v419 = v180;
                            v420 = v418;

                            *(v417 + 4) = v420;
                            *(v417 + 12) = 2080;
                            if (v503 == 2)
                            {
                              v421 = 0x64657463656A6572;
                            }

                            else
                            {
                              v421 = 0x6465747065636361;
                            }

                            v422 = sub_100002320(v421, 0xE800000000000000, v530);

                            *(v417 + 14) = v422;
                            v180 = v419;
                            _os_log_impl(&_mh_execute_header, v412, v414, "Configuring datapath responder for peer: %s, with status: %s", v417, 0x16u);
                            swift_arrayDestroy();

                            v358 = v416;
                            v357 = v415;
                          }

                          else
                          {
                          }

                          v423 = swift_unownedRetainStrong();
                          v427 = sub_10040CAE8(v423, v424, v425, v426);

                          swift_unownedRetainStrong();
                          v508 = WiFiInterface.macAddress.getter();

                          v428 = v180[84];
                          v429 = v180[85];
                          v493 = *(v180 + 86) << 16;
                          v430 = *(v180 + 1);
                          v431 = v180[v515[21] + 2];

                          v504 = v357;
                          v505 = v427;
                          AssociatedTypeWitness = v430;
                          v501 = v358;
                          v498 = v432;
                          LODWORD(v496) = v431;
                          v494 = v429;
                          v495 = v428;
                          if (v357)
                          {
                            if (v464)
                            {
                              v433 = static NANPMK.zero.getter();
                              v435 = v434;
                              v436 = 0xF000000000000000;
                              sub_100017554(0, 0xF000000000000000);
                              sub_10000AB0C(v433, v435);
                              sub_10005D67C(0, 0xF000000000000000);
                              sub_1000124C8(v433, v435);
                              sub_100017554(0, 0xF000000000000000);

                              v437 = 0;
                              v438 = 0;
                              v439 = 0;
                            }

                            else
                            {
                              v437 = 0;
                              v433 = 0;
                              v435 = 0;
                              v438 = 0;
                              v436 = 0;
                              v439 = 1;
                            }
                          }

                          else
                          {
                            v439 = 0;
                            v437 = v358;
                            v433 = ObjectType;
                            v438 = v510;
                            v436 = v513;
                            v435 = v514;
                          }

                          v534[0] = v437;
                          v534[1] = v433;
                          v534[2] = v435;
                          v534[3] = v438;
                          v534[4] = v436;
                          v534[5] = 0;
                          v534[6] = v439;
                          v440 = v515;
                          sub_100012400(&v180[v515[22]], v528, &unk_1005974B0, &qword_1004AFCF0);
                          v441 = v518;
                          v442 = *&v518[qword_10059B8B8 + 16];
                          v535 = *&v518[qword_10059B8B8];
                          v537 = *&v518[qword_10059B8B8 + 32];
                          v443 = &v180[v440[27]];
                          v444 = *v443 | (*(v443 + 2) << 32);
                          v445 = *(v443 + 6);
                          LODWORD(v492) = v180[v440[29]];
                          v446 = v440[33];
                          v447 = *&v180[v440[32]] | (*&v180[v440[32] + 4] << 32);
                          LODWORD(v440) = *&v180[v446];
                          v448 = v180[v446 + 2];
                          v538 = *&v518[qword_10059B8B8 + 48];
                          v536 = v442;
                          sub_100012400(&v535, v530, &qword_100595C10, &unk_100499060);
                          v449 = v502;
                          v450 = v499;
                          v451 = v497;
                          sub_100184290(v502, v499, v497);
                          sub_10011A208(v501, ObjectType, v514, v510, v513, 0, v504);
                          LOBYTE(v530[0]) = v445;
                          v462 = v447;
                          BYTE2(v460) = v503;
                          BYTE1(v460) = v473;
                          LOBYTE(v460) = v496;
                          v452 = v507;
                          NANDatapath.ResponseConfiguration.init(instanceID:publishID:initiatorManagementAddress:initiatorDataAddress:initiatorServiceInfo:responderManagementAddress:responderDataAddress:serviceName:serviceType:dialogToken:status:securityConfiguration:internetSharingConfiguration:multicastAddress:multicastServiceType:channelInfo:countryCode:pairingMetadata:)(v507, v506, v512 | v478, v477 | v476, v449, v450, v451, v508 & 0xFFFFFFFFFFFFLL, v530, v495 | (v494 << 8) | v493, AssociatedTypeWitness, v498, v460, v534, v528, v444, (v444 | (v445 << 48)) >> 32, (v444 | (v445 << 48)) >> 48, (v444 | (v445 << 48)) >> 56, v492, v461, v462, SWORD2(v462), SHIWORD(v462), v440, (v440 | (v448 << 16)) >> 16, &v535);
                          sub_1001854F8(v532);
                          v453 = *&v441[qword_10059B8C8 + 8];
                          if (v453)
                          {
                            v454 = *&v441[qword_10059B8C8];
                          }

                          else
                          {
                            v454 = 0;
                          }

                          if (v453)
                          {
                            v455 = *&v441[qword_10059B8C8 + 8];
                          }

                          else
                          {
                            v455 = 0xE000000000000000;
                          }

                          if (v441[qword_1005959C8 + 4])
                          {
                            v456 = 0;
                          }

                          else
                          {
                            v456 = *&v441[qword_1005959C8];
                          }

                          v457 = sub_100339C20(v530, v454, v455, v456, v441);

                          sub_1002CB18C(v530);
                          v528[0] = v457;
                          v521 = v452;
                          v522 = v472;
                          v523 = v471;
                          v524 = v470;
                          v525 = v469;
                          v526 = v468;
                          v527 = v467;
                          v458 = qword_10059B8C0;
                          swift_beginAccess();
                          v520 = *&v441[v458];
                          _s17ResponderInstanceCMa(255, v516, v517, v459);
                          sub_10020CB70();
                          type metadata accessor for Dictionary();

                          Dictionary.subscript.setter();
                          sub_1002EE678(v520);
                          sub_1001842D0(v449, v450, v451);
                          sub_10011A270(v501, ObjectType, v514, v510, v513, 0, v504);
                          goto LABEL_211;
                        }

                        sub_100017554(v346, v514);
                      }

                      swift_unownedRetainStrong();
                      v354 = v480;
                      WiFiInterface.preferences.getter();

                      v355 = v498;
                      v356 = Preferences.automaticallyUseEncryption.getter(v498);
                      (v493)(v354, v355);
                      v357 = 1;
                      v358 = 0;
                      if (v356)
                      {
                        ObjectType = 0;
                        v513 = 0;
                        v514 = 0;
                        v359 = 2;
                      }

                      else
                      {
                        ObjectType = 0;
                        v513 = 0;
                        v514 = 0;
                        if (v180[v515[24]])
                        {
                          v359 = 1;
                        }

                        else
                        {
                          v359 = 2;
                        }
                      }

                      goto LABEL_189;
                    }
                  }

                  else
                  {
                    *&v537 = 0;
                    v536 = 0u;
                    v535 = 0u;
                  }

                  v360 = &unk_100595C18;
                  v361 = &unk_1004AFD08;
                  v362 = &v535;
                }

                sub_100016290(v362, v360, v361);
LABEL_159:
                v363 = *&v180[v515[21] + 16];
                v364 = *(v363 + 16);
                v365 = (v363 + 32);
                v366 = v364 + 1;
                v367 = v508;
                while (--v366)
                {
                  v368 = *v365;
                  v365 += 56;
                  if (v368 >= 6)
                  {
                    v369 = swift_unownedRetainStrong();
                    sub_10040CAE8(v369, v370, v371, v372);

                    swift_beginAccess();

                    LOBYTE(v535) = v162;
                    BYTE1(v535) = AssociatedTypeWitness;
                    BYTE2(v535) = v513;
                    BYTE3(v535) = v514;
                    BYTE4(v535) = v503;
                    BYTE5(v535) = v504;
                    v374 = v516;
                    v373 = v517;
                    v376 = _s17InitiatorInstanceCMa_0(255, v516, v517, v375);
                    v378 = _s17ResponderInstanceCMa_0(255, v374, v373, v377);
                    type metadata accessor for Either(0, v376, v378, v379);
                    sub_1002CAFC4();
                    Dictionary.subscript.getter();

                    v380 = BYTE8(v530[0]);
                    if (BYTE8(v530[0]) == 255)
                    {
                      v358 = 0;
                      ObjectType = 0;
                      v510 = 0;
                      v513 = 0;
                      v514 = 0;
                      LODWORD(v503) = 2;
                      v357 = 1;
                      v367 = v508;
                    }

                    else
                    {
                      v381 = *&v530[0];
                      v382 = sub_100428AB0(*&v530[0], BYTE8(v530[0]) & 1);
                      if (v383 >> 60 == 15)
                      {
                        sub_1002CB018(v381, v380);
                        v358 = 0;
                        ObjectType = 0;
                        v510 = 0;
                        v513 = 0;
                        v514 = 0;
                        LODWORD(v503) = 2;
                        v357 = 1;
                      }

                      else
                      {
                        v407 = v383;
                        v408 = v382;
                        v409 = sub_100428AE0(v381);
                        sub_1002CB018(v381, v380);
                        v513 = 0xF000000000000000;
                        sub_100017554(0, 0xF000000000000000);
                        sub_10000AB0C(v408, v407);
                        sub_10005D67C(0, 0xF000000000000000);
                        ObjectType = v408;
                        v514 = v407;
                        sub_1000124C8(v408, v407);
                        sub_100017554(0, 0xF000000000000000);

                        v510 = 0;
                        v357 = 0;
                        v358 = v409;
                        LODWORD(v503) = 1;
                      }

                      v367 = v508;
                    }

                    goto LABEL_190;
                  }
                }

                if (v364)
                {
                  v485 = v179;
                  v384 = v507;
                  v501 = *(v363 + 32);
                  v385 = v180;
                  v387 = *(v363 + 40);
                  v386 = *(v363 + 48);
                  v389 = *(v363 + 56);
                  v388 = *(v363 + 64);
                  v390 = v515[24];
                  v466 = v385;
                  v391 = v385[v390];
                  sub_10000AB0C(v387, v386);
                  sub_10005D67C(v389, v388);

                  if (v391 == 1 && (v392 = static NANPMK.zero.getter(), v394 = v393, v395 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v387, v386, v392, v393), sub_1000124C8(v392, v394), !v395))
                  {
                    if (v388 >> 60 != 15)
                    {
                      sub_10005D67C(v389, v388);
                    }

                    sub_10000AB0C(v387, v386);
                    LODWORD(v503) = 1;
                    v401 = v389;
                    v402 = v388;
                    v398 = v387;
                    v400 = v386;
                  }

                  else
                  {
                    v396 = sub_1002F7170(v384 | (v506 << 8) | (v478 << 16) | (AssociatedTypeWitness << 24) | (v513 << 32) | (v514 << 40) | (v503 << 48) | (v504 << 56), v510, ObjectType, v502, v499, v497);
                    if (v397 >> 60 == 15)
                    {
                      v398 = static NANPMK.zero.getter();
                      v400 = v399;
                      v401 = 0;
                      v402 = 0xF000000000000000;
                      LODWORD(v503) = 2;
                    }

                    else
                    {
                      v398 = v396;
                      v400 = v397;
                      v401 = 0;
                      v402 = 0xF000000000000000;
                      LODWORD(v503) = 1;
                    }
                  }

                  sub_1000124C8(v387, v386);
                  sub_100017554(v389, v388);

                  sub_100017554(0, 0xF000000000000000);
                  sub_10000AB0C(v398, v400);
                  sub_10005D67C(v401, v402);
                  ObjectType = v398;
                  v514 = v400;
                  sub_1000124C8(v398, v400);
                  v510 = v401;
                  v513 = v402;
                  sub_100017554(v401, v402);

                  v357 = 0;
                  v367 = v508;
                  v180 = v466;
                  v358 = v501;
                }

                else
                {
                  swift_unownedRetainStrong();
                  v403 = v483;
                  WiFiInterface.preferences.getter();

                  v404 = v498;
                  v405 = Preferences.automaticallyUseEncryption.getter(v498);
                  (v493)(v403, v404);
                  v357 = 1;
                  v358 = 0;
                  if (v405)
                  {
                    ObjectType = 0;
                    v510 = 0;
                    v513 = 0;
                    v514 = 0;
                    v406 = 2;
                  }

                  else
                  {
                    ObjectType = 0;
                    v510 = 0;
                    v513 = 0;
                    v514 = 0;
                    if (v180[v515[24]])
                    {
                      v406 = 1;
                    }

                    else
                    {
                      v406 = 2;
                    }
                  }

                  LODWORD(v503) = v406;
                }

                goto LABEL_190;
              }

              sub_1003013DC(v511, v485, type metadata accessor for NANPeer);
              v246 = v484;
              (*v245)(v484, v208, v184);
              v247 = Logger.logObject.getter();
              v248 = v184;
              v249 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v247, v249))
              {
                v250 = swift_slowAlloc();
                v491 = swift_slowAlloc();
                *&v530[0] = v491;
                *v250 = 136315394;
                v251 = v485;
                v252 = WiFiAddress.description.getter(*(v485 + *(v495 + 20)) | (*(v485 + *(v495 + 20) + 2) << 16));
                v254 = v253;
                sub_100301450(v251, type metadata accessor for NANPeer);
                v255 = sub_100002320(v252, v254, v530);

                *(v250 + 4) = v255;
                *(v250 + 12) = 2080;
                sub_10030115C(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v256 = v484;
                v257 = dispatch thunk of CustomStringConvertible.description.getter();
                v259 = v258;
                v478 = v162;
                v485 = v179;
                v260 = *(v494 + 8);
                v260(v256, v248);
                v261 = sub_100002320(v257, v259, v530);
                v203 = v501;

                *(v250 + 14) = v261;
                _os_log_impl(&_mh_execute_header, v247, v249, "NAN-DP: Peer: %s UUID: %s found in allowedPairedDevicesUUIDs", v250, 0x16u);
                swift_arrayDestroy();

                v260(v488, v248);
                v179 = v485;
                v162 = v478;
                v180 = v466;
              }

              else
              {

                v283 = *(v494 + 8);
                v283(v246, v248);
                sub_100301450(v485, type metadata accessor for NANPeer);
                v283(v488, v248);
              }
            }

            else
            {
              (*(v494 + 8))(v208, v184);
            }

            LODWORD(v494) = 0;
            v491 = 0;
            v202 = 0xE000000000000000;
            goto LABEL_121;
          }

          v117 = v53;
          v118 = swift_unownedRetainStrong();
          sub_10040CAE8(v118, v119, v120, v121);

          v531[0] = 0;
          v531[1] = 0xE000000000000000;
          *&v530[0] = v58;
          swift_getWitnessTable(&protocol conformance descriptor for NSObject, ObjectType);
          DefaultStringInterpolation.appendInterpolation<A>(_:)();
          v122._countAndFlagsBits = 0x63616E6920736920;
          v122._object = 0xEC00000065766974;
          String.append(_:)(v122);
          sub_10033975C(v51, v60, v52 | (v117 << 8) | (v513 << 16) | (v514 << 24) | (v56 << 32) | (v57 << 40), v531[0], v531[1]);

LABEL_35:
          sub_1001854F8(v532);
          return sub_100301450(v519, type metadata accessor for DriverEvent);
        }

LABEL_20:
        sub_1001854F8(v532);
        break;
      }

      if (v49 != 12)
      {
        if (v49 == 13)
        {
          NANBitmap.Channel.operatingClass.getter();
          sub_1002F8094(*v69, *(v69 + 8), *(v69 + 16));
          sub_1001854F8(v532);
          return sub_100301450(v519, type metadata accessor for DriverEvent);
        }

        goto LABEL_20;
      }

      NANBitmap.Channel.operatingClass.getter();
      v515 = *(v87 + 8);
      v88 = *(v87 + 16);
      v89 = qword_10059B898;
      v90 = v518;
      v91 = v518[qword_10059B898];
      p_inst_props = (&OBJC_PROTOCOL___AWDLServiceDiscoveryManagerXPC + 56);
      v511 = qword_10059B898;
      if (v91 == 1)
      {
        v93 = type metadata accessor for P2PTimer(0);
        v94 = v512;
        v503 = v93;
        variable initialization expression of AWDLPeer.lastUpdated();
        v95 = qword_100595978;
        swift_beginAccess();
        v97 = v513;
        v96 = v514;
        v98 = *(v513 + 16);
        ObjectType = v95;
        v99 = v506;
        v98(v506, &v90[v95], v514);
        v100 = v504;
        DispatchTime.distance(to:)();
        v101 = *(v97 + 8);
        v101(v99, v96);
        v101(v94, v96);
        v102 = NANConstants.maximumServiceRetryRate.unsafeMutableAddressor();
        v104 = v507;
        v103 = v508;
        v105 = v505;
        (*(v507 + 16))(v505, v102, v508);
        LOBYTE(v95) = static DispatchTimeInterval.< infix(_:_:)(v105, v100);
        v106 = *(v104 + 8);
        v106(v105, v103);
        v106(v100, v103);
        if (v95)
        {
          v107 = qword_10059B8A0;
          v108 = v90;
          v109 = Logger.logObject.getter();
          v110 = static os_log_type_t.error.getter();

          v111 = os_log_type_enabled(v109, v110);
          LODWORD(v502) = v88;
          if (!v111)
          {

LABEL_79:
            v212 = v499;
            v213 = v512;
            variable initialization expression of AWDLPeer.lastUpdated();
            v214 = v518;
            v215 = ObjectType;
            swift_beginAccess();
            (*(v513 + 40))(&v214[v215], v213, v514);
            swift_endAccess();
            v216 = *(p_inst_props[302] + v108);
            swift_unownedRetainStrong();
            sub_10040CBA8();
            v513 = v107;

            swift_unownedRetainStrong();
            v217 = *(*v216 + 96);
            swift_beginAccess();
            v218 = v510;
            v219 = AssociatedTypeWitness;
            (*(v510 + 16))(v212, v216 + v217, AssociatedTypeWitness);

            v220 = qword_10059B890;
            swift_beginAccess();
            v221 = v489;
            sub_1003013DC(&v108[v220], v489, type metadata accessor for NANPublish.Configuration);
            v222 = swift_getAssociatedConformanceWitness();
            (*(v222 + 208))(v221, v219, v222);
            sub_100301450(v221, type metadata accessor for NANPublish.Configuration);
            (*(v218 + 8))(v212, v219);
            return sub_100301450(v519, type metadata accessor for DriverEvent);
          }

          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v531[0] = v114;
          *v112 = 138412546;
          *(v112 + 4) = v108;
          *v113 = v90;
          *(v112 + 12) = 2080;
          v508 = v113;
          if (v515 <= 1)
          {
            if (v515 == -1)
            {
              v116 = 0x80000001004BA5E0;
              v115 = 0xD000000000000011;
              goto LABEL_78;
            }

            if (v515 == 1)
            {
              v115 = 0x754F2064656D6954;
              v116 = 0xE900000000000074;
              goto LABEL_78;
            }
          }

          else
          {
            if (v515 == 2)
            {
              v115 = 0x7165522072657355;
              v116 = 0xEE00646574736575;
              goto LABEL_78;
            }

            if (v515 == 3)
            {
              v115 = 0x6961462070696843;
              v116 = 0xEC0000006572756CLL;
              goto LABEL_78;
            }

            if (v515 == 4)
            {
              v115 = 0xD000000000000018;
              v116 = 0x80000001004BA540;
LABEL_78:
              v210 = v108;
              v211 = sub_100002320(v115, v116, v531);

              *(v112 + 14) = v211;
              _os_log_impl(&_mh_execute_header, v109, v110, "%@ got an early termination with reason: %s. Retrying", v112, 0x16u);
              sub_100016290(v508, &qword_10058B780, &qword_100480AC0);

              sub_100002A00(v114);

              p_inst_props = &OBJC_PROTOCOL___AWDLServiceDiscoveryManagerXPC.inst_props;
              goto LABEL_79;
            }
          }

          v116 = 0xE700000000000000;
          v115 = 0x6E776F6E6B6E55;
          goto LABEL_78;
        }

        v514 = 0;
        v123 = v90;
        v124 = v515;
        v89 = v511;
      }

      else
      {
        v514 = 0;
        v123 = v518;
        v124 = v515;
      }

      v515 = qword_1005959B0;
      if (*&v123[qword_1005959B0] && (v123[qword_1005959B8] & 1) != 0)
      {
        v124 = 1;
      }

      sub_1002EF5A4(v124, v88);
      v223 = v123;
      v224 = Logger.logObject.getter();
      v225 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v224, v225))
      {

LABEL_98:
        v123[v89] = 0;
        *&v223[qword_100595980] = 0;

        v233 = qword_100595988;
        swift_beginAccess();
        *&v530[0] = *&v223[v233];
        __chkstk_darwin();
        _s8InstanceC21NANPublishClientProxyVMa(255, v516, v517, v234);
        v235 = type metadata accessor for Array();

        swift_getWitnessTable(&protocol conformance descriptor for [A], v235);
        Sequence.forEach(_:)();

        *&v530[0] = *&v223[v233];
        __chkstk_darwin();

        Sequence.forEach(_:)();

        *(v515 + v518) = 0;

        v223[qword_1005959B8] = 0;
        v236 = qword_10059B8C0;
        swift_beginAccess();
        v529[0] = *&v223[v236];
        _s17ResponderInstanceCMa(255, v516, v517, v237);
        sub_10020CB70();
        type metadata accessor for Dictionary();

        Dictionary.removeAll(keepingCapacity:)(0);
        sub_1002EE678(v529[0]);
        v238 = swift_unownedRetainStrong();
        sub_10040CAE8(v238, v239, v240, v241);

        sub_100339E14(v223);
        goto LABEL_99;
      }

      v226 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      v228 = swift_slowAlloc();
      v531[0] = v228;
      *v226 = 138412546;
      *(v226 + 4) = v223;
      *v227 = v123;
      *(v226 + 12) = 2080;
      if (v124 <= 1)
      {
        if (v124 == -1)
        {
          v230 = 0x80000001004BA5E0;
          v229 = 0xD000000000000011;
          goto LABEL_97;
        }

        if (v124 == 1)
        {
          v229 = 0x754F2064656D6954;
          v230 = 0xE900000000000074;
          goto LABEL_97;
        }
      }

      else
      {
        switch(v124)
        {
          case 2:
            v229 = 0x7165522072657355;
            v230 = 0xEE00646574736575;
            goto LABEL_97;
          case 3:
            v229 = 0x6961462070696843;
            v230 = 0xEC0000006572756CLL;
            goto LABEL_97;
          case 4:
            v229 = 0xD000000000000018;
            v230 = 0x80000001004BA540;
LABEL_97:
            v231 = v223;
            v232 = sub_100002320(v229, v230, v531);

            *(v226 + 14) = v232;
            _os_log_impl(&_mh_execute_header, v224, v225, "%@ was terminated with reason %s", v226, 0x16u);
            sub_100016290(v227, &qword_10058B780, &qword_100480AC0);

            sub_100002A00(v228);

            v123 = v518;
            v89 = v511;
            goto LABEL_98;
        }
      }

      v230 = 0xE700000000000000;
      v229 = 0x6E776F6E6B6E55;
      goto LABEL_97;
  }

  sub_1003013DC(a1, v40, type metadata accessor for DriverEvent);
  v73 = v518;
  v74 = v518;
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v75, v76))
  {

    v85 = type metadata accessor for DriverEvent;
    v86 = v40;
LABEL_24:
    sub_100301450(v86, v85);
    return sub_100301450(v519, type metadata accessor for DriverEvent);
  }

  v77 = swift_slowAlloc();
  v78 = swift_slowAlloc();
  v79 = swift_slowAlloc();
  v533[0] = v79;
  *v77 = 138412546;
  *(v77 + 4) = v74;
  *v78 = v73;
  *(v77 + 12) = 2080;
  v80 = v74;
  v81 = DriverEvent.description.getter();
  v83 = v82;
  sub_100301450(v40, type metadata accessor for DriverEvent);
  v84 = sub_100002320(v81, v83, v533);

  *(v77 + 14) = v84;
  _os_log_impl(&_mh_execute_header, v75, v76, "%@ received an unexpected %s", v77, 0x16u);
  sub_100016290(v78, &qword_10058B780, &qword_100480AC0);

  sub_100002A00(v79);

  return sub_100301450(v519, type metadata accessor for DriverEvent);
}

uint64_t sub_1002F7170(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  v83[0] = a1;
  v83[1] = a2;
  v83[2] = a3;
  type metadata accessor for OWEKeys(0);
  __chkstk_darwin();
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100595C40, &qword_100499070);
  __chkstk_darwin();
  v13 = &v74 - v12;
  v14 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100597460, &qword_1004AFD18);
  __chkstk_darwin();
  v19 = &v74 - v18;
  v79 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  __chkstk_darwin();
  v80 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 == 4 || (v21 = NANServiceInfo.genericServiceProtocol.getter(a4, a5, a6)) == 0)
  {
LABEL_9:
    sub_100185314(v83, v82);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_1003011A4(v83);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v82[0] = v32;
      *v31 = 136315138;
      v37 = WiFiAddress.description.getter(WORD1(v83[0]) | (HIDWORD(v83[0]) << 16));
      v39 = sub_100002320(v37, v38, v82);

      *(v31 + 4) = v39;
      v36 = "Rejecting datapath request from %s because invalid service specific info was provided in the datapath request";
      goto LABEL_11;
    }

LABEL_12:

    return 0;
  }

  v22 = v21;
  v23 = NANGenericServiceProtocol.datapathSubscribeID.getter(v21);
  if ((v23 & 0x100) != 0)
  {

    goto LABEL_9;
  }

  v24 = v23;
  v25 = v6 + qword_10059B890;
  swift_beginAccess();
  v26 = type metadata accessor for NANPublish.Configuration(0);
  if ((*(v25 + *(v26 + 96)) & 1) == 0)
  {

    v78 = BYTE2(v83[0]);
    v41 = BYTE3(v83[0]);
    v42 = BYTE4(v83[0]);
    v43 = BYTE5(v83[0]);
    v44 = BYTE6(v83[0]);
    v45 = HIBYTE(v83[0]);
    v46 = qword_10059B8A8;
    swift_beginAccess();
    v47 = *(v6 + v46);
    if (*(v47 + 16) && (v77 = v6, v48 = sub_10007CD94(v24 | (v78 << 8) | (v41 << 16) | (v42 << 24) | (v43 << 32) | (v44 << 40) | (v45 << 48)), (v49 & 1) != 0))
    {
      v50 = v48;
      v75 = v43;
      v76 = v44;
      v51 = v42;
      v52 = *(v47 + 56);
      v53 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
      v54 = v41;
      v55 = *(v53 - 8);
      v56 = v52 + *(v55 + 72) * v50;
      v42 = v51;
      v43 = v75;
      v44 = v76;
      sub_1003013DC(v56, v19, type metadata accessor for NANPeer.Service.AuthenticationStatus);
      (*(v55 + 56))(v19, 0, 1, v53);
      v41 = v54;
    }

    else
    {
      v53 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
      (*(*(v53 - 8) + 56))(v19, 1, 1, v53);
    }

    type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
    if ((*(*(v53 - 8) + 48))(v19, 1, v53))
    {
      sub_100016290(v19, &unk_100597460, &qword_1004AFD18);
      swift_endAccess();
    }

    else
    {
      v70 = v80;
      sub_1003013DC(v19, v80, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      sub_100016290(v19, &unk_100597460, &qword_1004AFD18);
      swift_endAccess();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        return *v70;
      }

      sub_100301450(v70, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    }

    sub_100185314(v83, v81);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_1003011A4(v83);
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_12;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v81[0] = v32;
    *v31 = 136315138;
    v71 = WiFiAddress.description.getter(v78 | (v41 << 8) | (v42 << 16) | (v43 << 24) | (v44 << 32) | (v45 << 40));
    v73 = sub_100002320(v71, v72, v81);

    *(v31 + 4) = v73;
    v36 = "Rejecting datapath request from %s because no authenticated PMK was found for the subscribe but authentication is required";
    goto LABEL_11;
  }

  v27 = v26;
  NANGenericServiceProtocol.publicKey.getter(v22, v13);

  v28 = v14;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100016290(v13, &unk_100595C40, &qword_100499070);
    sub_100185314(v83, v81);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_1003011A4(v83);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v81[0] = v32;
      *v31 = 136315138;
      v33 = WiFiAddress.description.getter(WORD1(v83[0]) | (HIDWORD(v83[0]) << 16));
      v35 = sub_100002320(v33, v34, v81);

      *(v31 + 4) = v35;
      v36 = "Rejecting datapath request from %s because no OWE public key was found in the service specific info";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v29, v30, v36, v31, 0xCu);
      sub_100002A00(v32);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v57 = v17;
  (*(v15 + 32))(v17, v13, v28);
  sub_1003013DC(v25 + *(v27 + 92), v11, type metadata accessor for OWEKeys);
  v58 = OWEKeys.generatePMK(for:asClient:)(v17, 0);
  v60 = v59;
  sub_100301450(v11, type metadata accessor for OWEKeys);
  if (v60 >> 60 == 15)
  {
    sub_100185314(v83, v81);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    sub_1003011A4(v83);
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = v57;
      v65 = v15;
      v66 = swift_slowAlloc();
      v81[0] = v66;
      *v63 = 136315138;
      v67 = WiFiAddress.description.getter(WORD1(v83[0]) | (HIDWORD(v83[0]) << 16));
      v69 = sub_100002320(v67, v68, v81);

      *(v63 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v61, v62, "Rejecting datapath request from %s because of a failure to generate the PMK using the OWE keys", v63, 0xCu);
      sub_100002A00(v66);

      (*(v65 + 8))(v64, v28);
    }

    else
    {

      (*(v15 + 8))(v17, v28);
    }

    return 0;
  }

  (*(v15 + 8))(v17, v28);
  return v58;
}

uint64_t sub_1002F7B18(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v6[3] = swift_getObjectType();
    v6[0] = v1;
    swift_unknownObjectRetain_n();
    sub_1002F7B8C(v6, v5, v2, v3, v4);
    swift_unknownObjectRelease();
    return sub_100002A00(v6);
  }

  return result;
}

uint64_t sub_1002F7B8C(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = _s8InstanceC21NANPublishClientProxyVMa(0, *((swift_isaMask & *v5) + 0x50), *((swift_isaMask & *v5) + 0x58), a5);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v40 = &v36 - v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v36 - v15;
  sub_100002B30(a1, v49);
  sub_10005DC58(&unk_100595B60, qword_1004AFC70);
  result = swift_dynamicCast();
  if (result)
  {
    v42 = v48;
    v18 = qword_100595988;
    swift_beginAccess();
    v41 = v5;
    v39 = v18;
    v49[0] = *(v5 + v18);
    v45 = v7;
    v19 = type metadata accessor for Array();
    swift_getWitnessTable(&protocol conformance descriptor for [A], v19);
    Sequence.enumerated()();
    v47 = v46;
    type metadata accessor for EnumeratedSequence();
    EnumeratedSequence.makeIterator()();
    v38 = v19;
    v20 = type metadata accessor for EnumeratedSequence.Iterator();
    v43 = TupleTypeMetadata2 - 8;
    v44 = v20;
    v21 = (v8 + 8);
    v37 = TupleTypeMetadata2;
    while (1)
    {
      EnumeratedSequence.Iterator.next()();
      (*(v12 + 32))(v16, v14, v11);
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v22 = &v16[*(TupleTypeMetadata2 + 48)];
      v23 = *(v22 + 1);
      v24 = *v21;
      swift_unknownObjectRetain();
      v24(v22, v45);
      if (v23)
      {
        swift_unknownObjectRelease();
        if (v42 == v23)
        {
          swift_beginAccess();
          v25 = v14;
          v26 = v11;
          v27 = v40;
          Array.remove(at:)();
          v28 = v27;
          v11 = v26;
          v14 = v25;
          TupleTypeMetadata2 = v37;
          v24(v28, v45);
          swift_endAccess();
          sub_1002EC180();
        }
      }
    }

    v29 = v41;
    v49[0] = *(v41 + v39);
    swift_getWitnessTable(&protocol conformance descriptor for [A], v38);
    if (Collection.isEmpty.getter())
    {
      v30 = v29;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        *(v33 + 4) = v30;
        *v34 = v29;
        v35 = v30;
        _os_log_impl(&_mh_execute_header, v31, v32, "Terminating %@ because it's client was invalidated", v33, 0xCu);
        sub_100016290(v34, &qword_10058B780, &qword_100480AC0);
      }

      sub_1002F29CC();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002F8094(unint64_t a1, uint64_t a2, char *a3)
{
  v206 = a1;
  v207 = a2;
  v208 = a3;
  v184 = swift_isaMask & *v3;
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v182 = &v174 - v5;
  sub_10005DC58(&unk_100595C00, &qword_10048F790);
  __chkstk_darwin();
  v186 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = (&v174 - v7);
  v183 = a1 >> 8;
  v187 = a1 >> 24;
  v188 = HIDWORD(a1);
  v189 = a1 >> 40;
  v190 = HIWORD(a1);
  v191 = HIBYTE(a1);
  v192 = a1;
  v193 = v3;
  v9 = &v3[qword_10059B890];
  swift_beginAccess();
  v185 = v9;

  NANConstants.csaMatterServiceName.unsafeMutableAddressor();
  v10 = String.lowercased()();

  v11 = String.lowercased()();

  if (v10 == v11)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v13 = NANFollowUpReceivedEvent.serviceInfo.getter(v206, v207, v208);
  if (v13 != 4)
  {
    v16 = v13;
    v17 = v14;
    v18 = v15;
    v19 = NANServiceInfo.csaMatterPayload.getter(v13, v14, v15);
    v21 = v20;
    v22 = sub_1001842D0(v16, v17, v18);
    if (v21 >> 60 != 15)
    {
      v68 = sub_1002EBB84(v26, v22, v23, v24, v25);
      if (v68)
      {
        v69 = v68;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v71 = WiFiAddress.apiAddress.getter(BYTE2(v192) | (v187 << 8) | (v188 << 16) & 0xFFFFFF0000FFFFFFLL | (v189 << 24) | (v190 << 32) | (v191 << 40));
        [v69 publishReceivedMessage:isa fromSubscriberID:v183 subscriberAddress:v71];
        sub_100017554(v19, v21);

        swift_unknownObjectRelease();
      }

      else
      {
        sub_100017554(v19, v21);
      }

      return;
    }
  }

LABEL_6:
  v27 = v192;
  v28 = (v192 >> 16);
  v29 = v208;
  Array<A>.retrieve(attribute:)(44, v208, v8);
  v30 = type metadata accessor for NANAttribute(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v33 = v31 + 48;
  if (v32(v8, 1, v30) == 1)
  {
    sub_100016290(v8, &unk_100595C00, &qword_10048F790);
LABEL_12:
    v35 = v186;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 39)
  {
    sub_100301450(v8, type metadata accessor for NANAttribute);
    goto LABEL_12;
  }

  v181 = v33;
  v34 = v8[1];
  v204 = *v8;
  *v205 = v34;
  *&v205[10] = *(v8 + 26);
  if (NANAttribute.PairingBootstrapping.type.getter() != 1)
  {
    v35 = v186;
    sub_1001440B0(&v204);
    goto LABEL_13;
  }

  v176 = v32;
  v177 = v29;
  v178 = v30;
  v180 = v27 >> 16;
  v72 = type metadata accessor for NANPublish.Configuration(0);
  v73 = v72;
  v74 = *&v185[*(v72 + 84) + 16];
  v75 = *(v74 + 16);
  v76 = _swiftEmptyArrayStorage;
  if (v75)
  {
    v179 = v72;
    *&v194[0] = _swiftEmptyArrayStorage;

    sub_1003678A8(0, v75, 0);
    v76 = *&v194[0];
    v77 = *(*&v194[0] + 16);
    v78 = 32;
    do
    {
      v79 = *(v74 + v78);
      *&v194[0] = v76;
      v80 = v76[3];
      if (v77 >= v80 >> 1)
      {
        sub_1003678A8((v80 > 1), v77 + 1, 1);
        v76 = *&v194[0];
      }

      v76[2] = v77 + 1;
      *(v76 + v77 + 32) = v79;
      v78 += 56;
      ++v77;
      --v75;
    }

    while (v75);

    v73 = v179;
  }

  *&v194[0] = v76;
  v82 = sub_10005DC58(&unk_100597490, &qword_1004B17B0);
  v83 = sub_100168950();
  v84 = Collection<>.strongestSupportedPairingKeySuite.getter(v82, v83);
  LOBYTE(v28) = v180;
  if (v84 == 8)
  {
    sub_1001440B0(&v204);

    LODWORD(v27) = v192;
    v35 = v186;
    v29 = v177;
    v30 = v178;
    v32 = v176;
    goto LABEL_13;
  }

  v175 = v84;

  v85 = v185;
  *&v86 = NANAttribute.PairingBootstrapping.Method.validAdvertisedMethod(from:)(*&v185[*(v73 + 100)]);
  if ((v86 & 0x10000) == 0)
  {
    v87 = v85[*(v73 + 84) + 24];
    v174 = v86;
    v179 = v73;
    if (v87)
    {
      v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v88 & 1) == 0)
      {
        LODWORD(v186) = 1;
        goto LABEL_62;
      }
    }

    else
    {
    }

    v103 = v193;
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *&v194[0] = swift_slowAlloc();
      *v106 = 136315394;
      v107 = v185[v179[21] + 24];

      if (v107)
      {
        if (v107 == 1)
        {
          v108 = 0xD000000000000032;
        }

        else
        {
          v108 = 0xD00000000000001FLL;
        }

        if (v107 == 1)
        {
          v109 = "Allow connection to all devices";
        }

        else
        {
          v109 = "OWE Key Generation";
        }
      }

      else
      {
        v108 = 0xD000000000000027;
        v109 = "rable devices only";
      }

      v110 = sub_100002320(v108, v109 | 0x8000000000000000, v194);

      *(v106 + 4) = v110;
      *(v106 + 12) = 2080;
      v111 = v180;
      v112 = NANPeerServiceIdentifier.description.getter(BYTE1(v192) | (v180 << 8) | (v187 << 16) & 0xFFFF000000FFFFFFLL | (v188 << 24) | (v189 << 32) & 0xFFFF00FFFFFFFFFFLL | (v190 << 40) | (v191 << 48));
      v114 = sub_100002320(v112, v113, v194);

      *(v106 + 14) = v114;
      _os_log_impl(&_mh_execute_header, v104, v105, "NAN-Pairing: In '%s' mode, rejecting Bootstrap Request from %s", v106, 0x16u);
      swift_arrayDestroy();
      LOBYTE(v28) = v111;
    }

    else
    {
    }

    LODWORD(v186) = 0;
LABEL_62:
    sub_1001852A4(&v206, v194);
    sub_1001852A4(&v206, v194);
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v115, v116))
    {
      sub_1003011F8(&v206);
      sub_1003011F8(&v206);

      LODWORD(v121) = v192;
      goto LABEL_70;
    }

    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v119 = v28;
    v120 = v118;
    *&v194[0] = v118;
    *v117 = 136315394;
    LODWORD(v121) = v192;
    v122 = NANPeerServiceIdentifier.description.getter(BYTE1(v192) | (v119 << 8) | (v187 << 16) & 0xFFFF000000FFFFFFLL | (v188 << 24) | (v189 << 32) & 0xFFFF00FFFFFFFFFFLL | (v190 << 40) | (v191 << 48));
    v124 = sub_100002320(v122, v123, v194);

    *(v117 + 4) = v124;
    *(v117 + 12) = 2048;
    v125 = NANFollowUpReceivedEvent.followUpMessage.getter(v206, v207, v208);
    if (!v125)
    {
      sub_1003011F8(&v206);
      v129 = 0;
      goto LABEL_69;
    }

    v126 = NANGenericServiceProtocol.textInfo.getter(v125);
    v128 = v127;

    if (v128 >> 60 == 15)
    {
      goto LABEL_65;
    }

    v172 = v128 >> 62;
    if ((v128 >> 62) > 1)
    {
      if (v172 != 2)
      {
        sub_100017554(v126, v128);
LABEL_65:
        sub_1003011F8(&v206);
        v129 = 0;
LABEL_66:
        LODWORD(v121) = v192;
LABEL_69:
        *(v117 + 14) = v129;
        sub_1003011F8(&v206);
        _os_log_impl(&_mh_execute_header, v115, v116, "NAN-Pairing: Received Bootstrap Request from %s, TXT Record size: %ld bytes", v117, 0x16u);
        sub_100002A00(v120);

LABEL_70:
        sub_1001852A4(&v206, v194);
        v130 = Logger.logObject.getter();
        v131 = static os_log_type_t.debug.getter();
        sub_1003011F8(&v206);
        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          *&v194[0] = v133;
          *v132 = 136315138;
          v134 = NANFollowUpReceivedEvent.followUpMessage.getter(v206, v207, v208);
          if (v134 && (v135 = NANGenericServiceProtocol.apiPublishServiceSpecificInfo.getter(v134), , v135))
          {
            v136 = WiFiAwarePublishServiceSpecificInfo.pairingSSI.getter();
          }

          else
          {
            v136 = 0;
          }

          v199 = v136;
          sub_10005DC58(&unk_100595C60, &unk_1004AFD30);
          v137 = String.init<A>(describing:)();
          v139 = sub_100002320(v137, v138, v194);

          *(v132 + 4) = v139;
          _os_log_impl(&_mh_execute_header, v130, v131, "Received Pairing SSI: %s", v132, 0xCu);
          sub_100002A00(v133);

          LODWORD(v121) = v192;
        }

        else
        {
        }

        v140 = NANFollowUpReceivedEvent.followUpMessage.getter(v206, v207, v208);
        v141 = v179;
        if (v140 && (v142 = NANGenericServiceProtocol.apiPublishServiceSpecificInfo.getter(v140), , v142))
        {
          WiFiAwarePublishServiceSpecificInfo.pairingMetadata.getter(v201);
          v143 = v201[1];
          v183 = v201[2];
          v184 = v201[0];
          v181 = v201[4];
          v182 = v201[3];
          v178 = v201[5];
        }

        else
        {
          v183 = 0;
          v184 = 0;
          v143 = 0;
          v181 = 0;
          v182 = 0;
          v178 = 0;
        }

        if (v185[v141[21] + 24] && v185[v141[21] + 24] == 1)
        {
        }

        else
        {
          v144 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v144 & 1) == 0)
          {
            goto LABEL_90;
          }
        }

        if (!v143 || !*&v193[qword_10059B8B8 + 8])
        {
          v145 = Logger.logObject.getter();
          v146 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v145, v146))
          {
            v147 = swift_slowAlloc();
            v148 = swift_slowAlloc();
            *&v194[0] = v148;
            *v147 = 136315138;
            v149 = NANPeerServiceIdentifier.description.getter(BYTE1(v121) | (v180 << 8) | (v187 << 16) & 0xFFFF000000FFFFFFLL | (v188 << 24) | (v189 << 32) & 0xFFFF00FFFFFFFFFFLL | (v190 << 40) | (v191 << 48));
            v121 = sub_100002320(v149, v150, v194);

            *(v147 + 4) = v121;
            BYTE2(v121) = BYTE2(v192);
            _os_log_impl(&_mh_execute_header, v145, v146, "NAN-Pairing: Missing required pairing metadata in Bootstrap Request from %s. TXT Record: ", v147, 0xCu);
            sub_100002A00(v148);
            v141 = v179;
          }

          LODWORD(v186) = 0;
        }

LABEL_90:
        v151 = v193;
        v152 = swift_unownedRetainStrong();
        sub_10040CAE8(v152, v153, v154, v155);

        v156 = *v185;
        v157 = &v151[qword_10059B8B8];
        v158 = *&v151[qword_10059B8B8 + 8];
        if (v158)
        {
          if (v143)
          {
            v159 = *v157;
            v160 = *(v157 + 2);
            v161 = *(v157 + 6);
            v162 = *(v157 + 5);
            *(&v194[1] + 8) = *(v157 + 24);
            *&v194[0] = v159;
            *(&v194[0] + 1) = v158;
            *&v194[1] = v160;
            *(&v194[2] + 1) = v162;
            *&v195 = v161;
            *(&v195 + 1) = v184;
            *&v196 = v143;
            *(&v196 + 1) = v183;
            *&v197 = v182;
            *(&v197 + 1) = v181;
            v198 = v178;

            goto LABEL_95;
          }
        }

        else
        {
          sub_10030124C(v184, v143, v183, v182, v181, v178);
        }

        v198 = 0;
        v196 = 0u;
        v197 = 0u;
        v195 = 0u;
        memset(v194, 0, sizeof(v194));
LABEL_95:
        v202[4] = v196;
        v202[5] = v197;
        v203 = v198;
        v202[0] = v194[0];
        v202[1] = v194[1];
        v202[2] = v194[2];
        v202[3] = v195;
        v163 = sub_10033A38C(BYTE2(v121) | (v187 << 8) | (v188 << 16) & 0xFFFFFF0000FFFFFFLL | (v189 << 24) | (v190 << 32) | (v191 << 40), v156, v175, v202);
        v165 = v164;
        sub_100016290(v194, &qword_1005968A0, &unk_100499050);

        if (v165)
        {
          v170 = qword_10059BC80;
          v171 = *&v163[qword_10059BC80];
          if (!v171)
          {
            v171 = sub_1002EB358(v169, 0, v166, v167, v168);
          }

          *&v163[v170] = v171;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          sub_1004356C8(v206, v207, v208, v174, v185[v141[26]], v186, v185[v141[31]] & 1);
          sub_1001440B0(&v204);
        }

        else
        {

          sub_1001440B0(&v204);
        }

        return;
      }

      v173 = *(v126 + 16);
      v184 = *(v126 + 24);
      sub_100017554(v126, v128);
      sub_1003011F8(&v206);
      v129 = v184 - v173;
      if (!__OFSUB__(v184, v173))
      {
        goto LABEL_66;
      }

      __break(1u);
    }

    else if (!v172)
    {
      sub_100017554(v126, v128);
      sub_1003011F8(&v206);
      v129 = BYTE6(v128);
      goto LABEL_66;
    }

    sub_100017554(v126, v128);
    sub_1003011F8(&v206);
    LODWORD(v129) = HIDWORD(v126) - v126;
    if (__OFSUB__(HIDWORD(v126), v126))
    {
      __break(1u);
      return;
    }

    v129 = v129;
    goto LABEL_66;
  }

  sub_1001440B0(&v204);
  LODWORD(v27) = v192;
  v35 = v186;
  v29 = v177;
  v30 = v178;
  v32 = v176;
LABEL_13:
  Array<A>.retrieve(attribute:)(36, v29, v35);
  if (v32(v35, 1, v30) == 1)
  {
    sub_100016290(v35, &unk_100595C00, &qword_10048F790);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100301450(v35, type metadata accessor for NANAttribute);
    if (EnumCaseMultiPayload == 32)
    {
      v37 = swift_unownedRetainStrong();
      sub_10040CAE8(v37, v38, v39, v40);

      swift_beginAccess();

      v209 = v28;
      v210 = v187;
      v211 = v188;
      v212 = v189;
      v213 = v190;
      v214 = v191;
      v41 = *(v184 + 80);
      v42 = *(v184 + 88);
      v44 = _s17InitiatorInstanceCMa_0(255, v41, v42, v43);
      v46 = _s17ResponderInstanceCMa_0(255, v41, v42, v45);
      type metadata accessor for Either(0, v44, v46, v47);
      sub_1002CAFC4();
      Dictionary.subscript.getter();

      v48 = v200;
      if (v200 != 255)
      {
        v49 = v199;
        sub_100428AE8(v206, v207, v208, v199, v200 & 1);
        sub_1002CB018(v49, v48);
        return;
      }
    }
  }

  v50 = NANFollowUpReceivedEvent.followUpMessage.getter(v206, v207, v208);
  if (v50)
  {
    v51 = v50;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = v28;
      v28 = swift_slowAlloc();
      v199 = v28;
      *v54 = 136315138;
      v56 = NANPeerServiceIdentifier.description.getter(BYTE1(v27) | (v55 << 8) | (v187 << 16) & 0xFFFF000000FFFFFFLL | (v188 << 24) | (v189 << 32) & 0xFFFF00FFFFFFFFFFLL | (v190 << 40) | (v191 << 48));
      v27 = sub_100002320(v56, v57, &v199);

      *(v54 + 4) = v27;
      LODWORD(v27) = v192;
      _os_log_impl(&_mh_execute_header, v52, v53, "Received a follow up message from %s", v54, 0xCu);
      sub_100002A00(v28);
      LOBYTE(v28) = v55;
    }

    if ((NANGenericServiceProtocol.furtherServiceDiscoveryFollowUp.getter(v51) & 1) == 0)
    {
      goto LABEL_24;
    }

    if (v185[*(type metadata accessor for NANPublish.Configuration(0) + 96)] != 1)
    {
      goto LABEL_24;
    }

    v58 = v185[77];
    if (v58 == 2)
    {
      goto LABEL_24;
    }

    if (v58)
    {
      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v81 & 1) == 0)
      {
LABEL_24:
        v59 = BYTE1(v27) | (v28 << 8) | (v187 << 16) & 0xFFFF000000FFFFFFLL | (v188 << 24) | (v189 << 32) & 0xFFFF00FFFFFFFFFFLL | (v190 << 40) | (v191 << 48);
        v60 = v193;
        sub_1002FDCA0(v51, v59);
        sub_1002FEE4C(v51, v60, v59);

        return;
      }
    }

    else
    {
    }

    v89 = swift_unownedRetainStrong();
    sub_10040CAE8(v89, v90, v91, v92);

    v93 = v185;
    v94 = *(v185 + 3);

    v95 = NANGenericServiceProtocol.AttributeFilter.standardizedAttributes.unsafeMutableAddressor();
    LODWORD(v94) = NANServiceInfo.init(information:filter:)(v94, *v95);
    v97 = v96;
    v99 = v98;
    v100 = *v93;
    v101 = type metadata accessor for NANIdentityKey(0);
    v102 = v182;
    (*(*(v101 - 8) + 56))(v182, 1, 1, v101);
    sub_10036DE50(v94, v97, v99, _swiftEmptyArrayStorage, BYTE2(v27) | (v187 << 8) | (v188 << 16) & 0xFFFFFF0000FFFFFFLL | (v189 << 24) | (v190 << 32) | (v191 << 40), v183, v100, v102);
    sub_1000124C8(v97, v99);

    sub_100016290(v102, &unk_100595C50, &unk_1004AFD20);
  }

  else
  {
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v199 = v64;
      *v63 = 136315138;
      v65 = NANPeerServiceIdentifier.description.getter(BYTE1(v27) | (v28 << 8) | (v187 << 16) & 0xFFFF000000FFFFFFLL | (v188 << 24) | (v189 << 32) & 0xFFFF00FFFFFFFFFFLL | (v190 << 40) | (v191 << 48));
      v67 = sub_100002320(v65, v66, &v199);

      *(v63 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v61, v62, "Failed to parse the follow up received from %s", v63, 0xCu);
      sub_100002A00(v64);
    }
  }
}

uint64_t sub_1002F95BC(uint64_t a1)
{
  v3 = qword_10059B890;
  swift_beginAccess();
  sub_100301304(a1, v1 + v3, type metadata accessor for NANPublish.Configuration);
  return swift_endAccess();
}

uint64_t sub_1002F9630(uint64_t a1, unint64_t a2, int a3)
{
  v7 = v3;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 138412802;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2080;
    v13 = v7;
    *(v10 + 14) = sub_100002320(a1, a2, &v17);
    *(v10 + 22) = 1024;
    *(v10 + 24) = a3;
    _os_log_impl(&_mh_execute_header, v8, v9, "%@ updated bundleID to: %s and pid to %d", v10, 0x1Cu);
    sub_100016290(v11, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v12);
  }

  v14 = &v7[qword_10059B8C8];
  *v14 = a1;
  *(v14 + 1) = a2;

  v15 = &v7[qword_1005959C8];
  *v15 = a3;
  v15[4] = 0;

  result = static LaunchServiceRecord.isExternalApi(for:)(a1, a2);
  v7[qword_1005959D0] = result & 1;
  return result;
}

void *sub_1002F9804(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  result = sub_1002EBB84(a3, a1, a2, a4, a5);
  if (result)
  {
    v8 = result;
    v9 = WiFiAddress.apiAddress.getter(a2 & 0xFFFFFFFFFFFFLL);
    [v8 publishDetectedMulticastError:a1 fromMulticastReceiver:v9];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1002F9888(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1002EBB84(a1, a2, a3, a4, a5);
  if (result)
  {
    v7 = result;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v9 = WiFiAddress.apiAddress.getter(a4 & 0xFFFFFFFFFFFFLL);
    [v7 publishReceivedDataBlobForMulticastSession:isa fromPeer:v9];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002F9930(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v2;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "%@ timed out while waiting for terminate event", v6, 0xCu);
      sub_100016290(v7, &qword_10058B780, &qword_100480AC0);
    }

    v14 = sub_1002EBB84(v13, v9, v10, v11, v12);
    if (v14)
    {
      [v14 publishTerminatedWithReason:2];
      v14 = swift_unknownObjectRelease();
    }

    v19 = sub_1002EBB84(v18, v14, v15, v16, v17);
    if (v19)
    {
      v20 = v19;
      v29[3] = swift_getObjectType();
      v29[0] = v20;
      swift_unknownObjectRetain();
      sub_1002F7B8C(v29, v24, v21, v22, v23);
      swift_unknownObjectRelease();
      sub_100002A00(v29);
    }

    v25 = swift_unownedRetainStrong();
    sub_10040CAE8(v25, v26, v27, v28);

    sub_100339E14(v3);

    sub_1002EF5A4(1, 12);
  }
}

void sub_1002F9B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + qword_10059B898) == 1)
  {
    v4 = swift_isaMask & *v3;
    WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
    swift_beginAccess();
    _s17ResponderInstanceCMa(0, *(v4 + 80), *(v4 + 88), v5);
    sub_10020CB70();
    Dictionary.subscript.getter();
    v6 = v17;
    if (v17)
    {
      swift_endAccess();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "registerdatapathResponderTerminateCallback ", v9, 2u);
      }

      v10 = (&v17->isa + qword_10059B828);
      v11 = *(&v17->isa + qword_10059B828);
      v12 = *(&v17[1].isa + qword_10059B828);
      *v10 = a2;
      v10[1] = a3;
      sub_100010520(v11, v12);

      goto LABEL_9;
    }

    swift_endAccess();
  }

  v6 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v6, v13, "registerdatapathResponderTerminateCallback failed", v14, 2u);
  }

LABEL_9:
}

uint64_t sub_1002F9D70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = swift_isaMask;
  type metadata accessor for NANPublish.Configuration(0);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s8InstanceC21NANPublishClientProxyVMa(0, *((v9 & v8) + 0x50), *((v9 & v8) + 0x58), v12);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v20 - v17;
  sub_1003013DC(a2, v11, type metadata accessor for NANPublish.Configuration);
  *v18 = a3;
  *(v18 + 1) = a1;
  sub_10030129C(v11, &v18[*(v13 + 40)], type metadata accessor for NANPublish.Configuration);
  (*(v14 + 16))(v16, v18, v13);
  swift_beginAccess();
  type metadata accessor for Array();
  swift_unknownObjectRetain();
  Array.append(_:)();
  swift_endAccess();
  sub_1002EC180();
  return (*(v14 + 8))(v18, v13);
}

void sub_1002F9FB0()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v5 = *v4;
  *v3 = *v4;
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v5)
  {
    sub_1002F29CC();
  }

  else
  {
    __break(1u);
  }
}

void sub_1002FA0C0(void *a1)
{
  v1 = a1;
  sub_1002F9FB0();
}

void sub_1002FA108(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_isaMask & *v3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v12 = *v11;
  *v10 = *v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v12)
  {
    if (*(v3 + qword_10059B898) == 1)
    {
      v29 = a2;
      v30 = a3;
      v14 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
      v15 = v14;
      v16 = v14 >> 8;
      v17 = v14 >> 16;
      v18 = v14 >> 24;
      v19 = HIDWORD(v14);
      v20 = v14 >> 40;
      v21 = HIWORD(v14);
      swift_beginAccess();
      v31 = v15;
      v32 = v16;
      v33 = v17;
      v34 = v18;
      v35 = v19;
      v36 = v20;
      v37 = v21;
      _s17ResponderInstanceCMa(0, *(v6 + 80), *(v6 + 88), v22);
      sub_10020CB70();
      Dictionary.subscript.getter();
      v23 = v38;
      if (v38)
      {
        swift_endAccess();
        v24 = &v23[qword_10059B820];
        v25 = *&v23[qword_10059B820];
        v26 = *&v23[qword_10059B820 + 8];
        v27 = v30;
        *v24 = v29;
        *(v24 + 1) = v27;
        sub_100010520(v25, v26);

        sub_1002C1BE0();

        return;
      }

      swift_endAccess();
      a2 = v29;
    }

    a2(3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002FA3AC(uint64_t a1, uint64_t (*a2)(void, __n128))
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v9 = *v8;
  *v7 = *v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v9)
  {
    if (*(v2 + qword_10059B8B0))
    {

      v12 = WiFiMACAddress.wifiAddress.getter();
      sub_100318F44(v12 & 0xFFFFFFFFFFFFLL);
    }

    return (a2)(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002FA544(uint64_t a1, unint64_t a2, void *a3, unsigned int a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v63 = a4;
  v62 = a3;
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v12 = &v56 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v18 = *v17;
  *v16 = *v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v16, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  if (v6[qword_10059B898] != 1)
  {
    return a5(3);
  }

  v60 = a6;
  v61 = a5;
  v21 = &v6[qword_10059B890];
  swift_beginAccess();
  v59 = v21;

  NANConstants.csaMatterServiceName.unsafeMutableAddressor();
  v22 = String.lowercased()();

  v23 = String.lowercased()();

  if (v22._countAndFlagsBits == v23._countAndFlagsBits && v22._object == v23._object)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      rawValue = NANGenericServiceProtocol.init()().attributes._rawValue;
      sub_10000AB0C(a1, a2);
      NANGenericServiceProtocol.blob.setter(a1, a2);
      v29 = rawValue;
      v30 = NANGenericServiceProtocol.AttributeFilter.all.unsafeMutableAddressor();
      v58 = NANServiceInfo.init(information:filter:)(v29, *v30);
      v26 = v31;
      v28 = v32;
      goto LABEL_10;
    }
  }

  v58 = NANServiceInfo.init(csaMatterPayload:)();
  v26 = v25;
  v28 = v27;
  sub_10000AB0C(a1, a2);
LABEL_10:
  v33 = v62;
  v34 = v6;
  v35 = v33;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v57 = v28;
    v40 = v39;
    v41 = swift_slowAlloc();
    v62 = v26;
    v42 = v41;
    rawValue = v41;
    *v38 = 138412546;
    *(v38 + 4) = v34;
    *v40 = v34;
    *(v38 + 12) = 2080;
    v43 = v34;
    v44 = WiFiMACAddress.wifiAddress.getter();
    v45 = WiFiAddress.description.getter(v44 & 0xFFFFFFFFFFFFLL);
    v47 = sub_100002320(v45, v46, &rawValue);

    *(v38 + 14) = v47;
    _os_log_impl(&_mh_execute_header, v36, v37, "%@ publisher sending follow-up to %s", v38, 0x16u);
    sub_100016290(v40, &qword_10058B780, &qword_100480AC0);
    v28 = v57;

    sub_100002A00(v42);
    v26 = v62;
  }

  v48 = v61;
  v49 = swift_unownedRetainStrong();
  sub_10040CAE8(v49, v50, v51, v52);

  v53 = WiFiMACAddress.wifiAddress.getter();
  v54 = *v59;
  v55 = type metadata accessor for NANIdentityKey(0);
  (*(*(v55 - 8) + 56))(v12, 1, 1, v55);
  sub_10036DE50(v58, v26, v28, _swiftEmptyArrayStorage, v53 & 0xFFFFFFFFFFFFLL, v63, v54, v12);

  sub_100016290(v12, &unk_100595C50, &unk_1004AFD20);
  v48(0);
  return sub_1000124C8(v26, v28);
}

void sub_1002FAA90(void *a1, int a2, void *a3, void *a4, unsigned int a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v17 = a1;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  sub_1002FA544(v13, v15, v12, a5, sub_1000114BC, v16);

  sub_1000124C8(v13, v15);
}

uint64_t sub_1002FAB84(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t))
{
  v20 = a2;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v15 = *v14;
  *v13 = *v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v15)
  {
    if (*(v5 + qword_10059B898) == 1)
    {
      if (*(v5 + qword_10059B8B0))
      {

        if (a3)
        {
          v18 = WiFiMACAddress.wifiAddress.getter() & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = 0;
        }

        v21 = a3 == 0;
        sub_10031BEB8(a1, v20, v18 | ((a3 == 0) << 48), a4 & 1);
      }

      v19 = 0;
    }

    else
    {
      v19 = 3;
    }

    return a5(v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002FAD4C(void *a1, int a2, void *a3, void *a4, char a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v16 = a1;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(swift_allocObject() + 16) = v10;
  sub_1002FAB84(v13, v15, a4, a5, sub_1000114BC);

  sub_1000124C8(v13, v15);
}

double sub_1002FAE48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    rawValue = WiFiAwarePublishDatapathServiceSpecificInfo.genericServiceProtocol.getter();
  }

  else
  {
    rawValue = NANGenericServiceProtocol.init()().attributes._rawValue;
  }

  v4 = rawValue;
  v5 = a1 + qword_10059B890;
  swift_beginAccess();
  *(v5 + *(type metadata accessor for NANPublish.Configuration(0) + 84) + 8) = v4;

  return sub_1002F22E8();
}

uint64_t sub_1002FAF28(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t))
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v14 = *v13;
  *v12 = *v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v14)
  {
    if (*(v4 + qword_10059B898) == 1)
    {
      *&v17 = __chkstk_darwin().n128_u64[0];
      *(&v20 - 2) = v4;
      *(&v20 - 1) = a1;
      WitnessTable = swift_getWitnessTable(byte_1004AFCD0, ObjectType, v17);
      sub_10036E438(a4, &v20 - 32, ObjectType, WitnessTable);
      v19 = 0;
    }

    else
    {
      v19 = 3;
    }

    return a2(v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1002FB128(uint64_t a1, void *a2)
{
  v3 = a1 + qword_10059B890;
  swift_beginAccess();
  v21 = *(v3 + 24);
  if (!a2)
  {

    NANGenericServiceProtocol.blob.setter(0, 0xF000000000000000);
    NANGenericServiceProtocol.textInfo.setter(0, 0xF000000000000000);
    v9 = 0;
LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  v4 = [a2 blob];
  if (v4)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  NANGenericServiceProtocol.blob.setter(v6, v8);
  v10 = [a2 txtRecordData];
  if (v10)
  {
    v11 = v10;
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  NANGenericServiceProtocol.textInfo.setter(v12, v14);
  v9 = [a2 instanceName];
  if (!v9)
  {
    goto LABEL_11;
  }

  v15 = v9;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = v18;
  v9 = v16;
LABEL_12:
  NANGenericServiceProtocol.instanceName.setter(v9, v19);
  *(v3 + 24) = v21;
  ++*(v3 + 32);

  *(v3 + 77) = sub_1002F2178();
  return sub_1002F22E8();
}

double sub_1002FB310(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t (*a6)(uint64_t), void (*a7)(uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  sub_1002FAF28(a3, a6, v12, a7);

  return result;
}

double sub_1002FB3B8(uint64_t a1, uint64_t a2)
{
  sub_10005DC58(&unk_100595BF0, &unk_1004AFCF8);
  __chkstk_darwin();
  v5 = &v14[-v4];
  v6 = type metadata accessor for NANPublish.Configuration(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100012400(a2, v5, &unk_100595BF0, &unk_1004AFCF8);
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    v11 = qword_10059B890;
    swift_beginAccess();
    sub_1003013DC(a1 + v11, v9, type metadata accessor for NANPublish.Configuration);
    if (v10(v5, 1, v6) != 1)
    {
      sub_100016290(v5, &unk_100595BF0, &unk_1004AFCF8);
    }
  }

  else
  {
    sub_10030129C(v5, v9, type metadata accessor for NANPublish.Configuration);
  }

  v12 = a1 + qword_10059B890;
  swift_beginAccess();
  sub_10030018C(v9, v12);
  swift_endAccess();
  *(v12 + 77) = sub_1002F2178();
  return sub_1002F22E8();
}

void sub_1002FB5E4(void *a1, void (*a2)(uint64_t, uint64_t, unint64_t))
{
  v3 = *v2;
  v4 = swift_isaMask;
  WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
  v5 = swift_unownedRetainStrong();
  sub_10040CAE8(v5, v6, v7, v8);

  swift_beginAccess();

  v9 = *((v4 & v3) + 0x50);
  v10 = *((v4 & v3) + 0x58);
  v12 = _s17InitiatorInstanceCMa_0(255, v9, v10, v11);
  v14 = _s17ResponderInstanceCMa_0(255, v9, v10, v13);
  type metadata accessor for Either(0, v12, v14, v15);
  sub_1002CAFC4();
  Dictionary.subscript.getter();

  if (v31 == 255)
  {
    v19 = a1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315138;
      v24 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
      v25 = NANPeerServiceIdentifier.description.getter(v24 & 0xFFFFFFFFFFFFFFLL);
      v27 = sub_100002320(v25, v26, &v30);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unable to get diversified pin for %s because there is no active pairing session", v22, 0xCu);
      sub_100002A00(v23);
    }

    a2(3, 0x303030303030, 0xE600000000000000);
  }

  else
  {
    v16 = sub_100440B3C(v30);
    v18 = v17;

    a2(0, v16, v18);

    sub_1002CB018(v30, v31);
  }
}

uint64_t sub_1002FB908(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v10 = *v9;
  *v8 = *v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v10)
  {
    if (v2[qword_10059B898] == 1 && (v13 = qword_1005959B0, *&v2[qword_1005959B0]) && (v2[qword_1005959B8] & 1) == 0)
    {
      if (a1 && (swift_beginAccess(), static Duration.+ infix(_:_:)(), (static Duration.< infix(_:_:)() & 1) == 0))
      {
        v15 = &v2[qword_10059B890];
        swift_beginAccess();
        *&v15[*(type metadata accessor for NANPublish.Configuration(0) + 120)] = a1;
        v16 = v2;
        v29 = v2;
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412290;
          *(v19 + 4) = v16;
          *v20 = v16;
          v21 = v16;
          _os_log_impl(&_mh_execute_header, v17, v18, "%@ cancelling current expiry timer", v19, 0xCu);
          sub_100016290(v20, &qword_10058B780, &qword_100480AC0);
        }

        *&v29[v13] = 0;

        v22 = v16;
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          *v25 = 138412546;
          *(v25 + 4) = v22;
          *v26 = v22;
          *(v25 + 12) = 2048;
          *(v25 + 14) = a1;
          v27 = v22;
          _os_log_impl(&_mh_execute_header, v23, v24, "%@ setting new timeout to %lu seconds", v25, 0x16u);
          sub_100016290(v26, &qword_10058B780, &qword_100480AC0);
        }

        sub_1002EEB78(a1);
        v14 = 0;
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = 3;
    }

    return a2(v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1002FBCDC(void *a1, int a2, unint64_t a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;
  v7 = a1;
  sub_1002FB908(a3, sub_1000104E4);

  return result;
}

void sub_1002FBD70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a1;
  v5 = *((swift_isaMask & *v2) + 0x58);
  v50 = *((swift_isaMask & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v9 = &v45 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v15 = *v14;
  *v13 = *v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v15)
  {
    v45 = AssociatedTypeWitness;
    v46 = v9;
    v47 = v7;
    v48 = a2;
    v17 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
    v18 = v17;
    v19 = v17 >> 8;
    v20 = v17 >> 16;
    v21 = v17 >> 24;
    v22 = HIDWORD(v17);
    v23 = v5;
    v24 = v17 >> 40;
    v25 = HIWORD(v17);
    swift_beginAccess();
    v51 = v18;
    v52 = v19;
    v53 = v20;
    v54 = v21;
    v55 = v22;
    v56 = v24;
    v57 = v25;
    _s17ResponderInstanceCMa(0, v50, v23, v26);
    sub_10020CB70();
    Dictionary.subscript.getter();
    v27 = v58;
    if (v58)
    {
      swift_endAccess();
      v28 = v49;
      sub_1002BE864(v49);
      v29 = *(v3 + qword_100595970);
      v30 = swift_unownedRetainStrong();
      sub_10040CAE8(v30, v31, v32, v33);

      sub_100339E28();

      v34 = swift_unownedRetainStrong();
      sub_10040CAE8(v34, v35, v36, v37);

      sub_100339E54();

      swift_unownedRetainStrong();
      v38 = *(*v29 + 96);
      swift_beginAccess();
      v39 = v47;
      v40 = v29 + v38;
      v42 = v45;
      v41 = v46;
      (*(v47 + 16))(v46, v40, v45);

      v43 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 400))(v28, v43 & 0xFFFFFFFFFFFFFFLL, v42, AssociatedConformanceWitness);
      (*(v39 + 8))(v41, v42);
    }

    else
    {
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002FC304(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a1;
  sub_1002FBD70(a3, v6);
}

void sub_1002FC374(void *a1, void (*a2)(uint64_t, id), uint64_t a3)
{
  v4 = v3;
  v80 = a3;
  v81 = a1;
  v6 = *((swift_isaMask & *v3) + 0x58);
  v7 = *((swift_isaMask & *v3) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v9 = &v73 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v15 = *v14;
  *v13 = *v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v74 = v9;
  v73 = v14;
  v79 = a2;
  v17 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
  v18 = v17;
  v19 = v17 >> 8;
  v20 = v17 >> 16;
  v21 = v7;
  v22 = v6;
  v23 = v17 >> 24;
  v24 = HIDWORD(v17);
  v77 = (v17 >> 40);
  v25 = HIWORD(v17);
  swift_beginAccess();
  v78 = v4;
  v90 = v18;
  v91 = v19;
  v92 = v20;
  v93 = v23;
  v26 = v22;
  v27 = v21;
  v94 = v24;
  v95 = v77;
  v96 = v25;
  _s17ResponderInstanceCMa(0, v21, v26, v28);
  sub_10020CB70();
  Dictionary.subscript.getter();
  v29 = v87[0];
  if (v87[0])
  {
    swift_endAccess();
    v30 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
    v31 = v78;
    v32 = *(v78 + qword_100595970);
    swift_unownedRetainStrong();
    v33 = *(*v32 + 96);
    swift_beginAccess();
    v34 = v75;
    v35 = v32 + v33;
    v36 = v74;
    v37 = AssociatedTypeWitness;
    (*(v75 + 16))(v74, v35, AssociatedTypeWitness);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v81 = (*(AssociatedConformanceWitness + 480))((v30 >> 8) & 0xFFFFFFFFFFFFLL, v37, AssociatedConformanceWitness);
    (*(v34 + 8))(v36, v37);
    v48 = v31 + qword_10059B890;
    swift_beginAccess();
    v49 = type metadata accessor for NANPublish.Configuration(0);
    sub_100012400(v48 + *(v49 + 88), &aBlock, &unk_1005974B0, &qword_1004AFCF0);
    if (v86 == 255)
    {
      sub_100016290(&aBlock, &unk_1005974B0, &qword_1004AFCF0);
      v50 = v29;
    }

    else
    {
      v50 = v29;
      if (v86)
      {
        sub_100029954(&aBlock, v87);
        v51 = v88;
        v52 = v89;
        sub_100029B34(v87, v88);
        v53 = (*(v52 + 24))(v51, v52);
        [v81 setInfraRelayOperationStatus:v53 & 1];
        sub_100002A00(v87);
      }

      else
      {
        sub_10020C758(&aBlock);
      }
    }

    v54 = *(v31 + qword_100595990);
    if (v54)
    {
      v55 = v54;
      WiFiAwareDataSessionStatisticsReport.difference(from:)(v55);
    }

    else
    {
      v56 = v81;
      *(v31 + qword_100595990) = v81;
      v57 = qword_1005959A8;
      swift_beginAccess();
      v58 = *(v31 + v57);
      v59 = v56;
      if (notify_is_valid_token(v58))
      {
        goto LABEL_19;
      }

      AssociatedTypeWitness = HIWORD(v30);
      v75 = v30 >> 40;
      v77 = *v73;
      v60 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v61 = swift_allocObject();
      *(v61 + 16) = v27;
      *(v61 + 24) = v26;
      *(v61 + 32) = v60;
      *(v61 + 40) = BYTE1(v30);
      *(v61 + 41) = BYTE2(v30);
      *(v61 + 42) = BYTE3(v30);
      *(v61 + 43) = BYTE4(v30);
      *(v61 + 44) = v75;
      *(v61 + 45) = AssociatedTypeWitness;
      v85 = sub_1003014D4;
      v86 = v61;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v83 = sub_1001C5BEC;
      v84 = &unk_100575258;
      v62 = _Block_copy(&aBlock);
      v63 = v77;

      swift_beginAccess();
      v64 = notify_register_dispatch("com.apple.airplay.isPlayingAmbientAudioChanged", (v31 + v57), v63, v62);
      swift_endAccess();
      _Block_release(v62);

      if (!v64)
      {
        goto LABEL_19;
      }

      v55 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *&aBlock = v67;
        *v66 = 136315138;
        v68 = static WiFiError.notifyErrorMessage(from:)(v64);
        v70 = sub_100002320(v68, v69, &aBlock);

        *(v66 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v55, v65, "Failed to start monitoring statistic reset events with error: %s", v66, 0xCu);
        sub_100002A00(v67);
      }
    }

LABEL_19:
    v71 = v81;
    v72 = v81;
    v79(0, v71);

    return;
  }

  swift_endAccess();
  v39 = v81;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&aBlock = v43;
    *v42 = 136315138;
    v44 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
    v45 = NANPeerServiceIdentifier.description.getter(v44 & 0xFFFFFFFFFFFFFFLL);
    v47 = sub_100002320(v45, v46, &aBlock);

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v40, v41, "Unable to generate data session statistics for %s because the publish or datapath responder referenced doesn't exist", v42, 0xCu);
    sub_100002A00(v43);
  }

  v79(3, 0);
}

void sub_1002FCDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v9 = &v17 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + qword_100595970);
    swift_unownedRetainStrong();
    v13 = *(*v12 + 96);
    swift_beginAccess();
    (*(v7 + 16))(v9, v12 + v13, AssociatedTypeWitness);

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = (*(AssociatedConformanceWitness + 480))(a3 & 0xFFFFFFFFFFFFLL, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v7 + 8))(v9, AssociatedTypeWitness);
    v16 = *&v11[qword_100595990];
    *&v11[qword_100595990] = v15;
  }
}

double sub_1002FD12C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);

  return result;
}

uint64_t sub_1002FD1D4(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v9 = *v8;
  *v7 = *v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v9)
  {
    if (*(v1 + qword_10059B898) == 1)
    {
      v41 = a1;
      v12 = WiFiAwarePublisherDataSessionHandle.peerServiceIdentifier.getter();
      v13 = v12;
      v14 = v12 >> 8;
      v15 = v12 >> 16;
      v16 = v12 >> 24;
      v17 = HIDWORD(v12);
      v18 = v12 >> 40;
      v19 = HIWORD(v12);
      swift_beginAccess();
      v44 = v13;
      v45 = v14;
      v46 = v15;
      v47 = v16;
      v48 = v17;
      v49 = v18;
      v50 = v19;
      _s17ResponderInstanceCMa(0, *(v3 + 80), *(v3 + 88), v20);
      sub_10020CB70();
      Dictionary.subscript.getter();
      v21 = v42;
      if (v42)
      {
        swift_endAccess();
        v22 = v21;
        v23 = v41;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 138412546;
          *(v26 + 4) = v22;
          *(v26 + 12) = 2112;
          *(v26 + 14) = v23;
          *v27 = v21;
          v27[1] = v23;
          v28 = v22;
          v29 = v23;
          _os_log_impl(&_mh_execute_header, v24, v25, "%@ got an issue report %@", v26, 0x16u);
          sub_10005DC58(&qword_10058B780, &qword_100480AC0);
          swift_arrayDestroy();
        }

        swift_unownedRetainStrong();
        v30 = &v22[qword_100594B08];
        swift_beginAccess();
        v42 = NANPeerServiceIdentifier.description.getter(*v30 | (v30[8] << 8) | (v30[9] << 16) | (*(v30 + 10) << 24));
        v43 = v31;
        v32._countAndFlagsBits = 0x686374696C47203ALL;
        v32._object = 0xE900000000000020;
        String.append(_:)(v32);
        v33 = [v23 rtpSequenceNumber];
        if (v33)
        {
          v34 = v33;
          v35 = [v33 description];

          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;
        }

        else
        {
          v36 = 0;
          v38 = 0xE000000000000000;
        }

        v39._countAndFlagsBits = v36;
        v39._object = v38;
        String.append(_:)(v39);

        sub_10040D52C(v42, v43);
      }

      else
      {
        return swift_endAccess();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002FD60C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1002FD1D4(v6);
}

id sub_1002FD688(void *a1)
{
  v1 = a1;
  sub_1002FD6F0();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

uint64_t sub_1002FD6F0()
{
  strcpy(v11, "NANPublish [");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  v1 = v0 + qword_10059B890;
  swift_beginAccess();
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8285;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v5 = *(v1 + 8);
  v4 = *(v1 + 16);

  v6 = NANServiceName.description.getter(v5, v4);
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  return v11[0];
}

void sub_1002FD83C(uint64_t a1)
{
  if (!qword_100595AD0[0])
  {
    type metadata accessor for LongTermPairingKeys(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, qword_100595AD0);
    }
  }
}

void sub_1002FD894(uint64_t a1)
{
  sub_1002FD968(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NANPublish.Configuration(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002FD968(uint64_t a1)
{
  if (!qword_100595B58)
  {
    sub_10005DD04(&unk_100595B60, qword_1004AFC70);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100595B58);
    }
  }
}

uint64_t sub_1002FDA88(uint64_t a1)
{
  result = swift_getWitnessTable("q\r\n");
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002FDB0C(uint64_t a1)
{
  result = swift_getWitnessTable("]\r\n");
  *(a1 + 8) = result;
  return result;
}

void sub_1002FDB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (Strong[qword_10059B898] == 1)
    {
      *&Strong[qword_100595998] = 0;

      __chkstk_darwin();
      v11 = v6;
      v8 = _s8InstanceCMa_0(0, a2, a3, v7);
      WitnessTable = swift_getWitnessTable(byte_1004AFCD0, v8);
      sub_10036E438(sub_10030028C, &v10, v8, WitnessTable);
    }

    else
    {
    }
  }
}

uint64_t sub_1002FDCA0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v141 = a2;
  v144 = a1;
  sub_10005DC58(&unk_100597460, &qword_1004AFD18);
  __chkstk_darwin();
  v129 = &v115[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v136 = &v115[-v5];
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v133 = &v115[-v6];
  v7 = type metadata accessor for DispatchTime();
  v131 = *(v7 - 8);
  v132 = v7;
  __chkstk_darwin();
  v130 = &v115[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  v138 = *(v9 - 8);
  v139 = v9;
  __chkstk_darwin();
  v128 = &v115[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v137 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  __chkstk_darwin();
  v135 = &v115[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v134 = &v115[-v12];
  type metadata accessor for OWEKeys(0);
  __chkstk_darwin();
  v140 = &v115[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10005DC58(&unk_100595C40, &qword_100499070);
  __chkstk_darwin();
  v15 = &v115[-v14];
  v16 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v142 = &v115[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10005DC58(&qword_10058C8D8, &qword_100482300);
  __chkstk_darwin();
  v20 = &v115[-v19];
  v21 = type metadata accessor for LongTermPairingKeys(0);
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v115[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v143 = v3;
  sub_100012400(v3 + qword_1005959A0, v20, &qword_10058C8D8, &qword_100482300);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v25 = &qword_10058C8D8;
    v26 = &qword_100482300;
    v27 = v20;
    return sub_100016290(v27, v25, v26);
  }

  sub_10030129C(v20, v24, type metadata accessor for LongTermPairingKeys);
  NANGenericServiceProtocol.publicKey.getter(v144, v15);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v37 = v16;
    v38 = v141;
    v127 = v24;
    v39 = HIWORD(v141);
    v40 = HIDWORD(v141);
    v123 = v141 >> 24;
    v122 = v141 >> 16;
    v119 = v17;
    v41 = *(v17 + 32);
    v120 = v37;
    v41(v142, v15);
    v42 = v143;
    v43 = (v143 + qword_10059B890);
    swift_beginAccess();
    v44 = type metadata accessor for NANPublish.Configuration(0);
    v45 = v140;
    sub_1003013DC(&v43[*(v44 + 92)], v140, type metadata accessor for OWEKeys);
    v46 = *(v42 + qword_100595970);
    swift_unownedRetainStrong();
    v47 = WiFiInterface.macAddress.getter();
    v118 = v46;

    v48 = *(v43 + 3);
    v126 = BYTE6(v38);
    v121 = BYTE5(v38);
    v49 = (BYTE5(v38) << 32) & 0xFFFF00FFFFFFFFFFLL | (v39 << 40);
    v24 = v127;
    v125 = BYTE4(v38);
    v124 = BYTE3(v38);
    v50 = v49 & 0xFFFFFFFF0000FFFFLL | (v40 << 24) | (v123 << 16);
    v123 = BYTE2(v38);
    v51 = v50 & 0xFFFFFFFFFFFF00FFLL | (v122 << 8);
    v122 = BYTE1(v38);
    v52 = v51 & 0xFFFFFFFFFFFFFF00 | BYTE1(v38);

    v54 = LongTermPairingKeys.authenticationResponse(forPeer:with:using:on:myServiceSpecificInfo:)(v52, v144, v45, v47 & 0xFFFFFFFFFFFFLL, v48, v53);

    sub_100301450(v45, type metadata accessor for OWEKeys);
    if (!v54)
    {
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      v68 = v42;
      if (os_log_type_enabled(v66, v67))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v146[0] = v70;
        *v69 = 136315138;
        v71 = NANPeerServiceIdentifier.description.getter((v121 << 40) | (v126 << 48) | (v125 << 32) | (v124 << 24) | (v123 << 16) | (v122 << 8) | v38);
        v73 = sub_100002320(v71, v72, v146);

        *(v69 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v66, v67, "Failed to authenticate %s because authentication response generation failed", v69, 0xCu);
        sub_100002A00(v70);
      }

      v74 = v138;
      v75 = v139;
      v76 = qword_10059B8A8;
      swift_beginAccess();
      v77 = *(v76 + v68);
      if (*(v77 + 16) && (v78 = sub_10007CD94((v121 << 40) | (v126 << 48) | (v125 << 32) | (v124 << 24) | (v123 << 16) | (v122 << 8) | v38), (v79 & 1) != 0))
      {
        v80 = *(v77 + 56) + *(v74 + 72) * v78;
        v81 = v136;
        sub_1003013DC(v80, v136, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        v82 = 0;
      }

      else
      {
        v82 = 1;
        v81 = v136;
      }

      v95 = *(v74 + 56);
      v95(v81, v82, 1, v75);
      swift_endAccess();
      if ((*(v74 + 48))(v81, 1, v75) != 1)
      {
        (*(v119 + 8))(v142, v120);
        sub_100301450(v24, type metadata accessor for LongTermPairingKeys);
        v25 = &unk_100597460;
        v26 = &qword_1004AFD18;
        v27 = v81;
        return sub_100016290(v27, v25, v26);
      }

      sub_100016290(v81, &unk_100597460, &qword_1004AFD18);
      v96 = v135;
      v140 = v76;
      *v135 = v144;
      swift_storeEnumTagMultiPayload();
      v97 = v129;
      sub_1003013DC(v96, v129, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      type metadata accessor for P2PTimer(0);

      variable initialization expression of AWDLPeer.lastUpdated();
      sub_100301450(v96, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      v95(v97, 0, 1, v75);
      swift_beginAccess();
      sub_100338448(v97, (v121 << 40) | (v126 << 48) | (v125 << 32) | (v124 << 24) | (v123 << 16) | (v122 << 8) | v38);
      swift_endAccess();
      goto LABEL_33;
    }

    sub_1003013DC(&v43[*(v44 + 92)], v45, type metadata accessor for OWEKeys);
    v55 = OWEKeys.generatePMK(for:asClient:)(v142, 0);
    v57 = v56;
    sub_100301450(v45, type metadata accessor for OWEKeys);
    if (v57 >> 60 == 15)
    {

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v146[0] = v61;
        *v60 = 136315138;
        v62 = NANPeerServiceIdentifier.description.getter((v121 << 40) | (v126 << 48) | (v125 << 32) | (v124 << 24) | (v123 << 16) | (v122 << 8) | v38);
        v35 = v24;
        v64 = sub_100002320(v62, v63, v146);

        *(v60 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v58, v59, "Failed to authenticate %s because PMK generation failed", v60, 0xCu);
        sub_100002A00(v61);

        (*(v119 + 8))(v142, v120);
        goto LABEL_11;
      }

      (*(v119 + 8))(v142, v120);
LABEL_28:
      v65 = v24;
      return sub_100301450(v65, type metadata accessor for LongTermPairingKeys);
    }

    v129 = v54;
    v144 = v44;
    v117 = v43;
    v83 = v134;
    *v134 = v55;
    *(v83 + 8) = v57;
    swift_storeEnumTagMultiPayload();
    v84 = qword_10059B8A8;
    v85 = v143;
    swift_beginAccess();
    v140 = v55;
    v136 = v57;
    sub_10000AB0C(v55, v57);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v145 = *(v85 + v84);
    v86 = v145;
    *(v85 + v84) = 0x8000000000000000;
    v87 = (v121 << 40) | (v126 << 48) | (v125 << 32) | (v124 << 24) | (v123 << 16) | (v122 << 8) | v38;
    v89 = sub_10007CD94(v87);
    v90 = v86[2];
    v91 = (v88 & 1) == 0;
    v92 = v90 + v91;
    if (__OFADD__(v90, v91))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v57) = v88;
      if (v86[3] < v92)
      {
        sub_1003122C8(v92, isUniquelyReferenced_nonNull_native);
        v86 = v145;
        v93 = sub_10007CD94(v87);
        if ((v57 & 1) != (v94 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v89 = v93;
        *(v85 + v84) = v86;
        if (v57)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        *(v85 + v84) = v86;
        if (v88)
        {
LABEL_32:
          v100 = v86[7] + *(v138 + 72) * v89;
          sub_100301304(v83, v100, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
          type metadata accessor for P2PTimer(0);
          v101 = v130;
          variable initialization expression of AWDLPeer.lastUpdated();
          sub_100301450(v83, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
          (*(v131 + 40))(v100 + *(v139 + 20), v101, v132);
          swift_endAccess();
          v102 = swift_unownedRetainStrong();
          sub_10040CAE8(v102, v103, v104, v105);

          v106 = v117;
          v107 = Optional<A>.attributeFilter.getter(v117[*(v144 + 96)]);
          LODWORD(v100) = NANServiceInfo.init(information:filter:)(v129, v107);
          v109 = v108;
          v111 = v110;
          v112 = *v106;
          v113 = type metadata accessor for NANIdentityKey(0);
          v114 = v133;
          (*(*(v113 - 8) + 56))(v133, 1, 1, v113);
          sub_10036DE50(v100, v109, v111, _swiftEmptyArrayStorage, v52, v38, v112, v114);
          sub_1000124C8(v109, v111);

          sub_100017554(v140, v136);
          sub_100016290(v114, &unk_100595C50, &unk_1004AFD20);
LABEL_33:
          (*(v119 + 8))(v142, v120);
          v65 = v127;
          return sub_100301450(v65, type metadata accessor for LongTermPairingKeys);
        }

LABEL_31:
        v98 = v135;
        swift_storeEnumTagMultiPayload();
        v99 = v128;
        sub_1003013DC(v98, v128, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        type metadata accessor for P2PTimer(0);
        variable initialization expression of AWDLPeer.lastUpdated();
        sub_100301450(v98, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        sub_1002DD754(v89, v87, v99, v86);
        goto LABEL_32;
      }
    }

    sub_10046C560();
    v86 = v145;
    *(v85 + v84) = v145;
    if (v57)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  sub_100016290(v15, &unk_100595C40, &qword_100499070);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v29, v30))
  {

    goto LABEL_28;
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v147 = v32;
  *v31 = 136315138;
  v33 = NANPeerServiceIdentifier.description.getter(v141 & 0xFFFFFFFFFFFFFFLL);
  v35 = v24;
  v36 = sub_100002320(v33, v34, &v147);

  *(v31 + 4) = v36;
  _os_log_impl(&_mh_execute_header, v29, v30, "Failed to authenticate %s because missing public key in the authentication request", v31, 0xCu);
  sub_100002A00(v32);

LABEL_11:
  v65 = v35;
  return sub_100301450(v65, type metadata accessor for LongTermPairingKeys);
}

uint64_t sub_1002FEE4C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100597460, &qword_1004AFD18);
  __chkstk_darwin();
  v13 = &v35 - v12;
  result = NANGenericServiceProtocol.blob.getter(a1);
  if (v15 >> 60 == 15)
  {
    return result;
  }

  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 == 2 && *(result + 16) != *(result + 24))
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v16)
    {
      if ((v15 & 0xFF000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_8:
      v17 = result;
      v36 = v15;
      v18 = a2 + qword_10059B890;
      swift_beginAccess();
      v19 = type metadata accessor for NANPublish.Configuration(0);
      if (*(v18 + *(v19 + 96)))
      {
        goto LABEL_9;
      }

      v29 = qword_10059B8A8;
      swift_beginAccess();
      v30 = *(a2 + v29);
      if (*(v30 + 16) && (v31 = sub_10007CD94(a3 & 0xFFFFFFFFFFFFFFLL), (v32 & 1) != 0))
      {
        sub_1003013DC(*(v30 + 56) + *(v9 + 72) * v31, v13, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        v33 = 0;
      }

      else
      {
        v33 = 1;
      }

      (*(v9 + 56))(v13, v33, 1, v8);
      if ((*(v9 + 48))(v13, 1, v8))
      {
        sub_100016290(v13, &unk_100597460, &qword_1004AFD18);
        swift_endAccess();
      }

      else
      {
        sub_1003013DC(v13, v11, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        sub_100016290(v13, &unk_100597460, &qword_1004AFD18);
        swift_endAccess();
        sub_1003013DC(v11, v7, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        sub_100301450(v11, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v19 = sub_100301450(v7, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        if (EnumCaseMultiPayload == 2)
        {
LABEL_9:
          v24 = sub_1002EBB84(v23, v19, v20, v21, v22);
          if (v24)
          {
            v25 = v24;
            v26 = v36;
            isa = Data._bridgeToObjectiveC()().super.isa;
            v28 = WiFiAddress.apiAddress.getter((a3 >> 8) & 0xFFFFFFFFFFFFLL);
            [v25 publishReceivedMessage:isa fromSubscriberID:a3 subscriberAddress:v28];
            sub_100017554(v17, v26);

            return swift_unknownObjectRelease();
          }
        }
      }

      return sub_100017554(v17, v36);
    }

    if (result != result >> 32)
    {
      goto LABEL_8;
    }
  }

LABEL_12:

  return sub_100017554(result, v15);
}

void sub_1002FF260(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v28 = a3;
    v29 = a7;
    v16 = Strong;

    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v27 = a8;
      v19 = swift_slowAlloc();
      v26 = a5;
      v20 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      *v19 = 138413058;
      *(v19 + 4) = v16;
      *v20 = v15;
      *(v19 + 12) = 2080;
      v21 = v16;
      *(v19 + 14) = sub_100002320(v28, a4, v33);
      *(v19 + 22) = 2080;
      *(v19 + 24) = sub_100002320(v26, a6, v33);
      *(v19 + 32) = 2112;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 34) = v22;
      v20[1] = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "%@ internet sharing from %s to %s failed because %@", v19, 0x2Au);
      sub_10005DC58(&qword_10058B780, &qword_100480AC0);
      swift_arrayDestroy();

      swift_arrayDestroy();

      a8 = v27;
    }

    swift_beginAccess();
    _s17ResponderInstanceCMa(0, v29, a8, v23);
    sub_10020CB70();
    NANBitmap.Channel.operatingClass.getter();
    v30 = v24;
    __chkstk_darwin();
    v25 = type metadata accessor for Dictionary.Values();

    swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v25);
    Sequence.forEach(_:)();

    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if (swift_dynamicCast())
    {
      if (v32 == 1)
      {
        if (v30 == 7)
        {
          sub_1002F29CC();
        }
      }

      else
      {
        sub_1000B2594(v30, v31, v32);
      }
    }
  }
}

char *sub_1002FF62C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v10 = &v27 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v28 = a1;
    v13 = qword_100595970;
    v14 = *&result[qword_100595970];
    swift_unownedRetainStrong();
    v15 = *(*v14 + 96);
    swift_beginAccess();
    (*(v8 + 16))(v10, v14 + v15, AssociatedTypeWitness);

    swift_beginAccess();
    _s17ResponderInstanceCMa(0, a3, a4, v16);
    sub_10020CB70();

    v17 = Dictionary.count.getter();

    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v17 <= 0xFF)
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 416))(v17 | 0x10000, AssociatedTypeWitness, AssociatedConformanceWitness);
      (*(v8 + 8))(v10, AssociatedTypeWitness);
      v19 = *&v12[v13];
      swift_unownedRetainStrong();
      v20 = NANInternetSharingStatistics.init(provider:)(v28 & 0x101);
      v22 = v21;
      v24 = v23;

      v25 = v20 & 0x101FF;
      v26 = v19 + *(*v19 + 760);
      swift_beginAccess();
      *v26 = v25;
      *(v26 + 8) = v22;
      *(v26 + 16) = v24 & 1;
    }

    __break(1u);
  }

  return result;
}

void sub_1002FF908(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_1003000DC(v7, v4, a1);

      return;
    }
  }

  __chkstk_darwin();
  v6 = &v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_1002FFA68(v6, v4, a1);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_1002FFA68(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v47 = a2;
  v48 = a1;
  v61 = type metadata accessor for DispatchTime();
  v4 = *(v61 - 8);
  __chkstk_darwin();
  v60 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v59 - 8);
  __chkstk_darwin();
  v58 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v46 - v8;
  v65 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  __chkstk_darwin();
  v67 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &qword_1004AFD40;
  v64 = sub_10005DC58(&unk_100595C80, &qword_1004AFD40);
  __chkstk_darwin();
  v63 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v46 - v12;
  v56 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  v62 = *(v56 - 8);
  __chkstk_darwin();
  v70 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v66 = a3;
  v16 = *(a3 + 64);
  v51 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v49 = 0;
  v50 = (v17 + 63) >> 6;
  v54 = (v6 + 16);
  v55 = (v4 + 8);
  v53 = (v6 + 8);
  while (v19)
  {
    v29 = __clz(__rbit64(v19));
    v69 = (v19 - 1) & v19;
LABEL_13:
    v32 = v29 | (v15 << 6);
    v33 = v66[7];
    v34 = v66[6] - v32 + 8 * v32;
    v35 = *(v34 + 4);
    v36 = *(v34 + 6);
    v37 = *(v62 + 72);
    v52 = v32;
    v38 = *v34;
    v39 = v70;
    sub_1003013DC(v33 + v37 * v32, v70, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    *v13 = v38;
    *(v13 + 2) = v35;
    v13[6] = v36;
    v40 = v64;
    sub_1003013DC(v39, &v13[*(v64 + 48)], type metadata accessor for NANPeer.Service.AuthenticationStatus);
    v41 = v63;
    sub_100012400(v13, v63, &unk_100595C80, v10);
    v42 = v41 + *(v40 + 48);
    sub_1003013DC(v42, v67, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v44 = type metadata accessor for LongTermPairingKeys.AuthenticationKeys;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_100016290(v13, &unk_100595C80, v10);
          sub_100301450(v67, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        }

        else
        {
          sub_100016290(v13, &unk_100595C80, v10);
        }

        sub_100301450(v42, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        sub_100301450(v70, type metadata accessor for NANPeer.Service.AuthenticationStatus);
        v19 = v69;
        goto LABEL_21;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v44 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State;
      }

      sub_100301450(v67, v44);
    }

    type metadata accessor for P2PTimer(0);
    v20 = v60;
    variable initialization expression of AWDLPeer.lastUpdated();
    v21 = v57;
    DispatchTime.distance(to:)();
    (*v55)(v20, v61);
    v22 = NANConstants.authenticationRequestTimeout.unsafeMutableAddressor();
    v23 = v13;
    v24 = v10;
    v25 = v58;
    v26 = v59;
    (*v54)(v58, v22, v59);
    v68 = static DispatchTimeInterval.< infix(_:_:)(v25, v21);
    v27 = *v53;
    v28 = v25;
    v10 = v24;
    v13 = v23;
    (*v53)(v28, v26);
    v27(v21, v26);
    sub_100016290(v23, &unk_100595C80, v10);
    sub_100301450(v42, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    sub_100301450(v70, type metadata accessor for NANPeer.Service.AuthenticationStatus);
    v19 = v69;
    if (!v68)
    {
LABEL_21:
      *(v48 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
      if (__OFADD__(v49++, 1))
      {
        __break(1u);
LABEL_24:
        sub_1003686EC(v48, v47, v49, v66);
        return;
      }
    }
  }

  v30 = v15;
  while (1)
  {
    v15 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v15 >= v50)
    {
      goto LABEL_24;
    }

    v31 = *(v51 + 8 * v15);
    ++v30;
    if (v31)
    {
      v29 = __clz(__rbit64(v31));
      v69 = (v31 - 1) & v31;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_1003000DC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_1002FFA68(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_10030018C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANPublish.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10030028C()
{
  v1 = *(v0 + 16) + qword_10059B890;
  swift_beginAccess();
  *(v1 + 72) = 1;
}

id sub_1003002F8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return [result publishTerminatedWithReason:*(v1 + 32)];
  }

  return result;
}

_BYTE *sub_100300354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v103 = a5;
  v108 = a4;
  v102 = a3;
  v105 = a2;
  v119 = a1;
  ObjectType = swift_getObjectType();
  v7 = *v5;
  v8 = swift_isaMask;
  v9 = type metadata accessor for Logger();
  v110 = *(v9 - 8);
  v111 = v9;
  __chkstk_darwin();
  v112 = v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LongTermPairingKeys(0);
  v106 = *(v11 - 8);
  v107 = v11;
  __chkstk_darwin();
  v79[0] = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = *((v8 & v7) + 0x58);
  v13 = *(v114 + 8);
  v113 = *((v8 & v7) + 0x50);
  v98 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v99 = *(AssociatedTypeWitness - 8);
  v100 = AssociatedTypeWitness;
  __chkstk_darwin();
  v97 = v79 - v15;
  sub_10005DC58(&qword_10058C8D8, &qword_100482300);
  __chkstk_darwin();
  v101 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v96 = v79 - v17;
  v18 = type metadata accessor for DispatchTimeInterval();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for DispatchTime();
  v22 = *(v115 - 8);
  __chkstk_darwin();
  v24 = v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[qword_10059B898] = 0;
  v25 = qword_100595978;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v26 = NANConstants.maximumServiceRetryRate.unsafeMutableAddressor();
  (*(v19 + 16))(v21, v26, v18);
  v93 = v25;
  - infix(_:_:)();
  (*(v19 + 8))(v21, v18);
  v94 = *(v22 + 8);
  v95 = (v22 + 8);
  v94(v24, v115);
  v27 = v105;
  v28 = v113;
  v29 = v114;
  v91 = qword_100595980;
  *&v6[qword_100595980] = 0;
  v30 = qword_100595988;
  _s8InstanceC21NANPublishClientProxyVMa(0, v28, v29, v31);
  v32 = static Array._allocateUninitialized(_:)();
  v92 = v30;
  *&v6[v30] = v32;
  v85 = qword_100595990;
  *&v6[qword_100595990] = 0;
  v90 = qword_10059B8A0;
  Logger.init(subsystem:category:)();
  v84 = qword_100595998;
  *&v6[qword_100595998] = 0;
  v89 = qword_10059B8A8;
  *&v6[qword_10059B8A8] = &_swiftEmptyDictionarySingleton;
  *&v6[qword_1005959A8] = -1;
  v87 = qword_10059B8B0;
  *&v6[qword_10059B8B0] = 0;
  v88 = qword_1005959B0;
  *&v6[qword_1005959B0] = 0;
  v6[qword_1005959B8] = 0;
  v33 = &v6[qword_1005959C0];
  *v33 = static Duration.zero.getter();
  v33[1] = v34;
  v35 = &v6[qword_10059B8B8];
  *(v35 + 6) = 0;
  *(v35 + 1) = 0u;
  *(v35 + 2) = 0u;
  *v35 = 0u;
  v36 = qword_10059B8C0;
  _s17ResponderInstanceCMa(0, v28, v29, v37);
  sub_10020CB70();
  v38 = Dictionary.init()();
  v86 = v36;
  *&v6[v36] = v38;
  v39 = &v6[qword_10059B8C8];
  *v39 = 0;
  v39[1] = 0;
  v83 = v39;
  v40 = &v6[qword_1005959C8];
  *v40 = 0;
  v40[4] = 1;
  v6[qword_1005959D0] = 0;
  v41 = qword_10059B8D0;
  NANWiFiAwareStatistics.init()(&v118);
  v82 = v41;
  memcpy(&v6[v41], &v118, 0x120uLL);
  *&v6[qword_1005959D8] = 0;
  *&v6[qword_1005959E0] = 0;
  v81 = qword_1005959E8;
  variable initialization expression of AWDLPeer.lastUpdated();
  v42 = v119;
  v79[1] = qword_100595970;
  *&v6[qword_100595970] = v119;
  v80 = qword_10059B890;
  sub_1003013DC(v27, &v6[qword_10059B890], type metadata accessor for NANPublish.Configuration);
  v104 = type metadata accessor for NANPublish.Configuration(0);
  if (*(v27 + *(v104 + 96)))
  {
    v43 = v27;
    v44 = v107;
    v45 = v106;
    (*(v106 + 56))(&v6[qword_1005959A0], 1, 1, v107);
    swift_unownedRetain();
  }

  else
  {
    swift_unownedRetainStrong();
    v47 = v99;
    v46 = v100;
    v48 = v97;
    (*(v99 + 16))(v97, v42 + *(*v42 + 112), v100);
    swift_unownedRetain();

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 128))(v46, AssociatedConformanceWitness);
    (*(v47 + 8))(v48, v46);
    v43 = v27;
    v50 = v96;
    LongTermPairingKeyStore.keys(for:installingNewKeysIfNecessary:)(*(v27 + 8), *(v27 + 16), 1, v96);

    v51 = qword_1005959A0;
    sub_10001CEA8(v50, &v6[qword_1005959A0], &qword_10058C8D8, &qword_100482300);
    v52 = &v6[v51];
    v53 = v101;
    sub_100012400(v52, v101, &qword_10058C8D8, &qword_100482300);
    v45 = v106;
    v44 = v107;
    if ((*(v106 + 48))(v53, 1, v107) == 1)
    {

      sub_100016290(v53, &qword_10058C8D8, &qword_100482300);
      v54 = 6;
      v55 = v43;
LABEL_9:
      sub_10000B02C();
      swift_allocError();
      *v56 = v54;
      *(v56 + 8) = 0;
      *(v56 + 16) = 1;
      swift_willThrow();
      sub_100301450(v55, type metadata accessor for NANPublish.Configuration);

      swift_unownedRelease();
      sub_100301450(&v6[v80], type metadata accessor for NANPublish.Configuration);
      v57 = v94;
      v58 = v115;
      v59 = v95;
      v94(&v6[v93], v115);

      (*(v110 + 8))(&v6[v90], v111);

      sub_100016290(&v6[qword_1005959A0], &qword_10058C8D8, &qword_100482300);

      sub_100083690(*v35, *(v35 + 1), *(v35 + 2), *(v35 + 3));

      memcpy(v116, &v6[v82], sizeof(v116));
      sub_1002CB088(v116);
      v57(&v6[v81], v58);
      swift_deallocPartialClassInstance();
      return v59;
    }

    sub_100016290(v53, &qword_10058C8D8, &qword_100482300);
  }

  v55 = v43;
  if (*(v43 + *(v104 + 120)) && (static Duration.< infix(_:_:)() & 1) != 0)
  {

    v54 = 2;
    goto LABEL_9;
  }

  v117.receiver = v6;
  v117.super_class = ObjectType;
  v60 = v44;
  v61 = objc_msgSendSuper2(&v117, "init");
  v62 = &v61[qword_10059B8C8];
  v63 = v108;
  *v62 = v102;
  v62[1] = v63;

  v61[qword_1005959D0] = v103 & 1;
  v64 = qword_1005959A0;
  if (!(*(v45 + 48))(&v61[qword_1005959A0], 1, v60))
  {
    v65 = &v61[v64];
    v66 = v79[0];
    sub_1003013DC(v65, v79[0], type metadata accessor for LongTermPairingKeys);
    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v68 = swift_allocObject();
    v69 = v114;
    v68[2] = v113;
    v68[3] = v69;
    v68[4] = v67;

    LongTermPairingKeys.updatedPairedDevicesHandler.setter(sub_100301444, v68);
    sub_100301450(v66, type metadata accessor for LongTermPairingKeys);
  }

  v71 = v110;
  v70 = v111;
  (*(v110 + 16))(v112, &v61[qword_10059B8A0], v111);
  v59 = v61;
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = v55;
    v76 = swift_slowAlloc();
    *v74 = 138412290;
    *(v74 + 4) = v59;
    *v76 = v59;
    v77 = v59;
    _os_log_impl(&_mh_execute_header, v72, v73, "Created %@", v74, 0xCu);
    sub_100016290(v76, &qword_10058B780, &qword_100480AC0);
    v55 = v75;
  }

  (*(v71 + 8))(v112, v70);
  sub_100301450(v55, type metadata accessor for NANPublish.Configuration);

  return v59;
}

uint64_t sub_1003010C0(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_100159C80(&v6, v4);

      --v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

uint64_t sub_10030115C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_10030124C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_10030129C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100301304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_10030136C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100595C70, &qword_1004B0C00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003013DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100301450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10030152C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return [result publishTerminatedWithReason:-1];
  }

  return result;
}

NSObject *sub_100301588(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v36 = a4;
  v37 = a5;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v35 - v14;
  v16 = &v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];
  *v16 = NANBitmap.Channel.operatingClass.getter;
  v16[1] = 0;
  v17 = &v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher] = 0;
  *&v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_wifiAwareEntitlementsManager] = 0;
  UUID.init()();
  v18 = [objc_allocWithZone(NSXPCConnection) init];
  *&v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] = v18;
  *&v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_queue] = a3;
  v38 = a3;
  Logger.init(subsystem:category:)();
  (*(v11 + 32))(&v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_logger], v15, v10);
  v40 = 0x6470327069666977;
  v41 = 0xE90000000000002ELL;
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  String.append(_:)(v19);

  v20 = v41;
  v21 = &v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_processName];
  *v21 = v40;
  v21[1] = v20;
  v22 = &v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID];
  v23 = v37;
  *v22 = v36;
  v22[1] = v23;
  v24 = &v6[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientPID];
  *v24 = 0;
  v24[4] = 1;
  v25 = type metadata accessor for XPCSession(0);
  v39.receiver = v6;
  v39.super_class = v25;
  v26 = objc_msgSendSuper2(&v39, "init");
  (*(v11 + 16))(v13, v26 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_logger, v10);
  v27 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "%@ was created", v30, 0xCu);
    sub_100016290(v31, &qword_10058B780, &qword_100480AC0);

    v33 = v38;
  }

  else
  {
    v33 = v27;
    v32 = v28;
    v28 = v38;
  }

  (*(v11 + 8))(v13, v10);
  return v27;
}

uint64_t sub_100301920(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection);
  sub_1001B3C5C(a1, v11);
  v4 = v12;
  if (v12)
  {
    sub_100029B34(v11, v12);
    v5 = *(v4 - 8);
    v6 = __chkstk_darwin();
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v4);
    sub_100002A00(v11);
  }

  else
  {
    v9 = 0;
  }

  [v3 setExportedObject:v9];
  swift_unknownObjectRelease();
  return sub_100016290(a1, &qword_10058BA80, &qword_1004818C0);
}

uint64_t sub_100301ABC(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100301BC4()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v6 = &v11 - v5;
  v12 = *v0;
  v7 = v12;
  v11 = _swiftEmptyArrayStorage;
  v8 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  (*(v2 + 104))(v4, enum case for Mirror.AncestorRepresentation.generated(_:), v1);
  type metadata accessor for XPCSession(0);
  v9 = v7;
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

void sub_100301D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  if (sub_10001991C(&off_100572F30))
  {
    v14[0] = a1;
    v14[1] = a2;
    v14[3] = 0;
    v14[4] = 0;
    v14[2] = a3;
    v15 = 0;
    static DispatchWorkItemFlags.assignCurrentContext.getter();
    aBlock[4] = NANBitmap.Channel.operatingClass.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_1005759C8;
    _Block_copy(aBlock);
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    *&v3[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher] = DispatchWorkItem.init(flags:block:)();

    v7 = *&v3[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];

    v7(v14, v3);
  }

  else
  {
    v8 = v3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = [*(&v8->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) processIdentifier];

      _os_log_impl(&_mh_execute_header, v9, v10, "Invalidating XPC connection to process with PID %d", v11, 8u);
    }

    else
    {

      v9 = v8;
    }

    v12 = *(&v8->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection);

    [v12 invalidate];
  }
}

void sub_100302034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  if (sub_10001991C(&off_100572F58))
  {
    v14[0] = a1;
    v14[1] = a2;
    v14[3] = 0;
    v14[4] = 0;
    v14[2] = a3;
    v15 = 1;
    static DispatchWorkItemFlags.assignCurrentContext.getter();
    aBlock[4] = NANBitmap.Channel.operatingClass.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_100575978;
    _Block_copy(aBlock);
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    *&v3[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher] = DispatchWorkItem.init(flags:block:)();

    v7 = *&v3[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];

    v7(v14, v3);
  }

  else
  {
    v8 = v3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = [*(&v8->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) processIdentifier];

      _os_log_impl(&_mh_execute_header, v9, v10, "Invalidating XPC connection to process with PID %d", v11, 8u);
    }

    else
    {

      v9 = v8;
    }

    v12 = *(&v8->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection);

    [v12 invalidate];
  }
}

void sub_1003022DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  if (sub_10001991C(&off_100572F80) & 1) != 0 || (sub_10001991C(&off_100572FA8))
  {
    v14[0] = a1;
    v14[1] = a2;
    v14[3] = 0;
    v14[4] = 0;
    v14[2] = a3;
    v15 = 2;
    static DispatchWorkItemFlags.assignCurrentContext.getter();
    aBlock[4] = NANBitmap.Channel.operatingClass.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_100575928;
    _Block_copy(aBlock);
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    *&v3[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher] = DispatchWorkItem.init(flags:block:)();

    v7 = *&v3[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];

    v7(v14, v3);
  }

  else
  {
    v8 = v3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = [*(&v8->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) processIdentifier];

      _os_log_impl(&_mh_execute_header, v9, v10, "Invalidating XPC connection to process with PID %d", v11, 8u);
    }

    else
    {

      v9 = v8;
    }

    v12 = *(&v8->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection);

    [v12 invalidate];
  }
}

double sub_100302598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  v10[0] = a1;
  v10[1] = a2;
  v10[3] = 0;
  v10[4] = 0;
  v10[2] = a3;
  v11 = 6;
  if ((a1 | 4) != 4)
  {
    static DispatchWorkItemFlags.assignCurrentContext.getter();
    aBlock[4] = NANBitmap.Channel.operatingClass.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_100575888;
    _Block_copy(aBlock);
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    *(v3 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher) = DispatchWorkItem.init(flags:block:)();
  }

  v7 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler);

  v7(v10, v3);

  return result;
}

void sub_100302858(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  if (sub_10001991C(&off_100573070) & 1) != 0 || (sub_10001991C(&off_100573098))
  {
    v17[0] = a1;
    v17[1] = a2;
    v17[2] = WiFiMACAddress.wifiAddress.getter() & 0xFFFFFFFFFFFFLL;
    v17[3] = a4;
    v17[4] = a5;
    v18 = 5;
    static DispatchWorkItemFlags.assignCurrentContext.getter();
    aBlock[4] = NANBitmap.Channel.operatingClass.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C8B8;
    aBlock[3] = &unk_1005757E8;
    _Block_copy(aBlock);
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    *&v5[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher] = DispatchWorkItem.init(flags:block:)();

    v10 = *&v5[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler];

    v10(v17, v5);
  }

  else
  {
    v11 = v5;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = [*(&v11->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) processIdentifier];

      _os_log_impl(&_mh_execute_header, v12, v13, "Invalidating XPC connection to process with PID %d", v14, 8u);
    }

    else
    {

      v12 = v11;
    }

    v15 = *(&v11->isa + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection);

    [v15 invalidate];
  }
}

double sub_100302CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  v9[0] = WiFiMACAddress.wifiAddress.getter() & 0xFFFFFFFFFFFFLL;
  v9[1] = a2;
  v9[2] = a3;
  v10 = 9;
  static DispatchWorkItemFlags.assignCurrentContext.getter();
  aBlock[4] = NANBitmap.Channel.operatingClass.getter;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100575720;
  _Block_copy(aBlock);
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher) = DispatchWorkItem.init(flags:block:)();

  v6 = *(v3 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler);

  v6(v9, v3);

  return result;
}

void sub_100302EB4(uint64_t a1, uint64_t a2)
{
  sub_10005DC58(&unk_10059B2B0, &qword_100482FC0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

double sub_100302F84(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_20:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (v7 != v8)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v10 = *(a1 + 8 * v8 + 32);
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    v12 = Channel.init(apiChannel:)(v10);
    ++v8;
    if ((v12 & 0xFF00000000) != 0x300000000)
    {
      v22 = v6;
      v13 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = a3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_100011C2C(0, *(v9 + 2) + 1, 1, v9);
      }

      v16 = *(v9 + 2);
      v15 = *(v9 + 3);
      if (v16 >= v15 >> 1)
      {
        v9 = sub_100011C2C((v15 > 1), v16 + 1, 1, v9);
      }

      *(v9 + 2) = v16 + 1;
      v17 = &v9[8 * v16];
      *(v17 + 8) = v13;
      v17[36] = BYTE4(v13);
      v17[37] = BYTE5(v13);
      v8 = v11;
      v6 = v22;
      a3 = v23;
    }
  }

  v27[0] = v9;
  v27[1] = v24;
  v27[3] = 0;
  v27[4] = 0;
  v27[2] = a3;
  v28 = 16;

  static DispatchWorkItemFlags.assignCurrentContext.getter();
  aBlock[4] = NANBitmap.Channel.operatingClass.getter;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_1005755E0;
  _Block_copy(aBlock);
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v18 = DispatchWorkItem.init(flags:block:)();
  v19 = v25;
  *(v25 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher) = v18;

  v20 = *(v19 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler);

  v20(v27, v19);

  return result;
}

double sub_100303318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  v11[0] = a1;
  v11[1] = a2;
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = a3;
  v12 = 13;
  static DispatchWorkItemFlags.assignCurrentContext.getter();
  aBlock[4] = NANBitmap.Channel.operatingClass.getter;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100575590;
  _Block_copy(aBlock);
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher) = DispatchWorkItem.init(flags:block:)();

  v8 = *(v4 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler);

  v8(v11, v4);

  return result;
}

double sub_1003034C4(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);

  return result;
}

double sub_100303668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v16 = 18;
  static DispatchWorkItemFlags.assignCurrentContext.getter();
  aBlock[4] = NANBitmap.Channel.operatingClass.getter;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100575478;
  _Block_copy(aBlock);
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  *(v6 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_voucher) = DispatchWorkItem.init(flags:block:)();

  v12 = *(v6 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_requestHandler);

  v12(v15, v6);

  return result;
}

uint64_t sub_1003038C4(uint64_t a1)
{
  v1 = (*(a1 + OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session) + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler);
  v2 = *v1;
  v3 = v1[1];
  *v1 = 0;
  v1[1] = 0;
  sub_100010520(v2, v3);
  memset(v5, 0, sizeof(v5));
  return sub_100301920(v5);
}

id sub_10030394C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCResponder(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100303A28(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100303AD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEE && *(a1 + 41))
  {
    return (*a1 + 238);
  }

  v3 = *(a1 + 40);
  if (v3 <= 0x12)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100303B18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xED)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 238;
    if (a3 >= 0xEE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100303B80@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_100303BFC()
{
  v1 = *(v0 + 16);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

void sub_100303C60()
{
  v1 = *(v0 + 16);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

char *sub_100303CDC(void *a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session] = a1;
  v7 = OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_logger;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a2, v8);
  v10 = type metadata accessor for XPCResponder(0);
  v30.receiver = v3;
  v30.super_class = v10;
  v11 = a1;
  v12 = objc_msgSendSuper2(&v30, "init");
  v13 = OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session;
  v14 = *&v12[OBJC_IVAR____TtC12wifip2pdCore12XPCResponder_session];
  v15 = objc_opt_self();
  v16 = v12;
  v17 = v14;
  v18 = [v15 interfaceWithProtocol:a3];
  [*&v17[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] setExportedInterface:v18];

  v19 = *&v12[v13];
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  v21 = &v19[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v22 = *&v19[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
  v23 = *&v19[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
  *v21 = sub_100303ED0;
  v21[1] = v20;
  v24 = v16;
  v25 = v19;
  sub_100010520(v22, v23);

  v26 = *&v12[v13];
  v29[3] = v10;
  v29[0] = v24;
  v27 = v26;
  sub_100301920(v29);

  (*(v9 + 8))(a2, v8);
  return v24;
}

void *sub_100304014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return os_transaction_create();
  }

  sub_10005DC58(&unk_10059B080, &unk_1004B01D0);
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1003040CC()
{
  swift_weakDestroy();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

id sub_10030415C()
{
  ObjectType = swift_getObjectType();
  swift_getWitnessTable("Q\n\n", ObjectType);
  BonjourOffload.stopAllServices()();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003041F0(uint64_t a1)
{
  swift_weakDestroy();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1003042F0(void *a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void *, uint64_t, uint64_t), void (*a5)(void *, uint64_t, uint64_t), void (*a6)(void *, uint64_t, uint64_t))
{
  v24 = a4;
  v25 = a5;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v15 = *v14;
  *v13 = *v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v15)
  {
    WitnessTable = swift_getWitnessTable("Q\n\n", ObjectType);
    BonjourOffload.record(from:)(a1, &v26);
    if (v27)
    {
      sub_100179C1C(&v26, v28);
      v19 = [a1 serviceValue];
      if (v19)
      {
        v20 = v19;
        v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        sub_1000124C8(v21, v23);
        if ([a1 isResolve])
        {
          v24(v28, ObjectType, WitnessTable);
        }

        else
        {
          v25(v28, ObjectType, WitnessTable);
        }
      }

      else
      {
        a6(v28, ObjectType, WitnessTable);
      }

      sub_100002A00(v28);
    }

    else
    {
      sub_100016290(&v26, &qword_100595FC0, &qword_1004B01B0);
    }

    return a2(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10030459C(void *a1, int a2, void *a3, void *aBlock, uint64_t (*a5)(void), void (*a6)(void *, uint64_t, uint64_t), void (*a7)(void *, uint64_t, uint64_t), void (*a8)(void *, uint64_t, uint64_t))
{
  v14 = _Block_copy(aBlock);
  v17[2] = v14;
  v15 = a3;
  v16 = a1;
  sub_1003042F0(v15, a5, v17, a6, a7, a8);
  _Block_release(v14);
}

uint64_t sub_100304658(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100304708()
{
  sub_1003076F4();

  return swift_unknownObjectRetain();
}

uint64_t (*sub_100304770(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100303FB4(v2);
  return sub_100307954;
}

uint64_t sub_1003047E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003049D4(&qword_10059B918, sub_10040CAE8);
  *a1 = result;
  return result;
}

unint64_t sub_100304824()
{
  swift_getObjectType();

  return BonjourOffload.peersToInvalidate()();
}

uint64_t sub_100304860(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1003048E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = (v5 + *a5);
  swift_beginAccess();
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
}

uint64_t sub_1003049D4(void *a1, uint64_t (*a2)(void))
{
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v3 = a2();

  return v3;
}

uint64_t sub_100304A28(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v38[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AWDLPeer(0);
  v9 = (a1 + *(v8 + 20));
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 2) << 16;
  v13 = a1 + *(v8 + 52);
  if (*(v13 + 16))
  {
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
  }

  else
  {
    UUID.init()();
    v14 = UUID.uuidString.getter();
    v15 = v16;
    (*(v5 + 8))(v7, v4);
  }

  v17 = WiFiAddress.ipv6LinkLocalAddress.getter(v10 | (v11 << 8) | v12);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v39 = &type metadata for DNSRecords.AAAA;
  v40 = &protocol witness table for DNSRecords.AAAA;
  v24 = swift_allocObject();
  v38[0] = v24;
  *(v24 + 16) = 27;
  *(v24 + 24) = v14;
  *(v24 + 32) = v15;
  *(v24 + 40) = 1;
  *(v24 + 48) = v17;
  *(v24 + 56) = v19;
  *(v24 + 64) = v21;
  *(v24 + 72) = v23;
  if (a2)
  {
    sub_100029B34(v38, &type metadata for DNSRecords.AAAA);
    v25 = sub_100172208();
    v27 = v26;
    v28.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000124C8(v25, v27);
    v29 = v39;
    v30 = v40;
    sub_100029B34(v38, v39);
    v31 = (v30[2])(v29, v30);
    if (v32 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      v34 = v31;
      v35 = v32;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100017554(v34, v35);
    }

    [a2 handleEventType:3 keyData:v28.super.isa valueData:isa];
  }

  return sub_100002A00(v38);
}

uint64_t sub_100304CA4()
{
  swift_weakDestroy();
  swift_unknownObjectRelease();

  v1 = qword_10059B948;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectRelease();
}

id sub_100304D74()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_weakLoadStrong())
  {
    (*(v3 + 16))(v5, v0 + qword_10059B948, v2);
    sub_10044C0F4(v5);

    (*(v3 + 8))(v5, v2);
  }

  swift_getWitnessTable("}\n\n", ObjectType);
  BonjourOffload.stopAllServices()();
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_100304F00(uint64_t a1)
{
  swift_weakDestroy();
  swift_unknownObjectRelease();

  v2 = qword_10059B948;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  return swift_unknownObjectRelease();
}

id sub_100304FEC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_10030505C()
{
  swift_getObjectType();

  return _typeName(_:qualified:)();
}

void sub_10030508C(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v154 = a3;
  ObjectType = swift_getObjectType();
  v8 = swift_isaMask & *v3;
  sub_10005DC58(&qword_100595FC8, &unk_1004B01B8);
  __chkstk_darwin();
  v148 = v138 - v9;
  v151 = sub_10005DC58(&unk_100595FA0, &unk_1004B0190);
  v147 = *(v151 - 8);
  __chkstk_darwin();
  v146 = v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v144 = v138 - v11;
  __chkstk_darwin();
  v150 = v138 - v12;
  __chkstk_darwin();
  v152 = v138 - v13;
  __chkstk_darwin();
  v15 = v138 - v14;
  __chkstk_darwin();
  v145 = v138 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = (v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v22 = *v21;
  *v20 = *v21;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_58:
    __break(1u);
    return;
  }

  v149 = v15;
  v24 = v8;
  WitnessTable = swift_getWitnessTable("}\n\n", ObjectType);
  BonjourOffload.record(from:)(a1, &v162);
  if (!v164)
  {
    sub_100016290(&v162, &qword_100595FC0, &qword_1004B01B0);
    goto LABEL_21;
  }

  v153 = a2;
  sub_100179C1C(&v162, v159);
  v26 = v160;
  v27 = v161;
  sub_100029B34(v159, v160);
  v28 = (*(v27 + 40))(v26, v27);
  if (v29)
  {
    v31 = v28;
    v32 = v29;
    v33 = v30;
    v34 = *DNSRecords.Identifier.deniedList.unsafeMutableAddressor();

    v35 = sub_100447CAC(v31, v32, v33 & 0xFF01, v34);

    if (v35)
    {

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *&v162 = v39;
        *v38 = 136315138;
        DNSRecords.Identifier.description.getter(v31, v32, v33 & 1);
        v41 = v40;
        v43 = v42;

        v44 = sub_100002320(v41, v43, &v162);

        *(v38 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v36, v37, "Denied service: %s, not starting discovery over AWDL", v38, 0xCu);
        sub_100002A00(v39);
      }

      else
      {
      }

      a2 = v153;
      goto LABEL_20;
    }
  }

  v45 = [a1 serviceValue];
  if (v45)
  {
    v46 = v45;
    v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    sub_1000124C8(v47, v49);
    v50 = [a1 isResolve];
    a2 = v153;
    if (v50)
    {
      BonjourOffload.startResolving(record:)(v159, ObjectType, WitnessTable);
    }

    else
    {
      BonjourOffload.startAdvertising(record:)(v159, ObjectType, WitnessTable);
    }

    goto LABEL_20;
  }

  BonjourOffload.startBrowsing(record:)(v159, ObjectType, WitnessTable);
  sub_10002B154(v159, &v162);
  sub_10005DC58(&unk_100595FD0, &qword_100486B50);
  v51 = swift_dynamicCast();
  a2 = v153;
  if ((v51 & 1) == 0)
  {
    goto LABEL_20;
  }

  v52 = v157;
  if (v155[0] != 27 || (v53 = v156, v54 = v158, v55 = sub_1003049D4(&qword_10059B930, sub_10004D020), v142 = v53, v139 = v54, v55) && (v56 = qword_10059BA40, v57 = v55, swift_beginAccess(), v58 = *(v57 + v56), , , *&v162 = v58, __chkstk_darwin(), v59 = *(v24 + 104), v60 = *(v24 + 112), v138[-6] = v59, v138[-5] = v60, LOBYTE(v138[-4]) = 27, v138[-3] = v53, v138[-2] = v52, LOBYTE(v138[-1]) = v54, type metadata accessor for AWDLDiscoveryEngine.DatapathInitiator(255, v59, v60, v61), sub_10002B68C(), v62 = type metadata accessor for Dictionary(), swift_getWitnessTable(&protocol conformance descriptor for [A : B], v62), LOBYTE(v57) = Sequence.contains(where:)(), , (v57 & 1) != 0))
  {

    goto LABEL_20;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    v95 = v148;
    (*(v147 + 56))(v148, 1, 1, v151);
LABEL_44:
    sub_100016290(v95, &qword_100595FC8, &unk_1004B01B8);
    goto LABEL_20;
  }

  v138[1] = 0;
  v140 = v52;
  v64 = *(*Strong + 448);
  v65 = Strong;
  swift_beginAccess();
  v66 = *(v65 + v64);

  v67 = v66 + 64;
  v68 = 1 << *(v66 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & *(v66 + 64);
  v71 = (v68 + 63) >> 6;
  v143 = v66;

  v72 = 0;
  v73 = &unk_100595FA0;
  for (i = v66 + 64; ; v67 = i)
  {
    if (!v70)
    {
      while (1)
      {
        v75 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          goto LABEL_58;
        }

        if (v75 >= v71)
        {

          v93 = v147;
          v94 = *(v147 + 56);
          v95 = v148;
          v96 = v148;
          v97 = 1;
          goto LABEL_41;
        }

        v70 = *(v67 + 8 * v75);
        ++v72;
        if (v70)
        {
          v74 = v73;
          v72 = v75;
          goto LABEL_33;
        }
      }
    }

    v74 = v73;
LABEL_33:
    v76 = __clz(__rbit64(v70)) | (v72 << 6);
    v77 = *(v143 + 56);
    v78 = *(v143 + 48) + 6 * v76;
    v79 = *(v78 + 4);
    v80 = (type metadata accessor for AWDLPeer(0) - 8);
    v81 = v77 + *(*v80 + 72) * v76;
    v82 = v151;
    LODWORD(v76) = *v78;
    v83 = v149;
    sub_100307704(v81, &v149[*(v151 + 48)]);
    *v83 = v76;
    *(v83 + 4) = v79;
    v84 = v152;
    sub_100307838(v83, v152);
    v85 = v84;
    v86 = v150;
    v73 = v74;
    sub_100012400(v85, v150, v74, &unk_1004B0190);
    v87 = v86 + *(v82 + 48);
    v88 = v87 + v80[15];
    v90 = *(v88 + 8);
    v89 = *(v88 + 16);

    sub_1003077CC(v87);
    a2 = v153;
    if (!v89)
    {
      goto LABEL_26;
    }

    if (v90 == v142 && v89 == v140)
    {
      break;
    }

    v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v92)
    {

      goto LABEL_56;
    }

LABEL_26:
    v70 &= v70 - 1;
    sub_100016290(v152, v74, &unk_1004B0190);
  }

LABEL_56:
  v95 = v148;
  sub_100307838(v152, v148);
  v93 = v147;
  v94 = *(v147 + 56);
  v96 = v95;
  v97 = 0;
LABEL_41:
  v98 = v151;
  v94(v96, v97, 1, v151);
  v99 = v145;
  v100 = v146;
  v101 = v144;

  if ((*(v93 + 48))(v95, 1, v98) == 1)
  {

    goto LABEL_44;
  }

  sub_100307838(v95, v99);
  sub_100012400(v99, v101, &unk_100595FA0, &unk_1004B0190);
  v102 = v140;

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    LODWORD(v150) = v104;
    v106 = v105;
    v152 = swift_slowAlloc();
    *&v162 = v152;
    *v106 = 136315394;
    sub_100012400(v101, v100, &unk_100595FA0, &unk_1004B0190);
    v107 = *(v98 + 48);
    v108 = WiFiAddress.ipv6LinkLocalAddress.getter(*v100 | (*(v100 + 1) << 16));
    v110 = v109;
    v112 = v111;
    v114 = v113;
    sub_1003077CC(&v146[v107]);
    v115 = v112;
    a2 = v153;
    v116 = IPv6Address.description.getter(v108, v110, v115, v114);
    v118 = v117;

    sub_100016290(v101, &unk_100595FA0, &unk_1004B0190);
    v119 = v116;
    v100 = v146;
    v99 = v145;
    v120 = sub_100002320(v119, v118, &v162);

    *(v106 + 4) = v120;
    *(v106 + 12) = 2080;

    v121 = v142;
    v122 = sub_100002320(v142, v102, &v162);

    *(v106 + 14) = v122;
    v98 = v151;
    _os_log_impl(&_mh_execute_header, v103, v150, "Recovered by providing ad-hoc AAAA record to %s for %s", v106, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100016290(v101, &unk_100595FA0, &unk_1004B0190);
    v121 = v142;
  }

  v123 = v139;
  sub_100012400(v99, v100, &unk_100595FA0, &unk_1004B0190);
  v124 = *(v98 + 48);
  v125 = WiFiAddress.ipv6LinkLocalAddress.getter(*v100 | (*(v100 + 1) << 16));
  LOBYTE(v162) = 27;
  *(&v162 + 1) = v121;
  v163 = v102;
  LOBYTE(v164) = v123;
  v165 = v125;
  v166 = v126;
  v167 = v127;
  v168 = v128;
  sub_1003077CC(v100 + v124);
  v129 = *(v4 + qword_10059B938);
  if (v129)
  {
    swift_unknownObjectRetain();
    v130 = DNSRecords.AAAA.keyData.getter();
    v132 = v131;
    v133.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000124C8(v130, v132);
    v134 = DNSRecords.AAAA.valueData.getter();
    v136 = v135;
    sub_1003078A8(&v162);
    if (v136 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100017554(v134, v136);
    }

    [v129 handleEventType:0 keyData:v133.super.isa valueData:isa];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1003078A8(&v162);
  }

  sub_100016290(v99, &unk_100595FA0, &unk_1004B0190);
LABEL_20:
  sub_100002A00(v159);
LABEL_21:
  a2(0);
}

uint64_t sub_100305F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40) + qword_10059BA68;
  swift_beginAccess();
  v7 = (v6 + *(type metadata accessor for DNSRecords.SRV(0) + 24));
  if (*v7 == a3 && v7[1] == a4)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100305FF0(void *a1, uint64_t (*a2)(void))
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OS_dispatch_queue.awdl.unsafeMutableAddressor();
  v10 = *v9;
  *v8 = *v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v10)
  {
    WitnessTable = swift_getWitnessTable("}\n\n", ObjectType);
    BonjourOffload.record(from:)(a1, &v28);
    if (v29)
    {
      sub_100179C1C(&v28, v30);
      v14 = v31;
      v15 = v32;
      sub_100029B34(v30, v31);
      v16 = (*(v15 + 40))(v14, v15);
      if (!v17 || (v19 = v16, v20 = v17, v21 = v18, v22 = *DNSRecords.Identifier.deniedList.unsafeMutableAddressor(), , LOBYTE(v19) = sub_100447CAC(v19, v20, v21 & 0xFF01, v22), , , (v19 & 1) == 0))
      {
        v23 = [a1 serviceValue];
        if (v23)
        {
          v24 = v23;
          v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;

          sub_1000124C8(v25, v27);
          if ([a1 isResolve])
          {
            BonjourOffload.stopResolving(record:)(v30, ObjectType, WitnessTable);
          }

          else
          {
            BonjourOffload.stopAdvertising(record:)(v30, ObjectType, WitnessTable);
          }
        }

        else
        {
          BonjourOffload.stopBrowsing(record:)(v30, ObjectType, WitnessTable);
        }
      }

      sub_100002A00(v30);
    }

    else
    {
      sub_100016290(&v28, &qword_100595FC0, &qword_1004B01B0);
    }

    return a2(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003062E8(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, void (*a6)(id, uint64_t, void *))
{
  v10 = _Block_copy(aBlock);
  v13[2] = v10;
  v11 = a3;
  v12 = a1;
  a6(v11, a5, v13);
  _Block_release(v10);
}

void *sub_10030638C()
{
  v56 = type metadata accessor for UUID();
  v1 = *(v56 - 8);
  __chkstk_darwin();
  v55 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10005DC58(&unk_100595FA0, &unk_1004B0190);
  __chkstk_darwin();
  v62 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v68 = &v53 - v4;
  __chkstk_darwin();
  v67 = (&v53 - v5);
  __chkstk_darwin();
  v61 = &v53 - v6;
  Strong = swift_weakLoadStrong();
  v8 = _swiftEmptyArrayStorage;
  if (!Strong)
  {
LABEL_25:
    if (v8[2])
    {
      sub_10005DC58(&unk_10059B110, &qword_100480EA0);
      v50 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v50 = &_swiftEmptyDictionarySingleton;
    }

    v70 = v50;

    sub_100306C0C(v51, 1, &v70);

    return v70;
  }

  v9 = *(*Strong + 448);
  v10 = Strong;
  swift_beginAccess();
  v11 = *(v10 + v9);

  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_24:

    goto LABEL_25;
  }

  v70 = _swiftEmptyArrayStorage;
  sub_100367948(0, v12, 0);
  v8 = v70;
  v13 = v11 + 64;
  v14 = _HashTable.startBucket.getter();
  v15 = 0;
  v16 = *(v11 + 36);
  v54 = (v1 + 8);
  v53 = v11 + 72;
  v59 = v11 + 64;
  v60 = v11;
  v57 = v12;
  v58 = v16;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v11 + 32))
  {
    v19 = v14 >> 6;
    if ((*(v13 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_30;
    }

    if (v16 != *(v11 + 36))
    {
      goto LABEL_31;
    }

    v63 = v15;
    v66 = v8;
    v20 = v69;
    v21 = *(v69 + 48);
    v22 = *(v11 + 56);
    v23 = *(v11 + 48) + 6 * v14;
    v24 = *(v23 + 4);
    v25 = (type metadata accessor for AWDLPeer(0) - 8);
    v26 = v22 + *(*v25 + 72) * v14;
    LODWORD(v22) = *v23;
    v27 = v61;
    sub_100307704(v26, &v61[v21]);
    v28 = v67;
    *v67 = v22;
    *(v28 + 2) = v24;
    sub_100307768(&v27[v21], v28 + *(v20 + 48));
    v29 = v68;
    sub_100012400(v28, v68, &unk_100595FA0, &unk_1004B0190);
    v0.i32[0] = *v29;
    v30 = *(v29 + 4);
    v64 = *(v29 + 5);
    v31 = v62;
    sub_100012400(v28, v62, &unk_100595FA0, &unk_1004B0190);
    v32 = v31 + *(v20 + 48);
    v33 = v32 + v25[15];
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);

    sub_1003077CC(v32);
    v65 = v30;
    if (!v34)
    {
      v36 = v55;
      UUID.init()();
      v35 = UUID.uuidString.getter();
      v34 = v37;
      (*v54)(v36, v56);
    }

    v8 = v66;
    sub_100016290(v67, &unk_100595FA0, &unk_1004B0190);
    sub_1003077CC(v68 + *(v69 + 48));
    v70 = v8;
    v39 = v8[2];
    v38 = v8[3];
    v11 = v60;
    if (v39 >= v38 >> 1)
    {
      sub_100367948((v38 > 1), v39 + 1, 1);
      v8 = v70;
    }

    v40 = vmovl_u8(v0).u64[0];
    v8[2] = v39 + 1;
    v41 = &v8[3 * v39];
    *(v41 + 8) = vuzp1_s8(v40, v40).u32[0];
    v42 = v64;
    *(v41 + 36) = v65;
    *(v41 + 37) = v42;
    v41[5] = v35;
    v41[6] = v34;
    v17 = 1 << *(v11 + 32);
    if (v14 >= v17)
    {
      goto LABEL_32;
    }

    v13 = v59;
    v43 = *(v59 + 8 * v19);
    if ((v43 & (1 << v14)) == 0)
    {
      goto LABEL_33;
    }

    LODWORD(v16) = v58;
    if (v58 != *(v11 + 36))
    {
      goto LABEL_34;
    }

    v44 = v43 & (-2 << (v14 & 0x3F));
    if (v44)
    {
      v17 = __clz(__rbit64(v44)) | v14 & 0x7FFFFFFFFFFFFFC0;
      v18 = v63;
    }

    else
    {
      v45 = v19 << 6;
      v46 = v19 + 1;
      v47 = (v53 + 8 * v19);
      while (v46 < (v17 + 63) >> 6)
      {
        v49 = *v47++;
        v48 = v49;
        v45 += 64;
        ++v46;
        if (v49)
        {
          sub_10002BEB8(v14, v58, 0);
          v17 = __clz(__rbit64(v48)) + v45;
          goto LABEL_23;
        }
      }

      sub_10002BEB8(v14, v58, 0);
LABEL_23:
      v18 = v63;
    }

    v15 = v18 + 1;
    v14 = v17;
    if (v15 == v57)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10030694C()
{
  sub_100307828();

  return swift_unknownObjectRetain();
}

uint64_t (*sub_1003069B4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100304974(v2);
  return sub_100306A24;
}

void sub_100306A28(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_100306A70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003049D4(&qword_10059B930, sub_10004D020);
  *a1 = result;
  return result;
}

void sub_100306AB8(int a1, int a2, int a3, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v4[2](v4, 0);

  _Block_release(v4);
}

id sub_100306B14()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EmptyBonjourOffload(uint64_t a1)
{
  result = qword_100595EF0;
  if (!qword_100595EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100306C0C(uint64_t a1, char a2, void *a3)
{
  v3 = a1;
  v30 = *(a1 + 16);
  if (!v30)
  {
  }

  v5 = 0;
  v6 = 32;
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_23;
    }

    v35 = *(v3 + v6);
    v36 = *(v3 + v6 + 16);
    v7 = v36;
    v9 = *(&v35 + 1);
    v8 = v35;
    sub_100012400(&v35, v34, &unk_100595FB0, &unk_1004B01A0);
    if (!v7)
    {
    }

    v31 = v5;
    v32 = v7;
    v37 = v8;
    v38 = BYTE2(v8);
    v39 = BYTE3(v8);
    v40 = BYTE4(v8);
    v41 = BYTE5(v8);
    v10 = *a3;
    v11 = sub_100041DE8(v8 & 0xFFFFFFFFFFFFLL);
    v13 = v10[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_20;
    }

    v17 = v12;
    if (v10[3] >= v16)
    {
      break;
    }

    sub_1003126B0(v16, a2 & 1);
    v11 = sub_100041DE8(v8 & 0xFFFFFFFFFFFFLL);
    if ((v17 & 1) != (v18 & 1))
    {
      goto LABEL_22;
    }

LABEL_10:
    if (v17)
    {
      goto LABEL_15;
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = v19[6] + 6 * v11;
    *v20 = v8;
    *(v20 + 2) = BYTE2(v8);
    *(v20 + 3) = BYTE3(v8);
    *(v20 + 4) = BYTE4(v8);
    *(v20 + 5) = BYTE5(v8);
    v21 = (v19[7] + 16 * v11);
    *v21 = v9;
    v21[1] = v32;
    v22 = v19[2];
    v15 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v15)
    {
      goto LABEL_21;
    }

    ++v5;
    v19[2] = v23;
    v6 += 24;
    a2 = 1;
    v3 = a1;
    if (v30 == v31 + 1)
    {
    }
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v28 = v11;
  sub_10046C7CC();
  v11 = v28;
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v34[0] = v24;
  swift_errorRetain();
  sub_10005DC58(&qword_10058C830, &qword_1004821F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_23:
  *&v35 = 0;
  *(&v35 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v26._object = 0x80000001004BD5D0;
  v26._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v26);
  _print_unlocked<A, B>(_:_:)();
  v27._countAndFlagsBits = 39;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

char *sub_100306F50(uint64_t a1, char *a2)
{
  type metadata accessor for Logger();
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  v6 = qword_10059B920;
  *(v2 + qword_10059B920) = 0;
  v7 = (v2 + qword_10059B928);
  *v7 = OffloadedServices.init()(&type metadata for UInt8, &type metadata for UInt8, &type metadata for NANPeerServiceIdentifier);
  v7[1] = v8;
  v7[2] = v9;
  v7[3] = v10;
  v11 = qword_100595DB0;
  *(v2 + v11) = sub_100304014(0xD00000000000001ELL, 0x80000001004BF1F0, sub_100307930);
  swift_weakAssign();
  v12 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___WiFiP2PDNSServiceDiscoveryXPCDelegate];
  v13 = *&a2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
  [v13 setRemoteObjectInterface:v12];

  v14 = [v13 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10005DC58(&unk_100595FE0, &qword_1004B01C8);
  v15 = swift_dynamicCast();
  v16 = v20;
  if (!v15)
  {
    v16 = 0;
  }

  *(v2 + v6) = v16;
  swift_unknownObjectRelease();
  Logger.init(subsystem:category:)();
  v17 = &OBJC_PROTOCOL___WiFiP2PDNSServiceDiscoveryXPC;
  v18 = sub_100303CDC(a2, v5, v17);

  return v18;
}

char *sub_1003071E4(char *a1)
{
  type metadata accessor for Logger();
  __chkstk_darwin();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC12wifip2pdCore19EmptyBonjourOffload_transaction;
  *(v1 + v5) = sub_100304014(0xD00000000000001ALL, 0x80000001004BF230, sub_100307930);
  v6 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___WiFiP2PDNSServiceDiscoveryXPCDelegate];
  [*&a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] setRemoteObjectInterface:v6];

  Logger.init(subsystem:category:)();
  v7 = &OBJC_PROTOCOL___WiFiP2PDNSServiceDiscoveryXPC;
  v8 = sub_100303CDC(a1, v4, v7);

  return v8;
}

char *sub_100307354(uint64_t a1, char *a2)
{
  type metadata accessor for Logger();
  __chkstk_darwin();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for UUID();
  v6 = *(v24 - 8);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  v9 = qword_10059B938;
  *(v2 + qword_10059B938) = 0;
  v10 = (v2 + qword_10059B940);
  *v10 = OffloadedServices.init()(&type metadata for DNSRecords.Identifier, &type metadata for DNSRecords.PTR, &type metadata for DNSRecords.PTR);
  v10[1] = v11;
  v10[2] = v12;
  v10[3] = v13;
  v14 = qword_100595E38;
  *(v2 + v14) = sub_100304014(0xD00000000000001FLL, 0x80000001004BF210, sub_100307930);
  swift_weakAssign();
  v15 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___WiFiP2PDNSServiceDiscoveryXPCDelegate];
  v16 = *&a2[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection];
  [v16 setRemoteObjectInterface:v15];

  v17 = [v16 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10005DC58(&unk_100595FE0, &qword_1004B01C8);
  if (swift_dynamicCast())
  {
    v18 = v25;
  }

  else
  {
    v18 = 0;
  }

  *(v2 + v9) = v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  swift_unknownObjectRetain();
  sub_10044C010(sub_100307928, v19, v8);
  swift_unknownObjectRelease();

  (*(v6 + 32))(v2 + qword_10059B948, v8, v24);
  Logger.init(subsystem:category:)();
  v20 = &OBJC_PROTOCOL___WiFiP2PDNSServiceDiscoveryXPC;
  v21 = sub_100303CDC(a2, v5, v20);

  return v21;
}

uint64_t sub_100307704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AWDLPeer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100307768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AWDLPeer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003077CC(uint64_t a1)
{
  v2 = type metadata accessor for AWDLPeer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100307838(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100595FA0, &unk_1004B0190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003079BC()
{
  v0 = type metadata accessor for Logger();
  sub_100068888(v0, qword_10059B950);
  sub_100037644(v0, qword_10059B950);
  return Logger.init(subsystem:category:)();
}

id sub_100307A98(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, __n128 a5)
{
  v10 = *v5;
  v11 = swift_isaMask;
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  v5[14] = a1;
  v5[15] = a2;
  v5[16] = a3;
  swift_unknownObjectWeakAssign();
  v13 = type metadata accessor for WiFiAwarePairingStoreInstance(0, *((v11 & v10) + 0x50), *((v11 & v10) + 0x58), v12);
  v27.receiver = v5;
  v27.super_class = v13;

  v14 = objc_msgSendSuper2(&v27, "init");
  v15 = qword_1005943E0;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100037644(v17, qword_10059B950);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26 = v22;
    *v20 = 138412546;
    *(v20 + 4) = v16;
    *v21 = v16;
    *(v20 + 12) = 2080;
    v25 = v16;
    v23 = sub_100002320(a2, a3, &v26);

    *(v20 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "WiFiAwarePairingStoreInstance[%@]: %s initialized", v20, 0x16u);
    sub_100016290(v21, &qword_10058B780, &qword_100480AC0);

    sub_100002A00(v22);
  }

  else
  {
  }

  return v16;
}

uint64_t sub_100307D4C()
{
  v1 = v0[2];
  v2 = v1[14];
  v0[3] = v2;
  v0[4] = v1[15];
  v0[5] = v1[16];
  v3 = *v2;
  v0[6] = *(*v2 + 408);
  v0[7] = (v3 + 408) & 0xFFFFFFFFFFFFLL | 0xEB81000000000000;

  return _swift_task_switch(sub_100307E18, v2, 0);
}

uint64_t sub_100307E18()
{
  v1 = (*(v0 + 48))(*(v0 + 32), *(v0 + 40), 1);
  *(v0 + 64) = 0;
  v2 = v1;

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100307EF8()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_100307F68(uint64_t a1, uint64_t a2, const void *a3)
{
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = _Block_copy(a3);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1004B03E0;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1004B03E8;
  v11[5] = v10;

  sub_10030AFC8(0, 0, v6, &unk_1004B03F0, v11);

  return result;
}

uint64_t sub_1003080E0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100308188;

  return sub_100307D2C();
}

uint64_t sub_100308188(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = _convertErrorToNSError(_:)();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    sub_1001AB6A8();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v4 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_100308318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v7 + 56) = a5;
  *(v7 + 64) = v6;
  *(v7 + 48) = a6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return _swift_task_switch(sub_100308344, v6, 0);
}

uint64_t sub_100308344()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3._object = 0x80000001004B4EC0;
    v3._countAndFlagsBits = 0xD000000000000012;
    if (NSXPCConnection.has(entitlement:)(v3))
    {
      v4 = *(v0[8] + 112);
      v0[10] = v4;
      v5 = *v4 + 448;
      v0[11] = *v5;
      v0[12] = v5 & 0xFFFFFFFFFFFFLL | 0x7122000000000000;

      return _swift_task_switch(sub_10030846C, v4, 0);
    }
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  sub_10030AA68(v6);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_10030846C()
{
  *(v0 + 104) = (*(v0 + 88))(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 56), *(v0 + 48));
  *(v0 + 112) = 0;
  v1 = *(v0 + 64);

  return _swift_task_switch(sub_100308520, v1, 0);
}

uint64_t sub_100308520()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100308588()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1003085F0(uint64_t a1, double a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, const void *a8)
{
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v16 = &v24 - v15;
  v17 = _Block_copy(a8);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  *(v18 + 32) = a6;
  *(v18 + 40) = a2;
  *(v18 + 48) = a7;
  *(v18 + 56) = v17;
  *(v18 + 64) = a1;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1004B03C0;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1004B03C8;
  v21[5] = v20;
  v22 = a4;
  v23 = a5;

  sub_10030AFC8(0, 0, v16, &unk_1004B03D0, v21);
}

uint64_t sub_1003087AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, double a7)
{
  v7[2] = a6;
  v12 = type metadata accessor for UUID();
  v7[3] = v12;
  v7[4] = *(v12 - 8);
  v13 = swift_task_alloc();
  v7[5] = v13;
  v7[6] = _Block_copy(a5);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v7[7] = v15;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = swift_task_alloc();
  v7[8] = v17;
  *v17 = v7;
  v17[1] = sub_100308920;

  return sub_100308318(v14, v16, v13, a3, a4, a7);
}

uint64_t sub_100308920(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = v5[6];
  (*(v5[4] + 8))(v5[5], v5[3]);

  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1, 0);
  }

  _Block_release(v6[6]);

  v10 = v7[1];

  return v10();
}

uint64_t sub_100308B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100308B50, v3, 0);
}

uint64_t sub_100308B50()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3._object = 0x80000001004B4EC0;
    v3._countAndFlagsBits = 0xD000000000000012;
    if (NSXPCConnection.has(entitlement:)(v3))
    {
      v4 = *(v0[5] + 112);
      v0[7] = v4;
      v5 = *v4 + 456;
      v0[8] = *v5;
      v0[9] = v5 & 0xFFFFFFFFFFFFLL | 0x58ED000000000000;

      return _swift_task_switch(sub_100308C74, v4, 0);
    }
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  sub_10030AA68(v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100308C74()
{
  (*(v0 + 64))(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  *(v0 + 80) = 0;
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_10030BDD8, v1, 0);
}

double sub_100308D20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const void *a5)
{
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = _Block_copy(a5);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1004B03A0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1004B03A8;
  v15[5] = v14;
  v16 = a3;

  sub_10030AFC8(0, 0, v10, &unk_1004B03B0, v15);

  return result;
}

uint64_t sub_100308EB0(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;

  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_10030BDCC;

  return sub_100308B2C(v6, v8, a2);
}

uint64_t sub_100308F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_100308FBC, v5, 0);
}

uint64_t sub_100308FBC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3._object = 0x80000001004B4EC0;
    v3._countAndFlagsBits = 0xD000000000000012;
    if (NSXPCConnection.has(entitlement:)(v3))
    {
      v4 = *(v0[7] + 112);
      v0[9] = v4;
      v5 = *v4 + 488;
      v0[10] = *v5;
      v0[11] = v5 & 0xFFFFFFFFFFFFLL | 0xFC85000000000000;

      return _swift_task_switch(sub_1003090E0, v4, 0);
    }
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  sub_10030AA68(v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003090E0()
{
  (*(v0 + 80))(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), 1);
  *(v0 + 96) = 0;
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_100309194, v1, 0);
}

uint64_t sub_100309194()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003091F8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

double sub_100309260(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, const void *a6)
{
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v12 = &v21 - v11;
  v13 = _Block_copy(a6);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = v13;
  v14[6] = a1;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1004B0380;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1004B0388;
  v17[5] = v16;
  v18 = a3;
  v19 = a5;

  sub_10030AFC8(0, 0, v12, &unk_1004B0390, v17);

  return result;
}

uint64_t sub_100309404(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v5[4] = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v5[5] = v11;

  v13 = swift_task_alloc();
  v5[6] = v13;
  *v13 = v5;
  v13[1] = sub_100309510;

  return sub_100308F94(v7, v9, a2, v10, v12);
}

uint64_t sub_100309510()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_1003096D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 88) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_100309700, v4, 0);
}

uint64_t sub_100309700()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3._object = 0x80000001004B4EC0;
    v3._countAndFlagsBits = 0xD000000000000012;
    if (NSXPCConnection.has(entitlement:)(v3))
    {
      v4 = *(v0[5] + 112);
      v0[7] = v4;
      v5 = *v4 + 496;
      v0[8] = *v5;
      v0[9] = v5 & 0xFFFFFFFFFFFFLL | 0xC378000000000000;

      return _swift_task_switch(sub_100309824, v4, 0);
    }
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  sub_10030AA68(v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100309824()
{
  (*(v0 + 64))(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 88));
  *(v0 + 80) = 0;
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_1003098D4, v1, 0);
}

uint64_t sub_1003098D4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100309938()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

double sub_1003099A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, const void *a6)
{
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v12 = &v20 - v11;
  v13 = _Block_copy(a6);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = v13;
  *(v14 + 48) = a1;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1004B0360;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1004B0368;
  v17[5] = v16;
  v18 = a3;

  sub_10030AFC8(0, 0, v12, &unk_1004B0370, v17);

  return result;
}

uint64_t sub_100309B40(uint64_t a1, uint64_t a2, char a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[4] = v9;

  v11 = swift_task_alloc();
  v5[5] = v11;
  *v11 = v5;
  v11[1] = sub_10030BDCC;

  return sub_1003096D8(v8, v10, a2, a3);
}

uint64_t sub_100309C2C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100309C50, v2, 0);
}

uint64_t sub_100309C50()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3._object = 0x80000001004B4EC0;
    v3._countAndFlagsBits = 0xD000000000000012;
    if (NSXPCConnection.has(entitlement:)(v3))
    {
      v4 = *(v0[4] + 112);
      v0[6] = v4;
      v5 = *v4 + 504;
      v0[7] = *v5;
      v0[8] = v5 & 0xFFFFFFFFFFFFLL | 0x67F3000000000000;

      return _swift_task_switch(sub_100309D74, v4, 0);
    }
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  sub_10030AA68(v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100309D74()
{
  (*(v0 + 56))(*(v0 + 16), *(v0 + 24));
  *(v0 + 72) = 0;
  v1 = *(v0 + 32);

  return _swift_task_switch(sub_100309E1C, v1, 0);
}

uint64_t sub_100309E1C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100309E80()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

double sub_100309EE8(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004B0340;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1004B0348;
  v13[5] = v12;
  v14 = a3;

  sub_10030AFC8(0, 0, v8, &unk_1004B0350, v13);

  return result;
}

uint64_t sub_10030A074(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10030A148;

  return sub_100309C2C(v4, v6);
}

uint64_t sub_10030A148()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_10030A30C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3._object = 0x80000001004B4EC0;
    v3._countAndFlagsBits = 0xD000000000000012;
    if (NSXPCConnection.has(entitlement:)(v3))
    {
      v4 = *(v0[2] + 112);
      v0[4] = v4;
      v5 = *(*v4 + 512);

      v10 = (v5 + *v5);
      v6 = swift_task_alloc();
      v0[5] = v6;
      *v6 = v0;
      v6[1] = sub_10030A4CC;

      return v10();
    }
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  sub_10030AA68(v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10030A4CC()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_10030A658;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_10030A5F4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10030A5F4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10030A658()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

double sub_10030A6C0(uint64_t a1, uint64_t a2, const void *a3)
{
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = _Block_copy(a3);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1004B02F8;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1004B0308;
  v11[5] = v10;

  sub_10030AFC8(0, 0, v6, &unk_1004B0318, v11);

  return result;
}

uint64_t sub_10030A838(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10030A8E0;

  return sub_10030A2EC();
}

uint64_t sub_10030A8E0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

id sub_10030AA68(void *a1)
{
  v2 = v1;
  if (qword_1005943E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100037644(v4, qword_10059B950);
  v5 = a1;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v2;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v2;
    v9[1] = a1;

    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "WiFiAwarePairingStoreInstance[%@] Invalidating unauthorized connection: %@", v8, 0x16u);
    sub_10005DC58(&qword_10058B780, &qword_100480AC0);
    swift_arrayDestroy();
  }

  return [v5 invalidate];
}

uint64_t sub_10030ABFC()
{
  v1 = v0;
  if (qword_1005943E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100037644(v2, qword_10059B950);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v1;
    *v6 = v1;

    _os_log_impl(&_mh_execute_header, v3, v4, "WiFiAwarePairingStoreInstance[%@] de-initialized", v5, 0xCu);
    sub_100016290(v6, &qword_10058B780, &qword_100480AC0);
  }

  swift_unknownObjectWeakDestroy();
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_10030AD64()
{
  sub_10030ABFC();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10030AD90(__n128 a1)
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_10030ADF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10030BDD0;

  return v6();
}

uint64_t sub_10030AEE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1002CB380;

  return v7();
}

uint64_t sub_10030AFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v10 = v22 - v9;
  sub_10030B6DC(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100016290(v10, &qword_1005985E0, &unk_1004B0F80);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = String.utf8CString.getter() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);

    return v20;
  }

LABEL_8:
  sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_10030B2B4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10030B3AC;

  return v6(a1);
}

uint64_t sub_10030B3AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10030B4A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10030BDD0;

  return sub_10030A838(v2, v3);
}

uint64_t sub_10030B550()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10030BDD0;

  return sub_10030ADF8(v2, v3, v4);
}

uint64_t sub_10030B610(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10030BDD0;

  return sub_10030AEE0(a1, v4, v5, v6);
}

uint64_t sub_10030B6DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10030B74C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10030BDD0;

  return sub_10030B2B4(a1, v4);
}