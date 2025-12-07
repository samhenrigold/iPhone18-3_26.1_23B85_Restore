void sub_1000FBD78(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10004B564(&qword_1005AB028, &qword_1004C4C20);
  __chkstk_darwin(v6);
  v8 = (&v23 - v7);
  sub_100005F04(a1, &v23 - v7, &qword_1005AB028, &qword_1004C4C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFB98);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v9;
      v24 = v14;
      *v13 = 136315138;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v15 = String.init<A>(describing:)();
      v17 = sub_10000D01C(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to save new sharedKeyRecord %s", v13, 0xCu);
      sub_100004984(v14);
    }

    else
    {
    }
  }

  else
  {
    sub_100002CE0(v8, &qword_1005AB028, &qword_1004C4C20);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A6F0(v18, qword_1005DFB98);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_10000D01C(a2, a3, &v24);
      _os_log_impl(&_mh_execute_header, v19, v20, "Created new sharedKeyRecord awaiting keys for %s", v21, 0xCu);
      sub_100004984(v22);
    }
  }
}

uint64_t sub_1000FC0C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_10004B564(&qword_1005AB018, &unk_1004DD720);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v32 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  __chkstk_darwin(v14 - 8);
  v16 = &v31 - v15;
  static String.Encoding.utf8.getter();
  v17 = String.data(using:allowLossyConversion:)();
  v19 = v18;
  (*(v11 + 8))(v13, v10);
  if (v19 >> 60 == 15)
  {
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    sub_100002CE0(v16, &qword_1005A96E0, &qword_1004C2A80);
    v21 = a2;
  }

  else
  {
    v34[0] = v17;
    v34[1] = v19;
    sub_1000CA210();
    DataProtocol.stableUUID.getter();
    sub_10001A794(v17, v19);
    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
    sub_100002CE0(v16, &qword_1005A96E0, &qword_1004C2A80);
    sub_1004AD358(a1, a2);
    v23 = v32;
    if ((*(v31 + 48))(v7, 1, v32) != 1)
    {
      sub_100106DDC(v7, v9, type metadata accessor for SecureLocationsCachedSharedKey);
      sub_100005F04(&v9[*(v23 + 44)], v33, &unk_1005AE5B0, &qword_1004C32F0);
      return sub_100106E44(v9, type metadata accessor for SecureLocationsCachedSharedKey);
    }

    v21 = a2;
    sub_100002CE0(v7, &qword_1005AB018, &unk_1004DD720);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000A6F0(v24, qword_1005DFB98);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v34[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_10000D01C(a1, v21, v34);
    _os_log_impl(&_mh_execute_header, v25, v26, "Unable to get SecureLocationsCachedSharedKey for findMyId %s", v27, 0xCu);
    sub_100004984(v28);
  }

  v29 = type metadata accessor for Date();
  return (*(*(v29 - 8) + 56))(v33, 1, 1, v29);
}

void sub_1000FC5D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1))
{
  v79 = a3;
  v5 = type metadata accessor for DispatchTime();
  v88 = *(v5 - 8);
  v89 = v5;
  v6 = __chkstk_darwin(v5);
  v86 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v87 = v76 - v8;
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v9 - 8);
  v81 = v76 - v10;
  v11 = type metadata accessor for Date();
  v84 = *(v11 - 8);
  v85 = v11;
  v12 = __chkstk_darwin(v11);
  v76[1] = v13;
  v77 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = v76 - v14;
  v15 = sub_10004B564(&qword_1005AB018, &unk_1004DD720);
  __chkstk_darwin(v15 - 8);
  v17 = v76 - v16;
  v18 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v19 = *(v18 - 8);
  v90 = v18;
  v91 = v19;
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v78 = v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v80 = v76 - v23;
  __chkstk_darwin(v22);
  v83 = v76 - v24;
  v25 = type metadata accessor for String.Encoding();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  __chkstk_darwin(v29 - 8);
  v31 = v76 - v30;
  static String.Encoding.utf8.getter();
  v32 = a1;
  v33 = a2;
  v34 = String.data(using:allowLossyConversion:)();
  v36 = v35;
  (*(v26 + 8))(v28, v25);
  if (v36 >> 60 == 15)
  {
    v37 = type metadata accessor for UUID();
    (*(*(v37 - 8) + 56))(v31, 1, 1, v37);
    sub_100002CE0(v31, &qword_1005A96E0, &qword_1004C2A80);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000A6F0(v38, qword_1005DFB98);
    v39 = v33;

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = v32;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v94[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_10000D01C(v42, v39, v94);
      _os_log_impl(&_mh_execute_header, v40, v41, "Unable to create stableUUID from findMyId %s", v43, 0xCu);
      sub_100004984(v44);
    }
  }

  else
  {
    v94[0] = v34;
    v94[1] = v36;
    sub_1000CA210();
    DataProtocol.stableUUID.getter();
    sub_10001A794(v34, v36);
    v45 = type metadata accessor for UUID();
    (*(*(v45 - 8) + 56))(v31, 0, 1, v45);
    sub_100002CE0(v31, &qword_1005A96E0, &qword_1004C2A80);
    v93 = dispatch_group_create();
    dispatch_group_enter(v93);
    sub_1004AD358(v32, v33);
    if ((*(v91 + 48))(v17, 1, v90) == 1)
    {
      sub_100002CE0(v17, &qword_1005AB018, &unk_1004DD720);
    }

    else
    {
      v82 = type metadata accessor for SecureLocationsCachedSharedKey;
      v46 = v33;
      v47 = v83;
      v76[0] = v32;
      sub_100106DDC(v17, v83, type metadata accessor for SecureLocationsCachedSharedKey);
      v49 = v84;
      v48 = v85;
      v50 = *(v84 + 16);
      v51 = v79;
      v50(v92, v79, v85);
      v52 = v77;
      v50(v77, v51, v48);
      v53 = (*(v49 + 80) + 40) & ~*(v49 + 80);
      v54 = swift_allocObject();
      v55 = v76[0];
      *(v54 + 2) = v93;
      *(v54 + 3) = v55;
      *(v54 + 4) = v46;
      (*(v49 + 32))(&v54[v53], v52, v48);
      v56 = v80;
      v79 = type metadata accessor for SecureLocationsCachedSharedKey;
      sub_100106F1C(v47, v80, type metadata accessor for SecureLocationsCachedSharedKey);
      v57 = *(v90 + 44);
      v58 = v93;

      sub_100002CE0(v56 + v57, &unk_1005AE5B0, &qword_1004C32F0);
      v59 = v48;
      v50((v56 + v57), v92, v48);
      v60 = v84;
      (*(v84 + 56))(v56 + v57, 0, 1, v59);
      v61 = type metadata accessor for TaskPriority();
      v62 = v81;
      (*(*(v61 - 8) + 56))(v81, 1, 1, v61);
      v63 = v78;
      sub_100106F1C(v56, v78, type metadata accessor for SecureLocationsCachedSharedKey);
      v64 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v65 = swift_allocObject();
      *(v65 + 16) = 0;
      *(v65 + 24) = 0;
      sub_100106DDC(v63, v65 + v64, v82);
      v66 = (v65 + ((v20 + v64 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v66 = sub_100106EA4;
      v66[1] = v54;

      sub_1001D7F30(0, 0, v62, &unk_1004C4C18, v65);

      (*(v60 + 8))(v92, v85);
      v67 = v79;
      sub_100106E44(v83, v79);
      sub_100106E44(v56, v67);
    }

    v68 = v86;
    static DispatchTime.now()();
    v69 = v87;
    + infix(_:_:)();
    v70 = v89;
    v71 = *(v88 + 8);
    v71(v68, v89);
    OS_dispatch_group.wait(timeout:)();
    v71(v69, v70);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      sub_10000A6F0(v72, qword_1005DFB98);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "Timed out trying to update last proactive subscribe time", v75, 2u);
      }
    }
  }
}

void sub_1000FCFF4(uint64_t a1, NSObject *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v29 = a3;
  v30 = a2;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B564(&qword_1005AB028, &qword_1004C4C20);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  sub_100005F04(a1, &v28 - v13, &qword_1005AB028, &qword_1004C4C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB98);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_10000D01C(v29, a4, &v31);
      _os_log_impl(&_mh_execute_header, v16, v17, "Error updating lastProactiveSubmissionTime for %s", v18, 0xCu);
      sub_100004984(v19);
    }
  }

  else
  {
    sub_100002CE0(v14, &qword_1005AB028, &qword_1004C4C20);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000A6F0(v20, qword_1005DFB98);
    (*(v9 + 16))(v11, a5, v8);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v23 = 136315394;
      *(v23 + 4) = sub_10000D01C(v29, a4, &v31);
      *(v23 + 12) = 2080;
      sub_100107918(&qword_1005A9800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v9 + 8))(v11, v8);
      v27 = sub_10000D01C(v24, v26, &v31);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Updated lastProactiveSubscriptionTime for %s to %s", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }
  }

  dispatch_group_leave(v30);
}

uint64_t sub_1000FD46C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for HashedAdvertisement();
  v88 = *(v4 - 8);
  v89 = v4;
  __chkstk_darwin(v4);
  v83 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Advertisement();
  v81 = *(v6 - 8);
  v82 = v6;
  __chkstk_darwin(v6);
  v80 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PublicKey();
  v78 = *(v8 - 8);
  v79 = v8;
  __chkstk_darwin(v8);
  v77 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v76 - v11;
  v13 = type metadata accessor for DiversifiedRootKeys();
  v86 = *(v13 - 8);
  v87 = v13;
  __chkstk_darwin(v13);
  v76 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004B564(&qword_1005AAB18, &qword_1004C4580);
  __chkstk_darwin(v15 - 8);
  v85 = &v76 - v16;
  v17 = sub_10004B564(&qword_1005AB018, &unk_1004DD720);
  __chkstk_darwin(v17 - 8);
  v19 = &v76 - v18;
  v20 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v90 = *(v20 - 8);
  __chkstk_darwin(v20);
  v84 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for String.Encoding();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  __chkstk_darwin(v26 - 8);
  v28 = &v76 - v27;
  static String.Encoding.utf8.getter();
  v91 = a1;
  v29 = a2;
  v30 = String.data(using:allowLossyConversion:)();
  v32 = v31;
  (*(v23 + 8))(v25, v22);
  if (v32 >> 60 != 15)
  {
    v92[0] = v30;
    v92[1] = v32;
    sub_1000CA210();
    DataProtocol.stableUUID.getter();
    sub_10001A794(v30, v32);
    v40 = type metadata accessor for UUID();
    (*(*(v40 - 8) + 56))(v28, 0, 1, v40);
    sub_100002CE0(v28, &qword_1005A96E0, &qword_1004C2A80);
    v41 = sub_1000F4690();
    v43 = v29;
    v39 = v91;
    if (v42)
    {
      if (v41 == v91 && v42 == v43)
      {

LABEL_12:
        sub_1000EA9E8(v12);
        v46 = v86;
        v45 = v87;
        if ((*(v86 + 48))(v12, 1, v87) == 1)
        {
          sub_100002CE0(v12, &qword_1005AABB0, &unk_1004C45F0);

          return v39;
        }

        v60 = v76;
        (*(v46 + 32))(v76, v12, v45);
        sub_10004B564(&qword_1005AB020, &qword_1004D7D90);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_1004C1900;
        v62 = v77;
        DiversifiedRootKeys.publicKey.getter();
        v63 = v80;
        PublicKey.advertisement.getter();
        (*(v78 + 8))(v62, v79);
        v64 = v83;
        Advertisement.hashed.getter();
        (*(v81 + 8))(v63, v82);
        v65 = HashedAdvertisement.data.getter();
        v67 = v66;
        (*(v88 + 8))(v64, v89);
        *(v61 + 32) = v65;
        *(v61 + 40) = v67;
        (*(v46 + 8))(v60, v45);
        goto LABEL_29;
      }

      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v44)
      {
        goto LABEL_12;
      }
    }

    sub_1004AD358(v39, v43);
    if ((*(v90 + 48))(v19, 1, v20) == 1)
    {
      v47 = &qword_1005AB018;
      v48 = &unk_1004DD720;
      v49 = v19;
    }

    else
    {
      v50 = v19;
      v51 = v84;
      sub_100106DDC(v50, v84, type metadata accessor for SecureLocationsCachedSharedKey);
      v52 = v85;
      sub_100005F04(v51 + *(v20 + 28), v85, &qword_1005AAB18, &qword_1004C4580);
      v54 = v88;
      v53 = v89;
      if ((*(v88 + 48))(v52, 1, v89) != 1)
      {
        v68 = HashedAdvertisement.data.getter();
        v70 = v69;
        (*(v54 + 8))(v52, v53);
        v71 = sub_1001FCF88(0, 1, 1, _swiftEmptyArrayStorage);
        v73 = *(v71 + 2);
        v72 = *(v71 + 3);
        if (v73 >= v72 >> 1)
        {
          v71 = sub_1001FCF88((v72 > 1), v73 + 1, 1, v71);
        }

        sub_100106E44(v51, type metadata accessor for SecureLocationsCachedSharedKey);
        *(v71 + 2) = v73 + 1;
        v74 = &v71[16 * v73];
        *(v74 + 4) = v68;
        *(v74 + 5) = v70;
        goto LABEL_29;
      }

      sub_100106E44(v51, type metadata accessor for SecureLocationsCachedSharedKey);
      v47 = &qword_1005AAB18;
      v48 = &qword_1004C4580;
      v49 = v52;
    }

    sub_100002CE0(v49, v47, v48);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_10000A6F0(v55, qword_1005DFB98);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v92[0] = v59;
      *v58 = 141558275;
      *(v58 + 4) = 1752392040;
      *(v58 + 12) = 2081;
      *(v58 + 14) = sub_10000D01C(v39, v43, v92);
      _os_log_impl(&_mh_execute_header, v56, v57, "Unsubscribe: Cannot find shared key record or locationId. Looks like we didn't receive keys for %{private,mask.hash}s", v58, 0x16u);
      sub_100004984(v59);
    }

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CD178(v39, v43, 0);

LABEL_29:

    return v39;
  }

  v33 = type metadata accessor for UUID();
  (*(*(v33 - 8) + 56))(v28, 1, 1, v33);
  sub_100002CE0(v28, &qword_1005A96E0, &qword_1004C2A80);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000A6F0(v34, qword_1005DFB98);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v92[0] = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_10000D01C(v91, v29, v92);
    _os_log_impl(&_mh_execute_header, v35, v36, "Unable to create stableUUID from findMyId %s", v37, 0xCu);
    sub_100004984(v38);
  }

  return 0;
}

uint64_t sub_1000FE000(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v14 = *(v21 - 8);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v5 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v5;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  *(v17 + 48) = a4;
  aBlock[4] = sub_100106BF0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058FEB8;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100107918(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

void sub_1000FE2F8(uint64_t a1, uint64_t a2, int a3, void (*a4)(__n128), uint64_t a5)
{
  v180 = a5;
  v181 = a4;
  v213 = a2;
  v209 = type metadata accessor for DispatchTime();
  v7 = *(v209 - 8);
  v8 = __chkstk_darwin(v209);
  v208 = v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v207 = v176 - v10;
  v11 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v12 = __chkstk_darwin(v11 - 8);
  v206 = v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v217 = v176 - v14;
  v15 = type metadata accessor for SecureLocationsCachedPayload(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v205 = v176 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v218 = v176 - v20;
  v21 = __chkstk_darwin(v19);
  v177 = v176 - v22;
  __chkstk_darwin(v21);
  v24 = v176 - v23;
  v25 = sub_10004B564(&qword_1005A9E40, &qword_1004C3390);
  v26 = __chkstk_darwin(v25 - 8);
  v184 = v176 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v195 = v176 - v29;
  v30 = __chkstk_darwin(v28);
  v212 = v176 - v31;
  __chkstk_darwin(v30);
  v224 = v176 - v32;
  v192 = type metadata accessor for SecureLocation(0);
  v33 = *(v192 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v192);
  v222 = v176 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v35);
  v204 = v176 - v37;
  v38 = __chkstk_darwin(v36);
  v183 = v176 - v39;
  v40 = __chkstk_darwin(v38);
  v210 = v176 - v41;
  v42 = __chkstk_darwin(v40);
  v194 = v176 - v43;
  __chkstk_darwin(v42);
  v220 = (v176 - v44);
  v45 = swift_allocObject();
  v211 = v45;
  *(v45 + 16) = _swiftEmptyArrayStorage;
  v188 = (v45 + 16);
  v46 = swift_allocObject();
  v219 = v46;
  *(v46 + 16) = 0;
  v176[1] = v46 + 16;
  v48 = *(a1 + 16);
  v190 = a3;
  if (v48)
  {
    v178 = 0;
    v182 = 0;
    v49 = *(v33 + 80);
    v176[0] = (v49 + 32) & ~v49;
    v214 = v24;
    v50 = a1 + v176[0];
    v223 = *(v33 + 72);
    v202 = v16;
    v215 = (v16 + 48);
    v187 = "ationsPayloadManager.queue";
    v179 = a3 & 1;
    v201 = v49;
    v200 = (v49 + 24) & ~v49;
    v199 = (v34 + v200 + 7) & 0xFFFFFFFFFFFFFFF8;
    v198 = (v199 + 15) & 0xFFFFFFFFFFFFFFF8;
    v197 = v17 + 7;
    v196 = (v7 + 8);
    *&v47 = 136315650;
    v189 = v47;
    *&v47 = 136315138;
    v191 = v47;
    v51 = v222;
    v52 = v220;
    v53 = v48;
    v203 = v15;
    while (1)
    {
      sub_100106F1C(v50, v52, type metadata accessor for SecureLocation);
      if (qword_1005A7EF8 != -1)
      {
        swift_once();
      }

      v55 = sub_1000DC618(v52);

      if ((v55 & 1) == 0)
      {
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        sub_10000A6F0(v60, qword_1005DFB98);
        sub_100106F1C(v52, v51, type metadata accessor for SecureLocation);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = v15;
          v65 = v50;
          v66 = v53;
          v67 = swift_slowAlloc();
          v230 = v67;
          *v63 = v191;
          v68 = sub_10008BC88();
          v70 = v69;
          sub_100106E44(v222, type metadata accessor for SecureLocation);
          v71 = sub_10000D01C(v68, v70, &v230);
          v52 = v220;

          *(v63 + 4) = v71;
          _os_log_impl(&_mh_execute_header, v61, v62, "saveLocation: not saving since location older than threshold %s", v63, 0xCu);
          sub_100004984(v67);
          v53 = v66;
          v50 = v65;
          v15 = v64;

          v54 = v52;
          v51 = v222;
        }

        else
        {

          sub_100106E44(v51, type metadata accessor for SecureLocation);
          v54 = v52;
        }

        sub_100106E44(v54, type metadata accessor for SecureLocation);
        goto LABEL_5;
      }

      v56 = v224;
      sub_1004AC950(*v52, v52[1], v224);
      v57 = v212;
      sub_100005F04(v56, v212, &qword_1005A9E40, &qword_1004C3390);
      v58 = *v215;
      v59 = (*v215)(v57, 1, v15);
      v221 = v53;
      if (v59 == 1)
      {
        v216 = v50;
        sub_100002CE0(v57, &qword_1005A9E40, &qword_1004C3390);
LABEL_36:
        v97 = v210;
        sub_100106F1C(v52, v210, type metadata accessor for SecureLocation);
        v98 = v218;
        sub_100106F1C(v97, v218 + *(v15 + 20), type metadata accessor for SecureLocation);
        v99 = String.utf8Data.getter();
        v101 = v100;
        v230 = v99;
        v231 = v100;
        sub_1000CA210();
        DataProtocol.stableUUID.getter();
        sub_100106E44(v97, type metadata accessor for SecureLocation);
        sub_1000049D0(v99, v101);
        v102 = dispatch_group_create();
        dispatch_group_enter(v102);
        v103 = v204;
        sub_100106F1C(v52, v204, type metadata accessor for SecureLocation);
        v104 = v198;
        v105 = swift_allocObject();
        *(v105 + 16) = v102;
        sub_100106DDC(v103, v105 + v200, type metadata accessor for SecureLocation);
        *(v105 + v199) = v211;
        *(v105 + v104) = v219;
        v106 = type metadata accessor for TaskPriority();
        v107 = *(v106 - 8);
        v108 = v217;
        (*(v107 + 56))(v217, 1, 1, v106);
        v109 = v205;
        sub_100106F1C(v98, v205, type metadata accessor for SecureLocationsCachedPayload);
        v110 = (*(v202 + 80) + 32) & ~*(v202 + 80);
        v111 = (v197 + v110) & 0xFFFFFFFFFFFFFFF8;
        v112 = swift_allocObject();
        *(v112 + 16) = 0;
        *(v112 + 24) = 0;
        sub_100106DDC(v109, v112 + v110, type metadata accessor for SecureLocationsCachedPayload);
        v113 = (v112 + v111);
        *v113 = sub_100106C00;
        v113[1] = v105;
        v114 = v206;
        sub_100005F04(v108, v206, &qword_1005A9690, &qword_1004C2A00);
        LODWORD(v105) = (*(v107 + 48))(v114, 1, v106);
        v115 = v102;

        if (v105 == 1)
        {
          sub_100002CE0(v114, &qword_1005A9690, &qword_1004C2A00);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v107 + 8))(v114, v106);
        }

        v116 = *(v112 + 16);
        swift_unknownObjectRetain();

        v117 = v203;
        v50 = v216;
        if (v116)
        {
          swift_getObjectType();
          v118 = dispatch thunk of Actor.unownedExecutor.getter();
          v120 = v119;
          swift_unknownObjectRelease();
        }

        else
        {
          v118 = 0;
          v120 = 0;
        }

        v51 = v222;
        sub_100002CE0(v217, &qword_1005A9690, &qword_1004C2A00);
        v121 = swift_allocObject();
        *(v121 + 16) = &unk_1004C4C10;
        *(v121 + 24) = v112;
        if (v120 | v118)
        {
          v225 = 0;
          v226 = 0;
          v227 = v118;
          v228 = v120;
        }

        v52 = v220;
        swift_task_create();

        v122 = v208;
        static DispatchTime.now()();
        v123 = v207;
        + infix(_:_:)();
        v124 = *v196;
        v125 = v209;
        (*v196)(v122, v209);
        OS_dispatch_group.wait(timeout:)();
        v124(v123, v125);
        if (static DispatchTimeoutResult.== infix(_:_:)())
        {
          v15 = v117;
          if (qword_1005A7EE8 != -1)
          {
            swift_once();
          }

          v126 = type metadata accessor for Logger();
          sub_10000A6F0(v126, qword_1005DFB98);
          v127 = Logger.logObject.getter();
          v128 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v127, v128))
          {
            v129 = swift_slowAlloc();
            *v129 = 0;
            _os_log_impl(&_mh_execute_header, v127, v128, "saveLocation: timed out waiting to save securelocation record", v129, 2u);
          }

          else
          {
          }

          sub_100002CE0(v224, &qword_1005A9E40, &qword_1004C3390);
          sub_100106E44(v52, type metadata accessor for SecureLocation);
          v130 = type metadata accessor for SecureLocationsCachedPayload;
          v131 = v218;
          goto LABEL_66;
        }

        sub_100002CE0(v224, &qword_1005A9E40, &qword_1004C3390);

        sub_100106E44(v52, type metadata accessor for SecureLocation);
        sub_100106E44(v218, type metadata accessor for SecureLocationsCachedPayload);
        v53 = v221;
        v15 = v117;
        goto LABEL_5;
      }

      v72 = v214;
      sub_100106DDC(v57, v214, type metadata accessor for SecureLocationsCachedPayload);
      v73 = v192;
      v74 = (v72 + *(v15 + 20));
      v75 = static Date.< infix(_:_:)();
      v76 = static Date.== infix(_:_:)();
      v77 = *(v73 + 64);
      v78 = (v52 + v77);
      v79 = *(v52 + v77 + 8);
      v193 = v74;
      v80 = (v74 + v77);
      v81 = v80[1];
      if (v79)
      {
        if (!v81)
        {
          goto LABEL_22;
        }

        if (*v78 != *v80 || v79 != v81)
        {
          v82 = v76;
          v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v75 | v82))
          {
            LOBYTE(v75) = v75 | v83;
            goto LABEL_27;
          }

          goto LABEL_26;
        }
      }

      else if (v81)
      {
LABEL_22:
        if ((v75 | v76))
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if ((v75 | v76))
      {
        LOBYTE(v75) = 1;
        goto LABEL_27;
      }

LABEL_26:
      LOBYTE(v75) = 0;
LABEL_27:
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v84 = type metadata accessor for Logger();
      v216 = sub_10000A6F0(v84, qword_1005DFB98);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v230 = v88;
        *v87 = v189;
        *(v87 + 4) = sub_10000D01C(0xD000000000000037, v187 | 0x8000000000000000, &v230);
        *(v87 + 12) = 1024;
        *(v87 + 14) = v75 & 1;
        *(v87 + 18) = 1024;
        *(v87 + 20) = 0;
        _os_log_impl(&_mh_execute_header, v85, v86, "%s: skipUpdate %{BOOL}d, forceSave %{BOOL}d", v87, 0x18u);
        sub_100004984(v88);
        v52 = v220;
      }

      v89 = v195;
      v90 = v194;
      if ((v75 & 1) == 0)
      {
        v216 = v50;
        sub_100106E44(v214, type metadata accessor for SecureLocationsCachedPayload);
        goto LABEL_36;
      }

      sub_100005F04(v224, v195, &qword_1005A9E40, &qword_1004C3390);
      sub_100106F1C(v52, v90, type metadata accessor for SecureLocation);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v186 = v92;
        v93 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v229 = v185;
        *v93 = v189;
        v94 = v184;
        sub_100005F04(v89, v184, &qword_1005A9E40, &qword_1004C3390);
        if (v58(v94, 1, v15) == 1)
        {
          sub_100002CE0(v94, &qword_1005A9E40, &qword_1004C3390);
          v95 = 0;
          v96 = 0;
        }

        else
        {
          v132 = v210;
          sub_100106F1C(v94 + *(v15 + 20), v210, type metadata accessor for SecureLocation);
          sub_100106E44(v94, type metadata accessor for SecureLocationsCachedPayload);
          v95 = sub_10008BC88();
          v96 = v133;
          sub_100106E44(v132, type metadata accessor for SecureLocation);
        }

        v230 = v95;
        v231 = v96;
        sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
        v134 = String.init<A>(describing:)();
        v136 = v135;
        sub_100002CE0(v195, &qword_1005A9E40, &qword_1004C3390);
        v137 = sub_10000D01C(v134, v136, &v229);

        *(v93 + 4) = v137;
        *(v93 + 12) = 2080;
        v138 = v194;
        v139 = sub_10008BC88();
        v141 = v140;
        sub_100106E44(v138, type metadata accessor for SecureLocation);
        v142 = sub_10000D01C(v139, v141, &v229);

        *(v93 + 14) = v142;
        *(v93 + 22) = 1024;
        *(v93 + 24) = v179;
        _os_log_impl(&_mh_execute_header, v91, v186, "saveLocation: Not updating since existing location %s is same or newer than updated location %s returnOnlyPersisted %{BOOL}d", v93, 0x1Cu);
        swift_arrayDestroy();

        v51 = v222;
      }

      else
      {

        sub_100106E44(v90, type metadata accessor for SecureLocation);
        sub_100002CE0(v89, &qword_1005A9E40, &qword_1004C3390);
      }

      v52 = v220;
      if ((v190 & 1) != 0 || (, v143 = sub_1000DC618(v193), , (v143 & 1) == 0))
      {
        sub_100002CE0(v224, &qword_1005A9E40, &qword_1004C3390);
        sub_100106E44(v214, type metadata accessor for SecureLocationsCachedPayload);
        v130 = type metadata accessor for SecureLocation;
        v131 = v52;
LABEL_66:
        sub_100106E44(v131, v130);
        v53 = v221;
        goto LABEL_5;
      }

      sub_100106F1C(v193, v183, type metadata accessor for SecureLocation);
      v144 = v188;
      swift_beginAccess();
      v145 = *v144;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v144 = v145;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v145 = sub_1001FCE44(0, v145[2] + 1, 1, v145);
        *v188 = v145;
      }

      v148 = v145[2];
      v147 = v145[3];
      v149 = v178;
      if (v148 >= v147 >> 1)
      {
        v145 = sub_1001FCE44((v147 > 1), v148 + 1, 1, v145);
      }

      v145[2] = v148 + 1;
      sub_100106DDC(v183, v145 + v176[0] + v148 * v223, type metadata accessor for SecureLocation);
      *v188 = v145;
      swift_endAccess();
      v150 = __OFADD__(v149, 1);
      v151 = v149 + 1;
      if (v150)
      {
        __break(1u);
        return;
      }

      v152 = v177;
      sub_100106F1C(v214, v177, type metadata accessor for SecureLocationsCachedPayload);
      v153 = Logger.logObject.getter();
      v154 = static os_log_type_t.debug.getter();
      v155 = os_log_type_enabled(v153, v154);
      v178 = v151;
      if (v155)
      {
        v156 = swift_slowAlloc();
        v216 = v50;
        v157 = v151;
        v158 = v156;
        v159 = swift_slowAlloc();
        v230 = v159;
        *v158 = v191;
        v160 = *(v15 + 20);
        v193 = type metadata accessor for SecureLocation;
        sub_100106F1C(v152 + v160, v210, type metadata accessor for SecureLocation);
        v161 = String.init<A>(describing:)();
        v162 = v152;
        v163 = v161;
        v165 = v164;
        sub_100106E44(v162, type metadata accessor for SecureLocationsCachedPayload);
        v166 = sub_10000D01C(v163, v165, &v230);

        *(v158 + 4) = v166;
        _os_log_impl(&_mh_execute_header, v153, v154, "saveLocation: returnLatest cache has newer %s", v158, 0xCu);
        sub_100004984(v159);
        v52 = v220;

        sub_100002CE0(v224, &qword_1005A9E40, &qword_1004C3390);
        v51 = v222;
        sub_100106E44(v214, type metadata accessor for SecureLocationsCachedPayload);
        sub_100106E44(v52, v193);
        v182 = v157;
        v50 = v216;
      }

      else
      {

        sub_100106E44(v152, type metadata accessor for SecureLocationsCachedPayload);
        sub_100002CE0(v224, &qword_1005A9E40, &qword_1004C3390);
        sub_100106E44(v214, type metadata accessor for SecureLocationsCachedPayload);
        sub_100106E44(v52, type metadata accessor for SecureLocation);
        v182 = v151;
      }

      v53 = v221;
LABEL_5:
      v50 += v223;
      if (!--v53)
      {
        goto LABEL_69;
      }
    }
  }

  v182 = 0;
LABEL_69:
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v167 = type metadata accessor for Logger();
  sub_10000A6F0(v167, qword_1005DFB98);
  v168 = v219;

  v169 = Logger.logObject.getter();
  v170 = static os_log_type_t.default.getter();
  v171 = os_log_type_enabled(v169, v170);
  v172 = v190;
  if (v171)
  {
    v173 = swift_slowAlloc();
    *v173 = 67109632;
    *(v173 + 4) = v172 & 1;
    *(v173 + 8) = 2048;
    swift_beginAccess();
    *(v173 + 10) = *(v168 + 16);

    *(v173 + 18) = 2048;
    *(v173 + 20) = v182;
    _os_log_impl(&_mh_execute_header, v169, v170, "saveLocation: returnOnlyPersisted %{BOOL}d updated count %ld returnedFromCache %ld", v173, 0x1Cu);
  }

  else
  {
  }

  v174 = v181;
  swift_beginAccess();

  (v174)(v175);
}

void sub_1000FFBE8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v55 = a5;
  v56 = a2;
  v7 = type metadata accessor for SecureLocation(0);
  v53 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v52 = &v51 - v12;
  __chkstk_darwin(v11);
  v14 = &v51 - v13;
  v15 = type metadata accessor for SecureLocationsCachedPayload(0);
  __chkstk_darwin(v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10004B564(&qword_1005AB010, &qword_1004DD760);
  __chkstk_darwin(v18);
  v20 = (&v51 - v19);
  sub_100005F04(a1, &v51 - v19, &qword_1005AB010, &qword_1004DD760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005DFB98);
    sub_100106F1C(a3, v10, type metadata accessor for SecureLocation);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      *v25 = 136315394;
      v26 = *v10;
      v27 = v10[1];

      sub_100106E44(v10, type metadata accessor for SecureLocation);
      v28 = sub_10000D01C(v26, v27, v57);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      v57[3] = v21;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v29 = String.init<A>(describing:)();
      v31 = sub_10000D01C(v29, v30, v57);

      *(v25 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "saveLocation: Failed to update locations record for findMyId %s error %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100106E44(v10, type metadata accessor for SecureLocation);
    }

    goto LABEL_18;
  }

  sub_100106DDC(v20, v17, type metadata accessor for SecureLocationsCachedPayload);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000A6F0(v32, qword_1005DFB98);
  sub_100106F1C(a3, v14, type metadata accessor for SecureLocation);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v57[0] = v36;
    *v35 = 136315138;
    v37 = sub_10008BC88();
    v39 = v38;
    sub_100106E44(v14, type metadata accessor for SecureLocation);
    v40 = sub_10000D01C(v37, v39, v57);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "saveLocation: Updated location to %s", v35, 0xCu);
    sub_100004984(v36);
  }

  else
  {

    sub_100106E44(v14, type metadata accessor for SecureLocation);
  }

  v41 = v54;
  v42 = v52;
  sub_100106F1C(&v17[*(v15 + 20)], v52, type metadata accessor for SecureLocation);
  swift_beginAccess();
  v43 = *(v41 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v41 + 16) = v43;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v43 = sub_1001FCE44(0, v43[2] + 1, 1, v43);
    *(v41 + 16) = v43;
  }

  v46 = v43[2];
  v45 = v43[3];
  if (v46 >= v45 >> 1)
  {
    v43 = sub_1001FCE44((v45 > 1), v46 + 1, 1, v43);
  }

  v43[2] = v46 + 1;
  sub_100106DDC(v42, v43 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v46, type metadata accessor for SecureLocation);
  *(v41 + 16) = v43;
  swift_endAccess();
  sub_100106E44(v17, type metadata accessor for SecureLocationsCachedPayload);
  v47 = v55;
  swift_beginAccess();
  v48 = *(v47 + 16);
  v49 = __OFADD__(v48, 1);
  v50 = v48 + 1;
  if (!v49)
  {
    *(v47 + 16) = v50;
LABEL_18:
    dispatch_group_leave(v56);
    return;
  }

  __break(1u);
}

uint64_t sub_1001002C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v33 = a5;
  v34 = a4;
  v29 = a3;
  v7 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_10004B564(&qword_1005A9E40, &qword_1004C3390);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for SecureLocationsCachedPayload(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v28 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v31 = *(v16 - 8);
  v32 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = String.utf8Data.getter();
  v21 = v20;
  v35 = v19;
  v36 = v20;
  sub_1000CA210();
  v30 = v18;
  DataProtocol.stableUUID.getter();
  sub_1000049D0(v19, v21);
  sub_1004AC950(a1, a2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100002CE0(v12, &qword_1005A9E40, &qword_1004C3390);
    v22 = type metadata accessor for SecureLocation(0);
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    v34(v9);
    sub_100002CE0(v9, &unk_1005AB3F0, &qword_1004C4BF0);
  }

  else
  {
    v23 = v12;
    v24 = v28;
    sub_100106DDC(v23, v28, type metadata accessor for SecureLocationsCachedPayload);
    sub_100106F1C(v24 + *(v13 + 20), v9, type metadata accessor for SecureLocation);
    v25 = type metadata accessor for SecureLocation(0);
    (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
    v34(v9);
    sub_100002CE0(v9, &unk_1005AB3F0, &qword_1004C4BF0);
    sub_100106E44(v24, type metadata accessor for SecureLocationsCachedPayload);
  }

  return (*(v31 + 8))(v30, v32);
}

uint64_t sub_1001006B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a6;
  v23 = a7;
  v8 = v7;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v16 = *(v25 - 8);
  __chkstk_darwin(v25);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v8 + 16);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v8;
  v19[5] = a3;
  v19[6] = a4;
  aBlock[4] = v22;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = v23;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100107918(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v26 + 8))(v15, v13);
  (*(v16 + 8))(v18, v25);
}

uint64_t sub_1001009A0(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v32 = a5;
  v33 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v16 = String.utf8Data.getter();
  v15 = v14;
  v34[0] = v16;
  v34[1] = v14;
  sub_1000CA210();
  DataProtocol.stableUUID.getter();
  sub_1000049D0(v16, v15);
  LODWORD(v16) = sub_1004B7FD8(a1, a2);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000A6F0(v17, qword_1005DFB98);
  v18 = *(v8 + 16);
  v31 = v13;
  v18(v11, v13, v7);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v30 = v16;
    v16 = v21;
    v29 = swift_slowAlloc();
    v34[0] = v29;
    *v16 = 136315650;
    *(v16 + 4) = sub_10000D01C(a1, a2, v34);
    *(v16 + 12) = 2080;
    sub_100107918(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = *(v8 + 8);
    v25(v11, v7);
    v26 = sub_10000D01C(v22, v24, v34);

    *(v16 + 14) = v26;
    *(v16 + 22) = 1024;
    *(v16 + 24) = v30 & 1;
    _os_log_impl(&_mh_execute_header, v19, v20, "Removed cached location payload (if present) for %s %s Result %{BOOL}d", v16, 0x1Cu);
    swift_arrayDestroy();

    LOBYTE(v16) = v30;
  }

  else
  {

    v25 = *(v8 + 8);
    v25(v11, v7);
  }

  v33(v16 & 1);
  return (v25)(v31, v7);
}

uint64_t sub_100100D10(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTime();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = __chkstk_darwin(v3);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v35 = &v31 - v6;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v10 = *(v32 - 8);
  __chkstk_darwin(v32);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = _swiftEmptyArrayStorage;
  v38 = v13 + 16;
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  v31 = *(v1 + 16);
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = v1;
  v15[4] = v13;
  v15[5] = v14;
  aBlock[4] = sub_100106944;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058FDC8;
  v16 = _Block_copy(aBlock);

  v39 = v13;

  v17 = v14;
  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_100107918(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v33 + 8))(v9, v7);
  v18 = v12;
  v19 = v17;
  (*(v10 + 8))(v18, v32);

  v20 = v34;
  static DispatchTime.now()();
  v21 = v35;
  + infix(_:_:)();
  v22 = *(v36 + 8);
  v23 = v20;
  v24 = v37;
  v22(v23, v37);
  OS_dispatch_group.wait(timeout:)();
  v22(v21, v24);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000A6F0(v25, qword_1005DFB98);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "getCachedLocations - timed out reading locations", v28, 2u);
    }
  }

  swift_beginAccess();
  v29 = *(v39 + 16);

  return v29;
}

void sub_10010123C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{

  sub_100105630(a1, a2, (a3 + 16));

  dispatch_group_leave(a4);
}

uint64_t sub_1001012B0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v48 = a3;
  v51 = a2;
  v4 = type metadata accessor for SecureLocation(0);
  v49 = *(v4 - 8);
  v5 = __chkstk_darwin(v4 - 8);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v46 - v7;
  v8 = sub_10004B564(&qword_1005A9E40, &qword_1004C3390);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for SecureLocationsCachedPayload(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v46 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v53 = *(v14 - 8);
  v54 = v14;
  __chkstk_darwin(v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v17 = a1[1];
  v19 = String.utf8Data.getter();
  v21 = v20;
  v55[0] = v19;
  v55[1] = v20;
  sub_1000CA210();
  v52 = v16;
  DataProtocol.stableUUID.getter();
  sub_1000049D0(v19, v21);
  sub_1004AC950(v18, v17, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100002CE0(v10, &qword_1005A9E40, &qword_1004C3390);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005DFB98);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v55[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_10000D01C(v18, v17, v55);
      _os_log_impl(&_mh_execute_header, v23, v24, "getCachedLocations - no location found for %s", v25, 0xCu);
      sub_100004984(v26);
    }
  }

  else
  {
    v27 = v46;
    sub_100106DDC(v10, v46, type metadata accessor for SecureLocationsCachedPayload);
    v28 = *(v11 + 20);
    v29 = v47;
    sub_100106F1C(v27 + v28, v47, type metadata accessor for SecureLocation);
    v30 = v48;
    swift_beginAccess();
    v31 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v30 = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = sub_1001FCE44(0, v31[2] + 1, 1, v31);
      *v30 = v31;
    }

    v33 = v50;
    v35 = v31[2];
    v34 = v31[3];
    if (v35 >= v34 >> 1)
    {
      v31 = sub_1001FCE44((v34 > 1), v35 + 1, 1, v31);
      *v30 = v31;
    }

    v31[2] = v35 + 1;
    sub_100106DDC(v29, v31 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v35, type metadata accessor for SecureLocation);
    swift_endAccess();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000A6F0(v36, qword_1005DFB98);
    sub_100106F1C(v27 + v28, v33, type metadata accessor for SecureLocation);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v55[0] = v40;
      *v39 = 136315138;
      v41 = sub_10008BC88();
      v43 = v42;
      sub_100106E44(v33, type metadata accessor for SecureLocation);
      v44 = sub_10000D01C(v41, v43, v55);

      *(v39 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "getCachedLocations - %s", v39, 0xCu);
      sub_100004984(v40);
    }

    else
    {

      sub_100106E44(v33, type metadata accessor for SecureLocation);
    }

    sub_100106E44(v27, type metadata accessor for SecureLocationsCachedPayload);
  }

  return (*(v53 + 8))(v52, v54);
}

uint64_t sub_100101950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for SecureLocation(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005DFB98);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "createEncodedLocationInfo", v14, 2u);
  }

  sub_100106F1C(a1, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SecureLocation);
  v15 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v4;
  sub_100106DDC(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for SecureLocation);

  sub_1000E69C8();
}

uint64_t sub_100101B68(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v90 = a6;
  v94 = a4;
  v95 = a3;
  v8 = type metadata accessor for HashedAdvertisement();
  v86 = *(v8 - 8);
  v87 = v8;
  __chkstk_darwin(v8);
  v85 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Advertisement();
  v83 = *(v10 - 8);
  v84 = v10;
  __chkstk_darwin(v10);
  v82 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PublicKey();
  v88 = *(v12 - 8);
  v89 = v12;
  v13 = __chkstk_darwin(v12);
  v81 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v76 - v15;
  v17 = type metadata accessor for SecureLocation(0);
  __chkstk_darwin(v17);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Date();
  v91 = *(v20 - 8);
  v92 = v20;
  __chkstk_darwin(v20);
  v93 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  __chkstk_darwin(v22 - 8);
  v24 = &v76 - v23;
  v25 = type metadata accessor for DiversifiedRootKeys();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v29;
  sub_100005F04(a1, v24, &qword_1005AABB0, &unk_1004C45F0);
  if ((*(v26 + 48))(v24, 1, v30) == 1)
  {
    sub_100002CE0(v24, &qword_1005AABB0, &unk_1004C45F0);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000A6F0(v31, qword_1005DFB98);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v96[0] = v35;
      *v34 = 136315138;
      v97 = a2;
      swift_errorRetain();
      sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
      v36 = String.init<A>(describing:)();
      v38 = sub_10000D01C(v36, v37, v96);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "No keys available for sharing location to followers. Error %s", v34, 0xCu);
      sub_100004984(v35);
    }

    return (v95)(_swiftEmptyArrayStorage);
  }

  else
  {
    (*(v26 + 32))(v28, v24, v30);
    v40 = sub_1000F4690();
    if (v41)
    {
      v42 = v41;
      v79 = v40;
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      v80 = JSONEncoder.init()();
      static ReferenceClock.now.getter();
      sub_100106F1C(v90, v19, type metadata accessor for SecureLocation);
      v43 = *(v17 + 52);
      if (static Date.> infix(_:_:)())
      {
        Date.timeIntervalSince(_:)();
        v45 = v44;
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for Logger();
        sub_10000A6F0(v46, qword_1005DFB98);
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v77 = v30;
          *v49 = 134349056;
          *(v49 + 4) = v45;
          _os_log_impl(&_mh_execute_header, v47, v48, "SecureLocation: timestamp payload adjusted by %{public}f", v49, 0xCu);
          v30 = v77;
        }

        (*(v91 + 24))(&v19[v43], v93, v92);
      }

      *v19 = v79;
      *(v19 + 1) = v42;
      sub_100107918(&qword_1005AB008, type metadata accessor for SecureLocation, &unk_1004C2C78);
      v50 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v78 = v28;
      v56 = v55;
      v57 = v50;
      DiversifiedRootKeys.publicKey.getter();
      v58 = PublicKey.data.getter();
      v60 = v59;
      v79 = objc_autoreleasePoolPush();
      sub_1004B60F0(&v97, v96);
      v76 = v57;
      v77 = v56;
      objc_autoreleasePoolPop(v79);
      sub_1000049D0(v58, v60);
      v79 = *(v88 + 8);
      (v79)(v16, v89);
      v61 = v96[0];
      v88 = v96[1];
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      sub_10000A6F0(v62, qword_1005DFB98);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&_mh_execute_header, v63, v64, "Successfully Encrypted locationData", v65, 2u);
      }

      v66 = v88;
      sub_100005F6C(v61, v88);
      v67 = Date.epoch.getter();
      v68 = v81;
      DiversifiedRootKeys.publicKey.getter();
      v69 = v82;
      PublicKey.advertisement.getter();
      (v79)(v68, v89);
      v70 = v85;
      Advertisement.hashed.getter();
      (*(v83 + 8))(v69, v84);
      v71 = HashedAdvertisement.data.getter();
      v73 = v72;
      (*(v86 + 8))(v70, v87);
      sub_10004B564(&qword_1005A9F38, &unk_1004C34C0);
      v74 = swift_allocObject();
      v90 = xmmword_1004C1900;
      *(v74 + 16) = xmmword_1004C1900;
      *(v74 + 32) = v61;
      *(v74 + 40) = v66;
      *(v74 + 48) = v67;
      *(v74 + 56) = 0;
      sub_10004B564(&qword_1005A9F40, &unk_1004C4C00);
      v75 = swift_allocObject();
      *(v75 + 16) = v90;
      *(v75 + 32) = v71;
      *(v75 + 40) = v73;
      *(v75 + 48) = 0;
      *(v75 + 56) = 1;
      *(v75 + 64) = 0;
      *(v75 + 72) = 0;
      *(v75 + 80) = v74;
      sub_100005F6C(v61, v66);
      sub_100005F6C(v71, v73);

      (v95)(v75);
      sub_1000049D0(v76, v77);

      sub_1000049D0(v71, v73);

      sub_1000049D0(v61, v66);
      sub_1000049D0(v61, v66);
      (*(v91 + 8))(v93, v92);
      (*(v26 + 8))(v78, v30);
      return sub_100106E44(v19, type metadata accessor for SecureLocation);
    }

    else
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_10000A6F0(v51, qword_1005DFB98);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "Unable to get my personID. Can't encode location", v54, 2u);
      }

      (v95)(_swiftEmptyArrayStorage);
      return (*(v26 + 8))(v28, v30);
    }
  }
}

void *sub_1001028AC(uint64_t a1)
{
  v2 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  __chkstk_darwin(v2 - 8);
  v163 = &v150 - v3;
  v170 = type metadata accessor for SecureLocation(0);
  v4 = *(v170 - 8);
  v5 = __chkstk_darwin(v170);
  v7 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v150 - v9;
  v11 = __chkstk_darwin(v8);
  v167 = &v150 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v150 - v14;
  v16 = __chkstk_darwin(v13);
  v165 = &v150 - v17;
  v18 = __chkstk_darwin(v16);
  v172 = (&v150 - v19);
  v20 = __chkstk_darwin(v18);
  v22 = &v150 - v21;
  __chkstk_darwin(v20);
  v162 = &v150 - v23;
  v161 = type metadata accessor for Date();
  v24 = *(v161 - 8);
  __chkstk_darwin(v161);
  v166 = &v150 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_10004B564(&qword_1005AAFF8, &qword_1004C4BF8);
  __chkstk_darwin(v180);
  v27 = &v150 - v26;
  v181 = sub_10004B564(&qword_1005AAC68, &unk_1004C46F0);
  v28 = __chkstk_darwin(v181);
  v29 = __chkstk_darwin(v28);
  __chkstk_darwin(v29);
  v35 = (&v150 - v31);
  v36 = *(a1 + 16);
  if (!v36)
  {
    return _swiftEmptyArrayStorage;
  }

  v152 = v33;
  v151 = v32;
  v156 = v22;
  v157 = v15;
  v158 = v10;
  v153 = v7;
  v184 = 0;
  v179 = (v30 + 48);
  v160 = v4;
  v155 = (v4 + 48);
  v159 = enum case for Feature.FindMy.fmNiftyCurve(_:);
  v154 = (v24 + 8);
  v37 = (a1 + 80);
  *&v34 = 136315138;
  v176 = v34;
  *&v34 = 136315650;
  v150 = v34;
  v171 = _swiftEmptyArrayStorage;
  v177 = v27;
  v178 = (&v150 - v31);
  while (1)
  {
    v183 = v36;
    v46 = *(v37 - 1);
    v45 = *v37;
    v47 = __chkstk_darwin(*(v37 - 6));
    *(&v150 - 4) = v48;
    *(&v150 - 3) = v47;
    *(&v150 - 2) = v49;
    v185 = v47;
    v182 = v49;
    sub_100005F6C(v47, v49);
    v186 = v46;

    v50 = v184;
    OS_dispatch_queue.sync<A>(execute:)();
    if ((*v179)(v27, 1, v181) == 1)
    {
      v184 = v50;
      sub_100002CE0(v27, &qword_1005AAFF8, &qword_1004C4BF8);
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_10000A6F0(v51, qword_1005DFB98);
      v52 = v185;
      v53 = v182;
      sub_100005F6C(v185, v182);

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      sub_1000049D0(v52, v53);

      if (os_log_type_enabled(v54, v55))
      {
        v38 = swift_slowAlloc();
        v39 = v53;
        v40 = swift_slowAlloc();
        v187 = v40;
        *v38 = v176;
        sub_100005F6C(v52, v53);
        v41 = Data.description.getter();
        v43 = v42;
        sub_1000049D0(v52, v39);
        v44 = sub_10000D01C(v41, v43, &v187);
        v35 = v178;

        *(v38 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v54, v55, "No decryption key found for locationId %s. Not proceeding with decoding", v38, 0xCu);
        sub_100004984(v40);

        v27 = v177;

        sub_1000049D0(v52, v39);
      }

      else
      {

        sub_1000049D0(v52, v53);
      }

      goto LABEL_5;
    }

    sub_10010684C(v27, v35);
    if (!*(v45 + 16))
    {
      v184 = v50;
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      sub_10000A6F0(v63, qword_1005DFB98);
      v64 = v185;
      v65 = v182;
      sub_100005F6C(v185, v182);

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      sub_1000049D0(v64, v65);

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v187 = v69;
        *v68 = v176;
        v70 = Data.base64EncodedString(options:)(0);
        v71 = sub_10000D01C(v70._countAndFlagsBits, v70._object, &v187);

        *(v68 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v66, v67, "Empty location data for locationId %s", v68, 0xCu);
        sub_100004984(v69);
        v35 = v178;

        v27 = v177;
      }

      v72 = v35[1];
      v187 = *v35;
      v188 = v72;
      PassthroughSubject.send(_:)();
      sub_1000049D0(v64, v65);

      goto LABEL_38;
    }

    v187 = v45;

    sub_100104D30(&v187);
    if (v50)
    {
      goto LABEL_68;
    }

    v56 = v187;
    if (!*(v187 + 2))
    {
      break;
    }

    v58 = *(v187 + 4);
    v57 = *(v187 + 5);
    sub_100005F6C(v58, v57);
    v59 = PrivateKey.data.getter();
    v61 = v60;
    v62 = objc_autoreleasePoolPush();
    sub_1004B679C(&v191, &v187);
    v173 = v58;
    v174 = v57;
    objc_autoreleasePoolPop(v62);
    sub_1000049D0(v59, v61);
    v73 = v187;
    v175 = v188;
    v74 = v56[56];
    v75 = v185;
    if (v74 == 2 || (v74 & 1) == 0)
    {

      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v84 = type metadata accessor for Logger();
      v168 = sub_10000A6F0(v84, qword_1005DFB98);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&_mh_execute_header, v85, v86, "Got decrypted JSON data now trying to decode JSON", v87, 2u);
      }

      type metadata accessor for JSONDecoder();
      swift_allocObject();
      v88 = JSONDecoder.init()();
      sub_100107918(&qword_1005AB000, type metadata accessor for SecureLocation, &unk_1004C2CA0);
      v89 = v172;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v90 = v73;
      v35 = v178;
      v169 = v90;
      v97 = v89[1];
      v98 = v178[1];
      v99 = *v89 == *v178;
      v100 = v165;
      v164 = v88;
      if (v99 && v97 == v98 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100106F1C(v172, v100, type metadata accessor for SecureLocation);
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          LODWORD(v168) = v102;
          v104 = v103;
          v105 = swift_slowAlloc();
          v187 = v105;
          *v104 = v176;
          v106 = v100;
          sub_100106F1C(v100, v157, type metadata accessor for SecureLocation);
          v107 = String.init<A>(describing:)();
          v109 = v108;
          v35 = v178;
          sub_100106E44(v106, type metadata accessor for SecureLocation);
          v110 = sub_10000D01C(v107, v109, &v187);

          *(v104 + 4) = v110;
          _os_log_impl(&_mh_execute_header, v101, v168, "Got decoded location %s", v104, 0xCu);
          sub_100004984(v105);
        }

        else
        {

          sub_100106E44(v100, type metadata accessor for SecureLocation);
        }

        v27 = v177;
        v116 = v173;
        sub_100106F1C(v172, v167, type metadata accessor for SecureLocation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v171 = sub_1001FCE44(0, v171[2] + 1, 1, v171);
        }

        v118 = v171[2];
        v117 = v171[3];
        v184 = 0;
        if (v118 >= v117 >> 1)
        {
          v171 = sub_1001FCE44((v117 > 1), v118 + 1, 1, v171);
        }

        sub_1000049D0(v116, v174);
        sub_1000049D0(v169, v175);

        sub_1000049D0(v185, v182);

        v119 = v171;
        v171[2] = v118 + 1;
        sub_100106DDC(v167, v119 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v118, type metadata accessor for SecureLocation);
        sub_100106E44(v172, type metadata accessor for SecureLocation);
        goto LABEL_38;
      }

      v120 = v152;
      sub_100005F04(v35, v152, &qword_1005AAC68, &unk_1004C46F0);
      v121 = v172;
      sub_100106F1C(v172, v158, type metadata accessor for SecureLocation);
      v122 = v153;
      sub_100106F1C(v121, v153, type metadata accessor for SecureLocation);
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.error.getter();
      v184 = v123;
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        *v125 = v150;
        v126 = v151;
        sub_10010684C(v120, v151);
        v127 = *v126;
        v128 = v126[1];
        v129 = *(v181 + 48);
        v130 = type metadata accessor for PrivateKey();
        (*(*(v130 - 8) + 8))(v126 + v129, v130);
        v131 = sub_10000D01C(v127, v128, &v187);

        *(v125 + 4) = v131;
        *(v125 + 12) = 2080;
        v132 = v158;
        v133 = *v158;
        v134 = v158[1];

        sub_100106E44(v132, type metadata accessor for SecureLocation);
        v135 = sub_10000D01C(v133, v134, &v187);

        *(v125 + 14) = v135;
        *(v125 + 22) = 2080;
        v136 = v153;
        sub_100106F1C(v153, v157, type metadata accessor for SecureLocation);
        v137 = String.init<A>(describing:)();
        v139 = v138;
        sub_100106E44(v136, type metadata accessor for SecureLocation);
        v140 = sub_10000D01C(v137, v139, &v187);

        *(v125 + 24) = v140;
        v141 = v184;
        _os_log_impl(&_mh_execute_header, v184, v124, "FindMyID of envelope (%s) and encrypted location (%s) doesn't match. Dropping location: %s", v125, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100106E44(v122, type metadata accessor for SecureLocation);
        sub_100106E44(v158, type metadata accessor for SecureLocation);
        sub_100002CE0(v120, &qword_1005AAC68, &unk_1004C46F0);
      }

      v148 = v174;
      type metadata accessor for SecureLocationsError(0);
      v191 = 11;
      sub_1000BC07C(_swiftEmptyArrayStorage);
      sub_100107918(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();

      sub_1000049D0(v169, v175);
      sub_1000049D0(v173, v148);
      sub_100106E44(v172, type metadata accessor for SecureLocation);
      v35 = v178;
      v91 = v185;
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v184 = 0;
      v92 = type metadata accessor for Logger();
      sub_10000A6F0(v92, qword_1005DFB98);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&_mh_execute_header, v93, v94, "Failed to decode json data into SecureLocation", v95, 2u);

        sub_1000049D0(v91, v182);

LABEL_36:

        goto LABEL_37;
      }

      v96 = v91;
LABEL_35:
      sub_1000049D0(v96, v182);

      goto LABEL_36;
    }

    v169 = v187;
    My = type metadata accessor for Feature.FindMy();
    v189 = My;
    v190 = sub_100107918(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
    v77 = sub_10000331C(&v187);
    (*(*(My - 8) + 104))(v77, v159, My);
    LOBYTE(My) = isFeatureEnabled(_:)();
    sub_100004984(&v187);
    v78 = v166;
    v184 = 0;
    if ((My & 1) == 0)
    {

      v35 = v178;
      v111 = v173;
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v112 = type metadata accessor for Logger();
      sub_10000A6F0(v112, qword_1005DFB98);
      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&_mh_execute_header, v113, v114, "lloc feature is disabled", v115, 2u);
      }

      sub_1000049D0(v169, v175);
      sub_1000049D0(v111, v174);

      v96 = v75;
      goto LABEL_35;
    }

    Date.init(timeIntervalSince1970:)();
    v35 = v178;
    v79 = v163;
    v80 = v169;
    v81 = v175;
    sub_10008D4B8(*v178, v178[1], v78, v163);
    v82 = (*v155)(v79, 1, v170);
    v83 = v173;
    if (v82 != 1)
    {
      v142 = v79;
      v143 = v162;
      sub_100106DDC(v142, v162, type metadata accessor for SecureLocation);
      sub_100106F1C(v143, v156, type metadata accessor for SecureLocation);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v177;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v171 = sub_1001FCE44(0, v171[2] + 1, 1, v171);
      }

      v146 = v171[2];
      v145 = v171[3];
      if (v146 >= v145 >> 1)
      {
        v171 = sub_1001FCE44((v145 > 1), v146 + 1, 1, v171);
      }

      sub_1000049D0(v83, v174);
      sub_1000049D0(v169, v175);
      sub_1000049D0(v75, v182);

      sub_100106E44(v162, type metadata accessor for SecureLocation);
      (*v154)(v166, v161);
      v147 = v171;
      v171[2] = v146 + 1;
      sub_100106DDC(v156, v147 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v146, type metadata accessor for SecureLocation);
      goto LABEL_38;
    }

    (*v154)(v78, v161);
    sub_1000049D0(v80, v81);
    sub_1000049D0(v83, v174);
    sub_1000049D0(v75, v182);

    sub_100002CE0(v79, &unk_1005AB3F0, &qword_1004C4BF0);
LABEL_37:
    v27 = v177;
LABEL_38:
    sub_100002CE0(v35, &qword_1005AAC68, &unk_1004C46F0);
LABEL_5:
    v37 += 7;
    v36 = v183 - 1;
    if (v183 == 1)
    {
      return v171;
    }
  }

  __break(1u);
LABEL_68:

  __break(1u);
  return result;
}

uint64_t sub_100104094(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, void *), uint64_t a4)
{
  v56 = a4;
  v57 = a3;
  v6 = type metadata accessor for PublicKey();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  __chkstk_darwin(v9 - 8);
  v11 = v53 - v10;
  v12 = type metadata accessor for DiversifiedRootKeys();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F04(a1, v11, &qword_1005AABB0, &unk_1004C45F0);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    v25 = sub_10008D28C();
    v27 = v26;
    if (v26 >> 60 == 15)
    {
      type metadata accessor for SecureLocationsError(0);
      v60 = 10;
      sub_1000BC07C(_swiftEmptyArrayStorage);
      sub_100107918(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);
      _BridgedStoredNSError.init(_:userInfo:)();
      v28 = v58;
      v57(v25, v27, v58);

      return (*(v13 + 8))(v15, v12);
    }

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    v30 = sub_10000A6F0(v29, qword_1005DFB98);
    sub_100005F6C(v25, v27);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v53[1] = v30;
    if (!v33)
    {
      sub_10001A794(v25, v27);
LABEL_24:

      DiversifiedRootKeys.publicKey.getter();
      v40 = PublicKey.data.getter();
      v42 = v41;
      v43 = objc_autoreleasePoolPush();
      sub_1004B60F0(&v60, &v58);
      objc_autoreleasePoolPop(v43);
      sub_1000049D0(v40, v42);
      (*(v54 + 8))(v8, v55);
      v44 = v58;
      v45 = v59;
      sub_100005F6C(v58, v59);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v46, v47))
      {
        sub_1000049D0(v44, v45);
LABEL_37:

        sub_100005F6C(v44, v45);
        v57(v44, v45, 0);
        sub_1000049D0(v44, v45);
        sub_1000049D0(v44, v45);
        sub_10001A794(v25, v27);
        return (*(v13 + 8))(v15, v12);
      }

      result = swift_slowAlloc();
      *result = 134217984;
      v48 = v45 >> 62;
      if ((v45 >> 62) > 1)
      {
        if (v48 != 2)
        {
          v49 = 0;
          goto LABEL_36;
        }

        v51 = *(v44 + 16);
        v50 = *(v44 + 24);
        v39 = __OFSUB__(v50, v51);
        v49 = v50 - v51;
        if (!v39)
        {
          goto LABEL_36;
        }

        __break(1u);
      }

      else if (!v48)
      {
        v49 = BYTE6(v45);
LABEL_36:
        *(result + 4) = v49;
        v52 = result;
        sub_1000049D0(v44, v45);
        _os_log_impl(&_mh_execute_header, v46, v47, "Successfully Encrypted liteLocationData. Final size %ld", v52, 0xCu);

        goto LABEL_37;
      }

      LODWORD(v49) = HIDWORD(v44) - v44;
      if (!__OFSUB__(HIDWORD(v44), v44))
      {
        v49 = v49;
        goto LABEL_36;
      }

LABEL_40:
      __break(1u);
      return result;
    }

    result = swift_slowAlloc();
    v34 = result;
    *result = 134217984;
    v35 = v27 >> 62;
    if ((v27 >> 62) > 1)
    {
      if (v35 != 2)
      {
        v36 = 0;
        goto LABEL_23;
      }

      v38 = *(v25 + 16);
      v37 = *(v25 + 24);
      v39 = __OFSUB__(v37, v38);
      v36 = v37 - v38;
      if (!v39)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    else if (!v35)
    {
      v36 = BYTE6(v27);
LABEL_23:
      *(result + 4) = v36;
      sub_10001A794(v25, v27);
      _os_log_impl(&_mh_execute_header, v31, v32, "Encrypting litelocation data of size %ld", v34, 0xCu);

      goto LABEL_24;
    }

    LODWORD(v36) = HIDWORD(v25) - v25;
    if (__OFSUB__(HIDWORD(v25), v25))
    {
      __break(1u);
      goto LABEL_40;
    }

    v36 = v36;
    goto LABEL_23;
  }

  sub_100002CE0(v11, &qword_1005AABB0, &unk_1004C45F0);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000A6F0(v16, qword_1005DFB98);
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v58 = v20;
    *v19 = 136315138;
    v60 = a2;
    swift_errorRetain();
    sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
    v21 = String.init<A>(describing:)();
    v23 = sub_10000D01C(v21, v22, &v58);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "No keys available for sharing location to followers. Error %s", v19, 0xCu);
    sub_100004984(v20);
  }

  return (v57)(0, 0xF000000000000000, a2);
}

void sub_100104908(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005AAF90, &unk_1004C4BA0);
  __chkstk_darwin(v2);
  v4 = (&v18 - v3);
  sub_100005F04(a1, &v18 - v3, &qword_1005AAF90, &unk_1004C4BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005DFB98);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v5;
      v19 = v10;
      *v9 = 136315138;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v11 = String.init<A>(describing:)();
      v13 = sub_10000D01C(v11, v12, &v19);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error saving config %s", v9, 0xCu);
      sub_100004984(v10);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005DFB98);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Successfully saved config", v17, 2u);
    }

    sub_100002CE0(v4, &qword_1005AAF90, &unk_1004C4BA0);
  }
}

uint64_t sub_100104BF4()
{

  return swift_deallocClassInstance();
}

__n128 sub_100104C70(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100104C8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100104CD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100104D30(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10023C9DC(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (*v12 >= v13)
          {
            break;
          }

          v14 = v12[40];
          v15 = *(v12 + 1);
          v16 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v16;
          *(v12 - 1) = v15;
          *v12 = v13;
          v12[8] = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v18[0] = (v7 + 4);
    v18[1] = v6;
    sub_100104E84(v18, v19, v20, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void sub_100104E84(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_91:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_125:
      v8 = sub_10023C584(v8);
    }

    v84 = v8 + 16;
    v85 = *(v8 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v8[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_100105434((*a3 + 32 * *v86), (*a3 + 32 * *v88), (*a3 + 32 * v89), v5);
        if (v4)
        {
          goto LABEL_100;
        }

        if (v89 < v87)
        {
          goto LABEL_117;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_118;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_119;
        }

        v85 = *v84 - 1;
        memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_129;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 16);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 16);
      v14 = v9 + 2;
      v15 = (v12 + 80);
      while (v6 != v14)
      {
        v16 = *(v15 - 4) >= *v15;
        ++v14;
        v15 += 4;
        if ((((v13 < v10) ^ v16) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v17 = 32 * v7 - 32;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v23 = (v22 + v11);
            v24 = (v22 + v17);
            v25 = *(v22 + v11);
            v26 = *(v22 + v11 + 16);
            v27 = *(v22 + v11 + 24);
            if (v11 != v17 || v23 >= v24 + 2)
            {
              v20 = v24[1];
              *v23 = *v24;
              v23[1] = v20;
            }

            v21 = v22 + v17;
            *v21 = v25;
            *(v21 + 16) = v26;
            *(v21 + 24) = v27;
          }

          ++v19;
          v17 -= 32;
          v11 += 32;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1001FCD18(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v38 = *(v8 + 3);
    v39 = v5 + 1;
    if (v5 >= v38 >> 1)
    {
      v8 = sub_1001FCD18((v38 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v39;
    v40 = v8 + 32;
    v41 = &v8[16 * v5 + 32];
    *v41 = v9;
    *(v41 + 1) = v7;
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v42 = *(v8 + 4);
          v43 = *(v8 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_60:
          if (v45)
          {
            goto LABEL_107;
          }

          v58 = &v8[16 * v39];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_109;
          }

          v64 = &v40[16 * v5];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_114;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v5 = v39 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v39 < 2)
        {
          goto LABEL_115;
        }

        v68 = &v8[16 * v39];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_75:
        if (v63)
        {
          goto LABEL_111;
        }

        v71 = &v40[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v39)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v79 = &v40[16 * v5 - 16];
        v80 = *v79;
        v81 = &v40[16 * v5];
        v82 = *(v81 + 1);
        sub_100105434((*a3 + 32 * *v79), (*a3 + 32 * *v81), (*a3 + 32 * v82), v93);
        if (v4)
        {
          goto LABEL_100;
        }

        if (v82 < v80)
        {
          goto LABEL_102;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_103;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *(v8 + 2);
        if (v5 >= v83)
        {
          goto LABEL_104;
        }

        v39 = v83 - 1;
        memmove(&v40[16 * v5], v81 + 16, 16 * (v83 - 1 - v5));
        *(v8 + 2) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v40[16 * v39];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_105;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_106;
      }

      v53 = &v8[16 * v39];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_108;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_110;
      }

      if (v57 >= v49)
      {
        v75 = &v40[16 * v5];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_116;
        }

        if (v44 < v78)
        {
          v5 = v39 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v91;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v28 = *a3;
  v29 = v9 - v7;
  v30 = *a3 + 32 * v7;
LABEL_33:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    v33 = *(v31 + 16);
    if (*(v31 - 16) >= v33)
    {
LABEL_32:
      ++v7;
      --v29;
      v30 += 32;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v31 + 24);
    v35 = *v31;
    v36 = *(v31 - 16);
    *v31 = *(v31 - 32);
    *(v31 + 16) = v36;
    *(v31 - 16) = v33;
    *(v31 - 8) = v34;
    *(v31 - 32) = v35;
    v31 -= 32;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
}

uint64_t sub_100105434(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 4 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 8);
    }

    v15 = &v4[v14];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 4;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 4;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v18 = *(v16 + 1);
    *v7 = *v16;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  v19 = 4 * v13;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v15 = &v4[v19];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v20 = v5 + 4;
      if (*(v6 - 2) < *(v15 - 2))
      {
        v23 = v6 - 4;
        if (v20 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v23;
          *(v5 + 1) = v24;
        }

        if (v15 <= v4 || (v6 -= 4, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v21 = v15 - 4;
      if (v20 != v15)
      {
        v22 = *(v15 - 1);
        *v5 = *v21;
        *(v5 + 1) = v22;
      }

      v5 -= 4;
      v15 -= 4;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_35:
  v25 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v6 != v4 || v6 >= (v4 + v25))
  {
    memmove(v6, v4, v25);
  }

  return 1;
}

void sub_100105630(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a1 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v10)))));
      v15 = v14[1];
      v16[0] = *v14;
      v16[1] = v15;

      sub_1001012B0(v16, a2, a3);
      if (v3)
      {
        break;
      }

      v10 &= v10 - 1;

      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void *sub_100105768()
{
  v0 = type metadata accessor for SecureLocationsCachedPayload(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SecureLocation(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005AAF98, &qword_1004C4BB0);
  unsafeFromAsyncTask<A>(_:)();
  v8 = v18;
  v9 = v18[2];
  if (v9)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_100239440(0, v9, 0);
    v10 = v18;
    v11 = *(v1 + 80);
    v17 = v8;
    v12 = v8 + ((v11 + 32) & ~v11);
    v13 = *(v1 + 72);
    do
    {
      sub_100106F1C(v12, v3, type metadata accessor for SecureLocationsCachedPayload);
      sub_100106F1C(&v3[*(v0 + 20)], v7, type metadata accessor for SecureLocation);
      sub_100106E44(v3, type metadata accessor for SecureLocationsCachedPayload);
      v18 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_100239440((v14 > 1), v15 + 1, 1);
        v10 = v18;
      }

      v10[2] = v15 + 1;
      sub_100106DDC(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, type metadata accessor for SecureLocation);
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v10;
}

uint64_t type metadata accessor for SecureLocationsCachedPayload(uint64_t a1)
{
  result = qword_1005AB088;
  if (!qword_1005AB088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100105A50(uint64_t a1, uint64_t a2, char *a3)
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005DFB98);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v7, v8, "LabelledLocations: saveLocationLabels %ld", v9, 0xCu);
  }

  else
  {
  }

  *(swift_allocObject() + 16) = a1;

  unsafeFromAsyncTask<A>(_:)();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "LabelledLocations - SaveLocationLabels - calling completion with success", v12, 2u);
  }

  sub_1000C52F0(a2, a3);
}

uint64_t sub_100105D7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003690;

  return sub_1004AEBA8(a1, v4);
}

uint64_t sub_100105E1C(uint64_t a1, uint64_t a2)
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

double sub_100105F3C(void *a1)
{
  v4 = sub_10004B564(&qword_1005AB100, &qword_1004C4F90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - v6;
  sub_100011AEC(a1, a1[3]);
  sub_10010781C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004984(a1);
  }

  else
  {
    v13 = 0;
    sub_1000F4D64();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v12[0];
    v10 = v12[1];
    LOBYTE(v12[0]) = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v2 = v11;
    v13 = 2;
    sub_100107870();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    sub_100005F6C(v9, v10);
    sub_100004984(a1);
    sub_1000049D0(v9, v10);
  }

  return v2;
}

uint64_t sub_100106194(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795479656BLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49)
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

void sub_1001062F4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AAFA0, &qword_1004C4BC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_100106608();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004984(a1);
  }

  else
  {
    v26 = 0;
    sub_1000F4D64();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v23;
    v22 = v24;
    LOBYTE(v23) = 1;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v25 = v11;
    v21 = v10;
    LOBYTE(v23) = 2;
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = v13;
    v20 = v12;
    sub_10004B564(&qword_1005AAFB0, &qword_1004C4BD0);
    v26 = 3;
    sub_100106760(&qword_1005AAFB8, sub_10010665C, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v15 = v9;
    v16 = v9;
    v18 = v22;
    v17 = v23;
    sub_100005F6C(v16, v22);

    sub_100004984(a1);
    sub_1000049D0(v15, v18);

    *a2 = v15;
    *(a2 + 8) = v18;
    *(a2 + 16) = v21;
    *(a2 + 24) = v25 & 1;
    *(a2 + 32) = v20;
    *(a2 + 40) = v14;
    *(a2 + 48) = v17;
  }
}

unint64_t sub_100106608()
{
  result = qword_1005AAFA8;
  if (!qword_1005AAFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAFA8);
  }

  return result;
}

unint64_t sub_10010665C()
{
  result = qword_1005AAFC0;
  if (!qword_1005AAFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAFC0);
  }

  return result;
}

unint64_t sub_10010670C()
{
  result = qword_1005AAFD0;
  if (!qword_1005AAFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAFD0);
  }

  return result;
}

uint64_t sub_100106760(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005AAFB0, &qword_1004C4BD0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001067D8()
{
  result = qword_1005AAFE0;
  if (!qword_1005AAFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAFE0);
  }

  return result;
}

uint64_t sub_10010684C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AAC68, &unk_1004C46F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001068BC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SecureLocation(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_100101B68(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_100106968(void *a1)
{
  v3 = sub_10004B564(&qword_1005AB0E0, &unk_1004C4F80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100107750();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[31] = 0;
    v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_10004B564(&qword_1005AB0F0, &qword_1004CDC90);
    v9[15] = 1;
    sub_1001077A4(&qword_1005AB0F8, sub_1000F7CFC, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100004984(a1);
  return v7;
}

uint64_t sub_100106B78()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100106C00(uint64_t a1)
{
  v3 = *(type metadata accessor for SecureLocation(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  sub_1000FFBE8(a1, v8, v1 + v4, v6, v7);
}

uint64_t sub_100106CAC(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsCachedPayload(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100003690;

  return sub_1004B08B8(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100106DDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100106E44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100106EA4(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_1000FCFF4(a1, v4, v5, v6, v7);
}

uint64_t sub_100106F1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100106F84(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsCachedSharedKey(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000368C;

  return sub_1004B1814(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1001070BC()
{
  v1 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = v1[6];
  v8 = type metadata accessor for PrivateKey();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v1[7];
  v11 = type metadata accessor for HashedAdvertisement();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v1[8];
  v14 = type metadata accessor for Destination();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v5 + v13, 1, v14))
  {
    (*(v15 + 8))(v5 + v13, v14);
  }

  v16 = v1[11];
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v5 + v16, 1, v17))
  {
    (*(v18 + 8))(v5 + v16, v17);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1001073FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100107444(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001074BC(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SecureLocation(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_100107540(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100107554(uint64_t a1, unsigned int a2)
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

uint64_t sub_1001075A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_10010764C()
{
  result = qword_1005AB0C8;
  if (!qword_1005AB0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB0C8);
  }

  return result;
}

unint64_t sub_1001076A4()
{
  result = qword_1005AB0D0;
  if (!qword_1005AB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB0D0);
  }

  return result;
}

unint64_t sub_1001076FC()
{
  result = qword_1005AB0D8;
  if (!qword_1005AB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB0D8);
  }

  return result;
}

unint64_t sub_100107750()
{
  result = qword_1005AB0E8;
  if (!qword_1005AB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB0E8);
  }

  return result;
}

uint64_t sub_1001077A4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005AB0F0, &qword_1004CDC90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10010781C()
{
  result = qword_1005AB108;
  if (!qword_1005AB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB108);
  }

  return result;
}

unint64_t sub_100107870()
{
  result = qword_1005AB110;
  if (!qword_1005AB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB110);
  }

  return result;
}

unint64_t sub_1001078C4()
{
  result = qword_1005AB120;
  if (!qword_1005AB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB120);
  }

  return result;
}

uint64_t sub_100107918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100107994()
{
  result = qword_1005AB138;
  if (!qword_1005AB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB138);
  }

  return result;
}

unint64_t sub_1001079EC()
{
  result = qword_1005AB140;
  if (!qword_1005AB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB140);
  }

  return result;
}

unint64_t sub_100107A44()
{
  result = qword_1005AB148;
  if (!qword_1005AB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB148);
  }

  return result;
}

unint64_t sub_100107A9C()
{
  result = qword_1005AB150;
  if (!qword_1005AB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB150);
  }

  return result;
}

unint64_t sub_100107AF4()
{
  result = qword_1005AB158;
  if (!qword_1005AB158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB158);
  }

  return result;
}

unint64_t sub_100107B4C()
{
  result = qword_1005AB160;
  if (!qword_1005AB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB160);
  }

  return result;
}

unint64_t sub_100107BA4()
{
  result = qword_1005AB168;
  if (!qword_1005AB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB168);
  }

  return result;
}

unint64_t sub_100107BF8()
{
  result = qword_1005AB170;
  if (!qword_1005AB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB170);
  }

  return result;
}

uint64_t sub_100107C6C(uint64_t a1)
{
  v2 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for SecureLocationsStewie.ServiceState.unknown(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0x6E776F6E6B6E75;
  }

  else if (v6 == enum case for SecureLocationsStewie.ServiceState.available(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0x6C62616C69617661;
  }

  else if (v6 == enum case for SecureLocationsStewie.ServiceState.unavailable(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0x616C696176616E75;
  }

  else if (v6 == enum case for SecureLocationsStewie.ServiceState.unavailableLocationPublish(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0xD00000000000001ALL;
  }

  else if (v6 == enum case for SecureLocationsStewie.ServiceState.unavailableLocationServices(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0xD00000000000001BLL;
  }

  else if (v6 == enum case for SecureLocationsStewie.ServiceState.publishInProgress(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0xD000000000000011;
  }

  else if (v6 == enum case for SecureLocationsStewie.ServiceState.throttled(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0x656C74746F726874;
  }

  else if (v6 == enum case for SecureLocationsStewie.ServiceState.disabled(_:) || v6 == enum case for SecureLocationsStewie.ServiceState.disabledInGeo(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0x64656C6261736964;
  }

  else if (v6 == enum case for SecureLocationsStewie.ServiceState.notSetup(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0xD000000000000017;
  }

  else
  {
    v8 = *(v3 + 8);
    v8(a1, v2);
    v8(v5, v2);
    return 0x2D746C7561666564;
  }
}

uint64_t SecureLocationsStewie.ServiceState.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for SecureLocationsStewie.ServiceState.unknown(_:))
  {
    return 0x6E776F6E6B6E75;
  }

  if (v6 == enum case for SecureLocationsStewie.ServiceState.available(_:))
  {
    return 0x6C62616C69617661;
  }

  if (v6 == enum case for SecureLocationsStewie.ServiceState.unavailable(_:))
  {
    return 0x616C696176616E75;
  }

  if (v6 == enum case for SecureLocationsStewie.ServiceState.unavailableLocationPublish(_:))
  {
    return 0xD00000000000001ALL;
  }

  if (v6 == enum case for SecureLocationsStewie.ServiceState.unavailableLocationServices(_:))
  {
    return 0xD00000000000001BLL;
  }

  if (v6 == enum case for SecureLocationsStewie.ServiceState.publishInProgress(_:))
  {
    return 0xD000000000000011;
  }

  if (v6 == enum case for SecureLocationsStewie.ServiceState.throttled(_:))
  {
    return 0x656C74746F726874;
  }

  v8 = v6;
  result = 0x64656C6261736964;
  if (v8 != enum case for SecureLocationsStewie.ServiceState.disabled(_:) && v8 != enum case for SecureLocationsStewie.ServiceState.disabledInGeo(_:))
  {
    if (v8 == enum case for SecureLocationsStewie.ServiceState.notSetup(_:))
    {
      return 0xD000000000000017;
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      return 0x2D746C7561666564;
    }
  }

  return result;
}

uint64_t sub_1001083A4(uint64_t a1)
{
  v2 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F04(a1, v4, &unk_1005AE5B0, &qword_1004C32F0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002CE0(v4, &unk_1005AE5B0, &qword_1004C32F0);
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    [v9 setDouble:v10 forKey:0.0];

    return sub_100002CE0(a1, &unk_1005AE5B0, &qword_1004C32F0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    Date.timeIntervalSince1970.getter();
    v13 = v12;
    v14 = [objc_opt_self() standardUserDefaults];
    v15 = String._bridgeToObjectiveC()();
    [v14 setDouble:v15 forKey:v13];

    sub_100002CE0(a1, &unk_1005AE5B0, &qword_1004C32F0);
    return (*(v6 + 8))(v8, v5);
  }
}

char *sub_100108638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a1;
  v41 = a3;
  v39 = a2;
  v42 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v42);
  v33[2] = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v37 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v3[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix];
  *v10 = 0x3A656977657473;
  v10[1] = 0xE700000000000000;
  v11 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue;
  v34 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue;
  v33[3] = sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  v33[1] = "MINDER_ALERT_BODY_WLAN";
  v35 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v12 = *(v7 + 104);
  v36 = v7 + 104;
  v38 = v12;
  v12(v9);
  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  v33[5] = sub_10001DFF0(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v33[4] = sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  v33[6] = sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v3[v11] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient] = 0;
  *&v3[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_coreTelephonyClient] = 0;
  v3[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isFindMyServiceConnectedToStewie] = 0;
  v13 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
  v14 = type metadata accessor for SecureLocationsStewie.ServiceState();
  (*(*(v14 - 8) + 56))(&v3[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_location;
  v16 = type metadata accessor for SecureLocation(0);
  v17 = *(*(v16 - 8) + 56);
  v17(&v4[v15], 1, 1, v16);
  *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_publishCompletions] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_meDeviceSubscription] = 0;
  v18 = &v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_LastPublishDateKey];
  *v18 = 0xD000000000000017;
  v18[1] = 0x80000001004E14B0;
  v19 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_lastAvailabilityDate;
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 56))(&v4[v19], 1, 1, v20);
  *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_cntProactiveAlerts] = 1;
  *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_notificationTimer] = 0;
  v21 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_locationMonitorDistanceThreshold;
  v22 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  *&v4[v21] = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, 0x4059000000000000, 0);
  v23 = v39;
  v17(&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_lastPublishedLocation], 1, 1, v16);
  v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isStewieSupported] = 0;
  v24 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_radiosPreferencesQueue;
  v38(v9, v35, v37);
  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v40;
  v25 = v41;
  *&v4[v24] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_payloadManager] = v26;
  *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientSessionPool] = v23;
  *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_keyManager] = v25;
  v27 = *&v4[v34];
  type metadata accessor for QueueSynchronizer();
  swift_allocObject();

  *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueueSynchronizer] = sub_10011DDB0(v27);
  result = [objc_allocWithZone(RadiosPreferences) initWithQueue:*&v4[v24]];
  if (result)
  {
    *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_radiosPreferences] = result;
    v29 = type metadata accessor for SecureLocationsStewieManager(0);
    v44.receiver = v4;
    v44.super_class = v29;
    v30 = objc_msgSendSuper2(&v44, "init");
    v31 = *&v30[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_locationMonitorDistanceThreshold] + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_delegate;
    swift_beginAccess();
    *(v31 + 8) = &off_100590368;
    swift_unknownObjectWeakAssign();
    v32 = v30;
    sub_100108CCC();
    sub_10010FE54();
    sub_100112068();
    sub_10001D6F0();
    sub_10010930C();

    return v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100108CCC()
{
  v1 = v0;
  My = type metadata accessor for Feature.FindMy();
  v7[3] = My;
  v7[4] = sub_10001DFF0(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v3 = sub_10000331C(v7);
  (*(*(My - 8) + 104))(v3, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  v4 = sub_100004984(v7);
  if (My)
  {
    __chkstk_darwin(v4);
    v5._object = 0x80000001004E1680;
    v5._countAndFlagsBits = 0xD000000000000013;
    prohibitAsyncContext(functionName:)(v5);
    sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
    v6 = static OS_dispatch_queue.getSpecific<A>(key:)();
    if (v7[0])
    {
      __chkstk_darwin(v6);
      OS_dispatch_queue.sync<A>(execute:)();
    }

    else
    {
      sub_100108EB4(v1);
    }
  }
}

void sub_100108EB4(_BYTE *a1)
{
  v2 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_coreTelephonyClient;
  v3 = *&a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_coreTelephonyClient];
  if (v3)
  {
    goto LABEL_5;
  }

  v4 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:*&a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue]];
  v5 = *&a1[v2];
  *&a1[v2] = v4;
  v6 = v4;

  if (v6)
  {
    [v6 setDelegate:a1];
  }

  v3 = *&a1[v2];
  if (v3)
  {
LABEL_5:
    v29 = 0;
    v7 = v3;
    v8 = [v7 getStewieSupport:&v29];
    if (v8)
    {
      v9 = v8;
      v10 = v29;
      v11 = [v9 status];
      v12 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isStewieSupported;
      a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isStewieSupported] = v11;
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000A6F0(v13, qword_1005DFB98);
      v14 = a1;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v28 = v7;
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v29 = v18;
        *v17 = 136446466;
        *(v17 + 4) = sub_10000D01C(*&v14[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v14[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v29);
        *(v17 + 12) = 1024;
        *(v17 + 14) = a1[v12];

        _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s - support state %{BOOL}d", v17, 0x12u);
        sub_100004984(v18);
      }

      else
      {
      }
    }

    else
    {
      v19 = v29;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000A6F0(v20, qword_1005DFB98);
      v21 = a1;
      swift_errorRetain();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v24 = 136446466;
        *(v24 + 4) = sub_10000D01C(*&v21[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v21[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v29);
        *(v24 + 12) = 2080;
        swift_errorRetain();
        sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
        v25 = String.init<A>(describing:)();
        v27 = sub_10000D01C(v25, v26, &v29);

        *(v24 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s - unable to get support state %s", v24, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v21[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isStewieSupported] = 0;
    }
  }
}

uint64_t sub_10010930C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v1 - 8);
  v21 = v1;
  __chkstk_darwin(v1);
  v19 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v17 = *(v3 - 8);
  v18 = v3;
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7F60 != -1)
  {
    swift_once();
  }

  aBlock[0] = *(*(qword_1005DFBF8 + 24) + 24);
  *(swift_allocObject() + 16) = v0;

  v10 = v0;
  sub_10004B564(&unk_1005AB520, &unk_1004C54A0);
  sub_10001DF0C(&qword_1005AA6F0, &unk_1005AB520, &unk_1004C54A0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v11 = Publisher<>.sink(receiveValue:)();

  *&v10[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_meDeviceSubscription] = v11;

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v6);
  v12 = static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v9, v6);
  aBlock[4] = sub_1000D71EC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590EE8;
  v13 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  v14 = v19;
  v15 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v20 + 8))(v14, v15);
  return (*(v17 + 8))(v5, v18);
}

void sub_10010979C(unsigned __int8 *a1, void *a2)
{
  if ((*a1 | 4) == 4)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005DFB98);
    v4 = a2;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000D01C(*&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v19);
      v8 = "%{public}s - me device state is unknown or none";
LABEL_6:
      _os_log_impl(&_mh_execute_header, oslog, v5, v8, v6, 0xCu);
      sub_100004984(v7);

      return;
    }

LABEL_19:

    return;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v9 = sub_100021BB4();

  if ((v9 & 1) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000A6F0(v16, qword_1005DFB98);
    v17 = a2;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000D01C(*&v17[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v17[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v19);
      v8 = "%{public}s - me device status changed - device is not a location publishing device. not starting monitor";
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005DFB98);
  v11 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_10000D01C(*&v11[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v11[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v19);
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s - device is location publishing device - requesting startMonitor", v14, 0xCu);
    sub_100004984(v15);
  }

  sub_10001D6F0();
}

void sub_100109B74()
{
  v1 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  if (*&v0[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient])
  {
    v4 = type metadata accessor for Transaction();
    __chkstk_darwin(v4);
    *(&v15 - 2) = v0;
    static Transaction.named<A>(_:with:)();
  }

  else
  {
    v5 = type metadata accessor for SecureLocationsStewie.PublishResult();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = type metadata accessor for SecureLocationsStewie.Error();
    sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error, &protocol conformance descriptor for SecureLocationsStewie.Error);
    v7 = swift_allocError();
    (*(*(v6 - 8) + 104))(v8, enum case for SecureLocationsStewie.Error.initialization(_:), v6);
    sub_100114930(v3, v7);

    sub_100002CE0(v3, &unk_1005AB4C0, &qword_1004C3440);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005DFB98);
    v10 = v0;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_10000D01C(*&v10[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v10[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v16);
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s - no dataClient. Not proceeding with requesting context", v13, 0xCu);
      sub_100004984(v14);
    }
  }
}

uint64_t sub_100109E90(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&a2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a1;
  aBlock[4] = sub_10011F940;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590E48;
  v11 = _Block_copy(aBlock);
  v12 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

void sub_10010A17C(char *a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  v7 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100112E80(0))
  {
    (*(v8 + 104))(v10, enum case for SecureLocationsStewie.ServiceState.publishInProgress(_:), v7);
    sub_100022084(v10);
    (*(v8 + 8))(v10, v7);
    v11 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_coreTelephonyClient;
    v12 = *&a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_coreTelephonyClient];
    if (v12)
    {
      goto LABEL_10;
    }

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005DFB98);
    v14 = a1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_10000D01C(*&v14[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v14[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s - re-creating CT client", v17, 0xCu);
      sub_100004984(v18);
    }

    v19 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:*&v14[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue]];
    v20 = *&a1[v11];
    *&a1[v11] = v19;
    v21 = v19;

    if (v21)
    {
      [v21 setDelegate:v14];
    }

    v12 = *&a1[v11];
    if (v12)
    {
LABEL_10:
      v22 = objc_allocWithZone(CTStewieRequestContext);
      v23 = v12;
      v24 = [v22 init];
      [v24 setReason:6];
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000A6F0(v25, qword_1005DFB98);
      v26 = a1;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        aBlock[0] = v30;
        *v29 = 136446210;
        *(v29 + 4) = sub_10000D01C(*&v26[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v26[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
        _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s - requesting context", v29, 0xCu);
        sub_100004984(v30);
      }

      v31 = swift_allocObject();
      *(v31 + 16) = v26;
      *(v31 + 24) = a2;
      aBlock[4] = sub_10011F988;
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000A8DE8;
      aBlock[3] = &unk_100590E98;
      v32 = _Block_copy(aBlock);
      v33 = v26;

      [v23 requestStewieWithContext:v24 completion:v32];
      _Block_release(v32);
    }

    else
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      sub_10000A6F0(v13, qword_1005DFB98);
      v38 = v14;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        aBlock[0] = v42;
        *v41 = 136446210;
        *(v41 + 4) = sub_10000D01C(*&v38[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v38[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
        _os_log_impl(&_mh_execute_header, v39, v40, "%{public}s - No CoreTelephonyClient", v41, 0xCu);
        sub_100004984(v42);
      }
    }
  }

  else
  {
    v34 = type metadata accessor for SecureLocationsStewie.PublishResult();
    (*(*(v34 - 8) + 56))(v6, 1, 1, v34);
    v35 = type metadata accessor for SecureLocationsStewie.Error();
    sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error, &protocol conformance descriptor for SecureLocationsStewie.Error);
    v36 = swift_allocError();
    (*(*(v35 - 8) + 104))(v37, enum case for SecureLocationsStewie.Error.cannotPublish(_:), v35);
    sub_100114930(v6, v36);

    sub_100002CE0(v6, &unk_1005AB4C0, &qword_1004C3440);
    Transaction.capture()();
  }
}

void sub_10010A88C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005DFB98);
    swift_errorRetain();
    v13 = a2;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = a3;
      v17 = v16;
      v25 = swift_slowAlloc();
      v28[0] = v25;
      *v17 = 136446466;
      *(v17 + 4) = sub_10000D01C(*&v13[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v13[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v28);
      *(v17 + 12) = 2080;
      v27 = a1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v18 = String.init<A>(describing:)();
      v20 = sub_10000D01C(v18, v19, v28);

      *(v17 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s - error requesting context %s", v17, 0x16u);
      swift_arrayDestroy();
    }

    v21 = type metadata accessor for SecureLocationsStewie.PublishResult();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    swift_errorRetain();
    sub_100114930(v11, a1);

    sub_100002CE0(v11, &unk_1005AB4C0, &qword_1004C3440);
    v22 = type metadata accessor for SecureLocationsStewie.Error();
    v23 = (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    __chkstk_darwin(v23);
    *(&v24 - 2) = v13;
    *(&v24 - 1) = v8;
    static Transaction.named<A>(_:with:)();

    sub_100002CE0(v8, &qword_1005A9F00, &qword_1004C3448);
  }

  Transaction.capture()();
}

uint64_t sub_10010AC88(uint64_t a1, char *a2, uint64_t a3)
{
  v22 = a1;
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v21 - v12;
  v23 = *&a2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  sub_100005F04(a3, &v21 - v12, &qword_1005A9F00, &qword_1004C3448);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  sub_1000176A8(v13, v16 + v14, &qword_1005A9F00, &qword_1004C3448);
  *(v16 + v15) = v22;
  aBlock[4] = sub_10011F500;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590D08;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  v19 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v27 + 8))(v6, v19);
  (*(v24 + 8))(v8, v26);
}

void sub_10010B050(void *a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v5 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  __chkstk_darwin(v5 - 8);
  v7 = v55 - v6;
  v8 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  __chkstk_darwin(v8 - 8);
  v57 = v55 - v9;
  v10 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  v59 = *(v10 - 8);
  v11 = *(v59 + 64);
  v12 = __chkstk_darwin(v10);
  v13 = __chkstk_darwin(v12);
  v61 = v55 - v14;
  __chkstk_darwin(v13);
  v16 = v55 - v15;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_10000A6F0(v17, qword_1005DFB98);
  sub_100005F04(a2, v16, &qword_1005A9F00, &qword_1004C3448);
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v58 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v22)
  {
    v23 = swift_slowAlloc();
    v55[1] = v18;
    v24 = v23;
    v25 = swift_slowAlloc();
    v56 = v7;
    v55[0] = v25;
    aBlock[0] = v25;
    *v24 = 136446466;
    *(v24 + 4) = sub_10000D01C(*&v19[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v19[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
    *(v24 + 12) = 2080;
    sub_100005F04(v16, v61, &qword_1005A9F00, &qword_1004C3448);
    v26 = v19;
    v27 = String.init<A>(describing:)();
    v29 = v28;
    sub_100002CE0(v16, &qword_1005A9F00, &qword_1004C3448);
    v30 = sub_10000D01C(v27, v29, aBlock);

    *(v24 + 14) = v30;
    v19 = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s - will exit context - error: %s", v24, 0x16u);
    swift_arrayDestroy();
    v7 = v56;
  }

  else
  {

    sub_100002CE0(v16, &qword_1005A9F00, &qword_1004C3448);
  }

  v31 = *&v19[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_coreTelephonyClient];
  if (v31)
  {
    v32 = objc_allocWithZone(CTStewieExitContext);
    v33 = v31;
    v34 = [v32 init];
    [v34 setReason:2];
    v35 = v61;
    sub_100005F04(a2, v61, &qword_1005A9F00, &qword_1004C3448);
    v36 = (*(v59 + 80) + 24) & ~*(v59 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = v19;
    sub_1000176A8(v35, v37 + v36, &qword_1005A9F00, &qword_1004C3448);
    *(v37 + ((v11 + v36 + 7) & 0xFFFFFFFFFFFFFFF8)) = v60;
    aBlock[4] = sub_10011F704;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000A8DE8;
    aBlock[3] = &unk_100590D58;
    v38 = _Block_copy(aBlock);
    v39 = v19;

    [v33 exitStewieWithContext:v34 completion:v38];
    _Block_release(v38);
  }

  else
  {
    v40 = a2;
    v41 = v19;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v44 = 136446210;
      *(v44 + 4) = sub_10000D01C(*&v41[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v41[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
      _os_log_impl(&_mh_execute_header, v42, v43, "%{public}s - will exit no telephony client", v44, 0xCu);
      sub_100004984(v45);
    }

    v46 = v58;
    sub_1001126B4();
    v47 = type metadata accessor for SecureLocation(0);
    v48 = v57;
    (*(*(v47 - 8) + 56))(v57, 1, 1, v47);
    v49 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_location;
    swift_beginAccess();
    sub_100022364(v48, &v41[v49], &unk_1005AB3F0, &qword_1004C4BF0);
    swift_endAccess();
    v50 = type metadata accessor for SecureLocationsStewie.PublishResult();
    (*(*(v50 - 8) + 56))(v7, 1, 1, v50);
    sub_100005F04(v40, v46, &qword_1005A9F00, &qword_1004C3448);
    v51 = type metadata accessor for SecureLocationsStewie.Error();
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(v46, 1, v51) == 1)
    {
      sub_100002CE0(v46, &qword_1005A9F00, &qword_1004C3448);
      v53 = 0;
    }

    else
    {
      sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error, &protocol conformance descriptor for SecureLocationsStewie.Error);
      v53 = swift_allocError();
      (*(v52 + 32))(v54, v46, v51);
    }

    sub_100114930(v7, v53);

    sub_100002CE0(v7, &unk_1005AB4C0, &qword_1004C3440);
    Transaction.capture()();
  }
}

void sub_10010B83C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - v7;
  v9 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  __chkstk_darwin(v12 - 8);
  v49 = &v46 - v13;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_10000A6F0(v14, qword_1005DFB98);
  v16 = a2;
  swift_errorRetain();
  v47 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v48 = a3;
    v46 = v20;
    v51[0] = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_10000D01C(*&v16[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v16[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v51);
    *(v19 + 12) = 2080;
    v50 = a1;
    swift_errorRetain();
    sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
    v21 = String.init<A>(describing:)();
    v23 = v16;
    v24 = v8;
    v25 = v11;
    v26 = sub_10000D01C(v21, v22, v51);

    *(v19 + 14) = v26;
    v11 = v25;
    v8 = v24;
    v16 = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s - exit completed error - %s", v19, 0x16u);
    swift_arrayDestroy();
    a3 = v48;
  }

  if (a1)
  {
    v27 = v16;
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v48 = a3;
      v51[0] = v31;
      *v30 = 136446466;
      *(v30 + 4) = sub_10000D01C(*&v27[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v27[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v51);
      *(v30 + 12) = 2080;
      v50 = a1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v32 = String.init<A>(describing:)();
      v47 = a1;
      v34 = v16;
      v35 = v8;
      v36 = v11;
      v37 = sub_10000D01C(v32, v33, v51);

      *(v30 + 14) = v37;
      v11 = v36;
      v8 = v35;
      v16 = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s - error exiting %s", v30, 0x16u);
      swift_arrayDestroy();
      a3 = v48;
    }

    else
    {
    }
  }

  sub_1001126B4();
  v38 = type metadata accessor for SecureLocation(0);
  v39 = v49;
  (*(*(v38 - 8) + 56))(v49, 1, 1, v38);
  v40 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_location;
  swift_beginAccess();
  sub_100022364(v39, &v16[v40], &unk_1005AB3F0, &qword_1004C4BF0);
  swift_endAccess();
  v41 = type metadata accessor for SecureLocationsStewie.PublishResult();
  (*(*(v41 - 8) + 56))(v11, 1, 1, v41);
  sub_100005F04(a3, v8, &qword_1005A9F00, &qword_1004C3448);
  v42 = type metadata accessor for SecureLocationsStewie.Error();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v8, 1, v42) == 1)
  {
    sub_100002CE0(v8, &qword_1005A9F00, &qword_1004C3448);
    v44 = 0;
  }

  else
  {
    sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error, &protocol conformance descriptor for SecureLocationsStewie.Error);
    v44 = swift_allocError();
    (*(v43 + 32))(v45, v8, v42);
  }

  sub_100114930(v11, v44);

  sub_100002CE0(v11, &unk_1005AB4C0, &qword_1004C3440);
  Transaction.capture()();
}

void sub_10010BEB0(uint64_t a1)
{
  v3 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  __chkstk_darwin(v3 - 8);
  v5 = v35 - v4;
  v6 = type metadata accessor for SecureLocation(0);
  v7 = __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v35 - v10;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_10000A6F0(v12, qword_1005DFB98);
  sub_100021534(a1, v11, type metadata accessor for SecureLocation);
  v14 = v1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35[1] = v13;
    v18 = v17;
    v36[0] = swift_slowAlloc();
    *v18 = 136446466;
    *(v18 + 4) = sub_10000D01C(*&v14[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v14[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v36);
    *(v18 + 12) = 2080;
    sub_100021534(v11, v9, type metadata accessor for SecureLocation);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    sub_10002178C(v11, type metadata accessor for SecureLocation);
    v22 = sub_10000D01C(v19, v21, v36);

    *(v18 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s publishLocation called with %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10002178C(v11, type metadata accessor for SecureLocation);
  }

  v23 = *&v14[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient];
  if (v23)
  {
    v24 = type metadata accessor for Transaction();
    __chkstk_darwin(v24);
    v35[-2] = v14;
    v35[-1] = a1;
    v25 = v23;
    static Transaction.named<A>(_:with:)();
  }

  else
  {
    v26 = enum case for SecureLocationsStewie.Error.initialization(_:);
    v27 = type metadata accessor for SecureLocationsStewie.Error();
    v28 = *(v27 - 8);
    (*(v28 + 104))(v5, v26, v27);
    (*(v28 + 56))(v5, 0, 1, v27);
    v29 = type metadata accessor for Transaction();
    __chkstk_darwin(v29);
    v35[-2] = v14;
    v35[-1] = v5;
    static Transaction.named<A>(_:with:)();
    sub_100002CE0(v5, &qword_1005A9F00, &qword_1004C3448);
    v30 = v14;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36[0] = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_10000D01C(*&v30[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v30[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v36);
      _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s no dataclient - not proceeding with publishLocation", v33, 0xCu);
      sub_100004984(v34);
    }
  }
}

uint64_t sub_10010C418(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v21 = *(v9 - 8);
  v22 = v9;
  __chkstk_darwin(v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SecureLocation(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v20[1] = *&a2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  sub_100021534(a3, v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SecureLocation);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a1;
  sub_10008DB80(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  aBlock[4] = sub_10011F8C0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590DF8;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v23 + 8))(v8, v6);
  (*(v21 + 8))(v11, v22);
}

void sub_10010C7B0(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  __chkstk_darwin(v5 - 8);
  v7 = v35 - v6;
  v8 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  __chkstk_darwin(v8 - 8);
  v10 = v35 - v9;
  if ((sub_100112E80(1) & 1) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000A6F0(v20, qword_1005DFB98);
    v21 = a1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_10000D01C(*&v21[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v21[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v35);
      _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s - publishLocation(location:) - canPublishLocation is false.", v24, 0xCu);
      sub_100004984(v25);
    }

    v26 = enum case for SecureLocationsStewie.Error.cannotPublish(_:);
    v27 = type metadata accessor for SecureLocationsStewie.Error();
    v28 = *(v27 - 8);
    (*(v28 + 104))(v7, v26, v27);
    (*(v28 + 56))(v7, 0, 1, v27);
    v29 = type metadata accessor for Transaction();
    __chkstk_darwin(v29);
    v35[-2] = v21;
    v35[-1] = v7;
    static Transaction.named<A>(_:with:)();
    sub_100002CE0(v7, &qword_1005A9F00, &qword_1004C3448);
    goto LABEL_13;
  }

  sub_100021534(a3, v10, type metadata accessor for SecureLocation);
  v11 = type metadata accessor for SecureLocation(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_location;
  swift_beginAccess();
  sub_100022364(v10, &a1[v12], &unk_1005AB3F0, &qword_1004C4BF0);
  swift_endAccess();
  v13 = a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isFindMyServiceConnectedToStewie];
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005DFB98);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35[0] = v19;
    *v18 = 136446466;
    *(v18 + 4) = sub_10000D01C(*&v15[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v15[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v35);
    *(v18 + 12) = 1024;
    *(v18 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s - publishLocation - isFindMyAConnectedService: %{BOOL}d", v18, 0x12u);
    sub_100004984(v19);
  }

  if (v13)
  {
    sub_10010CD7C();
LABEL_13:
    Transaction.capture()();
    return;
  }

  v30 = v15;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35[0] = v34;
    *v33 = 136446210;
    *(v33 + 4) = sub_10000D01C(*&v30[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v30[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v35);
    _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s - publish location called but not active service available", v33, 0xCu);
    sub_100004984(v34);
  }
}

void sub_10010CD7C()
{
  v1 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  __chkstk_darwin(v1 - 8);
  v3 = &v41 - v2;
  v4 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for SecureLocation(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v0[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_10;
  }

  if (sub_100112E80(1))
  {
    v17 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_location;
    swift_beginAccess();
    sub_100005F04(&v0[v17], v6, &unk_1005AB3F0, &qword_1004C4BF0);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_100002CE0(v6, &unk_1005AB3F0, &qword_1004C4BF0);
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000A6F0(v18, qword_1005DFB98);
      v19 = v0;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v42 = v23;
        *v22 = 136446210;
        *(v22 + 4) = sub_10000D01C(*&v19[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v19[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v42);
        _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s - no location for publish", v22, 0xCu);
        sub_100004984(v23);
      }
    }

    else
    {
      sub_10008DB80(v6, v10);
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_10000A6F0(v34, qword_1005DFB98);
      v35 = v0;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v42 = v39;
        *v38 = 136446210;
        *(v38 + 4) = sub_10000D01C(*&v35[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v35[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v42);
        _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s - Creating encrypted payload", v38, 0xCu);
        sub_100004984(v39);
      }

      v40 = type metadata accessor for Transaction();
      __chkstk_darwin(v40);
      *(&v41 - 2) = v35;
      *(&v41 - 1) = v10;
      static Transaction.named<A>(_:with:)();
      sub_10002178C(v10, type metadata accessor for SecureLocation);
    }

    return;
  }

  if (qword_1005A7EE8 != -1)
  {
    goto LABEL_19;
  }

LABEL_10:
  v24 = type metadata accessor for Logger();
  sub_10000A6F0(v24, qword_1005DFB98);
  v25 = v0;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v43[0] = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_10000D01C(*&v25[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v25[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v43);
    _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s - _createEncryptedLocation - canPublishLocation is false.", v28, 0xCu);
    sub_100004984(v29);
  }

  v30 = enum case for SecureLocationsStewie.Error.cannotPublish(_:);
  v31 = type metadata accessor for SecureLocationsStewie.Error();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v3, v30, v31);
  (*(v32 + 56))(v3, 0, 1, v31);
  v33 = type metadata accessor for Transaction();
  __chkstk_darwin(v33);
  *(&v41 - 2) = v25;
  *(&v41 - 1) = v3;
  static Transaction.named<A>(_:with:)();
  sub_100002CE0(v3, &qword_1005A9F00, &qword_1004C3448);
}

uint64_t sub_10010D52C(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for SecureLocation(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_100021534(a3, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SecureLocation);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10011F818;
  *(v11 + 24) = v9;
  sub_10008DB80(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);

  v12 = a2;

  sub_1000E69C8();
}

void sub_10010D6D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v37 = a3;
  v8 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  __chkstk_darwin(v8 - 8);
  v36 = &v34 - v9;
  v10 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  __chkstk_darwin(v10 - 8);
  v35 = &v34 - v11;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005DFB98);
  v13 = a5;
  sub_10002CF44(a1, a2);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  sub_10001A794(a1, a2);
  v16 = os_log_type_enabled(v14, v15);
  v34 = a2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v39[0] = swift_slowAlloc();
    *v17 = 136446466;
    *(v17 + 4) = sub_10000D01C(*&v13[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v13[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v39);
    *(v17 + 12) = 2080;
    v38[0] = a1;
    v38[1] = a2;
    sub_10002CF44(a1, a2);
    sub_10004B564(&qword_1005AB500, &qword_1004C5470);
    v18 = String.init<A>(describing:)();
    v20 = sub_10000D01C(v18, v19, v39);

    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s - got encryptedLocation %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  v21 = v37;
  if (v37)
  {
    v22 = v13;
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38[0] = swift_slowAlloc();
      *v25 = 136446466;
      *(v25 + 4) = sub_10000D01C(*&v22[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v22[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v38);
      *(v25 + 12) = 2080;
      v39[0] = v21;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v26 = String.init<A>(describing:)();
      v28 = sub_10000D01C(v26, v27, v38);

      *(v25 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s - error payload %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    v29 = type metadata accessor for SecureLocationsStewie.PublishResult();
    v30 = v35;
    (*(*(v29 - 8) + 56))(v35, 1, 1, v29);
    swift_errorRetain();
    sub_100114930(v30, v21);

    sub_100002CE0(v30, &unk_1005AB4C0, &qword_1004C3440);
    v31 = type metadata accessor for SecureLocationsStewie.Error();
    v32 = v36;
    (*(*(v31 - 8) + 56))(v36, 1, 1, v31);
    v33 = type metadata accessor for Transaction();
    __chkstk_darwin(v33);
    *(&v34 - 2) = v22;
    *(&v34 - 1) = v32;
    static Transaction.named<A>(_:with:)();

    sub_100002CE0(v32, &qword_1005A9F00, &qword_1004C3448);
  }

  else
  {
    sub_10010DC10(a1, v34);
  }

  Transaction.capture()();
}

uint64_t sub_10010DC10(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_10011F3B8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590BC8;
  v13 = _Block_copy(aBlock);
  v14 = v2;
  sub_10002CF44(a1, a2);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

void sub_10010DEF8(char *a1, void **a2, unint64_t a3)
{
  v6 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  __chkstk_darwin(v6 - 8);
  v8 = &v50 - v7;
  if ((sub_100112E80(1) & 1) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A6F0(v11, qword_1005DFB98);
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_10000D01C(*&v12[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v12[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s - publishEncryptedLocation - canPublishLocation returned false", v15, 0xCu);
      sub_100004984(v16);
    }

    v17 = enum case for SecureLocationsStewie.Error.cannotPublish(_:);
    v18 = type metadata accessor for SecureLocationsStewie.Error();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v8, v17, v18);
    (*(v19 + 56))(v8, 0, 1, v18);
    v20 = type metadata accessor for Transaction();
    __chkstk_darwin(v20);
    *(&v50 - 2) = v12;
    *(&v50 - 1) = v8;
    goto LABEL_15;
  }

  if (a3 >> 60 == 15 || (v9 = *&a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient]) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000A6F0(v21, qword_1005DFB98);
    sub_10002CF44(a2, a3);
    v22 = a1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    sub_10001A794(a2, a3);

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      *v25 = 136446722;
      *(v25 + 4) = sub_10000D01C(*&v22[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v22[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v58);
      *(v25 + 12) = 2080;
      aBlock = a2;
      v53 = a3;
      sub_10002CF44(a2, a3);
      sub_10004B564(&qword_1005AB500, &qword_1004C5470);
      v26 = String.init<A>(describing:)();
      v28 = sub_10000D01C(v26, v27, v58);

      *(v25 + 14) = v28;
      *(v25 + 22) = 2080;
      aBlock = *&v22[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient];
      v29 = aBlock;
      sub_10004B564(&qword_1005AB508, &unk_1004C5478);
      v30 = String.init<A>(describing:)();
      v32 = sub_10000D01C(v30, v31, v58);

      *(v25 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s - publishEncryptedLocation - encryptedData: %s dataClient: %s", v25, 0x20u);
      swift_arrayDestroy();
    }

    v33 = enum case for SecureLocationsStewie.Error.sendMessage(_:);
    v34 = type metadata accessor for SecureLocationsStewie.Error();
    v35 = *(v34 - 8);
    (*(v35 + 104))(v8, v33, v34);
    (*(v35 + 56))(v8, 0, 1, v34);
    v36 = type metadata accessor for Transaction();
    __chkstk_darwin(v36);
    *(&v50 - 2) = v22;
    *(&v50 - 1) = v8;
LABEL_15:
    static Transaction.named<A>(_:with:)();
    sub_100002CE0(v8, &qword_1005A9F00, &qword_1004C3448);
    return;
  }

  v10 = objc_allocWithZone(CTStewieFindMyMessage);
  sub_10002CF44(a2, a3);
  sub_10002CF44(a2, a3);
  v51 = v9;
  v37 = sub_10011E568();
  sub_10001A794(a2, a3);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_10000A6F0(v38, qword_1005DFB98);
  v39 = a1;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock = v43;
    *v42 = 136446210;
    *(v42 + 4) = sub_10000D01C(*&v39[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v39[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
    _os_log_impl(&_mh_execute_header, v40, v41, "%{public}s - calling sendMessage", v42, 0xCu);
    sub_100004984(v43);
  }

  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = swift_allocObject();
  v46 = v51;
  *(v45 + 16) = v44;
  *(v45 + 24) = v46;
  v56 = sub_10011F3C4;
  v57 = v45;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_10010FDB4;
  v55 = &unk_100590C18;
  v47 = _Block_copy(&aBlock);
  v48 = v46;
  v49 = v37;

  [v48 sendMessage:v49 completion:v47];
  sub_10001A794(a2, a3);

  _Block_release(v47);
}

void sub_10010E9DC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = *(Strong + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue);
    v15 = Strong;
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = a1;
    v16[4] = a4;
    aBlock[4] = sub_10011F3CC;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_100590C68;
    v17 = _Block_copy(aBlock);
    v34 = v10;
    v18 = v17;
    v33 = v15;
    v19 = a1;
    v20 = a4;
    static DispatchQoS.unspecified.getter();
    v36 = _swiftEmptyArrayStorage;
    sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v34);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000A6F0(v21, qword_1005DFB98);
    v22 = a1;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v25 = 136315394;
      *(v25 + 4) = sub_10000D01C(0x3A656977657473, 0xE700000000000000, aBlock);
      *(v25 + 12) = 2080;
      v26 = v22;
      v27 = [v26 description];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = sub_10000D01C(v28, v30, aBlock);

      *(v25 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "%s - got ack for sendMessage but no self %s", v25, 0x16u);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_10010EE84(void *a1, void *a2, void (*a3)(void, void, void))
{
  v6 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  __chkstk_darwin(v6 - 8);
  v116 = &v98 - v7;
  v106 = type metadata accessor for SecureLocationsStewiePublishReminderNotification(0);
  __chkstk_darwin(v106);
  v107 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v105 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  __chkstk_darwin(v102);
  v115 = &v98 - v12;
  v13 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v13 - 8);
  v104 = &v98 - v14;
  v15 = type metadata accessor for SecureLocationsStewie.PublishResult();
  v118 = *(v15 - 8);
  v119 = v15;
  __chkstk_darwin(v15);
  v112 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  v113 = *(v17 - 8);
  v114 = v17;
  v18 = __chkstk_darwin(v17);
  v103 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v111 = &v98 - v21;
  __chkstk_darwin(v20);
  v117 = &v98 - v22;
  v23 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  __chkstk_darwin(v23 - 8);
  v109 = &v98 - v24;
  v25 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  __chkstk_darwin(v25 - 8);
  v27 = &v98 - v26;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_10000A6F0(v28, qword_1005DFB98);
  v30 = a1;
  v31 = a2;
  v108 = v29;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v110 = v10;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v101 = a3;
    v36 = v35;
    v100 = swift_slowAlloc();
    v120[0] = v100;
    *v36 = 136446466;
    *(v36 + 4) = sub_10000D01C(*&v30[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v30[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v120);
    *(v36 + 12) = 2080;
    v37 = v31;
    v38 = v27;
    v39 = [v37 description];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    LODWORD(v99) = v33;
    v41 = v9;
    v42 = v30;
    v43 = v40;
    v45 = v44;

    v27 = v38;
    v46 = v43;
    v30 = v42;
    v9 = v41;
    v47 = sub_10000D01C(v46, v45, v120);

    *(v36 + 14) = v47;
    v10 = v110;
    _os_log_impl(&_mh_execute_header, v32, v99, "%{public}s - sendMessage returned %s", v36, 0x16u);
    swift_arrayDestroy();

    a3 = v101;
  }

  v48 = *(v10 + 104);
  v48(v27, enum case for SecureLocationsStewie.ServiceState.unknown(_:), v9);
  (*(v10 + 56))(v27, 0, 1, v9);
  v49 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
  swift_beginAccess();
  sub_100022364(v27, &v30[v49], &qword_1005AB4B0, &unk_1004C5410);
  swift_endAccess();
  if ([v31 success])
  {
    v50 = v117;
    static Date.trustedNow.getter(v117);
    v101 = v48;
    sub_10011445C();
    v51 = v111;
    Date.addingTimeInterval(_:)();
    v52 = v113;
    v100 = v9;
    v53 = *(v113 + 16);
    v54 = v104;
    v55 = v50;
    v56 = v114;
    v53(v104, v55, v114);
    v57 = v30;
    v99 = *(v52 + 56);
    v99(v54, 0, 1, v56);
    v53(v103, v51, v56);
    v58 = v112;
    SecureLocationsStewie.PublishResult.init(lastPublished:nextAllowedPublish:)();
    v59 = v118;
    v60 = v109;
    v61 = v58;
    v62 = v119;
    (*(v118 + 16))(v109, v61, v119);
    (*(v59 + 56))(v60, 0, 1, v62);
    sub_100114930(v60, 0);
    sub_100002CE0(v60, &unk_1005AB4C0, &qword_1004C3440);
    v53(v54, v117, v56);
    v99(v54, 0, 1, v56);
    sub_1001083A4(v54);
    v63 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_location;
    swift_beginAccess();
    v64 = v115;
    sub_100005F04(&v57[v63], v115, &unk_1005AB3F0, &qword_1004C4BF0);
    v65 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_lastPublishedLocation;
    swift_beginAccess();
    sub_100022364(v64, &v57[v65], &unk_1005AB3F0, &qword_1004C4BF0);
    swift_endAccess();
    v66 = v105;
    v67 = v100;
    v101(v105, enum case for SecureLocationsStewie.ServiceState.throttled(_:), v100);
    sub_100022084(v66);
    (*(v110 + 8))(v66, v67);
    sub_100111B9C();
    *&v57[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_cntProactiveAlerts] = 1;
    v68 = v106;
    v69 = v107;
    *v107 = 1;
    v70 = *(v68 + 20);
    v71 = enum case for LocalUserNotificationCategory.liteLocationPublishReminder(_:);
    v72 = type metadata accessor for LocalUserNotificationCategory();
    (*(*(v72 - 8) + 104))(v69 + v70, v71, v72);
    sub_10011E234(v69);
    sub_10002178C(v69, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
    sub_10011A9BC();
    v73 = v57;
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v120[0] = swift_slowAlloc();
      *v76 = 136446466;
      *(v76 + 4) = sub_10000D01C(*&v73[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v73[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v120);
      *(v76 + 12) = 2080;
      sub_100005F04(&v57[v63], v64, &unk_1005AB3F0, &qword_1004C4BF0);
      v77 = String.init<A>(describing:)();
      v79 = sub_10000D01C(v77, v78, v120);

      *(v76 + 14) = v79;
      _os_log_impl(&_mh_execute_header, v74, v75, "%{public}s - successfully published %s", v76, 0x16u);
      swift_arrayDestroy();
    }

    v30 = v57;
    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    type metadata accessor for Transaction();
    *(swift_allocObject() + 16) = 1;
    static Transaction.asyncTask(name:block:)();

    (*(v118 + 8))(v112, v119);
    v80 = v114;
    v81 = *(v113 + 8);
    v81(v111, v114);
    v81(v117, v80);
  }

  else
  {
    v82 = v30;
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v120[0] = v86;
      *v85 = 136446210;
      *(v85 + 4) = sub_10000D01C(*&v82[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v82[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v120);
      _os_log_impl(&_mh_execute_header, v83, v84, "%{public}s - failed to publish", v85, 0xCu);
      sub_100004984(v86);
    }

    v64 = v115;
    v87 = v109;
    (*(v118 + 56))(v109, 1, 1, v119);
    v88 = type metadata accessor for SecureLocationsStewie.Error();
    sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error, &protocol conformance descriptor for SecureLocationsStewie.Error);
    v89 = swift_allocError();
    (*(*(v88 - 8) + 104))(v90, enum case for SecureLocationsStewie.Error.sendMessage(_:), v88);
    sub_100114930(v87, v89);

    sub_100002CE0(v87, &unk_1005AB4C0, &qword_1004C3440);
    v91 = [a3 getState];
    sub_100116DE4(v91, 1);

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    type metadata accessor for Transaction();
    *(swift_allocObject() + 16) = 0;
    static Transaction.asyncTask(name:block:)();
  }

  v92 = type metadata accessor for SecureLocation(0);
  (*(*(v92 - 8) + 56))(v64, 1, 1, v92);
  v93 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_location;
  swift_beginAccess();
  sub_100022364(v64, &v30[v93], &unk_1005AB3F0, &qword_1004C4BF0);
  swift_endAccess();
  v94 = type metadata accessor for SecureLocationsStewie.Error();
  v95 = v116;
  (*(*(v94 - 8) + 56))(v116, 1, 1, v94);
  v96 = type metadata accessor for Transaction();
  __chkstk_darwin(v96);
  *(&v98 - 2) = v30;
  *(&v98 - 1) = v95;
  static Transaction.named<A>(_:with:)();
  return sub_100002CE0(v95, &qword_1005A9F00, &qword_1004C3448);
}

double sub_10010FDB4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a2;
  v4();

  return result;
}

uint64_t sub_10010FE54()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-1] - v3;
  My = type metadata accessor for Feature.FindMy();
  v18[3] = My;
  v18[4] = sub_10001DFF0(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v6 = sub_10000331C(v18);
  (*(*(My - 8) + 104))(v6, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  result = sub_100004984(v18);
  if (My)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005DFB98);
    v9 = v0;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_10000D01C(*&v9[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v9[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v18);
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s - setupPublishThrottleTimer", v12, 0xCu);
      sub_100004984(v13);
    }

    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v9;
    v15[5] = ObjectType;
    v16 = v9;
    sub_1001D7F30(0, 0, v4, &unk_1004C5440, v15);

    return static XPCAlarm.unregister(identifier:)();
  }

  return result;
}

uint64_t sub_100110148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v5[4] = swift_task_alloc();
  v6 = swift_task_alloc();
  v5[5] = v6;
  *v6 = v5;
  v6[1] = sub_100110214;

  return daemon.getter();
}

uint64_t sub_100110214(uint64_t a1)
{
  *(*v1 + 48) = a1;

  type metadata accessor for Daemon();
  sub_10001DFF0(&qword_1005AB4E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10011036C, v3, v2);
}

uint64_t sub_10011036C()
{
  *(v0 + 56) = Daemon.xpcAlarmEventHandler.getter();

  return _swift_task_switch(sub_1001103E0, 0, 0);
}

uint64_t sub_1001103E0()
{
  v25 = v0;
  v1 = *(v0 + 56);
  if (v1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005DFB98);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v24 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10000D01C(0xD000000000000045, 0x80000001004DDE90, &v24);
      _os_log_impl(&_mh_execute_header, v3, v4, "Registering listener for %{public}s", v5, 0xCu);
      sub_100004984(v6);
    }

    v7 = *(v0 + 32);
    v8 = type metadata accessor for TaskPriority();
    v22 = *(v0 + 16);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = v1;
    *(v9 + 40) = v22;

    v10 = v22;
    sub_1001D7F30(0, 0, v7, &unk_1004C5450, v9);

    v23 = (&async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:) + async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:));
    v11 = swift_task_alloc();
    *(v0 + 64) = v11;
    *v11 = v0;
    v11[1] = sub_1001107B4;

    return v23(&off_10058ADA0);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 16);
    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005DFB98);
    v15 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 16);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_10000D01C(*(v18 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix), *(v18 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8), &v24);
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s - Daemon not registered XPC Alarm event handler", v19, 0xCu);
      sub_100004984(v20);
    }

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1001107B4()
{

  return _swift_task_switch(sub_1001108B0, 0, 0);
}

uint64_t sub_1001108B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100110918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a5;
  v6 = sub_10004B564(&qword_1005AB4E8, &qword_1004C5458);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[7] = v7;
  v8 = sub_10004B564(&unk_1005AB4F0, &unk_1004C5460);
  v5[8] = v8;
  v5[9] = *(v8 - 8);
  v5[10] = swift_task_alloc();
  v11 = (&async function pointer to dispatch thunk of XPCAlarmEventHandler.asyncStream(name:) + async function pointer to dispatch thunk of XPCAlarmEventHandler.asyncStream(name:));
  v9 = swift_task_alloc();
  v5[11] = v9;
  *v9 = v5;
  v9[1] = sub_100110ABC;

  return v11(v7, 0xD000000000000045, 0x80000001004DDE90);
}

uint64_t sub_100110ABC()
{

  return _swift_task_switch(sub_100110BB8, 0, 0);
}

uint64_t sub_100110BB8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[12] = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_100110CA0;
  v5 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v5);
}

uint64_t sub_100110CA0()
{

  return _swift_task_switch(sub_100110D9C, 0, 0);
}

uint64_t sub_100110D9C()
{
  v16 = v0;
  v2 = v0[2];
  v1 = v0[3];
  if (v1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v3 = v0[4];
    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFB98);
    v5 = v3;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[4] + v0[12];
      v9 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v9 = 136446466;
      *(v9 + 4) = sub_10000D01C(*v8, *(v8 + 8), &v15);
      *(v9 + 12) = 2082;
      v10 = sub_10000D01C(v2, v1, &v15);

      *(v9 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s - XPC alarm fired for %{public}s", v9, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_100111050();
    v13 = swift_task_alloc();
    v0[13] = v13;
    *v13 = v0;
    v13[1] = sub_100110CA0;
    v14 = v0[8];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v14);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100111050()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v5 = *(v18 - 8);
  __chkstk_darwin(v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005DFB98);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = sub_10000D01C(*&v9[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v9[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_10000D01C(0xD000000000000018, 0x80000001004E1760, aBlock);
    _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s - %{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = ObjectType;
  aBlock[4] = sub_10011F228;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590B28;
  v14 = _Block_copy(aBlock);
  v15 = v9;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v19 + 8))(v4, v2);
  (*(v5 + 8))(v7, v18);
}

void sub_10011147C(void *a1)
{
  v2 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v50 = *(v2 - 8);
  __chkstk_darwin(v2);
  v43 = &v41[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10004B564(&qword_1005AB4A8, &qword_1004C5408);
  __chkstk_darwin(v4);
  v6 = &v41[-v5];
  v7 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v8 = __chkstk_darwin(v7 - 8);
  v46 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v48 = &v41[-v11];
  __chkstk_darwin(v10);
  v13 = &v41[-v12];
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_10000A6F0(v14, qword_1005DFB98);
  v16 = a1;
  v47 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = v4;
    v21 = swift_slowAlloc();
    v52[0] = v21;
    *v19 = 136446210;
    *(v19 + 4) = sub_10000D01C(*&v16[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v16[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v52);
    _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s - throttle period complete", v19, 0xCu);
    sub_100004984(v21);
    v4 = v20;
  }

  static XPCAlarm.unregister(identifier:)();
  v22 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
  swift_beginAccess();
  v23 = v50;
  v45 = *(v50 + 104);
  v45(v13, enum case for SecureLocationsStewie.ServiceState.throttled(_:), v2);
  v44 = *(v23 + 56);
  v44(v13, 0, 1, v2);
  v24 = *(v4 + 48);
  v49 = v16;
  sub_100005F04(&v16[v22], v6, &qword_1005AB4B0, &unk_1004C5410);
  sub_100005F04(v13, &v6[v24], &qword_1005AB4B0, &unk_1004C5410);
  v25 = *(v23 + 48);
  if (v25(v6, 1, v2) == 1)
  {
    sub_100002CE0(v13, &qword_1005AB4B0, &unk_1004C5410);
    v26 = v25(&v6[v24], 1, v2);
    v27 = v49;
    if (v26 == 1)
    {
      sub_100002CE0(v6, &qword_1005AB4B0, &unk_1004C5410);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v28 = v48;
  sub_100005F04(v6, v48, &qword_1005AB4B0, &unk_1004C5410);
  if (v25(&v6[v24], 1, v2) == 1)
  {
    sub_100002CE0(v13, &qword_1005AB4B0, &unk_1004C5410);
    (*(v50 + 8))(v28, v2);
    v27 = v49;
LABEL_10:
    sub_100002CE0(v6, &qword_1005AB4A8, &qword_1004C5408);
    goto LABEL_11;
  }

  v34 = v50;
  v35 = v43;
  (*(v50 + 32))(v43, &v6[v24], v2);
  sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState, &protocol conformance descriptor for SecureLocationsStewie.ServiceState);
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = *(v34 + 8);
  v36(v35, v2);
  sub_100002CE0(v13, &qword_1005AB4B0, &unk_1004C5410);
  v36(v48, v2);
  sub_100002CE0(v6, &qword_1005AB4B0, &unk_1004C5410);
  v27 = v49;
  if (v42)
  {
LABEL_15:
    v37 = v46;
    v45(v46, enum case for SecureLocationsStewie.ServiceState.unknown(_:), v2);
    v44(v37, 0, 1, v2);
    swift_beginAccess();
    sub_100022364(v37, &v27[v22], &qword_1005AB4B0, &unk_1004C5410);
    swift_endAccess();
    v38 = *&v27[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient];
    if (v38)
    {
      v39 = v38;
      v40 = [v39 getState];
      sub_100116DE4(v40, 1);
    }

    return;
  }

LABEL_11:
  v29 = v27;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v51[0] = v33;
    *v32 = 136446210;
    *(v32 + 4) = sub_10000D01C(*&v29[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v29[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v51);
    _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s - completed throttle deadline but not in throttled state.doing nothing", v32, 0xCu);
    sub_100004984(v33);
  }
}

void sub_100111B9C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v30 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v30 - v7;
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_10011445C();
    Date.addingTimeInterval(_:)();
    if (qword_1005A7EE8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  sub_10000A6F0(v17, qword_1005DFB98);
  v18 = v30;
  (*(v30 + 16))(v8, v10, v2);
  v19 = v1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31 = v23;
    *v22 = 136446466;
    *(v22 + 4) = sub_10000D01C(*&v19[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v19[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v31);
    *(v22 + 12) = 2048;
    static Date.trustedNow.getter(v5);
    Date.timeIntervalSince(_:)();
    v25 = v24;
    v26 = *(v30 + 8);
    v26(v5, v2);
    v26(v8, v2);
    *(v22 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s - entering throttle - remaining period %f", v22, 0x16u);
    sub_100004984(v23);
  }

  else
  {

    v26 = *(v18 + 8);
    v26(v8, v2);
  }

  String.utf8CString.getter();
  xpc_set_event();

  v27 = xpc_dictionary_create(0, 0, 0);
  Date.timeIntervalSince1970.getter();
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v29 = 1000000000 * v28;
  if ((v28 * 1000000000) >> 64 == v29 >> 63)
  {
    xpc_dictionary_set_date(v27, "Date", v29);
    String.utf8CString.getter();
    xpc_set_event();
    swift_unknownObjectRelease();
    v26(v10, v2);

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_100112068()
{
  v1._object = 0x80000001004E1680;
  v1._countAndFlagsBits = 0xD000000000000013;
  prohibitAsyncContext(functionName:)(v1);
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  v2 = static OS_dispatch_queue.getSpecific<A>(key:)();
  if (v3)
  {
    __chkstk_darwin(v2);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    sub_100112184(v0);
  }
}

void sub_100112184(void *a1)
{
  v3 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  __chkstk_darwin(v3 - 8);
  v5 = &v41[-1] - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v41[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41[-1] - v11;
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  [v13 doubleForKey:v14];
  v16 = v15;

  if (v16 > 0.0)
  {
    Date.init(timeIntervalSince1970:)();
    static Date.trustedNow.getter(v10);
    Date.timeIntervalSince(_:)();
    v18 = v17;
    v19 = sub_10011445C();
    v42 = v6;
    if (v18 >= v19)
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_10000A6F0(v32, qword_1005DFB98);
      v33 = a1;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v41[0] = v37;
        *v36 = 136446210;
        *(v36 + 4) = sub_10000D01C(*&v33[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v33[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v41);
        _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s - device not in throttle period", v36, 0xCu);
        sub_100004984(v37);
      }

      sub_100111050();
    }

    else
    {
      v20 = v19;
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000A6F0(v21, qword_1005DFB98);
      v22 = a1;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v40 = v1;
        v26 = v25;
        v27 = swift_slowAlloc();
        v41[0] = v27;
        *v26 = 136446722;
        *(v26 + 4) = sub_10000D01C(*&v22[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v22[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v41);
        *(v26 + 12) = 2048;
        *(v26 + 14) = v18;
        *(v26 + 22) = 2048;
        *(v26 + 24) = v20;
        _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s - still in throttle period %f. configuredThrottle %f", v26, 0x20u);
        sub_100004984(v27);
      }

      v28 = enum case for SecureLocationsStewie.ServiceState.throttled(_:);
      v29 = type metadata accessor for SecureLocationsStewie.ServiceState();
      v30 = *(v29 - 8);
      (*(v30 + 104))(v5, v28, v29);
      (*(v30 + 56))(v5, 0, 1, v29);
      v31 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
      swift_beginAccess();
      sub_100022364(v5, &v22[v31], &qword_1005AB4B0, &unk_1004C5410);
      swift_endAccess();
      sub_100111B9C();
    }

    v38 = *(v7 + 8);
    v39 = v42;
    v38(v10, v42);
    v38(v12, v39);
  }
}

void sub_1001126B4()
{
  v1 = v0;
  v2 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&qword_1005AB4A8, &qword_1004C5408);
  __chkstk_darwin(v5);
  v7 = &v46 - v6;
  v8 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v9 = __chkstk_darwin(v8 - 8);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v53 = &v46 - v12;
  __chkstk_darwin(v11);
  v14 = &v46 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
  swift_beginAccess();
  v48 = *(v3 + 104);
  v48(v14, enum case for SecureLocationsStewie.ServiceState.publishInProgress(_:), v2);
  v22 = *(v3 + 56);
  v49 = v3 + 56;
  v47 = v22;
  v22(v14, 0, 1, v2);
  v23 = *(v5 + 48);
  v50 = v21;
  v51 = v1;
  sub_100005F04(&v1[v21], v7, &qword_1005AB4B0, &unk_1004C5410);
  sub_100005F04(v14, &v7[v23], &qword_1005AB4B0, &unk_1004C5410);
  v24 = *(v3 + 48);
  if (v24(v7, 1, v2) == 1)
  {
    sub_100002CE0(v14, &qword_1005AB4B0, &unk_1004C5410);
    if (v24(&v7[v23], 1, v2) == 1)
    {
      sub_100002CE0(v7, &qword_1005AB4B0, &unk_1004C5410);
      goto LABEL_9;
    }

LABEL_7:
    sub_100002CE0(v7, &qword_1005AB4A8, &qword_1004C5408);
    return;
  }

  v25 = v53;
  sub_100005F04(v7, v53, &qword_1005AB4B0, &unk_1004C5410);
  if (v24(&v7[v23], 1, v2) == 1)
  {
    sub_100002CE0(v14, &qword_1005AB4B0, &unk_1004C5410);
    (*(v3 + 8))(v25, v2);
    goto LABEL_7;
  }

  v26 = v46;
  (*(v3 + 32))(v46, &v7[v23], v2);
  sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState, &protocol conformance descriptor for SecureLocationsStewie.ServiceState);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v3 + 8);
  v28(v26, v2);
  sub_100002CE0(v14, &qword_1005AB4B0, &unk_1004C5410);
  v28(v25, v2);
  sub_100002CE0(v7, &qword_1005AB4B0, &unk_1004C5410);
  if ((v27 & 1) == 0)
  {
    return;
  }

LABEL_9:
  if (qword_1005A7EE8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000A6F0(v29, qword_1005DFB98);
  v30 = v51;
  v31 = v51;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v54[0] = v35;
    *v34 = 136446210;
    *(v34 + 4) = sub_10000D01C(*&v31[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v31[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v54);
    _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s - resetStateIfPublishInProgress - will reset", v34, 0xCu);
    sub_100004984(v35);
  }

  v36 = v52;
  v48(v52, enum case for SecureLocationsStewie.ServiceState.unknown(_:), v2);
  v47(v36, 0, 1, v2);
  v37 = v50;
  swift_beginAccess();
  sub_100022364(v36, v30 + v37, &qword_1005AB4B0, &unk_1004C5410);
  swift_endAccess();
  v38 = *&v31[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient];
  if (v38)
  {
    v39 = v38;
    v40 = [v39 getState];
    sub_100116DE4(v40, 1);
  }

  else
  {
    v41 = v31;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v54[0] = v45;
      *v44 = 136446210;
      *(v44 + 4) = sub_10000D01C(*&v41[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v41[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v54);
      _os_log_impl(&_mh_execute_header, v42, v43, "%{public}s - resetStateIfPublishInProgress - No data client available", v44, 0xCu);
      sub_100004984(v45);
    }
  }
}

uint64_t sub_100112E80(char a1)
{
  v3._object = 0x80000001004E1680;
  v3._countAndFlagsBits = 0xD000000000000013;
  prohibitAsyncContext(functionName:)(v3);
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  v4 = static OS_dispatch_queue.getSpecific<A>(key:)();
  if (v6)
  {
    __chkstk_darwin(v4);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    sub_100112FB0(v1, a1 & 1, &v6);
  }

  return v6;
}

void sub_100112FB0(char *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v134 = a3;
  v126 = a2;
  v130 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v133 = *(v130 - 8);
  __chkstk_darwin(v130);
  v127 = &v108[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v132 = sub_10004B564(&qword_1005AB4A8, &qword_1004C5408);
  v5 = __chkstk_darwin(v132);
  v125 = &v108[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v124 = &v108[-v8];
  v9 = __chkstk_darwin(v7);
  v128 = &v108[-v10];
  __chkstk_darwin(v9);
  v12 = &v108[-v11];
  v121 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v13 = __chkstk_darwin(v121);
  v120 = &v108[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v122 = &v108[-v16];
  v17 = __chkstk_darwin(v15);
  v129 = &v108[-v18];
  v19 = __chkstk_darwin(v17);
  v123 = &v108[-v20];
  v21 = __chkstk_darwin(v19);
  v131 = &v108[-v22];
  v23 = __chkstk_darwin(v21);
  v25 = &v108[-v24];
  v26 = __chkstk_darwin(v23);
  v28 = &v108[-v27];
  v29 = __chkstk_darwin(v26);
  v31 = &v108[-v30];
  __chkstk_darwin(v29);
  v33 = &v108[-v32];
  My = type metadata accessor for Feature.FindMy();
  v135[3] = My;
  v135[4] = sub_10001DFF0(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v35 = sub_10000331C(v135);
  (*(*(My - 8) + 104))(v35, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v135);
  if ((My & 1) == 0)
  {
    goto LABEL_11;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v36 = sub_100021148();

  if ((v36 & 1) == 0 || a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isStewieSupported] != 1)
  {
LABEL_11:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_10000A6F0(v52, qword_1005DFB98);
    v53 = a1;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_17;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v135[0] = v57;
    *v56 = 136446210;
    *(v56 + 4) = sub_10000D01C(*&v53[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v53[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v135);
    v58 = "%{public}s - canPublishLocation - feature disabled";
    goto LABEL_15;
  }

  v37 = sub_100021BB4();

  if ((v37 & 1) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_10000A6F0(v60, qword_1005DFB98);
    v61 = a1;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_17;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v135[0] = v57;
    *v56 = 136446210;
    *(v56 + 4) = sub_10000D01C(*&v61[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v61[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v135);
    v58 = "%{public}s - canPublishLocation - not a location publishing device. ";
    goto LABEL_15;
  }

  v110 = v25;
  v38 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
  swift_beginAccess();
  v39 = v133;
  v40 = *(v133 + 104);
  v109 = enum case for SecureLocationsStewie.ServiceState.publishInProgress(_:);
  v41 = v130;
  v117 = v133 + 104;
  v115 = v40;
  v40(v33);
  v42 = *(v39 + 56);
  v116 = v39 + 56;
  v114 = v42;
  v42(v33, 0, 1, v41);
  v43 = *(v132 + 48);
  v119 = a1;
  v113 = v38;
  sub_100005F04(&a1[v38], v12, &qword_1005AB4B0, &unk_1004C5410);
  v112 = v43;
  sub_100005F04(v33, &v12[v43], &qword_1005AB4B0, &unk_1004C5410);
  v45 = v133 + 48;
  v44 = *(v133 + 48);
  v46 = v44(v12, 1, v41);
  v118 = v45;
  v111 = v44;
  if (v46 == 1)
  {
    sub_100002CE0(v33, &qword_1005AB4B0, &unk_1004C5410);
    v47 = v44(&v12[v112], 1, v41);
    v48 = v41;
    v49 = v110;
    if (v47 == 1)
    {
      sub_100002CE0(v12, &qword_1005AB4B0, &unk_1004C5410);
      v50 = v113;
      v51 = v131;
      if ((v126 & 1) == 0)
      {
LABEL_38:
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v77 = type metadata accessor for Logger();
        sub_10000A6F0(v77, qword_1005DFB98);
        v78 = v119;
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v54, v55))
        {
          goto LABEL_17;
        }

        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v136 = v57;
        *v56 = 136446210;
        *(v56 + 4) = sub_10000D01C(*&v78[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v78[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v136);
        v58 = "%{public}s - canPublishLocation - publish already in progress";
        goto LABEL_15;
      }

      goto LABEL_26;
    }
  }

  else
  {
    sub_100005F04(v12, v31, &qword_1005AB4B0, &unk_1004C5410);
    if (v44(&v12[v112], 1, v41) != 1)
    {
      v73 = v41;
      v74 = v133;
      v75 = v127;
      (*(v133 + 32))(v127, &v12[v112], v73);
      sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState, &protocol conformance descriptor for SecureLocationsStewie.ServiceState);
      LODWORD(v112) = dispatch thunk of static Equatable.== infix(_:_:)();
      v76 = *(v74 + 8);
      v76(v75, v73);
      sub_100002CE0(v33, &qword_1005AB4B0, &unk_1004C5410);
      v76(v31, v73);
      sub_100002CE0(v12, &qword_1005AB4B0, &unk_1004C5410);
      v48 = v73;
      v50 = v113;
      v51 = v131;
      v49 = v110;
      if ((v112 & 1) != 0 && (v126 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_26;
    }

    sub_100002CE0(v33, &qword_1005AB4B0, &unk_1004C5410);
    (*(v133 + 8))(v31, v41);
    v48 = v41;
    v49 = v110;
  }

  sub_100002CE0(v12, &qword_1005AB4A8, &qword_1004C5408);
  v50 = v113;
  v51 = v131;
LABEL_26:
  v115(v28, enum case for SecureLocationsStewie.ServiceState.throttled(_:), v48);
  v114(v28, 0, 1, v48);
  v62 = *(v132 + 48);
  v63 = v128;
  sub_100005F04(v119 + v50, v128, &qword_1005AB4B0, &unk_1004C5410);
  sub_100005F04(v28, &v63[v62], &qword_1005AB4B0, &unk_1004C5410);
  v64 = v111;
  if (v111(v63, 1, v48) == 1)
  {
    sub_100002CE0(v28, &qword_1005AB4B0, &unk_1004C5410);
    v65 = v64(&v63[v62], 1, v48) == 1;
    v66 = v63;
    v67 = v129;
    if (!v65)
    {
      goto LABEL_32;
    }

    sub_100002CE0(v66, &qword_1005AB4B0, &unk_1004C5410);
  }

  else
  {
    sub_100005F04(v63, v49, &qword_1005AB4B0, &unk_1004C5410);
    if (v64(&v63[v62], 1, v48) == 1)
    {
      sub_100002CE0(v28, &qword_1005AB4B0, &unk_1004C5410);
      (*(v133 + 8))(v49, v48);
      v66 = v63;
      v67 = v129;
LABEL_32:
      sub_100002CE0(v66, &qword_1005AB4A8, &qword_1004C5408);
      goto LABEL_33;
    }

    v81 = v133;
    v82 = &v63[v62];
    v83 = v63;
    v84 = v127;
    (*(v133 + 32))(v127, v82, v48);
    sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState, &protocol conformance descriptor for SecureLocationsStewie.ServiceState);
    v85 = dispatch thunk of static Equatable.== infix(_:_:)();
    v86 = *(v81 + 8);
    v86(v84, v48);
    sub_100002CE0(v28, &qword_1005AB4B0, &unk_1004C5410);
    v86(v49, v48);
    v51 = v131;
    v50 = v113;
    v87 = v83;
    v64 = v111;
    sub_100002CE0(v87, &qword_1005AB4B0, &unk_1004C5410);
    v67 = v129;
    if ((v85 & 1) == 0)
    {
LABEL_33:
      v115(v51, enum case for SecureLocationsStewie.ServiceState.available(_:), v48);
      v114(v51, 0, 1, v48);
      v68 = *(v132 + 48);
      v69 = v124;
      sub_100005F04(v119 + v50, v124, &qword_1005AB4B0, &unk_1004C5410);
      v70 = v69;
      sub_100005F04(v51, &v69[v68], &qword_1005AB4B0, &unk_1004C5410);
      if (v64(v69, 1, v48) == 1)
      {
        sub_100002CE0(v51, &qword_1005AB4B0, &unk_1004C5410);
        v71 = v64(&v69[v68], 1, v48);
        v72 = v125;
        if (v71 == 1)
        {
          sub_100002CE0(v70, &qword_1005AB4B0, &unk_1004C5410);
          v59 = 1;
          goto LABEL_18;
        }
      }

      else
      {
        v79 = v123;
        sub_100005F04(v69, v123, &qword_1005AB4B0, &unk_1004C5410);
        if (v64(&v69[v68], 1, v48) != 1)
        {
          v98 = v133;
          v99 = &v69[v68];
          v100 = v127;
          (*(v133 + 32))(v127, v99, v48);
          sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState, &protocol conformance descriptor for SecureLocationsStewie.ServiceState);
          LODWORD(v131) = dispatch thunk of static Equatable.== infix(_:_:)();
          v101 = *(v98 + 8);
          v101(v100, v48);
          sub_100002CE0(v51, &qword_1005AB4B0, &unk_1004C5410);
          v64 = v111;
          v101(v79, v48);
          v67 = v129;
          sub_100002CE0(v70, &qword_1005AB4B0, &unk_1004C5410);
          v72 = v125;
          if (v131)
          {
            goto LABEL_65;
          }

LABEL_45:
          v115(v67, v109, v48);
          v114(v67, 0, 1, v48);
          v80 = *(v132 + 48);
          sub_100005F04(v119 + v50, v72, &qword_1005AB4B0, &unk_1004C5410);
          sub_100005F04(v67, v72 + v80, &qword_1005AB4B0, &unk_1004C5410);
          if (v64(v72, 1, v48) == 1)
          {
            sub_100002CE0(v67, &qword_1005AB4B0, &unk_1004C5410);
            if (v64((v72 + v80), 1, v48) == 1)
            {
              sub_100002CE0(v72, &qword_1005AB4B0, &unk_1004C5410);
              if (v126)
              {
LABEL_65:
                v59 = 1;
                goto LABEL_18;
              }

LABEL_57:
              if (qword_1005A7EE8 != -1)
              {
                swift_once();
              }

              v91 = type metadata accessor for Logger();
              sub_10000A6F0(v91, qword_1005DFB98);
              v92 = v119;
              v54 = Logger.logObject.getter();
              v93 = static os_log_type_t.default.getter();

              if (!os_log_type_enabled(v54, v93))
              {
                goto LABEL_17;
              }

              v94 = swift_slowAlloc();
              v136 = swift_slowAlloc();
              *v94 = 136446466;
              *(v94 + 4) = sub_10000D01C(*&v92[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v92[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v136);
              *(v94 + 12) = 2080;
              sub_100005F04(v119 + v50, v120, &qword_1005AB4B0, &unk_1004C5410);
              v95 = String.init<A>(describing:)();
              v97 = sub_10000D01C(v95, v96, &v136);

              *(v94 + 14) = v97;
              _os_log_impl(&_mh_execute_header, v54, v93, "%{public}s - canPublishLocation - state is not available %s", v94, 0x16u);
              swift_arrayDestroy();

              goto LABEL_16;
            }
          }

          else
          {
            v90 = v122;
            sub_100005F04(v72, v122, &qword_1005AB4B0, &unk_1004C5410);
            if (v64((v72 + v80), 1, v48) != 1)
            {
              v102 = v133;
              v103 = v72 + v80;
              v104 = v127;
              (*(v133 + 32))(v127, v103, v48);
              sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState, &protocol conformance descriptor for SecureLocationsStewie.ServiceState);
              v105 = dispatch thunk of static Equatable.== infix(_:_:)();
              v106 = v67;
              v107 = *(v102 + 8);
              v107(v104, v48);
              sub_100002CE0(v106, &qword_1005AB4B0, &unk_1004C5410);
              v107(v90, v48);
              v50 = v113;
              sub_100002CE0(v72, &qword_1005AB4B0, &unk_1004C5410);
              if (v105 & 1) != 0 && (v126)
              {
                goto LABEL_65;
              }

              goto LABEL_57;
            }

            sub_100002CE0(v67, &qword_1005AB4B0, &unk_1004C5410);
            (*(v133 + 8))(v90, v48);
          }

          sub_100002CE0(v72, &qword_1005AB4A8, &qword_1004C5408);
          goto LABEL_57;
        }

        sub_100002CE0(v51, &qword_1005AB4B0, &unk_1004C5410);
        (*(v133 + 8))(v79, v48);
        v72 = v125;
      }

      sub_100002CE0(v70, &qword_1005AB4A8, &qword_1004C5408);
      goto LABEL_45;
    }
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v88 = type metadata accessor for Logger();
  sub_10000A6F0(v88, qword_1005DFB98);
  v89 = v119;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v54, v55))
  {
    goto LABEL_17;
  }

  v56 = swift_slowAlloc();
  v57 = swift_slowAlloc();
  v136 = v57;
  *v56 = 136446210;
  *(v56 + 4) = sub_10000D01C(*&v89[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v89[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v136);
  v58 = "%{public}s - canPublishLocation - publish is throttled";
LABEL_15:
  _os_log_impl(&_mh_execute_header, v54, v55, v58, v56, 0xCu);
  sub_100004984(v57);

LABEL_16:

LABEL_17:

  v59 = 0;
LABEL_18:
  *v134 = v59;
}

double sub_10011445C()
{
  v1 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004BA244(0xD00000000000001BLL);
  if (v5)
  {
    if (qword_1005A7EF8 != -1)
    {
      swift_once();
    }

    v6 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

    os_unfair_lock_lock(v6);
    v7 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_100021534(v6 + *(v7 + 28), v3, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v6);

    v8 = v3[13];
    sub_10002178C(v3, type metadata accessor for SecureLocationsConfig);
  }

  else
  {
    v9 = v4;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFB98);
    v11 = v0;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136446466;
      *(v14 + 4) = sub_10000D01C(*&v11[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v11[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v18);
      *(v14 + 12) = 2048;
      *(v14 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s - using defaults override for timeBetweenPublish %ld", v14, 0x16u);
      sub_100004984(v15);
    }

    return v9;
  }

  return v8;
}

void sub_100114710(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_publishCompletions;
  swift_beginAccess();
  v8 = *&a1[v7];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a1[v7] = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1001FD2E8(0, v8[2] + 1, 1, v8);
    *&a1[v7] = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1001FD2E8((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = sub_10011F154;
  v12[5] = v6;
  *&a1[v7] = v8;
  swift_endAccess();
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFB98);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19[0] = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_10000D01C(*&v14[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v14[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v19);
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s - added callback for location publish", v17, 0xCu);
    sub_100004984(v18);
  }
}

uint64_t sub_100114930(uint64_t a1, uint64_t a2)
{
  v21[0] = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v14 = v21 - v13;
  v21[1] = *&v2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  sub_100005F04(a1, v21 - v13, &unk_1005AB4C0, &qword_1004C3440);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  sub_1000176A8(v14, v17 + v15, &unk_1005AB4C0, &qword_1004C3440);
  *(v17 + v16) = v21[0];
  aBlock[4] = sub_10011EFEC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_1005909E8;
  v18 = _Block_copy(aBlock);
  v19 = v2;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v24 + 8))(v6, v4);
  (*(v22 + 8))(v9, v23);
}

double sub_100114CE0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005DFB98);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_10000D01C(*&v7[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v7[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v18);
    *(v10 + 12) = 2048;
    v12 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_publishCompletions;
    swift_beginAccess();
    *(v10 + 14) = *(*&v7[v12] + 16);

    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s - calling completions %ld", v10, 0x16u);
    sub_100004984(v11);
  }

  else
  {
  }

  v13 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_publishCompletions;
  v14 = swift_beginAccess();
  v15 = *&v7[v13];
  __chkstk_darwin(v14);
  v17[2] = a2;
  v17[3] = a3;

  sub_10008E2F8(sub_10011F014, v17, v15);

  *&v7[v13] = _swiftEmptyArrayStorage;

  return result;
}

uint64_t sub_100114F10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v16 = a1[1];
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v12);

  v19 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v15, v12);
  sub_100005F04(v28, v11, &unk_1005AB4C0, &qword_1004C3440);
  v20 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10011F030;
  *(v21 + 24) = v18;
  sub_1000176A8(v11, v21 + v20, &unk_1005AB4C0, &qword_1004C3440);
  *(v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
  aBlock[4] = sub_10011F068;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590A60;
  v22 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  v24 = v30;
  v23 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v34 + 8))(v24, v23);
  (*(v32 + 8))(v7, v33);
}

void sub_1001153F4(char a1, void *a2)
{
  if (a1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005DFB98);
    v4 = a2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(*&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v15);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s - secure locations is setup - requesting startMonitor", v7, 0xCu);
      sub_100004984(v8);
    }

    sub_10001D6F0();
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005DFB98);
    v10 = a2;
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_10000D01C(*&v10[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v10[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v15);
      _os_log_impl(&_mh_execute_header, oslog, v11, "%{public}s - setupSecureLocations returned as false. Cannot start monitor. Not retrying to avoid loop", v12, 0xCu);
      sub_100004984(v13);
    }
  }
}

uint64_t sub_10011568C(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for SecureLocationsStewie.Error();
  sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error, &protocol conformance descriptor for SecureLocationsStewie.Error);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, enum case for SecureLocationsStewie.Error.initialization(_:), v2);
  a1(v3);
}

uint64_t sub_100115794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  __chkstk_darwin(v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v5[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = v20[0];
  v17 = _Block_copy(aBlock);
  v18 = v5;

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

uint64_t sub_100115A6C(char *a1, uint64_t a2, uint64_t a3)
{
  v84 = a2;
  v85 = a3;
  v80 = type metadata accessor for DispatchWorkItemFlags();
  v90 = *(v80 - 8);
  __chkstk_darwin(v80);
  v87 = &v70[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for DispatchQoS();
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin(v5);
  v86 = &v70[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v82 = *(v7 - 8);
  v83 = v7;
  __chkstk_darwin(v7);
  v81 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  __chkstk_darwin(v9 - 8);
  v11 = &v70[-v10];
  v12 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v79 = &v70[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v15);
  v18 = &v70[-v17];
  __chkstk_darwin(v16);
  v20 = &v70[-v19];
  v21 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
  swift_beginAccess();
  sub_100005F04(&a1[v21], v11, &qword_1005AB4B0, &unk_1004C5410);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100002CE0(v11, &qword_1005AB4B0, &unk_1004C5410);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005DFB98);
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_10000D01C(*&v23[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v23[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
      _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s - no current state - responding as unknown", v26, 0xCu);
      sub_100004984(v27);
    }

    sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
    v29 = v81;
    v28 = v82;
    v30 = v83;
    (*(v82 + 104))(v81, enum case for DispatchQoS.QoSClass.default(_:), v83);
    v31 = static OS_dispatch_queue.global(qos:)();
    (*(v28 + 8))(v29, v30);
    v32 = swift_allocObject();
    v33 = v85;
    *(v32 + 16) = v84;
    *(v32 + 24) = v33;
    v96 = sub_10011EF5C;
    v97 = v32;
    aBlock = _NSConcreteStackBlock;
    v93 = 1107296256;
    v94 = sub_100020828;
    v95 = &unk_1005907B8;
    v34 = _Block_copy(&aBlock);

    v35 = v86;
    static DispatchQoS.unspecified.getter();
    v91 = _swiftEmptyArrayStorage;
    sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    v36 = v87;
    v37 = v80;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);

    (*(v90 + 8))(v36, v37);
    (*(v88 + 8))(v35, v89);
  }

  else
  {
    v38 = *(v13 + 32);
    v77 = v13 + 32;
    v76 = v38;
    v38(v20, v11, v12);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000A6F0(v39, qword_1005DFB98);
    v40 = *(v13 + 16);
    v78 = v20;
    v41 = v20;
    v42 = v40;
    v40(v18, v41, v12);
    v43 = a1;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    v46 = os_log_type_enabled(v44, v45);
    v73 = v42;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v71 = v45;
      v48 = v47;
      v72 = swift_slowAlloc();
      aBlock = v72;
      *v48 = 136446466;
      *(v48 + 4) = sub_10000D01C(*&v43[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v43[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
      *(v48 + 12) = 2080;
      v49 = v79;
      v42(v79, v18, v12);
      v50 = sub_100107C6C(v49);
      v52 = v51;
      v53 = *(v13 + 8);
      v74 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v75 = v53;
      v53(v18, v12);
      v54 = sub_10000D01C(v50, v52, &aBlock);
      v55 = v49;

      *(v48 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v44, v71, "%{public}s - currentState %s", v48, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v56 = *(v13 + 8);
      v74 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v75 = v56;
      v56(v18, v12);
      v55 = v79;
    }

    sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
    v58 = v81;
    v57 = v82;
    v59 = v83;
    (*(v82 + 104))(v81, enum case for DispatchQoS.QoSClass.default(_:), v83);
    v60 = static OS_dispatch_queue.global(qos:)();
    (*(v57 + 8))(v58, v59);
    v61 = v78;
    v73(v55, v78, v12);
    v62 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v63 = swift_allocObject();
    v64 = v85;
    *(v63 + 16) = v84;
    *(v63 + 24) = v64;
    v76(v63 + v62, v55, v12);
    v96 = sub_10011EF64;
    v97 = v63;
    aBlock = _NSConcreteStackBlock;
    v93 = 1107296256;
    v94 = sub_100020828;
    v95 = &unk_100590808;
    v65 = _Block_copy(&aBlock);

    v66 = v86;
    static DispatchQoS.unspecified.getter();
    v91 = _swiftEmptyArrayStorage;
    sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    v67 = v87;
    v68 = v80;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v65);

    (*(v90 + 8))(v67, v68);
    (*(v88 + 8))(v66, v89);
    v75(v61, v12);
  }
}

uint64_t sub_1001165DC(void (*a1)(char *, void))
{
  v2 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for SecureLocationsStewie.ServiceState.unknown(_:), v2);
  a1(v5, 0);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100116704(void *a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v42[1] = a3;
  v43 = a2;
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v4 - 8);
  v6 = v42 - v5;
  v7 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  __chkstk_darwin(v7 - 8);
  v9 = v42 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v42 - v16;
  __chkstk_darwin(v15);
  v19 = v42 - v18;
  My = type metadata accessor for Feature.FindMy();
  v44[3] = My;
  v44[4] = sub_10001DFF0(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v21 = sub_10000331C(v44);
  (*(*(My - 8) + 104))(v21, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v44);
  if ((My & 1) == 0)
  {
    goto LABEL_8;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v22 = sub_100021148();

  if ((v22 & 1) != 0 && *(a1 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isStewieSupported) == 1)
  {
    v23 = [objc_opt_self() standardUserDefaults];
    v24 = String._bridgeToObjectiveC()();
    [v23 doubleForKey:v24];
    v26 = v25;

    if (v26 > 0.0)
    {
      Date.init(timeIntervalSince1970:)();
      sub_10011445C();
      Date.addingTimeInterval(_:)();
      v27 = *(v11 + 16);
      v27(v6, v19, v10);
      (*(v11 + 56))(v6, 0, 1, v10);
      v27(v14, v17, v10);
      SecureLocationsStewie.PublishResult.init(lastPublished:nextAllowedPublish:)();
      v28 = type metadata accessor for SecureLocationsStewie.PublishResult();
      (*(*(v28 - 8) + 56))(v9, 0, 1, v28);
      v43(v9, 0);
      sub_100002CE0(v9, &unk_1005AB4C0, &qword_1004C3440);
      v29 = *(v11 + 8);
      v29(v17, v10);
      return (v29)(v19, v10);
    }

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000A6F0(v35, qword_1005DFB98);
    v36 = a1;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44[0] = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_10000D01C(*&v36[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v36[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v44);
      _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s - no last publish. allow immediate", v39, 0xCu);
      sub_100004984(v40);
    }

    (*(v11 + 56))(v6, 1, 1, v10);
    static Date.trustedNow.getter(v17);
    SecureLocationsStewie.PublishResult.init(lastPublished:nextAllowedPublish:)();
    v41 = type metadata accessor for SecureLocationsStewie.PublishResult();
    (*(*(v41 - 8) + 56))(v9, 0, 1, v41);
    v43(v9, 0);
  }

  else
  {
LABEL_8:
    v31 = type metadata accessor for SecureLocationsStewie.PublishResult();
    (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
    v32 = type metadata accessor for SecureLocationsStewie.Error();
    sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error, &protocol conformance descriptor for SecureLocationsStewie.Error);
    v33 = swift_allocError();
    (*(*(v32 - 8) + 104))(v34, enum case for SecureLocationsStewie.Error.disabled(_:), v32);
    v43(v9, v33);
  }

  return sub_100002CE0(v9, &unk_1005AB4C0, &qword_1004C3440);
}

uint64_t sub_100116DE4(char *a1, int a2)
{
  v3 = v2;
  v168 = a2;
  v163 = a1;
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v5 = __chkstk_darwin(v4 - 8);
  v158 = &v151[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v160 = &v151[-v7];
  v8 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v171 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v151[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v170 = sub_10004B564(&qword_1005AB4A8, &qword_1004C5408);
  v11 = __chkstk_darwin(v170);
  v169 = &v151[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v161 = &v151[-v14];
  __chkstk_darwin(v13);
  v16 = &v151[-v15];
  v166 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v17 = __chkstk_darwin(v166);
  v167 = &v151[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v165 = &v151[-v20];
  v21 = __chkstk_darwin(v19);
  v159 = &v151[-v22];
  v23 = __chkstk_darwin(v21);
  v162 = &v151[-v24];
  v25 = __chkstk_darwin(v23);
  v173 = &v151[-v26];
  v27 = __chkstk_darwin(v25);
  v29 = &v151[-v28];
  v30 = __chkstk_darwin(v27);
  v32 = &v151[-v31];
  __chkstk_darwin(v30);
  v174 = &v151[-v33];
  v34 = type metadata accessor for DispatchPredicate();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v151[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = *(v3 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue);
  *v37 = v38;
  (*(v35 + 104))(v37, enum case for DispatchPredicate.onQueue(_:), v34);
  v39 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v41 = *(v35 + 8);
  v40 = (v35 + 8);
  v41(v37, v34);
  if ((v38 & 1) == 0)
  {
    __break(1u);
    goto LABEL_83;
  }

  v42 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
  swift_beginAccess();
  v172 = v42;
  sub_100005F04(v3 + v42, v174, &qword_1005AB4B0, &unk_1004C5410);
  My = type metadata accessor for Feature.FindMy();
  v176[3] = My;
  v176[4] = sub_10001DFF0(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v44 = sub_10000331C(v176);
  (*(*(My - 8) + 104))(v44, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v176);
  v45 = v3;
  v164 = v10;
  if ((My & 1) == 0)
  {
    goto LABEL_10;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v46 = sub_100021148();

  if ((v46 & 1) == 0 || *(v3 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isStewieSupported) != 1)
  {
LABEL_10:
    v52 = v171;
    v53 = v173;
    (*(v171 + 104))(v173, enum case for SecureLocationsStewie.ServiceState.disabled(_:), v8);
    (*(v52 + 56))(v53, 0, 1, v8);
    v10 = v172;
    swift_beginAccess();
    sub_100022364(v53, &v10[v3], &qword_1005AB4B0, &unk_1004C5410);
    swift_endAccess();
    goto LABEL_11;
  }

  v47 = v171;
  v48 = *(v171 + 104);
  v155 = v171 + 104;
  v154 = v48;
  v48(v32, enum case for SecureLocationsStewie.ServiceState.publishInProgress(_:), v8);
  v49 = *(v47 + 56);
  v157 = v47 + 56;
  v156 = v49;
  v49(v32, 0, 1, v8);
  v50 = *(v170 + 48);
  sub_100005F04(v45 + v172, v16, &qword_1005AB4B0, &unk_1004C5410);
  sub_100005F04(v32, &v16[v50], &qword_1005AB4B0, &unk_1004C5410);
  v51 = *(v47 + 48);
  if (v51(v16, 1, v8) == 1)
  {
    sub_100002CE0(v32, &qword_1005AB4B0, &unk_1004C5410);
    if (v51(&v16[v50], 1, v8) == 1)
    {
      sub_100002CE0(v16, &qword_1005AB4B0, &unk_1004C5410);
LABEL_54:
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v117 = type metadata accessor for Logger();
      sub_10000A6F0(v117, qword_1005DFB98);
      v118 = v45;
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v176[0] = v163;
        *v121 = 136446466;
        *(v121 + 4) = sub_10000D01C(*&v118[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v118[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v176);
        *(v121 + 12) = 2080;
        v10 = v172;
        sub_100005F04(v45 + v172, v173, &qword_1005AB4B0, &unk_1004C5410);
        v122 = String.init<A>(describing:)();
        v124 = sub_10000D01C(v122, v123, v176);

        *(v121 + 14) = v124;
        _os_log_impl(&_mh_execute_header, v119, v120, "%{public}s - not updating state since existing state is %s", v121, 0x16u);
        swift_arrayDestroy();

        v3 = v45;
        v52 = v171;
        goto LABEL_11;
      }

      goto LABEL_64;
    }

    goto LABEL_33;
  }

  sub_100005F04(v16, v29, &qword_1005AB4B0, &unk_1004C5410);
  if (v51(&v16[v50], 1, v8) == 1)
  {
    sub_100002CE0(v32, &qword_1005AB4B0, &unk_1004C5410);
    (*(v171 + 8))(v29, v8);
LABEL_33:
    v153 = v51;
    sub_100002CE0(v16, &qword_1005AB4A8, &qword_1004C5408);
    goto LABEL_34;
  }

  v153 = v51;
  v115 = v171;
  (*(v171 + 32))(v10, &v16[v50], v8);
  sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState, &protocol conformance descriptor for SecureLocationsStewie.ServiceState);
  v152 = dispatch thunk of static Equatable.== infix(_:_:)();
  v116 = *(v115 + 8);
  v116(v10, v8);
  sub_100002CE0(v32, &qword_1005AB4B0, &unk_1004C5410);
  v116(v29, v8);
  sub_100002CE0(v16, &qword_1005AB4B0, &unk_1004C5410);
  if (v152)
  {
    goto LABEL_54;
  }

LABEL_34:
  v89 = v163;
  if (([v163 allowedServices] & 4) == 0)
  {
    if ([v89 status] == 1 && (objc_msgSend(v89, "reason") == 4 || objc_msgSend(v89, "reason") == 5))
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      sub_10000A6F0(v90, qword_1005DFB98);
      v91 = v45;
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v176[0] = v95;
        *v94 = 136446210;
        *(v94 + 4) = sub_10000D01C(*&v91[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v91[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v176);
        _os_log_impl(&_mh_execute_header, v92, v93, "%{public}s - FindMy publish is not allowed due to geo reasons", v94, 0xCu);
        sub_100004984(v95);
      }

      v96 = [objc_opt_self() locationServicesEnabled];
      v97 = v91;
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.default.getter();

      v100 = os_log_type_enabled(v98, v99);
      if (v96)
      {
        if (v100)
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v176[0] = v102;
          *v101 = 136446210;
          *(v101 + 4) = sub_10000D01C(*&v97[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v97[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v176);
          _os_log_impl(&_mh_execute_header, v98, v99, "%{public}s - Location services are enabled", v101, 0xCu);
          sub_100004984(v102);
        }

        v10 = v172;
        v103 = &enum case for SecureLocationsStewie.ServiceState.disabledInGeo(_:);
      }

      else
      {
        if (v100)
        {
          v142 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          v176[0] = v143;
          *v142 = 136446210;
          *(v142 + 4) = sub_10000D01C(*&v97[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v97[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v176);
          _os_log_impl(&_mh_execute_header, v98, v99, "%{public}s - Location services are disabled", v142, 0xCu);
          sub_100004984(v143);
        }

        v10 = v172;
        v103 = &enum case for SecureLocationsStewie.ServiceState.unavailableLocationServices(_:);
      }
    }

    else
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v125 = type metadata accessor for Logger();
      sub_10000A6F0(v125, qword_1005DFB98);
      v126 = v45;
      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v176[0] = v130;
        *v129 = 136446210;
        *(v129 + 4) = sub_10000D01C(*&v126[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v126[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v176);
        _os_log_impl(&_mh_execute_header, v127, v128, "%{public}s - FindMy publish is not available", v129, 0xCu);
        sub_100004984(v130);
      }

      v10 = v172;
      v103 = &enum case for SecureLocationsStewie.ServiceState.unavailable(_:);
    }

    v144 = v173;
    v154(v173, *v103, v8);
    v156(v144, 0, 1, v8);
    swift_beginAccess();
    sub_100022364(v144, &v10[v45], &qword_1005AB4B0, &unk_1004C5410);
    swift_endAccess();
    sub_10011C040();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v145 = type metadata accessor for Logger();
    sub_10000A6F0(v145, qword_1005DFB98);
    v3 = v45;
    v146 = v45;
    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v176[0] = v150;
      *v149 = 136446210;
      *(v149 + 4) = sub_10000D01C(*&v146[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v146[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v176);
      _os_log_impl(&_mh_execute_header, v147, v148, "%{public}s - unregistered reminder notification timer", v149, 0xCu);
      sub_100004984(v150);
      v10 = v172;
    }

    v52 = v171;
    goto LABEL_11;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v104 = type metadata accessor for Logger();
  sub_10000A6F0(v104, qword_1005DFB98);
  v105 = v45;
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.default.getter();

  v108 = os_log_type_enabled(v106, v107);
  v109 = v161;
  if (v108)
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v176[0] = v111;
    *v110 = 136446210;
    *(v110 + 4) = sub_10000D01C(*&v105[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v105[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v176);
    _os_log_impl(&_mh_execute_header, v106, v107, "%{public}s - FindMy Publish is allowed", v110, 0xCu);
    sub_100004984(v111);
  }

  v112 = v162;
  v163 = v105;
  sub_100112068();
  v154(v112, enum case for SecureLocationsStewie.ServiceState.throttled(_:), v8);
  v156(v112, 0, 1, v8);
  v113 = *(v170 + 48);
  sub_100005F04(v45 + v172, v109, &qword_1005AB4B0, &unk_1004C5410);
  sub_100005F04(v112, v109 + v113, &qword_1005AB4B0, &unk_1004C5410);
  v114 = v153;
  if (v153(v109, 1, v8) == 1)
  {
    sub_100002CE0(v112, &qword_1005AB4B0, &unk_1004C5410);
    if (v114(v109 + v113, 1, v8) == 1)
    {
      sub_100002CE0(v109, &qword_1005AB4B0, &unk_1004C5410);
LABEL_64:
      v3 = v45;
      v52 = v171;
      v10 = v172;
      goto LABEL_11;
    }
  }

  else
  {
    v131 = v159;
    sub_100005F04(v109, v159, &qword_1005AB4B0, &unk_1004C5410);
    if (v114(v109 + v113, 1, v8) != 1)
    {
      v52 = v171;
      (*(v171 + 32))(v10, v109 + v113, v8);
      sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState, &protocol conformance descriptor for SecureLocationsStewie.ServiceState);
      LODWORD(v153) = dispatch thunk of static Equatable.== infix(_:_:)();
      v141 = *(v52 + 8);
      v141(v10, v8);
      sub_100002CE0(v162, &qword_1005AB4B0, &unk_1004C5410);
      v141(v131, v8);
      sub_100002CE0(v109, &qword_1005AB4B0, &unk_1004C5410);
      v3 = v45;
      v10 = v172;
      v132 = v163;
      if (v153)
      {
        goto LABEL_11;
      }

      goto LABEL_68;
    }

    sub_100002CE0(v112, &qword_1005AB4B0, &unk_1004C5410);
    (*(v171 + 8))(v131, v8);
  }

  sub_100002CE0(v109, &qword_1005AB4A8, &qword_1004C5408);
  v3 = v45;
  v52 = v171;
  v10 = v172;
  v132 = v163;
LABEL_68:
  v133 = v173;
  v154(v173, enum case for SecureLocationsStewie.ServiceState.available(_:), v8);
  v156(v133, 0, 1, v8);
  swift_beginAccess();
  sub_100022364(v133, &v10[v3], &qword_1005AB4B0, &unk_1004C5410);
  swift_endAccess();
  v134 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_lastAvailabilityDate;
  swift_beginAccess();
  v135 = v160;
  sub_100005F04(&v132[v134], v160, &unk_1005AE5B0, &qword_1004C32F0);
  v136 = type metadata accessor for Date();
  v137 = *(v136 - 8);
  v138 = (*(v137 + 48))(v135, 1, v136);
  sub_100002CE0(v135, &unk_1005AE5B0, &qword_1004C32F0);
  v10 = v172;
  if (v138 == 1)
  {
    v139 = v158;
    static Date.trustedNow.getter(v158);
    (*(v137 + 56))(v139, 0, 1, v136);
    swift_beginAccess();
    sub_100022364(v139, &v132[v134], &unk_1005AE5B0, &qword_1004C32F0);
    swift_endAccess();
    *&v132[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_cntProactiveAlerts] = 1;
    sub_10011A9BC();
    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    type metadata accessor for Transaction();
    v140 = swift_allocObject();
    *(v140 + 16) = 0;
    *(v140 + 24) = 1;
    static Transaction.asyncTask(name:block:)();

    v52 = v171;
  }

LABEL_11:
  v54 = v169;
  v55 = *(v170 + 48);
  sub_100005F04(v174, v169, &qword_1005AB4B0, &unk_1004C5410);
  sub_100005F04(&v10[v3], &v54[v55], &qword_1005AB4B0, &unk_1004C5410);
  v56 = *(v52 + 48);
  v40 = v3;
  if (v56(v54, 1, v8) == 1)
  {
    if (v56(&v54[v55], 1, v8) == 1)
    {
      sub_100002CE0(v54, &qword_1005AB4B0, &unk_1004C5410);
      goto LABEL_18;
    }

LABEL_16:
    sub_100002CE0(v54, &qword_1005AB4A8, &qword_1004C5408);
    goto LABEL_23;
  }

  v57 = v165;
  sub_100005F04(v54, v165, &qword_1005AB4B0, &unk_1004C5410);
  if (v56(&v54[v55], 1, v8) == 1)
  {
    (*(v52 + 8))(v57, v8);
    goto LABEL_16;
  }

  v58 = v164;
  (*(v52 + 32))(v164, &v54[v55], v8);
  sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState, &protocol conformance descriptor for SecureLocationsStewie.ServiceState);
  v59 = dispatch thunk of static Equatable.== infix(_:_:)();
  v60 = *(v52 + 8);
  v60(v58, v8);
  v60(v57, v8);
  sub_100002CE0(v54, &qword_1005AB4B0, &unk_1004C5410);
  if ((v59 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (v168)
  {
LABEL_23:
    if (qword_1005A7EE8 == -1)
    {
LABEL_24:
      v70 = type metadata accessor for Logger();
      sub_10000A6F0(v70, qword_1005DFB98);
      v71 = v167;
      sub_100005F04(v174, v167, &qword_1005AB4B0, &unk_1004C5410);
      v72 = v40;
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        LODWORD(v171) = v74;
        v76 = v75;
        v172 = swift_slowAlloc();
        v175[0] = v172;
        *v76 = 136446978;
        *(v76 + 4) = sub_10000D01C(*&v72[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v72[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v175);
        *(v76 + 12) = 2080;
        v77 = v173;
        v170 = v72;
        sub_100005F04(v71, v173, &qword_1005AB4B0, &unk_1004C5410);
        v78 = String.init<A>(describing:)();
        v79 = v71;
        v80 = v78;
        v81 = v40;
        v83 = v82;
        sub_100002CE0(v79, &qword_1005AB4B0, &unk_1004C5410);
        v84 = sub_10000D01C(v80, v83, v175);

        *(v76 + 14) = v84;
        *(v76 + 22) = 2080;
        sub_100005F04(&v10[v81], v77, &qword_1005AB4B0, &unk_1004C5410);
        v85 = String.init<A>(describing:)();
        v87 = sub_10000D01C(v85, v86, v175);

        *(v76 + 24) = v87;
        *(v76 + 32) = 1024;
        *(v76 + 34) = v168 & 1;
        _os_log_impl(&_mh_execute_header, v73, v171, "%{public}s - stateChange old %s new %s forceNotify %{BOOL}d", v76, 0x26u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100002CE0(v71, &qword_1005AB4B0, &unk_1004C5410);
      }

      sub_1000223CC();
      goto LABEL_28;
    }

LABEL_83:
    swift_once();
    goto LABEL_24;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_10000A6F0(v61, qword_1005DFB98);
  v62 = v40;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v63, v64))
  {

LABEL_28:
    v69 = v174;
    return sub_100002CE0(v69, &qword_1005AB4B0, &unk_1004C5410);
  }

  v65 = swift_slowAlloc();
  v175[0] = swift_slowAlloc();
  *v65 = 136446466;
  *(v65 + 4) = sub_10000D01C(*&v62[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v62[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v175);
  *(v65 + 12) = 2080;
  sub_100005F04(v40 + v172, v173, &qword_1005AB4B0, &unk_1004C5410);
  v66 = String.init<A>(describing:)();
  v68 = sub_10000D01C(v66, v67, v175);

  *(v65 + 14) = v68;
  _os_log_impl(&_mh_execute_header, v63, v64, "%{public}s - no change in service state %s", v65, 0x16u);
  swift_arrayDestroy();

  v69 = v174;
  return sub_100002CE0(v69, &qword_1005AB4B0, &unk_1004C5410);
}

uint64_t sub_100118A5C()
{
  v1 = v0;
  v2 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v2 - 8);
  v49 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005AB4A8, &qword_1004C5408);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v49 - v9;
  v11 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  v17 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
  swift_beginAccess();
  (*(v5 + 104))(v16, enum case for SecureLocationsStewie.ServiceState.available(_:), v4);
  (*(v5 + 56))(v16, 0, 1, v4);
  v18 = *(v8 + 56);
  v19 = &v1[v17];
  v20 = v1;
  sub_100005F04(v19, v10, &qword_1005AB4B0, &unk_1004C5410);
  sub_100005F04(v16, &v10[v18], &qword_1005AB4B0, &unk_1004C5410);
  v21 = *(v5 + 48);
  if (v21(v10, 1, v4) == 1)
  {
    sub_100002CE0(v16, &qword_1005AB4B0, &unk_1004C5410);
    if (v21(&v10[v18], 1, v4) == 1)
    {
      sub_100002CE0(v10, &qword_1005AB4B0, &unk_1004C5410);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_100005F04(v10, v14, &qword_1005AB4B0, &unk_1004C5410);
  if (v21(&v10[v18], 1, v4) == 1)
  {
    sub_100002CE0(v16, &qword_1005AB4B0, &unk_1004C5410);
    (*(v5 + 8))(v14, v4);
LABEL_6:
    sub_100002CE0(v10, &qword_1005AB4A8, &qword_1004C5408);
LABEL_7:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005DFB98);
    v23 = v20;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_22;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v51 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_10000D01C(*&v23[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v23[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v51);
    v28 = "%{public}s - find my service not connected to stewie. Not showing alert";
    goto LABEL_21;
  }

  v29 = v50;
  (*(v5 + 32))(v50, &v10[v18], v4);
  sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState, &protocol conformance descriptor for SecureLocationsStewie.ServiceState);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v5 + 8);
  v31(v29, v4);
  sub_100002CE0(v16, &qword_1005AB4B0, &unk_1004C5410);
  v31(v14, v4);
  sub_100002CE0(v10, &qword_1005AB4B0, &unk_1004C5410);
  if ((v30 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  if ((sub_100112E80(0) & 1) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000A6F0(v40, qword_1005DFB98);
    v41 = v20;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_22;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v51 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_10000D01C(*&v41[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v41[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v51);
    v28 = "%{public}s - canPublishLocation is false. Not showing alert";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v24, v25, v28, v26, 0xCu);
    sub_100004984(v27);

LABEL_22:

    return 0;
  }

  v32 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_cntProactiveAlerts;
  v33 = v20;
  v34 = *&v20[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_cntProactiveAlerts];
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v35 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v35);
  v36 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  v37 = v49;
  sub_100021534(v35 + *(v36 + 28), v49, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v35);

  v38 = *(v37 + 96);
  sub_10002178C(v37, type metadata accessor for SecureLocationsConfig);
  if (v34 < v38)
  {
    return 1;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_10000A6F0(v42, qword_1005DFB98);
  v43 = v33;
  v44 = v33;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v51 = v48;
    *v47 = 136446466;
    *(v47 + 4) = sub_10000D01C(*&v44[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v44[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v51);
    *(v47 + 12) = 2048;
    *(v47 + 14) = *&v43[v32];

    _os_log_impl(&_mh_execute_header, v45, v46, "%{public}s - we have already shown %ld alerts", v47, 0x16u);
    sub_100004984(v48);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1001192AC()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v40 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v39 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v38 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = v33 - v9;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v0[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v16)
  {
    if (qword_1005A7EE8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  sub_10000A6F0(v17, qword_1005DFB98);
  v18 = v0;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = os_log_type_enabled(v19, v20);
  v36 = v1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v42 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_10000D01C(*&v18[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v18[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v42);
    _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s - checkinReminderNotificationTimer", v22, 0xCu);
    sub_100004984(v23);
  }

  v35 = 0x80000001004E15D0;
  v24 = v41;
  static DispatchQoS.default.getter();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for XPCActivity_SPD();
  v27 = swift_allocObject();
  sub_10004B564(&qword_1005A8688, &qword_1004C5FA0);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v27 + 40) = v28;
  swift_unknownObjectWeakInit();
  *(v27 + 88) = 0;
  v29 = sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  v33[1] = "teLocUserNotification";
  v33[2] = v29;
  *(v27 + 96) = 0;
  *(v27 + 104) = 0;
  (*(v6 + 16))(v38, v24, v5);
  v30 = *(v3 + 104);
  v34 = v18;
  v30(v39, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v37);
  v42 = _swiftEmptyArrayStorage;
  sub_10001DFF0(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);

  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  v37 = v5;
  sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v27 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v27 + 24) = 0xD000000000000045;
  *(v27 + 32) = v35;
  *(v27 + 48) = sub_10011EC1C;
  *(v27 + 56) = v25;
  *(v27 + 64) = sub_10011EC24;
  *(v27 + 72) = v26;

  sub_10013AF2C(v31);

  (*(v6 + 8))(v41, v37);

  *&v34[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_notificationTimer] = v27;
}

void sub_100119910(int64x2_t *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    __chkstk_darwin(Strong);
    v5._object = 0x80000001004E1680;
    v5._countAndFlagsBits = 0xD000000000000013;
    prohibitAsyncContext(functionName:)(v5);
    sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
    v6 = static OS_dispatch_queue.getSpecific<A>(key:)();
    if (v10[0].i8[0])
    {
      __chkstk_darwin(v6);
      sub_10004B564(&qword_1005AB4A0, &qword_1004C5400);
      OS_dispatch_queue.sync<A>(execute:)();
    }

    else
    {
      sub_100119ACC(v4, v10);
    }

    v8 = v10[0];
    v9 = v10[1];
    v7 = v11;
  }

  else
  {
    v7 = 0;
    v8 = xmmword_1004C52D0;
    v9 = 0uLL;
  }

  *a2 = v8;
  a2[1] = v9;
  a2[2].i64[0] = v7;
}

int64x2_t sub_100119ACC@<Q0>(char *a1@<X0>, int64x2_t *a2@<X8>)
{
  v5 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v8 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v8);
  v9 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_100021534(v8 + *(v9 + 28), v7, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v8);

  v10 = v7[11];
  sub_10002178C(v7, type metadata accessor for SecureLocationsConfig);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1004BA244(0xD000000000000022);
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005DFB98);
    v15 = a1;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_10000D01C(*&v15[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v15[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v29);
      *(v18 + 12) = 2048;
      *(v18 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s - using overriden value for alert delay %ld", v18, 0x16u);
      sub_100004984(v19);
    }
  }

  v20 = *&a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_cntProactiveAlerts];
  v2 = v13 * v20;
  if ((v13 * v20) >> 64 == (v13 * v20) >> 63)
  {
    if (qword_1005A7EE8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  swift_once();
LABEL_15:
  v21 = type metadata accessor for Logger();
  sub_10000A6F0(v21, qword_1005DFB98);
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v25 = 136446466;
    *(v25 + 4) = sub_10000D01C(*&v22[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v22[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v29);
    *(v25 + 12) = 2048;
    *(v25 + 14) = v2;
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s - returning xpc activity for reminder notification with delay %lld", v25, 0x16u);
    sub_100004984(v26);
  }

  a2->i64[0] = 0;
  a2->i64[1] = v2;
  result = vdupq_n_s64(1uLL);
  a2[1] = result;
  a2[2].i64[0] = 514;
  return result;
}

void sub_100119F10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v53 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Transaction.capture()();
    return;
  }

  v15 = Strong;
  v51 = v13;
  v52 = a2;
  v16 = a1;
  v46 = v11;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000A6F0(v17, qword_1005DFB98);
  v18 = v15;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v21 = os_log_type_enabled(v19, v20);
  v22 = v53;
  v49 = v7;
  v50 = v6;
  v47 = v9;
  v48 = v10;
  if (v21)
  {
    v23 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v23 = 136446466;
    v24 = *&v18[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix];
    v25 = *&v18[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8];

    v26 = sub_10000D01C(v24, v25, aBlock);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    LOBYTE(v54) = v22;
    v27 = String.init<A>(describing:)();
    v29 = sub_10000D01C(v27, v28, aBlock);

    *(v23 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s - state block fired %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  v30 = v16;
  v31 = v52;
  if (v22 == 3)
  {
    Transaction.capture()();
    sub_10013AD54();
LABEL_14:

    return;
  }

  if (v22 != 2)
  {
    Transaction.capture()();
    goto LABEL_14;
  }

  v32 = v18;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 136446210;
    v37 = *&v32[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix];
    v38 = *&v32[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8];

    v39 = sub_10000D01C(v37, v38, aBlock);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s - publishReminder timer fired", v35, 0xCu);
    sub_100004984(v36);
    v31 = v52;
  }

  v40 = v51;
  v41 = swift_allocObject();
  v41[2] = v31;
  v41[3] = v30;
  v41[4] = v32;
  aBlock[4] = sub_10011EC2C;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590650;
  v42 = _Block_copy(aBlock);
  v43 = v32;

  static DispatchQoS.unspecified.getter();
  v54 = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  v44 = v47;
  v45 = v50;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v42);
  (*(v49 + 8))(v44, v45);
  (*(v46 + 8))(v40, v48);
}