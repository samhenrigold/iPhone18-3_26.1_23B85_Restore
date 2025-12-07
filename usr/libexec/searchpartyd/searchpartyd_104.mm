uint64_t sub_100B6FF30()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_100B70048, v1, 0);
}

uint64_t sub_100B70048()
{
  v1 = v0[4];
  v0[13] = v0[2];
  return _swift_task_switch(sub_100B7006C, v1, 0);
}

uint64_t sub_100B7006C()
{
  v1 = v0[13];
  if (*(v1 + 16))
  {
    v2 = v0[7];
    v3 = v0[5];
    v4 = v0[3];
    v5 = *(v0[6] + 80);
    sub_100B72A30(v1 + ((v5 + 32) & ~v5), v2, type metadata accessor for OwnedBeaconRecord);

    v6 = *(v3 + 20);
    v7 = type metadata accessor for UUID();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v4, v2 + v6, v7);
    sub_100B72BF8(v2, type metadata accessor for OwnedBeaconRecord);
    (*(v8 + 56))(v4, 0, 1, v7);
  }

  else
  {
    v9 = v0[3];

    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100B70220()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

void *sub_100B702C4(uint64_t a1, uint64_t a2)
{
  v99 = a1;
  v103 = *v2;
  v104 = v2;
  v4 = sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  __chkstk_darwin(v4 - 8);
  v108 = &v96 - v5;
  v106 = type metadata accessor for DeviceEvent(0);
  v100 = *(v106 - 8);
  v6 = __chkstk_darwin(v106);
  v101 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v98 = &v96 - v9;
  v10 = __chkstk_darwin(v8);
  v97 = &v96 - v11;
  __chkstk_darwin(v10);
  v107 = &v96 - v12;
  v116 = type metadata accessor for HashAlgorithm();
  v13 = *(v116 - 8);
  __chkstk_darwin(v116);
  v115 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v105 = *(v15 - 8);
  v16 = __chkstk_darwin(v15 - 8);
  v102 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v96 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v96 - v22;
  __chkstk_darwin(v21);
  v118 = &v96 - v24;
  if (qword_101694CE8 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v25 = type metadata accessor for Logger();
    v110 = sub_1000076D4(v25, qword_1016B66A8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Process LocalFindable locations response.", v28, 2u);
    }

    v109 = v20;

    v30 = *(a2 + 16);
    if (!v30)
    {
      break;
    }

    *&v114 = v23;
    v31 = a2 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
    v32 = *(v105 + 72);
    LODWORD(v113) = enum case for HashAlgorithm.sha256(_:);
    v111 = (v13 + 8);
    v112 = (v13 + 104);
    v119 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      v117 = v30;
      v20 = v118;
      sub_100B72A30(v31, v118, type metadata accessor for LocalFindableAccessoryRecord);
      v33 = UUID.data.getter();
      v35 = v34;
      v36 = v115;
      a2 = v116;
      (*v112)(v115, v113, v116);
      v37 = Data.hash(algorithm:)();
      v13 = v38;
      sub_100016590(v33, v35);
      (*v111)(v36, a2);
      v23 = v114;
      sub_100B72A30(v20, v114, type metadata accessor for LocalFindableAccessoryRecord);
      v39 = v119;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v120 = v39;
      v42 = sub_100771E30(v37, v13);
      v43 = *(v39 + 16);
      v44 = (v41 & 1) == 0;
      v45 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        break;
      }

      a2 = v41;
      if (*(v39 + 24) >= v45)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101009B94();
        }
      }

      else
      {
        sub_100FEFC18(v45, isUniquelyReferenced_nonNull_native);
        v46 = sub_100771E30(v37, v13);
        if ((a2 & 1) != (v47 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v42 = v46;
      }

      v48 = v120;
      v119 = v120;
      if (a2)
      {
        sub_100B71F24(v23, v120[7] + v42 * v32);
        sub_100016590(v37, v13);
        sub_100B72BF8(v118, type metadata accessor for LocalFindableAccessoryRecord);
      }

      else
      {
        v120[(v42 >> 6) + 8] |= 1 << v42;
        v49 = (v48[6] + 16 * v42);
        *v49 = v37;
        v49[1] = v13;
        sub_100B729C8(v23, v48[7] + v42 * v32, type metadata accessor for LocalFindableAccessoryRecord);
        sub_100B72BF8(v118, type metadata accessor for LocalFindableAccessoryRecord);
        v50 = v48[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_42;
        }

        v48[2] = v52;
      }

      v31 += v32;
      v30 = (v117 - 1);
      if (v117 == 1)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  v119 = _swiftEmptyDictionarySingleton;
LABEL_18:
  v53 = v109;
  v118 = *(v99 + 16);
  if (v118)
  {
    v116 = 0;
    v113 = (v100 + 48);
    v54 = (v99 + 48);
    v117 = _swiftEmptyDictionarySingleton;
    *&v29 = 136315138;
    v114 = v29;
    v56 = v107;
    v55 = v108;
    v57 = v119;
    while (1)
    {
      v59 = *(v54 - 2);
      v58 = *(v54 - 1);
      v60 = *v54;
      v61 = v57;
      v62 = v57[2];
      sub_100017D5C(v59, v58);

      if (!v62 || (v63 = sub_100771E30(v59, v58), (v64 & 1) == 0))
      {
        sub_100017D5C(v59, v58);

        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();
        sub_100016590(v59, v58);

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v120 = v75;
          *v74 = v114;
          sub_100017D5C(v59, v58);
          v76 = Data.description.getter();
          v78 = v77;
          sub_100016590(v59, v58);
          v79 = sub_1000136BC(v76, v78, &v120);

          *(v74 + 4) = v79;
          v53 = v109;
          _os_log_impl(&_mh_execute_header, v72, v73, "Location for unknown identifier: %s", v74, 0xCu);
          sub_100007BAC(v75);
          v56 = v107;

          v55 = v108;
        }

        sub_100016590(v59, v58);

        goto LABEL_21;
      }

      v115 = v58;
      v65 = v61[7] + *(v105 + 72) * v63;
      v66 = v102;
      sub_100B72A30(v65, v102, type metadata accessor for LocalFindableAccessoryRecord);
      v67 = sub_100B729C8(v66, v53, type metadata accessor for LocalFindableAccessoryRecord);
      __chkstk_darwin(v67);
      v68 = v103;
      *(&v96 - 4) = v104;
      *(&v96 - 3) = v53;
      *(&v96 - 2) = v68;

      v69 = v60;
      v70 = v116;
      v71 = sub_1005C71E4(sub_100B71F04, (&v96 - 6), v69);
      v116 = v70;

      sub_1012BB39C(v71, v55);

      if ((*v113)(v55, 1, v106) != 1)
      {
        break;
      }

      sub_100016590(v59, v115);

      sub_10000B3A8(v55, &unk_1016AA500, &unk_1013B3600);
LABEL_35:
      sub_100B72BF8(v53, type metadata accessor for LocalFindableAccessoryRecord);
LABEL_21:
      v57 = v119;
      v54 += 3;
      if (!--v118)
      {

        goto LABEL_38;
      }
    }

    sub_100B729C8(v55, v56, type metadata accessor for DeviceEvent);
    if (v117[2])
    {
      v80 = sub_1000210EC(v53);
      if (v81)
      {
        v82 = v98;
        sub_100B72A30(v117[7] + *(v100 + 72) * v80, v98, type metadata accessor for DeviceEvent);
        v83 = v82;
        v84 = v97;
        sub_100B729C8(v83, v97, type metadata accessor for DeviceEvent);
        if (static Date.< infix(_:_:)())
        {
          v85 = v101;
          sub_100B72A30(v56, v101, type metadata accessor for DeviceEvent);
          v86 = v117;
          v87 = swift_isUniquelyReferenced_nonNull_native();
          v120 = v86;
          sub_100FFEA2C(v85, v53, v87);
          sub_100016590(v59, v115);

          v117 = v120;
          sub_100B72BF8(v84, type metadata accessor for DeviceEvent);
          v88 = v56;
LABEL_34:
          sub_100B72BF8(v88, type metadata accessor for DeviceEvent);
          goto LABEL_35;
        }

        sub_100B72BF8(v84, type metadata accessor for DeviceEvent);
      }
    }

    v89 = v101;
    sub_100B72A30(v56, v101, type metadata accessor for DeviceEvent);
    v90 = v117;
    v91 = swift_isUniquelyReferenced_nonNull_native();
    v120 = v90;
    sub_100FFEA2C(v89, v53, v91);
    sub_100016590(v59, v115);

    v117 = v120;
    v88 = v56;
    goto LABEL_34;
  }

  v117 = _swiftEmptyDictionarySingleton;
LABEL_38:
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 134217984;
    *(v94 + 4) = v117[2];
    _os_log_impl(&_mh_execute_header, v92, v93, "Found locations for %ld accessories.", v94, 0xCu);
  }

  return v117;
}

uint64_t sub_100B70EE8@<X0>(char **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for LocalFindableAccessoryRecord(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B71280(*a1, a1[1], a2, a3);
  if (v3)
  {
    if (qword_101694CE8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_1016B66A8);
    sub_100B72A30(a2, v9, type metadata accessor for LocalFindableAccessoryRecord);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v13 = 138543875;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      *(v13 + 12) = 2160;
      *(v13 + 14) = 1752392040;
      *(v13 + 22) = 2081;
      type metadata accessor for UUID();
      v25 = a3;
      sub_100B72BB0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      sub_100B72BF8(v9, type metadata accessor for LocalFindableAccessoryRecord);
      v20 = sub_1000136BC(v17, v19, &v26);

      *(v13 + 24) = v20;
      a3 = v25;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to decrypt location %{public}@,\nfor accessory %{private,mask.hash}s.", v13, 0x20u);
      sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v15);
    }

    else
    {

      sub_100B72BF8(v9, type metadata accessor for LocalFindableAccessoryRecord);
    }

    v23 = type metadata accessor for DeviceEvent(0);
    return (*(*(v23 - 8) + 56))(a3, 1, 1, v23);
  }

  else
  {
    v21 = type metadata accessor for DeviceEvent(0);
    return (*(*(v21 - 8) + 56))(a3, 0, 1, v21);
  }
}

uint64_t sub_100B71280@<X0>(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a3;
  v90 = a1;
  v91 = a2;
  v80 = a4;
  v85 = type metadata accessor for BeaconIdentifier(0);
  __chkstk_darwin(v85);
  v87 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016A3B68, &unk_1013AEE10);
  __chkstk_darwin(v5 - 8);
  v84 = &v72 - v6;
  v82 = type metadata accessor for DeviceEventFormat.AttachmentInfoFormat(0);
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v83 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  __chkstk_darwin(v8 - 8);
  v86 = &v72 - v9;
  v10 = sub_1000BC4D4(&qword_1016A3B60, &qword_1013AEE08);
  __chkstk_darwin(v10 - 8);
  v77 = &v72 - v11;
  v79 = type metadata accessor for DeviceEventFormat.LocationFormat(0);
  v78 = *(v79 - 8);
  v12 = __chkstk_darwin(v79);
  v76 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v75 = &v72 - v14;
  v15 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  __chkstk_darwin(v15 - 8);
  v17 = &v72 - v16;
  v18 = type metadata accessor for DeviceEventFormat(0);
  __chkstk_darwin(v18);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for P256PublicKey();
  v88 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = (&v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v28 = JSONDecoder.init()();
  *v27 = sub_100B72CC0;
  v27[1] = 0;
  (*(v25 + 104))(v27, enum case for JSONDecoder.DateDecodingStrategy.custom(_:), v24);
  dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
  sub_1000D27EC();
  v29 = v97;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v29)
  {
  }

  v30 = v88;
  v91 = v21;
  v74 = v18;
  v97 = v28;
  v90 = v20;
  v96[0] = v92;
  v96[1] = v93;
  v96[2] = v94;
  v96[3] = v95;
  v31 = *(type metadata accessor for LocalFindableAccessoryRecord(0) + 60);
  v32 = v89;
  P256PrivateKey.publicKey.getter();
  v34 = sub_100B71F88(v96, v32 + v31);
  v36 = v35;
  (*(v30 + 8))(v23, v91);
  sub_100B72BB0(&qword_1016B6790, type metadata accessor for DeviceEventFormat, &unk_1013AF108);
  v37 = v90;
  v38 = v74;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v88 = v34;
  v91 = v36;
  v73 = byte_1013D9882[*(v37 + v38[6])];
  v39 = v77;
  sub_1000D2A70(v37, v77, &qword_1016A3B60, &qword_1013AEE08);
  v40 = v79;
  v41 = (*(v78 + 48))(v39, 1, v79);
  v72 = v17;
  if (v41 == 1)
  {
    sub_10000B3A8(v39, &qword_1016A3B60, &qword_1013AEE08);
    v42 = type metadata accessor for DeviceEvent.Location(0);
    (*(*(v42 - 8) + 56))(v17, 1, 1, v42);
  }

  else
  {
    v43 = v75;
    sub_100B729C8(v39, v75, type metadata accessor for DeviceEventFormat.LocationFormat);
    v44 = v76;
    sub_100B729C8(v43, v76, type metadata accessor for DeviceEventFormat.LocationFormat);
    *v17 = *v44;
    *(v17 + 2) = *(v44 + 16);
    v45 = *(v40 + 28);
    v46 = type metadata accessor for DeviceEvent.Location(0);
    v47 = *(v46 + 28);
    v48 = type metadata accessor for Date();
    v49 = &v17[v47];
    v38 = v74;
    (*(*(v48 - 8) + 32))(v49, v44 + v45, v48);
    (*(*(v46 - 8) + 56))(v17, 0, 1, v46);
  }

  v50 = v80;
  v51 = v86;
  v52 = v83;
  v53 = v82;
  v54 = v37 + v38[5];
  v55 = v84;
  sub_1000D2A70(v54, v84, &qword_1016A3B68, &unk_1013AEE10);
  if ((*(v81 + 48))(v55, 1, v53) == 1)
  {
    sub_10000B3A8(v55, &qword_1016A3B68, &unk_1013AEE10);
    v56 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    (*(*(v56 - 8) + 56))(v51, 1, 1, v56);
  }

  else
  {
    sub_100B729C8(v55, v52, type metadata accessor for DeviceEventFormat.AttachmentInfoFormat);
    v57 = type metadata accessor for UUID();
    v58 = *(v57 - 8);
    (*(v58 + 32))(v51, v52, v57);
    v59 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    (*(v58 + 56))(v51 + *(v59 + 20), 1, 1, v57);
    v38 = v74;
    (*(*(v59 - 8) + 56))(v51, 0, 1, v59);
  }

  v60 = v87;
  v61 = v85;
  v62 = getuid();
  sub_1000294F0(v62);
  v63 = *(v61 + 20);
  v64 = type metadata accessor for UUID();
  (*(*(v64 - 8) + 16))(v60 + v63, v89, v64);
  v65 = v38[7];
  v66 = type metadata accessor for DeviceEvent(0);
  v67 = v66[6];
  v68 = type metadata accessor for Date();
  v69 = v50 + v67;
  v70 = v90;
  (*(*(v68 - 8) + 16))(v69, &v90[v65], v68);
  v71 = v72;
  sub_1000D2A70(v72, v50 + v66[7], &qword_101699E50, &qword_1013D97C0);
  sub_1000D2A70(v51, v50 + v66[8], &unk_1016AA510, &unk_101393150);
  sub_100B72A30(v60, v50 + v66[9], type metadata accessor for BeaconIdentifier);
  static Date.trustedNow.getter(v50 + v66[10]);
  sub_100016590(v88, v91);
  sub_1000D2840(v96);

  sub_100B72BF8(v60, type metadata accessor for BeaconIdentifier);
  sub_10000B3A8(v51, &unk_1016AA510, &unk_101393150);
  sub_10000B3A8(v71, &qword_101699E50, &qword_1013D97C0);
  result = sub_100B72BF8(v70, type metadata accessor for DeviceEventFormat);
  *v50 = 0;
  *(v50 + 8) = 1;
  *(v50 + 9) = v73;
  return result;
}

void *sub_100B71E4C(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_1000035D0(v3, v3[3]);
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    Date.init(timeIntervalSince1970:)();
    return sub_100007BAC(v3);
  }

  return result;
}

uint64_t sub_100B71F24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalFindableAccessoryRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_100B71F88(_OWORD *a1, unint64_t a2)
{
  v51 = a2;
  v55 = a1;
  v2 = type metadata accessor for AES.GCM.Nonce();
  __chkstk_darwin(v2 - 8);
  v52 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for AES.GCM.SealedBox();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymmetricKey();
  v53 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for P256.Signing.ECDSASignature();
  v54 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for P256.Signing.PublicKey();
  v56 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for P256PublicKey();
  sub_100B72BB0(&qword_1016B6798, &type metadata accessor for P256PublicKey, &protocol conformance descriptor for P256PublicKey);
  *&v58 = KeyRepresenting.rawValue.getter();
  *(&v58 + 1) = v15;
  v16 = v67;
  P256.Signing.PublicKey.init<A>(rawRepresentation:)();
  if (!v16)
  {
    v45 = v5;
    v46 = v8;
    v47 = v6;
    v67 = v14;
    v48 = v9;
    v17 = v55;
    v66 = *v55;
    v58 = *v55;
    sub_1001022C4(&v66, &v62);
    sub_1000E0A3C();
    P256.Signing.ECDSASignature.init<A>(rawRepresentation:)();
    v44 = v12;
    v18 = v17[3];
    v64 = v17[1];
    v65 = v18;
    v61 = v18;
    v59 = &type metadata for Data;
    v60 = &protocol witness table for Data;
    v58 = v17[1];
    v19 = sub_1000035D0(&v58, &type metadata for Data);
    v20 = *v19;
    v21 = v19[1];
    sub_1001022C4(&v65, &v62);
    sub_1001022C4(&v64, &v62);
    sub_1001022C4(&v65, &v62);
    sub_1001022C4(&v64, &v62);
    sub_100017DB0(v20, v21, &v61);
    sub_100007BAC(&v58);
    v22 = v61;
    v63 = v17[2];
    v62 = v61;
    v59 = &type metadata for Data;
    v60 = &protocol witness table for Data;
    v58 = v17[2];
    v23 = sub_1000035D0(&v58, &type metadata for Data);
    v24 = *v23;
    v25 = v23[1];
    sub_1001022C4(&v63, v57);
    sub_1001022C4(&v63, v57);
    sub_100017D5C(v22, *(&v22 + 1));
    sub_100017DB0(v24, v25, &v62);
    sub_100016590(v22, *(&v22 + 1));
    sub_100007BAC(&v58);
    v26 = v62;
    v58 = v62;
    v27 = v67;
    if (P256.Signing.PublicKey.isValidSignature<A>(_:for:)())
    {
      type metadata accessor for SymmetricKey256();
      sub_100B72BB0(&qword_1016982E8, &type metadata accessor for SymmetricKey256, &protocol conformance descriptor for SymmetricKey256);
      *&v58 = KeyRepresenting.rawValue.getter();
      *(&v58 + 1) = v28;
      v29 = v46;
      SymmetricKey.init<A>(data:)();
      v58 = v65;
      AES.GCM.Nonce.init<A>(data:)();
      v30 = v54;
      v51 = v26 >> 64;
      v55 = v26;
      v58 = v64;
      v62 = v63;
      v39 = v45;
      AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)();
      v40 = v56;
      v41 = static AES.GCM.open(_:using:)();
      v42 = v39;
      v52 = 0;
      v14 = v41;
      sub_100016590(v55, v51);
      (*(v49 + 8))(v42, v50);
      (*(v53 + 8))(v29, v47);
      (*(v30 + 8))(v11, v48);
      (*(v40 + 8))(v27, v44);
    }

    else
    {
      v55 = v26;
      sub_10020545C(&v63);
      sub_10020545C(&v64);
      sub_10020545C(&v65);
      if (qword_101694CE8 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_1000076D4(v31, qword_1016B66A8);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v48;
      if (v34)
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Invalid ECDSASignature", v36, 2u);
      }

      v14 = type metadata accessor for CryptoError();
      sub_100B72BB0(&qword_1016B67A0, &type metadata accessor for CryptoError, &protocol conformance descriptor for CryptoError);
      swift_allocError();
      (*(*(v14 - 1) + 104))(v37, enum case for CryptoError.invalidSignature(_:), v14);
      swift_willThrow();
      sub_100016590(v55, *(&v26 + 1));
      (*(v54 + 8))(v11, v35);
      (*(v26 + 8))(v27, v22);
    }
  }

  return v14;
}

uint64_t sub_100B729C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B72A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100B72A98()
{
  result = qword_1016B67B0;
  if (!qword_1016B67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B67B0);
  }

  return result;
}

unint64_t sub_100B72AEC()
{
  result = qword_1016B67B8;
  if (!qword_1016B67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B67B8);
  }

  return result;
}

uint64_t sub_100B72B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B67A8, &qword_1013D97C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B72BB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100B72BF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100B72C6C()
{
  result = qword_1016B67C0;
  if (!qword_1016B67C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B67C0);
  }

  return result;
}

uint64_t sub_100B72CD8()
{
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1016B67C8 = result;
  return result;
}

void sub_100B72D40(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      do
      {
LABEL_8:
        v8 = (*(a1 + 48) + 40 * (__clz(__rbit64(v4)) | (v6 << 6)));
        v10 = *v8;
        v9 = v8[1];
        v11 = v8[2];
        v18 = v8[3];
        v12 = v8[4];
        v13 = qword_101694CF8;

        if (v13 != -1)
        {
          swift_once();
        }

        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = qword_1016B67D0;
        qword_1016B67D0 = 0x8000000000000000;
        sub_100FFACA0(v10, v9, v18, v12, isUniquelyReferenced_nonNull_native);

        qword_1016B67D0 = v20;
        swift_endAccess();
        if (qword_101694D00 != -1)
        {
          swift_once();
        }

        v4 &= v4 - 1;
        sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_101385D80;
        *(v15 + 32) = v10;
        *(v15 + 40) = v9;
        v19 = v15;
        sub_100397EB4(v11);
        swift_beginAccess();
        v16 = swift_isUniquelyReferenced_nonNull_native();
        v21 = qword_1016B67D8;
        qword_1016B67D8 = 0x8000000000000000;
        sub_101000EC8(v19, v18, v12, v16);

        qword_1016B67D8 = v21;
        swift_endAccess();
      }

      while (v4);
    }
  }

  __break(1u);
}

Swift::Int sub_100B72FD8()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = *(v1 + 16);
  Hasher._combine(_:)(v2);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      String.hash(into:)();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100B73094(uint64_t a1)
{
  v2 = *(v1 + 16);
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      String.hash(into:)();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return String.hash(into:)();
}

Swift::Int sub_100B73140(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      String.hash(into:)();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100B731F8(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10038ED80(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100B732BC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Handle();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Friend();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for ClientOrigin();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_100B73478, 0, 0);
}

uint64_t sub_100B73478()
{
  (*(v0[12] + 104))(v0[13], enum case for ClientOrigin.other(_:), v0[11]);
  RequestOrigin.init(_:)();
  type metadata accessor for Session();
  swift_allocObject();
  v0[15] = Session.init(_:)();
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_100B73568;

  return Session.friendsFollowingMyLocation()();
}

uint64_t sub_100B73568(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_100B739B0;
  }

  else
  {

    v4 = sub_100B73684;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100B73684()
{
  v1 = v0[17];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v35 = *(v3 + 16);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v34 = *(v3 + 72);
    v32 = (v3 + 8);
    v5 = _swiftEmptyArrayStorage;
    v33 = (v0[4] + 8);
    do
    {
      v40 = v5;
      v8 = v0[9];
      v7 = v0[10];
      v10 = v0[6];
      v9 = v0[7];
      v11 = v0[3];
      v35(v7, v4, v9);
      v35(v8, v7, v9);
      Friend.handle.getter();
      v12 = Handle.serverID.getter();
      v14 = v13;
      v15 = *v33;
      (*v33)(v10, v11);
      v16 = v0[9];
      v17 = v0[10];
      v18 = v0[7];
      if (v14)
      {
        v39 = v12;
        v36 = v0[10];
        v19 = v0[5];
        v20 = v0[3];
        Friend.handle.getter();
        v21 = Handle.identifier.getter();
        v37 = v22;
        v38 = v21;
        v15(v19, v20);
        Friend.handle.getter();
        v23 = Handle.siblingIdentifiers.getter();
        v15(v19, v20);
        v24 = *v32;
        (*v32)(v16, v18);
        v24(v36, v18);
        v5 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100A5E834(0, *(v40 + 2) + 1, 1, v40);
        }

        v26 = *(v5 + 2);
        v25 = *(v5 + 3);
        if (v26 >= v25 >> 1)
        {
          v5 = sub_100A5E834((v25 > 1), v26 + 1, 1, v5);
        }

        *(v5 + 2) = v26 + 1;
        v27 = &v5[40 * v26];
        *(v27 + 4) = v38;
        *(v27 + 5) = v37;
        *(v27 + 6) = v23;
        *(v27 + 7) = v39;
        *(v27 + 8) = v14;
      }

      else
      {
        v6 = *v32;
        (*v32)(v0[9], v0[7]);
        v6(v17, v18);
        v5 = v40;
      }

      v4 += v34;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v28 = v0[2];
  v29 = sub_10112B748(v5);

  *v28 = v29;

  v30 = v0[1];

  return v30();
}

uint64_t sub_100B739B0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100B73A74()
{
  result = qword_1016B67E0;
  if (!qword_1016B67E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B67E0);
  }

  return result;
}

uint64_t sub_100B73AC8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1684628325;
    v7 = 0x754E6C6169726573;
    v8 = 0x49746375646F7270;
    if (a1 != 3)
    {
      v8 = 0x6449726F646E6576;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x644970696863;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x4364656573;
    v2 = 0x7361486572616873;
    if (a1 != 9)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6F69737265567766;
    v4 = 0x727574616E676973;
    if (a1 != 6)
    {
      v4 = 0x4E6E6F6973736573;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100B73C38(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B67E8, &qword_1013D9C90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_100B741A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[5];
    v13 = v3[5];
    v12 = 6;
    sub_1001022C4(&v17, v11);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v16 = v3[6];
    v13 = v3[6];
    v12 = 7;
    sub_1001022C4(&v16, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v15 = v3[7];
    v13 = v3[7];
    v12 = 8;
    sub_1001022C4(&v15, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    v13 = v3[8];
    v14 = v13;
    v12 = 9;
    sub_1001022C4(&v14, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v13, *(&v13 + 1));
    LOBYTE(v13) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100B73FE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100B74310(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100B74008(uint64_t a1)
{
  v2 = sub_100B741A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B74044(uint64_t a1)
{
  v2 = sub_100B741A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B740E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100B7412C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100B741A4()
{
  result = qword_1016B67F0;
  if (!qword_1016B67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B67F0);
  }

  return result;
}

unint64_t sub_100B7420C()
{
  result = qword_1016B67F8;
  if (!qword_1016B67F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B67F8);
  }

  return result;
}

unint64_t sub_100B74264()
{
  result = qword_1016B6800;
  if (!qword_1016B6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6800);
  }

  return result;
}

unint64_t sub_100B742BC()
{
  result = qword_1016B6808;
  if (!qword_1016B6808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6808);
  }

  return result;
}

uint64_t sub_100B74310(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684628325 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F69737265567766 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E6E6F6973736573 && a2 == 0xEC00000065636E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4364656573 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7361486572616873 && a2 == 0xE900000000000068 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013610A0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_100B74694(uint64_t a1, uint64_t a2)
{
  v2[42] = a1;
  v2[43] = a2;
  v3 = type metadata accessor for HashAlgorithm();
  v2[44] = v3;
  v2[45] = *(v3 - 8);
  v2[46] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[47] = v4;
  v2[48] = *(v4 - 8);
  v2[49] = swift_task_alloc();

  return _swift_task_switch(sub_100B747B0, 0, 0);
}

void sub_100B747B0()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  v8 = *(v0 + 376);
  v9 = *(v0 + 336);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  *(v0 + 312) = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  *(v0 + 320) = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v24 = v14;
  v25 = sub_100EB2DF0();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v25, v27, 0x6567412D72657355, 0xEA0000000000746ELL, v28);
  *(v0 + 400) = v24;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v0 + 408) = JSONEncoder.init()();
  *(v0 + 16) = *v9;
  v29 = v9[4];
  v31 = v9[1];
  v30 = v9[2];
  *(v0 + 64) = v9[3];
  *(v0 + 80) = v29;
  *(v0 + 32) = v31;
  *(v0 + 48) = v30;
  sub_100B7586C();
  v32 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 416) = 0;
  *(v0 + 424) = v32;
  *(v0 + 432) = v33;
  sub_100017D5C(v32, v33);
  v34 = swift_task_alloc();
  *(v0 + 440) = v34;
  *v34 = v0;
  v34[1] = sub_100B74C80;

  sub_100EA3F5C();
}

uint64_t sub_100B74C80(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = a2;

  return _swift_task_switch(sub_100B74D80, 0, 0);
}

uint64_t sub_100B74D80()
{
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 352);
  *(v0 + 296) = v2;
  *(v0 + 304) = v1;
  *(v0 + 280) = &type metadata for Data;
  *(v0 + 288) = &protocol witness table for Data;
  *(v0 + 256) = *(v0 + 424);
  v6 = sub_1000035D0((v0 + 256), &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v7, v8, v0 + 296);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 256));
  v9 = *(v0 + 304);
  *(v0 + 464) = *(v0 + 296);
  *(v0 + 472) = v9;
  (*(v4 + 104))(v3, enum case for HashAlgorithm.sha256(_:), v5);
  v10 = Data.hash(algorithm:)();
  v12 = v11;
  *(v0 + 480) = v10;
  *(v0 + 488) = v11;
  (*(v4 + 8))(v3, v5);
  v13 = swift_task_alloc();
  *(v0 + 496) = v13;
  *v13 = v0;
  v13[1] = sub_100B74F20;
  v14 = *(v0 + 344);

  return sub_100EA87F4(v10, v12, v14);
}

uint64_t sub_100B74F20(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    v5 = sub_100B75414;
  }

  else
  {
    v6 = v4[60];
    v7 = v4[61];
    v4[64] = a1;
    sub_100016590(v6, v7);
    v5 = sub_100B75050;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100B75050()
{
  v48 = v0;
  v1 = v0[64];
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[50];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v47);

  sub_100016590(v3, v2);
  v6 = v47;
  v7 = static os_log_type_t.debug.getter();
  if (qword_1016950C8 != -1)
  {
LABEL_17:
    v42 = v7;
    swift_once();
    v7 = v42;
  }

  v44 = qword_10177C410;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10177C410, "Unpair header:", 14, 2, _swiftEmptyArrayStorage);
  v8 = v6 + 8;
  v9 = -1;
  v10 = -1 << *(v6 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & v6[8];
  v12 = (63 - v10) >> 6;
  v45 = v6;

  for (i = 0; v11; v7 = )
  {
    v14 = i;
    v15 = v45;
LABEL_11:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = (v14 << 10) | (16 * v16);
    v18 = v15[7];
    v19 = (v15[6] + v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = (v18 + v17);
    v23 = v22[1];
    v46 = *v22;

    v24 = static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10138BBE0;
    v6 = &type metadata for String;
    *(v25 + 56) = &type metadata for String;
    v26 = sub_100008C00();
    *(v25 + 32) = v20;
    *(v25 + 40) = v21;
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v26;
    *(v25 + 64) = v26;
    *(v25 + 72) = v46;
    *(v25 + 80) = v23;
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v44, "%@: %@", 6, 2, v25);
  }

  v15 = v45;
  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = v8[v14];
    ++i;
    if (v11)
    {
      i = v14;
      goto LABEL_11;
    }
  }

  v27 = *(v43 + 424);
  v28 = *(v43 + 432);
  v29 = *(v43 + 336);

  v30 = static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_101385D80;
  *(v43 + 176) = *v29;
  v32 = v29[4];
  v34 = v29[1];
  v33 = v29[2];
  *(v43 + 224) = v29[3];
  *(v43 + 240) = v32;
  *(v43 + 192) = v34;
  *(v43 + 208) = v33;
  v35 = String.init<A>(describing:)();
  v37 = v36;
  *(v31 + 56) = &type metadata for String;
  *(v31 + 64) = sub_100008C00();
  *(v31 + 32) = v35;
  *(v31 + 40) = v37;
  os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v44, "Unpair body %@", 14, 2, v31);

  sub_100017D5C(v27, v28);

  sub_100016590(v27, v28);
  v39 = *(v43 + 424);
  v38 = *(v43 + 432);

  v40 = *(v43 + 8);

  return v40(v45, v39, v38);
}

uint64_t sub_100B75414()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 472);
  sub_100016590(*(v0 + 480), *(v0 + 488));
  sub_100016590(v1, v2);
  v3 = static os_log_type_t.error.getter();
  v4 = &qword_101695000;
  if (qword_1016950C8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v5 = *(v0 + 504);
  v6 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  *(v0 + 328) = v5;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v46 = sub_100008C00();
  *(v7 + 64) = v46;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v6, "Failed to sign unpair request. %@", 33, 2, v7);

  v44 = v0;
  v0 = *(v0 + 400);
  v11 = static os_log_type_t.debug.getter();
  if (*(v4 + 200) != -1)
  {
    v42 = v11;
    swift_once();
    v11 = v42;
  }

  v45 = qword_10177C410;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10177C410, "Unpair header:", 14, 2, _swiftEmptyArrayStorage, 1, 2);
  v3 = v0 + 64;
  v12 = -1;
  v13 = -1 << *(v0 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v4 = v12 & *(v0 + 64);
  v14 = (63 - v13) >> 6;
  v47 = v0;

  v15 = 0;
  while (v4)
  {
    v16 = v15;
    v17 = v47;
LABEL_13:
    v18 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v19 = (v16 << 10) | (16 * v18);
    v20 = *(v17 + 56);
    v21 = (*(v17 + 48) + v19);
    v22 = *v21;
    v23 = v21[1];
    v24 = (v20 + v19);
    v0 = *v24;
    v25 = v24[1];

    v26 = static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10138BBE0;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = v46;
    *(v27 + 32) = v22;
    *(v27 + 40) = v23;
    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v46;
    *(v27 + 72) = v0;
    *(v27 + 80) = v25;
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v45, "%@: %@", 6, 2, v27);
  }

  v17 = v47;
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v16 >= v14)
    {
      break;
    }

    v4 = *(v3 + 8 * v16);
    ++v15;
    if (v4)
    {
      v15 = v16;
      goto LABEL_13;
    }
  }

  v29 = *(v44 + 424);
  v28 = *(v44 + 432);
  v30 = *(v44 + 336);

  v31 = static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v32 = swift_allocObject();
  *(v32 + 16) = v43;
  *(v44 + 176) = *v30;
  v33 = v30[4];
  v35 = v30[1];
  v34 = v30[2];
  *(v44 + 224) = v30[3];
  *(v44 + 240) = v33;
  *(v44 + 192) = v35;
  *(v44 + 208) = v34;
  v36 = String.init<A>(describing:)();
  *(v32 + 56) = &type metadata for String;
  *(v32 + 64) = v46;
  *(v32 + 32) = v36;
  *(v32 + 40) = v37;
  os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v45, "Unpair body %@", 14, 2, v32);

  sub_100017D5C(v29, v28);

  sub_100016590(v29, v28);
  v39 = *(v44 + 424);
  v38 = *(v44 + 432);

  v40 = *(v44 + 8);

  return v40(v47, v39, v38);
}

unint64_t sub_100B7586C()
{
  result = qword_1016B6810;
  if (!qword_1016B6810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6810);
  }

  return result;
}

uint64_t sub_100B758E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100B75928(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for FetchResponse.SearchResult(uint64_t a1)
{
  result = qword_1016B6870;
  if (!qword_1016B6870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100B759EC(uint64_t a1)
{
  sub_100B75A88();
  if (v1 <= 0x3F)
  {
    sub_100157BAC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100B75A88()
{
  if (!qword_1016B6880)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1016B6880);
    }
  }
}

uint64_t sub_100B75B94()
{
  if (*v0)
  {
    return 0x6F43737574617473;
  }

  else
  {
    return 0x73746C75736572;
  }
}

uint64_t sub_100B75BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73746C75736572 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564)
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

uint64_t sub_100B75CB8(uint64_t a1)
{
  v2 = sub_100B76F78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B75CF4(uint64_t a1)
{
  v2 = sub_100B76F78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B75D30@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100B76D7C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_100B75D64()
{
  v1 = 25705;
  v2 = 0x656372756F73;
  if (*v0 != 2)
  {
    v2 = 0x656B636150766C74;
  }

  if (*v0)
  {
    v1 = 0x7364616F6C796170;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100B75DD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100B770FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100B75DFC(uint64_t a1)
{
  v2 = sub_100B77FF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B75E38(uint64_t a1)
{
  v2 = sub_100B77FF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100B75E74@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100B7725C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_100B75EBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001F280(a1, v13);
  sub_100B7725C(v13, &v14);
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v18 = v14;
  *a2 = v14;
  v6 = type metadata accessor for FetchResponse.SearchResult(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = v16;
  if (v16 == 20)
  {
    v9 = 7;
  }

  *(a2 + *(v6 + 28)) = v9;
  v10 = v15;
  v11 = v17;
  sub_1001022C4(&v18, v13);
  v12 = sub_100B9C7B8(v10, v11);
  sub_100B77FC8(&v14);
  result = sub_100007BAC(a1);
  *(a2 + 16) = v12;
  return result;
}

uint64_t sub_100B75FF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x61636F4C6E736361;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (v2)
  {
    v4 = 0x8000000101349FC0;
  }

  else
  {
    v4 = 0xED0000736E6F6974;
  }

  if (*a2)
  {
    v5 = 0x61636F4C6E736361;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (*a2)
  {
    v6 = 0xED0000736E6F6974;
  }

  else
  {
    v6 = 0x8000000101349FC0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100B760A8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B7613C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100B761BC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100B76258(unint64_t *a1@<X8>)
{
  v2 = 0x8000000101349FC0;
  v3 = 0xD000000000000014;
  if (*v1)
  {
    v3 = 0x61636F4C6E736361;
    v2 = 0xED0000736E6F6974;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_100B762A8()
{
  if (*v0)
  {
    return 0x61636F4C6E736361;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_100B762F4@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10160C5D8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_100B76358(uint64_t a1)
{
  v2 = sub_100B77DA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B76394(uint64_t a1)
{
  v2 = sub_100B77DA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B763D0(uint64_t a1)
{
  v2 = sub_100B787FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B7640C(uint64_t a1)
{
  v2 = sub_100B787FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B76474()
{
  v1 = 25705;
  if (*v0 != 1)
  {
    v1 = 0x656B636150766C74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_100B764D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100B78928(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100B764F8(uint64_t a1)
{
  v2 = sub_100B79C30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B76534(uint64_t a1)
{
  v2 = sub_100B79C30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B76570@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100B78A44(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_100B765A0(uint64_t a1)
{
  v2 = sub_100B790A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B765DC(uint64_t a1)
{
  v2 = sub_100B790A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B76644@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 17) = HIBYTE(v6) & 1;
  }

  return result;
}

void sub_100B76684(uint64_t *a1@<X8>, void *a2@<X0>)
{
  sub_100B775A0(a2);
  if (!v2)
  {
    *a1 = v4;
  }
}

uint64_t sub_100B76760(void *a1, uint64_t a2, unint64_t a3, int a4, double a5)
{
  v16 = a4;
  v9 = sub_1000BC4D4(&qword_1016B6A98, &qword_1013DAD18);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_1000035D0(a1, a1[3]);
  sub_100B79FF0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2;
  v19 = a3;
  v17 = 0;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v18, v19);
  if (!v5)
  {
    v13 = v16;
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v18) = v13;
    v17 = 2;
    sub_100B7A098();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100B76948()
{
  v1 = 7630182;
  if (*v0 == 1)
  {
    v1 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_100B76990@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100B794A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100B769B8(uint64_t a1)
{
  v2 = sub_100B79FF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B769F4(uint64_t a1)
{
  v2 = sub_100B79FF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100B76A30(uint64_t a1@<X8>, void *a2@<X0>)
{
  v7 = sub_100B795C8(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
  }
}

uint64_t sub_100B76A88(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B6A38, &qword_1013DAA00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_1000035D0(a1, a1[3]);
  sub_100B79B04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = v12;
  v11[23] = 0;
  sub_1001022C4(&v13, v11);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v12, *(&v12 + 1));
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v12 = *(v3 + 6);
    v11[0] = 3;
    sub_1000BC4D4(&qword_1016B6A10, &qword_1013DA9F0);
    sub_100B79C84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100B76C9C(uint64_t a1)
{
  v2 = sub_100B79B04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B76CD8(uint64_t a1)
{
  v2 = sub_100B79B04();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100B76D14@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100B79820(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_100B76D7C(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016B68B8, &qword_1013D9FD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  sub_1000035D0(a1, a1[3]);
  sub_100B76F78();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_1000BC4D4(&qword_1016B68C8, &qword_1013D9FD8);
  v8[7] = 0;
  sub_100B76FCC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v9;
  v8[5] = 1;
  sub_100B770A8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100007BAC(a1);
  return v7;
}

unint64_t sub_100B76F78()
{
  result = qword_1016B68C0;
  if (!qword_1016B68C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B68C0);
  }

  return result;
}

unint64_t sub_100B76FCC()
{
  result = qword_1016B68D0;
  if (!qword_1016B68D0)
  {
    sub_1000BC580(&qword_1016B68C8, &qword_1013D9FD8);
    sub_100B77050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B68D0);
  }

  return result;
}

unint64_t sub_100B77050()
{
  result = qword_1016B68D8;
  if (!qword_1016B68D8)
  {
    type metadata accessor for FetchResponse.SearchResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B68D8);
  }

  return result;
}

unint64_t sub_100B770A8()
{
  result = qword_1016B68E0;
  if (!qword_1016B68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B68E0);
  }

  return result;
}

uint64_t sub_100B770FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364616F6C796170 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656B636150766C74 && a2 == 0xEA00000000007374)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100B7725C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B6908, &qword_1013D9FE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100B77FF8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v21 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v18;
  v17 = v19;
  sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
  v21 = 1;
  sub_1006476FC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v18;
  v21 = 2;
  sub_100479640();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v18;
  sub_1000BC4D4(&qword_1016B6918, &qword_101406490);
  v21 = 3;
  sub_100B7804C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v10 = v9;
  v11 = v9;
  v13 = v17;
  v12 = v18;
  sub_100017D5C(v11, v17);

  v14 = v16;

  sub_100007BAC(a1);
  sub_100016590(v10, v13);

  *a2 = v10;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v20;
  *(a2 + 32) = v12;
  return result;
}

void sub_100B775A0(void *a1)
{
  v2 = type metadata accessor for FetchResponse.SearchResult(0);
  v83 = *(v2 - 8);
  v84 = v2;
  v3 = __chkstk_darwin(v2);
  v78 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v66 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v66 - v9;
  __chkstk_darwin(v8);
  v12 = &v66 - v11;
  v13 = sub_1000BC4D4(&qword_1016B68E8, &qword_1013D9FE0);
  v82 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v66 - v14;
  sub_1000035D0(a1, a1[3]);
  sub_100B77DA8();
  v16 = v85;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    sub_100007BAC(a1);
    return;
  }

  v81 = v12;
  v85 = v10;
  v77 = v7;
  v89 = 0;
  sub_100B77DFC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v17 = v86;
  v18 = v87;
  v89 = 1;
  sub_100B77E50();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v19 = v86;
  v20 = v87;
  v67 = a1;
  v66 = v13;
  v21 = v82;
  v72 = v15;
  v73 = 0;
  v68 = v86;
  if (!v17)
  {
    v23 = _swiftEmptyArrayStorage;
    goto LABEL_31;
  }

  v88 = v87;
  if ((v18 & 0x100) != 0)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
LABEL_29:
      v23 = _swiftEmptyArrayStorage;
LABEL_30:

      v19 = v68;
      v20 = v88;
      v13 = v66;
      v21 = v82;
      a1 = v67;
LABEL_31:
      if (!v19)
      {
LABEL_44:
        (*(v21 + 8))(v15, v13);
        sub_100007BAC(a1);
        return;
      }

      if ((v20 & 0x100) != 0)
      {
      }

      else
      {
        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v48 & 1) == 0)
        {
LABEL_43:

          a1 = v67;
          v13 = v66;
          v21 = v82;
          v15 = v72;
          goto LABEL_44;
        }
      }

      v49 = *(v68 + 16);
      if (v49)
      {
        v50 = (v68 + 56);
        v52 = v77;
        v51 = v78;
        do
        {
          v85 = v49;
          v53 = *(v50 - 3);
          v54 = *(v50 - 2);
          v56 = *(v50 - 1);
          v55 = *v50;

          sub_100017D5C(v54, v56);

          sub_100017D5C(v54, v56);
          v80 = v53;
          v81 = v55;
          v57 = sub_100B9C7B8(v53, v55);
          v58 = v84;
          v59 = *(v84 + 24);
          v60 = type metadata accessor for Date();
          (*(*(v60 - 8) + 56))(v52 + v59, 1, 1, v60);
          *v52 = v54;
          v52[1] = v56;
          v52[2] = v57;
          *(v52 + *(v58 + 28)) = 7;
          sub_100B77EA4(v52, v51);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v62 = v51;
          v63 = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v63 = sub_100A5EA70(0, v23[2] + 1, 1, v23);
          }

          v65 = v63[2];
          v64 = v63[3];
          v23 = v63;
          if (v65 >= v64 >> 1)
          {
            v23 = sub_100A5EA70((v64 > 1), v65 + 1, 1, v63);
          }

          v50 += 4;

          sub_100016590(v54, v56);

          v52 = v77;
          sub_100B77F08(v77);
          v23[2] = v65 + 1;
          sub_100B77F64(v62, v23 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v65);
          v49 = (v85 - 1);
          v51 = v62;
        }

        while (v85 != 1);
      }

      goto LABEL_43;
    }
  }

  v71 = *(v17 + 16);
  if (!v71)
  {
    goto LABEL_29;
  }

  v24 = 0;
  v23 = _swiftEmptyArrayStorage;
  v69 = v17;
  v70 = v17 + 32;
  while (v24 < *(v17 + 16))
  {
    v75 = v24;
    v76 = v23;
    v25 = (v70 + 56 * v24);
    v26 = *v25;
    v27 = v25[5];
    v28 = v25[6];
    v29 = *(v28 + 16);
    v79 = v25[1];
    v80 = v26;
    sub_100017D5C(v26, v79);
    v74 = v27;

    if (v29)
    {
      v30 = 0;
      v31 = (v28 + 40);
      v32 = _swiftEmptyArrayStorage;
      while (v30 < *(v28 + 16))
      {
        v33 = *(v31 - 1);
        v34 = *v31;
        sub_100017D5C(v33, *v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_100A5E954(0, *(v32 + 2) + 1, 1, v32);
        }

        v36 = *(v32 + 2);
        v35 = *(v32 + 3);
        if (v36 >= v35 >> 1)
        {
          v32 = sub_100A5E954((v35 > 1), v36 + 1, 1, v32);
        }

        ++v30;
        *(v32 + 2) = v36 + 1;
        v37 = &v32[24 * v36];
        *(v37 + 4) = v33;
        *(v37 + 5) = v34;
        v37[52] = 0;
        *(v37 + 12) = 3;
        v31 += 4;
        if (v29 == v30)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      break;
    }

    v32 = _swiftEmptyArrayStorage;
LABEL_23:
    v38 = v84;
    v39 = *(v84 + 24);
    v40 = type metadata accessor for Date();
    v41 = v81 + v39;
    v42 = v81;
    (*(*(v40 - 8) + 56))(v41, 1, 1, v40);
    v44 = v79;
    v43 = v80;
    *v42 = v80;
    v42[1] = v44;
    v42[2] = v32;
    *(v42 + *(v38 + 28)) = 15;
    sub_100B77EA4(v42, v85);
    sub_100017D5C(v43, v44);
    v23 = v76;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_100A5EA70(0, v23[2] + 1, 1, v23);
    }

    v45 = v83;
    v15 = v72;
    v17 = v69;
    v47 = v23[2];
    v46 = v23[3];
    if (v47 >= v46 >> 1)
    {
      v23 = sub_100A5EA70((v46 > 1), v47 + 1, 1, v23);
    }

    v24 = v75 + 1;
    sub_100016590(v80, v79);

    sub_100B77F08(v81);
    v23[2] = v47 + 1;
    sub_100B77F64(v85, v23 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v47);
    if (v24 == v71)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
}

unint64_t sub_100B77DA8()
{
  result = qword_1016B68F0;
  if (!qword_1016B68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B68F0);
  }

  return result;
}

unint64_t sub_100B77DFC()
{
  result = qword_1016B68F8;
  if (!qword_1016B68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B68F8);
  }

  return result;
}

unint64_t sub_100B77E50()
{
  result = qword_1016B6900;
  if (!qword_1016B6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6900);
  }

  return result;
}

uint64_t sub_100B77EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FetchResponse.SearchResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B77F08(uint64_t a1)
{
  v2 = type metadata accessor for FetchResponse.SearchResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B77F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FetchResponse.SearchResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100B77FF8()
{
  result = qword_1016B6910;
  if (!qword_1016B6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6910);
  }

  return result;
}

unint64_t sub_100B7804C()
{
  result = qword_1016B6920;
  if (!qword_1016B6920)
  {
    sub_1000BC580(&qword_1016B6918, &qword_101406490);
    sub_1006476FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6920);
  }

  return result;
}

__n128 sub_100B780F0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_100B78114(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100B7815C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100B781E0()
{
  result = qword_1016B6928;
  if (!qword_1016B6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6928);
  }

  return result;
}

unint64_t sub_100B78238()
{
  result = qword_1016B6930;
  if (!qword_1016B6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6930);
  }

  return result;
}

unint64_t sub_100B78290()
{
  result = qword_1016B6938;
  if (!qword_1016B6938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6938);
  }

  return result;
}

unint64_t sub_100B782E8()
{
  result = qword_1016B6940;
  if (!qword_1016B6940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6940);
  }

  return result;
}

unint64_t sub_100B78340()
{
  result = qword_1016B6948;
  if (!qword_1016B6948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6948);
  }

  return result;
}

unint64_t sub_100B78398()
{
  result = qword_1016B6950;
  if (!qword_1016B6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6950);
  }

  return result;
}

unint64_t sub_100B783F0()
{
  result = qword_1016B6958;
  if (!qword_1016B6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6958);
  }

  return result;
}

unint64_t sub_100B78448()
{
  result = qword_1016B6960;
  if (!qword_1016B6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6960);
  }

  return result;
}

unint64_t sub_100B784A0()
{
  result = qword_1016B6968;
  if (!qword_1016B6968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6968);
  }

  return result;
}

unint64_t sub_100B784F8()
{
  result = qword_1016B6970;
  if (!qword_1016B6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6970);
  }

  return result;
}

unint64_t sub_100B7854C()
{
  result = qword_1016B6978;
  if (!qword_1016B6978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6978);
  }

  return result;
}

uint64_t sub_100B785A0(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B6980, &qword_1013DA5C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1000035D0(a1, v7);
  sub_100B787FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000BC4D4(&qword_1016B6990, &qword_1013DA5D0);
    v9[15] = 0;
    sub_100B78850();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v10;
    v9[14] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v9[12] = 2;
    sub_100B770A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100007BAC(a1);
  return v7;
}

unint64_t sub_100B787FC()
{
  result = qword_1016B6988;
  if (!qword_1016B6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6988);
  }

  return result;
}

unint64_t sub_100B78850()
{
  result = qword_1016B6998;
  if (!qword_1016B6998)
  {
    sub_1000BC580(&qword_1016B6990, &qword_1013DA5D0);
    sub_100B788D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6998);
  }

  return result;
}

unint64_t sub_100B788D4()
{
  result = qword_1016B69A0;
  if (!qword_1016B69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69A0);
  }

  return result;
}

uint64_t sub_100B78928(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656B636150766C74 && a2 == 0xEA00000000007374)
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

uint64_t sub_100B78A44(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B6A28, &qword_1013DA9F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - v5;
  v7 = a1[3];
  sub_1000035D0(a1, v7);
  sub_100B79C30();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    v14 = 0;
    sub_1006476FC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v12;
    v14 = 1;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v12;
    v10 = v13;
    sub_1000BC4D4(&qword_1016B6918, &qword_101406490);
    v14 = 2;
    sub_100B7804C();
    v11[1] = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);

    sub_100017D5C(v9, v10);

    sub_100007BAC(a1);

    sub_100016590(v9, v10);
  }

  return v7;
}

uint64_t sub_100B78D18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEF64616F6C796150;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65566769666E6F63 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564)
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

uint64_t sub_100B78E48(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B69A8, &qword_1013DA5D8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1000035D0(a1, v7);
  sub_100B790A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000BC4D4(&qword_1016B69B8, &qword_1013DA5E0);
    v9[15] = 0;
    sub_100B790F8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v10;
    v9[14] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v9[12] = 2;
    sub_100B770A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100007BAC(a1);
  return v7;
}

unint64_t sub_100B790A4()
{
  result = qword_1016B69B0;
  if (!qword_1016B69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69B0);
  }

  return result;
}

unint64_t sub_100B790F8()
{
  result = qword_1016B69C0;
  if (!qword_1016B69C0)
  {
    sub_1000BC580(&qword_1016B69B8, &qword_1013DA5E0);
    sub_100B7917C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69C0);
  }

  return result;
}

unint64_t sub_100B7917C()
{
  result = qword_1016B69C8;
  if (!qword_1016B69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69C8);
  }

  return result;
}

uint64_t sub_100B791F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100B79238(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100B7929C()
{
  result = qword_1016B69D0;
  if (!qword_1016B69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69D0);
  }

  return result;
}

unint64_t sub_100B792F4()
{
  result = qword_1016B69D8;
  if (!qword_1016B69D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69D8);
  }

  return result;
}

unint64_t sub_100B7934C()
{
  result = qword_1016B69E0;
  if (!qword_1016B69E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69E0);
  }

  return result;
}

unint64_t sub_100B793A4()
{
  result = qword_1016B69E8;
  if (!qword_1016B69E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69E8);
  }

  return result;
}

unint64_t sub_100B793FC()
{
  result = qword_1016B69F0;
  if (!qword_1016B69F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69F0);
  }

  return result;
}

unint64_t sub_100B79454()
{
  result = qword_1016B69F8;
  if (!qword_1016B69F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69F8);
  }

  return result;
}

uint64_t sub_100B794A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEA00000000007354 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7630182 && a2 == 0xE300000000000000)
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

double sub_100B795C8(void *a1)
{
  v4 = sub_1000BC4D4(&qword_1016B6A80, &qword_1013DAD10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - v6;
  sub_1000035D0(a1, a1[3]);
  sub_100B79FF0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    v13 = 0;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v12[0];
    v10 = v12[1];
    LOBYTE(v12[0]) = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v2 = v11;
    v13 = 2;
    sub_100B7A044();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    sub_100017D5C(v9, v10);
    sub_100007BAC(a1);
    sub_100016590(v9, v10);
  }

  return v2;
}

uint64_t sub_100B79820@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B6A00, &qword_1013DA9E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100B79B04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v27 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v24;
  v23 = v25;
  LOBYTE(v24) = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v11;
  v22 = v10;
  LOBYTE(v24) = 2;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  v21 = v12;
  sub_1000BC4D4(&qword_1016B6A10, &qword_1013DA9F0);
  v27 = 3;
  sub_100B79B58();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v15 = v9;
  v16 = v9;
  v18 = v23;
  v17 = v24;
  sub_100017D5C(v16, v23);

  sub_100007BAC(a1);
  sub_100016590(v15, v18);

  *a2 = v15;
  *(a2 + 8) = v18;
  *(a2 + 16) = v22;
  *(a2 + 24) = v26 & 1;
  *(a2 + 32) = v21;
  *(a2 + 40) = v14;
  *(a2 + 48) = v17;
  return result;
}

unint64_t sub_100B79B04()
{
  result = qword_1016B6A08;
  if (!qword_1016B6A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A08);
  }

  return result;
}

unint64_t sub_100B79B58()
{
  result = qword_1016B6A18;
  if (!qword_1016B6A18)
  {
    sub_1000BC580(&qword_1016B6A10, &qword_1013DA9F0);
    sub_100B79BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A18);
  }

  return result;
}

unint64_t sub_100B79BDC()
{
  result = qword_1016B6A20;
  if (!qword_1016B6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A20);
  }

  return result;
}

unint64_t sub_100B79C30()
{
  result = qword_1016B6A30;
  if (!qword_1016B6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A30);
  }

  return result;
}

unint64_t sub_100B79C84()
{
  result = qword_1016B6A40;
  if (!qword_1016B6A40)
  {
    sub_1000BC580(&qword_1016B6A10, &qword_1013DA9F0);
    sub_100B79D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A40);
  }

  return result;
}

unint64_t sub_100B79D08()
{
  result = qword_1016B6A48;
  if (!qword_1016B6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A48);
  }

  return result;
}

uint64_t sub_100B79D7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 24);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

unint64_t sub_100B79DE4()
{
  result = qword_1016B6A50;
  if (!qword_1016B6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A50);
  }

  return result;
}

unint64_t sub_100B79E3C()
{
  result = qword_1016B6A58;
  if (!qword_1016B6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A58);
  }

  return result;
}

unint64_t sub_100B79E94()
{
  result = qword_1016B6A60;
  if (!qword_1016B6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A60);
  }

  return result;
}

unint64_t sub_100B79EEC()
{
  result = qword_1016B6A68;
  if (!qword_1016B6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A68);
  }

  return result;
}

unint64_t sub_100B79F44()
{
  result = qword_1016B6A70;
  if (!qword_1016B6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A70);
  }

  return result;
}

unint64_t sub_100B79F9C()
{
  result = qword_1016B6A78;
  if (!qword_1016B6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A78);
  }

  return result;
}

unint64_t sub_100B79FF0()
{
  result = qword_1016B6A88;
  if (!qword_1016B6A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A88);
  }

  return result;
}

unint64_t sub_100B7A044()
{
  result = qword_1016B6A90;
  if (!qword_1016B6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A90);
  }

  return result;
}

unint64_t sub_100B7A098()
{
  result = qword_1016B6AA0;
  if (!qword_1016B6AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6AA0);
  }

  return result;
}

unint64_t sub_100B7A110()
{
  result = qword_1016B6AA8;
  if (!qword_1016B6AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6AA8);
  }

  return result;
}

unint64_t sub_100B7A168()
{
  result = qword_1016B6AB0;
  if (!qword_1016B6AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6AB0);
  }

  return result;
}

unint64_t sub_100B7A1C0()
{
  result = qword_1016B6AB8;
  if (!qword_1016B6AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6AB8);
  }

  return result;
}

unint64_t sub_100B7A218()
{
  result = qword_1016B6AC0;
  if (!qword_1016B6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6AC0);
  }

  return result;
}

unint64_t sub_100B7A26C()
{
  result = qword_1016B6AC8[0];
  if (!qword_1016B6AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1016B6AC8);
  }

  return result;
}

uint64_t sub_100B7A2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = v4;
  v37 = a2;
  v32 = *(a1 + 16);
  v7 = type metadata accessor for FailableRecord(255, v32, a3, a4);
  v8 = type metadata accessor for Optional();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v30 = &v29 - v9;
  v10 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for URL();
  v35 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v16 - 8);
  v18 = &v29 - v17;
  v19 = type metadata accessor for DirectorySequence();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v23 = *(a1 + 40);
  v36 = v5;
  sub_100B7A72C(v5 + v23, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000B3A8(v18, &qword_1016A5970, &unk_1013B3470);
    return (*(*(v7 - 8) + 56))(v37, 1, 1, v7);
  }

  (*(v20 + 32))(v22, v18, v19);
  DirectorySequence.next()();
  v24 = v35;
  if ((*(v35 + 48))(v12, 1, v13) == 1)
  {
    (*(v20 + 8))(v22, v19);
    sub_10000B3A8(v12, &unk_101696AC0, &qword_101390A60);
    v25 = v36;
    sub_10000B3A8(v36 + v23, &qword_1016A5970, &unk_1013B3470);
    (*(v20 + 56))(v25 + v23, 1, 1, v19);
    return (*(*(v7 - 8) + 56))(v37, 1, 1, v7);
  }

  (*(v24 + 32))(v15, v12, v13);
  v27 = objc_autoreleasePoolPush();
  v28 = v30;
  sub_100B7A79C(v15, v36, v32, *(v31 + 24), v30);
  objc_autoreleasePoolPop(v27);
  (*(v20 + 8))(v22, v19);
  (*(v33 + 32))(v37, v28, v34);
  return (*(v24 + 8))(v15, v13);
}

uint64_t sub_100B7A72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B7A79C@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v139 = a4;
  v141 = a2;
  v146 = a5;
  v144 = type metadata accessor for BeaconStoreFileRecord(0);
  __chkstk_darwin(v144);
  v137 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Optional();
  v133 = *(v8 - 8);
  v134 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v130 - v10;
  v145 = a3;
  v138 = *(a3 - 8);
  __chkstk_darwin(v9);
  v132 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for URL();
  v147 = *(v149 - 8);
  v13 = __chkstk_darwin(v149);
  v15 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v130 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v130 - v20;
  v22 = __chkstk_darwin(v19);
  v136 = &v130 - v23;
  __chkstk_darwin(v22);
  v25 = &v130 - v24;
  v26 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v26 - 8);
  v28 = &v130 - v27;
  v29 = type metadata accessor for UUID();
  v142 = *(v29 - 8);
  v143 = v29;
  v30 = __chkstk_darwin(v29);
  v135 = &v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v140 = &v130 - v32;
  v148 = a1;
  if (URL.pathExtension.getter() == 0xD000000000000010 && 0x80000001013541B0 == v33)
  {

LABEL_5:
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000076D4(v35, qword_10177BA08);
    v36 = v147;
    v37 = *(v147 + 16);
    v38 = v149;
    v37(v15, v148, v149);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v150 = v42;
      *v41 = 141558275;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      sub_100B7B820();
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      (*(v147 + 8))(v15, v149);
      v46 = sub_1000136BC(v43, v45, &v150);

      *(v41 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "Tombstoned file extension. Skipping file %{private,mask.hash}s", v41, 0x16u);
      sub_100007BAC(v42);
      v38 = v149;

      v36 = v147;
    }

    else
    {

      (*(v36 + 8))(v15, v38);
    }

    v47 = v146;
    v48 = v148;
    v37(v146, v148, v38);
    v49 = *(v144 + 20);
    v37(&v47[v49], v48, v38);
    (*(v36 + 56))(&v47[v49], 0, 1, v38);
    goto LABEL_11;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    goto LABEL_5;
  }

  if (URL.pathExtension.getter() == 0x64726F636572 && v56 == 0xE600000000000000)
  {

    v57 = v149;
  }

  else
  {
    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v57 = v149;
    if ((v58 & 1) == 0)
    {
      v101 = v146;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for Logger();
      sub_1000076D4(v102, qword_10177BA08);
      v103 = v147;
      (*(v147 + 16))(v18, v148, v57);
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v150 = v107;
        *v106 = 141558275;
        *(v106 + 4) = 1752392040;
        *(v106 + 12) = 2081;
        sub_100B7B820();
        v108 = dispatch thunk of CustomStringConvertible.description.getter();
        v109 = v57;
        v111 = v110;
        (*(v103 + 8))(v18, v109);
        v112 = sub_1000136BC(v108, v111, &v150);

        *(v106 + 14) = v112;
        _os_log_impl(&_mh_execute_header, v104, v105, "Invalid extension. Skipping file %{private,mask.hash}s", v106, 0x16u);
        sub_100007BAC(v107);
      }

      else
      {

        (*(v103 + 8))(v18, v57);
      }

      v121 = type metadata accessor for FailableRecord(0, v145, v113, v114);
      return (*(*(v121 - 8) + 56))(v101, 1, 1, v121);
    }
  }

  v59 = v25;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v60 = v147 + 8;
  v131 = *(v147 + 8);
  v131(v25, v57);
  UUID.init(uuidString:)();

  v62 = v142;
  v61 = v143;
  if ((v142[6])(v28, 1, v143) != 1)
  {
    (v62[4])(v140, v28, v61);
    v78 = v145;
    type metadata accessor for FailableRecordSequence(0, v145, v139, v79);
    v80 = v147 + 16;
    v148 = *(v147 + 16);
    v148(v25);

    sub_100B2C7A8();

    v81 = v131;
    v131(v59, v57);
    v82 = v138;
    if ((*(v138 + 48))(v11, 1, v78) != 1)
    {
      v142[1](v140, v143);
      v116 = *(v82 + 32);
      v117 = v132;
      v116(v132, v11, v78);
      v118 = v146;
      v116(v146, v117, v78);
      v52 = type metadata accessor for FailableRecord(0, v78, v119, v120);
      swift_storeEnumTagMultiPayload();
      v53 = *(*(v52 - 8) + 56);
      v54 = v118;
      return v53(v54, 0, 1, v52);
    }

    (*(v133 + 8))(v11, v134);
    v83 = v148;
    (v148)(v59, v141, v57);
    v134 = URL.description.getter();
    v85 = v84;
    v139 = v60;
    v81(v59, v57);
    v86 = v80;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    sub_1000076D4(v87, qword_10177BA08);
    v88 = v142;
    v89 = v135;
    (v142[2])(v135, v140, v143);

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v133 = v86;
      v93 = v92;
      v150 = swift_slowAlloc();
      *v93 = 141558787;
      *(v93 + 4) = 1752392040;
      *(v93 + 12) = 2081;
      v94 = UUID.uuidString.getter();
      v95 = v89;
      v97 = v96;
      v98 = v88[1];
      v138 = (v88 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v142 = v98;
      (v98)(v95, v143);
      v99 = sub_1000136BC(v94, v97, &v150);

      *(v93 + 14) = v99;
      *(v93 + 22) = 2160;
      *(v93 + 24) = 1752392040;
      *(v93 + 32) = 2081;
      v100 = sub_1000136BC(v134, v85, &v150);

      *(v93 + 34) = v100;
      _os_log_impl(&_mh_execute_header, v90, v91, "Could not read item %{private,mask.hash}s for records at: %{private,mask.hash}s", v93, 0x2Au);
      swift_arrayDestroy();

      v83 = v148;
    }

    else
    {

      v122 = v88[1];
      v138 = (v88 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v142 = v122;
      (v122)(v89, v143);
    }

    v123 = v149;
    v83(v59, v141, v149);
    v148 = objc_autoreleasePoolPush();
    v124 = v140;
    UUID.uuidString.getter();
    v125 = v136;
    URL.appendingPathComponent(_:)();

    v126 = v137;
    URL.appendingPathExtension(_:)();
    v127 = v83;
    v128 = v131;
    v131(v125, v123);
    objc_autoreleasePoolPop(v148);
    v128(v59, v123);
    v144 = *(v144 + 20);
    v127(v59, v141, v123);
    v148 = objc_autoreleasePoolPush();
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v129 = v144;
    URL.appendingPathExtension(_:)();
    v128(v125, v123);
    objc_autoreleasePoolPop(v148);
    v128(v59, v123);
    (v142)(v124, v143);
    (*(v147 + 56))(v126 + v129, 0, 1, v123);
    v47 = v146;
    sub_100B7B890(v126, v146);
LABEL_11:
    v52 = type metadata accessor for FailableRecord(0, v145, v50, v51);
    swift_storeEnumTagMultiPayload();
    v53 = *(*(v52 - 8) + 56);
    v54 = v47;
    return v53(v54, 0, 1, v52);
  }

  sub_10000B3A8(v28, &qword_1016980D0, &unk_10138F3B0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_1000076D4(v63, qword_10177BA08);
  v64 = v57;
  (*(v147 + 16))(v21, v148, v57);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.error.getter();
  v67 = os_log_type_enabled(v65, v66);
  v68 = v146;
  if (v67)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v150 = v70;
    *v69 = 141558275;
    *(v69 + 4) = 1752392040;
    *(v69 + 12) = 2081;
    sub_100B7B820();
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = v64;
    v74 = v73;
    v131(v21, v72);
    v75 = sub_1000136BC(v71, v74, &v150);

    *(v69 + 14) = v75;
    _os_log_impl(&_mh_execute_header, v65, v66, "Invalid file identifier at URL: %{private,mask.hash}s", v69, 0x16u);
    sub_100007BAC(v70);
    v68 = v146;
  }

  else
  {

    v131(v21, v57);
  }

  v115 = type metadata accessor for FailableRecord(0, v145, v76, v77);
  return (*(*(v115 - 8) + 56))(v68, 1, 1, v115);
}

unint64_t sub_100B7B820()
{
  result = qword_1016B14E0;
  if (!qword_1016B14E0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B14E0);
  }

  return result;
}

uint64_t sub_100B7B890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconStoreFileRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100B7B8F4(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for BeaconStoreFileManager();
    if (v2 <= 0x3F)
    {
      sub_100B7B9B8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100B7B9B8(uint64_t a1)
{
  if (!qword_1016B6B50)
  {
    type metadata accessor for DirectorySequence();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016B6B50);
    }
  }
}

uint64_t sub_100B7BA2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v33 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v32 = &v31 - v4;
  v5 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = type metadata accessor for BeaconObservation(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v31 = SPBeaconTaskNamePlaySound;
  v16 = sub_100035730(a1 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier, sub_100526B58, 0);
  sub_1012BB138(v16, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000B3A8(v7, &qword_1016A42E0, &qword_1013B0010);
    v17 = 2;
    v18 = v12;
    v19 = v32;
  }

  else
  {
    v18 = v12;
    (*(v13 + 8))(v15, v12);
    sub_100B3DB48(v7, v11);
    if (v11[*(v8 + 24)] - 23 > 2)
    {
      v17 = 2;
    }

    else
    {
      v17 = qword_1013DB220[(v11[*(v8 + 24)] - 23)];
    }

    v19 = v32;
    (*(v13 + 16))(v15, &v11[*(v8 + 20)], v18);
    sub_10073B5F0(v11);
  }

  v20 = *(a1 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandError);
  if (v20)
  {
    v21 = 3;
  }

  else
  {
    v21 = v17;
  }

  swift_errorRetain();
  v22.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if (v20)
  {
    v23 = _convertErrorToNSError(_:)();
  }

  else
  {
    v23 = 0;
  }

  v24 = objc_allocWithZone(SPBeaconTaskInformation);
  v25 = [v24 initWithName:v31 lastUpdated:v22.super.isa error:v23 state:v21];

  v26 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandIdentifier;
  swift_beginAccess();
  sub_1000D2A70(a1 + v26, v19, &qword_1016980D0, &unk_10138F3B0);
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  isa = 0;
  if ((*(v28 + 48))(v19, 1, v27) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v28 + 8))(v19, v27);
  }

  [v25 setCommandIdentifier:isa];

  result = (*(v13 + 8))(v15, v18);
  *v33 = v25;
  return result;
}

uint64_t sub_100B7BEE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for BeaconObservation(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Date();
  v13 = *(v32 - 8);
  __chkstk_darwin(v32);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v16 = sub_100035730(a1 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier, sub_100526B58, 0);
  sub_1012BB138(v16, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000B3A8(v8, &qword_1016A42E0, &qword_1013B0010);
    v17 = 2;
  }

  else
  {
    v18 = v32;
    (*(v13 + 8))(v15, v32);
    sub_100B3DB48(v8, v12);
    v17 = 2 * (v12[*(v9 + 24)] != 26);
    (*(v13 + 16))(v15, &v12[*(v9 + 20)], v18);
    sub_10073B5F0(v12);
  }

  v19 = *(a1 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandError);
  if (v19)
  {
    v20 = 3;
  }

  else
  {
    v20 = v17;
  }

  v21 = SPBeaconTaskNameStopSound;
  swift_errorRetain();
  v22.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if (v19)
  {
    v23 = _convertErrorToNSError(_:)();
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_allocWithZone(SPBeaconTaskInformation) initWithName:v21 lastUpdated:v22.super.isa error:v23 state:v20];

  v25 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandIdentifier;
  swift_beginAccess();
  sub_1000D2A70(a1 + v25, v5, &qword_1016980D0, &unk_10138F3B0);
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  isa = 0;
  if ((*(v27 + 48))(v5, 1, v26) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v27 + 8))(v5, v26);
  }

  [v24 setCommandIdentifier:isa];

  result = (*(v13 + 8))(v15, v32);
  *v31 = v24;
  return result;
}

uint64_t sub_100B7C35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v43 = a4;
  v32 = a2;
  v47 = a1;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v39 - 8);
  __chkstk_darwin(v39);
  v37 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v4 + 56);
  v45 = *(v10 + 16);
  v46 = v10 + 16;
  v33 = v12;
  v45(v12, a1, v9);
  v13 = *(v10 + 80);
  v14 = (v13 + 24) & ~v13;
  v36 = v11 + 7;
  v15 = (v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  v35 = *(v10 + 32);
  v44 = v10 + 32;
  v35(v16 + v14, v12, v9);
  *(v16 + v15) = v32;
  aBlock[4] = sub_100B856FC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10164B0B0;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v48 = _swiftEmptyArrayStorage;
  sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v18 = v37;
  v19 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v41 + 8))(v18, v19);
  (*(v38 + 8))(v8, v40);

  v20 = v33;
  v45(v33, v47, v9);
  v31[1] = v13;
  v21 = (v13 + 16) & ~v13;
  v22 = (v36 + v21) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v35;
  v35(v23 + v21, v20, v9);
  v25 = (v23 + v22);
  v26 = v42;
  v27 = v43;
  *v25 = v42;
  v25[1] = v27;

  Future.addFailure(block:)();

  v45(v20, v47, v9);
  v28 = swift_allocObject();
  v24(v28 + v21, v20, v9);
  v29 = (v28 + v22);
  *v29 = v26;
  v29[1] = v27;

  Future.addSuccess(block:)();
}

uint64_t sub_100B7C8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandIdentifier;
  swift_beginAccess();
  sub_10002311C(v8, a1 + v11, &qword_1016980D0, &unk_10138F3B0);
  swift_endAccess();
  return sub_100B7F13C(a3);
}

uint64_t sub_100B7C9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v39 = a3;
  v44 = a1;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v3 + 56);
  v32 = v12;
  v14 = *(v11 + 16);
  v41 = v11 + 16;
  v43 = v14;
  v14(v13, a1, v10);
  v40 = *(v11 + 80);
  v15 = (v40 + 24) & ~v40;
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  v33 = *(v11 + 32);
  v42 = v11 + 32;
  v33(v16 + v15, v13, v10);
  aBlock[4] = sub_100B85554;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10164AF70;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v18 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v37 + 8))(v7, v18);
  (*(v34 + 8))(v9, v36);

  v19 = v13;
  v43(v13, v44, v10);
  v20 = (v40 + 16) & ~v40;
  v21 = (v32 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v13;
  v24 = v33;
  v33(v22 + v20, v23, v10);
  v25 = (v22 + v21);
  v27 = v38;
  v26 = v39;
  *v25 = v38;
  v25[1] = v26;

  Future.addFailure(block:)();

  v43(v19, v44, v10);
  v28 = swift_allocObject();
  v24(v28 + v20, v19, v10);
  v29 = (v28 + v21);
  *v29 = v27;
  v29[1] = v26;

  Future.addSuccess(block:)();
}

uint64_t sub_100B7CF08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandIdentifier;
  swift_beginAccess();
  sub_10002311C(v6, a1 + v9, &qword_1016980D0, &unk_10138F3B0);
  swift_endAccess();
  return sub_100B82344();
}

uint64_t sub_100B7D050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v25 = a2;
  v27 = a1;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v30 - 8);
  __chkstk_darwin(v30);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v12);
  v26 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v15, v12);
  (*(v10 + 16))(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v16, &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v19 = (v18 + v17);
  v20 = v29;
  *v19 = v28;
  v19[1] = v20;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v27;
  aBlock[4] = sub_100B85660;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10164B060;
  v21 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v22 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v26;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v33 + 8))(v5, v22);
  (*(v31 + 8))(v8, v32);
}

uint64_t sub_100B7D4F8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = UUID.uuidString.getter();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v10 = static OS_os_log.default.getter();
  v11 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("SoundPlaybackCoordinator: calling failure for commandIdentifier %@", 66, 2, &_mh_execute_header, v10, v11, v6);

  return a2(a4);
}

uint64_t sub_100B7D5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v33 = a2;
  v35 = a1;
  v39 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v16 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v15);
  v34 = static OS_dispatch_queue.global(qos:)();
  (*(v16 + 8))(v18, v15);
  v19 = *(v9 + 16);
  v19(v14, v33, v8);
  v19(v12, v35, v8);
  v20 = *(v9 + 80);
  v21 = (v20 + 16) & ~v20;
  v22 = (v10 + v20 + v21) & ~v20;
  v23 = swift_allocObject();
  v24 = *(v9 + 32);
  v24(v23 + v21, v14, v8);
  v24(v23 + v22, v12, v8);
  v25 = (v23 + ((v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = v37;
  *v25 = v36;
  v25[1] = v26;
  aBlock[4] = sub_100B855C0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10164B010;
  v27 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v29 = v38;
  v28 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = v34;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v42 + 8))(v29, v28);
  (*(v40 + 8))(v7, v41);
}

uint64_t sub_100B7DAE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  v5 = UUID.uuidString.getter();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_100008C00();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v9 = UUID.uuidString.getter();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v11 = static OS_os_log.default.getter();
  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("SoundPlaybackCoordinator: calling success for commandIdentifier %@ beacon %@", 76, 2, &_mh_execute_header, v11, v12, v4);

  return a3(0);
}

uint64_t sub_100B7DBFC()
{
  v61 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v61 - 8);
  __chkstk_darwin(v61);
  v2 = v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v71 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v69 = *(v6 - 8);
  __chkstk_darwin(v6);
  v67 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v7;
  v66 = type metadata accessor for DispatchQoS.QoSClass();
  v60 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  v9 = *(v64 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v64);
  v63 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = v39 - v12;
  dispatch_assert_queue_V2(*(v0 + 56));
  sub_1000BC4D4(&qword_1016B6DE0, &unk_1013DB210);
  v70 = v0;
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = *(aBlock[0] + 16);
  if (v14)
  {
    v59 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v58 = v70 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier;
    v16 = *(v9 + 16);
    v15 = v9 + 16;
    v57 = v16;
    v17 = *(v15 + 64);
    v39[1] = v13;
    v18 = v13 + ((v17 + 32) & ~v17);
    v55 = (v60 + 104);
    v54 = (v60 + 8);
    v53 = *(v15 + 56);
    v52 = v2;
    v50 = v5;
    v60 = v15;
    v49 = (v15 + 16);
    v48 = v69 + 16;
    v47 = enum case for DispatchQoS.QoSClass.default(_:);
    v56 = v17;
    v46 = (v17 + 16) & ~v17;
    v45 = (v10 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = v45 + 8;
    v43 = v69 + 32;
    v42 = v75;
    v41 = (v72 + 8);
    v40 = (v71 + 8);
    v51 = v3;
    do
    {
      v72 = v14;
      v19 = v62;
      v20 = v64;
      v57(v62, v18, v64);
      v21 = v65;
      v22 = v66;
      (*v55)(v65, v47, v66);
      v71 = static OS_dispatch_queue.global(qos:)();
      (*v54)(v21, v22);
      v23 = *v49;
      v24 = v63;
      (*v49)(v63, v19, v20);
      v25 = v69;
      v26 = v67;
      (*(v69 + 16))(v67, v58, v6);
      v27 = v6;
      v28 = (v44 + *(v25 + 80)) & ~*(v25 + 80);
      v29 = swift_allocObject();
      v23((v29 + v46), v24, v20);
      *(v29 + v45) = v70;
      (*(v25 + 32))(v29 + v28, v26, v27);
      v75[2] = sub_100B8546C;
      v75[3] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v75[0] = sub_100006684;
      v75[1] = &unk_10164AF20;
      v30 = _Block_copy(aBlock);

      v31 = v50;
      static DispatchQoS.unspecified.getter();
      v73 = _swiftEmptyArrayStorage;
      sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v32 = v52;
      v33 = v61;
      v34 = v51;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v35 = v71;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v36 = v72;
      v37 = v30;
      v6 = v27;
      _Block_release(v37);

      (*v41)(v32, v33);
      (*v40)(v31, v34);

      v18 += v53;
      v14 = v36 - 1;
    }

    while (v14);
  }
}

uint64_t sub_100B7E3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  Subscription.subscriber.getter();
  sub_1000035D0(v5, v5[3]);
  sub_1004E2648(a3);
  return sub_100007BAC(v5);
}

uint64_t sub_100B7E450()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v81 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for UUID();
  v77 = *(v72 - 8);
  __chkstk_darwin(v72);
  v80 = v9;
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v66 = *(v11 - 8);
  __chkstk_darwin(v11);
  v75 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  v79 = *(v83 - 8);
  v13 = __chkstk_darwin(v83);
  v74 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v14;
  __chkstk_darwin(v13);
  v73 = &v47 - v15;
  dispatch_assert_queue_V2(*(v0 + 56));
  sub_1000BC4D4(&qword_1016B6DE0, &unk_1013DB210);
  OS_dispatch_queue.sync<A>(execute:)();
  v16 = *(v0 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandError);
  v78 = v1;
  v17 = *(v1 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandError);
  v18 = aBlock[0];
  if (*(aBlock[0] + 16))
  {
    v82 = *(aBlock[0] + 16);
    v68 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v67 = v78 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier;
    v19 = v18;
    v20 = v79;
    v50 = v3;
    v21 = *(v79 + 80);
    v47 = v19;
    v76 = v16;
    v22 = v17;
    v23 = v19 + ((v21 + 32) & ~v21);
    swift_errorRetain();
    swift_errorRetain();
    v24 = *(v20 + 16);
    v20 += 16;
    v64 = v24;
    v63 = (v66 + 104);
    v62 = (v66 + 8);
    v61 = (v20 + 16);
    v59 = v77 + 16;
    v79 = v20;
    v58 = *(v20 + 56);
    v66 = v21;
    v56 = enum case for DispatchQoS.QoSClass.default(_:);
    v57 = (v21 + 16) & ~v21;
    v55 = (v55 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = v55 + 8;
    v53 = v80 + 7;
    v52 = v77 + 32;
    v51 = v86;
    ++v50;
    v49 = (v81 + 8);
    v71 = v6;
    v70 = v11;
    v69 = v22;
    v65 = v2;
    v60 = v8;
    v48 = v5;
    do
    {
      v25 = v73;
      v81 = v23;
      v26 = v83;
      v64(v73, v23, v83);
      v27 = v75;
      (*v63)(v75, v56, v11);
      v80 = static OS_dispatch_queue.global(qos:)();
      (*v62)(v27, v11);
      v28 = *v61;
      v29 = v74;
      (*v61)(v74, v25, v26);
      v30 = v10;
      v31 = v77;
      v32 = v72;
      (*(v77 + 16))(v30, v67, v72);
      v33 = (v54 + *(v31 + 80)) & ~*(v31 + 80);
      v34 = (v53 + v33) & 0xFFFFFFFFFFFFFFF8;
      v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      v28((v36 + v57), v29, v83);
      *(v36 + v55) = v78;
      v37 = *(v31 + 32);
      v10 = v30;
      v38 = v69;
      v37(v36 + v33, v10, v32);
      *(v36 + v34) = v76;
      v39 = v65;
      *(v36 + v35) = v38;
      v40 = v48;
      v41 = v60;
      v86[2] = sub_100B852E4;
      v86[3] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v86[0] = sub_100006684;
      v86[1] = &unk_10164AED0;
      v42 = _Block_copy(aBlock);
      swift_errorRetain();
      swift_errorRetain();

      static DispatchQoS.unspecified.getter();
      v84 = _swiftEmptyArrayStorage;
      sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v43 = v71;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v44 = v80;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v45 = v42;
      v11 = v70;
      _Block_release(v45);

      (*v50)(v40, v39);
      (*v49)(v41, v43);

      v23 = v81 + v58;
      --v82;
    }

    while (v82);
  }

  else
  {
    swift_errorRetain();
    swift_errorRetain();
  }
}

uint64_t sub_100B7ED34(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  Subscription.subscriber.getter();
  sub_1000035D0(v9, v9[3]);
  sub_1004E1BB0(a3, a4, a5);
  return sub_100007BAC(v9);
}

uint64_t sub_100B7EDB4()
{
  v1 = v0;
  v2 = type metadata accessor for BeaconObservation(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_assert_queue_V2(*(v0 + 56));
  v6 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    v15 = v6;
    swift_once();
    v6 = v15;
  }

  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, qword_10177C398, "SoundPlaybackCoordinator: allPlaybackEnded", 42, 2, _swiftEmptyArrayStorage);
  v7 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playSoundTimer;
  swift_beginAccess();
  sub_1000D2A70(v1 + v7, &v18, &qword_1016B6DD8, &unk_1013DB1C0);
  if (*(&v19 + 1))
  {
    sub_10001F280(&v18, v17);
    sub_10000B3A8(&v18, &qword_1016B6DD8, &unk_1013DB1C0);
    sub_1000035D0(v17, v17[3]);
    dispatch thunk of Cancellable.cancel()();
    sub_100007BAC(v17);
  }

  else
  {
    sub_10000B3A8(&v18, &qword_1016B6DD8, &unk_1013DB1C0);
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  swift_beginAccess();
  sub_10002311C(&v18, v1 + v7, &qword_1016B6DD8, &unk_1013DB1C0);
  swift_endAccess();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v8 = qword_10177B2E8;
  v9 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 16))(v5, v1 + v9, v10);
  Date.init()();
  v5[*(v2 + 24)] = 27;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  sub_10073B64C(v5, v12 + v11);
  v13 = type metadata accessor for Transaction();
  __chkstk_darwin(v13);
  *(&v16 - 4) = v8;
  *(&v16 - 3) = v12;
  *(&v16 - 2) = 0;
  *(&v16 - 1) = 0;
  static Transaction.named<A>(_:with:)();

  sub_10073B5F0(v5);
  sub_100B7DBFC();
  return sub_100B7E450();
}

uint64_t sub_100B7F13C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BeaconObservation(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_assert_queue_V2(*(v1 + 56));
  v8 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    v26 = v8;
    swift_once();
    v8 = v26;
  }

  v9 = qword_10177C398;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_10177C398, "SoundPlaybackCoordinator: requesting playSound()", 48, 2, _swiftEmptyArrayStorage);
  type metadata accessor for Transaction();
  sub_1000BC4D4(&qword_1016A24A0, &qword_1013AAFE8);
  static Transaction.named<A>(_:with:)();

  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v10 = qword_10177B2E8;
  v11 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 16))(v7, v2 + v11, v12);
  Date.init()();
  v7[*(v4 + 24)] = 24;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  v15 = sub_10073B64C(v7, v14 + v13);
  __chkstk_darwin(v15);
  *(&v30 - 4) = v10;
  *(&v30 - 3) = v14;
  v28 = 0;
  v29 = 0;
  static Transaction.named<A>(_:with:)();

  sub_10073B5F0(v7);
  sub_100B7DBFC();
  if (dispatch thunk of Future.isFinished.getter())
  {
    v27 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v9, "SoundPlaybackCoordinator: Play called on an already started playback coordinator.", 81, 2, _swiftEmptyArrayStorage);
    LODWORD(v29) = 0;
    v28 = 235;
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for AnalyticsEvent(0);
    v16 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v16 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v17 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v18 = type metadata accessor for DispatchTime();
    v19 = *(*(v18 - 8) + 56);
    v19(&v16[v17], 1, 1, v18);
    v19(&v16[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v18);
    *(v16 + 15) = 0xD00000000000002CLL;
    *(v16 + 16) = 0x800000010136E3C0;
    v20 = swift_allocObject();
    v20[2] = v16;
    v20[3] = a1;
    v20[4] = v2;

    static Transaction.asyncTask(name:block:)();

    sub_1000035D0((v2 + 16), *(v2 + 40));
    sub_100894920(v2 + v11, a1);
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v16;
    *(v22 + 24) = v21;

    Future.addSuccess(block:)();

    swift_allocObject();
    swift_weakInit();

    Future.addFailure(block:)();

    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v16;
    *(v24 + 24) = v23;

    Future.addCompletion(block:)();
  }

  return result;
}

uint64_t sub_100B7F790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + 56);
    v21 = v11;
    v20 = v16;

    v17 = swift_allocObject();
    v17[2] = a4;
    v17[3] = a3;
    v17[4] = a2;
    aBlock[4] = sub_100B852D8;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10164AE80;
    v18 = _Block_copy(aBlock);

    swift_errorRetain();
    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v20;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v14, v21);
  }

  return result;
}

uint64_t sub_100B7FAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Transaction.capture()();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandError) = a3;
    swift_errorRetain();
  }

  if (a3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_100B7EDB4();
    }
  }

  return result;
}

uint64_t sub_100B7FB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100B7FC14, a1, 0);
}

uint64_t sub_100B7FC14(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 40);
  static DispatchTime.now()();
  v4 = type metadata accessor for DispatchTime();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v5 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_10002311C(v2, v3 + v5, &qword_101696CA8, &qword_10138B5E0);
  swift_endAccess();

  return _swift_task_switch(sub_100B7FD10, 0, 0);
}

uint64_t sub_100B7FD10()
{
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_100B7FD80, v1, 0);
}

uint64_t sub_100B7FD80()
{
  sub_10117C3B4(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

id sub_100B7FE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0x6C4154556D6F7266;
  v9 = inited + 32;
  *(inited + 40) = 0xEB00000000747265;
  *(inited + 48) = a1 == 2;
  *(inited + 56) = 1;
  v10 = sub_100908768(inited);
  swift_setDeallocating();
  sub_10000B3A8(v9, &qword_101699340, &qword_1013918A0);
  v11 = *(a2 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_targetBeacon);
  if (!v11)
  {
    return v10;
  }

  v12 = v11;
  result = [v12 systemVersion];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = v10;
  sub_100FFC418(v14, 0, 0xD000000000000013, 0x8000000101356E70, isUniquelyReferenced_nonNull_native);
  v16 = v50;
  result = [v12 systemVersion];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = result;
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v50 = v16;
  sub_100FFC418(v17, 0, 0xD00000000000001BLL, 0x8000000101356E90, v18);
  v19 = v50;
  v20 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v12, "batteryLevel")}];
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v50 = v19;
  sub_100FFC418(v20, 0, 0x4C79726574746162, 0xEC0000006C657665, v21);
  v22 = v50;
  v23 = [v12 taskInformation];
  type metadata accessor for SPBeaconTaskName(0);
  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
  sub_100B85220(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
  v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v24 + 16) && (v25 = sub_100777014(), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 8 * v25);

    v28 = [v27 state];

    v29 = v28 == 0;
  }

  else
  {

    v29 = 0;
  }

  v30 = swift_isUniquelyReferenced_nonNull_native();
  v50 = v22;
  sub_100FFC418(v29, 1, 0x6563697665447369, 0xEF6465687361654CLL, v30);
  v31 = v50;
  v32 = [v12 connected];
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v50 = v31;
  sub_100FFC418(v32, 1, 0xD000000000000011, 0x8000000101350630, v33);
  v10 = v50;
  v34 = [objc_opt_self() sharedInstance];
  v35 = [v34 isInternalBuild];

  if (!v35)
  {
LABEL_16:

    return v10;
  }

  result = [v12 name];
  if (result)
  {
    v36 = result;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v10;
    sub_100FFC418(v36, 0, 0xD000000000000010, 0x800000010136E5D0, v37);
    v38 = v50;
    v39 = [v12 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    (*(v5 + 8))(v7, v4);
    v40 = String._bridgeToObjectiveC()();

    v41 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v38;
    sub_100FFC418(v40, 0, 0x6544646572696170, 0xEE00444965636976, v41);
    v10 = v50;
    v42 = [v12 serialNumber];
    if (v42)
    {
      v43 = v42;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v50 = v10;
      sub_100FFC418(v43, 0, 0xD000000000000018, 0x8000000101350650, v44);
      v10 = v50;
    }

    v45 = [v12 role];
    if (v45)
    {
      v46 = v45;
      v47 = [v45 role];

      if (!v47)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = String._bridgeToObjectiveC()();
      }

      v48 = swift_isUniquelyReferenced_nonNull_native();
      v50 = v10;
      sub_100FFC418(v47, 0, 0xD000000000000010, 0x800000010136E5F0, v48);

      return v50;
    }

    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100B8046C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  v11 = *a1;
  v12 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    v14 = v12;
    swift_once();
    v12 = v14;
  }

  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10177C398, "#Durian: commandManager completed sound playback.", 49, 2, _swiftEmptyArrayStorage);
  type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v5 + 16))(v8, result + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier, v4);

    (*(v5 + 32))(v10, v8, v4);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100B83418(v11, v10, 0);
    }

    return (*(v5 + 8))(v10, v4);
  }

  return result;
}

uint64_t sub_100B806CC(uint64_t a1)
{
  v1[5] = a1;
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for DispatchTime();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100B807C8, a1, 0);
}

uint64_t sub_100B807C8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000D2A70(v1 + v3, v2, &qword_101696CA8, &qword_10138B5E0);

  return _swift_task_switch(sub_100B80870, 0, 0);
}

uint64_t sub_100B80870()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000B3A8(v3, &qword_101696CA8, &qword_10138B5E0);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[9];
    v7 = v0[5];
    (*(v2 + 32))(v6, v3, v1);
    v8 = swift_task_alloc();
    v0[10] = v8;
    *(v8 + 16) = v6;

    return _swift_task_switch(sub_100B809A8, v7, 0);
  }
}

uint64_t sub_100B809A8()
{
  sub_10115BE7C(sub_100B85218);

  return _swift_task_switch(sub_100B80A64, 0, 0);
}

uint64_t sub_100B80A64()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_100B80AE8()
{
  v0 = type metadata accessor for DispatchTime();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static DispatchTime.now()();
  v4 = DispatchTime.uptimeNanoseconds.getter();
  result = DispatchTime.uptimeNanoseconds.getter();
  if (v4 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_101385D80;
    *(inited + 32) = 0x4474736575716572;
    *(inited + 40) = 0xEF6E6F6974617275;
    *(inited + 48) = Double._bridgeToObjectiveC()();
    *(inited + 56) = 0;
    v7 = sub_100908768(inited);
    swift_setDeallocating();
    sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
    (*(v1 + 8))(v3, v0);
    return v7;
  }

  return result;
}

uint64_t sub_100B80C8C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = static os_log_type_t.error.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  v18 = a1;
  swift_getErrorValue();
  v13 = Error.localizedDescription.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "#Durian: Error during play sound. Error - %@", 44, 2, v12);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v4 + 16))(v7, result + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier, v3);

    (*(v4 + 32))(v9, v7, v3);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100B83418(0, v9, v18);
    }

    return (*(v4 + 8))(v9, v3);
  }

  return result;
}

uint64_t sub_100B80F18(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v50 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for UUID();
  v43 = *(v44 - 8);
  v9 = __chkstk_darwin(v44);
  v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v42 = &v41 - v11;
  v12 = *a1;
  v13 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10138BBE0;
  LOBYTE(aBlock[0]) = v12;
  sub_1000BC4D4(&unk_1016BB0A0, &qword_10139A220);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  v19 = sub_100008C00();
  *(v15 + 64) = v19;
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  aBlock[0] = a2;
  swift_errorRetain();
  sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
  v20 = String.init<A>(describing:)();
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v19;
  *(v15 + 72) = v20;
  *(v15 + 80) = v21;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "#Durian: Play sound completed with success [%@], error [%@]", 59, 2, v15);

  if (!a2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_9;
  }

  swift_getErrorValue();
  v22 = Error.domain.getter();
  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v24)
  {
LABEL_9:

    goto LABEL_10;
  }

  if (v22 == v25 && v24 == v26)
  {

    goto LABEL_19;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v40 & 1) == 0)
  {
LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

LABEL_19:
  swift_getErrorValue();
  if (Error.code.getter() != 4)
  {
    goto LABEL_10;
  }

  v27 = 1;
LABEL_11:
  type metadata accessor for Transaction();
  v28 = swift_allocObject();
  *(v28 + 16) = v51;
  *(v28 + 24) = v12;
  *(v28 + 32) = a2;
  *(v28 + 40) = v27;
  swift_errorRetain();

  static Transaction.asyncTask(name:block:)();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v30 = v43;
    v31 = v41;
    v32 = v44;
    (*(v43 + 16))(v41, Strong + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier, v44);

    v33 = v42;
    (*(v30 + 32))(v42, v31, v32);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100B83418(a2 == 0, v33, a2);
    }

    (*(v30 + 8))(v33, v32);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v35 = *(result + 56);

    aBlock[4] = sub_100B8516C;
    aBlock[5] = a4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10164AE08;
    v36 = _Block_copy(aBlock);

    v37 = v45;
    static DispatchQoS.unspecified.getter();
    v52 = _swiftEmptyArrayStorage;
    sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v38 = v47;
    v39 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v36);

    (*(v49 + 8))(v38, v39);
    (*(v46 + 8))(v37, v48);
  }

  return result;
}

uint64_t sub_100B8168C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v4 + 153) = a4;
  *(v4 + 152) = a2;
  *(v4 + 40) = a1;
  *(v4 + 48) = a3;
  v6 = type metadata accessor for DispatchTimeInterval();
  *(v4 + 56) = v6;
  *(v4 + 64) = *(v6 - 8);
  *(v4 + 72) = swift_task_alloc();
  v7 = type metadata accessor for DispatchTime();
  *(v4 + 80) = v7;
  *(v4 + 88) = *(v7 - 8);
  *(v4 + 96) = swift_task_alloc();
  sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_100B817F8, a1, 0);
}

uint64_t sub_100B817F8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 40);
  v3 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  swift_beginAccess();
  sub_1000D2A70(v2 + v3, v1, &qword_101696CA8, &qword_10138B5E0);

  return _swift_task_switch(sub_100B818A4, 0, 0);
}

uint64_t sub_100B818A4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_101696CA8, &qword_10138B5E0);
    v4 = *(v0 + 112);
    v5 = *(v0 + 153);
    v6 = *(v0 + 152);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    (*(*(v0 + 88) + 56))(v4, 1, 1, *(v0 + 80));
    v9 = swift_task_alloc();
    *(v0 + 128) = v9;
    *(v9 + 16) = v6;
    *(v9 + 24) = v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v4;
    v10 = sub_100B81C04;
    v11 = v7;
  }

  else
  {
    v12 = *(v0 + 40);
    (*(v3 + 32))(*(v0 + 96), v1, v2);
    v10 = sub_100B819E0;
    v11 = v12;
  }

  return _swift_task_switch(v10, v11, 0);
}

uint64_t sub_100B819E0()
{
  *(v0 + 120) = sub_10114A1D4(0x4474736575716572, 0xEF6E6F6974617275);

  return _swift_task_switch(sub_100B81A6C, 0, 0);
}

uint64_t sub_100B81A6C()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v4 = *(v0 + 88);
      v3 = *(v0 + 96);
      v6 = *(v0 + 72);
      v5 = *(v0 + 80);
      v7 = *(v0 + 56);
      v8 = *(v0 + 64);
      *v6 = [v2 integerValue];
      (*(v8 + 104))(v6, enum case for DispatchTimeInterval.seconds(_:), v7);
      DispatchTime.advanced(by:)();

      (*(v8 + 8))(v6, v7);
      (*(v4 + 8))(v3, v5);
      v9 = 0;
      goto LABEL_6;
    }
  }

  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  v9 = 1;
LABEL_6:
  v10 = *(v0 + 112);
  v11 = *(v0 + 153);
  v12 = *(v0 + 152);
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  (*(*(v0 + 88) + 56))(v10, v9, 1, *(v0 + 80));
  v15 = swift_task_alloc();
  *(v0 + 128) = v15;
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  *(v15 + 32) = v11;
  *(v15 + 40) = v10;

  return _swift_task_switch(sub_100B81C04, v13, 0);
}

uint64_t sub_100B81C04()
{
  sub_10115BE7C(sub_100B85174);

  type metadata accessor for AnalyticsPublisher();
  v0[17] = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_100B81CF8;
  v2 = v0[5];

  return sub_101163F78(v2);
}

uint64_t sub_100B81CF8()
{

  return _swift_task_switch(sub_100B81E10, 0, 0);
}

uint64_t sub_100B81E10()
{
  sub_10000B3A8(*(v0 + 112), &qword_101696CA8, &qword_10138B5E0);

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100B81EB4(unsigned __int8 a1, uint64_t a2, char a3, uint64_t a4)
{
  v32 = a4;
  v7 = a1;
  v8 = sub_1000BC4D4(&qword_101696CA8, &qword_10138B5E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = 0x6563637553736177;
  *(inited + 40) = 0xEA00000000007373;
  v19 = v7 != 2 && (a1 & 1) != 0 && a2 == 0;
  *(inited + 48) = v19;
  *(inited + 56) = 1;
  *(inited + 64) = 0xD000000000000016;
  *(inited + 72) = 0x800000010136E520;
  *(inited + 80) = a3 & 1;
  *(inited + 88) = 1;
  v20 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  if (a2)
  {
    swift_getErrorValue();
    swift_errorRetain();
    Error.domain.getter();
    v21 = String._bridgeToObjectiveC()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v20;
    sub_100FFC418(v21, 0, 0x6D6F44726F727265, 0xEB000000006E6961, isUniquelyReferenced_nonNull_native);
    v23 = v33;
    swift_getErrorValue();
    Error.code.getter();
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v33 = v23;
    sub_100FFC418(isa, 0, 0x646F43726F727265, 0xE900000000000065, v25);

    v20 = v33;
  }

  sub_1000D2A70(v32, v10, &qword_101696CA8, &qword_10138B5E0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000B3A8(v10, &qword_101696CA8, &qword_10138B5E0);
    return v20;
  }

  (*(v12 + 32))(v17, v10, v11);
  static DispatchTime.now()();
  v26 = DispatchTime.uptimeNanoseconds.getter();
  result = DispatchTime.uptimeNanoseconds.getter();
  if (v26 >= result)
  {
    v28 = Double._bridgeToObjectiveC()().super.super.isa;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v33 = v20;
    sub_100FFC418(v28, 0, 0xD000000000000010, 0x800000010136E540, v29);
    v20 = v33;
    v30 = *(v12 + 8);
    v30(v15, v11);
    v30(v17, v11);
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_100B822EC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100B7EDB4();
  }

  return result;
}

uint64_t sub_100B82344()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v43 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchTimeInterval();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v6 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for DispatchTime();
  v39 = *(v40 - 8);
  v7 = __chkstk_darwin(v40);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = v33 - v10;
  v11 = type metadata accessor for BeaconObservation(0);
  v34 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v0 + 56);
  dispatch_assert_queue_V2(v37);
  v14 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    v32 = v14;
    swift_once();
    v14 = v32;
  }

  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, qword_10177C398, "SoundPlaybackCoordinator: requesting stopSound()", 48, 2, _swiftEmptyArrayStorage);
  v15 = type metadata accessor for Transaction();
  sub_1000BC4D4(&qword_1016A24A0, &qword_1013AAFE8);
  v33[1] = v15;
  static Transaction.named<A>(_:with:)();

  v16 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playSoundTimer;
  swift_beginAccess();
  sub_1000D2A70(v1 + v16, &aBlock, &qword_1016B6DD8, &unk_1013DB1C0);
  if (*(&v49 + 1))
  {
    sub_10001F280(&aBlock, v47);
    sub_10000B3A8(&aBlock, &qword_1016B6DD8, &unk_1013DB1C0);
    sub_1000035D0(v47, v47[3]);
    dispatch thunk of Cancellable.cancel()();
    sub_100007BAC(v47);
  }

  else
  {
    sub_10000B3A8(&aBlock, &qword_1016B6DD8, &unk_1013DB1C0);
  }

  v50 = 0;
  aBlock = 0u;
  v49 = 0u;
  swift_beginAccess();
  sub_10002311C(&aBlock, v1 + v16, &qword_1016B6DD8, &unk_1013DB1C0);
  swift_endAccess();
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v17 = qword_10177B2E8;
  v18 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier;
  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 16))(v13, v1 + v18, v19);
  Date.init()();
  v13[*(v11 + 24)] = 26;
  sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
  v20 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_101385D80;
  v22 = sub_10073B64C(v13, v21 + v20);
  __chkstk_darwin(v22);
  v33[-4] = v17;
  v33[-3] = v21;
  v33[-2] = 0;
  v33[-1] = 0;
  static Transaction.named<A>(_:with:)();

  sub_10073B5F0(v13);
  sub_100B7DBFC();
  sub_1000035D0((v1 + 16), *(v1 + 40));
  v34 = sub_100896354(v1 + v18);

  Future.addCompletion(block:)();

  static DispatchTime.now()();
  *v6 = 8;
  v23 = v35;
  v24 = v36;
  (*(v35 + 104))(v6, enum case for DispatchTimeInterval.seconds(_:), v36);
  v25 = v38;
  + infix(_:_:)();
  (*(v23 + 8))(v6, v24);
  v39 = *(v39 + 8);
  v26 = v40;
  (v39)(v9, v40);
  v50 = sub_100B84F40;
  v51 = v1;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v49 = sub_100006684;
  *(&v49 + 1) = &unk_10164ACC8;
  v27 = _Block_copy(&aBlock);

  v28 = v41;
  static DispatchQoS.unspecified.getter();
  v47[0] = _swiftEmptyArrayStorage;
  sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v29 = v43;
  v30 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v27);

  (*(v45 + 8))(v29, v30);
  (*(v42 + 8))(v28, v44);
  (v39)(v25, v26);
}

uint64_t sub_100B82C1C@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X8>)
{
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;

  v9 = Future.addCompletion(block:)();

  *a5 = v9;
  return result;
}

uint64_t sub_100B82CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + 56);
    v21 = v11;
    v20 = v16;

    v17 = swift_allocObject();
    v17[2] = a4;
    v17[3] = a2;
    v17[4] = a3;
    aBlock[4] = sub_100B84F50;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10164AD40;
    v18 = _Block_copy(aBlock);

    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v20;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v14, v21);
  }

  return result;
}

uint64_t sub_100B82FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Transaction.capture()();
  if (!a2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_100B7EDB4();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandError) = a2;
    swift_errorRetain();
    swift_errorRetain();
  }

  else
  {
    swift_errorRetain();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100B7DBFC();
  }
}

uint64_t sub_100B830F8(char *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    swift_errorRetain();
    v5 = static os_log_type_t.error.getter();
    if (qword_101695050 != -1)
    {
      swift_once();
    }

    v6 = qword_10177C398;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100008C00();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "#Durian: Error during stop sound. Error - %@", 44, 2, v7);

    v11 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier;
    swift_errorRetain();
    sub_100B8377C(0, a3 + v11, a2);
  }

  else
  {
    v13 = *a1;
    v14 = static os_log_type_t.default.getter();
    if (qword_101695050 != -1)
    {
      v15 = v14;
      swift_once();
      v14 = v15;
    }

    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, qword_10177C398, "SoundPlaybackCoordinator: sound stopped successfully.", 53, 2, _swiftEmptyArrayStorage);
    return sub_100B8377C(v13 & 1, a3 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier, 0);
  }
}

void sub_100B832E8(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    v2 = v1;
    swift_once();
    v1 = v2;
  }

  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, qword_10177C398, "SoundPlaybackCoordinator: timeout block.", 40, 2, _swiftEmptyArrayStorage);
  type metadata accessor for SPOwnerSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100B85220(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
  _BridgedStoredNSError.init(_:userInfo:)();
  Future.finish(error:)();
}

uint64_t sub_100B83440(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a1;
  v24 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138B360;
  *(v8 + 56) = &type metadata for Bool;
  *(v8 + 64) = &protocol witness table for Bool;
  *(v8 + 32) = v6 & 1;
  v9 = UUID.uuidString.getter();
  v23 = v6;
  v11 = v10;
  *(v8 + 96) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 104) = v12;
  *(v8 + 72) = v9;
  *(v8 + 80) = v11;
  v13 = v7;
  swift_errorRetain();
  sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
  v14 = String.init<A>(describing:)();
  *(v8 + 136) = &type metadata for String;
  *(v8 + 144) = v12;
  *(v8 + 112) = v14;
  *(v8 + 120) = v15;
  os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v7, "SoundPlaybackCoordinator: startPlayingSound completed %i %@ %@", 62, 2, v8);

  dispatch_assert_queue_V2(*(a4 + 56));
  if (a3)
  {
    swift_errorRetain();
    v16 = static os_log_type_t.error.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10138BBE0;
    type metadata accessor for UUID();
    sub_100B85220(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = v12;
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v20 = String.init<A>(describing:)();
    *(v17 + 96) = &type metadata for String;
    *(v17 + 104) = v12;
    *(v17 + 72) = v20;
    *(v17 + 80) = v21;
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v13, "SoundPlaybackCoordinator: Command failed on device UUID %@ error: %@", 68, 2, v17);

    Future.finish(error:)();
  }

  else if (v23)
  {
    Future.finish(result:)();
  }

  else
  {
    type metadata accessor for SPOwnerSessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100B85220(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    Future.finish(error:)();
  }

  return sub_100B7DBFC();
}

uint64_t sub_100B837A4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v25 = a3;
  v26 = a5;
  v23[1] = a4;
  v24 = a1;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v6 + 56);
  (*(v13 + 16))(v15, a2, v12);
  v16 = (*(v13 + 80) + 17) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v24;
  (*(v13 + 32))(v18 + v16, v15, v12);
  v19 = v26;
  *(v18 + v17) = v25;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v6;
  aBlock[4] = v19;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = v28;
  v20 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v21 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v32 + 8))(v9, v21);
  (*(v29 + 8))(v11, v31);
}

void sub_100B83B68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a1;
  v23 = static os_log_type_t.default.getter();
  if (qword_101695050 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C398;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138B360;
  *(v8 + 56) = &type metadata for Bool;
  *(v8 + 64) = &protocol witness table for Bool;
  *(v8 + 32) = v6 & 1;
  v9 = UUID.uuidString.getter();
  v22 = v6;
  v11 = v10;
  *(v8 + 96) = &type metadata for String;
  v12 = sub_100008C00();
  *(v8 + 104) = v12;
  *(v8 + 72) = v9;
  *(v8 + 80) = v11;
  v13 = v7;
  swift_errorRetain();
  sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
  v14 = String.init<A>(describing:)();
  *(v8 + 136) = &type metadata for String;
  *(v8 + 144) = v12;
  *(v8 + 112) = v14;
  *(v8 + 120) = v15;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v7, "SoundPlaybackCoordinator: stopPlayingSound completed %i %@ %@", 61, 2, v8);

  dispatch_assert_queue_V2(*(a4 + 56));
  if (a3)
  {
    swift_errorRetain();
    v16 = static os_log_type_t.error.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10138BBE0;
    type metadata accessor for UUID();
    sub_100B85220(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = v12;
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v20 = String.init<A>(describing:)();
    *(v17 + 96) = &type metadata for String;
    *(v17 + 104) = v12;
    *(v17 + 72) = v20;
    *(v17 + 80) = v21;
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v13, "SoundPlaybackCoordinator: Command failed on device UUID %@ error: %@", 68, 2, v17);

    Future.finish(error:)();
  }

  else if (v22)
  {
    Future.finish(result:)();
  }

  else
  {
    type metadata accessor for SPOwnerSessionError(0);
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100B85220(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
    _BridgedStoredNSError.init(_:userInfo:)();
    Future.finish(error:)();
  }
}

uint64_t sub_100B83E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-v8 - 8];
  sub_10001F280(a1, v16);
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&qword_1016B6DC8, &unk_1013DB1B0);
  Subscription.init(subscriber:unsubscribeBlock:)();
  (*(v7 + 16))(v9, a3, v6);
  swift_beginAccess();
  v10 = *(a2 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 72) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_100A5EA98(0, v10[2] + 1, 1, v10);
    *(a2 + 72) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_100A5EA98((v12 > 1), v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  (*(v7 + 32))(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v9, v6);
  *(a2 + 72) = v10;
  return swift_endAccess();
}

uint64_t sub_100B840B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100B84124(a1);
  }

  return result;
}

uint64_t sub_100B84124(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  v17[1] = *(v1 + 64);
  (*(v10 + 16))(v17 - v11, a1, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  (*(v10 + 32))(v14 + v13, v12, v9);
  aBlock[4] = sub_100B84CDC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10164AC00;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100B85220(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);
}

uint64_t sub_100B844C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 72);
  v6[2] = a2;

  *(a1 + 72) = sub_10013E1EC(sub_100B84D4C, v6, v4);
}

BOOL sub_100B84550(uint64_t a1, uint64_t a2)
{
  sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8);
  sub_1000041A4(&qword_1016B6DD0, &qword_101697DF0, &qword_10138CDE8, &protocol conformance descriptor for Subscription<A>);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100B845F4()
{
  sub_100007BAC((v0 + 16));

  v1 = OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_beaconIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playCommandIdentifier, &qword_1016980D0, &unk_10138F3B0);
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_stopCommandIdentifier, &qword_1016980D0, &unk_10138F3B0);

  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_playSoundTimer, &qword_1016B6DD8, &unk_1013DB1C0);
  return v0;
}

uint64_t sub_100B8472C()
{
  sub_100B845F4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SoundPlaybackCoordinator(uint64_t a1)
{
  result = qword_1016B6BC0;
  if (!qword_1016B6BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100B847D8(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100395648(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100B848FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100B84944(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

double sub_100B849A4()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100B849E8(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 72) = a1;
}

uint64_t sub_100B84B00()
{
  _StringGuts.grow(_:)(34);

  type metadata accessor for UUID();
  sub_100B85220(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._object = 0x800000010136E110;
  v1._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v1);
  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
  OS_dispatch_queue.sync<A>(execute:)();
  v2 = [v9 debugDescription];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0x496E6F636165623CLL;
}

uint64_t sub_100B84CDC()
{
  v1 = *(sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100B844C4(v2, v3);
}

uint64_t sub_100B84D84()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100B84E48(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + 16);
  v6 = *(v1 + v4);
  v7 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a1(v5, v1 + v3, v6, v7);
}

uint64_t sub_100B84F9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100B7FB70(v2, v3, v4);
}

uint64_t sub_100B8505C(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_100B850B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014650;

  return sub_100B8168C(v2, v5, v3, v4);
}

uint64_t sub_100B85188()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100B806CC(v0);
}

uint64_t sub_100B85220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100B85270(void (*a1)(void), void (*a2)(void))
{

  a1(*(v2 + 24));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40);
}

uint64_t sub_100B852E4()
{
  v1 = *(sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v3);
  v8 = *(v0 + v6);
  v9 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100B7ED34(v0 + v2, v7, (v0 + v5), v8, v9);
}

double sub_100B8541C@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 72);

  return result;
}

uint64_t sub_100B8546C()
{
  v1 = *(sub_1000BC4D4(&qword_101697DF0, &qword_10138CDE8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_100B7E3E8(v0 + v2, v5, v6);
}

uint64_t sub_100B85554()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100B7CF08(v2, v3);
}

uint64_t sub_100B855C0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100B7DAE4(v0 + v4, v0 + v5, v6);
}

uint64_t sub_100B85660()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v0 + v4);

  return sub_100B7D4F8(v0 + v2, v6, v7, v8);
}

uint64_t sub_100B856FC()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100B7C8A4(v3, v0 + v2, v4);
}

uint64_t sub_100B8578C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_100B7D050(a1, v1 + v4, v6, v7);
}

uint64_t sub_100B8582C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_100B858CC(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_100B7D5F4(a1, v1 + v4, v6, v7);
}

uint64_t SPDeviceEventSource.debugDescription.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x7463656E6E6F632ELL;
      }

      if (a1 == 2)
      {
        return 0x6E6E6F637369642ELL;
      }
    }

    return 0x6E776F6E6B6E752ELL;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x726961702ELL;
    }

    if (a1 == 6)
    {
      return 0x657463657465642ELL;
    }

    return 0x6E776F6E6B6E752ELL;
  }

  if (a1 == 3)
  {
    v1 = 1953784110;
  }

  else
  {
    v1 = 1952801838;
  }

  return v1 | 0x68636100000000;
}

uint64_t sub_100B85AE4()
{
  v1 = *v0;
  if (*v0 <= 2)
  {
    if (!v1)
    {
      return 0x6E776F6E6B6E752ELL;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0x6E6E6F637369642ELL;
      }

      return 0x6E776F6E6B6E752ELL;
    }

    return 0x7463656E6E6F632ELL;
  }

  else
  {
    if (v1 <= 4)
    {
      if (v1 == 3)
      {
        v2 = 1953784110;
        return v2 | 0x68636100000000;
      }

      if (v1 == 4)
      {
        v2 = 1952801838;
        return v2 | 0x68636100000000;
      }

      return 0x6E776F6E6B6E752ELL;
    }

    if (v1 != 5)
    {
      if (v1 == 6)
      {
        return 0x657463657465642ELL;
      }

      return 0x6E776F6E6B6E752ELL;
    }

    return 0x726961702ELL;
  }
}

uint64_t sub_100B85BDC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a5;
  sub_1000BC4D4(&qword_1016B6DE8, &qword_1013DB278);
  v9 = (sub_1000BC4D4(&unk_1016B6DF0, &qword_1013DB280) - 8);
  v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v12 = v11 + v10;
  v13 = v9[14];
  v14 = *(sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060) + 48);
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 16))(v12, a2, v15);
  v16 = a3[3];
  v17 = a3[4];
  sub_1000035D0(a3, v16);
  *(v12 + v14) = (*(v17 + 184))(v16, v17);
  *(v12 + v13) = a4;
  v18 = a4;
  sub_100B85D8C(v11, _swiftEmptyArrayStorage, v5);
}

uint64_t sub_100B85D8C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v48 = sub_1000BC4D4(&unk_1016B6DF0, &qword_1013DB280);
  v8 = *(v48 - 8);
  v9 = __chkstk_darwin(v48);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v37 - v12;
  __chkstk_darwin(v11);
  v47 = &v37 - v13;
  v14 = sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060);
  v45 = *(v14 - 8);
  v46 = v14;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  sub_1000BC4D4(&unk_1016B6E00, &qword_1013BD078);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v17 = v51;
  v18 = *(a1 + 16);
  v19 = _swiftEmptyArrayStorage;
  if (v18)
  {
    v37 = v51;
    v38 = a3;
    v39 = v4;
    v40 = a2;
    v51 = _swiftEmptyArrayStorage;
    sub_10112518C(0, v18, 0);
    v19 = v51;
    v20 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v21 = *(v8 + 72);
    v41 = a1;
    v42 = v21;
    v22 = &unk_1013BD060;
    do
    {
      v50 = v18;
      v23 = v47;
      sub_1000D2A70(v20, v47, &unk_1016B6DF0, &qword_1013DB280);
      v24 = v19;
      v25 = v44;
      sub_1000D2A70(v23, v44, &unk_1016B6DF0, &qword_1013DB280);
      v26 = *(v46 + 48);
      v49 = *(v25 + v26);
      v27 = *(v48 + 48);
      v28 = v22;
      v29 = *(v25 + v27);
      v30 = type metadata accessor for UUID();
      v31 = v43;
      v32 = v25;
      v19 = v24;
      (*(*(v30 - 8) + 32))(v43, v32, v30);
      *(v31 + v26) = v49;
      *(v31 + v27) = v29;
      v22 = v28;
      sub_1000D2A70(v31, v16, &unk_1016AA490, v28);
      sub_10000B3A8(v31, &unk_1016B6DF0, &qword_1013DB280);
      sub_10000B3A8(v23, &unk_1016B6DF0, &qword_1013DB280);
      v51 = v24;
      v34 = v24[2];
      v33 = v24[3];
      if (v34 >= v33 >> 1)
      {
        sub_10112518C((v33 > 1), v34 + 1, 1);
        v19 = v51;
      }

      v19[2] = v34 + 1;
      sub_1000D2AD8(v16, v19 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v34, &unk_1016AA490, v28);
      v20 += v42;
      v18 = v50 - 1;
    }

    while (v50 != 1);
    a2 = v40;
    a1 = v41;
    v4 = v39;
    LOBYTE(a3) = v38;
    v17 = v37;
  }

  type metadata accessor for Transaction();
  v35 = swift_allocObject();
  *(v35 + 16) = v4;
  *(v35 + 24) = v17;
  *(v35 + 32) = v19;
  *(v35 + 40) = a3;
  *(v35 + 48) = a2;
  *(v35 + 56) = a1;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100B861F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 64) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  type metadata accessor for UUID();
  *(v6 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100B86290, 0, 0);
}

uint64_t sub_100B86290()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 64);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  type metadata accessor for WorkItemQueue.WorkItem();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  *(v6 + 48) = v1;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100B863CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 672) = a5;
  *(v5 + 664) = a4;
  *(v5 + 114) = a3;
  *(v5 + 656) = a2;
  *(v5 + 648) = a1;
  v6 = type metadata accessor for UUID();
  *(v5 + 680) = v6;
  *(v5 + 688) = *(v6 - 8);
  *(v5 + 696) = swift_task_alloc();
  *(v5 + 704) = sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060);
  *(v5 + 712) = swift_task_alloc();
  *(v5 + 720) = swift_task_alloc();
  *(v5 + 728) = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_10169F030, &qword_10139FE18);
  *(v5 + 736) = v7;
  *(v5 + 744) = *(v7 - 8);
  *(v5 + 752) = swift_task_alloc();
  *(v5 + 760) = swift_task_alloc();
  v8 = sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8);
  *(v5 + 768) = v8;
  v9 = *(v8 - 8);
  *(v5 + 776) = v9;
  *(v5 + 784) = *(v9 + 64);
  *(v5 + 792) = swift_task_alloc();
  *(v5 + 800) = swift_task_alloc();
  *(v5 + 808) = swift_task_alloc();
  *(v5 + 816) = swift_task_alloc();
  *(v5 + 824) = swift_task_alloc();

  return _swift_task_switch(sub_100B86604, 0, 0);
}

uint64_t sub_100B86604()
{
  v178 = v0;
  v150 = (v0 + 328);
  v1 = (v0 + 432);
  v2 = *(v0 + 648);
  v3 = *(v2 + 32);
  *(v0 + 115) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);

  v11 = 0;
  v12 = 0;
  if (v6)
  {
    while (1)
    {
      v159 = v11;
      v13 = *(v0 + 648);
LABEL_10:
      *(v0 + 840) = v12;
      *(v0 + 832) = v6;
      v15 = *(v0 + 824);
      v16 = *(v0 + 816);
      v17 = *(v0 + 768);
      v18 = *(v0 + 688);
      v174 = *(v0 + 680);
      v175 = *(v0 + 664);
      v167 = *(v0 + 114);
      v170 = *(v0 + 656);
      v19 = __clz(__rbit64(v6)) | (v12 << 6);
      v160 = v18[2];
      v160(v15, *(v13 + 48) + v18[9] * v19);
      v20 = (*(v13 + 56) + 104 * v19);
      v21 = v20[96];
      v23 = *(v20 + 4);
      v22 = *(v20 + 5);
      *(v0 + 64) = *(v20 + 3);
      *(v0 + 80) = v23;
      *(v0 + 96) = v22;
      *(v0 + 112) = v21;
      v25 = *(v20 + 1);
      v24 = *(v20 + 2);
      *(v0 + 16) = *v20;
      *(v0 + 32) = v25;
      *(v0 + 48) = v24;
      v26 = v15 + *(v17 + 48);
      v27 = *(v0 + 16);
      memmove(v26, v20, 0x61uLL);
      v28 = v18[4];
      v29 = *(v26 + 24);
      *v1 = *(v26 + 8);
      *(v0 + 448) = v29;
      v30 = *(v26 + 56);
      v31 = *(v26 + 72);
      v32 = *(v26 + 40);
      *(v0 + 505) = *(v26 + 81);
      *(v0 + 480) = v30;
      *(v0 + 496) = v31;
      *(v0 + 464) = v32;
      v33 = v16 + *(v17 + 48);
      v173 = v28;
      v28(v16, v15, v174);
      *v33 = v27;
      v34 = *(v0 + 448);
      *(v33 + 8) = *v1;
      *(v33 + 24) = v34;
      v36 = *(v0 + 480);
      v35 = *(v0 + 496);
      v37 = *(v0 + 505);
      *(v33 + 40) = *(v0 + 464);
      *(v33 + 81) = v37;
      *(v33 + 72) = v35;
      *(v33 + 56) = v36;
      v38 = swift_task_alloc();
      *(v38 + 16) = v16;
      *(v38 + 24) = v167;
      sub_1000D2A70(v0 + 16, v0 + 120, &unk_1016AA4C0, &unk_1013BD0B0);

      v11 = v159;
      v39 = sub_10013D964(sub_1007FEFD8, v38, v170);

      v40 = swift_task_alloc();
      *(v40 + 16) = v16;
      *(v40 + 24) = v167;

      v176 = sub_10013DC40(sub_1007FEFFC, v40, v175);

      v41 = v39[2];

      if (v41 || *(v176 + 16))
      {
        break;
      }

      v6 &= v6 - 1;
      v42 = *(v0 + 816);

      v7 = sub_10000B3A8(v42, &unk_1016B6E10, &qword_1013BD0A8);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v45 = *(v0 + 672);
    v46 = *(v45 + 16);
    v47 = _swiftEmptyArrayStorage;
    if (v46)
    {
      *(v0 + 624) = _swiftEmptyArrayStorage;
      sub_10112510C(0, v46, 0);
      v47 = *(v0 + 624);
      v157 = sub_1000BC4D4(&unk_1016B6DF0, &qword_1013DB280);
      v48 = v45 + ((*(v157[-1].isa + 80) + 32) & ~*(v157[-1].isa + 80));
      v155 = *(v157[-1].isa + 9);
      v49 = v173;
      do
      {
        v168 = v46;
        v171 = v47;
        v50 = *(v0 + 728);
        v51 = *(v0 + 704);
        v52 = *(v48 + *(v51 + 48));
        v165 = *(v48 + SLODWORD(v157[6].isa));
        (v160)(v50, v48, *(v0 + 680));
        *(v50 + *(v51 + 48)) = v52;
        v53 = qword_101694958;
        v54 = v52;
        if (v53 != -1)
        {
          swift_once();
        }

        v55 = *(v0 + 816);
        v56 = *(v0 + 808);
        v57 = *(v0 + 728);
        v58 = *(v0 + 720);
        v59 = type metadata accessor for Logger();
        sub_1000076D4(v59, qword_10177B368);
        sub_1000D2A70(v55, v56, &unk_1016B6E10, &qword_1013BD0A8);
        sub_1000D2A70(v57, v58, &unk_1016AA490, &unk_1013BD060);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        log = v60;
        v62 = os_log_type_enabled(v60, v61);
        v63 = *(v0 + 808);
        if (v62)
        {
          type = v61;
          v64 = *(v0 + 800);
          v65 = *(v0 + 768);
          v151 = *(v0 + 712);
          v152 = *(v0 + 720);
          v153 = *(v0 + 704);
          v66 = *(v0 + 696);
          v67 = *(v0 + 688);
          v68 = *(v0 + 680);
          v69 = swift_slowAlloc();
          v177[0] = swift_slowAlloc();
          *v69 = 141558787;
          *(v69 + 4) = 1752392040;
          *(v69 + 12) = 2081;
          sub_1000D2A70(v63, v64, &unk_1016B6E10, &qword_1013BD0A8);
          v70 = v64 + *(v65 + 48);
          v71 = *(v70 + 96);
          v73 = *(v70 + 64);
          v72 = *(v70 + 80);
          *(v0 + 376) = *(v70 + 48);
          *(v0 + 392) = v73;
          *(v0 + 408) = v72;
          *(v0 + 424) = v71;
          v75 = *(v70 + 16);
          v74 = *(v70 + 32);
          *v150 = *v70;
          *(v0 + 344) = v75;
          *(v0 + 360) = v74;
          sub_10000B3A8(v150, &unk_1016AA4C0, &unk_1013BD0B0);
          v173(v66, v64, v68);
          sub_10000B3A8(v63, &unk_1016B6E10, &qword_1013BD0A8);
          sub_1000096E8(&qword_101696930, &protocol conformance descriptor for UUID);
          v76 = dispatch thunk of CustomStringConvertible.description.getter();
          v78 = v77;
          v79 = *(v67 + 8);
          v79(v66, v68);
          v80 = sub_1000136BC(v76, v78, v177);

          *(v69 + 14) = v80;
          *(v69 + 22) = 2160;
          *(v69 + 24) = 1752392040;
          *(v69 + 32) = 2081;
          sub_1000D2A70(v152, v151, &unk_1016AA490, &unk_1013BD060);

          v173(v66, v151, v68);
          v81 = dispatch thunk of CustomStringConvertible.description.getter();
          v83 = v82;
          v79(v66, v68);
          sub_10000B3A8(v152, &unk_1016AA490, &unk_1013BD060);
          v84 = sub_1000136BC(v81, v83, v177);

          *(v69 + 34) = v84;
          _os_log_impl(&_mh_execute_header, log, type, "Received device event update for subscription: %{private,mask.hash}s, beaconID: %{private,mask.hash}s.", v69, 0x2Au);
          swift_arrayDestroy();

          v49 = v173;
        }

        else
        {
          v85 = *(v0 + 720);
          sub_10000B3A8(*(v0 + 808), &unk_1016B6E10, &qword_1013BD0A8);

          sub_10000B3A8(v85, &unk_1016AA490, &unk_1013BD060);
        }

        v86 = *(v0 + 760);
        v87 = *(v0 + 712);
        v88 = *(v0 + 704);
        v89 = *(v0 + 680);
        v90 = *(*(v0 + 736) + 48);
        sub_1000D2AD8(*(v0 + 728), v87, &unk_1016AA490, &unk_1013BD060);

        v49(v86, v87, v89);
        *(v86 + v90) = v165;
        v47 = v171;
        *(v0 + 624) = v171;
        v92 = v171[2];
        v91 = v171[3];
        v93 = v165;
        if (v92 >= v91 >> 1)
        {
          sub_10112510C((v91 > 1), v92 + 1, 1);
          v47 = *(v0 + 624);
        }

        v94 = *(v0 + 760);
        v95 = *(v0 + 744);
        v47[2] = v92 + 1;
        sub_1000D2AD8(v94, v47 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v92, &qword_10169F030, &qword_10139FE18);
        v48 += v155;
        v46 = v168 - 1;
      }

      while (v168 != 1);
    }

    v96 = *(v176 + 16);
    if (v96)
    {
      *(v0 + 632) = _swiftEmptyArrayStorage;
      sub_10112510C(0, v96, 0);
      v97 = 0;
      v98 = *(v0 + 632);
      v7 = v176 + 32;
      v162 = v96;
      v172 = v47;
      while (v97 < *(v176 + 16))
      {
        v169 = v7;
        sub_1000D2A70(v7, v0 + 528, &qword_1016B6E20, &unk_10138CE00);
        v166 = *(v0 + 576);
        if (qword_101694958 != -1)
        {
          swift_once();
        }

        v99 = *(v0 + 816);
        v100 = *(v0 + 792);
        v101 = type metadata accessor for Logger();
        sub_1000076D4(v101, qword_10177B368);
        sub_1000D2A70(v99, v100, &unk_1016B6E10, &qword_1013BD0A8);
        sub_10001F280(v0 + 528, v0 + 584);
        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = *(v0 + 800);
          v158 = v102;
          v105 = *(v0 + 792);
          v106 = *(v0 + 768);
          v156 = v103;
          v107 = *(v0 + 696);
          loga = *(v0 + 688);
          v108 = *(v0 + 680);
          v109 = swift_slowAlloc();
          v177[0] = swift_slowAlloc();
          *v109 = 141558787;
          *(v109 + 4) = 1752392040;
          *(v109 + 12) = 2081;
          sub_1000D2A70(v105, v104, &unk_1016B6E10, &qword_1013BD0A8);
          v110 = v104 + *(v106 + 48);
          v111 = *(v110 + 96);
          v113 = *(v110 + 64);
          v112 = *(v110 + 80);
          *(v0 + 272) = *(v110 + 48);
          *(v0 + 288) = v113;
          *(v0 + 304) = v112;
          *(v0 + 320) = v111;
          v115 = *(v110 + 16);
          v114 = *(v110 + 32);
          *(v0 + 224) = *v110;
          *(v0 + 240) = v115;
          *(v0 + 256) = v114;
          sub_10000B3A8(v0 + 224, &unk_1016AA4C0, &unk_1013BD0B0);
          v173(v107, v104, v108);
          sub_10000B3A8(v105, &unk_1016B6E10, &qword_1013BD0A8);
          sub_1000096E8(&qword_101696930, &protocol conformance descriptor for UUID);
          v116 = dispatch thunk of CustomStringConvertible.description.getter();
          v118 = v117;
          v161 = v98;
          isa = loga[1].isa;
          isa(v107, v108);
          v120 = sub_1000136BC(v116, v118, v177);

          *(v109 + 14) = v120;
          *(v109 + 22) = 2160;
          *(v109 + 24) = 1752392040;
          *(v109 + 32) = 2081;
          v121 = *(v0 + 608);
          v122 = *(v0 + 616);
          sub_1000035D0((v0 + 584), v121);
          (*(v122 + 8))(v121, v122);
          v123 = dispatch thunk of CustomStringConvertible.description.getter();
          v125 = v124;
          v126 = v108;
          v47 = v172;
          isa(v107, v126);
          v98 = v161;
          sub_100007BAC((v0 + 584));
          v127 = sub_1000136BC(v123, v125, v177);

          *(v109 + 34) = v127;
          _os_log_impl(&_mh_execute_header, v158, v156, "Received device event update for subscription: %{private,mask.hash}s, beaconGroupID: %{private,mask.hash}s.", v109, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {
          sub_10000B3A8(*(v0 + 792), &unk_1016B6E10, &qword_1013BD0A8);

          sub_100007BAC((v0 + 584));
        }

        v128 = *(v0 + 752);
        v129 = *(*(v0 + 736) + 48);
        v130 = *(v0 + 552);
        v131 = *(v0 + 560);
        sub_1000035D0((v0 + 528), v130);
        (*(v131 + 8))(v130, v131);
        *(v128 + v129) = v166;
        v132 = v166;
        sub_10000B3A8(v0 + 528, &qword_1016B6E20, &unk_10138CE00);
        *(v0 + 632) = v98;
        v134 = v98[2];
        v133 = v98[3];
        if (v134 >= v133 >> 1)
        {
          sub_10112510C((v133 > 1), v134 + 1, 1);
          v98 = *(v0 + 632);
        }

        v135 = *(v0 + 752);
        v136 = *(v0 + 744);
        ++v97;
        v98[2] = v134 + 1;
        sub_1000D2AD8(v135, v98 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v134, &qword_10169F030, &qword_10139FE18);
        v7 = v169 + 56;
        if (v162 == v97)
        {

          goto LABEL_40;
        }
      }

LABEL_47:
      __break(1u);
    }

    else
    {

      v98 = _swiftEmptyArrayStorage;
LABEL_40:
      v177[0] = v47;
      sub_10039A558(v98);
      if (*(v177[0] + 16))
      {
        sub_1000BC4D4(&unk_1016C31E0, &unk_1013DB2B0);
        v137 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v137 = _swiftEmptyDictionarySingleton;
      }

      *(v0 + 640) = v137;

      sub_100B88A90(v138, 1, (v0 + 640));
      *(v0 + 848) = v159;
      v139 = *(v0 + 816);
      v140 = *(v0 + 800);
      v141 = *(v0 + 784);
      v142 = *(v0 + 776);

      v143 = objc_allocWithZone(SPDeviceEventFetchResult);
      sub_100B8A2E0();
      sub_1000096E8(&qword_1016967B0, &protocol conformance descriptor for UUID);
      v144 = Dictionary._bridgeToObjectiveC()().super.isa;

      v145 = [v143 initWithResults:v144];
      *(v0 + 856) = v145;

      sub_1000D2A70(v139, v140, &unk_1016B6E10, &qword_1013BD0A8);
      v146 = (*(v142 + 80) + 16) & ~*(v142 + 80);
      v147 = swift_allocObject();
      *(v0 + 864) = v147;
      sub_1000D2AD8(v140, v147 + v146, &unk_1016B6E10, &qword_1013BD0A8);
      *(v147 + ((v141 + v146 + 7) & 0xFFFFFFFFFFFFFFF8)) = v145;
      v148 = v145;
      v149 = swift_task_alloc();
      *(v0 + 872) = v149;
      v10 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
      *v149 = v0;
      v149[1] = sub_100B87704;
      v8 = sub_100B8A32C;
      v7 = v0 + 113;
      v9 = v147;
    }

    return unsafeBlocking<A>(_:)(v7, v8, v9, v10);
  }

  else
  {
    while (1)
    {
LABEL_6:
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v14 >= (((1 << *(v0 + 115)) + 63) >> 6))
      {
        break;
      }

      v13 = *(v0 + 648);
      v6 = *(v13 + 8 * v14 + 64);
      ++v12;
      if (v6)
      {
        v159 = v11;
        v12 = v14;
        goto LABEL_10;
      }
    }

    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_100B87704()
{

  return _swift_task_switch(sub_100B8781C, 0, 0);
}

uint64_t sub_100B8781C()
{
  v175 = v0;
  v147 = (v0 + 328);
  v1 = (v0 + 432);
  v2 = *(v0 + 816);

  v3 = sub_10000B3A8(v2, &unk_1016B6E10, &qword_1013BD0A8);
  v7 = *(v0 + 848);
  v8 = *(v0 + 840);
  v9 = (*(v0 + 832) - 1) & *(v0 + 832);
  if (v9)
  {
    while (1)
    {
      v156 = v7;
      v10 = *(v0 + 648);
LABEL_7:
      *(v0 + 840) = v8;
      *(v0 + 832) = v9;
      v12 = *(v0 + 824);
      v13 = *(v0 + 816);
      v14 = *(v0 + 768);
      v15 = *(v0 + 688);
      v171 = *(v0 + 680);
      v172 = *(v0 + 664);
      v164 = *(v0 + 114);
      v167 = *(v0 + 656);
      v16 = __clz(__rbit64(v9)) | (v8 << 6);
      v157 = v15[2];
      v157(v12, *(v10 + 48) + v15[9] * v16);
      v17 = (*(v10 + 56) + 104 * v16);
      v18 = v17[96];
      v20 = *(v17 + 4);
      v19 = *(v17 + 5);
      *(v0 + 64) = *(v17 + 3);
      *(v0 + 80) = v20;
      *(v0 + 96) = v19;
      *(v0 + 112) = v18;
      v22 = *(v17 + 1);
      v21 = *(v17 + 2);
      *(v0 + 16) = *v17;
      *(v0 + 32) = v22;
      *(v0 + 48) = v21;
      v23 = v12 + *(v14 + 48);
      v24 = *(v0 + 16);
      memmove(v23, v17, 0x61uLL);
      v25 = v15[4];
      v26 = *(v23 + 24);
      *v1 = *(v23 + 8);
      *(v0 + 448) = v26;
      v27 = *(v23 + 56);
      v28 = *(v23 + 72);
      v29 = *(v23 + 40);
      *(v0 + 505) = *(v23 + 81);
      *(v0 + 480) = v27;
      *(v0 + 496) = v28;
      *(v0 + 464) = v29;
      v30 = v13 + *(v14 + 48);
      v170 = v25;
      v25(v13, v12, v171);
      *v30 = v24;
      v31 = *(v0 + 448);
      *(v30 + 8) = *v1;
      *(v30 + 24) = v31;
      v33 = *(v0 + 480);
      v32 = *(v0 + 496);
      v34 = *(v0 + 505);
      *(v30 + 40) = *(v0 + 464);
      *(v30 + 81) = v34;
      *(v30 + 72) = v32;
      *(v30 + 56) = v33;
      v35 = swift_task_alloc();
      *(v35 + 16) = v13;
      *(v35 + 24) = v164;
      sub_1000D2A70(v0 + 16, v0 + 120, &unk_1016AA4C0, &unk_1013BD0B0);

      v7 = v156;
      v36 = sub_10013D964(sub_1007FEFD8, v35, v167);

      v37 = swift_task_alloc();
      *(v37 + 16) = v13;
      *(v37 + 24) = v164;

      v173 = sub_10013DC40(sub_1007FEFFC, v37, v172);

      v38 = v36[2];

      if (v38 || *(v173 + 16))
      {
        break;
      }

      v9 &= v9 - 1;
      v39 = *(v0 + 816);

      v3 = sub_10000B3A8(v39, &unk_1016B6E10, &qword_1013BD0A8);
      if (!v9)
      {
        goto LABEL_3;
      }
    }

    v42 = *(v0 + 672);
    v43 = *(v42 + 16);
    v44 = _swiftEmptyArrayStorage;
    if (v43)
    {
      *(v0 + 624) = _swiftEmptyArrayStorage;
      sub_10112510C(0, v43, 0);
      v44 = *(v0 + 624);
      v154 = sub_1000BC4D4(&unk_1016B6DF0, &qword_1013DB280);
      v45 = v42 + ((*(v154[-1].isa + 80) + 32) & ~*(v154[-1].isa + 80));
      v152 = *(v154[-1].isa + 9);
      v46 = v170;
      do
      {
        v165 = v43;
        v168 = v44;
        v47 = *(v0 + 728);
        v48 = *(v0 + 704);
        v49 = *(v45 + *(v48 + 48));
        v162 = *(v45 + SLODWORD(v154[6].isa));
        (v157)(v47, v45, *(v0 + 680));
        *(v47 + *(v48 + 48)) = v49;
        v50 = qword_101694958;
        v51 = v49;
        if (v50 != -1)
        {
          swift_once();
        }

        v52 = *(v0 + 816);
        v53 = *(v0 + 808);
        v54 = *(v0 + 728);
        v55 = *(v0 + 720);
        v56 = type metadata accessor for Logger();
        sub_1000076D4(v56, qword_10177B368);
        sub_1000D2A70(v52, v53, &unk_1016B6E10, &qword_1013BD0A8);
        sub_1000D2A70(v54, v55, &unk_1016AA490, &unk_1013BD060);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();
        log = v57;
        v59 = os_log_type_enabled(v57, v58);
        v60 = *(v0 + 808);
        if (v59)
        {
          type = v58;
          v61 = *(v0 + 800);
          v62 = *(v0 + 768);
          v148 = *(v0 + 712);
          v149 = *(v0 + 720);
          v150 = *(v0 + 704);
          v63 = *(v0 + 696);
          v64 = *(v0 + 688);
          v65 = *(v0 + 680);
          v66 = swift_slowAlloc();
          v174[0] = swift_slowAlloc();
          *v66 = 141558787;
          *(v66 + 4) = 1752392040;
          *(v66 + 12) = 2081;
          sub_1000D2A70(v60, v61, &unk_1016B6E10, &qword_1013BD0A8);
          v67 = v61 + *(v62 + 48);
          v68 = *(v67 + 96);
          v70 = *(v67 + 64);
          v69 = *(v67 + 80);
          *(v0 + 376) = *(v67 + 48);
          *(v0 + 392) = v70;
          *(v0 + 408) = v69;
          *(v0 + 424) = v68;
          v72 = *(v67 + 16);
          v71 = *(v67 + 32);
          *v147 = *v67;
          *(v0 + 344) = v72;
          *(v0 + 360) = v71;
          sub_10000B3A8(v147, &unk_1016AA4C0, &unk_1013BD0B0);
          v170(v63, v61, v65);
          sub_10000B3A8(v60, &unk_1016B6E10, &qword_1013BD0A8);
          sub_1000096E8(&qword_101696930, &protocol conformance descriptor for UUID);
          v73 = dispatch thunk of CustomStringConvertible.description.getter();
          v75 = v74;
          v76 = *(v64 + 8);
          v76(v63, v65);
          v77 = sub_1000136BC(v73, v75, v174);

          *(v66 + 14) = v77;
          *(v66 + 22) = 2160;
          *(v66 + 24) = 1752392040;
          *(v66 + 32) = 2081;
          sub_1000D2A70(v149, v148, &unk_1016AA490, &unk_1013BD060);

          v170(v63, v148, v65);
          v78 = dispatch thunk of CustomStringConvertible.description.getter();
          v80 = v79;
          v76(v63, v65);
          sub_10000B3A8(v149, &unk_1016AA490, &unk_1013BD060);
          v81 = sub_1000136BC(v78, v80, v174);

          *(v66 + 34) = v81;
          _os_log_impl(&_mh_execute_header, log, type, "Received device event update for subscription: %{private,mask.hash}s, beaconID: %{private,mask.hash}s.", v66, 0x2Au);
          swift_arrayDestroy();

          v46 = v170;
        }

        else
        {
          v82 = *(v0 + 720);
          sub_10000B3A8(*(v0 + 808), &unk_1016B6E10, &qword_1013BD0A8);

          sub_10000B3A8(v82, &unk_1016AA490, &unk_1013BD060);
        }

        v83 = *(v0 + 760);
        v84 = *(v0 + 712);
        v85 = *(v0 + 704);
        v86 = *(v0 + 680);
        v87 = *(*(v0 + 736) + 48);
        sub_1000D2AD8(*(v0 + 728), v84, &unk_1016AA490, &unk_1013BD060);

        v46(v83, v84, v86);
        *(v83 + v87) = v162;
        v44 = v168;
        *(v0 + 624) = v168;
        v89 = v168[2];
        v88 = v168[3];
        v90 = v162;
        if (v89 >= v88 >> 1)
        {
          sub_10112510C((v88 > 1), v89 + 1, 1);
          v44 = *(v0 + 624);
        }

        v91 = *(v0 + 760);
        v92 = *(v0 + 744);
        v44[2] = v89 + 1;
        sub_1000D2AD8(v91, v44 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v89, &qword_10169F030, &qword_10139FE18);
        v45 += v152;
        v43 = v165 - 1;
      }

      while (v165 != 1);
    }

    v93 = *(v173 + 16);
    if (v93)
    {
      *(v0 + 632) = _swiftEmptyArrayStorage;
      sub_10112510C(0, v93, 0);
      v94 = 0;
      v95 = *(v0 + 632);
      v3 = v173 + 32;
      v159 = v93;
      v169 = v44;
      while (v94 < *(v173 + 16))
      {
        v166 = v3;
        sub_1000D2A70(v3, v0 + 528, &qword_1016B6E20, &unk_10138CE00);
        v163 = *(v0 + 576);
        if (qword_101694958 != -1)
        {
          swift_once();
        }

        v96 = *(v0 + 816);
        v97 = *(v0 + 792);
        v98 = type metadata accessor for Logger();
        sub_1000076D4(v98, qword_10177B368);
        sub_1000D2A70(v96, v97, &unk_1016B6E10, &qword_1013BD0A8);
        sub_10001F280(v0 + 528, v0 + 584);
        v99 = Logger.logObject.getter();
        v100 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = *(v0 + 800);
          v155 = v99;
          v102 = *(v0 + 792);
          v103 = *(v0 + 768);
          v153 = v100;
          v104 = *(v0 + 696);
          loga = *(v0 + 688);
          v105 = *(v0 + 680);
          v106 = swift_slowAlloc();
          v174[0] = swift_slowAlloc();
          *v106 = 141558787;
          *(v106 + 4) = 1752392040;
          *(v106 + 12) = 2081;
          sub_1000D2A70(v102, v101, &unk_1016B6E10, &qword_1013BD0A8);
          v107 = v101 + *(v103 + 48);
          v108 = *(v107 + 96);
          v110 = *(v107 + 64);
          v109 = *(v107 + 80);
          *(v0 + 272) = *(v107 + 48);
          *(v0 + 288) = v110;
          *(v0 + 304) = v109;
          *(v0 + 320) = v108;
          v112 = *(v107 + 16);
          v111 = *(v107 + 32);
          *(v0 + 224) = *v107;
          *(v0 + 240) = v112;
          *(v0 + 256) = v111;
          sub_10000B3A8(v0 + 224, &unk_1016AA4C0, &unk_1013BD0B0);
          v170(v104, v101, v105);
          sub_10000B3A8(v102, &unk_1016B6E10, &qword_1013BD0A8);
          sub_1000096E8(&qword_101696930, &protocol conformance descriptor for UUID);
          v113 = dispatch thunk of CustomStringConvertible.description.getter();
          v115 = v114;
          v158 = v95;
          isa = loga[1].isa;
          isa(v104, v105);
          v117 = sub_1000136BC(v113, v115, v174);

          *(v106 + 14) = v117;
          *(v106 + 22) = 2160;
          *(v106 + 24) = 1752392040;
          *(v106 + 32) = 2081;
          v118 = *(v0 + 608);
          v119 = *(v0 + 616);
          sub_1000035D0((v0 + 584), v118);
          (*(v119 + 8))(v118, v119);
          v120 = dispatch thunk of CustomStringConvertible.description.getter();
          v122 = v121;
          v123 = v105;
          v44 = v169;
          isa(v104, v123);
          v95 = v158;
          sub_100007BAC((v0 + 584));
          v124 = sub_1000136BC(v120, v122, v174);

          *(v106 + 34) = v124;
          _os_log_impl(&_mh_execute_header, v155, v153, "Received device event update for subscription: %{private,mask.hash}s, beaconGroupID: %{private,mask.hash}s.", v106, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {
          sub_10000B3A8(*(v0 + 792), &unk_1016B6E10, &qword_1013BD0A8);

          sub_100007BAC((v0 + 584));
        }

        v125 = *(v0 + 752);
        v126 = *(*(v0 + 736) + 48);
        v127 = *(v0 + 552);
        v128 = *(v0 + 560);
        sub_1000035D0((v0 + 528), v127);
        (*(v128 + 8))(v127, v128);
        *(v125 + v126) = v163;
        v129 = v163;
        sub_10000B3A8(v0 + 528, &qword_1016B6E20, &unk_10138CE00);
        *(v0 + 632) = v95;
        v131 = v95[2];
        v130 = v95[3];
        if (v131 >= v130 >> 1)
        {
          sub_10112510C((v130 > 1), v131 + 1, 1);
          v95 = *(v0 + 632);
        }

        v132 = *(v0 + 752);
        v133 = *(v0 + 744);
        ++v94;
        v95[2] = v131 + 1;
        sub_1000D2AD8(v132, v95 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v131, &qword_10169F030, &qword_10139FE18);
        v3 = v166 + 56;
        if (v159 == v94)
        {

          goto LABEL_37;
        }
      }

LABEL_48:
      __break(1u);
      return unsafeBlocking<A>(_:)(v3, v4, v5, v6);
    }

    v95 = _swiftEmptyArrayStorage;
LABEL_37:
    v174[0] = v44;
    sub_10039A558(v95);
    if (*(v174[0] + 16))
    {
      sub_1000BC4D4(&unk_1016C31E0, &unk_1013DB2B0);
      v134 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v134 = _swiftEmptyDictionarySingleton;
    }

    *(v0 + 640) = v134;

    sub_100B88A90(v135, 1, (v0 + 640));
    *(v0 + 848) = v156;
    if (!v156)
    {
      v136 = *(v0 + 816);
      v137 = *(v0 + 800);
      v138 = *(v0 + 784);
      v139 = *(v0 + 776);

      v140 = objc_allocWithZone(SPDeviceEventFetchResult);
      sub_100B8A2E0();
      sub_1000096E8(&qword_1016967B0, &protocol conformance descriptor for UUID);
      v141 = Dictionary._bridgeToObjectiveC()().super.isa;

      v142 = [v140 initWithResults:v141];
      *(v0 + 856) = v142;

      sub_1000D2A70(v136, v137, &unk_1016B6E10, &qword_1013BD0A8);
      v143 = (*(v139 + 80) + 16) & ~*(v139 + 80);
      v144 = swift_allocObject();
      *(v0 + 864) = v144;
      sub_1000D2AD8(v137, v144 + v143, &unk_1016B6E10, &qword_1013BD0A8);
      *(v144 + ((v138 + v143 + 7) & 0xFFFFFFFFFFFFFFF8)) = v142;
      v145 = v142;
      v146 = swift_task_alloc();
      *(v0 + 872) = v146;
      v6 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
      *v146 = v0;
      v146[1] = sub_100B87704;
      v4 = sub_100B8A32C;
      v3 = v0 + 113;
      v5 = v144;

      return unsafeBlocking<A>(_:)(v3, v4, v5, v6);
    }

    return swift_unexpectedError();
  }

  else
  {
    while (1)
    {
LABEL_3:
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v11 >= (((1 << *(v0 + 115)) + 63) >> 6))
      {
        break;
      }

      v10 = *(v0 + 648);
      v9 = *(v10 + 8 * v11 + 64);
      ++v8;
      if (v9)
      {
        v156 = v7;
        v8 = v11;
        goto LABEL_7;
      }
    }

    v40 = *(v0 + 8);

    return v40();
  }
}

BOOL sub_100B88920(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_1000D2A70(a1, &v10 - v5, &unk_1016B6E10, &qword_1013BD0A8);

  XPCSession.proxy.getter();

  v7 = v11;
  if (v11)
  {
    [v11 receivedUpdatedDeviceEvents:a2];
    swift_unknownObjectRelease();
  }

  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v6, v8);
  return v7 == 0;
}

uint64_t sub_100B88A90(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_10169F030, &qword_10139FE18);
  v12 = __chkstk_darwin(v11);
  v15 = v55 - v14;
  v60 = *(a1 + 16);
  if (!v60)
  {
  }

  v55[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v59 = *(v13 + 72);
  v61 = a1;
  sub_1000D2A70(a1 + v17, v55 - v14, &qword_10169F030, &qword_10139FE18);
  v56 = v8;
  v62 = *(v8 + 32);
  v63 = v7;
  v62(v10, v15, v7);
  v58 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_1000210EC(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_100FF2068(v25, a2 & 1);
    v20 = sub_1000210EC(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v32 = v20;
  sub_10100B140();
  v20 = v32;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v66 = v28;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v29 = swift_dynamicCast();
    v30 = v56;
    if ((v29 & 1) == 0)
    {

      (*(v30 + 8))(v10, v63);
    }

    goto LABEL_26;
  }

LABEL_12:
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v57 = *(v56 + 72);
  v35 = v20;
  v62((v34 + v57 * v20), v10, v63);
  *(v33[7] + 8 * v35) = v18;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v61;
    if (v60 == 1)
    {
    }

    v39 = v61 + v59 + v17;
    v40 = 1;
    while (v40 < *(v38 + 16))
    {
      sub_1000D2A70(v39, v15, &qword_10169F030, &qword_10139FE18);
      v62(v10, v15, v63);
      v18 = *&v15[v58];
      v41 = *a3;
      v42 = sub_1000210EC(v10);
      v44 = v41[2];
      v45 = (v43 & 1) == 0;
      v24 = __OFADD__(v44, v45);
      v46 = v44 + v45;
      if (v24)
      {
        goto LABEL_23;
      }

      v47 = v43;
      if (v41[3] < v46)
      {
        sub_100FF2068(v46, 1);
        v42 = sub_1000210EC(v10);
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v47)
      {
        goto LABEL_9;
      }

      v49 = *a3;
      *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      v50 = v42;
      v62((v49[6] + v57 * v42), v10, v63);
      *(v49[7] + 8 * v50) = v18;
      v51 = v49[2];
      v24 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v49[2] = v52;
      v39 += v59;
      v38 = v61;
      if (v60 == v40)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v53._object = 0x8000000101360AB0;
  v53._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v53);
  _print_unlocked<A, B>(_:_:)();
  v54._countAndFlagsBits = 39;
  v54._object = 0xE100000000000000;
  String.append(_:)(v54);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100B88FD4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 152) = a5;
  *(v6 + 160) = a6;
  *(v6 + 264) = a3;
  *(v6 + 136) = a1;
  *(v6 + 144) = a4;
  v11 = type metadata accessor for UUID();
  *(v6 + 168) = v11;
  v12 = *(v11 - 8);
  *(v6 + 176) = v12;
  *(v6 + 184) = *(v12 + 64);
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  v13 = sub_1000280DC((v6 + 16));
  (*(*(a5 - 8) + 16))(v13, a2, a5);
  v14 = swift_task_alloc();
  *(v6 + 208) = v14;
  *v14 = v6;
  v14[1] = sub_100B8914C;

  return sub_100B89C0C(v13, a4, a5, a6);
}

uint64_t sub_100B8914C(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_100B8924C, 0, 0);
}

uint64_t sub_100B8924C()
{
  v51 = v0;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B368);
  sub_10001F280(v0 + 16, v0 + 56);
  swift_bridgeObjectRetain_n();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v4, v5))
  {
    swift_bridgeObjectRelease_n();

    sub_100007BAC((v0 + 56));
    goto LABEL_22;
  }

  v6 = *(v0 + 200);
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v11 = *(v0 + 136);
  v12 = swift_slowAlloc();
  v50 = swift_slowAlloc();
  *v12 = 141558787;
  *(v12 + 4) = 1752392040;
  *(v12 + 12) = 2081;
  sub_1000035D0((v0 + 56), *(v0 + 80));
  (*(*(*(v9 + 8) + 8) + 32))(v10);
  sub_1000096E8(&qword_101696930, &protocol conformance descriptor for UUID);
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  v15 = v14;
  (*(v7 + 8))(v6, v8);
  sub_100007BAC((v0 + 56));
  v16 = sub_1000136BC(v13, v15, &v50);

  *(v12 + 14) = v16;
  *(v12 + 22) = 2082;
  v17 = [v11 source];
  if (v17 > 2)
  {
    if (v17 <= 4)
    {
      v18 = 0xE700000000000000;
      if (v17 == 3)
      {
        v19 = 1953784110;
      }

      else
      {
        v19 = 1952801838;
      }

      v20 = v19 | 0x68636100000000;
      goto LABEL_21;
    }

    if (v17 == 5)
    {
      v18 = 0xE500000000000000;
      v20 = 0x726961702ELL;
      goto LABEL_21;
    }

    if (v17 == 6)
    {
      v18 = 0xEF79627261654E64;
      v20 = 0x657463657465642ELL;
      goto LABEL_21;
    }

LABEL_16:
    v18 = 0xE800000000000000;
    v20 = 0x6E776F6E6B6E752ELL;
    goto LABEL_21;
  }

  if (!v17)
  {
    goto LABEL_16;
  }

  if (v17 == 1)
  {
    v18 = 0xE800000000000000;
    v20 = 0x7463656E6E6F632ELL;
    goto LABEL_21;
  }

  if (v17 != 2)
  {
    goto LABEL_16;
  }

  v18 = 0xEB00000000746365;
  v20 = 0x6E6E6F637369642ELL;
LABEL_21:
  v21 = *(v0 + 216);
  v22 = sub_1000136BC(v20, v18, &v50);

  *(v12 + 24) = v22;
  *(v12 + 32) = 2048;
  v23 = *(v21 + 16);

  *(v12 + 34) = v23;

  _os_log_impl(&_mh_execute_header, v4, v5, "Update device event for beacon: %{private,mask.hash}s, source: %{public}s,\nclientBeaconIdentifiers %ld].", v12, 0x2Au);
  swift_arrayDestroy();

LABEL_22:
  v24 = sub_10000954C(*(v0 + 216));
  *(v0 + 224) = v24;

  v25 = *(v24 + 32);
  *(v0 + 265) = v25;
  v26 = -1;
  v27 = -1 << v25;
  if (-v27 < 64)
  {
    v26 = ~(-1 << -v27);
  }

  v28 = v26 & *(v24 + 56);
  if (v28)
  {
    v29 = 0;
    v30 = *(v0 + 224);
LABEL_29:
    *(v0 + 232) = v28;
    *(v0 + 240) = v29;
    v33 = *(v0 + 192);
    v34 = *(v0 + 200);
    v35 = *(v0 + 176);
    v36 = *(v0 + 184);
    v37 = *(v0 + 168);
    v49 = *(v0 + 264);
    v38 = *(v0 + 144);
    v48 = *(v0 + 136);
    (*(v35 + 16))(v33, *(v30 + 48) + *(v35 + 72) * (__clz(__rbit64(v28)) | (v29 << 6)), v37);
    v39 = *(v35 + 32);
    v39(v34, v33, v37);
    sub_10001F280(v0 + 16, v0 + 96);
    v40 = (*(v35 + 80) + 24) & ~*(v35 + 80);
    v41 = (v36 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    *(v0 + 248) = v42;
    *(v42 + 16) = v38;
    v39(v42 + v40, v34, v37);
    sub_100031694((v0 + 96), v42 + v41);
    v43 = v42 + ((v41 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v43 = v48;
    *(v43 + 8) = v49;
    v44 = v48;

    v45 = swift_task_alloc();
    *(v0 + 256) = v45;
    *v45 = v0;
    v45[1] = sub_100B89868;

    return unsafeBlocking<A>(_:)(v45, sub_100B8A0AC, v42, &type metadata for () + 1);
  }

  else
  {
    v31 = 0;
    v32 = ((63 - v27) >> 6) - 1;
    v30 = *(v0 + 224);
    while (v32 != v31)
    {
      v29 = v31 + 1;
      v28 = *(v30 + 8 * v31++ + 64);
      if (v28)
      {
        goto LABEL_29;
      }
    }

    sub_100007BAC((v0 + 16));

    v46 = *(v0 + 8);

    return v46();
  }
}

uint64_t sub_100B89868()
{

  return _swift_task_switch(sub_100B89980, 0, 0);
}

uint64_t sub_100B89980(void *a1, uint64_t (*a2)(), uint64_t a3, void *a4)
{
  v5 = *(v4 + 240);
  v6 = (*(v4 + 232) - 1) & *(v4 + 232);
  if (v6)
  {
    a1 = *(v4 + 224);
LABEL_7:
    *(v4 + 232) = v6;
    *(v4 + 240) = v5;
    v8 = *(v4 + 192);
    v9 = *(v4 + 200);
    v10 = *(v4 + 176);
    v11 = *(v4 + 184);
    v12 = *(v4 + 168);
    v23 = *(v4 + 264);
    v13 = *(v4 + 144);
    v22 = *(v4 + 136);
    (*(v10 + 16))(v8, a1[6] + *(v10 + 72) * (__clz(__rbit64(v6)) | (v5 << 6)), v12, a4);
    v14 = *(v10 + 32);
    v14(v9, v8, v12);
    sub_10001F280(v4 + 16, v4 + 96);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    *(v4 + 248) = v17;
    *(v17 + 16) = v13;
    v14(v17 + v15, v9, v12);
    sub_100031694((v4 + 96), v17 + v16);
    v18 = v17 + ((v16 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v18 = v22;
    *(v18 + 8) = v23;
    v19 = v22;

    a1 = swift_task_alloc();
    *(v4 + 256) = a1;
    *a1 = v4;
    a1[1] = sub_100B89868;
    a2 = sub_100B8A0AC;
    a4 = &type metadata for () + 1;
    a3 = v17;

    return unsafeBlocking<A>(_:)(a1, a2, a3, a4);
  }

  else
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return unsafeBlocking<A>(_:)(a1, a2, a3, a4);
      }

      a1 = *(v4 + 224);
      if (v7 >= (((1 << *(v4 + 265)) + 63) >> 6))
      {
        break;
      }

      v6 = a1[v7 + 7];
      ++v5;
      if (v6)
      {
        v5 = v7;
        goto LABEL_7;
      }
    }

    sub_100007BAC((v4 + 16));

    v20 = *(v4 + 8);

    return v20();
  }
}

uint64_t sub_100B89C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[7] = a2;
  v7 = type metadata accessor for UUID();
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();
  v4[5] = a3;
  v4[6] = a4;
  v4[13] = sub_1000280DC(v4 + 2);
  (*(*(a3 - 8) + 16))();

  return _swift_task_switch(sub_100B89D24, 0, 0);
}

uint64_t sub_100B89D24()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  *(v0 + 112) = *(v1 + 72);
  *(v0 + 136) = *(v1 + 80);
  v4 = swift_allocObject();
  *(v0 + 120) = v4;
  *(v4 + 16) = xmmword_101385D80;
  (*(*(*(v2 + 8) + 8) + 32))(v3);
  if ((*(v2 + 88))(v3, v2))
  {
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    *v5 = v0;
    v5[1] = sub_100B89ED4;
    v6 = *(v0 + 96);

    return sub_1007F18CC(v6, v0 + 16);
  }

  else
  {
    sub_100007BAC((v0 + 16));

    v8 = *(v0 + 8);

    return v8(v4);
  }
}

uint64_t sub_100B89ED4()
{

  return _swift_task_switch(sub_100B89FD0, 0, 0);
}

uint64_t sub_100B89FD0()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = (*(v0 + 136) + 32) & ~*(v0 + 136);
  v6 = sub_100A5BFE0(1, 2, 1, *(v0 + 120));
  *(v6 + 2) = 2;
  (*(v3 + 32))(&v6[v1 + v5], v2, v4);
  sub_100007BAC((v0 + 16));

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_100B8A0AC()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_100B85BDC(v4, v0 + v2, (v0 + v3), v6, v7);
}

uint64_t sub_100B8A160()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100014650;

  return sub_100B861F4(v2, v3, v4, v7, v5, v6);
}

uint64_t sub_100B8A224()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100014650;

  return sub_100B863CC(v2, v3, v6, v4, v5);
}

unint64_t sub_100B8A2E0()
{
  result = qword_1016AA570;
  if (!qword_1016AA570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1016AA570);
  }

  return result;
}

BOOL sub_100B8A32C@<W0>(_BYTE *a1@<X8>)
{
  v3 = *(sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  result = sub_100B88920(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
  *a1 = result;
  return result;
}

Swift::Int sub_100B8A400()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1013DB378[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100B8A488(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_1013DB378[v2]);
  return Hasher._finalize()();
}

int *sub_100B8A4D4@<X0>(int *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result == 21760)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 22034)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 8233)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_100B8A52C()
{
  result = qword_1016B6E28;
  if (!qword_1016B6E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6E28);
  }

  return result;
}

uint64_t sub_100B8A580(unint64_t a1)
{
  if (HIDWORD(a1))
  {
    return 3;
  }

  if (a1 == 8233)
  {
    return 2;
  }

  if (a1 == 21760)
  {
    return 0;
  }

  if (a1 != 22034)
  {
    return 3;
  }

  return 1;
}

uint64_t sub_100B8A5CC(uint64_t a1, void *a2)
{
  v75 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v70 = *(v75 - 8);
  v4 = __chkstk_darwin(v75);
  v83 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v74 = &v66 - v6;
  v84 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v7 = __chkstk_darwin(v84);
  v73 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v72 = &v66 - v10;
  v11 = __chkstk_darwin(v9);
  v71 = (&v66 - v12);
  v13 = __chkstk_darwin(v11);
  v15 = (&v66 - v14);
  __chkstk_darwin(v13);
  v82 = (&v66 - v16);
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;
  v77 = a1;

  v22 = 0;
  v67 = v21;
  v68 = a1 + 64;
  v76 = a2;
  v69 = v15;
  while (v20)
  {
LABEL_11:
    v25 = __clz(__rbit64(v20)) | (v22 << 6);
    v26 = *(v77 + 56);
    v27 = (*(v77 + 48) + 16 * v25);
    v29 = v27[1];
    v78 = *v27;
    v28 = v78;
    v30 = (type metadata accessor for MultipartAccessoryPairingInfo(0) - 8);
    v31 = v26 + *(*v30 + 72) * v25;
    v32 = v82;
    sub_100B98760(v31, v82 + *(v84 + 48), type metadata accessor for MultipartAccessoryPairingInfo);
    *v32 = v28;
    v32[1] = v29;
    sub_1000D2A70(v32, v15, &qword_101696E38, &qword_1013D8510);
    v33 = *v15;
    v80 = v15[1];
    v81 = v33;
    v34 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
    v35 = v74;
    v79 = &v74[*(v34 + 48)];
    v36 = v71;
    sub_1000D2A70(v32, v71, &qword_101696E38, &qword_1013D8510);
    v38 = *v36;
    v37 = v36[1];
    sub_100017D5C(v78, v29);
    sub_100016590(v38, v37);
    v39 = v84;
    v40 = v36 + *(v84 + 48);
    sub_1000D2A70(v40 + v30[8], v35, &qword_1016A40D0, &unk_10138BE70);
    sub_100B986D4(v40, type metadata accessor for MultipartAccessoryPairingInfo);
    v41 = v72;
    sub_1000D2A70(v32, v72, &qword_101696E38, &qword_1013D8510);
    sub_100016590(*v41, *(v41 + 8));
    v42 = *(v39 + 48);
    LOBYTE(v40) = *(v41 + v42);
    sub_100B986D4(v41 + v42, type metadata accessor for MultipartAccessoryPairingInfo);
    v43 = v73;
    sub_1000D2A70(v32, v73, &qword_101696E38, &qword_1013D8510);
    sub_100016590(*v43, *(v43 + 8));
    v44 = v43 + *(v39 + 48);
    LOBYTE(v30) = *(v44 + v30[9]);
    sub_100B986D4(v44, type metadata accessor for MultipartAccessoryPairingInfo);
    v45 = v79;
    *v79 = v40;
    v45[1] = 0;
    v45[2] = v30;
    swift_storeEnumTagMultiPayload();
    v46 = v35;
    v47 = v80;
    sub_100B987C8(v46, v83, type metadata accessor for OwnedBeaconGroup.PairingState);
    v48 = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = *v48;
    v50 = v85;
    v51 = v81;
    v53 = sub_100771E30(v81, v47);
    v54 = v50[2];
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      goto LABEL_24;
    }

    v57 = v52;
    if (v50[3] >= v56)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v60 = v85;
        if (v52)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_10100586C();
        v60 = v85;
        if (v57)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_100FE71DC(v56, isUniquelyReferenced_nonNull_native);
      v58 = sub_100771E30(v51, v47);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_26;
      }

      v53 = v58;
      v60 = v85;
      if (v57)
      {
LABEL_4:
        sub_100101D24(v83, v60[7] + *(v70 + 72) * v53);
        sub_100016590(v51, v47);
        goto LABEL_5;
      }
    }

    v60[(v53 >> 6) + 8] |= 1 << v53;
    v61 = (v60[6] + 16 * v53);
    *v61 = v51;
    v61[1] = v47;
    sub_100B987C8(v83, v60[7] + *(v70 + 72) * v53, type metadata accessor for OwnedBeaconGroup.PairingState);
    v62 = v60[2];
    v63 = __OFADD__(v62, 1);
    v64 = v62 + 1;
    if (v63)
    {
      goto LABEL_25;
    }

    v60[2] = v64;
LABEL_5:
    v20 &= v20 - 1;
    v23 = *(v84 + 48);
    *v48 = v60;
    v15 = v69;
    sub_100B986D4(v69 + v23, type metadata accessor for MultipartAccessoryPairingInfo);
    sub_10000B3A8(v82, &qword_101696E38, &qword_1013D8510);
    v21 = v67;
    v17 = v68;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
    }

    v20 = *(v17 + 8 * v24);
    ++v22;
    if (v20)
    {
      v22 = v24;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100B8ABC8(uint64_t a1)
{
  v49 = sub_1000BC4D4(&qword_101696E38, &qword_1013D8510);
  v3 = __chkstk_darwin(v49);
  v48 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __chkstk_darwin(v3);
  v47 = (&v41 - v6);
  v7 = __chkstk_darwin(v5);
  v46 = (&v41 - v8);
  __chkstk_darwin(v7);
  v45 = (&v41 - v9);
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v41 = v1;
  v56 = _swiftEmptyArrayStorage;
  sub_101123CB8(0, v10, 0);
  v11 = v56;
  v12 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v14 = result;
  v15 = 0;
  v55 = *(a1 + 36);
  v42 = a1 + 72;
  v43 = v10;
  v44 = a1 + 64;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_22;
    }

    if (v55 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v51 = 1 << v14;
    v52 = v14 >> 6;
    v50 = v15;
    v17 = v49;
    v18 = *(v49 + 48);
    v19 = *(a1 + 56);
    v53 = *(*(a1 + 48) + 16 * v14);
    v20 = v45;
    *v45 = v53;
    v21 = type metadata accessor for MultipartAccessoryPairingInfo(0);
    sub_100B98760(v19 + *(*(v21 - 8) + 72) * v14, v20 + v18, type metadata accessor for MultipartAccessoryPairingInfo);
    v22 = *v20;
    v54 = v11;
    v23 = v46;
    *v46 = v22;
    sub_100B987C8(v20 + v18, v23 + *(v17 + 48), type metadata accessor for MultipartAccessoryPairingInfo);
    v24 = v47;
    sub_1000D2A70(v23, v47, &qword_101696E38, &qword_1013D8510);
    v25 = *(v17 + 48);
    v26 = v48;
    *v48 = *v24;
    sub_100B987C8(v24 + v25, v26 + v25, type metadata accessor for MultipartAccessoryPairingInfo);
    v27 = a1;
    v29 = *v26;
    v28 = v26[1];
    sub_100017D5C(v53, *(&v53 + 1));
    sub_100017D5C(v29, v28);
    sub_10000B3A8(v26, &qword_101696E38, &qword_1013D8510);
    v30 = v23;
    v11 = v54;
    result = sub_10000B3A8(v30, &qword_101696E38, &qword_1013D8510);
    v56 = v11;
    v32 = v11[2];
    v31 = v11[3];
    if (v32 >= v31 >> 1)
    {
      result = sub_101123CB8((v31 > 1), v32 + 1, 1);
      v11 = v56;
    }

    v11[2] = v32 + 1;
    v33 = &v11[2 * v32];
    v33[4] = v29;
    v33[5] = v28;
    v16 = 1 << *(v27 + 32);
    if (v14 >= v16)
    {
      goto LABEL_24;
    }

    a1 = v27;
    v12 = v44;
    v34 = *(v44 + 8 * v52);
    if ((v34 & v51) == 0)
    {
      goto LABEL_25;
    }

    if (v55 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v35 = v34 & (-2 << (v14 & 0x3F));
    if (v35)
    {
      v16 = __clz(__rbit64(v35)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v36 = v52 << 6;
      v37 = v52 + 1;
      v38 = (v42 + 8 * v52);
      while (v37 < (v16 + 63) >> 6)
      {
        v40 = *v38++;
        v39 = v40;
        v36 += 64;
        ++v37;
        if (v40)
        {
          result = sub_1000BB408(v14, v55, 0);
          v16 = __clz(__rbit64(v39)) + v36;
          goto LABEL_4;
        }
      }

      result = sub_1000BB408(v14, v55, 0);
    }

LABEL_4:
    v15 = v50 + 1;
    v14 = v16;
    if (v50 + 1 == v43)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_100B8AFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v125 = a7;
  v115 = a6;
  v114 = a5;
  v116 = a3;
  v117 = a4;
  v10 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v10 - 8);
  v119 = (&v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v113 - v13;
  v15 = type metadata accessor for AccessoryProductInfo(0);
  v121 = *(v15 - 8);
  __chkstk_darwin(v15);
  v122 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  __chkstk_darwin(v17 - 8);
  v19 = &v113 - v18;
  v20 = type metadata accessor for OwnedBeaconGroup(0);
  v21 = __chkstk_darwin(v20);
  v123 = (&v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v21);
  v25 = &v113 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v113 - v27;
  v120 = v29;
  __chkstk_darwin(v26);
  v129 = &v113 - v30;
  v126 = a1;
  v127 = a2;
  v31 = a2;
  v33 = v32;
  v124 = v7;
  sub_100AC57E4(a1, v31, v19);
  v118 = v33;
  v34 = *(v33 + 6);
  v132 = v20;
  v35 = v34(v19, 1, v20);
  if (v35 == 1)
  {
    sub_10000B3A8(v19, &unk_1016AF8B0, &unk_1013A0700);
    v36 = v125;
    v37 = *(v125 + 112);
    if (v37 >> 60 == 15)
    {
LABEL_5:
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_1000076D4(v40, qword_10177C418);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Missing product info to handle pairing lock error.", v43, 2u);
      }

      sub_100139CA0();
      swift_allocError();
      *v44 = 5;
      swift_willThrow();
      return;
    }

    v38 = *(v125 + 104);
    v39 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
    swift_beginAccess();
    sub_1000D2A70(v36 + v39, v14, &qword_101697268, &qword_101394FE0);
    if ((*(v121 + 6))(v14, 1, v15) == 1)
    {
      sub_10000B3A8(v14, &qword_101697268, &qword_101394FE0);
      goto LABEL_5;
    }

    v98 = v122;
    sub_100B987C8(v14, v122, type metadata accessor for AccessoryProductInfo);
    sub_10002E98C(v38, v37);
    v125 = v38;
    v99 = sub_100B98388(v38, v37, v98);
    v101 = v100;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v102 = type metadata accessor for Logger();
    sub_1000076D4(v102, qword_10177C418);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.info.getter();
    v105 = os_log_type_enabled(v103, v104);
    v57 = v129;
    v58 = v127;
    if (v105)
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&_mh_execute_header, v103, v104, "Creating new OwnedBeaconGroup.", v106, 2u);
    }

    v107 = v132;
    v108 = v132[7];
    v109 = type metadata accessor for MACAddress();
    (*(*(v109 - 8) + 16))(v57 + v108, v114, v109);
    UUID.init()();
    *v57 = xmmword_10138C660;
    *(v57 + 16) = v99;
    *(v57 + 24) = v101 & 1;
    v130[0] = _swiftEmptyDictionarySingleton;
    v110 = v128;
    sub_100B8A5CC(v115, v130);
    v128 = v110;
    sub_100006654(v125, v37);
    sub_100B986D4(v122, type metadata accessor for AccessoryProductInfo);
    *(v57 + v107[8]) = 1;
    v111 = (v57 + v107[9]);
    v112 = v117;
    *v111 = v116;
    v111[1] = v112;
    *(v57 + v107[10]) = v130[0];

    v56 = v126;
  }

  else
  {
    sub_100B987C8(v19, v28, type metadata accessor for OwnedBeaconGroup);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    v46 = sub_1000076D4(v45, qword_10177C418);
    sub_100B98760(v28, v25, type metadata accessor for OwnedBeaconGroup);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v131[0] = v50;
      *v49 = 141558275;
      *(v49 + 4) = 1752392040;
      *(v49 + 12) = 2081;
      type metadata accessor for UUID();
      LODWORD(v125) = v35;
      v51 = v46;
      sub_1000196A8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      sub_100B986D4(v25, type metadata accessor for OwnedBeaconGroup);
      v55 = sub_1000136BC(v52, v54, v131);
      v46 = v51;
      v35 = v125;

      *(v49 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v47, v48, "Found existing OwnedBeaconGroup %{private,mask.hash}s", v49, 0x16u);
      sub_100007BAC(v50);
    }

    else
    {

      sub_100B986D4(v25, type metadata accessor for OwnedBeaconGroup);
    }

    v56 = v126;
    sub_1005160CC(v46);
    v57 = v129;
    sub_100B987C8(v28, v129, type metadata accessor for OwnedBeaconGroup);
    v58 = v127;
  }

  v59 = swift_allocBox();
  v61 = v60;
  sub_100B98760(v57, v60, type metadata accessor for OwnedBeaconGroup);
  if (sub_100521E14(v56, v58))
  {
    v62 = dispatch_group_create();
    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    v64 = (v63 + 16);
    dispatch_group_enter(v62);
    if (v35 == 1)
    {
      v65 = v61;
      v66 = v123;
      sub_100B98760(v65, v123, type metadata accessor for OwnedBeaconGroup);
      v67 = v62;

      sub_100B08178(v66, 0, v124, v67, v63);

      sub_100B986D4(v66, type metadata accessor for OwnedBeaconGroup);
    }

    else
    {
      v77 = swift_allocObject();
      *(v77 + 16) = v62;
      *(v77 + 24) = v63;
      v122 = v77;

      v78 = v62;
      v127 = v63;

      v79 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v125 = v63 + 16;
      v126 = v62;
      v132 = v59;
      v80 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_101385D80;
      *(v81 + 56) = &type metadata for String;
      *(v81 + 64) = sub_100008C00();
      *(v81 + 32) = 0x65736C6166;
      *(v81 + 40) = 0xE500000000000000;
      os_log(_:dso:log:_:_:)(v79, &_mh_execute_header, v80, "Modify record. Disk First? (%@)", 31, 2, v81);

      v82 = objc_autoreleasePoolPush();
      v83 = v128;
      sub_1011218E0(v57);
      if (v83)
      {
        objc_autoreleasePoolPop(v82);
        __break(1u);
        return;
      }

      v85 = v84;
      objc_autoreleasePoolPop(v82);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v128 = 0;
      v121 = type metadata accessor for OwnedBeaconGroup;
      v86 = v123;
      sub_100B98760(v57, v123, type metadata accessor for OwnedBeaconGroup);
      v87 = v118[80];
      v88 = v120;
      v89 = swift_allocObject();
      v90 = v132;
      *(v89 + 16) = sub_100B98CA0;
      *(v89 + 24) = v90;
      v119 = type metadata accessor for OwnedBeaconGroup;
      sub_100B987C8(v86, v89 + ((v87 + 32) & ~v87), type metadata accessor for OwnedBeaconGroup);

      sub_100FDCA40(v85, sub_100B98CA4, v89);

      v91 = swift_allocObject();
      v118 = v85;
      v92 = v122;
      *(v91 + 16) = sub_100B98A9C;
      *(v91 + 24) = v92;

      Future.addFailure(block:)();

      sub_100B98760(v57, v86, v121);
      v93 = (v87 + 16) & ~v87;
      v94 = (v88 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      sub_100B987C8(v86, v95 + v93, v119);
      *(v95 + v94) = v124;
      v96 = (v95 + ((v94 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v96 = sub_100B98A9C;
      v96[1] = v92;

      Future.addSuccess(block:)();

      v62 = v126;
      v64 = v125;
    }

    OS_dispatch_group.wait()();
    swift_beginAccess();
    if (*v64)
    {
      sub_100139CA0();
      swift_allocError();
      *v97 = 14;
      swift_willThrow();

      sub_100B986D4(v129, type metadata accessor for OwnedBeaconGroup);
    }

    else
    {
      sub_100B986D4(v129, type metadata accessor for OwnedBeaconGroup);
    }
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_1000076D4(v68, qword_10177C418);
    sub_100017D5C(v56, v58);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    sub_100016590(v56, v58);
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v130[0] = v72;
      *v71 = 136315138;
      static String.Encoding.utf8.getter();
      v73 = String.init(data:encoding:)();
      if (!v74)
      {
        v73 = Data.hexString.getter();
      }

      v75 = sub_1000136BC(v73, v74, v130);

      *(v71 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v69, v70, "Unable to set pairing locked state for %s", v71, 0xCu);
      sub_100007BAC(v72);
    }

    sub_100139CA0();
    swift_allocError();
    *v76 = 2;
    swift_willThrow();
    sub_100B986D4(v57, type metadata accessor for OwnedBeaconGroup);
  }
}