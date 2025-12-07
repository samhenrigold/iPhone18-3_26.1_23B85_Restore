CGColorRef sub_1000C8DBC()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  if (v1)
  {
    sub_10000E7E4((v0 + 16), v1);
    v2 = sub_10006D658();
    v3 = v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
    swift_beginAccess();
    v4 = *(v3 + *(type metadata accessor for HeadphoneModel(0) + 136));
    v5 = objc_opt_self();
    v6 = [v5 powerBeatsPro];
    v7 = [v6 productID];

    if (v7 == v4)
    {
      if ((v2 & 0xFu) > 0xD)
      {
        v8 = 0;
      }

      else
      {
        v8 = dword_1000DA700[v2 & 0xF];
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000A570(v16, qword_10011FDE0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_33;
      }

      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 16777986;
      *(v19 + 4) = v2;
      *(v19 + 5) = 256;
      *(v19 + 7) = v2 & 0xF;
      *(v19 + 8) = 2080;
      sub_100008438(&qword_10011EA80, &unk_1000DA490);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1000D5250;
      *(v21 + 56) = &type metadata for UInt32;
      *(v21 + 64) = &protocol witness table for UInt32;
      *(v21 + 32) = v8;
      v22 = String.init(format:_:)();
      v24 = sub_100078978(v22, v23, &v36);

      *(v19 + 10) = v24;
      v25 = "Mute Call: B444 Color Code: %hhu, Color ID: %hhu, Color Hex: %s";
    }

    else
    {
      v14 = [v5 b494];
      v15 = [v14 productID];

      if (v15 == v4)
      {
        if ((v2 & 0xFu) > 9)
        {
          v8 = 0;
        }

        else
        {
          v8 = dword_1000DA6D8[v2 & 0xF];
        }

        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_10000A570(v26, qword_10011FDE0);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v17, v18))
        {
          goto LABEL_33;
        }

        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v36 = v20;
        *v19 = 16777986;
        *(v19 + 4) = v2;
        *(v19 + 5) = 256;
        *(v19 + 7) = v2 & 0xF;
        *(v19 + 8) = 2080;
        sub_100008438(&qword_10011EA80, &unk_1000DA490);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1000D5250;
        *(v27 + 56) = &type metadata for UInt32;
        *(v27 + 64) = &protocol witness table for UInt32;
        *(v27 + 32) = v8;
        v28 = String.init(format:_:)();
        v30 = sub_100078978(v28, v29, &v36);

        *(v19 + 10) = v30;
        v25 = "Mute Call: B494 Color Code: %hhu, Color ID: %hhu, Color Hex: %s";
      }

      else
      {
        if (v4 != 8221)
        {
          v8 = 0;
          return CGColorCreateGenericRGB(HIWORD(v8) / 255.0, BYTE1(v8) / 255.0, v8 / 255.0, 1.0);
        }

        if ((v2 & 0xFu) > 0xD)
        {
          v8 = 0;
        }

        else
        {
          v8 = dword_1000DA700[v2 & 0xF];
        }

        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_10000A570(v31, qword_10011FDE0);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v17, v18))
        {
LABEL_33:

          return CGColorCreateGenericRGB(HIWORD(v8) / 255.0, BYTE1(v8) / 255.0, v8 / 255.0, 1.0);
        }

        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v36 = v20;
        *v19 = 16777986;
        *(v19 + 4) = v2;
        *(v19 + 5) = 256;
        *(v19 + 7) = v2 & 0xF;
        *(v19 + 8) = 2080;
        sub_100008438(&qword_10011EA80, &unk_1000DA490);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1000D5250;
        *(v32 + 56) = &type metadata for UInt32;
        *(v32 + 64) = &protocol witness table for UInt32;
        *(v32 + 32) = v8;
        v33 = String.init(format:_:)();
        v35 = sub_100078978(v33, v34, &v36);

        *(v19 + 10) = v35;
        v25 = "Mute Call: B498 Color Code: %hhu, Color ID: %hhu, Color Hex: %s";
      }
    }

    _os_log_impl(&_mh_execute_header, v17, v18, v25, v19, 0x12u);
    sub_10000EA94(v20);

    goto LABEL_33;
  }

  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A570(v9, qword_10011FDE0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Cannot Get Tint Color", v12, 2u);
  }

  return 0;
}

uint64_t sub_1000C9424@<X0>(uint64_t a1@<X8>)
{
  v169 = a1;
  v168 = sub_100008438(&qword_10011FFD8, &qword_1000DA4C8);
  __chkstk_darwin(v168);
  v3 = &v148[-v2];
  v179 = type metadata accessor for HeadphoneBatteryInfo(0);
  v4 = *(v179 - 8);
  v5 = __chkstk_darwin(v179);
  v152 = &v148[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v156 = &v148[-v8];
  v9 = __chkstk_darwin(v7);
  v153 = &v148[-v10];
  v11 = __chkstk_darwin(v9);
  v157 = &v148[-v12];
  v13 = __chkstk_darwin(v11);
  v155 = &v148[-v14];
  v15 = __chkstk_darwin(v13);
  v154 = &v148[-v16];
  v17 = __chkstk_darwin(v15);
  v165 = &v148[-v18];
  v19 = __chkstk_darwin(v17);
  v164 = &v148[-v20];
  v21 = __chkstk_darwin(v19);
  v160 = &v148[-v22];
  v23 = __chkstk_darwin(v21);
  v25 = &v148[-v24];
  v26 = __chkstk_darwin(v23);
  v28 = &v148[-v27];
  v29 = __chkstk_darwin(v26);
  v31 = &v148[-v30];
  __chkstk_darwin(v29);
  v33 = &v148[-v32];
  v174 = sub_100008438(&unk_10011FFE0, &unk_1000DA4D0);
  v34 = __chkstk_darwin(v174);
  v158 = &v148[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = __chkstk_darwin(v34);
  v159 = &v148[-v37];
  v38 = __chkstk_darwin(v36);
  v163 = &v148[-v39];
  v40 = __chkstk_darwin(v38);
  v162 = &v148[-v41];
  v42 = __chkstk_darwin(v40);
  v161 = &v148[-v43];
  v44 = __chkstk_darwin(v42);
  v173 = &v148[-v45];
  v46 = __chkstk_darwin(v44);
  v172 = &v148[-v47];
  v48 = __chkstk_darwin(v46);
  v171 = &v148[-v49];
  v50 = __chkstk_darwin(v48);
  v167 = &v148[-v51];
  v52 = __chkstk_darwin(v50);
  v175 = &v148[-v53];
  v54 = __chkstk_darwin(v52);
  v177 = &v148[-v55];
  v56 = __chkstk_darwin(v54);
  v178 = &v148[-v57];
  __chkstk_darwin(v56);
  v176 = &v148[-v58];
  v59 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v60 = *(v59 + 128);
  v61 = *(v60 + 16);

  v170 = v3;
  if (v61)
  {
    v62 = 0;
    while (v62 < *(v60 + 16))
    {
      sub_1000CE178(v60 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v62, v33, type metadata accessor for HeadphoneBatteryInfo);
      if (*(v33 + 9) == 4)
      {

        v65 = v176;
        sub_1000CE240(v33, v176, type metadata accessor for HeadphoneBatteryInfo);
        v64 = v65;
        v63 = 0;
        goto LABEL_8;
      }

      ++v62;
      sub_1000CE1E0(v33, type metadata accessor for HeadphoneBatteryInfo);
      if (v61 == v62)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_65;
  }

LABEL_6:

  v63 = 1;
  v64 = v176;
LABEL_8:
  v66 = *(v4 + 56);
  v66(v64, v63, 1, v179);
  v67 = *(v59 + 128);
  v33 = *(v67 + 16);

  if (v33)
  {
    v3 = 0;
    while (v3 < *(v67 + 16))
    {
      sub_1000CE178(v67 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, v31, type metadata accessor for HeadphoneBatteryInfo);
      if (!v31[9])
      {

        sub_1000CE240(v31, v178, type metadata accessor for HeadphoneBatteryInfo);
        v68 = 0;
        goto LABEL_15;
      }

      ++v3;
      sub_1000CE1E0(v31, type metadata accessor for HeadphoneBatteryInfo);
      if (v33 == v3)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_66;
  }

LABEL_13:

  v68 = 1;
LABEL_15:
  v66(v178, v68, 1, v179);
  v69 = *(v59 + 128);
  v70 = *(v69 + 16);

  v3 = v176;
  if (v70)
  {
    v33 = 0;
    while (v33 < *(v69 + 16))
    {
      sub_1000CE178(v69 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v33, v28, type metadata accessor for HeadphoneBatteryInfo);
      if (*(v28 + 9) == 1)
      {

        sub_1000CE240(v28, v177, type metadata accessor for HeadphoneBatteryInfo);
        v71 = 0;
        goto LABEL_22;
      }

      ++v33;
      sub_1000CE1E0(v28, type metadata accessor for HeadphoneBatteryInfo);
      if (v70 == v33)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_67;
  }

LABEL_20:

  v71 = 1;
LABEL_22:
  v72 = 1;
  v66(v177, v71, 1, v179);
  v73 = *(v59 + 128);
  v33 = *(v73 + 16);
  if (v33)
  {
    v74 = v73 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

    v28 = 0;
    v59 = v175;
    while (v28 < *(v73 + 16))
    {
      sub_1000CE178(v74 + *(v4 + 72) * v28, v25, type metadata accessor for HeadphoneBatteryInfo);
      if (*(v25 + 9) == 2 && *v25 > 0.0)
      {

        sub_1000CE240(v25, v59, type metadata accessor for HeadphoneBatteryInfo);
        v72 = 0;
        goto LABEL_31;
      }

      ++v28;
      sub_1000CE1E0(v25, type metadata accessor for HeadphoneBatteryInfo);
      if (v33 == v28)
      {

        v72 = 1;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
    goto LABEL_32;
  }

  v59 = v175;
LABEL_31:
  v66(v59, v72, 1, v179);
  v28 = v171;
  v33 = v172;
  if (qword_10011C770 != -1)
  {
    goto LABEL_68;
  }

LABEL_32:
  v75 = type metadata accessor for Logger();
  v76 = sub_10000A570(v75, qword_10011FDE0);
  v77 = v167;
  sub_10000E88C(v3, v167, &unk_10011FFE0, &unk_1000DA4D0);
  sub_10000E88C(v178, v28, &unk_10011FFE0, &unk_1000DA4D0);
  sub_10000E88C(v177, v33, &unk_10011FFE0, &unk_1000DA4D0);
  v78 = v59;
  v79 = v59;
  v80 = v173;
  sub_10000E88C(v79, v173, &unk_10011FFE0, &unk_1000DA4D0);
  v166 = v76;
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v180 = v151;
    *v83 = 136315906;
    v150 = v81;
    v84 = v161;
    sub_10000E88C(v77, v161, &unk_10011FFE0, &unk_1000DA4D0);
    v85 = v162;
    sub_10000E88C(v84, v162, &unk_10011FFE0, &unk_1000DA4D0);
    v86 = String.init<A>(reflecting:)();
    v149 = v82;
    v87 = v86;
    v89 = v88;
    sub_10000E950(v84, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E950(v77, &unk_10011FFE0, &unk_1000DA4D0);
    v90 = sub_100078978(v87, v89, &v180);

    *(v83 + 4) = v90;
    *(v83 + 12) = 2080;
    v91 = v171;
    sub_10000E88C(v171, v84, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E88C(v84, v85, &unk_10011FFE0, &unk_1000DA4D0);
    v92 = String.init<A>(reflecting:)();
    v94 = v93;
    sub_10000E950(v84, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E950(v91, &unk_10011FFE0, &unk_1000DA4D0);
    v95 = sub_100078978(v92, v94, &v180);

    *(v83 + 14) = v95;
    *(v83 + 22) = 2080;
    v96 = v172;
    sub_10000E88C(v172, v84, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E88C(v84, v85, &unk_10011FFE0, &unk_1000DA4D0);
    v97 = String.init<A>(reflecting:)();
    v99 = v98;
    sub_10000E950(v84, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E950(v96, &unk_10011FFE0, &unk_1000DA4D0);
    v100 = sub_100078978(v97, v99, &v180);

    *(v83 + 24) = v100;
    *(v83 + 32) = 2080;
    v101 = v175;
    v102 = v173;
    sub_10000E88C(v173, v84, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E88C(v84, v85, &unk_10011FFE0, &unk_1000DA4D0);
    v103 = String.init<A>(reflecting:)();
    v105 = v104;
    sub_10000E950(v84, &unk_10011FFE0, &unk_1000DA4D0);
    v3 = v176;
    sub_10000E950(v102, &unk_10011FFE0, &unk_1000DA4D0);
    v106 = sub_100078978(v103, v105, &v180);

    *(v83 + 34) = v106;
    v107 = v150;
    _os_log_impl(&_mh_execute_header, v150, v149, "Battery: createBatteryConfigurationForAABattery showing new battery info %s %s %s %s", v83, 0x2Au);
    swift_arrayDestroy();

    v108 = v170;
    v109 = v168;
  }

  else
  {

    sub_10000E950(v80, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E950(v33, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E950(v28, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E950(v77, &unk_10011FFE0, &unk_1000DA4D0);
    v108 = v170;
    v109 = v168;
    v101 = v78;
  }

  v110 = v109[12];
  v111 = v109[16];
  v112 = v109[20];
  sub_10000E88C(v3, v108, &unk_10011FFE0, &unk_1000DA4D0);
  sub_10000E88C(v178, &v110[v108], &unk_10011FFE0, &unk_1000DA4D0);
  sub_10000E88C(v177, v108 + v111, &unk_10011FFE0, &unk_1000DA4D0);
  sub_10000E88C(v101, v108 + v112, &unk_10011FFE0, &unk_1000DA4D0);
  v113 = *(v4 + 48);
  v114 = v179;
  if (v113(v108, 1, v179) != 1)
  {
    v115 = v163;
    sub_10000E88C(v108, v163, &unk_10011FFE0, &unk_1000DA4D0);
    if (v113(v108 + v112, 1, v114) != 1)
    {
      sub_1000CE240(v115, v164, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000CE240(v108 + v112, v165, type metadata accessor for HeadphoneBatteryInfo);
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 0;
        _os_log_impl(&_mh_execute_header, v124, v125, "Battery: createBatteryConfigurationForAABattery combinedWithCase", v126, 2u);
      }

      sub_10000E950(v101, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v177, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v178, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v3, &unk_10011FFE0, &unk_1000DA4D0);
      v127 = *(sub_100008438(&qword_10011D0C0, &unk_1000D8D60) + 48);
      v128 = v169;
      sub_1000CE240(v164, v169, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000CE240(v165, v128 + v127, type metadata accessor for HeadphoneBatteryInfo);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      goto LABEL_50;
    }

    v116 = v160;
    sub_1000CE240(v115, v160, type metadata accessor for HeadphoneBatteryInfo);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&_mh_execute_header, v117, v118, "Battery: createBatteryConfigurationForAABattery combinedWithoutCase", v119, 2u);
    }

LABEL_43:

    sub_10000E950(v101, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E950(v177, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E950(v178, &unk_10011FFE0, &unk_1000DA4D0);
    sub_10000E950(v3, &unk_10011FFE0, &unk_1000DA4D0);
    sub_1000CE240(v116, v169, type metadata accessor for HeadphoneBatteryInfo);
    type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
LABEL_50:
    swift_storeEnumTagMultiPayload();
    sub_10000E950(v108 + v111, &unk_10011FFE0, &unk_1000DA4D0);
    v129 = &v110[v108];
    goto LABEL_51;
  }

  if (v113(&v110[v108], 1, v114) != 1)
  {
    v120 = v159;
    sub_10000E88C(&v110[v108], v159, &unk_10011FFE0, &unk_1000DA4D0);
    if (v113(v108 + v111, 1, v114) == 1)
    {
      sub_10000E950(v101, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v177, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v178, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v3, &unk_10011FFE0, &unk_1000DA4D0);
      sub_1000CE1E0(v120, type metadata accessor for HeadphoneBatteryInfo);
      goto LABEL_46;
    }

    v176 = v110;
    v131 = v158;
    sub_10000E88C(v108 + v111, v158, &unk_10011FFE0, &unk_1000DA4D0);
    if (v113(v108 + v112, 1, v114) == 1)
    {
      v132 = v153;
      sub_1000CE240(v120, v153, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000CE240(v131, v156, type metadata accessor for HeadphoneBatteryInfo);
      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        *v135 = 0;
        _os_log_impl(&_mh_execute_header, v133, v134, "Battery: createBatteryConfigurationForAABattery splitWithoutCase", v135, 2u);
      }

      sub_10000E950(v101, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v177, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v178, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v3, &unk_10011FFE0, &unk_1000DA4D0);
      v136 = *(sub_100008438(&qword_10011D0B8, &unk_1000D8D50) + 48);
      v137 = v132;
      v138 = v169;
      sub_1000CE240(v137, v169, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000CE240(v156, v138 + v136, type metadata accessor for HeadphoneBatteryInfo);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
    }

    else
    {
      sub_1000CE240(v120, v154, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000CE240(v131, v155, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000CE240(v108 + v112, v157, type metadata accessor for HeadphoneBatteryInfo);
      v141 = Logger.logObject.getter();
      v142 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        *v143 = 0;
        _os_log_impl(&_mh_execute_header, v141, v142, "Battery: createBatteryConfigurationForAABattery splitWithCase", v143, 2u);
      }

      sub_10000E950(v101, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v177, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v178, &unk_10011FFE0, &unk_1000DA4D0);
      sub_10000E950(v3, &unk_10011FFE0, &unk_1000DA4D0);
      v144 = sub_100008438(&unk_10011FFF0, &unk_1000D63B0);
      v145 = *(v144 + 48);
      v146 = *(v144 + 64);
      v147 = v169;
      sub_1000CE240(v154, v169, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000CE240(v155, v147 + v145, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000CE240(v157, v147 + v146, type metadata accessor for HeadphoneBatteryInfo);
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
    }

    swift_storeEnumTagMultiPayload();
    sub_10000E950(v108 + v111, &unk_10011FFE0, &unk_1000DA4D0);
    v129 = &v176[v108];
LABEL_51:
    sub_10000E950(v129, &unk_10011FFE0, &unk_1000DA4D0);
    v123 = v108;
    v121 = &unk_10011FFE0;
    v122 = &unk_1000DA4D0;
    return sub_10000E950(v123, v121, v122);
  }

  if (v113(v108 + v111, 1, v114) == 1 && v113(v108 + v112, 1, v114) != 1)
  {
    v116 = v152;
    sub_1000CE240(v108 + v112, v152, type metadata accessor for HeadphoneBatteryInfo);
    v117 = Logger.logObject.getter();
    v139 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v117, v139))
    {
      v140 = swift_slowAlloc();
      *v140 = 0;
      _os_log_impl(&_mh_execute_header, v117, v139, "Battery: createBatteryConfigurationForAABattery headsetOnly", v140, 2u);
    }

    goto LABEL_43;
  }

  sub_10000E950(v101, &unk_10011FFE0, &unk_1000DA4D0);
  sub_10000E950(v177, &unk_10011FFE0, &unk_1000DA4D0);
  sub_10000E950(v178, &unk_10011FFE0, &unk_1000DA4D0);
  sub_10000E950(v3, &unk_10011FFE0, &unk_1000DA4D0);
LABEL_46:
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v121 = &qword_10011FFD8;
  v122 = &qword_1000DA4C8;
  v123 = v108;
  return sub_10000E950(v123, v121, v122);
}

id sub_1000CAAE4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100008438(&qword_10011DE30, &qword_1000D79F0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v51 - v11;
  v13 = sub_100046AA8();
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_10000A570(v14, qword_10011FDE0);

  v53 = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v55 = v13;
    v19 = a2;
    v20 = v18;
    *v18 = 67109632;
    *(v18 + 4) = v55;
    v52 = v10;
    v56 = v5;
    *(v18 + 8) = 1024;
    *(v18 + 10) = sub_100046AA8();

    *(v20 + 14) = 1024;
    v21 = v19 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
    swift_beginAccess();
    v22 = type metadata accessor for HeadphoneModel(0);
    sub_10000E88C(v21 + *(v22 + 152), v12, &qword_10011DE30, &qword_1000D79F0);
    LODWORD(v21) = (*(v56 + 48))(v12, 1, v4) != 1;
    v5 = v56;
    v10 = v52;
    sub_10000E950(v12, &qword_10011DE30, &qword_1000D79F0);
    *(v20 + 16) = v21;
    v23 = v19;
    LOBYTE(v19) = v55;

    _os_log_impl(&_mh_execute_header, v16, v17, "OBC Charging status should show:%{BOOL}d obcCharging: %{BOOL}d obcDeadline:%{BOOL}d", v20, 0x14u);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    v23 = a2;

    if (!v13)
    {
      return 0;
    }
  }

  v25 = [objc_allocWithZone(NSTextAttachment) init];
  v26 = String._bridgeToObjectiveC()();
  v27 = [objc_opt_self() systemImageNamed:v26];

  if (v27)
  {
    v28 = [v27 imageWithRenderingMode:2];
  }

  else
  {
    v28 = 0;
  }

  [v25 setImage:v28];

  sub_1000084D4(0, &qword_10011FFD0, NSMutableAttributedString_ptr);
  v24 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v25];
  v29 = v23 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v30 = type metadata accessor for HeadphoneModel(0);
  sub_10000E88C(v29 + *(v30 + 152), v10, &qword_10011DE30, &qword_1000D79F0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_10000E950(v10, &qword_10011DE30, &qword_1000D79F0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Missing full charge deadline, unexpected when showing OBC status.", v33, 2u);
    }
  }

  else
  {
    v34 = v54;
    (*(v5 + 32))(v54, v10, v4);
    v35 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v37 = [v35 localizedStringFromDate:isa dateStyle:0 timeStyle:1];

    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v57 = 32;
    v58 = 0xE100000000000000;
    sub_100008438(&qword_10011EA80, &unk_1000DA490);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1000D5250;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = sub_1000CDFF8();
    *(v41 + 32) = v38;
    *(v41 + 40) = v40;
    v42 = sub_1000364D8(v41, 25);
    v43 = v5;
    v45 = v44;

    v46._countAndFlagsBits = v42;
    v46._object = v45;
    String.append(_:)(v46);

    v47 = objc_allocWithZone(NSAttributedString);
    v48 = String._bridgeToObjectiveC()();

    v49 = [v47 initWithString:v48];

    [v24 appendAttributedString:v49];
    (*(v43 + 8))(v34, v4);
  }

  return v24;
}

id sub_1000CB184(uint64_t a1, void **a2)
{
  v3 = sub_100046C58();
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v5, v6))
  {

    if (!v3)
    {
      goto LABEL_5;
    }

LABEL_7:
    v10 = [objc_opt_self() mainBundle];
    v16._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0xD000000000000017;
    v11._object = 0x80000001000E2750;
    v12.value._object = 0x80000001000DBB60;
    v12.value._countAndFlagsBits = 0xD000000000000010;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v16._countAndFlagsBits = 0;
    v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v16);

    v8 = sub_1000A2F88(UIFontTextStyleCallout, v14._countAndFlagsBits, v14._object);

    return v8;
  }

  v7 = swift_slowAlloc();
  *v7 = 67109376;
  *(v7 + 4) = v3;
  *(v7 + 8) = 1024;
  *(v7 + 10) = sub_100046C58();

  _os_log_impl(&_mh_execute_header, v5, v6, "DEOC Charging should show:%{BOOL}d deocCharging: %{BOOL}d", v7, 0xEu);

  if (v3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v8 = *a2;
  v9 = v8;
  return v8;
}

uint64_t sub_1000CB388(uint64_t a1, void **a2)
{
  v3 = a1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v4 = *(type metadata accessor for HeadphoneModel(0) + 92);
  v5 = *(v3 + v4);
  if (v5)
  {
    v6 = *(v3 + v4);
    v7 = *a2;
    if (*a2)
    {
      goto LABEL_3;
    }

    goto LABEL_29;
  }

  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  v10 = dispatch thunk of HeadphoneProxFeatureManager.connectedDevices.getter();

  if (*(v3 + 152))
  {
    v11 = *(v3 + 144);
    v12 = *(v3 + 152);
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v25 = *(v10 + 16);

  if (v25)
  {
    v26 = sub_1000CD118(v11, v12);
    v28 = v27;

    if (v28)
    {
      v6 = *(*(v10 + 56) + 8 * v26);

      v7 = *a2;
      if (*a2)
      {
LABEL_3:
        v8 = v5;
        if ([v7 length] > 0)
        {
          v9 = sub_100046AA8() && [v6 optimizedBatteryChargingCapability] == 2 && objc_msgSend(v6, "optimizedBatteryChargingState") == 1 && sub_100046AA8();
          if (qword_10011C770 != -1)
          {
            swift_once();
          }

          v13 = type metadata accessor for Logger();
          sub_10000A570(v13, qword_10011FDE0);
          v14 = v6;
          v15 = Logger.logObject.getter();
          v16 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 67109632;
            *(v17 + 4) = v9;
            *(v17 + 8) = 256;
            *(v17 + 10) = [v14 optimizedBatteryChargingCapability];
            *(v17 + 11) = 256;
            *(v17 + 13) = [v14 optimizedBatteryChargingState];

            _os_log_impl(&_mh_execute_header, v15, v16, "OBC Charge to full now, should show:%{BOOL}d chargingOBC: obcCap:%hhu obcState: %hhd", v17, 0xEu);
          }

          else
          {

            v15 = v14;
          }

          v18 = sub_100046C58() && [v14 dynamicEndOfChargeCapability]== 2 && [v14 dynamicEndOfChargeState]== 1;
          v19 = v14;
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 67109632;
            *(v22 + 4) = v18;
            *(v22 + 8) = 256;
            *(v22 + 10) = [v19 dynamicEndOfChargeCapability];
            *(v22 + 11) = 256;
            *(v22 + 13) = [v19 dynamicEndOfChargeState];

            _os_log_impl(&_mh_execute_header, v20, v21, "DEOC Charge to full now, should show:%{BOOL}d chargingOBC: deocCap:%hhu obcState: %hhd", v22, 0xEu);
          }

          else
          {

            v20 = v19;
          }

          if (v9 || v18)
          {
            v23 = sub_100033A5C(24);

            return v23;
          }

          goto LABEL_40;
        }

LABEL_30:
        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_10000A570(v30, qword_10011FDE0);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v31, v32, "Not showing charge to full button no title to pair with.", v33, 2u);
        }

        return 0;
      }

LABEL_29:
      v29 = v5;
      goto LABEL_30;
    }
  }

  else
  {
  }

  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000A570(v34, qword_10011FDE0);
  v19 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v19, v35, "Not showing charge to full button because device is likely not connected.", v36, 2u);
  }

LABEL_40:

  return 0;
}

uint64_t sub_1000CB8E0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HeadphoneAssets(0);
  v23 = *(v4 - 1);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xFE) == 2)
  {
    URL.init(fileURLWithPath:)();
    v11 = *(v8 + 16);
    v11(v6, v10, v7);
    v11(&v6[v4[5]], v10, v7);
    (*(v8 + 56))(&v6[v4[6]], 1, 1, v7);
    v12 = v4[7];
    v13 = type metadata accessor for HeadphoneAssets.Feature(0);
    (*(*(v13 - 8) + 56))(&v6[v12], 1, 1, v13);
    v14 = v4[8];
    *&v6[v14] = _swiftEmptyArrayStorage;
    *&v6[v4[9]] = 0;
    v15 = &v6[v4[10]];
    *v15 = 0;
    *(v15 + 1) = 0;
    v16 = [objc_opt_self() configurationWithPointSize:88.0];
    v17 = String._bridgeToObjectiveC()();
    v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

    if (v18)
    {
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1000D78E0;
      *(v19 + 32) = v18;

      (*(v8 + 8))(v10, v7);
      *&v6[v14] = v19;
    }

    else
    {
      (*(v8 + 8))(v10, v7);
    }

    sub_1000CE178(v6, a2, type metadata accessor for HeadphoneAssets);
    (*(v23 + 56))(a2, 0, 1, v4);
    return sub_1000CE1E0(v6, type metadata accessor for HeadphoneAssets);
  }

  else
  {
    v20 = *(v23 + 56);

    return v20(a2, 1, 1, v4);
  }
}

uint64_t sub_1000CBCA4()
{
  v0 = type metadata accessor for HeadphoneViewModel(0);
  __chkstk_darwin(v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_10011C720 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A570(v7, qword_1001231C0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "HeadphonePresenter: handleMultipleDevicesDetected", v10, 2u);
  }

  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v11)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = result + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView;
      Strong = swift_unknownObjectWeakLoadStrong();
      v15 = *(v13 + 8);
      result = swift_unknownObjectRelease();
      if (Strong)
      {
        ObjectType = swift_getObjectType();
        v17 = (*(v15 + 32))(ObjectType, v15);
        sub_1000BB69C(v17, v2);
        v2[*(v0 + 96)] = 1;
        (*(v15 + 48))(v2, ObjectType, v15);
        swift_unknownObjectRelease();
        return sub_1000CE1E0(v2, type metadata accessor for HeadphoneViewModel);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000CBF9C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1000CC078(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

id sub_1000CC0C4(id result)
{
  if (result != 16)
  {
    return sub_1000CC0D4(result);
  }

  return result;
}

id sub_1000CC0D4(id result)
{
  if (result >= 0x10)
  {
    return result;
  }

  return result;
}

void sub_1000CC0E4(id result)
{
  if (result != 16)
  {
    sub_1000CC0F4(result);
  }
}

void sub_1000CC0F4(id a1)
{
  if (a1 >= 0x10)
  {
  }
}

char *sub_1000CC104(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008438(&qword_10011FFB8, &unk_1000DA4B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CC210(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008438(&unk_10011FFA8, &unk_1000DA4A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000CC31C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008438(&qword_100120038, &qword_1000DA500);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100008438(&unk_100120020, &qword_1000D7C38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000CC450(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008438(&unk_100120070, &qword_1000DA530);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100008438(&qword_10011FC60, qword_1000D9EC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CC584(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008438(&unk_10011DC30, &unk_1000D7D30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CC694(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008438(&qword_10011F960, &qword_1000D9898);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void *sub_1000CC7D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100008438(a5, a6);
  v16 = *(sub_100008438(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100008438(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_1000CC9E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008438(&unk_1001200E0, &unk_1000DA578);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100008438(&qword_10011CB58, &qword_1000D85C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CCB2C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008438(&qword_1001200D8, &qword_1000DA570);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

char *sub_1000CCC48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008438(&unk_100120050, &qword_1000D9A48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1000CCD74(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100008438(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1000CCF50(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008438(&unk_1001200B8, &qword_1000DA558);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000CD070(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1000CD0E4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1000CD118(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000CD2D0(a1, a2, v4);
}

unint64_t sub_1000CD190(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return sub_1000CD388(v1, v2);
}

unint64_t sub_1000CD1FC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000CD3F8(a1, v4);
}

unint64_t sub_1000CD240(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000CD4C0(a1, v2);
}

unint64_t sub_1000CD2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000CD388(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000CD3F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000CE6A0(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100047824(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000CD4C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_1000CD5C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CD684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CD5E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CD7B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000CD604(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CD8BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CD624(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CDAAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000CD644(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CDBB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000CD664(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CDD90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000CD684(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008438(&qword_100120030, &qword_1000DA4F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100008438(&unk_10011D078, &qword_1000DA4F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CD7B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008438(&unk_100120050, &qword_1000D9A48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1000CD8BC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100008438(&qword_1001200C8, &unk_1000DA560);
  v10 = *(sub_100008438(&qword_1001200D0, qword_1000D60C8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100008438(&qword_1001200D0, qword_1000D60C8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000CDAAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008438(&qword_10011FFB8, &unk_1000DA4B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000CDBB8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100008438(&qword_1001200B0, &qword_1000DA550);
  v10 = *(type metadata accessor for HeadphoneBatteryInfo(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for HeadphoneBatteryInfo(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1000CDD90(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008438(&qword_100120108, &qword_1000DA588);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100008438(&qword_100120110, &unk_1000DA590);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CDED8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008438(&unk_1001200B8, &qword_1000DA558);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000CDFF8()
{
  result = qword_10011FF90;
  if (!qword_10011FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF90);
  }

  return result;
}

double sub_1000CE04C(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    v5 = a3;
  }

  return result;
}

void sub_1000CE094(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    sub_1000261AC(a1, a2, a3, a4);
  }
}

unint64_t sub_1000CE0C0()
{
  result = qword_10011FFC0;
  if (!qword_10011FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FFC0);
  }

  return result;
}

uint64_t sub_1000CE114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CE178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CE1E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000CE240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CE2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&unk_100120000, &qword_1000D62D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CE318()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000CE370(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000CE398()
{
  v0 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  __chkstk_darwin(v0 - 8);
  v2 = &v16[-v1];
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v9 = result;
      URL._bridgeToObjectiveC()(v8);
      v11 = v10;
      sub_100008438(&unk_100120060, &unk_1000DA520);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000D66A0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v13;
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = 1;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v14;
      *(inited + 120) = &type metadata for Bool;
      *(inited + 96) = 1;
      sub_1000A3634(inited);
      swift_setDeallocating();
      sub_100008438(&qword_10011FA28, &qword_1000D9958);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v9 openSensitiveURL:v11 withOptions:isa];

      return (*(v4 + 8))(v6, v3);
    }
  }

  __break(1u);
  return result;
}

id sub_1000CE65C(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_10001C2A0(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1000CE704()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000CE74C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000CE850()
{
  result = qword_100120118;
  if (!qword_100120118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120118);
  }

  return result;
}

uint64_t sub_1000CE91C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

BOOL sub_1000CE998()
{
  v1 = [v0 sourceSettings];
  v2 = [v1 notificationSettings];

  v3 = [v2 timeSensitiveSetting];
  if (v3)
  {
    return 1;
  }

  v5 = [v0 sourceSettings];
  v6 = [v5 notificationSettings];

  v7 = [v6 directMessagesSetting];
  return v7 != 0;
}

BOOL sub_1000CEA70()
{
  v1 = [*v0 sourceSettings];
  v2 = [v1 notificationSettings];

  v3 = [v2 announcementSetting];
  return v3 == 2 || sub_1000CE998();
}

BOOL sub_1000CEB00()
{
  v1 = [*v0 sourceSettings];
  v2 = [v1 notificationSettings];

  v3 = [v2 announcementSetting];
  return v3 == 2;
}

void sub_1000CEB98(char a1)
{
  v2 = v1;
  v4 = [v2 sourceSettings];
  v5 = [v4 notificationSettings];

  [v5 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000084D4(0, &qword_100120128, UNMutableNotificationSettings_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (a1)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v31 setAnnouncementSetting:v6];
  v7 = &selRef_setTableHeaderView_;
  if (a1)
  {
    if (qword_10011C638 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A570(v8, qword_100123040);
    v9 = v2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_15;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32[0] = v13;
    *v12 = 136315138;
    v14 = [v9 sourceIdentifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = v15;
    v7 = &selRef_setTableHeaderView_;
    v19 = sub_100078978(v18, v17, v32);

    *(v12 + 4) = v19;
    v20 = "Enabling Announce Notification for %s";
  }

  else
  {
    if (qword_10011C638 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000A570(v21, qword_100123040);
    v22 = v2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_15;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32[0] = v13;
    *v12 = 136315138;
    v23 = [v22 sourceIdentifier];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = v24;
    v7 = &selRef_setTableHeaderView_;
    v28 = sub_100078978(v27, v26, v32);

    *(v12 + 4) = v28;
    v20 = "Disabling Announce Notification for %s";
  }

  _os_log_impl(&_mh_execute_header, v10, v11, v20, v12, 0xCu);
  sub_10000EA94(v13);

LABEL_15:

  v29 = [objc_opt_self() currentNotificationSettingsCenter];
  v30 = [v2 v7[99]];
  if (!v30)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = String._bridgeToObjectiveC()();
  }

  [v29 replaceNotificationSettings:v31 forNotificationSourceIdentifier:v30];

LABEL_18:
}

void sub_1000CEF5C(char a1)
{
  v2 = v1;
  v4 = [v2 notificationSystemSettings];
  [v4 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1000084D4(0, &qword_100120120, UNMutableNotificationSystemSettings_ptr);
  if (swift_dynamicCast())
  {
    [v12 setShowPreviewsSetting:{objc_msgSend(v4, "showPreviewsSetting")}];
    if (a1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    [v12 setAnnouncementSetting:v5];
    [v12 setAnnouncementHeadphonesSetting:v5];
    if (a1)
    {
      if (qword_10011C638 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000A570(v6, qword_100123040);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_15;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Enabling Announce Notifications";
    }

    else
    {
      if (qword_10011C638 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000A570(v11, qword_100123040);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_15;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Disabling Announce Notifications";
    }

    _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);

LABEL_15:

    [v2 setNotificationSystemSettings:v12];
  }
}

uint64_t sub_1000CF1E8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 notificationSourceWithIdentifier:v4];

  result = sub_1000084D4(0, &qword_100120100, UNNotificationSource_ptr);
  a1[3] = result;
  a1[4] = &off_100108CB8;
  *a1 = v5;
  return result;
}

void *sub_1000CF268()
{
  v1 = [*v0 allNotificationSources];
  sub_1000084D4(0, &qword_100120100, UNNotificationSource_ptr);
  sub_1000CF304();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_10001BDC0(v2);

  v4 = sub_1000B47F0(v3);

  return v4;
}

unint64_t sub_1000CF304()
{
  result = qword_10011FAE8;
  if (!qword_10011FAE8)
  {
    sub_1000084D4(255, &qword_100120100, UNNotificationSource_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FAE8);
  }

  return result;
}

void sub_1000CF6F8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unhandled TUConfigurationAnnounceCalls state %d, assume Never", v2, 8u);
}

void sub_1000CF770(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unhandled SFAnnounceCallsState state %d, assume Never", v2, 8u);
}

void sub_1000CF95C(void *a1)
{
  [a1 assetStatus];
  v5 = [a1 displayName];
  [a1 isSuggested];
  v2 = [a1 locale];
  v3 = [a1 locale];
  v4 = [v3 localeIdentifier];
  LogPrintF();
}

void sub_1000CFA90(void *a1)
{
  [a1 assetStatus];
  v3 = [a1 displayName];
  [a1 isSuggested];
  v2 = [a1 locale];
  LogPrintF();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}