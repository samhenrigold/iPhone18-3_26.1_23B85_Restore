void *sub_10071BFF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal16DrawingAssetView_drawingAsset);
  v2 = v1;
  return v1;
}

void sub_10071C024(uint64_t a1, char a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtC7Journal16DrawingAssetView_toolsVisible) = a2;
  v5 = OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView;
  v6 = *(v2 + OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView);
  if (v6)
  {
    v8 = *&v6[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
    v9 = v6;
    v10 = [v8 view];
    if (!v10)
    {
      __break(1u);
      goto LABEL_14;
    }

    v11 = v10;
    v12 = sub_100544E50();
    [v12 setVisible:a2 & 1 forFirstResponder:v11];

    v13 = a1 + OBJC_IVAR____TtC7Journal24PlatformCanvasToolPicker_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 8);
      ObjectType = swift_getObjectType();
      (*(v14 + 8))(a1, a2 & 1, ObjectType, v14);
      swift_unknownObjectRelease();
    }
  }

  if ((a2 & 1) == 0)
  {
    return;
  }

  v16 = *(v3 + v5);
  if (!v16)
  {
    return;
  }

  v17 = *&v16[OBJC_IVAR____TtC7Journal25PaperKitDrawingCanvasView_paperKitViewController];
  v18 = v16;
  v19 = [v17 view];
  if (!v19)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v20 = v19;
  [v19 becomeFirstResponder];
}

id sub_10071C26C(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView] = 0;
  *&v1[OBJC_IVAR____TtC7Journal16DrawingAssetView_drawingAsset] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC7Journal16DrawingAssetView_toolsVisible] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DrawingAssetView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_10071C334()
{

  return swift_unknownObjectWeakDestroy();
}

id sub_10071C384(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DrawingAssetView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10071C438()
{
  result = qword_100ADC610;
  if (!qword_100ADC610)
  {
    type metadata accessor for PaperMarkup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC610);
  }

  return result;
}

id sub_10071C490(id a1)
{
  v2 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v2 - 8);
  v256 = &v247[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v257 = &v247[-v5];
  __chkstk_darwin(v6);
  v252 = &v247[-v7];
  __chkstk_darwin(v8);
  v253 = &v247[-v9];
  v10 = type metadata accessor for URL();
  v267 = *(v10 - 1);
  v268 = v10;
  __chkstk_darwin(v10);
  v265 = &v247[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v266 = &v247[-v13];
  v14 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v14 - 8);
  v254 = &v247[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v255 = &v247[-v17];
  __chkstk_darwin(v18);
  v20 = &v247[-v19];
  __chkstk_darwin(v21);
  v23 = &v247[-v22];
  __chkstk_darwin(v24);
  v26 = &v247[-v25];
  v270 = type metadata accessor for UUID();
  v273 = *(v270 - 8);
  __chkstk_darwin(v270);
  v28 = &v247[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v261 = &v247[-v30];
  __chkstk_darwin(v31);
  v263 = &v247[-v32];
  __chkstk_darwin(v33);
  v259 = &v247[-v34];
  __chkstk_darwin(v35);
  v262 = &v247[-v36];
  __chkstk_darwin(v37);
  v39 = &v247[-v38];
  __chkstk_darwin(v40);
  v42 = &v247[-v41];
  v43 = type metadata accessor for Logger();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v247[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100AD01A0 != -1)
  {
    swift_once();
  }

  v47 = sub_10000617C(v43, qword_100B2FF80);
  v271 = v43;
  v272 = v44;
  (*(v44 + 16))(v46, v47, v43);
  v48 = [a1 id];
  if (!v48)
  {
    v60 = a1;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 138412290;
      *(v63 + 4) = v60;
      *v64 = v60;
      v65 = v60;
      _os_log_impl(&_mh_execute_header, v61, v62, "Asset is missing id: %@", v63, 0xCu);
      sub_100004F84(v64, &unk_100AD4BB0, &unk_100941E50);
    }

    goto LABEL_11;
  }

  v269 = v46;
  v49 = v48;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for JournalEntryAssetMO();
  sub_100726084(&unk_100AEEE10, &type metadata accessor for JournalEntryAssetMO, &protocol conformance descriptor for JournalEntryAssetMO);
  v50 = RecordUploading.partialCloudKitRecord.getter();
  if (!v50)
  {
    v66 = v42;
    v67 = v273;
    v52 = v270;
    (*(v273 + 16))(v28, v66, v270);
    v68 = v269;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v69, v70))
    {

      v79 = *(v67 + 8);
      v79(v28, v52);
LABEL_39:
      v79(v66, v52);
      (*(v272 + 8))(v68, v271);
      return 0;
    }

    v71 = swift_slowAlloc();
    v260 = v66;
    v72 = v71;
    v73 = swift_slowAlloc();
    *&v274 = v73;
    *v72 = 136315138;
    sub_100726084(&qword_100AE19B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v74 = dispatch thunk of CustomStringConvertible.description.getter();
    v76 = v75;
    v77 = *(v67 + 8);
    v77(v28, v52);
    v78 = sub_100008458(v74, v76, &v274);

    *(v72 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v69, v70, "Failed to create partial CKRecord for asset: %s", v72, 0xCu);
    sub_10000BA7C(v73);

    v77(v260, v52);
LABEL_74:
    (*(v272 + 8))(v269, v271);
    return 0;
  }

  v264 = v50;
  v51 = JournalEntryAssetMO.isEntryAssetType.getter();
  v52 = v270;
  v260 = v42;
  v251 = a1;
  if (v51)
  {
    v53 = [a1 parentID];
    if (v53)
    {
      v54 = v262;
      v55 = v53;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v56 = v273;
      v57 = *(v273 + 32);
      v57(v23, v54, v52);
      v58 = *(v56 + 56);
      v58(v23, 0, 1, v52);
      v57(v26, v23, v52);
      v58(v26, 0, 1, v52);
      v59 = (*(v56 + 48))(v26, 1, v52);
    }

    else
    {
      v80 = v52;
      v81 = (v273 + 56);
      v250 = *(v273 + 56);
      v250(v23, 1, 1, v80);
      v82 = sub_100720844(a1, *&v258[OBJC_IVAR____TtC7Journal13CoreDataStack_contextPrivate]);
      if (v82)
      {
        v258 = v81;
        v83 = v250;
        v84 = v82;
        v85 = [v82 id];

        if (v85)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v86 = 0;
        }

        else
        {
          v86 = 1;
        }

        v52 = v80;
        v83(v20, v86, 1, v80);
        sub_100021CEC(v20, v26, &qword_100AD1420, &unk_10093C080);
      }

      else
      {
        v250(v26, 1, 1, v80);
        v52 = v80;
      }

      v87 = *(v273 + 48);
      if (v87(v23, 1, v52) != 1)
      {
        sub_100004F84(v23, &qword_100AD1420, &unk_10093C080);
      }

      v56 = v273;
      v59 = v87(v26, 1, v52);
    }

    if (v59 == 1)
    {
      sub_100004F84(v26, &qword_100AD1420, &unk_10093C080);
      v88 = v259;
      v66 = v260;
      (*(v56 + 16))(v259, v260, v52);
      v89 = v251;
      v68 = v269;
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v267 = swift_slowAlloc();
        v268 = swift_slowAlloc();
        *&v274 = v268;
        *v92 = 136315650;
        v93 = [v89 assetType];
        if (v93)
        {
          v94 = v93;
          v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v97 = v96;

          v52 = v270;
        }

        else
        {
          v95 = 0;
          v97 = 0xE000000000000000;
        }

        v239 = sub_100008458(v95, v97, &v274);

        *(v92 + 4) = v239;
        *(v92 + 12) = 2080;
        sub_100726084(&qword_100AE19B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v240 = dispatch thunk of CustomStringConvertible.description.getter();
        v242 = v241;
        v243 = *(v273 + 8);
        v243(v88, v52);
        v244 = sub_100008458(v240, v242, &v274);

        *(v92 + 14) = v244;
        *(v92 + 22) = 2112;
        *(v92 + 24) = v89;
        v245 = v267;
        *v267 = v89;
        v246 = v89;
        _os_log_impl(&_mh_execute_header, v90, v91, "Unable to get parent entry id for %s JournalEntryAssetMO with id %s: %@", v92, 0x20u);
        sub_100004F84(v245, &unk_100AD4BB0, &unk_100941E50);

        swift_arrayDestroy();

        v243(v260, v52);
        goto LABEL_74;
      }

      v79 = *(v56 + 8);
      v79(v88, v52);
      goto LABEL_39;
    }

    (*(v56 + 32))(v39, v26, v52);
    v98 = UUID.uuidString.getter();
    v100 = v99;
    sub_1000065A8(0, &qword_100AF02B0, CKRecordID_ptr);
    v101 = static CloudKitStackConfiguration.zone.getter();
    v102 = v56;
    v103 = [v101 zoneID];

    v104._countAndFlagsBits = v98;
    v104._object = v100;
    isa = CKRecordID.init(recordName:zoneID:)(v104, v103).super.isa;
    v106 = [objc_allocWithZone(CKReference) initWithRecordID:isa action:1];
    CKRecord.subscript.setter();

    (*(v102 + 8))(v39, v52);
    v42 = v260;
    a1 = v251;
  }

  v107 = [a1 assetMetaData];
  v108 = v265;
  if (!v107)
  {
    v134 = v42;
    v135 = v273;
    v136 = v261;
    (*(v273 + 16))(v261, v134, v52);
    v137 = a1;
    v138 = v52;
    v46 = v269;
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v268 = swift_slowAlloc();
      *&v274 = v268;
      *v141 = 136446466;
      sub_100726084(&qword_100AE19B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v145 = v144;
      v146 = v138;
      v147 = *(v273 + 8);
      v147(v136, v146);
      v148 = sub_100008458(v143, v145, &v274);

      *(v141 + 4) = v148;
      *(v141 + 12) = 2112;
      *(v141 + 14) = v137;
      *v142 = v137;
      v149 = v137;
      _os_log_impl(&_mh_execute_header, v139, v140, "JournalEntryAssetMO %{public}s is missing assetMetadata: %@", v141, 0x16u);
      sub_100004F84(v142, &unk_100AD4BB0, &unk_100941E50);

      sub_10000BA7C(v268);

      v147(v260, v270);
      goto LABEL_74;
    }

    v167 = *(v135 + 8);
    v167(v136, v138);
    v167(v134, v138);
LABEL_11:
    (*(v272 + 8))(v46, v271);
    return 0;
  }

  v109 = v107;
  v110 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v112 = v111;

  type metadata accessor for AssetsFileManager();
  v113 = UUID.uuidString.getter();
  v114 = v266;
  sub_1001D58F8(v113, v115);

  v116 = v273;
  v117 = *(v273 + 16);
  v118 = v52;
  v119 = v263;
  v259 = (v273 + 16);
  v258 = v117;
  (v117)(v263, v42, v118);
  v121 = v267;
  v120 = v268;
  (*(v267 + 16))(v108, v114, v268);
  v122 = Logger.logObject.getter();
  v123 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    v249 = swift_slowAlloc();
    *&v274 = v249;
    *v124 = 136446466;
    sub_100726084(&qword_100AE19B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v248 = v123;
    v125 = dispatch thunk of CustomStringConvertible.description.getter();
    v250 = v110;
    v261 = v112;
    v127 = v126;
    v263 = *(v116 + 8);
    (v263)(v119, v118);
    v128 = sub_100008458(v125, v127, &v274);

    *(v124 + 4) = v128;
    *(v124 + 12) = 2080;
    sub_100726084(&qword_100ADEFD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v129 = dispatch thunk of CustomStringConvertible.description.getter();
    v131 = v130;
    v132 = *(v121 + 8);
    v132(v108, v268);
    v133 = sub_100008458(v129, v131, &v274);
    v112 = v261;
    v110 = v250;

    *(v124 + 14) = v133;
    _os_log_impl(&_mh_execute_header, v122, v248, "Saving assetMetadata for JournalEntryAssetMO %{public}s to url: %s", v124, 0x16u);
    swift_arrayDestroy();

    v120 = v268;
  }

  else
  {

    v132 = *(v121 + 8);
    v132(v108, v120);
    v263 = *(v116 + 8);
    (v263)(v119, v118);
  }

  v150 = v266;
  Data.write(to:options:)();
  v261 = v112;
  v151 = objc_allocWithZone(CKAsset);
  URL._bridgeToObjectiveC()(v152);
  v154 = v153;
  v155 = [v151 initWithFileURL:v153];

  v156 = v155;
  v157 = v264;
  CKRecord.subscript.setter();

  v132(v150, v120);
  v158 = [v157 encryptedValues];
  v159 = v251;
  v160 = [v251 title];
  if (v160)
  {
    v161 = v160;
    v162 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v164 = v163;

    v165 = &protocol witness table for Data;
    v166 = &type metadata for Data;
  }

  else
  {
    v162 = 0;
    v164 = 0;
    v166 = 0;
    v165 = 0;
    *&v275 = 0;
  }

  v168 = v273;
  *&v274 = v162;
  *(&v274 + 1) = v164;
  *(&v275 + 1) = v166;
  v276 = v165;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v169 = [v157 encryptedValues];
  v170 = [v159 assetType];
  if (v170)
  {
    v171 = v170;
    v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v174 = v173;

    v175 = &protocol witness table for String;
    v176 = &type metadata for String;
  }

  else
  {
    v172 = 0;
    v174 = 0;
    v176 = 0;
    v175 = 0;
    *&v275 = 0;
  }

  v177 = v252;
  *&v274 = v172;
  *(&v274 + 1) = v174;
  *(&v275 + 1) = v176;
  v276 = v175;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v178 = [v157 encryptedValues];
  v179 = [v159 createdDate];
  if (v179)
  {
    v180 = v179;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v181 = 0;
  }

  else
  {
    v181 = 1;
  }

  v182 = type metadata accessor for Date();
  v183 = *(v182 - 8);
  v184 = *(v183 + 56);
  v267 = v183 + 56;
  v268 = v184;
  (v184)(v177, v181, 1, v182);
  v185 = v253;
  sub_100021CEC(v177, v253, &unk_100AD4790, &unk_10093B4E0);
  v266 = *(v183 + 48);
  if ((v266)(v185, 1, v182) == 1)
  {
    sub_100004F84(v185, &unk_100AD4790, &unk_10093B4E0);
    v274 = 0u;
    v275 = 0u;
    v276 = 0;
  }

  else
  {
    *(&v275 + 1) = v182;
    v276 = &protocol witness table for Date;
    v186 = sub_10001A770(&v274);
    (*(v183 + 32))(v186, v185, v182);
  }

  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v187 = v264;
  v188 = [v264 encryptedValues];
  swift_getObjectType();
  v189 = [v251 minimumSupportedAppVersion];
  *(&v275 + 1) = &type metadata for Int16;
  v276 = &protocol witness table for Int16;
  LOWORD(v274) = v189;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  [v187 encryptedValues];
  sub_1000065A8(0, &qword_100AEEE30, NSManagedObjectModel_ptr);
  v190 = static NSManagedObjectModel.shared.getter();
  v191 = NSManagedObjectModel.modelVersion.getter();
  v193 = v192;

  if (v193)
  {
    v194 = &protocol witness table for String;
    v195 = &type metadata for String;
  }

  else
  {
    v191 = 0;
    v195 = 0;
    v194 = 0;
    *&v275 = 0;
  }

  *&v274 = v191;
  *(&v274 + 1) = v193;
  *(&v275 + 1) = v195;
  v276 = v194;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v196 = [v264 encryptedValues];
  v197 = [v251 source];
  if (v197)
  {
    v198 = v197;
    v199 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v201 = v200;

    v202 = &protocol witness table for String;
    v203 = &type metadata for String;
  }

  else
  {
    v199 = 0;
    v201 = 0;
    v203 = 0;
    v202 = 0;
    *&v275 = 0;
  }

  v204 = v254;
  *&v274 = v199;
  *(&v274 + 1) = v201;
  *(&v275 + 1) = v203;
  v276 = v202;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  [v264 encryptedValues];
  v205 = [v251 suggestionId];
  if (v205)
  {
    v206 = v205;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v207 = 0;
  }

  else
  {
    v207 = 1;
  }

  v208 = v270;
  (*(v168 + 56))(v204, v207, 1, v270);
  v209 = v255;
  sub_100021CEC(v204, v255, &qword_100AD1420, &unk_10093C080);
  if ((*(v168 + 48))(v209, 1, v208))
  {
    sub_100004F84(v209, &qword_100AD1420, &unk_10093C080);
    v210 = 0;
    v211 = 0;
    v212 = 0;
    v213 = 0;
    *&v275 = 0;
  }

  else
  {
    v214 = v262;
    (v258)(v262, v209, v208);
    sub_100004F84(v209, &qword_100AD1420, &unk_10093C080);
    v212 = UUID.uuidString.getter();
    v213 = v215;
    (v263)(v214, v208);
    v211 = &protocol witness table for String;
    v210 = &type metadata for String;
  }

  *(&v275 + 1) = v210;
  v276 = v211;
  *&v274 = v212;
  *(&v274 + 1) = v213;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v216 = [v264 encryptedValues];
  v217 = [v251 suggestionDate];
  if (v217)
  {
    v218 = v256;
    v219 = v217;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v220 = 0;
  }

  else
  {
    v220 = 1;
    v218 = v256;
  }

  v221 = v110;
  (v268)(v218, v220, 1, v182);
  v222 = v257;
  sub_100021CEC(v218, v257, &unk_100AD4790, &unk_10093B4E0);
  if ((v266)(v222, 1, v182) == 1)
  {
    sub_100004F84(v222, &unk_100AD4790, &unk_10093B4E0);
    v274 = 0u;
    v275 = 0u;
    v276 = 0;
  }

  else
  {
    *(&v275 + 1) = v182;
    v276 = &protocol witness table for Date;
    v223 = sub_10001A770(&v274);
    (*(v183 + 32))(v223, v222, v182);
  }

  v224 = v269;
  v225 = v270;
  v226 = v264;
  v227 = v251;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v228 = [v226 encryptedValues];
  swift_getObjectType();
  v229 = [v227 isSlim];
  *(&v275 + 1) = &type metadata for Bool;
  v276 = &protocol witness table for Bool;
  LOBYTE(v274) = v229;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v230 = [v226 encryptedValues];
  v231 = [v227 osVersion];
  if (v231)
  {
    v232 = v231;
    v233 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v235 = v234;

    v236 = &protocol witness table for String;
    v237 = &type metadata for String;
  }

  else
  {
    v233 = 0;
    v235 = 0;
    v237 = 0;
    v236 = 0;
    *&v275 = 0;
  }

  *&v274 = v233;
  *(&v274 + 1) = v235;
  *(&v275 + 1) = v237;
  v276 = v236;
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.setter();
  sub_1000340DC(v221, v261);
  swift_unknownObjectRelease();
  (v263)(v260, v225);
  (*(v272 + 8))(v224, v271);
  return v226;
}

uint64_t sub_10071E2F8()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEEDF0);
  v1 = sub_10000617C(v0, qword_100AEEDF0);
  if (qword_100AD0198 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10071E3C0@<X0>(uint64_t *a4@<X8>)
{
  type metadata accessor for JournalEntryAssetMO();
  sub_100726084(&qword_100AD6A88, &type metadata accessor for JournalEntryAssetMO, &protocol conformance descriptor for JournalEntryAssetMO);
  result = static Identifiable<>.fetch(id:context:)();
  if (v4)
  {
    if (qword_100AD0298 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000617C(v7, qword_100AEEDF0);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to fetch asset by id: %@", v10, 0xCu);
      sub_100004F84(v11, &unk_100AD4BB0, &unk_100941E50);
    }

    else
    {
    }

    result = 0;
  }

  *a4 = result;
  return result;
}

void sub_10071E5AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v256 = type metadata accessor for URL();
  v257 = *(v256 - 8);
  __chkstk_darwin(v256);
  v253 = &v251 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v252 = &v251 - v10;
  __chkstk_darwin(v11);
  v259 = &v251 - v12;
  v13 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v13 - 8);
  v261 = &v251 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v260 = &v251 - v16;
  v17 = type metadata accessor for Date();
  v263 = *(v17 - 8);
  v264 = v17;
  __chkstk_darwin(v17);
  v255 = &v251 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v254 = &v251 - v20;
  v21 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v21 - 8);
  v262 = &v251 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = __chkstk_darwin(v23).n128_u64[0];
  v26 = &v251 - v25;
  v27 = [a1 recordID];
  v28 = [v27 recordName];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v265 = v29;
  v269 = v29;
  v270 = v31;
  v271 = a3;
  sub_1000F24EC(&qword_100ADF608, &qword_100950CD8);
  NSManagedObjectContext.performAndWait<A>(_:)();
  v32 = v272;
  if (!v272)
  {

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v272 = v45;
      *v44 = 136315138;
      v46 = sub_100008458(v265, v31, &v272);

      *(v44 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v42, v43, "unable to get asset with id: %s", v44, 0xCu);
      sub_10000BA7C(v45);
    }

    else
    {
    }

    return;
  }

  v267 = a4;
  v275 = v31;
  v258 = v4;
  type metadata accessor for JournalEntryAssetMO();
  sub_100726084(&unk_100AEEE10, &type metadata accessor for JournalEntryAssetMO, &protocol conformance descriptor for JournalEntryAssetMO);
  v268 = v32;
  v33 = RecordUploading.currentChangeTags.getter();
  v35 = v34;
  v266 = a1;
  v36 = [a1 recordChangeTag];
  if (!v36)
  {
    v41 = v268;
    if (!v35)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v37 = v36;
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  if (!v35)
  {
    v41 = v268;
    if (!v40)
    {
      goto LABEL_17;
    }

LABEL_15:

    goto LABEL_21;
  }

  v41 = v268;
  if (!v40)
  {
    goto LABEL_15;
  }

  if (v33 == v38 && v35 == v40)
  {
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v47 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_17:
  RecordUploading.currentChangeTags.getter();
  if (v48)
  {

    v49 = v266;
    v50 = v41;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v272 = swift_slowAlloc();
      *v53 = 136315650;
      v54 = [v50 assetType];
      if (v54)
      {
        v55 = v54;
        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;
      }

      else
      {
        v56 = 0;
        v58 = 0xE000000000000000;
      }

      v93 = sub_100008458(v56, v58, &v272);

      *(v53 + 4) = v93;
      *(v53 + 12) = 2080;
      v94 = CKRecord.recordType.getter();
      v96 = sub_100008458(v94, v95, &v272);

      *(v53 + 14) = v96;
      *(v53 + 22) = 2080;
      v97 = [v49 recordID];
      v98 = [v97 recordName];

      v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v100;

      v102 = sub_100008458(v99, v101, &v272);

      *(v53 + 24) = v102;
      _os_log_impl(&_mh_execute_header, v51, v52, "Ignoring remote %s %s record update with ID %s since local copy has already processed the same change tag", v53, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return;
  }

LABEL_21:
  v59 = [v41 isUploadedToCloud];
  v60 = v262;
  if ((v59 & 1) == 0)
  {
    v61 = v266;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v272 = swift_slowAlloc();
      *v64 = 136446466;
      v65 = CKRecord.recordType.getter();
      v67 = sub_100008458(v65, v66, &v272);

      *(v64 + 4) = v67;
      *(v64 + 12) = 2080;
      v68 = [v61 recordID];
      v69 = [v68 recordName];

      v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;

      v73 = sub_100008458(v70, v72, &v272);
      v41 = v268;

      *(v64 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v62, v63, "JournalEntryAssetMO has local changes that will be overwritten by %{public}s record. ID: %s", v64, 0x16u);
      swift_arrayDestroy();
      v60 = v262;
    }
  }

  if (CKRecord.subscript.getter())
  {
    objc_opt_self();
    v74 = swift_dynamicCastObjCClass();
    if (v74)
    {
      v75 = [v74 recordID];
      v76 = [v75 recordName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      UUID.init(uuidString:)();

      v77 = type metadata accessor for UUID();
      v78 = *(v77 - 8);
      isa = 0;
      if ((*(v78 + 48))(v26, 1, v77) != 1)
      {
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v78 + 8))(v26, v77);
      }

      [v41 setParentID:isa];
      swift_unknownObjectRelease();

      goto LABEL_41;
    }

    swift_unknownObjectRelease();
  }

  if (JournalEntryAssetMO.isEntryAssetType.getter())
  {
    v80 = v266;
    v81 = v41;

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v274 = swift_slowAlloc();
      *v84 = 136315650;
      v85 = CKRecord.recordType.getter();
      v87 = sub_100008458(v85, v86, &v274);

      *(v84 + 4) = v87;
      *(v84 + 12) = 2080;
      v88 = [v81 assetType];
      if (v88)
      {
        v89 = v88;
        v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v91;
      }

      else
      {
        v90 = 0;
        v92 = 0;
      }

      v272 = v90;
      v273 = v92;
      sub_1000F24EC(&unk_100AE4870, &qword_100945360);
      v103 = String.init<A>(describing:)();
      v105 = sub_100008458(v103, v104, &v274);

      *(v84 + 14) = v105;
      *(v84 + 22) = 2080;
      *(v84 + 24) = sub_100008458(v265, v275, &v274);
      _os_log_impl(&_mh_execute_header, v82, v83, "ParentReference is missing in %s [%s] record with id %s", v84, 0x20u);
      swift_arrayDestroy();

      v60 = v262;
    }

    else
    {
    }
  }

LABEL_41:
  v106 = v266;
  v107 = [v266 encryptedValues];
  v108 = String._bridgeToObjectiveC()();
  v109 = [v107 objectForKeyedSubscript:v108];
  swift_unknownObjectRelease();

  if (v109 && (v274 = v109, sub_1000F24EC(&unk_100AE4C70, &qword_100956F68), (swift_dynamicCast() & 1) != 0))
  {
    v110 = String._bridgeToObjectiveC()();

    [v41 setAssetType:v110];
  }

  else
  {
    v111 = v275;

    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v272 = v115;
      *v114 = 136315138;
      *(v114 + 4) = sub_100008458(v265, v111, &v272);
      _os_log_impl(&_mh_execute_header, v112, v113, "unable to get assetType from asset record:%s", v114, 0xCu);
      sub_10000BA7C(v115);
    }
  }

  v116 = [v106 encryptedValues];
  v117 = String._bridgeToObjectiveC()();
  v118 = [v116 objectForKeyedSubscript:v117];
  swift_unknownObjectRelease();

  if (v118)
  {
    v272 = v118;
    sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
    v119 = v260;
    v120 = v264;
    v121 = swift_dynamicCast();
    v122 = v263;
    v123 = v263[7];
    v123(v119, v121 ^ 1u, 1, v120);
    if ((v122[6])(v119, 1, v120) != 1)
    {
      v124 = v254;
      (v122[4])(v254, v119, v120);
      v125 = v122;
      v126 = Date._bridgeToObjectiveC()().super.isa;
      [v268 setCreatedDate:v126];

      (v125[1])(v124, v120);
      goto LABEL_54;
    }
  }

  else
  {
    v123 = v263[7];
    v119 = v260;
    v123(v260, 1, 1, v264);
  }

  sub_100004F84(v119, &unk_100AD4790, &unk_10093B4E0);
  v127 = v275;

  v128 = Logger.logObject.getter();
  v129 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v272 = v131;
    *v130 = 136315138;
    *(v130 + 4) = sub_100008458(v265, v127, &v272);
    _os_log_impl(&_mh_execute_header, v128, v129, "unable to get createdDate from asset record:%s", v130, 0xCu);
    sub_10000BA7C(v131);
  }

LABEL_54:
  v132 = [v106 encryptedValues];
  v133 = String._bridgeToObjectiveC()();
  v134 = [v132 objectForKeyedSubscript:v133];
  swift_unknownObjectRelease();

  v135 = v275;
  if (v134 && (v272 = v134, sub_1000F24EC(&unk_100AE4C70, &qword_100956F68), (swift_dynamicCast() & 1) != 0))
  {
    [v268 setMinimumSupportedAppVersion:v274];
  }

  else
  {

    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v272 = v139;
      *v138 = 136315138;
      *(v138 + 4) = sub_100008458(v265, v135, &v272);
      _os_log_impl(&_mh_execute_header, v136, v137, "unable to get minimumSupportedAppVersion from asset record:%s", v138, 0xCu);
      sub_10000BA7C(v139);
    }
  }

  v140 = [v106 encryptedValues];
  v141 = String._bridgeToObjectiveC()();
  v142 = [v140 objectForKeyedSubscript:v141];
  swift_unknownObjectRelease();

  if (v142 && (v274 = v142, sub_1000F24EC(&unk_100AE4C70, &qword_100956F68), (swift_dynamicCast() & 1) != 0))
  {
    v143 = String._bridgeToObjectiveC()();

    [v268 setSource:v143];
  }

  else
  {

    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v272 = v147;
      *v146 = 136315138;
      *(v146 + 4) = sub_100008458(v265, v135, &v272);
      _os_log_impl(&_mh_execute_header, v144, v145, "unable to get source from asset record: %s", v146, 0xCu);
      sub_10000BA7C(v147);
    }
  }

  v148 = [v106 encryptedValues];
  v149 = String._bridgeToObjectiveC()();
  v150 = [v148 objectForKeyedSubscript:v149];
  swift_unknownObjectRelease();

  if (v150)
  {
    v274 = v150;
    sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
    if (swift_dynamicCast())
    {
      v152 = v272;
      v153 = v273;
      v154 = Data._bridgeToObjectiveC()().super.isa;
      [v268 setTitle:v154];

      v151 = sub_1000340DC(v152, v153);
    }
  }

  v155 = [v106 encryptedValues];
  v156 = String._bridgeToObjectiveC()();
  v157 = [v155 objectForKeyedSubscript:v156];
  swift_unknownObjectRelease();

  if (v157)
  {
    v274 = v157;
    sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
    if (swift_dynamicCast())
    {
      UUID.init(uuidString:)();

      v158 = type metadata accessor for UUID();
      v159 = *(v158 - 8);
      v160 = 0;
      if ((*(v159 + 48))(v60, 1, v158) != 1)
      {
        v160 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v159 + 8))(v60, v158);
      }

      [v268 setSuggestionId:v160];
    }
  }

  v161 = [v106 encryptedValues];
  v162 = String._bridgeToObjectiveC()();
  v163 = [v161 objectForKeyedSubscript:v162];
  swift_unknownObjectRelease();

  if (!v163)
  {
    v164 = v261;
    v123(v261, 1, 1, v264);
    goto LABEL_78;
  }

  v272 = v163;
  sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
  v164 = v261;
  v165 = v264;
  v166 = swift_dynamicCast();
  v167 = v263;
  v123(v164, v166 ^ 1u, 1, v165);
  if ((v167[6])(v164, 1, v165) == 1)
  {
LABEL_78:
    sub_100004F84(v164, &unk_100AD4790, &unk_10093B4E0);
    v170 = v268;
    goto LABEL_79;
  }

  v168 = v255;
  (v167[4])(v255, v164, v165);
  v169 = Date._bridgeToObjectiveC()().super.isa;
  v170 = v268;
  [v268 setSuggestionDate:v169];

  (v167[1])(v168, v165);
LABEL_79:
  v171 = [v106 encryptedValues];
  v172 = String._bridgeToObjectiveC()();
  v173 = [v171 objectForKeyedSubscript:v172];
  swift_unknownObjectRelease();

  if (v173)
  {
    v272 = v173;
    sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
    if (swift_dynamicCast())
    {
      [v170 setIsSlim:v274];
    }
  }

  v174 = [v106 encryptedValues];
  v175 = String._bridgeToObjectiveC()();
  v176 = [v174 objectForKeyedSubscript:v175];
  swift_unknownObjectRelease();

  if (v176)
  {
    v274 = v176;
    sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
    if (swift_dynamicCast())
    {
      v177 = String._bridgeToObjectiveC()();

      [v170 setOsVersion:v177];
    }
  }

  v178 = CKRecord.subscript.getter();
  if (v178)
  {
    v179 = v178;
    objc_opt_self();
    v180 = swift_dynamicCastObjCClass();
    if (v180)
    {
      v181 = [v180 fileURL];
      if (v181)
      {
        v264 = v179;
        v182 = v252;
        v183 = v181;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v184 = v256;
        (*(v257 + 32))(v259, v182, v256);
        v185 = v170;

        v186 = Logger.logObject.getter();
        v187 = static os_log_type_t.error.getter();

        v188 = os_log_type_enabled(v186, v187);
        v263 = v185;
        if (v188)
        {
          v189 = swift_slowAlloc();
          v274 = swift_slowAlloc();
          *v189 = 136315394;
          v190 = [v185 assetType];
          if (v190)
          {
            v191 = v190;
            v192 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v194 = v193;
          }

          else
          {
            v192 = 0;
            v194 = 0;
          }

          v272 = v192;
          v273 = v194;
          sub_1000F24EC(&unk_100AE4870, &qword_100945360);
          v205 = String.init<A>(describing:)();
          v207 = sub_100008458(v205, v206, &v274);

          *(v189 + 4) = v207;
          *(v189 + 12) = 2080;
          v204 = v275;
          *(v189 + 14) = sub_100008458(v265, v275, &v274);
          _os_log_impl(&_mh_execute_header, v186, v187, "CKAsset.fileURL unexpectedly included with updated %s JournalEntryAsset record %s", v189, 0x16u);
          swift_arrayDestroy();

          v106 = v266;
          v184 = v256;
        }

        else
        {

          v204 = v275;
        }

        v208 = v257;
        v209 = v253;
        (*(v257 + 16))(v253, v259, v184);

        v210 = Logger.logObject.getter();
        v211 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v210, v211))
        {
          v212 = swift_slowAlloc();
          v272 = swift_slowAlloc();
          *v212 = 136315394;
          *(v212 + 4) = sub_100008458(v265, v204, &v272);
          *(v212 + 12) = 2080;
          sub_100726084(&qword_100ADEFD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v213 = dispatch thunk of CustomStringConvertible.description.getter();
          v215 = v214;
          v216 = *(v208 + 8);
          v216(v209, v184);
          v217 = sub_100008458(v213, v215, &v272);

          *(v212 + 14) = v217;
          _os_log_impl(&_mh_execute_header, v210, v211, "Processing assetMetadataAsset file for JournalEntryAsset record with id %s and url %s", v212, 0x16u);
          swift_arrayDestroy();
          v106 = v266;
        }

        else
        {

          v216 = *(v208 + 8);
          v216(v209, v184);
        }

        v218 = v258;
        v219 = Data.init(contentsOf:options:)();
        if (v218)
        {
          v221 = v275;

          swift_errorRetain();
          v222 = Logger.logObject.getter();
          v223 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v222, v223))
          {
            v224 = swift_slowAlloc();
            v225 = swift_slowAlloc();
            v226 = swift_slowAlloc();
            v272 = v226;
            *v224 = 136315394;
            v227 = sub_100008458(v265, v221, &v272);

            *(v224 + 4) = v227;
            *(v224 + 12) = 2112;
            swift_errorRetain();
            v228 = _swift_stdlib_bridgeErrorToNSError();
            *(v224 + 14) = v228;
            *v225 = v228;
            _os_log_impl(&_mh_execute_header, v222, v223, "Unable to get assetMetadataAsset for JournalEntryAsset record %s. Error: %@", v224, 0x16u);
            sub_100004F84(v225, &unk_100AD4BB0, &unk_100941E50);

            sub_10000BA7C(v226);

            swift_unknownObjectRelease();
            v106 = v266;
          }

          else
          {
            swift_unknownObjectRelease();
          }

          v216(v259, v256);
          v170 = v268;
        }

        else
        {
          v229 = v219;
          v230 = v220;
          v231 = Data._bridgeToObjectiveC()().super.isa;
          v232 = sub_1000340DC(v229, v230);
          [v263 setAssetMetaData:{v231, v232}];

          v233 = v275;
          if (qword_100ACFE28 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          sub_100286DEC(&v274, v265, v233);
          swift_endAccess();
          swift_unknownObjectRelease();

          v216(v259, v256);
          v170 = v268;
        }

        goto LABEL_115;
      }

      v195 = v170;

      v196 = Logger.logObject.getter();
      v197 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v196, v197))
      {
        v198 = swift_slowAlloc();
        v272 = swift_slowAlloc();
        *v198 = 136315394;
        v199 = [v195 assetType];
        if (v199)
        {
          v200 = v199;
          v201 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v203 = v202;
        }

        else
        {
          v201 = 0;
          v203 = 0xE000000000000000;
        }

        v234 = sub_100008458(v201, v203, &v272);

        *(v198 + 4) = v234;
        *(v198 + 12) = 2080;
        v235 = sub_100008458(v265, v275, &v272);

        *(v198 + 14) = v235;
        _os_log_impl(&_mh_execute_header, v196, v197, "Requesting metadata refresh for %s asset with id %s", v198, 0x16u);
        swift_arrayDestroy();

        v106 = v266;
        v170 = v268;
      }

      else
      {
      }

      [v195 setRefreshAssetMetadata:1];
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

LABEL_115:
  v236 = [v106 encryptedValues];
  v237 = String._bridgeToObjectiveC()();
  v238 = [v236 objectForKeyedSubscript:v237];
  swift_unknownObjectRelease();

  if (v238)
  {
    v274 = v238;
    sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
    if (swift_dynamicCast())
    {
      v239 = v272;
      v240 = v273;
      v241 = [v170 assetMetaData];
      if (v241)
      {
        v242 = v241;
        v243 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v245 = v244;

        sub_1000340DC(v243, v245);
      }

      else
      {
        v246 = Data._bridgeToObjectiveC()().super.isa;
        [v170 setAssetMetaData:v246];
      }

      sub_1000340DC(v239, v240);
    }
  }

  v247 = CKRecord.encodedSystemFields.getter();
  v249 = v248;
  v250 = Data._bridgeToObjectiveC()().super.isa;
  [v170 setRecordSystemFields:{v250, sub_1000340DC(v247, v249)}];

  [v170 setIsUploadedToCloud:1];
}

id sub_100720844(void *a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v4);
  v6 = &v37 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = JournalEntryAssetMO.isEntryAssetType.getter();
  result = 0;
  if (v11)
  {
    result = [a1 entry];
    if (!result)
    {
      v13 = [a1 parentID];
      if (v13)
      {
        v14 = v13;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = UUID.uuidString.getter();
        v17 = sub_1007733F4(v15, v16, a2);

        (*(v8 + 8))(v10, v7);
        return v17;
      }

      else
      {
        if (qword_100AD0298 != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        sub_10000617C(v18, qword_100AEEDF0);
        v19 = a1;
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v39 = v21;
          v22 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v42 = v38;
          *v22 = 136315394;
          v23 = [v19 assetType];
          if (v23)
          {
            v24 = v23;
            v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = v26;
          }

          else
          {
            v25 = 0;
            v27 = 0;
          }

          v40 = v25;
          v41 = v27;
          sub_1000F24EC(&unk_100AE4870, &qword_100945360);
          v28 = String.init<A>(describing:)();
          v30 = sub_100008458(v28, v29, &v42);

          *(v22 + 4) = v30;
          *(v22 + 12) = 2080;
          v31 = [v19 id];
          if (v31)
          {
            v32 = v31;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v33 = 0;
          }

          else
          {
            v33 = 1;
          }

          (*(v8 + 56))(v6, v33, 1, v7);
          v34 = String.init<A>(describing:)();
          v36 = sub_100008458(v34, v35, &v42);

          *(v22 + 14) = v36;
          _os_log_impl(&_mh_execute_header, v20, v39, "asset.parentID is nil for %s asset %s", v22, 0x16u);
          swift_arrayDestroy();
        }

        return 0;
      }
    }
  }

  return result;
}

double sub_100720C14(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  type metadata accessor for JournalEntryAssetMO();
  v4 = NSManagedObjectContext.fetch<A>(_:)();
  if (!(v4 >> 62))
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = v4;
  v7 = _CocoaArrayWrapper.endIndex.getter();
  v4 = v6;
  if (v7)
  {
LABEL_3:
    *a3 = v4;
  }

LABEL_4:

  return result;
}

double *sub_100720E3C@<X0>(double **a2@<X8>)
{
  if (qword_100AD0298 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100AEEDF0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = [objc_opt_self() isMainThread];
    _os_log_impl(&_mh_execute_header, v5, v6, "fetchLocalChangedJournalEntryAssets isMainThread: %{BOOL}d", v7, 8u);
  }

  type metadata accessor for JournalEntryAssetMO();
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unable to fetch local changed journal entry assets: %@", v11, 0xCu);
      sub_100004F84(v12, &unk_100AD4BB0, &unk_100941E50);
    }

    result = _swiftEmptyArrayStorage;
  }

  *a2 = result;
  return result;
}

void sub_100721074(uint64_t a1)
{
  v135 = sub_1000F24EC(&unk_100AEEE20, &qword_1009480F0);
  __chkstk_darwin(v135);
  v134 = &v110 - v2;
  v116 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v116);
  v115 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v125 = &v110 - v5;
  __chkstk_darwin(v6);
  v133 = &v110 - v7;
  __chkstk_darwin(v8);
  v119 = &v110 - v9;
  __chkstk_darwin(v10);
  v12 = &v110 - v11;
  __chkstk_darwin(v13);
  v15 = &v110 - v14;
  __chkstk_darwin(v16);
  v18 = &v110 - v17;
  v19 = type metadata accessor for UUID();
  v128 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v110 - v23;
  type metadata accessor for JournalEntryAssetMO();
  v26 = sub_100722018(v25, a1, 1);
  v27 = &qword_100AD0000;
  v28 = 0;
  v131 = v24;
  v132 = v18;
  v136 = v15;
  v137 = a1;
  v139 = v12;
  v118 = v21;
  v35 = v26;
  if (v26 >> 62)
  {
LABEL_86:
    v108 = v27;
    v123 = _CocoaArrayWrapper.endIndex.getter();
    if (v123)
    {
      v109 = _CocoaArrayWrapper.endIndex.getter();
      v27 = v108;
      v36 = v109;
      goto LABEL_9;
    }

LABEL_88:

    return;
  }

  v36 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v123 = v36;
  if (!v36)
  {
    goto LABEL_88;
  }

LABEL_9:
  v130 = v28;
  if (v27[83] != -1)
  {
LABEL_91:
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v112 = sub_10000617C(v37, qword_100AEEDF0);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134217984;
    *(v40 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v38, v39, "Found %ld Orphan Assets", v40, 0xCu);
  }

  v111 = v36;

  v41 = 0;
  v122 = v35 & 0xC000000000000001;
  v120 = v35 & 0xFFFFFFFFFFFFFF8;
  v121 = v35;
  v114 = (v35 + 32);
  v141 = (v128 + 56);
  v138 = (v128 + 48);
  v42 = _swiftEmptyArrayStorage;
  v126 = (v128 + 32);
  do
  {
    v140 = v42;
    if (v122)
    {
      v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v44 = v139;
      v46 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_81;
      }
    }

    else
    {
      v44 = v139;
      if (v41 >= *(v120 + 16))
      {
        goto LABEL_82;
      }

      v45 = *(v121 + 8 * v41 + 32);
      v46 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        swift_once();
LABEL_3:
        v29 = type metadata accessor for Logger();
        sub_10000617C(v29, qword_100AEEDF0);
        swift_errorRetain();
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *v32 = 138412290;
          swift_errorRetain();
          v34 = _swift_stdlib_bridgeErrorToNSError();
          *(v32 + 4) = v34;
          *v33 = v34;
          _os_log_impl(&_mh_execute_header, v30, v31, "Unable to fix orphan assets: %@", v32, 0xCu);
          sub_100004F84(v33, &unk_100AD4BB0, &unk_100941E50);
        }

        else
        {
        }

        return;
      }
    }

    v47 = v45;
    v48 = [v47 parentID];
    if (v48)
    {
      v49 = v48;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    v51 = v133;
    v35 = *v141;
    (*v141)(v44, v50, 1, v19);
    v52 = v44;
    v53 = v136;
    sub_100021CEC(v52, v136, &qword_100AD1420, &unk_10093C080);
    v54 = v53;
    v55 = v132;
    sub_100021CEC(v54, v132, &qword_100AD1420, &unk_10093C080);

    v127 = *v138;
    if (v127(v55, 1, v19) == 1)
    {
      sub_100004F84(v55, &qword_100AD1420, &unk_10093C080);
      v43 = v51;
      v42 = v140;
    }

    else
    {
      v56 = *v126;
      (*v126)(v131, v55, v19);
      v42 = v140;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_100055CEC(0, *(v42 + 2) + 1, 1, v42);
      }

      v58 = *(v42 + 2);
      v57 = *(v42 + 3);
      if (v58 >= v57 >> 1)
      {
        v42 = sub_100055CEC((v57 > 1), v58 + 1, 1, v42);
      }

      *(v42 + 2) = v58 + 1;
      v56(v42 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v58, v131, v19);
      v43 = v133;
    }

    ++v41;
    v28 = v137;
  }

  while (v46 != v123);
  type metadata accessor for JournalEntryMO();
  sub_100726084(&unk_100AE9050, &type metadata accessor for JournalEntryMO, &protocol conformance descriptor for JournalEntryMO);
  v59 = v130;
  v132 = static Identifiable<>.fetch(ids:context:)();
  if (v59)
  {

    if (qword_100AD0298 != -1)
    {
      goto LABEL_84;
    }

    goto LABEL_3;
  }

  v130 = v132 & 0xFFFFFFFFFFFFFF8;
  if (v132 >> 62)
  {
    v137 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v137 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = v127;
  v27 = v128;
  v62 = v119;
  v113 = 0;
  v36 = 0;
  v131 = v132 & 0xC000000000000001;
  v124 = (v128 + 8);
  *&v60 = 136315138;
  v110 = v60;
  v128 = v19;
  v129 = v35;
  while (2)
  {
    if (v122)
    {
      v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v36 >= *(v120 + 16))
      {
        __break(1u);
        goto LABEL_86;
      }

      v63 = *&v114[8 * v36];
    }

    v28 = v63;
    v64 = __OFADD__(v36, 1);
    v65 = v36 + 1;
    if (v64)
    {
      goto LABEL_83;
    }

    v117 = v65;
    if (!v137)
    {
LABEL_35:

      v36 = v117;
      goto LABEL_36;
    }

    v66 = 0;
    v136 = v63;
    while (1)
    {
      if (v131)
      {
        v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v71 = (v66 + 1);
        if (__OFADD__(v66, 1))
        {
          goto LABEL_79;
        }
      }

      else
      {
        if (v66 >= *(v130 + 16))
        {
          goto LABEL_80;
        }

        v70 = *(v132 + 8 * v66 + 32);
        v71 = (v66 + 1);
        if (__OFADD__(v66, 1))
        {
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }
      }

      v139 = v71;
      v140 = v70;
      v72 = [v70 id];
      if (v72)
      {
        v73 = v72;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v74 = 0;
      }

      else
      {
        v74 = 1;
      }

      v75 = 1;
      (v35)(v62, v74, 1, v19);
      v76 = [v28 parentID];
      if (v76)
      {
        v77 = v76;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v75 = 0;
      }

      (v35)(v43, v75, 1, v19);
      v78 = *(v135 + 48);
      v79 = v19;
      v80 = v134;
      sub_1001EDCD8(v62, v134);
      sub_1001EDCD8(v43, v80 + v78);
      if (v61(v80, 1, v79) == 1)
      {
        break;
      }

      v67 = v43;
      v68 = v62;
      v81 = v125;
      sub_1001EDCD8(v80, v125);
      if (v61(v80 + v78, 1, v79) == 1)
      {
        sub_100004F84(v43, &qword_100AD1420, &unk_10093C080);
        sub_100004F84(v68, &qword_100AD1420, &unk_10093C080);
        (*v124)(v81, v79);
        v35 = v129;
        v61 = v127;
        goto LABEL_45;
      }

      v82 = v118;
      (*v126)(v118, v80 + v78, v79);
      sub_100726084(&qword_100AD9220, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v83 = dispatch thunk of static Equatable.== infix(_:_:)();
      v84 = *v124;
      v85 = v82;
      v86 = v119;
      (*v124)(v85, v79);
      sub_100004F84(v133, &qword_100AD1420, &unk_10093C080);
      sub_100004F84(v86, &qword_100AD1420, &unk_10093C080);
      v87 = v81;
      v62 = v86;
      v43 = v133;
      v84(v87, v79);
      sub_100004F84(v80, &qword_100AD1420, &unk_10093C080);
      v35 = v129;
      v61 = v127;
      v28 = v136;
      if (v83)
      {
        goto LABEL_64;
      }

LABEL_46:

      ++v66;
      v19 = v128;
      if (v139 == v137)
      {
        goto LABEL_35;
      }
    }

    v67 = v43;
    sub_100004F84(v43, &qword_100AD1420, &unk_10093C080);
    v68 = v62;
    sub_100004F84(v62, &qword_100AD1420, &unk_10093C080);
    v69 = v61(v80 + v78, 1, v79);
    v35 = v129;
    if (v69 != 1)
    {
LABEL_45:
      sub_100004F84(v80, &unk_100AEEE20, &qword_1009480F0);
      v43 = v67;
      v62 = v68;
      v28 = v136;
      goto LABEL_46;
    }

    sub_100004F84(v80, &qword_100AD1420, &unk_10093C080);
    v28 = v136;
LABEL_64:
    v88 = [v28 isRemovedFromCloud];
    v19 = v128;
    if ((v88 & 1) == 0)
    {
      v99 = v140;
      [v140 addAssetsObject:v28];

      v64 = __OFADD__(v113, 1);
      v27 = &v143;
      ++v113;
      v36 = v117;
      if (!v64)
      {
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_91;
    }

    v89 = v28;
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.info.getter();

    v92 = os_log_type_enabled(v90, v91);
    v36 = v117;
    if (v92)
    {
      v93 = v91;
      v94 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v142 = v28;
      *v94 = v110;
      v95 = [v89 id];
      if (v95)
      {
        v96 = v115;
        v97 = v95;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v98 = 0;
      }

      else
      {
        v98 = 1;
        v96 = v115;
      }

      (v35)(v96, v98, 1, v19);
      v100 = String.init<A>(describing:)();
      v102 = sub_100008458(v100, v101, &v142);

      *(v94 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v90, v93, "Ignoring orphan asset %s because it is removed from iCloud", v94, 0xCu);
      sub_10000BA7C(v28);

      v43 = v133;
      v36 = v117;
      v61 = v127;
    }

    else
    {
    }

LABEL_36:
    if (v36 != v123)
    {
      continue;
    }

    break;
  }

  v103 = v111;
  v104 = v113;
  if (v113 >= v111)
  {
    return;
  }

  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v105, v106))
  {
    goto LABEL_78;
  }

  v107 = swift_slowAlloc();
  *v107 = 134217984;
  if (!__OFSUB__(v103, v104))
  {
    *(v107 + 4) = v103 - v104;
    _os_log_impl(&_mh_execute_header, v105, v106, "%ld orphan assets not processed", v107, 0xCu);

LABEL_78:

    return;
  }

  __break(1u);
}

uint64_t sub_100722018(__n128 a1, uint64_t a2, char a3)
{
  v4 = static JournalEntryAssetMO.fetchRequest()();
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100941D50;
  sub_1000065A8(0, &qword_100ADB900, NSPredicate_ptr);
  sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  *(v6 + 56) = &type metadata for String;
  v7 = sub_100031B20();
  *(v6 + 64) = v7;
  *(v6 + 32) = 0x7972746E65;
  *(v6 + 40) = 0xE500000000000000;
  *(v5 + 32) = NSPredicate.init(format:_:)();
  if (a3)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100940080;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = v7;
    *(v8 + 32) = 0x4449746E65726170;
    *(v8 + 40) = 0xE800000000000000;
    NSPredicate.init(format:_:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v4 setPredicate:v10];
  type metadata accessor for JournalEntryAssetMO();
  v11 = NSManagedObjectContext.fetch<A>(_:)();

  return v11;
}

void sub_100722288(uint64_t a1@<X0>, char a2@<W1>, unint64_t *a3@<X8>)
{
  type metadata accessor for JournalEntryAssetMO();
  v8 = sub_100722018(v7, a1, a2);
  if (v3)
  {
    if (qword_100AD0298 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000617C(v9, qword_100AEEDF0);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to fetch orphan assets: %@", v12, 0xCu);
      sub_100004F84(v13, &unk_100AD4BB0, &unk_100941E50);
    }

    v15 = _swiftEmptyArrayStorage;
  }

  else
  {
    v15 = v8;
    if (qword_100AD0298 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000617C(v16, qword_100AEEDF0);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      if (v15 >> 62)
      {
        v20 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v20 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v19 + 4) = v20;

      _os_log_impl(&_mh_execute_header, v17, v18, "%ld Orphan assets found", v19, 0xCu);
    }

    else
    {
    }
  }

  *a3 = v15;
}

id sub_100722554(void *a1, uint64_t a2)
{
  v368 = type metadata accessor for FileStoreConfiguration();
  v369 = *(v368 - 8);
  __chkstk_darwin(v368);
  v361 = &v348 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v377 = type metadata accessor for URL();
  v365 = *(v377 - 8);
  __chkstk_darwin(v377);
  v352 = &v348 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v353 = &v348 - v7;
  __chkstk_darwin(v8);
  v371 = &v348 - v9;
  __chkstk_darwin(v10);
  v379 = &v348 - v11;
  __chkstk_darwin(v12);
  v370 = &v348 - v13;
  __chkstk_darwin(v14);
  v373 = &v348 - v15;
  __chkstk_darwin(v16);
  v360 = &v348 - v17;
  __chkstk_darwin(v18);
  v374 = (&v348 - v19);
  __chkstk_darwin(v20);
  v367 = &v348 - v21;
  __chkstk_darwin(v22);
  v358 = &v348 - v23;
  __chkstk_darwin(v24);
  v357 = (&v348 - v25);
  __chkstk_darwin(v26);
  *&v372 = &v348 - v27;
  v28 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v28 - 8);
  v30 = &v348 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v348 - v32;
  v34 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v34 - 8);
  v359 = &v348 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v348 - v37;
  __chkstk_darwin(v39);
  v41 = &v348 - v40;
  v42 = type metadata accessor for Logger();
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v45 = &v348 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD01A0 != -1)
  {
    swift_once();
  }

  v46 = sub_10000617C(v42, qword_100B2FF80);
  v363 = v43;
  v47 = *(v43 + 16);
  v381 = v45;
  v364 = v42;
  v47(v45, v46, v42);
  type metadata accessor for JournalEntryAssetMO();
  v48 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v351 = a2;
  v378 = [v48 initWithContext:a2];
  v380 = a1;
  v49 = [a1 recordID];
  v50 = [v49 recordName];

  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  v366 = v51;
  *&v376 = v53;
  UUID.init(uuidString:)();
  v54 = type metadata accessor for UUID();
  v55 = *(v54 - 8);
  v375 = *(v55 + 48);
  isa = 0;
  if (v375(v41, 1, v54) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v55 + 8))(v41, v54);
  }

  v362 = v55;
  v57 = v378;
  [v378 setId:isa];

  [v57 setIsUploadedToCloud:1];
  [v57 setIsRemovedFromCloud:0];
  if (CKRecord.subscript.getter())
  {
    objc_opt_self();
    v58 = swift_dynamicCastObjCClass();
    if (v58)
    {
      v59 = [v58 recordID];
      v60 = [v59 recordName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      UUID.init(uuidString:)();

      if (v375(v38, 1, v54) == 1)
      {
        v61 = 0;
      }

      else
      {
        v61 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v362 + 8))(v38, v54);
      }

      [v378 setParentID:v61];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v62 = v380;
  v63 = [v380 encryptedValues];
  v64 = String._bridgeToObjectiveC()();
  v65 = [v63 objectForKeyedSubscript:v64];
  swift_unknownObjectRelease();

  if (v65)
  {
    v384 = v65;
    sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
    v67 = swift_dynamicCast();
    v68 = v365;
    if (v67)
    {
      v69 = v382;
      v70 = v383;
      v65 = Data._bridgeToObjectiveC()().super.isa;
      v66 = sub_1000340DC(v69, v70);
    }

    else
    {
      v65 = 0;
    }
  }

  else
  {
    v68 = v365;
  }

  [v378 setTitle:{v65, v66}];

  v71 = [v62 encryptedValues];
  v72 = String._bridgeToObjectiveC()();
  v73 = [v71 objectForKeyedSubscript:v72];
  swift_unknownObjectRelease();

  if (v73)
  {
    v384 = v73;
    sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
    if (swift_dynamicCast())
    {
      v73 = String._bridgeToObjectiveC()();
    }

    else
    {
      v73 = 0;
    }
  }

  [v378 setAssetType:v73];

  v74 = [v62 encryptedValues];
  v75 = String._bridgeToObjectiveC()();
  v76 = [v74 objectForKeyedSubscript:v75];
  swift_unknownObjectRelease();

  if (v76)
  {
    v384 = v76;
    sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
    if (swift_dynamicCast())
    {
      v76 = String._bridgeToObjectiveC()();
    }

    else
    {
      v76 = 0;
    }
  }

  [v378 setSource:v76];

  v77 = [v62 encryptedValues];
  v78 = String._bridgeToObjectiveC()();
  v79 = [v77 objectForKeyedSubscript:v78];
  swift_unknownObjectRelease();

  if (v79)
  {
    v382 = v79;
    sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
    v80 = type metadata accessor for Date();
    v81 = swift_dynamicCast();
    v82 = *(v80 - 8);
    (*(v82 + 56))(v33, v81 ^ 1u, 1, v80);
    v83 = 0;
    if ((*(v82 + 48))(v33, 1, v80) != 1)
    {
      v83 = Date._bridgeToObjectiveC()().super.isa;
      (*(v82 + 8))(v33, v80);
    }
  }

  else
  {
    v84 = type metadata accessor for Date();
    (*(*(v84 - 8) + 56))(v33, 1, 1, v84);
    v83 = 0;
  }

  v85 = v378;
  [v378 setCreatedDate:v83];

  v86 = [v380 encryptedValues];
  v87 = String._bridgeToObjectiveC()();
  v88 = [v86 objectForKeyedSubscript:v87];
  swift_unknownObjectRelease();

  if (v88)
  {
    v382 = v88;
    sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
    if (swift_dynamicCast())
    {
      v85 = v378;
      [v378 setMinimumSupportedAppVersion:v384];
    }

    else
    {
      v85 = v378;
    }
  }

  v89 = v380;
  v90 = CKRecord.encodedSystemFields.getter();
  v92 = v91;
  v93 = Data._bridgeToObjectiveC()().super.isa;
  [v85 setRecordSystemFields:{v93, sub_1000340DC(v90, v92)}];

  v94 = [v89 encryptedValues];
  v95 = String._bridgeToObjectiveC()();
  v96 = [v94 objectForKeyedSubscript:v95];
  swift_unknownObjectRelease();

  if (v96)
  {
    v382 = v96;
    sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
    v97 = type metadata accessor for Date();
    v98 = swift_dynamicCast();
    v99 = *(v97 - 8);
    (*(v99 + 56))(v30, v98 ^ 1u, 1, v97);
    v100 = (*(v99 + 48))(v30, 1, v97);
    v96 = 0;
    v101 = v368;
    if (v100 != 1)
    {
      v96 = Date._bridgeToObjectiveC()().super.isa;
      (*(v99 + 8))(v30, v97);
    }
  }

  else
  {
    v102 = type metadata accessor for Date();
    (*(*(v102 - 8) + 56))(v30, 1, 1, v102);
    v101 = v368;
  }

  [v378 setSuggestionDate:v96];

  v103 = v380;
  v104 = [v380 encryptedValues];
  v105 = String._bridgeToObjectiveC()();
  v106 = [v104 objectForKeyedSubscript:v105];
  swift_unknownObjectRelease();

  if (v106)
  {
    v384 = v106;
    sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
    if (swift_dynamicCast())
    {
      v107 = v359;
      UUID.init(uuidString:)();

      if (v375(v107, 1, v54) == 1)
      {
        v108 = 0;
      }

      else
      {
        v108 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v362 + 8))(v107, v54);
      }

      [v378 setSuggestionId:v108];
    }
  }

  v109 = [v103 encryptedValues];
  v110 = String._bridgeToObjectiveC()();
  v111 = [v109 objectForKeyedSubscript:v110];
  swift_unknownObjectRelease();

  if (v111)
  {
    v382 = v111;
    sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
    if (swift_dynamicCast())
    {
      [v378 setIsSlim:v384];
    }
  }

  v112 = [v103 encryptedValues];
  v113 = String._bridgeToObjectiveC()();
  v114 = [v112 objectForKeyedSubscript:v113];
  swift_unknownObjectRelease();

  if (v114)
  {
    v384 = v114;
    sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
    if (swift_dynamicCast())
    {
      v115 = String._bridgeToObjectiveC()();

      [v378 setOsVersion:v115];
    }
  }

  if (!CKRecord.subscript.getter())
  {
    goto LABEL_57;
  }

  objc_opt_self();
  v116 = swift_dynamicCastObjCClass();
  if (!v116)
  {

    swift_unknownObjectRelease();
LABEL_58:
    v375 = 0;
    goto LABEL_59;
  }

  v117 = [v116 fileURL];
  if (!v117)
  {
    swift_unknownObjectRelease();
LABEL_57:

    goto LABEL_58;
  }

  v118 = v357;
  v119 = v117;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v68 + 32))(v372, v118, v377);
  v120 = v380;
  v121 = v378;

  v122 = Logger.logObject.getter();
  v123 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    v384 = swift_slowAlloc();
    *v124 = 136315650;
    v125 = CKRecord.recordType.getter();
    v127 = sub_100008458(v125, v126, &v384);

    *(v124 + 4) = v127;
    *(v124 + 12) = 2080;
    v128 = [v121 assetType];
    if (v128)
    {
      v129 = v128;
      v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v132 = v131;
    }

    else
    {
      v130 = 0;
      v132 = 0;
    }

    v382 = v130;
    v383 = v132;
    sub_1000F24EC(&unk_100AE4870, &qword_100945360);
    v185 = String.init<A>(describing:)();
    v187 = sub_100008458(v185, v186, &v384);

    *(v124 + 14) = v187;
    *(v124 + 22) = 2080;
    v145 = v376;
    *(v124 + 24) = sub_100008458(v366, v376, &v384);
    _os_log_impl(&_mh_execute_header, v122, v123, "CKAsset.fileURL unexpectedly included with new %s [%s] record %s", v124, 0x20u);
    swift_arrayDestroy();

    v68 = v365;
  }

  else
  {

    v145 = v376;
  }

  v188 = v358;
  v189 = v377;
  (*(v68 + 16))(v358, v372, v377);

  v190 = Logger.logObject.getter();
  v191 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v190, v191))
  {
    v192 = swift_slowAlloc();
    v375 = v121;
    v193 = v188;
    v194 = v192;
    v382 = swift_slowAlloc();
    *v194 = 136315394;
    *(v194 + 4) = sub_100008458(v366, v145, &v382);
    *(v194 + 12) = 2080;
    sub_100726084(&qword_100ADEFD0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v195 = dispatch thunk of CustomStringConvertible.description.getter();
    v197 = v196;
    v198 = *(v68 + 8);
    v121 = v375;
    v198(v193, v377);
    v199 = sub_100008458(v195, v197, &v382);

    *(v194 + 14) = v199;
    _os_log_impl(&_mh_execute_header, v190, v191, "Processing assetMetadataAsset file for record %s using url %s", v194, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v198 = *(v68 + 8);
    v198(v188, v189);
  }

  v101 = v368;
  v200 = Data.init(contentsOf:options:)();
  v375 = 0;
  v201 = v200;
  v203 = v202;
  v204 = Data._bridgeToObjectiveC()().super.isa;
  [v121 setAssetMetaData:{v204, sub_1000340DC(v201, v203)}];

  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100286DEC(&v384, v366, v376);
  swift_endAccess();
  swift_unknownObjectRelease();

  v205 = v365;
  v198(v372, v377);
  v68 = v205;
LABEL_59:
  v133 = [v380 encryptedValues];
  v134 = String._bridgeToObjectiveC()();
  v135 = [v133 objectForKeyedSubscript:v134];
  swift_unknownObjectRelease();

  v136 = v379;
  if (v135)
  {
    v384 = v135;
    sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
    if (swift_dynamicCast())
    {
      v137 = v382;
      v138 = v383;
      v139 = v378;
      v140 = [v378 assetMetaData];
      if (v140)
      {
        v141 = v140;
        v142 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v144 = v143;

        sub_1000340DC(v142, v144);
      }

      else
      {
        v146 = Data._bridgeToObjectiveC()().super.isa;
        [v139 setAssetMetaData:v146];
      }

      sub_1000340DC(v137, v138);
      v136 = v379;
    }
  }

  if (CKRecord.subscript.getter())
  {
    objc_opt_self();
    v147 = swift_dynamicCastObjCClass();
    if (!v147 || (*&v376 = v147, (v148 = [v147 fileURL]) == 0))
    {
      swift_unknownObjectRelease();
      goto LABEL_95;
    }

    v149 = v367;
    v150 = v148;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v151 = [v380 encryptedValues];
    v152 = String._bridgeToObjectiveC()();
    v153 = [v151 objectForKeyedSubscript:v152];
    swift_unknownObjectRelease();

    if (v153)
    {
      v384 = v153;
      sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
      if (swift_dynamicCast())
      {
        v154 = v382;
        v155 = v361;
        static FileStoreConfiguration.shared.getter();
        v366 = v154;
        FileStoreConfiguration.getAttachmentURL(from:)();
        (v369[1].isa)(v155, v101);
        v156 = v68;
        v157 = objc_opt_self();
        v158 = [v157 defaultManager];
        v159 = v360;
        URL.deletingLastPathComponent()();
        URL._bridgeToObjectiveC()(v160);
        v162 = v161;
        *&v372 = *(v156 + 8);
        (v372)(v159, v377);
        sub_1000F24EC(&qword_100AD77C8, &qword_100946918);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100940080;
        *(inited + 32) = NSFileProtectionKey;
        v164 = qword_100AD0060;
        v165 = NSFileProtectionKey;
        if (v164 != -1)
        {
          swift_once();
        }

        sub_10000617C(v101, qword_100B2FC48);
        v166 = FileStoreConfiguration.protectionClass.getter();
        type metadata accessor for URLFileProtection(0);
        *(inited + 64) = v167;
        *(inited + 40) = v166;
        sub_100362FA8(inited);
        swift_setDeallocating();
        sub_100004F84(inited + 32, &qword_100ADFE90, &unk_100946920);
        type metadata accessor for FileAttributeKey(0);
        sub_100726084(&qword_100AD1C38, type metadata accessor for FileAttributeKey, &unk_10093FA50);
        v168 = Dictionary._bridgeToObjectiveC()().super.isa;

        v382 = 0;
        v169 = [v158 createDirectoryAtURL:v162 withIntermediateDirectories:1 attributes:v168 error:&v382];

        v170 = v382;
        if (v169)
        {
          v171 = v382;
          v172 = [v157 defaultManager];
          v173 = v367;
          URL._bridgeToObjectiveC()(&v385);
          v175 = v174;
          v176 = v374;
          URL._bridgeToObjectiveC()(&v386);
          v178 = v177;
          v382 = 0;
          v179 = [v172 copyItemAtURL:v175 toURL:v177 error:&v382];

          v170 = v382;
          if (v179)
          {
            v180 = v382;
            v181 = FileStoreConfiguration.protectionClass.getter();
            URL.setProtectionClass(protectionClass:)(v181);

            v182 = String._bridgeToObjectiveC()();

            [v378 setFileAttachment:v182];
            swift_unknownObjectRelease();

            v183 = v377;
            v184 = v372;
            (v372)(v176, v377);
            v184(v173, v183);
            v68 = v365;
LABEL_94:
            v136 = v379;
            goto LABEL_95;
          }

          v206 = v377;
          v68 = v365;
        }

        else
        {
          v206 = v377;
          v68 = v365;
          v176 = v374;
        }

        v207 = v170;

        _convertNSErrorToError(_:)();

        swift_willThrow();
        v375 = 0;
        v208 = v372;
        (v372)(v176, v206);
        swift_errorRetain();
        swift_unknownObjectRetain();
        v209 = Logger.logObject.getter();
        v210 = static os_log_type_t.error.getter();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v209, v210))
        {
          v211 = swift_slowAlloc();
          v212 = swift_slowAlloc();
          *v211 = 138412546;
          swift_errorRetain();
          v213 = _swift_stdlib_bridgeErrorToNSError();
          *(v211 + 4) = v213;
          *(v211 + 12) = 2112;
          v214 = v376;
          *(v211 + 14) = v376;
          *v212 = v213;
          v212[1] = v214;
          swift_unknownObjectRetain();
          _os_log_impl(&_mh_execute_header, v209, v210, "Unable to process attachment error: %@ ckasset: %@", v211, 0x16u);
          sub_1000F24EC(&unk_100AD4BB0, &unk_100941E50);
          swift_arrayDestroy();

          swift_unknownObjectRelease();

          v215 = v367;
          v216 = v377;
        }

        else
        {

          swift_unknownObjectRelease();
          v215 = v367;
          v216 = v206;
        }

        v208(v215, v216);
        goto LABEL_94;
      }

      (*(v68 + 8))(v367, v377);
    }

    else
    {
      (*(v68 + 8))(v149, v377);
    }

    swift_unknownObjectRelease();
    v136 = v379;
  }

LABEL_95:
  v217 = v380;
  v218 = CKRecord.allKeys()();
  v220 = *(v218 + 16);
  v362 = v218;
  if (v220)
  {
    v367 = (v68 + 32);
    v374 = (v68 + 8);
    v366 = 0x80000001008F0CC0;
    v357 = &v369[1];
    v356 = NSFileProtectionKey;
    v221 = (v218 + 40);
    v355 = NSFileProtectionCompleteUnlessOpen;
    v349 = NSURLFileProtectionCompleteUnlessOpen;
    *&v219 = 136315138;
    v376 = v219;
    *&v219 = 136315650;
    v354 = v219;
    v372 = xmmword_100940080;
    do
    {
      v223 = *(v221 - 1);
      v222 = *v221;

      sub_1003FF844(0, v223, v222);
      if ((v224 & 0x10000) != 0)
      {
        goto LABEL_116;
      }

      v225 = v224;
      if (CKRecord.subscript.getter())
      {
        objc_opt_self();
        v226 = swift_dynamicCastObjCClass();
        if (v226)
        {
          v227 = v226;
          v228 = [v226 fileURL];
          if (v228)
          {
            v369 = v227;
            v229 = v370;
            v230 = v228;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v231 = v373;
            (*v367)(v373, v229, v377);

            v232 = Logger.logObject.getter();
            v233 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v232, v233))
            {
              v234 = swift_slowAlloc();
              v235 = swift_slowAlloc();
              v382 = v235;
              *v234 = v376;
              *(v234 + 4) = sub_100008458(v223, v222, &v382);
              _os_log_impl(&_mh_execute_header, v232, v233, "Processing data attachment parameter %s", v234, 0xCu);
              sub_10000BA7C(v235);

              v231 = v373;
            }

            v236 = v375;
            v237 = Data.init(contentsOf:options:)();
            if (v236)
            {

              swift_errorRetain();
              swift_unknownObjectRetain();
              v239 = Logger.logObject.getter();
              v240 = static os_log_type_t.error.getter();

              swift_unknownObjectRelease();
              if (os_log_type_enabled(v239, v240))
              {
                v241 = swift_slowAlloc();
                v242 = swift_slowAlloc();
                v358 = v242;
                v359 = swift_slowAlloc();
                v382 = v359;
                *v241 = v354;
                *(v241 + 4) = sub_100008458(v223, v222, &v382);
                *(v241 + 12) = 2112;
                swift_errorRetain();
                v243 = _swift_stdlib_bridgeErrorToNSError();
                *(v241 + 14) = v243;
                *v242 = v243;
                *(v241 + 22) = 2080;
                v244 = [v369 debugDescription];
                v369 = v239;
                v245 = v244;
                v246 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v375 = v236;
                v247 = v246;
                v249 = v248;

                v250 = sub_100008458(v247, v249, &v382);

                *(v241 + 24) = v250;
                v251 = v369;
                _os_log_impl(&_mh_execute_header, v369, v240, "Unable to get data from attachment parameter %s error:%@ ckasset:%s", v241, 0x20u);
                sub_100004F84(v358, &unk_100AD4BB0, &unk_100941E50);

                swift_arrayDestroy();

                swift_unknownObjectRelease();

                (*v374)(v373, v377);
              }

              else
              {

                swift_unknownObjectRelease();
                (*v374)(v231, v377);
              }

              v375 = 0;
            }

            else
            {
              v375 = 0;
              v256 = v237;
              v257 = v231;
              v258 = v238;
              sub_100049ED8(v237, v238);
              sub_100286860(v256, v258, v225);
              sub_1000340DC(v256, v258);
              sub_1000340DC(v256, v258);
              swift_unknownObjectRelease();
              (*v374)(v257, v377);
            }

            v217 = v380;
            v136 = v379;
            goto LABEL_116;
          }
        }

        swift_unknownObjectRelease();
      }

      v252 = Logger.logObject.getter();
      v253 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v252, v253))
      {
        v254 = swift_slowAlloc();
        v255 = swift_slowAlloc();
        v382 = v255;
        *v254 = v376;
        *(v254 + 4) = sub_100008458(v223, v222, &v382);
        _os_log_impl(&_mh_execute_header, v252, v253, "Unable to get ckasset for dataAttachment parameter %s", v254, 0xCu);
        sub_10000BA7C(v255);
        v217 = v380;

        v136 = v379;
      }

LABEL_116:
      sub_1003FF844(2, v223, v222);
      if ((v259 & 0x10000) != 0)
      {
      }

      else
      {
        v260 = v259;
        if (CKRecord.subscript.getter())
        {
          objc_opt_self();
          v261 = swift_dynamicCastObjCClass();
          if (v261 && (v262 = [v261 fileURL]) != 0)
          {
            v263 = v262;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v264 = v136;
            v265 = [v217 encryptedValues];
            v382 = 0xD00000000000001ALL;
            v383 = v366;
            sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
            v266 = swift_allocObject();
            *(v266 + 16) = v372;
            *(v266 + 56) = &type metadata for Int16;
            *(v266 + 64) = &protocol witness table for Int16;
            *(v266 + 32) = v260;
            v267._countAndFlagsBits = String.init(format:_:)();
            String.append(_:)(v267);

            v268 = String._bridgeToObjectiveC()();

            v269 = [v265 objectForKeyedSubscript:v268];
            swift_unknownObjectRelease();

            if (v269)
            {
              v384 = v269;
              sub_1000F24EC(&unk_100AE4C70, &qword_100956F68);
              if (swift_dynamicCast())
              {

                v270 = v382;
                v271 = v383;
                v272 = v361;
                static FileStoreConfiguration.shared.getter();
                v350 = v270;
                v359 = v271;
                FileStoreConfiguration.getAttachmentURL(from:)();
                (*v357)(v272, v368);
                v358 = objc_opt_self();
                v273 = [v358 defaultManager];
                v274 = v360;
                URL.deletingLastPathComponent()();
                URL._bridgeToObjectiveC()(v275);
                v277 = v276;
                v369 = *v374;
                (v369)(v274, v377);
                sub_1000F24EC(&qword_100AD77C8, &qword_100946918);
                v278 = swift_initStackObject();
                *(v278 + 16) = v372;
                v279 = v356;
                *(v278 + 32) = v356;
                type metadata accessor for FileProtectionType(0);
                *(v278 + 64) = v280;
                v281 = v355;
                *(v278 + 40) = v355;
                v282 = v279;
                v283 = v281;
                sub_100362FA8(v278);
                swift_setDeallocating();
                sub_100004F84(v278 + 32, &qword_100ADFE90, &unk_100946920);
                type metadata accessor for FileAttributeKey(0);
                sub_100726084(&qword_100AD1C38, type metadata accessor for FileAttributeKey, &unk_10093FA50);
                v284 = Dictionary._bridgeToObjectiveC()().super.isa;

                v382 = 0;
                LODWORD(v274) = [v273 createDirectoryAtURL:v277 withIntermediateDirectories:1 attributes:v284 error:&v382];

                v285 = v382;
                if (v274 && (v286 = v382, v287 = [v358 defaultManager], v288 = v379, URL._bridgeToObjectiveC()(&v387), v290 = v289, v291 = v371, URL._bridgeToObjectiveC()(&v385._reserved), v293 = v292, v382 = 0, v294 = objc_msgSend(v287, "copyItemAtURL:toURL:error:", v290, v292, &v382), v287, v290, v293, v285 = v382, v294))
                {
                  v295 = v382;
                  URL.setProtectionClass(protectionClass:)(v349);
                  type metadata accessor for JournalEntryAssetFileAttachmentMO();
                  v296 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                  v297 = [v296 initWithContext:v351];
                  v298 = String._bridgeToObjectiveC()();

                  [v297 setFilePath:v298];

                  [v297 setIndex:v260];
                  [v378 addFileAttachmentsObject:v297];

                  swift_unknownObjectRelease();
                  v299 = v377;
                  v300 = v369;
                  (v369)(v291, v377);
                  (v300)(v288, v299);
                  v217 = v380;
                  v136 = v288;
                }

                else
                {
                  v306 = v285;

                  _convertNSErrorToError(_:)();

                  swift_willThrow();
                  v375 = 0;
                  swift_errorRetain();
                  v307 = Logger.logObject.getter();
                  v308 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v307, v308))
                  {
                    v309 = swift_slowAlloc();
                    v310 = swift_slowAlloc();
                    v382 = v310;
                    *v309 = v376;
                    swift_getErrorValue();
                    v311 = Error.localizedDescription.getter();
                    v313 = sub_100008458(v311, v312, &v382);

                    *(v309 + 4) = v313;
                    _os_log_impl(&_mh_execute_header, v307, v308, "Unable to handle fileAttachments %s", v309, 0xCu);
                    sub_10000BA7C(v310);
                  }

                  swift_unknownObjectRelease();

                  v314 = v377;
                  v315 = v369;
                  (v369)(v371, v377);
                  v136 = v379;
                  (v315)(v379, v314);
                  v217 = v380;
                }

                goto LABEL_98;
              }

              v136 = v379;
              (*v374)(v379, v377);
              swift_unknownObjectRelease();
              v217 = v380;
            }

            else
            {
              (*v374)(v264, v377);
              swift_unknownObjectRelease();
              v217 = v380;
              v136 = v264;
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v301 = Logger.logObject.getter();
        v302 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v301, v302))
        {
          v303 = swift_slowAlloc();
          v304 = swift_slowAlloc();
          v382 = v304;
          *v303 = v376;
          v305 = sub_100008458(v223, v222, &v382);

          *(v303 + 4) = v305;
          _os_log_impl(&_mh_execute_header, v301, v302, "Unable to get ckasset for fileAttachmentData parameter %s", v303, 0xCu);
          sub_10000BA7C(v304);
          v217 = v380;

          v136 = v379;
        }

        else
        {
        }
      }

LABEL_98:
      v221 += 2;
      --v220;
    }

    while (v220);
  }

  v316 = CKRecord.subscript.getter();
  v317 = v381;
  v318 = v378;
  if (v316)
  {
    objc_opt_self();
    v319 = swift_dynamicCastObjCClass();
    if (!v319)
    {
      goto LABEL_142;
    }

    v320 = v319;
    v321 = [v319 fileURL];
    if (!v321)
    {
      goto LABEL_142;
    }

    v322 = v352;
    v323 = v321;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v318 = v378;
    v324 = v365;
    v325 = v353;
    v326 = v377;
    (*(v365 + 32))(v353, v322, v377);
    v327 = [v318 dataAttachments];
    if (!v327)
    {
      (*(v324 + 8))(v325, v326);
      goto LABEL_142;
    }

    v328 = v327;
    if ([v327 count])
    {
      (*(v324 + 8))(v325, v326);

LABEL_142:
      swift_unknownObjectRelease();
      goto LABEL_143;
    }

    v330 = Logger.logObject.getter();
    v331 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v330, v331))
    {
      v332 = swift_slowAlloc();
      *v332 = 0;
      _os_log_impl(&_mh_execute_header, v330, v331, "Processing legacy data attachment parameter", v332, 2u);
      v326 = v377;
    }

    v333 = v375;
    v334 = Data.init(contentsOf:options:)();
    if (v333)
    {
      swift_unknownObjectRetain();
      swift_errorRetain();
      v336 = Logger.logObject.getter();
      v337 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v336, v337))
      {
        v338 = swift_slowAlloc();
        v339 = swift_slowAlloc();
        v380 = swift_slowAlloc();
        v382 = v380;
        *v338 = 136315394;
        v340 = [v320 debugDescription];
        v341 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v343 = v342;

        v344 = sub_100008458(v341, v343, &v382);

        *(v338 + 4) = v344;
        *(v338 + 12) = 2112;
        swift_errorRetain();
        v345 = _swift_stdlib_bridgeErrorToNSError();
        *(v338 + 14) = v345;
        *v339 = v345;
        _os_log_impl(&_mh_execute_header, v336, v337, "Unable to get data from attachment ckasset:%s\nError:\n%@", v338, 0x16u);
        sub_100004F84(v339, &unk_100AD4BB0, &unk_100941E50);

        sub_10000BA7C(v380);

        swift_unknownObjectRelease();
        (*(v365 + 8))(v353, v377);
      }

      else
      {

        swift_unknownObjectRelease();
        (*(v365 + 8))(v325, v326);
      }

      v317 = v381;
      v318 = v378;
    }

    else
    {
      v346 = v334;
      v347 = v335;
      sub_100049ED8(v334, v335);
      v318 = v378;
      sub_100286860(v346, v347, 0);
      sub_1000340DC(v346, v347);

      sub_1000340DC(v346, v347);
      swift_unknownObjectRelease();
      (*(v324 + 8))(v325, v326);
    }
  }

LABEL_143:
  [v318 setIsUploadedToCloud:1];
  (*(v363 + 8))(v317, v364);
  return v318;
}

uint64_t sub_100725AB4()
{
  type metadata accessor for JournalEntryAssetMO();
  v0 = static JournalEntryAssetMO.fetchRequest()();
  v1 = objc_allocWithZone(NSSortDescriptor);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithKey:v2 ascending:0];

  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100941D50;
  *(v4 + 32) = v3;
  sub_1000065A8(0, &qword_100AD5B00, NSSortDescriptor_ptr);
  v22 = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setSortDescriptors:isa];

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100941D60;
  sub_1000065A8(0, &qword_100ADB900, NSPredicate_ptr);
  sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100940080;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_100031B20();
  *(v7 + 64) = v8;
  strcpy((v7 + 32), "assetMetaData");
  *(v7 + 46) = -4864;
  *(v6 + 32) = NSPredicate.init(format:_:)();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100940080;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = v8;
  *(v9 + 32) = 0xD000000000000014;
  *(v9 + 40) = 0x8000000100902940;
  *(v6 + 40) = NSPredicate.init(format:_:)();
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = objc_opt_self();
  v12 = [v11 orPredicateWithSubpredicates:v10];

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100941830;
  *(v13 + 32) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100940080;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = v8;
  *(v14 + 32) = 0xD000000000000011;
  *(v14 + 40) = 0x80000001008DC3B0;
  v21 = v12;
  *(v13 + 40) = NSPredicate.init(format:_:)();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100940080;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = v8;
  *(v15 + 32) = 0xD000000000000012;
  *(v15 + 40) = 0x80000001008E3C20;
  *(v13 + 48) = NSPredicate.init(format:_:)();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100940050;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = v8;
  strcpy((v16 + 32), "entry.isDraft");
  *(v16 + 46) = -4864;
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v8;
  strcpy((v16 + 72), "entry.isDraft");
  *(v16 + 86) = -4864;
  *(v13 + 56) = NSPredicate.init(format:_:)();
  v17 = Array._bridgeToObjectiveC()().super.isa;

  v18 = [v11 andPredicateWithSubpredicates:v17];

  [v0 setPredicate:v18];
  v19 = NSManagedObjectContext.fetch<A>(_:)();

  return v19;
}

uint64_t sub_100726084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1007260F0()
{
  if ([v0 annotation])
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = [v1 geotaggables];
      swift_unknownObjectRelease();
      v3 = [v2 array];

      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = sub_100584CFC(v4);

      if (v5)
      {
        v6 = sub_100184C78();

        return v6;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

void sub_100726290()
{
  v1 = v0;
  v2 = type metadata accessor for ColorResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  [v0 _setStyleAttributes:{0, __chkstk_darwin(v8 - 8).n128_f64[0]}];
  [v0 setGlyphText:0];
  [v0 setGlyphImage:0];
  [v0 setCanShowCallout:1];
  v9 = sub_1007260F0();
  v10 = OBJC_IVAR____TtC7Journal28EntryMapMarkerAnnotationView_geotaggablesCount;
  if (*&v0[OBJC_IVAR____TtC7Journal28EntryMapMarkerAnnotationView_geotaggablesCount] < 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v0[OBJC_IVAR____TtC7Journal28EntryMapMarkerAnnotationView_allowsClustering];
  }

  if (v9 > 2u)
  {
    goto LABEL_9;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      sub_10018D564();
      if ((v11 & 1) == 0)
      {
        if (qword_100AD0D70 != -1)
        {
          swift_once();
        }

        v34 = sub_10000617C(v2, qword_100B31760);
        (*(v3 + 16))(v5, v34, v2);
        v35 = UIColor.init(resource:)();
        [v1 setMarkerTintColor:v35];

        v36 = String._bridgeToObjectiveC()();
        v14 = [objc_opt_self() _systemImageNamed:v36];

        v15 = &selRef_setGlyphImage_;
        goto LABEL_11;
      }

      if (qword_100AD0D70 != -1)
      {
        swift_once();
      }

      v16 = sub_10000617C(v2, qword_100B31760);
      (*(v3 + 16))(v5, v16, v2);
      v12 = UIColor.init(resource:)();
      goto LABEL_10;
    }

LABEL_9:
    v12 = [objc_opt_self() systemIndigoColor];
LABEL_10:
    v13 = v12;
    [v1 setMarkerTintColor:v12];

    v37[1] = *&v1[v10];
    sub_1000F6568();
    BinaryInteger.formatted()();
    v14 = String._bridgeToObjectiveC()();

    v15 = &selRef_setGlyphText_;
LABEL_11:
    [v1 *v15];
    goto LABEL_12;
  }

  if (v11)
  {
    goto LABEL_9;
  }

  if ([v1 annotation])
  {
    type metadata accessor for LocationPinAnnotation();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v17;
      v19 = *(v17 + OBJC_IVAR____TtC7Journal21LocationPinAnnotation_styleAttributes);
      if (v19)
      {
        v20 = objc_opt_self();
        v21 = v19;
        v22 = [v20 styleAttributesForMapFeatureAttributes:v21 elevatedGround:1];
        [v1 _setStyleAttributes:v22];
      }

      v23 = *(v18 + OBJC_IVAR____TtC7Journal21LocationPinAnnotation_placeName + 8);
      if (v23)
      {
        v24 = *(v18 + OBJC_IVAR____TtC7Journal21LocationPinAnnotation_placeName);

        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v25._countAndFlagsBits = 0x3A6E69502070614DLL;
        v25._object = 0xE900000000000020;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
        v26._countAndFlagsBits = v24;
        v26._object = v23;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v26);

        v27._countAndFlagsBits = 0;
        v27._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
        String.LocalizationValue.init(stringInterpolation:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v28 = String._bridgeToObjectiveC()();

        [v1 setAccessibilityLabel:v28];
      }
    }

    swift_unknownObjectRelease();
  }

  v29 = [v1 _styleAttributes];
  if (!v29 || (v30 = v29, [v29 poiType], v30, (v31 = objc_msgSend(v1, "_styleAttributes")) != 0) && (v32 = v31, v33 = objc_msgSend(v31, "poiType"), v32, v33 == 348) || (v14 = objc_msgSend(v1, "_styleAttributes")) == 0)
  {
    v14 = [objc_opt_self() systemIndigoColor];
    v15 = &selRef_setMarkerTintColor_;
    goto LABEL_11;
  }

LABEL_12:
}

id sub_100726A54(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EntryMapMarkerAnnotationView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100726AAC(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for EntryMapMarkerAnnotationView();
  objc_msgSendSuper2(&v6, "setAnnotation:", a1);
  if ([v1 annotation])
  {
    swift_unknownObjectRelease();
    if ([v1 annotation])
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v4 = [v3 geotaggables];
        swift_unknownObjectRelease();
        v5 = [v4 count];

LABEL_7:
        *&v1[OBJC_IVAR____TtC7Journal28EntryMapMarkerAnnotationView_geotaggablesCount] = v5;
        sub_100726290();
        return;
      }

      swift_unknownObjectRelease();
    }

    v5 = 1;
    goto LABEL_7;
  }
}

uint64_t type metadata accessor for DataStackConfiguration(uint64_t a1)
{
  result = qword_100AEEEC8;
  if (!qword_100AEEEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100726BF4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v27 = a3;
  v5 = type metadata accessor for Runtime.Environment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v26 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v15 = __chkstk_darwin(v14);
  v17 = &v26 - v16;
  v18 = *(v6 + 16);
  v18(&v26 - v16, a1, v5, v15);
  (v18)(v13, v17, v5);
  (v18)(v10, v13, v5);
  v19 = (*(v6 + 88))(v10, v5);
  if (v19 == enum case for Runtime.Environment.production(_:))
  {
    v20 = 0;
LABEL_7:
    v21 = *(v6 + 8);
    v22 = a2;
    v21(v13, v5);
    v21(v17, v5);
    v23 = v27;
    *v27 = v22;
    *(v23 + 8) = v20;
    (v18)(v26, a1, v5);
    type metadata accessor for DataStackConfiguration(0);
    CloudKitStackConfiguration.init(storeFileProtectionType:environment:)();
    return (v21)(a1, v5);
  }

  if (v19 == enum case for Runtime.Environment.staging(_:))
  {
    v20 = 1;
    goto LABEL_7;
  }

  if (v19 == enum case for Runtime.Environment.testing(_:))
  {
    v20 = 2;
    goto LABEL_7;
  }

  v25 = a2;
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100726EA4(uint64_t a1)
{
  result = type metadata accessor for CloudKitStackConfiguration();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100726F34(void *a1, uint64_t *a2, uint64_t *a3, double a4, double a5, double a6, double a7)
{
  *&v7[qword_100AD5290] = 0;
  *&v7[qword_100AD5298] = 0;
  v15 = &v7[qword_100AD52A0];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v7[qword_100AD52B0];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = [objc_allocWithZone(UIScrollView) init];
  *&v7[qword_100AD5288] = v17;
  *&v7[qword_100AD52A8] = a1;
  v61 = a1;
  v62.receiver = v7;
  v62.super_class = sub_1000F24EC(a2, a3);
  v18 = objc_msgSendSuper2(&v62, "initWithFrame:", a4, a5, a6, a7);
  v19 = objc_allocWithZone(UITapGestureRecognizer);
  v20 = v18;
  v21 = [v19 initWithTarget:v20 action:"onToggleHudGestureRecognized"];
  v22 = v20;
  v23 = v21;
  [v23 setDelegate:v22];
  [v23 setNumberOfTapsRequired:1];
  v24 = *&v22[qword_100AD5290];
  *&v22[qword_100AD5290] = v23;

  v25 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v22 action:"onToggleZoomGestureRecognized:"];
  v26 = v22;
  v27 = v25;
  [v27 setDelegate:v26];
  [v27 setNumberOfTapsRequired:2];
  v28 = *&v26[qword_100AD5298];
  *&v26[qword_100AD5298] = v27;

  v29 = qword_100AD52A8;
  v60 = v23;
  [*&v26[qword_100AD52A8] addGestureRecognizer:v23];
  [*&v26[v29] addGestureRecognizer:v27];
  v30 = [*&v26[v29] widthAnchor];
  v31 = [v30 constraintEqualToConstant:0.0];

  v32 = [*&v26[v29] heightAnchor];
  v33 = [v32 constraintEqualToConstant:0.0];

  v34 = &v26[qword_100AD52A0];
  v35 = *&v26[qword_100AD52A0];
  v36 = *&v26[qword_100AD52A0 + 8];
  *v34 = v31;
  v34[1] = v33;
  sub_10010CA14(v35, v36);
  sub_100727560();
  v37 = qword_100AD5288;
  v38 = *&v26[qword_100AD5288];
  [v38 setDelegate:v26];

  [*&v26[v37] setMinimumZoomScale:1.0];
  [*&v26[v37] setMaximumZoomScale:6.0];
  [*&v26[v37] setBouncesZoom:1];
  [*&v26[v37] setDecelerationRate:UIScrollViewDecelerationRateFast];
  [*&v26[v37] setShowsHorizontalScrollIndicator:0];
  [*&v26[v37] setShowsVerticalScrollIndicator:0];
  [*&v26[v37] setContentInsetAdjustmentBehavior:2];
  [*&v26[v37] addSubview:*&v26[v29]];
  [*&v26[v37] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v26[v29] setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = *&v26[v37];
  v40 = v26;
  [v40 addSubview:v39];
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10094F800;
  v42 = [*&v26[v37] leadingAnchor];
  v43 = [v40 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v41 + 32) = v44;
  v45 = [*&v26[v37] topAnchor];
  v46 = [v40 topAnchor];

  v47 = [v45 constraintEqualToAnchor:v46];
  *(v41 + 40) = v47;
  v48 = [*&v26[v37] trailingAnchor];
  v49 = [v40 trailingAnchor];

  v50 = [v48 constraintEqualToAnchor:v49];
  *(v41 + 48) = v50;
  v51 = [*&v26[v37] bottomAnchor];
  v52 = [v40 bottomAnchor];

  v53 = [v51 constraintEqualToAnchor:v52];
  *(v41 + 56) = v53;
  v54 = *v34;
  if (*v34)
  {
    *(v41 + 64) = v54;
    v55 = objc_opt_self();
    v56 = v34[1];
    *(v41 + 72) = v56;
    sub_1001AD130();
    v57 = v54;
    v58 = v56;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v55 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_100727560()
{
  v1 = &v0[qword_100AD52B0];
  if ((v0[qword_100AD52B0 + 16] & 1) == 0)
  {
    v15 = *v1;
    if (*v1 > 0.0)
    {
      v16 = v1[1];
      if (v16 > 0.0)
      {
        [v0 frame];
        v18 = v17;
        [v0 frame];
        v20 = v18 / v19;
        v21 = v15 / v16;
        if (v21 == v18 / v19)
        {
          v22 = &v0[qword_100AD52A0];
          if (!*&v0[qword_100AD52A0])
          {
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v23 = *(v22 + 1);
          v24 = *v22;
          v25 = v23;
          [v0 frame];
          [v24 setConstant:v26];

          if (!*v22)
          {
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          v27 = *(v22 + 1);
          v28 = *v22;
          v29 = v27;
          [v0 frame];
          [v29 setConstant:v30];
        }

        else
        {
          [v0 frame];
          v33 = &v0[qword_100AD52A0];
          v34 = *&v0[qword_100AD52A0];
          if (v20 >= v21)
          {
            if (!v34)
            {
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            v41 = v32;
            v42 = *(v33 + 1);
            v43 = v21 * v32;
            v44 = v34;
            v45 = v42;
            [v44 setConstant:v43];

            v39 = *v33;
            if (!*v33)
            {
LABEL_38:
              __break(1u);
              return;
            }

            v40 = *(v33 + 1);
          }

          else
          {
            if (!v34)
            {
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            v35 = v31;
            v36 = *(v33 + 1);
            v37 = v34;
            v38 = v36;
            [v37 setConstant:v35];

            v39 = *v33;
            if (!*v33)
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            v40 = *(v33 + 1);
            v41 = v35 / v21;
          }

          v28 = v39;
          v29 = v40;
          [v29 setConstant:v41];
        }

        v10 = *&v0[qword_100AD5288];
        [v10 layoutIfNeeded];
        [v10 setZoomScale:1.0];
        v46 = &v0[qword_100AD52A0];
        if (*&v0[qword_100AD52A0])
        {
          v47 = *(v46 + 1);
          v48 = *v46;
          v49 = v47;
          [v48 constant];
          if (*v46)
          {
            v51 = v50;
            v52 = *(v46 + 1);
            v53 = *v46;
            v54 = v52;
            [v54 constant];
            v56 = v55;

            [v0 frame];
            v57 = 0.0;
            if (v58 > v56)
            {
              [v0 frame];
              v57 = (v59 - v56) * 0.5;
            }

            v60 = v57;
            [v0 frame];
            if (v61 <= v51)
            {
              top = v60;
              bottom = v60;
              right = 0.0;
              left = 0.0;
            }

            else
            {
              [v0 frame];
              left = (v62 - v51) * 0.5;
              top = v60;
              bottom = v60;
              right = left;
            }

            goto LABEL_5;
          }

          goto LABEL_32;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }
  }

  v2 = &v0[qword_100AD52A0];
  v3 = *&v0[qword_100AD52A0];
  if (!v3)
  {
    __break(1u);
    goto LABEL_30;
  }

  v4 = *(v2 + 1);
  v5 = v3;
  v6 = v4;
  [v5 setConstant:0.0];

  if (!*v2)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v7 = *(v2 + 1);
  v8 = *v2;
  v9 = v7;
  [v9 setConstant:0.0];

  [*&v0[qword_100AD52A8] layoutIfNeeded];
  v10 = *&v0[qword_100AD5288];
  [v10 setZoomScale:1.0];
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
LABEL_5:

  [v10 setContentInset:{top, left, bottom, right}];
}

void sub_100727994(void *a1)
{
  v2 = qword_100AEEF10;
  v3 = *(v1 + qword_100AEEF10);
  *(v1 + qword_100AEEF10) = a1;
  v11 = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!v3)
  {
    v8 = a1;
    v9 = v11;
    goto LABEL_9;
  }

  v4 = v1;
  type metadata accessor for PhotoAsset(0);
  v5 = v11;
  v6 = v3;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    v9 = *(v4 + v2);
    if (!v9)
    {
LABEL_10:

      goto LABEL_11;
    }

LABEL_9:
    v10 = v9;
    sub_100727E34(v10);

    goto LABEL_10;
  }

  v11 = v6;
LABEL_11:
}

char *sub_100727AB4(double a1, double a2, double a3, double a4)
{
  *(v4 + qword_100AEEF00 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + qword_100AEEF08) = 0;
  *(v4 + qword_100AEEF10) = 0;
  v9 = qword_100AEEF18;
  *(v4 + v9) = [objc_allocWithZone(UIStackView) init];
  v10 = qword_100AEEF20;
  *(v4 + v10) = [objc_allocWithZone(UILabel) init];
  type metadata accessor for PhotoAssetView(0);
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100726F34(v11, &qword_100AEF180, &unk_100965158, a1, a2, a3, a4);
  v13 = v12;
  v14 = *&v12[qword_100AD52A8];
  v15 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  v16 = v14[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v14[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v17 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v14[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1)
  {
    v18 = v12;
    v19 = v14;
    v20 = 7;
LABEL_9:
    v24 = *&v14[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
    v25 = *((swift_isaMask & *v24) + 0x58);
    v26 = v24;
    v25(0, v20);

    sub_100070F50();
    v14[v17] = 1;

    goto LABEL_10;
  }

  if (v16 > 3 && v16 > 6)
  {
    v29 = v12;

    goto LABEL_10;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v22 = v13;
  v23 = v14;

  if ((v21 & 1) == 0)
  {
    v20 = v14[v15];
    goto LABEL_9;
  }

LABEL_10:
  v27 = qword_100AEEF20;
  [*&v13[qword_100AEEF20] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [*&v13[v27] setAdjustsFontForContentSizeCategory:1];
  [*&v13[v27] setAdjustsFontSizeToFitWidth:1];
  [*&v13[v27] setLineBreakMode:0];
  [*&v13[v27] setNumberOfLines:0];
  [v13 addSubview:*&v13[qword_100AEEF18]];

  return v13;
}

id sub_100727E34(void *a1)
{
  v2 = v1;
  v106 = _s23YearAdaptiveFormatStyleVMa(0);
  __chkstk_darwin(v106);
  v5 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v105 - v7;
  v9 = type metadata accessor for Date();
  v107 = *(v9 - 1);
  v108 = v9;
  __chkstk_darwin(v9);
  v105 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD5B20, qword_1009521A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v105 - v12;
  v14 = type metadata accessor for PhotoLibraryAssetMetadata();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *&v1[qword_100AD52A8];
  v19 = *(v18 + OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset);
  *(v18 + OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset) = a1;
  a1;

  v20 = v14;
  v21 = v15;
  sub_10007188C();
  sub_100067B84();
  v22 = &v2[qword_100AD52B0];
  *v22 = v23;
  *(v22 + 1) = v24;
  v22[16] = 0;
  v109 = v2;
  sub_100727560();
  sub_1006ABED4(v13);
  v25 = *(v15 + 48);
  v110 = v20;
  if (v25(v13, 1, v20) == 1)
  {
    sub_100004F84(v13, &qword_100AD5B20, qword_1009521A0);
    v26 = v109;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v110);
    PhotoLibraryAssetMetadata.date.getter();
    if ((*(v107 + 48))(v8, 1, v108) == 1)
    {
      sub_100004F84(v8, &unk_100AD4790, &unk_10093B4E0);
      v26 = v109;
      v27 = *&v109[qword_100AEEF20];
      v28 = String._bridgeToObjectiveC()();
      [v27 setText:v28];
    }

    else
    {
      v29 = v107;
      v30 = v105;
      v31 = v8;
      v32 = v108;
      (*(v107 + 32))(v105, v31, v108);
      static Date.FormatStyle.TimeStyle.shortened.getter();
      static FormatStyleCapitalizationContext.standalone.getter();
      static Locale.autoupdatingCurrent.getter();
      static Calendar.autoupdatingCurrent.getter();
      static TimeZone.autoupdatingCurrent.getter();
      static Date.now.getter();
      sub_100167A30();
      Date.formatted<A>(_:)();
      sub_1000FBBCC(v5);
      v26 = v109;
      v33 = v17;
      v34 = *&v109[qword_100AEEF20];
      v35 = String._bridgeToObjectiveC()();

      [v34 setText:v35];

      v17 = v33;
      (*(v29 + 8))(v30, v32);
    }

    v36 = PhotoLibraryAssetMetadata.placeName.getter();
    if (v37)
    {
      v38 = v36;
      v39 = v37;
      v108 = v17;
      sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_100940080;
      *(v40 + 56) = &type metadata for String;
      *(v40 + 64) = sub_100031B20();
      *(v40 + 32) = v38;
      *(v40 + 40) = v39;
      v41 = String.init(format:_:)();
      v43 = v42;
      v44 = *&v26[qword_100AEEF20];
      v45 = [v44 text];
      if (v45)
      {
        v46 = v21;
        v47 = v45;
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        v111 = v48;
        v112 = v50;
        v51._countAndFlagsBits = v41;
        v51._object = v43;
        String.append(_:)(v51);

        if (v112)
        {
          v52 = String._bridgeToObjectiveC()();
        }

        else
        {
          v52 = 0;
        }

        [v44 setText:v52];

        (*(v46 + 8))(v108, v110);
      }

      else
      {

        [v44 setText:0];

        (*(v21 + 8))(v108, v110);
      }
    }

    else
    {
      (*(v21 + 8))(v17, v110);
    }
  }

  v53 = *&v26[qword_100AEEF18];
  v110 = qword_100AEEF20;
  v108 = *&v26[qword_100AEEF20];
  [v53 setAxis:1];
  [v53 setAlignment:3];
  [v53 setUserInteractionEnabled:1];
  [v53 setSpacing:2.0];
  v54 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD03E0 != -1)
  {
    swift_once();
  }

  v107 = qword_100B303D8;
  [v54 setFont:?];
  v55 = objc_opt_self();
  v56 = [v55 secondaryLabelColor];
  [v54 setTextColor:v56];

  [v54 setAdjustsFontSizeToFitWidth:1];
  [v54 setMinimumScaleFactor:0.5];
  [v54 setAdjustsFontForContentSizeCategory:1];
  [v54 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v57 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD0378 != -1)
  {
    swift_once();
  }

  [v57 setFont:qword_100B30370];
  v58 = [v55 labelColor];
  [v57 setTextColor:v58];

  [v57 setAdjustsFontSizeToFitWidth:1];
  [v57 setMinimumScaleFactor:0.5];
  [v57 setAdjustsFontForContentSizeCategory:1];
  [v57 setNumberOfLines:0];
  [v57 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v59 = v108;
  [v59 setFont:v107];
  v108 = v55;
  v60 = [v55 secondaryLabelColor];
  [v59 setTextColor:v60];

  [v59 setAdjustsFontForContentSizeCategory:1];
  [v59 setAdjustsFontSizeToFitWidth:1];
  [v59 setMinimumScaleFactor:0.5];
  [v59 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v59 setLineBreakMode:0];
  [v59 setNumberOfLines:0];
  [v59 setTextAlignment:1];
  [v53 addArrangedSubview:v54];
  [v53 addArrangedSubview:v57];
  [v53 addArrangedSubview:v59];
  [v53 setCustomSpacing:v54 afterView:6.0];
  [v53 setCustomSpacing:v59 afterView:12.0];
  v61 = [v54 superview];
  if (v61)
  {
    v62 = v61;
    [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
    v63 = [v62 centerXAnchor];
    v64 = [v54 centerXAnchor];
    v65 = [v64 constraintEqualToAnchor:v63];

    [v65 setConstant:0.0];
    [v65 setActive:1];
  }

  v66 = [v57 superview];
  v67 = v109;
  if (v66)
  {
    v68 = v66;
    [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
    v69 = [v68 centerXAnchor];
    v70 = [v57 centerXAnchor];
    v71 = [v70 constraintEqualToAnchor:v69];

    [v71 setConstant:0.0];
    [v71 setActive:1];
  }

  v72 = [v59 superview];
  if (v72)
  {
    v73 = v72;
    [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
    v74 = [v73 centerXAnchor];
    v75 = [v59 centerXAnchor];
    v76 = [v75 constraintEqualToAnchor:v74];

    [v76 setConstant:0.0];
    [v76 setActive:1];

    v57 = v74;
  }

  else
  {
    v73 = v59;
  }

  v77 = v108;

  [v53 setLayoutMargins:{16.0, 0.0, 116.0, 0.0}];
  [v53 setLayoutMarginsRelativeArrangement:1];
  v78 = *&v67[v110];
  v79 = [v78 superview];
  if (v79)
  {
    v80 = v79;
    [v78 setTranslatesAutoresizingMaskIntoConstraints:0];
    v81 = [v78 leadingAnchor];
    v82 = [v80 leadingAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];

    [v83 setConstant:32.0];
    if (v83)
    {
      [v83 setActive:1];
    }
  }

  else
  {
    v83 = 0;
    v80 = v78;
  }

  v84 = *&v67[v110];
  v85 = [v84 superview];
  if (v85)
  {
    v86 = v85;
    [v84 setTranslatesAutoresizingMaskIntoConstraints:0];
    v87 = [v84 trailingAnchor];
    v88 = [v86 trailingAnchor];
    v89 = [v87 constraintEqualToAnchor:v88];

    [v89 setConstant:-32.0];
    if (v89)
    {
      [v89 setActive:1];
    }
  }

  else
  {
    v89 = 0;
    v86 = v84;
  }

  v90 = v110;
  v91 = *&v67[v110];
  v92 = sub_100028DA0(0, 1, 84.0);

  [*&v67[v90] setTextAlignment:1];
  v93 = [v53 superview];
  if (v93)
  {
    v94 = v93;
    [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
    v95 = [v53 leadingAnchor];
    v96 = [v94 leadingAnchor];
    v97 = [v95 constraintEqualToAnchor:v96];

    [v97 setConstant:0.0];
    [v97 setActive:1];
  }

  v98 = [v53 superview];
  if (v98)
  {
    v99 = v98;
    [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
    v100 = [v53 trailingAnchor];
    v101 = [v99 trailingAnchor];
    v102 = [v100 constraintEqualToAnchor:v101];

    [v102 setConstant:0.0];
    [v102 setActive:1];
  }

  v103 = [v77 secondarySystemBackgroundColor];
  [v53 setBackgroundColor:v103];

  return [v67 layoutIfNeeded];
}

uint64_t sub_100728E7C(void (*a1)(void))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      a1();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100728F0C()
{
  sub_100038534(v0 + qword_100AEEF00);

  v1 = *(v0 + qword_100AEEF20);
}

id sub_100728F6C(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FullScreenPhotoView(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100728FA4(uint64_t a1)
{
  sub_100038534(a1 + qword_100AEEF00);

  v2 = *(a1 + qword_100AEEF20);
}

uint64_t type metadata accessor for FullScreenPhotoView(uint64_t a1)
{
  result = qword_100AEEF50;
  if (!qword_100AEEF50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007290CC()
{
  *(v0 + qword_100AEEF00 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_100AEEF08) = 0;
  *(v0 + qword_100AEEF10) = 0;
  v1 = qword_100AEEF18;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = qword_100AEEF20;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1007291A8()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEF198);
  v1 = sub_10000617C(v0, qword_100AEF198);
  if (qword_100AD0268 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B301D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100729270(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for URL();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = *(sub_1000F24EC(&qword_100AEF2A0, &qword_1009651D8) - 8);
  v3[18] = v5;
  v3[19] = *(v5 + 64);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100AEF2A8, &qword_1009651E0);
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  v7 = sub_1000F24EC(&unk_100AEF208, &qword_1009651C8);
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = type metadata accessor for MainActor();
  v3[29] = static MainActor.shared.getter();
  v3[30] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[31] = v8;
  v3[32] = v9;

  return _swift_task_switch(sub_1007294F4, v8, v9);
}

uint64_t sub_1007294F4()
{
  v1 = *(*(v0 + 112) + OBJC_IVAR____TtC7Journal26AudioEngineRecordingMethod_audioSession);
  *(v0 + 264) = v1;

  return _swift_task_switch(sub_100729590, v1, 0);
}

uint64_t sub_100729590(uint64_t a1, uint64_t a2)
{
  sub_1005BB368(AVAudioSessionCategoryPlayAndRecord, a2);
  v3 = *(v2 + 248);
  v4 = *(v2 + 256);

  return _swift_task_switch(sub_10072962C, v3, v4);
}

uint64_t sub_10072962C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007296E4, v1, v0);
}

uint64_t sub_1007296E4()
{
  v1 = v0[14];

  v2 = *(v1 + OBJC_IVAR____TtC7Journal26AudioEngineRecordingMethod_audioEngine);
  v3 = [v2 inputNode];
  [v3 removeTapOnBus:0];

  v4 = [v2 inputNode];
  v5 = [v4 inputFormatForBus:0];
  [v5 sampleRate];
  if (v6 > 0.0 && [v5 channelCount])
  {
    v53 = v5;
    v54 = v2;
    v55 = v4;
    v7 = v0[26];
    v8 = v0[27];
    v9 = v0[24];
    v10 = v0[25];
    v11 = v0[22];
    v12 = v0[23];
    v13 = v0[21];
    v14 = v0[14];
    v51 = v0[17];
    v52 = v0[15];
    v49 = v0[16];
    v50 = v0[13];
    (*(v12 + 104))(v9, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v11);
    static AsyncStream.makeStream(of:bufferingPolicy:)();
    (*(v12 + 8))(v9, v11);
    (*(v7 + 16))(v13, v8, v10);
    (*(v7 + 56))(v13, 0, 1, v10);
    v15 = OBJC_IVAR____TtC7Journal26AudioEngineRecordingMethod_outputContinuation;
    swift_beginAccess();
    v48 = v14;
    sub_10072ABF8(v13, v14 + v15);
    swift_endAccess();
    (*(v49 + 16))(v51, v50, v52);
    v16 = [v54 inputNode];
    v17 = [v16 inputFormatForBus:0];

    v18 = [v17 settings];
    v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = objc_allocWithZone(AVAudioFile);
    v21 = sub_10072AC68(v51, v19);
    v24 = v0[20];
    v23 = v0[21];
    v26 = v0[18];
    v25 = v0[19];
    v27 = v0[14];
    v28 = *(v27 + 16);
    *(v27 + 16) = v21;

    v29 = [v54 inputNode];
    sub_10072ADF0(v48 + v15, v23);
    v30 = *(v27 + 16);
    sub_10072AE60(v23, v24);
    v31 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v32 = swift_allocObject();
    sub_10072AE60(v24, v32 + v31);
    *(v32 + ((v25 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
    v0[6] = sub_10072AED0;
    v0[7] = v32;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10072A174;
    v0[5] = &unk_100A7A280;
    v33 = _Block_copy(v0 + 2);
    v34 = v30;
    v35 = v53;

    [v29 installTapOnBus:0 bufferSize:1024 format:v35 block:v33];
    _Block_release(v33);

    [v54 prepare];
    v0[11] = 0;
    v36 = [v54 startAndReturnError:v0 + 11];
    v37 = v0[11];
    v39 = v0[26];
    v38 = v0[27];
    v40 = v0[25];
    if (v36)
    {
      v41 = *(v39 + 8);
      v42 = v37;
      v41(v38, v40);

      v43 = v0[1];
      goto LABEL_9;
    }

    v44 = v0[12];
    v45 = v37;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v39 + 8))(v38, v40);
    v46 = sub_1000F24EC(&qword_100AEF2B0, &qword_1009651E8);
    (*(*(v46 - 8) + 8))(v44, v46);
  }

  else
  {
    sub_1006EEDC0();
    swift_allocError();
    *v22 = 4;
    swift_willThrow();
  }

  v43 = v0[1];
LABEL_9:

  return v43();
}

double sub_100729D68(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_1000F24EC(&qword_100AEF2A0, &qword_1009651D8);
  __chkstk_darwin(v8 - 8);
  v10 = v31 - v9;
  v11 = sub_1000F24EC(&qword_100AEF2B8, &qword_1009651F0);
  __chkstk_darwin(v11 - 8);
  v13 = v31 - v12;
  sub_10072ADF0(a3, v10);
  v14 = sub_1000F24EC(&unk_100AEF208, &qword_1009651C8);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    sub_100004F84(v10, &qword_100AEF2A0, &qword_1009651D8);
    v16 = 1;
  }

  else
  {
    v32[0] = a1;
    v32[1] = a2;
    v17 = a1;
    v18 = a2;
    AsyncStream.Continuation.yield(_:)();
    (*(v15 + 8))(v10, v14);
    v16 = 0;
  }

  v19 = sub_1000F24EC(&qword_100AEF2C0, &unk_1009651F8);
  (*(*(v19 - 8) + 56))(v13, v16, 1, v19);
  sub_100004F84(v13, &qword_100AEF2B8, &qword_1009651F0);
  if (a4)
  {
    v32[0] = 0;
    v21 = [a4 writeFromBuffer:a1 error:v32];
    v22 = v32[0];
    if (v21)
    {

      v23 = v22;
    }

    else
    {
      v31[1] = v32[0];
      v24 = v32[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100AD02A8 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000617C(v25, qword_100AEF198);
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        swift_errorRetain();
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v30;
        *v29 = v30;
        _os_log_impl(&_mh_execute_header, v26, v27, "Couldn't write to file: %@", v28, 0xCu);
        sub_100004F84(v29, &unk_100AD4BB0, &unk_100941E50);
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_10072A174(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t sub_10072A1F8()
{
  v1[3] = v0;
  v1[4] = type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  v1[6] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v2;
  v1[8] = v3;

  return _swift_task_switch(sub_10072A2D4, v2, v3);
}

uint64_t sub_10072A2D4()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC7Journal26AudioEngineRecordingMethod_audioSession);
  *(v0 + 72) = v1;

  return _swift_task_switch(sub_10072A370, v1, 0);
}

uint64_t sub_10072A370(uint64_t a1, uint64_t a2)
{
  sub_1005BB368(AVAudioSessionCategoryPlayAndRecord, a2);
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);

  return _swift_task_switch(sub_10072A40C, v3, v4);
}

uint64_t sub_10072A40C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10072A4C4, v1, v0);
}

uint64_t sub_10072A4C4()
{
  v1 = v0[3];

  v2 = *(v1 + OBJC_IVAR____TtC7Journal26AudioEngineRecordingMethod_audioEngine);
  v0[2] = 0;
  v3 = [v2 startAndReturnError:v0 + 2];
  v4 = v0[2];
  if (v3)
  {
    v9 = v0[1];
    v5 = v4;
    v6 = v9;
  }

  else
  {
    v7 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v6 = v0[1];
  }

  return v6();
}

double sub_10072A5DC()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-v3];
  v5 = sub_1000F24EC(&qword_100AEF2A0, &qword_1009651D8);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6];
  v8 = sub_1000F24EC(&unk_100AEF208, &qword_1009651C8);
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v18[-v11];
  [*(v1 + OBJC_IVAR____TtC7Journal26AudioEngineRecordingMethod_audioEngine) stop];
  v13 = OBJC_IVAR____TtC7Journal26AudioEngineRecordingMethod_outputContinuation;
  swift_beginAccess();
  if (!(*(v9 + 48))(v1 + v13, 1, v8))
  {
    (*(v9 + 16))(v12, v1 + v13, v8);
    AsyncStream.Continuation.finish()();
    (*(v9 + 8))(v12, v8);
  }

  (*(v9 + 56))(v7, 1, 1, v8);
  swift_beginAccess();
  sub_10072ABF8(v7, v1 + v13);
  swift_endAccess();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  type metadata accessor for MainActor();

  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v1;
  sub_1003E9628(0, 0, v4, &unk_100965220, v16);

  return result;
}

uint64_t sub_10072A8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10072A95C, v6, v5);
}

uint64_t sub_10072A95C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7Journal26AudioEngineRecordingMethod_audioSession);
  *(v0 + 48) = v1;
  return _swift_task_switch(sub_10072A988, v1, 0);
}

uint64_t sub_10072A988()
{
  sub_1005BB64C();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_1001F0E40, v1, v2);
}

uint64_t sub_10072A9EC()
{
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal26AudioEngineRecordingMethod_outputContinuation, &qword_100AEF2A0, &qword_1009651D8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AudioEngineRecordingMethod(uint64_t a1)
{
  result = qword_100AEF1F0;
  if (!qword_100AEF1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10072AADC(uint64_t a1)
{
  sub_10072AB94(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10072AB94(uint64_t a1)
{
  if (!qword_100AEF200)
  {
    sub_1000F2A18(&unk_100AEF208, &qword_1009651C8);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100AEF200);
    }
  }
}

uint64_t sub_10072ABF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AEF2A0, &qword_1009651D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10072AC68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v6 = v5;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = 0;
  v8 = [v3 initForWriting:v6 settings:isa error:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a1, v10);
  }

  else
  {
    v13 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v8;
}

uint64_t sub_10072ADF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AEF2A0, &qword_1009651D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10072AE60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AEF2A0, &qword_1009651D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10072AED0(void *a1, void *a2)
{
  v5 = *(sub_1000F24EC(&qword_100AEF2A0, &qword_1009651D8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100729D68(a1, a2, v2 + v6, v7);
}

uint64_t sub_10072AF88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_10072A8C4(a1, v4, v5, v6);
}

void sub_10072B094(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = OBJC_IVAR____TtC7Journal13ExportManager_progressObservation;
  v12 = *(v1 + OBJC_IVAR____TtC7Journal13ExportManager_progressObservation);
  if (v12)
  {
    v13 = v12;
    dispatch thunk of NSKeyValueObservation.invalidate()();

    v12 = *(v2 + v11);
  }

  *(v2 + v11) = 0;

  v14 = OBJC_IVAR____TtC7Journal13ExportManager_currentContinuedProcessingTask;
  [*(v2 + OBJC_IVAR____TtC7Journal13ExportManager_currentContinuedProcessingTask) setTaskCompletedWithSuccess:a1 & 1];
  v15 = *(v2 + v14);
  *(v2 + v14) = 0;

  v16 = OBJC_IVAR____TtC7Journal13ExportManager_currentExportOptions;
  v17 = *(v2 + OBJC_IVAR____TtC7Journal13ExportManager_currentExportOptions);
  if (v17)
  {
    v18 = v17;
    sub_100697E8C();
  }

  v19 = OBJC_IVAR____TtC7Journal13ExportManager_progressAlertController;
  v20 = *(v2 + OBJC_IVAR____TtC7Journal13ExportManager_progressAlertController);
  if (v20)
  {
    [v20 dismissViewControllerAnimated:1 completion:0];
    v21 = *(v2 + v19);
  }

  else
  {
    v21 = 0;
  }

  *(v2 + v19) = 0;

  swift_unknownObjectWeakAssign();
  *(v2 + OBJC_IVAR____TtC7Journal13ExportManager_currentExportTask) = 0;

  v22 = *(v2 + v16);
  if (v22)
  {
    v23 = OBJC_IVAR____TtC7Journal13ExportOptions_destinationDirectoryURL;
    swift_beginAccess();
    sub_100161650(v22 + v23, v10);
    if ((*(v5 + 48))(v10, 1, v4))
    {
      sub_1001616C0(v10);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      sub_1001616C0(v10);
      URL.stopAccessingSecurityScopedResource()();
      (*(v5 + 8))(v7, v4);
    }
  }
}

id sub_10072B31C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExportManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10072B3EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10072B434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10072B490(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10072B4D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for StartWritingWidgetPersistedPrompts(uint64_t a1)
{
  result = qword_100AEF388;
  if (!qword_100AEF388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10072B5AC(uint64_t a1)
{
  sub_10072B624(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10072B624(uint64_t a1)
{
  if (!qword_100AEF398)
  {
    type metadata accessor for Date();
    sub_100041A68(&qword_100AD2698, &protocol conformance descriptor for Date);
    v1 = type metadata accessor for Range();
    if (!v2)
    {
      atomic_store(v1, &qword_100AEF398);
    }
  }
}

Swift::Int sub_10072B6B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10072B78C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10072B854(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10072B92C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10072DFC8(*a1);
  *a2 = result;
  return result;
}

void sub_10072B95C(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x616568416B6F6F6CLL;
  v4 = 0x80000001008DE280;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x446C616963657073;
    v4 = 0xEB00000000737961;
  }

  if (*v1)
  {
    v3 = 0x6D6F4D6568546E69;
    v2 = 0xEB00000000746E65;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10072BAA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6557664F656D6974;
  v4 = 0xEA00000000006B65;
  if (v2 != 1)
  {
    v3 = 0x656D6974796E61;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6144664F656D6974;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000079;
  }

  v7 = 0x6557664F656D6974;
  v8 = 0xEA00000000006B65;
  if (*a2 != 1)
  {
    v7 = 0x656D6974796E61;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6144664F656D6974;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000079;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10072BBB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10072BC5C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10072BCF4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10072BD9C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10072E014(*a1);
  *a2 = result;
  return result;
}

void sub_10072BDCC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0xEA00000000006B65;
  v5 = 0x6557664F656D6974;
  if (v2 != 1)
  {
    v5 = 0x656D6974796E61;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6144664F656D6974;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10072BEE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746365526B636F6CLL;
  v4 = 0xEF72616C75676E61;
  if (v2 != 1)
  {
    v3 = 1701670760;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x696C6E496B636F6CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA0000000000656ELL;
  }

  v7 = 0x746365526B636F6CLL;
  v8 = 0xEF72616C75676E61;
  if (*a2 != 1)
  {
    v7 = 1701670760;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x696C6E496B636F6CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA0000000000656ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10072BFF0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10072C09C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10072C134(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10072C1DC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10072E060(*a1);
  *a2 = result;
  return result;
}

void sub_10072C20C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656ELL;
  v4 = 0xEF72616C75676E61;
  v5 = 0x746365526B636F6CLL;
  if (v2 != 1)
  {
    v5 = 1701670760;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696C6E496B636F6CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10072C324(void *a1)
{
  v3 = v1;
  v5 = sub_1000F24EC(&qword_100AEF438, &qword_1009654B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000CA14(a1, a1[3]);
  sub_10072E614();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v10[14] = v3[9];
    v10[13] = 1;
    sub_10072E794();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = v3[10];
    v10[11] = 2;
    sub_10072E7E8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[10] = v3[11];
    v10[9] = 3;
    sub_10072E83C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[8] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[7] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10072C574(uint64_t a1)
{
  if (*(v1 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *v1;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }

  String.hash(into:)();

  String.hash(into:)();

  String.hash(into:)();

  String.hash(into:)();

  return String.hash(into:)();
}

uint64_t sub_10072C77C()
{
  v1 = *v0;
  v2 = 0x64496568636163;
  v3 = 1701869940;
  v4 = 1954047348;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74616E6974736564;
  if (v1 != 1)
  {
    v5 = 0x656C616373;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10072C830@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10072E0AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10072C858(uint64_t a1)
{
  v2 = sub_10072E614();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10072C894(uint64_t a1)
{
  v2 = sub_10072E614();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10072C8D0()
{
  Hasher.init(_seed:)();
  sub_10072C574(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10072C914(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10072C574(v2);
  return Hasher._finalize()();
}

double sub_10072C950@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10072E2B0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_10072C9AC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_10072DB60(v7, v8) & 1;
}

uint64_t sub_10072C9F4(void *a1)
{
  v3 = v1;
  v5 = sub_1000F24EC(&qword_100AEF470, &qword_1009654C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000CA14(a1, a1[3]);
  sub_10072EB18();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v14 = *v3;
  v15 = v9;
  v16 = v3[2];
  v13 = 0;
  sub_1004EB850(v3, v12);
  sub_10072EBC0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v12[0] = v14;
  v12[1] = v15;
  v12[2] = v16;
  sub_10072E764(v12);
  if (!v2)
  {
    v11[15] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10072CBB8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x74706D6F7270;
  }
}

void sub_10072CBF4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100902CA0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_10072CCD4(uint64_t a1)
{
  v2 = sub_10072EB18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10072CD10(uint64_t a1)
{
  v2 = sub_10072EB18();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10072CD4C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10072E890(a2, v6);
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

uint64_t sub_10072CDE0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v2;
  v3 = *(a1 + 48);
  v4 = *a2;
  v5 = a2[1];
  v9[2] = *(a1 + 32);
  v10[0] = v4;
  v6 = a2[2];
  v10[1] = v5;
  v10[2] = v6;
  v7 = *(a2 + 48);
  return sub_10072DB60(v9, v10) & ~(v3 ^ v7) & 1;
}

uint64_t sub_10072CE40(void *a1)
{
  v3 = v1;
  v5 = sub_1000F24EC(&qword_100AEF3D8, &qword_1009654A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  sub_10000CA14(a1, a1[3]);
  sub_10072D878();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v56 = 0;
  sub_1000F24EC(&qword_100AE0D70, &unk_1009521E0);
  sub_10072D950(&qword_100AEF3E8, &qword_100AE49A8, &protocol conformance descriptor for Date, &protocol conformance descriptor for <> Range<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
    v10 = (v3 + started[5]);
    v11 = v10[2];
    v12 = *v10;
    v13 = *v10;
    v50 = v10[1];
    v51 = v11;
    v49 = v12;
    v52 = *(v10 + 48);
    v45 = v13;
    v46 = v50;
    v47 = v10[2];
    v48 = *(v10 + 48);
    v55 = 1;
    sub_1004EB850(&v49, &v41);
    sub_10072D8CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v39[0] = v45;
    v39[1] = v46;
    v39[2] = v47;
    v40 = v48;
    sub_10072D920(v39);
    v14 = (v3 + started[6]);
    v15 = v14[2];
    v16 = *v14;
    v17 = *v14;
    v42 = v14[1];
    v43 = v15;
    v41 = v16;
    v44 = *(v14 + 48);
    v35 = v17;
    v36 = v42;
    v37 = v14[2];
    v38 = *(v14 + 48);
    v54 = 2;
    sub_1004EB850(&v41, &v31);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29[0] = v35;
    v29[1] = v36;
    v29[2] = v37;
    v30 = v38;
    sub_10072D920(v29);
    v18 = (v3 + started[7]);
    v19 = v18[2];
    v20 = *v18;
    v21 = *v18;
    v32 = v18[1];
    v33 = v19;
    v31 = v20;
    v34 = *(v18 + 48);
    v25 = v21;
    v26 = v32;
    v27 = v18[2];
    v28 = *(v18 + 48);
    v53 = 3;
    sub_1004EB850(&v31, v23);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23[0] = v25;
    v23[1] = v26;
    v23[2] = v27;
    v24 = v28;
    sub_10072D920(v23);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10072D200@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1000F24EC(&qword_100AE0D70, &unk_1009521E0);
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v24 = sub_1000F24EC(&qword_100AEF3F8, &qword_1009654A8);
  v23 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v22 - v7;
  started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
  __chkstk_darwin(started);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v40 = a1;
  sub_10000CA14(a1, v12);
  sub_10072D878();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BA7C(v40);
  }

  v13 = v23;
  LOBYTE(v36) = 0;
  sub_10072D950(&qword_100AEF400, &qword_100AE4998, &protocol conformance descriptor for Date, &protocol conformance descriptor for <> Range<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10072D9D8(v6, v11);
  v35 = 1;
  sub_10072DA48();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = &v11[started[5]];
  v15 = v37;
  v16 = v38;
  *v14 = v36;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  v14[48] = v39;
  v30 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = &v11[started[6]];
  v18 = v32;
  *v17 = v31;
  *(v17 + 1) = v18;
  *(v17 + 2) = v33;
  v17[48] = v34;
  v25 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v8, v24);
  v19 = &v11[started[7]];
  v20 = v27;
  *v19 = v26;
  *(v19 + 1) = v20;
  *(v19 + 2) = v28;
  v19[48] = v29;
  sub_1004EB7EC(v11, v22);
  sub_10000BA7C(v40);
  return sub_10072DB04(v11);
}

unint64_t sub_10072D6C0()
{
  v1 = 0x656D69746566696CLL;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x6F666E49656D6F68;
  }

  if (*v0)
  {
    v1 = 0x696C6E496B636F6CLL;
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

uint64_t sub_10072D74C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10072F094(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10072D774(uint64_t a1)
{
  v2 = sub_10072D878();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10072D7B0(uint64_t a1)
{
  v2 = sub_10072D878();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10072D824()
{
  result = qword_100AEF3D0;
  if (!qword_100AEF3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF3D0);
  }

  return result;
}

unint64_t sub_10072D878()
{
  result = qword_100AEF3E0;
  if (!qword_100AEF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF3E0);
  }

  return result;
}

unint64_t sub_10072D8CC()
{
  result = qword_100AEF3F0;
  if (!qword_100AEF3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF3F0);
  }

  return result;
}

uint64_t sub_10072D950(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(&qword_100AE0D70, &unk_1009521E0);
    sub_100041A68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10072D9D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE0D70, &unk_1009521E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10072DA48()
{
  result = qword_100AEF408;
  if (!qword_100AEF408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF408);
  }

  return result;
}

uint64_t sub_10072DA9C(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AE0D70, &unk_1009521E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10072DB04(uint64_t a1)
{
  started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_10072DB60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 9);
  v6 = 0x746365526B636F6CLL;
  v7 = 0xEF72616C75676E61;
  if (v5 != 1)
  {
    v6 = 1701670760;
    v7 = 0xE400000000000000;
  }

  if (*(a1 + 9))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x696C6E496B636F6CLL;
  }

  if (v5)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xEA0000000000656ELL;
  }

  v10 = 0x746365526B636F6CLL;
  v11 = 0xEF72616C75676E61;
  if (*(a2 + 9) != 1)
  {
    v10 = 1701670760;
    v11 = 0xE400000000000000;
  }

  if (*(a2 + 9))
  {
    v12 = v10;
  }

  else
  {
    v12 = 0x696C6E496B636F6CLL;
  }

  if (*(a2 + 9))
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xEA0000000000656ELL;
  }

  if (v8 == v12 && v9 == v13)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = 0x6557664F656D6974;
  v16 = 0xEA00000000006B65;
  v17 = 0xE700000000000000;
  if (*(a1 + 10) == 1)
  {
    v17 = 0xEA00000000006B65;
  }

  else
  {
    v15 = 0x656D6974796E61;
  }

  if (*(a1 + 10))
  {
    v18 = v15;
  }

  else
  {
    v18 = 0x6144664F656D6974;
  }

  if (*(a1 + 10))
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE900000000000079;
  }

  v20 = 0x6557664F656D6974;
  if (*(a2 + 10) != 1)
  {
    v20 = 0x656D6974796E61;
    v16 = 0xE700000000000000;
  }

  if (*(a2 + 10))
  {
    v21 = v20;
  }

  else
  {
    v21 = 0x6144664F656D6974;
  }

  if (*(a2 + 10))
  {
    v22 = v16;
  }

  else
  {
    v22 = 0xE900000000000079;
  }

  if (v18 != v21 || v19 != v22)
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_48;
    }

    return 0;
  }

LABEL_48:
  if ((sub_10081A060(*(a1 + 11), *(a2 + 11)) & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10072DE04(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Date();
  sub_100041A68(&qword_100AD5BF0, &protocol conformance descriptor for Date);
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (sub_1000F24EC(&qword_100AE0D70, &unk_1009521E0), (dispatch thunk of static Equatable.== infix(_:_:)()))
  {
    started = type metadata accessor for StartWritingWidgetPersistedPrompts(0);
    v5 = a1 + started[5];
    v6 = *(v5 + 32);
    v31[1] = *(v5 + 16);
    v31[2] = v6;
    v31[0] = *v5;
    v7 = *(v5 + 48);
    v8 = a2 + started[5];
    v9 = *(v8 + 32);
    v32[1] = *(v8 + 16);
    v32[2] = v9;
    v32[0] = *v8;
    v10 = *(v8 + 48);
    v11 = sub_10072DB60(v31, v32);
    v12 = 0;
    if ((v11 & 1) != 0 && ((v7 ^ v10) & 1) == 0)
    {
      v13 = a1 + started[6];
      v14 = *(v13 + 32);
      v29[1] = *(v13 + 16);
      v29[2] = v14;
      v29[0] = *v13;
      v15 = *(v13 + 48);
      v16 = a2 + started[6];
      v17 = *(v16 + 32);
      v30[1] = *(v16 + 16);
      v30[2] = v17;
      v30[0] = *v16;
      v18 = *(v16 + 48);
      v19 = sub_10072DB60(v29, v30);
      v12 = 0;
      if ((v19 & 1) != 0 && ((v15 ^ v18) & 1) == 0)
      {
        v20 = a1 + started[7];
        v21 = *(v20 + 32);
        v27[1] = *(v20 + 16);
        v27[2] = v21;
        v27[0] = *v20;
        v22 = *(v20 + 48);
        v23 = a2 + started[7];
        v24 = *(v23 + 32);
        v28[1] = *(v23 + 16);
        v28[2] = v24;
        v28[0] = *v23;
        v25 = *(v23 + 48);
        v12 = sub_10072DB60(v27, v28) & (v22 ^ v25 ^ 1);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_10072DFC8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A5AC98, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10072E014(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A5AD18, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10072E060(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A5AD80, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10072E0AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496568636163 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100902C80 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10072E2B0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000F24EC(&qword_100AEF410, &qword_1009654B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_10000CA14(a1, a1[3]);
  sub_10072E614();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BA7C(a1);
  }

  LOBYTE(v34) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v43 = v10 & 1;
  LOBYTE(v31) = 1;
  sub_10072E668();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v34;
  LOBYTE(v31) = 2;
  sub_10072E6BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v11;
  v12 = v34;
  LOBYTE(v31) = 3;
  sub_10072E710();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v12;
  v13 = v34;
  LOBYTE(v34) = 4;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v15;
  v26 = v13;
  v27 = v14;
  v44 = 5;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  v25 = v9;
  *&v31 = v9;
  HIDWORD(v24) = v43;
  BYTE8(v31) = v43;
  v19 = v30;
  BYTE9(v31) = v30;
  LOBYTE(v9) = v28;
  BYTE10(v31) = v28;
  v20 = v26;
  BYTE11(v31) = v26;
  v21 = v27;
  *&v32 = v27;
  *(&v32 + 1) = v29;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_1004EB8AC(&v31, &v34);
  sub_10000BA7C(a1);
  v34 = v25;
  v35 = BYTE4(v24);
  v36 = v19;
  v37 = v9;
  v38 = v20;
  v39 = v21;
  v40 = v29;
  v41 = v16;
  v42 = v18;
  result = sub_10072E764(&v34);
  v23 = v32;
  *a2 = v31;
  a2[1] = v23;
  a2[2] = v33;
  return result;
}

unint64_t sub_10072E614()
{
  result = qword_100AEF418;
  if (!qword_100AEF418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF418);
  }

  return result;
}

unint64_t sub_10072E668()
{
  result = qword_100AEF420;
  if (!qword_100AEF420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF420);
  }

  return result;
}

unint64_t sub_10072E6BC()
{
  result = qword_100AEF428;
  if (!qword_100AEF428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF428);
  }

  return result;
}

unint64_t sub_10072E710()
{
  result = qword_100AEF430;
  if (!qword_100AEF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF430);
  }

  return result;
}

unint64_t sub_10072E794()
{
  result = qword_100AEF440;
  if (!qword_100AEF440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF440);
  }

  return result;
}

unint64_t sub_10072E7E8()
{
  result = qword_100AEF448;
  if (!qword_100AEF448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF448);
  }

  return result;
}

unint64_t sub_10072E83C()
{
  result = qword_100AEF450;
  if (!qword_100AEF450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF450);
  }

  return result;
}

uint64_t sub_10072E890@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000F24EC(&qword_100AEF458, &qword_1009654C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10000CA14(a1, a1[3]);
  sub_10072EB18();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BA7C(a1);
  }

  v25 = 0;
  sub_10072EB6C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v18;
  v22 = v19;
  v23 = v20;
  v24 = 1;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v9 &= 1u;
  v12 = v21;
  v13 = v22;
  v14 = v23;
  v15 = v9;
  sub_1004EB850(&v12, v16);
  sub_10000BA7C(a1);
  v16[0] = v21;
  v16[1] = v22;
  v16[2] = v23;
  v17 = v9;
  result = sub_10072D920(v16);
  v11 = v13;
  *a2 = v12;
  *(a2 + 16) = v11;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  return result;
}

unint64_t sub_10072EB18()
{
  result = qword_100AEF460;
  if (!qword_100AEF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF460);
  }

  return result;
}

unint64_t sub_10072EB6C()
{
  result = qword_100AEF468;
  if (!qword_100AEF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF468);
  }

  return result;
}

unint64_t sub_10072EBC0()
{
  result = qword_100AEF478;
  if (!qword_100AEF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF478);
  }

  return result;
}

unint64_t sub_10072EC78()
{
  result = qword_100AEF480;
  if (!qword_100AEF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF480);
  }

  return result;
}

unint64_t sub_10072ECD0()
{
  result = qword_100AEF488;
  if (!qword_100AEF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF488);
  }

  return result;
}

unint64_t sub_10072ED28()
{
  result = qword_100AEF490;
  if (!qword_100AEF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF490);
  }

  return result;
}

unint64_t sub_10072ED80()
{
  result = qword_100AEF498;
  if (!qword_100AEF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF498);
  }

  return result;
}

unint64_t sub_10072EDD8()
{
  result = qword_100AEF4A0;
  if (!qword_100AEF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF4A0);
  }

  return result;
}

unint64_t sub_10072EE30()
{
  result = qword_100AEF4A8;
  if (!qword_100AEF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF4A8);
  }

  return result;
}

unint64_t sub_10072EE88()
{
  result = qword_100AEF4B0;
  if (!qword_100AEF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF4B0);
  }

  return result;
}

unint64_t sub_10072EEE0()
{
  result = qword_100AEF4B8;
  if (!qword_100AEF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF4B8);
  }

  return result;
}

unint64_t sub_10072EF38()
{
  result = qword_100AEF4C0;
  if (!qword_100AEF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF4C0);
  }

  return result;
}

unint64_t sub_10072EF90()
{
  result = qword_100AEF4C8;
  if (!qword_100AEF4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF4C8);
  }

  return result;
}

unint64_t sub_10072EFE8()
{
  result = qword_100AEF4D0;
  if (!qword_100AEF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF4D0);
  }

  return result;
}

unint64_t sub_10072F040()
{
  result = qword_100AEF4D8;
  if (!qword_100AEF4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF4D8);
  }

  return result;
}

uint64_t sub_10072F094(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D69746566696CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C6E496B636F6CLL && a2 == 0xEE006F666E49656ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100902C60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F666E49656D6F68 && a2 == 0xE800000000000000)
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

unint64_t sub_10072F208()
{
  result = qword_100AEF4E0;
  if (!qword_100AEF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF4E0);
  }

  return result;
}

unint64_t sub_10072F25C()
{
  result = qword_100AEF4E8;
  if (!qword_100AEF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF4E8);
  }

  return result;
}

unint64_t sub_10072F2B0()
{
  result = qword_100AEF4F0;
  if (!qword_100AEF4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF4F0);
  }

  return result;
}

char *sub_10072F3AC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal38FullScreenGenericMapCollectionViewCell_mapView;
  type metadata accessor for GenericMapAssetView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC7Journal38FullScreenGenericMapCollectionViewCell_mapAsset] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for FullScreenGenericMapCollectionViewCell(0);
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v11 = *&v10[OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView];
  v12 = OBJC_IVAR____TtC7Journal38FullScreenGenericMapCollectionViewCell_mapView;
  v13 = *&v10[OBJC_IVAR____TtC7Journal38FullScreenGenericMapCollectionViewCell_mapView];
  v14 = v10;
  [v11 addSubview:v13];
  v15 = *&v10[v12];
  sub_100013178(0.0);

  return v14;
}

id sub_10072F4E8()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 2)
  {
    v3 = 3.0;
  }

  else
  {
    v3 = 7.0;
  }

  if (v2 == 2)
  {
    v4 = 4.0;
  }

  else
  {
    v4 = 11.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v3;
  v9 = v4;
  v5 = v0;
  static UIView.Invalidating.subscript.setter();
  v7.receiver = v5;
  v7.super_class = type metadata accessor for FullScreenGenericMapCollectionViewCell(0);
  return objc_msgSendSuper2(&v7, "updateConstraints");
}

void sub_10072F60C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal38FullScreenGenericMapCollectionViewCell_mapAsset);
}

id sub_10072F64C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenGenericMapCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FullScreenGenericMapCollectionViewCell(uint64_t a1)
{
  result = qword_100AEF528;
  if (!qword_100AEF528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10072F774()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal38FullScreenGenericMapCollectionViewCell_mapView);
  v2 = v1;
  return v1;
}

void *sub_10072F7A8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal38FullScreenGenericMapCollectionViewCell_mapAsset);
  v2 = v1;
  return v1;
}

id sub_10072F7DC()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = type metadata accessor for CRAttributedString();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  *(v0 + *((v3 & v2) + 0x70)) = 0;
  v8 = *((swift_isaMask & *v0) + 0x80);
  *(v0 + v8) = [objc_opt_self() currentTraitCollection];
  CRAttributedString.init()();
  (*(v5 + 32))(v0 + *((swift_isaMask & *v0) + 0x68), v7, v4);
  v9 = [objc_allocWithZone(NSMutableAttributedString) init];
  *(v0 + *((swift_isaMask & *v0) + 0x60)) = v9;
  v10 = type metadata accessor for CustomAttributeProviderConcrete(0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  Logger.init(subsystem:category:)();
  v12 = v11 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
  *(v12 + 4) = 0;
  *v12 = 2;
  v13 = (v0 + *((swift_isaMask & *v0) + 0x78));
  v13[3] = v10;
  v13[4] = sub_100051708(&qword_100AE2470, type metadata accessor for CustomAttributeProviderConcrete, &unk_10096CF30);
  *v13 = v11;
  v15.receiver = v0;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}

id sub_10072FAFC()
{
  v0 = sub_100731190();

  return v0;
}

void sub_10072FB38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = swift_isaMask & *v4;
  v12 = *((swift_isaMask & v10) + 0x50);
  v39 = *((swift_isaMask & v10) + 0x58);
  v13 = type metadata accessor for CRAttributedString();
  v38 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v34 - v14;
  v16 = type metadata accessor for CRAttributedString.Attributes();
  __chkstk_darwin(v16);
  v20 = v34 - v19;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a1 + a2 < a1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v34[1] = v12;
  v35 = v20;
  v36 = v18;
  v37 = v17;
  v21 = *(v11 + 104);
  swift_beginAccess();
  CRAttributedString.replaceSubrange(_:with:)();
  swift_endAccess();
  v34[0] = *((swift_isaMask & *v5) + 0x60);
  v22 = *&v5[v34[0]];
  v23 = String._bridgeToObjectiveC()();
  v40 = a2;
  v41 = a1;
  [v22 replaceCharactersInRange:a1 withString:{a2, v23}];

  v24 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v24 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = v38;
    (*(v38 + 16))(v15, &v5[v21], v13);
    v26 = v35;
    CRAttributedString.attributes(at:effectiveRange:)();
    (*(v25 + 8))(v15, v13);
    v27 = *&v5[*((swift_isaMask & *v5) + 0x80)];
    dispatch thunk of static AttributeConverter.nsAttributes(from:traitCollection:customAttributeProvider:)();

    v28 = String.UTF16View.count.getter();
    v29 = *&v5[v34[0]];
    type metadata accessor for Key(0);
    sub_100051708(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
    v30 = v29;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v30 setAttributes:isa range:{v41, v28}];

    (*(v36 + 8))(v26, v37);
  }

  v32 = v41;
  v33 = String.UTF16View.count.getter();
  if (!__OFSUB__(v33, v40))
  {
    [v5 edited:2 range:v32 changeInLength:{v40, v33 - v40}];
    return;
  }

LABEL_11:
  __break(1u);
}

double sub_10072FF88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = a1;
  sub_10072FB38(a3, a4, v8, v10);

  return result;
}

id sub_100730008(unint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4;
  v34 = a2;
  v35 = a3;
  v7 = *v4;
  v8 = swift_isaMask;
  v9 = *((swift_isaMask & *v4) + 0x58);
  v10 = *(v9 + 8);
  v31 = *((swift_isaMask & *v4) + 0x50);
  v29 = v9;
  v30 = v10;
  v11 = type metadata accessor for CRAttributedString.Attributes();
  v12 = type metadata accessor for Optional();
  v32 = *(v12 - 8);
  v33 = v12;
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = *(v11 - 8);
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  v19 = *(v4 + *((v8 & v7) + 0x60));
  if (a1)
  {
    type metadata accessor for Key(0);
    sub_100051708(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
    v20 = v19;
    v21.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v22 = v19;
    v21.super.isa = 0;
  }

  v23 = v34;
  v24 = v35;
  [v19 setAttributes:v21.super.isa range:{v34, v35, v29, v30, v31}];

  v25 = swift_isaMask & *v5;
  if ((*(v5 + *(v25 + 0x70)) & 1) == 0)
  {
    if (!a1)
    {
      sub_10007BDBC(_swiftEmptyArrayStorage);
      v25 = swift_isaMask & *v5;
    }

    v26 = *(v5 + *(v25 + 128));

    v27 = v26;
    dispatch thunk of static AttributeConverter.crAttributes(from:traitCollection:customAttributeProvider:)();

    (*(v15 + 16))(v14, v18, v11);
    (*(v15 + 56))(v14, 0, 1, v11);
    swift_beginAccess();
    type metadata accessor for CRAttributedString();
    v23 = v34;
    v24 = v35;
    CRAttributedString.setAttributes(_:range:)();
    swift_endAccess();
    (*(v32 + 8))(v14, v33);
    (*(v15 + 8))(v18, v11);
  }

  return [v5 edited:1 range:v23 changeInLength:{v24, 0}];
}

double sub_1007303FC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (a3)
  {
    type metadata accessor for Key(0);
    sub_100051708(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a1;
  sub_100730008(v7, a4, a5, v10);

  return result;
}

id sub_1007304D0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = *((swift_isaMask & *v2) + 0x70);
  *(v2 + v6) = 1;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  result = objc_msgSendSuper2(&v8, "fixAttributesInRange:", a1, a2);
  *(v2 + v6) = 0;
  return result;
}

void sub_100730558(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  sub_1007304D0(a3, a4);
}

uint64_t sub_1007305E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(char *, void, void))
{
  v8 = *a1;
  v9 = swift_isaMask;
  v10 = type metadata accessor for URL();
  __chkstk_darwin(v10 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return a7(v12, *((v9 & v8) + 0x50), *((v9 & v8) + 0x58));
}

void sub_100730704(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10073121C();
}

void sub_100730794()
{
  if (v1)
  {
    if (v0)
    {
      v2 = _convertErrorToNSError(_:)();

      v3 = v2;
      *v0 = v2;
    }

    else
    {
    }
  }
}

void sub_1007307EC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17[-v8];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v11 + 32))(v9, v13, v10);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v11 + 56))(v9, v15, 1, v10);
  v16 = a4;
  sub_10073124C();
}

void sub_1007309C0()
{
  if (v1)
  {
    if (v0)
    {
      v2 = _convertErrorToNSError(_:)();

      v3 = v2;
      *v0 = v2;
    }

    else
    {
    }
  }
}

void sub_100730A1C(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v18[-v13];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 32))(v14, v11, v8);
    (*(v9 + 56))(v14, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v14, 1, 1, v8);
  }

  sub_10073127C();
}

void sub_100730BE0()
{
  if (v1)
  {
    if (v0)
    {
      v2 = _convertErrorToNSError(_:)();

      v3 = v2;
      *v0 = v2;
    }

    else
    {
    }
  }
}

void sub_100730C3C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v15[-v12];
  if (a5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v8 + 32))(v13, v10, v7);
    (*(v8 + 56))(v13, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  v14 = a4;
  sub_1007312AC();
}

void sub_100730DE0()
{
  if (v1)
  {
    if (v0)
    {
      v2 = _convertErrorToNSError(_:)();

      v3 = v2;
      *v0 = v2;
    }

    else
    {
    }
  }
}

void sub_100730EB8(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_10073133C();
}

void sub_100730F28(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_10073136C();
}

void sub_100730F98(char *a1)
{
  v2 = *((swift_isaMask & *a1) + 0x68);
  v3 = type metadata accessor for CRAttributedString();
  (*(*(v3 - 8) + 8))(&a1[v2], v3);
  sub_10000BA7C(&a1[*((swift_isaMask & *a1) + 0x78)]);
  v4 = *&a1[*((swift_isaMask & *a1) + 0x80)];
}

void sub_1007310C8()
{
  *(v0 + *((swift_isaMask & *v0) + 0x70)) = 0;
  v1 = *((swift_isaMask & *v0) + 0x80);
  *(v0 + v1) = [objc_opt_self() currentTraitCollection];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1007313FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = a2;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100006964(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v16);
}

uint64_t sub_1007316B4()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEF5B8);
  v1 = sub_10000617C(v0, qword_100AEF5B8);
  if (qword_100AD0260 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B301C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10073177C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100073E04();
  }
}

id sub_1007317D0(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal18LivePhotoAssetView_thumbnailView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  *&v1[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoSymbolView] = 0;
  *&v1[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoView] = 0;
  *&v1[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset] = 0;
  v4 = OBJC_IVAR____TtC7Journal18LivePhotoAssetView_latestImageRequestID;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v1[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_shouldShowLivePlayer] = 0;
  v1[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_shouldShowLiveSymbol] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for LivePhotoAssetView(0);
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_100073B5C();
  }

  return v7;
}

void sub_100731910()
{
  v1 = OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoView;
  v2 = *&v0[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoView];
  if (!v2 || (v3 = [v2 superview]) == 0)
  {
    v4 = [objc_allocWithZone(PHLivePhotoView) init];
    [v0 addSubview:v4];
    [v0 bounds];
    [v4 setFrame:?];
    [v4 setContentMode:2];
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    sub_1007325D8(v0[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_shouldShowLivePlayer], 0);
  }

  v6 = OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoSymbolView;
  v7 = [*&v0[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoSymbolView] superview];
  if (!v7)
  {
    if (qword_100AD09B0 != -1)
    {
      swift_once();
    }

    v8 = qword_100B30E88;
    if (qword_100B30E88)
    {
      v9 = [objc_opt_self() systemFontOfSize:22.0 weight:UIFontWeightRegular];
      v10 = [objc_opt_self() configurationWithFont:v9 scale:1];

      v8 = [v8 imageWithConfiguration:v10];
    }

    v32 = [objc_allocWithZone(UIImageView) initWithImage:v8];
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = objc_opt_self();
    v12 = [v11 systemWhiteColor];
    [v32 setTintColor:v12];

    v13 = [v32 layer];
    v14 = [v11 blackColor];
    v15 = [v14 CGColor];

    [v13 setShadowColor:v15];
    v16 = [v32 layer];
    [v16 setShadowRadius:1.0];

    v17 = [v32 layer];
    LODWORD(v18) = 0.5;
    [v17 setShadowOpacity:v18];

    v19 = [v32 layer];
    [v19 setShadowOffset:{0.0, 1.0}];

    [v0 addSubview:v32];
    v20 = objc_opt_self();
    sub_1000F24EC(&unk_100AD4780, &unk_100941070);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100941D60;
    v22 = [v32 topAnchor];
    v23 = [v0 safeAreaLayoutGuide];
    v24 = [v23 topAnchor];

    v25 = [v22 constraintEqualToAnchor:v24 constant:6.0];
    *(v21 + 32) = v25;
    v26 = [v32 leadingAnchor];
    v27 = [v0 safeAreaLayoutGuide];
    v28 = [v27 leadingAnchor];

    v29 = [v26 constraintEqualToAnchor:v28 constant:8.0];
    *(v21 + 40) = v29;
    sub_1000065A8(0, &qword_100AD8000, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v20 activateConstraints:isa];

    v31 = *&v0[v6];
    *&v0[v6] = v32;

    sub_100732828(v0[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_shouldShowLiveSymbol], 0);
    v7 = v32;
  }
}

uint64_t sub_100731E3C(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR____TtC7Journal16JournalAssetView_loadingDelegate;
  *(v2 + OBJC_IVAR____TtC7Journal16JournalAssetView_loadingDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  if ((*(v2 + OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading) & 1) == 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      v6 = (*(v4 + 8))(ObjectType, v4);
      swift_unknownObjectRelease();
      if (v6)
      {
        v7 = *(v2 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_thumbnailView);
        [v7 setAlpha:1.0];
        [v7 setImage:v6];
        sub_100074D28();
      }
    }
  }

  return swift_unknownObjectRelease();
}

id sub_100731F3C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_thumbnailView) image];

  return v1;
}

void sub_100731F7C()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset];
  if (v1)
  {
    oslog = v0;
    v2 = v1;
    sub_100117064(v2, oslog);
  }

  else
  {
    if (qword_100AD02B8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000617C(v3, qword_100AEF5B8);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Attempted to load live photo player when livePhotoAsset was nil!", v5, 2u);
    }
  }
}

uint64_t sub_100732094(void *a1, uint64_t a2)
{
  v23 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v25 = *(v5 - 8);
  v26 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  sub_1000065A8(0, &qword_100AD6210, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v9 + 8);
  v24(v11, v8);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v18 = v23;
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  aBlock[4] = sub_1000A6310;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A7AAB8;
  v19 = _Block_copy(aBlock);
  v20 = v18;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100006964(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v27 + 8))(v4, v2);
  (*(v25 + 8))(v7, v26);
  return (v24)(v14, v8);
}

void sub_100732470(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100731910();
    [*&v4[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoView] setLivePhoto:a2];
    sub_1007325D8(1, 0);
    sub_100074D28();
  }
}

void sub_1007324F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v2 = *((swift_isaMask & *v1) + 0x58);
  v3 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v4 = v1;
  v2(0, v3);

  sub_100073E04();

  sub_100074D28();
}

void *sub_1007325A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset);
  v2 = v1;
  return v1;
}

void sub_1007325D8(char a1, char a2)
{
  v4 = a1 & 1;
  *(v2 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_shouldShowLivePlayer) = a1;
  if (a1)
  {
    v5 = OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoView;
    v6 = *(v2 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoView);
    if (v6)
    {
      if ([v6 isHidden])
      {
        v7 = *(v2 + v5);
        if (v7)
        {
          [v7 setAlpha:0.0];
          v8 = *(v2 + v5);
          if (v8)
          {
            [v8 setHidden:0];
          }
        }
      }
    }
  }

  if (a2)
  {
    v9 = 0.3;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = objc_opt_self();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v4;
  v21 = sub_10073309C;
  v22 = v12;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100006C7C;
  v20 = &unk_100A7AA18;
  v13 = _Block_copy(&v17);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v4;
  v21 = sub_1007330C0;
  v22 = v15;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10003264C;
  v20 = &unk_100A7AA68;
  v16 = _Block_copy(&v17);

  [v10 animateWithDuration:0 delay:v13 options:v16 animations:v9 completion:0.0];
  _Block_release(v16);
  _Block_release(v13);
}

void sub_100732828(char a1, char a2)
{
  v4 = a1 & 1;
  *(v2 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_shouldShowLiveSymbol) = a1;
  if (a1)
  {
    v5 = OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoSymbolView;
    v6 = *(v2 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoSymbolView);
    if (v6)
    {
      if ([v6 isHidden])
      {
        v7 = *(v2 + v5);
        if (v7)
        {
          [v7 setAlpha:0.0];
          v8 = *(v2 + v5);
          if (v8)
          {
            [v8 setHidden:0];
          }
        }
      }
    }
  }

  if (a2)
  {
    v9 = 0.3;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = objc_opt_self();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v4;
  v21 = sub_100733028;
  v22 = v12;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100006C7C;
  v20 = &unk_100A7A978;
  v13 = _Block_copy(&v17);

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v4;
  v21 = sub_100733050;
  v22 = v15;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10003264C;
  v20 = &unk_100A7A9C8;
  v16 = _Block_copy(&v17);

  [v10 animateWithDuration:0 delay:v13 options:v16 animations:v9 completion:0.0];
  _Block_release(v16);
  _Block_release(v13);
}

void sub_100732A84(uint64_t a1, char a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + *a3);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {
      v9 = 0.0;
      if (a2)
      {
        v9 = 1.0;
      }

      [v8 setAlpha:v9];
    }
  }
}

void sub_100732B28(char a1, uint64_t a2, char a3, void *a4)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + *a4);
      v8 = Strong;
      v9 = v7;

      if (v7)
      {
        [v9 setHidden:(a3 & 1) == 0];
      }
    }
  }
}

id sub_100732C34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LivePhotoAssetView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100732CF4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1007325D8(1, 1);
  }
}

void sub_100732D50(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_shouldShowLivePlayer) = 0;
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0;
    v14 = sub_100732FD0;
    v15 = v5;
    aBlock = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_100006C7C;
    v13 = &unk_100A7A8B0;
    v6 = _Block_copy(&aBlock);

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v14 = sub_100732FF8;
    v15 = v8;
    aBlock = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_10003264C;
    v13 = &unk_100A7A900;
    v9 = _Block_copy(&aBlock);

    [v3 animateWithDuration:0 delay:v6 options:v9 animations:0.3 completion:0.0];
    _Block_release(v9);
    _Block_release(v6);
  }
}

uint64_t sub_1007330C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[7] = v5;
  v4[8] = v7;

  return _swift_task_switch(sub_100733180, v5, v7);
}

uint64_t sub_100733180()
{
  v1 = v0[3].i64[0];
  v2 = swift_task_alloc();
  v0[4].i64[1] = v2;
  v2[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  v0[5].i64[0] = v3;
  *v3 = v0;
  v3[1] = sub_10073326C;
  v4 = v0[1].i64[0];
  v5 = v0[1].i64[1];

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v3, &type metadata for () + 1, &type metadata for () + 1, v4, v5, &unk_100965CB0, v2, &type metadata for () + 1);
}

uint64_t sub_10073326C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100136BE8, v3, v2);
}

double sub_1007333B0()
{
  sub_1007344D8(v16);
  v0 = v16[0];
  v1 = v16[1];
  v2 = v17;
  if (v17)
  {
    if (v16[0] >> 62)
    {
LABEL_20:
      v14 = v0 & 0xFFFFFFFFFFFFFF8;
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = v16[0] & 0xFFFFFFFFFFFFFF8;
      v15 = *((v16[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = 0;
    while (v15 != v3)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v14 + 16))
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v4 = *(v0 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = *(v1 + 16);
      if (v3 == v6)
      {

        break;
      }

      if (v3 >= v6)
      {
        goto LABEL_19;
      }

      v7 = *(v1 + v3 + 32);
      v8 = [objc_opt_self() currentTraitCollection];
      (*((swift_isaMask & *v5) + 0x2F8))(0, v7, v8);

      if (qword_100ACFCB0 != -1)
      {
        swift_once();
      }

      ++v3;
      v9 = *(*(qword_100B2F850 + 16) + qword_100AEC680);
      v10 = objc_allocWithZone(NSString);
      v11 = String._bridgeToObjectiveC()();

      v12 = [v10 initWithString:v11];

      [v9 removeObjectForKey:v12];
      if (v2 == v3)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t sub_1007335F4()
{
  sub_1000F24EC(&qword_100ADAD48, &unk_10095E460);
  v0 = type metadata accessor for AssetType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100940050;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for AssetType.link(_:), v0);
  v6(v5 + v2, enum case for AssetType.audio(_:), v0);
  v7 = sub_100890950(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_100AEF640 = v7;
  return result;
}

uint64_t sub_100733738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[12] = a2;
  sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v5 = type metadata accessor for AssetType();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_100733840, 0, 0);
}

uint64_t sub_100733840()
{
  sub_1007344D8(v0 + 6);
  v2 = v0[6];
  v1 = v0[7];
  v0[20] = v2;
  v0[21] = v1;
  v3 = v0[8];
  if (!v3)
  {
    goto LABEL_25;
  }

  if (v2 >> 62)
  {
LABEL_41:
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[22] = v4;
  v0[23] = v5;
  v0[24] = v3;
  v0[25] = 0;
  if (v5)
  {
    v3 = 0;
    v6 = &qword_100AD0000;
    v7 = &off_100AEF000;
    v46 = v0;
    v43 = v0 + 2;
    while (1)
    {
      v8 = v0[20];
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v2 = *(v0[22] + 16);
        if (v3 >= v2)
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v9 = *(v8 + 8 * v3 + 32);
      }

      v10 = v9;
      v0[26] = v9;
      v11 = v0[21];
      v2 = *(v11 + 16);
      if (v3 == v2)
      {

        goto LABEL_26;
      }

      if (v3 >= v2)
      {
        goto LABEL_40;
      }

      v47 = v10;
      v44 = *(v11 + v3 + 32);
      if (v6[88] != -1)
      {
        swift_once();
      }

      v45 = v7[200];
      if (!v45[2])
      {
        break;
      }

      sub_100734B8C(&qword_100ADFEE0, &protocol conformance descriptor for AssetType);
      v0 = v46;
      v12 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v13 = -1 << *(v45 + 32);
      v14 = v12 & ~v13;
      if (((*(v45 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v14) & 1) == 0)
      {
        break;
      }

      v15 = ~v13;
      v16 = v46[18];
      v17 = *(v16 + 72);
      v18 = *(v16 + 16);
      while (1)
      {
        v19 = v0[18];
        v20 = v0[19];
        v21 = v0[17];
        v18(v20, v45[6] + v14 * v17, v21);
        sub_100734B8C(&qword_100ADC690, &protocol conformance descriptor for AssetType);
        v22 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v19 + 8))(v20, v21);
        if (v22)
        {
          break;
        }

        v14 = (v14 + 1) & v15;
        v0 = v46;
        if (((*(v45 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v14) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v0 = v46;
      v6 = &qword_100AD0000;
      if (v46[24] != 1)
      {
        v3 = v46[25] + 1;
        --v46[24];
        v46[25] = v3;
        v7 = &off_100AEF000;
        if (v3 != v46[23])
        {
          continue;
        }
      }

      goto LABEL_25;
    }

LABEL_23:
    v24 = v0[15];
    v23 = v0[16];
    v25 = v46[14];
    v26 = type metadata accessor for TaskPriority();
    v27 = *(v26 - 8);
    (*(v27 + 56))(v23, 1, 1, v26);
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = v47;
    *(v28 + 40) = v44;
    *(v28 + 48) = v25;
    sub_1001E6194(v23, v24);
    LODWORD(v24) = (*(v27 + 48))(v24, 1, v26);
    v29 = v47;
    v30 = v25;
    v31 = v46[15];
    if (v24 == 1)
    {
      sub_1003EAA74(v46[15]);
      v32 = 0;
      v33 = 0;
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v27 + 8))(v31, v26);
      if (*(v28 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v32 = dispatch thunk of Actor.unownedExecutor.getter();
        v33 = v36;
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }
    }

    v37 = *v46[12];
    v38 = swift_allocObject();
    *(v38 + 16) = &unk_100965CC0;
    *(v38 + 24) = v28;

    if (v33 | v32)
    {
      v39 = v43;
      *v43 = 0;
      v43[1] = 0;
      v46[4] = v32;
      v46[5] = v33;
    }

    else
    {
      v39 = 0;
    }

    v40 = v46[16];
    v46[9] = 1;
    v46[10] = v39;
    v46[11] = v37;
    swift_task_create();

    sub_1003EAA74(v40);
    v41 = swift_task_alloc();
    v46[27] = v41;
    v42 = sub_1000F24EC(&qword_100AEF650, &qword_100965CC8);
    *v41 = v46;
    v41[1] = sub_100733E2C;

    return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v42);
  }

  else
  {
LABEL_25:

LABEL_26:

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_100733E2C()
{

  return _swift_task_switch(sub_100733F28, 0, 0);
}

uint64_t sub_100733F28()
{
  v3 = *(v0 + 192) - 1;
  if (*(v0 + 192) != 1)
  {
    v41 = (v0 + 16);
    v4 = &qword_100AD0000;
    v5 = &off_100AEF000;
    v44 = v0;
    do
    {
      v6 = *(v0 + 200) + 1;
      *(v0 + 192) = v3;
      *(v0 + 200) = v6;
      if (v6 == *(v0 + 184))
      {
        break;
      }

      v7 = *(v0 + 160);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(*(v0 + 176) + 16))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          return TaskGroup.awaitAllRemainingTasks(isolation:)(v1, v7, v2);
        }

        v8 = *(v7 + 8 * v6 + 32);
      }

      v9 = v8;
      *(v0 + 208) = v8;
      v1 = *(v0 + 168);
      v10 = *(v1 + 16);
      if (v6 == v10)
      {

        goto LABEL_23;
      }

      if (v6 >= v10)
      {
        goto LABEL_37;
      }

      v45 = v9;
      v42 = *(v1 + v6 + 32);
      if (v4[88] != -1)
      {
        swift_once();
      }

      v43 = v5[200];
      if (!v43[2] || (sub_100734B8C(&qword_100ADFEE0, &protocol conformance descriptor for AssetType), v0 = v44, v11 = dispatch thunk of Hashable._rawHashValue(seed:)(), v12 = -1 << *(v43 + 32), v13 = v11 & ~v12, ((*(v43 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v13) & 1) == 0))
      {
LABEL_20:
        v23 = *(v0 + 120);
        v22 = *(v0 + 128);
        v24 = *(v44 + 112);
        v25 = type metadata accessor for TaskPriority();
        v26 = *(v25 - 8);
        (*(v26 + 56))(v22, 1, 1, v25);
        v27 = swift_allocObject();
        *(v27 + 16) = 0;
        *(v27 + 24) = 0;
        *(v27 + 32) = v45;
        *(v27 + 40) = v42;
        *(v27 + 48) = v24;
        sub_1001E6194(v22, v23);
        LODWORD(v23) = (*(v26 + 48))(v23, 1, v25);
        v28 = v45;
        v29 = v24;
        v30 = *(v44 + 120);
        if (v23 == 1)
        {
          sub_1003EAA74(*(v44 + 120));
          v31 = 0;
          v32 = 0;
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v26 + 8))(v30, v25);
          if (*(v27 + 16))
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v31 = dispatch thunk of Actor.unownedExecutor.getter();
            v32 = v35;
            swift_unknownObjectRelease();
          }

          else
          {
            v31 = 0;
            v32 = 0;
          }
        }

        v36 = **(v44 + 96);
        v37 = swift_allocObject();
        *(v37 + 16) = &unk_100965CC0;
        *(v37 + 24) = v27;

        if (v32 | v31)
        {
          v38 = v41;
          *v41 = 0;
          v41[1] = 0;
          *(v44 + 32) = v31;
          *(v44 + 40) = v32;
        }

        else
        {
          v38 = 0;
        }

        v39 = *(v44 + 128);
        *(v44 + 72) = 1;
        *(v44 + 80) = v38;
        *(v44 + 88) = v36;
        swift_task_create();

        sub_1003EAA74(v39);
        v40 = swift_task_alloc();
        *(v44 + 216) = v40;
        v2 = sub_1000F24EC(&qword_100AEF650, &qword_100965CC8);
        *v40 = v44;
        v40[1] = sub_100733E2C;
        v1 = 0;
        v7 = 0;

        return TaskGroup.awaitAllRemainingTasks(isolation:)(v1, v7, v2);
      }

      v14 = ~v12;
      v15 = *(v44 + 144);
      v16 = *(v15 + 72);
      v17 = *(v15 + 16);
      while (1)
      {
        v18 = *(v0 + 144);
        v19 = *(v0 + 152);
        v20 = *(v0 + 136);
        v17(v19, v43[6] + v13 * v16, v20);
        sub_100734B8C(&qword_100ADC690, &protocol conformance descriptor for AssetType);
        v21 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v18 + 8))(v19, v20);
        if (v21)
        {
          break;
        }

        v13 = (v13 + 1) & v14;
        v0 = v44;
        if (((*(v43 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v13) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v0 = v44;
      v3 = *(v44 + 192) - 1;
      v4 = &qword_100AD0000;
      v5 = &off_100AEF000;
    }

    while (*(v44 + 192) != 1);
  }

LABEL_23:

  v33 = *(v0 + 8);

  return v33();
}

void sub_1007344D8(void *a1@<X8>)
{
  v2 = OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets;
  v3 = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v3 >> 62)
  {
    v10 = a1;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v10;
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = &off_100A58488;
  switch(v4)
  {
    case 1:
      v6 = a1;
      sub_1000F24EC(&qword_100AEF648, &qword_100965C98);
      v5 = swift_allocObject();
      *(v5 + 1) = xmmword_100940080;
      v7 = *(v1 + v2);
      if ((v7 & 0xC000000000000001) != 0)
      {

        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        goto LABEL_7;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v8 = *(v7 + 32);
LABEL_7:
        v9 = sub_100088B38(v8);

        *(v5 + 32) = v9;
        a1 = v6;
        goto LABEL_20;
      }

      __break(1u);
      return;
    case 2:
      goto LABEL_20;
    case 3:
      v5 = &off_100A584B0;
      goto LABEL_20;
    case 4:
      v5 = &off_100A584D8;
      goto LABEL_20;
    case 5:
      v5 = &off_100A58500;
      goto LABEL_20;
    case 6:
      v5 = &off_100A58528;
      goto LABEL_20;
    case 7:
      v5 = &off_100A58550;
      goto LABEL_20;
    case 8:
      v5 = &off_100A58578;
      goto LABEL_20;
    case 9:
      v5 = &off_100A585A0;
      goto LABEL_20;
    case 10:
      v5 = &off_100A585D0;
      goto LABEL_20;
    case 11:
      v5 = &off_100A58600;
      goto LABEL_20;
    case 12:
      v5 = &off_100A58630;
      goto LABEL_20;
    case 13:
      v5 = &off_100A58660;
      goto LABEL_20;
    default:
      v5 = _swiftEmptyArrayStorage;
LABEL_20:
      *a1 = *(v1 + v2);
      a1[1] = v5;
      a1[2] = 5;

      return;
  }
}

uint64_t sub_1007346BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 104) = a5;
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  return _swift_task_switch(sub_1007346E0, 0, 0);
}

uint64_t sub_1007346E0()
{
  if (qword_100ACFB90 != -1)
  {
    swift_once();
  }

  v0[5] = qword_100B2F628;
  v0[6] = type metadata accessor for MainActor();
  v0[7] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[8] = v2;
  v0[9] = v1;

  return _swift_task_switch(sub_1007347B4, v2, v1);
}

uint64_t sub_1007347B4(uint64_t a1)
{
  v2 = v1[6].i8[8];
  v3 = v1[1].i64[1];
  v9 = v1[2];
  v4 = static MainActor.shared.getter();
  v1[5].i64[0] = v4;
  v5 = swift_task_alloc();
  v1[5].i64[1] = v5;
  v5[1].i64[0] = v3;
  v5[1].i8[8] = v2;
  v5[2].i64[0] = 0;
  v5[2].i8[8] = 1;
  v5[3] = vextq_s8(v9, v9, 8uLL);
  v6 = swift_task_alloc();
  v1[6].i64[0] = v6;
  v7 = sub_1000F24EC(&qword_100AE4D18, &qword_1009683F0);
  *v6 = v1;
  v6[1] = sub_100734900;

  return withCheckedContinuation<A>(isolation:function:_:)(&v1[1], v4, &protocol witness table for MainActor, 0xD00000000000003BLL, 0x80000001009004A0, sub_1006877A4, v5, v7);
}

uint64_t sub_100734900()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_100734A60, v3, v2);
}

uint64_t sub_100734A60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100734AC8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100032ECC;

  return sub_100733738(a1, a2, v6, v7);
}

uint64_t sub_100734B8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100734BD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_1007346BC(a1, v4, v5, v6, v8, v7);
}

id sub_100734D0C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CommonTransitions();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100734D68()
{
  result = qword_100AEF680;
  if (!qword_100AEF680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF680);
  }

  return result;
}

unint64_t sub_100734DC0()
{
  result = qword_100AEF688;
  if (!qword_100AEF688)
  {
    type metadata accessor for StringSearchCriteria();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF688);
  }

  return result;
}

uint64_t sub_100734E60()
{
  sub_1000F24EC(&qword_100AEF6E0, &unk_100965F50);
  v0 = type metadata accessor for StringSearchScope();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100940080;
  result = (*(v1 + 104))(v3 + v2, enum case for StringSearchScope.general(_:), v0);
  qword_100B302A0 = v3;
  return result;
}

uint64_t sub_100734F44(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1000F24EC(&qword_100AE46A0, &qword_100944EE8);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for StringSearchCriteria();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100735070, v5, v4);
}

uint64_t sub_100735070()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  IntentParameter.wrappedValue.getter();
  v4 = StringSearchCriteria.term.getter();
  v6 = v5;
  (*(v3 + 8))(v1, v2);
  v7 = [objc_opt_self() sharedApplication];
  v8 = sub_100510628();

  if (v8)
  {
    v9 = v0[4];
    *v9 = v4;
    v9[1] = v6;
    v10 = type metadata accessor for AppLaunchAction(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
    sub_1001F05E8(v9);

    sub_100192844(v9);
  }

  else
  {
  }

  static IntentResult.result<>()();

  v11 = v0[1];

  return v11();
}

double sub_1007351F0@<D0>(void *a1@<X8>)
{
  if (qword_100AD02C8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_100B302A0;

  return result;
}

uint64_t sub_100735284(uint64_t a1)
{
  v2 = type metadata accessor for StringSearchCriteria();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_100735374(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_1002A8020;
}

unint64_t sub_1007353EC()
{
  result = qword_100AEF690;
  if (!qword_100AEF690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF690);
  }

  return result;
}

unint64_t sub_100735444()
{
  result = qword_100AEF698;
  if (!qword_100AEF698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF698);
  }

  return result;
}

unint64_t sub_10073549C()
{
  result = qword_100AEF6A0;
  if (!qword_100AEF6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF6A0);
  }

  return result;
}

uint64_t sub_100735528(uint64_t a1)
{
  v2 = sub_100735D40();

  return static AssistantSchemaIntent.title.getter(a1, v2);
}

uint64_t sub_100735574(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000F24EC(&qword_100AEF6C0, &qword_100965F10);
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000F24EC(&qword_100AEF6C8, &qword_100965F18);
  __chkstk_darwin(v3);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0x20686372616553;
  v4._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_1000F24EC(&qword_100AEF6D0, &qword_100965F48);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0x72756F4A206E6920;
  v5._object = 0xEB000000006C616ELL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10073571C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032ECC;

  return sub_100734F44(a1, v4);
}

uint64_t sub_1007357BC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100735830();
  *a2 = result;
  return result;
}

uint64_t sub_1007357E4(uint64_t a1)
{
  v2 = sub_10052D408();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100735830()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000F24EC(&qword_100AE8938, &qword_10095CD10);
  __chkstk_darwin(v2 - 8);
  v26 = &v21 - v3;
  v4 = sub_1000F24EC(&qword_100AD9E60, &qword_1009497A0);
  __chkstk_darwin(v4 - 8);
  v25 = &v21 - v5;
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v22 = type metadata accessor for LocalizedStringResource();
  v12 = *(v22 - 8);
  __chkstk_darwin(v22);
  __chkstk_darwin(v13);
  v23 = &v21 - v14;
  v24 = sub_1000F24EC(&qword_100AEF6B8, &qword_100965EF8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v16 = *(v7 + 104);
  v16(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16(v9, v15, v6);
  v17 = v25;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v17, 0, 1, v22);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16(v9, v15, v6);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v18 = v26;
  IntentDialog.init(_:)();
  v19 = type metadata accessor for IntentDialog();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  return IntentParameter<>.init(title:description:requestValueDialog:inputConnectionBehavior:)();
}

unint64_t sub_100735D40()
{
  result = qword_100AEF6D8;
  if (!qword_100AEF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEF6D8);
  }

  return result;
}

uint64_t sub_100735D98(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005508();
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100737978;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A7AC60;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000068D4(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_100736074(uint64_t a1, void *a2)
{
  v151 = a2;
  v2 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v146 = v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for Date.FormatStyle.DateStyle();
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = _s23YearAdaptiveFormatStyleVMa(0);
  __chkstk_darwin(v143);
  v142 = v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v7 - 8);
  v9 = v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v135 - v11;
  v13 = type metadata accessor for Date();
  v149 = *(v13 - 1);
  v150 = v13;
  __chkstk_darwin(v13);
  v15 = v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v135 - v17;
  v19 = sub_1000F24EC(&qword_100AD8740, &unk_100948340);
  __chkstk_darwin(v19 - 8);
  v21 = v135 - v20;
  v22 = type metadata accessor for MotionActivityAssetMetadata();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v148 = v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v139 = v15;
  v140 = v3;
  v141 = v2;
  v25 = [objc_allocWithZone(UIStackView) init];
  p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
  [v25 setUserInteractionEnabled:1];
  [v25 setAxis:1];
  [v25 setAlignment:3];
  v154 = v25;
  [v25 setSpacing:16.0];
  v27 = [objc_allocWithZone(UIStackView) init];
  v28 = [objc_allocWithZone(UILabel) init];
  sub_1006AD0D4(v21);
  v29 = (*(v23 + 48))(v21, 1, v22);
  v152 = v27;
  if (v29 == 1)
  {
    sub_100004F84(v21, &qword_100AD8740, &unk_100948340);
    goto LABEL_12;
  }

  v138 = v28;
  v137 = v18;
  v30 = v148;
  (*(v23 + 32))(v148, v21, v22);
  MotionActivityAssetMetadata.startTime.getter();
  v32 = v149;
  v31 = v150;
  v33 = *(v149 + 48);
  if (v33(v12, 1, v150) == 1)
  {
    (*(v23 + 8))(v30, v22);
    sub_100004F84(v12, &unk_100AD4790, &unk_10093B4E0);
    v27 = v152;
LABEL_8:
    v28 = v138;
    goto LABEL_12;
  }

  v136 = v23;
  v34 = v137;
  v35 = v12;
  v36 = *(v32 + 32);
  v36(v137, v35, v31);
  MotionActivityAssetMetadata.endTime.getter();
  if (v33(v9, 1, v31) == 1)
  {
    (*(v32 + 8))(v34, v31);
    (*(v136 + 8))(v30, v22);
    sub_100004F84(v9, &unk_100AD4790, &unk_10093B4E0);
    v27 = v152;
    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
    goto LABEL_8;
  }

  v37 = v139;
  v36(v139, v9, v31);
  if (qword_100AD04E0 != -1)
  {
    swift_once();
  }

  v135[1] = *(&xmmword_100B305A0 + 1);
  v135[2] = xmmword_100B305A0;
  sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100940050;
  v39 = v142;
  static Date.FormatStyle.TimeStyle.shortened.getter();
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static Date.now.getter();
  sub_1000068D4(&qword_100AD1F88, _s23YearAdaptiveFormatStyleVMa, &unk_100972100);
  v40 = v137;
  Date.formatted<A>(_:)();
  sub_1000FBBCC(v39);
  v42 = *(&v155[0] + 1);
  v41 = *&v155[0];
  *(v38 + 56) = &type metadata for String;
  v43 = sub_100031B20();
  *(v38 + 64) = v43;
  *(v38 + 32) = v41;
  *(v38 + 40) = v42;
  v44 = v144;
  static Date.FormatStyle.DateStyle.omitted.getter();
  v45 = v146;
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v46 = Date.formatted(date:time:)();
  v48 = v47;
  (*(v140 + 8))(v45, v141);
  (*(v145 + 8))(v44, v147);
  *(v38 + 96) = &type metadata for String;
  *(v38 + 104) = v43;
  *(v38 + 72) = v46;
  *(v38 + 80) = v48;
  static String.localizedStringWithFormat(_:_:)();

  v49 = String._bridgeToObjectiveC()();

  v28 = v138;
  [v138 setText:v49];

  v50 = v150;
  v51 = *(v149 + 8);
  v51(v37, v150);
  v51(v40, v50);
  (*(v136 + 8))(v148, v22);
  v27 = v152;
  p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
LABEL_12:
  v150 = v28;
  [v27 setAxis:1];
  [v27 setAlignment:3];
  [v27 p:1 ivar:?lyt[462]];
  [v27 setSpacing:2.0];
  v52 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD03E0 != -1)
  {
    swift_once();
  }

  v149 = qword_100B303D8;
  [v52 setFont:?];
  v53 = objc_opt_self();
  v54 = [v53 secondaryLabelColor];
  [v52 setTextColor:v54];

  [v52 setAdjustsFontSizeToFitWidth:1];
  [v52 setMinimumScaleFactor:0.5];
  [v52 setAdjustsFontForContentSizeCategory:1];
  [v52 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v55 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD0378 != -1)
  {
    swift_once();
  }

  [v55 setFont:qword_100B30370];
  v56 = [v53 labelColor];
  [v55 setTextColor:v56];

  [v55 setAdjustsFontSizeToFitWidth:1];
  [v55 setMinimumScaleFactor:0.5];
  [v55 setAdjustsFontForContentSizeCategory:1];
  [v55 setNumberOfLines:0];
  [v55 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v57 = v150;
  [v57 setFont:v149];
  v58 = [v53 secondaryLabelColor];
  [v57 setTextColor:v58];

  [v57 setAdjustsFontForContentSizeCategory:1];
  [v57 setAdjustsFontSizeToFitWidth:1];
  [v57 setMinimumScaleFactor:0.5];
  [v57 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v57 setLineBreakMode:0];
  [v57 setNumberOfLines:0];
  [v57 setTextAlignment:1];
  v59 = v152;
  [v152 addArrangedSubview:v52];
  [v59 addArrangedSubview:v55];
  [v59 addArrangedSubview:v57];
  [v59 setCustomSpacing:v52 afterView:6.0];
  [v59 setCustomSpacing:v57 afterView:12.0];
  v60 = [v52 superview];
  if (v60)
  {
    v61 = v60;
    [v52 setTranslatesAutoresizingMaskIntoConstraints:0];
    v62 = [v61 centerXAnchor];
    v63 = [v52 centerXAnchor];
    v64 = [v63 constraintEqualToAnchor:v62];

    [v64 setConstant:0.0];
    [v64 setActive:1];
  }

  v65 = [v55 superview];
  if (v65)
  {
    v66 = v65;
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    v67 = [v66 centerXAnchor];
    v68 = [v55 centerXAnchor];
    v69 = [v68 constraintEqualToAnchor:v67];

    [v69 setConstant:0.0];
    [v69 setActive:1];
  }

  v70 = [v57 superview];
  if (v70)
  {
    v71 = v70;
    [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
    v72 = [v71 centerXAnchor];
    v73 = [v57 centerXAnchor];
    v74 = [v73 constraintEqualToAnchor:v72];

    [v74 setConstant:0.0];
    [v74 setActive:1];

    v55 = v72;
  }

  else
  {
    v71 = v57;
  }

  v75 = v152;

  v76 = OBJC_IVAR____TtC7Journal28FullScreenMotionActivityView_motionActivityView;
  v77 = *(Strong + OBJC_IVAR____TtC7Journal28FullScreenMotionActivityView_motionActivityView);
  v78 = v77[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v77[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v79 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v77[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1)
  {
    v80 = v77;
LABEL_30:
    sub_1003F43E0();
    v77[v79] = 1;

    goto LABEL_31;
  }

  if (v78 > 3 && v78 > 6)
  {

    goto LABEL_31;
  }

  v81 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v82 = v77;

  if ((v81 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  v83 = Strong;
  v84 = *(Strong + v76);
  v85 = *&v84[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionActivityAsset];
  v86 = v151;
  *&v84[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionActivityAsset] = v151;
  v87 = v84;
  v88 = v86;

  sub_1001F567C();
  v89 = [*&v83[v76] layer];
  v90 = &selRef_setSuggestedName_;
  if (qword_100AD0A18 != -1)
  {
    swift_once();
  }

  v155[0] = xmmword_100B30F28;
  v155[1] = *&qword_100B30F38;
  v155[2] = xmmword_100B30F48;
  v155[3] = *&qword_100B30F58;
  [v89 setCornerRadii:v155];

  v91 = v154;
  [v154 addArrangedSubview:*&v83[v76]];
  [v91 addArrangedSubview:v75];
  v92 = [v75 superview];
  if (v92)
  {
    v93 = v92;
    [v75 setTranslatesAutoresizingMaskIntoConstraints:0];
    v94 = [v75 leadingAnchor];
    v95 = [v93 leadingAnchor];
    v96 = [v94 constraintEqualToAnchor:v95];

    [v96 setConstant:32.0];
    [v96 setActive:1];

    v90 = &selRef_setSuggestedName_;
  }

  v97 = [v75 superview];
  if (v97)
  {
    v98 = v97;
    [v75 setTranslatesAutoresizingMaskIntoConstraints:0];
    v99 = [v75 trailingAnchor];
    v100 = [v98 trailingAnchor];
    v101 = [v99 constraintEqualToAnchor:v100];

    [v101 setConstant:-32.0];
    [v101 setActive:1];

    v90 = &selRef_setSuggestedName_;
  }

  v102 = *&v83[v76];
  v103 = [v102 superview];
  if (v103)
  {
    v104 = v103;
    [v102 setTranslatesAutoresizingMaskIntoConstraints:0];
    v105 = [v102 leadingAnchor];
    v106 = [v104 leadingAnchor];
    v107 = [v105 constraintEqualToAnchor:v106];

    [v107 setConstant:20.0];
    if (v107)
    {
      [v107 setActive:1];
    }

    v83 = Strong;
    v90 = &selRef_setSuggestedName_;
  }

  else
  {
    v107 = 0;
    v104 = v102;
  }

  v108 = *&v83[v76];
  v109 = [v108 superview];
  if (v109)
  {
    v110 = v109;
    [v108 v90[278]];
    v111 = [v108 trailingAnchor];
    v112 = [v110 trailingAnchor];
    v113 = [v111 constraintEqualToAnchor:v112];

    [v113 setConstant:-20.0];
    if (v113)
    {
      [v113 setActive:1];
    }

    v83 = Strong;
    v90 = &selRef_setSuggestedName_;
  }

  else
  {
    v113 = 0;
    v110 = v108;
  }

  v114 = *&v83[v76];
  [v114 v90[278]];
  v115 = [v114 heightAnchor];
  v116 = [v114 widthAnchor];
  v117 = v90;
  v118 = [v115 constraintEqualToAnchor:v116 multiplier:1.0];

  [v118 setActive:1];
  v119 = v154;
  [v83 addSubview:v154];
  v120 = [v119 superview];
  if (v120)
  {
    v121 = v120;
    [v119 v117[278]];
    v122 = [v119 centerYAnchor];
    v123 = [v121 centerYAnchor];
    v124 = [v122 constraintEqualToAnchor:v123];

    v119 = v154;
    [v124 setConstant:0.0];
    [v124 setActive:1];
  }

  v125 = [v119 superview];
  if (v125)
  {
    v126 = v125;
    [v119 setTranslatesAutoresizingMaskIntoConstraints:0];
    v127 = [v119 leadingAnchor];
    v128 = [v126 leadingAnchor];
    v129 = [v127 constraintEqualToAnchor:v128];

    v119 = v154;
    [v129 setConstant:0.0];
    [v129 setActive:1];
  }

  v130 = [v119 superview];
  if (v130)
  {
    v131 = v130;
    [v119 setTranslatesAutoresizingMaskIntoConstraints:0];
    v132 = [v119 trailingAnchor];
    v133 = [v131 trailingAnchor];
    v134 = [v132 constraintEqualToAnchor:v133];

    v119 = v154;
    [v134 setConstant:0.0];
    [v134 setActive:1];
  }

  [v83 layoutIfNeeded];
  [v119 layoutIfNeeded];
  [*&v83[v76] layoutIfNeeded];
}