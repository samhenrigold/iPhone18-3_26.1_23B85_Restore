char *sub_10002D534(void *a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, void (*a15)(void))
{
  v18 = v15;
  LODWORD(v117) = a4;
  v123 = a14;
  v124 = a15;
  v121 = a1;
  v122 = a13;
  v120 = a12;
  v118 = a2;
  v119 = a11;
  v20 = *v15;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v113 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v116 = &v102 - v26;
  v27 = __chkstk_darwin(v25);
  v111 = &v102 - v28;
  v29 = __chkstk_darwin(v27);
  v112 = &v102 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v102 - v32;
  __chkstk_darwin(v31);
  v35 = &v102 - v34;

  v36 = *(*v18 + 104);
  v37 = a7;
  v38 = v21;
  v39 = sub_100035D04(v37, a8);
  v40 = 1;
  (*(*(v39 - 8) + 56))(&v18[v36], 1, 1, v39);
  v41 = *(*v18 + 112);
  *&v18[v41] = 0;
  v114 = *(*v18 + 120);
  v18[v114] = 2;
  v42 = &v18[*(*v18 + 128)];
  *v42 = 0;
  v42[1] = 0;
  v115 = v42;
  *&v18[*(*v18 + 136)] = 0;
  *&v18[*(*v18 + 152)] = 0;
  *&v128 = v20;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  v43 = v22;
  Logger.init(subsystem:category:)();
  v44 = *(*v18 + 144);
  (*(v22 + 32))(&v18[v44], v35, v38);
  if (!a3)
  {
    v59 = v121;
    v46 = v124;
    goto LABEL_42;
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v45 = qword_10038B240;
  v46 = v124;
  v47 = v118;
  if (!qword_10038B240)
  {

    v40 = 1;
    v59 = v121;
    goto LABEL_42;
  }

  v48 = *(v43 + 16);
  v107 = v44;
  v108 = v43 + 16;
  v109 = v48;
  v48(v33, &v18[v44], v38);
  v105 = v45;
  v104 = v45;

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  v51 = os_log_type_enabled(v49, v50);
  v106 = v43;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *&v126 = v110;
    *v52 = 136315138;
    *&v128 = v47;
    *(&v128 + 1) = a3;
    v103 = v117 & 1;
    LOBYTE(v129) = v117 & 1;

    sub_100035D04(&qword_100339690, &qword_1002701A8);
    v53 = String.init<A>(describing:)();
    LODWORD(v102) = v50;
    v55 = v38;
    v56 = v46;
    v57 = sub_100017494(v53, v54, &v126);

    *(v52 + 4) = v57;
    v46 = v56;
    v38 = v55;
    v47 = v118;
    _os_log_impl(&_mh_execute_header, v49, v102, "Configuring userDefaultsSync: %s", v52, 0xCu);
    sub_10000903C(v110);

    v58 = v106;

    v110 = *(v58 + 8);
    v110(v33, v38);
  }

  else
  {

    v110 = *(v43 + 8);
    v110(v33, v38);
    v103 = v117 & 1;
  }

  v60 = v115;
  *v115 = v47;
  v60[1] = a3;

  v18[v114] = v103;
  v61 = *&v18[v41];
  *&v18[v41] = v105;
  v62 = v104;

  v63 = String._bridgeToObjectiveC()();

  v64 = [v62 valueForKey:v63];

  if (v64)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v126 = 0u;
    v127 = 0u;
  }

  v128 = v126;
  v129 = v127;

  v118 = a10;
  v102 = a9;
  if (v117)
  {
    v65 = sub_100035D04(a9, a10);
    v66 = sub_10003667C(v65, v65, &protocol descriptor for Decodable, &protocol descriptor for Encodable);
    if (v66)
    {
      v68 = v66;
      v69 = v67;
      sub_100009848(&v128, &v126, &unk_100339680, &qword_100278390);
      if (*(&v127 + 1))
      {
        v70 = swift_dynamicCast();
        if (v70)
        {
          v117 = v62;
          v72 = v125[0];
          v71 = v125[1];
          __chkstk_darwin(v70);
          sub_100058D2C(v72, v71, v68, v69);
          sub_100010708(v72, v71);
          if (swift_dynamicCast())
          {
            v40 = v126;
          }

          else
          {
            v40 = 1;
          }

          v46 = v124;
          v73 = v107;
          v62 = v117;
          goto LABEL_30;
        }
      }

      else
      {
        sub_1000097E8(&v126, &unk_100339680, &qword_100278390);
      }

      v73 = v107;
      v74 = v113;
      v109(v113, &v18[v107], v38);
      v75 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v75, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&_mh_execute_header, v75, v79, "### Failed to cast as Data", v80, 2u);

        v78 = &v131;
        goto LABEL_27;
      }
    }

    else
    {
      v73 = v107;
      v74 = v112;
      v109(v112, &v18[v107], v38);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "### Type not Codable", v77, 2u);

        v78 = &v130;
LABEL_27:
        v81 = *(v78 - 32);
LABEL_29:
        v110(v81, v38);
        v40 = 1;
        goto LABEL_30;
      }
    }

    v81 = v74;
    goto LABEL_29;
  }

  sub_100009848(&v128, &v126, &unk_100339680, &qword_100278390);
  sub_100035D04(&unk_100339680, &qword_100278390);
  sub_100035D04(a9, a10);
  if (swift_dynamicCast())
  {
    v40 = v125[0];
  }

  else
  {
    v40 = 1;
  }

  v73 = v107;
LABEL_30:
  v82 = v116;
  v109(v116, &v18[v73], v38);

  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v83, v84))
  {
    v117 = v62;
    v114 = v38;
    v85 = 7104878;
    v86 = swift_slowAlloc();
    v125[0] = swift_slowAlloc();
    *v86 = 136315394;
    v87 = v115[1];
    v88 = v46;
    if (v87)
    {
      *&v126 = *v115;
      *(&v126 + 1) = v87;

      v89 = String.init<A>(describing:)();
      v91 = v90;
    }

    else
    {
      v91 = 0xE300000000000000;
      v89 = 7104878;
    }

    v94 = sub_100017494(v89, v91, v125);

    *(v86 + 4) = v94;
    *(v86 + 12) = 2080;
    if (v40 == 1)
    {
      v95 = 0xE300000000000000;
    }

    else
    {
      *&v126 = v40;
      v96 = v40;
      sub_100035D04(v102, v118);
      v85 = String.init<A>(describing:)();
      v95 = v97;
    }

    v46 = v88;
    v98 = sub_100017494(v85, v95, v125);

    *(v86 + 14) = v98;
    _os_log_impl(&_mh_execute_header, v83, v84, "Initial %s: %s", v86, 0x16u);
    swift_arrayDestroy();

    v92 = v116;
    v93 = v114;
  }

  else
  {

    v92 = v82;
    v93 = v38;
  }

  v110(v92, v93);
  sub_1000097E8(&v128, &unk_100339680, &qword_100278390);
  if (v40 == 1)
  {
    v59 = v121;
  }

  else
  {
    v99 = v40;

    v59 = v40;
  }

LABEL_42:
  *&v128 = v59;
  sub_100035D04(v119, v120);
  swift_allocObject();
  *(v18 + 2) = CurrentValueSubject.init(_:)();
  *&v128 = 1;
  sub_100035D04(v122, v123);
  swift_allocObject();
  *(v18 + 3) = CurrentValueSubject.init(_:)();
  v46(v40);
  return v18;
}

char *sub_10002E2C0(uint64_t a1, void *a2, void (*a3)(char *, uint64_t), int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v145 = a4;
  v152 = a3;
  v138 = a2;
  v146 = a1;
  v8 = *v6;
  v9 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v149 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v130 = &v120 - v14;
  __chkstk_darwin(v13);
  v131 = &v120 - v15;
  v16 = sub_100035D04(&qword_100339A90, &qword_1002704B0);
  v17 = __chkstk_darwin(v16 - 8);
  v148 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v147 = &v120 - v20;
  v21 = __chkstk_darwin(v19);
  v134 = &v120 - v22;
  v23 = __chkstk_darwin(v21);
  v140 = &v120 - v24;
  v25 = __chkstk_darwin(v23);
  v127 = &v120 - v26;
  v27 = __chkstk_darwin(v25);
  v133 = &v120 - v28;
  __chkstk_darwin(v27);
  v30 = &v120 - v29;
  v31 = type metadata accessor for Logger();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v139 = &v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v143 = &v120 - v36;
  v37 = __chkstk_darwin(v35);
  v128 = &v120 - v38;
  v39 = __chkstk_darwin(v37);
  v129 = &v120 - v40;
  v41 = __chkstk_darwin(v39);
  v43 = &v120 - v42;
  __chkstk_darwin(v41);
  v45 = &v120 - v44;
  v47 = v46;

  v48 = *(*v7 + 104);
  v49 = sub_100035D04(&qword_100339A98, &qword_1002704B8);
  (*(*(v49 - 8) + 56))(&v7[v48], 1, 1, v49);
  v137 = *(*v7 + 112);
  *&v7[v137] = 0;
  v136 = *(*v7 + 120);
  v7[v136] = 2;
  v50 = &v7[*(*v7 + 128)];
  *v50 = 0;
  *(v50 + 1) = 0;
  v142 = v50;
  *&v7[*(*v7 + 136)] = 0;
  *&v7[*(*v7 + 152)] = 0;
  *&v156 = v8;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v51 = *(*v7 + 144);
  v52 = v45;
  v53 = v30;
  v54 = v152;
  (*(v32 + 32))(&v7[v51], v52, v47);
  v55 = v9;
  v150 = *(v10 + 56);
  v151 = v10 + 56;
  v150(v53, 1, 1, v9);
  if (v54)
  {
    v144 = v10;
    if (qword_100339088 != -1)
    {
      swift_once();
    }

    v56 = qword_10038B240;
    if (qword_10038B240)
    {
      v126 = v53;
      v57 = *(v32 + 16);
      v124 = v32 + 16;
      v123 = v57;
      v57(v43, &v7[v51], v47);
      v122 = v56;

      v58 = Logger.logObject.getter();
      v141 = v47;
      v59 = v58;
      v60 = static os_log_type_t.default.getter();

      v61 = os_log_type_enabled(v59, v60);
      v135 = v9;
      v132 = v32;
      v125 = v51;
      if (v61)
      {
        v62 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *&v154 = v121;
        *v62 = 136315138;
        v63 = v138;
        *&v156 = v138;
        *(&v156 + 1) = v54;
        v64 = v145 & 1;
        LOBYTE(v157) = v145 & 1;

        sub_100035D04(&qword_100339690, &qword_1002701A8);
        v65 = String.init<A>(describing:)();
        v67 = sub_100017494(v65, v66, &v154);
        v54 = v152;

        *(v62 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v59, v60, "Configuring userDefaultsSync: %s", v62, 0xCu);
        sub_10000903C(v121);

        v68 = *(v132 + 8);
        v68(v43, v141);
      }

      else
      {

        v68 = *(v32 + 8);
        v68(v43, v141);
        v64 = v145 & 1;
        v63 = v138;
      }

      v69 = v142;
      *v142 = v63;
      *(v69 + 1) = v54;

      v7[v136] = v64;
      v70 = *&v7[v137];
      *&v7[v137] = v56;
      v71 = v122;

      v72 = String._bridgeToObjectiveC()();

      v138 = v71;
      v73 = [v71 valueForKey:v72];

      v53 = v126;
      if (v73)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v154 = 0u;
        v155 = 0u;
      }

      v10 = v144;
      v74 = v139;
      v75 = v135;
      v156 = v154;
      v157 = v155;

      if ((v145 & 1) == 0)
      {
        sub_100009848(&v156, &v154, &unk_100339680, &qword_100278390);
        sub_100035D04(&unk_100339680, &qword_100278390);
        v84 = v133;
        v85 = swift_dynamicCast();
        v150(v84, v85 ^ 1u, 1, v75);
        sub_1000369A4(v84, v53, &qword_100339A90, &qword_1002704B0);
        goto LABEL_18;
      }

      v76 = sub_10003667C(v75, v75, &protocol descriptor for Decodable, &protocol descriptor for Encodable);
      v78 = v141;
      if (v76)
      {
        v79 = v76;
        v80 = v77;
        sub_100009848(&v156, &v154, &unk_100339680, &qword_100278390);
        if (*(&v155 + 1))
        {
          v81 = swift_dynamicCast();
          if (v81)
          {
            v152 = v68;
            v83 = v153[0];
            v82 = v153[1];
            __chkstk_darwin(v81);
            sub_100058D2C(v83, v82, v79, v80);
            sub_100010708(v83, v82);
            v117 = v127;
            v118 = v135;
            v119 = swift_dynamicCast();
            v150(v117, v119 ^ 1u, 1, v118);
            sub_1000369A4(v117, v53, &qword_100339A90, &qword_1002704B0);
            v75 = v118;
            v10 = v144;
            v68 = v152;
LABEL_18:
            v78 = v141;
            goto LABEL_26;
          }
        }

        else
        {
          sub_1000097E8(&v154, &unk_100339680, &qword_100278390);
        }

        v123(v74, &v7[v125], v78);
        v86 = Logger.logObject.getter();
        v90 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v86, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          _os_log_impl(&_mh_execute_header, v86, v90, "### Failed to cast as Data", v91, 2u);

          v89 = v74;
          goto LABEL_25;
        }
      }

      else
      {
        v74 = v129;
        v123(v129, &v7[v125], v141);
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&_mh_execute_header, v86, v87, "### Type not Codable", v88, 2u);

          v89 = v74;
          v75 = v135;
LABEL_25:
          v68(v89, v78);
LABEL_26:
          v92 = v143;
          v123(v143, &v7[v125], v78);

          v93 = Logger.logObject.getter();
          v94 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v93, v94))
          {
            v152 = v68;
            v95 = 7104878;
            v96 = swift_slowAlloc();
            v153[0] = swift_slowAlloc();
            *v96 = 136315394;
            v97 = *(v142 + 1);
            if (v97)
            {
              *&v154 = *v142;
              *(&v154 + 1) = v97;

              v98 = String.init<A>(describing:)();
              v100 = v99;
            }

            else
            {
              v100 = 0xE300000000000000;
              v98 = 7104878;
            }

            v101 = sub_100017494(v98, v100, v153);

            *(v96 + 4) = v101;
            *(v96 + 12) = 2080;
            swift_beginAccess();
            v102 = v140;
            sub_100009848(v53, v140, &qword_100339A90, &qword_1002704B0);
            v103 = v102;
            v104 = v134;
            sub_100009848(v103, v134, &qword_100339A90, &qword_1002704B0);
            v105 = v144;
            v106 = v135;
            if ((*(v144 + 48))(v104, 1, v135) == 1)
            {
              v107 = 0xE300000000000000;
            }

            else
            {
              v108 = v104;
              v109 = v131;
              (*(v105 + 32))(v131, v108, v106);
              (*(v105 + 16))(v130, v109, v106);
              v95 = String.init<A>(describing:)();
              v107 = v110;
              (*(v105 + 8))(v109, v106);
            }

            sub_1000097E8(v140, &qword_100339A90, &qword_1002704B0);
            v111 = sub_100017494(v95, v107, v153);

            *(v96 + 14) = v111;
            _os_log_impl(&_mh_execute_header, v93, v94, "Initial %s: %s", v96, 0x16u);
            swift_arrayDestroy();

            v152(v143, v141);
            sub_1000097E8(&v156, &unk_100339680, &qword_100278390);
            v55 = v135;
            v10 = v144;
            v53 = v126;
          }

          else
          {
            v55 = v75;

            v68(v92, v78);
            sub_1000097E8(&v156, &unk_100339680, &qword_100278390);
          }

          goto LABEL_35;
        }
      }

      v89 = v74;
      goto LABEL_25;
    }

    v10 = v144;
  }

LABEL_35:
  swift_beginAccess();
  v112 = v147;
  sub_100009848(v53, v147, &qword_100339A90, &qword_1002704B0);
  v113 = *(v10 + 48);
  if (v113(v112, 1, v55) == 1)
  {
    v114 = v146;
    (*(v10 + 16))(v149, v146, v55);
    if (v113(v112, 1, v55) != 1)
    {
      sub_1000097E8(v112, &qword_100339A90, &qword_1002704B0);
    }
  }

  else
  {
    (*(v10 + 32))(v149, v112, v55);
    v114 = v146;
  }

  sub_100035D04(&qword_100339AA0, &qword_1002704C0);
  swift_allocObject();
  *(v7 + 2) = CurrentValueSubject.init(_:)();
  v150(v148, 1, 1, v55);
  sub_100035D04(&qword_100339AA8, &qword_1002704C8);
  swift_allocObject();
  v115 = CurrentValueSubject.init(_:)();
  (*(v10 + 8))(v114, v55);
  *(v7 + 3) = v115;
  sub_1000097E8(v53, &qword_100339A90, &qword_1002704B0);
  return v7;
}

char *sub_10002F7D4(unint64_t a1, void (*a2)(char *, unint64_t), void (*a3)(char *, unint64_t), int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  LODWORD(v105) = a4;
  v101 = a2;
  v9 = a1;
  v10 = *v6;
  v11 = HIDWORD(a1) & 1;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v102 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v104 = &v87 - v17;
  v18 = __chkstk_darwin(v16);
  v96 = &v87 - v19;
  v20 = __chkstk_darwin(v18);
  v97 = &v87 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v87 - v23;
  __chkstk_darwin(v22);
  v26 = &v87 - v25;

  v27 = *(*v7 + 104);
  v28 = sub_100035D04(&qword_100339990, &qword_100270470);
  (*(*(v28 - 8) + 56))(&v7[v27], 1, 1, v28);
  v100 = *(*v7 + 112);
  *&v100[v7] = 0;
  v99 = *(*v7 + 120);
  v7[v99] = 2;
  v29 = &v7[*(*v7 + 128)];
  *v29 = 0;
  v29[1] = 0;
  v103 = v29;
  *&v7[*(*v7 + 136)] = 0;
  *&v7[*(*v7 + 152)] = 0;
  *&v109 = v10;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v30 = *(*v7 + 144);
  (*(v13 + 32))(&v7[v30], v26, v12);
  if (!a3)
  {
    goto LABEL_43;
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v31 = qword_10038B240;
  if (!qword_10038B240)
  {

    goto LABEL_43;
  }

  v32 = *(v13 + 16);
  v93 = v13 + 16;
  v92 = v32;
  v32(v24, &v7[v30], v12);
  v89 = v31;

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v95 = v12;
  v35 = v34;

  v36 = os_log_type_enabled(v33, v35);
  v98 = v13;
  v91 = v9;
  v90 = v11;
  v94 = v30;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *&v107 = v87;
    *v37 = 136315138;
    v38 = v101;
    *&v109 = v101;
    *(&v109 + 1) = a3;
    v88 = v105 & 1;
    LOBYTE(v110) = v105 & 1;

    sub_100035D04(&qword_100339690, &qword_1002701A8);
    v39 = String.init<A>(describing:)();
    v41 = sub_100017494(v39, v40, &v107);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v33, v35, "Configuring userDefaultsSync: %s", v37, 0xCu);
    sub_10000903C(v87);

    v42 = v88;

    v43 = *(v98 + 8);
    v44 = v95;
    v43(v24, v95);
  }

  else
  {

    v43 = *(v13 + 8);
    v44 = v95;
    v43(v24, v95);
    v42 = v105 & 1;
    v38 = v101;
  }

  v45 = v103;
  *v103 = v38;
  v45[1] = a3;

  v46 = v100;
  v7[v99] = v42;
  v47 = *&v46[v7];
  *&v46[v7] = v31;
  v48 = v89;

  v49 = String._bridgeToObjectiveC()();

  v100 = v48;
  v50 = [v48 valueForKey:v49];

  v51 = v104;
  v52 = v102;
  if (v50)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v107 = 0u;
    v108 = 0u;
  }

  v53 = v44;
  v109 = v107;
  v110 = v108;

  v101 = v43;
  if (v105)
  {
    v54 = sub_100035D04(&unk_10034B5D0, &unk_100289850);
    v55 = sub_10003667C(v54, v54, &protocol descriptor for Decodable, &protocol descriptor for Encodable);
    if (!v55)
    {
      v65 = v97;
      v66 = v44;
      v92(v97, &v7[v94], v44);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "### Type not Codable", v69, 2u);
      }

      v43 = v101;
      v101(v65, v44);
      LODWORD(v44) = 0;
      v63 = 1;
      v53 = v66;
      v64 = 0;
      goto LABEL_28;
    }

    v57 = v55;
    v58 = v56;
    sub_100009848(&v109, &v107, &unk_100339680, &qword_100278390);
    if (*(&v108 + 1))
    {
      v59 = swift_dynamicCast();
      if (v59)
      {
        v61 = v106[0];
        v60 = v106[1];
        __chkstk_darwin(v59);
        sub_100058D2C(v61, v60, v57, v58);
        sub_100010708(v61, v60);
        v86 = swift_dynamicCast();
        if (v86)
        {
          v44 = v107 | (BYTE4(v107) << 32);
        }

        else
        {
          v44 = 0;
        }

        v63 = v86 ^ 1;
        v64 = HIDWORD(v44) & 1;
        v53 = v95;
        v51 = v104;
        v43 = v101;
        goto LABEL_28;
      }
    }

    else
    {
      sub_1000097E8(&v107, &unk_100339680, &qword_100278390);
    }

    v53 = v44;
    v92(v52, &v7[v94], v44);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    v72 = os_log_type_enabled(v70, v71);
    v43 = v101;
    if (v72)
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "### Failed to cast as Data", v73, 2u);
    }

    v43(v52, v44);
    LODWORD(v44) = 0;
    v64 = 0;
    v63 = 1;
    goto LABEL_28;
  }

  sub_100009848(&v109, &v107, &unk_100339680, &qword_100278390);
  sub_100035D04(&unk_100339680, &qword_100278390);
  sub_100035D04(&unk_10034B5D0, &unk_100289850);
  v62 = swift_dynamicCast();
  if (v62)
  {
    v44 = LODWORD(v106[0]) | (BYTE4(v106[0]) << 32);
  }

  else
  {
    v44 = 0;
  }

  v63 = v62 ^ 1;
  v64 = HIDWORD(v44) & 1;
LABEL_28:
  v92(v51, &v7[v94], v53);

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v105 = v64;
    v64 = 7104878;
    v76 = swift_slowAlloc();
    v106[0] = swift_slowAlloc();
    *v76 = 136315394;
    v77 = v103[1];
    if (v77)
    {
      *&v107 = *v103;
      *(&v107 + 1) = v77;

      v78 = String.init<A>(describing:)();
      v80 = v79;
    }

    else
    {
      v80 = 0xE300000000000000;
      v78 = 7104878;
    }

    v81 = sub_100017494(v78, v80, v106);

    *(v76 + 4) = v81;
    *(v76 + 12) = 2080;
    if (v63)
    {
      v82 = 0xE300000000000000;
    }

    else
    {
      LODWORD(v107) = v44;
      BYTE4(v107) = v105;
      sub_100035D04(&unk_10034B5D0, &unk_100289850);
      v64 = String.init<A>(describing:)();
      v82 = v83;
    }

    v84 = sub_100017494(v64, v82, v106);

    *(v76 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v74, v75, "Initial %s: %s", v76, 0x16u);
    swift_arrayDestroy();

    v101(v104, v95);
    sub_1000097E8(&v109, &unk_100339680, &qword_100278390);
    LOBYTE(v64) = v105;
  }

  else
  {

    v43(v51, v53);
    sub_1000097E8(&v109, &unk_100339680, &qword_100278390);
  }

  if (v63)
  {
    LODWORD(v9) = v91;
  }

  else
  {
    LODWORD(v9) = v44;
  }

  if (v63)
  {
    LOBYTE(v11) = v90;
  }

  else
  {
    LOBYTE(v11) = v64;
  }

LABEL_43:
  LODWORD(v109) = v9;
  BYTE4(v109) = v11;
  sub_100035D04(&qword_100339998, &qword_100270478);
  swift_allocObject();
  *(v7 + 2) = CurrentValueSubject.init(_:)();
  LODWORD(v109) = 0;
  WORD2(v109) = 256;
  sub_100035D04(&unk_1003399A0, &unk_100270480);
  swift_allocObject();
  *(v7 + 3) = CurrentValueSubject.init(_:)();
  return v7;
}

char *sub_100030564(int a1, void *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v100[0] = a4;
  v97 = a2;
  v10 = *v6;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v95 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v99 = &v83 - v16;
  v17 = __chkstk_darwin(v15);
  v93 = &v83 - v18;
  v19 = __chkstk_darwin(v17);
  v94 = &v83 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v83 - v22;
  __chkstk_darwin(v21);
  v25 = &v83 - v24;

  v26 = *(*v7 + 104);
  v27 = sub_100035D04(&qword_100339970, &unk_100270450);
  (*(*(v27 - 8) + 56))(&v7[v26], 1, 1, v27);
  v28 = *(*v7 + 112);
  *&v7[v28] = 0;
  v96 = *(*v7 + 120);
  v7[v96] = 2;
  v29 = &v7[*(*v7 + 128)];
  *v29 = 0;
  *(v29 + 1) = 0;
  v98 = v29;
  *&v7[*(*v7 + 136)] = 0;
  *&v7[*(*v7 + 152)] = 0;
  *&v104 = v10;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v30 = *(*v7 + 144);
  (*(v12 + 32))(&v7[v30], v25, v11);
  if (!a3)
  {
    goto LABEL_38;
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v31 = qword_10038B240;
  if (!qword_10038B240)
  {

    goto LABEL_38;
  }

  v32 = *(v12 + 16);
  v89 = v12 + 16;
  v90 = v32;
  v32(v23, &v7[v30], v11);
  v85 = v31;
  v86 = v31;

  v33 = Logger.logObject.getter();
  v34 = v12;
  v35 = static os_log_type_t.default.getter();

  v84 = v35;
  v36 = os_log_type_enabled(v33, v35);
  v92 = v34;
  v88 = a1;
  v91 = v30;
  v87 = v11;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v102 = v38;
    *v37 = 136315138;
    v39 = v97;
    *&v104 = v97;
    *(&v104 + 1) = a3;
    v83 = v100[0] & 1;
    LOBYTE(v105) = v100[0] & 1;

    sub_100035D04(&qword_100339690, &qword_1002701A8);
    v40 = String.init<A>(describing:)();
    v42 = sub_100017494(v40, v41, &v102);
    v43 = v92;

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v33, v84, "Configuring userDefaultsSync: %s", v37, 0xCu);
    sub_10000903C(v38);

    v44 = v83;

    v45 = v87;
    v46 = *(v43 + 8);
    v46(v23, v87);
  }

  else
  {

    v46 = *(v34 + 8);
    v46(v23, v11);
    v44 = v100[0] & 1;
    v45 = v11;
    v39 = v97;
  }

  v47 = v98;
  *v98 = v39;
  *(v47 + 1) = a3;

  v7[v96] = v44;
  v48 = *&v7[v28];
  *&v7[v28] = v85;
  v49 = v86;

  v50 = String._bridgeToObjectiveC()();

  v51 = [v49 valueForKey:v50];

  if (v51)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
  }

  v52 = v45;
  v104 = v102;
  v105 = v103;

  v53 = v46;
  if ((v100[0] & 1) == 0)
  {
    sub_100009848(&v104, &v102, &unk_100339680, &qword_100278390);
    sub_100035D04(&unk_100339680, &qword_100278390);
    sub_100035D04(&qword_100339988, &qword_100272B60);
    if (swift_dynamicCast())
    {
      v63 = v101[0];
    }

    else
    {
      v63 = 6;
    }

    goto LABEL_27;
  }

  v54 = sub_100035D04(&qword_100339988, &qword_100272B60);
  v55 = sub_10003667C(v54, v54, &protocol descriptor for Decodable, &protocol descriptor for Encodable);
  if (v55)
  {
    v57 = v55;
    v58 = v56;
    sub_100009848(&v104, &v102, &unk_100339680, &qword_100278390);
    if (*(&v103 + 1))
    {
      v59 = swift_dynamicCast();
      v60 = v95;
      if (v59)
      {
        v97 = v49;
        *v100 = v53;
        v62 = v101[0];
        v61 = v101[1];
        __chkstk_darwin(v59);
        sub_100058D2C(v62, v61, v57, v58);
        sub_100010708(v62, v61);
        if (swift_dynamicCast())
        {
          v63 = v102;
        }

        else
        {
          v63 = 6;
        }

        v53 = *v100;
        v49 = v97;
        goto LABEL_27;
      }
    }

    else
    {
      sub_1000097E8(&v102, &unk_100339680, &qword_100278390);
      v60 = v95;
    }

    v90(v60, &v7[v91], v52);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      v67 = "### Failed to cast as Data";
      goto LABEL_25;
    }
  }

  else
  {
    v60 = v94;
    v90(v94, &v7[v91], v52);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      v67 = "### Type not Codable";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v64, v65, v67, v66, 2u);
    }
  }

  v53(v60, v52);
  v63 = 6;
LABEL_27:
  v68 = v99;
  v90(v99, &v7[v91], v52);

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v69, v70))
  {
    *v100 = v53;
    v71 = 7104878;
    v72 = swift_slowAlloc();
    v101[0] = swift_slowAlloc();
    *v72 = 136315394;
    v73 = *(v98 + 1);
    if (v73)
    {
      *&v102 = *v98;
      *(&v102 + 1) = v73;

      v74 = String.init<A>(describing:)();
      v76 = v75;
    }

    else
    {
      v76 = 0xE300000000000000;
      v74 = 7104878;
    }

    v77 = sub_100017494(v74, v76, v101);

    *(v72 + 4) = v77;
    *(v72 + 12) = 2080;
    if (v63 == 6)
    {
      v78 = 0xE300000000000000;
    }

    else
    {
      LOBYTE(v102) = v63;
      sub_100035D04(&qword_100339988, &qword_100272B60);
      v71 = String.init<A>(describing:)();
      v78 = v79;
    }

    v80 = sub_100017494(v71, v78, v101);

    *(v72 + 14) = v80;
    _os_log_impl(&_mh_execute_header, v69, v70, "Initial %s: %s", v72, 0x16u);
    swift_arrayDestroy();

    (*v100)(v99, v87);
  }

  else
  {

    v53(v68, v52);
  }

  sub_1000097E8(&v104, &unk_100339680, &qword_100278390);
  LOBYTE(a1) = v88;
  if (v63 != 6)
  {
    LOBYTE(a1) = v63;
  }

LABEL_38:
  LOBYTE(v104) = a1;
  sub_100035D04(&qword_100339978, &unk_10027AA00);
  swift_allocObject();
  *(v7 + 2) = CurrentValueSubject.init(_:)();
  LOBYTE(v104) = 6;
  sub_100035D04(&qword_100339980, &unk_100270460);
  swift_allocObject();
  *(v7 + 3) = CurrentValueSubject.init(_:)();
  return v7;
}

char *sub_1000312D0(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16)
{
  v174 = a4;
  v175 = a3;
  v170 = a2;
  v183 = a1;
  v182 = a16;
  v181 = a15;
  v180 = a14;
  v179 = a13;
  v192 = a12;
  v17 = *v16;
  v184 = a7;
  v185 = a8;
  v18 = sub_100035D04(a7, a8);
  v190 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v178 = &v152 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v163 = &v152 - v22;
  __chkstk_darwin(v21);
  v164 = &v152 - v23;
  v188 = a9;
  v189 = a10;
  v24 = sub_100035D04(a9, a10);
  v25 = __chkstk_darwin(v24 - 8);
  v177 = &v152 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v176 = &v152 - v28;
  v29 = __chkstk_darwin(v27);
  v167 = &v152 - v30;
  v31 = __chkstk_darwin(v29);
  v171 = &v152 - v32;
  v33 = __chkstk_darwin(v31);
  v160 = &v152 - v34;
  v35 = __chkstk_darwin(v33);
  v166 = &v152 - v36;
  __chkstk_darwin(v35);
  v38 = (&v152 - v37);
  v39 = type metadata accessor for Logger();
  v40 = *(v39 - 8);
  v41 = __chkstk_darwin(v39);
  v165 = &v152 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v173 = &v152 - v44;
  v45 = __chkstk_darwin(v43);
  v161 = &v152 - v46;
  v47 = __chkstk_darwin(v45);
  v162 = &v152 - v48;
  v49 = __chkstk_darwin(v47);
  v51 = &v152 - v50;
  __chkstk_darwin(v49);
  v53 = &v152 - v52;

  v54 = *(*v16 + 104);
  v55 = sub_100035D04(a11, v192);
  v56 = v16 + v54;
  v57 = v39;
  v58 = v18;
  (*(*(v55 - 8) + 56))(v56, 1, 1, v55);
  v59 = *(*v16 + 112);
  *(v16 + v59) = 0;
  v169 = *(*v16 + 120);
  *(v16 + v169) = 2;
  v60 = (v16 + *(*v16 + 128));
  *v60 = 0;
  v60[1] = 0;
  v172 = v60;
  *(v16 + *(*v16 + 136)) = 0;
  *(v16 + *(*v16 + 152)) = 0;
  *&v196 = v17;
  v61 = v58;
  v62 = v175;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v63 = *(*v16 + 144);
  v64 = *(v40 + 32);
  v191 = v16;
  v65 = v53;
  v66 = v190;
  v64(v16 + v63, v65, v57);
  v67 = *(v66 + 56);
  v192 = v38;
  v186 = v67;
  v187 = v66 + 56;
  v67(v38, 1, 1, v61);
  if (!v62)
  {
    goto LABEL_36;
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v68 = qword_10038B240;
  if (!qword_10038B240)
  {

    v66 = v190;
    goto LABEL_36;
  }

  v69 = *(v40 + 16);
  v158 = v63;
  v154 = v40 + 16;
  v157 = v69;
  v69(v51, &v191[v63], v57);
  v153 = v68;

  v70 = Logger.logObject.getter();
  v168 = v61;
  v71 = v70;
  v72 = v40;
  v73 = static os_log_type_t.default.getter();

  v74 = os_log_type_enabled(v71, v73);
  v156 = v57;
  v155 = v72;
  if (v74)
  {
    v75 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    *&v194 = v159;
    *v75 = 136315138;
    v152 = v59;
    v76 = v170;
    *&v196 = v170;
    *(&v196 + 1) = v62;
    v77 = v174 & 1;
    LOBYTE(v197) = v174 & 1;

    sub_100035D04(&qword_100339690, &qword_1002701A8);
    v78 = String.init<A>(describing:)();
    v80 = sub_100017494(v78, v79, &v194);
    v81 = v76;
    v59 = v152;

    *(v75 + 4) = v80;
    v82 = v73;
    v83 = v77;
    _os_log_impl(&_mh_execute_header, v71, v82, "Configuring userDefaultsSync: %s", v75, 0xCu);
    sub_10000903C(v159);

    v57 = v156;

    v159 = *(v155 + 8);
    v159(v51, v57);
    v84 = v172;
  }

  else
  {

    v159 = *(v72 + 8);
    v159(v51, v57);
    v83 = v174 & 1;
    v84 = v172;
    v81 = v170;
  }

  *v84 = v81;
  v84[1] = v62;

  v85 = v191;
  v191[v169] = v83;
  v86 = *&v85[v59];
  *&v85[v59] = v68;
  v87 = v153;

  v88 = String._bridgeToObjectiveC()();

  v175 = v87;
  v89 = [v87 valueForKey:v88];

  if (v89)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v194 = 0u;
    v195 = 0u;
  }

  v90 = v189;
  v66 = v190;
  v196 = v194;
  v197 = v195;

  if ((v174 & 1) == 0)
  {
    sub_100009848(&v196, &v194, &unk_100339680, &qword_100278390);
    sub_100035D04(&unk_100339680, &qword_100278390);
    v99 = v166;
    v100 = v168;
    v101 = swift_dynamicCast();
    v186(v99, v101 ^ 1u, 1, v100);
    sub_1000369A4(v99, v192, v188, v90);
    goto LABEL_26;
  }

  v91 = sub_10003667C(v168, v168, &protocol descriptor for Decodable, &protocol descriptor for Encodable);
  if (!v91)
  {
    v96 = v162;
    v157(v162, &v85[v158], v57);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      v105 = "### Type not Codable";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v102, v103, v105, v104, 2u);

LABEL_25:
      v159(v96, v57);
      goto LABEL_26;
    }

LABEL_24:

    goto LABEL_25;
  }

  v93 = v91;
  v94 = v92;
  sub_100009848(&v196, &v194, &unk_100339680, &qword_100278390);
  if (!*(&v195 + 1))
  {
    sub_1000097E8(&v194, &unk_100339680, &qword_100278390);
    v96 = v165;
LABEL_21:
    v157(v96, &v85[v158], v57);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      v105 = "### Failed to cast as Data";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v95 = swift_dynamicCast();
  v96 = v165;
  if ((v95 & 1) == 0)
  {
    goto LABEL_21;
  }

  v98 = v193[0];
  v97 = v193[1];
  __chkstk_darwin(v95);
  sub_100058D2C(v98, v97, v93, v94);
  sub_100010708(v98, v97);
  v149 = v160;
  v150 = v168;
  v151 = swift_dynamicCast();
  v186(v149, v151 ^ 1u, 1, v150);
  sub_1000369A4(v149, v192, v188, v90);
  v57 = v156;
  v84 = v172;
LABEL_26:
  v106 = v173;
  v157(v173, &v85[v158], v57);

  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = 7104878;
    v110 = swift_slowAlloc();
    v193[0] = swift_slowAlloc();
    *v110 = 136315394;
    v111 = v84[1];
    if (v111)
    {
      *&v194 = *v84;
      *(&v194 + 1) = v111;

      v112 = String.init<A>(describing:)();
      v114 = v113;
    }

    else
    {
      v114 = 0xE300000000000000;
      v112 = 7104878;
    }

    v117 = sub_100017494(v112, v114, v193);

    *(v110 + 4) = v117;
    *(v110 + 12) = 2080;
    v118 = v192;
    swift_beginAccess();
    v119 = v118;
    v120 = v171;
    v121 = v188;
    v122 = v189;
    sub_100009848(v119, v171, v188, v189);
    v123 = v120;
    v124 = v167;
    sub_100009848(v123, v167, v121, v122);
    if ((*(v66 + 48))(v124, 1, v168) == 1)
    {
      v125 = 0xE300000000000000;
    }

    else
    {
      v126 = v124;
      v127 = v164;
      v129 = v184;
      v128 = v185;
      sub_10003693C(v126, v164, v184, v185);
      sub_100009848(v127, v163, v129, v128);
      v109 = String.init<A>(describing:)();
      v125 = v130;
      v131 = v129;
      v132 = v128;
      v122 = v189;
      v66 = v190;
      sub_1000097E8(v127, v131, v132);
    }

    sub_1000097E8(v171, v188, v122);
    v133 = sub_100017494(v109, v125, v193);

    *(v110 + 14) = v133;
    _os_log_impl(&_mh_execute_header, v107, v108, "Initial %s: %s", v110, 0x16u);
    swift_arrayDestroy();

    v115 = v173;
    v116 = v156;
  }

  else
  {

    v115 = v106;
    v116 = v57;
  }

  v159(v115, v116);
  sub_1000097E8(&v196, &unk_100339680, &qword_100278390);
  v61 = v168;
LABEL_36:
  v134 = v192;
  swift_beginAccess();
  v135 = v176;
  v137 = v188;
  v136 = v189;
  sub_100009848(v134, v176, v188, v189);
  v138 = *(v66 + 48);
  if (v138(v135, 1, v61) == 1)
  {
    v139 = v183;
    v141 = v184;
    v140 = v185;
    sub_100009848(v183, v178, v184, v185);
    v142 = v61;
    v143 = v61;
    v144 = v140;
    if (v138(v135, 1, v143) != 1)
    {
      sub_1000097E8(v135, v137, v136);
    }
  }

  else
  {
    v142 = v61;
    v141 = v184;
    v144 = v185;
    sub_10003693C(v135, v178, v184, v185);
    v139 = v183;
  }

  sub_100035D04(v179, v180);
  swift_allocObject();
  v145 = CurrentValueSubject.init(_:)();
  v146 = v191;
  *(v191 + 2) = v145;
  v186(v177, 1, 1, v142);
  sub_100035D04(v181, v182);
  swift_allocObject();
  v147 = CurrentValueSubject.init(_:)();
  sub_1000097E8(v139, v141, v144);
  v146[3] = v147;
  sub_1000097E8(v192, v137, v136);
  return v146;
}

char *sub_100032500(int8x16_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  LODWORD(v113) = a4;
  v114.i64[0] = a2;
  v9 = *v6;
  v10 = a1[1];
  v115 = *a1;
  v116 = v10;
  v110 = a1;
  v11 = a1[2].i64[0];
  v12 = v9;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v107 = &v97[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v112 = &v97[-v18];
  v19 = __chkstk_darwin(v17);
  v104 = &v97[-v20];
  v21 = __chkstk_darwin(v19);
  v105 = &v97[-v22];
  v23 = __chkstk_darwin(v21);
  v25 = &v97[-v24];
  __chkstk_darwin(v23);
  v27 = &v97[-v26];

  v28 = *(*v7 + 104);
  v29 = sub_100035D04(&qword_100339A70, &qword_100270490);
  (*(*(v29 - 8) + 56))(&v7[v28], 1, 1, v29);
  v109 = *(*v7 + 112);
  *&v109[v7] = 0;
  v30 = 2;
  v108 = *(*v7 + 120);
  v108[v7] = 2;
  v111 = &v7[*(*v7 + 128)];
  v117 = 0u;
  *v111 = 0u;
  *&v7[*(*v7 + 136)] = 0;
  *&v7[*(*v7 + 152)] = 0;
  v120.i64[0] = v12;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v31 = *(*v7 + 144);
  v32 = v27;
  v33 = v13;
  (*(v14 + 32))(&v7[v31], v32, v13);
  if (!a3)
  {
    v51 = 0;
    v52 = 0;
    v54 = v115;
    v53 = v116;
    v35 = v11;
    goto LABEL_44;
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v34 = qword_10038B240;
  v35 = v11;
  v36 = v114.i64[0];
  if (!qword_10038B240)
  {

    v51 = 0;
    v52 = 0;
    v30 = 2;
    v54 = v115;
    v53 = v116;
    goto LABEL_44;
  }

  v37 = *(v14 + 16);
  v102 = v14 + 16;
  v101 = v37;
  v37(v25, &v7[v31], v33);
  v117.i64[0] = v34;
  v100 = v34;

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  v40 = os_log_type_enabled(v38, v39);
  v106 = v14;
  v103 = v31;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *&v119[0] = v99;
    *v41 = 136315138;
    v120.i64[0] = v36;
    v120.i64[1] = a3;
    v42 = v113 & 1;
    v121.i8[0] = v113 & 1;

    sub_100035D04(&qword_100339690, &qword_1002701A8);
    v43 = String.init<A>(describing:)();
    v98 = v39;
    v45 = v33;
    v46 = v35;
    v47 = sub_100017494(v43, v44, v119);

    *(v41 + 4) = v47;
    v35 = v46;
    v33 = v45;
    v48 = v42;
    _os_log_impl(&_mh_execute_header, v38, v98, "Configuring userDefaultsSync: %s", v41, 0xCu);
    sub_10000903C(v99);

    v49 = v114.i64[0];
    v50 = *(v106 + 8);
    (v50)(v25, v33);
  }

  else
  {

    v49 = v36;
    v50 = *(v14 + 8);
    (v50)(v25, v33);
    v48 = v113 & 1;
  }

  v55 = v111;
  *v111 = v49;
  v55[1] = a3;

  v108[v7] = v48;
  v56 = *&v109[v7];
  *&v109[v7] = v117.i64[0];
  v57 = v100;

  v58 = String._bridgeToObjectiveC()();

  v109 = v57;
  v59 = [v57 valueForKey:v58];

  v60 = v112;
  if (v59)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v120 = 0u;
    v121 = 0u;
  }

  v119[0] = v120;
  v119[1] = v121;

  if ((v113 & 1) == 0)
  {
    sub_100009848(v119, v118, &unk_100339680, &qword_100278390);
    sub_100035D04(&unk_100339680, &qword_100278390);
    sub_100035D04(&unk_10034B5E0, &qword_1002704A8);
    v70 = swift_dynamicCast();
    if (v70)
    {
      v52 = v122;
    }

    else
    {
      v52 = 0;
    }

    if (v70)
    {
      v71 = -1;
    }

    else
    {
      v71 = 0;
    }

    v72 = vdupq_n_s64(v71);
    v114 = vbslq_s8(v72, v121, xmmword_10026F060);
    v73 = vandq_s8(v120, v72);
    goto LABEL_32;
  }

  v61 = sub_100035D04(&unk_10034B5E0, &qword_1002704A8);
  v62 = sub_10003667C(v61, v61, &protocol descriptor for Decodable, &protocol descriptor for Encodable);
  if (v62)
  {
    v64 = v62;
    v65 = v63;
    sub_100009848(v119, &v120, &unk_100339680, &qword_100278390);
    if (v121.i64[1])
    {
      v66 = swift_dynamicCast();
      v67 = v107;
      if (v66)
      {
        v108 = v50;
        v113 = v35;
        v69 = v118[0];
        v68 = v118[1];
        __chkstk_darwin(v66);
        sub_100058D2C(v69, v68, v64, v65);
        sub_100010708(v69, v68);
        v94 = swift_dynamicCast();
        if (v94)
        {
          v52 = v122;
        }

        else
        {
          v52 = 0;
        }

        if (v94)
        {
          v95 = -1;
        }

        else
        {
          v95 = 0;
        }

        v96 = vdupq_n_s64(v95);
        v114 = vbslq_s8(v96, v121, xmmword_10026F060);
        v117 = vandq_s8(v120, v96);
        v60 = v112;
        v35 = v113;
        v55 = v111;
        v50 = v108;
        goto LABEL_33;
      }
    }

    else
    {
      sub_1000097E8(&v120, &unk_100339680, &qword_100278390);
      v67 = v107;
    }

    v101(v67, &v7[v103], v33);
    v74 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v74, v77, "### Failed to cast as Data", v78, 2u);

      (v50)(v107, v33);
      goto LABEL_31;
    }

LABEL_30:

    (v50)(v67, v33);
    goto LABEL_31;
  }

  v67 = v105;
  v101(v105, &v7[v103], v33);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v74, v75))
  {
    goto LABEL_30;
  }

  v76 = swift_slowAlloc();
  *v76 = 0;
  _os_log_impl(&_mh_execute_header, v74, v75, "### Type not Codable", v76, 2u);

  (v50)(v67, v33);
LABEL_31:
  v52 = 0;
  v114 = xmmword_10026F060;
  v73 = 0uLL;
LABEL_32:
  v117 = v73;
LABEL_33:
  v101(v60, &v7[v103], v33);

  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();

  v81 = os_log_type_enabled(v79, v80);
  v51 = v114.i64[1];
  if (v81)
  {
    v108 = v50;
    v111 = v33;
    v113 = v35;
    v82 = 7104878;
    v83 = swift_slowAlloc();
    v118[0] = swift_slowAlloc();
    *v83 = 136315394;
    v84 = v55[1];
    if (v84)
    {
      v120.i64[0] = *v55;
      v120.i64[1] = v84;

      v85 = String.init<A>(describing:)();
      v87 = v86;
    }

    else
    {
      v87 = 0xE300000000000000;
      v85 = 7104878;
    }

    v88 = sub_100017494(v85, v87, v118);

    *(v83 + 4) = v88;
    *(v83 + 12) = 2080;
    if (v114.i64[0] == 2)
    {
      v89 = 0xE300000000000000;
    }

    else
    {
      v120 = v117;
      v121 = v114;
      v122 = v52;
      sub_1000368F4(v117.i64[0], v117.i64[1], v114.i64[0], v51, v52);
      sub_100035D04(&unk_10034B5E0, &qword_1002704A8);
      v82 = String.init<A>(describing:)();
      v89 = v90;
    }

    v91 = sub_100017494(v82, v89, v118);

    *(v83 + 14) = v91;
    _os_log_impl(&_mh_execute_header, v79, v80, "Initial %s: %s", v83, 0x16u);
    swift_arrayDestroy();

    (v108)(v112, v111);
    sub_1000097E8(v119, &unk_100339680, &qword_100278390);
    v35 = v113;
  }

  else
  {

    (v50)(v60, v33);
    sub_1000097E8(v119, &unk_100339680, &qword_100278390);
  }

  v92 = v110;
  v30 = v114.i64[0];
  v54 = v115;
  v53 = v116;
  if (v114.i64[0] != 2)
  {
    sub_1000368F4(v117.i64[0], v117.i64[1], v114.i64[0], v51, v52);
    sub_1000097E8(v92, &unk_10034B5E0, &qword_1002704A8);
    v35 = v52;
    v54 = v117;
    v53 = v114;
  }

LABEL_44:
  v120 = v54;
  v121 = v53;
  v122 = v35;
  sub_100035D04(&qword_100339A78, &qword_100270498);
  swift_allocObject();
  *(v7 + 2) = CurrentValueSubject.init(_:)();
  v120 = 0uLL;
  v122 = 0;
  v121 = 2uLL;
  sub_100035D04(&unk_100339A80, &qword_1002704A0);
  swift_allocObject();
  *(v7 + 3) = CurrentValueSubject.init(_:)();
  sub_10003689C(v117.i64[0], v117.i64[1], v30, v51, v52);
  return v7;
}

char *sub_10003349C(uint64_t a1, int a2, void (*a3)(char *, uint64_t), void (*a4)(char *, uint64_t), int a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v104 = a5;
  v101 = a3;
  v12 = *v7;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v97 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v103 = &v86 - v18;
  v19 = __chkstk_darwin(v17);
  v95 = &v86 - v20;
  v21 = __chkstk_darwin(v19);
  v96 = &v86 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v86 - v24;
  __chkstk_darwin(v23);
  v27 = &v86 - v26;

  v28 = *(*v8 + 104);
  v29 = sub_100035D04(&qword_1003397F0, &qword_1002702C8);
  (*(*(v29 - 8) + 56))(&v8[v28], 1, 1, v29);
  v100 = *(*v8 + 112);
  *&v100[v8] = 0;
  v99 = *(*v8 + 120);
  v8[v99] = 2;
  v30 = &v8[*(*v8 + 128)];
  *v30 = 0;
  v30[1] = 0;
  v102 = v30;
  *&v8[*(*v8 + 136)] = 0;
  *&v8[*(*v8 + 152)] = 0;
  *&v109 = v12;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v31 = *(*v8 + 144);
  (*(v14 + 32))(&v8[v31], v27, v13);
  if (!a4)
  {
    goto LABEL_45;
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v32 = qword_10038B240;
  if (!qword_10038B240)
  {

    goto LABEL_45;
  }

  v33 = *(v14 + 16);
  v92 = v14 + 16;
  v91 = v33;
  (v33)(v25, &v8[v31], v13);
  v88 = v32;

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v94 = v13;
  v36 = v35;

  v37 = os_log_type_enabled(v34, v36);
  v98 = v14;
  v90 = a2;
  v89 = a1;
  v93 = v31;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *&v107 = v86;
    *v38 = 136315138;
    v39 = v101;
    *&v109 = v101;
    *(&v109 + 1) = a4;
    v87 = v104 & 1;
    LOBYTE(v110) = v104 & 1;

    sub_100035D04(&qword_100339690, &qword_1002701A8);
    v40 = String.init<A>(describing:)();
    v42 = sub_100017494(v40, v41, &v107);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v34, v36, "Configuring userDefaultsSync: %s", v38, 0xCu);
    sub_10000903C(v86);

    v43 = v87;

    v44 = *(v98 + 8);
    v45 = v94;
    v44(v25, v94);
  }

  else
  {

    v44 = *(v14 + 8);
    v45 = v94;
    v44(v25, v94);
    v43 = v104 & 1;
    v39 = v101;
  }

  v46 = v102;
  *v102 = v39;
  v46[1] = a4;

  v47 = v100;
  v8[v99] = v43;
  v48 = *&v47[v8];
  *&v47[v8] = v32;
  v49 = v88;

  v50 = String._bridgeToObjectiveC()();

  v100 = v49;
  v51 = [v49 valueForKey:v50];

  if (v51)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v107 = 0u;
    v108 = 0u;
  }

  v52 = v103;
  v109 = v107;
  v110 = v108;

  v101 = v44;
  if (v104)
  {
    v53 = sub_100035D04(&unk_10034B520, &qword_1002702E0);
    v54 = sub_10003667C(v53, v53, &protocol descriptor for Decodable, &protocol descriptor for Encodable);
    if (v54)
    {
      v56 = v54;
      v57 = v55;
      sub_100009848(&v109, &v107, &unk_100339680, &qword_100278390);
      if (*(&v108 + 1))
      {
        v58 = swift_dynamicCast();
        if (v58)
        {
          v60 = v105;
          v59 = v106;
          __chkstk_darwin(v58);
          sub_100058D2C(v60, v59, v56, v57);
          sub_100010708(v60, v59);
          v85 = swift_dynamicCast();
          LODWORD(v62) = (v85 & BYTE8(v107));
          if (v85)
          {
            v63 = v107;
          }

          else
          {
            v63 = 0;
          }

          v104 = v85 ^ 1;
          v46 = v102;
          v52 = v103;
          v44 = v101;
          goto LABEL_30;
        }
      }

      else
      {
        sub_1000097E8(&v107, &unk_100339680, &qword_100278390);
      }

      v67 = v97;
      v91();
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v65, v66))
      {
        goto LABEL_27;
      }

      v68 = swift_slowAlloc();
      *v68 = 0;
      v69 = "### Failed to cast as Data";
    }

    else
    {
      v64 = v96;
      (v91)(v96, &v8[v93], v45);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v65, v66))
      {

        v70 = v64;
        goto LABEL_29;
      }

      v67 = v64;
      v68 = swift_slowAlloc();
      *v68 = 0;
      v69 = "### Type not Codable";
    }

    _os_log_impl(&_mh_execute_header, v65, v66, v69, v68, 2u);

LABEL_27:

    v70 = v67;
LABEL_29:
    v44 = v101;
    v101(v70, v45);
    v63 = 0;
    LODWORD(v62) = 0;
    v104 = 1;
    goto LABEL_30;
  }

  sub_100009848(&v109, &v107, &unk_100339680, &qword_100278390);
  sub_100035D04(&unk_100339680, &qword_100278390);
  sub_100035D04(&unk_10034B520, &qword_1002702E0);
  v61 = swift_dynamicCast();
  LODWORD(v62) = (v61 & v106);
  if (v61)
  {
    v63 = v105;
  }

  else
  {
    v63 = 0;
  }

  v104 = v61 ^ 1;
LABEL_30:
  (v91)(v52, &v8[v93], v45);

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v71, v72))
  {
    LODWORD(v102) = v62;
    v73 = 7104878;
    v74 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    *v74 = 136315394;
    v75 = v46[1];
    if (v75)
    {
      *&v107 = *v46;
      *(&v107 + 1) = v75;

      v76 = String.init<A>(describing:)();
      v78 = v77;
    }

    else
    {
      v78 = 0xE300000000000000;
      v76 = 7104878;
    }

    v80 = sub_100017494(v76, v78, &v105);

    *(v74 + 4) = v80;
    *(v74 + 12) = 2080;
    v79 = v104;
    if (v104)
    {
      v62 = 0xE300000000000000;
    }

    else
    {
      *&v107 = v63;
      BYTE8(v107) = v102;
      sub_100035D04(&unk_10034B520, &qword_1002702E0);
      v73 = String.init<A>(describing:)();
      v62 = v81;
    }

    v82 = sub_100017494(v73, v62, &v105);

    *(v74 + 14) = v82;
    _os_log_impl(&_mh_execute_header, v71, v72, "Initial %s: %s", v74, 0x16u);
    swift_arrayDestroy();

    v101(v103, v94);
    sub_1000097E8(&v109, &unk_100339680, &qword_100278390);
    LOBYTE(v62) = v102;
  }

  else
  {

    v44(v52, v45);
    sub_1000097E8(&v109, &unk_100339680, &qword_100278390);
    v79 = v104;
  }

  v83 = v79 == 0;
  a1 = v89;
  if (v83)
  {
    a1 = v63;
  }

  LOBYTE(a2) = v90;
  if (v83)
  {
    LOBYTE(a2) = v62;
  }

LABEL_45:
  *&v109 = a1;
  BYTE8(v109) = a2 & 1;
  sub_100035D04(&qword_1003397F8, &qword_1002702D0);
  swift_allocObject();
  *(v8 + 2) = CurrentValueSubject.init(_:)();
  *&v109 = 0;
  WORD4(v109) = 256;
  sub_100035D04(&unk_100339800, &qword_1002702D8);
  swift_allocObject();
  *(v8 + 3) = CurrentValueSubject.init(_:)();
  return v8;
}

char *sub_1000341E8(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  LODWORD(v100) = a4;
  v97 = a2;
  v10 = *v6;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v94 = &v82[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v99 = &v82[-v16];
  v17 = __chkstk_darwin(v15);
  v92 = &v82[-v18];
  v19 = __chkstk_darwin(v17);
  v93 = &v82[-v20];
  v21 = __chkstk_darwin(v19);
  v23 = &v82[-v22];
  __chkstk_darwin(v21);
  v25 = &v82[-v24];

  v26 = *(*v7 + 104);
  v27 = sub_100035D04(&qword_1003397D8, &qword_1002702B0);
  (*(*(v27 - 8) + 56))(&v7[v26], 1, 1, v27);
  v28 = *(*v7 + 112);
  *&v7[v28] = 0;
  v96 = *(*v7 + 120);
  v7[v96] = 2;
  v29 = &v7[*(*v7 + 128)];
  *v29 = 0;
  v29[1] = 0;
  v98 = v29;
  *&v7[*(*v7 + 136)] = 0;
  *&v7[*(*v7 + 152)] = 0;
  *&v104 = v10;
  swift_getMetatypeMetadata();
  String.init<A>(describing:)();
  Logger.init(subsystem:category:)();
  v30 = *(*v7 + 144);
  (*(v12 + 32))(&v7[v30], v25, v11);
  if (!a3)
  {
    goto LABEL_38;
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v31 = qword_10038B240;
  if (!qword_10038B240)
  {

    goto LABEL_38;
  }

  v32 = *(v12 + 16);
  v88 = v12 + 16;
  v89 = v32;
  v32(v23, &v7[v30], v11);
  v84 = v31;
  v85 = v31;

  v33 = Logger.logObject.getter();
  v34 = v12;
  v35 = static os_log_type_t.default.getter();

  LODWORD(v95) = v35;
  v36 = os_log_type_enabled(v33, v35);
  v91 = v34;
  v87 = a1;
  v90 = v30;
  v86 = v11;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v102 = v38;
    *v37 = 136315138;
    v39 = v97;
    *&v104 = v97;
    *(&v104 + 1) = a3;
    v83 = v100 & 1;
    LOBYTE(v105) = v100 & 1;

    sub_100035D04(&qword_100339690, &qword_1002701A8);
    v40 = String.init<A>(describing:)();
    v42 = sub_100017494(v40, v41, &v102);
    v43 = v91;

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v33, v95, "Configuring userDefaultsSync: %s", v37, 0xCu);
    sub_10000903C(v38);

    v44 = v83;

    v45 = v86;
    v95 = *(v43 + 8);
    v95(v23, v86);
  }

  else
  {

    v95 = *(v34 + 8);
    v95(v23, v11);
    v44 = v100 & 1;
    v45 = v11;
    v39 = v97;
  }

  v46 = v98;
  *v98 = v39;
  v46[1] = a3;

  v7[v96] = v44;
  v47 = *&v7[v28];
  *&v7[v28] = v84;
  v48 = v85;

  v49 = String._bridgeToObjectiveC()();

  v50 = [v48 valueForKey:v49];

  if (v50)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v102 = 0u;
    v103 = 0u;
  }

  v51 = v95;
  v104 = v102;
  v105 = v103;

  if ((v100 & 1) == 0)
  {
    sub_100009848(&v104, &v102, &unk_100339680, &qword_100278390);
    sub_100035D04(&unk_100339680, &qword_100278390);
    if (swift_dynamicCast())
    {
      v60 = v101[0];
    }

    else
    {
      v60 = 3;
    }

    goto LABEL_27;
  }

  v52 = sub_10003667C(&type metadata for AccessControlLevel, &type metadata for AccessControlLevel, &protocol descriptor for Decodable, &protocol descriptor for Encodable);
  if (v52)
  {
    v54 = v52;
    v55 = v53;
    sub_100009848(&v104, &v102, &unk_100339680, &qword_100278390);
    if (*(&v103 + 1))
    {
      v56 = swift_dynamicCast();
      v57 = v94;
      if (v56)
      {
        v100 = v48;
        v59 = v101[0];
        v58 = v101[1];
        __chkstk_darwin(v56);
        sub_100058D2C(v59, v58, v54, v55);
        sub_100010708(v59, v58);
        if (swift_dynamicCast())
        {
          v60 = v102;
        }

        else
        {
          v60 = 3;
        }

        v46 = v98;
        v48 = v100;
        goto LABEL_27;
      }
    }

    else
    {
      sub_1000097E8(&v102, &unk_100339680, &qword_100278390);
      v57 = v94;
    }

    v89(v57, &v7[v90], v45);
    v61 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v61, v65, "### Failed to cast as Data", v66, 2u);

      v64 = v94;
      goto LABEL_26;
    }

LABEL_25:

    v64 = v57;
    goto LABEL_26;
  }

  v57 = v93;
  v89(v93, &v7[v90], v45);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v61, v62))
  {
    goto LABEL_25;
  }

  v63 = swift_slowAlloc();
  *v63 = 0;
  _os_log_impl(&_mh_execute_header, v61, v62, "### Type not Codable", v63, 2u);

  v64 = v93;
LABEL_26:
  v51(v64, v45);
  v60 = 3;
LABEL_27:
  v67 = v99;
  v89(v99, &v7[v90], v45);

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v68, v69))
  {
    v95 = v51;
    v70 = 7104878;
    v71 = swift_slowAlloc();
    v101[0] = swift_slowAlloc();
    *v71 = 136315394;
    v72 = v46[1];
    if (v72)
    {
      *&v102 = *v46;
      *(&v102 + 1) = v72;

      v73 = String.init<A>(describing:)();
      v75 = v74;
    }

    else
    {
      v75 = 0xE300000000000000;
      v73 = 7104878;
    }

    v76 = sub_100017494(v73, v75, v101);

    *(v71 + 4) = v76;
    *(v71 + 12) = 2080;
    if (v60 == 3)
    {
      v77 = 0xE300000000000000;
    }

    else
    {
      LOBYTE(v102) = v60;
      v70 = String.init<A>(describing:)();
      v77 = v78;
    }

    v79 = sub_100017494(v70, v77, v101);

    *(v71 + 14) = v79;
    _os_log_impl(&_mh_execute_header, v68, v69, "Initial %s: %s", v71, 0x16u);
    swift_arrayDestroy();

    v95(v99, v86);
  }

  else
  {

    v51(v67, v45);
  }

  sub_1000097E8(&v104, &unk_100339680, &qword_100278390);
  LOBYTE(a1) = v87;
  if (v60 != 3)
  {
    LOBYTE(a1) = v60;
  }

LABEL_38:
  LOBYTE(v104) = a1;
  sub_100035D04(&qword_1003397E0, &qword_1002702B8);
  swift_allocObject();
  *(v7 + 2) = CurrentValueSubject.init(_:)();
  LOBYTE(v104) = 3;
  sub_100035D04(&qword_1003397E8, &qword_1002702C0);
  swift_allocObject();
  *(v7 + 3) = CurrentValueSubject.init(_:)();
  return v7;
}

uint64_t variable initialization expression of ProximityHandoffService.queue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100035CB8();
  static DispatchQoS.default.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_100036094(&qword_100339328, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100035D04(&qword_100339330, &unk_10026F070);
  sub_10000E244(&qword_100339338, &qword_100339330, &unk_10026F070, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t variable initialization expression of ProximityHandoffService.handoffInteractionsManager()
{
  type metadata accessor for HandoffInteractionsManager();
  swift_allocObject();
  return sub_100129670();
}

uint64_t variable initialization expression of ProximityHandoffService.handoffSuppressionManager()
{
  type metadata accessor for HandoffSuppressionManagerState();
  v0 = swift_allocObject();
  sub_100035D04(&qword_100339340, &qword_10028C4E0);
  swift_allocObject();
  *(v0 + 16) = sub_10002B8A8(&_swiftEmptySetSingleton, 0, 0, 0, 0, 0, &qword_100339B10, &qword_1002704D0, &qword_100339B28, &qword_100289860, &qword_100339B18, &qword_1002704D8, &qword_100339B20, &unk_1002704E0);
  type metadata accessor for HandoffSuppressionManager();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t variable initialization expression of End.actions(uint64_t a1, uint64_t a2)
{
  swift_getFunctionTypeMetadata1();

  return static Array._allocateUninitialized(_:)();
}

uint64_t variable initialization expression of End.filters(uint64_t a1, uint64_t a2)
{
  swift_getFunctionTypeMetadata1();

  return static Array._allocateUninitialized(_:)();
}

uint64_t sub_1000352EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Array();
  swift_getFunctionTypeMetadata1();

  return static Array._allocateUninitialized(_:)();
}

BOOL sub_100035374(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1000353A4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1000353D0@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

Swift::Int sub_100035468()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000354B0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000354F4(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10003556C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000355EC@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10003563C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_10003677C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10003567C(uint64_t a1)
{
  v2 = sub_100036094(&qword_100339798, type metadata accessor for BNBannerRevocationReason, &unk_10026F804);
  v3 = sub_100036094(&qword_1003397A0, type metadata accessor for BNBannerRevocationReason, &unk_10026F7AC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100035738(uint64_t a1)
{
  v2 = sub_100036094(&qword_100339C10, type metadata accessor for NSKeyValueChangeKey, &unk_100270B34);
  v3 = sub_100036094(&qword_100339C18, type metadata accessor for NSKeyValueChangeKey, &unk_10027076C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000357F4(uint64_t a1)
{
  v2 = sub_100036094(&qword_1003397A8, type metadata accessor for CAMediaTimingFunctionName, &unk_10026F574);
  v3 = sub_100036094(&qword_1003397B0, type metadata accessor for CAMediaTimingFunctionName, &unk_10026F514);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000358B0(uint64_t a1)
{
  v2 = sub_100036094(&qword_100339788, type metadata accessor for EventType, &unk_10026FF54);
  v3 = sub_100036094(&qword_100339790, type metadata accessor for EventType, &unk_10026FEFC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10003596C(uint64_t a1)
{
  v2 = sub_100036094(&qword_100339778, type metadata accessor for ID, &unk_100270094);
  v3 = sub_100036094(&qword_100339780, type metadata accessor for ID, &unk_10027003C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100035A28@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100035A70(uint64_t a1)
{
  v2 = sub_100036094(&qword_100339C00, type metadata accessor for Key, &unk_100270AF4);
  v3 = sub_100036094(&qword_100339C08, type metadata accessor for Key, &unk_100270A54);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100035B2C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100035B68(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100035BBC(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100035C30(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

unint64_t sub_100035CB8()
{
  result = qword_100339320;
  if (!qword_100339320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100339320);
  }

  return result;
}

uint64_t sub_100035D04(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100035D4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SpringState(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_100035E28(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100035E34(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100035E54(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100036094(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003667C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100036704(id result, char a2)
{
  if (a2 != 254)
  {
    sub_100036718(result, a2);
  }
}

void sub_100036718(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

id sub_10003672C(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100036744(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10003677C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t *sub_100036838(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_10003689C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != 2)
  {
    sub_1000368AC(a1, a2, a3, a4, a5);
  }
}

void sub_1000368AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != 1)
  {
  }
}

void sub_1000368F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != 1)
  {
  }
}

uint64_t sub_10003693C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100035D04(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000369A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100035D04(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

__n128 sub_100036A20(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_100036A44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100036A64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

unint64_t sub_100036F54(char a1)
{
  result = 0x632E636974706168;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
    case 9:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      v3 = 5;
      goto LABEL_17;
    case 8:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      v3 = 13;
LABEL_17:
      result = v3 | 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000020;
      break;
    case 15:
      result = 0x682E6E6F69676572;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0x652E6E6F69676572;
      break;
    case 18:
      result = 0x616F6C2E64726163;
      break;
    case 19:
      result = 0x6572702E64726163;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    case 21:
      result = 0x726566736E617274;
      break;
    case 22:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100037218()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033A050);
  sub_100003078(v0, qword_10033A050);
  return Logger.init(subsystem:category:)();
}

void sub_100037298(char a1)
{
  if (qword_100338E10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033A050);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = sub_100036F54(a1);
    v8 = sub_100017494(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "@QE ProximityControl.%s", v4, 0xCu);
    sub_10000903C(v5);
  }
}

uint64_t sub_1000373EC()
{
  type metadata accessor for UserAccountPrefs();
  v0 = swift_allocObject();
  result = sub_10003748C();
  qword_10038AE70 = v0;
  return result;
}

uint64_t sub_100037428()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10003748C()
{
  type metadata accessor for UserAccountPrefBool();
  v1 = swift_allocObject();
  v2 = objc_opt_self();
  v3 = [v2 defaultStore];
  v1[3] = 0x8000000100297A10;
  v1[4] = v3;
  v1[2] = 0xD00000000000001FLL;
  *(v0 + 16) = v1;
  v4 = swift_allocObject();
  v5 = [v2 defaultStore];
  v4[3] = 0x8000000100297A40;
  v4[4] = v5;
  v4[2] = 0xD000000000000020;
  *(v0 + 24) = v4;
  return v0;
}

uint64_t sub_10003756C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000375D0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100037600(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003765C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_1000376B8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_1000376F8(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 0x6574736575716572;
    case 3:
      return 0x7463616544646964;
    case 2:
      return 0x7669746341646964;
  }

  _StringGuts.grow(_:)(25);

  if (a1)
  {
    swift_getErrorValue();
    v3 = Error.localizedDescription.getter();
    v5 = v4;
  }

  else
  {
    v5 = 0xE300000000000000;
    v3 = 7104878;
  }

  v6 = v5;
  String.append(_:)(*&v3);

  v7._countAndFlagsBits = 10528;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  return 0xD000000000000015;
}

uint64_t sub_100037838(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 3)
  {
    if (v3 == 3)
    {
      return 1;
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 1)
      {
        if (v3 != 1)
        {
          return 0;
        }
      }

      else if ((v3 - 1) < 3)
      {
        return 0;
      }

      return 1;
    }

    if (v3 == 2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100037894@<X0>(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a3 = v5;
  return result;
}

uint64_t sub_100037914(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static Published.subscript.setter();
}

uint64_t sub_10003798C()
{
  v1 = [*v0 deviceIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void sub_1000379E4()
{
  v1 = [*v0 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100037A50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(a2 + 24))(a1, a2);
  v8 = UUID.uuidString.getter();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v25 = v8;
  v26[0] = v10;
  v11 = (*(a2 + 16))(a1, a2);
  v12 = 0;
  v26[1] = v11;
  v26[2] = v13;
  v14 = _swiftEmptyArrayStorage;
LABEL_2:
  v15 = &v26[2 * v12];
  while (++v12 != 3)
  {
    v16 = v15 + 2;
    v17 = *v15;
    v15 += 2;
    if (v17)
    {
      v18 = *(v16 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_100009088(0, *(v14 + 2) + 1, 1, v14);
      }

      v20 = *(v14 + 2);
      v19 = *(v14 + 3);
      if (v20 >= v19 >> 1)
      {
        v14 = sub_100009088((v19 > 1), v20 + 1, 1, v14);
      }

      *(v14 + 2) = v20 + 1;
      v21 = &v14[16 * v20];
      *(v21 + 4) = v18;
      *(v21 + 5) = v17;
      goto LABEL_2;
    }
  }

  sub_100035D04(&qword_10033A238, &qword_10027D3E0);
  swift_arrayDestroy();
  v22 = sub_100008F34(v14);

  return v22;
}

BOOL sub_100037C7C(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (a1)
  {
    v22[3] = a2;
    v22[4] = a3;
    v6 = sub_10000F798(v22);
    (*(*(a2 - 8) + 16))(v6, v3, a2);
    sub_100009848(v22, &v17, &unk_10034B540, qword_100270E60);
    if (v18)
    {
      sub_10000E754(&v17, v19);
      v7 = v20;
      v8 = v21;
      sub_10000EBC0(v19, v20);
      v9 = *(v8 + 8);
      v10 = *(v9 + 8);
      v11 = v4;
      v12 = v10(v7, v9);
      v13 = sub_10000F0CC();
      v14 = sub_1000089FC(v13, v12);

      v15 = *(v14 + 16);

      v4 = v15 != 0;
      sub_10000903C(v19);
    }

    else
    {
      sub_1000097E8(&v17, &unk_10034B540, qword_100270E60);
      v4 = 0;
    }

    sub_1000097E8(v22, &unk_10034B540, qword_100270E60);
  }

  return v4;
}

uint64_t sub_100037DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  sub_100009848(a1, &v18, &unk_10034B540, qword_100270E60);
  if (v19)
  {
    sub_10000E754(&v18, v20);
    v13 = v21;
    v14 = v22;
    sub_10000EBC0(v20, v21);
    (*(v14 + 24))(v13, v14);
    (*(a3 + 24))(a2, a3);
    v15 = static UUID.== infix(_:_:)();
    v16 = *(v7 + 8);
    v16(v10, v6);
    v16(v12, v6);
    sub_10000903C(v20);
  }

  else
  {
    sub_1000097E8(&v18, &unk_10034B540, qword_100270E60);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_100037FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100009848(a1, &v11, &qword_10033A240, &unk_100272E70);
  if (v12)
  {
    sub_10000E754(&v11, v14);
    v6 = v15;
    v7 = v16;
    sub_10000EBC0(v14, v15);
    v12 = a2;
    v13 = a3;
    v8 = sub_10000F798(&v11);
    (*(*(a2 - 8) + 16))(v8, v3, a2);
    v9 = (*(*(v7 + 8) + 24))(&v11, v6);
    sub_1000097E8(&v11, &unk_10034B540, qword_100270E60);
    sub_10000903C(v14);
  }

  else
  {
    sub_1000097E8(&v11, &qword_10033A240, &unk_100272E70);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_100038108(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (a1)
  {
    v15[3] = a2;
    v15[4] = a3;
    v6 = sub_10000F798(v15);
    (*(*(a2 - 8) + 16))(v6, v3, a2);
    sub_100009848(v15, v12, &unk_10034B540, qword_100270E60);
    v7 = v13;
    if (v13)
    {
      v8 = v14;
      sub_10000EBC0(v12, v13);
      v9 = v4;
      sub_100008574();
      LOBYTE(v4) = sub_10015A19C(v10, v7, *(v8 + 8));

      sub_10000903C(v12);
    }

    else
    {
      sub_1000097E8(v12, &unk_10034B540, qword_100270E60);
      LOBYTE(v4) = 0;
    }

    sub_1000097E8(v15, &unk_10034B540, qword_100270E60);
  }

  return v4 & 1;
}

BOOL sub_100038248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[3] = a2;
  v19[4] = a3;
  v5 = sub_10000F798(v19);
  (*(*(a2 - 8) + 16))(v5, v3, a2);
  sub_100009848(v19, &v14, &unk_10034B540, qword_100270E60);
  if (v15)
  {
    sub_10000E754(&v14, v16);
    v7 = v17;
    v6 = v18;
    sub_10000EBC0(v16, v17);
    v8 = (*(*(v6 + 8) + 8))(v7);
    sub_1000104F8();
    v10 = sub_1000089FC(v9, v8);

    v11 = *(v10 + 16);

    v12 = v11 != 0;
    sub_10000903C(v16);
  }

  else
  {
    sub_1000097E8(&v14, &unk_10034B540, qword_100270E60);
    v12 = 0;
  }

  sub_1000097E8(v19, &unk_10034B540, qword_100270E60);
  return v12;
}

uint64_t sub_100038398()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033A248);
  sub_100003078(v0, qword_10033A248);
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_100038418()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v2 = 2;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = 0;
LABEL_5:
    Hasher._combine(_:)(v2);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1uLL);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1000384B8(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 == 2)
  {
    v3 = 2;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = 0;
LABEL_5:
    Hasher._combine(_:)(v3);
    return;
  }

  Hasher._combine(_:)(1uLL);
  if (v2)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100038558(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2 == 2)
  {
    v3 = 2;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = 0;
LABEL_5:
    Hasher._combine(_:)(v3);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1uLL);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

BOOL sub_1000385F4(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 == 2)
  {
    return v4 == 2;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if ((v4 - 1) < 2)
  {
    return 0;
  }

  if (v3)
  {
    if (v4 && (*a1 == *a2 && v3 == v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100038690(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 16);

  return v3;
}

uint64_t sub_100038710@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + 24);
  *a3 = *(v4 + 16);
  a3[1] = v5;
}

uint64_t sub_10003878C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000388BC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 32);
}

uint64_t sub_10003892C@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v4 + 32);
  return result;
}

uint64_t sub_1000389A4(uint64_t result, uint64_t a2)
{
  if (*(v2 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100038A78(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v5 = v2;
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 40);
  sub_10003A51C(v3, *(v5 + 48));
  return v3;
}

uint64_t sub_100038AFC@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  *a3 = v5;
  a3[1] = v6;
  return sub_10003A51C(v5, v6);
}

uint64_t sub_100038B78(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  if (v6 == 2)
  {
    if (a2 == 2)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  if (v6 != 1)
  {
    if ((a2 - 1) >= 2)
    {
      if (v6)
      {
        if (!a2)
        {
          goto LABEL_10;
        }

        if (v5 != a1 || v6 != a2)
        {
          v9 = *(v2 + 40);
          v10 = *(v2 + 48);
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v6 = v10;
          v12 = v11;
          v5 = v9;
          if ((v12 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        goto LABEL_6;
      }

      if (!a2)
      {
        goto LABEL_6;
      }
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_10003A534(a1, a2);
  }

  if (a2 != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;

  return sub_10003A534(v5, v6);
}

double sub_100038D0C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 56);
}

double sub_100038D7C@<D0>(uint64_t *a1@<X0>, double *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v4 + 56);
  *a3 = result;
  return result;
}

void sub_100038DF4(double a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 56) == a1)
  {
    *(v3 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100038EDC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 64);
}

uint64_t sub_100038F4C@<X0>(uint64_t *a1@<X0>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v4 + 64);
  return result;
}

uint64_t sub_100038FC4(uint64_t result, uint64_t a2)
{
  if (*(v2 + 64) == (result & 1))
  {
    *(v2 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000390A4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 65);
}

uint64_t sub_100039114@<X0>(uint64_t *a1@<X0>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v4 + 65);
  return result;
}

uint64_t sub_10003918C(uint64_t result, uint64_t a2)
{
  if (*(v2 + 65) == (result & 1))
  {
    *(v2 + 65) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_10003926C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 72);
}

uint64_t sub_1000392E0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 72), v11);
  if (result)
  {
    *(v4 + 72) = a1;
    *(v4 + 80) = a2;
    *(v4 + 88) = a3;
    *(v4 + 96) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double *sub_1000393F8(double *result, double a2, double a3, double a4, double a5)
{
  result[9] = a2;
  result[10] = a3;
  result[11] = a4;
  result[12] = a5;
  return result;
}

double sub_100039404(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 104);
}

void sub_100039474(double a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 104) == a1)
  {
    *(v3 + 104) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_100039564(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 112);
}

uint64_t sub_1000395D8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 112), v11);
  if (result)
  {
    *(v4 + 112) = a1;
    *(v4 + 120) = a2;
    *(v4 + 128) = a3;
    *(v4 + 136) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double *sub_1000396F0(double *result, double a2, double a3, double a4, double a5)
{
  result[14] = a2;
  result[15] = a3;
  result[16] = a4;
  result[17] = a5;
  return result;
}

double sub_1000396FC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + 144);
}

uint64_t sub_100039770(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 144), v11);
  if (result)
  {
    *(v4 + 144) = a1;
    *(v4 + 152) = a2;
    *(v4 + 160) = a3;
    *(v4 + 168) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double *sub_100039888(double *result, double a2, double a3, double a4, double a5)
{
  result[18] = a2;
  result[19] = a3;
  result[20] = a4;
  result[21] = a5;
  return result;
}

uint64_t sub_100039894(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  sub_10003A48C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  if (!v5)
  {
    v7 = [objc_opt_self() localizedStringForKey:22];
    goto LABEL_7;
  }

  if (v5 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v3 + 40);
    if (v5 == 2)
    {
      v7 = [objc_opt_self() localizedStringForKey:11];
LABEL_7:
      v8 = v7;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  sub_10003A51C(v4, v5);
  return v6;
}

uint64_t sub_1000399A4(double a1)
{
  v1 = type metadata accessor for AnimationCompletionCriteria();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338E20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10033A248);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100017494(0xD000000000000010, 0x8000000100297C50, v11);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000903C(v9);
  }

  Transaction.init(animation:)();
  withTransaction<A>(_:_:)();

  static Animation.linear(duration:)();

  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100039C38(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 48) == 1)
  {
    *(result + 40) = 0;
    if ((*(result + 64) & 1) == 0)
    {
LABEL_3:
      *(v2 + 64) = 0;
      goto LABEL_6;
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if ((*(v2 + 64) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v4 = swift_getKeyPath();
  __chkstk_darwin(v4);
  sub_10003A48C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_6:
  if (*(v2 + 56) == 0.0)
  {
    *(v2 + 56) = 0;
  }

  else
  {
    v5 = swift_getKeyPath();
    __chkstk_darwin(v5);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100039E70(uint64_t result, uint64_t a2)
{
  if (*(result + 56) == 1.0)
  {
    *(result + 56) = 0x3FF0000000000000;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100039F64(uint64_t a1)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100039FDC(uint64_t result, uint64_t a2)
{
  if (*(result + 65) == 1)
  {
    *(result + 65) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003A48C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10003A0CC()
{

  sub_10003A534(v0[5], v0[6]);
  sub_10002689C(v0[25], v0[26]);
  v1 = OBJC_IVAR____TtC17proximitycontrold20DwellBannerViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DwellBannerViewModel(uint64_t a1)
{
  result = qword_10033A290;
  if (!qword_10033A290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003A1D4(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10003A2B0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003A2D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003A33C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_10003A38C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_10003A3CC()
{
  result = qword_10033A660;
  if (!qword_10033A660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033A660);
  }

  return result;
}

unint64_t sub_10003A48C()
{
  result = qword_10033A668[0];
  if (!qword_10033A668[0])
  {
    type metadata accessor for DwellBannerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_10033A668);
  }

  return result;
}

double sub_10003A4E4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 56) = result;
  return result;
}

uint64_t sub_10003A51C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_10003A534(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

__n128 sub_10003A54C()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 144) = result;
  *(v1 + 160) = v3;
  return result;
}

__n128 sub_10003A560()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 112) = result;
  *(v1 + 128) = v3;
  return result;
}

double sub_10003A574()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 104) = result;
  return result;
}

__n128 sub_10003A584()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 72) = result;
  *(v1 + 88) = v3;
  return result;
}

uint64_t sub_10003A59C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  *(v2 + 40) = v1;
  *(v2 + 48) = v3;
  sub_10003A51C(v1, v3);
  return sub_10003A534(v4, v5);
}

uint64_t sub_10003A5F4()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_10003A694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10003A6D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10003A6E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10003A72C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10003A7B4(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 initializeBufferWithCopyOfBuffer for XPCConnectionManager.ReconnectPolicy(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10003A7E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10003A82C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_10003A870(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_10003A898(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      _StringGuts.grow(_:)(18);

      strcpy(v12, "failed( error=");
      HIBYTE(v12[1]) = -18;
      swift_getErrorValue();
      v7._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v7);

LABEL_18:
      v11._countAndFlagsBits = 10528;
      v11._object = 0xE200000000000000;
      String.append(_:)(v11);
      return v12[0];
    }

    _StringGuts.grow(_:)(19);

    v12[0] = 0x20286465696E6564;
    v12[1] = 0xEF3D6E6F73616572;
LABEL_17:
    v10._countAndFlagsBits = a1;
    v10._object = a2;
    String.append(_:)(v10);
    goto LABEL_18;
  }

  if (a3 == 2)
  {
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v5 = 0x8000000100297C90;
    v6 = 0xD000000000000013;
    goto LABEL_8;
  }

  if (a3 == 3)
  {
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v5 = 0x8000000100297C70;
    v6 = 0xD000000000000012;
LABEL_8:
    v12[0] = v6;
    v12[1] = v5;
    goto LABEL_17;
  }

  if (a1 <= 1)
  {
    if (a1 | a2)
    {
      return 0x69746E6573657270;
    }

    else
    {
      return 0x6574736575716572;
    }
  }

  else
  {
    if (a1 ^ 3 | a2)
    {
      v8 = 0x74756F656D6974;
    }

    else
    {
      v8 = 0x646570706174;
    }

    if (a1 ^ 2 | a2)
    {
      return v8;
    }

    else
    {
      return 0x65746E6573657270;
    }
  }
}

BOOL sub_10003AAFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 <= 1)
  {
    if (*(a1 + 16))
    {
      if (v3 == 1)
      {
        return 1;
      }
    }

    else if (!*(a2 + 16))
    {
      return 1;
    }

    return 0;
  }

  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 != 3)
  {
    v5 = *a2;
    v4 = a2[1];
    v6 = *a1;
    v7 = a1[1];
    if (*a1 <= 1)
    {
      if (!(v6 | v7))
      {
        return v3 == 4 && !(v4 | v5);
      }

      if (v3 != 4 || v5 != 1)
      {
        return 0;
      }
    }

    else if (v6 ^ 2 | v7)
    {
      if (v6 ^ 3 | v7)
      {
        if (v3 != 4 || v5 != 4)
        {
          return 0;
        }
      }

      else if (v3 != 4 || v5 != 3)
      {
        return 0;
      }
    }

    else if (v3 != 4 || v5 != 2)
    {
      return 0;
    }

    return !v4;
  }

  return v3 == 3;
}

uint64_t sub_10003ABEC()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033A6F0);
  sub_100003078(v0, qword_10033A6F0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10003AC68(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10003ACDC()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10038AE78);
  v1 = sub_100003078(v0, qword_10038AE78);
  if (qword_100338E28 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10033A6F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10003ADA4()
{
  v138 = sub_100035D04(&qword_10033AAC0, &qword_1002716F8);
  v135 = *(v138 - 8);
  v1 = __chkstk_darwin(v138);
  v140 = &v125[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = __chkstk_darwin(v1);
  v133 = &v125[-v4];
  v139 = v5;
  __chkstk_darwin(v3);
  v132 = &v125[-v6];
  v7 = sub_100035D04(&qword_10033AAC8, &qword_100271700);
  __chkstk_darwin(v7 - 8);
  v136 = &v125[-v8];
  v9 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v10 = *(v9 - 1);
  v11 = __chkstk_darwin(v9);
  v131 = &v125[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v129 = &v125[-v14];
  __chkstk_darwin(v13);
  v16 = &v125[-v15];
  v17 = sub_100035D04(&qword_10033AAD8, &unk_100271710);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v125[-v19];
  v21 = v0;
  *(v0 + 2) = 0;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v22 = qword_10038B5B8;
  *(v0 + 3) = qword_10038B5B8;
  *(v0 + 4) = _swiftEmptyArrayStorage;
  sub_100035D04(&qword_10033AAE0, &qword_100273180);
  swift_allocObject();
  v23 = v22;
  *(v0 + 5) = PassthroughSubject.init()();
  v24 = OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine__state;
  v147[0] = 1;
  Published.init(initialValue:)();
  (*(v18 + 32))(&v0[v24], v20, v17);
  *&v0[OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_deferralTask] = 0;
  *&v0[OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_tasks] = &_swiftEmptySetSingleton;
  v25 = OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_log;
  if (qword_100338E28 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_100003078(v26, qword_10033A6F0);
  v28 = *(*(v26 - 8) + 16);
  v143 = v21;
  v28(v21 + v25, v27, v26);
  sub_100035D04(&qword_10033AAE8, &qword_100271720);
  v146 = *(v10 + 72);
  v29 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v30 = swift_allocObject();
  v130 = v30;
  *(v30 + 16) = xmmword_1002713E0;
  v31 = v30 + v29;
  v32 = v9[18];
  v16[v32] = 1;
  v33 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  swift_storeEnumTagMultiPayload();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v36 = v34 + 56;
  v145 = v33;
  v35(&v16[v32], 0, 1, v33);
  v37 = v35;
  v16[v9[20]] = 1;
  v16[8] = 0;
  *v16 = _swiftEmptyArrayStorage;
  *&v16[v9[19]] = _swiftEmptyArrayStorage;
  v38 = &v16[v9[21]];
  *v38 = variable initialization expression of PCUserAlertDefinition.allowHomeDismiss;
  v38[1] = 0;
  v141 = variable initialization expression of PCUserAlertDefinition.allowHomeDismiss;
  sub_10003EA3C(&off_100300520, v31);
  sub_1000097E8(v16, &qword_10033AAD0, &qword_100271708);
  v35(&v16[v9[18]], 1, 1, v33);
  v144 = v35;
  v16[v9[20]] = 1;
  v16[8] = 5;
  *v16 = _swiftEmptyArrayStorage;
  *&v16[v9[19]] = _swiftEmptyArrayStorage;
  v39 = &v16[v9[21]];
  *v39 = variable initialization expression of PCUserAlertDefinition.allowHomeDismiss;
  v39[1] = 0;
  v40 = v146;
  sub_10003BFCC(v143, v31 + v146);
  sub_1000097E8(v16, &qword_10033AAD0, &qword_100271708);
  v41 = 2 * v40;
  v42 = v31 + 2 * v40;
  v43 = v31;
  v137 = v31;
  v44 = v136;
  v45 = v145;
  swift_storeEnumTagMultiPayload();
  v37(v44, 0, 1, v45);
  v142 = v36;
  sub_100009848(v44, v42 + v9[18], &qword_10033AAC8, &qword_100271700);
  *(v42 + v9[20]) = 1;
  *(v42 + 8) = 5;
  *v42 = _swiftEmptyArrayStorage;
  *(v42 + v9[19]) = _swiftEmptyArrayStorage;
  v46 = (v42 + v9[21]);
  v47 = v141;
  *v46 = v141;
  v46[1] = 0;
  sub_1000097E8(v44, &qword_10033AAC8, &qword_100271700);
  v48 = v146;
  v49 = v43 + v41 + v146;
  v50 = v145;
  swift_storeEnumTagMultiPayload();
  v51 = v144;
  v144(v44, 0, 1, v50);
  sub_100009848(v44, v49 + v9[18], &qword_10033AAC8, &qword_100271700);
  *(v49 + v9[20]) = 0;
  *(v49 + 8) = 4;
  *v49 = _swiftEmptyArrayStorage;
  *(v49 + v9[19]) = _swiftEmptyArrayStorage;
  v52 = (v49 + v9[21]);
  *v52 = v47;
  v52[1] = 0;
  sub_1000097E8(v44, &qword_10033AAC8, &qword_100271700);
  v53 = v9[18];
  swift_storeEnumTagMultiPayload();
  v54 = v51;
  v51(&v16[v53], 0, 1, v50);
  v16[v9[20]] = 2;
  v16[8] = 0;
  *v16 = _swiftEmptyArrayStorage;
  *&v16[v9[19]] = _swiftEmptyArrayStorage;
  v55 = &v16[v9[21]];
  *v55 = v47;
  v55[1] = 0;
  v56 = v137;
  sub_10003EA3C(&off_100300548, v137 + 4 * v48);
  sub_1000097E8(v16, &qword_10033AAD0, &qword_100271708);
  v57 = v9[18];
  swift_storeEnumTagMultiPayload();
  v54(&v16[v57], 0, 1, v50);
  v16[v9[20]] = 2;
  v16[8] = 3;
  *v16 = _swiftEmptyArrayStorage;
  *&v16[v9[19]] = _swiftEmptyArrayStorage;
  v58 = &v16[v9[21]];
  *v58 = v47;
  v58[1] = 0;
  v59 = swift_allocObject();
  swift_weakInit();

  sub_10003C390(sub_10003ED28, v59, v56 + 5 * v48);

  sub_1000097E8(v16, &qword_10033AAD0, &qword_100271708);
  v60 = v56 + 6 * v48;
  v61 = v56;
  v62 = v9[18];
  v63 = v145;
  swift_storeEnumTagMultiPayload();
  v64 = v144;
  v144(&v16[v62], 0, 1, v63);
  v16[v9[20]] = 3;
  v16[8] = 0;
  *v16 = _swiftEmptyArrayStorage;
  *&v16[v9[19]] = _swiftEmptyArrayStorage;
  v65 = &v16[v9[21]];
  *v65 = v47;
  v65[1] = 0;
  sub_10003EA3C(&off_100300570, v60);
  sub_1000097E8(v16, &qword_10033AAD0, &qword_100271708);
  v66 = 8 * v146;
  v67 = 7 * v146;
  v128 = 8 * v146;
  v64(&v16[v9[18]], 1, 1, v63);
  v16[v9[20]] = 4;
  v16[8] = 5;
  *v16 = _swiftEmptyArrayStorage;
  *&v16[v9[19]] = _swiftEmptyArrayStorage;
  v68 = &v16[v9[21]];
  *v68 = v47;
  v68[1] = 0;
  sub_10003BFCC(v143, v61 + v67);
  sub_1000097E8(v16, &qword_10033AAD0, &qword_100271708);
  v127 = v61 + v66;
  v64(&v16[v9[18]], 1, 1, v63);
  v16[v9[20]] = 4;
  v16[8] = 3;
  *v16 = _swiftEmptyArrayStorage;
  *&v16[v9[19]] = _swiftEmptyArrayStorage;
  v69 = &v16[v9[21]];
  *v69 = v47;
  v69[1] = 0;
  v70 = v129;
  sub_100009848(v16, v129, &qword_10033AAD0, &qword_100271708);
  v71 = v132;
  *v132 = *v70;
  v72 = v138;
  sub_100009848(v70, v71 + *(v138 + 40), &qword_10033AAD0, &qword_100271708);
  v73 = (v71 + *(v72 + 44));
  *v73 = sub_10003DF1C;
  v73[1] = 0;
  v74 = *&v70[v9[19]];

  sub_1000097E8(v70, &qword_10033AAD0, &qword_100271708);
  v71[1] = v74;
  v75 = v133;
  sub_100009848(v71, v133, &qword_10033AAC0, &qword_1002716F8);
  v76 = v75 + *(v72 + 40);
  v126 = v76[v9[20]];
  LOBYTE(v63) = v76[8];
  v77 = v127;
  sub_100009848(&v76[v9[18]], v127 + v9[18], &qword_10033AAC8, &qword_100271700);
  v78 = v140;
  sub_100009848(v75, v140, &qword_10033AAC0, &qword_1002716F8);
  v79 = *(v135 + 80);
  v80 = (v79 + 16) & ~v79;
  v134 = v80;
  v135 = v79;
  v81 = swift_allocObject();
  sub_10003693C(v78, v81 + v80, &qword_10033AAC0, &qword_1002716F8);
  v82 = v77;
  *(v77 + v9[20]) = v126;
  *(v77 + 8) = v63;
  v83 = v9[19];
  v84 = (v82 + v9[21]);
  v85 = v82;
  *v84 = sub_10001223C;
  v84[1] = v81;
  v86 = v75[1];
  *v82 = *v75;

  sub_1000097E8(v75, &qword_10033AAC0, &qword_1002716F8);
  *(v85 + v83) = v86;
  sub_1000097E8(v71, &qword_10033AAC0, &qword_1002716F8);
  sub_1000097E8(v16, &qword_10033AAD0, &qword_100271708);
  v128 += v146;
  v144(&v70[v9[18]], 1, 1, v145);
  v70[v9[20]] = 4;
  v70[8] = 2;
  *v70 = _swiftEmptyArrayStorage;
  *&v70[v9[19]] = _swiftEmptyArrayStorage;
  v87 = &v70[v9[21]];
  *v87 = v141;
  v87[1] = 0;
  v88 = v131;
  sub_10003693C(v70, v131, &qword_10033AAD0, &qword_100271708);
  *v71 = *v88;
  v89 = v138;
  sub_100009848(v88, v71 + *(v138 + 40), &qword_10033AAD0, &qword_100271708);
  v90 = (v71 + *(v89 + 44));
  *v90 = sub_10003DC48;
  v90[1] = 0;
  v91 = *(v88 + v9[19]);

  sub_1000097E8(v88, &qword_10033AAD0, &qword_100271708);
  v71[1] = v91;
  sub_10003693C(v71, v75, &qword_10033AAC0, &qword_1002716F8);
  v92 = v75 + *(v89 + 40);
  LODWORD(v127) = v92[v9[20]];
  v126 = v92[8];
  sub_100009848(&v92[v9[18]], &v16[v9[18]], &qword_10033AAC8, &qword_100271700);
  v93 = v140;
  sub_100009848(v75, v140, &qword_10033AAC0, &qword_1002716F8);
  v94 = v134;
  v95 = swift_allocObject();
  sub_10003693C(v93, v95 + v94, &qword_10033AAC0, &qword_1002716F8);
  v16[v9[20]] = v127;
  v16[8] = v126;
  v96 = v9[19];
  v97 = &v16[v9[21]];
  *v97 = sub_10003F1EC;
  v97[1] = v95;
  v98 = v75[1];
  *v16 = *v75;

  sub_1000097E8(v75, &qword_10033AAC0, &qword_1002716F8);
  *&v16[v96] = v98;
  v99 = swift_allocObject();
  swift_weakInit();

  v100 = v137;
  sub_10003C390(sub_10003EF60, v99, v137 + v128);

  sub_1000097E8(v16, &qword_10033AAD0, &qword_100271708);
  v128 = v100 + 10 * v146;
  v144(&v70[v9[18]], 1, 1, v145);
  v70[v9[20]] = 4;
  v70[8] = 0;
  *v70 = _swiftEmptyArrayStorage;
  *&v70[v9[19]] = _swiftEmptyArrayStorage;
  v101 = &v70[v9[21]];
  *v101 = v141;
  v101[1] = 0;
  sub_10003693C(v70, v88, &qword_10033AAD0, &qword_100271708);
  *v71 = *v88;
  v102 = v138;
  sub_100009848(v88, v71 + *(v138 + 40), &qword_10033AAD0, &qword_100271708);
  v103 = v102;
  v104 = (v71 + *(v102 + 44));
  *v104 = sub_10003DC60;
  v104[1] = 0;
  v105 = *(v88 + v9[19]);

  sub_1000097E8(v88, &qword_10033AAD0, &qword_100271708);
  v71[1] = v105;
  sub_10003693C(v71, v75, &qword_10033AAC0, &qword_1002716F8);
  v106 = v75 + *(v103 + 40);
  LOBYTE(v103) = v106[v9[20]];
  LOBYTE(v88) = v106[8];
  sub_100009848(&v106[v9[18]], &v16[v9[18]], &qword_10033AAC8, &qword_100271700);
  v107 = v140;
  sub_100009848(v75, v140, &qword_10033AAC0, &qword_1002716F8);
  v108 = v134;
  v109 = swift_allocObject();
  sub_10003693C(v107, v109 + v108, &qword_10033AAC0, &qword_1002716F8);
  v16[v9[20]] = v103;
  v16[8] = v88;
  v110 = v9[19];
  v111 = &v16[v9[21]];
  *v111 = sub_10003F1EC;
  v111[1] = v109;
  v112 = v75[1];
  *v16 = *v75;

  sub_1000097E8(v75, &qword_10033AAC0, &qword_1002716F8);
  *&v16[v110] = v112;
  sub_10003EA3C(&off_100300598, v128);
  sub_1000097E8(v16, &qword_10033AAD0, &qword_100271708);
  v113 = v145;
  v114 = v146;
  v115 = v137;
  v140 = (v137 + 11 * v146);
  v116 = v9[18];
  v16[v116] = 1;
  swift_storeEnumTagMultiPayload();
  v117 = v144;
  v144(&v16[v116], 0, 1, v113);
  v16[v9[20]] = 5;
  v16[8] = 0;
  *v16 = _swiftEmptyArrayStorage;
  *&v16[v9[19]] = _swiftEmptyArrayStorage;
  v118 = &v16[v9[21]];
  v119 = v141;
  *v118 = v141;
  v118[1] = 0;
  sub_10003EA3C(&off_1003005C0, v140);
  sub_1000097E8(v16, &qword_10033AAD0, &qword_100271708);
  v120 = v115 + 12 * v114;
  v121 = v136;
  *v136 = 0;
  swift_storeEnumTagMultiPayload();
  v117(v121, 0, 1, v113);
  sub_100009848(v121, v120 + v9[18], &qword_10033AAC8, &qword_100271700);
  *(v120 + v9[20]) = 5;
  *(v120 + 8) = 1;
  *v120 = _swiftEmptyArrayStorage;
  *(v120 + v9[19]) = _swiftEmptyArrayStorage;
  v122 = (v120 + v9[21]);
  *v122 = v119;
  v122[1] = 0;
  sub_1000097E8(v121, &qword_10033AAC8, &qword_100271700);
  v123 = v143;
  *(v143 + 32) = v130;

  return v123;
}

uint64_t sub_10003BFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a1;
  v5 = sub_100035D04(&qword_10033AAC0, &qword_1002716F8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = (&v28 - v7);
  v9 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v10 = (v9 - 8);
  v31 = *(v9 - 8);
  v11 = *(v31 + 64);
  v12 = __chkstk_darwin(v9);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v28 - v14;
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  sub_100009848(v3, v15, &qword_10033AAD0, &qword_100271708);
  *v8 = *v15;
  sub_100009848(v15, v8 + *(v6 + 48), &qword_10033AAD0, &qword_100271708);
  v18 = (v8 + *(v6 + 52));
  *v18 = sub_100011E5C;
  v18[1] = 0;
  v19 = *&v15[v10[21]];

  sub_1000097E8(v15, &qword_10033AAD0, &qword_100271708);
  v8[1] = v19;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10003C620(sub_10003EF90, v20, v17);

  sub_1000097E8(v8, &qword_10033AAC0, &qword_1002716F8);
  sub_100009848(v17, v15, &qword_10033AAD0, &qword_100271708);
  LOBYTE(v20) = v15[v10[22]];
  LOBYTE(v19) = v15[8];
  sub_100009848(&v15[v10[20]], a2 + v10[20], &qword_10033AAC8, &qword_100271700);
  v21 = v29;
  sub_100009848(v15, v29, &qword_10033AAD0, &qword_100271708);
  v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v23 = swift_allocObject();
  sub_10003693C(v21, v23 + v22, &qword_10033AAD0, &qword_100271708);
  *(a2 + v10[22]) = v20;
  *(a2 + 8) = v19;
  v24 = v10[21];
  v25 = (a2 + v10[23]);
  *v25 = sub_10003F1F0;
  v25[1] = v23;
  *a2 = *v15;
  v26 = *&v15[v24];

  sub_1000097E8(v15, &qword_10033AAD0, &qword_100271708);
  *(a2 + v24) = v26;
  return sub_1000097E8(v17, &qword_10033AAD0, &qword_100271708);
}

uint64_t sub_10003C338(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10003CF44(result);
  }

  return result;
}

uint64_t sub_10003C390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v27 = a2;
  v5 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v6 = (v5 - 8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v5);
  v10 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  sub_100009848(v3, &v26 - v11, &qword_10033AAD0, &qword_100271708);
  v13 = v12[v6[22]];
  v14 = v12[8];
  sub_100009848(&v12[v6[20]], a3 + v6[20], &qword_10033AAC8, &qword_100271700);
  sub_100009848(v12, v10, &qword_10033AAD0, &qword_100271708);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_10003693C(v10, v16 + v15, &qword_10033AAD0, &qword_100271708);
  *(a3 + v6[22]) = v13;
  *(a3 + 8) = v14;
  v17 = v6[21];
  v18 = (a3 + v6[23]);
  *v18 = sub_1000122C4;
  v18[1] = v16;
  v19 = *v12;
  v20 = *&v12[v17];

  sub_1000097E8(v12, &qword_10033AAD0, &qword_100271708);
  *(a3 + v17) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v26;
  *(v21 + 24) = v27;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000AFAB0(0, v19[2] + 1, 1, v19);
    v19 = result;
  }

  v24 = v19[2];
  v23 = v19[3];
  if (v24 >= v23 >> 1)
  {
    result = sub_1000AFAB0((v23 > 1), v24 + 1, 1, v19);
    v19 = result;
  }

  v19[2] = v24 + 1;
  v25 = &v19[2 * v24];
  v25[4] = sub_10003EF68;
  v25[5] = v21;
  *a3 = v19;
  return result;
}

uint64_t sub_10003C620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v30 = a2;
  v5 = sub_100035D04(&qword_10033AAC0, &qword_1002716F8);
  v6 = v5 - 8;
  v28 = *(v5 - 8);
  v7 = *(v28 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = (&v27 - v10);
  sub_100009848(v3, &v27 - v10, &qword_10033AAC0, &qword_1002716F8);
  v12 = v11 + *(v6 + 48);
  v13 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v14 = v12[v13[20]];
  v15 = v12[8];
  sub_100009848(&v12[v13[18]], a3 + v13[18], &qword_10033AAC8, &qword_100271700);
  sub_100009848(v11, v9, &qword_10033AAC0, &qword_1002716F8);
  v16 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v17 = swift_allocObject();
  sub_10003693C(v9, v17 + v16, &qword_10033AAC0, &qword_1002716F8);
  *(a3 + v13[20]) = v14;
  *(a3 + 8) = v15;
  v18 = v13[19];
  v19 = (a3 + v13[21]);
  *v19 = sub_10003F1EC;
  v19[1] = v17;
  v21 = *v11;
  v20 = v11[1];

  sub_1000097E8(v11, &qword_10033AAC0, &qword_1002716F8);
  *(a3 + v18) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = v29;
  *(v22 + 24) = v30;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000AFAB0(0, v21[2] + 1, 1, v21);
    v21 = result;
  }

  v25 = v21[2];
  v24 = v21[3];
  if (v25 >= v24 >> 1)
  {
    result = sub_1000AFAB0((v24 > 1), v25 + 1, 1, v21);
    v21 = result;
  }

  v21[2] = v25 + 1;
  v26 = &v21[2 * v25];
  v26[4] = sub_10003F1E8;
  v26[5] = v22;
  *a3 = v21;
  return result;
}

BOOL sub_10003C8CC(uint64_t a1)
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  *(&v16 - v6) = 0;
  v8 = *(v2 + 104);
  v8(&v16 - v6, enum case for DispatchTimeInterval.seconds(_:), v1);
  v9 = enum case for DispatchTimeInterval.never(_:);
  v8(v5, enum case for DispatchTimeInterval.never(_:), v1);
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = *(v2 + 8);
  v11(v5, v1);
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v8(v5, v9, v1);
    v13 = static DispatchTimeInterval.== infix(_:_:)();
    v11(v5, v1);
    if (v13)
    {
      v12 = 1;
    }

    else
    {
      v14 = sub_1001F80B8();
      v12 = v14 < sub_1001F80B8();
    }
  }

  v11(v7, v1);
  return v12;
}

uint64_t sub_10003CAA8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100035D04(&qword_10033AAA0, &qword_1002716E0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v18 - v14;
  sub_1000120BC(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    return sub_100010B48(v9);
  }

  sub_10003693C(v9, v15, &qword_10033AAA0, &qword_1002716E0);
  sub_100009848(v15, v13, &qword_10033AAA0, &qword_1002716E0);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    sub_1000097E8(v15, &qword_10033AAA0, &qword_1002716E0);
    v16 = v13;
  }

  else
  {
    (*(v4 + 32))(v6, v13, v3);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10003D600(v6);
    }

    (*(v4 + 8))(v6, v3);
    v16 = v15;
  }

  return sub_1000097E8(v16, &qword_10033AAA0, &qword_1002716E0);
}

BOOL sub_10003CD68(uint64_t a1)
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v16 - v6;
  *(&v16 - v6) = 0;
  v8 = *(v2 + 104);
  v8(&v16 - v6, enum case for DispatchTimeInterval.seconds(_:), v1);
  v9 = enum case for DispatchTimeInterval.never(_:);
  v8(v5, enum case for DispatchTimeInterval.never(_:), v1);
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = *(v2 + 8);
  v11(v5, v1);
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v8(v5, v9, v1);
    v13 = static DispatchTimeInterval.== infix(_:_:)();
    v11(v5, v1);
    if (v13)
    {
      v12 = 0;
    }

    else
    {
      v14 = sub_1001F80B8();
      v12 = v14 >= sub_1001F80B8();
    }
  }

  v11(v7, v1);
  return v12;
}

uint64_t sub_10003CF44(uint64_t a1)
{
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Timeout cancelled", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_deferralTask;
  if (*(v2 + OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_deferralTask))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(v2 + v6) = 0;
}

uint64_t sub_10003D028()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v0);
  v1 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10003F17C;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100302A00;
  _Block_copy(aBlock);
  sub_10003E8E0(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v2 = DispatchWorkItem.init(flags:block:)();

  return v2;
}

void sub_10003D1F8(uint64_t a1)
{
  v1 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  __chkstk_darwin(v1);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100035D04(&qword_10033AAF8, &qword_100271808);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v11 = *(qword_10038B0B8 + 1552);
  v12 = sub_1000031CC();

  if (v12)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v20[5] = Strong;
      (*(v8 + 16))(v10, Strong + OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_log, v7);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Timeout firing", v16, 2u);
      }

      (*(v8 + 8))(v10, v7);
      swift_storeEnumTagMultiPayload();
      sub_1000114E0(v3, v6);
      sub_100010B48(v3);
      sub_1000097E8(v6, &qword_10033AAF8, &qword_100271808);
    }

    else
    {
      if (qword_100338E28 != -1)
      {
        swift_once();
      }

      sub_100003078(v7, qword_10033A6F0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "### Nil self at timeout", v19, 2u);
      }
    }
  }
}

uint64_t sub_10003D600(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  v35 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v33 = &v29 - v7;
  v8 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = *(v9 + 16);
  v34 = a1;
  v15(&v29 - v13, a1, v8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v4;
    v19 = v18;
    v30 = swift_slowAlloc();
    v36 = v30;
    *v19 = 136315138;
    v15(v12, v14, v8);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    (*(v9 + 8))(v14, v8);
    v23 = sub_100017494(v20, v22, &v36);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Scheduling timeout: %s", v19, 0xCu);
    sub_10000903C(v30);

    v4 = v31;
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  *(v2 + OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_deferralTask) = sub_10003D028();

  v24 = *(v2 + 24);
  v25 = v32;
  static DispatchTime.now()();
  v26 = v33;
  + infix(_:_:)();
  v27 = *(v35 + 8);
  v27(v25, v4);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v27)(v26, v4);
}

uint64_t sub_10003D97C()
{

  v1 = OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine__state;
  v2 = sub_100035D04(&qword_10033AAD8, &unk_100271710);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_log;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_10003DA68()
{
  sub_10003D97C();

  return swift_deallocClassInstance();
}

Swift::Int sub_10003DAC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10003DB08(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_10003DB50()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10003DB94(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10003DBD4(char *a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10003DC78(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100035D04(&qword_10033AAA0, &qword_1002716E0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v19 - v15;
  sub_1000120BC(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_10003693C(v10, v16, &qword_10033AAA0, &qword_1002716E0);
    sub_100009848(v16, v14, &qword_10033AAA0, &qword_1002716E0);
    if ((*(v5 + 48))(v14, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v14, v4);
      v17 = a2(v7);
      (*(v5 + 8))(v7, v4);
      sub_1000097E8(v16, &qword_10033AAA0, &qword_1002716E0);
      return v17 & 1;
    }

    sub_1000097E8(v16, &qword_10033AAA0, &qword_1002716E0);
    sub_1000097E8(v14, &qword_10033AAA0, &qword_1002716E0);
  }

  else
  {
    sub_100010B48(v10);
  }

  v17 = 0;
  return v17 & 1;
}

BOOL sub_10003DF1C(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100035D04(&qword_10033AAA0, &qword_1002716E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  sub_1000120BC(a1, v4);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_10003693C(v4, v7, &qword_10033AAA0, &qword_1002716E0);
    v8 = type metadata accessor for DispatchTimeInterval();
    v9 = (*(*(v8 - 8) + 48))(v7, 1, v8) == 1;
    sub_1000097E8(v7, &qword_10033AAA0, &qword_1002716E0);
  }

  else
  {
    sub_100010B48(v4);
    return 0;
  }

  return v9;
}

void sub_10003E08C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  __chkstk_darwin(v3);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000120BC(a1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v5;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = *(Strong + 16);
      *(Strong + 16) = v6;
    }

    else
    {
    }
  }

  else
  {
    sub_100010B48(v5);
  }
}

uint64_t RPMediaAccessControlSetting.description.getter(uint64_t a1)
{
  sub_10003E19C(a1);

  return String.init(cString:)();
}

const char *sub_10003E19C(unsigned int a1)
{
  if (a1 > 3)
  {
    return "?";
  }

  else
  {
    return off_100302A28[a1];
  }
}

uint64_t sub_10003E1C0()
{
  sub_10003E19C(*v0);

  return String.init(cString:)();
}

void sub_10003E1F4(uint64_t a1)
{
  sub_10003E2FC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10003E2FC()
{
  if (!qword_10033A758)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10033A758);
    }
  }
}

uint64_t getEnumTagSinglePayload for ContextDeliveryModeStateMachine.Output(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ContextDeliveryModeStateMachine.Output(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_10003E484(uint64_t a1)
{
  sub_10003E520();
  if (v1 <= 0x3F)
  {
    sub_100003118(319, &qword_10034A350, NIDiscoveryToken_ptr);
    if (v2 <= 0x3F)
    {
      sub_10003E550();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void *sub_10003E520()
{
  result = qword_10033A968;
  if (!qword_10033A968)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_10033A968);
  }

  return result;
}

void sub_10003E550()
{
  if (!qword_10033A970)
  {
    sub_10003E598(0);
    if (!v1)
    {
      atomic_store(v0, &qword_10033A970);
    }
  }
}

void sub_10003E598(uint64_t a1)
{
  if (!qword_10033A978)
  {
    type metadata accessor for DispatchTimeInterval();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10033A978);
    }
  }
}

uint64_t getEnumTagSinglePayload for DiscoveryTokenStateMachine.TokenState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DiscoveryTokenStateMachine.TokenState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003E740(uint64_t a1)
{
  result = sub_10003E768();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003E768()
{
  result = qword_10033A9A8;
  if (!qword_10033A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033A9A8);
  }

  return result;
}

uint64_t sub_10003E7C0(uint64_t a1)
{
  result = sub_10003E8E0(&qword_10033A9B0, type metadata accessor for DiscoveryTokenStateMachine.Input, &unk_10027156C);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003E818(uint64_t a1)
{
  result = sub_10003E840();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003E840()
{
  result = qword_10033A9B8;
  if (!qword_10033A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033A9B8);
  }

  return result;
}

uint64_t sub_10003E8E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10003E92C()
{
  result = qword_10033A9C8;
  if (!qword_10033A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033A9C8);
  }

  return result;
}

unint64_t sub_10003E984()
{
  result = qword_10033A9D0;
  if (!qword_10033A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033A9D0);
  }

  return result;
}

uint64_t sub_10003E9E4(uint64_t a1)
{
  result = sub_10003E8E0(&qword_10033AA98, type metadata accessor for DiscoveryTokenStateMachine, &unk_10027165C);
  *(a1 + 8) = result;
  return result;
}

char *sub_10003EA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[1] = a1;
  v5 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v6 = (v5 - 8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v5);
  v10 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v22 - v11;
  sub_100009848(v3, v22 - v11, &qword_10033AAD0, &qword_100271708);
  v13 = v12[v6[22]];
  v14 = v12[8];
  sub_100009848(&v12[v6[20]], a2 + v6[20], &qword_10033AAC8, &qword_100271700);
  sub_100009848(v12, v10, &qword_10033AAD0, &qword_100271708);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_10003693C(v10, v16 + v15, &qword_10033AAD0, &qword_100271708);
  *(a2 + v6[22]) = v13;
  *(a2 + 8) = v14;
  v17 = v6[21];
  v18 = (a2 + v6[23]);
  *v18 = sub_10003F1F0;
  v18[1] = v16;
  *a2 = *v12;
  v19 = *&v12[v17];

  sub_1000097E8(v12, &qword_10033AAD0, &qword_100271708);
  *(a2 + v17) = v19;

  return sub_1000B3400(v20);
}

uint64_t sub_10003EC34@<X0>(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a3 = v5;
  return result;
}

uint64_t sub_10003ECB4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10003ED30()
{
  v1 = sub_100035D04(&qword_10033AAC0, &qword_1002716F8);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 40);

  v6 = *(sub_100035D04(&qword_10033AAD0, &qword_100271708) + 72);
  v7 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  if (!(*(*(v7 - 8) + 48))(v5 + v6, 1, v7))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      v9 = type metadata accessor for DispatchTimeInterval();
      v11 = *(v9 - 8);
      if (!(*(v11 + 48))(v5 + v6, 1, v9))
      {
        (*(v11 + 8))(v5 + v6, v9);
      }
    }

    else if (EnumCaseMultiPayload == 1)
    {
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003EF98()
{
  v1 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 72);
  v7 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v3 + v6, 1, v7))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      v9 = type metadata accessor for DispatchTimeInterval();
      v10 = *(v9 - 8);
      if (!(*(v10 + 48))(v5 + v6, 1, v9))
      {
        (*(v10 + 8))(v5 + v6, v9);
      }
    }

    else if (EnumCaseMultiPayload == 1)
    {
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_10003F184()
{
  result = qword_10033D8D0;
  if (!qword_10033D8D0)
  {
    sub_100035D4C(&unk_100343710, &qword_100271800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033D8D0);
  }

  return result;
}

uint64_t sub_10003F1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Loader.State(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003F2A4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033AB00);
  sub_100003078(v0, qword_10033AB00);
  return Logger.init(subsystem:category:)();
}

char *sub_10003F318()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100338E38 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10033AB00);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Deinit", v6, 2u);
  }

  v7 = *(*v1 + 96);
  v10 = type metadata accessor for Loader.State(0, *(v2 + 80), v8, v9);
  (*(*(v10 - 8) + 8))(&v1[v7], v10);

  return v1;
}

uint64_t sub_10003F49C()
{
  sub_10003F318();

  return swift_deallocClassInstance();
}

uint64_t sub_10003F52C(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_10003F588(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_10003F75C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

__n128 sub_10003F9CC@<Q0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042354(qword_10033A668, type metadata accessor for DwellBannerViewModel, &unk_100271068);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v4 + 72);
  v6 = *(v4 + 88);
  *a3 = result;
  *(a3 + 16) = v6;
  return result;
}

double sub_10003FAA4@<D0>(uint64_t *a1@<X0>, double *a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042354(qword_10033A668, type metadata accessor for DwellBannerViewModel, &unk_100271068);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v4 + 104);
  *a3 = result;
  return result;
}

__n128 sub_10003FB74@<Q0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042354(qword_10033A668, type metadata accessor for DwellBannerViewModel, &unk_100271068);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v4 + 112);
  v6 = *(v4 + 128);
  *a3 = result;
  *(a3 + 16) = v6;
  return result;
}

__n128 sub_10003FC48@<Q0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100042354(qword_10033A668, type metadata accessor for DwellBannerViewModel, &unk_100271068);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v4 + 144);
  v6 = *(v4 + 160);
  *a3 = result;
  *(a3 + 16) = v6;
  return result;
}

id sub_10003FDDC(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

id sub_10003FE38()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033AE20, &qword_1002719C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  (*(v3 + 16))(&v8 - v4, v1 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_eventContinuation, v2);
  AsyncStream.Continuation.finish()();
  (*(v3 + 8))(v5, v2);
  v6 = type metadata accessor for DwellBannerPresenter(0);
  v8.receiver = v1;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, "dealloc");
}

id sub_1000401CC()
{
  v43.receiver = v0;
  v43.super_class = type metadata accessor for DwellBannerPresenter(0);
  objc_msgSendSuper2(&v43, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_childViewController];
  [v0 addChildViewController:v1];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = result;
  [v3 addSubview:result];

  result = [v0 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [v1 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [v1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = result;
  v8 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor:v8];

  sub_100035D04(&qword_10033AE40, &qword_1002719E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100271880;
  result = [v1 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = result;
  v11 = [result topAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = result;
  v13 = [result topAnchor];

  v14 = [v11 constraintEqualToAnchor:v13];
  *(v9 + 32) = v14;
  result = [v1 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = result;
  v16 = [result bottomAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = result;
  v18 = [result bottomAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  *(v9 + 40) = v19;
  result = [v1 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = result;
  v21 = [result leadingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22 = result;
  v23 = [result leadingAnchor];

  v24 = [v21 constraintEqualToAnchor:v23];
  *(v9 + 48) = v24;
  result = [v1 view];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v25 = result;
  v26 = [result trailingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v27 = result;
  v28 = [result trailingAnchor];

  v29 = [v26 constraintEqualToAnchor:v28];
  *(v9 + 56) = v29;
  result = [v1 view];
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v30 = result;
  v31 = [result heightAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v32 = result;
  v33 = [result SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

  v34 = [v33 heightAnchor];
  v35 = [v31 constraintEqualToAnchor:v34];

  *(v9 + 64) = v35;
  v36 = objc_opt_self();
  sub_10004239C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:isa];

  [v1 didMoveToParentViewController:v0];
  result = [v1 view];
  if (result)
  {
    v38 = result;
    [result intrinsicContentSize];
    v40 = v39;
    v42 = v41;

    return [v0 setPreferredContentSize:{v40, v42}];
  }

LABEL_33:
  __break(1u);
  return result;
}

void sub_1000408E0(void *a1, uint64_t a2)
{
  v3 = v2;
  if (v2[OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_experienceType])
  {
    goto LABEL_19;
  }

  v5 = *&v2[OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_viewModel];
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC17proximitycontrold20DwellBannerViewModel___observationRegistrar;
  aBlock[0] = v5;
  sub_100042354(qword_10033A668, type metadata accessor for DwellBannerViewModel, &unk_100271068);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52.origin.x = 0.0;
  v52.origin.y = 0.0;
  v52.size.width = 0.0;
  v52.size.height = 0.0;
  if (!CGRectEqualToRect(*(v5 + 72), v52))
  {
    goto LABEL_19;
  }

  v7 = [v3 view];
  if (!v7)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = v7;
  v9 = [v7 SBUISA_systemApertureObstructedAreaLayoutGuide];

  [v9 layoutFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v53.origin.x = v11;
  v53.origin.y = v13;
  v53.size.width = v15;
  v53.size.height = v17;
  if (CGRectEqualToRect(*(v5 + 72), v53))
  {
    *(v5 + 72) = v11;
    *(v5 + 80) = v13;
    *(v5 + 88) = v15;
    *(v5 + 96) = v17;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    aBlock[0] = v5;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v19 = [v3 view];
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = v19;
  [v19 SBUISA_maximumAccessoryViewWidth];
  v22 = v21;

  if (*(v5 + 104) == v22)
  {
    *(v5 + 104) = v22;
  }

  else
  {
    v23 = swift_getKeyPath();
    __chkstk_darwin(v23);
    aBlock[0] = v5;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v24 = [v3 view];
  if (!v24)
  {
    goto LABEL_22;
  }

  v25 = v24;
  v26 = [v24 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

  [v26 layoutFrame];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v54.origin.x = v28;
  v54.origin.y = v30;
  v54.size.width = v32;
  v54.size.height = v34;
  if (CGRectEqualToRect(*(v5 + 112), v54))
  {
    *(v5 + 112) = v28;
    *(v5 + 120) = v30;
    *(v5 + 128) = v32;
    *(v5 + 136) = v34;
  }

  else
  {
    v35 = swift_getKeyPath();
    __chkstk_darwin(v35);
    aBlock[0] = v5;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v36 = [v3 view];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

    [v38 layoutFrame];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v55.origin.x = v40;
    v55.origin.y = v42;
    v55.size.width = v44;
    v55.size.height = v46;
    if (CGRectEqualToRect(*(v5 + 144), v55))
    {
      *(v5 + 144) = v40;
      *(v5 + 152) = v42;
      *(v5 + 160) = v44;
      *(v5 + 168) = v46;
    }

    else
    {
      v47 = swift_getKeyPath();
      __chkstk_darwin(v47);
      aBlock[0] = v5;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

LABEL_19:
    v48 = swift_allocObject();
    *(v48 + 16) = v3;
    aBlock[4] = sub_100041594;
    aBlock[5] = v48;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000028F8;
    aBlock[3] = &unk_100302B98;
    v49 = _Block_copy(aBlock);
    v50 = v3;

    [a1 animateAlongsideTransition:v49 completion:0];
    _Block_release(v49);
    return;
  }

LABEL_23:
  __break(1u);
}

id sub_100040EB8(uint64_t a1, char *a2)
{
  result = [*&a2[OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_childViewController] view];
  if (result)
  {
    v4 = result;
    [result intrinsicContentSize];
    v6 = v5;
    v8 = v7;

    return [a2 setPreferredContentSize:{v6, v8}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100040FE8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_unknownObjectRetain();
  v6 = a1;
  a4();
  swift_unknownObjectRelease();
}

uint64_t sub_1000410E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_100035D04(&qword_10033AE20, &qword_1002719C8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - v10;
  v12 = sub_100035D04(&qword_10033AE28, &qword_1002719D0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v18 - v14;
  result = (*(v9 + 16))(v11, a1 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_eventContinuation, v8);
  if (a4)
  {
    v18[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18[2] = v17;
    v19 = a5;
    AsyncStream.Continuation.yield(_:)();
    (*(v9 + 8))(v11, v8);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for DwellBannerPresenter(uint64_t a1)
{
  result = qword_10033ADF0;
  if (!qword_10033ADF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100041350(uint64_t a1)
{
  sub_1000414E8(319, &qword_10033AE00, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_1000414E8(319, &qword_10033AE08, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      sub_10004153C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000414E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for GenericBannerEvent);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10004153C(uint64_t a1)
{
  if (!qword_10033AE10)
  {
    type metadata accessor for ContinuousClock.Instant();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10033AE10);
    }
  }
}

void sub_10004169C()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033AE50, &qword_1002719E8);
  v25 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v22 - v3;
  v5 = sub_100035D04(&qword_10033AE20, &qword_1002719C8);
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = sub_100035D04(&qword_10033AE58, &unk_1002719F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = (v0 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_requesterIdentifier);
  *v12 = static String._fromUTF8Repairing(_:)();
  v12[1] = v13;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_activeLayoutMode) = 1;
  swift_unknownObjectWeakInit();
  if (qword_100338E90 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    if (byte_10038AFB0 == 1)
    {
      if (qword_100338F18 != -1)
      {
        swift_once();
      }

      v14 = *(qword_10038B0B8 + 888);
      v15 = sub_10005F4D0();
    }

    else
    {
      v15 = 1;
    }

    *(v1 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_experienceType) = v15 & 1;
    static String._fromUTF8Repairing(_:)();
    v16 = String._bridgeToObjectiveC()();

    v17 = [objc_opt_self() bannerSourceForDestination:0 forRequesterIdentifier:v16];

    if (v17)
    {
      break;
    }

    __break(1u);
LABEL_9:
    swift_once();
  }

  *(v1 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_bannerSource) = v17;
  v18 = OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_eventStream;
  v23 = OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_eventContinuation;
  v19 = v25;
  (*(v25 + 104))(v4, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v2);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v19 + 8))(v4, v2);
  (*(v9 + 32))(v1 + v18, v11, v8);
  (*(v24 + 32))(v1 + v23, v7, v5);
  v20 = OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_endTime;
  v21 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  *(v1 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_posted) = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_presenting) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100041B00()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100035D04(&qword_10033AE28, &qword_1002719D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v8 - v6;
  v8 = xmmword_10026F060;
  v9 = 4;
  sub_100035D04(&qword_10033AE20, &qword_1002719C8);
  AsyncStream.Continuation.yield(_:)();
  (*(v5 + 8))(v7, v4);
  static OSSignpostID.exclusive.getter();
  static os_signpost_type_t.end.getter();
  if (qword_100338F20 != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v1 + 8))(v3, v0);
  sub_100037298(7);
}

uint64_t sub_100041D4C()
{
  v1 = sub_100035D04(&qword_10033AE30, &qword_1002719D8);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for ContinuousClock.Instant();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = sub_100035D04(&qword_10033AE28, &qword_1002719D0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  v19 = xmmword_100271890;
  v20 = 4;
  sub_100035D04(&qword_10033AE20, &qword_1002719C8);
  AsyncStream.Continuation.yield(_:)();
  (*(v12 + 8))(v14, v11);
  sub_100037298(6);
  *(v0 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_presenting) = 1;
  sub_10004227C(v0 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_endTime, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000422EC(v3);
  }

  (*(v5 + 32))(v10, v3, v4);
  static ContinuousClock.Instant.now.getter();
  sub_100042354(&qword_10033AE38, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  v16 = dispatch thunk of static Comparable.< infix(_:_:)();
  v17 = *(v5 + 8);
  v17(v8, v4);
  if (v16)
  {
    static ContinuousClock.Instant.now.getter();
    ContinuousClock.Instant.duration(to:)();
    v17(v8, v4);
    Duration.seconds.getter();
    sub_1000399A4(v18);
  }

  return (v17)(v10, v4);
}

uint64_t sub_1000420A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_10033AE20, &qword_1002719C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - v6;
  v8 = sub_100035D04(&qword_10033AE28, &qword_1002719D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - v10;
  result = (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_eventContinuation, v4);
  if (a1)
  {
    v14[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14[2] = v13;
    v15 = 2;
    AsyncStream.Continuation.yield(_:)();
    (*(v5 + 8))(v7, v4);
    result = (*(v9 + 8))(v11, v8);
    *(v2 + OBJC_IVAR____TtC17proximitycontrold20DwellBannerPresenter_presenting) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004227C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033AE30, &qword_1002719D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000422EC(uint64_t a1)
{
  v2 = sub_100035D04(&qword_10033AE30, &qword_1002719D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100042354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10004239C()
{
  result = qword_10033AE48;
  if (!qword_10033AE48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10033AE48);
  }

  return result;
}

uint64_t sub_100042408(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 0x6574736575716572;
    case 3:
      return 0x6574656C706D6F63;
    case 2:
      return 0x6E61676562;
  }

  v10[4] = v1;
  v10[5] = v2;
  _StringGuts.grow(_:)(17);

  strcpy(v10, "error( error=");
  HIWORD(v10[1]) = -4864;
  if (a1)
  {
    swift_errorRetain();
    sub_100035D04(&unk_100346020, &qword_100271A00);
    v5 = String.init<A>(describing:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 7104878;
  }

  v8 = v7;
  String.append(_:)(*&v5);

  v9._countAndFlagsBits = 10528;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  return v10[0];
}

uint64_t sub_100042544(void *a1)
{
  v2 = [a1 eventType];
  if (!v2)
  {
    return [a1 error];
  }

  if (v2 == 1)
  {
    return 2;
  }

  if (v2 == 2)
  {
    return 3;
  }

  sub_10001618C();
  result = swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 11;
  return result;
}

uint64_t sub_1000425DC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t Edge2.end.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));

  return v2;
}

uint64_t Edge2.actions.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);

  *(v2 + v4) = a1;
  return result;
}

uint64_t Edge2.filters.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 68);

  *(v2 + v4) = a1;
  return result;
}

uint64_t Edge2.outputs.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);

  *(v2 + v4) = a1;
  return result;
}

uint64_t Edge2.init(_:to:trigger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v37 = a7;
  v38 = a8;
  v40 = a6;
  v41 = a3;
  v36 = a5;
  v42 = a2;
  v43 = a1;
  v39 = a9;
  v10 = type metadata accessor for Optional();
  v33 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v32 - v14;
  v34 = &v32 - v14;
  v16 = *(a4 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v13);
  v19 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v35 = &v32 - v20;
  v21 = *(v16 + 16);
  v21();
  (*(v11 + 16))(v15, v41, v10);
  (v21)(v19, v42, a4);
  v22 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v23 = (v12 + *(v16 + 80) + v22) & ~*(v16 + 80);
  v24 = swift_allocObject();
  v25 = v36;
  v26 = v37;
  *(v24 + 2) = a4;
  *(v24 + 3) = v25;
  *(v24 + 4) = v40;
  *(v24 + 5) = v26;
  v27 = v38;
  *(v24 + 6) = v38;
  v28 = &v24[v22];
  v29 = v33;
  (*(v11 + 32))(v28, v34, v33);
  (*(v16 + 32))(&v24[v23], v19, a4);
  Edge2.init(start:end:)(v35, sub_100042E54, v24, a4, v25, v40, v26, v27, v39);
  (*(v11 + 8))(v41, v29);
  v30 = *(v16 + 8);
  v30(v42, a4);
  return (v30)(v43, a4);
}

uint64_t sub_100042AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v40 = a9;
  v41 = a8;
  v38 = a6;
  v39 = a7;
  v36[1] = a1;
  v37 = a3;
  v12 = *(a4 - 8);
  __chkstk_darwin(a1);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v36 - v18;
  v20 = *(a5 - 8);
  __chkstk_darwin(v17);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a2, v15);
  if ((*(v20 + 48))(v19, 1, a5) == 1)
  {
    (*(v16 + 8))(v19, v15);
    (*(v12 + 16))(v14, v37, a4);
    v24 = v39;
    v23 = v40;
    v25 = v38;
    v26 = v41;
    End.init(_:)(v14, a4, a5, v38, v39, v41, v40);
    v42 = a4;
    v43 = a5;
    v44 = v25;
    v45 = v24;
    v46 = v26;
    v27 = type metadata accessor for End(0, &v42);
    v28 = 0;
    v29 = v23;
  }

  else
  {
    v31 = v37;
    v30 = v38;
    (*(v20 + 32))(v22, v19, a5);
    v32 = v41;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      (*(v12 + 16))(v14, v31, a4);
      v33 = v39;
      v34 = v40;
      End.init(_:)(v14, a4, a5, v30, v39, v32, v40);
      (*(v20 + 8))(v22, a5);
      v42 = a4;
      v43 = a5;
      v44 = v30;
      v45 = v33;
      v46 = v32;
      v27 = type metadata accessor for End(0, &v42);
      v29 = v34;
      v28 = 0;
    }

    else
    {
      (*(v20 + 8))(v22, a5);
      v42 = a4;
      v43 = a5;
      v44 = v30;
      v45 = v39;
      v46 = v32;
      v27 = type metadata accessor for End(0, &v42);
      v28 = 1;
      v29 = v40;
    }
  }

  return (*(*(v27 - 8) + 56))(v29, v28, 1);
}

uint64_t sub_100042E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = *(type metadata accessor for Optional() - 8);
  v11 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v12 = v2 + ((v11 + *(v10 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80));

  return sub_100042AAC(a1, v2 + v11, v12, v5, v6, v7, v8, v9, a2);
}

uint64_t Edge2.init(start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a8;
  v14 = type metadata accessor for Edge2(0, v20);
  v15 = v14[16];
  swift_getFunctionTypeMetadata1();
  *(a9 + v15) = static Array._allocateUninitialized(_:)();
  v16 = v14[17];
  swift_getFunctionTypeMetadata1();
  *(a9 + v16) = static Array._allocateUninitialized(_:)();
  v17 = v14[18];
  type metadata accessor for Array();
  swift_getFunctionTypeMetadata1();
  *(a9 + v17) = static Array._allocateUninitialized(_:)();
  result = (*(*(a4 - 8) + 32))(a9, a1, a4);
  v19 = (a9 + v14[15]);
  *v19 = a2;
  v19[1] = a3;
  return result;
}

uint64_t Edge2.init(_:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v24 = a9;
  v17 = *(a4 - 8);
  __chkstk_darwin(a1);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a1, v20);
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a8;
  v21[7] = a2;
  v21[8] = a3;
  Edge2.init(start:end:)(v19, sub_100043A6C, v21, a4, a5, a6, a7, a8, v24);
  return (*(v17 + 8))(a1, a4);
}

uint64_t sub_100043228@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v34 = a6;
  v35 = a7;
  v32 = a4;
  v33 = a5;
  v36 = a8;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = *(a3 - 8);
  v17 = __chkstk_darwin(v13);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v32 - v20;
  a2(a1);
  if ((*(v16 + 48))(v15, 1, a3) == 1)
  {
    (*(v12 + 8))(v15, v11);
    v37 = a3;
    v38 = v32;
    v39 = v33;
    v40 = v34;
    v41 = v35;
    v22 = type metadata accessor for End(0, &v37);
    v23 = 1;
    v24 = v36;
  }

  else
  {
    (*(v16 + 32))(v21, v15, a3);
    (*(v16 + 16))(v19, v21, a3);
    v25 = v36;
    v26 = v19;
    v28 = v32;
    v27 = v33;
    v30 = v34;
    v29 = v35;
    End.init(_:)(v26, a3, v32, v33, v34, v35, v36);
    (*(v16 + 8))(v21, a3);
    v37 = a3;
    v38 = v28;
    v39 = v27;
    v40 = v30;
    v41 = v29;
    v22 = type metadata accessor for End(0, &v37);
    v23 = 0;
    v24 = v25;
  }

  return (*(*(v22 - 8) + 56))(v24, v23, 1);
}

uint64_t Edge2.init(_:trigger:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v39 = a8;
  v40 = a3;
  v35 = a7;
  v41 = a4;
  v42 = a9;
  v37 = a2;
  v38 = a1;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  v36 = a10;
  v16 = __chkstk_darwin(a1);
  v17 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v16);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v19 + 16);
  v34 = v23;
  v22(v21);
  (*(v14 + 16))(v17, a2, a6);
  v24 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v25 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = a5;
  *(v26 + 3) = a6;
  v27 = v39;
  *(v26 + 4) = a7;
  *(v26 + 5) = v27;
  v28 = v36;
  *(v26 + 6) = v36;
  (*(v14 + 32))(&v26[v24], v17, a6);
  v29 = &v26[v25];
  v30 = v41;
  *v29 = v40;
  v29[1] = v30;
  v31 = v34;
  Edge2.init(start:end:)(v21, sub_100043A80, v26, v34, a6, v35, v27, v28, v42);
  (*(v14 + 8))(v37, a6);
  return (*(v19 + 8))(v38, v31);
}

uint64_t sub_100043740@<X0>(uint64_t a1@<X0>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return a3(a1);
  }

  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a9;
  v17 = type metadata accessor for End(0, v18);
  return (*(*(v17 - 8) + 56))(a8, 1, 1, v17);
}

BOOL sub_100043820(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v6 = *(a2 + 32);
  v14[0] = *(a2 + 16);
  v14[1] = v6;
  v15 = v5;
  v7 = type metadata accessor for End(255, v14);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - v10;
  (*(v2 + *(a2 + 60)))(a1);
  v12 = (*(*(v7 - 8) + 48))(v11, 1, v7) != 1;
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t Edge2.asEdges()(uint64_t a1)
{
  type metadata accessor for _ContiguousArrayStorage();
  v3 = *(a1 - 8);
  swift_allocObject();
  v4 = static Array._adoptStorage(_:count:)();
  (*(v3 + 16))(v5, v1, a1);
  type metadata accessor for Array();
  return v4;
}

uint64_t sub_100043B14(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100043B68(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_100043FCC();
    if (v3 <= 0x3F)
    {
      swift_getFunctionTypeMetadata1();
      result = type metadata accessor for Array();
      if (v4 <= 0x3F)
      {
        swift_getFunctionTypeMetadata1();
        result = type metadata accessor for Array();
        if (v5 <= 0x3F)
        {
          type metadata accessor for Array();
          swift_getFunctionTypeMetadata1();
          result = type metadata accessor for Array();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100043C9C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_100043DF0(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_100043FCC()
{
  result = qword_10033AF58;
  if (!qword_10033AF58)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10033AF58);
  }

  return result;
}

uint64_t sub_10004401C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033AF60);
  sub_100003078(v0, qword_10033AF60);
  return Logger.init(subsystem:category:)();
}

char *sub_1000440A0()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold16BacklightMonitor_backlight;
  v2 = [objc_opt_self() sharedBacklight];
  *&v0[v1] = v2;
  v3 = [v2 backlightState];
  v4 = OBJC_IVAR____TtC17proximitycontrold16BacklightMonitor__backlightState;
  sub_100035D04(&unk_10033B020, &unk_100271B80);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = v3;
  *&v0[v4] = v5;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for BacklightMonitor();
  v6 = objc_msgSendSuper2(&v8, "init");
  [*&v6[OBJC_IVAR____TtC17proximitycontrold16BacklightMonitor_backlight] addObserver:v6];
  return v6;
}

id sub_100044194()
{
  [*&v0[OBJC_IVAR____TtC17proximitycontrold16BacklightMonitor_backlight] removeObserver:v0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BacklightMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100044348(uint64_t a1)
{
  result = sub_100044370();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100044370()
{
  result = qword_10033B010;
  if (!qword_10033B010)
  {
    type metadata accessor for BacklightMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033B010);
  }

  return result;
}

double sub_1000443C4(void *a1, void *a2)
{
  v3 = v2;
  if (qword_100338E40 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033AF60);
  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_100017494(0xD000000000000025, 0x80000001002983A0, &v21);
    *(v10 + 12) = 2080;
    type metadata accessor for BLSBacklightState(0);
    v11 = String.init<A>(describing:)();
    v13 = sub_100017494(v11, v12, &v21);

    *(v10 + 14) = v13;
    *(v10 + 22) = 2080;
    if (a2)
    {
      sub_10004461C();
      v14 = v7;
      v15 = String.init<A>(describing:)();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = sub_100017494(v15, v17, &v21);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: backlightState=%s, event=%s", v10, 0x20u);
    swift_arrayDestroy();
  }

  v19 = *(v3 + OBJC_IVAR____TtC17proximitycontrold16BacklightMonitor__backlightState);
  *(v19 + 24) = a1;

  sub_10005E680();
  v21 = *(v19 + 24);
  CurrentValueSubject.send(_:)();

  return result;
}

unint64_t sub_10004461C()
{
  result = qword_10033B018;
  if (!qword_10033B018)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10033B018);
  }

  return result;
}

uint64_t sub_100044668()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033B030);
  sub_100003078(v0, qword_10033B030);
  return Logger.init(subsystem:category:)();
}

void sub_100044714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_requesterIdentifier];
  *v10 = static String._fromUTF8Repairing(_:)();
  v10[1] = v11;
  v12 = OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_presentableUserInfo;
  *&v4[v12] = sub_10024D3B8(_swiftEmptyArrayStorage);
  static String._fromUTF8Repairing(_:)();
  v13 = String._bridgeToObjectiveC()();

  v14 = [objc_opt_self() bannerSourceForDestination:0 forRequesterIdentifier:v13];

  if (v14)
  {
    *&v5[OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_bannerSource] = v14;
    if (qword_100338E48 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003078(v15, qword_10033B030);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Init", v18, 2u);
    }

    v19 = &v5[OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_requestIdentifier];
    *v19 = a1;
    *(v19 + 1) = a2;
    v20 = &v5[OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_actionHandler];
    *v20 = a3;
    *(v20 + 1) = a4;
    sub_100003118(0, &unk_10033B100, UIButton_ptr);

    v21 = sub_1001D444C(0x7568742E646E6168, 0xEF6E776F6473626DLL);
    v22 = sub_1001D444C(0x7568742E646E6168, 0xED0000707573626DLL);
    v23 = [objc_allocWithZone(PLPillView) initWithLeadingAccessoryView:v21 trailingAccessoryView:v22];
    *&v5[OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_pillView] = v23;
    v52.receiver = v5;
    v52.super_class = type metadata accessor for HandoffFeedbackBannerPresenter();
    v24 = objc_msgSendSuper2(&v52, "initWithNibName:bundle:", 0, 0);
    [v21 addTarget:v24 action:"thumbsDown" forControlEvents:64];
    [v22 addTarget:v24 action:"thumbsUp" forControlEvents:64];
    v25 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v24 action:"bannerTap"];
    v26 = OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_pillView;
    v51 = v25;
    [*&v24[OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_pillView] addGestureRecognizer:?];
    v27 = *&v24[v26];
    sub_100035D04(&qword_10033AE40, &qword_1002719E0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100271B90;
    v29 = objc_allocWithZone(PLPillContentItem);
    v30 = v27;
    v31 = String._bridgeToObjectiveC()();
    v32 = [v29 initWithText:v31];

    *(v28 + 32) = v32;
    v33 = objc_allocWithZone(PLPillContentItem);
    v34 = String._bridgeToObjectiveC()();
    v35 = [v33 initWithText:v34 style:5];

    *(v28 + 40) = v35;
    sub_100003118(0, &qword_10033B110, PLPillContentItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v30 setCenterContentItems:isa];

    v37 = [*&v24[v26] leadingAccessoryView];
    if (v37)
    {
      v38 = v37;
      [v37 setHidden:0];
    }

    v39 = [*&v24[v26] trailingAccessoryView];
    if (v39)
    {
      v40 = v39;
      [v39 setHidden:0];
    }

    [*&v24[v26] setAutoresizingMask:18];
    v41 = *&v24[v26];
    v42 = [v24 view];
    if (v42)
    {

      [v42 bounds];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      [v41 setFrame:{v44, v46, v48, v50}];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_100044CB4()
{
  v1 = v0;
  if (qword_100338E48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033B030);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for HandoffFeedbackBannerPresenter();
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100044E70()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_bannerSource];
  v17 = 0;
  v3 = [v2 layoutDescriptionWithError:&v17];
  if (v3)
  {
    v4 = v3;
    v5 = v17;
    [v4 presentationSize];
    v7 = v6;
    v9 = v8;
    [v4 containerSize];
    [v1 preferredContentSizeWithPresentationSize:v7 containerSize:{v9, v10, v11}];
    [v1 setPreferredContentSize:?];
    sub_10024D3B8(_swiftEmptyArrayStorage);
    sub_100035D04(&qword_10033B118, qword_100271BF0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v17 = 0;
    v13 = [v2 postPresentable:v1 options:1 userInfo:isa error:&v17];

    if (v13)
    {
      v14 = v17;
    }

    else
    {
      v16 = v17;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v15 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100045048()
{
  v1 = *(v0 + OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_bannerSource);
  v2 = String._bridgeToObjectiveC()();
  if (qword_100339008 != -1)
  {
    swift_once();
  }

  v3 = qword_10038B178;
  sub_10024D3B8(_swiftEmptyArrayStorage);
  sub_100035D04(&qword_10033B118, qword_100271BF0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = 0;
  v5 = [v1 revokePresentableWithRequestIdentifier:v2 reason:v3 animated:1 userInfo:isa error:&v8];

  if (v5)
  {
    v6 = v8;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000452A0(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *&a1[OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_actionHandler];
  v5 = a3;
  v6 = 0u;
  v7 = 0u;
  v8 = 3;
  v4 = a1;
  v3(&v5);
  sub_100045F80(&v5);
}

void sub_100045364(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void *))
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a1;
  a5(a4);
  swift_unknownObjectRelease();
}

void sub_100045458()
{
  v1 = (v0 + OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_requesterIdentifier);
  *v1 = static String._fromUTF8Repairing(_:)();
  v1[1] = v2;
  v3 = OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_presentableUserInfo;
  *(v0 + v3) = sub_10024D3B8(_swiftEmptyArrayStorage);
  static String._fromUTF8Repairing(_:)();
  v4 = String._bridgeToObjectiveC()();

  v5 = [objc_opt_self() bannerSourceForDestination:0 forRequesterIdentifier:v4];

  if (!v5)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC17proximitycontrold30HandoffFeedbackBannerPresenter_bannerSource) = v5;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000456A4(void *a1)
{
  if (qword_100338E48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033B030);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD00000000000002DLL, 0x8000000100298640, &v10);
    *(v5 + 12) = 2080;
    if (!a1)
    {
      __break(1u);
      return;
    }

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = sub_100017494(v6, v7, &v10);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100045998(void *a1)
{
  if (qword_100338E48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033B030);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD00000000000002ELL, 0x80000001002985E0, &v10);
    *(v5 + 12) = 2080;
    if (!a1)
    {
      __break(1u);
      return;
    }

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = sub_100017494(v6, v7, &v10);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100045B44(void *a1)
{
  if (qword_100338E48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033B030);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD00000000000002ELL, 0x80000001002985B0, &v10);
    *(v5 + 12) = 2080;
    if (!a1)
    {
      __break(1u);
      return;
    }

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = sub_100017494(v6, v7, &v10);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t SBUISystemApertureLayoutMode.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x6C616D696E696DLL;
    }

    if (a1 != 3)
    {
      if (a1 == 4)
      {
        return 0x6D6F74737563;
      }

      goto LABEL_12;
    }

    return 0x746361706D6F63;
  }

  else
  {
    if (a1 == -1)
    {
      return 0x6465766F6D6572;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6576697463616E69;
      }

LABEL_12:
      _StringGuts.grow(_:)(19);

      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      return 0xD000000000000011;
    }

    return 0x6C616974696E69;
  }
}

uint64_t sub_100046134()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033B120);
  sub_100003078(v0, qword_10033B120);
  return Logger.init(subsystem:category:)();
}

void *sub_1000461B4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1000461D4(uint64_t a1, char a2, void (*a3)(void, void, void), uint64_t a4)
{
  v7 = type metadata accessor for HandoffEvent(0);
  __chkstk_darwin(v7);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *v9 = a1;
    v9[8] = a2;
    swift_storeEnumTagMultiPayload();
    v11[4] = 1;
    sub_100048924(v9, a3, 0x100000000uLL);

    return sub_10001439C(v9, type metadata accessor for HandoffEvent);
  }

  return result;
}

uint64_t sub_1000462E4@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = sub_100035D04(&qword_10033B338, &qword_100271F18);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v17 - v9);
  sub_100009848(a1, &v17 - v9, &qword_10033B338, &qword_100271F18);
  v11 = *v10;
  v12 = *(v5 + 56);
  sub_100009848(a1, v8, &qword_10033B338, &qword_100271F18);

  v13 = *(v5 + 56);
  type metadata accessor for DeviceHistory(0);
  swift_allocObject();
  v14 = sub_10025F1F0(v11, &v8[v13]);

  v15 = type metadata accessor for Date();
  result = (*(*(v15 - 8) + 8))(v10 + v12, v15);
  *a2 = v14;
  return result;
}

double sub_100046450(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_100049428(v2, sub_100089E6C, sub_100086880, sub_100009194, sub_100009A04);
  }

  return result;
}

double sub_10004651C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v3 = UUID.uuidString.getter();
    sub_10004A49C(v3, v4);
  }

  return result;
}

unint64_t sub_1000465C4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = UUID.uuidString.getter();
  *a1 = a3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  type metadata accessor for HandoffEvent(0);
  swift_storeEnumTagMultiPayload();

  CurrentValueSubject.value.getter();
  if (v12)
  {
    CurrentValueSubject.value.getter();

    v7 = v13;
    v8 = v14;
  }

  else
  {
    v7 = v10;

    v8 = v11 & 1;
  }

  return v7 | (v8 << 32);
}

unint64_t sub_100046690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a2 + *(sub_100035D04(&qword_10033B368, &qword_100271F30) + 48);
  result = sub_1000465C4(a2, v3, v4);
  *v5 = result;
  *(v5 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1000466F8(uint64_t a1, unint64_t a2, void (*a3)(void, void, void), uint64_t a4)
{
  v7 = sub_100035D04(&qword_10033B368, &qword_100271F30);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  sub_100013B14(a1, &v13 - v9, type metadata accessor for HandoffEvent);
  v11 = &v10[*(v8 + 56)];
  *v11 = a2;
  v11[4] = BYTE4(a2) & 1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100048924(v10, a3, a2 | ((HIDWORD(a2) & 1) << 32));
  }

  return sub_1000097E8(v10, &qword_10033B368, &qword_100271F30);
}

uint64_t sub_10004681C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = (a1 + *(sub_100035D04(&qword_10033B368, &qword_100271F30) + 48));
  v5 = *v4;
  v6 = *(v4 + 4);
  v7 = sub_100035D04(&qword_10033B378, &qword_100271F38);
  return a2(a1, v5 | (v6 << 32), a1 + *(v7 + 48));
}

unint64_t sub_1000468B4@<X0>(char *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = sub_100035D04(&qword_10033B3A0, &qword_100271F50);
  v10 = *(v8 + 24);
  (*(v5 + 16))(v7, &a1[*(v9 + 48)], v4);
  type metadata accessor for SessionHistory(0);
  swift_allocObject();

  result = sub_10025B724(v11, v10, v7);
  *a2 = result;
  return result;
}

double sub_1000469E0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_100049428(v2, sub_100089E80, sub_100086894, sub_100009194, sub_100009A04);
  }

  return result;
}

uint64_t sub_100046AAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 8))
  {
    result = UUID.uuidString.getter();
  }

  else
  {
    result = 0;
    v4 = 0;
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_100046AF8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 24) + qword_100346AF8;
    os_unfair_lock_lock(v5);
    v6 = *(v5 + 8);
    if (*(v6 + 16) && (v7 = sub_100004B58(v3, v2), (v8 & 1) != 0))
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      os_unfair_lock_unlock(v5);
      if (v9)
      {
        sub_100255A44();
        sub_10004A638(v3, v2, sub_100089E80, sub_100009194, sub_100009A04);

        return;
      }
    }

    else
    {
      os_unfair_lock_unlock(v5);
    }

    if (qword_100338E50 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003078(v10, qword_10033B120);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_100017494(v3, v2, &v15);
      _os_log_impl(&_mh_execute_header, v11, v12, "### No sessionHistory for sessionID: %s", v13, 0xCu);
      sub_10000903C(v14);
    }
  }
}

void sub_100046D40(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100035D04(&qword_10033B418, &qword_100271F80);
  (*(v5 + 16))(v7, &a1[*(v8 + 48)], v4);
  type metadata accessor for TransferRecord(0);
  swift_allocObject();

  v10 = sub_10011CE84(v9, v7);

  *a2 = v10;
}

double sub_100046E60(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *(v2 + 16) = sub_1000515B8;
  *(v2 + 24) = v3;

  sub_10002689C(v4, v5);

  return result;
}

double sub_100046EF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_10004A638(*(a1 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferID), *(a1 + OBJC_IVAR____TtC17proximitycontrold14TransferRecord_transferID + 8), sub_100089E94, sub_100009194, sub_100009A04);
  }

  return result;
}