void sub_2250B9AE8()
{
  v1 = (v0 + *(*v0 + 272));
  if (!v1[1])
  {
    v2 = [objc_opt_self() currentPersona];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 identifier];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      *v1 = v5;
      v1[1] = v7;
    }
  }

  sub_2250B7520(3u);
}

uint64_t sub_2250B9BA8(void (*a1)(void, void), void (*a2)(void, void, void))
{
  v183 = a2;
  v182 = a1;
  v180 = type metadata accessor for SessionReadinessError();
  v171 = *(v180 - 8);
  v3 = MEMORY[0x28223BE20](v180);
  v172 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v173 = &v161 - v6;
  MEMORY[0x28223BE20](v5);
  v177 = &v161 - v7;
  v178 = sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  v8 = MEMORY[0x28223BE20](v178);
  v170 = (&v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v179 = &v161 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v169 = (&v161 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v176 = &v161 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v174 = &v161 - v17;
  MEMORY[0x28223BE20](v16);
  v175 = &v161 - v18;
  v19 = type metadata accessor for Logger();
  v181 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v161 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v161 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v161 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v161 - v32;
  v34 = sub_2250B0DFC(&qword_27D718EC8, &qword_225444818);
  MEMORY[0x28223BE20](v34);
  v36 = &v161 - v35;
  v37 = v184;
  result = sub_2250B84E4();
  if (v37)
  {
    return result;
  }

  v162 = v28;
  v166 = v31;
  v167 = 0;
  v184 = v36;
  v39 = v179;
  v164 = v22;
  v165 = v25;
  v40 = v180;
  v168 = v19;
  v41 = sub_2250B7308();
  v42 = v41;
  v43 = v182;
  if (!v41 || v41 != v182)
  {
    CKLog.getter();
    v71 = v175;
    sub_2250C853C(v183, v175, &unk_27D719000, &qword_225444F50);

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      *v185 = v43;
      v186 = v184;
      *v74 = 136315394;
      _s11DeviceCheckCMa(0);

      v75 = String.init<A>(describing:)();
      v163 = v42;
      v77 = sub_225095AFC(v75, v76, &v186);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2080;
      sub_2250C853C(v71, v176, &unk_27D719000, &qword_225444F50);
      v78 = String.init<A>(describing:)();
      v79 = v71;
      v81 = v80;
      sub_2250C86F4(v79, &unk_27D719000, &qword_225444F50);
      v82 = sub_225095AFC(v78, v81, &v186);

      *(v74 + 14) = v82;
      _os_log_impl(&dword_22506F000, v72, v73, "Ignoring event from obsolete device check instance %s %s", v74, 0x16u);
      v83 = v184;
      swift_arrayDestroy();
      MEMORY[0x22AA65DF0](v83, -1, -1);
      MEMORY[0x22AA65DF0](v74, -1, -1);

      return (*(v181 + 8))(v33, v168);
    }

    sub_2250C86F4(v71, &unk_27D719000, &qword_225444F50);
    v69 = *(v181 + 8);
    v70 = v33;
    goto LABEL_12;
  }

  v44 = v2;
  v175 = *(*v2 + 296);
  v45 = v175[v2];
  v46 = *(v34 + 48);
  v47 = v183;
  v48 = v184;
  *v184 = v45;
  sub_2250C853C(v47, v48 + v46, &unk_27D719000, &qword_225444F50);
  v49 = v168;
  v50 = v177;
  if (v45 == 1)
  {
LABEL_7:
    sub_2250C86F4(&v184[v46], &unk_27D719000, &qword_225444F50);
    v51 = v166;
    CCLog.getter();
    v52 = v174;
    sub_2250C853C(v183, v174, &unk_27D719000, &qword_225444F50);

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v53, v54))
    {

      sub_2250C86F4(v52, &unk_27D719000, &qword_225444F50);
      v69 = *(v181 + 8);
      v70 = v51;
      v84 = v49;
      return v69(v70, v84);
    }

    v55 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v186 = v184;
    *v55 = 136315650;
    type metadata accessor for SessionID();
    v163 = v42;
    sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;

    v59 = sub_225095AFC(v56, v58, &v186);

    *(v55 + 4) = v59;
    *(v55 + 12) = 2080;
    v60 = v52;
    sub_2250C853C(v52, v176, &unk_27D719000, &qword_225444F50);
    v61 = String.init<A>(describing:)();
    v63 = v62;
    sub_2250C86F4(v60, &unk_27D719000, &qword_225444F50);
    v64 = sub_225095AFC(v61, v63, &v186);

    *(v55 + 14) = v64;
    *(v55 + 22) = 2080;
    v185[0] = v175[v44];
    sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
    v65 = String.init<A>(describing:)();
    v67 = sub_225095AFC(v65, v66, &v186);

    *(v55 + 24) = v67;
    _os_log_impl(&dword_22506F000, v53, v54, "%s: Ignoring received device acquisition event: %s in state: %s", v55, 0x20u);
    v68 = v184;
    swift_arrayDestroy();
    MEMORY[0x22AA65DF0](v68, -1, -1);
    MEMORY[0x22AA65DF0](v55, -1, -1);

    v69 = *(v181 + 8);
    v70 = v166;
LABEL_12:
    v84 = v168;
    return v69(v70, v84);
  }

  if (v45 != 3)
  {
    if (v45 == 9)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_14:
    v85 = v184;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v163 = v42;
      v86 = v171;
      v87 = &v85[v46];
      v88 = v50;
      v89 = v50;
      v90 = v40;
      (*(v171 + 32))(v88, v87, v40);
      CCLog.getter();
      v91 = v39;
      sub_2250C853C(v183, v39, &unk_27D719000, &qword_225444F50);
      v92 = *(v86 + 16);
      v93 = v173;
      v183 = (v86 + 16);
      v184 = v92;
      (v92)(v173, v89, v40);
      v94 = v44;

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = v86;
        LODWORD(v174) = v96;
        v99 = v97;
        v170 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v186 = v175;
        *v99 = 136315650;
        v169 = v95;
        type metadata accessor for SessionID();
        v100 = v176;
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
        v101 = dispatch thunk of CustomStringConvertible.description.getter();
        v103 = v102;

        v104 = sub_225095AFC(v101, v103, &v186);

        *(v99 + 4) = v104;
        *(v99 + 12) = 2080;
        sub_2250C853C(v91, v100, &unk_27D719000, &qword_225444F50);
        v105 = String.init<A>(describing:)();
        v107 = v106;
        sub_2250C86F4(v91, &unk_27D719000, &qword_225444F50);
        v108 = v105;
        v44 = v94;
        v109 = sub_225095AFC(v108, v107, &v186);

        *(v99 + 14) = v109;
        *(v99 + 22) = 2112;
        sub_2250C8748(&qword_280D53600, MEMORY[0x277CFAA78], MEMORY[0x277CFAA80]);
        swift_allocError();
        v110 = v173;
        (v184)(v111, v173, v90);
        v112 = _swift_stdlib_bridgeErrorToNSError();
        v182 = *(v98 + 8);
        v182(v110, v90);
        *(v99 + 24) = v112;
        v113 = v170;
        *v170 = v112;
        v114 = v169;
        _os_log_impl(&dword_22506F000, v169, v174, "%s: Received blocking device device acquisition event: %s, readinessError: %@", v99, 0x20u);
        sub_2250C86F4(v113, &unk_27D719030, &qword_225443AB0);
        MEMORY[0x22AA65DF0](v113, -1, -1);
        v115 = v175;
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v115, -1, -1);
        MEMORY[0x22AA65DF0](v99, -1, -1);
      }

      else
      {

        v182 = *(v86 + 8);
        v182(v93, v40);
        sub_2250C86F4(v91, &unk_27D719000, &qword_225444F50);
      }

      (*(v181 + 8))(v165, v168);
      v116 = v90;
      v155 = *(v44 + qword_280D538C0);
      type metadata accessor for CKSessionReadinessErrorBox();
      v156 = v177;
      (v184)(v172, v177, v116);
      v157 = CKSessionReadinessErrorBox.__allocating_init(_:)();
      [v155 noteSessionReadinessError_];

      sub_2250B7520(3u);

      return (v182)(v156, v116);
    }

    else
    {
      v117 = v164;
      CCLog.getter();
      v118 = v170;
      sub_2250C853C(v183, v170, &unk_27D719000, &qword_225444F50);
      v119 = v44;

      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = v118;
        v123 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v186 = v183;
        *v123 = 136315650;
        type metadata accessor for SessionID();
        LODWORD(v182) = v121;
        v124 = v176;
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
        v125 = dispatch thunk of CustomStringConvertible.description.getter();
        v127 = v126;

        v128 = sub_225095AFC(v125, v127, &v186);

        *(v123 + 4) = v128;
        v163 = v42;
        *(v123 + 12) = 2080;
        sub_2250C853C(v122, v124, &unk_27D719000, &qword_225444F50);
        v129 = String.init<A>(describing:)();
        v130 = v168;
        v131 = v129;
        v133 = v132;
        sub_2250C86F4(v122, &unk_27D719000, &qword_225444F50);
        v134 = sub_225095AFC(v131, v133, &v186);

        *(v123 + 14) = v134;
        *(v123 + 22) = 2080;
        v185[0] = v175[v119];
        sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
        v135 = String.init<A>(describing:)();
        v137 = sub_225095AFC(v135, v136, &v186);

        *(v123 + 24) = v137;
        _os_log_impl(&dword_22506F000, v120, v182, "%s: Ignoring received device acquisition event: %s in unexpected state: %s", v123, 0x20u);
        v138 = v183;
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v138, -1, -1);
        MEMORY[0x22AA65DF0](v123, -1, -1);

        (*(v181 + 8))(v164, v130);
      }

      else
      {

        sub_2250C86F4(v118, &unk_27D719000, &qword_225444F50);
        (*(v181 + 8))(v117, v168);
      }

      return sub_2250C86F4(v184, &qword_27D718EC8, &qword_225444818);
    }
  }

  v139 = v162;
  CCLog.getter();
  v140 = v169;
  sub_2250C853C(v183, v169, &unk_27D719000, &qword_225444F50);
  v141 = v44;

  v142 = Logger.logObject.getter();
  v143 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v186 = v184;
    *v144 = 136315394;
    type metadata accessor for SessionID();
    sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
    v145 = dispatch thunk of CustomStringConvertible.description.getter();
    v147 = v146;

    v148 = sub_225095AFC(v145, v147, &v186);

    *(v144 + 4) = v148;
    *(v144 + 12) = 2080;
    sub_2250C853C(v140, v176, &unk_27D719000, &qword_225444F50);
    v149 = String.init<A>(describing:)();
    v163 = v42;
    v150 = v149;
    v152 = v151;
    sub_2250C86F4(v140, &unk_27D719000, &qword_225444F50);
    v153 = sub_225095AFC(v150, v152, &v186);

    *(v144 + 14) = v153;
    _os_log_impl(&dword_22506F000, v142, v143, "%s: received device acquisition event: %s", v144, 0x16u);
    v154 = v184;
    swift_arrayDestroy();
    MEMORY[0x22AA65DF0](v154, -1, -1);
    MEMORY[0x22AA65DF0](v144, -1, -1);

    (*(v181 + 8))(v162, v168);
  }

  else
  {

    sub_2250C86F4(v140, &unk_27D719000, &qword_225444F50);
    (*(v181 + 8))(v139, v168);
  }

  v158 = v141 + *(*v141 + 240);
  v159 = *v158;
  *v158 = v182;
  v160 = *(v158 + 8);
  *(v158 + 8) = 1;

  sub_2250C79F8(v159, v160);
  sub_2250B7520(4u);
}

void sub_2250BAEEC(char *a1, char *a2)
{
  v179 = a2;
  v178 = a1;
  v172 = type metadata accessor for SessionReadinessError();
  v168 = *(v172 - 8);
  v3 = MEMORY[0x28223BE20](v172);
  v169 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v170 = &v157 - v6;
  MEMORY[0x28223BE20](v5);
  v174 = &v157 - v7;
  v176 = sub_2250B0DFC(&qword_27D719010, &qword_225444830);
  v8 = MEMORY[0x28223BE20](v176);
  v166 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v167 = &v157 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v165 = &v157 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v175 = &v157 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v171 = (&v157 - v17);
  MEMORY[0x28223BE20](v16);
  v173 = &v157 - v18;
  v19 = type metadata accessor for Logger();
  v177 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v157 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v157 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v157 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v157 - v32;
  v34 = sub_2250B0DFC(&unk_27D718EF8, &qword_225444850);
  MEMORY[0x28223BE20](v34);
  v36 = &v157 - v35;
  v37 = v180;
  sub_2250B84E4();
  if (v37)
  {
    return;
  }

  v159 = v28;
  v161 = v31;
  v163 = v36;
  v160 = v22;
  v38 = v25;
  v164 = v19;
  v180 = 0;
  v39 = sub_2250B735C();
  v40 = v39;
  v41 = v178;
  if (v39 && v39 == v178)
  {
    v42 = v2;
    v162 = v39;
    v173 = *(*v2 + 296);
    v43 = v173[v2];
    v44 = *(v34 + 48);
    v45 = v163;
    *v163 = v43;
    sub_2250C853C(v179, &v45[v44], &qword_27D719010, &qword_225444830);
    v46 = v164;
    v47 = v174;
    if (v43 == 1)
    {
      goto LABEL_7;
    }

    if (v43 != 4)
    {
      if (v43 == 9)
      {
LABEL_7:
        sub_2250C86F4(&v45[v44], &qword_27D719010, &qword_225444830);
        v48 = v161;
        CCLog.getter();
        v49 = v171;
        sub_2250C853C(v179, v171, &qword_27D719010, &qword_225444830);

        v50 = Logger.logObject.getter();
        v51 = v42;
        v52 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v50, v52))
        {
          v53 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          v182 = v179;
          *v53 = 136315650;
          type metadata accessor for SessionID();
          sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
          v54 = dispatch thunk of CustomStringConvertible.description.getter();
          v56 = v55;

          v57 = sub_225095AFC(v54, v56, &v182);

          *(v53 + 4) = v57;
          *(v53 + 12) = 2080;
          v58 = v49;
          sub_2250C853C(v49, v175, &qword_27D719010, &qword_225444830);
          v59 = String.init<A>(describing:)();
          v61 = v60;
          sub_2250C86F4(v58, &qword_27D719010, &qword_225444830);
          v62 = sub_225095AFC(v59, v61, &v182);

          *(v53 + 14) = v62;
          *(v53 + 22) = 2080;
          LOBYTE(v181) = v173[v51];
          sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
          v63 = String.init<A>(describing:)();
          v65 = sub_225095AFC(v63, v64, &v182);

          *(v53 + 24) = v65;
          _os_log_impl(&dword_22506F000, v50, v52, "%s: Ignoring received account acquisition event: %s in state: %s", v53, 0x20u);
          v66 = v179;
          swift_arrayDestroy();
          MEMORY[0x22AA65DF0](v66, -1, -1);
          MEMORY[0x22AA65DF0](v53, -1, -1);

          (*(v177 + 8))(v161, v164);
        }

        else
        {

          sub_2250C86F4(v49, &qword_27D719010, &qword_225444830);
          (*(v177 + 8))(v48, v164);
        }

        return;
      }

      goto LABEL_14;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
LABEL_14:
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v81 = v168;
        v82 = &v45[v44];
        v83 = v172;
        (*(v168 + 32))(v47, v82, v172);
        CCLog.getter();
        v84 = v167;
        sub_2250C853C(v179, v167, &qword_27D719010, &qword_225444830);
        v179 = *(v81 + 16);
        (v179)(v170, v47, v83);

        v178 = v38;
        v85 = Logger.logObject.getter();
        v86 = v42;
        v87 = static os_log_type_t.default.getter();
        v88 = os_log_type_enabled(v85, v87);
        v89 = v175;
        if (v88)
        {
          v90 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          v173 = swift_slowAlloc();
          v182 = v173;
          *v90 = 136315650;
          LODWORD(v166) = v87;
          v158 = v86;
          type metadata accessor for SessionID();
          sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
          v91 = dispatch thunk of CustomStringConvertible.description.getter();
          v93 = v92;

          v94 = sub_225095AFC(v91, v93, &v182);

          *(v90 + 4) = v94;
          *(v90 + 12) = 2080;
          sub_2250C853C(v84, v89, &qword_27D719010, &qword_225444830);
          v95 = String.init<A>(describing:)();
          v96 = v84;
          v97 = v95;
          v99 = v98;
          sub_2250C86F4(v96, &qword_27D719010, &qword_225444830);
          v100 = sub_225095AFC(v97, v99, &v182);

          *(v90 + 14) = v100;
          *(v90 + 22) = 2112;
          sub_2250C8748(&qword_280D53600, MEMORY[0x277CFAA78], MEMORY[0x277CFAA80]);
          swift_allocError();
          v101 = v170;
          (v179)(v102, v170, v172);
          v103 = _swift_stdlib_bridgeErrorToNSError();
          v104 = *(v81 + 8);
          v104(v101, v172);
          *(v90 + 24) = v103;
          v105 = v171;
          *v171 = v103;
          _os_log_impl(&dword_22506F000, v85, v166, "%s: Received blocking account acquisition event: %s, readinessError: %@", v90, 0x20u);
          sub_2250C86F4(v105, &unk_27D719030, &qword_225443AB0);
          MEMORY[0x22AA65DF0](v105, -1, -1);
          v106 = v173;
          swift_arrayDestroy();
          MEMORY[0x22AA65DF0](v106, -1, -1);
          v107 = v90;
          v83 = v172;
          MEMORY[0x22AA65DF0](v107, -1, -1);

          (*(v177 + 8))(v178, v164);
          v108 = v158;
        }

        else
        {

          v104 = *(v81 + 8);
          v104(v170, v83);
          sub_2250C86F4(v84, &qword_27D719010, &qword_225444830);
          (*(v177 + 8))(v178, v164);
          v108 = v86;
        }

        v149 = *(v108 + qword_280D538C0);
        type metadata accessor for CKSessionReadinessErrorBox();
        v150 = v174;
        (v179)(v169, v174, v83);
        v151 = CKSessionReadinessErrorBox.__allocating_init(_:)();
        [v149 noteSessionReadinessError_];

        sub_2250B7520(4u);

        v104(v150, v83);
      }

      else
      {
        v109 = v160;
        CCLog.getter();
        v110 = v166;
        sub_2250C853C(v179, v166, &qword_27D719010, &qword_225444830);

        v111 = Logger.logObject.getter();
        v112 = v42;
        v113 = static os_log_type_t.default.getter();
        v114 = os_log_type_enabled(v111, v113);
        v115 = v175;
        if (v114)
        {
          v116 = v110;
          v117 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          v182 = v179;
          *v117 = 136315650;
          type metadata accessor for SessionID();
          LODWORD(v178) = v113;
          sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
          v118 = dispatch thunk of CustomStringConvertible.description.getter();
          v120 = v119;

          v121 = sub_225095AFC(v118, v120, &v182);

          *(v117 + 4) = v121;
          *(v117 + 12) = 2080;
          sub_2250C853C(v116, v115, &qword_27D719010, &qword_225444830);
          v122 = v46;
          v123 = String.init<A>(describing:)();
          v125 = v124;
          sub_2250C86F4(v116, &qword_27D719010, &qword_225444830);
          v126 = sub_225095AFC(v123, v125, &v182);

          *(v117 + 14) = v126;
          *(v117 + 22) = 2080;
          LOBYTE(v181) = v173[v112];
          sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
          v127 = String.init<A>(describing:)();
          v129 = sub_225095AFC(v127, v128, &v182);

          *(v117 + 24) = v129;
          _os_log_impl(&dword_22506F000, v111, v178, "%s: Ignoring received account acquisition event: %s in unexpected state: %s", v117, 0x20u);
          v130 = v179;
          swift_arrayDestroy();
          MEMORY[0x22AA65DF0](v130, -1, -1);
          MEMORY[0x22AA65DF0](v117, -1, -1);

          (*(v177 + 8))(v160, v122);
        }

        else
        {

          sub_2250C86F4(v110, &qword_27D719010, &qword_225444830);
          (*(v177 + 8))(v109, v46);
        }

        sub_2250C86F4(v163, &unk_27D718EF8, &qword_225444850);
      }

      return;
    }

    v131 = *&v45[v44];
    v132 = v159;
    CCLog.getter();
    v133 = v165;
    sub_2250C853C(v179, v165, &qword_27D719010, &qword_225444830);

    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v158 = v42;
      v137 = v133;
      v138 = v136;
      v179 = swift_slowAlloc();
      v182 = v179;
      *v138 = 136315394;
      type metadata accessor for SessionID();
      sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
      v139 = dispatch thunk of CustomStringConvertible.description.getter();
      v141 = v140;

      v142 = sub_225095AFC(v139, v141, &v182);

      *(v138 + 4) = v142;
      *(v138 + 12) = 2080;
      v143 = v131;
      sub_2250C853C(v137, v175, &qword_27D719010, &qword_225444830);
      v144 = String.init<A>(describing:)();
      v146 = v145;
      sub_2250C86F4(v137, &qword_27D719010, &qword_225444830);
      v147 = sub_225095AFC(v144, v146, &v182);
      v131 = v143;

      *(v138 + 14) = v147;
      _os_log_impl(&dword_22506F000, v134, v135, "%s: received account acquisition event: %s", v138, 0x16u);
      v148 = v179;
      swift_arrayDestroy();
      v41 = v178;
      MEMORY[0x22AA65DF0](v148, -1, -1);
      v42 = v158;
      MEMORY[0x22AA65DF0](v138, -1, -1);

      (*(v177 + 8))(v159, v164);
    }

    else
    {

      sub_2250C86F4(v133, &qword_27D719010, &qword_225444830);
      (*(v177 + 8))(v132, v46);
    }

    v152 = v42 + *(*v42 + 248);
    v153 = *v152;
    v154 = *(v152 + 8);
    *v152 = v41;
    *(v152 + 8) = v131;
    v155 = *(v152 + 16);
    *(v152 + 16) = 1;

    v156 = v131;
    sub_2250C7A0C(v153, v154, v155);
    sub_2250B7520(5u);
  }

  else
  {
    CKLog.getter();
    v67 = v173;
    sub_2250C853C(v179, v173, &qword_27D719010, &qword_225444830);

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v182 = v179;
      *v70 = 136315394;
      v181 = v41;
      _s12AccountCheckCMa(0);

      v71 = String.init<A>(describing:)();
      v162 = v40;
      v73 = sub_225095AFC(v71, v72, &v182);

      *(v70 + 4) = v73;
      *(v70 + 12) = 2080;
      sub_2250C853C(v67, v175, &qword_27D719010, &qword_225444830);
      v74 = String.init<A>(describing:)();
      v75 = v67;
      v76 = v74;
      v78 = v77;
      sub_2250C86F4(v75, &qword_27D719010, &qword_225444830);
      v79 = sub_225095AFC(v76, v78, &v182);

      *(v70 + 14) = v79;
      _os_log_impl(&dword_22506F000, v68, v69, "Ignoring event from obsolete account check instance %s %s", v70, 0x16u);
      v80 = v179;
      swift_arrayDestroy();
      MEMORY[0x22AA65DF0](v80, -1, -1);
      MEMORY[0x22AA65DF0](v70, -1, -1);
    }

    else
    {

      sub_2250C86F4(v67, &qword_27D719010, &qword_225444830);
    }

    (*(v177 + 8))(v33, v164);
  }
}

uint64_t sub_2250BC1F8(void (*a1)(void, void, void), char *a2)
{
  v181 = a2;
  v178 = a1;
  v180 = type metadata accessor for SessionReadinessError();
  v169 = *(v180 - 8);
  v3 = MEMORY[0x28223BE20](v180);
  v170 = &v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v171 = &v159 - v6;
  MEMORY[0x28223BE20](v5);
  v174 = &v159 - v7;
  v175 = sub_2250B0DFC(&qword_27D718F08, &qword_225444868);
  v8 = MEMORY[0x28223BE20](v175);
  v168 = (&v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v177 = &v159 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v167 = &v159 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v176 = &v159 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v172 = &v159 - v17;
  MEMORY[0x28223BE20](v16);
  v173 = &v159 - v18;
  v19 = type metadata accessor for Logger();
  v179 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v159 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v159 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v159 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v159 - v32;
  v34 = sub_2250B0DFC(&qword_27D718F28, &qword_225444888);
  MEMORY[0x28223BE20](v34);
  v36 = &v159 - v35;
  v37 = v182;
  result = sub_2250B84E4();
  if (v37)
  {
    return result;
  }

  v160 = v28;
  v182 = 0;
  v165 = v36;
  v163 = v31;
  v39 = v177;
  v161 = v22;
  v162 = v25;
  v40 = v180;
  v166 = v19;
  v41 = sub_2250B73A4();
  v42 = v41;
  v43 = v178;
  if (v41 && v41 == v178)
  {
    v44 = v2;
    v164 = v41;
    v173 = *(*v2 + 296);
    v45 = *(v2 + v173);
    v46 = *(v34 + 48);
    v47 = v165;
    v48 = &v165[v46];
    *v165 = v45;
    sub_2250C853C(v181, &v47[v46], &qword_27D718F08, &qword_225444868);
    v49 = v166;
    v50 = v176;
    v51 = v174;
    if (v45 == 1)
    {
LABEL_7:
      v52 = v176;
      sub_2250C86F4(v48, &qword_27D718F08, &qword_225444868);
      v53 = v163;
      CCLog.getter();
      v54 = v172;
      sub_2250C853C(v181, v172, &qword_27D718F08, &qword_225444868);

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        v184 = v181;
        *v57 = 136315650;
        type metadata accessor for SessionID();
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v59;

        v61 = sub_225095AFC(v58, v60, &v184);

        *(v57 + 4) = v61;
        *(v57 + 12) = 2080;
        sub_2250C853C(v54, v52, &qword_27D718F08, &qword_225444868);
        v62 = String.init<A>(describing:)();
        v63 = v54;
        v65 = v64;
        sub_2250C86F4(v63, &qword_27D718F08, &qword_225444868);
        v66 = sub_225095AFC(v62, v65, &v184);

        *(v57 + 14) = v66;
        *(v57 + 22) = 2080;
        v183[0] = *(v44 + v173);
        sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
        v67 = String.init<A>(describing:)();
        v69 = sub_225095AFC(v67, v68, &v184);

        *(v57 + 24) = v69;
        _os_log_impl(&dword_22506F000, v55, v56, "%s: Ignoring received encryption acquisition event: %s in state: %s", v57, 0x20u);
        v70 = v181;
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v70, -1, -1);
        MEMORY[0x22AA65DF0](v57, -1, -1);
      }

      else
      {

        sub_2250C86F4(v54, &qword_27D718F08, &qword_225444868);
      }

      return (*(v179 + 8))(v53, v166);
    }

    if (v45 != 5)
    {
      if (v45 == 9)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
LABEL_14:
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v83 = v169;
        (*(v169 + 32))(v51, v48, v40);
        CCLog.getter();
        v84 = v39;
        sub_2250C853C(v181, v39, &qword_27D718F08, &qword_225444868);
        v85 = *(v83 + 16);
        v86 = v171;
        v181 = (v83 + 16);
        v178 = v85;
        v85(v171, v51, v40);

        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v173 = v44;
          v90 = v176;
          v91 = v89;
          v168 = swift_slowAlloc();
          v172 = swift_slowAlloc();
          v184 = v172;
          *v91 = 136315650;
          LODWORD(v167) = v88;
          type metadata accessor for SessionID();
          sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
          v92 = dispatch thunk of CustomStringConvertible.description.getter();
          v94 = v93;

          v95 = sub_225095AFC(v92, v94, &v184);

          *(v91 + 4) = v95;
          *(v91 + 12) = 2080;
          sub_2250C853C(v39, v90, &qword_27D718F08, &qword_225444868);
          v96 = String.init<A>(describing:)();
          v98 = v97;
          sub_2250C86F4(v84, &qword_27D718F08, &qword_225444868);
          v99 = sub_225095AFC(v96, v98, &v184);

          *(v91 + 14) = v99;
          *(v91 + 22) = 2112;
          sub_2250C8748(&qword_280D53600, MEMORY[0x277CFAA78], MEMORY[0x277CFAA80]);
          v100 = v180;
          swift_allocError();
          v101 = v171;
          v178(v102, v171, v100);
          v103 = _swift_stdlib_bridgeErrorToNSError();
          v104 = *(v83 + 8);
          v104(v101, v100);
          *(v91 + 24) = v103;
          v105 = v168;
          *v168 = v103;
          _os_log_impl(&dword_22506F000, v87, v167, "%s: Received blocking encryption acquisition event: %s, readinessError: %@", v91, 0x20u);
          sub_2250C86F4(v105, &unk_27D719030, &qword_225443AB0);
          MEMORY[0x22AA65DF0](v105, -1, -1);
          v106 = v172;
          swift_arrayDestroy();
          MEMORY[0x22AA65DF0](v106, -1, -1);
          v107 = v91;
          v44 = v173;
          MEMORY[0x22AA65DF0](v107, -1, -1);
        }

        else
        {

          v104 = *(v83 + 8);
          v150 = v86;
          v100 = v180;
          v104(v150, v180);
          sub_2250C86F4(v39, &qword_27D718F08, &qword_225444868);
        }

        (*(v179 + 8))(v162, v166);
        v151 = *(v44 + qword_280D538C0);
        type metadata accessor for CKSessionReadinessErrorBox();
        v152 = v174;
        v178(v170, v174, v100);
        v153 = CKSessionReadinessErrorBox.__allocating_init(_:)();
        [v151 noteSessionReadinessError_];

        sub_2250B7520(5u);

        return (v104)(v152, v100);
      }

      else
      {
        v108 = v161;
        CCLog.getter();
        v109 = v168;
        sub_2250C853C(v181, v168, &qword_27D718F08, &qword_225444868);

        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = v44;
          v113 = v50;
          v114 = swift_slowAlloc();
          v181 = swift_slowAlloc();
          v184 = v181;
          *v114 = 136315650;
          LODWORD(v180) = v111;
          type metadata accessor for SessionID();
          sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
          v115 = dispatch thunk of CustomStringConvertible.description.getter();
          v117 = v116;

          v118 = sub_225095AFC(v115, v117, &v184);

          *(v114 + 4) = v118;
          *(v114 + 12) = 2080;
          sub_2250C853C(v109, v113, &qword_27D718F08, &qword_225444868);
          v119 = v108;
          v120 = String.init<A>(describing:)();
          v122 = v121;
          sub_2250C86F4(v109, &qword_27D718F08, &qword_225444868);
          v123 = sub_225095AFC(v120, v122, &v184);

          *(v114 + 14) = v123;
          *(v114 + 22) = 2080;
          v183[0] = *(v112 + v173);
          sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
          v124 = String.init<A>(describing:)();
          v126 = sub_225095AFC(v124, v125, &v184);

          *(v114 + 24) = v126;
          _os_log_impl(&dword_22506F000, v110, v180, "%s: Ignoring received encryption acquisition event: %s in unexpected state: %s", v114, 0x20u);
          v127 = v181;
          swift_arrayDestroy();
          MEMORY[0x22AA65DF0](v127, -1, -1);
          MEMORY[0x22AA65DF0](v114, -1, -1);

          (*(v179 + 8))(v119, v166);
        }

        else
        {

          sub_2250C86F4(v109, &qword_27D718F08, &qword_225444868);
          (*(v179 + 8))(v108, v49);
        }

        return sub_2250C86F4(v165, &qword_27D718F28, &qword_225444888);
      }
    }

    v128 = v50;
    v129 = *v48;
    v180 = v48[1];
    v130 = v160;
    CCLog.getter();
    v131 = v167;
    sub_2250C853C(v181, v167, &qword_27D718F08, &qword_225444868);

    v132 = v44;
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      v184 = v177;
      *v135 = 136315394;
      LODWORD(v174) = v134;
      type metadata accessor for SessionID();
      v181 = v129;
      v136 = v130;
      sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
      v137 = dispatch thunk of CustomStringConvertible.description.getter();
      v139 = v138;

      v140 = sub_225095AFC(v137, v139, &v184);

      *(v135 + 4) = v140;
      *(v135 + 12) = 2080;
      sub_2250C853C(v131, v128, &qword_27D718F08, &qword_225444868);
      v141 = String.init<A>(describing:)();
      v142 = v131;
      v143 = v141;
      v144 = v43;
      v146 = v145;
      sub_2250C86F4(v142, &qword_27D718F08, &qword_225444868);
      v147 = sub_225095AFC(v143, v146, &v184);
      v43 = v144;

      *(v135 + 14) = v147;
      _os_log_impl(&dword_22506F000, v133, v174, "%s: received encryption acquisition event: %s", v135, 0x16u);
      v148 = v177;
      swift_arrayDestroy();
      MEMORY[0x22AA65DF0](v148, -1, -1);
      MEMORY[0x22AA65DF0](v135, -1, -1);

      v149 = v136;
      v129 = v181;
      (*(v179 + 8))(v149, v166);
    }

    else
    {

      sub_2250C86F4(v131, &qword_27D718F08, &qword_225444868);
      (*(v179 + 8))(v130, v166);
    }

    v154 = v132 + *(*v132 + 256);
    v156 = *v154;
    v155 = *(v154 + 8);
    v157 = *(v154 + 16);
    *v154 = v43;
    *(v154 + 8) = v129;
    *(v154 + 16) = v180;
    v158 = *(v154 + 24);
    *(v154 + 24) = 1;

    sub_2250C7A68(v156, v155, v157, v158, MEMORY[0x277D85008]);
    sub_2250B7520(6u);
  }

  else
  {
    CKLog.getter();
    v71 = v173;
    sub_2250C853C(v181, v173, &qword_27D718F08, &qword_225444868);

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v184 = v181;
      *v74 = 136315394;
      *v183 = v43;
      _s15EncryptionCheckCMa(0);

      v75 = String.init<A>(describing:)();
      v164 = v42;
      v77 = sub_225095AFC(v75, v76, &v184);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2080;
      sub_2250C853C(v71, v176, &qword_27D718F08, &qword_225444868);
      v78 = String.init<A>(describing:)();
      v80 = v79;
      sub_2250C86F4(v71, &qword_27D718F08, &qword_225444868);
      v81 = sub_225095AFC(v78, v80, &v184);

      *(v74 + 14) = v81;
      _os_log_impl(&dword_22506F000, v72, v73, "Ignoring event from obsolete encryption check instance %s %s", v74, 0x16u);
      v82 = v181;
      swift_arrayDestroy();
      MEMORY[0x22AA65DF0](v82, -1, -1);
      MEMORY[0x22AA65DF0](v74, -1, -1);
    }

    else
    {

      sub_2250C86F4(v71, &qword_27D718F08, &qword_225444868);
    }

    return (*(v179 + 8))(v33, v166);
  }
}

uint64_t sub_2250BD514(uint64_t a1, NSObject *a2)
{
  v188 = a2;
  v185 = a1;
  v186 = type metadata accessor for SessionReadinessError();
  v177 = *(v186 - 8);
  v3 = MEMORY[0x28223BE20](v186);
  v178 = &v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v176 = &v164 - v6;
  MEMORY[0x28223BE20](v5);
  v182 = &v164 - v7;
  v171 = sub_2250B0DFC(&unk_27D718E90, &qword_2254447C8);
  MEMORY[0x28223BE20](v171);
  v172 = (&v164 - v8);
  v9 = type metadata accessor for DataSecurityAcquiredPayload(0);
  MEMORY[0x28223BE20](v9 - 8);
  v175 = (&v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v183 = sub_2250B0DFC(&qword_27D718F30, &qword_2254448A0);
  v11 = MEMORY[0x28223BE20](v183);
  v174 = (&v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v179 = &v164 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v173 = &v164 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v187 = &v164 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v180 = &v164 - v20;
  MEMORY[0x28223BE20](v19);
  v181 = &v164 - v21;
  v22 = type metadata accessor for Logger();
  v184 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v164 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v164 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v164 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v164 - v35;
  v37 = sub_2250B0DFC(&qword_27D718F50, &qword_2254448C0);
  MEMORY[0x28223BE20](v37);
  v39 = &v164 - v38;
  v40 = v189;
  result = sub_2250B84E4();
  if (v40)
  {
    return result;
  }

  v170 = 0;
  v165 = v31;
  v168 = v34;
  v189 = v39;
  v166 = v25;
  v167 = v28;
  v42 = v186;
  v169 = v22;
  v43 = v2;
  v44 = sub_2250B73EC();
  v45 = v44;
  v46 = v185;
  if (!v44 || v44 != v185)
  {
    v76 = v36;
    CKLog.getter();
    v77 = v181;
    sub_2250C853C(v188, v181, &qword_27D718F30, &qword_2254448A0);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();

    v80 = os_log_type_enabled(v78, v79);
    v81 = v187;
    if (v80)
    {
      v82 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v190[0] = v189;
      *v82 = 136315394;
      v191 = v46;
      _s17DataSecurityCheckCMa(0);

      v83 = String.init<A>(describing:)();
      v85 = sub_225095AFC(v83, v84, v190);
      v185 = v45;
      v86 = v85;

      *(v82 + 4) = v86;
      *(v82 + 12) = 2080;
      sub_2250C853C(v77, v81, &qword_27D718F30, &qword_2254448A0);
      v87 = String.init<A>(describing:)();
      v89 = v88;
      sub_2250C86F4(v77, &qword_27D718F30, &qword_2254448A0);
      v90 = sub_225095AFC(v87, v89, v190);

      *(v82 + 14) = v90;
      _os_log_impl(&dword_22506F000, v78, v79, "Ignoring event from obsolete data security check instance %s %s", v82, 0x16u);
      v91 = v189;
      swift_arrayDestroy();
      MEMORY[0x22AA65DF0](v91, -1, -1);
      MEMORY[0x22AA65DF0](v82, -1, -1);

      return (*(v184 + 8))(v76, v169);
    }

    else
    {

      sub_2250C86F4(v77, &qword_27D718F30, &qword_2254448A0);
      return (*(v184 + 8))(v36, v169);
    }
  }

  v47 = v44;
  v48 = v2;
  v181 = *(*v2 + 296);
  v49 = *(v2 + v181);
  v50 = *(v37 + 48);
  v51 = v188;
  v52 = v189;
  *v189 = v49;
  sub_2250C853C(v51, &v52[v50], &qword_27D718F30, &qword_2254448A0);
  v53 = v182;
  v54 = v187;
  if (v49 == 1)
  {
    goto LABEL_7;
  }

  if (v49 != 6)
  {
    if (v49 == 9)
    {
LABEL_7:
      v185 = v47;
      sub_2250C86F4(&v189[v50], &qword_27D718F30, &qword_2254448A0);
      v55 = v168;
      CCLog.getter();
      v56 = v180;
      sub_2250C853C(v188, v180, &qword_27D718F30, &qword_2254448A0);

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v190[0] = v189;
        *v59 = 136315650;
        v188 = v57;
        type metadata accessor for SessionID();
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v62 = v61;

        v63 = sub_225095AFC(v60, v62, v190);

        *(v59 + 4) = v63;
        *(v59 + 12) = 2080;
        sub_2250C853C(v56, v187, &qword_27D718F30, &qword_2254448A0);
        v64 = v48;
        v65 = String.init<A>(describing:)();
        v67 = v66;
        sub_2250C86F4(v56, &qword_27D718F30, &qword_2254448A0);
        v68 = sub_225095AFC(v65, v67, v190);

        *(v59 + 14) = v68;
        *(v59 + 22) = 2080;
        LOBYTE(v191) = *(v64 + v181);
        sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
        v69 = String.init<A>(describing:)();
        v71 = v55;
        v72 = v58;
        v73 = sub_225095AFC(v69, v70, v190);

        *(v59 + 24) = v73;
        v74 = v188;
        _os_log_impl(&dword_22506F000, v188, v72, "%s: Ignoring received data security acquisition event: %s in state: %s", v59, 0x20u);
        v75 = v189;
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v75, -1, -1);
        MEMORY[0x22AA65DF0](v59, -1, -1);

        return (*(v184 + 8))(v71, v169);
      }

      else
      {

        sub_2250C86F4(v56, &qword_27D718F30, &qword_2254448A0);
        return (*(v184 + 8))(v55, v169);
      }
    }

    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
LABEL_13:
    v92 = v189;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v185 = v47;
      v93 = &v92[v50];
      v94 = v42;
      v95 = v177;
      (*(v177 + 32))(v53, v93, v94);
      v96 = v167;
      CCLog.getter();
      sub_2250C853C(v188, v179, &qword_27D718F30, &qword_2254448A0);
      v97 = v176;
      v188 = *(v95 + 16);
      v189 = (v95 + 16);
      (v188)(v176, v53, v94);

      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        LODWORD(v181) = v99;
        v101 = v100;
        v175 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        v190[0] = v180;
        *v101 = 136315650;
        v174 = v98;
        type metadata accessor for SessionID();
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
        v102 = dispatch thunk of CustomStringConvertible.description.getter();
        v104 = v103;

        v105 = sub_225095AFC(v102, v104, v190);

        *(v101 + 4) = v105;
        *(v101 + 12) = 2080;
        v106 = v179;
        sub_2250C853C(v179, v187, &qword_27D718F30, &qword_2254448A0);
        v107 = v97;
        v108 = v95;
        v109 = String.init<A>(describing:)();
        v111 = v110;
        sub_2250C86F4(v106, &qword_27D718F30, &qword_2254448A0);
        v112 = sub_225095AFC(v109, v111, v190);
        v48 = v43;

        *(v101 + 14) = v112;
        *(v101 + 22) = 2112;
        sub_2250C8748(&qword_280D53600, MEMORY[0x277CFAA78], MEMORY[0x277CFAA80]);
        v113 = v186;
        swift_allocError();
        (v188)(v114, v107, v113);
        v115 = _swift_stdlib_bridgeErrorToNSError();
        v116 = *(v108 + 8);
        v116(v107, v113);
        *(v101 + 24) = v115;
        v117 = v175;
        *v175 = v115;
        v118 = v174;
        _os_log_impl(&dword_22506F000, v174, v181, "%s: Received blocking data security acquisition event: %s, readinessError: %@", v101, 0x20u);
        sub_2250C86F4(v117, &unk_27D719030, &qword_225443AB0);
        MEMORY[0x22AA65DF0](v117, -1, -1);
        v119 = v180;
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v119, -1, -1);
        v53 = v182;
        MEMORY[0x22AA65DF0](v101, -1, -1);

        (*(v184 + 8))(v167, v169);
        v120 = v113;
      }

      else
      {

        v116 = *(v95 + 8);
        v120 = v186;
        v116(v97, v186);
        sub_2250C86F4(v179, &qword_27D718F30, &qword_2254448A0);
        (*(v184 + 8))(v96, v169);
      }

      v159 = *(v48 + qword_280D538C0);
      type metadata accessor for CKSessionReadinessErrorBox();
      (v188)(v178, v53, v120);
      v160 = CKSessionReadinessErrorBox.__allocating_init(_:)();
      [v159 noteSessionReadinessError_];

      sub_2250B7520(6u);

      return (v116)(v53, v120);
    }

    else
    {
      v121 = v166;
      CCLog.getter();
      v122 = v174;
      sub_2250C853C(v188, v174, &qword_27D718F30, &qword_2254448A0);

      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = v54;
        v126 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        v190[0] = v188;
        *v126 = 136315650;
        type metadata accessor for SessionID();
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
        v127 = dispatch thunk of CustomStringConvertible.description.getter();
        v129 = v128;

        v130 = sub_225095AFC(v127, v129, v190);

        *(v126 + 4) = v130;
        v185 = v47;
        *(v126 + 12) = 2080;
        sub_2250C853C(v122, v125, &qword_27D718F30, &qword_2254448A0);
        v131 = String.init<A>(describing:)();
        v132 = v122;
        v133 = v131;
        v134 = v48;
        v136 = v135;
        sub_2250C86F4(v132, &qword_27D718F30, &qword_2254448A0);
        v137 = sub_225095AFC(v133, v136, v190);

        *(v126 + 14) = v137;
        *(v126 + 22) = 2080;
        LOBYTE(v191) = *(v134 + v181);
        sub_2250B0DFC(&qword_27D718E88, &qword_2254447C0);
        v138 = String.init<A>(describing:)();
        v140 = sub_225095AFC(v138, v139, v190);

        *(v126 + 24) = v140;
        _os_log_impl(&dword_22506F000, v123, v124, "%s: Ignoring received data security acquisition event: %s in unexpected state: %s", v126, 0x20u);
        v141 = v188;
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v141, -1, -1);
        MEMORY[0x22AA65DF0](v126, -1, -1);

        (*(v184 + 8))(v166, v169);
      }

      else
      {

        sub_2250C86F4(v122, &qword_27D718F30, &qword_2254448A0);
        (*(v184 + 8))(v121, v169);
      }

      return sub_2250C86F4(v189, &qword_27D718F50, &qword_2254448C0);
    }
  }

  v142 = v175;
  sub_2250C7E68(&v189[v50], v175);
  v143 = v165;
  CCLog.getter();
  v144 = v173;
  sub_2250C853C(v188, v173, &qword_27D718F30, &qword_2254448A0);

  v145 = Logger.logObject.getter();
  v146 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v145, v146))
  {
    v147 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    v190[0] = v189;
    *v147 = 136315394;
    type metadata accessor for SessionID();
    sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
    v148 = dispatch thunk of CustomStringConvertible.description.getter();
    v150 = v149;

    v151 = sub_225095AFC(v148, v150, v190);

    *(v147 + 4) = v151;
    *(v147 + 12) = 2080;
    LODWORD(v188) = v146;
    v152 = v173;
    sub_2250C853C(v173, v187, &qword_27D718F30, &qword_2254448A0);
    v153 = String.init<A>(describing:)();
    v155 = v154;
    sub_2250C86F4(v152, &qword_27D718F30, &qword_2254448A0);
    v156 = v153;
    v142 = v175;
    v157 = sub_225095AFC(v156, v155, v190);
    v48 = v43;

    *(v147 + 14) = v157;
    _os_log_impl(&dword_22506F000, v145, v188, "%s: received data security acquisition event: %s", v147, 0x16u);
    v158 = v189;
    swift_arrayDestroy();
    MEMORY[0x22AA65DF0](v158, -1, -1);
    MEMORY[0x22AA65DF0](v147, -1, -1);

    (*(v184 + 8))(v165, v169);
  }

  else
  {

    sub_2250C86F4(v144, &qword_27D718F30, &qword_2254448A0);
    (*(v184 + 8))(v143, v169);
  }

  v161 = v172;
  v162 = *(sub_2250B0DFC(&qword_27D718F58, &qword_2254448C8) + 48);
  *v161 = v185;
  sub_2250C7ECC(v142, v161 + v162);
  swift_storeEnumTagMultiPayload();
  v163 = *(*v48 + 264);
  swift_beginAccess();

  sub_2250C7ACC(v161, v48 + v163, &unk_27D718E90, &qword_2254447C8);
  swift_endAccess();
  sub_2250B7520(7u);

  return sub_2250C7F30(v142);
}

uint64_t sub_2250BE96C()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = type metadata accessor for AnySessionConfiguration();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1 + *(*v1 + 240);
  v15 = *(v14 + 8);
  if (*(v14 + 8))
  {
    v37 = v6;
    if (v15 == 2)
    {
      v38 = v4;
      CCLog.getter();

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v34 = v18;
        v35 = swift_slowAlloc();
        v39 = v35;
        *v18 = 136315138;
        type metadata accessor for SessionID();
        v36 = v5;
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v20;

        v22 = sub_225095AFC(v19, v21, &v39);
        v5 = v36;

        v23 = v34;
        *(v34 + 1) = v22;
        v24 = v23;
        _os_log_impl(&dword_22506F000, v16, v17, "%s: starting device check", v23, 0xCu);
        v25 = v35;
        sub_225073BF0(v35);
        MEMORY[0x22AA65DF0](v25, -1, -1);
        MEMORY[0x22AA65DF0](v24, -1, -1);
      }

      else
      {
      }

      (*(v10 + 8))(v13, v9);
      v26 = *(v1 + qword_280D538C8);
      (*(v37 + 16))(v8, v1 + qword_280D538E8, v5);
      _s11DeviceCheckCMa(0);
      swift_allocObject();
      v27 = sub_2250DE0A4(v8, v26);
      v28 = *v14;
      *v14 = v27;
      v29 = *(v14 + 8);
      *(v14 + 8) = 0;
      swift_unknownObjectRetain();

      sub_2250C79F8(v28, v29);
      v30 = type metadata accessor for TaskPriority();
      v31 = v38;
      sub_22507C8C0(v38, 1, 1, v30);
      v32 = sub_2250C7E20(qword_280D537A0, &qword_27D718E80, &qword_2254447A8, &unk_225444708);
      v33 = swift_allocObject();
      v33[2] = v1;
      v33[3] = v32;
      v33[4] = v27;
      v33[5] = v1;
      swift_retain_n();
      sub_2250B5ADC(0, 0, v31, &unk_2254447F0, v33);
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2250BEE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
  v5[5] = swift_task_alloc();
  sub_2250B0DFC(&unk_27D718EB0, &qword_225444800);
  v5[6] = swift_task_alloc();
  v5[7] = sub_2250B0DFC(&qword_27D719190, &qword_225444808);
  v5[8] = swift_task_alloc();
  v7 = sub_2250B0DFC(&qword_27D718EC0, &qword_225444810);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250BEFA0, a5, 0);
}

uint64_t sub_2250BEFA0()
{
  sub_22507CE94();
  sub_22507D3A4();
  sub_2250DE128(v0);
  v1 = sub_22507CA2C(&qword_280D53458, &qword_27D719190, &qword_225444808);
  sub_225097DC4(v1);
  v2 = sub_22507F2C4(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
  sub_2250C87A8(v2);
  sub_22507CD0C(&unk_280D53480, &qword_27D718EC0, &qword_225444810);
  v3 = swift_task_alloc();
  v4 = sub_22507E994(v3);
  *v4 = v5;
  v6 = sub_225072D30(v4);

  return MEMORY[0x282200310](v6);
}

uint64_t sub_2250BF094()
{
  sub_225072C10();
  sub_225075560();
  v3 = v2;
  sub_22507D320();
  *v4 = v3;
  v5 = *v1;
  sub_225072D68();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v8 = sub_225095410();

    return MEMORY[0x2822009F8](v8);
  }

  return result;
}

uint64_t sub_2250BF18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2250981E4();
  sub_2250C8824();
  sub_225093BD0();
  if (v13)
  {
    v14 = sub_22507E6D0();
    v15(v14);

    sub_22507CC50();
LABEL_6:
    sub_225095898();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  sub_225095448();
  sub_2250C8950(v16, v17, &unk_27D719000, &qword_225444F50);
  v18 = sub_225097640();
  sub_2250B9BA8(v18, v19);
  if (v10)
  {
    sub_2250981AC();
    sub_2250C86F4(v12, &unk_27D719000, &qword_225444F50);
    v20 = sub_2250C8798();
    v21(v20);

    sub_225082628();
    goto LABEL_6;
  }

  sub_2250C86F4(*(v11 + 40), &unk_27D719000, &qword_225444F50);
  sub_22509575C();
  sub_22507CD0C(&unk_280D53480, &qword_27D718EC0, &qword_225444810);
  v31 = swift_task_alloc();
  v32 = sub_22507E994(v31);
  *v32 = v33;
  sub_225072D30(v32);
  sub_225095898();

  return MEMORY[0x282200310](v34);
}

void sub_2250BF334()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = &v51 - v3;
  v4 = type metadata accessor for AnySessionConfiguration();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v61 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v51 - v7;
  v56 = type metadata accessor for Entitlements();
  v8 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v51 - v15;
  v17 = qword_280D538E8;
  AnySessionConfiguration.account.getter();
  v18 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v19 = sub_22507C8E8(v16, 1, v18);
  sub_2250C86F4(v16, &unk_27D718ED0, &qword_225444FF0);
  if (v19 == 1)
  {
    sub_2250B7520(5u);
  }

  else
  {
    v20 = v1 + *(*v1 + 248);
    if (*(v20 + 16))
    {
      if (*(v20 + 16) == 2)
      {
        v54 = (v1 + *(*v1 + 248));
        CCLog.getter();

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *&v65 = v53;
          *v23 = 136315138;
          LODWORD(v52) = v22;
          type metadata accessor for SessionID();
          sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
          v24 = dispatch thunk of CustomStringConvertible.description.getter();
          v26 = v25;

          v27 = sub_225095AFC(v24, v26, &v65);

          *(v23 + 4) = v27;
          _os_log_impl(&dword_22506F000, v21, v52, "%s: starting account check", v23, 0xCu);
          v28 = v53;
          sub_225073BF0(v53);
          MEMORY[0x22AA65DF0](v28, -1, -1);
          MEMORY[0x22AA65DF0](v23, -1, -1);
        }

        else
        {
        }

        (*(v11 + 8))(v13, v10);
        v29 = *(*v1 + 200);
        v30 = *(v1 + qword_280D538C8);
        v52 = *(v8 + 16);
        v53 = v30;
        v32 = v55;
        v31 = v56;
        v52(v55, v1 + v29, v56);
        v33 = v57;
        v34 = v58;
        v35 = *(v58 + 16);
        v36 = v1 + v17;
        v37 = v59;
        v35(v57, v36, v59);
        v35(v61, v33, v37);
        _s12AccountCheckCMa(0);
        v38 = swift_allocObject();
        v39 = MEMORY[0x277CFA990];
        v40 = (v38 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_entitlements);
        v40[3] = v31;
        v40[4] = v39;
        v41 = sub_225073808(v40);
        v52(v41, v32, v31);
        v66 = &_s10TCCCheckerVN;
        v67 = &off_28385ABF8;
        v63 = &_s14AccountFactoryVN;
        v64 = &off_28385AB50;
        v42 = *(v8 + 8);
        v43 = v53;
        swift_unknownObjectRetain();
        v42(v32, v31);
        (*(v34 + 8))(v33, v37);
        *(v38 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_actor) = 0;
        (*(v34 + 32))(v38 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_sessionConfiguration, v61, v37);
        *(v38 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_testDeviceReferenceProtocol) = v43;
        sub_2250A93B4(&v65, v38 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_tccChecker);
        sub_2250A93B4(&v62, v38 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_accountFactory);
        v44 = v54;
        v45 = *v54;
        v46 = v54[1];
        *v54 = v38;
        v44[1] = 0;
        LOBYTE(v31) = *(v44 + 16);
        *(v44 + 16) = 0;

        sub_2250C7A0C(v45, v46, v31);
        v47 = type metadata accessor for TaskPriority();
        v48 = v60;
        sub_22507C8C0(v60, 1, 1, v47);
        v49 = sub_2250C7E20(qword_280D537A0, &qword_27D718E80, &qword_2254447A8, &unk_225444708);
        v50 = swift_allocObject();
        v50[2] = v1;
        v50[3] = v49;
        v50[4] = v38;
        v50[5] = v1;
        swift_retain_n();
        sub_2250B5ADC(0, 0, v48, &unk_225444828, v50);
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }
  }
}

uint64_t sub_2250BFA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_2250B0DFC(&qword_27D719010, &qword_225444830);
  v5[5] = swift_task_alloc();
  sub_2250B0DFC(&qword_27D718EE0, &qword_225444838);
  v5[6] = swift_task_alloc();
  v5[7] = sub_2250B0DFC(&qword_27D718EE8, &qword_225444840);
  v5[8] = swift_task_alloc();
  v7 = sub_2250B0DFC(&qword_27D718EF0, &qword_225444848);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250BFBF0, a5, 0);
}

uint64_t sub_2250BFBF0()
{
  sub_22507CE94();
  sub_22507D3A4();
  sub_2250C9F08(v0);
  v1 = sub_22507CA2C(&qword_280D53460, &qword_27D718EE8, &qword_225444840);
  sub_225097DC4(v1);
  v2 = sub_22507F2C4(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
  sub_2250C87A8(v2);
  sub_22507CD0C(&qword_280D53490, &qword_27D718EF0, &qword_225444848);
  v3 = swift_task_alloc();
  v4 = sub_22507E994(v3);
  *v4 = v5;
  v6 = sub_225072D30(v4);

  return MEMORY[0x282200310](v6);
}

uint64_t sub_2250BFCE4()
{
  sub_225072C10();
  sub_225075560();
  v3 = v2;
  sub_22507D320();
  *v4 = v3;
  v5 = *v1;
  sub_225072D68();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v8 = sub_225095410();

    return MEMORY[0x2822009F8](v8);
  }

  return result;
}

uint64_t sub_2250BFDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2250981E4();
  sub_2250C8824();
  sub_225093BD0();
  if (v13)
  {
    v14 = sub_22507E6D0();
    v15(v14);

    sub_22507CC50();
LABEL_6:
    sub_225095898();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  sub_225095448();
  sub_2250C8950(v16, v17, &qword_27D719010, &qword_225444830);
  v18 = sub_225097640();
  sub_2250BAEEC(v18, v19);
  if (v10)
  {
    sub_2250981AC();
    sub_2250C86F4(v12, &qword_27D719010, &qword_225444830);
    v20 = sub_2250C8798();
    v21(v20);

    sub_225082628();
    goto LABEL_6;
  }

  sub_2250C86F4(*(v11 + 40), &qword_27D719010, &qword_225444830);
  sub_22509575C();
  sub_22507CD0C(&qword_280D53490, &qword_27D718EF0, &qword_225444848);
  v31 = swift_task_alloc();
  v32 = sub_22507E994(v31);
  *v32 = v33;
  sub_225072D30(v32);
  sub_225095898();

  return MEMORY[0x282200310](v34);
}

void sub_2250BFF84()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v2 - 8);
  v71 = &v62 - v3;
  v4 = type metadata accessor for AnySessionConfiguration();
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v73 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = &v62 - v7;
  v8 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v72 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v66 = &v62 - v12;
  MEMORY[0x28223BE20](v11);
  v67 = &v62 - v13;
  v65 = type metadata accessor for Logger();
  v64 = *(v65 - 1);
  MEMORY[0x28223BE20](v65);
  v63 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2250B0DFC(&unk_27D7190E0, &unk_2254447D0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v62 - v20;
  v22 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v62 - v23;
  v25 = qword_280D538E8;
  AnySessionConfiguration.account.getter();
  v26 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v27 = sub_22507C8E8(v24, 1, v26);
  sub_2250C86F4(v24, &unk_27D718ED0, &qword_225444FF0);
  if (v27 == 1)
  {
    goto LABEL_9;
  }

  AnySessionConfiguration.encryption.getter();
  v28 = type metadata accessor for AuthenticatedSession.Configuration.Encryption();
  if (sub_22507C8E8(v21, 1, v28) == 1)
  {
    sub_2250C86F4(v21, &unk_27D7190E0, &unk_2254447D0);
LABEL_9:
    sub_2250B7520(6u);
    return;
  }

  AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter();
  (*(*(v28 - 8) + 8))(v21, v28);
  AuthenticatedSession.Configuration.Encryption.ServiceIdentity.serviceName.getter();
  v30 = v29;
  (*(v16 + 8))(v18, v15);
  if (!v30)
  {
    goto LABEL_9;
  }

  v31 = v1 + *(*v1 + 256);
  if (*(v31 + 24))
  {
    if (*(v31 + 24) == 2)
    {
      v32 = v63;
      CCLog.getter();

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      v35 = os_log_type_enabled(v33, v34);
      v62 = v31;
      if (v35)
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *&v77 = v37;
        *v36 = 136315138;
        type metadata accessor for SessionID();
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v39;

        v41 = sub_225095AFC(v38, v40, &v77);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_22506F000, v33, v34, "%s: starting encryption check", v36, 0xCu);
        sub_225073BF0(v37);
        MEMORY[0x22AA65DF0](v37, -1, -1);
        MEMORY[0x22AA65DF0](v36, -1, -1);
      }

      else
      {
      }

      v64[1](v32, v65);
      v42 = v1 + *(*v1 + 248);
      if (*(v42 + 16) == 1)
      {
        v43 = qword_280D538D0;
        v65 = *(v42 + 8);
        swift_beginAccess();
        v44 = v67;
        sub_2250C853C(v1 + v43, v67, &unk_27D718E60, &unk_225444780);
        v63 = *(v1 + qword_280D538C8);
        v64 = *(v1 + *(*v1 + 216));
        v46 = v68;
        v45 = v69;
        v47 = *(v69 + 16);
        v48 = v1 + v25;
        v49 = v70;
        v47(v68, v48, v70);
        v50 = v66;
        sub_2250C853C(v44, v66, &unk_27D718E60, &unk_225444780);
        v47(v73, v46, v49);
        sub_2250C853C(v50, v72, &unk_27D718E60, &unk_225444780);
        _s15EncryptionCheckCMa(0);
        v51 = swift_allocObject();
        v78 = sub_2250C7F8C(0, &qword_280D53450, off_278543938);
        v79 = &off_28385A390;
        v52 = v65;
        *&v77 = v65;
        v75 = &_s17SystemInteractionVN_0;
        v76 = &off_283859F78;
        v53 = v63;
        swift_unknownObjectRetain();
        v65 = v52;
        v64 = v64;
        sub_2250C86F4(v50, &unk_27D718E60, &unk_225444780);
        (*(v45 + 8))(v46, v49);
        sub_2250C86F4(v44, &unk_27D718E60, &unk_225444780);
        *(v51 + 16) = 0;
        (*(v45 + 32))(v51 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_sessionConfiguration, v73, v49);
        sub_2250C8588(v72, v51 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_previousInvalidationContext, &unk_27D718E60, &unk_225444780);
        *(v51 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_testDeviceReferenceProtocol) = v53;
        sub_2250A93B4(&v77, v51 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_account);
        *(v51 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_applicationID) = v64;
        sub_2250A93B4(&v74, v51 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck15EncryptionCheck_systemInteraction);
        v54 = v62;
        v55 = *v62;
        v56 = v62[1];
        v57 = v62[2];
        v62[1] = 0;
        v54[2] = 0;
        *v54 = v51;
        LOBYTE(v46) = *(v54 + 24);
        *(v54 + 24) = 0;

        sub_2250C7A68(v55, v56, v57, v46, MEMORY[0x277D85008]);
        v58 = type metadata accessor for TaskPriority();
        v59 = v71;
        sub_22507C8C0(v71, 1, 1, v58);
        v60 = sub_2250C7E20(qword_280D537A0, &qword_27D718E80, &qword_2254447A8, &unk_225444708);
        v61 = swift_allocObject();
        v61[2] = v1;
        v61[3] = v60;
        v61[4] = v51;
        v61[5] = v1;
        swift_retain_n();

        sub_2250B5ADC(0, 0, v59, &unk_225444860, v61);

        return;
      }
    }

    else
    {
      *&v77 = 0;
      *(&v77 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      MEMORY[0x22AA62E50](0xD000000000000012, 0x80000002254798D0);
      MEMORY[0x22AA62E50](0xD00000000000001BLL, 0x80000002254798F0);
      MEMORY[0x22AA62E50](0xD000000000000020, 0x8000000225479910);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_2250C0A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_2250B0DFC(&qword_27D718F08, &qword_225444868);
  v5[5] = swift_task_alloc();
  sub_2250B0DFC(&unk_27D718F10, &qword_225444870);
  v5[6] = swift_task_alloc();
  v5[7] = sub_2250B0DFC(&qword_27D719240, &qword_225444878);
  v5[8] = swift_task_alloc();
  v7 = sub_2250B0DFC(&qword_27D718F20, &qword_225444880);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250C0BB8, a5, 0);
}

uint64_t sub_2250C0BB8()
{
  sub_22507CE94();
  sub_22507D3A4();
  sub_2250E2650();
  v0 = sub_22507CA2C(&qword_280D53478, &qword_27D719240, &qword_225444878);
  sub_225097DC4(v0);
  v1 = sub_22507F2C4(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
  sub_2250C87A8(v1);
  sub_22507CD0C(&unk_280D534A0, &qword_27D718F20, &qword_225444880);
  v2 = swift_task_alloc();
  v3 = sub_22507E994(v2);
  *v3 = v4;
  v5 = sub_225072D30(v3);

  return MEMORY[0x282200310](v5);
}

uint64_t sub_2250C0CAC()
{
  sub_225072C10();
  sub_225075560();
  v3 = v2;
  sub_22507D320();
  *v4 = v3;
  v5 = *v1;
  sub_225072D68();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v8 = sub_225095410();

    return MEMORY[0x2822009F8](v8);
  }

  return result;
}

uint64_t sub_2250C0DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2250981E4();
  sub_2250C8824();
  sub_225093BD0();
  if (v13)
  {
    v14 = sub_22507E6D0();
    v15(v14);

    sub_22507CC50();
LABEL_6:
    sub_225095898();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  sub_225095448();
  sub_2250C8950(v16, v17, &qword_27D718F08, &qword_225444868);
  v18 = sub_225097640();
  sub_2250BC1F8(v18, v19);
  if (v10)
  {
    sub_2250981AC();
    sub_2250C86F4(v12, &qword_27D718F08, &qword_225444868);
    v20 = sub_2250C8798();
    v21(v20);

    sub_225082628();
    goto LABEL_6;
  }

  sub_2250C86F4(*(v11 + 40), &qword_27D718F08, &qword_225444868);
  sub_22509575C();
  sub_22507CD0C(&unk_280D534A0, &qword_27D718F20, &qword_225444880);
  v31 = swift_task_alloc();
  v32 = sub_22507E994(v31);
  *v32 = v33;
  sub_225072D30(v32);
  sub_225095898();

  return MEMORY[0x282200310](v34);
}

void sub_2250C0F4C()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v2 - 8);
  v82 = &v74 - v3;
  v4 = type metadata accessor for AnySessionConfiguration();
  v80 = *(v4 - 8);
  v81 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v85 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v78 = &v74 - v7;
  v8 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v84 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v77 = &v74 - v12;
  MEMORY[0x28223BE20](v11);
  v83 = &v74 - v13;
  v76 = type metadata accessor for Logger();
  v75 = *(v76 - 1);
  MEMORY[0x28223BE20](v76);
  v74 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_2250B0DFC(&unk_27D718E90, &qword_2254447C8);
  v15 = MEMORY[0x28223BE20](v86);
  v79 = (&v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v18 = &v74 - v17;
  v19 = type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity();
  v87 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2250B0DFC(&unk_27D7190E0, &unk_2254447D0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v74 - v23;
  v25 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v74 - v26;
  v28 = qword_280D538E8;
  AnySessionConfiguration.account.getter();
  v29 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v30 = sub_22507C8E8(v27, 1, v29);
  sub_2250C86F4(v27, &unk_27D718ED0, &qword_225444FF0);
  if (v30 == 1)
  {
    goto LABEL_7;
  }

  AnySessionConfiguration.encryption.getter();
  v31 = type metadata accessor for AuthenticatedSession.Configuration.Encryption();
  v32 = v1;
  if (sub_22507C8E8(v24, 1, v31) == 1)
  {
    sub_2250C86F4(v24, &unk_27D7190E0, &unk_2254447D0);
LABEL_7:
    sub_2250B7520(7u);
    return;
  }

  AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter();
  (*(*(v31 - 8) + 8))(v24, v31);
  AuthenticatedSession.Configuration.Encryption.ServiceIdentity.serviceName.getter();
  v34 = v33;
  (*(v87 + 8))(v21, v19);
  if (!v34)
  {
    goto LABEL_7;
  }

  v35 = *(*v1 + 264);
  swift_beginAccess();
  sub_2250C853C(v1 + v35, v18, &unk_27D718E90, &qword_2254447C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2250C86F4(v18, &unk_27D718E90, &qword_2254447C8);
    return;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v37 = v74;
    CCLog.getter();

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    v40 = os_log_type_enabled(v38, v39);
    v87 = v35;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v88[0] = v42;
      *v41 = 136315138;
      type metadata accessor for SessionID();
      v43 = v28;
      sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;

      v47 = sub_225095AFC(v44, v46, v88);
      v28 = v43;

      *(v41 + 4) = v47;
      _os_log_impl(&dword_22506F000, v38, v39, "%s: starting data security check", v41, 0xCu);
      sub_225073BF0(v42);
      MEMORY[0x22AA65DF0](v42, -1, -1);
      MEMORY[0x22AA65DF0](v41, -1, -1);
    }

    else
    {
    }

    (*(v75 + 8))(v37, v76);
    v48 = v32 + *(*v32 + 248);
    if (*(v48 + 16) == 1)
    {
      v49 = qword_280D538D0;
      v76 = *(v48 + 8);
      swift_beginAccess();
      v50 = v32;
      v51 = v32 + v49;
      v52 = v83;
      sub_2250C853C(v51, v83, &unk_27D718E60, &unk_225444780);
      v53 = *(v50 + qword_280D538C8);
      v55 = v80;
      v54 = v81;
      v56 = *(v80 + 16);
      v57 = v50 + v28;
      v58 = v78;
      v56(v78, v57, v81);
      v59 = v52;
      v60 = v77;
      sub_2250C853C(v59, v77, &unk_27D718E60, &unk_225444780);
      v56(v85, v58, v54);
      sub_2250C853C(v60, v84, &unk_27D718E60, &unk_225444780);
      _s17DataSecurityCheckCMa(0);
      v61 = swift_allocObject();
      v62 = (v61 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_account);
      v62[3] = sub_2250C7F8C(0, &qword_280D53450, off_278543938);
      v62[4] = &off_28385A390;
      v63 = v76;
      *v62 = v76;
      v64 = v61 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_systemInteraction;
      *(v64 + 24) = &_s17SystemInteractionVN;
      *(v64 + 32) = &off_28385ADB8;
      swift_unknownObjectRetain();
      v76 = v63;
      sub_2250C86F4(v60, &unk_27D718E60, &unk_225444780);
      (*(v55 + 8))(v58, v54);
      *(v61 + 16) = 0;
      v65 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_dataProtectionStatus;
      v66 = *MEMORY[0x277CFA9C8];
      v67 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
      (*(*(v67 - 8) + 104))(v61 + v65, v66, v67);
      (*(v55 + 32))(v61 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_sessionConfiguration, v85, v54);
      sub_2250C8588(v84, v61 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_previousInvalidationContext, &unk_27D718E60, &unk_225444780);
      *(v61 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck17DataSecurityCheck_testDeviceReferenceProtocol) = v53;
      sub_2250C86F4(v83, &unk_27D718E60, &unk_225444780);
      v68 = v79;
      *v79 = v61;
      swift_storeEnumTagMultiPayload();
      v69 = v87;
      swift_beginAccess();

      sub_2250C7ACC(v68, v50 + v69, &unk_27D718E90, &qword_2254447C8);
      swift_endAccess();
      v70 = type metadata accessor for TaskPriority();
      v71 = v82;
      sub_22507C8C0(v82, 1, 1, v70);
      v72 = sub_2250C7E20(qword_280D537A0, &qword_27D718E80, &qword_2254447A8, &unk_225444708);
      v73 = swift_allocObject();
      v73[2] = v50;
      v73[3] = v72;
      v73[4] = v61;
      v73[5] = v50;
      swift_retain_n();

      sub_2250B5ADC(0, 0, v71, &unk_225444898, v73);

      return;
    }
  }

  else
  {
    v88[0] = 0;
    v88[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    MEMORY[0x22AA62E50](0xD000000000000012, 0x80000002254798D0);
    MEMORY[0x22AA62E50](0xD00000000000001DLL, 0x8000000225479990);
    MEMORY[0x22AA62E50](0xD000000000000023, 0x80000002254799B0);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_2250C1AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_2250B0DFC(&qword_27D718F30, &qword_2254448A0);
  v5[5] = swift_task_alloc();
  sub_2250B0DFC(&qword_27D718F38, &qword_2254448A8);
  v5[6] = swift_task_alloc();
  v5[7] = sub_2250B0DFC(&qword_27D718F40, &qword_2254448B0);
  v5[8] = swift_task_alloc();
  v7 = sub_2250B0DFC(&qword_27D718F48, &qword_2254448B8);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250C1C44, a5, 0);
}

uint64_t sub_2250C1C44()
{
  sub_22507CE94();
  sub_22507D3A4();
  sub_2250D88CC(v0);
  v1 = sub_22507CA2C(&qword_280D53470, &qword_27D718F40, &qword_2254448B0);
  sub_225097DC4(v1);
  v2 = sub_22507F2C4(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
  sub_2250C87A8(v2);
  sub_22507CD0C(&qword_280D53498, &qword_27D718F48, &qword_2254448B8);
  v3 = swift_task_alloc();
  v4 = sub_22507E994(v3);
  *v4 = v5;
  v6 = sub_225072D30(v4);

  return MEMORY[0x282200310](v6);
}

uint64_t sub_2250C1D38()
{
  sub_225072C10();
  sub_225075560();
  v3 = v2;
  sub_22507D320();
  *v4 = v3;
  v5 = *v1;
  sub_225072D68();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v8 = sub_225095410();

    return MEMORY[0x2822009F8](v8);
  }

  return result;
}

uint64_t sub_2250C1E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2250981E4();
  sub_2250C8824();
  sub_225093BD0();
  if (v13)
  {
    v14 = sub_22507E6D0();
    v15(v14);

    sub_22507CC50();
LABEL_6:
    sub_225095898();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  sub_225095448();
  sub_2250C8950(v16, v17, &qword_27D718F30, &qword_2254448A0);
  v18 = sub_225097640();
  sub_2250BD514(v18, v19);
  if (v10)
  {
    sub_2250981AC();
    sub_2250C86F4(v12, &qword_27D718F30, &qword_2254448A0);
    v20 = sub_2250C8798();
    v21(v20);

    sub_225082628();
    goto LABEL_6;
  }

  sub_2250C86F4(*(v11 + 40), &qword_27D718F30, &qword_2254448A0);
  sub_22509575C();
  sub_22507CD0C(&qword_280D53498, &qword_27D718F48, &qword_2254448B8);
  v31 = swift_task_alloc();
  v32 = sub_22507E994(v31);
  *v32 = v33;
  sub_225072D30(v32);
  sub_225095898();

  return MEMORY[0x282200310](v34);
}

void sub_2250C1FD8()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v66 - v3;
  v5 = type metadata accessor for AnySessionConfiguration();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x28223BE20](v5);
  v71 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContainerID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v70 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v66 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v66 - v18;
  v72 = *(*v0 + 280);
  if (*(v0 + v72))
  {
    goto LABEL_12;
  }

  v76 = qword_280D538E8;
  AnySessionConfiguration.account.getter();
  v20 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v21 = sub_22507C8E8(v19, 1, v20);
  sub_2250C86F4(v19, &unk_27D718ED0, &qword_225444FF0);
  if (v21 == 1)
  {
    sub_2250B7520(8u);
    return;
  }

  v75 = v12;
  CCLog.getter();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v68 = v4;
  v69 = v8;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v77 = v26;
    *v25 = 136315138;
    type metadata accessor for SessionID();
    v67 = v7;
    sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;

    v30 = sub_225095AFC(v27, v29, &v77);
    v7 = v67;

    *(v25 + 4) = v30;
    _os_log_impl(&dword_22506F000, v22, v23, "%s: fetching user info", v25, 0xCu);
    sub_225073BF0(v26);
    v31 = v26;
    v8 = v69;
    MEMORY[0x22AA65DF0](v31, -1, -1);
    MEMORY[0x22AA65DF0](v25, -1, -1);
  }

  else
  {
  }

  (*(v14 + 8))(v16, v13);
  v32 = v75;
  AnySessionConfiguration.containerID.getter();
  v33 = *(v1 + *(*v1 + 216));
  sub_2250C7F8C(0, &unk_280D53420, 0x277CBC220);
  (*(v8 + 16))(v70, v32, v7);
  v34 = v33;
  v35 = CKContainerID.init(_:)();
  v36 = (v1 + *(*v1 + 272));
  v37 = *v36;
  v38 = v36[1];
  objc_allocWithZone(CKDAppContainerTuple);

  v39 = sub_2250C72F8(v34, v35, v37, v38);
  if (*(v1 + *(*v1 + 248) + 16) != 1)
  {
LABEL_12:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v40 = v39;
    v41 = [objc_allocWithZone(MEMORY[0x277CBC230]) init];
    v42 = [v34 applicationBundleIdentifierOverrideForTCC];
    [v41 setApplicationBundleIdentifierOverrideForTCC_];

    v43 = [v34 applicationBundleIdentifierOverrideForContainerAccess];
    [v41 setApplicationBundleIdentifierOverrideForContainerAccess_];

    v44 = [v34 applicationBundleIdentifierOverrideForNetworkAttribution];
    [v41 setApplicationBundleIdentifierOverrideForNetworkAttribution_];

    v45 = [v34 applicationBundleIdentifierOverrideForPushTopicGeneration];
    [v41 setApplicationBundleIdentifierOverrideForPushTopicGeneration_];

    v46 = v36[1];
    v47 = v7;
    if (v46)
    {
      v48 = *v36;

      v49 = MEMORY[0x22AA62D80](v48, v46);
    }

    else
    {
      v49 = 0;
    }

    [v41 setPersonaIdentifier_];

    [v41 setTestDeviceReferenceProtocol_];
    sub_2250C7F8C(0, &qword_280D53418, 0x277CBC170);
    (*(v73 + 16))(v71, v1 + v76, v74);
    v50 = CKAccountOverrideInfo.init(sessionConfiguration:)();
    [v41 setAccountOverrideInfo_];

    v51 = *(v1 + qword_280D538D8);
    v52 = *(v1 + *(*v1 + 208));
    sub_2250C7F8C(0, &qword_280D53430, off_2785439F8);
    v53 = objc_opt_self();
    v54 = v51;
    v55 = v52;
    v56 = v41;
    v57 = v40;
    v58 = sub_2250C6F60(v57, v51, 0, v52, v56, [v53 sharedInternalUseContainers]);
    v59 = *(v1 + v72);
    *(v1 + v72) = v58;
    v60 = v58;

    v61 = type metadata accessor for TaskPriority();
    v62 = v68;
    sub_22507C8C0(v68, 1, 1, v61);
    v63 = sub_2250C7E20(qword_280D537A0, &qword_27D718E80, &qword_2254447A8, &unk_225444708);
    v64 = swift_allocObject();
    v64[2] = v1;
    v64[3] = v63;
    v64[4] = v1;
    v64[5] = v60;
    swift_retain_n();
    v65 = v60;
    sub_2250B5ADC(0, 0, v62, &unk_2254448D8, v64);

    (*(v69 + 8))(v75, v47);
  }
}

uint64_t sub_2250C292C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2250C294C, a4, 0);
}

uint64_t sub_2250C294C()
{
  sub_225094938();
  sub_22507E6E8();
  *(v0 + 32) = *(**(v0 + 16) + 232);
  sub_22507F2C4(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
  v1 = swift_task_alloc();
  sub_2250C8854(v1);
  swift_task_alloc();
  sub_22508E734();
  *(v0 + 48) = v2;
  *v2 = v3;
  sub_22509535C(v2);
  sub_22507F1C8();
  sub_2250957B8();

  return MEMORY[0x28214D190](v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_2250C2A1C()
{
  sub_225072C10();
  sub_225075560();
  v3 = v2;
  sub_22507D320();
  *v4 = v3;
  v5 = *v1;
  sub_225072D68();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    v7 = *(v3 + 16);
    v8 = sub_2250C2C50;
  }

  else
  {
    v9 = *(v3 + 16);

    v8 = sub_2250C2B2C;
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2250C2B2C()
{
  sub_225094938();
  sub_22507E6E8();
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);
    ExponentialNetworkBackoff.reset()();
    sub_2250B84E4();
    if (v1)
    {
      sub_225082628();
    }

    else
    {
      sub_2250B7520(8u);
      sub_22507CC50();
    }

    sub_2250957B8();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    sub_22507F2C4(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
    v2 = swift_task_alloc();
    sub_2250C8854(v2);
    swift_task_alloc();
    sub_22508E734();
    *(v0 + 48) = v3;
    *v3 = v4;
    sub_22509535C(v3);
    sub_22507F1C8();
    sub_2250957B8();

    return MEMORY[0x28214D190](v5, v6, v7, v8, v9, v10, v11, v12);
  }
}

uint64_t sub_2250C2C50()
{
  sub_225072C10();

  sub_225075274();

  return v0();
}

uint64_t sub_2250C2CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v6 = type metadata accessor for Logger();
  v4[4] = v6;
  v4[5] = *(v6 - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250C2D70, a3, 0);
}

uint64_t sub_2250C2D70()
{
  sub_22507CE94();
  sub_2250B84E4();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_2250C2E54;

  return sub_2250B2DDC();
}

uint64_t sub_2250C2E54()
{
  sub_225072C10();
  sub_225075560();
  v3 = v2;
  sub_22507D320();
  *v4 = v3;
  v5 = *v1;
  sub_225072D68();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {

    sub_2250C87DC();

    __asm { BRAA            X2, X16 }
  }

  v7 = sub_225095410();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2250C2F7C()
{
  sub_22507E6E8();
  v1 = v0[8];
  CKLog.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    sub_2250C88A8(&dword_22506F000, v10, v11, "Failed to obtain user ids, will try again after backoff: %@");
    sub_2250C86F4(v7, &unk_27D719030, &qword_225443AB0);
    sub_22507C9FC();
    sub_22507C9FC();
  }

  v12 = v0[8];
  v14 = v0[5];
  v13 = v0[6];
  v15 = v0[4];

  (*(v14 + 8))(v13, v15);
  ExponentialNetworkBackoff.incrementBackoffCount()();

  sub_2250C87DC();
  v16 = sub_2250C8804(v0[8]);

  return v17(v16);
}

void sub_2250C3100()
{
  v1 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v1 - 8);
  v48 = &v44 - v2;
  v3 = type metadata accessor for Logger();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AuthenticatedSession.Configuration.Application.PushRegistration.Payload();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v44 - v8;
  v9 = type metadata accessor for AuthenticatedSession.Configuration.Application.PushRegistration();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AuthenticatedSession.Configuration.Application();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v44 - v17;
  v19 = v0;
  AnySessionConfiguration.account.getter();
  v20 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v21 = sub_22507C8E8(v18, 1, v20);
  sub_2250C86F4(v18, &unk_27D718ED0, &qword_225444FF0);
  if (v21 == 1 || (AnySessionConfiguration.application.getter(), AuthenticatedSession.Configuration.Application.pushRegistration.getter(), (*(v13 + 8))(v15, v12), v22 = v51, AuthenticatedSession.Configuration.Application.PushRegistration.payload.getter(), (*(v49 + 8))(v11, v50), v24 = v52, v23 = v53, v25 = v54, (*(v53 + 104))(v52, *MEMORY[0x277CFA9F8], v54), sub_2250C8748(&unk_280D53608, MEMORY[0x277CFAA08], MEMORY[0x277CFAA10]), v26 = dispatch thunk of static Equatable.== infix(_:_:)(), v27 = *(v23 + 8), v27(v24, v25), v27(v22, v25), (v26 & 1) != 0))
  {
    sub_2250B7520(9u);
  }

  else
  {
    v28 = *(v19 + *(*v19 + 280));
    if (v28)
    {
      v29 = v28;
      v30 = v45;
      CCLog.getter();

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v55 = v34;
        *v33 = 136315138;
        type metadata accessor for SessionID();
        sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;

        v38 = sub_225095AFC(v35, v37, &v55);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_22506F000, v31, v32, "%s: registering push", v33, 0xCu);
        sub_225073BF0(v34);
        MEMORY[0x22AA65DF0](v34, -1, -1);
        MEMORY[0x22AA65DF0](v33, -1, -1);
      }

      else
      {
      }

      (*(v46 + 8))(v30, v47);
      v39 = [objc_opt_self() deviceContextForTestDeviceReference_];
      v40 = type metadata accessor for TaskPriority();
      v41 = v48;
      sub_22507C8C0(v48, 1, 1, v40);
      v42 = sub_2250C7E20(qword_280D537A0, &qword_27D718E80, &qword_2254447A8, &unk_225444708);
      v43 = swift_allocObject();
      v43[2] = v19;
      v43[3] = v42;
      v43[4] = v19;
      v43[5] = v29;
      v43[6] = v39;
      swift_retain_n();
      sub_2250B5ADC(0, 0, v41, &unk_225444900, v43);
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

uint64_t sub_2250C3810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_2250C3834, a4, 0);
}

uint64_t sub_2250C3834()
{
  sub_22507CE94();
  v1 = *(v0 + 16);
  *(v0 + 40) = *(*v1 + 232);
  v2 = sub_22507F2C4(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_task_alloc();
  sub_22508E734();
  *(v0 + 56) = v5;
  *v5 = v6;
  sub_225095798(v5);
  v7 = sub_22508D0C0();

  return MEMORY[0x28214D190](v7, v1, v2, v8, v3, v9, v10, v11);
}

uint64_t sub_2250C3924()
{
  sub_225072C10();
  sub_225075560();
  v3 = v2;
  sub_22507D320();
  *v4 = v3;
  v5 = *v1;
  sub_225072D68();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = *(v3 + 16);
    v8 = sub_2250C3B80;
  }

  else
  {
    v9 = *(v3 + 16);

    v8 = sub_2250C3A34;
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2250C3A34()
{
  sub_225094938();
  sub_22507E6E8();
  if (*(v0 + 72))
  {
    v1 = *(v0 + 64);
    ExponentialNetworkBackoff.reset()();
    sub_2250B84E4();
    if (v1)
    {
      sub_225082628();
    }

    else
    {
      sub_2250B7520(9u);
      sub_22507CC50();
    }

    sub_2250957B8();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = sub_22507F2C4(qword_280D537A0, &qword_27D718E80, &qword_2254447A8);
    v4 = swift_task_alloc();
    v5 = *(v0 + 16);
    *(v0 + 48) = v4;
    *(v4 + 16) = v5;
    *(v4 + 24) = v3;
    *(v4 + 32) = v5;
    *(v4 + 48) = v2;
    swift_task_alloc();
    sub_22508E734();
    *(v0 + 56) = v6;
    *v6 = v7;
    sub_225095798(v6);
    sub_22508D0C0();
    sub_2250957B8();

    return MEMORY[0x28214D190](v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

uint64_t sub_2250C3B80()
{
  sub_225072C10();

  sub_225075274();

  return v0();
}

uint64_t sub_2250C3BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v7 = type metadata accessor for Logger();
  v5[5] = v7;
  v5[6] = *(v7 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250C3CA4, a3, 0);
}

uint64_t sub_2250C3CA4()
{
  sub_22507CE94();
  sub_2250B84E4();
  *(v0 + 64) = [objc_allocWithZone(CKDTokenRegistrationScheduler) initWithDeviceContext_];

  return MEMORY[0x2822009F8](sub_2250C3D7C, 0, 0);
}

uint64_t sub_2250C3D7C()
{
  sub_225072C10();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_2250C3E28;
  v2 = *(v0 + 24);

  return sub_2250C7000(0, 0, v2);
}

uint64_t sub_2250C3E28()
{
  sub_22507CE94();
  v2 = *v1;
  sub_22507D320();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 80) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_2250C3FB0;
  }

  else
  {
    v6 = sub_2250C3F48;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2250C3F48()
{
  sub_225072C10();

  sub_2250C87DC();
  v1 = sub_2250C8804(*(v0 + 80));

  return v2(v1);
}

uint64_t sub_2250C3FB0()
{
  sub_22507E6E8();
  v1 = *(v0 + 80);

  CKLog.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 80);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    sub_2250C88A8(&dword_22506F000, v10, v11, "Failed to register push tokens, will try again after backoff: %@");
    sub_2250C86F4(v7, &unk_27D719030, &qword_225443AB0);
    sub_22507C9FC();
    sub_22507C9FC();
  }

  v12 = *(v0 + 80);
  v14 = *(v0 + 48);
  v13 = *(v0 + 56);
  v15 = *(v0 + 40);

  (*(v14 + 8))(v13, v15);
  ExponentialNetworkBackoff.incrementBackoffCount()();

  sub_2250C87DC();
  v16 = sub_2250C8804(*(v0 + 80));

  return v17(v16);
}

uint64_t sub_2250C4138()
{
  v1 = v0;
  v2 = type metadata accessor for AuthenticatedSession.Configuration.Encryption.ServiceIdentity();
  v180 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v179 = v157 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2250B0DFC(&unk_27D7190E0, &unk_2254447D0);
  MEMORY[0x28223BE20](v4 - 8);
  v189 = v157 - v5;
  v6 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  MEMORY[0x28223BE20](v6 - 8);
  v206 = (v157 - v7);
  v190 = type metadata accessor for SessionID();
  v187 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v205 = v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for AnySessionAcquiredInfo();
  v192 = *(v208 - 8);
  v9 = MEMORY[0x28223BE20](v208);
  v11 = v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v191 = v157 - v13;
  MEMORY[0x28223BE20](v12);
  v207 = v157 - v14;
  v178 = type metadata accessor for AuthenticatedSession.ResolvedUser.DataProtection();
  v176 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v177 = v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_2250B0DFC(&unk_27D718E90, &qword_2254447C8);
  MEMORY[0x28223BE20](v172);
  v174 = v157 - v16;
  v17 = type metadata accessor for DataSecurityAcquiredPayload(0);
  MEMORY[0x28223BE20](v17 - 8);
  v175 = v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v166 = v157 - v24;
  v202 = type metadata accessor for AuthenticatedSession.ResolvedUser.PartitionType();
  v186 = *(v202 - 8);
  v25 = MEMORY[0x28223BE20](v202);
  v173 = v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v168 = v157 - v28;
  MEMORY[0x28223BE20](v27);
  v185 = v157 - v29;
  v30 = sub_2250B0DFC(&qword_27D718F70, &qword_225444938);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v182 = v157 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v183 = v157 - v33;
  v184 = type metadata accessor for AuthenticatedSession.ResolvedUser.ID();
  v171 = *(v184 - 8);
  v34 = MEMORY[0x28223BE20](v184);
  v170 = v157 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v201 = v157 - v36;
  v37 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = v157 - v38;
  v40 = sub_2250B0DFC(&qword_27D718F78, &unk_225444940);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v204 = v157 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = v157 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = v157 - v46;
  v48 = sub_2250B0DFC(&qword_27D718F80, &qword_2254453B0);
  v49 = MEMORY[0x28223BE20](v48 - 8);
  v203 = v157 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v169 = v157 - v52;
  MEMORY[0x28223BE20](v51);
  v54 = v157 - v53;
  v55 = v1 + *(*v1 + 288);
  v195 = *v55;
  if (!v195)
  {
    goto LABEL_45;
  }

  v196 = v20;
  v197 = v19;
  v193 = v11;
  v188 = v55;
  v56 = *(v55 + 8);
  v57 = sub_2250B7308();
  v209 = v1;
  if (v57)
  {
    *(v57 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck11DeviceCheck_actor) = 0;

    v1 = v209;
  }

  else
  {
  }

  v58 = sub_2250B735C();
  if (v58)
  {
    *(v58 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_actor) = 0;
  }

  v59 = sub_2250B73A4();
  if (v59)
  {
    *(v59 + 16) = 0;
  }

  v181 = v2;
  v60 = sub_2250B73EC();
  if (v60)
  {
    *(v60 + 16) = 0;
  }

  v167 = type metadata accessor for AuthenticatedSession.ResolvedUser();
  sub_22507C8C0(v54, 1, 1, v167);
  v61 = type metadata accessor for SaltedHash();
  sub_22507C8C0(v47, 1, 1, v61);
  v62 = qword_280D538E8;
  AnySessionConfiguration.account.getter();
  v63 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v64 = sub_22507C8E8(v39, 1, v63);
  sub_2250C86F4(v39, &unk_27D718ED0, &qword_225444FF0);
  v65 = 0;
  v66 = 0;
  v199 = v54;
  v200 = v47;
  v198 = v23;
  v194 = v56;
  if (v64 == 1)
  {
    goto LABEL_33;
  }

  v161 = v61;
  v67 = *(v1 + *(*v1 + 280));
  if (!v67)
  {
    goto LABEL_45;
  }

  v68 = v45;
  v69 = v67;
  v70 = sub_2250C8060(v69, &selRef_containerScopedUserID);
  if (!v71)
  {
    goto LABEL_45;
  }

  v160 = v70;
  v162 = v62;
  v157[1] = sub_2250C8060(v69, &selRef_orgAdminUserID);
  v163 = v72;
  v165 = v69;
  v73 = [v69 account];
  v74 = v1 + *(*v1 + 248);
  if (*(v74 + 16) != 1)
  {
    goto LABEL_45;
  }

  v75 = v73;
  v76 = *(v74 + 8);
  v77 = [v75 accountID];
  v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v79;

  v164 = v76;
  v81 = [v76 accountID];
  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;

  v85 = v78 == v82 && v80 == v84;
  v86 = v75;
  if (v85)
  {

    v88 = v68;
  }

  else
  {
    v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v88 = v68;
    if ((v87 & 1) == 0)
    {
      v89 = v86;

      v90 = v166;
      CKLog.getter();
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_22506F000, v91, v92, "AccountID changed during acquisition, going back to .validatingAccount", v93, 2u);
        MEMORY[0x22AA65DF0](v93, -1, -1);
      }

      (*(v196 + 8))(v90, v197);
      sub_2250B7520(4u);

      sub_2250C76A8(v195, v194);
      sub_2250C86F4(v200, &qword_27D718F78, &unk_225444940);
      return sub_2250C86F4(v199, &qword_27D718F80, &qword_2254453B0);
    }
  }

  v95 = [v86 accountID];
  v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v159 = v96;

  v97 = v183;
  v98 = v184;
  sub_22507C8C0(v183, 1, 1, v184);

  AuthenticatedSession.ResolvedUser.ID.init(userRecordName:)();
  if (v163)
  {

    v99 = v182;
    AuthenticatedSession.ResolvedUser.ID.init(userRecordName:)();
    sub_2250C86F4(v97, &qword_27D718F70, &qword_225444938);
    sub_22507C8C0(v99, 0, 1, v98);
    sub_2250C8588(v99, v97, &qword_27D718F70, &qword_225444938);
  }

  v166 = v86;
  v100 = [v86 isCarryAccount];
  v101 = v186;
  v102 = MEMORY[0x277CFA9B8];
  if (!v100)
  {
    v102 = MEMORY[0x277CFA9B0];
  }

  v103 = v168;
  v104 = v202;
  (*(v186 + 104))(v168, *v102, v202);
  (*(v101 + 32))(v185, v103, v104);
  v105 = v209;
  v106 = v105 + *(*v105 + 256);
  v107 = v161;
  if (*(v106 + 24) != 1)
  {
LABEL_45:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v109 = *(v106 + 8);
  v108 = *(v106 + 16);

  if (v108)
  {
    sub_2250B0DFC(&qword_27D718EA0, &qword_225447A90);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_225444480;
    *(v110 + 32) = v109;
    *(v110 + 40) = v108;

    SaltedHash.init(_:)();
    v111 = v200;
    sub_2250C86F4(v200, &qword_27D718F78, &unk_225444940);
    sub_22507C8C0(v88, 0, 1, v107);
    sub_2250C8588(v88, v111, &qword_27D718F78, &unk_225444940);
  }

  v112 = *(*v105 + 264);
  swift_beginAccess();
  v113 = v105 + v112;
  v114 = v174;
  sub_2250C853C(v113, v174, &unk_27D718E90, &qword_2254447C8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2250C86F4(v114, &unk_27D718E90, &qword_2254447C8);
    goto LABEL_45;
  }

  v115 = sub_2250B0DFC(&qword_27D718F58, &qword_2254448C8);
  v116 = v175;
  sub_2250C7E68(v114 + *(v115 + 48), v175);
  v117 = v171;
  (*(v171 + 16))(v170, v201, v98);
  v118 = v186;
  v119 = v185;
  (*(v186 + 16))(v173, v185, v202);
  (*(v176 + 16))(v177, v116, v178);
  v120 = v183;
  sub_2250C853C(v183, v182, &qword_27D718F70, &qword_225444938);
  v121 = v169;
  AuthenticatedSession.ResolvedUser.init(id:accountPartition:dataProtection:organizationAdminID:)();

  sub_2250C7F30(v116);
  (*(v118 + 8))(v119, v202);
  sub_2250C86F4(v120, &qword_27D718F70, &qword_225444938);
  (*(v117 + 8))(v201, v184);
  v54 = v199;
  sub_2250C86F4(v199, &qword_27D718F80, &qword_2254453B0);
  sub_22507C8C0(v121, 0, 1, v167);
  sub_2250C8588(v121, v54, &qword_27D718F80, &qword_2254453B0);
  v47 = v200;
  v1 = v209;
  v66 = v159;
  v65 = v158;
LABEL_33:
  v122 = sub_2250C8B38(v65, v66);
  v201 = v123;
  v202 = v122;

  (*(v187 + 16))(v205, v1 + qword_280D53830, v190);
  sub_2250C853C(v54, v203, &qword_27D718F80, &qword_2254453B0);
  sub_2250C853C(v47, v204, &qword_27D718F78, &unk_225444940);
  v124 = qword_280D538D0;
  swift_beginAccess();
  sub_2250C853C(v1 + v124, v206, &unk_27D718E60, &unk_225444780);

  v125 = v189;
  AnySessionConfiguration.encryption.getter();
  v126 = type metadata accessor for AuthenticatedSession.Configuration.Encryption();
  if (sub_22507C8E8(v125, 1, v126) == 1)
  {
    sub_2250C86F4(v125, &unk_27D7190E0, &unk_2254447D0);
  }

  else
  {
    v127 = v125;
    v128 = v179;
    AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter();
    (*(*(v126 - 8) + 8))(v127, v126);
    AuthenticatedSession.Configuration.Encryption.ServiceIdentity.serviceName.getter();
    (*(v180 + 8))(v128, v181);
  }

  sub_22508D04C(v202, v201);
  v129 = v207;
  AnySessionAcquiredInfo.init(sessionID:privilegedInfoHash:user:userPersonaUniqueString:keySyncRequestIdentityPublicKeyIDHash:previousInvalidationContext:serviceName:)();
  CCLog.getter();
  v130 = v192;
  v131 = v191;
  v132 = v129;
  v133 = v208;
  v206 = *(v192 + 16);
  v206(v191, v132, v208);

  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = v131;
    v137 = swift_slowAlloc();
    v205 = swift_slowAlloc();
    v210 = v205;
    *v137 = 136315394;
    sub_2250C8748(&qword_280D535D8, MEMORY[0x277CFAB08], MEMORY[0x277CFAB10]);
    v138 = dispatch thunk of CustomStringConvertible.description.getter();
    v140 = v139;

    v141 = sub_225095AFC(v138, v140, &v210);

    *(v137 + 4) = v141;
    *(v137 + 12) = 2080;
    sub_2250C8748(&qword_280D535F8, MEMORY[0x277CFAA88], MEMORY[0x277CFAA90]);
    v142 = dispatch thunk of CustomStringConvertible.description.getter();
    v144 = v143;
    v145 = *(v130 + 8);
    v145(v136, v208);
    v146 = sub_225095AFC(v142, v144, &v210);

    *(v137 + 14) = v146;
    _os_log_impl(&dword_22506F000, v134, v135, "%s: acquired daemon session %s", v137, 0x16u);
    v147 = v205;
    swift_arrayDestroy();
    v148 = v208;
    MEMORY[0x22AA65DF0](v147, -1, -1);
    MEMORY[0x22AA65DF0](v137, -1, -1);

    (*(v196 + 8))(v198, v197);
    v149 = v193;
  }

  else
  {

    v145 = *(v130 + 8);
    v145(v131, v133);
    (*(v196 + 8))(v198, v197);
    v149 = v193;
    v148 = v133;
  }

  type metadata accessor for CKSessionAcquiredInfo();
  v150 = v207;
  v206(v149, v207, v148);
  v151 = CKSessionAcquiredInfo.__allocating_init(_:)();
  v152 = v194;
  v153 = v195;
  v195();

  sub_2250C76A8(v153, v152);
  sub_22508D128(v202, v201);
  v145(v150, v148);
  sub_2250C86F4(v200, &qword_27D718F78, &unk_225444940);
  sub_2250C86F4(v199, &qword_27D718F80, &qword_2254453B0);
  v154 = v188;
  v155 = *v188;
  v156 = v188[1];
  *v188 = 0;
  v154[1] = 0;
  return sub_2250C76A8(v155, v156);
}

char *sub_2250C5920()
{
  v1 = *v0;
  v39 = *v0;
  v2 = qword_280D53830;
  type metadata accessor for SessionID();
  sub_225072D54();
  (*(v3 + 8))(&v0[v2]);
  v4 = qword_280D538E8;
  type metadata accessor for AnySessionConfiguration();
  sub_225072D54();
  (*(v5 + 8))(&v0[v4]);
  sub_2250C86F4(&v0[qword_280D538D0], &unk_27D718E60, &unk_225444780);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_22509492C();
  v7 = v1[11];
  (*(*(v7 - 8) + 8))(&v0[*(v6 + 200)], v7);
  sub_22509492C();

  sub_22509492C();
  sub_22509492C();
  v11 = v1[10];
  (*(*(v11 - 8) + 8))(&v0[*(v10 + 224)], v11);
  sub_22509492C();

  sub_22509492C();
  sub_2250C7694(*&v0[*(v12 + 240)], v0[*(v12 + 240) + 8]);
  sub_22509492C();
  v14 = *(v13 + 248);
  v15 = v1[14];
  v20 = sub_2250C8900(v16, v17, v18, v19, &unk_2254A1FDC);
  v21 = v1[15];
  v22 = v1[16];
  v23 = v1[17];
  v24 = *(swift_getAssociatedConformanceWitness() + 8);
  *&v25 = v11;
  *(&v25 + 1) = v7;
  v43 = v20;
  v44 = v15;
  v45 = v21;
  v46 = v22;
  v47 = v23;
  v48 = v24;
  v40 = *(v39 + 6);
  v41 = v25;
  v42 = v40;
  type metadata accessor for CKDSessionAcquirer.Actor.CheckState(0, &v41);
  sub_225072D54();
  (*(v26 + 8))(&v0[v14]);
  sub_22509492C();
  sub_2250C87B8(*&v0[*(v27 + 256)], *&v0[*(v27 + 256) + 8], *&v0[*(v27 + 256) + 16], v0[*(v27 + 256) + 24]);
  sub_22509492C();
  v29 = *(v28 + 264);
  v34 = sub_2250C8900(v30, v31, v32, v33, &unk_2254A1FEC);
  v35 = *(swift_getAssociatedConformanceWitness() + 8);
  *&v41 = v11;
  *(&v41 + 1) = v7;
  v42 = v40;
  v43 = v34;
  v44 = v15;
  v45 = v21;
  v46 = v22;
  v47 = v23;
  v48 = v35;
  type metadata accessor for CKDSessionAcquirer.Actor.CheckState(0, &v41);
  sub_225072D54();
  (*(v36 + 8))(&v0[v29]);
  sub_22509492C();

  sub_22509492C();
  swift_unknownObjectRelease();
  sub_22509492C();
  sub_2250C76A8(*&v0[*(v37 + 288)], *&v0[*(v37 + 288) + 8]);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2250C5D4C()
{
  sub_2250C5920();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2250C5DB0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2250C5E38(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2250C5F2C(uint64_t a1)
{
  TupleTypeMetadata2 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return TupleTypeMetadata2;
}

uint64_t sub_2250C5FE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = ((*(v5 + 80) + 8) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = 8;
  if (v6 > 8)
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 253) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_22:
      v14 = *(a1 + v7);
      if (v14 >= 3)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_14:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return (v8 | v13) + 254;
}

void sub_2250C6180(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = ((*(v7 + 80) + 8) & ~*(v7 + 80)) + *(v7 + 64);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v9 <= 3)
  {
    v14 = ((a3 + ~(-1 << v10) - 253) >> v10) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v9 < 4)
    {
      v13 = (v12 >> v10) + 1;
      if (v8 != -1)
      {
        v16 = v12 & ~(-1 << v10);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v16;
          a1[2] = BYTE2(v16);
        }

        else if (v9 == 2)
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v12;
        }
      }
    }

    else
    {
      bzero(a1, v8 + 1);
      *a1 = v12;
      v13 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v9] = v13;
        break;
      case 2:
        *&a1[v9] = v13;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = v13;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v9] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v8] = -a2;
        }

        break;
    }
  }
}

void sub_2250C63DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2250C88E8();
  v5 = v3;
  v6 = *v3;
  v117 = type metadata accessor for PropertyDescription();
  sub_2250C8890();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22507CD30();
  sub_22507F2B4();
  MEMORY[0x28223BE20](v10);
  v111 = &v108 - v11;
  sub_22507E434();
  v12 = type metadata accessor for OSLogPrivacy();
  v13 = sub_22507CD44(v12);
  MEMORY[0x28223BE20](v13);
  sub_2250986C0();
  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  sub_2250C8890();
  v15 = *(v14 + 72);
  v115 = v8;
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v114 = 3 * v15;
  v112 = v17;
  v109 = v16 + 3 * v15;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_225444490;
  v116 = v16;
  v19 = type metadata accessor for SessionID();
  sub_2250C8938(v19);
  sub_22507E428();
  (*(v20 + 16))();
  static OSLogPrivacy.public.getter();
  sub_2250C8868();
  PropertyDescription.init(_:_:privacy:)();
  sub_2250C87E8();
  v22 = *(v5 + *(v21 + 296));
  sub_2250C889C();
  sub_2250C889C();
  sub_2250C889C();
  sub_2250C889C();
  v24 = *(v23 + 112);
  v25 = v6[15];
  v26 = v6[16];
  v27 = v6[17];
  v29 = v28;
  v125 = v28;
  v126 = v30;
  v123 = v31;
  v124 = v30;
  v118 = v26;
  v119 = v32;
  v127 = v32;
  v128 = v31;
  v129 = v24;
  v130 = v25;
  v121 = v27;
  v122 = v25;
  v131 = v26;
  v132 = v27;
  v33 = sub_2250C8848();
  v128 = type metadata accessor for CKDSessionAcquirer.Actor.State(v33, v34);
  LOBYTE(v125) = v22;
  static OSLogPrivacy.public.getter();
  PropertyDescription.init(_:_:privacy:)();
  v113 = 2 * v15;
  v120 = v15;
  v35 = type metadata accessor for AnySessionConfiguration();
  sub_2250C8938(v35);
  sub_22507E428();
  (*(v36 + 16))();
  static OSLogPrivacy.auto.getter();
  v37 = v117;
  PropertyDescription.init(_:_:privacy:)();
  v135 = v18;
  if (*(v5 + qword_280D538C8))
  {
    ObjectType = swift_getObjectType();
    sub_2250C88C8(ObjectType);
    static OSLogPrivacy.auto.getter();
    v39 = v111;
    PropertyDescription.init(_:_:privacy:)();
    sub_225072BD8();
    v44 = sub_22509891C(1, 4, 1, v18, v40, v41, v42, v43);
    swift_unknownObjectRelease();
    *(v44 + 2) = 4;
    (*(v115 + 32))(&v44[v109], v39, v37);
    v135 = v44;
  }

  v45 = v116;
  v46 = swift_allocObject();
  v112 = v46;
  *(v46 + 16) = xmmword_2254444A0;
  v47 = (v46 + v45);
  sub_2250C87E8();
  v49 = v5 + *(v48 + 240);
  v50 = *v49;
  v51 = v49[8];
  sub_2250C8814();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(swift_getAssociatedConformanceWitness() + 8);
  v54 = v124;
  v125 = v29;
  v126 = v124;
  v55 = v119;
  v127 = v119;
  v128 = v123;
  v129 = AssociatedTypeWitness;
  v130 = v24;
  v56 = v118;
  v131 = v122;
  v132 = v118;
  v133 = v121;
  v134 = v53;
  v57 = sub_2250C8848();
  v128 = type metadata accessor for CKDSessionAcquirer.Actor.CheckState(v57, v58);
  v125 = v50;
  LOBYTE(v126) = v51;
  sub_2250C7534(v50, v51);
  static OSLogPrivacy.auto.getter();
  v111 = v47;
  PropertyDescription.init(_:_:privacy:)();
  sub_2250C8814();
  v59 = swift_getAssociatedTypeWitness();
  v60 = *(swift_getAssociatedConformanceWitness() + 8);
  v125 = v29;
  v126 = v54;
  v61 = v123;
  v127 = v55;
  v128 = v123;
  v129 = v59;
  v130 = v24;
  v131 = v122;
  v132 = v56;
  v62 = v4;
  v63 = v121;
  v133 = v121;
  v134 = v60;
  v64 = sub_2250C8848();
  v66 = type metadata accessor for CKDSessionAcquirer.Actor.CheckState(v64, v65);
  sub_2250C8938(v66);
  sub_2250C87E8();
  (*(*(v66 - 8) + 16))();
  v110 = v62;
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  sub_2250C87E8();
  v68 = v5 + *(v67 + 256);
  v69 = *(v68 + 1);
  v109 = *v68;
  v70 = *(v68 + 2);
  LOBYTE(v56) = v68[24];
  sub_2250C8814();
  v71 = swift_getAssociatedTypeWitness();
  v72 = *(swift_getAssociatedConformanceWitness() + 8);
  v73 = v29;
  v125 = v29;
  v126 = v124;
  v74 = v119;
  v127 = v119;
  v128 = v61;
  v129 = v71;
  v130 = v24;
  v75 = v122;
  v76 = v118;
  v131 = v122;
  v132 = v118;
  v133 = v63;
  v134 = v72;
  v77 = v73;
  v78 = sub_2250C8848();
  v128 = type metadata accessor for CKDSessionAcquirer.Actor.CheckState(v78, v79);
  v80 = swift_allocObject();
  v125 = v80;
  v81 = v109;
  *(v80 + 16) = v109;
  *(v80 + 24) = v69;
  *(v80 + 32) = v70;
  *(v80 + 40) = v56;
  sub_2250C7548(v81, v69, v70, v56);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v82 = swift_getAssociatedTypeWitness();
  v83 = *(swift_getAssociatedConformanceWitness() + 8);
  v125 = v77;
  v126 = v124;
  v127 = v74;
  v128 = v123;
  v129 = v82;
  v130 = v24;
  v131 = v75;
  v132 = v76;
  v133 = v121;
  v134 = v83;
  v84 = sub_2250C8848();
  v86 = type metadata accessor for CKDSessionAcquirer.Actor.CheckState(v84, v85);
  v87 = sub_2250C8938(v86);
  sub_2250C87E8();
  v89 = *(v88 + 264);
  swift_beginAccess();
  sub_22507E428();
  (*(v90 + 16))(v87, v5 + v89, v86);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  sub_2250C6DF8(v112, &qword_27D718E40, &qword_225444760, MEMORY[0x277CFA9A8], MEMORY[0x277CFA9A8]);
  sub_2250C87E8();
  if (*(v5 + *(v91 + 280)))
  {
    v92 = swift_getAssociatedTypeWitness();
    sub_2250C88C8(v92);
    static OSLogPrivacy.auto.getter();
    v93 = v108;
    PropertyDescription.init(_:_:privacy:)();
    v94 = v135;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_225072BD8();
      v94 = sub_22509891C(0, v98 + 1, 1, v94, v99, v100, v101, v102);
    }

    v95 = v117;
    v96 = v115;
    v97 = *(v94 + 2);
    if (v97 >= *(v94 + 3) >> 1)
    {
      sub_225072BD8();
      v94 = sub_22509891C(v103, v97 + 1, 1, v94, v104, v105, v106, v107);
    }

    swift_unknownObjectRelease();
    *(v94 + 2) = v97 + 1;
    (*(v96 + 32))(&v94[v116 + v97 * v120], v93, v95);
  }

  sub_2250C8920();
}

uint64_t sub_2250C6DF8(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t (*a5)(void))
{
  v7 = *(a1 + 16);
  v8 = *(*v5 + 16);
  result = v8 + v7;
  if (__OFADD__(v8, v7))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2250C7600(result, 1, a2, a3, a4);
  v11 = *v5;
  if (!*(a1 + 16))
  {

    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v12 = (*(v11 + 24) >> 1) - *(v11 + 16);
  result = a5(0);
  if (v12 < v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v7)
  {
LABEL_8:
    *v5 = v11;
    return result;
  }

  v13 = *(v11 + 16);
  v14 = __OFADD__(v13, v7);
  v15 = v13 + v7;
  if (!v14)
  {
    *(v11 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_2250C6F60(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v12 = [swift_getObjCClassFromMetadata() containerWithAppContainerTuple:a1 processScopedClientProxy:a2 logicalDeviceScopedClientProxy:a3 containerEntitlements:a4 containerOptions:a5 sharedContainerTable:a6];

  return v12;
}

uint64_t sub_2250C7000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2250B0DFC(&unk_27D718F60, &unk_225444928);
  v7 = *(v6 - 8);
  v8 = swift_task_alloc();
  v4[18] = v8;
  v4[2] = v4;
  v4[3] = sub_2250C71DC;
  v9 = swift_continuation_init();
  v4[17] = v6;
  v10 = sub_225073808(v4 + 14);
  sub_2250B4150(v9);
  (*(v7 + 32))(v10, v8, v6);
  v4[10] = MEMORY[0x277D85DD0];
  v4[11] = 1107296256;
  v4[12] = sub_2250ED984;
  v4[13] = &unk_28385A720;
  [v3 registerTokenForAdopterContainer:a3 completionBlock:v4 + 10];
  (*(v7 + 8))(v10, v6);

  return MEMORY[0x282200938](v4 + 2);
}

uint64_t sub_2250C71DC()
{
  sub_22507E6E8();
  sub_225075560();
  v1 = *v0;
  sub_22507D320();
  *v2 = v1;
  if (*(v3 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v1 + 8);

  return v4();
}

id sub_2250C72F8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a4)
  {
    v8 = MEMORY[0x22AA62D80](a3, a4);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithApplicationID:a1 containerID:a2 personaID:v8];

  return v9;
}

char *sub_2250C73B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2250B0DFC(&qword_27D718E50, &unk_225444770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_2250C74B4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2250B0DFC(&qword_27D718E48, &qword_225444768);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

uint64_t sub_2250C7534(uint64_t result, uint64_t a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRetain();
  }

  return v2;
}

uint64_t sub_2250C7548(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return v4;
    }
  }

  return swift_unknownObjectRetain();
}

char *sub_2250C75A0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_225075254(a3, result);
  }

  return result;
}

char *sub_2250C75C0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_225075254(a3, result);
  }

  return result;
}

char *sub_2250C75E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_225075254(a3, result);
  }

  return result;
}

void *sub_2250C7600(int64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v11 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v11;
  if (!result || a1 > *(v11 + 24) >> 1)
  {
    if (*(v11 + 16) <= a1)
    {
      v13 = a1;
    }

    else
    {
      v13 = *(v11 + 16);
    }

    result = sub_22509891C(result, v13, a2 & 1, v11, a3, a4, a5, a5);
    *v5 = result;
  }

  return result;
}

uint64_t sub_2250C7694(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_2250C76A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2250C76CC(uint64_t a1)
{
  v2 = type metadata accessor for SessionID();
  sub_22507D394(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for AnySessionConfiguration();
  sub_22507D394(v7);
  v24 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v9 + 64);
  v11 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  sub_22507D394(v11);
  v13 = (v24 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  v15 = (*(v14 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = type metadata accessor for Entitlements();
  sub_22507D394(v17);
  v22 = *(v1 + 24);
  v23 = *(v1 + 16);
  v18 = *(v1 + v15);
  v19 = *(v1 + v16);
  v20 = swift_task_alloc();
  *(v25 + 16) = v20;
  *v20 = v25;
  v20[1] = sub_22507F4D4;

  return sub_2250B5188(a1, v23, v22, v1 + v4, v1 + v24, v1 + v13, v18, v19);
}

uint64_t sub_2250C7960()
{
  sub_22507CE94();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_225075264(v2);
  *v3 = v4;
  v5 = sub_22507C92C(v3);

  return sub_2250B59B8(v5, v6, v1);
}

uint64_t sub_2250C79F8(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return v2;
}

void sub_2250C7A0C(uint64_t a1, void *a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

void sub_2250C7A68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(uint64_t, uint64_t))
{
  if (a4 == 1)
  {
    a5(a1, a2);
  }

  else if (!a4)
  {

    (a5)(a1, a2, a3);
  }
}

uint64_t sub_2250C7ACC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_225072C1C(a1, a2, a3, a4);
  sub_225072BF0();
  v5 = sub_225075280();
  v6(v5);
  return v4;
}

uint64_t sub_2250C7B18(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22508D128(result, a2);
  }

  return result;
}

uint64_t sub_2250C7B2C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22508D04C(result, a2);
  }

  return result;
}

uint64_t sub_2250C7B40(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2250C7B88()
{
  sub_225094938();
  sub_22507E6E8();
  sub_225097194();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v1[1] = sub_225095DA4;
  sub_22509862C();
  sub_2250957B8();

  return sub_2250BEE20(v3, v4, v5, v6, v7);
}

uint64_t sub_2250C7C1C()
{
  sub_225094938();
  sub_22507E6E8();
  sub_225097194();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v1[1] = sub_225095DA4;
  sub_22509862C();
  sub_2250957B8();

  return sub_2250BFA70(v3, v4, v5, v6, v7);
}

uint64_t sub_2250C7CB0()
{
  sub_225094938();
  sub_22507E6E8();
  sub_225097194();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v1[1] = sub_225095DA4;
  sub_22509862C();
  sub_2250957B8();

  return sub_2250C0A38(v3, v4, v5, v6, v7);
}

uint64_t sub_2250C7D44()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2250C7D8C()
{
  sub_225094938();
  sub_22507E6E8();
  sub_225097194();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v1[1] = sub_225095DA4;
  sub_22509862C();
  sub_2250957B8();

  return sub_2250C1AC4(v3, v4, v5, v6, v7);
}

uint64_t sub_2250C7E20(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2250C7B40(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2250C7E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSecurityAcquiredPayload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250C7ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSecurityAcquiredPayload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250C7F30(uint64_t a1)
{
  v2 = type metadata accessor for DataSecurityAcquiredPayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2250C7F8C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2250C7FCC()
{
  sub_225094938();
  sub_22507E6E8();
  sub_225097194();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v1[1] = sub_225095DA4;
  sub_22509862C();
  sub_2250957B8();

  return sub_2250C292C(v3, v4, v5, v6, v7);
}

uint64_t sub_2250C8060(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_225075280();
}

uint64_t sub_2250C80BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_2250C8184;

  return sub_2250C3BDC(a2, a3, a4, a5, a6);
}

uint64_t sub_2250C8184()
{
  sub_22507CE94();
  v3 = v2;
  sub_225075560();
  v5 = v4;
  sub_22507D320();
  *v6 = v5;
  v7 = *v1;
  sub_225072D68();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3 & 1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_2250C8280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_2250C8794;

  return sub_2250C2CAC(a2, a3, a4, a5);
}

uint64_t sub_2250C8338()
{
  sub_22507E6E8();
  sub_225097194();
  v0 = swift_task_alloc();
  v1 = sub_225075264(v0);
  *v1 = v2;
  v1[1] = sub_225095DA4;
  v3 = sub_22509862C();

  return v4(v3);
}

uint64_t sub_2250C83E0()
{
  sub_22507E6E8();
  sub_2250C887C();
  v2 = swift_task_alloc();
  v3 = sub_225075264(v2);
  *v3 = v4;
  v3[1] = sub_225095DA4;
  v5 = sub_22509862C();

  return sub_2250C3810(v5, v6, v7, v8, v1, v0);
}

uint64_t sub_2250C8480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2250981E4();
  sub_2250C8824();
  sub_2250C887C();
  v10 = swift_task_alloc();
  v11 = sub_225075264(v10);
  *v11 = v12;
  v11[1] = sub_225095DA4;
  sub_22509862C();
  sub_225095898();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_2250C853C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_225072C1C(a1, a2, a3, a4);
  sub_225072BF0();
  v5 = sub_225075280();
  v6(v5);
  return v4;
}

uint64_t sub_2250C8588(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_225072C1C(a1, a2, a3, a4);
  sub_225072BF0();
  v5 = sub_225075280();
  v6(v5);
  return v4;
}

uint64_t sub_2250C85D4(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return v2;
}

uint64_t sub_2250C85E8()
{
  sub_22507CE94();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_225075264(v3);
  *v4 = v5;
  v6 = sub_22507C92C(v4);

  return sub_2250B8200(v6, v7, v1, v2);
}

uint64_t sub_2250C8684(uint64_t a1, uint64_t a2)
{
  v4 = sub_2250B0DFC(&unk_27D718E60, &unk_225444780);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2250C86F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2250B0DFC(a2, a3);
  sub_225072D54();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2250C8748(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2250C87B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = MEMORY[0x277D85028];

  sub_2250C7A68(a1, a2, a3, a4, v5);
}

void *sub_2250C8854(void *result)
{
  *(v3 + 40) = result;
  result[2] = v1;
  result[3] = v2;
  result[4] = v1;
  result[5] = v4;
  return result;
}

void sub_2250C88A8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_2250C88C8(uint64_t a1)
{
  *(v2 - 152) = a1;
  *(v2 - 176) = v1;

  return swift_unknownObjectRetain_n();
}

uint64_t sub_2250C8900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t *sub_2250C8938(uint64_t a1)
{
  *(v1 - 152) = a1;

  return sub_225073808((v1 - 176));
}

uint64_t sub_2250C8950(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2250C8588(v5, v4, a3, a4);
}

uint64_t sub_2250C8A98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2250C8AE4()
{
  result = qword_27D718FA0;
  if (!qword_27D718FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D718FA0);
  }

  return result;
}

uint64_t sub_2250C8B38(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v37 = a2;
  type metadata accessor for SHA256();
  sub_225072D1C();
  v40 = v3;
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  sub_225072C00();
  v6 = v5 - v4;
  type metadata accessor for SHA256Digest();
  sub_225072D1C();
  v42 = v8;
  v43 = v7;
  v9 = MEMORY[0x28223BE20](v7);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v39 = &v35 - v11;
  v35 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  sub_225072D1C();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_225072C00();
  v17 = v16 - v15;
  v18 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x28223BE20](v18);
  sub_225072C00();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_2250B0DFC(&qword_27D718FB0, &qword_225444AA0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_225444480;
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  v44 = v19;
  sub_2250C99DC(&qword_280D54D60, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_2250B0DFC(&qword_27D718FB8, qword_225444AA8);
  sub_2250C9810();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  (*(v13 + 104))(v17, *MEMORY[0x277CC8778], v35);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  swift_allocObject();
  JSONEncoder.init()();
  v44 = v36;
  v45 = v37;
  sub_2250C9874();
  dispatch thunk of JSONEncoder.encode<A>(_:)();

  sub_2250C99DC(&qword_280D535C0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  v20 = v41;
  dispatch thunk of HashFunction.init()();
  v21 = sub_22507F2E8();
  sub_22508D04C(v21, v22);
  v23 = sub_22507F2E8();
  sub_2250C9940(v23, v24, v6);
  v25 = sub_22507F2E8();
  sub_22508D128(v25, v26);
  v27 = v39;
  dispatch thunk of HashFunction.finalize()();
  (*(v40 + 8))(v6, v20);
  v29 = v42;
  v28 = v43;
  v30 = v38;
  (*(v42 + 16))(v38, v27, v43);
  v31 = sub_2250C8FF0(v30);
  v32 = sub_22507F2E8();
  sub_22508D128(v32, v33);

  (*(v29 + 8))(v27, v28);
  return v31;
}

uint64_t sub_2250C8FF0(uint64_t a1)
{
  v2 = type metadata accessor for SHA256Digest();
  v8 = v2;
  v9 = sub_2250C99DC(&unk_280D535C8, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  v3 = sub_225073808(v7);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v3, a1, v2);
  sub_225073BAC(v7, v8);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  sub_225073BF0(v7);
  (*(v4 + 8))(a1, v2);
  return v6;
}

uint64_t sub_2250C9130(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_2250C91B8()
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA635F0](0);
  return Hasher._finalize()();
}

Swift::Int sub_2250C922C(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA635F0](0);
  return Hasher._finalize()();
}

uint64_t sub_2250C9270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2250C9130(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2250C92B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2250C91B0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2250C92E4(uint64_t a1)
{
  v2 = sub_2250C9C98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2250C9320(uint64_t a1)
{
  v2 = sub_2250C9C98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2250C935C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2250B0DFC(&qword_27D718FC0, &qword_225444B48);
  sub_225072D1C();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_225073BAC(a1, a1[3]);
  sub_2250C9C98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v4);
}

void *sub_2250C9490(void *a1)
{
  v3 = sub_2250B0DFC(&qword_27D718FC8, &qword_225444B50);
  sub_225072D1C();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = sub_22507F2E8();
  v11 = sub_225073BAC(v9, v10);
  sub_2250C9C98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  sub_225073BF0(a1);
  return v11;
}

void *sub_2250C95DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2250C9490(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2250C9624(uint64_t a1)
{
  v2 = sub_2250C97BC();

  return MEMORY[0x28214D000](a1, v2);
}

uint64_t sub_2250C9660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OSLogPrivacy();
  MEMORY[0x28223BE20](v4 - 8);
  sub_225072C00();
  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  type metadata accessor for PropertyDescription();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_225444480;
  sub_2250C8B38(a1, a2);
  static OSLogPrivacy.public.getter();
  PropertyDescription.init(_:_:privacy:)();
  return v5;
}

unint64_t sub_2250C97BC()
{
  result = qword_27D718FA8;
  if (!qword_27D718FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D718FA8);
  }

  return result;
}

unint64_t sub_2250C9810()
{
  result = qword_280D534F0;
  if (!qword_280D534F0)
  {
    sub_2250C7B40(&qword_27D718FB8, qword_225444AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D534F0);
  }

  return result;
}

unint64_t sub_2250C9874()
{
  result = qword_280D53650;
  if (!qword_280D53650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53650);
  }

  return result;
}

uint64_t sub_2250C98C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x22AA62320]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x22AA62330]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_2250C9940(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v7;
      goto LABEL_9;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
LABEL_9:
      sub_2250C9AF8(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_2250C9A24(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

uint64_t sub_2250C99DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2250C9A24(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SHA256();
  sub_2250C99DC(&qword_280D535C0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_2250C9AF8(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x22AA62190]();
      type metadata accessor for SHA256();
      sub_2250C99DC(&qword_280D535C0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 sub_2250C9BD8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2250C9BE4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2250C9C38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2250C9C98()
{
  result = qword_280D53668[0];
  if (!qword_280D53668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D53668);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CKDSessionAcquisitionPrivilegedInfo.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for CKDSessionAcquisitionPrivilegedInfo.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2250C9DF4()
{
  result = qword_27D718FD0;
  if (!qword_27D718FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D718FD0);
  }

  return result;
}

unint64_t sub_2250C9E4C()
{
  result = qword_280D53658;
  if (!qword_280D53658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53658);
  }

  return result;
}

unint64_t sub_2250C9EA4()
{
  result = qword_280D53660;
  if (!qword_280D53660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53660);
  }

  return result;
}

uint64_t sub_2250C9F08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v29 = type metadata accessor for AnySessionConfiguration();
  sub_225072D1C();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_225072C00();
  v8 = v7 - v6;
  v9 = sub_2250B0DFC(&qword_27D719048, &qword_225444FB0);
  sub_225072D1C();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v31 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  sub_225072D1C();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22507F304();
  v20 = v18 - v19;
  result = MEMORY[0x28223BE20](v21);
  v24 = &v28 - v23;
  v30 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_actor;
  if (*(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_actor))
  {
    __break(1u);
  }

  else
  {
    sub_2250B0DFC(&qword_27D719010, &qword_225444830);
    (*(v11 + 104))(v14, *MEMORY[0x277D85778], v9);
    static AsyncStream.makeStream(of:bufferingPolicy:)();
    (*(v11 + 8))(v14, v9);
    (*(v4 + 16))(v8, v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_sessionConfiguration, v29);
    v25 = *(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_testDeviceReferenceProtocol);
    sub_2250D4724(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_entitlements, v34);
    v26 = v31;
    (*(v16 + 16))(v20, v24, v31);
    sub_2250D4724(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_tccChecker, v33);
    sub_2250D4724(v2 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_accountFactory, v32);
    _s12AccountCheckC5ActorCMa(0);
    swift_allocObject();
    swift_unknownObjectRetain();
    v27 = sub_2250CBB70(v8, v25, v34, v20, v33, v32);
    (*(v16 + 8))(v24, v26);
    *(v2 + v30) = v27;
  }

  return result;
}

uint64_t sub_2250CA240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v7[3] = &_s10TCCCheckerVN;
  v7[4] = &off_28385ABF8;
  v6[3] = &_s14AccountFactoryVN;
  v6[4] = &off_28385AB50;
  sub_2250CA2A0(a1, a2, a3, a4, v7, v6, a5);
  sub_225073BF0(v6);
  return sub_225073BF0(v7);
}

uint64_t sub_2250CA2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v231 = a5;
  v227 = a4;
  v251 = a3;
  v254 = a2;
  v255 = a7;
  type metadata accessor for AnySessionAcquiredInfo();
  sub_225072D1C();
  v248 = v10;
  v249 = v9;
  MEMORY[0x28223BE20](v9);
  sub_225072C00();
  v247 = v12 - v11;
  sub_22507E434();
  v230 = type metadata accessor for BundleID.Payload();
  sub_225072D1C();
  v229 = v13;
  MEMORY[0x28223BE20](v14);
  sub_225072C00();
  v228 = v16 - v15;
  sub_22507E434();
  v233 = type metadata accessor for ResolvedBundleID();
  sub_225072D1C();
  v237 = v17;
  MEMORY[0x28223BE20](v18);
  sub_22507F304();
  v232 = v19 - v20;
  sub_22507C940();
  MEMORY[0x28223BE20](v21);
  v235 = &v224 - v22;
  sub_22507E434();
  v236 = type metadata accessor for BundleID();
  sub_225072D1C();
  v243 = v23;
  MEMORY[0x28223BE20](v24);
  sub_225072C00();
  v242 = v26 - v25;
  sub_22507E434();
  type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload();
  sub_225072D1C();
  v240 = v28;
  v241 = v27;
  MEMORY[0x28223BE20](v27);
  sub_225072C00();
  v239 = (v30 - v29);
  sub_22507E434();
  v31 = type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI();
  sub_225072D1C();
  v238 = v32;
  MEMORY[0x28223BE20](v33);
  sub_225072C00();
  v36 = v35 - v34;
  type metadata accessor for Logger();
  sub_225072D1C();
  v252 = v37;
  v253 = v38;
  MEMORY[0x28223BE20](v37);
  sub_22507F304();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  sub_22507E6C4();
  v250 = v43;
  sub_22507C940();
  MEMORY[0x28223BE20](v44);
  sub_22507E6C4();
  v234 = v45;
  sub_22507C940();
  MEMORY[0x28223BE20](v46);
  sub_22507E6C4();
  v226 = v47;
  sub_22507C940();
  MEMORY[0x28223BE20](v48);
  sub_22507E6C4();
  v244 = v49;
  sub_22507C940();
  MEMORY[0x28223BE20](v50);
  sub_22507E6C4();
  v246 = v51;
  sub_22507C940();
  MEMORY[0x28223BE20](v52);
  sub_22507E6C4();
  v245 = v53;
  sub_22507C940();
  MEMORY[0x28223BE20](v54);
  v56 = &v224 - v55;
  v57 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  MEMORY[0x28223BE20](v57 - 8);
  v59 = &v224 - v58;
  v60 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  sub_225072D1C();
  v62 = v61;
  MEMORY[0x28223BE20](v63);
  sub_225072C00();
  v66 = v65 - v64;
  AnySessionConfiguration.account.getter();
  if (sub_22507C8E8(v59, 1, v60) == 1)
  {
    sub_2250D4224(v59, &unk_27D718ED0, &qword_225444FF0);
LABEL_38:
    sub_2250B0DFC(&unk_27D719000, &qword_225444F50);
    return swift_storeEnumTagMultiPayload();
  }

  v225 = v62;
  (*(v62 + 32))(v66, v59, v60);
  sub_225073BAC(a6, a6[3]);
  v67 = sub_2250D4824(a1, v254);
  if (!v67)
  {
    CCLog.getter();
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_22506F000, v96, v97, "Account has logged out since session acquisition.", v98, 2u);
      sub_22507C9FC();
    }

    sub_22507F268();
    v99(v41);
    sub_22507F2F4();
    v101 = v66;
    v102 = v60;
    goto LABEL_20;
  }

  v68 = v67;
  v254 = v60;
  v224 = v66;
  v69 = [v67 accountID];
  v70 = v68;
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  v74 = sub_2250C8B38(v71, v73);
  v76 = v75;

  v77 = v251;
  v78 = AnySessionAcquiredInfo.privilegedInfoHash.getter();
  v80 = v79;
  LOBYTE(v73) = MEMORY[0x22AA62370](v74, v76, v78, v79);
  sub_22508D128(v78, v80);
  if ((v73 & 1) == 0)
  {
    v103 = v250;
    CCLog.getter();
    v104 = v247;
    v105 = v248;
    v106 = v249;
    (*(v248 + 16))(v247, v77, v249);
    v107 = v70;
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = sub_2250957CC();
      LODWORD(v246) = v109;
      v111 = v110;
      v251 = swift_slowAlloc();
      v256 = v251;
      *v111 = 136315394;
      v245 = v108;
      v112 = AnySessionAcquiredInfo.privilegedInfoHash.getter();
      v113 = v104;
      v115 = v114;
      Data.description.getter();
      sub_22507CEA0();
      sub_22508D128(v112, v115);
      (*(v105 + 8))(v113, v106);
      v116 = sub_2250956C4();

      *(v111 + 4) = v116;
      *(v111 + 12) = 2080;
      v117 = [v107 accountID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v118 = sub_22507F1F4();

      *(v111 + 14) = v118;
      v119 = v245;
      _os_log_impl(&dword_22506F000, v245, v246, "Current account has changed since session acquisition. Previous hash %s, new account %s", v111, 0x16u);
      swift_arrayDestroy();
      sub_22507C9FC();
      sub_22507D330();
      sub_22508D128(v74, v244);

      sub_22507CBD0();
      v121 = v250;
    }

    else
    {
      sub_22508D128(v74, v76);

      (*(v105 + 8))(v104, v106);
      sub_22507CBD0();
      v121 = v103;
    }

    v120(v121, v252);
    v101 = sub_22507CD50();
    v102 = v254;
LABEL_20:
    v100(v101, v102);
    v136 = *MEMORY[0x277CFAA30];
    type metadata accessor for SessionReadinessError();
    sub_225072BF0();
    (*(v137 + 104))(v255, v136, v138);
    goto LABEL_38;
  }

  v251 = v74;
  v81 = v70;
  if ([v70 isRenewingAuthToken])
  {
    CCLog.getter();
    v82 = v70;
    v83 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    v84 = sub_22509341C();
    v85 = v255;
    v86 = v224;
    if (v84)
    {
      sub_22507CA14();
      v87 = sub_225093BF8();
      v256 = v87;
      *v77 = 136315138;
      v88 = [v82 accountID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_22507CEA0();

      v89 = sub_2250956C4();

      *(v77 + 4) = v89;
      sub_2250986D8(&dword_22506F000, v90, v91, "Auth token needs renewal since session acquisition for account %s");
      sub_225073BF0(v87);
      sub_22507CA50();
      sub_22507D330();
      sub_22508D0E0();

      sub_22507CBD0();
      v93 = v56;
LABEL_8:
      v92(v93, v252);
      v94 = sub_22507CD50();
LABEL_26:
      v95(v94, v254);
      v152 = MEMORY[0x277CFAA48];
LABEL_37:
      v176 = *v152;
      v177 = type metadata accessor for SessionReadinessError();
      (*(*(v177 - 8) + 104))(v85, v176, v177);
      goto LABEL_38;
    }

    sub_22508CFD0();

    sub_22507CBD0();
    v151 = v56;
    goto LABEL_25;
  }

  v86 = v224;
  v122 = AuthenticatedSession.Configuration.Account.allowAccessDuringAccountWarmUp.getter();
  v85 = v255;
  if ((v122 & 1) == 0 && [v81 isWarmingUp])
  {
    v123 = v245;
    CCLog.getter();
    v124 = v81;
    v125 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_22509341C())
    {
      sub_22507CA14();
      v126 = sub_225093BF8();
      v256 = v126;
      LODWORD(v123->isa) = 136315138;
      v127 = [v124 accountID];
      v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v244 = v76;
      v130 = v129;

      v131 = sub_225095AFC(v128, v130, &v256);

      *(&v123->isa + 4) = v131;
      sub_2250986D8(&dword_22506F000, v132, v133, "State has changed to warmingUp since session acquisition for account %s");
      sub_225073BF0(v126);
      sub_22507CA50();
      sub_22507D330();
      sub_22508D0E0();

      sub_22507CBD0();
      v135 = v245;
    }

    else
    {
      sub_22508CFD0();

      sub_22507CBD0();
      v135 = v123;
    }

    v134(v135, v252);
    sub_22507F2F4();
    v175(v86, v254);
    v152 = MEMORY[0x277CFAA30];
    goto LABEL_37;
  }

  if ([v81 needsToVerifyTerms])
  {
    v139 = v246;
    CCLog.getter();
    v140 = v81;
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.error.getter();

    if (sub_22509341C())
    {
      v143 = sub_22507CA14();
      v144 = swift_slowAlloc();
      v256 = v144;
      *v143 = 136315138;
      v145 = [v140 accountID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_22507CEA0();

      v146 = sub_2250956C4();

      *(v143 + 4) = v146;
      _os_log_impl(&dword_22506F000, v141, v142, "Terms and Conditions have been updated since session acquisition for account %s", v143, 0xCu);
      sub_225073BF0(v144);
      sub_22507C9FC();
      sub_22507CA50();
      sub_22508D0E0();

      sub_22507F268();
      v147(v139);
      v148 = sub_22507CD50();
    }

    else
    {
      sub_22508CFD0();

      sub_22507F268();
      v166(v139);
      sub_22507F2F4();
      v148 = v86;
    }

    v149(v148, v254);
    v152 = MEMORY[0x277CFAA68];
    goto LABEL_37;
  }

  if (([v81 hasCredentials] & 1) == 0)
  {
    v167 = v244;
    CCLog.getter();
    v168 = v81;
    v169 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_22509341C())
    {
      sub_22507CA14();
      v170 = sub_225093BF8();
      v256 = v170;
      *v167 = 136315138;
      v171 = [v168 accountID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v172 = sub_22507F1F4();

      *(v167 + 4) = v172;
      sub_2250986D8(&dword_22506F000, v173, v174, "Credentials have changed since session acquisition for account %s");
      sub_225073BF0(v170);
      sub_22507CA50();
      sub_22507D330();
      sub_22508CFD0();

      sub_22507CBD0();
      v93 = v244;
      goto LABEL_8;
    }

    sub_22508CFD0();

    sub_22507CBD0();
    v151 = v167;
LABEL_25:
    v150(v151, v252);
    sub_22507F2F4();
    v94 = v86;
    goto LABEL_26;
  }

  AuthenticatedSession.Configuration.Account.accessGrantedVia.getter();
  v153 = v239;
  AuthenticatedSession.Configuration.Account.AuthorizationUI.payload.getter();
  (*(v238 + 8))(v36, v31);
  v155 = v240;
  v154 = v241;
  v156 = (*(v240 + 88))(v153, v241);
  if (v156 == *MEMORY[0x277CFAA20])
  {
    v157 = v81;
    (*(v155 + 96))(v153, v154);
    v158 = v236;
    (*(v243 + 32))(v242, v153, v236);
    v159 = v228;
    BundleID.payload.getter();
    v160 = v229;
    v161 = v230;
    v162 = (*(v229 + 88))(v159, v230);
    if (v162 == *MEMORY[0x277CFAAF8])
    {
      (*(v160 + 96))(v159, v161);
      v163 = v235;
      ResolvedBundleID.init(_:)();
      v164 = v233;
      v165 = v237;
      goto LABEL_45;
    }

    v164 = v233;
    v165 = v237;
    if (v162 == *MEMORY[0x277CFAB00])
    {
      sub_225073BAC(v227, v227[3]);
      v163 = v235;
      dispatch thunk of EntitlementsProtocol.bundleID.getter();
LABEL_45:
      sub_225073BAC(v231, v231[3]);
      v181 = sub_2250D6B78(v163);
      v182 = v234;
      v183 = v232;
      if (v181 == 2 || (v181 & 1) != 0)
      {
        sub_22508CFD0();

        (*(v165 + 8))(v163, v164);
        (*(v243 + 8))(v242, v158);
        v184 = sub_22507CD50();
        v185(v184, v254);
        goto LABEL_38;
      }

      CCLog.getter();
      (*(v165 + 16))(v183, v163, v164);
      v201 = v157;
      v202 = v163;
      v203 = Logger.logObject.getter();
      v204 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v203, v204))
      {
        v205 = sub_2250957CC();
        v249 = v201;
        v206 = v205;
        v250 = swift_slowAlloc();
        v256 = v250;
        *v206 = 136315394;
        v207 = MEMORY[0x22AA62510]();
        v208 = v165;
        v210 = v209;
        v244 = v76;
        v211 = *(v208 + 8);
        v237 = v208 + 8;
        v212 = v183;
        v213 = v164;
        v211(v212, v164);
        v214 = sub_225095AFC(v207, v210, &v256);

        *(v206 + 4) = v214;
        *(v206 + 12) = 2080;
        v215 = v249;
        v216 = [v249 accountID];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v217 = sub_22507F1F4();

        *(v206 + 14) = v217;
        _os_log_impl(&dword_22506F000, v203, v204, "TCC has been disabled for %s since session acquisition for account %s", v206, 0x16u);
        swift_arrayDestroy();
        sub_22507C9FC();
        sub_22507D330();
        sub_22508D0E0();

        sub_22507F268();
        v218(v234);
        v211(v235, v213);
      }

      else
      {
        sub_22508CFD0();

        v222 = *(v165 + 8);
        v222(v183, v164);
        sub_22507F268();
        v223(v182);
        v222(v202, v164);
      }

      v200 = v242;
      v199 = *(v243 + 8);
      v198 = v236;
      goto LABEL_57;
    }
  }

  else
  {
    if (v156 == *MEMORY[0x277CFAA28])
    {
      (*(v155 + 96))(v153, v154);
      v179 = *v153;
      if ([v81 isDataclassEnabled_])
      {
        sub_22507F2F4();
        v180(v86, v254);

        sub_22508CFD0();
        goto LABEL_38;
      }

      v186 = v81;
      v187 = v226;
      CCLog.getter();
      v188 = v186;
      v189 = v179;
      v190 = Logger.logObject.getter();
      v191 = static os_log_type_t.error.getter();

      if (!sub_22509341C())
      {
        sub_22508CFD0();

        sub_22507F268();
        v219(v187);
        sub_22507F2F4();
        v221 = v86;
LABEL_58:
        v220(v221, v254);
        v152 = MEMORY[0x277CFAA40];
        goto LABEL_37;
      }

      v192 = sub_2250957CC();
      v256 = swift_slowAlloc();
      *v192 = 136315394;
      v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v195 = sub_225095AFC(v193, v194, &v256);

      *(v192 + 4) = v195;
      *(v192 + 12) = 2080;
      v196 = [v188 accountID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_22507CEA0();

      v197 = sub_2250956C4();

      *(v192 + 14) = v197;
      _os_log_impl(&dword_22506F000, v190, v191, "Dataclass %s has been disabled since session acquisition for account %s", v192, 0x16u);
      swift_arrayDestroy();
      sub_22507C9FC();
      sub_22507CA50();
      sub_22508D0E0();

      sub_22507F268();
      v200 = v226;
LABEL_57:
      v199(v200, v198);
      v221 = sub_22507CD50();
      goto LABEL_58;
    }

    if (v156 == *MEMORY[0x277CFAA18])
    {
      (*(v225 + 8))(v86, v254);

      sub_22508CFD0();
      goto LABEL_38;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_2250CB750()
{
  v1 = OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_sessionConfiguration;
  type metadata accessor for AnySessionConfiguration();
  sub_225072BF0();
  (*(v2 + 8))(v0 + v1);
  sub_225073BF0((v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_entitlements));
  swift_unknownObjectRelease();

  sub_225073BF0((v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_tccChecker));
  sub_225073BF0((v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_accountFactory));
  return v0;
}

uint64_t sub_2250CB7F8()
{
  sub_2250CB750();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2250CB878(uint64_t a1)
{
  result = type metadata accessor for AnySessionConfiguration();
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

void *sub_2250CB988()
{
  v1 = type metadata accessor for OSLogPrivacy();
  MEMORY[0x28223BE20](v1 - 8);
  sub_225072C00();
  v2 = type metadata accessor for PropertyDescription();
  sub_225072D1C();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_225072C00();
  v8 = v7 - v6;
  if (!*(v0 + OBJC_IVAR____TtCO14CloudKitDaemon15CKDSessionCheck12AccountCheck_actor))
  {
    return MEMORY[0x277D84F90];
  }

  static OSLogPrivacy.public.getter();
  PropertyDescription.init(_:_:privacy:)();
  v9 = sub_2250C7388();
  v10 = v9[2];
  if (v10 >= v9[3] >> 1)
  {
    v9 = sub_2250C7388();
  }

  v9[2] = v10 + 1;
  (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v8, v2);

  return v9;
}

uint64_t sub_2250CBB70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v35 = a5;
  v36 = a6;
  v32 = a4;
  v33 = a1;
  v37 = a3;
  v10 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v10 - 8);
  v34 = &v31 - v11;
  v12 = sub_2250B0DFC(&qword_27D719028, &qword_225444F68);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - v13;
  swift_defaultActor_initialize();
  v15 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_readinessSink;
  v16 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  sub_22507C8C0(v6 + v15, 1, 1, v16);
  *(v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountObserverToken) = 0;
  v17 = (v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccObserverToken);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_authTokenRenewalObserverTokenAndAccountID);
  v18[1] = 0;
  v18[2] = 0;
  *v18 = 0;
  v19 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_resolvedBundleID;
  v20 = type metadata accessor for ResolvedBundleID();
  sub_22507C8C0(v6 + v19, 1, 1, v20);
  v21 = v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  *v21 = 0;
  *(v21 + 8) = 4;
  v22 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_sessionConfiguration;
  v23 = type metadata accessor for AnySessionConfiguration();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v6 + v22, a1, v23);
  *(v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_testDeviceReferenceProtocol) = a2;
  sub_2250D4724(v37, v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_entitlements);
  v25 = *(v16 - 8);
  (*(v25 + 16))(v14, a4, v16);
  sub_22507C8C0(v14, 0, 1, v16);
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_2250D4548(v14, v6 + v15, &qword_27D719028, &qword_225444F68);
  swift_endAccess();
  v26 = v35;
  sub_2250D4724(v35, v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker);
  v27 = v36;
  sub_2250D4724(v36, v6 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory);
  v28 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v34, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v6;

  sub_2250E1D44();
  swift_unknownObjectRelease();

  sub_225073BF0(v27);
  sub_225073BF0(v26);
  (*(v25 + 8))(v32, v16);
  sub_225073BF0(v37);
  (*(v24 + 8))(v33, v23);
  return v6;
}

uint64_t sub_2250CBF48()
{
  sub_225072C10();
  sub_2250CC424();
  sub_225075274();

  return v0();
}

uint64_t sub_2250CBFA0()
{
  v1 = v0;
  v2 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2250D2C7C();
  sub_2250D2D2C();
  sub_2250D2E28();
  v6 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_readinessSink;
  swift_beginAccess();
  if (!sub_22507C8E8(v0 + v6, 1, v2))
  {
    (*(v3 + 16))(v5, v0 + v6, v2);
    AsyncStream.Continuation.finish()();
    (*(v3 + 8))(v5, v2);
  }

  v7 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_sessionConfiguration;
  v8 = type metadata accessor for AnySessionConfiguration();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  swift_unknownObjectRelease();
  sub_2250D4224(v1 + v6, &qword_27D719028, &qword_225444F68);
  sub_225073BF0((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_entitlements));
  sub_225073BF0((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker));
  sub_225073BF0((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory));

  sub_2250D4194(*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_authTokenRenewalObserverTokenAndAccountID), *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_authTokenRenewalObserverTokenAndAccountID + 8), *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_authTokenRenewalObserverTokenAndAccountID + 16));
  sub_2250D4224(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_resolvedBundleID, &qword_27D719020, &qword_225444F60);
  sub_2250D4140(*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state), *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_2250CC224()
{
  v0 = sub_2250CBFA0();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2250CC2A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2250CC2E0(uint64_t a1)
{
  type metadata accessor for AnySessionConfiguration();
  if (v1 <= 0x3F)
  {
    sub_2250D3B18(319);
    if (v2 <= 0x3F)
    {
      sub_2250D3B7C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_2250CC424()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  CCLog.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22506F000, v4, v5, "Starting account acquisition", v6, 2u);
    MEMORY[0x22AA65DF0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_2250CC570();
  return sub_2250CC8A8();
}

void sub_2250CC570()
{
  v1 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountObserverToken;
  if (*(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountObserverToken))
  {
    __break(1u);
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    v4 = v2;

    sub_225073BAC((v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory), *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory + 24));
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = v4;

    sub_2250D51E8(v6, sub_2250D4598, v5);
  }
}

uint64_t sub_2250CC650(uint64_t a1)
{
  v1 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_2250E1FF4();
}

uint64_t sub_2250CC77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2250CC79C, 0, 0);
}

uint64_t sub_2250CC79C()
{
  sub_225072C10();
  sub_22507CC60();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (!Strong)
  {
    sub_22507F8C8();

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2250CC83C, Strong, 0);
}

uint64_t sub_2250CC83C()
{
  sub_225072C10();
  sub_2250D2EBC();

  v0 = sub_22507D3B8();

  return MEMORY[0x2822009F8](v0);
}

uint64_t sub_2250CC8A8()
{
  v1 = v0;
  v55 = sub_2250B0DFC(&qword_27D719010, &qword_225444830);
  MEMORY[0x28223BE20](v55);
  v3 = &v51 - v2;
  v4 = sub_2250B0DFC(&qword_27D719018, &qword_225444F58);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = &v51 - v5;
  v6 = type metadata accessor for Logger();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  v12 = sub_2250B0DFC(&qword_27D719028, &qword_225444F68);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v51 - v13;
  v15 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  v59 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v58 = &v51 - v16;
  v17 = v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  v18 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state);
  v19 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8);
  if (v19 == 4 && v18 == 2)
  {
    v62 = 0;
    v63 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0x634170556B6F6F6CLL, 0xEF2928746E756F63);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v50 = *(v17 + 8);
    v60 = *v17;
    v61 = v50;
    _print_unlocked<A, B>(_:_:)();
LABEL_16:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_readinessSink;
  swift_beginAccess();
  sub_2250D41D4(v1 + v21, v14, &qword_27D719028, &qword_225444F68);
  if (sub_22507C8E8(v14, 1, v15) == 1)
  {
    sub_2250D4224(v14, &qword_27D719028, &qword_225444F68);
    goto LABEL_16;
  }

  (*(v59 + 32))(v58, v14, v15);
  *v17 = 1;
  *(v17 + 8) = 4;
  sub_2250D4140(v18, v19);
  sub_225073BAC((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory), *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory + 24));
  v22 = sub_2250D4824(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_sessionConfiguration, *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_testDeviceReferenceProtocol));
  if (v22)
  {
    v23 = v22;
    CCLog.getter();
    v24 = v23;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v51 = v15;
      v29 = v28;
      v60 = v28;
      *v27 = 136315138;
      v30 = [v24 accountID];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = sub_225095AFC(v31, v33, &v60);

      *(v27 + 4) = v34;
      _os_log_impl(&dword_22506F000, v25, v26, "Account is logged in: %s", v27, 0xCu);
      sub_225073BF0(v29);
      v35 = v29;
      v15 = v51;
      MEMORY[0x22AA65DF0](v35, -1, -1);
      MEMORY[0x22AA65DF0](v27, -1, -1);
    }

    (*(v56 + 8))(v11, v57);
    v36 = v58;
    sub_2250CD078(v24);
  }

  else
  {
    CCLog.getter();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v51 = v15;
      v41 = v40;
      v60 = v40;
      *v39 = 136315138;
      type metadata accessor for AnySessionConfiguration();
      sub_2250D4024(&qword_27D719040, MEMORY[0x277CFAAA8], MEMORY[0x277CFAAB0]);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = sub_225095AFC(v42, v43, &v60);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_22506F000, v37, v38, "Account is not logged in. sessionConfiguration: %s", v39, 0xCu);
      sub_225073BF0(v41);
      v45 = v41;
      v15 = v51;
      MEMORY[0x22AA65DF0](v45, -1, -1);
      MEMORY[0x22AA65DF0](v39, -1, -1);
    }

    (*(v56 + 8))(v9, v57);
    v46 = *MEMORY[0x277CFAA30];
    v47 = type metadata accessor for SessionReadinessError();
    (*(*(v47 - 8) + 104))(v3, v46, v47);
    swift_storeEnumTagMultiPayload();
    v48 = v52;
    v36 = v58;
    AsyncStream.Continuation.yield(_:)();
    (*(v53 + 8))(v48, v54);
  }

  return (*(v59 + 8))(v36, v15);
}

uint64_t sub_2250CD078(void *a1)
{
  v2 = v1;
  v73 = sub_2250B0DFC(&qword_27D719010, &qword_225444830);
  MEMORY[0x28223BE20](v73);
  v72 = &v69 - v4;
  v5 = sub_2250B0DFC(&qword_27D719018, &qword_225444F58);
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  v69 = &v69 - v6;
  v7 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v69 - v8;
  v10 = type metadata accessor for Logger();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v69 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v69 - v17;
  v19 = sub_2250B0DFC(&qword_27D719028, &qword_225444F68);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v69 - v20;
  v22 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  v76 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v77 = &v69 - v23;
  v24 = v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  if (*(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8) == 4 && *(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state) == 1)
  {
    v26 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_readinessSink;
    swift_beginAccess();
    sub_2250D41D4(v2 + v26, v21, &qword_27D719028, &qword_225444F68);
    if (sub_22507C8E8(v21, 1, v22) == 1)
    {
      sub_2250D4224(v21, &qword_27D719028, &qword_225444F68);
      goto LABEL_23;
    }

    v27 = v76;
    (*(v76 + 32))(v77, v21, v22);
    *v24 = a1;
    *(v24 + 8) = 0;
    v28 = a1;
    if ([v28 isWarmingUp])
    {
      AnySessionConfiguration.account.getter();
      v29 = type metadata accessor for AuthenticatedSession.Configuration.Account();
      if (sub_22507C8E8(v9, 1, v29) == 1)
      {
        sub_2250D4224(v9, &unk_27D718ED0, &qword_225444FF0);
LABEL_18:
        CCLog.getter();
        v54 = v28;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v80 = v58;
          *v57 = 136315138;
          v59 = [v54 accountID];
          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v62 = v61;

          v63 = sub_225095AFC(v60, v62, &v80);

          *(v57 + 4) = v63;
          _os_log_impl(&dword_22506F000, v55, v56, "Account is warming up: %s", v57, 0xCu);
          sub_225073BF0(v58);
          MEMORY[0x22AA65DF0](v58, -1, -1);
          MEMORY[0x22AA65DF0](v57, -1, -1);
        }

        (*(v74 + 8))(v13, v75);
        v41 = v77;
        v64 = *MEMORY[0x277CFAA30];
        v65 = type metadata accessor for SessionReadinessError();
        (*(*(v65 - 8) + 104))(v72, v64, v65);
        swift_storeEnumTagMultiPayload();
        v66 = v69;
        AsyncStream.Continuation.yield(_:)();
        (*(v70 + 8))(v66, v71);
        return (*(v27 + 8))(v41, v22);
      }

      v42 = AuthenticatedSession.Configuration.Account.allowAccessDuringAccountWarmUp.getter();
      (*(*(v29 - 8) + 8))(v9, v29);
      if ((v42 & 1) == 0)
      {
        goto LABEL_18;
      }

      CCLog.getter();
      v43 = v28;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v80 = v47;
        *v46 = 136315138;
        v48 = [v43 accountID];
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;

        v52 = sub_225095AFC(v49, v51, &v80);

        *(v46 + 4) = v52;
        _os_log_impl(&dword_22506F000, v44, v45, "Account is warming up, but access is allowed during warm-up: %s", v46, 0xCu);
        sub_225073BF0(v47);
        MEMORY[0x22AA65DF0](v47, -1, -1);
        v53 = v46;
        v27 = v76;
        MEMORY[0x22AA65DF0](v53, -1, -1);
      }

      (*(v74 + 8))(v16, v75);
    }

    else
    {
      CCLog.getter();
      v30 = v28;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v80 = v34;
        *v33 = 136315138;
        v35 = [v30 accountID];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = sub_225095AFC(v36, v38, &v80);

        *(v33 + 4) = v39;
        _os_log_impl(&dword_22506F000, v31, v32, "Account is not warming up: %s", v33, 0xCu);
        sub_225073BF0(v34);
        MEMORY[0x22AA65DF0](v34, -1, -1);
        v40 = v33;
        v27 = v76;
        MEMORY[0x22AA65DF0](v40, -1, -1);
      }

      (*(v74 + 8))(v18, v75);
    }

    v41 = v77;
    sub_2250CD9FC();
    return (*(v27 + 8))(v41, v22);
  }

  v78 = 0;
  v79 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);
  MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
  MEMORY[0x22AA62E50](0xD000000000000021, 0x800000022547A070);
  MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
  v68 = *(v24 + 8);
  v80 = *v24;
  v81 = v68;
  _print_unlocked<A, B>(_:_:)();
LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_2250CD9FC()
{
  v1 = v0;
  v2 = type metadata accessor for BundleID();
  v100 = *(v2 - 8);
  v101 = v2;
  MEMORY[0x28223BE20](v2);
  v99 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_2250B0DFC(&qword_27D719010, &qword_225444830);
  MEMORY[0x28223BE20](v96);
  v94 = &v91 - v4;
  v97 = sub_2250B0DFC(&qword_27D719018, &qword_225444F58);
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v93 = &v91 - v5;
  v6 = type metadata accessor for Logger();
  v102 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v92 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v91 = &v91 - v10;
  MEMORY[0x28223BE20](v9);
  v98 = &v91 - v11;
  v12 = type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI.Payload();
  v107 = *(v12 - 8);
  v108 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = (&v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for AuthenticatedSession.Configuration.Account.AuthorizationUI();
  v105 = *(v15 - 8);
  v106 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v91 - v19;
  v21 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v112 = *(v21 - 8);
  v113 = v21;
  MEMORY[0x28223BE20](v21);
  v111 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2250B0DFC(&qword_27D719028, &qword_225444F68);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v91 - v24;
  v26 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  v110 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v114 = &v91 - v27;
  v28 = v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8))
  {
    v117 = 0;
    v118 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0xD000000000000020, 0x8000000225479FA0);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v89 = *(v28 + 8);
    v115 = *v28;
    LOBYTE(v116) = v89;
    _print_unlocked<A, B>(_:_:)();
    goto LABEL_23;
  }

  v29 = *v28;
  v30 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_readinessSink;
  swift_beginAccess();
  sub_2250D41D4(v1 + v30, v25, &qword_27D719028, &qword_225444F68);
  if (sub_22507C8E8(v25, 1, v26) == 1)
  {
    v90 = v29;
    sub_2250D4224(v25, &qword_27D719028, &qword_225444F68);
    goto LABEL_23;
  }

  v103 = v6;
  v31 = *(v110 + 32);
  v109 = v26;
  v31(v114, v25, v26);
  v32 = v29;
  v104 = v1;
  AnySessionConfiguration.account.getter();
  v33 = v113;
  if (sub_22507C8E8(v20, 1, v113) == 1)
  {
    sub_2250D4224(v20, &unk_27D718ED0, &qword_225444FF0);
    v115 = 0;
    v116 = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    MEMORY[0x22AA62E50](0xD000000000000014, 0x800000022547A020);
    MEMORY[0x22AA62E50](0xD000000000000020, 0x8000000225479FA0);
    MEMORY[0x22AA62E50](0xD00000000000002FLL, 0x800000022547A040);
    goto LABEL_23;
  }

  (*(v112 + 32))(v111, v20, v33);
  v34 = *v28;
  *v28 = v29;
  v35 = *(v28 + 8);
  *(v28 + 8) = 1;
  v36 = v32;
  sub_2250D4140(v34, v35);
  AuthenticatedSession.Configuration.Account.accessGrantedVia.getter();
  AuthenticatedSession.Configuration.Account.AuthorizationUI.payload.getter();
  (*(v105 + 8))(v17, v106);
  v38 = v107;
  v37 = v108;
  v39 = (*(v107 + 88))(v14, v108);
  v40 = v29;
  if (v39 == *MEMORY[0x277CFAA20])
  {
    (*(v38 + 96))(v14, v37);
    v42 = v99;
    v41 = v100;
    v43 = v101;
    (*(v100 + 32))(v99, v14, v101);
    sub_2250CE894(v42, v36);
    sub_2250D4140(v29, 0);
    (*(v41 + 8))(v42, v43);
    v44 = v109;
    goto LABEL_19;
  }

  if (v39 != *MEMORY[0x277CFAA28])
  {
    if (v39 == *MEMORY[0x277CFAA18])
    {
      v60 = v98;
      CCLog.getter();
      v61 = v36;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.info.getter();
      sub_2250D4140(v40, 0);
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v115 = v65;
        *v64 = 136315138;
        v66 = [v61 accountID];
        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v68;

        v70 = sub_225095AFC(v67, v69, &v115);

        *(v64 + 4) = v70;
        _os_log_impl(&dword_22506F000, v62, v63, "No authorization check for system service, account: %s", v64, 0xCu);
        sub_225073BF0(v65);
        MEMORY[0x22AA65DF0](v65, -1, -1);
        MEMORY[0x22AA65DF0](v64, -1, -1);
      }

      (*(v102 + 8))(v60, v103);
      v44 = v109;
      sub_2250CFDF4();
      goto LABEL_15;
    }

    while (1)
    {
LABEL_23:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  (*(v38 + 96))(v14, v37);
  v45 = *v14;
  if ([v36 isDataclassEnabled_])
  {
    v46 = v91;
    CCLog.getter();
    sub_2250D412C(v40, 0);
    v47 = v45;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();

    sub_2250D4140(v40, 0);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v115 = v51;
      *v50 = 136315394;
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = sub_225095AFC(v52, v53, &v115);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      v55 = [v36 accountID];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = sub_225095AFC(v56, v58, &v115);

      *(v50 + 14) = v59;
      _os_log_impl(&dword_22506F000, v48, v49, "Dataclass %s is enabled for account: %s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA65DF0](v51, -1, -1);
      MEMORY[0x22AA65DF0](v50, -1, -1);
    }

    (*(v102 + 8))(v46, v103);
    v44 = v109;
    sub_2250CFDF4();

LABEL_15:
    sub_2250D4140(v40, 0);
    goto LABEL_19;
  }

  v71 = v92;
  CCLog.getter();
  sub_2250D412C(v29, 0);
  v72 = v45;
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();

  sub_2250D4140(v29, 0);
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v115 = v76;
    *v75 = 136315394;
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = sub_225095AFC(v77, v78, &v115);

    *(v75 + 4) = v79;
    *(v75 + 12) = 2080;
    v80 = [v36 accountID];
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    v84 = sub_225095AFC(v81, v83, &v115);

    *(v75 + 14) = v84;
    _os_log_impl(&dword_22506F000, v73, v74, "Dataclass %s is disabled for account: %s", v75, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA65DF0](v76, -1, -1);
    MEMORY[0x22AA65DF0](v75, -1, -1);
  }

  (*(v102 + 8))(v71, v103);
  v85 = *MEMORY[0x277CFAA40];
  v86 = type metadata accessor for SessionReadinessError();
  (*(*(v86 - 8) + 104))(v94, v85, v86);
  swift_storeEnumTagMultiPayload();
  v87 = v93;
  v44 = v109;
  AsyncStream.Continuation.yield(_:)();

  sub_2250D4140(v40, 0);
  (*(v95 + 8))(v87, v97);
LABEL_19:
  (*(v112 + 8))(v111, v113);
  return (*(v110 + 8))(v114, v44);
}

uint64_t sub_2250CE894(uint64_t a1, void *a2)
{
  v3 = v2;
  v94 = a2;
  v92 = a1;
  v89 = sub_2250B0DFC(&qword_27D719010, &qword_225444830);
  MEMORY[0x28223BE20](v89);
  v88 = &v85 - v4;
  v87 = sub_2250B0DFC(&qword_27D719018, &qword_225444F58);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v85 - v5;
  v6 = type metadata accessor for Logger();
  v96 = *(v6 - 8);
  v97 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v90 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v98 = &v85 - v9;
  v10 = sub_2250B0DFC(&qword_27D719020, &qword_225444F60);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v85 - v11;
  v13 = type metadata accessor for BundleID.Payload();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ResolvedBundleID();
  v18 = *(v17 - 1);
  v19 = MEMORY[0x28223BE20](v17);
  v93 = (&v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v91 = &v85 - v22;
  MEMORY[0x28223BE20](v21);
  v99 = &v85 - v23;
  v24 = sub_2250B0DFC(&qword_27D719028, &qword_225444F68);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v85 - v25;
  v27 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  v100 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v101 = &v85 - v28;
  v29 = v3 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  if (*(&v3[1].isa + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state) != 1)
  {
    v104 = 0;
    v105 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0xD000000000000017, 0x8000000225479F30);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v84 = v29[8];
    v102 = *v29;
    v103 = v84;
    _print_unlocked<A, B>(_:_:)();
    goto LABEL_20;
  }

  v30 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_readinessSink;
  swift_beginAccess();
  sub_2250D41D4(v3 + v30, v26, &qword_27D719028, &qword_225444F68);
  if (sub_22507C8E8(v26, 1, v27) == 1)
  {
    sub_2250D4224(v26, &qword_27D719028, &qword_225444F68);
    goto LABEL_20;
  }

  v31 = *(v100 + 32);
  v95 = v27;
  v31(v101, v26, v27);
  BundleID.payload.getter();
  v32 = (*(v14 + 88))(v16, v13);
  if (v32 != *MEMORY[0x277CFAAF8])
  {
    if (v32 == *MEMORY[0x277CFAB00])
    {
      sub_225073BAC((&v3->isa + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_entitlements), *(&v3[3].isa + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_entitlements));
      v33 = v99;
      dispatch thunk of EntitlementsProtocol.bundleID.getter();
      goto LABEL_7;
    }

    while (1)
    {
LABEL_20:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  (*(v14 + 96))(v16, v13);
  v33 = v99;
  ResolvedBundleID.init(_:)();
LABEL_7:
  v34 = v93;
  v35 = *(v18 + 16);
  v35(v12, v33, v17);
  sub_22507C8C0(v12, 0, 1, v17);
  v36 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_resolvedBundleID;
  swift_beginAccess();
  sub_2250D4548(v12, v3 + v36, &qword_27D719020, &qword_225444F60);
  swift_endAccess();
  sub_225073BAC((&v3->isa + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker), *(&v3[3].isa + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker));
  v37 = sub_2250D6B78(v33);
  if (v37 == 2 || (v37 & 1) != 0)
  {
    v93 = v3;
    v38 = v98;
    CCLog.getter();
    v39 = v91;
    v35(v91, v33, v17);
    v40 = v94;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v94 = v17;
      v45 = v44;
      v102 = v44;
      *v43 = 136315394;
      sub_2250D4024(&qword_280D53638, MEMORY[0x277CFA998], MEMORY[0x277CFA9A0]);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v49 = *(v18 + 8);
      v49(v39, v94);
      v50 = sub_225095AFC(v46, v48, &v102);

      *(v43 + 4) = v50;
      *(v43 + 12) = 2080;
      v51 = [v40 accountID];
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = sub_225095AFC(v52, v54, &v102);

      *(v43 + 14) = v55;
      _os_log_impl(&dword_22506F000, v41, v42, "TCC granted access for %s for account: %s", v43, 0x16u);
      swift_arrayDestroy();
      v56 = v45;
      v17 = v94;
      MEMORY[0x22AA65DF0](v56, -1, -1);
      v57 = v43;
      v33 = v99;
      MEMORY[0x22AA65DF0](v57, -1, -1);

      (*(v96 + 8))(v98, v97);
    }

    else
    {

      v49 = *(v18 + 8);
      v49(v39, v17);
      (*(v96 + 8))(v38, v97);
    }

    sub_2250CFDF4();
    v49(v33, v17);
    v58 = v95;
  }

  else
  {
    v59 = v90;
    CCLog.getter();
    v35(v34, v33, v17);
    v60 = v17;
    v61 = v94;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      LODWORD(v94) = v63;
      v65 = v64;
      v98 = swift_slowAlloc();
      v102 = v98;
      *v65 = 136315394;
      sub_2250D4024(&qword_280D53638, MEMORY[0x277CFA998], MEMORY[0x277CFA9A0]);
      v93 = v62;
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      v69 = *(v18 + 8);
      v69(v34, v60);
      v70 = sub_225095AFC(v66, v68, &v102);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2080;
      v71 = [v61 accountID];
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v75 = sub_225095AFC(v72, v74, &v102);
      v76 = v69;

      *(v65 + 14) = v75;
      v77 = v93;
      _os_log_impl(&dword_22506F000, v93, v94, "TCC rejected access for %s for account: %s", v65, 0x16u);
      v78 = v98;
      swift_arrayDestroy();
      MEMORY[0x22AA65DF0](v78, -1, -1);
      MEMORY[0x22AA65DF0](v65, -1, -1);

      (*(v96 + 8))(v90, v97);
    }

    else
    {

      v76 = *(v18 + 8);
      v76(v34, v60);
      (*(v96 + 8))(v59, v97);
    }

    v79 = v99;
    sub_2250CF55C(v99);
    v80 = *MEMORY[0x277CFAA40];
    v81 = type metadata accessor for SessionReadinessError();
    (*(*(v81 - 8) + 104))(v88, v80, v81);
    swift_storeEnumTagMultiPayload();
    v82 = v85;
    v58 = v95;
    AsyncStream.Continuation.yield(_:)();
    (*(v86 + 8))(v82, v87);
    v76(v79, v60);
  }

  return (*(v100 + 8))(v101, v58);
}

uint64_t sub_2250CF55C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ResolvedBundleID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccObserverToken);
  if (!*(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccObserverToken + 8))
  {
    UUID.init()();
    v28 = a1;
    v14 = UUID.uuidString.getter();
    v27 = v4;
    v15 = v14;
    v29 = v14;
    v17 = v16;
    (*(v9 + 8))(v12, v8);
    *v13 = v15;
    v13[1] = v17;

    sub_225073BAC((v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker), *(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker + 24));
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = v27;
    v20 = v28;
    (*(v5 + 16))(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v27);
    v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v22 = (v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    (*(v5 + 32))(v23 + v21, v7, v19);
    v24 = (v23 + v22);
    v25 = v29;
    *v24 = v29;
    v24[1] = v17;
    *(v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = v18;

    sub_2250D5584(v25, v17, v20, sub_2250D43C8, v23);
  }

  return result;
}

uint64_t sub_2250CF810(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v40 = a4;
  v38 = a2;
  v6 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for ResolvedBundleID();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = v12;
  v45 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Logger();
  v41 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  CCLog.getter();
  v42 = *(v10 + 16);
  v43 = a1;
  v42(v14, a1, v9);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v39 = a3;

  v37 = v19;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v36 = v15;
    v21 = v20;
    v22 = swift_slowAlloc();
    v46[0] = v22;
    *v21 = 136315394;
    sub_2250D4024(&qword_280D53638, MEMORY[0x277CFA998], MEMORY[0x277CFA9A0]);
    v35 = v18;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v8;
    v26 = v25;
    (*(v10 + 8))(v14, v9);
    v27 = sub_225095AFC(v23, v26, v46);
    v8 = v24;

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_225095AFC(v38, v39, v46);
    v28 = v35;
    _os_log_impl(&dword_22506F000, v35, v37, "TCC change notification received for %s, token: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA65DF0](v22, -1, -1);
    MEMORY[0x22AA65DF0](v21, -1, -1);

    (*(v41 + 8))(v17, v36);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
    (*(v41 + 8))(v17, v15);
  }

  v29 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v8, 1, 1, v29);
  v30 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v31 = v45;
  v42(v45, v43, v9);
  v32 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 4) = v30;
  (*(v10 + 32))(&v33[v32], v31, v9);
  sub_2250E1FF4();
}

uint64_t sub_2250CFCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_2250CFCE8, 0, 0);
}

uint64_t sub_2250CFCE8()
{
  sub_225072C10();
  sub_22507CC60();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (!Strong)
  {
    sub_22507F8C8();

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2250CFD88, Strong, 0);
}

uint64_t sub_2250CFD88()
{
  sub_225072C10();
  sub_2250D30F4(*(v0 + 56));

  v1 = sub_22507D3B8();

  return MEMORY[0x2822009F8](v1);
}

uint64_t sub_2250CFDF4()
{
  v1 = v0;
  v75 = sub_2250B0DFC(&qword_27D719010, &qword_225444830);
  MEMORY[0x28223BE20](v75);
  v76 = &v72 - v2;
  v3 = sub_2250B0DFC(&qword_27D719018, &qword_225444F58);
  v77 = *(v3 - 1);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v74 = &v72 - v4;
  v5 = type metadata accessor for Logger();
  v79 = *(v5 - 8);
  v80 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v72 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v72 - v12;
  v14 = sub_2250B0DFC(&qword_27D719028, &qword_225444F68);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v72 - v15;
  v17 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v82 = &v72 - v19;
  v20 = v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8) != 1)
  {
    v83 = 0;
    v84 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0xD000000000000015, 0x8000000225479ED0);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v70 = *(v20 + 8);
    v85 = *v20;
    v86 = v70;
    _print_unlocked<A, B>(_:_:)();
LABEL_19:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21 = *v20;
  v22 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_readinessSink;
  swift_beginAccess();
  sub_2250D41D4(v1 + v22, v16, &qword_27D719028, &qword_225444F68);
  if (sub_22507C8E8(v16, 1, v17) == 1)
  {
    v71 = v21;
    sub_2250D4224(v16, &qword_27D719028, &qword_225444F68);
    goto LABEL_19;
  }

  v81 = v18;
  (*(v18 + 32))(v82, v16, v17);
  *v20 = v21;
  *(v20 + 8) = 2;
  v23 = v21;
  v24 = [v23 accountID];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  sub_2250D0FB4(v25, v27);

  if ([v23 isRenewingAuthToken])
  {
    CCLog.getter();
    v28 = v23;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    sub_2250D4140(v21, 1u);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v85 = v32;
      *v31 = 136315138;
      v33 = [v28 accountID];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = sub_225095AFC(v34, v36, &v85);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_22506F000, v29, v30, "Auth token renewal is in progress for account: %s", v31, 0xCu);
      sub_225073BF0(v32);
      MEMORY[0x22AA65DF0](v32, -1, -1);
      MEMORY[0x22AA65DF0](v31, -1, -1);
    }

    (*(v79 + 8))(v13, v80);
    v38 = v81;
    v39 = *MEMORY[0x277CFAA48];
    v40 = type metadata accessor for SessionReadinessError();
    (*(*(v40 - 8) + 104))(v76, v39, v40);
    swift_storeEnumTagMultiPayload();
    v41 = v74;
    v42 = v82;
    AsyncStream.Continuation.yield(_:)();
    sub_2250D4140(v21, 1u);
    (*(v77 + 8))(v41, v78);
  }

  else
  {
    if ([v23 hasCredentials])
    {
      CCLog.getter();
      v43 = v23;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();
      sub_2250D4140(v21, 1u);
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v85 = v78;
        *v46 = 136315138;
        v47 = [v43 accountID];
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        v51 = sub_225095AFC(v48, v50, &v85);

        *(v46 + 4) = v51;
        _os_log_impl(&dword_22506F000, v44, v45, "Credentials are valid for account: %s", v46, 0xCu);
        v52 = v78;
        sub_225073BF0(v78);
        MEMORY[0x22AA65DF0](v52, -1, -1);
        MEMORY[0x22AA65DF0](v46, -1, -1);
      }

      (*(v79 + 8))(v8, v80);
      v38 = v81;
      v42 = v82;
      sub_2250D1904();
    }

    else
    {
      CCLog.getter();
      v53 = v23;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      sub_2250D4140(v21, 1u);
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v85 = v72;
        *v56 = 136315138;
        v57 = [v53 accountID];
        v73 = v53;
        v58 = v57;
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v62 = sub_225095AFC(v59, v61, &v85);

        *(v56 + 4) = v62;
        _os_log_impl(&dword_22506F000, v54, v55, "Account needs credential renewal: %s", v56, 0xCu);
        v63 = v72;
        sub_225073BF0(v72);
        MEMORY[0x22AA65DF0](v63, -1, -1);
        MEMORY[0x22AA65DF0](v56, -1, -1);

        v64 = v11;
        v65 = v73;
        (*(v79 + 8))(v64, v80);
      }

      else
      {

        (*(v79 + 8))(v11, v80);
        v65 = v53;
      }

      v38 = v81;
      v42 = v82;
      v66 = *MEMORY[0x277CFAA48];
      v67 = type metadata accessor for SessionReadinessError();
      (*(*(v67 - 8) + 104))(v76, v66, v67);
      swift_storeEnumTagMultiPayload();
      v68 = v74;
      AsyncStream.Continuation.yield(_:)();
      (*(v77 + 8))(v68, v78);
      sub_2250D0804(v65);
    }

    sub_2250D4140(v21, 1u);
  }

  return (*(v38 + 8))(v42, v17);
}

uint64_t sub_2250D0804(void *a1)
{
  v2 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v7[5] = a1;
  v8 = a1;
  sub_2250E1D44();
}

uint64_t sub_2250D090C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250D09D8, 0, 0);
}

uint64_t sub_2250D09D8()
{
  sub_225072C10();
  sub_22507CC60();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    sub_225073BAC((Strong + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory), *(Strong + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory + 24));
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_2250D0AD0;

    return sub_2250D4CCC();
  }

  else
  {

    sub_225075274();

    return v4();
  }
}

uint64_t sub_2250D0AD0()
{
  sub_225072C10();
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2250D0D2C;
  }

  else
  {
    v2 = sub_2250D0BE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2250D0BE0(uint64_t a1)
{
  v2 = v1[6];
  CCLog.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[6];
    v7 = sub_22507CA14();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_22506F000, v4, v5, "Auth token request completed for account: %@", v7, 0xCu);
    sub_2250D4224(v8, &unk_27D719030, &qword_225443AB0);
    sub_22507CA50();
    sub_22507C9FC();
  }

  v11 = v1[10];
  v10 = v1[11];
  v12 = v1[7];
  v13 = v1[8];

  (*(v13 + 8))(v11, v12);

  return MEMORY[0x2822009F8](sub_2250D0EF0, v10, 0);
}

uint64_t sub_2250D0D2C(uint64_t a1)
{
  v2 = v1[13];
  v3 = v1[6];
  CCLog.getter();
  v4 = v3;
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[13];
  if (v8)
  {
    v10 = v1[6];
    v11 = sub_2250957CC();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2112;
    v13 = v10;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    v12[1] = v15;
    _os_log_impl(&dword_22506F000, v6, v7, "Auth token request failed for account %@: %@", v11, 0x16u);
    sub_2250B0DFC(&unk_27D719030, &qword_225443AB0);
    swift_arrayDestroy();
    sub_22507C9FC();
    sub_22507C9FC();
  }

  else
  {
  }

  (*(v1[8] + 8))(v1[9], v1[7]);

  sub_225075274();

  return v16();
}

uint64_t sub_2250D0EF0()
{
  sub_225072C10();
  sub_2250D1254();
  v0 = sub_22507D3B8();

  return MEMORY[0x2822009F8](v0);
}

uint64_t sub_2250D0F4C()
{
  sub_225072C10();

  sub_225075274();

  return v0();
}

uint64_t sub_2250D0FB4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_authTokenRenewalObserverTokenAndAccountID;
  if (*(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_authTokenRenewalObserverTokenAndAccountID))
  {
    result = *(v5 + 8);
    if (result != a1 || *(v5 + 16) != a2)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        __break(1u);
      }
    }
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v9 = *v5;
    v10 = *(v5 + 8);
    v11 = *(v5 + 16);
    *v5 = v8;
    *(v5 + 8) = a1;
    *(v5 + 16) = a2;
    v12 = v8;

    sub_2250D4194(v9, v10, v11);
    sub_225073BAC((v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory), *(v2 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountFactory + 24));
    v13 = v12;

    sub_2250D52E4(v13, a1, a2, sub_2250D427C, v2);
  }

  return result;
}

uint64_t sub_2250D10F4(uint64_t a1)
{
  v2 = sub_2250B0DFC(&qword_27D7190D0, &qword_225445B10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  sub_22507C8C0(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_2250E1D44();
}

uint64_t sub_2250D11FC()
{
  sub_225072C10();
  sub_2250D1254();
  sub_225075274();

  return v0();
}

void sub_2250D1254()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 1);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v67 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v67 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v67 - v13;
  v15 = v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  v16 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state);
  switch(*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8))
  {
    case 2:
      v38 = v16;
      if (([v38 isRenewingAuthToken] & 1) == 0 && objc_msgSend(v38, sel_hasCredentials))
      {
        CCLog.getter();
        v39 = v38;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        sub_2250D4140(v16, 2u);
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v70 = v69;
          *v42 = 136315138;
          v43 = [v39 accountID];
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v68 = v16;
          v45 = v2;
          v46 = v44;
          v48 = v47;

          v49 = sub_225095AFC(v46, v48, &v70);

          *(v42 + 4) = v49;
          _os_log_impl(&dword_22506F000, v40, v41, "Account has valid credentials: %s", v42, 0xCu);
          v50 = v69;
          sub_225073BF0(v69);
          MEMORY[0x22AA65DF0](v50, -1, -1);
          MEMORY[0x22AA65DF0](v42, -1, -1);

          v51 = v45;
          v16 = v68;
          (*(v3 + 8))(v9, v51);
        }

        else
        {

          (*(v3 + 8))(v9, v2);
        }

        sub_2250D1904();
        v65 = v16;
        v66 = 2;
        goto LABEL_17;
      }

      CCLog.getter();
      v52 = v38;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.info.getter();
      sub_2250D4140(v16, 2u);
      if (!os_log_type_enabled(v53, v54))
      {
        sub_2250D4140(v16, 2u);

        v25 = *(v3 + 8);
        v26 = v6;
        goto LABEL_5;
      }

      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v70 = v56;
      *v55 = 136315138;
      v57 = [v52 accountID];
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v2;
      v60 = v59;

      v61 = sub_225095AFC(v58, v60, &v70);

      *(v55 + 4) = v61;
      _os_log_impl(&dword_22506F000, v53, v54, "Auth token renewal state changed, account still does not have valid credentials: %s", v55, 0xCu);
      sub_225073BF0(v56);
      MEMORY[0x22AA65DF0](v56, -1, -1);
      MEMORY[0x22AA65DF0](v55, -1, -1);

      sub_2250D4140(v16, 2u);
      (*(v3 + 8))(v6, v69);
      break;
    case 3:
      v27 = v16;
      CCLog.getter();

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v68 = v16;
        v72 = v67;
        *v30 = 136315138;
        v31 = *(v15 + 8);
        v70 = *v15;
        v71 = v31;
        sub_2250D412C(v70, v31);
        v32 = String.init<A>(describing:)();
        v69 = v2;
        v34 = v27;
        v35 = sub_225095AFC(v32, v33, &v72);

        *(v30 + 4) = v35;
        v27 = v34;
        _os_log_impl(&dword_22506F000, v28, v29, "Auth token renewal state changed while in state %s, re-checking credentials", v30, 0xCu);
        v36 = v67;
        sub_225073BF0(v67);
        v37 = v36;
        v16 = v68;
        MEMORY[0x22AA65DF0](v37, -1, -1);
        MEMORY[0x22AA65DF0](v30, -1, -1);

        (*(v3 + 8))(v12, v69);
      }

      else
      {

        (*(v3 + 8))(v12, v2);
      }

      v62 = *v15;
      *v15 = v16;
      v63 = *(v15 + 8);
      *(v15 + 8) = 1;
      v64 = v27;
      sub_2250D4140(v62, v63);
      sub_2250CFDF4();
      v65 = v16;
      v66 = 3;
LABEL_17:
      sub_2250D4140(v65, v66);
      break;
    default:
      CCLog.getter();

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v72 = v20;
        *v19 = 136315138;
        v21 = *(v15 + 8);
        v70 = *v15;
        v71 = v21;
        sub_2250D412C(v70, v21);
        v22 = String.init<A>(describing:)();
        v24 = sub_225095AFC(v22, v23, &v72);

        *(v19 + 4) = v24;
        _os_log_impl(&dword_22506F000, v17, v18, "Ignoring auth token change notification in state %s", v19, 0xCu);
        sub_225073BF0(v20);
        MEMORY[0x22AA65DF0](v20, -1, -1);
        MEMORY[0x22AA65DF0](v19, -1, -1);
      }

      v25 = *(v3 + 8);
      v26 = v14;
LABEL_5:
      v25(v26, v2);
      break;
  }
}

uint64_t sub_2250D1904()
{
  v1 = v0;
  v61 = sub_2250B0DFC(&qword_27D719010, &qword_225444830);
  MEMORY[0x28223BE20](v61);
  v59 = (&v55 - v2);
  v60 = sub_2250B0DFC(&qword_27D719018, &qword_225444F58);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = &v55 - v3;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v62 = v4;
  v63 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v55 - v9;
  v11 = sub_2250B0DFC(&qword_27D719028, &qword_225444F68);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v55 - v12;
  v14 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v55 - v16;
  v18 = v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8) != 2)
  {
    v64 = 0;
    v65 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0x7265546B63656863, 0xEC0000002928736DLL);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v53 = *(v18 + 8);
    v66 = *v18;
    v67 = v53;
    _print_unlocked<A, B>(_:_:)();
LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v19 = *v18;
  v20 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_readinessSink;
  swift_beginAccess();
  sub_2250D41D4(v1 + v20, v13, &qword_27D719028, &qword_225444F68);
  if (sub_22507C8E8(v13, 1, v14) == 1)
  {
    v54 = v19;
    sub_2250D4224(v13, &qword_27D719028, &qword_225444F68);
    goto LABEL_13;
  }

  (*(v15 + 32))(v17, v13, v14);
  *v18 = v19;
  *(v18 + 8) = 3;
  v21 = v19;
  if ([v21 needsToVerifyTerms])
  {
    v56 = v17;
    CCLog.getter();
    v22 = v21;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    sub_2250D4140(v19, 2u);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v66 = v55;
      *v25 = 136315138;
      v26 = v19;
      v27 = [v22 accountID];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v15;
      v31 = v30;

      v32 = sub_225095AFC(v28, v31, &v66);
      v15 = v29;

      *(v25 + 4) = v32;
      v19 = v26;
      _os_log_impl(&dword_22506F000, v23, v24, "Account needs terms of service update: %s", v25, 0xCu);
      v33 = v55;
      sub_225073BF0(v55);
      MEMORY[0x22AA65DF0](v33, -1, -1);
      MEMORY[0x22AA65DF0](v25, -1, -1);
    }

    (*(v63 + 8))(v8, v62);
    v34 = *MEMORY[0x277CFAA68];
    v35 = type metadata accessor for SessionReadinessError();
    (*(*(v35 - 8) + 104))(v59, v34, v35);
    swift_storeEnumTagMultiPayload();
    v17 = v56;
    v36 = v57;
    AsyncStream.Continuation.yield(_:)();
    sub_2250D4140(v19, 2u);
    (*(v58 + 8))(v36, v60);
  }

  else
  {
    CCLog.getter();
    v37 = v21;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    sub_2250D4140(v19, 2u);
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v61 = v15;
      v41 = v40;
      v59 = swift_slowAlloc();
      v66 = v59;
      *v41 = 136315138;
      v42 = [v37 accountID];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v19;
      v44 = v43;
      v45 = v14;
      v46 = v17;
      v48 = v47;

      v49 = sub_225095AFC(v44, v48, &v66);
      v17 = v46;
      v14 = v45;

      *(v41 + 4) = v49;
      v19 = v60;
      _os_log_impl(&dword_22506F000, v38, v39, "Terms of service is up-to-date for account: %s", v41, 0xCu);
      v50 = v59;
      sub_225073BF0(v59);
      MEMORY[0x22AA65DF0](v50, -1, -1);
      v51 = v41;
      v15 = v61;
      MEMORY[0x22AA65DF0](v51, -1, -1);
    }

    (*(v63 + 8))(v10, v62);
    sub_2250D20CC();
    sub_2250D4140(v19, 2u);
  }

  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_2250D20CC()
{
  v1 = v0;
  v91 = sub_2250B0DFC(&qword_27D719010, &qword_225444830);
  MEMORY[0x28223BE20](v91);
  v90 = (&v81 - v2);
  v3 = sub_2250B0DFC(&qword_27D719018, &qword_225444F58);
  v88 = *(v3 - 8);
  v89 = v3;
  MEMORY[0x28223BE20](v3);
  v87 = &v81 - v4;
  v92 = type metadata accessor for Logger();
  v5 = *(v92 - 8);
  v6 = MEMORY[0x28223BE20](v92);
  v94 = (&v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v83 = &v81 - v8;
  v9 = sub_2250B0DFC(&qword_27D719020, &qword_225444F60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v81 - v10;
  v12 = type metadata accessor for ResolvedBundleID();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v81 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v84 = &v81 - v16;
  v17 = sub_2250B0DFC(&qword_27D719028, &qword_225444F68);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v86 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v81 - v20;
  v22 = sub_2250B0DFC(&unk_27D718FE0, &qword_225444D60);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v96 = &v81 - v24;
  v25 = v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8) != 3)
  {
    v99 = 0;
    v100 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x8000000225479780);
    MEMORY[0x22AA62E50](0x7571634165746F6ELL, 0xEE00292864657269);
    MEMORY[0x22AA62E50](0xD000000000000010, 0x80000002254797C0);
    v79 = *(v25 + 8);
    v97[3] = *v25;
    v98 = v79;
    _print_unlocked<A, B>(_:_:)();
LABEL_19:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v95 = *v25;
  v26 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_readinessSink;
  swift_beginAccess();
  v85 = v26;
  sub_2250D41D4(v1 + v26, v21, &qword_27D719028, &qword_225444F68);
  if (sub_22507C8E8(v21, 1, v22) == 1)
  {
    v80 = v95;
    sub_2250D4224(v21, &qword_27D719028, &qword_225444F68);
    goto LABEL_19;
  }

  v93 = v23;
  (*(v23 + 32))(v96, v21, v22);
  v27 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_resolvedBundleID;
  swift_beginAccess();
  sub_2250D41D4(v1 + v27, v11, &qword_27D719020, &qword_225444F60);
  if (sub_22507C8E8(v11, 1, v12) == 1)
  {
    v28 = v95;
    v29 = v95;
    sub_2250D4224(v11, &qword_27D719020, &qword_225444F60);
LABEL_8:
    sub_2250D2C7C();
    sub_2250D2D2C();
    sub_2250D2E28();
    v33 = *v25;
    *v25 = 2;
    v34 = *(v25 + 8);
    *(v25 + 8) = 4;
    sub_2250D4140(v33, v34);
    v35 = v94;
    CCLog.getter();
    v36 = v28;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    sub_2250D4140(v28, 3u);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v97[0] = v40;
      *v39 = 136315138;
      v41 = [v36 accountID];
      v82 = v22;
      v42 = v5;
      v43 = v41;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_225095AFC(v44, v46, v97);

      *(v39 + 4) = v47;
      _os_log_impl(&dword_22506F000, v37, v38, "Account successfully acquired: %s", v39, 0xCu);
      sub_225073BF0(v40);
      v48 = v40;
      v28 = v95;
      MEMORY[0x22AA65DF0](v48, -1, -1);
      MEMORY[0x22AA65DF0](v39, -1, -1);

      v42[1](v94, v92);
      v22 = v82;
    }

    else
    {

      v5[1](v35, v92);
    }

    v49 = v93;
    *v90 = v36;
    swift_storeEnumTagMultiPayload();
    v50 = v36;
    v51 = v87;
    v52 = v96;
    AsyncStream.Continuation.yield(_:)();
    (v88[1].isa)(v51, v89);
    AsyncStream.Continuation.finish()();
    sub_2250D4140(v28, 3u);
    (*(v49 + 8))(v52, v22);
    v53 = v86;
    sub_22507C8C0(v86, 1, 1, v22);
    v54 = v85;
    swift_beginAccess();
    sub_2250D4548(v53, v1 + v54, &qword_27D719028, &qword_225444F68);
    return swift_endAccess();
  }

  v30 = v84;
  (*(v13 + 32))(v84, v11, v12);
  sub_225073BAC((v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker), *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker + 24));
  v28 = v95;
  v31 = v95;
  v32 = sub_2250D6B78(v30);
  if (v32 == 2 || (v32 & 1) != 0)
  {
    (*(v13 + 8))(v30, v12);
    goto LABEL_8;
  }

  v82 = v22;
  v94 = v5;
  v56 = v83;
  CCLog.getter();
  v57 = v81;
  (*(v13 + 16))(v81, v30, v12);
  v91 = v31;
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  sub_2250D4140(v28, 3u);
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v88 = v58;
    v61 = v60;
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v97[0] = v90;
    *v61 = 136315394;
    sub_2250D4024(&qword_280D53638, MEMORY[0x277CFA998], MEMORY[0x277CFA9A0]);
    LODWORD(v87) = v59;
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    v65 = *(v13 + 8);
    v65(v57, v12);
    v66 = v65;
    v67 = sub_225095AFC(v62, v64, v97);
    v28 = v95;

    *(v61 + 4) = v67;
    *(v61 + 12) = 2112;
    v68 = v91;
    *(v61 + 14) = v91;
    v69 = v89;
    *v89 = v28;
    v70 = v68;
    v71 = v88;
    _os_log_impl(&dword_22506F000, v88, v87, "TCC revoked access for %s for account: %@", v61, 0x16u);
    sub_2250D4224(v69, &unk_27D719030, &qword_225443AB0);
    MEMORY[0x22AA65DF0](v69, -1, -1);
    v72 = v90;
    sub_225073BF0(v90);
    MEMORY[0x22AA65DF0](v72, -1, -1);
    MEMORY[0x22AA65DF0](v61, -1, -1);

    v94[1](v83, v92);
    v73 = v68;
  }

  else
  {

    v74 = *(v13 + 8);
    v74(v57, v12);
    v66 = v74;
    v94[1](v56, v92);
    v73 = v91;
  }

  v75 = *v25;
  *v25 = v28;
  v76 = v28;
  v77 = *(v25 + 8);
  *(v25 + 8) = 0;
  v78 = v73;
  sub_2250D4140(v75, v77);
  sub_2250CD9FC();
  sub_2250D4140(v76, 3u);
  v66(v84, v12);
  return (*(v93 + 8))(v96, v82);
}

void sub_2250D2C7C()
{
  v1 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountObserverToken;
  v2 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_accountObserverToken);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedNotifier];
    [v5 unregisterObserverForAccountChangeNotification_];

    v6 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

void sub_2250D2D2C()
{
  v1 = v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_authTokenRenewalObserverTokenAndAccountID;
  v2 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_authTokenRenewalObserverTokenAndAccountID);
  if (v2)
  {
    v4 = *(v1 + 8);
    v3 = *(v1 + 16);
    v5 = objc_opt_self();
    sub_2250D4154(v2, v4, v3);
    v6 = v2;
    v7 = [v5 sharedNotifier];
    v8 = MEMORY[0x22AA62D80](v4, v3);

    [v7 unregisterObserver:v6 forAuthTokenRenewalInProgressNotificationsForAccountID:v8];

    v9 = *v1;
    v10 = *(v1 + 8);
    v11 = *(v1 + 16);
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
    *v1 = 0;

    sub_2250D4194(v9, v10, v11);
  }
}

void sub_2250D2E28()
{
  v1 = (v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccObserverToken);
  v2 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccObserverToken + 8);
  if (v2)
  {
    v3 = *v1;
    sub_225073BAC((v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker), *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker + 24));

    sub_2250D698C(v3, v2);

    *v1 = 0;
    v1[1] = 0;
  }
}

uint64_t sub_2250D2EBC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  if (*(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8) == 4 && *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state) == 2)
  {
    CCLog.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22506F000, v17, v18, "Ignoring account change received in state .acquired", v19, 2u);
      MEMORY[0x22AA65DF0](v19, -1, -1);
    }

    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    CCLog.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22506F000, v11, v12, "Account change received, restarting account acquisition", v13, 2u);
      MEMORY[0x22AA65DF0](v13, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    sub_2250D2D2C();
    v14 = *v9;
    *v9 = 0;
    v15 = *(v9 + 8);
    *(v9 + 8) = 4;
    sub_2250D4140(v14, v15);
    return sub_2250CC8A8();
  }
}

void sub_2250D30F4(uint64_t a1)
{
  v3 = type metadata accessor for ResolvedBundleID();
  v4 = *(v3 - 8);
  v91 = v3;
  v92 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v89 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v89 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v89 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v93 = v16;
  v94 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v89 - v21;
  MEMORY[0x28223BE20](v20);
  v26 = &v89 - v25;
  v95 = v1;
  v27 = v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state;
  v28 = *(v1 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state);
  v29 = *(v27 + 8);
  switch(v29)
  {
    case 1u:
      v47 = v24;
      sub_225073BAC((v95 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker), *(v95 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker + 24));
      v48 = sub_2250D6B78(a1);
      if (v48 == 2 || (v48 & 1) != 0)
      {
        CCLog.getter();
        v49 = v92;
        v50 = a1;
        v51 = v91;
        (*(v92 + 16))(v13, v50, v91);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v96 = v55;
          *v54 = 136315138;
          sub_2250D4024(&qword_280D53638, MEMORY[0x277CFA998], MEMORY[0x277CFA9A0]);
          v56 = dispatch thunk of CustomStringConvertible.description.getter();
          v58 = v57;
          (*(v49 + 8))(v13, v51);
          v59 = sub_225095AFC(v56, v58, &v96);

          *(v54 + 4) = v59;
          _os_log_impl(&dword_22506F000, v52, v53, "TCC access has been enabled for %s", v54, 0xCu);
          sub_225073BF0(v55);
          MEMORY[0x22AA65DF0](v55, -1, -1);
          MEMORY[0x22AA65DF0](v54, -1, -1);
        }

        else
        {

          (*(v49 + 8))(v13, v51);
        }

        (*(v94 + 8))(v22, v93);
        sub_2250CFDF4();
      }

      else
      {
        v75 = v47;
        CCLog.getter();
        v76 = v91;
        v77 = v92;
        (*(v92 + 16))(v10, a1, v91);
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v96 = v81;
          *v80 = 136315138;
          sub_2250D4024(&qword_280D53638, MEMORY[0x277CFA998], MEMORY[0x277CFA9A0]);
          v82 = dispatch thunk of CustomStringConvertible.description.getter();
          v83 = v76;
          v85 = v84;
          (*(v77 + 8))(v10, v83);
          v86 = sub_225095AFC(v82, v85, &v96);

          *(v80 + 4) = v86;
          _os_log_impl(&dword_22506F000, v78, v79, "TCC is still rejecting access for %s", v80, 0xCu);
          sub_225073BF0(v81);
          MEMORY[0x22AA65DF0](v81, -1, -1);
          MEMORY[0x22AA65DF0](v80, -1, -1);
        }

        else
        {

          (*(v77 + 8))(v10, v76);
        }

        (*(v94 + 8))(v75, v93);
      }

      break;
    case 2u:
    case 3u:
      v45 = v23;
      sub_225073BAC((v95 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker), *(v95 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_tccChecker + 24));
      sub_2250D412C(v28, v29);
      v46 = sub_2250D6B78(a1);
      if (v46 == 2 || (v46 & 1) != 0)
      {

        sub_2250D4140(v28, v29);
      }

      else
      {
        v90 = v28;
        CCLog.getter();
        v60 = v91;
        v61 = v92;
        (*(v92 + 16))(v7, a1, v91);

        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v98 = v65;
          *v64 = 136315394;
          sub_2250D4024(&qword_280D53638, MEMORY[0x277CFA998], MEMORY[0x277CFA9A0]);
          v66 = dispatch thunk of CustomStringConvertible.description.getter();
          v67 = v60;
          v69 = v68;
          (*(v61 + 8))(v7, v67);
          v70 = sub_225095AFC(v66, v69, &v98);

          *(v64 + 4) = v70;
          *(v64 + 12) = 2080;
          v71 = *(v27 + 8);
          v96 = *v27;
          v97 = v71;
          sub_2250D412C(v96, v71);
          v72 = String.init<A>(describing:)();
          v74 = sub_225095AFC(v72, v73, &v98);

          *(v64 + 14) = v74;
          _os_log_impl(&dword_22506F000, v62, v63, "TCC rejected access for %s while in state %s, re-attempting authorization UI check", v64, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA65DF0](v65, -1, -1);
          MEMORY[0x22AA65DF0](v64, -1, -1);
        }

        else
        {

          (*(v61 + 8))(v7, v60);
        }

        (*(v94 + 8))(v45, v93);
        v87 = *v27;
        *v27 = v90;
        v88 = *(v27 + 8);
        *(v27 + 8) = 0;
        sub_2250D4140(v87, v88);
        sub_2250CD9FC();
      }

      break;
    default:
      CCLog.getter();
      v30 = v91;
      v31 = v92;
      (*(v92 + 16))(v15, a1, v91);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v98 = v35;
        *v34 = 136315394;
        sub_2250D4024(&qword_280D53638, MEMORY[0x277CFA998], MEMORY[0x277CFA9A0]);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v30;
        v39 = v38;
        (*(v31 + 8))(v15, v37);
        v40 = sub_225095AFC(v36, v39, &v98);

        *(v34 + 4) = v40;
        *(v34 + 12) = 2080;
        v41 = *(v27 + 8);
        v96 = *v27;
        v97 = v41;
        sub_2250D412C(v96, v41);
        v42 = String.init<A>(describing:)();
        v44 = sub_225095AFC(v42, v43, &v98);

        *(v34 + 14) = v44;
        _os_log_impl(&dword_22506F000, v32, v33, "Ignoring TCC change notification for %s in state %s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA65DF0](v35, -1, -1);
        MEMORY[0x22AA65DF0](v34, -1, -1);
      }

      else
      {

        (*(v31 + 8))(v15, v30);
      }

      (*(v94 + 8))(v26, v93);
      break;
  }
}

void sub_2250D3B18(uint64_t a1)
{
  if (!qword_280D534B8)
  {
    sub_2250C7B40(&unk_27D718FE0, &qword_225444D60);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_280D534B8);
    }
  }
}

void sub_2250D3B7C(uint64_t a1)
{
  if (!qword_280D53628)
  {
    type metadata accessor for ResolvedBundleID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_280D53628);
    }
  }
}

uint64_t sub_2250D3BD4(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_2250D3BF0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2250D3C04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2250D3C44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2250D3C88(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_2250D3CF8()
{
  v16 = type metadata accessor for PropertyDescription();
  v1 = *(v16 - 8);
  v2 = v1;
  MEMORY[0x28223BE20](v16);
  v15 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogPrivacy();
  MEMORY[0x28223BE20](v4 - 8);
  sub_2250B0DFC(&qword_27D718E40, &qword_225444760);
  v5 = *(v1 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_225444470;
  v8 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state);
  ObjectType = &_s12AccountCheckC5ActorC5StateON;
  v17 = v8;
  v18 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_state + 8);
  sub_2250D412C(v8, v18);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v9 = OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_sessionConfiguration;
  v10 = type metadata accessor for AnySessionConfiguration();
  ObjectType = v10;
  v11 = sub_225073808(&v17);
  (*(*(v10 - 8) + 16))(v11, v0 + v9, v10);
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v12 = *(v0 + OBJC_IVAR____TtCCO14CloudKitDaemon15CKDSessionCheck12AccountCheckP33_BAC31B783841EFE4230ECED7FCABD8CC5Actor_testDeviceReferenceProtocol);
  if (v12)
  {
    ObjectType = swift_getObjectType();
    v17 = v12;
    swift_unknownObjectRetain_n();
    static OSLogPrivacy.auto.getter();
    v13 = v15;
    PropertyDescription.init(_:_:privacy:)();
    v7 = sub_2250C7388();
    swift_unknownObjectRelease();
    *(v7 + 16) = 3;
    (*(v2 + 32))(v7 + v6 + 2 * v5, v13, v16);
  }

  return v7;
}

uint64_t sub_2250D4024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2250D4070()
{
  result = qword_280D53460;
  if (!qword_280D53460)
  {
    sub_2250C7B40(&qword_27D718EE8, &qword_225444840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D53460);
  }

  return result;
}

uint64_t sub_2250D40D4(uint64_t a1)
{
  result = sub_2250D4024(&qword_280D53E50, _s12AccountCheckCMa, &unk_225444F10);
  *(a1 + 8) = result;
  return result;
}

id sub_2250D412C(id result, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    return result;
  }

  return result;
}

void sub_2250D4140(id a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
  }
}

void *sub_2250D4154(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
  }

  return result;
}

void *sub_2250D4194(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2250D41D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_225072C1C(a1, a2, a3, a4);
  sub_225072BF0();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2250D4224(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2250B0DFC(a2, a3);
  sub_225072BF0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2250D4284()
{
  sub_2250971A4();
  v1 = swift_task_alloc();
  v2 = sub_225075264(v1);
  *v2 = v3;
  v2[1] = sub_2250D4820;
  v4 = sub_225098644();

  return sub_2250D11DC(v4, v5, v6, v0);
}

uint64_t sub_2250D431C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_225075264(v3);
  *v4 = v5;
  v4[1] = sub_2250D4820;
  v6 = sub_225098644();

  return sub_2250D090C(v6, v7, v8, v2, v1);
}

uint64_t sub_2250D43C8()
{
  v1 = *(type metadata accessor for ResolvedBundleID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  return sub_2250CF810(v0 + v2, v6, v7, v8);
}

uint64_t sub_2250D4464()
{
  type metadata accessor for ResolvedBundleID();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_225075264(v2);
  *v3 = v4;
  v3[1] = sub_2250D4820;
  v5 = sub_225098644();

  return sub_2250CFCC4(v5, v6, v7, v1, v8);
}

uint64_t sub_2250D4548(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_225072C1C(a1, a2, a3, a4);
  sub_225072BF0();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_2250D45A0()
{
  sub_2250971A4();
  v1 = swift_task_alloc();
  v2 = sub_225075264(v1);
  *v2 = v3;
  v2[1] = sub_2250D4638;
  v4 = sub_225098644();

  return sub_2250CC77C(v4, v5, v6, v0);
}

uint64_t sub_2250D4638()
{
  sub_225072C10();

  sub_225075274();

  return v0();
}

uint64_t sub_2250D4724(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2250D4788()
{
  sub_2250971A4();
  v1 = swift_task_alloc();
  v2 = sub_225075264(v1);
  *v2 = v3;
  v2[1] = sub_2250D4820;
  v4 = sub_225098644();

  return sub_2250CBF28(v4, v5, v6, v0);
}

id sub_2250D4824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnySessionConfiguration();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  AnySessionConfiguration.account.getter();
  v11 = type metadata accessor for AuthenticatedSession.Configuration.Account();
  v12 = sub_22507C8E8(v10, 1, v11);
  result = sub_2250D4C00(v10);
  if (v12 != 1)
  {
    sub_2250C7F8C(0, &qword_280D53418, 0x277CBC170);
    (*(v5 + 16))(v7, a1, v4);
    v14 = CKAccountOverrideInfo.init(sessionConfiguration:)();
    if (v14)
    {
      v15 = v14;
      v16 = [objc_allocWithZone(CKDAccount) initExplicitCredentialsAccountWithAccountOverrideInfo_];

      return v16;
    }

    v17 = [objc_opt_self() deviceContextForTestDeviceReference_];
    v18 = [v17 testServer];
    if (!v18)
    {
      v16 = [objc_allocWithZone(CKDAccount) initPrimaryAccount];

      return v16;
    }

    v19 = v18;
    v20 = [v17 testDevice];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 daemonAccount];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 email];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return 0;
        }

        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {
          if ([v19 useLiveServer])
          {
            v31 = [v23 accountOverrideInfo];
            v16 = [objc_allocWithZone(CKDAccount) initExplicitCredentialsAccountWithAccountOverrideInfo_];

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {
            sub_2250C7F8C(0, &qword_280D53450, off_278543938);
            v16 = sub_2250D4C68(v23, v21);

            swift_unknownObjectRelease();
          }

          return v16;
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_2250D4C00(uint64_t a1)
{
  v2 = sub_2250B0DFC(&unk_27D718ED0, &qword_225444FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2250D4C68(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initMockAccountWithTestAccount:a1 testDevice:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_2250D4CCC()
{
  sub_225072C10();
  v0[20] = v1;
  v2 = sub_2250B0DFC(&qword_27D719050, &unk_225445000);
  v0[21] = v2;
  v0[22] = *(v2 - 8);
  v0[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2250D4D94, 0, 0);
}

uint64_t sub_2250D4D94()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v9 = v1[20];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_2250D4F48;
  swift_continuation_init();
  v1[17] = v8;
  v10 = sub_225073808(v1 + 14);
  sub_2250B0DFC(&qword_27D718B00, &unk_225444460);
  CheckedContinuation.init(continuation:function:)();
  (*(v7 + 32))(v10, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2250D5134;
  v1[13] = &unk_28385AAB8;
  [v9 iCloudAuthTokenWithCompletionHandler_];
  (*(v7 + 8))(v10, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_2250D4F48()
{
  sub_225072C10();
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_2250D50C0;
  }

  else
  {
    v2 = sub_2250D5054;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2250D5054()
{
  sub_225072C10();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2250D50C0(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

void sub_2250D5134(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_225073BAC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v7 = a3;
    sub_2250ED794(v4, v7);
  }

  else
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_2250ED864(v4, v6, v5);
  }
}

void sub_2250D51E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedNotifier];
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  sub_225072D78();
  v9[1] = 1107296256;
  v9[2] = sub_2250DC800;
  v9[3] = &unk_28385AB08;
  v8 = _Block_copy(v9);

  [v6 registerObserver:a1 forAccountChangeNotification:v8];
  _Block_release(v8);
}