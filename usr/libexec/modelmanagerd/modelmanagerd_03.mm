uint64_t sub_10004D094(uint64_t a1, uint64_t a2, uint64_t a3)
{
}

void sub_10004D0BC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log, int a10, os_log_type_t a11)
{

  _os_log_impl(a1, log, a11, a4, v11, 0x16u);
}

uint64_t sub_10004D0E4()
{
  sub_10000C6C0(v1, 1, v0);
}

uint64_t sub_10004D130()
{
}

uint64_t sub_10004D164(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  if (*(v3 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed) == 1)
  {
    v9 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100002D24();
    swift_beginAccess();
    sub_10004D420(v9 + v5, v5, a1, a2, a3 & 1, &v26);
    result = swift_endAccess();
    if (!v4)
    {
      return v26;
    }
  }

  else
  {
    if (qword_1001B8938 != -1)
    {
      sub_100005C90();
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000641C(v11, qword_1001BB478);
    sub_100003170();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      sub_1000033D0();
      v15 = swift_slowAlloc();
      v25[0] = v15;
      *v14 = 136315138;
      type metadata accessor for InferenceProviderAssetDescriptor();
      sub_100005168();
      sub_100011B5C(v16, v17, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = sub_100004A3C(v18, v19, v25);

      *(v14 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "Tried to move asset %s to dynamic mode that does not support it", v14, 0xCu);
      sub_100003324(v15);
      sub_100002BD0();

      sub_1000039CC();
    }

    type metadata accessor for ModelManagerError();
    sub_100011B5C(&qword_1001B8F50, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    swift_allocError();
    v22 = v21;
    *v21 = InferenceProviderAssetDescriptor.identifier.getter();
    v22[1] = v23;
    sub_100006098();
    (*(v24 + 104))(v22);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10004D404()
{
}

uint64_t sub_10004D420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v223 = a6;
  v220 = a5;
  v219 = a4;
  v221 = a3;
  v8 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  __chkstk_darwin(v8 - 8);
  v222 = (&v206 - v9);
  v10 = type metadata accessor for InferenceProviderDescriptor();
  v226 = *(v10 - 8);
  __chkstk_darwin(v10);
  v225 = &v206 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for LoadState();
  v227 = *(State - 8);
  v12 = v227[8];
  v13 = __chkstk_darwin(State);
  v14 = &v206 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v206 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v206 - v19;
  v21 = __chkstk_darwin(v18);
  v228 = &v206 - v22;
  __chkstk_darwin(v21);
  v24 = &v206 - v23;
  v25 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  if (*(a1 + *(v25 + 52)))
  {
    if (qword_1001B8938 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000641C(v26, qword_1001BB478);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_12;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v229 = v30;
    *v29 = 136315138;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = sub_100004A3C(v31, v32, &v229);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v27, v28, "Tried to move invalidated asset to dynamic mode: %s", v29, 0xCu);
    sub_100003324(v30);

LABEL_11:

LABEL_12:

    v51 = type metadata accessor for ModelManagerError();
    sub_100011B5C(&qword_1001B8F50, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    swift_allocError();
    (*(*(v51 - 8) + 104))(v52, enum case for ModelManagerError.internalError(_:), v51);
    return swift_willThrow();
  }

  v34 = v25;
  v35 = *(v25 + 28);
  v36 = *(a1 + v35);
  v218 = v10;
  if (v36)
  {
    if (qword_1001B8938 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000641C(v37, qword_1001BB478);

    v27 = Logger.logObject.getter();
    v38 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v27, v38))
    {
      goto LABEL_12;
    }

    v39 = swift_slowAlloc();
    v229 = swift_slowAlloc();
    *v39 = 136315394;
    type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = sub_100004A3C(v40, v41, &v229);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2080;
    v43 = *(a2 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v44 = *(a2 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100003370((a2 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v43);
    v45 = v225;
    (*(v44 + 8))(v43, v44);
    sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
    v46 = v218;
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    (*(v226 + 8))(v45, v46);
    v50 = sub_100004A3C(v47, v49, &v229);

    *(v39 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v27, v38, "unloadIfNecessary called with pending transition task for %s with %s", v39, 0x16u);
    swift_arrayDestroy();

    goto LABEL_11;
  }

  v213 = v20;
  v211 = v35;
  v216 = a2;
  v217 = v24;
  v55 = (v227 + 2);
  v54 = v227[2];
  v56 = v24;
  v57 = State;
  v54(v56, a1, State);
  v58 = *(v34 + 20);
  v214 = v55;
  v215 = v58;
  v59 = v228;
  v60 = v57;
  v61 = v217;
  v54(v228, a1 + v58, v60);
  if (sub_100116D68(v61, v59))
  {
    v62 = *(*(a1 + *(v34 + 48)) + 16);
    v63 = v216;
    if (v62)
    {
      if (qword_1001B8938 != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      sub_10000641C(v64, qword_1001BB478);

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v229 = swift_slowAlloc();
        *v67 = 136315650;
        type metadata accessor for InferenceProviderAssetDescriptor();
        sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
        v68 = dispatch thunk of CustomStringConvertible.description.getter();
        v70 = sub_100004A3C(v68, v69, &v229);

        *(v67 + 4) = v70;
        *(v67 + 12) = 2080;
        v71 = *(v63 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
        v72 = *(v63 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
        sub_100003370((v63 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v71);
        v73 = v225;
        (*(v72 + 8))(v71, v72);
        sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
        v74 = v218;
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v77 = v76;
        (*(v226 + 8))(v73, v74);
        v78 = sub_100004A3C(v75, v77, &v229);
        v61 = v217;

        *(v67 + 14) = v78;
        *(v67 + 22) = 2048;
        *(v67 + 24) = v62;
        _os_log_impl(&_mh_execute_header, v65, v66, "Not moving asset %s to dynamic mode in %s: in use by %ld execution groups", v67, 0x20u);
        swift_arrayDestroy();
      }

      v79 = State;
      sub_1000DA26C();
      swift_allocError();
      *v80 = 0;
      v80[1] = 0;
      swift_willThrow();
      v81 = v227[1];
      v81(v228, v79);
      return (v81)(v61, v79);
    }

    else
    {
      v208 = v54;
      v212 = a1;
      if (qword_1001B8938 != -1)
      {
        swift_once();
      }

      v116 = type metadata accessor for Logger();
      v117 = sub_10000641C(v116, qword_1001BB478);

      v210 = v117;
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.default.getter();

      v120 = os_log_type_enabled(v118, v119);
      v121 = v213;
      if (v120)
      {
        v122 = swift_slowAlloc();
        v207 = v119;
        v123 = v122;
        v209 = swift_slowAlloc();
        v229 = v209;
        *v123 = 136315394;
        v206 = v118;
        type metadata accessor for InferenceProviderAssetDescriptor();
        sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
        v124 = dispatch thunk of CustomStringConvertible.description.getter();
        v126 = sub_100004A3C(v124, v125, &v229);

        *(v123 + 4) = v126;
        *(v123 + 12) = 2080;
        v127 = *(v63 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
        v128 = *(v63 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
        sub_100003370((v63 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v127);
        v129 = v225;
        (*(v128 + 8))(v127, v128);
        sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
        v130 = v218;
        v131 = dispatch thunk of CustomStringConvertible.description.getter();
        v133 = v132;
        (*(v226 + 8))(v129, v130);
        v134 = sub_100004A3C(v131, v133, &v229);

        *(v123 + 14) = v134;
        v135 = v206;
        _os_log_impl(&_mh_execute_header, v206, v207, "moveToDynamicModeIfNecessary entering for asset %s with %s", v123, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v136 = v227;
      v137 = v227[13];
      v207 = enum case for LoadState.dynamicMode(_:);
      v138 = State;
      v209 = v137;
      v137(v121);
      sub_100011B5C(&qword_1001BA468, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
      v139 = dispatch thunk of static Equatable.== infix(_:_:)();
      v141 = v136[1];
      v140 = v136 + 1;
      v142 = v121;
      v143 = v138;
      v144 = v141;
      (v141)(v142, v138);
      if (v139)
      {
        v227 = v144;
        v145 = v216;

        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          v229 = swift_slowAlloc();
          *v148 = 136315394;
          type metadata accessor for InferenceProviderAssetDescriptor();
          sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
          v149 = dispatch thunk of CustomStringConvertible.description.getter();
          v151 = sub_100004A3C(v149, v150, &v229);

          *(v148 + 4) = v151;
          *(v148 + 12) = 2080;
          v152 = *(v145 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
          v153 = *(v145 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
          sub_100003370((v145 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v152);
          v154 = v225;
          (*(v153 + 8))(v152, v153);
          sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
          v155 = v218;
          v156 = dispatch thunk of CustomStringConvertible.description.getter();
          v158 = v157;
          (*(v226 + 8))(v154, v155);
          v159 = sub_100004A3C(v156, v158, &v229);

          *(v148 + 14) = v159;
          _os_log_impl(&_mh_execute_header, v146, v147, "Not moving asset %s to dynamic mode in %s: already in dynamic mode", v148, 0x16u);
          swift_arrayDestroy();

          v160 = v227;
          v161 = State;
          (v227)(v228, State);
          v162 = v217;
        }

        else
        {

          v160 = v227;
          v161 = State;
          (v227)(v228, State);
          v162 = v61;
        }

        result = v160(v162, v161);
        *v223 = 0;
      }

      else
      {
        v163 = v213;
        (v209)(v213, enum case for LoadState.unloaded(_:), v138);
        v164 = dispatch thunk of static Equatable.== infix(_:_:)();
        v165 = v144;
        (v144)(v163, v143);
        v166 = v140;
        if (v164)
        {
          v168 = v216;
          v167 = v217;
          v227 = v144;

          v169 = Logger.logObject.getter();
          v170 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v169, v170))
          {
            v171 = swift_slowAlloc();
            v229 = swift_slowAlloc();
            *v171 = 136315394;
            type metadata accessor for InferenceProviderAssetDescriptor();
            v215 = v166;
            sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
            v172 = dispatch thunk of CustomStringConvertible.description.getter();
            v174 = sub_100004A3C(v172, v173, &v229);

            *(v171 + 4) = v174;
            *(v171 + 12) = 2080;
            v175 = *(v168 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
            v176 = *(v168 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
            sub_100003370((v168 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v175);
            v177 = v225;
            (*(v176 + 8))(v175, v176);
            sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
            v178 = v218;
            v179 = dispatch thunk of CustomStringConvertible.description.getter();
            v181 = v180;
            (*(v226 + 8))(v177, v178);
            v182 = sub_100004A3C(v179, v181, &v229);
            v167 = v217;

            *(v171 + 14) = v182;
            _os_log_impl(&_mh_execute_header, v169, v170, "Attempting to move an unloaded asset %s to dynamic mode in %s", v171, 0x16u);
            swift_arrayDestroy();
          }

          v183 = State;
          v184 = v227;
          v185 = type metadata accessor for ModelManagerError();
          sub_100011B5C(&qword_1001B8F50, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
          swift_allocError();
          (*(*(v185 - 8) + 104))(v186, enum case for ModelManagerError.internalError(_:), v185);
          swift_willThrow();
          v184(v228, v183);
          return (v184)(v167, v183);
        }

        else
        {
          v187 = v212;
          v188 = v215;
          (v144)(v215 + v212, v143);
          (v209)(v188 + v187, v207, v143);
          v229 = 0;
          v230 = 0xE000000000000000;
          _StringGuts.grow(_:)(21);

          v229 = 0xD000000000000013;
          v230 = 0x8000000100176CF0;
          type metadata accessor for InferenceProviderAssetDescriptor();
          sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
          v189 = v216;
          v190._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v190);

          v225 = v230;
          v226 = v229;
          v191 = type metadata accessor for TaskPriority();
          sub_100009BFC(v222, 1, 1, v191);
          v192 = v213;
          v208(v213, v217, v143);
          v193 = sub_100011B5C(&qword_1001B8BB8, type metadata accessor for InferenceProviderAssetManager, &unk_100171CF0);
          v215 = v166;
          v194 = v193;
          v195 = v165;
          v196 = v227;
          v197 = (*(v227 + 80) + 48) & ~*(v227 + 80);
          v198 = (v12 + v197 + 7) & 0xFFFFFFFFFFFFFFF8;
          v199 = swift_allocObject();
          v200 = v221;
          *(v199 + 2) = v221;
          *(v199 + 3) = v194;
          *(v199 + 4) = v189;
          *(v199 + 5) = v200;
          v201 = v192;
          v202 = State;
          (v196[4])(&v199[v197], v201, State);
          v203 = &v199[v198];
          *v203 = v219;
          v203[8] = v220 & 1;
          swift_retain_n();

          sub_100128ED0();
          v205 = v204;
          v195(v228, v202);
          v195(v217, v202);
          *(v212 + v211) = v205;
          *v223 = v205;
        }
      }
    }
  }

  else
  {
    v212 = a1;
    v82 = v216;
    if (qword_1001B8938 != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    sub_10000641C(v83, qword_1001BB478);
    v84 = State;
    v54(v17, v61, State);
    v54(v14, v228, v84);

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      LODWORD(v223) = v86;
      v88 = v87;
      v224 = swift_slowAlloc();
      v229 = v224;
      *v88 = 136315906;
      sub_100011B5C(&qword_1001BA478, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
      v222 = v85;
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v90;
      v92 = v227[1];
      v221 = (v227 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v92(v17, State);
      v93 = sub_100004A3C(v89, v91, &v229);

      *(v88 + 4) = v93;
      *(v88 + 12) = 2080;
      v94 = v92;
      v95 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v96;
      v92(v14, State);
      v84 = State;
      v98 = sub_100004A3C(v95, v97, &v229);

      *(v88 + 14) = v98;
      *(v88 + 22) = 2080;
      type metadata accessor for InferenceProviderAssetDescriptor();
      sub_100011B5C(&qword_1001BA470, &type metadata accessor for InferenceProviderAssetDescriptor, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
      v99 = dispatch thunk of CustomStringConvertible.description.getter();
      v101 = sub_100004A3C(v99, v100, &v229);

      *(v88 + 24) = v101;
      *(v88 + 32) = 2080;
      v102 = *(v82 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
      v103 = *(v82 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
      sub_100003370((v82 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v102);
      v104 = *(v103 + 8);
      v105 = v225;
      v106 = v103;
      v61 = v217;
      v104(v102, v106);
      sub_100011B5C(&qword_1001B9C98, &type metadata accessor for InferenceProviderDescriptor, &protocol conformance descriptor for InferenceProviderDescriptor);
      v107 = v218;
      v108 = dispatch thunk of CustomStringConvertible.description.getter();
      v110 = v109;
      (*(v226 + 8))(v105, v107);
      v111 = sub_100004A3C(v108, v110, &v229);

      *(v88 + 34) = v111;
      v112 = v222;
      _os_log_impl(&_mh_execute_header, v222, v223, "moveToDynamicModeIfNecessary called with unmatching states (%s != %s) for %s with %s", v88, 0x2Au);
      swift_arrayDestroy();

      v113 = v227;
    }

    else
    {

      v113 = v227;
      v94 = v227[1];
      v94(v14, v84);
      v94(v17, v84);
    }

    (v113[3])(v215 + v212, v61, v84);
    v114 = type metadata accessor for ModelManagerError();
    sub_100011B5C(&qword_1001B8F50, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    swift_allocError();
    (*(*(v114 - 8) + 104))(v115, enum case for ModelManagerError.internalError(_:), v114);
    swift_willThrow();
    v94(v228, v84);
    return (v94)(v61, v84);
  }

  return result;
}

uint64_t sub_10004EE44()
{
  State = type metadata accessor for LoadState();
  sub_100002BDC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, State);

  return _swift_deallocObject(v0, v7 + 9, v4 | 7);
}

uint64_t sub_10004EF24()
{
  State = type metadata accessor for LoadState();
  sub_100002F44(State);
  sub_100018CEC();
  v3 = *(v0 + 40);
  v5 = v0 + v4;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10006FA64;
  sub_1000038D8();

  return sub_10004F050(v9, v10, v11, v12, v3, v13, v6, v7);
}

uint64_t sub_10004F050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 476) = a8;
  *(v8 + 176) = a6;
  *(v8 + 184) = a7;
  *(v8 + 160) = a4;
  *(v8 + 168) = a5;
  v10 = type metadata accessor for AssetCost();
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 - 8);
  *(v8 + 208) = swift_task_alloc();
  sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  *(v8 + 216) = swift_task_alloc();
  sub_100065020(&qword_1001BB408, &unk_100171DC0);
  *(v8 + 224) = swift_task_alloc();
  v11 = type metadata accessor for InferenceProviderDescriptor();
  *(v8 + 232) = v11;
  *(v8 + 240) = *(v11 - 8);
  *(v8 + 248) = swift_task_alloc();
  State = type metadata accessor for LoadState();
  *(v8 + 256) = State;
  *(v8 + 264) = *(State - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  v13 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  *(v8 + 288) = v13;
  *(v8 + 296) = *(v13 - 8);
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  sub_100065020(&qword_1001BB410, &unk_100172340);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();

  return _swift_task_switch(sub_10004F314, a5, 0);
}

uint64_t sub_10004F314()
{
  v117 = v1;
  v2 = *(v1 + 160);
  sub_100003978();
  sub_100009BFC(v3, v4, v5, v6);
  v7 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  *(v1 + 344) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
  v8 = v7 + v2;
  sub_100004BA0(v8, v1 + 136);
  v9 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  *(v1 + 352) = v9;
  sub_1000480AC(v8 + *(v9 + 60), v1 + 16);
  sub_100003370((v1 + 16), *(v1 + 40));
  v10 = sub_10000C9D8();
  v11(v10);
  if (v0)
  {
    sub_100003324((v1 + 16));
    *(v1 + 448) = v0;
    *(v1 + 456) = 0;
    if (qword_1001B8938 != -1)
    {
      sub_100005C90();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000641C(v12, qword_1001BB478);

    swift_errorRetain();
    v13 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (sub_100019C50())
    {
      v14 = *(v1 + 160);
      sub_1000033D0();
      v15 = swift_slowAlloc();
      v112 = sub_100003788();
      v116[0] = sub_1000080A4();
      *v15 = 136315650;
      type metadata accessor for InferenceProviderAssetDescriptor();
      sub_100005168();
      v18 = sub_100011B5C(v16, v17, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
      v19 = sub_100013430(v18);
      v21 = v20;
      sub_100004A3C(v19, v20, v116);
      sub_100013E7C();

      sub_100006534();
      v22 = (v14 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
      v24 = *(v14 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
      v23 = *(v14 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
      sub_100003370(v22, v24);
      sub_100003048();
      v25(v24, v23);
      sub_10000866C();
      sub_100011B5C(v26, v27, &protocol conformance descriptor for InferenceProviderDescriptor);
      sub_100003E14();
      dispatch thunk of CustomStringConvertible.description.getter();
      v28 = sub_10000F148();
      v29(v28);
      sub_100004A3C(v21, v23, v116);
      sub_100019498();

      sub_100011DD8();
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 24) = v30;
      *v112 = v30;
      sub_10003DD68();
      _os_log_impl(v31, v32, v33, v34, v15, 0x20u);
      sub_10000ECD8(v112, &qword_1001B8F68, &qword_10016FB80);
      sub_100002BD0();

      sub_10000BEE8(v35, v36, (&type metadata for Any + 1));
      sub_100002BD0();

      sub_100002BD0();
    }

    v37 = swift_task_alloc();
    *(v1 + 464) = v37;
    *v37 = v1;
    v38 = sub_10000A8D4(v37);

    return sub_100041158(v38, v39);
  }

  else
  {
    v108 = *(v1 + 336);
    v113 = *(v1 + 328);
    v100 = *(v1 + 312);
    v109 = *(v1 + 296);
    v115 = *(v1 + 288);
    v41 = *(v1 + 280);
    v111 = *(v1 + 272);
    v43 = *(v1 + 256);
    v42 = *(v1 + 264);
    v102 = v43;
    v44 = *(v1 + 240);
    v45 = *(v1 + 248);
    v92 = *(v1 + 232);
    v98 = *(v1 + 224);
    v99 = *(v1 + 216);
    v101 = *(v1 + 476);
    v103 = *(v1 + 176);
    v104 = *(v1 + 184);
    v46 = *(v1 + 160);
    sub_100003324((v1 + 16));
    type metadata accessor for RequestMetadata();
    UUIDIdentifier.init()();
    v47 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager;
    *(v1 + 360) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_telemetryManager;
    v48 = *(v46 + v47 + 32);
    v97 = *(v46 + v47 + 24);
    sub_100003370((v46 + v47), v97);
    v110 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
    *(v1 + 368) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_descriptor;
    v49 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
    v95 = v50;
    v96 = v49;
    v107 = v46;
    v57 = InferenceProviderAssetDescriptor.version.getter(v49, v50, v51, v52, v53, v54, v55, v56, v87, v89, v90, v91);
    v93 = v58;
    v94 = v57;
    v59 = enum case for LoadState.dynamicMode(_:);
    *(v1 + 472) = enum case for LoadState.dynamicMode(_:);
    v105 = v59;
    v106 = *(v42 + 104);
    *(v1 + 376) = v106;
    *(v1 + 384) = (v42 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v106(v41, v59, v43);
    v60 = (v46 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection);
    v62 = *(v46 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
    v61 = *(v46 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
    sub_100003370(v60, v62);
    sub_100003048();
    v63(v62, v61);
    v64 = InferenceProviderDescriptor.id.getter();
    v66 = v65;
    (*(v44 + 8))(v45, v92);
    sub_100003978();
    sub_100009BFC(v67, v68, v69, v70);
    sub_100065020(&qword_1001B94F0, &unk_100172060);
    sub_100003978();
    sub_100009BFC(v71, v72, v73, v74);
    *(v1 + 392) = type metadata accessor for AuditToken();
    sub_100003978();
    sub_100009BFC(v75, v76, v77, v78);
    LOBYTE(v88) = v101 & 1;
    *(v1 + 400) = (*(v48 + 40))(v100, v96, v95, v94, v93, v103, v41, v104, v88, v64, v66, v113, v98, v99, v97, v48);

    sub_10000ECD8(v99, &qword_1001BB3F8, &qword_100171D50);
    sub_10000ECD8(v98, &qword_1001BB408, &unk_100171DC0);
    sub_10000ECD8(v113, &qword_1001BB410, &unk_100172340);
    v79 = *(v42 + 8);
    *(v1 + 408) = v79;
    *(v1 + 416) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v79(v41, v102);
    sub_10000ECD8(v108, &qword_1001BB410, &unk_100172340);
    (*(v109 + 16))(v108, v100, v115);
    sub_100009BFC(v108, 0, 1, v115);
    v80 = v60[3];
    v81 = v60[4];
    sub_100003370(v60, v80);
    v106(v111, v105, v102);
    v82 = *(v81 + 40);

    v114 = (v82 + *v82);
    v83 = swift_task_alloc();
    *(v1 + 424) = v83;
    *v83 = v1;
    v83[1] = sub_100053144;
    v84 = *(v1 + 312);
    v85 = *(v1 + 272);
    v86 = *(v1 + 176);

    return v114(v107 + v110, v85, v86, v84, v80, v81);
  }
}

void sub_10004FAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000A274();
  v23 = v20;
  v24 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_100004CBC();
  swift_beginAccess();

  v26 = sub_100050530(v25, v20);
  v27 = sub_1000BF9CC(v26);

  v118 = v24;

  sub_10000D154();
  if ((sub_100050FF0(v28, v29, v30) & 0xC000000000000001) != 0)
  {
    v120 = v21;
    v31 = &_swiftEmptySetSingleton;
    v123 = &_swiftEmptySetSingleton;
    sub_1000DAF00();
    swift_retain_n();

    __CocoaSet.makeIterator()();
    while (1)
    {
      v32 = __CocoaSet.Iterator.next()();
      if (!v32)
      {
        break;
      }

      v121[0] = v32;
      type metadata accessor for InferenceProviderAsset(0);
      sub_1000358A4();
      swift_dynamicCast();
      sub_100004CBC();
      swift_beginAccess();
      type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);

      v33 = sub_10000CDA4();
      v35 = sub_1000521D4(v33, v34);

      v22 = v122[0];
      if (v35)
      {
        v43 = v31[2];
        if (v31[3] <= v43)
        {
          sub_100080444(v43 + 1, v36, v37, v38, v39, v40, v41, v42, v107[4], v108, v109, v110, v111, v112, v113, *(&v113 + 1), v114, v115, v116, v117, v118, v119, v120, v121[0], v121[1], v121[2], v121[3], v121[4], v121[5], v121[6], v121[7], v121[8]);
        }

        v31 = v123;
        Hasher.init(_seed:)();
        sub_10001214C(v121);
        Hasher._finalize()();
        v44 = _HashTable.nextHole(atOrAfter:)();
        sub_1000DAD98((v44 >> 3) & 0x1FFFFFFFFFFFFFF8);
        *(v31[6] + 8 * v45) = v22;
        ++v31[2];
      }

      else
      {
      }
    }

    sub_1000DB3C4();
    swift_bridgeObjectRelease_n();
    sub_1000DAF00();

    v21 = v120;
  }

  else
  {

    v46 = sub_100001F70();
    v31 = sub_100051EA0(v46, v47, v27);
  }

  v48 = sub_10005230C(v31, sub_1000527AC, v20);

  if (v48 && (*(v48 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed) & 1) == 0)
  {

    v50 = sub_1000527C8(v49, v20);
    v119 = sub_1000BF9CC(v50);
    v120 = v21;

    v51 = 1;
    swift_beginAccess();
    *&v52 = 136315394;
    v113 = v52;
    v116 = v48;
LABEL_14:
    v117 = v48;
    v53 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v48;
    sub_100004CBC();
    swift_beginAccess();
    v54 = *&v53[*(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 40)];
    v55 = v54 + 56;
    v56 = 1 << *(v54 + 32);
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    else
    {
      v57 = -1;
    }

    v58 = v57 & *(v54 + 56);
    v59 = (v56 + 63) >> 6;
    sub_10001E558();
    v60 = swift_bridgeObjectRetain_n();
    for (i = 0; v58; i = v62)
    {
      v62 = i;
LABEL_22:
      v63 = (*(v54 + 48) + ((v62 << 10) | (16 * __clz(__rbit64(v58)))));
      v51 = *v63;
      v22 = v63[1];
      v122[0] = *v63;
      v122[1] = v22;
      __chkstk_darwin(v60);
      v107[2] = v122;

      v64 = v120;
      v65 = sub_100009A9C(sub_10001609C, v107, v119);
      v120 = v64;
      if (v65)
      {

        v109 = *&v118[v23];
        v66 = v109;
        if ((v109 & 0xC000000000000001) != 0)
        {

          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          v67 = sub_100005B00();
          type metadata accessor for InferenceProviderAsset(v67);
          sub_1000056C4();
          sub_100011B14(&qword_1001B94B0, v68, &unk_1001720DC);
          sub_100005E98();
          Set.Iterator.init(_cocoa:)();
          v69 = v124;
          v55 = v125;
          v70 = v126;
          v71 = v127;
          v72 = v128;
        }

        else
        {
          v73 = -1 << *(v109 + 32);
          v55 = v109 + 56;
          v70 = ~v73;
          v74 = -v73;
          if (v74 < 64)
          {
            v75 = ~(-1 << v74);
          }

          else
          {
            v75 = -1;
          }

          v72 = v75 & *(v109 + 56);
          sub_10001E558();
          swift_bridgeObjectRetain_n();
          v71 = 0;
          v69 = v66;
        }

        v108 = v70;
        v76 = (v70 + 64) >> 6;
        v77 = v72;
        v111 = v69;
        while (1)
        {
          v112 = v71;
          if (v69 < 0)
          {
            v82 = __CocoaSet.Iterator.next()();
            if (!v82)
            {
              goto LABEL_62;
            }

            v121[12] = v82;
            type metadata accessor for InferenceProviderAsset(0);
            sub_1000358A4();
            swift_dynamicCast();
            v81 = v122[0];
            v110 = v77;
            if (!v122[0])
            {
              goto LABEL_62;
            }
          }

          else
          {
            v78 = v71;
            if (!v77)
            {
              while (1)
              {
                v71 = v78 + 1;
                if (__OFADD__(v78, 1))
                {
                  break;
                }

                if (v71 >= v76)
                {
                  goto LABEL_55;
                }

                ++v78;
                if (*(v55 + 8 * v71))
                {
                  goto LABEL_37;
                }
              }

              __break(1u);
              goto LABEL_64;
            }

LABEL_37:
            v110 = v77;
            sub_1000062A0();
            v77 = v80 & v79;

            if (!v81)
            {
              goto LABEL_62;
            }
          }

          v83 = v55;
          v115 = v81;
          if (InferenceProviderAssetDescriptor.identifier.getter() == v51 && v84 == v22)
          {

LABEL_48:
            v87 = sub_1000561C4();
            sub_100019334(v87);

            if (qword_1001B8930 != -1)
            {
              sub_100005154();
              swift_once();
            }

            v88 = type metadata accessor for Logger();
            sub_10000641C(v88, qword_1001BB110);
            v89 = v115;

            v22 = Logger.logObject.getter();
            static os_log_type_t.default.getter();
            sub_10000AC18();

            v51 = 1;
            if (os_log_type_enabled(v22, v83))
            {
              sub_100002F10();
              v90 = swift_slowAlloc();
              sub_100011828();
              v112 = swift_slowAlloc();
              v122[0] = v112;
              *v90 = v113;

              v91 = sub_100027434();

              v92 = sub_100005E98();
              sub_100004A3C(v92, v93, v94);
              sub_10000D0E8();

              *(v90 + 4) = v91;
              *(v90 + 12) = 2080;

              v95 = sub_100027434();

              v96 = sub_100005E98();
              sub_100004A3C(v96, v97, v98);
              sub_10000D0E8();
              v89 = v115;

              *(v90 + 14) = v95;
              _os_log_impl(&_mh_execute_header, v22, v83, "nextAssetToUnloadToMakeRoom wanted to unload %s, but needs to first unload blocker %s", v90, 0x16u);
              sub_10001E558();
              swift_arrayDestroy();
              sub_100061AD8();

              sub_100002BD0();
            }

            v48 = v89;
            goto LABEL_14;
          }

          v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v86)
          {
            goto LABEL_48;
          }

          v55 = v83;
          v69 = sub_1000561C4();
        }
      }

      v58 &= v58 - 1;
    }

    while (1)
    {
      v62 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v62 >= v59)
      {

        goto LABEL_54;
      }

      v58 = *(v55 + 8 * v62);
      ++i;
      if (v58)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_62:
    v69 = sub_1000561C4();
LABEL_55:
    sub_100019334(v69);

    if (qword_1001B8930 != -1)
    {
LABEL_64:
      sub_100005154();
      swift_once();
    }

    v99 = type metadata accessor for Logger();
    sub_10000641C(v99, qword_1001BB110);
    sub_10000A868();

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v100, v101))
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_10000A45C();
      v102 = swift_slowAlloc();
      v122[0] = v102;
      *v55 = 136315138;
      v103 = sub_100004A3C(v51, v22, v122);

      *(v55 + 4) = v103;
      _os_log_impl(&_mh_execute_header, v100, v101, "nextAssetToUnloadToMakeRoom found dynamicBlocker but couldn't get asset for it %s", v55, 0xCu);
      sub_100003324(v102);
      sub_1000039CC();

      sub_10000BFCC();
    }

    else
    {
    }

    type metadata accessor for ModelManagerError();
    sub_1000113B0();
    sub_100011B14(v104, v105, &protocol conformance descriptor for ModelManagerError);
    sub_100013D58();
    swift_allocError();
    sub_1000076C8();
    (*(v106 + 104))();
    swift_willThrow();
  }

LABEL_54:
  sub_100005874();
}

void *sub_100050530(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for LoadState();
  v6 = *(State - 8);
  __chkstk_darwin(State);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  __chkstk_darwin(v37);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) == 0)
  {

    v12 = sub_1000509E4(a1, a2);

    return v12;
  }

  v32 = v2;
  v11 = a2;
  v12 = &_swiftEmptySetSingleton;
  v52 = &_swiftEmptySetSingleton;
  v31 = v11;

  v36 = __CocoaSet.makeIterator()();
  HIDWORD(v35) = enum case for LoadState.loaded(_:);
  v33 = (v6 + 8);
  v34 = (v6 + 104);
  while (1)
  {
    v13 = __CocoaSet.Iterator.next()();
    if (!v13)
    {
      break;
    }

    v38 = v13;
    type metadata accessor for InferenceProviderAsset(0);
    swift_dynamicCast();
    v14 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v50;
    swift_beginAccess();
    sub_1000192DC(v14, v10);
    (*v34)(v8, HIDWORD(v35), State);
    sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v38 == v47 && v39 == v48)
    {
LABEL_15:

      goto LABEL_16;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
LABEL_16:
      (*v33)(v8, State);
      sub_100019338(v10);
LABEL_17:
      if (v14[*(v37 + 24)])
      {
        goto LABEL_18;
      }

      v26 = v50;
      v27 = v12[2];
      if (v12[3] <= v27)
      {
        sub_100080444(v27 + 1, v19, v20, v21, v22, v23, v24, v25, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, *v49, *&v49[8], *&v49[16], v50, v51);
      }

      v12 = v52;
      Hasher.init(_seed:)();
      sub_10001214C(&v38);
      Hasher._finalize()();
      v28 = _HashTable.nextHole(atOrAfter:)();
      *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v28;
      *(v12[6] + 8 * v28) = v26;
      ++v12[2];
    }

    else
    {
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v38 == v47 && v39 == v48)
      {
        goto LABEL_15;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v33)(v8, State);
      sub_100019338(v10);
      if (v18)
      {
        goto LABEL_17;
      }

LABEL_18:
    }
  }

  return v12;
}

void *sub_1000509E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  State = type metadata accessor for LoadState();
  v6 = *(State - 8);
  __chkstk_darwin(State);
  v50 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  __chkstk_darwin(v48);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  LOBYTE(v8) = *(a1 + 32);
  v10 = v8 & 0x3F;
  v11 = ((1 << v8) + 63) >> 6;
  v12 = 8 * v11;

  if (v10 > 0xD)
  {
    goto LABEL_33;
  }

  while (2)
  {
    v40 = a2;
    v41 = v3;
    v38 = &v37;
    __chkstk_darwin(v13);
    v39 = v11;
    v42 = &v37 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100011624(0, v11, v42);
    v43 = 0;
    v18 = 0;
    a2 = State;
    v19 = v52 + 56;
    v20 = 1 << *(v52 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v52 + 56);
    v11 = (v20 + 63) >> 6;
    HIDWORD(v47) = enum case for LoadState.loaded(_:);
    v45 = (v6 + 8);
    v46 = (v6 + 104);
    v3 = v50;
    v49 = v9;
    while (v22)
    {
      v23 = __clz(__rbit64(v22));
      v53 = (v22 - 1) & v22;
LABEL_12:
      v26 = v23 | (v18 << 6);
      v27 = *(v52 + 48);
      v44 = v26;
      v6 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + *(v27 + 8 * v26);
      swift_beginAccess();
      sub_1000192DC(v6, v9);
      (*v46)(v3, HIDWORD(v47), a2);
      sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);

      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v12 = v55;
      if (v56 == v54 && v57 == v55)
      {
        goto LABEL_23;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_24;
      }

      a2 = State;
      dispatch thunk of RawRepresentable.rawValue.getter();
      v30 = v50;
      dispatch thunk of RawRepresentable.rawValue.getter();
      v12 = v55;
      if (v56 == v54 && v57 == v55)
      {
LABEL_23:

LABEL_24:
        v3 = v50;
        a2 = State;
        (*v45)(v50, State);
        v9 = v49;
        sub_100019338(v49);
        goto LABEL_25;
      }

      HIDWORD(v37) = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v45)(v30, a2);
      v12 = v49;
      sub_100019338(v49);
      v3 = v30;
      v9 = v12;
      if ((v37 & 0x100000000) != 0)
      {
LABEL_25:
        v6 = *(v6 + *(v48 + 24));

        v22 = v53;
        if ((v6 & 1) == 0)
        {
          *(v42 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
          if (__OFADD__(v43++, 1))
          {
            __break(1u);
          }
        }
      }

      else
      {

        v22 = v53;
      }
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v11)
      {
        sub_1000120FC(v42, v39, v43, v52, v14, v15, v16, v17, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, State, v52, v53, v54, v55, v56, v57, v58[0]);
        v34 = v33;

        return v34;
      }

      v25 = *(v19 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v53 = (v25 - 1) & v25;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_33:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v36 = swift_slowAlloc();

  v34 = sub_1000D8870(v36, v11, v52, a2, sub_1000D7990);

  return v34;
}

void *sub_100050FF0(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  State = type metadata accessor for LoadState();
  v8 = *(State - 1);
  __chkstk_darwin(State);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v11 = __chkstk_darwin(v54);
  __chkstk_darwin(v11);
  v14 = &v43 - v13;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v51 = State;
    v52 = v12;
    v44 = v3;
    State = &_swiftEmptySetSingleton;
    v69 = &_swiftEmptySetSingleton;

    v43 = a2;

    v53 = __CocoaSet.makeIterator()();
    HIDWORD(v50) = enum case for LoadState.loaded(_:);
    v49 = (v8 + 104);
    v48 = (v8 + 8);
    v47 = a3 & 0xC000000000000001;
    v15 = a3 & 0xFFFFFFFFFFFFFF8;
    if (a3 < 0)
    {
      v15 = a3;
    }

    v46 = v15;
    v55 = a3 + 56;
    v56 = a3;
    while (1)
    {
      while (1)
      {
        v16 = __CocoaSet.Iterator.next()();
        if (!v16)
        {

          goto LABEL_34;
        }

        v57 = v16;
        type metadata accessor for InferenceProviderAsset(0);
        swift_dynamicCast();
        v17 = v68;
        v18 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        swift_beginAccess();
        sub_1000192DC(v18 + v17, v14);
        v19 = *(*&v14[*(v54 + 48)] + 16);
        sub_100019338(v14);
        if (!v19)
        {
          break;
        }

LABEL_7:
      }

      sub_1000192DC(v18 + v17, v52);
      (*v49)(v10, HIDWORD(v50), v51);
      sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v57 == v66 && v58 == v67)
      {
        break;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v22 = v51;
      if (v21)
      {
        goto LABEL_20;
      }

      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v57 == v66 && v58 == v67)
      {

        goto LABEL_20;
      }

      HIDWORD(v45) = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v48)(v10, v22);
      sub_100019338(v52);
      if ((v45 & 0x100000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_21:
      if (v47)
      {

        v31 = __CocoaSet.contains(_:)();

        if (v31)
        {
          goto LABEL_7;
        }
      }

      else if (*(v56 + 16))
      {
        v32 = v56;
        Hasher.init(_seed:)();
        sub_10001214C(&v57);
        v33 = Hasher._finalize()();
        v34 = ~(-1 << *(v32 + 32));
        while (1)
        {
          v35 = v33 & v34;
          if (((*(v55 + (((v33 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v33 & v34)) & 1) == 0)
          {
            break;
          }

          v37 = sub_100019CE4(v36, v17);

          v33 = v35 + 1;
          if (v37)
          {
            goto LABEL_7;
          }
        }
      }

      v38 = v68;
      v39 = State[2];
      if (State[3] <= v39)
      {
        sub_100080444(v39 + 1, v24, v25, v26, v27, v28, v29, v30, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      }

      State = v69;
      Hasher.init(_seed:)();
      sub_10001214C(&v57);
      Hasher._finalize()();
      v40 = _HashTable.nextHole(atOrAfter:)();
      *(State + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v40;
      *(State[6] + 8 * v40) = v38;
      ++State[2];
    }

    v22 = v51;
LABEL_20:
    (*v48)(v10, v22);
    sub_100019338(v52);
    goto LABEL_21;
  }

  v41 = sub_100051680(a1, a2, a3);
  if (v3)
  {
  }

  else
  {
    State = v41;

LABEL_34:
  }

  return State;
}

uint64_t sub_100051680(int64_t a1, Swift::Int a2, uint64_t a3)
{
  v4 = v3;
  State = type metadata accessor for LoadState();
  v8 = *(State - 8);
  __chkstk_darwin(State);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v11 = __chkstk_darwin(v66);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v65 = &v49 - v14;
  v15 = *(a1 + 32);
  v16 = v15 & 0x3F;
  v17 = ((1 << v15) + 63) >> 6;
  v18 = 8 * v17;

  if (v16 <= 0xD)
  {
    goto LABEL_2;
  }

LABEL_47:

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    v62 = v10;
    v52 = a2;
    v53 = v4;
    v51 = &v49;
    __chkstk_darwin(v19);
    v61 = v17;
    v54 = &v49 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100011624(0, v17, v54);
    v24 = 0;
    v10 = 0;
    v67 = a1;
    v4 = a1 + 56;
    v25 = 1 << *(a1 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(a1 + 56);
    a1 = (v25 + 63) >> 6;
    HIDWORD(v58) = enum case for LoadState.loaded(_:);
    v57 = (v8 + 104);
    v56 = (v8 + 8);
    v55 = a3 & 0xC000000000000001;
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    if (a3 < 0)
    {
      v28 = a3;
    }

    v50 = v28;
    v69 = a3 + 56;
    v70 = a3;
    v64 = v13;
LABEL_8:
    v60 = v24;
    while (1)
    {
      while (1)
      {
        if (!v27)
        {
          v30 = v10;
          a3 = v70;
          v31 = v61;
          while (1)
          {
            v10 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v10 >= a1)
            {
              goto LABEL_43;
            }

            v32 = *(v4 + 8 * v10);
            ++v30;
            if (v32)
            {
              v29 = __clz(__rbit64(v32));
              v68 = (v32 - 1) & v32;
              goto LABEL_16;
            }
          }

          __break(1u);
          goto LABEL_47;
        }

        v29 = __clz(__rbit64(v27));
        v68 = (v27 - 1) & v27;
LABEL_16:
        v33 = v29 | (v10 << 6);
        v34 = *(v67 + 48);
        v63 = v33;
        v18 = *(v34 + 8 * v33);
        v35 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
        swift_beginAccess();
        v8 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState;
        v17 = v65;
        sub_1000192DC(v35 + v18, v65);
        a2 = *(*(v17 + *(v66 + 48)) + 16);

        sub_100019338(v17);
        if (!a2)
        {
          break;
        }

LABEL_17:

        v27 = v68;
      }

      sub_1000192DC(v35 + v18, v64);
      a2 = State;
      (*v57)(v62, HIDWORD(v58), State);
      v13 = sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v17 = v72;
      v8 = v74;
      if (v71 == v73 && v72 == v74)
      {
        break;
      }

      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v37)
      {
        goto LABEL_30;
      }

      dispatch thunk of RawRepresentable.rawValue.getter();
      v38 = v62;
      dispatch thunk of RawRepresentable.rawValue.getter();
      v17 = v72;
      v8 = v74;
      if (v71 == v73 && v72 == v74)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v56)(v38, a2);
      sub_100019338(v64);
      if ((v13 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_31:
      if (!v55)
      {
        if (*(v70 + 16))
        {
          v13 = type metadata accessor for InferenceProviderAsset(0);
          v40 = v70;
          Hasher.init(_seed:)();
          sub_10001214C(&v71);
          v8 = &v71;
          v41 = Hasher._finalize()();
          v17 = ~(-1 << *(v40 + 32));
          while (1)
          {
            a2 = v41 & v17;
            if (((*(v69 + (((v41 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v41 & v17)) & 1) == 0)
            {
              break;
            }

            v8 = sub_100019CE4(v42, v18);

            v41 = a2 + 1;
            if (v8)
            {
              goto LABEL_17;
            }
          }
        }

        v27 = v68;
LABEL_40:
        *(v54 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
        v24 = v60 + 1;
        if (!__OFADD__(v60, 1))
        {
          goto LABEL_8;
        }

        __break(1u);
LABEL_43:
        sub_1000120FC(v54, v31, v60, v67, v20, v21, v22, v23, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, State, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
        v44 = v43;

LABEL_44:

        return v44;
      }

      v8 = __CocoaSet.contains(_:)();

      v27 = v68;
      if ((v8 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

LABEL_30:
    (*v56)(v62, a2);
    sub_100019338(v64);
    goto LABEL_31;
  }

  v46 = swift_slowAlloc();

  v47 = v4;
  sub_1000D8910(v46, v17);
  v44 = v48;

  if (!v47)
  {

    goto LABEL_44;
  }

  return v44;
}

uint64_t sub_100051EA0(int64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v37 = a3;
    v33 = a2;
    v34 = v4;
    v31 = &v30;
    __chkstk_darwin(v12);
    v32 = v10;
    v35 = &v30 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100011624(0, v10, v35);
    v36 = 0;
    v10 = 0;
    a3 = v7;
    a2 = v7 + 56;
    v17 = 1 << *(v7 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v11 = v18 & *(v7 + 56);
    v7 = (v17 + 63) >> 6;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v4 = v19 | (v10 << 6);
      v22 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + *(*(a3 + 48) + 8 * v4);
      swift_beginAccess();
      v23 = *&v22[*(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 40)];

      v24 = sub_1000521D4(v37, v23);

      if (v24)
      {
        *(v35 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1000120FC(v35, v32, v36, a3, v13, v14, v15, v16, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
          v27 = v26;

          goto LABEL_17;
        }
      }
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_16;
      }

      v21 = *(a2 + 8 * v10);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v11 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();

  v27 = sub_1000D8688(v29);

  if (v4)
  {
  }

  else
  {

LABEL_17:
  }

  return v27;
}

uint64_t sub_1000521D4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  Hasher.init(_seed:)();

  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v11 & v12;
    if (((*(v6 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v14 = (*(a2 + 48) + 16 * v13);
    if (*v14 == v10 && v14[1] == v9)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v11 = v13 + 1;
  }

  while ((v16 & 1) == 0);

  return 0;
}

uint64_t sub_10005230C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v38 = a2;
  v39 = a3;
  v5 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v6 = __chkstk_darwin(v5 - 8);
  v37 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v36 = v35 - v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for InferenceProviderAsset(0);
    sub_100011B14(&qword_1001B94B0, type metadata accessor for InferenceProviderAsset, &unk_1001720DC);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v46;
    v10 = v47;
    v11 = v48;
    v12 = v49;
    v13 = v50;
    if (v46 < 0)
    {
      v34 = __CocoaSet.Iterator.next()();
      if (!v34)
      {
LABEL_32:
        sub_100019334(a1);
        return 0;
      }

      v42 = a1;
      v44 = v34;
      swift_dynamicCast();
      v41 = 0;
      result = v45;
      v15 = v12;
      v14 = v13;
      if (v45)
      {
        goto LABEL_15;
      }

LABEL_31:
      a1 = v42;
      goto LABEL_32;
    }

    if (v50)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v11 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v13 = v18 & *(a1 + 56);

    v12 = 0;
    if (v13)
    {
LABEL_4:
      v42 = a1;
      v14 = (v13 - 1) & v13;
      v15 = v12;
      goto LABEL_14;
    }
  }

  v19 = v12;
  do
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_34;
    }

    if (v15 >= ((v11 + 64) >> 6))
    {
      goto LABEL_32;
    }

    v20 = *(v10 + 8 * v15);
    ++v19;
  }

  while (!v20);
  v42 = a1;
  v14 = (v20 - 1) & v20;
LABEL_14:

  v41 = 1;
  if (!result)
  {
    goto LABEL_31;
  }

LABEL_15:
  v40 = result;
  v35[0] = v11;
  v35[1] = v3;
  v21 = (v11 + 64) >> 6;
  while (!v41)
  {
    v27 = __CocoaSet.Iterator.next()();
    if (!v27 || (v43 = v27, type metadata accessor for InferenceProviderAsset(0), swift_dynamicCast(), v26 = v51, v24 = v15, v25 = v14, !v51))
    {
LABEL_28:
      sub_100019334(v42);
      return v40;
    }

LABEL_25:
    v28 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    v29 = v36;
    sub_1000192DC(v28 + v26, v36);
    v30 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    v31 = v40;
    swift_beginAccess();
    v32 = v30 + v31;
    v33 = v37;
    sub_1000192DC(v32, v37);
    LOBYTE(v30) = v38(v29, v33);
    sub_100019338(v33);
    sub_100019338(v29);

    if (v30)
    {
      v40 = v26;
    }

    v15 = v24;
    v14 = v25;
  }

  v22 = v15;
  v23 = v14;
  v24 = v15;
  if (v14)
  {
LABEL_21:
    v25 = (v23 - 1) & v23;
    v26 = *(*(v42 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));

    if (!v26)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      goto LABEL_28;
    }

    v23 = *(v10 + 8 * v24);
    ++v22;
    if (v23)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_100052740(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005B00();
  v5 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(v4);
  v6 = *(v5 + 68);
  v7 = *(v2 + v6);
  if (v7 == *(a2 + v6) && (v8 = *(v5 + 64), v9 = *(v2 + v8), v7 = *(a2 + v8), v9 == v7))
  {
    return static Date.< infix(_:_:)() & 1;
  }

  else
  {
    return v7;
  }
}

void *sub_1000527C8(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for LoadState();
  v6 = *(State - 8);
  v7 = __chkstk_darwin(State);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  if ((a1 & 0xC000000000000001) == 0)
  {

    v12 = sub_100052B98(a1, a2);

    return v12;
  }

  v35 = v2;
  v12 = &_swiftEmptySetSingleton;
  v54 = &_swiftEmptySetSingleton;
  v34 = a2;

  v38 = __CocoaSet.makeIterator()();
  v37 = (v6 + 16);
  HIDWORD(v36) = enum case for LoadState.dynamicMode(_:);
  v13 = (v6 + 104);
  v14 = (v6 + 8);
  while (1)
  {
    v15 = __CocoaSet.Iterator.next()();
    if (!v15)
    {
      break;
    }

    v39 = v15;
    type metadata accessor for InferenceProviderAsset(0);
    swift_dynamicCast();
    v16 = v51;
    v17 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    swift_beginAccess();
    (*v37)(v11, &v17[v16], State);
    (*v13)(v9, HIDWORD(v36), State);
    sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v39 == v48 && v40 == v49)
    {

      v28 = *v14;
      (*v14)(v9, State);
      v28(v11, State);
LABEL_11:
      v29 = v51;
      v30 = v12[2];
      if (v12[3] <= v30)
      {
        sub_100080444(v30 + 1, v21, v22, v23, v24, v25, v26, v27, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, *v50, *&v50[8], *&v50[16], v51, v52, v53, v54);
      }

      v12 = v54;
      Hasher.init(_seed:)();
      sub_10001214C(&v39);
      Hasher._finalize()();
      v31 = _HashTable.nextHole(atOrAfter:)();
      *(v12 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v31;
      *(v12[6] + 8 * v31) = v29;
      ++v12[2];
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v20 = *v14;
      (*v14)(v9, State);
      v20(v11, State);
      if (v19)
      {
        goto LABEL_11;
      }
    }
  }

  return v12;
}

void *sub_100052B98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  State = type metadata accessor for LoadState();
  v7 = *(State - 8);
  v8 = __chkstk_darwin(State);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  v13 = *(a1 + 32);
  v14 = v13 & 0x3F;
  v15 = ((1 << v13) + 63) >> 6;
  v16 = (8 * v15);

  if (v14 > 0xD)
  {
LABEL_26:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v38 = swift_slowAlloc();

      v36 = sub_1000D8870(v38, v15, a1, a2, sub_1000D6F54);

      return v36;
    }
  }

  v52 = v10;
  v41 = a2;
  v42 = v3;
  v39 = &v39;
  __chkstk_darwin(v17);
  v40 = v15;
  v43 = &v39 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_100011624(0, v15, v43);
  v22 = 0;
  v3 = 0;
  a2 = a1 + 56;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a1 + 56);
  v45 = (v23 + 63) >> 6;
  v50 = (v7 + 2);
  HIDWORD(v49) = enum case for LoadState.dynamicMode(_:);
  v47 = v7 + 1;
  v48 = (v7 + 13);
  v10 = State;
  v51 = a1;
  while (2)
  {
    v44 = v22;
    while (1)
    {
      v15 = v12;
      if (!v25)
      {
        v27 = v3;
        v12 = v52;
        while (1)
        {
          v3 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v3 >= v45)
          {
            goto LABEL_23;
          }

          v28 = *(a2 + 8 * v3);
          ++v27;
          if (v28)
          {
            v53 = (v28 - 1) & v28;
            v26 = __clz(__rbit64(v28)) | (v3 << 6);
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

      v53 = (v25 - 1) & v25;
      v26 = __clz(__rbit64(v25)) | (v3 << 6);
      v12 = v52;
LABEL_13:
      v29 = *(a1 + 48);
      v46 = v26;
      v30 = *(v29 + 8 * v26);
      v31 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      swift_beginAccess();
      (*v50)(v15, &v31[v30], v10);
      (*v48)(v12, HIDWORD(v49), v10);
      sub_100011B14(&dword_1001BA628, &type metadata accessor for LoadState, &protocol conformance descriptor for LoadState);

      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v56 == v54 && v57 == v55)
      {
        break;
      }

      State = _stringCompareWithSmolCheck(_:_:expecting:)();

      v7 = v47;
      v16 = *v47;
      (*v47)(v12, v10);
      v16(v15, v10);

      a1 = v51;
      v12 = v15;
      v25 = v53;
      if (State)
      {
        goto LABEL_20;
      }
    }

    v7 = v47;
    v16 = *v47;
    (*v47)(v12, v10);
    v16(v15, v10);

    a1 = v51;
    v12 = v15;
    v25 = v53;
LABEL_20:
    v33 = v44;
    *(v43 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
    v34 = __OFADD__(v33, 1);
    v22 = v33 + 1;
    if (!v34)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_23:
  sub_1000120FC(v43, v40, v44, a1, v18, v19, v20, v21, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58[0], v58[1], v58[2]);
  v36 = v35;

  return v36;
}

uint64_t sub_1000530E4()
{
}

uint64_t sub_1000530FC(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100053120(uint64_t a1)
{

  return static Clock<>.continuous.getter();
}

uint64_t sub_100053144()
{
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;
  *v4 = *v1;
  v3[54] = v0;

  v5 = v2[51];
  if (v0)
  {
    v6 = v3[34];
    v7 = v3[32];
    v8 = v3[21];

    v5(v6, v7);
    v9 = sub_1000DFA94;
    v10 = v8;
  }

  else
  {
    v11 = v3[21];
    v5(v3[34], v3[32]);
    v9 = sub_1000532C4;
    v10 = v11;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_1000532C4()
{
  v35 = *(v0 + 400);
  v33 = *(v0 + 392);
  v41 = *(v0 + 376);
  v40 = *(v0 + 472);
  v34 = *(v0 + 312);
  v36 = *(v0 + 336);
  v37 = *(v0 + 288);
  v38 = *(v0 + 280);
  v39 = *(v0 + 256);
  v1 = *(v0 + 216);
  v2 = *(v0 + 160);
  v3 = (v2 + *(v0 + 360));
  v4 = v3[3];
  v5 = v3[4];
  sub_100003370(v3, v4);
  v6 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
  v8 = v7;
  v15 = InferenceProviderAssetDescriptor.version.getter(v6, v7, v9, v10, v11, v12, v13, v14, v29, v30, v31, v32);
  v17 = v16;
  v18 = v2 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_cost;
  AssetCost.onDeviceMemory.getter();
  sub_10000A868();
  sub_100003978();
  sub_100009BFC(v19, v20, v21, v33);
  (*(v5 + 48))(v34, v6, v8, v15, v17, v18, 1, v35, 0, v1, v4, v5);

  sub_10000ECD8(v1, &qword_1001BB3F8, &qword_100171D50);
  sub_10000ECD8(v36, &qword_1001BB410, &unk_100172340);
  sub_100003978();
  sub_100009BFC(v22, v23, v24, v37);
  v41(v38, v40, v39);
  v25 = swift_task_alloc();
  *(v0 + 440) = v25;
  *v25 = v0;
  v25[1] = sub_1000535DC;
  v26 = sub_1000031B8(*(v0 + 168));

  return sub_100041158(v26, v27);
}

uint64_t sub_1000534C0()
{
  sub_100001ED0();
  sub_100002C20();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_10000501C(v1);

  return sub_10005354C();
}

uint64_t sub_10005354C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_1000559BC();
}

uint64_t sub_1000535DC()
{
  sub_100001EF4();
  v2 = *(v1 + 408);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = sub_100001F70();
  v2(v5);
  v6 = sub_100003DE0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100053740()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[39];
  v5 = v0[37];
  v6 = v0[36];
  v7 = v0[20];

  (*(v5 + 8))(v4, v6);
  sub_1000480AC(v7 + v2 + *(v1 + 60), (v0 + 12));
  v8 = v0[16];
  sub_100003370(v0 + 12, v0[15]);
  v9 = sub_10000E86C();
  v10(v9, v8);
  sub_10000ECD8(v3, &qword_1001BB410, &unk_100172340);
  sub_100003324(v0 + 12);

  sub_100001F00();

  return v11();
}

uint64_t sub_1000538C8()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
    v7 = *(v3 + 256);

    v8 = sub_1000D142C;
    v9 = v7;
  }

  else
  {
    v9 = *(v3 + 256);
    v8 = sub_1000539D8;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1000539D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005D918();
  sub_1000033DC();

  sub_1000DAEDC();
  if (v12)
  {
    sub_100005C78();
    sub_10002ED80();
    sub_100036730();
    sub_1000DB104();
    swift_endAccess();
  }

  sub_10002EAC4();
  v13 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100053114();

  if (sub_1000DAF70())
  {
    sub_10000A05C();
    v14 = swift_slowAlloc();
    sub_1000033D0();
    swift_slowAlloc();
    sub_100003DF0();
    *v14 = 136315138;
    v15 = type metadata accessor for InferenceProviderAssetDescriptor();
    sub_100008428();
    sub_100011B14(v16, v17, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v18 = sub_1000DAE0C();
    sub_10000CB58(v18, v19, v20, v21);
    sub_100012918();
    *(v14 + 4) = v15;
    sub_1000DABF0(&_mh_execute_header, v22, v23, "Moved asset %s to dynamic mode");
    sub_100002C88();
    sub_1000039CC();
  }

  sub_100025014();

  sub_100002F54();
  sub_100016688();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_100053B68()
{

  return type metadata accessor for Logger();
}

uint64_t sub_100053B80()
{

  return type metadata accessor for Logger();
}

uint64_t sub_100053B98()
{
  v4 = v0 + *(v2 + 60);

  return sub_100007130(v4, v1 + 16);
}

void sub_100053BD8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_100053C58()
{
}

uint64_t sub_100053C74()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;

  v5 = *(v2 + 264);
  if (v0)
  {

    v6 = sub_100041C44;
  }

  else
  {
    v6 = sub_100041C40;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100053DA0()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  v3[59] = v0;

  if (v0)
  {
    v8 = v3[31];
    v7 = v3[32];
    v9 = v3[30];

    sub_10000ED84(v9, &qword_1001BB3F8);
  }

  else
  {
    v8 = v3[31];
    v7 = v3[32];
    sub_10000ED84(v3[30], &qword_1001BB3F8);
  }

  sub_10000ED84(v8, &qword_1001BB408);
  sub_10000ED84(v7, &qword_1001BB410);
  sub_10000CC50();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100053F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();

  v23 = v15[57];
  v24 = v15[52];
  if (v23 == v15[55])
  {
    sub_10004D094(v21, v22, v24);
    v18(v23, v16, v14);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = sub_1000038BC(v26);
    v28 = v15[48];
    v29 = v15[41];
    if (v27)
    {
      sub_10000A05C();
      swift_slowAlloc();
      sub_10000A45C();
      swift_slowAlloc();
      sub_10003EAA0();
      *v28 = 136315138;
      sub_1000281BC(&qword_1001B9C68, &qword_1001B94F0, &unk_100172060);
      sub_100042FBC();
      v30 = sub_1000DABA4();
      (v28)(v30);
      v31 = sub_10000CD1C();
      sub_100004A3C(v31, v32, v33);
      sub_100005974();

      *(v28 + 4) = v29;
      sub_1000033FC();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      sub_100003324(v17);
      sub_1000039CC();

      sub_10000BFCC();
    }

    else
    {

      v57 = sub_100011BF0();
      (v28)(v57);
    }

    sub_100043D74();
    sub_100010BB8(v15 + 7);
    v70 = sub_1000DB334();
    sub_100004B94();
    v71 = v58 + *v58;
    v59 = swift_task_alloc();
    v60 = sub_100050FE4(v59);
    *v60 = v61;
    sub_1000185FC(v60);
    sub_100003540();

    return v65(v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, a11, a12, a13, a14);
  }

  else
  {
    v39 = v24 & 0xC000000000000001;
    sub_100022A7C();
    if (v39)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v40 = result;
    }

    else
    {
      v40 = *(v15[52] + 8 * v23 + 32);
    }

    v15[56] = v40;
    v15[57] = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1000332B8();
      sub_100065020(&qword_1001B8F48, &qword_10016FB30);
      v42 = sub_10000BF00();
      sub_100009BFC(v42, v43, v44, v45);
      v20(v16, v19, v23);
      sub_100031654();
      sub_100009BFC(v46, v47, v48, v49);
      type metadata accessor for AuditToken();
      sub_100002C00();
      sub_1000DB290();
      v50();
      sub_10004A780();
      sub_100031654();
      sub_100009BFC(v51, v52, v53, v54);
      v55 = swift_task_alloc();
      v15[58] = v55;
      *v55 = v15;
      sub_100005B28(v55);
      sub_100003540();

      return sub_100047A80();
    }
  }

  return result;
}

uint64_t sub_100054264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100005B0C();
  sub_10001A5C4();
  if (qword_1001B88F0 != -1)
  {
    sub_10000505C();
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000641C(v21, qword_1001B9A18);
  v22 = sub_100007660();
  v23(v22);
  v24 = Logger.logObject.getter();
  HIDWORD(a13) = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v24, BYTE4(a13));
  v54 = v20[28];
  v55 = v20[29];
  v26 = v20[25];
  v56 = v20[26];
  v27 = v20[23];
  v28 = v20[24];
  v30 = v20[21];
  v29 = v20[22];
  v31 = v20[20];
  v32 = v20[15];
  if (v25)
  {
    sub_10000A05C();
    a12 = v31;
    v33 = swift_slowAlloc();
    sub_1000033D0();
    a11 = v26;
    a17 = swift_slowAlloc();
    *v33 = 136315138;
    sub_100005070();
    sub_10001B27C(v34, v35, v36);
    dispatch thunk of CustomStringConvertible.description.getter();
    a9 = v29;
    a10 = v27;
    v37 = sub_100007660();
    v54(v37);
    v38 = sub_10000A9EC();
    sub_100004A3C(v38, v39, v40);
    sub_100019498();

    *(v33 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v24, BYTE4(a13), "Prewarmed assets for session %s", v33, 0xCu);
    sub_100003324(a17);
    sub_100002BD0();

    sub_100002BD0();

    (*(v30 + 8))(v29, a12);
    (*(v28 + 8))(v26, v27);
  }

  else
  {

    v41 = sub_100007660();
    v54(v41);
    (*(v30 + 8))(v29, v31);
    v42 = sub_10001B228();
    v44(v42, v43);
  }

  sub_100002F54();
  sub_1000135DC();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, v54, v55, v56, a17, a18, a19, a20);
}

uint64_t sub_10005450C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v25 = v14[13];
  v26 = v14[12];
  v27 = v14[9];
  ModelXPCRequest.PrewarmSession.Response.init()();

  v15 = sub_100065020(&qword_1001BE648, &qword_1001755E0);
  sub_10000CD70(v15);

  sub_100002F54();
  sub_100003540();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26, v27, a12, a13, a14);
}

uint64_t sub_100054604()
{
  sub_10000639C();
  sub_100003884();
  v2 = *v1;
  sub_100002B9C();
  *v3 = v2;
  *v3 = *v1;
  v2[42] = v0;

  (*(v2[17] + 8))(v2[18], v2[16]);

  if (!v0)
  {
  }

  sub_1000059F8();
  sub_100003D20();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100054794()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 248) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000548C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v25 = v14[30];
  v26 = v14[29];
  sub_1000286AC(v14[50], v15);

  sub_10000ED84((v14 + 2), &qword_1001B9CB0);
  sub_100003324(v14 + 7);

  sub_100002F54();
  sub_100003540();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, v25, v26, a12, a13, a14);
}

uint64_t sub_1000549B8()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 488) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100054ACC()
{
  sub_100002BAC();

  sub_100009E7C();
  sub_100005668();
  sub_100039484(v0, v1, v2, v3, v4);

  sub_100002F54();

  return v5();
}

uint64_t sub_100054B50()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100054C64()
{
  sub_10000639C();
  sub_100003884();
  sub_1000089AC();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_100007D94(v1);
  sub_100003D20();

  return sub_100054CF8(v3, v4, v5, v6, v7);
}

uint64_t sub_100054CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100054DC8, a5, 0);
}

uint64_t sub_100054DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000033DC();
  v45 = v14;
  if (qword_1001B88F0 != -1)
  {
    sub_10000505C();
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v14[3].i64[1] = sub_100002FD0(v16, qword_1001B9A18);

  v17 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100019920();

  if (sub_10000A384())
  {
    sub_10000A05C();
    v18 = swift_slowAlloc();
    sub_1000033D0();
    v19 = swift_slowAlloc();
    v44[0] = v19;
    *v18 = 136315138;
    v20 = sub_10001AFF8();
    sub_100004A3C(v20, v21, v44);
    sub_100007BA0();
    *(v18 + 4) = v15;
    sub_1000033FC();
    _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
    sub_100003324(v19);
    sub_1000039CC();

    sub_100002BD0();
  }

  type metadata accessor for _OSTransaction();
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  v43 = v14[1];
  _StringGuts.grow(_:)(16);

  strcpy(v44, "Re-Prewarming ");
  HIBYTE(v44[1]) = -18;
  Session.Metadata.id.getter();
  sub_100005070();
  sub_10001B27C(v27, v28, v29);
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  v31 = sub_100003754();
  v32(v31);
  v33 = v44[0];
  v34 = v44[1];
  v14[4].i64[0] = v44[1];
  v35 = swift_task_alloc();
  v14[4].i64[1] = v35;
  v35[1] = vextq_s8(v43, v43, 8uLL);
  sub_100011344();
  v39 = sub_100015F10(v36, v37, v38);
  v40 = swift_task_alloc();
  v14[5].i64[0] = v40;
  *v40 = v14;
  v40[1] = sub_1000582AC;
  v41 = v14[1].i64[1];

  return static _OSTransaction.named<A>(_:closure:isolation:)(v40, v33, v34, &unk_100170770, v35, v41, v39, &type metadata for () + 1, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000550A8()
{
  sub_100001ED0();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_100004B00(v2);
  *v3 = v4;
  v5 = sub_100012A10(v3);

  return sub_10005513C(v5, v6, v1);
}

uint64_t sub_10005513C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_10005520C, a2, 0);
}

uint64_t sub_10005520C()
{
  sub_100003884();
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata;
  Session.Metadata.id.getter();
  v0[7] = sub_10001B304(v1 + v2, v1 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_10005810C;
  sub_1000031B8(v0[6]);

  return sub_100017334();
}

uint64_t sub_100055350()
{
  sub_100003884();
  sub_100003370(v0 + 7, v0[10]);
  sub_100001F0C();
  sub_100004B94();
  v1 = swift_task_alloc();
  v0[71] = v1;
  *v1 = v0;
  v1[1] = sub_100057354;
  sub_100018870();

  return v2();
}

uint64_t sub_10005548C()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100003960();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 408) = v0;

  (*(v2 + 384))(*(v2 + 240), *(v2 + 224));
  sub_100007088();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100055600(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "loadIn finished", v4, 2u);
    sub_100002BD0();
  }

  v5 = v1[16];

  v6 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000089B8();
  if (sub_10000A384())
  {
    v50 = v1[45];
    v7 = v1[44];
    v8 = v1[16];
    sub_1000267F8();
    sub_1000062D8();
    sub_100012BB4(4.8151e-34);
    sub_100005168();
    v11 = sub_100011B5C(v9, v10, &protocol conformance descriptor for InferenceProviderAssetDescriptor);
    v12 = sub_1000060D8(v11);
    sub_100036E38(v12, v13);
    sub_100013E7C();

    v14 = sub_1000113C8();
    v15(v14, v8);
    sub_10000866C();
    sub_100011B5C(v16, v17, &protocol conformance descriptor for InferenceProviderDescriptor);
    sub_1000035E8();
    dispatch thunk of CustomStringConvertible.description.getter();
    v18 = sub_10000588C();
    v50(v18);
    v19 = sub_100008004();
    sub_100004A3C(v19, v20, v21);
    sub_10000A868();

    *(v5 + 14) = v7;
    sub_1000033FC();
    _os_log_impl(v22, v23, v24, v25, v26, 0x16u);
    sub_10002A110();
    sub_1000039CC();

    sub_100002BD0();
  }

  v27 = v1[34];
  v48 = v1[35];
  v49 = v1[33];
  v28 = (v1[16] + v1[43]);
  sub_100003370(v28, v28[3]);
  v29 = InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
  InferenceProviderAssetDescriptor.version.getter(v29, v30, v31, v32, v33, v34, v35, v36, v44, v45, v46, v47);
  AssetCost.onDeviceMemory.getter();
  sub_10001360C();
  v41(v37, v38, v39, v40);

  (*(v27 + 8))(v48, v49);

  sub_100001F00();

  return v42();
}

uint64_t sub_100055984(uint64_t a1)
{
  sub_100007F18(a1);
}

uint64_t sub_100055BA8()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    v7 = *(v3 + 16);

    return _swift_task_switch(sub_1000A971C, v7, 0);
  }

  else
  {
    sub_100001F00();

    return v8();
  }
}

uint64_t sub_100055CC0()
{
  swift_unknownObjectRelease();

  sub_100005640();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100055CFC()
{

  v0 = sub_100001F70();

  return _swift_deallocObject(v0, v1, 7);
}

uint64_t sub_100055D44()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100055D8C()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100003960();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 456) = v0;

  v5 = *(v2 + 232);
  if (v0)
  {
    v6 = sub_1000DEB8C;
  }

  else
  {
    v6 = sub_100055EB0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100055EB0()
{
  sub_100002BAC();
  (*(v0[48] + 104))(v0[49], enum case for LoadState.loaded(_:), v0[47]);
  v1 = swift_task_alloc();
  v0[58] = v1;
  *v1 = v0;
  v1[1] = sub_100055F64;
  v2 = sub_1000031B8(v0[29]);

  return sub_100041158(v2, v3);
}

uint64_t sub_100055F64()
{
  sub_100001ED0();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100001F70();
  v4(v3);
  v5 = sub_100003DE0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000560B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v30 = v14[43];
  v31 = v14[40];
  v32 = v14[37];
  v15 = sub_10004868C(v14[55]);
  sub_1000480AC(v15, (v14 + 12));
  v16 = v14[16];
  sub_100003370(v14 + 12, v14[15]);
  v17 = sub_100003170();
  v18(v17, v16);
  v19 = sub_100003754();
  v20(v19);
  sub_100003324(v14 + 12);

  sub_100001F00();
  sub_100003540();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, v32, a12, a13, a14);
}

uint64_t sub_1000561D0()
{
  sub_100001ED0();
  sub_100018E0C();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 336) = v0;

  sub_10000CC7C();
  if (v0)
  {
  }

  sub_100007088();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100056B00()
{
  v1 = sub_10000C1A0();
  v2(v1);
  sub_100005680();
  v3 = sub_1000062B0();
  v4(v3);
  return v0;
}

uint64_t sub_100056B50()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 400) = v0;

  if (v0)
  {
    v7 = *(v3 + 152);

    v8 = sub_1000C4B10;
    v9 = v7;
  }

  else
  {
    v9 = *(v3 + 152);
    v8 = sub_100056C60;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_100056C60()
{
  sub_10000639C();
  sub_100003884();

  sub_10000C1CC();

  sub_100002F54();
  sub_100003D20();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_100056CF0()
{
  sub_100001ED0();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 560) = v0;

  sub_10000A9E0();
  v5 = *(v4 + 464);
  if (v0)
  {
    v6 = sub_1000A74F8;
  }

  else
  {
    v6 = sub_100055350;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100056E38()
{
  sub_10000385C();
  sub_100003284();
  if (qword_1001B8900 != -1)
  {
    sub_100005C18(&qword_1001B8900);
  }

  v1 = sub_100006010();
  *(v0 + 88) = sub_10000641C(v1, qword_1001B9FA0);
  v2 = sub_10000CC04();
  v3(v2);

  v4 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  sub_1000089B8();
  if (sub_10000A384())
  {
    v5 = sub_1000267F8();
    sub_1000080A4();
    sub_10003EAA0();
    *v5 = 136315394;
    InferenceProviderPrewarmInformation.modelBundleIdentifier.getter();
    v6 = sub_1000194A4();
    v8 = v7(v6);
    sub_1000190A0(v8, v9, v10, v11);

    sub_10001877C();
    v12 = type metadata accessor for InferenceProviderDescriptor();
    sub_10000509C();
    sub_10002EA7C(v13, v14, &protocol conformance descriptor for InferenceProviderDescriptor);
    sub_1000195C4();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    sub_1000239D4(v15, v16, v17, v18, v19, v20);
    sub_100007BA0();
    *(v5 + 14) = v12;
    sub_1000033FC();
    _os_log_impl(v21, v22, v23, v24, v25, 0x16u);
    swift_arrayDestroy();
    sub_100004B78();
    sub_10000706C();
  }

  else
  {

    v26 = sub_1000194A4();
    v27(v26);
  }

  v28 = swift_task_alloc();
  *(v0 + 96) = v28;
  *v28 = v0;
  sub_10000CD28(v28);
  sub_100003540();

  return sub_100030B84();
}

uint64_t sub_100057038()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (v0)
  {

    sub_10000778C();

    return v7();
  }

  else
  {
    sub_10000E700();

    return _swift_task_switch(v9, v10, v11);
  }
}

uint64_t sub_10005716C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();
  v13 = v12[4];
  v14 = *(v13 + 112);
  v12[13] = v14;
  if (v14)
  {
    sub_1000185A8(&async function pointer to dispatch thunk of InferenceProviderXPCSender.prewarmBundle(information:));
    sub_100007BCC();
    v15 = swift_task_alloc();
    v12[14] = v15;
    *v15 = v12;
    sub_100012670(v15);
    sub_100001FBC();
  }

  else
  {

    v24 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_1000089B8();
    if (sub_10000A384())
    {
      sub_100007698();
      sub_100003890();
      sub_10003EAA0();
      *v13 = 136315138;
      v25 = type metadata accessor for InferenceProviderDescriptor();
      sub_10000509C();
      v28 = sub_10002EA7C(v26, v27, &protocol conformance descriptor for InferenceProviderDescriptor);
      v29 = sub_1000094F0(v28);
      sub_1000239D4(v29, v30, v31, v32, v33, v34);
      sub_100007BA0();
      *(v13 + 4) = v25;
      sub_1000033FC();
      _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
      sub_100001F88();
      sub_10000706C();
    }

    sub_100009E7C();
    sub_100005668();
    sub_100039484(v40, v41, v42, v43, v44);

    sub_100002F54();
    sub_100001FBC();
  }

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_10005732C()
{
  v2 = v0[37] + v0[38] + *(v0[30] + 60);

  return sub_100007130(v2, (v0 + 12));
}

uint64_t sub_100057354()
{
  sub_100001ED0();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 576) = v0;

  sub_10000A9E0();
  v5 = *(v4 + 464);
  if (v0)
  {
    v6 = sub_1000A75B4;
  }

  else
  {
    v6 = sub_100057528;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005749C()
{
  sub_100001ED0();
  sub_100002C20();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  sub_10000501C(v1);

  return sub_10005354C();
}

uint64_t sub_100057528()
{
  sub_100003884();
  sub_100003370(v0 + 12, v0[15]);
  sub_100001F0C();
  sub_100004B94();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[73] = v2;
  *v2 = v0;
  v2[1] = sub_1000578A0;
  v3 = sub_1000060A4();

  return v5(v3);
}

uint64_t sub_100057664(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = 0;

  return swift_willThrow();
}

uint64_t sub_100057680()
{
  *(v1 + v0) = 0;
}

uint64_t sub_100057698(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10006FA64;

  return sub_100057730();
}

uint64_t sub_100057730()
{
  sub_100002BAC();
  v2 = sub_10000D088(v1);
  v0[5] = v2;
  sub_100002F44(v2);
  v0[6] = v3;
  v0[7] = sub_100002C58();
  v4 = type metadata accessor for InferenceProviderPrewarmInformation();
  v0[8] = v4;
  sub_100002F44(v4);
  v0[9] = v5;
  v0[10] = sub_100002C58();
  v6 = sub_100002C10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100057818()
{
}

uint64_t sub_100057858()
{

  return type metadata accessor for ModelCatalogAsset(0);
}

uint64_t sub_100057890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return 0;
}

uint64_t sub_1000578A0()
{
  sub_10000CB70();
  sub_100003884();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 592) = v4;
  *v4 = v3;
  v4[1] = sub_1000A6D0C;
  sub_100004CC8();

  return sub_10003F198();
}

void sub_100057A3C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_100057A54(void x0_0, void x1_0, void x2_0, void a4, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t sub_100057A88()
{

  return sub_100009BFC(v0, 1, 1, v1);
}

uint64_t sub_100057AA8(void *a1, uint64_t a2)
{
  v5 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  v6 = sub_100002F04(v5);
  __chkstk_darwin(v6);
  v7 = v2[15];
  v2[15] = a1;
  v8 = a1;

  v2[14] = a2;

  type metadata accessor for TaskPriority();
  sub_100003978();
  sub_100009BFC(v9, v10, v11, v12);
  sub_10001135C();
  v15 = sub_10002EA7C(v13, v14, &unk_100170F60);
  v16 = swift_allocObject();
  v16[2] = v2;
  v16[3] = v15;
  v16[4] = v8;
  v16[5] = v2;
  sub_100016434();
  v17 = v8;
  sub_10002BA40();
  sub_1000652FC();
  v2[17] = v18;
}

uint64_t sub_100057BE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100057C30()
{
  sub_10000639C();
  sub_100003884();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  sub_100003D20();

  return sub_100057E38(v3, v4, v5, v6, v7);
}

uint64_t sub_100057CDC()
{
  sub_10000CB70();
  sub_100003884();
  v1 = v0[11];
  sub_10001135C();
  sub_10002EA7C(v2, v3, &unk_100170F60);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  v0[14] = v5;
  sub_10000E2C0(0, &qword_1001BA4C0, RBSProcessExitContext_ptr);
  *v5 = v0;
  v5[1] = sub_1000A63E0;
  sub_100004CC8();

  return withCheckedContinuation<A>(isolation:function:_:)(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_100057E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;

  return _swift_task_switch(sub_100057CDC, a5, 0);
}

void sub_100057EC8(uint64_t a1, void *a2)
{
  v4 = sub_100065020(&qword_1001BA4C8, &qword_100171028);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1000B1470;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A68D0;
  aBlock[3] = &unk_1001B0E30;
  v10 = _Block_copy(aBlock);

  [a2 monitorForDeath:v10];
  _Block_release(v10);
}

uint64_t sub_100058078()
{
  sub_100065020(&qword_1001BA4C8, &qword_100171028);
  sub_100002C00();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005810C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000094B0();
  sub_10000636C();
  sub_100001EF4();
  v13 = v12;
  sub_100004B40();
  *v14 = v13;
  v15 = *v11;
  sub_100002B9C();
  *v16 = v15;
  *(v13 + 72) = v10;

  v17 = sub_10000A9EC();
  v18(v17);

  if (v10)
  {
    sub_10000E700();
    sub_100006378();

    return _swift_task_switch(v19, v20, v21);
  }

  else
  {

    sub_100006378();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
  }
}

uint64_t sub_1000582AC()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = *(v3 + 24);
    v8 = sub_1000951CC;
  }

  else
  {
    v9 = *(v3 + 24);

    v8 = sub_1000583C4;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000583C4()
{
  sub_100002BAC();

  sub_100001F00();

  return v0();
}

uint64_t sub_10005841C()
{
  swift_unknownObjectRelease();

  sub_1000119E4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100058460(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for InferenceProviderAsset(0);
    sub_100011B14(&qword_1001B94B0, type metadata accessor for InferenceProviderAsset, &unk_1001720DC);
    result = Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
    v10 = v25;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (v18)
    {
      while (1)
      {
        v26 = v18;
        v19 = sub_1000586B8(&v26, a2);
        if (v4)
        {
          break;
        }

        if (v19)
        {
          goto LABEL_22;
        }

        v9 = v16;
        v10 = v17;
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for InferenceProviderAsset(0);
          swift_dynamicCast();
          v18 = v26;
          v16 = v9;
          v17 = v10;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

LABEL_22:
      sub_100019334(v5);
    }

    else
    {
LABEL_20:
      sub_100019334(v5);

      return 0;
    }

    return v18;
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000586B8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if ((*a2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for InferenceProviderAsset(0);
    sub_100011B14(&qword_1001B94B0, type metadata accessor for InferenceProviderAsset, &unk_1001720DC);
    result = Set.Iterator.init(_cocoa:)();
    v2 = v16;
    v4 = v17;
    v6 = v18;
    v5 = v19;
    v7 = v20;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v5 = 0;
  }

  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for InferenceProviderAsset(0), swift_dynamicCast(), (v13 = v21) == 0))
    {
LABEL_18:
      v15 = 1;
      goto LABEL_19;
    }

LABEL_16:
    v14 = sub_10002D88C(v13);

    if (v14)
    {
      v15 = 0;
LABEL_19:
      sub_100019334(v2);

      return v15;
    }
  }

  v11 = v5;
  v12 = v7;
  if (v7)
  {
LABEL_12:
    v7 = (v12 - 1) & v12;
    v13 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v13)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v5);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_100058A04()
{
  sub_1000134E8();
  v3 = v0;
  sub_100065020(v4, v5);
  v6 = sub_1000239EC();
  if (*(v1 + 16))
  {
    sub_10000A874();
    sub_100019480();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v2, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v1 + 16);
    sub_100003878();
    sub_100012714();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_15:
        *(*(v6 + 48) + 8 * (v18 | (v12 << 6))) = *(*(v1 + 48) + 8 * (v18 | (v12 << 6)));
      }

      while (v15);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_17;
      }

      ++v19;
      if (*(v2 + v12))
      {
        sub_1000062A0();
        v15 = v21 & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v6;
    sub_100009C38();
  }
}

void sub_100058B10()
{
  sub_1000055B0();
  v81 = v1;
  v82 = v0;
  v79 = v3;
  v80 = v2;
  v68 = v4;
  v78 = v5;
  v7 = v6;
  v84 = v8;
  v85 = v9;
  v67 = type metadata accessor for AppleIntelligenceReportingError();
  sub_100002BDC();
  v66 = v10;
  __chkstk_darwin(v11);
  sub_100009C24();
  sub_100002BF0();
  __chkstk_darwin(v12);
  sub_1000079F8();
  sub_100002BF0();
  __chkstk_darwin(v13);
  sub_1000079F8();
  sub_100002BF0();
  __chkstk_darwin(v14);
  v64 = v62 - v15;
  v16 = sub_100065020(&qword_1001B9048, &qword_10016FCB8);
  sub_100002F04(v16);
  sub_100004B1C();
  __chkstk_darwin(v17);
  v77 = v62 - v18;
  v19 = sub_100065020(&qword_1001B9050, &qword_10016FCC0);
  sub_100002F04(v19);
  sub_100004B1C();
  __chkstk_darwin(v20);
  v21 = sub_100065020(&qword_1001B9058, &qword_10016FCC8);
  v22 = sub_100002F04(v21);
  __chkstk_darwin(v22);
  sub_100009C24();
  sub_100002BF0();
  __chkstk_darwin(v23);
  sub_1000079F8();
  sub_100002BF0();
  __chkstk_darwin(v24);
  v83 = type metadata accessor for AppleIntelligenceEvent();
  sub_100002BDC();
  v86 = v25;
  __chkstk_darwin(v26);
  sub_100002B8C();
  v29 = v28 - v27;
  v30 = subsystemName.getter();
  v75 = v31;
  v76 = v30;
  v32 = sub_100065020(&qword_1001B9060, &unk_10016FCD0);
  v33 = sub_100002F04(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = type metadata accessor for UUID();
  sub_100003978();
  sub_100009BFC(v38, v39, v40, v37);
  v62[2] = v7;
  v41 = *&aExecuterqueuer[8 * v7];
  v73 = *&aExecuterqueuer[8 * v7 + 24];
  v74 = v41;
  type metadata accessor for UUIDIdentifier();
  sub_100003978();
  v62[0] = v42;
  v46 = sub_100009BFC(v43, v44, v45, v42);
  v72 = v62;
  __chkstk_darwin(v46);
  v47 = sub_10002E90C(v85, v62 - v36, &qword_1001B9060, &unk_10016FCD0);
  v71 = v62;
  v65 = v35;
  __chkstk_darwin(v47);
  v69 = *(v37 - 8);
  v63 = *(v69 + 16);
  v63(v62 - v36, v84, v37);
  sub_1000039A8();
  v70 = v37;
  sub_100009BFC(v48, v49, v50, v37);
  sub_100061B5C(v78);

  Dictionary.init(dictionaryLiteral:)();
  AppleIntelligenceUseCase.init(useCaseIdentifier:parameters:)();
  type metadata accessor for AppleIntelligenceUseCase();
  sub_1000039A8();
  sub_100009BFC(v51, v52, v53, v54);
  type metadata accessor for AppleIntelligenceReportingMetadata();
  sub_100003978();
  sub_100009BFC(v55, v56, v57, v58);

  sub_100005600();
  v59 = v86;
  v60 = v29;
  AppleIntelligenceInferenceEvent.init(subsystem:sessionIdentifier:stepIdentifier:invocationRequestIdentifier:clientRequestIdentifier:modelManagerRequestIdentifier:errors:useCaseIdentifier:additionalUseCaseIdentifiers:requestorBundleIdentifier:onBehalfOfBundleIdentifier:inferenceProviderIdentifier:assetBundleIdentifier:assets:metadata:)();
  v61 = v83;
  (*(v59 + 104))(v60, enum case for AppleIntelligenceEvent.inference(_:), v83);
  if (*(v82 + 16))
  {

    _s26AppleIntelligenceReporting13EventReporterC04emitab3EndD09eventInfo05startD10IdentifieryAA0abD0O_AA14UUIDIdentifierVSgtAA0abC5ErrorOYKF();
    (*(v59 + 8))(v60, v61);
  }

  else
  {
    (*(v59 + 8))(v60, v61);
  }

  sub_100002EEC();
}

uint64_t sub_10005971C()
{
  v26 = v0[32];
  v28 = v0[31];
  v22 = v0[29];
  v23 = v0[30];
  v20 = v0[27];
  v1 = v0[21];
  v2 = v0[18];
  v19 = v0[19];
  v25 = v0[16];
  v3 = v0[11];
  v27 = v0[12];
  v4 = v0[7];
  v18 = v0[8];
  sub_10005D8A4(v4);
  v5 = v0[5];
  v6 = v0[6];
  sub_100003370(v0 + 2, v5);
  RequestMetadata.id.getter();
  v7 = *(v4 + 8);
  sub_100003370(v4 + 4, *(v4 + 7));
  v8 = sub_100005974();
  v9(v8, v7);
  InferenceProviderDescriptor.id.getter();
  sub_10001351C();
  v20(v1, v19);
  (*(v6 + 16))(v2, v28, 0, v1, v7, v18 + v23, v5, v6);

  v26(v2, v25);
  v10 = v3[51];
  v21 = v3[50];
  v24 = sub_100003370(v3 + 47, v21);
  RequestMetadata.id.getter();
  v11 = swift_task_alloc();
  UUIDIdentifier.uuid.getter();
  v26(v2, v25);
  v12 = swift_task_alloc();
  RequestMetadata.loggingIdentifier.getter();
  UUID.init(uuidString:)();

  RequestMetadata.useCaseID.getter();
  sub_10005D744();
  sub_1001284A4();
  (*(v10 + 16))(v11, v12, 0, _swiftEmptyArrayStorage, v27, &v4[v22], v22, v13, v21, v10);

  v14 = v0[37];
  sub_100033268();
  v15 = v0[12];
  sub_10001301C(v12, &qword_1001B9060);
  v14(v11, v24);
  sub_10001301C(v15, &qword_1001B9058);

  sub_100003324(v0 + 2);

  sub_100001F7C();

  return v16(0);
}

uint64_t sub_100059A68()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  v4 = *v1;
  sub_100003744();
  *v5 = v4;
  *(v7 + 120) = v6;
  *(v7 + 128) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100059B7C()
{
  sub_10000639C();
  sub_100003884();
  if (v1[15])
  {
    swift_errorRetain();
    if (qword_1001B88F0 != -1)
    {
      sub_10000505C();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100002FD0(v2, qword_1001B9A18);
    v3 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    sub_100006390();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v0, "Failed to perform inference on primary inference provider, falling back", v5, 2u);
      sub_100002BD0();
    }

    v1[17] = sub_100109080();
    v1[18] = v6;
    v7 = swift_task_alloc();
    v8 = sub_1000192A4(v7);
    *v8 = v9;
    v8[1] = sub_10009D0DC;
    sub_1000031B8(v1[12]);
    sub_100005A04();
    sub_100003D20();

    return sub_10009A128();
  }

  else
  {

    sub_100002F54();
    sub_100003D20();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

uint64_t sub_100059D2C()
{
  sub_100059D84();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

char *sub_100059D84()
{

  sub_100003324((v0 + 32));
  v1 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_metadata;
  type metadata accessor for RequestMetadata();
  sub_100002C00();
  (*(v2 + 8))(v0 + v1);
  sub_100059E78(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState, type metadata accessor for DaemonRequest.ManagerOwnedState);
  return v0;
}

uint64_t sub_100059E18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100059E78(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100002C00();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100059ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  sub_100001EF4();
  v17 = v16;
  sub_100004B40();
  *v18 = v17;
  v39 = v19[40];
  v20 = v19[39];
  v21 = v19[38];
  v22 = *v15;
  sub_100002B9C();
  *v23 = v22;
  *(v17 + 368) = v14;

  v24 = sub_10001364C();
  v25(v24);
  (*(v20 + 8))(v39, v21);
  if (v14)
  {
    sub_1000059F8();
    sub_100003540();

    return _swift_task_switch(v26, v27, v28);
  }

  else
  {
    sub_100008048();

    sub_100002F54();
    sub_100003540();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, v39, a12, a13, a14);
  }
}

uint64_t sub_10005A130()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    sub_1000059F8();

    return _swift_task_switch(v8, v9, v10);
  }
}

uint64_t sub_10005A258()
{
  sub_10000639C();
  sub_100003884();
  v0 = sub_10000A0F8();
  sub_1001634B8(v0);

  sub_100001F00();
  sub_100003D20();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10005A2E0()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100003000();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10005A3E0()
{
  sub_100002BAC();
  sub_100003324((v0 + 16));
  sub_100001F00();

  return v1();
}

uint64_t sub_10005A438()
{
  sub_100001ED0();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 344) = v0;

  sub_10000A9E0();
  v5 = *(v4 + 208);
  if (v0)
  {
    v6 = sub_1000AC4BC;
  }

  else
  {
    v6 = sub_10005A580;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_10005A670(uint64_t a1, const char *a2, ...)
{
  sub_10000C1A0();
  v4 = type metadata accessor for InferenceProviderRequestConfiguration();
  sub_100002BDC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100002B8C();
  v10 = v9 - v8;
  if (qword_1001B8900 != -1)
  {
    sub_100005C18(&qword_1001B8900);
  }

  v11 = type metadata accessor for Logger();
  sub_10000641C(v11, qword_1001B9FA0);
  (*(v6 + 16))(v10, v3, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v26 = sub_100007698();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v26 = 136315138;
    type metadata accessor for UUID();
    v25 = &v23;
    sub_100002BDC();
    __chkstk_darwin(v14);
    sub_100002B8C();
    InferenceProviderRequestConfiguration.requestUUID.getter();
    v15 = sub_10005A8F4();
    v16 = sub_10001E504(v15);
    v24 = v2;
    v17 = sub_100005980();
    v18(v17);
    (*(v6 + 8))(v10, v4);
    v19 = sub_100001F70();
    sub_100004A3C(v19, v20, v21);
    sub_100003170();

    v22 = v26;
    *(v26 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, v24, v22, 0xCu);
    sub_100003324(v27);
    sub_100003420();
    sub_100002BB8(v22);
  }

  else
  {

    (*(v6 + 8))(v10, v4);
  }
}

unint64_t sub_10005A8F4()
{
  result = qword_1001B8F38;
  if (!qword_1001B8F38)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B8F38);
  }

  return result;
}

uint64_t sub_10005A940()
{
  sub_10000636C();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[55] = v0;

  sub_10014B368();
  v7 = *(v6 + 328);
  v8 = v2[40];
  v9 = v2[39];
  v10 = v2[38];
  v11 = v2[37];
  v12 = v2[36];
  if (v0)
  {
    (*(v8 + 8))(v7, v9);
    (*(v11 + 8))(v10, v12);
    sub_10003DDC8();
    sub_1000071A8();

    return _swift_task_switch(v13, v14, v15);
  }

  else
  {
    (*(v8 + 8))(v7, v9);
    (*(v11 + 8))(v10, v12);
    sub_100005358();
    v20 = v16;
    v17 = swift_task_alloc();
    v3[56] = v17;
    *v17 = v5;
    v17[1] = sub_10005BD7C;
    v18 = sub_1000031B8(v3[45]);

    return v20(v18);
  }
}

uint64_t sub_10005ABB4()
{
  sub_10000639C();
  sub_100003884();
  sub_1000089AC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_100004B28(v1);
  sub_1000135D0();
  sub_100003D20();

  return sub_10005AC58(v2, v3, v4, v5, v6);
}

uint64_t sub_10005AC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for InferenceProviderDescriptor();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10005AD20, 0, 0);
}

uint64_t sub_10005AD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005F88();
  sub_1000033DC();
  v13 = v12[8];
  v15 = v12[4];
  v14 = v12[5];
  sub_100003370(v15 + 4, v15[7]);
  v16 = sub_100007B78();
  v17(v16);
  sub_10005AEB0();
  v12[10] = *(v13 + 8);
  v12[11] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18 = sub_100003754();
  v19(v18);
  v20 = v15[8];
  sub_100003370(v15 + 4, v15[7]);
  v21 = sub_10000D0E8();
  v22(v21, v20);
  v33 = v14 + *v14;
  v23 = swift_task_alloc();
  v12[12] = v23;
  *v23 = v12;
  v23[1] = sub_10005BC34;
  sub_1000031B8(v12[2]);
  sub_1000062BC();

  return v26(v24, v25, v26, v27, v28, v29, v30, v31, v33, a10, a11, a12);
}

void sub_10005AEB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession__lazyState);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_10005B018(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_10005AF50(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for DaemonSession.LazyState(0);
  v5 = *(result + 28);
  if ((*(a1 + v5) & 1) == 0)
  {
    *(a1 + v5) = 1;
    v6 = *(result + 24);
    sub_10000ECD8(a1 + v6, &qword_1001B9CD0, &qword_100170778);
    v7 = type metadata accessor for InferenceProviderDescriptor();
    (*(*(v7 - 8) + 16))(a1 + v6, a2, v7);
    return sub_100009BFC(a1 + v6, 0, 1, v7);
  }

  return result;
}

uint64_t sub_10005B034()
{
  sub_10001881C();
  sub_100003884();
  v1 = type metadata accessor for ModelXPCRequest.ExecuteRequest();
  sub_100002F44(v1);
  sub_10000D00C();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  sub_10002B0CC(v2);
  sub_100007BB8();

  return sub_10005B120(v3, v4, v5, v6, v7);
}

uint64_t sub_10005B120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = type metadata accessor for InferenceProviderDescriptor();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = type metadata accessor for InferenceProviderRequestResult();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  v8 = type metadata accessor for RequestMetadata();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v9 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();
  v10 = type metadata accessor for ModelXPCRequest.ExecuteRequest();
  v5[24] = v10;
  v5[25] = *(v10 - 8);
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_10005B364, 0, 0);
}

uint64_t sub_10005B364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1000133FC();
  sub_10000C72C();
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C(&qword_1001B8AE0);
  }

  v20 = type metadata accessor for Logger();
  sub_10000641C(v20, qword_1001BE400);
  v21 = sub_100008440();
  v22(v21);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = sub_10000320C(v24);
  v27 = v18[25];
  v26 = v18[26];
  if (v25)
  {
    v28 = v18[20];
    v59 = v18[24];
    v29 = v18[19];
    a10 = v18[18];
    a11 = v18[21];
    sub_100007698();
    a15 = sub_100003890();
    sub_100026B58(4.8149e-34);
    ModelXPCRequest.ExecuteRequest.metadata.getter();
    RequestMetadata.id.getter();
    (*(v29 + 8))(v28, a10);
    sub_100005070();
    sub_1000082D4(v30, v31, v32, v33);
    sub_100003E14();
    dispatch thunk of CustomStringConvertible.description.getter();
    v34 = sub_10016BC1C();
    v35(v34);
    (*(v27 + 8))(v26, v59);
    v36 = sub_1000187CC();
    sub_100004A3C(v36, v28, v37);
    sub_10001AFBC();
    *(v19 + 4) = v28;
    sub_10000EEC0(&_mh_execute_header, "Responding to request: %s", BYTE4(a12));
    sub_100003A7C();
    sub_10000706C();
  }

  else
  {

    v38 = sub_100013BBC();
    v39(v38);
  }

  v41 = v18[16];
  v40 = v18[17];
  v43 = v18[14];
  v42 = v18[15];
  v44 = v18[13];
  v45 = v18[10];
  v46 = v18[7];
  v60 = v18[8];
  v61 = v18[12];
  v18[5] = sub_100065020(&qword_1001BE600, &qword_100175550);
  v47 = sub_10005B680();
  sub_10006073C(v47);
  (*(v41 + 16))(v40, v46, v42);
  (*(v44 + 16))(v43, v60, v61);
  sub_100007660();
  ModelXPCRequest.ExecuteRequest.Response.init(result:lockedInferenceProvider:)();
  swift_storeEnumTagMultiPayload();
  v62 = v45 + *v45;
  swift_task_alloc();
  sub_100004B34();
  v18[27] = v48;
  *v48 = v49;
  sub_1000486D0(v48);
  sub_1000037A0();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, v60, v62, a15, a16, a17, a18);
}

uint64_t sub_10005B648()
{
  *(v1 + 496) = v0;
  *(v1 + 232) = v0;

  return swift_errorRetain();
}

uint64_t sub_10005B664@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 16) = *(v1 - 224);
}

unint64_t sub_10005B680()
{
  result = qword_1001BE608;
  if (!qword_1001BE608)
  {
    sub_10006A614(&qword_1001BE600, &qword_100175550);
    sub_100003814(&qword_1001BE610, &type metadata accessor for ModelXPCRequest.ExecuteRequest.Response, &protocol conformance descriptor for ModelXPCRequest.ExecuteRequest.Response);
    sub_100003814(&qword_1001BE618, &type metadata accessor for ModelXPCRequest.ExecuteRequest.Response, &protocol conformance descriptor for ModelXPCRequest.ExecuteRequest.Response);
    sub_100003814(&qword_1001B9A00, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    sub_100003814(&qword_1001B9A08, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE608);
  }

  return result;
}

uint64_t sub_10005B7D8()
{
  sub_100001ED0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;
  v2 = sub_1000060A4();

  return v3(v2);
}

uint64_t sub_10005B884(void *a1, int *a2)
{
  v9 = *(a1 + 3);
  v4 = a1[3];
  v5 = sub_100003370(a1, v4);
  *(v2 + 40) = v9;
  v6 = sub_1000036CC((v2 + 16));
  (*(*(v4 - 8) + 16))(v6, v5, v4);
  v10 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v2 + 56) = v7;
  *v7 = v2;
  v7[1] = sub_10005B9E0;

  return v10(v2 + 16);
}

uint64_t sub_10005B9E0()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = v1;
  sub_100004B40();
  *v3 = v2;
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_100003324((v2 + 16));
  sub_100001F00();

  return v6();
}

uint64_t sub_10005BAC0()
{
  sub_10001881C();
  sub_100003884();
  sub_100001EF4();
  v2 = v1;
  sub_100004B40();
  *v3 = v2;
  v4 = *v0;
  sub_100002B9C();
  *v5 = v4;

  sub_100003324((v2 + 16));

  sub_100001F00();
  sub_100007BB8();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_10005BC34()
{
  sub_100001ED0();
  sub_100001EF4();
  v2 = *(v1 + 80);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  v5 = sub_100001F70();
  v2(v5);

  sub_100001F00();

  return v6();
}

uint64_t sub_10005BD7C()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10005BE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  (*(v14[44] + 8))(v14[45], v14[43]);
  if (RequestMetadata.isStream.getter())
  {
    sub_10004AE14();
    sub_10014B2E4();

    sub_10003328C(v15, v16, v17);
    sub_100005070();
    sub_1000082D4(v18, v19, v20, v21);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23 = sub_100003754();
    v24(v23);
    v14[57] = a11;
    sub_100003CA4();
    sub_10005FAF0(v25, v26, &unk_100174018);
    v27 = swift_task_alloc();
    v14[58] = v27;
    *v27 = v14;
    sub_100012BF8(v27);
    sub_100011DF4();
    sub_100003540();

    return static _OSTransaction.named<A>(_:closure:isolation:)(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_1000065AC();
    sub_1000494CC();

    sub_100002F54();
    sub_100003540();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_10005C054(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for InferenceMonitor.Event();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_10005C1FC(a2, v7);
  swift_endAccess();

  LOBYTE(a2) = sub_1000453F0(v8);

  if (a2)
  {
    (*(v4 + 104))(v6, enum case for InferenceMonitor.Event.inferencesNotRunning(_:), v3);
    sub_10005C57C(v6, v10, v11, v12, v13, v14, v15, v16, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v17[8], v17[9], v17[10], v17[11]);
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_10005C1C0()
{
}

void sub_10005C1E4(uint64_t a1@<X8>)
{
  v2[11] = 1;
  v2[12] = a1;
  v2[13] = v1;
}

uint64_t sub_10005C330(uint64_t a1)
{
  v1 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v3 = v2;
  sub_100004B1C();
  __chkstk_darwin(v4);
  v6 = &v8 - v5;
  RequestMetadata.id.getter();
  sub_10005E334(&qword_1001B9580, &protocol conformance descriptor for UUIDIdentifier<A>);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_10005C434()
{
  v0 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100005630();
  v6 = (v4 - v5);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  RequestMetadata.id.getter();
  RequestMetadata.id.getter();
  type metadata accessor for RequestMetadata();
  v10 = static UUIDIdentifier.== infix(_:_:)();
  v11 = *(v2 + 8);
  v11(v6, v0);
  v11(v9, v0);
  return v10 & 1;
}

void sub_10005C57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000055B0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = type metadata accessor for InferenceMonitor.Event();
  sub_100002BDC();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_100002B8C();
  v30 = v29 - v28;
  v31 = sub_100065020(&qword_1001BD5F8, &qword_100173D90);
  sub_100002BDC();
  v33 = v32;
  sub_100004B1C();
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  (*(v26 + 16))(v30, v23, v24);
  sub_100065020(&qword_1001BD600, &qword_100173D98);
  AsyncStream.Continuation.yield(_:)();
  (*(v33 + 8))(v36, v31);
  sub_100002EEC();
}

uint64_t sub_10005C6E8()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = sub_10000A30C();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    sub_100002F54();

    return v10();
  }
}

uint64_t sub_10005C80C()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10005C920(uint64_t a1)
{
  v2 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC13modelmanagerd13DaemonRequest_unsafeManagerOwnedState;
  swift_beginAccess();
  sub_10005CAA8(a1 + v6, v5);
  v7 = *(v3 + 28);

  *&v5[v7] = 0;
  swift_beginAccess();
  sub_10005CB00(v5, a1 + v6);
  return swift_endAccess();
}

uint64_t sub_10005CA10()
{
  sub_10000639C();
  sub_100003884();
  sub_10005C920(*(v0 + 64));

  sub_100002F54();
  sub_100003D20();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10005CAA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005B00();
  v4(v3);
  sub_100002C00();
  v5 = sub_1000062B0();
  v6(v5);
  return a2;
}

uint64_t sub_10005CB00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DaemonRequest.ManagerOwnedState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005CB64()
{
  sub_100001ED0();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (v0)
  {
    v7 = sub_10000A30C();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    sub_100002F54();

    return v10();
  }
}

uint64_t sub_10005CCAC()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100003960();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 104) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_10006E060;
  }

  else
  {
    v6 = sub_10006DF88;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005CDD0()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_10005CEE0, v1, 0);
}

uint64_t sub_10005CEE0()
{
  v1 = v0[12];
  v2 = v0[9];
  if (sub_10000C6C0(v1, 1, v2) == 1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[17];
    v5 = v0[18];
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[8];
    (*(v8 + 32))(v7, v1, v2);
    swift_beginAccess();
    (*(v8 + 24))(v9 + v6, v7, v2);
    swift_endAccess();
    v10 = *(v9 + v5);
    v13 = *(v10 + 56);
    v12 = v10 + 56;
    v11 = v13;
    v14 = -1;
    v15 = -1 << *(*(v9 + v5) + 32);
    if (-v15 < 64)
    {
      v14 = ~(-1 << -v15);
    }

    v16 = v14 & v11;
    v17 = (63 - v15) >> 6;

    v19 = 0;
    if (v16)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return AsyncStream.Iterator.next(isolation:)(v18);
      }

      if (v20 >= v17)
      {
        break;
      }

      v16 = *(v12 + 8 * v20);
      ++v19;
      if (v16)
      {
        v19 = v20;
        do
        {
LABEL_13:
          v16 &= v16 - 1;

          sub_100125DE0();
        }

        while (v16);
        continue;
      }
    }

    v22 = v0[10];
    v21 = v0[11];
    v23 = v0[9];

    (*(v22 + 8))(v21, v23);
    v24 = swift_task_alloc();
    v0[19] = v24;
    *v24 = v0;
    v18 = sub_1000087D4(v24);

    return AsyncStream.Iterator.next(isolation:)(v18);
  }
}

uint64_t sub_10005D184()
{
  sub_100001ED0();
  sub_10000D554();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v0;

  sub_10000A9E0();
  sub_10000E700();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10005D298()
{
  sub_10000639C();
  sub_100003884();

  sub_100002F54();
  sub_100003D20();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10005D328()
{
  sub_10000639C();
  sub_100003884();
  sub_10000D554();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  sub_10000A9E0();

  sub_10000778C();
  sub_100003D20();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10005D478()
{
  sub_100002BAC();
  sub_100001EF4();
  v3 = v2;
  sub_100004B40();
  *v4 = v3;
  v5 = *v1;
  sub_100002B9C();
  *v6 = v5;
  *(v3 + 544) = v0;

  if (v0)
  {
    v7 = *(v3 + 168);
    v8 = sub_10013A638;
  }

  else
  {
    v9 = *(v3 + 168);

    v8 = sub_10005D5D0;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10005D588(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return sub_10002BA54(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10005D5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100007B84();
  sub_100005EA4();
  v30 = v16[36];
  v31 = v16[35];
  v32 = v16[32];
  v33 = v16[29];
  v17 = v16[26];
  v34 = v16[25];
  v18 = v16[18];

  sub_10000ED84(v17, &qword_1001B9058);
  sub_10005D588(v16 + 2);
  v19 = type metadata accessor for TaskPriority();
  sub_100007098(v19);
  sub_100005640();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v18;

  sub_100003E60();
  sub_1000652FC();

  sub_100002F54();
  sub_100003D04();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, v32, v33, v34, a14, a15, a16);
}

uint64_t sub_10005D76C()
{
  sub_100001ED0();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 328) = v0;

  sub_10000CC50();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10005D8A4(uint64_t a1)
{
  v4 = sub_10000EF2C(OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState);

  sub_10005C1FC(a1, v2);

  sub_10000A93C(v4);
}

void sub_10005D954()
{
  sub_1000055B0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (sub_1000136A8())
  {
    v20[2] = v2;
    v11 = sub_100065020(&qword_1001BD070, &qword_100173948);
    v20[1] = v20;
    sub_100002F04(v11);
    sub_100004B1C();
    __chkstk_darwin(v12);
    v14 = v20 - v13;
    v15 = sub_100003370((v0 + 40), *(v0 + 64));
    __chkstk_darwin(v15);
    sub_100009CB4();
    *(v16 - 32) = v10;
    *(v16 - 24) = v6;
    *(v16 - 16) = v4;
    *(v16 - 8) = v8;
    sub_1000084CC();
    EventReporter.send(eventBuiltWithPresetsAnd:)();
    v17 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
    sub_100005914(v14, v18, v19, v17);
    sub_10000ECD8(v14, &qword_1001BD070, &qword_100173948);
  }

  sub_1000616DC();
  sub_100002EEC();
}

uint64_t sub_10005DAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_10005DBB0, 0, 0);
}

uint64_t sub_10005DBB0()
{
  sub_10000636C();
  sub_100008110();
  sub_100045430();
  RequestMetadata.id.getter();
  sub_100004B94();
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = sub_10000AC24(v2);
  *v3 = v4;
  v3[1] = sub_10006159C;
  v5 = sub_10000A9C8(*(v0 + 40));

  return v7(v5);
}

uint64_t sub_10005DCD8(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10006FA64;

  return sub_10005DD70();
}

uint64_t sub_10005DD70()
{
  sub_100001ED0();
  v1[19] = v2;
  v1[20] = v0;
  v3 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  v1[21] = v3;
  sub_100002F44(v3);
  v1[22] = v4;
  v1[23] = sub_10000F0C0();
  v1[24] = swift_task_alloc();
  v5 = sub_100065020(&qword_1001BA488, &qword_100170FE8);
  sub_100002F04(v5);
  v1[25] = sub_10000F0C0();
  v1[26] = swift_task_alloc();
  sub_1000071A8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10005DE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v23;
  a22 = v24;
  sub_100003284();
  a20 = v22;
  v25 = v22[26];
  v26 = v22[19];
  v27 = v22[20];
  type metadata accessor for _OSActivity();
  v22[27] = swift_initStackObject();
  v28 = sub_10001B160("Removing active InferenceProvider request", 41, 2);
  v22[28] = v28;
  v29 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activeRequest;
  sub_100004BA0(v27 + OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_activeRequest, (v22 + 7));
  v30 = *(v27 + v29);

  sub_10005E210(v30, v25, v26);

  type metadata accessor for RequestPriority();
  v31 = sub_100001F0C();
  LODWORD(v26) = sub_10000C6C0(v31, 1, v30);
  sub_10000ECD8(v25, &qword_1001BA488, &qword_100170FE8);
  if (v26 == 1)
  {
    if (qword_1001B8900 != -1)
    {
      sub_100005C18(&qword_1001B8900);
    }

    v32 = type metadata accessor for Logger();
    v33 = sub_10000641C(v32, qword_1001B9FA0);
    v34 = sub_100009B4C();
    v35(v34);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v36, v37))
    {
      sub_100007698();
      a9 = sub_10000359C();
      a10 = a9;
      *v33 = 136315138;
      sub_10002E9D0();
      v38 = v28;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v42 = sub_10000D560();
      v43(v42);
      v44 = v39;
      v28 = v38;
      v45 = sub_100004A3C(v44, v41, &a10);

      *(v33 + 4) = v45;
      sub_100013710(&_mh_execute_header, v46, v47, "InferenceProviderExtensionConnection removeActiveRequest called for nonactive %s");
      sub_100003324(a9);
      sub_100003420();
      sub_100004B78();
    }

    else
    {

      v56 = sub_10000D560();
      v57(v56);
    }

    sub_100004B50(v28 + 24, (v22 + 10));
    os_activity_scope_leave((v28 + 24));
    swift_endAccess();
    sub_100011ABC();

    sub_100013D48();
    sub_100003540();

    return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    (*(v22[22] + 16))(v22[24], v22[19], v22[21]);
    sub_100003978();
    sub_100009BFC(v48, v49, v50, v30);
    sub_100004B50(v27 + v29, (v22 + 13));
    v51 = sub_1000060A4();
    sub_10005E8FC(v51, v52);
    swift_endAccess();
    v53 = swift_task_alloc();
    v22[29] = v53;
    *v53 = v22;
    v53[1] = sub_100061390;
    sub_100003540();

    return sub_100030D74();
  }
}

uint64_t sub_10005E210@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (sub_10005EC44(a3), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a1 + 56);
    v9 = type metadata accessor for RequestPriority();
    sub_100002C00();
    (*(v10 + 16))(a2, v8 + *(v10 + 72) * v7, v9);
    v11 = a2;
    v12 = 0;
    v13 = 1;
    v14 = v9;
  }

  else
  {
    type metadata accessor for RequestPriority();
    v11 = sub_100007A04();
  }

  return sub_100009BFC(v11, v12, v13, v14);
}

unint64_t sub_10005E2C8(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10005C330(v4);
  v2 = Hasher._finalize()();

  return sub_10005E384(a1, v2);
}

uint64_t sub_10005E334(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(&qword_1001B8F48, &qword_10016FB30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005E384(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v3 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    type metadata accessor for DaemonRequest(0);

    v6 = sub_10005C434();

    if (v6)
    {
      break;
    }
  }

  return i;
}

void sub_10005E448(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  sub_100065020(a2, a3);
  sub_10001B27C(a4, a2, a3);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = sub_1000055A4();
  sub_10005E4F4(v9, v10, a2, a3, a5);
  sub_100009C38();
}

void sub_10005E4F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v19 = a4;
  v20 = a5;
  v16 = a1;
  v18 = a3;
  v7 = sub_100065020(a3, a4);
  sub_100002BDC();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  v21 = v5 + 64;
  v17 = v5;
  v13 = ~(-1 << *(v5 + 32));
  for (i = a2 & v13; ((1 << i) & *(v21 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v9 + 16))(v12, *(v17 + 48) + *(v9 + 72) * i, v7);
    sub_10001B27C(v20, v18, v19);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v9 + 8))(v12, v7);
    if (v15)
    {
      break;
    }
  }

  sub_100002EEC();
}

uint64_t sub_10005E68C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005E6D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005E71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v9 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  __chkstk_darwin(v9);
  v18 = a2;
  v19 = a3;
  v20 = a4;
  static Buildable.with(_:)();
  result = GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  if (a5)
  {
    v11 = sub_100065020(&qword_1001BD080, &unk_100173958);
    __chkstk_darwin(v11 - 8);
    v13 = &v17[-v12];
    swift_getErrorValue();
    v14 = v21;
    v15 = v22;
    swift_errorRetain();
    sub_1000BA718(v14, v15, v13);
    v16 = type metadata accessor for GenerativeFunctionsInstrumentationError();
    sub_100009BFC(v13, 0, 1, v16);
    GenerativeFunctionsInstrumentationEvent.error.setter();
  }

  return result;
}

uint64_t sub_10005E8FC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_100065020(&qword_1001BA488, &qword_100170FE8);
  v8 = sub_100002F04(v7);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for RequestPriority();
  sub_100002BDC();
  v13 = v12;
  __chkstk_darwin(v14);
  v15 = sub_100005D38();
  if (sub_10000C6C0(v15, v16, v11) == 1)
  {
    sub_100006570();
    sub_10000ED30(v17, v18, v19);
    sub_10005EAEC(v10, a2);
    sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    sub_1000055EC();
    (*(v20 + 8))(a2);
    sub_100006570();
    return sub_10000ED30(v21, v22, v23);
  }

  else
  {
    (*(v13 + 32))(v3, a1, v11);
    swift_isUniquelyReferenced_nonNull_native();
    v27 = *v4;
    sub_100117B1C(v3, a2);
    *v4 = v27;
    sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    sub_1000055EC();
    return (*(v25 + 8))(a2);
  }
}

uint64_t sub_10005EAEC@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_10005EC44(a2);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    *v27 = *v2;
    v7 = sub_100065020(&qword_1001BCD60, &qword_100173518);
    sub_100003CBC(v7, v8, v9, v10, v11, v12, v13, v14, v26, v27[0]);
    v15 = *(*v28 + 48);
    v16 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    sub_100002C00();
    (*(v17 + 8))(v15 + *(v17 + 72) * v6, v16);
    v18 = *(*v28 + 56);
    v19 = type metadata accessor for RequestPriority();
    sub_100002C00();
    (*(v20 + 32))(a1, v18 + *(v20 + 72) * v6, v19);
    sub_10005EC68();
    _NativeDictionary._delete(at:)();
    *v2 = *v28;
    v21 = sub_100005780();
    v24 = v19;
  }

  else
  {
    type metadata accessor for RequestPriority();
    v21 = sub_1000128F4();
  }

  return sub_100009BFC(v21, v22, v23, v24);
}

unint64_t sub_10005EC68()
{
  result = qword_1001B9580;
  if (!qword_1001B9580)
  {
    sub_10006A614(&qword_1001B8F48, &qword_10016FB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9580);
  }

  return result;
}

uint64_t sub_10005ECCC()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100002B9C();
  *v3 = v2;

  if (v0)
  {
  }

  sub_10000CC50();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10005F1EC()
{
  _StringGuts.grow(_:)(18);

  type metadata accessor for UUID();
  sub_10005F2BC(&qword_1001B8F38, &protocol conformance descriptor for UUID);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 41;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0x6F69747563657845;
}

uint64_t sub_10005F2BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005F300(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    sub_1000055A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005F340()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005F390()
{
  sub_100001ED0();
  v2 = *v1;
  sub_100003960();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 40) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_10006EFF0;
  }

  else
  {
    v6 = sub_10005F4B4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10005F4B4()
{
  sub_100003284();
  v19 = v0;
  if (qword_1001B88C8 != -1)
  {
    sub_100004F90();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000641C(v1, qword_1001B8DF8);
  sub_100001F0C();

  v2 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000059A8();
  if (sub_100019C50())
  {
    v3 = *(v0 + 24);
    sub_100002F10();
    v4 = swift_slowAlloc();
    sub_100011828();
    v18[0] = swift_slowAlloc();
    *v4 = 136315394;
    v5 = sub_10005F1EC();
    sub_100004A3C(v5, v6, v18);

    sub_100009D60();
    v7 = *(v3 + OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_assets);

    v8 = sub_10006C26C(v7, v3);
    Array.description.getter();
    v9 = sub_1000079DC();
    sub_100007C14(v9, v10, v18);
    sub_10000A868();

    *(v4 + 14) = v8;
    sub_1000057CC(&_mh_execute_header, v11, v12, "%s releasing assets %s");
    sub_10000F0A4();
    sub_100002BD0();

    sub_100002BD0();
  }

  sub_100008354();
  v17 = v13;
  v14 = swift_task_alloc();
  *(v0 + 48) = v14;
  *v14 = v0;
  v14[1] = sub_100060E8C;
  v15 = *(v0 + 24);

  return v17(v15);
}

uint64_t sub_10005F6CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelCatalogAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005F730(uint64_t a1)
{
  v2 = type metadata accessor for ModelCatalogAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005F78C()
{
  sub_100001ED0();
  sub_100004B10();
  v0 = swift_task_alloc();
  v1 = sub_10000D0A0(v0);
  *v1 = v2;
  v1[1] = sub_10006FA64;
  sub_10001644C();

  return sub_10005F824(v3);
}

uint64_t sub_10005F824(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10006F558;

  return sub_10005F8BC();
}

uint64_t sub_10005F8BC()
{
  sub_100002BAC();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v1[12] = v3;
  sub_100002F44(v3);
  v1[13] = v4;
  v1[14] = sub_100002C58();
  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10005F96C()
{
  sub_10001881C();
  sub_100003884();
  v1 = v0[10];
  sub_100042FD4(v0[11]);
  v0[8] = v1;
  _s14ExecutionGroupCMa(0);
  sub_10000CC20();
  sub_10005FAF0(v2, v3, &unk_10016FAF8);

  sub_1000071D0();
  UUIDIdentifier.init(_:)();
  v4 = swift_task_alloc();
  v5 = sub_10000D03C(v4);
  *v5 = v6;
  v5[1] = sub_1000605C4;
  sub_1000031B8(v0[14]);
  sub_100007BB8();

  return sub_10005FBB4();
}

uint64_t sub_10005FA6C()
{
  *(v1 - 264) = v0;

  return swift_retain_n();
}

uint64_t _s14ExecutionGroupCMa(uint64_t a1)
{
  result = qword_1001B8E38;
  if (!qword_1001B8E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005FAF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005FB38@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_uuid;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10005FBB4()
{
  sub_100002BAC();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  v1[7] = v3;
  sub_100002F44(v3);
  v1[8] = v4;
  v1[9] = sub_10000F0C0();
  v1[10] = swift_task_alloc();
  v5 = sub_100002C10();

  return _swift_task_switch(v5, v6, v7);
}

void sub_10005FFC0()
{
  type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);

  sub_10005FF9C();
}

uint64_t sub_10006002C(uint64_t a1)
{
  v2 = sub_100065020(&qword_1001BB6D0, &qword_100172178);
  v3 = sub_100002F04(v2);
  __chkstk_darwin(v3);
  v4 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v5 = v1 + *(v4 + 48);
  sub_100060184();
  v6 = sub_100065020(&qword_1001B94D0, &unk_100171E80);
  result = sub_100015684(v6);
  if (v5 != 1)
  {
    type metadata accessor for Date();
    sub_100002BDC();
    __chkstk_darwin(v8);
    sub_100002B8C();
    static Date.now.getter();
    v9 = sub_10000A0B0(*(v4 + 32));
    return v10(v9);
  }

  return result;
}

void sub_100060184()
{
  sub_1000055B0();
  v23 = v0;
  v1 = sub_1000071D0();
  v3 = sub_100065020(v1, v2);
  sub_100002BDC();
  v5 = v4;
  sub_100004B1C();
  __chkstk_darwin(v6);
  sub_10014B090();
  sub_1000081B4();
  sub_100006570();
  sub_1000082D4(v7, v8, v9, v10);
  sub_100012484();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_100011E24();
  v11 = v5 + 8;
  do
  {
    sub_10014B174();
    if ((v12 & 1) == 0)
    {
      v18 = 1;
      v11 = v23;
      goto LABEL_9;
    }

    v13 = sub_100013870();
    v14(v13);
    sub_1000039B4();
    sub_1000082D4(&qword_1001B94E8, &qword_1001B94D0, &unk_100171E80, v15);
    sub_100025DE0();
    dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = sub_10014B374();
    v17(v16);
  }

  while ((v3 & 1) == 0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100060358();
  }

  v20 = sub_10014B030();
  v21(v20);
  sub_100046888();
  v18 = 0;
  *v22 = v24;
LABEL_9:
  sub_100009BFC(v11, v18, 1, v3);
  sub_100002EEC();
}

uint64_t sub_10006037C()
{
  sub_100002BAC();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100002C10();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100060474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v16 = sub_1000DB0B0();
  v17(v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = sub_1000038BC(v19);
  v21 = *(v14 + 112);
  v22 = *(v14 + 72);
  if (v20)
  {
    sub_10000A05C();
    swift_slowAlloc();
    a10 = v21;
    sub_10000A45C();
    swift_slowAlloc();
    sub_10003EAA0();
    *v21 = 136315138;
    sub_1000281BC(&qword_1001BB468, &qword_1001B94D0, &unk_100171E80);
    sub_100042FBC();
    v23 = sub_1000DABA4();
    (v21)(v23);
    v24 = sub_10000CD1C();
    sub_100004A3C(v24, v25, v26);
    sub_100005974();

    *(v21 + 4) = v22;
    sub_1000033FC();
    _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
    sub_100003324(v15);
    sub_1000039CC();

    sub_10000BFCC();
  }

  else
  {

    v32 = sub_100011BF0();
    (v21)(v32);
  }

  sub_100001F00();
  sub_100003540();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000605C4()
{
  sub_100001ED0();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100003308();
  v4(v3);
  v5 = sub_100026BB0();

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100060720()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t *sub_10006073C(uint64_t a1)
{
  *(v1 + 48) = a1;

  return sub_1000036CC((v1 + 16));
}

uint64_t sub_100060754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100026B98();
  sub_1000033DC();
  v14 = v12[10];
  v15 = (v12[11] + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups);
  sub_1000125C0();
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  v12[9] = v14;
  v18 = swift_task_alloc();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v12 + 9;

  sub_1000440DC();
  sub_100060948(v19, v20, v21);
  LOBYTE(v14) = v22;

  if (v14)
  {
    if (qword_1001B8AB8 != -1)
    {
      sub_100005344();
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100002FD0(v23, qword_1001BD750);

    v24 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_10014B230();
    if (sub_10001E6D8())
    {
      sub_10000A05C();
      v25 = swift_slowAlloc();
      sub_1000033D0();
      swift_slowAlloc();
      sub_100003DF0();
      *v25 = 136315138;
      v26 = sub_10005F1EC();
      sub_10000CB58(v26, v27, v28, v29);
      sub_100012918();
      *(v25 + 4) = v13;
      sub_100018928();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      sub_10005D588(v12 + 9);
      sub_100007C2C();

      sub_100002BD0();
    }
  }

  v35 = v12[10];
  sub_100002D24();
  swift_beginAccess();
  sub_100060B3C(v35);
  swift_endAccess();

  sub_100001F00();
  sub_100001FBC();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

void *sub_100060948(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100060998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; ; ++i)
  {
    if (a3 == i)
    {
      return 0;
    }

    v5 = static UUID.== infix(_:_:)();

    if (v5)
    {
      break;
    }
  }

  return i;
}

Swift::Int sub_100060A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a4;
  if (a3)
  {

    v10 = sub_1001430DC(v8, a1, a2, (a3 + 16), a3 + 32);
    v12 = v11;
    v14 = v13;
  }

  else
  {
    result = sub_100060998(*a4, a1, a2);
    v10 = result;
    v12 = v16;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
  return result;
}

uint64_t sub_100060B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_100060B20(uint64_t a1, uint64_t a2)
{

  return swift_dynamicCast();
}

uint64_t sub_100060B3C(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v11 = a1;
  v10[2] = v3;
  v10[3] = v2;
  v10[4] = &v11;
  v4 = sub_100060948(sub_10014AFC0, v10, v2);
  v6 = 0;
  if ((v7 & 1) == 0)
  {
    sub_100060C58(v4, v5);
    return v8;
  }

  return v6;
}

uint64_t sub_100060BAC(unint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, unint64_t))
{
  result = sub_10014B338();
  *v3 = v4;
  if ((result & 1) == 0)
  {
    result = a2(v4);
    v4 = result;
    *v3 = result;
  }

  v9 = *(v4 + 16);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v9 - 1 - a1;
    v12 = v4 + 8 * a1;
    v13 = *(v12 + 32);
    a3(v12 + 40, v11);
    *(v4 + 16) = v10;
    specialized ContiguousArray._endMutation()();
    return v13;
  }

  return result;
}

uint64_t sub_100060C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_10004D164(a11, v12, v11 & 1);
}

void sub_100060C58(int64_t a1, Swift::Int a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_100060BAC(a1, sub_10014AFE0, sub_100060E68);
    return;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_8:
    sub_100141958();
    v9 = *v3;
    if (*v3)
    {

      sub_1001455F8(a2, (v9 + 16), v9 + 32, v3);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
      }

      else if (a1 + 1 >= a1)
      {
        v10 = v3[1];

        sub_100146E00(a1, a1 + 1, v10, (v9 + 16), v9 + 32);

        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v6 > static _HashTable.minimumCapacity(forScale:)())
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_100060BAC(a1, sub_10014AFE0, sub_100060E68);
  if (v7)
  {
    swift_beginAccess();
    v11 = *(v7 + 24) & 0x3FLL;
  }

  else
  {
    v11 = 0;
  }

  if (v11 || *(*v5 + 16) >= 0x10uLL)
  {
    v12 = static _HashTable.scale(forCapacity:)();
    sub_100141A44(v12, v11, sub_100142420, sub_100141B14);
  }

  else
  {

    *v3 = 0;
  }
}

char *sub_100060E6C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_100004FA4(a3, result);
  }

  return result;
}

uint64_t sub_100060E8C()
{
  sub_100002BAC();
  sub_100001EF4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100002B9C();
  *v4 = v3;

  return _swift_task_switch(sub_100060F8C, v2, 0);
}

uint64_t sub_100060F8C()
{
  sub_100002BAC();
  sub_100060FE4();
  sub_100001F00();

  return v0();
}

uint64_t sub_100060FE4()
{
  v1 = v0;
  if (qword_1001B88C8 != -1)
  {
    sub_100004F90();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000641C(v2, qword_1001B8DF8);
  sub_100003170();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    sub_1000033D0();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315138;
    v7 = sub_10005F1EC();
    v9 = sub_100004A3C(v7, v8, v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s done", v5, 0xCu);
    sub_100003324(v6);
    sub_100002BD0();

    sub_100002BD0();
  }

  v10 = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_unsafeManagerOwnedState;
  swift_beginAccess();
  sub_100061154(v1 + v10);
  return swift_endAccess();
}

uint64_t sub_100061154(uint64_t a1)
{
  *a1 = 4;

  *(a1 + 8) = 0;

  *(a1 + 16) = 0;

  *(a1 + 24) = 0;
  type metadata accessor for DaemonRequest(0);
  sub_100065020(&qword_1001B8F70, &qword_10016FB88);
  sub_10005E68C(&qword_1001B8F78, type metadata accessor for DaemonRequest, &unk_10017466C);
  v2 = Dictionary.init(dictionaryLiteral:)();

  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_100061230()
{
  sub_100061288();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100061288()
{
  v1 = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_uuid;
  type metadata accessor for UUID();
  sub_1000055EC();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtCC13modelmanagerd14RequestManager14ExecutionGroup_inferenceProviderDescriptor;
  type metadata accessor for InferenceProviderDescriptor();
  sub_1000055EC();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t sub_100061390()
{
  sub_100001ED0();
  sub_100004B40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 240) = v0;

  sub_10000A9E0();
  v5 = *(v4 + 160);
  if (v0)
  {
    v6 = sub_1000A8384;
  }

  else
  {
    v6 = sub_1000614D8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000614D8()
{
  sub_10000CB70();
  sub_100003884();
  v1 = *(v0 + 224);
  sub_100004B50(v1 + 24, v0 + 128);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();
  sub_100011ABC();

  sub_100007A20();
  sub_100004CC8();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10006159C()
{
  sub_100001ED0();
  sub_100001EF4();
  v1 = *v0;
  sub_100002B9C();
  *v2 = v1;

  v3 = sub_100001F70();
  v4(v3);

  sub_100001F00();

  return v5();
}

void sub_1000616DC()
{
  sub_1000055B0();
  sub_100007C98(v1, v2, v3, v4);
  v5 = sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_100002BDC();
  v7 = v6;
  sub_100004B1C();
  __chkstk_darwin(v8);
  sub_10000BFFC();
  sub_100008458(OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_execRequestPostString);
  v10 = sub_1000127E0(v9);
  v11(v10);

  swift_errorRetain();
  v12 = OSSignposter.logHandle.getter();
  v13 = type metadata accessor for OSSignpostID();
  sub_100002BDC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100002B8C();
  sub_100004BF4();
  OSSignpostIntervalState.signpostID.getter();
  static os_signpost_type_t.end.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    v17 = sub_100019BCC();
    v18(v17, v13);
    (*(v7 + 8))(v0, v5);
LABEL_19:
    sub_100002EEC();
    return;
  }

  if ((v41 & 1) == 0)
  {

    if (v42)
    {
      sub_10000631C();
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_10000A46C();
  if (v19)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_100011408();
  if (!v20)
  {
    sub_100005704();
    if (!(!v20 & v21))
    {
      sub_100013B50();

      sub_10001382C();
LABEL_10:
      type metadata accessor for OSSignpostError();
      sub_100002BDC();
      __chkstk_darwin(v22);
      sub_1000086BC();

      checkForErrorAndConsumeState(state:)();

      v23 = sub_100001F70();
      v24(v23);
      if (!&enum case for OSSignpostError.doubleEnd(_:) || (sub_100003468(), !v20))
      {
        v25 = sub_100001F70();
        v26(v25);
      }

      sub_1000031E0();
      v27 = sub_100013E88();
      v28 = sub_100007A5C(v27);
      sub_10001127C(v28, v29);
      sub_1000188B4();
      v30 = sub_100019948();
      v31(v30);
      v32 = sub_1000035F4();
      sub_1000071F0(v32);
      v34 = v33 | 0x65750000u;
      if (v20)
      {
        v35 = 0x65736C6166;
      }

      else
      {
        v35 = v34;
      }

      sub_10000CF80(v35);

      v36 = OSSignpostID.rawValue.getter();
      sub_100002030(&_mh_execute_header, v37, v38, v36);
      sub_100012500();
      swift_arrayDestroy();
      sub_100003A4C();
      sub_100012A9C();

      v39 = sub_100005A74();
      v40(v39);
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_100061A8C()
{
}

uint64_t sub_100061AE8()
{
}

uint64_t sub_100061B10()
{
}

void *sub_100061B5C(uint64_t a1)
{
  v2 = type metadata accessor for ModelManagerError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_100070AD0(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        sub_100070AD0(v12 > 1, v13 + 1, 1);
      }

      v19 = v2;
      v20 = sub_100070B10(&qword_1001B9078, &type metadata accessor for ModelManagerError, &protocol conformance descriptor for ModelManagerError);
      v14 = sub_10000366C(&v18);
      v9(v14, v5, v2);
      v7 = v21;
      v21[2] = v13 + 1;
      sub_100004A04(&v18, &v7[5 * v13 + 4]);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_100061D54()
{
  swift_unknownObjectRelease();
  sub_100002EE0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100061D88()
{

  sub_100002EE0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100061DD8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100061E24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100061E84()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

char *sub_100061F00(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_100004FA4(a3, result);
  }

  return result;
}

uint64_t sub_100061F50()
{

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_100061F88()
{
  sub_1000134E8();
  type metadata accessor for Policy();
  sub_100002BDC();
  sub_1000402B0();
  v2 = sub_100018DB4();
  v3(v2);

  sub_100003324((v0 + v1));
  sub_100009C38();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_100062044()
{
  sub_1000134E8();
  type metadata accessor for Policy();
  sub_100002BDC();
  sub_1000402B0();
  v0 = sub_100018DB4();
  v1(v0);

  sub_100009C38();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100062100()
{

  sub_100002EE0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100062134()
{
  sub_100065020(&qword_1001B8B78, &qword_10016F740);
  sub_100002C00();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000621D4()
{
  type metadata accessor for Assertion.DaemonRep();
  sub_100002BDC();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);

  v5 = sub_100018DB4();
  v6(v5);

  return _swift_deallocObject(v0, ((v2 + 24) & ~v2) + v4, v2 | 7);
}

uint64_t sub_100062284()
{
  v1 = sub_100065020(&qword_1001B9420, &qword_100170118);
  sub_100002F44(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = type metadata accessor for Policy();
  if (!sub_10000C6C0(v0 + v4, 1, v5))
  {
    sub_100006098();
    (*(v6 + 8))(v0 + v4, v5);
  }

  sub_100011900();
  v8 = v7 & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v8 + 16, v3 | 7);
}

uint64_t sub_100062390()
{

  sub_100002EE0();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000623CC()
{
  v1 = sub_100065020(&qword_1001B9698, &qword_100170280);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100062484()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000624CC()
{

  sub_1000119E4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100062510()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100062580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 8) & 0xF000000000000007) != 0)
    {
      return (*a1 & 0x7FFFFFFFu) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = a1 + *(a3 + 20);

    return sub_10000C6C0(v8, a2, v7);
  }
}

void *sub_100062608(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    result[1] = 1;
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = v5 + *(a4 + 20);

    return sub_100009BFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006268C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000626D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1000062F4(*(a1 + 8));
  }

  v7 = type metadata accessor for UUID();
  v8 = a1 + *(a3 + 20);

  return sub_10000C6C0(v8, a2, v7);
}

uint64_t sub_100062750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = v5 + *(a4 + 20);

    return sub_100009BFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000627D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100062810(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100005C60();
  }

  type metadata accessor for FilePath();
  v5 = sub_100002CE0(*(a3 + 20));

  return sub_10000C6C0(v5, v6, v7);
}

void sub_100062884()
{
  sub_10001139C();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for FilePath();
    v5 = sub_100002CE0(*(v4 + 20));

    sub_100009BFC(v5, v6, v0, v7);
  }
}

uint64_t sub_1000628F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for XPCDictionary();
    v9 = a1 + *(a3 + 20);

    return sub_10000C6C0(v9, a2, v8);
  }
}

uint64_t sub_10006297C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for XPCDictionary();
    v8 = v5 + *(a4 + 20);

    return sub_100009BFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000629FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AssetPolicy();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000C6C0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 32));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100062AA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AssetPolicy();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100009BFC(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100062B50()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100062B98()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

char *sub_100062BE8()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100065020(&qword_1001BB028, &qword_100171AC8);
  }

  else
  {
    return (&type metadata for () + 1);
  }
}

char *sub_100062C18()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100065020(&qword_1001BB030, &qword_100171AD0);
  }

  else
  {
    return (&type metadata for () + 1);
  }
}

uint64_t sub_100062C48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100062C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppExtensionIdentity();

  return sub_10000C6C0(a1, a2, v4);
}

uint64_t sub_100062CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppExtensionIdentity();

  return sub_100009BFC(a1, a2, a2, v4);
}

uint64_t sub_100062D24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100062D6C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100062DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LoadState();
  sub_1000191C8();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_10000C6C0(v9, a2, v8);
  }

  type metadata accessor for Date();
  sub_1000191C8();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 32);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 40));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_100062E98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for LoadState();
  sub_1000191C8();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    type metadata accessor for Date();
    sub_1000191C8();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 32);
  }

  sub_100009BFC(v11, a2, a2, v10);
}

uint64_t sub_100062F80()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100062FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RequestPriority();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000C6C0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10006306C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RequestPriority();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100009BFC(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100063114()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006314C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_1000191C8();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    sub_1000191C8();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = type metadata accessor for RemoteInterfaceInformation();
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return sub_10000C6C0(v9, a2, v8);
}

uint64_t sub_10006323C()
{
  sub_100010CB8();
  sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_1000191C8();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_100065020(&qword_1001B8F48, &qword_10016FB30);
    sub_1000191C8();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = *(v2 + 20);
    }

    else
    {
      v6 = type metadata accessor for RemoteInterfaceInformation();
      v10 = *(v2 + 24);
    }

    v7 = v1 + v10;
  }

  return sub_100009BFC(v7, v0, v0, v6);
}

uint64_t sub_100063328()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100063368()
{
  v1 = sub_100065020(&qword_1001BBE30, &qword_1001726E0);
  sub_100002BDC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_10006343C()
{
  sub_100065020(&qword_1001BBE30, &qword_1001726E0);
  sub_100002C00();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000634C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_1000191C8();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_10000C6C0(v9, a2, v8);
  }

  sub_100065020(&qword_1001BA5F0, &qword_100171290);
  sub_1000191C8();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1000635CC()
{
  sub_100010CB8();
  sub_100065020(&qword_1001B8F48, &qword_10016FB30);
  sub_1000191C8();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_100065020(&qword_1001BA5F0, &qword_100171290);
    sub_1000191C8();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 24)) = (v0 - 1);
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 20);
  }

  sub_100009BFC(v7, v0, v0, v6);
}

uint64_t sub_10006371C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100063760()
{
  sub_100003324((v0 + 16));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000637A0()
{

  sub_100003324((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000637E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100065020(&qword_1001B9CD0, &qword_100170778);
    v10 = a1 + *(a3 + 24);

    return sub_10000C6C0(v10, a2, v9);
  }
}

uint64_t sub_100063880(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100065020(&qword_1001B9CD0, &qword_100170778);
    v8 = v5 + *(a4 + 24);

    return sub_100009BFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006390C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100063944()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100063984()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000639D4()
{
  swift_unknownObjectRelease();

  sub_1000119E4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100063A10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100063A48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100063A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000C6C0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100063B40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100005B00();
  result = type metadata accessor for URL();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100009BFC(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100063BF4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100063CAC()
{
  v1 = sub_100065020(&qword_1001BD318, &qword_100173B30);
  sub_100002BDC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100063D70()
{
  v1 = sub_100065020(&qword_1001BD318, &qword_100173B30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100063E04()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100063E64()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100063EAC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100063EEC()
{
  v1 = sub_100065020(&qword_1001B9CE0, &qword_100170F90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100063FE4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006404C()
{
  v1 = sub_100065020(&qword_1001B9058, &qword_10016FCC8);
  sub_100002F44(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v6 = *(v5 + 64);
  sub_10005D588((v0 + 16));

  v7 = type metadata accessor for UUIDIdentifier();
  if (!sub_10000C6C0(v0 + v4, 1, v7))
  {
    sub_100006098();
    (*(v8 + 8))(v0 + v4, v7);
  }

  return _swift_deallocObject(v0, ((((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_100064180()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100064228()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100064290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InferenceProviderRequestConfiguration();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return sub_10000C6C0(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_100065020(&qword_1001BDBB0, &unk_100174048);
    v8 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_100064378(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InferenceProviderRequestConfiguration();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = sub_100065020(&qword_1001BDBB0, &unk_100174048);
    v10 = a1 + *(a4 + 28);
  }

  return sub_100009BFC(v10, a2, a2, v9);
}

uint64_t sub_100064450()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100064514()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000645B0()
{
  v2 = type metadata accessor for ModelXPCRequest.PrewarmSession();
  sub_100002BDC();
  v4 = v3;
  v5 = *(v3 + 80);
  sub_10016BC34();

  (*(v4 + 8))(v0 + ((v5 + 40) & ~v5), v2);

  return _swift_deallocObject(v0, v1 + 8, v5 | 7);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000055B0();
  v3 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v3);
  sub_100004B1C();
  __chkstk_darwin(v4);
  v80 = &v69 - v5;
  type metadata accessor for _OSActivity();
  swift_allocObject();
  qword_1001B8880 = sub_10001B160("Daemon initialization", 21, 2);
  v6 = type metadata accessor for Logger();
  sub_100065A60(v6, qword_1001B8888);
  v7 = sub_10000641C(v6, qword_1001B8888);
  sub_100004F60();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100002B8C();
  v13 = v12 - v11;
  generalLogHandle.getter();
  (*(v9 + 32))(v7, v13, v6);
  strcpy(&qword_1001B88A0, "modelmanagerd");
  *&algn_1001B88A8[6] = -4864;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Initializing Daemon...", v16, 2u);
  }

  v103[3] = &type metadata for ModelManager;
  v103[4] = sub_1000207F8();
  LOBYTE(v103[0]) = 3;
  v17 = isFeatureEnabled(_:)();
  sub_100003324(v103);
  if (v17)
  {
    v18 = SIG_DFL.getter();
    signal(15, v18);
  }

  v19 = type metadata accessor for RemoteXPCProvider();
  v20 = sub_1000077EC(v19);
  qword_1001BE6B0 = v19;
  unk_1001BE6B8 = &off_1001B0308;
  qword_1001BE698 = v20;
  v21 = type metadata accessor for ModelCatalogProvider(0);
  swift_allocObject();
  sub_10010E640();
  v71 = v22;
  v23 = type metadata accessor for FilesystemProvider();
  v70 = sub_1000077EC(v23);
  v24 = type metadata accessor for SysctlProvider();
  v79 = sub_1000077EC(v24);
  v25 = type metadata accessor for RunningBoardProvider(0);
  swift_allocObject();
  v69 = sub_1000FB95C();
  type metadata accessor for TrialFrameworkProvider();
  swift_allocObject();
  v78 = sub_1000BC294();
  sub_10006A65C(&qword_1001BE698, v103, &qword_1001B8AF8, &qword_10016F6E8);
  v26 = type metadata accessor for RegulatoryDomainProvider();
  v27 = sub_1000077EC(v26);
  type metadata accessor for ReportingProvider();
  swift_allocObject();
  v77 = sub_10006FAD8();
  type metadata accessor for OSEligibilityChecker();
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_100065AC4();
  v29 = Dictionary.init(dictionaryLiteral:)();
  v76 = v28;
  *(v28 + 112) = v29;
  v30 = type metadata accessor for PowerProvider();
  v31 = sub_1000077EC(v30);
  type metadata accessor for ExtensionKitProvider();
  swift_allocObject();
  v74 = sub_1000BF308();
  v32 = type metadata accessor for NeuralEngine();
  v75 = sub_1000077EC(v32);
  if (sub_10001297C(_swiftEmptyArrayStorage))
  {
    sub_10004AC98(_swiftEmptyArrayStorage);
    v73 = v33;
  }

  else
  {
    v73 = &_swiftEmptySetSingleton;
  }

  type metadata accessor for TelemetryManager();
  v34 = swift_allocObject();
  v72 = sub_10011A2E4(v34);
  v102[3] = v21;
  v102[4] = &off_1001B2060;
  v102[0] = v71;
  v100 = v23;
  v101 = &off_1001B16D0;
  v99[0] = v70;
  v97 = v25;
  v98 = &off_1001B17E8;
  v96[0] = v69;
  v94 = &type metadata for OSVariantProvider;
  v95 = &off_1001B15B8;
  v91 = &type metadata for MemoryPressureEventProvider;
  v92 = &off_1001B2618;
  v88 = v26;
  v89 = &off_1001B0758;
  v87[0] = v27;
  v85 = &type metadata for CurrentTimeProvider;
  v86 = &off_1001B1028;
  v82 = v30;
  v83 = &off_1001B0330;
  v81[0] = v31;
  type metadata accessor for DaemonContext();
  v35 = swift_allocObject();
  sub_100016494(v102, v21);
  v71 = &v69;
  sub_100004F60();
  __chkstk_darwin(v36);
  sub_100002B8C();
  v39 = (v38 - v37);
  (*(v40 + 16))(v38 - v37);
  sub_100016494(v99, v100);
  v70 = &v69;
  sub_100004F60();
  __chkstk_darwin(v41);
  sub_100002B8C();
  v44 = (v43 - v42);
  (*(v45 + 16))(v43 - v42);
  sub_100016494(v96, v97);
  v69 = &v69;
  sub_100004F60();
  __chkstk_darwin(v46);
  sub_100002B8C();
  v49 = (v48 - v47);
  (*(v50 + 16))(v48 - v47);
  sub_100016494(v93, v94);
  sub_100016494(v90, v91);
  sub_100016494(v87, v88);
  sub_100004F60();
  __chkstk_darwin(v51);
  sub_100002B8C();
  v54 = (v53 - v52);
  (*(v55 + 16))(v53 - v52);
  sub_100016494(v84, v85);
  sub_100016494(v81, v82);
  sub_100004F60();
  __chkstk_darwin(v56);
  sub_100002B8C();
  v59 = (v58 - v57);
  (*(v60 + 16))(v58 - v57);
  v61 = sub_100067E00(*v39, v75, *v44, v79, *v49, v78, v103, 0, 0, 0, 0, 0, v73, v72, *v54, v77, v76, *v59, v74, v35);
  sub_100003324(v81);
  sub_100003324(v84);
  sub_100003324(v87);
  sub_100003324(v90);
  sub_100003324(v93);
  sub_100003324(v96);
  sub_100003324(v99);
  sub_100003324(v102);
  qword_1001B88B0 = v61;
  type metadata accessor for Daemon(0);
  swift_allocObject();

  qword_1001B88B8 = sub_10008DE94(v62);
  v63 = qword_1001B8880;
  swift_beginAccess();
  os_activity_scope_leave((v63 + 24));
  swift_endAccess();
  v64 = type metadata accessor for TaskPriority();
  sub_100009BFC(v80, 1, 1, v64);
  type metadata accessor for MainActor();
  v65 = static MainActor.shared.getter();
  sub_100002EE0();
  v66 = swift_allocObject();
  *(v66 + 16) = v65;
  *(v66 + 24) = &protocol witness table for MainActor;
  sub_1000652FC();

  v67 = [objc_opt_self() mainRunLoop];
  [v67 run];

  sub_100002EEC();
  return result;
}

uint64_t sub_100065020(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100065068()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_1000650FC, v2, v1);
}

uint64_t sub_1000650FC()
{
  sub_100002BAC();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10006518C;

  return sub_10008EA54();
}

uint64_t sub_10006518C()
{
  sub_100002BAC();
  v1 = *v0;
  v2 = *v0;
  sub_100002B9C();
  *v3 = v2;

  v4 = *(v1 + 32);
  v5 = *(v1 + 24);

  return _swift_task_switch(sub_1000652A0, v5, v4);
}

uint64_t sub_1000652A0()
{
  sub_100002BAC();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000652FC()
{
  sub_1000055B0();
  sub_10000A4DC();
  v5 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v5);
  sub_100004B1C();
  __chkstk_darwin(v6);
  sub_10000831C(v7, v15);
  v8 = type metadata accessor for TaskPriority();
  sub_100005790(v8);
  if (&qword_10016F6E0 == 1)
  {
    sub_10000C790(v1, &qword_1001BB050, &qword_10016F6E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100006454();
    (*(v9 + 8))(v1, &qword_1001BB050);
  }

  v10 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (v10)
  {
    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_1000033B4();
    if (v2)
    {
LABEL_6:
      String.utf8CString.getter();
      sub_100002EE0();
      v11 = swift_allocObject();
      sub_100003940(v11);
      if (v4)
      {
        sub_10001857C();
      }

      else
      {
        v12 = 0;
      }

      sub_1000129AC(v12);
      swift_task_create();

      sub_10000C790(v3, &qword_1001BB050, &qword_10016F6E0);

      goto LABEL_14;
    }
  }

  else if (v2)
  {
    goto LABEL_6;
  }

  sub_10000C790(v3, &qword_1001BB050, &qword_10016F6E0);
  sub_100002EE0();
  v13 = swift_allocObject();
  sub_10000883C(v13);
  if (v14)
  {
    sub_10000F094();
  }

  swift_task_create();
LABEL_14:
  sub_100002EEC();
}

void sub_100065530()
{
  sub_1000055B0();
  sub_10000A4DC();
  v5 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v5);
  sub_100004B1C();
  __chkstk_darwin(v6);
  sub_10000831C(v7, v17);
  v8 = type metadata accessor for TaskPriority();
  sub_100005790(v8);
  if (&qword_10016F6E0 == 1)
  {
    sub_10000C790(v1, &qword_1001BB050, &qword_10016F6E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100006454();
    (*(v9 + 8))(v1, &qword_1001BB050);
  }

  v10 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (v10)
  {
    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_1000033B4();
    if (v2)
    {
LABEL_6:
      String.utf8CString.getter();
      sub_100002EE0();
      v11 = swift_allocObject();
      sub_100003940(v11);
      if (v4)
      {
        sub_10001857C();
      }

      else
      {
        v12 = 0;
      }

      sub_1000129AC(v12);
      sub_10001944C(v15, v16, &type metadata for Bool);

      sub_10000C790(v3, &qword_1001BB050, &qword_10016F6E0);

      goto LABEL_14;
    }
  }

  else if (v2)
  {
    goto LABEL_6;
  }

  sub_10000C790(v3, &qword_1001BB050, &qword_10016F6E0);
  sub_100002EE0();
  v13 = swift_allocObject();
  sub_10000883C(v13);
  if (v14)
  {
    sub_10000F094();
  }

  swift_task_create();
LABEL_14:
  sub_100002EEC();
}

void sub_10006574C()
{
  sub_1000055B0();
  sub_10000A4DC();
  v5 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v5);
  sub_100004B1C();
  __chkstk_darwin(v6);
  sub_10000831C(v7, v17);
  v8 = type metadata accessor for TaskPriority();
  sub_100005790(v8);
  if (&qword_10016F6E0 == 1)
  {
    sub_10000C790(v1, &qword_1001BB050, &qword_10016F6E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100006454();
    (*(v9 + 8))(v1, &qword_1001BB050);
  }

  v10 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (v10)
  {
    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_1000033B4();
    if (v2)
    {
LABEL_6:
      String.utf8CString.getter();
      sub_100002EE0();
      v11 = swift_allocObject();
      sub_100003940(v11);
      if (v4)
      {
        sub_10001857C();
      }

      else
      {
        v12 = 0;
      }

      sub_1000129AC(v12);
      sub_10001944C(v15, v16, &unk_1001B2520);

      sub_10000C790(v3, &qword_1001BB050, &qword_10016F6E0);

      goto LABEL_14;
    }
  }

  else if (v2)
  {
    goto LABEL_6;
  }

  sub_10000C790(v3, &qword_1001BB050, &qword_10016F6E0);
  sub_100002EE0();
  v13 = swift_allocObject();
  sub_10000883C(v13);
  if (v14)
  {
    sub_10000F094();
  }

  swift_task_create();
LABEL_14:
  sub_100002EEC();
}

uint64_t variable initialization expression of InferenceProviderManager.ConnectionCollection.groupsByIdentifier()
{
  type metadata accessor for InferenceProviderManager.ConnectionCollection.Group(0);

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t variable initialization expression of InferenceProviderManager._workQueue()
{
  type metadata accessor for InferenceProviderManager(0);
  sub_10006AB4C(&qword_1001B8B08, type metadata accessor for InferenceProviderManager);

  return WorkQueue.init()();
}

uint64_t *sub_100065A60(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100065AC4()
{
  result = qword_1001B8B00;
  if (!qword_1001B8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B8B00);
  }

  return result;
}

uint64_t sub_100065B18(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for InferenceProviderAsset(0);
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

Swift::Int sub_100065B74(unint64_t a1)
{
  if (sub_10000E8DC(a1))
  {
    sub_100065020(&qword_1001B8BF0, qword_10016F7B8);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v16 = sub_10001297C(a1);
  if (v16)
  {
    v3 = 0;
    v4 = v2 + 56;
    while (1)
    {
      sub_100022A7C();
      if ((a1 & 0xC000000000000001) != 0)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = result;
      }

      else
      {
        v6 = *(a1 + 32 + 8 * v3);
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      Hasher.init(_seed:)();
      sub_100012C1C(v17);
      result = Hasher._finalize()();
      v8 = ~(-1 << v2[32]);
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *&v4[8 * v10];
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        type metadata accessor for DaemonSession(0);

        v13 = sub_1000372F8();

        if (v13)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *&v4[8 * v10] = v12 | v11;
      *(*(v2 + 6) + 8 * v9) = v6;
      v14 = *(v2 + 2);
      v7 = __OFADD__(v14, 1);
      v15 = v14 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 2) = v15;
LABEL_17:
      if (v3 == v16)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

void sub_100065D3C()
{
  sub_1000055B0();
  v3 = v2;
  v4 = type metadata accessor for Assertion.DaemonRep();
  sub_100004F60();
  __chkstk_darwin(v5);
  sub_100007D4C();
  v7 = __chkstk_darwin(v6);
  sub_100013E40(v7, v8, v9, v10, v11, v12, v13, v14, v37);
  if (*(v3 + 16) && (sub_100065020(&qword_1001B8B98, &qword_10016F750), sub_1000055A4(), v15 = static _SetStorage.allocate(capacity:)(), *(v3 + 16)))
  {
    sub_100001EDC();
    v38 = v3;
    v18 = (v17 + 8);
    while (v16 < *(v3 + 16))
    {
      sub_10000EDD8(v16);
      v20 = *(v19 + 16);
      v20();
      sub_10000558C();
      v22 = sub_10006AB4C(&qword_1001B8BA0, v21);
      sub_100012640(v22);
      sub_100011E24();
      while (1)
      {
        sub_1000126F4();
        if (v26)
        {
          break;
        }

        v27 = v15;
        (v20)(v0, *(v15 + 48) + v40 * v1, v4);
        sub_10000558C();
        v29 = sub_10006AB4C(&qword_1001B8BA8, v28);
        v30 = sub_100013798(v29);
        v31 = *v18;
        (*v18)(v0, v4);
        if (v30)
        {
          v31(v40, v4);
          v15 = v27;
          goto LABEL_12;
        }

        v15 = v27;
      }

      *(v39 + 8 * v23) = v25 | v24;
      v32 = sub_100007C00(*(v15 + 48));
      v33(v32);
      v34 = *(v15 + 16);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_16;
      }

      *(v15 + 16) = v36;
LABEL_12:
      sub_10000A3E0();
      v3 = v38;
      if (v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_100002EEC();
  }
}

void sub_100065FA8()
{
  sub_1000055B0();
  v3 = v2;
  v4 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  sub_100004F60();
  __chkstk_darwin(v5);
  sub_100007D4C();
  v7 = __chkstk_darwin(v6);
  sub_100013E40(v7, v8, v9, v10, v11, v12, v13, v14, v34);
  if (*(v3 + 16) && (sub_100065020(&qword_1001B8B80, &qword_10016F748), sub_1000055A4(), v36 = static _SetStorage.allocate(capacity:)(), *(v3 + 16)))
  {
    sub_100001EDC();
    v35 = v3;
    v17 = (v16 + 8);
    while (v15 < *(v3 + 16))
    {
      sub_10000EDD8(v15);
      v19 = *(v18 + 16);
      v19();
      v20 = v36;
      v21 = sub_10001B27C(&qword_1001B8B88, &qword_1001B8B78, &qword_10016F740);
      sub_100012640(v21);
      sub_100011E24();
      while (1)
      {
        sub_1000126F4();
        if (v25)
        {
          break;
        }

        (v19)(v0, *(v20 + 48) + v38 * v1, v4);
        v26 = sub_10001B27C(&qword_1001B8B90, &qword_1001B8B78, &qword_10016F740);
        v27 = sub_100013798(v26);
        v28 = *v17;
        (*v17)(v0, v4);
        if (v27)
        {
          v28(v38, v4);
          goto LABEL_12;
        }

        v20 = v36;
      }

      *(v37 + 8 * v22) = v24 | v23;
      v29 = sub_100007C00(*(v20 + 48));
      v30(v29);
      v31 = *(v20 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_16;
      }

      *(v20 + 16) = v33;
LABEL_12:
      sub_10000A3E0();
      v3 = v35;
      if (v25)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_100002EEC();
  }
}

void sub_10006622C(unint64_t a1)
{
  if (sub_10000E8DC(a1))
  {
    sub_100065020(&qword_1001B8BB0, &qword_10016F758);
    sub_1000055A4();
    v1 = v4;
    v5 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v5 = &_swiftEmptySetSingleton;
  }

  v10 = sub_10001297C(a1);
  if (v10)
  {
    sub_1000199B4();
    while (1)
    {
      sub_100009D48();
      sub_100022A7C();
      if (v1)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v6 = __OFADD__(v2++, 1);
      if (v6)
      {
        break;
      }

      Hasher.init(_seed:)();
      sub_10005C330(v11);
      v1 = v11;
      Hasher._finalize()();
      sub_100011E24();
      while (1)
      {
        sub_10001898C();
        if (v8)
        {
          break;
        }

        type metadata accessor for DaemonRequest(0);
        sub_100061A8C();
        v1 = sub_10005C434();

        if (v1)
        {

          goto LABEL_17;
        }
      }

      sub_10000A84C(v7);
      if (v6)
      {
        goto LABEL_20;
      }

      v5[2] = v9;
LABEL_17:
      if (v2 == v10)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_100066394(uint64_t a1, uint64_t a2, uint64_t *a3, double a4)
{
  v21 = a2;
  v7 = *a3;
  v35[3] = &type metadata for CurrentTimeProvider;
  v35[4] = &off_1001B1028;
  v8 = type metadata accessor for RunningBoardProvider(0);
  v34[3] = v8;
  v34[4] = &off_1001B17E8;
  v34[0] = a1;
  v32 = v7;
  v33 = &off_1001B0330;
  v31[0] = a3;
  type metadata accessor for RateLimiter();
  v9 = swift_allocObject();
  sub_100016494(v35, &type metadata for CurrentTimeProvider);
  v10 = sub_100016494(v34, v8);
  __chkstk_darwin(v10);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = sub_100016494(v31, v32);
  __chkstk_darwin(v14);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v12;
  v19 = *v16;
  v29 = &type metadata for CurrentTimeProvider;
  v30 = &off_1001B1028;
  v27 = &off_1001B17E8;
  v26 = v8;
  *&v25 = v18;
  v24 = &off_1001B0330;
  v23 = v7;
  *&v22 = v19;
  swift_defaultActor_initialize();
  sub_100065020(&qword_1001B8C08, &qword_10016F808);
  *(v9 + 248) = Dictionary.init(dictionaryLiteral:)();
  *(v9 + 256) = 0;
  sub_100004A04(&v28, v9 + 112);
  sub_100004A04(&v25, v9 + 152);
  *(v9 + 232) = v21;
  *(v9 + 240) = a4;
  sub_100004A04(&v22, v9 + 192);
  sub_100003324(v31);
  sub_100003324(v34);
  sub_100003324(v35);
  return v9;
}

uint64_t sub_100066678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = type metadata accessor for ModelCatalogProvider(0);
  v12 = &off_1001B2060;
  *&v10 = a1;
  v8 = type metadata accessor for RegulatoryDomainProvider();
  v9 = &off_1001B0758;
  *&v7 = a2;
  swift_defaultActor_initialize();
  *(a3 + 192) = &_swiftEmptySetSingleton;
  sub_100004A04(&v10, a3 + 112);
  sub_100004A04(&v7, a3 + 152);
  return a3;
}

uint64_t sub_100066710(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = type metadata accessor for PolicyManager(0);
  v12 = &off_1001B05F8;
  *&v10 = a2;
  swift_defaultActor_initialize();
  type metadata accessor for TrialManager(0);
  sub_10006AB4C(&qword_1001B8BE8, type metadata accessor for TrialManager);
  WorkQueue.init()();
  v8 = OBJC_IVAR____TtC13modelmanagerd12TrialManager_enrollments;
  type metadata accessor for Policy();
  *(a4 + v8) = Dictionary.init(dictionaryLiteral:)();
  sub_100004A04(a1, a4 + 112);
  sub_100004A04(&v10, a4 + 152);
  *(a4 + OBJC_IVAR____TtC13modelmanagerd12TrialManager_trials) = a3;
  return a4;
}

uint64_t sub_100066834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = type metadata accessor for ModelCatalogProvider(0);
  v17 = &off_1001B2060;
  *&v15 = a2;
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_logHandle;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  generalLogHandle.getter();
  (*(v10 + 32))(a4 + v8, v12, v9);
  *(a4 + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_forceVersionSwitchTask) = 0;
  *(a4 + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_assetManager) = a1;
  sub_100004A04(&v15, a4 + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_modelCatalog);
  *(a4 + OBJC_IVAR____TtCC13modelmanagerd18ModelXPCDispatcher20AssetVersionSwitcher_requestManager) = a3;
  return a4;
}

uint64_t sub_100066994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = type metadata accessor for ModelCatalogProvider(0);
  v16 = &off_1001B2060;
  v14[0] = a2;
  _s20AssetVersionSwitcherCMa(0);
  v6 = swift_allocObject();
  v7 = sub_100016494(v14, v15);
  __chkstk_darwin(v7);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_100066834(a1, *v9, a3, v6);
  sub_100003324(v14);
  return v11;
}

uint64_t sub_100066AC0(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  v15[3] = type metadata accessor for PolicyManager(0);
  v15[4] = &off_1001B05F8;
  v15[0] = a1;
  v14[3] = &type metadata for MemoryPressureEventProvider;
  v14[4] = &off_1001B2618;
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_activeAssertionID;
  v10 = sub_100065020(&qword_1001B8B78, &qword_10016F740);
  sub_100009BFC(a2 + v9, 1, 1, v10);
  *(a2 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogTask) = 0;
  sub_1000480AC(v15, a2 + 112);
  sub_1000480AC(v14, a2 + 152);
  *(a2 + OBJC_IVAR____TtC13modelmanagerd22MemoryPressureObserver_criticalMemoryPressureWatchdogInterval) = a3;
  static TaskPriority.high.getter();
  v11 = type metadata accessor for TaskPriority();
  sub_100009BFC(v8, 0, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;

  sub_1000652FC();

  sub_100003324(v14);
  sub_100003324(v15);
  return a2;
}

uint64_t sub_100066C88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t *a7)
{
  v68 = a3;
  v69 = a5;
  v66 = *a7;
  v67 = a2;
  v11 = type metadata accessor for InferenceProviderAssetManager(0);
  v92[3] = v11;
  v92[4] = &off_1001B1200;
  v92[0] = a1;
  v12 = type metadata accessor for ModelCatalogProvider(0);
  v90 = v12;
  v91 = &off_1001B2060;
  v89[0] = a4;
  v13 = type metadata accessor for RunningBoardProvider(0);
  v87 = v13;
  v88 = &off_1001B17E8;
  v86[0] = a6;
  v84 = &type metadata for CurrentTimeProvider;
  v85 = &off_1001B1028;
  v81 = v66;
  v82 = &off_1001B0330;
  v80[0] = a7;
  type metadata accessor for RequestManager(0);
  v14 = swift_allocObject();
  v15 = sub_100016494(v92, v11);
  __chkstk_darwin(v15);
  v17 = (&v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = sub_100016494(v89, v90);
  __chkstk_darwin(v19);
  v21 = (&v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = sub_100016494(v86, v87);
  __chkstk_darwin(v23);
  v25 = (&v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  sub_100016494(v83, v84);
  v27 = sub_100016494(v80, v81);
  __chkstk_darwin(v27);
  v29 = (&v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = *v17;
  v32 = *v21;
  v33 = *v25;
  v34 = *v29;
  v79[3] = v11;
  v79[4] = &off_1001B1200;
  v79[0] = v31;
  v77 = v12;
  v78 = &off_1001B2060;
  v76[0] = v32;
  v75[3] = v13;
  v75[4] = &off_1001B17E8;
  v75[0] = v33;
  v74[3] = &type metadata for CurrentTimeProvider;
  v74[4] = &off_1001B1028;
  v73[3] = v66;
  v73[4] = &off_1001B0330;
  v73[0] = v34;
  swift_defaultActor_initialize();
  v35 = v14 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_currentPolicy;
  v36 = enum case for RequestPriority.none(_:);
  v37 = type metadata accessor for RequestPriority();
  (*(*(v37 - 8) + 104))(v35, v36, v37);
  v38 = _s6PolicyVMa(0);
  *(v35 + v38[7]) = &_swiftEmptySetSingleton;
  *(v35 + v38[5]) = 0x40F5180000000000;
  *(v35 + v38[6]) = 204;
  v39 = (v14 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_activeGroups);
  v40 = sub_100140DAC(_swiftEmptyArrayStorage);
  *v39 = 0;
  v39[1] = v40;
  v41 = (v14 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingForegroundGroups);
  v42 = sub_100140DAC(_swiftEmptyArrayStorage);
  *v41 = 0;
  v41[1] = v42;
  v43 = (v14 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_pendingBackgroundGroups);
  v44 = sub_100140DAC(_swiftEmptyArrayStorage);
  *v43 = 0;
  v43[1] = v44;
  v45 = OBJC_IVAR____TtC13modelmanagerd14RequestManager_inferenceMonitorManager;
  type metadata accessor for InferenceMonitorManager(0);
  swift_allocObject();
  sub_1001253F0();
  *(v14 + v45) = v46;
  v47 = (v14 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_inputStreamRequests);
  sub_100148604();
  *v47 = v48;
  v47[1] = v49;
  v47[2] = v50;
  *(v14 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_nextExecutionGroupToAcquire) = 0;
  *(v14 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_extantRequests) = &_swiftEmptySetSingleton;
  sub_1000480AC(v79, v14 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_assetManager);
  v51 = v68;
  *(v14 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_neuralEngine) = v67;
  sub_1000480AC(v51, v14 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_telemetryManager);
  *(v14 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_foregroundOvercommitBudget) = *(*sub_100003370(v76, v77) + 120);
  v52 = v69;
  sub_1000480AC(v69, v14 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_reportingProvider);
  sub_1000480AC(v75, v14 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_runningBoard);
  sub_1000480AC(v74, v14 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_currentTime);
  sub_1000480AC(v74, v72);
  sub_1000480AC(v75, v71);
  swift_beginAccess();
  v53 = *(v35 + v38[6]);
  v54 = *(v35 + v38[5]);
  sub_1000480AC(v73, v70);
  sub_100016494(v72, v72[3]);
  v55 = sub_100016494(v71, v71[3]);
  __chkstk_darwin(v55);
  v57 = (&v65 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v58 + 16))(v57);
  v59 = sub_100016494(v70, v70[3]);
  __chkstk_darwin(v59);
  v61 = (&v65 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61);
  v63 = sub_100066394(*v57, v53, *v61, v54);
  sub_100003324(v52);
  sub_100003324(v51);
  sub_100003324(v73);
  sub_100003324(v74);
  sub_100003324(v75);
  sub_100003324(v79);
  sub_100003324(v70);
  sub_100003324(v71);
  sub_100003324(v72);
  *(v14 + OBJC_IVAR____TtC13modelmanagerd14RequestManager_rateLimiter) = v63;
  sub_100003324(v76);
  sub_100003324(v80);
  sub_100003324(v83);
  sub_100003324(v86);
  sub_100003324(v89);
  sub_100003324(v92);
  return v14;
}

void *sub_1000674B4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = type metadata accessor for ModelCatalogProvider(0);
  v32[3] = v8;
  v32[4] = &off_1001B2060;
  v32[0] = a1;
  v9 = type metadata accessor for InferenceProviderManager(0);
  v30 = v9;
  v31 = &off_1001B0F48;
  v29[0] = a2;
  type metadata accessor for RemoteManager();
  v10 = swift_allocObject();
  v11 = sub_100016494(v32, v8);
  __chkstk_darwin(v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_100016494(v29, v30);
  __chkstk_darwin(v15);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v27 = v8;
  v28 = &off_1001B2060;
  v25 = &off_1001B0F48;
  *&v26 = v19;
  v24 = v9;
  *&v23 = v20;
  swift_defaultActor_initialize();
  v10[30] = _swiftEmptyArrayStorage;
  type metadata accessor for UUID();
  sub_100065020(&qword_1001B8BF8, &qword_10016F800);
  sub_10006AB90();
  v10[31] = Dictionary.init(dictionaryLiteral:)();
  v10[32] = &_swiftEmptySetSingleton;
  sub_100004A04(&v26, (v10 + 14));
  sub_100004A04(&v23, (v10 + 19));
  v10[24] = a3;
  sub_100004A04(a4, (v10 + 25));
  sub_100003324(v29);
  sub_100003324(v32);
  return v10;
}

uint64_t sub_100067734(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v20 = type metadata accessor for ModelCatalogProvider(0);
  v21 = &off_1001B2060;
  v19[0] = a1;
  v17 = v4;
  v18 = &off_1001B0758;
  v16[0] = a2;
  type metadata accessor for UseCaseManager();
  v5 = swift_allocObject();
  v6 = sub_100016494(v19, v20);
  __chkstk_darwin(v6);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = sub_100016494(v16, v17);
  __chkstk_darwin(v10);
  v12 = (v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = sub_100066678(*v8, *v12, v5);
  sub_100003324(v16);
  sub_100003324(v19);
  return v14;
}

uint64_t sub_100067928(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v15 = type metadata accessor for PolicyManager(0);
  v16 = &off_1001B05F8;
  v14[0] = a2;
  type metadata accessor for TrialManager(0);
  v6 = swift_allocObject();
  v7 = sub_100016494(v14, v15);
  __chkstk_darwin(v7);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_100066710(a1, *v9, a3, v6);
  sub_100003324(v14);
  return v11;
}

uint64_t sub_100067A54(uint64_t a1, double a2)
{
  v15 = type metadata accessor for PolicyManager(0);
  v16 = &off_1001B05F8;
  v14[0] = a1;
  v12 = &type metadata for MemoryPressureEventProvider;
  v13 = &off_1001B2618;
  type metadata accessor for MemoryPressureObserver(0);
  v4 = swift_allocObject();
  v5 = sub_100016494(v14, v15);
  __chkstk_darwin(v5);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  sub_100016494(v11, v12);
  v9 = sub_100066AC0(*v7, v4, a2);
  sub_100003324(v11);
  sub_100003324(v14);
  return v9;
}

uint64_t sub_100067BA0(void *a1)
{
  v7[3] = *a1;
  v7[4] = &off_1001B1188;
  v7[0] = a1;

  static BuiltInInferenceProvider.allCases.getter();
  sub_1000480AC(v7, &v5);
  sub_1000B6950();
  type metadata accessor for InferenceProviderManager(0);
  v2 = swift_allocObject();
  v3 = sub_100067C5C(v6, 1, a1, v2);
  sub_100003324(v7);
  return v3;
}

uint64_t sub_100067C5C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v13[3] = type metadata accessor for ExtensionKitProvider();
  v13[4] = &off_1001B1188;
  v13[0] = a3;
  swift_defaultActor_initialize();
  *(a4 + 160) = xmmword_10016F6C0;
  *(a4 + 176) = _swiftEmptyArrayStorage;
  type metadata accessor for InferenceProviderManager(0);
  sub_10006AB4C(&qword_1001B8B08, type metadata accessor for InferenceProviderManager);
  WorkQueue.init()();
  v8 = (a4 + OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_assetPurgeHandler);
  *v8 = 0;
  v8[1] = 0;
  *(a4 + OBJC_IVAR____TtC13modelmanagerd24InferenceProviderManager_discoveredIdentities) = &_swiftEmptySetSingleton;
  sub_10006ABDC(a1, a4 + 112);
  *(a4 + 168) = (a2 & 1) == 0;
  sub_1000480AC(v13, a4 + 184);
  v9 = *(a4 + 208);
  v10 = *(a4 + 216);
  sub_100003370((a4 + 184), v9);
  v11 = *(v10 + 8);

  v11(&off_1001AFE08, &unk_10016F810, a4, v9, v10);

  sub_10006ACCC(a1);
  sub_100003324(v13);
  return a4;
}

void *sub_100067E00(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, void *a20)
{
  v270 = a8;
  v268 = a7;
  v263 = a1;
  v264 = a5;
  v266 = a3;
  v267 = a9;
  v269 = a18;
  v265 = a15;
  v23 = type metadata accessor for RequestPriority();
  __chkstk_darwin(v23 - 8);
  v243 = &v240 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AssetPolicy();
  v252 = *(v25 - 8);
  v253 = v25;
  __chkstk_darwin(v25);
  v242 = &v240 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  __chkstk_darwin(v27 - 8);
  v260 = (&v240 - v28);
  v29 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v258 = *(v29 - 8);
  v259 = v29;
  __chkstk_darwin(v29);
  v257 = &v240 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v255);
  v256 = &v240 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v32 - 8);
  v254 = &v240 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = _s6PolicyVMa_0(0);
  __chkstk_darwin(v34);
  v261 = &v240 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327[3] = type metadata accessor for TelemetryManager();
  v327[4] = &off_1001B2540;
  v327[0] = a14;
  v326[3] = type metadata accessor for SysctlProvider();
  v326[4] = &off_1001B1AC0;
  v326[0] = a4;
  v325[3] = type metadata accessor for TrialFrameworkProvider();
  v325[4] = &off_1001B10C0;
  v325[0] = a6;
  v324[3] = type metadata accessor for ReportingProvider();
  v324[4] = &off_1001B0528;
  v324[0] = a16;
  v36 = type metadata accessor for OSEligibilityChecker();
  v323[4] = &protocol witness table for OSEligibilityChecker;
  v323[3] = v36;
  v323[0] = a17;
  v37 = type metadata accessor for ExtensionKitProvider();
  v322[4] = &off_1001B1188;
  v322[3] = v37;
  v322[0] = a19;
  v38 = v270;
  v271 = type metadata accessor for ModelCatalogProvider(0);
  v321[4] = &off_1001B2060;
  v321[3] = v271;
  v321[0] = v263;
  v39 = type metadata accessor for FilesystemProvider();
  v320[4] = &off_1001B16D0;
  v241 = v39;
  v320[3] = v39;
  v320[0] = v266;
  v40 = type metadata accessor for RunningBoardProvider(0);
  v319[4] = &off_1001B17E8;
  v266 = v40;
  v319[3] = v40;
  v319[0] = v264;
  v318[3] = &type metadata for OSVariantProvider;
  v318[4] = &off_1001B15B8;
  v317[3] = &type metadata for MemoryPressureEventProvider;
  v317[4] = &off_1001B2618;
  v41 = type metadata accessor for RegulatoryDomainProvider();
  v316[4] = &off_1001B0758;
  v316[3] = v41;
  v316[0] = v265;
  v315[3] = &type metadata for CurrentTimeProvider;
  v315[4] = &off_1001B1028;
  v42 = type metadata accessor for PowerProvider();
  v314[4] = &off_1001B0330;
  v314[3] = v42;
  v314[0] = v269;
  sub_1000480AC(v321, (a20 + 9));
  a20[27] = a2;
  sub_1000480AC(v320, (a20 + 28));
  sub_1000480AC(v326, (a20 + 33));
  sub_1000480AC(v319, (a20 + 38));
  sub_1000480AC(v325, (a20 + 43));
  sub_1000480AC(v318, (a20 + 48));
  if (v38)
  {

    v43 = v38;
  }

  else
  {
    sub_1000480AC(v322, &v278);
    v44 = sub_100016494(&v278, *(&v279 + 1));
    __chkstk_darwin(v44);
    v46 = (&v240 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))(v46);
    v48 = *v46;

    v43 = sub_100067BA0(v48);
    sub_100003324(&v278);
  }

  v49 = a10;
  a20[2] = v43;
  sub_1000480AC(v327, (a20 + 22));
  sub_10006A65C(v268, (a20 + 14), &qword_1001B8AF8, &qword_10016F6E8);
  sub_1000480AC(v316, (a20 + 63));
  sub_1000480AC(v324, (a20 + 68));
  sub_1000480AC(v323, (a20 + 73));
  sub_1000480AC(v315, (a20 + 78));
  sub_1000480AC(v322, (a20 + 83));
  v50 = v267;
  v262 = a2;
  v263 = a10;
  if (v267)
  {

    v51 = v50;
  }

  else
  {
    sub_1000480AC(v321, &v278);
    v52 = v261;
    (v252[13])(v261, enum case for AssetPolicy.standard(_:), v253);
    v53 = &v52[v34[5]];
    *v53 = 0;
    v53[8] = 1;
    *&v52[v34[8]] = &_swiftEmptySetSingleton;
    *&v52[v34[6]] = 0x408C200000000000;
    *&v52[v34[7]] = 0x4024000000000000;
    sub_1000480AC((a20 + 22), &v272);
    sub_1000480AC((a20 + 33), &v312);
    v54 = sub_100016494(&v278, *(&v279 + 1));
    v269 = &v240;
    __chkstk_darwin(v54);
    v56 = (&v240 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v57 + 16))(v56);
    v58 = *v56;
    v311 = &off_1001B2060;
    v59 = v271;
    v310 = v271;
    v309[0] = v58;
    v60 = type metadata accessor for InferenceProviderManager(0);
    v308 = &off_1001B0F48;
    v307 = v60;
    v306[0] = v43;
    type metadata accessor for InferenceProviderAssetManager(0);
    v51 = swift_allocObject();
    v61 = sub_100016494(v309, v59);
    v265 = &v240;
    __chkstk_darwin(v61);
    v63 = (&v240 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v64 + 16))(v63);
    v65 = sub_100016494(v306, v307);
    v264 = &v240;
    __chkstk_darwin(v65);
    v253 = a13;
    v67 = (&v240 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
    v49 = v263;
    (*(v68 + 16))(v67);
    v69 = *v63;
    v70 = v262;
    v71 = *v67;
    v305 = &off_1001B2060;
    v304 = v59;
    *&v303 = v69;
    v302 = &off_1001B0F48;
    v301 = v60;
    *&v300 = v71;

    swift_retain_n();

    swift_defaultActor_initialize();
    sub_10006AB4C(&qword_1001B8BB8, type metadata accessor for InferenceProviderAssetManager);
    WorkQueue.init()();

    *(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_purgeInactiveAssetsTask + v51) = 0;
    *(v51 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_delayedAssetTransitionTask) = 0;
    *(v51 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assetVersionChangeUnloadTask) = 0;
    sub_100004A04(&v303, v51 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_modelCatalog);
    sub_100004A04(&v300, v51 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_providerManager);
    sub_100004A04(&v272, v51 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_telemetryManager);
    *(v51 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_neuralEngine) = v70;
    sub_10006A8C8(v261, v51 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy);
    *(OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets + v51) = v253;
    sub_100004A04(&v312, v51 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_sysctl);
    sub_100003324(v306);
    sub_100003324(v309);
    sub_100003324(&v278);
  }

  v72 = a11;
  a20[3] = v51;
  v261 = a11;
  if (v49)
  {
    v73 = v49;
  }

  else
  {
    v74 = a20[27];
    sub_1000480AC((a20 + 22), &v278);
    sub_1000480AC((a20 + 9), &v272);
    sub_1000480AC((a20 + 68), &v312);
    sub_1000480AC((a20 + 38), v309);
    sub_1000480AC((a20 + 78), v306);
    sub_1000480AC(v314, &v303);
    v75 = sub_100016494(&v272, v273);
    v269 = &v240;
    __chkstk_darwin(v75);
    v77 = (&v240 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v78 + 16))(v77);
    v79 = sub_100016494(v309, v310);
    __chkstk_darwin(v79);
    v81 = (&v240 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v82 + 16))(v81);
    sub_100016494(v306, v307);
    v83 = sub_100016494(&v303, v304);
    __chkstk_darwin(v83);
    v85 = (&v240 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v86 + 16))(v85);
    v87 = *v77;
    v88 = *v81;
    v89 = *v85;

    v73 = sub_100066C88(v51, v74, &v278, v87, &v312, v88, v89);
    sub_100003324(&v303);
    v72 = v261;
    sub_100003324(v306);
    sub_100003324(v309);
    sub_100003324(&v272);
  }

  a20[4] = v73;
  if (v72)
  {

    v90 = v72;
  }

  else
  {
    sub_1000480AC((a20 + 9), &v278);
    v91 = a20[2];
    sub_1000480AC((a20 + 33), &v272);
    v92 = sub_100016494(&v278, *(&v279 + 1));
    __chkstk_darwin(v92);
    v94 = (&v240 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v95 + 16))(v94);
    v96 = *v94;

    v90 = sub_1000674B4(v96, v91, v73, &v272);
    sub_100003324(&v278);
  }

  v269 = a12;
  a20[5] = v90;
  sub_1000480AC((a20 + 9), &v278);
  sub_1000480AC((a20 + 63), &v272);
  v97 = sub_100016494(&v278, *(&v279 + 1));
  __chkstk_darwin(v97);
  v99 = (&v240 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v100 + 16))(v99);
  v101 = sub_100016494(&v272, v273);
  __chkstk_darwin(v101);
  v103 = (&v240 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v104 + 16))(v103);
  v105 = *v99;
  v106 = *v103;

  v107 = sub_100067734(v105, v106);
  sub_100003324(&v272);
  sub_100003324(&v278);
  a20[53] = v107;
  sub_1000480AC((a20 + 38), &v278);
  v108 = a20[3];
  sub_1000480AC((a20 + 9), &v272);
  sub_1000480AC((a20 + 33), &v312);
  sub_1000480AC((a20 + 48), v309);
  v109 = a20[4];
  sub_1000480AC((a20 + 22), v306);
  v110 = a20[2];
  sub_1000480AC((a20 + 68), &v303);
  sub_1000480AC((a20 + 73), &v300);
  v111 = sub_10001297C(_swiftEmptyArrayStorage);
  v252 = v107;

  v251 = v108;

  v249 = v109;

  v248 = v110;

  if (v111)
  {
    v244 = sub_100065B74(_swiftEmptyArrayStorage);
  }

  else
  {
    v244 = &_swiftEmptySetSingleton;
  }

  v112 = sub_100016494(&v278, *(&v279 + 1));
  v250 = &v240;
  __chkstk_darwin(v112);
  v114 = (&v240 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v115 + 16))(v114);
  v116 = sub_100016494(&v272, v273);
  v247 = &v240;
  __chkstk_darwin(v116);
  v118 = (&v240 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v119 + 16))(v118);
  sub_100016494(v309, v310);
  v120 = *v114;
  v121 = *v118;
  v299 = &off_1001B17E8;
  v122 = v266;
  v298 = v266;
  v297[0] = v120;
  v296 = &off_1001B2060;
  v123 = v271;
  v295 = v271;
  v294[0] = v121;
  v292 = &type metadata for OSVariantProvider;
  v293 = &off_1001B15B8;
  type metadata accessor for SessionManager();
  v124 = swift_allocObject();
  v125 = sub_100016494(v297, v122);
  v246 = &v240;
  __chkstk_darwin(v125);
  v253 = v126;
  v127 = (&v240 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0));
  v264 = *(v128 + 16);
  v265 = (v128 + 16);
  (v264)(v127);
  v129 = sub_100016494(v294, v295);
  v245 = &v240;
  __chkstk_darwin(v129);
  v131 = (&v240 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v132 + 16))(v131);
  sub_100016494(v291, v292);
  v133 = *v127;
  v134 = *v131;
  v290 = &off_1001B17E8;
  v289 = v122;
  v288[0] = v133;
  v287 = &off_1001B2060;
  v286 = v123;
  v285[0] = v134;
  v283 = &type metadata for OSVariantProvider;
  v284 = &off_1001B15B8;
  swift_defaultActor_initialize();
  sub_10006A92C();
  static DispatchQoS.unspecified.getter();
  v277[0] = _swiftEmptyArrayStorage;
  sub_10006AB4C(&qword_1001B8BC8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100065020(&qword_1001B8BD0, &qword_10016F7A0);
  sub_10001B27C(&qword_1001B8BD8, &qword_1001B8BD0, &qword_10016F7A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v258 + 104))(v257, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v259);
  v124[15] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v124[45] = sub_100109624(_swiftEmptyArrayStorage);
  v124[46] = v135;
  v124[57] = 0;
  v124[14] = v244;
  sub_1000480AC(v288, (v124 + 16));
  v124[21] = v251;
  sub_1000480AC(v285, (v124 + 22));
  sub_1000480AC(&v312, (v124 + 27));
  sub_1000480AC(v282, (v124 + 32));
  v124[37] = v249;
  sub_1000480AC(v306, (v124 + 38));
  v136 = v248;
  v124[43] = v252;
  v124[44] = v136;
  sub_1000480AC(&v303, (v124 + 47));
  sub_1000480AC(&v300, (v124 + 52));
  v137 = type metadata accessor for TaskPriority();
  sub_100009BFC(v260, 1, 1, v137);
  v138 = swift_allocObject();
  v138[2] = 0;
  v138[3] = 0;
  v138[4] = v124;

  sub_1000652FC();

  sub_100003324(&v300);
  sub_100003324(&v303);
  sub_100003324(v306);
  sub_100003324(&v312);
  sub_100003324(v282);
  sub_100003324(v285);
  sub_100003324(v288);
  sub_100003324(v291);
  sub_100003324(v294);
  sub_100003324(v297);
  sub_100003324(v309);
  sub_100003324(&v272);
  sub_100003324(&v278);
  a20[6] = v124;
  if (v269)
  {
    v139 = v269;
  }

  else
  {
    sub_1000480AC((a20 + 28), &v278);
    sub_1000480AC((a20 + 48), &v272);
    v140 = a20[3];
    v258 = a20[4];
    sub_1000480AC((a20 + 9), &v312);
    type metadata accessor for Policy();

    v141 = v140;
    v251 = v140;

    v257 = Dictionary.init(dictionaryLiteral:)();
    v256 = Dictionary.init(dictionaryLiteral:)();
    v142 = sub_100016494(&v278, *(&v279 + 1));
    v260 = &v240;
    __chkstk_darwin(v142);
    v144 = (&v240 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v145 + 16))(v144);
    sub_100016494(&v272, v273);
    v146 = sub_100016494(&v312, v313);
    v259 = &v240;
    __chkstk_darwin(v146);
    v148 = (&v240 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v149 + 16))(v148);
    v150 = *v144;
    v151 = *v148;
    v311 = &off_1001B16D0;
    v152 = v241;
    v310 = v241;
    v309[0] = v150;
    v307 = &type metadata for OSVariantProvider;
    v308 = &off_1001B15B8;
    v250 = type metadata accessor for InferenceProviderAssetManager(0);
    v305 = &off_1001B1200;
    v304 = v250;
    *&v303 = v141;
    v302 = &off_1001B2060;
    v153 = v271;
    v301 = v271;
    *&v300 = v151;
    type metadata accessor for PolicyManager(0);
    v139 = swift_allocObject();
    v154 = sub_100016494(v309, v152);
    v255 = &v240;
    __chkstk_darwin(v154);
    v156 = (&v240 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v157 + 16))(v156);
    sub_100016494(v306, v307);
    v158 = sub_100016494(&v303, v304);
    v254 = &v240;
    __chkstk_darwin(v158);
    v160 = (&v240 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v161 + 16))(v160);
    v162 = sub_100016494(&v300, v301);
    v252 = &v240;
    __chkstk_darwin(v162);
    v164 = (&v240 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v165 + 16))(v164);
    v166 = *v156;
    v167 = *v160;
    v168 = *v164;
    v299 = &off_1001B16D0;
    v298 = v152;
    v297[0] = v166;
    v295 = &type metadata for OSVariantProvider;
    v296 = &off_1001B15B8;
    v293 = &off_1001B1200;
    v292 = v250;
    v291[0] = v167;
    v290 = &off_1001B2060;
    v289 = v153;
    v288[0] = v168;

    swift_defaultActor_initialize();
    sub_10006AB4C(&qword_1001B8BE0, type metadata accessor for PolicyManager);
    WorkQueue.init()();
    *(v139 + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__assertions) = &_swiftEmptySetSingleton;
    default argument 0 of Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
    default argument 2 of Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
    Policy.init(assetPolicy:memoryBudget:cancelPriority:inactiveAssetTimeout:assetTransitionDelay:unentitledBackgroundInferenceWindow:unentitledBackgroundInferenceCap:)();
    *(v139 + OBJC_IVAR____TtC13modelmanagerd13PolicyManager__transaction) = 0;
    sub_1000480AC(v297, (v139 + 14));
    sub_1000480AC(v294, (v139 + 19));
    v139[24] = v258;
    sub_1000480AC(v291, (v139 + 25));
    sub_1000480AC(v288, (v139 + 30));
    v170 = v256;
    v169 = v257;
    v139[35] = v257;
    v139[36] = v170;
    v171 = v169;
    swift_bridgeObjectRetain_n();

    v173 = sub_10007432C(v172, v171, v171);

    sub_100003324(v288);
    sub_100003324(v291);
    sub_100003324(v294);
    sub_100003324(v297);
    v139[37] = v173;
    v139[38] = _swiftEmptyArrayStorage;
    sub_100003324(&v300);
    sub_100003324(&v303);
    sub_100003324(v306);
    sub_100003324(v309);
    sub_100003324(&v312);
    sub_100003324(&v272);
    sub_100003324(&v278);
  }

  a20[7] = v139;
  sub_1000480AC((a20 + 43), &v278);
  v174 = qword_1001B8998;

  if (v174 != -1)
  {
    swift_once();
  }

  v175 = qword_1001BE8F8;

  v176 = sub_100067928(&v278, v139, v175);
  a20[8] = v176;
  v178 = a20[2];
  v177 = a20[3];
  v257 = v176;
  v258 = v178;
  v180 = a20[6];
  v248 = a20[7];
  v179 = v248;
  v249 = v180;
  v250 = v177;
  v182 = a20[4];
  v254 = a20[5];
  v181 = v254;
  v255 = v182;
  v256 = a20[53];
  v183 = v256;
  a20[55] = v177;
  a20[56] = v178;
  a20[57] = v179;
  a20[58] = v180;
  a20[59] = v181;
  a20[60] = v182;
  a20[61] = v183;
  a20[62] = v176;
  sub_1000480AC((a20 + 38), &v312);
  sub_1000480AC((a20 + 48), v309);
  sub_1000480AC((a20 + 9), v306);
  v184 = *(a20 + 57);
  v278 = *(a20 + 55);
  v279 = v184;
  v185 = *(a20 + 61);
  v280 = *(a20 + 59);
  v281 = v185;
  sub_1000480AC((a20 + 33), &v303);
  v186 = sub_100016494(&v312, v313);
  v260 = &v240;
  __chkstk_darwin(v186);
  v188 = (&v240 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v189 + 16))(v188);
  sub_100016494(v309, v310);
  v190 = sub_100016494(v306, v307);
  v259 = &v240;
  __chkstk_darwin(v190);
  v192 = (&v240 - ((v191 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v193 + 16))(v192);
  v194 = *v188;
  v195 = *v192;
  v302 = &off_1001B17E8;
  v196 = v266;
  v301 = v266;
  *&v300 = v194;
  v298 = &type metadata for OSVariantProvider;
  v299 = &off_1001B15B8;
  v296 = &off_1001B2060;
  v197 = v271;
  v295 = v271;
  v294[0] = v195;
  type metadata accessor for ModelXPCDispatcher();
  v198 = swift_allocObject();
  v199 = sub_100016494(&v300, v196);
  v252 = &v240;
  v200 = v253;
  __chkstk_darwin(v199);
  v247 = ((v200 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = (&v240 - v247);
  (v264)(&v240 - v247);
  sub_100016494(v297, v298);
  v202 = sub_100016494(v294, v295);
  v251 = &v240;
  __chkstk_darwin(v202);
  v204 = (&v240 - ((v203 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v205 + 16))(v204);
  v206 = *v201;
  v207 = *v204;
  v293 = &off_1001B17E8;
  v292 = v196;
  v291[0] = v206;
  v289 = &type metadata for OSVariantProvider;
  v290 = &off_1001B15B8;
  v287 = &off_1001B2060;
  v286 = v197;
  v285[0] = v207;
  sub_1000480AC(v291, v198 + 32);
  sub_1000480AC(v288, v198 + 72);
  v209 = v249;
  v208 = v250;
  v210 = v248;
  *(v198 + 112) = v250;
  *(v198 + 120) = v210;
  *(v198 + 128) = v209;
  sub_1000480AC(v285, v198 + 144);
  v211 = v279;
  *(v198 + 184) = v278;
  *(v198 + 200) = v211;
  v212 = v281;
  *(v198 + 216) = v280;
  *(v198 + 232) = v212;
  sub_1000480AC(v291, v282);
  v213 = sub_100016494(v282, v283);
  v271 = &v240;
  __chkstk_darwin(v213);
  v215 = (&v240 - ((v214 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v216 + 16))(v215);
  v217 = *v215;
  v277[3] = v196;
  v277[4] = &off_1001B17E8;
  v277[0] = v217;
  type metadata accessor for AssertionRequestDispatcher();
  v218 = swift_allocObject();
  v219 = sub_100016494(v277, v196);
  v246 = &v240;
  __chkstk_darwin(v219);
  v220 = (&v240 - v247);
  (v264)(&v240 - v247);
  v221 = *v220;
  v275 = v196;
  v276 = &off_1001B17E8;
  *&v274 = v221;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v222 = v254;
  swift_retain_n();
  v223 = v255;
  swift_retain_n();
  v224 = v256;
  swift_retain_n();

  sub_10006AA10(&v278, &v272);
  swift_defaultActor_initialize();
  sub_100004A04(&v274, v218 + 112);
  *(v218 + 152) = v210;
  sub_100003324(v277);
  sub_100003324(v282);
  *(v198 + 16) = v218;
  *(v198 + 248) = v223;
  v225 = v223;
  sub_1000480AC(v285, &v272);
  v226 = sub_100016494(&v272, v273);
  __chkstk_darwin(v226);
  v228 = (&v240 - ((v227 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v229 + 16))(v228);
  v230 = *v228;

  v231 = sub_100066994(v208, v230, v225);
  sub_100003324(v285);
  sub_100003324(v288);
  sub_100003324(v291);
  sub_100003324(&v272);
  *(v198 + 24) = v231;
  *(v198 + 256) = v224;
  sub_100004A04(&v303, v198 + 264);
  *(v198 + 136) = v222;
  sub_100003324(v294);
  sub_100003324(v297);
  sub_100003324(&v300);
  sub_100003324(v306);
  sub_100003324(v309);
  sub_100003324(&v312);
  a20[19] = v198;
  v232 = a20[5];
  type metadata accessor for RemoteXPCDispatcher();
  v233 = swift_allocObject();
  type metadata accessor for RemoteIPCMessageHandler();
  v234 = swift_allocObject();
  *(v234 + 16) = v232;
  *(v233 + 16) = v234;
  a20[20] = v233;
  type metadata accessor for SimulatorXPCDispatcher();
  v235 = swift_allocObject();
  v236 = swift_allocObject();
  *(v236 + 16) = v232;
  *(v235 + 16) = v236;
  a20[21] = v235;
  sub_1000480AC(v317, &v272);
  sub_100016494(&v272, v273);
  swift_retain_n();

  v238 = sub_100067A54(v237, 600.0);

  sub_10000C790(v268, &qword_1001B8AF8, &qword_10016F6E8);
  sub_100003324(v327);
  sub_100003324(v322);
  sub_100003324(v323);
  sub_100003324(v324);
  sub_100003324(v325);
  sub_100003324(v326);
  sub_100003324(v314);
  sub_100003324(v315);
  sub_100003324(v316);
  sub_100003324(v317);
  sub_100003324(v318);
  sub_100003324(v319);
  sub_100003324(v320);
  sub_100003324(v321);
  sub_100003324(&v272);
  a20[54] = v238;
  return a20;
}