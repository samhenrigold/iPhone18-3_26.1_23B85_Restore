uint64_t sub_10018AE88(uint64_t a1, NSObject *a2, uint64_t (*a3)(uint64_t a1), int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v182 = a6;
  v183 = a5;
  LODWORD(v174) = a4;
  v173 = a3;
  v179 = a2;
  v193 = a1;
  v180 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  __chkstk_darwin(v180);
  v181 = (&v161 - v6);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v172 = (&v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v187 = &v161 - v12;
  v13 = __chkstk_darwin(v11);
  v190 = &v161 - v14;
  __chkstk_darwin(v13);
  v16 = &v161 - v15;
  v186 = type metadata accessor for UUID();
  v192 = *(v186 - 8);
  __chkstk_darwin(v186);
  v185 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BenefactorInfoRecord(0);
  v19 = __chkstk_darwin(v18);
  v21 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v188 = &v161 - v23;
  v24 = __chkstk_darwin(v22);
  v170 = &v161 - v25;
  v26 = __chkstk_darwin(v24);
  v169 = &v161 - v27;
  v28 = __chkstk_darwin(v26);
  v175 = &v161 - v29;
  v30 = __chkstk_darwin(v28);
  v171 = (&v161 - v31);
  v32 = __chkstk_darwin(v30);
  v34 = &v161 - v33;
  __chkstk_darwin(v32);
  v36 = &v161 - v35;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100008D04(v37, qword_1003FAAE8);
  v39 = v193;
  sub_100194C44(v193, v36, type metadata accessor for BenefactorInfoRecord);
  sub_100194C44(v39, v34, type metadata accessor for BenefactorInfoRecord);
  v189 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v177 = v16;
  v176 = v8;
  v184 = v21;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v191 = v18;
    v44 = v43;
    v178 = swift_slowAlloc();
    v195[0] = v178;
    *v44 = 136315394;
    v45 = *(v192 + 16);
    v46 = &v36[*(v191 + 28)];
    LODWORD(v168) = v41;
    v47 = v185;
    v48 = v186;
    v45(v185, v46, v186);
    v167 = type metadata accessor for BenefactorInfoRecord;
    sub_100195024(v36, type metadata accessor for BenefactorInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    (*(v192 + 8))(v47, v48);
    v52 = sub_10021145C(v49, v51, v195);

    *(v44 + 4) = v52;
    *(v44 + 12) = 2080;
    type metadata accessor for LocalCache();
    v53 = v187;
    sub_100307F40();
    v54 = v190;
    URL.appendingPathComponent(_:isDirectory:)();
    v55 = v8;
    v56 = v54;
    v57 = v55[1];
    v57(v53, v7);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v57(v56, v7);
    sub_100195024(v34, v167);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    v57(v16, v7);
    v21 = v184;
    v61 = sub_10021145C(v58, v60, v195);

    *(v44 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v40, v168, "Local Cache: Saving record: %s at path: %s", v44, 0x16u);
    swift_arrayDestroy();

    v18 = v191;
  }

  else
  {
    sub_100195024(v34, type metadata accessor for BenefactorInfoRecord);
    sub_100195024(v36, type metadata accessor for BenefactorInfoRecord);
  }

  sub_100195084(&unk_1003E0E80, type metadata accessor for BenefactorInfoRecord, &unk_1003459B8);

  v62 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v178 = v63;
  v64 = v62;

  v65 = objc_autoreleasePoolPush();
  sub_10030348C(v64, v178, &v194, v195);
  v166 = 0;
  v167 = v64;
  objc_autoreleasePoolPop(v65);

  v168 = v195[0];
  v179 = v195[1];
  v93 = v193;
  v94 = v171;
  sub_100194C44(v193, v171, type metadata accessor for BenefactorInfoRecord);
  v95 = v175;
  sub_100194C44(v93, v175, type metadata accessor for BenefactorInfoRecord);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  v98 = os_log_type_enabled(v96, v97);
  v191 = v18;
  if (v98)
  {
    v99 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v195[0] = v165;
    *v99 = 136315394;
    v100 = v192;
    v101 = *(v192 + 16);
    v102 = v94 + *(v18 + 28);
    v103 = v185;
    v164 = v97;
    v104 = v186;
    v101(v185, v102, v186);
    v163 = type metadata accessor for BenefactorInfoRecord;
    sub_100195024(v94, type metadata accessor for BenefactorInfoRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v171 = v96;
    v105 = dispatch thunk of CustomStringConvertible.description.getter();
    v107 = v106;
    (*(v100 + 8))(v103, v104);
    v108 = sub_10021145C(v105, v107, v195);

    v162 = v99;
    *(v99 + 4) = v108;
    *(v99 + 12) = 2080;
    type metadata accessor for LocalCache();
    v109 = v187;
    sub_100307F40();
    v110 = v190;
    URL.appendingPathComponent(_:isDirectory:)();
    v111 = v176;
    v112 = *(v176 + 1);
    v112(v109, v7);
    v113 = v175;
    UUID.uuidString.getter();
    v114 = v177;
    URL.appendingPathComponent(_:)();

    v112(v110, v7);
    sub_100195024(v113, v163);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v115 = dispatch thunk of CustomStringConvertible.description.getter();
    v117 = v116;
    v112(v114, v7);
    v21 = v184;
    v118 = sub_10021145C(v115, v117, v195);

    v119 = v162;
    *(v162 + 14) = v118;
    v120 = v171;
    _os_log_impl(&_mh_execute_header, v171, v164, "Local Cache: Successfully encrypted record %s, %s", v119, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v95, type metadata accessor for BenefactorInfoRecord);
    sub_100195024(v94, type metadata accessor for BenefactorInfoRecord);

    v114 = v177;
    v111 = v176;
  }

  v121 = type metadata accessor for LocalCache();
  v122 = v190;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v123 = *(v111 + 1);
  v123(v122, v7);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v114, 0);
  v123(v114, v7);
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v123(v122, v7);
  UUID.uuidString.getter();
  v124 = v172;
  URL.appendingPathComponent(_:)();
  v125 = v123;

  v123(v114, v7);
  v126 = v168;
  v127 = v179;
  v128 = v166;
  sub_10030A77C(v168, v179, v124, v173, v174);
  if (v128)
  {
    v125(v124, v7);
    sub_100012324(v126, v127);
    sub_100012324(v167, v178);
    v129 = v191;
    v130 = v188;
    v66 = v193;
    sub_100194C44(v193, v188, type metadata accessor for BenefactorInfoRecord);
    sub_100194C44(v66, v21, type metadata accessor for BenefactorInfoRecord);
    swift_errorRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      v195[0] = v193;
      *v69 = 136315650;
      v70 = v192;
      v71 = *(v192 + 16);
      v72 = v130 + *(v129 + 28);
      v73 = v185;
      LODWORD(v188) = v68;
      v74 = v186;
      v71(v185, v72, v186);
      v178 = type metadata accessor for BenefactorInfoRecord;
      sub_100195024(v130, type metadata accessor for BenefactorInfoRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v179 = v67;
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v7;
      v78 = v77;
      (*(v70 + 8))(v73, v74);
      v79 = sub_10021145C(v75, v78, v195);

      *(v69 + 4) = v79;
      *(v69 + 12) = 2080;
      type metadata accessor for LocalCache();
      v80 = v187;
      sub_100307F40();
      v81 = v190;
      URL.appendingPathComponent(_:isDirectory:)();
      v82 = *(v176 + 1);
      v82(v80, v76);
      v83 = v184;
      UUID.uuidString.getter();
      v84 = v177;
      URL.appendingPathComponent(_:)();

      v82(v81, v76);
      sub_100195024(v83, v178);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      v82(v84, v76);
      v88 = sub_10021145C(v85, v87, v195);

      *(v69 + 14) = v88;
      *(v69 + 22) = 2112;
      v89 = _convertErrorToNSError(_:)();
      *(v69 + 24) = v89;
      v90 = v189;
      *v189 = v89;
      v67 = v179;
      _os_log_impl(&_mh_execute_header, v179, v188, "Local Cache: Error adding record %s with URL %s to local disk: %@", v69, 0x20u);
      sub_100008D3C(v90, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v21, type metadata accessor for BenefactorInfoRecord);
      sub_100195024(v130, type metadata accessor for BenefactorInfoRecord);
    }

    v91 = v181;
    *v181 = v128;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v183(v91);
  }

  else
  {
    v184 = v121;
    v188 = 0x80000001003303D0;
    v176 = v125;
    v125(v124, v7);
    v131 = v193;
    v132 = v169;
    sub_100194C44(v193, v169, type metadata accessor for BenefactorInfoRecord);
    v133 = v170;
    sub_100194C44(v131, v170, type metadata accessor for BenefactorInfoRecord);
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v195[0] = v189;
      *v136 = 136315394;
      LODWORD(v175) = v135;
      v137 = v192;
      v138 = *(v192 + 16);
      v139 = v132 + *(v191 + 28);
      v174 = v134;
      v140 = v185;
      v141 = v186;
      v138(v185, v139, v186);
      v173 = type metadata accessor for BenefactorInfoRecord;
      sub_100195024(v132, type metadata accessor for BenefactorInfoRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v142 = v133;
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v144 = v190;
      v145 = v137;
      v146 = v7;
      v148 = v147;
      (*(v145 + 8))(v140, v141);
      v149 = sub_10021145C(v143, v148, v195);

      *(v136 + 4) = v149;
      *(v136 + 12) = 2080;
      v150 = v136;
      v151 = v187;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v152 = v176;
      v176(v151, v146);
      UUID.uuidString.getter();
      v153 = v177;
      URL.appendingPathComponent(_:)();

      v152(v144, v146);
      sub_100195024(v142, v173);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v154 = dispatch thunk of CustomStringConvertible.description.getter();
      v156 = v155;
      v157 = v153;
      v126 = v168;
      v152(v157, v146);
      v158 = sub_10021145C(v154, v156, v195);

      *(v150 + 14) = v158;
      v159 = v174;
      _os_log_impl(&_mh_execute_header, v174, v175, "Local Cache: Successfully saved record to local disk %s, %s", v150, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v133, type metadata accessor for BenefactorInfoRecord);
      sub_100195024(v132, type metadata accessor for BenefactorInfoRecord);
    }

    v160 = v167;
    v91 = v181;
    sub_100194C44(v193, v181, type metadata accessor for BenefactorInfoRecord);
    swift_storeEnumTagMultiPayload();
    v183(v91);
    sub_100012324(v160, v178);
    sub_100012324(v126, v179);
  }

  return sub_100008D3C(v91, &unk_1003E1DD0, &qword_1003444D0);
}

uint64_t sub_10018C3A4(uint64_t a1, NSObject *a2, uint64_t (*a3)(uint64_t a1), int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v182 = a6;
  v183 = a5;
  LODWORD(v174) = a4;
  v173 = a3;
  v179 = a2;
  v193 = a1;
  v180 = sub_100005814(&qword_1003E0E70, &unk_10034A420);
  __chkstk_darwin(v180);
  v181 = (&v161 - v6);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v172 = (&v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v187 = &v161 - v12;
  v13 = __chkstk_darwin(v11);
  v190 = &v161 - v14;
  __chkstk_darwin(v13);
  v16 = &v161 - v15;
  v186 = type metadata accessor for UUID();
  v192 = *(v186 - 8);
  __chkstk_darwin(v186);
  v185 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BeneficiaryManifestRecord(0);
  v19 = __chkstk_darwin(v18);
  v21 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v188 = &v161 - v23;
  v24 = __chkstk_darwin(v22);
  v170 = &v161 - v25;
  v26 = __chkstk_darwin(v24);
  v169 = &v161 - v27;
  v28 = __chkstk_darwin(v26);
  v175 = &v161 - v29;
  v30 = __chkstk_darwin(v28);
  v171 = (&v161 - v31);
  v32 = __chkstk_darwin(v30);
  v34 = &v161 - v33;
  __chkstk_darwin(v32);
  v36 = &v161 - v35;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100008D04(v37, qword_1003FAAE8);
  v39 = v193;
  sub_100194C44(v193, v36, type metadata accessor for BeneficiaryManifestRecord);
  sub_100194C44(v39, v34, type metadata accessor for BeneficiaryManifestRecord);
  v189 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v177 = v16;
  v176 = v8;
  v184 = v21;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v191 = v18;
    v44 = v43;
    v178 = swift_slowAlloc();
    v195[0] = v178;
    *v44 = 136315394;
    v45 = *(v192 + 16);
    v46 = &v36[*(v191 + 24)];
    LODWORD(v168) = v41;
    v47 = v185;
    v48 = v186;
    v45(v185, v46, v186);
    v167 = type metadata accessor for BeneficiaryManifestRecord;
    sub_100195024(v36, type metadata accessor for BeneficiaryManifestRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    (*(v192 + 8))(v47, v48);
    v52 = sub_10021145C(v49, v51, v195);

    *(v44 + 4) = v52;
    *(v44 + 12) = 2080;
    type metadata accessor for LocalCache();
    v53 = v187;
    sub_100307F40();
    v54 = v190;
    URL.appendingPathComponent(_:isDirectory:)();
    v55 = v8;
    v56 = v54;
    v57 = v55[1];
    v57(v53, v7);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v57(v56, v7);
    sub_100195024(v34, v167);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v58 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = v59;
    v57(v16, v7);
    v21 = v184;
    v61 = sub_10021145C(v58, v60, v195);

    *(v44 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v40, v168, "Local Cache: Saving record: %s at path: %s", v44, 0x16u);
    swift_arrayDestroy();

    v18 = v191;
  }

  else
  {
    sub_100195024(v34, type metadata accessor for BeneficiaryManifestRecord);
    sub_100195024(v36, type metadata accessor for BeneficiaryManifestRecord);
  }

  sub_100195084(&qword_1003E0E78, type metadata accessor for BeneficiaryManifestRecord, &unk_100345DC0);

  v62 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v178 = v63;
  v64 = v62;

  v65 = objc_autoreleasePoolPush();
  sub_10030348C(v64, v178, &v194, v195);
  v166 = 0;
  v167 = v64;
  objc_autoreleasePoolPop(v65);

  v168 = v195[0];
  v179 = v195[1];
  v93 = v193;
  v94 = v171;
  sub_100194C44(v193, v171, type metadata accessor for BeneficiaryManifestRecord);
  v95 = v175;
  sub_100194C44(v93, v175, type metadata accessor for BeneficiaryManifestRecord);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  v98 = os_log_type_enabled(v96, v97);
  v191 = v18;
  if (v98)
  {
    v99 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v195[0] = v165;
    *v99 = 136315394;
    v100 = v192;
    v101 = *(v192 + 16);
    v102 = v94 + *(v18 + 24);
    v103 = v185;
    v164 = v97;
    v104 = v186;
    v101(v185, v102, v186);
    v163 = type metadata accessor for BeneficiaryManifestRecord;
    sub_100195024(v94, type metadata accessor for BeneficiaryManifestRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v171 = v96;
    v105 = dispatch thunk of CustomStringConvertible.description.getter();
    v107 = v106;
    (*(v100 + 8))(v103, v104);
    v108 = sub_10021145C(v105, v107, v195);

    v162 = v99;
    *(v99 + 4) = v108;
    *(v99 + 12) = 2080;
    type metadata accessor for LocalCache();
    v109 = v187;
    sub_100307F40();
    v110 = v190;
    URL.appendingPathComponent(_:isDirectory:)();
    v111 = v176;
    v112 = *(v176 + 1);
    v112(v109, v7);
    v113 = v175;
    UUID.uuidString.getter();
    v114 = v177;
    URL.appendingPathComponent(_:)();

    v112(v110, v7);
    sub_100195024(v113, v163);
    sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v115 = dispatch thunk of CustomStringConvertible.description.getter();
    v117 = v116;
    v112(v114, v7);
    v21 = v184;
    v118 = sub_10021145C(v115, v117, v195);

    v119 = v162;
    *(v162 + 14) = v118;
    v120 = v171;
    _os_log_impl(&_mh_execute_header, v171, v164, "Local Cache: Successfully encrypted record %s, %s", v119, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100195024(v95, type metadata accessor for BeneficiaryManifestRecord);
    sub_100195024(v94, type metadata accessor for BeneficiaryManifestRecord);

    v114 = v177;
    v111 = v176;
  }

  v121 = type metadata accessor for LocalCache();
  v122 = v190;
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v123 = v111[1];
  v123(v122, v7);
  _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(v114, 0);
  v123(v114, v7);
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v123(v122, v7);
  UUID.uuidString.getter();
  v124 = v172;
  URL.appendingPathComponent(_:)();
  v125 = v123;

  v123(v114, v7);
  v126 = v168;
  v127 = v179;
  v128 = v166;
  sub_10030A77C(v168, v179, v124, v173, v174);
  if (v128)
  {
    v125(v124, v7);
    sub_100012324(v126, v127);
    sub_100012324(v167, v178);
    v129 = v191;
    v130 = v188;
    v66 = v193;
    sub_100194C44(v193, v188, type metadata accessor for BeneficiaryManifestRecord);
    sub_100194C44(v66, v21, type metadata accessor for BeneficiaryManifestRecord);
    swift_errorRetain();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      v195[0] = v193;
      *v69 = 136315650;
      v70 = v192;
      v71 = *(v192 + 16);
      v72 = v130 + *(v129 + 24);
      v73 = v185;
      LODWORD(v188) = v68;
      v74 = v186;
      v71(v185, v72, v186);
      v178 = type metadata accessor for BeneficiaryManifestRecord;
      sub_100195024(v130, type metadata accessor for BeneficiaryManifestRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v179 = v67;
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v7;
      v78 = v77;
      (*(v70 + 8))(v73, v74);
      v79 = sub_10021145C(v75, v78, v195);

      *(v69 + 4) = v79;
      *(v69 + 12) = 2080;
      type metadata accessor for LocalCache();
      v80 = v187;
      sub_100307F40();
      v81 = v190;
      URL.appendingPathComponent(_:isDirectory:)();
      v82 = *(v176 + 1);
      v82(v80, v76);
      v83 = v184;
      UUID.uuidString.getter();
      v84 = v177;
      URL.appendingPathComponent(_:)();

      v82(v81, v76);
      sub_100195024(v83, v178);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      v82(v84, v76);
      v88 = sub_10021145C(v85, v87, v195);

      *(v69 + 14) = v88;
      *(v69 + 22) = 2112;
      v89 = _convertErrorToNSError(_:)();
      *(v69 + 24) = v89;
      v90 = v189;
      *v189 = v89;
      v67 = v179;
      _os_log_impl(&_mh_execute_header, v179, v188, "Local Cache: Error adding record %s with URL %s to local disk: %@", v69, 0x20u);
      sub_100008D3C(v90, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v21, type metadata accessor for BeneficiaryManifestRecord);
      sub_100195024(v130, type metadata accessor for BeneficiaryManifestRecord);
    }

    v91 = v181;
    *v181 = v128;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v183(v91);
  }

  else
  {
    v184 = v121;
    v188 = 0x80000001003303A0;
    v176 = v125;
    v125(v124, v7);
    v131 = v193;
    v132 = v169;
    sub_100194C44(v193, v169, type metadata accessor for BeneficiaryManifestRecord);
    v133 = v170;
    sub_100194C44(v131, v170, type metadata accessor for BeneficiaryManifestRecord);
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v195[0] = v189;
      *v136 = 136315394;
      LODWORD(v175) = v135;
      v137 = v192;
      v138 = *(v192 + 16);
      v139 = v132 + *(v191 + 24);
      v174 = v134;
      v140 = v185;
      v141 = v186;
      v138(v185, v139, v186);
      v173 = type metadata accessor for BeneficiaryManifestRecord;
      sub_100195024(v132, type metadata accessor for BeneficiaryManifestRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v142 = v133;
      v143 = dispatch thunk of CustomStringConvertible.description.getter();
      v144 = v190;
      v145 = v137;
      v146 = v7;
      v148 = v147;
      (*(v145 + 8))(v140, v141);
      v149 = sub_10021145C(v143, v148, v195);

      *(v136 + 4) = v149;
      *(v136 + 12) = 2080;
      v150 = v136;
      v151 = v187;
      sub_100307F40();
      URL.appendingPathComponent(_:isDirectory:)();
      v152 = v176;
      v176(v151, v146);
      UUID.uuidString.getter();
      v153 = v177;
      URL.appendingPathComponent(_:)();

      v152(v144, v146);
      sub_100195024(v142, v173);
      sub_100195084(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v154 = dispatch thunk of CustomStringConvertible.description.getter();
      v156 = v155;
      v157 = v153;
      v126 = v168;
      v152(v157, v146);
      v158 = sub_10021145C(v154, v156, v195);

      *(v150 + 14) = v158;
      v159 = v174;
      _os_log_impl(&_mh_execute_header, v174, v175, "Local Cache: Successfully saved record to local disk %s, %s", v150, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v133, type metadata accessor for BeneficiaryManifestRecord);
      sub_100195024(v132, type metadata accessor for BeneficiaryManifestRecord);
    }

    v160 = v167;
    v91 = v181;
    sub_100194C44(v193, v181, type metadata accessor for BeneficiaryManifestRecord);
    swift_storeEnumTagMultiPayload();
    v183(v91);
    sub_100012324(v160, v178);
    sub_100012324(v126, v179);
  }

  return sub_100008D3C(v91, &qword_1003E0E70, &unk_10034A420);
}

uint64_t sub_10018D8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v47 = a2;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v40 - v5;
  v7 = type metadata accessor for UUID();
  v43 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for InheritanceHealthRecord(0);
  v44 = *(v50 - 8);
  v10 = *(v44 + 64);
  v11 = __chkstk_darwin(v50);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAE8);
  sub_100194C44(a1, v13, type metadata accessor for InheritanceHealthRecord);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = a1;
    v40 = v19;
    v51[0] = v19;
    *v18 = 136315394;
    v20 = v43;
    (*(v43 + 16))(v9, &v13[*(v50 + 28)], v7);
    sub_100195024(v13, type metadata accessor for InheritanceHealthRecord);
    sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v20 + 8))(v9, v7);
    v24 = sub_10021145C(v21, v23, v51);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v51);
    _os_log_impl(&_mh_execute_header, v15, v16, "Storage Controller: Saving record to shared DB, recordID: %s, type: %s", v18, 0x16u);
    swift_arrayDestroy();
    a1 = v42;

    v4 = v41;
  }

  else
  {
    sub_100195024(v13, type metadata accessor for InheritanceHealthRecord);
  }

  v25 = v46;
  v26 = v48;
  (*(v46 + 16))(v6, v48 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v4);
  Dependency.wrappedValue.getter();
  (*(v25 + 8))(v6, v4);
  sub_1000080F8(v51, v51[3]);
  v27 = v45;
  sub_100194C44(a1, v45, type metadata accessor for InheritanceHealthRecord);
  v28 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v29 = (v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_100194EC4(v27, v30 + v28, type metadata accessor for InheritanceHealthRecord);
  *(v30 + v29) = v26;
  v31 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = v49;
  *v31 = v47;
  v31[1] = v32;
  v33 = qword_1003D7EB0;

  if (v33 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v50 + 36)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v34 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v34 = &qword_1003FA9F0;
  }

  v35 = *v34;
  v36 = v34[1];

  v37 = sub_1002E2BC4(v35, v36);

  v38 = [v37 sharedCloudDatabase];

  sub_100175660(a1, v38, sub_100190774, v30);

  return sub_10000839C(v51);
}

uint64_t sub_10018DF38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v64 = a4;
  v65 = a5;
  v58 = a3;
  v63 = a2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v8 = &v55 - v7;
  v9 = type metadata accessor for UUID();
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v57 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for InheritanceHealthRecord(0);
  v11 = __chkstk_darwin(v56);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v55 - v15;
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  v19 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v20 = __chkstk_darwin(v19);
  v22 = (&v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v24 = (&v55 - v23);
  sub_100012D04(a1, &v55 - v23, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAE8);
    sub_100194C44(v63, v13, type metadata accessor for InheritanceHealthRecord);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66[0] = v63;
      *v29 = 136315650;
      v31 = v61;
      v30 = v62;
      v32 = *(v61 + 16);
      v33 = &v13[*(v56 + 28)];
      LODWORD(v59) = v28;
      v34 = v57;
      v32(v57, v33, v62);
      sub_100195024(v13, type metadata accessor for InheritanceHealthRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v31 + 8))(v34, v30);
      v38 = sub_10021145C(v35, v37, v66);

      *(v29 + 4) = v38;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v66);
      *(v29 + 22) = 2112;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 24) = v39;
      v40 = v60;
      *v60 = v39;
      _os_log_impl(&_mh_execute_header, v27, v59, "Storage Controller: Failed to save record shared DB, recordID: %s, type: %s, error: %@", v29, 0x20u);
      sub_100008D3C(v40, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v13, type metadata accessor for InheritanceHealthRecord);
    }

    *v22 = v25;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v64(v22);

    return sub_100008D3C(v22, &unk_1003E10C0, &qword_100346A70);
  }

  else
  {
    sub_100194EC4(v24, v18, type metadata accessor for InheritanceHealthRecord);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100008D04(v41, qword_1003FAAE8);
    sub_100194C44(v63, v16, type metadata accessor for InheritanceHealthRecord);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v66[0] = v63;
      *v44 = 136315394;
      v45 = v57;
      v47 = v61;
      v46 = v62;
      (*(v61 + 16))(v57, &v16[*(v56 + 28)], v62);
      sub_100195024(v16, type metadata accessor for InheritanceHealthRecord);
      sub_100195084(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (*(v47 + 8))(v45, v46);
      v51 = sub_10021145C(v48, v50, v66);

      *(v44 + 4) = v51;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_10021145C(0xD000000000000017, 0x8000000100330300, v66);
      _os_log_impl(&_mh_execute_header, v42, v43, "Storage Controller: Successfully to saved record to shared DB, recordID: %s, type: %s", v44, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100195024(v16, type metadata accessor for InheritanceHealthRecord);
    }

    v53 = v59;
    v54 = v60;
    (*(v59 + 16))(v8, v58 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v60);
    Dependency.wrappedValue.getter();
    (*(v53 + 8))(v8, v54);
    sub_1000080F8(v66, v66[3]);
    sub_10017F2E8(v18, 0, 2, v64, v65);
    sub_100195024(v18, type metadata accessor for InheritanceHealthRecord);
    return sub_10000839C(v66);
  }
}

uint64_t sub_10018E7A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10018E9D4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10018F5E4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100012324(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10018E7A4(v13, a3, a4, &v12);
  v10 = v4;
  sub_100012324(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t *sub_10018EB64@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_10018F824(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_10018EC2C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_100012324(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100012324(v7, v6);
    *v4 = xmmword_10033F8D0;
    sub_100012324(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_10018F03C(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_100012324(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_10033F8D0;
    sub_100012324(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_10018F03C(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

void *sub_10018EFD0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_10018F03C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_10018F0F0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10018F16C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      sub_100195084(&unk_1003DA8A0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10018F34C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_10018F34C(v5, v6);
  }

  type metadata accessor for SHA256();
  sub_100195084(&unk_1003DA8A0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_10018F34C(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_100195084(&unk_1003DA8A0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10018F42C@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10018F47C(void *result, uint64_t a2)
{
  v2 = result[2];
  v3 = _swiftEmptyArrayStorage;
  v4 = v2 - a2;
  if (v2 != a2)
  {
    if (v2 > a2)
    {
      if (a2 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (!v2)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = 0;
      v6 = result + a2 + 32;
      v7 = &_swiftEmptyArrayStorage[4];
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        if (!v5)
        {
          v10 = v3[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_28;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          sub_100005814(&unk_1003DA8C0, &qword_10033EA30);
          v13 = swift_allocObject();
          v14 = 2 * j__malloc_size(v13) - 64;
          v13[2] = v12;
          v13[3] = v14;
          v15 = (v13 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v13 != v3 || v15 >= v3 + v16 + 32)
            {
              memmove(v13 + 4, v3 + 4, v16);
            }

            v3[2] = 0;
          }

          v7 = (v15 + v16);
          v5 = (v14 >> 1) - v16;

          v3 = v13;
        }

        v18 = __OFSUB__(v5--, 1);
        if (v18)
        {
          break;
        }

        *v7++ = v8;
        if (!--v4)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v5 = 0;
LABEL_23:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v5);
  v21 = v20 - v5;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10018F5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_10018E7A4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_10018F69C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100015D6C(a3, a4);
          return sub_10018E9D4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_10018F804(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10018F824(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10018F8DC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_10018F97C(uint64_t a1)
{
  v9 = sub_100005814(&qword_1003E0E40, &unk_100344498);
  v10 = sub_1000D10EC(&qword_1003E0E48, &qword_1003E0E40, &unk_100344498, &protocol conformance descriptor for <A> [A]);
  v8[0] = a1;
  v2 = sub_1000080F8(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10031D508(v3, &v3[v4], &v7);
  v5 = v7;
  sub_10000839C(v8);
  return v5;
}

uint64_t sub_10018FA58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-1] - v9;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAB8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v19 = v6;
    v14 = a1;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20[0] = v16;
    *v15 = 136315138;
    if (qword_1003D7E18 != -1)
    {
      swift_once();
    }

    *(v15 + 4) = sub_10021145C(qword_1003E0D38, unk_1003E0D40, v20);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s - started.", v15, 0xCu);
    sub_10000839C(v16);

    a1 = v14;
    v6 = v19;
  }

  else
  {
  }

  (*(v8 + 16))(v10, v3 + OBJC_IVAR____TtC13appleaccountd21BenefactorHealthCheck__inheritanceStorage, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v10, v7);
  sub_1000080F8(v20, v20[3]);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v3;
  v17[5] = v6;

  sub_10021AD90(sub_10018FD60, v17);

  return sub_10000839C(v20);
}

uint64_t sub_10018FD70()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10018FDB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10018FDC8()
{
  v1 = (type metadata accessor for BenefactorInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);

  v6(v4 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_10018FF1C(uint64_t a1)
{
  v3 = *(type metadata accessor for BenefactorInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1001714C4(a1, v1 + v4, v6, v7);
}

uint64_t sub_10018FFD0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100190008()
{
  v1 = (type metadata accessor for BenefactorInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);

  v6(v4 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_100190160(uint64_t a1)
{
  v3 = *(type metadata accessor for BenefactorInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001728D0(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_100190218()
{
  v1 = (type metadata accessor for BenefactorInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = (type metadata accessor for InheritanceHealthRecord(0) - 8);
  v5 = (v3 + *(*v4 + 80) + 8) & ~*(*v4 + 80);
  v13 = (*(*v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);

  v8(v6 + v1[9], v7);
  sub_100012324(*(v6 + v1[10]), *(v6 + v1[10] + 8));

  v9 = v0 + v5;
  v8(v0 + v5, v7);
  v10 = v4[7];
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 8))(v0 + v5 + v10, v11);
  sub_100012324(*(v9 + v4[8]), *(v9 + v4[8] + 8));
  v8(v0 + v5 + v4[9], v7);
  sub_100012324(*(v9 + v4[10]), *(v9 + v4[10] + 8));

  return _swift_deallocObject(v0, v13 + 8);
}

uint64_t sub_100190474(uint64_t a1)
{
  v3 = *(type metadata accessor for BenefactorInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for InheritanceHealthRecord(0) - 8);
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);
  v10 = *(v1 + v6);
  v11 = v1 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80));

  return sub_10017303C(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_10019059C()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1001905E8()
{
  v1 = (type metadata accessor for InheritanceHealthRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  sub_100012324(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  v6(v4 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100190774(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceHealthRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_10018DF38(a1, v1 + v4, v6, v8, v9);
}

uint64_t sub_100190820()
{
  v1 = (type metadata accessor for InheritanceHealthRecord(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  sub_100012324(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  v6(v4 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1001909E0()
{
  v1 = (type metadata accessor for InheritanceHealthRecord(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2, v5);
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  sub_100012324(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  v6(v0 + v2 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

void sub_100190C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CustodianRecord(0);
  __chkstk_darwin(v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100194C44(a1, v8, type metadata accessor for CustodianRecord);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v9 = sub_1002E2EE0(0xD000000000000011, 0x8000000100330430);
  v10 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v9];
  sub_100016034(0, &qword_1003E0E28, CKModifyRecordZonesOperation_ptr);
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003431D0;
  *(v11 + 32) = v10;
  v12 = v10;
  v22.value._rawValue = v11;
  v22.is_nil = 0;
  v13.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v22, v23).super.super.super.super.isa;
  sub_1002DE8D4();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_100195AC8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10017CF90;
  aBlock[3] = &unk_1003AC4A8;
  v15 = _Block_copy(aBlock);

  [(objc_class *)v13.super.super.super.super.isa setModifyRecordZonesCompletionBlock:v15];
  _Block_release(v15);
  if (v8[*(v6 + 48)] == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v16 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v16 = &qword_1003FA9C0;
  }

  v17 = *v16;
  v18 = v16[1];

  sub_100195024(v8, type metadata accessor for CustodianRecord);
  v19 = sub_1002E2BC4(v17, v18);

  v20 = [v19 privateCloudDatabase];

  [v20 addOperation:v13.super.super.super.super.isa];
}

void sub_100190F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  __chkstk_darwin(v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100194C44(a1, v8, type metadata accessor for CustodianRecoveryInfoRecord);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v9 = UUID.uuidString.getter();
  v11 = sub_1002E2EE0(v9, v10);

  v12 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v11];
  sub_100016034(0, &qword_1003E0E28, CKModifyRecordZonesOperation_ptr);
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1003431D0;
  *(v13 + 32) = v12;
  v14 = v12;
  v24.value._rawValue = v13;
  v24.is_nil = 0;
  v15.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v24, v25).super.super.super.super.isa;
  sub_1002DE8D4();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  aBlock[4] = sub_100195AC8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10017CF90;
  aBlock[3] = &unk_1003AC5C0;
  v17 = _Block_copy(aBlock);

  [(objc_class *)v15.super.super.super.super.isa setModifyRecordZonesCompletionBlock:v17];
  _Block_release(v17);
  if (v8[*(v6 + 40)] == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v18 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v18 = &qword_1003FA9C0;
  }

  v19 = *v18;
  v20 = v18[1];

  sub_100195024(v8, type metadata accessor for CustodianRecoveryInfoRecord);
  v21 = sub_1002E2BC4(v19, v20);

  v22 = [v21 privateCloudDatabase];

  [v22 addOperation:v15.super.super.super.super.isa];
}

void sub_1001912C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CustodianHealthRecord(0);
  __chkstk_darwin(v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100194C44(a1, v8, type metadata accessor for CustodianHealthRecord);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v9 = UUID.uuidString.getter();
  v11 = sub_1002E2EE0(v9, v10);

  v12 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v11];
  sub_100016034(0, &qword_1003E0E28, CKModifyRecordZonesOperation_ptr);
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1003431D0;
  *(v13 + 32) = v12;
  v14 = v12;
  v24.value._rawValue = v13;
  v24.is_nil = 0;
  v15.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v24, v25).super.super.super.super.isa;
  sub_1002DE8D4();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  aBlock[4] = sub_100195AC8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10017CF90;
  aBlock[3] = &unk_1003AC688;
  v17 = _Block_copy(aBlock);

  [(objc_class *)v15.super.super.super.super.isa setModifyRecordZonesCompletionBlock:v17];
  _Block_release(v17);
  if (v8[*(v6 + 36)] == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v18 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v18 = &qword_1003FA9C0;
  }

  v19 = *v18;
  v20 = v18[1];

  sub_100195024(v8, type metadata accessor for CustodianHealthRecord);
  v21 = sub_1002E2BC4(v19, v20);

  v22 = [v21 privateCloudDatabase];

  [v22 addOperation:v15.super.super.super.super.isa];
}

void sub_10019162C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CustodianshipInfoRecord(0);
  __chkstk_darwin(v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100194C44(a1, v8, type metadata accessor for CustodianshipInfoRecord);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v9 = UUID.uuidString.getter();
  v11 = sub_1002E2EE0(v9, v10);

  v12 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v11];
  sub_100016034(0, &qword_1003E0E28, CKModifyRecordZonesOperation_ptr);
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1003431D0;
  *(v13 + 32) = v12;
  v14 = v12;
  v24.value._rawValue = v13;
  v24.is_nil = 0;
  v15.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v24, v25).super.super.super.super.isa;
  sub_1002DE8D4();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  aBlock[4] = sub_100195AC8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10017CF90;
  aBlock[3] = &unk_1003ABEE0;
  v17 = _Block_copy(aBlock);

  [(objc_class *)v15.super.super.super.super.isa setModifyRecordZonesCompletionBlock:v17];
  _Block_release(v17);
  if (v8[*(v6 + 36)] == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v18 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v18 = &qword_1003FA9C0;
  }

  v19 = *v18;
  v20 = v18[1];

  sub_100195024(v8, type metadata accessor for CustodianshipInfoRecord);
  v21 = sub_1002E2BC4(v19, v20);

  v22 = [v21 privateCloudDatabase];

  [v22 addOperation:v15.super.super.super.super.isa];
}

void sub_100191990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InheritanceHealthRecord(0);
  __chkstk_darwin(v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100194C44(a1, v8, type metadata accessor for InheritanceHealthRecord);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v9 = UUID.uuidString.getter();
  v11 = sub_1002E2EE0(v9, v10);

  v12 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v11];
  sub_100016034(0, &qword_1003E0E28, CKModifyRecordZonesOperation_ptr);
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1003431D0;
  *(v13 + 32) = v12;
  v14 = v12;
  v24.value._rawValue = v13;
  v24.is_nil = 0;
  v15.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v24, v25).super.super.super.super.isa;
  sub_1002DE8D4();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  aBlock[4] = sub_100191CF0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10017CF90;
  aBlock[3] = &unk_1003ABDC8;
  v17 = _Block_copy(aBlock);

  [(objc_class *)v15.super.super.super.super.isa setModifyRecordZonesCompletionBlock:v17];
  _Block_release(v17);
  if (v8[*(v6 + 36)] == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v18 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v18 = &qword_1003FA9F0;
  }

  v19 = *v18;
  v20 = v18[1];

  sub_100195024(v8, type metadata accessor for InheritanceHealthRecord);
  v21 = sub_1002E2BC4(v19, v20);

  v22 = [v21 privateCloudDatabase];

  [v22 addOperation:v15.super.super.super.super.isa];
}

uint64_t sub_100191CF8()
{
  v1 = (type metadata accessor for InheritanceHealthRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  sub_100012324(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  v6(v4 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

void sub_100191EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100194C44(a1, v8, type metadata accessor for BeneficiaryInfoRecord);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v9 = UUID.uuidString.getter();
  v11 = sub_1002E2EE0(v9, v10);

  v12 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v11];
  sub_100016034(0, &qword_1003E0E28, CKModifyRecordZonesOperation_ptr);
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1003431D0;
  *(v13 + 32) = v12;
  v14 = v12;
  v24.value._rawValue = v13;
  v24.is_nil = 0;
  v15.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v24, v25).super.super.super.super.isa;
  sub_1002DE8D4();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  aBlock[4] = sub_100195AC8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10017CF90;
  aBlock[3] = &unk_1003AC2F0;
  v17 = _Block_copy(aBlock);

  [(objc_class *)v15.super.super.super.super.isa setModifyRecordZonesCompletionBlock:v17];
  _Block_release(v17);
  if (v8[*(v6 + 40)] == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v18 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v18 = &qword_1003FA9F0;
  }

  v19 = *v18;
  v20 = v18[1];

  sub_100195024(v8, type metadata accessor for BeneficiaryInfoRecord);
  v21 = sub_1002E2BC4(v19, v20);

  v22 = [v21 privateCloudDatabase];

  [v22 addOperation:v15.super.super.super.super.isa];
}

void sub_100192210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InheritanceInvitationRecord(0);
  __chkstk_darwin(v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100194C44(a1, v8, type metadata accessor for InheritanceInvitationRecord);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v9 = sub_1002E2EE0(0xD000000000000011, 0x8000000100330430);
  v10 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v9];
  sub_100016034(0, &qword_1003E0E28, CKModifyRecordZonesOperation_ptr);
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003431D0;
  *(v11 + 32) = v10;
  v12 = v10;
  v22.value._rawValue = v11;
  v22.is_nil = 0;
  v13.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v22, v23).super.super.super.super.isa;
  sub_1002DE8D4();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_100195AC8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10017CF90;
  aBlock[3] = &unk_1003AC3B8;
  v15 = _Block_copy(aBlock);

  [(objc_class *)v13.super.super.super.super.isa setModifyRecordZonesCompletionBlock:v15];
  _Block_release(v15);
  if (v8[*(v6 + 44)] == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v16 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v16 = &qword_1003FA9F0;
  }

  v17 = *v16;
  v18 = v16[1];

  sub_100195024(v8, type metadata accessor for InheritanceInvitationRecord);
  v19 = sub_1002E2BC4(v17, v18);

  v20 = [v19 privateCloudDatabase];

  [v20 addOperation:v13.super.super.super.super.isa];
}

void sub_100192574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BenefactorInfoRecord(0);
  __chkstk_darwin(v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100194C44(a1, v8, type metadata accessor for BenefactorInfoRecord);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  v9 = UUID.uuidString.getter();
  v11 = sub_1002E2EE0(v9, v10);

  v12 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v11];
  sub_100016034(0, &qword_1003E0E28, CKModifyRecordZonesOperation_ptr);
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1003431D0;
  *(v13 + 32) = v12;
  v14 = v12;
  v24.value._rawValue = v13;
  v24.is_nil = 0;
  v15.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v24, v25).super.super.super.super.isa;
  sub_1002DE8D4();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  aBlock[4] = sub_100195AC8;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10017CF90;
  aBlock[3] = &unk_1003AC228;
  v17 = _Block_copy(aBlock);

  [(objc_class *)v15.super.super.super.super.isa setModifyRecordZonesCompletionBlock:v17];
  _Block_release(v17);
  if (v8[*(v6 + 36)] == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v18 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v18 = &qword_1003FA9F0;
  }

  v19 = *v18;
  v20 = v18[1];

  sub_100195024(v8, type metadata accessor for BenefactorInfoRecord);
  v21 = sub_1002E2BC4(v19, v20);

  v22 = [v21 privateCloudDatabase];

  [v22 addOperation:v15.super.super.super.super.isa];
}

void *sub_1001928D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_10018EFD0(sub_10019293C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_10019295C()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);

  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100192AE0()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[7], v4);

  sub_100012324(*(v0 + v2 + v1[10]), *(v0 + v2 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100192CC4()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);

  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100192E40()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10019306C()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v11 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v6(v0 + v2 + v1[5], v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v7 = (v0 + v2 + v1[8]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v5 + 48))(v3 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  return _swift_deallocObject(v0, ((((v11 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100193288()
{
  v1 = type metadata accessor for CustodianHealthRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[5], v4);
  v6 = v1[6];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = (v0 + v2 + v1[7]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v0 + v2 + v1[8]), *(v0 + v2 + v1[8] + 8));

  return _swift_deallocObject(v0, ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100193454()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);

  v6(v4 + v1[11], v5);
  sub_100012324(*(v4 + v1[12]), *(v4 + v1[12] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1001935F0()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, ((((v9 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10019380C()
{
  v1 = (type metadata accessor for BeneficiaryManifestRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);

  v6(v4 + v1[8], v5);
  sub_100012324(*(v4 + v1[9]), *(v4 + v1[9] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100193984()
{
  v1 = (type metadata accessor for BenefactorInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);

  v6(v4 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100193B00()
{
  v1 = (type metadata accessor for BenefactorInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);

  v6(v4 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100193C84()
{
  v1 = (type metadata accessor for BenefactorInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);

  v5(v0 + v2 + v1[9], v4);
  sub_100012324(*(v0 + v2 + v1[10]), *(v0 + v2 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100193E68()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100193EA0()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v10 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  v8 = (v10 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1001940C4()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, v2 + v9);
}

uint64_t sub_1001942C8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v5 = *(a2(0) - 8);
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8, v9);
}

uint64_t sub_100194358()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);

  v6(v4 + v1[11], v5);
  sub_100012324(*(v4 + v1[12]), *(v4 + v1[12] + 8));

  return _swift_deallocObject(v0, ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1001944FC()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);

  v5(v0 + v2 + v1[11], v4);
  sub_100012324(*(v0 + v2 + v1[12]), *(v0 + v2 + v1[12] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100194680()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100194758(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1001721D8(a1, v4, v5, v6, v7);
}

uint64_t sub_1001947FC()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  v11 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v12 + 16);
}

uint64_t sub_100194A30()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100194C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100194CAC()
{
  v1 = type metadata accessor for CustodianRecoverySessionRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v11 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v6(v0 + v2 + v1[5], v4);
  v6(v0 + v2 + v1[6], v4);

  v7 = (v0 + v2 + v1[9]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v3 + v1[10]), *(v3 + v1[10] + 8));

  v9 = v1[12];
  if (!(*(v5 + 48))(v3 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  return _swift_deallocObject(v0, ((((v11 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_100194EC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100194F58(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v5);
  v8 = v2 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v2 + v6);
  v11 = *(v2 + v6 + 8);
  v12 = *(v8 + 8);

  return a2(v2 + v4, v7, v9, v12, v10, v11);
}

uint64_t sub_100195024(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100195084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001950CC()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v12 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v6(v0 + v2 + v1[5], v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v7 = (v0 + v2 + v1[8]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v5 + 48))(v3 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  v10 = (v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1001952F0()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v11 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v6(v0 + v2 + v1[5], v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v7 = (v0 + v2 + v1[8]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v5 + 48))(v3 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  return _swift_deallocObject(v0, v2 + v11);
}

uint64_t sub_1001954F4()
{
  v1 = type metadata accessor for CustodianHealthRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[5], v4);
  v6 = v1[6];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = (v0 + v2 + v1[7]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  v10 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v0 + v2 + v1[8]), *(v0 + v2 + v1[8] + 8));

  return _swift_deallocObject(v0, ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1001956C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a4(0) - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v5 + v11);
  v13 = *(v5 + 16);
  v14 = (v5 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];

  return a5(a1, a2, a3, v13, v5 + v10, v12, v15, v16);
}

uint64_t sub_1001957A8()
{
  v1 = type metadata accessor for CustodianHealthRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[5], v4);
  v6 = v1[6];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = (v0 + v2 + v1[7]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v0 + v2 + v1[8]), *(v0 + v2 + v1[8] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100195ACC@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_100005814(&qword_1003E10B8, &qword_100344610);
  __chkstk_darwin(v1 - 8);
  v29 = &v24 - v2;
  v28 = type metadata accessor for TimeZone();
  v3 = *(v28 - 8);
  __chkstk_darwin(v28);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v5 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  __chkstk_darwin(v16);
  (*(v18 + 104))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:));
  v19 = v12;
  v20 = v28;
  (*(v13 + 104))(v15, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v19);
  v21 = v7;
  v22 = v29;
  (*(v9 + 104))(v11, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v8);
  (*(v5 + 104))(v21, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v27);
  TimeZone.init(secondsFromGMT:)();
  result = (*(v3 + 48))(v22, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v25, v22, v20);
    return Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
  }

  return result;
}

uint64_t sub_100195ED0()
{
  type metadata accessor for BeneficiaryAccessKeyRepairHandler(0);
  sub_100005814(&qword_1003E1080, &qword_1003445F0);
  result = String.init<A>(describing:)();
  qword_1003E0E90 = result;
  *algn_1003E0E98 = v1;
  return result;
}

id sub_100195F24()
{
  v1 = OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler____lazy_storage___inheritanceContext;
  v2 = *(v0 + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler____lazy_storage___inheritanceContext);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_10019F7F0(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1001A2024(v4);
  }

  sub_1001A2034(v2);
  return v3;
}

uint64_t sub_100195F94(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v20 = *v4;
  v21 = a3;
  v7 = type metadata accessor for BeneficiaryInfoRecord(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  swift_weakInit();
  sub_1001A3E54(a1, v10, type metadata accessor for BeneficiaryInfoRecord);
  v12 = (*(v8 + 80) + 17) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v19;
  sub_1001A409C(v10, v15 + v12, type metadata accessor for BeneficiaryInfoRecord);
  *(v15 + v13) = v11;
  v16 = (v15 + v14);
  *v16 = v21;
  v16[1] = a4;
  *(v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)) = v20;

  sub_100198D88(a1, sub_1001A1C2C, v15);
}

uint64_t sub_100196180(void *a1, char a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7, uint64_t a8)
{
  v144 = a8;
  v150 = a5;
  v152 = a4;
  v153 = a3;
  v12 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  __chkstk_darwin(v12);
  v14 = (&v127 - v13);
  v143 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v127 - v15;
  v140 = type metadata accessor for Date.ISO8601FormatStyle();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v138 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for Date();
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v137 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v155 = *(v18 - 8);
  __chkstk_darwin(v18);
  v136 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v21 = __chkstk_darwin(v20 - 8);
  v148 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v158 = &v127 - v23;
  v24 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v25 = __chkstk_darwin(v24 - 8);
  v147 = &v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v159 = (&v127 - v27);
  v28 = type metadata accessor for BeneficiaryInfoRecord(0);
  v29 = __chkstk_darwin(*(v28 - 1));
  v30 = __chkstk_darwin(v29);
  v31 = __chkstk_darwin(v30);
  v149 = &v127 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v127 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v127 - v37;
  v39 = __chkstk_darwin(v36);
  v151 = &v127 - v43;
  if (a2)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a6(v14);
    return sub_100008D3C(v14, &unk_1003E10A0, &unk_100344480);
  }

  else
  {
    v129 = v39;
    v130 = v42;
    v131 = v41;
    v132 = v40;
    sub_100135D08(a1, 0);
    sub_1001E960C(a1, &v164);
    v45 = v166;
    v133 = a6;
    if (v153)
    {
      v145 = 1;
      v46 = v152;
    }

    else
    {
      v46 = v152;
      v145 = *(v152 + v28[10]);
    }

    v134 = a7;
    v47 = v164;
    sub_1001A3E54(v46, v38, type metadata accessor for BeneficiaryInfoRecord);
    if (v45)
    {
      v170 = v165;
      v168 = v167;
      v169 = v164;
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      sub_100015D6C(v47, *(&v47 + 1));

      JSONEncoder.init()();
      v160 = v169;
      v161 = v170;
      v162 = v45;
      v163 = v168;
      sub_1001A23F4();
      v48 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v154 = v49;
      v146 = v48;

      sub_100008D3C(&v164, &unk_1003E1660, &qword_100344608);
    }

    else
    {
      v146 = 0;
      v154 = 0xF000000000000000;
    }

    v50 = v157;
    v51 = v158;
    v52 = v147;
    v53 = v155;
    v54 = *(v155 + 56);
    v54(v159, 1, 1, v18);
    (*(v156 + 56))(v51, 1, 1, v50);
    v147 = v28[11];
    v128 = v54;
    v54((v35 + v147), 1, 1, v18);
    v55 = *(v53 + 16);
    v55(v35, v38, v18);
    v56 = v28[6];
    v58 = *&v38[v56];
    v57 = *&v38[v56 + 8];
    v59 = (v35 + v56);
    *v59 = v58;
    *(v59 + 1) = v57;
    v135 = v57;
    v55(v35 + v28[8], &v38[v28[8]], v18);
    v60 = v28[9];
    if (v145 == v38[v28[10]])
    {
      v61 = *&v38[v60];
      v62 = *&v38[v60 + 8];
      v63 = (v35 + v60);
      *v63 = v61;
      v63[1] = v62;
      sub_100015D6C(v61, v62);
    }

    else
    {
      *(v35 + v60) = xmmword_10033F8D0;
    }

    v64 = v154;
    v65 = v28[5];
    v66 = *&v38[v65];
    v67 = *&v38[v65 + 8];
    v68 = (v35 + v65);
    *v68 = v66;
    *(v68 + 1) = v67;
    v69 = v28[7];
    v70 = v155;
    v71 = v146;
    if (v64 >> 60 == 15)
    {
      v72 = *&v38[v69];
      v73 = *&v38[v69 + 8];
      v74 = (v35 + v69);
      *v74 = v72;
      v74[1] = v73;
      sub_100015D6C(v72, v73);
    }

    else
    {
      v75 = (v35 + v69);
      *v75 = v146;
      *(v75 + 1) = v64;
    }

    *(v35 + v28[10]) = v145;
    sub_100012D04(v159, v52, &qword_1003D8B60, &unk_10033F210);
    if ((*(v70 + 48))(v52, 1, v18) == 1)
    {

      sub_100052704(v71, v64);
      sub_100008D3C(v52, &qword_1003D8B60, &unk_10033F210);
      sub_10009585C(&v38[v28[11]], v35 + v147);
    }

    else
    {
      v154 = v64;
      v76 = *(v70 + 32);
      v77 = v52;
      v78 = v136;
      v76(v136, v77, v18);

      sub_100052704(v71, v154);
      v79 = v147;
      sub_100008D3C(v35 + v147, &qword_1003D8B60, &unk_10033F210);
      v76((v35 + v79), v78, v18);
      v128(v35 + v79, 0, 1, v18);
    }

    v80 = v157;
    v81 = (v35 + v28[12]);
    v82 = v158;
    v83 = v148;
    sub_100012D04(v158, v148, &qword_1003DA110, &qword_10033F230);
    v84 = v156;
    if ((*(v156 + 48))(v83, 1, v80) == 1)
    {
      sub_100015D58(v146, v154);
      sub_100008D3C(v82, &qword_1003DA110, &qword_10033F230);
      sub_100008D3C(v159, &qword_1003D8B60, &unk_10033F210);
      sub_100008D3C(v83, &qword_1003DA110, &qword_10033F230);
      v85 = &v38[v28[12]];
      v87 = *v85;
      v86 = v85[1];
    }

    else
    {
      v88 = v137;
      (*(v84 + 32))(v137, v83, v80);
      v89 = v138;
      sub_100195ACC(v138);
      v87 = Date.ISO8601Format(_:)();
      v86 = v90;
      sub_100015D58(v146, v154);
      (*(v139 + 8))(v89, v140);
      (*(v84 + 8))(v88, v80);
      sub_100008D3C(v158, &qword_1003DA110, &qword_10033F230);
      sub_100008D3C(v159, &qword_1003D8B60, &unk_10033F210);
    }

    *v81 = v87;
    v81[1] = v86;
    v91 = v28[14];
    v92 = (v35 + v28[13]);
    v93 = (v35 + v91);
    v94 = &v38[v91];
    v95 = *(v94 + 1);
    *v93 = *v94;
    *(v93 + 1) = v95;
    v96 = &v38[v28[13]];
    v97 = *v96;
    v98 = v96[8];

    sub_1001A3A5C(v38, type metadata accessor for BeneficiaryInfoRecord);
    *v92 = v97;
    v92[8] = v98;
    v99 = v35;
    v100 = v151;
    sub_1001A409C(v99, v151, type metadata accessor for BeneficiaryInfoRecord);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v101 = type metadata accessor for Logger();
    sub_100008D04(v101, qword_1003FAAB8);
    v102 = v149;
    sub_1001A3E54(v100, v149, type metadata accessor for BeneficiaryInfoRecord);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *&v160 = swift_slowAlloc();
      *v105 = 136315394;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v105 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, &v160);
      *(v105 + 12) = 2080;
      v106 = sub_1001E6794();
      v108 = v107;
      sub_1001A3A5C(v102, type metadata accessor for BeneficiaryInfoRecord);
      v109 = sub_10021145C(v106, v108, &v160);

      *(v105 + 14) = v109;
      _os_log_impl(&_mh_execute_header, v103, v104, "%s - created new BeneficiaryInfoRecord with updated accessKey - %s", v105, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001A3A5C(v102, type metadata accessor for BeneficiaryInfoRecord);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v111 = v142;
      v112 = v141;
      v113 = v143;
      (*(v142 + 16))(v141, Strong + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__storageController, v143);
      Dependency.wrappedValue.getter();

      (*(v111 + 8))(v112, v113);
      v159 = sub_1000080F8(&v160, v162);
      v158 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v114 = v131;
      sub_1001A3E54(v100, v131, type metadata accessor for BeneficiaryInfoRecord);
      v115 = v132;
      sub_1001A3E54(v152, v132, type metadata accessor for BeneficiaryInfoRecord);
      v116 = *(v129 + 80);
      v117 = (v116 + 16) & ~v116;
      v118 = (v130 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
      v119 = (v118 + 23) & 0xFFFFFFFFFFFFFFF8;
      v120 = (v116 + v119 + 8) & ~v116;
      v121 = v120 + v130;
      v122 = (v120 + v130) & 0xFFFFFFFFFFFFFFF8;
      v123 = swift_allocObject();
      sub_1001A409C(v114, v123 + v117, type metadata accessor for BeneficiaryInfoRecord);
      v124 = (v123 + v118);
      v125 = v134;
      *v124 = v133;
      v124[1] = v125;
      *(v123 + v119) = v158;
      sub_1001A409C(v115, v123 + v120, type metadata accessor for BeneficiaryInfoRecord);
      *(v123 + v121) = v153 & 1;
      *(v123 + v122 + 8) = v144;

      v126 = v151;
      sub_1002183D4(v151, sub_1001A2324, v123);

      sub_100008D3C(&v164, &unk_1003E1660, &qword_100344608);
      sub_1001A3A5C(v126, type metadata accessor for BeneficiaryInfoRecord);

      return sub_10000839C(&v160);
    }

    else
    {
      sub_100008D3C(&v164, &unk_1003E1660, &qword_100344608);
      return sub_1001A3A5C(v100, type metadata accessor for BeneficiaryInfoRecord);
    }
  }
}

uint64_t sub_1001972B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v52 = a8;
  v51 = a7;
  v55 = a6;
  v56 = a5;
  v57 = a4;
  v11 = type metadata accessor for BeneficiaryInfoRecord(0);
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  v13 = __chkstk_darwin(v11);
  v54 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v53 = &v47 - v14;
  v15 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v16 = __chkstk_darwin(v15);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v20 = (&v47 - v19);
  sub_100012D04(a1, &v47 - v19, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v18 = *v20;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v18);

    v20 = v18;
  }

  else
  {
    v21 = (a2 + *(v11 + 20));
    v22 = v21[1];
    v23 = a2;
    if (v22)
    {
      v48 = *v21;
      v49 = v22;
      v24 = qword_1003D7F48;

      if (v24 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100008D04(v25, qword_1003FAAB8);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v47 = a2;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v58[0] = v29;
        *v28 = 136315138;
        if (qword_1003D7E20 != -1)
        {
          swift_once();
        }

        *(v28 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v58);
        _os_log_impl(&_mh_execute_header, v26, v27, "%s - saved new BeneficiaryInfoRecord.", v28, 0xCu);
        sub_10000839C(v29);

        v23 = v47;
      }

      else
      {
      }

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v58[0] = v33;
        *v32 = 136315138;
        if (qword_1003D7E20 != -1)
        {
          swift_once();
        }

        *(v32 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v58);
        _os_log_impl(&_mh_execute_header, v30, v31, "%s - notifying Beneficiary of Access Key Change...", v32, 0xCu);
        sub_10000839C(v33);
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v47 = Strong;
        sub_1001A3E54(v55, v53, type metadata accessor for BeneficiaryInfoRecord);
        sub_1001A3E54(v23, v54, type metadata accessor for BeneficiaryInfoRecord);
        v35 = *(v50 + 80);
        v36 = (v35 + 33) & ~v35;
        v37 = v12 + 7;
        v38 = (v12 + 7 + v36) & 0xFFFFFFFFFFFFFFF8;
        v39 = (v35 + v38 + 8) & ~v35;
        v40 = v57;
        v41 = (v37 + v39) & 0xFFFFFFFFFFFFFFF8;
        v42 = swift_allocObject();
        *(v42 + 16) = a3;
        *(v42 + 24) = v40;
        v43 = v51 & 1;
        *(v42 + 32) = v51 & 1;
        sub_1001A409C(v53, v42 + v36, type metadata accessor for BeneficiaryInfoRecord);
        *(v42 + v38) = v56;
        sub_1001A409C(v54, v42 + v39, type metadata accessor for BeneficiaryInfoRecord);
        v44 = (v42 + v41);
        v45 = v49;
        *v44 = v48;
        v44[1] = v45;
        *(v42 + ((v41 + 23) & 0xFFFFFFFFFFFFFFF8)) = v52;

        sub_100198AB0(v55, v43, sub_1001A2728, v42);
      }

      else
      {
      }
    }

    else
    {
      sub_1001A3E54(a2, v18, type metadata accessor for BeneficiaryInfoRecord);
      swift_storeEnumTagMultiPayload();
      a3(v18);
      sub_100008D3C(v18, &unk_1003E10A0, &unk_100344480);
    }
  }

  return sub_100008D3C(v20, &unk_1003E10A0, &unk_100344480);
}

void sub_1001978BC(uint64_t a1, void (*a2)(void *), uint64_t a3, int a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v35 = a8;
  v36 = a7;
  v37 = a6;
  v39 = a5;
  LODWORD(v38) = a4;
  v13 = type metadata accessor for BeneficiaryInfoRecord(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  __chkstk_darwin(v16);
  v18 = (&v33 - v17);
  if (a1)
  {
    *v18 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v18);
    sub_100008D3C(v18, &unk_1003E10A0, &unk_100344480);
  }

  else
  {
    v34 = a10;
    v19 = a2;
    v20 = a3;
    v22 = v36;
    v21 = v37;
    if ((v38 & 1) != 0 && (*(&v39->isa + *(v13 + 40)) & 1) == 0)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v38 = Strong;
        sub_1001A3E54(v22, &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeneficiaryInfoRecord);
        v29 = (*(v14 + 80) + 40) & ~*(v14 + 80);
        v30 = (v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
        v31 = swift_allocObject();
        v31[2] = v19;
        v31[3] = v20;
        v31[4] = v21;
        sub_1001A409C(&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v29, type metadata accessor for BeneficiaryInfoRecord);
        v32 = (v31 + v30);
        *v32 = v35;
        v32[1] = a9;
        *(v31 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8)) = v34;

        sub_100198918(v39, sub_1001A2CE4, v31);
      }
    }

    else
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100008D04(v23, qword_1003FAAB8);
      v39 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v40[0] = v26;
        *v25 = 136315138;
        if (qword_1003D7E20 != -1)
        {
          swift_once();
        }

        *(v25 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v40);
        _os_log_impl(&_mh_execute_header, v39, v24, "%s - skipping old beneficiary record cleanup and sharing of new record.", v25, 0xCu);
        sub_10000839C(v26);
      }

      else
      {
        v27 = v39;
      }
    }
  }
}

uint64_t sub_100197CC4(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a2;
  v12 = type metadata accessor for BeneficiaryInfoRecord(0);
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  __chkstk_darwin(v14);
  v16 = (&v27 - v15);
  if (a1)
  {
    *v16 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v29(v16);
    sub_100008D3C(v16, &unk_1003E10A0, &unk_100344480);
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAB8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v27 = a5;
    v20 = a6;
    v21 = a7;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v30[0] = v23;
    *v22 = 136315138;
    if (qword_1003D7E20 != -1)
    {
      swift_once();
    }

    *(v22 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v30);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s - attempting to share new beneficiary manatee record.", v22, 0xCu);
    sub_10000839C(v23);

    a7 = v21;
    a6 = v20;
    a5 = v27;
  }

  else
  {
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001A3E54(a5, &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeneficiaryInfoRecord);
    v25 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v29;
    *(v26 + 24) = a3;
    sub_1001A409C(&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for BeneficiaryInfoRecord);

    sub_100198160(a5, a6, a7, sub_1001A2FDC, v26);
  }

  return result;
}

uint64_t sub_100198054(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v7 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  __chkstk_darwin(v7);
  v9 = (&v11 - v8);
  if (a1)
  {
    *v9 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
  }

  else
  {
    sub_1001A3E54(a4, &v11 - v8, type metadata accessor for BeneficiaryInfoRecord);
    swift_storeEnumTagMultiPayload();
  }

  a2(v9);
  return sub_100008D3C(v9, &unk_1003E10A0, &unk_100344480);
}

void sub_100198160(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v57 = a4;
  v58 = a5;
  v56 = a3;
  v52 = a2;
  v54 = a1;
  v51 = *v5;
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v7 - 8);
  v55 = &v47 - v8;
  v9 = type metadata accessor for BeneficiaryInfoRecord(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v53 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v50 = &v47 - v13;
  v14 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47 - v16;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAB8);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v49 = v10;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v62[0] = v22;
    *v21 = 136315138;
    if (qword_1003D7E20 != -1)
    {
      swift_once();
    }

    *(v21 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v62);
    _os_log_impl(&_mh_execute_header, v19, v20, "%s - sharing BeneficiaryInfoRecord...", v21, 0xCu);
    sub_10000839C(v22);

    v10 = v49;
  }

  else
  {
  }

  (*(v15 + 16))(v17, v6 + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__cloudStorage, v14);
  Dependency.wrappedValue.getter();
  (*(v15 + 8))(v17, v14);
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  if (swift_dynamicCast())
  {
    sub_10003E950(v59, v62);
    v48 = sub_1000080F8(v62, v62[3]);
    v23 = swift_allocObject();
    v49 = v23;
    swift_weakInit();
    v47 = type metadata accessor for BeneficiaryInfoRecord;
    v24 = v54;
    v25 = v50;
    sub_1001A3E54(v54, v50, type metadata accessor for BeneficiaryInfoRecord);
    v26 = *(v10 + 80);
    v27 = (v26 + 24) & ~v26;
    v28 = v11 + 7;
    v29 = (v28 + v27) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    *(v31 + 16) = v23;
    sub_1001A409C(v25, v31 + v27, type metadata accessor for BeneficiaryInfoRecord);
    v32 = (v31 + v29);
    v33 = v56;
    *v32 = v52;
    v32[1] = v33;
    v34 = (v31 + v30);
    v35 = v58;
    *v34 = v57;
    v34[1] = v35;
    *(v31 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8)) = v51;
    v57 = *v48;
    v36 = type metadata accessor for TaskPriority();
    v37 = v55;
    (*(*(v36 - 8) + 56))(v55, 1, 1, v36);
    v38 = v53;
    sub_1001A3E54(v24, v53, v47);
    v39 = (v26 + 40) & ~v26;
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v40[4] = v57;
    sub_1001A409C(v38, v40 + v39, type metadata accessor for BeneficiaryInfoRecord);
    v41 = (v40 + ((v28 + v39) & 0xFFFFFFFFFFFFFFF8));
    *v41 = sub_10019DC74;
    v41[1] = v31;

    sub_1000BCD5C(0, 0, v37, &unk_1003445C0, v40);

    sub_10000839C(v62);
  }

  else
  {
    v60 = 0;
    memset(v59, 0, sizeof(v59));
    sub_100008D3C(v59, &unk_1003DB050, &qword_10033FA60);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v62[0] = v45;
      *v44 = 136315138;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v44 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v62);
      _os_log_impl(&_mh_execute_header, v42, v43, "%s - shareBeneficiaryRecord could not get reference to CloudKitSharing", v44, 0xCu);
      sub_10000839C(v45);
    }

    type metadata accessor for InheritanceError(0);
    v61 = 0;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001A19EC(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v46 = v62[0];
    v57(v62[0]);
  }
}

uint64_t sub_100198918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15[-1] - v10;
  (*(v9 + 16))(&v15[-1] - v10, v3 + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__cloudStorage, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v7;

  sub_10019FAAC(a1, sub_1001A2DD0, v12);

  return sub_10000839C(v15);
}

uint64_t sub_100198AB0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23 = a2;
  v21 = *v4;
  v22 = a3;
  v8 = type metadata accessor for BeneficiaryInfoRecord(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  (*(v12 + 16))(&v21 - v13, v5 + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__storageController, v11);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v14, v11);
  sub_1000080F8(v24, v24[3]);
  v15 = swift_allocObject();
  swift_weakInit();
  sub_1001A3E54(a1, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeneficiaryInfoRecord);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v16 + v10 + 31) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_1001A409C(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for BeneficiaryInfoRecord);
  v19 = v18 + ((v16 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = v22;
  *(v19 + 8) = a4;
  *(v19 + 16) = v23;
  *(v18 + v17) = v15;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;

  sub_10021CBFC(a1, sub_1001A29F0, v18);

  return sub_10000839C(v24);
}

void sub_100198D88(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v74 = a2;
  v75 = a3;
  v73 = *v3;
  v5 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  v71 = *(v5 - 8);
  v72 = v5;
  __chkstk_darwin(v5);
  v70 = &v63 - v6;
  v7 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v7 - 8);
  v77 = &v63 - v8;
  v9 = type metadata accessor for UUID();
  v79 = *(v9 - 8);
  v80 = v9;
  __chkstk_darwin(v9);
  v78 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BeneficiaryInfoRecord(0);
  v67 = *(v11 - 1);
  v12 = __chkstk_darwin(v11);
  v68 = v13;
  v69 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v63 - v14;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAB8);
  sub_1001A3E54(a1, v15, type metadata accessor for BeneficiaryInfoRecord);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  v19 = os_log_type_enabled(v17, v18);
  v76 = v3;
  if (v19)
  {
    v20 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v20 = 136315394;
    if (qword_1003D7E20 != -1)
    {
      swift_once();
    }

    *(v20 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, aBlock);
    *(v20 + 12) = 2080;
    sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    sub_1001A3A5C(v15, type metadata accessor for BeneficiaryInfoRecord);
    v24 = sub_10021145C(v21, v23, aBlock);

    *(v20 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s - generating new accessKey for beneficiaryID - %s.", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001A3A5C(v15, type metadata accessor for BeneficiaryInfoRecord);
  }

  v25 = sub_100195F24();
  if (v25)
  {
    v65 = v25;
    (*(v79 + 16))(v78, a1, v80);
    v26 = *(a1 + v11[5] + 8);
    sub_100012D04(a1 + v11[11], v77, &qword_1003D8B60, &unk_10033F210);
    v27 = *(a1 + v11[12] + 8);
    v28 = (a1 + v11[13]);
    if (*(v28 + 8))
    {
      v29 = 0;
    }

    else
    {
      v29 = *v28;
    }

    v64 = v29;
    v30 = (a1 + v11[14]);
    v31 = v30[1];
    v63 = *v30;
    v32.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v33 = String._bridgeToObjectiveC()();
    if (v26)
    {
      v34 = String._bridgeToObjectiveC()();
    }

    else
    {
      v34 = 0;
    }

    v66 = a1;
    v41 = v79;
    v40 = v80;
    v42 = v77;
    if ((*(v79 + 48))(v77, 1, v80) == 1)
    {
      isa = 0;
      if (v27)
      {
        goto LABEL_22;
      }
    }

    else
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v41 + 8))(v42, v40);
      if (v27)
      {
LABEL_22:
        v44 = String._bridgeToObjectiveC()();
        if (v31)
        {
LABEL_23:
          v45 = String._bridgeToObjectiveC()();
LABEL_27:
          v46 = objc_allocWithZone(AABeneficiaryInfo);
          v77 = [v46 initWithBeneficiaryID:v32.super.isa benefactorAltDSID:v33 handle:v34 otPeerID:isa repairDate:v44 repairCount:v64 recordBuildVersion:v45];

          (*(v41 + 8))(v78, v40);
          v47 = v70;
          v48 = v71;
          v49 = v72;
          (*(v71 + 16))(v70, v76 + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__securityManager, v72);
          Dependency.wrappedValue.getter();
          (*(v48 + 8))(v47, v49);
          v50 = aBlock[0];
          v51 = swift_allocObject();
          swift_weakInit();
          v52 = v69;
          sub_1001A3E54(v66, v69, type metadata accessor for BeneficiaryInfoRecord);
          v53 = (*(v67 + 80) + 32) & ~*(v67 + 80);
          v54 = (v68 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
          v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
          v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
          v57 = swift_allocObject();
          v58 = v75;
          *(v57 + 16) = v74;
          *(v57 + 24) = v58;
          sub_1001A409C(v52, v57 + v53, type metadata accessor for BeneficiaryInfoRecord);
          v59 = v65;
          *(v57 + v54) = v65;
          v60 = v77;
          *(v57 + v55) = v77;
          *(v57 + v56) = v51;
          *(v57 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8)) = v73;
          aBlock[4] = sub_1001A1F04;
          aBlock[5] = v57;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100015858;
          aBlock[3] = &unk_1003AC7E0;
          v61 = _Block_copy(aBlock);
          v39 = v60;

          v62 = v59;

          [v50 createInheritanceAccessKeyForContact:v39 completion:v61];
          _Block_release(v61);

          swift_unknownObjectRelease();
          goto LABEL_28;
        }

LABEL_26:
        v45 = 0;
        goto LABEL_27;
      }
    }

    v44 = 0;
    if (v31)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136315138;
    if (qword_1003D7E20 != -1)
    {
      swift_once();
    }

    *(v37 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, aBlock);
    _os_log_impl(&_mh_execute_header, v35, v36, "%s - inheritanceContext is nil. Cannot proceed with updating accessKey", v37, 0xCu);
    sub_10000839C(v38);
  }

  type metadata accessor for InheritanceError(0);
  aBlock[6] = 10;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1001A19EC(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
  _BridgedStoredNSError.init(_:userInfo:)();
  v39 = aBlock[0];
  v74(aBlock[0], 1);
LABEL_28:
}

void sub_100199768(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v66 = a7;
  v67 = a8;
  v15 = sub_100005814(&qword_1003E1088, &qword_1003445F8);
  v64 = *(v15 - 8);
  __chkstk_darwin(v15);
  v63 = &v59 - v16;
  v17 = type metadata accessor for UUID();
  v65 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100008D04(v32, qword_1003FAAB8);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v35 = 136315394;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v35 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, aBlock);
      *(v35 + 12) = 2080;
      v70 = a2;
      swift_errorRetain();
      sub_100005814(&unk_1003E1090, &qword_100344600);
      v36 = String.init<A>(describing:)();
      v38 = sub_10021145C(v36, v37, aBlock);

      *(v35 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v33, v34, "%s - error generating new access code: %s", v35, 0x16u);
      swift_arrayDestroy();

      v39 = a2;
      if (a2)
      {
        goto LABEL_25;
      }
    }

    else
    {

      v39 = a2;
      if (a2)
      {
LABEL_25:
        swift_errorRetain();
        swift_errorRetain();
        a3(v39, 1);

        return;
      }
    }

    type metadata accessor for InheritanceError(0);
    v70 = 0;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001A19EC(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v39 = aBlock[0];
    goto LABEL_25;
  }

  v61 = a3;
  v62 = a4;
  v59 = v15;
  v60 = a6;
  v23 = qword_1003D7F48;
  v68 = a1;
  if (v23 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100008D04(v24, qword_1003FAAB8);
  sub_1001A3E54(a5, v22, type metadata accessor for BeneficiaryInfoRecord);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v27 = 136315394;
    if (qword_1003D7E20 != -1)
    {
      swift_once();
    }

    *(v27 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, aBlock);
    *(v27 + 12) = 2080;
    sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    sub_1001A3A5C(v22, type metadata accessor for BeneficiaryInfoRecord);
    v31 = sub_10021145C(v28, v30, aBlock);

    *(v27 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s - created new accessKey for beneficiaryID - %s.", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001A3A5C(v22, type metadata accessor for BeneficiaryInfoRecord);
  }

  v40 = v60;
  [v60 setAccessKey:v68];
  v41 = [v66 beneficiaryID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  (*(v65 + 8))(v19, v17);
  v42 = String._bridgeToObjectiveC()();

  [v40 setBeneficiaryIdentifier:v42];

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  v45 = os_log_type_enabled(v43, v44);
  v46 = v61;
  v47 = v59;
  if (v45)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v48 = 136315138;
    if (qword_1003D7E20 != -1)
    {
      swift_once();
    }

    *(v48 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, aBlock);
    _os_log_impl(&_mh_execute_header, v43, v44, "%s - notifying IdMS of the accessKey change...", v48, 0xCu);
    sub_10000839C(v49);
  }

  v50 = v62;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v52 = v63;
    v53 = v64;
    (*(v64 + 16))(v63, Strong + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__requestController, v47);
    Dependency.wrappedValue.getter();

    (*(v53 + 8))(v52, v47);
    v54 = aBlock[0];
    v55 = swift_allocObject();
    v55[2] = v46;
    v55[3] = v50;
    v56 = v68;
    v55[4] = v68;
    v55[5] = a9;
    aBlock[4] = sub_1001A2018;
    aBlock[5] = v55;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E828;
    aBlock[3] = &unk_1003AC830;
    v57 = _Block_copy(aBlock);
    v58 = v56;

    [v54 updateBeneficiaryWithInheritanceContext:v40 completion:v57];
    swift_unknownObjectRelease();

    _Block_release(v57);
  }

  else
  {
  }
}

uint64_t sub_10019A090(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAB8);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v9 = 136315394;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v9 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, &v20);
      *(v9 + 12) = 2080;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v10 = String.init<A>(describing:)();
      v12 = sub_10021145C(v10, v11, &v20);

      *(v9 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s - error updating access code with IdMS: %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    swift_errorRetain();
    a2(a1, 1);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAAB8);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v18 = 136315138;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v18 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, &v20);
      _os_log_impl(&_mh_execute_header, v16, v17, "%s - successfully updated AccessKey with IdMS", v18, 0xCu);
      sub_10000839C(v19);
    }

    return (a2)(a4, 0);
  }
}

void sub_10019A400(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, char a5, uint64_t a6)
{
  v60 = a6;
  v61 = a3;
  v62 = a4;
  v57 = a2;
  v8 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for InheritanceHealthRecord(0);
  __chkstk_darwin(v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  __chkstk_darwin(v17);
  v19 = (&v56 - v18);
  sub_100012D04(a1, &v56 - v18, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    v64[0] = *v19;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for InheritanceError(0);
    if (swift_dynamicCast())
    {
      v21 = v65;
      v64[0] = v65;
      v63 = 3;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001A19EC(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v22 = v65;
      v63 = v65;
      v23 = static _BridgedStoredNSError.== infix(_:_:)();

      if (v23)
      {
        if (qword_1003D7F48 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_100008D04(v24, qword_1003FAAB8);
        sub_1001A3E54(v57, v16, type metadata accessor for BeneficiaryInfoRecord);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v64[0] = swift_slowAlloc();
          *v27 = 136315394;
          if (qword_1003D7E20 != -1)
          {
            swift_once();
          }

          *(v27 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v64);
          *(v27 + 12) = 2080;
          type metadata accessor for UUID();
          sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v28 = dispatch thunk of CustomStringConvertible.description.getter();
          v30 = v29;
          sub_1001A3A5C(v16, type metadata accessor for BeneficiaryInfoRecord);
          v31 = sub_10021145C(v28, v30, v64);

          *(v27 + 14) = v31;
          _os_log_impl(&_mh_execute_header, v25, v26, "%s - there is no InheritanceHealthRecord for beneficiaryID - %s.", v27, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_1001A3A5C(v16, type metadata accessor for BeneficiaryInfoRecord);
        }

        v61(0);

        return;
      }
    }

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100008D04(v49, qword_1003FAAB8);
    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v64[0] = swift_slowAlloc();
      *v52 = 136315394;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v52 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v64);
      *(v52 + 12) = 2080;
      v65 = v20;
      swift_errorRetain();
      v53 = String.init<A>(describing:)();
      v55 = sub_10021145C(v53, v54, v64);

      *(v52 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v50, v51, "%s - error fetching InheritanceHealthRecord. Abandoning migration - %s", v52, 0x16u);
      swift_arrayDestroy();
    }

    swift_errorRetain();
    v61(v20);
  }

  else
  {
    sub_1001A409C(v19, v13, type metadata accessor for InheritanceHealthRecord);
    v32 = *(v11 + 36);
    if (v13[v32])
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_100008D04(v33, qword_1003FAAB8);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v64[0] = v37;
        *v36 = 136315138;
        if (qword_1003D7E20 != -1)
        {
          swift_once();
        }

        *(v36 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v64);
        _os_log_impl(&_mh_execute_header, v34, v35, "%s - inheritanceHealthRecord is already in Manatee.", v36, 0xCu);
        sub_10000839C(v37);
      }

      v61(0);
    }

    else
    {
      v13[v32] = a5 & 1;
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_100008D04(v38, qword_1003FAAB8);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v64[0] = swift_slowAlloc();
        *v41 = 136315394;
        if (qword_1003D7E20 != -1)
        {
          swift_once();
        }

        *(v41 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v64);
        *(v41 + 12) = 2080;
        swift_beginAccess();
        v42 = sub_1001EC510();
        v44 = sub_10021145C(v42, v43, v64);

        *(v41 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v39, v40, "%s - saving updated InheritanceHealthRecord - %s", v41, 0x16u);
        swift_arrayDestroy();
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v47 = v58;
        v46 = v59;
        (*(v58 + 16))(v10, Strong + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__storageController, v59);
        Dependency.wrappedValue.getter();

        (*(v47 + 8))(v10, v46);
        sub_1000080F8(v64, v64[3]);
        swift_beginAccess();
        v48 = swift_allocObject();
        *(v48 + 16) = v61;
        *(v48 + 24) = v62;

        sub_10021DAF0(v13, sub_1001A2AE4, v48);

        sub_10000839C(v64);
      }
    }

    sub_1001A3A5C(v13, type metadata accessor for InheritanceHealthRecord);
  }
}

uint64_t sub_10019AEE8(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  __chkstk_darwin(v4);
  v6 = (&v9 - v5);
  sub_100012D04(a1, &v9 - v5, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v6;
    swift_errorRetain();
    a2(v7);
  }

  else
  {
    a2(0);
    return sub_100008D3C(v6, &unk_1003E10C0, &qword_100346A70);
  }
}

uint64_t sub_10019B000(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a8;
  v34 = a7;
  v32 = a6;
  v30 = a5;
  v31 = a1;
  v10 = type metadata accessor for BeneficiaryInfoRecord(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = sub_100005814(&qword_1003E1060, &qword_1003445D8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v29 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v14 + 16))(v16, result + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__cloudSharingController, v13);
    Dependency.wrappedValue.getter();

    (*(v14 + 8))(v16, v13);
    v29[1] = sub_1000080F8(v35, v35[3]);
    v18 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v19 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1001A3E54(a3, v19, type metadata accessor for BeneficiaryInfoRecord);
    v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v21 = (v20 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v20 + v12 + 31) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = v30;
    v29[0] = a3;
    v25 = swift_allocObject();
    sub_1001A409C(v19, v25 + v20, type metadata accessor for BeneficiaryInfoRecord);
    v26 = v25 + v21;
    v27 = v34;
    *v26 = v32;
    *(v26 + 8) = v27;
    *(v26 + 16) = v31 & 1;
    *(v25 + v22) = v18;
    v28 = (v25 + v23);
    *v28 = a4;
    v28[1] = v24;
    *(v25 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8)) = v33;

    sub_1001F58C8(v29[0], a4, v24, sub_1001A1920, v25);

    return sub_10000839C(v35);
  }

  return result;
}

uint64_t sub_10019B34C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v128 = a6;
  v129 = a8;
  v126 = a7;
  v127 = a5;
  v130 = a3;
  v131 = a4;
  v132 = a2;
  v125 = type metadata accessor for InheritanceAccessKeyMessage(0);
  v9 = __chkstk_darwin(v125);
  v119 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v120 = &v117 - v12;
  v13 = __chkstk_darwin(v11);
  v121 = &v117 - v14;
  __chkstk_darwin(v13);
  v16 = &v117 - v15;
  v17 = sub_100005814(&qword_1003E1068, &unk_1003445E0);
  v123 = *(v17 - 8);
  v124 = v17;
  __chkstk_darwin(v17);
  v122 = &v117 - v18;
  v19 = type metadata accessor for CloudShareInfo(0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v117 - v23;
  v25 = type metadata accessor for BeneficiaryInfoRecord(0);
  v26 = __chkstk_darwin(v25 - 8);
  v28 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v117 - v29;
  v31 = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  __chkstk_darwin(v31);
  v33 = (&v117 - v32);
  sub_100012D04(a1, &v117 - v32, &unk_1003E1070, &unk_100344CE0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v118 = v16;
    sub_1001A409C(v33, v24, type metadata accessor for CloudShareInfo);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v117 = type metadata accessor for Logger();
    sub_100008D04(v117, qword_1003FAAB8);
    v45 = v24;
    sub_1001A3E54(v24, v22, type metadata accessor for CloudShareInfo);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v134[0] = swift_slowAlloc();
      *v48 = 136315394;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v48 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v134);
      *(v48 + 12) = 2080;
      type metadata accessor for URL();
      sub_1001A19EC(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      sub_1001A3A5C(v22, type metadata accessor for CloudShareInfo);
      v52 = sub_10021145C(v49, v51, v134);

      *(v48 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "%s - successfully shared BeneficiaryInfoRecord with URL - %s", v48, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001A3A5C(v22, type metadata accessor for CloudShareInfo);
    }

    v54 = v129;
    v55 = v45;
    if (v127)
    {
      sub_1001A3E54(v132, v28, type metadata accessor for BeneficiaryInfoRecord);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v134[0] = swift_slowAlloc();
        *v58 = 136315394;
        if (qword_1003D7E20 != -1)
        {
          swift_once();
        }

        *(v58 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v134);
        *(v58 + 12) = 2080;
        type metadata accessor for UUID();
        sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        sub_1001A3A5C(v28, type metadata accessor for BeneficiaryInfoRecord);
        v62 = sub_10021145C(v59, v61, v134);

        *(v58 + 14) = v62;
        _os_log_impl(&_mh_execute_header, v56, v57, "%s - we removed the previous share, will send as new share for beneficiaryID - %s", v58, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1001A3A5C(v28, type metadata accessor for BeneficiaryInfoRecord);
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      v85 = v121;
      if (Strong)
      {
        v86 = v122;
        v87 = v123;
        v88 = v124;
        (*(v123 + 16))(v122, Strong + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__setupMessenger, v124);
        Dependency.wrappedValue.getter();

        (*(v87 + 8))(v86, v88);
        v89 = *sub_1000080F8(v134, v135);
        v90 = v125;
        v91 = *(v125 + 20);
        v92 = type metadata accessor for UUID();
        v93 = &v118[v91];
        v94 = v118;
        (*(*(v92 - 8) + 16))(v93, v132, v92);
        sub_1001A3E54(v55, &v94[*(v90 + 24)], type metadata accessor for CloudShareInfo);
        *v94 = 1;
        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        sub_100008D04(v117, qword_1003FAAA0);
        sub_1001A3E54(v94, v85, type metadata accessor for InheritanceAccessKeyMessage);
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v133 = v98;
          *v97 = 136315138;
          v99 = sub_1001D9780();
          v101 = v100;
          sub_1001A3A5C(v85, type metadata accessor for InheritanceAccessKeyMessage);
          v102 = sub_10021145C(v99, v101, &v133);

          *(v97 + 4) = v102;
          _os_log_impl(&_mh_execute_header, v95, v96, "Created share accessKey message - %s.\nSending....", v97, 0xCu);
          sub_10000839C(v98);
        }

        else
        {

          sub_1001A3A5C(v85, type metadata accessor for InheritanceAccessKeyMessage);
        }

        v108 = sub_1000080F8((v89 + 16), *(v89 + 40));
        if (_swiftEmptyArrayStorage >> 62)
        {
          v115 = v108;
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_10013446C(_swiftEmptyArrayStorage);
            v109 = v116;
          }

          else
          {
            v109 = &_swiftEmptySetSingleton;
          }

          v108 = v115;
        }

        else
        {
          v109 = &_swiftEmptySetSingleton;
        }

        v110 = *v108;
        v111 = v131;

        v112 = v118;
        sub_1002B43F0(v118, v126, v54, 0, 0, v109, v110, v130, v111);

        v107 = v112;
LABEL_42:
        sub_1001A3A5C(v107, type metadata accessor for InheritanceAccessKeyMessage);
        sub_1001A3A5C(v55, type metadata accessor for CloudShareInfo);
        return sub_10000839C(v134);
      }
    }

    else
    {
      swift_beginAccess();
      v63 = swift_weakLoadStrong();
      if (v63)
      {
        v64 = v122;
        v65 = v123;
        v66 = v124;
        (*(v123 + 16))(v122, v63 + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__setupMessenger, v124);
        Dependency.wrappedValue.getter();

        (*(v65 + 8))(v64, v66);
        v67 = *sub_1000080F8(v134, v135);
        v68 = v125;
        v69 = *(v125 + 20);
        v70 = type metadata accessor for UUID();
        v71 = v120;
        (*(*(v70 - 8) + 16))(&v120[v69], v132, v70);
        sub_1001A3E54(v55, &v71[*(v68 + 24)], type metadata accessor for CloudShareInfo);
        *v71 = 2;
        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        sub_100008D04(v117, qword_1003FAAA0);
        v72 = v119;
        sub_1001A3E54(v71, v119, type metadata accessor for InheritanceAccessKeyMessage);
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = v72;
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v133 = v77;
          *v76 = 136315138;
          v78 = v55;
          v79 = sub_1001D9780();
          v81 = v80;
          sub_1001A3A5C(v75, type metadata accessor for InheritanceAccessKeyMessage);
          v82 = v79;
          v55 = v78;
          v83 = sub_10021145C(v82, v81, &v133);

          *(v76 + 4) = v83;
          _os_log_impl(&_mh_execute_header, v73, v74, "Created accessKey Changed message - %s.\nSending....", v76, 0xCu);
          sub_10000839C(v77);
          v54 = v129;
        }

        else
        {

          sub_1001A3A5C(v72, type metadata accessor for InheritanceAccessKeyMessage);
        }

        v103 = sub_1000080F8((v67 + 16), *(v67 + 40));
        if (_swiftEmptyArrayStorage >> 62)
        {
          v113 = v103;
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_10013446C(_swiftEmptyArrayStorage);
            v104 = v114;
          }

          else
          {
            v104 = &_swiftEmptySetSingleton;
          }

          v103 = v113;
        }

        else
        {
          v104 = &_swiftEmptySetSingleton;
        }

        v105 = *v103;
        v106 = v131;

        sub_1002B4454(v71, v126, v54, 0, 0, v104, v105, v130, v106);

        v107 = v71;
        goto LABEL_42;
      }
    }

    return sub_1001A3A5C(v45, type metadata accessor for CloudShareInfo);
  }

  v34 = *v33;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100008D04(v35, qword_1003FAAB8);
  sub_1001A3E54(v132, v30, type metadata accessor for BeneficiaryInfoRecord);
  swift_errorRetain();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v134[0] = swift_slowAlloc();
    *v38 = 136315650;
    if (qword_1003D7E20 != -1)
    {
      swift_once();
    }

    *(v38 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v134);
    *(v38 + 12) = 2080;
    type metadata accessor for UUID();
    sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    sub_1001A3A5C(v30, type metadata accessor for BeneficiaryInfoRecord);
    v43 = sub_10021145C(v40, v42, v134);

    *(v38 + 14) = v43;
    *(v38 + 22) = 2112;
    v44 = _convertErrorToNSError(_:)();
    *(v38 + 24) = v44;
    *v39 = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "%s - failed to share BeneficiaryInfoRecord for beneficiaryID %s with error: %@", v38, 0x20u);
    sub_100008D3C(v39, &unk_1003D9140, &qword_10033E640);

    swift_arrayDestroy();
  }

  else
  {

    sub_1001A3A5C(v30, type metadata accessor for BeneficiaryInfoRecord);
  }

  swift_errorRetain();
  v130(v34);
}

uint64_t sub_10019C41C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v4);
  v6 = (&v21 - v5);
  sub_100012D04(a1, &v21 - v5, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v6;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAB8);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v11 = 136315394;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v11 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, &v22);
      *(v11 + 12) = 2112;
      v14 = _convertErrorToNSError(_:)();
      *(v11 + 14) = v14;
      *v12 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s - failed to delete beneficiary record from cloud store: %@", v11, 0x16u);
      sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v13);
    }

    swift_errorRetain();
    a2(v7);
  }

  else
  {
    sub_100008D3C(v6, &unk_1003D9220, &unk_10033E8C0);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAB8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v19 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, &v22);
      _os_log_impl(&_mh_execute_header, v17, v18, "%s - cloud store beneficiary record deleted successfully.", v19, 0xCu);
      sub_10000839C(v20);
    }

    return (a2)(0);
  }
}

uint64_t sub_10019C800()
{
  v1 = OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__storageController;
  v4 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__requestController;
  v6 = sub_100005814(&qword_1003E1088, &qword_1003445F8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__securityManager;
  v8 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__cloudSharingController;
  v10 = sub_100005814(&qword_1003E1060, &qword_1003445D8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__setupMessenger;
  v12 = sub_100005814(&qword_1003E1068, &unk_1003445E0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__cloudStorage;
  v14 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  sub_1001A2024(*(v0 + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler____lazy_storage___inheritanceContext));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BeneficiaryAccessKeyRepairHandler(uint64_t a1)
{
  result = qword_1003E0F08;
  if (!qword_1003E0F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10019CAD4(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &qword_1003E1160, &unk_1003E01A0, &qword_1003443F0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003E2BE0, &qword_1003E0F80, &unk_100344570);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, &unk_1003E1170, &unk_1003E0210, &qword_100343D90);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, &qword_1003E0F88, &qword_1003E0F90, &unk_100343CF0);
          if (v5 <= 0x3F)
          {
            sub_10000DAB8(319, qword_1003E0F98, &unk_1003E0220, &unk_100344580);
            if (v6 <= 0x3F)
            {
              sub_10000DAB8(319, &unk_1003DB230, &unk_1003D9830, &qword_10033E970);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10019CD78(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v8 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v8);
  v10 = (&v19 - v9);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAA58);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error saving record to CloudKit: %@", v14, 0xCu);
      sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);
    }

    *v10 = a2;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v10);
  }

  else
  {
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 16))(v10, a5, v17);
    swift_storeEnumTagMultiPayload();
    a3(v10);
  }

  return sub_100008D3C(v10, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_10019CFF0(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v8 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v8);
  v10 = (&v20 - v9);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAA58);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error saving record to CloudKit: %@", v14, 0xCu);
      sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);
    }

    *v10 = a2;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v10);
  }

  else
  {
    v17 = *(type metadata accessor for BeneficiaryInfoRecord(0) + 32);
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 16))(v10, a5 + v17, v18);
    swift_storeEnumTagMultiPayload();
    a3(v10);
  }

  return sub_100008D3C(v10, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_10019D274(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v8 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v8);
  v10 = (&v20 - v9);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAA58);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error saving record to CloudKit: %@", v14, 0xCu);
      sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);
    }

    *v10 = a2;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v10);
  }

  else
  {
    v17 = *(type metadata accessor for InheritanceInvitationRecord(0) + 36);
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 16))(v10, a5 + v17, v18);
    swift_storeEnumTagMultiPayload();
    a3(v10);
  }

  return sub_100008D3C(v10, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_10019D4F8(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v10 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v10);
  v12 = (&v22 - v11);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA58);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error saving record to CloudKit: %@", v16, 0xCu);
      sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);
    }

    *v12 = a2;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v12);
  }

  else
  {
    v19 = *(a6(0) + 28);
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 16))(v12, a5 + v19, v20);
    swift_storeEnumTagMultiPayload();
    a3(v12);
  }

  return sub_100008D3C(v12, &unk_1003D9220, &unk_10033E8C0);
}

uint64_t sub_10019D784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_10019D830;

  return sub_1001A077C(a5);
}

uint64_t sub_10019D830(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_10019D9C4;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = sub_10019D95C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10019D95C()
{
  (*(v0 + 16))(*(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019D9C4()
{
  (*(v0 + 16))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10019DA38()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10019DA70()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, ((((((v9 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10019DC74(int a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + v5);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_10019B000(a1, v7, v1 + v4, v9, v10, v11, v12, v13);
}

uint64_t sub_10019DD34()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, ((v9 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_10019DF24(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000082A8;

  return sub_10019D784(a1, v7, v8, v1 + 32, v1 + v6, v10, v11);
}

void sub_10019E068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v5 + 40)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9C0;
  }

  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1002E2BC4(v9, v10);

  v12 = [v11 privateCloudDatabase];

  v13 = objc_autoreleasePoolPush();
  v14 = sub_1002E1D08(*(a1 + *(v5 + 36)), *(a1 + *(v5 + 36) + 8));
  if (!v14)
  {
    v14 = sub_10017DBB8();
  }

  aBlock[0] = v14;
  v15 = v14;
  sub_1000F3E8C(aBlock);
  objc_autoreleasePoolPop(v13);
  v16 = [v15 recordID];

  sub_1001A3E54(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecoveryInfoRecord);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v18[2] = v21;
  v18[3] = a3;
  sub_1001A409C(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CustodianRecoveryInfoRecord);
  aBlock[4] = sub_1001A3C8C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003ACB50;
  v19 = _Block_copy(aBlock);

  [v12 deleteRecordWithID:v16 completionHandler:v19];
  _Block_release(v19);
}

void sub_10019E39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for CustodianHealthRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v5 + 36)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9C0;
  }

  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1002E2BC4(v9, v10);

  v12 = [v11 privateCloudDatabase];

  v13 = objc_autoreleasePoolPush();
  v14 = sub_1002E1D08(*(a1 + *(v5 + 32)), *(a1 + *(v5 + 32) + 8));
  if (!v14)
  {
    v14 = sub_10017D624();
  }

  aBlock[0] = v14;
  v15 = v14;
  sub_1000ECC30(aBlock);
  objc_autoreleasePoolPop(v13);
  v16 = [v15 recordID];

  sub_1001A3E54(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianHealthRecord);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v18[2] = v21;
  v18[3] = a3;
  sub_1001A409C(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CustodianHealthRecord);
  aBlock[4] = sub_1001A3E24;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003ACBA0;
  v19 = _Block_copy(aBlock);

  [v12 deleteRecordWithID:v16 completionHandler:v19];
  _Block_release(v19);
}

uint64_t sub_10019E6D0(uint64_t a1)
{
  v1[19] = a1;
  v3 = type metadata accessor for UUID();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[28] = v4;
  *v4 = v1;
  v4[1] = sub_10019E818;

  return sub_1001326E8(a1);
}

uint64_t sub_10019E818(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return _swift_task_switch(sub_10019E998, 0, 0);
  }
}

uint64_t sub_10019E998()
{
  v52 = v0;
  v1 = v0[29];
  if (v1)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v2 = v0[27];
    v3 = v0[19];
    v4 = type metadata accessor for Logger();
    v0[30] = sub_100008D04(v4, qword_1003FAA58);
    sub_1001A3E54(v3, v2, type metadata accessor for CustodianRecoveryInfoRecord);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[27];
    v10 = &unk_1003D3000;
    if (v8)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v51 = v13;
      *v11 = 138412546;
      v14 = [v5 recordID];
      *(v11 + 4) = v14;
      *v12 = v14;
      *(v11 + 12) = 2080;
      v15 = UUID.uuidString.getter();
      v17 = v16;
      sub_1001A3A5C(v9, type metadata accessor for CustodianRecoveryInfoRecord);
      v18 = sub_10021145C(v15, v17, &v51);
      v10 = &unk_1003D3000;

      *(v11 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v6, v7, "Existing CKShare found, now deleting the existing CKShare, recordID: %@, zoneName: %s", v11, 0x16u);
      sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v13);
    }

    else
    {

      sub_1001A3A5C(v9, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (*(v0[19] + *(v0[23] + 40)) == 1)
    {
      if (qword_1003D7EC0 != -1)
      {
        swift_once();
      }

      v40 = &qword_1003FA9D0;
    }

    else
    {
      if (qword_1003D7EB8 != -1)
      {
        swift_once();
      }

      v40 = &qword_1003FA9C0;
    }

    v41 = *v40;
    v42 = v40[1];

    v43 = sub_1002E2BC4(v41, v42);

    v44 = [v43 privateCloudDatabase];
    v0[31] = v44;

    v45 = [v5 v10[395]];
    v0[32] = v45;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_10019F114;
    v46 = swift_continuation_init();
    v0[17] = sub_100005814(&qword_1003E1058, &qword_1003445D0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10000B070;
    v0[13] = &unk_1003ACB00;
    v0[14] = v46;
    [v44 deleteRecordWithID:v45 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v19 = v0[25];
    v20 = v0[26];
    v21 = v0[19];
    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA58);
    sub_1001A3E54(v21, v20, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_1001A3E54(v21, v19, type metadata accessor for CustodianRecoveryInfoRecord);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[25];
    v27 = v0[26];
    if (v25)
    {
      v50 = v24;
      v29 = v0[21];
      v28 = v0[22];
      v30 = v0[20];
      v31 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v31 = 136315394;
      (*(v29 + 16))(v28, v27, v30);
      sub_1001A3A5C(v27, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v29 + 8))(v28, v30);
      v35 = sub_10021145C(v32, v34, &v51);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v36 = UUID.uuidString.getter();
      v38 = v37;
      sub_1001A3A5C(v26, type metadata accessor for CustodianRecoveryInfoRecord);
      v39 = sub_10021145C(v36, v38, &v51);

      *(v31 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v23, v50, "Did not find a CKShareRecord %s for zone %s when attempt to remove existing share", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1001A3A5C(v0[26], type metadata accessor for CustodianRecoveryInfoRecord);

      sub_1001A3A5C(v26, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    v47 = v0[1];
    v48 = v0[29] != 0;

    return v47(v48);
  }
}

uint64_t sub_10019F114()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_1001A41C4;
  }

  else
  {
    v2 = sub_10019F224;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019F224()
{
  v24 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 192);
  v4 = *(v0 + 152);

  sub_1001A3E54(v4, v3, type metadata accessor for CustodianRecoveryInfoRecord);
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 232);
  v10 = *(v0 + 192);
  if (v8)
  {
    v22 = *(v0 + 248);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 138412546;
    v14 = [v9 recordID];
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2080;
    v15 = UUID.uuidString.getter();
    v17 = v16;
    sub_1001A3A5C(v10, type metadata accessor for CustodianRecoveryInfoRecord);
    v18 = sub_10021145C(v15, v17, &v23);

    *(v11 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Removed existing CKShareRecord %@ for zone %s when attempt to remove existing share", v11, 0x16u);
    sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v13);
  }

  else
  {

    sub_1001A3A5C(v10, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v19 = *(v0 + 8);
  v20 = *(v0 + 232) != 0;

  return v19(v20);
}

void sub_10019F4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for CustodianRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v5 + 48)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9C0;
  }

  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1002E2BC4(v9, v10);

  v12 = [v11 privateCloudDatabase];

  v13 = objc_autoreleasePoolPush();
  v14 = sub_1002E1D08(*(a1 + *(v5 + 44)), *(a1 + *(v5 + 44) + 8));
  if (!v14)
  {
    v14 = sub_10017D094();
  }

  aBlock[0] = v14;
  v15 = v14;
  sub_1000F0774(aBlock);
  objc_autoreleasePoolPop(v13);
  v16 = [v15 recordID];

  sub_1001A3E54(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianRecord);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v18[2] = v21;
  v18[3] = a3;
  sub_1001A409C(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CustodianRecord);
  aBlock[4] = sub_1001A4104;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003ACBF0;
  v19 = _Block_copy(aBlock);

  [v12 deleteRecordWithID:v16 completionHandler:v19];
  _Block_release(v19);
}

id sub_10019F7F0(uint64_t a1)
{
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-1] - v4;
  (*(v3 + 16))(&v17[-1] - v4, a1 + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler__accountStore, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  v6 = [*(*sub_1000080F8(v17 v17[3]) + 16)];
  if (v6 && (v7 = v6, v8 = [v6 aa_altDSID], v7, v8))
  {
    sub_10000839C(v17);
    v9 = [objc_allocWithZone(AKInheritanceContext) initWithOwnerAltDSID:v8];

    return v9;
  }

  else
  {
    sub_10000839C(v17);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAB8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17[0] = v15;
      *v14 = 136315138;
      if (qword_1003D7E20 != -1)
      {
        swift_once();
      }

      *(v14 + 4) = sub_10021145C(qword_1003E0E90, *algn_1003E0E98, v17);
      _os_log_impl(&_mh_execute_header, v12, v13, "%s - error creating inheritance context. No altDSID for owner found.", v14, 0xCu);
      sub_10000839C(v15);
    }

    return 0;
  }
}

void sub_10019FAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for BeneficiaryInfoRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v5 + 40)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9F0;
  }

  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1002E2BC4(v9, v10);

  v12 = [v11 privateCloudDatabase];

  v13 = objc_autoreleasePoolPush();
  v14 = sub_1002E1D08(*(a1 + *(v5 + 36)), *(a1 + *(v5 + 36) + 8));
  if (!v14)
  {
    v14 = sub_10017D448(a1);
  }

  aBlock[0] = v14;
  v15 = v14;
  sub_1001E5D58(aBlock);
  objc_autoreleasePoolPop(v13);
  v16 = [v15 recordID];

  sub_1001A3E54(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeneficiaryInfoRecord);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v18[2] = v21;
  v18[3] = a3;
  sub_1001A409C(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for BeneficiaryInfoRecord);
  aBlock[4] = sub_1001A2DE0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003AC970;
  v19 = _Block_copy(aBlock);

  [v12 deleteRecordWithID:v16 completionHandler:v19];
  _Block_release(v19);
}

void sub_10019FDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for BenefactorInfoRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v5 + 36)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9F0;
  }

  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1002E2BC4(v9, v10);

  v12 = [v11 privateCloudDatabase];

  v13 = objc_autoreleasePoolPush();
  v14 = sub_1002E1D08(*(a1 + *(v5 + 32)), *(a1 + *(v5 + 32) + 8));
  if (!v14)
  {
    v14 = sub_10017D26C(a1);
  }

  aBlock[0] = v14;
  v15 = v14;
  sub_1001E2B8C(aBlock);
  objc_autoreleasePoolPop(v13);
  v16 = [v15 recordID];

  sub_1001A3E54(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BenefactorInfoRecord);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v18[2] = v21;
  v18[3] = a3;
  sub_1001A409C(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for BenefactorInfoRecord);
  aBlock[4] = sub_1001A3318;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003ACA38;
  v19 = _Block_copy(aBlock);

  [v12 deleteRecordWithID:v16 completionHandler:v19];
  _Block_release(v19);
}

void sub_1001A0114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for InheritanceInvitationRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v5 + 44)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9F0;
  }

  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1002E2BC4(v9, v10);

  v12 = [v11 privateCloudDatabase];

  v13 = objc_autoreleasePoolPush();
  v14 = sub_1002E1D08(*(a1 + *(v5 + 40)), *(a1 + *(v5 + 40) + 8));
  if (!v14)
  {
    v14 = sub_10017DD94();
  }

  aBlock[0] = v14;
  v15 = v14;
  sub_1001EE71C(aBlock);
  objc_autoreleasePoolPop(v13);
  v16 = [v15 recordID];

  sub_1001A3E54(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceInvitationRecord);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v18[2] = v21;
  v18[3] = a3;
  sub_1001A409C(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for InheritanceInvitationRecord);
  aBlock[4] = sub_1001A3518;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003ACA88;
  v19 = _Block_copy(aBlock);

  [v12 deleteRecordWithID:v16 completionHandler:v19];
  _Block_release(v19);
}

void sub_1001A0448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for InheritanceHealthRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v5 + 36)) == 1)
  {
    if (qword_1003D7ED8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FAA00;
  }

  else
  {
    if (qword_1003D7ED0 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9F0;
  }

  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1002E2BC4(v9, v10);

  v12 = [v11 privateCloudDatabase];

  v13 = objc_autoreleasePoolPush();
  v14 = sub_1002E1D08(*(a1 + *(v5 + 32)), *(a1 + *(v5 + 32) + 8));
  if (!v14)
  {
    v14 = sub_10017D9DC(a1);
  }

  aBlock[0] = v14;
  v15 = v14;
  sub_1001EAE54(aBlock);
  objc_autoreleasePoolPop(v13);
  v16 = [v15 recordID];

  sub_1001A3E54(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceHealthRecord);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v18[2] = v21;
  v18[3] = a3;
  sub_1001A409C(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for InheritanceHealthRecord);
  aBlock[4] = sub_1001A31BC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003AC9E8;
  v19 = _Block_copy(aBlock);

  [v12 deleteRecordWithID:v16 completionHandler:v19];
  _Block_release(v19);
}

uint64_t sub_1001A077C(uint64_t a1)
{
  v1[19] = a1;
  v3 = type metadata accessor for UUID();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = type metadata accessor for BeneficiaryInfoRecord(0);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[28] = v4;
  *v4 = v1;
  v4[1] = sub_1001A08C4;

  return sub_1001376F4(a1);
}

uint64_t sub_1001A08C4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return _swift_task_switch(sub_1001A0A44, 0, 0);
  }
}

uint64_t sub_1001A0A44()
{
  v54 = v0;
  v1 = v0[29];
  if (v1)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v2 = v0[27];
    v3 = v0[19];
    v4 = type metadata accessor for Logger();
    v0[30] = sub_100008D04(v4, qword_1003FAA58);
    sub_1001A3E54(v3, v2, type metadata accessor for BeneficiaryInfoRecord);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[27];
    v10 = &unk_1003D3000;
    if (v8)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v53 = v13;
      *v11 = 138412546;
      v14 = [v5 recordID];
      *(v11 + 4) = v14;
      *v12 = v14;
      *(v11 + 12) = 2080;
      v15 = UUID.uuidString.getter();
      v17 = v16;
      sub_1001A3A5C(v9, type metadata accessor for BeneficiaryInfoRecord);
      v18 = v15;
      v10 = &unk_1003D3000;
      v19 = sub_10021145C(v18, v17, &v53);

      *(v11 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v6, v7, "Existing CKShare found, now deleting the existing CKShare, recordID: %@, zoneName: %s", v11, 0x16u);
      sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v13);
    }

    else
    {

      sub_1001A3A5C(v9, type metadata accessor for BeneficiaryInfoRecord);
    }

    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    if (*(v0[19] + *(v0[23] + 40)) == 1)
    {
      if (qword_1003D7ED8 != -1)
      {
        swift_once();
      }

      v42 = &qword_1003FAA00;
    }

    else
    {
      if (qword_1003D7ED0 != -1)
      {
        swift_once();
      }

      v42 = &qword_1003FA9F0;
    }

    v43 = *v42;
    v44 = v42[1];

    v45 = sub_1002E2BC4(v43, v44);

    v46 = [v45 privateCloudDatabase];
    v0[31] = v46;

    v47 = [v5 v10[395]];
    v0[32] = v47;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1001A11A8;
    v48 = swift_continuation_init();
    v0[17] = sub_100005814(&qword_1003E1058, &qword_1003445D0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10000B070;
    v0[13] = &unk_1003AC740;
    v0[14] = v48;
    [v46 deleteRecordWithID:v47 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v20 = v0[25];
    v21 = v0[26];
    v22 = v0[19];
    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA58);
    sub_1001A3E54(v22, v21, type metadata accessor for BeneficiaryInfoRecord);
    sub_1001A3E54(v22, v20, type metadata accessor for BeneficiaryInfoRecord);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[25];
    v28 = v0[26];
    if (v26)
    {
      v52 = v25;
      v29 = v0[22];
      v30 = v0[23];
      v32 = v0[20];
      v31 = v0[21];
      v33 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v33 = 136315394;
      (*(v31 + 16))(v29, v28 + *(v30 + 32), v32);
      sub_1001A3A5C(v28, type metadata accessor for BeneficiaryInfoRecord);
      sub_1001A19EC(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v31 + 8))(v29, v32);
      v37 = sub_10021145C(v34, v36, &v53);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = UUID.uuidString.getter();
      v40 = v39;
      sub_1001A3A5C(v27, type metadata accessor for BeneficiaryInfoRecord);
      v41 = sub_10021145C(v38, v40, &v53);

      *(v33 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v24, v52, "Did not find a CKShareRecord %s for zone %s when attempt to remove existing share", v33, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1001A3A5C(v0[26], type metadata accessor for BeneficiaryInfoRecord);

      sub_1001A3A5C(v27, type metadata accessor for BeneficiaryInfoRecord);
    }

    v49 = v0[1];
    v50 = v0[29] != 0;

    return v49(v50);
  }
}

uint64_t sub_1001A11A8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_1001A1544;
  }

  else
  {
    v2 = sub_1001A12B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A12B8()
{
  v24 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 192);
  v4 = *(v0 + 152);

  sub_1001A3E54(v4, v3, type metadata accessor for BeneficiaryInfoRecord);
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 232);
  v10 = *(v0 + 192);
  if (v8)
  {
    v22 = *(v0 + 248);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 138412546;
    v14 = [v9 recordID];
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2080;
    v15 = UUID.uuidString.getter();
    v17 = v16;
    sub_1001A3A5C(v10, type metadata accessor for BeneficiaryInfoRecord);
    v18 = sub_10021145C(v15, v17, &v23);

    *(v11 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Removed existing CKShareRecord %@ for zone %s when attempt to remove existing share", v11, 0x16u);
    sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v13);
  }

  else
  {

    sub_1001A3A5C(v10, type metadata accessor for BeneficiaryInfoRecord);
  }

  v19 = *(v0 + 8);
  v20 = *(v0 + 232) != 0;

  return v19(v20);
}

uint64_t sub_1001A1544(uint64_t a1)
{
  v2 = v1[32];
  swift_willThrow();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error deleting zone share from CloudKit: %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);
  }

  v8 = v1[31];
  v9 = v1[29];

  swift_willThrow();

  v10 = v1[1];

  return v10(0);
}

uint64_t sub_1001A1714()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, ((((((v2 + v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1001A1920(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  return sub_10019B34C(a1, v1 + v4, *(v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1001A19EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001A1A34()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 17) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, ((((((v9 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1001A1C2C(void *a1, char a2)
{
  v5 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + v8 + 8);
  v13 = *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_100196180(a1, a2 & 1, v9, v2 + v6, v10, v11, v12, v13);
}

uint64_t sub_1001A1CF8()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v11 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  v8 = (v11 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1001A1F04(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100199768(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1001A1FD8()
{

  return _swift_deallocObject(v0, 48);
}

void sub_1001A2024(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1001A2034(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1001A2044()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 1) + 64);
  v14 = (v2 + ((((v13 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;
  v4 = v0 + v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v4, v5);

  sub_100012324(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v7(v4 + v1[8], v5);
  sub_100012324(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v8 = v1[11];
  v9 = *(v6 + 48);
  if (!v9(v4 + v8, 1, v5))
  {
    v7(v4 + v8, v5);
  }

  v10 = v0 + v14;
  v7(v0 + v14, v5);

  sub_100012324(*(v10 + v1[7]), *(v10 + v1[7] + 8));
  v7(v0 + v14 + v1[8], v5);
  sub_100012324(*(v10 + v1[9]), *(v10 + v1[9] + 8));
  v11 = v1[11];
  if (!v9(v0 + v14 + v11, 1, v5))
  {
    v7(v10 + v11, v5);
  }

  return _swift_deallocObject(v0, ((v14 + v13) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1001A2324(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = v9 + v6;
  v11 = v1 + v7;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v1 + v8);
  v15 = *(v1 + v10);
  v16 = *(v1 + (v10 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_1001972B8(a1, v1 + v5, v12, v13, v14, v1 + v9, v15, v16);
}

unint64_t sub_1001A23F4()
{
  result = qword_1003E10B0;
  if (!qword_1003E10B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E10B0);
  }

  return result;
}

uint64_t sub_1001A2448()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 33) & ~v2;
  v13 = *(*(v1 - 1) + 64) + 7;
  v14 = (v2 + ((v13 + v3) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;

  v4 = v0 + v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v4, v5);

  sub_100012324(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v7(v4 + v1[8], v5);
  sub_100012324(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v8 = v1[11];
  v9 = *(v6 + 48);
  if (!v9(v4 + v8, 1, v5))
  {
    v7(v4 + v8, v5);
  }

  v10 = v0 + v14;
  v7(v0 + v14, v5);

  sub_100012324(*(v10 + v1[7]), *(v10 + v1[7] + 8));
  v7(v0 + v14 + v1[8], v5);
  sub_100012324(*(v10 + v1[9]), *(v10 + v1[9] + 8));
  v11 = v1[11];
  if (!v9(v0 + v14 + v11, 1, v5))
  {
    v7(v10 + v11, v5);
  }

  return _swift_deallocObject(v0, ((((v13 + v14) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1001A2728(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 33) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + v7 + 8) & ~v4;
  sub_1001978BC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), (v1 + v5), *(v1 + v7), v1 + v8, *(v1 + ((v6 + v8) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + v8) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + v8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1001A27F8()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, ((((v2 + v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1001A29F0(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v1 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8));

  sub_10019A400(a1, v1 + v4, v7, v8, v9, v10);
}

uint64_t sub_1001A2AAC()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001A2AEC()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, ((((v9 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1001A2CE4(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_100197CC4(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_1001A2D98()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001A2E0C()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, v2 + v9);
}

uint64_t sub_1001A2FDC(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100198054(a1, v4, v5, v6);
}

uint64_t sub_1001A3050()
{
  v1 = (type metadata accessor for InheritanceHealthRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2, v5);
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  sub_100012324(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  v6(v0 + v2 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001A31E8()
{
  v1 = (type metadata accessor for BenefactorInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);

  v5(v0 + v2 + v1[9], v4);
  sub_100012324(*(v0 + v2 + v1[10]), *(v0 + v2 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001A33C8()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);

  v5(v0 + v2 + v1[11], v4);
  sub_100012324(*(v0 + v2 + v1[12]), *(v0 + v2 + v1[12] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001A3544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a4(a1, a2, v8, v9, v10);
}

void sub_1001A35E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for CustodianshipInfoRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v5 + 36)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1003FA9C0;
  }

  v9 = *v8;
  v10 = v8[1];

  v11 = sub_1002E2BC4(v9, v10);

  v12 = [v11 privateCloudDatabase];

  v13 = objc_autoreleasePoolPush();
  v14 = sub_1002E1D08(*(a1 + *(v5 + 32)), *(a1 + *(v5 + 32) + 8));
  if (!v14)
  {
    v14 = sub_10017D800();
  }

  aBlock[0] = v14;
  v15 = v14;
  sub_1000F8C14(aBlock);
  objc_autoreleasePoolPop(v13);
  v16 = [v15 recordID];

  sub_1001A3E54(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustodianshipInfoRecord);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v18[2] = v21;
  v18[3] = a3;
  sub_1001A409C(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for CustodianshipInfoRecord);
  aBlock[4] = sub_1001A3A44;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003ACAD8;
  v19 = _Block_copy(aBlock);

  [v12 deleteRecordWithID:v16 completionHandler:v19];
  _Block_release(v19);
}

uint64_t sub_1001A3914()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[7], v4);

  sub_100012324(*(v0 + v2 + v1[10]), *(v0 + v2 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001A3A5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001A3ABC()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v11 = *(*(v1 - 1) + 64);

  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v6(v0 + v2 + v1[5], v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v7 = (v0 + v2 + v1[8]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v5 + 48))(v3 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  return _swift_deallocObject(v0, v2 + v11);
}

uint64_t sub_1001A3CA4()
{
  v1 = type metadata accessor for CustodianHealthRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[5], v4);
  v6 = v1[6];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = (v0 + v2 + v1[7]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v0 + v2 + v1[8]), *(v0 + v2 + v1[8] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001A3E3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001A3E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A3EBC()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001A409C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A41F0(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 32); ; ++i)
    {
      v6 = *i;

      sub_1001669E4(&v6, a2);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

void *sub_1001A4278(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1002E02EC(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 8)
    {

      sub_100005814(&unk_1003DABD0, &qword_10033E720);
      sub_100005814(&qword_1003E12A8, &qword_100344710);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_1002E02EC((v5 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      _swiftEmptyArrayStorage[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1001A43B8()
{
  type metadata accessor for BeneficiaryHealthCheck(0);
  sub_100005814(&unk_1003E1278, &unk_1003446C0);
  result = String.init<A>(describing:)();
  qword_1003E10D0 = result;
  *algn_1003E10D8 = v1;
  return result;
}

void sub_1001A440C(void *a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v71 = *(v15 - 8);
  __chkstk_darwin(v15);
  v70 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v68 = *(v17 - 8);
  v69 = v17;
  __chkstk_darwin(v17);
  v67 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_1003D7F48 == -1)
    {
LABEL_11:
      v28 = type metadata accessor for Logger();
      sub_100008D04(v28, qword_1003FAAB8);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        aBlock[0] = v32;
        *v31 = 136315138;
        if (qword_1003D7E28 != -1)
        {
          swift_once();
        }

        *(v31 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, aBlock);
        _os_log_impl(&_mh_execute_header, v29, v30, "%s - Self is nil. Aborting.", v31, 0xCu);
        sub_10000839C(v32);
      }

      return;
    }

LABEL_38:
    swift_once();
    goto LABEL_11;
  }

  if (a2)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAB8);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v73 = a1;
      aBlock[0] = v23;
      *v22 = 136315394;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v24 = String.init<A>(describing:)();
      v26 = sub_10021145C(v24, v25, aBlock);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v22 + 14) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, aBlock);
      _os_log_impl(&_mh_execute_header, v20, v21, "Fetching beneficiaries error: %s. Aborting %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    sub_1001A4E94();
    v27 = a1;
    goto LABEL_30;
  }

  v66 = v14;
  v33 = a1[2];
  if (v33)
  {
    v64 = a4;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v61 = v15;
    v34 = type metadata accessor for Logger();
    sub_100008D04(v34, qword_1003FAAB8);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    v37 = os_log_type_enabled(v35, v36);
    v65 = a5;
    v63 = v11;
    v62 = v12;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v38 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, aBlock);
      *(v38 + 12) = 2048;
      *(v38 + 14) = v33;
      sub_1000399DC(a1, 0);
      _os_log_impl(&_mh_execute_header, v35, v36, "%s - performing health check on %ld beneficiaries", v38, 0x16u);
      sub_10000839C(v39);
    }

    else
    {
      sub_1000399DC(a1, 0);
    }

    v45 = dispatch_group_create();
    v46 = sub_1001AEB84(*(*(Strong + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck_idMSBeneficiaryCryptoData) + 16), v33);
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    v48 = 0;
    v49 = *(type metadata accessor for BeneficiaryInfoRecord(0) - 8);
    while (1)
    {
      v50 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      sub_1001A4FA0(a1 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v48++, Strong, v46, v45, v47, a6);
      if (v50 == v33)
      {
        sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
        v52 = v67;
        v51 = v68;
        v53 = v69;
        (*(v68 + 104))(v67, enum case for DispatchQoS.QoSClass.default(_:), v69);
        v54 = static OS_dispatch_queue.global(qos:)();
        (*(v51 + 8))(v52, v53);
        v55 = swift_allocObject();
        v56 = v65;
        v55[2] = v64;
        v55[3] = v56;
        v55[4] = v47;
        aBlock[4] = sub_1000C540C;
        aBlock[5] = v55;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031EF0;
        aBlock[3] = &unk_1003ACD58;
        v57 = _Block_copy(aBlock);

        v58 = v70;
        static DispatchQoS.unspecified.getter();
        v73 = _swiftEmptyArrayStorage;
        sub_1001B271C(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100005814(&unk_1003DABE0, &unk_10033EC20);
        sub_1000383E4();
        v59 = v66;
        v60 = v63;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_group.notify(qos:flags:queue:execute:)();

        _Block_release(v57);

        (*(v62 + 8))(v59, v60);
        (*(v71 + 8))(v58, v61);

        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100008D04(v40, qword_1003FAAB8);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 136315138;
    if (qword_1003D7E28 != -1)
    {
      swift_once();
    }

    *(v43 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, aBlock);
    _os_log_impl(&_mh_execute_header, v41, v42, "%s - no beneficiaries found. Skipping Beneficiary Health Check", v43, 0xCu);
    sub_10000839C(v44);
  }

  sub_1001A4E94();
  v27 = 0;
LABEL_30:
  a4(v27);
LABEL_36:
}

void sub_1001A4E94()
{
  if (*(*(v0 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck_idMSBeneficiaryCryptoData) + 16))
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100008D04(v1, qword_1003FAAB8);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "idMS has MORE number of beneficiaries registered.", v3, 2u);
    }
  }
}

void sub_1001A4FA0(uint64_t a1, void *a2, char *a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  v67 = a3;
  v64 = a6;
  v65 = a5;
  v69 = a4;
  v66 = a1;
  v7 = type metadata accessor for BeneficiaryInfoRecord(0);
  v8 = v7 - 8;
  v61 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v58 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v10;
  __chkstk_darwin(v9);
  v63 = &v58 - v11;
  v12 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  v59 = *(v12 - 8);
  v60 = v12;
  __chkstk_darwin(v12);
  v14 = &v58 - v13;
  v15 = sub_100005814(&qword_1003E1270, &qword_1003446B8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v58 - v17;
  v19 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v58 - v21;
  v23 = *(v20 + 16);
  v68 = a2;
  v23(&v58 - v21, a2 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__analyticsEventFactory, v19);
  Dependency.wrappedValue.getter();
  (*(v20 + 8))(v22, v19);
  v24 = v66;
  v25 = objc_allocWithZone(type metadata accessor for InheritanceHealthCheckAnalyticsEvent(0));
  v26 = sub_10024CFF0();
  sub_10000839C(v70);
  *&v26[qword_1003E3FD8] = v67;
  dispatch_group_enter(v69);
  if (*(v24 + *(v8 + 28) + 8))
  {
    v27 = v68;
    (*(v16 + 16))(v18, v68 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__beneficiaryInfoVerificationProtocol, v15);
    Dependency.wrappedValue.getter();
    (*(v16 + 8))(v18, v15);
    v28 = sub_1000080F8(v70, v70[3]);
    v29 = v27;
    v30 = *(v27 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck_idMSBeneficiaryCryptoData);
    v32 = v59;
    v31 = v60;
    (*(v59 + 16))(v14, v29 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__securityController, v60);

    Dependency.wrappedValue.getter();
    (*(v32 + 8))(v14, v31);
    v33 = v70[6];
    v34 = *v28;
    v67 = v26;
    v35 = v64;
    sub_100166388(v24, v30, v33, v34, v67, &off_1003B0F58, v64);

    swift_unknownObjectRelease();
    sub_10000839C(v70);
    v36 = v63;
    sub_1001B2990(v24, v63, type metadata accessor for BeneficiaryInfoRecord);
    v37 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v38 = (v62 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = v26;
    v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v41 = v24;
    v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    sub_1001AF9BC(v36, v43 + v37, type metadata accessor for BeneficiaryInfoRecord);
    *(v43 + v38) = v65;
    v44 = v69;
    *(v43 + v40) = v69;
    v26 = v39;
    *(v43 + v42) = v35;

    v45 = v44;
    sub_1001AC958(v41, v67, sub_1001AF020, v43, v68);
  }

  else
  {
    v46 = v58;
    v47 = v69;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100008D04(v48, qword_1003FAAB8);
    sub_1001B2990(v24, v46, type metadata accessor for BeneficiaryInfoRecord);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = v26;
      v53 = swift_slowAlloc();
      v70[0] = v53;
      *v51 = 136315138;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      sub_1001B29F8(v46, type metadata accessor for BeneficiaryInfoRecord);
      v57 = sub_10021145C(v54, v56, v70);

      *(v51 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "Handle is nil. BeneficiaryID:%s does not require health check", v51, 0xCu);
      sub_10000839C(v53);
      v26 = v52;
    }

    else
    {

      sub_1001B29F8(v46, type metadata accessor for BeneficiaryInfoRecord);
    }

    dispatch_group_leave(v47);
    sub_10024D10C(0);
  }
}

void sub_1001A56AC(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v8 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAB8);
    sub_1001B2990(a2, v10, type metadata accessor for BeneficiaryInfoRecord);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25[0] = swift_slowAlloc();
      *v14 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v14 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v25);
      *(v14 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      sub_1001B29F8(v10, type metadata accessor for BeneficiaryInfoRecord);
      v18 = sub_10021145C(v15, v17, v25);

      *(v14 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s - failed for beneficiary - %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001B29F8(v10, type metadata accessor for BeneficiaryInfoRecord);
    }

    swift_beginAccess();
    *(a3 + 16) = a1;
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAB8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25[0] = v23;
      *v22 = 136315138;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v22 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v25);
      _os_log_impl(&_mh_execute_header, v20, v21, "%s completed.", v22, 0xCu);
      sub_10000839C(v23);
    }
  }

  dispatch_group_leave(a4);
}

uint64_t sub_1001A5AD0()
{
  v1 = OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__cloudStorage;
  v2 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__inheritanceStorage;
  v4 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__securityController;
  v6 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__accessKeyRepairHandler;
  v8 = sub_100005814(&unk_1003E1298, &unk_100344700);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__accountStore;
  v10 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__akAccountManager;
  v12 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__analyticsEventFactory;
  v14 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__beneficiaryInfoVerificationProtocol;
  v16 = sub_100005814(&qword_1003E1270, &qword_1003446B8);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BeneficiaryHealthCheck(uint64_t a1)
{
  result = qword_1003E1150;
  if (!qword_1003E1150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001A5DF0(uint64_t a1)
{
  sub_10000DAB8(319, &unk_1003DB230, &unk_1003D9830, &qword_10033E970);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &qword_1003E1160, &unk_1003E01A0, &qword_1003443F0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &unk_1003E1170, &unk_1003E0210, &qword_100343D90);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, &qword_1003E1180, &qword_1003E1188, &unk_100346930);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
          if (v5 <= 0x3F)
          {
            sub_10000DA14(319);
            if (v6 <= 0x3F)
            {
              sub_10000DAB8(319, qword_1003DB290, &unk_1003D9810, &unk_10033EFC0);
              if (v7 <= 0x3F)
              {
                sub_10000DAB8(319, &qword_1003E1190, &unk_1003E1198, &qword_100344650);
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1001A60D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1001A611C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1001A616C()
{
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E01A0, &qword_1003443F0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E0210, &qword_100343D90);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E1188, &unk_100346930);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100016034(0, &qword_1003DF5C0, AKAccountManager_ptr);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9810, &unk_10033EFC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E1198, &qword_100344650);
  Dependency.init(dependencyId:config:)();
  v1 = OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck_idMSBeneficiaryCryptoData;
  *(v0 + v1) = sub_10030866C(_swiftEmptyArrayStorage);
  return v0;
}

uint64_t sub_1001A6374(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t), uint64_t a6, char *a7, uint64_t a8)
{
  v75 = a8;
  v76 = a7;
  v79 = a6;
  v80 = a3;
  v82 = a4;
  v83 = a5;
  v81 = a2;
  v84 = a1;
  v8 = type metadata accessor for BeneficiaryInfoRecord(0);
  v73 = *(v8 - 8);
  v9 = *(v73 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v77 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v74 = &v69 - v11;
  v71 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v69 - v12;
  v13 = type metadata accessor for InheritanceInvitationRecord(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v72 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v78 = &v69 - v17;
  v18 = sub_100005814(&qword_1003E4F40, &unk_1003446D0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v69 - v22;
  v24 = sub_100005814(&qword_1003E1288, &unk_10034A3E0);
  __chkstk_darwin(v24);
  v26 = (&v69 - v25);
  sub_100012D04(v84, &v69 - v25, &qword_1003E1288, &unk_10034A3E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAAB8);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v85[0] = swift_slowAlloc();
      *v31 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v31 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v85);
      *(v31 + 12) = 2080;
      v86 = v27;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v32 = String.init<A>(describing:)();
      v34 = sub_10021145C(v32, v33, v85);

      *(v31 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s - error fetching InheritanceInvitationRecord. Abandoning Health Check - %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    ObjectType = swift_getObjectType();
    type metadata accessor for InheritanceError(0);
    v85[0] = 2103;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001B271C(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v36 = v86;
    _convertErrorToNSError(_:)();

    v37 = (*(v80 + 24))(v85, ObjectType);
    v39 = v38;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v37(v85, 0);
    swift_errorRetain();
    v82(v27);
  }

  else
  {
    sub_1001AF510(v26, v23);
    sub_100012D04(v23, v21, &qword_1003E4F40, &unk_1003446D0);
    if ((*(v14 + 48))(v21, 1, v13) == 1)
    {
      sub_100008D3C(v21, &qword_1003E4F40, &unk_1003446D0);
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_100008D04(v41, qword_1003FAAB8);
      v42 = v77;
      sub_1001B2990(v79, v77, type metadata accessor for BeneficiaryInfoRecord);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v85[0] = swift_slowAlloc();
        *v45 = 136315394;
        if (qword_1003D7E28 != -1)
        {
          swift_once();
        }

        *(v45 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v85);
        *(v45 + 12) = 2080;
        type metadata accessor for UUID();
        sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        sub_1001B29F8(v42, type metadata accessor for BeneficiaryInfoRecord);
        v49 = sub_10021145C(v46, v48, v85);

        *(v45 + 14) = v49;
        _os_log_impl(&_mh_execute_header, v43, v44, "%s - skipping Health Check for Beneficiary - %s", v45, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1001B29F8(v42, type metadata accessor for BeneficiaryInfoRecord);
      }

      *(v81 + qword_1003E3FE0) = 1;
      sub_10024D10C(1);
      v82(0);
    }

    else
    {
      v50 = v14;
      v51 = v78;
      sub_1001AF9BC(v21, v78, type metadata accessor for InheritanceInvitationRecord);
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v53 = v70;
        v54 = v69;
        v55 = v71;
        (*(v70 + 16))(v69, Strong + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__inheritanceStorage, v71);
        Dependency.wrappedValue.getter();

        (*(v53 + 8))(v54, v55);
        v84 = sub_1000080F8(v85, v85[3]);
        v56 = swift_allocObject();
        swift_beginAccess();
        swift_weakLoadStrong();
        swift_weakInit();

        v57 = v74;
        sub_1001B2990(v79, v74, type metadata accessor for BeneficiaryInfoRecord);
        v77 = type metadata accessor for InheritanceInvitationRecord;
        v58 = v72;
        sub_1001B2990(v51, v72, type metadata accessor for InheritanceInvitationRecord);
        v59 = (*(v73 + 80) + 16) & ~*(v73 + 80);
        v60 = (v9 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
        v76 = v23;
        v61 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
        v62 = (v61 + 23) & 0xFFFFFFFFFFFFFFF8;
        v63 = (*(v50 + 80) + v62 + 8) & ~*(v50 + 80);
        v64 = swift_allocObject();
        sub_1001AF9BC(v57, v64 + v59, type metadata accessor for BeneficiaryInfoRecord);
        v65 = (v64 + v60);
        v66 = v80;
        *v65 = v81;
        v65[1] = v66;
        v67 = (v64 + v61);
        v68 = v83;
        *v67 = v82;
        v67[1] = v68;
        *(v64 + v62) = v56;
        sub_1001AF9BC(v58, v64 + v63, type metadata accessor for InheritanceInvitationRecord);
        *(v64 + ((v15 + v63 + 7) & 0xFFFFFFFFFFFFFFF8)) = v75;
        swift_unknownObjectRetain();

        sub_10021CBFC(v79, sub_1001AF884, v64);

        sub_1001B29F8(v78, v77);
        sub_100008D3C(v76, &qword_1003E4F40, &unk_1003446D0);

        return sub_10000839C(v85);
      }

      sub_1001B29F8(v51, type metadata accessor for InheritanceInvitationRecord);
    }

    return sub_100008D3C(v23, &qword_1003E4F40, &unk_1003446D0);
  }
}

uint64_t sub_1001A6F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v36 = a5;
  v37 = a6;
  v34 = a4;
  v11 = type metadata accessor for InheritanceHealthRecord(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  __chkstk_darwin(v17);
  v19 = (&v34 - v18);
  sub_100012D04(a1, &v34 - v18, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAB8);
    sub_1001B2990(a2, v16, type metadata accessor for BeneficiaryInfoRecord);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    v24 = a3;
    if (os_log_type_enabled(v22, v23))
    {
      v25 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v25 = 136315650;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v25 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v39);
      *(v25 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      sub_1001B29F8(v16, type metadata accessor for BeneficiaryInfoRecord);
      v29 = sub_10021145C(v26, v28, v39);

      *(v25 + 14) = v29;
      *(v25 + 22) = 2080;
      v38 = v20;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v30 = String.init<A>(describing:)();
      v32 = sub_10021145C(v30, v31, v39);

      *(v25 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v22, v23, "%s - failed to fetch InheritanceHealthRecord for %s. Error :- %s", v25, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001B29F8(v16, type metadata accessor for BeneficiaryInfoRecord);
    }

    *(v24 + qword_1003E3FE8) = 1;
    sub_10024D10C(0);
    swift_errorRetain();
    v36(v20);
  }

  else
  {
    sub_1001AF9BC(v19, v13, type metadata accessor for InheritanceHealthRecord);
    *(a3 + qword_1003E4000) = sub_1001E9D7C();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1001A7400(a2, v35, v13, a3, v34, v36, v37);
    }

    return sub_1001B29F8(v13, type metadata accessor for InheritanceHealthRecord);
  }
}

uint64_t sub_1001A7400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  v34 = a4;
  v35 = a5;
  v30 = a3;
  v31 = a1;
  v32 = a2;
  v36 = *v7;
  v9 = type metadata accessor for InheritanceHealthRecord(0);
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  __chkstk_darwin(v9 - 8);
  v28 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InheritanceInvitationRecord(0);
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BeneficiaryInfoRecord(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  swift_weakInit();
  sub_1001B2990(v31, v17, type metadata accessor for BeneficiaryInfoRecord);
  sub_1001B2990(v32, v13, type metadata accessor for InheritanceInvitationRecord);
  sub_1001B2990(a3, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InheritanceHealthRecord);
  v19 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v20 = (v16 + *(v29 + 80) + v19) & ~*(v29 + 80);
  v21 = (v12 + *(v33 + 80) + v20) & ~*(v33 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v35;
  v23[2] = v34;
  v23[3] = v24;
  v23[4] = v18;
  sub_1001AF9BC(v17, v23 + v19, type metadata accessor for BeneficiaryInfoRecord);
  sub_1001AF9BC(v13, v23 + v20, type metadata accessor for InheritanceInvitationRecord);
  sub_1001AF9BC(v28, v23 + v21, type metadata accessor for InheritanceHealthRecord);
  v25 = (v23 + v22);
  v26 = v38;
  *v25 = v37;
  v25[1] = v26;
  *(v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = v36;
  swift_unknownObjectRetain();

  sub_1001AAB60(v30, sub_1001AFE10, v23);
}

uint64_t sub_1001A7794(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v135 = a7;
  v134 = a6;
  v145 = a5;
  v153 = a4;
  v154 = a3;
  v148 = a2;
  v137 = type metadata accessor for InheritanceInvitationMessage(0);
  v8 = __chkstk_darwin(v137);
  v138 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v146 = &v130 - v10;
  v141 = sub_100005814(&unk_1003D97E0, &unk_10033EF90);
  v139 = *(v141 - 8);
  __chkstk_darwin(v141);
  v140 = &v130 - v11;
  v144 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v130 - v12;
  v150 = type metadata accessor for InheritanceInvitationRecord(0);
  v149 = *(v150 - 8);
  v13 = __chkstk_darwin(v150);
  v136 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v147 = &v130 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v130 - v18;
  __chkstk_darwin(v17);
  v21 = &v130 - v20;
  v151 = sub_100005814(&qword_1003E1288, &unk_10034A3E0);
  __chkstk_darwin(v151);
  v152 = (&v130 - v22);
  v155 = type metadata accessor for UUID();
  v23 = *(v155 - 8);
  v24 = __chkstk_darwin(v155);
  v26 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v130 - v27;
  v29 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  __chkstk_darwin(v29);
  v31 = (&v130 - v30);
  sub_100012D04(a1, &v130 - v30, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001AF9BC(v31, v21, type metadata accessor for InheritanceInvitationRecord);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    v47 = sub_100008D04(v46, qword_1003FAAB8);
    v48 = *(v23 + 16);
    v49 = v155;
    v133 = v23 + 16;
    v132 = v48;
    v48(v26, v148, v155);
    sub_1001B2990(v21, v19, type metadata accessor for InheritanceInvitationRecord);
    v148 = v47;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = v21;
      v53 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      *v53 = 136315650;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v53 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v158);
      *(v53 + 12) = 2080;
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      (*(v23 + 8))(v26, v155);
      v57 = sub_10021145C(v54, v56, &v158);

      *(v53 + 14) = v57;
      *(v53 + 22) = 2048;
      v58 = v150;
      v59 = *&v19[*(v150 + 32)];
      sub_1001B29F8(v19, type metadata accessor for InheritanceInvitationRecord);
      *(v53 + 24) = v59;
      _os_log_impl(&_mh_execute_header, v50, v51, "%s - inheritanceInvitationRecord for beneficiaryID - %s is in %ld status", v53, 0x20u);
      swift_arrayDestroy();

      v21 = v52;
    }

    else
    {
      sub_1001B29F8(v19, type metadata accessor for InheritanceInvitationRecord);

      (*(v23 + 8))(v26, v49);
      v58 = v150;
    }

    v60 = *&v21[*(v58 + 32)];
    v61 = v147;
    if ((v60 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v62 = v152;
      sub_1001B2990(v21, v152, type metadata accessor for InheritanceInvitationRecord);
      (*(v149 + 56))(v62, 0, 1, v58);
    }

    else
    {
      if (v60 == 1)
      {
        v63 = v143;
        v64 = v142;
        v65 = v144;
        (*(v143 + 16))(v142, v145 + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__accountStore, v144);
        Dependency.wrappedValue.getter();
        (*(v63 + 8))(v64, v65);
        v66 = [*(*sub_1000080F8(&v158 v159) + 16)];
        if (v66)
        {
          v67 = v66;
          v68 = [v66 aa_altDSID];

          if (v68)
          {
            v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v144 = v69;

            sub_10000839C(&v158);
            sub_1001B2990(v21, v61, type metadata accessor for InheritanceInvitationRecord);
            v70 = Logger.logObject.getter();
            v71 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              v73 = swift_slowAlloc();
              v158 = v73;
              *v72 = 136315138;
              sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v74 = dispatch thunk of CustomStringConvertible.description.getter();
              v76 = v75;
              sub_1001B29F8(v61, type metadata accessor for InheritanceInvitationRecord);
              v77 = sub_10021145C(v74, v76, &v158);

              *(v72 + 4) = v77;
              _os_log_impl(&_mh_execute_header, v70, v71, "Beneficiary id %s is pending. Resending CK share...", v72, 0xCu);
              sub_10000839C(v73);
            }

            else
            {

              sub_1001B29F8(v61, type metadata accessor for InheritanceInvitationRecord);
            }

            ObjectType = swift_getObjectType();
            type metadata accessor for InheritanceError(0);
            v158 = 2106;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_1001B271C(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
            _BridgedStoredNSError.init(_:userInfo:)();
            v88 = v157;
            _convertErrorToNSError(_:)();

            v89 = (*(v135 + 24))(&v158, ObjectType);
            v91 = v90;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v89(&v158, 0);
            sub_100005814(&unk_1003E03A0, &unk_1003436D0);
            Dependency.init(dependencyId:config:)();
            v92 = type metadata accessor for DaemonDestinationBuilder();
            v93 = swift_allocObject();
            Dependency.wrappedValue.getter();
            v94 = v158;
            v159 = v92;
            v160 = &off_1003A9008;
            v158 = v93;
            type metadata accessor for DaemonIDSMessenger();
            inited = swift_initStackObject();
            v96 = sub_10003E968(&v158, v159);
            __chkstk_darwin(v96);
            v98 = (&v130 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
            (*(v99 + 16))(v98);
            inited[3] = *v98;
            v100 = inited + 3;
            inited[6] = v92;
            inited[7] = &off_1003A9008;
            inited[2] = v94;

            sub_10000839C(&v158);
            v101 = v137;
            v102 = v146;
            v132(&v146[*(v137 + 20)], v21, v155);
            *v102 = 4;
            v103 = &v102[*(v101 + 24)];
            v104 = v144;
            *v103 = v145;
            v103[1] = v104;
            v105 = v136;
            sub_1001B2990(v21, v136, type metadata accessor for InheritanceInvitationRecord);
            v106 = Logger.logObject.getter();
            v107 = static os_log_type_t.info.getter();
            v108 = os_log_type_enabled(v106, v107);
            v131 = v21;
            if (v108)
            {
              v109 = v105;
              v110 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              v157 = v111;
              *v110 = 136315138;
              v112 = sub_1001EEBA0();
              v155 = inited;
              v113 = v112;
              v115 = v114;
              sub_1001B29F8(v109, type metadata accessor for InheritanceInvitationRecord);
              v100 = inited + 3;
              inited = v155;
              v116 = sub_10021145C(v113, v115, &v157);

              *(v110 + 4) = v116;
              _os_log_impl(&_mh_execute_header, v106, v107, "invitation %s", v110, 0xCu);
              sub_10000839C(v111);
            }

            else
            {

              sub_1001B29F8(v105, type metadata accessor for InheritanceInvitationRecord);
            }

            v117 = v138;
            sub_1001B2990(v146, v138, type metadata accessor for InheritanceInvitationMessage);
            v118 = Logger.logObject.getter();
            v119 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v118, v119))
            {
              v120 = swift_slowAlloc();
              v121 = swift_slowAlloc();
              v157 = v121;
              *v120 = 136315138;
              v122 = sub_1001DA768();
              v123 = v117;
              v125 = v124;
              sub_1001B29F8(v123, type metadata accessor for InheritanceInvitationMessage);
              v126 = sub_10021145C(v122, v125, &v157);

              *(v120 + 4) = v126;
              _os_log_impl(&_mh_execute_header, v118, v119, "invitationMessage %s", v120, 0xCu);
              sub_10000839C(v121);
            }

            else
            {

              sub_1001B29F8(v117, type metadata accessor for InheritanceInvitationMessage);
            }

            v21 = v131;
            v127 = v150;
            v128 = v146;
            sub_1002B3838(v146, *&v131[*(v150 + 20)], *&v131[*(v150 + 20) + 8], 0, 0, &_swiftEmptySetSingleton, inited);
            v129 = v152;
            sub_1001B2990(v21, v152, type metadata accessor for InheritanceInvitationRecord);
            (*(v149 + 56))(v129, 0, 1, v127);
            swift_storeEnumTagMultiPayload();
            v154(v129);
            swift_unknownObjectRelease();
            swift_setDeallocating();
            sub_10000839C(v100);

            sub_100008D3C(v129, &qword_1003E1288, &unk_10034A3E0);
            sub_1001B29F8(v128, type metadata accessor for InheritanceInvitationMessage);
            (*(v139 + 8))(v140, v141);
            return sub_1001B29F8(v21, type metadata accessor for InheritanceInvitationRecord);
          }
        }

        sub_10000839C(&v158);
      }

      v62 = v152;
      (*(v149 + 56))(v152, 1, 1, v58);
    }

    swift_storeEnumTagMultiPayload();
    v154(v62);
    sub_100008D3C(v62, &qword_1003E1288, &unk_10034A3E0);
    return sub_1001B29F8(v21, type metadata accessor for InheritanceInvitationRecord);
  }

  v32 = *v31;
  v158 = *v31;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for InheritanceError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_100008D04(v78, qword_1003FAAB8);
    swift_errorRetain();
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v158 = swift_slowAlloc();
      *v81 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v81 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v158);
      *(v81 + 12) = 2080;
      v157 = v32;
      swift_errorRetain();
      v82 = String.init<A>(describing:)();
      v84 = sub_10021145C(v82, v83, &v158);

      *(v81 + 14) = v84;
      _os_log_impl(&_mh_execute_header, v79, v80, "%s - error fetching InheritanceInvitationRecord - %s", v81, 0x16u);
      swift_arrayDestroy();
    }

    v85 = v152;
    *v152 = v32;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v154(v85);
    goto LABEL_38;
  }

  v33 = v157;
  v158 = v157;
  v156 = 3;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1001B271C(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
  _BridgedStoredNSError.init(_:userInfo:)();
  v34 = v157;
  v156 = v157;
  v35 = static _BridgedStoredNSError.== infix(_:_:)();

  if ((v35 & 1) == 0)
  {

    goto LABEL_25;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100008D04(v36, qword_1003FAAB8);
  v37 = v155;
  (*(v23 + 16))(v28, v148, v155);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v158 = v148;
    *v40 = 136315394;
    if (qword_1003D7E28 != -1)
    {
      swift_once();
    }

    *(v40 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v158);
    *(v40 + 12) = 2080;
    sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = v155;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    (*(v23 + 8))(v28, v41);
    v45 = sub_10021145C(v42, v44, &v158);

    *(v40 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v38, v39, "%s - there is no InheritanceInvitationRecord for beneficiaryID - %s.", v40, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v23 + 8))(v28, v37);
  }

  v85 = v152;
  (*(v149 + 56))(v152, 1, 1, v150);
  swift_storeEnumTagMultiPayload();
  v154(v85);

LABEL_38:

  return sub_100008D3C(v85, &qword_1003E1288, &unk_10034A3E0);
}

void sub_1001A8DEC(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100008D04(v1, qword_1003FAAB8);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v13 = v5;
      *v4 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v6 = String.init<A>(describing:)();
      v8 = sub_10021145C(v6, v7, &v13);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error sending IDS Message for Inheritance Invitation: %s", v4, 0xCu);
      sub_10000839C(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAAB8);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Sent the IDS message for Inheritance Invitation successfully.", v11, 2u);
    }
  }
}

uint64_t sub_1001A908C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void), void *a9)
{
  v69 = a8;
  v70 = a5;
  v67 = a6;
  v68 = a3;
  v12 = a9;
  v13 = type metadata accessor for InheritanceInvitationRecord(0);
  v14 = *(v13 - 8);
  v64 = v13;
  v65 = v14;
  __chkstk_darwin(v13);
  v66 = v15;
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005814(&unk_1003E1298, &unk_100344700);
  v63 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  v20 = type metadata accessor for InheritanceHealthRecord(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  __chkstk_darwin(v22);
  v26 = &v55 - v25;
  if (a1)
  {
    *(a2 + qword_1003E3FD0) = 1;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1001A9794(v70, v67, a7, a2, v68, v69, a9);
    }
  }

  else
  {
    v58 = v24;
    v59 = v23;
    v62 = a2;
    *(a2 + qword_1003E3FD0) = 0;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAAB8);
    v61 = a7;
    sub_1001B2990(a7, v26, type metadata accessor for InheritanceHealthRecord);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    v31 = os_log_type_enabled(v29, v30);
    v60 = v16;
    if (v31)
    {
      v57 = a9;
      v32 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v71[0] = v56;
      *v32 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v32 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v71);
      *(v32 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      sub_1001B29F8(v26, type metadata accessor for InheritanceHealthRecord);
      v36 = sub_10021145C(v33, v35, v71);

      *(v32 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s - marking beneficiary %s as not reachable, and attempting to re-share.", v32, 0x16u);
      swift_arrayDestroy();

      v12 = v57;
    }

    else
    {

      sub_1001B29F8(v26, type metadata accessor for InheritanceHealthRecord);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    v37 = v61;
    v38 = v62;
    if (result)
    {
      v39 = v63;
      v40 = v12;
      (*(v63 + 16))(v19, result + OBJC_IVAR____TtC13appleaccountd22BeneficiaryHealthCheck__accessKeyRepairHandler, v17);
      Dependency.wrappedValue.getter();

      (*(v39 + 8))(v19, v17);
      v57 = sub_1000080F8(v71, v71[3]);
      v41 = v67;
      v42 = (v67 + *(v64 + 20));
      v43 = *v42;
      v63 = v42[1];
      v64 = v43;
      v44 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v45 = v60;
      sub_1001B2990(v41, v60, type metadata accessor for InheritanceInvitationRecord);
      v46 = v59;
      sub_1001B2990(v37, v59, type metadata accessor for InheritanceHealthRecord);
      v47 = (*(v65 + 80) + 24) & ~*(v65 + 80);
      v48 = (v66 + *(v58 + 80) + v47) & ~*(v58 + 80);
      v49 = (v21 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      *(v50 + 16) = v44;
      sub_1001AF9BC(v45, v50 + v47, type metadata accessor for InheritanceInvitationRecord);
      sub_1001AF9BC(v46, v50 + v48, type metadata accessor for InheritanceHealthRecord);
      v51 = (v50 + v49);
      v53 = v68;
      v52 = v69;
      *v51 = v38;
      v51[1] = v53;
      v54 = (v50 + ((v49 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v54 = v52;
      v54[1] = v40;

      swift_unknownObjectRetain();

      sub_100198160(v70, v64, v63, sub_1001B2604, v50);

      return sub_10000839C(v71);
    }
  }

  return result;
}

uint64_t sub_1001A9794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v125 = a2;
  v128 = a4;
  v129 = a7;
  v123 = a1;
  v9 = type metadata accessor for SHA256();
  v116 = *(v9 - 8);
  v117 = v9;
  __chkstk_darwin(v9);
  v115 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SHA256Digest();
  v119 = *(v11 - 8);
  v120 = v11;
  __chkstk_darwin(v11);
  v118 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for BeneficiaryInfoRecord(0);
  v13 = __chkstk_darwin(v114);
  v113 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v121 = &v112 - v15;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for InheritanceHealthRecord(0);
  v21 = __chkstk_darwin(v20);
  v124 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v122 = &v112 - v24;
  v25 = __chkstk_darwin(v23);
  v130 = &v112 - v26;
  __chkstk_darwin(v25);
  v28 = &v112 - v27;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_100008D04(v29, qword_1003FAAB8);
  sub_1001B2990(a3, v28, type metadata accessor for InheritanceHealthRecord);
  v131 = v30;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v112 = a3;
    v126 = v20;
    v127 = a6;
    v33 = swift_slowAlloc();
    v132[0] = swift_slowAlloc();
    *v33 = 136315394;
    if (qword_1003D7E28 != -1)
    {
      swift_once();
    }

    *(v33 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v132);
    *(v33 + 12) = 2080;
    type metadata accessor for UUID();
    sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    sub_1001B29F8(v28, type metadata accessor for InheritanceHealthRecord);
    v37 = sub_10021145C(v34, v36, v132);

    *(v33 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s - verifying beneficiary health record for beneficiaryID - %s", v33, 0x16u);
    swift_arrayDestroy();

    v20 = v126;
    a6 = v127;
    a3 = v112;
  }

  else
  {

    sub_1001B29F8(v28, type metadata accessor for InheritanceHealthRecord);
  }

  Date.init(timeIntervalSince1970:)();
  sub_1001B271C(&qword_1003DB600, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v17 + 8))(v19, v16);
  v39 = v130;
  if (v38)
  {
    v40 = v124;
    sub_1001B2990(a3, v124, type metadata accessor for InheritanceHealthRecord);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v132[0] = swift_slowAlloc();
      *v43 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v43 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v132);
      *(v43 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      sub_1001B29F8(v40, type metadata accessor for InheritanceHealthRecord);
      v47 = sub_10021145C(v44, v46, v132);

      *(v43 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v41, v42, "%s - beneficiary %s hasn't updated to a version that has Health Check enabled. Skipping Health Check.", v43, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001B29F8(v40, type metadata accessor for InheritanceHealthRecord);
    }

    sub_10024D10C(1);
    return a6(0);
  }

  else if (sub_1001E9F40())
  {
    v48 = v123;
    v49 = v121;
    sub_1001B2990(v123, v121, type metadata accessor for BeneficiaryInfoRecord);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();
    v52 = os_log_type_enabled(v50, v51);
    v126 = v20;
    if (v52)
    {
      v53 = swift_slowAlloc();
      v132[0] = swift_slowAlloc();
      *v53 = 136315394;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v53 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v132);
      *(v53 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v54 = v121;
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      sub_1001B29F8(v54, type metadata accessor for BeneficiaryInfoRecord);
      v58 = sub_10021145C(v55, v57, v132);

      *(v53 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v50, v51, "%s - beneficiary %s has checked in recently, continue health check.", v53, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001B29F8(v49, type metadata accessor for BeneficiaryInfoRecord);
    }

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.info.getter();
    v76 = os_log_type_enabled(v74, v75);
    v127 = a6;
    if (v76)
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v132[0] = v78;
      *v77 = 136315138;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      v79 = a3;
      *(v77 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v132);
      _os_log_impl(&_mh_execute_header, v74, v75, "%s - verifying accessKeyHash...", v77, 0xCu);
      sub_10000839C(v78);
    }

    else
    {
      v79 = a3;
    }

    sub_1001AB0FC(v125);
    v80 = (v48 + *(v114 + 28));
    v81 = *v80;
    v82 = v80[1];
    sub_1001B271C(&unk_1003DA8A0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    v83 = v115;
    v84 = v117;
    dispatch thunk of HashFunction.init()();
    sub_100015D6C(v81, v82);
    sub_10018F16C(v81, v82, v83);
    sub_100012324(v81, v82);
    v85 = v118;
    dispatch thunk of HashFunction.finalize()();
    (*(v116 + 8))(v83, v84);
    sub_1001B271C(&qword_1003DE938, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v86 = v120;
    v87 = Digest.makeIterator()();
    v89 = sub_10018F47C(v87, v88);

    v90 = sub_10018F97C(v89);
    v92 = v91;

    (*(v119 + 8))(v85, v86);
    LOBYTE(v86) = sub_10018F69C(v90, v92, *(v79 + *(v126 + 24)), *(v79 + *(v126 + 24) + 8));
    sub_100012324(v90, v92);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.info.getter();
    v95 = os_log_type_enabled(v93, v94);
    if (v86)
    {
      v96 = v127;
      if (v95)
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v132[0] = v98;
        *v97 = 136315138;
        v99 = v123;
        if (qword_1003D7E28 != -1)
        {
          swift_once();
        }

        *(v97 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v132);
        _os_log_impl(&_mh_execute_header, v93, v94, "%s - verified accessKeyHash matches with healthRecord. We're good.", v97, 0xCu);
        sub_10000839C(v98);
      }

      else
      {

        v99 = v123;
      }

      v103 = v113;
      sub_1001B2990(v99, v113, type metadata accessor for BeneficiaryInfoRecord);
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v132[0] = swift_slowAlloc();
        *v106 = 136315394;
        if (qword_1003D7E28 != -1)
        {
          swift_once();
        }

        *(v106 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v132);
        *(v106 + 12) = 2080;
        type metadata accessor for UUID();
        sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v107 = v113;
        v108 = dispatch thunk of CustomStringConvertible.description.getter();
        v110 = v109;
        sub_1001B29F8(v107, type metadata accessor for BeneficiaryInfoRecord);
        v111 = sub_10021145C(v108, v110, v132);

        *(v106 + 14) = v111;
        _os_log_impl(&_mh_execute_header, v104, v105, "%s - beneficiary %s is healthy!", v106, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1001B29F8(v103, type metadata accessor for BeneficiaryInfoRecord);
      }

      sub_10024D10C(1);
      return v96(0);
    }

    else
    {
      v100 = v127;
      if (v95)
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v132[0] = v102;
        *v101 = 136315138;
        if (qword_1003D7E28 != -1)
        {
          swift_once();
        }

        *(v101 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v132);
        _os_log_impl(&_mh_execute_header, v93, v94, "%s - accessKeyHash doesn't match with healthRecord. No action taken at the moment", v101, 0xCu);
        sub_10000839C(v102);
      }

      *(v128 + qword_1003E3FF0) = 1;
      sub_10024D10C(0);
      return v100(0);
    }
  }

  else
  {
    sub_1001B2990(a3, v39, type metadata accessor for InheritanceHealthRecord);
    v60 = v122;
    sub_1001B2990(a3, v122, type metadata accessor for InheritanceHealthRecord);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v126 = v20;
      v127 = a6;
      v63 = swift_slowAlloc();
      v132[0] = swift_slowAlloc();
      *v63 = 136315650;
      if (qword_1003D7E28 != -1)
      {
        swift_once();
      }

      *(v63 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, v132);
      *(v63 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v64 = v130;
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      sub_1001B29F8(v64, type metadata accessor for InheritanceHealthRecord);
      v68 = sub_10021145C(v65, v67, v132);

      *(v63 + 14) = v68;
      *(v63 + 22) = 2080;
      sub_1001B271C(&qword_1003DB608, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v69 = v122;
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      sub_1001B29F8(v69, type metadata accessor for InheritanceHealthRecord);
      v73 = sub_10021145C(v70, v72, v132);

      *(v63 + 24) = v73;
      _os_log_impl(&_mh_execute_header, v61, v62, "%s - beneficiary %s last check in was %s, marking as not reachable.", v63, 0x20u);
      swift_arrayDestroy();

      a6 = v127;
    }

    else
    {

      sub_1001B29F8(v60, type metadata accessor for InheritanceHealthRecord);
      sub_1001B29F8(v39, type metadata accessor for InheritanceHealthRecord);
    }

    *(v128 + qword_1003E3FF0) = 0;
    sub_10024D10C(0);
    return sub_1001AB4DC(v125, 3, a6, v129);
  }
}