uint64_t sub_100663EA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100101B58();
  v4 = swift_allocError();
  sub_100101AA8(a1, v5);
  *a2 = v4;
  type metadata accessor for OwnerCommandManager.Error(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100663F1C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v86 = a5;
  v87 = a4;
  v80 = a2;
  v81 = a3;
  v6 = type metadata accessor for OwnerCommandManager.Error(0);
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = __chkstk_darwin(v6);
  v79 = (&v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = &v75 - v9;
  v11 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  __chkstk_darwin(v11 - 8);
  v83 = &v75 - v12;
  v13 = type metadata accessor for UUID();
  v82 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v78 = (&v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v18 = &v75 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v75 - v20;
  __chkstk_darwin(v19);
  v23 = &v75 - v22;
  v24 = sub_1000BC4D4(&qword_1016A7278, &qword_1013B6070);
  __chkstk_darwin(v24);
  v26 = (&v75 - v25);
  sub_1000D2A70(a1, &v75 - v25, &qword_1016A7278, &qword_1013B6070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10067B810(v26, v10, type metadata accessor for OwnerCommandManager.Error);
    v27 = v10;
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177B048);
    v29 = v82;
    v30 = *(v82 + 16);
    v30(v18, v80, v13);
    v31 = v79;
    sub_10067B9CC(v10, v79, type metadata accessor for OwnerCommandManager.Error);
    v32 = v78;
    v30(v78, v81, v13);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v88 = v80;
      *v35 = 141558787;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v77 = v34;
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v27;
      v38 = v37;
      v76 = v33;
      v39 = *(v29 + 8);
      v39(v18, v13);
      v40 = sub_1000136BC(v36, v38, &v88);

      *(v35 + 14) = v40;
      *(v35 + 22) = 2082;
      v41 = sub_100656B14();
      v43 = v42;
      sub_10067BA34(v31, type metadata accessor for OwnerCommandManager.Error);
      v44 = sub_1000136BC(v41, v43, &v88);

      *(v35 + 24) = v44;
      *(v35 + 32) = 2082;
      v27 = v81;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v39(v32, v13);
      v48 = sub_1000136BC(v45, v47, &v88);

      *(v35 + 34) = v48;
      v49 = v76;
      _os_log_impl(&_mh_execute_header, v76, v77, "Disconnection from beacon: %{private,mask.hash}s failed due to %{public}s. CommandId: %{public}s.", v35, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v70 = *(v29 + 8);
      v70(v32, v13);
      sub_10067BA34(v31, type metadata accessor for OwnerCommandManager.Error);
      v70(v18, v13);
    }

    v71 = v83;
    sub_10067B9CC(v27, v83, type metadata accessor for OwnerCommandManager.Error);
    (*(v84 + 56))(v71, 0, 1, v85);
    v87(v71);
    sub_10000B3A8(v71, &qword_1016A7258, &qword_1013B6050);
    return sub_10067BA34(v27, type metadata accessor for OwnerCommandManager.Error);
  }

  else
  {
    v50 = *v26;
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_1000076D4(v51, qword_10177B048);
    v52 = v82;
    v53 = *(v82 + 16);
    v53(v23, v80, v13);
    v53(v21, v81, v13);
    v54 = v50;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v88 = v81;
      *v57 = 141558787;
      *(v57 + 4) = 1752392040;
      *(v57 + 12) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v80) = v56;
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v78 = v55;
      v61 = *(v52 + 8);
      v61(v23, v13);
      v62 = sub_1000136BC(v58, v60, &v88);

      *(v57 + 14) = v62;
      *(v57 + 22) = 2114;
      *(v57 + 24) = v54;
      v63 = v79;
      *v79 = v54;
      *(v57 + 32) = 2082;
      v64 = v54;
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      v61(v21, v13);
      v68 = sub_1000136BC(v65, v67, &v88);

      *(v57 + 34) = v68;
      v69 = v78;
      _os_log_impl(&_mh_execute_header, v78, v80, "Disconnected from beacon: %{private,mask.hash}s. Peripheral: %{public}@. CommandId: %{public}s.", v57, 0x2Au);
      sub_10000B3A8(v63, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();
    }

    else
    {

      v73 = *(v52 + 8);
      v73(v21, v13);
      v73(v23, v13);
    }

    v74 = v83;
    (*(v84 + 56))(v83, 1, 1, v85);
    v87(v74);

    return sub_10000B3A8(v74, &qword_1016A7258, &qword_1013B6050);
  }
}

uint64_t sub_100664888(char *a1, uint64_t a2, unint64_t a3)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v49 = &type metadata for Bool;
  LOBYTE(v48) = 1;
  sub_1001E6224(&v48, v47);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFB368(v47, v6, v8, isUniquelyReferenced_nonNull_native);

  v11 = a3 >> 62;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  if ((a3 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_11;
    }

    v14 = *(a2 + 16);
    v13 = *(a2 + 24);
    v15 = __OFSUB__(v13, v14);
    v16 = v13 - v14;
    if (!v15)
    {
      if (v16 != 16)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v11)
  {
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (HIDWORD(a2) - a2 != 16)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (BYTE6(a3) != 16)
  {
LABEL_11:
    v20 = Data.subdata(in:)();
    v22 = v21;
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177B048);
    sub_100017D5C(v20, v22);
    sub_100017D5C(v20, v22);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      sub_100016590(v20, v22);
      sub_100016590(v20, v22);

LABEL_27:
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v35;
      v49 = &type metadata for Data;
      *&v48 = v20;
      *(&v48 + 1) = v22;
      sub_1001E6224(&v48, v47);
      goto LABEL_28;
    }

    v26 = a1;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v48 = v28;
    *v27 = 136315394;
    v29 = Data.hexString.getter();
    v31 = sub_1000136BC(v29, v30, &v48);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2048;
    v32 = v22 >> 62;
    if ((v22 >> 62) <= 1)
    {
      p_weak_ivar_lyt = (&BeaconKeyManager + 56);
      if (!v32)
      {
        sub_100016590(v20, v22);
        v33 = BYTE6(v22);
LABEL_26:
        *(v27 + 14) = v33;
        sub_100016590(v20, v22);
        _os_log_impl(&_mh_execute_header, v24, v25, "Trimmed LTK: %s. Count: %ld", v27, 0x16u);
        sub_100007BAC(v28);

        a1 = v26;
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    if (v32 == 2)
    {
      p_weak_ivar_lyt = *(v20 + 16);
      v34 = *(v20 + 24);
      sub_100016590(v20, v22);
      v33 = v34 - p_weak_ivar_lyt;
      if (__OFSUB__(v34, p_weak_ivar_lyt))
      {
        __break(1u);
LABEL_22:
        result = sub_100016590(v20, v22);
        LODWORD(v33) = HIDWORD(v20) - v20;
        if (!__OFSUB__(HIDWORD(v20), v20))
        {
          v33 = v33;
          goto LABEL_26;
        }

LABEL_35:
        __break(1u);
        return result;
      }
    }

    else
    {
      sub_100016590(v20, v22);
      v33 = 0;
    }

    p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
    goto LABEL_26;
  }

LABEL_8:
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v49 = &type metadata for Data;
  *&v48 = a2;
  *(&v48 + 1) = a3;
  sub_1001E6224(&v48, v47);
  sub_100017D5C(a2, a3);
LABEL_28:
  v36 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFB368(v47, v17, v19, v36);

  if (p_weak_ivar_lyt[261] != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_1000076D4(v37, qword_10177B048);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v48 = v41;
    *v40 = 136315138;

    v42 = Dictionary.description.getter();
    v44 = v43;

    v45 = sub_1000136BC(v42, v44, &v48);

    *(v40 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v38, v39, "Connecting with options %s", v40, 0xCu);
    sub_100007BAC(v41);
  }

  v46 = sub_10131F050(a1, _swiftEmptyDictionarySingleton);
  swift_bridgeObjectRelease_n();
  return v46;
}

void *sub_100664DCC(char *a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v84 = a4;
  v88 = a2;
  v90 = a1;
  v82 = *v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v86 = &v76[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v83 = &v76[-v11];
  v12 = __chkstk_darwin(v10);
  v87 = &v76[-v13];
  v14 = __chkstk_darwin(v12);
  v16 = &v76[-v15];
  v17 = __chkstk_darwin(v14);
  v19 = &v76[-v18];
  __chkstk_darwin(v17);
  v21 = &v76[-v20];
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 1);
  __chkstk_darwin(v22);
  v25 = &v76[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v94[0] = 0x7365547265646E75;
  v94[1] = 0xE900000000000074;
  result = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v91 & 1) == 0)
  {
    v81 = v16;
    v27 = v89;
    v28 = *(v89 + 72);
    *v25 = v28;
    (*(v23 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v22);
    v29 = v28;
    v30 = _dispatchPreconditionTest(_:)();
    (*(v23 + 8))(v25, v22);
    if ((v30 & 1) == 0)
    {
      __break(1u);
LABEL_29:
      swift_once();
LABEL_15:
      v51 = type metadata accessor for Logger();
      sub_1000076D4(v51, qword_10177B048);
      sub_100A245E8(0xD000000000000021, v30 | 0x8000000000000000);
      (v22)(v25, v27, v6);
      (v22)(v19, a3, v6);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v94[0] = v79;
        *v54 = 141558531;
        *(v54 + 4) = 1752392040;
        *(v54 + 12) = 2081;
        sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        LODWORD(v78) = v53;
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v56;
        v58 = v85;
        v85(v25, v6);
        v59 = sub_1000136BC(v55, v57, v94);
        v60 = v87;

        *(v54 + 14) = v59;
        *(v54 + 22) = 2082;
        v61 = v86;
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        v64 = v63;
        v58(v61, v6);
        v27 = v81;
        v65 = v62;
        a3 = v60;
        v66 = sub_1000136BC(v65, v64, v94);

        *(v54 + 24) = v66;
        _os_log_impl(&_mh_execute_header, v52, v78, "Beacon %{private,mask.hash}s Command %{public}s.", v54, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v67 = v85;
        v85(v19, v6);
        v67(v25, v6);
      }

      v68 = v80;
      v69 = v89;
      if (*(v89 + 184))
      {

        sub_100025020(v27, &v91);

        if (*(&v92 + 1))
        {
          sub_100031694(&v91, v94);
          v70 = v95;
          v71 = v96;
          sub_1000035D0(v94, v95);
          if ((*(v71 + 96))(v70, v71))
          {
            sub_100667F30(v90, v88, v68, v84);
            sub_100007BAC(v94);
LABEL_26:
            v75 = v85;
            v85(a3, v6);
            return v75(v27, v6);
          }

          sub_100007BAC(v94);
LABEL_25:
          v72 = type metadata accessor for Transaction();
          __chkstk_darwin(v72);
          v73 = v90;
          *&v76[-80] = v69;
          *&v76[-72] = v73;
          *&v76[-64] = v88;
          *&v76[-56] = &off_101609A80;
          v74 = v84;
          *&v76[-48] = v68;
          *&v76[-40] = v74;
          *&v76[-32] = v27;
          *&v76[-24] = a3;
          *&v76[-16] = v82;
          static Transaction.named<A>(_:with:)();
          goto LABEL_26;
        }
      }

      else
      {
        v93 = 0;
        v91 = 0u;
        v92 = 0u;
      }

      sub_10000B3A8(&v91, &qword_101696920, &unk_10138B200);
      goto LABEL_25;
    }

    v80 = a3;
    v31 = *&v90[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];
    v32 = [v31 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    v33 = *(v27 + 112);
    v27 = v81;
    if (*(v33 + 16))
    {

      v34 = sub_1000210EC(v21);
      if (v35)
      {
        v36 = *(v7 + 8);
        v79 = *(*(v33 + 56) + 8 * v34);

        v85 = v36;
        v36(v21, v6);

        if (qword_101694828 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_1000076D4(v37, qword_10177B048);
        v38 = v90;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v94[0] = v78;
          *v41 = 136446210;
          v42 = [v31 identifier];
          v77 = v40;
          v43 = v42;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v44 = dispatch thunk of CustomStringConvertible.description.getter();
          v46 = v45;
          v85(v19, v6);
          v47 = sub_1000136BC(v44, v46, v94);

          *(v41 + 4) = v47;
          _os_log_impl(&_mh_execute_header, v39, v77, "Canceling disconnection block for %{public}s", v41, 0xCu);
          sub_100007BAC(v78);
        }

        dispatch thunk of DispatchWorkItem.cancel()();
        v48 = [v31 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        swift_beginAccess();
        sub_1001DF908(0, v19);
        swift_endAccess();

LABEL_14:
        v49 = type metadata accessor for AccessoryCommand(0);
        v22 = *(v7 + 16);
        v50 = v88;
        (v22)(v27, &v88[*(v49 + 20)], v6);
        a3 = v87;
        (v22)(v87, v50, v6);
        v30 = "Connected to AirTag peripheral:";
        v19 = v86;
        v25 = v83;
        if (qword_101694828 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_29;
      }
    }

    v85 = *(v7 + 8);
    v85(v21, v6);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_10066589C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v109 = a8;
  v114 = a7;
  v110 = a6;
  v97 = a5;
  v124 = a3;
  v113 = a1;
  v107 = a9;
  v112 = type metadata accessor for UUID();
  v111 = *(v112 - 8);
  v11 = __chkstk_darwin(v112);
  v119 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v12;
  __chkstk_darwin(v11);
  v118 = v76 - v13;
  v14 = type metadata accessor for AccessoryCommand(0);
  v103 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v104 = v15;
  v105 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v16 - 8);
  v18 = v76 - v17;
  v80 = sub_1000BC4D4(&qword_10169E848, &unk_10139DC30);
  v81 = *(v80 - 8);
  __chkstk_darwin(v80);
  v20 = v76 - v19;
  v83 = sub_1000BC4D4(&qword_10169E850, &unk_1013A3500);
  v85 = *(v83 - 8);
  __chkstk_darwin(v83);
  v77 = v76 - v21;
  v86 = sub_1000BC4D4(&qword_10169E858, &unk_10139DC40);
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v78 = v76 - v22;
  v88 = sub_1000BC4D4(&qword_10169E860, &unk_1013A3510);
  v89 = *(v88 - 8);
  __chkstk_darwin(v88);
  v82 = v76 - v23;
  v90 = sub_1000BC4D4(&qword_10169E868, &qword_10139DC50);
  v91 = *(v90 - 8);
  __chkstk_darwin(v90);
  v84 = v76 - v24;
  v94 = sub_1000BC4D4(&qword_1016A7480, &qword_1013B61D0);
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v79 = v76 - v25;
  v96 = sub_1000BC4D4(&qword_1016A7488, &qword_1013B61D8);
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = v76 - v26;
  v100 = sub_1000BC4D4(&qword_1016A7490, &qword_1013B61E0);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = v76 - v27;
  v102 = sub_1000BC4D4(&qword_1016A7498, &qword_1013B61E8);
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v117 = v76 - v28;
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v30;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v31;
  v106 = a4;
  v32 = sub_1010BF910();
  *(inited + 120) = &type metadata for UInt32;
  *(inited + 96) = v32;
  v33 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
  swift_arrayDestroy();
  v34 = sub_10131F050(v124, v33);

  v125 = v34;
  v120 = a2;
  v126 = *(a2 + 72);
  v35 = v126;
  v116 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v36 = *(v116 - 8);
  v121 = *(v36 + 56);
  v124 = (v36 + 56);
  v121(v18, 1, 1, v116);
  v37 = v35;
  v38 = sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  v123 = sub_1000BC488();
  v39 = sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
  v122 = sub_100003E44(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  v76[1] = v38;
  v76[2] = v39;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v18, &unk_1016B0FE0, &unk_101391980);

  static Subscribers.Demand.unlimited.getter();
  v115 = type metadata accessor for Peripheral(0);
  v76[0] = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_1000041A4(&qword_10169E898, &qword_10169E848, &unk_10139DC30, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v40 = v77;
  v41 = v80;
  Publisher.flatMap<A, B>(maxPublishers:_:)();
  v81[1](v20, v41);
  v125 = v37;
  v42 = v18;
  v121(v18, 1, 1, v116);
  v81 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
  sub_1000041A4(&qword_10169E8A0, &qword_10169E850, &unk_1013A3500, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v43 = v37;
  v44 = v78;
  v45 = v83;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v42, &unk_1016B0FE0, &unk_101391980);

  (*(v85 + 8))(v40, v45);
  *(swift_allocObject() + 16) = v97;

  static Subscribers.Demand.unlimited.getter();
  v46 = v76[0];
  sub_1000041A4(&qword_10169E8A8, &qword_10169E858, &unk_10139DC40, v76[0]);
  v47 = v82;
  v48 = v86;
  v49 = v116;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v87 + 8))(v44, v48);
  v125 = v43;
  v121(v42, 1, 1, v49);
  v50 = v79;
  sub_1000041A4(&qword_10169E8B0, &qword_10169E860, &unk_1013A3510, v81);
  v51 = v84;
  v52 = v88;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v42, &unk_1016B0FE0, &unk_101391980);

  (*(v89 + 8))(v47, v52);
  sub_1000041A4(&qword_10169E8B8, &qword_10169E868, &qword_10139DC50, v46);
  v53 = v90;
  Publisher.compactMap<A>(_:)();
  (*(v91 + 8))(v51, v53);
  if (qword_101694830 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v54, qword_1016A6DF8);
  v125 = v43;
  v121(v42, 1, 1, v49);
  sub_1000041A4(&qword_1016A74A0, &qword_1016A7480, &qword_1013B61D0, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v55 = v93;
  v56 = v94;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v42, &unk_1016B0FE0, &unk_101391980);

  (*(v92 + 8))(v50, v56);
  sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  sub_1000041A4(&qword_1016A74A8, &qword_1016A7488, &qword_1013B61D8, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v57 = v98;
  v58 = v96;
  Publisher.map<A>(_:)();
  (*(v95 + 8))(v55, v58);
  sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
  sub_1000041A4(&qword_1016A74B0, &qword_1016A7490, &qword_1013B61E0, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80, &protocol conformance descriptor for Just<A>);
  v59 = v100;
  Publisher.catch<A>(_:)();
  (*(v99 + 8))(v57, v59);
  v60 = swift_allocObject();
  swift_weakInit();
  v124 = type metadata accessor for AccessoryCommand;
  v61 = v105;
  sub_10067B9CC(v106, v105, type metadata accessor for AccessoryCommand);
  v62 = v111;
  v63 = *(v111 + 16);
  v64 = v112;
  v63(v118, v109, v112);
  v63(v119, v107, v64);
  v65 = (*(v103 + 80) + 48) & ~*(v103 + 80);
  v66 = *(v62 + 80);
  v67 = (v104 + v66 + v65) & ~v66;
  v68 = (v108 + v66 + v67) & ~v66;
  v69 = swift_allocObject();
  v70 = v113;
  *(v69 + 2) = v60;
  *(v69 + 3) = v70;
  v71 = v114;
  *(v69 + 4) = v110;
  *(v69 + 5) = v71;
  sub_10067B810(v61, &v69[v65], v124);
  v72 = *(v62 + 32);
  v72(&v69[v67], v118, v64);
  v72(&v69[v68], v119, v64);
  sub_1000041A4(&qword_1016A74B8, &qword_1016A7498, &qword_1013B61E8, &protocol conformance descriptor for Publishers.Catch<A, B>);

  v73 = v102;
  v74 = v117;
  Publisher<>.sink(receiveValue:)();

  (*(v101 + 8))(v74, v73);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_100666AF4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B048);
  sub_100A245E8(0xD000000000000018, 0x800000010135C520);
  sub_1000BC4D4(&qword_1016A61D0, &unk_1013A3540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 56) = &type metadata for BAServiceIdentifier;
  *(inited + 64) = &off_10162CAF0;
  *(inited + 32) = 1;
  v4 = (inited + 32);
  v5 = sub_100A255C8(inited);
  swift_setDeallocating();
  result = sub_100007BAC(v4);
  *a1 = v5;
  return result;
}

uint64_t sub_100666BF4@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a3;
  v5 = sub_1000BC4D4(&qword_1016995B0, &unk_101391A80);
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = sub_1000BC4D4(&unk_1016A6310, &unk_10139DC90);
  v29 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = *a1;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177B048);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Discovered FindMy services.", v15, 2u);
  }

  v31[3] = &type metadata for BAServiceIdentifier;
  v31[4] = &off_10162CAF0;
  LOBYTE(v31[0]) = 1;
  v16 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  v17 = swift_beginAccess();
  v18 = *&v11[v16];
  __chkstk_darwin(v17);
  *(&v28 - 2) = v31;

  v19 = sub_1012BBDB4(sub_1001DB3F8, (&v28 - 4), v18);

  sub_100007BAC(v31);
  if (v19)
  {
    v20 = sub_10039C428(a2);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    sub_1000BC4D4(&unk_1016CDD30, &unk_101391A90);
    swift_allocObject();

    v31[0] = Future.init(_:)();
    sub_1000041A4(&qword_1016A6330, &unk_1016CDD30, &unk_101391A90, &protocol conformance descriptor for Future<A, B>);
    v22 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "No FindMy service", v26, 2u);
    }

    v31[0] = v11;
    type metadata accessor for Peripheral(0);
    v27 = v11;
    Just.init(_:)();
    sub_100101B58();
    Just.setFailureType<A>(to:)();
    (*(v28 + 8))(v7, v5);
    sub_1000041A4(&qword_1016995B8, &unk_1016A6310, &unk_10139DC90, &protocol conformance descriptor for Result<A, B>.Publisher);
    v22 = Publisher.eraseToAnyPublisher()();
    result = (*(v29 + 8))(v10, v8);
  }

  *v30 = v22;
  return result;
}

uint64_t sub_1006670BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v94 = a7;
  v92 = a6;
  v96 = a5;
  v97 = a4;
  v10 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  __chkstk_darwin(v10 - 8);
  v12 = &v89[-v11];
  v13 = type metadata accessor for UUID();
  v95 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v89[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v14);
  v19 = &v89[-v18];
  __chkstk_darwin(v17);
  v21 = &v89[-v20];
  v22 = type metadata accessor for AccessoryCommand(0);
  __chkstk_darwin(v22 - 8);
  v24 = &v89[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v93 = result;
  Transaction.capture()();
  sub_1000D2A70(a1, &v101, &unk_1016A6150, &unk_10139DB30);
  if (v103)
  {
    v104 = v101;
    *v105 = *v102;
    *&v105[9] = *&v102[9];
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177B048);
    sub_100101AA8(&v104, v100);
    v27 = v95;
    v28 = *(v95 + 16);
    v28(v19, v94, v13);
    v28(v16, a8, v13);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v99[0] = v94;
      *v31 = 136446979;
      sub_100101B58();
      LODWORD(v92) = v30;
      v32 = Error.localizedDescription.getter();
      v34 = v33;
      sub_100101B04(v100);
      v35 = sub_1000136BC(v32, v34, v99);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2160;
      *(v31 + 14) = 1752392040;
      *(v31 + 22) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      v91 = v29;
      v39 = *(v27 + 8);
      v39(v19, v13);
      v40 = sub_1000136BC(v36, v38, v99);

      *(v31 + 24) = v40;
      *(v31 + 32) = 2082;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v39(v16, v13);
      v44 = sub_1000136BC(v41, v43, v99);

      *(v31 + 34) = v44;
      v45 = v91;
      _os_log_impl(&_mh_execute_header, v91, v92, "ownerCommand error: %{public}s. Beacon %{private,mask.hash}s Command %{public}s.", v31, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v61 = *(v27 + 8);
      v61(v16, v13);
      v61(v19, v13);
      sub_100101B04(v100);
    }

    sub_100101B58();
    v62 = swift_allocError();
    sub_100101AA8(&v104, v63);
    *v12 = v62;
    v64 = type metadata accessor for OwnerCommandManager.Error(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v64 - 8) + 56))(v12, 0, 1, v64);
    v97(v12);

    sub_10000B3A8(v12, &qword_1016A7258, &qword_1013B6050);
    return sub_100101B04(&v104);
  }

  v46 = v101;
  *&v105[8] = &type metadata for BAServiceIdentifier;
  *&v105[16] = &off_10162CAF0;
  LOBYTE(v104) = 1;
  v47 = OBJC_IVAR____TtC12searchpartyd10Peripheral_services;
  v48 = swift_beginAccess();
  v91 = v46;
  v49 = *(&v46->isa + v47);
  __chkstk_darwin(v48);
  *&v89[-16] = &v104;

  v50 = sub_1012BBDB4(sub_1001DB280, &v89[-32], v49);

  sub_100007BAC(&v104);
  if (!v50)
  {
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_1000076D4(v65, qword_10177B048);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "No FindMy service!", v68, 2u);
    }

    v69 = type metadata accessor for OwnerCommandManager.Error(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v69 - 8) + 56))(v12, 0, 1, v69);
    v97(v12);

    goto LABEL_27;
  }

  *&v105[8] = &type metadata for BACharacteristicIdentifier.FindMy;
  *&v105[16] = &off_10162CAD0;
  LOBYTE(v104) = 1;
  v51 = swift_beginAccess();
  v52 = *(v50 + 40);
  __chkstk_darwin(v51);
  *&v89[-16] = &v104;

  v53 = sub_1012BBE10(sub_1001DB2A0, &v89[-32], v52);

  sub_100007BAC(&v104);
  if (!v53)
  {
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_1000076D4(v70, qword_10177B048);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "Missing Config Characteristic!", v73, 2u);
    }

    v74 = type metadata accessor for OwnerCommandManager.Error(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v74 - 8) + 56))(v12, 0, 1, v74);
    v97(v12);

    goto LABEL_27;
  }

  v54 = v92;
  sub_1010BF57C(&v104);
  if ((~(*(&v104 + 1) & *&v105[16]) & 0x3000000000000000) == 0)
  {
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_1000076D4(v55, qword_10177B048);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "No config command to execute. Calling completion.", v58, 2u);
    }

    v59 = v91;
    sub_100657074(v54, 0, v91, v53);

    v60 = type metadata accessor for OwnerCommandManager.Error(0);
    (*(*(v60 - 8) + 56))(v12, 1, 1, v60);
    v97(v12);

LABEL_27:

    return sub_10000B3A8(v12, &qword_1016A7258, &qword_1013B6050);
  }

  sub_10000B3A8(&v104, &qword_1016A72E8, &unk_1013B60D0);
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  sub_1000076D4(v75, qword_10177B048);
  sub_10067B9CC(v54, v24, type metadata accessor for AccessoryCommand);
  v76 = v95;
  (*(v95 + 16))(v21, v94, v13);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v98 = v94;
    *v79 = 136446723;
    v90 = v78;
    v80 = sub_1010C00BC();
    v82 = v81;
    sub_10067BA34(v24, type metadata accessor for AccessoryCommand);
    v83 = sub_1000136BC(v80, v82, &v98);

    *(v79 + 4) = v83;
    *(v79 + 12) = 2160;
    *(v79 + 14) = 1752392040;
    *(v79 + 22) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v84 = dispatch thunk of CustomStringConvertible.description.getter();
    v86 = v85;
    (*(v76 + 8))(v21, v13);
    v87 = sub_1000136BC(v84, v86, &v98);
    v54 = v92;

    *(v79 + 24) = v87;
    _os_log_impl(&_mh_execute_header, v77, v90, "Execute command %{public}s for beacon %{private,mask.hash}s", v79, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v76 + 8))(v21, v13);
    sub_10067BA34(v24, type metadata accessor for AccessoryCommand);
  }

  v88 = v91;
  sub_10066FC04(v54, v91, v53);
  sub_10066C564(v54, v88, v53, v97, v96);
}

uint64_t sub_100667F30(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v66 = a4;
  v67 = a3;
  v7 = *v4;
  v64 = a1;
  v65 = v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v63 = &v53[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v62 = &v53[-v13];
  v14 = __chkstk_darwin(v12);
  v16 = &v53[-v15];
  __chkstk_darwin(v14);
  v18 = &v53[-v17];
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v53[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = v5[9];
  *v22 = v23;
  (*(v20 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v19);
  v24 = v23;
  v25 = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v22, v19);
  if (v25)
  {
    v26 = *(type metadata accessor for AccessoryCommand(0) + 20);
    v59 = v9;
    v25 = *(v9 + 16);
    (v25)(v18, &a2[v26], v8);
    (v25)(v16, a2, v8);
    v60 = a2;
    a2 = v16;
    if (qword_101694828 == -1)
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
  v61 = v5;
  v27 = type metadata accessor for Logger();
  sub_1000076D4(v27, qword_10177B048);
  v28 = v62;
  (v25)(v62, v18, v8);
  v29 = v63;
  (v25)(v63, a2, v8);
  v30 = v64;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v56 = v34;
    v57 = swift_slowAlloc();
    v68[0] = v57;
    *v33 = 138413059;
    *(v33 + 4) = v30;
    *v34 = v30;
    *(v33 + 12) = 2160;
    *(v33 + 14) = 1752392040;
    *(v33 + 22) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v64 = v18;
    v58 = a2;
    v35 = v29;
    v36 = v30;
    v55 = v31;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v54 = v32;
    v40 = *(v59 + 8);
    v40(v28, v8);
    v41 = sub_1000136BC(v37, v39, v68);

    *(v33 + 24) = v41;
    *(v33 + 32) = 2082;
    a2 = v58;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    v40(v35, v8);
    v45 = sub_1000136BC(v42, v44, v68);
    v18 = v64;

    *(v33 + 34) = v45;
    v46 = v55;
    _os_log_impl(&_mh_execute_header, v55, v54, "Attempt to connect to AirTag using peripheral: %@. Beacon %{private,mask.hash}s Command %{public}s.", v33, 0x2Au);
    sub_10000B3A8(v56, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {

    v40 = *(v59 + 8);
    v40(v29, v8);
    v40(v28, v8);
  }

  v47 = v60;
  v48 = type metadata accessor for Transaction();
  __chkstk_darwin(v48);
  *&v53[-64] = v61;
  *&v53[-56] = v30;
  v49 = v66;
  v50 = v67;
  *&v53[-48] = v47;
  *&v53[-40] = v50;
  *&v53[-32] = v49;
  *&v53[-24] = v18;
  v51 = v65;
  *&v53[-16] = a2;
  *&v53[-8] = v51;
  static Transaction.named<A>(_:with:)();
  v40(a2, v8);
  return (v40)(v18, v8);
}

uint64_t sub_100668550(uint64_t a1, uint64_t (*a2)(void), char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v92 = a8;
  v90 = a7;
  v96 = a6;
  v94 = a5;
  v89 = a4;
  v106 = a1;
  v95 = type metadata accessor for UUID();
  v93 = *(v95 - 8);
  v10 = __chkstk_darwin(v95);
  v105 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v11;
  __chkstk_darwin(v10);
  v104 = v67 - v12;
  v13 = type metadata accessor for AccessoryCommand(0);
  v87 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v86 = v14;
  v88 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v15 - 8);
  v17 = v67 - v16;
  v72 = sub_1000BC4D4(&qword_10169E848, &unk_10139DC30);
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = v67 - v18;
  v74 = sub_1000BC4D4(&qword_1016A7410, &qword_1013B6190);
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = v67 - v19;
  v78 = sub_1000BC4D4(&qword_1016A7418, &qword_1013B6198);
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v102 = v67 - v20;
  v80 = sub_1000BC4D4(&qword_1016A7420, &qword_1013B61A0);
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = v67 - v21;
  v83 = sub_1000BC4D4(&qword_1016A7428, &qword_1013B61A8);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = v67 - v22;
  v85 = sub_1000BC4D4(&qword_1016A7430, &unk_1013B61B0);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v103 = v67 - v23;
  v24 = a2;
  v101 = a2;
  sub_1000BC4D4(&unk_1016A6190, &unk_10138B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138BBE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v26;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v27;
  *(inited + 120) = &type metadata for UInt32;
  *(inited + 96) = 0x10000;
  v28 = sub_10090403C(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&unk_101695C20, &unk_101386D90);
  swift_arrayDestroy();
  v97 = a3;
  v29 = sub_10131F050(a3, v28);
  v67[1] = v29;

  v108 = v29;
  v107 = *(v24 + 9);
  v30 = v107;
  v69 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v31 = *(v69 - 8);
  v98 = *(v31 + 56);
  v99 = v31 + 56;
  v98(v17, 1, 1, v69);
  v68 = v30;
  sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
  v100 = sub_1000BC488();
  sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100003E44(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  v32 = v70;
  v67[0] = v17;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v17, &unk_1016B0FE0, &unk_101391980);

  static Subscribers.Demand.unlimited.getter();
  sub_1000BC4D4(&qword_1016A7438, &unk_101409F00);
  sub_1000041A4(&qword_10169E898, &qword_10169E848, &unk_10139DC30, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  sub_1000041A4(&qword_1016A7440, &qword_1016A7438, &unk_101409F00, &protocol conformance descriptor for AnyPublisher<A, B>);
  v33 = v71;
  v34 = v72;
  v35 = v67[0];
  v36 = v69;
  v37 = v32;
  v38 = v68;
  Publisher.flatMap<A>(maxPublishers:_:)();

  (*(v73 + 8))(v37, v34);
  v108 = v38;
  v98(v35, 1, 1, v36);
  sub_1000041A4(&qword_1016A7448, &qword_1016A7410, &qword_1013B6190, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v39 = v74;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v35, &unk_1016B0FE0, &unk_101391980);

  (*(v75 + 8))(v33, v39);
  if (qword_101694830 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v40, qword_1016A6DF8);
  v108 = v38;
  v98(v35, 1, 1, v36);
  sub_1000041A4(&qword_1016A7450, &qword_1016A7418, &qword_1013B6198, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v41 = v77;
  v42 = v78;
  v43 = v102;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v35, &unk_1016B0FE0, &unk_101391980);

  (*(v76 + 8))(v43, v42);
  sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
  sub_1000041A4(&qword_1016A7458, &qword_1016A7420, &qword_1013B61A0, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v44 = v81;
  v45 = v80;
  Publisher.map<A>(_:)();
  (*(v79 + 8))(v41, v45);
  sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
  sub_1000041A4(&qword_1016A7460, &qword_1016A7428, &qword_1013B61A8, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80, &protocol conformance descriptor for Just<A>);
  v46 = v83;
  Publisher.catch<A>(_:)();
  (*(v82 + 8))(v44, v46);
  v102 = swift_allocObject();
  swift_weakInit();
  v101 = type metadata accessor for AccessoryCommand;
  v47 = v88;
  sub_10067B9CC(v89, v88, type metadata accessor for AccessoryCommand);
  v48 = v93;
  v49 = *(v93 + 16);
  v50 = v95;
  v49(v104, v90, v95);
  v49(v105, v92, v50);
  v51 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v52 = (v86 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = *(v48 + 80);
  v54 = (v53 + v52 + 16) & ~v53;
  v55 = (v91 + v53 + v54) & ~v53;
  v56 = (v91 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v58 = v106;
  *(v57 + 16) = v102;
  *(v57 + 24) = v58;
  sub_10067B810(v47, v57 + v51, v101);
  v59 = (v57 + v52);
  v60 = v96;
  *v59 = v94;
  v59[1] = v60;
  v61 = *(v48 + 32);
  v61(v57 + v54, v104, v50);
  v61(v57 + v55, v105, v50);
  v62 = v97;
  *(v57 + v56) = v97;
  sub_1000041A4(&qword_1016A7468, &qword_1016A7430, &unk_1013B61B0, &protocol conformance descriptor for Publishers.Catch<A, B>);

  v63 = v62;
  v64 = v85;
  v65 = v103;
  Publisher<>.sink(receiveValue:)();

  (*(v84 + 8))(v65, v64);
  AnyCancellable.store(in:)();
}

uint64_t sub_100669414@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B048);
  sub_100A245E8(0xD00000000000001FLL, 0x800000010135C490);
  v7 = *(a2 + 56);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v5;
  sub_1000BC4D4(&qword_1016A7470, &unk_1013B61C0);
  swift_allocObject();

  v9 = v5;
  Future.init(_:)();
  sub_1000041A4(&qword_1016A7478, &qword_1016A7470, &unk_1013B61C0, &protocol conformance descriptor for Future<A, B>);
  v10 = Publisher.eraseToAnyPublisher()();

  *a3 = v10;
  return result;
}

uint64_t sub_10066958C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v70 = a6;
  v71 = a5;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v64[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v64[-v18];
  v20 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  __chkstk_darwin(v20 - 8);
  v69 = &v64[-v21];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    sub_1000D2A70(a1, &v74, &unk_1016A6150, &unk_10139DB30);
    if (v76)
    {
      v77 = v74;
      *v78 = *v75;
      *&v78[9] = *&v75[9];
      if (qword_101694828 != -1)
      {
        swift_once();
      }

      v68 = a9;
      v23 = type metadata accessor for Logger();
      sub_1000076D4(v23, qword_10177B048);
      sub_100101AA8(&v77, v73);
      v24 = *(v14 + 16);
      v24(v19, a7, v13);
      v24(v17, a8, v13);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v66 = v25;
        v28 = v27;
        v67 = swift_slowAlloc();
        v72 = v67;
        *v28 = 136446979;
        sub_100101B58();
        v65 = v26;
        v29 = Error.localizedDescription.getter();
        v31 = v30;
        sub_100101B04(v73);
        v32 = sub_1000136BC(v29, v31, &v72);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2160;
        *(v28 + 14) = 1752392040;
        *(v28 + 22) = 2081;
        sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        v36 = *(v14 + 8);
        v36(v19, v13);
        v37 = sub_1000136BC(v33, v35, &v72);

        *(v28 + 24) = v37;
        *(v28 + 32) = 2082;
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v39;
        v36(v17, v13);
        v41 = sub_1000136BC(v38, v40, &v72);

        *(v28 + 34) = v41;
        v42 = v66;
        _os_log_impl(&_mh_execute_header, v66, v65, "connectAirTag error: %{public}s. Beacon %{private,mask.hash}s Command %{public}s.", v28, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        v56 = *(v14 + 8);
        v56(v17, v13);
        v56(v19, v13);
        sub_100101B04(v73);
      }

      v57 = v68;
      v58 = sub_10131FAE0(v68);

      v73[0] = v58;
      *(swift_allocObject() + 16) = v57;
      v59 = v57;
      sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
      sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
      Publisher.oneshot(_:)();

      sub_100101B58();
      v60 = swift_allocError();
      sub_100101AA8(&v77, v61);
      v62 = v69;
      *v69 = v60;
      v63 = type metadata accessor for OwnerCommandManager.Error(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
      v71(v62);

      sub_10000B3A8(v62, &qword_1016A7258, &qword_1013B6050);
      return sub_100101B04(&v77);
    }

    else
    {
      v43 = v74;
      if (qword_101694828 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_1000076D4(v44, qword_10177B048);
      v45 = v43;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        *(v48 + 4) = v45;
        *v49 = v45;
        v50 = v45;
        _os_log_impl(&_mh_execute_header, v46, v47, "AirTag %@ is connected and ready to send data.", v48, 0xCu);
        sub_10000B3A8(v49, &qword_10169BB30, &unk_10138B3C0);
      }

      sub_1010BF57C(&v77);
      if ((~(*(&v77 + 1) & *&v78[16]) & 0x3000000000000000) != 0)
      {
        sub_10000B3A8(&v77, &qword_1016A72E8, &unk_1013B60D0);
        sub_10066DC64(a4, v45);
        sub_10066A0B0(a4, v45, v71, v70);
      }

      else
      {
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&_mh_execute_header, v51, v52, "No AirTag command to execute. Calling completion.", v53, 2u);
        }

        sub_100657074(a4, 0, v45, 0);
        v54 = type metadata accessor for OwnerCommandManager.Error(0);
        v55 = v69;
        (*(*(v54 - 8) + 56))(v69, 1, 1, v54);
        v71(v55);

        return sub_10000B3A8(v55, &qword_1016A7258, &qword_1013B6050);
      }
    }
  }

  return result;
}

uint64_t sub_100669E80(uint64_t a1, void *a2)
{
  sub_1000D2A70(a1, &v15, &unk_1016A6150, &unk_10139DB30);
  if ((v17 & 1) == 0)
  {
    return sub_10000B3A8(&v15, &unk_1016A6150, &unk_10139DB30);
  }

  v13 = v15;
  *v14 = *v16;
  *&v14[9] = *&v16[9];
  sub_100101B58();
  swift_willThrowTypedImpl();
  swift_allocError();
  *v3 = v13;
  v3[1] = *v14;
  *(v3 + 25) = *&v14[9];
  swift_errorRetain();
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B048);
  swift_errorRetain();
  v5 = a2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543618;
    v10 = _convertErrorToNSError(_:)();
    *(v8 + 4) = v10;
    *(v8 + 12) = 2114;
    *(v8 + 14) = v5;
    *v9 = v10;
    v9[1] = v5;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Disconnection failure: %{public}@ %{public}@!", v8, 0x16u);
    sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_10066A0B0(void *a1, char *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v161 = a3;
  v162 = a4;
  v155 = a2;
  v6 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  __chkstk_darwin(v6 - 8);
  v160 = &v129 - v7;
  v154 = type metadata accessor for UUID();
  v152 = *(v154 - 8);
  v8 = __chkstk_darwin(v154);
  v151 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v150 = &v129 - v10;
  v11 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v11 - 8);
  v163 = &v129 - v12;
  v139 = sub_1000BC4D4(&qword_10169E848, &unk_10139DC30);
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = &v129 - v13;
  v141 = sub_1000BC4D4(&qword_1016A73E0, &qword_1013B6178);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v129 - v14;
  v146 = sub_1000BC4D4(&qword_1016A73E8, &qword_1013B6180);
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v129 - v15;
  v149 = sub_1000BC4D4(&qword_1016A73F0, &qword_1013B6188);
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = &v129 - v16;
  v17 = type metadata accessor for AccessoryCommand(0);
  v143 = *(v17 - 8);
  v18 = *(v143 + 64);
  v19 = __chkstk_darwin(v17);
  v20 = __chkstk_darwin(v19);
  v22 = &v129 - v21;
  v23 = __chkstk_darwin(v20);
  v142 = &v129 - v24;
  __chkstk_darwin(v23);
  v153 = &v129 - v25;
  v26 = type metadata accessor for BinaryEncoder();
  v157 = *(v26 - 8);
  v158 = v26;
  __chkstk_darwin(v26);
  v159 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = (&v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v156 = v4;
  v32 = *(v4 + 72);
  *v31 = v32;
  (*(v29 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v28);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  (*(v29 + 8))(v31, v28);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  v34 = (a1 + *(v17 + 24));
  v35 = v34[1];
  v36 = v34[4];
  v37 = (v36 >> 59) & 6 | ((v35 & 0x2000000000000000) != 0);
  v31 = a1;
  if (v37 <= 1)
  {
    v135 = v33;
    v38 = v163;
    if (v37)
    {
      v48 = 1;
      v49 = &off_101609AA8;
    }

    else
    {
      v48 = 2;
      v49 = 1;
    }

    goto LABEL_12;
  }

  v38 = v163;
  if ((v37 - 2) < 3 || (v54 = *v34, v55 = v34[5], v56 = v34[2] | v34[3], !v55) && v36 == 0x2000000000000000 && v35 == 0x2000000000000000 && !(v56 | v54) || v55 || v36 != 0x2000000000000000 || v35 != 0x2000000000000000 || v54 != 1 || v56)
  {
    if (qword_101694828 == -1)
    {
LABEL_5:
      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_10177B048);
      sub_10067B9CC(v31, v22, type metadata accessor for AccessoryCommand);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v166 = v43;
        *v42 = 136446210;
        v44 = sub_1010C00BC();
        v46 = v45;
        sub_10067BA34(v22, type metadata accessor for AccessoryCommand);
        v47 = sub_1000136BC(v44, v46, &v166);

        *(v42 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v40, v41, "_executeAirTag invalid command %{public}s", v42, 0xCu);
        sub_100007BAC(v43);
      }

      else
      {

        sub_10067BA34(v22, type metadata accessor for AccessoryCommand);
      }

      v50 = v161;
      v51 = v160;
      v52 = type metadata accessor for OwnerCommandManager.Error(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
      v50(v51);
      return sub_10000B3A8(v51, &qword_1016A7258, &qword_1013B6050);
    }

LABEL_47:
    swift_once();
    goto LABEL_5;
  }

  v135 = v33;
  v49 = 0;
  v48 = 2;
LABEL_12:
  BinaryEncoder.init()();
  v166 = v49;
  v167 = v48;
  sub_10067C27C();
  v53 = BinaryEncoder.encode<A>(_:)();
  v58 = v57;
  v59 = v53;
  v133 = v49;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  LODWORD(v160) = v48;
  v60 = type metadata accessor for Logger();
  sub_1000076D4(v60, qword_10177B048);
  v61 = v153;
  sub_10067B9CC(v31, v153, type metadata accessor for AccessoryCommand);
  v62 = v59;
  sub_100017D5C(v59, v58);
  sub_100017D5C(v59, v58);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  v65 = os_log_type_enabled(v63, v64);
  v134 = v31;
  if (!v65)
  {
    sub_100016590(v59, v58);
    sub_100016590(v59, v58);

    sub_10067BA34(v61, type metadata accessor for AccessoryCommand);
    goto LABEL_38;
  }

  LODWORD(v132) = v64;
  v66 = swift_slowAlloc();
  v131 = swift_slowAlloc();
  v166 = v131;
  *v66 = 136315650;
  v67 = Data.hexString.getter();
  v69 = sub_1000136BC(v67, v68, &v166);

  *(v66 + 4) = v69;
  *(v66 + 12) = 2048;
  v70 = v58 >> 62;
  if ((v58 >> 62) > 1)
  {
    if (v70 != 2)
    {
      v62 = v59;
      sub_100016590(v59, v58);
      v71 = 0;
      goto LABEL_37;
    }

    v73 = *(v59 + 16);
    v74 = *(v59 + 24);
    result = sub_100016590(v59, v58);
    v71 = v74 - v73;
    if (!__OFSUB__(v74, v73))
    {
      v62 = v59;
      goto LABEL_37;
    }

    __break(1u);
  }

  else
  {
    v62 = v59;
    if (!v70)
    {
      sub_100016590(v59, v58);
      v71 = BYTE6(v58);
LABEL_37:
      *(v66 + 14) = v71;
      sub_100016590(v62, v58);
      *(v66 + 22) = 2082;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v77;
      sub_10067BA34(v61, type metadata accessor for AccessoryCommand);
      v79 = sub_1000136BC(v76, v78, &v166);

      *(v66 + 24) = v79;
      _os_log_impl(&_mh_execute_header, v63, v132, "_executeAirTag: Sending %s count %ld commandId: %{public}s", v66, 0x20u);
      swift_arrayDestroy();

      v38 = v163;
LABEL_38:
      v132 = v62;
      v153 = v58;
      v166 = sub_10131FDD8(v62, v58, v155);
      v80 = v135;
      v165 = v135;
      v81 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v130 = *(*(v81 - 8) + 56);
      v130(v38, 1, 1, v81);
      v135 = v80;
      sub_1000BC4D4(&qword_1016993D0, &qword_101391970);
      v82 = sub_1000BC488();
      sub_1000041A4(&qword_1016993D8, &qword_1016993D0, &qword_101391970, &protocol conformance descriptor for AnyPublisher<A, B>);
      sub_100003E44(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
      v83 = v136;
      v84 = v163;
      v131 = v82;
      Publisher.receive<A>(on:options:)();
      sub_10000B3A8(v84, &unk_1016B0FE0, &unk_101391980);

      v85 = v155;
      if (qword_101694830 != -1)
      {
        swift_once();
      }

      v86 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
      sub_1000076D4(v86, qword_1016A6DF8);
      v87 = v135;
      v166 = v135;
      v130(v84, 1, 1, v81);
      sub_1000041A4(&qword_10169E898, &qword_10169E848, &unk_10139DC30, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v88 = v84;
      v89 = v138;
      v90 = v139;
      Publisher.timeout<A>(_:scheduler:options:customError:)();
      sub_10000B3A8(v88, &unk_1016B0FE0, &unk_101391980);

      (*(v137 + 8))(v83, v90);
      sub_1000BC4D4(&unk_1016A6150, &unk_10139DB30);
      sub_1000041A4(&qword_1016A73F8, &qword_1016A73E0, &qword_1013B6178, &protocol conformance descriptor for Publishers.Timeout<A, B>);
      v91 = v144;
      v92 = v141;
      Publisher.map<A>(_:)();
      (*(v140 + 8))(v89, v92);
      sub_1000BC4D4(&qword_1016A6160, &unk_10139DC80);
      sub_1000041A4(&qword_1016A7400, &qword_1016A73E8, &qword_1013B6180, &protocol conformance descriptor for Publishers.Map<A, B>);
      sub_1000041A4(&qword_1016A6170, &qword_1016A6160, &unk_10139DC80, &protocol conformance descriptor for Just<A>);
      v93 = v147;
      v94 = v146;
      Publisher.catch<A>(_:)();
      (*(v145 + 8))(v91, v94);
      v95 = swift_allocObject();
      v96 = v156;
      swift_weakInit();
      v97 = v142;
      sub_10067B9CC(v134, v142, type metadata accessor for AccessoryCommand);
      v98 = (*(v143 + 80) + 33) & ~*(v143 + 80);
      v99 = swift_allocObject();
      v100 = v133;
      *(v99 + 16) = v95;
      *(v99 + 24) = v100;
      *(v99 + 32) = v160;
      sub_10067B810(v97, v99 + v98, type metadata accessor for AccessoryCommand);
      v101 = (v99 + ((v18 + v98 + 7) & 0xFFFFFFFFFFFFFFF8));
      v102 = v162;
      *v101 = v161;
      v101[1] = v102;
      sub_1000041A4(&qword_1016A7408, &qword_1016A73F0, &qword_1013B6188, &protocol conformance descriptor for Publishers.Catch<A, B>);

      v103 = v149;
      v104 = Publisher<>.sink(receiveValue:)();

      (*(v148 + 8))(v93, v103);
      v105 = *&v85[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];

      v106 = [v105 identifier];
      v107 = v150;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v108 = *(v96 + 104);
      v109 = v132;
      if (*(v108 + 16))
      {

        v110 = sub_1000210EC(v107);
        if (v111)
        {
          v112 = *(*(v108 + 56) + 8 * v110);
          v113 = *(v152 + 8);

          v114 = v107;
          v115 = v154;
          v113(v114, v154);

          v168 = v112;

          sub_100DEF098(&v165, v104);

          v116 = [v105 identifier];
          v117 = v151;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v118 = v168;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v164 = *(v96 + 104);
          *(v96 + 104) = 0x8000000000000000;
          sub_100FFF1EC(v118, v117, isUniquelyReferenced_nonNull_native);
          v113(v117, v115);
          v120 = v164;
LABEL_45:
          *(v96 + 104) = v120;
          swift_endAccess();

          sub_100016590(v109, v153);
          return (*(v157 + 8))(v159, v158);
        }
      }

      v121 = *(v152 + 8);
      v122 = v107;
      v123 = v154;
      v121(v122, v154);
      v124 = [v105 identifier];
      v125 = v151;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10138C320;
      *(inited + 32) = v104;

      v127 = sub_10112AE04(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_beginAccess();
      v128 = swift_isUniquelyReferenced_nonNull_native();
      v168 = *(v96 + 104);
      *(v96 + 104) = 0x8000000000000000;
      sub_100FFF1EC(v127, v125, v128);
      v121(v125, v123);
      v120 = v168;
      goto LABEL_45;
    }

    v75 = HIDWORD(v59);
    result = sub_100016590(v62, v58);
    LODWORD(v71) = v75 - v62;
    if (!__OFSUB__(v75, v62))
    {
      v71 = v71;
      goto LABEL_37;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10066B8E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v86 = a7;
  v87 = a6;
  v85 = a5;
  v78 = a4;
  v77 = a3;
  v8 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  __chkstk_darwin(v8 - 8);
  v10 = &v72 - v9;
  v84 = type metadata accessor for DispatchWorkItemFlags();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for DispatchQoS();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for AccessoryCommand(0);
  v76 = *(v72 - 8);
  v13 = *(v76 + 64);
  v14 = __chkstk_darwin(v72);
  v15 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v72 - v17;
  __chkstk_darwin(v16);
  v20 = &v72 - v19;
  v21 = type metadata accessor for DispatchQoS.QoSClass();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v75 = v10;
    v74 = result;
    v26 = *(result + 64);
    if (v26)
    {
      v73 = *(result + 64);
    }

    else
    {
      sub_1000BC488();
      (*(v22 + 104))(v24, enum case for DispatchQoS.QoSClass.default(_:), v21);
      v73 = static OS_dispatch_queue.global(qos:)();
      (*(v22 + 8))(v24, v21);
    }

    sub_1000D2A70(a1, &v92, &unk_1016A6150, &unk_10139DB30);
    if (v94)
    {
      aBlock = v92;
      *v89 = *v93;
      *&v89[9] = *&v93[9];
      v27 = qword_101694828;
      v28 = v26;
      if (v27 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_1000076D4(v29, qword_10177B048);
      sub_100101AA8(&aBlock, v91);
      v30 = v85;
      sub_10067B9CC(v85, v18, type metadata accessor for AccessoryCommand);
      sub_10067B9CC(v30, v15, type metadata accessor for AccessoryCommand);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v90 = v85;
        *v33 = 136446979;
        sub_100101B58();
        v34 = Error.localizedDescription.getter();
        v36 = v35;
        sub_100101B04(v91);
        v37 = sub_1000136BC(v34, v36, &v90);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2160;
        *(v33 + 14) = 1752392040;
        *(v33 + 22) = 2081;
        type metadata accessor for UUID();
        sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v39;
        sub_10067BA34(v18, type metadata accessor for AccessoryCommand);
        v41 = sub_1000136BC(v38, v40, &v90);

        *(v33 + 24) = v41;
        *(v33 + 32) = 2082;
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = v43;
        sub_10067BA34(v15, type metadata accessor for AccessoryCommand);
        v45 = sub_1000136BC(v42, v44, &v90);

        *(v33 + 34) = v45;
        _os_log_impl(&_mh_execute_header, v31, v32, "_executeAirTag error: %{public}s. Beacon %{private,mask.hash}s Command %{public}s.", v33, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        sub_10067BA34(v15, type metadata accessor for AccessoryCommand);
        sub_10067BA34(v18, type metadata accessor for AccessoryCommand);
        sub_100101B04(v91);
      }

      v68 = v75;
      sub_100101B58();
      v69 = swift_allocError();
      sub_100101AA8(&aBlock, v70);
      *v68 = v69;
      v71 = type metadata accessor for OwnerCommandManager.Error(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v71 - 8) + 56))(v68, 0, 1, v71);
      v87(v68);

      sub_10000B3A8(v68, &qword_1016A7258, &qword_1013B6050);
      return sub_100101B04(&aBlock);
    }

    else
    {
      v46 = v92;
      v47 = qword_101694828;
      v48 = v26;
      if (v47 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_1000076D4(v49, qword_10177B048);
      v50 = v46;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();

      v53 = os_log_type_enabled(v51, v52);
      v54 = v75;
      if (v53)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        *(v55 + 4) = v50;
        *v56 = v50;
        v57 = v50;
        _os_log_impl(&_mh_execute_header, v51, v52, "Command successfully sent to AirTag %@", v55, 0xCu);
        sub_10000B3A8(v56, &qword_10169BB30, &unk_10138B3C0);
      }

      sub_10067B9CC(v85, v20, type metadata accessor for AccessoryCommand);
      v58 = (*(v76 + 80) + 40) & ~*(v76 + 80);
      v59 = swift_allocObject();
      v60 = v77;
      *(v59 + 16) = v77;
      v61 = v78;
      *(v59 + 24) = v78;
      *(v59 + 32) = v74;
      sub_10067B810(v20, v59 + v58, type metadata accessor for AccessoryCommand);
      *&v89[16] = sub_10068062C;
      *&v89[24] = v59;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *v89 = sub_100006684;
      *&v89[8] = &unk_10162D400;
      v62 = _Block_copy(&aBlock);
      sub_10067FBD8(v60, v61);

      v63 = v79;
      static DispatchQoS.unspecified.getter();
      v91[0] = _swiftEmptyArrayStorage;
      sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v64 = v81;
      v65 = v84;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v66 = v73;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v62);
      (*(v83 + 8))(v64, v65);
      (*(v80 + 8))(v63, v82);

      v67 = type metadata accessor for OwnerCommandManager.Error(0);
      (*(*(v67 - 8) + 56))(v54, 1, 1, v67);
      v87(v54);

      return sub_10000B3A8(v54, &qword_1016A7258, &qword_1013B6050);
    }
  }

  return result;
}

uint64_t sub_10066C474(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return result;
  }

  if (a2 == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v5 = result;
    v6 = *(type metadata accessor for AccessoryCommand(0) + 20);
    v7 = "SPPlaySound didStartPlayingSoundOnDevice %{private,mask.hash}s error %{public}s. CommandId: %{public}s";
    v8 = sub_10082A3B0;
  }

  else
  {
    v9 = result;
    result = swift_unknownObjectWeakLoadStrong();
    v5 = result;
    if (v9)
    {
      if (!result)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (!result)
    {
      return result;
    }

    v6 = *(type metadata accessor for AccessoryCommand(0) + 20);
    v7 = "SPPlaySound didStopPlayingSoundOnDevice %{private,mask.hash}s error %{public}s. CommandId: %{public}s";
    v8 = sub_10082DB80;
  }

  sub_10067BD08(a4 + v6, a4, 0, v5, v7, v8);
LABEL_11:

  return swift_unknownObjectRelease();
}

uint64_t sub_10066C564(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v6 = v5;
  v40 = a4;
  v41 = a5;
  v38 = a3;
  v39 = a2;
  v8 = *v6;
  v9 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for AccessoryCommand(0);
  __chkstk_darwin(v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v6[9];
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1010BF57C(&v42);
  if ((~(v43 & v45) & 0x3000000000000000) == 0)
  {
    if (qword_101694828 == -1)
    {
LABEL_4:
      v21 = type metadata accessor for Logger();
      sub_1000076D4(v21, qword_10177B048);
      sub_10067B9CC(a1, v14, type metadata accessor for AccessoryCommand);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v47[0] = v25;
        *v24 = 136446210;
        v26 = sub_1010C00BC();
        v28 = v27;
        sub_10067BA34(v14, type metadata accessor for AccessoryCommand);
        v29 = sub_1000136BC(v26, v28, v47);

        *(v24 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v22, v23, "_execute invalid command %{public}s", v24, 0xCu);
        sub_100007BAC(v25);
      }

      else
      {

        sub_10067BA34(v14, type metadata accessor for AccessoryCommand);
      }

      v36 = type metadata accessor for OwnerCommandManager.Error(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v36 - 8) + 56))(v11, 0, 1, v36);
      v40(v11);
      return sub_10000B3A8(v11, &qword_1016A7258, &qword_1013B6050);
    }

LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  v47[0] = v42;
  v47[1] = v43;
  v48 = v44;
  v49 = v45;
  v50 = v46;
  v30 = a1 + *(v12 + 24);
  if (!((*(v30 + 32) >> 59) & 6 | ((*(v30 + 8) & 0x2000000000000000) != 0)))
  {
    *(v6 + 176) = *v30 & 1;
  }

  v31 = type metadata accessor for Transaction();
  __chkstk_darwin(v31);
  *(&v37 - 8) = v6;
  *(&v37 - 7) = v47;
  v32 = v39;
  *(&v37 - 6) = v38;
  *(&v37 - 5) = a1;
  v34 = v40;
  v33 = v41;
  *(&v37 - 4) = v32;
  *(&v37 - 3) = v34;
  *(&v37 - 2) = v33;
  *(&v37 - 1) = v8;
  static Transaction.named<A>(_:with:)();
  return sub_10000B3A8(&v42, &qword_1016A72E8, &unk_1013B60D0);
}

uint64_t sub_10066CA58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v100 = a8;
  v96 = a7;
  v98 = a6;
  v95 = a5;
  v97 = a1;
  v11 = *(a3 + 32);
  v12 = *(a3 + 40);
  v104 = type metadata accessor for UUID();
  v103 = *(v104 - 8);
  v13 = __chkstk_darwin(v104);
  v102 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v101 = &v79 - v15;
  v16 = type metadata accessor for AccessoryCommand(0);
  v93 = *(v16 - 8);
  __chkstk_darwin(v16 - 8);
  v92 = v17;
  v94 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v18 - 8);
  v20 = &v79 - v19;
  v83 = sub_1000BC4D4(&qword_1016A73A0, &qword_1013B6150);
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v105 = &v79 - v21;
  v85 = sub_1000BC4D4(&qword_1016A73A8, &qword_1013B6158);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v79 - v22;
  v88 = sub_1000BC4D4(&qword_1016A73B0, &qword_1013B6160);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v79 - v23;
  v91 = sub_1000BC4D4(&qword_1016A73B8, &unk_1013B6168);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v106 = &v79 - v24;
  v25 = swift_allocObject();
  v107 = v25;
  *(v25 + 16) = 0;
  v89 = v25 + 16;
  v26 = *(a3 + 16);
  v112[0] = *a3;
  v112[1] = v26;
  v113 = v11;
  v114 = v12;
  v115 = 0;
  sub_10067C2E0(a3, &v111);
  v99 = a4;
  v27 = sub_100677DD8(v112, a4);
  sub_10000B3A8(v112, &qword_1016A72E0, &qword_1013B60C8);
  *&v112[0] = v27;
  v108 = a2;
  v111 = *(a2 + 72);
  v28 = v111;
  v29 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v79 = *(*(v29 - 8) + 56);
  v79(v20, 1, 1, v29);
  v80 = v28;
  sub_1000BC4D4(&qword_1016A72D8, &qword_1013B60C0);
  sub_1000BC488();
  sub_1000041A4(&qword_1016A7320, &qword_1016A72D8, &qword_1013B60C0, &protocol conformance descriptor for Future<A, B>);
  sub_100003E44(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v20, &unk_1016B0FE0, &unk_101391980);

  if (qword_101694830 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v30, qword_1016A6DF8);
  v31 = v80;
  *&v112[0] = v80;
  v79(v20, 1, 1, v29);
  sub_1000041A4(&qword_1016A73C0, &qword_1016A73A0, &qword_1013B6150, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v32 = v82;
  v33 = v83;
  v34 = v105;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v20, &unk_1016B0FE0, &unk_101391980);

  (*(v81 + 8))(v34, v33);
  sub_1000BC4D4(&qword_1016A72B0, &qword_1013B60A8);
  sub_1000041A4(&qword_1016A73C8, &qword_1016A73A8, &qword_1013B6158, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  v35 = v86;
  v36 = v85;
  Publisher.map<A>(_:)();
  (*(v84 + 8))(v32, v36);
  sub_1000BC4D4(&qword_1016A7338, &unk_1013B6118);
  sub_1000041A4(&qword_1016A73D0, &qword_1016A73B0, &qword_1013B6160, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1000041A4(&qword_1016A7348, &qword_1016A7338, &unk_1013B6118, &protocol conformance descriptor for Just<A>);
  v37 = v88;
  Publisher.catch<A>(_:)();
  (*(v87 + 8))(v35, v37);
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = v94;
  sub_10067B9CC(v95, v94, type metadata accessor for AccessoryCommand);
  v40 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v41 = (v92 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = v38;
  *(v44 + 24) = v97;
  sub_10067B810(v39, v44 + v40, type metadata accessor for AccessoryCommand);
  v45 = v107;
  *(v44 + v41) = v107;
  v46 = v98;
  *(v44 + v42) = v98;
  *(v44 + v43) = v99;
  v47 = (v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8));
  v48 = v100;
  *v47 = v96;
  v47[1] = v48;
  sub_1000041A4(&qword_1016A73D8, &qword_1016A73B8, &unk_1013B6168, &protocol conformance descriptor for Publishers.Catch<A, B>);

  v49 = v46;

  v50 = v91;
  v51 = v106;
  v52 = Publisher<>.sink(receiveValue:)();

  (*(v90 + 8))(v51, v50);
  swift_beginAccess();
  *(v45 + 16) = v52;

  v53 = *&v49[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];
  v106 = v52;

  v54 = [v53 identifier];
  v55 = v101;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v56 = v108;
  swift_beginAccess();
  v57 = *(v56 + 104);
  if (!*(v57 + 16))
  {
    goto LABEL_7;
  }

  v58 = sub_1000210EC(v55);
  if ((v59 & 1) == 0)
  {

LABEL_7:
    v70 = *(v103 + 8);
    v71 = v55;
    v72 = v104;
    v70(v71, v104);
    v73 = [v53 identifier];
    v74 = v102;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10138C320;
    *(inited + 32) = v106;

    v76 = sub_10112AE04(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = *(v56 + 104);
    *(v56 + 104) = 0x8000000000000000;
    sub_100FFF1EC(v76, v74, isUniquelyReferenced_nonNull_native);
    v70(v74, v72);
    v69 = v116;
    goto LABEL_8;
  }

  v60 = *(*(v57 + 56) + 8 * v58);
  v61 = *(v103 + 8);

  v62 = v55;
  v63 = v104;
  v61(v62, v104);

  v116 = v60;
  v64 = v106;

  sub_100DEF098(&v110, v64);

  v65 = [v53 identifier];
  v66 = v102;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v67 = v116;
  swift_beginAccess();
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *(v56 + 104);
  *(v56 + 104) = 0x8000000000000000;
  sub_100FFF1EC(v67, v66, v68);
  v61(v66, v63);
  v69 = v109;
LABEL_8:
  *(v56 + 104) = v69;
  swift_endAccess();
}

uint64_t sub_10066D7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void (*a8)(void), uint64_t a9)
{
  v44 = a6;
  v14 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  __chkstk_darwin(v14 - 8);
  v16 = (&v39 - v15);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    Transaction.capture()();
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000076D4(v19, qword_10177B048);
    sub_1000D2A70(a1, &v48, &qword_1016A72B0, &qword_1013B60A8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v43 = v18;
      v23 = v22;
      v24 = swift_slowAlloc();
      v42 = a9;
      v39 = v24;
      v47 = v24;
      *v23 = 136446210;
      v41 = a7;
      v40 = v16;
      sub_1000D2A70(&v48, &v45, &qword_1016A72B0, &qword_1013B60A8);
      sub_1000BC4D4(&qword_1016A72B0, &qword_1013B60A8);
      v25 = a4;
      v26 = String.init<A>(describing:)();
      v27 = a1;
      v28 = a5;
      v29 = a8;
      v31 = v30;
      v16 = v40;
      sub_10000B3A8(&v48, &qword_1016A72B0, &qword_1013B60A8);
      v32 = v26;
      a4 = v25;
      v33 = sub_1000136BC(v32, v31, &v47);
      a8 = v29;
      a5 = v28;
      a1 = v27;

      *(v23 + 4) = v33;
      a7 = v41;
      _os_log_impl(&_mh_execute_header, v20, v21, "commandSubscription result: %{public}s", v23, 0xCu);
      sub_100007BAC(v39);
    }

    else
    {

      sub_10000B3A8(&v48, &qword_1016A72B0, &qword_1013B60A8);
    }

    sub_1000D2A70(a1, &v48, &qword_1016A72B0, &qword_1013B60A8);
    if (v50)
    {
      v45 = v48;
      v46[0] = *v49;
      *(v46 + 9) = *&v49[9];
      swift_beginAccess();
      v34 = *(a5 + 16);

      sub_100657074(a4, v34, v44, a7);

      sub_100101B58();
      v35 = swift_allocError();
      sub_100101AA8(&v45, v36);
      *v16 = v35;
      v37 = type metadata accessor for OwnerCommandManager.Error(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v37 - 8) + 56))(v16, 0, 1, v37);
      a8(v16);

      sub_10000B3A8(v16, &qword_1016A7258, &qword_1013B6050);
      return sub_100101B04(&v45);
    }

    else
    {
      sub_10000B3A8(&v48, &qword_1016A72B0, &qword_1013B60A8);
      v38 = type metadata accessor for OwnerCommandManager.Error(0);
      (*(*(v38 - 8) + 56))(v16, 1, 1, v38);
      a8(v16);

      return sub_10000B3A8(v16, &qword_1016A7258, &qword_1013B6050);
    }
  }

  return result;
}

uint64_t sub_10066DC64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v57 = a2;
  v58 = v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v59 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v56 = &v49[-v11];
  v12 = __chkstk_darwin(v10);
  v14 = &v49[-v13];
  __chkstk_darwin(v12);
  v16 = &v49[-v15];
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v49[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = v3[9];
  *v20 = v21;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v22 = v21;
  v23 = _dispatchPreconditionTest(_:)();
  v25 = *(v18 + 8);
  v24 = (v18 + 8);
  v25(v20, v17);
  if (v23)
  {
    v26 = *(type metadata accessor for AccessoryCommand(0) + 20);
    v54 = v7;
    v23 = *(v7 + 16);
    (v23)(v16, a1 + v26, v6);
    (v23)(v14, a1, v6);
    v24 = v14;
    if (qword_101694828 == -1)
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
  v55 = v3;
  v27 = type metadata accessor for Logger();
  sub_1000076D4(v27, qword_10177B048);
  v28 = v56;
  (v23)(v56, v16, v6);
  (v23)(v59, v24, v6);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = v16;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    v53 = a1;
    v33 = v32;
    v51 = swift_slowAlloc();
    v60[0] = v51;
    *v33 = 141558531;
    *(v33 + 4) = 1752392040;
    *(v33 + 12) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v52 = v24;
    v50 = v30;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v16;
    v37 = v36;
    v38 = *(v54 + 8);
    v38(v28, v6);
    v39 = sub_1000136BC(v34, v37, v60);
    v31 = v35;

    *(v33 + 14) = v39;
    *(v33 + 22) = 2082;
    v40 = v59;
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v38(v40, v6);
    v44 = sub_1000136BC(v41, v43, v60);
    v24 = v52;

    *(v33 + 24) = v44;
    _os_log_impl(&_mh_execute_header, v29, v50, "receiveData: beacon %{private,mask.hash}s Command %{public}s", v33, 0x20u);
    swift_arrayDestroy();

    a1 = v53;
  }

  else
  {

    v38 = *(v54 + 8);
    v38(v59, v6);
    v38(v28, v6);
  }

  v45 = type metadata accessor for Transaction();
  __chkstk_darwin(v45);
  v47 = v57;
  v46 = v58;
  *&v49[-48] = v55;
  *&v49[-40] = v47;
  *&v49[-32] = a1;
  *&v49[-24] = v31;
  *&v49[-16] = v24;
  *&v49[-8] = v46;
  static Transaction.named<A>(_:with:)();
  v38(v24, v6);
  return (v38)(v31, v6);
}

uint64_t sub_10066E208(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t a1))
{
  v115 = a6;
  v113 = a5;
  v119 = a4;
  v124 = a1;
  v125 = type metadata accessor for UUID();
  v127 = *(v125 - 8);
  v9 = __chkstk_darwin(v125);
  v117 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v123 = v92 - v12;
  v114 = v13;
  __chkstk_darwin(v11);
  v126 = v92 - v14;
  v15 = type metadata accessor for AccessoryCommand(0);
  v104 = *(v15 - 8);
  v122 = *(v104 + 64);
  __chkstk_darwin(v15 - 8);
  v128 = v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v17 - 8);
  v19 = v92 - v18;
  v100 = sub_1000BC4D4(&qword_101699450, &unk_10139DBC0);
  v101 = *(v100 - 8);
  __chkstk_darwin(v100);
  v21 = v92 - v20;
  v102 = sub_1000BC4D4(&qword_101699458, &qword_1013919C0);
  v103 = *(v102 - 8);
  __chkstk_darwin(v102);
  v97 = v92 - v22;
  v106 = sub_1000BC4D4(&qword_1016A7358, &qword_1013B6128);
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v99 = v92 - v23;
  v109 = sub_1000BC4D4(&qword_1016A7360, &qword_1013B6130);
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = v92 - v24;
  v112 = sub_1000BC4D4(&qword_1016A7368, &qword_1013B6138);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v120 = v92 - v25;
  v26 = swift_allocObject();
  v121 = v26;
  *(v26 + 16) = 0;
  v110 = v26 + 16;
  v129 = *(*(a2 + 56) + 24);
  v130 = a3;
  v116 = a3;
  sub_1000BC4D4(&qword_101699490, &unk_1013B3BC0);
  Lock.callAsFunction<A>(_:)();
  v118 = v6;
  v133 = *(a2 + 72);
  v27 = v133;
  v28 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v96 = v28;
  v95 = v30;
  v94 = v29 + 56;
  (v30)(v19, 1, 1);
  v31 = sub_1000BC488();
  sub_1000041A4(&qword_101699498, &qword_101699490, &unk_1013B3BC0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v32 = sub_100003E44(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
  v93 = v27;
  v98 = v31;
  v92[1] = v32;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v19, &unk_1016B0FE0, &unk_101391980);

  static Subscribers.Demand.unlimited.getter();
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
  sub_1000041A4(&qword_1016994A0, &qword_101699450, &unk_10139DBC0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v33 = a2;
  sub_1000041A4(&qword_1016994A8, &qword_101699378, &unk_1013B60B0, &protocol conformance descriptor for Future<A, B>);
  v34 = v97;
  v35 = v100;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v101 + 8))(v21, v35);
  v36 = v128;
  sub_10067B9CC(v119, v128, type metadata accessor for AccessoryCommand);
  v37 = *(v104 + 80);
  v104 = ~v37;
  v38 = swift_allocObject();
  *(v38 + 16) = v33;
  v39 = v99;
  sub_10067B810(v36, v38 + ((v37 + 24) & ~v37), type metadata accessor for AccessoryCommand);

  sub_1000BC4D4(&qword_1016A7370, &qword_1013B6140);
  sub_1000041A4(&qword_1016994B0, &qword_101699458, &qword_1013919C0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v40 = v102;
  Publisher.map<A>(_:)();

  (*(v103 + 8))(v34, v40);
  if (qword_101694830 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_1000076D4(v41, qword_1016A6DF8);
  v42 = v93;
  v134 = v93;
  v95(v19, 1, 1, v96);
  sub_1000041A4(&qword_1016A7378, &qword_1016A7358, &qword_1013B6128, &protocol conformance descriptor for Publishers.Map<A, B>);
  v43 = v107;
  v44 = v106;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10000B3A8(v19, &unk_1016B0FE0, &unk_101391980);

  (*(v105 + 8))(v39, v44);
  sub_1000BC4D4(&qword_1016A7380, &qword_1013B6148);
  sub_1000041A4(&qword_1016A7388, &qword_1016A7360, &qword_1013B6130, &protocol conformance descriptor for Publishers.Timeout<A, B>);
  sub_1000041A4(&qword_1016A7390, &qword_1016A7380, &qword_1013B6148, &protocol conformance descriptor for Just<A>);
  v45 = v109;
  Publisher.catch<A>(_:)();
  (*(v108 + 8))(v43, v45);
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = v127;
  v48 = *(v127 + 16);
  v49 = v126;
  v50 = v125;
  v48(v126, v113, v125);
  v48(v123, v115, v50);
  v115 = type metadata accessor for AccessoryCommand;
  sub_10067B9CC(v119, v128, type metadata accessor for AccessoryCommand);
  v51 = *(v47 + 80);
  v52 = (v51 + 32) & ~v51;
  v53 = v33;
  v54 = (v114 + v51 + v52) & ~v51;
  v55 = (v114 + v37 + v54) & v104;
  v122 = (v122 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v122 + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v58 = v124;
  *(v57 + 16) = v46;
  *(v57 + 24) = v58;
  v59 = *(v47 + 32);
  v60 = v57 + v52;
  v61 = v125;
  v59(v60, v49, v125);
  v62 = v57 + v54;
  v63 = v61;
  v59(v62, v123, v61);
  v64 = v53;
  sub_10067B810(v128, v57 + v55, v115);
  v65 = v121;
  *(v57 + v122) = v121;
  v66 = v116;
  *(v57 + v56) = v116;
  sub_1000041A4(&qword_1016A7398, &qword_1016A7368, &qword_1013B6138, &protocol conformance descriptor for Publishers.Catch<A, B>);

  v67 = v66;
  v68 = v112;
  v69 = v120;
  v70 = Publisher<>.sink(receiveValue:)();

  (*(v111 + 8))(v69, v68);
  swift_beginAccess();
  *(v65 + 16) = v70;

  v71 = *&v67[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];

  v72 = [v71 identifier];
  v73 = v117;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v74 = *(v64 + 88);
  if (!*(v74 + 16))
  {
    goto LABEL_7;
  }

  v75 = sub_1000210EC(v73);
  if ((v76 & 1) == 0)
  {

LABEL_7:
    v85 = *(v127 + 8);
    v85(v73, v63);
    v86 = [v71 identifier];
    v87 = v126;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10138C320;
    *(inited + 32) = v70;

    v89 = sub_10112AE04(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v135 = *(v64 + 88);
    *(v64 + 88) = 0x8000000000000000;
    sub_100FFF1EC(v89, v87, isUniquelyReferenced_nonNull_native);
    v85(v87, v63);
    v84 = v135;
    goto LABEL_8;
  }

  v77 = v73;
  v78 = *(*(v74 + 56) + 8 * v75);
  v79 = *(v127 + 8);

  v79(v77, v63);

  v135 = v78;

  sub_100DEF098(&v132, v70);

  v80 = [v71 identifier];
  v81 = v126;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v82 = v135;
  swift_beginAccess();
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *(v64 + 88);
  *(v64 + 88) = 0x8000000000000000;
  sub_100FFF1EC(v82, v81, v83);
  v79(v81, v63);
  v84 = v131;
LABEL_8:
  *(v64 + 88) = v84;
  swift_endAccess();
}

uint64_t sub_10066F264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v86 = a8;
  v85 = a7;
  v87 = a4;
  v88 = a1;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v77 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v77 - v19;
  __chkstk_darwin(v18);
  v22 = &v77 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v82 = a5;
  v83 = v22;
  v84 = result;
  Transaction.capture()();
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_1000076D4(v24, qword_10177B048);
  sub_1000D2A70(v88, &v93, &qword_1016A7370, &qword_1013B6140);
  v81 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v80 = a6;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v78 = v14;
    v31 = v30;
    v92[0] = v30;
    *v29 = 136446210;
    v79 = v11;
    v77 = v20;
    sub_1000D2A70(&v93, &v89, &qword_1016A7370, &qword_1013B6140);
    sub_1000BC4D4(&qword_1016A7370, &qword_1013B6140);
    v32 = v10;
    v33 = String.init<A>(describing:)();
    v35 = v34;
    v20 = v77;
    sub_10000B3A8(&v93, &qword_1016A7370, &qword_1013B6140);
    v36 = sub_1000136BC(v33, v35, v92);

    *(v29 + 4) = v36;
    v11 = v79;
    v10 = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "receiveData result: %{public}s", v29, 0xCu);
    sub_100007BAC(v31);
    v14 = v78;
  }

  else
  {

    sub_10000B3A8(&v93, &qword_1016A7370, &qword_1013B6140);
  }

  sub_1000D2A70(v88, &v93, &qword_1016A7370, &qword_1013B6140);
  v37 = v83;
  if ((v95 & 1) == 0)
  {
    v56 = BYTE9(v93);
    sub_100680474(v93, SBYTE8(v93));
    v57 = *(v11 + 16);
    v57(v37, v87, v10);
    v57(v20, v82, v10);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *&v89 = v87;
      *v60 = 67109891;
      *(v60 + 4) = v56;
      *(v60 + 8) = 2160;
      *(v60 + 10) = 1752392040;
      *(v60 + 18) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v88) = v56;
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v37;
      v64 = v63;
      v65 = *(v11 + 8);
      v65(v62, v10);
      v66 = sub_1000136BC(v61, v64, &v89);

      *(v60 + 20) = v66;
      *(v60 + 28) = 2082;
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      v65(v20, v10);
      v70 = sub_1000136BC(v67, v69, &v89);
      LODWORD(v69) = v88;

      *(v60 + 30) = v70;
      _os_log_impl(&_mh_execute_header, v58, v59, "receiveData success complete? %{BOOL}d. Beacon %{private,mask.hash}s Command %{public}s.", v60, 0x26u);
      swift_arrayDestroy();

      if (!v69)
      {
      }
    }

    else
    {

      v74 = *(v11 + 8);
      v74(v20, v10);
      v74(v37, v10);
      if (!v56)
      {
      }
    }

    v75 = v85;
    swift_beginAccess();
    v76 = *(v75 + 16);

    sub_100657074(v80, v76, v86, 0);

    swift_beginAccess();
    *(v75 + 16) = 0;
  }

  v89 = v93;
  v90[0] = *v94;
  *(v90 + 9) = *&v94[9];
  sub_100101AA8(&v89, v92);
  v38 = *(v11 + 16);
  v38(v17, v87, v10);
  v38(v14, v82, v10);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v91 = v88;
    *v41 = 136446979;
    LODWORD(v87) = v40;
    v42 = sub_1013181BC();
    v44 = v43;
    sub_100101B04(v92);
    v45 = sub_1000136BC(v42, v44, &v91);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2160;
    *(v41 + 14) = 1752392040;
    *(v41 + 22) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v14;
    v49 = v48;
    v50 = *(v11 + 8);
    v50(v17, v10);
    v51 = sub_1000136BC(v46, v49, &v91);

    *(v41 + 24) = v51;
    *(v41 + 32) = 2082;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    v50(v47, v10);
    v55 = sub_1000136BC(v52, v54, &v91);

    *(v41 + 34) = v55;
    _os_log_impl(&_mh_execute_header, v39, v87, "receiveData error %{public}s.\nBeacon %{private,mask.hash}s Command %{public}s", v41, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v71 = *(v11 + 8);
    v71(v14, v10);
    v71(v17, v10);
    sub_100101B04(v92);
  }

  v72 = v85;
  swift_beginAccess();
  v73 = *(v72 + 16);

  sub_100657074(v80, v73, v86, 0);

  return sub_100101B04(&v89);
}

uint64_t sub_10066FC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a3;
  v27 = a2;
  v25 = *v3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v3[9];
  *v16 = v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v20 = type metadata accessor for AccessoryCommand(0);
    v21 = *(v7 + 16);
    v21(v12, a1 + *(v20 + 20), v6);
    v21(v10, a1, v6);
    v22 = type metadata accessor for Transaction();
    __chkstk_darwin(v22);
    v23 = v27;
    *(&v25 - 8) = v26;
    *(&v25 - 7) = v4;
    *(&v25 - 6) = a1;
    *(&v25 - 5) = v12;
    *(&v25 - 4) = v10;
    *(&v25 - 3) = v23;
    *(&v25 - 2) = v25;
    static Transaction.named<A>(_:with:)();
    v24 = *(v7 + 8);
    v24(v10, v6);
    return (v24)(v12, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10066FEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v146 = a7;
  v145 = a6;
  v142 = a5;
  v151 = a4;
  v159 = a3;
  v155 = a1;
  v8 = type metadata accessor for UUID();
  v156 = *(v8 - 8);
  v157 = v8;
  v9 = __chkstk_darwin(v8);
  v147 = v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v153 = v114 - v12;
  v144 = v13;
  __chkstk_darwin(v11);
  v160 = v114 - v14;
  v15 = type metadata accessor for AccessoryCommand(0);
  v132 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v152 = v16;
  v149 = v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v17 - 8);
  v150 = v114 - v18;
  v129 = sub_1000BC4D4(&qword_101699450, &unk_10139DBC0);
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = v114 - v19;
  v133 = sub_1000BC4D4(&qword_101699458, &qword_1013919C0);
  v131 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = v114 - v20;
  v136 = sub_1000BC4D4(&qword_1016A72F0, &qword_1013B60E8);
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = v114 - v21;
  v138 = sub_1000BC4D4(&qword_1016A72F8, &qword_1013B60F0);
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v148 = (v114 - v22);
  v140 = sub_1000BC4D4(&qword_1016A7300, &qword_1013B60F8);
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v24 = v114 - v23;
  v25 = sub_1000BC4D4(&qword_1016A7308, &qword_1013B6100);
  v141 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = v114 - v26;
  v28 = sub_1000BC4D4(&qword_1016A7310, &unk_1013B6108);
  v143 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = v114 - v29;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v32 = sub_1000BC4D4(&qword_101699490, &unk_1013B3BC0);
  v154 = a2;
  v126 = v32;
  v33 = v158;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (!v33)
  {
    v119 = v24;
    v120 = v27;
    v121 = v25;
    v122 = v31 + 16;
    v158 = v30;
    v123 = v28;
    v125 = v31;
    v124 = 0;
    v42 = v159;
    v163 = *(v159 + 72);
    v43 = v163;
    v44 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v45 = *(v44 - 8);
    v46 = *(v45 + 56);
    v47 = v150;
    v118 = v44;
    v117 = v46;
    v116 = v45 + 56;
    (v46)(v150, 1, 1);
    v48 = sub_1000BC488();
    sub_1000041A4(&qword_101699498, &qword_101699490, &unk_1013B3BC0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v49 = sub_100003E44(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
    v115 = v43;
    v50 = v127;
    v126 = v48;
    v114[1] = v49;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v47, &unk_1016B0FE0, &unk_101391980);

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
    sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    sub_1000041A4(&qword_1016994A0, &qword_101699450, &unk_10139DBC0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v114[0] = &protocol conformance descriptor for Future<A, B>;
    sub_1000041A4(&qword_1016994A8, &qword_101699378, &unk_1013B60B0, &protocol conformance descriptor for Future<A, B>);
    v51 = v130;
    v52 = v129;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v128 + 8))(v50, v52);
    v53 = v149;
    sub_10067B9CC(v151, v149, type metadata accessor for AccessoryCommand);
    v54 = *(v132 + 80);
    v129 = ~v54;
    v55 = (v54 + 24) & ~v54;
    v132 = v54;
    v56 = swift_allocObject();
    *(v56 + 16) = v42;
    sub_10067B810(v53, v56 + v55, type metadata accessor for AccessoryCommand);

    sub_1000BC4D4(&qword_1016A72E0, &qword_1013B60C8);
    sub_1000041A4(&qword_1016994B0, &qword_101699458, &qword_1013919C0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v57 = v134;
    v58 = v133;
    Publisher.map<A>(_:)();

    (*(v131 + 8))(v51, v58);
    v59 = swift_allocObject();
    v60 = v154;
    *(v59 + 16) = v42;
    *(v59 + 24) = v60;

    static Subscribers.Demand.unlimited.getter();
    sub_1000BC4D4(&qword_1016A72D8, &qword_1013B60C0);
    sub_1000041A4(&qword_1016A7318, &qword_1016A72F0, &qword_1013B60E8, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_1016A7320, &qword_1016A72D8, &qword_1013B60C0, v114[0]);
    v61 = v136;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    (*(v135 + 8))(v57, v61);
    v62 = v151;
    if (qword_101694830 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
    sub_1000076D4(v63, qword_1016A6DF8);
    v64 = v115;
    v164 = v115;
    v65 = v150;
    v117(v150, 1, 1, v118);
    sub_1000041A4(&qword_1016A7328, &qword_1016A72F8, &qword_1013B60F0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
    v66 = v119;
    v67 = v138;
    v68 = v148;
    Publisher.timeout<A>(_:scheduler:options:customError:)();
    sub_10000B3A8(v65, &unk_1016B0FE0, &unk_101391980);

    (*(v137 + 8))(v68, v67);
    sub_1000BC4D4(&qword_1016A72B0, &qword_1013B60A8);
    sub_1000041A4(&qword_1016A7330, &qword_1016A7300, &qword_1013B60F8, &protocol conformance descriptor for Publishers.Timeout<A, B>);
    v69 = v120;
    v70 = v140;
    Publisher.map<A>(_:)();
    (*(v139 + 8))(v66, v70);
    sub_1000BC4D4(&qword_1016A7338, &unk_1013B6118);
    sub_1000041A4(&qword_1016A7340, &qword_1016A7308, &qword_1013B6100, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000041A4(&qword_1016A7348, &qword_1016A7338, &unk_1013B6118, &protocol conformance descriptor for Just<A>);
    v71 = v121;
    Publisher.catch<A>(_:)();
    (*(v141 + 8))(v69, v71);
    v150 = swift_allocObject();
    swift_weakInit();
    v72 = v156;
    v73 = v157;
    v74 = *(v156 + 16);
    v74(v160, v142, v157);
    v74(v153, v145, v73);
    v148 = type metadata accessor for AccessoryCommand;
    sub_10067B9CC(v62, v53, type metadata accessor for AccessoryCommand);
    v75 = *(v72 + 80);
    v76 = (v75 + 32) & ~v75;
    v77 = (v144 + v75 + v76) & ~v75;
    v78 = (v144 + v132 + v77) & v129;
    v152 = (v152 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = (v152 + 15) & 0xFFFFFFFFFFFFFFF8;
    v80 = swift_allocObject();
    v81 = v155;
    *(v80 + 16) = v150;
    *(v80 + 24) = v81;
    v82 = *(v72 + 32);
    v82(v80 + v76, v160, v73);
    v82(v80 + v77, v153, v73);
    sub_10067B810(v149, v80 + v78, v148);
    v83 = v125;
    *(v80 + v152) = v125;
    v84 = v146;
    *(v80 + v79) = v146;
    *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v154;
    sub_1000041A4(&qword_1016A7350, &qword_1016A7310, &unk_1013B6108, &protocol conformance descriptor for Publishers.Catch<A, B>);

    v85 = v84;
    v86 = v123;
    v87 = v158;
    v88 = Publisher<>.sink(receiveValue:)();

    (*(v143 + 8))(v87, v86);
    swift_beginAccess();
    *(v83 + 16) = v88;

    v89 = *&v85[OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject];

    v90 = [v89 identifier];
    v91 = v147;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v92 = v159;
    swift_beginAccess();
    v93 = v92;
    v94 = *(v92 + 88);
    if (*(v94 + 16))
    {

      v95 = sub_1000210EC(v91);
      if (v96)
      {
        v97 = *(*(v94 + 56) + 8 * v95);
        v98 = *(v156 + 8);

        v99 = v91;
        v100 = v157;
        v98(v99, v157);

        v165 = v97;

        sub_100DEF098(&v162, v88);

        v101 = [v89 identifier];
        v102 = v160;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v103 = v165;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v161 = *(v93 + 88);
        *(v93 + 88) = 0x8000000000000000;
        sub_100FFF1EC(v103, v102, isUniquelyReferenced_nonNull_native);
        v98(v102, v100);
        v105 = v161;
LABEL_14:
        *(v93 + 88) = v105;
        swift_endAccess();

        return;
      }
    }

    v106 = *(v156 + 8);
    v107 = v91;
    v108 = v157;
    v106(v107, v157);
    v109 = [v89 identifier];
    v110 = v160;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10138C320;
    *(inited + 32) = v88;

    v112 = sub_10112AE04(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_beginAccess();
    v113 = swift_isUniquelyReferenced_nonNull_native();
    v165 = *(v93 + 88);
    *(v93 + 88) = 0x8000000000000000;
    sub_100FFF1EC(v112, v110, v113);
    v106(v110, v108);
    v105 = v165;
    goto LABEL_14;
  }

  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_10177B048);
  swift_errorRetain();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v164 = v38;
    *v37 = 136446210;
    v163 = v33;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v39 = String.init<A>(describing:)();
    v41 = sub_1000136BC(v39, v40, &v164);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "Notify error: %{public}s", v37, 0xCu);
    sub_100007BAC(v38);
  }

  else
  {
  }
}

uint64_t sub_1006713D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a2 + 72);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    return sub_1006739AC(a1, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t sub_100671504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v93 = a8;
  v92 = a7;
  v95 = a1;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v94 = &v82 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v82 - v20;
  __chkstk_darwin(v19);
  v23 = &v82 - v22;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v89 = a4;
  v90 = a5;
  v91 = result;
  Transaction.capture()();
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v86 = a9;
  v25 = type metadata accessor for Logger();
  v26 = sub_1000076D4(v25, qword_10177B048);
  sub_1000D2A70(v95, &v100, &qword_1016A72B0, &qword_1013B60A8);
  v88 = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  v29 = os_log_type_enabled(v27, v28);
  v87 = a6;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v85 = v12;
    v32 = v31;
    v99[0] = v31;
    *v30 = 136446210;
    v84 = v13;
    v83 = v23;
    sub_1000D2A70(&v100, &v96, &qword_1016A72B0, &qword_1013B60A8);
    sub_1000BC4D4(&qword_1016A72B0, &qword_1013B60A8);
    v33 = v16;
    v34 = String.init<A>(describing:)();
    v36 = v35;
    v13 = v84;
    v23 = v83;
    sub_10000B3A8(&v100, &qword_1016A72B0, &qword_1013B60A8);
    v37 = sub_1000136BC(v34, v36, v99);

    *(v30 + 4) = v37;
    v16 = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "handleNotify result: %{public}s", v30, 0xCu);
    sub_100007BAC(v32);
    v12 = v85;
  }

  else
  {

    sub_10000B3A8(&v100, &qword_1016A72B0, &qword_1013B60A8);
  }

  v38 = v90;
  sub_1000D2A70(v95, &v100, &qword_1016A72B0, &qword_1013B60A8);
  v39 = v89;
  if ((v102 & 1) == 0)
  {
    v59 = v100;
    v60 = *(v13 + 16);
    v60(v23, v89, v12);
    v60(v21, v38, v12);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *&v96 = v94;
      *v63 = 67109891;
      *(v63 + 4) = v59;
      *(v63 + 8) = 2160;
      *(v63 + 10) = 1752392040;
      *(v63 + 18) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v23;
      v66 = v12;
      v68 = v67;
      LODWORD(v95) = v59;
      v69 = *(v13 + 8);
      v69(v65, v66);
      v70 = sub_1000136BC(v64, v68, &v96);

      *(v63 + 20) = v70;
      *(v63 + 28) = 2082;
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      v74 = v95;
      v69(v21, v66);
      v75 = sub_1000136BC(v71, v73, &v96);

      *(v63 + 30) = v75;
      _os_log_impl(&_mh_execute_header, v61, v62, "handleNotify success complete? %{BOOL}d. Beacon %{private,mask.hash}s Command %{public}s.", v63, 0x26u);
      swift_arrayDestroy();

      if (!v74)
      {
      }
    }

    else
    {

      v79 = *(v13 + 8);
      v79(v21, v12);
      v79(v23, v12);
      if (!v59)
      {
      }
    }

    v80 = v92;
    swift_beginAccess();
    v81 = *(v80 + 16);

    sub_100657074(v87, v81, v93, v86);

    swift_beginAccess();
    *(v80 + 16) = 0;
  }

  v96 = v100;
  v97[0] = *v101;
  *(v97 + 9) = *&v101[9];
  sub_100101AA8(&v96, v99);
  v40 = *(v13 + 16);
  v40(v94, v39, v12);
  v40(v16, v38, v12);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v98 = v95;
    *v43 = 136446979;
    LODWORD(v90) = v42;
    v44 = sub_1013181BC();
    v46 = v45;
    sub_100101B04(v99);
    v47 = sub_1000136BC(v44, v46, &v98);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2160;
    *(v43 + 14) = 1752392040;
    *(v43 + 22) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v48 = v94;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v12;
    v52 = v51;
    v53 = *(v13 + 8);
    v53(v48, v50);
    v54 = sub_1000136BC(v49, v52, &v98);

    *(v43 + 24) = v54;
    *(v43 + 32) = 2082;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v53(v16, v50);
    v58 = sub_1000136BC(v55, v57, &v98);

    *(v43 + 34) = v58;
    _os_log_impl(&_mh_execute_header, v41, v90, "handleNotify error %{public}s.\nBeacon %{private,mask.hash}s Command %{public}s", v43, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v76 = *(v13 + 8);
    v76(v16, v12);
    v76(v94, v12);
    sub_100101B04(v99);
  }

  v77 = v92;
  swift_beginAccess();
  v78 = *(v77 + 16);

  sub_100657074(v87, v78, v93, v86);

  return sub_100101B04(&v96);
}

uint64_t sub_100671EB4@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v233 = a3;
  v234 = a2;
  v231 = a1;
  v237 = type metadata accessor for AccessoryCommand(0);
  v212 = *(v237 - 8);
  __chkstk_darwin(v237);
  v213 = v4;
  v226 = &v202 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for DispatchWorkItemFlags();
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v220 = &v202 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for DispatchQoS();
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v219 = &v202 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for DispatchQoS.QoSClass();
  v215 = *(v216 - 8);
  __chkstk_darwin(v216);
  v214 = &v202 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v225 = &v202 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v211 = &v202 - v13;
  v14 = __chkstk_darwin(v12);
  v217 = &v202 - v15;
  v16 = __chkstk_darwin(v14);
  v209 = &v202 - v17;
  v18 = __chkstk_darwin(v16);
  v207 = &v202 - v19;
  v20 = __chkstk_darwin(v18);
  v210 = &v202 - v21;
  v22 = __chkstk_darwin(v20);
  v208 = &v202 - v23;
  v24 = __chkstk_darwin(v22);
  v232 = &v202 - v25;
  v26 = __chkstk_darwin(v24);
  v229 = &v202 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v202 - v29;
  __chkstk_darwin(v28);
  v32 = &v202 - v31;
  v33 = type metadata accessor for DispatchPredicate();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = (&v202 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v227 = v3;
  v37 = *(v3 + 72);
  *v36 = v37;
  (*(v34 + 104))(v36, enum case for DispatchPredicate.onQueue(_:), v33);
  v38 = v37;
  v39 = _dispatchPreconditionTest(_:)();
  (*(v34 + 8))(v36, v33);
  if ((v39 & 1) == 0)
  {
    __break(1u);
LABEL_55:
    swift_once();
LABEL_4:
    v43 = type metadata accessor for Logger();
    v44 = sub_1000076D4(v43, qword_10177B048);
    v45 = v229;
    v46 = v237;
    (v3)(v229, v228, v237);
    v231 = v3;
    (v3)(v232, v30, v46);
    sub_10067FBD8(v32, v39);
    v206 = v44;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    sub_10067FBEC(v32, v39);
    v49 = os_log_type_enabled(v47, v48);
    v218 = v9;
    v225 = v32;
    if (v49)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock = v51;
      *v50 = 136315907;
      v205 = v39;
      v204 = v47;
      v203 = v48;
      v202 = v51;
      if (v39)
      {
        v52 = v229;
        if (v39 == 1)
        {
          v53 = 0x7453646E756F732ELL;
          v54 = 0xEB00000000747261;
        }

        else
        {
          if (v32)
          {
            v53 = 0x726961706E752ELL;
          }

          else
          {
            v53 = 0x7453646E756F732ELL;
          }

          if (v32)
          {
            v54 = 0xE700000000000000;
          }

          else
          {
            v54 = 0xEA0000000000706FLL;
          }
        }
      }

      else
      {
        v53 = 0x646E616D6D6F632ELL;
        v54 = 0xEB000000006B6341;
        v52 = v229;
      }

      v80 = sub_1000136BC(v53, v54, &aBlock);

      *(v50 + 4) = v80;
      *(v50 + 12) = 2160;
      *(v50 + 14) = 1752392040;
      *(v50 + 22) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v81 = v237;
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      v85 = v218[1];
      v85(v52, v81);
      v86 = sub_1000136BC(v82, v84, &aBlock);
      v87 = v81;

      *(v50 + 24) = v86;
      *(v50 + 32) = 2082;
      v88 = v232;
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v90;
      v232 = v85;
      v85(v88, v87);
      v92 = sub_1000136BC(v89, v91, &aBlock);

      *(v50 + 34) = v92;
      v93 = v204;
      _os_log_impl(&_mh_execute_header, v204, v203, "AirTag command: %s. Beacon %{private,mask.hash}s Command %{public}s", v50, 0x2Au);
      swift_arrayDestroy();

      v77 = v226;
      v39 = v205;
    }

    else
    {

      v75 = v9[1];
      v76 = v237;
      v75(v232, v237);
      v232 = v75;
      v75(v45, v76);
      v77 = v226;
    }

    v94 = v227;
    v95 = *(v227 + 64);
    v96 = v231;
    if (v95)
    {
      v97 = *(v227 + 64);
      v98 = v235;
      if (v39)
      {
LABEL_25:
        if (v39 == 1)
        {
          v99 = v217;
          v100 = v237;
          v96(v217, v228, v237);
          v231 = v95;
          v101 = v100;
          v102 = v211;
          v96(v211, v98, v100);
          v234 = v97;
          v103 = v218;
          v104 = *(v218 + 80);
          v105 = (v104 + 24) & ~v104;
          v106 = (v10 + v104 + v105) & ~v104;
          v107 = swift_allocObject();
          *(v107 + 16) = v94;
          v108 = v103[4];
          v108(v107 + v105, v99, v101);
          v109 = v101;
          v108(v107 + v106, v102, v101);
          v245 = sub_10067FED0;
          v246 = v107;
          aBlock = _NSConcreteStackBlock;
          v242 = 1107296256;
          v243 = sub_100006684;
          v244 = &unk_10162D270;
          v110 = _Block_copy(&aBlock);
          v111 = v231;

          v112 = v219;
          static DispatchQoS.unspecified.getter();
          v238 = _swiftEmptyArrayStorage;
          sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
          v113 = v220;
          v114 = v224;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v115 = v234;
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v110);
          sub_10067FBEC(v225, 1);
          (*(v223 + 8))(v113, v114);
          (*(v221 + 8))(v112, v222);
          v116 = v232;
          (v232)(v235, v109);
          v117 = v228;
          v118 = v109;
        }

        else
        {
          sub_10067B9CC(v234, v77, type metadata accessor for AccessoryCommand);
          if (v225)
          {
            v148 = (*(v212 + 80) + 24) & ~*(v212 + 80);
            v149 = v98;
            v150 = swift_allocObject();
            *(v150 + 16) = v94;
            sub_10067B810(v77, v150 + v148, type metadata accessor for AccessoryCommand);
            v245 = sub_10067FC00;
            v246 = v150;
            aBlock = _NSConcreteStackBlock;
            v242 = 1107296256;
            v243 = sub_100006684;
            v244 = &unk_10162D1D0;
            v151 = _Block_copy(&aBlock);
            v152 = v95;

            v153 = v219;
            static DispatchQoS.unspecified.getter();
            v238 = _swiftEmptyArrayStorage;
            sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
            sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
            v154 = v220;
            v155 = v224;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();

            _Block_release(v151);
            (*(v223 + 8))(v154, v155);
            (*(v221 + 8))(v153, v222);
            v156 = v149;
            v157 = v237;
            v116 = v232;
            (v232)(v156, v237);
            v117 = v228;
            v118 = v157;
          }

          else
          {
            v184 = v217;
            v185 = v237;
            v96(v217, v98, v237);
            v186 = (*(v212 + 80) + 24) & ~*(v212 + 80);
            v234 = v97;
            v187 = v218;
            v188 = (v213 + *(v218 + 80) + v186) & ~*(v218 + 80);
            v189 = swift_allocObject();
            *(v189 + 16) = v94;
            sub_10067B810(v77, v189 + v186, type metadata accessor for AccessoryCommand);
            (v187[4])(v189 + v188, v184, v185);
            v245 = sub_10067FDC4;
            v246 = v189;
            aBlock = _NSConcreteStackBlock;
            v242 = 1107296256;
            v243 = sub_100006684;
            v244 = &unk_10162D220;
            v190 = _Block_copy(&aBlock);
            v191 = v95;

            v192 = v219;
            static DispatchQoS.unspecified.getter();
            v238 = _swiftEmptyArrayStorage;
            sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
            sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
            v193 = v220;
            v194 = v224;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v195 = v234;
            OS_dispatch_queue.async(group:qos:flags:execute:)();

            _Block_release(v190);
            (*(v223 + 8))(v193, v194);
            (*(v221 + 8))(v192, v222);
            v116 = v232;
            (v232)(v235, v185);
            v117 = v228;
            v118 = v185;
          }
        }

        v116(v117, v118);

        v79 = v233;
        *v233 = 0;
        v196 = 511;
        goto LABEL_52;
      }
    }

    else
    {
      sub_1000BC488();
      v119 = v215;
      v120 = v214;
      v121 = v216;
      (*(v215 + 104))(v214, enum case for DispatchQoS.QoSClass.default(_:), v216);
      v122 = static OS_dispatch_queue.global(qos:)();
      v96 = v231;
      v123 = v122;
      v124 = v120;
      v97 = v123;
      (*(v119 + 8))(v124, v121);
      v98 = v235;
      if (v39)
      {
        goto LABEL_25;
      }
    }

    v125 = v225;
    v126 = sub_100421B08(v225);
    if (v126 == 4)
    {
      v127 = v207;
      v128 = v228;
      v129 = v237;
      v96(v207, v228, v237);
      v130 = v209;
      v96(v209, v98, v129);
      v131 = v95;
      v132 = v98;
      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v133, v134))
      {

        v197 = v237;
        v198 = v232;
        (v232)(v130, v237);
        v198(v127, v197);
        v198(v132, v197);
        result = (v198)(v128, v197);
        goto LABEL_51;
      }

      v135 = v125;
      v136 = swift_slowAlloc();
      v236 = swift_slowAlloc();
      aBlock = v236;
      *v136 = 16909315;
      *(v136 + 4) = v135;
      *(v136 + 5) = 2160;
      *(v136 + 7) = 1752392040;
      *(v136 + 15) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v137 = v237;
      v138 = dispatch thunk of CustomStringConvertible.description.getter();
      v139 = v127;
      v141 = v140;
      v234 = v97;
      v142 = v232;
      (v232)(v139, v137);
      v143 = sub_1000136BC(v138, v141, &aBlock);

      *(v136 + 17) = v143;
      *(v136 + 25) = 2082;
      v144 = dispatch thunk of CustomStringConvertible.description.getter();
      v146 = v145;
      v142(v130, v137);
      v147 = sub_1000136BC(v144, v146, &aBlock);

      *(v136 + 27) = v147;
      _os_log_impl(&_mh_execute_header, v133, v134, "Invalid opcode: %{public}hhu. Beacon %{private,mask.hash}s Command %{public}s.", v136, 0x23u);
      swift_arrayDestroy();
    }

    else
    {
      v158 = v126;
      v234 = v97;
      v159 = v208;
      v160 = v228;
      v161 = v237;
      v96(v208, v228, v237);
      v162 = v210;
      v96(v210, v98, v161);
      v163 = v95;
      v164 = v98;
      v133 = Logger.logObject.getter();
      v165 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v133, v165))
      {

        v199 = v162;
        v200 = v237;
        v201 = v232;
        (v232)(v199, v237);
        v201(v159, v200);
        v201(v164, v200);
        result = (v201)(v160, v200);
        goto LABEL_51;
      }

      v166 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v166 = 136315907;
      v167 = 0xEB000000006B6341;
      v168 = 0x7453646E756F732ELL;
      v169 = 0xEA0000000000706FLL;
      if (v158 != 2)
      {
        v168 = 0x726961706E752ELL;
        v169 = 0xE700000000000000;
      }

      v170 = 0x7453646E756F732ELL;
      if (v158)
      {
        v167 = 0xEB00000000747261;
      }

      else
      {
        v170 = 0x646E616D6D6F632ELL;
      }

      if (v158 <= 1u)
      {
        v171 = v170;
      }

      else
      {
        v171 = v168;
      }

      if (v158 <= 1u)
      {
        v172 = v167;
      }

      else
      {
        v172 = v169;
      }

      v173 = sub_1000136BC(v171, v172, &aBlock);

      *(v166 + 4) = v173;
      *(v166 + 12) = 2160;
      *(v166 + 14) = 1752392040;
      *(v166 + 22) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v137 = v237;
      v174 = dispatch thunk of CustomStringConvertible.description.getter();
      v175 = v159;
      v177 = v176;
      v142 = v232;
      (v232)(v175, v137);
      v178 = sub_1000136BC(v174, v177, &aBlock);

      *(v166 + 24) = v178;
      *(v166 + 32) = 2082;
      v179 = v210;
      v180 = dispatch thunk of CustomStringConvertible.description.getter();
      v182 = v181;
      v142(v179, v137);
      v183 = sub_1000136BC(v180, v182, &aBlock);

      *(v166 + 34) = v183;
      _os_log_impl(&_mh_execute_header, v133, v165, ".commandAck opcode: %s. Beacon %{private,mask.hash}s. Command %{public}s.", v166, 0x2Au);
      swift_arrayDestroy();
    }

    v142(v235, v137);
    result = (v142)(v228, v137);
LABEL_51:
    v79 = v233;
    *v233 = 0;
    v196 = 255;
LABEL_52:
    *(v79 + 4) = v196;
    goto LABEL_53;
  }

  v3 = v9[2];
  v40 = v234;
  (v3)(v32, &v234[*(v237 + 20)], v8);
  v236 = (v9 + 2);
  (v3)(v30, v40, v8);
  v41 = v231;
  sub_1001011C0(v231, &aBlock);
  sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  v42 = swift_dynamicCast();
  v237 = v8;
  v230 = v42;
  v235 = v30;
  if (v42)
  {
    v228 = v32;
    v32 = v238;
    v39 = v239;
    if (qword_101694828 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_55;
  }

  v55 = v3;
  v56 = v237;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_1000076D4(v57, qword_10177B048);
  sub_1001011C0(v41, &aBlock);
  v58 = v225;
  v59 = v56;
  v55(v225, v32, v56);
  v60 = Logger.logObject.getter();
  v61 = v32;
  v62 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v60, v62))
  {
    v63 = swift_slowAlloc();
    v240 = swift_slowAlloc();
    *v63 = 136315651;
    sub_1001011C0(&aBlock, &v238);
    v64 = v61;
    v65 = String.init<A>(describing:)();
    v67 = v66;
    sub_100007BAC(&aBlock);
    v68 = sub_1000136BC(v65, v67, &v240);

    *(v63 + 4) = v68;
    *(v63 + 12) = 2160;
    *(v63 + 14) = 1752392040;
    *(v63 + 22) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    v72 = v9[1];
    v72(v58, v59);
    v73 = sub_1000136BC(v69, v71, &v240);

    *(v63 + 24) = v73;
    _os_log_impl(&_mh_execute_header, v60, v62, "Invalid AirTag command from payload %s for %{private,mask.hash}s", v63, 0x20u);
    swift_arrayDestroy();

    v72(v235, v59);
    result = (v72)(v64, v59);
  }

  else
  {

    v78 = v9[1];
    v78(v58, v59);
    sub_100007BAC(&aBlock);
    v78(v235, v59);
    result = (v78)(v61, v59);
  }

  v79 = v233;
  *v233 = 14;
  *(v79 + 1) = 0u;
  *(v79 + 3) = 0u;
  *(v79 + 40) = 11;
LABEL_53:
  *(v79 + 41) = v230 ^ 1;
  return result;
}

uint64_t sub_1006739AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v462 = a3;
  v453 = sub_1000BC4D4(&qword_1016C3210, &qword_101392040);
  isa = v453[-1].isa;
  __chkstk_darwin(v453);
  v435 = &v417 - v5;
  v6 = sub_1000BC4D4(&qword_1016998F0, &qword_1013B60E0);
  __chkstk_darwin(v6 - 8);
  v455 = &v417 - v7;
  v437 = type metadata accessor for DispatchWorkItemFlags();
  v438 = *(v437 - 8);
  __chkstk_darwin(v437);
  v436 = &v417 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v440 = type metadata accessor for DispatchQoS();
  v441 = *(v440 - 8);
  __chkstk_darwin(v440);
  v439 = &v417 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessoryCommand(0);
  v425 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v434 = &v417 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v446 = &v417 - v14;
  v426 = v15;
  __chkstk_darwin(v13);
  v427 = &v417 - v16;
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v456 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v417 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v24 = &v417 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v458 = &v417 - v26;
  v27 = __chkstk_darwin(v25);
  v457 = &v417 - v28;
  v29 = __chkstk_darwin(v27);
  v451 = &v417 - v30;
  v31 = __chkstk_darwin(v29);
  v450 = &v417 - v32;
  v33 = __chkstk_darwin(v31);
  v433 = &v417 - v34;
  v35 = __chkstk_darwin(v33);
  v460 = &v417 - v36;
  v37 = __chkstk_darwin(v35);
  v445 = &v417 - v38;
  v39 = __chkstk_darwin(v37);
  v444 = &v417 - v40;
  v41 = __chkstk_darwin(v39);
  v443 = &v417 - v42;
  v43 = __chkstk_darwin(v41);
  v432 = &v417 - v44;
  v45 = __chkstk_darwin(v43);
  v430 = &v417 - v46;
  v47 = __chkstk_darwin(v45);
  v424 = &v417 - v48;
  v49 = __chkstk_darwin(v47);
  v428 = &v417 - v50;
  v51 = __chkstk_darwin(v49);
  v423 = &v417 - v52;
  v53 = __chkstk_darwin(v51);
  v448 = &v417 - v54;
  v55 = __chkstk_darwin(v53);
  v431 = &v417 - v56;
  v57 = __chkstk_darwin(v55);
  v429 = &v417 - v58;
  v59 = __chkstk_darwin(v57);
  v61 = &v417 - v60;
  __chkstk_darwin(v59);
  v447 = v10;
  v464 = v21;
  v63 = *(v21 + 16);
  v62 = v21 + 16;
  v467 = &v417 - v64;
  v63();
  v466 = v61;
  v449 = a2;
  v465 = v20;
  v463 = v63;
  (v63)(v61, a2, v20);
  v65 = a1;
  sub_1001011C0(a1, &v472);
  v459 = sub_1000BC4D4(&qword_1016972F8, &unk_1013D4DE0);
  if (!swift_dynamicCast())
  {
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_1000076D4(v72, qword_10177B048);
    sub_1001011C0(a1, &v472);
    v73 = v467;
    v74 = v465;
    v463(v24, v467, v465);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v468 = swift_slowAlloc();
      *v77 = 136315651;
      sub_1001011C0(&v472, &aBlock);
      v78 = String.init<A>(describing:)();
      v80 = v79;
      sub_100007BAC(&v472);
      v81 = sub_1000136BC(v78, v80, &v468);

      *(v77 + 4) = v81;
      *(v77 + 12) = 2160;
      *(v77 + 14) = 1752392040;
      *(v77 + 22) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      v85 = *(v464 + 8);
      v85(v24, v74);
      v86 = sub_1000136BC(v82, v84, &v468);

      *(v77 + 24) = v86;
      _os_log_impl(&_mh_execute_header, v75, v76, "Invalid command from payload %s for %{private,mask.hash}s", v77, 0x20u);
      swift_arrayDestroy();

      v85(v466, v74);
      result = (v85)(v467, v74);
    }

    else
    {

      v88 = *(v464 + 8);
      v88(v24, v74);
      sub_100007BAC(&v472);
      v88(v466, v74);
      result = (v88)(v73, v74);
    }

    v89 = v462;
    v90 = 14;
    goto LABEL_10;
  }

  v442 = v62;
  v66 = *(&aBlock + 1);
  v454 = aBlock;
  v68 = *(&v470 + 1);
  v67 = v470;
  v420 = *(&v471 + 1);
  v69 = v471;
  v70 = v461;
  v71 = *(v461 + 64);
  v421 = v470;
  if (v71)
  {
    v422 = v71;
  }

  else
  {
    v419 = *(&v470 + 1);
    v92 = v471;
    sub_1000BC488();
    v93 = v456;
    (*(v456 + 104))(v19, enum case for DispatchQoS.QoSClass.default(_:), v17);
    v422 = static OS_dispatch_queue.global(qos:)();
    (*(v93 + 8))(v19, v17);
    v69 = v92;
    v68 = v419;
    v67 = v421;
  }

  v94 = v465;
  v95 = v460;
  v96 = (v69 >> 58) & 0xC | (v66 >> 60) & 3;
  if (v96 != 1)
  {
    if (v96 == 3)
    {
      v155 = v70;
      v156 = qword_101694828;
      v157 = v71;
      v158 = v467;
      if (v156 != -1)
      {
        swift_once();
      }

      v159 = type metadata accessor for Logger();
      sub_1000076D4(v159, qword_10177B048);
      v160 = v450;
      v161 = v463;
      v463(v450, v158, v94);
      v162 = v451;
      v163 = v466;
      v161(v451, v466, v94);
      v164 = Logger.logObject.getter();
      v165 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v164, v165))
      {
        v166 = swift_slowAlloc();
        v463 = swift_slowAlloc();
        *&v472 = v463;
        *v166 = 16778243;
        *(v166 + 4) = v454;
        *(v166 + 5) = 2160;
        *(v166 + 7) = 1752392040;
        *(v166 + 15) = 2081;
        sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v167 = v162;
        v168 = dispatch thunk of CustomStringConvertible.description.getter();
        v170 = v169;
        v171 = v160;
        v172 = *(v464 + 8);
        v172(v171, v465);
        v173 = sub_1000136BC(v168, v170, &v472);
        v158 = v467;

        *(v166 + 17) = v173;
        *(v166 + 25) = 2082;
        v174 = dispatch thunk of CustomStringConvertible.description.getter();
        v176 = v175;
        v172(v167, v465);
        v94 = v465;
        v177 = sub_1000136BC(v174, v176, &v472);

        *(v166 + 27) = v177;
        _os_log_impl(&_mh_execute_header, v164, v165, "Received TX Power: %hhd for %{private,mask.hash}s Command %{public}s!", v166, 0x23u);
        swift_arrayDestroy();
        v163 = v466;
      }

      else
      {

        v203 = v160;
        v172 = *(v464 + 8);
        v172(v162, v94);
        v172(v203, v94);
      }

      v89 = v462;
      v204 = v453;
      swift_beginAccess();
      v205 = *(v155 + 120);
      if (*(v205 + 16))
      {

        v206 = sub_1000210EC(v158);
        v207 = isa;
        if (v208)
        {
          (*(isa + 2))(v455, *(v205 + 56) + *(isa + 9) * v206, v204);
          v209 = 0;
        }

        else
        {
          v209 = 1;
        }
      }

      else
      {
        v209 = 1;
        v207 = isa;
      }

      v233 = v455;
      (*(v207 + 7))(v455, v209, 1, v204);
      if ((*(v207 + 6))(v233, 1, v204))
      {

        v172(v163, v94);
        v172(v158, v94);
        result = sub_10000B3A8(v233, &qword_1016998F0, &qword_1013B60E0);
      }

      else
      {
        v234 = v233;
        v235 = v435;
        (*(v207 + 2))(v435, v234, v204);
        sub_10000B3A8(v234, &qword_1016998F0, &qword_1013B60E0);
        *&aBlock = v454;
        CheckedContinuation.resume(returning:)();

        (*(v207 + 1))(v235, v204);
        v172(v163, v94);
        result = (v172)(v158, v94);
      }

      goto LABEL_96;
    }

    v97 = v467;
    if (v96 == 10 && !v420 && v69 == 0x2000000000000000 && v454 == 3 && v66 == 0x2000000000000000 && !(v68 | v67))
    {
      v98 = qword_101694828;
      v99 = v71;
      if (v98 != -1)
      {
        swift_once();
      }

      v100 = type metadata accessor for Logger();
      v101 = sub_1000076D4(v100, qword_10177B048);
      v102 = v449;
      v103 = v446;
      sub_10067B9CC(v449, v446, type metadata accessor for AccessoryCommand);
      v104 = v445;
      v105 = v463;
      v463(v445, v97, v94);
      v105(v95, v466, v94);
      v459 = v101;
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v458 = swift_slowAlloc();
        *&aBlock = v458;
        *v108 = 136446979;
        LODWORD(v457) = v107;
        v109 = v103;
        v110 = v447;
        v111 = (v109 + *(v447 + 24));
        v112 = v111[2];
        v473 = v111[1];
        v474 = v112;
        v472 = *v111;
        v113 = sub_1010C02C0();
        v115 = v114;
        sub_10067BA34(v109, type metadata accessor for AccessoryCommand);
        v116 = sub_1000136BC(v113, v115, &aBlock);

        *(v108 + 4) = v116;
        *(v108 + 12) = 2160;
        *(v108 + 14) = 1752392040;
        *(v108 + 22) = 2081;
        sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v117 = dispatch thunk of CustomStringConvertible.description.getter();
        v119 = v118;
        v120 = *(v464 + 8);
        v120(v104, v465);
        v121 = sub_1000136BC(v117, v119, &aBlock);
        v94 = v465;

        *(v108 + 24) = v121;
        *(v108 + 32) = 2082;
        v122 = v460;
        v123 = dispatch thunk of CustomStringConvertible.description.getter();
        v125 = v124;
        v460 = v120;
        v120(v122, v94);
        v126 = sub_1000136BC(v123, v125, &aBlock);
        v97 = v467;

        *(v108 + 34) = v126;
        _os_log_impl(&_mh_execute_header, v106, v457, "%{public}s completed for %{private,mask.hash}s Command %{public}s!", v108, 0x2Au);
        swift_arrayDestroy();

        v102 = v449;

        v127 = v464;
      }

      else
      {

        v127 = v464;
        v236 = *(v464 + 8);
        v236(v460, v94);
        v460 = v236;
        v236(v104, v94);
        sub_10067BA34(v103, type metadata accessor for AccessoryCommand);
        v110 = v447;
      }

      v237 = v102 + *(v110 + 24);
      v238 = *(v237 + 8);
      v239 = *(v237 + 32);
      v240 = (v239 >> 59) & 6 | ((v238 & 0x2000000000000000) != 0);
      if (v240 == 1)
      {
        v295 = v448;
        v296 = v461;
        v297 = v463;
        v463(v448, v97, v94);
        v298 = v433;
        v297(v433, v466, v94);
        v299 = *(v127 + 80);
        v300 = (v299 + 24) & ~v299;
        v301 = v127;
        v302 = (v22 + v299 + v300) & ~v299;
        v303 = swift_allocObject();
        *(v303 + 16) = v296;
        v304 = *(v301 + 32);
        v304(v303 + v300, v295, v94);
        v304(v303 + v302, v298, v94);
        *&v471 = sub_100680F40;
        *(&v471 + 1) = v303;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v251 = &unk_10162CF00;
      }

      else
      {
        if (v240 != 5 || *(v237 + 40) || v239 != 0x2000000000000000 || *(v237 + 16) != 0 || v238 != 0x2000000000000000 || *v237 != 1)
        {
          v281 = v434;
          sub_10067B9CC(v102, v434, type metadata accessor for AccessoryCommand);
          v282 = Logger.logObject.getter();
          v283 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v282, v283))
          {
            v284 = swift_slowAlloc();
            v285 = swift_slowAlloc();
            v286 = v110;
            v287 = v285;
            v468 = v285;
            *v284 = 136446210;
            v288 = (v281 + *(v286 + 24));
            v289 = v288[2];
            v470 = v288[1];
            v471 = v289;
            aBlock = *v288;
            v290 = sub_1010C02C0();
            v292 = v291;
            sub_10067BA34(v281, type metadata accessor for AccessoryCommand);
            v293 = sub_1000136BC(v290, v292, &v468);

            *(v284 + 4) = v293;
            _os_log_impl(&_mh_execute_header, v282, v283, "Invalid command %{public}s for .soundComplete!", v284, 0xCu);
            sub_100007BAC(v287);

            v294 = v460;
            (v460)(v466, v94);
            result = v294(v97, v94);
          }

          else
          {

            v333 = v460;
            (v460)(v466, v94);
            v333(v97, v94);
            result = sub_10067BA34(v281, type metadata accessor for AccessoryCommand);
          }

          goto LABEL_95;
        }

        v241 = v448;
        v242 = v461;
        v243 = v463;
        v463(v448, v97, v94);
        v244 = v433;
        v243(v433, v466, v94);
        v245 = *(v127 + 80);
        v246 = (v245 + 24) & ~v245;
        v247 = v127;
        v248 = (v22 + v245 + v246) & ~v245;
        v249 = swift_allocObject();
        *(v249 + 16) = v242;
        v250 = *(v247 + 32);
        v250(v249 + v246, v241, v94);
        v250(v249 + v248, v244, v94);
        *&v471 = sub_10067F698;
        *(&v471 + 1) = v249;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v251 = &unk_10162CEB0;
      }

      *&v470 = sub_100006684;
      *(&v470 + 1) = v251;
      v305 = _Block_copy(&aBlock);

      v306 = v439;
      static DispatchQoS.unspecified.getter();
      v468 = _swiftEmptyArrayStorage;
      sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v307 = v436;
      v308 = v437;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v309 = v422;
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v305);
      (*(v438 + 8))(v307, v308);
      (*(v441 + 8))(v306, v440);
      v310 = v460;
      (v460)(v466, v94);
      v310(v97, v94);

LABEL_95:
      v89 = v462;
LABEL_96:
      v91 = 0;
      v334 = xmmword_10138BC00;
LABEL_97:
      *v89 = v334;
      *(v89 + 2) = 0;
      *(v89 + 3) = 0;
      v89[2] = xmmword_1013B5E90;
      *(v89 + 48) = 1;
      goto LABEL_98;
    }

    v418 = v66;
    v460 = v69;
    v128 = qword_101694828;
    v129 = v71;
    if (v128 != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for Logger();
    sub_1000076D4(v130, qword_10177B048);
    sub_1001011C0(v65, &v472);
    v131 = v457;
    v132 = v463;
    v463(v457, v97, v94);
    v133 = v458;
    v134 = v94;
    v135 = v466;
    v132(v458, v466, v134);
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v419 = v68;
      v465 = v139;
      v468 = v139;
      *v138 = 136446979;
      sub_1001011C0(&v472, &aBlock);
      v140 = String.init<A>(describing:)();
      v141 = v133;
      v143 = v142;
      sub_100007BAC(&v472);
      v144 = sub_1000136BC(v140, v143, &v468);

      *(v138 + 4) = v144;
      *(v138 + 12) = 2160;
      *(v138 + 14) = 1752392040;
      *(v138 + 22) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v145 = dispatch thunk of CustomStringConvertible.description.getter();
      v146 = v131;
      v148 = v147;
      v149 = *(v464 + 8);
      v149(v146, v134);
      v150 = sub_1000136BC(v145, v148, &v468);

      *(v138 + 24) = v150;
      *(v138 + 32) = 2082;
      v151 = dispatch thunk of CustomStringConvertible.description.getter();
      v153 = v152;
      v149(v141, v134);
      v154 = sub_1000136BC(v151, v153, &v468);

      *(v138 + 34) = v154;
      _os_log_impl(&_mh_execute_header, v136, v137, "Invalid command %{public}s beacon %{private,mask.hash}s Command %{public}s", v138, 0x2Au);
      swift_arrayDestroy();

      sub_10067F4FC(v454, v418, v421, v419, v460, v420, sub_100016590);
      v149(v466, v134);
      result = (v149)(v467, v134);
    }

    else
    {

      sub_10067F4FC(v454, v418, v421, v68, v460, v420, sub_100016590);
      v201 = *(v464 + 8);
      v201(v133, v134);
      v201(v131, v134);
      sub_100007BAC(&v472);
      v201(v135, v134);
      result = (v201)(v97, v134);
    }

    goto LABEL_38;
  }

  v460 = v69;
  v178 = v71;
  v179 = v454;
  sub_100017D5C(v454, v66 & 0xCFFFFFFFFFFFFFFFLL);
  sub_100017D5C(v67, v68);
  v180 = sub_10041C094(v179, v66 & 0xCFFFFFFFFFFFFFFFLL, v67, v68);
  v418 = v66;
  if ((v180 & 0xFF0000) != 0x60000)
  {
    v210 = v180;
    v211 = sub_10030F9A4(v180);
    if (v211 == 23)
    {
      if (qword_101694828 != -1)
      {
        swift_once();
      }

      v212 = type metadata accessor for Logger();
      sub_1000076D4(v212, qword_10177B048);
      v213 = v430;
      v214 = v467;
      v215 = v463;
      v463(v430, v467, v94);
      v216 = v432;
      v217 = v94;
      v218 = v466;
      v215(v432, v466, v217);
      v219 = Logger.logObject.getter();
      v220 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v219, v220))
      {
        v221 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        v419 = v68;
        v465 = v222;
        *&v472 = v222;
        *v221 = 33686531;
        *(v221 + 4) = v210;
        *(v221 + 6) = 2160;
        *(v221 + 8) = 1752392040;
        *(v221 + 16) = 2081;
        sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        LODWORD(v463) = v220;
        v223 = dispatch thunk of CustomStringConvertible.description.getter();
        v224 = v216;
        v226 = v225;
        v227 = *(v464 + 8);
        v227(v213, v217);
        v228 = sub_1000136BC(v223, v226, &v472);

        *(v221 + 18) = v228;
        *(v221 + 26) = 2082;
        v229 = dispatch thunk of CustomStringConvertible.description.getter();
        v231 = v230;
        v227(v224, v217);
        v232 = sub_1000136BC(v229, v231, &v472);

        *(v221 + 28) = v232;
        _os_log_impl(&_mh_execute_header, v219, v463, "Invalid opcode: %{public}hu. Beacon %{private,mask.hash}s Command %{public}s.", v221, 0x24u);
        swift_arrayDestroy();

        sub_10067F4FC(v454, v418, v421, v419, v460, v420, sub_100016590);
        v227(v466, v217);
        result = (v227)(v467, v217);
      }

      else
      {

        sub_10067F4FC(v454, v418, v421, v68, v460, v420, sub_100016590);
        v311 = *(v464 + 8);
        v311(v216, v217);
        v311(v213, v217);
        v311(v218, v217);
        result = (v311)(v214, v217);
      }

      goto LABEL_38;
    }

    LODWORD(v459) = v211;
    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v253 = type metadata accessor for Logger();
    v254 = sub_1000076D4(v253, qword_10177B048);
    v255 = v429;
    v256 = v463;
    v463(v429, v467, v94);
    v257 = v431;
    v256(v431, v466, v94);
    v457 = v254;
    v258 = Logger.logObject.getter();
    v259 = static os_log_type_t.default.getter();
    v260 = HIWORD(v210);
    if (os_log_type_enabled(v258, v259))
    {
      v261 = swift_slowAlloc();
      v456 = swift_slowAlloc();
      *&v472 = v456;
      *v261 = 136316163;
      v262 = sub_10030E868(v459);
      LODWORD(v455) = v259;
      v264 = sub_1000136BC(v262, v263, &v472);

      *(v261 + 4) = v264;
      *(v261 + 12) = 2082;
      if (v260)
      {
        v265 = v260;
      }

      else
      {
        v265 = 6;
      }

      v266 = sub_10041B9C8(v265);
      v268 = sub_1000136BC(v266, v267, &v472);

      *(v261 + 14) = v268;
      *(v261 + 22) = 2160;
      *(v261 + 24) = 1752392040;
      *(v261 + 32) = 2081;
      sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v269 = dispatch thunk of CustomStringConvertible.description.getter();
      v271 = v270;
      v453 = v258;
      v272 = v255;
      v273 = v257;
      v274 = *(v464 + 8);
      v274(v272, v465);
      v275 = sub_1000136BC(v269, v271, &v472);
      v94 = v465;

      *(v261 + 34) = v275;
      *(v261 + 42) = 2082;
      v276 = dispatch thunk of CustomStringConvertible.description.getter();
      v278 = v277;
      v458 = v274;
      v274(v273, v94);
      v279 = sub_1000136BC(v276, v278, &v472);

      *(v261 + 44) = v279;
      v280 = v453;
      _os_log_impl(&_mh_execute_header, v453, v455, "Opcode: %s. Status %{public}s. Beacon %{private,mask.hash}s Command %{public}s.", v261, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      v312 = *(v464 + 8);
      v312(v257, v94);
      v458 = v312;
      v312(v255, v94);
    }

    if (v260)
    {
      v313 = v260;
    }

    else
    {
      v313 = 6;
    }

    if (v459 > 6u)
    {
      v315 = v448;
      if (v459 == 7)
      {
        if (*(v461 + 176) == 1)
        {
          *(v461 + 176) = 0;
          v335 = v423;
          v336 = v467;
          v463(v423, v467, v94);
          v337 = Logger.logObject.getter();
          v338 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v337, v338))
          {
            v339 = swift_slowAlloc();
            v340 = swift_slowAlloc();
            *&v472 = v340;
            *v339 = 141558275;
            *(v339 + 4) = 1752392040;
            *(v339 + 12) = 2081;
            sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v341 = dispatch thunk of CustomStringConvertible.description.getter();
            v343 = v342;
            v344 = v335;
            v345 = v458;
            (v458)(v344, v94);
            v346 = sub_1000136BC(v341, v343, &v472);

            *(v339 + 14) = v346;
            _os_log_impl(&_mh_execute_header, v337, v338, "Sending unpair command for beacon %{private,mask.hash}s.", v339, 0x16u);
            sub_100007BAC(v340);

            sub_10067F4FC(v454, v418, v421, v68, v460, v420, sub_100016590);
            v345(v466, v94);
            result = (v345)(v467, v94);
          }

          else
          {

            sub_10067F4FC(v454, v418, v421, v68, v460, v420, sub_100016590);
            v416 = v458;
            (v458)(v335, v94);
            v416(v466, v94);
            result = (v416)(v336, v94);
          }

          v89 = v462;
          v91 = 0;
          *v462 = xmmword_1013AAD90;
          *(v89 + 2) = 0;
          *(v89 + 3) = 0;
          v202 = xmmword_10139BF70;
          goto LABEL_40;
        }

        v393 = Logger.logObject.getter();
        v394 = static os_log_type_t.default.getter();
        v395 = os_log_type_enabled(v393, v394);
        v89 = v462;
        v397 = v466;
        v396 = v467;
        if (v395)
        {
          v398 = swift_slowAlloc();
          *v398 = 0;
          _os_log_impl(&_mh_execute_header, v393, v394, "Ignoring .setMaxConnections response.", v398, 2u);
        }

        sub_10067F4FC(v454, v418, v421, v68, v460, v420, sub_100016590);
        v399 = v458;
        (v458)(v397, v94);
        result = v399(v396, v94);
LABEL_39:
        v91 = 0;
        *v89 = xmmword_10138BC00;
        *(v89 + 2) = 0;
        *(v89 + 3) = 0;
        v202 = xmmword_1013B5E90;
LABEL_40:
        v89[2] = v202;
        *(v89 + 48) = 0;
        goto LABEL_98;
      }

      if (v459 == 12)
      {
        v419 = v68;
        v386 = v427;
        sub_10067B9CC(v449, v427, type metadata accessor for AccessoryCommand);
        v387 = v315;
        v463(v315, v466, v94);
        v388 = (*(v425 + 80) + 24) & ~*(v425 + 80);
        v389 = v464;
        v390 = (v426 + *(v464 + 80) + v388) & ~*(v464 + 80);
        if (v313 == 6)
        {
          v391 = swift_allocObject();
          *(v391 + 16) = v461;
          sub_10067B810(v386, v391 + v388, type metadata accessor for AccessoryCommand);
          (*(v389 + 32))(v391 + v390, v387, v94);
          *&v474 = sub_10067F91C;
          *(&v474 + 1) = v391;
          *&v472 = _NSConcreteStackBlock;
          *(&v472 + 1) = 1107296256;
          *&v473 = sub_100006684;
          *(&v473 + 1) = &unk_10162D0E0;
        }

        else
        {
          v413 = swift_allocObject();
          *(v413 + 16) = v461;
          sub_10067B810(v386, v413 + v388, type metadata accessor for AccessoryCommand);
          (*(v389 + 32))(v413 + v390, v387, v94);
          *(v413 + v390 + v22) = v313;
          *&v474 = sub_10067F800;
          *(&v474 + 1) = v413;
          *&v472 = _NSConcreteStackBlock;
          *(&v472 + 1) = 1107296256;
          *&v473 = sub_100006684;
          *(&v473 + 1) = &unk_10162D090;
        }

        v392 = _Block_copy(&v472);

        v329 = v439;
        static DispatchQoS.unspecified.getter();
        *&aBlock = _swiftEmptyArrayStorage;
        sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v330 = v436;
        v331 = v437;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v414 = v422;
        OS_dispatch_queue.async(group:qos:flags:execute:)();

        _Block_release(v392);
        goto LABEL_120;
      }

      v316 = v428;
      if (v459 != 18)
      {
LABEL_102:
        v347 = v467;
        v348 = v463;
        v463(v316, v467, v94);
        v349 = v424;
        v348(v424, v466, v94);
        v350 = Logger.logObject.getter();
        v351 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v350, v351))
        {
          v352 = swift_slowAlloc();
          v465 = swift_slowAlloc();
          *&v472 = v465;
          *v352 = 136316163;
          v353 = sub_10030E868(v459);
          v355 = sub_1000136BC(v353, v354, &v472);

          *(v352 + 4) = v355;
          *(v352 + 12) = 2080;
          v356 = sub_10041B9C8(v313);
          v358 = sub_1000136BC(v356, v357, &v472);

          *(v352 + 14) = v358;
          *(v352 + 22) = 2160;
          *(v352 + 24) = 1752392040;
          *(v352 + 32) = 2081;
          sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v359 = dispatch thunk of CustomStringConvertible.description.getter();
          v361 = v360;
          v419 = v68;
          v362 = v458;
          (v458)(v316, v94);
          v363 = sub_1000136BC(v359, v361, &v472);

          *(v352 + 34) = v363;
          *(v352 + 42) = 2082;
          v364 = v424;
          v365 = dispatch thunk of CustomStringConvertible.description.getter();
          v367 = v366;
          v362(v364, v94);
          v368 = sub_1000136BC(v365, v367, &v472);

          *(v352 + 44) = v368;
          _os_log_impl(&_mh_execute_header, v350, v351, "Unsupported %s. Status %s. Beacon %{private,mask.hash}s Command %{public}s.", v352, 0x34u);
          swift_arrayDestroy();

          sub_10067F4FC(v454, v418, v421, v419, v460, v420, sub_100016590);
          v362(v466, v94);
          result = (v362)(v467, v94);
        }

        else
        {

          sub_10067F4FC(v454, v418, v421, v68, v460, v420, sub_100016590);
          v400 = v458;
          (v458)(v349, v94);
          v400(v316, v94);
          v400(v466, v94);
          result = (v400)(v347, v94);
        }

        goto LABEL_38;
      }
    }

    else
    {
      v314 = v461;
      v315 = v448;
      v316 = v428;
      if (v459)
      {
        if (v459 == 1)
        {
          v419 = v68;
          v379 = v427;
          sub_10067B9CC(v449, v427, type metadata accessor for AccessoryCommand);
          v380 = v315;
          v463(v315, v466, v94);
          v381 = (*(v425 + 80) + 24) & ~*(v425 + 80);
          v382 = v464;
          v383 = (v426 + *(v464 + 80) + v381) & ~*(v464 + 80);
          if (v313 == 6)
          {
            v384 = swift_allocObject();
            *(v384 + 16) = v461;
            sub_10067B810(v379, v384 + v381, type metadata accessor for AccessoryCommand);
            (*(v382 + 32))(v384 + v383, v380, v94);
            *&v474 = sub_100680F3C;
            *(&v474 + 1) = v384;
            *&v472 = _NSConcreteStackBlock;
            *(&v472 + 1) = 1107296256;
            *&v473 = sub_100006684;
            *(&v473 + 1) = &unk_10162D040;
          }

          else
          {
            v407 = swift_allocObject();
            *(v407 + 16) = v461;
            sub_10067B810(v379, v407 + v381, type metadata accessor for AccessoryCommand);
            (*(v382 + 32))(v407 + v383, v380, v94);
            *(v407 + v383 + v22) = v313;
            *&v474 = sub_10067F7E0;
            *(&v474 + 1) = v407;
            *&v472 = _NSConcreteStackBlock;
            *(&v472 + 1) = 1107296256;
            *&v473 = sub_100006684;
            *(&v473 + 1) = &unk_10162CFF0;
          }

          v385 = _Block_copy(&v472);

          v408 = v439;
          static DispatchQoS.unspecified.getter();
          *&aBlock = _swiftEmptyArrayStorage;
          sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
          v409 = v436;
          v410 = v437;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v411 = v422;
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v385);
          sub_10067F4FC(v454, v418, v421, v419, v460, v420, sub_100016590);
          (*(v438 + 8))(v409, v410);
          (*(v441 + 8))(v408, v440);
          goto LABEL_117;
        }

        if (v459 == 4)
        {
          v317 = v427;
          sub_10067B9CC(v449, v427, type metadata accessor for AccessoryCommand);
          v318 = (*(v425 + 80) + 24) & ~*(v425 + 80);
          v319 = v318 + v426;
          if (v313 == 6)
          {
            v320 = swift_allocObject();
            *(v320 + 16) = v314;
            sub_10067B810(v317, v320 + v318, type metadata accessor for AccessoryCommand);
            *&v474 = sub_100680F38;
            *(&v474 + 1) = v320;
            *&v472 = _NSConcreteStackBlock;
            *(&v472 + 1) = 1107296256;
            v321 = &unk_10162CFA0;
          }

          else
          {
            v401 = swift_allocObject();
            *(v401 + 16) = v314;
            sub_10067B810(v317, v401 + v318, type metadata accessor for AccessoryCommand);
            *(v401 + v319) = v313;
            *&v474 = sub_10067F75C;
            *(&v474 + 1) = v401;
            *&v472 = _NSConcreteStackBlock;
            *(&v472 + 1) = 1107296256;
            v321 = &unk_10162CF50;
          }

          *&v473 = sub_100006684;
          *(&v473 + 1) = v321;
          v402 = _Block_copy(&v472);

          v403 = v439;
          static DispatchQoS.unspecified.getter();
          *&aBlock = _swiftEmptyArrayStorage;
          sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
          v404 = v436;
          v405 = v437;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v406 = v422;
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v402);
          sub_10067F4FC(v454, v418, v421, v68, v460, v420, sub_100016590);
          (*(v438 + 8))(v404, v405);
          (*(v441 + 8))(v403, v440);
LABEL_117:
          v412 = v458;
          (v458)(v466, v94);
          v412(v467, v94);

          v91 = 0;
          v334 = xmmword_10138BC00;
          v89 = v462;
          goto LABEL_97;
        }

        goto LABEL_102;
      }
    }

    v419 = v68;
    if (v313 != 6)
    {
      v369 = v427;
      sub_10067B9CC(v449, v427, type metadata accessor for AccessoryCommand);
      v463(v315, v466, v94);
      v370 = (*(v425 + 80) + 24) & ~*(v425 + 80);
      v371 = v464;
      v372 = (v426 + *(v464 + 80) + v370) & ~*(v464 + 80);
      v373 = swift_allocObject();
      *(v373 + 16) = v461;
      sub_10067B810(v369, v373 + v370, type metadata accessor for AccessoryCommand);
      (*(v371 + 32))(v373 + v372, v448, v94);
      *(v373 + v372 + v22) = v313;
      *&v474 = sub_10067FB98;
      *(&v474 + 1) = v373;
      *&v472 = _NSConcreteStackBlock;
      *(&v472 + 1) = 1107296256;
      *&v473 = sub_100006684;
      *(&v473 + 1) = &unk_10162D130;
      v374 = _Block_copy(&v472);

      v375 = v439;
      static DispatchQoS.unspecified.getter();
      *&aBlock = _swiftEmptyArrayStorage;
      sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v376 = v436;
      v377 = v437;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v378 = v422;
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v374);
      sub_10067F4FC(v454, v418, v421, v419, v460, v420, sub_100016590);
      (*(v438 + 8))(v376, v377);
      (*(v441 + 8))(v375, v440);
LABEL_121:
      v415 = v458;
      (v458)(v466, v94);
      v415(v467, v94);

LABEL_38:
      v89 = v462;
      goto LABEL_39;
    }

    v322 = v427;
    sub_10067B9CC(v449, v427, type metadata accessor for AccessoryCommand);
    v323 = v315;
    v463(v315, v466, v94);
    v324 = (*(v425 + 80) + 24) & ~*(v425 + 80);
    v325 = v464;
    v326 = (v426 + *(v464 + 80) + v324) & ~*(v464 + 80);
    v327 = swift_allocObject();
    *(v327 + 16) = v461;
    sub_10067B810(v322, v327 + v324, type metadata accessor for AccessoryCommand);
    (*(v325 + 32))(v327 + v326, v323, v94);
    *&v474 = sub_10067FBB8;
    *(&v474 + 1) = v327;
    *&v472 = _NSConcreteStackBlock;
    *(&v472 + 1) = 1107296256;
    *&v473 = sub_100006684;
    *(&v473 + 1) = &unk_10162D180;
    v328 = _Block_copy(&v472);

    v329 = v439;
    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    sub_100003E44(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v330 = v436;
    v331 = v437;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v332 = v422;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v328);

LABEL_120:
    sub_10067F4FC(v454, v418, v421, v419, v460, v420, sub_100016590);
    (*(v438 + 8))(v330, v331);
    (*(v441 + 8))(v329, v440);
    goto LABEL_121;
  }

  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v181 = type metadata accessor for Logger();
  sub_1000076D4(v181, qword_10177B048);
  v182 = v443;
  v183 = v467;
  v184 = v463;
  v463(v443, v467, v94);
  v185 = v444;
  v186 = v94;
  v187 = v466;
  v184(v444, v466, v186);
  v188 = Logger.logObject.getter();
  v189 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v188, v189))
  {
    v190 = swift_slowAlloc();
    v465 = swift_slowAlloc();
    *&v472 = v465;
    *v190 = 141558531;
    *(v190 + 4) = 1752392040;
    *(v190 + 12) = 2081;
    sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    LODWORD(v463) = v189;
    v419 = v68;
    v191 = dispatch thunk of CustomStringConvertible.description.getter();
    v193 = v192;
    v194 = *(v464 + 8);
    v194(v182, v186);
    v195 = v194;
    v196 = sub_1000136BC(v191, v193, &v472);

    *(v190 + 14) = v196;
    *(v190 + 22) = 2082;
    v197 = dispatch thunk of CustomStringConvertible.description.getter();
    v199 = v198;
    v195(v185, v186);
    v200 = sub_1000136BC(v197, v199, &v472);

    *(v190 + 24) = v200;
    _os_log_impl(&_mh_execute_header, v188, v463, "Invalid commandResponse for %{private,mask.hash}s Command %{public}s.", v190, 0x20u);
    swift_arrayDestroy();

    sub_10067F4FC(v454, v418, v421, v419, v460, v420, sub_100016590);
    v195(v466, v186);
    result = (v195)(v467, v186);
  }

  else
  {

    sub_10067F4FC(v454, v418, v67, v68, v460, v420, sub_100016590);
    v252 = *(v464 + 8);
    v252(v185, v186);
    v252(v182, v186);
    v252(v187, v186);
    result = (v252)(v183, v186);
  }

  v89 = v462;
  v90 = 10;
LABEL_10:
  *v89 = v90;
  *(v89 + 8) = 0u;
  *(v89 + 24) = 0u;
  *(v89 + 40) = 11;
  v91 = 1;
LABEL_98:
  *(v89 + 49) = v91;
  return result;
}

uint64_t sub_100677AB8(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    type metadata accessor for OwnerCommandManager.Error(0);
    sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error, &unk_1013B6288);
    swift_allocError();
    *v5 = a3;
    swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_100677B80(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = type metadata accessor for AccessoryCommand(0);
    sub_10067BD08(a2 + *(v11 + 20), a3, 0, v10, a4, a5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100677C1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, const char *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(type metadata accessor for AccessoryCommand(0) + 20);
    type metadata accessor for OwnerCommandManager.Error(0);
    sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error, &unk_1013B6288);
    v14 = swift_allocError();
    *v15 = a4;
    swift_storeEnumTagMultiPayload();
    sub_10067BD08(a2 + v13, a3, v14, v12, a5, a6);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100677D48(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10067BD08(a2, a3, 0, result, a4, a5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100677DD8(uint64_t a1, unint64_t a2)
{
  v6 = v2;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v6 + 72);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  v17 = *(v10 + 8);
  v16 = v10 + 8;
  v17(v12, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_5;
  }

  sub_1000D2A70(a1, &v43, &qword_1016A72E0, &qword_1013B60C8);
  if (v46)
  {
    v47 = v43;
    *v48 = *v44;
    *&v48[9] = *&v44[9];
    sub_100101AA8(&v47, &v41);
    v18 = swift_allocObject();
    v19 = v42[0];
    v18[1] = v41;
    v18[2] = v19;
    *(v18 + 41) = *(v42 + 9);
    sub_1000BC4D4(&qword_1016A72D8, &qword_1013B60C0);
    swift_allocObject();
    v20 = Future.init(_:)();
    sub_100101B04(&v47);
    return v20;
  }

  v39 = a2;
  v16 = *(&v43 + 1);
  v15 = v43;
  v3 = *&v44[8];
  a2 = *v44;
  v4 = *&v44[16];
  v5 = *&v44[24];
  v38 = v45;
  sub_10067F4BC(v43, *(&v43 + 1), *v44, *&v44[8], *&v44[16], *&v44[24]);
  if (qword_101694828 != -1)
  {
    goto LABEL_14;
  }

LABEL_5:
  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177B048);
  sub_10067F4BC(v15, v16, a2, v3, v4, v5);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  sub_10067F5FC(v15, v16, a2, v3, v4, v5);
  v24 = os_log_type_enabled(v22, v23);
  v40 = v15;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v36 = v25;
    v37 = swift_slowAlloc();
    *&v41 = v37;
    *v25 = 136315138;
    *&v47 = v15;
    *(&v47 + 1) = v16;
    *v48 = a2;
    *&v48[8] = v3;
    *&v48[16] = v4;
    *&v48[24] = v5;
    sub_10067F4BC(v15, v16, a2, v3, v4, v5);
    sub_1000BC4D4(&qword_1016A72E8, &unk_1013B60D0);
    v26 = String.init<A>(describing:)();
    v35 = v22;
    v28 = sub_1000136BC(v26, v27, &v41);

    v29 = v36;
    *(v36 + 1) = v28;
    v30 = v35;
    _os_log_impl(&_mh_execute_header, v35, v23, "Sending: %s", v29, 0xCu);
    sub_100007BAC(v37);
  }

  else
  {
  }

  if ((~(v16 & v4) & 0x3000000000000000) != 0)
  {
    v32 = v40;
    *&v47 = v40;
    *(&v47 + 1) = v16;
    *v48 = a2;
    *&v48[8] = v3;
    *&v48[16] = v4;
    *&v48[24] = v5;
    sub_10067F4BC(v40, v16, a2, v3, v4, v5);
    v20 = sub_10067836C(&v47, v39);
    sub_10067F5FC(v32, v16, a2, v3, v4, v5);
    sub_10067F5FC(v32, v16, a2, v3, v4, v5);
    v31 = v32;
  }

  else
  {
    *(swift_allocObject() + 16) = v38;
    sub_1000BC4D4(&qword_1016A72D8, &qword_1013B60C0);
    swift_allocObject();
    v20 = Future.init(_:)();
    v31 = v40;
  }

  sub_10067F5FC(v31, v16, a2, v3, v4, v5);
  return v20;
}

uint64_t sub_1006782DC(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  sub_100101B58();
  v5 = swift_allocError();
  sub_100101AA8(a3, v6);
  v8[0] = v5;
  v9 = 256;
  a1(v8);
  return sub_10000B3A8(v8, &qword_1016A72B0, &qword_1013B60A8);
}

uint64_t sub_10067836C(_OWORD *a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + 72);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v14 = a1[1];
    *(v13 + 24) = *a1;
    *(v13 + 40) = v14;
    *(v13 + 56) = a1[2];
    *(v13 + 72) = a2;
    sub_1000BC4D4(&qword_1016A72D8, &qword_1013B60C0);
    swift_allocObject();
    sub_10067C2E0(a1, v15);

    return Future.init(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100678538(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v9 = type metadata accessor for BinaryEncoder();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = *(Strong + 128);
    v15 = *(Strong + 136);
    *(Strong + 128) = a1;
    *(Strong + 136) = a2;

    sub_1000BB27C(v14, v15);
    BinaryEncoder.init()();
    v16 = a4[1];
    v24 = *a4;
    v25 = v16;
    v26 = a4[2];
    sub_10067C1D4();
    v17 = BinaryEncoder.encode<A>(_:)();
    v19 = v18;
    v20 = Data.chunked(into:)();
    v21 = sub_1001D97CC(v20);

    swift_beginAccess();
    sub_100398324(v21);
    swift_endAccess();
    sub_100679A0C(a5);
    sub_100016590(v17, v19);

    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    *&v26 = 0;
    v24 = 0u;
    v25 = 0u;
    WORD4(v26) = 267;
    a1(&v24);
    return sub_10000B3A8(&v24, &qword_1016A72B0, &qword_1013B60A8);
  }
}

void *sub_100678910(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + 72);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (qword_101694828 == -1)
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
  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177B048);
  sub_100017D5C(a1, a2);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v15, v16))
  {
    sub_100016590(a1, a2);
LABEL_16:

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = a3 & 1;
    *(v29 + 32) = a1;
    *(v29 + 40) = a2;
    sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    swift_allocObject();
    sub_100017D5C(a1, a2);
    return Future.init(_:)();
  }

  v17 = swift_slowAlloc();
  result = swift_slowAlloc();
  v19 = result;
  v31 = result;
  *v17 = 134218242;
  v20 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v20 != 2)
    {
      v21 = 0;
      goto LABEL_15;
    }

    v23 = *(a1 + 16);
    v22 = *(a1 + 24);
    v24 = __OFSUB__(v22, v23);
    v21 = v22 - v23;
    if (!v24)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v20)
  {
    v21 = BYTE6(a2);
LABEL_15:
    *(v17 + 4) = v21;
    sub_100016590(a1, a2);
    *(v17 + 12) = 2082;
    v25 = Data.hexString.getter();
    v27 = sub_1000136BC(v25, v26, &v31);

    *(v17 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "didNotify data length [%ld] %{public}s", v17, 0x16u);
    sub_100007BAC(v19);

    goto LABEL_16;
  }

  LODWORD(v21) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v21 = v21;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_100678C64(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  v99 = a6;
  v100 = a5;
  v9 = type metadata accessor for BinaryDecodingError();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Bit();
  v96 = *(v97 - 8);
  v13 = __chkstk_darwin(v97);
  v95 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v98 = &v87 - v15;
  v16 = type metadata accessor for BinaryDecoder();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v107 = 0;
    v105 = 0u;
    v106 = 0u;
    LOBYTE(v108) = 11;
    v109 = 1;
    a1(&v105);
    sub_10000B3A8(&v105, &qword_101699380, &unk_1013918F0);
    return;
  }

  v21 = Strong;
  v92 = a2;
  v93 = a1;
  BinaryDecoder.init()();
  if (a4)
  {
    v22 = v17;
    *(&v106 + 1) = &type metadata for AirTagCommand;
    v107 = sub_10067C228();
    v108 = sub_10067C27C();
    BinaryDecoder.decode<A>(_:from:)();
    v94 = v19;
    sub_1000BB3F0(&v105, v104);
LABEL_18:
    v60 = *(v21 + 152);
    v61 = *(v21 + 160);
    *(v21 + 152) = xmmword_10138BBF0;
    sub_100006654(v60, v61);
    sub_1001011C0(v104, &v105);
    v109 = 0;
    v93(&v105);

    sub_10000B3A8(&v105, &qword_101699380, &unk_1013918F0);
    sub_100007BAC(v104);
    (*(v22 + 8))(v94, v16);
    return;
  }

  v94 = v19;
  v89 = v12;
  v90 = v10;
  v23 = *(v21 + 152);
  v24 = *(v21 + 160);
  if (v24 >> 60 == 15)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v21 + 152);
  }

  v26 = 0xC000000000000000;
  if (v24 >> 60 != 15)
  {
    v26 = *(v21 + 160);
  }

  v102 = v25;
  v103 = v26;
  sub_10002E98C(v23, v24);
  v27 = v100;
  v28 = v99;
  sub_100017D5C(v100, v99);
  sub_100ED428C(1uLL, v27, v28, &v105);
  v29 = v105;
  Data.append(_:)();
  sub_100016590(v29, *(&v29 + 1));
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v91 = v16;
  v30 = type metadata accessor for Logger();
  sub_1000076D4(v30, qword_10177B048);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  v33 = os_log_type_enabled(v31, v32);
  v88 = v17;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v105 = v35;
    *v34 = 136315138;
    swift_beginAccess();
    v36 = v9;
    v38 = v102;
    v37 = v103;
    sub_100017D5C(v102, v103);
    v39 = Data.description.getter();
    v87 = v21;
    v41 = v40;
    v42 = v38;
    v9 = v36;
    sub_100016590(v42, v37);
    v43 = sub_1000136BC(v39, v41, &v105);
    v21 = v87;

    *(v34 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v31, v32, "localReadBuffer %s", v34, 0xCu);
    sub_100007BAC(v35);
  }

  v44 = v90;
  v45 = v89;
  v46 = v97;
  swift_beginAccess();
  v47 = v102;
  v48 = v103;
  v49 = *(v21 + 152);
  v50 = *(v21 + 160);
  *(v21 + 152) = v102;
  *(v21 + 160) = v48;
  sub_100017D5C(v47, v48);
  sub_100006654(v49, v50);
  v51 = sub_100017C08(v100, v99);
  v52 = v91;
  v53 = v98;
  if ((v51 & 0x100) != 0)
  {
    goto LABEL_20;
  }

  LOBYTE(v105) = v51;
  sub_1000198E8();
  v54 = FixedWidthInteger.bits()();
  if (!*(v54 + 16))
  {

LABEL_20:
    type metadata accessor for OwnerCommandManager.Error(0);
    sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error, &unk_1013B6288);
    v62 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v88 + 8))(v94, v52);
    goto LABEL_21;
  }

  v97 = v9;
  v55 = v96;
  (*(v96 + 16))(v53, v54 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v46);

  v56 = v95;
  (*(v55 + 104))(v95, enum case for Bit.one(_:), v46);
  sub_100003E44(&qword_101698660, &type metadata accessor for Bit, &protocol conformance descriptor for Bit);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v57 = *(v55 + 8);
  v57(v56, v46);
  if (v105 == v101)
  {
    v96 = v55 + 8;
    v58 = v102;
    v59 = v103;
    *(&v106 + 1) = &type metadata for AccessoryConfigCommand;
    v107 = sub_10067C180();
    v108 = sub_10067C1D4();
    *&v105 = swift_allocObject();
    sub_100017D5C(v58, v59);
    BinaryDecoder.decode<A>(_:from:)();
    v57(v98, v46);
    sub_100016590(v58, v59);
    sub_1000BB3F0(&v105, v104);
    sub_100016590(v102, v103);
    v16 = v91;
    v22 = v88;
    goto LABEL_18;
  }

  sub_100003E44(&qword_101696E30, &type metadata accessor for BinaryDecodingError, &protocol conformance descriptor for BinaryDecodingError);
  v85 = v97;
  v62 = swift_allocError();
  (*(v44 + 104))(v86, enum case for BinaryDecodingError.insufficientData(_:), v85);
  swift_willThrow();
  v57(v98, v46);
  v9 = v85;
  (*(v88 + 8))(v94, v91);
LABEL_21:
  sub_100016590(v102, v103);
  *&v105 = v62;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    if ((*(v44 + 88))(v45, v9) == enum case for BinaryDecodingError.insufficientData(_:))
    {

      if (qword_101694828 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      sub_1000076D4(v63, qword_10177B048);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "insufficientData. Keep reading...", v66, 2u);
      }

      goto LABEL_35;
    }

    (*(v44 + 8))(v45, v9);
  }

  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  sub_1000076D4(v67, qword_10177B048);
  v68 = v100;
  v69 = v99;
  sub_100017D5C(v100, v99);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();
  sub_100016590(v68, v69);
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *&v105 = v73;
    *v72 = 136446210;
    v74 = Data.hexString.getter();
    v76 = sub_1000136BC(v74, v75, &v105);

    *(v72 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v70, v71, "Failed to decode data %{public}s", v72, 0xCu);
    sub_100007BAC(v73);
  }

  v77 = *(v21 + 152);
  v78 = *(v21 + 160);
  *(v21 + 152) = xmmword_10138BBF0;
  sub_100006654(v77, v78);
  swift_errorRetain();
  v64 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v64, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v105 = v81;
    *v80 = 136446210;
    *&v104[0] = v62;
    swift_errorRetain();
    v82 = String.init<A>(describing:)();
    v84 = sub_1000136BC(v82, v83, &v105);

    *(v80 + 4) = v84;
    _os_log_impl(&_mh_execute_header, v64, v79, "Ignoring unhandled commands for now. Error: %{public}s", v80, 0xCu);
    sub_100007BAC(v81);

    return;
  }

LABEL_35:
}

void *sub_100679A0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v4 - 8);
  v6 = &v49 - v5;
  v7 = sub_1000BC4D4(&qword_1016993E8, &unk_1013D4DF0);
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v53 = &v49 - v8;
  v9 = sub_1000BC4D4(&qword_1016A7280, &unk_1013B6080);
  v57 = *(v9 - 8);
  v58 = v9;
  __chkstk_darwin(v9);
  v56 = &v49 - v10;
  v11 = sub_1000BC4D4(&qword_1016A7288, &qword_1013D4E00);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v59 = &v49 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v2[9];
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
LABEL_4:
    v52 = v11;
    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177B048);
    sub_100017D5C(v20, v12);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      sub_100016590(v20, v12);

LABEL_19:
      v50 = sub_100A59B98(v20, v12);
      v60[0] = v50;
      v62 = v19;
      v38 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v38 - 8) + 56))(v6, 1, 1, v38);
      v39 = v19;
      sub_1000BC4D4(&qword_1016C4520, &unk_1013B6090);
      sub_1000BC488();
      sub_1000041A4(&qword_101699348, &qword_1016C4520, &unk_1013B6090, &protocol conformance descriptor for AnyPublisher<A, B>);
      sub_100003E44(&qword_1016AF9C0, sub_1000BC488, &protocol conformance descriptor for OS_dispatch_queue);
      v49 = v20;
      v40 = a1;
      v41 = v53;
      Publisher.receive<A>(on:options:)();
      sub_10000B3A8(v6, &unk_1016B0FE0, &unk_101391980);

      sub_1000BC4D4(&qword_1016B1CA0, &qword_1013918C0);
      sub_1000041A4(&qword_101699410, &qword_1016993E8, &unk_1013D4DF0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
      v42 = v55;
      v43 = v56;
      Publisher.map<A>(_:)();
      (*(v54 + 8))(v41, v42);
      sub_1000BC4D4(&qword_1016A7290, &qword_1013B60A0);
      sub_1000041A4(&qword_1016A7298, &qword_1016A7280, &unk_1013B6080, &protocol conformance descriptor for Publishers.Map<A, B>);
      sub_1000041A4(&qword_1016A72A0, &qword_1016A7290, &qword_1013B60A0, &protocol conformance descriptor for Just<A>);
      v44 = v58;
      v45 = v59;
      Publisher.catch<A>(_:)();
      (*(v57 + 8))(v43, v44);
      v46 = swift_allocObject();
      swift_weakInit();
      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      *(v47 + 24) = v40;
      sub_1000041A4(&qword_1016A72A8, &qword_1016A7288, &qword_1013D4E00, &protocol conformance descriptor for Publishers.Catch<A, B>);

      v48 = v52;
      Publisher<>.sink(receiveValue:)();

      (*(v51 + 8))(v45, v48);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      return sub_100016590(v49, v12);
    }

    v50 = a1;
    v26 = swift_slowAlloc();
    result = swift_slowAlloc();
    v27 = result;
    v60[0] = result;
    *v26 = 134218242;
    v28 = v12 >> 62;
    v49 = v19;
    if ((v12 >> 62) > 1)
    {
      if (v28 != 2)
      {
        v29 = 0;
        goto LABEL_18;
      }

      v33 = *(v20 + 16);
      v32 = *(v20 + 24);
      v34 = __OFSUB__(v32, v33);
      v29 = v32 - v33;
      if (!v34)
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (!v28)
    {
      v29 = BYTE6(v12);
LABEL_18:
      *(v26 + 4) = v29;
      sub_100016590(v20, v12);
      *(v26 + 12) = 2080;
      v35 = Data.hexString.getter();
      v37 = sub_1000136BC(v35, v36, v60);

      *(v26 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v24, v25, "processQueuedUpdates: writing [%ld] %s)", v26, 0x16u);
      sub_100007BAC(v27);

      v19 = v49;
      a1 = v50;
      goto LABEL_19;
    }

    LODWORD(v29) = HIDWORD(v20) - v20;
    if (__OFSUB__(HIDWORD(v20), v20))
    {
      __break(1u);
      return result;
    }

    v29 = v29;
    goto LABEL_18;
  }

  result = swift_beginAccess();
  v22 = v2[18];
  if (v22[2])
  {
    v51 = v12;
    v20 = v22[4];
    v12 = v22[5];
    sub_100017D5C(v20, v12);
    if (qword_101694828 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  v30 = v2[16];
  if (v30)
  {
    v31 = v2[17];
    LOBYTE(v60[0]) = 1;
    v61 = 0;

    v30(v60);
    sub_1000BB27C(v30, v31);
    return sub_10000B3A8(v60, &qword_1016A72B0, &qword_1013B60A8);
  }

  return result;
}

void *sub_10067A2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_1000D2A70(a1, &v32, &qword_1016B1CA0, &qword_1013918C0);
    if (v34)
    {
      v30 = v32;
      v31[0] = *v33;
      *(v31 + 9) = *&v33[9];
      if (qword_101694828 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000076D4(v7, qword_10177B048);
      sub_100101AA8(&v30, v28);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v27 = v11;
        *v10 = 136446210;
        v12 = sub_1013181BC();
        v14 = v13;
        sub_100101B04(v28);
        v15 = sub_1000136BC(v12, v14, &v27);

        *(v10 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v8, v9, "writeFuture error: %{public}s", v10, 0xCu);
        sub_100007BAC(v11);

        v16 = v6[16];
        if (v16)
        {
LABEL_7:
          v17 = v6[17];
          sub_100101B58();
          v18 = swift_allocError();
          sub_100101AA8(&v30, v19);
          v28[0] = v18;
          v29 = 256;

          v16(v28);
          sub_1000BB27C(v16, v17);

          sub_10000B3A8(v28, &qword_1016A72B0, &qword_1013B60A8);
          return sub_100101B04(&v30);
        }
      }

      else
      {

        sub_100101B04(v28);
        v16 = v6[16];
        if (v16)
        {
          goto LABEL_7;
        }
      }

      return sub_100101B04(&v30);
    }

    if (qword_101694828 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177B048);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "writeFuture success", v23, 2u);
    }

    swift_beginAccess();
    v24 = v6[18];
    if (v24[2])
    {
      swift_beginAccess();
      v25 = v24[4];
      v26 = v24[5];
      sub_100017D5C(v25, v26);
      sub_100A077EC(0, 1);
      swift_endAccess();
      sub_100016590(v25, v26);
    }

    sub_100679A0C(a3);
  }

  return result;
}

uint64_t sub_10067A690()
{

  sub_100477574(v0 + 40);

  sub_1000BB27C(*(v0 + 128), *(v0 + 136));

  sub_100006654(*(v0 + 152), *(v0 + 160));

  return v0;
}

uint64_t sub_10067A730()
{
  sub_10067A690();

  return swift_deallocClassInstance();
}

uint64_t sub_10067A788(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_1000BC4D4(&qword_1016A7258, &qword_1013B6050);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_1000D2A70(a1, &v11 - v5, &qword_1016A7258, &qword_1013B6050);
  v7 = type metadata accessor for OwnerCommandManager.Error(0);
  v8 = 0;
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error, &unk_1013B6288);
    v8 = swift_allocError();
    sub_10067B810(v6, v9, type metadata accessor for OwnerCommandManager.Error);
  }

  a2(v8);
}

uint64_t sub_10067A8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v56 = a3;
  v57 = a4;
  v49 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = &v47 - v11;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v47 - v16;
  v18 = type metadata accessor for AccessoryCommand(0);
  v53 = *(v18 - 1);
  v19 = __chkstk_darwin(v18);
  v54 = v20;
  v55 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v47 - v21;
  v23 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v23 - 8);
  v25 = &v47 - v24;
  v26 = *(v4 + 184);
  v58 = v5;
  v50 = a1;
  if (v26)
  {

    sub_100AA33AC(a1, v25);

    v27 = type metadata accessor for OwnedBeaconRecord(0);
    if ((*(*(v27 - 8) + 48))(v25, 1, v27) != 1)
    {
      v47 = sub_100D60CD0();
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
      if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
      {
        v48 = 1;
      }

      else
      {
        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_10067BA34(v25, type metadata accessor for OwnedBeaconRecord);
      goto LABEL_12;
    }

    sub_10000B3A8(v25, &unk_1016A9A20, &qword_10138B280);
  }

  v48 = 0;
LABEL_12:
  v33 = v52;
  v34 = *(v8 + 16);
  v34(v17, v49, v7);
  (*(v8 + 56))(v17, 0, 1, v7);
  v35 = v51;
  v34(v51, v50, v7);
  sub_1000D2A70(v17, v15, &qword_1016980D0, &unk_10138F3B0);
  v36 = *(v8 + 48);
  if (v36(v15, 1, v7) == 1)
  {
    UUID.init()();
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    if (v36(v15, 1, v7) != 1)
    {
      sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    (*(v8 + 32))(v33, v15, v7);
  }

  v37 = *(v8 + 32);
  v37(v22, v33, v7);
  v37(&v22[v18[5]], v35, v7);
  v38 = &v22[v18[6]];
  *v38 = xmmword_1013B5EA0;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 2) = xmmword_10139BF70;
  v22[v18[7]] = v48 & 1;
  v22[v18[8]] = 1;
  v39 = swift_allocObject();
  v40 = v57;
  *(v39 + 16) = v56;
  *(v39 + 24) = v40;
  type metadata accessor for Transaction();
  v41 = v55;
  sub_10067B9CC(v22, v55, type metadata accessor for AccessoryCommand);
  v42 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v43 = (v54 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  sub_10067B810(v41, v44 + v42, type metadata accessor for AccessoryCommand);
  *(v44 + v43) = v58;
  v45 = (v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v45 = sub_100680F90;
  v45[1] = v39;

  static Transaction.asyncTask(name:block:)();

  return sub_10067BA34(v22, type metadata accessor for AccessoryCommand);
}

uint64_t sub_10067AF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v56 = a3;
  v57 = a4;
  v49 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = &v47 - v11;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v47 - v16;
  v18 = type metadata accessor for AccessoryCommand(0);
  v53 = *(v18 - 1);
  v19 = __chkstk_darwin(v18);
  v54 = v20;
  v55 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v47 - v21;
  v23 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  __chkstk_darwin(v23 - 8);
  v25 = &v47 - v24;
  v26 = *(v4 + 184);
  v58 = v5;
  v50 = a1;
  if (v26)
  {

    sub_100AA33AC(a1, v25);

    v27 = type metadata accessor for OwnedBeaconRecord(0);
    if ((*(*(v27 - 8) + 48))(v25, 1, v27) != 1)
    {
      v47 = sub_100D60CD0();
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
      if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
      {
        v48 = 1;
      }

      else
      {
        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_10067BA34(v25, type metadata accessor for OwnedBeaconRecord);
      goto LABEL_12;
    }

    sub_10000B3A8(v25, &unk_1016A9A20, &qword_10138B280);
  }

  v48 = 0;
LABEL_12:
  v33 = v52;
  v34 = *(v8 + 16);
  v34(v17, v49, v7);
  (*(v8 + 56))(v17, 0, 1, v7);
  v35 = v51;
  v34(v51, v50, v7);
  sub_1000D2A70(v17, v15, &qword_1016980D0, &unk_10138F3B0);
  v36 = *(v8 + 48);
  if (v36(v15, 1, v7) == 1)
  {
    UUID.init()();
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    if (v36(v15, 1, v7) != 1)
    {
      sub_10000B3A8(v15, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    (*(v8 + 32))(v33, v15, v7);
  }

  v37 = *(v8 + 32);
  v37(v22, v33, v7);
  v37(&v22[v18[5]], v35, v7);
  v38 = &v22[v18[6]];
  *v38 = xmmword_1013B5EB0;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 2) = xmmword_10139BF70;
  v22[v18[7]] = v48 & 1;
  v22[v18[8]] = 1;
  v39 = swift_allocObject();
  v40 = v57;
  *(v39 + 16) = v56;
  *(v39 + 24) = v40;
  type metadata accessor for Transaction();
  v41 = v55;
  sub_10067B9CC(v22, v55, type metadata accessor for AccessoryCommand);
  v42 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v43 = (v54 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  sub_10067B810(v41, v44 + v42, type metadata accessor for AccessoryCommand);
  *(v44 + v43) = v58;
  v45 = (v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v45 = sub_10067B5A4;
  v45[1] = v39;

  static Transaction.asyncTask(name:block:)();

  return sub_10067BA34(v22, type metadata accessor for AccessoryCommand);
}

uint64_t sub_10067B5AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (((a5 >> 59) & 6 | ((a2 & 0x2000000000000000) != 0)) == 3)
  {
    sub_100016590(result, a2 & 0xDFFFFFFFFFFFFFFFLL);

    return sub_100016590(a4, a5 & 0xCFFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_10067B60C()
{
  v2 = *(type metadata accessor for AccessoryCommand(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014744;

  return sub_100661D40(v0 + v3, v5, v7, v8);
}

void *sub_10067B730()
{
  v1 = *(type metadata accessor for AccessoryCommand(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_100664DCC(*(v0 + 24), (v0 + v2), *v3, *(v3 + 8));
}

uint64_t type metadata accessor for OwnerCommandManager.Error(uint64_t a1)
{
  result = qword_1016A7550;
  if (!qword_1016A7550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10067B810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10067B878()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 32) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = (v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1006634C0(v6, v7, v0 + v4, v0 + v5, v9, v10);
}

uint64_t sub_10067B91C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = v1 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_100663F1C(a1, v1 + v5, v1 + v7, v9, v10);
}

uint64_t sub_10067B9CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10067BA34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10067BA94()
{
  v1 = (type metadata accessor for AccessoryCommand(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);
  v7 = v4 + v1[8];
  sub_10067B5AC(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10067BBDC()
{
  v2 = *(type metadata accessor for AccessoryCommand(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100014650;

  return sub_100661D40(v0 + v3, v5, v7, v8);
}

uint64_t sub_10067BD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v44 = a4;
  v45 = a6;
  v42 = a5;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  if (qword_101694960 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177B380);
  v17 = *(v10 + 16);
  v46 = a1;
  v17(v15, a1, v9);
  v17(v13, a2, v9);
  swift_errorRetain();
  v18 = a3;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = os_log_type_enabled(v19, v20);
  v43 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v48[0] = v41;
    *v22 = 141558787;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    v39 = sub_100003E44(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v40 = v20;
    v26 = *(v10 + 8);
    v26(v15, v9);
    v27 = sub_1000136BC(v23, v25, v48);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2082;
    v47 = v18;
    swift_errorRetain();
    sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
    v28 = String.init<A>(describing:)();
    v30 = sub_1000136BC(v28, v29, v48);

    *(v22 + 24) = v30;
    *(v22 + 32) = 2082;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v26(v13, v9);
    v34 = sub_1000136BC(v31, v33, v48);

    *(v22 + 34) = v34;
    _os_log_impl(&_mh_execute_header, v19, v40, v42, v22, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v35 = *(v10 + 8);
    v35(v13, v9);
    v35(v15, v9);
  }

  My = type metadata accessor for Feature.FindMy();
  v48[3] = My;
  v48[4] = sub_100003E44(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v37 = sub_1000280DC(v48);
  (*(*(My - 8) + 104))(v37, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v48);
  result = v46;
  if (My)
  {
    return v45(v46, v43);
  }

  return result;
}

unint64_t sub_10067C180()
{
  result = qword_1016A72B8;
  if (!qword_1016A72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A72B8);
  }

  return result;
}

unint64_t sub_10067C1D4()
{
  result = qword_1016A72C0;
  if (!qword_1016A72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A72C0);
  }

  return result;
}

unint64_t sub_10067C228()
{
  result = qword_1016A72C8;
  if (!qword_1016A72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A72C8);
  }

  return result;
}

unint64_t sub_10067C27C()
{
  result = qword_1016A72D0;
  if (!qword_1016A72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A72D0);
  }

  return result;
}

void *sub_10067C33C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v22 = a2;
  v23 = a3;
  v21 = a1;
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = 0xD000000000000013;
  *(v3 + 24) = 0x80000001013B5F90;
  type metadata accessor for OwnerCommandManagerAccessController();
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + 112) = 0;
  *(v3 + 32) = v11;
  *(v3 + 48) = 0;
  swift_unknownObjectWeakInit();
  v20[1] = sub_1000BC488();
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100003E44(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v3 + 72) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v3 + 80) = &_swiftEmptySetSingleton;
  *(v3 + 88) = _swiftEmptyDictionarySingleton;
  *(v3 + 96) = 0;
  *(v3 + 104) = _swiftEmptyDictionarySingleton;
  *(v3 + 112) = _swiftEmptyDictionarySingleton;
  *(v3 + 120) = _swiftEmptyDictionarySingleton;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = _swiftEmptyArrayStorage;
  *(v3 + 152) = xmmword_10138BBF0;
  *(v3 + 168) = _swiftEmptyArrayStorage;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177B048);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "init", v15, 2u);
  }

  v4[23] = v21;

  v16 = v23;
  v4[7] = v22;
  v4[8] = v16;
  v17 = qword_101694FA8;

  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v24 = 0x7365547265646E75;
  v25 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  return v4;
}

uint64_t sub_10067C7A0(uint64_t a1)
{
  v1[6] = a1;
  type metadata accessor for Endianness();
  v1[7] = swift_task_alloc();
  v2 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697260, &unk_10138BDC0);
  v1[18] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697270, &qword_10138BDD0);
  v1[19] = swift_task_alloc();
  v5 = type metadata accessor for CentralManager.State();
  v1[20] = v5;
  v1[21] = *(v5 - 8);
  v1[22] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240);
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_10067CA78, 0, 0);
}

uint64_t sub_10067CA78()
{
  v1 = v0[23];
  v0[24] = type metadata accessor for CentralManager();
  sub_1000BC4D4(&unk_1016C2250, &unk_1013F6360);
  v2 = type metadata accessor for CentralManager.Options();
  v3 = *(v2 - 8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10138BBE0;
  static CentralManager.Options.allowDuplicates.getter();
  static CentralManager.Options.enableFindMy.getter();
  v0[4] = v4;
  sub_100003E44(&unk_1016C1210, &type metadata accessor for CentralManager.Options, &protocol conformance descriptor for CentralManager.Options);
  sub_1000BC4D4(&unk_1016C2260, &unk_101395BB0);
  sub_1000041A4(&qword_1016C1220, &unk_1016C2260, &unk_101395BB0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 56))(v1, 0, 1, v2);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_10067CCB4;
  v6 = v0[23];

  return CentralManager.__allocating_init(options:)(v6);
}

uint64_t sub_10067CCB4(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_10067CDB4, 0, 0);
}

uint64_t sub_10067CDB4()
{
  (*(v0[21] + 104))(v0[22], enum case for CentralManager.State.poweredOn(_:), v0[20]);
  v1 = swift_task_alloc();
  v0[27] = v1;
  v2 = sub_100003E44(&unk_1016C1160, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v1 = v0;
  v1[1] = sub_10067CEB0;
  v3 = v0[24];
  v4 = v0[22];

  return CentralManagerProtocol.await(state:)(v4, v3, v2);
}

uint64_t sub_10067CEB0()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  (*(v2[21] + 8))(v2[22], v2[20]);
  if (v0)
  {
    v3 = sub_10067EC80;
  }

  else
  {
    v3 = sub_10067D018;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10067D018()
{
  v1 = v0[6];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v2 = type metadata accessor for UUID();
  v0[29] = v2;
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[30] = v5;
  *(v5 + 16) = xmmword_101385D80;
  v6 = *(v3 + 16);
  v0[31] = v6;
  v0[32] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v5 + v4, v1, v2);
  v9 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(beaconIdentifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(beaconIdentifiers:));
  v7 = swift_task_alloc();
  v0[33] = v7;
  *v7 = v0;
  v7[1] = sub_10067D198;

  return v9(v5);
}

uint64_t sub_10067D198(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_10067ED60;
  }

  else
  {

    v4 = sub_10067D2B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10067D2B4()
{
  v1 = v0[34];
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v0[34] + 32);

LABEL_6:
      v0[36] = v2;
      v4 = v0[18];
      v3 = v0[19];

      v5 = enum case for ConnectUseCase.findMyAction(_:);
      v6 = type metadata accessor for ConnectUseCase();
      v7 = *(v6 - 8);
      (*(v7 + 104))(v3, v5, v6);
      (*(v7 + 56))(v3, 0, 1, v6);
      v8 = type metadata accessor for Peripheral.Options();
      (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
      v22 = (&async function pointer to dispatch thunk of Peripheral.connect(useCase:options:) + async function pointer to dispatch thunk of Peripheral.connect(useCase:options:));
      v9 = swift_task_alloc();
      v0[37] = v9;
      *v9 = v0;
      v9[1] = sub_10067D6AC;
      v10 = v0[18];
      v11 = v0[19];

      return v22(v11, v10);
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_101694828 != -1)
  {
LABEL_18:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177B048);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Missing peripheral to read TX power!", v16, 2u);
  }

  v17 = v0[31];
  v18 = v0[29];
  v19 = v0[6];

  type metadata accessor for OwnerCommandManager.Error(0);
  sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error, &unk_1013B6288);
  swift_allocError();
  v17(v20, v19, v18);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_10067D6AC()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 152);
  sub_10000B3A8(*(v2 + 144), &qword_101697260, &unk_10138BDC0);
  sub_10000B3A8(v3, &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v4 = sub_10067EE4C;
  }

  else
  {
    v4 = sub_10067D81C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10067D81C()
{
  v15 = v0;
  if (qword_101694828 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[39] = sub_1000076D4(v1, qword_10177B048);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[36];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v0[5] = v4;
    type metadata accessor for Peripheral();
    sub_100003E44(&qword_1016972D0, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_1000136BC(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Connected to peripheral: %s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v13 = (&async function pointer to dispatch thunk of Peripheral.subscript.getter + async function pointer to dispatch thunk of Peripheral.subscript.getter);
  v10 = swift_task_alloc();
  v0[40] = v10;
  *v10 = v0;
  v10[1] = sub_10067DA7C;
  v11 = v0[17];

  return v13(v11);
}

uint64_t sub_10067DA7C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v4 = sub_10067EF38;
  }

  else
  {
    v4 = sub_10067DB90;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10067DB90()
{
  v19 = v0;
  (*(v0[15] + 16))(v0[16], v0[17], v0[14]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v7 = 136315138;
    sub_1000041A4(&qword_1016A74D8, &qword_101697248, &qword_1013DC4D0, &protocol conformance descriptor for Identifier<A>);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v11 = *(v5 + 8);
    v11(v4, v6);
    v12 = sub_1000136BC(v8, v10, &v18);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Discovered TX Power service: %s", v7, 0xCu);
    sub_100007BAC(v16);
  }

  else
  {

    v11 = *(v5 + 8);
    v11(v4, v6);
  }

  v0[43] = v11;
  sub_1000BC4D4(&qword_1016A74C8, &unk_1013B6248);
  v13 = swift_allocObject();
  v0[44] = v13;
  *(v13 + 16) = xmmword_101385D80;
  v0[45] = type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v17 = (&async function pointer to dispatch thunk of Service.discover(characteristicIdentifiers:) + async function pointer to dispatch thunk of Service.discover(characteristicIdentifiers:));
  v14 = swift_task_alloc();
  v0[46] = v14;
  *v14 = v0;
  v14[1] = sub_10067DE2C;

  return v17(v13);
}

uint64_t sub_10067DE2C()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_10067F044;
  }

  else
  {

    v2 = sub_10067DF78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10067DF78(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Discovered TX Power characteristic", v4, 2u);
  }

  Identifier.init(stringLiteral:)();
  v8 = (&async function pointer to dispatch thunk of Service.subscript.getter + async function pointer to dispatch thunk of Service.subscript.getter);
  v5 = swift_task_alloc();
  *(v1 + 384) = v5;
  *v5 = v1;
  v5[1] = sub_10067E0C0;
  v6 = *(v1 + 80);

  return v8(v6);
}

uint64_t sub_10067E0C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[49] = a1;
  v3[50] = v1;

  v5 = v3[10];
  v6 = v3[9];
  v7 = v3[8];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    return _swift_task_switch(sub_10067F160, 0, 0);
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v11 = (&async function pointer to dispatch thunk of Characteristic.read() + async function pointer to dispatch thunk of Characteristic.read());
    v8 = swift_task_alloc();
    v3[51] = v8;
    *v8 = v4;
    v8[1] = sub_10067E2BC;
    v9 = v3[13];

    return v11(v9);
  }
}

uint64_t sub_10067E2BC()
{
  v2 = *v1;
  v2[52] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10067F27C, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[53] = v3;
    v4 = sub_1000041A4(&qword_1016C11D0, &qword_1016973C8, &qword_1013B6210, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
    *v3 = v2;
    v3[1] = sub_10067E488;
    v5 = v2[11];

    return AsyncSequence.first()(v2 + 2, v5, v4);
  }
}

uint64_t sub_10067E488()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  if (v0)
  {
    v3 = sub_10067F398;
  }

  else
  {
    v3 = sub_10067E5F0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10067E5F0(uint64_t a1)
{
  v39 = v1;
  v2 = *(v1 + 24);
  if (v2 >> 60 == 15)
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to read TX Power characteristic", v5, 2u);
    }

    v6 = *(v1 + 344);
    v7 = *(v1 + 136);
    v8 = *(v1 + 112);

    type metadata accessor for OwnerCommandManager.Error(0);
    sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error, &unk_1013B6288);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v6(v7, v8);
LABEL_11:

    v25 = *(v1 + 8);

    return v25();
  }

  v9 = *(v1 + 16);
  sub_100017D5C(v9, *(v1 + 24));
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  sub_100006654(v9, v2);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38[0] = v13;
    *v12 = 136315138;
    v14 = Data.hexString.getter();
    v16 = sub_1000136BC(v14, v15, v38);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Read raw TX Power %s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  sub_100017D5C(v9, v2);
  static Endianness.current.getter();
  sub_100680B90();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (*(v1 + 441))
  {
    sub_100017D5C(v9, v2);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    sub_100006654(v9, v2);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[0] = v20;
      *v19 = 136315138;
      v21 = Data.hexString.getter();
      v23 = sub_1000136BC(v21, v22, v38);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Invalid TX Power: %s!", v19, 0xCu);
      sub_100007BAC(v20);
    }

    v35 = *(v1 + 136);
    v36 = *(v1 + 344);
    v24 = *(v1 + 112);
    type metadata accessor for OwnerCommandManager.Error(0);
    sub_100003E44(&qword_1016A7260, type metadata accessor for OwnerCommandManager.Error, &unk_1013B6288);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100006654(v9, v2);

    v36(v35, v24);
    goto LABEL_11;
  }

  v27 = *(v1 + 440);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v37 = v27;
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    *(v30 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "Read TX Power %ld", v30, 0xCu);

    sub_100006654(v9, v2);
  }

  else
  {

    sub_100006654(v9, v2);
  }

  v31 = *(v1 + 344);
  v32 = *(v1 + 136);
  v33 = *(v1 + 112);

  v31(v32, v33);

  v34 = *(v1 + 8);

  return v34(v37);
}

uint64_t sub_10067EC80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10067ED60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10067EE4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10067EF38()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10067F044()
{
  v1 = v0[43];
  v2 = v0[17];
  v3 = v0[14];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10067F160()
{
  v1 = v0[43];
  v2 = v0[17];
  v3 = v0[14];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10067F27C()
{
  v1 = v0[43];
  v2 = v0[17];
  v3 = v0[14];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10067F398()
{
  v1 = v0[43];
  v2 = v0[17];
  v3 = v0[14];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10067F4BC(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((~(a2 & a5) & 0x3000000000000000) != 0)
  {
    return sub_10067F4FC(result, a2, a3, a4, a5, a6, sub_100017D5C);
  }

  return result;
}

unint64_t sub_10067F4FC(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t (*a7)(unint64_t, unint64_t))
{
  v7 = (a5 >> 58) & 0xC | (a2 >> 60) & 3;
  if (v7 <= 5)
  {
    if (v7 == 1)
    {
      v15 = a7;
      a7(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      v12 = a3;
      v11 = a4;
    }

    else
    {
      if (v7 != 5)
      {
        return result;
      }

      v15 = a7;
      a7(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
      v11 = a5 & 0xCFFFFFFFFFFFFFFFLL;
      v12 = a4;
    }

    return v15(v12, v11);
  }

  else if (v7 == 6 || v7 == 7 || v7 == 9)
  {
    v8 = a2 & 0xCFFFFFFFFFFFFFFFLL;

    return (a7)(result, v8, a3, a4);
  }

  return result;
}

uint64_t sub_10067F5FC(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if ((~(a2 & a5) & 0x3000000000000000) != 0)
  {
    return sub_10067F4FC(result, a2, a3, a4, a5, a6, sub_100016590);
  }

  return result;
}

uint64_t sub_10067F63C(void (*a1)(_BYTE *))
{
  v3[0] = *(v1 + 16);
  v3[41] = 0;
  a1(v3);
  return sub_10000B3A8(v3, &qword_1016A72B0, &qword_1013B60A8);
}

uint64_t sub_10067F6B8(const char *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v5 + 80);
  return sub_100677D48(*(v2 + 16), v2 + ((v6 + 24) & ~v6), v2 + ((*(v5 + 64) + v6 + ((v6 + 24) & ~v6)) & ~v6), a1, a2);
}

uint64_t sub_10067F75C()
{
  v1 = *(type metadata accessor for AccessoryCommand(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  return sub_100677AB8(v2, v3, v4);
}

uint64_t sub_10067F820(const char *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *(type metadata accessor for AccessoryCommand(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  return sub_100677C1C(*(v2 + 16), v2 + v6, v2 + v9, *(v2 + v9 + *(v8 + 64)), a1, a2);
}

uint64_t sub_10067F93C(const char *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *(type metadata accessor for AccessoryCommand(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  return sub_100677B80(*(v2 + 16), v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a1, a2);
}

uint64_t sub_10067FA18()
{
  v1 = (type metadata accessor for AccessoryCommand(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64) + v6;

  v8 = v0 + v2;
  v9 = *(v5 + 8);
  v9(v8, v4);
  v9(v8 + v1[7], v4);
  v10 = v8 + v1[8];
  sub_10067B5AC(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32));
  v9(v0 + v6, v4);

  return _swift_deallocObject(v0, v7 + 1);
}

double sub_10067FBD8(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_10067FBEC(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_10067FC04()
{
  type metadata accessor for AccessoryCommand(0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10067FC48()
{
  v1 = (type metadata accessor for AccessoryCommand(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);

  v8 = v0 + v2;
  v9 = *(v5 + 8);
  v9(v8, v4);
  v9(v8 + v1[7], v4);
  v10 = v8 + v1[8];
  sub_10067B5AC(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32));
  v9(v0 + v6, v4);

  return _swift_deallocObject(v0, v6 + v7);
}

uint64_t sub_10067FDE4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5);
}

void *sub_10067FF18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100678910(*a1, *(a1 + 8), 0);
  *a2 = result;
  return result;
}

uint64_t sub_10067FF4C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v5 = *(type metadata accessor for AccessoryCommand(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1006713D4(a1, v6, v7, a2);
}

uint64_t sub_10067FFD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100677DD8(a1, *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_100680000(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(type metadata accessor for AccessoryCommand(0) - 8);
  v9 = (v7 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100671504(a1, *(v1 + 16), *(v1 + 24), v1 + v5, v1 + v7, v1 + v9, *(v1 + v10), *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void *sub_100680174@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100678910(*a1, *(a1 + 8), 1);
  *a2 = result;
  return result;
}

uint64_t sub_1006801A8()
{
  v1 = (type metadata accessor for AccessoryCommand(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[7], v4);
  v6 = v0 + v2 + v1[8];
  sub_10067B5AC(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10068034C(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(type metadata accessor for AccessoryCommand(0) - 8);
  v9 = (v7 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v10);
  v14 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10066F264(a1, v11, v12, v1 + v5, v1 + v7, v1 + v9, v13, v14);
}

uint64_t sub_100680474(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_10067FBEC(a1, a2);
  }

  return a1;
}

uint64_t sub_1006804BC(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryCommand(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_10066D7E0(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_100680584(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryCommand(0) - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_10066B8E4(a1, v5, v6, v10, v1 + v4, v8, v9);
}

uint64_t sub_10068062C()
{
  v1 = *(type metadata accessor for AccessoryCommand(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_10066C474(v2, v4, v3, v5);
}

uint64_t sub_1006806D4(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryCommand(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 16) & ~v7;
  return sub_10066958C(a1, *(v1 + 16), *(v1 + 24), (v1 + v4), *(v1 + v5), *(v1 + v5 + 8), v1 + v8, v1 + ((*(v6 + 64) + v7 + v8) & ~v7), *(v1 + ((*(v6 + 64) + ((*(v6 + 64) + v7 + v8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10068084C(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryCommand(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = v1 + ((*(v6 + 64) + v7 + v8) & ~v7);

  return sub_1006670BC(a1, v9, v10, v11, v12, v1 + v4, v1 + v8, v13);
}

uint64_t sub_100680954(void (*a1)(void))
{

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32);
}

uint64_t sub_1006809A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100661C14(a1, v5, v4);
}

uint64_t sub_100680A98(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessoryCommand(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_10065C0F4(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_100680B90()
{
  result = qword_1016A74D0;
  if (!qword_1016A74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A74D0);
  }

  return result;
}

uint64_t sub_100680C14()
{
  v1 = sub_1000BC4D4(&qword_1016A74C0, &unk_1013B6218);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_100680DB8(uint64_t a1)
{
  sub_100680E78(319, &qword_1016A7560, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    sub_100680E78(319, &qword_10169E968, sub_10038C384);
    if (v2 <= 0x3F)
    {
      sub_100680EC4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100680E78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_100680EC4()
{
  result = qword_1016A7568;
  if (!qword_1016A7568)
  {
    result = &type metadata for AccessoryCommandResponse.RawResponseStatus;
    atomic_store(&type metadata for AccessoryCommandResponse.RawResponseStatus, &qword_1016A7568);
  }

  return result;
}

uint64_t sub_100680F98(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v10 = v9;
  v47 = a6;
  v48 = a7;
  v46 = a5;
  v50 = a4;
  v33 = a2;
  v45 = a9;
  v14 = type metadata accessor for OnConflict();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Insert();
  result = __chkstk_darwin(v35);
  v41 = a8 & 1;
  v40 = a3 + 32;
  v49 = *(a3 + 16);
  v38 = (v15 + 8);
  v39 = (v15 + 104);
  v34 = (v20 + 8);
  v37 = enum case for OnConflict.replace(_:);
  v36 = xmmword_10138C0D0;
  v43 = v17;
  v44 = v14;
  v42 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v21 = a1 - v50;
    if (a1 < v50)
    {
      break;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (v21 >= v49)
    {
      goto LABEL_24;
    }

    v53 = v10;
    v22 = (v40 + 16 * v21);
    v24 = *v22;
    v23 = v22[1];
    (*v39)(v17, v37, v14);
    sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
    type metadata accessor for Setter();
    *(swift_allocObject() + 16) = v36;
    sub_100017D5C(v24, v23);
    if (qword_101694588 != -1)
    {
      swift_once();
    }

    v25 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v25, qword_10177A930);
    type metadata accessor for UUID();
    <- infix<A>(_:_:)();
    if (qword_101694590 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v25, qword_10177A948);
    <- infix<A>(_:_:)();
    if (qword_1016945A0 != -1)
    {
      swift_once();
    }

    v26 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
    sub_1000076D4(v26, qword_10177A978);
    LOBYTE(v51) = v41;
    sub_100028088();
    <- infix<A>(_:_:)();
    v17 = v43;
    if (qword_101694598 != -1)
    {
      swift_once();
    }

    v27 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
    sub_1000076D4(v27, qword_10177A960);
    v51 = a1;
    sub_100029580();
    <- infix<A>(_:_:)();
    if (qword_1016945A8 != -1)
    {
      swift_once();
    }

    v28 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
    sub_1000076D4(v28, qword_10177A990);
    v51 = v24;
    v52 = v23;
    sub_100017D5C(v24, v23);
    <- infix<A>(_:_:)();
    sub_100016590(v51, v52);
    type metadata accessor for Table();
    v29 = v42;
    QueryType.insert(or:_:)();

    v14 = v44;
    (*v38)(v17, v44);
    v30 = v53;
    Connection.run(_:)();
    v10 = v30;
    if (v30)
    {
      (*v34)(v29, v35);
      return sub_100016590(v24, v23);
    }

    (*v34)(v29, v35);
    result = sub_100016590(v24, v23);
    if (v33 == a1)
    {
      return result;
    }

    if (__CFADD__(a1++, 1))
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100681580(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v32 = a8;
  v24 = a6;
  v25 = a7;
  v23 = a4;
  v22 = a3;
  v28 = a1;
  v9 = type metadata accessor for OnConflict();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Insert();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v12;
  v27 = v10;
  v15 = *(v10 + 104);
  v30 = v9;
  v15(v12, enum case for OnConflict.replace(_:), v9);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  type metadata accessor for Setter();
  *(swift_allocObject() + 16) = xmmword_10138C0D0;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v16, qword_10177A930);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177A948);
  <- infix<A>(_:_:)();
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v17 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v17, qword_10177A978);
  LOBYTE(v33) = v23 & 1;
  sub_100028088();
  <- infix<A>(_:_:)();
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v18 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v18, qword_10177A960);
  sub_1000035D0(a5, a5[3]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v35 = v33;
  sub_100029580();
  <- infix<A>(_:_:)();
  if (qword_1016945B0 != -1)
  {
    swift_once();
  }

  v19 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v19, qword_10177A9A8);
  v33 = v24;
  v34 = v25;
  sub_100017D5C(v24, v25);
  <- infix<A>(_:_:)();
  sub_100016590(v33, v34);
  type metadata accessor for Table();
  v20 = v26;
  QueryType.insert(or:_:)();

  (*(v27 + 8))(v20, v30);
  Connection.run(_:)();
  return (*(v29 + 8))(v14, v31);
}

uint64_t sub_100681AA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v30 = a8;
  v23 = a6;
  v24 = a7;
  v22 = a5;
  v21 = a4;
  v20[1] = a3;
  v26 = a1;
  v8 = type metadata accessor for OnConflict();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Insert();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v9;
  v14 = *(v9 + 104);
  v28 = v8;
  v14(v11, enum case for OnConflict.replace(_:), v8);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  type metadata accessor for Setter();
  *(swift_allocObject() + 16) = xmmword_10138C0D0;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v15 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v15, qword_10177A930);
  type metadata accessor for UUID();
  <- infix<A>(_:_:)();
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v15, qword_10177A948);
  <- infix<A>(_:_:)();
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_1000076D4(v16, qword_10177A978);
  LOBYTE(v31) = v21 & 1;
  sub_100028088();
  <- infix<A>(_:_:)();
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v17 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v17, qword_10177A960);
  v31 = v22;
  sub_100029580();
  <- infix<A>(_:_:)();
  if (qword_1016945B0 != -1)
  {
    swift_once();
  }

  v18 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v18, qword_10177A9A8);
  v31 = v23;
  v32 = v24;
  sub_100017D5C(v23, v24);
  <- infix<A>(_:_:)();
  sub_100016590(v31, v32);
  type metadata accessor for Table();
  QueryType.insert(or:_:)();

  (*(v25 + 8))(v11, v28);
  Connection.run(_:)();
  return (*(v27 + 8))(v13, v29);
}

uint64_t sub_100681FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for Connection.TransactionMode();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for Table();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_1006820C4, v5, 0);
}

uint64_t sub_1006820C4()
{
  v1 = *(*(v0 + 56) + 112);
  if (v1)
  {

    v2 = sub_1002072CC();
    if (v2)
    {
      v3 = v2;
      v5 = *(v0 + 96);
      v4 = *(v0 + 104);
      v6 = *(v0 + 80);
      v18 = *(v0 + 88);
      v7 = *(v0 + 72);
      v8 = *(v0 + 40);
      v16 = *(v0 + 48);
      v17 = *(v0 + 64);
      v9 = *(v0 + 32);
      v15 = *(v0 + 16);
      (*(v5 + 16))(v4, v1 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_connectionKeys);
      v10 = swift_task_alloc();
      *(v10 + 16) = v9;
      *(v10 + 24) = v8;
      *(v10 + 32) = v16;
      *(v10 + 40) = v9;
      *(v10 + 48) = v4;
      *(v10 + 56) = v15;
      *(v10 + 72) = v3;
      (*(v7 + 104))(v6, enum case for Connection.TransactionMode.deferred(_:), v17);
      Connection.transaction(_:block:)();
      (*(v7 + 8))(v6, v17);

      (*(v5 + 8))(v4, v18);

      v11 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    swift_willThrow();
  }

  v11 = *(v0 + 8);
LABEL_7:

  return v11();
}

uint64_t sub_10068232C(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v43 = a7;
  v44 = a8;
  v41 = a5;
  v42 = a6;
  v46 = a4;
  v30 = a2;
  v12 = type metadata accessor for OnConflict();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Insert();
  result = __chkstk_darwin(v32);
  v36 = (v13 + 104);
  v37 = a3 + 32;
  v35 = (v13 + 8);
  v45 = *(a3 + 16);
  v31 = (v18 + 8);
  v34 = enum case for OnConflict.replace(_:);
  v33 = xmmword_101391790;
  v39 = v15;
  v40 = v12;
  v38 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v19 = a1 - v46;
    if (a1 < v46)
    {
      break;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }

    if (v19 >= v45)
    {
      goto LABEL_22;
    }

    v49 = v9;
    v20 = (v37 + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    (*v36)(v15, v34, v12);
    sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
    type metadata accessor for Setter();
    *(swift_allocObject() + 16) = v33;
    sub_100017D5C(v22, v21);
    if (qword_101694588 != -1)
    {
      swift_once();
    }

    v23 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v23, qword_10177A930);
    type metadata accessor for UUID();
    <- infix<A>(_:_:)();
    if (qword_101694590 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v23, qword_10177A948);
    <- infix<A>(_:_:)();
    if (qword_101694598 != -1)
    {
      swift_once();
    }

    v24 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
    sub_1000076D4(v24, qword_10177A960);
    v47 = a1;
    sub_100029580();
    <- infix<A>(_:_:)();
    v15 = v39;
    if (qword_1016945B8 != -1)
    {
      swift_once();
    }

    v25 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
    sub_1000076D4(v25, qword_10177A9C0);
    v47 = v22;
    v48 = v21;
    sub_100017D5C(v22, v21);
    <- infix<A>(_:_:)();
    sub_100016590(v47, v48);
    type metadata accessor for Table();
    v26 = v38;
    QueryType.insert(or:_:)();

    v12 = v40;
    (*v35)(v15, v40);
    v27 = v49;
    Connection.run(_:)();
    v9 = v27;
    if (v27)
    {
      (*v31)(v26, v32);
      return sub_100016590(v22, v21);
    }

    (*v31)(v26, v32);
    result = sub_100016590(v22, v21);
    if (v30 == a1)
    {
      return result;
    }

    if (__CFADD__(a1++, 1))
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100682874(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Connection.TransactionMode();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for Table();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100682A2C, v2, 0);
}

uint64_t sub_100682A2C()
{
  if (*(v0[4] + 112))
  {

    v1 = sub_1002072CC();
    if (v1)
    {
      v19 = v1;
      if (qword_101694588 != -1)
      {
        swift_once();
      }

      v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      sub_1000076D4(v2, qword_10177A930);
      type metadata accessor for UUID();
      == infix<A>(_:_:)();
      if (qword_101694590 != -1)
      {
        swift_once();
      }

      v23 = v0[17];
      v20 = v0[15];
      v21 = v0[16];
      v3 = v0[12];
      v22 = v0[13];
      v4 = v0[10];
      v5 = v0[11];
      v7 = v0[8];
      v6 = v0[9];
      v17 = v0[7];
      v18 = v0[14];
      v15 = v0[6];
      v16 = v0[5];
      sub_1000076D4(v2, qword_10177A948);
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v8 = *(v6 + 8);
      v8(v4, v7);
      v8(v5, v7);
      QueryType.filter(_:)();
      v8(v3, v7);
      == infix<A>(_:_:)();
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v8(v4, v7);
      v8(v5, v7);
      QueryType.filter(_:)();
      v8(v3, v7);
      == infix<A>(_:_:)();
      == infix<A>(_:_:)();
      && infix(_:_:)();
      v8(v4, v7);
      v8(v5, v7);
      QueryType.filter(_:)();
      v8(v3, v7);
      v9 = swift_task_alloc();
      v9[2] = v19;
      v9[3] = v23;
      v9[4] = v21;
      v9[5] = v20;
      (*(v15 + 104))(v17, enum case for Connection.TransactionMode.deferred(_:), v16);
      Connection.transaction(_:block:)();
      (*(v15 + 8))(v17, v16);

      v10 = *(v18 + 8);
      v10(v20, v22);
      v10(v21, v22);
      v10(v23, v22);
    }

    else
    {
      sub_10020223C();
      swift_allocError();
      *v12 = 2;
      *(v12 + 4) = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v11 = 2;
    *(v11 + 4) = 1;
    swift_willThrow();
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100683018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  v18[3] = a3;
  v5 = type metadata accessor for Delete();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v18 - v11;
  __chkstk_darwin(v10);
  v14 = v18 - v13;
  type metadata accessor for Table();
  QueryType.delete()();
  Connection.run(_:)();
  if (v4)
  {
    return (*(v6 + 8))(v14, v5);
  }

  v16 = v14;
  v17 = *(v6 + 8);
  v17(v16, v5);
  QueryType.delete()();
  Connection.run(_:)();
  v17(v12, v5);
  QueryType.delete()();
  Connection.run(_:)();
  return (v17)(v9, v5);
}

uint64_t sub_10068321C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1000BC4D4(&qword_101697700, &unk_10139FB90);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[13] = v5;
  *v5 = v2;
  v5[1] = sub_100683394;

  return sub_100684378();
}

uint64_t sub_100683394(uint64_t a1)
{
  v3 = *v2;
  v3[14] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[3];

    return _swift_task_switch(sub_100683510, v6, 0);
  }
}

uint64_t sub_100683510()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v1 + 32);
  *(v0 + 256) = v3;
  v4 = -1;
  v5 = -1 << v3;
  v6 = *(v1 + 56);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  *(v0 + 120) = _swiftEmptyArrayStorage;
  *(v0 + 128) = _swiftEmptyArrayStorage;
  v7 = v4 & v6;
  if (v7)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 136) = v7;
    *(v0 + 144) = v8;
    v11 = *(v0 + 88);
    v12 = *(v0 + 96);
    v13 = *(v0 + 72);
    v14 = *(v1 + 48) + *(v2 + 72) * (__clz(__rbit64(v7)) | (v8 << 6));
    v15 = *(v2 + 16);
    *(v0 + 152) = v15;
    *(v0 + 160) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v12, v14, v13);
    (*(v2 + 32))(v11, v12, v13);
    v16 = swift_task_alloc();
    *(v0 + 168) = v16;
    *v16 = v0;
    v16[1] = sub_10068371C;
    v17 = *(v0 + 88);
    v18 = *(v0 + 16);

    return sub_100685140(v18, v17, 0);
  }

  else
  {
    v9 = 0;
    v10 = ((63 - v5) >> 6) - 1;
    while (v10 != v9)
    {
      v8 = v9 + 1;
      v7 = *(v1 + 8 * v9++ + 64);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v0 + 8);

    return v20(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_10068371C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *v4;
  *(v6 + 176) = a1;
  *(v6 + 184) = a2;

  if (v3)
  {

    *(v6 + 192) = *(v6 + 120);
    v8 = swift_task_alloc();
    *(v6 + 200) = v8;
    *v8 = v7;
    v8[1] = sub_100683A24;
    v9 = *(v6 + 88);
    v10 = *(v6 + 16);

    return sub_100685140(v10, v9, 1);
  }

  else
  {
    v12 = *(v6 + 24);
    *(v6 + 257) = a3;

    return _swift_task_switch(sub_1006838BC, v12, 0);
  }
}

uint64_t sub_1006838BC()
{
  if (*(v0 + 257))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    v4 = (*(v0 + 64) + *(*(v0 + 32) + 48));
    (*(v0 + 152))();
    *v4 = v3;
    v4[1] = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 120);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v1 = sub_100A5C008(0, v1[2] + 1, 1, *(v0 + 120));
    }

    v7 = v1[2];
    v6 = v1[3];
    if (v7 >= v6 >> 1)
    {
      v1 = sub_100A5C008((v6 > 1), v7 + 1, 1, v1);
    }

    v8 = *(v0 + 64);
    v9 = *(v0 + 40);
    v1[2] = v7 + 1;
    sub_100694CEC(v8, v1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7);
  }

  *(v0 + 192) = v1;
  v10 = swift_task_alloc();
  *(v0 + 200) = v10;
  *v10 = v0;
  v10[1] = sub_100683A24;
  v11 = *(v0 + 88);
  v12 = *(v0 + 16);

  return sub_100685140(v12, v11, 1);
}

uint64_t sub_100683A24(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *v4;
  *(v6 + 208) = a1;
  *(v6 + 216) = a2;

  if (v3)
  {

    *(v6 + 224) = *(v6 + 192);
    v8 = swift_task_alloc();
    *(v6 + 232) = v8;
    *v8 = v7;
    v8[1] = sub_100683D28;
    v9 = *(v6 + 88);
    v10 = *(v6 + 16);

    return sub_100687010(v10, v9);
  }

  else
  {
    v12 = *(v6 + 24);
    *(v6 + 258) = a3;

    return _swift_task_switch(sub_100683BC0, v12, 0);
  }
}

uint64_t sub_100683BC0()
{
  if (*(v0 + 258))
  {
    v1 = *(v0 + 192);
  }

  else
  {
    v3 = *(v0 + 208);
    v2 = *(v0 + 216);
    v4 = (*(v0 + 56) + *(*(v0 + 32) + 48));
    (*(v0 + 152))();
    *v4 = v3;
    v4[1] = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 192);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v1 = sub_100A5C008(0, v1[2] + 1, 1, *(v0 + 192));
    }

    v7 = v1[2];
    v6 = v1[3];
    if (v7 >= v6 >> 1)
    {
      v1 = sub_100A5C008((v6 > 1), v7 + 1, 1, v1);
    }

    v8 = *(v0 + 56);
    v9 = *(v0 + 40);
    v1[2] = v7 + 1;
    sub_100694CEC(v8, v1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7);
  }

  *(v0 + 224) = v1;
  v10 = swift_task_alloc();
  *(v0 + 232) = v10;
  *v10 = v0;
  v10[1] = sub_100683D28;
  v11 = *(v0 + 88);
  v12 = *(v0 + 16);

  return sub_100687010(v12, v11);
}

uint64_t sub_100683D28(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *v4;
  *(v7 + 240) = a1;
  *(v7 + 248) = a2;

  v8 = *(v6 + 24);
  if (v3)
  {

    v9 = sub_100684164;
  }

  else
  {
    *(v7 + 259) = a3;
    v9 = sub_100683E78;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100683E78()
{
  if (*(v0 + 259))
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    v1 = *(v0 + 128);
  }

  else
  {
    v3 = *(v0 + 240);
    v2 = *(v0 + 248);
    v4 = (*(v0 + 48) + *(*(v0 + 32) + 48));
    (*(v0 + 152))();
    *v4 = v3;
    v4[1] = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 128);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_20:
      v1 = sub_100A5C008(0, v1[2] + 1, 1, v1);
    }

    v7 = v1[2];
    v6 = v1[3];
    if (v7 >= v6 >> 1)
    {
      v1 = sub_100A5C008((v6 > 1), v7 + 1, 1, v1);
    }

    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    v1[2] = v7 + 1;
    sub_100694CEC(v8, v1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7);
  }

  v10 = *(v0 + 224);
  v12 = *(v0 + 136);
  v11 = *(v0 + 144);
  *(v0 + 120) = v10;
  *(v0 + 128) = v1;
  v13 = (v12 - 1) & v12;
  if (v13)
  {
    v14 = *(v0 + 112);
LABEL_13:
    *(v0 + 136) = v13;
    *(v0 + 144) = v11;
    v16 = *(v0 + 88);
    v17 = *(v0 + 96);
    v18 = *(v0 + 72);
    v19 = *(v0 + 80);
    v20 = *(v14 + 48) + *(v19 + 72) * (__clz(__rbit64(v13)) | (v11 << 6));
    v21 = *(v19 + 16);
    *(v0 + 152) = v21;
    *(v0 + 160) = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v17, v20, v18);
    (*(v19 + 32))(v16, v17, v18);
    v22 = swift_task_alloc();
    *(v0 + 168) = v22;
    *v22 = v0;
    v22[1] = sub_10068371C;
    v23 = *(v0 + 88);
    v24 = *(v0 + 16);

    return sub_100685140(v24, v23, 0);
  }

  else
  {
    while (1)
    {
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      v14 = *(v0 + 112);
      if (v15 >= (((1 << *(v0 + 256)) + 63) >> 6))
      {
        break;
      }

      v13 = *(v14 + 8 * v15 + 56);
      ++v11;
      if (v13)
      {
        v11 = v15;
        goto LABEL_13;
      }
    }

    v26 = *(v0 + 8);

    return v26(v10, v1);
  }
}

uint64_t sub_100684164()
{
  result = (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  v2 = *(v0 + 224);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  *(v0 + 120) = v2;
  v6 = (v4 - 1) & v4;
  if (v6)
  {
    result = *(v0 + 112);
LABEL_7:
    *(v0 + 136) = v6;
    *(v0 + 144) = v3;
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    v12 = *(result + 48) + *(v11 + 72) * (__clz(__rbit64(v6)) | (v3 << 6));
    v13 = *(v11 + 16);
    *(v0 + 152) = v13;
    *(v0 + 160) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v9, v12, v10);
    (*(v11 + 32))(v8, v9, v10);
    v14 = swift_task_alloc();
    *(v0 + 168) = v14;
    *v14 = v0;
    v14[1] = sub_10068371C;
    v15 = *(v0 + 88);
    v16 = *(v0 + 16);

    return sub_100685140(v16, v15, 0);
  }

  else
  {
    while (1)
    {
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return result;
      }

      result = *(v0 + 112);
      if (v7 >= (((1 << *(v0 + 256)) + 63) >> 6))
      {
        break;
      }

      v6 = *(result + 8 * v7 + 56);
      ++v3;
      if (v6)
      {
        v3 = v7;
        goto LABEL_7;
      }
    }

    v17 = *(v0 + 8);

    return v17(v2, v5);
  }
}

uint64_t sub_100684378()
{
  v1[13] = v0;
  v2 = type metadata accessor for Connection.TransactionMode();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = type metadata accessor for Table();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_1006844AC, v0, 0);
}

uint64_t sub_1006844AC()
{
  if (*(v0[13] + 112))
  {

    v1 = sub_100218230();
    if (v1)
    {
      v31 = v1;
      if (qword_101694590 != -1)
      {
        swift_once();
      }

      v2 = v0[20];
      v32 = v0[21];
      v27 = v0[19];
      v33 = v0[18];
      v3 = v0[17];
      v28 = v0[15];
      v29 = v0[16];
      v30 = v0[14];
      v4 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
      v5 = sub_1000076D4(v4, qword_10177A948);
      v0[5] = v4;
      v6 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
      v0[6] = v6;
      v7 = v6;
      v8 = sub_1000280DC(v0 + 2);
      v9 = *(*(v4 - 8) + 16);
      v9(v8, v5, v4);
      SchemaType.select(_:_:)();
      sub_100007BAC(v0 + 2);
      sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_101385D80;
      *(v10 + 56) = v4;
      *(v10 + 64) = v7;
      v11 = sub_1000280DC((v10 + 32));
      v9(v11, v5, v4);
      v12 = v2;
      QueryType.group(_:)();

      v13 = *(v33 + 8);
      v13(v12, v3);
      v0[10] = v4;
      v0[11] = v7;
      v14 = sub_1000280DC(v0 + 7);
      v9(v14, v5, v4);
      SchemaType.select(_:_:)();
      sub_100007BAC(v0 + 7);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_101385D80;
      *(v15 + 56) = v4;
      *(v15 + 64) = v7;
      v16 = sub_1000280DC((v15 + 32));
      v9(v16, v5, v4);
      QueryType.group(_:)();

      v13(v12, v3);
      v0[12] = &_swiftEmptySetSingleton;
      v17 = swift_task_alloc();
      v17[2] = v31;
      v17[3] = v32;
      v17[4] = v0 + 12;
      v17[5] = v27;
      (*(v28 + 104))(v29, enum case for Connection.TransactionMode.deferred(_:), v30);
      Connection.transaction(_:block:)();
      v18 = v0[21];
      v23 = v0[19];
      v24 = v0[17];
      (*(v0[15] + 8))(v0[16], v0[14]);

      v25 = v0[12];
      v13(v23, v24);
      v13(v18, v24);

      v26 = v0[1];

      return v26(v25);
    }

    sub_10020223C();
    swift_allocError();
    *v20 = 2;
    *(v20 + 4) = 1;
    swift_willThrow();
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v19 = 2;
    *(v19 + 4) = 1;
    swift_willThrow();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100684A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a3;
  v62 = a4;
  v6 = type metadata accessor for UUID();
  v61 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v65 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v75 = v57 - v10;
  v11 = __chkstk_darwin(v9);
  v74 = v57 - v12;
  __chkstk_darwin(v11);
  v14 = v57 - v13;
  v79 = type metadata accessor for Row();
  v64 = *(v79 - 8);
  v15 = __chkstk_darwin(v79);
  v60 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v57 - v17;
  v19 = sub_1000BC4D4(&qword_101699D68, &unk_1013B6450);
  v20 = __chkstk_darwin(v19 - 8);
  v66 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v57 - v22;
  v24 = type metadata accessor for Table();
  v77 = v24;
  v78 = &protocol witness table for Table;
  v25 = sub_1000280DC(v76);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v28 = v26 + 16;
  v27(v25, a2, v24);
  v63 = a1;
  v29 = v72;
  Connection.prepare(_:)();
  result = sub_100007BAC(v76);
  if (!v29)
  {
    v57[1] = v28;
    v58 = v27;
    v59 = v24;
    v31 = dispatch thunk of _AnySequenceBox._makeIterator()();

    v72 = v31;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v32 = v64;
    v33 = v79;
    v70 = *(v64 + 48);
    v71 = v64 + 48;
    if (v70(v23, 1, v79) != 1)
    {
      v50 = v32 + 32;
      v67 = *(v32 + 32);
      v68 = (v32 + 32);
      v51 = (v61 + 16);
      v52 = (v61 + 8);
      v69 = (v50 - 24);
      do
      {
        v67(v18, v23, v33);
        if (qword_101694590 != -1)
        {
          swift_once();
        }

        v53 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
        sub_1000076D4(v53, qword_10177A948);
        Row.get<A>(_:)();
        v55 = v74;
        v54 = v75;
        (*v51)(v75, v14, v6);
        sub_100DE8BCC(v55, v54);
        v56 = *v52;
        (*v52)(v55, v6);
        v56(v14, v6);
        v33 = v79;
        (*v69)(v18, v79);
        dispatch thunk of _AnyIteratorBoxBase.next()();
      }

      while (v70(v23, 1, v33) != 1);
    }

    v34 = v59;
    v77 = v59;
    v78 = &protocol witness table for Table;
    v35 = sub_1000280DC(v76);
    v58(v35, v62, v34);
    Connection.prepare(_:)();
    sub_100007BAC(v76);
    v36 = dispatch thunk of _AnySequenceBox._makeIterator()();

    v37 = v66;
    v72 = v36;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v38 = v79;
    if (v70(v37, 1, v79) != 1)
    {
      v39 = v64 + 32;
      v40 = v60;
      v41 = (v61 + 16);
      v42 = (v61 + 8);
      v68 = *(v64 + 32);
      v69 = (v64 + 8);
      do
      {
        v43 = v39;
        v68(v40, v37, v38);
        if (qword_101694590 != -1)
        {
          swift_once();
        }

        v44 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
        sub_1000076D4(v44, qword_10177A948);
        v45 = v65;
        Row.get<A>(_:)();
        v47 = v74;
        v46 = v75;
        (*v41)(v75, v45, v6);
        sub_100DE8BCC(v47, v46);
        v48 = *v42;
        (*v42)(v47, v6);
        v48(v45, v6);
        v38 = v79;
        (*v69)(v40, v79);
        v37 = v66;
        dispatch thunk of _AnyIteratorBoxBase.next()();
        v49 = v70(v37, 1, v38);
        v39 = v43;
      }

      while (v49 != 1);
    }
  }

  return result;
}