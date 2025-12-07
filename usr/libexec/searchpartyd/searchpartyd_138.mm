void *sub_100F514E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8);
  if (v5 >> 60 == 15 || (v6 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8), v6 >> 60 == 15) || (v7 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation + 8), v7 >> 60 == 15) || (v8 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert + 8), v8 >> 60 == 15) || (v9 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1 + 8), v9 >> 60 == 15) || (v10 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey + 8), v10 >> 60 == 15) || (v11 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey + 8), v11 >> 60 == 15) || (v12 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8), v12 >> 60 == 15) || (v13 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8), v13 >> 60 == 15) || (v14 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status + 8), v14 >> 60 == 15))
  {
    v15 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      v19 = v15;
      swift_once();
      v15 = v19;
    }

    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, qword_10177C410, "Missing info to generate AirPodsPairingAckData!", 47, 2, _swiftEmptyArrayStorage);
    sub_100F54CB8(__src);
  }

  else
  {
    v25 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
    v20 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
    v22 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert);
    v24 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1);
    v38 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
    v39 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey);
    v40 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey);
    v27 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
    v28 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v34 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
    v26 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
    v17 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
    v36 = v3[2];
    v37 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
    v35 = v3[3];
    v18 = v3[11];
    v31 = v3[13];
    v29 = v3[12];
    v30 = v3[14];
    v41[1] = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
    v41[0] = v34;
    *&v41[2] = v17;
    *(&v41[2] + 1) = v37;
    *&v41[3] = v22;
    *(&v41[3] + 1) = v8;
    *&v41[4] = v24;
    *(&v41[4] + 1) = v9;
    *&v41[5] = v20;
    *(&v41[5] + 1) = v6;
    *&v41[6] = v27;
    *(&v41[6] + 1) = v12;
    *&v41[7] = v28;
    *(&v41[7] + 1) = v13;
    *&v41[8] = v36;
    *(&v41[8] + 1) = v35;
    *&v41[9] = v38;
    *(&v41[9] + 1) = v7;
    *&v41[10] = v25;
    *(&v41[10] + 1) = v5;
    *&v41[11] = v26;
    *(&v41[11] + 1) = v14;
    *&v41[12] = a1;
    *(&v41[12] + 1) = a2;
    *&v41[13] = v39;
    *(&v41[13] + 1) = v10;
    *&v41[14] = v40;
    *(&v41[14] + 1) = v11;
    *&v41[15] = v18;
    *(&v41[15] + 1) = v29;
    *&v41[16] = v31;
    *(&v41[16] + 1) = v30;
    v21 = v13;
    v23 = v14;
    SharingCircleWildAdvertisementKey.init(key:)();
    sub_10002E98C(v25, v5);
    sub_10002E98C(v20, v6);
    sub_10002E98C(v38, v7);
    sub_10002E98C(v22, v8);
    sub_10002E98C(v24, v9);
    sub_10002E98C(v39, v10);
    sub_10002E98C(v40, v11);
    sub_10002E98C(v27, v12);
    sub_10002E98C(v28, v21);
    sub_10002E98C(v26, v23);

    sub_100017D5C(v36, v35);

    sub_10002E98C(v31, v30);
    sub_10002E98C(a1, a2);
    memcpy(__src, v41, sizeof(__src));
  }

  return memcpy(a3, __src, 0x110uLL);
}

void *sub_100F518CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  v12 = sub_100F524A0(a5);
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C448);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    __src[0] = v24;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    type metadata accessor for MultipartAccessoryPairingInfo(0);
    sub_100101BAC();
    v17 = Dictionary.description.getter();
    v19 = a1;
    v20 = a2;
    v21 = a4;
    v22 = sub_1000136BC(v17, v18, __src);

    *(v16 + 14) = v22;
    a4 = v21;
    a2 = v20;
    a1 = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "otherSerialNumbersAndPartIds: %{private,mask.hash}s", v16, 0x16u);
    sub_100007BAC(v24);
  }

  *(v7 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds) = v12;

  sub_100F51B04(a1, a2, v12, a3, a4, __src);

  return memcpy(a6, __src, 0x160uLL);
}

void *sub_100F51B04@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v114 = a4;
  v115 = a5;
  v113 = a2;
  v10 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v80 - v11;
  v13 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v6[6];
  if (v17 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v18 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2 + 8);
  if (v18 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v19 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey + 8);
  if (v19 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v20 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey + 8);
  if (v20 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v21 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
  if (v21 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v22 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8);
  if (v22 >> 60 == 15)
  {
    goto LABEL_13;
  }

  if (*(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId + 1))
  {
    goto LABEL_13;
  }

  v23 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
  if (v23 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v24 = (v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1);
  v25 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1 + 8);
  if (v25 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v26 = (v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation);
  v27 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_scrtAttestation + 8);
  if (v27 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v96 = v6;
  v108 = v6[5];
  v99 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaSignatureS2);
  v106 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_systemPublicKey);
  v107 = v22;
  v28 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_refPublicKey);
  v104 = v25;
  v105 = v28;
  v29 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
  v101 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
  v102 = v29;
  LODWORD(v95) = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  v30 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v100 = *v24;
  v98 = *v26;
  *&v119[0] = v30;
  *(&v119[0] + 1) = v23;
  v110 = v20;
  v111 = v19;
  v109 = v21;
  v112 = v23;
  v103 = v27;
  sub_10002E98C(v30, v23);
  v97 = v30;
  sub_10002E98C(v30, v112);
  sub_10002E98C(v108, v17);
  sub_10002E98C(v99, v18);
  sub_10002E98C(v106, v111);
  sub_10002E98C(v105, v110);
  sub_10002E98C(v102, v109);
  sub_10002E98C(v101, v107);
  sub_10002E98C(v100, v104);
  sub_10002E98C(v98, v103);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    v31 = v97;
    v32 = v112;
    sub_100006654(v97, v112);
    sub_100006654(v98, v103);
    sub_100006654(v100, v104);
    sub_100006654(v31, v32);
    sub_100006654(v101, v107);
    sub_100006654(v102, v109);
    sub_100006654(v105, v110);
    sub_100006654(v106, v111);
    sub_100006654(v99, v18);
    sub_100006654(v108, v17);
LABEL_13:
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000076D4(v33, qword_10177C448);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Missing info to generate AirPodsLEPairingCheckData!", v36, 2u);
    }

    sub_100BB0B34(v119);
    return memcpy(a6, v119, 0x160uLL);
  }

  v38 = v97;
  v39 = Data.trimmed.getter();
  v92 = v40;
  v93 = v39;
  sub_100006654(v38, v112);
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_1000076D4(v41, qword_10177C448);
  sub_10002E98C(v114, v115);
  v94 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  sub_100006654(v114, v115);
  LODWORD(v91) = v42;
  v43 = v42;
  v44 = v94;
  if (os_log_type_enabled(v94, v43))
  {
    v45 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *&v119[0] = v89;
    v90 = v45;
    *v45 = 136446210;
    if (v115 >> 60 == 15)
    {
      v46 = 0;
      v47 = 0xE000000000000000;
    }

    else
    {
      v46 = Data.hexString.getter();
      v47 = v48;
    }

    v88 = sub_1000136BC(v46, v47, v119);

    v49 = v90;
    *(v90 + 1) = v88;
    _os_log_impl(&_mh_execute_header, v94, v91, "Pairing token: %{public}s", v49, 0xCu);
    sub_100007BAC(v89);
  }

  else
  {
  }

  v50 = v96;
  v84 = *(a3 + 16) && (v51 = sub_100771E30(v93, v92), v50 = v96, (v52 & 1) != 0) && (sub_100F54CEC(*(a3 + 56) + *(v14 + 72) * v51, v16, type metadata accessor for MultipartAccessoryPairingInfo), v53 = v16[1], sub_100F54D54(v16, type metadata accessor for MultipartAccessoryPairingInfo), v53 == 1);
  v54 = *(v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid + 8);
  v83 = *(v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
  v94 = v54;
  v55 = *(v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId + 8);
  v85 = *(v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
  v91 = *(v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons);
  v56 = *(v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
  v86 = *(v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
  v57 = *(v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers);
  v58 = *(v50 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds);
  v118 = v95;
  v95 = sub_1000198E8();

  v87 = v55;

  v88 = v56;

  v90 = v57;

  v89 = v58;

  v59 = FixedWidthInteger.data.getter();
  v60 = v96;
  v81 = v61;
  v82 = v59;
  sub_100016590(v93, v92);
  v62 = v60[2];
  v95 = v60[3];
  v63 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(v60 + v63, v12, &qword_101697268, &qword_101394FE0);
  v64 = type metadata accessor for AccessoryProductInfo(0);
  v65 = (*(*(v64 - 8) + 48))(v12, 1, v64);
  v66 = v99;
  if (v65)
  {
    v92 = 0xF000000000000000;
    v93 = 0;
  }

  else
  {
    v67 = &v12[*(v64 + 100)];
    v68 = *v67;
    v92 = v67[1];
    v93 = v68;
    sub_10002E98C(v68, v92);
  }

  sub_100017D5C(v62, v95);
  sub_10000B3A8(v12, &qword_101697268, &qword_101394FE0);
  v117[2] = v66;
  v117[3] = v18;
  LOBYTE(v117[6]) = v84;
  *&v69 = v83;
  *(&v69 + 1) = v94;
  *&v70 = v85;
  v71 = v60[11];
  v72 = v60[12];
  *(&v70 + 1) = v87;
  v73 = v60[13];
  v74 = v60[14];
  v116 = 0;
  v75 = a1;
  v117[0] = a1;
  v76 = v113;
  v117[1] = v113;
  v77 = v62;
  v79 = v114;
  v78 = v115;
  v117[4] = v114;
  v117[5] = v115;
  *&v117[9] = v70;
  *&v117[7] = v69;
  v117[11] = v86;
  v117[12] = v88;
  v117[13] = v102;
  v117[14] = v109;
  v117[15] = v101;
  v117[16] = v107;
  v117[17] = v97;
  v117[18] = v112;
  v117[19] = v91;
  LOBYTE(v117[20]) = 0;
  v117[21] = v90;
  v117[22] = v89;
  v117[23] = 0;
  v117[24] = v100;
  v117[25] = v104;
  v117[26] = v98;
  v117[27] = v103;
  v117[28] = v82;
  v117[29] = v81;
  v117[30] = v77;
  v117[31] = v95;
  v117[32] = v108;
  v117[33] = v17;
  v117[34] = v93;
  v117[35] = v92;
  v117[36] = v71;
  v117[37] = v72;
  v117[38] = v73;
  v117[39] = v74;
  v117[40] = v106;
  v117[41] = v111;
  v117[42] = v105;
  v117[43] = v110;
  SharingCircleWildAdvertisementKey.init(key:)();
  sub_10002E98C(v79, v78);

  sub_10002E98C(v73, v74);
  sub_100017D5C(v75, v76);
  memcpy(v119, v117, sizeof(v119));
  return memcpy(a6, v119, 0x160uLL);
}

void *sub_100F524A0(uint64_t a1)
{
  v216 = a1;
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  v209 = &v187 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v200 = *(v203 - 8);
  v4 = __chkstk_darwin(v203);
  v199 = &v187 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v194 = &v187 - v7;
  v8 = __chkstk_darwin(v6);
  v198 = &v187 - v9;
  v10 = __chkstk_darwin(v8);
  v193 = &v187 - v11;
  v12 = __chkstk_darwin(v10);
  v197 = &v187 - v13;
  __chkstk_darwin(v12);
  v192 = &v187 - v14;
  v202 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v201 = *(v202 - 8);
  v15 = __chkstk_darwin(v202);
  v206 = &v187 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v205 = &v187 - v17;
  v18 = &qword_1016A40D0;
  v19 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v212 = *(v19 - 8);
  v20 = __chkstk_darwin(v19 - 8);
  v191 = &v187 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v196 = &v187 - v23;
  v24 = __chkstk_darwin(v22);
  v190 = &v187 - v25;
  v26 = __chkstk_darwin(v24);
  v195 = &v187 - v27;
  __chkstk_darwin(v26);
  v211 = &v187 - v28;
  v29 = sub_1000BC4D4(&qword_1016BCD78, &qword_1013EADB0);
  v30 = __chkstk_darwin(v29 - 8);
  v32 = &v187 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v187 - v33;
  v35 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v36 = *(v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndMACAddresses);
  v37 = *v35;
  v38 = v35[1];
  v39 = *(v36 + 64);
  v218 = v36 + 64;
  v40 = 1 << *(v36 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v39;
  v207 = v37;
  v204 = v38;
  sub_10002E98C(v37, v38);
  v217 = (v40 + 63) >> 6;
  v213 = v36;

  v43 = 0;
  v208 = _swiftEmptyDictionarySingleton;
  *&v44 = 141558275;
  v210 = v44;
  *&v44 = 141558787;
  v189 = v44;
  v219 = v34;
  v215 = v32;
  while (2)
  {
    v46 = v217;
    v45 = v218;
    while (1)
    {
      if (!v42)
      {
        if (v46 <= v43 + 1)
        {
          v49 = v43 + 1;
        }

        else
        {
          v49 = v46;
        }

        v50 = v49 - 1;
        while (1)
        {
          v48 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            break;
          }

          if (v48 >= v46)
          {
            v59 = v18;
            v80 = sub_1000BC4D4(&qword_1016BCD80, &qword_1013EADB8);
            (*(*(v80 - 8) + 56))(v32, 1, 1, v80);
            v221 = 0;
            v43 = v50;
            goto LABEL_18;
          }

          v42 = *(v45 + 8 * v48);
          ++v43;
          if (v42)
          {
            v47 = v32;
            v43 = v48;
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_90:
        swift_once();
LABEL_86:
        v175 = type metadata accessor for Logger();
        sub_1000076D4(v175, qword_10177C418);
        v176 = Logger.logObject.getter();
        v177 = static os_log_type_t.default.getter();
        v178 = os_log_type_enabled(v176, v177);
        v179 = v208;
        if (v178)
        {
          v180 = swift_slowAlloc();
          v181 = swift_slowAlloc();
          v222 = v181;
          *v180 = v210;
          *(v180 + 4) = 1752392040;
          *(v180 + 12) = 2081;
          sub_100101BAC();

          v182 = Dictionary.description.getter();
          v184 = v183;

          v185 = sub_1000136BC(v182, v184, &v222);

          *(v180 + 14) = v185;
          _os_log_impl(&_mh_execute_header, v176, v177, "otherAccessoryPairingInfo: %{private,mask.hash}s", v180, 0x16u);
          sub_100007BAC(v181);
        }

        sub_100006654(v207, v204);

        return v179;
      }

      v47 = v32;
      v48 = v43;
LABEL_17:
      v221 = (v42 - 1) & v42;
      v51 = __clz(__rbit64(v42)) | (v48 << 6);
      v52 = (*(v213 + 48) + 16 * v51);
      v53 = *v52;
      v54 = v52[1];
      v55 = v211;
      sub_1000D2A70(*(v213 + 56) + *(v212 + 72) * v51, v211, v18, &unk_10138BE70);
      v56 = sub_1000BC4D4(&qword_1016BCD80, &qword_1013EADB8);
      v57 = *(v56 + 48);
      *v47 = v53;
      v47[1] = v54;
      v58 = v55;
      v59 = v18;
      v32 = v47;
      sub_1000D2AD8(v58, v47 + v57, v18, &unk_10138BE70);
      (*(*(v56 - 8) + 56))(v47, 0, 1, v56);
      sub_100017D5C(v53, v54);
      v34 = v219;
LABEL_18:
      sub_1000D2AD8(v32, v34, &qword_1016BCD78, &qword_1013EADB0);
      v60 = sub_1000BC4D4(&qword_1016BCD80, &qword_1013EADB8);
      if ((*(*(v60 - 8) + 48))(v34, 1, v60) == 1)
      {

        if (qword_1016950D0 == -1)
        {
          goto LABEL_86;
        }

        goto LABEL_90;
      }

      v61 = *v34;
      v62 = *(v60 + 48);
      v63 = v216;
      v64 = *(v216 + 16);
      v65 = *(v34 + 1);
      v220 = *v34;
      if (v64)
      {
        v66 = v61;
        v67 = sub_100771E30(v61, v65);
        if (v68)
        {
          break;
        }
      }

      v18 = v59;
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_1000076D4(v69, qword_10177C418);
      v70 = v220;
      sub_100017D5C(v220, v65);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();
      sub_100016590(v70, v65);
      if (os_log_type_enabled(v71, v72))
      {
        v214 = v62;
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v222 = v74;
        *v73 = v210;
        *(v73 + 4) = 1752392040;
        *(v73 + 12) = 2081;
        sub_100017D5C(v70, v65);
        static String.Encoding.utf8.getter();
        v75 = String.init(data:encoding:)();
        if (!v76)
        {
          v75 = Data.hexString.getter();
        }

        v77 = v75;
        v78 = v76;
        sub_100016590(v70, v65);
        v79 = sub_1000136BC(v77, v78, &v222);

        *(v73 + 14) = v79;
        _os_log_impl(&_mh_execute_header, v71, v72, "%{private,mask.hash}s is missing from beaconMap!", v73, 0x16u);
        sub_100007BAC(v74);

        sub_100016590(v70, v65);

        v18 = &qword_1016A40D0;
        v62 = v214;
        v32 = v215;
        v34 = v219;
      }

      else
      {

        sub_100016590(v70, v65);
        v32 = v215;
      }

      sub_10000B3A8(&v34[v62], v18, &unk_10138BE70);
      v46 = v217;
      v45 = v218;
      v42 = v221;
    }

    v81 = v205;
    sub_100F54CEC(*(v63 + 56) + *(v201 + 72) * v67, v205, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100F54CEC(v81, v206, type metadata accessor for OwnedBeaconGroup.PairingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = v59;
    v214 = v62;
    if (!EnumCaseMultiPayload)
    {
      v109 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
      v110 = (v206 + *(v109 + 48));
      v111 = *v110;
      v112 = v110[1];
      v113 = v110[2];
      v114 = v195;
      sub_1000D2AD8(v206, v195, v18, &unk_10138BE70);
      if (v112)
      {
        v115 = -1;
      }

      else
      {
        v115 = v111;
      }

      v116 = v190;
      sub_1000D2A70(v114, v190, v18, &unk_10138BE70);
      if (v113 == 3)
      {
        v117 = 0;
      }

      else
      {
        v117 = v113;
      }

      v118 = v192;
      *v192 = v115;
      *(v118 + 1) = 0;
      v119 = v203;
      sub_1000D2AD8(v116, v118 + *(v203 + 24), v18, &unk_10138BE70);
      *(v118 + *(v119 + 28)) = v117;
      sub_100837460(v118, v197);
      v120 = v208;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v222 = v120;
      v122 = v65;
      v123 = sub_100771E30(v66, v65);
      v125 = *(v120 + 16);
      v126 = (v124 & 1) == 0;
      v104 = __OFADD__(v125, v126);
      v127 = v125 + v126;
      if (v104)
      {
        goto LABEL_93;
      }

      v128 = v124;
      if (*(v120 + 24) >= v127)
      {
        v32 = v215;
        v130 = v220;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v173 = v123;
          sub_1010052AC();
          v130 = v220;
          v123 = v173;
        }
      }

      else
      {
        sub_100FE68A8(v127, isUniquelyReferenced_nonNull_native);
        v123 = sub_100771E30(v66, v65);
        v32 = v215;
        if ((v128 & 1) != (v129 & 1))
        {
          goto LABEL_97;
        }

        v130 = v220;
      }

      v141 = v222;
      v140 = v214;
      v208 = v222;
      if (v128)
      {
        sub_1008374C4(v197, v222[7] + *(v200 + 72) * v123);
        sub_100016590(v66, v122);
        sub_10000B3A8(v195, v18, &unk_10138BE70);
        sub_100F54D54(v205, type metadata accessor for OwnedBeaconGroup.PairingState);
      }

      else
      {
        v222[(v123 >> 6) + 8] |= 1 << v123;
        *(v141[6] + 16 * v123) = v130;
        sub_100837460(v197, v141[7] + *(v200 + 72) * v123);
        sub_10000B3A8(v195, v18, &unk_10138BE70);
        sub_100F54D54(v205, type metadata accessor for OwnedBeaconGroup.PairingState);
        v145 = v141[2];
        v104 = __OFADD__(v145, 1);
        v146 = v145 + 1;
        if (v104)
        {
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v141[2] = v146;
      }

      v34 = v219;
      goto LABEL_83;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v131 = type metadata accessor for Logger();
      sub_1000076D4(v131, qword_10177C418);
      v132 = v207;
      v133 = v204;
      sub_10002E98C(v207, v204);
      sub_100017D5C(v66, v65);
      v134 = Logger.logObject.getter();
      v135 = static os_log_type_t.error.getter();
      sub_100006654(v132, v133);
      sub_100016590(v66, v65);
      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        v222 = v188;
        *v136 = v189;
        *(v136 + 4) = 1752392040;
        *(v136 + 12) = 2081;
        if (v133 >> 60 == 15)
        {
          v137 = 0;
          v138 = 0xE000000000000000;
        }

        else
        {
          v137 = Data.hexString.getter();
          v138 = v147;
        }

        v148 = sub_1000136BC(v137, v138, &v222);

        *(v136 + 14) = v148;
        *(v136 + 22) = 2160;
        *(v136 + 24) = 1752392040;
        *(v136 + 32) = 2081;
        sub_100017D5C(v66, v65);
        static String.Encoding.utf8.getter();
        v149 = String.init(data:encoding:)();
        if (!v150)
        {
          v149 = Data.hexString.getter();
        }

        v151 = v149;
        v152 = v150;
        sub_100016590(v66, v65);
        v153 = sub_1000136BC(v151, v152, &v222);

        *(v136 + 34) = v153;
        _os_log_impl(&_mh_execute_header, v134, v135, "Why are we pairing %{private,mask.hash}s, when %{private,mask.hash}s is pairing locked to another iCloud account?", v136, 0x2Au);
        swift_arrayDestroy();
      }

      v154 = v203;
      v155 = *(v203 + 24);
      v156 = type metadata accessor for MACAddress();
      v157 = v194;
      (*(*(v156 - 8) + 56))(&v194[v155], 1, 1, v156);
      *v157 = 767;
      *(v157 + *(v154 + 28)) = 0;
      sub_100837460(v157, v199);
      v158 = v208;
      v159 = swift_isUniquelyReferenced_nonNull_native();
      v222 = v158;
      v160 = sub_100771E30(v66, v65);
      v162 = *(v158 + 16);
      v163 = (v161 & 1) == 0;
      v104 = __OFADD__(v162, v163);
      v164 = v162 + v163;
      if (v104)
      {
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v165 = v161;
      if (*(v158 + 24) >= v164)
      {
        v168 = v220;
        v167 = v65;
        if ((v159 & 1) == 0)
        {
          v174 = v160;
          sub_1010052AC();
          v168 = v220;
          v160 = v174;
        }
      }

      else
      {
        sub_100FE68A8(v164, v159);
        v160 = sub_100771E30(v66, v65);
        if ((v165 & 1) != (v166 & 1))
        {
          goto LABEL_97;
        }

        v167 = v65;
        v168 = v220;
      }

      v169 = v222;
      v140 = v214;
      v208 = v222;
      if (v165)
      {
        sub_1008374C4(v199, v222[7] + *(v200 + 72) * v160);
        sub_100016590(v66, v167);
        sub_100F54D54(v205, type metadata accessor for OwnedBeaconGroup.PairingState);
      }

      else
      {
        v222[(v160 >> 6) + 8] |= 1 << v160;
        *(v169[6] + 16 * v160) = v168;
        sub_100837460(v199, v169[7] + *(v200 + 72) * v160);
        sub_100F54D54(v205, type metadata accessor for OwnedBeaconGroup.PairingState);
        v170 = v169[2];
        v104 = __OFADD__(v170, 1);
        v171 = v170 + 1;
        if (v104)
        {
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v169[2] = v171;
      }

      v34 = v219;
LABEL_83:
      v42 = v221;
      goto LABEL_84;
    }

    v83 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
    v84 = v83[12];
    v85 = v206;
    sub_100006654(*(v206 + v83[16]), *(v206 + v83[16] + 8));
    v86 = (v85 + v83[24]);
    v87 = *v86;
    v88 = v86[1];
    v89 = v86[2];
    v90 = v85 + v84;
    v91 = v196;
    sub_1000D2AD8(v90, v196, &qword_1016A40D0, &unk_10138BE70);
    if (v88)
    {
      v87 = -1;
    }

    v92 = v91;
    v93 = v191;
    sub_1000D2A70(v92, v191, &qword_1016A40D0, &unk_10138BE70);
    if (v89 == 3)
    {
      v94 = 0;
    }

    else
    {
      v94 = v89;
    }

    v18 = &qword_1016A40D0;
    v95 = v193;
    *v193 = v87;
    *(v95 + 1) = 1;
    v96 = v203;
    sub_1000D2AD8(v93, v95 + *(v203 + 24), &qword_1016A40D0, &unk_10138BE70);
    *(v95 + *(v96 + 28)) = v94;
    sub_100837460(v95, v198);
    v97 = v208;
    v98 = swift_isUniquelyReferenced_nonNull_native();
    v222 = v97;
    v99 = v65;
    v100 = sub_100771E30(v66, v65);
    v102 = *(v97 + 16);
    v103 = (v101 & 1) == 0;
    v104 = __OFADD__(v102, v103);
    v105 = v102 + v103;
    if (v104)
    {
      goto LABEL_92;
    }

    v106 = v101;
    if (*(v97 + 24) >= v105)
    {
      v32 = v215;
      v108 = v220;
      if ((v98 & 1) == 0)
      {
        v172 = v100;
        sub_1010052AC();
        v108 = v220;
        v100 = v172;
      }

LABEL_56:
      v139 = v222;
      v140 = v214;
      v208 = v222;
      if (v106)
      {
        sub_1008374C4(v198, v222[7] + *(v200 + 72) * v100);
        sub_100016590(v66, v99);
        sub_10000B3A8(v196, &qword_1016A40D0, &unk_10138BE70);
        sub_100F54D54(v205, type metadata accessor for OwnedBeaconGroup.PairingState);
LABEL_64:
        v34 = v219;
        v42 = v221;
        v144 = type metadata accessor for UUID();
        (*(*(v144 - 8) + 8))(v206, v144);
LABEL_84:
        sub_10000B3A8(&v34[v140], v18, &unk_10138BE70);
        continue;
      }

      v222[(v100 >> 6) + 8] |= 1 << v100;
      *(v139[6] + 16 * v100) = v108;
      sub_100837460(v198, v139[7] + *(v200 + 72) * v100);
      sub_10000B3A8(v196, &qword_1016A40D0, &unk_10138BE70);
      sub_100F54D54(v205, type metadata accessor for OwnedBeaconGroup.PairingState);
      v142 = v139[2];
      v104 = __OFADD__(v142, 1);
      v143 = v142 + 1;
      if (!v104)
      {
        v139[2] = v143;
        goto LABEL_64;
      }

      goto LABEL_94;
    }

    break;
  }

  sub_100FE68A8(v105, v98);
  v100 = sub_100771E30(v66, v65);
  v32 = v215;
  if ((v106 & 1) == (v107 & 1))
  {
    v108 = v220;
    goto LABEL_56;
  }

LABEL_97:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

__n128 sub_100F5395C@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8);
  if (v5 >> 60 == 15 || (v6 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8), v6 >> 60 == 15) || (v7 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_acrtCerts + 8), v7 >> 60 == 15) || (v8 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8), v8 >> 60 == 15) || (v9 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8), v9 >> 60 == 15) || (v10 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status + 8), v10 >> 60 == 15))
  {
    v11 = static os_log_type_t.error.getter();
    if (qword_1016950C8 != -1)
    {
      v19 = v11;
      swift_once();
      v11 = v19;
    }

    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10177C410, "Missing info to generate AirPodsPairingAckData!", 47, 2, _swiftEmptyArrayStorage);
    sub_100F54C8C(&v37);
  }

  else
  {
    v18 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
    v20 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
    v21 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
    v24 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
    v25 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
    v26 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
    *&v27 = v18;
    *(&v27 + 1) = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
    *&v28 = v20;
    *(&v28 + 1) = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8);
    *&v29 = v21;
    *(&v29 + 1) = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
    v30 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_acrtCerts);
    v31 = v3[1];
    v32 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
    v33 = *(v3 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
    *&v34 = a1;
    *(&v34 + 1) = a2;
    v35 = *(v3 + 88);
    v36 = *(v3 + 104);
    SharingCircleWildAdvertisementKey.init(key:)();
    sub_10002E98C(v32, v5);
    sub_10002E98C(v18, v6);
    sub_10002E98C(v30, v7);
    sub_10002E98C(v20, v8);
    sub_10002E98C(v21, v9);
    sub_10002E98C(v33, v10);

    sub_100017D5C(v31, *(&v31 + 1));

    sub_10002E98C(v36, *(&v36 + 1));
    sub_10002E98C(a1, a2);
    v47 = v34;
    v48 = v35;
    v49 = v36;
    v43 = v30;
    v44 = v31;
    v45 = v32;
    v46 = v33;
    v39 = v26;
    v40 = v27;
    v41 = v28;
    v42 = v29;
    v37 = v24;
    v38 = v25;
  }

  v12 = v48;
  *(a3 + 160) = v47;
  *(a3 + 176) = v12;
  *(a3 + 192) = v49;
  v13 = v44;
  *(a3 + 96) = v43;
  *(a3 + 112) = v13;
  v14 = v46;
  *(a3 + 128) = v45;
  *(a3 + 144) = v14;
  v15 = v40;
  *(a3 + 32) = v39;
  *(a3 + 48) = v15;
  v16 = v42;
  *(a3 + 64) = v41;
  *(a3 + 80) = v16;
  result = v38;
  *a3 = v37;
  *(a3 + 16) = result;
  return result;
}

void *sub_100F53C90@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v109 = a3;
  v110 = a4;
  v107 = a1;
  v108 = a2;
  v9 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v79 - v10;
  v12 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v6[6];
  if (v16 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v17 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS1 + 8);
  if (v17 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v18 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid + 8);
  if (v18 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v19 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId + 8);
  if (v19 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v20 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber + 8);
  if (v20 >> 60 == 15)
  {
    goto LABEL_11;
  }

  if (*(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId + 1))
  {
    goto LABEL_11;
  }

  v21 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1 + 8);
  if (v21 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v22 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_acrtCerts + 8);
  if (v22 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v103 = v6[5];
  v104 = v19;
  v97 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS1);
  v99 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryEcid);
  v100 = v22;
  v98 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryChipId);
  v23 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  LODWORD(v91) = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  v96 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_seedK1);
  v24 = *(v6 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_acrtCerts);
  v94 = v6;
  v95 = v24;
  v105 = v18;
  v106 = v23;
  *&v114[0] = v23;
  *(&v114[0] + 1) = v20;
  v25 = v20;
  v101 = v21;
  sub_10002E98C(v23, v20);
  v102 = v25;
  sub_10002E98C(v106, v25);
  sub_10002E98C(v103, v16);
  sub_10002E98C(v97, v17);
  sub_10002E98C(v99, v105);
  sub_10002E98C(v98, v104);
  sub_10002E98C(v96, v101);
  sub_10002E98C(v95, v100);
  sub_1000E0A3C();
  if ((DataProtocol.isNull.getter() & 1) == 0)
  {
    v30 = v106;
    v31 = Data.trimmed.getter();
    v89 = v32;
    v90 = v31;
    sub_100006654(v30, v102);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    v34 = sub_1000076D4(v33, qword_10177C418);
    sub_10002E98C(v109, v110);
    v88 = v34;
    v93 = Logger.logObject.getter();
    LODWORD(v34) = static os_log_type_t.default.getter();
    sub_100006654(v109, v110);
    LODWORD(v92) = v34;
    v35 = v34;
    v36 = v93;
    if (os_log_type_enabled(v93, v35))
    {
      v37 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v114[0] = v86;
      v87 = v37;
      *v37 = 136446210;
      if (v110 >> 60 == 15)
      {
        v38 = 0;
        v39 = 0xE000000000000000;
      }

      else
      {
        v38 = Data.hexString.getter();
        v39 = v41;
      }

      v85 = sub_1000136BC(v38, v39, v114);

      v42 = v87;
      *(v87 + 1) = v85;
      _os_log_impl(&_mh_execute_header, v93, v92, "Pairing token: %{public}s", v42, 0xCu);
      sub_100007BAC(v86);
    }

    else
    {
    }

    v92 = sub_100F524A0(a5);

    v93 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    LODWORD(v88) = v43;
    if (os_log_type_enabled(v93, v43))
    {
      v44 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v114[0] = v86;
      v87 = v44;
      *v44 = 141558275;
      *(v44 + 4) = 1752392040;
      *(v44 + 12) = 2081;
      type metadata accessor for MultipartAccessoryPairingInfo(0);
      sub_100101BAC();
      v45 = Dictionary.description.getter();
      v85 = sub_1000136BC(v45, v46, v114);

      v47 = v87;
      *(v87 + 14) = v85;
      _os_log_impl(&_mh_execute_header, v93, v88, "otherSerialNumbersAndPartIds: %{private,mask.hash}s", v47, 0x16u);
      sub_100007BAC(v86);
    }

    v48 = v94;
    v86 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds;
    *(v94 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbersAndPartIds) = v92;

    if (!*(a5 + 16))
    {
      LODWORD(v93) = 0;
LABEL_33:
      v54 = *(v48 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid + 8);
      v88 = *(v48 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_ecid);
      v55 = *(v48 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId + 8);
      v84 = *(v48 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_chipId);
      v56 = *(v48 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber + 8);
      v82 = *(v48 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serialNumber);
      v87 = *(v48 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons);
      v57 = *(v48 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_otherSerialNumbers);
      v58 = *(v86 + v48);
      v113 = v91;
      v81 = sub_1000198E8();
      v92 = v54;

      v86 = v55;

      v83 = v56;

      v91 = v57;

      v85 = v58;

      v59 = FixedWidthInteger.data.getter();
      v60 = v94;
      v80 = v61;
      v81 = v59;
      sub_100016590(v90, v89);
      v62 = v60[2];
      v63 = v60[3];
      v64 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
      swift_beginAccess();
      sub_1000D2A70(v60 + v64, v11, &qword_101697268, &qword_101394FE0);
      v65 = type metadata accessor for AccessoryProductInfo(0);
      if ((*(*(v65 - 8) + 48))(v11, 1, v65))
      {
        v66 = 0;
        v67 = 0xF000000000000000;
      }

      else
      {
        v68 = &v11[*(v65 + 100)];
        v66 = *v68;
        v67 = v68[1];
        sub_10002E98C(*v68, v67);
      }

      sub_100017D5C(v62, v63);
      sub_10000B3A8(v11, &qword_101697268, &qword_101394FE0);
      v112[2] = v97;
      v112[3] = v17;
      LOBYTE(v112[6]) = v93;
      *&v69 = v88;
      *(&v69 + 1) = v92;
      *&v70 = v84;
      *(&v70 + 1) = v86;
      v112[11] = v82;
      v112[12] = v83;
      v112[13] = v99;
      v112[14] = v105;
      v112[15] = v98;
      v112[16] = v104;
      v112[17] = v106;
      v112[18] = v102;
      v112[19] = v87;
      v112[21] = v91;
      v112[22] = v85;
      v112[24] = v96;
      v112[25] = v101;
      v112[26] = v95;
      v112[27] = v100;
      v112[28] = v81;
      v112[29] = v80;
      v112[30] = v62;
      v112[31] = v63;
      v112[32] = v103;
      v112[33] = v16;
      v112[34] = v66;
      v71 = v60[11];
      v72 = v60[12];
      v112[35] = v67;
      v112[23] = 0;
      v112[36] = v71;
      v73 = v60[13];
      v74 = v60[14];
      v111 = 0;
      v76 = v107;
      v75 = v108;
      v112[0] = v107;
      v112[1] = v108;
      v78 = v109;
      v77 = v110;
      v112[4] = v109;
      v112[5] = v110;
      *&v112[9] = v70;
      *&v112[7] = v69;
      LOBYTE(v112[20]) = 0;
      v112[37] = v72;
      v112[38] = v73;
      v112[39] = v74;
      SharingCircleWildAdvertisementKey.init(key:)();
      sub_10002E98C(v78, v77);

      sub_10002E98C(v73, v74);
      sub_100017D5C(v76, v75);
      memcpy(v114, v112, sizeof(v114));
      return memcpy(a6, v114, 0x140uLL);
    }

    v49 = sub_100771E30(v90, v89);
    if (v50)
    {
      sub_100F54CEC(*(a5 + 56) + *(v13 + 72) * v49, v15, type metadata accessor for OwnedBeaconGroup.PairingState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v51 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
        v52 = *(v51 + 48);
        sub_100006654(*&v15[*(v51 + 64)], *&v15[*(v51 + 64) + 8]);
        sub_10000B3A8(&v15[v52], &qword_1016A40D0, &unk_10138BE70);
        v53 = type metadata accessor for UUID();
        (*(*(v53 - 8) + 8))(v15, v53);
        LODWORD(v93) = 1;
LABEL_32:
        v48 = v94;
        goto LABEL_33;
      }

      sub_100F54D54(v15, type metadata accessor for OwnedBeaconGroup.PairingState);
    }

    LODWORD(v93) = 0;
    goto LABEL_32;
  }

  v26 = v106;
  v27 = v102;
  sub_100006654(v106, v102);
  sub_100006654(v95, v100);
  sub_100006654(v96, v101);
  sub_100006654(v26, v27);
  sub_100006654(v98, v104);
  sub_100006654(v99, v105);
  sub_100006654(v97, v17);
  sub_100006654(v103, v16);
LABEL_11:
  v28 = static os_log_type_t.error.getter();
  if (qword_1016950C8 != -1)
  {
    v40 = v28;
    swift_once();
    v28 = v40;
  }

  os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, qword_10177C410, "Missing info to generate AirPodsPairingCheckData!", 49, 2, _swiftEmptyArrayStorage);
  sub_100F54C5C(v114);
  return memcpy(a6, v114, 0x140uLL);
}

uint64_t sub_100F54708()
{
  result = Data.init(base64Encoded:options:)();
  qword_1016C1438 = result;
  qword_1016C1440 = v1;
  return result;
}

uint64_t sub_100F54748()
{
  v0 = [objc_opt_self() defaultStore];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 aa_primaryAppleAccount];
    if (v2)
    {
      v3 = v2;
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1000076D4(v4, qword_10177C418);
      v5 = v3;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.debug.getter();

      v8 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
      if (os_log_type_enabled(v6, v7))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v30 = v10;
        *v9 = 136315138;
        v11 = [v5 aa_altDSID];
        if (v11)
        {
          v12 = v11;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          v8 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
        }

        else
        {
          v13 = 0;
          v15 = 0xE000000000000000;
        }

        v22 = sub_1000136BC(v13, v15, &v30);

        *(v9 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v6, v7, "Alt_DSID: %s", v9, 0xCu);
        sub_100007BAC(v10);
      }

      v23 = [v5 v8[156]];
      if (v23)
      {
        v24 = v23;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v21 = v27;
        v20 = v25;
      }

      else
      {

        v20 = 0;
        v21 = 0xE000000000000000;
      }
    }

    else
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000076D4(v16, qword_10177C418);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to obtain Alt_DSID from account. Using device serial number instead to support account signed out.", v19, 2u);
      }

      v20 = sub_100EF9784();
    }

    v28 = sub_10049C498(v20, v21);

    return v28;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double sub_100F54BFC(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_10139AE20;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  return result;
}

double sub_100F54C28(_OWORD *a1)
{
  result = 0.0;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_100F54C5C(_OWORD *a1)
{
  result = 0.0;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_100F54C8C(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_10139AE20;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  return result;
}

double sub_100F54CB8(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_10139AE20;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  return result;
}

uint64_t sub_100F54CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100F54D54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_100F54DB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v4 - 8);
  v93 = &v81 - v5;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v91 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v92 = &v81 - v10;
  v11 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v81 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v94 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MessagingMessageContext(0);
  v18 = *(v17 - 1);
  __chkstk_darwin(v17);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_100F56758(a1) & 1) == 0)
  {

    v23 = 1;
    return (*(v18 + 56))(a2, v23, 1, v17);
  }

  v21 = [a1 toID];
  v88 = v15;
  if (v21)
  {
    v86 = v7;
    v87 = v6;
    v22 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v24 = IDSCopyLocalDeviceUniqueID();
    if (!v24)
    {
      v55 = a2;
      if (qword_101695190 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_1000076D4(v56, qword_10177C4F0);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "Ignoring IDSCopyLocalDeviceUniqueID() failed to return a value!", v59, 2u);
      }

      v23 = 1;
      a2 = v55;
      return (*(v18 + 56))(a2, v23, 1, v17);
    }

    v86 = v7;
    v87 = v6;
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v95 = 0x3A656369766564;
    v96 = 0xE700000000000000;
    v29._countAndFlagsBits = v26;
    v29._object = v28;
    String.append(_:)(v29);
  }

  v89 = v14;
  v90 = v17;
  result = [a1 fromID];
  if (!result)
  {
    __break(1u);
    goto LABEL_39;
  }

  v31 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
  if (!v34)
  {

LABEL_19:

    v23 = 1;
    v17 = v90;
    return (*(v18 + 56))(a2, v23, 1, v17);
  }

  v35 = v32;
  v36 = v33;
  v37 = v34;

  v38 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0();
  if (!v40)
  {

    goto LABEL_19;
  }

  v41 = v40;
  v81 = v39;
  v82 = v38;
  v83 = v36;
  v84 = v35;
  v85 = a2;
  result = [a1 outgoingResponseIdentifier];
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v42 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v44 = v88;
  v43 = v89;
  if ((*(v88 + 48))(v13, 1, v89) == 1)
  {

    sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
    v17 = v90;
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1000076D4(v45, qword_10177C4F0);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "could not convert outgoingResponseIdentifier to UUID!", v48, 2u);
    }

    v23 = 1;
    a2 = v85;
    return (*(v18 + 56))(a2, v23, 1, v17);
  }

  (*(v44 + 32))(v94, v13, v43);
  v17 = v90;
  v49 = &v20[v90[6]];
  v50 = v83;
  *v49 = v84;
  *(v49 + 1) = v50;
  *(v49 + 2) = v37;
  v51 = &v20[v17[7]];
  v52 = v81;
  *v51 = v82;
  *(v51 + 1) = v52;
  *(v51 + 2) = v41;
  v53 = [a1 incomingResponseIdentifier];
  if (v53)
  {
    v54 = v53;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = v89;
    UUID.init(uuidString:)();
  }

  else
  {
    (*(v44 + 56))(v20, 1, 1, v43);
  }

  v60 = v44;
  (*(v44 + 16))(&v20[v17[5]], v94, v43);
  result = [a1 serviceIdentifier];
  if (result)
  {
    v61 = result;

    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    v65 = &v20[v17[8]];
    *v65 = v62;
    v65[1] = v64;
    v20[v17[9]] = [a1 expectsPeerResponse];
    v20[v17[10]] = [a1 fromServerStorage];
    v66 = [a1 serverReceivedTime];
    if (v66)
    {
      v67 = v91;
      v68 = v66;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v70 = v86;
      v69 = v87;
      v71 = *(v86 + 32);
      v72 = v93;
      v71(v93, v67, v87);
      (*(v70 + 56))(v72, 0, 1, v69);
      v73 = v92;
      v71(v92, v72, v69);
      v60 = v88;
    }

    else
    {
      v70 = v86;
      v69 = v87;
      v74 = v93;
      (*(v86 + 56))(v93, 1, 1, v87);
      v73 = v92;
      static Date.distantPast.getter();
      if ((*(v70 + 48))(v74, 1, v69) != 1)
      {
        sub_10000B3A8(v74, &unk_101696900, &unk_10138B1E0);
      }
    }

    (*(v70 + 32))(&v20[v17[11]], v73, v69);
    v75 = [a1 senderCorrelationIdentifier];
    if (v75)
    {
      v76 = v75;
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;
    }

    else
    {

      v77 = 0;
      v79 = 0xE000000000000000;
    }

    (*(v60 + 8))(v94, v89);
    v80 = &v20[v17[12]];
    *v80 = v77;
    v80[1] = v79;
    a2 = v85;
    sub_100476E9C(v20, v85);
    v23 = 0;
    return (*(v18 + 56))(a2, v23, 1, v17);
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t MessagingMessageContext.outgoingResponseIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessagingMessageContext(0) + 20);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MessagingMessageContext(uint64_t a1)
{
  result = qword_1016C14B8;
  if (!qword_1016C14B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessagingMessageContext.fromID.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessagingMessageContext(0) + 24));

  return v1;
}

uint64_t MessagingMessageContext.toID.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessagingMessageContext(0) + 28));

  return v1;
}

uint64_t MessagingMessageContext.serviceIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessagingMessageContext(0) + 32));

  return v1;
}

uint64_t MessagingMessageContext.serverReceivedTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessagingMessageContext(0) + 44);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MessagingMessageContext.senderCorrelationIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for MessagingMessageContext(0) + 48));

  return v1;
}

uint64_t sub_100F559A0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x44496D6F7266;
    if (a1 != 2)
    {
      v5 = 1145663348;
    }

    if (a1 <= 1u)
    {
      return 0xD00000000000001ALL;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0xD00000000000001BLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100F55AC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100F569F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100F55AEC(uint64_t a1)
{
  v2 = sub_100F56340();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F55B28(uint64_t a1)
{
  v2 = sub_100F56340();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MessagingMessageContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for Date();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v41 = &v35 - v9;
  v10 = sub_1000BC4D4(&qword_1016C1448, &qword_1013F4C48);
  v42 = *(v10 - 8);
  v43 = v10;
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for MessagingMessageContext(0);
  __chkstk_darwin(v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100F56340();
  v44 = v12;
  v16 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return sub_100007BAC(a1);
  }

  v45 = a1;
  LOBYTE(v46) = 0;
  sub_100F5650C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v17 = v41;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10012C154(v17, v15);
  LOBYTE(v46) = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v35 = v5;
  (*(v40 + 32))(&v15[v13[5]], v7, v5);
  v49 = 2;
  sub_100157E1C();
  v41 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v47;
  v19 = v48;
  v20 = &v15[v13[6]];
  *v20 = v46;
  *(v20 + 1) = v18;
  *(v20 + 2) = v19;
  v49 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v47;
  v22 = v48;
  v23 = &v15[v13[7]];
  *v23 = v46;
  *(v23 + 1) = v21;
  *(v23 + 2) = v22;
  LOBYTE(v46) = 4;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = v45;
  v26 = &v15[v13[8]];
  *v26 = v24;
  v26[1] = v27;
  LOBYTE(v46) = 5;
  v15[v13[9]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v46) = 6;
  v15[v13[10]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v46) = 7;
  sub_100F5650C(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v28 = v37;
  v29 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v38 + 32))(&v15[v13[11]], v28, v29);
  LOBYTE(v46) = 8;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v31;
  (*(v42 + 8))(v44, v43);
  v33 = &v15[v13[12]];
  *v33 = v30;
  v33[1] = v32;
  sub_100D2577C(v15, v36);
  sub_100007BAC(v25);
  return sub_100476F00(v15);
}

unint64_t sub_100F56340()
{
  result = qword_1016C1450;
  if (!qword_1016C1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1450);
  }

  return result;
}

uint64_t MessagingMessageContext.description.getter()
{
  _StringGuts.grow(_:)(33);

  v1 = type metadata accessor for MessagingMessageContext(0);
  sub_100F5650C(&qword_1016C1458, type metadata accessor for MessagingMessageContext, &protocol conformance descriptor for MessagingMessageContext);
  v2._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x3A44496D6F726620;
  v3._object = 0xE800000000000000;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + v1[6] + 8));
  v4._countAndFlagsBits = 0x3A44496F7420;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + v1[7] + 8));
  v5._countAndFlagsBits = 0x6563697672657320;
  v5._object = 0xE90000000000003ALL;
  String.append(_:)(v5);
  String.append(_:)(*(v0 + v1[8]));
  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 60;
}

uint64_t sub_100F5650C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100F56580(uint64_t a1)
{
  sub_100395648(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100F56654()
{
  result = qword_1016C1510;
  if (!qword_1016C1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1510);
  }

  return result;
}

unint64_t sub_100F566AC()
{
  result = qword_1016C1518;
  if (!qword_1016C1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1518);
  }

  return result;
}

unint64_t sub_100F56704()
{
  result = qword_1016C1520;
  if (!qword_1016C1520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C1520);
  }

  return result;
}

uint64_t sub_100F56758(void *a1)
{
  v2 = [a1 fromID];
  if (!v2)
  {
    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177C4F0);
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_15;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    v13 = "Ignoring IDSMessageContext without a fromID: %@";
    goto LABEL_14;
  }

  v3 = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4._countAndFlagsBits = 0x3A656369766564;
  v4._object = 0xE700000000000000;
  LOBYTE(v3) = String.hasPrefix(_:)(v4);

  if ((v3 & 1) == 0)
  {
    v14 = [a1 senderCorrelationIdentifier];
    if (v14)
    {
      v8 = v14;
      v5 = 1;
LABEL_16:

      return v5;
    }

    if (qword_101695190 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177C4F0);
    v16 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v8, v9))
    {
LABEL_15:
      v5 = 0;
      goto LABEL_16;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v16;
    *v11 = v16;
    v17 = v16;
    v13 = "Ignoring IDSMessageContext without a correlationIdentifier: %@";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v8, v9, v13, v10, 0xCu);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_100F569F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x80000001013749A0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001013749C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D6F7266 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1145663348 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001013749E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101374A00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101374A20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101374A40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000101374A60 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_100F56CDC(uint64_t a1)
{
  *(a1 + 8) = sub_100EDEA48();
  result = sub_10064D670();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100F56D0C(uint64_t a1, unsigned __int8 a2)
{
  v2[4] = a1;
  v4 = type metadata accessor for UUID();
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  if (a2 >= 2u)
  {
    v7 = swift_task_alloc();
    if (a2 == 2)
    {
      v2[9] = v7;
      *v7 = v2;
      v8 = sub_100F56EA4;
    }

    else
    {
      v2[13] = v7;
      *v7 = v2;
      v8 = sub_100F571D0;
    }

    v7[1] = v8;

    return daemon.getter();
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_100F56EA4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v6 = sub_100F80970(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100F80970(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher, &unk_1013BF878);
  *v3 = v9;
  v3[1] = sub_100F57080;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F57080(uint64_t a1)
{
  *(*v2 + 96) = a1;

  if (v1)
  {

    v3 = sub_100F57568;
  }

  else
  {

    v3 = sub_100F577BC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F571D0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v6 = sub_100F80970(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100F80970(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher, &unk_1013BF878);
  *v3 = v9;
  v3[1] = sub_100F573AC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F573AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    return _swift_task_switch(sub_100F581B8, 0, 0);
  }

  else
  {

    v4[18] = a1;
    v6 = swift_task_alloc();
    v4[19] = v6;
    *v6 = v5;
    v6[1] = sub_100F5804C;
    v7 = v4[4];

    return sub_100857BA4(v7);
  }
}

uint64_t sub_100F57568()
{
  v21 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v20);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Done publishing initial location for beacon %{private,mask.hash}s.", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100F577BC()
{
  v1 = *(v0 + 96);

  return _swift_task_switch(sub_100F5782C, v1, 0);
}

uint64_t sub_100F5782C()
{
  v0[2] = 0xD000000000000013;
  v0[3] = 0x800000010134CBD0;
  v4 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_100F5793C;
  v2 = v0[12];

  return (v4)(v0 + 2, &unk_1013F5038, v2, sub_100853598, 0);
}

uint64_t sub_100F5793C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = sub_100F57CEC;
  }

  else
  {

    v4 = sub_100F57A84;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F57A84()
{
  v21 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v1 + 16))(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v13 = v20;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v9 + 8))(v10, v11);
    v17 = sub_1000136BC(v14, v16, &v20);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Done publishing initial location for beacon %{private,mask.hash}s.", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100F57CEC()
{

  return _swift_task_switch(sub_100F57D54, 0, 0);
}

uint64_t sub_100F57D54()
{
  v23 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v3 + 16))(v1, v4, v2);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[8];
  v11 = v0[5];
  v10 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000136BC(v13, v15, &v22);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v17;
    *v20 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failure on initial location publish for beacon %{private,mask.hash}s, error: %{public}@", v12, 0x20u);
    sub_10000B3A8(v20, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100F5804C()
{

  return _swift_task_switch(sub_100F58148, 0, 0);
}

uint64_t sub_100F58148()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F581B8()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing DelegatedBeaconPayloadPublisher!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100F582DC(uint64_t a1, unsigned __int8 a2)
{
  v2[4] = a1;
  v4 = type metadata accessor for UUID();
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  if (a2 >= 2u)
  {
    v7 = swift_task_alloc();
    if (a2 == 2)
    {
      v2[9] = v7;
      *v7 = v2;
      v8 = sub_100F58474;
    }

    else
    {
      v2[13] = v7;
      *v7 = v2;
      v8 = sub_100F587A0;
    }

    v7[1] = v8;

    return daemon.getter();
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_100F58474(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v6 = sub_100F80970(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100F80970(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher, &unk_1013BF878);
  *v3 = v9;
  v3[1] = sub_100F58650;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F58650(uint64_t a1)
{
  *(*v2 + 96) = a1;

  if (v1)
  {

    v3 = sub_100F80E2C;
  }

  else
  {

    v3 = sub_100F58B38;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F587A0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v6 = sub_100F80970(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100F80970(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher, &unk_1013BF878);
  *v3 = v9;
  v3[1] = sub_100F5897C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F5897C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    return _swift_task_switch(sub_100F80E34, 0, 0);
  }

  else
  {

    v4[18] = a1;
    v6 = swift_task_alloc();
    v4[19] = v6;
    *v6 = v5;
    v6[1] = sub_100F58E68;
    v7 = v4[4];

    return sub_100857BA4(v7);
  }
}

uint64_t sub_100F58B38()
{
  v1 = *(v0 + 96);

  return _swift_task_switch(sub_100F58BA8, v1, 0);
}

uint64_t sub_100F58BA8()
{
  v0[2] = 0xD000000000000013;
  v0[3] = 0x800000010134CBD0;
  v4 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_100F58CB8;
  v2 = v0[12];

  return (v4)(v0 + 2, &unk_10139D750, v2, sub_100853598, 0);
}

uint64_t sub_100F58CB8()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = sub_100F58E00;
  }

  else
  {

    v4 = sub_100F80E30;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F58E00()
{

  return _swift_task_switch(sub_100F80E44, 0, 0);
}

uint64_t sub_100F58E68()
{

  return _swift_task_switch(sub_100F80E48, 0, 0);
}

uint64_t sub_100F58F64(uint64_t a1, unsigned __int8 a2)
{
  v2[4] = a1;
  v4 = type metadata accessor for UUID();
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  if (a2 >= 2u)
  {
    v7 = swift_task_alloc();
    if (a2 == 2)
    {
      v2[9] = v7;
      *v7 = v2;
      v8 = sub_100F590FC;
    }

    else
    {
      v2[13] = v7;
      *v7 = v2;
      v8 = sub_100F587A0;
    }

    v7[1] = v8;

    return daemon.getter();
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_100F590FC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 80) = a1;

  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v6 = sub_100F80970(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100F80970(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher, &unk_1013BF878);
  *v3 = v9;
  v3[1] = sub_100F592D8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100F592D8(uint64_t a1)
{
  *(*v2 + 96) = a1;

  if (v1)
  {

    v3 = sub_100F80E2C;
  }

  else
  {

    v3 = sub_100F59428;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100F59428()
{
  v1 = *(v0 + 96);

  return _swift_task_switch(sub_100F59498, v1, 0);
}

uint64_t sub_100F59498()
{
  v0[2] = 0xD000000000000013;
  v0[3] = 0x800000010134CBD0;
  v4 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_100F58CB8;
  v2 = v0[12];

  return (v4)(v0 + 2, &unk_1013F5028, v2, sub_100853598, 0);
}

void *sub_100F595A8(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_10087D6E4(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_1010F1ED4(v5, v6);
LABEL_10:

  return sub_1006146AC(a1, v2);
}

uint64_t sub_100F5969C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 144) = a3;
  *(v4 + 48) = a1;
  v5 = type metadata accessor for OwnerSharingCircle(0);
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100F59764, v3, 0);
}

uint64_t sub_100F59764()
{
  if (*(v0 + 144) - 1 >= 2)
  {
    if (*(v0 + 144))
    {
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000076D4(v5, qword_10177A560);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "For delegates shares, we shouldn't reach share flow in ShareCreateUseCase.", v8, 2u);
      }

      type metadata accessor for SPBeaconSharingError(0);
      *(v0 + 24) = 8;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100F80970(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      v9 = *(v0 + 8);

      return v9();
    }

    else
    {
      v4 = *(*(v0 + 64) + 160);
      *(v0 + 96) = v4;

      return _swift_task_switch(sub_100F599C0, v4, 0);
    }
  }

  else
  {
    v1 = *(v0 + 56);

    v2 = *(v0 + 8);

    return v2(v1);
  }
}

uint64_t sub_100F599C0()
{

  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_100F59AAC;
  v3 = *(v0 + 96);

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_100111F4C, v3, v2);
}

uint64_t sub_100F59AAC()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_100F59BC4, v1, 0);
}

uint64_t sub_100F59BC4()
{
  v1 = v0[8];
  v0[14] = v0[4];
  return _swift_task_switch(sub_100F59BE8, v1, 0);
}

uint64_t sub_100F59BE8()
{
  v1 = v0[14];
  v2 = v0[6];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_10013CF58(sub_100986528, v3, v1);

  v5 = v4[2];
  if (v5)
  {
    v6 = v0[10];
    v7 = v0[11];
    v8 = *(v0[9] + 32);
    v9 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v10 = *(v6 + 72);
    do
    {
      v11 = v0[11];
      sub_100F80550(v9, v11, type metadata accessor for OwnerSharingCircle);
      v12 = *(v7 + v8);

      sub_100F806B4(v11, type metadata accessor for OwnerSharingCircle);
      sub_100398F60(v12);
      v9 += v10;
      --v5;
    }

    while (v5);
  }

  v13 = sub_10000954C(_swiftEmptyArrayStorage);
  v0[15] = v13;

  v0[5] = v13;
  v14 = swift_task_alloc();
  v0[16] = v14;
  v15 = sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
  v16 = sub_100F80B0C();
  v17 = sub_1000041A4(&qword_1016AF940, &qword_1016AF8E0, &qword_101393130, &protocol conformance descriptor for Set<A>);
  *v14 = v0;
  v14[1] = sub_100F59E34;
  v18 = v0[8];

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013F5010, v18, v15, v16, v17);
}

uint64_t sub_100F59E34(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    v6 = *(v4 + 64);

    *(v4 + 136) = a1;

    return _swift_task_switch(sub_100F59F7C, v6, 0);
  }
}

uint64_t sub_100F59F7C()
{
  v1 = v0[17];
  v2 = v0[7];

  v3 = sub_10112A6B4(v1);

  v4 = sub_100F595A8(v3, v2);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_100F5A028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for OwnerPeerTrust(0);
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_100F5A18C, 0, 0);
}

uint64_t sub_100F5A18C()
{
  v1 = *(*(v0 + 32) + 160);
  *(v0 + 112) = v1;
  return _swift_task_switch(sub_100F5A1B0, v1, 0);
}

uint64_t sub_100F5A1B0()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  (*(v4 + 16))(v2, v0[3], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[15] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_100F5A310;
  v9 = v0[9];
  v8 = v0[10];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100F80E68, v6, v9);
}

uint64_t sub_100F5A310()
{

  return _swift_task_switch(sub_100F5A428, 0, 0);
}

uint64_t sub_100F5A428()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  if ((*(*(v0 + 96) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_101697798, &unk_10138C4F0);
    **(v0 + 16) = 0;

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 104);
    sub_100F80620(v2, v5, type metadata accessor for OwnerPeerTrust);
    v6 = *(v1 + 28);
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_100F5A5A4;

    return sub_100E8BEF8(v5 + v6);
  }
}

uint64_t sub_100F5A5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;

  if (v3)
  {

    v6 = sub_100F5A7B8;
  }

  else
  {
    v6 = sub_100F5A6C4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100F5A6C4(__n128 a1)
{
  if (*(v1 + 160))
  {
    v2 = *(v1 + 104);
    v3 = sub_100EB3708(*(v1 + 144), *(v1 + 152), *(v1 + 160));

    sub_100F806B4(v2, type metadata accessor for OwnerPeerTrust);
  }

  else
  {
    sub_100F806B4(*(v1 + 104), type metadata accessor for OwnerPeerTrust);
    v3 = 0;
  }

  **(v1 + 16) = v3;

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_100F5A7B8(__n128 a1)
{
  sub_100F806B4(*(v1 + 104), type metadata accessor for OwnerPeerTrust);
  **(v1 + 16) = 0;

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100F5A858(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 232) = a2;
  *(v4 + 240) = v3;
  *(v4 + 772) = a3;
  *(v4 + 224) = a1;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  *(v4 + 248) = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  *(v4 + 256) = v5;
  *(v4 + 264) = *(v5 - 8);
  *(v4 + 272) = swift_task_alloc();
  v6 = type metadata accessor for OwnerSharingCircle(0);
  *(v4 + 280) = v6;
  *(v4 + 288) = *(v6 - 8);
  *(v4 + 296) = swift_task_alloc();
  type metadata accessor for ShareCreateUseCase.ShareCreationData(0);
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_100F5A9EC, v3, 0);
}

uint64_t sub_100F5A9EC()
{
  if (*(v0 + 772) == 2 && (sub_100E8F8C0() & 1) != 0)
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177A560);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failure on share create by underage account. Operation is not allowed.", v4, 2u);
    }

    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 216) = 8;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100F80970(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 320) = v7;
    *v7 = v0;
    v7[1] = sub_100F5AC4C;
    v8 = *(v0 + 232);
    v9 = *(v0 + 224);
    v10 = *(v0 + 772);

    return sub_100F5969C(v9, v8, v10);
  }
}

uint64_t sub_100F5AC4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 328) = a1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    *(v4 + 336) = v8;
    *v8 = v5;
    v8[1] = sub_100F5AE14;
    v9 = *(v4 + 304);
    v10 = *(v4 + 224);
    v11 = *(v4 + 772);

    return sub_100F5EC88(v9, v10, a1, v11);
  }
}

uint64_t sub_100F5AE14()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 240);

  if (v0)
  {
    v4 = sub_100F5C710;
  }

  else
  {
    v4 = sub_100F5AF5C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F5AF5C()
{
  sub_100F80620(v0[38], v0[39], type metadata accessor for ShareCreateUseCase.ShareCreationData);
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_100F5B010;
  v2 = v0[39];

  return sub_100F61B98(v2);
}

uint64_t sub_100F5B010()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_100F5D020;
  }

  else
  {
    v4 = sub_100F5B13C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F5B13C()
{
  v1 = *(v0 + 240);
  v2 = *(*(v0 + 312) + 24);
  *(v0 + 368) = v2;
  v8 = *(v1 + 136);
  v3 = *(v1 + 136);
  v4 = sub_1000035D0((v1 + 112), v3);
  *(v0 + 40) = v8;
  v5 = sub_1000280DC((v0 + 16));
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  v6 = swift_task_alloc();
  *(v0 + 376) = v6;
  *v6 = v0;
  v6[1] = sub_100F5B264;

  return sub_10129BC54(v2, v1 + 248, v0 + 16);
}

uint64_t sub_100F5B264()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = sub_100F5D8F4;
  }

  else
  {
    v5 = *(v2 + 240);
    sub_100007BAC((v2 + 16));
    v4 = sub_100F5B38C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F5B38C()
{
  if (!*(v0 + 772))
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v2 = String._bridgeToObjectiveC()();
    [v1 setBool:1 forKey:v2];
  }

  v3 = *(*(v0 + 312) + 16);
  *(v0 + 392) = v3;
  v4 = *(v3 + 16);
  *(v0 + 400) = v4;
  if (v4)
  {
    v5 = *(v0 + 288);
    v6 = *(v0 + 296);
    v8 = *(v0 + 272);
    v7 = *(v0 + 280);
    v9 = *(v7 + 20);
    *(v0 + 760) = v9;
    v10 = *(v7 + 28);
    *(v0 + 764) = v10;
    LODWORD(v7) = *(v5 + 80);
    *(v0 + 768) = v7;
    *(v0 + 408) = *(v5 + 72);
    *(v0 + 416) = 0;
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    sub_100F80550(v3 + ((v7 + 32) & ~v7), v6, type metadata accessor for OwnerSharingCircle);
    (*(v12 + 16))(v8, v6 + v9, v11);
    LOBYTE(v8) = *(v6 + v10);
    sub_100F806B4(v6, type metadata accessor for OwnerSharingCircle);
    *(v0 + 773) = 0x4000201u >> (8 * v8);
    v13 = *(v0 + 240);
    v14 = v13[17];
    v15 = v13[19];
    v16 = sub_1000035D0(v13 + 14, v14);
    *(v0 + 80) = v14;
    *(v0 + 88) = v15;
    v17 = sub_1000280DC((v0 + 56));
    (*(*(v14 - 8) + 16))(v17, v16, v14);
    v18 = sub_100F5B59C;
  }

  else
  {
    *(v0 + 440) = *(*(v0 + 240) + 160);
    v18 = sub_100F5BD20;
  }

  return _swift_task_switch(v18, 0, 0);
}

uint64_t sub_100F5B59C()
{
  sub_1000035D0((v0 + 56), *(v0 + 80));
  v1 = swift_task_alloc();
  *(v0 + 424) = v1;
  *v1 = v0;
  v1[1] = sub_100F5B648;
  v2 = *(v0 + 272);
  v3 = *(v0 + 773);

  return sub_100640C34(v2, v3, 0);
}

uint64_t sub_100F5B648(char a1)
{
  v4 = *v2;

  if (v1)
  {
    *(v4 + 432) = v1;
    v5 = *(v4 + 240);
    (*(*(v4 + 264) + 8))(*(v4 + 272), *(v4 + 256));
    v6 = sub_100F5BA28;
    v7 = v5;
  }

  else
  {
    *(v4 + 774) = a1 & 1;
    v6 = sub_100F5B79C;
    v7 = 0;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100F5B79C()
{
  if (*(v0 + 774) == 1)
  {
    v1 = *(v0 + 240);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    sub_100007BAC((v0 + 56));
    v2 = sub_100F5B890;
  }

  else
  {
    sub_100111BE4();
    v3 = swift_allocError();
    *v4 = 0;
    swift_willThrow();
    *(v0 + 432) = v3;
    v1 = *(v0 + 240);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    v2 = sub_100F5BA28;
  }

  return _swift_task_switch(v2, v1, 0);
}

uint64_t sub_100F5B890()
{
  v1 = *(v0 + 416) + 1;
  if (v1 == *(v0 + 400))
  {
    *(v0 + 440) = *(*(v0 + 240) + 160);
    v2 = sub_100F5BD20;
  }

  else
  {
    *(v0 + 416) = v1;
    v3 = *(v0 + 764);
    v4 = *(v0 + 760);
    v5 = *(v0 + 296);
    v7 = *(v0 + 264);
    v6 = *(v0 + 272);
    v8 = *(v0 + 256);
    sub_100F80550(*(v0 + 392) + ((*(v0 + 768) + 32) & ~*(v0 + 768)) + *(v0 + 408) * v1, v5, type metadata accessor for OwnerSharingCircle);
    (*(v7 + 16))(v6, v5 + v4, v8);
    LOBYTE(v6) = *(v5 + v3);
    sub_100F806B4(v5, type metadata accessor for OwnerSharingCircle);
    *(v0 + 773) = 0x4000201u >> (8 * v6);
    v9 = *(v0 + 240);
    v10 = v9[17];
    v11 = v9[19];
    v12 = sub_1000035D0(v9 + 14, v10);
    *(v0 + 80) = v10;
    *(v0 + 88) = v11;
    v13 = sub_1000280DC((v0 + 56));
    (*(*(v10 - 8) + 16))(v13, v12, v10);
    v2 = sub_100F5B59C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F5BA28()
{
  v24 = v0;
  sub_100007BAC((v0 + 56));
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_1000136BC(v6, v7, &v23);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure on share create, server share deletion: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }

  v9 = *(v0 + 416) + 1;
  if (v9 == *(v0 + 400))
  {
    *(v0 + 440) = *(*(v0 + 240) + 160);
    v10 = sub_100F5BD20;
  }

  else
  {
    *(v0 + 416) = v9;
    v11 = *(v0 + 764);
    v12 = *(v0 + 760);
    v13 = *(v0 + 296);
    v15 = *(v0 + 264);
    v14 = *(v0 + 272);
    v16 = *(v0 + 256);
    sub_100F80550(*(v0 + 392) + ((*(v0 + 768) + 32) & ~*(v0 + 768)) + *(v0 + 408) * v9, v13, type metadata accessor for OwnerSharingCircle);
    (*(v15 + 16))(v14, v13 + v12, v16);
    LOBYTE(v14) = *(v13 + v11);
    sub_100F806B4(v13, type metadata accessor for OwnerSharingCircle);
    *(v0 + 773) = 0x4000201u >> (8 * v14);
    v17 = *(v0 + 240);
    v18 = v17[17];
    v19 = v17[19];
    v20 = sub_1000035D0(v17 + 14, v18);
    *(v0 + 80) = v18;
    *(v0 + 88) = v19;
    v21 = sub_1000280DC((v0 + 56));
    (*(*(v18 - 8) + 16))(v21, v20, v18);
    v10 = sub_100F5B59C;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100F5BD20()
{
  v1 = v0[30];
  (*(v0[33] + 56))(v0[31], 1, 1, v0[32]);
  v2 = swift_task_alloc();
  v0[56] = v2;
  *v2 = v0;
  v2[1] = sub_100F5BDFC;
  v3 = v0[55];
  v4 = v0[46];
  v5 = v0[31];

  return sub_1012A1ABC(v4, v5, v3, v1 + 168, v1 + 208);
}

uint64_t sub_100F5BDFC()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *v1;

  v5 = *(v2 + 248);
  if (v0)
  {

    sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);

    return _swift_task_switch(sub_100F5BFE0, 0, 0);
  }

  else
  {
    sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
    v6 = swift_task_alloc();
    *(v3 + 456) = v6;
    *v6 = v4;
    v6[1] = sub_100F5C08C;
    v7 = *(v3 + 772);
    v8 = *(v3 + 224);

    return sub_100F582DC(v8, v7);
  }
}

uint64_t sub_100F5BFE0()
{
  v1 = swift_task_alloc();
  *(v0 + 456) = v1;
  *v1 = v0;
  v1[1] = sub_100F5C08C;
  v2 = *(v0 + 224);
  v3 = *(v0 + 772);

  return sub_100F582DC(v2, v3);
}

uint64_t sub_100F5C08C()
{
  v1 = *(*v0 + 240);

  return _swift_task_switch(sub_100F5C19C, v1, 0);
}

uint64_t sub_100F5C19C()
{
  v8 = v0;
  v1 = *(*(v0 + 240) + 384);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1003CC318();
    v4 = sub_1003A97DC(&v7, v3 + 4, v2, v1);
    v5 = v7;

    sub_1000128F8(v5);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  *(v0 + 464) = v3;

  return _swift_task_switch(sub_100F5C298, 0, 0);
}

uint64_t sub_100F5C298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[58];
  if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    v5 = *(v4 + 16);
    v3[59] = v5;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:
    v10 = v3[30];

    v5 = sub_100F5C3F0;
    a2 = v10;
    a3 = 0;

    return _swift_task_switch(v5, a2, a3);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  v3[59] = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    return _swift_task_switch(v5, a2, a3);
  }

  v6 = v3[58];
  v3[60] = 0;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v3[61] = v7;
  type metadata accessor for AnalyticsPublisher();
  v3[62] = swift_allocObject();
  swift_defaultActor_initialize();
  v8 = swift_task_alloc();
  v3[63] = v8;
  *v8 = v3;
  v8[1] = sub_100F5C4B0;

  return sub_101163F78(v7);
}

uint64_t sub_100F5C3F0(__n128 a1)
{
  sub_100F806B4(*(v1 + 312), type metadata accessor for ShareCreateUseCase.ShareCreationData);

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100F5C4B0()
{

  return _swift_task_switch(sub_100F5C5C8, 0, 0);
}

uint64_t sub_100F5C5C8()
{
  v1 = v0[60];
  v2 = v0[59];

  if (v1 + 1 == v2)
  {
    v3 = v0[30];

    return _swift_task_switch(sub_100F5C3F0, v3, 0);
  }

  else
  {
    v4 = v0[60] + 1;
    v0[60] = v4;
    v5 = v0[58];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v5 + 8 * v4 + 32);
    }

    v0[61] = v6;
    type metadata accessor for AnalyticsPublisher();
    v0[62] = swift_allocObject();
    swift_defaultActor_initialize();
    v7 = swift_task_alloc();
    v0[63] = v7;
    *v7 = v0;
    v7[1] = sub_100F5C4B0;

    return sub_101163F78(v6);
  }
}

uint64_t sub_100F5C710()
{
  v15 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure on share create, data preparing: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = *(v0 + 240);

  v8 = *(v7 + 384);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_1003CC318();
    v11 = sub_1003A97DC(&v14, v10 + 4, v9, v8);
    v12 = v14;

    sub_1000128F8(v12);
    if (v11 == v9)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_9:
  *(v0 + 512) = v10;
  swift_errorRetain();

  return _swift_task_switch(sub_100F5C938, 0, 0);
}

uint64_t sub_100F5C938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[64];
  if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    v5 = *(v4 + 16);
    v3[65] = v5;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:
    v11 = v3[30];

    v5 = sub_100F5CAA0;
    a2 = v11;
    a3 = 0;

    return _swift_task_switch(v5, a2, a3);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  v3[65] = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    return _swift_task_switch(v5, a2, a3);
  }

  v6 = v3[64];
  v3[66] = 0;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v3[67] = v7;
  swift_errorRetain();
  v8 = swift_task_alloc();
  v3[68] = v8;
  *v8 = v3;
  v8[1] = sub_100F5CBD8;
  v9 = v3[43];

  return sub_10116BDD0(v7, v9);
}

uint64_t sub_100F5CAA0()
{
  *(v0 + 168) = *(v0 + 344);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  type metadata accessor for SPBeaconSharingError(0);
  if (swift_dynamicCast())
  {

    swift_willThrow();
  }

  else
  {
    sub_1001118C8();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100F5CBD8()
{

  if (v0)
  {

    v1 = sub_100F80E4C;
  }

  else
  {
    v1 = sub_100F5CCF0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100F5CCF0()
{

  type metadata accessor for AnalyticsPublisher();
  v0[69] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[70] = v1;
  *v1 = v0;
  v1[1] = sub_100F5CDAC;
  v2 = v0[67];

  return sub_101163F78(v2);
}

uint64_t sub_100F5CDAC()
{

  return _swift_task_switch(sub_100F5CEC4, 0, 0);
}

uint64_t sub_100F5CEC4()
{
  v1 = v0[66];
  v2 = v0[65];

  if (v1 + 1 == v2)
  {
    v3 = v0[30];

    return _swift_task_switch(sub_100F5CAA0, v3, 0);
  }

  else
  {
    v4 = v0[66] + 1;
    v0[66] = v4;
    v5 = v0[64];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v5 + 8 * v4 + 32);
    }

    v0[67] = v6;
    swift_errorRetain();
    v7 = swift_task_alloc();
    v0[68] = v7;
    *v7 = v0;
    v7[1] = sub_100F5CBD8;
    v8 = v0[43];

    return sub_10116BDD0(v6, v8);
  }
}

uint64_t sub_100F5D020()
{
  v15 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failure on share create, iCloud data update: %{public}@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = *(v0 + 240);

  v8 = *(v7 + 384);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_1003CC318();
    v11 = sub_1003A97DC(&v14, v10 + 4, v9, v8);
    v12 = v14;

    sub_1000128F8(v12);
    if (v11 == v9)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_9:
  *(v0 + 568) = v10;
  swift_errorRetain();

  return _swift_task_switch(sub_100F5D248, 0, 0);
}

uint64_t sub_100F5D248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[71];
  if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    v5 = *(v4 + 16);
    v3[72] = v5;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:
    v11 = v3[30];

    v5 = sub_100F5D3B0;
    a2 = v11;
    a3 = 0;

    return _swift_task_switch(v5, a2, a3);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  v3[72] = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    return _swift_task_switch(v5, a2, a3);
  }

  v6 = v3[71];
  v3[73] = 0;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v3[74] = v7;
  swift_errorRetain();
  v8 = swift_task_alloc();
  v3[75] = v8;
  *v8 = v3;
  v8[1] = sub_100F5D4AC;
  v9 = v3[45];

  return sub_10116BDD0(v7, v9);
}

uint64_t sub_100F5D3B0()
{
  v1 = *(v0 + 312);
  sub_1001118C8();
  swift_allocError();
  *v2 = 1;
  swift_willThrow();

  sub_100F806B4(v1, type metadata accessor for ShareCreateUseCase.ShareCreationData);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100F5D4AC()
{

  if (v0)
  {

    v1 = sub_100F80E50;
  }

  else
  {
    v1 = sub_100F5D5C4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100F5D5C4()
{

  type metadata accessor for AnalyticsPublisher();
  v0[76] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[77] = v1;
  *v1 = v0;
  v1[1] = sub_100F5D680;
  v2 = v0[74];

  return sub_101163F78(v2);
}

uint64_t sub_100F5D680()
{

  return _swift_task_switch(sub_100F5D798, 0, 0);
}

uint64_t sub_100F5D798()
{
  v1 = v0[73];
  v2 = v0[72];

  if (v1 + 1 == v2)
  {
    v3 = v0[30];

    return _swift_task_switch(sub_100F5D3B0, v3, 0);
  }

  else
  {
    v4 = v0[73] + 1;
    v0[73] = v4;
    v5 = v0[71];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v5 + 8 * v4 + 32);
    }

    v0[74] = v6;
    swift_errorRetain();
    v7 = swift_task_alloc();
    v0[75] = v7;
    *v7 = v0;
    v7[1] = sub_100F5D4AC;
    v8 = v0[45];

    return sub_10116BDD0(v6, v8);
  }
}

uint64_t sub_100F5D8F4()
{
  v14 = v0;
  v1 = *(v0 + 772);
  sub_100007BAC((v0 + 16));
  if (!v1)
  {
    sub_1012AA2A0(*(v0 + 384));
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 624) = sub_1000076D4(v2, qword_10177A560);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1000136BC(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure on share create, server share creation: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v10 = swift_task_alloc();
  *(v0 + 632) = v10;
  *v10 = v0;
  v10[1] = sub_100F5DAF8;
  v11 = *(v0 + 312);

  return sub_100F63884(v11);
}

uint64_t sub_100F5DAF8()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  v3 = *(v2 + 240);
  if (v0)
  {
    v4 = sub_100F5E3D4;
  }

  else
  {
    v4 = sub_100F5DC24;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F5DC24()
{
  v8 = v0;
  v1 = *(*(v0 + 240) + 384);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1003CC318();
    v4 = sub_1003A97DC(&v7, v3 + 4, v2, v1);
    v5 = v7;

    sub_1000128F8(v5);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  *(v0 + 648) = v3;
  swift_errorRetain();

  return _swift_task_switch(sub_100F5DD28, 0, 0);
}

uint64_t sub_100F5DD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[81];
  if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    v5 = *(v4 + 16);
    v3[82] = v5;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:
    v11 = v3[30];

    v5 = sub_100F5DE90;
    a2 = v11;
    a3 = 0;

    return _swift_task_switch(v5, a2, a3);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  v3[82] = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    return _swift_task_switch(v5, a2, a3);
  }

  v6 = v3[81];
  v3[83] = 0;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v3[84] = v7;
  swift_errorRetain();
  v8 = swift_task_alloc();
  v3[85] = v8;
  *v8 = v3;
  v8[1] = sub_100F5DF8C;
  v9 = v3[48];

  return sub_10116BDD0(v7, v9);
}

uint64_t sub_100F5DE90()
{
  v1 = *(v0 + 312);
  sub_1001118C8();
  swift_allocError();
  *v2 = 2;
  swift_willThrow();

  sub_100F806B4(v1, type metadata accessor for ShareCreateUseCase.ShareCreationData);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100F5DF8C()
{

  if (v0)
  {

    v1 = sub_100F80E54;
  }

  else
  {
    v1 = sub_100F5E0A4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100F5E0A4()
{

  type metadata accessor for AnalyticsPublisher();
  v0[86] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[87] = v1;
  *v1 = v0;
  v1[1] = sub_100F5E160;
  v2 = v0[84];

  return sub_101163F78(v2);
}

uint64_t sub_100F5E160()
{

  return _swift_task_switch(sub_100F5E278, 0, 0);
}

uint64_t sub_100F5E278()
{
  v1 = v0[83];
  v2 = v0[82];

  if (v1 + 1 == v2)
  {
    v3 = v0[30];

    return _swift_task_switch(sub_100F5DE90, v3, 0);
  }

  else
  {
    v4 = v0[83] + 1;
    v0[83] = v4;
    v5 = v0[81];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v5 + 8 * v4 + 32);
    }

    v0[84] = v6;
    swift_errorRetain();
    v7 = swift_task_alloc();
    v0[85] = v7;
    *v7 = v0;
    v7[1] = sub_100F5DF8C;
    v8 = v0[48];

    return sub_10116BDD0(v6, v8);
  }
}

uint64_t sub_100F5E3D4()
{
  v15 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v14 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1000136BC(v5, v6, &v14);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure on share create, iCloud data rollback on share creation failure: %s", v3, 0xCu);
    sub_100007BAC(v4);
  }

  v8 = *(*(v0 + 240) + 384);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_1003CC318();
    v11 = sub_1003A97DC(&v14, v10 + 4, v9, v8);
    v12 = v14;

    sub_1000128F8(v12);
    if (v11 == v9)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_7:
  *(v0 + 704) = v10;
  swift_errorRetain();

  return _swift_task_switch(sub_100F5E5CC, 0, 0);
}

uint64_t sub_100F5E5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[88];
  if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    v5 = *(v4 + 16);
    v3[89] = v5;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:
    v11 = v3[30];

    v5 = sub_100F5E734;
    a2 = v11;
    a3 = 0;

    return _swift_task_switch(v5, a2, a3);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  v3[89] = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    return _swift_task_switch(v5, a2, a3);
  }

  v6 = v3[88];
  v3[90] = 0;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v3[91] = v7;
  swift_errorRetain();
  v8 = swift_task_alloc();
  v3[92] = v8;
  *v8 = v3;
  v8[1] = sub_100F5E840;
  v9 = v3[80];

  return sub_10116BDD0(v7, v9);
}

uint64_t sub_100F5E734()
{
  v8 = v0;

  v1 = *(*(v0 + 240) + 384);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1003CC318();
    v4 = sub_1003A97DC(&v7, v3 + 4, v2, v1);
    v5 = v7;

    sub_1000128F8(v5);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  *(v0 + 648) = v3;
  swift_errorRetain();

  return _swift_task_switch(sub_100F5DD28, 0, 0);
}

uint64_t sub_100F5E840()
{

  if (v0)
  {

    v1 = sub_100F80E58;
  }

  else
  {
    v1 = sub_100F5E958;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100F5E958()
{

  type metadata accessor for AnalyticsPublisher();
  v0[93] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[94] = v1;
  *v1 = v0;
  v1[1] = sub_100F5EA14;
  v2 = v0[91];

  return sub_101163F78(v2);
}

uint64_t sub_100F5EA14()
{

  return _swift_task_switch(sub_100F5EB2C, 0, 0);
}

uint64_t sub_100F5EB2C()
{
  v1 = v0[90];
  v2 = v0[89];

  if (v1 + 1 == v2)
  {
    v3 = v0[30];

    return _swift_task_switch(sub_100F5E734, v3, 0);
  }

  else
  {
    v4 = v0[90] + 1;
    v0[90] = v4;
    v5 = v0[88];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v5 + 8 * v4 + 32);
    }

    v0[91] = v6;
    swift_errorRetain();
    v7 = swift_task_alloc();
    v0[92] = v7;
    *v7 = v0;
    v7[1] = sub_100F5E840;
    v8 = v0[80];

    return sub_10116BDD0(v6, v8);
  }
}

uint64_t sub_100F5EC88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 618) = a4;
  *(v5 + 112) = a3;
  *(v5 + 120) = v4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  v6 = type metadata accessor for OwnerPeerTrust(0);
  *(v5 + 128) = v6;
  *(v5 + 136) = *(v6 - 8);
  *(v5 + 144) = swift_task_alloc();
  v7 = type metadata accessor for OwnerSharingCircle(0);
  *(v5 + 152) = v7;
  *(v5 + 160) = *(v7 - 8);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  *(v5 + 192) = swift_task_alloc();
  v8 = type metadata accessor for BeaconNamingRecord(0);
  *(v5 + 200) = v8;
  *(v5 + 208) = *(v8 - 8);
  *(v5 + 216) = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  *(v5 + 224) = v9;
  v10 = *(v9 - 8);
  *(v5 + 232) = v10;
  *(v5 + 240) = *(v10 + 64);
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  *(v5 + 288) = swift_task_alloc();
  v11 = type metadata accessor for OwnedBeaconRecord(0);
  *(v5 + 296) = v11;
  *(v5 + 304) = *(v11 - 8);
  *(v5 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_100F5EF70, v4, 0);
}

uint64_t sub_100F5EF70()
{
  v1 = *(*(v0 + 120) + 160);
  *(v0 + 320) = v1;
  return _swift_task_switch(sub_100F5EF94, v1, 0);
}

uint64_t sub_100F5EF94()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 272);
  v3 = *(v0 + 232);
  v4 = *(v0 + 224);
  v5 = *(v0 + 104);
  v6 = *(v3 + 16);
  *(v0 + 328) = v6;
  *(v0 + 336) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 608) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 344) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 352) = v10;
  *(v0 + 360) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);

  v11 = swift_task_alloc();
  *(v0 + 368) = v11;
  *v11 = v0;
  v11[1] = sub_100F5F118;
  v13 = *(v0 + 280);
  v12 = *(v0 + 288);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100F805F4, v9, v13);
}

uint64_t sub_100F5F118()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_100F5F244, v1, 0);
}

uint64_t sub_100F5F244()
{
  v1 = v0[36];
  if ((*(v0[38] + 48))(v1, 1, v0[37]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    type metadata accessor for SPBeaconSharingError(0);
    v0[3] = 0;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100F80970(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[40];
    sub_100F80620(v1, v0[39], type metadata accessor for OwnedBeaconRecord);

    return _swift_task_switch(sub_100F5F458, v4, 0);
  }
}

uint64_t sub_100F5F458()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 320);
  v3 = *(v0 + 272);
  v4 = *(v0 + 224);
  v5 = (*(v0 + 608) + 24) & ~*(v0 + 608);
  (*(v0 + 328))(v3, *(v0 + 104), v4);
  v6 = swift_allocObject();
  *(v0 + 376) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 384) = v7;
  *v7 = v0;
  v7[1] = sub_100F5F5A8;
  v9 = *(v0 + 184);
  v8 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100F80688, v6, v9);
}

uint64_t sub_100F5F5A8()
{
  v1 = *(*v0 + 120);

  return _swift_task_switch(sub_100F5F6D4, v1, 0);
}

uint64_t sub_100F5F6D4()
{
  v1 = *(v0 + 192);
  if ((*(*(v0 + 208) + 48))(v1, 1, *(v0 + 200)) == 1)
  {
    sub_100F806B4(*(v0 + 312), type metadata accessor for OwnedBeaconRecord);
    sub_10000B3A8(v1, &unk_1016B29E0, &unk_1013B70E0);
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 24) = 0;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100F80970(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v6 = *(v0 + 618);
    v7 = *(v0 + 104);
    sub_100F80620(v1, *(v0 + 216), type metadata accessor for BeaconNamingRecord);
    *(v0 + 32) = v4;
    v8 = swift_task_alloc();
    *(v0 + 392) = v8;
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
    *(v8 + 32) = v7;
    v9 = swift_task_alloc();
    *(v0 + 400) = v9;
    v10 = sub_1000BC4D4(&qword_1016C1650, &qword_1013F4FD0);
    v11 = sub_1000041A4(&qword_1016C1658, &qword_1016C1650, &qword_1013F4FD0, &protocol conformance descriptor for Set<A>);
    *v9 = v0;
    v9[1] = sub_100F5F9D0;
    v12 = *(v0 + 128);

    return Sequence.asyncCompactMap<A>(_:)(&unk_1013F4FC8, v8, v10, v12, v11);
  }
}

uint64_t sub_100F5F9D0(uint64_t a1)
{
  v3 = *v2;
  v3[51] = a1;
  v3[52] = v1;

  if (v1)
  {
    v4 = v3[15];

    v5 = sub_100F61A64;
  }

  else
  {
    v4 = v3[15];

    v5 = sub_100F5FAFC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100F5FAFC()
{
  v0[5] = v0[51];
  v1 = swift_task_alloc();
  v0[53] = v1;
  v2 = sub_1000BC4D4(&qword_101697710, &unk_10138C3D0);
  v3 = sub_1000041A4(&qword_1016C1660, &qword_101697710, &unk_10138C3D0, &protocol conformance descriptor for [A]);
  *v1 = v0;
  v1[1] = sub_100F5FC14;
  v4 = v0[15];

  return Sequence.asyncFilter(_:)(&unk_1013F4FE0, v4, v2, v3);
}

uint64_t sub_100F5FC14(uint64_t a1)
{
  v3 = *v2;
  v3[54] = a1;
  v3[55] = v1;

  if (v1)
  {
  }

  else
  {
    v5 = v3[40];

    return _swift_task_switch(sub_100F5FD4C, v5, 0);
  }
}

uint64_t sub_100F5FD4C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 320);
  v3 = *(v0 + 272);
  v4 = *(v0 + 240);
  v5 = *(v0 + 224);
  v6 = (*(v0 + 608) + 24) & ~*(v0 + 608);
  (*(v0 + 328))(v3, *(v0 + 104), v5);
  v7 = swift_allocObject();
  *(v0 + 448) = v7;
  *(v7 + 16) = v2;
  v1(v7 + v6, v3, v5);
  *(v7 + ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0;

  v8 = swift_task_alloc();
  *(v0 + 456) = v8;
  v9 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *(v0 + 464) = v9;
  *v8 = v0;
  v8[1] = sub_100F5FEC8;

  return unsafeBlocking<A>(context:_:)(v0 + 48, 0xD000000000000010, 0x800000010134A8C0, sub_1001B9920, v7, v9);
}

uint64_t sub_100F5FEC8()
{
  v1 = *(*v0 + 320);

  return _swift_task_switch(sub_100F5FFF4, v1, 0);
}

uint64_t sub_100F5FFF4()
{
  v1 = v0[15];
  v0[59] = v0[6];
  return _swift_task_switch(sub_100F60018, v1, 0);
}

uint64_t sub_100F60018()
{
  v1 = *(v0 + 472);
  v2 = *(v1 + 16);
  *(v0 + 480) = v2;
  if (v2)
  {
    v3 = *(v0 + 160);
    v4 = *(v3 + 80);
    *(v0 + 612) = v4;
    *(v0 + 488) = *(v3 + 72);
    *(v0 + 496) = 0;
    sub_100F80550(v1 + ((v4 + 32) & ~v4), *(v0 + 176), type metadata accessor for OwnerSharingCircle);
    v5 = swift_task_alloc();
    *(v0 + 504) = v5;
    *v5 = v0;
    v5[1] = sub_100F6013C;
    v6 = *(v0 + 176);

    return sub_100F7DABC(v6);
  }

  else
  {

    v8 = *(v0 + 320);

    return _swift_task_switch(sub_100F603A4, v8, 0);
  }
}

uint64_t sub_100F6013C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 120);

  sub_100F806B4(v1, type metadata accessor for OwnerSharingCircle);

  return _swift_task_switch(sub_100F6027C, v2, 0);
}

uint64_t sub_100F6027C()
{
  v1 = *(v0 + 496) + 1;
  if (v1 == *(v0 + 480))
  {

    v2 = *(v0 + 320);

    return _swift_task_switch(sub_100F603A4, v2, 0);
  }

  else
  {
    *(v0 + 496) = v1;
    sub_100F80550(*(v0 + 472) + ((*(v0 + 612) + 32) & ~*(v0 + 612)) + *(v0 + 488) * v1, *(v0 + 176), type metadata accessor for OwnerSharingCircle);
    v3 = swift_task_alloc();
    *(v0 + 504) = v3;
    *v3 = v0;
    v3[1] = sub_100F6013C;
    v4 = *(v0 + 176);

    return sub_100F7DABC(v4);
  }
}

uint64_t sub_100F603A4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 320);
  v3 = *(v0 + 272);
  v4 = *(v0 + 224);
  v5 = (*(v0 + 608) + 24) & ~*(v0 + 608);
  v6 = (v5 + *(v0 + 240) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v0 + 328))(v3, *(v0 + 104), v4);
  v7 = swift_allocObject();
  *(v0 + 512) = v7;
  *(v7 + 16) = v2;
  v1(v7 + v5, v3, v4);
  *(v7 + v6) = 0;

  v8 = swift_task_alloc();
  *(v0 + 520) = v8;
  *v8 = v0;
  v8[1] = sub_100F60508;
  v9 = *(v0 + 464);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4AC, v7, v9);
}

uint64_t sub_100F60508()
{
  v1 = *(*v0 + 320);

  return _swift_task_switch(sub_100F60634, v1, 0);
}

uint64_t sub_100F60634()
{
  v1 = v0[15];
  v0[66] = v0[7];
  return _swift_task_switch(sub_100F60658, v1, 0);
}

uint64_t sub_100F60658()
{
  v1 = *(v0 + 408);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 608);
    v4 = *(v0 + 136);
    v40 = *(v0 + 128);
    v41 = *(v0 + 232);
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v39 = *(v4 + 72);
    v6 = (v3 + 32) & ~v3;
    do
    {
      v7 = *(v0 + 328);
      v8 = *(v0 + 264);
      v9 = *(v0 + 224);
      v10 = *(v0 + 144);
      sub_100F80550(v5, v10, type metadata accessor for OwnerPeerTrust);
      v7(v8, v10 + *(v40 + 20), v9);
      sub_100F806B4(v10, type metadata accessor for OwnerPeerTrust);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_101123D4C((v11 > 1), v12 + 1, 1);
      }

      v13 = *(v0 + 352);
      v14 = *(v0 + 264);
      v15 = *(v0 + 224);
      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13(_swiftEmptyArrayStorage + v6 + *(v41 + 72) * v12, v14, v15);
      v5 += v39;
      --v2;
    }

    while (v2);
  }

  v16 = *(v0 + 618);
  v17 = sub_10000954C(_swiftEmptyArrayStorage);

  if (v16)
  {
    if (v16 != 2)
    {
      v27 = *(v0 + 312);
      v28 = *(v0 + 216);

      sub_100F80870();
      swift_allocError();
      swift_willThrow();
LABEL_17:
      sub_100F806B4(v28, type metadata accessor for BeaconNamingRecord);
      sub_100F806B4(v27, type metadata accessor for OwnedBeaconRecord);

      v32 = *(v0 + 8);

      return v32();
    }

    if (*(v17 + 16))
    {
      v18 = *(v0 + 528);
      v19 = *(v0 + 440);
      v20 = *(v0 + 104);
      v21 = v17;
      v22 = 3;
      v23 = 0;
      v24 = 2;
      goto LABEL_12;
    }

LABEL_15:
    v29 = *(v0 + 224);
    v30 = *(v0 + 232);

    type metadata accessor for BeaconSharingCircleTransformer.Error(0);
    sub_100F80970(&qword_101697608, type metadata accessor for BeaconSharingCircleTransformer.Error, &unk_10139CC50);
    swift_allocError();
    (*(v30 + 56))(v31, 1, 1, v29);
    swift_willThrow();
    goto LABEL_16;
  }

  if (!*(v17 + 16))
  {
    goto LABEL_15;
  }

  v18 = *(v0 + 528);
  v19 = *(v0 + 440);
  v20 = *(v0 + 104);
  v21 = v17;
  v22 = 0;
  v23 = 2;
  v24 = 0;
LABEL_12:
  v25 = sub_100315884(v20, v21, v22, v18, v23, v24, 1);
  if (v19)
  {

LABEL_16:

    v27 = *(v0 + 312);
    v28 = *(v0 + 216);
    goto LABEL_17;
  }

  v34 = v25;
  v35 = v26;

  *(v0 + 536) = v34;
  *(v0 + 544) = v35;
  v36 = swift_task_alloc();
  *(v0 + 552) = v36;
  *v36 = v0;
  v36[1] = sub_100F60B1C;
  v37 = *(v0 + 320);
  v38 = *(v0 + 618);

  return sub_1012A8370(v38, v37);
}

uint64_t sub_100F60B1C(__int16 a1)
{
  v2 = *(*v1 + 120);
  *(*v1 + 616) = a1;

  return _swift_task_switch(sub_100F60C34, v2, 0);
}

uint64_t sub_100F60C34()
{
  v46 = v0;
  if (*(v0 + 616))
  {

    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 328);
    v2 = *(v0 + 248);
    v3 = *(v0 + 224);
    v4 = *(v0 + 104);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177A560);
    v1(v2, v4, v3);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 248);
    v11 = *(v0 + 224);
    v10 = *(v0 + 232);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45[0] = v43;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      (*(v10 + 8))(v9, v11);
      v16 = sub_1000136BC(v13, v15, v45);

      *(v12 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "BeaconSharingService: cannot create new circle - offerLimitReached. BeaconIdentifier: %{private,mask.hash}s.", v12, 0x16u);
      sub_100007BAC(v43);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }

    v23 = *(v0 + 312);
    v24 = *(v0 + 216);
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 88) = 11;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100F80970(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
LABEL_18:
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    sub_100F806B4(v24, type metadata accessor for BeaconNamingRecord);
    sub_100F806B4(v23, type metadata accessor for OwnedBeaconRecord);

    v41 = *(v0 + 8);

    return v41();
  }

  if ((*(v0 + 616) & 0x100) != 0)
  {

    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 328);
    v26 = *(v0 + 256);
    v27 = *(v0 + 224);
    v28 = *(v0 + 104);
    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177A560);
    v25(v26, v28, v27);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 256);
    v35 = *(v0 + 224);
    v34 = *(v0 + 232);
    if (v32)
    {
      v36 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45[0] = v44;
      *v36 = 141558275;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2081;
      sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v34 + 8))(v33, v35);
      v40 = sub_1000136BC(v37, v39, v45);

      *(v36 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v30, v31, "Total shared item limit reached. cannot create new circle - sharedItemsCountLimitReached. BeaconIdentifier: %{private,mask.hash}s.", v36, 0x16u);
      sub_100007BAC(v44);
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    v23 = *(v0 + 312);
    v24 = *(v0 + 216);
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 72) = 7;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100F80970(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    goto LABEL_18;
  }

  v17 = swift_task_alloc();
  *(v0 + 560) = v17;
  v18 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  v19 = sub_1000041A4(&qword_101697600, &qword_1016975F8, &qword_10138C230, &protocol conformance descriptor for [A]);
  *v17 = v0;
  v17[1] = sub_100F61330;
  v20 = *(v0 + 544);
  v21 = *(v0 + 152);
  v22 = *(v0 + 120);

  return Array<A>.asyncFlatMap<A>(_:)(&unk_1013F4FF8, v22, v20, v21, v18, v19);
}

uint64_t sub_100F61330(uint64_t a1)
{
  v3 = *v2;
  v3[71] = a1;
  v3[72] = v1;

  if (v1)
  {
  }

  else
  {
    v5 = v3[15];

    return _swift_task_switch(sub_100F6146C, v5, 0);
  }
}

uint64_t sub_100F6146C()
{
  v1 = v0[67];
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v0[72];
  v4 = v0[20];
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 72);
  sub_100F80550(v1 + v5, v0[21], type metadata accessor for OwnerSharingCircle);
  v7 = sub_100653B3C();
  if (v3)
  {
    v8 = v0[39];
    v9 = v0[27];
    v10 = v0[21];

    sub_100F806B4(v10, type metadata accessor for OwnerSharingCircle);

    sub_100F806B4(v9, type metadata accessor for BeaconNamingRecord);
    sub_100F806B4(v8, type metadata accessor for OwnedBeaconRecord);

    v11 = v0[1];

    return v11();
  }

  v13 = v7;
  sub_100F806B4(v0[21], type metadata accessor for OwnerSharingCircle);
  result = sub_1003980F8(v13);
  if (v2 == 1)
  {
LABEL_10:
    v0[73] = _swiftEmptyArrayStorage;
    v17 = swift_task_alloc();
    v0[74] = v17;
    *v17 = v0;
    v17[1] = sub_100F617B4;
    v18 = v0[67];

    return sub_100EC8350(v18);
  }

  else
  {
    v14 = v6 + v5;
    v15 = 1;
    while (v15 < *(v1 + 16))
    {
      sub_100F80550(v0[67] + v14, v0[21], type metadata accessor for OwnerSharingCircle);
      v16 = sub_100653B3C();
      ++v15;
      sub_100F806B4(v0[21], type metadata accessor for OwnerSharingCircle);
      result = sub_1003980F8(v16);
      v14 += v6;
      if (v2 == v15)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100F617B4(uint64_t a1)
{
  v2 = *(*v1 + 120);
  *(*v1 + 600) = a1;

  return _swift_task_switch(sub_100F618CC, v2, 0);
}

uint64_t sub_100F618CC()
{
  v1 = v0[73];
  v2 = v0[71];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[54];
  v6 = v0[39];
  v7 = v0[27];
  v8 = v0[12];
  *(v0[15] + 384) = v0[75];

  Use = type metadata accessor for ShareCreateUseCase.ShareCreationData(0);
  sub_100F80620(v6, v8 + *(Use + 36), type metadata accessor for OwnedBeaconRecord);
  sub_100F80620(v7, v8 + *(Use + 40), type metadata accessor for BeaconNamingRecord);
  *v8 = v2;
  v8[1] = v1;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v5;

  v10 = v0[1];

  return v10();
}

uint64_t sub_100F61A64(__n128 a1)
{
  v2 = v1[39];
  sub_100F806B4(v1[27], type metadata accessor for BeaconNamingRecord);
  sub_100F806B4(v2, type metadata accessor for OwnedBeaconRecord);

  v3 = v1[1];

  return v3();
}

uint64_t sub_100F61B98(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for OwnerPeerTrust(0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for OwnerSharingCircle(0);
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_100F61D58, v1, 0);
}

uint64_t sub_100F61D58()
{
  v1 = *(*(v0 + 32) + 160);
  *(v0 + 168) = v1;
  return _swift_task_switch(sub_100F61D7C, v1, 0);
}

uint64_t sub_100F61DA4()
{
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_100F61E80;
  v2 = *(v0 + 176);

  return withCheckedContinuation<A>(isolation:function:_:)(v1, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_10058D6FC, v2, &type metadata for () + 1);
}

uint64_t sub_100F61E80()
{

  return _swift_task_switch(sub_100F61F7C, 0, 0);
}

uint64_t sub_100F61F98()
{

  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  v2 = sub_1000BC4D4(&qword_101697710, &unk_10138C3D0);
  *v1 = v0;
  v1[1] = sub_100F62084;
  v3 = *(v0 + 168);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100F805D0, v3, v2);
}

uint64_t sub_100F62084()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_100F6219C, v1, 0);
}

uint64_t sub_100F6219C()
{
  v1 = v0[4];
  v0[25] = v0[2];
  return _swift_task_switch(sub_100F621C0, v1, 0);
}

uint64_t sub_100F621C0()
{
  v1 = *(*(v0 + 24) + 24);
  *(v0 + 208) = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 120);
    v45 = *(*(v0 + 112) + 32);
    v47 = *(v0 + 160);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v43 = *(v3 + 72);
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100F80550(v4, *(v0 + 160), type metadata accessor for OwnerSharingCircle);
      v6 = *(*(v47 + v45) + 16);
      if (v6)
      {
        sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
        v7 = *(type metadata accessor for UUID() - 8);
        v0 = *(v7 + 72);
        v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v9 = swift_allocObject();
        v10 = j__malloc_size(v9);
        if (!v0)
        {
          goto LABEL_54;
        }

        if (v10 - v8 == 0x8000000000000000 && v0 == -1)
        {
          goto LABEL_58;
        }

        v9[2] = v6;
        v9[3] = 2 * ((v10 - v8) / v0);
        v49 = sub_1003CC2CC();
        v0 = v53;

        sub_1000128F8(v52);
        if (v49 != v6)
        {
          goto LABEL_55;
        }

        v0 = v51;
      }

      else
      {
        v9 = _swiftEmptyArrayStorage;
      }

      sub_100F806B4(*(v0 + 160), type metadata accessor for OwnerSharingCircle);
      v12 = v9[2];
      v13 = v5[2];
      v14 = v13 + v12;
      if (__OFADD__(v13, v12))
      {
        goto LABEL_52;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v14 <= v5[3] >> 1)
      {
        if (!v9[2])
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v13 <= v14)
        {
          v16 = v13 + v12;
        }

        else
        {
          v16 = v13;
        }

        v5 = sub_100A5BFE0(isUniquelyReferenced_nonNull_native, v16, 1, v5);
        if (!v9[2])
        {
LABEL_3:

          if (v12)
          {
            goto LABEL_53;
          }

          goto LABEL_4;
        }
      }

      v17 = (v5[3] >> 1) - v5[2];
      type metadata accessor for UUID();
      if (v17 < v12)
      {
        goto LABEL_56;
      }

      swift_arrayInitWithCopy();

      if (v12)
      {
        v18 = v5[2];
        v19 = __OFADD__(v18, v12);
        v20 = v18 + v12;
        if (v19)
        {
          goto LABEL_57;
        }

        v5[2] = v20;
      }

LABEL_4:
      v4 += v43;
      v2 = (v2 - 1);
      if (!v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_28:
  v2 = *(v0 + 200);
  v46 = v2[2];
  if (v46)
  {
    v21 = 0;
    v42 = *(v0 + 56);
    v48 = _swiftEmptyArrayStorage;
    v44 = *(v0 + 200);
    while (v21 < v2[2])
    {
      v25 = *(v42 + 72);
      v26 = v21 + 1;
      v50 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      sub_100F80550(*(v0 + 200) + v50 + v25 * v21, *(v0 + 104), type metadata accessor for OwnerPeerTrust);
      v27 = 0;
      v28 = v5[2];
      while (v28 != v27)
      {
        type metadata accessor for UUID();
        sub_100F80970(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        ++v27;
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v0 = v51;
          sub_100F806B4(*(v51 + 104), type metadata accessor for OwnerPeerTrust);
          goto LABEL_33;
        }
      }

      v0 = v51;
      sub_100F80620(*(v51 + 104), *(v51 + 96), type metadata accessor for OwnerPeerTrust);
      v29 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1011242A4(0, v48[2] + 1, 1);
        v29 = v48;
      }

      v23 = v29[2];
      v22 = v29[3];
      if (v23 >= v22 >> 1)
      {
        sub_1011242A4((v22 > 1), v23 + 1, 1);
        v29 = v48;
      }

      v24 = *(v51 + 96);
      v29[2] = v23 + 1;
      v48 = v29;
      sub_100F80620(v24, v29 + v50 + v23 * v25, type metadata accessor for OwnerPeerTrust);
LABEL_33:
      v21 = v26;
      v2 = v44;
      if (v26 == v46)
      {
        v30 = v48;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v30 = _swiftEmptyArrayStorage;
LABEL_43:
  *(v0 + 216) = v30;
  v31 = v30;

  v32 = v2[2];

  v2 = v31;
  if (v32 != v31[2])
  {
    if (qword_101694480 == -1)
    {
LABEL_45:
      v33 = type metadata accessor for Logger();
      sub_1000076D4(v33, qword_10177A560);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Prevented deletion of owner peer trust still in use.", v36, 2u);
      }

      goto LABEL_48;
    }

LABEL_59:
    swift_once();
    goto LABEL_45;
  }

LABEL_48:
  v37 = *(v0 + 40);
  v38 = *(v0 + 24);
  v39 = swift_task_alloc();
  *(v39 + 16) = v38;
  *(v39 + 24) = v2;
  sub_100EC0C48(sub_100F805D8, v37);
  v40 = *(v0 + 168);

  return _swift_task_switch(sub_100F62958, v40, 0);
}

uint64_t sub_100F62980()
{
  v1 = v0[28];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[29] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_100F62A78;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 1);
}

uint64_t sub_100F62A78()
{
  *(*v1 + 248) = v0;

  if (v0)
  {

    v2 = sub_100F63750;
  }

  else
  {

    v2 = sub_100F62BC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100F62BDC()
{
  v82 = v0;
  v1 = *(v0[26] + 16);
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if (v1)
  {
    v3 = 0;
    v4 = v0[15];
    v77 = v4;
    while (1)
    {
      v5 = v0[26];
      if (v3 >= *(v5 + 16))
      {
        break;
      }

      sub_100F80550(v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, v0[19], type metadata accessor for OwnerSharingCircle);
      if (p_weak_ivar_lyt[144] != -1)
      {
        swift_once();
      }

      v6 = v0[19];
      v7 = v0[17];
      v8 = type metadata accessor for Logger();
      sub_1000076D4(v8, qword_10177A560);
      sub_100F80550(v6, v7, type metadata accessor for OwnerSharingCircle);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      v11 = os_log_type_enabled(v9, v10);
      v12 = v0[17];
      if (v11)
      {
        v13 = v1;
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v81 = v15;
        *v14 = 141558275;
        *(v14 + 4) = 1752392040;
        *(v14 + 12) = 2081;
        type metadata accessor for UUID();
        sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v18 = v17;
        sub_100F806B4(v12, type metadata accessor for OwnerSharingCircle);
        v19 = sub_1000136BC(v16, v18, &v81);
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);

        *(v14 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v9, v10, "Data update on share creation. Create %{private,mask.hash}s", v14, 0x16u);
        sub_100007BAC(v15);

        v1 = v13;
        v4 = v77;
      }

      else
      {

        sub_100F806B4(v12, type metadata accessor for OwnerSharingCircle);
      }

      ++v3;
      sub_100F806B4(v0[19], type metadata accessor for OwnerSharingCircle);
      if (v1 == v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_10:
  v20 = v0[3];
  v21 = *(v20 + 16);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    v78 = v0[15];
    v75 = *(v20 + 16);
    while (v23 < *(v21 + 16))
    {
      sub_100F80550(v21 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v23, v0[18], type metadata accessor for OwnerSharingCircle);
      if (p_weak_ivar_lyt[144] != -1)
      {
        swift_once();
      }

      v24 = v0[18];
      v25 = v0[16];
      v26 = type metadata accessor for Logger();
      sub_1000076D4(v26, qword_10177A560);
      sub_100F80550(v24, v25, type metadata accessor for OwnerSharingCircle);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[16];
      if (v29)
      {
        v31 = v22;
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v81 = v33;
        *v32 = 141558275;
        *(v32 + 4) = 1752392040;
        *(v32 + 12) = 2081;
        type metadata accessor for UUID();
        sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        v36 = v35;
        sub_100F806B4(v30, type metadata accessor for OwnerSharingCircle);
        v37 = sub_1000136BC(v34, v36, &v81);
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);

        *(v32 + 14) = v37;
        _os_log_impl(&_mh_execute_header, v27, v28, "Data update on share creation. Delete %{private,mask.hash}s", v32, 0x16u);
        sub_100007BAC(v33);

        v22 = v31;
        v21 = v75;
      }

      else
      {

        sub_100F806B4(v30, type metadata accessor for OwnerSharingCircle);
      }

      ++v23;
      sub_100F806B4(v0[18], type metadata accessor for OwnerSharingCircle);
      if (v22 == v23)
      {
        v20 = v0[3];
        goto LABEL_20;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    return;
  }

LABEL_20:
  v38 = *(v20 + 32);
  v39 = *(v38 + 16);
  if (v39)
  {
    v40 = 0;
    v79 = v0[7];
    v76 = *(v20 + 32);
    while (v40 < *(v38 + 16))
    {
      sub_100F80550(v38 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v40, v0[11], type metadata accessor for OwnerPeerTrust);
      if (p_weak_ivar_lyt[144] != -1)
      {
        swift_once();
      }

      v41 = v0[11];
      v42 = v0[9];
      v43 = type metadata accessor for Logger();
      sub_1000076D4(v43, qword_10177A560);
      sub_100F80550(v41, v42, type metadata accessor for OwnerPeerTrust);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      v46 = os_log_type_enabled(v44, v45);
      v47 = v0[9];
      if (v46)
      {
        v48 = v39;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v81 = v50;
        *v49 = 141558275;
        *(v49 + 4) = 1752392040;
        *(v49 + 12) = 2081;
        type metadata accessor for UUID();
        sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        v53 = v52;
        sub_100F806B4(v47, type metadata accessor for OwnerPeerTrust);
        v54 = sub_1000136BC(v51, v53, &v81);
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);

        *(v49 + 14) = v54;
        _os_log_impl(&_mh_execute_header, v44, v45, "Data update on peer trust creation. Create %{private,mask.hash}s", v49, 0x16u);
        sub_100007BAC(v50);

        v39 = v48;
        v38 = v76;
      }

      else
      {

        sub_100F806B4(v47, type metadata accessor for OwnerPeerTrust);
      }

      ++v40;
      sub_100F806B4(v0[11], type metadata accessor for OwnerPeerTrust);
      if (v39 == v40)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_43;
  }

LABEL_29:
  v55 = *(v0[27] + 16);
  if (v55)
  {
    v56 = 0;
    v57 = v0[7];
    v80 = v57;
    do
    {
      v58 = v0[27];
      if (v56 >= *(v58 + 16))
      {
        goto LABEL_44;
      }

      sub_100F80550(v58 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v56, v0[10], type metadata accessor for OwnerPeerTrust);
      if (p_weak_ivar_lyt[144] != -1)
      {
        swift_once();
      }

      v59 = v0[10];
      v60 = v0[8];
      v61 = type metadata accessor for Logger();
      sub_1000076D4(v61, qword_10177A560);
      sub_100F80550(v59, v60, type metadata accessor for OwnerPeerTrust);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      v64 = os_log_type_enabled(v62, v63);
      v65 = v0[8];
      if (v64)
      {
        v66 = v55;
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v81 = v68;
        *v67 = 141558275;
        *(v67 + 4) = 1752392040;
        *(v67 + 12) = 2081;
        type metadata accessor for UUID();
        sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v69 = dispatch thunk of CustomStringConvertible.description.getter();
        v71 = v70;
        sub_100F806B4(v65, type metadata accessor for OwnerPeerTrust);
        v72 = sub_1000136BC(v69, v71, &v81);
        p_weak_ivar_lyt = (&BeaconKeyManager + 56);

        *(v67 + 14) = v72;
        _os_log_impl(&_mh_execute_header, v62, v63, "Orphaned Owner Peer Trust to Cleanup %{private,mask.hash}s", v67, 0x16u);
        sub_100007BAC(v68);

        v55 = v66;
        v57 = v80;
      }

      else
      {

        sub_100F806B4(v65, type metadata accessor for OwnerPeerTrust);
      }

      ++v56;
      sub_100F806B4(v0[10], type metadata accessor for OwnerPeerTrust);
    }

    while (v55 != v56);
  }

  v73 = v0[5];

  sub_10000B3A8(v73, &qword_1016975C8, &qword_10138C1F0);

  v74 = v0[1];

  v74();
}

uint64_t sub_100F6376C()
{
  sub_10000B3A8(*(v0 + 40), &qword_1016975C8, &qword_10138C1F0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F63884(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  sub_1000BC4D4(&qword_101697610, &unk_10138C4B0);
  v2[19] = swift_task_alloc();
  v3 = type metadata accessor for SharingCircleSecretValue(0);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for SharingCircleSecret(0);
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v2[30] = swift_task_alloc();
  v5 = type metadata accessor for OwnerSharingCircle(0);
  v2[31] = v5;
  v2[32] = *(v5 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v6 = type metadata accessor for OwnerPeerTrust(0);
  v2[39] = v6;
  v2[40] = *(v6 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[45] = v7;
  v2[46] = *(v7 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();

  return _swift_task_switch(sub_100F63BE4, v1, 0);
}

uint64_t sub_100F63BE4()
{
  v1 = *(v0[17] + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[46];
    v4 = v0[40];
    v17 = v0[39];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    do
    {
      v6 = v0[51];
      v8 = v0[44];
      v7 = v0[45];
      sub_100F80550(v5, v8, type metadata accessor for OwnerPeerTrust);
      (*(v3 + 16))(v6, v8 + *(v17 + 20), v7);
      sub_100F806B4(v8, type metadata accessor for OwnerPeerTrust);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_101123D4C((v9 > 1), v10 + 1, 1);
      }

      v11 = v0[51];
      v12 = v0[45];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v16;
      --v2;
    }

    while (v2);
  }

  v13 = v0[18];
  v0[52] = sub_10000954C(_swiftEmptyArrayStorage);

  v14 = *(v13 + 160);
  v0[53] = v14;

  return _swift_task_switch(sub_100F63DC0, v14, 0);
}

uint64_t sub_100F63DC0()
{

  v1 = swift_task_alloc();
  *(v0 + 432) = v1;
  v2 = sub_1000BC4D4(&qword_101697710, &unk_10138C3D0);
  *v1 = v0;
  v1[1] = sub_100F63EAC;
  v3 = *(v0 + 424);

  return unsafeBlocking<A>(context:_:)(v0 + 120, 0xD000000000000010, 0x800000010134A8C0, sub_100129E2C, v3, v2);
}

uint64_t sub_100F63EAC()
{
  v1 = *(*v0 + 424);

  return _swift_task_switch(sub_100F63FC4, v1, 0);
}

uint64_t sub_100F63FC4()
{
  v1 = v0[18];
  v0[55] = v0[15];
  return _swift_task_switch(sub_100F63FE8, v1, 0);
}

uint64_t sub_100F63FE8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[55];
  v44 = *(v4 + 16);
  if (v44)
  {
    v5 = 0;
    v6 = v3[52];
    v43 = v3[40];
    v47 = v6 + 56;
    v39 = v3[46];
    v40 = _swiftEmptyArrayStorage;
    v41 = v3[55];
    while (v5 < *(v4 + 16))
    {
      v7 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v8 = *(v43 + 72);
      sub_100F80550(v3[55] + v7 + v8 * v5, v3[43], type metadata accessor for OwnerPeerTrust);
      if (*(v6 + 16))
      {
        v42 = v7;
        v45 = v5;
        v9 = v6;
        sub_100F80970(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v11 = -1 << *(v6 + 32);
        v12 = v10 & ~v11;
        if ((*(v47 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          v14 = *(v39 + 72);
          v15 = *(v39 + 16);
          while (1)
          {
            v16 = v49[50];
            v17 = v49[45];
            v15(v16, *(v6 + 48) + v12 * v14, v17);
            sub_100F80970(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v18 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*(v39 + 8))(v16, v17);
            if (v18)
            {
              break;
            }

            v12 = (v12 + 1) & v13;
            v6 = v9;
            if (((*(v47 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          sub_100F80620(v49[43], v49[42], type metadata accessor for OwnerPeerTrust);
          v19 = v40;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1011242A4(0, v40[2] + 1, 1);
            v19 = v40;
          }

          v5 = v45;
          v6 = v9;
          v21 = v19[2];
          v20 = v19[3];
          v3 = v49;
          if (v21 >= v20 >> 1)
          {
            sub_1011242A4((v20 > 1), v21 + 1, 1);
            v19 = v40;
          }

          v22 = v49[42];
          v19[2] = v21 + 1;
          v40 = v19;
          a1 = sub_100F80620(v22, v19 + v42 + v21 * v8, type metadata accessor for OwnerPeerTrust);
          v4 = v41;
        }

        else
        {
LABEL_3:
          v3 = v49;
          a1 = sub_100F806B4(v49[43], type metadata accessor for OwnerPeerTrust);
          v4 = v41;
          v5 = v45;
        }
      }

      else
      {
        a1 = sub_100F806B4(v3[43], type metadata accessor for OwnerPeerTrust);
      }

      if (++v5 == v44)
      {
        v23 = v40;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
LABEL_20:
    v3[56] = v23;
    v24 = v3[17];

    v25 = *(v24 + 24);
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = v3[46];
      v28 = v3[32];
      v48 = v3[31];
      sub_101123D4C(0, v26, 0);
      v29 = v25 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
      v46 = *(v28 + 72);
      do
      {
        v30 = v3[49];
        v31 = v3[45];
        v32 = v3[38];
        sub_100F80550(v29, v32, type metadata accessor for OwnerSharingCircle);
        (*(v27 + 16))(v30, v32 + *(v48 + 20), v31);
        sub_100F806B4(v32, type metadata accessor for OwnerSharingCircle);
        v34 = _swiftEmptyArrayStorage[2];
        v33 = _swiftEmptyArrayStorage[3];
        if (v34 >= v33 >> 1)
        {
          sub_101123D4C((v33 > 1), v34 + 1, 1);
        }

        v35 = v3[49];
        v36 = v3[45];
        _swiftEmptyArrayStorage[2] = v34 + 1;
        (*(v27 + 32))(_swiftEmptyArrayStorage + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v34, v35, v36);
        v29 += v46;
        --v26;
      }

      while (v26);
    }

    v37 = v3[53];
    v3[57] = sub_10000954C(_swiftEmptyArrayStorage);

    a1 = sub_100F6451C;
    a2 = v37;
    a3 = 0;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100F6451C()
{

  v1 = swift_task_alloc();
  *(v0 + 464) = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_100F64608;
  v3 = *(v0 + 424);

  return unsafeBlocking<A>(context:_:)(v0 + 128, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v3, v2);
}

uint64_t sub_100F64608()
{
  v1 = *(*v0 + 424);

  return _swift_task_switch(sub_100F64720, v1, 0);
}

uint64_t sub_100F64720()
{
  v1 = v0[18];
  v0[59] = v0[16];
  return _swift_task_switch(sub_100F64744, v1, 0);
}

uint64_t sub_100F64744(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = v6[59];
  v37 = *(v8 + 16);
  if (v37)
  {
    v9 = 0;
    v10 = v6[57];
    v36 = v6[32];
    v39 = v10 + 56;
    v31 = v6[46];
    v32 = _swiftEmptyArrayStorage;
    v33 = v6[59];
    v40 = v10;
    while (v9 < *(v8 + 16))
    {
      v11 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v12 = *(v36 + 72);
      sub_100F80550(v7[59] + v11 + v12 * v9, v7[37], type metadata accessor for OwnerSharingCircle);
      if (*(v10 + 16))
      {
        v34 = v12;
        v35 = v11;
        v38 = v9;
        v13 = v7;
        sub_100F80970(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v10 = v40;
        v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v15 = -1 << *(v40 + 32);
        v16 = v14 & ~v15;
        if ((*(v39 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          v18 = *(v31 + 72);
          v19 = *(v31 + 16);
          while (1)
          {
            v20 = v13[50];
            v21 = v13[45];
            v19(v20, *(v10 + 48) + v16 * v18, v21);
            sub_100F80970(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v22 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*(v31 + 8))(v20, v21);
            if (v22)
            {
              break;
            }

            v16 = (v16 + 1) & v17;
            v10 = v40;
            if (((*(v39 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          v7 = v13;
          sub_100F80620(v13[37], v13[36], type metadata accessor for OwnerSharingCircle);
          v23 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_101123FE4(0, v32[2] + 1, 1);
            v23 = v32;
          }

          v8 = v33;
          v10 = v40;
          v25 = v23[2];
          v24 = v23[3];
          if (v25 >= v24 >> 1)
          {
            sub_101123FE4((v24 > 1), v25 + 1, 1);
            v23 = v32;
          }

          v26 = v13[36];
          v23[2] = v25 + 1;
          v32 = v23;
          a1 = sub_100F80620(v26, v23 + v35 + v25 * v34, type metadata accessor for OwnerSharingCircle);
        }

        else
        {
LABEL_11:
          v7 = v13;
          a1 = sub_100F806B4(v13[37], type metadata accessor for OwnerSharingCircle);
          v8 = v33;
        }

        v9 = v38;
      }

      else
      {
        a1 = sub_100F806B4(v7[37], type metadata accessor for OwnerSharingCircle);
      }

      if (++v9 == v37)
      {
        v27 = v32;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
LABEL_20:
    v7[60] = v27;

    v28 = swift_task_alloc();
    v7[61] = v28;
    v29 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
    a6 = sub_1000041A4(&qword_101697600, &qword_1016975F8, &qword_10138C230, &protocol conformance descriptor for [A]);
    *v28 = v7;
    v28[1] = sub_100F64BB4;
    a4 = v7[31];
    a2 = v7[18];
    a1 = &unk_1013F4FB0;
    a3 = v27;
    a5 = v29;
  }

  return Array<A>.asyncFlatMap<A>(_:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100F64BB4(uint64_t a1)
{
  v3 = *v2;
  v3[62] = a1;
  v3[63] = v1;

  if (v1)
  {
  }

  else
  {
    v5 = v3[18];

    return _swift_task_switch(sub_100F64CEC, v5, 0);
  }
}

uint64_t sub_100F64CEC()
{
  v1 = v0[17];
  v2 = v1[2];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[46];
    v156 = v0[35];
    v6 = v0[31];
    v5 = v0[32];
    sub_101123FE4(0, v3, 0);
    v154 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = v2 + v154;
    v150 = (v4 + 16);
    v152 = *(v5 + 72);
    do
    {
      v8 = v0[45];
      v9 = v0[38];
      v10 = v0[35];
      sub_100F80550(v7, v9, type metadata accessor for OwnerSharingCircle);
      v11 = *v150;
      (*v150)(&v10[v6[5]], v9 + v6[5], v8);
      v11(&v10[v6[6]], v9 + v6[6], v8);
      LOBYTE(v11) = *(v9 + v6[7]);
      v12 = *(v9 + v6[8]);
      v13 = *(v9 + v6[9]);

      sub_100F806B4(v9, type metadata accessor for OwnerSharingCircle);
      *v10 = 0;
      *(v156 + 8) = 0xC000000000000000;
      v10[v6[7]] = v11;
      *&v10[v6[8]] = v12;
      v10[v6[9]] = v13;
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_101123FE4((v14 > 1), v15 + 1, 1);
      }

      v16 = v0[35];
      _swiftEmptyArrayStorage[2] = v15 + 1;
      sub_100F80620(v16, _swiftEmptyArrayStorage + v154 + v15 * v152, type metadata accessor for OwnerSharingCircle);
      v7 += v152;
      --v3;
    }

    while (v3);
    v1 = v0[17];
  }

  v17 = *v1;
  v18 = *(*v1 + 16);
  if (v18)
  {
    v19 = v0[46];
    v148 = v0[27];
    v21 = v0[24];
    v20 = v0[25];
    v144 = v0[23];
    v22 = v0[21];
    sub_101124114(0, v18, 0);
    v147 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v23 = v17 + v147;
    v157 = (v19 + 16);
    v24 = _swiftEmptyArrayStorage;
    v145 = (v22 + 56);
    v146 = *(v20 + 72);
    v149 = (v19 + 8);
    v25 = v0[63];
    do
    {
      v153 = v18;
      v155 = v24;
      v27 = v0[47];
      v26 = v0[48];
      v28 = v0[45];
      v29 = v0[26];
      v30 = v0[19];
      v151 = v23;
      sub_100F80550(v23, v29, type metadata accessor for SharingCircleSecret);
      v31 = *v157;
      (*v157)(v26, v29 + v21[5], v28);
      v31(v27, v29 + v21[6], v28);
      v32 = v21[7];
      v33 = (v29 + v21[8]);
      v34 = *v33;
      v35 = v33[1];
      v36 = *(v29 + v32);
      v37 = *(v29 + v32 + 8);
      sub_100017D5C(*v33, v35);

      sub_101316078(v34, v35, v36, v37, v30);
      v38 = v25;
      v39 = v0[23];
      v41 = v0[19];
      v40 = v0[20];
      if (v38)
      {

        (*v145)(v41, 1, 1, v40);
        v42 = *v33;
        v43 = v33[1];
        *v39 = *v33;
        *(v144 + 8) = v43;
        swift_storeEnumTagMultiPayload();
        sub_100017D5C(v42, v43);
      }

      else
      {
        (*v145)(v0[19], 0, 1, v0[20]);
        sub_100F80620(v41, v39, type metadata accessor for SharingCircleSecretValue);
      }

      v45 = v0[47];
      v44 = v0[48];
      v46 = v0[45];
      v47 = v0[27];
      v49 = v0[22];
      v48 = v0[23];
      *v47 = 0;
      *(v148 + 8) = 0xC000000000000000;
      v31(v47 + v21[5], v44, v46);
      v31(v47 + v21[6], v45, v46);
      v50 = sub_101315BA4();
      v51 = (v47 + v21[8]);
      *v51 = v50;
      v51[1] = v52;
      sub_100F80550(v48, v49, type metadata accessor for SharingCircleSecretValue);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v55 = v0[47];
      v54 = v0[48];
      v56 = v0[45];
      v57 = v0[26];
      v58 = v0[22];
      v59 = v0[23];
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            sub_100F806B4(v58, type metadata accessor for SharingCircleSecretValue);
            sub_100F806B4(v59, type metadata accessor for SharingCircleSecretValue);
            v63 = *v149;
            (*v149)(v55, v56);
            v63(v54, v56);
            sub_100F806B4(v57, type metadata accessor for SharingCircleSecret);
            v61 = 0xD000000000000012;
            v62 = 0x80000001013475D0;
          }

          else
          {
            sub_100F806B4(v58, type metadata accessor for SharingCircleSecretValue);
            sub_100F806B4(v59, type metadata accessor for SharingCircleSecretValue);
            v67 = *v149;
            (*v149)(v55, v56);
            v67(v54, v56);
            sub_100F806B4(v57, type metadata accessor for SharingCircleSecret);
            v61 = 0xD000000000000011;
            v62 = 0x80000001013475F0;
          }
        }

        else
        {
          sub_100F806B4(v58, type metadata accessor for SharingCircleSecretValue);
          sub_100F806B4(v59, type metadata accessor for SharingCircleSecretValue);
          v66 = *v149;
          (*v149)(v55, v56);
          v66(v54, v56);
          sub_100F806B4(v57, type metadata accessor for SharingCircleSecret);
          v62 = 0xE700000000000000;
          v61 = 0x6E776F6E6B6E75;
        }
      }

      else if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v64 = v0[22];
          sub_100F806B4(v0[23], type metadata accessor for SharingCircleSecretValue);
          v65 = *v149;
          (*v149)(v55, v56);
          v65(v54, v56);
          sub_100F806B4(v57, type metadata accessor for SharingCircleSecret);
          sub_100F806B4(v64, type metadata accessor for SharingCircleSecretValue);
          v61 = 0xD000000000000013;
          v62 = 0x8000000101347630;
        }

        else
        {
          sub_100F806B4(v58, type metadata accessor for SharingCircleSecretValue);
          sub_100F806B4(v59, type metadata accessor for SharingCircleSecretValue);
          v70 = *v149;
          (*v149)(v55, v56);
          v70(v54, v56);
          sub_100F806B4(v57, type metadata accessor for SharingCircleSecret);
          v61 = 0xD000000000000014;
          v62 = 0x8000000101347650;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_100F806B4(v58, type metadata accessor for SharingCircleSecretValue);
        sub_100F806B4(v59, type metadata accessor for SharingCircleSecretValue);
        v60 = *v149;
        (*v149)(v55, v56);
        v60(v54, v56);
        sub_100F806B4(v57, type metadata accessor for SharingCircleSecret);
        v61 = 0xD000000000000014;
        v62 = 0x8000000101347610;
      }

      else
      {
        v68 = v0[22];
        sub_100F806B4(v0[23], type metadata accessor for SharingCircleSecretValue);
        v69 = *v149;
        (*v149)(v55, v56);
        v69(v54, v56);
        sub_100F806B4(v57, type metadata accessor for SharingCircleSecret);
        sub_100F806B4(v68, type metadata accessor for SharingCircleSecretValue);
        v62 = 0xE90000000000006ELL;
        v61 = 0x656B6F546E696F6ALL;
      }

      v71 = (v0[27] + v21[7]);
      *v71 = v61;
      v71[1] = v62;
      v24 = v155;
      v73 = v155[2];
      v72 = v155[3];
      if (v73 >= v72 >> 1)
      {
        sub_101124114((v72 > 1), v73 + 1, 1);
        v24 = v155;
      }

      v74 = v0[27];
      v24[2] = v73 + 1;
      sub_100F80620(v74, v24 + v147 + v73 * v146, type metadata accessor for SharingCircleSecret);
      v25 = 0;
      v23 = v151 + v146;
      v18 = v153 - 1;
    }

    while (v153 != 1);
    v75 = 0;
  }

  else
  {
    v75 = v0[63];
    v24 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for ChangeSetAdaptor();
  inited = swift_initStackObject();
  *(inited + 16) = _swiftEmptyDictionarySingleton;
  *(inited + 24) = _swiftEmptyDictionarySingleton;
  v158 = inited + 24;
  v77 = _swiftEmptyArrayStorage[2];

  if (!v77)
  {
    goto LABEL_40;
  }

  v78 = v0[32];
  v79 = v0[34];
  v80 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v81 = *(v78 + 72);
  sub_100F80550(_swiftEmptyArrayStorage + v80, v79, type metadata accessor for OwnerSharingCircle);
  sub_100D43440(v79);
  if (!v75)
  {
    sub_100F806B4(v0[34], type metadata accessor for OwnerSharingCircle);
    if (v77 != 1)
    {
      v87 = _swiftEmptyArrayStorage;
      v88 = _swiftEmptyArrayStorage + v81 + v80;
      v89 = 1;
      while (v89 < _swiftEmptyArrayStorage[2])
      {
        v90 = v0[34];
        sub_100F80550(v88, v90, type metadata accessor for OwnerSharingCircle);
        sub_100D43440(v90);
        ++v89;
        sub_100F806B4(v0[34], type metadata accessor for OwnerSharingCircle);
        v88 += v81;
        v87 = _swiftEmptyArrayStorage;
        if (v77 == v89)
        {
          v75 = 0;
          goto LABEL_40;
        }
      }

      __break(1u);
      goto LABEL_85;
    }

    v75 = 0;
LABEL_40:

    v91 = v24[2];
    if (v91)
    {
      v92 = v0[25];
      v93 = v0[29];
      v94 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v95 = *(v92 + 72);
      sub_100F80550(v24 + v94, v93, type metadata accessor for SharingCircleSecret);
      sub_100D4346C(v93);
      if (v75)
      {
        v96 = v0[29];

        swift_setDeallocating();

        v83 = type metadata accessor for SharingCircleSecret;
        v84 = v96;
        goto LABEL_67;
      }

      v87 = sub_100F806B4(v0[29], type metadata accessor for SharingCircleSecret);
      if (v91 != 1)
      {
        v97 = v24 + v95 + v94;
        v98 = 1;
        while (v98 < v24[2])
        {
          v99 = v0[29];
          sub_100F80550(v97, v99, type metadata accessor for SharingCircleSecret);
          sub_100D4346C(v99);
          ++v98;
          v87 = sub_100F806B4(v0[29], type metadata accessor for SharingCircleSecret);
          v97 += v95;
          if (v91 == v98)
          {
            goto LABEL_47;
          }
        }

LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

LABEL_47:
      v75 = 0;
    }

    v100 = v0[56];

    v101 = *(v100 + 16);
    if (v101)
    {
      v102 = v0[40];
      v103 = v0[41];
      v104 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v105 = *(v102 + 72);
      sub_100F80550(v0[56] + v104, v103, type metadata accessor for OwnerPeerTrust);
      sub_100D467FC(v103);
      if (v75)
      {
        v106 = v0[41];

        swift_setDeallocating();

        v83 = type metadata accessor for OwnerPeerTrust;
        v84 = v106;
        goto LABEL_67;
      }

      v87 = sub_100F806B4(v0[41], type metadata accessor for OwnerPeerTrust);
      if (v101 != 1)
      {
        v107 = v105 + v104;
        v108 = 1;
        while (v108 < *(v100 + 16))
        {
          v109 = v0[41];
          sub_100F80550(v0[56] + v107, v109, type metadata accessor for OwnerPeerTrust);
          sub_100D467FC(v109);
          ++v108;
          v87 = sub_100F806B4(v0[41], type metadata accessor for OwnerPeerTrust);
          v107 += v105;
          if (v101 == v108)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_86;
      }

LABEL_55:
      v75 = 0;
    }

    v110 = v0[60];

    v111 = *(v110 + 16);
    if (v111)
    {
      v112 = v0[32];
      v113 = v0[33];
      v114 = (*(v112 + 80) + 32) & ~*(v112 + 80);
      v115 = *(v112 + 72);
      sub_100F80550(v0[60] + v114, v113, type metadata accessor for OwnerSharingCircle);
      sub_100D45194(v113);
      if (v75)
      {
        v116 = v0[33];

        swift_setDeallocating();

        v83 = type metadata accessor for OwnerSharingCircle;
        v84 = v116;
        goto LABEL_67;
      }

      v87 = sub_100F806B4(v0[33], type metadata accessor for OwnerSharingCircle);
      if (v111 != 1)
      {
        v117 = v115 + v114;
        v118 = 1;
        while (v118 < *(v110 + 16))
        {
          v119 = v0[33];
          sub_100F80550(v0[60] + v117, v119, type metadata accessor for OwnerSharingCircle);
          sub_100D45194(v119);
          ++v118;
          v87 = sub_100F806B4(v0[33], type metadata accessor for OwnerSharingCircle);
          v117 += v115;
          if (v111 == v118)
          {
            goto LABEL_63;
          }
        }

        goto LABEL_87;
      }

LABEL_63:
      v75 = 0;
    }

    v120 = v0[62];

    v121 = *(v120 + 16);
    if (!v121)
    {
      goto LABEL_74;
    }

    v122 = v0[25];
    v123 = v0[28];
    v124 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v125 = *(v122 + 72);
    sub_100F80550(v0[62] + v124, v123, type metadata accessor for SharingCircleSecret);
    sub_100D44DD8(v123);
    if (v75)
    {
      v126 = v0[28];

      swift_setDeallocating();

      v83 = type metadata accessor for SharingCircleSecret;
      v84 = v126;
      goto LABEL_67;
    }

    v87 = sub_100F806B4(v0[28], type metadata accessor for SharingCircleSecret);
    if (v121 == 1)
    {
LABEL_74:

      swift_beginAccess();
      v132 = *(inited + 16);
      if (*(v132 + 16))
      {
        goto LABEL_79;
      }

      swift_beginAccess();
      if ((*v158 & 0xC000000000000001) != 0)
      {

        v133 = __CocoaDictionary.count.getter();
      }

      else
      {
        v133 = *(*v158 + 16);
      }

      if (v133)
      {
LABEL_79:
        v134 = v0[50];
        v135 = v0[45];
        v136 = v0[46];
        v137 = v0[30];
        UUID.init()();
        swift_beginAccess();

        v140 = sub_1003A8B54(v138, v139);
        swift_bridgeObjectRelease_n();
        (*(v136 + 32))(v137, v134, v135);
        v141 = type metadata accessor for CloudKitChangeSet(0);
        *(v137 + *(v141 + 20)) = v140;
        *(v137 + *(v141 + 24)) = v132;
        (*(*(v141 - 8) + 56))(v137, 0, 1, v141);
      }

      else
      {
        v142 = v0[30];

        v143 = type metadata accessor for CloudKitChangeSet(0);
        (*(*(v143 - 8) + 56))(v142, 1, 1, v143);
      }

      v85 = v0[53];
      v87 = sub_100F66094;
      v86 = 0;

      return _swift_task_switch(v87, v85, v86);
    }

    v129 = v125 + v124;
    v130 = 1;
    while (v130 < *(v120 + 16))
    {
      v131 = v0[28];
      sub_100F80550(v0[62] + v129, v131, type metadata accessor for SharingCircleSecret);
      sub_100D44DD8(v131);
      ++v130;
      v87 = sub_100F806B4(v0[28], type metadata accessor for SharingCircleSecret);
      v129 += v125;
      if (v121 == v130)
      {
        goto LABEL_74;
      }
    }

LABEL_88:
    __break(1u);
    return _swift_task_switch(v87, v85, v86);
  }

  v82 = v0[34];

  swift_setDeallocating();

  v83 = type metadata accessor for OwnerSharingCircle;
  v84 = v82;
LABEL_67:
  sub_100F806B4(v84, v83);

  v127 = v0[1];

  return v127();
}

uint64_t sub_100F660BC()
{
  v1 = v0[64];
  v2 = v0[30];
  v3 = swift_task_alloc();
  v0[65] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[66] = v4;
  *v4 = v0;
  v4[1] = sub_100F661B4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 1);
}

uint64_t sub_100F661B4()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_100F66488;
  }

  else
  {

    v2 = sub_100F662D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F662EC()
{
  sub_10000B3A8(*(v0 + 240), &qword_1016975C8, &qword_10138C1F0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F66488()
{
  v1 = *(v0 + 144);

  return _swift_task_switch(sub_100F664F4, v1, 0);
}

uint64_t sub_100F664F4()
{
  sub_10000B3A8(*(v0 + 240), &qword_1016975C8, &qword_10138C1F0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F66694(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for OwnerPeerTrust(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v2[10] = *(v5 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for OwnerSharingCircle(0);
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_100F6685C, v1, 0);
}

uint64_t sub_100F6685C()
{
  v1 = *(*(v0 + 32) + 160);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_100F66880, v1, 0);
}

uint64_t sub_100F66880()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 64);
  v5 = *(v0 + 24);
  v6 = *(v3 + 16);
  *(v0 + 152) = v6;
  *(v0 + 160) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 232) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 168) = v9;
  *(v9 + 16) = v1;
  (*(v3 + 32))(v9 + v8, v2, v4);

  v10 = swift_task_alloc();
  *(v0 + 176) = v10;
  *v10 = v0;
  v10[1] = sub_100F669F8;
  v12 = *(v0 + 104);
  v11 = *(v0 + 112);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100F80354, v9, v12);
}

uint64_t sub_100F669F8()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100F66B24, v1, 0);
}

uint64_t sub_100F66B24()
{
  v32 = v0;
  v1 = v0[15];
  v2 = v0[14];
  if ((*(v0[16] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_1016AFA00, &qword_10138C4D0);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v3 = v0[19];
    v4 = v0[11];
    v5 = v0[8];
    v6 = v0[3];
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177A560);
    v3(v4, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[11];
    v12 = v0[8];
    v13 = v0[9];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31[0] = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v11, v12);
      v19 = sub_1000136BC(v16, v18, v31);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failure on share re-create, share for %{private,mask.hash}s doesn't exist.", v14, 0x16u);
      sub_100007BAC(v15);

LABEL_10:
      sub_1001118C8();
      swift_allocError();
      *v23 = 4;
      swift_willThrow();

      v24 = v0[1];

      return v24();
    }

LABEL_9:

    (*(v13 + 8))(v11, v12);
    goto LABEL_10;
  }

  v20 = v0[17];
  sub_100F80620(v2, v20, type metadata accessor for OwnerSharingCircle);
  v21 = *(v20 + *(v1 + 32));
  v8 = *(v21 + 16);
  if (v8)
  {
    v22 = sub_1003A85FC(*(v21 + 16), 0);
    v11 = sub_1003CC2CC();
    v12 = v31[1];
    v13 = v31[4];

    sub_1000128F8(v31[0]);
    if (v11 != v8)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  v0[23] = v22;
  v0[2] = v22;
  v26 = swift_task_alloc();
  v0[24] = v26;
  v27 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v28 = sub_1000041A4(&qword_10169CDC8, &unk_1016BF350, &unk_1013E4AF0, &protocol conformance descriptor for [A]);
  *v26 = v0;
  v26[1] = sub_100F66FA4;
  v29 = v0[4];
  v30 = v0[5];

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013F4F78, v29, v27, v30, v28);
}

uint64_t sub_100F66FA4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 200) = a1;

  if (v1)
  {
  }

  else
  {
    v5 = *(v3 + 32);

    return _swift_task_switch(sub_100F670E8, v5, 0);
  }
}

uint64_t sub_100F670E8()
{
  v1 = v0[25];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v4 = objc_opt_self();
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    do
    {
      v7 = v0[7];
      sub_100F80550(v5, v7, type metadata accessor for OwnerPeerTrust);
      v8 = String._bridgeToObjectiveC()();
      v9 = [v4 handleWithString:v8];

      sub_100F806B4(v7, type metadata accessor for OwnerPeerTrust);
      if (v9)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v5 += v6;
      --v2;
    }

    while (v2);
  }

  v10 = v0[17];
  v11 = v0[15];
  v12 = *(v11 + 24);
  v13 = sub_10112A6B4(_swiftEmptyArrayStorage);
  v0[26] = v13;

  v14 = *(v10 + *(v11 + 28));
  v15 = swift_task_alloc();
  v0[27] = v15;
  *v15 = v0;
  v15[1] = sub_100F6731C;

  return sub_100F5A858(v10 + v12, v13, v14);
}

uint64_t sub_100F6731C()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 32);

  if (v0)
  {
    v4 = sub_100F67524;
  }

  else
  {
    v4 = sub_100F67464;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F67464(__n128 a1)
{
  sub_100F806B4(*(v1 + 136), type metadata accessor for OwnerSharingCircle);

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100F67524(__n128 a1)
{
  sub_100F806B4(*(v1 + 136), type metadata accessor for OwnerSharingCircle);

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100F675E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100F676AC, 0, 0);
}

uint64_t sub_100F676AC()
{
  v1 = *(*(v0 + 32) + 160);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100F676D0, v1, 0);
}

uint64_t sub_100F676D0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[5];
  (*(v3 + 16))(v2, v0[3], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[10] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  v0[11] = v7;
  v8 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  *v7 = v0;
  v7[1] = sub_100B4189C;
  v9 = v0[2];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100F8042C, v6, v8);
}

uint64_t sub_100F67848(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 752) = v8;
  *(v9 + 744) = v63;
  *(v9 + 736) = v62;
  *(v9 + 728) = v61;
  *(v9 + 720) = v60;
  *(v9 + 2490) = v59;
  *(v9 + 712) = v58;
  *(v9 + 704) = v55;
  *(v9 + 2444) = v54;
  *(v9 + 2440) = v53;
  *(v9 + 696) = a5;
  *(v9 + 688) = a4;
  *(v9 + 2489) = a3;
  *(v9 + 2488) = a2;
  type metadata accessor for CircleTrustAckEnvelopeV1(0);
  *(v9 + 760) = swift_task_alloc();
  v12 = type metadata accessor for DispatchWorkItemFlags();
  *(v9 + 768) = v12;
  *(v9 + 776) = *(v12 - 8);
  *(v9 + 784) = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  *(v9 + 792) = swift_task_alloc();
  *(v9 + 800) = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v9 + 808) = swift_task_alloc();
  *(v9 + 816) = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_10169A608, &unk_1013BCC20);
  *(v9 + 824) = v13;
  *(v9 + 832) = *(v13 - 8);
  *(v9 + 840) = swift_task_alloc();
  *(v9 + 848) = swift_task_alloc();
  *(v9 + 856) = swift_task_alloc();
  *(v9 + 864) = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  *(v9 + 872) = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  *(v9 + 880) = v15;
  *(v9 + 888) = *(v15 + 64);
  *(v9 + 896) = swift_task_alloc();
  *(v9 + 904) = swift_task_alloc();
  *(v9 + 912) = swift_task_alloc();
  *(v9 + 920) = swift_task_alloc();
  *(v9 + 928) = swift_task_alloc();
  *(v9 + 936) = swift_task_alloc();
  *(v9 + 944) = swift_task_alloc();
  *(v9 + 952) = swift_task_alloc();
  v17 = sub_1000BC4D4(&qword_1016BA4F0, &qword_1013E4B68);
  *(v9 + 960) = v17;
  *(v9 + 968) = *(v17 - 8);
  *(v9 + 976) = swift_task_alloc();
  *(v9 + 984) = swift_task_alloc();
  *(v9 + 992) = swift_task_alloc();
  *(v9 + 1000) = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  *(v9 + 1008) = swift_task_alloc();
  *(v9 + 1016) = swift_task_alloc();
  *(v9 + 1024) = swift_task_alloc();
  *(v9 + 1032) = swift_task_alloc();
  v18 = type metadata accessor for SharedBeaconRecord(0);
  *(v9 + 1040) = v18;
  *(v9 + 1048) = *(v18 - 8);
  *(v9 + 1056) = swift_task_alloc();
  *(v9 + 1064) = swift_task_alloc();
  *(v9 + 1072) = swift_task_alloc();
  *(v9 + 1080) = swift_task_alloc();
  *(v9 + 1088) = swift_task_alloc();
  *(v9 + 1096) = swift_task_alloc();
  v19 = type metadata accessor for MemberPeerTrust(0);
  *(v9 + 1104) = v19;
  *(v9 + 1112) = *(v19 - 8);
  *(v9 + 1120) = swift_task_alloc();
  *(v9 + 1128) = swift_task_alloc();
  *(v9 + 1136) = swift_task_alloc();
  *(v9 + 1144) = swift_task_alloc();
  *(v9 + 1152) = swift_task_alloc();
  *(v9 + 1160) = swift_task_alloc();
  v20 = type metadata accessor for MemberSharingCircle(0);
  *(v9 + 1168) = v20;
  v21 = *(v20 - 8);
  *(v9 + 1176) = v21;
  *(v9 + 1184) = *(v21 + 64);
  *(v9 + 1192) = swift_task_alloc();
  *(v9 + 1200) = swift_task_alloc();
  *(v9 + 1208) = swift_task_alloc();
  *(v9 + 1216) = swift_task_alloc();
  *(v9 + 1224) = swift_task_alloc();
  v22 = sub_1000BC4D4(&qword_10169EF88, &unk_1013E4B70);
  *(v9 + 1232) = v22;
  *(v9 + 1240) = swift_task_alloc();
  *(v9 + 1248) = swift_task_alloc();
  *(v9 + 1256) = swift_task_alloc();
  *(v9 + 1264) = swift_task_alloc();
  *(v9 + 1272) = swift_task_alloc();
  *(v9 + 1280) = swift_task_alloc();
  *(v9 + 1288) = swift_task_alloc();
  *(v9 + 1296) = swift_task_alloc();
  *(v9 + 1304) = swift_task_alloc();
  *(v9 + 1312) = swift_task_alloc();
  *(v9 + 1320) = swift_task_alloc();
  v23 = swift_task_alloc();
  *(v9 + 1328) = v23;
  v24 = sub_1000BC4D4(&qword_10169EF90, &unk_10139FCF0);
  *(v9 + 1336) = v24;
  *(v9 + 1344) = swift_task_alloc();
  *(v9 + 1352) = swift_task_alloc();
  *(v9 + 1360) = swift_task_alloc();
  *(v9 + 1368) = swift_task_alloc();
  *(v9 + 1376) = swift_task_alloc();
  *(v9 + 1384) = swift_task_alloc();
  *(v9 + 1392) = swift_task_alloc();
  *(v9 + 1400) = swift_task_alloc();
  v25 = swift_task_alloc();
  *(v9 + 1408) = v25;
  v26 = *(v16 + 16);
  *(v9 + 1416) = v26;
  *(v9 + 1424) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v26();
  *(v25 + v24[12]) = a2;
  v27 = v25 + v24[16];
  *v27 = a3;
  *(v27 + 8) = a4;
  *(v27 + 16) = a5;
  v28 = (v25 + v24[20]);
  *v28 = a6;
  v28[1] = a7;
  *(v25 + v24[24]) = a8;
  v29 = v24[28];
  *(v9 + 2448) = v29;
  v30 = (v25 + v29);
  *v30 = v43;
  v30[1] = v44;
  (v26)(v23, v45, v14);
  v31 = v22[12];
  *(v9 + 2452) = v31;
  sub_1000D2A70(v46, v23 + v31, &qword_1016980D0, &unk_10138F3B0);
  v32 = (v23 + v22[16]);
  *v32 = v47;
  v32[1] = v48;
  v33 = (v23 + v22[20]);
  *v33 = v49;
  v33[1] = v50;
  v34 = (v23 + v22[24]);
  *v34 = v51;
  v34[1] = v52;
  *(v23 + v22[28]) = v53;
  *(v23 + v22[32]) = v54;
  *(v23 + v22[36]) = v55;
  v35 = (v23 + v22[40]);
  *v35 = v56;
  v35[1] = v57;

  sub_100017D5C(v43, v44);

  return (_swift_task_switch)(sub_100F6816C, 0);
}

uint64_t sub_100F6816C()
{
  v32 = v0;
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1336);
  v3 = *(v0 + 880);
  v4 = *(v0 + 872);
  sub_1000D2A70(*(v0 + 1408), v1, &qword_10169EF90, &unk_10139FCF0);

  sub_100016590(*(v1 + *(v2 + 112)), *(v1 + *(v2 + 112) + 8));
  v5 = String._bridgeToObjectiveC()();

  v6 = [v5 _stripPotentialTokenURIWithToken:0];

  v7 = *(v3 + 8);
  *(v0 + 1432) = v7;
  *(v0 + 1440) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v4);
  if (v6)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(v8, v10);
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      v16 = sub_100B5DEBC(v11, v12, v13);
      if (v16 != 2 && (v16 & 1) != 0)
      {
        if (qword_101694480 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_1000076D4(v17, qword_10177A560);
        swift_bridgeObjectRetain_n();
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = *(v0 + 2490);
          v21 = swift_slowAlloc();
          v31[0] = swift_slowAlloc();
          *v21 = 136315651;
          if (v20)
          {
            v22 = 0;
            v23 = 0xE000000000000000;
          }

          else
          {
            *(v0 + 400) = *(v0 + 712);
            v22 = dispatch thunk of CustomStringConvertible.description.getter();
            v23 = v25;
          }

          v26 = sub_1000136BC(v22, v23, v31);

          *(v21 + 4) = v26;
          *(v21 + 12) = 2160;
          *(v21 + 14) = 1752392040;
          *(v21 + 22) = 2081;

          v27 = sub_1000136BC(v15, v14, v31);

          *(v21 + 24) = v27;

          swift_bridgeObjectRelease_n();
          _os_log_impl(&_mh_execute_header, v18, v19, "%s Got a share suggestion from a blocked contact with handle %{private,mask.hash}s. Ignore it.", v21, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v28 = *(v0 + 1408);
        sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
        sub_10000B3A8(v28, &qword_10169EF90, &unk_10139FCF0);

        v29 = *(v0 + 8);

        return v29();
      }
    }
  }

  v24 = *(*(v0 + 752) + 160);
  *(v0 + 1448) = v24;

  return _swift_task_switch(sub_100F688C0, v24, 0);
}

uint64_t sub_100F688E8()
{
  v1 = swift_task_alloc();
  *(v0 + 1464) = v1;
  *v1 = v0;
  v1[1] = sub_100F689C4;
  v2 = *(v0 + 1456);

  return withCheckedContinuation<A>(isolation:function:_:)(v1, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_100111E60, v2, &type metadata for () + 1);
}

uint64_t sub_100F689C4()
{

  return _swift_task_switch(sub_100F68AC0, 0, 0);
}

uint64_t sub_100F68ADC()
{
  v122 = v0;
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1408);
  v3 = *(v0 + 1400);
  v4 = *(v0 + 1336);
  v5 = *(v0 + 1112);
  v6 = *(v0 + 1104);
  v7 = *(v0 + 1032);
  v8 = *(v0 + 872);
  v9 = *(v5 + 56);
  *(v0 + 1472) = v9;
  *(v0 + 1480) = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v7, 1, 1, v6);
  sub_1000D2A70(v2, v3, &qword_10169EF90, &unk_10139FCF0);

  v10 = *(v3 + *(v4 + 96));
  *(v0 + 1488) = v10;
  sub_100016590(*(v3 + *(v4 + 112)), *(v3 + *(v4 + 112) + 8));
  v1(v3, v8);
  v11 = *(v10 + 16);
  *(v0 + 1496) = v11;
  if (v11)
  {
    v12 = *(v0 + 968);
    v13 = *(v0 + 960);
    v14 = *(v0 + 880);
    *(v0 + 1520) = 0;
    *(v0 + 1512) = _swiftEmptyArrayStorage;
    *(v0 + 1504) = _swiftEmptyDictionarySingleton;
    v15 = *(v0 + 1488);
    if (*(v15 + 16))
    {
      v16 = *(v0 + 1000);
      v17 = *(v0 + 992);
      v118 = *(v0 + 872);
      sub_1000D2A70(v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v16, &qword_1016BA4F0, &qword_1013E4B68);
      v18 = *(v13 + 48);
      v19 = *(v16 + v18);
      *(v0 + 1528) = v19;
      v20 = *(v16 + v18 + 8);
      *(v0 + 1536) = v20;
      v21 = *(v13 + 64);
      v22 = *(v16 + v21);
      v23 = *(v16 + v21 + 8);
      v24 = (v17 + v18);
      v25 = (v17 + v21);
      (*(v14 + 32))(v17, v16, v118);
      *v24 = v19;
      v24[1] = v20;
      *v25 = v22;
      v25[1] = v23;
      v26 = swift_task_alloc();
      *(v0 + 1544) = v26;
      *v26 = v0;
      v26[1] = sub_100F69B18;
      v27 = *(v0 + 1152);
      v28 = *(v0 + 992);
      v29 = *(v0 + 696);
      v30 = *(v0 + 2488);
      v124 = *(v0 + 688);
      v125 = v29;

      return sub_100E83E54(v27, v30, v28, v19, v20, v22, v23);
    }

    __break(1u);
    goto LABEL_29;
  }

  *(v0 + 1568) = _swiftEmptyDictionarySingleton;
  *(v0 + 1560) = _swiftEmptyArrayStorage;
  v32 = *(v0 + 1112);
  v33 = *(v0 + 1104);
  v34 = *(v0 + 1032);
  v35 = *(v0 + 1016);

  sub_1000D2A70(v34, v35, &qword_101698C10, &unk_10138C1E0);
  v36 = *(v32 + 48);
  *(v0 + 1576) = v36;
  *(v0 + 1584) = (v32 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v36(v35, 1, v33) == 1)
  {
    v37 = *(v0 + 1016);

    sub_10000B3A8(v37, &qword_101698C10, &unk_10138C1E0);
    sub_100D487D8();
    swift_allocError();
    *v38 = 4;
    swift_willThrow();
    if (qword_101694480 == -1)
    {
LABEL_8:
      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_10177A560);
      swift_errorRetain();
      swift_errorRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = *(v0 + 2490);
        v43 = swift_slowAlloc();
        v121[0] = swift_slowAlloc();
        *v43 = 136315394;
        if (v42)
        {
          v44 = 0;
          v45 = 0xE000000000000000;
        }

        else
        {
          *(v0 + 664) = *(v0 + 712);
          v44 = dispatch thunk of CustomStringConvertible.description.getter();
          v45 = v64;
        }

        v65 = *(v0 + 1032);
        v66 = sub_1000136BC(v44, v45, v121);

        *(v43 + 4) = v66;
        *(v43 + 12) = 2080;
        swift_getErrorValue();
        v67 = Error.localizedDescription.getter();
        v69 = sub_1000136BC(v67, v68, v121);

        *(v43 + 14) = v69;

        _os_log_impl(&_mh_execute_header, v40, v41, "%s Failure on handleCircleTrust, preparing initial data: %s", v43, 0x16u);
        swift_arrayDestroy();

        v61 = v65;
      }

      else
      {
        v60 = *(v0 + 1032);

        v61 = v60;
      }

      sub_10000B3A8(v61, &qword_101698C10, &unk_10138C1E0);
      v70 = *(v0 + 1408);
      sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
      sub_10000B3A8(v70, &qword_10169EF90, &unk_10139FCF0);

      v71 = *(v0 + 8);

      return v71();
    }

LABEL_29:
    swift_once();
    goto LABEL_8;
  }

  v46 = *(v0 + 1160);
  v47 = *(v0 + 1136);
  sub_100F80620(*(v0 + 1016), v47, type metadata accessor for MemberPeerTrust);
  sub_100F80550(v47, v46, type metadata accessor for MemberPeerTrust);
  v48 = qword_101694480;

  if (v48 != -1)
  {
    swift_once();
  }

  v49 = *(v0 + 1408);
  v50 = *(v0 + 1392);
  v51 = *(v0 + 1328);
  v52 = *(v0 + 1320);
  v53 = type metadata accessor for Logger();
  *(v0 + 1592) = v53;
  *(v0 + 1600) = sub_1000076D4(v53, qword_10177A560);
  sub_1000D2A70(v49, v50, &qword_10169EF90, &unk_10139FCF0);
  sub_1000D2A70(v51, v52, &qword_10169EF88, &unk_1013E4B70);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v112 = v55;
    v56 = *(v0 + 2490);
    v57 = swift_slowAlloc();
    v121[0] = swift_slowAlloc();
    *v57 = 136316163;
    v114 = v54;
    if (v56)
    {
      v58 = 0;
      v59 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 672) = *(v0 + 712);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v72;
    }

    v116 = *(v0 + 1432);
    v73 = *(v0 + 1400);
    v74 = *(v0 + 1392);
    v75 = *(v0 + 1336);
    v109 = *(v0 + 1320);
    v76 = *(v0 + 1312);
    v105 = v74;
    v107 = *(v0 + 1232);
    v77 = *(v0 + 952);
    v119 = *(v0 + 880);
    v78 = *(v0 + 872);
    v79 = sub_1000136BC(v58, v59, v121);

    *(v57 + 4) = v79;
    *(v57 + 12) = 2160;
    *(v57 + 14) = 1752392040;
    *(v57 + 22) = 2081;
    sub_1000D2A70(v74, v73, &qword_10169EF90, &unk_10139FCF0);

    sub_100016590(*(v73 + *(v75 + 112)), *(v73 + *(v75 + 112) + 8));
    v80 = *(v119 + 32);
    v80(v77, v73, v78);
    sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v81 = dispatch thunk of CustomStringConvertible.description.getter();
    v83 = v82;
    v116(v77, v78);
    v84 = sub_1000136BC(v81, v83, v121);

    *(v57 + 24) = v84;
    sub_10000B3A8(v105, &qword_10169EF90, &unk_10139FCF0);
    *(v57 + 32) = 2160;
    *(v57 + 34) = 1752392040;
    *(v57 + 42) = 2081;
    sub_1000D2A70(v109, v76, &qword_10169EF88, &unk_1013E4B70);
    v85 = *(v107 + 48);

    v80(v77, v76, v78);
    sub_10000B3A8(v76 + v85, &qword_1016980D0, &unk_10138F3B0);
    v86 = dispatch thunk of CustomStringConvertible.description.getter();
    v88 = v87;
    v116(v77, v78);
    v89 = sub_1000136BC(v86, v88, v121);

    *(v57 + 44) = v89;
    sub_10000B3A8(v109, &qword_10169EF88, &unk_1013E4B70);
    _os_log_impl(&_mh_execute_header, v114, v112, "%s Update beacon attributes for shareId: %{private,mask.hash}s, beaconID: %{private,mask.hash}s.", v57, 0x34u);
    swift_arrayDestroy();
  }

  else
  {
    v62 = *(v0 + 1392);
    v63 = *(v0 + 1320);

    sub_10000B3A8(v62, &qword_10169EF90, &unk_10139FCF0);
    sub_10000B3A8(v63, &qword_10169EF88, &unk_1013E4B70);
  }

  v120 = *(v0 + 1448);
  v117 = *(v0 + 1432);
  v90 = *(v0 + 1328);
  v91 = *(v0 + 1312);
  v92 = *(v0 + 1304);
  v93 = *(v0 + 1296);
  v94 = *(v0 + 1232);
  v111 = *(v0 + 704);
  v113 = *(v0 + 872);
  sub_1000D2A70(v90, v91, &qword_10169EF88, &unk_1013E4B70);
  v115 = v94[12];
  v95 = (v91 + v94[16]);
  v106 = v95[1];
  v108 = *v95;

  sub_1000D2A70(v90, v92, &qword_10169EF88, &unk_1013E4B70);
  v110 = v94[12];

  v96 = (v92 + v94[40]);
  v97 = *v96;
  v98 = v96[1];
  sub_1000D2A70(v90, v93, &qword_10169EF88, &unk_1013E4B70);
  v99 = v94[12];

  v100 = (v93 + v94[20]);
  v102 = *v100;
  v101 = v100[1];

  *(v0 + 16) = v108;
  *(v0 + 24) = v106;
  *(v0 + 32) = v111;
  *(v0 + 40) = v97;
  *(v0 + 48) = v98;
  *(v0 + 56) = v102;
  *(v0 + 64) = v101;
  *(v0 + 72) = 0;
  v103 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v104 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v104;
  *(v0 + 80) = 0;
  *(v0 + 152) = 0;
  *(v0 + 88) = v103;
  sub_10000B3A8(v93 + v99, &qword_1016980D0, &unk_10138F3B0);
  v117(v93, v113);
  sub_10000B3A8(v92 + v110, &qword_1016980D0, &unk_10138F3B0);
  v117(v92, v113);
  sub_10000B3A8(v91 + v115, &qword_1016980D0, &unk_10138F3B0);
  v117(v91, v113);

  return _swift_task_switch(sub_100F6B6E8, v120, 0);
}

uint64_t sub_100F69B18()
{
  v2 = *v1;
  *(*v1 + 1552) = v0;

  if (v0)
  {
    v3 = *(v2 + 752);

    v4 = sub_100F6B0B0;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 752);
    v4 = sub_100F69C60;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100F69C60()
{
  v157 = v0;
  sub_100F80550(*(v0 + 1152), *(v0 + 1144), type metadata accessor for MemberPeerTrust);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 1512);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100A5C318(0, v2[2] + 1, 1, *(v0 + 1512));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100A5C318((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 1144);
  v6 = *(v0 + 1112);
  v2[2] = v4 + 1;
  sub_100F80620(v5, v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, type metadata accessor for MemberPeerTrust);
  if (qword_101694558 != -1)
  {
    swift_once();
  }

  v153 = v2;
  if ((*(v0 + 1528) != qword_10177A8F0 || *(v0 + 1536) != qword_10177A8F8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v20 = *(v0 + 1432);
    v21 = *(v0 + 984);
    v22 = *(v0 + 960);
    v23 = *(v0 + 872);
    sub_1000D2A70(*(v0 + 992), v21, &qword_1016BA4F0, &qword_1013E4B68);
    v24 = (v21 + *(v22 + 48));
    v26 = *v24;
    v25 = v24[1];
    sub_100016590(*(v21 + *(v22 + 64)), *(v21 + *(v22 + 64) + 8));

    v27 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v27 = v26 & 0xFFFFFFFFFFFFLL;
    }

    v148 = v27 != 0;
    v20(v21, v23);
    goto LABEL_23;
  }

  v7 = *(v0 + 1112);
  v8 = *(v0 + 1104);
  v9 = *(v0 + 1024);
  sub_1000D2A70(*(v0 + 1032), v9, &qword_101698C10, &unk_10138C1E0);
  if ((*(v7 + 48))(v9, 1, v8) != 1)
  {
    sub_10000B3A8(*(v0 + 1024), &qword_101698C10, &unk_10138C1E0);
    if (qword_101694480 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

  v10 = *(v0 + 1024);
  sub_10000B3A8(*(v0 + 1032), &qword_101698C10, &unk_10138C1E0);
  v11 = v10;
  while (1)
  {
    sub_10000B3A8(v11, &qword_101698C10, &unk_10138C1E0);
    v32 = *(v0 + 1472);
    v33 = *(v0 + 1104);
    v34 = *(v0 + 1032);
    sub_100F80550(*(v0 + 1152), v34, type metadata accessor for MemberPeerTrust);
    v148 = 1;
    v32(v34, 0, 1, v33);
LABEL_23:
    v35 = *(v0 + 1504);
    v151 = *(v0 + 1496);
    v36 = *(v0 + 1432);
    v37 = *(v0 + 1152);
    v38 = *(v0 + 992);
    v39 = *(v0 + 976);
    v40 = *(v0 + 960);
    v41 = *(v0 + 872);
    v42 = *(v0 + 1520) + 1;
    sub_1000D2A70(v38, v39, &qword_1016BA4F0, &qword_1013E4B68);

    sub_100016590(*(v39 + *(v40 + 64)), *(v39 + *(v40 + 64) + 8));
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v156[0] = v35;
    sub_100FFCB84(v148, v39, v43);
    sub_100F806B4(v37, type metadata accessor for MemberPeerTrust);
    v36(v39, v41);
    sub_10000B3A8(v38, &qword_1016BA4F0, &qword_1013E4B68);
    if (v42 == v151)
    {
      *(v0 + 1568) = v35;
      *(v0 + 1560) = v153;
      v44 = *(v0 + 1112);
      v45 = *(v0 + 1104);
      v46 = *(v0 + 1032);
      v47 = *(v0 + 1016);

      sub_1000D2A70(v46, v47, &qword_101698C10, &unk_10138C1E0);
      v48 = *(v44 + 48);
      *(v0 + 1576) = v48;
      *(v0 + 1584) = (v44 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v48(v47, 1, v45) == 1)
      {
        v49 = *(v0 + 1016);

        sub_10000B3A8(v49, &qword_101698C10, &unk_10138C1E0);
        sub_100D487D8();
        swift_allocError();
        *v50 = 4;
        swift_willThrow();
        if (qword_101694480 != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_1000076D4(v51, qword_10177A560);
        swift_errorRetain();
        swift_errorRetain();
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = *(v0 + 2490);
          v55 = swift_slowAlloc();
          v156[0] = swift_slowAlloc();
          *v55 = 136315394;
          if (v54)
          {
            v56 = 0;
            v57 = 0xE000000000000000;
          }

          else
          {
            *(v0 + 664) = *(v0 + 712);
            v56 = dispatch thunk of CustomStringConvertible.description.getter();
            v57 = v96;
          }

          v97 = *(v0 + 1032);
          v98 = sub_1000136BC(v56, v57, v156);

          *(v55 + 4) = v98;
          *(v55 + 12) = 2080;
          swift_getErrorValue();
          v99 = Error.localizedDescription.getter();
          v101 = sub_1000136BC(v99, v100, v156);

          *(v55 + 14) = v101;

          _os_log_impl(&_mh_execute_header, v52, v53, "%s Failure on handleCircleTrust, preparing initial data: %s", v55, 0x16u);
          swift_arrayDestroy();

          v93 = v97;
        }

        else
        {
          v92 = *(v0 + 1032);

          v93 = v92;
        }

        sub_10000B3A8(v93, &qword_101698C10, &unk_10138C1E0);
        v102 = *(v0 + 1408);
        sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
        sub_10000B3A8(v102, &qword_10169EF90, &unk_10139FCF0);

        v103 = *(v0 + 8);

        return v103();
      }

      else
      {
        v78 = *(v0 + 1160);
        v79 = *(v0 + 1136);
        sub_100F80620(*(v0 + 1016), v79, type metadata accessor for MemberPeerTrust);
        sub_100F80550(v79, v78, type metadata accessor for MemberPeerTrust);
        v80 = qword_101694480;

        if (v80 != -1)
        {
          swift_once();
        }

        v81 = *(v0 + 1408);
        v82 = *(v0 + 1392);
        v83 = *(v0 + 1328);
        v84 = *(v0 + 1320);
        v85 = type metadata accessor for Logger();
        *(v0 + 1592) = v85;
        *(v0 + 1600) = sub_1000076D4(v85, qword_10177A560);
        sub_1000D2A70(v81, v82, &qword_10169EF90, &unk_10139FCF0);
        sub_1000D2A70(v83, v84, &qword_10169EF88, &unk_1013E4B70);
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v144 = v87;
          v88 = *(v0 + 2490);
          v89 = swift_slowAlloc();
          v156[0] = swift_slowAlloc();
          *v89 = 136316163;
          v146 = v86;
          if (v88)
          {
            v90 = 0;
            v91 = 0xE000000000000000;
          }

          else
          {
            *(v0 + 672) = *(v0 + 712);
            v90 = dispatch thunk of CustomStringConvertible.description.getter();
            v91 = v104;
          }

          v149 = *(v0 + 1432);
          v105 = *(v0 + 1400);
          v106 = *(v0 + 1392);
          v107 = *(v0 + 1336);
          v141 = *(v0 + 1320);
          v108 = *(v0 + 1312);
          v137 = v106;
          v139 = *(v0 + 1232);
          v109 = *(v0 + 952);
          v154 = *(v0 + 880);
          v110 = *(v0 + 872);
          v111 = sub_1000136BC(v90, v91, v156);

          *(v89 + 4) = v111;
          *(v89 + 12) = 2160;
          *(v89 + 14) = 1752392040;
          *(v89 + 22) = 2081;
          sub_1000D2A70(v106, v105, &qword_10169EF90, &unk_10139FCF0);

          sub_100016590(*(v105 + *(v107 + 112)), *(v105 + *(v107 + 112) + 8));
          v112 = *(v154 + 32);
          v112(v109, v105, v110);
          sub_100F80970(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v113 = dispatch thunk of CustomStringConvertible.description.getter();
          v115 = v114;
          v149(v109, v110);
          v116 = sub_1000136BC(v113, v115, v156);

          *(v89 + 24) = v116;
          sub_10000B3A8(v137, &qword_10169EF90, &unk_10139FCF0);
          *(v89 + 32) = 2160;
          *(v89 + 34) = 1752392040;
          *(v89 + 42) = 2081;
          sub_1000D2A70(v141, v108, &qword_10169EF88, &unk_1013E4B70);
          v117 = *(v139 + 48);

          v112(v109, v108, v110);
          sub_10000B3A8(v108 + v117, &qword_1016980D0, &unk_10138F3B0);
          v118 = dispatch thunk of CustomStringConvertible.description.getter();
          v120 = v119;
          v149(v109, v110);
          v121 = sub_1000136BC(v118, v120, v156);

          *(v89 + 44) = v121;
          sub_10000B3A8(v141, &qword_10169EF88, &unk_1013E4B70);
          _os_log_impl(&_mh_execute_header, v146, v144, "%s Update beacon attributes for shareId: %{private,mask.hash}s, beaconID: %{private,mask.hash}s.", v89, 0x34u);
          swift_arrayDestroy();
        }

        else
        {
          v94 = *(v0 + 1392);
          v95 = *(v0 + 1320);

          sub_10000B3A8(v94, &qword_10169EF90, &unk_10139FCF0);
          sub_10000B3A8(v95, &qword_10169EF88, &unk_1013E4B70);
        }

        v155 = *(v0 + 1448);
        v150 = *(v0 + 1432);
        v122 = *(v0 + 1328);
        v123 = *(v0 + 1312);
        v124 = *(v0 + 1304);
        v125 = *(v0 + 1296);
        v126 = *(v0 + 1232);
        v143 = *(v0 + 704);
        v145 = *(v0 + 872);
        sub_1000D2A70(v122, v123, &qword_10169EF88, &unk_1013E4B70);
        v147 = v126[12];
        v127 = (v123 + v126[16]);
        v138 = v127[1];
        v140 = *v127;

        sub_1000D2A70(v122, v124, &qword_10169EF88, &unk_1013E4B70);
        v142 = v126[12];

        v128 = (v124 + v126[40]);
        v129 = *v128;
        v130 = v128[1];
        sub_1000D2A70(v122, v125, &qword_10169EF88, &unk_1013E4B70);
        v131 = v126[12];

        v132 = (v125 + v126[20]);
        v134 = *v132;
        v133 = v132[1];

        *(v0 + 16) = v140;
        *(v0 + 24) = v138;
        *(v0 + 32) = v143;
        *(v0 + 40) = v129;
        *(v0 + 48) = v130;
        *(v0 + 56) = v134;
        *(v0 + 64) = v133;
        *(v0 + 72) = 0;
        v135 = *(v0 + 16);
        *(v0 + 104) = *(v0 + 32);
        v136 = *(v0 + 64);
        *(v0 + 120) = *(v0 + 48);
        *(v0 + 136) = v136;
        *(v0 + 80) = 0;
        *(v0 + 152) = 0;
        *(v0 + 88) = v135;
        sub_10000B3A8(v125 + v131, &qword_1016980D0, &unk_10138F3B0);
        v150(v125, v145);
        sub_10000B3A8(v124 + v142, &qword_1016980D0, &unk_10138F3B0);
        v150(v124, v145);
        sub_10000B3A8(v123 + v147, &qword_1016980D0, &unk_10138F3B0);
        v150(v123, v145);

        return _swift_task_switch(sub_100F6B6E8, v155, 0);
      }
    }

    v58 = *(v0 + 1520) + 1;
    *(v0 + 1520) = v58;
    *(v0 + 1512) = v153;
    *(v0 + 1504) = v35;
    v59 = *(v0 + 1488);
    if (v58 < *(v59 + 16))
    {
      break;
    }

    __break(1u);
LABEL_52:
    swift_once();
LABEL_13:
    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177A560);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 2490);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *(v0 + 576) = v17;
      *v16 = 136315138;
      if (v15)
      {
        v18 = 0;
        v19 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 560) = *(v0 + 712);
        v18 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v29;
      }

      v30 = *(v0 + 1032);
      v31 = sub_1000136BC(v18, v19, (v0 + 576));

      *(v16 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s Several peer trusts with owner account description!", v16, 0xCu);
      sub_100007BAC(v17);

      v11 = v30;
    }

    else
    {
      v28 = *(v0 + 1032);

      v11 = v28;
    }
  }

  v60 = *(v0 + 1000);
  v61 = *(v0 + 992);
  v62 = *(v0 + 960);
  v63 = *(v0 + 880);
  v152 = *(v0 + 872);
  sub_1000D2A70(v59 + ((*(*(v0 + 968) + 80) + 32) & ~*(*(v0 + 968) + 80)) + *(*(v0 + 968) + 72) * v58, v60, &qword_1016BA4F0, &qword_1013E4B68);
  v64 = *(v62 + 48);
  v65 = *(v60 + v64);
  *(v0 + 1528) = v65;
  v66 = *(v60 + v64 + 8);
  *(v0 + 1536) = v66;
  v67 = *(v62 + 64);
  v68 = *(v60 + v67);
  v69 = *(v60 + v67 + 8);
  v70 = (v61 + v64);
  v71 = (v61 + v67);
  (*(v63 + 32))(v61, v60, v152);
  *v70 = v65;
  v70[1] = v66;
  *v71 = v68;
  v71[1] = v69;
  v72 = swift_task_alloc();
  *(v0 + 1544) = v72;
  *v72 = v0;
  v72[1] = sub_100F69B18;
  v73 = *(v0 + 1152);
  v74 = *(v0 + 992);
  v75 = *(v0 + 696);
  v76 = *(v0 + 2488);
  v159 = *(v0 + 688);
  v160 = v75;

  return sub_100E83E54(v73, v76, v74, v65, v66, v68, v69);
}

uint64_t sub_100F6B0B0()
{
  v20 = v0;
  sub_10000B3A8(*(v0 + 992), &qword_1016BA4F0, &qword_1013E4B68);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  swift_errorRetain();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 2490);
    v5 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v5 = 136315394;
    if (v4)
    {
      v6 = 0;
      v7 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 664) = *(v0 + 712);
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v10;
    }

    v11 = *(v0 + 1032);
    v12 = sub_1000136BC(v6, v7, v19);

    *(v5 + 4) = v12;
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    v15 = sub_1000136BC(v13, v14, v19);

    *(v5 + 14) = v15;

    _os_log_impl(&_mh_execute_header, v2, v3, "%s Failure on handleCircleTrust, preparing initial data: %s", v5, 0x16u);
    swift_arrayDestroy();

    v9 = v11;
  }

  else
  {
    v8 = *(v0 + 1032);

    v9 = v8;
  }

  sub_10000B3A8(v9, &qword_101698C10, &unk_10138C1E0);
  v16 = *(v0 + 1408);
  sub_10000B3A8(*(v0 + 1328), &qword_10169EF88, &unk_1013E4B70);
  sub_10000B3A8(v16, &qword_10169EF90, &unk_10139FCF0);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100F6B6E8()
{

  v1 = swift_task_alloc();
  *(v0 + 1608) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_100F6B7C8;
  v3 = *(v0 + 1448);

  return unsafeBlocking<A>(context:_:)(v0 + 528, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v3, v2);
}

uint64_t sub_100F6B7C8()
{
  v1 = *(*v0 + 1448);

  return _swift_task_switch(sub_100F6B8E0, v1, 0);
}

uint64_t sub_100F6B8E0()
{
  v1 = v0[94];
  v0[202] = v0[66];
  return _swift_task_switch(sub_100F6B904, v1, 0);
}

uint64_t sub_100F6B904()
{
  v1 = getuid();
  sub_1000294F0(v1);
  v2 = swift_task_alloc();
  v0[203] = v2;
  *v2 = v0;
  v2[1] = sub_100F6B9B4;
  v3 = v0[166];
  v4 = v0[118];

  return sub_1012D7224((v0 + 11), v3, v4);
}

uint64_t sub_100F6B9B4()
{
  v2 = *v1;
  *(*v1 + 1632) = v0;

  if (v0)
  {
    v3 = *(v2 + 752);
    (*(v2 + 1432))(*(v2 + 944), *(v2 + 872));

    sub_1002497F0(v2 + 16);
    v4 = sub_100F797AC;
  }

  else
  {
    v3 = *(v2 + 1448);
    (*(v2 + 1432))(*(v2 + 944), *(v2 + 872));

    sub_1002497F0(v2 + 16);
    v4 = sub_100F6BB34;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100F6BB34()
{
  v1 = v0[181];
  v2 = swift_allocObject();
  v0[205] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 13;

  v3 = swift_task_alloc();
  v0[206] = v3;
  *v3 = v0;
  v3[1] = sub_100F6BC40;

  return unsafeBlocking<A>(context:_:)(v3, 0xD000000000000010, 0x800000010134A8C0, sub_100359F44, v2, &type metadata for () + 1);
}

uint64_t sub_100F6BC40()
{
  v1 = *(*v0 + 1448);

  return _swift_task_switch(sub_100F6BD6C, v1, 0);
}

uint64_t sub_100F6BD90()
{
  v1 = *(v0 + 1448);
  v2 = *(v0 + 952);
  v3 = *(v0 + 880);
  v4 = *(v0 + 872);
  (*(v0 + 1416))(v2, *(v0 + 1328), v4);
  v5 = *(v3 + 80);
  *(v0 + 2456) = v5;
  v6 = (v5 + 24) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 1664) = v7;
  *(v7 + 16) = v1;
  v8 = *(v3 + 32);
  *(v0 + 1672) = v8;
  *(v0 + 1680) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v7 + v6, v2, v4);

  v9 = swift_task_alloc();
  *(v0 + 1688) = v9;
  v10 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *(v0 + 1696) = v10;
  *v9 = v0;
  v9[1] = sub_100F6BF1C;

  return unsafeBlocking<A>(context:_:)(v0 + 504, 0xD000000000000010, 0x800000010134A8C0, sub_100F800B4, v7, v10);
}

uint64_t sub_100F6BF1C()
{
  v1 = *(*v0 + 1448);

  return _swift_task_switch(sub_100F6C048, v1, 0);
}

uint64_t sub_100F6C048()
{
  v1 = v0[94];
  v0[213] = v0[63];
  return _swift_task_switch(sub_100F6C06C, v1, 0);
}

uint64_t sub_100F6C06C()
{
  v38 = v0;
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 880);
  v4 = *(v0 + 872);
  sub_1000D2A70(*(v0 + 1328), v1, &qword_10169EF88, &unk_1013E4B70);
  v5 = *(v2 + 48);

  v6 = *(v3 + 48);
  *(v0 + 1712) = v6;
  *(v0 + 1720) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v1 + v5, 1, v4) == 1)
  {
    v7 = *(v0 + 1432);
    v8 = *(v0 + 1288);
    v9 = *(v0 + 872);
    sub_10000B3A8(v1 + v5, &qword_1016980D0, &unk_10138F3B0);
    v7(v8, v9);
    v10 = *(v0 + 1656);
    *(v0 + 1824) = _swiftEmptyArrayStorage;
    *(v0 + 1816) = v10;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 2490);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v37 = v15;
      *v14 = 136315650;
      if (v13)
      {
        v16 = 0;
        v17 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 624) = *(v0 + 712);
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v17 = v24;
      }

      v25 = *(v0 + 1704);
      v26 = sub_1000136BC(v16, v17, &v37);

      *(v14 + 4) = v26;
      *(v14 + 12) = 2048;
      v27 = *(v25 + 16);

      *(v14 + 14) = v27;

      *(v14 + 22) = 2048;
      v28 = _swiftEmptyArrayStorage[2];

      *(v14 + 24) = v28;

      _os_log_impl(&_mh_execute_header, v11, v12, "%s Existing member circles for beacon %ld, by owner beacon id: %ld.", v14, 0x20u);
      sub_100007BAC(v15);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v37 = *(v0 + 1704);

    sub_100399680(v29);
    v30 = v37;
    *(v0 + 1832) = v37;
    v31 = *(v30 + 16);
    *(v0 + 1840) = v31;
    if (v31)
    {
      v32 = *(v0 + 1176);
      v33 = *(v0 + 824);
      v34 = *(v32 + 80);
      *(v0 + 2468) = v34;
      *(v0 + 1848) = *(v32 + 72);
      *(v0 + 1864) = _swiftEmptyArrayStorage;
      *(v0 + 1856) = 0;
      v35 = *(v0 + 1448);
      sub_100F80550(v30 + ((v34 + 32) & ~v34), *(v0 + 1216), type metadata accessor for MemberSharingCircle);
      *(v0 + 2472) = v33[12];
      *(v0 + 2476) = v33[16];
      *(v0 + 2480) = v33[20];
      *(v0 + 2484) = v33[24];
      v22 = sub_100F6D21C;
    }

    else
    {
      *(v0 + 1904) = _swiftEmptyArrayStorage;
      v35 = *(v0 + 1448);

      v22 = sub_100F6D874;
    }

    v23 = v35;
  }

  else
  {
    v18 = *(v0 + 1448);
    v19 = *(v0 + 1432);
    v20 = *(v0 + 1288);
    v21 = *(v0 + 872);
    (*(v0 + 1672))(*(v0 + 936), v1 + v5, v21);
    v19(v20, v21);
    v22 = sub_100F6C46C;
    v23 = v18;
  }

  return _swift_task_switch(v22, v23, 0);
}

uint64_t sub_100F6C46C()
{

  v1 = swift_task_alloc();
  *(v0 + 1728) = v1;
  v2 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v1 = v0;
  v1[1] = sub_100F6C558;
  v3 = *(v0 + 1448);

  return unsafeBlocking<A>(context:_:)(v0 + 632, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4AC, v3, v2);
}

uint64_t sub_100F6C558()
{
  v1 = *(*v0 + 1448);

  return _swift_task_switch(sub_100F6C670, v1, 0);
}

uint64_t sub_100F6C670()
{
  v1 = v0[94];
  v0[217] = v0[79];
  return _swift_task_switch(sub_100F6C694, v1, 0);
}

uint64_t sub_100F6C694()
{
  v40 = v0;
  v1 = *(v0 + 1736);
  v2 = *(v0 + 1656);
  v3 = *(v0 + 1328);
  v4 = *(v0 + 936);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = sub_10013D0F8(sub_100F8032C, v5, v1);
  *(v0 + 1744) = v6;
  *(v0 + 1752) = v2;

  v7 = v6[2];
  *(v0 + 1760) = v7;
  if (v7)
  {
    v8 = *(v0 + 1088);
    v9 = *(v0 + 1048);
    v10 = *(*(v0 + 1040) + 20);
    *(v0 + 2460) = v10;
    v11 = *(v9 + 80);
    *(v0 + 2464) = v11;
    *(v0 + 1768) = *(v9 + 72);
    *(v0 + 1784) = _swiftEmptyArrayStorage;
    *(v0 + 1776) = 0;
    v12 = *(v0 + 1448);
    v13 = *(v0 + 1416);
    v14 = *(v0 + 952);
    v15 = *(v0 + 872);
    sub_100F80550(*(v0 + 1744) + ((v11 + 32) & ~v11), v8, type metadata accessor for SharedBeaconRecord);
    v13(v14, v8 + v10, v15);
    sub_100F806B4(v8, type metadata accessor for SharedBeaconRecord);
    v16 = sub_100F6CAA4;
    v17 = v12;
  }

  else
  {

    (*(v0 + 1432))(*(v0 + 936), *(v0 + 872));
    v18 = *(v0 + 1752);
    *(v0 + 1824) = _swiftEmptyArrayStorage;
    *(v0 + 1816) = v18;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 2490);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39 = v23;
      *v22 = 136315650;
      if (v21)
      {
        v24 = 0;
        v25 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 624) = *(v0 + 712);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v26;
      }

      v27 = *(v0 + 1704);
      v28 = sub_1000136BC(v24, v25, &v39);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2048;
      v29 = *(v27 + 16);

      *(v22 + 14) = v29;

      *(v22 + 22) = 2048;
      v30 = _swiftEmptyArrayStorage[2];

      *(v22 + 24) = v30;

      _os_log_impl(&_mh_execute_header, v19, v20, "%s Existing member circles for beacon %ld, by owner beacon id: %ld.", v22, 0x20u);
      sub_100007BAC(v23);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v39 = *(v0 + 1704);

    sub_100399680(v31);
    v32 = v39;
    *(v0 + 1832) = v39;
    v33 = *(v32 + 16);
    *(v0 + 1840) = v33;
    if (v33)
    {
      v34 = *(v0 + 1176);
      v35 = *(v0 + 824);
      v36 = *(v34 + 80);
      *(v0 + 2468) = v36;
      *(v0 + 1848) = *(v34 + 72);
      *(v0 + 1864) = _swiftEmptyArrayStorage;
      *(v0 + 1856) = 0;
      v37 = *(v0 + 1448);
      sub_100F80550(v32 + ((v36 + 32) & ~v36), *(v0 + 1216), type metadata accessor for MemberSharingCircle);
      *(v0 + 2472) = v35[12];
      *(v0 + 2476) = v35[16];
      *(v0 + 2480) = v35[20];
      *(v0 + 2484) = v35[24];
      v16 = sub_100F6D21C;
    }

    else
    {
      *(v0 + 1904) = _swiftEmptyArrayStorage;
      v37 = *(v0 + 1448);

      v16 = sub_100F6D874;
    }

    v17 = v37;
  }

  return _swift_task_switch(v16, v17, 0);
}

uint64_t sub_100F6CAA4()
{
  v1 = *(v0 + 1672);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 928);
  v4 = *(v0 + 872);
  v5 = (*(v0 + 2456) + 24) & ~*(v0 + 2456);
  (*(v0 + 1416))(v3, *(v0 + 952), v4);
  v6 = swift_allocObject();
  *(v0 + 1792) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 1800) = v7;
  *v7 = v0;
  v7[1] = sub_100F6CC00;
  v8 = *(v0 + 1696);

  return unsafeBlocking<A>(context:_:)(v0 + 640, 0xD000000000000010, 0x800000010134A8C0, sub_100F80E5C, v6, v8);
}

uint64_t sub_100F6CC00()
{
  v1 = *(*v0 + 1448);

  return _swift_task_switch(sub_100F6CD2C, v1, 0);
}

uint64_t sub_100F6CD2C()
{
  v1 = *(v0 + 752);
  (*(v0 + 1432))(*(v0 + 952), *(v0 + 872));
  *(v0 + 1808) = *(v0 + 640);

  return _swift_task_switch(sub_100F6CDAC, v1, 0);
}

uint64_t sub_100F6CDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = v3;
  v4 = *(v3 + 1808);
  isUniquelyReferenced_nonNull_native = *(v3 + 1784);
  v6 = *(v4 + 16);
  v7 = isUniquelyReferenced_nonNull_native[2];
  v8 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_30;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 1784);
  if (isUniquelyReferenced_nonNull_native && v8 <= v9[3] >> 1)
  {
    if (*(v4 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v7 <= v8)
    {
      v13 = v7 + v6;
    }

    else
    {
      v13 = v7;
    }

    isUniquelyReferenced_nonNull_native = sub_100A5C8A4(isUniquelyReferenced_nonNull_native, v13, 1, *(v3 + 1784));
    v9 = isUniquelyReferenced_nonNull_native;
    if (*(v4 + 16))
    {
LABEL_5:
      if ((v9[3] >> 1) - v9[2] >= v6)
      {
        swift_arrayInitWithCopy();

        if (!v6)
        {
          goto LABEL_14;
        }

        v10 = v9[2];
        v11 = __OFADD__(v10, v6);
        v12 = v10 + v6;
        if (!v11)
        {
          v9[2] = v12;
          goto LABEL_14;
        }

LABEL_32:
        __break(1u);
        return _swift_task_switch(isUniquelyReferenced_nonNull_native, a2, a3);
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  if (v6)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_14:
  v14 = *(v3 + 1776) + 1;
  if (v14 != *(v3 + 1760))
  {
    *(v3 + 1784) = v9;
    *(v3 + 1776) = v14;
    v23 = *(v3 + 2460);
    v24 = *(v3 + 1448);
    v25 = *(v3 + 1416);
    v26 = *(v3 + 1088);
    v27 = *(v3 + 952);
    v28 = *(v3 + 872);
    sub_100F80550(*(v3 + 1744) + ((*(v3 + 2464) + 32) & ~*(v3 + 2464)) + *(v3 + 1768) * v14, v26, type metadata accessor for SharedBeaconRecord);
    v25(v27, v26 + v23, v28);
    sub_100F806B4(v26, type metadata accessor for SharedBeaconRecord);
    v29 = sub_100F6CAA4;
LABEL_24:
    isUniquelyReferenced_nonNull_native = v29;
    goto LABEL_25;
  }

  (*(v3 + 1432))(*(v3 + 936), *(v3 + 872));
  v15 = *(v3 + 1752);
  *(v3 + 1824) = v9;
  *(v3 + 1816) = v15;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v3 + 2490);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v42 = v20;
    *v19 = 136315650;
    if (v18)
    {
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    else
    {
      *(v3 + 624) = *(v3 + 712);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v30;
    }

    v31 = *(v3 + 1704);
    v32 = sub_1000136BC(v21, v22, &v42);

    *(v19 + 4) = v32;
    *(v19 + 12) = 2048;
    v33 = *(v31 + 16);

    *(v19 + 14) = v33;

    *(v19 + 22) = 2048;
    v34 = v9[2];

    *(v19 + 24) = v34;

    _os_log_impl(&_mh_execute_header, v16, v17, "%s Existing member circles for beacon %ld, by owner beacon id: %ld.", v19, 0x20u);
    sub_100007BAC(v20);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v42 = *(v3 + 1704);

  sub_100399680(v35);
  v36 = v42;
  *(v3 + 1832) = v42;
  v37 = *(v36 + 16);
  *(v3 + 1840) = v37;
  if (v37)
  {
    v38 = *(v3 + 1176);
    v39 = *(v3 + 824);
    v40 = *(v38 + 80);
    *(v3 + 2468) = v40;
    *(v3 + 1848) = *(v38 + 72);
    *(v3 + 1864) = _swiftEmptyArrayStorage;
    *(v3 + 1856) = 0;
    v24 = *(v3 + 1448);
    sub_100F80550(v36 + ((v40 + 32) & ~v40), *(v3 + 1216), type metadata accessor for MemberSharingCircle);
    *(v3 + 2472) = v39[12];
    *(v3 + 2476) = v39[16];
    *(v3 + 2480) = v39[20];
    *(v3 + 2484) = v39[24];
    v29 = sub_100F6D21C;
    goto LABEL_24;
  }

  *(v3 + 1904) = _swiftEmptyArrayStorage;
  v24 = *(v3 + 1448);

  isUniquelyReferenced_nonNull_native = sub_100F6D874;
LABEL_25:
  a2 = v24;
  a3 = 0;

  return _swift_task_switch(isUniquelyReferenced_nonNull_native, a2, a3);
}

uint64_t sub_100F6D21C()
{
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1208);
  v3 = (*(v0 + 2468) + 24) & ~*(v0 + 2468);
  sub_100F80550(*(v0 + 1216), v2, type metadata accessor for MemberSharingCircle);
  v4 = swift_allocObject();
  *(v0 + 1872) = v4;
  *(v4 + 16) = v1;
  sub_100F80620(v2, v4 + v3, type metadata accessor for MemberSharingCircle);

  v5 = swift_task_alloc();
  *(v0 + 1880) = v5;
  *v5 = v0;
  v5[1] = sub_100F6D37C;
  v6 = *(v0 + 856);
  v7 = *(v0 + 824);

  return unsafeBlocking<A>(context:_:)(v6, 0xD000000000000010, 0x800000010134A8C0, sub_100F800CC, v4, v7);
}

uint64_t sub_100F6D37C()
{
  v1 = *(*v0 + 1448);

  return _swift_task_switch(sub_100F6D4A8, v1, 0);
}

uint64_t sub_100F6D4A8()
{
  v1 = *(v0 + 2476);
  v2 = *(v0 + 2472);
  v3 = *(v0 + 864);
  v4 = *(v0 + 856);
  v5 = *(v0 + 824);
  v6 = *(v0 + 752);
  v7 = v5[12];
  v8 = v5[16];
  *(v0 + 1888) = *(v4 + v5[20]);
  *(v0 + 1896) = *(v4 + v5[24]);
  sub_100F80620(v4, v3, type metadata accessor for MemberSharingCircle);
  sub_1000D2AD8(v4 + v7, v3 + v2, &unk_101698C30, &unk_101392630);
  sub_1000D2AD8(v4 + v8, v3 + v1, &unk_1016B29E0, &unk_1013B70E0);

  return _swift_task_switch(sub_100F6D5B0, v6, 0);
}

uint64_t sub_100F6D5B0()
{
  v1 = *(v0 + 1896);
  v2 = *(v0 + 2484);
  v3 = *(v0 + 864);
  v4 = *(v0 + 848);
  v5 = *(v0 + 840);
  v6 = *(v0 + 824);
  *(v3 + *(v0 + 2480)) = *(v0 + 1888);
  *(v3 + v2) = v1;
  sub_1000D2A70(v3, v4, &qword_10169A608, &unk_1013BCC20);
  v7 = v6[12];
  v8 = v6[16];
  v9 = v6[20];
  v10 = *(v4 + v9);
  v11 = v6[24];
  v12 = *(v4 + v11);
  sub_100F80620(v4, v5, type metadata accessor for MemberSharingCircle);
  sub_1000D2AD8(v4 + v7, v5 + v7, &unk_101698C30, &unk_101392630);
  sub_1000D2AD8(v4 + v8, v5 + v8, &unk_1016B29E0, &unk_1013B70E0);
  *(v5 + v9) = v10;
  *(v5 + v11) = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v0 + 1864);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_100A5BAE0(0, v14[2] + 1, 1, *(v0 + 1864));
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_100A5BAE0((v15 > 1), v16 + 1, 1, v14);
  }

  v17 = *(v0 + 1840);
  v18 = *(v0 + 1216);
  v19 = *(v0 + 840);
  v20 = *(v0 + 832);
  v21 = *(v0 + 1856) + 1;
  sub_10000B3A8(*(v0 + 864), &qword_10169A608, &unk_1013BCC20);
  sub_100F806B4(v18, type metadata accessor for MemberSharingCircle);
  v14[2] = v16 + 1;
  sub_1000D2AD8(v19, v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v16, &qword_10169A608, &unk_1013BCC20);
  if (v21 == v17)
  {
    *(v0 + 1904) = v14;
    v22 = *(v0 + 1448);

    v23 = sub_100F6D874;
    v24 = v22;
  }

  else
  {
    v25 = *(v0 + 1856) + 1;
    *(v0 + 1864) = v14;
    *(v0 + 1856) = v25;
    v26 = *(v0 + 1448);
    v27 = *(v0 + 824);
    sub_100F80550(*(v0 + 1832) + ((*(v0 + 2468) + 32) & ~*(v0 + 2468)) + *(v0 + 1848) * v25, *(v0 + 1216), type metadata accessor for MemberSharingCircle);
    *(v0 + 2472) = v27[12];
    *(v0 + 2476) = v27[16];
    *(v0 + 2480) = v27[20];
    *(v0 + 2484) = v27[24];
    v23 = sub_100F6D21C;
    v24 = v26;
  }

  return _swift_task_switch(v23, v24, 0);
}

uint64_t sub_100F6D874()
{

  v1 = swift_task_alloc();
  *(v0 + 1912) = v1;
  v2 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v1 = v0;
  v1[1] = sub_100F6D960;
  v3 = *(v0 + 1448);

  return unsafeBlocking<A>(context:_:)(v0 + 496, 0xD000000000000010, 0x800000010134A8C0, sub_100129E44, v3, v2);
}

uint64_t sub_100F6D960()
{
  v1 = *(*v0 + 1448);

  return _swift_task_switch(sub_100F6DA78, v1, 0);
}

uint64_t sub_100F6DA78()
{
  v1 = v0[94];
  v0[240] = v0[62];
  return _swift_task_switch(sub_100F6DA9C, v1, 0);
}

uint64_t sub_100F6DA9C()
{
  v1 = *(v0 + 1920);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 1080);
    v4 = *(v0 + 1048);
    v43 = *(v0 + 880);
    v5 = *(*(v0 + 1040) + 20);
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    while (1)
    {
      v8 = *(v0 + 1080);
      v9 = *(v0 + 1072);
      sub_100F80550(v6, v8, type metadata accessor for SharedBeaconRecord);
      sub_100F80550(v8, v9, type metadata accessor for SharedBeaconRecord);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = sub_1000210EC(v3 + v5);
      v14 = _swiftEmptyDictionarySingleton[2];
      v15 = (v12 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        return _swift_task_switch(v11, v12, v13);
      }

      v18 = v12;
      if (_swiftEmptyDictionarySingleton[3] < v17)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v26 = v11;
      sub_101007D14();
      v11 = v26;
      if (v18)
      {
LABEL_3:
        sub_100F802C8(*(v0 + 1072), _swiftEmptyDictionarySingleton[7] + v11 * v7);
        goto LABEL_4;
      }

LABEL_11:
      v20 = *(v0 + 1416);
      v21 = *(v0 + 1072);
      v22 = *(v0 + 872);
      _swiftEmptyDictionarySingleton[(v11 >> 6) + 8] |= 1 << v11;
      v23 = v11;
      v20(_swiftEmptyDictionarySingleton[6] + *(v43 + 72) * v11, v3 + v5, v22);
      v11 = sub_100F80620(v21, _swiftEmptyDictionarySingleton[7] + v23 * v7, type metadata accessor for SharedBeaconRecord);
      v24 = _swiftEmptyDictionarySingleton[2];
      v16 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v16)
      {
        goto LABEL_29;
      }

      _swiftEmptyDictionarySingleton[2] = v25;
LABEL_4:
      sub_100F806B4(*(v0 + 1080), type metadata accessor for SharedBeaconRecord);
      v6 += v7;
      if (!--v2)
      {
        goto LABEL_15;
      }
    }

    sub_100FEBB60(v17, isUniquelyReferenced_nonNull_native);
    v11 = sub_1000210EC(v3 + v5);
    if ((v18 & 1) != (v19 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_10:
    if (v18)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_15:
  *(v0 + 1928) = _swiftEmptyDictionarySingleton;
  v27 = *(v0 + 1832);
  v28 = *(v0 + 2490);
  v29 = *(v0 + 712);
  v30 = *(v0 + 2488);

  v31 = sub_100F800F8(v27, _swiftEmptyDictionarySingleton, v29, v28 & 1);
  *(v0 + 2491) = v31;

  if (v30 == 4)
  {
    v32 = *(v0 + 1160);
    v33 = *(v0 + 1104);
    v34 = *(v0 + 752);

    v35 = sub_1000035D0((v34 + 168), *(v34 + 192));
    v36 = *(v33 + 28);
    *(v0 + 1936) = *v35;
    v37 = swift_task_alloc();
    *(v0 + 1944) = v37;
    *v37 = v0;
    v37[1] = sub_100F6DEE0;
    v38 = v32 + v36;
LABEL_19:

    return sub_100E8BEF8(v38);
  }

  if (v31)
  {

    v39 = *(v0 + 1136);
    v40 = *(*(v0 + 1104) + 28);
    v41 = swift_task_alloc();
    *(v0 + 2056) = v41;
    *v41 = v0;
    v41[1] = sub_100F70AE0;
    v38 = v39 + v40;
    goto LABEL_19;
  }

  v12 = *(v0 + 1448);
  v11 = sub_100F6F8AC;
  v13 = 0;

  return _swift_task_switch(v11, v12, v13);
}