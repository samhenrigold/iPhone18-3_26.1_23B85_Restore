_BYTE *sub_100050414@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v94 = v3;
  v95 = v4;
  v5 = __chkstk_darwin(v3);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v89 - v8;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  result = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);
  if (result)
  {
    v11 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    v93 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);
    if (!v11)
    {
LABEL_15:
      v38 = 0;
      goto LABEL_16;
    }

    if (*(v11 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth) == 1)
    {
      v12 = result[84];
    }

    else
    {
      v12 = 1;
    }

    v13 = *(v11 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi);
    if (v12)
    {
      v14 = 0;
      if (!v13)
      {
LABEL_13:
        if (v14)
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v14 = result[85] ^ 1;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    if ((result[86] & 1) == 0)
    {
      v73 = result[87];
      if (v14)
      {
        if ((v73 & 1) == 0)
        {

          v74 = sub_100054B44();
          v91 = v75;
          v92 = v74;
          0xE000000000000000, v75, v76, v77, v78, v79, v80, v81;
          v90 = sub_100054D50();
          v29 = v82;
          0xE000000000000000, v82, v83, v84, v85, v86, v87, v88;
          v37 = 3;
          goto LABEL_19;
        }

LABEL_14:

        String.LocalizationValue.init(stringLiteral:)();
        v16 = v94;
        v15 = v95;
        v17 = *(v95 + 16);
        v17(v7, v9, v94);
        static Locale.current.getter();
        v18 = String.init(localized:table:bundle:locale:comment:)();
        v91 = v19;
        v92 = v18;
        v89 = v7;
        v20 = *(v15 + 8);
        v20(v9, v16);
        0xE000000000000000, v21, v22, v23, v24, v25, v26, v27;
        String.LocalizationValue.init(stringLiteral:)();
        v17(v89, v9, v16);
        static Locale.current.getter();
        v90 = String.init(localized:table:bundle:locale:comment:)();
        v29 = v28;
        v20(v9, v16);
        v7 = v89;
        0xE000000000000000, v30, v31, v32, v33, v34, v35, v36;
        v37 = 1;
LABEL_19:
        String.LocalizationValue.init(stringLiteral:)();
        v54 = v94;
        v55 = v95;
        (*(v95 + 16))(v7, v9, v94);
        static Locale.current.getter();
        v56 = String.init(localized:table:bundle:locale:comment:)();
        v58 = v57;

        (*(v55 + 8))(v9, v54);
        0xE000000000000000, v59, v60, v61, v62, v63, v64, v65;
        *&v97 = v92;
        *(&v97 + 1) = v91;
        *&v98 = v90;
        *(&v98 + 1) = v29;
        *&v99 = 0;
        *(&v99 + 1) = 0xE000000000000000;
        *&v100 = v56;
        *(&v100 + 1) = v58;
        *&v101 = 0;
        *(&v101 + 1) = 0xE000000000000000;
        *&v102 = 0;
        *(&v102 + 1) = 0xE000000000000000;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        *&v109 = 0;
        *(&v109 + 1) = v37;
        v110 = 0uLL;
        v111[0] = v92;
        v111[1] = v91;
        v111[2] = v90;
        v111[3] = v29;
        v111[4] = 0;
        v111[5] = 0xE000000000000000;
        v111[6] = v56;
        v111[7] = v58;
        v111[8] = 0;
        v111[9] = 0xE000000000000000;
        v111[10] = 0;
        v111[11] = 0xE000000000000000;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v118 = 0;
        v119 = v37;
        v120 = 0;
        v121 = 0;
        sub_100052AFC(&v97, &v96);
        result = sub_10002A024(v111);
        v66 = v108;
        a1[10] = v107;
        a1[11] = v66;
        v67 = v110;
        a1[12] = v109;
        a1[13] = v67;
        v68 = v104;
        a1[6] = v103;
        a1[7] = v68;
        v69 = v106;
        a1[8] = v105;
        a1[9] = v69;
        v70 = v100;
        a1[2] = v99;
        a1[3] = v70;
        v71 = v102;
        a1[4] = v101;
        a1[5] = v71;
        v72 = v98;
        *a1 = v97;
        a1[1] = v72;
        return result;
      }

      v38 = v73 ^ 1;
LABEL_16:

      v39 = sub_100054F5C();
      v91 = v40;
      v92 = v39;
      0xE000000000000000, v40, v41, v42, v43, v44, v45, v46;
      v90 = sub_100055168();
      v29 = v47;
      0xE000000000000000, v47, v48, v49, v50, v51, v52, v53;
      if (v38)
      {
        v37 = 2;
      }

      else
      {
        v37 = 0;
      }

      goto LABEL_19;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100050908@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v4 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v12 = &v98 - v11;
  if (qword_10007EC50 != -1)
  {
    result = swift_once();
  }

  v13 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);
  if (v13)
  {
    v14 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    v105 = a1;
    if (!v14)
    {
LABEL_13:
      v16 = 0xE000000000000000;
      v110 = 0;
      v111 = 0xE000000000000000;
      v112 = 0;
      v113 = 0xE000000000000000;
      v114 = 0;
      v115 = 0xE000000000000000;
      v116 = 0;
      v117 = 0xE000000000000000;
      v118 = 0;
      v119 = 0xE000000000000000;
      v120 = 0;
      v121 = 0xE000000000000000;
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      v129 = 0u;
      sub_100052AFC(&v110, v109);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0xE000000000000000;
      v106 = 0xE000000000000000;
      v107 = 0;
      v22 = 0xE000000000000000;
LABEL_20:
      v108 = v18;
      v110 = v17;
      v111 = v16;
      v112 = v18;
      v113 = v21;
      v114 = 0;
      v115 = 0xE000000000000000;
      v90 = v16;
      v91 = v107;
      v92 = v17;
      v93 = v106;
      v116 = v107;
      v117 = v106;
      v118 = v19;
      v119 = v22;
      v120 = 0;
      v121 = 0xE000000000000000;
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v128 = v20;
      v129 = 0uLL;
      v94 = v22;
      v95 = v19;
      v96 = v20;
      result = sub_10002A024(&v110);
      v97 = v105;
      *v105 = v92;
      v97[1] = v90;
      v97[2] = v108;
      v97[3] = v21;
      v97[4] = 0;
      v97[5] = 0xE000000000000000;
      v97[6] = v91;
      v97[7] = v93;
      v97[8] = v95;
      v97[9] = v94;
      v97[10] = 0;
      v97[11] = 0xE000000000000000;
      *(v97 + 6) = 0u;
      *(v97 + 7) = 0u;
      *(v97 + 8) = 0u;
      *(v97 + 9) = 0u;
      *(v97 + 10) = 0u;
      *(v97 + 11) = 0u;
      v97[24] = v96;
      v97[25] = 0;
      v97[26] = 0;
      v97[27] = 0;
      return result;
    }

    if (*(v14 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth) == 1)
    {
      v15 = ~*(v13 + 84) & 1;
    }

    else
    {
      v15 = 0;
    }

    if (*(v14 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi) == 1 && !*(v13 + 86))
    {
      v15 |= 2uLL;
    }

    if (v15 == 3)
    {
      v103 = 3;
      v104 = v4;
      v102 = sub_100055374();
      v16 = v23;
      0xE000000000000000, v23, v24, v25, v26, v27, v28, v29;
      v108 = sub_100055580();
      v101 = v30;
      0xE000000000000000, v30, v31, v32, v33, v34, v35, v36;
      v37 = sub_10005578C();
    }

    else
    {
      if (!v15)
      {
        goto LABEL_13;
      }

      v103 = v15;
      v104 = v4;
      if (v15)
      {
        String.LocalizationValue.init(stringLiteral:)();
        v106 = *(v6 + 16);
        v107 = v6 + 16;
        (v106)(v9, v12, v5);
        static Locale.current.getter();
        v102 = String.init(localized:table:bundle:locale:comment:)();
        v16 = v59;
        v99 = *(v6 + 8);
        v100 = v6;
        v99(v12, v5);
        0xE000000000000000, v60, v61, v62, v63, v64, v65, v66;
        v67 = v5;
        String.LocalizationValue.init(stringLiteral:)();
        v68 = v5;
        v69 = v106;
        (v106)(v9, v12, v68);
        static Locale.current.getter();
        v108 = String.init(localized:table:bundle:locale:comment:)();
        v101 = v70;
        v99(v12, v67);
        0xE000000000000000, v71, v72, v73, v74, v75, v76, v77;
        String.LocalizationValue.init(stringLiteral:)();
        (v69)(v9, v12, v67);
        static Locale.current.getter();
        v78 = String.init(localized:table:bundle:locale:comment:)();
        v106 = v79;
        v107 = v78;
        v5 = v67;
        v99(v12, v67);
        v6 = v100;
        goto LABEL_19;
      }

      v102 = sub_100055998();
      v16 = v45;
      0xE000000000000000, v45, v46, v47, v48, v49, v50, v51;
      v108 = sub_1000559DC();
      v101 = v52;
      0xE000000000000000, v52, v53, v54, v55, v56, v57, v58;
      v37 = sub_100055BE8();
    }

    v106 = v38;
    v107 = v37;
LABEL_19:
    0xE000000000000000, v38, v39, v40, v41, v42, v43, v44;
    String.LocalizationValue.init(stringLiteral:)();
    (*(v6 + 16))(v9, v12, v5);
    static Locale.current.getter();
    v80 = String.init(localized:table:bundle:locale:comment:)();
    v22 = v81;
    (*(v6 + 8))(v12, v5);
    0xE000000000000000, v82, v83, v84, v85, v86, v87, v88;
    v21 = v101;
    v17 = v102;
    v110 = v102;
    v111 = v16;
    v18 = v108;
    v112 = v108;
    v113 = v101;
    v114 = 0;
    v115 = 0xE000000000000000;
    v116 = v107;
    v117 = v106;
    v118 = v80;
    v119 = v22;
    v120 = 0;
    v121 = 0xE000000000000000;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v89 = v103;
    v128 = v103;
    v129 = 0uLL;
    sub_100052AFC(&v110, v109);
    v19 = v80;
    v20 = v89;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

double sub_100050F1C@<D0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v63 - v8;
  v69 = "Turn On Bluetooth";
  String.LocalizationValue.init(stringLiteral:)();
  v68 = *(v4 + 16);
  v64 = v3;
  v68(v7, v9, v3);
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  v71 = v11;
  v72 = v10;
  v67 = *(v4 + 8);
  v67(v9, v3);
  0xE000000000000000, v12, v13, v14, v15, v16, v17, v18;
  v19 = sub_10002FAA8();
  v70 = v19;
  v21 = v20;

  0, v22, v23, v24, v25, v26, v27, v28;
  v29 = sub_100055E24(v19, v21);
  v65 = v30;
  v66 = v29;
  0xE000000000000000, v30, v31, v32, v33, v34, v35, v36;
  v21, v37, v38, v39, v40, v41, v42, v43;
  String.LocalizationValue.init(stringLiteral:)();
  v44 = v64;
  v68(v7, v9, v64);
  static Locale.current.getter();
  v45 = String.init(localized:table:bundle:locale:comment:)();
  v47 = v46;
  v67(v9, v44);
  0xE000000000000000, v48, v49, v50, v51, v52, v53, v54;
  *&v74 = v72;
  *(&v74 + 1) = v71;
  *&v75 = v66;
  *(&v75 + 1) = v65;
  *&v76 = 0;
  *(&v76 + 1) = 0xE000000000000000;
  *&v77 = v45;
  *(&v77 + 1) = v47;
  *&v78 = 0;
  *(&v78 + 1) = 0xE000000000000000;
  *&v79 = 0;
  *(&v79 + 1) = 0xE000000000000000;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  *&v87 = v70;
  *(&v87 + 1) = v21;
  v88[0] = v72;
  v88[1] = v71;
  v88[2] = v66;
  v88[3] = v65;
  v88[4] = 0;
  v88[5] = 0xE000000000000000;
  v88[6] = v45;
  v88[7] = v47;
  v88[8] = 0;
  v88[9] = 0xE000000000000000;
  v88[10] = 0;
  v88[11] = 0xE000000000000000;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v89 = 0u;
  v96 = v70;
  v97 = v21;
  sub_100052AFC(&v74, &v73);
  sub_10002A024(v88);
  v55 = v85;
  a1[10] = v84;
  a1[11] = v55;
  v56 = v87;
  a1[12] = v86;
  a1[13] = v56;
  v57 = v81;
  a1[6] = v80;
  a1[7] = v57;
  v58 = v83;
  a1[8] = v82;
  a1[9] = v58;
  v59 = v77;
  a1[2] = v76;
  a1[3] = v59;
  v60 = v79;
  a1[4] = v78;
  a1[5] = v60;
  result = *&v74;
  v62 = v75;
  *a1 = v74;
  a1[1] = v62;
  return result;
}

uint64_t sub_100051290@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v70 - v8;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v10 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (v10)
  {
    v74 = a1;
    v11 = v10;
    String.LocalizationValue.init(stringLiteral:)();
    v77 = *(v4 + 16);
    v77(v7, v9, v3);
    static Locale.current.getter();
    v12 = String.init(localized:table:bundle:locale:comment:)();
    v78 = v13;
    v79 = v12;
    v14 = *(v4 + 8);
    v75 = v4 + 8;
    v76 = v14;
    v14(v9, v3);
    0xE000000000000000, v15, v16, v17, v18, v19, v20, v21;
    v80 = v11;
    v22 = &v11[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName];
    v23 = *&v11[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8];
    if (v23)
    {
      v24 = *v22;

      v25 = sub_100056068(v24, v23);
      v72 = v26;
      v73 = v25;
      0xE000000000000000, v26, v27, v28, v29, v30, v31, v32;
      v23, v33, v34, v35, v36, v37, v38, v39;
      String.LocalizationValue.init(stringLiteral:)();
      v40 = v77;
      v77(v7, v9, v3);
      static Locale.current.getter();
      v41 = String.init(localized:table:bundle:locale:comment:)();
      v70 = v42;
      v71 = v41;
      v43 = v76;
      v76(v9, v3);
      0xE000000000000000, v44, v45, v46, v47, v48, v49, v50;
      String.LocalizationValue.init(stringLiteral:)();
      v40(v7, v9, v3);
      static Locale.current.getter();
      v51 = String.init(localized:table:bundle:locale:comment:)();
      v53 = v52;

      v43(v9, v3);
      0xE000000000000000, v54, v55, v56, v57, v58, v59, v60;
      *&v82 = v79;
      *(&v82 + 1) = v78;
      *&v83 = v73;
      *(&v83 + 1) = v72;
      *&v84 = 0;
      *(&v84 + 1) = 0xE000000000000000;
      *&v85 = v71;
      *(&v85 + 1) = v70;
      *&v86 = v51;
      *(&v86 + 1) = v53;
      *&v87 = 0;
      *(&v87 + 1) = 0xE000000000000000;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96[0] = v79;
      v96[1] = v78;
      v96[2] = v73;
      v96[3] = v72;
      v96[4] = 0;
      v96[5] = 0xE000000000000000;
      v96[6] = v71;
      v96[7] = v70;
      v96[8] = v51;
      v96[9] = v53;
      v96[10] = 0;
      v96[11] = 0xE000000000000000;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      sub_100052AFC(&v82, &v81);
      result = sub_10002A024(v96);
      v62 = v93;
      v63 = v74;
      v74[10] = v92;
      v63[11] = v62;
      v64 = v95;
      v63[12] = v94;
      v63[13] = v64;
      v65 = v89;
      v63[6] = v88;
      v63[7] = v65;
      v66 = v91;
      v63[8] = v90;
      v63[9] = v66;
      v67 = v85;
      v63[2] = v84;
      v63[3] = v67;
      v68 = v87;
      v63[4] = v86;
      v63[5] = v68;
      v69 = v83;
      *v63 = v82;
      v63[1] = v69;
      return result;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double sub_10005172C@<D0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v58 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v59 = *(v4 + 16);
  v59(v7, v9, v3);
  v66 = v4 + 16;
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  v64 = v11;
  v65 = v10;
  v12 = *(v4 + 8);
  v58[1] = v4 + 8;
  v12(v9, v3);
  v13 = v12;
  0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;
  String.LocalizationValue.init(stringLiteral:)();
  v21 = v59;
  v59(v7, v9, v3);
  static Locale.current.getter();
  v22 = String.init(localized:table:bundle:locale:comment:)();
  v62 = v23;
  v63 = v22;
  v13(v9, v3);
  0xE000000000000000, v24, v25, v26, v27, v28, v29, v30;
  String.LocalizationValue.init(stringLiteral:)();
  v21(v7, v9, v3);
  static Locale.current.getter();
  v31 = String.init(localized:table:bundle:locale:comment:)();
  v60 = v32;
  v61 = v31;
  v13(v9, v3);
  0xE000000000000000, v33, v34, v35, v36, v37, v38, v39;
  String.LocalizationValue.init(stringLiteral:)();
  v21(v7, v9, v3);
  static Locale.current.getter();
  v40 = String.init(localized:table:bundle:locale:comment:)();
  v42 = v41;
  v13(v9, v3);
  0xE000000000000000, v43, v44, v45, v46, v47, v48, v49;
  *&v68 = v65;
  *(&v68 + 1) = v64;
  *&v69 = v63;
  *(&v69 + 1) = v62;
  *&v70 = 0;
  *(&v70 + 1) = 0xE000000000000000;
  *&v71 = v61;
  *(&v71 + 1) = v60;
  *&v72 = v40;
  *(&v72 + 1) = v42;
  *&v73 = 0;
  *(&v73 + 1) = 0xE000000000000000;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82[0] = v65;
  v82[1] = v64;
  v82[2] = v63;
  v82[3] = v62;
  v82[4] = 0;
  v82[5] = 0xE000000000000000;
  v82[6] = v61;
  v82[7] = v60;
  v82[8] = v40;
  v82[9] = v42;
  v82[10] = 0;
  v82[11] = 0xE000000000000000;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  sub_100052AFC(&v68, &v67);
  sub_10002A024(v82);
  v50 = v79;
  a1[10] = v78;
  a1[11] = v50;
  v51 = v81;
  a1[12] = v80;
  a1[13] = v51;
  v52 = v75;
  a1[6] = v74;
  a1[7] = v52;
  v53 = v77;
  a1[8] = v76;
  a1[9] = v53;
  v54 = v71;
  a1[2] = v70;
  a1[3] = v54;
  v55 = v73;
  a1[4] = v72;
  a1[5] = v55;
  result = *&v68;
  v57 = v69;
  *a1 = v68;
  a1[1] = v57;
  return result;
}

double sub_100051B64@<D0>(_OWORD *a1@<X8>)
{
  v62 = a1;
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v57 - v7;
  String.LocalizationValue.init(stringLiteral:)();
  v57 = *(v3 + 16);
  v57(v6, v8, v2);
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v63 = v10;
  v64 = v9;
  v11 = *(v3 + 8);
  v11(v8, v2);
  0xE000000000000000, v12, v13, v14, v15, v16, v17, v18;
  String.LocalizationValue.init(stringLiteral:)();
  v19 = v57;
  v57(v6, v8, v2);
  static Locale.current.getter();
  v20 = String.init(localized:table:bundle:locale:comment:)();
  v60 = v21;
  v61 = v20;
  v11(v8, v2);
  0xE000000000000000, v22, v23, v24, v25, v26, v27, v28;
  String.LocalizationValue.init(stringLiteral:)();
  v19(v6, v8, v2);
  static Locale.current.getter();
  v29 = String.init(localized:table:bundle:locale:comment:)();
  v58 = v30;
  v59 = v29;
  v11(v8, v2);
  0xE000000000000000, v31, v32, v33, v34, v35, v36, v37;
  String.LocalizationValue.init(stringLiteral:)();
  v19(v6, v8, v2);
  static Locale.current.getter();
  v38 = String.init(localized:table:bundle:locale:comment:)();
  v40 = v39;
  v11(v8, v2);
  0xE000000000000000, v41, v42, v43, v44, v45, v46, v47;
  *&v66 = v64;
  *(&v66 + 1) = v63;
  *&v67 = v61;
  *(&v67 + 1) = v60;
  *&v68 = 0;
  *(&v68 + 1) = 0xE000000000000000;
  *&v69 = v59;
  *(&v69 + 1) = v58;
  *&v70 = v38;
  *(&v70 + 1) = v40;
  *&v71 = 0;
  *(&v71 + 1) = 0xE000000000000000;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80[0] = v64;
  v80[1] = v63;
  v80[2] = v61;
  v80[3] = v60;
  v80[4] = 0;
  v80[5] = 0xE000000000000000;
  v80[6] = v59;
  v80[7] = v58;
  v80[8] = v38;
  v80[9] = v40;
  v80[10] = 0;
  v80[11] = 0xE000000000000000;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  sub_100052AFC(&v66, &v65);
  sub_10002A024(v80);
  v48 = v77;
  v49 = v62;
  v62[10] = v76;
  v49[11] = v48;
  v50 = v79;
  v49[12] = v78;
  v49[13] = v50;
  v51 = v73;
  v49[6] = v72;
  v49[7] = v51;
  v52 = v75;
  v49[8] = v74;
  v49[9] = v52;
  v53 = v69;
  v49[2] = v68;
  v49[3] = v53;
  v54 = v71;
  v49[4] = v70;
  v49[5] = v54;
  result = *&v66;
  v56 = v67;
  *v49 = v66;
  v49[1] = v56;
  return result;
}

void sub_100051F80(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v66 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v71 = *(v4 + 16);
  v71(v7, v9, v3);
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  v72 = v11;
  v73 = v10;
  v13 = *(v4 + 8);
  v12 = v4 + 8;
  v70 = v13;
  v13(v9, v3);
  0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;
  v21 = sub_10002FAA8();
  v74 = v22;
  0, v22, v23, v24, v25, v26, v27, v28;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v29 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (v29)
  {
    v67 = v21;
    v68 = v12;
    v69 = v3;
    v30 = (v29 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName);
    v31 = v30[1];
    if (v31)
    {
      v32 = *v30;

      v66 = sub_100058090(v32, v31);
      v34 = v33;
      0xE000000000000000, v33, v35, v36, v37, v38, v39, v40;
      v31, v41, v42, v43, v44, v45, v46, v47;
      String.LocalizationValue.init(stringLiteral:)();
      v48 = v69;
      v71(v7, v9, v69);
      static Locale.current.getter();
      v49 = String.init(localized:table:bundle:locale:comment:)();
      v51 = v50;
      v70(v9, v48);
      0xE000000000000000, v52, v53, v54, v55, v56, v57, v58;
      *&v76 = v73;
      *(&v76 + 1) = v72;
      *&v77 = v66;
      *(&v77 + 1) = v34;
      *&v78 = 0;
      *(&v78 + 1) = 0xE000000000000000;
      *&v79 = v49;
      *(&v79 + 1) = v51;
      *&v80 = 0;
      *(&v80 + 1) = 0xE000000000000000;
      *&v81 = 0;
      *(&v81 + 1) = 0xE000000000000000;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      *&v89 = v67;
      *(&v89 + 1) = v74;
      v90[0] = v73;
      v90[1] = v72;
      v90[2] = v66;
      v90[3] = v34;
      v90[4] = 0;
      v90[5] = 0xE000000000000000;
      v90[6] = v49;
      v90[7] = v51;
      v90[8] = 0;
      v90[9] = 0xE000000000000000;
      v90[10] = 0;
      v90[11] = 0xE000000000000000;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v91 = 0u;
      v98 = v67;
      v99 = v74;
      sub_100052AFC(&v76, &v75);
      sub_10002A024(v90);
      v59 = v87;
      a1[10] = v86;
      a1[11] = v59;
      v60 = v89;
      a1[12] = v88;
      a1[13] = v60;
      v61 = v83;
      a1[6] = v82;
      a1[7] = v61;
      v62 = v85;
      a1[8] = v84;
      a1[9] = v62;
      v63 = v79;
      a1[2] = v78;
      a1[3] = v63;
      v64 = v81;
      a1[4] = v80;
      a1[5] = v64;
      v65 = v77;
      *a1 = v76;
      a1[1] = v65;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_10005235C@<D0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v46 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v51 = *(v4 + 16);
  v51(v7, v9, v3);
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  v48 = v11;
  v49 = v10;
  v50 = *(v4 + 8);
  v50(v9, v3);
  0xE000000000000000, v12, v13, v14, v15, v16, v17, v18;
  String.LocalizationValue.init(stringLiteral:)();
  v51(v7, v9, v3);
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v46 = v20;
  v47 = v19;
  v50(v9, v3);
  0xE000000000000000, v21, v22, v23, v24, v25, v26, v27;
  String.LocalizationValue.init(stringLiteral:)();
  v51(v7, v9, v3);
  static Locale.current.getter();
  v28 = String.init(localized:table:bundle:locale:comment:)();
  v30 = v29;
  v50(v9, v3);
  0xE000000000000000, v31, v32, v33, v34, v35, v36, v37;
  *&v53 = v49;
  *(&v53 + 1) = v48;
  *&v54 = v47;
  *(&v54 + 1) = v46;
  *&v55 = 0;
  *(&v55 + 1) = 0xE000000000000000;
  *&v56 = v28;
  *(&v56 + 1) = v30;
  *&v57 = 0;
  *(&v57 + 1) = 0xE000000000000000;
  *&v58 = 0;
  *(&v58 + 1) = 0xE000000000000000;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67[0] = v49;
  v67[1] = v48;
  v67[2] = v47;
  v67[3] = v46;
  v67[4] = 0;
  v67[5] = 0xE000000000000000;
  v67[6] = v28;
  v67[7] = v30;
  v67[8] = 0;
  v67[9] = 0xE000000000000000;
  v67[10] = 0;
  v67[11] = 0xE000000000000000;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  sub_100052AFC(&v53, &v52);
  sub_10002A024(v67);
  v38 = v64;
  a1[10] = v63;
  a1[11] = v38;
  v39 = v66;
  a1[12] = v65;
  a1[13] = v39;
  v40 = v60;
  a1[6] = v59;
  a1[7] = v40;
  v41 = v62;
  a1[8] = v61;
  a1[9] = v41;
  v42 = v56;
  a1[2] = v55;
  a1[3] = v42;
  v43 = v58;
  a1[4] = v57;
  a1[5] = v43;
  result = *&v53;
  v45 = v54;
  *a1 = v53;
  a1[1] = v45;
  return result;
}

__n128 sub_1000526F4@<Q0>(__n128 *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v16 = &v75 - v15;
  if (qword_10007EC50 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v17 = qword_1000814E8;
    v18 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
    v19 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    if (v19)
    {
      v20 = *(v19 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appIcon);
      v21 = v20;
      v22 = *(v17 + v18);
      if (!v22)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v20 = 0;
      v22 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
      if (!v22)
      {
LABEL_7:
        0, v8, v9, v10, v11, v12, v13, v14;
        goto LABEL_8;
      }
    }

    v83 = v20;
    v23 = (v22 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName);
    v25 = *v23;
    v24 = v23[1];
    swift_bridgeObjectRetain_n();
    0, v26, v27, v28, v29, v30, v31, v32;
    if (v24)
    {
      break;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    swift_once();
  }

  v33 = sub_100059498(v25, v24);
  v81 = v34;
  v82 = v33;
  0, v34, v35, v36, v37, v38, v39, v40;
  v24, v41, v42, v43, v44, v45, v46, v47;
  String.LocalizationValue.init(stringLiteral:)();
  v80.n128_u64[0] = v25;
  v80.n128_u64[1] = v24;
  v77 = *(v4 + 16);
  v77(v7, v16, v3);
  static Locale.current.getter();
  v48 = String.init(localized:table:bundle:locale:comment:)();
  v78 = v49;
  v79 = v48;
  v76 = *(v4 + 8);
  v76(v16, v3);
  0xE000000000000000, v50, v51, v52, v53, v54, v55, v56;
  String.LocalizationValue.init(stringLiteral:)();
  v77(v7, v16, v3);
  static Locale.current.getter();
  v57 = String.init(localized:table:bundle:locale:comment:)();
  v59 = v58;
  v76(v16, v3);
  0xE000000000000000, v60, v61, v62, v63, v64, v65, v66;
  v85.n128_u64[0] = 0;
  v85.n128_u64[1] = 0xE000000000000000;
  v86.n128_u64[0] = 0;
  v86.n128_u64[1] = 0xE000000000000000;
  v87.n128_u64[0] = 0;
  v87.n128_u64[1] = 0xE000000000000000;
  v88.n128_u64[0] = v79;
  v88.n128_u64[1] = v78;
  v89.n128_u64[0] = v57;
  v89.n128_u64[1] = v59;
  v90.n128_u64[0] = 0;
  v90.n128_u64[1] = 0xE000000000000000;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94.n128_u64[0] = 0;
  v94.n128_u64[1] = v83;
  v95 = v80;
  v96.n128_u64[0] = v82;
  v96.n128_u64[1] = v81;
  v97 = 0u;
  v98 = 0u;
  v99[0] = 0;
  v99[1] = 0xE000000000000000;
  v99[2] = 0;
  v99[3] = 0xE000000000000000;
  v99[4] = 0;
  v99[5] = 0xE000000000000000;
  v99[6] = v79;
  v99[7] = v78;
  v99[8] = v57;
  v99[9] = v59;
  v99[10] = 0;
  v99[11] = 0xE000000000000000;
  v101 = 0u;
  v102 = 0u;
  v100 = 0u;
  v103 = 0;
  v104 = v83;
  v105 = v80;
  v106 = v82;
  v107 = v81;
  v108 = 0u;
  v109 = 0u;
  sub_100052AFC(&v85, &v84);
  sub_10002A024(v99);
  v67 = v96;
  a1[10] = v95;
  a1[11] = v67;
  v68 = v98;
  a1[12] = v97;
  a1[13] = v68;
  v69 = v92;
  a1[6] = v91;
  a1[7] = v69;
  v70 = v94;
  a1[8] = v93;
  a1[9] = v70;
  v71 = v88;
  a1[2] = v87;
  a1[3] = v71;
  v72 = v90;
  a1[4] = v89;
  a1[5] = v72;
  result = v85;
  v74 = v86;
  *a1 = v85;
  a1[1] = v74;
  return result;
}

void sub_100052B58()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setSubtitle:v2];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = String._bridgeToObjectiveC()();
  v17 = sub_100053194;
  v18 = v3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10001BE14;
  v16 = &unk_100073E28;
  v5 = _Block_copy(&v13);
  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:1 handler:v5];

  _Block_release(v5);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();
  v17 = sub_1000531CC;
  v18 = v8;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10001BE14;
  v16 = &unk_100073E50;
  v10 = _Block_copy(&v13);
  v11 = [v6 actionWithTitle:v9 style:1 handler:v10];

  _Block_release(v10);

  v12 = [v0 addAction:v11];
}

void sub_100052E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100052E6C(v3);
  }
}

char *sub_100052E6C(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIDiscoveryErrorViewController_routingContext;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v7[2] = *(v3 + 32);
  v7[3] = v4;
  v8 = *(v3 + 64);
  v5 = *(v3 + 16);
  v7[0] = *v3;
  v7[1] = v5;
  *v3 = 257;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  sub_10000A634(v7);
  if (*(v3 + 16) != 1)
  {
    *v3 = a1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042840(v1, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_1000530D8@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIDiscoveryErrorViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10005315C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_1000531B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000531F4()
{
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  [v1 setTitle:v2];

  v3 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v3];

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();
  v39[4] = sub_100053AB4;
  v39[5] = v4;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 1107296256;
  v39[2] = sub_10001BE14;
  v39[3] = &unk_100073F08;
  v6 = _Block_copy(v39);
  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() _systemImageNamed:v8];

  v10 = [objc_allocWithZone(UIImageView) initWithImage:v9];
  v11 = [objc_opt_self() systemBlueColor];
  [v10 setTintColor:v11];

  v12 = v10;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [objc_opt_self() configurationWithPointSize:72.0];
  [v12 setPreferredSymbolConfiguration:v13];

  v14 = [v1 contentView];
  [v14 addSubview:v12];

  v15 = [v1 contentView];
  v16 = [v15 mainContentGuide];

  v17 = objc_opt_self();
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10005C4D0;
  v19 = [v12 topAnchor];
  v20 = [v16 topAnchor];
  v21 = [v19 constraintGreaterThanOrEqualToAnchor:v20];

  *(v18 + 32) = v21;
  v22 = [v12 bottomAnchor];
  v23 = [v16 bottomAnchor];
  v24 = [v22 constraintLessThanOrEqualToAnchor:v23];

  *(v18 + 40) = v24;
  v25 = [v12 centerXAnchor];
  v26 = [v16 centerXAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v18 + 48) = v27;
  v28 = [v12 centerYAnchor];

  v29 = [v16 centerYAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v18 + 56) = v30;
  sub_10000A5E8();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v18, v32, v33, v34, v35, v36, v37, v38;
  [v17 activateConstraints:isa];
}

void sub_100053710(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100053764();
  }
}

char *sub_100053764()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI37ASUIDeviceOTANameChoiceViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042870(v0, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_1000539F8@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI37ASUIDeviceOTANameChoiceViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100053A7C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_100053ABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100053AD4()
{
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  [v0 setTitle:v2];

  v3 = String._bridgeToObjectiveC()();
  [v0 setSubtitle:v3];

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();
  v48 = sub_100054484;
  v49 = v4;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_10001BE14;
  v47 = &unk_100073FC0;
  v6 = _Block_copy(&aBlock);
  v7 = objc_opt_self();
  v43 = [v7 actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();
  v48 = sub_1000544BC;
  v49 = v8;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_10001BE14;
  v47 = &unk_100073FE8;
  v10 = _Block_copy(&aBlock);
  v11 = [v7 actionWithTitle:v9 style:1 handler:v10];

  _Block_release(v10);

  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  v14 = [objc_allocWithZone(UIImageView) initWithImage:v13];
  v15 = [objc_opt_self() systemBlueColor];
  [v14 setTintColor:v15];

  v16 = v14;
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [objc_opt_self() configurationWithPointSize:72.0];
  [v16 setPreferredSymbolConfiguration:v17];

  v18 = [v1 contentView];
  [v18 addSubview:v16];

  v19 = [v1 contentView];
  v20 = [v19 mainContentGuide];

  v21 = objc_opt_self();
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10005C4D0;
  v23 = [v16 topAnchor];
  v24 = [v20 topAnchor];
  v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24];

  *(v22 + 32) = v25;
  v26 = [v16 bottomAnchor];
  v27 = [v20 bottomAnchor];
  v28 = [v26 constraintLessThanOrEqualToAnchor:v27];

  *(v22 + 40) = v28;
  v29 = [v16 centerXAnchor];
  v30 = [v20 centerXAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v22 + 48) = v31;
  v32 = [v16 centerYAnchor];

  v33 = [v20 centerYAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v22 + 56) = v34;
  sub_10000A5E8();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v22, v36, v37, v38, v39, v40, v41, v42;
  [v21 activateConstraints:isa];
}

void sub_1000540FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100054158(v3);
  }
}

char *sub_100054158(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIBluetoothSetupViewController_routingContext;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v7[2] = *(v3 + 32);
  v7[3] = v4;
  v8 = *(v3 + 64);
  v5 = *(v3 + 16);
  v7[0] = *v3;
  v7[1] = v5;
  *v3 = 257;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  sub_10000A634(v7);
  if (*(v3 + 16) != 1)
  {
    *v3 = a1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000428A0(v1, result);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1000543C8@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI32ASUIBluetoothSetupViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10005444C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_1000544A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_1000544E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_100054520(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_100054568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000545F0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v18[-v10];
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x800000010005FF10;
  v13._countAndFlagsBits = 0x1000000000000022;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v14);
  v15._countAndFlagsBits = 782074082;
  v15._object = 0xA400000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v6 + 16))(v9, v11, v5);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  (*(v6 + 8))(v11, v5);
  return v16;
}

uint64_t sub_10005481C(uint64_t a1, void *a2, uint64_t a3, void *a4, unsigned __int16 a5)
{
  v27._countAndFlagsBits = a3;
  v27._object = a4;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v16 - 8);
  if (a5 <= 0x3C2u)
  {
    if (a5 == 961)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v17 = "Connect Subtitle HID Keyboard ";
      goto LABEL_11;
    }

    if (a5 != 962)
    {
      goto LABEL_12;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18 = " HID GameController ";
    v19 = 0xD00000000000001BLL;
LABEL_13:
    v20 = v18 | 0x8000000000000000;
    goto LABEL_14;
  }

  if (a5 == 963 || a5 == 964)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18 = "Connect Subtitle HID Touchpad ";
    v19 = 0xD000000000000024;
    goto LABEL_13;
  }

  if (a5 != 969)
  {
LABEL_12:
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18 = "ssories paired without the app.";
    v19 = 0xD00000000000001DLL;
    goto LABEL_13;
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17 = "Connect Subtitle HID Touchpad ";
LABEL_11:
  v20 = (v17 - 32) | 0x8000000000000000;
  v19 = 0xD00000000000001ELL;
LABEL_14:
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v19);
  v21._countAndFlagsBits = a1;
  v21._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v21);
  v22._countAndFlagsBits = 32;
  v22._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v27);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v10 + 16))(v13, v15, v9);
  static Locale.current.getter();
  v24 = String.init(localized:table:bundle:locale:comment:)();
  (*(v10 + 8))(v15, v9);
  return v24;
}

uint64_t sub_100054B44()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v8;
}

uint64_t sub_100054D50()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v8;
}

uint64_t sub_100054F5C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v8;
}

uint64_t sub_100055168()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v8;
}

uint64_t sub_100055374()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v8;
}

uint64_t sub_100055580()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v8;
}

uint64_t sub_10005578C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v8;
}

uint64_t sub_1000559DC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v8;
}

uint64_t sub_100055C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v14[-v10];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v6 + 16))(v9, v11, v5);
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  (*(v6 + 8))(v11, v5);
  return v12;
}

uint64_t sub_100055E24(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v18[-v10];
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x800000010005FE30;
  v13._countAndFlagsBits = 0x1000000000000027;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v14);
  v15._countAndFlagsBits = 0x100000000000002ELL;
  v15._object = 0x800000010005FE60;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v6 + 16))(v9, v11, v5);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  (*(v6 + 8))(v11, v5);
  return v16;
}

uint64_t sub_100056068(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v18[-v10];
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 10256610;
  v13._object = 0xA300000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v14);
  v15._object = 0x800000010005FE90;
  v15._countAndFlagsBits = 0x100000000000007ALL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v6 + 16))(v9, v11, v5);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  (*(v6 + 8))(v11, v5);
  return v16;
}

uint64_t sub_100056294(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  v10 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x800000010005FF40;
  v11._countAndFlagsBits = 0xD000000000000014;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
  v15[1] = a1;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v12._countAndFlagsBits = 0x736574756E696D20;
  v12._object = 0xE90000000000002ELL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v4 + 16))(v7, v9, v3);
  static Locale.current.getter();
  v13 = String.init(localized:table:bundle:locale:comment:)();
  (*(v4 + 8))(v9, v3);
  return v13;
}

uint64_t sub_1000564E8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v18[-v10];
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x800000010005FFA0;
  v13._countAndFlagsBits = 0xD000000000000019;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v14);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v6 + 16))(v9, v11, v5);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  (*(v6 + 8))(v11, v5);
  return v16;
}

uint64_t sub_100056710()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v8;
}

uint64_t sub_100056920(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v18[-v10];
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x800000010005FFE0;
  v13._countAndFlagsBits = 0xD000000000000017;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v14);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v6 + 16))(v9, v11, v5);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  (*(v6 + 8))(v11, v5);
  return v16;
}

uint64_t sub_100056B48()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v8;
}

uint64_t sub_100056D54(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v18[-v10];
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x8000000100060000;
  v13._countAndFlagsBits = 0xD00000000000001CLL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v14);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v6 + 16))(v9, v11, v5);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  (*(v6 + 8))(v11, v5);
  return v16;
}

uint64_t sub_100056F7C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v26._countAndFlagsBits = a1;
  v26._object = a2;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v14 - 8);
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  if (byte_1000814F0 == 1)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._countAndFlagsBits = 10256610;
    v15._object = 0xA300000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
    v16._countAndFlagsBits = a3;
    v16._object = a4;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v16);
    v17._object = 0x8000000100060020;
    v17._countAndFlagsBits = 0x1000000000000016;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v26);
    v18 = 0x1000000000000015;
    v19 = 0x8000000100060060;
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._countAndFlagsBits = 10256610;
    v20._object = 0xA300000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
    v21._countAndFlagsBits = a3;
    v21._object = a4;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v21);
    v22._object = 0x8000000100060020;
    v22._countAndFlagsBits = 0x1000000000000016;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v26);
    v19 = 0x8000000100060040;
    v18 = 0x1000000000000016;
  }

  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v18);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v8 + 16))(v11, v13, v7);
  static Locale.current.getter();
  v23 = String.init(localized:table:bundle:locale:comment:)();
  (*(v8 + 8))(v13, v7);
  return v23;
}

uint64_t sub_100057280(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v24[-v14];
  v16 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v16 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 10256610;
  v17._object = 0xA300000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
  v18._countAndFlagsBits = a3;
  v18._object = a4;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v18);
  v19._object = 0x8000000100060020;
  v19._countAndFlagsBits = 0x1000000000000016;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
  v20._countAndFlagsBits = a1;
  v20._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v20);
  v21._countAndFlagsBits = 0x100000000000001ALL;
  v21._object = 0x8000000100060080;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v10 + 16))(v13, v15, v9);
  static Locale.current.getter();
  v22 = String.init(localized:table:bundle:locale:comment:)();
  (*(v10 + 8))(v15, v9);
  return v22;
}

uint64_t sub_1000574E8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v48 - v12;
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v14 - 8);
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v30._countAndFlagsBits = 10256610;
        v30._object = 0xA300000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
        v31._countAndFlagsBits = a2;
        v31._object = a3;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v31);
        v17 = "” and five other accessories are now paired, but may need to finish setting up in the app. You can manage these accessories in Settings anytime.";
        goto LABEL_18;
      }

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v24._countAndFlagsBits = 10256610;
      v24._object = 0xA300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
      v25._countAndFlagsBits = a2;
      v25._object = a3;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v25);
      v26 = "” and six other accessories are now paired, but may need to finish setting up in the app. You can manage these accessories in Settings anytime.";
LABEL_20:
      v22 = (v26 - 32);
      v23 = 0x1000000000000091;
      goto LABEL_25;
    }

    switch(a1)
    {
      case 7:
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v35._countAndFlagsBits = 10256610;
        v35._object = 0xA300000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v35);
        v36._countAndFlagsBits = a2;
        v36._object = a3;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v36);
        v37 = "” and seven other accessories are now paired, but may need to finish setting up in the app. You can manage these accessories in Settings anytime.";
        break;
      case 8:
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v40._countAndFlagsBits = 10256610;
        v40._object = 0xA300000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v40);
        v41._countAndFlagsBits = a2;
        v41._object = a3;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v41);
        v37 = "” and eight other accessories are now paired, but may need to finish setting up in the app. You can manage these accessories in Settings anytime.";
        break;
      case 9:
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v18._countAndFlagsBits = 10256610;
        v18._object = 0xA300000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
        v19._countAndFlagsBits = a2;
        v19._object = a3;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v19);
        v17 = "” and nine other accessories are now paired, but may need to finish setting up in the app. You can manage these accessories in Settings anytime.";
        goto LABEL_18;
      default:
        goto LABEL_28;
    }

LABEL_24:
    v22 = (v37 - 32);
    v23 = 0x1000000000000093;
    goto LABEL_25;
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 != 3)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v15._countAndFlagsBits = 10256610;
        v15._object = 0xA300000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
        v16._countAndFlagsBits = a2;
        v16._object = a3;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v16);
        v17 = "” and four other accessories are now paired, but may need to finish setting up in the app. You can manage these accessories in Settings anytime.";
LABEL_18:
        v32 = (v17 - 32) | 0x8000000000000000;
        v23 = 0x1000000000000092;
LABEL_26:
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v23);
        String.LocalizationValue.init(stringInterpolation:)();
        (*(v8 + 16))(v11, v13, v7);
        static Locale.current.getter();
        goto LABEL_27;
      }

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v38._countAndFlagsBits = 10256610;
      v38._object = 0xA300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v38);
      v39._countAndFlagsBits = a2;
      v39._object = a3;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v39);
      v37 = "” and three other accessories are now paired, but may need to finish setting up in the app. You can manage these accessories in Settings anytime.";
      goto LABEL_24;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v33._countAndFlagsBits = 10256610;
    v33._object = 0xA300000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v33);
    v34._countAndFlagsBits = a2;
    v34._object = a3;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v34);
    v26 = "” and two other accessories are now paired, but may need to finish setting up in the app. You can manage these accessories in Settings anytime.";
    goto LABEL_20;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v20._countAndFlagsBits = 10256610;
      v20._object = 0xA300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
      v21._countAndFlagsBits = a2;
      v21._object = a3;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v21);
      v22 = "Settings anytime.";
      v23 = 0x100000000000008FLL;
LABEL_25:
      v32 = v22 | 0x8000000000000000;
      goto LABEL_26;
    }

LABEL_28:
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v44._countAndFlagsBits = 10256610;
    v44._object = 0xA300000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v44);
    v45._countAndFlagsBits = a2;
    v45._object = a3;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v45);
    v46._countAndFlagsBits = 0x20646E61209D80E2;
    v46._object = 0xA800000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v46);
    v48[3] = a1;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v47._object = 0x80000001000600A0;
    v47._countAndFlagsBits = 0xD000000000000086;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v47);
    String.LocalizationValue.init(stringInterpolation:)();
    (*(v8 + 16))(v11, v13, v7);
    static Locale.current.getter();
    goto LABEL_27;
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 10256610;
  v27._object = 0xA300000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
  v28._countAndFlagsBits = a2;
  v28._object = a3;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v28);
  v29._countAndFlagsBits = 0x1000000000000076;
  v29._object = 0x80000001000606C0;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v8 + 16))(v11, v13, v7);
  static Locale.current.getter();
LABEL_27:
  v42 = String.init(localized:table:bundle:locale:comment:)();
  (*(v8 + 8))(v13, v7);
  return v42;
}

uint64_t sub_100057AE4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v46 - v12;
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v14 - 8);
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      switch(a1)
      {
        case 7:
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v33._countAndFlagsBits = 10256610;
          v33._object = 0xA300000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v33);
          v34._countAndFlagsBits = a2;
          v34._object = a3;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v34);
          v32 = "” and seven other accessories are manageable in Settings.";
          break;
        case 8:
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v38._countAndFlagsBits = 10256610;
          v38._object = 0xA300000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v38);
          v39._countAndFlagsBits = a2;
          v39._object = a3;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v39);
          v32 = "” and eight other accessories are manageable in Settings.";
          break;
        case 9:
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v15._countAndFlagsBits = 10256610;
          v15._object = 0xA300000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
          v16._countAndFlagsBits = a2;
          v16._object = a3;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v16);
          v17 = "” and nine other accessories are manageable in Settings.";
LABEL_20:
          v37 = (v17 - 32) | 0x8000000000000000;
          v26 = 0x100000000000003ALL;
LABEL_24:
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v26);
          String.LocalizationValue.init(stringInterpolation:)();
          (*(v8 + 16))(v11, v13, v7);
          static Locale.current.getter();
          goto LABEL_25;
        default:
LABEL_26:
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v42._countAndFlagsBits = 10256610;
          v42._object = 0xA300000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v42);
          v43._countAndFlagsBits = a2;
          v43._object = a3;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v43);
          v44._countAndFlagsBits = 0x20646E61209D80E2;
          v44._object = 0xA800000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v44);
          v46[3] = a1;
          String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
          v45._object = 0x8000000100060740;
          v45._countAndFlagsBits = 0xD00000000000002ELL;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v45);
          String.LocalizationValue.init(stringInterpolation:)();
          (*(v8 + 16))(v11, v13, v7);
          static Locale.current.getter();
          goto LABEL_25;
      }

      goto LABEL_22;
    }

    if (a1 == 5)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v35._countAndFlagsBits = 10256610;
      v35._object = 0xA300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v35);
      v36._countAndFlagsBits = a2;
      v36._object = a3;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v36);
      v17 = "” and five other accessories are manageable in Settings.";
      goto LABEL_20;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v23._countAndFlagsBits = 10256610;
    v23._object = 0xA300000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
    v24._countAndFlagsBits = a2;
    v24._object = a3;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v24);
    v20 = "” and six other accessories are manageable in Settings.";
LABEL_15:
    v25 = v20 - 32;
    v26 = 0x1000000000000039;
LABEL_23:
    v37 = v25 | 0x8000000000000000;
    goto LABEL_24;
  }

  if (a1 > 2)
  {
    if (a1 != 3)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v21._countAndFlagsBits = 10256610;
      v21._object = 0xA300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
      v22._countAndFlagsBits = a2;
      v22._object = a3;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v22);
      v17 = "” and four other accessories are manageable in Settings.";
      goto LABEL_20;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v30._countAndFlagsBits = 10256610;
    v30._object = 0xA300000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
    v31._countAndFlagsBits = a2;
    v31._object = a3;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v31);
    v32 = "” and three other accessories are manageable in Settings.";
LABEL_22:
    v25 = v32 - 32;
    v26 = 0x100000000000003BLL;
    goto LABEL_23;
  }

  if (a1 != 1)
  {
    if (a1 != 2)
    {
      goto LABEL_26;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18._countAndFlagsBits = 10256610;
    v18._object = 0xA300000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
    v19._countAndFlagsBits = a2;
    v19._object = a3;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v19);
    v20 = "” and two other accessories are manageable in Settings.";
    goto LABEL_15;
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 10256610;
  v27._object = 0xA300000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
  v28._countAndFlagsBits = a2;
  v28._object = a3;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v28);
  v29._countAndFlagsBits = 0x1000000000000037;
  v29._object = 0x8000000100060970;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v8 + 16))(v11, v13, v7);
  static Locale.current.getter();
LABEL_25:
  v40 = String.init(localized:table:bundle:locale:comment:)();
  (*(v8 + 8))(v13, v7);
  return v40;
}

uint64_t sub_100058090(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v18[-v10];
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 10256610;
  v13._object = 0xA300000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v14);
  v15._object = 0x80000001000609B0;
  v15._countAndFlagsBits = 0x1000000000000079;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v6 + 16))(v9, v11, v5);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  (*(v6 + 8))(v11, v5);
  return v16;
}

uint64_t sub_1000582BC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v26._countAndFlagsBits = a3;
  v26._object = a4;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v14 - 8);
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  if (byte_1000814F0 == 1)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._countAndFlagsBits = 10256610;
    v15._object = 0xA300000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
    v16._countAndFlagsBits = a1;
    v16._object = a2;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v16);
    v17 = "”. Please try again.";
    v18 = 0x1000000000000035;
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v19._countAndFlagsBits = 10256610;
    v19._object = 0xA300000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
    v20._countAndFlagsBits = a1;
    v20._object = a2;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v20);
    v17 = "our iPhone and try again.";
    v18 = 0x1000000000000036;
  }

  v21 = v17 | 0x8000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v18);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v26);
  v22._object = 0x8000000100060A70;
  v22._countAndFlagsBits = 0x1000000000000016;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v8 + 16))(v11, v13, v7);
  static Locale.current.getter();
  v23 = String.init(localized:table:bundle:locale:comment:)();
  (*(v8 + 8))(v13, v7);
  return v23;
}

uint64_t sub_1000585A8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v24[-v14];
  v16 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v16 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 10256610;
  v17._object = 0xA300000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
  v18._countAndFlagsBits = a1;
  v18._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v18);
  v19._countAndFlagsBits = 0x100000000000003ALL;
  v19._object = 0x8000000100060AD0;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
  v20._countAndFlagsBits = a3;
  v20._object = a4;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v20);
  v21._object = 0x8000000100060A70;
  v21._countAndFlagsBits = 0x1000000000000016;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v10 + 16))(v13, v15, v9);
  static Locale.current.getter();
  v22 = String.init(localized:table:bundle:locale:comment:)();
  (*(v10 + 8))(v15, v9);
  return v22;
}

uint64_t sub_100058810(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v32 - v12;
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v14 - 8);
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      switch(a1)
      {
        case 7:
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v22 = "Seven accessories that were previously paired can now be used with the “";
          break;
        case 8:
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v22 = "Eight accessories that were previously paired can now be used with the “";
          break;
        case 9:
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v15 = "Nine accessories that were previously paired can now be used with the “";
LABEL_20:
          v23 = (v15 - 32) | 0x8000000000000000;
          v18 = 0x1000000000000049;
LABEL_24:
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v18);
          v24._countAndFlagsBits = a2;
          v24._object = a3;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v24);
          v25._countAndFlagsBits = 0x2E707061209D80E2;
          v25._object = 0xA800000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
          String.LocalizationValue.init(stringInterpolation:)();
          (*(v8 + 16))(v11, v13, v7);
          static Locale.current.getter();
          goto LABEL_25;
        default:
LABEL_26:
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v28._countAndFlagsBits = 0;
          v28._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
          v32[3] = a1;
          String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
          v29._countAndFlagsBits = 0x1000000000000045;
          v29._object = 0x8000000100060B10;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
          v30._countAndFlagsBits = a2;
          v30._object = a3;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v30);
          v31._countAndFlagsBits = 0x2E707061209D80E2;
          v31._object = 0xA800000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v31);
          String.LocalizationValue.init(stringInterpolation:)();
          (*(v8 + 16))(v11, v13, v7);
          static Locale.current.getter();
          goto LABEL_25;
      }

      goto LABEL_22;
    }

    if (a1 == 5)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v15 = "Five accessories that were previously paired can now be used with the “";
      goto LABEL_20;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16 = "Six accessories that were previously paired can now be used with the “";
LABEL_15:
    v17 = v16 - 32;
    v18 = 0x1000000000000048;
LABEL_23:
    v23 = v17 | 0x8000000000000000;
    goto LABEL_24;
  }

  if (a1 > 2)
  {
    if (a1 != 3)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v15 = "Four accessories that were previously paired can now be used with the “";
      goto LABEL_20;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v22 = "Three accessories that were previously paired can now be used with the “";
LABEL_22:
    v17 = v22 - 32;
    v18 = 0x100000000000004ALL;
    goto LABEL_23;
  }

  if (a1 != 1)
  {
    if (a1 != 2)
    {
      goto LABEL_26;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16 = "Two accessories that were previously paired can now be used with the “";
    goto LABEL_15;
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0x1000000000000045;
  v19._object = 0x8000000100060DE0;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
  v20._countAndFlagsBits = a2;
  v20._object = a3;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v20);
  v21._countAndFlagsBits = 0x2E707061209D80E2;
  v21._object = 0xA800000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v8 + 16))(v11, v13, v7);
  static Locale.current.getter();
LABEL_25:
  v26 = String.init(localized:table:bundle:locale:comment:)();
  (*(v8 + 8))(v13, v7);
  return v26;
}

uint64_t sub_100058D08()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v8;
}

uint64_t sub_100058F18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28[0] = a4;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v28 - v13;
  v15 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v15 - 8);
  if (qword_10007EC60 != -1)
  {
    swift_once();
  }

  if (byte_1000814F0 == 1)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._countAndFlagsBits = 10256610;
    v16._object = 0xA300000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
    v17._countAndFlagsBits = a1;
    v17._object = a2;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v17);
    v18._object = 0x8000000100060E30;
    v18._countAndFlagsBits = 0x100000000000001BLL;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
    v19._countAndFlagsBits = a3;
    v19._object = v28[0];
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v19);
    v20 = 0x6E697375209D80E2;
    v21 = 0xAF2E4E414C572067;
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v22._countAndFlagsBits = 10256610;
    v22._object = 0xA300000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
    v23._countAndFlagsBits = a1;
    v23._object = a2;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v23);
    v24._object = 0x8000000100060E30;
    v24._countAndFlagsBits = 0x100000000000001BLL;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
    v25._countAndFlagsBits = a3;
    v25._object = v28[0];
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v25);
    v20 = 0x1000000000000010;
    v21 = 0x8000000100060E50;
  }

  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v20);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v9 + 16))(v12, v14, v8);
  static Locale.current.getter();
  v26 = String.init(localized:table:bundle:locale:comment:)();
  (*(v9 + 8))(v14, v8);
  return v26;
}

uint64_t sub_100059230(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v24[-v14];
  v16 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v16 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 10256610;
  v17._object = 0xA300000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
  v18._countAndFlagsBits = a1;
  v18._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v18);
  v19._countAndFlagsBits = 0x100000000000001BLL;
  v19._object = 0x8000000100060E30;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
  v20._countAndFlagsBits = a3;
  v20._object = a4;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v20);
  v21._object = 0x8000000100060E90;
  v21._countAndFlagsBits = 0x1000000000000014;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v10 + 16))(v13, v15, v9);
  static Locale.current.getter();
  v22 = String.init(localized:table:bundle:locale:comment:)();
  (*(v10 + 8))(v15, v9);
  return v22;
}

uint64_t sub_100059498(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v18[-v10];
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x1000000000000050;
  v13._object = 0x8000000100060EB0;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  v14._countAndFlagsBits = a1;
  v14._object = a2;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v14);
  v15._object = 0x8000000100060F10;
  v15._countAndFlagsBits = 0x100000000000003FLL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v6 + 16))(v9, v11, v5);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  (*(v6 + 8))(v11, v5);
  return v16;
}

uint64_t sub_1000596D4()
{
  if (qword_10007EC30 != -1)
  {
    result = swift_once();
  }

  byte_1000814F0 = byte_1000814E0;
  return result;
}

id sub_1000598E8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ASUIDeviceTableViewCell();
  return objc_msgSendSuper2(&v4, "dealloc");
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}