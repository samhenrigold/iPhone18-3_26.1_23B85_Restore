uint64_t sub_10011995C(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unsigned __int8 a11, void (*a12)(uint64_t, void *), uint64_t a13)
{
  v195 = a8;
  v190 = a7;
  v199 = a5;
  v200 = a6;
  v196 = a3;
  v197 = a4;
  v198 = a2;
  v208 = a13;
  v209 = a12;
  v206 = a11;
  v205 = a10;
  v203 = a1;
  v204 = a9;
  v13 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v176 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = (&v176 - v18);
  v20 = __chkstk_darwin(v17);
  v201 = (&v176 - v21);
  v22 = __chkstk_darwin(v20);
  v202 = (&v176 - v23);
  v24 = __chkstk_darwin(v22);
  v193 = &v176 - v25;
  v26 = __chkstk_darwin(v24);
  v194 = (&v176 - v27);
  v28 = __chkstk_darwin(v26);
  v183 = &v176 - v29;
  v30 = __chkstk_darwin(v28);
  v184 = (&v176 - v31);
  v32 = __chkstk_darwin(v30);
  v179 = &v176 - v33;
  v34 = __chkstk_darwin(v32);
  v180 = (&v176 - v35);
  v36 = __chkstk_darwin(v34);
  v189 = &v176 - v37;
  v38 = __chkstk_darwin(v36);
  v191 = (&v176 - v39);
  v40 = __chkstk_darwin(v38);
  v187 = &v176 - v41;
  __chkstk_darwin(v40);
  v188 = (&v176 - v42);
  v207 = type metadata accessor for Errors();
  v211 = *(v207 - 8);
  v43 = __chkstk_darwin(v207);
  v45 = (&v176 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __chkstk_darwin(v43);
  v48 = (&v176 - v47);
  v49 = __chkstk_darwin(v46);
  v192 = (&v176 - v50);
  v51 = __chkstk_darwin(v49);
  v178 = (&v176 - v52);
  __chkstk_darwin(v51);
  v186 = (&v176 - v53);
  v54 = type metadata accessor for Logger();
  v212 = *(v54 - 8);
  v213 = v54;
  v55 = __chkstk_darwin(v54);
  v57 = &v176 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v55);
  v182 = &v176 - v59;
  v60 = __chkstk_darwin(v58);
  v181 = &v176 - v61;
  v62 = __chkstk_darwin(v60);
  v185 = &v176 - v63;
  __chkstk_darwin(v62);
  v65 = &v176 - v64;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v66 = qword_1002B1CF0;
  v67 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v68 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v68 + 4);

  v69 = *(v66 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v210 = v66;
  v70 = *(v66 + v67);
  v71 = v69;

  os_unfair_lock_unlock(v70 + 4);

  if (!v69 || (v72 = v71, v73 = dispatch thunk of DockCoreAccessory.info.getter(), v177 = v72, v72, type metadata accessor for DockCoreInfo(), v74 = v203, LOBYTE(v72) = static NSObject.== infix(_:_:)(), v74, v73, (v72 & 1) == 0))
  {
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v110 = v213;
    v111 = sub_100093DE8(v213, qword_1002A9110);
    v112 = v212;
    (*(v212 + 16))(v65, v111, v110);
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.error.getter();
    v115 = os_log_type_enabled(v113, v114);
    v116 = v207;
    v117 = v211;
    if (v115)
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&_mh_execute_header, v113, v114, "No such connected accessory, not setting velocity", v118, 2u);
      v112 = v212;
    }

    (*(v112 + 8))(v65, v213);
    *v45 = 0xD000000000000016;
    v45[1] = 0x8000000100231A70;
    (*(v117 + 104))(v45, enum case for Errors.OperationNotSupported(_:), v116);
    (*(v117 + 16))(v19, v45, v116);
    (*(v117 + 56))(v19, 0, 1, v116);
    sub_10018C604(v204, v205, v206, v19);
    sub_1000B5150(v19, v16, &unk_1002A6F30, &unk_10023C4D0);
    if ((*(v117 + 48))(v16, 1, v116) == 1)
    {
      sub_100095C84(v16, &unk_1002A6F30, &unk_10023C4D0);
      v119 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v119 = v214;
    }

    v209(0, v119);

    sub_100095C84(v19, &unk_1002A6F30, &unk_10023C4D0);
    return (*(v117 + 8))(v45, v116);
  }

  v75 = sub_1001884E4(v74);
  v76 = v212;
  if (!v75)
  {
LABEL_23:
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v121 = v213;
    v122 = sub_100093DE8(v213, qword_1002A9110);
    (*(v76 + 16))(v57, v122, v121);
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.error.getter();
    v125 = os_log_type_enabled(v123, v124);
    v126 = v211;
    if (v125)
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&_mh_execute_header, v123, v124, "Failed to find valid accessory with actuation controller.", v127, 2u);
    }

    (*(v212 + 8))(v57, v121);
    *v48 = 0xD000000000000015;
    v48[1] = 0x8000000100231A90;
    v128 = v207;
    (*(v126 + 104))(v48, enum case for Errors.NotFound(_:), v207);
    v129 = v202;
    (*(v126 + 16))(v202, v48, v128);
    (*(v126 + 56))(v129, 0, 1, v128);
    sub_10018C604(v204, v205, v206, v129);
    v130 = v201;
    sub_1000B5150(v129, v201, &unk_1002A6F30, &unk_10023C4D0);
    if ((*(v126 + 48))(v130, 1, v128) == 1)
    {
      sub_100095C84(v130, &unk_1002A6F30, &unk_10023C4D0);
      v131 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v131 = v214;
    }

    v209(0, v131);

    sub_100095C84(v129, &unk_1002A6F30, &unk_10023C4D0);
    return (*(v126 + 8))(v48, v128);
  }

  v77 = v75;
  type metadata accessor for ActuationController();
  v78 = v199;
  v79 = v200;
  if ((dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)() & 1) == 0)
  {

    goto LABEL_23;
  }

  sub_10019A4F0(1);
  v80 = v77;
  sub_100198E44(v77, v81);

  DockCoreInfo.type.getter();
  v82 = DockCoreAccessoryType.rawValue.getter();
  if (v82 == DockCoreAccessoryType.rawValue.getter())
  {
    v83 = dispatch thunk of DockCoreAccessory.info.getter();
    v84 = swift_allocObject();
    *(v84 + 16) = 1;
    *(v84 + 24) = v74;
    *(v84 + 32) = v80;
    *(v84 + 40) = v78;
    *(v84 + 48) = v79;
    v85 = v74;
    v86 = v80;

    v87 = sub_1001971B4(v83, v198, v196, v197, sub_100137D5C, v84);
    v89 = v88;

    v90 = v207;
    if (v87)
    {
      v91 = v211;
      if (v89)
      {
        v92 = qword_1002A66D8;
        v203 = v87;

        v93 = v212;
        v94 = v195;
        if (v92 != -1)
        {
          swift_once();
        }

        v95 = v213;
        v96 = sub_100093DE8(v213, qword_1002A9110);
        v97 = v185;
        (*(v93 + 16))(v185, v96, v95);
        v98 = v86;

        v99 = Logger.logObject.getter();
        v100 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v99, v100))
        {
          v101 = v93;
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v202 = v86;
          v104 = v103;
          v105 = swift_slowAlloc();
          v214 = v105;
          *v102 = 138412802;
          v106 = dispatch thunk of DockCoreAccessory.info.getter();
          *(v102 + 4) = v106;
          *v104 = v106;
          *(v102 + 12) = 2080;
          v107 = Array.description.getter();
          v109 = sub_1000952D4(v107, v108, &v214);

          *(v102 + 14) = v109;
          *(v102 + 22) = 1024;
          *(v102 + 24) = v198;
          _os_log_impl(&_mh_execute_header, v99, v100, "Animator was started for %@, target %s, owner %d", v102, 0x1Cu);
          sub_100095C84(v104, &unk_1002A6F60, &unk_10023C4E0);
          v86 = v202;

          sub_100095808(v105);

          (*(v101 + 8))(v97, v213);
          v94 = v195;
        }

        else
        {

          (*(v93 + 8))(v97, v95);
        }

        sub_1000C4E14(v190, v94, 0);
        v157 = v191;
        v158 = v189;
        v91 = v211;
        goto LABEL_51;
      }

      v156 = v212;
      if (*(v87 + 16) == v198)
      {

        sub_1000C4E14(v190, v195, 0);
        v157 = v191;
        v158 = v189;
LABEL_51:
        (*(v91 + 56))(v157, 1, 1, v90);
        sub_10018C604(v204, v205, v206, v157);
        sub_1000B5150(v157, v158, &unk_1002A6F30, &unk_10023C4D0);
        if ((*(v91 + 48))(v158, 1, v90) == 1)
        {
          sub_100095C84(v158, &unk_1002A6F30, &unk_10023C4D0);
          v159 = 0;
        }

        else
        {
          sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
          swift_dynamicCast();
          v159 = v214;
        }

        v209(1, v159);

        v160 = v157;
        return sub_100095C84(v160, &unk_1002A6F30, &unk_10023C4D0);
      }

      v161 = qword_1002A66D8;

      if (v161 != -1)
      {
        swift_once();
      }

      v162 = v213;
      v163 = sub_100093DE8(v213, qword_1002A9110);
      v164 = v181;
      (*(v156 + 16))(v181, v163, v162);

      v165 = v197;

      v166 = Logger.logObject.getter();
      v167 = static os_log_type_t.default.getter();

      LODWORD(v203) = v167;
      if (os_log_type_enabled(v166, v167))
      {
        v168 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        v214 = v201;
        *v168 = 136315394;
        v202 = v86;
        v169 = *(v87 + 24);
        v170 = *(v87 + 32);

        v171 = sub_1000952D4(v169, v170, &v214);
        v86 = v202;

        *(v168 + 4) = v171;
        *(v168 + 12) = 2080;
        *(v168 + 14) = sub_1000952D4(v196, v165, &v214);
        _os_log_impl(&_mh_execute_header, v166, v203, "animator owned by %s, rejecting request from %s", v168, 0x16u);
        swift_arrayDestroy();

        (*(v156 + 8))(v181, v213);
      }

      else
      {

        (*(v156 + 8))(v164, v213);
      }

      v172 = v178;
      *v178 = 0xD000000000000021;
      v172[1] = 0x8000000100231AD0;
      (*(v91 + 104))(v172, enum case for Errors.UnexpectedError(_:), v90);
      v173 = v180;
      (*(v91 + 16))(v180, v172, v90);
      (*(v91 + 56))(v173, 0, 1, v90);
      sub_10018C604(v204, v205, v206, v173);
      v174 = v179;
      sub_1000B5150(v173, v179, &unk_1002A6F30, &unk_10023C4D0);
      if ((*(v91 + 48))(v174, 1, v90) == 1)
      {
        sub_100095C84(v174, &unk_1002A6F30, &unk_10023C4D0);
        v175 = 0;
      }

      else
      {
        sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
        swift_dynamicCast();
        v175 = v214;
      }

      v209(0, v175);

      sub_100095C84(v173, &unk_1002A6F30, &unk_10023C4D0);
      return (*(v91 + 8))(v172, v90);
    }

    else
    {
      v151 = v186;
      *v186 = 0xD000000000000014;
      v151[1] = 0x8000000100231AB0;
      v152 = v211;
      (*(v211 + 104))(v151, enum case for Errors.NotFound(_:), v90);
      v153 = v188;
      (*(v152 + 16))(v188, v151, v90);
      (*(v152 + 56))(v153, 0, 1, v90);
      sub_10018C604(v204, v205, v206, v153);
      v154 = v187;
      sub_1000B5150(v153, v187, &unk_1002A6F30, &unk_10023C4D0);
      if ((*(v152 + 48))(v154, 1, v90) == 1)
      {
        sub_100095C84(v154, &unk_1002A6F30, &unk_10023C4D0);
        v155 = 0;
      }

      else
      {
        sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
        swift_dynamicCast();
        v155 = v214;
      }

      v209(0, v155);

      sub_100095C84(v153, &unk_1002A6F30, &unk_10023C4D0);
      return (*(v152 + 8))(v151, v90);
    }
  }

  else
  {
    type metadata accessor for DockCoreManager();
    v132 = static DockCoreManager.debugAllowed.getter();
    v133 = v207;
    if (v132)
    {
      DockCoreInfo.type.getter();
      v134 = DockCoreAccessoryType.rawValue.getter();
      if (v134 == DockCoreAccessoryType.rawValue.getter())
      {
        if (qword_1002A66D8 != -1)
        {
          swift_once();
        }

        v135 = v213;
        v136 = sub_100093DE8(v213, qword_1002A9110);
        v137 = v182;
        (*(v76 + 16))(v182, v136, v135);
        v138 = Logger.logObject.getter();
        v139 = static os_log_type_t.default.getter();
        v140 = os_log_type_enabled(v138, v139);
        v141 = v211;
        if (v140)
        {
          v142 = swift_slowAlloc();
          *v142 = 0;
          _os_log_impl(&_mh_execute_header, v138, v139, "setActuatorVelocities: noop for mock device", v142, 2u);
          v76 = v212;
        }

        (*(v76 + 8))(v137, v135);
        v143 = v184;
        (*(v141 + 56))(v184, 1, 1, v133);
        sub_10018C604(v204, v205, v206, v143);
        v144 = v183;
        sub_1000B5150(v143, v183, &unk_1002A6F30, &unk_10023C4D0);
        if ((*(v141 + 48))(v144, 1, v133) == 1)
        {
          sub_100095C84(v144, &unk_1002A6F30, &unk_10023C4D0);
          v145 = 0;
        }

        else
        {
          sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
          swift_dynamicCast();
          v145 = v214;
        }

        v209(1, v145);

        v160 = v143;
        return sub_100095C84(v160, &unk_1002A6F30, &unk_10023C4D0);
      }
    }

    v146 = v192;
    *v192 = 0x6C706D6920746F6ELL;
    v146[1] = 0xEF6465746E656D65;
    v147 = v211;
    (*(v211 + 104))(v146, enum case for Errors.OperationNotSupported(_:), v133);
    v148 = v194;
    (*(v147 + 16))(v194, v146, v133);
    (*(v147 + 56))(v148, 0, 1, v133);
    sub_10018C604(v204, v205, v206, v148);
    v149 = v193;
    sub_1000B5150(v148, v193, &unk_1002A6F30, &unk_10023C4D0);
    if ((*(v147 + 48))(v149, 1, v133) == 1)
    {
      sub_100095C84(v149, &unk_1002A6F30, &unk_10023C4D0);
      v150 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v150 = v214;
    }

    v209(0, v150);

    sub_100095C84(v148, &unk_1002A6F30, &unk_10023C4D0);
    return (*(v147 + 8))(v146, v133);
  }
}

uint64_t sub_10011B22C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v114 = a7;
  v115 = a8;
  v119 = a5;
  v120 = a6;
  v116 = a3;
  v117 = a4;
  v118 = a2;
  v9 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v9 - 8);
  v124 = &v110 - v10;
  v123 = type metadata accessor for Errors();
  v11 = *(v123 - 8);
  __chkstk_darwin(v123);
  v13 = (&v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v121 = v14;
  v122 = v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v110 - v20;
  v22 = __chkstk_darwin(v19);
  v112 = &v110 - v23;
  v24 = __chkstk_darwin(v22);
  v113 = &v110 - v25;
  __chkstk_darwin(v24);
  v27 = &v110 - v26;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v28 = qword_1002B1CF0;
  v29 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v30 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v30 + 4);

  v31 = *(v28 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v32 = *(v28 + v29);
  v33 = v31;

  os_unfair_lock_unlock(v32 + 4);

  if (v31)
  {
    v34 = v33;
    v35 = dispatch thunk of DockCoreAccessory.info.getter();
    v111 = v34;

    type metadata accessor for DockCoreInfo();
    v36 = a1;
    LOBYTE(v34) = static NSObject.== infix(_:_:)();

    if (v34)
    {
      v37 = sub_1001884E4(v36);
      if (v37)
      {
        v38 = v37;
        type metadata accessor for ActuationController();
        if (dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)())
        {
          sub_10019A4F0(1);
          v39 = v38;
          sub_100198E44(v38, v40);

          DockCoreInfo.type.getter();
          v41 = DockCoreAccessoryType.rawValue.getter();
          if (v41 == DockCoreAccessoryType.rawValue.getter())
          {
            v42 = dispatch thunk of DockCoreAccessory.info.getter();
            v43 = swift_allocObject();
            *(v43 + 16) = 1;
            *(v43 + 24) = v36;
            *(v43 + 32) = v39;
            v44 = v120;
            *(v43 + 40) = v119;
            *(v43 + 48) = v44;
            v45 = v36;
            v39 = v39;

            v46 = sub_1001971B4(v42, v118, v116, v117, sub_10011C13C, v43);
            v48 = v47;

            if (v46)
            {
              if (v48)
              {
                v49 = qword_1002A66D8;

                v50 = v49 == -1;
                v51 = v122;
                if (!v50)
                {
                  swift_once();
                }

                v52 = v121;
                v53 = sub_100093DE8(v121, qword_1002A9110);
                v54 = v113;
                (*(v51 + 16))(v113, v53, v52);
                v120 = v39;
                v55 = v39;
                v56 = v51;
                v57 = v55;
                v58 = v115;

                v59 = Logger.logObject.getter();
                v60 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v59, v60))
                {
                  v61 = swift_slowAlloc();
                  v119 = v46;
                  v62 = v61;
                  v63 = swift_slowAlloc();
                  v64 = swift_slowAlloc();
                  v125 = v64;
                  *v62 = 138412802;
                  v65 = dispatch thunk of DockCoreAccessory.info.getter();
                  *(v62 + 4) = v65;
                  *v63 = v65;
                  *(v62 + 12) = 2080;
                  v66 = Array.description.getter();
                  v68 = sub_1000952D4(v66, v67, &v125);

                  *(v62 + 14) = v68;
                  *(v62 + 22) = 1024;
                  *(v62 + 24) = v118;
                  _os_log_impl(&_mh_execute_header, v59, v60, "Animator was started for %@, target %s, owner %d", v62, 0x1Cu);
                  sub_100095C84(v63, &unk_1002A6F60, &unk_10023C4E0);

                  sub_100095808(v64);
                  v58 = v115;

                  (*(v56 + 8))(v113, v52);
                }

                else
                {

                  (*(v56 + 8))(v54, v52);
                }

                sub_1000C4E14(v114, v58, 0);
                v39 = v120;
                goto LABEL_40;
              }

              v95 = v122;
              if (*(v46 + 16) == v118)
              {

                sub_1000C4E14(v114, v115, 0);
LABEL_40:
                v93 = v124;
                (*(v11 + 56))(v124, 1, 1, v123);
                sub_1001C7BA4(1, v93);

                return sub_100095C84(v93, &unk_1002A6F30, &unk_10023C4D0);
              }

              v96 = qword_1002A66D8;

              if (v96 != -1)
              {
                swift_once();
              }

              v97 = v121;
              v98 = sub_100093DE8(v121, qword_1002A9110);
              v99 = v112;
              (*(v95 + 16))(v112, v98, v97);

              v100 = v117;

              v101 = Logger.logObject.getter();
              v102 = v46;
              v103 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v101, v103))
              {
                v104 = swift_slowAlloc();
                v105 = swift_slowAlloc();
                v119 = v102;
                v125 = v105;
                *v104 = 136315394;
                v106 = *(v119 + 24);
                v120 = v39;
                v107 = v95;
                v108 = *(v119 + 32);

                v109 = sub_1000952D4(v106, v108, &v125);

                *(v104 + 4) = v109;
                *(v104 + 12) = 2080;
                *(v104 + 14) = sub_1000952D4(v116, v100, &v125);
                _os_log_impl(&_mh_execute_header, v101, v103, "animator owned by %s, rejecting request from %s", v104, 0x16u);
                swift_arrayDestroy();

                (*(v107 + 8))(v112, v121);
                v39 = v120;
              }

              else
              {

                (*(v95 + 8))(v99, v121);
              }

              *v13 = 0xD000000000000021;
              v13[1] = 0x8000000100231AD0;
              v84 = v123;
              (*(v11 + 104))(v13, enum case for Errors.UnexpectedError(_:), v123);
              v85 = v124;
              (*(v11 + 16))(v124, v13, v84);
              (*(v11 + 56))(v85, 0, 1, v84);
              sub_1001C7BA4(0, v85);

LABEL_35:
              sub_100095C84(v85, &unk_1002A6F30, &unk_10023C4D0);
              return (*(v11 + 8))(v13, v84);
            }

            *v13 = 0xD000000000000014;
            v13[1] = 0x8000000100231AB0;
            v94 = &enum case for Errors.NotFound(_:);
          }

          else
          {
            type metadata accessor for DockCoreManager();
            if (static DockCoreManager.debugAllowed.getter())
            {
              DockCoreInfo.type.getter();
              v86 = DockCoreAccessoryType.rawValue.getter();
              if (v86 == DockCoreAccessoryType.rawValue.getter())
              {
                if (qword_1002A66D8 != -1)
                {
                  swift_once();
                }

                v87 = v121;
                v88 = sub_100093DE8(v121, qword_1002A9110);
                v89 = v122;
                (*(v122 + 16))(v21, v88, v87);
                v90 = Logger.logObject.getter();
                v91 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v90, v91))
                {
                  v92 = swift_slowAlloc();
                  *v92 = 0;
                  _os_log_impl(&_mh_execute_header, v90, v91, "setActuatorVelocities: noop for mock device", v92, 2u);
                }

                (*(v89 + 8))(v21, v87);
                v93 = v124;
                (*(v11 + 56))(v124, 1, 1, v123);
                sub_1001C7BA4(1, v93);

                return sub_100095C84(v93, &unk_1002A6F30, &unk_10023C4D0);
              }
            }

            *v13 = 0x6C706D6920746F6ELL;
            v13[1] = 0xEF6465746E656D65;
            v94 = &enum case for Errors.OperationNotSupported(_:);
          }

          v84 = v123;
          (*(v11 + 104))(v13, *v94, v123);
          v85 = v124;
          (*(v11 + 16))(v124, v13, v84);
          (*(v11 + 56))(v85, 0, 1, v84);
          sub_1001C7BA4(0, v85);

          goto LABEL_35;
        }
      }

      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v78 = v121;
      v79 = sub_100093DE8(v121, qword_1002A9110);
      v80 = v122;
      (*(v122 + 16))(v18, v79, v78);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v81, v82, "Failed to find valid accessory with actuation controller.", v83, 2u);
      }

      (*(v80 + 8))(v18, v78);
      *v13 = 0xD000000000000015;
      v13[1] = 0x8000000100231A90;
      v84 = v123;
      (*(v11 + 104))(v13, enum case for Errors.NotFound(_:), v123);
      v85 = v124;
      (*(v11 + 16))(v124, v13, v84);
      (*(v11 + 56))(v85, 0, 1, v84);
      sub_1001C7BA4(0, v85);

      goto LABEL_35;
    }
  }

  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v69 = v121;
  v70 = sub_100093DE8(v121, qword_1002A9110);
  v71 = v122;
  (*(v122 + 16))(v27, v70, v69);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "No such connected accessory, not setting velocity", v74, 2u);
  }

  (*(v71 + 8))(v27, v69);
  *v13 = 0xD000000000000016;
  v13[1] = 0x8000000100231A70;
  v75 = v123;
  (*(v11 + 104))(v13, enum case for Errors.OperationNotSupported(_:), v123);
  v76 = v124;
  (*(v11 + 16))(v124, v13, v75);
  (*(v11 + 56))(v76, 0, 1, v75);
  sub_1001C7BA4(0, v76);

  sub_100095C84(v76, &unk_1002A6F30, &unk_10023C4D0);
  return (*(v11 + 8))(v13, v75);
}

uint64_t sub_10011C140(char *a1, uint64_t a2, char *a3, unint64_t a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v43 - v15;
  if ((a1 != a3 || a2 != a4) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v44 = a5;
    v45 = a2;
    v43 = v14;
    v46 = v11;
    v47 = v10;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v17 = qword_1002B1CF0;
    v18 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
    v19 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

    os_unfair_lock_lock(v19 + 4);

    v20 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__appIDsOptedOutOfSystemTracking;
    v21 = swift_beginAccess();
    v22 = *(v17 + v20);
    *&v51[0] = a3;
    *(&v51[0] + 1) = a4;
    __chkstk_darwin(v21);
    *(&v43 - 2) = v51;

    LOBYTE(v20) = sub_10019EE0C(sub_100137D14, (&v43 - 4), v22);

    v23 = *(v17 + v18);

    os_unfair_lock_unlock(v23 + 4);

    if (v20)
    {
      v25 = v46;
      v24 = v47;
      if (qword_1002A66C0 != -1)
      {
        swift_once();
      }

      v26 = static AppLayoutMonitor.shared;
      if (sub_1000F16AC())
      {
        v27 = String._bridgeToObjectiveC()();
        v28 = [v44 valueForEntitlement:v27];

        if (v28)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v49 = 0u;
          v50 = 0u;
        }

        v51[0] = v49;
        v51[1] = v50;
        if (*(&v50 + 1))
        {
          v34 = swift_dynamicCast();
          if (v34 & 1) != 0 && (v48)
          {
            return 1;
          }
        }

        else
        {
          v34 = sub_100095C84(v51, &qword_1002A9210, &unk_10023BE70);
        }

        __chkstk_darwin(v34);
        *(&v43 - 4) = v26;
        *(&v43 - 3) = a1;
        *(&v43 - 2) = v45;
        OS_dispatch_queue.sync<A>(execute:)();
        if (v51[0])
        {
          return 1;
        }

        if (qword_1002A66D8 != -1)
        {
          swift_once();
        }

        v36 = sub_100093DE8(v24, qword_1002A9110);
        v37 = v43;
        (*(v25 + 16))(v43, v36, v24);
        v38 = v45;

        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *&v51[0] = v42;
          *v41 = 136315138;
          *(v41 + 4) = sub_1000952D4(a1, v38, v51);
          _os_log_impl(&_mh_execute_header, v39, v40, "contender %s is not visible in foreground, stealing disallowed", v41, 0xCu);
          sub_100095808(v42);
        }

        (*(v25 + 8))(v37, v24);
      }

      else
      {
        if (qword_1002A66D8 != -1)
        {
          swift_once();
        }

        v29 = sub_100093DE8(v24, qword_1002A9110);
        (*(v25 + 16))(v16, v29, v24);

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *&v51[0] = v33;
          *v32 = 136315138;
          *(v32 + 4) = sub_1000952D4(a3, a4, v51);
          _os_log_impl(&_mh_execute_header, v30, v31, "prior owner: %s is not backgrounded, stealing disallowed", v32, 0xCu);
          sub_100095808(v33);
        }

        (*(v25 + 8))(v16, v24);
      }
    }
  }

  return 0;
}

uint64_t sub_10011C77C(void *a1)
{
  v2 = [a1 processIdentifier];
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v3 = qword_1002B1CF0;
  v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v5 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__processesAuthorizedForCamera);
  v7 = *(v6 + 16);
  v8 = (v6 + 32);
  while (v7)
  {
    v9 = *v8++;
    --v7;
    if (v9 == v2)
    {
      v10 = *(v3 + v4);

      os_unfair_lock_unlock(v10 + 4);

      return 1;
    }
  }

  v11 = *(v3 + v4);

  os_unfair_lock_unlock(v11 + 4);

  [a1 auditToken];
  v18 = v21;
  v19 = v20;
  v12 = String._bridgeToObjectiveC()();
  v20 = v19;
  v21 = v18;
  v13 = TCCAccessPreflightWithAuditToken();

  if (v13)
  {
    return 0;
  }

  v16 = sub_10019B91C(a1, v14);
  sub_10018FFB8(v2, v16, v17, 1);

  return 1;
}

uint64_t sub_10011C91C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for Errors();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DKXPCClientApplication(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v13);
  sub_1000B5150(v13 + *(v11 + 32), v5, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100095C84(v5, &unk_1002A6F30, &unk_10023C4D0);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v14 = qword_1002B1CF0;
    v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v16 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v16 + 4);

    swift_beginAccess();
    v17 = *(v14 + v15);

    os_unfair_lock_unlock(v17 + 4);

    type metadata accessor for DockCoreAccessory();
    isa = Array._bridgeToObjectiveC()().super.isa;
    (*(a2 + 16))(a2, isa, 0);

    return sub_1000BAA28(v13);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v7 + 16))(v20, v9, v6);
    v21 = _convertErrorToNSError(_:)();
    type metadata accessor for DockCoreAccessory();
    v22 = Array._bridgeToObjectiveC()().super.isa;
    (*(a2 + 16))(a2, v22, v21);

    (*(v7 + 8))(v9, v6);
    sub_1000BAA28(v13);
  }
}

uint64_t sub_10011CCC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Errors();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DKXPCClientApplication(0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v15);
  sub_1000B5150(v15 + *(v13 + 32), v7, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100095C84(v7, &unk_1002A6F30, &unk_10023C4D0);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v16 = qword_1002B1CF0;
    v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v18 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v18 + 4);

    v19 = *(v16 + *a3);
    v20 = *(v16 + v17);
    v21 = v19;

    os_unfair_lock_unlock(v20 + 4);

    (*(a2 + 16))(a2, v21, 0);

    return sub_1000BAA28(v15);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v9 + 16))(v23, v11, v8);
    v24 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 0, v24);

    (*(v9 + 8))(v11, v8);
    sub_1000BAA28(v15);
  }
}

uint64_t sub_10011D00C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for Errors();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DKXPCClientApplication(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v13);
  sub_1000B5150(v13 + *(v11 + 32), v5, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100095C84(v5, &unk_1002A6F30, &unk_10023C4D0);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v14 = qword_1002B1CF0;
    v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v16 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v16 + 4);

    v17 = *(v14 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState);
    v18 = *(v14 + v15);

    os_unfair_lock_unlock(v18 + 4);

    (*(a2 + 16))(a2, v17, 0);
    return sub_1000BAA28(v13);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v7 + 16))(v20, v9, v6);
    v21 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 2, v21);

    (*(v7 + 8))(v9, v6);
    sub_1000BAA28(v13);
  }
}

void sub_10011D34C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void *, void, void *))
{
  v168 = a6;
  v177 = a5;
  v179 = a3;
  v180 = a4;
  v176 = a2;
  v181 = a1;
  v174 = type metadata accessor for UUID();
  v167 = *(v174 - 8);
  v8 = __chkstk_darwin(v174);
  v173 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v172 = &v161 - v10;
  *&v169 = type metadata accessor for Logger();
  v171 = *(v169 - 8);
  v11 = __chkstk_darwin(v169);
  v166 = &v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v170 = &v161 - v13;
  v14 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = (&v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v15);
  v175 = &v161 - v19;
  __chkstk_darwin(v18);
  v21 = &v161 - v20;
  v22 = type metadata accessor for Errors();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v178 = (&v161 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v27 = &v161 - v26;
  v28 = type metadata accessor for DKXPCClientApplication(0);
  v29 = v28 - 8;
  __chkstk_darwin(v28);
  v31 = (&v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v31);
  sub_1000B5150(v31 + *(v29 + 32), v21, &unk_1002A6F30, &unk_10023C4D0);
  v32 = *(v23 + 48);
  if ((v32)(v21, 1, v22) != 1)
  {
    (*(v23 + 32))(v27, v21, v22);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v23 + 16))(v57, v27, v22);
    v58 = v23;
    v59 = _convertErrorToNSError(_:)();
    a7[2](a7, 0, v59);

    (*(v58 + 8))(v27, v22);
LABEL_22:
    v63 = v31;
LABEL_24:
    sub_1000BAA28(v63);

    return;
  }

  v165 = a7;
  sub_100095C84(v21, &unk_1002A6F30, &unk_10023C4D0);
  if (!*v31)
  {
    __break(1u);
    goto LABEL_94;
  }

  v33 = *v31;
  v34 = [v33 processIdentifier];
  if (!v181 || !v179 || !v180 || !v177)
  {
    v60 = v178;
    *v178 = 0xD000000000000016;
    v60[1] = 0x8000000100231BD0;
    (*(v23 + 104))(v60, enum case for Errors.NilParams(_:), v22);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v23 + 16))(v61, v60, v22);
    v62 = _convertErrorToNSError(_:)();
    v165[2](v165, 0, v62);

    (*(v23 + 8))(v60, v22);
    goto LABEL_22;
  }

  v164 = v33;
  v35 = v34;
  v163 = v22;
  v162 = v31;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v36 = qword_1002B1CF0;
  v37 = sub_1001884E4(v181);
  if (!v37 || (type metadata accessor for ActuationController(), v38 = v37, v39 = dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)(), v38, (v39 & 1) == 0) || (v40 = v38, v41 = dispatch thunk of DockCoreAccessory.hasSystemActuators(name:actuators:)(), v40, (v41 & 1) == 0))
  {
    v64 = v178;
    *v178 = 0xD000000000000019;
    v64[1] = 0x8000000100231E50;
    v65 = *(v23 + 104);
    v66 = v23;
    v67 = v163;
    v65(v64, enum case for Errors.NotFound(_:), v163);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v66 + 16))(v68, v64, v67);
    v69 = _convertErrorToNSError(_:)();
    v165[2](v165, 0, v69);

    (*(v66 + 8))(v64, v67);
    v63 = v162;
    goto LABEL_24;
  }

  v161 = v40;
  v42 = v175;
  v43 = sub_100111DAC(v175, v164);

  if ((v43 & 1) == 0 && (v32)(v42, 1, v163) == 1)
  {
    if (sub_10019C1F4(v35, 0x7469736F50746573, 0xEC000000736E6F69))
    {
      v44 = v23;
      v45 = v162;
      v46 = v163;
      v47 = v171;
      v48 = v164;
      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v49 = v169;
      v50 = sub_100093DE8(v169, qword_1002A9110);
      (*(v47 + 16))(v170, v50, v49);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "Rate limit exceeded for setActuatorPositions", v53, 2u);
        v42 = v175;
      }

      (*(v47 + 8))(v170, v49);
      v54 = v178;
      *v178 = 0xD00000000000002BLL;
      v54[1] = 0x8000000100231FF0;
      (*(v44 + 104))(v54, enum case for Errors.RateLimitXPC(_:), v46);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      (*(v44 + 16))(v55, v54, v46);
      v56 = _convertErrorToNSError(_:)();
      v165[2](v165, 0, v56);

      (*(v44 + 8))(v54, v46);
      sub_1000BAA28(v45);

      goto LABEL_29;
    }

    sub_10019A4F0(1);
    sub_100198E44(v37, v74);
    v32 = v171;
    a7 = v164;
    if (*(v168 + OBJC_IVAR____TtC14dockaccessoryd14dockaccessoryd_debugAllowed))
    {
      DockCoreInfo.type.getter();
      v75 = DockCoreAccessoryType.rawValue.getter();
      if (v75 == DockCoreAccessoryType.rawValue.getter())
      {
        v76 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
        v77 = *(v36 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

        os_unfair_lock_lock(v77 + 4);

        v78 = *(v36 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
        v79 = *(v36 + v76);
        v80 = v78;

        os_unfair_lock_unlock(v79 + 4);

        if (v78)
        {
          v81 = dispatch thunk of DockCoreAccessory.info.getter();

          type metadata accessor for DockCoreInfo();
          v82 = v181;
          v83 = static NSObject.== infix(_:_:)();

          if (v83)
          {
            v17 = v162;
            if (qword_1002A66D8 == -1)
            {
LABEL_36:
              v84 = v169;
              v85 = sub_100093DE8(v169, qword_1002A9110);
              v86 = v166;
              (*(v32 + 16))(v166, v85, v84);
              v87 = Logger.logObject.getter();
              v88 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v87, v88))
              {
                v89 = swift_slowAlloc();
                *v89 = 0;
                _os_log_impl(&_mh_execute_header, v87, v88, "setActuatorPositions: noop for mock device", v89, 2u);
              }

              (*(v32 + 8))(v86, v169);
              v165[2](v165, 1, 0);

              v90 = v17;
LABEL_39:
              sub_1000BAA28(v90);
LABEL_63:
              v73 = v175;
              goto LABEL_30;
            }

LABEL_94:
            swift_once();
            goto LABEL_36;
          }
        }
      }
    }

    v171 = v23;
    v181 = v181;
    DockCoreInfo.type.getter();
    v91 = DockCoreAccessoryType.rawValue.getter();
    v92 = DockCoreAccessoryType.rawValue.getter();
    v93 = v162;
    if (v91 == v92)
    {
      v94 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v95 = *(v36 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v95 + 4);

      v96 = *(v36 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
      v97 = *(v36 + v94);
      v98 = v96;

      os_unfair_lock_unlock(v97 + 4);

      if (v96)
      {
        v170 = v98;
        v99 = *(v36 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
        v168 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
        v100 = *&v99[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
        *&v169 = v99;
        v101 = v99;
        v102 = v100;
        OS_dispatch_semaphore.wait()();

        v103 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
        swift_beginAccess();
        v104 = *&v101[v103];
        v105 = *(v104 + 16);

        if (!v105)
        {
LABEL_47:

          v116 = *(v169 + v168);
          OS_dispatch_semaphore.signal()();

          v185 = 0;
          v183 = 0u;
          v184 = 0u;
          goto LABEL_49;
        }

        v106 = v105;
        v107 = 0;
        v108 = v104 + 32;
        v109 = (v167 + 8);
        v110 = v172;
        while (1)
        {
          if (v107 >= *(v104 + 16))
          {
            __break(1u);
            goto LABEL_91;
          }

          sub_1000A097C(v108, v182);
          v111 = *(*sub_1000A09E0(v182, v182[3]) + 24);
          DockCoreInfo.identifier.getter();

          v112 = v173;
          DockCoreInfo.identifier.getter();
          LOBYTE(v111) = static UUID.== infix(_:_:)();
          v113 = *v109;
          v114 = v112;
          v115 = v174;
          (*v109)(v114, v174);
          v113(v110, v115);
          if (v111)
          {
            break;
          }

          ++v107;
          sub_100095808(v182);
          v108 += 40;
          if (v106 == v107)
          {
            goto LABEL_47;
          }
        }

        v117 = *(v169 + v168);
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v182, &v183);
        sub_100095808(v182);
LABEL_49:

        v93 = v162;
        v118 = v170;
        a7 = v164;
        if (*(&v184 + 1))
        {
          sub_100095274(&unk_1002A7A90, &unk_10023C960);
          type metadata accessor for DaemonAccessory(0);
          if (swift_dynamicCast())
          {
            v119 = v182[0];
            sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
            v120 = *(v119 + 24);
            v121 = dispatch thunk of DockCoreAccessory.info.getter();
            v122 = static NSObject.== infix(_:_:)();

            if ((v122 & 1) != 0 && (v123 = *(v119 + 16)) != 0)
            {
              v124 = *&v123[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
              if (v124)
              {
                v174 = v119;
                v125 = v123;
                if ([v124 state] == 2)
                {
                  v126 = objc_opt_self();
                  sub_100095274(&unk_1002A73A0, &qword_10023C670);
                  v127 = swift_allocObject();
                  v169 = xmmword_10023C170;
                  *(v127 + 16) = xmmword_10023C170;
                  *(v127 + 56) = &type metadata for UInt32;
                  *(v127 + 64) = &protocol witness table for UInt32;
                  *(v127 + 32) = 512;
                  String.init(format:_:)();
                  v128 = String._bridgeToObjectiveC()();

                  v129 = [v126 UUIDWithString:v128];

                  v173 = v125;
                  v130 = sub_10013EF7C(v129);

                  v172 = v130;
                  if (v130)
                  {
                    v131 = swift_allocObject();
                    *(v131 + 16) = v169;
                    *(v131 + 56) = &type metadata for UInt32;
                    *(v131 + 64) = &protocol witness table for UInt32;
                    *(v131 + 32) = 261;
                    String.init(format:_:)();
                    v132 = String._bridgeToObjectiveC()();

                    v133 = [v126 UUIDWithString:v132];

                    v134 = sub_10013F1B8(v133, v172);
                    *&v169 = v134;
                    if (v134)
                    {
                      v135 = *(v180 + 16);
                      if (v135)
                      {
                        v136 = 0;
                        v178 = (v177 + 32);
                        v137 = (v180 + 40);
                        v138 = _swiftEmptyArrayStorage;
                        v139 = _swiftEmptyArrayStorage;
                        v140 = v170;
                        while (1)
                        {
                          v147 = *(v177 + 16);
                          if (v136 == v147)
                          {
                            goto LABEL_92;
                          }

                          if (v136 >= v147)
                          {
                            __break(1u);
                            return;
                          }

                          v149 = *(v137 - 1);
                          v148 = *v137;
                          v146 = *&v178[v136];

                          v150 = dispatch thunk of DockCoreAccessory.getActuatorIndex(name:system:)();
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v138 = sub_100102FEC(0, v138[2] + 1, 1, v138);
                          }

                          v152 = v138[2];
                          v151 = v138[3];
                          if (v152 >= v151 >> 1)
                          {
                            v138 = sub_100102FEC((v151 > 1), v152 + 1, 1, v138);
                          }

                          v138[2] = (v152 + 1);
                          v138[v152 + 4] = v150;
                          type metadata accessor for Actuator();
                          if (v149 == static Actuator.Pitch.getter() && v148 == v153)
                          {

                            v140 = v170;
                          }

                          else
                          {
                            v154 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            v140 = v170;
                            if ((v154 & 1) == 0)
                            {
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                v139 = sub_100102EE8(0, v139[2] + 1, 1, v139);
                              }

                              v156 = v139[2];
                              v158 = v139[3];
                              v157 = (v156 + 1);
                              if (v156 >= v158 >> 1)
                              {
                                v139 = sub_100102EE8((v158 > 1), v156 + 1, 1, v139);
                              }

                              v140 = v170;
                              goto LABEL_65;
                            }
                          }

                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v139 = sub_100102EE8(0, v139[2] + 1, 1, v139);
                          }

                          v156 = v139[2];
                          v155 = v139[3];
                          v157 = (v156 + 1);
                          if (v156 >= v155 >> 1)
                          {
                            v139 = sub_100102EE8((v155 > 1), v156 + 1, 1, v139);
                          }

                          v146 = -v146;
LABEL_65:
                          ++v136;
                          v139[2] = v157;
                          *&v139[v156 + 4] = v146;
                          v137 += 2;
                          if (v135 == v136)
                          {
                            goto LABEL_92;
                          }
                        }
                      }

LABEL_91:
                      v139 = _swiftEmptyArrayStorage;
                      v138 = _swiftEmptyArrayStorage;
                      v140 = v170;
LABEL_92:
                      v160 = v169;
                      sub_1001A38B4(v138, v139, 0, v169);

                      v165[2](v165, 1, 0);

                      v90 = v162;
                      goto LABEL_39;
                    }

                    v159 = &v186;
                  }

                  else
                  {

                    v159 = &v187;
                  }

                  v93 = v162;
                  a7 = v164;
                }

                else
                {

                  v93 = v162;
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }

          else
          {
          }
        }

        else
        {

          sub_100095C84(&v183, &unk_1002A6F40, &unk_10023BE90);
        }
      }
    }

    v141 = v178;
    *v178 = 0x6C706D6920746F6ELL;
    v141[1] = 0xEF6465746E656D65;
    v142 = v171;
    v143 = v163;
    (*(v171 + 104))(v141, enum case for Errors.OperationNotSupported(_:), v163);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v142 + 16))(v144, v141, v143);
    v145 = _convertErrorToNSError(_:)();
    v165[2](v165, 0, v145);

    (*(v142 + 8))(v141, v143);
    sub_1000BAA28(v93);

    goto LABEL_63;
  }

  sub_1000B5150(v42, v17, &unk_1002A6F30, &unk_10023C4D0);
  if ((v32)(v17, 1, v163) == 1)
  {
    sub_100095C84(v17, &unk_1002A6F30, &unk_10023C4D0);
    v70 = 0;
  }

  else
  {
    sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
    swift_dynamicCast();
    v70 = v183;
  }

  v71 = v162;
  v72 = v164;
  v165[2](v165, 0, v70);

  sub_1000BAA28(v71);
LABEL_29:
  v73 = v42;
LABEL_30:
  sub_100095C84(v73, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_10011EB14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, id *a7)
{
  v107 = a5;
  v108 = a4;
  v109 = a3;
  v99 = a2;
  v110 = a1;
  v97 = type metadata accessor for Logger();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v98 = &v94[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100095274(&qword_1002A9318, &qword_10023F0C0);
  v105 = *(v9 - 8);
  v106 = v9;
  __chkstk_darwin(v9);
  v104 = &v94[-v10];
  v11 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v12 = __chkstk_darwin(v11 - 8);
  v102 = &v94[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v103 = &v94[-v15];
  v16 = __chkstk_darwin(v14);
  v101 = &v94[-v17];
  v18 = __chkstk_darwin(v16);
  v111 = &v94[-v19];
  __chkstk_darwin(v18);
  v21 = &v94[-v20];
  v22 = type metadata accessor for Errors();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v100 = &v94[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v27 = &v94[-v26];
  v28 = type metadata accessor for DKAPIUsageType();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v94[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = type metadata accessor for DKXPCClientApplication(0);
  __chkstk_darwin(v32);
  v34 = &v94[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = a7;
  v117 = a7;
  sub_10010D498(v34);
  v35 = v34[2];
  if (v35)
  {
    v114 = v34[1];
    v115 = v35;
  }

  else
  {
    v114 = 0x6E776F6E6B6E75;
    v115 = 0xE700000000000000;
  }

  (*(v29 + 104))(v31, enum case for DKAPIUsageType.setVelocity(_:), v28);

  v113 = DKAPIUsageType.rawValue.getter();
  (*(v29 + 8))(v31, v28);
  sub_1000B5150(v34 + *(v32 + 24), v21, &unk_1002A6F30, &unk_10023C4D0);
  v36 = *(v23 + 48);
  p_cb = &OBJC_PROTOCOL___DKLogging.cb;
  if ((v36)(v21, 1, v22) == 1)
  {
    sub_100095C84(v21, &unk_1002A6F30, &unk_10023C4D0);
    if (!*v34)
    {
      __break(1u);
      goto LABEL_40;
    }

    v21 = *v34;
    v95 = [v21 processIdentifier];
    if (v110 && v109 && v108 && v107)
    {
      v38 = qword_1002A6780;
      v110 = v110;
      if (v38 != -1)
      {
        swift_once();
      }

      v39 = qword_1002B1CF0;
      v40 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__manualControlEnabled;
      swift_beginAccess();
      v42 = v105;
      v41 = v106;
      v43 = v39 + v40;
      v44 = v104;
      (*(v105 + 2))(v104, v43, v106);
      DKThreadSafe.wrappedValue.getter();
      (*(v42 + 1))(v44, v41);
      if (LOBYTE(v118[0]) == 1)
      {
        v45 = v101;
        (*(v23 + 56))(v101, 1, 1, v22);
        sub_10018C604(v114, v115, v113, v45);

        sub_100095C84(v45, &unk_1002A6F30, &unk_10023C4D0);
        (v112[2])(v112, 1, 0);

        v46 = v34;
        return sub_1000BAA28(v46);
      }

      v106 = v39;
      v55 = v103;
      sub_100111DAC(v103, v21);
      v105 = v56;
      v58 = v57;
      v59 = v102;
      sub_1000B5150(v55, v102, &unk_1002A6F30, &unk_10023C4D0);
      if ((v36)(v59, 1, v22) == 1)
      {
        v104 = v58;
        sub_100095C84(v59, &unk_1002A6F30, &unk_10023C4D0);
        v60 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
        v61 = v106;
        v62 = *(v106 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

        os_unfair_lock_lock(v62 + 4);

        v63 = *(v61 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
        v64 = *(v61 + v60);
        v27 = v63;

        os_unfair_lock_unlock(v64 + 4);

        v65 = v110;
        p_cb = (&OBJC_PROTOCOL___DKLogging + 64);
        if (v63)
        {
          sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
          v66 = dispatch thunk of DockCoreAccessory.info.getter();
          v67 = static NSObject.== infix(_:_:)();

          if (v67)
          {
            v68 = sub_1001884E4(v65);
            if (v68)
            {
              v36 = v68;
              type metadata accessor for ActuationController();
              if (dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)())
              {
                v112 = v34;
                v69 = dispatch thunk of DockCoreAccessory.info.getter();
                v34 = sub_100197C80(v69);

                if (!v34 || (v70 = v34[3], v71 = v34[4], , LOBYTE(v70) = sub_10011C140(v105, v104, v70, v71, v21), , (v70 & 1) == 0))
                {
LABEL_38:
                  v93 = v115;

                  sub_10011995C(v65, v95, v105, v104, v99, v109, v108, v107, v114, v93, v113, sub_100137C28, v116);

                  swift_bridgeObjectRelease_n();
                  sub_100095C84(v103, &unk_1002A6F30, &unk_10023C4D0);
                  v46 = v112;
                  return sub_1000BAA28(v46);
                }

                if (qword_1002A66D8 == -1)
                {
LABEL_28:
                  v72 = v97;
                  v73 = sub_100093DE8(v97, qword_1002A9110);
                  v74 = v96;
                  (*(v96 + 16))(v98, v73, v72);
                  v75 = v104;

                  v76 = Logger.logObject.getter();
                  v77 = static os_log_type_t.default.getter();

                  LODWORD(v111) = v77;
                  v78 = v77;
                  v79 = v76;
                  if (os_log_type_enabled(v76, v78))
                  {
                    v80 = v74;
                    v81 = swift_slowAlloc();
                    v118[0] = swift_slowAlloc();
                    *v81 = 136315394;
                    *(v81 + 4) = sub_1000952D4(v105, v75, v118);
                    *(v81 + 12) = 2080;

                    v82 = v21;
                    v84 = v34[3];
                    v83 = v34[4];

                    v85 = sub_1000952D4(v84, v83, v118);

                    *(v81 + 14) = v85;
                    v21 = v82;
                    _os_log_impl(&_mh_execute_header, v79, v111, "Foreground app %s force-removing animator for %s", v81, 0x16u);
                    swift_arrayDestroy();

                    (*(v80 + 8))(v98, v97);
                  }

                  else
                  {

                    (*(v74 + 8))(v98, v72);
                  }

                  v92 = dispatch thunk of DockCoreAccessory.info.getter();
                  sub_100197D90(v92);

                  v65 = v110;
                  goto LABEL_38;
                }

LABEL_40:
                swift_once();
                goto LABEL_28;
              }
            }

            v90 = v65;
            v48 = v34;

            sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
            v49 = swift_allocError();
            *v91 = 0xD000000000000017;
            v91[1] = 0x800000010022FA50;
            (*(v23 + 104))(v91, enum case for Errors.OperationNotSupported(_:), v22);
            swift_willThrow();

            goto LABEL_35;
          }
        }

        v88 = v65;
        v48 = v34;

        sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
        v49 = swift_allocError();
        *v89 = 0xD000000000000016;
        v89[1] = 0x8000000100231A70;
        (*(v23 + 104))(v89, enum case for Errors.OperationNotSupported(_:), v22);
        swift_willThrow();

LABEL_35:
        sub_100095C84(v103, &unk_1002A6F30, &unk_10023C4D0);
        goto LABEL_17;
      }

      v48 = v34;

      v86 = v100;
      (*(v23 + 32))(v100, v59, v22);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      v49 = swift_allocError();
      (*(v23 + 16))(v87, v86, v22);
      swift_willThrow();

      (*(v23 + 8))(v86, v22);
      sub_100095C84(v55, &unk_1002A6F30, &unk_10023C4D0);
      p_cb = (&OBJC_PROTOCOL___DKLogging + 64);
    }

    else
    {
      v48 = v34;
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      v49 = swift_allocError();
      *v51 = 0xD000000000000016;
      v51[1] = 0x8000000100231BD0;
      (*(v23 + 104))(v51, enum case for Errors.NilParams(_:), v22);
      swift_willThrow();
    }
  }

  else
  {
    v48 = v34;
    (*(v23 + 32))(v27, v21, v22);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v49 = swift_allocError();
    (*(v23 + 16))(v50, v27, v22);
    swift_willThrow();
    (*(v23 + 8))(v27, v22);
  }

LABEL_17:
  v52 = _convertErrorToNSError(_:)();
  (v112[2])(v112, 0, v52);

  if (*(p_cb + 240) != -1)
  {
    swift_once();
  }

  v118[0] = v49;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  v53 = v111;
  v54 = swift_dynamicCast();
  (*(v23 + 56))(v53, v54 ^ 1u, 1, v22);
  sub_10018C604(v114, v115, v113, v53);

  sub_1000BAA28(v48);
  return sub_100095C84(v53, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_10011FAA4(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char *a6)
{
  v139 = a4;
  v145 = a3;
  v134 = a2;
  v144 = a1;
  v7 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v7 - 8);
  v137 = &v124 - v8;
  v136 = type metadata accessor for Logger();
  v131 = *(v136 - 8);
  __chkstk_darwin(v136);
  v135 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100095274(&qword_1002A9328, &qword_10023DEC8);
  __chkstk_darwin(v10 - 8);
  v138 = &v124 - v11;
  v140 = type metadata accessor for TrajectoryCommand();
  v142 = *(v140 - 8);
  v12 = __chkstk_darwin(v140);
  v133 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v13;
  __chkstk_darwin(v12);
  v141 = &v124 - v14;
  v148 = type metadata accessor for UUID();
  v143 = *(v148 - 8);
  v15 = __chkstk_darwin(v148);
  v147 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v146 = (&v124 - v17);
  v18 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v149 = &v124 - v23;
  v24 = __chkstk_darwin(v22);
  v150 = (&v124 - v25);
  __chkstk_darwin(v24);
  v27 = &v124 - v26;
  v28 = type metadata accessor for Errors();
  v29 = *(v28 - 8);
  v156 = v28;
  v157 = v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v124 - v33;
  v35 = type metadata accessor for DKAPIUsageType();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DKXPCClientApplication(0);
  __chkstk_darwin(v39);
  v41 = (&v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v153 = swift_allocObject();
  *(v153 + 16) = a6;
  v151 = a6;
  _Block_copy(a6);
  sub_10010D498(v41);
  v42 = v41[2];
  if (v42)
  {
    v154 = v41[1];
    v155 = v42;
  }

  else
  {
    v154 = 0x6E776F6E6B6E75;
    v155 = 0xE700000000000000;
  }

  (*(v36 + 104))(v38, enum case for DKAPIUsageType.setOrientation(_:), v35);

  v152 = DKAPIUsageType.rawValue.getter();
  (*(v36 + 8))(v38, v35);
  sub_1000B5150(v41 + *(v39 + 24), v27, &unk_1002A6F30, &unk_10023C4D0);
  v43 = v156;
  v44 = v157;
  v45 = v157[6];
  v46 = v41;
  if (v45(v27, 1, v156) != 1)
  {
    (v44[4])(v34, v27, v43);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v53 = swift_allocError();
    (v44[2])(v55, v34, v43);
    swift_willThrow();
    (v44[1])(v34, v43);
LABEL_12:
    p_cb = (&OBJC_PROTOCOL___DKLogging + 64);
LABEL_23:
    v70 = _convertErrorToNSError(_:)();
    (*(v151 + 2))(v151, 0, v70);

    if (*(p_cb + 240) != -1)
    {
      swift_once();
    }

    *&v159 = v53;
    swift_errorRetain();
    sub_100095274(&qword_1002A7268, &unk_10023C680);
    v71 = v150;
    v72 = swift_dynamicCast();
    (v44[7])(v71, v72 ^ 1u, 1, v43);
    sub_10018C604(v154, v155, v152, v71);

    sub_100095C84(v71, &unk_1002A6F30, &unk_10023C4D0);
    goto LABEL_26;
  }

  sub_100095C84(v27, &unk_1002A6F30, &unk_10023C4D0);
  v47 = *v41;
  if (!*v41)
  {
    _Block_release(v151);
    __break(1u);
    goto LABEL_59;
  }

  v129 = *v41;
  v48 = v47;
  v130 = [v48 processIdentifier];
  v49 = v149;
  sub_100111DAC(v149, v48);

  sub_1000B5150(v49, v21, &unk_1002A6F30, &unk_10023C4D0);
  if (v45(v21, 1, v43) != 1)
  {
    (v44[4])(v32, v21, v43);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v53 = swift_allocError();
    (v44[2])(v56, v32, v43);
    swift_willThrow();

    (v44[1])(v32, v43);
    sub_100095C84(v49, &unk_1002A6F30, &unk_10023C4D0);
    goto LABEL_12;
  }

  sub_100095C84(v21, &unk_1002A6F30, &unk_10023C4D0);
  p_cb = &OBJC_PROTOCOL___DKLogging.cb;
  v51 = &unk_1002B1000;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v52 = v51[414];
    if (sub_10019C1F4(v130, 0x6A617254646E6573, 0xEE0079726F746365))
    {
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      v53 = swift_allocError();
      *v54 = 0xD000000000000024;
      v54[1] = 0x8000000100231F80;
      (v44[13])(v54, enum case for Errors.RateLimitXPC(_:), v43);
      swift_willThrow();

LABEL_22:
      sub_100095C84(v49, &unk_1002A6F30, &unk_10023C4D0);
      goto LABEL_23;
    }

    v128 = v48;
    if (!v144 || !v145)
    {
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      v53 = swift_allocError();
      *v69 = 0xD000000000000012;
      v69[1] = 0x800000010022F110;
      (v44[13])(v69, enum case for Errors.NotFound(_:), v43);
      swift_willThrow();

      goto LABEL_22;
    }

    v127 = v46;
    v124 = v52;
    v57 = *(v52 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v125 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v58 = *&v57[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v49 = v144;

    v126 = v57;
    v59 = v57;
    v60 = v58;
    OS_dispatch_semaphore.wait()();

    v61 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v144 = v59;
    v48 = *&v59[v61];
    v44 = v48[2];

    if (!v44)
    {
      break;
    }

    v43 = 0;
    v51 = v48 + 4;
    v46 = (v143 + 8);
    while (v43 < v48[2])
    {
      sub_1000A097C(v51, v158);
      v62 = *(*sub_1000A09E0(v158, v158[3]) + 24);
      p_cb = v146;
      DockCoreInfo.identifier.getter();

      v63 = v147;
      v64 = v49;
      DockCoreInfo.identifier.getter();
      LOBYTE(v62) = static UUID.== infix(_:_:)();
      v65 = *v46;
      v66 = v63;
      v67 = v148;
      (*v46)(v66, v148);
      v65(p_cb, v67);
      if (v62)
      {

        v74 = *&v126[v125];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v158, &v159);
        sub_100095808(v158);

        v49 = v64;
        goto LABEL_28;
      }

      v43 = (v43 + 1);
      sub_100095808(v158);
      v51 += 5;
      v49 = v64;
      if (v44 == v43)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_57:
    swift_once();
  }

LABEL_20:

  v68 = *&v126[v125];
  OS_dispatch_semaphore.signal()();

  v161 = 0;
  v159 = 0u;
  v160 = 0u;

LABEL_28:
  v46 = v127;
  v43 = v156;
  v44 = v157;
  v75 = v149;
  p_cb = (&OBJC_PROTOCOL___DKLogging + 64);
  if (!*(&v160 + 1))
  {

    sub_100095C84(&v159, &unk_1002A6F40, &unk_10023BE90);
LABEL_37:
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v53 = swift_allocError();
    *v83 = 0xD00000000000001ALL;
    v83[1] = 0x800000010022F130;
    (v44[13])(v83, enum case for Errors.NotFound(_:), v43);
    swift_willThrow();

LABEL_38:
    goto LABEL_39;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:

    goto LABEL_37;
  }

  v76 = v158[0];
  if (*(v158[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) != 2)
  {

    goto LABEL_36;
  }

  v77 = sub_1001884E4(v49);
  if (!v77)
  {

    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v53 = swift_allocError();
    *v84 = 0xD000000000000013;
    v84[1] = 0x8000000100231F30;
    (v44[13])(v84, enum case for Errors.NotFound(_:), v43);
    swift_willThrow();

    goto LABEL_38;
  }

  v78 = v77;
  v148 = v76;
  v79 = v139;
  v80 = v138;
  TrajectoryCommand.init(nsdata:)();
  v81 = v142;
  v41 = v140;
  if ((*(v142 + 48))(v80, 1, v140) == 1)
  {

    sub_100095C84(v80, &qword_1002A9328, &qword_10023DEC8);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v53 = swift_allocError();
    *v82 = 0xD000000000000020;
    v82[1] = 0x8000000100231F50;
    (v44[13])(v82, enum case for Errors.TrajectoryError(_:), v43);
    swift_willThrow();

LABEL_39:
    sub_100095C84(v75, &unk_1002A6F30, &unk_10023C4D0);
    goto LABEL_23;
  }

  v146 = v49;
  v85 = v81 + 32;
  v144 = *(v81 + 32);
  (v144)(v141, v80, v41);
  v147 = v78;
  v86 = dispatch thunk of DockCoreAccessory.info.getter();
  v21 = sub_100197C80(v86);

  v34 = v155;
  v87 = v128;
  if (!v21)
  {
    goto LABEL_49;
  }

  v88 = *(v21 + 3);
  v89 = *(v21 + 4);

  LOBYTE(v88) = sub_10011C140(v154, v34, v88, v89, v87);

  if (v88)
  {
    v143 = v85;
    if (qword_1002A66D8 == -1)
    {
LABEL_44:
      v90 = v136;
      v91 = sub_100093DE8(v136, qword_1002A9110);
      v92 = v131;
      (*(v131 + 16))(v135, v91, v90);

      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *&v159 = swift_slowAlloc();
        *v95 = 136315394;
        *(v95 + 4) = sub_1000952D4(v154, v34, &v159);
        *(v95 + 12) = 2080;

        v96 = *(v21 + 3);
        v97 = *(v21 + 4);

        v98 = sub_1000952D4(v96, v97, &v159);
        v41 = v140;

        *(v95 + 14) = v98;
        _os_log_impl(&_mh_execute_header, v93, v94, "Foreground app %s force-removing animator for %s", v95, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v92 + 8))(v135, v136);
      v87 = v128;
      v99 = dispatch thunk of DockCoreAccessory.info.getter();
      sub_100197D90(v99);

      v85 = v143;
      goto LABEL_48;
    }

LABEL_59:
    swift_once();
    goto LABEL_44;
  }

LABEL_48:
  if (*(v21 + 4) != v130)
  {

    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v122 = v41;
    v53 = swift_allocError();
    *v123 = 0xD000000000000021;
    v123[1] = 0x8000000100231AD0;
    v44 = v157;
    (v157[13])(v123, enum case for Errors.UnexpectedError(_:), v43);
    swift_willThrow();

    (*(v142 + 8))(v141, v122);
    goto LABEL_55;
  }

LABEL_49:
  v100 = v87;
  v101 = sub_1001A1FB4(v130, v129);

  if ((v101 & 1) == 0)
  {

    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v120 = v41;
    v53 = swift_allocError();
    *v121 = 0xD00000000000001CLL;
    v121[1] = 0x8000000100231D20;
    v44 = v157;
    (v157[13])(v121, enum case for Errors.UnexpectedError(_:), v43);
    swift_willThrow();

    (*(v142 + 8))(v141, v120);
LABEL_55:
    sub_100095C84(v149, &unk_1002A6F30, &unk_10023C4D0);
    goto LABEL_12;
  }

  v157 = v100;
  v143 = v85;
  sub_100198B58(v102, v103);
  if (v21)
  {

    sub_1000C69A0();
  }

  v104 = type metadata accessor for TaskPriority();
  (*(*(v104 - 8) + 56))(v137, 1, 1, v104);
  v105 = v142;
  v106 = v133;
  (*(v142 + 16))(v133, v141, v41);
  v107 = (*(v105 + 80) + 40) & ~*(v105 + 80);
  v108 = (v132 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
  v151 = ((v108 + 23) & 0xFFFFFFFFFFFFFFF8);
  v109 = (v108 + 47) & 0xFFFFFFFFFFFFFFF8;
  v110 = swift_allocObject();
  *(v110 + 16) = 0;
  *(v110 + 24) = 0;
  v156 = v21;
  *(v110 + 32) = v148;
  (v144)(v110 + v107, v106, v41);
  v111 = (v110 + v108);
  v113 = v153;
  v112 = v154;
  *v111 = sub_100137D58;
  v111[1] = v113;
  v114 = &v151[v110];
  v115 = v155;
  *v114 = v112;
  *(v114 + 1) = v115;
  v114[16] = v152;
  v116 = v146;
  *(v110 + v109) = v146;
  v117 = (v110 + ((v109 + 15) & 0xFFFFFFFFFFFFFFF8));
  v118 = v145;
  *v117 = v134;
  v117[1] = v118;
  v119 = v116;

  sub_1001B6410(0, 0, v137, &unk_10023DED8, v110);

  (*(v105 + 8))(v141, v41);
  sub_100095C84(v149, &unk_1002A6F30, &unk_10023C4D0);
LABEL_26:
  sub_1000BAA28(v46);
}

uint64_t sub_100121310(void *a1, uint64_t a2, uint64_t a3, void (**a4)(const void *, void, void *))
{
  v114 = a2;
  v119 = a1;
  v5 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v5 - 8);
  v113 = &v109 - v6;
  v123 = type metadata accessor for UUID();
  v115 = *(v123 - 8);
  v7 = __chkstk_darwin(v123);
  v122 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v109 - v9;
  v11 = type metadata accessor for Logger();
  v120 = *(v11 - 8);
  v121 = v11;
  v12 = __chkstk_darwin(v11);
  v117 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v116 = &v109 - v15;
  __chkstk_darwin(v14);
  v124 = &v109 - v16;
  v17 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v17 - 8);
  v19 = &v109 - v18;
  v20 = type metadata accessor for Errors();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v118 = (&v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v25 = &v109 - v24;
  v26 = type metadata accessor for DKXPCClientApplication(0);
  v27 = v26 - 8;
  __chkstk_darwin(v26);
  v29 = (&v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = swift_allocObject();
  *(v30 + 16) = a4;
  _Block_copy(a4);
  sub_10010D498(v29);
  v31 = *(v27 + 32);
  v32 = v29;
  sub_1000B5150(v29 + v31, v19, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v109 = v21;
    v110 = v29;
    v111 = a4;
    v112 = v30;
    sub_100095C84(v19, &unk_1002A6F30, &unk_10023C4D0);
    if (qword_1002A6780 != -1)
    {
      goto LABEL_43;
    }

    while (1)
    {
      v33 = qword_1002B1CF0;
      v34 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v35 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v35 + 4);

      v36 = *(v33 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
      v37 = *(v33 + v34);
      v38 = v36;

      os_unfair_lock_unlock(v37 + 4);

      v40 = v122;
      v39 = v123;
      if (!v36)
      {
        break;
      }

      v124 = dispatch thunk of DockCoreAccessory.info.getter();

      v41 = v119;
      if (v119)
      {
        type metadata accessor for DockCoreInfo();
        v42 = v41;
        if ((static NSObject.== infix(_:_:)() & 1) == 0)
        {
          if (qword_1002A66D8 != -1)
          {
            swift_once();
          }

          v69 = v121;
          v70 = sub_100093DE8(v121, qword_1002A9110);
          v71 = v120;
          (*(v120 + 16))(v116, v70, v69);
          v72 = v42;
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.error.getter();

          v75 = os_log_type_enabled(v73, v74);
          v76 = v109;
          if (v75)
          {
            v77 = v41;
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            *v78 = 138412290;
            *(v78 + 4) = v72;
            *v79 = v77;
            v80 = v72;
            _os_log_impl(&_mh_execute_header, v73, v74, "%@ is not connected", v78, 0xCu);
            sub_100095C84(v79, &unk_1002A6F60, &unk_10023C4E0);
          }

          (*(v71 + 8))(v116, v69);
          *&v126 = 0;
          *(&v126 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(19);
          v81 = [v72 description];
          v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v84 = v83;

          *&v126 = v82;
          *(&v126 + 1) = v84;
          v85._object = 0x800000010022F1F0;
          v85._countAndFlagsBits = 0xD000000000000011;
          String.append(_:)(v85);
          v86 = *(&v126 + 1);
          v87 = v118;
          *v118 = v126;
          v87[1] = v86;
          (*(v76 + 104))(v87, enum case for Errors.AccessoryNotReachable(_:), v20);
          sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
          swift_allocError();
          (*(v76 + 16))(v88, v87, v20);
          v89 = _convertErrorToNSError(_:)();
          v111[2](v111, 0, v89);

          (*(v76 + 8))(v87, v20);
          sub_1000BAA28(v110);
        }
      }

      v43 = *(v33 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      v116 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v44 = *(v43 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
      v118 = v43;
      v45 = v43;
      v46 = v44;
      OS_dispatch_semaphore.wait()();

      v47 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v119 = v45;
      v48 = *&v45[v47];
      v20 = *(v48 + 16);

      if (!v20)
      {
LABEL_12:

        v54 = *&v116[v118];
        OS_dispatch_semaphore.signal()();

        v128 = 0;
        v126 = 0u;
        v127 = 0u;
LABEL_25:

        v91 = v112;
        v92 = v111;
        v94 = v120;
        v93 = v121;
        v95 = v117;
        if (*(&v127 + 1))
        {
          sub_100095274(&unk_1002A7A90, &unk_10023C960);
          type metadata accessor for DaemonAccessory(0);
          if (swift_dynamicCast())
          {
            v96 = v125[0];
            if (*(v125[0] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_paired) == 2 && (v97 = *(v125[0] + 16)) != 0 && (v98 = *&v97[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral]) != 0)
            {
              v99 = v97;
              if ([v98 state] == 2)
              {
                sub_1000A470C();
                v100 = type metadata accessor for TaskPriority();
                v101 = v113;
                (*(*(v100 - 8) + 56))(v113, 1, 1, v100);
                v102 = swift_allocObject();
                v102[2] = 0;
                v102[3] = 0;
                v102[4] = v96;
                v102[5] = sub_1001377AC;
                v103 = v114;
                v102[6] = v91;
                v102[7] = v103;

                sub_1001B6410(0, 0, v101, &unk_10023DEC0, v102);

LABEL_39:

                sub_1000BAA28(v110);
              }
            }

            else
            {
            }
          }
        }

        else
        {
          sub_100095C84(&v126, &unk_1002A6F40, &unk_10023BE90);
        }

        if (qword_1002A66D8 != -1)
        {
          swift_once();
        }

        v104 = sub_100093DE8(v93, qword_1002A9110);
        (*(v94 + 16))(v95, v104, v93);
        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          _os_log_impl(&_mh_execute_header, v105, v106, "accessory does not exist and/or is not paired ", v107, 2u);
        }

        (*(v94 + 8))(v95, v93);
        v92[2](v92, 0, 0);
        goto LABEL_39;
      }

      v49 = 0;
      v50 = v48 + 32;
      v51 = (v115 + 8);
      while (v49 < *(v48 + 16))
      {
        sub_1000A097C(v50, v125);
        v52 = *(*sub_1000A09E0(v125, v125[3]) + 24);
        DockCoreInfo.identifier.getter();

        DockCoreInfo.identifier.getter();
        LOBYTE(v52) = static UUID.== infix(_:_:)();
        v53 = *v51;
        (*v51)(v40, v39);
        v53(v10, v39);
        if (v52)
        {

          v90 = *&v116[v118];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v125, &v126);
          sub_100095808(v125);
          goto LABEL_25;
        }

        ++v49;
        sub_100095808(v125);
        v50 += 40;
        if (v20 == v49)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_43:
      swift_once();
    }

    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v57 = v121;
    v58 = sub_100093DE8(v121, qword_1002A9110);
    v59 = v120;
    v60 = v124;
    (*(v120 + 16))(v124, v58, v57);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    v63 = os_log_type_enabled(v61, v62);
    v64 = v109;
    if (v63)
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "No accessory connected. Cannot initiate accessory diagnostics", v65, 2u);
    }

    (*(v59 + 8))(v60, v57);
    v66 = v118;
    *v118 = 0xD000000000000016;
    v66[1] = 0x800000010022F1A0;
    (*(v64 + 104))(v66, enum case for Errors.AccessoryNotReachable(_:), v20);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v64 + 16))(v67, v66, v20);
    v68 = _convertErrorToNSError(_:)();
    v111[2](v111, 0, v68);

    (*(v64 + 8))(v66, v20);
    sub_1000BAA28(v110);
  }

  else
  {
    (*(v21 + 32))(v25, v19, v20);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v21 + 16))(v55, v25, v20);
    v56 = _convertErrorToNSError(_:)();
    a4[2](a4, 0, v56);

    (*(v21 + 8))(v25, v20);
    sub_1000BAA28(v32);
  }
}

uint64_t sub_100122244(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v118 = a5;
  v122 = a2;
  v123 = a4;
  v124 = a1;
  v125 = a3;
  v8 = type metadata accessor for Logger();
  v120 = *(v8 - 8);
  v121 = v8;
  v9 = __chkstk_darwin(v8);
  v117 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v119 = &v103 - v11;
  v12 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v103 - v13;
  v15 = type metadata accessor for Errors();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = (&v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v21 = &v103 - v20;
  v22 = type metadata accessor for DKXPCClientApplication(0);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = (&v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v25);
  sub_1000B5150(v25 + *(v23 + 32), v14, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    (*(v16 + 32))(v21, v14, v15);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v16 + 16))(v57, v21, v15);
    v58 = _convertErrorToNSError(_:)();
    (*(a7 + 16))(a7, 0, v58);

    (*(v16 + 8))(v21, v15);
LABEL_19:
    v62 = v25;
LABEL_20:
    sub_1000BAA28(v62);
  }

  v116 = a7;
  sub_100095C84(v14, &unk_1002A6F30, &unk_10023C4D0);
  v26 = *v25;
  if (!*v25)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v27 = v26;
  v28 = [v27 processIdentifier];
  v29 = v124;
  if (!v124 || !v125 || !v123)
  {
    *v19 = 0xD000000000000016;
    v19[1] = 0x8000000100231BD0;
    (*(v16 + 104))(v19, enum case for Errors.NilParams(_:), v15);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v16 + 16))(v59, v19, v15);
    v60 = _convertErrorToNSError(_:)();
    (*(v116 + 16))(v116, 0, v60);

LABEL_18:
    (*(v16 + 8))(v19, v15);
    goto LABEL_19;
  }

  v115 = v27;
  v114 = v28;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v113 = qword_1002B1CF0;
  v30 = sub_1001884E4(v29);
  if (!v30 || (type metadata accessor for SensorController(), v31 = v30, v32 = dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)(), v31, (v32 & 1) == 0) || (v33 = v31, v34 = dispatch thunk of DockCoreAccessory.hasSystemSensors(name:sensors:)(), v33, (v34 & 1) == 0))
  {
    *v19 = 0xD000000000000011;
    v19[1] = 0x8000000100231EE0;
    (*(v16 + 104))(v19, enum case for Errors.NotFound(_:), v15);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v16 + 16))(v61, v19, v15);
    v60 = _convertErrorToNSError(_:)();
    (*(v116 + 16))(v116, 0, v60);

    goto LABEL_18;
  }

  v112 = v33;
  v110 = v25;
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v35 = v121;
  v36 = sub_100093DE8(v121, qword_1002A9110);
  v37 = *(v120 + 16);
  v108 = v36;
  v109 = v120 + 16;
  v107 = v37;
  (v37)(v119);
  v38 = v124;
  v39 = v125;

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  v111 = v38;

  v106 = v41;
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v104 = v40;
    v43 = v42;
    v44 = swift_slowAlloc();
    v103 = v44;
    v105 = swift_slowAlloc();
    v128[0] = v105;
    *v43 = 67110146;
    v45 = v114;
    *(v43 + 4) = v114;
    *(v43 + 8) = 2112;
    v46 = v111;
    *(v43 + 10) = v111;
    *v44 = v124;
    *(v43 + 18) = 2080;
    v47 = v46;
    *(v43 + 20) = sub_1000952D4(v122, v39, v128);
    *(v43 + 28) = 2080;
    v48 = Array.description.getter();
    v50 = sub_1000952D4(v48, v49, v128);

    *(v43 + 30) = v50;
    *(v43 + 38) = 2080;
    v51 = SensorOccurrence.description.getter();
    v53 = sub_1000952D4(v51, v52, v128);
    v54 = v45;

    *(v43 + 40) = v53;
    v55 = v104;
    _os_log_impl(&_mh_execute_header, v104, v106, "Client %d registering for sensor data %@ %s %s occurrence:%s", v43, 0x30u);
    sub_100095C84(v103, &unk_1002A6F60, &unk_10023C4E0);

    swift_arrayDestroy();

    v56 = *(v120 + 8);
    v56(v119, v121);
  }

  else
  {

    v56 = *(v120 + 8);
    v56(v119, v35);
    v54 = v114;
  }

  v64 = v115;
  v65 = v112;
  v66 = v26;
  v67 = v113;
  v68 = sub_1001A1FC8(v54, v66);

  if ((v68 & 1) == 0)
  {
    v91 = v117;
    v107(v117, v108, v121);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "Failed adding client to client list", v94, 2u);
      v91 = v117;
    }

    v56(v91, v121);
    *v19 = 0xD00000000000001CLL;
    v19[1] = 0x8000000100231D20;
    (*(v16 + 104))(v19, enum case for Errors.UnexpectedError(_:), v15);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v16 + 16))(v95, v19, v15);
    v96 = _convertErrorToNSError(_:)();
    (*(v116 + 16))(v116, 0, v96);

    (*(v16 + 8))(v19, v15);
    v62 = v110;
    goto LABEL_20;
  }

  v69 = DockCoreInfo.description.getter();
  v71 = v70;
  v72 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v73 = *(v67 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v73 + 4);

  v74 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClientsRules;
  swift_beginAccess();
  v75 = v114;
  if (!*(*(v67 + v74) + 16) || (sub_10016D548(v114), (v76 & 1) == 0))
  {
    v77 = sub_1001F351C(_swiftEmptyArrayStorage);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v127 = *(v67 + v74);
    *(v67 + v74) = 0x8000000000000000;
    sub_1001EC8E8(v77, v75, isUniquelyReferenced_nonNull_native);
    *(v67 + v74) = v127;
    swift_endAccess();
  }

  swift_beginAccess();

  v79 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v75;
  v81 = v79;
  v127 = *(v67 + v74);
  v82 = v127;
  *(v67 + v74) = 0x8000000000000000;
  v84 = sub_10016D548(v80);
  v85 = *(v82 + 16);
  v86 = (v83 & 1) == 0;
  v87 = v85 + v86;
  if (__OFADD__(v85, v86))
  {
    __break(1u);
    goto LABEL_41;
  }

  LOBYTE(v67) = v83;
  if (*(v82 + 24) >= v87)
  {
    if (v81)
    {
      v90 = v125;
      if (v83)
      {
        goto LABEL_36;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_41:
    sub_1001EF7F8();
    v90 = v125;
    if (v67)
    {
      goto LABEL_36;
    }

    goto LABEL_42;
  }

  sub_1001E8624(v87, v81);
  v88 = sub_10016D548(v114);
  if ((v67 & 1) != (v89 & 1))
  {
LABEL_44:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v84 = v88;
  v90 = v125;
  if ((v67 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_36:
  v97 = v127;
  v98 = *(*(v127 + 56) + 8 * v84);
  v99 = swift_isUniquelyReferenced_nonNull_native();
  v126 = v98;
  sub_1001EC8B4(v122, v90, v123, v118, v69, v71, v99);

  if (v126)
  {
    *(*(v97 + 56) + 8 * v84) = v126;
  }

  else
  {
    sub_1001F7A38(v84, v97);
  }

  v100 = v116;
  v101 = v113;
  *(v113 + v74) = v97;
  swift_endAccess();
  v102 = *(v101 + v72);

  os_unfair_lock_unlock(v102 + 4);

  (*(v100 + 16))(v100, 1, 0);

  return sub_1000BAA28(v110);
}

uint64_t sub_100122FA4(uint64_t a1, uint64_t a2, uint64_t a3, id *a4, uint64_t a5, uint64_t a6)
{
  v75 = a1;
  v76 = a4;
  v73 = a3;
  v70 = a2;
  v74 = type metadata accessor for Logger();
  v72 = *(v74 - 8);
  v7 = __chkstk_darwin(v74);
  v68 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v69 = &v60 - v10;
  __chkstk_darwin(v9);
  v12 = &v60 - v11;
  v13 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v60 - v14;
  v16 = type metadata accessor for Errors();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v71 = (&v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v21 = &v60 - v20;
  v22 = type metadata accessor for DKXPCClientApplication(0);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = (&v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v25);
  sub_1000B5150(v25 + *(v23 + 32), v15, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v21, v15, v16);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v17 + 16))(v43, v21, v16);
    v44 = _convertErrorToNSError(_:)();
    v45 = a6;
    v46 = v44;
    (*(v45 + 16))(v45, 0, v44);

    (*(v17 + 8))(v21, v16);
    sub_1000BAA28(v25);
  }

  result = sub_100095C84(v15, &unk_1002A6F30, &unk_10023C4D0);
  v27 = *v25;
  if (*v25)
  {
    v28 = v27;
    v29 = [v28 processIdentifier];
    v30 = v74;
    v31 = v72;
    if (v75 && v73 && v76)
    {
      v67 = v29;
      v62 = v27;
      v66 = v28;
      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v32 = sub_100093DE8(v30, qword_1002A9110);
      v33 = *(v31 + 16);
      v64 = v32;
      v65 = v31 + 16;
      v63 = v33;
      (v33)(v12);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v77 = v61;
        *v36 = 67109378;
        *(v36 + 4) = v67;
        *(v36 + 8) = 2080;
        v37 = Array.description.getter();
        v39 = a6;
        v40 = sub_1000952D4(v37, v38, &v77);
        v30 = v74;

        *(v36 + 10) = v40;
        a6 = v39;
        _os_log_impl(&_mh_execute_header, v34, v35, "Client %d stopping sensor events for %s", v36, 0x12u);
        sub_100095808(v61);

        v31 = v72;
      }

      v41 = *(v31 + 8);
      v41(v12, v30);
      v42 = v70;
      if (qword_1002A6780 != -1)
      {
        v59 = v70;
        swift_once();
        v42 = v59;
      }

      if (sub_100194A68(v67, v75, v42, v73, v76))
      {

LABEL_21:
        (*(a6 + 16))(a6, 1, 0);

        return sub_1000BAA28(v25);
      }

      v63(v69, v64, v30);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 67109120;
        *(v53 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v51, v52, "Client %d stopping sensor events", v53, 8u);
        v30 = v74;
      }

      v41(v69, v30);
      v28 = v66;
      v54 = v30;
      v55 = sub_10019506C(v67, v62);

      if (v55)
      {
        goto LABEL_21;
      }

      v63(v68, v64, v54);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Failed removing client from list", v58, 2u);
      }

      v41(v68, v74);
      v47 = v71;
      *v71 = 0xD000000000000020;
      v47[1] = 0x8000000100231BF0;
      v48 = &enum case for Errors.UnexpectedError(_:);
    }

    else
    {
      v47 = v71;
      *v71 = 0xD000000000000016;
      v47[1] = 0x8000000100231BD0;
      v48 = &enum case for Errors.NilParams(_:);
    }

    (*(v17 + 104))(v47, *v48, v16);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v17 + 16))(v49, v47, v16);
    v50 = _convertErrorToNSError(_:)();
    (*(a6 + 16))(a6, 0, v50);

    (*(v17 + 8))(v47, v16);
    sub_1000BAA28(v25);
  }

  __break(1u);
  return result;
}

uint64_t sub_100123854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v100 = a5;
  v107 = a2;
  v108 = a3;
  v111 = a1;
  v101 = type metadata accessor for Logger();
  v6 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
LABEL_48:
    swift_once();
  }

  v8 = qword_1002B1CF0;
  sub_1001F1DC8(_swiftEmptyArrayStorage);

  v9 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v10 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v10 + 4);

  v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClientsRules;
  swift_beginAccess();
  v12 = *(v8 + v11);
  v13 = *(v8 + v9);

  os_unfair_lock_unlock(v13 + 4);

  sub_1001F1BBC(_swiftEmptyArrayStorage);

  v14 = *(v8 + v9);

  os_unfair_lock_lock(v14 + 4);

  v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClients;
  swift_beginAccess();
  v16 = *(v8 + v15);
  v103 = v8;
  v17 = *(v8 + v9);
  v18 = v16;

  os_unfair_lock_unlock(v17 + 4);

  v20 = 0;
  v21 = 0;
  v22 = v18 + 64;
  v23 = 1 << *(v18 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v18 + 64);
  v102 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
  v99 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn;
  v26 = (v23 + 63) >> 6;
  v96 = (v6 + 16);
  v97 = (v6 + 8);
  v106 = a4;
  v105 = (a4 + 40);
  *&v19 = 136315650;
  v95 = v19;
  a4 = v111;
  v112 = v18;
LABEL_5:
  while (v25)
  {
    v27 = v25;
LABEL_11:
    v25 = (v27 - 1) & v27;
    if (*(v12 + 2))
    {
      v29 = __clz(__rbit64(v27)) | (v20 << 6);
      v30 = *(*(v18 + 56) + 8 * v29);
      v114 = *(*(v18 + 48) + 4 * v29);
      v6 = v12;
      v31 = sub_10016D548(v114);
      if (v32)
      {
        v33 = *(*(v12 + 7) + 8 * v31);
        v113 = v30;

        v34 = DockCoreInfo.description.getter();
        v6 = v35;
        if (!*(v33 + 2))
        {

          goto LABEL_28;
        }

        v36 = v34;
        v109 = v21;
        v37 = v25;
        v38 = a4;

        v39 = v6;
        v40 = v6;
        v6 = v33;
        sub_10016D4D0(v36, v39);
        if (v41)
        {
          v104 = v40;

          if (!*(v33 + 2) || (v6 = v33, v42 = sub_10016D4D0(v36, v104), (v43 & 1) == 0))
          {

            v18 = v112;
            a4 = v38;
            goto LABEL_30;
          }

          v44 = (*(v33 + 7) + 32 * v42);
          v45 = *v44;
          v46 = v44[1];
          v6 = v44[2];
          v47 = v44[3];

          v48 = v45 == v107 && v46 == v108;
          if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v92 = v47;
            v91 = v45;
            v93 = v12;
            v49 = v6;
            v50 = *(v106 + 16);
            v94 = v46;

            v110 = v49;

            v52 = v50 + 1;
            v53 = v105;
            v25 = v37;
            v21 = v109;
            while (--v52)
            {
              v54 = v53 + 2;
              v6 = *v53;
              v116[0] = *(v53 - 1);
              v116[1] = v6;
              __chkstk_darwin(v51);
              *(&v89 - 2) = v116;

              v55 = sub_10019EE0C(sub_100137D14, (&v89 - 4), v110);

              v53 = v54;
              if ((v55 & 1) == 0)
              {

                swift_bridgeObjectRelease_n();
                swift_bridgeObjectRelease_n();
                a4 = v111;
LABEL_42:
                v12 = v93;
                v18 = v112;
                goto LABEL_5;
              }
            }

            v56 = v113;
            v6 = [v56 remoteObjectProxy];
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_100095274(&qword_1002A9320, &qword_10023DEB0);
            v57 = swift_dynamicCast();
            a4 = v111;
            v18 = v112;
            if (v57)
            {
              v113 = v56;
              v58 = v115;
              v59 = v103;
              v60 = *(v103 + v102);

              os_unfair_lock_lock(v60 + 4);

              if (*(v59 + v99))
              {

                sub_100105E6C();
              }

              v61 = *(v103 + v102);

              os_unfair_lock_unlock(v61 + 4);

              swift_unknownObjectRetain();
              v62 = String._bridgeToObjectiveC()();
              isa = Array._bridgeToObjectiveC()().super.isa;
              type metadata accessor for SensorData();
              v64 = Array._bridgeToObjectiveC()().super.isa;
              [v58 sensorDataWithInfo:a4 system:v62 sensors:isa data:v64];

              swift_unknownObjectRelease();

              v6 = SensorOccurrence.rawValue.getter();
              if (v6 != SensorOccurrence.rawValue.getter())
              {

                v86 = v113;

                swift_unknownObjectRelease();
                goto LABEL_42;
              }

              v109 = v58;
              v65 = v101;
              v66 = v98;
              if (qword_1002A66D8 != -1)
              {
                swift_once();
              }

              v67 = sub_100093DE8(v65, qword_1002A9110);
              (*v96)(v66, v67, v65);
              v68 = v94;

              v69 = Logger.logObject.getter();
              v70 = static os_log_type_t.default.getter();
              v104 = v69;
              v71 = os_log_type_enabled(v69, v70);
              v72 = v91;
              if (v71)
              {
                v73 = swift_slowAlloc();
                v90 = v70;
                v74 = v73;
                v92 = swift_slowAlloc();
                v116[0] = v92;
                *v74 = v95;

                v75 = sub_1000952D4(v72, v68, v116);

                v89 = v74;
                *(v74 + 4) = v75;
                *(v74 + 12) = 2080;

                swift_bridgeObjectRelease_n();

                v76 = Array.description.getter();
                v78 = v77;

                v79 = sub_1000952D4(v76, v78, v116);

                v80 = v89;
                *(v89 + 14) = v79;
                *(v80 + 22) = 2080;
                v81 = Array.description.getter();
                v83 = sub_1000952D4(v81, v82, v116);

                *(v80 + 24) = v83;
                v84 = v106;
                v85 = v104;
                _os_log_impl(&_mh_execute_header, v104, v90, "Client rule (%s, %s) notified once, removing sensors %s from notification rule", v80, 0x20u);
                swift_arrayDestroy();

                (*v97)(v98, v101);
              }

              else
              {

                v84 = v106;

                swift_bridgeObjectRelease_n();
                swift_bridgeObjectRelease_n();
                (*v97)(v66, v101);
              }

              v18 = v112;
              v6 = sub_100194A68(v114, a4, v107, v108, v84);
              v87 = v113;

              swift_unknownObjectRelease();
            }

            else
            {
            }

            v12 = v93;
          }

          else
          {

            a4 = v111;
            v18 = v112;
LABEL_30:
            v25 = v37;
            v21 = v109;
          }
        }

        else
        {

          a4 = v38;
          v25 = v37;
          v21 = v109;
LABEL_28:

          v18 = v112;
        }
      }
    }
  }

  while (1)
  {
    v28 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v28 >= v26)
    {
      break;
    }

    v27 = *(v22 + 8 * v28);
    ++v20;
    if (v27)
    {
      v20 = v28;
      goto LABEL_11;
    }
  }
}

uint64_t sub_100124320(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v138 = a4;
  v139 = a7;
  v136 = a1;
  v137 = a5;
  v134 = a2;
  v135 = a3;
  v7 = sub_100095274(&qword_1002A9318, &qword_10023F0C0);
  v126 = *(v7 - 8);
  __chkstk_darwin(v7);
  v131 = v119 - v8;
  v9 = type metadata accessor for Logger();
  v132 = *(v9 - 8);
  v133 = v9;
  v10 = __chkstk_darwin(v9);
  v130 = v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v127 = v119 - v13;
  v14 = __chkstk_darwin(v12);
  v128 = v119 - v15;
  __chkstk_darwin(v14);
  v17 = v119 - v16;
  v18 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v18 - 8);
  v20 = v119 - v19;
  v21 = type metadata accessor for Errors();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = (v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v27 = v119 - v26;
  v28 = type metadata accessor for DKXPCClientApplication(0);
  __chkstk_darwin(v28);
  v30 = (v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v30);
  v31 = v30[2];
  if (v31)
  {
    v129 = v30[1];
    v140 = v31;
  }

  else
  {
    v140 = 0xE700000000000000;
    v129 = 0x6E776F6E6B6E75;
  }

  sub_1000B5150(v30 + *(v28 + 24), v20, &unk_1002A6F30, &unk_10023C4D0);
  v32 = (*(v22 + 6))(v20, 1, v21);

  if (v32 != 1)
  {

    (*(v22 + 4))(v27, v20, v21);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v22 + 2))(v52, v27, v21);
    v53 = _convertErrorToNSError(_:)();
    (*(v139 + 16))(v139, 0, v53);

    (*(v22 + 1))(v27, v21);
LABEL_25:
    sub_1000BAA28(v30);
  }

  result = sub_100095C84(v20, &unk_1002A6F30, &unk_10023C4D0);
  if (!*v30)
  {
    __break(1u);
    return result;
  }

  v34 = *v30;
  v35 = [v34 processIdentifier];
  v36 = v136;
  if (!v136 || !v135 || !v138 || !v137)
  {

    v25->isa = 0xD000000000000016;
    v25[1].isa = 0x8000000100231BD0;
    (*(v22 + 13))(v25, enum case for Errors.NilParams(_:), v21);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v22 + 2))(v54, v25, v21);
    v55 = _convertErrorToNSError(_:)();
    (*(v139 + 16))(v139, 0, v55);

LABEL_24:
    (*(v22 + 1))(v25, v21);
    goto LABEL_25;
  }

  if (qword_1002A6780 != -1)
  {
    v117 = v35;
    v118 = v136;
    swift_once();
    v36 = v118;
    v35 = v117;
  }

  v37 = qword_1002B1CF0;
  v38 = sub_1001884E4(v36);
  if (!v38)
  {
    v40 = 0;
LABEL_23:

    v25->isa = 0xD000000000000011;
    v25[1].isa = 0x8000000100231EE0;
    (*(v22 + 13))(v25, enum case for Errors.NotFound(_:), v21);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v22 + 2))(v56, v25, v21);
    v57 = _convertErrorToNSError(_:)();
    (*(v139 + 16))(v139, 0, v57);

    goto LABEL_24;
  }

  LODWORD(v124) = v35;
  v125 = v37;
  v123 = v7;
  v39 = v38;
  type metadata accessor for SensorController();
  v122 = v39;
  v40 = v39;
  v41 = dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)();

  if ((v41 & 1) == 0)
  {
    goto LABEL_23;
  }

  v40 = v40;
  v42 = dispatch thunk of DockCoreAccessory.hasSystemSensors(name:sensors:)();

  if ((v42 & 1) == 0)
  {
    goto LABEL_23;
  }

  v120 = v40;
  v43 = v34;
  if (sub_10019C1F4(v124, 0x6F736E6553746573, 0xEF73657461745372))
  {

    v44 = v132;
    v45 = v133;
    if (qword_1002A66D8 == -1)
    {
LABEL_17:
      v46 = sub_100093DE8(v45, qword_1002A9110);
      (*(v44 + 16))(v17, v46, v45);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "Rate limit exceeded for setSensorStates", v49, 2u);
        v44 = v132;
      }

      (*(v44 + 8))(v17, v45);
      v25->isa = 0xD000000000000025;
      v25[1].isa = 0x8000000100231F00;
      (*(v22 + 13))(v25, enum case for Errors.RateLimitXPC(_:), v21);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      (*(v22 + 2))(v50, v25, v21);
      v51 = _convertErrorToNSError(_:)();
      (*(v139 + 16))(v139, 0, v51);

LABEL_75:
      goto LABEL_24;
    }

LABEL_79:
    swift_once();
    goto LABEL_17;
  }

  v58 = sub_100197C80(v136);
  v59 = v58;
  v121 = v34;
  v60 = v132;
  v61 = v133;
  if (v58)
  {
    v62 = *(v58 + 24);
    v63 = *(v58 + 32);

    LOBYTE(v62) = sub_10011C140(v129, v140, v62, v63, v43);

    if (v62)
    {
      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v64 = sub_100093DE8(v61, qword_1002A9110);
      (*(v60 + 16))(v128, v64, v61);
      v65 = v140;

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = v59;
        v69 = swift_slowAlloc();
        v119[0] = swift_slowAlloc();
        v142[0] = v119[0];
        *v69 = 136315394;
        *(v69 + 4) = sub_1000952D4(v129, v65, v142);
        *(v69 + 12) = 2080;

        v70 = *(v68 + 24);
        v71 = *(v68 + 32);

        v72 = sub_1000952D4(v70, v71, v142);
        v43 = v121;

        *(v69 + 14) = v72;
        _os_log_impl(&_mh_execute_header, v66, v67, "Foreground app %s force-removing animator for %s", v69, 0x16u);
        swift_arrayDestroy();

        v59 = v68;
        v60 = v132;
      }

      else
      {
      }

      v61 = v133;
      (*(v60 + 8))(v128, v133);
      sub_100197D90(v136);
    }

    if (*(v59 + 16) != v124)
    {
      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v97 = sub_100093DE8(v61, qword_1002A9110);
      v98 = v127;
      (*(v60 + 16))(v127, v97, v61);

      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v142[0] = v138;
        *v101 = 136315394;

        LODWORD(v137) = v100;
        v102 = v140;

        v103 = *(v59 + 24);
        v104 = *(v59 + 32);

        v105 = sub_1000952D4(v103, v104, v142);
        v43 = v121;

        *(v101 + 4) = v105;
        *(v101 + 12) = 2080;
        v106 = sub_1000952D4(v129, v102, v142);

        *(v101 + 14) = v106;
        _os_log_impl(&_mh_execute_header, v99, v137, "animator owned by %s, rejecting request from %s", v101, 0x16u);
        swift_arrayDestroy();

        (*(v132 + 8))(v127, v133);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        (*(v60 + 8))(v98, v133);
      }

      v25->isa = 0xD000000000000021;
      v25[1].isa = 0x8000000100231AD0;
      (*(v22 + 13))(v25, enum case for Errors.UnexpectedError(_:), v21);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      (*(v22 + 2))(v116, v25, v21);
      v51 = _convertErrorToNSError(_:)();
      (*(v139 + 16))(v139, 0, v51);

      goto LABEL_75;
    }
  }

  sub_10019A4F0(1);
  sub_100198E44(v122, v73);
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v74 = sub_100093DE8(v61, qword_1002A9110);
  (*(v60 + 16))(v130, v74, v61);

  v75 = v136;
  v76 = v135;

  v77 = v138;

  v78 = v77;
  v25 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();

  LODWORD(v136) = v79;
  v80 = os_log_type_enabled(v25, v79);
  v129 = v75;
  v119[1] = v59;
  if (v80)
  {
    v81 = swift_slowAlloc();
    v142[0] = swift_slowAlloc();
    *v81 = 136315906;
    v82 = DockCoreInfo.name.getter();
    v84 = sub_1000952D4(v82, v83, v142);

    *(v81 + 4) = v84;
    *(v81 + 12) = 2080;
    v45 = v134;
    *(v81 + 14) = sub_1000952D4(v134, v76, v142);
    *(v81 + 22) = 2080;
    v85 = Array.description.getter();
    v87 = sub_1000952D4(v85, v86, v142);

    *(v81 + 24) = v87;
    *(v81 + 32) = 2080;
    type metadata accessor for SensorData();
    v88 = Array.description.getter();
    v90 = sub_1000952D4(v88, v89, v142);

    *(v81 + 34) = v90;
    v43 = v121;
    _os_log_impl(&_mh_execute_header, v25, v136, "Processing request for setSensorStates(%s, %s, %s, %s", v81, 0x2Au);
    swift_arrayDestroy();
    v78 = v138;

    (*(v60 + 8))(v130, v133);
  }

  else
  {

    (*(v60 + 8))(v130, v61);
    v45 = v134;
    v43 = v121;
  }

  v91 = v120;

  v44 = v78;
  v21 = dispatch thunk of DockCoreAccessory.getSystemSensors(name:sensors:)();
  v124 = v91;

  if (v21 >> 62)
  {
    v92 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v92 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = v129;
  v133 = v137 & 0xFFFFFFFFFFFFFF8;
  if (v137 >> 62)
  {
    v93 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v93 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v94 = v92 == v93;
  v95 = v44;
  if (v94)
  {
    v96 = v21 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v130 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__manualControlEnabled;
    swift_beginAccess();
    if (v96)
    {
      v140 = v21 & 0xC000000000000001;
      v136 = (v21 & 0xFFFFFFFFFFFFFF8);
      v132 = v137 & 0xC000000000000001;
      v107 = (v126 + 2);
      ++v126;
      v127 = v107;
      v17 = 4;
      v128 = v21;
      while (1)
      {
        v109 = v17 - 4;
        if (v140)
        {
          v110 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v109 >= *(v136 + 2))
          {
            goto LABEL_77;
          }

          v110 = *(v21 + 8 * v17);
        }

        v45 = v110;
        v44 = v17 - 3;
        if (__OFADD__(v109, 1))
        {
          break;
        }

        type metadata accessor for SensorTracker();
        v111 = swift_dynamicCastClass();
        if (v111)
        {
          v25 = v111;
          if (v132)
          {
            v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v109 >= *(v133 + 16))
            {
              goto LABEL_78;
            }

            v112 = *(v137 + 8 * v17);
          }

          v113 = v112;
          type metadata accessor for SensorTrackerState();
          if (swift_dynamicCastClass())
          {
            dispatch thunk of SensorTracker.setState(state:)();
            v114 = v131;
            v25 = v123;
            (*v127)(v131, &v130[v125], v123);
            DKThreadSafe.wrappedValue.getter();
            (*v126)(v114, v25);
            if ((v141 & 1) == 0)
            {
              v115 = dispatch thunk of SensorTrackerState.state.getter();
              sub_10018A5D0(v115);
            }

            v108 = v113;
            v21 = v128;
          }

          else
          {
            v108 = v45;
            v45 = v113;
          }

          v43 = v121;
          v22 = v129;
        }

        ++v17;
        v95 = v138;
        if (v44 == v96)
        {
          goto LABEL_72;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }
  }

LABEL_72:

  sub_100123854(v22, v134, v135, v95, v137);
  (*(v139 + 16))(v139, 1, 0);

  return sub_1000BAA28(v30);
}

uint64_t sub_100125728(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v76 = a4;
  v74 = a3;
  v86 = a2;
  v78 = a1;
  v6 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v6 - 8);
  v73 = &v72 - v7;
  v8 = type metadata accessor for UUID();
  v80 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v72 - v12;
  v14 = type metadata accessor for Logger();
  v84 = *(v14 - 8);
  v85 = v14;
  v15 = __chkstk_darwin(v14);
  v79 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v72 - v17;
  v77 = v5;
  v19 = &unk_1002B1000;
  if (*(v5 + OBJC_IVAR____TtC14dockaccessoryd14dockaccessoryd_debugAllowed) == 1)
  {
    DockCoreInfo.type.getter();
    v20 = DockCoreAccessoryType.rawValue.getter();
    if (v20 == DockCoreAccessoryType.rawValue.getter())
    {
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v21 = qword_1002B1CF0;
      v22 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v23 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v23 + 4);

      v24 = *(v21 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
      v25 = *(v21 + v22);
      v26 = v24;

      os_unfair_lock_unlock(v25 + 4);

      if (v24)
      {
        v27 = dispatch thunk of DockCoreAccessory.info.getter();

        type metadata accessor for DockCoreInfo();
        v28 = v86;
        v29 = static NSObject.== infix(_:_:)();

        if (v29)
        {
          if (qword_1002A66D8 != -1)
          {
            swift_once();
          }

          v30 = v85;
          v31 = sub_100093DE8(v85, qword_1002A9110);
          v32 = v84;
          (*(v84 + 16))(v18, v31, v30);
          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&_mh_execute_header, v33, v34, "getActuatorFeedback: noop for mock device", v35, 2u);
          }

          (*(v32 + 8))(v18, v30);
          return 1;
        }
      }
    }
  }

  if (qword_1002A6780 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v37 = *(*(v19 + 414) + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v81 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v82 = v37;
    v38 = *&v37[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v39 = v37;
    v40 = v38;
    OS_dispatch_semaphore.wait()();

    v41 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v83 = v39;
    v42 = *&v39[v41];
    v19 = *(v42 + 16);

    if (!v19)
    {
      break;
    }

    v43 = 0;
    v44 = v42 + 32;
    v45 = (v80 + 8);
    while (v43 < *(v42 + 16))
    {
      sub_1000A097C(v44, v87);
      v46 = *(*sub_1000A09E0(v87, v87[3]) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v46) = static UUID.== infix(_:_:)();
      v47 = *v45;
      (*v45)(v11, v8);
      v47(v13, v8);
      if (v46)
      {

        v49 = *&v82[v81];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v87, &v88);
        sub_100095808(v87);
        goto LABEL_20;
      }

      ++v43;
      sub_100095808(v87);
      v44 += 40;
      if (v19 == v43)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

LABEL_18:

  v48 = *&v82[v81];
  OS_dispatch_semaphore.signal()();

  v90 = 0;
  v88 = 0u;
  v89 = 0u;
LABEL_20:

  v51 = v84;
  v50 = v85;
  if (!*(&v89 + 1))
  {
    sub_100095C84(&v88, &unk_1002A6F40, &unk_10023BE90);
    return 0;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v52 = v87[0];
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v53 = sub_100093DE8(v50, qword_1002A9110);
  (*(v51 + 16))(v79, v53, v50);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 67109120;
    *(v56 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v54, v55, "pid %d Registering for device feedback", v56, 8u);
  }

  (*(v51 + 8))(v79, v50);
  v57 = type metadata accessor for TaskPriority();
  v58 = v73;
  (*(*(v57 - 8) + 56))(v73, 1, 1, v57);
  v59 = swift_allocObject();
  v59[2] = 0;
  v59[3] = 0;
  v59[4] = v52;

  sub_1001B6410(0, 0, v58, &unk_10023DE80, v59);

  v60 = swift_allocObject();
  v61 = v75;
  *(v60 + 16) = v86;
  *(v60 + 24) = v61;
  v62 = v76;
  *(v60 + 32) = v74;
  *(v60 + 40) = v62;
  *(v60 + 48) = v78;
  v63 = v77;
  *(v60 + 56) = v77;
  v64 = *(v52 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock);
  v65 = __chkstk_darwin(v60);
  *(&v72 - 4) = v52;
  *(&v72 - 6) = v66;
  *(&v72 - 2) = sub_10013755C;
  *(&v72 - 1) = v65;
  __chkstk_darwin(v65);
  *(&v72 - 2) = sub_100137590;
  *(&v72 - 1) = v67;
  v69 = v68;

  v70 = v63;

  os_unfair_lock_lock(v64 + 4);
  sub_100137D60(v71);
  os_unfair_lock_unlock(v64 + 4);

  return 1;
}

uint64_t sub_10012601C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v126 = a5;
  v127 = a6;
  v134 = a4;
  v135 = a3;
  v132 = a2;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v130 = v9;
  v131 = v10;
  v11 = __chkstk_darwin(v9);
  v125 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v128 = &v113 - v14;
  __chkstk_darwin(v13);
  v129 = &v113 - v15;
  v16 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v113 - v17;
  v19 = type metadata accessor for Errors();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v133 = (&v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v24 = &v113 - v23;
  v25 = type metadata accessor for DKXPCClientApplication(0);
  v26 = v25 - 8;
  __chkstk_darwin(v25);
  v28 = (&v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v28);
  sub_1000B5150(v28 + *(v26 + 32), v18, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    (*(v20 + 32))(v24, v18, v19);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v20 + 16))(v52, v24, v19);
    v53 = _convertErrorToNSError(_:)();
    (*(a7 + 16))(a7, 0, v53);

    (*(v20 + 8))(v24, v19);
    sub_1000BAA28(v28);
  }

  v124 = a7;
  sub_100095C84(v18, &unk_1002A6F30, &unk_10023C4D0);
  v29 = *v28;
  if (!*v28)
  {
    __break(1u);
    goto LABEL_47;
  }

  v30 = v29;
  v31 = [v30 processIdentifier];
  if (!a1 || !v135 || !v134)
  {
    v54 = v133;
    *v133 = 0xD000000000000016;
    v54[1] = 0x8000000100231BD0;
    (*(v20 + 104))(v54, enum case for Errors.NilParams(_:), v19);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v20 + 16))(v55, v54, v19);
    v56 = _convertErrorToNSError(_:)();
    (*(v124 + 16))(v124, 0, v56);

    (*(v20 + 8))(v54, v19);
    v57 = v28;
LABEL_19:
    sub_1000BAA28(v57);
  }

  v122 = v31;
  v123 = v28;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v121 = qword_1002B1CF0;
  v32 = sub_1001884E4(a1);
  if (!v32 || (type metadata accessor for ActuationController(), v33 = v32, v34 = dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)(), v33, (v34 & 1) == 0) || (v35 = v33, v36 = dispatch thunk of DockCoreAccessory.hasSystemActuators(name:actuators:)(), v35, (v36 & 1) == 0))
  {
    v58 = v133;
    *v133 = 0xD00000000000001ALL;
    v58[1] = 0x8000000100231EC0;
    (*(v20 + 104))(v58, enum case for Errors.NotFound(_:), v19);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v20 + 16))(v59, v58, v19);
    v60 = _convertErrorToNSError(_:)();
    (*(v124 + 16))(v124, 0, v60);

    (*(v20 + 8))(v58, v19);
LABEL_18:
    v57 = v123;
    goto LABEL_19;
  }

  v119 = v35;
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v37 = v130;
  v38 = sub_100093DE8(v130, qword_1002A9110);
  v39 = *(v131 + 16);
  v115 = v38;
  v117 = v131 + 16;
  v116 = v39;
  (v39)(v129);
  v120 = a1;

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  v42 = v120;

  v114 = v41;
  v118 = v40;
  if (os_log_type_enabled(v40, v41))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v138[0] = v113;
    *v43 = 67109890;
    *(v43 + 4) = v122;
    *(v43 + 8) = 2112;
    *(v43 + 10) = v42;
    *v44 = a1;
    *(v43 + 18) = 2080;
    v45 = v42;
    *(v43 + 20) = sub_1000952D4(v132, v135, v138);
    *(v43 + 28) = 2080;
    v46 = Array.description.getter();
    v48 = sub_1000952D4(v46, v47, v138);

    *(v43 + 30) = v48;
    v49 = v118;
    _os_log_impl(&_mh_execute_header, v118, v114, "Client %d registering for feedback for %@ %s %s", v43, 0x26u);
    sub_100095C84(v44, &unk_1002A6F60, &unk_10023C4E0);

    swift_arrayDestroy();

    v50 = v122;

    v51 = *(v131 + 8);
    (v51)(v129, v130);
  }

  else
  {

    v51 = *(v131 + 8);
    (v51)(v129, v37);
    v50 = v122;
  }

  v62 = v30;
  v63 = v119;
  v64 = v121;
  v65 = sub_1001A2074(v50, v29);

  if ((v65 & 1) == 0)
  {
    v85 = v128;
    v86 = v130;
    v116(v128, v115, v130);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    v89 = os_log_type_enabled(v87, v88);
    v90 = v124;
    if (v89)
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "Failed adding client to client list", v91, 2u);
      v86 = v130;
    }

    (v51)(v85, v86);
    v92 = v133;
    *v133 = 0xD00000000000001CLL;
    v92[1] = 0x8000000100231D20;
    (*(v20 + 104))(v92, enum case for Errors.UnexpectedError(_:), v19);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v20 + 16))(v93, v92, v19);
    v94 = _convertErrorToNSError(_:)();
    (*(v90 + 16))(v90, 0, v94);

    (*(v20 + 8))(v92, v19);
    goto LABEL_18;
  }

  v118 = v51;
  v128 = v62;
  v119 = DockCoreInfo.description.getter();
  v67 = v66;
  v129 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v68 = *(v64 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v68 + 4);

  v69 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClientsRules;
  swift_beginAccess();
  if (!*(*(v64 + v69) + 16) || (sub_10016D548(v50), (v70 & 1) == 0))
  {
    v71 = sub_1001F3530(_swiftEmptyArrayStorage);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v137 = *(v64 + v69);
    *(v64 + v69) = 0x8000000000000000;
    v73 = v71;
    v50 = v122;
    sub_1001ECC80(v73, v122, isUniquelyReferenced_nonNull_native);
    *(v64 + v69) = v137;
    swift_endAccess();
  }

  swift_beginAccess();

  v74 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v64;
  v76 = v74;
  v137 = *(v75 + v69);
  v77 = v137;
  *(v75 + v69) = 0x8000000000000000;
  v79 = sub_10016D548(v50);
  v80 = *(v77 + 16);
  v81 = (v78 & 1) == 0;
  v82 = v80 + v81;
  if (__OFADD__(v80, v81))
  {
    __break(1u);
    goto LABEL_44;
  }

  LOBYTE(v62) = v78;
  if (*(v77 + 24) >= v82)
  {
    if ((v76 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_34;
  }

  sub_1001E8904(v82, v76);
  v83 = sub_10016D548(v122);
  if ((v62 & 1) == (v84 & 1))
  {
    v79 = v83;
LABEL_34:
    while (1)
    {
      v95 = v124;
      v96 = v121;
      if (v62)
      {
        break;
      }

LABEL_44:
      __break(1u);
LABEL_45:
      sub_1001EF990();
    }

    v97 = v137;
    v98 = *(*(v137 + 56) + 8 * v79);
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v98;
    sub_1001ECA80(v132, v135, v134, v126, v119, v67, v99);

    if (v136)
    {
      *(*(v97 + 56) + 8 * v79) = v136;
    }

    else
    {
      sub_1001F7A38(v79, v97);
    }

    v100 = v129;
    *(v96 + v69) = v97;
    swift_endAccess();
    v101 = *&v100[v96];

    os_unfair_lock_unlock(v101 + 4);

    v102 = v63;
    LOBYTE(v101) = sub_100125728(v122, v120, v132, v135, v134);

    if (v101)
    {
      (*(v95 + 16))(v95, 1, 0);

      return sub_1000BAA28(v123);
    }

    v103 = v125;
    v104 = v130;
    v116(v125, v115, v130);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();
    v107 = os_log_type_enabled(v105, v106);
    v108 = v123;
    if (v107)
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&_mh_execute_header, v105, v106, "Failed starting feedback from accessory", v109, 2u);
      v103 = v125;
    }

    (v118)(v103, v104);
    v110 = v133;
    *v133 = 0xD000000000000027;
    v110[1] = 0x8000000100231E70;
    (*(v20 + 104))(v110, enum case for Errors.UnexpectedError(_:), v19);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v20 + 16))(v111, v110, v19);
    v112 = _convertErrorToNSError(_:)();
    (*(v95 + 16))(v95, 0, v112);

    (*(v20 + 8))(v110, v19);
    v57 = v108;
    goto LABEL_19;
  }

LABEL_47:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100126FE0(char *a1, char *a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v133 = a4;
  v141 = a1;
  v142 = a3;
  v139 = a2;
  v6 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v6 - 8);
  v128 = &v114 - v7;
  v138 = type metadata accessor for UUID();
  v131 = *(v138 - 8);
  v8 = __chkstk_darwin(v138);
  v137 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v136 = (&v114 - v10);
  v135 = type metadata accessor for Logger();
  v134 = *(v135 - 8);
  v11 = __chkstk_darwin(v135);
  v130 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v129 = &v114 - v14;
  v15 = __chkstk_darwin(v13);
  v132 = &v114 - v16;
  __chkstk_darwin(v15);
  v18 = &v114 - v17;
  v19 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v19 - 8);
  v21 = &v114 - v20;
  v22 = type metadata accessor for Errors();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v140 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v114 - v26;
  v28 = type metadata accessor for DKXPCClientApplication(0);
  v29 = v28 - 8;
  __chkstk_darwin(v28);
  v31 = (&v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v31);
  sub_1000B5150(v31 + *(v29 + 32), v21, &unk_1002A6F30, &unk_10023C4D0);
  if ((v23[6])(v21, 1, v22) != 1)
  {
    v23[4](v27, v21, v22);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    v23[2](v56, v27, v22);
    v57 = _convertErrorToNSError(_:)();
    (*(a5 + 16))(a5, 0, v57);

    (v23[1])(v27, v22);
    goto LABEL_15;
  }

  v127 = a5;
  result = sub_100095C84(v21, &unk_1002A6F30, &unk_10023C4D0);
  v33 = *v31;
  if (*v31)
  {
    v34 = v33;
    v35 = [v34 processIdentifier];
    v36 = v141;
    if (v141 && v142)
    {
      v125 = v35;
      v126 = v31;
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v124 = qword_1002B1CF0;
      v37 = sub_1001884E4(v36);
      if (v37 && (type metadata accessor for ActuationController(), v38 = v37, v39 = dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)(), v38, (v39 & 1) != 0) && (v40 = v38, v41 = dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)(), v40, (v41 & 1) != 0))
      {
        if (qword_1002A66D8 != -1)
        {
          goto LABEL_44;
        }

        while (1)
        {
          v122 = v40;
          v42 = sub_100093DE8(v135, qword_1002A9110);
          v43 = v134;
          v44 = *(v134 + 16);
          v119 = v42;
          v121 = v134 + 16;
          v120 = v44;
          (v44)(v18);
          v45 = v141;
          v46 = v142;

          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.default.getter();

          v117 = v48;
          v123 = v47;
          v49 = os_log_type_enabled(v47, v48);
          v118 = v45;
          if (v49)
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v115 = v51;
            v116 = swift_slowAlloc();
            *&v144 = v116;
            *v50 = 67109634;
            v52 = v125;
            *(v50 + 4) = v125;
            *(v50 + 8) = 2112;
            *(v50 + 10) = v45;
            *v51 = v141;
            *(v50 + 18) = 2080;
            v53 = v45;
            *(v50 + 20) = sub_1000952D4(v139, v46, &v144);
            v54 = v123;
            _os_log_impl(&_mh_execute_header, v123, v117, "Client %d de-registering for feedback for %@ %s", v50, 0x1Cu);
            sub_100095C84(v115, &unk_1002A6F60, &unk_10023C4E0);

            sub_100095808(v116);

            v55 = v135;
            v142 = *(v134 + 8);
            v142(v18);
          }

          else
          {

            v65 = *(v43 + 8);
            v55 = v135;
            v142 = v65;
            v65(v18);
            v52 = v125;
          }

          v66 = v34;
          v67 = v33;
          v33 = v124;
          sub_100193938(v52, v67);
          v69 = v68;

          v70 = v126;
          if ((v69 & 1) == 0)
          {
            break;
          }

          v71 = v126;
          v34 = v118;
          sub_100191E3C(v52);
          if (*(v133 + OBJC_IVAR____TtC14dockaccessoryd14dockaccessoryd_debugAllowed))
          {
            DockCoreInfo.type.getter();
            v72 = DockCoreAccessoryType.rawValue.getter();
            if (v72 == DockCoreAccessoryType.rawValue.getter())
            {
              v73 = v129;
              v120(v129, v119, v55);
              v74 = Logger.logObject.getter();
              v75 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v74, v75))
              {
                v76 = swift_slowAlloc();
                *v76 = 0;
                _os_log_impl(&_mh_execute_header, v74, v75, "stopActuatorFeedback: noop for mock device", v76, 2u);
                v55 = v135;
              }

              (v142)(v73, v55);
              (*(v127 + 16))(v127, 1, 0);

              v77 = v71;
              return sub_1000BAA28(v77);
            }
          }

          v141 = v66;
          v85 = *&v33[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager];
          v133 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
          v86 = *&v85[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
          v139 = v85;
          v18 = v85;
          v87 = v86;
          OS_dispatch_semaphore.wait()();

          v88 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
          swift_beginAccess();
          v140 = v18;
          v40 = *&v18[v88];
          v22 = v40[2];

          if (!v22)
          {
LABEL_33:

            v95 = *&v139[v133];
            OS_dispatch_semaphore.signal()();

            v146 = 0;
            v144 = 0u;
            v145 = 0u;
LABEL_35:

            v97 = v127;
            v98 = v126;
            v99 = v135;
            v100 = v122;
            v101 = v141;
            if (*(&v145 + 1))
            {
              sub_100095274(&unk_1002A7A90, &unk_10023C960);
              type metadata accessor for DaemonAccessory(0);
              if (swift_dynamicCast())
              {
                v102 = v143[0];
                v120(v130, v119, v99);
                v103 = Logger.logObject.getter();
                v104 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v103, v104))
                {
                  v105 = swift_slowAlloc();
                  *v105 = 0;
                  _os_log_impl(&_mh_execute_header, v103, v104, "Deregistering for device feedback", v105, 2u);
                }

                v106 = (v142)(v130, v135);
                v107 = *(v102 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock);
                v108 = __chkstk_darwin(v106);
                *(&v114 - 2) = v102;
                *(&v114 - 2) = v125;
                __chkstk_darwin(v108);
                *(&v114 - 2) = sub_100137CAC;
                *(&v114 - 1) = v109;

                os_unfair_lock_lock(v107 + 4);
                sub_100137D60(v110);
                os_unfair_lock_unlock(v107 + 4);

                v111 = type metadata accessor for TaskPriority();
                v112 = v128;
                (*(*(v111 - 8) + 56))(v128, 1, 1, v111);
                v113 = swift_allocObject();
                v113[2] = 0;
                v113[3] = 0;
                v113[4] = v102;

                sub_1001B6710(0, 0, v112, &unk_10023DEA0, v113);
              }
            }

            else
            {
              sub_100095C84(&v144, &unk_1002A6F40, &unk_10023BE90);
            }

            (*(v97 + 16))(v97, 1, 0);

            v77 = v98;
            return sub_1000BAA28(v77);
          }

          v89 = 0;
          v90 = (v40 + 4);
          v91 = (v131 + 8);
          while (v89 < v40[2])
          {
            sub_1000A097C(v90, v143);
            v92 = *(*sub_1000A09E0(v143, v143[3]) + 24);
            v23 = v136;
            DockCoreInfo.identifier.getter();

            v93 = v137;
            DockCoreInfo.identifier.getter();
            LOBYTE(v92) = static UUID.== infix(_:_:)();
            v33 = *v91;
            v94 = v93;
            v18 = v138;
            (*v91)(v94, v138);
            (v33)(v23, v18);
            if (v92)
            {

              v96 = *&v139[v133];
              OS_dispatch_semaphore.signal()();

              sub_1000A097C(v143, &v144);
              sub_100095808(v143);
              goto LABEL_35;
            }

            ++v89;
            sub_100095808(v143);
            v90 += 40;
            if (v22 == v89)
            {
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_44:
          swift_once();
        }

        v78 = v132;
        v120(v132, v119, v55);
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&_mh_execute_header, v79, v80, "Failed removing client from client list", v81, 2u);
          v55 = v135;
        }

        (v142)(v78, v55);
        v82 = v140;
        *v140 = 0xD000000000000020;
        *(v82 + 1) = 0x8000000100231BF0;
        v23[13](v82, enum case for Errors.UnexpectedError(_:), v22);
        sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
        swift_allocError();
        v23[2](v83, v82, v22);
        v84 = _convertErrorToNSError(_:)();
        (*(v127 + 16))(v127, 0, v84);

        (v23[1])(v82, v22);
        v61 = v70;
      }

      else
      {
        v62 = v140;
        *v140 = 0xD000000000000010;
        *(v62 + 1) = 0x8000000100231EA0;
        v23[13](v62, enum case for Errors.NotFound(_:), v22);
        sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
        swift_allocError();
        v23[2](v63, v62, v22);
        v64 = _convertErrorToNSError(_:)();
        (*(v127 + 16))(v127, 0, v64);

        (v23[1])(v62, v22);
        v61 = v126;
      }

      goto LABEL_17;
    }

    v58 = v140;
    *v140 = 0xD000000000000016;
    *(v58 + 1) = 0x8000000100231BD0;
    v23[13](v58, enum case for Errors.NilParams(_:), v22);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    v23[2](v59, v58, v22);
    v60 = _convertErrorToNSError(_:)();
    (*(v127 + 16))(v127, 0, v60);

    (v23[1])(v58, v22);
LABEL_15:
    v61 = v31;
LABEL_17:
    sub_1000BAA28(v61);
  }

  __break(1u);
  return result;
}

uint64_t sub_100128208(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a3;
  v72 = a1;
  v67 = a2;
  v6 = type metadata accessor for Logger();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = __chkstk_darwin(v6);
  v69 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v60 - v9;
  v11 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v60 - v12;
  v14 = type metadata accessor for Errors();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v70 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v19 = &v60 - v18;
  v20 = type metadata accessor for DKXPCClientApplication(0);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = (&v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v23);
  sub_1000B5150(v23 + *(v21 + 32), v13, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v19, v13, v14);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v15 + 16))(v45, v19, v14);
    v46 = _convertErrorToNSError(_:)();
    (*(a5 + 16))(a5, 0, v46);

    (*(v15 + 8))(v19, v14);
    sub_1000BAA28(v23);
  }

  v68 = a5;
  result = sub_100095C84(v13, &unk_1002A6F30, &unk_10023C4D0);
  v25 = *v23;
  if (*v23)
  {
    v26 = v25;
    v27 = [v26 processIdentifier];
    v28 = v68;
    v29 = v74;
    v30 = v71;
    v31 = v72;
    if (v72 && v71)
    {
      v66 = v27;
      v65 = v23;
      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v32 = sub_100093DE8(v29, qword_1002A9110);
      v63 = *(v73 + 16);
      v64 = v32;
      v62 = v73 + 16;
      v63(v10);

      v33 = v31;
      v34 = Logger.logObject.getter();
      v35 = v30;
      v36 = static os_log_type_t.default.getter();

      v37 = v34;
      if (os_log_type_enabled(v34, v36))
      {
        v38 = swift_slowAlloc();
        v60 = v26;
        v61 = v10;
        v39 = v38;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v75 = v41;
        *v39 = 67109634;
        *(v39 + 4) = v66;
        *(v39 + 8) = 2112;
        *(v39 + 10) = v33;
        *v40 = v72;
        *(v39 + 18) = 2080;
        v42 = v33;
        *(v39 + 20) = sub_1000952D4(v67, v35, &v75);
        _os_log_impl(&_mh_execute_header, v37, v36, "Client %d de-registering for trajectory progress feedback for %@ %s", v39, 0x1Cu);
        sub_100095C84(v40, &unk_1002A6F60, &unk_10023C4E0);

        sub_100095808(v41);

        v26 = v60;

        v43 = *(v73 + 8);
        v44 = v61;
      }

      else
      {

        v43 = *(v73 + 8);
        v44 = v10;
      }

      v51 = v74;
      v43(v44, v74);
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v52 = v26;
      v53 = sub_100195348(v66, v25);

      if (v53)
      {
        (*(v68 + 16))(v68, 1, 0);

        return sub_1000BAA28(v65);
      }

      (v63)(v69, v64, v51);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "Failed removing client from client list", v56, 2u);
      }

      v43(v69, v51);
      v57 = v70;
      *v70 = 0xD000000000000020;
      v57[1] = 0x8000000100231BF0;
      (*(v15 + 104))(v57, enum case for Errors.UnexpectedError(_:), v14);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      (*(v15 + 16))(v58, v57, v14);
      v59 = _convertErrorToNSError(_:)();
      (*(v68 + 16))(v68, 0, v59);

      (*(v15 + 8))(v57, v14);
      v50 = v65;
    }

    else
    {
      v47 = v70;
      *v70 = 0xD000000000000016;
      v47[1] = 0x8000000100231BD0;
      (*(v15 + 104))(v47, enum case for Errors.NilParams(_:), v14);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      (*(v15 + 16))(v48, v47, v14);
      v49 = _convertErrorToNSError(_:)();
      (*(v28 + 16))(v28, 0, v49);

      (*(v15 + 8))(v47, v14);
      v50 = v23;
    }

    sub_1000BAA28(v50);
  }

  __break(1u);
  return result;
}

uint64_t sub_100128AB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v96 = a5;
  v97 = a2;
  v99 = a1;
  v100 = a4;
  v102 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v103 = v7;
  v104 = v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v94 = &v87 - v13;
  v14 = __chkstk_darwin(v12);
  v95 = &v87 - v15;
  __chkstk_darwin(v14);
  v98 = &v87 - v16;
  v17 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v17 - 8);
  v19 = &v87 - v18;
  v20 = type metadata accessor for Errors();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v101 = (&v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v25 = &v87 - v24;
  v26 = type metadata accessor for DKXPCClientApplication(0);
  v27 = v26 - 8;
  __chkstk_darwin(v26);
  v29 = (&v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v29);
  sub_1000B5150(v29 + *(v27 + 32), v19, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    (*(v21 + 32))(v25, v19, v20);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v21 + 16))(v51, v25, v20);
    v52 = _convertErrorToNSError(_:)();
    (*(a6 + 16))(a6, 0, v52);

    (*(v21 + 8))(v25, v20);
LABEL_23:
    sub_1000BAA28(v29);
  }

  sub_100095C84(v19, &unk_1002A6F30, &unk_10023C4D0);
  v30 = a6;
  v31 = v102;
  if (!v102 || !v100 || !v99)
  {
    v53 = v20;
    v54 = v103;
    v55 = v104;
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v56 = sub_100093DE8(v54, qword_1002A9110);
    (*(v55 + 16))(v11, v56, v54);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Client did not provide a system, actuators, or accessory info", v59, 2u);
    }

    (*(v55 + 8))(v11, v54);
    v60 = v101;
    *v101 = 0xD000000000000016;
    v60[1] = 0x8000000100231BD0;
    (*(v21 + 104))(v60, enum case for Errors.NilParams(_:), v53);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v21 + 16))(v61, v60, v53);
    v62 = _convertErrorToNSError(_:)();
    (*(v30 + 16))(v30, 0, v62);

    goto LABEL_22;
  }

  v32 = objc_opt_self();
  v33 = v99;
  v34 = [v32 currentConnection];
  v35 = v103;
  v36 = v104;
  if (!v34)
  {
    v53 = v20;
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v68 = sub_100093DE8(v35, qword_1002A9110);
    (*(v36 + 16))(v98, v68, v35);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Failed fetching current NSXPCConnection, cannot construct client", v71, 2u);
    }

    (*(v36 + 8))(v98, v35);
    v60 = v101;
    *v101 = 0xD000000000000017;
    v60[1] = 0x800000010022FA50;
    (*(v21 + 104))(v60, enum case for Errors.XPCNil(_:), v53);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v21 + 16))(v72, v60, v53);
    v73 = _convertErrorToNSError(_:)();
    (*(v30 + 16))(v30, 0, v73);

LABEL_22:
    (*(v21 + 8))(v60, v53);
    goto LABEL_23;
  }

  v98 = v34;
  v93 = v20;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v99 = v33;
  v37 = sub_1001884E4(v33);
  v38 = v97;
  if (!v37 || (type metadata accessor for ActuationController(), v39 = v37, v40 = dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)(), v39, (v40 & 1) == 0) || (v41 = v39, v42 = dispatch thunk of DockCoreAccessory.hasSystemActuators(name:actuators:)(), v92 = v41, v41, (v42 & 1) == 0))
  {
    v64 = v101;
    *v101 = 0xD000000000000019;
    v64[1] = 0x8000000100231E50;
    v65 = v93;
    (*(v21 + 104))(v64, enum case for Errors.NotFound(_:), v93);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v21 + 16))(v66, v64, v65);
    v67 = _convertErrorToNSError(_:)();
    (*(v30 + 16))(v30, 0, v67);

    (*(v21 + 8))(v64, v65);
    goto LABEL_23;
  }

  v91 = v30;
  v43 = v99;
  v44 = sub_1001A229C(v99, v38, v31);
  if (!v44)
  {
    v90 = 0;
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v45 = sub_100093DE8(v103, qword_1002A9110);
    v46 = v95;
    v88 = *(v104 + 16);
    v89 = v45;
    v88(v95);
    v47 = v98;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 67109120;
      *(v50 + 4) = [v47 processIdentifier];

      _os_log_impl(&_mh_execute_header, v48, v49, "Trying to start feedback from accessory for %d", v50, 8u);
    }

    else
    {

      v48 = v47;
    }

    v74 = *(v104 + 8);
    v104 += 8;
    v74(v46, v103);
    v75 = [v47 processIdentifier];
    v76 = v92;
    v43 = v99;
    v77 = v31;
    v78 = v76;
    LOBYTE(v75) = sub_100125728(v75, v99, v97, v77, v100);

    v44 = v90;
    if ((v75 & 1) == 0)
    {
      v79 = v94;
      (v88)(v94, v89, v103);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v80, v81, "Failed starting feedback from accessory", v82, 2u);
      }

      v74(v79, v103);
      v83 = v101;
      *v101 = 0xD000000000000027;
      v83[1] = 0x8000000100231E70;
      v84 = v93;
      (*(v21 + 104))(v83, enum case for Errors.UnexpectedError(_:), v93);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      (*(v21 + 16))(v85, v83, v84);
      v86 = _convertErrorToNSError(_:)();
      (*(v91 + 16))(v91, 0, v86);

      (*(v21 + 8))(v83, v84);
      goto LABEL_23;
    }
  }

  (*(v91 + 16))(v91, v44, 0);

  return sub_1000BAA28(v29);
}

uint64_t sub_1001297A0(int a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v68 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v70 = v3;
  v71 = v4;
  v5 = __chkstk_darwin(v3);
  v69 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v72 = &v63 - v7;
  v8 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v9 = __chkstk_darwin(v8 - 8);
  v66 = (&v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v73 = (&v63 - v12);
  __chkstk_darwin(v11);
  v14 = &v63 - v13;
  v15 = type metadata accessor for Errors();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DKAPIUsageType();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DKXPCClientApplication(0);
  __chkstk_darwin(v23);
  v25 = (&v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v25);
  if (v25[2])
  {
    v26 = v25[1];
    v74 = v25[2];
    v75 = v26;
  }

  else
  {
    v74 = 0xE700000000000000;
    v75 = 0x6E776F6E6B6E75;
  }

  (*(v20 + 104))(v22, enum case for DKAPIUsageType.setSystemTrackingEnabled(_:), v19);

  v27 = DKAPIUsageType.rawValue.getter();
  (*(v20 + 8))(v22, v19);
  sub_1000B5150(v25 + *(v23 + 24), v14, &unk_1002A6F30, &unk_10023C4D0);
  v28 = v16;
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v37 = swift_allocError();
    (*(v16 + 16))(v38, v18, v15);
    swift_willThrow();
    (*(v16 + 8))(v18, v15);
    v30 = v74;
    v34 = v75;
LABEL_16:
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v76 = v37;
    swift_errorRetain();
    sub_100095274(&qword_1002A7268, &unk_10023C680);
    v45 = v73;
    v46 = swift_dynamicCast();
    (*(v28 + 56))(v45, v46 ^ 1u, 1, v15);
    sub_10018C604(v34, v30, v27, v45);

    sub_1000BAA28(v25);
    return sub_100095C84(v45, &unk_1002A6F30, &unk_10023C4D0);
  }

  result = sub_100095C84(v14, &unk_1002A6F30, &unk_10023C4D0);
  v30 = v74;
  if (!*v25)
  {
    __break(1u);
    return result;
  }

  v65 = *v25;
  v31 = [v65 processIdentifier];
  v32 = cameracaptureIdentifier.getter();
  v34 = v75;
  v36 = v70;
  v35 = v71;
  if (v75 == v32 && v30 == v33)
  {

LABEL_11:
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v40 = sub_100093DE8(v36, qword_1002A9110);
    (*(v35 + 16))(v72, v40, v36);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Invalid client, can't disable tracking from self", v43, 2u);
      v35 = v71;
    }

    (*(v35 + 8))(v72, v36);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v37 = swift_allocError();
    strcpy(v44, "invalid client");
    v44[15] = -18;
    (*(v28 + 104))(v44, enum case for Errors.InvalidParameter(_:), v15);
    swift_willThrow();

    goto LABEL_16;
  }

  v64 = v31;
  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v39)
  {
    goto LABEL_11;
  }

  v47 = v68;
  v48 = 4605519;
  if (v68)
  {
    v48 = 20047;
  }

  v73 = v48;
  if (v68)
  {
    v49 = 0xE200000000000000;
  }

  else
  {
    v49 = 0xE300000000000000;
  }

  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v50 = sub_100093DE8(v36, qword_1002A9110);
  (*(v35 + 16))(v69, v50, v36);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();

  v53 = os_log_type_enabled(v51, v52);
  v63 = v27;
  if (v53)
  {
    v54 = v30;
    v55 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *v55 = 136315394;
    *(v55 + 4) = sub_1000952D4(v75, v54, &v76);
    *(v55 + 12) = 2080;
    v56 = sub_1000952D4(v73, v49, &v76);

    *(v55 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v51, v52, "Client %s requested set system tracking %s", v55, 0x16u);
    swift_arrayDestroy();
    v47 = v68;
  }

  else
  {
  }

  (*(v35 + 8))(v69, v70);
  v58 = v66;
  v57 = v67;
  v59 = v65;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v60 = v47 & 1;
  v61 = v74;
  v62 = v75;
  sub_100195600(v75, v74, v60, v64);
  (*(v28 + 56))(v58, 1, 1, v15);
  sub_10018C604(v62, v61, v63, v58);

  sub_100095C84(v58, &unk_1002A6F30, &unk_10023C4D0);
  (*(v57 + 16))(v57, 1, 0);

  return sub_1000BAA28(v25);
}

uint64_t sub_10012A18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v68 = a1;
  v59 = type metadata accessor for Logger();
  v61 = *(v59 - 8);
  __chkstk_darwin(v59);
  v60 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v5 = __chkstk_darwin(v4 - 8);
  v62 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v5);
  v63 = (&v57 - v8);
  __chkstk_darwin(v7);
  v10 = &v57 - v9;
  v11 = type metadata accessor for Errors();
  v12 = *(v11 - 8);
  v66 = v11;
  v67 = v12;
  __chkstk_darwin(v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DKAPIUsageType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DKXPCClientApplication(0);
  __chkstk_darwin(v19);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v21);
  if (v21[2])
  {
    v22 = v21[1];
    v23 = v21[2];
  }

  else
  {
    v23 = 0xE700000000000000;
    v22 = 0x6E776F6E6B6E75;
  }

  (*(v16 + 104))(v18, enum case for DKAPIUsageType.setFraming(_:), v15);

  LODWORD(v24) = DKAPIUsageType.rawValue.getter();
  (*(v16 + 8))(v18, v15);
  v25 = *(v19 + 24);
  v64 = v21;
  sub_1000B5150(v21 + v25, v10, &unk_1002A6F30, &unk_10023C4D0);
  v27 = v66;
  v26 = v67;
  if ((*(v67 + 48))(v10, 1, v66) == 1)
  {
    v58 = v24;
    sub_100095C84(v10, &unk_1002A6F30, &unk_10023C4D0);
    v70 = 0;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v28 = qword_1002B1CF0;
    v57 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v29 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v29 + 4);

    v30 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
    swift_beginAccess();
    v31 = *(v28 + v30);
    v32 = 1 << *(v31 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v26 = v33 & *(v31 + 64);
    v24 = (v32 + 63) >> 6;

    v34 = 0;
    while (v26)
    {
LABEL_16:
      v37 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v38 = v37 | (v34 << 6);
      v39 = (*(v31 + 48) + 16 * v38);
      v30 = *(*(v31 + 56) + 8 * v38);
      v40 = *v39 == v22 && v39[1] == v23;
      if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        sub_100113E40(v35, v22, v23, v68, &v70);
      }
    }

    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v36 >= v24)
      {
        break;
      }

      v26 = *(v31 + 64 + 8 * v36);
      ++v34;
      if (v26)
      {
        v34 = v36;
        goto LABEL_16;
      }
    }

    v42 = *(v28 + v57);

    os_unfair_lock_unlock(v42 + 4);

    if (v70)
    {
      v43 = v62;
      (*(v67 + 56))(v62, 1, 1, v27);
      sub_10018C604(v22, v23, v58, v43);

      sub_100095C84(v43, &unk_1002A6F30, &unk_10023C4D0);
      (*(v65 + 16))(v65, 1, 0);
      return sub_1000BAA28(v64);
    }

    v26 = v67;
    LODWORD(v24) = v58;
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v45 = v59;
    v46 = sub_100093DE8(v59, qword_1002A9110);
    v48 = v60;
    v47 = v61;
    (*(v61 + 16))(v60, v46, v45);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v69 = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_1000952D4(v22, v23, &v69);
      _os_log_impl(&_mh_execute_header, v49, v50, "No clients registered for config changes on %s", v51, 0xCu);
      sub_100095808(v52);

      (*(v61 + 8))(v60, v45);
    }

    else
    {

      (*(v47 + 8))(v48, v45);
    }

    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v30 = swift_allocError();
    *v53 = 0xD000000000000014;
    v53[1] = 0x8000000100231E10;
    (*(v26 + 104))(v53, enum case for Errors.UnexpectedError(_:), v27);
    swift_willThrow();
  }

  else
  {
    (*(v26 + 32))(v14, v10, v27);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v30 = swift_allocError();
    (*(v26 + 16))(v41, v14, v27);
    swift_willThrow();
    (*(v26 + 8))(v14, v27);
  }

  v54 = _convertErrorToNSError(_:)();
  (*(v65 + 16))(v65, 0, v54);

  if (qword_1002A6780 != -1)
  {
LABEL_34:
    swift_once();
  }

  v70 = v30;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  v55 = v63;
  v56 = swift_dynamicCast();
  (*(v26 + 56))(v55, v56 ^ 1u, 1, v27);
  sub_10018C604(v22, v23, v24, v55);

  sub_1000BAA28(v64);
  return sub_100095C84(v55, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_10012AAD8(void *a1, void *a2, uint64_t a3, void (**a4)(const void *, void, void *))
{
  v140 = a1;
  v141 = a2;
  v125 = type metadata accessor for DispatchWorkItemFlags();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v122 = v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for DispatchQoS();
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v120 = v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for DispatchTime();
  v119 = *(v133 - 8);
  v7 = __chkstk_darwin(v133);
  v117 = v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v118 = v106 - v9;
  v116 = type metadata accessor for DispatchQoS.QoSClass();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for Logger();
  v11 = *(v142 - 8);
  v12 = __chkstk_darwin(v142);
  v113 = v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v144 = v106 - v14;
  v15 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v16 = __chkstk_darwin(v15 - 8);
  v134 = (v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v19 = v106 - v18;
  v139 = type metadata accessor for Errors();
  v146 = *(v139 - 8);
  __chkstk_darwin(v139);
  v21 = v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DKAPIUsageType();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DKXPCClientApplication(0);
  __chkstk_darwin(v26);
  v28 = (v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  v135 = a4;
  _Block_copy(a4);
  sub_10010D498(v28);
  v30 = v28[2];
  if (v30)
  {
    v145 = v28[1];
    v148 = v30;
  }

  else
  {
    v148 = 0xE700000000000000;
    v145 = 0x6E776F6E6B6E75;
  }

  (*(v23 + 104))(v25, enum case for DKAPIUsageType.selectSubject(_:), v22);

  v138 = DKAPIUsageType.rawValue.getter();
  (*(v23 + 8))(v25, v22);
  sub_1000B5150(v28 + *(v26 + 24), v19, &unk_1002A6F30, &unk_10023C4D0);
  v31 = v146;
  v32 = v139;
  if ((*(v146 + 48))(v19, 1, v139) == 1)
  {
    v112 = v29;
    sub_100095C84(v19, &unk_1002A6F30, &unk_10023C4D0);
    v33 = v148;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v34 = qword_1002B1CF0;
    v110 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v35 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v35 + 4);

    v36 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
    swift_beginAccess();
    v111 = v34;
    v37 = *(v34 + v36);
    v38 = v37 + 64;
    v39 = 1 << *(v37 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v37 + 64);
    v42 = ((v39 + 63) >> 6);
    v126 = (v11 + 16);
    v127 = (v11 + 8);
    v147 = v37;

    v143 = 0;
    v43 = 0;
    v106[1] = 0;
    *&v44 = 136315650;
    v109 = v44;
    v45 = v145;
    v46 = v142;
    while (1)
    {
      while (1)
      {
        do
        {
          if (!v41)
          {
            while (1)
            {
              v47 = v43 + 1;
              if (__OFADD__(v43, 1))
              {
                __break(1u);
LABEL_52:
                __break(1u);
                goto LABEL_53;
              }

              if (v47 >= v42)
              {
                break;
              }

              v41 = *(v38 + 8 * v47);
              ++v43;
              if (v41)
              {
                v43 = v47;
                goto LABEL_15;
              }
            }

            v73 = v111;
            v74 = v110;
            v75 = *(v111 + v110);

            os_unfair_lock_unlock(v75 + 4);

            if (v143)
            {
              v76 = *(v73 + v74);

              os_unfair_lock_lock(v76 + 4);

              v77 = v74;
              v78 = swift_allocObject();
              v147 = sub_100137D58;
              v79 = v112;
              *(v78 + 16) = sub_100137D58;
              *(v78 + 24) = v79;
              v80 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__subjectSelectionCompletions;
              swift_beginAccess();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v150 = *(v73 + v80);
              *(v73 + v80) = 0x8000000000000000;
              sub_1001EBB3C(sub_100137D30, v78, v45, v33, isUniquelyReferenced_nonNull_native);

              *(v73 + v80) = v150;
              swift_endAccess();
              v82 = *(v73 + v77);

              os_unfair_lock_unlock(v82 + 4);

              sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
              v83 = v115;
              v84 = v114;
              v85 = v116;
              (*(v115 + 104))(v114, enum case for DispatchQoS.QoSClass.default(_:), v116);
              v145 = static OS_dispatch_queue.global(qos:)();
              (*(v83 + 8))(v84, v85);
              v86 = v117;
              static DispatchTime.now()();
              v87 = v118;
              + infix(_:_:)();
              v146 = *(v119 + 8);
              (v146)(v86, v133);
              v88 = swift_allocObject();
              *(v88 + 16) = v45;
              *(v88 + 24) = v33;
              *(v88 + 32) = v147;
              *(v88 + 40) = v79;
              *(v88 + 48) = v138;
              aBlock[4] = sub_100137CFC;
              aBlock[5] = v88;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100147FC8;
              aBlock[3] = &unk_100278230;
              v89 = _Block_copy(aBlock);

              v90 = v120;
              static DispatchQoS.unspecified.getter();
              v150 = _swiftEmptyArrayStorage;
              sub_1000BAAE8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
              sub_100095274(&unk_1002A6B60, qword_10023AE10);
              sub_1000BAB30();
              v91 = v122;
              v92 = v125;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v93 = v145;
              OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
              _Block_release(v89);

              (*(v124 + 8))(v91, v92);
              (*(v121 + 8))(v90, v123);
              (v146)(v87, v133);
              sub_1000BAA28(v28);
            }

            if (qword_1002A66D8 != -1)
            {
              swift_once();
            }

            v94 = sub_100093DE8(v46, qword_1002A9110);
            v95 = v113;
            (*v126)(v113, v94, v46);

            v96 = Logger.logObject.getter();
            v97 = static os_log_type_t.error.getter();

            v98 = os_log_type_enabled(v96, v97);
            LODWORD(v43) = v138;
            v42 = v134;
            if (v98)
            {
              v99 = swift_slowAlloc();
              v100 = swift_slowAlloc();
              v101 = v45;
              v102 = v100;
              aBlock[0] = v100;
              *v99 = 136315138;
              *(v99 + 4) = sub_1000952D4(v101, v33, aBlock);
              _os_log_impl(&_mh_execute_header, v96, v97, "No clients registered for config changes on %s", v99, 0xCu);
              sub_100095808(v102);

              (*v127)(v113, v142);
            }

            else
            {

              (*v127)(v95, v142);
            }

            v72 = v135;
            sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
            v45 = swift_allocError();
            *v103 = 0xD000000000000014;
            v103[1] = 0x8000000100231E10;
            (*(v146 + 104))(v103, enum case for Errors.UnexpectedError(_:), v32);
            swift_willThrow();
            goto LABEL_48;
          }

LABEL_15:
          v48 = __clz(__rbit64(v41));
          v41 &= v41 - 1;
          v49 = v48 | (v43 << 6);
          v50 = (*(v147 + 6) + 16 * v49);
          v51 = *(*(v147 + 7) + 8 * v49);
          v52 = *v50 == v45 && v50[1] == v33;
        }

        while (!v52 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);
        if (v51 >> 62)
        {
          break;
        }

        result = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_22;
        }
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_22:
        v130 = result;
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        v131 = v51 & 0xC000000000000001;

        v45 = 0;
        v132 = v51;
        v108 = v28;
        v148 = v33;
        v107 = v42;
        do
        {
          if (v131)
          {
            v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v54 = *(v51 + 8 * v45 + 32);
          }

          v55 = v54;
          v56 = [v54 remoteObjectProxy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_100095274(&qword_1002A9310, &qword_10023DE70);
          if (swift_dynamicCast())
          {
            v129 = v55;
            v128 = v150;
            v57 = v141;
            v58 = v144;
            if (qword_1002A66D8 != -1)
            {
              swift_once();
            }

            v59 = sub_100093DE8(v46, qword_1002A9110);
            (*v126)(v58, v59, v46);

            v32 = v140;
            v60 = v57;
            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.default.getter();
            v136 = v60;

            v137 = v32;

            if (os_log_type_enabled(v61, v62))
            {
              v32 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              v64 = swift_slowAlloc();
              aBlock[0] = v64;
              *v32 = v109;
              *(v32 + 1) = sub_1000952D4(v145, v148, aBlock);
              *(v32 + 6) = 2112;
              v65 = v137;
              *(v32 + 14) = v137;
              *(v32 + 11) = 2112;
              v66 = v136;
              *(v32 + 3) = v136;
              v67 = v141;
              *v63 = v140;
              v63[1] = v67;
              v68 = v65;
              v69 = v66;
              _os_log_impl(&_mh_execute_header, v61, v62, "Notifying client that %s just set subject selection to %@, %@", v32, 0x20u);
              sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
              swift_arrayDestroy();

              sub_100095808(v64);
            }

            v46 = v142;
            (*v127)(v144, v142);
            v33 = v108;
            v51 = v132;
            v42 = v107;
            v28 = v128;
            [v128 selectSubjectAtEventWithX:v137 y:v136];
            swift_unknownObjectRelease();

            if (__OFADD__(v143++, 1))
            {
              goto LABEL_52;
            }

            v28 = v33;
            v33 = v148;
          }

          else
          {

            v51 = v132;
          }

          ++v45;
        }

        while (v130 != v45);

        v45 = v145;
        v32 = v139;
      }
    }
  }

  (*(v31 + 32))(v21, v19, v32);
  sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
  v45 = swift_allocError();
  (*(v31 + 16))(v71, v21, v32);
  swift_willThrow();
  (*(v31 + 8))(v21, v32);
  v72 = v135;
  v33 = v148;
  LODWORD(v43) = v138;
  v42 = v134;
LABEL_48:
  v104 = _convertErrorToNSError(_:)();
  v72[2](v72, 0, v104);

  if (qword_1002A6780 != -1)
  {
LABEL_53:
    swift_once();
  }

  aBlock[0] = v45;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  v105 = swift_dynamicCast();
  (*(v146 + 56))(v42, v105 ^ 1u, 1, v32);
  sub_10018C604(v145, v33, v43, v42);

  sub_1000BAA28(v28);
  sub_100095C84(v42, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_10012BE14(uint64_t a1, uint64_t a2, void (**a3)(const void *, void, void *))
{
  v100 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v98 = *(v4 - 8);
  v99 = v4;
  __chkstk_darwin(v4);
  v96 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for DispatchQoS();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for DispatchTime();
  v92 = *(v93 - 8);
  v7 = __chkstk_darwin(v93);
  v90 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v91 = &v82 - v9;
  v89 = type metadata accessor for DispatchQoS.QoSClass();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for Logger();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v86 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v13 = __chkstk_darwin(v12 - 8);
  v101 = (&v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v16 = &v82 - v15;
  v17 = type metadata accessor for Errors();
  v18 = *(v17 - 8);
  v105 = v17;
  v106 = v18;
  __chkstk_darwin(v17);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DKAPIUsageType();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DKXPCClientApplication(0);
  __chkstk_darwin(v25);
  v27 = (&v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = swift_allocObject();
  *(v104 + 16) = a3;
  v102 = a3;
  _Block_copy(a3);
  sub_10010D498(v27);
  if (v27[2])
  {
    v28 = v27[1];
    v29 = v27[2];
  }

  else
  {
    v29 = 0xE700000000000000;
    v28 = 0x6E776F6E6B6E75;
  }

  (*(v22 + 104))(v24, enum case for DKAPIUsageType.selectSubject(_:), v21);

  LODWORD(v30) = DKAPIUsageType.rawValue.getter();
  (*(v22 + 8))(v24, v21);
  v31 = *(v25 + 24);
  v103 = v27;
  sub_1000B5150(v27 + v31, v16, &unk_1002A6F30, &unk_10023C4D0);
  v32 = v105;
  v33 = v106;
  if ((*(v106 + 48))(v16, 1, v105) == 1)
  {
    v83 = v30;
    sub_100095C84(v16, &unk_1002A6F30, &unk_10023C4D0);
    v109 = 0;
    v34 = v28;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v33 = qword_1002B1CF0;
    v82 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v35 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v35 + 4);

    v36 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
    swift_beginAccess();
    v37 = *(v33 + v36);
    v38 = 1 << *(v37 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v40 = v39 & *(v37 + 64);
    v32 = (v38 + 63) >> 6;

    v30 = 0;
    v41 = v100;
    while (v40)
    {
LABEL_16:
      v44 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v45 = (*(v37 + 48) + 16 * (v44 | (v30 << 6)));
      v46 = *v45 == v34 && v45[1] == v29;
      if (v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        sub_100114304(v42, v34, v29, v41, &v109);
      }
    }

    while (1)
    {
      v43 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v43 >= v32)
      {
        break;
      }

      v40 = *(v37 + 64 + 8 * v43);
      ++v30;
      if (v40)
      {
        v30 = v43;
        goto LABEL_16;
      }
    }

    v48 = v82;
    v49 = *(v33 + v82);

    os_unfair_lock_unlock(v49 + 4);

    if (v109)
    {
      v50 = *(v33 + v48);

      os_unfair_lock_lock(v50 + 4);

      v51 = swift_allocObject();
      v52 = v104;
      *(v51 + 16) = sub_100137D58;
      *(v51 + 24) = v52;
      v53 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__subjectSelectionCompletions;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108 = *(v33 + v53);
      *(v33 + v53) = 0x8000000000000000;
      sub_1001EBB3C(sub_100137D30, v51, v34, v29, isUniquelyReferenced_nonNull_native);

      *(v33 + v53) = v108;
      swift_endAccess();
      v55 = *(v33 + v48);

      os_unfair_lock_unlock(v55 + 4);

      sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
      v56 = v88;
      v57 = v87;
      v58 = v89;
      (*(v88 + 104))(v87, enum case for DispatchQoS.QoSClass.default(_:), v89);
      v105 = static OS_dispatch_queue.global(qos:)();
      (*(v56 + 8))(v57, v58);
      v59 = v90;
      static DispatchTime.now()();
      v60 = v91;
      + infix(_:_:)();
      v106 = *(v92 + 8);
      v61 = v93;
      (v106)(v59, v93);
      v62 = swift_allocObject();
      *(v62 + 16) = v34;
      *(v62 + 24) = v29;
      *(v62 + 32) = sub_100137D58;
      *(v62 + 40) = v52;
      *(v62 + 48) = v83;
      aBlock[4] = sub_1001373EC;
      aBlock[5] = v62;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      aBlock[3] = &unk_100278190;
      v63 = _Block_copy(aBlock);

      v64 = v94;
      static DispatchQoS.unspecified.getter();
      v108 = _swiftEmptyArrayStorage;
      sub_1000BAAE8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000BAB30();
      v65 = v96;
      v66 = v99;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v67 = v105;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v63);

      (*(v98 + 8))(v65, v66);
      (*(v95 + 8))(v64, v97);
      (v106)(v60, v61);
      sub_1000BAA28(v103);
    }

    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v68 = v85;
    v69 = sub_100093DE8(v85, qword_1002A9110);
    v70 = v84;
    v71 = v86;
    (*(v84 + 16))(v86, v69, v68);

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();

    v74 = os_log_type_enabled(v72, v73);
    LODWORD(v30) = v83;
    v32 = v105;
    if (v74)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      aBlock[0] = v76;
      *v75 = 136315138;
      *(v75 + 4) = sub_1000952D4(v34, v29, aBlock);
      _os_log_impl(&_mh_execute_header, v72, v73, "No clients registered for config changes on %s", v75, 0xCu);
      sub_100095808(v76);

      (*(v70 + 8))(v86, v68);
    }

    else
    {

      (*(v70 + 8))(v71, v68);
    }

    v33 = v106;
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v37 = swift_allocError();
    *v77 = 0xD000000000000014;
    v77[1] = 0x8000000100231E10;
    (*(v33 + 104))(v77, enum case for Errors.UnexpectedError(_:), v32);
    swift_willThrow();
  }

  else
  {
    (*(v33 + 32))(v20, v16, v32);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v37 = swift_allocError();
    (*(v33 + 16))(v47, v20, v32);
    swift_willThrow();
    (*(v33 + 8))(v20, v32);
    v34 = v28;
  }

  v78 = _convertErrorToNSError(_:)();
  v102[2](v102, 0, v78);

  if (qword_1002A6780 != -1)
  {
LABEL_35:
    swift_once();
  }

  aBlock[0] = v37;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  v79 = v101;
  v80 = swift_dynamicCast();
  (*(v33 + 56))(v79, v80 ^ 1u, 1, v32);
  sub_10018C604(v34, v29, v30, v79);

  sub_1000BAA28(v103);
  sub_100095C84(v79, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_10012CCE8(double a1, double a2, double a3, double a4, uint64_t a5, void (**a6)(const void *, void, void *))
{
  v105 = type metadata accessor for DispatchWorkItemFlags();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v102 = &v88[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v103 = type metadata accessor for DispatchQoS();
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = &v88[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = type metadata accessor for DispatchTime();
  v98 = *(v99 - 8);
  v13 = __chkstk_darwin(v99);
  v96 = &v88[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v97 = &v88[-v15];
  v95 = type metadata accessor for DispatchQoS.QoSClass();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v88[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = type metadata accessor for Logger();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v92 = &v88[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v19 = __chkstk_darwin(v18 - 8);
  v106 = &v88[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v22 = &v88[-v21];
  v23 = type metadata accessor for Errors();
  v24 = *(v23 - 8);
  v110 = v23;
  v111 = v24;
  __chkstk_darwin(v23);
  v26 = &v88[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = type metadata accessor for DKAPIUsageType();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v88[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = type metadata accessor for DKXPCClientApplication(0);
  __chkstk_darwin(v31);
  v33 = &v88[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v109 = swift_allocObject();
  *(v109 + 16) = a6;
  v107 = a6;
  _Block_copy(a6);
  sub_10010D498(v33);
  if (v33[2])
  {
    v34 = v33[1];
    v35 = v33[2];
  }

  else
  {
    v35 = 0xE700000000000000;
    v34 = 0x6E776F6E6B6E75;
  }

  (*(v28 + 104))(v30, enum case for DKAPIUsageType.setRegionOfInterest(_:), v27);

  LODWORD(v36) = DKAPIUsageType.rawValue.getter();
  (*(v28 + 8))(v30, v27);
  v37 = *(v31 + 24);
  v108 = v33;
  sub_1000B5150(v33 + v37, v22, &unk_1002A6F30, &unk_10023C4D0);
  v38 = v110;
  v39 = v111;
  if ((*(v111 + 48))(v22, 1, v110) == 1)
  {
    v89 = v36;
    sub_100095C84(v22, &unk_1002A6F30, &unk_10023C4D0);
    v114 = 0;
    v40 = v34;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v39 = qword_1002B1CF0;
    v41 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v42 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v42 + 4);

    v43 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
    swift_beginAccess();
    v44 = *(v39 + v43);
    v45 = 1 << *(v44 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & *(v44 + 64);
    v36 = (v45 + 63) >> 6;

    v38 = 0;
    while (v47)
    {
LABEL_16:
      v50 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v51 = (*(v44 + 48) + 16 * (v50 | (v38 << 6)));
      v52 = *v51 == v40 && v51[1] == v35;
      if (v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        sub_100114BEC(v48, v40, v35, &v114, a1, a2, a3, a4);
      }
    }

    while (1)
    {
      v49 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v49 >= v36)
      {
        break;
      }

      v47 = *(v44 + 64 + 8 * v49);
      ++v38;
      if (v47)
      {
        v38 = v49;
        goto LABEL_16;
      }
    }

    v54 = *(v39 + v41);

    os_unfair_lock_unlock(v54 + 4);

    if (v114)
    {
      v55 = *(v39 + v41);

      os_unfair_lock_lock(v55 + 4);

      v56 = swift_allocObject();
      v57 = v41;
      v58 = v109;
      *(v56 + 16) = sub_100137354;
      *(v56 + 24) = v58;
      v59 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__rectOfInterestCompletions;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113 = *(v39 + v59);
      *(v39 + v59) = 0x8000000000000000;
      sub_1001EBB3C(sub_1001373A8, v56, v40, v35, isUniquelyReferenced_nonNull_native);

      *(v39 + v59) = v113;
      swift_endAccess();
      v61 = *(v39 + v57);

      os_unfair_lock_unlock(v61 + 4);

      sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
      v62 = v94;
      v63 = v93;
      v64 = v95;
      (*(v94 + 104))(v93, enum case for DispatchQoS.QoSClass.default(_:), v95);
      v110 = static OS_dispatch_queue.global(qos:)();
      (*(v62 + 8))(v63, v64);
      v65 = v96;
      static DispatchTime.now()();
      v66 = v97;
      + infix(_:_:)();
      v111 = *(v98 + 8);
      v67 = v99;
      (v111)(v65, v99);
      v68 = swift_allocObject();
      *(v68 + 16) = v40;
      *(v68 + 24) = v35;
      *(v68 + 32) = sub_100137354;
      *(v68 + 40) = v58;
      *(v68 + 48) = v89;
      aBlock[4] = sub_1001373DC;
      aBlock[5] = v68;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      aBlock[3] = &unk_1002780F0;
      v69 = _Block_copy(aBlock);

      v70 = v100;
      static DispatchQoS.unspecified.getter();
      v113 = _swiftEmptyArrayStorage;
      sub_1000BAAE8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000BAB30();
      v71 = v102;
      v72 = v105;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v73 = v110;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v69);

      (*(v104 + 8))(v71, v72);
      (*(v101 + 8))(v70, v103);
      (v111)(v66, v67);
      sub_1000BAA28(v108);
    }

    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v74 = v91;
    v75 = sub_100093DE8(v91, qword_1002A9110);
    v76 = v90;
    v77 = v92;
    (*(v90 + 16))(v92, v75, v74);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    v80 = os_log_type_enabled(v78, v79);
    LODWORD(v36) = v89;
    v38 = v110;
    if (v80)
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      aBlock[0] = v82;
      *v81 = 136315138;
      *(v81 + 4) = sub_1000952D4(v40, v35, aBlock);
      _os_log_impl(&_mh_execute_header, v78, v79, "No clients registered for config changes on %s", v81, 0xCu);
      sub_100095808(v82);

      (*(v76 + 8))(v92, v74);
    }

    else
    {

      (*(v76 + 8))(v77, v74);
    }

    v39 = v111;
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v47 = swift_allocError();
    *v83 = 0xD000000000000021;
    v83[1] = 0x8000000100231DC0;
    (*(v39 + 104))(v83, enum case for Errors.InvalidParameter(_:), v38);
    swift_willThrow();
  }

  else
  {
    (*(v39 + 32))(v26, v22, v38);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v47 = swift_allocError();
    (*(v39 + 16))(v53, v26, v38);
    swift_willThrow();
    (*(v39 + 8))(v26, v38);
    v40 = v34;
  }

  v84 = _convertErrorToNSError(_:)();
  v107[2](v107, 0, v84);

  if (qword_1002A6780 != -1)
  {
LABEL_35:
    swift_once();
  }

  aBlock[0] = v47;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  v85 = v106;
  v86 = swift_dynamicCast();
  (*(v39 + 56))(v85, v86 ^ 1u, 1, v38);
  sub_10018C604(v40, v35, v36, v85);

  sub_1000BAA28(v108);
  sub_100095C84(v85, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_10012DBF0(void *a1, uint64_t a2, uint64_t a3)
{
  v140 = a3;
  v135 = a1;
  v134 = type metadata accessor for Logger();
  v133 = *(v134 - 8);
  v3 = __chkstk_darwin(v134);
  v132 = &v115[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v3);
  v125 = &v115[-v6];
  v7 = __chkstk_darwin(v5);
  v126 = &v115[-v8];
  __chkstk_darwin(v7);
  v130 = &v115[-v9];
  v129 = type metadata accessor for ComponentType();
  v128 = *(v129 - 1);
  __chkstk_darwin(v129);
  v127 = &v115[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for UUID();
  v131 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v115[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v115[-v15];
  v17 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v18 = __chkstk_darwin(v17 - 8);
  v124 = &v115[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v136 = &v115[-v21];
  __chkstk_darwin(v20);
  v23 = &v115[-v22];
  v24 = type metadata accessor for Errors();
  v141 = *(v24 - 8);
  v142 = v24;
  __chkstk_darwin(v24);
  v143 = &v115[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = type metadata accessor for DKAPIUsageType();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v115[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = type metadata accessor for DKXPCClientApplication(0);
  __chkstk_darwin(v30);
  v32 = &v115[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010D498(v32);
  v33 = v32[2];
  if (v33)
  {
    v138 = v32[1];
    v139 = v33;
  }

  else
  {
    v138 = 0x6E776F6E6B6E75;
    v139 = 0xE700000000000000;
  }

  (*(v27 + 104))(v29, enum case for DKAPIUsageType.batteryStates(_:), v26);

  v137 = DKAPIUsageType.rawValue.getter();
  (*(v27 + 8))(v29, v26);
  sub_1000B5150(v32 + *(v30 + 24), v23, &unk_1002A6F30, &unk_10023C4D0);
  v35 = v141;
  v34 = v142;
  if ((*(v141 + 48))(v23, 1, v142) != 1)
  {
    v51 = v143;
    (*(v35 + 32))(v143, v23, v34);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v14 = swift_allocError();
    (*(v35 + 16))(v52, v51, v34);
    swift_willThrow();
    (*(v35 + 8))(v51, v34);
    goto LABEL_41;
  }

  result = sub_100095C84(v23, &unk_1002A6F30, &unk_10023C4D0);
  v37 = *v32;
  if (*v32)
  {
    v38 = v37;
    v39 = [v38 processIdentifier];
    if (!v135)
    {
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      v14 = swift_allocError();
      *v53 = 0xD000000000000014;
      v53[1] = 0x8000000100231D00;
      (*(v35 + 104))(v53, enum case for Errors.NilParams(_:), v34);
      swift_willThrow();

      goto LABEL_41;
    }

    v116 = v39;
    v118 = v37;
    v122 = v38;
    v123 = v32;
    v40 = qword_1002A6780;
    v143 = v135;
    if (v40 != -1)
    {
      swift_once();
    }

    v117 = qword_1002B1CF0;
    v41 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v119 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v42 = *&v41[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v120 = v41;
    v43 = v41;
    v44 = v42;
    OS_dispatch_semaphore.wait()();

    v45 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v121 = v43;
    v46 = *&v43[v45];
    v32 = *(v46 + 16);

    if (v32)
    {
      v35 = 0;
      v34 = v46 + 32;
      v47 = (v131 + 8);
      while (v35 < *(v46 + 16))
      {
        sub_1000A097C(v34, v144);
        v48 = *(*sub_1000A09E0(v144, v144[3]) + 24);
        DockCoreInfo.identifier.getter();

        DockCoreInfo.identifier.getter();
        LOBYTE(v48) = static UUID.== infix(_:_:)();
        v49 = *v47;
        (*v47)(v14, v11);
        v49(v16, v11);
        if (v48)
        {

          v54 = *&v120[v119];
          OS_dispatch_semaphore.signal()();

          sub_1000A097C(v144, &v145);
          sub_100095808(v144);
          goto LABEL_18;
        }

        ++v35;
        sub_100095808(v144);
        v34 += 40;
        if (v32 == v35)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_52;
    }

LABEL_14:

    v50 = *&v120[v119];
    OS_dispatch_semaphore.signal()();

    v147 = 0;
    v145 = 0u;
    v146 = 0u;
LABEL_18:

    v32 = v123;
    v35 = v141;
    v34 = v142;
    v55 = v134;
    v56 = v133;
    v57 = v132;
    if (*(&v146 + 1))
    {
      sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory(0);
      if (swift_dynamicCast())
      {
        v58 = v144[0];
        v59 = v128;
        v60 = v127;
        v61 = v129;
        (*(v128 + 104))(v127, enum case for ComponentType.Battery(_:), v129);
        v62 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sensorInfoMap;
        swift_beginAccess();
        v63 = *(v58 + v62);
        if (*(v63 + 16))
        {

          v64 = sub_10016D8E0(v60);
          if (v65)
          {
            v132 = v58;
            v66 = *(*(v63 + 56) + 8 * v64);
            v67 = *(v59 + 8);

            v67(v60, v61);

            if (*(v66 + 16))
            {
              if (qword_1002A66D8 != -1)
              {
                swift_once();
              }

              v68 = sub_100093DE8(v55, qword_1002A9110);
              v69 = v56 + 16;
              v70 = *(v56 + 16);
              v71 = v126;
              (v70)(v126, v68, v55);
              v72 = v143;

              v73 = Logger.logObject.getter();
              v74 = v56;
              v75 = static os_log_type_t.default.getter();

              v76 = os_log_type_enabled(v73, v75);
              v131 = v69;
              v130 = v68;
              v129 = v70;
              if (v76)
              {
                v77 = swift_slowAlloc();
                v78 = v72;
                v79 = swift_slowAlloc();
                v143 = swift_slowAlloc();
                v144[0] = v143;
                *v77 = 67109634;
                v80 = v116;
                *(v77 + 4) = v116;
                *(v77 + 8) = 2112;
                *(v77 + 10) = v78;
                *v79 = v135;
                *(v77 + 18) = 2080;
                v81 = v78;
                v82 = Array.description.getter();
                v84 = v83;

                v85 = sub_1000952D4(v82, v84, v144);
                v86 = v80;

                *(v77 + 20) = v85;
                _os_log_impl(&_mh_execute_header, v73, v75, "Client %d registering for battery events for %@, serviceUUID %s", v77, 0x1Cu);
                sub_100095C84(v79, &unk_1002A6F60, &unk_10023C4E0);
                v72 = v78;

                sub_100095808(v143);

                v87 = *(v133 + 8);
                v88 = v134;
                v87(v126, v134);
              }

              else
              {

                v87 = *(v74 + 8);
                v88 = v134;
                v87(v71, v134);
                v86 = v116;
              }

              v106 = v122;
              v107 = sub_100190898(v86, v118, v72);

              v108 = v72;
              if (v107)
              {
                v109 = v124;
                (*(v141 + 56))(v124, 1, 1, v142);
                sub_10018C604(v138, v139, v137, v109);

                sub_100095C84(v109, &unk_1002A6F30, &unk_10023C4D0);
                (*(v140 + 16))(v140, 0);

                return sub_1000BAA28(v32);
              }

              v143 = v72;
              v110 = v125;
              (v129)(v125, v130, v88);
              v111 = Logger.logObject.getter();
              v112 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v111, v112))
              {
                v113 = swift_slowAlloc();
                *v113 = 0;
                _os_log_impl(&_mh_execute_header, v111, v112, "Failed adding client to client list", v113, 2u);
                v110 = v125;
              }

              v87(v110, v88);
              sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
              v34 = v142;
              v14 = swift_allocError();
              *v114 = 0xD00000000000001CLL;
              v114[1] = 0x8000000100231D20;
              v102 = v141;
              (*(v141 + 104))(v114, enum case for Errors.UnexpectedError(_:), v34);
              swift_willThrow();

              goto LABEL_40;
            }

LABEL_35:
            if (qword_1002A66D8 != -1)
            {
              swift_once();
            }

            v97 = sub_100093DE8(v55, qword_1002A9110);
            (*(v56 + 16))(v130, v97, v55);
            v98 = Logger.logObject.getter();
            v99 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v98, v99))
            {
              v100 = swift_slowAlloc();
              *v100 = 0;
              _os_log_impl(&_mh_execute_header, v98, v99, "Accessory doesn't have a battery service", v100, 2u);
            }

            (*(v56 + 8))(v130, v55);
            sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
            v14 = swift_allocError();
            *v101 = 0xD000000000000012;
            v101[1] = 0x8000000100231D80;
            v102 = v141;
            (*(v141 + 104))(v101, enum case for Errors.NotFound(_:), v34);
            swift_willThrow();

LABEL_40:
            v35 = v102;

            goto LABEL_41;
          }
        }

        (*(v59 + 8))(v60, v61);
        goto LABEL_35;
      }
    }

    else
    {
      sub_100095C84(&v145, &unk_1002A6F40, &unk_10023BE90);
    }

    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v89 = sub_100093DE8(v55, qword_1002A9110);
    (*(v56 + 16))(v57, v89, v55);
    v90 = v143;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412290;
      *(v93 + 4) = v90;
      *v94 = v135;
      v95 = v90;
      _os_log_impl(&_mh_execute_header, v91, v92, "No matching record, can't lookup %@", v93, 0xCu);
      sub_100095C84(v94, &unk_1002A6F60, &unk_10023C4E0);

      v34 = v142;
    }

    (*(v56 + 8))(v57, v55);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v14 = swift_allocError();
    *v96 = 0xD000000000000015;
    v96[1] = 0x8000000100231D40;
    (*(v35 + 104))(v96, enum case for Errors.AccessoryNotReachable(_:), v34);
    swift_willThrow();

LABEL_41:
    if (qword_1002A6780 == -1)
    {
LABEL_42:
      v144[0] = v14;
      swift_errorRetain();
      sub_100095274(&qword_1002A7268, &unk_10023C680);
      v103 = v136;
      v104 = swift_dynamicCast();
      (*(v35 + 56))(v103, v104 ^ 1u, 1, v34);
      sub_10018C604(v138, v139, v137, v103);

      sub_100095C84(v103, &unk_1002A6F30, &unk_10023C4D0);
      v105 = _convertErrorToNSError(_:)();
      (*(v140 + 16))(v140, v105);

      return sub_1000BAA28(v32);
    }

LABEL_52:
    swift_once();
    goto LABEL_42;
  }

  __break(1u);
  return result;
}

void sub_10012EFB8(void *a1, void *a2, void (**a3)(void, void, void))
{
  v80 = a2;
  v88 = a1;
  v4 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v4 - 8);
  v79 = &v74 - v5;
  v89 = type metadata accessor for UUID();
  v81 = *(v89 - 8);
  v6 = __chkstk_darwin(v89);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v74 - v9;
  v11 = type metadata accessor for Logger();
  v82 = *(v11 - 8);
  v83 = v11;
  __chkstk_darwin(v11);
  v85 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v74 - v14;
  v16 = type metadata accessor for Errors();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v84 = (&v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v21 = &v74 - v20;
  v22 = type metadata accessor for DKXPCClientApplication(0);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = (&v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = swift_allocObject();
  v87 = a3;
  *(v86 + 16) = a3;
  _Block_copy(a3);
  sub_10010D498(v25);
  sub_1000B5150(v25 + *(v23 + 32), v15, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v21, v15, v16);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v17 + 16))(v49, v21, v16);
    v50 = _convertErrorToNSError(_:)();
    type metadata accessor for AccessoryBatteryState();
    isa = Array._bridgeToObjectiveC()().super.isa;
    (v87)[2](v87, isa, v50);

    (*(v17 + 8))(v21, v16);
    sub_1000BAA28(v25);
    goto LABEL_17;
  }

  v77 = v17;
  v78 = v16;
  sub_100095C84(v15, &unk_1002A6F30, &unk_10023C4D0);
  if (*v25)
  {
    v26 = *v25;
    v27 = [v26 processIdentifier];
    if (v88)
    {
      LODWORD(v28) = v27;
      v76 = v25;
      v29 = qword_1002A66D8;
      v88 = v88;
      if (v29 != -1)
      {
        goto LABEL_26;
      }

      while (1)
      {
        v30 = v83;
        v31 = sub_100093DE8(v83, qword_1002A9110);
        v32 = v82;
        (*(v82 + 16))(v85, v31, v30);
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 67109120;
          *(v35 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v33, v34, "Client %d requesting current battery data", v35, 8u);
        }

        v75 = v26;

        (*(v32 + 8))(v85, v30);
        if (qword_1002A6780 != -1)
        {
          swift_once();
        }

        v36 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
        v82 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
        v83 = v36;
        v37 = *&v36[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
        v38 = v36;
        v39 = v37;
        OS_dispatch_semaphore.wait()();

        v40 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
        swift_beginAccess();
        v85 = v38;
        v41 = *&v38[v40];
        v42 = *(v41 + 16);

        if (!v42)
        {
          break;
        }

        v43 = 0;
        v28 = v41 + 32;
        v26 = (v81 + 8);
        while (v43 < *(v41 + 16))
        {
          sub_1000A097C(v28, v90);
          v44 = *(*sub_1000A09E0(v90, v90[3]) + 24);
          DockCoreInfo.identifier.getter();

          DockCoreInfo.identifier.getter();
          LOBYTE(v44) = static UUID.== infix(_:_:)();
          v45 = *v26;
          v46 = v89;
          (*v26)(v8, v89);
          v45(v10, v46);
          if (v44)
          {
            v47 = v88;

            v58 = *&v83[v82];
            OS_dispatch_semaphore.signal()();

            sub_1000A097C(v90, &v91);
            sub_100095808(v90);
            goto LABEL_19;
          }

          ++v43;
          sub_100095808(v90);
          v28 += 40;
          if (v42 == v43)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_26:
        swift_once();
      }

LABEL_14:
      v47 = v88;

      v48 = *&v83[v82];
      OS_dispatch_semaphore.signal()();

      v93 = 0;
      v91 = 0u;
      v92 = 0u;
LABEL_19:

      v59 = v86;
      v60 = v87;
      v61 = v78;
      v62 = v77;
      v63 = v75;
      if (*(&v92 + 1))
      {
        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory(0);
        if (swift_dynamicCast())
        {
          v64 = v90[0];
          v65 = type metadata accessor for TaskPriority();
          v66 = v79;
          (*(*(v65 - 8) + 56))(v79, 1, 1, v65);
          v67 = swift_allocObject();
          v67[2] = 0;
          v67[3] = 0;
          v68 = v80;
          v67[4] = v80;
          v67[5] = v64;
          v67[6] = sub_1001371B8;
          v67[7] = v59;
          v69 = v68;

          sub_1001B6410(0, 0, v66, &unk_10023DE58, v67);

          sub_1000BAA28(v76);
          goto LABEL_24;
        }
      }

      else
      {
        sub_100095C84(&v91, &unk_1002A6F40, &unk_10023BE90);
      }

      v70 = v84;
      *v84 = 0xD000000000000011;
      v70[1] = 0x8000000100231D60;
      (*(v62 + 104))(v70, enum case for Errors.NotFound(_:), v61);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      (*(v62 + 16))(v71, v70, v61);
      v72 = _convertErrorToNSError(_:)();
      type metadata accessor for AccessoryBatteryState();
      v73 = Array._bridgeToObjectiveC()().super.isa;
      (v60)[2](v60, v73, v72);

      (*(v62 + 8))(v70, v61);
      sub_1000BAA28(v76);

      goto LABEL_24;
    }

    v52 = v84;
    *v84 = 0xD000000000000016;
    v52[1] = 0x8000000100231BD0;
    v53 = v77;
    v54 = v78;
    (*(v77 + 104))(v52, enum case for Errors.NilParams(_:), v78);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v53 + 16))(v55, v52, v54);
    v56 = _convertErrorToNSError(_:)();
    type metadata accessor for AccessoryBatteryState();
    v57 = Array._bridgeToObjectiveC()().super.isa;
    (v87)[2](v87, v57, v56);

    (*(v53 + 8))(v52, v54);
    sub_1000BAA28(v25);
LABEL_17:

LABEL_24:

    return;
  }

  _Block_release(v87);
  __break(1u);
}

uint64_t sub_10012FB40(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v3 = type metadata accessor for Logger();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for ComponentType();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return (_swift_task_switch)(sub_10012FC5C, 0, 0);
}

uint64_t sub_10012FC5C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[8];
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1001F365C(_swiftEmptyArrayStorage);
  (*(v2 + 104))(v1, enum case for ComponentType.Battery(_:), v3);
  v6 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sensorInfoMap;
  swift_beginAccess();
  v7 = *(v4 + v6);
  if (*(v7 + 16))
  {
    v8 = v0[14];

    v9 = sub_10016D8E0(v8);
    if (v10)
    {
      v11 = v0[14];
      v12 = v0[12];
      v13 = *(*(v7 + 56) + 8 * v9);
      v14 = *(v0[13] + 8);

      v14(v11, v12);

      v15 = *(v13 + 16);
      if (v15)
      {
        v16 = (v13 + 48);
        do
        {
          v18 = *(v16 - 2);
          v17 = *(v16 - 1);
          v19 = *v16;
          v20 = qword_1002A6760;
          swift_bridgeObjectRetain_n();
          v21 = v19;
          if (v20 != -1)
          {
            swift_once();
          }

          v22 = v0[8];
          v23 = qword_1002B1C78;

          sub_1001AECE0(v23, v21, v22, v5, v18, v17);
          swift_bridgeObjectRelease_n();

          v16 += 3;
          --v15;
        }

        while (v15);
      }

      swift_beginAccess();
      v37 = *(v5 + 16);

      v38 = v0[1];

      return v38(v37);
    }
  }

  (*(v0[13] + 8))(v0[14], v0[12]);
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v25 = v0[10];
  v24 = v0[11];
  v26 = v0[9];
  v27 = sub_100093DE8(v26, qword_1002A9110);
  (*(v25 + 16))(v24, v27, v26);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Accessory does not have a battery service, cannot read", v30, 2u);
  }

  v32 = v0[10];
  v31 = v0[11];
  v33 = v0[9];

  (*(v32 + 8))(v31, v33);
  sub_1000B346C();
  swift_allocError();
  *v34 = 1;
  swift_willThrow();

  v35 = v0[1];

  return v35();
}

uint64_t sub_100130068(void *a1, uint64_t a2, uint64_t a3)
{
  v145 = a1;
  v146 = a3;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v141 = v3;
  v142 = v4;
  v5 = __chkstk_darwin(v3);
  v143 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v134 = &v124 - v8;
  v9 = __chkstk_darwin(v7);
  v140 = &v124 - v10;
  __chkstk_darwin(v9);
  v136 = &v124 - v11;
  v138 = type metadata accessor for ComponentType();
  v137 = *(v138 - 1);
  __chkstk_darwin(v138);
  v135 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v139 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v124 - v17;
  v19 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v19 - 8);
  v21 = &v124 - v20;
  v22 = type metadata accessor for Errors();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v144 = (&v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v27 = &v124 - v26;
  v28 = type metadata accessor for DKXPCClientApplication(0);
  v29 = v28 - 8;
  __chkstk_darwin(v28);
  v31 = (&v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v31);
  v32 = *(v29 + 32);
  v33 = v23;
  v34 = v22;
  sub_1000B5150(v31 + v32, v21, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v33 + 48))(v21, 1, v22) != 1)
  {
    (*(v33 + 32))(v27, v21, v22);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v33 + 16))(v54, v27, v22);
    v55 = _convertErrorToNSError(_:)();
    (*(v146 + 16))(v146, v55);

    (*(v33 + 8))(v27, v34);
    goto LABEL_36;
  }

  v35 = v146;
  result = sub_100095C84(v21, &unk_1002A6F30, &unk_10023C4D0);
  v37 = *v31;
  if (*v31)
  {
    v38 = v37;
    v39 = [v38 processIdentifier];
    if (v145)
    {
      v126 = v39;
      v125 = v37;
      v131 = v38;
      v127 = v33;
      v133 = v31;
      v132 = v22;
      v40 = qword_1002A6780;
      v147 = v145;
      if (v40 != -1)
      {
        goto LABEL_46;
      }

      while (1)
      {
        v124 = qword_1002B1CF0;
        v41 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
        v128 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
        v42 = *&v41[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
        v129 = v41;
        v43 = v41;
        v44 = v42;
        OS_dispatch_semaphore.wait()();

        v45 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
        swift_beginAccess();
        v130 = v43;
        v46 = *&v43[v45];
        v47 = *(v46 + 16);

        if (!v47)
        {
          break;
        }

        v48 = 0;
        v49 = v46 + 32;
        v50 = (v139 + 8);
        while (v48 < *(v46 + 16))
        {
          sub_1000A097C(v49, v148);
          v51 = *(*sub_1000A09E0(v148, v148[3]) + 24);
          DockCoreInfo.identifier.getter();

          DockCoreInfo.identifier.getter();
          LOBYTE(v51) = static UUID.== infix(_:_:)();
          v52 = *v50;
          (*v50)(v16, v13);
          v52(v18, v13);
          if (v51)
          {

            v61 = *&v129[v128];
            OS_dispatch_semaphore.signal()();

            sub_1000A097C(v148, &v149);
            sub_100095808(v148);
            goto LABEL_14;
          }

          ++v48;
          sub_100095808(v148);
          v49 += 40;
          if (v47 == v48)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_46:
        swift_once();
      }

LABEL_10:

      v53 = *&v129[v128];
      OS_dispatch_semaphore.signal()();

      v151 = 0;
      v149 = 0u;
      v150 = 0u;
LABEL_14:

      v62 = v146;
      v63 = v132;
      v31 = v133;
      v65 = v141;
      v64 = v142;
      v66 = v140;
      if (*(&v150 + 1))
      {
        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory(0);
        if (swift_dynamicCast())
        {
          v67 = v148[0];
          v68 = v135;
          (*(v137 + 104))(v135, enum case for ComponentType.Battery(_:), v138);
          v69 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_sensorInfoMap;
          swift_beginAccess();
          v143 = v67;
          v70 = *(v67 + v69);
          if (*(v70 + 16))
          {

            v71 = sub_10016D8E0(v68);
            if (v72)
            {
              v73 = *(*(v70 + 56) + 8 * v71);
              v74 = v68;
              v75 = *(v137 + 8);

              v75(v74, v138);

              if (*(v73 + 16))
              {
                if (qword_1002A66D8 != -1)
                {
                  swift_once();
                }

                v76 = sub_100093DE8(v65, qword_1002A9110);
                v78 = v64 + 16;
                v77 = *(v64 + 16);
                v77(v66, v76, v65);
                v79 = v147;

                v80 = Logger.logObject.getter();
                v81 = static os_log_type_t.default.getter();

                v82 = os_log_type_enabled(v80, v81);
                v147 = v79;
                v139 = v76;
                v138 = v77;
                if (v82)
                {
                  v83 = swift_slowAlloc();
                  v137 = v78;
                  v84 = v83;
                  v85 = swift_slowAlloc();
                  v86 = swift_slowAlloc();
                  v148[0] = v86;
                  *v84 = 67109634;
                  *(v84 + 4) = v126;
                  *(v84 + 8) = 2112;
                  *(v84 + 10) = v79;
                  *v85 = v145;
                  *(v84 + 18) = 2080;
                  v87 = v79;
                  v88 = Array.description.getter();
                  v90 = v89;

                  v91 = v88;
                  v65 = v141;
                  v92 = sub_1000952D4(v91, v90, v148);

                  *(v84 + 20) = v92;
                  _os_log_impl(&_mh_execute_header, v80, v81, "Client %d de-registering for battery data for %@, UUID %s", v84, 0x1Cu);
                  sub_100095C84(v85, &unk_1002A6F60, &unk_10023C4E0);
                  v93 = v126;
                  v94 = v133;

                  sub_100095808(v86);
                  v63 = v132;

                  v95 = *(v142 + 8);
                  v95(v140, v65);
                }

                else
                {

                  v95 = *(v142 + 8);
                  v95(v66, v65);
                  v93 = v126;
                  v94 = v133;
                }

                v115 = v131;
                v116 = sub_1001940D4(v93, v125);

                if (v116)
                {
                  (*(v146 + 16))(v146, 0);

                  return sub_1000BAA28(v94);
                }

                v138(v134, v139, v65);
                v117 = Logger.logObject.getter();
                v118 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v117, v118))
                {
                  v119 = swift_slowAlloc();
                  *v119 = 0;
                  _os_log_impl(&_mh_execute_header, v117, v118, "Failed removing client from client list", v119, 2u);
                }

                v95(v134, v65);
                v120 = v144;
                *v144 = 0xD000000000000020;
                v120[1] = 0x8000000100231BF0;
                v121 = v127;
                (*(v127 + 104))(v120, enum case for Errors.UnexpectedError(_:), v63);
                sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
                swift_allocError();
                (*(v121 + 16))(v122, v120, v63);
                v123 = _convertErrorToNSError(_:)();
                (*(v146 + 16))(v146, v123);

                (*(v121 + 8))(v120, v63);
                sub_1000BAA28(v94);
              }

              v31 = v133;
              goto LABEL_31;
            }
          }

          (*(v137 + 8))(v68, v138);
LABEL_31:
          if (qword_1002A66D8 != -1)
          {
            swift_once();
          }

          v107 = sub_100093DE8(v65, qword_1002A9110);
          (*(v64 + 16))(v136, v107, v65);
          v108 = Logger.logObject.getter();
          v109 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            *v110 = 0;
            _os_log_impl(&_mh_execute_header, v108, v109, "Accessory doesn't have a battery service", v110, 2u);
          }

          (*(v64 + 8))(v136, v65);
          v111 = v144;
          *v144 = 0xD000000000000012;
          v111[1] = 0x8000000100231D80;
          v112 = v127;
          (*(v127 + 104))(v111, enum case for Errors.NotFound(_:), v63);
          sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
          swift_allocError();
          (*(v112 + 16))(v113, v111, v63);
          v114 = _convertErrorToNSError(_:)();
          (*(v62 + 16))(v62, v114);

          (*(v112 + 8))(v111, v63);
          goto LABEL_36;
        }
      }

      else
      {
        sub_100095C84(&v149, &unk_1002A6F40, &unk_10023BE90);
      }

      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v96 = sub_100093DE8(v65, qword_1002A9110);
      (*(v64 + 16))(v143, v96, v65);
      v97 = v147;
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *v100 = 138412290;
        *(v100 + 4) = v97;
        *v101 = v145;
        v102 = v97;
        _os_log_impl(&_mh_execute_header, v98, v99, "No matching record, can't lookup %@", v100, 0xCu);
        sub_100095C84(v101, &unk_1002A6F60, &unk_10023C4E0);
      }

      (*(v64 + 8))(v143, v65);
      v103 = v144;
      *v144 = 0xD000000000000015;
      v103[1] = 0x8000000100231D40;
      v104 = v127;
      (*(v127 + 104))(v103, enum case for Errors.AccessoryNotReachable(_:), v63);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      (*(v104 + 16))(v105, v103, v63);
      v106 = _convertErrorToNSError(_:)();
      (*(v62 + 16))(v62, v106);

      (*(v104 + 8))(v103, v63);
      goto LABEL_36;
    }

    v56 = v144;
    *v144 = 0xD000000000000016;
    v56[1] = 0x8000000100231BD0;
    (*(v33 + 104))(v56, enum case for Errors.NilParams(_:), v34);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v33 + 16))(v57, v56, v34);
    v58 = _convertErrorToNSError(_:)();
    v59 = v35;
    v60 = v58;
    (*(v59 + 16))(v59, v58);

    (*(v33 + 8))(v56, v34);
LABEL_36:
    sub_1000BAA28(v31);
  }

  __break(1u);
  return result;
}

uint64_t sub_100131318(void *a1, uint64_t a2, unint64_t a3)
{
  v105 = a3;
  v100 = a1;
  v98 = type metadata accessor for Logger();
  v99 = *(v98 - 8);
  v3 = __chkstk_darwin(v98);
  v97 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v94 = &v85 - v6;
  __chkstk_darwin(v5);
  v95 = &v85 - v7;
  v8 = type metadata accessor for UUID();
  v96 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v85 - v12;
  v14 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v15 = __chkstk_darwin(v14 - 8);
  v93 = (&v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v101 = (&v85 - v18);
  __chkstk_darwin(v17);
  v20 = &v85 - v19;
  v21 = type metadata accessor for Errors();
  v22 = *(v21 - 8);
  v106 = v21;
  v107 = v22;
  __chkstk_darwin(v21);
  v108 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DKAPIUsageType();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DKXPCClientApplication(0);
  __chkstk_darwin(v28);
  v30 = (&v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v30);
  v31 = v30[2];
  if (v31)
  {
    v103 = v30[1];
    v104 = v31;
  }

  else
  {
    v103 = 0x6E776F6E6B6E75;
    v104 = 0xE700000000000000;
  }

  (*(v25 + 104))(v27, enum case for DKAPIUsageType.trackingStates(_:), v24);

  v102 = DKAPIUsageType.rawValue.getter();
  (*(v25 + 8))(v27, v24);
  sub_1000B5150(v30 + *(v28 + 24), v20, &unk_1002A6F30, &unk_10023C4D0);
  v32 = v106;
  v33 = v107;
  if ((*(v107 + 48))(v20, 1, v106) != 1)
  {
    v49 = v108;
    (*(v33 + 32))(v108, v20, v32);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v13 = swift_allocError();
    (*(v33 + 16))(v50, v49, v32);
    swift_willThrow();
    (*(v33 + 8))(v49, v32);
    goto LABEL_17;
  }

  result = sub_100095C84(v20, &unk_1002A6F30, &unk_10023C4D0);
  v35 = *v30;
  if (*v30)
  {
    v87 = *v30;
    v36 = v35;
    v37 = [v36 processIdentifier];
    if (v100)
    {
      v86 = v37;
      v91 = v36;
      v92 = v30;
      v38 = qword_1002A6780;
      v108 = v100;
      if (v38 != -1)
      {
        swift_once();
      }

      v85 = qword_1002B1CF0;
      v39 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      v88 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
      v40 = *&v39[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
      v89 = v39;
      v41 = v39;
      v42 = v40;
      OS_dispatch_semaphore.wait()();

      v43 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
      swift_beginAccess();
      v90 = v41;
      v30 = *&v41[v43];
      v44 = v30[2];

      if (v44)
      {
        v45 = 0;
        v33 = (v30 + 4);
        v32 = (v96 + 8);
        while (v45 < v30[2])
        {
          sub_1000A097C(v33, v109);
          v46 = *(*sub_1000A09E0(v109, v109[3]) + 24);
          DockCoreInfo.identifier.getter();

          DockCoreInfo.identifier.getter();
          LOBYTE(v46) = static UUID.== infix(_:_:)();
          v47 = *v32;
          (*v32)(v11, v8);
          v47(v13, v8);
          if (v46)
          {

            v52 = *&v89[v88];
            OS_dispatch_semaphore.signal()();

            sub_1000A097C(v109, &v110);
            sub_100095808(v109);
            goto LABEL_19;
          }

          ++v45;
          sub_100095808(v109);
          v33 += 40;
          if (v44 == v45)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_14:

      v48 = *&v89[v88];
      OS_dispatch_semaphore.signal()();

      v112 = 0;
      v110 = 0u;
      v111 = 0u;
LABEL_19:

      v8 = v104;
      v45 = v105;
      v30 = v92;
      v33 = v107;
      v53 = v98;
      v54 = v99;
      if (*(&v111 + 1))
      {
        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory(0);
        v55 = swift_dynamicCast();
        v32 = v106;
        if (v55)
        {

          if (qword_1002A66D8 != -1)
          {
            swift_once();
          }

          v56 = sub_100093DE8(v53, qword_1002A9110);
          v57 = *(v54 + 16);
          v97 = v56;
          v96 = v57;
          (v57)(v95);
          v58 = v108;
          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            *v61 = 67109378;
            *(v61 + 4) = v86;
            *(v61 + 8) = 2112;
            *(v61 + 10) = v58;
            *v62 = v100;
            v63 = v58;
            _os_log_impl(&_mh_execute_header, v59, v60, "Client %d registering for tracking states for %@", v61, 0x12u);
            sub_100095C84(v62, &unk_1002A6F60, &unk_10023C4E0);

            v32 = v106;
          }

          v64 = *(v99 + 8);
          v65 = v98;
          v99 += 8;
          v64(v95, v98);
          v66 = v91;
          v67 = sub_1001915E4(v86, v87, v58);

          if (v67)
          {
            v68 = v93;
            (*(v107 + 56))(v93, 1, 1, v32);
            sub_10018C604(v103, v8, v102, v68);

            sub_100095C84(v68, &unk_1002A6F30, &unk_10023C4D0);
            (*(v45 + 16))(v45, 0);

            v30 = v92;
LABEL_35:
            (*(v45 + 16))(v45, 0);
            return sub_1000BAA28(v30);
          }

          v80 = v66;
          (v96)(v94, v97, v65);
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            *v83 = 0;
            _os_log_impl(&_mh_execute_header, v81, v82, "Failed adding client to client list", v83, 2u);
            v32 = v106;
          }

          v64(v94, v98);
          sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
          v13 = swift_allocError();
          *v84 = 0xD00000000000001CLL;
          v84[1] = 0x8000000100231D20;
          v33 = v107;
          (*(v107 + 104))(v84, enum case for Errors.UnexpectedError(_:), v32);
          swift_willThrow();

          v30 = v92;
LABEL_33:
          if (qword_1002A6780 == -1)
          {
LABEL_34:
            *&v110 = v13;
            swift_errorRetain();
            sub_100095274(&qword_1002A7268, &unk_10023C680);
            v77 = v101;
            v78 = swift_dynamicCast();
            (*(v33 + 56))(v77, v78 ^ 1u, 1, v32);
            sub_10018C604(v103, v8, v102, v77);

            sub_100095C84(v77, &unk_1002A6F30, &unk_10023C4D0);
            v79 = _convertErrorToNSError(_:)();
            (*(v45 + 16))(v45, v79);

            goto LABEL_35;
          }

LABEL_40:
          swift_once();
          goto LABEL_34;
        }
      }

      else
      {
        sub_100095C84(&v110, &unk_1002A6F40, &unk_10023BE90);
        v32 = v106;
      }

      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v69 = sub_100093DE8(v53, qword_1002A9110);
      (*(v54 + 16))(v97, v69, v53);
      v70 = v108;
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138412290;
        *(v73 + 4) = v70;
        *v74 = v100;
        v75 = v70;
        _os_log_impl(&_mh_execute_header, v71, v72, "No matching record, can't lookup %@", v73, 0xCu);
        sub_100095C84(v74, &unk_1002A6F60, &unk_10023C4E0);
        v33 = v107;

        v32 = v106;
      }

      (*(v54 + 8))(v97, v53);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      v13 = swift_allocError();
      *v76 = 0xD000000000000015;
      v76[1] = 0x8000000100231D40;
      (*(v33 + 104))(v76, enum case for Errors.AccessoryNotReachable(_:), v32);
      swift_willThrow();

      goto LABEL_33;
    }

    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v13 = swift_allocError();
    *v51 = 0xD000000000000014;
    v51[1] = 0x8000000100231D00;
    (*(v33 + 104))(v51, enum case for Errors.NilParams(_:), v32);
    swift_willThrow();

LABEL_17:
    v8 = v104;
    v45 = v105;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

void sub_1001322D4(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v80 = a1;
  v82 = type metadata accessor for UUID();
  v75 = *(v82 - 8);
  v4 = __chkstk_darwin(v82);
  v81 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v69 - v6;
  v79 = type metadata accessor for Logger();
  v77 = *(v79 - 1);
  __chkstk_darwin(v79);
  v78 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v69 - v10;
  v12 = type metadata accessor for Errors();
  v13 = *(v12 - 1);
  v14 = __chkstk_darwin(v12);
  v76 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v17 = &v69 - v16;
  v18 = type metadata accessor for DKXPCClientApplication(0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = (&v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v21);
  sub_1000B5150(v21 + *(v19 + 32), v11, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v17, v11, v12);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v13 + 16))(v45, v17, v12);
    v46 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v46);

    (*(v13 + 8))(v17, v12);
    sub_1000BAA28(v21);
LABEL_26:

    return;
  }

  v73 = v13;
  v74 = a3;
  sub_100095C84(v11, &unk_1002A6F30, &unk_10023C4D0);
  if (!*v21)
  {
    _Block_release(v74);
    __break(1u);
    return;
  }

  v22 = *v21;
  v23 = [v22 processIdentifier];
  if (!v80)
  {
    v47 = v76;
    *v76 = 0xD000000000000016;
    v47[1] = 0x8000000100231BD0;
    v48 = v73;
    (*(v73 + 104))(v47, enum case for Errors.NilParams(_:), v12);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v48 + 16))(v49, v47, v12);
    v50 = _convertErrorToNSError(_:)();
    (*(v74 + 2))(v74, 0, v50);

    (*(v48 + 8))(v47, v12);
    v51 = v21;
LABEL_25:
    sub_1000BAA28(v51);
    goto LABEL_26;
  }

  LODWORD(v24) = v23;
  v70 = v22;
  v25 = qword_1002A66D8;
  v80 = v80;
  if (v25 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v26 = v79;
    v27 = sub_100093DE8(v79, qword_1002A9110);
    (*(v77 + 16))(v78, v27, v26);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67109120;
      *(v30 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v28, v29, "Client %d requesting current tracking state data", v30, 8u);
    }

    v71 = v12;
    v72 = v21;

    (*(v77 + 8))(v78, v79);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v77 = qword_1002B1CF0;
    v31 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v78 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v32 = *&v31[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v33 = v31;
    v34 = v31;
    v35 = v32;
    OS_dispatch_semaphore.wait()();

    v36 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v79 = v34;
    v24 = *&v34[v36];
    v37 = *(v24 + 16);

    if (!v37)
    {
      break;
    }

    v21 = 0;
    v38 = v24 + 32;
    v12 = (v75 + 8);
    while (v21 < *(v24 + 16))
    {
      sub_1000A097C(v38, v83);
      v39 = *(*sub_1000A09E0(v83, v83[3]) + 24);
      DockCoreInfo.identifier.getter();

      v40 = v81;
      DockCoreInfo.identifier.getter();
      LOBYTE(v39) = static UUID.== infix(_:_:)();
      v41 = *v12;
      v42 = v40;
      v43 = v82;
      (*v12)(v42, v82);
      v41(v7, v43);
      if (v39)
      {

        v52 = *&v78[v33];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(v83, &v84);
        sub_100095808(v83);
        goto LABEL_18;
      }

      v21 = (v21 + 1);
      sub_100095808(v83);
      v38 += 40;
      if (v37 == v21)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

LABEL_14:

  v44 = *&v78[v33];
  OS_dispatch_semaphore.signal()();

  v86 = 0;
  v84 = 0u;
  v85 = 0u;
LABEL_18:

  v53 = v74;
  v54 = v71;
  v55 = v73;
  v56 = v70;
  if (!*(&v85 + 1))
  {
    sub_100095C84(&v84, &unk_1002A6F40, &unk_10023BE90);
    goto LABEL_24;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v66 = v76;
    *v76 = 0xD000000000000011;
    v66[1] = 0x8000000100231D60;
    (*(v55 + 104))(v66, enum case for Errors.NotFound(_:), v54);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v55 + 16))(v67, v66, v54);
    v68 = _convertErrorToNSError(_:)();
    v53[2](v53, 0, v68);

    (*(v55 + 8))(v66, v54);
    v51 = v72;
    goto LABEL_25;
  }

  v57 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v58 = v77;
  v59 = *(v77 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v59 + 4);

  v60 = *(v58 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingSummary);
  v61 = *(v58 + v57);

  os_unfair_lock_unlock(v61 + 4);

  if (v60)
  {

    v62 = dispatch thunk of TrackingSummaryInternal.encode()();
    v64 = v63;

    if (v64 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }
  }

  else
  {
    isa = 0;
    v62 = 0;
    v64 = 0xF000000000000000;
  }

  (v53)[2](v53, isa, 0);

  sub_1000A452C(v62, v64);

  sub_1000BAA28(v72);
}

uint64_t sub_100132D84(void *a1, uint64_t a2, uint64_t a3)
{
  v106 = a1;
  v107 = a3;
  v105 = type metadata accessor for Logger();
  v102 = *(v105 - 8);
  v3 = __chkstk_darwin(v105);
  v103 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v99 = &v89 - v6;
  __chkstk_darwin(v5);
  v100 = &v89 - v7;
  v8 = type metadata accessor for UUID();
  v101 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v89 - v12;
  v14 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v89 - v15;
  v17 = type metadata accessor for Errors();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v104 = (&v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v22 = &v89 - v21;
  v23 = type metadata accessor for DKXPCClientApplication(0);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = (&v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v26);
  v27 = *(v24 + 32);
  v28 = v18;
  sub_1000B5150(v26 + v27, v16, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    (*(v18 + 32))(v22, v16, v17);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v18 + 16))(v48, v22, v17);
    v49 = _convertErrorToNSError(_:)();
    (*(v107 + 16))(v107, v49);

    (*(v18 + 8))(v22, v17);
    goto LABEL_13;
  }

  v29 = v107;
  result = sub_100095C84(v16, &unk_1002A6F30, &unk_10023C4D0);
  v31 = *v26;
  if (*v26)
  {
    v32 = v31;
    v33 = [v32 processIdentifier];
    if (v106)
    {
      v91 = v33;
      v90 = v31;
      v95 = v32;
      v96 = v26;
      v97 = v28;
      v98 = v17;
      v34 = qword_1002A6780;
      v108 = v106;
      if (v34 != -1)
      {
        goto LABEL_35;
      }

      while (1)
      {
        v89 = qword_1002B1CF0;
        v35 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
        v92 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
        v36 = *&v35[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
        v93 = v35;
        v37 = v35;
        v38 = v36;
        OS_dispatch_semaphore.wait()();

        v39 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
        swift_beginAccess();
        v94 = v37;
        v40 = *&v37[v39];
        v41 = *(v40 + 16);

        if (!v41)
        {
          break;
        }

        v42 = 0;
        v43 = v40 + 32;
        v44 = (v101 + 8);
        while (v42 < *(v40 + 16))
        {
          sub_1000A097C(v43, v109);
          v45 = *(*sub_1000A09E0(v109, v109[3]) + 24);
          DockCoreInfo.identifier.getter();

          DockCoreInfo.identifier.getter();
          LOBYTE(v45) = static UUID.== infix(_:_:)();
          v46 = *v44;
          (*v44)(v11, v8);
          v46(v13, v8);
          if (v45)
          {

            v53 = *&v93[v92];
            OS_dispatch_semaphore.signal()();

            sub_1000A097C(v109, &v110);
            sub_100095808(v109);
            goto LABEL_15;
          }

          ++v42;
          sub_100095808(v109);
          v43 += 40;
          if (v41 == v42)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_35:
        swift_once();
      }

LABEL_10:

      v47 = *&v93[v92];
      OS_dispatch_semaphore.signal()();

      v112 = 0;
      v110 = 0u;
      v111 = 0u;
LABEL_15:

      v54 = v98;
      v55 = v97;
      v56 = v105;
      v57 = v102;
      if (*(&v111 + 1))
      {
        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory(0);
        v58 = swift_dynamicCast();
        v59 = v107;
        if (v58)
        {

          if (qword_1002A66D8 != -1)
          {
            swift_once();
          }

          v60 = sub_100093DE8(v56, qword_1002A9110);
          v61 = *(v57 + 16);
          v61(v100, v60, v56);
          v62 = v108;
          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            *v65 = 67109378;
            *(v65 + 4) = v91;
            *(v65 + 8) = 2112;
            *(v65 + 10) = v62;
            *v66 = v106;
            v67 = v62;
            _os_log_impl(&_mh_execute_header, v63, v64, "Client %d de-registering for tracking state data for %@", v65, 0x12u);
            sub_100095C84(v66, &unk_1002A6F60, &unk_10023C4E0);

            v56 = v105;
          }

          v68 = *(v102 + 8);
          v68(v100, v56);
          v69 = v95;
          v70 = sub_1001943E0(v91, v90);

          if (v70)
          {
            (*(v59 + 16))(v59, 0);

            return sub_1000BAA28(v96);
          }

          v61(v99, v60, v56);
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            *v83 = 0;
            _os_log_impl(&_mh_execute_header, v81, v82, "Failed removing client from client list", v83, 2u);
            v56 = v105;
          }

          v68(v99, v56);
          v84 = v104;
          *v104 = 0xD000000000000020;
          v84[1] = 0x8000000100231BF0;
          v85 = v97;
          v86 = v98;
          (*(v97 + 104))(v84, enum case for Errors.UnexpectedError(_:), v98);
          sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
          swift_allocError();
          (*(v85 + 16))(v87, v84, v86);
          v88 = _convertErrorToNSError(_:)();
          (*(v59 + 16))(v59, v88);

          (*(v85 + 8))(v84, v86);
          goto LABEL_29;
        }
      }

      else
      {
        sub_100095C84(&v110, &unk_1002A6F40, &unk_10023BE90);
        v59 = v107;
      }

      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v71 = sub_100093DE8(v56, qword_1002A9110);
      (*(v57 + 16))(v103, v71, v56);
      v72 = v108;
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v75 = 138412290;
        *(v75 + 4) = v72;
        *v76 = v106;
        v77 = v72;
        _os_log_impl(&_mh_execute_header, v73, v74, "No matching record, can't lookup %@", v75, 0xCu);
        sub_100095C84(v76, &unk_1002A6F60, &unk_10023C4E0);
        v56 = v105;
      }

      (*(v57 + 8))(v103, v56);
      v78 = v104;
      *v104 = 0xD000000000000015;
      v78[1] = 0x8000000100231D40;
      (*(v55 + 104))(v78, enum case for Errors.AccessoryNotReachable(_:), v54);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      (*(v55 + 16))(v79, v78, v54);
      v80 = _convertErrorToNSError(_:)();
      (*(v59 + 16))(v59, v80);

      (*(v55 + 8))(v78, v54);
LABEL_29:
      sub_1000BAA28(v96);
    }

    v50 = v104;
    *v104 = 0xD000000000000016;
    v50[1] = 0x8000000100231BD0;
    (*(v28 + 104))(v50, enum case for Errors.NilParams(_:), v17);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v28 + 16))(v51, v50, v17);
    v52 = _convertErrorToNSError(_:)();
    (*(v29 + 16))(v29, v52);

    (*(v28 + 8))(v50, v17);
LABEL_13:
    sub_1000BAA28(v26);
  }

  __break(1u);
  return result;
}

uint64_t sub_100133B60(void *a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v70 = a1;
  v73 = type metadata accessor for Logger();
  v78 = *(v73 - 8);
  v3 = __chkstk_darwin(v73);
  v69 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v71 = &v63 - v5;
  v6 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v7 = __chkstk_darwin(v6 - 8);
  v68 = (&v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v72 = (&v63 - v10);
  __chkstk_darwin(v9);
  v12 = &v63 - v11;
  v13 = type metadata accessor for Errors();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DKAPIUsageType();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DKXPCClientApplication(0);
  __chkstk_darwin(v21);
  v23 = (&v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v23);
  v24 = v23[2];
  if (v24)
  {
    v75 = v23[1];
    v76 = v24;
  }

  else
  {
    v75 = 0x6E776F6E6B6E75;
    v76 = 0xE700000000000000;
  }

  (*(v18 + 104))(v20, enum case for DKAPIUsageType.accessoryEvents(_:), v17);

  v25 = DKAPIUsageType.rawValue.getter();
  (*(v18 + 8))(v20, v17);
  sub_1000B5150(v23 + *(v21 + 24), v12, &unk_1002A6F30, &unk_10023C4D0);
  v26 = (*(v14 + 48))(v12, 1, v13);
  p_cb = (&OBJC_PROTOCOL___DKLogging + 64);
  v74 = v25;
  if (v26 != 1)
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v52 = swift_allocError();
    (*(v14 + 16))(v53, v16, v13);
    swift_willThrow();
    (*(v14 + 8))(v16, v13);
    goto LABEL_20;
  }

  result = sub_100095C84(v12, &unk_1002A6F30, &unk_10023C4D0);
  v29 = *v23;
  if (*v23)
  {
    v30 = v29;
    v31 = [v30 processIdentifier];
    v32 = v70;
    if (v70)
    {
      v33 = v31;
      v66 = v30;
      v34 = qword_1002A66D8;
      v35 = v70;
      if (v34 != -1)
      {
        swift_once();
      }

      v36 = sub_100093DE8(v73, qword_1002A9110);
      v37 = *(v78 + 16);
      v64 = v36;
      v65 = v78 + 16;
      v63 = v37;
      (v37)(v71);
      v38 = v35;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      v67 = v38;

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = v32;
        v44 = v42;
        *v41 = 67109378;
        *(v41 + 4) = v33;
        *(v41 + 8) = 2112;
        v45 = v67;
        *(v41 + 10) = v67;
        *v42 = v43;
        v46 = v45;
        _os_log_impl(&_mh_execute_header, v39, v40, "Client %d registering for system events for %@", v41, 0x12u);
        sub_100095C84(v44, &unk_1002A6F60, &unk_10023C4E0);
      }

      v47 = *(v78 + 8);
      v78 += 8;
      v47(v71, v73);
      v48 = v66;
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v49 = v48;
      v50 = sub_10019068C(v33, v29);

      if (v50)
      {
        v51 = v68;
        (*(v14 + 56))(v68, 1, 1, v13);
        sub_10018C604(v75, v76, v74, v51);

        sub_100095C84(v51, &unk_1002A6F30, &unk_10023C4D0);
        (*(v77 + 16))(v77, 0);

        return sub_1000BAA28(v23);
      }

      v55 = v69;
      v63(v69, v64, v73);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Failed adding client to client list", v58, 2u);
      }

      v47(v55, v73);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      v52 = swift_allocError();
      *v59 = 0xD00000000000001CLL;
      v59[1] = 0x8000000100231D20;
      (*(v14 + 104))(v59, enum case for Errors.UnexpectedError(_:), v13);
      swift_willThrow();

      p_cb = &OBJC_PROTOCOL___DKLogging.cb;
    }

    else
    {
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      v52 = swift_allocError();
      *v54 = 0xD000000000000014;
      v54[1] = 0x8000000100231D00;
      (*(v14 + 104))(v54, enum case for Errors.NilParams(_:), v13);
      swift_willThrow();
    }

LABEL_20:
    if (*(p_cb + 240) != -1)
    {
      swift_once();
    }

    v79 = v52;
    swift_errorRetain();
    sub_100095274(&qword_1002A7268, &unk_10023C680);
    v60 = v72;
    v61 = swift_dynamicCast();
    (*(v14 + 56))(v60, v61 ^ 1u, 1, v13);
    sub_10018C604(v75, v76, v74, v60);

    sub_100095C84(v60, &unk_1002A6F30, &unk_10023C4D0);
    v62 = _convertErrorToNSError(_:)();
    (*(v77 + 16))(v77, v62);

    return sub_1000BAA28(v23);
  }

  __break(1u);
  return result;
}

void sub_100134530(void *a1, void *a2, void (**a3)(void, void, void))
{
  v81 = a2;
  v89 = a1;
  v4 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v4 - 8);
  v80 = &v74 - v5;
  v84 = type metadata accessor for UUID();
  v82 = *(v84 - 8);
  v6 = __chkstk_darwin(v84);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v74 - v9;
  v85 = type metadata accessor for Logger();
  v87 = *(v85 - 8);
  __chkstk_darwin(v85);
  v86 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v74 - v13;
  v15 = type metadata accessor for Errors();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v83 = (&v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v20 = &v74 - v19;
  v21 = type metadata accessor for DKXPCClientApplication(0);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v24 = (&v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  v88 = a3;
  _Block_copy(a3);
  sub_10010D498(v24);
  v26 = *(v22 + 32);
  v27 = v24;
  sub_1000B5150(v24 + v26, v14, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v14, v15);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v16 + 16))(v48, v20, v15);
    v49 = _convertErrorToNSError(_:)();
    (v88)[2](v88, 0, v49);

    (*(v16 + 8))(v20, v15);
    sub_1000BAA28(v24);

LABEL_23:

    return;
  }

  v79 = v25;
  sub_100095C84(v14, &unk_1002A6F30, &unk_10023C4D0);
  if (*v24)
  {
    v28 = *v24;
    v29 = [v28 processIdentifier];
    v31 = v84;
    v30 = v85;
    if (v89)
    {
      LODWORD(v32) = v29;
      v75 = v28;
      v76 = v24;
      v78 = v15;
      v33 = qword_1002A66D8;
      v89 = v89;
      if (v33 != -1)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v34 = sub_100093DE8(v30, qword_1002A9110);
        (*(v87 + 2))(v86, v34, v30);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 67109120;
          *(v37 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v35, v36, "Client %d requesting current system event data", v37, 8u);
        }

        v77 = v16;

        (*(v87 + 1))(v86, v30);
        if (qword_1002A6780 != -1)
        {
          swift_once();
        }

        v38 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
        v85 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
        v86 = v38;
        v39 = *&v38[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
        v40 = v38;
        v41 = v39;
        OS_dispatch_semaphore.wait()();

        v42 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
        swift_beginAccess();
        v87 = v40;
        v32 = *&v40[v42];
        v43 = *(v32 + 16);

        if (!v43)
        {
          break;
        }

        v30 = 0;
        v44 = v32 + 32;
        v16 = v82 + 8;
        while (v30 < *(v32 + 16))
        {
          sub_1000A097C(v44, v90);
          v45 = *(*sub_1000A09E0(v90, v90[3]) + 24);
          DockCoreInfo.identifier.getter();

          DockCoreInfo.identifier.getter();
          LOBYTE(v45) = static UUID.== infix(_:_:)();
          v46 = *v16;
          (*v16)(v8, v31);
          v46(v10, v31);
          if (v45)
          {

            v53 = *&v86[v85];
            OS_dispatch_semaphore.signal()();

            sub_1000A097C(v90, &v91);
            sub_100095808(v90);
            goto LABEL_18;
          }

          ++v30;
          sub_100095808(v90);
          v44 += 40;
          if (v43 == v30)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_25:
        swift_once();
      }

LABEL_14:

      v47 = *&v86[v85];
      OS_dispatch_semaphore.signal()();

      v93 = 0;
      v91 = 0u;
      v92 = 0u;
LABEL_18:

      v54 = v88;
      v55 = v77;
      v56 = v79;
      if (*(&v92 + 1))
      {
        sub_100095274(&unk_1002A7A90, &unk_10023C960);
        type metadata accessor for DaemonAccessory(0);
        if (swift_dynamicCast())
        {
          v57 = v90[0];
          v58 = type metadata accessor for TaskPriority();
          v59 = v80;
          (*(*(v58 - 8) + 56))(v80, 1, 1, v58);
          v60 = swift_allocObject();
          v60[2] = 0;
          v60[3] = 0;
          v61 = v81;
          v60[4] = v81;
          v60[5] = v57;
          v60[6] = sub_1000A11BC;
          v60[7] = v56;
          v62 = v61;

          sub_1001B6A08(0, 0, v59, &unk_10023DE30, v60);
        }
      }

      else
      {
        sub_100095C84(&v91, &unk_1002A6F40, &unk_10023BE90);
      }

      *&v91 = 0;
      *(&v91 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      *&v91 = 0xD000000000000020;
      *(&v91 + 1) = 0x8000000100231C20;
      v63 = v89;
      v64 = [v89 description];
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      v68._countAndFlagsBits = v65;
      v68._object = v67;
      String.append(_:)(v68);

      v69 = *(&v91 + 1);
      v70 = v83;
      *v83 = v91;
      v70[1] = v69;
      v71 = v78;
      (*(v55 + 104))(v70, enum case for Errors.NotFound(_:), v78);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      (*(v55 + 16))(v72, v70, v71);
      v73 = _convertErrorToNSError(_:)();
      (v54)[2](v54, 0, v73);

      (*(v55 + 8))(v70, v71);
      sub_1000BAA28(v76);
    }

    else
    {
      v50 = v83;
      *v83 = 0xD000000000000016;
      v50[1] = 0x8000000100231BD0;
      (*(v16 + 104))(v50, enum case for Errors.NilParams(_:), v15);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      (*(v16 + 16))(v51, v50, v15);
      v52 = _convertErrorToNSError(_:)();
      (v88)[2](v88, 0, v52);

      (*(v16 + 8))(v50, v15);
      sub_1000BAA28(v27);
    }

    goto LABEL_23;
  }

  _Block_release(v88);
  __break(1u);
}

uint64_t sub_100135094(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return (_swift_task_switch)(sub_100135154, 0, 0);
}

uint64_t sub_100135154(uint64_t a1, uint64_t a2)
{
  v3 = *(v2[4] + 32);
  v2[8] = v3;
  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      v7 = [v5 primaryAccessory];
      if (v7)
      {
        v8 = v7;
        v37 = v6;
        v9 = objc_opt_self();
        sub_100095274(&unk_1002A73A0, &qword_10023C670);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_10023C170;
        *(v10 + 56) = &type metadata for UInt32;
        *(v10 + 64) = &protocol witness table for UInt32;
        *(v10 + 32) = 266;
        String.init(format:_:)();
        v11 = String._bridgeToObjectiveC()();

        v12 = [v9 UUIDWithString:v11];

        v13 = [v12 UUIDString];
        if (!v13)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = String._bridgeToObjectiveC()();
        }

        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_10023C170;
        *(v14 + 56) = &type metadata for UInt32;
        *(v14 + 64) = &protocol witness table for UInt32;
        *(v14 + 32) = 256;
        String.init(format:_:)();
        v15 = String._bridgeToObjectiveC()();

        v16 = [v9 UUIDWithString:v15];

        v17 = [v16 UUIDString];
        if (!v17)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = String._bridgeToObjectiveC()();
        }

        v18 = [v8 characteristicOfType:v13 serviceType:{v17, 1, 2}];
        v2[9] = v18;

        v6 = v37;
        if (v18)
        {
          v19 = v2[4];
          v20 = swift_task_alloc();
          v2[10] = v20;
          v20[2] = v5;
          v20[3] = v18;
          v20[4] = v19;
          v21 = swift_task_alloc();
          v2[11] = v21;
          v22 = sub_100095274(&qword_1002A92D8, &qword_10023DE40);
          *v21 = v2;
          v21[1] = sub_100135624;

          return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2 + 2, 0, 0, 0xD000000000000017, 0x8000000100231C70, sub_10013708C, v20, v22);
        }
      }

      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v23 = v2[6];
      v24 = v2[7];
      v25 = v2[5];
      v26 = sub_100093DE8(v25, qword_1002A9110);
      (*(v23 + 16))(v24, v26, v25);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v2[6];
      v31 = v2[7];
      v32 = v2[5];
      if (v29)
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Accessory does not contain a System Events characteristic!", v33, 2u);

        v34 = v27;
      }

      else
      {
        v34 = v6;
        v6 = v27;
      }

      (*(v30 + 8))(v31, v32);
    }
  }

  v35 = v2[1];

  return v35(0, 0xF000000000000000);
}

uint64_t sub_100135624()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1001357BC;
  }

  else
  {

    v2 = sub_100135740;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_100135740()
{
  v1 = *(v0 + 64);

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  v4 = *(v0 + 8);

  return v4(v3, v2);
}

uint64_t sub_1001357BC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100135840(void *a1, uint64_t a2, uint64_t a3)
{
  v64 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v65 = v4;
  v66 = v5;
  v6 = __chkstk_darwin(v4);
  v62 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v55 - v8;
  v10 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v55 - v11;
  v13 = type metadata accessor for Errors();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v63 = (&v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v18 = &v55 - v17;
  v19 = type metadata accessor for DKXPCClientApplication(0);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = (&v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v22);
  sub_1000B5150(v22 + *(v20 + 32), v12, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v18, v12, v13);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v14 + 16))(v43, v18, v13);
    v44 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, v44);

    (*(v14 + 8))(v18, v13);
LABEL_17:
    sub_1000BAA28(v22);
  }

  result = sub_100095C84(v12, &unk_1002A6F30, &unk_10023C4D0);
  v24 = *v22;
  if (*v22)
  {
    v25 = v24;
    v26 = [v25 processIdentifier];
    v27 = v64;
    if (v64)
    {
      v60 = v26;
      v58 = v25;
      v59 = a3;
      v28 = qword_1002A66D8;
      v29 = v64;
      if (v28 != -1)
      {
        swift_once();
      }

      v30 = sub_100093DE8(v65, qword_1002A9110);
      v56 = *(v66 + 16);
      v57 = v30;
      v56(v9);
      v31 = v29;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      v61 = v31;

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = v27;
        v37 = v35;
        *v34 = 67109378;
        *(v34 + 4) = v60;
        *(v34 + 8) = 2112;
        v38 = v61;
        *(v34 + 10) = v61;
        *v35 = v36;
        v39 = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "Client %d de-registering for event data for %@", v34, 0x12u);
        sub_100095C84(v37, &unk_1002A6F60, &unk_10023C4E0);
      }

      v40 = *(v66 + 8);
      v66 += 8;
      v40(v9, v65);
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v41 = v58;
      v42 = sub_1001940C8(v60, v24);

      if (v42)
      {
        (*(v59 + 16))(v59, 0);

        return sub_1000BAA28(v22);
      }

      v48 = v62;
      (v56)(v62, v57, v65);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Failed removing client from client list", v51, 2u);
      }

      v40(v48, v65);
      v52 = v63;
      *v63 = 0xD000000000000020;
      v52[1] = 0x8000000100231BF0;
      (*(v14 + 104))(v52, enum case for Errors.UnexpectedError(_:), v13);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      (*(v14 + 16))(v53, v52, v13);
      v54 = _convertErrorToNSError(_:)();
      (*(v59 + 16))(v59, v54);

      (*(v14 + 8))(v52, v13);
    }

    else
    {
      v45 = v63;
      *v63 = 0xD000000000000016;
      v45[1] = 0x8000000100231BD0;
      (*(v14 + 104))(v45, enum case for Errors.NilParams(_:), v13);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      (*(v14 + 16))(v46, v45, v13);
      v47 = _convertErrorToNSError(_:)();
      (*(a3 + 16))(a3, v47);

      (*(v14 + 8))(v45, v13);
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}