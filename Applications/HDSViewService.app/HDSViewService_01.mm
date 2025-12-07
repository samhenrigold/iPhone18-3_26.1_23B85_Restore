double sub_10001F288@<D0>(char *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100006658(v2);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = String._bridgeToObjectiveC()();
  v8 = sub_100006658(v7);

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = type metadata accessor for HomePodSetupViewModel(0);
  v13 = v12[6];
  v14 = type metadata accessor for AdjustedMovie(0);
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000BD050;
  *(v15 + 32) = v9;
  *(v15 + 40) = v11;
  *(v15 + 48) = 1;
  *(v15 + 56) = 1;
  v16 = v12[28];
  v17 = type metadata accessor for AdjustedImage(0);
  (*(*(v17 - 8) + 56))(&a1[v16], 1, 1, v17);
  v18 = v12[58];
  v19 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v19 - 8) + 56))(&a1[v18], 1, 1, v19);
  v20 = &a1[v12[14]];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v43);
  *a1 = v4;
  *(a1 + 1) = v6;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v24 = &a1[v12[7]];
  *v24 = 0;
  *(v24 + 1) = 0xE000000000000000;
  v25 = &a1[v12[8]];
  *v25 = 0;
  *(v25 + 1) = 0xE000000000000000;
  v26 = &a1[v12[9]];
  *v26 = 0;
  *(v26 + 1) = 0xE000000000000000;
  *&a1[v12[10]] = v15;
  *&a1[v12[11]] = _swiftEmptyArrayStorage;
  *&a1[v12[12]] = _swiftEmptyArrayStorage;
  *&a1[v12[13]] = _swiftEmptyArrayStorage;
  *&a1[v12[15]] = _swiftEmptyArrayStorage;
  *&a1[v12[16]] = _swiftEmptyArrayStorage;
  a1[v12[17]] = Int64 != 0;
  v27 = &a1[v12[18]];
  *v27 = 0;
  v27[4] = 1;
  *&a1[v12[19]] = 1;
  v28 = &a1[v12[20]];
  v29 = v43[3];
  *(v28 + 2) = v43[2];
  *(v28 + 3) = v29;
  *(v28 + 4) = v43[4];
  v30 = v43[1];
  *v28 = v43[0];
  *(v28 + 1) = v30;
  v31 = &a1[v12[21]];
  result = 0.0;
  *(v31 + 3) = 0u;
  *(v31 + 4) = 0u;
  *(v31 + 1) = 0u;
  *(v31 + 2) = 0u;
  *v31 = 0u;
  *&a1[v12[22]] = 0;
  *&a1[v12[23]] = 0;
  v33 = &a1[v12[24]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &a1[v12[25]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &a1[v12[26]];
  *v35 = 0;
  *(v35 + 1) = 0;
  a1[v12[27]] = 0;
  a1[v12[29]] = 0;
  *&a1[v12[30]] = 0;
  *&a1[v12[31]] = 0;
  v36 = &a1[v12[32]];
  *v36 = 0;
  v36[8] = 1;
  a1[v12[33]] = 0;
  a1[v12[34]] = 0;
  a1[v12[35]] = 0;
  *&a1[v12[36]] = 0;
  *&a1[v12[37]] = 0;
  v37 = &a1[v12[38]];
  *v37 = 0;
  *(v37 + 1) = 0xE000000000000000;
  a1[v12[39]] = 0;
  a1[v12[40]] = 0;
  *&a1[v12[41]] = 0;
  a1[v12[42]] = 0;
  a1[v12[43]] = 0;
  a1[v12[44]] = 0;
  v38 = &a1[v12[45]];
  *v38 = 0;
  *(v38 + 1) = 0xE000000000000000;
  a1[v12[46]] = 0;
  v39 = &a1[v12[47]];
  *v39 = 0;
  *(v39 + 1) = 0xE000000000000000;
  a1[v12[48]] = 0;
  v40 = &a1[v12[49]];
  *v40 = 0;
  *(v40 + 1) = 0;
  a1[v12[50]] = 0;
  *&a1[v12[51]] = 0;
  *&a1[v12[52]] = 0;
  v41 = &a1[v12[53]];
  *v41 = 0;
  *(v41 + 1) = 0;
  *&a1[v12[54]] = 0;
  v42 = &a1[v12[55]];
  *v42 = 0;
  *(v42 + 1) = 0xE000000000000000;
  *&a1[v12[56]] = 0;
  a1[v12[57]] = 1;
  return result;
}

void sub_10001F6FC(char *a1@<X0>, char *a2@<X8>)
{
  v224 = a1;
  v3 = type metadata accessor for AdjustedImage(0);
  v218 = *(v3 - 8);
  v219 = v3;
  __chkstk_darwin(v3);
  v212 = &v211 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  v6 = __chkstk_darwin(v5 - 8);
  v213 = &v211 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v215 = &v211 - v8;
  v216 = type metadata accessor for URL();
  v9 = *(v216 - 8);
  __chkstk_darwin(v216);
  v214 = &v211 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  v222 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v223 = v13;

  v14 = String._bridgeToObjectiveC()();
  v15 = sub_1000068E0();

  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  v16 = sub_100006658(v15);

  v220 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v221 = v17;

  v18 = String._bridgeToObjectiveC()();
  v19 = sub_100006658(v18);

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = String._bridgeToObjectiveC()();
  v24 = sub_100006658(v23);

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000BB8E0;
  *(v28 + 32) = v20;
  *(v28 + 40) = v22;
  *(v28 + 48) = 0;
  *(v28 + 56) = 1;
  *(v28 + 64) = v25;
  *(v28 + 72) = v27;
  *(v28 + 80) = 1;
  *(v28 + 88) = 2;
  v29 = [objc_opt_self() mainScreen];
  [v29 scale];
  v31 = v30;
  v32 = *&v30;

  if ((v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
LABEL_17:
    v54 = type metadata accessor for Logger();
    sub_100012AAC(v54, qword_100101EF0);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v217 = v9;
      v58 = v57;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v225 = v60;
      *v58 = 136315394;
      v61 = sub_1000B08A0(v27, v22, &v225);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2112;
      v62 = *&v224[v32];
      *(v58 + 14) = v62;
      *v59 = v62;
      v63 = v62;
      _os_log_impl(&_mh_execute_header, v55, v56, "HomePodSetupViewModel: ### HomePod iPad lockup asset missing %s in %@", v58, 0x16u);
      sub_10000EBA4(v59, &qword_100101E38, &unk_1000BCF80);

      sub_10000E70C(v60);
      v24 = v224;

      v9 = v217;
    }

    else
    {
    }

    v39 = 0;
    v41 = 0;
    goto LABEL_28;
  }

  if (SFDeviceClassCodeGet() == 3)
  {
    *&v225 = 0;
    *(&v225 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    *&v225 = 0xD000000000000015;
    *(&v225 + 1) = 0x80000001000C1BC0;
    v230 = v31;
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    v34._countAndFlagsBits = 0x676E702E78;
    v34._object = 0xE500000000000000;
    String.append(_:)(v34);
    v22 = *(&v225 + 1);
    v27 = v225;
    v32 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_assetBundle;
    v24 = v224;
    v35 = *&v224[OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_assetBundle];
    if (v35)
    {
      v36 = v35;
      v37 = String._bridgeToObjectiveC()();
      v38 = [v36 pathForResource:v37 ofType:0];

      v24 = v224;
      if (v38)
      {

        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        goto LABEL_28;
      }
    }

    if (qword_1001015F8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

  v217 = v9;
  v24 = v224;
  if (v224[OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode] == 5)
  {
    v42 = 2;
  }

  else
  {
    v42 = 1;
  }

  *&v225 = 0;
  *(&v225 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  *&v225 = 0xD000000000000018;
  *(&v225 + 1) = 0x80000001000C1BA0;
  v230 = v42;
  v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v43);

  v44._countAndFlagsBits = 64;
  v44._object = 0xE100000000000000;
  String.append(_:)(v44);
  v230 = v31;
  v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v45);

  v46._countAndFlagsBits = 0x676E702E78;
  v46._object = 0xE500000000000000;
  String.append(_:)(v46);
  v47 = v225;
  v48 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_assetBundle;
  v49 = *&v24[OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_assetBundle];
  if (v49 && (v50 = v49, v51 = String._bridgeToObjectiveC()(), v52 = [v50 pathForResource:v51 ofType:0], v50, v51, v24 = v224, v52))
  {

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v53;
  }

  else
  {
    if (qword_1001015F8 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100012AAC(v64, qword_100101EF0);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v225 = v69;
      *v67 = 136315394;
      v70 = sub_1000B08A0(v47, *(&v47 + 1), &v225);

      *(v67 + 4) = v70;
      *(v67 + 12) = 2112;
      v71 = *&v224[v48];
      *(v67 + 14) = v71;
      *v68 = v71;
      v72 = v71;
      _os_log_impl(&_mh_execute_header, v65, v66, "HomePodSetupViewModel: ### HomePod iPhone lockup asset missing %s in %@", v67, 0x16u);
      sub_10000EBA4(v68, &qword_100101E38, &unk_1000BCF80);

      sub_10000E70C(v69);
      v24 = v224;
    }

    else
    {
    }

    v39 = 0;
    v41 = 0;
  }

  v9 = v217;
LABEL_28:
  if (v24[OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode] == 6)
  {
    if (!v41)
    {
      goto LABEL_42;
    }

    v73 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_assetBundle;
    v74 = *&v24[OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_assetBundle];
    v75 = String._bridgeToObjectiveC()();

    v76 = [objc_opt_self() imageNamed:v75 inBundle:v74];

    if (!v76)
    {
      goto LABEL_42;
    }

    v77 = *&v24[v73];
    if (!v77)
    {

      v143 = v215;
      (*(v9 + 56))(v215, 1, 1, v216);
LABEL_41:
      sub_10000EBA4(v143, &qword_100101F08, &unk_1000BD100);
LABEL_42:
      v146 = type metadata accessor for HomePodSetupViewModel(0);
      v147 = v146[6];
      v148 = type metadata accessor for AdjustedMovie(0);
      (*(*(v148 - 8) + 56))(&a2[v147], 1, 1, v148);
      sub_10004E01C(0, 0, &a2[v146[28]]);
      v149 = v146[58];
      v150 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
      (*(*(v150 - 8) + 56))(&a2[v149], 1, 1, v150);
      v151 = &a2[v146[14]];
      *(v151 + 4) = 0;
      *v151 = 0u;
      *(v151 + 1) = 0u;
      v152 = String._bridgeToObjectiveC()();
      v153 = String._bridgeToObjectiveC()();
      Int64 = CFPrefs_GetInt64();

      sub_1000660A0(&v225);
      v155 = v223;
      *a2 = v222;
      *(a2 + 1) = v155;
      v156 = v221;
      *(a2 + 2) = v220;
      *(a2 + 3) = v156;
      v157 = &a2[v146[7]];
      *v157 = 0;
      *(v157 + 1) = 0xE000000000000000;
      v158 = &a2[v146[8]];
      *v158 = 0;
      *(v158 + 1) = 0xE000000000000000;
      v159 = &a2[v146[9]];
      *v159 = 0;
      *(v159 + 1) = 0xE000000000000000;
      *&a2[v146[10]] = v28;
      *&a2[v146[11]] = _swiftEmptyArrayStorage;
      *&a2[v146[12]] = _swiftEmptyArrayStorage;
      *&a2[v146[13]] = _swiftEmptyArrayStorage;
      *&a2[v146[15]] = _swiftEmptyArrayStorage;
      *&a2[v146[16]] = _swiftEmptyArrayStorage;
      a2[v146[17]] = Int64 != 0;
      v160 = &a2[v146[18]];
      *v160 = 0;
      v160[4] = 1;
      *&a2[v146[19]] = 1;
      v161 = &a2[v146[20]];
      v162 = v228;
      *(v161 + 2) = v227;
      *(v161 + 3) = v162;
      *(v161 + 4) = v229;
      v163 = v226;
      *v161 = v225;
      *(v161 + 1) = v163;
      v164 = &a2[v146[21]];
      *(v164 + 3) = 0u;
      *(v164 + 4) = 0u;
      *(v164 + 1) = 0u;
      *(v164 + 2) = 0u;
      *v164 = 0u;
      *&a2[v146[22]] = 0;
      *&a2[v146[23]] = 0;
      v165 = &a2[v146[24]];
      *v165 = 0;
      *(v165 + 1) = 0;
      v166 = &a2[v146[25]];
      *v166 = 0;
      *(v166 + 1) = 0;
      v167 = &a2[v146[26]];
      *v167 = 0;
      *(v167 + 1) = 0;
      a2[v146[27]] = 0;
      a2[v146[29]] = 0;
      *&a2[v146[30]] = 0;
      *&a2[v146[31]] = 0;
      v168 = &a2[v146[32]];
      *v168 = 0;
      v168[8] = 1;
      a2[v146[33]] = 0;
      a2[v146[34]] = 0;
      a2[v146[35]] = 0;
      *&a2[v146[36]] = 0;
      *&a2[v146[37]] = 0;
      v169 = &a2[v146[38]];
      *v169 = 0;
      *(v169 + 1) = 0xE000000000000000;
      a2[v146[39]] = 0;
      a2[v146[40]] = 0;
      *&a2[v146[41]] = 0;
      a2[v146[42]] = 0;
      a2[v146[43]] = 0;
      a2[v146[44]] = 0;
      v170 = &a2[v146[45]];
      *v170 = 0;
      *(v170 + 1) = 0xE000000000000000;
      a2[v146[46]] = 0;
      v171 = &a2[v146[47]];
      *v171 = 0;
      *(v171 + 1) = 0xE000000000000000;
      a2[v146[48]] = 0;
      v172 = &a2[v146[49]];
      *v172 = 0;
      *(v172 + 1) = 0;
      a2[v146[50]] = 0;
      *&a2[v146[51]] = 0;
      *&a2[v146[52]] = 0;
      v173 = &a2[v146[53]];
      *v173 = 0;
      *(v173 + 1) = 0;
      *&a2[v146[54]] = 0;
      v174 = &a2[v146[55]];
      *v174 = 0;
      *(v174 + 1) = 0xE000000000000000;
      *&a2[v146[56]] = 0;
      a2[v146[57]] = 1;
      return;
    }

    v78 = [v77 URLForResource:SFDeviceAssetNameAdjustments withExtension:0];
    v79 = v216;
    if (v78)
    {
      v80 = v213;
      v81 = v78;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = 0;
    }

    else
    {
      v82 = 1;
      v80 = v213;
    }

    v144 = *(v9 + 56);
    v144(v80, v82, 1, v79);
    v145 = v80;
    v143 = v215;
    sub_10003B8EC(v145, v215, &qword_100101F08, &unk_1000BD100);
    if ((*(v9 + 48))(v143, 1, v79) == 1)
    {

      goto LABEL_41;
    }

    v175 = v214;
    (*(v9 + 32))(v214, v143, v79);
    v176 = *(v219 + 20);
    v177 = v79;
    v178 = v212;
    v179 = v175;
    v180 = v177;
    (*(v9 + 16))(&v212[v176], v179);
    v144(&v178[v176], 0, 1, v180);
    *v178 = v76;
    v181 = type metadata accessor for HomePodSetupViewModel(0);
    v182 = v181[6];
    v183 = type metadata accessor for AdjustedMovie(0);
    (*(*(v183 - 8) + 56))(&a2[v182], 1, 1, v183);
    v184 = v181[28];
    sub_10003A8F8(v178, &a2[v184], type metadata accessor for AdjustedImage);
    (*(v218 + 56))(&a2[v184], 0, 1, v219);
    v185 = v181[58];
    v186 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
    (*(*(v186 - 8) + 56))(&a2[v185], 1, 1, v186);
    v187 = &a2[v181[14]];
    *(v187 + 4) = 0;
    *v187 = 0u;
    *(v187 + 1) = 0u;
    v188 = String._bridgeToObjectiveC()();
    v189 = String._bridgeToObjectiveC()();
    v190 = CFPrefs_GetInt64();

    sub_1000660A0(&v225);
    sub_10003A960(v178, type metadata accessor for AdjustedImage);
    (*(v9 + 8))(v214, v216);
    v191 = v223;
    *a2 = v222;
    *(a2 + 1) = v191;
    v192 = v221;
    *(a2 + 2) = v220;
    *(a2 + 3) = v192;
    v193 = &a2[v181[7]];
    *v193 = 0;
    *(v193 + 1) = 0xE000000000000000;
    v194 = &a2[v181[8]];
    *v194 = 0;
    *(v194 + 1) = 0xE000000000000000;
    v195 = &a2[v181[9]];
    *v195 = 0;
    *(v195 + 1) = 0xE000000000000000;
    *&a2[v181[10]] = v28;
    *&a2[v181[11]] = _swiftEmptyArrayStorage;
    *&a2[v181[12]] = _swiftEmptyArrayStorage;
    *&a2[v181[13]] = _swiftEmptyArrayStorage;
    *&a2[v181[15]] = _swiftEmptyArrayStorage;
    *&a2[v181[16]] = _swiftEmptyArrayStorage;
    a2[v181[17]] = v190 != 0;
    v196 = &a2[v181[18]];
    *v196 = 0;
    v196[4] = 1;
    *&a2[v181[19]] = 1;
    v197 = &a2[v181[20]];
    v198 = v228;
    *(v197 + 2) = v227;
    *(v197 + 3) = v198;
    *(v197 + 4) = v229;
    v199 = v226;
    *v197 = v225;
    *(v197 + 1) = v199;
    v200 = &a2[v181[21]];
    *(v200 + 3) = 0u;
    *(v200 + 4) = 0u;
    *(v200 + 1) = 0u;
    *(v200 + 2) = 0u;
    *v200 = 0u;
    *&a2[v181[22]] = 0;
    *&a2[v181[23]] = 0;
    v201 = &a2[v181[24]];
    *v201 = 0;
    *(v201 + 1) = 0;
    v202 = &a2[v181[25]];
    *v202 = 0;
    *(v202 + 1) = 0;
    v203 = &a2[v181[26]];
    *v203 = 0;
    *(v203 + 1) = 0;
    a2[v181[27]] = 0;
    a2[v181[29]] = 0;
    *&a2[v181[30]] = 0;
    *&a2[v181[31]] = 0;
    v204 = &a2[v181[32]];
    *v204 = 0;
    v204[8] = 1;
    a2[v181[33]] = 0;
    a2[v181[34]] = 0;
    a2[v181[35]] = 0;
    *&a2[v181[36]] = 0;
    *&a2[v181[37]] = 0;
    v205 = &a2[v181[38]];
    *v205 = 0;
    *(v205 + 1) = 0xE000000000000000;
    a2[v181[39]] = 0;
    a2[v181[40]] = 0;
    *&a2[v181[41]] = 0;
    a2[v181[42]] = 0;
    a2[v181[43]] = 0;
    a2[v181[44]] = 0;
    v206 = &a2[v181[45]];
    *v206 = 0;
    *(v206 + 1) = 0xE000000000000000;
    a2[v181[46]] = 0;
    v207 = &a2[v181[47]];
    *v207 = 0;
    *(v207 + 1) = 0xE000000000000000;
    a2[v181[48]] = 0;
    v208 = &a2[v181[49]];
    *v208 = 0;
    *(v208 + 1) = 0;
    a2[v181[50]] = 0;
    *&a2[v181[51]] = 0;
    *&a2[v181[52]] = 0;
    v209 = &a2[v181[53]];
    *v209 = 0;
    *(v209 + 1) = 0;
    *&a2[v181[54]] = 0;
    v210 = &a2[v181[55]];
    *v210 = 0;
    *(v210 + 1) = 0xE000000000000000;
    *&a2[v181[56]] = 0;
    a2[v181[57]] = 1;
  }

  else if (v41)
  {
    v83 = type metadata accessor for HomePodSetupViewModel(0);
    v84 = v83[6];
    v85 = type metadata accessor for AdjustedMovie(0);
    (*(*(v85 - 8) + 56))(&a2[v84], 1, 1, v85);
    sub_10003A7C4();
    v87 = v86;

    (*(v218 + 56))(&a2[v83[28]], 1, 1, v219);
    v88 = v83[58];
    v89 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
    (*(*(v89 - 8) + 56))(&a2[v88], 1, 1, v89);
    v90 = &a2[v83[14]];
    *(v90 + 4) = 0;
    *v90 = 0u;
    *(v90 + 1) = 0u;
    v91 = String._bridgeToObjectiveC()();
    v92 = String._bridgeToObjectiveC()();
    v93 = CFPrefs_GetInt64();

    sub_1000660A0(&v225);
    v94 = v223;
    *a2 = v222;
    *(a2 + 1) = v94;
    v95 = v221;
    *(a2 + 2) = v220;
    *(a2 + 3) = v95;
    v96 = &a2[v83[7]];
    *v96 = 0;
    *(v96 + 1) = 0xE000000000000000;
    v97 = &a2[v83[8]];
    *v97 = 0;
    *(v97 + 1) = 0xE000000000000000;
    v98 = &a2[v83[9]];
    *v98 = 0;
    *(v98 + 1) = 0xE000000000000000;
    *&a2[v83[10]] = v28;
    *&a2[v83[11]] = v87;
    *&a2[v83[12]] = _swiftEmptyArrayStorage;
    *&a2[v83[13]] = _swiftEmptyArrayStorage;
    *&a2[v83[15]] = _swiftEmptyArrayStorage;
    *&a2[v83[16]] = _swiftEmptyArrayStorage;
    a2[v83[17]] = v93 != 0;
    v99 = &a2[v83[18]];
    *v99 = 0;
    v99[4] = 1;
    *&a2[v83[19]] = 1;
    v100 = &a2[v83[20]];
    v101 = v228;
    *(v100 + 2) = v227;
    *(v100 + 3) = v101;
    *(v100 + 4) = v229;
    v102 = v226;
    *v100 = v225;
    *(v100 + 1) = v102;
    v103 = &a2[v83[21]];
    *(v103 + 3) = 0u;
    *(v103 + 4) = 0u;
    *(v103 + 1) = 0u;
    *(v103 + 2) = 0u;
    *v103 = 0u;
    *&a2[v83[22]] = 0;
    *&a2[v83[23]] = 0;
    v104 = &a2[v83[24]];
    *v104 = 0;
    *(v104 + 1) = 0;
    v105 = &a2[v83[25]];
    *v105 = 0;
    *(v105 + 1) = 0;
    v106 = &a2[v83[26]];
    *v106 = 0;
    *(v106 + 1) = 0;
    a2[v83[27]] = 0;
    a2[v83[29]] = 0;
    *&a2[v83[30]] = 0;
    *&a2[v83[31]] = 0;
    v107 = &a2[v83[32]];
    *v107 = 0;
    v107[8] = 1;
    a2[v83[33]] = 0;
    a2[v83[34]] = 0;
    a2[v83[35]] = 0;
    *&a2[v83[36]] = 0;
    *&a2[v83[37]] = 0;
    v108 = &a2[v83[38]];
    *v108 = 0;
    *(v108 + 1) = 0xE000000000000000;
    a2[v83[39]] = 0;
    a2[v83[40]] = 0;
    *&a2[v83[41]] = 0;
    a2[v83[42]] = 0;
    a2[v83[43]] = 0;
    a2[v83[44]] = 0;
    v109 = &a2[v83[45]];
    *v109 = 0;
    *(v109 + 1) = 0xE000000000000000;
    a2[v83[46]] = 0;
    v110 = &a2[v83[47]];
    *v110 = 0;
    *(v110 + 1) = 0xE000000000000000;
    a2[v83[48]] = 0;
    v111 = &a2[v83[49]];
    *v111 = 0;
    *(v111 + 1) = 0;
    a2[v83[50]] = 0;
    *&a2[v83[51]] = 0;
    *&a2[v83[52]] = 0;
    v112 = &a2[v83[53]];
    *v112 = 0;
    *(v112 + 1) = 0;
    *&a2[v83[54]] = 0;
    v113 = &a2[v83[55]];
    *v113 = 0;
    *(v113 + 1) = 0xE000000000000000;
    *&a2[v83[56]] = 0;
    a2[v83[57]] = 1;
  }

  else
  {
    v114 = type metadata accessor for HomePodSetupViewModel(0);
    v115 = v114[6];
    v116 = type metadata accessor for AdjustedMovie(0);
    (*(*(v116 - 8) + 56))(&a2[v115], 1, 1, v116);
    sub_10004E01C(0, 0, &a2[v114[28]]);
    v117 = v114[58];
    v118 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
    (*(*(v118 - 8) + 56))(&a2[v117], 1, 1, v118);
    v119 = &a2[v114[14]];
    *(v119 + 4) = 0;
    *v119 = 0u;
    *(v119 + 1) = 0u;
    v120 = String._bridgeToObjectiveC()();
    v121 = String._bridgeToObjectiveC()();
    v122 = CFPrefs_GetInt64();

    sub_1000660A0(&v225);
    v123 = v223;
    *a2 = v222;
    *(a2 + 1) = v123;
    v124 = v221;
    *(a2 + 2) = v220;
    *(a2 + 3) = v124;
    v125 = &a2[v114[7]];
    *v125 = 0;
    *(v125 + 1) = 0xE000000000000000;
    v126 = &a2[v114[8]];
    *v126 = 0;
    *(v126 + 1) = 0xE000000000000000;
    v127 = &a2[v114[9]];
    *v127 = 0;
    *(v127 + 1) = 0xE000000000000000;
    *&a2[v114[10]] = v28;
    *&a2[v114[11]] = _swiftEmptyArrayStorage;
    *&a2[v114[12]] = _swiftEmptyArrayStorage;
    *&a2[v114[13]] = _swiftEmptyArrayStorage;
    *&a2[v114[15]] = _swiftEmptyArrayStorage;
    *&a2[v114[16]] = _swiftEmptyArrayStorage;
    a2[v114[17]] = v122 != 0;
    v128 = &a2[v114[18]];
    *v128 = 0;
    v128[4] = 1;
    *&a2[v114[19]] = 1;
    v129 = &a2[v114[20]];
    v130 = v228;
    *(v129 + 2) = v227;
    *(v129 + 3) = v130;
    *(v129 + 4) = v229;
    v131 = v226;
    *v129 = v225;
    *(v129 + 1) = v131;
    v132 = &a2[v114[21]];
    *(v132 + 3) = 0u;
    *(v132 + 4) = 0u;
    *(v132 + 1) = 0u;
    *(v132 + 2) = 0u;
    *v132 = 0u;
    *&a2[v114[22]] = 0;
    *&a2[v114[23]] = 0;
    v133 = &a2[v114[24]];
    *v133 = v39;
    v133[1] = 0;
    v134 = &a2[v114[25]];
    *v134 = v39;
    v134[1] = 0;
    v135 = &a2[v114[26]];
    *v135 = v39;
    v135[1] = 0;
    a2[v114[27]] = 0;
    a2[v114[29]] = 0;
    *&a2[v114[30]] = 0;
    *&a2[v114[31]] = 0;
    v136 = &a2[v114[32]];
    *v136 = 0;
    v136[8] = 1;
    a2[v114[33]] = 0;
    a2[v114[34]] = 0;
    a2[v114[35]] = 0;
    *&a2[v114[36]] = 0;
    *&a2[v114[37]] = 0;
    v137 = &a2[v114[38]];
    *v137 = 0;
    *(v137 + 1) = 0xE000000000000000;
    a2[v114[39]] = 0;
    a2[v114[40]] = 0;
    *&a2[v114[41]] = 0;
    a2[v114[42]] = 0;
    a2[v114[43]] = 0;
    a2[v114[44]] = 0;
    v138 = &a2[v114[45]];
    *v138 = 0;
    *(v138 + 1) = 0xE000000000000000;
    a2[v114[46]] = 0;
    v139 = &a2[v114[47]];
    *v139 = 0;
    *(v139 + 1) = 0xE000000000000000;
    a2[v114[48]] = 0;
    v140 = &a2[v114[49]];
    *v140 = v39;
    v140[1] = 0;
    a2[v114[50]] = 0;
    *&a2[v114[51]] = 0;
    *&a2[v114[52]] = 0;
    v141 = &a2[v114[53]];
    *v141 = v39;
    v141[1] = 0;
    *&a2[v114[54]] = 0;
    v142 = &a2[v114[55]];
    *v142 = 0;
    *(v142 + 1) = 0xE000000000000000;
    *&a2[v114[56]] = 0;
    a2[v114[57]] = 1;
  }
}

uint64_t sub_10002102C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_10000E6C4(&qword_100101FC0, &unk_1000BE590);
  v5 = __chkstk_darwin(v4 - 8);
  v69 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v69 - v7;
  v9 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  __chkstk_darwin(v9 - 8);
  v11 = &v69 - v10;
  if ((*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoRole) & 0xFFFFFFFE) == 2)
  {
    v12 = 114;
  }

  else
  {
    v12 = 113;
  }

  if ((*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoRole) & 0xFFFFFFFE) == 2)
  {
    v13 = 116;
  }

  else
  {
    v13 = 115;
  }

  sub_100057D98(v12);
  v14 = String._bridgeToObjectiveC()();

  v15 = sub_100006658(v14);

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v17;
  v74 = v16;

  sub_100057D98(v13);
  v18 = String._bridgeToObjectiveC()();

  v19 = sub_100006658(v18);

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = String._bridgeToObjectiveC()();
  v24 = sub_100006658(v23);

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v26;
  v72 = v25;

  v27 = String._bridgeToObjectiveC()();
  v28 = sub_100006658(v27);

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1000BB8E0;
  *(v32 + 32) = v20;
  *(v32 + 40) = v22;
  *(v32 + 48) = 0;
  *(v32 + 56) = 1;
  *(v32 + 64) = v29;
  *(v32 + 72) = v31;
  *(v32 + 80) = 1;
  *(v32 + 88) = 2;
  v33 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode);
  v70 = v8;
  if (v33 == 5)
  {
    sub_1000379DC(a1, 1, 0, v8);
    v34 = v69;
    sub_10000F25C(v8, v69, &qword_100101FC0, &unk_1000BE590);
    v35 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
    v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
    sub_10000EBA4(v34, &qword_100101FC0, &unk_1000BE590);
    if (v36 == 1)
    {
      v37 = v11;
      sub_10004E01C(1, 0, v11);
    }

    else
    {
      v38 = type metadata accessor for AdjustedImage(0);
      v37 = v11;
      (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
    }
  }

  else
  {
    sub_10004E01C(1, 0, v11);
    v35 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
    (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
    v37 = v11;
  }

  v39 = type metadata accessor for HomePodSetupViewModel(0);
  v40 = v39[6];
  v41 = type metadata accessor for AdjustedMovie(0);
  (*(*(v41 - 8) + 56))(&a2[v40], 1, 1, v41);
  sub_10000F25C(v37, &a2[v39[28]], &unk_100102610, &unk_1000BD130);
  v42 = v39[58];
  type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v35 - 8) + 56))(&a2[v42], 1, 1, v35);
  v43 = &a2[v39[14]];
  *(v43 + 4) = 0;
  *v43 = 0u;
  *(v43 + 1) = 0u;
  v44 = String._bridgeToObjectiveC()();
  v45 = String._bridgeToObjectiveC()();
  v46 = v37;
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v75);
  sub_10000EBA4(v46, &unk_100102610, &unk_1000BD130);
  v48 = v73;
  *a2 = v74;
  *(a2 + 1) = v48;
  v49 = v71;
  *(a2 + 2) = v72;
  *(a2 + 3) = v49;
  v50 = &a2[v39[7]];
  *v50 = 0;
  *(v50 + 1) = 0xE000000000000000;
  v51 = &a2[v39[8]];
  *v51 = 0;
  *(v51 + 1) = 0xE000000000000000;
  v52 = &a2[v39[9]];
  *v52 = 0;
  *(v52 + 1) = 0xE000000000000000;
  *&a2[v39[10]] = v32;
  *&a2[v39[11]] = _swiftEmptyArrayStorage;
  *&a2[v39[12]] = _swiftEmptyArrayStorage;
  *&a2[v39[13]] = _swiftEmptyArrayStorage;
  *&a2[v39[15]] = _swiftEmptyArrayStorage;
  *&a2[v39[16]] = _swiftEmptyArrayStorage;
  a2[v39[17]] = Int64 != 0;
  v53 = &a2[v39[18]];
  *v53 = 0;
  v53[4] = 1;
  *&a2[v39[19]] = 1;
  v54 = &a2[v39[20]];
  v55 = v75[3];
  *(v54 + 2) = v75[2];
  *(v54 + 3) = v55;
  *(v54 + 4) = v75[4];
  v56 = v75[1];
  *v54 = v75[0];
  *(v54 + 1) = v56;
  v57 = &a2[v39[21]];
  *v57 = 0u;
  *(v57 + 1) = 0u;
  *(v57 + 2) = 0u;
  *(v57 + 3) = 0u;
  *(v57 + 4) = 0u;
  *&a2[v39[22]] = 0;
  *&a2[v39[23]] = 0;
  v58 = &a2[v39[24]];
  *v58 = 0;
  *(v58 + 1) = 0;
  v59 = &a2[v39[25]];
  *v59 = 0;
  *(v59 + 1) = 0;
  v60 = &a2[v39[26]];
  *v60 = 0;
  *(v60 + 1) = 0;
  a2[v39[27]] = 0;
  a2[v39[29]] = 0;
  *&a2[v39[30]] = 0;
  *&a2[v39[31]] = 0;
  v61 = &a2[v39[32]];
  *v61 = 0;
  v61[8] = 1;
  a2[v39[33]] = 0;
  a2[v39[34]] = 0;
  a2[v39[35]] = 0;
  *&a2[v39[36]] = 0;
  *&a2[v39[37]] = 0;
  v62 = &a2[v39[38]];
  *v62 = 0;
  *(v62 + 1) = 0xE000000000000000;
  a2[v39[39]] = 0;
  a2[v39[40]] = 0;
  *&a2[v39[41]] = 0;
  a2[v39[42]] = 0;
  a2[v39[43]] = 0;
  a2[v39[44]] = 0;
  v63 = &a2[v39[45]];
  *v63 = 0;
  *(v63 + 1) = 0xE000000000000000;
  a2[v39[46]] = 0;
  v64 = &a2[v39[47]];
  *v64 = 0;
  *(v64 + 1) = 0xE000000000000000;
  a2[v39[48]] = 0;
  v65 = &a2[v39[49]];
  *v65 = 0;
  *(v65 + 1) = 0;
  a2[v39[50]] = 0;
  *&a2[v39[51]] = 0;
  *&a2[v39[52]] = 0;
  v66 = &a2[v39[53]];
  *v66 = 0;
  *(v66 + 1) = 0;
  *&a2[v39[54]] = 0;
  v67 = &a2[v39[55]];
  *v67 = 0;
  *(v67 + 1) = 0xE000000000000000;
  *&a2[v39[56]] = 0;
  a2[v39[57]] = 1;
  return sub_10003A9C0(v70, &a2[v42]);
}

double sub_1000217A0@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_jsEnabled);
  v5 = String._bridgeToObjectiveC()();
  v6 = sub_100006658(v5);

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v8;
  v75 = v7;

  v9 = String._bridgeToObjectiveC()();
  v10 = sub_100006658(v9);

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSiriLanguageCode + 8);
  v15 = objc_opt_self();

  v16 = [v15 sharedInstance];
  v73 = v16;
  if (v4 == 1)
  {

    v17 = String._bridgeToObjectiveC()();
    v18 = sub_100006658(v17);
LABEL_10:
    v22 = v18;

    goto LABEL_11;
  }

  if (!v16)
  {

LABEL_9:
    v17 = String._bridgeToObjectiveC()();
    v18 = sub_100006658(v17);
    goto LABEL_10;
  }

  v19 = v16;
  v20 = String._bridgeToObjectiveC()();
  if (v14)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v19 localizedUIUtteranceForKey:v20 languageCode:v21];

  if (!v22)
  {
    goto LABEL_9;
  }

LABEL_11:
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  sub_10000E6C4(&qword_100102388, qword_1000BE250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD050;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_100039F8C();
  *(inited + 32) = v23;
  *(inited + 40) = v25;
  *&v76[0] = 0;
  *(&v76[0] + 1) = 0xE000000000000000;
  sub_100038F50(inited, v76, 0xD000000000000020, 0x80000001000C1C00, 16421, 0xE200000000000000);
  swift_setDeallocating();
  sub_10000E6C4(&qword_1001023D8, &unk_1000BD290);
  swift_arrayDestroy();
  v71 = *(&v76[0] + 1);
  v72 = *&v76[0];
  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000BD050;
  *(v27 + 32) = v11;
  *(v27 + 40) = v13;
  *(v27 + 48) = 0;
  *(v27 + 56) = 1;
  v28 = String._bridgeToObjectiveC()();
  v29 = sub_100006658(v28);

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v31;
  v70 = v30;

  v32 = type metadata accessor for HomePodSetupViewModel(0);
  v33 = v32[6];
  v34 = type metadata accessor for AdjustedMovie(0);
  (*(*(v34 - 8) + 56))(&a2[v33], 1, 1, v34);
  sub_10003A7C4();
  v36 = v35;
  v37 = String._bridgeToObjectiveC()();
  v38 = sub_100006658(v37);

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v42 = v32[28];
  v43 = type metadata accessor for AdjustedImage(0);
  (*(*(v43 - 8) + 56))(&a2[v42], 1, 1, v43);
  v44 = v32[58];
  v45 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v45 - 8) + 56))(&a2[v44], 1, 1, v45);
  v46 = &a2[v32[14]];
  *(v46 + 4) = 0;
  *v46 = 0u;
  *(v46 + 1) = 0u;
  v47 = String._bridgeToObjectiveC()();
  v48 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v76);
  *a2 = v75;
  *(a2 + 1) = v74;
  *(a2 + 2) = v72;
  *(a2 + 3) = v71;
  v50 = &a2[v32[7]];
  *v50 = v70;
  *(v50 + 1) = v69;
  v51 = &a2[v32[8]];
  *v51 = 0;
  *(v51 + 1) = 0xE000000000000000;
  v52 = &a2[v32[9]];
  *v52 = 0;
  *(v52 + 1) = 0xE000000000000000;
  *&a2[v32[10]] = v27;
  *&a2[v32[11]] = v36;
  *&a2[v32[12]] = _swiftEmptyArrayStorage;
  *&a2[v32[13]] = _swiftEmptyArrayStorage;
  *&a2[v32[15]] = _swiftEmptyArrayStorage;
  *&a2[v32[16]] = _swiftEmptyArrayStorage;
  a2[v32[17]] = Int64 != 0;
  v53 = &a2[v32[18]];
  *v53 = 0;
  v53[4] = 1;
  *&a2[v32[19]] = 1;
  v54 = &a2[v32[20]];
  v55 = v76[3];
  *(v54 + 2) = v76[2];
  *(v54 + 3) = v55;
  *(v54 + 4) = v76[4];
  v56 = v76[1];
  *v54 = v76[0];
  *(v54 + 1) = v56;
  v57 = &a2[v32[21]];
  result = 0.0;
  *(v57 + 3) = 0u;
  *(v57 + 4) = 0u;
  *(v57 + 1) = 0u;
  *(v57 + 2) = 0u;
  *v57 = 0u;
  *&a2[v32[22]] = 0;
  *&a2[v32[23]] = 0;
  v59 = &a2[v32[24]];
  *v59 = v39;
  *(v59 + 1) = v41;
  v60 = &a2[v32[25]];
  *v60 = 0xD000000000000019;
  *(v60 + 1) = 0x80000001000C1C80;
  v61 = &a2[v32[26]];
  *v61 = 0;
  *(v61 + 1) = 0;
  a2[v32[27]] = 0;
  a2[v32[29]] = 0;
  *&a2[v32[30]] = 0;
  *&a2[v32[31]] = 0;
  v62 = &a2[v32[32]];
  *v62 = 0;
  v62[8] = 1;
  a2[v32[33]] = 0;
  a2[v32[34]] = 0;
  a2[v32[35]] = 0;
  *&a2[v32[36]] = 0;
  *&a2[v32[37]] = 0;
  v63 = &a2[v32[38]];
  *v63 = 0;
  *(v63 + 1) = 0xE000000000000000;
  a2[v32[39]] = 0;
  a2[v32[40]] = 0;
  *&a2[v32[41]] = 0;
  a2[v32[42]] = 0;
  a2[v32[43]] = 0;
  a2[v32[44]] = 0;
  v64 = &a2[v32[45]];
  *v64 = 0;
  *(v64 + 1) = 0xE000000000000000;
  a2[v32[46]] = 0;
  v65 = &a2[v32[47]];
  *v65 = 0;
  *(v65 + 1) = 0xE000000000000000;
  a2[v32[48]] = 0;
  v66 = &a2[v32[49]];
  *v66 = 0;
  *(v66 + 1) = 0;
  a2[v32[50]] = 0;
  *&a2[v32[51]] = 0;
  *&a2[v32[52]] = 0;
  v67 = &a2[v32[53]];
  *v67 = 0;
  *(v67 + 1) = 0;
  *&a2[v32[54]] = 0;
  v68 = &a2[v32[55]];
  *v68 = 0;
  *(v68 + 1) = 0xE000000000000000;
  *&a2[v32[56]] = 0;
  a2[v32[57]] = 1;
  return result;
}

double sub_100021F30@<D0>(char *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = sub_1000066EC(v3, v4, v5);

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v8;
  v87 = v7;

  v9 = [v2 mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = sub_1000066EC(v9, v10, v11);

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v14;
  v85 = v13;

  v15 = [objc_opt_self() systemFontOfSize:72.0 weight:UIFontWeightRegular];
  v16 = objc_opt_self();
  v17 = [v16 configurationWithFont:v15];

  v18 = [objc_opt_self() orangeColor];
  v19 = [v16 configurationWithHierarchicalColor:v18];

  v20 = String._bridgeToObjectiveC()();
  v21 = [objc_opt_self() _systemImageNamed:v20];

  v83 = v17;
  v22 = [v21 imageByApplyingSymbolConfiguration:v17];

  v82 = v19;
  v23 = [v22 imageByApplyingSymbolConfiguration:v19];

  v24 = v23;
  if (!v23)
  {
    v24 = [objc_allocWithZone(UIImage) init];
  }

  v80 = v24;
  v81 = v23;
  v25 = [v2 mainBundle];
  v26 = String._bridgeToObjectiveC()();
  v27 = String._bridgeToObjectiveC()();
  v28 = sub_1000066EC(v25, v26, v27);

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v30;
  v78 = v29;

  v31 = [v2 mainBundle];
  v32 = String._bridgeToObjectiveC()();
  v33 = String._bridgeToObjectiveC()();
  v34 = sub_1000066EC(v31, v32, v33);

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = [v2 mainBundle];
  v39 = String._bridgeToObjectiveC()();
  v40 = String._bridgeToObjectiveC()();
  v41 = sub_1000066EC(v38, v39, v40);

  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1000BB8E0;
  *(v44 + 32) = v78;
  *(v44 + 40) = v77;
  *(v44 + 48) = 0;
  *(v44 + 56) = 8;
  *(v44 + 64) = v35;
  *(v44 + 72) = v37;
  *(v44 + 80) = 1;
  *(v44 + 88) = 9;
  v45 = type metadata accessor for HomePodSetupViewModel(0);
  v46 = v45[6];
  v47 = type metadata accessor for AdjustedMovie(0);
  (*(*(v47 - 8) + 56))(&a1[v46], 1, 1, v47);
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1000BCE00;
  *(v48 + 32) = v80;
  v49 = v45[28];
  v50 = type metadata accessor for AdjustedImage(0);
  (*(*(v50 - 8) + 56))(&a1[v49], 1, 1, v50);
  v51 = v45[58];
  v52 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v52 - 8) + 56))(&a1[v51], 1, 1, v52);
  v53 = &a1[v45[14]];
  *(v53 + 4) = 0;
  *v53 = 0u;
  *(v53 + 1) = 0u;
  v54 = v80;
  v55 = String._bridgeToObjectiveC()();
  v56 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v88);
  *a1 = v87;
  *(a1 + 1) = v86;
  *(a1 + 2) = v85;
  *(a1 + 3) = v84;
  v58 = &a1[v45[7]];
  *v58 = 0;
  *(v58 + 1) = 0xE000000000000000;
  v59 = &a1[v45[8]];
  *v59 = v79;
  *(v59 + 1) = v43;
  v60 = &a1[v45[9]];
  *v60 = 0;
  *(v60 + 1) = 0xE000000000000000;
  *&a1[v45[10]] = v44;
  *&a1[v45[11]] = v48;
  *&a1[v45[12]] = _swiftEmptyArrayStorage;
  *&a1[v45[13]] = _swiftEmptyArrayStorage;
  *&a1[v45[15]] = _swiftEmptyArrayStorage;
  *&a1[v45[16]] = _swiftEmptyArrayStorage;
  a1[v45[17]] = Int64 != 0;
  v61 = &a1[v45[18]];
  *v61 = 0;
  v61[4] = 1;
  *&a1[v45[19]] = 1;
  v62 = &a1[v45[20]];
  v63 = v88[3];
  *(v62 + 2) = v88[2];
  *(v62 + 3) = v63;
  *(v62 + 4) = v88[4];
  v64 = v88[1];
  *v62 = v88[0];
  *(v62 + 1) = v64;
  v65 = &a1[v45[21]];
  result = 0.0;
  *(v65 + 3) = 0u;
  *(v65 + 4) = 0u;
  *(v65 + 1) = 0u;
  *(v65 + 2) = 0u;
  *v65 = 0u;
  *&a1[v45[22]] = 0;
  *&a1[v45[23]] = 0;
  v67 = &a1[v45[24]];
  *v67 = 0;
  *(v67 + 1) = 0;
  v68 = &a1[v45[25]];
  *v68 = 0;
  *(v68 + 1) = 0;
  v69 = &a1[v45[26]];
  *v69 = 0;
  *(v69 + 1) = 0;
  a1[v45[27]] = 0;
  a1[v45[29]] = 0;
  *&a1[v45[30]] = 0;
  *&a1[v45[31]] = 0;
  v70 = &a1[v45[32]];
  *v70 = 0;
  v70[8] = 1;
  a1[v45[33]] = 0;
  a1[v45[34]] = 0;
  a1[v45[35]] = 0;
  *&a1[v45[36]] = 0;
  *&a1[v45[37]] = 0;
  v71 = &a1[v45[38]];
  *v71 = 0;
  *(v71 + 1) = 0xE000000000000000;
  a1[v45[39]] = 0;
  a1[v45[40]] = 0;
  *&a1[v45[41]] = 0;
  a1[v45[42]] = 0;
  a1[v45[43]] = 0;
  a1[v45[44]] = 0;
  v72 = &a1[v45[45]];
  *v72 = 0;
  *(v72 + 1) = 0xE000000000000000;
  a1[v45[46]] = 0;
  v73 = &a1[v45[47]];
  *v73 = 0;
  *(v73 + 1) = 0xE000000000000000;
  a1[v45[48]] = 0;
  v74 = &a1[v45[49]];
  *v74 = 0;
  *(v74 + 1) = 0;
  a1[v45[50]] = 0;
  *&a1[v45[51]] = 0;
  *&a1[v45[52]] = 0;
  v75 = &a1[v45[53]];
  *v75 = 0;
  *(v75 + 1) = 0;
  *&a1[v45[54]] = 0;
  v76 = &a1[v45[55]];
  *v76 = 0;
  *(v76 + 1) = 0xE000000000000000;
  *&a1[v45[56]] = 0;
  a1[v45[57]] = 1;
  return result;
}

double sub_1000227C8@<D0>(char *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100006658(v2);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v5;
  v69 = v4;

  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v9;
  v67 = v8;

  v10 = String._bridgeToObjectiveC()();
  v11 = sub_100006658(v10);

  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = String._bridgeToObjectiveC()();
  v15 = sub_100006658(v14);

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = [objc_opt_self() systemFontOfSize:72.0 weight:UIFontWeightRegular];
  v20 = objc_opt_self();
  v21 = [v20 configurationWithFont:v19];

  v22 = [objc_opt_self() lightGrayColor];
  v23 = [v20 configurationWithHierarchicalColor:v22];

  v24 = String._bridgeToObjectiveC()();
  v25 = [objc_opt_self() _systemImageNamed:v24];

  v65 = v21;
  v26 = [v25 imageByApplyingSymbolConfiguration:v21];

  v27 = [v26 imageByApplyingSymbolConfiguration:v23];
  v28 = v27;
  if (!v27)
  {
    v28 = [objc_allocWithZone(UIImage) init];
  }

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1000BB8E0;
  *(v29 + 32) = v64;
  *(v29 + 40) = v13;
  *(v29 + 48) = 0;
  *(v29 + 56) = 8;
  *(v29 + 64) = v16;
  *(v29 + 72) = v18;
  *(v29 + 80) = 1;
  *(v29 + 88) = 9;
  v30 = type metadata accessor for HomePodSetupViewModel(0);
  v31 = v30[6];
  v32 = type metadata accessor for AdjustedMovie(0);
  (*(*(v32 - 8) + 56))(&a1[v31], 1, 1, v32);
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000BCE00;
  *(v33 + 32) = v28;
  v34 = v30[28];
  v35 = type metadata accessor for AdjustedImage(0);
  (*(*(v35 - 8) + 56))(&a1[v34], 1, 1, v35);
  v36 = v30[58];
  v37 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v37 - 8) + 56))(&a1[v36], 1, 1, v37);
  v38 = &a1[v30[14]];
  *(v38 + 4) = 0;
  *v38 = 0u;
  *(v38 + 1) = 0u;
  v39 = v27;
  v40 = v28;
  v41 = String._bridgeToObjectiveC()();
  v42 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v70);
  *a1 = v69;
  *(a1 + 1) = v68;
  *(a1 + 2) = v67;
  *(a1 + 3) = v66;
  v44 = &a1[v30[7]];
  *v44 = 0;
  *(v44 + 1) = 0xE000000000000000;
  v45 = &a1[v30[8]];
  *v45 = 0;
  *(v45 + 1) = 0xE000000000000000;
  v46 = &a1[v30[9]];
  *v46 = 0;
  *(v46 + 1) = 0xE000000000000000;
  *&a1[v30[10]] = v29;
  *&a1[v30[11]] = v33;
  *&a1[v30[12]] = _swiftEmptyArrayStorage;
  *&a1[v30[13]] = _swiftEmptyArrayStorage;
  *&a1[v30[15]] = _swiftEmptyArrayStorage;
  *&a1[v30[16]] = _swiftEmptyArrayStorage;
  a1[v30[17]] = Int64 != 0;
  v47 = &a1[v30[18]];
  *v47 = 0;
  v47[4] = 1;
  *&a1[v30[19]] = 1;
  v48 = &a1[v30[20]];
  v49 = v70[3];
  *(v48 + 2) = v70[2];
  *(v48 + 3) = v49;
  *(v48 + 4) = v70[4];
  v50 = v70[1];
  *v48 = v70[0];
  *(v48 + 1) = v50;
  v51 = &a1[v30[21]];
  result = 0.0;
  *(v51 + 3) = 0u;
  *(v51 + 4) = 0u;
  *(v51 + 1) = 0u;
  *(v51 + 2) = 0u;
  *v51 = 0u;
  *&a1[v30[22]] = 0;
  *&a1[v30[23]] = 0;
  v53 = &a1[v30[24]];
  *v53 = 0;
  *(v53 + 1) = 0;
  v54 = &a1[v30[25]];
  *v54 = 0;
  *(v54 + 1) = 0;
  v55 = &a1[v30[26]];
  *v55 = 0;
  *(v55 + 1) = 0;
  a1[v30[27]] = 0;
  a1[v30[29]] = 0;
  *&a1[v30[30]] = 0;
  *&a1[v30[31]] = 0;
  v56 = v30[32];
  a1[v30[33]] = 0;
  a1[v30[34]] = 0;
  a1[v30[35]] = 0;
  *&a1[v30[36]] = 0;
  *&a1[v30[37]] = 0;
  v57 = &a1[v30[38]];
  *v57 = 0;
  *(v57 + 1) = 0xE000000000000000;
  a1[v30[39]] = 0;
  a1[v30[40]] = 0;
  *&a1[v30[41]] = 0;
  a1[v30[42]] = 0;
  a1[v30[43]] = 0;
  a1[v30[44]] = 0;
  v58 = &a1[v30[45]];
  *v58 = 0;
  *(v58 + 1) = 0xE000000000000000;
  a1[v30[46]] = 0;
  v59 = &a1[v30[47]];
  *v59 = 0;
  *(v59 + 1) = 0xE000000000000000;
  a1[v30[48]] = 0;
  v60 = &a1[v30[49]];
  *v60 = 0;
  *(v60 + 1) = 0;
  a1[v30[50]] = 0;
  *&a1[v30[51]] = 0;
  *&a1[v30[52]] = 0;
  v61 = &a1[v30[53]];
  *v61 = 0;
  *(v61 + 1) = 0;
  *&a1[v30[54]] = 0;
  v62 = &a1[v30[55]];
  *v62 = 0;
  *(v62 + 1) = 0xE000000000000000;
  *&a1[v30[56]] = 0;
  v63 = &a1[v56];
  a1[v30[57]] = 1;
  *v63 = 1;
  v63[8] = 0;
  return result;
}

__n128 sub_100022E9C@<Q0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = a1;
  v4 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_forcedADPSoftwareUpdate);
  v5 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homePodProductVersion);
  if (v5 == 2)
  {
    if ((v4 & 1) == 0)
    {
LABEL_3:
      v6 = String._bridgeToObjectiveC()();
      v7 = sub_100006658(v6);

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = v9;
      v98 = v8;

      v10 = String._bridgeToObjectiveC()();
      v11 = 1;
      goto LABEL_6;
    }
  }

  else if (((v5 == 3) & ~v4) != 0)
  {
    goto LABEL_3;
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = sub_100006658(v12);

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v97 = v15;
  v98 = v14;

  v10 = String._bridgeToObjectiveC()();
  v11 = 0;
LABEL_6:
  v16 = sub_100006658(v10);

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = String._bridgeToObjectiveC()();
  v21 = sub_100006658(v20);

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = &unk_1000BD000;
  if ((v11 & 1) == 0)
  {

    v26 = String._bridgeToObjectiveC()();
    v27 = sub_100006658(v26);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000E6C4(&qword_100102388, qword_1000BE250);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1000BD050;
    v29 = v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeName;
    v30 = v2;
    v31 = *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeName);
    v32 = *(v29 + 8);
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_100039F8C();
    *(v28 + 32) = v31;
    *(v28 + 40) = v32;
    v2 = v30;

    v25 = &unk_1000BD000;
    v22 = String.init(format:_:)();
    v24 = v33;
  }

  v96 = v24;
  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v34 = swift_allocObject();
  *(v34 + 16) = v25[5];
  *(v34 + 32) = v17;
  *(v34 + 40) = v19;
  *(v34 + 48) = 0;
  *(v34 + 56) = 1;
  if (v11)
  {
    v35 = String._bridgeToObjectiveC()();
    v36 = sub_100006658(v35);

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v41 = *(v34 + 16);
    v40 = *(v34 + 24);
    if (v41 >= v40 >> 1)
    {
      v34 = sub_1000535F8((v40 > 1), v41 + 1, 1, v34);
    }

    *(v34 + 16) = v41 + 1;
    v42 = v34 + 32 * v41;
    *(v42 + 32) = v37;
    *(v42 + 40) = v39;
    *(v42 + 48) = 1;
    *(v42 + 56) = 2;
  }

  v95 = v22;
  v43 = [objc_opt_self() systemFontOfSize:80.0 weight:UIFontWeightRegular];
  v44 = objc_opt_self();
  v45 = [v44 configurationWithFont:v43];

  v46 = [objc_opt_self() tertiaryLabelColor];
  v47 = [v44 configurationWithHierarchicalColor:v46];

  v48 = String._bridgeToObjectiveC()();

  v49 = [objc_opt_self() _systemImageNamed:v48];

  v93 = v2;
  v94 = v45;
  v50 = [v49 imageByApplyingSymbolConfiguration:v45];

  v51 = [v50 imageByApplyingSymbolConfiguration:v47];
  v52 = v51;
  if (!v51)
  {
    v52 = [objc_allocWithZone(UIImage) init];
  }

  v53 = type metadata accessor for HomePodSetupViewModel(0);
  v54 = v53[6];
  v55 = type metadata accessor for AdjustedMovie(0);
  (*(*(v55 - 8) + 56))(&a2[v54], 1, 1, v55);
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1000BCE00;
  *(v56 + 32) = v52;
  v57 = v53[28];
  v58 = type metadata accessor for AdjustedImage(0);
  (*(*(v58 - 8) + 56))(&a2[v57], 1, 1, v58);
  v59 = v53[58];
  v60 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v60 - 8) + 56))(&a2[v59], 1, 1, v60);
  v61 = &a2[v53[14]];
  *(v61 + 4) = 0;
  *v61 = 0u;
  *(v61 + 1) = 0u;
  v62 = v51;
  v63 = v52;
  v64 = String._bridgeToObjectiveC()();
  v65 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v99);
  *a2 = v98;
  *(a2 + 1) = v97;
  *(a2 + 2) = v95;
  *(a2 + 3) = v96;
  v67 = &a2[v53[7]];
  *v67 = 0;
  *(v67 + 1) = 0xE000000000000000;
  v68 = &a2[v53[8]];
  *v68 = 0;
  *(v68 + 1) = 0xE000000000000000;
  v69 = &a2[v53[9]];
  *v69 = 0;
  *(v69 + 1) = 0xE000000000000000;
  *&a2[v53[10]] = v34;
  *&a2[v53[11]] = v56;
  *&a2[v53[12]] = _swiftEmptyArrayStorage;
  *&a2[v53[13]] = _swiftEmptyArrayStorage;
  *&a2[v53[15]] = _swiftEmptyArrayStorage;
  *&a2[v53[16]] = _swiftEmptyArrayStorage;
  a2[v53[17]] = Int64 != 0;
  v70 = &a2[v53[18]];
  *v70 = 0;
  v70[4] = 1;
  *&a2[v53[19]] = 1;
  v71 = &a2[v53[20]];
  v72 = v99[3];
  *(v71 + 2) = v99[2];
  *(v71 + 3) = v72;
  *(v71 + 4) = v99[4];
  v73 = v99[1];
  *v71 = v99[0];
  *(v71 + 1) = v73;
  v74 = &a2[v53[21]];
  *(v74 + 3) = 0u;
  *(v74 + 4) = 0u;
  *(v74 + 1) = 0u;
  *(v74 + 2) = 0u;
  *v74 = 0u;
  *&a2[v53[22]] = 0;
  *&a2[v53[23]] = 0;
  v75 = &a2[v53[24]];
  *v75 = 0;
  *(v75 + 1) = 0;
  v76 = &a2[v53[25]];
  *v76 = 0;
  *(v76 + 1) = 0;
  v77 = &a2[v53[26]];
  *v77 = 0;
  *(v77 + 1) = 0;
  a2[v53[27]] = 0;
  a2[v53[29]] = 0;
  *&a2[v53[30]] = 0;
  *&a2[v53[31]] = 0;
  v79 = v53[32];
  v78 = v53[33];
  a2[v53[34]] = 0;
  a2[v53[35]] = 0;
  *&a2[v53[36]] = 0;
  *&a2[v53[37]] = 0;
  v80 = &a2[v53[38]];
  *v80 = 0;
  *(v80 + 1) = 0xE000000000000000;
  a2[v53[39]] = 0;
  a2[v53[40]] = 0;
  *&a2[v53[41]] = 0;
  a2[v53[42]] = 0;
  a2[v53[43]] = 0;
  a2[v53[44]] = 0;
  v81 = &a2[v53[45]];
  *v81 = 0;
  *(v81 + 1) = 0xE000000000000000;
  a2[v53[46]] = 0;
  v82 = &a2[v53[47]];
  *v82 = 0;
  *(v82 + 1) = 0xE000000000000000;
  a2[v53[48]] = 0;
  v83 = &a2[v53[49]];
  *v83 = 0;
  *(v83 + 1) = 0;
  a2[v53[50]] = 0;
  *&a2[v53[51]] = 0;
  *&a2[v53[52]] = 0;
  v84 = &a2[v53[53]];
  *v84 = 0;
  *(v84 + 1) = 0;
  *&a2[v53[54]] = 0;
  v85 = &a2[v53[55]];
  *v85 = 0;
  *(v85 + 1) = 0xE000000000000000;
  *&a2[v53[56]] = 0;
  v86 = &a2[v79];
  a2[v53[57]] = 1;
  *v86 = 1;
  v86[8] = 0;
  a2[v78] = 1;
  v87 = *(v93 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeName);
  v88 = *(v93 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeName + 8);

  sub_10006629C(v87, v88, v100);

  v89 = *(v74 + 3);
  v101[2] = *(v74 + 2);
  v101[3] = v89;
  v101[4] = *(v74 + 4);
  v90 = *(v74 + 1);
  v101[0] = *v74;
  v101[1] = v90;
  sub_10000EBA4(v101, &unk_100102650, &qword_1000BD2B8);
  v91 = v100[3];
  *(v74 + 2) = v100[2];
  *(v74 + 3) = v91;
  *(v74 + 4) = v100[4];
  result = v100[1];
  *v74 = v100[0];
  *(v74 + 1) = result;
  return result;
}

double sub_100023820@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_100006658(v4);

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v7;
  v58 = v6;

  if (*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_subscribedToMusicService) == 1)
  {
    v8 = [objc_opt_self() mainBundle];
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v11 = sub_1000066EC(v8, v9, v10);

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  if (*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedHomeIsROAR) == 1)
  {
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {
      v16 = [objc_opt_self() mainBundle];
      v17 = String._bridgeToObjectiveC()();
      v18 = String._bridgeToObjectiveC()();
      v19 = sub_1000066EC(v16, v17, v18);

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v14 = v21;
    }
  }

  v22 = sub_10003AA30();
  v23 = type metadata accessor for HomePodSetupViewModel(0);
  v24 = v23[6];
  v25 = type metadata accessor for AdjustedMovie(0);
  (*(*(v25 - 8) + 56))(&a2[v24], 1, 1, v25);
  sub_10003ACF0(a1);
  v27 = v26;
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000BCE00;
  *(v28 + 32) = v22;
  v29 = v23[28];
  v30 = type metadata accessor for AdjustedImage(0);
  (*(*(v30 - 8) + 56))(&a2[v29], 1, 1, v30);
  v31 = v23[58];
  v32 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v32 - 8) + 56))(&a2[v31], 1, 1, v32);
  v33 = &a2[v23[14]];
  *(v33 + 4) = 0;
  *v33 = 0u;
  *(v33 + 1) = 0u;
  v34 = v22;
  v35 = String._bridgeToObjectiveC()();
  v36 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v59);
  *a2 = v58;
  *(a2 + 1) = v57;
  *(a2 + 2) = v12;
  *(a2 + 3) = v14;
  v38 = &a2[v23[7]];
  *v38 = 0;
  *(v38 + 1) = 0xE000000000000000;
  v39 = &a2[v23[8]];
  *v39 = 0;
  *(v39 + 1) = 0xE000000000000000;
  v40 = &a2[v23[9]];
  *v40 = 0;
  *(v40 + 1) = 0xE000000000000000;
  *&a2[v23[10]] = v27;
  *&a2[v23[11]] = v28;
  *&a2[v23[12]] = _swiftEmptyArrayStorage;
  *&a2[v23[13]] = _swiftEmptyArrayStorage;
  *&a2[v23[15]] = _swiftEmptyArrayStorage;
  *&a2[v23[16]] = _swiftEmptyArrayStorage;
  a2[v23[17]] = Int64 != 0;
  v41 = &a2[v23[18]];
  *v41 = 0;
  v41[4] = 1;
  *&a2[v23[19]] = 1;
  v42 = &a2[v23[20]];
  v43 = v59[3];
  *(v42 + 2) = v59[2];
  *(v42 + 3) = v43;
  *(v42 + 4) = v59[4];
  v44 = v59[1];
  *v42 = v59[0];
  *(v42 + 1) = v44;
  v45 = &a2[v23[21]];
  result = 0.0;
  *(v45 + 3) = 0u;
  *(v45 + 4) = 0u;
  *(v45 + 1) = 0u;
  *(v45 + 2) = 0u;
  *v45 = 0u;
  *&a2[v23[22]] = 0;
  *&a2[v23[23]] = 0;
  v47 = &a2[v23[24]];
  *v47 = 0;
  *(v47 + 1) = 0;
  v48 = &a2[v23[25]];
  *v48 = 0;
  *(v48 + 1) = 0;
  v49 = &a2[v23[26]];
  *v49 = 0;
  *(v49 + 1) = 0;
  a2[v23[27]] = 0;
  a2[v23[29]] = 0;
  *&a2[v23[30]] = 0;
  *&a2[v23[31]] = 0;
  v50 = &a2[v23[32]];
  *v50 = 0;
  v50[8] = 1;
  a2[v23[33]] = 0;
  a2[v23[34]] = 0;
  a2[v23[35]] = 0;
  *&a2[v23[36]] = 0;
  *&a2[v23[37]] = 0;
  v51 = &a2[v23[38]];
  *v51 = 0;
  *(v51 + 1) = 0xE000000000000000;
  a2[v23[39]] = 0;
  a2[v23[40]] = 0;
  *&a2[v23[41]] = 0;
  a2[v23[42]] = 0;
  a2[v23[43]] = 0;
  a2[v23[44]] = 0;
  v52 = &a2[v23[45]];
  *v52 = 0;
  *(v52 + 1) = 0xE000000000000000;
  a2[v23[46]] = 0;
  v53 = &a2[v23[47]];
  *v53 = 0;
  *(v53 + 1) = 0xE000000000000000;
  a2[v23[48]] = 0;
  v54 = &a2[v23[49]];
  *v54 = 0;
  *(v54 + 1) = 0;
  a2[v23[50]] = 0;
  *&a2[v23[51]] = 0;
  *&a2[v23[52]] = 0;
  v55 = &a2[v23[53]];
  *v55 = 0;
  *(v55 + 1) = 0;
  *&a2[v23[54]] = 0;
  v56 = &a2[v23[55]];
  *v56 = 0;
  *(v56 + 1) = 0xE000000000000000;
  *&a2[v23[56]] = 0;
  a2[v23[57]] = 1;
  return result;
}

double sub_100023E4C@<D0>(char *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100006658(v2);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v5;
  v65 = v4;

  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v9;
  v63 = v8;

  v10 = String._bridgeToObjectiveC()();
  v11 = sub_100006658(v10);

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = String._bridgeToObjectiveC()();
  v16 = sub_100006658(v15);

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = String._bridgeToObjectiveC()();
  v21 = sub_100006658(v20);

  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = String._bridgeToObjectiveC()();
  v25 = sub_100006658(v24);

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v27;
  v61 = v26;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000BB8E0;
  *(v28 + 32) = v12;
  *(v28 + 40) = v14;
  *(v28 + 48) = 0;
  *(v28 + 56) = 8;
  *(v28 + 64) = v17;
  *(v28 + 72) = v19;
  *(v28 + 80) = 1;
  *(v28 + 88) = 9;
  v29 = type metadata accessor for HomePodSetupViewModel(0);
  v30 = v29[6];
  v31 = type metadata accessor for AdjustedMovie(0);
  (*(*(v31 - 8) + 56))(&a1[v30], 1, 1, v31);
  v32 = v29[28];
  v33 = type metadata accessor for AdjustedImage(0);
  (*(*(v33 - 8) + 56))(&a1[v32], 1, 1, v33);
  v34 = v29[58];
  v35 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v35 - 8) + 56))(&a1[v34], 1, 1, v35);
  v36 = &a1[v29[14]];
  *(v36 + 4) = 0;
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v37 = String._bridgeToObjectiveC()();
  v38 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v66);
  *a1 = v65;
  *(a1 + 1) = v64;
  *(a1 + 2) = v63;
  *(a1 + 3) = v62;
  v40 = &a1[v29[7]];
  *v40 = 0;
  *(v40 + 1) = 0xE000000000000000;
  v41 = &a1[v29[8]];
  *v41 = v59;
  *(v41 + 1) = v23;
  v42 = &a1[v29[9]];
  *v42 = 0;
  *(v42 + 1) = 0xE000000000000000;
  *&a1[v29[10]] = v28;
  *&a1[v29[11]] = _swiftEmptyArrayStorage;
  *&a1[v29[12]] = _swiftEmptyArrayStorage;
  *&a1[v29[13]] = _swiftEmptyArrayStorage;
  *&a1[v29[15]] = _swiftEmptyArrayStorage;
  *&a1[v29[16]] = _swiftEmptyArrayStorage;
  a1[v29[17]] = Int64 != 0;
  v43 = &a1[v29[18]];
  *v43 = 0;
  v43[4] = 1;
  *&a1[v29[19]] = 1;
  v44 = &a1[v29[20]];
  v45 = v66[3];
  *(v44 + 2) = v66[2];
  *(v44 + 3) = v45;
  *(v44 + 4) = v66[4];
  v46 = v66[1];
  *v44 = v66[0];
  *(v44 + 1) = v46;
  v47 = &a1[v29[21]];
  result = 0.0;
  *(v47 + 3) = 0u;
  *(v47 + 4) = 0u;
  *(v47 + 1) = 0u;
  *(v47 + 2) = 0u;
  *v47 = 0u;
  *&a1[v29[22]] = 0;
  *&a1[v29[23]] = 0;
  v49 = &a1[v29[24]];
  *v49 = v61;
  *(v49 + 1) = v60;
  v50 = &a1[v29[25]];
  *v50 = 0;
  *(v50 + 1) = 0;
  v51 = &a1[v29[26]];
  *v51 = 0;
  *(v51 + 1) = 0;
  a1[v29[27]] = 0;
  a1[v29[29]] = 0;
  *&a1[v29[30]] = 0;
  *&a1[v29[31]] = 0;
  v52 = &a1[v29[32]];
  *v52 = 0;
  v52[8] = 1;
  a1[v29[33]] = 0;
  a1[v29[34]] = 0;
  a1[v29[35]] = 0;
  *&a1[v29[36]] = 0;
  *&a1[v29[37]] = 0;
  v53 = &a1[v29[38]];
  *v53 = 0;
  *(v53 + 1) = 0xE000000000000000;
  a1[v29[39]] = 0;
  a1[v29[40]] = 0;
  *&a1[v29[41]] = 0;
  a1[v29[42]] = 0;
  a1[v29[43]] = 0;
  a1[v29[44]] = 0;
  v54 = &a1[v29[45]];
  *v54 = 0;
  *(v54 + 1) = 0xE000000000000000;
  a1[v29[46]] = 0;
  v55 = &a1[v29[47]];
  *v55 = 0;
  *(v55 + 1) = 0xE000000000000000;
  a1[v29[48]] = 0;
  v56 = &a1[v29[49]];
  *v56 = 0;
  *(v56 + 1) = 0;
  a1[v29[50]] = 0;
  *&a1[v29[51]] = 0;
  *&a1[v29[52]] = 0;
  v57 = &a1[v29[53]];
  *v57 = 0;
  *(v57 + 1) = 0;
  *&a1[v29[54]] = 0;
  v58 = &a1[v29[55]];
  *v58 = 0;
  *(v58 + 1) = 0xE000000000000000;
  *&a1[v29[56]] = 0;
  a1[v29[57]] = 1;
  return result;
}

void sub_1000243E8(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = sub_100006658(v3);

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100006658(v8);

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000BB8E0;
  *(v13 + 32) = v5;
  *(v13 + 40) = v7;
  *(v13 + 48) = 0;
  *(v13 + 56) = 8;
  *(v13 + 64) = v10;
  *(v13 + 72) = v12;
  *(v13 + 80) = 1;
  *(v13 + 88) = 36;

  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_opt_self() bundleWithIdentifier:v14];

  v16 = [v15 privacyFlow];
  v17 = v16;
  v92 = v13;
  v88 = v16;
  v89 = v15;
  if (v16)
  {
    v18 = [v16 localizedTitle];
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v21;

      goto LABEL_5;
    }
  }

  v22 = String._bridgeToObjectiveC()();
  v23 = sub_100006658(v22);

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v24;

  if (v17)
  {
LABEL_5:
    v25 = [v17 localizedContentList];
    if (!v25)
    {
      __break(1u);
      return;
    }

    v26 = v25;

    sub_10003AE18(0, &qword_100102420, OBSplashContent_ptr);
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v27 >> 62)
    {
LABEL_27:
      v28 = _CocoaArrayWrapper.endIndex.getter();
      v86 = v20;
      if (v28)
      {
LABEL_8:
        v29 = 0;
        v20 = v27 & 0xC000000000000001;
        v93 = _swiftEmptyArrayStorage;
        do
        {
          v30 = v29;
          while (1)
          {
            if (v20)
            {
              v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v30 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v31 = *(v27 + 8 * v30 + 32);
            }

            v32 = v31;
            v29 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              __break(1u);
LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

            v33 = [v31 text];
            if (v33)
            {
              break;
            }

            ++v30;
            if (v29 == v28)
            {
              goto LABEL_29;
            }
          }

          v34 = v33;
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v84 = v36;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v93 = sub_10005372C(0, v93[2] + 1, 1, v93);
          }

          v38 = v93[2];
          v37 = v93[3];
          if (v38 >= v37 >> 1)
          {
            v93 = sub_10005372C((v37 > 1), v38 + 1, 1, v93);
          }

          v93[2] = (v38 + 1);
          v39 = &v93[2 * v38];
          v39[4] = v35;
          v39[5] = v84;
        }

        while (v29 != v28);
        goto LABEL_29;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v86 = v20;
      if (v28)
      {
        goto LABEL_8;
      }
    }

    v93 = _swiftEmptyArrayStorage;
LABEL_29:

    *&v95[0] = v93;
    sub_10000E6C4(&qword_100102428, &unk_1000BD2C0);
    sub_10003AE60();
    v40 = BidirectionalCollection<>.joined(separator:)();
    v83 = v41;
    v85 = v40;

    goto LABEL_30;
  }

  v86 = v20;

  v83 = 0xE000000000000000;
  v85 = 0;
LABEL_30:
  v42 = [objc_opt_self() systemFontOfSize:72.0 weight:UIFontWeightRegular];
  v43 = [objc_opt_self() configurationWithFont:v42];

  v44 = String._bridgeToObjectiveC()();
  v45 = [objc_opt_self() _systemImageNamed:v44];

  v46 = [v45 imageByApplyingSymbolConfiguration:v43];
  v47 = v46;
  if (!v46)
  {
    v47 = [objc_allocWithZone(UIImage) init];
  }

  v48 = type metadata accessor for HomePodSetupViewModel(0);
  v49 = v48[6];
  v50 = type metadata accessor for AdjustedMovie(0);
  (*(*(v50 - 8) + 56))(&a2[v49], 1, 1, v50);
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1000BCE00;
  *(v51 + 32) = v47;
  v52 = v48[28];
  v53 = type metadata accessor for AdjustedImage(0);
  (*(*(v53 - 8) + 56))(&a2[v52], 1, 1, v53);
  v54 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_termsAccount);
  v82 = v54;
  v94 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_termsInfo);
  v91 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_termsInfo + 8);
  v55 = v48[58];
  v56 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v56 - 8) + 56))(&a2[v55], 1, 1, v56);
  v57 = &a2[v48[14]];
  *(v57 + 4) = 0;
  *v57 = 0u;
  *(v57 + 1) = 0u;

  v58 = v46;
  v59 = v47;
  v60 = v54;
  v61 = String._bridgeToObjectiveC()();
  v62 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v95);
  *a2 = v86;
  *(a2 + 1) = v87;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v64 = &a2[v48[7]];
  *v64 = v85;
  *(v64 + 1) = v83;
  v65 = &a2[v48[8]];
  *v65 = 0;
  *(v65 + 1) = 0xE000000000000000;
  v66 = &a2[v48[9]];
  *v66 = 0;
  *(v66 + 1) = 0xE000000000000000;
  *&a2[v48[10]] = v92;
  *&a2[v48[11]] = v51;
  *&a2[v48[12]] = _swiftEmptyArrayStorage;
  *&a2[v48[13]] = _swiftEmptyArrayStorage;
  *&a2[v48[15]] = _swiftEmptyArrayStorage;
  *&a2[v48[16]] = _swiftEmptyArrayStorage;
  a2[v48[17]] = Int64 != 0;
  v67 = &a2[v48[18]];
  *v67 = 0;
  v67[4] = 1;
  *&a2[v48[19]] = 1;
  v68 = &a2[v48[20]];
  v69 = v95[3];
  *(v68 + 2) = v95[2];
  *(v68 + 3) = v69;
  *(v68 + 4) = v95[4];
  v70 = v95[1];
  *v68 = v95[0];
  *(v68 + 1) = v70;
  v71 = &a2[v48[21]];
  *(v71 + 3) = 0u;
  *(v71 + 4) = 0u;
  *(v71 + 1) = 0u;
  *(v71 + 2) = 0u;
  *v71 = 0u;
  *&a2[v48[22]] = 0;
  *&a2[v48[23]] = 0;
  v72 = &a2[v48[24]];
  *v72 = 0;
  *(v72 + 1) = 0;
  v73 = &a2[v48[25]];
  *v73 = 0;
  *(v73 + 1) = 0;
  v74 = &a2[v48[26]];
  *v74 = 0;
  *(v74 + 1) = 0;
  a2[v48[27]] = 0;
  a2[v48[29]] = 0;
  *&a2[v48[30]] = 0;
  *&a2[v48[31]] = 0;
  v75 = &a2[v48[32]];
  *v75 = 0;
  v75[8] = 1;
  a2[v48[33]] = 0;
  a2[v48[34]] = 0;
  a2[v48[35]] = 0;
  *&a2[v48[36]] = 0;
  *&a2[v48[37]] = 0;
  v76 = &a2[v48[38]];
  *v76 = 0;
  *(v76 + 1) = 0xE000000000000000;
  a2[v48[39]] = 0;
  a2[v48[40]] = 0;
  *&a2[v48[41]] = 0;
  a2[v48[42]] = 0;
  a2[v48[43]] = 0;
  a2[v48[44]] = 0;
  v77 = &a2[v48[45]];
  *v77 = 0;
  *(v77 + 1) = 0xE000000000000000;
  a2[v48[46]] = 0;
  v78 = &a2[v48[47]];
  *v78 = 0;
  *(v78 + 1) = 0xE000000000000000;
  a2[v48[48]] = 0;
  v79 = &a2[v48[49]];
  *v79 = 0;
  *(v79 + 1) = 0;
  a2[v48[50]] = 0;
  *&a2[v48[51]] = 0;
  *&a2[v48[52]] = v82;
  v80 = &a2[v48[53]];
  *v80 = v94;
  *(v80 + 1) = v91;
  *&a2[v48[54]] = 0;
  v81 = &a2[v48[55]];
  *v81 = 0;
  *(v81 + 1) = 0xE000000000000000;
  *&a2[v48[56]] = 0;
  a2[v48[57]] = 1;
}

void sub_100024D64(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_100006658(v4);

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (a1)
  {

    *&v61[0] = 0x72655F6473;
    *(&v61[0] + 1) = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v9 = sub_100053B3C(&v62), (v10 & 1) != 0))
    {
      sub_10000EA58(*(a1 + 56) + 32 * v9, v60);
      sub_10000EA04(&v62);
      sub_10000E9F4(v60, v61);
      sub_10000E9F4(v61, &v62);
      swift_dynamicCast();
    }

    else
    {
      sub_10000EA04(&v62);
    }

    *&v61[0] = 0x64655F6473;
    *(&v61[0] + 1) = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v11 = sub_100053B3C(&v62), (v12 & 1) != 0))
    {
      sub_10000EA58(*(a1 + 56) + 32 * v11, v60);
      sub_10000EA04(&v62);
      sub_10000E9F4(v60, v61);
      sub_10000E9F4(v61, &v62);
      if (swift_dynamicCast())
      {
      }
    }

    else
    {
      sub_10000EA04(&v62);
    }

    *&v61[0] = 0x65645F6473;
    *(&v61[0] + 1) = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v13 = sub_100053B3C(&v62), (v14 & 1) != 0))
    {
      sub_10000EA58(*(a1 + 56) + 32 * v13, v60);
      sub_10000EA04(&v62);
      sub_10000E9F4(v60, v61);
      sub_10000E9F4(v61, &v62);
      if (swift_dynamicCast())
      {
      }
    }

    else
    {
      sub_10000EA04(&v62);
    }

    v15 = String._bridgeToObjectiveC()();
    v16 = sub_100006658(v15);

    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v17;
  }

  else
  {
    v59 = v6;
  }

  *&v61[0] = 0;
  *(&v61[0] + 1) = 0xE000000000000000;
  v18 = String._bridgeToObjectiveC()();
  v19 = CUAddSuffixForCurrentDeviceClass();

  if (v19)
  {
    v20 = sub_100006658(v19);

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    String.append(_:)(v24);

    v25 = v61[0];
    *(&v63 + 1) = &type metadata for HomeDeviceSetupFeatureFlags;
    *&v64 = sub_100039FE0();
    LOBYTE(v62) = 3;
    v58 = isFeatureEnabled(_:)();
    sub_10000E70C(&v62);
    v26 = type metadata accessor for HomePodSetupViewModel(0);
    v27 = v26[6];
    v28 = type metadata accessor for AdjustedMovie(0);
    (*(*(v28 - 8) + 56))(a2 + v27, 1, 1, v28);
    v29 = String._bridgeToObjectiveC()();
    v30 = sub_100006658(v29);

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    sub_10004E01C(0, 0, a2 + v26[28]);
    v34 = v26[58];
    v35 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
    (*(*(v35 - 8) + 56))(a2 + v34, 1, 1, v35);
    v36 = a2 + v26[14];
    *(v36 + 32) = 0;
    *v36 = 0u;
    *(v36 + 16) = 0u;
    v37 = String._bridgeToObjectiveC()();
    v38 = String._bridgeToObjectiveC()();
    Int64 = CFPrefs_GetInt64();

    sub_1000660A0(&v62);
    *a2 = v59;
    *(a2 + 8) = v8;
    *(a2 + 16) = v25;
    v40 = (a2 + v26[7]);
    *v40 = 0;
    v40[1] = 0xE000000000000000;
    v41 = (a2 + v26[8]);
    *v41 = 0;
    v41[1] = 0xE000000000000000;
    v42 = (a2 + v26[9]);
    *v42 = v31;
    v42[1] = v33;
    *(a2 + v26[10]) = _swiftEmptyArrayStorage;
    *(a2 + v26[11]) = _swiftEmptyArrayStorage;
    *(a2 + v26[12]) = _swiftEmptyArrayStorage;
    *(a2 + v26[13]) = _swiftEmptyArrayStorage;
    *(a2 + v26[15]) = _swiftEmptyArrayStorage;
    *(a2 + v26[16]) = _swiftEmptyArrayStorage;
    *(a2 + v26[17]) = Int64 != 0;
    v43 = a2 + v26[18];
    *v43 = 0;
    *(v43 + 4) = 1;
    *(a2 + v26[19]) = 1;
    v44 = (a2 + v26[20]);
    v45 = v65;
    v44[2] = v64;
    v44[3] = v45;
    v44[4] = v66;
    v46 = v63;
    *v44 = v62;
    v44[1] = v46;
    v47 = (a2 + v26[21]);
    v47[3] = 0u;
    v47[4] = 0u;
    v47[1] = 0u;
    v47[2] = 0u;
    *v47 = 0u;
    *(a2 + v26[22]) = 0;
    *(a2 + v26[23]) = 0;
    v48 = (a2 + v26[24]);
    *v48 = 0;
    v48[1] = 0;
    v49 = (a2 + v26[25]);
    *v49 = 0;
    v49[1] = 0;
    v50 = (a2 + v26[26]);
    *v50 = 0;
    v50[1] = 0;
    *(a2 + v26[27]) = 0;
    *(a2 + v26[29]) = 0;
    *(a2 + v26[30]) = 0;
    *(a2 + v26[31]) = 0;
    v51 = a2 + v26[32];
    *v51 = 0;
    *(v51 + 8) = 1;
    *(a2 + v26[33]) = 0;
    *(a2 + v26[34]) = 0;
    *(a2 + v26[35]) = 0;
    *(a2 + v26[36]) = 0;
    *(a2 + v26[37]) = 0;
    v52 = (a2 + v26[38]);
    *v52 = 0;
    v52[1] = 0xE000000000000000;
    *(a2 + v26[39]) = 1;
    *(a2 + v26[40]) = 1;
    *(a2 + v26[41]) = 0;
    *(a2 + v26[42]) = (v58 & 1) == 0;
    *(a2 + v26[43]) = 0;
    *(a2 + v26[44]) = 0;
    v53 = (a2 + v26[45]);
    *v53 = 0;
    v53[1] = 0xE000000000000000;
    *(a2 + v26[46]) = 0;
    v54 = (a2 + v26[47]);
    *v54 = 0;
    v54[1] = 0xE000000000000000;
    *(a2 + v26[48]) = 0;
    v55 = (a2 + v26[49]);
    *v55 = 0;
    v55[1] = 0;
    *(a2 + v26[50]) = 0;
    *(a2 + v26[51]) = 0;
    *(a2 + v26[52]) = 0;
    v56 = (a2 + v26[53]);
    *v56 = 0;
    v56[1] = 0;
    *(a2 + v26[54]) = 0;
    v57 = (a2 + v26[55]);
    *v57 = 0;
    v57[1] = 0xE000000000000000;
    *(a2 + v26[56]) = 0;
    *(a2 + v26[57]) = 1;
  }

  else
  {
    __break(1u);
  }
}

double sub_10002549C@<D0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_100006658(v4);

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v7;

  if (a1)
  {
    *&v81[0] = 0x72655F6473;
    *(&v81[0] + 1) = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v8 = sub_100053B3C(v82), (v9 & 1) != 0))
    {
      sub_10000EA58(*(a1 + 56) + 32 * v8, v81);
      sub_10000EA04(v82);
      sub_10000E9F4(v81, v82);
      swift_dynamicCast();
    }

    else
    {
      sub_10000EA04(v82);
    }

    *&v81[0] = 0x64655F6473;
    *(&v81[0] + 1) = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v10 = sub_100053B3C(v82), (v11 & 1) != 0))
    {
      sub_10000EA58(*(a1 + 56) + 32 * v10, v81);
      sub_10000EA04(v82);
      sub_10000E9F4(v81, v82);
      if (swift_dynamicCast())
      {
      }
    }

    else
    {
      sub_10000EA04(v82);
    }

    *&v81[0] = 0x65645F6473;
    *(&v81[0] + 1) = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v12 = sub_100053B3C(v82), (v13 & 1) != 0))
    {
      sub_10000EA58(*(a1 + 56) + 32 * v12, v81);
      sub_10000EA04(v82);
      sub_10000E9F4(v81, v82);
      if (swift_dynamicCast())
      {
      }
    }

    else
    {
      sub_10000EA04(v82);
    }

    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v14 = sub_100053B3C(v82), (v15 & 1) != 0))
    {
      sub_10000EA58(*(a1 + 56) + 32 * v14, v81);
      sub_10000EA04(v82);
      sub_10000EA58(v81, v82);
      swift_dynamicCast();
      v16 = String._bridgeToObjectiveC()();
      v17 = sub_100006658(v16);

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      *&v82[0] = v18;
      *(&v82[0] + 1) = v20;
      v21._countAndFlagsBits = 10272;
      v21._object = 0xE200000000000000;
      String.append(_:)(v21);
      v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v22);

      v23._countAndFlagsBits = 2601;
      v23._object = 0xE200000000000000;
      String.append(_:)(v23);
      v24 = String._bridgeToObjectiveC()();
      v25 = sub_100006658(v24);

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29._countAndFlagsBits = v26;
      v29._object = v28;
      String.append(_:)(v29);

      v78 = *(&v82[0] + 1);
      v79 = *&v82[0];
      v30 = String._bridgeToObjectiveC()();
      v31 = sub_100006658(v30);

      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v32;

      v33 = String._bridgeToObjectiveC()();
      v34 = sub_100006658(v33);

      a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = v6;
      sub_10000E70C(v81);
      v38 = 1633641587;
    }

    else
    {
      v37 = v6;
      sub_10000EA04(v82);
      v38 = 0;
      a1 = 0;
      v77 = 0;
      v36 = 0xE000000000000000;
      v76 = 0xE000000000000000;
      v78 = 0xE000000000000000;
      v79 = 0;
    }
  }

  else
  {
    v37 = v6;
    v38 = 0;
    v77 = 0;
    v36 = 0xE000000000000000;
    v76 = 0xE000000000000000;
    v78 = 0xE000000000000000;
    v79 = 0;
  }

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1000BD070;
  *(v39 + 32) = a1;
  *(v39 + 40) = v36;
  *(v39 + 48) = 0;
  *(v39 + 56) = 28;
  v40 = String._bridgeToObjectiveC()();
  v41 = sub_100006658(v40);

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  *(v39 + 64) = v42;
  *(v39 + 72) = v44;
  *(v39 + 80) = 1;
  *(v39 + 88) = 27;
  *(v39 + 96) = v37;
  *(v39 + 104) = v80;
  *(v39 + 112) = 1;
  *(v39 + 120) = 33;
  v45 = type metadata accessor for HomePodSetupViewModel(0);
  v46 = v45[6];
  v47 = type metadata accessor for AdjustedMovie(0);
  (*(*(v47 - 8) + 56))(&a2[v46], 1, 1, v47);
  sub_10004E01C(0, 0, &a2[v45[28]]);
  v48 = v45[58];
  v49 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v49 - 8) + 56))(&a2[v48], 1, 1, v49);
  v50 = &a2[v45[14]];
  *(v50 + 4) = 0;
  *v50 = 0u;
  *(v50 + 1) = 0u;
  v51 = String._bridgeToObjectiveC()();
  v52 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v82);
  *a2 = v79;
  *(a2 + 1) = v78;
  *(a2 + 2) = v77;
  *(a2 + 3) = v76;
  v54 = &a2[v45[7]];
  *v54 = 0;
  *(v54 + 1) = 0xE000000000000000;
  v55 = &a2[v45[8]];
  *v55 = 0;
  *(v55 + 1) = 0xE000000000000000;
  v56 = &a2[v45[9]];
  *v56 = 0;
  *(v56 + 1) = 0xE000000000000000;
  *&a2[v45[10]] = v39;
  *&a2[v45[11]] = _swiftEmptyArrayStorage;
  *&a2[v45[12]] = _swiftEmptyArrayStorage;
  *&a2[v45[13]] = _swiftEmptyArrayStorage;
  *&a2[v45[15]] = _swiftEmptyArrayStorage;
  *&a2[v45[16]] = _swiftEmptyArrayStorage;
  a2[v45[17]] = Int64 != 0;
  v57 = &a2[v45[18]];
  *v57 = 0;
  v57[4] = 1;
  *&a2[v45[19]] = 1;
  v58 = &a2[v45[20]];
  v59 = v82[3];
  *(v58 + 2) = v82[2];
  *(v58 + 3) = v59;
  *(v58 + 4) = v82[4];
  v60 = v82[1];
  *v58 = v82[0];
  *(v58 + 1) = v60;
  v61 = &a2[v45[21]];
  result = 0.0;
  *(v61 + 3) = 0u;
  *(v61 + 4) = 0u;
  *(v61 + 1) = 0u;
  *(v61 + 2) = 0u;
  *v61 = 0u;
  *&a2[v45[22]] = 0;
  *&a2[v45[23]] = 0;
  v63 = &a2[v45[24]];
  *v63 = 0;
  *(v63 + 1) = 0;
  v64 = &a2[v45[25]];
  *v64 = 0;
  *(v64 + 1) = 0;
  v65 = &a2[v45[26]];
  *v65 = 0;
  *(v65 + 1) = 0;
  a2[v45[27]] = 0;
  a2[v45[29]] = 0;
  *&a2[v45[30]] = 0;
  *&a2[v45[31]] = 0;
  v66 = &a2[v45[32]];
  *v66 = 0;
  v66[8] = 1;
  a2[v45[33]] = 0;
  a2[v45[34]] = 0;
  a2[v45[35]] = 0;
  v67 = v45[36];
  v68 = v45[37];
  v69 = v45[38];
  a2[v45[39]] = 0;
  a2[v45[40]] = 1;
  *&a2[v45[41]] = 0;
  a2[v45[42]] = 0;
  a2[v45[43]] = 0;
  a2[v45[44]] = 0;
  v70 = &a2[v45[45]];
  *v70 = 0;
  *(v70 + 1) = 0xE000000000000000;
  a2[v45[46]] = 0;
  v71 = &a2[v45[47]];
  *v71 = 0;
  *(v71 + 1) = 0xE000000000000000;
  a2[v45[48]] = 0;
  v72 = &a2[v45[49]];
  *v72 = 0;
  *(v72 + 1) = 0;
  a2[v45[50]] = 0;
  *&a2[v45[51]] = 0;
  *&a2[v45[52]] = 0;
  v73 = &a2[v69];
  v74 = &a2[v45[53]];
  *v74 = 0;
  *(v74 + 1) = 0;
  *&a2[v45[54]] = 0;
  v75 = &a2[v45[55]];
  *v75 = 0;
  *(v75 + 1) = 0xE000000000000000;
  *&a2[v45[56]] = 0;
  a2[v45[57]] = 1;
  *&a2[v67] = v38;
  *&a2[v68] = 0;
  *v73 = 0;
  *(v73 + 1) = 0xE000000000000000;
  return result;
}

double sub_1000262D0@<D0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v102 = a2;
  v4 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  __chkstk_darwin(v4 - 8);
  v103 = &v95 - v5;
  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v100 = v8;

  v9 = String._bridgeToObjectiveC()();
  v10 = sub_100006658(v9);

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = String._bridgeToObjectiveC()();
  v15 = sub_100006658(v14);

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000BB8E0;
  *(v19 + 32) = v11;
  *(v19 + 40) = v13;
  *(v19 + 48) = 0;
  *(v19 + 56) = 1;
  *(v19 + 64) = v16;
  *(v19 + 72) = v18;
  *(v19 + 80) = 1;
  v99 = v19;
  *(v19 + 88) = 2;
  v20 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_availableSiriLanguages);
  v21 = *(v20 + 16);
  v22 = _swiftEmptyArrayStorage;
  if (v21)
  {
    v98 = a1;
    *&v104[0] = _swiftEmptyArrayStorage;

    sub_10008ED08(0, v21, 0);
    v22 = *&v104[0];
    v97 = v20;
    v23 = (v20 + 56);
    do
    {
      v2 = *(v23 - 3);
      v24 = *(v23 - 2);
      v25 = *(v23 - 1);
      v26 = *v23;
      *&v104[0] = v22;
      v27 = v22[2];
      v28 = v22[3];

      if (v27 >= v28 >> 1)
      {
        sub_10008ED08((v28 > 1), v27 + 1, 1);
        v22 = *&v104[0];
      }

      v22[2] = (v27 + 1);
      v29 = &v22[4 * v27];
      v29[4] = v2;
      v29[5] = v24;
      v29[6] = v25;
      v29[7] = v26;
      v23 += 4;
      --v21;
    }

    while (v21);

    a1 = v98;
  }

  v30 = v22[2];
  if (!v30)
  {
    if (qword_1001015F8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100012AAC(v31, qword_100101EF0);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "HomePodSetupViewModel: Array of available Siri languages unexpectedly empty.", v34, 2u);
    }
  }

  v35 = (a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preferredSiriLanguageCode);
  v36 = (v22 + 7);
  v37 = -1;
  while (v37 - v30 != -1)
  {
    if (++v37 >= v22[2])
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v38 = *(v36 - 3);
    v2 = *(v36 - 2);
    v39 = *(v36 - 1);
    v40 = *v36;
    if (v38 != *v35 || v2 != v35[1])
    {
      v36 += 4;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    v105 = v38;
    v106 = v2;
    v107 = v39;
    v108 = v40;

    goto LABEL_33;
  }

  v42 = (v22 + 7);
  v43 = -v30;
  v44 = -1;
  while (v43 + v44 != -1)
  {
    if (++v44 >= v22[2])
    {
      goto LABEL_44;
    }

    v45 = *(v42 - 3);
    v2 = *(v42 - 2);
    v47 = *(v42 - 1);
    v46 = *v42;
    if (v45 != 0x53552D6E65 || v2 != 0xE500000000000000)
    {
      v42 += 4;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_32;
  }

  v45 = 0;
  v2 = 0;
  v47 = 0;
  v46 = 0;
LABEL_32:
  v105 = v45;
  v106 = v2;
  v107 = v47;
  v108 = v46;
LABEL_33:
  if (qword_1001015F8 == -1)
  {
    goto LABEL_34;
  }

LABEL_45:
  swift_once();
LABEL_34:
  v49 = type metadata accessor for Logger();
  sub_100012AAC(v49, qword_100101EF0);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v104[0] = v53;
    *v52 = 136315138;
    swift_beginAccess();
    if (v2)
    {
      v55 = v105;
      v54 = v106;
    }

    else
    {
      v54 = 0xE300000000000000;
      v55 = 7104878;
    }

    v56 = sub_1000B08A0(v55, v54, v104);

    *(v52 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v50, v51, "HomePodSetupViewModel: Default Option %s will be preselected in picker.", v52, 0xCu);
    sub_10000E70C(v53);
  }

  v57 = type metadata accessor for AdjustedMovie(0);
  (*(*(v57 - 8) + 56))(v103, 1, 1, v57);
  v98 = sub_10008C3BC(v22);

  swift_beginAccess();
  v58 = v105;
  v59 = v106;
  v60 = v107;
  v61 = v108;
  if (v106)
  {
    v62 = swift_allocObject();
    v62[2] = v58;
    v62[3] = v59;
    v62[4] = v60;
    v62[5] = v61;
    v97 = &off_1000F0778;
    v96 = &type metadata for LanguageOption;
  }

  else
  {
    v62 = 0;
    v96 = 0;
    v97 = 0;
  }

  v63 = type metadata accessor for HomePodSetupViewModel(0);
  v64 = v63[28];
  v65 = type metadata accessor for AdjustedImage(0);
  v66 = v102;
  (*(*(v65 - 8) + 56))(v102 + v64, 1, 1, v65);
  v67 = v63[58];
  v68 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v68 - 8) + 56))(v66 + v67, 1, 1, v68);
  sub_10003AEC4(v58, v59, v60, v61);
  v95 = v60;
  v69 = v58;
  v70 = String._bridgeToObjectiveC()();
  v71 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v104);
  v73 = v100;
  *v66 = v101;
  v66[1] = v73;
  v66[2] = 0;
  v66[3] = 0xE000000000000000;
  sub_10003B8EC(v103, v66 + v63[6], &unk_100101FB0, &qword_1000BD128);
  v74 = (v66 + v63[7]);
  *v74 = 0;
  v74[1] = 0xE000000000000000;
  v75 = (v66 + v63[8]);
  *v75 = 0;
  v75[1] = 0xE000000000000000;
  v76 = (v66 + v63[9]);
  *v76 = 0;
  v76[1] = 0xE000000000000000;
  *(v66 + v63[10]) = v99;
  *(v66 + v63[11]) = _swiftEmptyArrayStorage;
  *(v66 + v63[12]) = v98;
  *(v66 + v63[13]) = _swiftEmptyArrayStorage;
  v77 = (v66 + v63[14]);
  *v77 = v62;
  v77[1] = 0;
  v78 = v96;
  v77[2] = 0;
  v77[3] = v78;
  v77[4] = v97;
  sub_10003AF08(v69, v59, v95, v61);
  *(v66 + v63[15]) = _swiftEmptyArrayStorage;
  *(v66 + v63[16]) = _swiftEmptyArrayStorage;
  *(v66 + v63[17]) = Int64 != 0;
  v79 = v66 + v63[18];
  *v79 = 0;
  v79[4] = 1;
  *(v66 + v63[19]) = 1;
  v80 = (v66 + v63[20]);
  v81 = v104[3];
  v80[2] = v104[2];
  v80[3] = v81;
  v80[4] = v104[4];
  v82 = v104[1];
  *v80 = v104[0];
  v80[1] = v82;
  v83 = (v66 + v63[21]);
  result = 0.0;
  v83[3] = 0u;
  v83[4] = 0u;
  v83[1] = 0u;
  v83[2] = 0u;
  *v83 = 0u;
  *(v66 + v63[22]) = 0;
  *(v66 + v63[23]) = 0;
  v85 = (v66 + v63[24]);
  *v85 = 0;
  v85[1] = 0;
  v86 = (v66 + v63[25]);
  *v86 = 0;
  v86[1] = 0;
  v87 = (v66 + v63[26]);
  *v87 = 0;
  v87[1] = 0;
  *(v66 + v63[27]) = 0;
  *(v66 + v63[29]) = 0;
  *(v66 + v63[30]) = 0;
  *(v66 + v63[31]) = 0;
  v88 = v66 + v63[32];
  *v88 = 0;
  v88[8] = 1;
  *(v66 + v63[33]) = 0;
  *(v66 + v63[34]) = 0;
  *(v66 + v63[35]) = 0;
  *(v66 + v63[36]) = 0;
  *(v66 + v63[37]) = 0;
  v89 = (v66 + v63[38]);
  *v89 = 0;
  v89[1] = 0xE000000000000000;
  *(v66 + v63[39]) = 0;
  *(v66 + v63[40]) = 0;
  *(v66 + v63[41]) = 0;
  *(v66 + v63[42]) = 0;
  *(v66 + v63[43]) = 0;
  *(v66 + v63[44]) = 0;
  v90 = (v66 + v63[45]);
  *v90 = 0;
  v90[1] = 0xE000000000000000;
  *(v66 + v63[46]) = 0;
  v91 = (v66 + v63[47]);
  *v91 = 0;
  v91[1] = 0xE000000000000000;
  *(v66 + v63[48]) = 0;
  v92 = (v66 + v63[49]);
  *v92 = 0;
  v92[1] = 0;
  *(v66 + v63[50]) = 0;
  *(v66 + v63[51]) = 0;
  *(v66 + v63[52]) = 0;
  v93 = (v66 + v63[53]);
  *v93 = 0;
  v93[1] = 0;
  *(v66 + v63[54]) = 0;
  v94 = (v66 + v63[55]);
  *v94 = 0;
  v94[1] = 0xE000000000000000;
  *(v66 + v63[56]) = 0;
  *(v66 + v63[57]) = 1;
  return result;
}

double sub_100026D18@<D0>(char *a1@<X8>)
{
  v2 = type metadata accessor for HomePodSetupViewModel(0);
  v3 = v2[6];
  v4 = type metadata accessor for AdjustedMovie(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[28];
  v6 = type metadata accessor for AdjustedImage(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[58];
  v8 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = &a1[v2[14]];
  *(v9 + 4) = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v32);
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v13 = &a1[v2[7]];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v14 = &a1[v2[8]];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  v15 = &a1[v2[9]];
  *v15 = 0;
  *(v15 + 1) = 0xE000000000000000;
  *&a1[v2[10]] = _swiftEmptyArrayStorage;
  *&a1[v2[11]] = _swiftEmptyArrayStorage;
  *&a1[v2[12]] = _swiftEmptyArrayStorage;
  *&a1[v2[13]] = _swiftEmptyArrayStorage;
  *&a1[v2[15]] = _swiftEmptyArrayStorage;
  *&a1[v2[16]] = _swiftEmptyArrayStorage;
  a1[v2[17]] = Int64 != 0;
  v16 = &a1[v2[18]];
  *v16 = 0;
  v16[4] = 1;
  *&a1[v2[19]] = 1;
  v17 = &a1[v2[20]];
  v18 = v32[3];
  *(v17 + 2) = v32[2];
  *(v17 + 3) = v18;
  *(v17 + 4) = v32[4];
  v19 = v32[1];
  *v17 = v32[0];
  *(v17 + 1) = v19;
  v20 = &a1[v2[21]];
  result = 0.0;
  *(v20 + 3) = 0u;
  *(v20 + 4) = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 2) = 0u;
  *v20 = 0u;
  *&a1[v2[22]] = 0;
  *&a1[v2[23]] = 0;
  v22 = &a1[v2[24]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &a1[v2[25]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &a1[v2[26]];
  *v24 = 0;
  *(v24 + 1) = 0;
  a1[v2[27]] = 0;
  a1[v2[29]] = 0;
  *&a1[v2[30]] = 0;
  *&a1[v2[31]] = 0;
  v25 = &a1[v2[32]];
  *v25 = 0;
  v25[8] = 1;
  a1[v2[33]] = 0;
  a1[v2[34]] = 0;
  a1[v2[35]] = 0;
  *&a1[v2[36]] = 0;
  *&a1[v2[37]] = 0;
  v26 = &a1[v2[38]];
  *v26 = 0;
  *(v26 + 1) = 0xE000000000000000;
  a1[v2[39]] = 0;
  a1[v2[40]] = 0;
  *&a1[v2[41]] = 0;
  a1[v2[42]] = 0;
  a1[v2[43]] = 0;
  a1[v2[44]] = 0;
  v27 = &a1[v2[45]];
  *v27 = 0;
  *(v27 + 1) = 0xE000000000000000;
  a1[v2[46]] = 0;
  v28 = &a1[v2[47]];
  *v28 = 0;
  *(v28 + 1) = 0xE000000000000000;
  a1[v2[48]] = 0;
  v29 = &a1[v2[49]];
  *v29 = 0;
  *(v29 + 1) = 0;
  a1[v2[50]] = 0;
  *&a1[v2[51]] = 0;
  *&a1[v2[52]] = 0;
  v30 = &a1[v2[53]];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&a1[v2[54]] = 0;
  v31 = &a1[v2[55]];
  *v31 = 0;
  *(v31 + 1) = 0xE000000000000000;
  *&a1[v2[56]] = 0;
  a1[v2[57]] = 1;
  return result;
}

double sub_1000270B4@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_100006658(v4);

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = type metadata accessor for HomePodSetupViewModel(0);
  v10 = v9[6];
  v11 = type metadata accessor for AdjustedMovie(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  sub_10003ACF0(a1);
  v13 = v12;
  v14 = v9[28];
  v15 = type metadata accessor for AdjustedImage(0);
  (*(*(v15 - 8) + 56))(&a2[v14], 1, 1, v15);
  v16 = v9[58];
  v17 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v17 - 8) + 56))(&a2[v16], 1, 1, v17);
  v18 = &a2[v9[14]];
  *(v18 + 4) = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = String._bridgeToObjectiveC()();
  v20 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v41);
  *a2 = v6;
  *(a2 + 1) = v8;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v22 = &a2[v9[7]];
  *v22 = 0;
  *(v22 + 1) = 0xE000000000000000;
  v23 = &a2[v9[8]];
  *v23 = 0;
  *(v23 + 1) = 0xE000000000000000;
  v24 = &a2[v9[9]];
  *v24 = 0;
  *(v24 + 1) = 0xE000000000000000;
  *&a2[v9[10]] = v13;
  *&a2[v9[11]] = _swiftEmptyArrayStorage;
  *&a2[v9[12]] = _swiftEmptyArrayStorage;
  *&a2[v9[13]] = _swiftEmptyArrayStorage;
  *&a2[v9[15]] = _swiftEmptyArrayStorage;
  *&a2[v9[16]] = _swiftEmptyArrayStorage;
  a2[v9[17]] = Int64 != 0;
  v25 = &a2[v9[18]];
  *v25 = 0;
  v25[4] = 1;
  *&a2[v9[19]] = 1;
  v26 = &a2[v9[20]];
  v27 = v41[3];
  *(v26 + 2) = v41[2];
  *(v26 + 3) = v27;
  *(v26 + 4) = v41[4];
  v28 = v41[1];
  *v26 = v41[0];
  *(v26 + 1) = v28;
  v29 = &a2[v9[21]];
  result = 0.0;
  *(v29 + 3) = 0u;
  *(v29 + 4) = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 2) = 0u;
  *v29 = 0u;
  *&a2[v9[22]] = 0;
  *&a2[v9[23]] = 0;
  v31 = &a2[v9[24]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &a2[v9[25]];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &a2[v9[26]];
  *v33 = 0;
  *(v33 + 1) = 0;
  a2[v9[27]] = 0;
  a2[v9[29]] = 0;
  *&a2[v9[30]] = 0;
  *&a2[v9[31]] = 0;
  v34 = &a2[v9[32]];
  *v34 = 0;
  v34[8] = 1;
  a2[v9[33]] = 0;
  a2[v9[34]] = 0;
  a2[v9[35]] = 0;
  *&a2[v9[36]] = 0;
  *&a2[v9[37]] = 0;
  v35 = &a2[v9[38]];
  *v35 = 0;
  *(v35 + 1) = 0xE000000000000000;
  a2[v9[39]] = 0;
  a2[v9[40]] = 0;
  *&a2[v9[41]] = 0;
  a2[v9[42]] = 0;
  a2[v9[43]] = 0;
  a2[v9[44]] = 0;
  v36 = &a2[v9[45]];
  *v36 = 0;
  *(v36 + 1) = 0xE000000000000000;
  a2[v9[46]] = 0;
  v37 = &a2[v9[47]];
  *v37 = 0;
  *(v37 + 1) = 0xE000000000000000;
  a2[v9[48]] = 0;
  v38 = &a2[v9[49]];
  *v38 = 0;
  *(v38 + 1) = 0;
  a2[v9[50]] = 0;
  *&a2[v9[51]] = 0;
  *&a2[v9[52]] = 0;
  v39 = &a2[v9[53]];
  *v39 = 0;
  *(v39 + 1) = 0;
  *&a2[v9[54]] = 0;
  v40 = &a2[v9[55]];
  *v40 = 0;
  *(v40 + 1) = 0xE000000000000000;
  *&a2[v9[56]] = 0;
  a2[v9[57]] = 1;
  return result;
}

double sub_1000274B4@<D0>(char *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100006658(v2);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v5;
  v50 = v4;

  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = type metadata accessor for HomePodSetupViewModel(0);
  v17 = v16[6];
  v18 = type metadata accessor for AdjustedMovie(0);
  (*(*(v18 - 8) + 56))(&a1[v17], 1, 1, v18);
  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000BD050;
  *(v19 + 32) = v8;
  *(v19 + 40) = v10;
  *(v19 + 48) = 0;
  *(v19 + 56) = 1;
  sub_10003A7C4();
  v21 = v20;
  v22 = v16[28];
  v23 = type metadata accessor for AdjustedImage(0);
  (*(*(v23 - 8) + 56))(&a1[v22], 1, 1, v23);
  v24 = v16[58];
  v25 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v25 - 8) + 56))(&a1[v24], 1, 1, v25);
  v26 = &a1[v16[14]];
  *(v26 + 4) = 0;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  v27 = String._bridgeToObjectiveC()();
  v28 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v51);
  *a1 = v50;
  *(a1 + 1) = v49;
  *(a1 + 2) = v13;
  *(a1 + 3) = v15;
  v30 = &a1[v16[7]];
  *v30 = 0;
  *(v30 + 1) = 0xE000000000000000;
  v31 = &a1[v16[8]];
  *v31 = 0;
  *(v31 + 1) = 0xE000000000000000;
  v32 = &a1[v16[9]];
  *v32 = 0;
  *(v32 + 1) = 0xE000000000000000;
  *&a1[v16[10]] = v19;
  *&a1[v16[11]] = v21;
  *&a1[v16[12]] = _swiftEmptyArrayStorage;
  *&a1[v16[13]] = _swiftEmptyArrayStorage;
  *&a1[v16[15]] = _swiftEmptyArrayStorage;
  *&a1[v16[16]] = _swiftEmptyArrayStorage;
  a1[v16[17]] = Int64 != 0;
  v33 = &a1[v16[18]];
  *v33 = 0;
  v33[4] = 1;
  *&a1[v16[19]] = 1;
  v34 = &a1[v16[20]];
  v35 = v51[3];
  *(v34 + 2) = v51[2];
  *(v34 + 3) = v35;
  *(v34 + 4) = v51[4];
  v36 = v51[1];
  *v34 = v51[0];
  *(v34 + 1) = v36;
  v37 = &a1[v16[21]];
  result = 0.0;
  *(v37 + 3) = 0u;
  *(v37 + 4) = 0u;
  *(v37 + 1) = 0u;
  *(v37 + 2) = 0u;
  *v37 = 0u;
  *&a1[v16[22]] = 0;
  *&a1[v16[23]] = 0;
  v39 = &a1[v16[24]];
  *v39 = 0;
  *(v39 + 1) = 0;
  v40 = &a1[v16[25]];
  *v40 = 0;
  *(v40 + 1) = 0;
  v41 = &a1[v16[26]];
  *v41 = 0;
  *(v41 + 1) = 0;
  a1[v16[27]] = 0;
  a1[v16[29]] = 0;
  *&a1[v16[30]] = 0;
  *&a1[v16[31]] = 0;
  v42 = &a1[v16[32]];
  *v42 = 0;
  v42[8] = 1;
  a1[v16[33]] = 0;
  a1[v16[34]] = 0;
  a1[v16[35]] = 0;
  *&a1[v16[36]] = 0;
  *&a1[v16[37]] = 0;
  v43 = &a1[v16[38]];
  *v43 = 0;
  *(v43 + 1) = 0xE000000000000000;
  a1[v16[39]] = 0;
  a1[v16[40]] = 0;
  *&a1[v16[41]] = 0;
  a1[v16[42]] = 0;
  a1[v16[43]] = 0;
  a1[v16[44]] = 0;
  v44 = &a1[v16[45]];
  *v44 = 0;
  *(v44 + 1) = 0xE000000000000000;
  a1[v16[46]] = 0;
  v45 = &a1[v16[47]];
  *v45 = 0;
  *(v45 + 1) = 0xE000000000000000;
  a1[v16[48]] = 0;
  v46 = &a1[v16[49]];
  *v46 = 0;
  *(v46 + 1) = 0;
  a1[v16[50]] = 0;
  *&a1[v16[51]] = 0;
  *&a1[v16[52]] = 0;
  v47 = &a1[v16[53]];
  *v47 = 0;
  *(v47 + 1) = 0;
  *&a1[v16[54]] = 0;
  v48 = &a1[v16[55]];
  *v48 = 0;
  *(v48 + 1) = 0xE000000000000000;
  *&a1[v16[56]] = 0;
  a1[v16[57]] = 1;
  return result;
}

void sub_100027990(char *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100006658(v2);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v5;
  v63 = v4;

  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = String._bridgeToObjectiveC()();
  v17 = sub_100006658(v16);

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000BB8E0;
  *(v21 + 32) = v13;
  *(v21 + 40) = v15;
  *(v21 + 48) = 0;
  *(v21 + 56) = 23;
  *(v21 + 64) = v18;
  *(v21 + 72) = v20;
  *(v21 + 80) = 1;
  *(v21 + 88) = 2;

  v22 = String._bridgeToObjectiveC()();
  v23 = sub_100006658(v22);

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  v24 = CUAddSuffixForCurrentDeviceClass();

  if (v24)
  {

    v25 = sub_100006658(v24);

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = type metadata accessor for HomePodSetupViewModel(0);
    v30 = v29[6];
    v31 = type metadata accessor for AdjustedMovie(0);
    (*(*(v31 - 8) + 56))(&a1[v30], 1, 1, v31);
    *&v64[0] = v8;
    *(&v64[0] + 1) = v10;
    v32._countAndFlagsBits = 2570;
    v32._object = 0xE200000000000000;
    String.append(_:)(v32);
    v33._countAndFlagsBits = v26;
    v33._object = v28;
    String.append(_:)(v33);

    v34 = v64[0];
    sub_10003A7C4();
    v36 = v35;
    v37 = v29[28];
    v38 = type metadata accessor for AdjustedImage(0);
    (*(*(v38 - 8) + 56))(&a1[v37], 1, 1, v38);
    v39 = v29[58];
    v40 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
    (*(*(v40 - 8) + 56))(&a1[v39], 1, 1, v40);
    v41 = &a1[v29[14]];
    *(v41 + 4) = 0;
    *v41 = 0u;
    *(v41 + 1) = 0u;
    v42 = String._bridgeToObjectiveC()();
    v43 = String._bridgeToObjectiveC()();
    Int64 = CFPrefs_GetInt64();

    sub_1000660A0(v64);
    *a1 = v63;
    *(a1 + 1) = v62;
    *(a1 + 2) = 0;
    *(a1 + 3) = 0xE000000000000000;
    *&a1[v29[7]] = v34;
    v45 = &a1[v29[8]];
    *v45 = 0;
    *(v45 + 1) = 0xE000000000000000;
    v46 = &a1[v29[9]];
    *v46 = 0;
    *(v46 + 1) = 0xE000000000000000;
    *&a1[v29[10]] = v21;
    *&a1[v29[11]] = v36;
    *&a1[v29[12]] = _swiftEmptyArrayStorage;
    *&a1[v29[13]] = _swiftEmptyArrayStorage;
    *&a1[v29[15]] = _swiftEmptyArrayStorage;
    *&a1[v29[16]] = _swiftEmptyArrayStorage;
    a1[v29[17]] = Int64 != 0;
    v47 = &a1[v29[18]];
    *v47 = 0;
    v47[4] = 1;
    *&a1[v29[19]] = 1;
    v48 = &a1[v29[20]];
    v49 = v64[3];
    *(v48 + 2) = v64[2];
    *(v48 + 3) = v49;
    *(v48 + 4) = v64[4];
    v50 = v64[1];
    *v48 = v64[0];
    *(v48 + 1) = v50;
    v51 = &a1[v29[21]];
    *(v51 + 3) = 0u;
    *(v51 + 4) = 0u;
    *(v51 + 1) = 0u;
    *(v51 + 2) = 0u;
    *v51 = 0u;
    *&a1[v29[22]] = 0;
    *&a1[v29[23]] = 0;
    v52 = &a1[v29[24]];
    *v52 = 0;
    *(v52 + 1) = 0;
    v53 = &a1[v29[25]];
    *v53 = 0;
    *(v53 + 1) = 0;
    v54 = &a1[v29[26]];
    *v54 = 0;
    *(v54 + 1) = 0;
    a1[v29[27]] = 0;
    a1[v29[29]] = 0;
    *&a1[v29[30]] = 0;
    *&a1[v29[31]] = 0;
    v55 = &a1[v29[32]];
    *v55 = 0;
    v55[8] = 1;
    a1[v29[33]] = 0;
    a1[v29[34]] = 0;
    a1[v29[35]] = 0;
    *&a1[v29[36]] = 0;
    *&a1[v29[37]] = 0;
    v56 = &a1[v29[38]];
    *v56 = 0;
    *(v56 + 1) = 0xE000000000000000;
    a1[v29[39]] = 0;
    a1[v29[40]] = 0;
    *&a1[v29[41]] = 0;
    a1[v29[42]] = 0;
    a1[v29[43]] = 0;
    a1[v29[44]] = 0;
    v57 = &a1[v29[45]];
    *v57 = 0;
    *(v57 + 1) = 0xE000000000000000;
    a1[v29[46]] = 0;
    v58 = &a1[v29[47]];
    *v58 = 0;
    *(v58 + 1) = 0xE000000000000000;
    a1[v29[48]] = 0;
    v59 = &a1[v29[49]];
    *v59 = 0;
    *(v59 + 1) = 0;
    a1[v29[50]] = 0;
    *&a1[v29[51]] = 0;
    *&a1[v29[52]] = 0;
    v60 = &a1[v29[53]];
    *v60 = 0;
    *(v60 + 1) = 0;
    *&a1[v29[54]] = 0;
    v61 = &a1[v29[55]];
    *v61 = 0;
    *(v61 + 1) = 0xE000000000000000;
    *&a1[v29[56]] = 0;
    a1[v29[57]] = 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100027FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v78 = a3;
  v4 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  __chkstk_darwin(v4 - 8);
  v75 = &v70 - v5;
  v6 = sub_10000E6C4(&qword_100101FC0, &unk_1000BE590);
  v7 = __chkstk_darwin(v6 - 8);
  v76 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v72 = &v70 - v9;
  v10 = type metadata accessor for HomePodSetupViewModel(0);
  __chkstk_darwin(v10);
  v12 = (&v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode;
  v14 = String._bridgeToObjectiveC()();
  v15 = sub_100006658(v14);

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = v10[6];
  v20 = type metadata accessor for AdjustedMovie(0);
  (*(*(v20 - 8) + 56))(v12 + v19, 1, 1, v20);
  sub_10004E01C(0, 0, v12 + v10[28]);
  v21 = v10[58];
  v22 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  v73 = *(v22 - 8);
  v23 = *(v73 + 56);
  v71 = v21;
  v74 = v22;
  v23(v12 + v21, 1, 1);
  v24 = v12 + v10[14];
  *(v24 + 4) = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = String._bridgeToObjectiveC()();
  v26 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v79);
  *v12 = v16;
  v12[1] = v18;
  v12[2] = 0;
  v12[3] = 0xE000000000000000;
  v28 = (v12 + v10[7]);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v29 = (v12 + v10[8]);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v30 = (v12 + v10[9]);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  *(v12 + v10[10]) = _swiftEmptyArrayStorage;
  *(v12 + v10[11]) = _swiftEmptyArrayStorage;
  *(v12 + v10[12]) = _swiftEmptyArrayStorage;
  *(v12 + v10[13]) = _swiftEmptyArrayStorage;
  *(v12 + v10[15]) = _swiftEmptyArrayStorage;
  *(v12 + v10[16]) = _swiftEmptyArrayStorage;
  *(v12 + v10[17]) = Int64 != 0;
  *(v12 + v10[19]) = 1;
  v31 = (v12 + v10[20]);
  v32 = v79[3];
  v31[2] = v79[2];
  v31[3] = v32;
  v31[4] = v79[4];
  v33 = v79[1];
  *v31 = v79[0];
  v31[1] = v33;
  v34 = (v12 + v10[21]);
  v34[3] = 0u;
  v34[4] = 0u;
  v34[1] = 0u;
  v34[2] = 0u;
  *v34 = 0u;
  *(v12 + v10[22]) = 0;
  *(v12 + v10[23]) = 0;
  v35 = (v12 + v10[24]);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v12 + v10[25]);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v12 + v10[26]);
  *v37 = 0;
  v37[1] = 0;
  *(v12 + v10[27]) = 0;
  v38 = v10[29];
  *(v12 + v38) = 0;
  v39 = v10[30];
  *(v12 + v39) = 0;
  v40 = v10[31];
  *(v12 + v40) = 0;
  v41 = v12 + v10[32];
  *v41 = 0;
  v41[8] = 1;
  *(v12 + v10[33]) = 0;
  *(v12 + v10[34]) = 0;
  *(v12 + v10[35]) = 0;
  *(v12 + v10[36]) = 0;
  *(v12 + v10[37]) = 0;
  v42 = (v12 + v10[38]);
  *v42 = 0;
  v42[1] = 0xE000000000000000;
  *(v12 + v10[39]) = 0;
  *(v12 + v10[40]) = 0;
  *(v12 + v10[41]) = 0;
  *(v12 + v10[42]) = 0;
  *(v12 + v10[43]) = 0;
  *(v12 + v10[44]) = 0;
  v43 = (v12 + v10[45]);
  *v43 = 0;
  v43[1] = 0xE000000000000000;
  *(v12 + v10[46]) = 0;
  v44 = (v12 + v10[47]);
  *v44 = 0;
  v44[1] = 0xE000000000000000;
  *(v12 + v10[48]) = 0;
  v45 = (v12 + v10[49]);
  *v45 = 0;
  v45[1] = 0;
  *(v12 + v10[50]) = 0;
  *(v12 + v10[51]) = 0;
  *(v12 + v10[52]) = 0;
  v46 = (v12 + v10[53]);
  *v46 = 0;
  v46[1] = 0;
  *(v12 + v10[54]) = 0;
  v47 = (v12 + v10[55]);
  *v47 = 0;
  v47[1] = 0xE000000000000000;
  *(v12 + v10[56]) = 0;
  *(v12 + v10[57]) = 1;
  if (*(a1 + v13) == 5 && (*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoRole) & 0xFFFFFFFE) == 2)
  {
    if (qword_1001015F8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100012AAC(v48, qword_100101EF0);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "createProgressViewModel creating stereo pair image for mini", v51, 2u);
    }

    v52 = v72;
    sub_1000379DC(a1, 0, 0, v72);
    sub_10003A9C0(v52, v12 + v71);
  }

  else
  {
    if (qword_1001015F8 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100012AAC(v53, qword_100101EF0);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "createProgressViewModel useSoloHomePodConstraints set to true", v56, 2u);
    }

    *(v12 + v38) = 1;
    v57 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoRole;
    *(v12 + v39) = sub_10003AF8C(1, *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoRole), *(a1 + v13));
    *(v12 + v40) = sub_10003AF8C(0, *(a1 + v57), *(a1 + v13));
  }

  v58 = v12 + v10[18];
  v59 = BYTE4(v77);
  *v58 = v77;
  v58[4] = v59 & 1;
  if (qword_1001015F8 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  sub_100012AAC(v60, qword_100101EF0);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 67109376;
    swift_beginAccess();
    v64 = v75;
    sub_10000F25C(v12 + v10[28], v75, &unk_100102610, &unk_1000BD130);
    v65 = type metadata accessor for AdjustedImage(0);
    v66 = (*(*(v65 - 8) + 48))(v64, 1, v65) != 1;
    sub_10000EBA4(v64, &unk_100102610, &unk_1000BD130);
    *(v63 + 4) = v66;
    *(v63 + 8) = 1024;
    v67 = v76;
    sub_10000F25C(v12 + v10[58], v76, &qword_100101FC0, &unk_1000BE590);
    v68 = (*(v73 + 48))(v67, 1, v74) != 1;
    sub_10000EBA4(v67, &qword_100101FC0, &unk_1000BE590);
    *(v63 + 10) = v68;
    _os_log_impl(&_mh_execute_header, v61, v62, "createProgressViewModel: productImage exists = %{BOOL}d | stereoPairImages exists = %{BOOL}d", v63, 0xEu);
  }

  swift_beginAccess();
  sub_10003A8F8(v12, v78, type metadata accessor for HomePodSetupViewModel);
  return sub_10003A960(v12, type metadata accessor for HomePodSetupViewModel);
}

double sub_100028910@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
{
  if (qword_1001015F8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100101EF0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v104[0] = v10;
    *v9 = 136315138;
    if (!a3)
    {
      sub_10000D8A8(_swiftEmptyArrayStorage);
    }

    v11 = Dictionary.description.getter();
    v13 = v12;

    v14 = sub_1000B08A0(v11, v13, v104);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "createProgressUIForHomePodSUViewModel created, dict = %s", v9, 0xCu);
    sub_10000E70C(v10);
  }

  v15 = String._bridgeToObjectiveC()();
  v16 = sub_100006658(v15);

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = String._bridgeToObjectiveC()();
  v21 = sub_100006658(v20);

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v101 = v17;
  if (!a3)
  {
    v105 = 0u;
    v106 = 0u;
    sub_10000EBA4(&v105, &qword_1001036C0, &unk_1000BEE90);
    v105 = 0u;
    v106 = 0u;
    sub_10000EBA4(&v105, &qword_1001036C0, &unk_1000BEE90);
    v105 = 0u;
    v106 = 0u;
    sub_10000EBA4(&v105, &qword_1001036C0, &unk_1000BEE90);
    v98 = 0;
    v30 = 0;
LABEL_41:
    v105 = 0u;
    v106 = 0u;
    goto LABEL_42;
  }

  AnyHashable.init<A>(_:)();
  if (!*(a3 + 16) || (v25 = sub_100053B3C(v104), (v26 & 1) == 0))
  {
    sub_10000EA04(v104);
    v105 = 0u;
    v106 = 0u;
    goto LABEL_14;
  }

  sub_10000EA58(*(a3 + 56) + 32 * v25, &v105);
  sub_10000EA04(v104);
  if (!*(&v106 + 1))
  {
LABEL_14:
    sub_10000EBA4(&v105, &qword_1001036C0, &unk_1000BEE90);
    goto LABEL_15;
  }

  if (!swift_dynamicCast())
  {
LABEL_15:
    v27 = 0;
    goto LABEL_16;
  }

  v27 = LOBYTE(v104[0]);
LABEL_16:
  AnyHashable.init<A>(_:)();
  if (!*(a3 + 16) || (v28 = sub_100053B3C(v104), (v29 & 1) == 0))
  {
    sub_10000EA04(v104);
    v105 = 0u;
    v106 = 0u;
    goto LABEL_22;
  }

  sub_10000EA58(*(a3 + 56) + 32 * v28, &v105);
  sub_10000EA04(v104);
  if (!*(&v106 + 1))
  {
LABEL_22:
    sub_10000EBA4(&v105, &qword_1001036C0, &unk_1000BEE90);
    goto LABEL_23;
  }

  if (!swift_dynamicCast())
  {
LABEL_23:
    v30 = 0;
    goto LABEL_24;
  }

  v30 = v104[0];
LABEL_24:
  AnyHashable.init<A>(_:)();
  if (!*(a3 + 16) || (v31 = sub_100053B3C(v104), (v32 & 1) == 0))
  {
    sub_10000EA04(v104);
    v105 = 0u;
    v106 = 0u;
LABEL_31:
    sub_10000EBA4(&v105, &qword_1001036C0, &unk_1000BEE90);
    v98 = 0;
    if (v27)
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  sub_10000EA58(*(a3 + 56) + 32 * v31, &v105);
  sub_10000EA04(v104);
  if (!*(&v106 + 1))
  {
    goto LABEL_31;
  }

  if (swift_dynamicCast())
  {
    v98 = LOBYTE(v104[0]);
    if ((v27 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_32:

    v33 = String._bridgeToObjectiveC()();
    v34 = sub_100006658(v33);

    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v35;

    v36 = 0;
    v37 = 0xE000000000000000;
    v97 = 1;
    goto LABEL_49;
  }

  v98 = 0;
  if (v27)
  {
    goto LABEL_32;
  }

LABEL_35:
  AnyHashable.init<A>(_:)();
  if (!*(a3 + 16) || (v38 = sub_100053B3C(v104), (v39 & 1) == 0))
  {
    sub_10000EA04(v104);
    goto LABEL_41;
  }

  sub_10000EA58(*(a3 + 56) + 32 * v38, &v105);
  sub_10000EA04(v104);
  if (!*(&v106 + 1))
  {
LABEL_42:
    v100 = v24;
    sub_10000EBA4(&v105, &qword_1001036C0, &unk_1000BEE90);
    goto LABEL_43;
  }

  v100 = v24;
  if (swift_dynamicCast())
  {
    v99 = v22;
    v40 = sub_10003B264();
    v42 = v41;
    goto LABEL_44;
  }

LABEL_43:
  v99 = v22;
  v43 = String._bridgeToObjectiveC()();
  v44 = sub_100006658(v43);

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v45;

LABEL_44:
  v46 = sub_10003B464();
  v36 = v46;
  v37 = v47;
  if (v30 == 5)
  {

    v97 = 0;
  }

  else if (v30)
  {
    *&v104[0] = v46;
    *(&v104[0] + 1) = v47;
    v51._countAndFlagsBits = 8250;
    v51._object = 0xE200000000000000;
    String.append(_:)(v51);
    v52._countAndFlagsBits = v40;
    v52._object = v42;
    String.append(_:)(v52);

    v97 = 0;
    v37 = *(&v104[0] + 1);
    v36 = *&v104[0];
  }

  else
  {

    v48 = String._bridgeToObjectiveC()();
    v49 = sub_100006658(v48);

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v50;

    v97 = 0;
  }

LABEL_49:
  v53 = String._bridgeToObjectiveC()();
  v54 = sub_100006658(v53);

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  v58 = String._bridgeToObjectiveC()();
  v59 = sub_100006658(v58);

  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1000BB8E0;
  *(v63 + 32) = v55;
  *(v63 + 40) = v57;
  *(v63 + 48) = 0;
  *(v63 + 56) = 1;
  *(v63 + 64) = v60;
  *(v63 + 72) = v62;
  *(v63 + 80) = 1;
  *(v63 + 88) = 22;
  v64 = type metadata accessor for HomePodSetupViewModel(0);
  v65 = v64[6];
  v66 = type metadata accessor for AdjustedMovie(0);
  (*(*(v66 - 8) + 56))(&a4[v65], 1, 1, v66);
  sub_10004E01C(0, 0, &a4[v64[28]]);
  v67 = v64[58];
  v68 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v68 - 8) + 56))(&a4[v67], 1, 1, v68);
  v69 = &a4[v64[14]];
  *(v69 + 4) = 0;
  *v69 = 0u;
  *(v69 + 1) = 0u;
  v70 = String._bridgeToObjectiveC()();
  v71 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v104);
  *a4 = v101;
  *(a4 + 1) = v19;
  *(a4 + 2) = v99;
  *(a4 + 3) = v100;
  v73 = &a4[v64[7]];
  *v73 = v36;
  *(v73 + 1) = v37;
  v74 = &a4[v64[8]];
  *v74 = 0;
  *(v74 + 1) = 0xE000000000000000;
  v75 = &a4[v64[9]];
  *v75 = 0;
  *(v75 + 1) = 0xE000000000000000;
  *&a4[v64[10]] = v63;
  *&a4[v64[11]] = _swiftEmptyArrayStorage;
  *&a4[v64[12]] = _swiftEmptyArrayStorage;
  *&a4[v64[13]] = _swiftEmptyArrayStorage;
  *&a4[v64[15]] = _swiftEmptyArrayStorage;
  *&a4[v64[16]] = _swiftEmptyArrayStorage;
  a4[v64[17]] = Int64 != 0;
  *&a4[v64[19]] = 1;
  v76 = &a4[v64[20]];
  v77 = v104[3];
  *(v76 + 2) = v104[2];
  *(v76 + 3) = v77;
  *(v76 + 4) = v104[4];
  v78 = v104[1];
  *v76 = v104[0];
  *(v76 + 1) = v78;
  v79 = &a4[v64[21]];
  *(v79 + 3) = 0u;
  *(v79 + 4) = 0u;
  *(v79 + 1) = 0u;
  *(v79 + 2) = 0u;
  *v79 = 0u;
  *&a4[v64[22]] = 0;
  *&a4[v64[23]] = 0;
  v80 = &a4[v64[24]];
  *v80 = 0;
  *(v80 + 1) = 0;
  v81 = &a4[v64[25]];
  *v81 = 0;
  *(v81 + 1) = 0;
  v82 = &a4[v64[26]];
  *v82 = 0;
  *(v82 + 1) = 0;
  a4[v64[27]] = 0;
  v83 = v64[29];
  v84 = &a4[v64[32]];
  *v84 = 0;
  v84[8] = 1;
  a4[v64[33]] = 0;
  v85 = v64[34];
  a4[v85] = 0;
  *&a4[v64[36]] = 0;
  *&a4[v64[37]] = 0;
  v86 = &a4[v64[38]];
  *v86 = 0;
  *(v86 + 1) = 0xE000000000000000;
  a4[v64[39]] = 0;
  a4[v64[40]] = 0;
  *&a4[v64[41]] = 0;
  a4[v64[42]] = 0;
  a4[v64[43]] = 0;
  a4[v64[44]] = 0;
  v87 = &a4[v64[45]];
  *v87 = 0;
  *(v87 + 1) = 0xE000000000000000;
  a4[v64[46]] = 0;
  v88 = &a4[v64[47]];
  *v88 = 0;
  *(v88 + 1) = 0xE000000000000000;
  a4[v64[48]] = 0;
  v89 = &a4[v64[49]];
  *v89 = 0;
  *(v89 + 1) = 0;
  a4[v64[50]] = 0;
  *&a4[v64[51]] = 0;
  *&a4[v64[52]] = 0;
  v90 = &a4[v64[53]];
  *v90 = 0;
  *(v90 + 1) = 0;
  *&a4[v64[54]] = 0;
  v91 = &a4[v64[55]];
  *v91 = 0;
  *(v91 + 1) = 0xE000000000000000;
  *&a4[v64[56]] = 0;
  a4[v64[57]] = 1;
  a4[v83] = 1;
  if (v98)
  {
    a4[v85] = 1;
  }

  v92 = v64[30];
  v93 = v64[31];
  a4[v64[35]] = v97;
  result = dbl_1000BD080[*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode) == 5];
  v95 = qword_1000BD090[*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode) == 5];
  *&a4[v92] = result;
  *&a4[v93] = v95;
  v96 = &a4[v64[18]];
  *v96 = a2;
  v96[4] = BYTE4(a2) & 1;
  return result;
}

double sub_1000294E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = sub_100006658(v5);

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v8;
  v52 = v7;

  v9 = String._bridgeToObjectiveC()();
  v10 = sub_100006658(v9);

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = String._bridgeToObjectiveC()();
  v15 = sub_100006658(v14);

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000BD050;
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  *(v19 + 48) = 0;
  *(v19 + 56) = 1;
  v20 = type metadata accessor for HomePodSetupViewModel(0);
  v21 = v20[6];
  v22 = type metadata accessor for AdjustedMovie(0);
  (*(*(v22 - 8) + 56))(&a3[v21], 1, 1, v22);
  sub_10004E01C(0, 0, &a3[v20[28]]);
  v23 = v20[58];
  v24 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v24 - 8) + 56))(&a3[v23], 1, 1, v24);
  v25 = &a3[v20[14]];
  *(v25 + 4) = 0;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v26 = String._bridgeToObjectiveC()();
  v27 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v54);
  *a3 = v52;
  *(a3 + 1) = v51;
  *(a3 + 2) = v11;
  *(a3 + 3) = v13;
  v29 = &a3[v20[7]];
  *v29 = 0;
  *(v29 + 1) = 0xE000000000000000;
  v30 = &a3[v20[8]];
  *v30 = 0;
  *(v30 + 1) = 0xE000000000000000;
  v31 = &a3[v20[9]];
  *v31 = 0;
  *(v31 + 1) = 0xE000000000000000;
  *&a3[v20[10]] = v19;
  *&a3[v20[11]] = _swiftEmptyArrayStorage;
  *&a3[v20[12]] = _swiftEmptyArrayStorage;
  *&a3[v20[13]] = _swiftEmptyArrayStorage;
  *&a3[v20[15]] = _swiftEmptyArrayStorage;
  *&a3[v20[16]] = _swiftEmptyArrayStorage;
  a3[v20[17]] = Int64 != 0;
  *&a3[v20[19]] = 1;
  v32 = &a3[v20[20]];
  v33 = v54[3];
  *(v32 + 2) = v54[2];
  *(v32 + 3) = v33;
  *(v32 + 4) = v54[4];
  v34 = v54[1];
  *v32 = v54[0];
  *(v32 + 1) = v34;
  v35 = &a3[v20[21]];
  *(v35 + 3) = 0u;
  *(v35 + 4) = 0u;
  *(v35 + 1) = 0u;
  *(v35 + 2) = 0u;
  *v35 = 0u;
  *&a3[v20[22]] = 0;
  *&a3[v20[23]] = 0;
  v36 = &a3[v20[24]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &a3[v20[25]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &a3[v20[26]];
  *v38 = 0;
  *(v38 + 1) = 0;
  a3[v20[27]] = 0;
  v40 = v20[29];
  v39 = v20[30];
  v41 = v20[31];
  v42 = &a3[v20[32]];
  *v42 = 0;
  v42[8] = 1;
  a3[v20[33]] = 0;
  a3[v20[34]] = 0;
  a3[v20[35]] = 0;
  *&a3[v20[36]] = 0;
  *&a3[v20[37]] = 0;
  v43 = &a3[v20[38]];
  *v43 = 0;
  *(v43 + 1) = 0xE000000000000000;
  a3[v20[39]] = 0;
  a3[v20[40]] = 0;
  *&a3[v20[41]] = 0;
  a3[v20[42]] = 0;
  a3[v20[43]] = 0;
  a3[v20[44]] = 0;
  v44 = &a3[v20[45]];
  *v44 = 0;
  *(v44 + 1) = 0xE000000000000000;
  a3[v20[46]] = 0;
  v45 = &a3[v20[47]];
  *v45 = 0;
  *(v45 + 1) = 0xE000000000000000;
  a3[v20[48]] = 0;
  v46 = &a3[v20[49]];
  *v46 = 0;
  *(v46 + 1) = 0;
  a3[v20[50]] = 0;
  *&a3[v20[51]] = 0;
  *&a3[v20[52]] = 0;
  v47 = &a3[v20[53]];
  *v47 = 0;
  *(v47 + 1) = 0;
  *&a3[v20[54]] = 0;
  v48 = &a3[v20[55]];
  *v48 = 0;
  *(v48 + 1) = 0xE000000000000000;
  *&a3[v20[56]] = 0;
  a3[v20[57]] = 1;
  a3[v40] = 1;
  result = dbl_1000BD080[*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode) == 5];
  *&v33 = qword_1000BD090[*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode) == 5];
  *&a3[v39] = result;
  *&a3[v41] = v33;
  v50 = &a3[v20[18]];
  *v50 = a2;
  v50[4] = BYTE4(a2) & 1;
  return result;
}

void sub_10002999C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_10000E6C4(&qword_100101FC0, &unk_1000BE590);
  __chkstk_darwin(v4 - 8);
  v65 = &v63 - v5;
  v6 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_forcedADPSoftwareUpdate);
  if (*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_showHomepodSoftwareUpdate) == 1)
  {
    v6 |= *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_isHomeInHH2);
  }

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
    v8 = sub_100006658(v7);

    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = String._bridgeToObjectiveC()();
    v12 = sub_100006658(v11);

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v16 = String._bridgeToObjectiveC()();
    v17 = sub_100006658(v16);

    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v18;

    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v19 = type metadata accessor for HomePodSetupViewModel(0);
  v20 = v19[6];
  v21 = type metadata accessor for AdjustedMovie(0);
  (*(*(v21 - 8) + 56))(&a2[v20], 1, 1, v21);
  sub_10003ACF0(a1);
  v23 = v22;
  sub_10004E01C(0, 0, &a2[v19[28]]);
  v24 = v19[58];
  v25 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  v26 = *(*(v25 - 8) + 56);
  v64 = v24;
  v26(&a2[v24], 1, 1, v25);
  v27 = &a2[v19[14]];
  *(v27 + 4) = 0;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  v28 = String._bridgeToObjectiveC()();
  v29 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v67);
  *a2 = v66;
  *(a2 + 1) = v10;
  *(a2 + 2) = v13;
  *(a2 + 3) = v15;
  v31 = &a2[v19[7]];
  *v31 = 0;
  *(v31 + 1) = 0xE000000000000000;
  v32 = &a2[v19[8]];
  *v32 = 0;
  *(v32 + 1) = 0xE000000000000000;
  v33 = &a2[v19[9]];
  *v33 = 0;
  *(v33 + 1) = 0xE000000000000000;
  *&a2[v19[10]] = v23;
  *&a2[v19[11]] = _swiftEmptyArrayStorage;
  *&a2[v19[12]] = _swiftEmptyArrayStorage;
  *&a2[v19[13]] = _swiftEmptyArrayStorage;
  *&a2[v19[15]] = _swiftEmptyArrayStorage;
  *&a2[v19[16]] = _swiftEmptyArrayStorage;
  a2[v19[17]] = Int64 != 0;
  v34 = &a2[v19[18]];
  *v34 = 0;
  v34[4] = 1;
  *&a2[v19[19]] = 1;
  v35 = &a2[v19[20]];
  v36 = v67[3];
  *(v35 + 2) = v67[2];
  *(v35 + 3) = v36;
  *(v35 + 4) = v67[4];
  v37 = v67[1];
  *v35 = v67[0];
  *(v35 + 1) = v37;
  v38 = &a2[v19[21]];
  *(v38 + 3) = 0u;
  *(v38 + 4) = 0u;
  *(v38 + 1) = 0u;
  *(v38 + 2) = 0u;
  *v38 = 0u;
  *&a2[v19[22]] = 0;
  *&a2[v19[23]] = 0;
  v39 = &a2[v19[24]];
  *v39 = 0;
  *(v39 + 1) = 0;
  v40 = &a2[v19[25]];
  *v40 = 0;
  *(v40 + 1) = 0;
  v41 = &a2[v19[26]];
  *v41 = 0;
  *(v41 + 1) = 0;
  a2[v19[27]] = 0;
  v42 = v19[29];
  a2[v42] = 0;
  v43 = v19[30];
  *&a2[v43] = 0;
  v44 = v19[31];
  *&a2[v44] = 0;
  v45 = &a2[v19[32]];
  *v45 = 0;
  v45[8] = 1;
  a2[v19[33]] = 0;
  a2[v19[34]] = 0;
  a2[v19[35]] = 0;
  *&a2[v19[36]] = 0;
  *&a2[v19[37]] = 0;
  v46 = &a2[v19[38]];
  *v46 = 0;
  *(v46 + 1) = 0xE000000000000000;
  a2[v19[39]] = 0;
  a2[v19[40]] = 0;
  *&a2[v19[41]] = 0;
  a2[v19[42]] = 0;
  a2[v19[43]] = 0;
  a2[v19[44]] = 0;
  v47 = &a2[v19[45]];
  *v47 = 0;
  *(v47 + 1) = 0xE000000000000000;
  a2[v19[46]] = 0;
  v48 = &a2[v19[47]];
  *v48 = 0;
  *(v48 + 1) = 0xE000000000000000;
  a2[v19[48]] = 0;
  v49 = &a2[v19[49]];
  *v49 = 0;
  *(v49 + 1) = 0;
  a2[v19[50]] = 0;
  *&a2[v19[51]] = 0;
  *&a2[v19[52]] = 0;
  v50 = &a2[v19[53]];
  *v50 = 0;
  *(v50 + 1) = 0;
  *&a2[v19[54]] = 0;
  v51 = &a2[v19[55]];
  *v51 = 0;
  *(v51 + 1) = 0xE000000000000000;
  *&a2[v19[56]] = 0;
  a2[v19[57]] = 0;
  v52 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode;
  if (*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode) == 5 && (*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoRole) & 0xFFFFFFFE) == 2)
  {
    if (qword_1001015F8 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100012AAC(v53, qword_100101EF0);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "createDoneViewModel creating stereo pair image for mini", v56, 2u);
    }

    v57 = v65;
    sub_1000379DC(a1, 0, 0, v65);
    sub_10003A9C0(v57, &a2[v64]);
  }

  else
  {
    if (qword_1001015F8 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100012AAC(v58, qword_100101EF0);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "createDoneViewModel useSoloHomePodConstraints set to true", v61, 2u);
    }

    a2[v42] = 1;
    v62 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoRole;
    *&a2[v43] = sub_10003AF8C(1, *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoRole), *(a1 + v52));
    *&a2[v44] = sub_10003AF8C(0, *(a1 + v62), *(a1 + v52));
  }
}

double sub_10002A0A0@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_errorCardType;
  v5 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_errorCardType);
  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v5 == 1)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = sub_100006658(v11);

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10003B588(v8, v10, 0, 1, v13, v15, 0, 2);
  }

  else if (IsAppleInternalBuild())
  {
    v17 = String._bridgeToObjectiveC()();
    v18 = sub_100006658(v17);

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000BB8E0;
    *(v16 + 32) = v8;
    *(v16 + 40) = v10;
    *(v16 + 48) = 0;
    *(v16 + 56) = 1;
    *(v16 + 64) = v19;
    *(v16 + 72) = v21;
    *(v16 + 80) = 1;
    *(v16 + 88) = 17;
  }

  else
  {
    sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000BD050;
    *(v16 + 32) = v8;
    *(v16 + 40) = v10;
    *(v16 + 48) = 0;
    *(v16 + 56) = 1;
  }

  v22 = String._bridgeToObjectiveC()();
  v23 = sub_100006658(v22);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000E6C4(&qword_100102388, qword_1000BE250);
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_status;
  v26 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_status);
  *(v24 + 16) = xmmword_1000BD050;
  *(v24 + 56) = &type metadata for Int32;
  *(v24 + 64) = &protocol witness table for Int32;
  *(v24 + 32) = v26;
  v27 = String.init(format:_:)();
  v84 = v28;
  v85 = v27;
  v88 = 0;
  v89 = 0xE000000000000000;
  if (IsAppleInternalBuild())
  {

    if (*(a1 + v4) == 1)
    {
      v29 = String._bridgeToObjectiveC()();
      v30 = sub_100006658(v29);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1000BD050;
      v32 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_errorSSID);
      v33 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_errorSSID + 8);
      *(v31 + 56) = &type metadata for String;
      *(v31 + 64) = sub_100039F8C();
      *(v31 + 32) = v32;
      *(v31 + 40) = v33;

      v34 = String.init(format:_:)();
      v36 = v35;

      v88 = v34;
      v89 = v36;
      v37 = v34 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v37 = 0;
      v36 = 0xE000000000000000;
    }

    v45 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_error);
    if (v45)
    {
      if ((v36 & 0x2000000000000000) != 0)
      {
        v37 = HIBYTE(v36) & 0xF;
      }

      if (v37)
      {
        v86[0]._countAndFlagsBits = 0x616E7265746E490ALL;
        v86[0]._object = 0xEB00000000203A6CLL;
      }

      else
      {
        v86[0]._countAndFlagsBits = 0x6C616E7265746E49;
        v86[0]._object = 0xEA0000000000203ALL;
      }

      v48 = [v45 description];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52._countAndFlagsBits = v49;
      v52._object = v51;
      String.append(_:)(v52);

      String.append(_:)(v86[0]);
    }

    else
    {
      if ((v36 & 0x2000000000000000) != 0)
      {
        v37 = HIBYTE(v36) & 0xF;
      }

      if (v37)
      {
        v46 = 0x616E7265746E490ALL;
        v47 = 0xEB00000000203A6CLL;
      }

      else
      {
        v46 = 0x6C616E7265746E49;
        v47 = 0xEA0000000000203ALL;
      }

      v86[0]._countAndFlagsBits = v46;
      v86[0]._object = v47;
      v87 = *(a1 + v25);
      v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v53);

      String.append(_:)(v86[0]);
    }
  }

  else if (*(a1 + v4) == 1)
  {
    v38 = String._bridgeToObjectiveC()();

    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1000BD050;
    v40 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_errorSSID);
    v41 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_errorSSID + 8);
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = sub_100039F8C();
    *(v39 + 32) = v40;
    *(v39 + 40) = v41;

    v42 = String.init(format:_:)();
    v44 = v43;

    v88 = v42;
    v89 = v44;
  }

  else
  {

    v88 = 0;
    v89 = 0xE000000000000000;
  }

  v55 = v88;
  v54 = v89;
  v56 = type metadata accessor for HomePodSetupViewModel(0);
  v57 = v56[6];
  v58 = type metadata accessor for AdjustedMovie(0);
  (*(*(v58 - 8) + 56))(&a2[v57], 1, 1, v58);
  sub_10004E01C(0, 0, &a2[v56[28]]);
  v59 = v56[58];
  v60 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v60 - 8) + 56))(&a2[v59], 1, 1, v60);
  v61 = &a2[v56[14]];
  *(v61 + 4) = 0;
  *v61 = 0u;
  *(v61 + 1) = 0u;
  v62 = String._bridgeToObjectiveC()();
  v63 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(&v86[0]._countAndFlagsBits);
  *a2 = v85;
  *(a2 + 1) = v84;
  *(a2 + 2) = v55;
  *(a2 + 3) = v54;
  v65 = &a2[v56[7]];
  *v65 = 0;
  *(v65 + 1) = 0xE000000000000000;
  v66 = &a2[v56[8]];
  *v66 = 0;
  *(v66 + 1) = 0xE000000000000000;
  v67 = &a2[v56[9]];
  *v67 = 0;
  *(v67 + 1) = 0xE000000000000000;
  *&a2[v56[10]] = v16;
  *&a2[v56[11]] = _swiftEmptyArrayStorage;
  *&a2[v56[12]] = _swiftEmptyArrayStorage;
  *&a2[v56[13]] = _swiftEmptyArrayStorage;
  *&a2[v56[15]] = _swiftEmptyArrayStorage;
  *&a2[v56[16]] = _swiftEmptyArrayStorage;
  a2[v56[17]] = Int64 != 0;
  v68 = &a2[v56[18]];
  *v68 = 0;
  v68[4] = 1;
  *&a2[v56[19]] = 1;
  v69 = &a2[v56[20]];
  v70 = v86[3];
  *(v69 + 2) = v86[2];
  *(v69 + 3) = v70;
  *(v69 + 4) = v86[4];
  v71 = v86[1];
  *v69 = v86[0];
  *(v69 + 1) = v71;
  v72 = &a2[v56[21]];
  result = 0.0;
  *(v72 + 3) = 0u;
  *(v72 + 4) = 0u;
  *(v72 + 1) = 0u;
  *(v72 + 2) = 0u;
  *v72 = 0u;
  *&a2[v56[22]] = 0;
  *&a2[v56[23]] = 0;
  v74 = &a2[v56[24]];
  *v74 = 0;
  *(v74 + 1) = 0;
  v75 = &a2[v56[25]];
  *v75 = 0;
  *(v75 + 1) = 0;
  v76 = &a2[v56[26]];
  *v76 = 0;
  *(v76 + 1) = 0;
  a2[v56[27]] = 0;
  a2[v56[29]] = 0;
  *&a2[v56[30]] = 0;
  *&a2[v56[31]] = 0;
  v77 = &a2[v56[32]];
  *v77 = 0;
  v77[8] = 1;
  a2[v56[33]] = 0;
  a2[v56[34]] = 0;
  a2[v56[35]] = 0;
  *&a2[v56[36]] = 0;
  *&a2[v56[37]] = 0;
  v78 = &a2[v56[38]];
  *v78 = 0;
  *(v78 + 1) = 0xE000000000000000;
  a2[v56[39]] = 0;
  a2[v56[40]] = 0;
  *&a2[v56[41]] = 0;
  a2[v56[42]] = 0;
  a2[v56[43]] = 0;
  a2[v56[44]] = 0;
  v79 = &a2[v56[45]];
  *v79 = 0;
  *(v79 + 1) = 0xE000000000000000;
  a2[v56[46]] = 0;
  v80 = &a2[v56[47]];
  *v80 = 0;
  *(v80 + 1) = 0xE000000000000000;
  a2[v56[48]] = 0;
  v81 = &a2[v56[49]];
  *v81 = 0;
  *(v81 + 1) = 0;
  a2[v56[50]] = 0;
  *&a2[v56[51]] = 0;
  *&a2[v56[52]] = 0;
  v82 = &a2[v56[53]];
  *v82 = 0;
  *(v82 + 1) = 0;
  *&a2[v56[54]] = 0;
  v83 = &a2[v56[55]];
  *v83 = 0;
  *(v83 + 1) = 0xE000000000000000;
  *&a2[v56[56]] = 0;
  a2[v56[57]] = 1;
  return result;
}

double sub_10002A9DC@<D0>(char *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100006658(v2);

  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = sub_100006658(v4);

  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = sub_10003A0C4();
  v7 = [objc_allocWithZone(PRXFeature) initWithTitle:v3 detailText:v5 icon:v6 tintColor:0 valueChangedBlock:0];

  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100006658(v8);

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = sub_100006658(v10);

  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  v12 = [objc_opt_self() mainScreen];
  [v12 scale];
  v14 = v13;

  v15 = objc_opt_self();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 _applicationIconImageForBundleIdentifier:v16 format:2 scale:v14];

  if (!v17)
  {
    v17 = [objc_allocWithZone(UIImage) init];
  }

  v18 = [objc_allocWithZone(PRXFeature) initWithTitle:v9 detailText:v11 icon:v17 tintColor:0 valueChangedBlock:0];

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000BD050;
  v20 = String._bridgeToObjectiveC()();
  v21 = sub_100006658(v20);

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  *(v19 + 32) = v22;
  *(v19 + 40) = v24;
  *(v19 + 48) = 0;
  *(v19 + 56) = 15;
  v25 = String._bridgeToObjectiveC()();
  v26 = sub_100006658(v25);

  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = type metadata accessor for HomePodSetupViewModel(0);
  v30 = v29[6];
  v31 = type metadata accessor for AdjustedMovie(0);
  (*(*(v31 - 8) + 56))(&a1[v30], 1, 1, v31);
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1000BD0A0;
  *(v32 + 32) = v7;
  *(v32 + 40) = v18;
  v33 = v29[28];
  v34 = type metadata accessor for AdjustedImage(0);
  (*(*(v34 - 8) + 56))(&a1[v33], 1, 1, v34);
  v35 = v29[58];
  v36 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v36 - 8) + 56))(&a1[v35], 1, 1, v36);
  v37 = &a1[v29[14]];
  *(v37 + 4) = 0;
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v38 = v7;
  v39 = v18;
  v40 = String._bridgeToObjectiveC()();
  v41 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v63);
  *a1 = v62;
  *(a1 + 1) = v28;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v43 = &a1[v29[7]];
  *v43 = 0;
  *(v43 + 1) = 0xE000000000000000;
  v44 = &a1[v29[8]];
  *v44 = 0;
  *(v44 + 1) = 0xE000000000000000;
  v45 = &a1[v29[9]];
  *v45 = 0;
  *(v45 + 1) = 0xE000000000000000;
  *&a1[v29[10]] = v19;
  *&a1[v29[11]] = _swiftEmptyArrayStorage;
  *&a1[v29[12]] = _swiftEmptyArrayStorage;
  *&a1[v29[13]] = _swiftEmptyArrayStorage;
  *&a1[v29[15]] = _swiftEmptyArrayStorage;
  *&a1[v29[16]] = v32;
  a1[v29[17]] = Int64 != 0;
  v46 = &a1[v29[18]];
  *v46 = 0;
  v46[4] = 1;
  *&a1[v29[19]] = 1;
  v47 = &a1[v29[20]];
  v48 = v63[3];
  *(v47 + 2) = v63[2];
  *(v47 + 3) = v48;
  *(v47 + 4) = v63[4];
  v49 = v63[1];
  *v47 = v63[0];
  *(v47 + 1) = v49;
  v50 = &a1[v29[21]];
  result = 0.0;
  *(v50 + 3) = 0u;
  *(v50 + 4) = 0u;
  *(v50 + 1) = 0u;
  *(v50 + 2) = 0u;
  *v50 = 0u;
  *&a1[v29[22]] = 0;
  *&a1[v29[23]] = 0;
  v52 = &a1[v29[24]];
  *v52 = 0;
  *(v52 + 1) = 0;
  v53 = &a1[v29[25]];
  *v53 = 0;
  *(v53 + 1) = 0;
  v54 = &a1[v29[26]];
  *v54 = 0;
  *(v54 + 1) = 0;
  a1[v29[27]] = 0;
  a1[v29[29]] = 0;
  *&a1[v29[30]] = 0;
  *&a1[v29[31]] = 0;
  v55 = &a1[v29[32]];
  *v55 = 0;
  v55[8] = 1;
  a1[v29[33]] = 0;
  a1[v29[34]] = 0;
  a1[v29[35]] = 0;
  *&a1[v29[36]] = 0;
  *&a1[v29[37]] = 0;
  v56 = &a1[v29[38]];
  *v56 = 0;
  *(v56 + 1) = 0xE000000000000000;
  a1[v29[39]] = 0;
  a1[v29[40]] = 0;
  *&a1[v29[41]] = 0;
  a1[v29[42]] = 0;
  a1[v29[43]] = 0;
  a1[v29[44]] = 0;
  v57 = &a1[v29[45]];
  *v57 = 0;
  *(v57 + 1) = 0xE000000000000000;
  a1[v29[46]] = 0;
  v58 = &a1[v29[47]];
  *v58 = 0;
  *(v58 + 1) = 0xE000000000000000;
  a1[v29[48]] = 0;
  v59 = &a1[v29[49]];
  *v59 = 0;
  *(v59 + 1) = 0;
  a1[v29[50]] = 0;
  *&a1[v29[51]] = 0;
  *&a1[v29[52]] = 0;
  v60 = &a1[v29[53]];
  *v60 = 0;
  *(v60 + 1) = 0;
  *&a1[v29[54]] = 0;
  v61 = &a1[v29[55]];
  *v61 = 0;
  *(v61 + 1) = 0xE000000000000000;
  *&a1[v29[56]] = 0;
  a1[v29[57]] = 1;
  return result;
}

double sub_10002B138@<D0>(char *a1@<X8>)
{
  v2 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  __chkstk_darwin(v2 - 8);
  v4 = &v62 - v3;
  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000BB8E0;
  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v5 + 32) = v8;
  *(v5 + 40) = v10;
  *(v5 + 48) = 0;
  *(v5 + 56) = 15;
  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v5 + 64) = v13;
  *(v5 + 72) = v15;
  *(v5 + 80) = 1;
  *(v5 + 88) = 2;
  v16 = String._bridgeToObjectiveC()();
  v17 = sub_100006658(v16);

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v19;
  v63 = v18;

  v20 = type metadata accessor for AdjustedMovie(0);
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  *(&v65 + 1) = &type metadata for AppleAccountFeatureFlags;
  *&v66 = sub_10003B774();
  isFeatureEnabled(_:)();
  sub_10000E70C(&v64);
  v21 = String._bridgeToObjectiveC()();
  v22 = sub_100006658(v21);

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000BCE00;
  v27 = [objc_opt_self() mainScreen];
  [v27 scale];
  v29 = v28;

  v30 = objc_opt_self();
  v31 = String._bridgeToObjectiveC()();
  v32 = [v30 _applicationIconImageForBundleIdentifier:v31 format:2 scale:v29];

  if (!v32)
  {
    v32 = [objc_allocWithZone(UIImage) init];
  }

  *(v26 + 32) = v32;
  v33 = type metadata accessor for HomePodSetupViewModel(0);
  v34 = v33[28];
  v35 = type metadata accessor for AdjustedImage(0);
  (*(*(v35 - 8) + 56))(&a1[v34], 1, 1, v35);
  v36 = v33[58];
  v37 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v37 - 8) + 56))(&a1[v36], 1, 1, v37);
  v38 = &a1[v33[14]];
  *(v38 + 4) = 0;
  *v38 = 0u;
  *(v38 + 1) = 0u;
  v39 = String._bridgeToObjectiveC()();
  v40 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(&v64);
  v42 = v62;
  *a1 = v63;
  *(a1 + 1) = v42;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  sub_10003B8EC(v4, &a1[v33[6]], &unk_100101FB0, &qword_1000BD128);
  v43 = &a1[v33[7]];
  *v43 = v23;
  *(v43 + 1) = v25;
  v44 = &a1[v33[8]];
  *v44 = 0;
  *(v44 + 1) = 0xE000000000000000;
  v45 = &a1[v33[9]];
  *v45 = 0;
  *(v45 + 1) = 0xE000000000000000;
  *&a1[v33[10]] = v5;
  *&a1[v33[11]] = v26;
  *&a1[v33[12]] = _swiftEmptyArrayStorage;
  *&a1[v33[13]] = _swiftEmptyArrayStorage;
  *&a1[v33[15]] = _swiftEmptyArrayStorage;
  *&a1[v33[16]] = _swiftEmptyArrayStorage;
  a1[v33[17]] = Int64 != 0;
  v46 = &a1[v33[18]];
  *v46 = 0;
  v46[4] = 1;
  *&a1[v33[19]] = 1;
  v47 = &a1[v33[20]];
  v48 = v67;
  *(v47 + 2) = v66;
  *(v47 + 3) = v48;
  *(v47 + 4) = v68;
  v49 = v65;
  *v47 = v64;
  *(v47 + 1) = v49;
  v50 = &a1[v33[21]];
  result = 0.0;
  *v50 = 0u;
  *(v50 + 1) = 0u;
  *(v50 + 2) = 0u;
  *(v50 + 3) = 0u;
  *(v50 + 4) = 0u;
  *&a1[v33[22]] = 0;
  *&a1[v33[23]] = 0;
  v52 = &a1[v33[24]];
  *v52 = 0;
  *(v52 + 1) = 0;
  v53 = &a1[v33[25]];
  *v53 = 0;
  *(v53 + 1) = 0;
  v54 = &a1[v33[26]];
  *v54 = 0;
  *(v54 + 1) = 0;
  a1[v33[27]] = 0;
  a1[v33[29]] = 0;
  *&a1[v33[30]] = 0;
  *&a1[v33[31]] = 0;
  v55 = &a1[v33[32]];
  *v55 = 0;
  v55[8] = 1;
  a1[v33[33]] = 0;
  a1[v33[34]] = 0;
  a1[v33[35]] = 0;
  *&a1[v33[36]] = 0;
  *&a1[v33[37]] = 0;
  v56 = &a1[v33[38]];
  *v56 = 0;
  *(v56 + 1) = 0xE000000000000000;
  a1[v33[39]] = 0;
  a1[v33[40]] = 0;
  *&a1[v33[41]] = 0;
  a1[v33[42]] = 0;
  a1[v33[43]] = 0;
  a1[v33[44]] = 0;
  v57 = &a1[v33[45]];
  *v57 = 0;
  *(v57 + 1) = 0xE000000000000000;
  a1[v33[46]] = 0;
  v58 = &a1[v33[47]];
  *v58 = 0;
  *(v58 + 1) = 0xE000000000000000;
  a1[v33[48]] = 0;
  v59 = &a1[v33[49]];
  *v59 = 0;
  *(v59 + 1) = 0;
  a1[v33[50]] = 0;
  *&a1[v33[51]] = 0;
  *&a1[v33[52]] = 0;
  v60 = &a1[v33[53]];
  *v60 = 0;
  *(v60 + 1) = 0;
  *&a1[v33[54]] = 0;
  v61 = &a1[v33[55]];
  *v61 = 0;
  *(v61 + 1) = 0xE000000000000000;
  *&a1[v33[56]] = 0;
  a1[v33[57]] = 1;
  return result;
}

double sub_10002B7F4@<D0>(char *a1@<X8>)
{
  SFDeviceClassCodeGet();
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100006658(v2);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v5;
  v74 = v4;

  v6 = [objc_opt_self() systemFontOfSize:60.0 weight:UIFontWeightRegular];
  v7 = objc_opt_self();
  v8 = [v7 configurationWithFont:v6];

  v9 = [objc_opt_self() orangeColor];
  v10 = [v7 configurationWithHierarchicalColor:v9];

  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() _systemImageNamed:v11];

  v72 = v8;
  v13 = [v12 imageByApplyingSymbolConfiguration:v8];

  v71 = v10;
  v14 = [v13 imageByApplyingSymbolConfiguration:v10];

  v15 = v14;
  if (!v14)
  {
    v15 = [objc_allocWithZone(UIImage) init];
  }

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000BB8E0;
  v70 = v14;
  v17 = String._bridgeToObjectiveC()();
  v18 = sub_100006658(v17);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  *(v16 + 48) = 0;
  *(v16 + 56) = 18;
  v22 = String._bridgeToObjectiveC()();
  v23 = sub_100006658(v22);

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  *(v16 + 64) = v24;
  *(v16 + 72) = v26;
  *(v16 + 80) = 1;
  *(v16 + 88) = 19;
  v27 = String._bridgeToObjectiveC()();
  v28 = sub_100006658(v27);

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v30;
  v69 = v29;

  v31 = type metadata accessor for HomePodSetupViewModel(0);
  v32 = v31[6];
  v33 = type metadata accessor for AdjustedMovie(0);
  (*(*(v33 - 8) + 56))(&a1[v32], 1, 1, v33);
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1000BCE00;
  *(v34 + 32) = v15;
  v35 = v15;
  v36 = String._bridgeToObjectiveC()();
  v37 = sub_100006658(v36);

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = v31[28];
  v42 = type metadata accessor for AdjustedImage(0);
  (*(*(v42 - 8) + 56))(&a1[v41], 1, 1, v42);
  v43 = v31[58];
  v44 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v44 - 8) + 56))(&a1[v43], 1, 1, v44);
  v45 = &a1[v31[14]];
  *(v45 + 4) = 0;
  *v45 = 0u;
  *(v45 + 1) = 0u;
  v46 = String._bridgeToObjectiveC()();
  v47 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v75);
  *a1 = v69;
  *(a1 + 1) = v68;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v49 = &a1[v31[7]];
  *v49 = v74;
  *(v49 + 1) = v73;
  v50 = &a1[v31[8]];
  *v50 = 0;
  *(v50 + 1) = 0xE000000000000000;
  v51 = &a1[v31[9]];
  *v51 = 0;
  *(v51 + 1) = 0xE000000000000000;
  *&a1[v31[10]] = v16;
  *&a1[v31[11]] = v34;
  *&a1[v31[12]] = _swiftEmptyArrayStorage;
  *&a1[v31[13]] = _swiftEmptyArrayStorage;
  *&a1[v31[15]] = _swiftEmptyArrayStorage;
  *&a1[v31[16]] = _swiftEmptyArrayStorage;
  a1[v31[17]] = Int64 != 0;
  v52 = &a1[v31[18]];
  *v52 = 0;
  v52[4] = 1;
  *&a1[v31[19]] = 1;
  v53 = &a1[v31[20]];
  v54 = v75[3];
  *(v53 + 2) = v75[2];
  *(v53 + 3) = v54;
  *(v53 + 4) = v75[4];
  v55 = v75[1];
  *v53 = v75[0];
  *(v53 + 1) = v55;
  v56 = &a1[v31[21]];
  result = 0.0;
  *(v56 + 3) = 0u;
  *(v56 + 4) = 0u;
  *(v56 + 1) = 0u;
  *(v56 + 2) = 0u;
  *v56 = 0u;
  *&a1[v31[22]] = 0;
  *&a1[v31[23]] = 0;
  v58 = &a1[v31[24]];
  *v58 = v38;
  *(v58 + 1) = v40;
  v59 = &a1[v31[25]];
  *v59 = 0xD000000000000025;
  *(v59 + 1) = 0x80000001000C2D30;
  v60 = &a1[v31[26]];
  *v60 = 0;
  *(v60 + 1) = 0;
  a1[v31[27]] = 0;
  a1[v31[29]] = 0;
  *&a1[v31[30]] = 0;
  *&a1[v31[31]] = 0;
  v61 = &a1[v31[32]];
  *v61 = 0;
  v61[8] = 1;
  a1[v31[33]] = 0;
  a1[v31[34]] = 0;
  a1[v31[35]] = 0;
  *&a1[v31[36]] = 0;
  *&a1[v31[37]] = 0;
  v62 = &a1[v31[38]];
  *v62 = 0;
  *(v62 + 1) = 0xE000000000000000;
  a1[v31[39]] = 0;
  a1[v31[40]] = 0;
  *&a1[v31[41]] = 0;
  a1[v31[42]] = 0;
  a1[v31[43]] = 0;
  a1[v31[44]] = 0;
  v63 = &a1[v31[45]];
  *v63 = 0;
  *(v63 + 1) = 0xE000000000000000;
  a1[v31[46]] = 0;
  v64 = &a1[v31[47]];
  *v64 = 0;
  *(v64 + 1) = 0xE000000000000000;
  a1[v31[48]] = 0;
  v65 = &a1[v31[49]];
  *v65 = 0;
  *(v65 + 1) = 0;
  a1[v31[50]] = 0;
  *&a1[v31[51]] = 0;
  *&a1[v31[52]] = 0;
  v66 = &a1[v31[53]];
  *v66 = 0;
  *(v66 + 1) = 0;
  *&a1[v31[54]] = 0;
  v67 = &a1[v31[55]];
  *v67 = 0;
  *(v67 + 1) = 0xE000000000000000;
  *&a1[v31[56]] = 0;
  a1[v31[57]] = 1;
  return result;
}

double sub_10002BF64@<D0>(char *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100006658(v2);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v5;
  v56 = v4;

  v6 = [objc_opt_self() mainScreen];
  [v6 scale];
  v8 = v7;

  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 _applicationIconImageForBundleIdentifier:v10 format:2 scale:v8];

  if (!v11)
  {
    v11 = [objc_allocWithZone(UIImage) init];
  }

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000BD050;
  v13 = String._bridgeToObjectiveC()();
  v14 = sub_100006658(v13);

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *(v12 + 32) = v15;
  *(v12 + 40) = v17;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  v18 = String._bridgeToObjectiveC()();
  v19 = sub_100006658(v18);

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = type metadata accessor for HomePodSetupViewModel(0);
  v24 = v23[6];
  v25 = type metadata accessor for AdjustedMovie(0);
  (*(*(v25 - 8) + 56))(&a1[v24], 1, 1, v25);
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000BCE00;
  *(v26 + 32) = v11;
  v27 = v23[28];
  v28 = type metadata accessor for AdjustedImage(0);
  (*(*(v28 - 8) + 56))(&a1[v27], 1, 1, v28);
  v29 = v23[58];
  v30 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v30 - 8) + 56))(&a1[v29], 1, 1, v30);
  v31 = &a1[v23[14]];
  *(v31 + 4) = 0;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v32 = v11;
  v33 = String._bridgeToObjectiveC()();
  v34 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v57);
  *a1 = v20;
  *(a1 + 1) = v22;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v36 = &a1[v23[7]];
  *v36 = v56;
  v36[1] = v55;
  v37 = &a1[v23[8]];
  *v37 = 0;
  *(v37 + 1) = 0xE000000000000000;
  v38 = &a1[v23[9]];
  *v38 = 0;
  *(v38 + 1) = 0xE000000000000000;
  *&a1[v23[10]] = v12;
  *&a1[v23[11]] = v26;
  *&a1[v23[12]] = _swiftEmptyArrayStorage;
  *&a1[v23[13]] = _swiftEmptyArrayStorage;
  *&a1[v23[15]] = _swiftEmptyArrayStorage;
  *&a1[v23[16]] = _swiftEmptyArrayStorage;
  a1[v23[17]] = Int64 != 0;
  v39 = &a1[v23[18]];
  *v39 = 0;
  v39[4] = 1;
  *&a1[v23[19]] = 1;
  v40 = &a1[v23[20]];
  v41 = v57[3];
  *(v40 + 2) = v57[2];
  *(v40 + 3) = v41;
  *(v40 + 4) = v57[4];
  v42 = v57[1];
  *v40 = v57[0];
  *(v40 + 1) = v42;
  v43 = &a1[v23[21]];
  result = 0.0;
  *(v43 + 3) = 0u;
  *(v43 + 4) = 0u;
  *(v43 + 1) = 0u;
  *(v43 + 2) = 0u;
  *v43 = 0u;
  *&a1[v23[22]] = 0;
  *&a1[v23[23]] = 0;
  v45 = &a1[v23[24]];
  *v45 = 0;
  *(v45 + 1) = 0;
  v46 = &a1[v23[25]];
  *v46 = 0;
  *(v46 + 1) = 0;
  v47 = &a1[v23[26]];
  *v47 = 0;
  *(v47 + 1) = 0;
  a1[v23[27]] = 0;
  a1[v23[29]] = 0;
  *&a1[v23[30]] = 0;
  *&a1[v23[31]] = 0;
  v48 = &a1[v23[32]];
  *v48 = 0;
  v48[8] = 1;
  a1[v23[33]] = 0;
  a1[v23[34]] = 0;
  a1[v23[35]] = 0;
  *&a1[v23[36]] = 0;
  *&a1[v23[37]] = 0;
  v49 = &a1[v23[38]];
  *v49 = 0;
  *(v49 + 1) = 0xE000000000000000;
  a1[v23[39]] = 0;
  a1[v23[40]] = 0;
  *&a1[v23[41]] = 0;
  a1[v23[42]] = 0;
  a1[v23[43]] = 0;
  a1[v23[44]] = 0;
  v50 = &a1[v23[45]];
  *v50 = 0;
  *(v50 + 1) = 0xE000000000000000;
  a1[v23[46]] = 0;
  v51 = &a1[v23[47]];
  *v51 = 0;
  *(v51 + 1) = 0xE000000000000000;
  a1[v23[48]] = 0;
  v52 = &a1[v23[49]];
  *v52 = 0;
  *(v52 + 1) = 0;
  a1[v23[50]] = 0;
  *&a1[v23[51]] = 0;
  *&a1[v23[52]] = 0;
  v53 = &a1[v23[53]];
  *v53 = 0;
  *(v53 + 1) = 0;
  *&a1[v23[54]] = 0;
  v54 = &a1[v23[55]];
  *v54 = 0;
  *(v54 + 1) = 0xE000000000000000;
  *&a1[v23[56]] = 0;
  a1[v23[57]] = 1;
  return result;
}

double sub_10002C520@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v57 = a1;
  v3 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  __chkstk_darwin(v3 - 8);
  v5 = &v56 - v4;
  v6 = sub_10003B7C8();
  v7 = String._bridgeToObjectiveC()();
  v8 = sub_100006658(v7);

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v10;
  v61 = v9;

  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v14;
  v59 = v13;

  v15 = type metadata accessor for AdjustedMovie(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = String._bridgeToObjectiveC()();
  v17 = sub_100006658(v16);

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000BD050;
  *(v21 + 32) = v18;
  *(v21 + 40) = v20;
  *(v21 + 48) = 0;
  *(v21 + 56) = 1;
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000BCE00;
  *(v22 + 32) = v6;
  v23 = qword_100101608;
  v24 = v6;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = 1;
  if (!*(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testFlags))
  {
    v25 = *(v57 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 8) != 0;
  }

  v26 = type metadata accessor for HomePodSetupViewModel(0);
  v27 = v26[28];
  v28 = type metadata accessor for AdjustedImage(0);
  (*(*(v28 - 8) + 56))(&a2[v27], 1, 1, v28);
  v29 = v26[58];
  v30 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v30 - 8) + 56))(&a2[v29], 1, 1, v30);
  v31 = &a2[v26[14]];
  *(v31 + 4) = 0;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v32 = String._bridgeToObjectiveC()();
  v33 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v62);
  v35 = v60;
  *a2 = v61;
  *(a2 + 1) = v35;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  sub_10003B8EC(v5, &a2[v26[6]], &unk_100101FB0, &qword_1000BD128);
  v36 = &a2[v26[7]];
  v37 = v58;
  *v36 = v59;
  *(v36 + 1) = v37;
  v38 = &a2[v26[8]];
  *v38 = 0;
  *(v38 + 1) = 0xE000000000000000;
  v39 = &a2[v26[9]];
  *v39 = 0;
  *(v39 + 1) = 0xE000000000000000;
  *&a2[v26[10]] = v21;
  *&a2[v26[11]] = v22;
  *&a2[v26[12]] = _swiftEmptyArrayStorage;
  *&a2[v26[13]] = _swiftEmptyArrayStorage;
  *&a2[v26[15]] = _swiftEmptyArrayStorage;
  *&a2[v26[16]] = _swiftEmptyArrayStorage;
  a2[v26[17]] = Int64 != 0;
  v40 = &a2[v26[18]];
  *v40 = 0;
  v40[4] = 1;
  *&a2[v26[19]] = 1;
  v41 = &a2[v26[20]];
  v42 = v62[3];
  *(v41 + 2) = v62[2];
  *(v41 + 3) = v42;
  *(v41 + 4) = v62[4];
  v43 = v62[1];
  *v41 = v62[0];
  *(v41 + 1) = v43;
  v44 = &a2[v26[21]];
  result = 0.0;
  *v44 = 0u;
  *(v44 + 1) = 0u;
  *(v44 + 2) = 0u;
  *(v44 + 3) = 0u;
  *(v44 + 4) = 0u;
  *&a2[v26[22]] = 0;
  *&a2[v26[23]] = 0;
  v46 = &a2[v26[24]];
  *v46 = 0;
  *(v46 + 1) = 0;
  v47 = &a2[v26[25]];
  *v47 = 0;
  *(v47 + 1) = 0;
  v48 = &a2[v26[26]];
  *v48 = 0;
  *(v48 + 1) = 0;
  a2[v26[27]] = v25;
  a2[v26[29]] = 0;
  *&a2[v26[30]] = 0;
  *&a2[v26[31]] = 0;
  v49 = &a2[v26[32]];
  *v49 = 0;
  v49[8] = 1;
  a2[v26[33]] = 0;
  a2[v26[34]] = 0;
  a2[v26[35]] = 0;
  *&a2[v26[36]] = 0;
  *&a2[v26[37]] = 0;
  v50 = &a2[v26[38]];
  *v50 = 0;
  *(v50 + 1) = 0xE000000000000000;
  a2[v26[39]] = 0;
  a2[v26[40]] = 0;
  *&a2[v26[41]] = 0;
  a2[v26[42]] = 0;
  a2[v26[43]] = 0;
  a2[v26[44]] = 0;
  v51 = &a2[v26[45]];
  *v51 = 0;
  *(v51 + 1) = 0xE000000000000000;
  a2[v26[46]] = 0;
  v52 = &a2[v26[47]];
  *v52 = 0;
  *(v52 + 1) = 0xE000000000000000;
  a2[v26[48]] = 0;
  v53 = &a2[v26[49]];
  *v53 = 0;
  *(v53 + 1) = 0;
  a2[v26[50]] = 0;
  *&a2[v26[51]] = 0;
  *&a2[v26[52]] = 0;
  v54 = &a2[v26[53]];
  *v54 = 0;
  *(v54 + 1) = 0;
  *&a2[v26[54]] = 0;
  v55 = &a2[v26[55]];
  *v55 = 0;
  *(v55 + 1) = 0xE000000000000000;
  *&a2[v26[56]] = 0;
  a2[v26[57]] = 1;
  return result;
}

double sub_10002CAF8@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  __chkstk_darwin(v4 - 8);
  v6 = &v57 - v5;
  v7 = sub_10003B7C8();
  v8 = WiFiCopyCurrentNetworkInfo();
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *&v62[0] = 0;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

      if (*&v62[0])
      {
      }
    }

    else
    {
    }
  }

  sub_10000E6C4(&qword_100102388, qword_1000BE250);
  inited = swift_initStackObject();
  v57 = xmmword_1000BD050;
  *(inited + 16) = xmmword_1000BD050;
  v12 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSSID);
  v11 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSSID + 8);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_100039F8C();
  *(inited + 32) = v12;
  *(inited + 40) = v11;
  *&v62[0] = 0;
  *(&v62[0] + 1) = 0xE000000000000000;

  sub_100038F50(inited, v62, 0xD000000000000024, 0x80000001000C2E90, 16421, 0xE200000000000000);
  swift_setDeallocating();
  sub_10000E6C4(&qword_1001023D8, &unk_1000BD290);
  swift_arrayDestroy();
  v60 = *(&v62[0] + 1);
  v61 = *&v62[0];
  v13 = String._bridgeToObjectiveC()();
  v14 = sub_100006658(v13);

  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v15;

  v16 = type metadata accessor for AdjustedMovie(0);
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = String._bridgeToObjectiveC()();
  v18 = sub_100006658(v17);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v22 = swift_allocObject();
  *(v22 + 16) = v57;
  *(v22 + 32) = v19;
  *(v22 + 40) = v21;
  *(v22 + 48) = 0;
  *(v22 + 56) = 1;
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000BCE00;
  *(v23 + 32) = v7;
  v24 = qword_100101608;
  v25 = v7;
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = 1;
  if (!*(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testFlags))
  {
    v26 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 8) != 0;
  }

  v27 = type metadata accessor for HomePodSetupViewModel(0);
  v28 = v27[28];
  v29 = type metadata accessor for AdjustedImage(0);
  (*(*(v29 - 8) + 56))(&a2[v28], 1, 1, v29);
  v30 = v27[58];
  v31 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v31 - 8) + 56))(&a2[v30], 1, 1, v31);
  v32 = &a2[v27[14]];
  *(v32 + 4) = 0;
  *v32 = 0u;
  *(v32 + 1) = 0u;
  v33 = String._bridgeToObjectiveC()();
  v34 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v62);
  v36 = v58;
  *a2 = v59;
  *(a2 + 1) = v36;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  sub_10003B8EC(v6, &a2[v27[6]], &unk_100101FB0, &qword_1000BD128);
  v37 = &a2[v27[7]];
  v38 = v60;
  *v37 = v61;
  *(v37 + 1) = v38;
  v39 = &a2[v27[8]];
  *v39 = 0;
  *(v39 + 1) = 0xE000000000000000;
  v40 = &a2[v27[9]];
  *v40 = 0;
  *(v40 + 1) = 0xE000000000000000;
  *&a2[v27[10]] = v22;
  *&a2[v27[11]] = v23;
  *&a2[v27[12]] = _swiftEmptyArrayStorage;
  *&a2[v27[13]] = _swiftEmptyArrayStorage;
  *&a2[v27[15]] = _swiftEmptyArrayStorage;
  *&a2[v27[16]] = _swiftEmptyArrayStorage;
  a2[v27[17]] = Int64 != 0;
  v41 = &a2[v27[18]];
  *v41 = 0;
  v41[4] = 1;
  *&a2[v27[19]] = 1;
  v42 = &a2[v27[20]];
  v43 = v62[3];
  *(v42 + 2) = v62[2];
  *(v42 + 3) = v43;
  *(v42 + 4) = v62[4];
  v44 = v62[1];
  *v42 = v62[0];
  *(v42 + 1) = v44;
  v45 = &a2[v27[21]];
  result = 0.0;
  *v45 = 0u;
  *(v45 + 1) = 0u;
  *(v45 + 2) = 0u;
  *(v45 + 3) = 0u;
  *(v45 + 4) = 0u;
  *&a2[v27[22]] = 0;
  *&a2[v27[23]] = 0;
  v47 = &a2[v27[24]];
  *v47 = 0;
  *(v47 + 1) = 0;
  v48 = &a2[v27[25]];
  *v48 = 0;
  *(v48 + 1) = 0;
  v49 = &a2[v27[26]];
  *v49 = 0;
  *(v49 + 1) = 0;
  a2[v27[27]] = v26;
  a2[v27[29]] = 0;
  *&a2[v27[30]] = 0;
  *&a2[v27[31]] = 0;
  v50 = &a2[v27[32]];
  *v50 = 0;
  v50[8] = 1;
  a2[v27[33]] = 0;
  a2[v27[34]] = 0;
  a2[v27[35]] = 0;
  *&a2[v27[36]] = 0;
  *&a2[v27[37]] = 0;
  v51 = &a2[v27[38]];
  *v51 = 0;
  *(v51 + 1) = 0xE000000000000000;
  a2[v27[39]] = 0;
  a2[v27[40]] = 0;
  *&a2[v27[41]] = 0;
  a2[v27[42]] = 0;
  a2[v27[43]] = 0;
  a2[v27[44]] = 0;
  v52 = &a2[v27[45]];
  *v52 = 0;
  *(v52 + 1) = 0xE000000000000000;
  a2[v27[46]] = 0;
  v53 = &a2[v27[47]];
  *v53 = 0;
  *(v53 + 1) = 0xE000000000000000;
  a2[v27[48]] = 0;
  v54 = &a2[v27[49]];
  *v54 = 0;
  *(v54 + 1) = 0;
  a2[v27[50]] = 0;
  *&a2[v27[51]] = 0;
  *&a2[v27[52]] = 0;
  v55 = &a2[v27[53]];
  *v55 = 0;
  *(v55 + 1) = 0;
  *&a2[v27[54]] = 0;
  v56 = &a2[v27[55]];
  *v56 = 0;
  *(v56 + 1) = 0xE000000000000000;
  *&a2[v27[56]] = 0;
  a2[v27[57]] = 1;
  return result;
}

double sub_10002D1F0@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  __chkstk_darwin(v4 - 8);
  v6 = &v63 - v5;
  v7 = String._bridgeToObjectiveC()();
  v8 = sub_100006658(v7);

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v10;
  v69 = v9;

  v11 = sub_10003B7C8();
  v12 = String._bridgeToObjectiveC()();
  v13 = sub_1000068E0();

  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  v14 = sub_100006658(v13);

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v16;
  v67 = v15;

  v17 = type metadata accessor for AdjustedMovie(0);
  v18 = *(*(v17 - 8) + 56);
  v70 = v6;
  v18(v6, 1, 1, v17);
  v19 = String._bridgeToObjectiveC()();
  v20 = sub_100006658(v19);

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000BD050;
  *(v24 + 32) = v21;
  *(v24 + 40) = v23;
  *(v24 + 48) = 0;
  *(v24 + 56) = 1;
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000BCE00;
  *(v25 + 32) = v11;
  v26 = v11;
  v27 = String._bridgeToObjectiveC()();
  v28 = sub_100006658(v27);

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v30;
  v65 = v29;

  if (qword_100101608 != -1)
  {
    swift_once();
  }

  v31 = 1;
  if (!*(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testFlags))
  {
    v31 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 8) != 0;
  }

  v32 = type metadata accessor for HomePodSetupViewModel(0);
  v33 = v32[28];
  v34 = type metadata accessor for AdjustedImage(0);
  (*(*(v34 - 8) + 56))(&a2[v33], 1, 1, v34);
  v35 = v32[58];
  v36 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v36 - 8) + 56))(&a2[v35], 1, 1, v36);
  v37 = &a2[v32[14]];
  *(v37 + 4) = 0;
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v38 = String._bridgeToObjectiveC()();
  v39 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v71);
  v41 = v68;
  *a2 = v69;
  *(a2 + 1) = v41;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  sub_10003B8EC(v70, &a2[v32[6]], &unk_100101FB0, &qword_1000BD128);
  v42 = &a2[v32[7]];
  v43 = v66;
  *v42 = v67;
  *(v42 + 1) = v43;
  v44 = &a2[v32[8]];
  *v44 = 0;
  *(v44 + 1) = 0xE000000000000000;
  v45 = &a2[v32[9]];
  *v45 = 0;
  *(v45 + 1) = 0xE000000000000000;
  *&a2[v32[10]] = v24;
  *&a2[v32[11]] = v25;
  *&a2[v32[12]] = _swiftEmptyArrayStorage;
  *&a2[v32[13]] = _swiftEmptyArrayStorage;
  *&a2[v32[15]] = _swiftEmptyArrayStorage;
  *&a2[v32[16]] = _swiftEmptyArrayStorage;
  a2[v32[17]] = Int64 != 0;
  v46 = &a2[v32[18]];
  *v46 = 0;
  v46[4] = 1;
  *&a2[v32[19]] = 1;
  v47 = &a2[v32[20]];
  v48 = v71[3];
  *(v47 + 2) = v71[2];
  *(v47 + 3) = v48;
  *(v47 + 4) = v71[4];
  v49 = v71[1];
  *v47 = v71[0];
  *(v47 + 1) = v49;
  v50 = &a2[v32[21]];
  result = 0.0;
  *v50 = 0u;
  *(v50 + 1) = 0u;
  *(v50 + 2) = 0u;
  *(v50 + 3) = 0u;
  *(v50 + 4) = 0u;
  *&a2[v32[22]] = 0;
  *&a2[v32[23]] = 0;
  v52 = &a2[v32[24]];
  v53 = v64;
  *v52 = v65;
  *(v52 + 1) = v53;
  v54 = &a2[v32[25]];
  *v54 = 0;
  *(v54 + 1) = 0;
  v55 = &a2[v32[26]];
  *v55 = 0xD000000000000025;
  *(v55 + 1) = 0x80000001000C2F30;
  a2[v32[27]] = v31;
  a2[v32[29]] = 0;
  *&a2[v32[30]] = 0;
  *&a2[v32[31]] = 0;
  v56 = &a2[v32[32]];
  *v56 = 0;
  v56[8] = 1;
  a2[v32[33]] = 0;
  a2[v32[34]] = 0;
  a2[v32[35]] = 0;
  *&a2[v32[36]] = 0;
  *&a2[v32[37]] = 0;
  v57 = &a2[v32[38]];
  *v57 = 0;
  *(v57 + 1) = 0xE000000000000000;
  a2[v32[39]] = 0;
  a2[v32[40]] = 0;
  *&a2[v32[41]] = 0;
  a2[v32[42]] = 0;
  a2[v32[43]] = 0;
  a2[v32[44]] = 0;
  v58 = &a2[v32[45]];
  *v58 = 0;
  *(v58 + 1) = 0xE000000000000000;
  a2[v32[46]] = 0;
  v59 = &a2[v32[47]];
  *v59 = 0;
  *(v59 + 1) = 0xE000000000000000;
  a2[v32[48]] = 0;
  v60 = &a2[v32[49]];
  *v60 = 0;
  *(v60 + 1) = 0;
  a2[v32[50]] = 0;
  *&a2[v32[51]] = 0;
  *&a2[v32[52]] = 0;
  v61 = &a2[v32[53]];
  *v61 = 0;
  *(v61 + 1) = 0;
  *&a2[v32[54]] = 0;
  v62 = &a2[v32[55]];
  *v62 = 0;
  *(v62 + 1) = 0xE000000000000000;
  *&a2[v32[56]] = 0;
  a2[v32[57]] = 1;
  return result;
}

double sub_10002D894@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  __chkstk_darwin(v4 - 8);
  v6 = &v63 - v5;
  v7 = sub_10003B7C8();
  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100006658(v8);

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v11;
  v69 = v10;

  v12 = String._bridgeToObjectiveC()();
  v13 = sub_1000068E0();

  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  v14 = sub_100006658(v13);

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v16;
  v67 = v15;

  v17 = type metadata accessor for AdjustedMovie(0);
  v18 = *(*(v17 - 8) + 56);
  v70 = v6;
  v18(v6, 1, 1, v17);
  v19 = String._bridgeToObjectiveC()();
  v20 = sub_100006658(v19);

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000BD050;
  *(v24 + 32) = v21;
  *(v24 + 40) = v23;
  *(v24 + 48) = 0;
  *(v24 + 56) = 1;
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000BCE00;
  *(v25 + 32) = v7;
  v26 = v7;
  v27 = String._bridgeToObjectiveC()();
  v28 = sub_100006658(v27);

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v30;
  v65 = v29;

  if (qword_100101608 != -1)
  {
    swift_once();
  }

  v31 = 1;
  if (!*(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_testFlags))
  {
    v31 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 8) != 0;
  }

  v32 = type metadata accessor for HomePodSetupViewModel(0);
  v33 = v32[28];
  v34 = type metadata accessor for AdjustedImage(0);
  (*(*(v34 - 8) + 56))(&a2[v33], 1, 1, v34);
  v35 = v32[58];
  v36 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v36 - 8) + 56))(&a2[v35], 1, 1, v36);
  v37 = &a2[v32[14]];
  *(v37 + 4) = 0;
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v38 = String._bridgeToObjectiveC()();
  v39 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v71);
  v41 = v68;
  *a2 = v69;
  *(a2 + 1) = v41;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  sub_10003B8EC(v70, &a2[v32[6]], &unk_100101FB0, &qword_1000BD128);
  v42 = &a2[v32[7]];
  v43 = v66;
  *v42 = v67;
  *(v42 + 1) = v43;
  v44 = &a2[v32[8]];
  *v44 = 0;
  *(v44 + 1) = 0xE000000000000000;
  v45 = &a2[v32[9]];
  *v45 = 0;
  *(v45 + 1) = 0xE000000000000000;
  *&a2[v32[10]] = v24;
  *&a2[v32[11]] = v25;
  *&a2[v32[12]] = _swiftEmptyArrayStorage;
  *&a2[v32[13]] = _swiftEmptyArrayStorage;
  *&a2[v32[15]] = _swiftEmptyArrayStorage;
  *&a2[v32[16]] = _swiftEmptyArrayStorage;
  a2[v32[17]] = Int64 != 0;
  v46 = &a2[v32[18]];
  *v46 = 0;
  v46[4] = 1;
  *&a2[v32[19]] = 1;
  v47 = &a2[v32[20]];
  v48 = v71[3];
  *(v47 + 2) = v71[2];
  *(v47 + 3) = v48;
  *(v47 + 4) = v71[4];
  v49 = v71[1];
  *v47 = v71[0];
  *(v47 + 1) = v49;
  v50 = &a2[v32[21]];
  result = 0.0;
  *v50 = 0u;
  *(v50 + 1) = 0u;
  *(v50 + 2) = 0u;
  *(v50 + 3) = 0u;
  *(v50 + 4) = 0u;
  *&a2[v32[22]] = 0;
  *&a2[v32[23]] = 0;
  v52 = &a2[v32[24]];
  v53 = v64;
  *v52 = v65;
  *(v52 + 1) = v53;
  v54 = &a2[v32[25]];
  *v54 = 0;
  *(v54 + 1) = 0;
  v55 = &a2[v32[26]];
  *v55 = 0xD000000000000025;
  *(v55 + 1) = 0x80000001000C2F30;
  a2[v32[27]] = v31;
  a2[v32[29]] = 0;
  *&a2[v32[30]] = 0;
  *&a2[v32[31]] = 0;
  v56 = &a2[v32[32]];
  *v56 = 0;
  v56[8] = 1;
  a2[v32[33]] = 0;
  a2[v32[34]] = 0;
  a2[v32[35]] = 0;
  *&a2[v32[36]] = 0;
  *&a2[v32[37]] = 0;
  v57 = &a2[v32[38]];
  *v57 = 0;
  *(v57 + 1) = 0xE000000000000000;
  a2[v32[39]] = 0;
  a2[v32[40]] = 0;
  *&a2[v32[41]] = 0;
  a2[v32[42]] = 0;
  a2[v32[43]] = 0;
  a2[v32[44]] = 0;
  v58 = &a2[v32[45]];
  *v58 = 0;
  *(v58 + 1) = 0xE000000000000000;
  a2[v32[46]] = 0;
  v59 = &a2[v32[47]];
  *v59 = 0;
  *(v59 + 1) = 0xE000000000000000;
  a2[v32[48]] = 0;
  v60 = &a2[v32[49]];
  *v60 = 0;
  *(v60 + 1) = 0;
  a2[v32[50]] = 0;
  *&a2[v32[51]] = 0;
  *&a2[v32[52]] = 0;
  v61 = &a2[v32[53]];
  *v61 = 0;
  *(v61 + 1) = 0;
  *&a2[v32[54]] = 0;
  v62 = &a2[v32[55]];
  *v62 = 0;
  *(v62 + 1) = 0xE000000000000000;
  *&a2[v32[56]] = 0;
  a2[v32[57]] = 1;
  return result;
}

double sub_10002DF08@<D0>(char *a2@<X8>)
{
  v3 = sub_10003B7C8();
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_100006658(v4);

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v7;
  v64 = v6;

  sub_10000E6C4(&qword_100102388, qword_1000BE250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD050;
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 localizedModel];

  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  v11 = sub_100006658(v10);

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_100039F8C();
  *(inited + 32) = v12;
  *(inited + 40) = v14;
  *&v65[0] = 0;
  *(&v65[0] + 1) = 0xE000000000000000;
  sub_100038F50(inited, v65, 0xD00000000000001BLL, 0x80000001000C2FC0, 16421, 0xE200000000000000);
  swift_setDeallocating();
  sub_10000E6C4(&qword_1001023D8, &unk_1000BD290);
  swift_arrayDestroy();
  v61 = *(&v65[0] + 1);
  v62 = *&v65[0];
  v15 = String._bridgeToObjectiveC()();
  v16 = sub_100006658(v15);

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000BD050;
  *(v20 + 32) = v17;
  *(v20 + 40) = v19;
  *(v20 + 48) = 0;
  *(v20 + 56) = 1;
  v21 = String._bridgeToObjectiveC()();
  v22 = sub_100006658(v21);

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v27 = *(v20 + 16);
  v26 = *(v20 + 24);
  if (v27 >= v26 >> 1)
  {
    v20 = sub_1000535F8((v26 > 1), v27 + 1, 1, v20);
  }

  *(v20 + 16) = v27 + 1;
  v28 = v20 + 32 * v27;
  *(v28 + 32) = v23;
  *(v28 + 40) = v25;
  *(v28 + 48) = 1;
  *(v28 + 56) = 25;
  v29 = type metadata accessor for HomePodSetupViewModel(0);
  v30 = v29[6];
  v31 = type metadata accessor for AdjustedMovie(0);
  (*(*(v31 - 8) + 56))(&a2[v30], 1, 1, v31);
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1000BCE00;
  *(v32 + 32) = v3;
  v33 = v29[28];
  v34 = type metadata accessor for AdjustedImage(0);
  (*(*(v34 - 8) + 56))(&a2[v33], 1, 1, v34);
  v35 = v29[58];
  v36 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v36 - 8) + 56))(&a2[v35], 1, 1, v36);
  v37 = &a2[v29[14]];
  *(v37 + 4) = 0;
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v38 = v3;
  v39 = String._bridgeToObjectiveC()();
  v40 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v65);
  *a2 = v64;
  *(a2 + 1) = v63;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v42 = &a2[v29[7]];
  *v42 = v62;
  *(v42 + 1) = v61;
  v43 = &a2[v29[8]];
  *v43 = 0;
  *(v43 + 1) = 0xE000000000000000;
  v44 = &a2[v29[9]];
  *v44 = 0;
  *(v44 + 1) = 0xE000000000000000;
  *&a2[v29[10]] = v20;
  *&a2[v29[11]] = v32;
  *&a2[v29[12]] = _swiftEmptyArrayStorage;
  *&a2[v29[13]] = _swiftEmptyArrayStorage;
  *&a2[v29[15]] = _swiftEmptyArrayStorage;
  *&a2[v29[16]] = _swiftEmptyArrayStorage;
  a2[v29[17]] = Int64 != 0;
  v45 = &a2[v29[18]];
  *v45 = 0;
  v45[4] = 1;
  *&a2[v29[19]] = 1;
  v46 = &a2[v29[20]];
  v47 = v65[3];
  *(v46 + 2) = v65[2];
  *(v46 + 3) = v47;
  *(v46 + 4) = v65[4];
  v48 = v65[1];
  *v46 = v65[0];
  *(v46 + 1) = v48;
  v49 = &a2[v29[21]];
  result = 0.0;
  *(v49 + 3) = 0u;
  *(v49 + 4) = 0u;
  *(v49 + 1) = 0u;
  *(v49 + 2) = 0u;
  *v49 = 0u;
  *&a2[v29[22]] = 0;
  *&a2[v29[23]] = 0;
  v51 = &a2[v29[24]];
  *v51 = 0;
  *(v51 + 1) = 0;
  v52 = &a2[v29[25]];
  *v52 = 0;
  *(v52 + 1) = 0;
  v53 = &a2[v29[26]];
  *v53 = 0;
  *(v53 + 1) = 0;
  a2[v29[27]] = 0;
  a2[v29[29]] = 0;
  *&a2[v29[30]] = 0;
  *&a2[v29[31]] = 0;
  v54 = &a2[v29[32]];
  *v54 = 0;
  v54[8] = 1;
  a2[v29[33]] = 0;
  a2[v29[34]] = 0;
  a2[v29[35]] = 0;
  *&a2[v29[36]] = 0;
  *&a2[v29[37]] = 0;
  v55 = &a2[v29[38]];
  *v55 = 0;
  *(v55 + 1) = 0xE000000000000000;
  a2[v29[39]] = 0;
  a2[v29[40]] = 0;
  *&a2[v29[41]] = 0;
  a2[v29[42]] = 0;
  a2[v29[43]] = 0;
  a2[v29[44]] = 0;
  v56 = &a2[v29[45]];
  *v56 = 0;
  *(v56 + 1) = 0xE000000000000000;
  a2[v29[46]] = 0;
  v57 = &a2[v29[47]];
  *v57 = 0;
  *(v57 + 1) = 0xE000000000000000;
  a2[v29[48]] = 0;
  v58 = &a2[v29[49]];
  *v58 = 0;
  *(v58 + 1) = 0;
  a2[v29[50]] = 0;
  *&a2[v29[51]] = 0;
  *&a2[v29[52]] = 0;
  v59 = &a2[v29[53]];
  *v59 = 0;
  *(v59 + 1) = 0;
  *&a2[v29[54]] = 0;
  v60 = &a2[v29[55]];
  *v60 = 0;
  *(v60 + 1) = 0xE000000000000000;
  *&a2[v29[56]] = 0;
  a2[v29[57]] = 1;
  return result;
}

double sub_10002E58C@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() imageNamed:v4];

  if (!v5 || (v6 = [objc_opt_self() systemBlueColor], v7 = objc_msgSend(v5, "imageWithTintColor:", v6), v5, v6, !v7))
  {
    v7 = [objc_allocWithZone(UIImage) init];
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100006658(v8);

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v11;
  v59 = v10;

  v12 = WiFiCopyCurrentNetworkInfo();
  if (v12)
  {
    v13 = v12;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *&v60 = 0;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  v14 = 0xE100000000000000;
  v15 = 63;
  sub_10000E6C4(&qword_100102388, qword_1000BE250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD050;
  *(&v61 + 1) = &type metadata for HomeDeviceSetupFeatureFlags;
  *&v62 = sub_100039FE0();
  LOBYTE(v60) = 4;
  v17 = isFeatureEnabled(_:)();
  sub_10000E70C(&v60);
  if (v17)
  {

    v15 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSSID);
    v14 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSSID + 8);
  }

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_100039F8C();
  *(inited + 32) = v15;
  *(inited + 40) = v14;
  *&v60 = 0;
  *(&v60 + 1) = 0xE000000000000000;
  sub_100038F50(inited, &v60, 0xD000000000000023, 0x80000001000C3020, 16421, 0xE200000000000000);
  swift_setDeallocating();
  sub_10000E6C4(&qword_1001023D8, &unk_1000BD290);
  swift_arrayDestroy();
  v56 = *(&v60 + 1);
  v57 = v60;
  v18 = type metadata accessor for HomePodSetupViewModel(0);
  v19 = v18[6];
  v20 = type metadata accessor for AdjustedMovie(0);
  (*(*(v20 - 8) + 56))(&a2[v19], 1, 1, v20);
  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000BD050;
  v22 = String._bridgeToObjectiveC()();
  v23 = sub_100006658(v22);

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  *(v21 + 32) = v24;
  *(v21 + 40) = v26;
  *(v21 + 48) = 0;
  *(v21 + 56) = 1;
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000BCE00;
  *(v27 + 32) = v7;
  v28 = v18[28];
  v29 = type metadata accessor for AdjustedImage(0);
  (*(*(v29 - 8) + 56))(&a2[v28], 1, 1, v29);
  v30 = v18[58];
  v31 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v31 - 8) + 56))(&a2[v30], 1, 1, v31);
  v32 = &a2[v18[14]];
  *(v32 + 4) = 0;
  *v32 = 0u;
  *(v32 + 1) = 0u;
  v33 = v7;
  v34 = String._bridgeToObjectiveC()();
  v35 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(&v60);
  *a2 = v59;
  *(a2 + 1) = v58;
  *(a2 + 2) = v57;
  *(a2 + 3) = v56;
  v37 = &a2[v18[7]];
  *v37 = 0;
  *(v37 + 1) = 0xE000000000000000;
  v38 = &a2[v18[8]];
  *v38 = 0;
  *(v38 + 1) = 0xE000000000000000;
  v39 = &a2[v18[9]];
  *v39 = 0;
  *(v39 + 1) = 0xE000000000000000;
  *&a2[v18[10]] = v21;
  *&a2[v18[11]] = v27;
  *&a2[v18[12]] = _swiftEmptyArrayStorage;
  *&a2[v18[13]] = _swiftEmptyArrayStorage;
  *&a2[v18[15]] = _swiftEmptyArrayStorage;
  *&a2[v18[16]] = _swiftEmptyArrayStorage;
  a2[v18[17]] = Int64 != 0;
  v40 = &a2[v18[18]];
  *v40 = 0;
  v40[4] = 1;
  *&a2[v18[19]] = 1;
  v41 = &a2[v18[20]];
  v42 = v63;
  *(v41 + 2) = v62;
  *(v41 + 3) = v42;
  *(v41 + 4) = v64;
  v43 = v61;
  *v41 = v60;
  *(v41 + 1) = v43;
  v44 = &a2[v18[21]];
  result = 0.0;
  *(v44 + 3) = 0u;
  *(v44 + 4) = 0u;
  *(v44 + 1) = 0u;
  *(v44 + 2) = 0u;
  *v44 = 0u;
  *&a2[v18[22]] = 0;
  *&a2[v18[23]] = 0;
  v46 = &a2[v18[24]];
  *v46 = 0;
  *(v46 + 1) = 0;
  v47 = &a2[v18[25]];
  *v47 = 0;
  *(v47 + 1) = 0;
  v48 = &a2[v18[26]];
  *v48 = 0;
  *(v48 + 1) = 0;
  a2[v18[27]] = 0;
  a2[v18[29]] = 0;
  *&a2[v18[30]] = 0;
  *&a2[v18[31]] = 0;
  v49 = &a2[v18[32]];
  *v49 = 0;
  v49[8] = 1;
  a2[v18[33]] = 0;
  a2[v18[34]] = 0;
  a2[v18[35]] = 0;
  *&a2[v18[36]] = 0;
  *&a2[v18[37]] = 0;
  v50 = &a2[v18[38]];
  *v50 = 0;
  *(v50 + 1) = 0xE000000000000000;
  a2[v18[39]] = 0;
  a2[v18[40]] = 0;
  *&a2[v18[41]] = 0;
  a2[v18[42]] = 0;
  a2[v18[43]] = 0;
  a2[v18[44]] = 0;
  v51 = &a2[v18[45]];
  *v51 = 0;
  *(v51 + 1) = 0xE000000000000000;
  a2[v18[46]] = 0;
  v52 = &a2[v18[47]];
  *v52 = 0;
  *(v52 + 1) = 0xE000000000000000;
  a2[v18[48]] = 0;
  v53 = &a2[v18[49]];
  *v53 = 0;
  *(v53 + 1) = 0;
  a2[v18[50]] = 0;
  *&a2[v18[51]] = 0;
  *&a2[v18[52]] = 0;
  v54 = &a2[v18[53]];
  *v54 = 0;
  *(v54 + 1) = 0;
  *&a2[v18[54]] = 0;
  v55 = &a2[v18[55]];
  *v55 = 0;
  *(v55 + 1) = 0xE000000000000000;
  *&a2[v18[56]] = 0;
  a2[v18[57]] = 1;
  return result;
}

void sub_10002ED18(char *a1@<X8>)
{
  v2 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  __chkstk_darwin(v2 - 8);
  v73 = &v65 - v3;
  v4 = String._bridgeToObjectiveC()();
  v5 = CUAddSuffixForCurrentDeviceClass();

  if (v5)
  {
    v6 = sub_100006658(v5);

    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v7;

    sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000BD050;
    *(&v75 + 1) = &type metadata for AppleAccountFeatureFlags;
    v72 = sub_10003B774();
    *&v76 = v72;
    isFeatureEnabled(_:)();
    sub_10000E70C(&v74);
    v9 = String._bridgeToObjectiveC()();
    v10 = sub_100006658(v9);

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *(v8 + 32) = v11;
    *(v8 + 40) = v13;
    *(v8 + 48) = 0;
    *(v8 + 56) = 13;
    v14 = sub_10003A1D8();
    v15 = objc_opt_self();
    v16 = [v15 mainScreen];
    [v16 scale];
    v18 = v17;

    v19 = objc_opt_self();
    v20 = String._bridgeToObjectiveC()();
    v21 = [v19 _applicationIconImageForBundleIdentifier:v20 format:2 scale:v18];

    if (!v21)
    {
      v21 = [objc_allocWithZone(UIImage) init];
    }

    v22 = [v15 mainScreen];
    [v22 scale];
    v24 = v23;

    v25 = String._bridgeToObjectiveC()();
    v26 = [v19 _applicationIconImageForBundleIdentifier:v25 format:2 scale:v24];

    if (!v26)
    {
      v26 = [objc_allocWithZone(UIImage) init];
    }

    v27 = type metadata accessor for AdjustedMovie(0);
    (*(*(v27 - 8) + 56))(v73, 1, 1, v27);
    *(&v75 + 1) = &type metadata for AppleAccountFeatureFlags;
    *&v76 = v72;
    isFeatureEnabled(_:)();
    sub_10000E70C(&v74);
    v28 = String._bridgeToObjectiveC()();
    v29 = sub_100006658(v28);

    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v30;

    v80[4] = v14;
    v80[5] = v21;
    v80[6] = v26;
    v79 = _swiftEmptyArrayStorage;
    v68 = v14;
    v67 = v21;
    v66 = v26;
    v31 = 0;
    v32 = _swiftEmptyArrayStorage;
LABEL_7:
    if (v31 <= 3)
    {
      v33 = 3;
    }

    else
    {
      v33 = v31;
    }

    while (1)
    {
      if (v31 == 3)
      {
        sub_10000E6C4(&qword_100102408, &qword_1000BD2B0);
        swift_arrayDestroy();
        v36 = type metadata accessor for HomePodSetupViewModel(0);
        v37 = v36[28];
        v38 = type metadata accessor for AdjustedImage(0);
        (*(*(v38 - 8) + 56))(&a1[v37], 1, 1, v38);
        v39 = v36[58];
        v40 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
        (*(*(v40 - 8) + 56))(&a1[v39], 1, 1, v40);
        v41 = &a1[v36[14]];
        *(v41 + 4) = 0;
        *v41 = 0u;
        *(v41 + 1) = 0u;
        v42 = String._bridgeToObjectiveC()();
        v43 = String._bridgeToObjectiveC()();
        Int64 = CFPrefs_GetInt64();

        sub_1000660A0(&v74);
        v45 = v70;
        *a1 = v71;
        *(a1 + 1) = v45;
        *(a1 + 2) = 0;
        *(a1 + 3) = 0xE000000000000000;
        sub_10003B8EC(v73, &a1[v36[6]], &unk_100101FB0, &qword_1000BD128);
        v46 = &a1[v36[7]];
        v47 = v69;
        *v46 = v72;
        v46[1] = v47;
        v48 = &a1[v36[8]];
        *v48 = 0;
        *(v48 + 1) = 0xE000000000000000;
        v49 = &a1[v36[9]];
        *v49 = 0;
        *(v49 + 1) = 0xE000000000000000;
        *&a1[v36[10]] = v8;
        *&a1[v36[11]] = v32;
        *&a1[v36[12]] = _swiftEmptyArrayStorage;
        *&a1[v36[13]] = _swiftEmptyArrayStorage;
        *&a1[v36[15]] = _swiftEmptyArrayStorage;
        *&a1[v36[16]] = _swiftEmptyArrayStorage;
        a1[v36[17]] = Int64 != 0;
        v50 = &a1[v36[18]];
        *v50 = 0;
        v50[4] = 1;
        *&a1[v36[19]] = 1;
        v51 = &a1[v36[20]];
        v52 = v77;
        *(v51 + 2) = v76;
        *(v51 + 3) = v52;
        *(v51 + 4) = v78;
        v53 = v75;
        *v51 = v74;
        *(v51 + 1) = v53;
        v54 = &a1[v36[21]];
        *v54 = 0u;
        *(v54 + 1) = 0u;
        *(v54 + 2) = 0u;
        *(v54 + 3) = 0u;
        *(v54 + 4) = 0u;
        *&a1[v36[22]] = 0;
        *&a1[v36[23]] = 0;
        v55 = &a1[v36[24]];
        *v55 = 0;
        *(v55 + 1) = 0;
        v56 = &a1[v36[25]];
        *v56 = 0;
        *(v56 + 1) = 0;
        v57 = &a1[v36[26]];
        *v57 = 0;
        *(v57 + 1) = 0;
        a1[v36[27]] = 0;
        a1[v36[29]] = 0;
        *&a1[v36[30]] = 0;
        *&a1[v36[31]] = 0;
        v58 = &a1[v36[32]];
        *v58 = 0;
        v58[8] = 1;
        a1[v36[33]] = 0;
        a1[v36[34]] = 0;
        a1[v36[35]] = 0;
        *&a1[v36[36]] = 0;
        *&a1[v36[37]] = 0;
        v59 = &a1[v36[38]];
        *v59 = 0;
        *(v59 + 1) = 0xE000000000000000;
        a1[v36[39]] = 0;
        a1[v36[40]] = 0;
        *&a1[v36[41]] = 0;
        a1[v36[42]] = 0;
        a1[v36[43]] = 0;
        a1[v36[44]] = 0;
        v60 = &a1[v36[45]];
        *v60 = 0;
        *(v60 + 1) = 0xE000000000000000;
        a1[v36[46]] = 0;
        v61 = &a1[v36[47]];
        *v61 = 0;
        *(v61 + 1) = 0xE000000000000000;
        a1[v36[48]] = 0;
        v62 = &a1[v36[49]];
        *v62 = 0;
        *(v62 + 1) = 0;
        a1[v36[50]] = 0;
        *&a1[v36[51]] = 0;
        *&a1[v36[52]] = 0;
        v63 = &a1[v36[53]];
        *v63 = 0;
        *(v63 + 1) = 0;
        *&a1[v36[54]] = 0;
        v64 = &a1[v36[55]];
        *v64 = 0;
        *(v64 + 1) = 0xE000000000000000;
        *&a1[v36[56]] = 0;
        a1[v36[57]] = 1;
        return;
      }

      if (v33 == v31)
      {
        break;
      }

      v34 = v80[v31++ + 4];
      if (v34)
      {
        v35 = v34;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v32 = v79;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id sub_10002F5BC@<X0>(char *a1@<X8>)
{
  v2 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  __chkstk_darwin(v2 - 8);
  v73 = &v65 - v3;
  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000BD050;
  *(&v75 + 1) = &type metadata for AppleAccountFeatureFlags;
  *&v76 = sub_10003B774();
  isFeatureEnabled(_:)();
  sub_10000E70C(&v74);
  v5 = String._bridgeToObjectiveC()();
  v6 = sub_100006658(v5);

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  *(v4 + 48) = 0;
  *(v4 + 56) = 13;
  v10 = sub_10003A1D8();
  v11 = objc_opt_self();
  v12 = [v11 mainScreen];
  [v12 scale];
  v14 = v13;

  v15 = objc_opt_self();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 _applicationIconImageForBundleIdentifier:v16 format:2 scale:v14];

  if (!v17)
  {
    v17 = [objc_allocWithZone(UIImage) init];
  }

  v18 = [v11 mainScreen];
  [v18 scale];
  v20 = v19;

  v21 = String._bridgeToObjectiveC()();
  v22 = [v15 _applicationIconImageForBundleIdentifier:v21 format:2 scale:v20];

  if (!v22)
  {
    v22 = [objc_allocWithZone(UIImage) init];
  }

  v23 = String._bridgeToObjectiveC()();
  v24 = sub_100006658(v23);

  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v25;

  v26 = String._bridgeToObjectiveC()();
  v27 = sub_100006658(v26);

  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v28;

  v29 = type metadata accessor for AdjustedMovie(0);
  (*(*(v29 - 8) + 56))(v73, 1, 1, v29);
  v80[4] = v10;
  v80[5] = v17;
  v80[6] = v22;
  v79 = _swiftEmptyArrayStorage;
  v68 = v10;
  v67 = v17;
  result = v22;
  v66 = result;
  v31 = 0;
  v32 = _swiftEmptyArrayStorage;
LABEL_6:
  if (v31 <= 3)
  {
    v33 = 3;
  }

  else
  {
    v33 = v31;
  }

  while (1)
  {
    if (v31 == 3)
    {
      sub_10000E6C4(&qword_100102408, &qword_1000BD2B0);
      swift_arrayDestroy();
      v36 = type metadata accessor for HomePodSetupViewModel(0);
      v37 = v36[28];
      v38 = type metadata accessor for AdjustedImage(0);
      (*(*(v38 - 8) + 56))(&a1[v37], 1, 1, v38);
      v39 = v36[58];
      v40 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
      (*(*(v40 - 8) + 56))(&a1[v39], 1, 1, v40);
      v41 = &a1[v36[14]];
      *(v41 + 4) = 0;
      *v41 = 0u;
      *(v41 + 1) = 0u;
      v42 = String._bridgeToObjectiveC()();
      v43 = String._bridgeToObjectiveC()();
      Int64 = CFPrefs_GetInt64();

      sub_1000660A0(&v74);
      v45 = v69;
      *a1 = v70;
      *(a1 + 1) = v45;
      *(a1 + 2) = 0;
      *(a1 + 3) = 0xE000000000000000;
      result = sub_10003B8EC(v73, &a1[v36[6]], &unk_100101FB0, &qword_1000BD128);
      v46 = &a1[v36[7]];
      v47 = v71;
      *v46 = v72;
      v46[1] = v47;
      v48 = &a1[v36[8]];
      *v48 = 0;
      *(v48 + 1) = 0xE000000000000000;
      v49 = &a1[v36[9]];
      *v49 = 0;
      *(v49 + 1) = 0xE000000000000000;
      *&a1[v36[10]] = v4;
      *&a1[v36[11]] = v32;
      *&a1[v36[12]] = _swiftEmptyArrayStorage;
      *&a1[v36[13]] = _swiftEmptyArrayStorage;
      *&a1[v36[15]] = _swiftEmptyArrayStorage;
      *&a1[v36[16]] = _swiftEmptyArrayStorage;
      a1[v36[17]] = Int64 != 0;
      v50 = &a1[v36[18]];
      *v50 = 0;
      v50[4] = 1;
      *&a1[v36[19]] = 1;
      v51 = &a1[v36[20]];
      v52 = v77;
      *(v51 + 2) = v76;
      *(v51 + 3) = v52;
      *(v51 + 4) = v78;
      v53 = v75;
      *v51 = v74;
      *(v51 + 1) = v53;
      v54 = &a1[v36[21]];
      *v54 = 0u;
      *(v54 + 1) = 0u;
      *(v54 + 2) = 0u;
      *(v54 + 3) = 0u;
      *(v54 + 4) = 0u;
      *&a1[v36[22]] = 0;
      *&a1[v36[23]] = 0;
      v55 = &a1[v36[24]];
      *v55 = 0;
      *(v55 + 1) = 0;
      v56 = &a1[v36[25]];
      *v56 = 0;
      *(v56 + 1) = 0;
      v57 = &a1[v36[26]];
      *v57 = 0;
      *(v57 + 1) = 0;
      a1[v36[27]] = 0;
      a1[v36[29]] = 0;
      *&a1[v36[30]] = 0;
      *&a1[v36[31]] = 0;
      v58 = &a1[v36[32]];
      *v58 = 0;
      v58[8] = 1;
      a1[v36[33]] = 0;
      a1[v36[34]] = 0;
      a1[v36[35]] = 0;
      *&a1[v36[36]] = 0;
      *&a1[v36[37]] = 0;
      v59 = &a1[v36[38]];
      *v59 = 0;
      *(v59 + 1) = 0xE000000000000000;
      a1[v36[39]] = 0;
      a1[v36[40]] = 0;
      *&a1[v36[41]] = 0;
      a1[v36[42]] = 0;
      a1[v36[43]] = 0;
      a1[v36[44]] = 0;
      v60 = &a1[v36[45]];
      *v60 = 0;
      *(v60 + 1) = 0xE000000000000000;
      a1[v36[46]] = 0;
      v61 = &a1[v36[47]];
      *v61 = 0;
      *(v61 + 1) = 0xE000000000000000;
      a1[v36[48]] = 0;
      v62 = &a1[v36[49]];
      *v62 = 0;
      *(v62 + 1) = 0;
      a1[v36[50]] = 0;
      *&a1[v36[51]] = 0;
      *&a1[v36[52]] = 0;
      v63 = &a1[v36[53]];
      *v63 = 0;
      *(v63 + 1) = 0;
      *&a1[v36[54]] = 0;
      v64 = &a1[v36[55]];
      *v64 = 0;
      *(v64 + 1) = 0xE000000000000000;
      *&a1[v36[56]] = 0;
      a1[v36[57]] = 1;
      return result;
    }

    if (v33 == v31)
    {
      break;
    }

    v34 = v80[v31++ + 4];
    if (v34)
    {
      v35 = v34;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v32 = v79;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

id sub_10002FDF4@<X0>(const char **a1@<X8>)
{
  v2 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  __chkstk_darwin(v2 - 8);
  v73 = &v65 - v3;
  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000BD050;
  *(&v75 + 1) = &type metadata for AppleAccountFeatureFlags;
  v5 = sub_10003B774();
  *&v76 = v5;
  isFeatureEnabled(_:)();
  sub_10000E70C(&v74);
  v71 = "oob_prox_captive_homepodmini";
  v70 = "_ICLOUDACCOUNT_BODY_AA";
  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v4 + 32) = v8;
  *(v4 + 40) = v10;
  *(v4 + 48) = 0;
  *(v4 + 56) = 13;
  v72 = sub_10003A1D8();
  v11 = objc_opt_self();
  v12 = [v11 mainScreen];
  [v12 scale];
  v14 = v13;

  v15 = objc_opt_self();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 _applicationIconImageForBundleIdentifier:v16 format:2 scale:v14];

  if (!v17)
  {
    v17 = [objc_allocWithZone(UIImage) init];
  }

  v18 = [v11 mainScreen];
  [v18 scale];
  v20 = v19;

  v21 = String._bridgeToObjectiveC()();
  v22 = [v15 _applicationIconImageForBundleIdentifier:v21 format:2 scale:v20];

  if (!v22)
  {
    v22 = [objc_allocWithZone(UIImage) init];
  }

  *(&v75 + 1) = &type metadata for AppleAccountFeatureFlags;
  *&v76 = v5;
  isFeatureEnabled(_:)();
  sub_10000E70C(&v74);
  v23 = String._bridgeToObjectiveC()();

  v24 = sub_100006658(v23);

  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v25;

  *(&v75 + 1) = &type metadata for AppleAccountFeatureFlags;
  *&v76 = v5;
  isFeatureEnabled(_:)();
  sub_10000E70C(&v74);
  v26 = String._bridgeToObjectiveC()();
  v27 = sub_100006658(v26);

  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v28;

  v29 = type metadata accessor for AdjustedMovie(0);
  (*(*(v29 - 8) + 56))(v73, 1, 1, v29);
  v80[4] = v72;
  v80[5] = v17;
  v80[6] = v22;
  v79 = _swiftEmptyArrayStorage;
  v72 = v72;
  v67 = v17;
  result = v22;
  v66 = result;
  v31 = 0;
  v32 = _swiftEmptyArrayStorage;
LABEL_6:
  if (v31 <= 3)
  {
    v33 = 3;
  }

  else
  {
    v33 = v31;
  }

  while (1)
  {
    if (v31 == 3)
    {
      sub_10000E6C4(&qword_100102408, &qword_1000BD2B0);
      swift_arrayDestroy();
      v36 = type metadata accessor for HomePodSetupViewModel(0);
      v37 = v36[28];
      v38 = type metadata accessor for AdjustedImage(0);
      (*(*(v38 - 8) + 56))(a1 + v37, 1, 1, v38);
      v39 = v36[58];
      v40 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
      (*(*(v40 - 8) + 56))(a1 + v39, 1, 1, v40);
      v41 = a1 + v36[14];
      *(v41 + 4) = 0;
      *v41 = 0u;
      *(v41 + 1) = 0u;
      v42 = String._bridgeToObjectiveC()();
      v43 = String._bridgeToObjectiveC()();
      Int64 = CFPrefs_GetInt64();

      sub_1000660A0(&v74);
      v45 = v70;
      *a1 = v71;
      a1[1] = v45;
      a1[2] = 0;
      a1[3] = 0xE000000000000000;
      result = sub_10003B8EC(v73, a1 + v36[6], &unk_100101FB0, &qword_1000BD128);
      v46 = (a1 + v36[7]);
      v47 = v68;
      *v46 = v69;
      v46[1] = v47;
      v48 = (a1 + v36[8]);
      *v48 = 0;
      v48[1] = 0xE000000000000000;
      v49 = (a1 + v36[9]);
      *v49 = 0;
      v49[1] = 0xE000000000000000;
      *(a1 + v36[10]) = v4;
      *(a1 + v36[11]) = v32;
      *(a1 + v36[12]) = _swiftEmptyArrayStorage;
      *(a1 + v36[13]) = _swiftEmptyArrayStorage;
      *(a1 + v36[15]) = _swiftEmptyArrayStorage;
      *(a1 + v36[16]) = _swiftEmptyArrayStorage;
      *(a1 + v36[17]) = Int64 != 0;
      v50 = a1 + v36[18];
      *v50 = 0;
      v50[4] = 1;
      *(a1 + v36[19]) = 1;
      v51 = (a1 + v36[20]);
      v52 = v77;
      v51[2] = v76;
      v51[3] = v52;
      v51[4] = v78;
      v53 = v75;
      *v51 = v74;
      v51[1] = v53;
      v54 = (a1 + v36[21]);
      *v54 = 0u;
      v54[1] = 0u;
      v54[2] = 0u;
      v54[3] = 0u;
      v54[4] = 0u;
      *(a1 + v36[22]) = 0;
      *(a1 + v36[23]) = 0;
      v55 = (a1 + v36[24]);
      *v55 = 0;
      v55[1] = 0;
      v56 = (a1 + v36[25]);
      *v56 = 0;
      v56[1] = 0;
      v57 = (a1 + v36[26]);
      *v57 = 0;
      v57[1] = 0;
      *(a1 + v36[27]) = 0;
      *(a1 + v36[29]) = 0;
      *(a1 + v36[30]) = 0;
      *(a1 + v36[31]) = 0;
      v58 = a1 + v36[32];
      *v58 = 0;
      v58[8] = 1;
      *(a1 + v36[33]) = 0;
      *(a1 + v36[34]) = 0;
      *(a1 + v36[35]) = 0;
      *(a1 + v36[36]) = 0;
      *(a1 + v36[37]) = 0;
      v59 = (a1 + v36[38]);
      *v59 = 0;
      v59[1] = 0xE000000000000000;
      *(a1 + v36[39]) = 0;
      *(a1 + v36[40]) = 0;
      *(a1 + v36[41]) = 0;
      *(a1 + v36[42]) = 0;
      *(a1 + v36[43]) = 0;
      *(a1 + v36[44]) = 0;
      v60 = (a1 + v36[45]);
      *v60 = 0;
      v60[1] = 0xE000000000000000;
      *(a1 + v36[46]) = 0;
      v61 = (a1 + v36[47]);
      *v61 = 0;
      v61[1] = 0xE000000000000000;
      *(a1 + v36[48]) = 0;
      v62 = (a1 + v36[49]);
      *v62 = 0;
      v62[1] = 0;
      *(a1 + v36[50]) = 0;
      *(a1 + v36[51]) = 0;
      *(a1 + v36[52]) = 0;
      v63 = (a1 + v36[53]);
      *v63 = 0;
      v63[1] = 0;
      *(a1 + v36[54]) = 0;
      v64 = (a1 + v36[55]);
      *v64 = 0;
      v64[1] = 0xE000000000000000;
      *(a1 + v36[56]) = 0;
      *(a1 + v36[57]) = 1;
      return result;
    }

    if (v33 == v31)
    {
      break;
    }

    v34 = v80[v31++ + 4];
    if (v34)
    {
      v35 = v34;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v32 = v79;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

double sub_1000306B0@<D0>(char *a1@<X8>)
{
  v2 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  __chkstk_darwin(v2 - 8);
  v4 = &v53 - v3;
  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000BD050;
  *(&v56 + 1) = &type metadata for AppleAccountFeatureFlags;
  v6 = sub_10003B774();
  *&v57 = v6;
  isFeatureEnabled(_:)();
  sub_10000E70C(&v55);
  v7 = String._bridgeToObjectiveC()();
  v8 = sub_100006658(v7);

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v5 + 32) = v9;
  *(v5 + 40) = v11;
  *(v5 + 48) = 0;
  *(v5 + 56) = 13;
  v12 = String._bridgeToObjectiveC()();
  v13 = sub_100006658(v12);

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v15;
  v54 = v14;

  v16 = type metadata accessor for AdjustedMovie(0);
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  *(&v56 + 1) = &type metadata for AppleAccountFeatureFlags;
  *&v57 = v6;
  isFeatureEnabled(_:)();
  sub_10000E70C(&v55);
  v17 = String._bridgeToObjectiveC()();
  v18 = sub_100006658(v17);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  sub_10003A7C4();
  v23 = v22;
  v24 = type metadata accessor for HomePodSetupViewModel(0);
  v25 = v24[28];
  v26 = type metadata accessor for AdjustedImage(0);
  (*(*(v26 - 8) + 56))(&a1[v25], 1, 1, v26);
  v27 = v24[58];
  v28 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v28 - 8) + 56))(&a1[v27], 1, 1, v28);
  v29 = &a1[v24[14]];
  *(v29 + 4) = 0;
  *v29 = 0u;
  *(v29 + 1) = 0u;
  v30 = String._bridgeToObjectiveC()();
  v31 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(&v55);
  v33 = v53;
  *a1 = v54;
  *(a1 + 1) = v33;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  sub_10003B8EC(v4, &a1[v24[6]], &unk_100101FB0, &qword_1000BD128);
  v34 = &a1[v24[7]];
  *v34 = v19;
  *(v34 + 1) = v21;
  v35 = &a1[v24[8]];
  *v35 = 0;
  *(v35 + 1) = 0xE000000000000000;
  v36 = &a1[v24[9]];
  *v36 = 0;
  *(v36 + 1) = 0xE000000000000000;
  *&a1[v24[10]] = v5;
  *&a1[v24[11]] = v23;
  *&a1[v24[12]] = _swiftEmptyArrayStorage;
  *&a1[v24[13]] = _swiftEmptyArrayStorage;
  *&a1[v24[15]] = _swiftEmptyArrayStorage;
  *&a1[v24[16]] = _swiftEmptyArrayStorage;
  a1[v24[17]] = Int64 != 0;
  v37 = &a1[v24[18]];
  *v37 = 0;
  v37[4] = 1;
  *&a1[v24[19]] = 1;
  v38 = &a1[v24[20]];
  v39 = v58;
  *(v38 + 2) = v57;
  *(v38 + 3) = v39;
  *(v38 + 4) = v59;
  v40 = v56;
  *v38 = v55;
  *(v38 + 1) = v40;
  v41 = &a1[v24[21]];
  result = 0.0;
  *v41 = 0u;
  *(v41 + 1) = 0u;
  *(v41 + 2) = 0u;
  *(v41 + 3) = 0u;
  *(v41 + 4) = 0u;
  *&a1[v24[22]] = 0;
  *&a1[v24[23]] = 0;
  v43 = &a1[v24[24]];
  *v43 = 0;
  *(v43 + 1) = 0;
  v44 = &a1[v24[25]];
  *v44 = 0;
  *(v44 + 1) = 0;
  v45 = &a1[v24[26]];
  *v45 = 0;
  *(v45 + 1) = 0;
  a1[v24[27]] = 0;
  a1[v24[29]] = 0;
  *&a1[v24[30]] = 0;
  *&a1[v24[31]] = 0;
  v46 = &a1[v24[32]];
  *v46 = 0;
  v46[8] = 1;
  a1[v24[33]] = 0;
  a1[v24[34]] = 0;
  a1[v24[35]] = 0;
  *&a1[v24[36]] = 0;
  *&a1[v24[37]] = 0;
  v47 = &a1[v24[38]];
  *v47 = 0;
  *(v47 + 1) = 0xE000000000000000;
  a1[v24[39]] = 0;
  a1[v24[40]] = 0;
  *&a1[v24[41]] = 0;
  a1[v24[42]] = 0;
  a1[v24[43]] = 0;
  a1[v24[44]] = 0;
  v48 = &a1[v24[45]];
  *v48 = 0;
  *(v48 + 1) = 0xE000000000000000;
  a1[v24[46]] = 0;
  v49 = &a1[v24[47]];
  *v49 = 0;
  *(v49 + 1) = 0xE000000000000000;
  a1[v24[48]] = 0;
  v50 = &a1[v24[49]];
  *v50 = 0;
  *(v50 + 1) = 0;
  a1[v24[50]] = 0;
  *&a1[v24[51]] = 0;
  *&a1[v24[52]] = 0;
  v51 = &a1[v24[53]];
  *v51 = 0;
  *(v51 + 1) = 0;
  *&a1[v24[54]] = 0;
  v52 = &a1[v24[55]];
  *v52 = 0;
  *(v52 + 1) = 0xE000000000000000;
  *&a1[v24[56]] = 0;
  a1[v24[57]] = 1;
  return result;
}

double sub_100030C74@<D0>(char *a1@<X8>)
{
  v2 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  __chkstk_darwin(v2 - 8);
  v4 = &v56 - v3;
  v5 = String._bridgeToObjectiveC()();
  v6 = sub_100006658(v5);

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v8;
  v61 = v7;

  v9 = sub_10003A0C4();
  v10 = sub_10003A0C4();
  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v14;
  v59 = v13;

  v15 = type metadata accessor for AdjustedMovie(0);
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000BD050;
  v17 = String._bridgeToObjectiveC()();
  v18 = sub_100006658(v17);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  v64[4] = v9;
  v64[5] = v10;
  v63 = _swiftEmptyArrayStorage;
  v57 = v9;
  v56 = v10;
  v22 = 0;
  v23 = _swiftEmptyArrayStorage;
  while (v22 != 2)
  {
    v24 = v64[v22++ + 4];
    if (v24)
    {
      v25 = v24;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v23 = v63;
    }
  }

  sub_10000E6C4(&qword_100102408, &qword_1000BD2B0);
  swift_arrayDestroy();
  v26 = type metadata accessor for HomePodSetupViewModel(0);
  v27 = v26[28];
  v28 = type metadata accessor for AdjustedImage(0);
  (*(*(v28 - 8) + 56))(&a1[v27], 1, 1, v28);
  v29 = v26[58];
  v30 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v30 - 8) + 56))(&a1[v29], 1, 1, v30);
  v31 = &a1[v26[14]];
  *(v31 + 4) = 0;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v32 = String._bridgeToObjectiveC()();
  v33 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v62);
  v35 = v58;
  *a1 = v59;
  *(a1 + 1) = v35;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  sub_10003B8EC(v4, &a1[v26[6]], &unk_100101FB0, &qword_1000BD128);
  v36 = &a1[v26[7]];
  v37 = v60;
  *v36 = v61;
  *(v36 + 1) = v37;
  v38 = &a1[v26[8]];
  *v38 = 0;
  *(v38 + 1) = 0xE000000000000000;
  v39 = &a1[v26[9]];
  *v39 = 0;
  *(v39 + 1) = 0xE000000000000000;
  *&a1[v26[10]] = v16;
  *&a1[v26[11]] = v23;
  *&a1[v26[12]] = _swiftEmptyArrayStorage;
  *&a1[v26[13]] = _swiftEmptyArrayStorage;
  *&a1[v26[15]] = _swiftEmptyArrayStorage;
  *&a1[v26[16]] = _swiftEmptyArrayStorage;
  a1[v26[17]] = Int64 != 0;
  v40 = &a1[v26[18]];
  *v40 = 0;
  v40[4] = 1;
  *&a1[v26[19]] = 1;
  v41 = &a1[v26[20]];
  v42 = v62[3];
  *(v41 + 2) = v62[2];
  *(v41 + 3) = v42;
  *(v41 + 4) = v62[4];
  v43 = v62[1];
  *v41 = v62[0];
  *(v41 + 1) = v43;
  v44 = &a1[v26[21]];
  result = 0.0;
  *v44 = 0u;
  *(v44 + 1) = 0u;
  *(v44 + 2) = 0u;
  *(v44 + 3) = 0u;
  *(v44 + 4) = 0u;
  *&a1[v26[22]] = 0;
  *&a1[v26[23]] = 0;
  v46 = &a1[v26[24]];
  *v46 = 0;
  *(v46 + 1) = 0;
  v47 = &a1[v26[25]];
  *v47 = 0;
  *(v47 + 1) = 0;
  v48 = &a1[v26[26]];
  *v48 = 0;
  *(v48 + 1) = 0;
  a1[v26[27]] = 0;
  a1[v26[29]] = 0;
  *&a1[v26[30]] = 0;
  *&a1[v26[31]] = 0;
  v49 = &a1[v26[32]];
  *v49 = 0;
  v49[8] = 1;
  a1[v26[33]] = 0;
  a1[v26[34]] = 0;
  a1[v26[35]] = 0;
  *&a1[v26[36]] = 0;
  *&a1[v26[37]] = 0;
  v50 = &a1[v26[38]];
  *v50 = 0;
  *(v50 + 1) = 0xE000000000000000;
  a1[v26[39]] = 0;
  a1[v26[40]] = 0;
  *&a1[v26[41]] = 0;
  a1[v26[42]] = 0;
  a1[v26[43]] = 0;
  a1[v26[44]] = 0;
  v51 = &a1[v26[45]];
  *v51 = 0;
  *(v51 + 1) = 0xE000000000000000;
  a1[v26[46]] = 0;
  v52 = &a1[v26[47]];
  *v52 = 0;
  *(v52 + 1) = 0xE000000000000000;
  a1[v26[48]] = 0;
  v53 = &a1[v26[49]];
  *v53 = 0;
  *(v53 + 1) = 0;
  a1[v26[50]] = 0;
  *&a1[v26[51]] = 0;
  *&a1[v26[52]] = 0;
  v54 = &a1[v26[53]];
  *v54 = 0;
  *(v54 + 1) = 0;
  *&a1[v26[54]] = 0;
  v55 = &a1[v26[55]];
  *v55 = 0;
  *(v55 + 1) = 0xE000000000000000;
  *&a1[v26[56]] = 0;
  a1[v26[57]] = 1;
  return result;
}

double sub_1000312B0@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_error);
  if (v3)
  {
    v4 = [v3 userInfo];
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v5 + 16) && (v6 = sub_100053B80(0xD000000000000012, 0x80000001000C32E0), (v7 & 1) != 0))
    {
      sub_10000EA58(*(v5 + 56) + 32 * v6, v64);

      if (swift_dynamicCast())
      {
        v9 = v62;
        v8 = v63;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v8 = 0xE100000000000000;
  v9 = 63;
LABEL_8:
  sub_10000E6C4(&qword_100102388, qword_1000BE250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD050;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_100039F8C();
  *(inited + 32) = v9;
  *(inited + 40) = v8;
  *&v64[0] = 0;
  *(&v64[0] + 1) = 0xE000000000000000;
  sub_100038F50(inited, v64, 0xD00000000000001DLL, 0x80000001000C3300, 16421, 0xE200000000000000);
  swift_setDeallocating();
  sub_10000E6C4(&qword_1001023D8, &unk_1000BD290);
  swift_arrayDestroy();
  v60 = *(&v64[0] + 1);
  v61 = *&v64[0];
  v11 = [objc_opt_self() mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = objc_opt_self();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 _applicationIconImageForBundleIdentifier:v15 format:2 scale:v13];

  if (!v16)
  {
    v16 = [objc_allocWithZone(UIImage) init];
  }

  v17 = String._bridgeToObjectiveC()();
  v18 = sub_100006658(v17);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000BD050;
  *(v22 + 32) = v19;
  *(v22 + 40) = v21;
  *(v22 + 48) = 0;
  *(v22 + 56) = 1;
  v23 = String._bridgeToObjectiveC()();
  v24 = sub_100006658(v23);

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = type metadata accessor for HomePodSetupViewModel(0);
  v29 = v28[6];
  v30 = type metadata accessor for AdjustedMovie(0);
  (*(*(v30 - 8) + 56))(&a2[v29], 1, 1, v30);
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1000BCE00;
  *(v31 + 32) = v16;
  v32 = v28[28];
  v33 = type metadata accessor for AdjustedImage(0);
  (*(*(v33 - 8) + 56))(&a2[v32], 1, 1, v33);
  v34 = v28[58];
  v35 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v35 - 8) + 56))(&a2[v34], 1, 1, v35);
  v36 = &a2[v28[14]];
  *(v36 + 4) = 0;
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v37 = v16;
  v38 = String._bridgeToObjectiveC()();
  v39 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v64);
  *a2 = v25;
  *(a2 + 1) = v27;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v41 = &a2[v28[7]];
  *v41 = v61;
  *(v41 + 1) = v60;
  v42 = &a2[v28[8]];
  *v42 = 0;
  *(v42 + 1) = 0xE000000000000000;
  v43 = &a2[v28[9]];
  *v43 = 0;
  *(v43 + 1) = 0xE000000000000000;
  *&a2[v28[10]] = v22;
  *&a2[v28[11]] = v31;
  *&a2[v28[12]] = _swiftEmptyArrayStorage;
  *&a2[v28[13]] = _swiftEmptyArrayStorage;
  *&a2[v28[15]] = _swiftEmptyArrayStorage;
  *&a2[v28[16]] = _swiftEmptyArrayStorage;
  a2[v28[17]] = Int64 != 0;
  v44 = &a2[v28[18]];
  *v44 = 0;
  v44[4] = 1;
  *&a2[v28[19]] = 1;
  v45 = &a2[v28[20]];
  v46 = v64[3];
  *(v45 + 2) = v64[2];
  *(v45 + 3) = v46;
  *(v45 + 4) = v64[4];
  v47 = v64[1];
  *v45 = v64[0];
  *(v45 + 1) = v47;
  v48 = &a2[v28[21]];
  result = 0.0;
  *(v48 + 3) = 0u;
  *(v48 + 4) = 0u;
  *(v48 + 1) = 0u;
  *(v48 + 2) = 0u;
  *v48 = 0u;
  *&a2[v28[22]] = 0;
  *&a2[v28[23]] = 0;
  v50 = &a2[v28[24]];
  *v50 = 0;
  *(v50 + 1) = 0;
  v51 = &a2[v28[25]];
  *v51 = 0;
  *(v51 + 1) = 0;
  v52 = &a2[v28[26]];
  *v52 = 0;
  *(v52 + 1) = 0;
  a2[v28[27]] = 0;
  a2[v28[29]] = 0;
  *&a2[v28[30]] = 0;
  *&a2[v28[31]] = 0;
  v53 = &a2[v28[32]];
  *v53 = 0;
  v53[8] = 1;
  a2[v28[33]] = 0;
  a2[v28[34]] = 0;
  a2[v28[35]] = 0;
  *&a2[v28[36]] = 0;
  *&a2[v28[37]] = 0;
  v54 = &a2[v28[38]];
  *v54 = 0;
  *(v54 + 1) = 0xE000000000000000;
  a2[v28[39]] = 0;
  a2[v28[40]] = 0;
  *&a2[v28[41]] = 0;
  a2[v28[42]] = 0;
  a2[v28[43]] = 0;
  a2[v28[44]] = 0;
  v55 = &a2[v28[45]];
  *v55 = 0;
  *(v55 + 1) = 0xE000000000000000;
  a2[v28[46]] = 0;
  v56 = &a2[v28[47]];
  *v56 = 0;
  *(v56 + 1) = 0xE000000000000000;
  a2[v28[48]] = 0;
  v57 = &a2[v28[49]];
  *v57 = 0;
  *(v57 + 1) = 0;
  a2[v28[50]] = 0;
  *&a2[v28[51]] = 0;
  *&a2[v28[52]] = 0;
  v58 = &a2[v28[53]];
  *v58 = 0;
  *(v58 + 1) = 0;
  *&a2[v28[54]] = 0;
  v59 = &a2[v28[55]];
  *v59 = 0;
  *(v59 + 1) = 0xE000000000000000;
  *&a2[v28[56]] = 0;
  a2[v28[57]] = 1;
  return result;
}

double sub_1000319AC@<D0>(char *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100006658(v2);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v5;
  v56 = v4;

  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = [objc_opt_self() mainScreen];
  [v11 scale];
  v13 = v12;

  v14 = objc_opt_self();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 _applicationIconImageForBundleIdentifier:v15 format:2 scale:v13];

  if (!v16)
  {
    v16 = [objc_allocWithZone(UIImage) init];
  }

  v17 = String._bridgeToObjectiveC()();
  v18 = sub_100006658(v17);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = type metadata accessor for HomePodSetupViewModel(0);
  v23 = v22[6];
  v24 = type metadata accessor for AdjustedMovie(0);
  (*(*(v24 - 8) + 56))(&a1[v23], 1, 1, v24);
  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000BD050;
  *(v25 + 32) = v8;
  *(v25 + 40) = v10;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000BCE00;
  *(v26 + 32) = v16;
  v27 = v22[28];
  v28 = type metadata accessor for AdjustedImage(0);
  (*(*(v28 - 8) + 56))(&a1[v27], 1, 1, v28);
  v29 = v22[58];
  v30 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v30 - 8) + 56))(&a1[v29], 1, 1, v30);
  v31 = &a1[v22[14]];
  *(v31 + 4) = 0;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v32 = v16;
  v33 = String._bridgeToObjectiveC()();
  v34 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v57);
  *a1 = v56;
  *(a1 + 1) = v55;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v36 = &a1[v22[7]];
  *v36 = v19;
  *(v36 + 1) = v21;
  v37 = &a1[v22[8]];
  *v37 = 0;
  *(v37 + 1) = 0xE000000000000000;
  v38 = &a1[v22[9]];
  *v38 = 0;
  *(v38 + 1) = 0xE000000000000000;
  *&a1[v22[10]] = v25;
  *&a1[v22[11]] = v26;
  *&a1[v22[12]] = _swiftEmptyArrayStorage;
  *&a1[v22[13]] = _swiftEmptyArrayStorage;
  *&a1[v22[15]] = _swiftEmptyArrayStorage;
  *&a1[v22[16]] = _swiftEmptyArrayStorage;
  a1[v22[17]] = Int64 != 0;
  v39 = &a1[v22[18]];
  *v39 = 0;
  v39[4] = 1;
  *&a1[v22[19]] = 1;
  v40 = &a1[v22[20]];
  v41 = v57[3];
  *(v40 + 2) = v57[2];
  *(v40 + 3) = v41;
  *(v40 + 4) = v57[4];
  v42 = v57[1];
  *v40 = v57[0];
  *(v40 + 1) = v42;
  v43 = &a1[v22[21]];
  result = 0.0;
  *(v43 + 3) = 0u;
  *(v43 + 4) = 0u;
  *(v43 + 1) = 0u;
  *(v43 + 2) = 0u;
  *v43 = 0u;
  *&a1[v22[22]] = 0;
  *&a1[v22[23]] = 0;
  v45 = &a1[v22[24]];
  *v45 = 0;
  *(v45 + 1) = 0;
  v46 = &a1[v22[25]];
  *v46 = 0;
  *(v46 + 1) = 0;
  v47 = &a1[v22[26]];
  *v47 = 0;
  *(v47 + 1) = 0;
  a1[v22[27]] = 0;
  a1[v22[29]] = 0;
  *&a1[v22[30]] = 0;
  *&a1[v22[31]] = 0;
  v48 = &a1[v22[32]];
  *v48 = 0;
  v48[8] = 1;
  a1[v22[33]] = 0;
  a1[v22[34]] = 0;
  a1[v22[35]] = 0;
  *&a1[v22[36]] = 0;
  *&a1[v22[37]] = 0;
  v49 = &a1[v22[38]];
  *v49 = 0;
  *(v49 + 1) = 0xE000000000000000;
  a1[v22[39]] = 0;
  a1[v22[40]] = 0;
  *&a1[v22[41]] = 0;
  a1[v22[42]] = 0;
  a1[v22[43]] = 0;
  a1[v22[44]] = 0;
  v50 = &a1[v22[45]];
  *v50 = 0;
  *(v50 + 1) = 0xE000000000000000;
  a1[v22[46]] = 0;
  v51 = &a1[v22[47]];
  *v51 = 0;
  *(v51 + 1) = 0xE000000000000000;
  a1[v22[48]] = 0;
  v52 = &a1[v22[49]];
  *v52 = 0;
  *(v52 + 1) = 0;
  a1[v22[50]] = 0;
  *&a1[v22[51]] = 0;
  *&a1[v22[52]] = 0;
  v53 = &a1[v22[53]];
  *v53 = 0;
  *(v53 + 1) = 0;
  *&a1[v22[54]] = 0;
  v54 = &a1[v22[55]];
  *v54 = 0;
  *(v54 + 1) = 0xE000000000000000;
  *&a1[v22[56]] = 0;
  a1[v22[57]] = 1;
  return result;
}

double sub_100031F74@<D0>(char *a1@<X8>)
{
  v2 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  __chkstk_darwin(v2 - 8);
  v4 = &v54 - v3;
  v5 = String._bridgeToObjectiveC()();
  v6 = sub_100006658(v5);

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v8;
  v57 = v7;

  v9 = String._bridgeToObjectiveC()();
  v10 = sub_100006658(v9);

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = String._bridgeToObjectiveC()();
  v14 = sub_100006658(v13);

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = type metadata accessor for AdjustedMovie(0);
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  if (IsAppleInternalBuild())
  {
    v19 = String._bridgeToObjectiveC()();
    v20 = sub_100006658(v19);

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1000BB8E0;
    *(v24 + 32) = v15;
    *(v24 + 40) = v17;
    *(v24 + 48) = 0;
    *(v24 + 56) = 1;
    *(v24 + 64) = v21;
    *(v24 + 72) = v23;
    *(v24 + 80) = 1;
    *(v24 + 88) = 17;
  }

  else
  {
    sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1000BD050;
    *(v24 + 32) = v15;
    *(v24 + 40) = v17;
    *(v24 + 48) = 0;
    *(v24 + 56) = 1;
  }

  v25 = type metadata accessor for HomePodSetupViewModel(0);
  v26 = v25[28];
  v27 = type metadata accessor for AdjustedImage(0);
  (*(*(v27 - 8) + 56))(&a1[v26], 1, 1, v27);
  v28 = v25[58];
  v29 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v29 - 8) + 56))(&a1[v28], 1, 1, v29);
  v30 = &a1[v25[14]];
  *(v30 + 4) = 0;
  *v30 = 0u;
  *(v30 + 1) = 0u;
  v31 = String._bridgeToObjectiveC()();
  v32 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v58);
  v34 = v56;
  *a1 = v57;
  *(a1 + 1) = v34;
  *(a1 + 2) = v55;
  *(a1 + 3) = v12;
  sub_10003B8EC(v4, &a1[v25[6]], &unk_100101FB0, &qword_1000BD128);
  v35 = &a1[v25[7]];
  *v35 = 0;
  *(v35 + 1) = 0xE000000000000000;
  v36 = &a1[v25[8]];
  *v36 = 0;
  *(v36 + 1) = 0xE000000000000000;
  v37 = &a1[v25[9]];
  *v37 = 0;
  *(v37 + 1) = 0xE000000000000000;
  *&a1[v25[10]] = v24;
  *&a1[v25[11]] = _swiftEmptyArrayStorage;
  *&a1[v25[12]] = _swiftEmptyArrayStorage;
  *&a1[v25[13]] = _swiftEmptyArrayStorage;
  *&a1[v25[15]] = _swiftEmptyArrayStorage;
  *&a1[v25[16]] = _swiftEmptyArrayStorage;
  a1[v25[17]] = Int64 != 0;
  v38 = &a1[v25[18]];
  *v38 = 0;
  v38[4] = 1;
  *&a1[v25[19]] = 1;
  v39 = &a1[v25[20]];
  v40 = v58[3];
  *(v39 + 2) = v58[2];
  *(v39 + 3) = v40;
  *(v39 + 4) = v58[4];
  v41 = v58[1];
  *v39 = v58[0];
  *(v39 + 1) = v41;
  v42 = &a1[v25[21]];
  result = 0.0;
  *v42 = 0u;
  *(v42 + 1) = 0u;
  *(v42 + 2) = 0u;
  *(v42 + 3) = 0u;
  *(v42 + 4) = 0u;
  *&a1[v25[22]] = 0;
  *&a1[v25[23]] = 0;
  v44 = &a1[v25[24]];
  *v44 = 0;
  *(v44 + 1) = 0;
  v45 = &a1[v25[25]];
  *v45 = 0;
  *(v45 + 1) = 0;
  v46 = &a1[v25[26]];
  *v46 = 0;
  *(v46 + 1) = 0;
  a1[v25[27]] = 0;
  a1[v25[29]] = 0;
  *&a1[v25[30]] = 0;
  *&a1[v25[31]] = 0;
  v47 = &a1[v25[32]];
  *v47 = 0;
  v47[8] = 1;
  a1[v25[33]] = 0;
  a1[v25[34]] = 0;
  a1[v25[35]] = 0;
  *&a1[v25[36]] = 0;
  *&a1[v25[37]] = 0;
  v48 = &a1[v25[38]];
  *v48 = 0;
  *(v48 + 1) = 0xE000000000000000;
  a1[v25[39]] = 0;
  a1[v25[40]] = 0;
  *&a1[v25[41]] = 0;
  a1[v25[42]] = 0;
  a1[v25[43]] = 0;
  a1[v25[44]] = 0;
  v49 = &a1[v25[45]];
  *v49 = 0;
  *(v49 + 1) = 0xE000000000000000;
  a1[v25[46]] = 0;
  v50 = &a1[v25[47]];
  *v50 = 0;
  *(v50 + 1) = 0xE000000000000000;
  a1[v25[48]] = 0;
  v51 = &a1[v25[49]];
  *v51 = 0;
  *(v51 + 1) = 0;
  a1[v25[50]] = 0;
  *&a1[v25[51]] = 0;
  *&a1[v25[52]] = 0;
  v52 = &a1[v25[53]];
  *v52 = 0;
  *(v52 + 1) = 0;
  *&a1[v25[54]] = 0;
  v53 = &a1[v25[55]];
  *v53 = 0;
  *(v53 + 1) = 0xE000000000000000;
  *&a1[v25[56]] = 0;
  a1[v25[57]] = 1;
  return result;
}

double sub_10003254C@<D0>(char *a1@<X8>)
{
  v2 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  __chkstk_darwin(v2 - 8);
  v4 = &v55 - v3;
  v5 = String._bridgeToObjectiveC()();
  v6 = sub_100006658(v5);

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v8;
  v58 = v7;

  v9 = String._bridgeToObjectiveC()();
  v10 = sub_100006658(v9);

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = String._bridgeToObjectiveC()();
  v15 = sub_100006658(v14);

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = type metadata accessor for AdjustedMovie(0);
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  if (IsAppleInternalBuild())
  {
    v20 = String._bridgeToObjectiveC()();
    v21 = sub_100006658(v20);
    v56 = v18;
    v22 = v21;

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1000BB8E0;
    v27 = v56;
    *(v26 + 32) = v16;
    *(v26 + 40) = v27;
    *(v26 + 48) = 0;
    *(v26 + 56) = 1;
    *(v26 + 64) = v23;
    *(v26 + 72) = v25;
    *(v26 + 80) = 1;
    *(v26 + 88) = 17;
  }

  else
  {
    sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1000BD050;
    *(v26 + 32) = v16;
    *(v26 + 40) = v18;
    *(v26 + 48) = 0;
    *(v26 + 56) = 1;
  }

  v28 = type metadata accessor for HomePodSetupViewModel(0);
  sub_10004E01C(0, 0, &a1[v28[28]]);
  v29 = v28[58];
  v30 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v30 - 8) + 56))(&a1[v29], 1, 1, v30);
  v31 = &a1[v28[14]];
  *(v31 + 4) = 0;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v32 = String._bridgeToObjectiveC()();
  v33 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v59);
  v35 = v57;
  *a1 = v58;
  *(a1 + 1) = v35;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  sub_10003B8EC(v4, &a1[v28[6]], &unk_100101FB0, &qword_1000BD128);
  v36 = &a1[v28[7]];
  *v36 = 0;
  *(v36 + 1) = 0xE000000000000000;
  v37 = &a1[v28[8]];
  *v37 = 0;
  *(v37 + 1) = 0xE000000000000000;
  v38 = &a1[v28[9]];
  *v38 = 0;
  *(v38 + 1) = 0xE000000000000000;
  *&a1[v28[10]] = v26;
  *&a1[v28[11]] = _swiftEmptyArrayStorage;
  *&a1[v28[12]] = _swiftEmptyArrayStorage;
  *&a1[v28[13]] = _swiftEmptyArrayStorage;
  *&a1[v28[15]] = _swiftEmptyArrayStorage;
  *&a1[v28[16]] = _swiftEmptyArrayStorage;
  a1[v28[17]] = Int64 != 0;
  v39 = &a1[v28[18]];
  *v39 = 0;
  v39[4] = 1;
  *&a1[v28[19]] = 1;
  v40 = &a1[v28[20]];
  v41 = v59[3];
  *(v40 + 2) = v59[2];
  *(v40 + 3) = v41;
  *(v40 + 4) = v59[4];
  v42 = v59[1];
  *v40 = v59[0];
  *(v40 + 1) = v42;
  v43 = &a1[v28[21]];
  result = 0.0;
  *v43 = 0u;
  *(v43 + 1) = 0u;
  *(v43 + 2) = 0u;
  *(v43 + 3) = 0u;
  *(v43 + 4) = 0u;
  *&a1[v28[22]] = 0;
  *&a1[v28[23]] = 0;
  v45 = &a1[v28[24]];
  *v45 = 0;
  *(v45 + 1) = 0;
  v46 = &a1[v28[25]];
  *v46 = 0;
  *(v46 + 1) = 0;
  v47 = &a1[v28[26]];
  *v47 = 0;
  *(v47 + 1) = 0;
  a1[v28[27]] = 0;
  a1[v28[29]] = 0;
  *&a1[v28[30]] = 0;
  *&a1[v28[31]] = 0;
  v48 = &a1[v28[32]];
  *v48 = 0;
  v48[8] = 1;
  a1[v28[33]] = 0;
  a1[v28[34]] = 0;
  a1[v28[35]] = 0;
  *&a1[v28[36]] = 0;
  *&a1[v28[37]] = 0;
  v49 = &a1[v28[38]];
  *v49 = 0;
  *(v49 + 1) = 0xE000000000000000;
  a1[v28[39]] = 0;
  a1[v28[40]] = 0;
  *&a1[v28[41]] = 0;
  a1[v28[42]] = 0;
  a1[v28[43]] = 0;
  a1[v28[44]] = 0;
  v50 = &a1[v28[45]];
  *v50 = 0;
  *(v50 + 1) = 0xE000000000000000;
  a1[v28[46]] = 0;
  v51 = &a1[v28[47]];
  *v51 = 0;
  *(v51 + 1) = 0xE000000000000000;
  a1[v28[48]] = 0;
  v52 = &a1[v28[49]];
  *v52 = 0;
  *(v52 + 1) = 0;
  a1[v28[50]] = 0;
  *&a1[v28[51]] = 0;
  *&a1[v28[52]] = 0;
  v53 = &a1[v28[53]];
  *v53 = 0;
  *(v53 + 1) = 0;
  *&a1[v28[54]] = 0;
  v54 = &a1[v28[55]];
  *v54 = 0;
  *(v54 + 1) = 0xE000000000000000;
  *&a1[v28[56]] = 0;
  a1[v28[57]] = 1;
  return result;
}

double sub_100032B1C@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_100006658(v4);

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v7;
  v69 = v6;

  sub_10000E6C4(&qword_100102388, qword_1000BE250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD050;
  v10 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSSID);
  v9 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSSID + 8);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_100039F8C();
  *(inited + 32) = v10;
  *(inited + 40) = v9;
  *&v70[0] = 0;
  *(&v70[0] + 1) = 0xE000000000000000;

  sub_100038F50(inited, v70, 0xD000000000000011, 0x80000001000C16D0, 16421, 0xE200000000000000);
  swift_setDeallocating();
  sub_10000E6C4(&qword_1001023D8, &unk_1000BD290);
  swift_arrayDestroy();
  v66 = *(&v70[0] + 1);
  v67 = *&v70[0];
  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  v13 = String._bridgeToObjectiveC()();
  v14 = sub_100006658(v13);

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000BD050;
  v19 = sub_100006658(v12);

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  *(v18 + 48) = 0;
  *(v18 + 56) = 1;
  if (*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_showPickerOption) == 1)
  {
    v18 = sub_1000535F8(1, 2, 1, v18);
    *(v18 + 16) = 2;
    *(v18 + 64) = v15;
    *(v18 + 72) = v17;
    *(v18 + 80) = 1;
    *(v18 + 88) = 2;
  }

  else
  {
  }

  v23 = [objc_opt_self() systemFontOfSize:72.0 weight:UIFontWeightRegular];
  v24 = objc_opt_self();
  v25 = [v24 configurationWithFont:v23];

  v26 = [objc_opt_self() systemBlueColor];
  v27 = [v24 configurationWithHierarchicalColor:v26];

  v28 = String._bridgeToObjectiveC()();
  v29 = [objc_opt_self() _systemImageNamed:v28];

  v30 = v29;
  if (!v29)
  {
    v30 = [objc_allocWithZone(UIImage) init];
  }

  v31 = v29;
  v32 = [v30 imageByApplyingSymbolConfiguration:v25];

  if (!v32)
  {
    v32 = [objc_allocWithZone(UIImage) init];
  }

  v33 = [v32 imageByApplyingSymbolConfiguration:v27];
  if (!v33)
  {
    v33 = [objc_allocWithZone(UIImage) init];
  }

  v34 = type metadata accessor for HomePodSetupViewModel(0);
  v35 = v34[6];
  v36 = type metadata accessor for AdjustedMovie(0);
  (*(*(v36 - 8) + 56))(&a2[v35], 1, 1, v36);
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1000BCE00;
  *(v37 + 32) = v33;
  v38 = v34[28];
  v39 = type metadata accessor for AdjustedImage(0);
  (*(*(v39 - 8) + 56))(&a2[v38], 1, 1, v39);
  v40 = v34[58];
  v41 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v41 - 8) + 56))(&a2[v40], 1, 1, v41);
  v42 = &a2[v34[14]];
  *(v42 + 4) = 0;
  *v42 = 0u;
  *(v42 + 1) = 0u;
  v43 = v33;
  v44 = String._bridgeToObjectiveC()();
  v45 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v70);
  *a2 = v69;
  *(a2 + 1) = v68;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v47 = &a2[v34[7]];
  *v47 = v67;
  *(v47 + 1) = v66;
  v48 = &a2[v34[8]];
  *v48 = 0;
  *(v48 + 1) = 0xE000000000000000;
  v49 = &a2[v34[9]];
  *v49 = 0;
  *(v49 + 1) = 0xE000000000000000;
  *&a2[v34[10]] = v18;
  *&a2[v34[11]] = v37;
  *&a2[v34[12]] = _swiftEmptyArrayStorage;
  *&a2[v34[13]] = _swiftEmptyArrayStorage;
  *&a2[v34[15]] = _swiftEmptyArrayStorage;
  *&a2[v34[16]] = _swiftEmptyArrayStorage;
  a2[v34[17]] = Int64 != 0;
  v50 = &a2[v34[18]];
  *v50 = 0;
  v50[4] = 1;
  *&a2[v34[19]] = 1;
  v51 = &a2[v34[20]];
  v52 = v70[3];
  *(v51 + 2) = v70[2];
  *(v51 + 3) = v52;
  *(v51 + 4) = v70[4];
  v53 = v70[1];
  *v51 = v70[0];
  *(v51 + 1) = v53;
  v54 = &a2[v34[21]];
  result = 0.0;
  *(v54 + 3) = 0u;
  *(v54 + 4) = 0u;
  *(v54 + 1) = 0u;
  *(v54 + 2) = 0u;
  *v54 = 0u;
  *&a2[v34[22]] = 0;
  *&a2[v34[23]] = 0;
  v56 = &a2[v34[24]];
  *v56 = 0;
  *(v56 + 1) = 0;
  v57 = &a2[v34[25]];
  *v57 = 0;
  *(v57 + 1) = 0;
  v58 = &a2[v34[26]];
  *v58 = 0;
  *(v58 + 1) = 0;
  a2[v34[27]] = 0;
  a2[v34[29]] = 0;
  *&a2[v34[30]] = 0;
  *&a2[v34[31]] = 0;
  v59 = &a2[v34[32]];
  *v59 = 0;
  v59[8] = 1;
  a2[v34[33]] = 0;
  a2[v34[34]] = 0;
  a2[v34[35]] = 0;
  *&a2[v34[36]] = 0;
  *&a2[v34[37]] = 0;
  v60 = &a2[v34[38]];
  *v60 = 0;
  *(v60 + 1) = 0xE000000000000000;
  a2[v34[39]] = 0;
  a2[v34[40]] = 0;
  *&a2[v34[41]] = 0;
  a2[v34[42]] = 0;
  a2[v34[43]] = 0;
  a2[v34[44]] = 0;
  v61 = &a2[v34[45]];
  *v61 = 0;
  *(v61 + 1) = 0xE000000000000000;
  a2[v34[46]] = 0;
  v62 = &a2[v34[47]];
  *v62 = 0;
  *(v62 + 1) = 0xE000000000000000;
  a2[v34[48]] = 0;
  v63 = &a2[v34[49]];
  *v63 = 0;
  *(v63 + 1) = 0;
  a2[v34[50]] = 0;
  *&a2[v34[51]] = 0;
  *&a2[v34[52]] = 0;
  v64 = &a2[v34[53]];
  *v64 = 0;
  *(v64 + 1) = 0;
  *&a2[v34[54]] = 0;
  v65 = &a2[v34[55]];
  *v65 = 0;
  *(v65 + 1) = 0xE000000000000000;
  *&a2[v34[56]] = 0;
  a2[v34[57]] = 1;
  return result;
}

uint64_t sub_100033328@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  __chkstk_darwin(v4 - 8);
  v6 = &v61 - v5;
  v7 = sub_10000E6C4(&unk_100101FB0, &qword_1000BD128);
  __chkstk_darwin(v7 - 8);
  v9 = &v61 - v8;
  v10 = String._bridgeToObjectiveC()();
  v11 = sub_100006658(v10);

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v13;
  v65 = v12;

  SFDeviceClassCodeGet();
  v14 = String._bridgeToObjectiveC()();
  v15 = sub_100006658(v14);

  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000BD050;
  v17 = String._bridgeToObjectiveC()();

  v18 = sub_100006658(v17);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  if (SFDeviceClassCodeGet() == 1)
  {
    v22 = sub_100006658(v15);

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v27 = *(v16 + 16);
    v26 = *(v16 + 24);
    if (v27 >= v26 >> 1)
    {
      v16 = sub_1000535F8((v26 > 1), v27 + 1, 1, v16);
    }

    *(v16 + 16) = v27 + 1;
    v28 = v16 + 32 * v27;
    *(v28 + 32) = v23;
    *(v28 + 40) = v25;
    *(v28 + 48) = 1;
    *(v28 + 56) = 2;
  }

  else
  {
  }

  v29 = type metadata accessor for AdjustedMovie(0);
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  v30 = v6;
  sub_10004E01C(0, 0, v6);
  v63 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_voiceRecognitionEnabled);
  v62 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_jsEnabled);
  v31 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSiriLanguageCode + 8);
  if (v31)
  {
    v61 = *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSiriLanguageCode);
    v32 = v31;
  }

  else
  {
    v32 = 0xE500000000000000;
    v61 = 0x53552D6E65;
  }

  v33 = type metadata accessor for HomePodSetupViewModel(0);
  v34 = v33[58];
  v35 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v35 - 8) + 56))(&a2[v34], 1, 1, v35);
  v36 = &a2[v33[14]];
  *(v36 + 4) = 0;
  *v36 = 0u;
  *(v36 + 1) = 0u;

  v37 = String._bridgeToObjectiveC()();
  v38 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v66);
  v40 = v64;
  *a2 = v65;
  *(a2 + 1) = v40;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  sub_10003B8EC(v9, &a2[v33[6]], &unk_100101FB0, &qword_1000BD128);
  v41 = &a2[v33[7]];
  *v41 = 0;
  *(v41 + 1) = 0xE000000000000000;
  v42 = &a2[v33[8]];
  *v42 = 0;
  *(v42 + 1) = 0xE000000000000000;
  v43 = &a2[v33[9]];
  *v43 = 0;
  *(v43 + 1) = 0xE000000000000000;
  *&a2[v33[10]] = v16;
  *&a2[v33[11]] = _swiftEmptyArrayStorage;
  *&a2[v33[12]] = _swiftEmptyArrayStorage;
  *&a2[v33[13]] = _swiftEmptyArrayStorage;
  *&a2[v33[15]] = _swiftEmptyArrayStorage;
  *&a2[v33[16]] = _swiftEmptyArrayStorage;
  a2[v33[17]] = Int64 != 0;
  v44 = &a2[v33[18]];
  *v44 = 0;
  v44[4] = 1;
  *&a2[v33[19]] = 1;
  v45 = &a2[v33[20]];
  v46 = v66[3];
  *(v45 + 2) = v66[2];
  *(v45 + 3) = v46;
  *(v45 + 4) = v66[4];
  v47 = v66[1];
  *v45 = v66[0];
  *(v45 + 1) = v47;
  v48 = &a2[v33[21]];
  *v48 = 0u;
  *(v48 + 1) = 0u;
  *(v48 + 2) = 0u;
  *(v48 + 3) = 0u;
  *(v48 + 4) = 0u;
  *&a2[v33[22]] = 0;
  *&a2[v33[23]] = 0;
  v49 = &a2[v33[24]];
  *v49 = 0;
  *(v49 + 1) = 0;
  v50 = &a2[v33[25]];
  *v50 = 0;
  *(v50 + 1) = 0;
  v51 = &a2[v33[26]];
  *v51 = 0;
  *(v51 + 1) = 0;
  a2[v33[27]] = 0;
  result = sub_10003B8EC(v30, &a2[v33[28]], &unk_100102610, &unk_1000BD130);
  a2[v33[29]] = 0;
  *&a2[v33[30]] = 0;
  *&a2[v33[31]] = 0;
  v53 = &a2[v33[32]];
  *v53 = 0;
  v53[8] = 1;
  a2[v33[33]] = 0;
  a2[v33[34]] = 0;
  a2[v33[35]] = 0;
  *&a2[v33[36]] = 0;
  *&a2[v33[37]] = 0;
  v54 = &a2[v33[38]];
  *v54 = 0;
  *(v54 + 1) = 0xE000000000000000;
  a2[v33[39]] = 0;
  a2[v33[40]] = 1;
  *&a2[v33[41]] = 0;
  a2[v33[42]] = 0;
  v55 = v62;
  a2[v33[43]] = v63;
  a2[v33[44]] = v55;
  v56 = &a2[v33[45]];
  *v56 = v61;
  *(v56 + 1) = v32;
  a2[v33[46]] = 0;
  v57 = &a2[v33[47]];
  *v57 = 0;
  *(v57 + 1) = 0xE000000000000000;
  a2[v33[48]] = 0;
  v58 = &a2[v33[49]];
  *v58 = 0;
  *(v58 + 1) = 0;
  a2[v33[50]] = 0;
  *&a2[v33[51]] = 0;
  *&a2[v33[52]] = 0;
  v59 = &a2[v33[53]];
  *v59 = 0;
  *(v59 + 1) = 0;
  *&a2[v33[54]] = 0;
  v60 = &a2[v33[55]];
  *v60 = 0;
  *(v60 + 1) = 0xE000000000000000;
  *&a2[v33[56]] = 0;
  a2[v33[57]] = 1;
  return result;
}

double sub_1000339E4@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = SFDeviceClassCodeGet();
  if (v4 == 3)
  {
    v5 = 0xD000000000000021;
  }

  else
  {
    v5 = 0xD000000000000023;
  }

  if (v4 == 3)
  {
    v6 = "_P2P_ROUTER_TITLE";
  }

  else
  {
    v6 = "PERSONAL_REQUESTS_USE";
  }

  if (*(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode) == 5)
  {
    *&v65[0] = v5;
    *(&v65[0] + 1) = v6 | 0x8000000000000000;

    v7._countAndFlagsBits = 1768843629;
    v7._object = 0xE400000000000000;
    String.append(_:)(v7);
  }

  v8 = WiFiCopyCurrentNetworkInfo();
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *&v65[0] = 0;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  if (sub_10004B0F0() || *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_amsMarketingItem) && *(a1 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_acceptedMusicTerms) == 1)
  {
    v10 = String._bridgeToObjectiveC()();
    v11 = 21;
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();
    v11 = 1;
  }

  v12 = sub_100006658(v10);

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000BD050;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  *(v16 + 48) = 0;
  *(v16 + 56) = v11;
  sub_10000E6C4(&qword_100102388, qword_1000BE250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD050;
  *(inited + 56) = &type metadata for String;
  v18 = sub_100039F8C();
  *(inited + 32) = 0;
  *(inited + 64) = v18;
  *(inited + 40) = 0xE000000000000000;
  *&v65[0] = 0;
  *(&v65[0] + 1) = 0xE000000000000000;
  sub_100038F50(inited, v65, 0xD00000000000001FLL, 0x80000001000C3470, 16421, 0xE200000000000000);
  swift_setDeallocating();
  sub_10000E6C4(&qword_1001023D8, &unk_1000BD290);
  swift_arrayDestroy();
  v63 = *(&v65[0] + 1);
  v64 = *&v65[0];
  v19 = String._bridgeToObjectiveC()();
  v20 = sub_100006658(v19);

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = type metadata accessor for HomePodSetupViewModel(0);
  v25 = v24[6];
  v26 = type metadata accessor for AdjustedMovie(0);
  (*(*(v26 - 8) + 56))(&a2[v25], 1, 1, v26);
  sub_10003A7C4();
  v28 = v27;

  v29 = String._bridgeToObjectiveC()();
  v30 = sub_100006658(v29);

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v32;
  v62 = v31;

  v33 = v24[28];
  v34 = type metadata accessor for AdjustedImage(0);
  (*(*(v34 - 8) + 56))(&a2[v33], 1, 1, v34);
  v35 = v24[58];
  v36 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v36 - 8) + 56))(&a2[v35], 1, 1, v36);
  v37 = &a2[v24[14]];
  *(v37 + 4) = 0;
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v38 = String._bridgeToObjectiveC()();
  v39 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v65);
  *a2 = v21;
  *(a2 + 1) = v23;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v41 = &a2[v24[7]];
  *v41 = v64;
  *(v41 + 1) = v63;
  v42 = &a2[v24[8]];
  *v42 = 0;
  *(v42 + 1) = 0xE000000000000000;
  v43 = &a2[v24[9]];
  *v43 = 0;
  *(v43 + 1) = 0xE000000000000000;
  *&a2[v24[10]] = v16;
  *&a2[v24[11]] = v28;
  *&a2[v24[12]] = _swiftEmptyArrayStorage;
  *&a2[v24[13]] = _swiftEmptyArrayStorage;
  *&a2[v24[15]] = _swiftEmptyArrayStorage;
  *&a2[v24[16]] = _swiftEmptyArrayStorage;
  a2[v24[17]] = Int64 != 0;
  v44 = &a2[v24[18]];
  *v44 = 0;
  v44[4] = 1;
  *&a2[v24[19]] = 1;
  v45 = &a2[v24[20]];
  v46 = v65[3];
  v47 = v65[4];
  *(v45 + 2) = v65[2];
  *(v45 + 3) = v46;
  *(v45 + 4) = v47;
  v48 = v65[1];
  *v45 = v65[0];
  *(v45 + 1) = v48;
  v49 = &a2[v24[21]];
  result = 0.0;
  *(v49 + 3) = 0u;
  *(v49 + 4) = 0u;
  *(v49 + 1) = 0u;
  *(v49 + 2) = 0u;
  *v49 = 0u;
  *&a2[v24[22]] = 0;
  *&a2[v24[23]] = 0;
  v51 = &a2[v24[24]];
  *v51 = v62;
  v51[1] = v61;
  v52 = &a2[v24[25]];
  *v52 = 0;
  *(v52 + 1) = 0;
  v53 = &a2[v24[26]];
  *v53 = 0xD000000000000025;
  *(v53 + 1) = 0x80000001000C2F30;
  a2[v24[27]] = 0;
  a2[v24[29]] = 0;
  *&a2[v24[30]] = 0;
  *&a2[v24[31]] = 0;
  v54 = &a2[v24[32]];
  *v54 = 0;
  v54[8] = 1;
  a2[v24[33]] = 0;
  a2[v24[34]] = 0;
  a2[v24[35]] = 0;
  *&a2[v24[36]] = 0;
  *&a2[v24[37]] = 0;
  v55 = &a2[v24[38]];
  *v55 = 0;
  *(v55 + 1) = 0xE000000000000000;
  a2[v24[39]] = 0;
  a2[v24[40]] = 0;
  *&a2[v24[41]] = 0;
  a2[v24[42]] = 0;
  a2[v24[43]] = 0;
  a2[v24[44]] = 0;
  v56 = &a2[v24[45]];
  *v56 = 0;
  *(v56 + 1) = 0xE000000000000000;
  a2[v24[46]] = 0;
  v57 = &a2[v24[47]];
  *v57 = 0;
  *(v57 + 1) = 0xE000000000000000;
  a2[v24[48]] = 0;
  v58 = &a2[v24[49]];
  *v58 = 0;
  *(v58 + 1) = 0;
  a2[v24[50]] = 0;
  *&a2[v24[51]] = 0;
  *&a2[v24[52]] = 0;
  v59 = &a2[v24[53]];
  *v59 = 0;
  *(v59 + 1) = 0;
  *&a2[v24[54]] = 0;
  v60 = &a2[v24[55]];
  *v60 = 0;
  *(v60 + 1) = 0xE000000000000000;
  *&a2[v24[56]] = 0;
  a2[v24[57]] = 0;
  return result;
}

double sub_100034150@<D0>(char *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100006658(v2);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v5;
  v77 = v4;

  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v9;
  v75 = v8;

  v10 = String._bridgeToObjectiveC()();
  v11 = sub_100006658(v10);

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = String._bridgeToObjectiveC()();
  v16 = sub_100006658(v15);

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = String._bridgeToObjectiveC()();
  v21 = sub_100006658(v20);

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v23;
  v71 = v22;

  v24 = String._bridgeToObjectiveC()();
  v25 = sub_100006658(v24);

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v27;
  v73 = v26;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000BB8E0;
  *(v28 + 32) = v12;
  *(v28 + 40) = v14;
  *(v28 + 48) = 0;
  *(v28 + 56) = 1;
  *(v28 + 64) = v17;
  *(v28 + 72) = v19;
  *(v28 + 80) = 1;
  *(v28 + 88) = 2;
  v29 = [objc_opt_self() systemFontOfSize:72.0 weight:UIFontWeightRegular];
  v30 = objc_opt_self();
  v31 = [v30 configurationWithFont:v29];

  v32 = [objc_opt_self() purpleColor];
  v33 = [v30 configurationWithHierarchicalColor:v32];

  v34 = String._bridgeToObjectiveC()();
  v35 = [objc_opt_self() _systemImageNamed:v34];

  v36 = v35;
  if (!v35)
  {
    v36 = [objc_allocWithZone(UIImage) init];
  }

  v37 = v35;
  v38 = [v36 imageByApplyingSymbolConfiguration:v31];

  if (!v38)
  {
    v38 = [objc_allocWithZone(UIImage) init];
  }

  v39 = [v38 imageByApplyingSymbolConfiguration:v33];
  if (!v39)
  {
    v39 = [objc_allocWithZone(UIImage) init];
  }

  v40 = type metadata accessor for HomePodSetupViewModel(0);
  v41 = v40[6];
  v42 = type metadata accessor for AdjustedMovie(0);
  (*(*(v42 - 8) + 56))(&a1[v41], 1, 1, v42);
  v43 = v40[28];
  v44 = type metadata accessor for AdjustedImage(0);
  (*(*(v44 - 8) + 56))(&a1[v43], 1, 1, v44);
  v45 = v40[58];
  v46 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v46 - 8) + 56))(&a1[v45], 1, 1, v46);
  v47 = &a1[v40[14]];
  *(v47 + 4) = 0;
  *v47 = 0u;
  *(v47 + 1) = 0u;
  v48 = String._bridgeToObjectiveC()();
  v49 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v78);
  *a1 = v77;
  *(a1 + 1) = v76;
  *(a1 + 2) = v75;
  *(a1 + 3) = v74;
  v51 = &a1[v40[7]];
  *v51 = 0;
  *(v51 + 1) = 0xE000000000000000;
  v52 = &a1[v40[8]];
  *v52 = v71;
  *(v52 + 1) = v70;
  v53 = &a1[v40[9]];
  *v53 = 0;
  *(v53 + 1) = 0xE000000000000000;
  *&a1[v40[10]] = v28;
  *&a1[v40[11]] = _swiftEmptyArrayStorage;
  *&a1[v40[12]] = _swiftEmptyArrayStorage;
  *&a1[v40[13]] = _swiftEmptyArrayStorage;
  *&a1[v40[15]] = _swiftEmptyArrayStorage;
  *&a1[v40[16]] = _swiftEmptyArrayStorage;
  a1[v40[17]] = Int64 != 0;
  v54 = &a1[v40[18]];
  *v54 = 0;
  v54[4] = 1;
  *&a1[v40[19]] = 1;
  v55 = &a1[v40[20]];
  v56 = v78[3];
  *(v55 + 2) = v78[2];
  *(v55 + 3) = v56;
  *(v55 + 4) = v78[4];
  v57 = v78[1];
  *v55 = v78[0];
  *(v55 + 1) = v57;
  v58 = &a1[v40[21]];
  result = 0.0;
  *(v58 + 3) = 0u;
  *(v58 + 4) = 0u;
  *(v58 + 1) = 0u;
  *(v58 + 2) = 0u;
  *v58 = 0u;
  *&a1[v40[22]] = 0;
  *&a1[v40[23]] = 0;
  v60 = &a1[v40[24]];
  *v60 = v73;
  *(v60 + 1) = v72;
  v61 = &a1[v40[25]];
  *v61 = 0;
  *(v61 + 1) = 0;
  v62 = &a1[v40[26]];
  *v62 = 0;
  *(v62 + 1) = 0;
  a1[v40[27]] = 0;
  a1[v40[29]] = 0;
  *&a1[v40[30]] = 0;
  *&a1[v40[31]] = 0;
  v63 = &a1[v40[32]];
  *v63 = 0;
  v63[8] = 1;
  a1[v40[33]] = 0;
  a1[v40[34]] = 0;
  a1[v40[35]] = 0;
  *&a1[v40[36]] = 0;
  *&a1[v40[37]] = 0;
  v64 = &a1[v40[38]];
  *v64 = 0;
  *(v64 + 1) = 0xE000000000000000;
  a1[v40[39]] = 0;
  a1[v40[40]] = 0;
  *&a1[v40[41]] = 0;
  a1[v40[42]] = 0;
  a1[v40[43]] = 0;
  a1[v40[44]] = 0;
  v65 = &a1[v40[45]];
  *v65 = 0;
  *(v65 + 1) = 0xE000000000000000;
  a1[v40[46]] = 0;
  v66 = &a1[v40[47]];
  *v66 = 0;
  *(v66 + 1) = 0xE000000000000000;
  a1[v40[48]] = 0;
  v67 = &a1[v40[49]];
  *v67 = 0;
  *(v67 + 1) = 0;
  a1[v40[50]] = 1;
  *&a1[v40[51]] = 0;
  *&a1[v40[52]] = 0;
  v68 = &a1[v40[53]];
  *v68 = 0;
  *(v68 + 1) = 0;
  *&a1[v40[54]] = 0;
  v69 = &a1[v40[55]];
  *v69 = 0;
  *(v69 + 1) = 0xE000000000000000;
  *&a1[v40[56]] = 0;
  a1[v40[57]] = 1;
  return result;
}

double sub_1000348A0@<D0>(char *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100006658(v2);

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000BD050;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  *(v16 + 48) = 0;
  *(v16 + 56) = 8;
  v17 = type metadata accessor for HomePodSetupViewModel(0);
  v18 = v17[6];
  v19 = type metadata accessor for AdjustedMovie(0);
  (*(*(v19 - 8) + 56))(&a1[v18], 1, 1, v19);
  v20 = v17[28];
  v21 = type metadata accessor for AdjustedImage(0);
  (*(*(v21 - 8) + 56))(&a1[v20], 1, 1, v21);
  v22 = v17[58];
  v23 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  (*(*(v23 - 8) + 56))(&a1[v22], 1, 1, v23);
  v24 = &a1[v17[14]];
  *(v24 + 4) = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = String._bridgeToObjectiveC()();
  v26 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  sub_1000660A0(v48);
  *a1 = v47;
  *(a1 + 1) = v5;
  *(a1 + 2) = v8;
  *(a1 + 3) = v10;
  v28 = &a1[v17[7]];
  *v28 = 0;
  *(v28 + 1) = 0xE000000000000000;
  v29 = &a1[v17[8]];
  *v29 = 0;
  *(v29 + 1) = 0xE000000000000000;
  v30 = &a1[v17[9]];
  *v30 = 0;
  *(v30 + 1) = 0xE000000000000000;
  *&a1[v17[10]] = v16;
  *&a1[v17[11]] = _swiftEmptyArrayStorage;
  *&a1[v17[12]] = _swiftEmptyArrayStorage;
  *&a1[v17[13]] = _swiftEmptyArrayStorage;
  *&a1[v17[15]] = _swiftEmptyArrayStorage;
  *&a1[v17[16]] = _swiftEmptyArrayStorage;
  a1[v17[17]] = Int64 != 0;
  v31 = &a1[v17[18]];
  *v31 = 0;
  v31[4] = 1;
  *&a1[v17[19]] = 1;
  v32 = &a1[v17[20]];
  v33 = v48[3];
  *(v32 + 2) = v48[2];
  *(v32 + 3) = v33;
  *(v32 + 4) = v48[4];
  v34 = v48[1];
  *v32 = v48[0];
  *(v32 + 1) = v34;
  v35 = &a1[v17[21]];
  result = 0.0;
  *(v35 + 3) = 0u;
  *(v35 + 4) = 0u;
  *(v35 + 1) = 0u;
  *(v35 + 2) = 0u;
  *v35 = 0u;
  *&a1[v17[22]] = 0;
  *&a1[v17[23]] = 0;
  v37 = &a1[v17[24]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &a1[v17[25]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v39 = &a1[v17[26]];
  *v39 = 0;
  *(v39 + 1) = 0;
  a1[v17[27]] = 0;
  a1[v17[29]] = 0;
  *&a1[v17[30]] = 0;
  *&a1[v17[31]] = 0;
  v40 = &a1[v17[32]];
  *v40 = 0;
  v40[8] = 1;
  a1[v17[33]] = 0;
  a1[v17[34]] = 0;
  a1[v17[35]] = 0;
  *&a1[v17[36]] = 0;
  *&a1[v17[37]] = 0;
  v41 = &a1[v17[38]];
  *v41 = 0;
  *(v41 + 1) = 0xE000000000000000;
  a1[v17[39]] = 0;
  a1[v17[40]] = 0;
  *&a1[v17[41]] = 0;
  a1[v17[42]] = 0;
  a1[v17[43]] = 0;
  a1[v17[44]] = 0;
  v42 = &a1[v17[45]];
  *v42 = 0;
  *(v42 + 1) = 0xE000000000000000;
  a1[v17[46]] = 0;
  v43 = &a1[v17[47]];
  *v43 = 0;
  *(v43 + 1) = 0xE000000000000000;
  a1[v17[48]] = 0;
  v44 = &a1[v17[49]];
  *v44 = 0;
  *(v44 + 1) = 0;
  a1[v17[50]] = 0;
  *&a1[v17[51]] = 0;
  *&a1[v17[52]] = 0;
  v45 = &a1[v17[53]];
  *v45 = 0;
  *(v45 + 1) = 0;
  *&a1[v17[54]] = 0;
  v46 = &a1[v17[55]];
  *v46 = 0;
  *(v46 + 1) = 0xE000000000000000;
  *&a1[v17[56]] = 0;
  a1[v17[57]] = 1;
  return result;
}