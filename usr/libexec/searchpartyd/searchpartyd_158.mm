uint64_t sub_101140F80(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a6;
  v43 = a4;
  v44 = a5;
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for OwnedBeaconRecord(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ShareRecord(0);
  __chkstk_darwin(v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  if (a1)
  {
    v41 = a7;
    v20 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v21 = qword_10177C378;
    v40 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_101385D80;
    sub_101149F2C(a3, v19, type metadata accessor for ShareRecord);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    v26 = sub_100008C00();
    *(v22 + 64) = v26;
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    v27 = v21;
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Successfully deleted shareRecord %@", 35, 2, v22);

    sub_100A8306C(0);
    sub_100025020(v44, v45);
    if (v45[3])
    {
      sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
      v28 = swift_dynamicCast();
      (*(v14 + 56))(v12, v28 ^ 1u, 1, v13);
      if ((*(v14 + 48))(v12, 1, v13) != 1)
      {
        sub_101149EC4(v12, v16, type metadata accessor for OwnedBeaconRecord);
        if (sub_1000322C8())
        {
          v29 = static os_log_type_t.default.getter();
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_10138BBE0;
          *(v30 + 56) = &type metadata for String;
          *(v30 + 64) = v26;
          *(v30 + 32) = v42;
          *(v30 + 40) = v41;

          v31 = UUID.uuidString.getter();
          *(v30 + 96) = &type metadata for String;
          *(v30 + 104) = v26;
          *(v30 + 72) = v31;
          *(v30 + 80) = v32;
          os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v27, "Updating all other sharees since %@ declined sharing: %@", 56, 2, v30);
        }

        return sub_101149F94(v16, type metadata accessor for OwnedBeaconRecord);
      }
    }

    else
    {
      sub_10000B3A8(v45, &qword_101696920, &unk_10138B200);
      (*(v14 + 56))(v12, 1, 1, v13);
    }

    return sub_10000B3A8(v12, &unk_1016A9A20, &qword_10138B280);
  }

  v34 = static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_101385D80;
  sub_101149F2C(a3, v19, type metadata accessor for ShareRecord);
  v37 = String.init<A>(describing:)();
  v39 = v38;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = sub_100008C00();
  *(v36 + 32) = v37;
  *(v36 + 40) = v39;
  os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v35, "Failed to delete shareRecord %@", 31, 2, v36);
}

void sub_1011414A0(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - v4;
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v50 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v48 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = v8;
  __chkstk_darwin(v7);
  v10 = &v46 - v9;
  LODWORD(v49) = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  v52 = xmmword_101385D80;
  *(v12 + 16) = xmmword_101385D80;
  sub_101149F2C(a1, v10, type metadata accessor for SharedBeaconRecord);
  v13 = String.init<A>(describing:)();
  v54 = v10;
  v14 = a1;
  v15 = v13;
  v17 = v16;
  *(v12 + 56) = &type metadata for String;
  v18 = sub_100008C00();
  *(v12 + 64) = v18;
  *(v12 + 32) = v15;
  *(v12 + 40) = v17;
  v19 = v14;
  v20 = v11;
  os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v11, "Handle updateSharedBeacon: %@", 29, 2, v12);

  v21 = *(v51 + 144);
  sub_100AA5198(v14 + *(v6 + 20), v5);
  v22 = v50;
  if ((*(v50 + 48))(v5, 1, v6) == 1)
  {
    sub_10000B3A8(v5, &unk_101698C30, &unk_101392630);
    v23 = static os_log_type_t.error.getter();
    v24 = swift_allocObject();
    *(v24 + 16) = v52;
    sub_101149F2C(v19, v54, type metadata accessor for SharedBeaconRecord);
    v25 = String.init<A>(describing:)();
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = v18;
    *(v24 + 32) = v25;
    *(v24 + 40) = v26;
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v20, "Ignoring update to unknown shared beacon: %@", 44, 2, v24);
  }

  else
  {
    v51 = v21;
    v27 = v48;
    sub_101149EC4(v5, v48, type metadata accessor for SharedBeaconRecord);
    v28 = v19;
    v29 = v54;
    sub_101149F2C(v28, v54, type metadata accessor for SharedBeaconRecord);
    v30 = *(v22 + 80);
    v31 = (v30 + 16) & ~v30;
    v49 = v31 + v53;
    v47 = swift_allocObject();
    v50 = v31;
    sub_101149EC4(v29, v47 + v31, type metadata accessor for SharedBeaconRecord);
    v32 = static os_log_type_t.default.getter();
    v33 = v55;
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v34 = qword_10177C380;
    v35 = swift_allocObject();
    *(v35 + 16) = v52;
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = v18;
    *(v35 + 32) = 0x65736C6166;
    *(v35 + 40) = 0xE500000000000000;
    os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v34, "Modify record. Disk First? (%@)", 31, 2, v35);

    v36 = objc_autoreleasePoolPush();
    sub_101122288(v27);
    *&v52 = v37;
    objc_autoreleasePoolPop(v36);
    if (v33)
    {
      __break(1u);
    }

    else
    {
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v55 = 0;
      v38 = v27;
      v39 = v27;
      v40 = v54;
      sub_101149F2C(v39, v54, type metadata accessor for SharedBeaconRecord);
      v41 = swift_allocObject();
      v42 = v47;
      *(v41 + 16) = sub_1011498FC;
      *(v41 + 24) = v42;
      sub_101149EC4(v40, v41 + ((v30 + 32) & ~v30), type metadata accessor for SharedBeaconRecord);

      sub_100FDCA40(v52, sub_10114996C, v41);

      Future.addFailure(block:)();

      sub_101149F2C(v38, v40, type metadata accessor for SharedBeaconRecord);
      v43 = (v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      v44 = swift_allocObject();
      sub_101149EC4(v40, v44 + v50, type metadata accessor for SharedBeaconRecord);
      *(v44 + v43) = v51;
      v45 = (v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v45 = sub_101141BDC;
      v45[1] = 0;

      Future.addSuccess(block:)();

      sub_101149F94(v38, type metadata accessor for SharedBeaconRecord);
    }
  }
}

uint64_t sub_101141B80(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for SharedBeaconRecord(0) + 40);
  v6 = *(a2 + v4);
  v5 = *(a2 + v4 + 8);
  v7 = (a1 + v4);

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_101141BDC(uint64_t a1)
{
  v2 = type metadata accessor for SharedBeaconRecord(0);
  v3 = __chkstk_darwin(v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v25 - v6;
  v8 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v8);
  v10 = (v25 - v9);
  sub_1000D2A70(a1, v25 - v9, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_101385D80;
    v25[1] = v11;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100008C00();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v17 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v17, "Failed to update shared beacon: %@", 34, 2, v13);
  }

  else
  {
    sub_101149EC4(v10, v7, type metadata accessor for SharedBeaconRecord);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_101385D80;
    sub_101149F2C(v7, v5, type metadata accessor for SharedBeaconRecord);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100008C00();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v23 = static OS_os_log.default.getter();
    v24 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Successfully updated shared beacon: %@", 38, 2, &_mh_execute_header, v23, v24, v19);

    return sub_101149F94(v7, type metadata accessor for SharedBeaconRecord);
  }
}

uint64_t sub_101141F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v97 = a3;
  v5 = type metadata accessor for CryptoKeys(0);
  v6 = *(v5 - 8);
  v94 = v5;
  v95 = v6;
  __chkstk_darwin(v5);
  v93 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for UUID();
  v92 = *(v88 - 1);
  __chkstk_darwin(v88);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v86 = *(v10 - 8);
  v87 = v10;
  v11 = __chkstk_darwin(v10);
  v89 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v90 = &v81 - v13;
  v14 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v14 - 8);
  v16 = &v81 - v15;
  v17 = type metadata accessor for SharedBeaconRecord(0);
  v18 = *(v17 - 1);
  v19 = __chkstk_darwin(v17);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v81 - v22;
  v85 = *(a1 + 144);
  sub_100025020(a2, v96);
  if (!v96[3])
  {
    sub_10000B3A8(v96, &qword_101696920, &unk_10138B200);
    (*(v18 + 56))(v16, 1, 1, v17);
    return sub_10000B3A8(v16, &unk_101698C30, &unk_101392630);
  }

  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v24 = swift_dynamicCast();
  (*(v18 + 56))(v16, v24 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_10000B3A8(v16, &unk_101698C30, &unk_101392630);
  }

  sub_101149EC4(v16, v23, type metadata accessor for SharedBeaconRecord);
  v25 = v97;
  v26 = *(v97 + 16);
  if (!v26)
  {
    v36 = static os_log_type_t.error.getter();
    if (qword_101695030 == -1)
    {
LABEL_23:
      os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, qword_10177C378, "KeyUpdate message received with no keys!", 40, 2, _swiftEmptyArrayStorage);
      return sub_101149F94(v23, type metadata accessor for SharedBeaconRecord);
    }

LABEL_30:
    v80 = v36;
    swift_once();
    v36 = v80;
    goto LABEL_23;
  }

  if (*&v23[v17[11]] == -1 && *&v23[v17[12]] == -1 && !*&v23[v17[17]])
  {
    sub_100532344();
    sub_1007FFCA8(v23, v25);

    return sub_101149F94(v23, type metadata accessor for SharedBeaconRecord);
  }

  else
  {
    v27 = v95;
    v28 = v97 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
    v29 = v90;
    v84 = v17;
    v97 = v28;
    DateInterval.start.getter();
    v30 = v26;
    v31 = v89;
    sub_1011D7168(v89);
    sub_101149F2C(v23, v21, type metadata accessor for SharedBeaconRecord);
    v32 = v92;
    v33 = v88;
    (*(v92 + 16))(v9, &v21[v84[5]], v88);
    sub_101149F94(v21, type metadata accessor for SharedBeaconRecord);
    v34 = v30;
    v35 = sub_10088756C(v9, v31, v29, 0);
    v36 = (*(v32 + 8))(v9, v33);
    v37 = v35 + v30;
    if (__CFADD__(v35, v30))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v38 = v37 != 0;
    v39 = v37 - 1;
    if (!v38)
    {
      goto LABEL_28;
    }

    v88 = v23;
    v82 = v39;
    v83 = v35;
    if (v39 < v35)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v96[0] = _swiftEmptyArrayStorage;
    sub_101124C34(0, v30, 0);
    v40 = v96[0];
    v92 = *(v27 + 72);
    v41 = v97;
    do
    {
      v97 = v34;
      v42 = v93;
      sub_101149F2C(v41, v93, type metadata accessor for CryptoKeys);
      v43 = (v42 + v94[9]);
      v45 = *v43;
      v44 = v43[1];
      v46 = v94[5];
      v47 = (v42 + v94[6]);
      v49 = *v47;
      v48 = v47[1];
      v50 = *(v42 + v46);
      v51 = *(v42 + v46 + 8);
      v95 = v44;
      sub_100017D5C(v45, v44);
      sub_100017D5C(v49, v48);
      sub_10002E98C(v50, v51);
      sub_101149F94(v42, type metadata accessor for CryptoKeys);
      v96[0] = v40;
      v53 = *(v40 + 16);
      v52 = *(v40 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_101124C34((v52 > 1), v53 + 1, 1);
        v40 = v96[0];
      }

      *(v40 + 16) = v53 + 1;
      v54 = v40 + 48 * v53;
      *&v55 = v45;
      *(&v55 + 1) = v95;
      *&v56 = v49;
      *(&v56 + 1) = v48;
      *(v54 + 32) = v55;
      *(v54 + 48) = v56;
      *(v54 + 64) = v50;
      *(v54 + 72) = v51;
      v41 += v92;
      v34 = v97 - 1;
    }

    while (v97 != 1);
    v58 = v91;
    v59 = sub_1013131C0(v83, v82, v40);
    if (!v58)
    {
      v71 = v59;
      v72 = v60;
      v73 = v61;
      type metadata accessor for BeaconKeyManager(0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v74 = v96[0];
      v23 = v88;
      v75 = sub_1012E9F5C(v88, 1, v71, v72, v73, 0, 0, 0);
      sub_1012F0B9C(&v23[v84[5]], v75, v96);

      v76 = v96[0];
      v77 = type metadata accessor for Transaction();
      v96[0] = v76;
      __chkstk_darwin(v77);
      *(&v81 - 6) = v74;
      *(&v81 - 5) = v23;
      *(&v81 - 4) = 0;
      *(&v81 - 3) = 0;
      *(&v81 - 2) = v96;

      static Transaction.named<A>(_:with:)();

      v78 = v87;
      v79 = *(v86 + 8);
      v79(v89, v87);
      v79(v90, v78);

      return sub_101149F94(v23, type metadata accessor for SharedBeaconRecord);
    }

    v62 = v87;
    v63 = *(v86 + 8);
    v63(v89, v87);
    v63(v90, v62);
    v64 = static os_log_type_t.error.getter();
    v65 = v88;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v66 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_101385D80;
    v96[0] = v58;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v68 = String.init<A>(describing:)();
    v70 = v69;
    *(v67 + 56) = &type metadata for String;
    *(v67 + 64) = sub_100008C00();
    *(v67 + 32) = v68;
    *(v67 + 40) = v70;
    os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v66, "Error saving keys: %@", 21, 2, v67);

    return sub_101149F94(v65, type metadata accessor for SharedBeaconRecord);
  }
}

uint64_t sub_1011429A4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v61 = a4;
  v62 = a5;
  v59 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v49 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v46 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = v39 - v15;
  __chkstk_darwin(v14);
  v18 = v39 - v17;
  v53 = *(a2 + 144);
  v19 = *(v11 + 16);
  v19(v39 - v17, v59, v10);
  v59 = v16;
  v45 = v19;
  v39[1] = v11 + 16;
  v19(v16, v18, v10);
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = *(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a1;
  v56 = v11;
  v23 = *(v11 + 32);
  v42 = v20;
  v57 = v10;
  v40 = v23;
  v23(v22 + v20, v18, v10);
  v44 = v21;
  *(v22 + v21) = v61;
  v55 = v22;
  v43 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  *(v22 + v43) = v62;
  v60 = a2;
  swift_retain_n();
  v58 = a1;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  v24 = v54;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v54 = aBlock;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  aBlock = 0x7365547265646E75;
  v64 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v69 == 1)
  {
    v25 = v60;
    v39[0] = *(v60 + 176);
    v53 = v24;
    v26 = v46;
    v27 = v57;
    v45(v46, v59, v57);
    v28 = v43;
    v29 = swift_allocObject();
    *(v29 + 16) = v58;
    *(v29 + 24) = v25;
    v40(v29 + v42, v26, v27);
    v30 = v62;
    *(v29 + v44) = v61;
    *(v29 + v28) = v30;
    v67 = sub_101149A8C;
    v68 = v29;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_100006684;
    v66 = &unk_101668D28;
    v31 = _Block_copy(&aBlock);

    v32 = v47;
    static DispatchQoS.unspecified.getter();
    v69 = _swiftEmptyArrayStorage;
    sub_100004114(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v33 = v49;
    v34 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);
    (*(v51 + 8))(v33, v34);
    (*(v48 + 8))(v32, v50);

    v35 = v59;
  }

  else
  {
    v36 = type metadata accessor for Transaction();
    __chkstk_darwin(v36);
    v37 = v55;
    v39[-4] = v54;
    v39[-3] = sub_101149A74;
    v39[-2] = v37;
    static Transaction.named<A>(_:with:)();

    v27 = v57;
    v35 = v59;
  }

  (*(v56 + 8))(v35, v27);
}

uint64_t sub_101143110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v29 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v27 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 176);
  (*(v12 + 16))(v14, a3, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a1;
  (*(v12 + 32))(v17 + v15, v14, v11);
  v18 = v25;
  *(v17 + v16) = v24;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_10114A028;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101668D78;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_100004114(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  v20 = v27;
  v21 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v31 + 8))(v20, v21);
  (*(v28 + 8))(v10, v30);
}

void sub_1011434D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v83 = a5;
  v86 = type metadata accessor for TimeBasedKey(0);
  v9 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v11 - 8);
  v13 = &v74 - v12;
  v14 = type metadata accessor for SharedBeaconRecord(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 144);
  sub_100AA5198(a3, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000B3A8(v13, &unk_101698C30, &unk_101392630);
LABEL_28:
    Transaction.capture()();
    return;
  }

  sub_101149EC4(v13, v17, type metadata accessor for SharedBeaconRecord);
  v19 = *(a4 + 16);
  if (!v19)
  {
    v44 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      v73 = v44;
      swift_once();
      v44 = v73;
    }

    os_log(_:dso:log:_:_:)(v44, &_mh_execute_header, qword_10177C378, "KeyUpdate message received with no keys!", 40, 2, _swiftEmptyArrayStorage);
    v45 = v17;
    goto LABEL_27;
  }

  v77 = v18;
  v82 = v17;
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v21 = a4 + v20;
  v84 = *(v9 + 72);
  v22 = *(a4 + v20);
  if (*(a4 + v20 + v84 * (v19 - 1)) < v22)
  {
    __break(1u);
LABEL_30:
    swift_once();
LABEL_11:
    v38 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_101385D80;
    v88 = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = sub_100008C00();
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    os_log(_:dso:log:_:_:)(a4, &_mh_execute_header, v38, "Error saving keys: %@", 21, 2, v39);

    v43 = v82;
LABEL_26:
    v45 = v43;
LABEL_27:
    sub_101149F94(v45, type metadata accessor for SharedBeaconRecord);
    goto LABEL_28;
  }

  v80 = *(a4 + v20 + v84 * (v19 - 1));
  v81 = v22;
  v78 = v20;
  v79 = a1;
  v76 = v14;
  v88 = _swiftEmptyArrayStorage;
  sub_101124C34(0, v19, 0);
  v23 = v88;
  do
  {
    v24 = v85;
    sub_101149F2C(v21, v85, type metadata accessor for TimeBasedKey);
    v25 = (v24 + *(v86 + 24));
    v26 = *v25;
    v27 = v25[1];
    v28 = v25[2];
    v29 = v25[3];
    v30 = v25[4];
    v31 = v25[5];
    sub_10002E98C(*v25, v27);
    v87 = v28;
    sub_100017D5C(v28, v29);
    sub_10002E98C(v30, v31);
    sub_101149F94(v24, type metadata accessor for TimeBasedKey);
    v88 = v23;
    v33 = *(v23 + 16);
    v32 = *(v23 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_101124C34((v32 > 1), v33 + 1, 1);
      v23 = v88;
    }

    *(v23 + 16) = v33 + 1;
    v34 = (v23 + 48 * v33);
    v34[4] = v26;
    v34[5] = v27;
    v34[6] = v87;
    v34[7] = v29;
    v34[8] = v30;
    v34[9] = v31;
    v21 += v84;
    --v19;
  }

  while (v19);
  v35 = sub_1013131C0(v81, v80, v23);
  v46 = *(v83 + 16);
  v80 = v36;
  v81 = v37;
  v75 = v35;
  if (!v46)
  {
    v66 = 0;
    v67 = 0;
    v68 = 0;
    goto LABEL_25;
  }

  v74 = 0;
  v47 = v83 + v78;
  v48 = *(v83 + v78 + (v46 - 1) * v84);
  v83 = *(v83 + v78);
  v78 = v48;
  if (v48 >= v83)
  {
    v88 = _swiftEmptyArrayStorage;
    sub_101124C34(0, v46, 0);
    v49 = v88;
    do
    {
      v50 = v85;
      sub_101149F2C(v47, v85, type metadata accessor for TimeBasedKey);
      v51 = (v50 + *(v86 + 24));
      v52 = *v51;
      v53 = v51[1];
      v54 = v51[2];
      v55 = v51[3];
      v57 = v51[4];
      v56 = v51[5];
      sub_10002E98C(*v51, v53);
      sub_100017D5C(v54, v55);
      v87 = v56;
      sub_10002E98C(v57, v56);
      sub_101149F94(v50, type metadata accessor for TimeBasedKey);
      v88 = v49;
      v59 = *(v49 + 16);
      v58 = *(v49 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_101124C34((v58 > 1), v59 + 1, 1);
        v49 = v88;
      }

      *(v49 + 16) = v59 + 1;
      v60 = (v49 + 48 * v59);
      v60[4] = v52;
      v60[5] = v53;
      v60[6] = v54;
      v60[7] = v55;
      v61 = v87;
      v60[8] = v57;
      v60[9] = v61;
      v47 += v84;
      --v46;
    }

    while (v46);
    v62 = v74;
    v63 = sub_1013131C0(v83, v78, v49);
    a1 = v62;
    if (v62)
    {

      a4 = static os_log_type_t.error.getter();
      if (qword_101695030 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

    v66 = v63;
    v67 = v64;
    v68 = v65;
LABEL_25:
    type metadata accessor for BeaconKeyManager(0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v69 = v88;
    v43 = v82;
    v70 = sub_1012E9F5C(v82, 1, v75, v80, v81, v66, v67, v68);
    sub_1012F0B9C(v43 + *(v76 + 20), v70, &v88);

    v71 = v88;
    v72 = type metadata accessor for Transaction();
    v88 = v71;
    __chkstk_darwin(v72);
    *(&v74 - 6) = v69;
    *(&v74 - 5) = v43;
    *(&v74 - 4) = 0;
    *(&v74 - 3) = 0;
    *(&v74 - 2) = &v88;

    static Transaction.named<A>(_:with:)();

    goto LABEL_26;
  }

  __break(1u);
}

uint64_t sub_101143CDC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v27 = a4;
  v26 = a1;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v31 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v25 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a2 + 168);
  (*(v11 + 16))(v13, a3, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v14, v13, v10);
  *(v17 + v15) = a2;
  v18 = v17 + v16;
  *v18 = v27;
  v19 = v29;
  *(v18 + 8) = v28;
  *(v18 + 16) = v19;
  *(v17 + ((v16 + 31) & 0xFFFFFFFFFFFFFFF8)) = v26;
  aBlock[4] = sub_101149E18;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101668E68;
  v20 = _Block_copy(aBlock);

  v21 = v25;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100004114(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  v22 = v31;
  v23 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v35 + 8))(v22, v23);
  (*(v32 + 8))(v21, v34);
}

uint64_t sub_1011440C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v112 = a6;
  v116 = a4;
  v117 = a5;
  v115 = a3;
  v129 = a2;
  v7 = type metadata accessor for SecureLocationsRelayAction(0);
  v8 = *(v7 - 8);
  v119 = v7;
  v120 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v121 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v123 = &v100 - v11;
  v122 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v12 = __chkstk_darwin(v122);
  v113 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v124 = &v100 - v14;
  v118 = type metadata accessor for MessagingOptions(0);
  __chkstk_darwin(v118);
  v125 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v17 = __chkstk_darwin(v16 - 8);
  v114 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v130 = &v100 - v19;
  v20 = type metadata accessor for Date();
  v126 = *(v20 - 8);
  v127 = v20;
  __chkstk_darwin(v20);
  v131 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v100 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v100 - v31;
  __chkstk_darwin(v30);
  v34 = &v100 - v33;
  v35 = *(v23 + 16);
  v128 = a1;
  v35(&v100 - v33, a1, v22);
  v36 = sub_10053A3CC(1, 1, v34, v132);
  v106 = v35;
  v107 = v23 + 16;
  v105 = v9;
  v108 = v29;
  v109 = v23;
  v101 = v26;
  v102 = v32;
  v110 = v22;
  v103 = LOBYTE(v132[0]);
  v42 = v132[2];
  v104 = v132[1];
  v111 = v132[3];
  v43 = v129;
  v44 = *(v129 + 320);
  __chkstk_darwin(v36);
  *(&v100 - 4) = v44;
  *(&v100 - 24) = 1;
  v46 = v127;
  v45 = v128;
  *(&v100 - 2) = v128;
  v47 = v131;
  OS_dispatch_queue.sync<A>(execute:)();
  v48 = sub_1010B2678(v47, 1u);
  v49 = *(v126 + 8);
  v49(v47, v46);
  if (v48)
  {
    v50 = v131;
    static Date.trustedNow.getter(v131);
    sub_1010B1D04(v45, v50, 1);
    v49(v50, v46);
    v129 = *(v43 + 24);
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v51 = swift_allocObject();
    v131 = v42;
    v52 = v51;
    *(v51 + 16) = xmmword_101385D80;
    *(v51 + 32) = v115;
    v53 = v117;
    *(v51 + 40) = v116;
    *(v51 + 48) = v53;
    v54 = *(v109 + 56);
    v55 = v130;
    v56 = v110;
    v54(v130, 1, 1, v110);

    v57 = v108;
    UUID.init()();
    v58 = sub_101129A8C(_swiftEmptyArrayStorage);
    v128 = 0;
    v59 = v58;
    v60 = sub_101129A8C(_swiftEmptyArrayStorage);
    v61 = v125;
    v106(v125, v57, v56);
    v62 = v114;
    sub_1000D2A70(v55, v114, &qword_1016980D0, &unk_10138F3B0);
    v63 = v118;
    v64 = *(v118 + 28);
    v54(v61 + v64, 1, 1, v56);
    *(v61 + v63[5]) = v52;
    *(v61 + v63[6]) = 0;
    sub_1010AD394(v62, v61 + v64);
    v65 = v61 + v63[8];
    *v65 = 0;
    *(v65 + 8) = 1;
    *(v61 + v63[9]) = 1;
    *(v61 + v63[10]) = v59;
    *(v61 + v63[11]) = v60;
    v66 = (v61 + v63[12]);
    *v66 = 0;
    v66[1] = 0;
    *(v61 + v63[13]) = xmmword_1013B0D90;
    v67 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
    v68 = v123;
    sub_101149F2C(v61, &v123[*(v67 + 24)], type metadata accessor for MessagingOptions);
    *v68 = v103;
    v69 = v131;
    *(v68 + 8) = v104;
    *(v68 + 16) = v69;
    v70 = v111;
    *(v68 + 24) = v111;
    *(v68 + 32) = xmmword_10138BBF0;
    swift_storeEnumTagMultiPayload();
    v71 = v121;
    sub_101149F2C(v68, v121, type metadata accessor for SecureLocationsRelayAction);
    v72 = (*(v120 + 80) + 24) & ~*(v120 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = v129;
    sub_101149EC4(v71, v73 + v72, type metadata accessor for SecureLocationsRelayAction);
    v74 = v69;
    sub_100017D5C(v69, v70);

    v75 = v124;
    v76 = v128;
    unsafeFromAsyncTask<A>(_:)();
    if (v76)
    {

      sub_100016590(v69, v70);
      sub_101149F94(v68, type metadata accessor for SecureLocationsRelayAction);
      (*(v109 + 8))(v108, v110);
      goto LABEL_17;
    }

    v85 = v110;
    sub_101149F94(v68, type metadata accessor for SecureLocationsRelayAction);

    v86 = v113;
    sub_101149F2C(v75, v113, type metadata accessor for SecureLocationsRelayAction.Response);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      sub_101149F94(v86, type metadata accessor for SecureLocationsRelayAction.Response);
      sub_10057C844();
      swift_allocError();
      swift_willThrow();
      sub_100016590(v69, v70);
      sub_101149F94(v75, type metadata accessor for SecureLocationsRelayAction.Response);
      (*(v109 + 8))(v108, v85);
LABEL_17:
      sub_10000B3A8(v130, &qword_1016980D0, &unk_10138F3B0);
      sub_101149F94(v61, type metadata accessor for MessagingOptions);
      v37 = static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v38 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_101385D80;
      v40 = _convertErrorToNSError(_:)();
      *(v39 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
      *(v39 + 64) = sub_100009D18(&qword_1016BC310, &qword_10169E020, NSError_ptr, &protocol conformance descriptor for NSObject);
      *(v39 + 32) = v40;
      os_log(_:dso:log:_:_:)(v37, &_mh_execute_header, v38, "Error in forceUnshare: %{public}@)", 34, 2, v39);
    }

    sub_101149F94(v75, type metadata accessor for SecureLocationsRelayAction.Response);
    v87 = v109;
    v88 = *(v109 + 8);
    v89 = v85;
    v88(v108, v85);
    sub_10000B3A8(v130, &qword_1016980D0, &unk_10138F3B0);
    sub_101149F94(v61, type metadata accessor for MessagingOptions);
    v90 = v102;
    (*(v87 + 32))(v102, v86, v85);
    v91 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v92 = qword_10177C378;
    v93 = v101;
    v106(v101, v90, v89);
    if (os_log_type_enabled(v92, v91))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v132[0] = v95;
      *v94 = 136446210;
      sub_100004114(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v98 = v97;
      v88(v93, v89);
      v99 = sub_1000136BC(v96, v98, v132);

      *(v94 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v92, v91, "Sent forceUnshare message: %{public}s", v94, 0xCu);
      sub_100007BAC(v95);
      v90 = v102;

      v74 = v131;
    }

    else
    {
      v88(v93, v89);
    }

    Transaction.capture()();
    sub_100016590(v74, v111);
    return (v88)(v90, v89);
  }

  else
  {
    v77 = v42;
    v78 = v111;
    v79 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v80 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_101385D80;
    v82 = UUID.uuidString.getter();
    v84 = v83;
    *(v81 + 56) = &type metadata for String;
    *(v81 + 64) = sub_100008C00();
    *(v81 + 32) = v82;
    *(v81 + 40) = v84;
    os_log(_:dso:log:_:_:)(v79, &_mh_execute_header, v80, "Ignoring request to force unshare. ShareRecord last unshared recently. (beaconIdentifier: %{mask.hash}@)", 104, 2, v81);

    return sub_100016590(v77, v78);
  }
}

void sub_101144E78(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v187 = a7;
  v178 = a6;
  v179 = a5;
  v210 = a4;
  v212 = a3;
  v177 = a1;
  v190 = type metadata accessor for DateInterval();
  v196 = *(v190 - 8);
  v8 = __chkstk_darwin(v190);
  v184 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v185 = &v174 - v11;
  v12 = __chkstk_darwin(v10);
  v186 = &v174 - v13;
  __chkstk_darwin(v12);
  v15 = &v174 - v14;
  v16 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v16 - 8);
  v181 = &v174 - v17;
  v180 = type metadata accessor for SharedBeaconRecord(0);
  v182 = *(v180 - 8);
  v18 = __chkstk_darwin(v180);
  v175 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = v19;
  __chkstk_darwin(v18);
  v183 = (&v174 - v20);
  v21 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v21 - 8);
  v194 = &v174 - v22;
  v193 = type metadata accessor for OwnedBeaconRecord(0);
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v195 = &v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Date();
  v200 = *(v24 - 8);
  v201 = v24;
  v25 = __chkstk_darwin(v24);
  v188 = &v174 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v191 = &v174 - v28;
  v29 = __chkstk_darwin(v27);
  v198 = &v174 - v30;
  __chkstk_darwin(v29);
  v199 = &v174 - v31;
  v32 = sub_1000BC4D4(&qword_1016A4780, &qword_1013B34F0);
  __chkstk_darwin(v32 - 8);
  v208 = &v174 - v33;
  v34 = type metadata accessor for ShareRecord(0);
  v206 = *(v34 - 8);
  v207 = v34;
  __chkstk_darwin(v34);
  v36 = &v174 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v37 - 8);
  v39 = &v174 - v38;
  v40 = type metadata accessor for DirectorySequence();
  v203 = *(v40 - 8);
  *&v204 = v40;
  __chkstk_darwin(v40);
  v42 = &v174 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for URL();
  v211 = *(v43 - 1);
  v44 = __chkstk_darwin(v43);
  v46 = &v174 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v48 = &v174 - v47;
  v197 = *(a2 + 144);
  v213 = *(v197 + 168);
  v49 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  v189 = v15;
  v202 = v36;
  v209 = a2;
  sub_1000076D4(v43, qword_10177A518);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v49);
  v216 = _swiftEmptyArrayStorage;
  v217 = _swiftEmptyArrayStorage;
  v50 = [objc_opt_self() defaultManager];
  v205 = v48;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v214 = v42;
  DirectorySequence.next()();
  v51 = v211;
  v52 = *(v211 + 48);
  if (v52(v39, 1, v43) != 1)
  {
    v53 = *(v51 + 32);
    while (1)
    {
      v53(v46, v39, v43);
      v54 = objc_autoreleasePoolPush();
      v55 = v215;
      sub_1005FF9CC(v46, v213, &v217, &v216);
      v215 = v55;
      if (v55)
      {
        break;
      }

      objc_autoreleasePoolPop(v54);
      (*(v51 + 8))(v46, v43);
      DirectorySequence.next()();
      if (v52(v39, 1, v43) == 1)
      {
        goto LABEL_7;
      }
    }

    objc_autoreleasePoolPop(v54);
    __break(1u);
    goto LABEL_49;
  }

LABEL_7:
  (*(v203 + 1))(v214, v204);
  v56 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v57 = static OS_os_log.default.getter();
  v213 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v58 = swift_allocObject();
  v204 = xmmword_10138BBE0;
  *(v58 + 16) = xmmword_10138BBE0;
  v59 = v217;
  v60 = v217[2];
  *(v58 + 56) = &type metadata for Int;
  *(v58 + 64) = &protocol witness table for Int;
  *(v58 + 32) = v60;
  sub_100004114(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v61 = v205;
  v62 = dispatch thunk of CustomStringConvertible.description.getter();
  v64 = v63;
  *(v58 + 96) = &type metadata for String;
  v214 = sub_100008C00();
  *(v58 + 104) = v214;
  *(v58 + 72) = v62;
  *(v58 + 80) = v64;
  os_log(_:dso:log:_:_:)(v56, &_mh_execute_header, v57, "Found %i records at %@", 22, 2, v58);

  (*(v211 + 8))(v61, v43);

  __chkstk_darwin(v65);
  *(&v174 - 2) = v210;
  v66 = v208;
  v67 = v215;
  sub_1012BD72C(sub_101149C70, v59, v208);

  v68 = v207;
  if ((*(v206 + 6))(v66, 1, v207) != 1)
  {
    v86 = v202;
    sub_101149EC4(v66, v202, type metadata accessor for ShareRecord);
    v87 = *(v209 + 320);
    v88 = v86 + *(v68 + 20);
    v89 = v199;
    v90 = static Date.trustedNow.getter(v199);
    __chkstk_darwin(v90);
    v211 = v87;
    *(&v174 - 4) = v87;
    *(&v174 - 24) = 6;
    *(&v174 - 2) = v88;
    v91 = v198;
    v92 = v201;
    OS_dispatch_queue.sync<A>(execute:)();
    v215 = v67;
    Date.timeIntervalSince(_:)();
    v94 = v93;
    v95 = v200;
    v97 = v200 + 8;
    v96 = *(v200 + 8);
    v96(v91, v92);
    v96(v89, v92);
    if (v94 <= 72000.0)
    {
      v106 = static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v107 = qword_10177C378;
      v108 = swift_allocObject();
      *(v108 + 16) = v204;
      v109 = UUID.uuidString.getter();
      v110 = v214;
      *(v108 + 56) = &type metadata for String;
      *(v108 + 64) = v110;
      *(v108 + 32) = v109;
      *(v108 + 40) = v111;
      v112 = UUID.uuidString.getter();
      *(v108 + 96) = &type metadata for String;
      *(v108 + 104) = v110;
      *(v108 + 72) = v112;
      *(v108 + 80) = v113;
      os_log(_:dso:log:_:_:)(v106, &_mh_execute_header, v107, "Skipping key request processing (requested too early): %@, beacon: %@", 69, 2, v108);
      goto LABEL_19;
    }

    v206 = v96;
    v207 = v97;
    v208 = v88;
    v98 = v194;
    v99 = v212;
    sub_100AA33AC(v212, v194);
    if ((*(v192 + 48))(v98, 1, v193) == 1)
    {
      sub_10000B3A8(v98, &unk_1016A9A20, &qword_10138B280);
      v100 = static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v101 = qword_10177C378;
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_101385D80;
      v103 = UUID.uuidString.getter();
      v104 = v214;
      *(v102 + 56) = &type metadata for String;
      *(v102 + 64) = v104;
      *(v102 + 32) = v103;
      *(v102 + 40) = v105;
      os_log(_:dso:log:_:_:)(v100, &_mh_execute_header, v101, "No beacon record found for %@", 29, 2, v102);
LABEL_19:

      v114 = v86;
LABEL_20:
      sub_101149F94(v114, type metadata accessor for ShareRecord);
      return;
    }

    sub_101149EC4(v98, v195, type metadata accessor for OwnedBeaconRecord);
    v115 = v187;
    if (v187)
    {

      v116 = v99;
      v117 = v181;
      sub_100AA5198(v116, v181);
      v118 = v180;
      v119 = (*(v182 + 48))(v117, 1, v180);
      v120 = v214;
      if (v119 == 1)
      {

        sub_10000B3A8(v117, &unk_101698C30, &unk_101392630);
      }

      else
      {
        v115 = v118;
        v121 = v183;
        sub_101149EC4(v117, v183, type metadata accessor for SharedBeaconRecord);
        v122 = v121 + *(v115 + 28);
        v123 = *(v122 + 1);
        v124 = *(v122 + 2);
        if (*v122 == v179 && (v123 == v178 && v124 == v187 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          sub_101149F94(v183, type metadata accessor for SharedBeaconRecord);
        }

        else
        {
          v125 = static os_log_type_t.default.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          v126 = qword_10177C378;
          v127 = swift_allocObject();
          *(v127 + 16) = v204;
          *(v127 + 56) = &type metadata for String;
          *(v127 + 64) = v120;
          *(v127 + 32) = v123;
          *(v127 + 40) = v124;
          *(v127 + 96) = &type metadata for String;
          *(v127 + 104) = v120;
          v128 = v178;
          v129 = v187;
          *(v127 + 72) = v178;
          *(v127 + 80) = v129;

          os_log(_:dso:log:_:_:)(v125, &_mh_execute_header, v126, "ownerHandle updated: %@ -> %@", 29, 2, v127);

          v130 = swift_allocObject();
          *(v130 + 16) = v179;
          *(v130 + 3) = v128;
          *(v130 + 4) = v129;
          v212 = v130;

          v131 = static os_log_type_t.default.getter();
          if (qword_101695038 != -1)
          {
            swift_once();
          }

          v132 = qword_10177C380;
          v133 = swift_allocObject();
          *(v133 + 16) = xmmword_101385D80;
          *(v133 + 56) = &type metadata for String;
          *(v133 + 64) = v120;
          *(v133 + 32) = 0x65736C6166;
          *(v133 + 40) = 0xE500000000000000;
          os_log(_:dso:log:_:_:)(v131, &_mh_execute_header, v132, "Modify record. Disk First? (%@)", 31, 2, v133);

          v43 = objc_autoreleasePoolPush();
          v134 = v183;
          v135 = v215;
          sub_101122288(v183);
          if (v135)
          {
LABEL_49:
            objc_autoreleasePoolPop(v43);
            __break(1u);
            return;
          }

          v137 = v136;
          objc_autoreleasePoolPop(v43);
          sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
          type metadata accessor for CloudKitCoordinator();
          OSAllocatedUnfairLock.callAsFunction<A>(_:)();
          v215 = 0;
          *&v204 = type metadata accessor for SharedBeaconRecord;
          v115 = v175;
          sub_101149F2C(v134, v175, type metadata accessor for SharedBeaconRecord);
          v138 = *(v182 + 80);
          v139 = swift_allocObject();
          v140 = v212;
          *(v139 + 16) = sub_101149CB4;
          *(v139 + 24) = v140;
          v203 = type metadata accessor for SharedBeaconRecord;
          sub_101149EC4(v115, v139 + ((v138 + 32) & ~v138), type metadata accessor for SharedBeaconRecord);

          v205 = v137;
          v198 = sub_100FDCA40(v137, sub_10114A058, v139);

          v141 = swift_allocObject();
          v142 = v177;
          *(v141 + 16) = sub_101149CC0;
          *(v141 + 24) = v142;

          Future.addFailure(block:)();

          sub_101149F2C(v134, v115, v204);
          v143 = (v138 + 16) & ~v138;
          v144 = (v176 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
          v145 = swift_allocObject();
          sub_101149EC4(v115, v145 + v143, v203);
          *(v145 + v144) = v197;
          v146 = (v145 + ((v144 + 15) & 0xFFFFFFFFFFFFFFF8));
          *v146 = sub_101149CC0;
          v146[1] = v142;

          Future.addSuccess(block:)();

          sub_101149F94(v183, type metadata accessor for SharedBeaconRecord);
          v92 = v201;
          v86 = v202;
          v95 = v200;
        }
      }
    }

    v147 = v191;
    static Date.trustedNow.getter(v191);
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v148 = v215;
    OS_dispatch_queue.sync<A>(execute:)();
    v215 = v148;
    v149 = v217;
    v150 = sub_101073EF8(v217);
    if ((v150 * 60) >> 64 == (60 * v150) >> 63)
    {
      Date.timeIntervalSinceReferenceDate.getter();
      v151 = v188;
      Date.init(timeIntervalSinceReferenceDate:)();
      v115 = *(v95 + 16);
      (v115)(v89, v151, v92);
      v152 = v89;
      v153 = v186;
      DateInterval.init(start:duration:)();
      sub_100565590(v153, v86, v189);
      v154 = *(v196 + 8);
      v196 += 8;
      v154(v153, v190);
      v155 = sub_101073F14(v149);
      (v115)(v152, v147, v92);
      if ((v155 * 60) >> 64 == (60 * v155) >> 63)
      {
        v212 = v154;
        v156 = v185;
        DateInterval.init(start:duration:)();
        v157 = sub_101073F4C(v149);

        (v115)(v152, v147, v92);
        if ((v157 * 60) >> 64 == (60 * v157) >> 63)
        {
          v158 = v92;
          v159 = v184;
          DateInterval.init(start:duration:)();
          static Date.trustedNow.getter(v152);
          sub_1010B1D04(v208, v152, 6);
          v160 = v206;
          v206(v152, v158);
          v161 = type metadata accessor for MessagingMessageContext(0);
          v162 = v195;
          v163 = v189;
          v164 = v215;
          sub_100564334(v195, v189, v159, v156, *(v210 + *(v161 + 24)), *(v210 + *(v161 + 24) + 8), *(v210 + *(v161 + 24) + 16));
          v215 = v164;
          if (!v164)
          {
            v172 = v190;
            v173 = v212;
            v212(v159, v190);
            v173(v156, v172);
            v173(v163, v172);
            v160(v188, v158);
            v160(v191, v158);
            sub_101149F94(v162, type metadata accessor for OwnedBeaconRecord);
            v114 = v202;
            goto LABEL_20;
          }

          v165 = v190;
          v166 = v212;
          v212(v159, v190);
          v166(v156, v165);
          v166(v163, v165);
          v160(v188, v158);
          v160(v191, v158);
          sub_1010B22E4(v208, 6);
          v115 = static os_log_type_t.error.getter();
          if (qword_101695030 == -1)
          {
LABEL_42:
            v167 = qword_10177C378;
            v168 = swift_allocObject();
            *(v168 + 16) = xmmword_101385D80;
            v217 = v215;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v169 = String.init<A>(describing:)();
            v170 = v214;
            *(v168 + 56) = &type metadata for String;
            *(v168 + 64) = v170;
            *(v168 + 32) = v169;
            *(v168 + 40) = v171;
            os_log(_:dso:log:_:_:)(v115, &_mh_execute_header, v167, "Failed to sendKeys %@", 21, 2, v168);

            sub_101149F94(v195, type metadata accessor for OwnedBeaconRecord);
            sub_101149F94(v202, type metadata accessor for ShareRecord);
            return;
          }

LABEL_47:
          swift_once();
          goto LABEL_42;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_46;
  }

  sub_10000B3A8(v66, &qword_1016A4780, &qword_1013B34F0);
  v69 = static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v70 = qword_10177C378;
  v71 = swift_allocObject();
  *(v71 + 16) = v204;
  v72 = type metadata accessor for MessagingMessageContext(0);
  v73 = v210;
  v74 = (v210 + *(v72 + 48));
  v76 = *v74;
  v75 = v74[1];
  v77 = v214;
  *(v71 + 56) = &type metadata for String;
  *(v71 + 64) = v77;
  *(v71 + 32) = v76;
  *(v71 + 40) = v75;

  v78 = v212;
  v79 = UUID.uuidString.getter();
  *(v71 + 96) = &type metadata for String;
  *(v71 + 104) = v77;
  *(v71 + 72) = v79;
  *(v71 + 80) = v80;
  os_log(_:dso:log:_:_:)(v69, &_mh_execute_header, v70, "Unknown requester: %@, beacon: %@", 33, 2, v71);

  v81 = v73 + *(v72 + 24);
  v82 = *v81;
  v83 = *(v81 + 8);
  v84 = *(v81 + 16);
  v85 = type metadata accessor for Transaction();
  __chkstk_darwin(v85);
  *(&v174 - 6) = v209;
  *(&v174 - 5) = v78;
  *(&v174 - 32) = v82;
  *(&v174 - 3) = v83;
  *(&v174 - 2) = v84;
  static Transaction.named<A>(_:with:)();
}

uint64_t sub_101146814(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for ShareRecord(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = (a2 + *(type metadata accessor for MessagingMessageContext(0) + 48));
  if (v4 == *v6 && v5 == v6[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_101146898(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 + *(type metadata accessor for SharedBeaconRecord(0) + 28);

  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  return result;
}

uint64_t sub_101146900(uint64_t a1)
{
  v2 = type metadata accessor for SharedBeaconRecord(0);
  v3 = __chkstk_darwin(v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v25 - v6;
  v8 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  __chkstk_darwin(v8);
  v10 = (v25 - v9);
  Transaction.capture()();
  sub_1000D2A70(a1, v10, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v13 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    v25[1] = v11;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Failed to update SharedBeaconRecord: %@", 39, 2, v14);
  }

  else
  {
    sub_101149EC4(v10, v7, type metadata accessor for SharedBeaconRecord);
    v19 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v20 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_101385D80;
    sub_101149F2C(v7, v5, type metadata accessor for SharedBeaconRecord);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100008C00();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "Successfully updated: %@", 24, 2, v21);

    return sub_101149F94(v7, type metadata accessor for SharedBeaconRecord);
  }
}

uint64_t sub_101146C64(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v145 = a3;
  v146 = a2;
  v130 = type metadata accessor for DispatchQoS.QoSClass();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for DispatchWorkItemFlags();
  v136 = *(v141 - 8);
  __chkstk_darwin(v141);
  v133 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for DispatchQoS();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v132 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for DispatchTime();
  v127 = *(v131 - 8);
  v7 = __chkstk_darwin(v131);
  v125 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v126 = &v109 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v143 = v10;
  v144 = v11;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v140 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v137 = &v109 - v15;
  __chkstk_darwin(v14);
  v142 = &v109 - v16;
  v17 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v17);
  v19 = (&v109 - v18);
  v20 = type metadata accessor for SystemInfo.DeviceLockState();
  v138 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v23 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v109 - v24;
  v26 = type metadata accessor for DispatchPredicate();
  v139 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = (&v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v29 - 8);
  v31 = &v109 - v30;

  sub_10053D538(2, 1, a1, &aBlock);
  v123 = v26;
  v120 = v25;
  v121 = v23;
  v122 = 0;
  v32 = v145;
  v117 = v17;
  v118 = v19;
  v116 = v12;
  v124 = v31;
  v33 = aBlock;
  v35 = v149;
  v34 = v150;
  v36 = v151;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_100016590(v34, v36);
  }

  v38 = Strong;
  v113 = v35;
  v114 = v33;
  v119 = v34;
  v146 = v36;
  v39 = type metadata accessor for MessagingMessageContext(0);
  v40 = *(v39 + 20);
  v41 = (v32 + *(v39 + 24));
  v112 = *v41;
  v43 = *(v41 + 1);
  v42 = *(v41 + 2);
  v111 = v43;
  v110 = v42;
  v44 = v143;
  v45 = v144;
  v46 = v144 + 16;
  v47 = v124;
  v115 = *(v144 + 16);
  v115(v124, v32 + v40, v143);
  (*(v45 + 56))(v47, 0, 1, v44);
  v48 = *(v38 + 168);
  *v28 = v48;
  v49 = v139;
  v50 = v123;
  (*(v139 + 13))(v28, enum case for DispatchPredicate.notOnQueue(_:), v123);
  v51 = v48;
  LOBYTE(v48) = _dispatchPreconditionTest(_:)();
  v53 = *(v49 + 1);
  v52 = v49 + 8;
  v54 = v53(v28, v50);
  if ((v48 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v55 = v120;
  static SystemInfo.lockState.getter();
  v56 = v138;
  v57 = v121;
  (v138[13].isa)(v121, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v20);
  sub_100004114(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  isa = v56[1].isa;
  isa(v57, v20);
  isa(v55, v20);
  v60 = v141;
  v61 = v142;
  v62 = v140;
  v63 = v122;
  if (v58)
  {
    v54 = static os_log_type_t.error.getter();
    v52 = v119;
    if (qword_101695030 == -1)
    {
LABEL_5:
      os_log(_:dso:log:_:_:)(v54, &_mh_execute_header, qword_10177C378, "Attempt to send local message before first unlock!", 50, 2, _swiftEmptyArrayStorage);
      type metadata accessor for SPOwnerSessionError(0);
      v147 = 5;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100004114(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
      _BridgedStoredNSError.init(_:userInfo:)();
      v64 = v118;
      *v118 = aBlock;
      swift_storeEnumTagMultiPayload();
      sub_10114808C(v64);
      sub_100016590(v52, v146);

      sub_10000B3A8(v64, &qword_10169F358, &qword_1013A0810);
      return sub_10000B3A8(v124, &qword_1016980D0, &unk_10138F3B0);
    }

LABEL_15:
    v107 = v54;
    swift_once();
    v54 = v107;
    goto LABEL_5;
  }

  v108 = v47;
  v66 = v137;
  sub_100543BF0(v114, v113, v119, v146, v111, v110, 0, v137, v108, 0, 1, 0);
  if (v63)
  {
    v67 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v68 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_101385D80;
    aBlock = v63;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v70 = String.init<A>(describing:)();
    v72 = v71;
    *(v69 + 56) = &type metadata for String;
    *(v69 + 64) = sub_100008C00();
    *(v69 + 32) = v70;
    *(v69 + 40) = v72;
    os_log(_:dso:log:_:_:)(v67, &_mh_execute_header, v68, "Message send error: %@", 22, 2, v69);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v73 = v129;
    v74 = v128;
    v75 = v130;
    (*(v129 + 104))(v128, enum case for DispatchQoS.QoSClass.default(_:), v130);
    v76 = static OS_dispatch_queue.global(qos:)();
    (*(v73 + 8))(v74, v75);
    v77 = swift_allocObject();
    v77[2] = sub_10114808C;
    v77[3] = 0;
    v77[4] = v63;
    v152 = sub_1011482E0;
    v153 = v77;
    aBlock = _NSConcreteStackBlock;
    v149 = 1107296256;
    v150 = sub_100006684;
    v151 = &unk_1016687B0;
    v78 = _Block_copy(&aBlock);
    swift_errorRetain();
    v79 = v132;
    static DispatchQoS.unspecified.getter();
    v147 = _swiftEmptyArrayStorage;
    sub_100004114(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v80 = v133;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    sub_100016590(v119, v146);
    _Block_release(v78);

    (*(v136 + 8))(v80, v60);
    (*(v134 + 8))(v79, v135);
    sub_10000B3A8(v124, &qword_1016980D0, &unk_10138F3B0);
  }

  v81 = v143;
  v82 = v144 + 32;
  v83 = *(v144 + 32);
  v83(v61, v66, v143);
  v139 = v83;
  sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
  swift_allocObject();
  v84 = Future.init()();
  v109 = v46;
  v145 = v84;
  v115(v62, v61, v81);
  v85 = *(v82 + 48);
  v86 = (v85 + 24) & ~v85;
  v128 = (v86 + v116);
  v87 = (v86 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  *(v88 + 16) = v38;
  v129 = v86;
  v83((v88 + v86), v62, v81);
  v89 = (v88 + v87);
  *v89 = sub_10114808C;
  v89[1] = 0;

  v90 = v145;
  Future.addSuccess(block:)();

  v91 = swift_allocObject();
  *(v91 + 16) = sub_10114808C;
  *(v91 + 24) = 0;
  v92 = v90;
  Future.addFailure(block:)();

  v138 = *(v38 + 168);
  v115(v62, v61, v81);
  v93 = (v85 + 16) & ~v85;
  v94 = (v116 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v95 = swift_allocObject();
  v137 = v82;
  v139((v95 + v93), v62, v81);
  *(v95 + v94) = v38;
  *(v95 + ((v94 + 15) & 0xFFFFFFFFFFFFFFF8)) = v92;
  v96 = swift_allocObject();
  *(v96 + 16) = sub_10058B568;
  *(v96 + 24) = v95;
  v130 = v95;
  v152 = sub_1000D2FB0;
  v153 = v96;
  aBlock = _NSConcreteStackBlock;
  v149 = 1107296256;
  v150 = sub_10013FE14;
  v151 = &unk_101668878;
  v97 = _Block_copy(&aBlock);

  dispatch_sync(v138, v97);
  _Block_release(v97);
  LOBYTE(v94) = swift_isEscapingClosureAtFileLocation();

  if ((v94 & 1) == 0)
  {
    v123 = *(v38 + 168);
    v98 = v125;
    static DispatchTime.now()();
    v99 = v126;
    + infix(_:_:)();
    v138 = *(v127 + 8);
    (v138)(v98, v131);
    v100 = v140;
    v101 = v143;
    v115(v140, v142, v143);
    v102 = swift_allocObject();
    *(v102 + 16) = v38;
    v139((v102 + v129), v100, v101);
    v152 = sub_101148398;
    v153 = v102;
    aBlock = _NSConcreteStackBlock;
    v149 = 1107296256;
    v150 = sub_100006684;
    v151 = &unk_1016688C8;
    v103 = _Block_copy(&aBlock);

    v104 = v132;
    static DispatchQoS.unspecified.getter();
    v147 = _swiftEmptyArrayStorage;
    sub_100004114(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v105 = v133;
    v106 = v141;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    sub_100016590(v119, v146);
    _Block_release(v103);

    (*(v136 + 8))(v105, v106);
    (*(v134 + 8))(v104, v135);
    (v138)(v99, v131);
    (*(v144 + 8))(v142, v101);
    sub_10000B3A8(v124, &qword_1016980D0, &unk_10138F3B0);
  }

  __break(1u);
  return result;
}

uint64_t sub_10114808C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v2);
  v4 = &v13 - v3;
  sub_1000D2A70(a1, &v13 - v3, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_10000B3A8(v4, &qword_10169F358, &qword_1013A0810);
  }

  v5 = static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C378;
  if (os_log_type_enabled(qword_10177C378, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_1000136BC(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v6, v5, "Error sending CompanionBeaconsWithYouResponse: (%s", v7, 0xCu);
    sub_100007BAC(v8);
  }
}

uint64_t sub_10114827C()
{
  v1 = *(type metadata accessor for MessagingMessageContext(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_101146C64(v2, v3, v4);
}

uint64_t sub_1011482EC(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_100544E18(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_101148398()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100546298(v2, v3);
}

uint64_t sub_1011483FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1016944B0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&qword_1016A4768, &unk_1013B10E0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (a3)
  {
    if ((v23 & 1) == 0)
    {
      sub_101135038(v22);
      v9 = sub_101129930(v8);

      v10 = sub_10111EACC(a2, a3, v9);
      goto LABEL_11;
    }
  }

  else if ((v23 & 1) == 0)
  {
    sub_100527E88(v22);
    v14 = sub_101129FC8(v13);

    v15 = type metadata accessor for MessagingMessageContext(0);
    v16 = sub_100B5E0B8(*(a1 + *(v15 + 24)), *(a1 + *(v15 + 24) + 8), *(a1 + *(v15 + 24) + 16));
    v19 = sub_10111FDB4(v16, v17, v18, v14);

    if (v19)
    {
      v11 = 1;
LABEL_12:

      v12 = 0;
      goto LABEL_13;
    }

    v20 = type metadata accessor for SharedBeaconRecord(0);
    v10 = sub_10111FDB4(*(a4 + *(v20 + 28)), *(a4 + *(v20 + 28) + 8), *(a4 + *(v20 + 28) + 16), v14);
LABEL_11:
    v11 = v10;
    goto LABEL_12;
  }

  v11 = 0;
  v12 = 1;
LABEL_13:
  sub_1001DB7B8(v22, v12);
  return v11 & 1;
}

uint64_t sub_1011485AC(uint64_t a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_1011368C8(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_101148668()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);

  v3 = v0 + ((v2 + 32) & ~v2);
  sub_100016590(*v3, *(v3 + 8));
  v4 = v1[5];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v1[6], v5);

  v8 = v1[18];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v1[19];
  v11 = *(v6 + 48);
  if (!v11(v3 + v10, 1, v5))
  {
    v7(v3 + v10, v5);
  }

  v12 = v3 + v1[20];
  v13 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v13 + 20);
    if (!v11(v12 + v14, 1, v5))
    {
      v7(v12 + v14, v5);
    }
  }

  return _swift_deallocObject(v0, ((v2 + 32) & ~v2) + v16);
}

uint64_t sub_1011488EC(uint64_t a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_101137AEC(a1, v4, v5, v6);
}

uint64_t sub_101148994()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v19 = *(*(v5 - 1) + 80);
  v18 = *(*(v5 - 1) + 64);

  v6 = *(v2 + 8);
  v6(v0 + v3, v1);

  v7 = v2;

  v8 = (v19 + v4 + 8) & ~v19;
  v9 = v0 + v8;
  sub_100016590(*v9, *(v9 + 8));
  v6(v0 + v8 + v5[5], v1);
  v6(v0 + v8 + v5[6], v1);

  v10 = v5[18];
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 8))(v0 + v8 + v10, v11);
  v12 = v5[19];
  v13 = *(v7 + 48);
  if (!v13(v0 + v8 + v12, 1, v1))
  {
    v6(v9 + v12, v1);
  }

  v14 = v9 + v5[20];
  v15 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v16 = *(v15 + 20);
    if (!v13(v14 + v16, 1, v1))
    {
      v6(v14 + v16, v1);
    }
  }

  return _swift_deallocObject(v0, v8 + v18);
}

uint64_t sub_101148CBC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v10 = *(v2 + v6);
  v11 = *(v2 + 16);
  v12 = *(v2 + v7);
  v13 = *(v2 + v8);
  v14 = v2 + ((*(v9 + 80) + v8 + 8) & ~*(v9 + 80));

  return a2(a1, v11, v2 + v5, v10, v12, v13, v14);
}

uint64_t sub_101148DD8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_101148F58(uint64_t a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  type metadata accessor for UUID();
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  sub_10113E168(a1, v5, v6, v1 + v4);
}

uint64_t sub_10114910C()
{
  v1 = type metadata accessor for MessagingMessageContext(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v0 + v2, 1, v5);
  v8 = *(v6 + 8);
  if (!v7)
  {
    v8(v0 + v2, v5);
  }

  v8(v4 + *(v1 + 20), v5);

  v9 = *(v1 + 44);
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v4 + v9, v10);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10114932C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_101149428(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a2(a1, v6, v7, v2 + v5, v9, v10);
}

uint64_t sub_1011494E0()
{
  v1 = type metadata accessor for ShareRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v12 = *(*(v1 - 1) + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[5];
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v5(v0 + v2 + v1[6], v4);
  v6 = v1[7];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v1[8];
  if (!(*(v8 + 48))(v0 + v2 + v10, 1, v7))
  {
    v9(v0 + v2 + v10, v7);
  }

  return _swift_deallocObject(v0, v2 + v12);
}

uint64_t sub_1011496BC(char a1)
{
  v3 = *(type metadata accessor for ShareRecord(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + v5);
  v10 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_101140F80(a1, v8, v1 + v4, v9, v1 + v7, v11, v12);
}

uint64_t sub_1011497D4(char a1)
{
  v3 = *(type metadata accessor for ShareRecord(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  v10 = (v9 + v7 + v8) & ~v7;
  v11 = *(v1 + v5);
  v12 = *(v1 + 16);
  v13 = (v1 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  return sub_10113D5E0(a1, v12, v1 + v4, v11, v1 + v8, v1 + v10, v14, v15);
}

uint64_t sub_1011498FC(uint64_t a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_101141B80(a1, v4);
}

uint64_t sub_1011499C4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_101141F0C(v3, v0 + v2, v4);
}

uint64_t sub_101149AC8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_101149BC0(uint64_t (*a1)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);

  return a1(v7, v8, v1 + v3, v5, v6);
}

uint64_t sub_101149CC8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8);
}

uint64_t sub_101149D54(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = (v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return a3(a1, v3 + v6, v8, v10, v11);
}

uint64_t sub_101149E18()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4 + 8);
  v7 = *(v0 + v4 + 16);
  v8 = *(v0 + ((v4 + 31) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v0 + v4);

  return sub_1011440C0(v0 + v2, v5, v9, v6, v7, v8);
}

uint64_t sub_101149EC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_101149F2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_101149F94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10114A090@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v10, v10[3]);
  v5 = dispatch thunk of BinaryDecodingContaining.decode()();
  if (v2)
  {
    sub_100007BAC(v10);
    return sub_100007BAC(a1);
  }

  else
  {
    v8 = v5;
    v9 = v6;
    sub_100007BAC(v10);
    result = sub_100007BAC(a1);
    *a2 = v8;
    a2[1] = v9;
  }

  return result;
}

unint64_t sub_10114A150(uint64_t a1)
{
  *(a1 + 8) = sub_10114A180();
  result = sub_10064D520();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10114A180()
{
  result = qword_1016C9360;
  if (!qword_1016C9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9360);
  }

  return result;
}

Class sub_10114A1D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_100771D58(a1, a2);
  if ((v7 & 1) == 0)
  {

    return 0;
  }

  sub_1010100EC(*(v5 + 56) + 48 * v6, &v58);

  v60 = v58;
  v61[0] = *v59;
  *(v61 + 9) = *&v59[9];
  sub_1010100EC(&v60, &v58);
  if (v59[24] > 1u)
  {
    if (v59[24] != 2)
    {
      sub_10000A748(&v58, v55);
      v21 = sub_1000035D0(v55, v56);
      __chkstk_darwin(v21);
      (*(v23 + 16))(&v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();
      v24.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
LABEL_47:
      isa = v24.super.super.isa;
      sub_10118B5A0(&v60);
      sub_100007BAC(v55);
      return isa;
    }

    sub_10000A748(&v58, v55);
    v11 = v56;
    v12 = sub_1000035D0(v55, v56);
    v13 = *(v11 - 8);
    v14 = *(v13 + 64);
    __chkstk_darwin(v12);
    v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      v54 = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        v16 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v16 < 64)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v25 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v16 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if ((v25 & 1) == 0)
        {
          if (v16 >= 64)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        if (v16 <= 64)
        {
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v53 = &v51;
          __chkstk_darwin(AssociatedTypeWitness);
          swift_getAssociatedConformanceWitness();
          v29 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v52 = &v51;
          __chkstk_darwin(v29);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v30 = dispatch thunk of static Comparable.< infix(_:_:)();
          v27 = *(v13 + 8);
          v27(&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
          if ((v30 & 1) == 0)
          {
LABEL_23:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_24;
          }

LABEL_19:
          v27(&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
LABEL_29:
          v35 = v56;
          v36 = v57;
          v37 = sub_1000035D0(v55, v56);
          v38 = *(v35 - 8);
          v39 = *(v38 + 64);
          __chkstk_darwin(v37);
          v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
          (*(v38 + 16))(&v51 - v40);
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v41 = swift_getAssociatedTypeWitness();
            v51 = &v51;
            __chkstk_darwin(v41);
            v53 = v36;
            swift_getAssociatedConformanceWitness();
            v42 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v52 = &v51;
            __chkstk_darwin(v42);
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v43 = dispatch thunk of static Comparable.>= infix(_:_:)();
            result = (*(v38 + 8))(&v51 - v40, v35);
            if ((v43 & 1) == 0)
            {
              __break(1u);
              return result;
            }
          }

          if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 63)
          {
            goto LABEL_46;
          }

          v54 = -1;
          v44 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v45 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v44)
          {
            if (v45 <= 64)
            {
              v46 = swift_getAssociatedTypeWitness();
              v53 = &v51;
              __chkstk_darwin(v46);
              swift_getAssociatedConformanceWitness();
              v47 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
              __chkstk_darwin(v47);
              dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
              v48 = dispatch thunk of static Comparable.> infix(_:_:)();
              (*(v38 + 8))(&v51 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v35);
              if ((v48 & 1) == 0)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            }
          }

          else if (v45 < 65)
          {
            goto LABEL_45;
          }

          __chkstk_darwin(v45);
          sub_10118F230();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v49 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v38 + 8))(&v51 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v35);
          if ((v49 & 1) == 0)
          {
LABEL_46:
            dispatch thunk of BinaryInteger._lowWord.getter();
            (*(v38 + 8))(&v51 - v40, v35);
            v24.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
            goto LABEL_47;
          }

          __break(1u);
LABEL_45:
          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_46;
        }
      }

      v53 = &v51;
      __chkstk_darwin(v16);
      sub_1000DF9C0();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *(v13 + 8);
      v27(&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
      if (v26)
      {
        goto LABEL_19;
      }
    }

LABEL_24:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
    {
      goto LABEL_41;
    }

    v54 = 0x7FFFFFFFFFFFFFFFLL;
    v31 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v32 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v31)
    {
      if (v32 > 64)
      {
        goto LABEL_27;
      }
    }

    else if (v32 > 63)
    {
LABEL_27:
      __chkstk_darwin(v32);
      sub_1000DF9C0();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v33 = dispatch thunk of static Comparable.< infix(_:_:)();
      v34 = *(v13 + 8);
      v34(&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
      if (v33)
      {
        v34(v15, v11);
        goto LABEL_29;
      }

LABEL_41:
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v13 + 8))(v15, v11);
      v24.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
      goto LABEL_47;
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_41;
  }

  if (v59[24])
  {
    sub_10000A748(&v58, v55);
    v17 = sub_1000035D0(v55, v56);
    __chkstk_darwin(v17);
    (*(v19 + 16))(&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    String.init<A>(_:)();
    v20 = String._bridgeToObjectiveC()();

    sub_10118B5A0(&v60);
    sub_100007BAC(v55);
    return v20;
  }

  else
  {
    v8 = v58;
    sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
    v9 = NSNumber.init(BOOLeanLiteral:)(v8).super.super.isa;
    sub_10118B5A0(&v60);
    return v9;
  }
}

void sub_10114AED8(void *a1, unint64_t a2, void *a3)
{
  v6 = v3;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v8 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v8, object, qword_10177C6E8))
    {
      break;
    }

    v231 = v6;
    a2 = sub_100908768(a2);
    sub_10000B3A8(a3, &qword_101699340, &qword_1013918A0);
    v6 = a2 + 64;
    v15 = 1 << *(a2 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a2 + 64);
    swift_beginAccess();
    v18 = 0;
    v19 = (v15 + 63) >> 6;
    *&v20 = 138412290;
    v230 = v20;
    v233 = a1;
    v232 = a2;
    while (v17)
    {
LABEL_15:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = (v18 << 10) | (16 * v22);
      v24 = *(a2 + 56);
      v25 = (*(a2 + 48) + v23);
      v26 = v25[1];
      v236 = *v25;
      v27 = (v24 + v23);
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = a1[14];
      v31 = *(v30 + 16);
      v237 = v26;

      v235 = v28;
      sub_10090C56C(v28, v29);
      v234 = v29;
      if (v31)
      {

        v32 = sub_100771D58(v236, v237);
        if ((v33 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v30 + 56) + 48 * v32, &v244);

        if (v29 <= 1)
        {
          if (v29)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v35 = NSNumber.init(BOOLeanLiteral:)(v235 & 1).super.super.isa;
          }

          else
          {
            v34 = v235;
            sub_10090C56C(v235, 0);
            v35 = v34;
          }

          v95 = v35;
          goto LABEL_102;
        }

        if (v29 != 2)
        {
          sub_1010100EC(&v244, &v239);
          if (v240[24] != 3)
          {
LABEL_145:

            sub_10118B5A0(&v239);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v244);
            return;
          }

          v96 = v235;
          sub_10000A748(&v239._countAndFlagsBits, v241);
          v97 = sub_1000035D0(v241, v242);
          __chkstk_darwin(v97);
          (*(v99 + 16))(v224 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v233;
          v95 = [objc_allocWithZone(NSNumber) initWithDouble:*&v239._countAndFlagsBits + *&v96];
          sub_100007BAC(v241);
          goto LABEL_102;
        }

        sub_1010100EC(&v244, &v239);
        if (v240[24] != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v239._countAndFlagsBits, v241);
        v80 = v242;
        v79 = v243;
        v81 = sub_1000035D0(v241, v242);
        v228 = v224;
        __chkstk_darwin(v81);
        v226 = v82;
        v83 = v224 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
        v229 = v84;
        (*(v84 + 16))(v83);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v239._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v85 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v85 < 64)
            {
              goto LABEL_89;
            }

            v227 = v79;
            v225 = v224;
            __chkstk_darwin(v85);
            v87 = v224 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v88 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v229 + 8))(v87, v80);
            v79 = v227;
            if (v88)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v225) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v126 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v225)
            {
              v227 = v79;
              if (v126 <= 64)
              {
                v225 = *(*(v79 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v224[2] = v224;
                __chkstk_darwin(AssociatedTypeWitness);
                v224[0] = v224 - v132;
                swift_getAssociatedConformanceWitness();
                v133 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v224[1] = v224;
                __chkstk_darwin(v133);
                v135 = v224 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v136 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v229 + 8))(v135, v80);
                if (v136)
                {
                  goto LABEL_163;
                }

                v79 = v227;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v225 = v224;
              __chkstk_darwin(v126);
              v128 = v224 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v129 = dispatch thunk of static Comparable.< infix(_:_:)();
              v130 = v128;
              v79 = v227;
              (*(v229 + 8))(v130, v80);
              if (v129)
              {
                goto LABEL_163;
              }
            }

            else if (v126 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v239._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v137 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v138 = v79;
          v139 = v137;
          v227 = v138;
          v140 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v139)
          {
            if (v140 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v140 >= 64)
          {
LABEL_93:
            v225 = v224;
            __chkstk_darwin(v140);
            v226 = v224 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v142 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v229 + 8))(v226, v80);
            if (v142)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v143 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v229 + 8))(v83, v80);
        v49 = __OFADD__(v143, v235);
        v144 = &v235[v143];
        if (v49)
        {
          goto LABEL_154;
        }

        v95 = [objc_allocWithZone(NSNumber) initWithLongLong:v144];
        sub_100007BAC(v241);
        a1 = v233;
LABEL_102:
        objc_opt_self();
        v145 = swift_dynamicCastObjCClass();
        if (v145)
        {
          v146 = v145;
          v147 = v95;
          v148 = String.init(_:)(v146);
          v149 = a1;
          v150 = sub_1000DF96C();
          swift_beginAccess();
          v239 = v148;
          *&v240[8] = &type metadata for String;
          *&v240[16] = v150;
          v240[24] = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v238 = v149[14];
          v152 = v238;
          v149[14] = 0x8000000000000000;
          v153 = sub_100771D58(v236, v237);
          v155 = v152[2];
          v156 = (v154 & 1) == 0;
          v49 = __OFADD__(v155, v156);
          v157 = v155 + v156;
          if (v49)
          {
            goto LABEL_151;
          }

          v158 = v154;
          if (v152[3] >= v157)
          {
            a2 = v232;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v219 = v153;
              sub_1010050E8();
              v153 = v219;
            }
          }

          else
          {
            sub_100FE65C4(v157, isUniquelyReferenced_nonNull_native);
            v153 = sub_100771D58(v236, v237);
            a2 = v232;
            if ((v158 & 1) != (v159 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v233;
          if (v158)
          {
            v178 = v153;

            a3 = v238;
            sub_10118B568(&v239, v238[7] + 48 * v178);
          }

          else
          {
            a3 = v238;
            v238[(v153 >> 6) + 8] |= 1 << v153;
            v179 = (a3[6] + 16 * v153);
            v180 = v237;
            *v179 = v236;
            v179[1] = v180;
            v181 = (a3[7] + 48 * v153);
            v182 = *&v240[9];
            v183 = *v240;
            *v181 = v239;
            v181[1] = v183;
            *(&v181[1]._object + 1) = v182;
            v184 = a3[2];
            v49 = __OFADD__(v184, 1);
            v185 = v184 + 1;
            if (v49)
            {
              goto LABEL_153;
            }

            a3[2] = v185;
          }

          v186 = v234;
          a1[14] = a3;
          swift_endAccess();
          sub_101010148(v235, v186);

          goto LABEL_120;
        }

        objc_opt_self();
        v160 = swift_dynamicCastObjCClass();
        if (v160)
        {
          v161 = v160;
          [v160 doubleValue];
          v163 = v162;
          v164 = [v161 integerValue];
          if (v163 == v164)
          {
            v165 = v164;
            v166 = sub_1000DFAD8();
            swift_beginAccess();
            v239._countAndFlagsBits = v165;
            *&v240[8] = &type metadata for Int;
            *&v240[16] = v166;
            v240[24] = 2;
            v167 = swift_isUniquelyReferenced_nonNull_native();
            v168 = a1;
            v169 = v167;
            v238 = v168[14];
            v170 = v238;
            v168[14] = 0x8000000000000000;
            v171 = sub_100771D58(v236, v237);
            v173 = v170[2];
            v174 = (v172 & 1) == 0;
            v49 = __OFADD__(v173, v174);
            v175 = v173 + v174;
            if (v49)
            {
              goto LABEL_157;
            }

            v176 = v172;
            if (v170[3] >= v175)
            {
              if ((v169 & 1) == 0)
              {
                v222 = v171;
                sub_1010050E8();
                v171 = v222;
              }
            }

            else
            {
              sub_100FE65C4(v175, v169);
              v171 = sub_100771D58(v236, v237);
              if ((v176 & 1) != (v177 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v233;
            if ((v176 & 1) == 0)
            {
              a3 = v238;
              v238[(v171 >> 6) + 8] |= 1 << v171;
              v203 = (a3[6] + 16 * v171);
              v204 = v237;
              *v203 = v236;
              v203[1] = v204;
              v205 = (a3[7] + 48 * v171);
              v206 = *&v240[9];
              v207 = *v240;
              *v205 = v239;
              v205[1] = v207;
              *(&v205[1]._object + 1) = v206;
              v208 = a3[2];
              v49 = __OFADD__(v208, 1);
              v209 = v208 + 1;
              if (v49)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v210 = v171;

            a3 = v238;
            sub_10118B568(&v239, v238[7] + 48 * v210);
          }

          else
          {
            v192 = sub_1000DFA84();
            swift_beginAccess();
            *&v239._countAndFlagsBits = v163;
            *&v240[8] = &type metadata for Double;
            *&v240[16] = v192;
            v240[24] = 3;
            v193 = swift_isUniquelyReferenced_nonNull_native();
            v194 = a1;
            v195 = v193;
            v238 = v194[14];
            v196 = v238;
            v194[14] = 0x8000000000000000;
            v171 = sub_100771D58(v236, v237);
            v198 = v196[2];
            v199 = (v197 & 1) == 0;
            v49 = __OFADD__(v198, v199);
            v200 = v198 + v199;
            if (v49)
            {
              goto LABEL_159;
            }

            v201 = v197;
            if (v196[3] >= v200)
            {
              if ((v195 & 1) == 0)
              {
                v223 = v171;
                sub_1010050E8();
                v171 = v223;
              }
            }

            else
            {
              sub_100FE65C4(v200, v195);
              v171 = sub_100771D58(v236, v237);
              if ((v201 & 1) != (v202 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v233;
            if (v201)
            {
              goto LABEL_139;
            }

            a3 = v238;
            v238[(v171 >> 6) + 8] |= 1 << v171;
            v211 = (a3[6] + 16 * v171);
            v212 = v237;
            *v211 = v236;
            v211[1] = v212;
            v213 = (a3[7] + 48 * v171);
            v214 = *&v240[9];
            v215 = *v240;
            *v213 = v239;
            v213[1] = v215;
            *(&v213[1]._object + 1) = v214;
            v216 = a3[2];
            v49 = __OFADD__(v216, 1);
            v209 = v216 + 1;
            if (v49)
            {
              goto LABEL_162;
            }

LABEL_141:
            a3[2] = v209;
          }

          v217 = v234;
          a1[14] = a3;
          swift_endAccess();

          sub_101010148(v235, v217);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v187 = type metadata accessor for Logger();
        sub_1000076D4(v187, qword_10177C6D0);
        v188 = v95;
        v147 = Logger.logObject.getter();
        a3 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v147, a3))
        {

          sub_101010148(v235, v234);
LABEL_120:

          goto LABEL_143;
        }

        v189 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        *v189 = v230;
        *(v189 + 4) = v188;
        *v190 = v188;
        v191 = v188;
        _os_log_impl(&_mh_execute_header, v147, a3, "Unsupported value type: %@!", v189, 0xCu);
        sub_10000B3A8(v190, &qword_10169BB30, &unk_10138B3C0);
        a1 = v233;

        a2 = v232;

        sub_101010148(v235, v234);
LABEL_143:
        sub_10118B5A0(&v244);
      }

      else
      {
LABEL_21:
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v37 = objc_allocWithZone(NSNumber);
            isa = [v37 initWithLongLong:v235];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v235];
          }
        }

        else if (v29)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v235 & 1).super.super.isa;
        }

        else
        {
          isa = v235;
        }

        v38 = isa;
        objc_opt_self();
        v39 = swift_dynamicCastObjCClass();
        if (v39)
        {
          v40 = v39;
          v8 = v38;
          v41 = String.init(_:)(v40);
          object = v41._object;
          v42 = sub_1000DF96C();
          swift_beginAccess();
          v244 = v41;
          *&v245[8] = &type metadata for String;
          *&v245[16] = v42;
          v245[24] = 1;
          v43 = swift_isUniquelyReferenced_nonNull_native();
          v241[0] = a1[14];
          v44 = v241[0];
          a1[14] = 0x8000000000000000;
          v45 = sub_100771D58(v236, v237);
          v47 = *(v44 + 16);
          v48 = (v46 & 1) == 0;
          v49 = __OFADD__(v47, v48);
          v50 = v47 + v48;
          if (v49)
          {
            __break(1u);
            goto LABEL_149;
          }

          v51 = v46;
          if (*(v44 + 24) >= v50)
          {
            if ((v43 & 1) == 0)
            {
              v218 = v45;
              sub_1010050E8();
              v45 = v218;
            }
          }

          else
          {
            sub_100FE65C4(v50, v43);
            v45 = sub_100771D58(v236, v237);
            if ((v51 & 1) != (v52 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v233;
          a2 = v232;
          if (v51)
          {
            v71 = v45;

            a3 = v241[0];
            sub_10118B568(&v244, *(v241[0] + 56) + 48 * v71);
          }

          else
          {
            a3 = v241[0];
            *(v241[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
            v72 = (a3[6] + 16 * v45);
            v73 = v237;
            *v72 = v236;
            v72[1] = v73;
            v74 = (a3[7] + 48 * v45);
            v75 = *&v245[9];
            v76 = *v245;
            *v74 = v244;
            v74[1] = v76;
            *(&v74[1]._object + 1) = v75;
            v77 = a3[2];
            v49 = __OFADD__(v77, 1);
            v78 = v77 + 1;
            if (v49)
            {
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a3[2] = v78;
          }

          a1[14] = a3;
          swift_endAccess();

LABEL_46:
          sub_101010148(v235, v234);
        }

        else
        {
          objc_opt_self();
          v53 = swift_dynamicCastObjCClass();
          if (v53)
          {
            v54 = v53;
            [v53 doubleValue];
            v56 = v55;
            v57 = [v54 integerValue];
            if (v56 == v57)
            {
              v58 = v57;
              v59 = sub_1000DFAD8();
              swift_beginAccess();
              v244._countAndFlagsBits = v58;
              *&v245[8] = &type metadata for Int;
              *&v245[16] = v59;
              v245[24] = 2;
              v60 = swift_isUniquelyReferenced_nonNull_native();
              v61 = a1;
              v62 = v60;
              v241[0] = v61[14];
              v63 = v241[0];
              v61[14] = 0x8000000000000000;
              v64 = sub_100771D58(v236, v237);
              v66 = *(v63 + 16);
              v67 = (v65 & 1) == 0;
              v49 = __OFADD__(v66, v67);
              v68 = v66 + v67;
              if (v49)
              {
                goto LABEL_152;
              }

              v69 = v65;
              if (*(v63 + 24) >= v68)
              {
                if ((v62 & 1) == 0)
                {
                  v220 = v64;
                  sub_1010050E8();
                  v64 = v220;
                }
              }

              else
              {
                sub_100FE65C4(v68, v62);
                v64 = sub_100771D58(v236, v237);
                if ((v69 & 1) != (v70 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v233;
              if (v69)
              {
                goto LABEL_77;
              }

              a3 = v241[0];
              *(v241[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v111 = (a3[6] + 16 * v64);
              v112 = v237;
              *v111 = v236;
              v111[1] = v112;
              v113 = (a3[7] + 48 * v64);
              v114 = *&v245[9];
              v115 = *v245;
              *v113 = v244;
              v113[1] = v115;
              *(&v113[1]._object + 1) = v114;
              v116 = a3[2];
              v49 = __OFADD__(v116, 1);
              v117 = v116 + 1;
              if (v49)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v100 = sub_1000DFA84();
              swift_beginAccess();
              *&v244._countAndFlagsBits = v56;
              *&v245[8] = &type metadata for Double;
              *&v245[16] = v100;
              v245[24] = 3;
              v101 = swift_isUniquelyReferenced_nonNull_native();
              v102 = a1;
              v103 = v101;
              v241[0] = v102[14];
              v104 = v241[0];
              v102[14] = 0x8000000000000000;
              v64 = sub_100771D58(v236, v237);
              v106 = *(v104 + 16);
              v107 = (v105 & 1) == 0;
              v49 = __OFADD__(v106, v107);
              v108 = v106 + v107;
              if (v49)
              {
                goto LABEL_155;
              }

              v109 = v105;
              if (*(v104 + 24) >= v108)
              {
                if ((v103 & 1) == 0)
                {
                  v221 = v64;
                  sub_1010050E8();
                  v64 = v221;
                }
              }

              else
              {
                sub_100FE65C4(v108, v103);
                v64 = sub_100771D58(v236, v237);
                if ((v109 & 1) != (v110 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v233;
              if (v109)
              {
LABEL_77:
                v118 = v64;

                a3 = v241[0];
                sub_10118B568(&v244, *(v241[0] + 56) + 48 * v118);
                goto LABEL_80;
              }

              a3 = v241[0];
              *(v241[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
              v119 = (a3[6] + 16 * v64);
              v120 = v237;
              *v119 = v236;
              v119[1] = v120;
              v121 = (a3[7] + 48 * v64);
              v122 = *&v245[9];
              v123 = *v245;
              *v121 = v244;
              v121[1] = v123;
              *(&v121[1]._object + 1) = v122;
              v124 = a3[2];
              v49 = __OFADD__(v124, 1);
              v117 = v124 + 1;
              if (v49)
              {
                goto LABEL_158;
              }
            }

            a3[2] = v117;
LABEL_80:
            v125 = v234;
            a1[14] = a3;
            swift_endAccess();

            sub_101010148(v235, v125);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v89 = type metadata accessor for Logger();
            sub_1000076D4(v89, qword_10177C6D0);
            v90 = v38;
            v91 = Logger.logObject.getter();
            a3 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v91, a3))
            {
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              *v92 = v230;
              *(v92 + 4) = v90;
              *v93 = v90;
              v94 = v90;
              _os_log_impl(&_mh_execute_header, v91, a3, "Unsupported value type: %@!", v92, 0xCu);
              sub_10000B3A8(v93, &qword_10169BB30, &unk_10138B3C0);
              a1 = v233;

              a2 = v232;

              goto LABEL_46;
            }

            sub_101010148(v235, v234);
          }
        }
      }
    }

    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v17 = *(v6 + 8 * v21);
      ++v18;
      if (v17)
      {
        v18 = v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177C6D0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v244._countAndFlagsBits = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1000136BC(v8, object, &v244._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v11, v12, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v13, 0xCu);
    sub_100007BAC(v14);
  }
}

void sub_10114C918(uint64_t a1, char a2, uint64_t isUniquelyReferenced_nonNull_native, unint64_t a4)
{
  v7 = v4;
  LOBYTE(v8) = a2;
  if (qword_101695280 != -1)
  {
    goto LABEL_154;
  }

  while (1)
  {
    v10 = *(a1 + 120);
    object = *(a1 + 128);
    v12 = sub_10111EACC(v10, object, qword_10177C6E8);
    v236 = a1;
    if (v12)
    {
      break;
    }

    v232 = v7;
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 32) = isUniquelyReferenced_nonNull_native;
    v19 = inited + 32;
    *(inited + 16) = xmmword_101385D80;
    *(inited + 40) = a4;
    *(inited + 48) = v8 & 1;
    *(inited + 56) = 1;
    a4 = sub_100908768(inited);
    swift_setDeallocating();
    sub_10000B3A8(v19, &qword_101699340, &qword_1013918A0);
    v7 = a4 + 64;
    v20 = *(a4 + 64);
    v235 = a4;
    v21 = 1 << *(a4 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v20;
    swift_beginAccess();
    v24 = 0;
    v8 = (v21 + 63) >> 6;
    *&v25 = 138412290;
    v231 = v25;
    v26 = a1;
    v234 = v8;
    v233 = a4 + 64;
    while (v23)
    {
LABEL_15:
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v29 = (v24 << 10) | (16 * v28);
      v30 = *(v235 + 56);
      v31 = (*(v235 + 48) + v29);
      v32 = v31[1];
      v237 = *v31;
      v33 = v30 + v29;
      v34 = *v33;
      a1 = *(v33 + 8);
      v35 = *(v26 + 112);
      v36 = *(v35 + 16);
      v238 = v32;

      sub_10090C56C(*&v34, a1);
      if (v36)
      {

        v37 = sub_100771D58(v237, v238);
        if ((v38 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v35 + 56) + 48 * v37, &v245);

        if (a1 <= 1)
        {
          if (a1)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v39 = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v34) & 1).super.super.isa;
          }

          else
          {
            sub_10090C56C(*&v34, 0);
            v39 = *&v34;
          }

          v101 = v39;
          goto LABEL_97;
        }

        if (a1 != 2)
        {
          sub_1010100EC(&v245, &v240);
          if (BYTE8(v241[1]) != 3)
          {
LABEL_152:

            sub_10118B5A0(&v240);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v245);
            return;
          }

          sub_10000A748(&v240._countAndFlagsBits, v242);
          v102 = sub_1000035D0(v242, v243);
          isUniquelyReferenced_nonNull_native = v225;
          __chkstk_darwin(v102);
          (*(v104 + 16))(v225 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          v26 = v236;
          BinaryFloatingPoint.init<A>(_:)();
          v101 = [objc_allocWithZone(NSNumber) initWithDouble:*&v240._countAndFlagsBits + v34];
          sub_100007BAC(v242);
          goto LABEL_97;
        }

        sub_1010100EC(&v245, &v240);
        if (BYTE8(v241[1]) != 2)
        {
          goto LABEL_152;
        }

        sub_10000A748(&v240._countAndFlagsBits, v242);
        isUniquelyReferenced_nonNull_native = v243;
        v85 = v244;
        v86 = sub_1000035D0(v242, v243);
        v229 = v225;
        __chkstk_darwin(v86);
        v227 = v87;
        v88 = v225 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
        v230 = v89;
        (*(v89 + 16))(v88);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v240._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v90 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v90 < 64)
            {
              goto LABEL_84;
            }

            v228 = v85;
            v226 = v225;
            __chkstk_darwin(v90);
            v92 = v225 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v93 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v230 + 8))(v92, isUniquelyReferenced_nonNull_native);
            v85 = v228;
            if (v93)
            {
              goto LABEL_170;
            }
          }

          else
          {
            LODWORD(v226) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v117 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v226)
            {
              v228 = v85;
              if (v117 <= 64)
              {
                v226 = *(*(v85 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v225[2] = v225;
                __chkstk_darwin(AssociatedTypeWitness);
                v225[0] = v225 - v123;
                swift_getAssociatedConformanceWitness();
                v124 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v225[1] = v225;
                __chkstk_darwin(v124);
                v126 = v225 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v127 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v230 + 8))(v126, isUniquelyReferenced_nonNull_native);
                if (v127)
                {
                  goto LABEL_170;
                }

                v85 = v228;
LABEL_84:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_85;
              }

              v226 = v225;
              __chkstk_darwin(v117);
              v119 = v225 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v120 = dispatch thunk of static Comparable.< infix(_:_:)();
              v121 = v119;
              v85 = v228;
              (*(v230 + 8))(v121, isUniquelyReferenced_nonNull_native);
              if (v120)
              {
                goto LABEL_170;
              }
            }

            else if (v117 < 64)
            {
              goto LABEL_84;
            }
          }
        }

LABEL_85:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v240._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v128 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v129 = v85;
          v130 = v128;
          v228 = v129;
          v131 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v130)
          {
            if (v131 > 64)
            {
              goto LABEL_88;
            }
          }

          else if (v131 >= 64)
          {
LABEL_88:
            v226 = v225;
            __chkstk_darwin(v131);
            v227 = v225 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v133 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v230 + 8))(v227, isUniquelyReferenced_nonNull_native);
            if (v133)
            {
              goto LABEL_167;
            }

            goto LABEL_95;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_95:
        v134 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v230 + 8))(v88, isUniquelyReferenced_nonNull_native);
        v54 = __OFADD__(v134, *&v34);
        v135 = v134 + *&v34;
        if (v54)
        {
          goto LABEL_161;
        }

        v101 = [objc_allocWithZone(NSNumber) initWithLongLong:v135];
        sub_100007BAC(v242);
        v26 = v236;
LABEL_97:
        objc_opt_self();
        v136 = swift_dynamicCastObjCClass();
        if (v136)
        {
          v137 = v136;
          v138 = v34;
          v139 = v101;
          v140 = String.init(_:)(v137);
          v141 = sub_1000DF96C();
          swift_beginAccess();
          v240 = v140;
          *(&v241[0] + 1) = &type metadata for String;
          *&v241[1] = v141;
          BYTE8(v241[1]) = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v239 = *(v26 + 112);
          v142 = v239;
          *(v26 + 112) = 0x8000000000000000;
          v143 = sub_100771D58(v237, v238);
          v145 = *(v142 + 16);
          v146 = (v144 & 1) == 0;
          v54 = __OFADD__(v145, v146);
          v147 = v145 + v146;
          if (v54)
          {
            goto LABEL_158;
          }

          v148 = v144;
          if (*(v142 + 24) >= v147)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v144 & 1) == 0)
              {
                goto LABEL_130;
              }
            }

            else
            {
              isUniquelyReferenced_nonNull_native = v143;
              sub_1010050E8();
              v143 = isUniquelyReferenced_nonNull_native;
              if ((v148 & 1) == 0)
              {
                goto LABEL_130;
              }
            }
          }

          else
          {
            sub_100FE65C4(v147, isUniquelyReferenced_nonNull_native);
            v143 = sub_100771D58(v237, v238);
            if ((v148 & 1) != (v149 & 1))
            {
              goto LABEL_171;
            }

            if ((v148 & 1) == 0)
            {
LABEL_130:
              a4 = v239;
              *(v239 + 8 * (v143 >> 6) + 64) |= 1 << v143;
              v188 = (*(a4 + 48) + 16 * v143);
              v189 = v238;
              *v188 = v237;
              v188[1] = v189;
              v190 = (*(a4 + 56) + 48 * v143);
              v191 = *(v241 + 9);
              v192 = v241[0];
              *v190 = v240;
              v190[1] = v192;
              *(&v190[1]._object + 1) = v191;
              v193 = *(a4 + 16);
              v54 = __OFADD__(v193, 1);
              v194 = v193 + 1;
              if (v54)
              {
                goto LABEL_160;
              }

              *(a4 + 16) = v194;
              goto LABEL_132;
            }
          }

          v168 = v143;

          a4 = v239;
          sub_10118B568(&v240, *(v239 + 56) + 48 * v168);
LABEL_132:
          v26 = v236;
          v8 = v234;
          *(v236 + 112) = a4;
          swift_endAccess();
          sub_101010148(*&v138, a1);

          goto LABEL_133;
        }

        objc_opt_self();
        v150 = swift_dynamicCastObjCClass();
        if (v150)
        {
          v151 = v150;
          [v150 doubleValue];
          v153 = v152;
          v154 = [v151 integerValue];
          if (v153 == v154)
          {
            v155 = v154;
            v156 = v34;
            v157 = a1;
            v158 = v26;
            v159 = sub_1000DFAD8();
            swift_beginAccess();
            v240._countAndFlagsBits = v155;
            *(&v241[0] + 1) = &type metadata for Int;
            *&v241[1] = v159;
            BYTE8(v241[1]) = 2;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v239 = *(v158 + 112);
            v160 = v239;
            *(v158 + 112) = 0x8000000000000000;
            v161 = sub_100771D58(v237, v238);
            v163 = *(v160 + 16);
            v164 = (v162 & 1) == 0;
            v54 = __OFADD__(v163, v164);
            v165 = v163 + v164;
            if (v54)
            {
              goto LABEL_164;
            }

            v166 = v162;
            if (*(v160 + 24) >= v165)
            {
              a1 = v157;
              if (isUniquelyReferenced_nonNull_native)
              {
                if ((v162 & 1) == 0)
                {
                  goto LABEL_144;
                }
              }

              else
              {
                isUniquelyReferenced_nonNull_native = v161;
                sub_1010050E8();
                v161 = isUniquelyReferenced_nonNull_native;
                if ((v166 & 1) == 0)
                {
                  goto LABEL_144;
                }
              }
            }

            else
            {
              sub_100FE65C4(v165, isUniquelyReferenced_nonNull_native);
              v161 = sub_100771D58(v237, v238);
              if ((v166 & 1) != (v167 & 1))
              {
                goto LABEL_171;
              }

              a1 = v157;
              if ((v166 & 1) == 0)
              {
LABEL_144:
                a4 = v239;
                *(v239 + 8 * (v161 >> 6) + 64) |= 1 << v161;
                v210 = (*(a4 + 48) + 16 * v161);
                v211 = v238;
                *v210 = v237;
                v210[1] = v211;
                v212 = (*(a4 + 56) + 48 * v161);
                v213 = *(v241 + 9);
                v214 = v241[0];
                *v212 = v240;
                v212[1] = v214;
                *(&v212[1]._object + 1) = v213;
                v215 = *(a4 + 16);
                v54 = __OFADD__(v215, 1);
                v216 = v215 + 1;
                if (v54)
                {
                  goto LABEL_168;
                }

                *(a4 + 16) = v216;
LABEL_146:
                v26 = v236;
                v8 = v234;
                *(v236 + 112) = a4;
                swift_endAccess();

                sub_101010148(*&v156, a1);
LABEL_133:
                v7 = v233;
                goto LABEL_134;
              }
            }

            v186 = v161;

            a4 = v239;
            sub_10118B568(&v240, *(v239 + 56) + 48 * v186);
            goto LABEL_146;
          }

          v176 = sub_1000DFA84();
          swift_beginAccess();
          *&v240._countAndFlagsBits = v153;
          *(&v241[0] + 1) = &type metadata for Double;
          *&v241[1] = v176;
          BYTE8(v241[1]) = 3;
          v177 = swift_isUniquelyReferenced_nonNull_native();
          v239 = *(v26 + 112);
          v178 = v239;
          *(v26 + 112) = 0x8000000000000000;
          v179 = sub_100771D58(v237, v238);
          v181 = *(v178 + 16);
          v182 = (v180 & 1) == 0;
          v54 = __OFADD__(v181, v182);
          v183 = v181 + v182;
          if (v54)
          {
            goto LABEL_166;
          }

          v184 = v180;
          if (*(v178 + 24) >= v183)
          {
            if (v177)
            {
              goto LABEL_127;
            }

            v217 = v179;
            sub_1010050E8();
            v179 = v217;
            if ((v184 & 1) == 0)
            {
              goto LABEL_148;
            }

LABEL_128:
            isUniquelyReferenced_nonNull_native = *&v34;
            v187 = v179;

            a4 = v239;
            sub_10118B568(&v240, *(v239 + 56) + 48 * v187);
          }

          else
          {
            sub_100FE65C4(v183, v177);
            v179 = sub_100771D58(v237, v238);
            if ((v184 & 1) != (v185 & 1))
            {
              goto LABEL_171;
            }

LABEL_127:
            if (v184)
            {
              goto LABEL_128;
            }

LABEL_148:
            a4 = v239;
            *(v239 + 8 * (v179 >> 6) + 64) |= 1 << v179;
            v218 = (*(a4 + 48) + 16 * v179);
            v219 = v238;
            *v218 = v237;
            v218[1] = v219;
            v220 = (*(a4 + 56) + 48 * v179);
            v221 = *(v241 + 9);
            v222 = v241[0];
            *v220 = v240;
            v220[1] = v222;
            *(&v220[1]._object + 1) = v221;
            v223 = *(a4 + 16);
            v54 = __OFADD__(v223, 1);
            v224 = v223 + 1;
            if (v54)
            {
              goto LABEL_169;
            }

            isUniquelyReferenced_nonNull_native = *&v34;
            *(a4 + 16) = v224;
          }

          v26 = v236;
          v8 = v234;
          *(v236 + 112) = a4;
          swift_endAccess();

          sub_101010148(isUniquelyReferenced_nonNull_native, a1);
          goto LABEL_134;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v169 = type metadata accessor for Logger();
        sub_1000076D4(v169, qword_10177C6D0);
        v170 = v101;
        v171 = Logger.logObject.getter();
        a4 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v171, a4))
        {
          v172 = v34;
          v173 = swift_slowAlloc();
          isUniquelyReferenced_nonNull_native = swift_slowAlloc();
          *v173 = v231;
          *(v173 + 4) = v170;
          *isUniquelyReferenced_nonNull_native = v170;
          v174 = v170;
          _os_log_impl(&_mh_execute_header, v171, a4, "Unsupported value type: %@!", v173, 0xCu);
          sub_10000B3A8(isUniquelyReferenced_nonNull_native, &qword_10169BB30, &unk_10138B3C0);

          v175 = v172;
          v7 = v233;
          sub_101010148(*&v175, a1);
        }

        else
        {

          sub_101010148(*&v34, a1);
        }

        v26 = v236;
        v8 = v234;
LABEL_134:
        sub_10118B5A0(&v245);
      }

      else
      {
LABEL_21:
        if (a1 > 1)
        {
          if (a1 == 2)
          {
            isa = [objc_allocWithZone(NSNumber) initWithLongLong:*&v34];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:v34];
          }
        }

        else if (a1)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(LOBYTE(v34) & 1).super.super.isa;
        }

        else
        {
          isa = *&v34;
        }

        v41 = isa;
        objc_opt_self();
        v42 = swift_dynamicCastObjCClass();
        if (v42)
        {
          v43 = v42;
          v44 = v34;
          v45 = a1;
          v10 = v41;
          v46 = String.init(_:)(v43);
          v47 = v26;
          object = v46._object;
          v48 = sub_1000DF96C();
          swift_beginAccess();
          v245 = v46;
          *&v246[8] = &type metadata for String;
          *&v246[16] = v48;
          v246[24] = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v242[0] = *(v47 + 112);
          v49 = v242[0];
          *(v47 + 112) = 0x8000000000000000;
          v50 = sub_100771D58(v237, v238);
          v52 = *(v49 + 16);
          v53 = (v51 & 1) == 0;
          v54 = __OFADD__(v52, v53);
          v55 = v52 + v53;
          if (v54)
          {
            __break(1u);
            goto LABEL_156;
          }

          v56 = v51;
          if (*(v49 + 24) >= v55)
          {
            a1 = v45;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = v50;
              sub_1010050E8();
              v50 = isUniquelyReferenced_nonNull_native;
            }
          }

          else
          {
            sub_100FE65C4(v55, isUniquelyReferenced_nonNull_native);
            v50 = sub_100771D58(v237, v238);
            if ((v56 & 1) != (v57 & 1))
            {
              goto LABEL_171;
            }

            a1 = v45;
          }

          v76 = v44;
          v7 = v233;
          if (v56)
          {
            v77 = v50;

            a4 = v242[0];
            sub_10118B568(&v245, *(v242[0] + 56) + 48 * v77);
          }

          else
          {
            a4 = v242[0];
            *(v242[0] + 8 * (v50 >> 6) + 64) |= 1 << v50;
            v78 = (*(a4 + 48) + 16 * v50);
            v79 = v238;
            *v78 = v237;
            v78[1] = v79;
            v80 = (*(a4 + 56) + 48 * v50);
            v81 = *&v246[9];
            v82 = *v246;
            *v80 = v245;
            v80[1] = v82;
            *(&v80[1]._object + 1) = v81;
            v83 = *(a4 + 16);
            v54 = __OFADD__(v83, 1);
            v84 = v83 + 1;
            if (v54)
            {
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              __break(1u);
LABEL_170:
              __break(1u);
LABEL_171:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            *(a4 + 16) = v84;
          }

          v26 = v236;
          *(v236 + 112) = a4;
          swift_endAccess();

          sub_101010148(*&v76, a1);
LABEL_47:
          v8 = v234;
        }

        else
        {
          objc_opt_self();
          v58 = swift_dynamicCastObjCClass();
          if (!v58)
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v94 = type metadata accessor for Logger();
            sub_1000076D4(v94, qword_10177C6D0);
            v95 = v41;
            v96 = Logger.logObject.getter();
            a4 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v96, a4))
            {
              v97 = v34;
              v98 = swift_slowAlloc();
              isUniquelyReferenced_nonNull_native = swift_slowAlloc();
              *v98 = v231;
              *(v98 + 4) = v95;
              *isUniquelyReferenced_nonNull_native = v95;
              v99 = v95;
              _os_log_impl(&_mh_execute_header, v96, a4, "Unsupported value type: %@!", v98, 0xCu);
              sub_10000B3A8(isUniquelyReferenced_nonNull_native, &qword_10169BB30, &unk_10138B3C0);

              v100 = v97;
              v7 = v233;
              sub_101010148(*&v100, a1);
            }

            else
            {

              sub_101010148(*&v34, a1);
            }

            v26 = v236;
            goto LABEL_47;
          }

          v59 = v58;
          [v58 doubleValue];
          v61 = v60;
          v62 = [v59 integerValue];
          if (v61 == v62)
          {
            v63 = v62;
            v64 = v34;
            v65 = a1;
            v66 = v26;
            v67 = sub_1000DFAD8();
            swift_beginAccess();
            v245._countAndFlagsBits = v63;
            *&v246[8] = &type metadata for Int;
            *&v246[16] = v67;
            v246[24] = 2;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v242[0] = *(v66 + 112);
            v68 = v242[0];
            *(v66 + 112) = 0x8000000000000000;
            v69 = sub_100771D58(v237, v238);
            v71 = *(v68 + 16);
            v72 = (v70 & 1) == 0;
            v54 = __OFADD__(v71, v72);
            v73 = v71 + v72;
            if (v54)
            {
              goto LABEL_159;
            }

            v74 = v70;
            if (*(v68 + 24) >= v73)
            {
              a1 = v65;
              if (isUniquelyReferenced_nonNull_native)
              {
                if (v70)
                {
                  goto LABEL_70;
                }
              }

              else
              {
                isUniquelyReferenced_nonNull_native = v69;
                sub_1010050E8();
                v69 = isUniquelyReferenced_nonNull_native;
                if (v74)
                {
                  goto LABEL_70;
                }
              }
            }

            else
            {
              sub_100FE65C4(v73, isUniquelyReferenced_nonNull_native);
              v69 = sub_100771D58(v237, v238);
              if ((v74 & 1) != (v75 & 1))
              {
                goto LABEL_171;
              }

              a1 = v65;
              if (v74)
              {
LABEL_70:
                v115 = v69;

                a4 = v242[0];
                sub_10118B568(&v245, *(v242[0] + 56) + 48 * v115);
                goto LABEL_138;
              }
            }

            a4 = v242[0];
            *(v242[0] + 8 * (v69 >> 6) + 64) |= 1 << v69;
            v195 = (*(a4 + 48) + 16 * v69);
            v196 = v238;
            *v195 = v237;
            v195[1] = v196;
            v197 = (*(a4 + 56) + 48 * v69);
            v198 = *&v246[9];
            v199 = *v246;
            *v197 = v245;
            v197[1] = v199;
            *(&v197[1]._object + 1) = v198;
            v200 = *(a4 + 16);
            v54 = __OFADD__(v200, 1);
            v201 = v200 + 1;
            if (v54)
            {
              goto LABEL_163;
            }

            *(a4 + 16) = v201;
LABEL_138:
            v26 = v236;
            v8 = v234;
            *(v236 + 112) = a4;
            swift_endAccess();

            sub_101010148(*&v64, a1);
            v7 = v233;
          }

          else
          {
            v105 = sub_1000DFA84();
            swift_beginAccess();
            *&v245._countAndFlagsBits = v61;
            *&v246[8] = &type metadata for Double;
            *&v246[16] = v105;
            v246[24] = 3;
            v106 = swift_isUniquelyReferenced_nonNull_native();
            v242[0] = *(v26 + 112);
            v107 = v242[0];
            *(v26 + 112) = 0x8000000000000000;
            v108 = sub_100771D58(v237, v238);
            v110 = *(v107 + 16);
            v111 = (v109 & 1) == 0;
            v54 = __OFADD__(v110, v111);
            v112 = v110 + v111;
            if (v54)
            {
              goto LABEL_162;
            }

            v113 = v109;
            if (*(v107 + 24) < v112)
            {
              sub_100FE65C4(v112, v106);
              v108 = sub_100771D58(v237, v238);
              if ((v113 & 1) != (v114 & 1))
              {
                goto LABEL_171;
              }

LABEL_74:
              if (v113)
              {
                goto LABEL_75;
              }

              goto LABEL_140;
            }

            if (v106)
            {
              goto LABEL_74;
            }

            v202 = v108;
            sub_1010050E8();
            v108 = v202;
            if (v113)
            {
LABEL_75:
              isUniquelyReferenced_nonNull_native = *&v34;
              v116 = v108;

              a4 = v242[0];
              sub_10118B568(&v245, *(v242[0] + 56) + 48 * v116);
              goto LABEL_142;
            }

LABEL_140:
            a4 = v242[0];
            *(v242[0] + 8 * (v108 >> 6) + 64) |= 1 << v108;
            v203 = (*(a4 + 48) + 16 * v108);
            v204 = v238;
            *v203 = v237;
            v203[1] = v204;
            v205 = (*(a4 + 56) + 48 * v108);
            v206 = *&v246[9];
            v207 = *v246;
            *v205 = v245;
            v205[1] = v207;
            *(&v205[1]._object + 1) = v206;
            v208 = *(a4 + 16);
            v54 = __OFADD__(v208, 1);
            v209 = v208 + 1;
            if (v54)
            {
              goto LABEL_165;
            }

            isUniquelyReferenced_nonNull_native = *&v34;
            *(a4 + 16) = v209;
LABEL_142:
            v26 = v236;
            v8 = v234;
            *(v236 + 112) = a4;
            swift_endAccess();

            sub_101010148(isUniquelyReferenced_nonNull_native, a1);
          }
        }
      }
    }

    while (1)
    {
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v27 >= v8)
      {

        return;
      }

      v23 = *(v7 + 8 * v27);
      ++v24;
      if (v23)
      {
        v24 = v27;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_154:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_156:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C6D0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v245._countAndFlagsBits = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1000136BC(v10, object, &v245._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v14, v15, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v16, 0xCu);
    sub_100007BAC(v17);
  }
}

void sub_10114E540(void *a1, void *a2)
{
  v3 = v2;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v5 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v5, object, qword_10177C6E8))
    {
      break;
    }

    v235 = v3;
    v12 = sub_101165C24();
    v3 = v12 + 64;
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    swift_beginAccess();
    v16 = 0;
    v17 = (v13 + 63) >> 6;
    *&v18 = 138412290;
    v234 = v18;
    v237 = a1;
    v236 = v12;
    while (v15)
    {
LABEL_15:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (v16 << 10) | (16 * v20);
      v22 = *(v12 + 56);
      v23 = (*(v12 + 48) + v21);
      v24 = v23[1];
      v240 = *v23;
      v25 = (v22 + v21);
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = a1[14];
      v29 = *(v28 + 16);
      v241 = v24;

      v239 = v26;
      sub_10090C56C(v26, v27);
      v238 = v27;
      if (v29)
      {

        v30 = sub_100771D58(v240, v241);
        if ((v31 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v28 + 56) + 48 * v30, &v248);

        if (v27 <= 1)
        {
          if (v27)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v239 & 1).super.super.isa;
          }

          else
          {
            v32 = v239;
            sub_10090C56C(v239, 0);
            v33 = v32;
          }

          v95 = v33;
          goto LABEL_102;
        }

        if (v27 != 2)
        {
          sub_1010100EC(&v248, &v243);
          if (v244[24] != 3)
          {
LABEL_145:

            sub_10118B5A0(&v243);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v248);
            return;
          }

          v96 = v239;
          sub_10000A748(&v243._countAndFlagsBits, v245);
          v97 = sub_1000035D0(v245, v246);
          __chkstk_darwin(v97);
          (*(v99 + 16))(v228 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v237;
          v95 = [objc_allocWithZone(NSNumber) initWithDouble:*&v243._countAndFlagsBits + *&v96];
          sub_100007BAC(v245);
          goto LABEL_102;
        }

        sub_1010100EC(&v248, &v243);
        if (v244[24] != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v243._countAndFlagsBits, v245);
        v79 = v246;
        v78 = v247;
        v80 = sub_1000035D0(v245, v246);
        v232 = v228;
        __chkstk_darwin(v80);
        v230 = v81;
        v82 = v228 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
        v233 = v83;
        (*(v83 + 16))(v82);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v243._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v84 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v84 < 64)
            {
              goto LABEL_89;
            }

            v231 = v78;
            v229 = v228;
            __chkstk_darwin(v84);
            v86 = v228 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v87 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v233 + 8))(v86, v79);
            v78 = v231;
            if (v87)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v229) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v127 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v229)
            {
              v231 = v78;
              if (v127 <= 64)
              {
                v229 = *(*(v78 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v228[2] = v228;
                __chkstk_darwin(AssociatedTypeWitness);
                v228[0] = v228 - v133;
                swift_getAssociatedConformanceWitness();
                v134 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v228[1] = v228;
                __chkstk_darwin(v134);
                v136 = v228 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v137 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v233 + 8))(v136, v79);
                if (v137)
                {
                  goto LABEL_163;
                }

                v78 = v231;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v229 = v228;
              __chkstk_darwin(v127);
              v129 = v228 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v130 = dispatch thunk of static Comparable.< infix(_:_:)();
              v131 = v129;
              v78 = v231;
              (*(v233 + 8))(v131, v79);
              if (v130)
              {
                goto LABEL_163;
              }
            }

            else if (v127 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v243._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v138 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v139 = v78;
          v140 = v138;
          v231 = v139;
          v141 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v140)
          {
            if (v141 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v141 >= 64)
          {
LABEL_93:
            v229 = v228;
            __chkstk_darwin(v141);
            v230 = v228 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v143 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v233 + 8))(v230, v79);
            if (v143)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v144 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v233 + 8))(v82, v79);
        v47 = __OFADD__(v144, v239);
        v145 = &v239[v144];
        if (v47)
        {
          goto LABEL_154;
        }

        v95 = [objc_allocWithZone(NSNumber) initWithLongLong:v145];
        sub_100007BAC(v245);
        a1 = v237;
LABEL_102:
        objc_opt_self();
        v146 = swift_dynamicCastObjCClass();
        if (v146)
        {
          v147 = v146;
          v148 = v95;
          v149 = String.init(_:)(v147);
          v150 = a1;
          v151 = sub_1000DF96C();
          swift_beginAccess();
          v243 = v149;
          *&v244[8] = &type metadata for String;
          *&v244[16] = v151;
          v244[24] = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v242 = v150[14];
          v153 = v242;
          v150[14] = 0x8000000000000000;
          v154 = sub_100771D58(v240, v241);
          v156 = v153[2];
          v157 = (v155 & 1) == 0;
          v47 = __OFADD__(v156, v157);
          v158 = v156 + v157;
          if (v47)
          {
            goto LABEL_151;
          }

          v159 = v155;
          if (v153[3] >= v158)
          {
            v12 = v236;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v223 = v154;
              sub_1010050E8();
              v154 = v223;
            }
          }

          else
          {
            sub_100FE65C4(v158, isUniquelyReferenced_nonNull_native);
            v154 = sub_100771D58(v240, v241);
            v12 = v236;
            if ((v159 & 1) != (v160 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v237;
          if (v159)
          {
            v179 = v154;

            v180 = v242;
            sub_10118B568(&v243, v242[7] + 48 * v179);
          }

          else
          {
            v180 = v242;
            v242[(v154 >> 6) + 8] |= 1 << v154;
            v181 = (v180[6] + 16 * v154);
            v182 = v241;
            *v181 = v240;
            v181[1] = v182;
            v183 = (v180[7] + 48 * v154);
            v184 = *&v244[9];
            v185 = *v244;
            *v183 = v243;
            v183[1] = v185;
            *(&v183[1]._object + 1) = v184;
            v186 = v180[2];
            v47 = __OFADD__(v186, 1);
            v187 = v186 + 1;
            if (v47)
            {
              goto LABEL_153;
            }

            v180[2] = v187;
          }

          v188 = v238;
          a1[14] = v180;
          swift_endAccess();
          sub_101010148(v239, v188);

          goto LABEL_120;
        }

        objc_opt_self();
        v161 = swift_dynamicCastObjCClass();
        if (v161)
        {
          v162 = v161;
          [v161 doubleValue];
          v164 = v163;
          v165 = [v162 integerValue];
          if (v164 == v165)
          {
            v166 = v165;
            v167 = sub_1000DFAD8();
            swift_beginAccess();
            v243._countAndFlagsBits = v166;
            *&v244[8] = &type metadata for Int;
            *&v244[16] = v167;
            v244[24] = 2;
            v168 = swift_isUniquelyReferenced_nonNull_native();
            v169 = a1;
            v170 = v168;
            v242 = v169[14];
            v171 = v242;
            v169[14] = 0x8000000000000000;
            v172 = sub_100771D58(v240, v241);
            v174 = v171[2];
            v175 = (v173 & 1) == 0;
            v47 = __OFADD__(v174, v175);
            v176 = v174 + v175;
            if (v47)
            {
              goto LABEL_157;
            }

            v177 = v173;
            if (v171[3] >= v176)
            {
              if ((v170 & 1) == 0)
              {
                v226 = v172;
                sub_1010050E8();
                v172 = v226;
              }
            }

            else
            {
              sub_100FE65C4(v176, v170);
              v172 = sub_100771D58(v240, v241);
              if ((v177 & 1) != (v178 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v237;
            if ((v177 & 1) == 0)
            {
              v206 = v242;
              v242[(v172 >> 6) + 8] |= 1 << v172;
              v207 = (v206[6] + 16 * v172);
              v208 = v241;
              *v207 = v240;
              v207[1] = v208;
              v209 = (v206[7] + 48 * v172);
              v210 = *&v244[9];
              v211 = *v244;
              *v209 = v243;
              v209[1] = v211;
              *(&v209[1]._object + 1) = v210;
              v212 = v206[2];
              v47 = __OFADD__(v212, 1);
              v213 = v212 + 1;
              if (v47)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v214 = v172;

            v206 = v242;
            sub_10118B568(&v243, v242[7] + 48 * v214);
          }

          else
          {
            v195 = sub_1000DFA84();
            swift_beginAccess();
            *&v243._countAndFlagsBits = v164;
            *&v244[8] = &type metadata for Double;
            *&v244[16] = v195;
            v244[24] = 3;
            v196 = swift_isUniquelyReferenced_nonNull_native();
            v197 = a1;
            v198 = v196;
            v242 = v197[14];
            v199 = v242;
            v197[14] = 0x8000000000000000;
            v172 = sub_100771D58(v240, v241);
            v201 = v199[2];
            v202 = (v200 & 1) == 0;
            v47 = __OFADD__(v201, v202);
            v203 = v201 + v202;
            if (v47)
            {
              goto LABEL_159;
            }

            v204 = v200;
            if (v199[3] >= v203)
            {
              if ((v198 & 1) == 0)
              {
                v227 = v172;
                sub_1010050E8();
                v172 = v227;
              }
            }

            else
            {
              sub_100FE65C4(v203, v198);
              v172 = sub_100771D58(v240, v241);
              if ((v204 & 1) != (v205 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v237;
            if (v204)
            {
              goto LABEL_139;
            }

            v206 = v242;
            v242[(v172 >> 6) + 8] |= 1 << v172;
            v215 = (v206[6] + 16 * v172);
            v216 = v241;
            *v215 = v240;
            v215[1] = v216;
            v217 = (v206[7] + 48 * v172);
            v218 = *&v244[9];
            v219 = *v244;
            *v217 = v243;
            v217[1] = v219;
            *(&v217[1]._object + 1) = v218;
            v220 = v206[2];
            v47 = __OFADD__(v220, 1);
            v213 = v220 + 1;
            if (v47)
            {
              goto LABEL_162;
            }

LABEL_141:
            v206[2] = v213;
          }

          v221 = v238;
          a1[14] = v206;
          swift_endAccess();

          sub_101010148(v239, v221);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v189 = type metadata accessor for Logger();
        sub_1000076D4(v189, qword_10177C6D0);
        v190 = v95;
        v148 = Logger.logObject.getter();
        v191 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v148, v191))
        {

          sub_101010148(v239, v238);
LABEL_120:

          goto LABEL_143;
        }

        v192 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        *v192 = v234;
        *(v192 + 4) = v190;
        *v193 = v190;
        v194 = v190;
        _os_log_impl(&_mh_execute_header, v148, v191, "Unsupported value type: %@!", v192, 0xCu);
        sub_10000B3A8(v193, &qword_10169BB30, &unk_10138B3C0);
        a1 = v237;

        v12 = v236;

        sub_101010148(v239, v238);
LABEL_143:
        sub_10118B5A0(&v248);
      }

      else
      {
LABEL_21:
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v239];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v239];
          }
        }

        else if (v27)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v239 & 1).super.super.isa;
        }

        else
        {
          isa = v239;
        }

        v36 = isa;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          v5 = v36;
          v39 = String.init(_:)(v38);
          object = v39._object;
          v40 = sub_1000DF96C();
          swift_beginAccess();
          v248 = v39;
          *&v249[8] = &type metadata for String;
          *&v249[16] = v40;
          v249[24] = 1;
          v41 = swift_isUniquelyReferenced_nonNull_native();
          v245[0] = a1[14];
          v42 = v245[0];
          a1[14] = 0x8000000000000000;
          v43 = sub_100771D58(v240, v241);
          v45 = *(v42 + 16);
          v46 = (v44 & 1) == 0;
          v47 = __OFADD__(v45, v46);
          v48 = v45 + v46;
          if (v47)
          {
            __break(1u);
            goto LABEL_149;
          }

          v49 = v44;
          if (*(v42 + 24) >= v48)
          {
            if ((v41 & 1) == 0)
            {
              v222 = v43;
              sub_1010050E8();
              v43 = v222;
            }
          }

          else
          {
            sub_100FE65C4(v48, v41);
            v43 = sub_100771D58(v240, v241);
            if ((v49 & 1) != (v50 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v237;
          v12 = v236;
          if (v49)
          {
            v69 = v43;

            v70 = v245[0];
            sub_10118B568(&v248, *(v245[0] + 56) + 48 * v69);
          }

          else
          {
            v70 = v245[0];
            *(v245[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
            v71 = (v70[6] + 16 * v43);
            v72 = v241;
            *v71 = v240;
            v71[1] = v72;
            v73 = (v70[7] + 48 * v43);
            v74 = *&v249[9];
            v75 = *v249;
            *v73 = v248;
            v73[1] = v75;
            *(&v73[1]._object + 1) = v74;
            v76 = v70[2];
            v47 = __OFADD__(v76, 1);
            v77 = v76 + 1;
            if (v47)
            {
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v70[2] = v77;
          }

          a1[14] = v70;
          swift_endAccess();

LABEL_46:
          sub_101010148(v239, v238);
        }

        else
        {
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          if (v51)
          {
            v52 = v51;
            [v51 doubleValue];
            v54 = v53;
            v55 = [v52 integerValue];
            if (v54 == v55)
            {
              v56 = v55;
              v57 = sub_1000DFAD8();
              swift_beginAccess();
              v248._countAndFlagsBits = v56;
              *&v249[8] = &type metadata for Int;
              *&v249[16] = v57;
              v249[24] = 2;
              v58 = swift_isUniquelyReferenced_nonNull_native();
              v59 = a1;
              v60 = v58;
              v245[0] = v59[14];
              v61 = v245[0];
              v59[14] = 0x8000000000000000;
              v62 = sub_100771D58(v240, v241);
              v64 = *(v61 + 16);
              v65 = (v63 & 1) == 0;
              v47 = __OFADD__(v64, v65);
              v66 = v64 + v65;
              if (v47)
              {
                goto LABEL_152;
              }

              v67 = v63;
              if (*(v61 + 24) >= v66)
              {
                if ((v60 & 1) == 0)
                {
                  v224 = v62;
                  sub_1010050E8();
                  v62 = v224;
                }
              }

              else
              {
                sub_100FE65C4(v66, v60);
                v62 = sub_100771D58(v240, v241);
                if ((v67 & 1) != (v68 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v237;
              if (v67)
              {
                goto LABEL_77;
              }

              v111 = v245[0];
              *(v245[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v112 = (v111[6] + 16 * v62);
              v113 = v241;
              *v112 = v240;
              v112[1] = v113;
              v114 = (v111[7] + 48 * v62);
              v115 = *&v249[9];
              v116 = *v249;
              *v114 = v248;
              v114[1] = v116;
              *(&v114[1]._object + 1) = v115;
              v117 = v111[2];
              v47 = __OFADD__(v117, 1);
              v118 = v117 + 1;
              if (v47)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v100 = sub_1000DFA84();
              swift_beginAccess();
              *&v248._countAndFlagsBits = v54;
              *&v249[8] = &type metadata for Double;
              *&v249[16] = v100;
              v249[24] = 3;
              v101 = swift_isUniquelyReferenced_nonNull_native();
              v102 = a1;
              v103 = v101;
              v245[0] = v102[14];
              v104 = v245[0];
              v102[14] = 0x8000000000000000;
              v62 = sub_100771D58(v240, v241);
              v106 = *(v104 + 16);
              v107 = (v105 & 1) == 0;
              v47 = __OFADD__(v106, v107);
              v108 = v106 + v107;
              if (v47)
              {
                goto LABEL_155;
              }

              v109 = v105;
              if (*(v104 + 24) >= v108)
              {
                if ((v103 & 1) == 0)
                {
                  v225 = v62;
                  sub_1010050E8();
                  v62 = v225;
                }
              }

              else
              {
                sub_100FE65C4(v108, v103);
                v62 = sub_100771D58(v240, v241);
                if ((v109 & 1) != (v110 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v237;
              if (v109)
              {
LABEL_77:
                v119 = v62;

                v111 = v245[0];
                sub_10118B568(&v248, *(v245[0] + 56) + 48 * v119);
                goto LABEL_80;
              }

              v111 = v245[0];
              *(v245[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v120 = (v111[6] + 16 * v62);
              v121 = v241;
              *v120 = v240;
              v120[1] = v121;
              v122 = (v111[7] + 48 * v62);
              v123 = *&v249[9];
              v124 = *v249;
              *v122 = v248;
              v122[1] = v124;
              *(&v122[1]._object + 1) = v123;
              v125 = v111[2];
              v47 = __OFADD__(v125, 1);
              v118 = v125 + 1;
              if (v47)
              {
                goto LABEL_158;
              }
            }

            v111[2] = v118;
LABEL_80:
            v126 = v238;
            a1[14] = v111;
            swift_endAccess();

            sub_101010148(v239, v126);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v88 = type metadata accessor for Logger();
            sub_1000076D4(v88, qword_10177C6D0);
            v89 = v36;
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              *v92 = v234;
              *(v92 + 4) = v89;
              *v93 = v89;
              v94 = v89;
              _os_log_impl(&_mh_execute_header, v90, v91, "Unsupported value type: %@!", v92, 0xCu);
              sub_10000B3A8(v93, &qword_10169BB30, &unk_10138B3C0);
              a1 = v237;

              v12 = v236;

              goto LABEL_46;
            }

            sub_101010148(v239, v238);
          }
        }
      }
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v15 = *(v3 + 8 * v19);
      ++v16;
      if (v15)
      {
        v16 = v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C6D0);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v248._countAndFlagsBits = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1000136BC(v5, object, &v248._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v8, v9, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v10, 0xCu);
    sub_100007BAC(v11);
  }
}

void sub_10114FF40(void *a1)
{
  v2 = v1;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v4 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v4, object, qword_10177C6E8))
    {
      break;
    }

    v235 = v2;
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x800000010137CFF0;
    *(inited + 48) = Double._bridgeToObjectiveC()();
    *(inited + 56) = 0;
    v12 = sub_100908768(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
    v2 = v12 + 64;
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    swift_beginAccess();
    v16 = 0;
    v17 = (v13 + 63) >> 6;
    *&v18 = 138412290;
    v234 = v18;
    v237 = a1;
    v236 = v12;
    while (v15)
    {
LABEL_15:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (v16 << 10) | (16 * v20);
      v22 = *(v12 + 56);
      v23 = (*(v12 + 48) + v21);
      v24 = v23[1];
      v240 = *v23;
      v25 = (v22 + v21);
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = a1[14];
      v29 = *(v28 + 16);
      v241 = v24;

      v239 = v26;
      sub_10090C56C(v26, v27);
      v238 = v27;
      if (v29)
      {

        v30 = sub_100771D58(v240, v241);
        if ((v31 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v28 + 56) + 48 * v30, &v248);

        if (v27 <= 1)
        {
          if (v27)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v239 & 1).super.super.isa;
          }

          else
          {
            v32 = v239;
            sub_10090C56C(v239, 0);
            v33 = v32;
          }

          v95 = v33;
          goto LABEL_102;
        }

        if (v27 != 2)
        {
          sub_1010100EC(&v248, &v243);
          if (BYTE8(v244[1]) != 3)
          {
LABEL_145:

            sub_10118B5A0(&v243);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v248);
            return;
          }

          v96 = v239;
          sub_10000A748(&v243._countAndFlagsBits, v245);
          v97 = sub_1000035D0(v245, v246);
          __chkstk_darwin(v97);
          (*(v99 + 16))(v228 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v237;
          v95 = [objc_allocWithZone(NSNumber) initWithDouble:*&v243._countAndFlagsBits + *&v96];
          sub_100007BAC(v245);
          goto LABEL_102;
        }

        sub_1010100EC(&v248, &v243);
        if (BYTE8(v244[1]) != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v243._countAndFlagsBits, v245);
        v79 = v246;
        v78 = v247;
        v80 = sub_1000035D0(v245, v246);
        v232 = v228;
        __chkstk_darwin(v80);
        v230 = v81;
        v82 = v228 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
        v233 = v83;
        (*(v83 + 16))(v82);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v243._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v84 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v84 < 64)
            {
              goto LABEL_89;
            }

            v231 = v78;
            v229 = v228;
            __chkstk_darwin(v84);
            v86 = v228 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v87 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v233 + 8))(v86, v79);
            v78 = v231;
            if (v87)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v229) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v127 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v229)
            {
              v231 = v78;
              if (v127 <= 64)
              {
                v229 = *(*(v78 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v228[2] = v228;
                __chkstk_darwin(AssociatedTypeWitness);
                v228[0] = v228 - v133;
                swift_getAssociatedConformanceWitness();
                v134 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v228[1] = v228;
                __chkstk_darwin(v134);
                v136 = v228 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v137 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v233 + 8))(v136, v79);
                if (v137)
                {
                  goto LABEL_163;
                }

                v78 = v231;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v229 = v228;
              __chkstk_darwin(v127);
              v129 = v228 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v130 = dispatch thunk of static Comparable.< infix(_:_:)();
              v131 = v129;
              v78 = v231;
              (*(v233 + 8))(v131, v79);
              if (v130)
              {
                goto LABEL_163;
              }
            }

            else if (v127 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v243._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v138 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v139 = v78;
          v140 = v138;
          v231 = v139;
          v141 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v140)
          {
            if (v141 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v141 >= 64)
          {
LABEL_93:
            v229 = v228;
            __chkstk_darwin(v141);
            v230 = v228 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v143 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v233 + 8))(v230, v79);
            if (v143)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v144 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v233 + 8))(v82, v79);
        v47 = __OFADD__(v144, v239);
        v145 = &v239[v144];
        if (v47)
        {
          goto LABEL_154;
        }

        v95 = [objc_allocWithZone(NSNumber) initWithLongLong:v145];
        sub_100007BAC(v245);
        a1 = v237;
LABEL_102:
        objc_opt_self();
        v146 = swift_dynamicCastObjCClass();
        if (v146)
        {
          v147 = v146;
          v148 = v95;
          v149 = String.init(_:)(v147);
          v150 = a1;
          v151 = sub_1000DF96C();
          swift_beginAccess();
          v243 = v149;
          *(&v244[0] + 1) = &type metadata for String;
          *&v244[1] = v151;
          BYTE8(v244[1]) = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v242 = v150[14];
          v153 = v242;
          v150[14] = 0x8000000000000000;
          v154 = sub_100771D58(v240, v241);
          v156 = v153[2];
          v157 = (v155 & 1) == 0;
          v47 = __OFADD__(v156, v157);
          v158 = v156 + v157;
          if (v47)
          {
            goto LABEL_151;
          }

          v159 = v155;
          if (v153[3] >= v158)
          {
            v12 = v236;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v223 = v154;
              sub_1010050E8();
              v154 = v223;
            }
          }

          else
          {
            sub_100FE65C4(v158, isUniquelyReferenced_nonNull_native);
            v154 = sub_100771D58(v240, v241);
            v12 = v236;
            if ((v159 & 1) != (v160 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v237;
          if (v159)
          {
            v179 = v154;

            v180 = v242;
            sub_10118B568(&v243, v242[7] + 48 * v179);
          }

          else
          {
            v180 = v242;
            v242[(v154 >> 6) + 8] |= 1 << v154;
            v181 = (v180[6] + 16 * v154);
            v182 = v241;
            *v181 = v240;
            v181[1] = v182;
            v183 = (v180[7] + 48 * v154);
            v184 = *(v244 + 9);
            v185 = v244[0];
            *v183 = v243;
            v183[1] = v185;
            *(&v183[1]._object + 1) = v184;
            v186 = v180[2];
            v47 = __OFADD__(v186, 1);
            v187 = v186 + 1;
            if (v47)
            {
              goto LABEL_153;
            }

            v180[2] = v187;
          }

          v188 = v238;
          a1[14] = v180;
          swift_endAccess();
          sub_101010148(v239, v188);

          goto LABEL_120;
        }

        objc_opt_self();
        v161 = swift_dynamicCastObjCClass();
        if (v161)
        {
          v162 = v161;
          [v161 doubleValue];
          v164 = v163;
          v165 = [v162 integerValue];
          if (v164 == v165)
          {
            v166 = v165;
            v167 = sub_1000DFAD8();
            swift_beginAccess();
            v243._countAndFlagsBits = v166;
            *(&v244[0] + 1) = &type metadata for Int;
            *&v244[1] = v167;
            BYTE8(v244[1]) = 2;
            v168 = swift_isUniquelyReferenced_nonNull_native();
            v169 = a1;
            v170 = v168;
            v242 = v169[14];
            v171 = v242;
            v169[14] = 0x8000000000000000;
            v172 = sub_100771D58(v240, v241);
            v174 = v171[2];
            v175 = (v173 & 1) == 0;
            v47 = __OFADD__(v174, v175);
            v176 = v174 + v175;
            if (v47)
            {
              goto LABEL_157;
            }

            v177 = v173;
            if (v171[3] >= v176)
            {
              if ((v170 & 1) == 0)
              {
                v226 = v172;
                sub_1010050E8();
                v172 = v226;
              }
            }

            else
            {
              sub_100FE65C4(v176, v170);
              v172 = sub_100771D58(v240, v241);
              if ((v177 & 1) != (v178 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v237;
            if ((v177 & 1) == 0)
            {
              v206 = v242;
              v242[(v172 >> 6) + 8] |= 1 << v172;
              v207 = (v206[6] + 16 * v172);
              v208 = v241;
              *v207 = v240;
              v207[1] = v208;
              v209 = (v206[7] + 48 * v172);
              v210 = *(v244 + 9);
              v211 = v244[0];
              *v209 = v243;
              v209[1] = v211;
              *(&v209[1]._object + 1) = v210;
              v212 = v206[2];
              v47 = __OFADD__(v212, 1);
              v213 = v212 + 1;
              if (v47)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v214 = v172;

            v206 = v242;
            sub_10118B568(&v243, v242[7] + 48 * v214);
          }

          else
          {
            v195 = sub_1000DFA84();
            swift_beginAccess();
            *&v243._countAndFlagsBits = v164;
            *(&v244[0] + 1) = &type metadata for Double;
            *&v244[1] = v195;
            BYTE8(v244[1]) = 3;
            v196 = swift_isUniquelyReferenced_nonNull_native();
            v197 = a1;
            v198 = v196;
            v242 = v197[14];
            v199 = v242;
            v197[14] = 0x8000000000000000;
            v172 = sub_100771D58(v240, v241);
            v201 = v199[2];
            v202 = (v200 & 1) == 0;
            v47 = __OFADD__(v201, v202);
            v203 = v201 + v202;
            if (v47)
            {
              goto LABEL_159;
            }

            v204 = v200;
            if (v199[3] >= v203)
            {
              if ((v198 & 1) == 0)
              {
                v227 = v172;
                sub_1010050E8();
                v172 = v227;
              }
            }

            else
            {
              sub_100FE65C4(v203, v198);
              v172 = sub_100771D58(v240, v241);
              if ((v204 & 1) != (v205 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v237;
            if (v204)
            {
              goto LABEL_139;
            }

            v206 = v242;
            v242[(v172 >> 6) + 8] |= 1 << v172;
            v215 = (v206[6] + 16 * v172);
            v216 = v241;
            *v215 = v240;
            v215[1] = v216;
            v217 = (v206[7] + 48 * v172);
            v218 = *(v244 + 9);
            v219 = v244[0];
            *v217 = v243;
            v217[1] = v219;
            *(&v217[1]._object + 1) = v218;
            v220 = v206[2];
            v47 = __OFADD__(v220, 1);
            v213 = v220 + 1;
            if (v47)
            {
              goto LABEL_162;
            }

LABEL_141:
            v206[2] = v213;
          }

          v221 = v238;
          a1[14] = v206;
          swift_endAccess();

          sub_101010148(v239, v221);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v189 = type metadata accessor for Logger();
        sub_1000076D4(v189, qword_10177C6D0);
        v190 = v95;
        v148 = Logger.logObject.getter();
        v191 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v148, v191))
        {

          sub_101010148(v239, v238);
LABEL_120:

          goto LABEL_143;
        }

        v192 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        *v192 = v234;
        *(v192 + 4) = v190;
        *v193 = v190;
        v194 = v190;
        _os_log_impl(&_mh_execute_header, v148, v191, "Unsupported value type: %@!", v192, 0xCu);
        sub_10000B3A8(v193, &qword_10169BB30, &unk_10138B3C0);
        a1 = v237;

        v12 = v236;

        sub_101010148(v239, v238);
LABEL_143:
        sub_10118B5A0(&v248);
      }

      else
      {
LABEL_21:
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v239];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v239];
          }
        }

        else if (v27)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v239 & 1).super.super.isa;
        }

        else
        {
          isa = v239;
        }

        v36 = isa;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          v4 = v36;
          v39 = String.init(_:)(v38);
          object = v39._object;
          v40 = sub_1000DF96C();
          swift_beginAccess();
          v248 = v39;
          *&v249[8] = &type metadata for String;
          *&v249[16] = v40;
          v249[24] = 1;
          v41 = swift_isUniquelyReferenced_nonNull_native();
          v245[0] = a1[14];
          v42 = v245[0];
          a1[14] = 0x8000000000000000;
          v43 = sub_100771D58(v240, v241);
          v45 = *(v42 + 16);
          v46 = (v44 & 1) == 0;
          v47 = __OFADD__(v45, v46);
          v48 = v45 + v46;
          if (v47)
          {
            __break(1u);
            goto LABEL_149;
          }

          v49 = v44;
          if (*(v42 + 24) >= v48)
          {
            if ((v41 & 1) == 0)
            {
              v222 = v43;
              sub_1010050E8();
              v43 = v222;
            }
          }

          else
          {
            sub_100FE65C4(v48, v41);
            v43 = sub_100771D58(v240, v241);
            if ((v49 & 1) != (v50 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v237;
          v12 = v236;
          if (v49)
          {
            v69 = v43;

            v70 = v245[0];
            sub_10118B568(&v248, *(v245[0] + 56) + 48 * v69);
          }

          else
          {
            v70 = v245[0];
            *(v245[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
            v71 = (v70[6] + 16 * v43);
            v72 = v241;
            *v71 = v240;
            v71[1] = v72;
            v73 = (v70[7] + 48 * v43);
            v74 = *&v249[9];
            v75 = *v249;
            *v73 = v248;
            v73[1] = v75;
            *(&v73[1]._object + 1) = v74;
            v76 = v70[2];
            v47 = __OFADD__(v76, 1);
            v77 = v76 + 1;
            if (v47)
            {
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v70[2] = v77;
          }

          a1[14] = v70;
          swift_endAccess();

LABEL_46:
          sub_101010148(v239, v238);
        }

        else
        {
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          if (v51)
          {
            v52 = v51;
            [v51 doubleValue];
            v54 = v53;
            v55 = [v52 integerValue];
            if (v54 == v55)
            {
              v56 = v55;
              v57 = sub_1000DFAD8();
              swift_beginAccess();
              v248._countAndFlagsBits = v56;
              *&v249[8] = &type metadata for Int;
              *&v249[16] = v57;
              v249[24] = 2;
              v58 = swift_isUniquelyReferenced_nonNull_native();
              v59 = a1;
              v60 = v58;
              v245[0] = v59[14];
              v61 = v245[0];
              v59[14] = 0x8000000000000000;
              v62 = sub_100771D58(v240, v241);
              v64 = *(v61 + 16);
              v65 = (v63 & 1) == 0;
              v47 = __OFADD__(v64, v65);
              v66 = v64 + v65;
              if (v47)
              {
                goto LABEL_152;
              }

              v67 = v63;
              if (*(v61 + 24) >= v66)
              {
                if ((v60 & 1) == 0)
                {
                  v224 = v62;
                  sub_1010050E8();
                  v62 = v224;
                }
              }

              else
              {
                sub_100FE65C4(v66, v60);
                v62 = sub_100771D58(v240, v241);
                if ((v67 & 1) != (v68 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v237;
              if (v67)
              {
                goto LABEL_77;
              }

              v111 = v245[0];
              *(v245[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v112 = (v111[6] + 16 * v62);
              v113 = v241;
              *v112 = v240;
              v112[1] = v113;
              v114 = (v111[7] + 48 * v62);
              v115 = *&v249[9];
              v116 = *v249;
              *v114 = v248;
              v114[1] = v116;
              *(&v114[1]._object + 1) = v115;
              v117 = v111[2];
              v47 = __OFADD__(v117, 1);
              v118 = v117 + 1;
              if (v47)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v100 = sub_1000DFA84();
              swift_beginAccess();
              *&v248._countAndFlagsBits = v54;
              *&v249[8] = &type metadata for Double;
              *&v249[16] = v100;
              v249[24] = 3;
              v101 = swift_isUniquelyReferenced_nonNull_native();
              v102 = a1;
              v103 = v101;
              v245[0] = v102[14];
              v104 = v245[0];
              v102[14] = 0x8000000000000000;
              v62 = sub_100771D58(v240, v241);
              v106 = *(v104 + 16);
              v107 = (v105 & 1) == 0;
              v47 = __OFADD__(v106, v107);
              v108 = v106 + v107;
              if (v47)
              {
                goto LABEL_155;
              }

              v109 = v105;
              if (*(v104 + 24) >= v108)
              {
                if ((v103 & 1) == 0)
                {
                  v225 = v62;
                  sub_1010050E8();
                  v62 = v225;
                }
              }

              else
              {
                sub_100FE65C4(v108, v103);
                v62 = sub_100771D58(v240, v241);
                if ((v109 & 1) != (v110 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v237;
              if (v109)
              {
LABEL_77:
                v119 = v62;

                v111 = v245[0];
                sub_10118B568(&v248, *(v245[0] + 56) + 48 * v119);
                goto LABEL_80;
              }

              v111 = v245[0];
              *(v245[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v120 = (v111[6] + 16 * v62);
              v121 = v241;
              *v120 = v240;
              v120[1] = v121;
              v122 = (v111[7] + 48 * v62);
              v123 = *&v249[9];
              v124 = *v249;
              *v122 = v248;
              v122[1] = v124;
              *(&v122[1]._object + 1) = v123;
              v125 = v111[2];
              v47 = __OFADD__(v125, 1);
              v118 = v125 + 1;
              if (v47)
              {
                goto LABEL_158;
              }
            }

            v111[2] = v118;
LABEL_80:
            v126 = v238;
            a1[14] = v111;
            swift_endAccess();

            sub_101010148(v239, v126);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v88 = type metadata accessor for Logger();
            sub_1000076D4(v88, qword_10177C6D0);
            v89 = v36;
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              *v92 = v234;
              *(v92 + 4) = v89;
              *v93 = v89;
              v94 = v89;
              _os_log_impl(&_mh_execute_header, v90, v91, "Unsupported value type: %@!", v92, 0xCu);
              sub_10000B3A8(v93, &qword_10169BB30, &unk_10138B3C0);
              a1 = v237;

              v12 = v236;

              goto LABEL_46;
            }

            sub_101010148(v239, v238);
          }
        }
      }
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v15 = *(v2 + 8 * v19);
      ++v16;
      if (v15)
      {
        v16 = v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C6D0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v248._countAndFlagsBits = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1000136BC(v4, object, &v248._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v7, v8, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v9, 0xCu);
    sub_100007BAC(v10);
  }
}

void sub_101151A94(void *a1)
{
  v2 = v1;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v4 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v4, object, qword_10177C6E8))
    {
      break;
    }

    v235 = v2;
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = 0xD000000000000017;
    *(inited + 40) = 0x800000010137CFD0;
    *(inited + 48) = Double._bridgeToObjectiveC()();
    *(inited + 56) = 0;
    v12 = sub_100908768(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
    v2 = v12 + 64;
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    swift_beginAccess();
    v16 = 0;
    v17 = (v13 + 63) >> 6;
    *&v18 = 138412290;
    v234 = v18;
    v237 = a1;
    v236 = v12;
    while (v15)
    {
LABEL_15:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (v16 << 10) | (16 * v20);
      v22 = *(v12 + 56);
      v23 = (*(v12 + 48) + v21);
      v24 = v23[1];
      v240 = *v23;
      v25 = (v22 + v21);
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = a1[14];
      v29 = *(v28 + 16);
      v241 = v24;

      v239 = v26;
      sub_10090C56C(v26, v27);
      v238 = v27;
      if (v29)
      {

        v30 = sub_100771D58(v240, v241);
        if ((v31 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v28 + 56) + 48 * v30, &v248);

        if (v27 <= 1)
        {
          if (v27)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v239 & 1).super.super.isa;
          }

          else
          {
            v32 = v239;
            sub_10090C56C(v239, 0);
            v33 = v32;
          }

          v95 = v33;
          goto LABEL_102;
        }

        if (v27 != 2)
        {
          sub_1010100EC(&v248, &v243);
          if (BYTE8(v244[1]) != 3)
          {
LABEL_145:

            sub_10118B5A0(&v243);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v248);
            return;
          }

          v96 = v239;
          sub_10000A748(&v243._countAndFlagsBits, v245);
          v97 = sub_1000035D0(v245, v246);
          __chkstk_darwin(v97);
          (*(v99 + 16))(v228 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v237;
          v95 = [objc_allocWithZone(NSNumber) initWithDouble:*&v243._countAndFlagsBits + *&v96];
          sub_100007BAC(v245);
          goto LABEL_102;
        }

        sub_1010100EC(&v248, &v243);
        if (BYTE8(v244[1]) != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v243._countAndFlagsBits, v245);
        v79 = v246;
        v78 = v247;
        v80 = sub_1000035D0(v245, v246);
        v232 = v228;
        __chkstk_darwin(v80);
        v230 = v81;
        v82 = v228 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
        v233 = v83;
        (*(v83 + 16))(v82);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v243._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v84 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v84 < 64)
            {
              goto LABEL_89;
            }

            v231 = v78;
            v229 = v228;
            __chkstk_darwin(v84);
            v86 = v228 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v87 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v233 + 8))(v86, v79);
            v78 = v231;
            if (v87)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v229) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v127 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v229)
            {
              v231 = v78;
              if (v127 <= 64)
              {
                v229 = *(*(v78 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v228[2] = v228;
                __chkstk_darwin(AssociatedTypeWitness);
                v228[0] = v228 - v133;
                swift_getAssociatedConformanceWitness();
                v134 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v228[1] = v228;
                __chkstk_darwin(v134);
                v136 = v228 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v137 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v233 + 8))(v136, v79);
                if (v137)
                {
                  goto LABEL_163;
                }

                v78 = v231;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v229 = v228;
              __chkstk_darwin(v127);
              v129 = v228 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v130 = dispatch thunk of static Comparable.< infix(_:_:)();
              v131 = v129;
              v78 = v231;
              (*(v233 + 8))(v131, v79);
              if (v130)
              {
                goto LABEL_163;
              }
            }

            else if (v127 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v243._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v138 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v139 = v78;
          v140 = v138;
          v231 = v139;
          v141 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v140)
          {
            if (v141 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v141 >= 64)
          {
LABEL_93:
            v229 = v228;
            __chkstk_darwin(v141);
            v230 = v228 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v143 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v233 + 8))(v230, v79);
            if (v143)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v144 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v233 + 8))(v82, v79);
        v47 = __OFADD__(v144, v239);
        v145 = &v239[v144];
        if (v47)
        {
          goto LABEL_154;
        }

        v95 = [objc_allocWithZone(NSNumber) initWithLongLong:v145];
        sub_100007BAC(v245);
        a1 = v237;
LABEL_102:
        objc_opt_self();
        v146 = swift_dynamicCastObjCClass();
        if (v146)
        {
          v147 = v146;
          v148 = v95;
          v149 = String.init(_:)(v147);
          v150 = a1;
          v151 = sub_1000DF96C();
          swift_beginAccess();
          v243 = v149;
          *(&v244[0] + 1) = &type metadata for String;
          *&v244[1] = v151;
          BYTE8(v244[1]) = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v242 = v150[14];
          v153 = v242;
          v150[14] = 0x8000000000000000;
          v154 = sub_100771D58(v240, v241);
          v156 = v153[2];
          v157 = (v155 & 1) == 0;
          v47 = __OFADD__(v156, v157);
          v158 = v156 + v157;
          if (v47)
          {
            goto LABEL_151;
          }

          v159 = v155;
          if (v153[3] >= v158)
          {
            v12 = v236;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v223 = v154;
              sub_1010050E8();
              v154 = v223;
            }
          }

          else
          {
            sub_100FE65C4(v158, isUniquelyReferenced_nonNull_native);
            v154 = sub_100771D58(v240, v241);
            v12 = v236;
            if ((v159 & 1) != (v160 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v237;
          if (v159)
          {
            v179 = v154;

            v180 = v242;
            sub_10118B568(&v243, v242[7] + 48 * v179);
          }

          else
          {
            v180 = v242;
            v242[(v154 >> 6) + 8] |= 1 << v154;
            v181 = (v180[6] + 16 * v154);
            v182 = v241;
            *v181 = v240;
            v181[1] = v182;
            v183 = (v180[7] + 48 * v154);
            v184 = *(v244 + 9);
            v185 = v244[0];
            *v183 = v243;
            v183[1] = v185;
            *(&v183[1]._object + 1) = v184;
            v186 = v180[2];
            v47 = __OFADD__(v186, 1);
            v187 = v186 + 1;
            if (v47)
            {
              goto LABEL_153;
            }

            v180[2] = v187;
          }

          v188 = v238;
          a1[14] = v180;
          swift_endAccess();
          sub_101010148(v239, v188);

          goto LABEL_120;
        }

        objc_opt_self();
        v161 = swift_dynamicCastObjCClass();
        if (v161)
        {
          v162 = v161;
          [v161 doubleValue];
          v164 = v163;
          v165 = [v162 integerValue];
          if (v164 == v165)
          {
            v166 = v165;
            v167 = sub_1000DFAD8();
            swift_beginAccess();
            v243._countAndFlagsBits = v166;
            *(&v244[0] + 1) = &type metadata for Int;
            *&v244[1] = v167;
            BYTE8(v244[1]) = 2;
            v168 = swift_isUniquelyReferenced_nonNull_native();
            v169 = a1;
            v170 = v168;
            v242 = v169[14];
            v171 = v242;
            v169[14] = 0x8000000000000000;
            v172 = sub_100771D58(v240, v241);
            v174 = v171[2];
            v175 = (v173 & 1) == 0;
            v47 = __OFADD__(v174, v175);
            v176 = v174 + v175;
            if (v47)
            {
              goto LABEL_157;
            }

            v177 = v173;
            if (v171[3] >= v176)
            {
              if ((v170 & 1) == 0)
              {
                v226 = v172;
                sub_1010050E8();
                v172 = v226;
              }
            }

            else
            {
              sub_100FE65C4(v176, v170);
              v172 = sub_100771D58(v240, v241);
              if ((v177 & 1) != (v178 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v237;
            if ((v177 & 1) == 0)
            {
              v206 = v242;
              v242[(v172 >> 6) + 8] |= 1 << v172;
              v207 = (v206[6] + 16 * v172);
              v208 = v241;
              *v207 = v240;
              v207[1] = v208;
              v209 = (v206[7] + 48 * v172);
              v210 = *(v244 + 9);
              v211 = v244[0];
              *v209 = v243;
              v209[1] = v211;
              *(&v209[1]._object + 1) = v210;
              v212 = v206[2];
              v47 = __OFADD__(v212, 1);
              v213 = v212 + 1;
              if (v47)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v214 = v172;

            v206 = v242;
            sub_10118B568(&v243, v242[7] + 48 * v214);
          }

          else
          {
            v195 = sub_1000DFA84();
            swift_beginAccess();
            *&v243._countAndFlagsBits = v164;
            *(&v244[0] + 1) = &type metadata for Double;
            *&v244[1] = v195;
            BYTE8(v244[1]) = 3;
            v196 = swift_isUniquelyReferenced_nonNull_native();
            v197 = a1;
            v198 = v196;
            v242 = v197[14];
            v199 = v242;
            v197[14] = 0x8000000000000000;
            v172 = sub_100771D58(v240, v241);
            v201 = v199[2];
            v202 = (v200 & 1) == 0;
            v47 = __OFADD__(v201, v202);
            v203 = v201 + v202;
            if (v47)
            {
              goto LABEL_159;
            }

            v204 = v200;
            if (v199[3] >= v203)
            {
              if ((v198 & 1) == 0)
              {
                v227 = v172;
                sub_1010050E8();
                v172 = v227;
              }
            }

            else
            {
              sub_100FE65C4(v203, v198);
              v172 = sub_100771D58(v240, v241);
              if ((v204 & 1) != (v205 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v237;
            if (v204)
            {
              goto LABEL_139;
            }

            v206 = v242;
            v242[(v172 >> 6) + 8] |= 1 << v172;
            v215 = (v206[6] + 16 * v172);
            v216 = v241;
            *v215 = v240;
            v215[1] = v216;
            v217 = (v206[7] + 48 * v172);
            v218 = *(v244 + 9);
            v219 = v244[0];
            *v217 = v243;
            v217[1] = v219;
            *(&v217[1]._object + 1) = v218;
            v220 = v206[2];
            v47 = __OFADD__(v220, 1);
            v213 = v220 + 1;
            if (v47)
            {
              goto LABEL_162;
            }

LABEL_141:
            v206[2] = v213;
          }

          v221 = v238;
          a1[14] = v206;
          swift_endAccess();

          sub_101010148(v239, v221);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v189 = type metadata accessor for Logger();
        sub_1000076D4(v189, qword_10177C6D0);
        v190 = v95;
        v148 = Logger.logObject.getter();
        v191 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v148, v191))
        {

          sub_101010148(v239, v238);
LABEL_120:

          goto LABEL_143;
        }

        v192 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        *v192 = v234;
        *(v192 + 4) = v190;
        *v193 = v190;
        v194 = v190;
        _os_log_impl(&_mh_execute_header, v148, v191, "Unsupported value type: %@!", v192, 0xCu);
        sub_10000B3A8(v193, &qword_10169BB30, &unk_10138B3C0);
        a1 = v237;

        v12 = v236;

        sub_101010148(v239, v238);
LABEL_143:
        sub_10118B5A0(&v248);
      }

      else
      {
LABEL_21:
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v239];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v239];
          }
        }

        else if (v27)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v239 & 1).super.super.isa;
        }

        else
        {
          isa = v239;
        }

        v36 = isa;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          v4 = v36;
          v39 = String.init(_:)(v38);
          object = v39._object;
          v40 = sub_1000DF96C();
          swift_beginAccess();
          v248 = v39;
          *&v249[8] = &type metadata for String;
          *&v249[16] = v40;
          v249[24] = 1;
          v41 = swift_isUniquelyReferenced_nonNull_native();
          v245[0] = a1[14];
          v42 = v245[0];
          a1[14] = 0x8000000000000000;
          v43 = sub_100771D58(v240, v241);
          v45 = *(v42 + 16);
          v46 = (v44 & 1) == 0;
          v47 = __OFADD__(v45, v46);
          v48 = v45 + v46;
          if (v47)
          {
            __break(1u);
            goto LABEL_149;
          }

          v49 = v44;
          if (*(v42 + 24) >= v48)
          {
            if ((v41 & 1) == 0)
            {
              v222 = v43;
              sub_1010050E8();
              v43 = v222;
            }
          }

          else
          {
            sub_100FE65C4(v48, v41);
            v43 = sub_100771D58(v240, v241);
            if ((v49 & 1) != (v50 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v237;
          v12 = v236;
          if (v49)
          {
            v69 = v43;

            v70 = v245[0];
            sub_10118B568(&v248, *(v245[0] + 56) + 48 * v69);
          }

          else
          {
            v70 = v245[0];
            *(v245[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
            v71 = (v70[6] + 16 * v43);
            v72 = v241;
            *v71 = v240;
            v71[1] = v72;
            v73 = (v70[7] + 48 * v43);
            v74 = *&v249[9];
            v75 = *v249;
            *v73 = v248;
            v73[1] = v75;
            *(&v73[1]._object + 1) = v74;
            v76 = v70[2];
            v47 = __OFADD__(v76, 1);
            v77 = v76 + 1;
            if (v47)
            {
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v70[2] = v77;
          }

          a1[14] = v70;
          swift_endAccess();

LABEL_46:
          sub_101010148(v239, v238);
        }

        else
        {
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          if (v51)
          {
            v52 = v51;
            [v51 doubleValue];
            v54 = v53;
            v55 = [v52 integerValue];
            if (v54 == v55)
            {
              v56 = v55;
              v57 = sub_1000DFAD8();
              swift_beginAccess();
              v248._countAndFlagsBits = v56;
              *&v249[8] = &type metadata for Int;
              *&v249[16] = v57;
              v249[24] = 2;
              v58 = swift_isUniquelyReferenced_nonNull_native();
              v59 = a1;
              v60 = v58;
              v245[0] = v59[14];
              v61 = v245[0];
              v59[14] = 0x8000000000000000;
              v62 = sub_100771D58(v240, v241);
              v64 = *(v61 + 16);
              v65 = (v63 & 1) == 0;
              v47 = __OFADD__(v64, v65);
              v66 = v64 + v65;
              if (v47)
              {
                goto LABEL_152;
              }

              v67 = v63;
              if (*(v61 + 24) >= v66)
              {
                if ((v60 & 1) == 0)
                {
                  v224 = v62;
                  sub_1010050E8();
                  v62 = v224;
                }
              }

              else
              {
                sub_100FE65C4(v66, v60);
                v62 = sub_100771D58(v240, v241);
                if ((v67 & 1) != (v68 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v237;
              if (v67)
              {
                goto LABEL_77;
              }

              v111 = v245[0];
              *(v245[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v112 = (v111[6] + 16 * v62);
              v113 = v241;
              *v112 = v240;
              v112[1] = v113;
              v114 = (v111[7] + 48 * v62);
              v115 = *&v249[9];
              v116 = *v249;
              *v114 = v248;
              v114[1] = v116;
              *(&v114[1]._object + 1) = v115;
              v117 = v111[2];
              v47 = __OFADD__(v117, 1);
              v118 = v117 + 1;
              if (v47)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v100 = sub_1000DFA84();
              swift_beginAccess();
              *&v248._countAndFlagsBits = v54;
              *&v249[8] = &type metadata for Double;
              *&v249[16] = v100;
              v249[24] = 3;
              v101 = swift_isUniquelyReferenced_nonNull_native();
              v102 = a1;
              v103 = v101;
              v245[0] = v102[14];
              v104 = v245[0];
              v102[14] = 0x8000000000000000;
              v62 = sub_100771D58(v240, v241);
              v106 = *(v104 + 16);
              v107 = (v105 & 1) == 0;
              v47 = __OFADD__(v106, v107);
              v108 = v106 + v107;
              if (v47)
              {
                goto LABEL_155;
              }

              v109 = v105;
              if (*(v104 + 24) >= v108)
              {
                if ((v103 & 1) == 0)
                {
                  v225 = v62;
                  sub_1010050E8();
                  v62 = v225;
                }
              }

              else
              {
                sub_100FE65C4(v108, v103);
                v62 = sub_100771D58(v240, v241);
                if ((v109 & 1) != (v110 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v237;
              if (v109)
              {
LABEL_77:
                v119 = v62;

                v111 = v245[0];
                sub_10118B568(&v248, *(v245[0] + 56) + 48 * v119);
                goto LABEL_80;
              }

              v111 = v245[0];
              *(v245[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v120 = (v111[6] + 16 * v62);
              v121 = v241;
              *v120 = v240;
              v120[1] = v121;
              v122 = (v111[7] + 48 * v62);
              v123 = *&v249[9];
              v124 = *v249;
              *v122 = v248;
              v122[1] = v124;
              *(&v122[1]._object + 1) = v123;
              v125 = v111[2];
              v47 = __OFADD__(v125, 1);
              v118 = v125 + 1;
              if (v47)
              {
                goto LABEL_158;
              }
            }

            v111[2] = v118;
LABEL_80:
            v126 = v238;
            a1[14] = v111;
            swift_endAccess();

            sub_101010148(v239, v126);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v88 = type metadata accessor for Logger();
            sub_1000076D4(v88, qword_10177C6D0);
            v89 = v36;
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              *v92 = v234;
              *(v92 + 4) = v89;
              *v93 = v89;
              v94 = v89;
              _os_log_impl(&_mh_execute_header, v90, v91, "Unsupported value type: %@!", v92, 0xCu);
              sub_10000B3A8(v93, &qword_10169BB30, &unk_10138B3C0);
              a1 = v237;

              v12 = v236;

              goto LABEL_46;
            }

            sub_101010148(v239, v238);
          }
        }
      }
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v15 = *(v2 + 8 * v19);
      ++v16;
      if (v15)
      {
        v16 = v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C6D0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v248._countAndFlagsBits = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1000136BC(v4, object, &v248._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v7, v8, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v9, 0xCu);
    sub_100007BAC(v10);
  }
}

void sub_1011535E8(void *a1)
{
  v2 = v1;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v4 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v4, object, qword_10177C6E8))
    {
      break;
    }

    v235 = v2;
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = 0xD000000000000015;
    *(inited + 40) = 0x800000010137CFB0;
    *(inited + 48) = Double._bridgeToObjectiveC()();
    *(inited + 56) = 0;
    v12 = sub_100908768(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
    v2 = v12 + 64;
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    swift_beginAccess();
    v16 = 0;
    v17 = (v13 + 63) >> 6;
    *&v18 = 138412290;
    v234 = v18;
    v237 = a1;
    v236 = v12;
    while (v15)
    {
LABEL_15:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (v16 << 10) | (16 * v20);
      v22 = *(v12 + 56);
      v23 = (*(v12 + 48) + v21);
      v24 = v23[1];
      v240 = *v23;
      v25 = (v22 + v21);
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = a1[14];
      v29 = *(v28 + 16);
      v241 = v24;

      v239 = v26;
      sub_10090C56C(v26, v27);
      v238 = v27;
      if (v29)
      {

        v30 = sub_100771D58(v240, v241);
        if ((v31 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v28 + 56) + 48 * v30, &v248);

        if (v27 <= 1)
        {
          if (v27)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v239 & 1).super.super.isa;
          }

          else
          {
            v32 = v239;
            sub_10090C56C(v239, 0);
            v33 = v32;
          }

          v95 = v33;
          goto LABEL_102;
        }

        if (v27 != 2)
        {
          sub_1010100EC(&v248, &v243);
          if (BYTE8(v244[1]) != 3)
          {
LABEL_145:

            sub_10118B5A0(&v243);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v248);
            return;
          }

          v96 = v239;
          sub_10000A748(&v243._countAndFlagsBits, v245);
          v97 = sub_1000035D0(v245, v246);
          __chkstk_darwin(v97);
          (*(v99 + 16))(v228 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v237;
          v95 = [objc_allocWithZone(NSNumber) initWithDouble:*&v243._countAndFlagsBits + *&v96];
          sub_100007BAC(v245);
          goto LABEL_102;
        }

        sub_1010100EC(&v248, &v243);
        if (BYTE8(v244[1]) != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v243._countAndFlagsBits, v245);
        v79 = v246;
        v78 = v247;
        v80 = sub_1000035D0(v245, v246);
        v232 = v228;
        __chkstk_darwin(v80);
        v230 = v81;
        v82 = v228 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
        v233 = v83;
        (*(v83 + 16))(v82);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v243._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v84 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v84 < 64)
            {
              goto LABEL_89;
            }

            v231 = v78;
            v229 = v228;
            __chkstk_darwin(v84);
            v86 = v228 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v87 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v233 + 8))(v86, v79);
            v78 = v231;
            if (v87)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v229) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v127 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v229)
            {
              v231 = v78;
              if (v127 <= 64)
              {
                v229 = *(*(v78 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v228[2] = v228;
                __chkstk_darwin(AssociatedTypeWitness);
                v228[0] = v228 - v133;
                swift_getAssociatedConformanceWitness();
                v134 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v228[1] = v228;
                __chkstk_darwin(v134);
                v136 = v228 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v137 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v233 + 8))(v136, v79);
                if (v137)
                {
                  goto LABEL_163;
                }

                v78 = v231;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v229 = v228;
              __chkstk_darwin(v127);
              v129 = v228 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v130 = dispatch thunk of static Comparable.< infix(_:_:)();
              v131 = v129;
              v78 = v231;
              (*(v233 + 8))(v131, v79);
              if (v130)
              {
                goto LABEL_163;
              }
            }

            else if (v127 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v243._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v138 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v139 = v78;
          v140 = v138;
          v231 = v139;
          v141 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v140)
          {
            if (v141 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v141 >= 64)
          {
LABEL_93:
            v229 = v228;
            __chkstk_darwin(v141);
            v230 = v228 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v143 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v233 + 8))(v230, v79);
            if (v143)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v144 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v233 + 8))(v82, v79);
        v47 = __OFADD__(v144, v239);
        v145 = &v239[v144];
        if (v47)
        {
          goto LABEL_154;
        }

        v95 = [objc_allocWithZone(NSNumber) initWithLongLong:v145];
        sub_100007BAC(v245);
        a1 = v237;
LABEL_102:
        objc_opt_self();
        v146 = swift_dynamicCastObjCClass();
        if (v146)
        {
          v147 = v146;
          v148 = v95;
          v149 = String.init(_:)(v147);
          v150 = a1;
          v151 = sub_1000DF96C();
          swift_beginAccess();
          v243 = v149;
          *(&v244[0] + 1) = &type metadata for String;
          *&v244[1] = v151;
          BYTE8(v244[1]) = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v242 = v150[14];
          v153 = v242;
          v150[14] = 0x8000000000000000;
          v154 = sub_100771D58(v240, v241);
          v156 = v153[2];
          v157 = (v155 & 1) == 0;
          v47 = __OFADD__(v156, v157);
          v158 = v156 + v157;
          if (v47)
          {
            goto LABEL_151;
          }

          v159 = v155;
          if (v153[3] >= v158)
          {
            v12 = v236;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v223 = v154;
              sub_1010050E8();
              v154 = v223;
            }
          }

          else
          {
            sub_100FE65C4(v158, isUniquelyReferenced_nonNull_native);
            v154 = sub_100771D58(v240, v241);
            v12 = v236;
            if ((v159 & 1) != (v160 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v237;
          if (v159)
          {
            v179 = v154;

            v180 = v242;
            sub_10118B568(&v243, v242[7] + 48 * v179);
          }

          else
          {
            v180 = v242;
            v242[(v154 >> 6) + 8] |= 1 << v154;
            v181 = (v180[6] + 16 * v154);
            v182 = v241;
            *v181 = v240;
            v181[1] = v182;
            v183 = (v180[7] + 48 * v154);
            v184 = *(v244 + 9);
            v185 = v244[0];
            *v183 = v243;
            v183[1] = v185;
            *(&v183[1]._object + 1) = v184;
            v186 = v180[2];
            v47 = __OFADD__(v186, 1);
            v187 = v186 + 1;
            if (v47)
            {
              goto LABEL_153;
            }

            v180[2] = v187;
          }

          v188 = v238;
          a1[14] = v180;
          swift_endAccess();
          sub_101010148(v239, v188);

          goto LABEL_120;
        }

        objc_opt_self();
        v161 = swift_dynamicCastObjCClass();
        if (v161)
        {
          v162 = v161;
          [v161 doubleValue];
          v164 = v163;
          v165 = [v162 integerValue];
          if (v164 == v165)
          {
            v166 = v165;
            v167 = sub_1000DFAD8();
            swift_beginAccess();
            v243._countAndFlagsBits = v166;
            *(&v244[0] + 1) = &type metadata for Int;
            *&v244[1] = v167;
            BYTE8(v244[1]) = 2;
            v168 = swift_isUniquelyReferenced_nonNull_native();
            v169 = a1;
            v170 = v168;
            v242 = v169[14];
            v171 = v242;
            v169[14] = 0x8000000000000000;
            v172 = sub_100771D58(v240, v241);
            v174 = v171[2];
            v175 = (v173 & 1) == 0;
            v47 = __OFADD__(v174, v175);
            v176 = v174 + v175;
            if (v47)
            {
              goto LABEL_157;
            }

            v177 = v173;
            if (v171[3] >= v176)
            {
              if ((v170 & 1) == 0)
              {
                v226 = v172;
                sub_1010050E8();
                v172 = v226;
              }
            }

            else
            {
              sub_100FE65C4(v176, v170);
              v172 = sub_100771D58(v240, v241);
              if ((v177 & 1) != (v178 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v237;
            if ((v177 & 1) == 0)
            {
              v206 = v242;
              v242[(v172 >> 6) + 8] |= 1 << v172;
              v207 = (v206[6] + 16 * v172);
              v208 = v241;
              *v207 = v240;
              v207[1] = v208;
              v209 = (v206[7] + 48 * v172);
              v210 = *(v244 + 9);
              v211 = v244[0];
              *v209 = v243;
              v209[1] = v211;
              *(&v209[1]._object + 1) = v210;
              v212 = v206[2];
              v47 = __OFADD__(v212, 1);
              v213 = v212 + 1;
              if (v47)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v214 = v172;

            v206 = v242;
            sub_10118B568(&v243, v242[7] + 48 * v214);
          }

          else
          {
            v195 = sub_1000DFA84();
            swift_beginAccess();
            *&v243._countAndFlagsBits = v164;
            *(&v244[0] + 1) = &type metadata for Double;
            *&v244[1] = v195;
            BYTE8(v244[1]) = 3;
            v196 = swift_isUniquelyReferenced_nonNull_native();
            v197 = a1;
            v198 = v196;
            v242 = v197[14];
            v199 = v242;
            v197[14] = 0x8000000000000000;
            v172 = sub_100771D58(v240, v241);
            v201 = v199[2];
            v202 = (v200 & 1) == 0;
            v47 = __OFADD__(v201, v202);
            v203 = v201 + v202;
            if (v47)
            {
              goto LABEL_159;
            }

            v204 = v200;
            if (v199[3] >= v203)
            {
              if ((v198 & 1) == 0)
              {
                v227 = v172;
                sub_1010050E8();
                v172 = v227;
              }
            }

            else
            {
              sub_100FE65C4(v203, v198);
              v172 = sub_100771D58(v240, v241);
              if ((v204 & 1) != (v205 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v237;
            if (v204)
            {
              goto LABEL_139;
            }

            v206 = v242;
            v242[(v172 >> 6) + 8] |= 1 << v172;
            v215 = (v206[6] + 16 * v172);
            v216 = v241;
            *v215 = v240;
            v215[1] = v216;
            v217 = (v206[7] + 48 * v172);
            v218 = *(v244 + 9);
            v219 = v244[0];
            *v217 = v243;
            v217[1] = v219;
            *(&v217[1]._object + 1) = v218;
            v220 = v206[2];
            v47 = __OFADD__(v220, 1);
            v213 = v220 + 1;
            if (v47)
            {
              goto LABEL_162;
            }

LABEL_141:
            v206[2] = v213;
          }

          v221 = v238;
          a1[14] = v206;
          swift_endAccess();

          sub_101010148(v239, v221);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v189 = type metadata accessor for Logger();
        sub_1000076D4(v189, qword_10177C6D0);
        v190 = v95;
        v148 = Logger.logObject.getter();
        v191 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v148, v191))
        {

          sub_101010148(v239, v238);
LABEL_120:

          goto LABEL_143;
        }

        v192 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        *v192 = v234;
        *(v192 + 4) = v190;
        *v193 = v190;
        v194 = v190;
        _os_log_impl(&_mh_execute_header, v148, v191, "Unsupported value type: %@!", v192, 0xCu);
        sub_10000B3A8(v193, &qword_10169BB30, &unk_10138B3C0);
        a1 = v237;

        v12 = v236;

        sub_101010148(v239, v238);
LABEL_143:
        sub_10118B5A0(&v248);
      }

      else
      {
LABEL_21:
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v239];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v239];
          }
        }

        else if (v27)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v239 & 1).super.super.isa;
        }

        else
        {
          isa = v239;
        }

        v36 = isa;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          v4 = v36;
          v39 = String.init(_:)(v38);
          object = v39._object;
          v40 = sub_1000DF96C();
          swift_beginAccess();
          v248 = v39;
          *&v249[8] = &type metadata for String;
          *&v249[16] = v40;
          v249[24] = 1;
          v41 = swift_isUniquelyReferenced_nonNull_native();
          v245[0] = a1[14];
          v42 = v245[0];
          a1[14] = 0x8000000000000000;
          v43 = sub_100771D58(v240, v241);
          v45 = *(v42 + 16);
          v46 = (v44 & 1) == 0;
          v47 = __OFADD__(v45, v46);
          v48 = v45 + v46;
          if (v47)
          {
            __break(1u);
            goto LABEL_149;
          }

          v49 = v44;
          if (*(v42 + 24) >= v48)
          {
            if ((v41 & 1) == 0)
            {
              v222 = v43;
              sub_1010050E8();
              v43 = v222;
            }
          }

          else
          {
            sub_100FE65C4(v48, v41);
            v43 = sub_100771D58(v240, v241);
            if ((v49 & 1) != (v50 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v237;
          v12 = v236;
          if (v49)
          {
            v69 = v43;

            v70 = v245[0];
            sub_10118B568(&v248, *(v245[0] + 56) + 48 * v69);
          }

          else
          {
            v70 = v245[0];
            *(v245[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
            v71 = (v70[6] + 16 * v43);
            v72 = v241;
            *v71 = v240;
            v71[1] = v72;
            v73 = (v70[7] + 48 * v43);
            v74 = *&v249[9];
            v75 = *v249;
            *v73 = v248;
            v73[1] = v75;
            *(&v73[1]._object + 1) = v74;
            v76 = v70[2];
            v47 = __OFADD__(v76, 1);
            v77 = v76 + 1;
            if (v47)
            {
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v70[2] = v77;
          }

          a1[14] = v70;
          swift_endAccess();

LABEL_46:
          sub_101010148(v239, v238);
        }

        else
        {
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          if (v51)
          {
            v52 = v51;
            [v51 doubleValue];
            v54 = v53;
            v55 = [v52 integerValue];
            if (v54 == v55)
            {
              v56 = v55;
              v57 = sub_1000DFAD8();
              swift_beginAccess();
              v248._countAndFlagsBits = v56;
              *&v249[8] = &type metadata for Int;
              *&v249[16] = v57;
              v249[24] = 2;
              v58 = swift_isUniquelyReferenced_nonNull_native();
              v59 = a1;
              v60 = v58;
              v245[0] = v59[14];
              v61 = v245[0];
              v59[14] = 0x8000000000000000;
              v62 = sub_100771D58(v240, v241);
              v64 = *(v61 + 16);
              v65 = (v63 & 1) == 0;
              v47 = __OFADD__(v64, v65);
              v66 = v64 + v65;
              if (v47)
              {
                goto LABEL_152;
              }

              v67 = v63;
              if (*(v61 + 24) >= v66)
              {
                if ((v60 & 1) == 0)
                {
                  v224 = v62;
                  sub_1010050E8();
                  v62 = v224;
                }
              }

              else
              {
                sub_100FE65C4(v66, v60);
                v62 = sub_100771D58(v240, v241);
                if ((v67 & 1) != (v68 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v237;
              if (v67)
              {
                goto LABEL_77;
              }

              v111 = v245[0];
              *(v245[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v112 = (v111[6] + 16 * v62);
              v113 = v241;
              *v112 = v240;
              v112[1] = v113;
              v114 = (v111[7] + 48 * v62);
              v115 = *&v249[9];
              v116 = *v249;
              *v114 = v248;
              v114[1] = v116;
              *(&v114[1]._object + 1) = v115;
              v117 = v111[2];
              v47 = __OFADD__(v117, 1);
              v118 = v117 + 1;
              if (v47)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v100 = sub_1000DFA84();
              swift_beginAccess();
              *&v248._countAndFlagsBits = v54;
              *&v249[8] = &type metadata for Double;
              *&v249[16] = v100;
              v249[24] = 3;
              v101 = swift_isUniquelyReferenced_nonNull_native();
              v102 = a1;
              v103 = v101;
              v245[0] = v102[14];
              v104 = v245[0];
              v102[14] = 0x8000000000000000;
              v62 = sub_100771D58(v240, v241);
              v106 = *(v104 + 16);
              v107 = (v105 & 1) == 0;
              v47 = __OFADD__(v106, v107);
              v108 = v106 + v107;
              if (v47)
              {
                goto LABEL_155;
              }

              v109 = v105;
              if (*(v104 + 24) >= v108)
              {
                if ((v103 & 1) == 0)
                {
                  v225 = v62;
                  sub_1010050E8();
                  v62 = v225;
                }
              }

              else
              {
                sub_100FE65C4(v108, v103);
                v62 = sub_100771D58(v240, v241);
                if ((v109 & 1) != (v110 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v237;
              if (v109)
              {
LABEL_77:
                v119 = v62;

                v111 = v245[0];
                sub_10118B568(&v248, *(v245[0] + 56) + 48 * v119);
                goto LABEL_80;
              }

              v111 = v245[0];
              *(v245[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v120 = (v111[6] + 16 * v62);
              v121 = v241;
              *v120 = v240;
              v120[1] = v121;
              v122 = (v111[7] + 48 * v62);
              v123 = *&v249[9];
              v124 = *v249;
              *v122 = v248;
              v122[1] = v124;
              *(&v122[1]._object + 1) = v123;
              v125 = v111[2];
              v47 = __OFADD__(v125, 1);
              v118 = v125 + 1;
              if (v47)
              {
                goto LABEL_158;
              }
            }

            v111[2] = v118;
LABEL_80:
            v126 = v238;
            a1[14] = v111;
            swift_endAccess();

            sub_101010148(v239, v126);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v88 = type metadata accessor for Logger();
            sub_1000076D4(v88, qword_10177C6D0);
            v89 = v36;
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              *v92 = v234;
              *(v92 + 4) = v89;
              *v93 = v89;
              v94 = v89;
              _os_log_impl(&_mh_execute_header, v90, v91, "Unsupported value type: %@!", v92, 0xCu);
              sub_10000B3A8(v93, &qword_10169BB30, &unk_10138B3C0);
              a1 = v237;

              v12 = v236;

              goto LABEL_46;
            }

            sub_101010148(v239, v238);
          }
        }
      }
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v15 = *(v2 + 8 * v19);
      ++v16;
      if (v15)
      {
        v16 = v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C6D0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v248._countAndFlagsBits = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1000136BC(v4, object, &v248._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v7, v8, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v9, 0xCu);
    sub_100007BAC(v10);
  }
}

void sub_10115513C(void *a1)
{
  v2 = v1;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v4 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v4, object, qword_10177C6E8))
    {
      break;
    }

    v235 = v2;
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000010137CF90;
    *(inited + 48) = Double._bridgeToObjectiveC()();
    *(inited + 56) = 0;
    v12 = sub_100908768(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
    v2 = v12 + 64;
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    swift_beginAccess();
    v16 = 0;
    v17 = (v13 + 63) >> 6;
    *&v18 = 138412290;
    v234 = v18;
    v237 = a1;
    v236 = v12;
    while (v15)
    {
LABEL_15:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (v16 << 10) | (16 * v20);
      v22 = *(v12 + 56);
      v23 = (*(v12 + 48) + v21);
      v24 = v23[1];
      v240 = *v23;
      v25 = (v22 + v21);
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = a1[14];
      v29 = *(v28 + 16);
      v241 = v24;

      v239 = v26;
      sub_10090C56C(v26, v27);
      v238 = v27;
      if (v29)
      {

        v30 = sub_100771D58(v240, v241);
        if ((v31 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v28 + 56) + 48 * v30, &v248);

        if (v27 <= 1)
        {
          if (v27)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v33 = NSNumber.init(BOOLeanLiteral:)(v239 & 1).super.super.isa;
          }

          else
          {
            v32 = v239;
            sub_10090C56C(v239, 0);
            v33 = v32;
          }

          v95 = v33;
          goto LABEL_102;
        }

        if (v27 != 2)
        {
          sub_1010100EC(&v248, &v243);
          if (BYTE8(v244[1]) != 3)
          {
LABEL_145:

            sub_10118B5A0(&v243);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v248);
            return;
          }

          v96 = v239;
          sub_10000A748(&v243._countAndFlagsBits, v245);
          v97 = sub_1000035D0(v245, v246);
          __chkstk_darwin(v97);
          (*(v99 + 16))(v228 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v237;
          v95 = [objc_allocWithZone(NSNumber) initWithDouble:*&v243._countAndFlagsBits + *&v96];
          sub_100007BAC(v245);
          goto LABEL_102;
        }

        sub_1010100EC(&v248, &v243);
        if (BYTE8(v244[1]) != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v243._countAndFlagsBits, v245);
        v79 = v246;
        v78 = v247;
        v80 = sub_1000035D0(v245, v246);
        v232 = v228;
        __chkstk_darwin(v80);
        v230 = v81;
        v82 = v228 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
        v233 = v83;
        (*(v83 + 16))(v82);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v243._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v84 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v84 < 64)
            {
              goto LABEL_89;
            }

            v231 = v78;
            v229 = v228;
            __chkstk_darwin(v84);
            v86 = v228 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v87 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v233 + 8))(v86, v79);
            v78 = v231;
            if (v87)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v229) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v127 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v229)
            {
              v231 = v78;
              if (v127 <= 64)
              {
                v229 = *(*(v78 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v228[2] = v228;
                __chkstk_darwin(AssociatedTypeWitness);
                v228[0] = v228 - v133;
                swift_getAssociatedConformanceWitness();
                v134 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v228[1] = v228;
                __chkstk_darwin(v134);
                v136 = v228 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v137 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v233 + 8))(v136, v79);
                if (v137)
                {
                  goto LABEL_163;
                }

                v78 = v231;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v229 = v228;
              __chkstk_darwin(v127);
              v129 = v228 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v130 = dispatch thunk of static Comparable.< infix(_:_:)();
              v131 = v129;
              v78 = v231;
              (*(v233 + 8))(v131, v79);
              if (v130)
              {
                goto LABEL_163;
              }
            }

            else if (v127 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v243._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v138 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v139 = v78;
          v140 = v138;
          v231 = v139;
          v141 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v140)
          {
            if (v141 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v141 >= 64)
          {
LABEL_93:
            v229 = v228;
            __chkstk_darwin(v141);
            v230 = v228 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v143 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v233 + 8))(v230, v79);
            if (v143)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v144 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v233 + 8))(v82, v79);
        v47 = __OFADD__(v144, v239);
        v145 = &v239[v144];
        if (v47)
        {
          goto LABEL_154;
        }

        v95 = [objc_allocWithZone(NSNumber) initWithLongLong:v145];
        sub_100007BAC(v245);
        a1 = v237;
LABEL_102:
        objc_opt_self();
        v146 = swift_dynamicCastObjCClass();
        if (v146)
        {
          v147 = v146;
          v148 = v95;
          v149 = String.init(_:)(v147);
          v150 = a1;
          v151 = sub_1000DF96C();
          swift_beginAccess();
          v243 = v149;
          *(&v244[0] + 1) = &type metadata for String;
          *&v244[1] = v151;
          BYTE8(v244[1]) = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v242 = v150[14];
          v153 = v242;
          v150[14] = 0x8000000000000000;
          v154 = sub_100771D58(v240, v241);
          v156 = v153[2];
          v157 = (v155 & 1) == 0;
          v47 = __OFADD__(v156, v157);
          v158 = v156 + v157;
          if (v47)
          {
            goto LABEL_151;
          }

          v159 = v155;
          if (v153[3] >= v158)
          {
            v12 = v236;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v223 = v154;
              sub_1010050E8();
              v154 = v223;
            }
          }

          else
          {
            sub_100FE65C4(v158, isUniquelyReferenced_nonNull_native);
            v154 = sub_100771D58(v240, v241);
            v12 = v236;
            if ((v159 & 1) != (v160 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v237;
          if (v159)
          {
            v179 = v154;

            v180 = v242;
            sub_10118B568(&v243, v242[7] + 48 * v179);
          }

          else
          {
            v180 = v242;
            v242[(v154 >> 6) + 8] |= 1 << v154;
            v181 = (v180[6] + 16 * v154);
            v182 = v241;
            *v181 = v240;
            v181[1] = v182;
            v183 = (v180[7] + 48 * v154);
            v184 = *(v244 + 9);
            v185 = v244[0];
            *v183 = v243;
            v183[1] = v185;
            *(&v183[1]._object + 1) = v184;
            v186 = v180[2];
            v47 = __OFADD__(v186, 1);
            v187 = v186 + 1;
            if (v47)
            {
              goto LABEL_153;
            }

            v180[2] = v187;
          }

          v188 = v238;
          a1[14] = v180;
          swift_endAccess();
          sub_101010148(v239, v188);

          goto LABEL_120;
        }

        objc_opt_self();
        v161 = swift_dynamicCastObjCClass();
        if (v161)
        {
          v162 = v161;
          [v161 doubleValue];
          v164 = v163;
          v165 = [v162 integerValue];
          if (v164 == v165)
          {
            v166 = v165;
            v167 = sub_1000DFAD8();
            swift_beginAccess();
            v243._countAndFlagsBits = v166;
            *(&v244[0] + 1) = &type metadata for Int;
            *&v244[1] = v167;
            BYTE8(v244[1]) = 2;
            v168 = swift_isUniquelyReferenced_nonNull_native();
            v169 = a1;
            v170 = v168;
            v242 = v169[14];
            v171 = v242;
            v169[14] = 0x8000000000000000;
            v172 = sub_100771D58(v240, v241);
            v174 = v171[2];
            v175 = (v173 & 1) == 0;
            v47 = __OFADD__(v174, v175);
            v176 = v174 + v175;
            if (v47)
            {
              goto LABEL_157;
            }

            v177 = v173;
            if (v171[3] >= v176)
            {
              if ((v170 & 1) == 0)
              {
                v226 = v172;
                sub_1010050E8();
                v172 = v226;
              }
            }

            else
            {
              sub_100FE65C4(v176, v170);
              v172 = sub_100771D58(v240, v241);
              if ((v177 & 1) != (v178 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v237;
            if ((v177 & 1) == 0)
            {
              v206 = v242;
              v242[(v172 >> 6) + 8] |= 1 << v172;
              v207 = (v206[6] + 16 * v172);
              v208 = v241;
              *v207 = v240;
              v207[1] = v208;
              v209 = (v206[7] + 48 * v172);
              v210 = *(v244 + 9);
              v211 = v244[0];
              *v209 = v243;
              v209[1] = v211;
              *(&v209[1]._object + 1) = v210;
              v212 = v206[2];
              v47 = __OFADD__(v212, 1);
              v213 = v212 + 1;
              if (v47)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v214 = v172;

            v206 = v242;
            sub_10118B568(&v243, v242[7] + 48 * v214);
          }

          else
          {
            v195 = sub_1000DFA84();
            swift_beginAccess();
            *&v243._countAndFlagsBits = v164;
            *(&v244[0] + 1) = &type metadata for Double;
            *&v244[1] = v195;
            BYTE8(v244[1]) = 3;
            v196 = swift_isUniquelyReferenced_nonNull_native();
            v197 = a1;
            v198 = v196;
            v242 = v197[14];
            v199 = v242;
            v197[14] = 0x8000000000000000;
            v172 = sub_100771D58(v240, v241);
            v201 = v199[2];
            v202 = (v200 & 1) == 0;
            v47 = __OFADD__(v201, v202);
            v203 = v201 + v202;
            if (v47)
            {
              goto LABEL_159;
            }

            v204 = v200;
            if (v199[3] >= v203)
            {
              if ((v198 & 1) == 0)
              {
                v227 = v172;
                sub_1010050E8();
                v172 = v227;
              }
            }

            else
            {
              sub_100FE65C4(v203, v198);
              v172 = sub_100771D58(v240, v241);
              if ((v204 & 1) != (v205 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v237;
            if (v204)
            {
              goto LABEL_139;
            }

            v206 = v242;
            v242[(v172 >> 6) + 8] |= 1 << v172;
            v215 = (v206[6] + 16 * v172);
            v216 = v241;
            *v215 = v240;
            v215[1] = v216;
            v217 = (v206[7] + 48 * v172);
            v218 = *(v244 + 9);
            v219 = v244[0];
            *v217 = v243;
            v217[1] = v219;
            *(&v217[1]._object + 1) = v218;
            v220 = v206[2];
            v47 = __OFADD__(v220, 1);
            v213 = v220 + 1;
            if (v47)
            {
              goto LABEL_162;
            }

LABEL_141:
            v206[2] = v213;
          }

          v221 = v238;
          a1[14] = v206;
          swift_endAccess();

          sub_101010148(v239, v221);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v189 = type metadata accessor for Logger();
        sub_1000076D4(v189, qword_10177C6D0);
        v190 = v95;
        v148 = Logger.logObject.getter();
        v191 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v148, v191))
        {

          sub_101010148(v239, v238);
LABEL_120:

          goto LABEL_143;
        }

        v192 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        *v192 = v234;
        *(v192 + 4) = v190;
        *v193 = v190;
        v194 = v190;
        _os_log_impl(&_mh_execute_header, v148, v191, "Unsupported value type: %@!", v192, 0xCu);
        sub_10000B3A8(v193, &qword_10169BB30, &unk_10138B3C0);
        a1 = v237;

        v12 = v236;

        sub_101010148(v239, v238);
LABEL_143:
        sub_10118B5A0(&v248);
      }

      else
      {
LABEL_21:
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v35 = objc_allocWithZone(NSNumber);
            isa = [v35 initWithLongLong:v239];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v239];
          }
        }

        else if (v27)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v239 & 1).super.super.isa;
        }

        else
        {
          isa = v239;
        }

        v36 = isa;
        objc_opt_self();
        v37 = swift_dynamicCastObjCClass();
        if (v37)
        {
          v38 = v37;
          v4 = v36;
          v39 = String.init(_:)(v38);
          object = v39._object;
          v40 = sub_1000DF96C();
          swift_beginAccess();
          v248 = v39;
          *&v249[8] = &type metadata for String;
          *&v249[16] = v40;
          v249[24] = 1;
          v41 = swift_isUniquelyReferenced_nonNull_native();
          v245[0] = a1[14];
          v42 = v245[0];
          a1[14] = 0x8000000000000000;
          v43 = sub_100771D58(v240, v241);
          v45 = *(v42 + 16);
          v46 = (v44 & 1) == 0;
          v47 = __OFADD__(v45, v46);
          v48 = v45 + v46;
          if (v47)
          {
            __break(1u);
            goto LABEL_149;
          }

          v49 = v44;
          if (*(v42 + 24) >= v48)
          {
            if ((v41 & 1) == 0)
            {
              v222 = v43;
              sub_1010050E8();
              v43 = v222;
            }
          }

          else
          {
            sub_100FE65C4(v48, v41);
            v43 = sub_100771D58(v240, v241);
            if ((v49 & 1) != (v50 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v237;
          v12 = v236;
          if (v49)
          {
            v69 = v43;

            v70 = v245[0];
            sub_10118B568(&v248, *(v245[0] + 56) + 48 * v69);
          }

          else
          {
            v70 = v245[0];
            *(v245[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
            v71 = (v70[6] + 16 * v43);
            v72 = v241;
            *v71 = v240;
            v71[1] = v72;
            v73 = (v70[7] + 48 * v43);
            v74 = *&v249[9];
            v75 = *v249;
            *v73 = v248;
            v73[1] = v75;
            *(&v73[1]._object + 1) = v74;
            v76 = v70[2];
            v47 = __OFADD__(v76, 1);
            v77 = v76 + 1;
            if (v47)
            {
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v70[2] = v77;
          }

          a1[14] = v70;
          swift_endAccess();

LABEL_46:
          sub_101010148(v239, v238);
        }

        else
        {
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          if (v51)
          {
            v52 = v51;
            [v51 doubleValue];
            v54 = v53;
            v55 = [v52 integerValue];
            if (v54 == v55)
            {
              v56 = v55;
              v57 = sub_1000DFAD8();
              swift_beginAccess();
              v248._countAndFlagsBits = v56;
              *&v249[8] = &type metadata for Int;
              *&v249[16] = v57;
              v249[24] = 2;
              v58 = swift_isUniquelyReferenced_nonNull_native();
              v59 = a1;
              v60 = v58;
              v245[0] = v59[14];
              v61 = v245[0];
              v59[14] = 0x8000000000000000;
              v62 = sub_100771D58(v240, v241);
              v64 = *(v61 + 16);
              v65 = (v63 & 1) == 0;
              v47 = __OFADD__(v64, v65);
              v66 = v64 + v65;
              if (v47)
              {
                goto LABEL_152;
              }

              v67 = v63;
              if (*(v61 + 24) >= v66)
              {
                if ((v60 & 1) == 0)
                {
                  v224 = v62;
                  sub_1010050E8();
                  v62 = v224;
                }
              }

              else
              {
                sub_100FE65C4(v66, v60);
                v62 = sub_100771D58(v240, v241);
                if ((v67 & 1) != (v68 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v237;
              if (v67)
              {
                goto LABEL_77;
              }

              v111 = v245[0];
              *(v245[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v112 = (v111[6] + 16 * v62);
              v113 = v241;
              *v112 = v240;
              v112[1] = v113;
              v114 = (v111[7] + 48 * v62);
              v115 = *&v249[9];
              v116 = *v249;
              *v114 = v248;
              v114[1] = v116;
              *(&v114[1]._object + 1) = v115;
              v117 = v111[2];
              v47 = __OFADD__(v117, 1);
              v118 = v117 + 1;
              if (v47)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v100 = sub_1000DFA84();
              swift_beginAccess();
              *&v248._countAndFlagsBits = v54;
              *&v249[8] = &type metadata for Double;
              *&v249[16] = v100;
              v249[24] = 3;
              v101 = swift_isUniquelyReferenced_nonNull_native();
              v102 = a1;
              v103 = v101;
              v245[0] = v102[14];
              v104 = v245[0];
              v102[14] = 0x8000000000000000;
              v62 = sub_100771D58(v240, v241);
              v106 = *(v104 + 16);
              v107 = (v105 & 1) == 0;
              v47 = __OFADD__(v106, v107);
              v108 = v106 + v107;
              if (v47)
              {
                goto LABEL_155;
              }

              v109 = v105;
              if (*(v104 + 24) >= v108)
              {
                if ((v103 & 1) == 0)
                {
                  v225 = v62;
                  sub_1010050E8();
                  v62 = v225;
                }
              }

              else
              {
                sub_100FE65C4(v108, v103);
                v62 = sub_100771D58(v240, v241);
                if ((v109 & 1) != (v110 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v237;
              if (v109)
              {
LABEL_77:
                v119 = v62;

                v111 = v245[0];
                sub_10118B568(&v248, *(v245[0] + 56) + 48 * v119);
                goto LABEL_80;
              }

              v111 = v245[0];
              *(v245[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v120 = (v111[6] + 16 * v62);
              v121 = v241;
              *v120 = v240;
              v120[1] = v121;
              v122 = (v111[7] + 48 * v62);
              v123 = *&v249[9];
              v124 = *v249;
              *v122 = v248;
              v122[1] = v124;
              *(&v122[1]._object + 1) = v123;
              v125 = v111[2];
              v47 = __OFADD__(v125, 1);
              v118 = v125 + 1;
              if (v47)
              {
                goto LABEL_158;
              }
            }

            v111[2] = v118;
LABEL_80:
            v126 = v238;
            a1[14] = v111;
            swift_endAccess();

            sub_101010148(v239, v126);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v88 = type metadata accessor for Logger();
            sub_1000076D4(v88, qword_10177C6D0);
            v89 = v36;
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              *v92 = v234;
              *(v92 + 4) = v89;
              *v93 = v89;
              v94 = v89;
              _os_log_impl(&_mh_execute_header, v90, v91, "Unsupported value type: %@!", v92, 0xCu);
              sub_10000B3A8(v93, &qword_10169BB30, &unk_10138B3C0);
              a1 = v237;

              v12 = v236;

              goto LABEL_46;
            }

            sub_101010148(v239, v238);
          }
        }
      }
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v15 = *(v2 + 8 * v19);
      ++v16;
      if (v15)
      {
        v16 = v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C6D0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v248._countAndFlagsBits = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1000136BC(v4, object, &v248._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v7, v8, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v9, 0xCu);
    sub_100007BAC(v10);
  }
}