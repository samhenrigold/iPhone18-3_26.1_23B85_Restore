void sub_1000611D4()
{
  swift_beginAccess();
  atomic_flag_clear(v0 + 16);
  swift_endAccess();
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_10039FF28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "install operation ended", v4, 2u);
  }
}

uint64_t sub_1000612D8(char a1)
{
  v2 = v1;
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_10039FF28);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = showFunction(signature:_:)(0xD00000000000001DLL, 0x8000000100348390, _swiftEmptyArrayStorage);
    v13 = sub_100008F6C(v11, v12, v15);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  sub_10000BE18((v2 + 440), *(v2 + 464));
  v15[3] = &type metadata for Bool;
  LOBYTE(v15[0]) = a1 & 1;
  type metadata accessor for DefaultManagedDictionary();
  sub_10017A800(v15, 3, 0, 0, 0.0);
  sub_10000959C(v15);
  return 1;
}

void sub_100061524(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v22 = 0;
  v7 = [v6 embeddedSecureElementWithError:&v22];
  if (v7)
  {
    v8 = v7;
    v9 = v22;
    v10 = [v8 serialNumber];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = [v8 isProductionSigned];
      if (qword_10039D5D0 != -1)
      {
        swift_once();
      }

      v16 = sub_10000403C(v2, qword_1003A6D18);
      (*(v3 + 16))(v5, v16, v2);
      type metadata accessor for KernelManagerWrapper(0);
      swift_allocObject();
      sub_100092B40(v5, v12, v14, v15);
      sub_100095A94(a1, 0);
    }

    else
    {
      if (qword_10039D370 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000403C(v18, qword_10039FF28);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "no secure element found", v21, 2u);
      }

      sub_100020148(2046, 0xD000000000000012, 0x8000000100348840, 0);
      swift_willThrow();
    }
  }

  else
  {
    v17 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100061930(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_100065074(a1 + 32, &v46, &qword_10039E4D0, &qword_1002C94A0);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  sub_100019D3C(v48, v43);
  v9 = *a3;
  v10 = sub_1000F5A28(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10017CA5C(v15, a2 & 1);
    v10 = sub_1000F5A28(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_1001811FC();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v49 = v18;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_10000959C(v43);
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_100019D3C(v43, (v21[7] + 32 * v10));
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
    }

    v25 = a1 + 80;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_100065074(v25, &v46, &qword_10039E4D0, &qword_1002C94A0);
      v28 = v46;
      v27 = v47;
      v44 = v46;
      v45 = v47;
      sub_100019D3C(v48, v43);
      v29 = *a3;
      v30 = sub_1000F5A28(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_10017CA5C(v34, 1);
        v30 = sub_1000F5A28(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_100019D3C(v43, (v37[7] + 32 * v30));
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 48;
      if (v4 == v26)
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
  _StringGuts.grow(_:)(30);
  v41._object = 0x8000000100347B20;
  v41._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v41);
  _print_unlocked<A, B>(_:_:)();
  v42._countAndFlagsBits = 39;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100061D0C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t *sub_100061D64(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19)
{
  v156 = type metadata accessor for CertificateManager(0);
  v157 = &off_100381288;
  *&v155 = a2;
  v153 = type metadata accessor for ProfileManager();
  v154 = &off_100380E88;
  *&v152 = a3;
  v150 = type metadata accessor for MPOCDefaultAttestationManager();
  v151 = &off_100380AA8;
  *&v149 = a4;
  v147 = type metadata accessor for MPOCDefaultMonitorManager();
  v148 = &off_100382710;
  *&v146 = a5;
  v145 = &off_100386330;
  v144 = type metadata accessor for SystemInfo();
  *&v143 = a7;
  v142 = &off_100386190;
  v141 = type metadata accessor for DefaultManagedDictionary();
  *&v140 = a8;
  v139 = &off_100385348;
  v138 = type metadata accessor for SignerFactory();
  *&v137 = a9;
  v136 = &off_100384E70;
  v135 = type metadata accessor for DefaultSecureTimeKeeper();
  *&v134 = a10;
  v133 = &off_1003849A0;
  v132 = type metadata accessor for SecureElement();
  *&v131 = a12;
  v130 = &off_100384FB0;
  v129 = type metadata accessor for DefaultTimeTokenManager(0);
  *&v128 = a13;
  v127 = &off_1003823C0;
  v126 = type metadata accessor for LaunchFeedbackFramework();
  *&v125 = a15;
  v124 = &off_100382050;
  v123 = type metadata accessor for KernelManagerWrapper(0);
  *&v122 = a17;
  v121 = &off_100380B28;
  v120 = type metadata accessor for SESnapshotWrapper();
  *&v119 = a18;
  *(a19 + 16) = 0;
  *(a19 + 648) = 0;
  a19[82] = 0;
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000403C(v25, qword_10039FF28);
  v26 = a1;
  sub_10000CCE4(a1, v117);
  sub_10000CCE4(&v155, v115);
  sub_10000CCE4(&v152, v113);
  sub_10000CCE4(&v149, v111);
  sub_10000CCE4(&v146, v109);
  v27 = a6;
  sub_10000CCE4(a6, v107);
  sub_10000CCE4(&v143, v105);
  sub_10000CCE4(&v140, v103);
  sub_10000CCE4(&v137, v101);
  sub_10000CCE4(&v134, v99);
  sub_10000CCE4(&v131, v97);
  sub_10000CCE4(&v128, v95);
  sub_10000CCE4(&v125, v93);
  sub_10000CCE4(&v122, v91);
  sub_10000CCE4(&v119, v89);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v30 = 136315394;
    v31 = _typeName(_:qualified:)();
    v33 = sub_100008F6C(v31, v32, &v88);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1002C3AC0;
    v35 = v118;
    v36 = sub_10000BE18(v117, v118);
    *(v34 + 56) = v35;
    v37 = sub_10000BE5C((v34 + 32));
    (*(*(v35 - 8) + 16))(v37, v36, v35);
    v38 = v116;
    v39 = sub_10000BE18(v115, v116);
    *(v34 + 88) = v38;
    v40 = sub_10000BE5C((v34 + 64));
    (*(*(v38 - 8) + 16))(v40, v39, v38);
    v41 = v114;
    v42 = sub_10000BE18(v113, v114);
    *(v34 + 120) = v41;
    v43 = sub_10000BE5C((v34 + 96));
    (*(*(v41 - 8) + 16))(v43, v42, v41);
    v44 = v112;
    v45 = sub_10000BE18(v111, v112);
    *(v34 + 152) = v44;
    v46 = sub_10000BE5C((v34 + 128));
    (*(*(v44 - 8) + 16))(v46, v45, v44);
    v47 = v110;
    v48 = sub_10000BE18(v109, v110);
    *(v34 + 184) = v47;
    v49 = sub_10000BE5C((v34 + 160));
    (*(*(v47 - 8) + 16))(v49, v48, v47);
    v50 = v108;
    v51 = sub_10000BE18(v107, v108);
    *(v34 + 216) = v50;
    v52 = sub_10000BE5C((v34 + 192));
    (*(*(v50 - 8) + 16))(v52, v51, v50);
    v53 = v106;
    v54 = sub_10000BE18(v105, v106);
    *(v34 + 248) = v53;
    v55 = sub_10000BE5C((v34 + 224));
    (*(*(v53 - 8) + 16))(v55, v54, v53);
    v56 = v104;
    v57 = sub_10000BE18(v103, v104);
    *(v34 + 280) = v56;
    v58 = sub_10000BE5C((v34 + 256));
    (*(*(v56 - 8) + 16))(v58, v57, v56);
    v59 = v102;
    v60 = sub_10000BE18(v101, v102);
    *(v34 + 312) = v59;
    v61 = sub_10000BE5C((v34 + 288));
    (*(*(v59 - 8) + 16))(v61, v60, v59);
    v62 = v100;
    v63 = sub_10000BE18(v99, v100);
    *(v34 + 344) = v62;
    v64 = sub_10000BE5C((v34 + 320));
    (*(*(v62 - 8) + 16))(v64, v63, v62);
    *(v34 + 376) = type metadata accessor for ConfiguratorAnalytics(0);
    *(v34 + 352) = a11;
    v65 = v98;
    v66 = sub_10000BE18(v97, v98);
    *(v34 + 408) = v65;
    v67 = sub_10000BE5C((v34 + 384));
    (*(*(v65 - 8) + 16))(v67, v66, v65);
    v68 = v96;
    v69 = sub_10000BE18(v95, v96);
    *(v34 + 440) = v68;
    v70 = sub_10000BE5C((v34 + 416));
    (*(*(v68 - 8) + 16))(v70, v69, v68);
    *(v34 + 472) = &type metadata for Bool;
    v71 = a14 & 1;
    *(v34 + 448) = a14 & 1;
    v72 = v94;
    v73 = sub_10000BE18(v93, v94);
    *(v34 + 504) = v72;
    v74 = sub_10000BE5C((v34 + 480));
    (*(*(v72 - 8) + 16))(v74, v73, v72);
    *(v34 + 536) = &type metadata for Int;
    *(v34 + 512) = a16;
    v75 = v92;
    v76 = sub_10000BE18(v91, v92);
    *(v34 + 568) = v75;
    v77 = sub_10000BE5C((v34 + 544));
    (*(*(v75 - 8) + 16))(v77, v76, v75);
    v78 = v90;
    v79 = sub_10000BE18(v89, v90);
    *(v34 + 600) = v78;
    v80 = sub_10000BE5C((v34 + 576));
    (*(*(v78 - 8) + 16))(v80, v79, v78);

    v81 = showFunction(signature:_:)(0xD000000000000122, 0x8000000100348260, v34);
    v83 = v82;

    sub_10000959C(v117);
    sub_10000959C(v115);
    sub_10000959C(v113);
    sub_10000959C(v111);
    sub_10000959C(v109);
    sub_10000959C(v107);
    sub_10000959C(v105);
    sub_10000959C(v103);
    sub_10000959C(v101);
    sub_10000959C(v99);
    sub_10000959C(v97);
    sub_10000959C(v95);
    sub_10000959C(v93);
    sub_10000959C(v91);
    sub_10000959C(v89);
    v84 = sub_100008F6C(v81, v83, &v88);

    *(v30 + 14) = v84;
    v27 = a6;
    _os_log_impl(&_mh_execute_header, v28, v29, "%s.%s", v30, 0x16u);
    swift_arrayDestroy();

    v26 = a1;
  }

  else
  {

    sub_10000959C(v117);
    sub_10000959C(v115);
    sub_10000959C(v113);
    sub_10000959C(v111);
    sub_10000959C(v109);
    sub_10000959C(v107);
    sub_10000959C(v105);
    sub_10000959C(v103);
    sub_10000959C(v101);
    sub_10000959C(v99);
    sub_10000959C(v97);
    sub_10000959C(v95);
    sub_10000959C(v93);
    sub_10000959C(v91);
    sub_10000959C(v89);
    v71 = a14 & 1;
  }

  sub_100029790(v26, (a19 + 3));
  sub_100029790(&v155, (a19 + 8));
  sub_100029790(&v152, (a19 + 13));
  sub_100029790(&v149, (a19 + 18));
  sub_100029790(&v146, (a19 + 23));
  sub_100029790(v27, (a19 + 33));
  sub_100029790(&v143, (a19 + 40));
  sub_100029790(&v140, (a19 + 55));
  sub_100029790(&v137, (a19 + 76));
  sub_100029790(&v134, (a19 + 28));
  a19[38] = a11;
  sub_100029790(&v131, (a19 + 45));
  sub_100029790(&v128, (a19 + 50));
  *(a19 + 312) = v71;
  sub_100029790(&v125, (a19 + 60));
  a19[65] = a16;
  sub_100029790(&v122, (a19 + 66));
  sub_100029790(&v119, (a19 + 71));
  return a19;
}

uint64_t *sub_1000628DC(uint64_t *a1)
{
  v3 = a1;
  sub_1000E6B70(v201);
  if (v1)
  {
  }

  else
  {
    sub_1000E7738(v200);
    sub_1000E7D9C(v199);
    sub_1000E8400(v198);
    sub_1000E8A64(v197);
    sub_1000E31EC(v196);
    v5 = v202;
    v6 = v203;
    sub_10000BE18(v201, v202);
    sub_1000C289C(1u, v5, v6);
    sub_1000E90C8(v194);
    sub_1000E972C(v193);
    sub_1000E9D90(v192);
    sub_1000E4518(v191);
    sub_1000E71D4();
    v8 = v7;
    sub_1000E5844(v190);
    sub_1000EA3F4(v189);
    v9 = a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
    v10 = type metadata accessor for Settings(0);
    v204 = v9[*(v10 + 60)];
    sub_1000EAA58(v188);
    v148 = *&v9[*(v10 + 80)];
    sub_1000EB0BC(v187);
    sub_1000EB720(v186);
    v11 = sub_100022438(v199, v199[3]);
    v147 = v113;
    __chkstk_darwin(v11);
    v13 = (v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = sub_100022438(v198, v198[3]);
    v146 = v113;
    __chkstk_darwin(v15);
    v134 = (v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))();
    v18 = sub_100022438(v197, v197[3]);
    v145 = v113;
    __chkstk_darwin(v18);
    v133 = (v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))();
    v21 = sub_100022438(v196, v196[3]);
    v144 = v113;
    __chkstk_darwin(v21);
    v132 = (v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))();
    v24 = sub_100022438(v194, v194[3]);
    v143 = v113;
    __chkstk_darwin(v24);
    v131 = (v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))();
    v27 = sub_100022438(v193, v193[3]);
    v142 = v113;
    __chkstk_darwin(v27);
    v130 = (v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))();
    v30 = sub_100022438(v192, v192[3]);
    v141 = v113;
    __chkstk_darwin(v30);
    v129 = (v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))();
    v33 = sub_100022438(v191, v191[3]);
    v140 = v113;
    __chkstk_darwin(v33);
    v128 = (v113 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))();
    v36 = sub_100022438(v190, v190[3]);
    v139 = v113;
    __chkstk_darwin(v36);
    v127 = (v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))();
    v39 = sub_100022438(v189, v189[3]);
    v138 = v113;
    __chkstk_darwin(v39);
    v126 = (v113 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v41 + 16))();
    v42 = sub_100022438(v188, v188[3]);
    v137 = v113;
    __chkstk_darwin(v42);
    v44 = (v113 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v45 + 16))(v44);
    v46 = sub_100022438(v187, v187[3]);
    v136 = v113;
    __chkstk_darwin(v46);
    v48 = (v113 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v49 + 16))(v48);
    v50 = sub_100022438(v186, v186[3]);
    v135 = v113;
    __chkstk_darwin(v50);
    v52 = (v113 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v53 + 16))(v52);
    v54 = *v13;
    v55 = *v134;
    v56 = *v132;
    v122 = *v133;
    v123 = v56;
    v57 = *v130;
    v124 = *v131;
    v125 = v57;
    v58 = *v128;
    v130 = *v129;
    v131 = v58;
    v59 = *v126;
    v132 = *v127;
    v133 = v59;
    v134 = *v44;
    v60 = *v48;
    v61 = *v52;
    v62 = type metadata accessor for CertificateManager(0);
    v185[4] = &off_100381288;
    v185[3] = v62;
    v185[0] = v54;
    v63 = type metadata accessor for ProfileManager();
    v184 = &off_100380E88;
    v183 = v63;
    v182[0] = v55;
    v64 = type metadata accessor for MPOCDefaultAttestationManager();
    v181 = &off_100380AA8;
    v180 = v64;
    v179[0] = v122;
    v65 = type metadata accessor for MPOCDefaultMonitorManager();
    v178 = &off_100382710;
    v177 = v65;
    v176[0] = v123;
    v66 = type metadata accessor for SystemInfo();
    v175 = &off_100386330;
    v174 = v66;
    v173[0] = v124;
    v67 = type metadata accessor for DefaultManagedDictionary();
    v172 = &off_100386190;
    v171 = v67;
    v170[0] = v125;
    v68 = type metadata accessor for SignerFactory();
    v169 = &off_100385348;
    v168 = v68;
    v167[0] = v130;
    v69 = type metadata accessor for DefaultSecureTimeKeeper();
    v166 = &off_100384E70;
    v165 = v69;
    v164[0] = v131;
    v162 = type metadata accessor for SecureElement();
    v163 = &off_1003849A0;
    v161[0] = v132;
    v159 = type metadata accessor for DefaultTimeTokenManager(0);
    v160 = &off_100384FB0;
    v158[0] = v133;
    v156 = type metadata accessor for LaunchFeedbackFramework();
    v157 = &off_1003823C0;
    v155[0] = v134;
    v153 = type metadata accessor for KernelManagerWrapper(0);
    v154 = &off_100382050;
    v152[0] = v60;
    v150 = type metadata accessor for SESnapshotWrapper();
    v151 = &off_100380B28;
    v149[0] = v61;
    type metadata accessor for Configurator();
    v131 = swift_allocObject();
    v70 = sub_100022438(v185, v62);
    v134 = v113;
    __chkstk_darwin(v70);
    v129 = (v113 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v72 + 16))();
    v73 = sub_100022438(v182, v183);
    v133 = v113;
    __chkstk_darwin(v73);
    v127 = (v113 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v75 + 16))();
    v76 = sub_100022438(v179, v180);
    v132 = v113;
    __chkstk_darwin(v76);
    v125 = (v113 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v78 + 16))();
    v79 = sub_100022438(v176, v177);
    v130 = v113;
    __chkstk_darwin(v79);
    v124 = (v113 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v81 + 16))();
    v82 = sub_100022438(v173, v174);
    v128 = v113;
    __chkstk_darwin(v82);
    v122 = (v113 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v84 + 16))();
    v85 = sub_100022438(v170, v171);
    v126 = v113;
    __chkstk_darwin(v85);
    v120 = (v113 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v87 + 16))();
    v88 = sub_100022438(v167, v168);
    v123 = v113;
    __chkstk_darwin(v88);
    v118 = (v113 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v90 + 16))();
    v91 = sub_100022438(v164, v165);
    v121 = v113;
    __chkstk_darwin(v91);
    v116 = (v113 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v93 + 16))();
    v94 = sub_100022438(v161, v162);
    v119 = v113;
    __chkstk_darwin(v94);
    v114 = (v113 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v96 + 16))();
    v97 = sub_100022438(v158, v159);
    v117 = v113;
    __chkstk_darwin(v97);
    v99 = (v113 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v100 + 16))(v99);
    v101 = sub_100022438(v155, v156);
    v115 = v113;
    __chkstk_darwin(v101);
    v103 = (v113 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v104 + 16))(v103);
    v105 = sub_100022438(v152, v153);
    v113[2] = v113;
    __chkstk_darwin(v105);
    v107 = (v113 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v108 + 16))(v107);
    v109 = sub_100022438(v149, v150);
    v113[1] = v113;
    __chkstk_darwin(v109);
    v111 = (v113 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v112 + 16))(v111);
    v3 = sub_100061D64(v200, *v129, *v127, *v125, *v124, &v195, *v122, *v120, *v118, *v116, v8, *v114, *v99, v204, *v103, v148, *v107, *v111, v131);

    sub_10000959C(v149);
    sub_10000959C(v152);
    sub_10000959C(v155);
    sub_10000959C(v158);
    sub_10000959C(v161);
    sub_10000959C(v164);
    sub_10000959C(v167);
    sub_10000959C(v170);
    sub_10000959C(v173);
    sub_10000959C(v176);
    sub_10000959C(v179);
    sub_10000959C(v182);
    sub_10000959C(v185);
    sub_10000959C(v186);
    sub_10000959C(v187);
    sub_10000959C(v188);
    sub_10000959C(v189);
    sub_10000959C(v190);
    sub_10000959C(v191);
    sub_10000959C(v192);
    sub_10000959C(v193);
    sub_10000959C(v194);
    sub_10000959C(v196);
    sub_10000959C(v197);
    sub_10000959C(v198);
    sub_10000959C(v199);
    sub_10000959C(v201);
  }

  return v3;
}

uint64_t sub_100064190(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100064220(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100064238()
{
  result = qword_10039E278;
  if (!qword_10039E278)
  {
    sub_1000040BC(&qword_10039E270, &unk_1002C3BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E278);
  }

  return result;
}

uint64_t sub_1000642B8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_100064310(char a1@<W0>, void *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  if (qword_10039D370 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_10039FF28);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v41 = v10;
    v14 = sub_100008F6C(v12, v13, &v43);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1002C1660;
    *(v15 + 56) = &type metadata for Bool;
    *(v15 + 32) = a1 & 1;
    v16 = showFunction(signature:_:)(0xD00000000000001DLL, 0x80000001003487F0, v15);
    v18 = v17;

    v19 = sub_100008F6C(v16, v18, &v43);
    v4 = v3;

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v41, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();

    if ((a1 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if ((a1 & 1) == 0)
    {
LABEL_10:
      sub_10000BE18(v5 + 18, v5[21]);
      sub_100034704(v45);
      memcpy(a2, v45, 0x122uLL);
      return;
    }
  }

  v21 = v5[26];
  v20 = v5[27];
  sub_10000BE18(v5 + 23, v21);
  (*(*(v20 + 8) + 8))(v21);
  if (!v4)
  {
    goto LABEL_10;
  }

  v42 = v4;
  v22 = v5[38];
  sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
  inited = swift_initStackObject();
  *(inited + 32) = 12;
  v24 = inited + 32;
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = 7;
  sub_100184144(inited);
  swift_setDeallocating();
  v25 = sub_10000BD44(v24, &qword_10039FED8, &unk_1002C37D0);
  v26 = *(v22 + 56);
  __chkstk_darwin(v25);
  os_unfair_lock_lock((v26 + 32));
  sub_10006535C((v26 + 16));
  os_unfair_lock_unlock((v26 + 32));

  v28 = *(v22 + 56);
  __chkstk_darwin(v27);
  os_unfair_lock_lock((v28 + 32));
  sub_1000653BC((v28 + 16));
  os_unfair_lock_unlock((v28 + 32));
  v46 = v42;
  swift_errorRetain();
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  if (swift_dynamicCast())
  {
    v29 = sub_100098F34(v43, v44);
  }

  else
  {
    swift_errorRetain();
    v29 = sub_100020148(2029, 0, 0, v42);
  }

  v30 = v29;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43 = v34;
    *v33 = 136446210;
    v46 = v30;
    type metadata accessor for ConfigurationError(0);
    v35 = v30;
    v36 = String.init<A>(describing:)();
    v38 = sub_100008F6C(v36, v37, &v43);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "Configuration error while fetching attestation state: %{public}s", v33, 0xCu);
    sub_10000959C(v34);
  }

  v39 = *sub_10000BE18(v5 + 60, v5[63]);
  v40 = v30;
  sub_10013F4E4(v40, v39);

  swift_willThrow();
}

void sub_1000648EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = [objc_opt_self() sharedHardwareManager];
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v7;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = v6;
  v12[4] = sub_100064FDC;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10001E61C;
  v12[3] = &unk_1003816A8;
  v10 = _Block_copy(v12);

  v11 = [v8 startSecureElementManagerSession:v10];
  _Block_release(v10);

  swift_unknownObjectRelease();
}

uint64_t sub_100064A78()
{
  sub_10000959C((v0 + 16));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100064AB0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100064ABC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064B18()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100064BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100064C68()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(sub_100004074(&qword_1003A0178, &unk_1002C3BB0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  if (!(*(v2 + 48))(v0 + v8, 1, v1))
  {
    v10(v0 + v8, v1);
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((((((v8 + v9) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

void sub_100064E24(uint64_t a1, int a2, void *a3)
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(sub_100004074(&qword_1003A0178, &unk_1002C3BB0) - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v11 + *(v10 + 64);
  sub_10005A560(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), v3 + v8, v3 + v11, *(v3 + v12), *(v3 + (v12 & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + (v12 & 0xFFFFFFFFFFFFFFF8) + 16), *(v3 + (((v12 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)), *(v3 + (((v12 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + (((((v12 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100064F94()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100064FF0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100065000()
{
  sub_100064FF0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100065074(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004074(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000650DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for Configurator.StoreAndForwardState(uint64_t a1)
{
  result = qword_1003A0240;
  if (!qword_1003A0240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100065170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configurator.StoreAndForwardState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000651D4(uint64_t a1)
{
  v2 = type metadata accessor for Configurator.StoreAndForwardState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100065230()
{
  result = qword_1003A01C8;
  if (!qword_1003A01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A01C8);
  }

  return result;
}

uint64_t sub_1000652D4(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1000653D4(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v26 = _swiftEmptyArrayStorage;
  sub_10004E444(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v21[0] = *(i - 1);
    v21[1] = v9;

    a1(&v22, v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v22;
    v10 = v23;
    v13 = v24;
    v12 = v25;
    v26 = v6;
    v15 = v6[2];
    v14 = v6[3];
    if (v15 >= v14 >> 1)
    {
      v19 = v23;
      v17 = v25;
      sub_10004E444((v14 > 1), v15 + 1, 1);
      v12 = v17;
      v10 = v19;
      v6 = v26;
    }

    v6[2] = v15 + 1;
    v16 = &v6[4 * v15];
    v16[4] = v11;
    v16[5] = v10;
    v16[6] = v13;
    v16[7] = v12;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100065514(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = _swiftEmptyArrayStorage;
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_10004E2DC(0, v8[2] + 1, 1);
          v8 = v19;
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_10004E2DC((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        v8[2] = v13 + 1;
        v14 = &v8[2 * v13];
        v14[4] = v10;
        v14[5] = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_16:

    return v8;
  }

  return result;
}

void sub_10006568C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(void, void *), uint64_t a15)
{
  v137 = a8;
  v136 = a7;
  v141 = a6;
  v140 = a5;
  v139 = a2;
  v138 = a1;
  v134 = type metadata accessor for OSSignpostID();
  v133 = *(v134 - 8);
  v17 = __chkstk_darwin(v134);
  v131 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v132 = &v112 - v19;
  v20 = sub_100004074(&qword_10039E288, &unk_1002C1700);
  __chkstk_darwin(v20 - 8);
  v126 = &v112 - v21;
  v123 = type metadata accessor for DispatchTime();
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v120 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v24 = __chkstk_darwin(v23 - 8);
  v117 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v116 = &v112 - v26;
  v142 = type metadata accessor for StopWatch(0);
  v118 = *(v142 - 8);
  __chkstk_darwin(v142);
  v119 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v128 = *(v28 - 8);
  v29 = __chkstk_darwin(v28 - 8);
  v145 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v122 = &v112 - v32;
  v129 = v33;
  __chkstk_darwin(v31);
  v35 = &v112 - v34;
  v36 = type metadata accessor for UUID();
  v37 = *(v36 - 8);
  v38 = __chkstk_darwin(v36);
  v144 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v39;
  __chkstk_darwin(v38);
  v41 = &v112 - v40;
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v146 = a14;
  v42 = type metadata accessor for Logger();
  v43 = sub_10000403C(v42, qword_1003A0278);
  v44 = *(v37 + 16);
  v135 = a3;
  v44(v41, a3, v36);
  sub_100065074(a4, v35, &qword_1003A0178, &unk_1002C3BB0);
  v115 = v43;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  v47 = os_log_type_enabled(v45, v46);
  v147 = a4;
  v130 = v37;
  v125 = v37 + 16;
  v124 = v44;
  v143 = v36;
  if (v47)
  {
    LODWORD(v114) = v46;
    v48 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v151 = v113;
    *v48 = 136315394;
    v49 = _typeName(_:qualified:)();
    v51 = sub_100008F6C(v49, v50, &v151);

    *(v48 + 4) = v51;
    *(v48 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1002C1790;
    *(v52 + 56) = &type metadata for String;
    *(v52 + 32) = 0x746E6573657270;
    *(v52 + 40) = 0xE700000000000000;
    *(v52 + 88) = v36;
    v53 = sub_10000BE5C((v52 + 64));
    v44(v53, v41, v36);
    v54 = v122;
    sub_100065074(v35, v122, &qword_1003A0178, &unk_1002C3BB0);
    if ((*(v37 + 48))(v54, 1, v36) == 1)
    {
      sub_10000BD44(v54, &qword_1003A0178, &unk_1002C3BB0);
      *(v52 + 120) = &type metadata for String;
      *(v52 + 96) = 0;
      *(v52 + 104) = 0xE000000000000000;
    }

    else
    {
      v150 = v36;
      v55 = sub_10000BE5C(&v149);
      (*(v37 + 32))(v55, v54, v36);
      sub_100019D3C(&v149, (v52 + 96));
    }

    v56 = showFunction(signature:_:)(0xD000000000000099, 0x8000000100348A40, v52);
    v58 = v57;

    sub_10000BD44(v35, &qword_1003A0178, &unk_1002C3BB0);
    (*(v37 + 8))(v41, v36);
    v59 = sub_100008F6C(v56, v58, &v151);

    *(v48 + 14) = v59;
    _os_log_impl(&_mh_execute_header, v45, v114, "%s.%s", v48, 0x16u);
    swift_arrayDestroy();

    a4 = v147;
  }

  else
  {

    sub_10000BD44(v35, &qword_1003A0178, &unk_1002C3BB0);
    (*(v37 + 8))(v41, v36);
  }

  sub_10000BE18(v148 + 23, v148[26]);
  if (sub_1000B100C(a4, 0.0))
  {
    v122 = a15;
    v113 = a13;
    if (a13)
    {
      ObjectType = swift_getObjectType();
      v61 = sub_10009CAF8(2, ObjectType);
      v63 = v62;

      v115 = v61;
      v61(0);
      v114 = v63;
    }

    else
    {
      v115 = 0;
      v114 = 0;
    }

    v112 = *(v148[38] + 56);
    os_unfair_lock_lock(v112 + 8);
    v74 = v121;
    v75 = *(v121 + 56);
    v76 = v116;
    v77 = v123;
    v75(v116, 1, 1, v123);
    v78 = v117;
    v75(v117, 1, 1, v77);
    v79 = v119;
    v75(v119, 1, 1, v77);
    v80 = *(v142 + 20);
    v75((v79 + v80), 1, 1, v77);
    sub_100082A14(v76, v79, &qword_10039E290, &unk_1002C37C0);
    sub_100082A14(v78, v79 + v80, &qword_10039E290, &unk_1002C37C0);
    v81 = v120;
    static DispatchTime.now()();
    sub_10000BD44(v79, &qword_10039E290, &unk_1002C37C0);
    (*(v74 + 32))(v79, v81, v77);
    v75(v79, 0, 1, v77);
    v82 = v126;
    sub_10008289C(v79, v126, type metadata accessor for StopWatch);
    (*(v118 + 56))(v82, 0, 1, v142);
    v83 = v112;
    sub_10002D278(v82, 0x637465464D414C53, 0xED0000656D695468);
    sub_100082008(v79, type metadata accessor for StopWatch);
    os_unfair_lock_unlock(v83 + 8);
    if (qword_10039D388 != -1)
    {
      swift_once();
    }

    v142 = a12;
    v123 = a11;
    v126 = a10;
    v121 = a9;
    v84 = type metadata accessor for OSSignposter();
    sub_10000403C(v84, qword_1003A0290);
    v85 = v132;
    static OSSignpostID.exclusive.getter();
    v86 = OSSignposter.logHandle.getter();
    v87 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      v89 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v86, v87, v89, "config-install-fetchSLAM", "begin fetch SLAM", v88, 2u);
    }

    v90 = v133;
    v91 = v134;
    (*(v133 + 16))(v131, v85, v134);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v92 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v90 + 8))(v85, v91);
    v93 = v148;
    v133 = v148[6];
    v132 = v148[7];
    v134 = sub_10000BE18(v148 + 3, v133);
    sub_100065074(v147, v145, &qword_1003A0178, &unk_1002C3BB0);
    v124(v144, v135, v143);
    v94 = (*(v128 + 80) + 48) & ~*(v128 + 80);
    v95 = v130;
    v96 = (v129 + *(v130 + 80) + v94) & ~*(v130 + 80);
    v97 = v96 + v127;
    v98 = (v96 + v127 + 9) & 0xFFFFFFFFFFFFFFF8;
    v99 = (v98 + 23) & 0xFFFFFFFFFFFFFFF8;
    v100 = swift_allocObject();
    *(v100 + 2) = v92;
    *(v100 + 3) = v93;
    v101 = v122;
    *(v100 + 4) = v146;
    *(v100 + 5) = v101;
    sub_1000829AC(v145, &v100[v94], &qword_1003A0178, &unk_1002C3BB0);
    (*(v95 + 32))(&v100[v96], v144, v143);
    v102 = &v100[v97];
    v103 = v136 & 1;
    *v102 = v103;
    v102[1] = v137 & 1;
    v104 = &v100[v98];
    v105 = v126;
    *v104 = v121;
    v104[1] = v105;
    v106 = &v100[v99];
    v107 = v142;
    *v106 = v123;
    v106[1] = v107;
    *&v100[(v99 + 23) & 0xFFFFFFFFFFFFFFF8] = v113;
    v108 = v132;
    v109 = *(v132 + 2);
    swift_unknownObjectRetain();

    v110 = v115;
    v111 = v114;
    v109(v138, v139, v140, v141, v103, v115, v114, sub_100081E50, v100, v133, v108);
    sub_1000048A0(v110, v111);
  }

  else
  {
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Not attested before OTA", v66, 2u);
    }

    v67 = sub_100020148(2029, 0, 0, 0);
    v68 = v148[38];
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = 4;
    *&v149 = v67;
    type metadata accessor for ConfigurationError(0);
    sub_100081B2C(&qword_10039DC00, type metadata accessor for ConfigurationError, &unk_1002BFB80);
    v70 = _BridgedStoredNSError.errorCode.getter();
    *(inited + 64) = &type metadata for Int;
    *(inited + 40) = v70;
    sub_100184144(inited);
    swift_setDeallocating();
    v71 = sub_10000BD44(inited + 32, &qword_10039FED8, &unk_1002C37D0);
    v72 = *(v68 + 56);
    __chkstk_darwin(v71);
    os_unfair_lock_lock((v72 + 32));
    sub_1000507B4((v72 + 16));
    os_unfair_lock_unlock((v72 + 32));

    v73 = v67;
    v146(0, v67);
  }
}

uint64_t sub_100066728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v40 = a5;
  v42 = a3;
  v43 = a4;
  v41 = a2;
  v39 = a1;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v34 - v10;
  v36 = dispatch_semaphore_create(0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v34[0] = v12 + 16;
  v13 = swift_allocObject();
  v45 = v13;
  *(v13 + 16) = 0;
  v34[1] = v13 + 16;
  v14 = swift_allocObject();
  v44 = v14;
  *(v14 + 16) = 0;
  v38 = v14 + 16;
  if (qword_10039D388 != -1)
  {
    swift_once();
  }

  v35 = v12;
  v15 = type metadata accessor for OSSignposter();
  sub_10000403C(v15, qword_1003A0290);
  static OSSignpostID.exclusive.getter();
  v16 = OSSignposter.logHandle.getter();
  v17 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v17, v19, "config-status-checkForRemoteUpdates", "begin check for remote updates", v18, 2u);
  }

  (*(v6 + 16))(v9, v11, v5);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v20 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v6 + 8))(v11, v5);
  v22 = v37[6];
  v21 = v37[7];
  v34[3] = sub_10000BE18(v37 + 3, v22);
  v23 = swift_allocObject();
  v25 = v35;
  v24 = v36;
  v23[2] = v20;
  v23[3] = v25;
  v26 = v45;
  v27 = v44;
  v23[4] = v45;
  v23[5] = v27;
  v23[6] = v24;
  v28 = *(v21 + 16);
  v37 = v20;

  v29 = v24;
  v28(v39, v41, v42, v43, v40 & 1, 0, 0, sub_100081C68, v23, v22, v21);

  OS_dispatch_semaphore.wait()();
  swift_beginAccess();
  if (*(v27 + 16))
  {
    swift_willThrow();
    swift_errorRetain();
  }

  else
  {

    swift_beginAccess();
    v31 = *(v25 + 16);
    swift_beginAccess();
    v32 = *(v26 + 16);

    if (v32)
    {
      v33 = 256;
    }

    else
    {
      v33 = 0;
    }

    return v33 | v31;
  }
}

uint64_t sub_100066B68()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A0278);
  sub_10000403C(v0, qword_1003A0278);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.configurator.getter();
}

uint64_t sub_100066BD4()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100003FD8(v0, qword_1003A0290);
  v1 = sub_10000403C(v0, qword_1003A0290);
  if (qword_10039D738 != -1)
  {
    swift_once();
  }

  v2 = sub_10000403C(v0, qword_1003A6EC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100066C9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = sub_100004074(&qword_1003A0558, &qword_1002C3EC8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10000BE18(a1, a1[3]);
  sub_100083270();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_1000430C8(&qword_10039FBD8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_100066E64()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_100066E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD00000000000001ALL && 0x8000000100348E50 == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000100348E70 == a2)
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

uint64_t sub_100066F7C(uint64_t a1)
{
  v2 = sub_100083270();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066FB8(uint64_t a1)
{
  v2 = sub_100083270();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100066FF4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100081084(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100067044(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    if (v2)
    {
      if (v3 && (sub_10015140C(v2, v3) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000670C0()
{
  v2 = v1;
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v20 - v8;
  if (qword_10039D388 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000403C(v10, qword_1003A0290);
  static OSSignpostID.exclusive.getter();
  v11 = OSSignposter.logHandle.getter();
  v12 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v13 = swift_slowAlloc();
    v20[1] = v0;
    v14 = v13;
    *v13 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "config-prepare-getCertificates", "begin get cert with chain", v14, 2u);
    v2 = v1;
  }

  (*(v4 + 16))(v7, v9, v3);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v16 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v4 + 8))(v9, v3);
  v17 = sub_1000675C8();
  if (v2)
  {
    sub_10006733C(v16);
  }

  else
  {
    v19 = v17;
    sub_10006733C(v16);

    return v19;
  }
}

uint64_t sub_10006733C(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D388 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000403C(v9, qword_1003A0290);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "end get cert with chain";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "config-prepare-getCertificates", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000675C8()
{
  v2 = v1;
  v72 = *v0;
  v76 = type metadata accessor for DecodingError();
  v74 = *(v76 - 8);
  v3 = __chkstk_darwin(v76);
  v73 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v75 = &v72 - v5;
  v6 = type metadata accessor for URLRequest();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v72 - v14;
  URL.appendingPathComponent(_:)();
  v80 = v10;
  v16 = v10;
  v17 = v8;
  v18 = *(v16 + 16);
  v77 = v15;
  v81 = v9;
  v18(v13, v15, v9);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  v19 = (v0 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_channel);
  v20 = 1;
  *&v21 = 138412290;
  v82 = v21;
  v83 = v8;
  while (1)
  {
    v22 = v20;
    v23 = v19[3];
    v24 = v19[4];
    sub_10000BE18(v19, v23);
    v25 = sub_10013C2A4(v17, 0, v23, v24);
    v86 = v2;
    if (!v2)
    {
      v27 = v25;
      v28 = v26;
      type metadata accessor for JSONDecoder();
      sub_10009A814(_swiftEmptyArrayStorage);
      sub_100081B74();
      static JSONDecoder.decodeClean<A>(_:from:userInfo:)();

      (*(v78 + 8))(v17, v79);
      (*(v80 + 8))(v77, v81);
      sub_100009548(v27, v28);
      return v87;
    }

    _s3__C4CodeOMa_12(0);
    v87 = 5006;
    swift_errorRetain();
    sub_100081B2C(&qword_10039D9B8, _s3__C4CodeOMa_12, &unk_1002BF188);
    v29 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v29)
    {

      v40 = 2034;
LABEL_16:
      sub_100020148(v40, 0, 0, 0);
      swift_willThrow();
      goto LABEL_17;
    }

    type metadata accessor for Code(0);
    v87 = 404;
    swift_errorRetain();
    sub_100081B2C(&qword_10039DF38, type metadata accessor for Code, &unk_1002C1438);
    v30 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v30)
    {

      v40 = 2032;
      goto LABEL_16;
    }

    v87 = v2;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    type metadata accessor for SPRHTTPError(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v31 = v88;
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000403C(v32, qword_1003A0278);
    v33 = v31;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = v82;
      v38 = v33;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&_mh_execute_header, v34, v35, "HTTP error when renewing certificates: %@", v36, 0xCu);
      sub_10000BD44(v37, &unk_10039E220, &qword_1002C3D60);

      v33 = v34;
      v34 = v38;
      v17 = v83;
    }

    v2 = 0;

    if (!v86)
    {
      sub_100009548(v84, v85);
    }

    v20 = 0;
    if ((v22 & 1) == 0)
    {
      sub_100020148(2000, 0xD000000000000019, 0x80000001003489B0, 0);
      swift_willThrow();
      (*(v78 + 8))(v17, v79);
      return (*(v80 + 8))(v77, v81);
    }
  }

  v87 = v2;
  swift_errorRetain();
  v41 = v75;
  v42 = v76;
  if (!swift_dynamicCast())
  {

    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_10000403C(v53, qword_1003A0278);
    swift_errorRetain();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *&v82 = swift_slowAlloc();
      v87 = v82;
      *v56 = 136315650;
      v57 = _typeName(_:qualified:)();
      v59 = sub_100008F6C(v57, v58, &v87);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2080;
      *(v56 + 14) = sub_100008F6C(0xD000000000000012, 0x8000000100348990, &v87);
      *(v56 + 22) = 2080;
      v88 = v2;
      swift_errorRetain();
      v60 = String.init<A>(describing:)();
      v62 = sub_100008F6C(v60, v61, &v87);
      v17 = v83;

      *(v56 + 24) = v62;
      _os_log_impl(&_mh_execute_header, v54, v55, "%s.%s: client error when renewing certificates: %s", v56, 0x20u);
      swift_arrayDestroy();
    }

    v87 = 5005;
    swift_errorRetain();
    v63 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v63 & 1) != 0 || (v87 = 5004, swift_errorRetain(), v64 = static _ErrorCodeProtocol.~= infix(_:_:)(), , (v64) || (v87 = 5003, swift_errorRetain(), v65 = static _ErrorCodeProtocol.~= infix(_:_:)(), , (v65))
    {
      swift_getErrorValue();
      v66 = Error.localizedDescription.getter();
      v68 = v67;
      v69 = 2000;
    }

    else
    {
      swift_getErrorValue();
      v66 = Error.localizedDescription.getter();
      v68 = v71;
      v69 = 2999;
    }

    sub_100020148(v69, v66, v68, 0);
    swift_willThrow();

LABEL_17:
    (*(v78 + 8))(v17, v79);
    result = (*(v80 + 8))(v77, v81);
    if (v86)
    {
      return result;
    }

    return sub_100009548(v84, v85);
  }

  v43 = v74;
  v44 = v73;
  (*(v74 + 32))(v73, v41, v42);
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_10000403C(v45, qword_1003A0278);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  v48 = os_log_type_enabled(v46, v47);
  v49 = v86;
  if (v48)
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "cannot decode server response", v50, 2u);
  }

  v51 = Error.localizedDescription.getter();
  sub_100020148(2025, v51, v52, 0);
  swift_willThrow();
  (*(v43 + 8))(v44, v42);
  (*(v78 + 8))(v17, v79);
  (*(v80 + 8))(v77, v81);

  if (!v49)
  {
    return sub_100009548(v84, v85);
  }

  return result;
}

uint64_t sub_1000681C4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v62 = a3;
  v63 = a8;
  v65 = a6;
  v66 = a7;
  LODWORD(v10) = a5;
  v61._countAndFlagsBits = a1;
  v61._object = a2;
  v12 = v9;
  v13 = *v9;
  v14 = type metadata accessor for URLRequest();
  v67 = *(v14 - 8);
  v68 = v14;
  __chkstk_darwin(v14);
  v16 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for URL();
  v70 = *(v17 - 8);
  v71 = v17;
  v18 = __chkstk_darwin(v17);
  v20 = &v58[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v69 = &v58[-v21];
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v60 = sub_10000403C(v22, qword_1003A0278);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v64 = v13;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v59 = v10;
    v10 = v26;
    v73[0].value._countAndFlagsBits = swift_slowAlloc();
    *v10 = 136315394;
    v27 = _typeName(_:qualified:)();
    v29 = v12;
    v30 = a4;
    v31 = sub_100008F6C(v27, v28, &v73[0].value._countAndFlagsBits);

    *(v10 + 4) = v31;
    *(v10 + 12) = 2080;
    v32 = showFunction(signature:_:)(0xD000000000000044, 0x80000001003488F0, _swiftEmptyArrayStorage);
    v34 = sub_100008F6C(v32, v33, &v73[0].value._countAndFlagsBits);
    a4 = v30;
    v12 = v29;

    *(v10 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();

    LOBYTE(v10) = v59;
  }

  v35 = v69;
  URL.appendingPathComponent(_:)();

  (*(v70 + 16))(v20, v35, v71);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  v73[0].value._countAndFlagsBits = 0x20726572616542;
  v73[0].value._object = 0xE700000000000000;
  String.append(_:)(v61);
  v36._object = 0x8000000100344E90;
  v36._countAndFlagsBits = 0xD000000000000015;
  URLRequest.setValue(_:forHTTPHeaderField:)(v73[0], v36);

  sub_1000094F4(v62, a4);
  URLRequest.httpBody.setter();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v73[0].value._countAndFlagsBits = v40;
    *v39 = 136315138;
    swift_beginAccess();
    v41 = sub_10009E644();
    v43 = sub_100008F6C(v41, v42, &v73[0].value._countAndFlagsBits);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "kernel manager request: %s", v39, 0xCu);
    sub_10000959C(v40);
  }

  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  v45 = *(v12 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_channel + 24);
  v46 = *(v12 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_channel + 32);
  sub_10000BE18((v12 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_channel), v45);
  swift_beginAccess();
  v47 = swift_allocObject();
  v62 = v44;
  *(v47 + 16) = v44;
  *(v47 + 24) = v10 & 1;
  v48 = v64;
  *(v47 + 32) = v63;
  *(v47 + 40) = a9;
  *(v47 + 48) = v12;
  *(v47 + 56) = v48;
  v49 = *(v46 + 32);

  v50 = v49(v16, 0, sub_10006963C, v47, v45, v46);

  v72 = v50;
  swift_getKeyPath();
  v51 = swift_allocObject();
  v52 = v65;
  v53 = v66;
  *(v51 + 16) = v65;
  *(v51 + 24) = v53;
  sub_1000696D8(v52, v53);
  v54 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  swift_beginAccess();
  v55 = *(v44 + 16);
  *(v44 + 16) = v54;

  [v50 resume];
  (*(v70 + 8))(v69, v71);
  v56 = *(v12 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_otaTask);
  *(v12 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_otaTask) = v50;

  return (*(v67 + 8))(v16, v68);
}

void sub_1000688BC(uint64_t a1, void *a2, uint64_t a3, int a4, void (*a5)(void, void), uint64_t a6, uint64_t a7)
{
  v66 = a4;
  v13 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  __chkstk_darwin(v13 - 8);
  v15 = v63 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v71 = v16;
  v72 = v17;
  v18 = __chkstk_darwin(v16);
  v69 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = v63 - v21;
  __chkstk_darwin(v20);
  v24 = v63 - v23;
  swift_beginAccess();
  v25 = *(a3 + 16);
  if (v25)
  {
    v26 = v25;
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  sub_100065074(a1, v15, &qword_1003A03D0, &unk_1002C3D50);
  v28 = v71;
  v27 = v72;
  if ((v72[6])(v15, 1, v71) == 1)
  {
    sub_10000BD44(v15, &qword_1003A03D0, &unk_1002C3D50);
    if (a2)
    {
      swift_errorRetain();
      if (qword_10039D380 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000403C(v29, qword_1003A0278);
      swift_errorRetain();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v76[0] = v72;
        *v32 = 136446210;
        v75[0] = a2;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v33 = String.init<A>(describing:)();
        v35 = a5;
        v36 = sub_100008F6C(v33, v34, v76);

        *(v32 + 4) = v36;
        a5 = v35;
        _os_log_impl(&_mh_execute_header, v30, v31, "OTA client error: %{public}s", v32, 0xCu);
        sub_10000959C(v72);
      }

      v76[0] = a2;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      type metadata accessor for SPRHTTPError(0);
      if (swift_dynamicCast())
      {
        v37 = v75[0];
        v38 = sub_100081614(v75[0]);

        v39 = v38;
      }

      else
      {

        _s3__C4CodeOMa_12(0);
        v76[0] = 5008;
        swift_errorRetain();
        sub_100081B2C(&qword_10039D9B8, _s3__C4CodeOMa_12, &unk_1002BF188);
        v59 = static _ErrorCodeProtocol.~= infix(_:_:)();

        if (v59)
        {
          v39 = sub_100020148(2040, 0, 0, 0);
        }

        else
        {
          swift_errorRetain();
          v60 = sub_100020148(2000, 0, 0, a2);

          v61 = *sub_10000BE18((a7 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_launchFeedbackFramework), *(a7 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_launchFeedbackFramework + 24));
          v39 = v60;
          sub_10013F4E4(v39, v61);
        }
      }

      sub_100081054(v75);
      memcpy(v76, v75, 0x111uLL);
      a5(v76, v39);
    }
  }

  else
  {
    v68 = a6;
    (v27[4])(v24, v15, v28);
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    v41 = sub_10000403C(v40, qword_1003A0278);
    v42 = v27[2];
    v67 = v24;
    v64 = v42;
    v42(v22, v24, v28);
    v43 = v27;
    v63[1] = v41;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    v46 = os_log_type_enabled(v44, v45);
    v65 = a7;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v63[0] = swift_slowAlloc();
      v76[0] = v63[0];
      *v47 = 136315138;
      sub_100081B2C(&qword_1003A3C40, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = a5;
      v51 = v50;
      v70 = v43[1];
      v70(v22, v71);
      v52 = sub_100008F6C(v48, v51, v76);
      a5 = v49;

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v44, v45, "using streaming type custom decoder: %s", v47, 0xCu);
      sub_10000959C(v63[0]);

      v28 = v71;
    }

    else
    {

      v70 = v27[1];
      v70(v22, v28);
    }

    v53 = v69;
    v54 = v67;
    v64(v69, v67, v28);
    type metadata accessor for KCSOTAResponseParser();
    v55 = swift_allocObject();
    v56 = Data.init(contentsOf:options:)();
    v58 = v57;
    v70(v53, v28);
    *(v55 + 16) = v56;
    *(v55 + 24) = v58;
    sub_1000864B8(v66 & 1, v75);
    memcpy(v74, v75, sizeof(v74));
    nullsub_1();
    memcpy(v76, v74, 0x111uLL);
    sub_100081A7C(v75, &v73);
    a5(v76, 0);
    sub_100081AD8(v75);

    sub_100081AD8(v75);
    a7 = v65;
    v70(v54, v28);
  }

  v62 = *(a7 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_otaTask);
  *(a7 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_otaTask) = 0;
}

uint64_t sub_1000692B4(id *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  result = [*a1 countOfBytesReceived];
  v6 = 100 * result;
  if ((result * 100) >> 64 != (100 * result) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  result = [v4 countOfBytesExpectedToReceive];
  if (!a3)
  {
    return result;
  }

  v7 = ceil(v6 / result);
  if (v7 <= 100.0)
  {
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v7 > -9.22337204e18)
      {
        if (v7 < 9.22337204e18)
        {
          v8 = v7;
          return a3(v8);
        }

LABEL_14:
        __break(1u);
        return result;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = 100;
  return a3(v8);
}

uint64_t sub_100069398()
{
  v1 = OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_configuratorUrl;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000959C((v0 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_channel));
  sub_10000959C((v0 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_launchFeedbackFramework));

  return swift_deallocClassInstance();
}

uint64_t sub_10006948C(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_100069530()
{
  result = sub_1000670C0();
  if (v0)
  {
    return v2;
  }

  return result;
}

id sub_100069598()
{
  result = *(*v0 + OBJC_IVAR____TtC14softposreaderd19ConfiguratorBackend_otaTask);
  if (result)
  {
    return [result cancel];
  }

  return result;
}

uint64_t sub_1000695BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000695F4()
{

  return _swift_deallocObject(v0, 64, 7);
}

id sub_10006965C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 countOfBytesReceived];
  *a2 = result;
  return result;
}

uint64_t sub_100069690()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000696D8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1000696E8(void *__src, uint64_t a2, uint64_t a3, void *a4, void (*a5)(id, uint64_t), uint64_t a6, os_unfair_lock_s **a7, char *a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15)
{
  v162 = a8;
  v166 = a7;
  v170 = a6;
  v171 = a5;
  v173 = a4;
  v169 = __src;
  memcpy(v181, __src, sizeof(v181));
  v161 = _s14InstallPackageVMa(0);
  __chkstk_darwin(v161);
  v165 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OSSignpostError();
  v167 = *(v17 - 8);
  v168 = v17;
  v18 = __chkstk_darwin(v17);
  v159 = &v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v149 - v20;
  v172 = type metadata accessor for OSSignpostID();
  v22 = *(v172 - 8);
  v23 = __chkstk_darwin(v172);
  v160 = &v149 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v163 = &v149 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v149 - v28;
  __chkstk_darwin(v27);
  v31 = &v149 - v30;
  if (qword_10039D388 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for OSSignposter();
  v164 = sub_10000403C(v32, qword_1003A0290);
  v33 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v34 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v36 = v167;
    v35 = v168;
    if ((*(v167 + 88))(v21, v168) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v37 = "[Error] Interval already ended";
    }

    else
    {
      (*(v36 + 8))(v21, v35);
      v37 = "end fetch SLAM";
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, v34, v39, "config-install-fetchSLAM", v37, v38, 2u);
  }

  v40 = *(v22 + 8);
  v41 = v31;
  v42 = v172;
  v40(v41, v172);
  if (a2)
  {
    swift_errorRetain();
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000403C(v43, qword_1003A0278);
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v180[0] = v47;
      *v46 = 136446210;
      v179[0] = a2;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v48 = String.init<A>(describing:)();
      v50 = sub_100008F6C(v48, v49, v180);

      *(v46 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "OTA client error: %{public}s", v46, 0xCu);
      sub_10000959C(v47);
    }

    v51 = _convertErrorToNSError(_:)();
    v52 = [v51 userInfo];
    v53 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v53 + 16))
    {
      v56 = sub_1000F5A28(v54, v55);
      v58 = v57;

      if (v58)
      {
        sub_10000BDA4(*(v53 + 56) + 32 * v56, v180);

        type metadata accessor for SPRHTTPError(0);
        v59 = swift_dynamicCast();
        v60 = v173;
        if (v59)
        {
          v61 = v179[0];
        }

        else
        {
          v61 = 0;
        }

LABEL_25:
        v76 = v60[38];
        sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_1002C1790;
        *(v77 + 32) = 4;
        v78 = [v51 code];
        *(v77 + 64) = &type metadata for Int;
        *(v77 + 40) = v78;
        *(v77 + 72) = 6;
        v173 = v61;
        if (v61)
        {
          v180[0] = v61;
          type metadata accessor for SPRHTTPError(0);
          sub_100081B2C(&qword_10039DF50, type metadata accessor for SPRHTTPError, &unk_1002C13CC);
          v79 = v76;
          v80 = a2;
          v81 = v51;
          v82 = v61;
          v83 = _BridgedStoredNSError.errorCode.getter();
          *(v77 + 104) = &type metadata for Int;
          *(v77 + 80) = v83;

          *(v77 + 112) = 7;
          v84 = v82;
          v85 = related decl 'e' for SPRHTTPErrorCode.serverCode.getter();
          v87 = v86;

          v51 = v81;
          a2 = v80;
          v76 = v79;
          if (v87)
          {
            *(v77 + 144) = &type metadata for String;
            *(v77 + 120) = v85;
            *(v77 + 128) = v87;
LABEL_30:
            sub_100184144(v77);
            swift_setDeallocating();
            sub_100004074(&qword_10039FED8, &unk_1002C37D0);
            swift_arrayDestroy();
            v88 = swift_deallocClassInstance();
            v89 = *(v76 + 56);
            __chkstk_darwin(v88);
            os_unfair_lock_lock((v89 + 32));
            sub_10006535C((v89 + 16));
            os_unfair_lock_unlock((v89 + 32));

            swift_errorRetain();
            v171(0, a2);

            return;
          }
        }

        else
        {
          *(v77 + 80) = 0u;
          *(v77 + 96) = 0u;
          *(v77 + 112) = 7;
        }

        *(v77 + 120) = 0;
        *(v77 + 128) = 0;
        *(v77 + 136) = 0;
        *(v77 + 144) = 0;
        goto LABEL_30;
      }
    }

    else
    {
    }

    v61 = 0;
    v60 = v173;
    goto LABEL_25;
  }

  v62 = v169;
  memcpy(v179, v169, 0x111uLL);
  v63 = sub_100081C78(v179);
  v64 = v173;
  if (v63 == 1)
  {
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_10000403C(v65, qword_1003A0278);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "no response from server", v68, 2u);
    }

    v69 = sub_100020148(2000, 0, 0, 0);
    v70 = v64[38];
    sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1002C1660;
    *(v71 + 32) = 4;
    v180[0] = v69;
    type metadata accessor for ConfigurationError(0);
    sub_100081B2C(&qword_10039DC00, type metadata accessor for ConfigurationError, &unk_1002BFB80);
    v72 = _BridgedStoredNSError.errorCode.getter();
    *(v71 + 64) = &type metadata for Int;
    *(v71 + 40) = v72;
    sub_100184144(v71);
    swift_setDeallocating();
    sub_10000BD44(v71 + 32, &qword_10039FED8, &unk_1002C37D0);
    v73 = swift_deallocClassInstance();
    v74 = *(v70 + 56);
    __chkstk_darwin(v73);
    os_unfair_lock_lock((v74 + 32));
    sub_10006535C((v74 + 16));
    os_unfair_lock_unlock((v74 + 32));

    v75 = v69;
    v171(0, v69);
  }

  else
  {
    v157 = v40;
    memcpy(v180, v179, 0x111uLL);
    memcpy(v177, v181, 0x111uLL);
    sub_100081A7C(v177, v176);
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    v91 = sub_10000403C(v90, qword_1003A0278);
    memcpy(v178, v181, 0x111uLL);
    sub_100081A7C(v178, v176);
    v158 = v91;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();
    sub_10000BD44(v62, &qword_1003A03E0, &qword_1002C3D68);
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v175 = v95;
      *v94 = 136315138;
      memcpy(v176, v181, 0x111uLL);
      sub_100081A7C(v176, &v174);
      sub_100086EEC();
      v97 = v96;
      v99 = v98;
      sub_10000BD44(v169, &qword_1003A03E0, &qword_1002C3D68);
      v100 = sub_100008F6C(v97, v99, &v175);
      v62 = v169;

      *(v94 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v92, v93, "%s", v94, 0xCu);
      sub_10000959C(v95);
      v42 = v172;

      v64 = v173;
    }

    sub_10000BE18(v64 + 23, v64[26]);
    if (sub_1000B100C(v166, 0.0))
    {
      v156 = v64[38];
      v101 = *(v156 + 56);
      os_unfair_lock_lock(v101 + 8);
      sub_10011CF8C(&v101[4], 0);
      os_unfair_lock_unlock(v101 + 8);
      static OSSignpostID.exclusive.getter();
      v102 = OSSignposter.logHandle.getter();
      v103 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        v105 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v102, v103, v105, "config-install-validateSLAM", "begin validate and persist SLAM", v104, 2u);
        v42 = v172;
      }

      (*(v22 + 16))(v163, v29, v42);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v106 = OSSignpostIntervalState.init(id:isOpen:)();
      v157(v29, v42);
      v107 = v173;
      sub_10006B17C(v180, v165);
      v163 = a14;
      v155 = a13;
      v154 = a12;
      v153 = a11;
      v152 = a9;
      v118 = v107[36];
      v150 = v107[37];
      sub_10000BE18(v107 + 33, v118);
      sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
      v119 = swift_allocObject();
      v151 = xmmword_1002C1660;
      *(v119 + 16) = xmmword_1002C1660;
      *(v119 + 32) = 1684631668;
      *(v119 + 40) = 0xE400000000000000;
      v120 = UUID.uuidString.getter();
      *(v119 + 72) = &type metadata for String;
      *(v119 + 80) = &protocol witness table for String;
      *(v119 + 48) = v120;
      *(v119 + 56) = v121;
      v122 = sub_100184010(v119);
      swift_setDeallocating();
      sub_10000BD44(v119 + 32, &qword_10039FEC8, &unk_1002C37B0);
      swift_deallocClassInstance();
      sub_1000C2288(0x10u, v122, v118, v150);

      v123 = OSSignposter.logHandle.getter();
      v124 = v106;
      v125 = v160;
      v164 = v124;
      OSSignpostIntervalState.signpostID.getter();
      v126 = static os_signpost_type_t.end.getter();
      v127 = OS_os_log.signpostsEnabled.getter();
      if (v127)
      {

        v128 = v159;
        checkForErrorAndConsumeState(state:)();

        v130 = v167;
        v129 = v168;
        if ((*(v167 + 88))(v128, v168) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v131 = "[Error] Interval already ended";
        }

        else
        {
          (*(v130 + 8))(v128, v129);
          v131 = "end validate and persist SLAM";
        }

        v132 = swift_slowAlloc();
        *v132 = 0;
        v133 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v123, v126, v133, "config-install-validateSLAM", v131, v132, 2u);
      }

      v157(v125, v172);
      sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
      v134 = swift_allocObject();
      *(v134 + 16) = v151;
      *(v134 + 32) = 0;
      v135 = v165;
      v136 = sub_100055298();
      *(v134 + 64) = &type metadata for String;
      *(v134 + 40) = v136;
      *(v134 + 48) = v137;
      sub_100184144(v134);
      swift_setDeallocating();
      sub_10000BD44(v134 + 32, &qword_10039FED8, &unk_1002C37D0);
      v138 = swift_deallocClassInstance();
      v139 = *(v156 + 56);
      __chkstk_darwin(v138);
      os_unfair_lock_lock((v139 + 32));
      sub_10006535C((v139 + 16));
      os_unfair_lock_unlock((v139 + 32));

      if (v152)
      {
        sub_100071DB4(v135, v162, v166, a10 & 1, v153, v154, v155, v163, a15);
      }

      else
      {
        sub_100075824(v135, v162, v166, a10 & 1, v153, v154, v155, v163, a15);
      }

      v141 = v140;
      v142 = sub_100055298();
      sub_100024864(v142, v143, 40);

      v171(v141, 0);

      sub_100004074(&qword_1003A03E8, &qword_1002C3D80);
      v172 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
      v144 = *(*(v172 - 8) + 72);
      v145 = (*(*(v172 - 8) + 80) + 32) & ~*(*(v172 - 8) + 80);
      v146 = swift_allocObject();
      *(v146 + 16) = xmmword_1002C1690;
      v147 = v146 + v145;
      v148 = v161;
      sub_100065074(v135 + *(v161 + 20), v147, &qword_1003A03F0, &qword_1002C3D88);
      sub_100065074(v135 + v148[6], v147 + v144, &qword_1003A03F0, &qword_1002C3D88);
      sub_100065074(v135 + v148[7], v147 + 2 * v144, &qword_1003A03F0, &qword_1002C3D88);
      sub_100065074(v135 + v148[8], v147 + 3 * v144, &qword_1003A03F0, &qword_1002C3D88);
      sub_1000792D4(v146);
      sub_10000BD44(v169, &qword_1003A03E0, &qword_1002C3D68);

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_100082008(v135, _s14InstallPackageVMa);
    }

    else
    {
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 0;
        _os_log_impl(&_mh_execute_header, v108, v109, "Not attested after OTA response", v110, 2u);
      }

      v111 = sub_100020148(2029, 0, 0, 0);
      v112 = v64[38];
      sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_1002C1660;
      *(v113 + 32) = 4;
      v176[0] = v111;
      type metadata accessor for ConfigurationError(0);
      sub_100081B2C(&qword_10039DC00, type metadata accessor for ConfigurationError, &unk_1002BFB80);
      v114 = _BridgedStoredNSError.errorCode.getter();
      *(v113 + 64) = &type metadata for Int;
      *(v113 + 40) = v114;
      sub_100184144(v113);
      swift_setDeallocating();
      sub_10000BD44(v113 + 32, &qword_10039FED8, &unk_1002C37D0);
      v115 = swift_deallocClassInstance();
      v116 = *(v112 + 56);
      __chkstk_darwin(v115);
      os_unfair_lock_lock((v116 + 32));
      sub_10006535C((v116 + 16));
      os_unfair_lock_unlock((v116 + 32));

      v117 = v111;
      v171(0, v111);

      sub_10000BD44(v62, &qword_1003A03E0, &qword_1002C3D68);
    }
  }
}

void sub_10006B17C(unint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v996 = a1;
  v913 = a2;
  v991 = *v2;
  v4 = type metadata accessor for URL();
  v959 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v912 = &v893 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v915 = &v893 - v8;
  v9 = __chkstk_darwin(v7);
  v932 = (&v893 - v10);
  v11 = __chkstk_darwin(v9);
  v931 = (&v893 - v12);
  v13 = __chkstk_darwin(v11);
  v945 = &v893 - v14;
  v15 = __chkstk_darwin(v13);
  v947 = &v893 - v16;
  v17 = __chkstk_darwin(v15);
  v952 = &v893 - v18;
  v19 = __chkstk_darwin(v17);
  v896 = &v893 - v20;
  v21 = __chkstk_darwin(v19);
  v929 = &v893 - v22;
  v23 = __chkstk_darwin(v21);
  v942 = &v893 - v24;
  v25 = __chkstk_darwin(v23);
  v927 = &v893 - v26;
  v27 = __chkstk_darwin(v25);
  v940 = &v893 - v28;
  v29 = __chkstk_darwin(v27);
  v943 = &v893 - v30;
  v31 = __chkstk_darwin(v29);
  v948 = &v893 - v32;
  v33 = __chkstk_darwin(v31);
  v969 = &v893 - v34;
  v35 = __chkstk_darwin(v33);
  v978 = &v893 - v36;
  __chkstk_darwin(v35);
  v977 = (&v893 - v37);
  v38 = type metadata accessor for SLAMScript(0);
  v993 = *(v38 - 8);
  v39 = __chkstk_darwin(v38);
  v895 = &v893 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v893 = &v893 - v42;
  v43 = __chkstk_darwin(v41);
  v954 = &v893 - v44;
  v45 = __chkstk_darwin(v43);
  v897 = &v893 - v46;
  v47 = __chkstk_darwin(v45);
  v894 = &v893 - v48;
  v49 = __chkstk_darwin(v47);
  v956 = &v893 - v50;
  v51 = __chkstk_darwin(v49);
  v917 = &v893 - v52;
  v53 = __chkstk_darwin(v51);
  v905 = &v893 - v54;
  v55 = __chkstk_darwin(v53);
  v973 = &v893 - v56;
  v57 = __chkstk_darwin(v55);
  v938 = &v893 - v58;
  v59 = __chkstk_darwin(v57);
  v925 = &v893 - v60;
  v61 = __chkstk_darwin(v59);
  v987 = &v893 - v62;
  v63 = __chkstk_darwin(v61);
  v903 = &v893 - v64;
  v65 = __chkstk_darwin(v63);
  v933 = &v893 - v66;
  v67 = __chkstk_darwin(v65);
  v919 = &v893 - v68;
  v69 = __chkstk_darwin(v67);
  v984 = &v893 - v70;
  v71 = __chkstk_darwin(v69);
  v975 = (&v893 - v72);
  v73 = __chkstk_darwin(v71);
  v962 = &v893 - v74;
  __chkstk_darwin(v73);
  v974 = &v893 - v75;
  v76 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
  v950 = *(v76 - 8);
  v951 = v76;
  v77 = __chkstk_darwin(v76);
  v949 = &v893 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __chkstk_darwin(v77);
  v955 = &v893 - v80;
  v81 = __chkstk_darwin(v79);
  v953 = &v893 - v82;
  v83 = __chkstk_darwin(v81);
  v957 = &v893 - v84;
  v85 = __chkstk_darwin(v83);
  v972 = &v893 - v86;
  v87 = __chkstk_darwin(v85);
  v971 = &v893 - v88;
  v89 = __chkstk_darwin(v87);
  v986 = (&v893 - v90);
  v91 = __chkstk_darwin(v89);
  v985 = (&v893 - v92);
  v93 = __chkstk_darwin(v91);
  v924 = &v893 - v94;
  v95 = __chkstk_darwin(v93);
  v936 = (&v893 - v96);
  v97 = __chkstk_darwin(v95);
  v935 = (&v893 - v98);
  v99 = __chkstk_darwin(v97);
  v934 = &v893 - v100;
  v101 = __chkstk_darwin(v99);
  v916 = &v893 - v102;
  v103 = __chkstk_darwin(v101);
  v914 = &v893 - v104;
  v105 = __chkstk_darwin(v103);
  v937 = &v893 - v106;
  v107 = __chkstk_darwin(v105);
  v946 = &v893 - v108;
  v109 = __chkstk_darwin(v107);
  v958 = &v893 - v110;
  v111 = __chkstk_darwin(v109);
  v960 = &v893 - v112;
  v113 = __chkstk_darwin(v111);
  v961 = &v893 - v114;
  v115 = __chkstk_darwin(v113);
  v967 = &v893 - v116;
  v117 = __chkstk_darwin(v115);
  v899 = &v893 - v118;
  v119 = __chkstk_darwin(v117);
  v910 = &v893 - v120;
  v121 = __chkstk_darwin(v119);
  v909 = &v893 - v122;
  v123 = __chkstk_darwin(v121);
  v908 = &v893 - v124;
  v125 = __chkstk_darwin(v123);
  v902 = &v893 - v126;
  v127 = __chkstk_darwin(v125);
  v920 = &v893 - v128;
  v129 = __chkstk_darwin(v127);
  v928 = &v893 - v130;
  v131 = __chkstk_darwin(v129);
  v926 = &v893 - v132;
  v133 = __chkstk_darwin(v131);
  v941 = &v893 - v134;
  v135 = __chkstk_darwin(v133);
  v983 = (&v893 - v136);
  v137 = __chkstk_darwin(v135);
  v982 = &v893 - v138;
  v139 = __chkstk_darwin(v137);
  v963 = &v893 - v140;
  v141 = __chkstk_darwin(v139);
  v968 = &v893 - v142;
  v143 = __chkstk_darwin(v141);
  v965 = &v893 - v144;
  __chkstk_darwin(v143);
  v966 = &v893 - v145;
  v998 = type metadata accessor for UUID();
  v146 = *(v998 - 8);
  v147 = __chkstk_darwin(v998);
  v923 = &v893 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __chkstk_darwin(v147);
  v922 = &v893 - v150;
  v151 = __chkstk_darwin(v149);
  v901 = &v893 - v152;
  v153 = __chkstk_darwin(v151);
  v911 = &v893 - v154;
  v155 = __chkstk_darwin(v153);
  *&v930 = &v893 - v156;
  v157 = __chkstk_darwin(v155);
  v944 = &v893 - v158;
  v159 = __chkstk_darwin(v157);
  v970 = &v893 - v160;
  v161 = __chkstk_darwin(v159);
  v989 = &v893 - v162;
  v163 = __chkstk_darwin(v161);
  v898 = &v893 - v164;
  v165 = __chkstk_darwin(v163);
  v907 = &v893 - v166;
  v167 = __chkstk_darwin(v165);
  v900 = &v893 - v168;
  v169 = __chkstk_darwin(v167);
  v904 = &v893 - v170;
  v171 = __chkstk_darwin(v169);
  v918 = &v893 - v172;
  v173 = __chkstk_darwin(v171);
  v939 = &v893 - v174;
  v175 = __chkstk_darwin(v173);
  v964 = &v893 - v176;
  v177 = __chkstk_darwin(v175);
  v976 = (&v893 - v178);
  __chkstk_darwin(v177);
  v988 = &v893 - v179;
  v180 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v181 = __chkstk_darwin(v180 - 8);
  *&v921 = &v893 - ((v182 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = __chkstk_darwin(v181);
  v980 = (&v893 - v184);
  v185 = __chkstk_darwin(v183);
  v187 = &v893 - v186;
  v188 = __chkstk_darwin(v185);
  v995 = (&v893 - v189);
  v190 = __chkstk_darwin(v188);
  v1000 = &v893 - v191;
  v192 = __chkstk_darwin(v190);
  v1002 = &v893 - v193;
  v194 = __chkstk_darwin(v192);
  v906 = &v893 - v195;
  v196 = __chkstk_darwin(v194);
  v979 = &v893 - v197;
  v198 = __chkstk_darwin(v196);
  v200 = &v893 - v199;
  v201 = __chkstk_darwin(v198);
  v994 = &v893 - v202;
  v203 = __chkstk_darwin(v201);
  v999 = &v893 - v204;
  __chkstk_darwin(v203);
  v1001 = &v893 - v205;
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v206 = type metadata accessor for Logger();
  v1003 = sub_10000403C(v206, qword_1003A0278);
  v207 = Logger.logObject.getter();
  v208 = static os_log_type_t.debug.getter();
  v209 = os_log_type_enabled(v207, v208);
  v1021 = v3;
  v992 = v38;
  v997 = v146;
  v981 = v4;
  if (v209)
  {
    v210 = swift_slowAlloc();
    v1006[0] = swift_slowAlloc();
    *v210 = 136315394;
    v211 = _typeName(_:qualified:)();
    v213 = sub_100008F6C(v211, v212, v1006);

    *(v210 + 4) = v213;
    *(v210 + 12) = 2080;
    v214 = showFunction(signature:_:)(0xD000000000000023, 0x8000000100348DD0, _swiftEmptyArrayStorage);
    v216 = sub_100008F6C(v214, v215, v1006);

    *(v210 + 14) = v216;
    v146 = v997;
    _os_log_impl(&_mh_execute_header, v207, v208, "%s.%s", v210, 0x16u);
    swift_arrayDestroy();
  }

  v217 = v996;
  if (*(v996 + 272))
  {
    v218 = Logger.logObject.getter();
    v219 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v218, v219))
    {
      v220 = swift_slowAlloc();
      *v220 = 0;
      _os_log_impl(&_mh_execute_header, v218, v219, "using legacy flow for persistDownloadedScripts", v220, 2u);
    }

    if (*(v217 + 32))
    {
      v221 = v187;
      v222 = *(v217 + 48);
      v985 = *(v217 + 40);
      v987 = v222;
      UUID.init(uuidString:)();
      v223 = *(v217 + 112);
      v983 = *(v217 + 104);
      v984 = v223;
      v224 = *(v217 + 136);
      v1007 = *(v217 + 120);
      v1008[0] = v224;
      *(v1008 + 9) = *(v217 + 145);
      UUID.init(uuidString:)();
      v226 = *(v217 + 176);
      v225 = *(v217 + 184);
      v227 = *(v217 + 200);
      v982 = *(v217 + 192);
      v1001 = v227;
      v228 = *(v217 + 216);
      v991 = *(v217 + 208);
      v994 = v228;
      v229 = *(v217 + 224);
      v999 = *(v217 + 232);
      LODWORD(v986) = *(v217 + 240);
      v979 = v225;
      v988 = v226;
      if (v226)
      {
      }

      v240 = v1021;
      UUID.init(uuidString:)();

      sub_100065074(v1002, v187, &qword_1003A0178, &unk_1002C3BB0);
      v241 = v997;
      v242 = *(v997 + 48);
      v243 = v998;
      if (v242(v221, 1, v998) == 1)
      {
        sub_10000BD44(v221, &qword_1003A0178, &unk_1002C3BB0);
LABEL_36:
        v280 = Logger.logObject.getter();
        v281 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v280, v281))
        {
          v282 = swift_slowAlloc();
          *v282 = 0;
          _os_log_impl(&_mh_execute_header, v280, v281, "malformed response from backend", v282, 2u);
        }

        v283 = sub_10000BE18((v240 + 480), *(v240 + 504));
        v284 = sub_100020148(2027, 0, 0, 0);
        sub_10013F4E4(v284, *v283);

        sub_100020148(2027, 0, 0, 0);
        swift_willThrow();
        sub_10000BD44(v995, &qword_1003A0178, &unk_1002C3BB0);
        sub_10000BD44(v1000, &qword_1003A0178, &unk_1002C3BB0);
        v285 = v1002;
LABEL_50:
        sub_10000BD44(v285, &qword_1003A0178, &unk_1002C3BB0);
        return;
      }

      v978 = v229;
      v244 = *(v241 + 32);
      v245 = v989;
      v244(v989, v221, v243);
      v246 = v980;
      sub_100065074(v1000, v980, &qword_1003A0178, &unk_1002C3BB0);
      if (v242(v246, 1, v243) == 1)
      {
        (*(v241 + 8))(v245, v243);
        sub_10000BD44(v246, &qword_1003A0178, &unk_1002C3BB0);
LABEL_35:
        v240 = v1021;
        goto LABEL_36;
      }

      v253 = v970;
      v244(v970, v246, v243);
      v1009 = v1007;
      v1010[0] = v1008[0];
      *(v1010 + 9) = *(v1008 + 9);
      sub_100065074(&v1009, v1006, &qword_1003A0428, &qword_1002C3DD0);
      if ((sub_100082354(&v1009) & 1) == 0 || ((object = v988) == 0 ? (v257 = 0, v258 = 0, v260 = 0, v261 = 0, v263 = 0, v256 = 1, v264 = v992, v265 = v967, v259 = v978, v255 = v1001, v262 = v986) : (v255 = v1001, v256 = v1001, v257 = v991, v258 = v994, v259 = v978, v260 = v978, v261 = v999, v262 = v986, v263 = v986, v264 = v992, v265 = v967), v1017[0] = v256, v1017[1] = v257, v1017[2] = v258, v1017[3] = v260, v1017[4] = v261, v1018 = v263, (sub_100082354(v1017) & 1) == 0))
      {
        sub_10000BD44(&v1009, &qword_1003A0428, &qword_1002C3DD0);
        v279 = *(v997 + 8);
        v279(v253, v243);
        v279(v989, v243);
        goto LABEL_35;
      }

      if (object)
      {
        v1004[0] = v262;
        if (v255 != 1)
        {
          v277 = v259;
          v278 = v999;
          sub_100082A7C(v255, v991, v994, v277);
          v999 = sub_100082610(v278, v262 & 1);
          v1004[0] = 0;
        }
      }

      else
      {
        v991 = 0;
        v994 = 0;
        v978 = 0;
        v999 = 0;
        v1004[0] = 0;
        v255 = 1;
      }

      v1001 = v255;
      v293 = v993 + 56;
      v292 = *(v993 + 56);
      v294 = 1;
      (v292)(v265, 1, 1, v264);
      (v292)(v961, 1, 1, v264);
      (v292)(v960, 1, 1, v264);
      (v292)(v958, 1, 1, v264);
      v1005[0] = 1;
      v295 = v987;
      v980 = v293;
      v986 = v292;
      if (v987 >> 60 == 15)
      {
        while (1)
        {
          v296 = 1;
          v297 = v946;
          (v292)(v946, v294, 1, v264);
          v298 = v297;
          v299 = v967;
          sub_100082A14(v298, v967, &qword_1003A03F0, &qword_1002C3D88);
          v300 = *(v996 + 16);
          if (v300 >> 60 == 15)
          {
            break;
          }

          v458 = *(v996 + 8);
          v459 = objc_opt_self();
          sub_1000094F4(v458, v300);
          v460 = [v459 defaultManager];
          v461 = [v460 temporaryDirectory];

          static URL._unconditionallyBridgeFromObjectiveC(_:)();
          v462 = v930;
          UUID.init()();
          UUID.uuidString.getter();
          v464 = v463;
          v465 = *(v997 + 8);
          v985 = (v997 + 8);
          v977 = v465;
          (v465)(v462, v998);
          v466 = v969;
          v987 = v464;
          URL.appendingPathComponent(_:)();
          v467 = v931;
          URL.appendingPathExtension(_:)();
          v469 = (v959 + 8);
          v468 = *(v959 + 8);
          v468(v466, v981);
          sub_100004074(&qword_1003A0440, &qword_1002C3DE8);
          v470 = swift_allocObject();
          *(v470 + 16) = xmmword_1002C1660;
          v996 = v300;
          *(v470 + 32) = NSFileProtectionKey;
          type metadata accessor for FileProtectionType(0);
          *(v470 + 64) = v471;
          *(v470 + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
          v472 = NSFileProtectionKey;
          v473 = NSFileProtectionCompleteUntilFirstUserAuthentication;
          v474 = sub_1001845BC(v470);
          swift_setDeallocating();
          v475 = v996;
          sub_10000BD44(v470 + 32, &qword_1003A0448, &qword_1002C3DF0);
          swift_deallocClassInstance();
          v476 = v990;
          sub_1000833FC(v467, v474, v458, v475);
          if (v476)
          {
            v990 = v476;
            v477 = v467;
            v478 = v981;
            v468(v477, v981);

            v524 = v998;
            v525 = v967;
            v526 = v989;
LABEL_115:
            v468(v945, v478);

            sub_10001A074(v458, v475);
            sub_10000BD44(&v1009, &qword_1003A0428, &qword_1002C3DD0);
            v527 = v961;
            v528 = v960;
            v529 = v958;
            sub_10007AA54(v1005, v525, v961, v960, v958, v1021);
            v530 = v977;
            (v977)(v970, v524);
            v530(v526, v524);
            sub_10000BD44(v995, &qword_1003A0178, &unk_1002C3BB0);
            sub_10000BD44(v1000, &qword_1003A0178, &unk_1002C3BB0);
            sub_10000BD44(v1002, &qword_1003A0178, &unk_1002C3BB0);
            v531 = v529;
            goto LABEL_231;
          }

          v975 = v469;
          v976 = v468;

          v523 = URL.generateSHA256Digest()();
          v990 = 0;
          v339 = v467;
          v604 = v523;
          v571 = v605;
          v974 = v458;
          sub_1000094F4(v523, v605);
          v606 = Logger.logObject.getter();
          v342 = static os_log_type_t.default.getter();
          sub_100009548(v604, v571);
          v607 = os_log_type_enabled(v606, v342);
          v973 = v604;
          if (v607)
          {
            v608 = swift_slowAlloc();
            v972 = swift_slowAlloc();
            v1006[0] = v972;
            *v608 = 136315394;
            *(v608 + 4) = sub_100008F6C(0xD000000000000014, 0x8000000100348D90, v1006);
            *(v608 + 12) = 2080;
            v609 = Data.hexString()();
            v610 = sub_100008F6C(v609._countAndFlagsBits, v609._object, v1006);

            *(v608 + 14) = v610;
            _os_log_impl(&_mh_execute_header, v606, v342, "Got script data for: %s with digest: %s", v608, 0x16u);
            swift_arrayDestroy();
          }

          v264 = v992;
          v611 = v937;
          v612 = URL.path(percentEncoded:)(0);
          countAndFlagsBits = v612._countAndFlagsBits;
          object = v612._object;
          v613 = v996 >> 62;
          if ((v996 >> 62) <= 1)
          {
            if (!v613)
            {
              v614 = BYTE6(v996);
              goto LABEL_298;
            }

            goto LABEL_295;
          }

          if (v613 != 2)
          {
            v614 = 0;
            goto LABEL_298;
          }

          v740 = *(v974 + 16);
          v582 = *(v974 + 24);
          v614 = v582 - v740;
          if (!__OFSUB__(v582, v740))
          {
            goto LABEL_298;
          }

          __break(1u);
LABEL_225:
          if (__OFSUB__(HIDWORD(v985), v985))
          {
            goto LABEL_341;
          }

          v583 = HIDWORD(v985) - v985;
LABEL_228:
          v741 = v990;
          sub_10007B4F8(countAndFlagsBits, v606, 2, v583, 0, v582);
          v990 = v741;
          if (v741)
          {
            v742 = v981;
            v743 = v571;
            v331 = v264;
            (v264)(v947, v981);

            sub_100009548(v974, v743);
            v341 = v742;
            v340 = v1021;
            goto LABEL_230;
          }

          v747 = v981;
          (v264)(v947, v981);

          sub_100009548(v974, v571);
          (v264)(v952, v747);

          sub_10001A074(v985, v987);
          v294 = 0;
          v264 = v992;
          v292 = v986;
        }

        while (1)
        {
          v301 = 1;
          v302 = v937;
          (v986)(v937, v296, 1, v264);
          sub_100082A14(v302, v961, &qword_1003A03F0, &qword_1002C3D88);
          v303 = v984;
          if (v984 >> 60 == 15)
          {
            goto LABEL_55;
          }

          v502 = objc_opt_self();
          sub_1000094F4(v983, v303);
          v503 = [v502 defaultManager];
          v504 = [v503 temporaryDirectory];

          static URL._unconditionallyBridgeFromObjectiveC(_:)();
          v505 = v911;
          UUID.init()();
          UUID.uuidString.getter();
          v507 = v506;
          v508 = *(v997 + 8);
          v987 = v997 + 8;
          v985 = v508;
          (v508)(v505, v998);
          v509 = v969;
          v996 = v507;
          URL.appendingPathComponent(_:)();
          v510 = v915;
          URL.appendingPathExtension(_:)();
          v511 = v981;
          v512 = *(v959 + 8);
          v512(v509, v981);
          sub_100004074(&qword_1003A0440, &qword_1002C3DE8);
          v513 = swift_allocObject();
          *(v513 + 16) = xmmword_1002C1660;
          *(v513 + 32) = NSFileProtectionKey;
          type metadata accessor for FileProtectionType(0);
          *(v513 + 64) = v514;
          *(v513 + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
          v515 = NSFileProtectionKey;
          v516 = NSFileProtectionCompleteUntilFirstUserAuthentication;
          v517 = sub_1001845BC(v513);
          swift_setDeallocating();
          sub_10000BD44(v513 + 32, &qword_1003A0448, &qword_1002C3DF0);
          swift_deallocClassInstance();
          v518 = v990;
          sub_1000833FC(v510, v517, v983, v984);
          if (v518)
          {
            v512(v510, v511);

            v519 = v998;
            v520 = v967;
LABEL_335:
            v512(v932, v511);

            sub_10001A074(v983, v984);
            sub_10000BD44(&v1009, &qword_1003A0428, &qword_1002C3DD0);
            v888 = v961;
            v889 = v960;
            v890 = v958;
            sub_10007AA54(v1005, v520, v961, v960, v958, v1021);
            v891 = v985;
            (v985)(v970, v519);
            v891(v989, v519);
            sub_10000BD44(v995, &qword_1003A0178, &unk_1002C3BB0);
            sub_10000BD44(v1000, &qword_1003A0178, &unk_1002C3BB0);
            sub_10000BD44(v1002, &qword_1003A0178, &unk_1002C3BB0);
            sub_10000BD44(v890, &qword_1003A03F0, &qword_1002C3D88);
            sub_10000BD44(v889, &qword_1003A03F0, &qword_1002C3D88);
            sub_10000BD44(v888, &qword_1003A03F0, &qword_1002C3D88);
            sub_10000BD44(v520, &qword_1003A03F0, &qword_1002C3D88);
            sub_100082AD0(v1001, v991, v994, v978);
            return;
          }

          v590 = URL.generateSHA256Digest()();
          v691 = v590;
          v611 = v591;
          sub_1000094F4(v590, v591);
          v692 = Logger.logObject.getter();
          object = static os_log_type_t.default.getter();
          sub_100009548(v691, v611);
          v693 = os_log_type_enabled(v692, object);
          v990 = 0;
          v977 = v691;
          if (v693)
          {
            v694 = swift_slowAlloc();
            v976 = swift_slowAlloc();
            v1006[0] = v976;
            *v694 = 136315394;
            *(v694 + 4) = sub_100008F6C(0xD000000000000014, 0x8000000100348DB0, v1006);
            *(v694 + 12) = 2080;
            v695 = Data.hexString()();
            v696 = sub_100008F6C(v695._countAndFlagsBits, v695._object, v1006);

            *(v694 + 14) = v696;
            _os_log_impl(&_mh_execute_header, v692, object, "Got script data for: %s with digest: %s", v694, 0x16u);
            swift_arrayDestroy();
          }

          v264 = v914;
          v845 = URL.path(percentEncoded:)(0);
          countAndFlagsBits = v845._countAndFlagsBits;
          v571 = v845._object;
          v846 = v984 >> 62;
          if ((v984 >> 62) <= 1)
          {
            break;
          }

          v339 = v980;
          if (v846 != 2)
          {
            v847 = 0;
            goto LABEL_333;
          }

          v849 = *(v983 + 2);
          v848 = *(v983 + 3);
          v847 = v848 - v849;
          if (!__OFSUB__(v848, v849))
          {
            goto LABEL_333;
          }

          __break(1u);
LABEL_295:
          if (__OFSUB__(HIDWORD(v974), v974))
          {
            goto LABEL_343;
          }

          v614 = HIDWORD(v974) - v974;
LABEL_298:
          v850 = v571;
          v851 = v990;
          sub_10007B4F8(countAndFlagsBits, object, 0, v614, 0, v611);
          v990 = v851;
          if (v851)
          {
            v852 = v981;
            v468 = v976;
            v976(v339, v981);

            v853 = v850;
            v478 = v852;
            sub_100009548(v973, v853);
            v525 = v967;
            v526 = v989;
            v524 = v998;
            v458 = v974;
            v475 = v996;
            goto LABEL_115;
          }

          v854 = v981;
          v855 = v976;
          v976(v339, v981);

          sub_100009548(v973, v571);
          v855(v945, v854);

          sub_10001A074(v974, v996);
          v296 = 0;
          v299 = v967;
          object = v988;
        }

        if (v846)
        {
          if (__OFSUB__(HIDWORD(v983), v983))
          {
            goto LABEL_345;
          }

          v847 = HIDWORD(v983) - v983;
        }

        else
        {
          v847 = BYTE6(v984);
        }

LABEL_333:
        v887 = v990;
        sub_10007B4F8(v845._countAndFlagsBits, v845._object, 3, v847, 0, v264);
        v990 = v887;
        if (v887)
        {
          v511 = v981;
          v512(v915, v981);

          sub_100009548(v977, v611);
          v520 = v967;
          v519 = v998;
          goto LABEL_335;
        }

        v892 = v981;
        v512(v915, v981);

        sub_100009548(v977, v611);
        v512(v932, v892);

        sub_10001A074(v983, v984);
        v301 = 0;
        v264 = v992;
        v299 = v967;
        object = v988;
LABEL_55:
        v304 = 1;
        v305 = v914;
        (v986)(v914, v301, 1, v264);
        sub_100082A14(v305, v960, &qword_1003A03F0, &qword_1002C3D88);
        v306 = v912;
        if (!object || (v307 = v982, v982 >> 60 == 15))
        {
          v567 = v299;
          v568 = v997;
          goto LABEL_184;
        }

        v308 = objc_opt_self();
        v309 = v979;
        sub_1000094F4(v979, v307);
        v310 = [v308 defaultManager];
        v311 = [v310 temporaryDirectory];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v312 = v901;
        UUID.init()();
        UUID.uuidString.getter();
        object = v306;
        v996 = *(v997 + 8);
        (v996)(v312, v998);
        v313 = v1021;
        v314 = v990;
        sub_10007AF98(v309, v307, 4u, v916);
        v990 = v314;
        if (!v314)
        {
          goto LABEL_183;
        }

        (*(v959 + 8))(v306, v981);

        sub_10001A074(v979, v982);
        sub_10000BD44(&v1009, &qword_1003A0428, &qword_1002C3DD0);
        v315 = v967;
        v316 = v961;
        v317 = v960;
        v318 = v998;
        v319 = v958;
        sub_10007AA54(v1005, v967, v961, v960, v958, v313);
        v320 = v996;
        (v996)(v970, v318);
        v320(v989, v318);
        sub_10000BD44(v995, &qword_1003A0178, &unk_1002C3BB0);
        sub_10000BD44(v1000, &qword_1003A0178, &unk_1002C3BB0);
        sub_10000BD44(v1002, &qword_1003A0178, &unk_1002C3BB0);
        sub_10000BD44(v319, &qword_1003A03F0, &qword_1002C3D88);
        sub_10000BD44(v317, &qword_1003A03F0, &qword_1002C3D88);
        sub_10000BD44(v316, &qword_1003A03F0, &qword_1002C3D88);
        v321 = v315;
      }

      else
      {
        v322 = objc_opt_self();
        sub_1000094F4(v985, v295);
        v323 = [v322 defaultManager];
        v324 = [v323 temporaryDirectory];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v325 = v944;
        UUID.init()();
        UUID.uuidString.getter();
        v327 = v326;
        v328 = *(v997 + 8);
        v976 = (v997 + 8);
        v975 = v328;
        (v328)(v325, v243);
        v329 = v969;
        v977 = v327;
        URL.appendingPathComponent(_:)();
        v330 = v947;
        URL.appendingPathExtension(_:)();
        v331 = *(v959 + 8);
        v332 = v981;
        v331(v329, v981);
        sub_100004074(&qword_1003A0440, &qword_1002C3DE8);
        v333 = swift_allocObject();
        *(v333 + 16) = xmmword_1002C1660;
        *(v333 + 32) = NSFileProtectionKey;
        type metadata accessor for FileProtectionType(0);
        *(v333 + 64) = v334;
        *(v333 + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
        v335 = NSFileProtectionKey;
        v336 = NSFileProtectionCompleteUntilFirstUserAuthentication;
        v337 = sub_1001845BC(v333);
        swift_setDeallocating();
        sub_10000BD44(v333 + 32, &qword_1003A0448, &qword_1002C3DF0);
        swift_deallocClassInstance();
        v338 = v990;
        sub_1000833FC(v330, v337, v985, v987);
        if (!v338)
        {
          v264 = v331;

          v479 = URL.generateSHA256Digest()();
          v990 = 0;
          v569 = v479;
          v571 = v570;
          sub_1000094F4(v479, v570);
          v572 = Logger.logObject.getter();
          v573 = static os_log_type_t.default.getter();
          sub_100009548(v569, v571);
          v574 = os_log_type_enabled(v572, v573);
          v342 = v967;
          v974 = v569;
          if (v574)
          {
            v575 = swift_slowAlloc();
            LODWORD(v972) = v573;
            v576 = v575;
            v973 = swift_slowAlloc();
            v1006[0] = v973;
            *v576 = 136315394;
            *(v576 + 4) = sub_100008F6C(0x6F436C61626F6C67, 0xEC0000006769666ELL, v1006);
            *(v576 + 12) = 2080;
            v577 = Data.hexString()();
            v578 = sub_100008F6C(v577._countAndFlagsBits, v577._object, v1006);

            *(v576 + 14) = v578;
            _os_log_impl(&_mh_execute_header, v572, v972, "Got script data for: %s with digest: %s", v576, 0x16u);
            swift_arrayDestroy();
          }

          object = v988;
          v580 = URL.path(percentEncoded:)(0);
          countAndFlagsBits = v580._countAndFlagsBits;
          v606 = v580._object;
          v581 = v987 >> 62;
          if ((v987 >> 62) <= 1)
          {
            v339 = v998;
            v582 = v946;
            if (!v581)
            {
              v583 = BYTE6(v987);
              goto LABEL_228;
            }

            goto LABEL_225;
          }

          v339 = v998;
          v582 = v946;
          if (v581 != 2)
          {
            v583 = 0;
            goto LABEL_228;
          }

          v654 = v985[2];
          v655 = v985[3];
          v583 = v655 - v654;
          if (!__OFSUB__(v655, v654))
          {
            goto LABEL_228;
          }

          __break(1u);
LABEL_183:
          (*(v959 + 8))(object, v981);

          sub_10001A074(v979, v982);
          v304 = 0;
          v568 = v997;
          v567 = v967;
LABEL_184:
          v656 = v916;
          (v986)(v916, v304, 1, v264);
          v657 = v958;
          sub_100082A14(v656, v958, &qword_1003A03F0, &qword_1002C3D88);
          v1005[0] = 0;
          v658 = Logger.logObject.getter();
          v659 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v658, v659))
          {
            LODWORD(v1003) = v659;
            v660 = swift_slowAlloc();
            v996 = swift_slowAlloc();
            v1006[0] = v996;
            *v660 = 136446978;
            v661 = v961;
            swift_beginAccess();
            v662 = v264;
            v663 = *(v993 + 48);
            if (v663(v661, 1, v264))
            {
              v664 = 0;
              v665 = 0xE000000000000000;
            }

            else
            {
              v697 = (v661 + *(v264 + 36));
              v664 = *v697;
              v665 = v697[1];
            }

            v698 = sub_100008F6C(v664, v665, v1006);

            *(v660 + 4) = v698;
            *(v660 + 12) = 2082;
            v699 = v967;
            swift_beginAccess();
            if (v663(v699, 1, v662))
            {
              v700 = 0;
              v701 = 0xE000000000000000;
            }

            else
            {
              v702 = (v699 + *(v662 + 36));
              v700 = *v702;
              v701 = v702[1];
            }

            v703 = sub_100008F6C(v700, v701, v1006);

            *(v660 + 14) = v703;
            *(v660 + 22) = 2082;
            v704 = v960;
            swift_beginAccess();
            if (v663(v704, 1, v662))
            {
              v705 = 0;
              v706 = 0xE000000000000000;
            }

            else
            {
              v707 = (v704 + *(v662 + 36));
              v705 = *v707;
              v706 = v707[1];
            }

            v657 = v958;
            v708 = sub_100008F6C(v705, v706, v1006);

            *(v660 + 24) = v708;
            *(v660 + 32) = 2082;
            swift_beginAccess();
            if (v663(v657, 1, v662))
            {
              v709 = 0;
              v710 = 0xE000000000000000;
            }

            else
            {
              v711 = (v657 + *(v662 + 36));
              v709 = *v711;
              v710 = v711[1];
            }

            v712 = sub_100008F6C(v709, v710, v1006);

            *(v660 + 34) = v712;
            _os_log_impl(&_mh_execute_header, v658, v1003, "LoadAndInstall: %{public}s, GlobalConfig: %{public}s, PartnerConfig: %{public}s, PartnerSAFConfig: %{public}s,", v660, 0x2Au);
            swift_arrayDestroy();

            v666 = v998;
            v568 = v997;
            v567 = v967;
          }

          else
          {

            v666 = v998;
          }

          v713 = v961;
          swift_beginAccess();
          sub_100065074(v713, v934, &qword_1003A03F0, &qword_1002C3D88);
          swift_beginAccess();
          sub_100065074(v567, v935, &qword_1003A03F0, &qword_1002C3D88);
          v714 = v960;
          swift_beginAccess();
          sub_100065074(v714, v936, &qword_1003A03F0, &qword_1002C3D88);
          swift_beginAccess();
          v715 = v924;
          sub_100065074(v657, v924, &qword_1003A03F0, &qword_1002C3D88);
          v716 = *(v568 + 16);
          v716(v922, v970, v666);
          v716(v923, v989, v666);
          sub_100065074(v995, v921, &qword_1003A0178, &unk_1002C3BB0);
          v717 = v913;
          *v913 = _swiftEmptyArrayStorage;
          LODWORD(v1003) = v1004[0];
          v718 = _s14InstallPackageVMa(0);
          sub_100065074(v934, &v717[v718[5]], &qword_1003A03F0, &qword_1002C3D88);
          sub_100065074(v935, &v717[v718[6]], &qword_1003A03F0, &qword_1002C3D88);
          sub_100065074(v936, &v717[v718[7]], &qword_1003A03F0, &qword_1002C3D88);
          sub_100065074(v715, &v717[v718[8]], &qword_1003A03F0, &qword_1002C3D88);
          v719 = v922;
          v720 = v998;
          v716(&v717[v718[9]], v922, v998);
          v721 = v923;
          v716(&v717[v718[10]], v923, v720);
          v722 = v921;
          sub_100065074(v921, &v717[v718[11]], &qword_1003A0178, &unk_1002C3BB0);
          v723 = &v717[v718[12]];
          v724 = v1010[0];
          *v723 = v1009;
          *(v723 + 1) = v724;
          *(v723 + 25) = *(v1010 + 9);
          v725 = &v717[v718[13]];
          v726 = v1001;
          v727 = v991;
          *v725 = v1001;
          *(v725 + 1) = v727;
          v728 = v994;
          v729 = v978;
          *(v725 + 2) = v994;
          *(v725 + 3) = v729;
          *(v725 + 4) = v999;
          v725[40] = v1003;
          sub_100082A7C(v726, v727, v728, v729);
          sub_10000BD44(v722, &qword_1003A0178, &unk_1002C3BB0);
          v730 = *(v568 + 8);
          v731 = v721;
          v732 = v998;
          v730(v731, v998);
          v730(v719, v732);
          sub_10000BD44(v924, &qword_1003A03F0, &qword_1002C3D88);
          sub_10000BD44(v936, &qword_1003A03F0, &qword_1002C3D88);
          sub_10000BD44(v935, &qword_1003A03F0, &qword_1002C3D88);
          sub_10000BD44(v934, &qword_1003A03F0, &qword_1002C3D88);
          *&v717[v718[14]] = _swiftEmptyArrayStorage;
          *&v717[v718[15]] = xmmword_1002C3C70;
          v717[v718[16]] = 1;
          v733 = v961;
          v734 = v960;
          v735 = v958;
          sub_10007AA54(v1005, v967, v961, v960, v958, v1021);
          v730(v970, v732);
          v730(v989, v732);
          sub_10000BD44(v995, &qword_1003A0178, &unk_1002C3BB0);
          sub_10000BD44(v1000, &qword_1003A0178, &unk_1002C3BB0);
          sub_10000BD44(v1002, &qword_1003A0178, &unk_1002C3BB0);
          sub_10000BD44(v735, &qword_1003A03F0, &qword_1002C3D88);
          sub_10000BD44(v734, &qword_1003A03F0, &qword_1002C3D88);
          sub_10000BD44(v733, &qword_1003A03F0, &qword_1002C3D88);
          sub_10000BD44(v967, &qword_1003A03F0, &qword_1002C3D88);
          v736 = v1001;
          v737 = v991;
          v738 = v994;
          v739 = v978;
          goto LABEL_328;
        }

        v990 = v338;
        v331(v330, v332);

        v339 = v998;
        v340 = v1021;
        v341 = v332;
        v342 = v967;
LABEL_230:
        v331(v952, v341);

        sub_10001A074(v985, v987);
        sub_10000BD44(&v1009, &qword_1003A0428, &qword_1002C3DD0);
        v744 = v342;
        v527 = v961;
        v528 = v960;
        v525 = v342;
        v745 = v958;
        sub_10007AA54(v1005, v744, v961, v960, v958, v340);
        v746 = v975;
        (v975)(v970, v339);
        v746(v989, v339);
        sub_10000BD44(v995, &qword_1003A0178, &unk_1002C3BB0);
        sub_10000BD44(v1000, &qword_1003A0178, &unk_1002C3BB0);
        sub_10000BD44(v1002, &qword_1003A0178, &unk_1002C3BB0);
        v531 = v745;
LABEL_231:
        sub_10000BD44(v531, &qword_1003A03F0, &qword_1002C3D88);
        sub_10000BD44(v528, &qword_1003A03F0, &qword_1002C3D88);
        sub_10000BD44(v527, &qword_1003A03F0, &qword_1002C3D88);
        v321 = v525;
      }

      sub_10000BD44(v321, &qword_1003A03F0, &qword_1002C3D88);
      v736 = v1001;
      v737 = v991;
      v738 = v994;
      v739 = v978;
LABEL_328:
      sub_100082AD0(v736, v737, v738, v739);
      return;
    }

LABEL_339:
    __break(1u);
    goto LABEL_340;
  }

  if (!*(v996 + 64))
  {
LABEL_340:
    __break(1u);
LABEL_341:
    __break(1u);
LABEL_342:
    __break(1u);
LABEL_343:
    __break(1u);
LABEL_344:
    __break(1u);
LABEL_345:
    __break(1u);
    goto LABEL_346;
  }

  v230 = v146;
  v231 = *(v996 + 80);
  v961 = *(v996 + 72);
  v967 = v231;
  UUID.init(uuidString:)();
  v232 = *(v217 + 104);
  v960 = *(v217 + 112);
  v233 = *(v217 + 136);
  v1013 = *(v217 + 120);
  v1014[0] = v233;
  *(v1014 + 9) = *(v217 + 145);
  UUID.init(uuidString:)();
  v234 = *(v217 + 176);
  v235 = *(v217 + 184);
  v236 = *(v217 + 192);
  v1002 = *(v217 + 200);
  v237 = *(v217 + 216);
  v980 = *(v217 + 208);
  v991 = v237;
  v238 = *(v217 + 232);
  v989 = *(v217 + 224);
  v1000 = v238;
  LODWORD(v970) = *(v217 + 240);
  v239 = v998;
  v952 = v235;
  v995 = v234;
  v958 = v232;
  if (v234)
  {
  }

  v247 = v1021;
  UUID.init(uuidString:)();

  sub_100065074(v1001, v200, &qword_1003A0178, &unk_1002C3BB0);
  v248 = *(v230 + 48);
  v249 = v239;
  if (v248(v200, 1, v239) == 1)
  {
    sub_10000BD44(v200, &qword_1003A0178, &unk_1002C3BB0);
LABEL_47:
    v287 = Logger.logObject.getter();
    v288 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v287, v288))
    {
      v289 = swift_slowAlloc();
      *v289 = 0;
      _os_log_impl(&_mh_execute_header, v287, v288, "malformed response from backend", v289, 2u);
    }

    v290 = sub_10000BE18((v247 + 480), *(v247 + 504));
    v291 = sub_100020148(2027, 0, 0, 0);
    sub_10013F4E4(v291, *v290);

    sub_100020148(2027, 0, 0, 0);
    swift_willThrow();
    sub_10000BD44(v994, &qword_1003A0178, &unk_1002C3BB0);
    sub_10000BD44(v999, &qword_1003A0178, &unk_1002C3BB0);
    v285 = v1001;
    goto LABEL_50;
  }

  v947 = v236;
  v250 = *(v230 + 32);
  v251 = v988;
  v250(v988, v200, v249);
  v252 = v979;
  sub_100065074(v999, v979, &qword_1003A0178, &unk_1002C3BB0);
  if (v248(v252, 1, v249) == 1)
  {
    (*(v230 + 8))(v251, v249);
    sub_10000BD44(v252, &qword_1003A0178, &unk_1002C3BB0);
LABEL_46:
    v247 = v1021;
    goto LABEL_47;
  }

  v266 = v976;
  v250(v976, v252, v249);
  v1015 = v1013;
  v1016[0] = v1014[0];
  *(v1016 + 9) = *(v1014 + 9);
  sub_100065074(&v1015, v1006, &qword_1003A0428, &qword_1002C3DD0);
  if ((sub_100082354(&v1015) & 1) == 0)
  {
    sub_10000BD44(&v1015, &qword_1003A0428, &qword_1002C3DD0);
    v276 = *(v230 + 8);
    v276(v266, v249);
LABEL_45:
    v276(v988, v249);
    goto LABEL_46;
  }

  v922 = v250;
  v267 = v995;
  if (v995)
  {
    v268 = v1002;
    v269 = v1002;
    v267 = v980;
    v270 = v991;
    v271 = v989;
    v272 = v1000;
    v273 = v970;
    v274 = v970;
    v275 = v968;
  }

  else
  {
    v270 = 0;
    v271 = 0;
    v272 = 0;
    v274 = 0;
    v269 = 1;
    v275 = v968;
    v268 = v1002;
    v273 = v970;
  }

  v1019[0] = v269;
  v1019[1] = v267;
  v1019[2] = v270;
  v1019[3] = v271;
  v1019[4] = v272;
  v1020 = v274;
  if ((sub_100082354(v1019) & 1) == 0)
  {
    sub_10000BD44(&v1015, &qword_1003A0428, &qword_1002C3DD0);
    v276 = *(v230 + 8);
    v276(v976, v249);
    goto LABEL_45;
  }

  if (v995)
  {
    v1005[0] = v273;
    if (v268 == 1)
    {
      v286 = 1;
    }

    else
    {
      v343 = v268;
      v344 = v1000;
      sub_100082A7C(v343, v980, v991, v989);
      v286 = v1002;
      v1000 = sub_100082610(v344, v273 & 1);
      v1005[0] = 0;
    }
  }

  else
  {
    v980 = 0;
    v991 = 0;
    v989 = 0;
    v1000 = 0;
    v1005[0] = 0;
    v286 = 1;
  }

  v345 = v993 + 56;
  v346 = *(v993 + 56);
  v347 = v992;
  v346(v966, 1, 1, v992);
  v346(v965, 1, 1, v347);
  v346(v275, 1, 1, v347);
  v915 = v346;
  v916 = v345;
  v346(v963, 1, 1, v347);
  v348 = *v996;
  v1002 = v286;
  v914 = (v230 + 32);
  if (v348)
  {
    v349 = *(v348 + 16);
    if (v349)
    {
      v934 = objc_opt_self();
      v935 = (v230 + 8);
      v931 = NSFileProtectionCompleteUntilFirstUserAuthentication;
      v932 = NSFileProtectionKey;
      v350 = (v959 + 8);
      v351 = (v348 + 40);
      v352 = _swiftEmptyArrayStorage;
      *(&v353 + 1) = 2;
      v930 = xmmword_1002C1660;
      *&v353 = 136315394;
      v921 = v353;
      v354 = v969;
      v924 = v959 + 8;
      while (1)
      {
        v936 = v351;
        v937 = v349;
        v946 = v352;
        v355 = *(v351 - 1);
        v356 = *v351;
        sub_1000094F4(v355, *v351);
        sub_1000094F4(v355, v356);
        sub_1000094F4(v355, v356);
        v357 = [v934 defaultManager];
        v358 = [v357 temporaryDirectory];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        v359 = v964;
        UUID.init()();
        UUID.uuidString.getter();
        v361 = v360;
        v923 = *v935;
        (v923)(v359, v998);
        v944 = v361;
        URL.appendingPathComponent(_:)();
        v362 = v978;
        URL.appendingPathExtension(_:)();
        v363 = v354;
        v364 = v981;
        v945 = *v350;
        (v945)(v363, v981);
        sub_100004074(&qword_1003A0440, &qword_1002C3DE8);
        v365 = swift_allocObject();
        *(v365 + 16) = v930;
        v366 = v932;
        *(v365 + 32) = v932;
        type metadata accessor for FileProtectionType(0);
        *(v365 + 64) = v367;
        v368 = v931;
        *(v365 + 40) = v931;
        v369 = v366;
        v370 = v368;
        v371 = sub_1001845BC(v365);
        swift_setDeallocating();
        sub_10000BD44(v365 + 32, &qword_1003A0448, &qword_1002C3DF0);
        swift_deallocClassInstance();
        v970 = v355;
        v979 = v356;
        v372 = v990;
        sub_1000833FC(v362, v371, v355, v356);
        v373 = v372;
        if (v372)
        {
          v990 = v372;
          v522 = v945;
          (v945)(v362, v364);

          goto LABEL_117;
        }

        v374 = URL.generateSHA256Digest()();
        v376 = v375;
        sub_1000094F4(v374, v375);
        v377 = Logger.logObject.getter();
        v378 = static os_log_type_t.default.getter();
        sub_100009548(v374, v376);
        if (os_log_type_enabled(v377, v378))
        {
          v379 = swift_slowAlloc();
          v380 = swift_slowAlloc();
          v990 = 0;
          v1006[0] = v380;
          *v379 = v921;
          *(v379 + 4) = sub_100008F6C(0x6F436C61626F6C67, 0xEC0000006769666ELL, v1006);
          *(v379 + 12) = 2080;
          v381 = Data.hexString()();
          v382 = sub_100008F6C(v381._countAndFlagsBits, v381._object, v1006);

          *(v379 + 14) = v382;
          _os_log_impl(&_mh_execute_header, v377, v378, "Got script data for: %s with digest: %s", v379, 0x16u);
          swift_arrayDestroy();
          v373 = v990;
        }

        v383 = URL.path(percentEncoded:)(0);
        v384 = v979 >> 62;
        if ((v979 >> 62) > 1)
        {
          if (v384 == 2)
          {
            v387 = *(v970 + 16);
            v386 = *(v970 + 24);
            v385 = v386 - v387;
            if (__OFSUB__(v386, v387))
            {
              goto LABEL_338;
            }
          }

          else
          {
            v385 = 0;
          }
        }

        else if (v384)
        {
          if (__OFSUB__(HIDWORD(v970), v970))
          {
            __break(1u);
LABEL_338:
            __break(1u);
            goto LABEL_339;
          }

          v385 = HIDWORD(v970) - v970;
        }

        else
        {
          v385 = BYTE6(v979);
        }

        v388 = v962;
        sub_10007B4F8(v383._countAndFlagsBits, v383._object, 2, v385, 0, v962);
        v990 = v373;
        if (v373)
        {
          break;
        }

        v389 = v981;
        v390 = v924;
        v391 = v945;
        (v945)(v978, v981);

        v392 = v376;
        v350 = v390;
        sub_100009548(v374, v392);

        v393 = v970;
        v394 = v979;
        sub_100009548(v970, v979);
        sub_100009548(v393, v394);
        v391(v977, v389);
        v395 = v974;
        sub_100082B74(v388, v974, type metadata accessor for SLAMScript);
        sub_10008289C(v395, v975, type metadata accessor for SLAMScript);
        v352 = v946;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v352 = sub_10004DC8C(0, *(v352 + 2) + 1, 1, v352);
        }

        v354 = v969;
        v397 = *(v352 + 2);
        v396 = *(v352 + 3);
        if (v397 >= v396 >> 1)
        {
          v352 = sub_10004DC8C((v396 > 1), v397 + 1, 1, v352);
        }

        v351 = v936 + 2;
        sub_100009548(v970, v979);
        sub_100082008(v974, type metadata accessor for SLAMScript);
        *(v352 + 2) = v397 + 1;
        sub_100082B74(v975, &v352[((*(v993 + 80) + 32) & ~*(v993 + 80)) + *(v993 + 72) * v397], type metadata accessor for SLAMScript);
        v349 = v937 - 1;
        if (v937 == 1)
        {
          goto LABEL_87;
        }
      }

      v532 = v981;
      v522 = v945;
      (v945)(v978, v981);
      v364 = v532;

      sub_100009548(v374, v376);
LABEL_117:
      sub_10000BD44(&v1015, &qword_1003A0428, &qword_1002C3DD0);
      v533 = v970;
      v534 = v979;
      sub_100009548(v970, v979);

      sub_100009548(v533, v534);
      sub_100009548(v533, v534);
      v522(v977, v364);
      v535 = Logger.logObject.getter();
      v536 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v535, v536))
      {
        v537 = swift_slowAlloc();
        *v537 = 0;
        _os_log_impl(&_mh_execute_header, v535, v536, "invalid SLAM, delete already saved SLAM if necessary", v537, 2u);
      }

      sub_100004074(&qword_1003A03E8, &qword_1002C3D80);
      v538 = *(v950 + 72);
      v539 = (*(v950 + 80) + 32) & ~*(v950 + 80);
      v996 = swift_allocObject();
      v540 = (v996 + v539);
      v541 = v966;
      swift_beginAccess();
      sub_100065074(v541, v540, &qword_1003A03F0, &qword_1002C3D88);
      v542 = v965;
      swift_beginAccess();
      sub_100065074(v542, v540 + v538, &qword_1003A03F0, &qword_1002C3D88);
      v543 = v968;
      swift_beginAccess();
      sub_100065074(v543, v540 + 2 * v538, &qword_1003A03F0, &qword_1002C3D88);
      v997 = v538;
      v544 = v963;
      swift_beginAccess();
      sub_100065074(v544, v540 + 3 * v538, &qword_1003A03F0, &qword_1002C3D88);
      v545 = (v993 + 48);
      v1003 = _swiftEmptyArrayStorage;
      v546 = 4;
      v995 = v540;
      v547 = v992;
      do
      {
        v548 = v982;
        sub_100065074(v540, v982, &qword_1003A03F0, &qword_1002C3D88);
        v549 = v548;
        v550 = v983;
        sub_1000829AC(v549, v983, &qword_1003A03F0, &qword_1002C3D88);
        if ((*v545)(v550, 1, v547) == 1)
        {
          sub_10000BD44(v550, &qword_1003A03F0, &qword_1002C3D88);
        }

        else
        {
          sub_100082B74(v550, v984, type metadata accessor for SLAMScript);
          v551 = v1003;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v551 = sub_10004DC8C(0, v551[2] + 1, 1, v551);
          }

          v553 = v551[2];
          v552 = v551[3];
          if (v553 >= v552 >> 1)
          {
            v551 = sub_10004DC8C((v552 > 1), v553 + 1, 1, v551);
          }

          v551[2] = v553 + 1;
          v554 = (*(v993 + 80) + 32) & ~*(v993 + 80);
          v1003 = v551;
          sub_100082B74(v984, v551 + v554 + *(v993 + 72) * v553, type metadata accessor for SLAMScript);
          v547 = v992;
        }

        v540 = (v540 + v997);
        --v546;
      }

      while (v546);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v555 = *(v1003 + 16);
      if (v555)
      {
        v556 = v1003 + ((*(v993 + 80) + 32) & ~*(v993 + 80));
        v557 = *(v993 + 72);
        v558 = v919;
        v559 = v933;
        do
        {
          sub_10008289C(v556, v558, type metadata accessor for SLAMScript);
          sub_10007BCAC(v558);
          sub_100082008(v558, type metadata accessor for SLAMScript);
          v556 += v557;
          --v555;
        }

        while (v555);

        v560 = v966;
      }

      else
      {

        v560 = v966;
        v559 = v933;
      }

      v561 = *(v946 + 2);
      if (v561)
      {
        v562 = &v946[(*(v993 + 80) + 32) & ~*(v993 + 80)];
        v563 = *(v993 + 72);
        do
        {
          sub_10008289C(v562, v559, type metadata accessor for SLAMScript);
          sub_10007BCAC(v559);
          sub_100082008(v559, type metadata accessor for SLAMScript);
          v562 += v563;
          --v561;
        }

        while (v561);
      }

      v564 = v998;
      v565 = v923;
      (v923)(v976, v998);
      goto LABEL_137;
    }
  }

  v352 = _swiftEmptyArrayStorage;
  v354 = v969;
LABEL_87:
  v398 = v967;
  v946 = v352;
  if (v967 >> 60 != 15)
  {
    v438 = objc_opt_self();
    v439 = v961;
    sub_1000094F4(v961, v398);
    v440 = [v438 defaultManager];
    v441 = [v440 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v442 = v939;
    UUID.init()();
    UUID.uuidString.getter();
    v444 = v443;
    v445 = *(v997 + 8);
    v983 = (v997 + 8);
    v982 = v445;
    v445(v442, v998);
    v984 = v444;
    URL.appendingPathComponent(_:)();
    v446 = v943;
    URL.appendingPathExtension(_:)();
    v448 = v959 + 8;
    v447 = *(v959 + 8);
    v447(v354, v981);
    sub_100004074(&qword_1003A0440, &qword_1002C3DE8);
    v449 = swift_allocObject();
    *(v449 + 16) = xmmword_1002C1660;
    *(v449 + 32) = NSFileProtectionKey;
    type metadata accessor for FileProtectionType(0);
    *(v449 + 64) = v450;
    *(v449 + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v451 = NSFileProtectionKey;
    v452 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v453 = v446;
    v454 = v967;
    v455 = sub_1001845BC(v449);
    swift_setDeallocating();
    sub_10000BD44(v449 + 32, &qword_1003A0448, &qword_1002C3DF0);
    swift_deallocClassInstance();
    v456 = v990;
    sub_1000833FC(v453, v455, v439, v454);
    if (v456)
    {
      v990 = v456;
      v457 = v981;
      v447(v453, v981);

LABEL_253:
      v447(v948, v457);

      sub_10001A074(v961, v454);
      sub_10000BD44(&v1015, &qword_1003A0428, &qword_1002C3DD0);
      v769 = Logger.logObject.getter();
      v770 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v769, v770))
      {
        v771 = swift_slowAlloc();
        *v771 = 0;
        _os_log_impl(&_mh_execute_header, v769, v770, "invalid SLAM, delete already saved SLAM if necessary", v771, 2u);
      }

      sub_100004074(&qword_1003A03E8, &qword_1002C3D80);
      v772 = *(v950 + 72);
      v773 = (*(v950 + 80) + 32) & ~*(v950 + 80);
      v996 = swift_allocObject();
      v774 = (v996 + v773);
      v775 = v966;
      swift_beginAccess();
      sub_100065074(v775, v774, &qword_1003A03F0, &qword_1002C3D88);
      v776 = v965;
      swift_beginAccess();
      sub_100065074(v776, v774 + v772, &qword_1003A03F0, &qword_1002C3D88);
      v777 = v968;
      swift_beginAccess();
      sub_100065074(v777, v774 + 2 * v772, &qword_1003A03F0, &qword_1002C3D88);
      v997 = v772;
      v778 = v963;
      swift_beginAccess();
      sub_100065074(v778, v774 + 3 * v772, &qword_1003A03F0, &qword_1002C3D88);
      v779 = (v993 + 48);
      v1003 = _swiftEmptyArrayStorage;
      v780 = 4;
      v995 = v774;
      v781 = v992;
      do
      {
        v782 = v985;
        sub_100065074(v774, v985, &qword_1003A03F0, &qword_1002C3D88);
        v783 = v782;
        v784 = v986;
        sub_1000829AC(v783, v986, &qword_1003A03F0, &qword_1002C3D88);
        if ((*v779)(v784, 1, v781) == 1)
        {
          sub_10000BD44(v784, &qword_1003A03F0, &qword_1002C3D88);
        }

        else
        {
          sub_100082B74(v784, v987, type metadata accessor for SLAMScript);
          v785 = v1003;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v785 = sub_10004DC8C(0, v785[2] + 1, 1, v785);
          }

          v787 = v785[2];
          v786 = v785[3];
          if (v787 >= v786 >> 1)
          {
            v785 = sub_10004DC8C((v786 > 1), v787 + 1, 1, v785);
          }

          v785[2] = v787 + 1;
          v788 = (*(v993 + 80) + 32) & ~*(v993 + 80);
          v1003 = v785;
          sub_100082B74(v987, v785 + v788 + *(v993 + 72) * v787, type metadata accessor for SLAMScript);
          v781 = v992;
        }

        v774 = (v774 + v997);
        --v780;
      }

      while (v780);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v789 = *(v1003 + 16);
      if (v789)
      {
        v790 = v1003 + ((*(v993 + 80) + 32) & ~*(v993 + 80));
        v791 = *(v993 + 72);
        v792 = v966;
        v793 = v925;
        do
        {
          sub_10008289C(v790, v793, type metadata accessor for SLAMScript);
          sub_10007BCAC(v793);
          sub_100082008(v793, type metadata accessor for SLAMScript);
          v790 += v791;
          --v789;
        }

        while (v789);
      }

      else
      {

        v792 = v966;
      }

      v794 = *(v946 + 2);
      v795 = v938;
      if (v794)
      {
        v796 = &v946[(*(v993 + 80) + 32) & ~*(v993 + 80)];
        v797 = *(v993 + 72);
        do
        {
          sub_10008289C(v796, v795, type metadata accessor for SLAMScript);
          sub_10007BCAC(v795);
          sub_100082008(v795, type metadata accessor for SLAMScript);
          v796 += v797;
          --v794;
        }

        while (v794);
      }

      v798 = v998;
      v799 = v982;
      (v982)(v976, v998);
LABEL_326:
      v799(v988, v798);
      sub_10000BD44(v994, &qword_1003A0178, &unk_1002C3BB0);
      sub_10000BD44(v999, &qword_1003A0178, &unk_1002C3BB0);
      sub_10000BD44(v1001, &qword_1003A0178, &unk_1002C3BB0);

      sub_10000BD44(v963, &qword_1003A03F0, &qword_1002C3D88);
      sub_10000BD44(v968, &qword_1003A03F0, &qword_1002C3D88);
      sub_10000BD44(v965, &qword_1003A03F0, &qword_1002C3D88);
      v566 = v792;
      goto LABEL_327;
    }

    v978 = v448;
    v979 = v447;

    v521 = URL.generateSHA256Digest()();
    v990 = 0;
    v492 = v521;
    v593 = v592;
    sub_1000094F4(v521, v592);
    v594 = Logger.logObject.getter();
    v595 = static os_log_type_t.default.getter();
    sub_100009548(v492, v593);
    if (os_log_type_enabled(v594, v595))
    {
      v596 = swift_slowAlloc();
      v1006[0] = swift_slowAlloc();
      *v596 = 136315394;
      *(v596 + 4) = sub_100008F6C(0x6F436C61626F6C67, 0xEC0000006769666ELL, v1006);
      *(v596 + 12) = 2080;
      v597 = Data.hexString()();
      v598 = sub_100008F6C(v597._countAndFlagsBits, v597._object, v1006);

      *(v596 + 14) = v598;
      _os_log_impl(&_mh_execute_header, v594, v595, "Got script data for: %s with digest: %s", v596, 0x16u);
      swift_arrayDestroy();
    }

    v354 = v969;
    v400 = v941;
    v401 = v942;
    v601 = URL.path(percentEncoded:)(0);
    v600 = v601._object;
    v599 = v601._countAndFlagsBits;
    v602 = v967 >> 62;
    if ((v967 >> 62) <= 1)
    {
      if (!v602)
      {
        v603 = BYTE6(v967);
        goto LABEL_251;
      }

      goto LABEL_248;
    }

    if (v602 != 2)
    {
      v603 = 0;
      goto LABEL_251;
    }

    v687 = *(v961 + 16);
    v686 = *(v961 + 24);
    v603 = v686 - v687;
    if (!__OFSUB__(v686, v687))
    {
      goto LABEL_251;
    }

    __break(1u);
    goto LABEL_202;
  }

  v399 = 1;
  v400 = v941;
  v401 = v942;
  while (1)
  {
    v402 = 1;
    (v915)(v400, v399, 1, v992);
    sub_100082A14(v400, v966, &qword_1003A03F0, &qword_1002C3D88);
    v403 = *(v996 + 16);
    v404 = v959;
    if (v403 >> 60 == 15)
    {
      goto LABEL_90;
    }

    v480 = *(v996 + 8);
    v481 = objc_opt_self();
    sub_1000094F4(v480, v403);
    v482 = [v481 defaultManager];
    v483 = [v482 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v987 = v403;
    v484 = v918;
    UUID.init()();
    UUID.uuidString.getter();
    v486 = v485;
    v487 = *(v997 + 8);
    v985 = (v997 + 8);
    v984 = v487;
    v487(v484, v998);
    v986 = v486;
    URL.appendingPathComponent(_:)();
    v488 = v927;
    URL.appendingPathExtension(_:)();
    v489 = v354;
    v490 = *(v404 + 8);
    v490(v489, v981);
    sub_100004074(&qword_1003A0440, &qword_1002C3DE8);
    v491 = swift_allocObject();
    *(v491 + 16) = xmmword_1002C1660;
    *(v491 + 32) = NSFileProtectionKey;
    v492 = (v491 + 32);
    type metadata accessor for FileProtectionType(0);
    *(v491 + 64) = v493;
    *(v491 + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v494 = NSFileProtectionKey;
    v495 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v496 = sub_1001845BC(v491);
    swift_setDeallocating();
    sub_10000BD44(v491 + 32, &qword_1003A0448, &qword_1002C3DF0);
    v497 = v488;
    v498 = v987;
    swift_deallocClassInstance();
    v499 = v990;
    sub_1000833FC(v497, v496, v480, v498);
    if (v499)
    {
      v990 = v499;
      v500 = v981;
      v490(v497, v981);

      v501 = v965;
LABEL_306:
      v490(v940, v500);

      sub_10001A074(v480, v498);
      sub_10000BD44(&v1015, &qword_1003A0428, &qword_1002C3DD0);
      v858 = Logger.logObject.getter();
      v859 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v858, v859))
      {
        v860 = swift_slowAlloc();
        *v860 = 0;
        _os_log_impl(&_mh_execute_header, v858, v859, "invalid SLAM, delete already saved SLAM if necessary", v860, 2u);
      }

      sub_100004074(&qword_1003A03E8, &qword_1002C3D80);
      v861 = *(v950 + 72);
      v862 = (*(v950 + 80) + 32) & ~*(v950 + 80);
      v996 = swift_allocObject();
      v863 = (v996 + v862);
      v864 = v966;
      swift_beginAccess();
      sub_100065074(v864, v863, &qword_1003A03F0, &qword_1002C3D88);
      swift_beginAccess();
      sub_100065074(v501, v863 + v861, &qword_1003A03F0, &qword_1002C3D88);
      v865 = v968;
      swift_beginAccess();
      sub_100065074(v865, v863 + 2 * v861, &qword_1003A03F0, &qword_1002C3D88);
      v997 = v861;
      v866 = v963;
      swift_beginAccess();
      sub_100065074(v866, v863 + 3 * v861, &qword_1003A03F0, &qword_1002C3D88);
      v867 = (v993 + 48);
      v1003 = _swiftEmptyArrayStorage;
      v868 = 4;
      v995 = v863;
      v869 = v992;
      do
      {
        v870 = v971;
        sub_100065074(v863, v971, &qword_1003A03F0, &qword_1002C3D88);
        v871 = v870;
        v872 = v972;
        sub_1000829AC(v871, v972, &qword_1003A03F0, &qword_1002C3D88);
        if ((*v867)(v872, 1, v869) == 1)
        {
          sub_10000BD44(v872, &qword_1003A03F0, &qword_1002C3D88);
        }

        else
        {
          sub_100082B74(v872, v973, type metadata accessor for SLAMScript);
          v873 = v1003;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v873 = sub_10004DC8C(0, v873[2] + 1, 1, v873);
          }

          v875 = v873[2];
          v874 = v873[3];
          if (v875 >= v874 >> 1)
          {
            v873 = sub_10004DC8C((v874 > 1), v875 + 1, 1, v873);
          }

          v873[2] = v875 + 1;
          v876 = (*(v993 + 80) + 32) & ~*(v993 + 80);
          v1003 = v873;
          sub_100082B74(v973, v873 + v876 + *(v993 + 72) * v875, type metadata accessor for SLAMScript);
          v869 = v992;
        }

        v863 = (v863 + v997);
        --v868;
      }

      while (v868);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v877 = *(v1003 + 16);
      if (v877)
      {
        v878 = v1003 + ((*(v993 + 80) + 32) & ~*(v993 + 80));
        v879 = *(v993 + 72);
        v792 = v966;
        v880 = v905;
        do
        {
          sub_10008289C(v878, v880, type metadata accessor for SLAMScript);
          sub_10007BCAC(v880);
          sub_100082008(v880, type metadata accessor for SLAMScript);
          v878 += v879;
          --v877;
        }

        while (v877);
      }

      else
      {

        v792 = v966;
      }

      v881 = *(v946 + 2);
      v882 = v917;
      if (v881)
      {
        v883 = &v946[(*(v993 + 80) + 32) & ~*(v993 + 80)];
        v884 = *(v993 + 72);
        do
        {
          sub_10008289C(v883, v882, type metadata accessor for SLAMScript);
          sub_10007BCAC(v882);
          sub_100082008(v882, type metadata accessor for SLAMScript);
          v883 += v884;
          --v881;
        }

        while (v881);
      }

      v798 = v998;
      v799 = v984;
      (v984)(v976, v998);
      goto LABEL_326;
    }

    v983 = v490;

    v584 = URL.generateSHA256Digest()();
    v990 = 0;
    v667 = v584;
    v354 = v668;
    v982 = v480;
    sub_1000094F4(v584, v668);
    v669 = Logger.logObject.getter();
    v670 = static os_log_type_t.default.getter();
    sub_100009548(v667, v354);
    v671 = os_log_type_enabled(v669, v670);
    v979 = v667;
    if (v671)
    {
      v672 = swift_slowAlloc();
      LODWORD(v978) = v670;
      v673 = v672;
      v1006[0] = swift_slowAlloc();
      *v673 = 136315394;
      *(v673 + 4) = sub_100008F6C(0xD000000000000014, 0x8000000100348D90, v1006);
      *(v673 + 12) = 2080;
      v674 = Data.hexString()();
      v492 = sub_100008F6C(v674._countAndFlagsBits, v674._object, v1006);

      *(v673 + 14) = v492;
      _os_log_impl(&_mh_execute_header, v669, v978, "Got script data for: %s with digest: %s", v673, 0x16u);
      swift_arrayDestroy();
    }

    v401 = v942;
    v400 = v926;
    v675 = URL.path(percentEncoded:)(0);
    v600 = v675._object;
    v599 = v675._countAndFlagsBits;
    v593 = v675._object;
    v676 = v987 >> 62;
    if ((v987 >> 62) <= 1)
    {
      break;
    }

    if (v676 != 2)
    {
      v677 = 0;
      goto LABEL_304;
    }

    v767 = *(v982 + 16);
    v766 = *(v982 + 24);
    v677 = v766 - v767;
    if (!__OFSUB__(v766, v767))
    {
      goto LABEL_304;
    }

    __break(1u);
LABEL_248:
    if (__OFSUB__(HIDWORD(v961), v961))
    {
      goto LABEL_342;
    }

    v603 = HIDWORD(v961) - v961;
LABEL_251:
    v975 = v492;
    v977 = v593;
    v768 = v990;
    sub_10007B4F8(v599, v600, 2, v603, 0, v400);
    v990 = v768;
    if (v768)
    {
      v457 = v981;
      v447 = v979;
      (v979)(v943, v981);

      sub_100009548(v975, v977);
      v454 = v967;
      goto LABEL_253;
    }

    v800 = v981;
    v801 = v979;
    (v979)(v943, v981);

    sub_100009548(v975, v977);
    v801(v948, v800);

    sub_10001A074(v961, v967);
    v399 = 0;
  }

  if (v676)
  {
    if (__OFSUB__(HIDWORD(v982), v982))
    {
      goto LABEL_344;
    }

    v677 = HIDWORD(v982) - v982;
  }

  else
  {
    v677 = BYTE6(v987);
  }

LABEL_304:
  v856 = v990;
  sub_10007B4F8(v675._countAndFlagsBits, v675._object, 0, v677, 0, v400);
  v990 = v856;
  if (v856)
  {
    v500 = v981;
    v857 = v354;
    v490 = v983;
    v983(v927, v981);

    sub_100009548(v979, v857);
    v501 = v965;
    v480 = v982;
    v498 = v987;
    goto LABEL_306;
  }

  v885 = v981;
  v886 = v983;
  v983(v927, v981);

  sub_100009548(v979, v354);
  v886(v940, v885);

  sub_10001A074(v982, v987);
  v402 = 0;
LABEL_90:
  v405 = v990;
  v406 = v998;
  v407 = 1;
  v408 = v926;
  (v915)(v926, v402, 1, v992);
  sub_100082A14(v408, v965, &qword_1003A03F0, &qword_1002C3D88);
  v409 = v960;
  v410 = v929;
  v411 = v920;
  if (v960 >> 60 != 15)
  {
    v412 = v920;
    v413 = objc_opt_self();
    v414 = v958;
    sub_1000094F4(v958, v409);
    v415 = [v413 defaultManager];
    v416 = [v415 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v417 = v904;
    UUID.init()();
    UUID.uuidString.getter();
    v418 = *(v997 + 8);
    v419 = v417;
    v420 = v960;
    v987 = v997 + 8;
    v986 = v418;
    (v418)(v419, v406);
    sub_10007AF98(v414, v420, 3u, v928);
    if (v405)
    {
      v990 = v405;
      (*(v959 + 8))(v401, v981);

      sub_10001A074(v414, v420);
      sub_10000BD44(&v1015, &qword_1003A0428, &qword_1002C3DD0);
      v421 = Logger.logObject.getter();
      v422 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v421, v422))
      {
        v423 = swift_slowAlloc();
        *v423 = 0;
        _os_log_impl(&_mh_execute_header, v421, v422, "invalid SLAM, delete already saved SLAM if necessary", v423, 2u);
      }

      sub_100004074(&qword_1003A03E8, &qword_1002C3D80);
      v424 = *(v950 + 72);
      v425 = (*(v950 + 80) + 32) & ~*(v950 + 80);
      v997 = swift_allocObject();
      v426 = v997 + v425;
      v427 = v966;
      swift_beginAccess();
      sub_100065074(v427, v426, &qword_1003A03F0, &qword_1002C3D88);
      v428 = v965;
      swift_beginAccess();
      sub_100065074(v428, v426 + v424, &qword_1003A03F0, &qword_1002C3D88);
      v429 = v968;
      swift_beginAccess();
      sub_100065074(v429, v426 + 2 * v424, &qword_1003A03F0, &qword_1002C3D88);
      v1003 = v424;
      v430 = v963;
      swift_beginAccess();
      sub_100065074(v430, v426 + 3 * v424, &qword_1003A03F0, &qword_1002C3D88);
      v431 = (v993 + 48);
      v432 = _swiftEmptyArrayStorage;
      v433 = 4;
      v996 = v426;
      v434 = v953;
      do
      {
        v435 = v957;
        sub_100065074(v426, v957, &qword_1003A03F0, &qword_1002C3D88);
        sub_1000829AC(v435, v434, &qword_1003A03F0, &qword_1002C3D88);
        if ((*v431)(v434, 1, v992) == 1)
        {
          sub_10000BD44(v434, &qword_1003A03F0, &qword_1002C3D88);
        }

        else
        {
          sub_100082B74(v434, v956, type metadata accessor for SLAMScript);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v432 = sub_10004DC8C(0, v432[2] + 1, 1, v432);
          }

          v437 = v432[2];
          v436 = v432[3];
          if (v437 >= v436 >> 1)
          {
            v432 = sub_10004DC8C((v436 > 1), v437 + 1, 1, v432);
          }

          v432[2] = v437 + 1;
          sub_100082B74(v956, v432 + ((*(v993 + 80) + 32) & ~*(v993 + 80)) + *(v993 + 72) * v437, type metadata accessor for SLAMScript);
          v434 = v953;
        }

        v426 += v1003;
        --v433;
      }

      while (v433);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v585 = v432[2];
      if (v585)
      {
        v586 = v432 + ((*(v993 + 80) + 32) & ~*(v993 + 80));
        v587 = *(v993 + 72);
        v588 = v897;
        v589 = v894;
        do
        {
          sub_10008289C(v586, v589, type metadata accessor for SLAMScript);
          sub_10007BCAC(v589);
          sub_100082008(v589, type metadata accessor for SLAMScript);
          v586 += v587;
          --v585;
        }

        while (v585);

        v560 = v966;
        goto LABEL_203;
      }

LABEL_202:

      v560 = v966;
      v588 = v897;
LABEL_203:
      v688 = *(v946 + 2);
      if (v688)
      {
        v689 = &v946[(*(v993 + 80) + 32) & ~*(v993 + 80)];
        v690 = *(v993 + 72);
        do
        {
          sub_10008289C(v689, v588, type metadata accessor for SLAMScript);
          sub_10007BCAC(v588);
          sub_100082008(v588, type metadata accessor for SLAMScript);
          v689 += v690;
          --v688;
        }

        while (v688);
      }

      v564 = v998;
      v565 = v986;
      (v986)(v976, v998);
LABEL_137:
      v565(v988, v564);
      sub_10000BD44(v994, &qword_1003A0178, &unk_1002C3BB0);
      sub_10000BD44(v999, &qword_1003A0178, &unk_1002C3BB0);
      sub_10000BD44(v1001, &qword_1003A0178, &unk_1002C3BB0);

      sub_10000BD44(v963, &qword_1003A03F0, &qword_1002C3D88);
      sub_10000BD44(v968, &qword_1003A03F0, &qword_1002C3D88);
      sub_10000BD44(v965, &qword_1003A03F0, &qword_1002C3D88);
      v566 = v560;
LABEL_327:
      sub_10000BD44(v566, &qword_1003A03F0, &qword_1002C3D88);
      v736 = v1002;
      v737 = v980;
      v738 = v991;
      v739 = v989;
      goto LABEL_328;
    }

    (*(v959 + 8))(v401, v981);

    sub_10001A074(v414, v420);
    v407 = 0;
    v411 = v412;
    v410 = v929;
  }

  v615 = 1;
  v616 = v928;
  (v915)(v928, v407, 1, v992);
  sub_100082A14(v616, v968, &qword_1003A03F0, &qword_1002C3D88);
  v617 = v997;
  if (v995)
  {
    v618 = v947;
    if (v947 >> 60 != 15)
    {
      v619 = objc_opt_self();
      v990 = v405;
      v620 = v952;
      sub_1000094F4(v952, v618);
      v621 = [v619 defaultManager];
      v622 = [v621 temporaryDirectory];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v623 = v900;
      UUID.init()();
      UUID.uuidString.getter();
      v624 = v411;
      v625 = v617;
      v626 = v620;
      v628 = *(v625 + 8);
      v627 = v625 + 8;
      v629 = v623;
      v630 = v947;
      v995 = v628;
      (v628)(v629, v998);
      v631 = v990;
      sub_10007AF98(v620, v630, 4u, v624);
      v405 = v631;
      if (v631)
      {
        v997 = v627;
        v990 = v631;
        (*(v959 + 8))(v410, v981);

        sub_10001A074(v626, v630);
        sub_10000BD44(&v1015, &qword_1003A0428, &qword_1002C3DD0);
        v632 = Logger.logObject.getter();
        v633 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v632, v633))
        {
          v634 = swift_slowAlloc();
          *v634 = 0;
          _os_log_impl(&_mh_execute_header, v632, v633, "invalid SLAM, delete already saved SLAM if necessary", v634, 2u);
        }

        sub_100004074(&qword_1003A03E8, &qword_1002C3D80);
        v635 = *(v950 + 72);
        v636 = (*(v950 + 80) + 32) & ~*(v950 + 80);
        v996 = swift_allocObject();
        v637 = v996 + v636;
        v638 = v966;
        swift_beginAccess();
        sub_100065074(v638, v637, &qword_1003A03F0, &qword_1002C3D88);
        v639 = v965;
        swift_beginAccess();
        sub_100065074(v639, v637 + v635, &qword_1003A03F0, &qword_1002C3D88);
        v640 = v968;
        swift_beginAccess();
        sub_100065074(v640, v637 + 2 * v635, &qword_1003A03F0, &qword_1002C3D88);
        v1003 = v635;
        v641 = v963;
        swift_beginAccess();
        sub_100065074(v641, v637 + 3 * v635, &qword_1003A03F0, &qword_1002C3D88);
        v642 = (v993 + 48);
        v643 = _swiftEmptyArrayStorage;
        v644 = 4;
        v987 = v637;
        v645 = v949;
        do
        {
          v646 = v955;
          sub_100065074(v637, v955, &qword_1003A03F0, &qword_1002C3D88);
          sub_1000829AC(v646, v645, &qword_1003A03F0, &qword_1002C3D88);
          if ((*v642)(v645, 1, v992) == 1)
          {
            sub_10000BD44(v645, &qword_1003A03F0, &qword_1002C3D88);
          }

          else
          {
            sub_100082B74(v645, v954, type metadata accessor for SLAMScript);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v643 = sub_10004DC8C(0, v643[2] + 1, 1, v643);
            }

            v648 = v643[2];
            v647 = v643[3];
            if (v648 >= v647 >> 1)
            {
              v643 = sub_10004DC8C((v647 > 1), v648 + 1, 1, v643);
            }

            v643[2] = v648 + 1;
            sub_100082B74(v954, v643 + ((*(v993 + 80) + 32) & ~*(v993 + 80)) + *(v993 + 72) * v648, type metadata accessor for SLAMScript);
            v645 = v949;
          }

          v637 += v1003;
          --v644;
        }

        while (v644);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v649 = v643[2];
        if (v649)
        {
          v650 = v643 + ((*(v993 + 80) + 32) & ~*(v993 + 80));
          v651 = *(v993 + 72);
          v652 = v895;
          v653 = v893;
          do
          {
            sub_10008289C(v650, v653, type metadata accessor for SLAMScript);
            sub_10007BCAC(v653);
            sub_100082008(v653, type metadata accessor for SLAMScript);
            v650 += v651;
            --v649;
          }

          while (v649);

          v560 = v966;
        }

        else
        {

          v560 = v966;
          v652 = v895;
        }

        v763 = *(v946 + 2);
        if (v763)
        {
          v764 = &v946[(*(v993 + 80) + 32) & ~*(v993 + 80)];
          v765 = *(v993 + 72);
          do
          {
            sub_10008289C(v764, v652, type metadata accessor for SLAMScript);
            sub_10007BCAC(v652);
            sub_100082008(v652, type metadata accessor for SLAMScript);
            v764 += v765;
            --v763;
          }

          while (v763);
        }

        v564 = v998;
        v565 = v995;
        (v995)(v976, v998);
        goto LABEL_137;
      }

      (*(v959 + 8))(v410, v981);

      sub_10001A074(v626, v630);
      v615 = 0;
      v617 = v997;
      v411 = v624;
    }
  }

  v678 = v992;
  (v915)(v411, v615, 1, v992);
  sub_100082A14(v411, v963, &qword_1003A03F0, &qword_1002C3D88);
  v679 = v902;
  sub_100065074(v965, v902, &qword_1003A03F0, &qword_1002C3D88);
  v680 = *(v993 + 48);
  v993 += 48;
  v681 = v680(v679, 1, v678);
  v682 = v903;
  if (v681 == 1)
  {
    v990 = v405;
    sub_10000BD44(v679, &qword_1003A03F0, &qword_1002C3D88);
  }

  else
  {
    sub_100082B74(v679, v903, type metadata accessor for SLAMScript);
    sub_10000BE18((v1021 + 528), *(v1021 + 552));
    v683 = v896;
    sub_10008D798(v896);
    sub_100095CC0(v683, 1);
    if (v405)
    {
      sub_10000BD44(&v1015, &qword_1003A0428, &qword_1002C3DD0);
      (*(v959 + 8))(v683, v981);
      sub_100082008(v682, type metadata accessor for SLAMScript);
      v684 = *(v617 + 8);
      v685 = v998;
      v684(v976, v998);
      v684(v988, v685);
      sub_10000BD44(v994, &qword_1003A0178, &unk_1002C3BB0);
      sub_10000BD44(v999, &qword_1003A0178, &unk_1002C3BB0);
      sub_10000BD44(v1001, &qword_1003A0178, &unk_1002C3BB0);

      sub_10000BD44(v963, &qword_1003A03F0, &qword_1002C3D88);
      sub_10000BD44(v968, &qword_1003A03F0, &qword_1002C3D88);
      sub_10000BD44(v965, &qword_1003A03F0, &qword_1002C3D88);
      sub_10000BD44(v966, &qword_1003A03F0, &qword_1002C3D88);
      sub_100082AD0(v1002, v980, v991, v989);
      return;
    }

    v990 = 0;
    (*(v959 + 8))(v683, v981);
    sub_100082008(v682, type metadata accessor for SLAMScript);
  }

  v748 = Logger.logObject.getter();
  v749 = static os_log_type_t.default.getter();
  v750 = os_log_type_enabled(v748, v749);
  v751 = v946;
  if (v750)
  {
    v752 = swift_slowAlloc();
    v753 = swift_slowAlloc();
    v1006[0] = v753;
    *v752 = 136446978;
    v754 = v965;
    swift_beginAccess();
    v755 = v992;
    v756 = v680(v754, 1, v992);
    v1021 = v753;
    if (v756)
    {
      v757 = 0;
      v758 = 0xE000000000000000;
    }

    else
    {
      v802 = (v754 + *(v755 + 36));
      v803 = *v802;
      v758 = v802[1];

      v757 = v803;
    }

    v804 = sub_100008F6C(v757, v758, v1006);

    *(v752 + 4) = v804;
    *(v752 + 12) = 2082;
    v805 = v966;
    swift_beginAccess();
    if (v680(v805, 1, v755))
    {
      v806 = 0;
      v807 = 0xE000000000000000;
    }

    else
    {
      v808 = (v805 + *(v755 + 36));
      v809 = *v808;
      v807 = v808[1];

      v806 = v809;
    }

    v810 = sub_100008F6C(v806, v807, v1006);

    *(v752 + 14) = v810;
    *(v752 + 22) = 2082;
    v811 = v968;
    swift_beginAccess();
    if (v680(v811, 1, v755))
    {
      v812 = 0;
      v813 = 0xE000000000000000;
    }

    else
    {
      v814 = (v811 + *(v755 + 36));
      v815 = *v814;
      v813 = v814[1];

      v812 = v815;
    }

    v816 = sub_100008F6C(v812, v813, v1006);

    *(v752 + 24) = v816;
    *(v752 + 32) = 2082;
    v817 = v963;
    swift_beginAccess();
    if (v680(v817, 1, v755))
    {
      v818 = 0;
      v819 = 0xE000000000000000;
    }

    else
    {
      v820 = (v817 + *(v755 + 36));
      v821 = *v820;
      v819 = v820[1];

      v818 = v821;
    }

    v759 = v966;
    v760 = v906;
    v822 = sub_100008F6C(v818, v819, v1006);

    *(v752 + 34) = v822;
    _os_log_impl(&_mh_execute_header, v748, v749, "LoadAndInstall: %{public}s, GlobalConfig: %{public}s, PartnerConfig: %{public}s, PartnerSAFConfig: %{public}s,", v752, 0x2Au);
    swift_arrayDestroy();

    v762 = v998;
    v761 = v997;
    v751 = v946;
  }

  else
  {

    v759 = v966;
    v760 = v906;
    v761 = v997;
    v762 = v998;
  }

  v823 = v965;
  swift_beginAccess();
  sub_100065074(v823, v908, &qword_1003A03F0, &qword_1002C3D88);
  swift_beginAccess();
  sub_100065074(v759, v909, &qword_1003A03F0, &qword_1002C3D88);
  v824 = v968;
  swift_beginAccess();
  sub_100065074(v824, v910, &qword_1003A03F0, &qword_1002C3D88);
  v825 = v963;
  swift_beginAccess();
  v826 = v825;
  v827 = v899;
  sub_100065074(v826, v899, &qword_1003A03F0, &qword_1002C3D88);
  v828 = *(v761 + 16);
  v828(v907, v976, v762);
  v829 = v898;
  v828(v898, v988, v762);
  sub_100065074(v994, v760, &qword_1003A0178, &unk_1002C3BB0);
  v830 = *(v996 + 248);
  v1012 = v830;
  if (v830)
  {
    LODWORD(v1021) = v1005[0];
    v1011 = *(v996 + 256);
    v831 = v1002;
    if (*(&v1011 + 1) >> 60 == 15)
    {
      goto LABEL_347;
    }

    v832 = v913;
    *v913 = v751;
    v833 = _s14InstallPackageVMa(0);
    sub_1000829AC(v908, &v832[v833[5]], &qword_1003A03F0, &qword_1002C3D88);
    sub_1000829AC(v909, &v832[v833[6]], &qword_1003A03F0, &qword_1002C3D88);
    sub_1000829AC(v910, &v832[v833[7]], &qword_1003A03F0, &qword_1002C3D88);
    sub_1000829AC(v827, &v832[v833[8]], &qword_1003A03F0, &qword_1002C3D88);
    v834 = v998;
    v835 = v922;
    (v922)(&v832[v833[9]], v907, v998);
    v835(&v832[v833[10]], v829, v834);
    sub_1000829AC(v906, &v832[v833[11]], &qword_1003A0178, &unk_1002C3BB0);
    v836 = &v832[v833[12]];
    v837 = v1016[0];
    *v836 = v1015;
    *(v836 + 1) = v837;
    *(v836 + 25) = *(v1016 + 9);
    v838 = &v832[v833[13]];
    v839 = v831;
    v840 = v980;
    *v838 = v831;
    *(v838 + 1) = v840;
    v841 = v991;
    v842 = v989;
    *(v838 + 2) = v991;
    *(v838 + 3) = v842;
    *(v838 + 4) = v1000;
    v838[40] = v1021;
    *&v832[v833[14]] = v830;
    *&v832[v833[15]] = v1011;
    v832[v833[16]] = 0;

    sub_100082A7C(v839, v840, v841, v842);
    sub_100065074(&v1012, v1004, &qword_1003A0430, &qword_1002C3DD8);
    sub_100065074(&v1011, v1004, &qword_1003A0438, &qword_1002C3DE0);
    v843 = *(v997 + 8);
    v844 = v998;
    v843(v976, v998);
    v843(v988, v844);
    sub_10000BD44(v994, &qword_1003A0178, &unk_1002C3BB0);
    sub_10000BD44(v999, &qword_1003A0178, &unk_1002C3BB0);
    sub_10000BD44(v1001, &qword_1003A0178, &unk_1002C3BB0);

    sub_10000BD44(v963, &qword_1003A03F0, &qword_1002C3D88);
    sub_10000BD44(v968, &qword_1003A03F0, &qword_1002C3D88);
    sub_10000BD44(v965, &qword_1003A03F0, &qword_1002C3D88);
    sub_10000BD44(v966, &qword_1003A03F0, &qword_1002C3D88);
    v736 = v1002;
    v737 = v840;
    v738 = v991;
    v739 = v842;
    goto LABEL_328;
  }

LABEL_346:
  __break(1u);
LABEL_347:
  __break(1u);
}

void sub_100071DB4(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v433 = a7;
  v434 = a8;
  v431 = a5;
  v432 = a6;
  v438 = a4;
  v466 = a2;
  v467 = a3;
  v475 = a1;
  v453 = *v9;
  *&v454 = v10;
  v457 = type metadata accessor for SESnapshot.ProposedKernelInfo();
  v459 = *(v457 - 8);
  v11 = __chkstk_darwin(v457);
  v448 = &v428 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v452 = (&v428 - v13);
  v14 = sub_100004074(&qword_1003A03F8, &qword_1002C3D90);
  v15 = __chkstk_darwin(v14 - 8);
  v447 = &v428 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v442 = &v428 - v18;
  __chkstk_darwin(v17);
  v462 = (&v428 - v19);
  v20 = type metadata accessor for SLAMScript(0);
  v477 = *(v20 - 8);
  v478 = v20;
  v21 = __chkstk_darwin(v20);
  v474 = &v428 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v481 = (&v428 - v23);
  v473 = _s14InstallPackageVMa(0);
  v24 = __chkstk_darwin(v473);
  v435 = &v428 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v440 = &v428 - v27;
  v28 = __chkstk_darwin(v26);
  v458 = &v428 - v29;
  v30 = __chkstk_darwin(v28);
  v456 = &v428 - v31;
  __chkstk_darwin(v30);
  v455 = &v428 - v32;
  v451 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
  v449 = *(v451 - 8);
  v33 = __chkstk_darwin(v451);
  v436 = &v428 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v445 = &v428 - v36;
  v37 = __chkstk_darwin(v35);
  v444 = &v428 - v38;
  v39 = __chkstk_darwin(v37);
  v479 = (&v428 - v40);
  v41 = __chkstk_darwin(v39);
  v450 = &v428 - v42;
  v43 = __chkstk_darwin(v41);
  v480 = &v428 - v44;
  __chkstk_darwin(v43);
  v487 = (&v428 - v45);
  v46 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v47 = __chkstk_darwin(v46 - 8);
  v437 = &v428 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v441 = &v428 - v50;
  v51 = __chkstk_darwin(v49);
  v443 = &v428 - v52;
  v53 = __chkstk_darwin(v51);
  v482 = (&v428 - v54);
  __chkstk_darwin(v53);
  v56 = (&v428 - v55);
  v57 = type metadata accessor for UUID();
  v58 = *(v57 - 8);
  v59 = __chkstk_darwin(v57);
  v439 = &v428 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59);
  v63 = &v428 - v62;
  __chkstk_darwin(v61);
  v65 = &v428 - v64;
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  v67 = sub_10000403C(v66, qword_1003A0278);
  v68 = *(v58 + 16);
  v68(v65, v466, v57);
  sub_100065074(v467, v56, &qword_1003A0178, &unk_1002C3BB0);
  v468 = v67;
  v69 = Logger.logObject.getter();
  LODWORD(v476) = static os_log_type_t.debug.getter();
  v70 = os_log_type_enabled(v69, v476);
  v472 = v63;
  v465 = v57;
  v470 = v58;
  if (v70)
  {
    v469 = v69;
    v71 = swift_slowAlloc();
    v464 = swift_slowAlloc();
    v483[0] = v464;
    *v71 = 136315394;
    v72 = _typeName(_:qualified:)();
    v74 = sub_100008F6C(v72, v73, v483);

    *(v71 + 4) = v74;
    *(v71 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1002C1790;
    *(v75 + 56) = &type metadata for String;
    *(v75 + 32) = 0x746E6573657270;
    *(v75 + 40) = 0xE700000000000000;
    *(v75 + 88) = v57;
    v76 = sub_10000BE5C((v75 + 64));
    v68(v76, v65, v57);
    v77 = v470;
    v78 = v482;
    sub_100065074(v56, v482, &qword_1003A0178, &unk_1002C3BB0);
    v79 = (*(v77 + 48))(v78, 1, v57);
    v463 = v56;
    if (v79 == 1)
    {
      sub_10000BD44(v78, &qword_1003A0178, &unk_1002C3BB0);
      *(v75 + 120) = &type metadata for String;
      *(v75 + 96) = 0;
      *(v75 + 104) = 0xE000000000000000;
    }

    else
    {
      v485 = v57;
      v80 = sub_10000BE5C(&v484);
      (*(v77 + 32))(v80, v78, v57);
      sub_100019D3C(&v484, (v75 + 96));
    }

    v81 = v476;
    v82 = showFunction(signature:_:)(0xD00000000000006FLL, 0x8000000100348B20, v75);
    v84 = v83;

    sub_10000BD44(v463, &qword_1003A0178, &unk_1002C3BB0);
    v463 = *(v77 + 8);
    v463(v65, v57);
    v85 = sub_100008F6C(v82, v84, v483);

    *(v71 + 14) = v85;
    v86 = v469;
    _os_log_impl(&_mh_execute_header, v469, v81, "%s.%s", v71, 0x16u);
    swift_arrayDestroy();

    v63 = v472;
  }

  else
  {

    sub_10000BD44(v56, &qword_1003A0178, &unk_1002C3BB0);
    v463 = *(v58 + 8);
    v463(v65, v57);
  }

  UUID.init()();
  sub_10000CCE4((v471 + 33), &v484);
  v87 = v485;
  v469 = v486;
  v461 = sub_10000BE18(&v484, v485);
  v446 = sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1690;
  *(inited + 32) = 0x655674656C707061;
  v460 = inited + 32;
  *(inited + 40) = 0xED00006E6F697372;
  v464 = v473[5];
  v89 = v487;
  sub_100065074(v475 + v464, v487, &qword_1003A03F0, &qword_1002C3D88);
  v90 = v478;
  v91 = v477[6];
  v476 = v477 + 6;
  v482 = v91;
  if ((v91)(v89, 1, v478) == 1)
  {
    sub_10000BD44(v89, &qword_1003A03F0, &qword_1002C3D88);
    v92 = (inited + 48);
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
  }

  else
  {
    v93 = (v89 + *(v90 + 36));
    v95 = *v93;
    v94 = v93[1];

    sub_100082008(v89, type metadata accessor for SLAMScript);
    v92 = (inited + 48);
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    if (v94)
    {
      *v92 = v95;
      v63 = v472;
      goto LABEL_15;
    }

    v63 = v472;
  }

  *v92 = 7104878;
  v94 = 0xE300000000000000;
LABEL_15:
  *(inited + 56) = v94;
  strcpy((inited + 88), "globalConfig");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  v96 = v473;
  v97 = UUID.uuidString.getter();
  *(inited + 128) = &type metadata for String;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = v97;
  *(inited + 112) = v98;
  strcpy((inited + 144), "partnerConfig");
  *(inited + 158) = -4864;
  v99 = v96[9];
  v100 = UUID.uuidString.getter();
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = &protocol witness table for String;
  *(inited + 160) = v100;
  *(inited + 168) = v101;
  *(inited + 200) = 1684632949;
  *(inited + 208) = 0xE400000000000000;
  v102 = UUID.uuidString.getter();
  *(inited + 240) = &type metadata for String;
  *(inited + 248) = &protocol witness table for String;
  *(inited + 216) = v102;
  *(inited + 224) = v103;
  v104 = v63;
  v105 = sub_100184010(inited);
  swift_setDeallocating();
  v106 = sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
  swift_arrayDestroy();
  sub_1000C2288(0x1Du, v105, v87, v469);

  sub_10000959C(&v484);
  static Double.longWait.getter();
  v108 = sub_1000827B8(v107);
  if (!v108)
  {
    sub_100020148(2026, 0, 0, 0);
    swift_willThrow();
    v126 = v104;
    goto LABEL_119;
  }

  v460 = v99;
  v109 = qword_10039D3C0;
  v110 = v108;
  if (v109 != -1)
  {
    swift_once();
  }

  v111 = v454;
  NFSecureElementManagerSession.select(_:)(AID_PAY_APPLET, *algn_1003A6A98);
  v112 = v475;
  v469 = v110;
  v113 = v455;
  v114 = v456;
  if (v111)
  {

    swift_errorRetain();
    v115 = sub_100171840(25392, v111);

    if (v115)
    {
      v116 = Logger.logObject.getter();
      v117 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        *&v484 = swift_slowAlloc();
        *v118 = 136315394;
        v119 = _typeName(_:qualified:)();
        v121 = sub_100008F6C(v119, v120, &v484);

        *(v118 + 4) = v121;
        *(v118 + 12) = 2080;
        v122 = showFunction(signature:_:)(0xD00000000000006FLL, 0x8000000100348B20, _swiftEmptyArrayStorage);
        v124 = sub_100008F6C(v122, v123, &v484);

        *(v118 + 14) = v124;
        _os_log_impl(&_mh_execute_header, v116, v117, "%s.%s Cannot select pay applet during install. May be from prohibit timer.", v118, 0x16u);
        swift_arrayDestroy();
        v110 = v469;
      }

      v125 = v472;
      sub_100020148(2009, 0, 0, 0);
      swift_willThrow();
      [v110 endSession];

      v126 = v125;
      goto LABEL_119;
    }

    v461 = 0;
  }

  else
  {

    v461 = 0;
  }

  sub_10008289C(v112, v113, _s14InstallPackageVMa);
  sub_10008289C(v112, v114, _s14InstallPackageVMa);
  v127 = v458;
  sub_10008289C(v112, v458, _s14InstallPackageVMa);
  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.default.getter();
  v130 = os_log_type_enabled(v128, v129);
  v430 = v106;
  *&v454 = v111;
  if (v130)
  {
    LODWORD(v453) = v129;
    v487 = v128;
    v131 = swift_slowAlloc();
    v429 = swift_slowAlloc();
    *&v484 = v429;
    *v131 = 136315906;
    if (v111)
    {
      v132 = 7630702;
    }

    else
    {
      v132 = 0x79646165726C61;
    }

    if (v111)
    {
      v133 = 0xE300000000000000;
    }

    else
    {
      v133 = 0xE700000000000000;
    }

    v134 = v113;
    v135 = sub_100008F6C(v132, v133, &v484);

    *(v131 + 4) = v135;
    *(v131 + 12) = 2080;
    v136 = v473;
    v137 = sub_100055298();
    v139 = v138;
    sub_100082008(v134, _s14InstallPackageVMa);
    v140 = sub_100008F6C(v137, v139, &v484);

    *(v131 + 14) = v140;
    *(v131 + 22) = 2080;
    v141 = sub_100055298();
    v143 = v142;
    sub_100082008(v114, _s14InstallPackageVMa);
    v144 = sub_100008F6C(v141, v143, &v484);

    *(v131 + 24) = v144;
    *(v131 + 32) = 2080;
    v145 = v443;
    sub_100065074(&v458[v136[11]], v443, &qword_1003A0178, &unk_1002C3BB0);
    v146 = v465;
    if ((*(v470 + 48))(v145, 1, v465) == 1)
    {
      v147 = 4271950;
      sub_10000BD44(v145, &qword_1003A0178, &unk_1002C3BB0);
      v148 = 0xE300000000000000;
    }

    else
    {
      v147 = sub_100055298();
      v148 = v150;
      v463(v145, v146);
    }

    v149 = v478;
    sub_100082008(v458, _s14InstallPackageVMa);
    v151 = sub_100008F6C(v147, v148, &v484);

    *(v131 + 34) = v151;
    v152 = v487;
    _os_log_impl(&_mh_execute_header, v487, v453, "An applet is %s installed. globalID: %s, profileID: %s, 2nd profile ID: %s", v131, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_100082008(v127, _s14InstallPackageVMa);
    sub_100082008(v114, _s14InstallPackageVMa);
    sub_100082008(v113, _s14InstallPackageVMa);
    v149 = v478;
  }

  v453 = a9;
  sub_100004074(&qword_1003A03E8, &qword_1002C3D80);
  v153 = *(v449 + 72);
  v154 = (*(v449 + 80) + 32) & ~*(v449 + 80);
  v458 = swift_allocObject();
  v155 = &v458[v154];
  v156 = v475;
  sub_100065074(v475 + v464, &v458[v154], &qword_1003A03F0, &qword_1002C3D88);
  v157 = v473;
  v455 = v473[6];
  sub_100065074(v156 + v455, &v155[v153], &qword_1003A03F0, &qword_1002C3D88);
  sub_100065074(v156 + v157[7], &v155[2 * v153], &qword_1003A03F0, &qword_1002C3D88);
  sub_100065074(v156 + v157[8], &v155[3 * v153], &qword_1003A03F0, &qword_1002C3D88);
  v158 = 4;
  v456 = v155;
  v159 = v155;
  v487 = _swiftEmptyArrayStorage;
  do
  {
    v160 = v480;
    sub_100065074(v159, v480, &qword_1003A03F0, &qword_1002C3D88);
    v161 = v160;
    v162 = v479;
    sub_1000829AC(v161, v479, &qword_1003A03F0, &qword_1002C3D88);
    if ((v482)(v162, 1, v149) == 1)
    {
      sub_10000BD44(v162, &qword_1003A03F0, &qword_1002C3D88);
    }

    else
    {
      sub_100082B74(v162, v481, type metadata accessor for SLAMScript);
      v163 = v487;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v163 = sub_10004DC8C(0, v163[2].isa + 1, 1, v163);
      }

      isa = v163[2].isa;
      v164 = v163[3].isa;
      v487 = v163;
      if (isa >= v164 >> 1)
      {
        v487 = sub_10004DC8C((v164 > 1), isa + 1, 1, v487);
      }

      v166 = v487;
      v487[2].isa = (isa + 1);
      sub_100082B74(v481, v166 + ((*(v477 + 80) + 32) & ~*(v477 + 80)) + v477[9] * isa, type metadata accessor for SLAMScript);
      v149 = v478;
    }

    v159 += v153;
    --v158;
  }

  while (v158);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v167 = v475;
  v168 = v450;
  sub_100065074(v475 + v464, v450, &qword_1003A03F0, &qword_1002C3D88);
  v169 = v482;
  v170 = (v482)(v168, 1, v149);
  sub_10000BD44(v168, &qword_1003A03F0, &qword_1002C3D88);
  if (v170 == 1)
  {
    v171 = v444;
    sub_100065074(v167 + v455, v444, &qword_1003A03F0, &qword_1002C3D88);
    v172 = v169(v171, 1, v149);
    sub_10000BD44(v171, &qword_1003A03F0, &qword_1002C3D88);
    v173 = v471;
    if (v172 == 1)
    {
      v174 = &off_10037E330;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v174 = sub_10004D4B0(0, 2, 1, &off_10037E330);
      }

      v176 = *(v174 + 2);
      v175 = *(v174 + 3);
      if (v176 >= v175 >> 1)
      {
        v174 = sub_10004D4B0((v175 > 1), v176 + 1, 1, v174);
      }

      *(v174 + 2) = v176 + 1;
      v177 = &v174[16 * v176];
      *(v177 + 4) = 0x6C61626F6C67;
      *(v177 + 5) = 0xE600000000000000;
      goto LABEL_70;
    }

    if (v454 || !sub_10007C3C8(0))
    {
      v189 = Logger.logObject.getter();
      v190 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        *v191 = 0;
        v192 = "Install global config: failed to reset keys.";
        goto LABEL_68;
      }
    }

    else
    {
      v189 = Logger.logObject.getter();
      v190 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        *v191 = 0;
        v192 = "Install global config: reset CAPK and CRL.";
LABEL_68:
        _os_log_impl(&_mh_execute_header, v189, v190, v192, v191, 2u);
      }
    }

    v174 = &off_10037E330;
LABEL_70:
    v193 = v461;
    v194 = sub_100090AB0();
    if (v193)
    {
      v461 = 0;
      swift_errorRetain();
      v195 = Logger.logObject.getter();
      v196 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        *v197 = 138412290;
        swift_errorRetain();
        v199 = _swift_stdlib_bridgeErrorToNSError();
        *(v197 + 4) = v199;
        *v198 = v199;
        _os_log_impl(&_mh_execute_header, v195, v196, "failed to retrieve profile list: %@", v197, 0xCu);
        sub_10000BD44(v198, &unk_10039E220, &qword_1002C3D60);

        v167 = v475;
      }

      else
      {
      }

      v187 = _swiftEmptyArrayStorage;
      v182 = v469;
      v183 = v466;
      v188 = v467;
    }

    else
    {
      v200 = v194;
      v480 = v174;

      v201 = Logger.logObject.getter();
      v202 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v201, v202))
      {
        v203 = swift_slowAlloc();
        v481 = swift_slowAlloc();
        *&v484 = v481;
        *v203 = 136315138;
        v204 = Array.description.getter();
        v206 = sub_100008F6C(v204, v205, &v484);

        *(v203 + 4) = v206;
        _os_log_impl(&_mh_execute_header, v201, v202, "existing configs: %s", v203, 0xCu);
        sub_10000959C(v481);
      }

      __chkstk_darwin(v207);
      *(&v428 - 2) = v475;
      v481 = sub_1000653D4(sub_10008296C, (&v428 - 4), v200);
      v208 = v173[38];
      sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
      v209 = swift_allocObject();
      *(v209 + 16) = xmmword_1002C1670;
      *(v209 + 32) = 3;
      *&v484 = v200;
      sub_100004074(&qword_10039E270, &unk_1002C3BE0);
      sub_100064238();
      v210 = BidirectionalCollection<>.joined(separator:)();
      *(v209 + 64) = &type metadata for String;
      *(v209 + 40) = v210;
      *(v209 + 48) = v211;
      *(v209 + 72) = 2;
      v212 = *(v200 + 16);

      *(v209 + 104) = &type metadata for Int;
      *(v209 + 80) = v212;
      v213 = sub_100184144(v209);
      swift_setDeallocating();
      sub_100004074(&qword_10039FED8, &unk_1002C37D0);
      swift_arrayDestroy();
      v214 = swift_deallocClassInstance();
      v215 = *(v208 + 56);
      __chkstk_darwin(v214);
      *(&v428 - 2) = v213;
      os_unfair_lock_lock((v215 + 32));
      sub_10006535C((v215 + 16));
      v461 = 0;
      os_unfair_lock_unlock((v215 + 32));

      v173 = v471;
      v167 = v475;
      v182 = v469;
      v183 = v466;
      v188 = v467;
      v174 = v480;
      v187 = v481;
    }

    goto LABEL_78;
  }

  v178 = Logger.logObject.getter();
  v179 = static os_log_type_t.default.getter();
  v180 = os_log_type_enabled(v178, v179);
  v173 = v471;
  if (v180)
  {
    v181 = swift_slowAlloc();
    *v181 = 0;
    _os_log_impl(&_mh_execute_header, v178, v179, "fresh install of kernel", v181, 2u);
  }

  v182 = v469;
  v183 = v466;
  if (!v454 && sub_10007C3C8(0))
  {
    v184 = Logger.logObject.getter();
    v185 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      *v186 = 0;
      _os_log_impl(&_mh_execute_header, v184, v185, "reset CAPK and CRL for the old kernel", v186, 2u);
      v182 = v469;
    }
  }

  v174 = 0;
  v187 = _swiftEmptyArrayStorage;
  v188 = v467;
  v167 = v475;
LABEL_78:
  sub_10000BE18(v173 + 13, v173[16]);
  v481 = v187;
  sub_10003E51C(v187);
  v216 = v188;
  v217 = v182;
  sub_10007C874(v183, v216, v167, v182);
  v218 = v462;
  if (v174)
  {
    v219 = v173[36];
    v479 = v173[37];
    v467 = sub_10000BE18(v173 + 33, v219);
    v220 = v174;
    v221 = swift_allocObject();
    *(v221 + 16) = xmmword_1002C1670;
    *(v221 + 32) = 1684631668;
    *(v221 + 40) = 0xE400000000000000;
    v222 = UUID.uuidString.getter();
    *(v221 + 72) = &type metadata for String;
    *(v221 + 48) = v222;
    *(v221 + 56) = v223;
    *(v221 + 80) = &protocol witness table for String;
    *(v221 + 88) = 1701869940;
    *(v221 + 96) = 0xE400000000000000;
    *&v484 = v220;
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    v224 = v220;
    sub_100064238();
    v225 = BidirectionalCollection<>.joined(separator:)();
    *(v221 + 128) = &type metadata for String;
    *(v221 + 136) = &protocol witness table for String;
    *(v221 + 104) = v225;
    *(v221 + 112) = v226;
    v227 = sub_100184010(v221);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v228 = v219;
    v217 = v469;
    v218 = v462;
    sub_1000C2288(0x11u, v227, v228, v479);
    v174 = v224;
  }

  v229 = v459;
  v230 = *(v459 + 56);
  v231 = v457;
  v230(v218, 1, 1, v457);
  v479 = v487[2].isa;
  if (v479)
  {
    v232 = v445;
    sub_100065074(v475 + v464, v445, &qword_1003A03F0, &qword_1002C3D88);
    v233 = (v482)(v232, 1, v478);
    sub_10000BD44(v232, &qword_1003A03F0, &qword_1002C3D88);
    if (v233 == 1)
    {
      v480 = v174;
      v234 = v442;
      SESnapshot.ProposedKernelInfo.init(nvm:cod:cor:idx:)();
      v235 = v469;
    }

    else
    {
      sub_10000BE18(v471 + 66, v471[69]);
      v235 = v469;
      v236 = v461;
      sub_100095A94(v469, 0);
      if (v236)
      {
        sub_10000BD44(v218, &qword_1003A03F8, &qword_1002C3D90);

        [v235 endSession];

        goto LABEL_86;
      }

      v480 = v174;
      v461 = 0;
      v234 = v442;
      SESnapshot.ProposedKernelInfo.init(nvm:cod:cor:idx:)();
    }

    sub_10000BD44(v218, &qword_1003A03F8, &qword_1002C3D90);
    v231 = v457;
    v230(v234, 0, 1, v457);
    sub_1000829AC(v234, v218, &qword_1003A03F8, &qword_1002C3D90);
    v229 = v459;
  }

  else
  {
    v480 = v174;
    v235 = v217;
  }

  v237 = v447;
  sub_100065074(v218, v447, &qword_1003A03F8, &qword_1002C3D90);
  v238 = (*(v229 + 48))(v237, 1, v231);
  v239 = v472;
  v240 = v452;
  v241 = v448;
  if (v238 != 1)
  {
    (*(v229 + 32))(v452, v237, v231);
    (*(v229 + 16))(v241, v240, v231);
    v247 = v231;
    v248 = Logger.logObject.getter();
    v249 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v248, v249))
    {
      v250 = swift_slowAlloc();
      v251 = swift_slowAlloc();
      *&v484 = v251;
      *v250 = 136315138;
      v252 = SESnapshot.ProposedKernelInfo.description.getter();
      v254 = v253;
      v255 = v247;
      v256 = *(v459 + 8);
      (v256)(v241, v255);
      v257 = sub_100008F6C(v252, v254, &v484);
      v258 = v480;

      *(v250 + 4) = v257;
      _os_log_impl(&_mh_execute_header, v248, v249, "Evaluated kernel asset: %s", v250, 0xCu);
      sub_10000959C(v251);
      v239 = v472;

      v235 = v469;

      v259 = v256;
      v260 = v461;
      v242 = v487;
    }

    else
    {

      v259 = *(v229 + 8);
      (v259)(v241, v231);
      v260 = v461;
      v242 = v487;
      v258 = v480;
    }

    [v235 endSession];
    v244 = v452;
    v261 = sub_1000365F0(v452);
    if (v260)
    {
    }

    else
    {
      v461 = 0;
      v262 = v261;
      static Double.longWait.getter();
      v264 = sub_1000827B8(v263);
      if (v264)
      {
        v218 = v264;

        if (v262)
        {
          v480 = v258;

          (v259)(v244, v457);
          v235 = v218;
          goto LABEL_102;
        }

        v469 = v259;
        v284 = Logger.logObject.getter();
        v285 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v284, v285))
        {
          v286 = swift_slowAlloc();
          *v286 = 0;
          _os_log_impl(&_mh_execute_header, v284, v285, "Kernel asset will not fit on the SE", v286, 2u);
        }

        if ((v438 & 1) == 0)
        {

          v235 = v218;
LABEL_129:

          sub_100020148(2028, 0, 0, 0);
          swift_willThrow();

          (v469)(v244, v457);
          sub_10000BD44(v462, &qword_1003A03F8, &qword_1002C3D90);
LABEL_117:

          [v235 endSession];

          v126 = v239;
          goto LABEL_119;
        }

        v480 = v258;
        v287 = v471;
        swift_beginAccess();
        v288 = v287[48];
        v289 = sub_10000BE18(v287 + 45, v288);
        v290 = *&v288[-2]._os_unfair_lock_opaque;
        __chkstk_darwin(v289);
        v292 = &v428 - ((v291 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v290 + 16))(v292);
        v293 = [*(*v292 + 16) serialNumber];
        if (!v293)
        {
          __break(1u);
          os_unfair_lock_unlock(0);
          __break(1u);
          os_unfair_lock_unlock(&v242[4]);
          __break(1u);
LABEL_210:
          os_unfair_lock_unlock(v288 + 8);
          __break(1u);
          return;
        }

        v294 = v293;

        v295 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v297 = v296;

        (*(v290 + 8))(v292, v288);
        v298 = v461;
        v299 = sub_100036A44(v218, v295, v297);
        if (v298)
        {

          (v469)(v452, v457);
          sub_10000BD44(v462, &qword_1003A03F8, &qword_1002C3D90);

          [v218 endSession];

          goto LABEL_86;
        }

        v265 = v299;
        v461 = 0;

        [v218 endSession];
        v409 = Logger.logObject.getter();
        v410 = static os_log_type_t.info.getter();
        v411 = os_log_type_enabled(v409, v410);
        v244 = v452;
        v242 = v487;
        if (v411)
        {
          v412 = swift_slowAlloc();
          *v412 = 0;
          _os_log_impl(&_mh_execute_header, v409, v410, "Launching SE storage management sheet", v412, 2u);
        }

        v413 = v461;
        LOBYTE(v267) = sub_100036E04(v265, v244, v431, v432, v433, v434);
        v278 = v413;
        v239 = v472;
        if (!v413)
        {
          goto LABEL_205;
        }

LABEL_198:
        (v469)(v244, v457);
LABEL_98:
        sub_10000BD44(v462, &qword_1003A03F8, &qword_1002C3D90);
        v463(v239, v465);

        return;
      }

      sub_100020148(2026, 0, 0, 0);
      swift_willThrow();
    }

    (v259)(v244, v457);
    goto LABEL_98;
  }

  sub_10000BD44(v237, &qword_1003A03F8, &qword_1002C3D90);
  v242 = v487;
  if (!v453)
  {
    goto LABEL_103;
  }

LABEL_91:
  ObjectType = swift_getObjectType();
  v244 = sub_10009CAF8(3, ObjectType);
  for (i = v245; ; i = 0)
  {
    v265 = v242[2].isa;
    v469 = v235;
    v481 = v244;
    if (!v265)
    {
      break;
    }

    v467 = i;
    *&v484 = _swiftEmptyArrayStorage;
    v266 = v235;
    sub_10004E424(0, v265, 0);
    v267 = v484;
    v268 = v242 + ((*(v477 + 80) + 32) & ~*(v477 + 80));
    v269 = v477[9];
    do
    {
      v270 = v267;
      v271 = v474;
      sub_10008289C(v268, v474, type metadata accessor for SLAMScript);
      v272 = *(v271 + *(v478 + 20));
      sub_100082008(v271, type metadata accessor for SLAMScript);
      v267 = v270;
      *&v484 = v270;
      v273 = v270[2];
      v274 = v267[3];
      v275 = v273 + 1;
      if (v273 >= v274 >> 1)
      {
        sub_10004E424((v274 > 1), v273 + 1, 1);
        v267 = v484;
      }

      v267[2] = v275;
      v267[v273 + 4] = v272;
      v268 += v269;
      v265 = (v265 - 1);
    }

    while (v265);
    v239 = v472;
    v218 = v462;
    v242 = v487;
    i = v467;
    v244 = v481;
LABEL_112:
    v278 = 0;
    v279 = 4;
    while (1)
    {
      v280 = v267[v279];
      v281 = __OFADD__(v278, v280);
      v278 = (v278 + v280);
      if (v281)
      {
        break;
      }

      ++v279;
      if (!--v275)
      {
        goto LABEL_115;
      }
    }

    __break(1u);
LABEL_205:
    v461 = v278;
    v425 = v267;
    static Double.longWait.getter();
    v427 = sub_1000827B8(v426);
    if (!v427)
    {

      sub_100020148(2026, 0, 0, 0);
      swift_willThrow();

      goto LABEL_198;
    }

    v235 = v427;

    if ((v425 & 1) == 0)
    {
      goto LABEL_129;
    }

    (v469)(v244, v457);

LABEL_102:
    v218 = v462;
    if (v453)
    {
      goto LABEL_91;
    }

LABEL_103:
    v244 = 0;
  }

  v276 = v235;
  v275 = _swiftEmptyArrayStorage[2];
  v277 = v276;
  if (v275)
  {
    v239 = v472;
    v267 = _swiftEmptyArrayStorage;
    goto LABEL_112;
  }

  v278 = 0;
  v239 = v472;
LABEL_115:

  v485 = sub_10000411C(0, &qword_10039E4D8, NFSecureElementManagerSession_ptr);
  v486 = sub_100082904();
  v235 = v469;
  *&v484 = v469;
  type metadata accessor for SLAMSwift();
  v282 = swift_allocObject();
  *(v282 + 88) = sub_1001846E4(_swiftEmptyArrayStorage);
  *(v282 + 96) = 0;
  sub_100029790(&v484, v282 + 16);
  *(v282 + 56) = v244;
  *(v282 + 64) = i;
  *(v282 + 72) = 0;
  *(v282 + 80) = v278;
  sub_1000696D8(v244, i);
  v283 = v461;
  sub_10007D7D0(v242, v282, v239);
  if (v283)
  {
    sub_10000BD44(v218, &qword_1003A03F8, &qword_1002C3D90);
    sub_1000048A0(v244, i);

    goto LABEL_117;
  }

  NFSecureElementManagerSession.select(_:)(AID_PAY_APPLET, *algn_1003A6A98);
  v300 = sub_10011DBA8();
  v302 = v301;
  v303 = v471[38];
  sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
  v304 = swift_initStackObject();
  v454 = xmmword_1002C1660;
  *(v304 + 16) = xmmword_1002C1660;
  *(v304 + 32) = 1;
  v305 = v304 + 32;
  v474 = v300;
  v466 = v302;
  if (v302)
  {
    v306 = &type metadata for String;
    v455 = v302;
    v477 = v302;
  }

  else
  {
    v300 = 0;
    v306 = 0;
    *(v304 + 56) = 0;
    v477 = 0xE300000000000000;
    v455 = 0xE800000000000000;
  }

  *(v304 + 40) = v300;
  *(v304 + 48) = v302;
  *(v304 + 64) = v306;
  v307 = v304;

  v308 = sub_100184144(v307);
  swift_setDeallocating();
  v309 = sub_10000BD44(v305, &qword_10039FED8, &unk_1002C37D0);
  v487 = v303;
  v310 = v303[7].isa;
  __chkstk_darwin(v309);
  *(&v428 - 2) = v308;
  os_unfair_lock_lock(v310 + 8);
  sub_10006535C(v310 + 2);
  v461 = 0;
  v467 = i;
  os_unfair_lock_unlock(v310 + 8);

  v311 = v475;
  v312 = v440;
  sub_10008289C(v475, v440, _s14InstallPackageVMa);

  v313 = Logger.logObject.getter();
  v314 = static os_log_type_t.default.getter();

  v315 = os_log_type_enabled(v313, v314);
  v457 = v302;
  if (v315)
  {
    v316 = swift_slowAlloc();
    v464 = swift_slowAlloc();
    *&v484 = v464;
    *v316 = 136315394;
    if (v466)
    {
      v317 = v474;
    }

    else
    {
      v317 = 4271950;
    }

    LODWORD(v459) = v314;
    v318 = sub_100008F6C(v317, v477, &v484);

    *(v316 + 4) = v318;
    *(v316 + 12) = 2080;
    v319 = v312;
    v320 = v473;
    v321 = v436;
    sub_100065074(v312 + v473[5], v436, &qword_1003A03F0, &qword_1002C3D88);
    v322 = (v482)(v321, 1, v478);
    sub_10000BD44(v321, &qword_1003A03F0, &qword_1002C3D88);
    if (v322 == 1)
    {
      v323 = 7302688;
    }

    else
    {
      v323 = 0;
    }

    if (v322 == 1)
    {
      v324 = 0xE300000000000000;
    }

    else
    {
      v324 = 0xE000000000000000;
    }

    sub_100082008(v319, _s14InstallPackageVMa);
    v325 = sub_100008F6C(v323, v324, &v484);
    v311 = v475;

    *(v316 + 14) = v325;
    _os_log_impl(&_mh_execute_header, v313, v459, "current version is %s after%s installation", v316, 0x16u);
    swift_arrayDestroy();

    v326 = v465;
  }

  else
  {

    sub_100082008(v312, _s14InstallPackageVMa);
    v326 = v465;
    v320 = v473;
  }

  v327 = v441;
  v328 = v311 + v320[13];
  v329 = *v328;
  v482 = *(v328 + 32);
  v330 = *(v328 + 40);
  v478 = v329;
  if (v329 == 1 || (v330 & 1) != 0)
  {
    v331 = Logger.logObject.getter();
    v332 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v331, v332))
    {
      v333 = swift_slowAlloc();
      *v333 = 0;
      _os_log_impl(&_mh_execute_header, v331, v332, "Could not retrieve saf storage duration", v333, 2u);
      v311 = v475;
    }

    v326 = v465;
  }

  LODWORD(v456) = v330;
  sub_100004074(&qword_1003A0408, &qword_1002C3D98);
  v334 = swift_allocObject();
  v334[4] = UUID.uuidString.getter();
  v477 = v334 + 4;
  v334[5] = v335;
  v464 = v320[11];
  sub_100065074(v311 + v464, v327, &qword_1003A0178, &unk_1002C3BB0);
  v458 = *(v470 + 48);
  v459 = v470 + 48;
  if ((v458)(v327, 1, v326) == 1)
  {
    sub_10000BD44(v327, &qword_1003A0178, &unk_1002C3BB0);
    v336 = 0;
    v337 = 0;
  }

  else
  {
    v338 = v326;
    v336 = UUID.uuidString.getter();
    v337 = v339;
    v463(v327, v338);
  }

  v340 = 0;
  v334[6] = v336;
  v334[7] = v337;
  v341 = v334 + 5;
  v342 = _swiftEmptyArrayStorage;
  v343 = v475;
LABEL_154:
  v344 = &v341[2 * v340];
  while (++v340 != 3)
  {
    v345 = v344 + 2;
    v346 = *v344;
    v344 += 2;
    if (v346)
    {
      v347 = *(v345 - 3);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v476 = v341;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v342 = sub_10004D4B0(0, *(v342 + 2) + 1, 1, v342);
      }

      v350 = *(v342 + 2);
      v349 = *(v342 + 3);
      if (v350 >= v349 >> 1)
      {
        v342 = sub_10004D4B0((v349 > 1), v350 + 1, 1, v342);
      }

      *(v342 + 2) = v350 + 1;
      v351 = &v342[16 * v350];
      *(v351 + 4) = v347;
      *(v351 + 5) = v346;
      v343 = v475;
      v341 = v476;
      goto LABEL_154;
    }
  }

  swift_setDeallocating();
  sub_100004074(&qword_1003A0410, &unk_1002C3DA0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v352 = (v343 + v473[12]);
  if (*v352 == 1)
  {
    v353 = 0;
  }

  else
  {
    v353 = v352[3];
  }

  v354 = v482;
  if (v478 == 1 || (v456 & 1) != 0)
  {
    v354 = -1;
  }

  v355.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (v353)
  {
    v356 = String._bridgeToObjectiveC()();
  }

  else
  {
    v356 = 0;
  }

  v357 = v462;
  v358 = [objc_allocWithZone(SPRInstallData) initWithKernelsInstalled:v355.super.isa countryCode:v356 safStorageDuration:v354];

  if (!v479)
  {

    v364 = Logger.logObject.getter();
    v365 = static os_log_type_t.default.getter();
    v366 = os_log_type_enabled(v364, v365);
    v367 = v467;
    if (v366)
    {
      v368 = swift_slowAlloc();
      *v368 = 0;
      _os_log_impl(&_mh_execute_header, v364, v365, "nothing was installed, skip profile activation", v368, 2u);

      sub_1000048A0(v481, v367);
    }

    else
    {
      sub_1000048A0(v481, v467);
    }

    v382 = v472;
    goto LABEL_187;
  }

  v288 = v487[7].isa;
  os_unfair_lock_lock(v288 + 8);
  v359 = v461;
  sub_10011C498(&v288[4], 1);
  if (v359)
  {
    goto LABEL_210;
  }

  os_unfair_lock_unlock(v288 + 8);
  v360 = v437;
  sub_100065074(v343 + v464, v437, &qword_1003A0178, &unk_1002C3BB0);
  v361 = v465;
  v362 = (v458)(v360, 1, v465);
  v363 = v439;
  if (v362 == 1)
  {
    sub_10000BD44(v360, &qword_1003A0178, &unk_1002C3BB0);
    goto LABEL_179;
  }

  (*(v470 + 32))(v439, v360, v361);
  v369 = sub_100055298();
  v371 = sub_10011F658(v369, v370);

  if (v371)
  {
    v463(v363, v361);
LABEL_179:
    v372 = sub_100055298();
    v374 = sub_10011F658(v372, v373);

    v375 = v487;
    if (v374)
    {

      v376 = v375[7].isa;
      os_unfair_lock_lock(v376 + 8);
      sub_10011CF8C(&v376[4], 1);
      v461 = 0;
      os_unfair_lock_unlock(v376 + 8);
      v377 = v471[36];
      v487 = v471[37];
      sub_10000BE18(v471 + 33, v377);
      v378 = swift_allocObject();
      *(v378 + 16) = v454;
      *(v378 + 32) = 1684632949;
      *(v378 + 40) = 0xE400000000000000;
      v379 = UUID.uuidString.getter();
      *(v378 + 72) = &type metadata for String;
      *(v378 + 80) = &protocol witness table for String;
      *(v378 + 48) = v379;
      *(v378 + 56) = v380;
      v381 = sub_100184010(v378);
      swift_setDeallocating();
      sub_10000BD44(v378 + 32, &qword_10039FEC8, &unk_1002C37B0);
      swift_deallocClassInstance();
      sub_1000C2288(0x1Eu, v381, v377, v487);
      v382 = v472;

      sub_1000048A0(v481, v467);
      v357 = v462;
LABEL_187:
      sub_10000BD44(v357, &qword_1003A03F8, &qword_1002C3D90);

      v394 = v469;
      [v469 endSession];

      v463(v382, v465);
      return;
    }

    v383 = Logger.logObject.getter();
    v384 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v383, v384))
    {
      v385 = swift_slowAlloc();
      *v385 = 0;
      _os_log_impl(&_mh_execute_header, v383, v384, "cannot activate config", v385, 2u);
    }

    v386 = v435;
    sub_10008289C(v475, v435, _s14InstallPackageVMa);
    v387 = Logger.logObject.getter();
    v388 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v387, v388))
    {
      v389 = swift_slowAlloc();
      v487 = swift_slowAlloc();
      *&v484 = v487;
      *v389 = 136446210;
      v390 = UUID.uuidString.getter();
      v392 = v391;
      sub_100082008(v386, _s14InstallPackageVMa);
      v393 = sub_100008F6C(v390, v392, &v484);

      *(v389 + 4) = v393;
      _os_log_impl(&_mh_execute_header, v387, v388, "Partner Profile ID: %{public}s", v389, 0xCu);
      sub_10000959C(v487);
    }

    else
    {

      sub_100082008(v386, _s14InstallPackageVMa);
    }

    v414 = v471;
    sub_10000CCE4((v471 + 33), &v484);
    v415 = v485;
    v487 = v486;
    v482 = sub_10000BE18(&v484, v485);
    v416 = swift_allocObject();
    *(v416 + 16) = xmmword_1002C1670;
    *(v416 + 32) = 1684631668;
    *(v416 + 40) = 0xE400000000000000;
    v417 = UUID.uuidString.getter();
    *(v416 + 72) = &type metadata for String;
    *(v416 + 48) = v417;
    *(v416 + 56) = v418;
    *(v416 + 80) = &protocol witness table for String;
    *(v416 + 88) = 7497078;
    *(v416 + 96) = 0xE300000000000000;
    *(v416 + 128) = &type metadata for String;
    *(v416 + 136) = &protocol witness table for String;
    if (v466)
    {
      v419 = v474;
    }

    else
    {
      v419 = 0x65756C61765F6F6ELL;
    }

    v420 = v455;
    *(v416 + 104) = v419;
    *(v416 + 112) = v420;
    v421 = sub_100184010(v416);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1000C2288(0x16u, v421, v415, v487);

    sub_10000959C(&v484);
    v422 = sub_10000BE18(v414 + 60, v414[63]);
    v423 = sub_100020148(2010, 0, 0, 0);
    sub_10013F4E4(v423, *v422);

    sub_100020148(2010, 0, 0, 0);
    swift_willThrow();

    sub_1000048A0(v481, v467);
    sub_10000BD44(v462, &qword_1003A03F8, &qword_1002C3D90);

    v424 = v469;
    [v469 endSession];

LABEL_86:
    v126 = v472;
LABEL_119:
    v463(v126, v465);
  }

  else
  {
    v395 = Logger.logObject.getter();
    v396 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v395, v396))
    {
      v397 = swift_slowAlloc();
      *v397 = 0;
      _os_log_impl(&_mh_execute_header, v395, v396, "Cannot activate SAF profile", v397, 2u);
    }

    sub_10000CCE4((v471 + 33), &v484);
    v398 = v485;
    v487 = v486;
    v482 = sub_10000BE18(&v484, v485);
    v399 = swift_allocObject();
    *(v399 + 16) = xmmword_1002C1670;
    *(v399 + 32) = 1684631668;
    *(v399 + 40) = 0xE400000000000000;
    v400 = v439;
    v401 = UUID.uuidString.getter();
    *(v399 + 72) = &type metadata for String;
    *(v399 + 48) = v401;
    *(v399 + 56) = v402;
    *(v399 + 80) = &protocol witness table for String;
    *(v399 + 88) = 7497078;
    *(v399 + 96) = 0xE300000000000000;
    *(v399 + 128) = &type metadata for String;
    *(v399 + 136) = &protocol witness table for String;
    if (v466)
    {
      v403 = v474;
    }

    else
    {
      v403 = 0x65756C61765F6F6ELL;
    }

    v404 = v455;
    *(v399 + 104) = v403;
    *(v399 + 112) = v404;
    v405 = sub_100184010(v399);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1000C2288(0x16u, v405, v398, v487);

    sub_10000959C(&v484);
    sub_100020148(2010, 0, 0, 0);
    swift_willThrow();

    sub_1000048A0(v481, v467);
    v406 = v465;
    v407 = v463;
    v463(v400, v465);
    sub_10000BD44(v462, &qword_1003A03F8, &qword_1002C3D90);

    v408 = v469;
    [v469 endSession];

    v407(v472, v406);
  }
}

void sub_100075824(os_unfair_lock_s *a1, char *a2, os_unfair_lock_s **a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v371 = a7;
  v372 = a8;
  v369 = a5;
  v370 = a6;
  v373 = a4;
  v413 = a2;
  v414 = a3;
  v419 = a1;
  v400 = *v9;
  v401 = v10;
  v11 = type metadata accessor for SESnapshot.ProposedKernelInfo();
  v12 = *(v11 - 8);
  v379 = v11;
  v380 = v12;
  __chkstk_darwin(v11);
  v381 = &v369 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for KernelAssetEvaluation();
  v15 = *(v14 - 8);
  v382 = v14;
  v383 = v15;
  v16 = __chkstk_darwin(v14);
  v385 = &v369 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v384 = &v369 - v18;
  v19 = type metadata accessor for KernelAsset();
  v398 = *(v19 - 8);
  v399 = v19;
  __chkstk_darwin(v19);
  v387 = &v369 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100004074(&qword_1003A0420, &qword_1002C3DC8);
  v22 = __chkstk_darwin(v21 - 8);
  v386 = &v369 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v394 = &v369 - v25;
  __chkstk_darwin(v24);
  v410 = &v369 - v26;
  v415 = _s14InstallPackageVMa(0);
  v27 = __chkstk_darwin(v415);
  v375 = &v369 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v404 = &v369 - v30;
  v31 = __chkstk_darwin(v29);
  v403 = &v369 - v32;
  __chkstk_darwin(v31);
  v402 = &v369 - v33;
  v34 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
  v35 = __chkstk_darwin(v34 - 8);
  v374 = &v369 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v389 = &v369 - v38;
  v39 = __chkstk_darwin(v37);
  *&v393 = &v369 - v40;
  __chkstk_darwin(v39);
  v408 = (&v369 - v41);
  v42 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v43 = __chkstk_darwin(v42 - 8);
  v377 = &v369 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v376 = &v369 - v46;
  v47 = __chkstk_darwin(v45);
  v388 = &v369 - v48;
  v49 = __chkstk_darwin(v47);
  v409 = (&v369 - v50);
  __chkstk_darwin(v49);
  v52 = &v369 - v51;
  v53 = type metadata accessor for UUID();
  v54 = *(v53 - 8);
  v55 = __chkstk_darwin(v53);
  v57 = &v369 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v55);
  v60 = &v369 - v59;
  __chkstk_darwin(v58);
  v62 = &v369 - v61;
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  v64 = sub_10000403C(v63, qword_1003A0278);
  v406 = *(v54 + 16);
  (v406)(v62, v413, v53);
  sub_100065074(v414, v52, &qword_1003A0178, &unk_1002C3BB0);
  v416 = v64;
  v65 = Logger.logObject.getter();
  LODWORD(v407) = static os_log_type_t.debug.getter();
  v66 = os_log_type_enabled(v65, v407);
  v418 = v60;
  v378 = v57;
  v411 = v54;
  v412 = v53;
  if (v66)
  {
    v405 = v65;
    v67 = swift_slowAlloc();
    v397 = swift_slowAlloc();
    v420[0] = v397;
    *v67 = 136315394;
    v68 = _typeName(_:qualified:)();
    v69 = v53;
    v71 = sub_100008F6C(v68, v70, v420);

    *(v67 + 4) = v71;
    *(v67 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1002C1790;
    *(v72 + 56) = &type metadata for String;
    *(v72 + 32) = 0x746E6573657270;
    *(v72 + 40) = 0xE700000000000000;
    *(v72 + 88) = v69;
    v73 = sub_10000BE5C((v72 + 64));
    (v406)(v73, v62, v69);
    v74 = v409;
    sub_100065074(v52, v409, &qword_1003A0178, &unk_1002C3BB0);
    v75 = v62;
    if ((*(v54 + 48))(v74, 1, v69) == 1)
    {
      sub_10000BD44(v74, &qword_1003A0178, &unk_1002C3BB0);
      *(v72 + 120) = &type metadata for String;
      *(v72 + 96) = 0;
      *(v72 + 104) = 0xE000000000000000;
    }

    else
    {
      v423 = v69;
      v76 = sub_10000BE5C(&v422);
      (*(v54 + 32))(v76, v74, v69);
      sub_100019D3C(&v422, (v72 + 96));
    }

    v77 = showFunction(signature:_:)(0xD000000000000069, 0x8000000100348D20, v72);
    v79 = v78;

    sub_10000BD44(v52, &qword_1003A0178, &unk_1002C3BB0);
    v409 = *(v54 + 8);
    (v409)(v75, v69);
    v80 = sub_100008F6C(v77, v79, v420);

    *(v67 + 14) = v80;
    v81 = v405;
    _os_log_impl(&_mh_execute_header, v405, v407, "%s.%s", v67, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000BD44(v52, &qword_1003A0178, &unk_1002C3BB0);
    v409 = *(v54 + 8);
    (v409)(v62, v53);
  }

  UUID.init()();
  sub_10000CCE4((v417 + 33), &v422);
  v406 = v424;
  v407 = v423;
  v405 = sub_10000BE18(&v422, v423);
  v390 = sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1690;
  strcpy((inited + 32), "appletVersion");
  *(inited + 46) = -4864;
  v83 = v415;
  v392 = *(v415 + 20);
  v84 = v408;
  sub_100065074(&v392[v419], v408, &qword_1003A03F0, &qword_1002C3D88);
  v85 = type metadata accessor for SLAMScript(0);
  v86 = *(v85 - 8);
  v87 = *(v86 + 48);
  v395 = v86 + 48;
  v396 = v87;
  v88 = v87(v84, 1, v85);
  v397 = v85;
  if (v88 == 1)
  {
    sub_10000BD44(v84, &qword_1003A03F0, &qword_1002C3D88);
    v89 = (inited + 48);
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
  }

  else
  {
    v90 = (v84 + *(v85 + 36));
    v92 = *v90;
    v91 = v90[1];

    sub_100082008(v84, type metadata accessor for SLAMScript);
    v89 = (inited + 48);
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    if (v91)
    {
      *v89 = v92;
      goto LABEL_14;
    }
  }

  *v89 = 7104878;
  v91 = 0xE300000000000000;
LABEL_14:
  *(inited + 56) = v91;
  strcpy((inited + 88), "globalConfig");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  v93 = UUID.uuidString.getter();
  *(inited + 128) = &type metadata for String;
  *(inited + 136) = &protocol witness table for String;
  *(inited + 104) = v93;
  *(inited + 112) = v94;
  strcpy((inited + 144), "partnerConfig");
  *(inited + 158) = -4864;
  v391 = *(v83 + 36);
  v95 = UUID.uuidString.getter();
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = &protocol witness table for String;
  *(inited + 160) = v95;
  *(inited + 168) = v96;
  *(inited + 200) = 1684632949;
  *(inited + 208) = 0xE400000000000000;
  v97 = v418;
  v98 = UUID.uuidString.getter();
  *(inited + 240) = &type metadata for String;
  *(inited + 248) = &protocol witness table for String;
  *(inited + 216) = v98;
  *(inited + 224) = v99;
  v100 = sub_100184010(inited);
  swift_setDeallocating();
  v101 = sub_100004074(&qword_10039FEC8, &unk_1002C37B0);
  swift_arrayDestroy();
  sub_1000C2288(0x1Du, v100, v407, v406);

  sub_10000959C(&v422);
  static Double.longWait.getter();
  v103 = sub_1000827B8(v102);
  if (!v103)
  {
    sub_100020148(2026, 0, 0, 0);
    swift_willThrow();
    v122 = v97;
LABEL_69:
    (v409)(v122, v412);
    return;
  }

  v104 = qword_10039D3C0;
  v105 = v103;
  if (v104 != -1)
  {
    swift_once();
  }

  v106 = v401;
  NFSecureElementManagerSession.select(_:)(AID_PAY_APPLET, *algn_1003A6A98);
  v107 = v419;
  v109 = v403;
  v108 = v404;
  v110 = v402;
  if (v106)
  {

    swift_errorRetain();
    v111 = sub_100171840(25392, v106);

    if (v111)
    {
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *&v422 = swift_slowAlloc();
        *v114 = 136315394;
        v115 = _typeName(_:qualified:)();
        v117 = sub_100008F6C(v115, v116, &v422);

        *(v114 + 4) = v117;
        *(v114 + 12) = 2080;
        v118 = showFunction(signature:_:)(0xD000000000000069, 0x8000000100348D20, _swiftEmptyArrayStorage);
        v120 = sub_100008F6C(v118, v119, &v422);

        *(v114 + 14) = v120;
        _os_log_impl(&_mh_execute_header, v112, v113, "%s.%s Cannot select pay applet during install. May be from prohibit timer.", v114, 0x16u);
        swift_arrayDestroy();
      }

      v121 = v418;
      sub_100020148(2009, 0, 0, 0);
      swift_willThrow();
      [v105 endSession];

      v122 = v121;
      goto LABEL_69;
    }

    v401 = v101;
    v407 = 0;
  }

  else
  {
    v401 = v101;

    v407 = 0;
  }

  sub_10008289C(v107, v110, _s14InstallPackageVMa);
  sub_10008289C(v107, v109, _s14InstallPackageVMa);
  sub_10008289C(v107, v108, _s14InstallPackageVMa);
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.default.getter();
  v125 = os_log_type_enabled(v123, v124);
  v408 = v105;
  if (v125)
  {
    LODWORD(v406) = v124;
    v126 = swift_slowAlloc();
    v405 = swift_slowAlloc();
    *&v422 = v405;
    *v126 = 136315906;
    if (v106)
    {
      v127 = 7630702;
    }

    else
    {
      v127 = 0x79646165726C61;
    }

    if (v106)
    {
      v128 = 0xE300000000000000;
    }

    else
    {
      v128 = 0xE700000000000000;
    }

    v129 = sub_100008F6C(v127, v128, &v422);

    *(v126 + 4) = v129;
    *(v126 + 12) = 2080;
    v130 = v415;
    v131 = sub_100055298();
    v133 = v132;
    sub_100082008(v110, _s14InstallPackageVMa);
    v134 = sub_100008F6C(v131, v133, &v422);

    *(v126 + 14) = v134;
    *(v126 + 22) = 2080;
    v135 = sub_100055298();
    v137 = v136;
    sub_100082008(v109, _s14InstallPackageVMa);
    v138 = sub_100008F6C(v135, v137, &v422);

    *(v126 + 24) = v138;
    *(v126 + 32) = 2080;
    v139 = v404;
    v140 = &v404[*(v130 + 44)];
    v141 = v388;
    sub_100065074(v140, v388, &qword_1003A0178, &unk_1002C3BB0);
    v142 = v412;
    if ((*(v411 + 48))(v141, 1, v412) == 1)
    {
      v143 = 4271950;
      sub_10000BD44(v141, &qword_1003A0178, &unk_1002C3BB0);
      v144 = 0xE300000000000000;
    }

    else
    {
      v143 = sub_100055298();
      v144 = v146;
      (v409)(v141, v142);
    }

    v145 = v397;
    sub_100082008(v139, _s14InstallPackageVMa);
    v147 = sub_100008F6C(v143, v144, &v422);

    *(v126 + 34) = v147;
    _os_log_impl(&_mh_execute_header, v123, v406, "An applet is %s installed. globalID: %s, profileID: %s, 2nd profile ID: %s", v126, 0x2Au);
    swift_arrayDestroy();

    v107 = v419;
  }

  else
  {

    sub_100082008(v108, _s14InstallPackageVMa);
    sub_100082008(v109, _s14InstallPackageVMa);
    sub_100082008(v110, _s14InstallPackageVMa);
    v145 = v397;
  }

  v148 = v393;
  sub_100065074(&v392[v107], v393, &qword_1003A03F0, &qword_1002C3D88);
  v149 = v396;
  v150 = v396(v148, 1, v145);
  sub_10000BD44(v148, &qword_1003A03F0, &qword_1002C3D88);
  if (v150 != 1)
  {
    v157 = Logger.logObject.getter();
    v158 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      *v159 = 0;
      _os_log_impl(&_mh_execute_header, v157, v158, "fresh install of kernel", v159, 2u);
    }

    v153 = 0;
    goto LABEL_54;
  }

  v151 = v389;
  sub_100065074(v107 + *(v415 + 24), v389, &qword_1003A03F0, &qword_1002C3D88);
  v152 = v149(v151, 1, v145);
  sub_10000BD44(v151, &qword_1003A03F0, &qword_1002C3D88);
  v153 = &off_10037E360;
  if (v152 == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v153 = sub_10004D4B0(0, 2, 1, &off_10037E360);
    }

    v155 = *(v153 + 2);
    v154 = *(v153 + 3);
    if (v155 >= v154 >> 1)
    {
      v153 = sub_10004D4B0((v154 > 1), v155 + 1, 1, v153);
    }

    *(v153 + 2) = v155 + 1;
    v156 = &v153[16 * v155];
    *(v156 + 4) = 0x6C61626F6C67;
    *(v156 + 5) = 0xE600000000000000;
  }

  v160 = v407;
  v161 = sub_100090AB0();
  if (v160)
  {
    v407 = 0;
    swift_errorRetain();
    v162 = Logger.logObject.getter();
    v163 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      *v164 = 138412290;
      swift_errorRetain();
      v166 = _swift_stdlib_bridgeErrorToNSError();
      *(v164 + 4) = v166;
      *v165 = v166;
      _os_log_impl(&_mh_execute_header, v162, v163, "failed to retrieve profile list: %@", v164, 0xCu);
      sub_10000BD44(v165, &unk_10039E220, &qword_1002C3D60);
    }

    else
    {
    }

LABEL_54:
    v186 = _swiftEmptyArrayStorage;
    v185 = v410;
    v176 = v417;
    goto LABEL_55;
  }

  v167 = v161;

  v168 = Logger.logObject.getter();
  v169 = static os_log_type_t.default.getter();

  v170 = os_log_type_enabled(v168, v169);
  v406 = v153;
  if (v170)
  {
    v171 = swift_slowAlloc();
    v407 = swift_slowAlloc();
    *&v422 = v407;
    *v171 = 136315138;
    v172 = Array.description.getter();
    v174 = sub_100008F6C(v172, v173, &v422);
    v107 = v419;

    *(v171 + 4) = v174;
    _os_log_impl(&_mh_execute_header, v168, v169, "existing configs: %s", v171, 0xCu);
    sub_10000959C(v407);
  }

  __chkstk_darwin(v175);
  *(&v369 - 2) = v107;
  v405 = sub_1000653D4(sub_1000833E0, (&v369 - 4), v167);
  v176 = v417;
  v177 = v417[38];
  sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_1002C1670;
  *(v178 + 32) = 3;
  *&v422 = v167;
  sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  sub_100064238();
  v179 = BidirectionalCollection<>.joined(separator:)();
  *(v178 + 64) = &type metadata for String;
  *(v178 + 40) = v179;
  *(v178 + 48) = v180;
  *(v178 + 72) = 2;
  v181 = *(v167 + 16);

  *(v178 + 104) = &type metadata for Int;
  *(v178 + 80) = v181;
  v182 = sub_100184144(v178);
  swift_setDeallocating();
  sub_100004074(&qword_10039FED8, &unk_1002C37D0);
  swift_arrayDestroy();
  v183 = swift_deallocClassInstance();
  v184 = *(v177 + 56);
  __chkstk_darwin(v183);
  *(&v369 - 2) = v182;
  os_unfair_lock_lock((v184 + 32));
  sub_10006535C((v184 + 16));
  v407 = 0;
  os_unfair_lock_unlock((v184 + 32));

  v185 = v410;
  v186 = v405;
  v153 = v406;
  v107 = v419;
LABEL_55:
  v188 = v413;
  v187 = v414;
  sub_10000BE18(v176 + 13, v176[16]);
  v405 = v186;
  sub_10003E51C(v186);
  sub_10007C874(v188, v187, v107, v408);
  v189 = v153;
  if (v153)
  {
    v190 = v176[36];
    v414 = v176[37];
    v413 = sub_10000BE18(v176 + 33, v190);
    v191 = swift_allocObject();
    *(v191 + 16) = xmmword_1002C1670;
    *(v191 + 32) = 1684631668;
    *(v191 + 40) = 0xE400000000000000;
    v192 = UUID.uuidString.getter();
    *(v191 + 72) = &type metadata for String;
    *(v191 + 48) = v192;
    *(v191 + 56) = v193;
    *(v191 + 80) = &protocol witness table for String;
    *(v191 + 88) = 1701869940;
    *(v191 + 96) = 0xE400000000000000;
    *&v422 = v189;
    sub_100004074(&qword_10039E270, &unk_1002C3BE0);
    sub_100064238();
    v194 = BidirectionalCollection<>.joined(separator:)();
    *(v191 + 128) = &type metadata for String;
    *(v191 + 136) = &protocol witness table for String;
    *(v191 + 104) = v194;
    *(v191 + 112) = v195;
    v196 = sub_100184010(v191);
    swift_setDeallocating();
    v107 = v419;
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v197 = v190;
    v185 = v410;
    sub_1000C2288(0x11u, v196, v197, v414);
    v176 = v417;
  }

  v406 = v189;
  v199 = v398;
  v198 = v399;
  (*(v398 + 56))(v185, 1, 1, v399);
  sub_10000BE18(v176 + 66, v176[69]);
  v200 = v394;
  v201 = v407;
  v202 = sub_100093C7C(v394, v107);
  if (v201)
  {

    swift_errorRetain();
    v203 = Logger.logObject.getter();
    v204 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      v206 = swift_slowAlloc();
      *&v422 = v206;
      *v205 = 136315138;
      swift_getErrorValue();
      v207 = Error.localizedDescription.getter();
      v209 = sub_100008F6C(v207, v208, &v422);

      *(v205 + 4) = v209;
      _os_log_impl(&_mh_execute_header, v203, v204, "Could not generate kernel asset: %s", v205, 0xCu);
      sub_10000959C(v206);
    }

    v210 = v408;
    swift_errorRetain();
    sub_100020148(2009, 0xD00000000000001FLL, 0x8000000100348CA0, v201);

    swift_willThrow();

    sub_10000BD44(v410, &qword_1003A0420, &qword_1002C3DC8);

    [v210 endSession];

    goto LABEL_68;
  }

  LODWORD(v414) = v202;
  sub_10000BD44(v185, &qword_1003A0420, &qword_1002C3DC8);
  sub_1000829AC(v200, v185, &qword_1003A0420, &qword_1002C3DC8);
  v211 = v386;
  sub_100065074(v185, v386, &qword_1003A0420, &qword_1002C3DC8);
  if ((*(v199 + 48))(v211, 1, v198) == 1)
  {

    sub_10000BD44(v211, &qword_1003A0420, &qword_1002C3DC8);
    goto LABEL_63;
  }

  v213 = v387;
  (*(v199 + 32))(v387, v211, v198);
  sub_10000BE18(v176 + 66, v176[69]);
  v214 = v385;
  sub_100095654(v408, v213);
  (*(v383 + 32))(v384, v214, v382);
  v215 = sub_1000980A0();
  v216 = Logger.logObject.getter();
  v217 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v216, v217))
  {
    v218 = swift_slowAlloc();
    v407 = v218;
    v413 = swift_slowAlloc();
    *&v422 = v413;
    *v218 = 136315138;
    v219 = [v215 description];
    v220 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v222 = v221;

    v176 = v417;
    v223 = sub_100008F6C(v220, v222, &v422);
    v199 = v398;

    v224 = v407;
    *(v407 + 4) = v223;
    _os_log_impl(&_mh_execute_header, v216, v217, "Evaluated kernel asset: %s", v224, 0xCu);
    sub_10000959C(v413);
  }

  if (v414)
  {
    sub_10000BE18(v176 + 66, v176[69]);
    sub_100095A94(v408, 0);
  }

  [v215 nvm];
  [v215 cod];
  [v215 cor];
  [v215 idx];
  v225 = v381;
  SESnapshot.ProposedKernelInfo.init(nvm:cod:cor:idx:)();
  [v408 endSession];
  v226 = sub_1000365F0(v225);
  v227 = 0;
  v414 = v215;
  v228 = v226;
  static Double.longWait.getter();
  v230 = sub_1000827B8(v229);
  if (!v230)
  {

    sub_100020148(2026, 0, 0, 0);
    swift_willThrow();

    (*(v380 + 8))(v381, v379);
    (*(v383 + 8))(v384, v382);
    (*(v199 + 8))(v387, v399);
    sub_10000BD44(v410, &qword_1003A0420, &qword_1002C3DC8);
    v328 = v412;
    v329 = v418;
    goto LABEL_71;
  }

  v231 = v230;

  v232 = v231;
  v233 = v399;
  v413 = v232;
  if ((v228 & 1) == 0)
  {
    v345 = Logger.logObject.getter();
    v346 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v345, v346))
    {
      v347 = swift_slowAlloc();
      *v347 = 0;
      _os_log_impl(&_mh_execute_header, v345, v346, "Kernel asset will not fit on the SE", v347, 2u);
    }

    if ((v373 & 1) == 0)
    {

      v408 = v413;
      goto LABEL_143;
    }

    swift_beginAccess();
    v296 = v176[48];
    v348 = sub_10000BE18(v176 + 45, v296);
    v408 = &v369;
    v349 = *&v296[-2]._os_unfair_lock_opaque;
    __chkstk_darwin(v348);
    v351 = &v369 - ((v350 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v349 + 16))(v351);
    v352 = [*(*v351 + 16) serialNumber];
    if (!v352)
    {
      __break(1u);
      os_unfair_lock_unlock(0);
      __break(1u);
LABEL_154:
      os_unfair_lock_unlock(v296 + 8);
      __break(1u);
      os_unfair_lock_unlock(v227 + 8);
      __break(1u);
      return;
    }

    v353 = v352;

    v354 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v356 = v355;

    (*(v349 + 8))(v351, v296);
    v357 = v413;
    v360 = sub_100036A44(v413, v354, v356);

    [v357 endSession];
    v361 = Logger.logObject.getter();
    v362 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v361, v362))
    {
      v363 = swift_slowAlloc();
      *v363 = 0;
      _os_log_impl(&_mh_execute_header, v361, v362, "Launching SE storage management sheet", v363, 2u);
    }

    v364 = sub_100036E04(v360, v381, v369, v370, v371, v372);
    v365 = v412;
    v199 = v398;
    v233 = v399;
    v366 = v364;
    static Double.longWait.getter();
    v408 = sub_1000827B8(v367);
    if (v408)
    {

      if (v366)
      {
        goto LABEL_75;
      }

LABEL_143:
      sub_100020148(2028, 0, 0, 0);
      swift_willThrow();

      (*(v380 + 8))(v381, v379);
      (*(v383 + 8))(v384, v382);
      (*(v199 + 8))(v387, v233);
      sub_10000BD44(v410, &qword_1003A0420, &qword_1002C3DC8);

      goto LABEL_146;
    }

    sub_100020148(2026, 0, 0, 0);
    swift_willThrow();

    v368 = v413;
    (*(v380 + 8))(v381, v379);
    (*(v383 + 8))(v384, v382);
    (*(v199 + 8))(v387, v233);
    sub_10000BD44(v410, &qword_1003A0420, &qword_1002C3DC8);
    v329 = v418;
    v328 = v365;
LABEL_71:
    (v409)(v329, v328);

    return;
  }

  v234 = v232;

  v408 = v234;
LABEL_75:
  v235 = a9;
  if (a9)
  {
    ObjectType = swift_getObjectType();
    v237 = sub_10009CAF8(3, ObjectType);
    v235 = v238;
  }

  else
  {
    v237 = sub_10007F294;
  }

  v358 = v384;
  sub_10000BE18(v417 + 66, v417[69]);
  sub_100095314(v408, v358, v237, v235);

  (*(v380 + 8))(v381, v379);
  (*(v383 + 8))(v358, v382);
  (*(v199 + 8))(v387, v233);
LABEL_63:
  v212 = v408;
  NFSecureElementManagerSession.select(_:)(AID_PAY_APPLET, *algn_1003A6A98);
  sub_10000BE18(v417 + 66, v417[69]);
  sub_100095890(v212);
  NFSecureElementManagerSession.select(_:)(AID_PAY_APPLET, *algn_1003A6A98);
  v239 = sub_10011DBA8();
  v241 = v240;
  v242 = v417[38];
  sub_100004074(&qword_10039FED0, &qword_1002C3BC0);
  v243 = swift_initStackObject();
  v244 = v243;
  *(v243 + 16) = xmmword_1002C1660;
  *(v243 + 32) = 1;
  v245 = v243 + 32;
  v413 = v241;
  v393 = xmmword_1002C1660;
  if (v241)
  {
    v246 = &type metadata for String;
    v394 = v241;
    v404 = v241;
    v247 = v241;
    v248 = v239;
  }

  else
  {
    v247 = 0;
    v248 = 0;
    v246 = 0;
    *(v243 + 56) = 0;
    v404 = 0xE300000000000000;
    v394 = 0xE800000000000000;
  }

  *(v243 + 40) = v248;
  *(v243 + 48) = v247;
  *(v243 + 64) = v246;

  v249 = sub_100184144(v244);
  swift_setDeallocating();
  v250 = sub_10000BD44(v245, &qword_10039FED8, &unk_1002C37D0);
  v414 = v242;
  v251 = v242[7];
  __chkstk_darwin(v250);
  *(&v369 - 2) = v249;
  os_unfair_lock_lock((v251 + 32));
  sub_10006535C((v251 + 16));
  v405 = 0;
  os_unfair_lock_unlock((v251 + 32));

  v252 = v419;
  v253 = v375;
  sub_10008289C(v419, v375, _s14InstallPackageVMa);

  v254 = Logger.logObject.getter();
  v255 = static os_log_type_t.default.getter();

  v256 = os_log_type_enabled(v254, v255);
  v407 = v239;
  v392 = v247;
  if (v256)
  {
    v257 = swift_slowAlloc();
    v403 = swift_slowAlloc();
    *&v422 = v403;
    *v257 = 136315394;
    if (v413)
    {
      v258 = v239;
    }

    else
    {
      v258 = 4271950;
    }

    LODWORD(v402) = v255;
    v259 = sub_100008F6C(v258, v404, &v422);

    *(v257 + 4) = v259;
    *(v257 + 12) = 2080;
    v260 = v415;
    v261 = v374;
    sub_100065074(v253 + *(v415 + 20), v374, &qword_1003A03F0, &qword_1002C3D88);
    v262 = v253;
    v263 = v396(v261, 1, v397);
    sub_10000BD44(v261, &qword_1003A03F0, &qword_1002C3D88);
    if (v263 == 1)
    {
      v264 = 7302688;
    }

    else
    {
      v264 = 0;
    }

    if (v263 == 1)
    {
      v265 = 0xE300000000000000;
    }

    else
    {
      v265 = 0xE000000000000000;
    }

    sub_100082008(v262, _s14InstallPackageVMa);
    v266 = sub_100008F6C(v264, v265, &v422);

    *(v257 + 14) = v266;
    _os_log_impl(&_mh_execute_header, v254, v402, "current version is %s after%s installation", v257, 0x16u);
    swift_arrayDestroy();

    v252 = v419;

    v268 = v411;
    v267 = v412;
  }

  else
  {

    sub_100082008(v253, _s14InstallPackageVMa);
    v268 = v411;
    v267 = v412;
    v260 = v415;
  }

  v269 = v376;
  v270 = v252 + v260[13];
  v271 = *v270;
  v404 = *(v270 + 4);
  LODWORD(v399) = v270[40];
  v398 = v271;
  if (v271 == 1 || (v399 & 1) != 0)
  {
    v272 = Logger.logObject.getter();
    v273 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v272, v273))
    {
      v274 = swift_slowAlloc();
      *v274 = 0;
      _os_log_impl(&_mh_execute_header, v272, v273, "Could not retrieve saf storage duration", v274, 2u);
    }
  }

  v420[22] = UUID.uuidString.getter();
  v421[0] = v275;
  v403 = v260[11];
  sub_100065074(v252 + v403, v269, &qword_1003A0178, &unk_1002C3BB0);
  v276 = *(v268 + 48);
  v402 = (v268 + 48);
  v400 = v276;
  if (v276(v269, 1, v267) == 1)
  {
    sub_10000BD44(v269, &qword_1003A0178, &unk_1002C3BB0);
    v277 = 0;
    v278 = 0;
  }

  else
  {
    v277 = UUID.uuidString.getter();
    v278 = v279;
    (v409)(v269, v267);
  }

  v280 = 0;
  v421[1] = v277;
  v421[2] = v278;
  v281 = _swiftEmptyArrayStorage;
LABEL_101:
  v282 = &v421[2 * v280];
  while (++v280 != 3)
  {
    v283 = v282 + 2;
    v284 = *v282;
    v282 += 2;
    if (v284)
    {
      v285 = v267;
      v286 = *(v283 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v281 = sub_10004D4B0(0, *(v281 + 2) + 1, 1, v281);
      }

      v288 = *(v281 + 2);
      v287 = *(v281 + 3);
      if (v288 >= v287 >> 1)
      {
        v281 = sub_10004D4B0((v287 > 1), v288 + 1, 1, v281);
      }

      *(v281 + 2) = v288 + 1;
      v289 = &v281[16 * v288];
      *(v289 + 4) = v286;
      *(v289 + 5) = v284;
      v267 = v285;
      v252 = v419;
      v260 = v415;
      goto LABEL_101;
    }
  }

  sub_100004074(&qword_1003A0410, &unk_1002C3DA0);
  swift_arrayDestroy();
  v290 = (&v252->_os_unfair_lock_opaque + v260[12]);
  if (*v290 == 1)
  {
    v291 = 0;
  }

  else
  {
    v291 = v290[3];
  }

  v292 = v404;
  if (v398 == 1 || (v399 & 1) != 0)
  {
    v292 = -1;
  }

  v293.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (v291)
  {
    v294 = String._bridgeToObjectiveC()();
  }

  else
  {
    v294 = 0;
  }

  v227 = v419;
  v295 = [objc_allocWithZone(SPRInstallData) initWithKernelsInstalled:v293.super.isa countryCode:v294 safStorageDuration:v292];

  v296 = *(v414 + 56);
  os_unfair_lock_lock(v296 + 8);
  v297 = v405;
  sub_10011C498(&v296[4], 1);
  if (v297)
  {
    goto LABEL_154;
  }

  os_unfair_lock_unlock(v296 + 8);
  v298 = v377;
  sub_100065074(v227 + v403, v377, &qword_1003A0178, &unk_1002C3BB0);
  v299 = v400(v298, 1, v267);
  v300 = v378;
  if (v299 == 1)
  {
    sub_10000BD44(v298, &qword_1003A0178, &unk_1002C3BB0);
LABEL_123:
    v304 = sub_100055298();
    v306 = sub_10011F658(v304, v305);

    v307 = v407;
    if (v306)
    {

      v308 = *(v414 + 56);
      os_unfair_lock_lock(v308 + 8);
      sub_10011CF8C(&v308[4], 1);
      os_unfair_lock_unlock(v308 + 8);
      v309 = v417[36];
      v419 = v417[37];
      v417 = sub_10000BE18(v417 + 33, v309);
      v310 = swift_initStackObject();
      *(v310 + 16) = v393;
      *(v310 + 32) = 1684632949;
      *(v310 + 40) = 0xE400000000000000;
      v311 = v418;
      v312 = UUID.uuidString.getter();
      *(v310 + 72) = &type metadata for String;
      *(v310 + 80) = &protocol witness table for String;
      *(v310 + 48) = v312;
      *(v310 + 56) = v313;
      v314 = sub_100184010(v310);
      swift_setDeallocating();
      sub_10000BD44(v310 + 32, &qword_10039FEC8, &unk_1002C37B0);
      sub_1000C2288(0x1Eu, v314, v309, v419);

      sub_10000BD44(v410, &qword_1003A0420, &qword_1002C3DC8);

      v315 = v408;
      [v408 endSession];

      (v409)(v311, v412);
      return;
    }

    v316 = Logger.logObject.getter();
    v317 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v316, v317))
    {
      v318 = swift_slowAlloc();
      *v318 = 0;
      _os_log_impl(&_mh_execute_header, v316, v317, "cannot activate config", v318, 2u);
    }

    v319 = v417;
    sub_10000CCE4((v417 + 33), &v422);
    v320 = v423;
    v416 = v424;
    sub_10000BE18(&v422, v423);
    v321 = swift_allocObject();
    *(v321 + 16) = xmmword_1002C1670;
    *(v321 + 32) = 1684631668;
    *(v321 + 40) = 0xE400000000000000;
    v322 = UUID.uuidString.getter();
    *(v321 + 72) = &type metadata for String;
    *(v321 + 48) = v322;
    *(v321 + 56) = v323;
    *(v321 + 80) = &protocol witness table for String;
    *(v321 + 88) = 7497078;
    *(v321 + 128) = &type metadata for String;
    *(v321 + 136) = &protocol witness table for String;
    v324 = 0x65756C61765F6F6ELL;
    if (v413)
    {
      v324 = v307;
    }

    *(v321 + 96) = 0xE300000000000000;
    *(v321 + 104) = v324;
    *(v321 + 112) = v394;
    v325 = sub_100184010(v321);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1000C2288(0x16u, v325, v320, v416);

    sub_10000959C(&v422);
    v326 = sub_10000BE18(v319 + 60, v319[63]);
    v327 = sub_100020148(2010, 0, 0, 0);
    sub_10013F4E4(v327, *v326);

    sub_100020148(2010, 0, 0, 0);
    swift_willThrow();

    sub_10000BD44(v410, &qword_1003A0420, &qword_1002C3DC8);

LABEL_146:
    v359 = v408;
    [v408 endSession];

LABEL_68:
    v122 = v418;
    goto LABEL_69;
  }

  (*(v411 + 32))(v378, v298, v267);
  v301 = sub_100055298();
  v303 = sub_10011F658(v301, v302);

  if (v303)
  {
    (v409)(v300, v267);
    goto LABEL_123;
  }

  v330 = Logger.logObject.getter();
  v331 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v330, v331))
  {
    v332 = swift_slowAlloc();
    *v332 = 0;
    _os_log_impl(&_mh_execute_header, v330, v331, "Cannot activate SAF profile", v332, 2u);
  }

  sub_10000CCE4((v417 + 33), &v422);
  v333 = v423;
  v419 = v424;
  sub_10000BE18(&v422, v423);
  v334 = swift_allocObject();
  *(v334 + 16) = xmmword_1002C1670;
  *(v334 + 32) = 1684631668;
  *(v334 + 40) = 0xE400000000000000;
  v335 = UUID.uuidString.getter();
  *(v334 + 72) = &type metadata for String;
  *(v334 + 48) = v335;
  *(v334 + 56) = v336;
  *(v334 + 80) = &protocol witness table for String;
  *(v334 + 88) = 7497078;
  *(v334 + 96) = 0xE300000000000000;
  *(v334 + 128) = &type metadata for String;
  *(v334 + 136) = &protocol witness table for String;
  if (v413)
  {
    v337 = v407;
  }

  else
  {
    v337 = 0x65756C61765F6F6ELL;
  }

  v338 = v394;
  *(v334 + 104) = v337;
  *(v334 + 112) = v338;
  v339 = v300;
  v340 = sub_100184010(v334);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000C2288(0x16u, v340, v333, v419);

  sub_10000959C(&v422);
  sub_100020148(2010, 0, 0, 0);
  swift_willThrow();

  v341 = v412;
  v342 = v339;
  v343 = v409;
  (v409)(v342, v412);
  sub_10000BD44(v410, &qword_1003A0420, &qword_1002C3DC8);

  v344 = v408;
  [v408 endSession];

  v343(v418, v341);
}

uint64_t sub_1000792D4(uint64_t a1)
{
  v39 = a1;
  v1 = type metadata accessor for SLAMScript(0);
  v38 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v40 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v34 - v4;
  v6 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
  v36 = *(v6 - 8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  v12 = type metadata accessor for OSSignpostID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  if (qword_10039D388 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for OSSignposter();
  sub_10000403C(v19, qword_1003A0290);
  static OSSignpostID.exclusive.getter();
  v20 = OSSignposter.logHandle.getter();
  LODWORD(v35) = static os_signpost_type_t.begin.getter();
  v21 = OS_os_log.signpostsEnabled.getter();
  v37 = v11;
  if (v21)
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, v35, v23, "config-install-postProcessing", "begin clean up after install", v22, 2u);
    v11 = v37;
  }

  (*(v13 + 16))(v16, v18, v12);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v35 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v13 + 8))(v18, v12);
  v24 = *(v39 + 16);
  if (v24)
  {
    v25 = v39 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v39 = *(v36 + 72);
    v26 = (v38 + 48);
    v27 = _swiftEmptyArrayStorage;
    v36 = v1;
    do
    {
      sub_100065074(v25, v11, &qword_1003A03F0, &qword_1002C3D88);
      sub_1000829AC(v11, v9, &qword_1003A03F0, &qword_1002C3D88);
      if ((*v26)(v9, 1, v1) == 1)
      {
        sub_10000BD44(v9, &qword_1003A03F0, &qword_1002C3D88);
      }

      else
      {
        sub_100082B74(v9, v40, type metadata accessor for SLAMScript);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_10004DC8C(0, v27[2] + 1, 1, v27);
        }

        v29 = v27[2];
        v28 = v27[3];
        if (v29 >= v28 >> 1)
        {
          v27 = sub_10004DC8C((v28 > 1), v29 + 1, 1, v27);
        }

        v27[2] = v29 + 1;
        sub_100082B74(v40, v27 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v29, type metadata accessor for SLAMScript);
        v1 = v36;
        v11 = v37;
      }

      v25 += v39;
      --v24;
    }

    while (v24);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

  v30 = v27[2];
  if (v30)
  {
    v31 = v27 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v32 = *(v38 + 72);
    do
    {
      sub_10008289C(v31, v5, type metadata accessor for SLAMScript);
      sub_10007BCAC(v5);
      sub_100082008(v5, type metadata accessor for SLAMScript);
      v31 += v32;
      --v30;
    }

    while (v30);
  }

  sub_10007F394(v35);
}

Swift::Int sub_100079834(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v123 = a5;
  v124 = a7;
  v119 = a4;
  v120 = a6;
  v122 = a2;
  v125 = __src;
  memcpy(v129, __src, sizeof(v129));
  v7 = type metadata accessor for OSSignpostError();
  v121 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D388 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10000403C(v14, qword_1003A0290);
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v16 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v17 = v121;
    if ((*(v121 + 88))(v9, v7) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v18 = "[Error] Interval already ended";
    }

    else
    {
      (*(v17 + 8))(v9, v7);
      v18 = "end check for remote updates";
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v16, v20, "config-status-checkForRemoteUpdates", v18, v19, 2u);
  }

  (*(v11 + 8))(v13, v10);
  memcpy(v128, v125, 0x111uLL);
  if (sub_100081C78(v128) == 1)
  {
    v21 = v122;
    if (v122)
    {
      swift_errorRetain();
      if (qword_10039D380 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000403C(v22, qword_1003A0278);
      swift_errorRetain();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v127[0] = v26;
        *v25 = 136446210;
        v126[0] = v21;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v27 = String.init<A>(describing:)();
        v29 = sub_100008F6C(v27, v28, v127);

        *(v25 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v23, v24, "OTA client error: %{public}s", v25, 0xCu);
        sub_10000959C(v26);
      }

      v30 = v120;
      swift_beginAccess();
      *(v30 + 16) = v21;
    }

    return OS_dispatch_semaphore.signal()();
  }

  v31 = v128[3];
  v32 = v128[4];
  v33 = v128[6];
  v34 = v128[8];
  v35 = v128[10];
  v115 = v128[7];
  v116 = v128[11];
  v121 = v128[14];
  v122 = v128[0];
  v117 = v128[12];
  v118 = v128[21];
  v36 = &unk_10039D000;
  v37 = v128[22];
  v120 = v128[24];
  if (v128[2] >> 60 == 15)
  {
    memcpy(v127, v129, 0x111uLL);
    sub_100081A7C(v127, v126);
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000403C(v38, qword_1003A0278);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "No applet update available", v41, 2u);
      v36 = &unk_10039D000;
    }

    v42 = qword_10039D380;
    if (!v32)
    {
      goto LABEL_32;
    }
  }

  else
  {
    memcpy(v127, v129, 0x111uLL);
    sub_100081A7C(v127, v126);
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000403C(v43, qword_1003A0278);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "applet update available", v46, 2u);
      v36 = &unk_10039D000;
    }

    v47 = v119;
    swift_beginAccess();
    *(v47 + 16) = 1;
    v42 = qword_10039D380;
    if (!v32)
    {
      goto LABEL_32;
    }
  }

  if (v33 >> 60 != 15)
  {
    if (v42 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_10000403C(v48, qword_1003A0278);
    v49 = v125;
    sub_100065074(v125, v127, &qword_1003A03E0, &qword_1002C3D68);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v127[0] = v53;
      *v52 = 136315138;

      sub_10000BD44(v125, &qword_1003A03E0, &qword_1002C3D68);
      v54 = sub_100008F6C(v31, v32, v127);

      *(v52 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v50, v51, "globalKernelConfig id: %s", v52, 0xCu);
      sub_10000959C(v53);
      v49 = v125;

      v36 = &unk_10039D000;
    }

    else
    {

      sub_10000BD44(v49, &qword_1003A03E0, &qword_1002C3D68);
    }

    v59 = v123;
    swift_beginAccess();
    *(v59 + 16) = 1;
    v61 = v36[112];
    if (!v34)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

LABEL_32:
  if (v42 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_10000403C(v55, qword_1003A0278);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  v58 = os_log_type_enabled(v56, v57);
  v59 = v123;
  if (v58)
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "No globalKernelConfig update available", v60, 2u);
  }

  v49 = v125;
  v61 = qword_10039D380;
  if (!v34)
  {
    goto LABEL_45;
  }

LABEL_40:
  if (v35 >> 60 == 15)
  {
LABEL_45:
    if (v61 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_10000403C(v69, qword_1003A0278);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();
    v65 = v37;
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "No coreConfig update available", v72, 2u);
    }

    v73 = v122;
    goto LABEL_52;
  }

  if (v61 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_10000403C(v62, qword_1003A0278);
  sub_100065074(v49, v127, &qword_1003A03E0, &qword_1002C3D68);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  v65 = v37;
  if (os_log_type_enabled(v63, v64))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v127[0] = v67;
    *v66 = 136315138;

    sub_10000BD44(v49, &qword_1003A03E0, &qword_1002C3D68);
    v68 = sub_100008F6C(v115, v34, v127);

    *(v66 + 4) = v68;
    v49 = v125;
    _os_log_impl(&_mh_execute_header, v63, v64, "coreConfig id: %s", v66, 0xCu);
    sub_10000959C(v67);
    v36 = &unk_10039D000;
  }

  else
  {

    sub_10000BD44(v49, &qword_1003A03E0, &qword_1002C3D68);
  }

  v73 = v122;
  swift_beginAccess();
  *(v59 + 16) = 1;
LABEL_52:
  v74 = v36[112];
  if (v121 >> 60 == 15)
  {
    if (v74 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_10000403C(v75, qword_1003A0278);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "No onlinePartnerProfile update available", v78, 2u);
    }

    v79 = v36[112];
    if (!v65)
    {
      goto LABEL_69;
    }
  }

  else
  {
    if (v74 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_10000403C(v80, qword_1003A0278);
    sub_100065074(v49, v127, &qword_1003A03E0, &qword_1002C3D68);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();
    sub_10000BD44(v49, &qword_1003A03E0, &qword_1002C3D68);
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v127[0] = v84;
      *v83 = 136315138;
      v85 = v49;
      v86 = v59;
      v87 = v65;
      v88 = v117;

      v89 = sub_100008F6C(v116, v88, v127);
      v65 = v87;
      v59 = v86;
      v49 = v85;
      v73 = v122;

      *(v83 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v81, v82, "onlinePartnerProfile id: %s", v83, 0xCu);
      sub_10000959C(v84);
    }

    v36 = &unk_10039D000;
    swift_beginAccess();
    *(v59 + 16) = 1;
    v79 = qword_10039D380;
    if (!v65)
    {
      goto LABEL_69;
    }
  }

  if (v120 >> 60 != 15)
  {
    if (v79 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    sub_10000403C(v90, qword_1003A0278);
    sub_100065074(v49, v127, &qword_1003A03E0, &qword_1002C3D68);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v127[0] = v94;
      *v93 = 136315138;
      sub_10000BD44(v49, &qword_1003A03E0, &qword_1002C3D68);

      v95 = sub_100008F6C(v118, v65, v127);

      *(v93 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v91, v92, "safPartnerProfile id: %s", v93, 0xCu);
      sub_10000959C(v94);
      v36 = &unk_10039D000;
    }

    else
    {

      sub_10000BD44(v49, &qword_1003A03E0, &qword_1002C3D68);
    }

    swift_beginAccess();
    *(v59 + 16) = 1;
    if (!v73)
    {
      goto LABEL_82;
    }

    goto LABEL_77;
  }

LABEL_69:
  if (v79 != -1)
  {
    swift_once();
  }

  v96 = type metadata accessor for Logger();
  sub_10000403C(v96, qword_1003A0278);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&_mh_execute_header, v97, v98, "No safPartnerProfile update available", v99, 2u);
  }

  if (!v73)
  {
    goto LABEL_82;
  }

LABEL_77:
  if (!*(v73 + 16))
  {
LABEL_82:
    if (v36[112] != -1)
    {
      swift_once();
    }

    v110 = type metadata accessor for Logger();
    sub_10000403C(v110, qword_1003A0278);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v111, v112, "No capks update available", v113, 2u);
    }

    sub_10000BD44(v49, &qword_1003A03E0, &qword_1002C3D68);
    return OS_dispatch_semaphore.signal()();
  }

  v100 = v36[112];

  if (v100 != -1)
  {
    swift_once();
  }

  v101 = type metadata accessor for Logger();
  sub_10000403C(v101, qword_1003A0278);

  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v127[0] = v105;
    *v104 = 136315138;
    v106 = Array.description.getter();
    v108 = v107;

    v109 = sub_100008F6C(v106, v108, v127);

    *(v104 + 4) = v109;
    _os_log_impl(&_mh_execute_header, v102, v103, "capks: %s", v104, 0xCu);
    sub_10000959C(v105);

    sub_10000BD44(v49, &qword_1003A03E0, &qword_1002C3D68);
  }

  else
  {

    sub_10000BD44(v49, &qword_1003A03E0, &qword_1002C3D68);
  }

  swift_beginAccess();
  *(v59 + 16) = 1;
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_10007AA54(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a3;
  v11 = type metadata accessor for SLAMScript(0);
  v50 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v51 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v45 - v14;
  v16 = sub_100004074(&qword_1003A03F0, &qword_1002C3D88);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v18);
  v23 = v45 - v22;
  if (*a1 == 1)
  {
    v47 = result;
    v48 = a4;
    if (qword_10039D380 != -1)
    {
      swift_once();
    }

    v45[0] = v15;
    v45[1] = a6;
    v24 = type metadata accessor for Logger();
    sub_10000403C(v24, qword_1003A0278);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "invalid SLAM, delete already saved SLAM if necessary", v27, 2u);
    }

    sub_100004074(&qword_1003A03E8, &qword_1002C3D80);
    v28 = *(v17 + 72);
    v29 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v46 = swift_allocObject();
    v30 = v46 + v29;
    swift_beginAccess();
    v31 = v30;
    sub_100065074(a2, v30, &qword_1003A03F0, &qword_1002C3D88);
    v32 = v49;
    swift_beginAccess();
    v33 = v31;
    sub_100065074(v32, v31 + v28, &qword_1003A03F0, &qword_1002C3D88);
    v34 = v48;
    swift_beginAccess();
    sub_100065074(v34, v33 + 2 * v28, &qword_1003A03F0, &qword_1002C3D88);
    swift_beginAccess();
    v35 = v33;
    sub_100065074(a5, v33 + 3 * v28, &qword_1003A03F0, &qword_1002C3D88);
    v36 = (v50 + 48);
    v37 = _swiftEmptyArrayStorage;
    v38 = 4;
    v45[2] = v35;
    v48 = v28;
    v49 = v11;
    do
    {
      sub_100065074(v35, v23, &qword_1003A03F0, &qword_1002C3D88);
      sub_1000829AC(v23, v20, &qword_1003A03F0, &qword_1002C3D88);
      if ((*v36)(v20, 1, v11) == 1)
      {
        sub_10000BD44(v20, &qword_1003A03F0, &qword_1002C3D88);
      }

      else
      {
        sub_100082B74(v20, v51, type metadata accessor for SLAMScript);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_10004DC8C(0, v37[2] + 1, 1, v37);
        }

        v40 = v37[2];
        v39 = v37[3];
        if (v40 >= v39 >> 1)
        {
          v37 = sub_10004DC8C((v39 > 1), v40 + 1, 1, v37);
        }

        v37[2] = v40 + 1;
        sub_100082B74(v51, v37 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v40, type metadata accessor for SLAMScript);
        v28 = v48;
        v11 = v49;
      }

      v35 += v28;
      --v38;
    }

    while (v38);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v41 = v37[2];
    if (v41)
    {
      v42 = v37 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v43 = *(v50 + 72);
      v44 = v45[0];
      do
      {
        sub_10008289C(v42, v44, type metadata accessor for SLAMScript);
        sub_10007BCAC(v44);
        sub_100082008(v44, type metadata accessor for SLAMScript);
        v42 += v43;
        --v41;
      }

      while (v41);
    }
  }

  return result;
}

uint64_t sub_10007AF98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a5@<W5>, uint64_t a6@<X8>)
{
  v64 = a2;
  v61 = a6;
  v62 = a5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v57 - v12;
  URL.appendingPathComponent(_:)();
  URL.appendingPathExtension(_:)();
  v16 = *(v8 + 8);
  v15 = v8 + 8;
  v14 = v16;
  v16(v11, v7);
  sub_100004074(&qword_1003A0440, &qword_1002C3DE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = NSFileProtectionKey;
  v18 = inited + 32;
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v19;
  *(inited + 40) = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v20 = NSFileProtectionKey;
  v21 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v22 = sub_1001845BC(inited);
  v23 = v13;
  v24 = v64;
  swift_setDeallocating();
  sub_10000BD44(v18, &qword_1003A0448, &qword_1002C3DF0);
  v25 = v63;
  sub_1000833FC(v23, v22, a1, v24);
  if (v25)
  {
    v14(v23, v7);
  }

  v59 = v15;
  v60 = v7;
  v63 = v14;

  v27 = URL.generateSHA256Digest()();
  v29 = v28;
  if (qword_10039D380 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000403C(v30, qword_1003A0278);
  sub_1000094F4(v27, v29);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  sub_100009548(v27, v29);
  v33 = os_log_type_enabled(v31, v32);
  v58 = v23;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v65 = v57;
    *v34 = 136315394;
    v35 = 0xED000070756E6165;
    v36 = 0x6C436C656E72656BLL;
    v37 = 0xEC0000006769666ELL;
    v38 = 0x6F436C61626F6C67;
    v39 = 0xD000000000000014;
    v40 = 0x8000000100348DB0;
    if (v62 != 3)
    {
      v39 = 0xD000000000000011;
      v40 = 0x8000000100348E00;
    }

    if (v62 != 2)
    {
      v38 = v39;
      v37 = v40;
    }

    if (!v62)
    {
      v36 = 0xD000000000000014;
      v35 = 0x8000000100348D90;
    }

    if (v62 <= 1u)
    {
      v41 = v36;
    }

    else
    {
      v41 = v38;
    }

    if (v62 <= 1u)
    {
      v42 = v35;
    }

    else
    {
      v42 = v37;
    }

    v43 = sub_100008F6C(v41, v42, &v65);

    *(v34 + 4) = v43;
    *(v34 + 12) = 2080;
    v44 = Data.hexString()();
    v45 = sub_100008F6C(v44._countAndFlagsBits, v44._object, &v65);

    *(v34 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v31, v32, "Got script data for: %s with digest: %s", v34, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v46 = URL.path(percentEncoded:)(0);
  result = v46._countAndFlagsBits;
  v47 = v64 >> 62;
  v48 = v27;
  if ((v64 >> 62) > 1)
  {
    if (v47 == 2)
    {
      v53 = *(a1 + 16);
      v52 = *(a1 + 24);
      v51 = v52 - v53;
      if (__OFSUB__(v52, v53))
      {
        __break(1u);
        goto LABEL_33;
      }

      v49 = v29;
    }

    else
    {
      v49 = v29;
      v51 = 0;
    }

    v50 = v62;
    goto LABEL_30;
  }

  v49 = v29;
  v50 = v62;
  if (!v47)
  {
    v51 = BYTE6(v64);
LABEL_30:
    v55 = v60;
    v56 = v61;
    v54 = v63;
    goto LABEL_31;
  }

  v54 = v63;
  v55 = v60;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v51 = HIDWORD(a1) - a1;
    v56 = v61;
LABEL_31:
    sub_10007B4F8(v46._countAndFlagsBits, v46._object, v50, v51, 0, v56);
    v54(v58, v55);

    return sub_100009548(v48, v49);
  }

LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_10007B4F8@<X0>(uint64_t a1@<X0>, id a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, unint64_t a6@<X8>)
{
  v62 = a5;
  LODWORD(v8) = a3;
  v12 = type metadata accessor for SLAMScript.SEFWDetails(0);
  __chkstk_darwin(v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000901FC();
  if (v6)
  {
    return result;
  }

  v17 = result;
  v69 = v12;
  v66 = a1;
  v61 = 0;
  v18 = (result >> 62);
  if (result >> 62)
  {
LABEL_43:
    v19 = _CocoaArrayWrapper.endIndex.getter();
    v20 = &unk_10039D000;
    if (v19)
    {
LABEL_4:
      v60 = v18;
      v58 = a6;
      v59 = v8;
      v8 = 0;
      v71 = v17 & 0xC000000000000001;
      v63 = v17 & 0xFFFFFFFFFFFFFF8;
      *&v16 = 136316162;
      v64 = v16;
      v65 = v14;
      v70 = v17;
      v57 = a4;
      v68 = v19;
      do
      {
        if (v71)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v63 + 16))
          {
            goto LABEL_42;
          }

          v21 = *(v17 + 8 * v8 + 32);
        }

        v18 = v21;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v72 = (v8 + 1);
        if (v20[112] != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        sub_10000403C(v22, qword_1003A0278);
        v20 = v18;

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v67 = v24;
          a4 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *a4 = v64;
          v25 = [v20 scriptName];

          if (!v25)
          {
            goto LABEL_52;
          }

          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          a6 = v27;

          v28 = sub_100008F6C(v26, a6, &v73);

          *(a4 + 4) = v28;
          *(a4 + 12) = 2048;
          v29 = [v20 scriptID];

          *(a4 + 14) = v29;
          *(a4 + 22) = 1024;
          LODWORD(v29) = [v20 scriptType];

          *(a4 + 24) = v29;
          *(a4 + 28) = 1024;
          LODWORD(v29) = [v20 apduCount];

          *(a4 + 30) = v29;
          *(a4 + 34) = 2080;
          *(a4 + 36) = sub_100008F6C(v66, a2, &v73);
          _os_log_impl(&_mh_execute_header, v23, v67, "script name: %s, script id: %llu, script type: %u, apdu count: %u. at location: %s", a4, 0x2Cu);
          swift_arrayDestroy();

          v14 = v65;
          v17 = v70;
        }

        else
        {
        }

        ++v8;
        v18 = v69;
        v20 = &unk_10039D000;
      }

      while (v72 != v68);
      if (v71)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_21;
      }

      if (!*(v63 + 16))
      {
        __break(1u);
LABEL_52:

        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }

      v30 = *(v17 + 32);
LABEL_21:
      v8 = v30;
      *v14 = v66;
      *(v14 + 8) = a2;
      swift_storeEnumTagMultiPayload();
      if (!v60)
      {
        a4 = *(v63 + 16);
        if (a4)
        {
          goto LABEL_23;
        }

LABEL_33:
        v18 = _swiftEmptyArrayStorage;
        v36 = _swiftEmptyArrayStorage[2];

        if (v36)
        {
LABEL_34:
          v14 = 3;
          v37 = 4;
          while (1)
          {
            v38 = v18[v37];
            v39 = __OFADD__(v14, v38);
            v14 += v38;
            if (v39)
            {
              goto LABEL_41;
            }

            ++v37;
            if (!--v36)
            {
              goto LABEL_37;
            }
          }
        }

        v14 = 3;
LABEL_37:

        v40 = [v8 scriptType];
        result = [v8 scriptName];
        if (result)
        {
          v41 = result;

          v42 = v40;
          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;

          v46 = v58;
          sub_100082B74(v65, v58, type metadata accessor for SLAMScript.SEFWDetails);
          result = type metadata accessor for SLAMScript(0);
          *(v46 + *(result + 20)) = v14;
          *(v46 + *(result + 24)) = v42;
          v47 = v46 + *(result + 28);
          *v47 = v57;
          *(v47 + 8) = v62 & 1;
          *(v46 + *(result + 32)) = v59;
          v48 = (v46 + *(result + 36));
          *v48 = v43;
          v48[1] = v45;
          return result;
        }

        goto LABEL_53;
      }

      a4 = _CocoaArrayWrapper.endIndex.getter();
      if (!a4)
      {
        goto LABEL_33;
      }

LABEL_23:
      v73 = _swiftEmptyArrayStorage;

      sub_10004E424(0, a4 & ~(a4 >> 63), 0);
      if ((a4 & 0x8000000000000000) == 0)
      {
        v31 = 0;
        v18 = v73;
        do
        {
          if (v71)
          {
            v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v32 = *(v17 + 8 * v31 + 32);
          }

          v33 = v32;
          a2 = [v32 apduCount];

          v73 = v18;
          v35 = v18[2];
          v34 = v18[3];
          v36 = v35 + 1;
          if (v35 >= v34 >> 1)
          {
            sub_10004E424((v34 > 1), v35 + 1, 1);
            v18 = v73;
          }

          ++v31;
          v18[2] = v36;
          v18[v35 + 4] = a2;
          v17 = v70;
        }

        while (a4 != v31);
        goto LABEL_34;
      }

      __break(1u);
      goto LABEL_50;
    }
  }

  else
  {
    v19 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = &unk_10039D000;
    if (v19)
    {
      goto LABEL_4;
    }
  }

  if (v20[112] != -1)
  {
LABEL_50:
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_10000403C(v49, qword_1003A0278);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();

  v52 = os_log_type_enabled(v50, v51);
  v53 = v66;
  if (v52)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v73 = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_100008F6C(v53, a2, &v73);
    _os_log_impl(&_mh_execute_header, v50, v51, "no SLAM script in %s", v54, 0xCu);
    sub_10000959C(v55);
  }

  sub_100020148(2027, 0, 0, 0);
  return swift_willThrow();
}