void sub_100721D7C(unint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = sub_10019F4E4(v5);

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

id sub_100721ECC(unint64_t isa)
{
  v162 = type metadata accessor for UUID();
  v3 = *(v162 - 8);
  __chkstk_darwin(v162, v4);
  v157 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v6 - 8, v7);
  v9 = (&v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10, v11);
  v161 = (&v142 - v12);
  __chkstk_darwin(v13, v14);
  v16 = (&v142 - v15);
  __chkstk_darwin(v17, v18);
  v20 = &v142 - v19;
  v21 = String._bridgeToObjectiveC()();
  v22 = [v1 mutableOrderedSetValueForKey:v21];

  if (!v22)
  {
    if (qword_100936780 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_100006654(v55, qword_100950BF0);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Not sorting child lists because REMCDAccount.mutableOrderedSetValue(forKey: lists) is nil", v58, 2u);
    }

    return 0;
  }

  if (qword_100936780 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v23 = type metadata accessor for Logger();
    v24 = sub_100006654(v23, qword_100950BF0);
    v25 = v22;
    v26 = isa;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    v29 = os_log_type_enabled(v27, v28);
    v156 = v22;
    if (v29)
    {
      v148 = v28;
      v150 = v27;
      v151 = v26;
      v153 = v24;
      v30 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v164 = v25;
      aBlock[0] = v147;
      v149 = v30;
      *v30 = 136315394;
      v152 = v25;
      isa = sub_1000060C8(0, &unk_100938880, off_1008D41A8);
      sub_1000060C8(0, &unk_100950C20, NSMutableOrderedSet_ptr);
      sub_10000CDE4(&qword_1009374C8, &unk_100950C20, NSMutableOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
      v31 = Sequence.elements<A>(ofType:)();
      v39 = v31;
      v159 = v31 & 0xFFFFFFFFFFFFFF8;
      if (v31 >> 62)
      {
        v40 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v40 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v160 = v9;
      v154 = v3;
      if (v40)
      {
        v22 = 0;
        v158 = v39 & 0xC000000000000001;
        v9 = (v3 + 7);
        v41 = v3;
        v3 += 6;
        v145 = (v41 + 2);
        v42 = &_swiftEmptyArrayStorage;
        v144 = (v41 + 1);
        do
        {
          v155 = v42;
          v43 = v22;
          while (1)
          {
            if (v158)
            {
              v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v43 >= *(v159 + 16))
              {
                goto LABEL_58;
              }

              v44 = *(v39 + 8 * v43 + 32);
            }

            v45 = v44;
            v22 = (v43 + 1);
            if (__OFADD__(v43, 1))
            {
              __break(1u);
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            v46 = [v44 identifier];
            if (v46)
            {
              v47 = v46;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v48 = 0;
            }

            else
            {
              v48 = 1;
            }

            isa = v162;
            (*v9)(v16, v48, 1, v162);
            sub_100100FB4(v16, v20);
            if (!(*v3)(v20, 1, isa))
            {
              break;
            }

            sub_1000050A4(v20, &unk_100939D90, "8\n\r");
            ++v43;
            if (v22 == v40)
            {
              v42 = v155;
              goto LABEL_33;
            }
          }

          v49 = v157;
          v50 = v162;
          (*v145)(v157, v20, v162);
          sub_1000050A4(v20, &unk_100939D90, "8\n\r");
          v143 = UUID.uuidString.getter();
          v142 = v51;

          (*v144)(v49, v50);
          v42 = v155;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_100365788(0, *v42->clientIdentity + 1, 1, v42, v35, v36, v37, v38);
          }

          isa = *v42->clientIdentity;
          v52 = *&v42->clientIdentity[8];
          if (isa >= v52 >> 1)
          {
            v42 = sub_100365788((v52 > 1), isa + 1, 1, v42, v35, v36, v37, v38);
          }

          *v42->clientIdentity = isa + 1;
          v53 = v42 + 16 * isa;
          v54 = v142;
          *(v53 + 4) = v143;
          *(v53 + 5) = v54;
        }

        while (v22 != v40);
      }

      else
      {
        v42 = &_swiftEmptyArrayStorage;
      }

LABEL_33:
      v39, v32, v33, v34, v35, v36, v37, v38;
      v59 = Array.description.getter();
      v60 = v42;
      v62 = v61;
      v60, v61, v63, v64, v65, v66, v67, v68;
      v69 = sub_10000668C(v59, v62, aBlock);
      v62, v70, v71, v72, v73, v74, v75, v76;
      v77 = v149;
      *(v149 + 1) = v69;
      *(v77 + 6) = 2112;
      v26 = v151;
      *(v77 + 14) = v151;
      v78 = v146;
      *v146 = v26;
      v79 = v26;
      v80 = v150;
      _os_log_impl(&_mh_execute_header, v150, v148, "Sort ordered set account.lists - before - {lists: %s, ordering: %@}", v77, 0x16u);
      sub_1000050A4(v78, &unk_100938E70, &unk_100797230);

      sub_10000607C(v147);

      v22 = v156;
      v9 = v160;
      v3 = v154;
      v25 = v152;
    }

    else
    {
    }

    v81 = swift_allocObject();
    *(v81 + 16) = _swiftEmptyDictionarySingleton;
    v20 = v81 + 16;
    aBlock[4] = sub_1002FFDC8;
    aBlock[5] = v81;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002FFDC4;
    aBlock[3] = &unk_1008FD2E0;
    v82 = _Block_copy(aBlock);

    [v26 enumerateObjectsUsingBlock:v82];
    _Block_release(v82);
    swift_beginAccess();
    v83 = *v20;

    sub_1000FEA70(v25, v83, 0);

    v83, v84, v85, v86, v87, v88, v89, v90;
    v91 = v25;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v92, v93))
    {

      return v22;
    }

    LODWORD(v153) = v93;
    v155 = v92;
    v94 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v163 = v91;
    v164 = v151;
    v152 = v94;
    *v94 = 136315138;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    sub_1000060C8(0, &unk_100950C20, NSMutableOrderedSet_ptr);
    sub_10000CDE4(&qword_1009374C8, &unk_100950C20, NSMutableOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
    v95 = Sequence.elements<A>(ofType:)();
    v103 = v95;
    if (v95 >> 62)
    {
      break;
    }

    v159 = v95 & 0xFFFFFFFFFFFFFF8;
    v104 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v104)
    {
      goto LABEL_64;
    }

LABEL_37:
    v160 = v9;
    v22 = 0;
    v105 = v3;
    v3 = (v103 & 0xC000000000000001);
    isa = &v105[7];
    v16 = &v105[6];
    v150 = v105 + 2;
    v106 = &_swiftEmptyArrayStorage;
    v154 = v105 + 1;
LABEL_38:
    v158 = v106;
    v107 = v22;
    while (1)
    {
      if (v3)
      {
        v108 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v107 >= *(v159 + 16))
        {
          goto LABEL_60;
        }

        v108 = *(v103 + 8 * v107 + 32);
      }

      v109 = v108;
      v22 = (v107 + 1);
      if (__OFADD__(v107, 1))
      {
        break;
      }

      v110 = [v108 identifier];
      if (v110)
      {
        v111 = v110;
        v112 = v160;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v113 = 0;
      }

      else
      {
        v113 = 1;
        v112 = v160;
      }

      v20 = v162;
      (*isa)(v112, v113, 1, v162);
      v114 = v112;
      v9 = v161;
      sub_100100FB4(v114, v161);
      if (!(*v16)(v9, 1, v20))
      {
        v115 = v157;
        v116 = v162;
        (v150->isa)(v157, v9, v162);
        sub_1000050A4(v9, &unk_100939D90, "8\n\r");
        v9 = UUID.uuidString.getter();
        v149 = v117;

        (v154->isa)(v115, v116);
        v106 = v158;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_100365788(0, *v106->clientIdentity + 1, 1, v106, v99, v100, v101, v102);
        }

        v20 = *v106->clientIdentity;
        v118 = *&v106->clientIdentity[8];
        if (v20 >= v118 >> 1)
        {
          v106 = sub_100365788((v118 > 1), v20 + 1, 1, v106, v99, v100, v101, v102);
        }

        *v106->clientIdentity = v20 + 1;
        v119 = v106 + 16 * v20;
        v120 = v149;
        *(v119 + 4) = v9;
        *(v119 + 5) = v120;
        if (v22 != v104)
        {
          goto LABEL_38;
        }

        goto LABEL_65;
      }

      sub_1000050A4(v9, &unk_100939D90, "8\n\r");
      ++v107;
      if (v22 == v104)
      {
        v106 = v158;
        goto LABEL_65;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
  }

  v159 = v95 & 0xFFFFFFFFFFFFFF8;
  v104 = _CocoaArrayWrapper.endIndex.getter();
  if (v104)
  {
    goto LABEL_37;
  }

LABEL_64:
  v106 = &_swiftEmptyArrayStorage;
LABEL_65:
  v103, v96, v97, v98, v99, v100, v101, v102;
  v121 = Array.description.getter();
  v122 = v106;
  v124 = v123;
  v122, v123, v125, v126, v127, v128, v129, v130;
  v131 = sub_10000668C(v121, v124, &v164);
  v124, v132, v133, v134, v135, v136, v137, v138;
  v139 = v152;
  *(v152 + 1) = v131;
  p_super = &v155->super;
  _os_log_impl(&_mh_execute_header, &v155->super, v153, "Sort ordered set account.lists - after - {lists: %s}", v139, 0xCu);
  sub_10000607C(v151);

  return v156;
}

id sub_100722B48(unint64_t a1)
{
  v2 = v1;
  v196 = type metadata accessor for UUID();
  v4 = *(v196 - 8);
  __chkstk_darwin(v196, v5);
  v190 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v174 - v13;
  __chkstk_darwin(v15, v16);
  v18 = &v174 - v17;
  __chkstk_darwin(v19, v20);
  v22 = &v174 - v21;
  v23 = String._bridgeToObjectiveC()();
  v24 = [v2 mutableOrderedSetValueForKey:v23];

  if (v24)
  {
    v191 = v4;
    v194 = v14;
    if (qword_100936780 != -1)
    {
LABEL_33:
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    v26 = sub_100006654(v25, qword_100950BF0);
    v27 = v24;
    v28 = a1;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    v189 = v28;

    v185 = v30;
    v31 = os_log_type_enabled(v29, v30);
    v195 = v10;
    v187 = v2;
    v188 = v24;
    v186 = v26;
    if (!v31)
    {

      v60 = v189;
      v61 = v191;
      goto LABEL_37;
    }

    v182 = v29;
    v32 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v198 = v27;
    aBlock[0] = v180;
    v181 = v32;
    LODWORD(v32->isa) = 136315394;
    v183 = v27;
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v10 = NSMutableOrderedSet_ptr;
    sub_1000060C8(0, &unk_100950C20, NSMutableOrderedSet_ptr);
    sub_10000CDE4(&qword_1009374C8, &unk_100950C20, NSMutableOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
    v33 = Sequence.elements<A>(ofType:)();
    v41 = v33;
    a1 = v191;
    if (v33 >> 62)
    {
      v193 = v33 & 0xFFFFFFFFFFFFFF8;
      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (v24)
      {
LABEL_6:
        v2 = 0;
        v192 = v41 & 0xC000000000000001;
        v42 = (a1 + 56);
        v43 = (a1 + 48);
        v178 = (a1 + 16);
        v44 = &_swiftEmptyArrayStorage;
        v177 = (a1 + 8);
        do
        {
          v184 = v44;
          v45 = v2;
          while (1)
          {
            if (v192)
            {
              v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v45 >= *(v193 + 16))
              {
                goto LABEL_32;
              }

              v46 = *(v41 + 8 * v45 + 32);
            }

            v10 = v46;
            v2 = (v45 + 1);
            if (__OFADD__(v45, 1))
            {
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v47 = [v46 identifier];
            if (v47)
            {
              v48 = v47;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v49 = 0;
            }

            else
            {
              v49 = 1;
            }

            a1 = v196;
            (*v42)(v18, v49, 1, v196);
            sub_100100FB4(v18, v22);
            if (!(*v43)(v22, 1, a1))
            {
              break;
            }

            sub_1000050A4(v22, &unk_100939D90, "8\n\r");
            ++v45;
            if (v2 == v24)
            {
              v44 = v184;
              goto LABEL_36;
            }
          }

          v50 = v190;
          v51 = v196;
          (*v178)(v190, v22, v196);
          sub_1000050A4(v22, &unk_100939D90, "8\n\r");
          v176 = UUID.uuidString.getter();
          v175 = v52;

          (*v177)(v50, v51);
          v44 = v184;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_100365788(0, *v44->clientIdentity + 1, 1, v44, v37, v38, v39, v40);
          }

          a1 = *v44->clientIdentity;
          v53 = *&v44->clientIdentity[8];
          v10 = (a1 + 1);
          if (a1 >= v53 >> 1)
          {
            v44 = sub_100365788((v53 > 1), a1 + 1, 1, v44, v37, v38, v39, v40);
          }

          *v44->clientIdentity = v10;
          v54 = v44 + 16 * a1;
          v55 = v175;
          *(v54 + 4) = v176;
          *(v54 + 5) = v55;
        }

        while (v2 != v24);
        goto LABEL_36;
      }
    }

    else
    {
      v193 = v33 & 0xFFFFFFFFFFFFFF8;
      v24 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        goto LABEL_6;
      }
    }

    v44 = &_swiftEmptyArrayStorage;
LABEL_36:
    v41, v34, v35, v36, v37, v38, v39, v40;
    v62 = Array.description.getter();
    v63 = v44;
    v65 = v64;
    v63, v64, v66, v67, v68, v69, v70, v71;
    v72 = sub_10000668C(v62, v65, aBlock);
    v65, v73, v74, v75, v76, v77, v78, v79;
    v80 = v181;
    *(&v181->isa + 4) = v72;
    WORD2(v80[1].isa) = 2112;
    v60 = v189;
    *(&v80[1].isa + 6) = v189;
    v81 = v179;
    *v179 = v60;
    v82 = v60;
    v83 = v182;
    _os_log_impl(&_mh_execute_header, v182, v185, "REMCDAccount+CloudKit: Sort ordered set account.smartLists - before - {smartLists: %s, ordering: %@}", v80, 0x16u);
    sub_1000050A4(v81, &unk_100938E70, &unk_100797230);

    sub_10000607C(v180);

    v2 = v187;
    v24 = v188;
    v61 = v191;
    v27 = v183;
LABEL_37:
    v84 = swift_allocObject();
    *(v84 + 16) = _swiftEmptyDictionarySingleton;
    v85 = (v84 + 16);
    aBlock[4] = sub_1002FFDC8;
    aBlock[5] = v84;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002FFDC4;
    aBlock[3] = &unk_1008FD2B8;
    v86 = _Block_copy(aBlock);

    [v60 enumerateObjectsUsingBlock:v86];
    _Block_release(v86);
    swift_beginAccess();
    v87 = *v85;

    sub_1000FEA70(v27, v87, 0);

    v87, v88, v89, v90, v91, v92, v93, v94;
    v95 = v27;
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v96, v97))
    {

      goto LABEL_65;
    }

    v185 = v97;
    v189 = v96;
    v98 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    v197 = v95;
    v198 = v183;
    v184 = v98;
    LODWORD(v98->super.isa) = 136315138;
    v191 = v95;
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    sub_1000060C8(0, &unk_100950C20, NSMutableOrderedSet_ptr);
    sub_10000CDE4(&qword_1009374C8, &unk_100950C20, NSMutableOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
    v99 = Sequence.elements<A>(ofType:)();
    v107 = v99;
    if (v99 >> 62)
    {
LABEL_62:
      v193 = v107 & 0xFFFFFFFFFFFFFF8;
      v108 = _CocoaArrayWrapper.endIndex.getter();
      if (v108)
      {
LABEL_40:
        v109 = 0;
        v110 = v61;
        v61 = v107 & 0xC000000000000001;
        v111 = v110 + 7;
        v112 = v110 + 6;
        v182 = v110 + 2;
        v113 = &_swiftEmptyArrayStorage;
        v181 = v110 + 1;
        do
        {
          v192 = v113;
          v114 = v109;
          while (1)
          {
            if (v61)
            {
              v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v114 >= *(v193 + 16))
              {
                goto LABEL_61;
              }

              v115 = *(v107 + 8 * v114 + 32);
            }

            v116 = v115;
            v109 = v114 + 1;
            if (__OFADD__(v114, 1))
            {
              __break(1u);
LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

            v117 = [v115 identifier];
            if (v117)
            {
              v118 = v117;
              v119 = v195;
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v120 = 0;
            }

            else
            {
              v120 = 1;
              v119 = v195;
            }

            v121 = v196;
            (v111->isa)(v119, v120, 1, v196);
            v122 = v119;
            v123 = v194;
            sub_100100FB4(v122, v194);
            if (!(v112->isa)(v123, 1, v121))
            {
              break;
            }

            sub_1000050A4(v123, &unk_100939D90, "8\n\r");
            ++v114;
            if (v109 == v108)
            {
              v113 = v192;
              goto LABEL_64;
            }
          }

          v124 = v190;
          v125 = v196;
          (v182->isa)(v190, v123, v196);
          sub_1000050A4(v123, &unk_100939D90, "8\n\r");
          v126 = UUID.uuidString.getter();
          v180 = v127;

          (v181->isa)(v124, v125);
          v113 = v192;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = sub_100365788(0, *v113->clientIdentity + 1, 1, v113, v103, v104, v105, v106);
          }

          v129 = *v113->clientIdentity;
          v128 = *&v113->clientIdentity[8];
          if (v129 >= v128 >> 1)
          {
            v113 = sub_100365788((v128 > 1), v129 + 1, 1, v113, v103, v104, v105, v106);
          }

          *v113->clientIdentity = v129 + 1;
          v130 = v113 + 16 * v129;
          v131 = v180;
          *(v130 + 4) = v126;
          *(v130 + 5) = v131;
        }

        while (v109 != v108);
        goto LABEL_64;
      }
    }

    else
    {
      v193 = v99 & 0xFFFFFFFFFFFFFF8;
      v108 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v108)
      {
        goto LABEL_40;
      }
    }

    v113 = &_swiftEmptyArrayStorage;
LABEL_64:
    v107, v100, v101, v102, v103, v104, v105, v106;
    v132 = Array.description.getter();
    v133 = v113;
    v135 = v134;
    v133, v134, v136, v137, v138, v139, v140, v141;
    v142 = sub_10000668C(v132, v135, &v198);
    v135, v143, v144, v145, v146, v147, v148, v149;
    v150 = v184;
    *(&v184->super.isa + 4) = v142;
    v151 = v189;
    _os_log_impl(&_mh_execute_header, v189, v185, "REMCDAccount+CloudKit: Sort ordered set account.smartLists - after - {smartLists: %s}", v150, 0xCu);
    sub_10000607C(v183);

    v2 = v187;
    v24 = v188;
    v95 = v191;
LABEL_65:
    v152 = v95;
    v153 = v2;
    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v198 = v157;
      *v156 = 136446466;
      v158 = [v153 remObjectID];
      if (v158)
      {
        v159 = v158;
        v160 = [v158 description];

        v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v163 = v162;
      }

      else
      {
        v163 = 0xE300000000000000;
        v161 = 7104878;
      }

      v164 = sub_10000668C(v161, v163, &v198);
      v163, v165, v166, v167, v168, v169, v170, v171;
      *(v156 + 4) = v164;
      *(v156 + 12) = 2048;
      v172 = [v152 count];

      *(v156 + 14) = v172;
      _os_log_impl(&_mh_execute_header, v154, v155, "REMCDAccount+CloudKit: Sorted CSLs into account.smartLists {account: %{public}s, #csls: %ld}", v156, 0x16u);
      sub_10000607C(v157);
    }

    else
    {
    }

    return v24;
  }

  if (qword_100936780 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_100006654(v56, qword_100950BF0);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "REMCDAccount+CloudKit: Not sorting child smartLists because REMCDAccount.mutableOrderedSetValue(forKey: smartLists) is nil", v59, 2u);
  }

  return 0;
}

void sub_100723984(void *a1, void *a2, NSObject *a3)
{
  v4 = v3;
  v104 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v16, v17).n128_u64[0];
  v20 = &v103 - v19;
  v21 = [v4 storeControllerManagedObjectContext];
  if (v21 && (v22 = v21, v23 = [v21 storeController], v22, (v103 = v23) != 0))
  {
    v24 = [v4 identifier];
    if (v24)
    {
      v25 = v24;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v8 + 56))(v15, 0, 1, v7);
    }

    else
    {
      (*(v8 + 56))(v15, 1, 1, v7);
    }

    sub_100100FB4(v15, v20);
    if ((*(v8 + 48))(v20, 1, v7))
    {
      sub_1000050A4(v20, &unk_100939D90, "8\n\r");
      v38 = v103;
LABEL_16:
      if (qword_100936780 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100006654(v39, qword_100950BF0);
      v40 = v4;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v105 = v44;
        *v43 = 136446210;
        v45 = [v40 remObjectID];
        if (v45)
        {
          v46 = v45;
          v47 = [v45 description];

          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;
        }

        else
        {
          v48 = 7104878;
          v50 = 0xE300000000000000;
        }

        v85 = sub_10000668C(v48, v50, &v105);
        v50, v86, v87, v88, v89, v90, v91, v92;
        *(v43 + 4) = v85;
        _os_log_impl(&_mh_execute_header, v41, v42, "REMCDAccount+CloudKit: Could not proceed to upsertOrderedIdentifiersForAccountListView() because there is problem finding the persistent store for the account {account: %{public}s}", v43, 0xCu);
        sub_10000607C(v44);
      }

      return;
    }

    (*(v8 + 16))(v11, v20, v7);
    sub_1000050A4(v20, &unk_100939D90, "8\n\r");
    UUID.uuidString.getter();
    v52 = v51;
    (*(v8 + 8))(v11, v7);
    v53 = String._bridgeToObjectiveC()();
    v52, v54, v55, v56, v57, v58, v59, v60;
    v38 = v103;
    v61 = [v103 storeForAccountIdentifier:v53];

    if (!v61)
    {
      goto LABEL_16;
    }

    sub_100718C70(a1, a2, v104, v61);
    if (qword_100936780 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_100006654(v62, qword_100950BF0);
    v63 = a2;
    v64 = a1;
    v65 = v63;
    v66 = v64;
    v67 = v4;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v105 = v104;
      *v70 = 136446722;
      v71 = [v67 remObjectID];
      if (v71)
      {
        v72 = v71;
        v73 = [v71 description];

        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v75;
      }

      else
      {
        v74 = 7104878;
        v76 = 0xE300000000000000;
      }

      v93 = sub_10000668C(v74, v76, &v105);
      v76, v94, v95, v96, v97, v98, v99, v100;
      *(v70 + 4) = v93;
      *(v70 + 12) = 2048;
      v101 = [v65 count];

      *(v70 + 14) = v101;
      *(v70 + 22) = 2048;
      v102 = [v66 count];

      *(v70 + 24) = v102;
      _os_log_impl(&_mh_execute_header, v68, v69, "REMCDAccount+CloudKit: Sorted intermixed ordered IDs for CSLs and Lists in REMCDAccountListData {account: %{public}s, #csls: %ld, #lists: %ld}", v70, 0x20u);
      sub_10000607C(v104);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100936780 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_100950BF0);
    v27 = v4;
    v104 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v104, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v105 = v30;
      *v29 = 136446210;
      v31 = [v27 remObjectID];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 description];

        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
      }

      else
      {
        v34 = 7104878;
        v36 = 0xE300000000000000;
      }

      v77 = sub_10000668C(v34, v36, &v105);
      v36, v78, v79, v80, v81, v82, v83, v84;
      *(v29 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v104, v28, "REMCDAccount+CloudKit: Could not proceed to upsertOrderedIdentifiersForAccountListView() because storeController isn't available {account: %{public}s}", v29, 0xCu);
      sub_10000607C(v30);
    }

    else
    {
      v37 = v104;
    }
  }
}

void sub_1007241B8(char **a1, const char *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = &_swiftEmptyArrayStorage;
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v12 = sub_1004361F4(v12, a2, a3, a4, a5, a6, a7, a8);
    }

    clientIdentity = v12->clientIdentity;
    v80 = *v12->clientIdentity;
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v12 + 16 * v80);
        v82 = *v81;
        v83 = &clientIdentity[2 * v80];
        v84 = v83[1];
        sub_100724704((*a3 + 8 * *v81), (*a3 + 8 * *v83), (*a3 + 8 * v84), v9);
        if (v8)
        {
          goto LABEL_97;
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *clientIdentity)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *clientIdentity - v80;
        if (*clientIdentity < v80)
        {
          goto LABEL_116;
        }

        v80 = *clientIdentity - 1;
        memmove(v83, v83 + 2, 16 * v85);
        *clientIdentity = v80;
        if (v80 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:
    v12, a2, a3, a4, a5, a6, a7, a8;
    return;
  }

  v11 = 0;
  v12 = &_swiftEmptyArrayStorage;
  v86 = a4;
  while (1)
  {
    v13 = v11++;
    if (v11 < v10)
    {
      v14 = *(*a3 + 8 * v11);
      v15 = *(*a3 + 8 * v13);
      v16 = v13 + 2;
      v17 = v14;
      while (v10 != v16)
      {
        v18 = *(*a3 + 8 * v16);
        v19 = (v14 < v15) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v11 = v16 - 1;
          if (v14 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v11 = v10;
      if (v14 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v11 < v13)
      {
        goto LABEL_119;
      }

      if (v13 < v11)
      {
        v20 = v11 - 1;
        v21 = v13;
        do
        {
          if (v21 != v20)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = *(v24 + 8 * v21);
            *(v24 + 8 * v21) = *(v24 + 8 * v20);
            *(v24 + 8 * v20) = v22;
          }
        }

        while (++v21 < v20--);
        v10 = a3[1];
      }
    }

LABEL_20:
    if (v11 < v10)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_118;
      }

      if (v11 - v13 < a4)
      {
        if (__OFADD__(v13, a4))
        {
          goto LABEL_120;
        }

        if (a4 + v13 < v10)
        {
          v10 = a4 + v13;
        }

        if (v10 < v13)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v11 != v10)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v11 < v13)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1003658B8(0, *v12->clientIdentity + 1, 1, v12, a5, a6, a7, a8);
    }

    v9 = *v12->clientIdentity;
    v33 = *&v12->clientIdentity[8];
    v34 = v9 + 1;
    if (v9 >= v33 >> 1)
    {
      v12 = sub_1003658B8((v33 > 1), v9 + 1, 1, v12, a5, a6, a7, a8);
    }

    *v12->clientIdentity = v34;
    v35 = &v12->clientIdentity[16];
    v36 = &v12->clientIdentity[16 * v9 + 16];
    *v36 = v13;
    *(v36 + 1) = v11;
    v88 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v9)
    {
      while (1)
      {
        v9 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *&v12->clientIdentity[16];
          v38 = *&v12->clientIdentity[24];
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v12->super.isa + 2 * v34;
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = &v35[16 * v9];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v9 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = &v12->super.isa + 2 * v34;
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = &v35[16 * v9];
        v68 = *v66;
        v67 = *(v66 + 1);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v9 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = &v35[16 * v9 - 16];
        v75 = *v74;
        v76 = &v35[16 * v9];
        v77 = *(v76 + 1);
        sub_100724704((*a3 + 8 * *v74), (*a3 + 8 * *v76), (*a3 + 8 * v77), v88);
        if (v8)
        {
          goto LABEL_97;
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v9 > *v12->clientIdentity)
        {
          goto LABEL_100;
        }

        *v74 = v75;
        *(v74 + 1) = v77;
        v78 = *v12->clientIdentity;
        if (v9 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        memmove(&v35[16 * v9], v76 + 16, 16 * (v78 - 1 - v9));
        *v12->clientIdentity = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = &v35[16 * v34];
      v42 = *(v41 - 8);
      v43 = *(v41 - 7);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 6);
      v45 = *(v41 - 5);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v12->super.isa + 2 * v34;
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = &v35[16 * v9];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v9 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v10 = a3[1];
    a4 = v86;
    if (v11 >= v10)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 8 * v11 - 8;
  v27 = v13 - v11;
LABEL_30:
  v28 = *(v25 + 8 * v11);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    v31 = *v30;
    if (v28 >= *v30)
    {
LABEL_29:
      ++v11;
      v26 += 8;
      --v27;
      if (v11 != v10)
      {
        goto LABEL_30;
      }

      v11 = v10;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    *v30 = v28;
    v30[1] = v31;
    --v30;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_100724704(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void sub_1007248F8(uint64_t a1, void *a2)
{
  v2 = a1;
  v38 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  if (v3)
  {
    v44 = &_swiftEmptyArrayStorage;
    sub_100253D70(0, v3 & ~(v3 >> 63), 0);
    v39 = &_swiftEmptyArrayStorage;
    if (v38)
    {
      v4 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v4 = _HashTable.startBucket.getter();
      v5 = *(v2 + 36);
    }

    v41 = v4;
    v42 = v5;
    v43 = v38 != 0;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v35 = v2 + 56;
      v34 = v2 + 64;
      v36 = v3;
      while (v6 < v3)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v14 = v41;
        v15 = v42;
        v16 = v43;
        v17 = v2;
        sub_100411E3C(v41, v42, v43, v2);
        v19 = v18;
        v20 = [a2 indexOfEqualObject:v18];

        v21 = v39;
        v44 = v39;
        v23 = *v39->clientIdentity;
        v22 = *&v39->clientIdentity[8];
        if (v23 >= v22 >> 1)
        {
          sub_100253D70((v22 > 1), v23 + 1, 1);
          v21 = v44;
        }

        *v21->clientIdentity = v23 + 1;
        *&v21->clientIdentity[8 * v23 + 16] = v20;
        v39 = v21;
        if (v38)
        {
          if (!v16)
          {
            goto LABEL_40;
          }

          v2 = v17;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v3 = v36;
          sub_1000F5104(&qword_100950C30, &qword_1007B6CB0);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v40, 0);
          if (v6 == v36)
          {
LABEL_32:
            sub_100010E34(v41, v42, v43, v8, v9, v10, v11, v12);
            return;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_41;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v2 = v17;
          v24 = (1 << *(v17 + 32));
          if (v14 >= v24)
          {
            goto LABEL_36;
          }

          v25 = v14 >> 6;
          v26 = *(v35 + 8 * (v14 >> 6));
          if (((v26 >> v14) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_38;
          }

          v27 = v26 & (-2 << (v14 & 0x3F));
          if (v27)
          {
            v24 = (__clz(__rbit64(v27)) | v14 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v28 = v25 << 6;
            v29 = v25 + 1;
            v30 = (v34 + 8 * v25);
            while (v29 < &v24->storeProvider[1] >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                sub_100010E34(v14, v15, 0, v8, v9, v10, v11, v12);
                v24 = (__clz(__rbit64(v31)) + v28);
                goto LABEL_31;
              }
            }

            sub_100010E34(v14, v15, 0, v8, v9, v10, v11, v12);
          }

LABEL_31:
          v33 = *(v17 + 36);
          v41 = v24;
          v42 = v33;
          v43 = 0;
          v3 = v36;
          if (v6 == v36)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

id sub_100724C50()
{
  sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
  sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
  sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
  v0 = Sequence.elements<A>(ofType:)();
  v8 = v0;
  if (v0 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v19 = *(v8 + 8 * v10 + 32);
      }

      v20 = v19;
      v21 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v22 = [v19 smartListType];
      if (!v22)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v11;
LABEL_5:
        v18, v11, v12, v13, v14, v15, v16, v17;
        goto LABEL_6;
      }

      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v11;
      if (!v26)
      {
        goto LABEL_5;
      }

      if (v24 == v27 && v26 == v11)
      {
        v26, v11, v27, v13, v14, v15, v16, v17;
        v18, v44, v45, v46, v47, v48, v49, v50;
LABEL_21:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_7;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v26, v30, v31, v32, v33, v34, v35, v36;
      v18, v37, v38, v39, v40, v41, v42, v43;
      if (v29)
      {
        goto LABEL_21;
      }

LABEL_6:

LABEL_7:
      ++v10;
      if (v21 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
  v8, v1, v2, v3, v4, v5, v6, v7;
  v51 = sub_100271018(&_swiftEmptyArrayStorage);

  v52 = objc_allocWithZone(NSOrderedSet);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v51, v54, v55, v56, v57, v58, v59, v60;
  v61 = [v52 initWithArray:isa];

  return v61;
}

unint64_t sub_100724F20(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008DE928, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100724F6C()
{
  sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
  CKRecordKeyValueSetting.subscript.setter();
  CKRecordKeyValueSetting.subscript.setter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  CKRecord.subscript.setter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  CKRecord.subscript.setter();
  return CKRecord.subscript.setter();
}

uint64_t sub_10072509C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1007250F4(uint64_t a1)
{
  result = sub_10072511C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10072511C()
{
  result = qword_100950C70;
  if (!qword_100950C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950C70);
  }

  return result;
}

unint64_t sub_100725170(uint64_t a1)
{
  result = sub_100725198();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100725198()
{
  result = qword_100950C78;
  if (!qword_100950C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950C78);
  }

  return result;
}

unint64_t sub_1007251F0()
{
  result = qword_100950C80;
  if (!qword_100950C80)
  {
    sub_1000F514C(&qword_100950C88, &qword_1007B6CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950C80);
  }

  return result;
}

unint64_t sub_100725258()
{
  result = qword_100950C90;
  if (!qword_100950C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950C90);
  }

  return result;
}

void sub_1007252C4(uint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
    sub_1003DB488();
    Set.Iterator.init(_cocoa:)();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_10001B860(v2);
      return;
    }

    while (1)
    {
      sub_10037BB94(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000060C8(0, &qword_1009388B0, NSManagedObject_ptr);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1007254AC(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[2] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_1000236C4(v11, *(*(a1 + 48) + ((v9 << 10) | (16 * v10))), *(v9 + 8));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1007255AC(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v21[2] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100378434(v21, v12, v13);
    v21[1], v14, v15, v16, v17, v18, v19, v20;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1007256B0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v21[2] = a2;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100378434(v21, v12, v13);
    v21[1], v14, v15, v16, v17, v18, v19, v20;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1007257B4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950CA0);
  v1 = sub_100006654(v0, qword_100950CA0);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10072587C()
{
  result = [objc_opt_self() intelligentGrocery];
  qword_100950CB8 = result;
  return result;
}

uint64_t sub_1007258B8(uint64_t a1)
{
  v3 = *v1;
  v2[11] = a1;
  v2[12] = v3;
  v4 = type metadata accessor for Locale();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for OSSignpostID();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100725A54, 0, 0);
}

uint64_t sub_100725A54(uint64_t a1)
{
  v139 = v1;
  static os_signpost_type_t.begin.getter();
  if (qword_100936790 != -1)
  {
    swift_once();
  }

  v3 = *(v1 + 160);
  v2 = *(v1 + 168);
  v4 = *(v1 + 152);
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v3 + 8))(v2, v4);
  if (qword_100936788 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_100950CA0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 96);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v138[0] = v10;
    *v9 = 136446210;
    *(v1 + 72) = v8;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(describing:)();
    v13 = v12;
    v14 = sub_10000668C(v11, v12, v138);
    v13, v15, v16, v17, v18, v19, v20, v21;
    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: Start execution", v9, 0xCu);
    sub_10000607C(v10);
  }

  Date.init()();
  type metadata accessor for REMTrialClient();
  swift_allocObject();
  REMTrialClient.init()();
  sub_100726524();
  v137 = v22;
  v23 = sub_1007276DC(*(v1 + 88));

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v23, v26, v27, v28, v29, v30, v31, v32;
  if (os_log_type_enabled(v24, v25))
  {
    v33 = *(v1 + 120);
    v34 = *(v1 + 96);
    v135 = *(v1 + 112);
    v136 = *(v1 + 104);
    v35 = swift_slowAlloc();
    v138[0] = swift_slowAlloc();
    *v35 = 136446722;
    *(v1 + 64) = v34;
    swift_getMetatypeMetadata();
    v36 = String.init<A>(describing:)();
    v38 = v37;
    v39 = sub_10000668C(v36, v37, v138);
    v38, v40, v41, v42, v43, v44, v45, v46;
    *(v35 + 4) = v39;
    *(v35 + 12) = 2082;
    v47 = Set.description.getter();
    v49 = v48;
    v50 = sub_10000668C(v47, v48, v138);
    v49, v51, v52, v53, v54, v55, v56, v57;
    *(v35 + 14) = v50;
    *(v35 + 22) = 2080;
    static Locale.current.getter();
    v58 = Locale.identifier.getter();
    v60 = v59;
    (*(v135 + 8))(v33, v136);
    v61 = sub_10000668C(v58, v60, v138);
    v60, v62, v63, v64, v65, v66, v67, v68;
    *(v35 + 24) = v61;
    _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s: {distinctGroceryLocaleIDsOfExistingGroceryLists: %{public}s}, {current locale: %s}", v35, 0x20u);
    swift_arrayDestroy();
  }

  v70 = *(v1 + 112);
  v69 = *(v1 + 120);
  v71 = *(v1 + 104);
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  static Locale.current.getter();
  v73 = Locale.identifier.getter();
  v75 = v74;
  (*(v70 + 8))(v69, v71);
  *(inited + 32) = v73;
  *(inited + 40) = v75;
  v76 = sub_10072765C(inited, v23);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  sub_1007255AC(v137, v76);
  v78 = v77;
  *(v1 + 80) = v77;
  sub_1000F5104(&unk_100945240, &qword_1007A0A70);
  sub_100727AE0();
  v79 = Sequence<>.filterToSet(_:)();
  v78, v80, v81, v82, v83, v84, v85, v86;

  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();
  v79, v90, v91, v92, v93, v94, v95, v96;
  if (os_log_type_enabled(v88, v89))
  {
    v98 = *(v1 + 96);
    v99 = swift_slowAlloc();
    v138[0] = swift_slowAlloc();
    *v99 = 136446466;
    v100 = sub_1001424F8(v98);
    v102 = v101;
    v103 = sub_10000668C(v100, v101, v138);
    v102, v104, v105, v106, v107, v108, v109, v110;
    *(v99 + 4) = v103;
    *(v99 + 12) = 2082;
    v111 = Set.description.getter();
    v113 = v112;
    v114 = sub_10000668C(v111, v112, v138);
    v113, v115, v116, v117, v118, v119, v120, v121;
    *(v99 + 14) = v114;
    _os_log_impl(&_mh_execute_header, v88, v89, "%{public}s: Requesting grocery model assets from Trial {localeIDsOfGroceryModelAssetsToRequest: %{public}s}", v99, 0x16u);
    swift_arrayDestroy();
  }

  v122 = *(v1 + 96);
  *(swift_allocObject() + 16) = v122;
  dispatch thunk of REMTrialClient.requestGroceryModelAssetsForLocales(withLocaleIdentifiers:completion:)();
  v124 = *(v1 + 136);
  v123 = *(v1 + 144);
  v125 = *(v1 + 128);
  v126 = *(v1 + 96);

  v79, v127, v128, v129, v130, v131, v132, v133;

  sub_1007261BC(v123, v126);
  (*(v124 + 8))(v123, v125);

  v134 = *(v1 + 8);

  return v134();
}

uint64_t sub_1007261BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100936788 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100950CA0);
  (*(v10 + 16))(v13, a1, v9);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v35 = v5;
    v20 = v19;
    v37[0] = v19;
    v37[1] = a2;
    *v18 = 136446466;
    swift_getMetatypeMetadata();
    v21 = String.init<A>(describing:)();
    v23 = v22;
    v24 = sub_10000668C(v21, v22, v37);
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v18 + 4) = v24;
    *(v18 + 12) = 2048;
    Date.rem_elapsedInMilliseconds.getter();
    v33 = v32;
    (*(v10 + 8))(v13, v9);
    *(v18 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s: Finished execution {elapsedSeconds: %f}", v18, 0x16u);
    sub_10000607C(v20);
    v5 = v35;

    v4 = v36;
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  static os_signpost_type_t.end.getter();
  if (qword_100936790 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v5 + 8))(v8, v4);
}

void sub_100726524()
{
  v1 = sub_1000F5104(&unk_10093F420, &unk_100797AE0);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v27[-v3];
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v10 = sub_100013674(qword_1009752E8);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  v12 = [v10 secondaryGroceryLocalesInfoAsData];
  if (!v12)
  {

LABEL_8:
    (*(v6 + 56))(v4, 1, 1, v5);
LABEL_9:
    sub_1000050A4(v4, &unk_10093F420, &unk_100797AE0);
    sub_1001A5660(&_swiftEmptyArrayStorage);
    return;
  }

  v13 = v12;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  type metadata accessor for RDSecondaryGroceryLocalesInfo(0);
  sub_100728EC8(&unk_100950C60, type metadata accessor for RDSecondaryGroceryLocalesInfo, &unk_1007B16F8);
  static REMJSONRepresentable.fromJSONData(_:)();
  if (v0)
  {
    sub_10001BBA0(v14, v16);

    return;
  }

  sub_10001BBA0(v14, v16);
  v17 = *(v28 + OBJC_IVAR____TtC7remindd29RDSecondaryGroceryLocalesInfo_secondaryGroceryLocales);

  sub_100448FEC(v17, v4);
  v17, v18, v19, v20, v21, v22, v23, v24;
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    goto LABEL_9;
  }

  (*(v6 + 32))(v9, v4, v5);
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = Locale.identifier.getter();
  *(inited + 40) = v26;
  sub_1001A5660(inited);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_1007268C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  return _swift_task_switch(sub_1007268E8, 0, 0);
}

uint64_t sub_1007268E8()
{
  v1 = v0[24];
  v2 = [objc_opt_self() sharedManager];
  v0[25] = v2;
  v3 = String._bridgeToObjectiveC()();
  v0[26] = v3;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007953F0;
  *(v4 + 32) = v1;
  sub_1000060C8(0, &qword_100950D70, UAFAssetSetSubscription_ptr);
  v5 = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[27] = isa;
  v4, v7, v8, v9, v10, v11, v12, v13;
  type metadata accessor for RDIDispatchQueue();
  v14 = static RDIDispatchQueue.utilityQueue.getter();
  v0[28] = v14;
  v0[2] = v0;
  v0[3] = sub_100726AE0;
  v15 = swift_continuation_init();
  v0[17] = sub_1000F5104(&qword_100946248, &unk_1007B6E90);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003F8964;
  v0[13] = &unk_1008FD4F8;
  v0[14] = v15;
  [v2 subscribe:v3 subscriptions:isa queue:v14 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100726AE0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_100726C68;
  }

  else
  {
    v2 = sub_100726BF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100726BF0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100726C68(uint64_t a1)
{
  v34 = v1;
  v2 = v1[28];
  v4 = v1[26];
  v3 = v1[27];
  v5 = v1[25];
  swift_willThrow();

  if (qword_100936788 != -1)
  {
    swift_once();
  }

  v6 = v1[23];
  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100950CA0);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v6, v10, v11, v12, v13, v14, v15, v16;

  if (os_log_type_enabled(v8, v9))
  {
    v18 = v1[22];
    v17 = v1[23];
    v19 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v19 = 136446466;
    *(v19 + 4) = sub_10000668C(v18, v17, v33);
    *(v19 + 12) = 2080;
    swift_getErrorValue();
    v20 = Error.rem_errorDescription.getter();
    v22 = v21;
    v23 = sub_10000668C(v20, v21, v33);
    v22, v24, v25, v26, v27, v28, v29, v30;
    *(v19 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v8, v9, "requestNLAndSiriBertAssets: Failed to UAFAssetSetManager.subscribe %{public}s with error: %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v31 = v1[1];

  return v31();
}

uint64_t sub_100726E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  return _swift_task_switch(sub_100726EB0, 0, 0);
}

uint64_t sub_100726EB0()
{
  v18 = v0;
  v1 = v0[24];
  v2 = [objc_opt_self() sharedManager];
  v0[25] = v2;
  v3 = String._bridgeToObjectiveC()();
  v4 = v3;
  v0[26] = v3;
  v5 = *(v1 + 16);
  if (v5)
  {
    v15 = v3;
    v16 = v2;
    v6 = v0[24];
    v7 = sub_1003689CC(v5, 0);
    v8 = sub_1002791DC(&v17, &v7->clientIdentity[16], v5, v6);
    v9 = v17;

    v10 = sub_10001B860(v9);
    if (v8 != v5)
    {
      __break(1u);
      return _swift_continuation_await(v10);
    }

    v4 = v15;
    v2 = v16;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[27] = isa;

  type metadata accessor for RDIDispatchQueue();
  v12 = static RDIDispatchQueue.utilityQueue.getter();
  v0[28] = v12;
  v0[2] = v0;
  v0[3] = sub_1007270DC;
  v13 = swift_continuation_init();
  v0[17] = sub_1000F5104(&qword_100946248, &unk_1007B6E90);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003F8964;
  v0[13] = &unk_1008FD4D0;
  v0[14] = v13;
  [v2 unsubscribe:v4 subscriptionNames:isa queue:v12 completion:v0 + 10];
  v10 = (v0 + 2);

  return _swift_continuation_await(v10);
}

uint64_t sub_1007270DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1007271EC;
  }

  else
  {
    v2 = sub_100728F18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1007271EC(uint64_t a1)
{
  v43 = v1;
  v2 = v1[28];
  v4 = v1[26];
  v3 = v1[27];
  v5 = v1[25];
  swift_willThrow();

  if (qword_100936788 != -1)
  {
    swift_once();
  }

  v6 = v1[24];
  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100950CA0);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  v6, v10, v11, v12, v13, v14, v15, v16;

  if (os_log_type_enabled(v8, v9))
  {
    v17 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v17 = 136446466;
    v18 = Set.description.getter();
    v20 = v19;
    v21 = sub_10000668C(v18, v19, v42);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    swift_getErrorValue();
    v29 = Error.rem_errorDescription.getter();
    v31 = v30;
    v32 = sub_10000668C(v29, v30, v42);
    v31, v33, v34, v35, v36, v37, v38, v39;
    *(v17 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v8, v9, "unsubscribeUAFAsset: Failed to UAFAssetSetManager.unsubscribe %{public}s with error: %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v40 = v1[1];

  return v40();
}

uint64_t sub_100727464(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000FCBFC;

  return sub_1007258B8(a1);
}

uint64_t sub_1007274FC(uint64_t a1, uint64_t a2)
{
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v5 = *(PredicateType - 8);
  __chkstk_darwin(PredicateType, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9, v10);
  v13 = &v21 - v12;
  v22 = a2;
  v14 = *(a1 + 16);
  if (v14)
  {
    v17 = *(v5 + 16);
    v15 = v5 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v8, v18, PredicateType, v11);
      sub_100379BD8(v13, v8);
      (*(v15 - 8))(v13, PredicateType);
      v18 += v19;
      --v14;
    }

    while (v14);
    return v22;
  }

  return a2;
}

uint64_t sub_10072765C(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_100378434(v14, v5, v4);
      v14[1], v6, v7, v8, v9, v10, v11, v12;
      v3 += 2;
      --v2;
    }

    while (v2);
    return v15;
  }

  return a2;
}

void *sub_1007276DC(void *a1)
{
  v2 = v1;
  v4 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v4, v4);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v7 = [objc_opt_self() cdEntityName];
  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    v7 = String._bridgeToObjectiveC()();
    v9, v10, v11, v12, v13, v14, v15, v16;
  }

  v17 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v7];

  [v17 setResultType:2];
  [v17 setReturnsDistinctResults:1];
  v18 = sub_10001F6F4();
  [v17 setPredicate:v18];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100791300;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 32) = 0x4C797265636F7267;
  *(v19 + 40) = 0xEF4449656C61636FLL;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v19, v21, v22, v23, v24, v25, v26, v27;
  [v17 setPropertiesToFetch:isa];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v28 = a1;
  v29 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
    sub_1001555B4(v6);
  }

  else
  {
    v37 = v29;
    v60 = _swiftEmptySetSingleton;
    if (v29 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v52[1] = v2;
      v53 = v17;
      v54 = v6;
      v39 = 0;
      v6 = (v37 & 0xC000000000000001);
      v17 = (v37 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v6)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v40 = *(v37 + 8 * v39 + 32);
        }

        v41 = v40;
        v42 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        *&v57 = 0x4C797265636F7267;
        *(&v57 + 1) = 0xEF4449656C61636FLL;
        v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v43 = [v41 __swift_objectForKeyedSubscript:v2];
        swift_unknownObjectRelease();
        if (v43)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v57 = 0u;
          v58 = 0u;
        }

        v59[0] = v57;
        v59[1] = v58;
        if (*(&v58 + 1))
        {
          if (swift_dynamicCast())
          {
            sub_100378434(v59, v55, v56);

            *(&v59[0] + 1), v44, v45, v46, v47, v48, v49, v50;
          }

          else
          {
          }
        }

        else
        {

          sub_1000050A4(v59, &qword_100939ED0, &qword_100791B10);
        }

        ++v39;
        if (v42 == i)
        {
          v28 = v60;
          v17 = v53;
          v6 = v54;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v28 = _swiftEmptySetSingleton;
LABEL_27:
    v37, v30, v31, v32, v33, v34, v35, v36;

    sub_1001555B4(v6);
  }

  return v28;
}

unint64_t sub_100727AE0()
{
  result = qword_100941118;
  if (!qword_100941118)
  {
    sub_1000F514C(&unk_100945240, &qword_1007A0A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941118);
  }

  return result;
}

void sub_100727B48(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v285 = a1;
  v1 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  __chkstk_darwin(v1 - 8, v2);
  v277 = v274 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v5);
  v7 = v274 - v6;
  __chkstk_darwin(v8, v9);
  v284 = v274 - v10;
  v11 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v11 - 8, v12);
  v286 = v274 - v13;
  v14 = [objc_opt_self() sharedManager];
  v282 = 0x80000001007FF7B0;
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 subscriptionsForSubscriber:v15];

  if (v16)
  {
    sub_1000060C8(0, &qword_100950D70, UAFAssetSetSubscription_ptr);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v24 >> 62))
    {
      goto LABEL_3;
    }

LABEL_14:
    v25 = _CocoaArrayWrapper.endIndex.getter();
    v283 = v7;
    if (v25)
    {
      goto LABEL_4;
    }

LABEL_15:
    v24, v17, v18, v19, v20, v21, v22, v23;
    v27 = &_swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v24 = &_swiftEmptyArrayStorage;
  if (&_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_14;
  }

LABEL_3:
  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v283 = v7;
  if (!v25)
  {
    goto LABEL_15;
  }

LABEL_4:
  v302[0] = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, v25 & ~(v25 >> 63), 0);
  if (v25 < 0)
  {
LABEL_101:
    __break(1u);
    return;
  }

  v26 = 0;
  v27 = v302[0];
  do
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v28 = *(v24 + 8 * v26 + 32);
    }

    v29 = v28;
    v30 = [v28 name];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v302[0] = v27;
    v42 = *v27->clientIdentity;
    v41 = *&v27->clientIdentity[8];
    if (v42 >= v41 >> 1)
    {
      sub_100026EF4((v41 > 1), v42 + 1, 1);
      v27 = v302[0];
    }

    ++v26;
    *v27->clientIdentity = v42 + 1;
    v43 = v27 + 16 * v42;
    *(v43 + 4) = v31;
    *(v43 + 5) = v33;
  }

  while (v25 != v26);
  v24, v34, v35, v36, v37, v38, v39, v40;
LABEL_16:
  v44 = sub_1001A5660(v27);
  v27, v45, v46, v47, v48, v49, v50, v51;
  if (*v285->clientIdentity)
  {
    v279 = v44;
    v300 = _swiftEmptySetSingleton;
    v301 = _swiftEmptySetSingleton;
    v59 = &v285->clientIdentity[40];
    v60 = 1 << v285->clientIdentity[16];
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *&v285->clientIdentity[40];
    v63 = (v60 + 63) >> 6;

    v65 = 0;
    *&v66 = 136446210;
    v275 = v66;
    *&v66 = 136446466;
    v276 = v66;
    v280 = v59;
    v281 = v63;
    if (v62)
    {
      goto LABEL_20;
    }

LABEL_21:
    while (1)
    {
      v67 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if (v67 >= v63)
      {

        v162 = v300;
        v163 = v279;
        v164 = *v279->clientIdentity;
        v165 = *v300->clientIdentity;
        v274[1] = 0;
        *&v276 = v300;
        if (v164 <= v165 >> 3)
        {
          v298 = v300;

          sub_10019BAF4(v163);
          v166 = v298;
        }

        else
        {

          v166 = sub_10019C4D4(v163, v162);
        }

        v170 = 0;
        v285 = v166;
        v173 = *&v166->clientIdentity[40];
        v171 = &v166->clientIdentity[40];
        v172 = v173;
        v174 = 1 << *(v171 - 24);
        v175 = -1;
        if (v174 < 64)
        {
          v175 = ~(-1 << v174);
        }

        v176 = v175 & v172;
        v278 = (v174 + 63) >> 6;
        v280 = v171;
        v281 = 0x80000001007FF7D0;
        while (v176)
        {
LABEL_59:
          v178 = (*&v285->clientIdentity[32] + ((v170 << 10) | (16 * __clz(__rbit64(v176)))));
          v180 = *v178;
          v179 = v178[1];
          v295 = 0xD00000000000001CLL;
          v296 = v281;
          v291 = 0x75676E616C2E6C6ELL;
          v292 = 0xEB00000000656761;
          v293 = v180;
          v294 = v179;
          sub_1000F5104(&qword_100942F08, &qword_1007A3998);
          v181 = static _DictionaryStorage.allocate(capacity:)();
          swift_bridgeObjectRetain_n();

          v182 = v291;
          v183 = v292;
          v184 = v293;
          v185 = v294;

          v186 = sub_100005F4C(v182, v183);
          if (v187)
          {
            goto LABEL_97;
          }

          v181[(v186 >> 6) + 8] |= 1 << v186;
          v188 = (v181[6] + 16 * v186);
          *v188 = v182;
          v188[1] = v183;
          v189 = (v181[7] + 16 * v186);
          *v189 = v184;
          v189[1] = v185;
          v190 = v181[2];
          v191 = __OFADD__(v190, 1);
          v192 = v190 + 1;
          if (v191)
          {
            goto LABEL_98;
          }

          v181[2] = v192;

          sub_1000050A4(&v291, &qword_10093DB20, &qword_10079B880);
          v297 = v181;
          sub_1000F5104(&qword_100950D60, &qword_1007B6E48);
          v193 = static _DictionaryStorage.allocate(capacity:)();

          v194 = v295;
          v195 = v296;
          v196 = v297;

          v197 = sub_100005F4C(v194, v195);
          if (v198)
          {
            goto LABEL_99;
          }

          v193[(v197 >> 6) + 8] |= 1 << v197;
          v199 = (v193[6] + 16 * v197);
          *v199 = v194;
          v199[1] = v195;
          *(v193[7] + 8 * v197) = v196;
          v200 = v193[2];
          v191 = __OFADD__(v200, 1);
          v201 = v200 + 1;
          if (v191)
          {
            goto LABEL_100;
          }

          v193[2] = v201;

          sub_1000050A4(&v295, &qword_100950D68, &unk_1007B6E50);
          v202 = type metadata accessor for Date();
          v203 = *(v202 - 8);
          v204 = v286;
          (*(v203 + 56))(v286, 1, 1, v202);
          v205 = String._bridgeToObjectiveC()();
          v179, v206, v207, v208, v209, v210, v211, v212;
          sub_1000F5104(&unk_100945230, &qword_1007A2590);
          v213.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v214 = (*(v203 + 48))(v204, 1, v202);
          isa = 0;
          if (v214 != 1)
          {
            v216 = v286;
            isa = Date._bridgeToObjectiveC()().super.isa;
            (*(v203 + 8))(v216, v202);
          }

          v176 &= v176 - 1;
          v217 = [objc_allocWithZone(UAFAssetSetSubscription) initWithName:v205 assetSets:v213.super.isa usageAliases:0 expires:isa];

          v218 = v283;
          if (v217)
          {
            v219 = type metadata accessor for TaskPriority();
            v220 = *(v219 - 8);
            v221 = v284;
            (*(v220 + 56))(v284, 1, 1, v219);
            v222 = swift_allocObject();
            v222[2] = 0;
            v222[3] = 0;
            v222[4] = 0xD00000000000001BLL;
            v222[5] = v282;
            v222[6] = v217;
            sub_100728D48(v221, v218);
            v223 = (*(v220 + 48))(v218, 1, v219);

            if (v223 == 1)
            {
              sub_1000050A4(v218, &qword_100936FA8, &qword_100791B70);
            }

            else
            {
              TaskPriority.rawValue.getter();
              (*(v220 + 8))(v218, v219);
            }

            v224 = v222[2];
            swift_unknownObjectRetain();

            if (v224)
            {
              swift_getObjectType();
              v225 = dispatch thunk of Actor.unownedExecutor.getter();
              v227 = v226;
              swift_unknownObjectRelease();
            }

            else
            {
              v225 = 0;
              v227 = 0;
            }

            sub_1000050A4(v284, &qword_100936FA8, &qword_100791B70);
            v228 = swift_allocObject();
            *(v228 + 16) = &unk_1007B6E68;
            *(v228 + 24) = v222;
            if (v227 | v225)
            {
              v287 = 0;
              v288 = 0;
              v289 = v225;
              v290 = v227;
            }

            swift_task_create();
          }
        }

        while (1)
        {
          v177 = v170 + 1;
          if (__OFADD__(v170, 1))
          {
            goto LABEL_95;
          }

          if (v177 >= v278)
          {
            break;
          }

          v176 = *&v280[8 * v177];
          ++v170;
          if (v176)
          {
            v170 = v177;
            goto LABEL_59;
          }
        }

        v229 = v276;
        if (*(v276 + 16) <= *v279->clientIdentity >> 3)
        {
          v298 = v279;
          sub_10019BAF4(v276);
          v229, v248, v249, v250, v251, v252, v253, v254;
          v230 = v298;
          if (!*v298->clientIdentity)
          {
            goto LABEL_79;
          }

LABEL_77:
          v245 = type metadata accessor for TaskPriority();
          v246 = v277;
          (*(*(v245 - 8) + 56))(v277, 1, 1, v245);
          v247 = swift_allocObject();
          v247[2] = 0;
          v247[3] = 0;
          v247[4] = 0xD00000000000001BLL;
          v247[5] = v282;
          v247[6] = v230;
          sub_1001955C4(0, 0, v246, &unk_1007B6E80, v247);
        }

        else
        {
          v230 = sub_10019C4D4(v276, v279);
          v229, v231, v232, v233, v234, v235, v236, v237;
          if (*v230->clientIdentity)
          {
            goto LABEL_77;
          }

LABEL_79:
          v230, v238, v239, v240, v241, v242, v243, v244;
        }

        v255 = 0;
        v256 = v301;
        v257 = v301 + 7;
        v258 = 1 << *(v301 + 32);
        v259 = -1;
        if (v258 < 64)
        {
          v259 = ~(-1 << v258);
        }

        v260 = v259 & v301[7];
        v261 = (v258 + 63) >> 6;
        while (v260)
        {
          v262 = v255;
LABEL_88:
          v263 = __clz(__rbit64(v260));
          v260 &= v260 - 1;
          v264 = (v256[6] + ((v262 << 10) | (16 * v263)));
          v265 = *v264;
          v266 = v264[1];

          _s7remindd20REMGroceryClassifierC26requestNLAssetsIfNecessary11modelLocaleySS_tFZ_0(v265, v266);
          v266, v267, v268, v269, v270, v271, v272, v273;
        }

        while (1)
        {
          v262 = v255 + 1;
          if (__OFADD__(v255, 1))
          {
            goto LABEL_96;
          }

          if (v262 >= v261)
          {
            goto LABEL_90;
          }

          v260 = v257[v262];
          ++v255;
          if (v260)
          {
            v255 = v262;
            goto LABEL_88;
          }
        }
      }

      v62 = *&v59[8 * v67];
      ++v65;
      if (v62)
      {
        while (1)
        {
          v68 = __clz(__rbit64(v62));
          v62 &= v62 - 1;
          v69 = (*(v64 + 48) + ((v67 << 10) | (16 * v68)));
          v70 = *v69;
          v71 = v69[1];

          sub_10025B910(v70, v71, v302);
          v79 = 0;
          v80 = v303;
          v81 = *(v303 + 16);
          v82 = (v303 + 32);
          do
          {
            if (v81 == v79)
            {

              sub_100378434(&v298, v70, v71);
              v299, v84, v85, v86, v87, v88, v89, v90;
              v81 = *(v80 + 16);
              goto LABEL_29;
            }
          }

          while (v82[v79++]);
          do
          {
LABEL_29:
            if (!v81)
            {
              sub_10025C33C(v302, v72, v73, v74, v75, v76, v77, v78);
              if (qword_100936788 != -1)
              {
                swift_once();
              }

              v115 = type metadata accessor for Logger();
              sub_100006654(v115, qword_100950CA0);

              v116 = Logger.logObject.getter();
              v117 = static os_log_type_t.info.getter();
              v71, v118, v119, v120, v121, v122, v123, v124;
              if (os_log_type_enabled(v116, v117))
              {
                v132 = swift_slowAlloc();
                v133 = swift_slowAlloc();
                v298 = v133;
                *v132 = v275;
                v134 = sub_10000668C(v70, v71, &v298);
                v71, v135, v136, v137, v138, v139, v140, v141;
                *(v132 + 4) = v134;
                v142 = v117;
                v143 = v116;
                v144 = "requestNLAndSiriBertAssets: skip download for siriEmeddngLocale: %{public}s";
                goto LABEL_41;
              }

              goto LABEL_42;
            }

            v91 = *v82++;
            --v81;
          }

          while (v91 != 4);
          v92 = v305;
          if (!v305)
          {
            sub_10025C33C(v302, v72, v73, v74, v75, v76, v77, v78);
            if (qword_100936788 != -1)
            {
              swift_once();
            }

            v145 = type metadata accessor for Logger();
            sub_100006654(v145, qword_100950CA0);

            v116 = Logger.logObject.getter();
            v146 = static os_log_type_t.default.getter();
            v71, v147, v148, v149, v150, v151, v152, v153;
            if (os_log_type_enabled(v116, v146))
            {
              v132 = swift_slowAlloc();
              v133 = swift_slowAlloc();
              v298 = v133;
              *v132 = v275;
              v154 = sub_10000668C(v70, v71, &v298);
              v71, v155, v156, v157, v158, v159, v160, v161;
              *(v132 + 4) = v154;
              v142 = v146;
              v143 = v116;
              v144 = "requestNLAndSiriBertAssets: siriEmeddngLocale is nil: %{public}s";
LABEL_41:
              _os_log_impl(&_mh_execute_header, v143, v142, v144, v132, 0xCu);
              sub_10000607C(v133);

              v63 = v281;

LABEL_43:

              goto LABEL_44;
            }

LABEL_42:
            v71, v125, v126, v127, v128, v129, v130, v131;
            goto LABEL_43;
          }

          v93 = v304;

          v71, v94, v95, v96, v97, v98, v99, v100;
          sub_10025C33C(v302, v101, v102, v103, v104, v105, v106, v107);
          sub_100378434(&v298, v93, v92);
          v299, v108, v109, v110, v111, v112, v113, v114;
LABEL_44:
          v65 = v67;
          v64 = v285;
          v59 = v280;
          if (!v62)
          {
            goto LABEL_21;
          }

LABEL_20:
          v67 = v65;
        }
      }
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (*(v44 + 16))
  {
    v167 = type metadata accessor for TaskPriority();
    v168 = v277;
    (*(*(v167 - 8) + 56))(v277, 1, 1, v167);
    v169 = swift_allocObject();
    v169[2] = 0;
    v169[3] = 0;
    v169[4] = 0xD00000000000001BLL;
    v169[5] = v282;
    v169[6] = v44;
    sub_1001955C4(0, 0, v168, &unk_1007B6E88, v169);
LABEL_90:
  }

  else
  {

    v44, v52, v53, v54, v55, v56, v57, v58;
  }
}

uint64_t sub_100728C80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000FCBFC;

  return sub_1007268C4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100728D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100728DB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000FDA74;

  return sub_100726E8C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100728E80()
{
  swift_unknownObjectRelease();
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 48), v8, v9, v10, v11, v12, v13, v14;

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100728EC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100728F1C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950D78);
  v1 = sub_100006654(v0, qword_100950D78);
  if (qword_1009364D0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100728FE4(void *a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, void *a4)
{
  v5 = v4;
  v207 = a3;
  v208 = a4;
  v206 = a2;
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v7, v8);
  v10 = v183 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = v183 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() fetchRequest];
  sub_1000060C8(0, &qword_100950D90, off_1008D4180);
  v17 = NSManagedObjectContext.fetch<A>(_:)();
  if (v4)
  {

    return;
  }

  v189 = v16;
  v194 = v10;
  v195 = v7;
  v186 = a1;
  if (v17 >> 62)
  {
LABEL_55:
    v181 = v5;
    v182 = v17;
    v25 = _CocoaArrayWrapper.endIndex.getter();
    v17 = v182;
    v5 = v181;
    if (!v25)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v25 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
LABEL_44:
      v17, v18, v19, v20, v21, v22, v23, v24;

      return;
    }
  }

  v26 = v15;
  v198 = v17;
  v27 = [v186 persistentStoreCoordinator];
  if (!v27)
  {
    v17 = v198;
    goto LABEL_44;
  }

  v28 = v27;
  v29 = v5;
  v30 = [v27 persistentStores];
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = sub_10027122C(v31);
  v31, v33, v34, v35, v36, v37, v38, v39;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v32, v41, v42, v43, v44, v45, v46, v47;
  v48 = [v28 currentPersistentHistoryTokenFromStores:isa];

  if (!v48)
  {

    v198, v172, v173, v174, v175, v176, v177, v178;
    return;
  }

  v193 = v11;
  v49 = v48;
  v50 = [objc_allocWithZone(REMNSPersistentHistoryToken) initWithPersistentHistoryToken:v48];
  v51 = objc_opt_self();
  v209 = 0;
  v5 = [v51 archivedDataWithRootObject:v50 requiringSecureCoding:1 error:&v209];
  v52 = v209;
  if (!v5)
  {
    v179 = v52;
    v198, v53, v54, v55, v56, v57, v58, v59;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v184 = v49;
  v185 = v28;
  v183[1] = v29;
  v202 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v203 = v60;

  v17 = static Date.now.getter();
  v61 = v12;
  v15 = 0;
  v205 = v198 & 0xC000000000000001;
  v188 = v198 & 0xFFFFFFFFFFFFFF8;
  v187 = (v198 + 32);
  v11 = v208;
  v12 = v208 + 7;
  v192 = "com.apple.siri.understanding";
  v183[0] = v61;
  v191 = (v61 + 7);
  *&v62 = 136316162;
  v190 = v62;
  v200 = v50;
  v201 = v26;
  v204 = v25;
  v199 = v208 + 7;
  do
  {
    if (v205)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v188 + 16))
      {
        goto LABEL_54;
      }

      v17 = *&v187[8 * v15];
    }

    v5 = v17;
    if (__OFADD__(v15++, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v71 = [v17 clientName];
    if (!v71)
    {
      goto LABEL_29;
    }

    v72 = v26;
    v73 = v71;
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    if (!v11 || !v208[2] || (v84 = v208, Hasher.init(_seed:)(), String.hash(into:)(), v85 = Hasher._finalize()(), v86 = -1 << *(v84 + 32), v87 = v85 & ~v86, ((*(v12 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0))
    {
LABEL_28:
      v76, v77, v78, v79, v80, v81, v82, v83;
      v11 = v208;
LABEL_29:
      v91 = v206;
      v92 = Data._bridgeToObjectiveC()().super.isa;
      [v5 setLastConsumedChangeTokenData:v92];

      v93 = Date._bridgeToObjectiveC()().super.isa;
      [v5 setLastConsumedDate:v93];

      if (qword_100936798 != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      sub_100006654(v94, qword_100950D78);
      v95 = v5;
      v96 = v207;

      v5 = Logger.logObject.getter();
      v97 = static os_log_type_t.default.getter();

      v96, v98, v99, v100, v101, v102, v103, v104;
      if (os_log_type_enabled(v5, v97))
      {
        v197 = v97;
        v105 = swift_slowAlloc();
        v196 = swift_slowAlloc();
        v211 = v196;
        *v105 = v190;
        *(v105 + 4) = sub_10000668C(v91, v96, &v211);
        *(v105 + 12) = 2080;
        *(v105 + 14) = sub_10000668C(0xD000000000000087, (v192 | 0x8000000000000000), &v211);
        *(v105 + 22) = 2082;
        v106 = [v95 accountIdentifier];
        if (v106)
        {
          v107 = v106;
          v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v110 = v109;
        }

        else
        {
          v108 = 0;
          v110 = 0;
        }

        v209 = v108;
        v210 = v110;
        sub_1000F5104(&unk_100939E40, &qword_100791BD0);
        v111 = Optional.descriptionOrNil.getter();
        v113 = v112;
        v110, v112, v114, v115, v116, v117, v118, v119;
        v120 = sub_10000668C(v111, v113, &v211);
        v113, v121, v122, v123, v124, v125, v126, v127;
        *(v105 + 24) = v120;
        *(v105 + 32) = 2082;
        v128 = [v95 clientName];
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

        v133 = v193;
        v209 = v130;
        v210 = v132;
        v134 = Optional.descriptionOrNil.getter();
        v136 = v135;
        v132, v135, v137, v138, v139, v140, v141, v142;
        v143 = sub_10000668C(v134, v136, &v211);
        v136, v144, v145, v146, v147, v148, v149, v150;
        *(v105 + 34) = v143;
        *(v105 + 42) = 2082;
        v151 = [v95 lastConsumedDate];
        if (v151)
        {
          v152 = v194;
          v153 = v151;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v154 = 0;
        }

        else
        {
          v154 = 1;
          v152 = v194;
        }

        v155 = v197;
        (*v191)(v152, v154, 1, v133);
        v156 = Optional.descriptionOrNil.getter();
        v158 = v157;
        sub_1001AAD5C(v152);
        v159 = sub_10000668C(v156, v158, &v211);
        v158, v160, v161, v162, v163, v164, v165, v166;
        *(v105 + 44) = v159;
        _os_log_impl(&_mh_execute_header, v5, v155, "[%s|%s] Did reset change tracking state {accountIdentifier: %{public}s, clientName: %{public}s, lastConsumedDate: %{public}s}", v105, 0x34u);
        swift_arrayDestroy();

        v26 = v201;
        v11 = v208;
      }

      else
      {

        v26 = v201;
      }

      v12 = v199;
      v50 = v200;
      continue;
    }

    v88 = ~v86;
    while (1)
    {
      v89 = (v208[6] + 16 * v87);
      v77 = v89[1];
      v90 = *v89 == v74 && v77 == v76;
      if (v90 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v87 = (v87 + 1) & v88;
      if (((*(v12 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v76, v77, v78, v79, v80, v81, v82, v83;

    v11 = v208;
    v26 = v72;
  }

  while (v15 != v204);
  v198, v63, v64, v65, v66, v67, v68, v69;
  v167 = v186;
  if ([v186 hasChanges])
  {
    v209 = 0;
    v168 = [v167 save:&v209];
    v169 = v183[0];
    v170 = v189;
    if (v168)
    {
      v171 = v209;
      [v167 refreshAllObjects];
    }

    else
    {
      v180 = v209;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    sub_10001BBA0(v202, v203);
    (*(v169 + 8))(v26, v193);
  }

  else
  {
    (*(v183[0] + 8))(v26, v193);

    sub_10001BBA0(v202, v203);
  }
}

uint64_t sub_100729BA4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for REMCDBaseSection();
  result = Identifiable<>.id.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100729BE8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950D98);
  v1 = sub_100006654(v0, qword_100950D98);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100729CB0(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if ((a1 & 1) == 0)
  {
    v9 = &_swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v9 = sub_100365788(0, 1, 1, &_swiftEmptyArrayStorage, a5, a6, a7, a8);
  v15 = *v9->clientIdentity;
  v14 = *&v9->clientIdentity[8];
  if (v15 >= v14 >> 1)
  {
    v9 = sub_100365788((v14 > 1), v15 + 1, 1, v9, v10, v11, v12, v13);
  }

  *v9->clientIdentity = v15 + 1;
  v16 = v9 + 16 * v15;
  *(v16 + 4) = 0xD000000000000010;
  *(v16 + 5) = 0x80000001007FF9E0;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100365788(0, *v9->clientIdentity + 1, 1, v9, v17, v18, v19, v20);
    }

    v22 = *v9->clientIdentity;
    v21 = *&v9->clientIdentity[8];
    if (v22 >= v21 >> 1)
    {
      v9 = sub_100365788((v21 > 1), v22 + 1, 1, v9, v17, v18, v19, v20);
    }

    *v9->clientIdentity = v22 + 1;
    v23 = v9 + 16 * v22;
    *(v23 + 4) = 0xD000000000000017;
    *(v23 + 5) = 0x80000001007FF9C0;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100365788(0, *v9->clientIdentity + 1, 1, v9, v24, v25, v26, v27);
    }

    v29 = *v9->clientIdentity;
    v28 = *&v9->clientIdentity[8];
    if (v29 >= v28 >> 1)
    {
      v9 = sub_100365788((v28 > 1), v29 + 1, 1, v9, v24, v25, v26, v27);
    }

    *v9->clientIdentity = v29 + 1;
    v30 = v9 + 16 * v29;
    strcpy(v30 + 32, ".writePrivate");
    *(v30 + 23) = -4864;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_100365788(0, *v9->clientIdentity + 1, 1, v9, v31, v32, v33, v34);
  }

  v36 = *v9->clientIdentity;
  v35 = *&v9->clientIdentity[8];
  if (v36 >= v35 >> 1)
  {
    v9 = sub_100365788((v35 > 1), v36 + 1, 1, v9, v31, v32, v33, v34);
  }

  *v9->clientIdentity = v36 + 1;
  v37 = v9 + 16 * v36;
  *(v37 + 4) = 0x636E79732ELL;
  *(v37 + 5) = 0xE500000000000000;
  if ((a1 & 0x10) == 0)
  {
LABEL_15:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_33:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_100365788(0, *v9->clientIdentity + 1, 1, v9, v38, v39, v40, v41);
  }

  v43 = *v9->clientIdentity;
  v42 = *&v9->clientIdentity[8];
  if (v43 >= v42 >> 1)
  {
    v9 = sub_100365788((v42 > 1), v43 + 1, 1, v9, v38, v39, v40, v41);
  }

  *v9->clientIdentity = v43 + 1;
  v44 = v9 + 16 * v43;
  *(v44 + 4) = 0x5465676E6168632ELL;
  *(v44 + 5) = 0xEF676E696B636172;
  if ((a1 & 0x20) == 0)
  {
LABEL_16:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_38:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_100365788(0, *v9->clientIdentity + 1, 1, v9, v45, v46, v47, v48);
  }

  v50 = *v9->clientIdentity;
  v49 = *&v9->clientIdentity[8];
  if (v50 >= v49 >> 1)
  {
    v9 = sub_100365788((v49 > 1), v50 + 1, 1, v9, v45, v46, v47, v48);
  }

  *v9->clientIdentity = v50 + 1;
  v51 = v9 + 16 * v50;
  *(v51 + 4) = 0x67756265642ELL;
  *(v51 + 5) = 0xE600000000000000;
  if ((a1 & 0x40) == 0)
  {
LABEL_17:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_43:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_100365788(0, *v9->clientIdentity + 1, 1, v9, v52, v53, v54, v55);
  }

  v57 = *v9->clientIdentity;
  v56 = *&v9->clientIdentity[8];
  if (v57 >= v56 >> 1)
  {
    v9 = sub_100365788((v56 > 1), v57 + 1, 1, v9, v52, v53, v54, v55);
  }

  *v9->clientIdentity = v57 + 1;
  v58 = v9 + 16 * v57;
  *(v58 + 4) = 0x6E697865646E692ELL;
  *(v58 + 5) = 0xE900000000000067;
  if ((a1 & 0x80) == 0)
  {
LABEL_18:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_48:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_100365788(0, *v9->clientIdentity + 1, 1, v9, v59, v60, v61, v62);
  }

  v64 = *v9->clientIdentity;
  v63 = *&v9->clientIdentity[8];
  if (v64 >= v63 >> 1)
  {
    v9 = sub_100365788((v63 > 1), v64 + 1, 1, v9, v59, v60, v61, v62);
  }

  *v9->clientIdentity = v64 + 1;
  v65 = v9 + 16 * v64;
  *(v65 + 4) = 0x696C417065656B2ELL;
  *(v65 + 5) = 0xEA00000000006576;
  if ((a1 & 0x100) == 0)
  {
LABEL_19:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_53:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_100365788(0, *v9->clientIdentity + 1, 1, v9, v66, v67, v68, v69);
  }

  v71 = *v9->clientIdentity;
  v70 = *&v9->clientIdentity[8];
  if (v71 >= v70 >> 1)
  {
    v9 = sub_100365788((v70 > 1), v71 + 1, 1, v9, v66, v67, v68, v69);
  }

  *v9->clientIdentity = v71 + 1;
  v72 = v9 + 16 * v71;
  *(v72 + 4) = 0xD000000000000010;
  *(v72 + 5) = 0x80000001007FF9A0;
  if ((a1 & 0x200) == 0)
  {
LABEL_20:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_63;
  }

LABEL_58:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_100365788(0, *v9->clientIdentity + 1, 1, v9, v73, v74, v75, v76);
  }

  v78 = *v9->clientIdentity;
  v77 = *&v9->clientIdentity[8];
  if (v78 >= v77 >> 1)
  {
    v9 = sub_100365788((v77 > 1), v78 + 1, 1, v9, v73, v74, v75, v76);
  }

  *v9->clientIdentity = v78 + 1;
  v79 = v9 + 16 * v78;
  *(v79 + 4) = 0x6163696C7065722ELL;
  *(v79 + 5) = 0xEF726567616E614DLL;
  if ((a1 & 0x400) == 0)
  {
LABEL_21:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_68;
  }

LABEL_63:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_100365788(0, *v9->clientIdentity + 1, 1, v9, v80, v81, v82, v83);
  }

  v85 = *v9->clientIdentity;
  v84 = *&v9->clientIdentity[8];
  if (v85 >= v84 >> 1)
  {
    v9 = sub_100365788((v84 > 1), v85 + 1, 1, v9, v80, v81, v82, v83);
  }

  *v9->clientIdentity = v85 + 1;
  v86 = v9 + 16 * v85;
  *(v86 + 4) = 0xD000000000000012;
  *(v86 + 5) = 0x80000001007FF980;
  if ((a1 & 0x800) != 0)
  {
LABEL_68:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100365788(0, *v9->clientIdentity + 1, 1, v9, v87, v88, v89, v90);
    }

    v92 = *v9->clientIdentity;
    v91 = *&v9->clientIdentity[8];
    if (v92 >= v91 >> 1)
    {
      v9 = sub_100365788((v91 > 1), v92 + 1, 1, v9, v87, v88, v89, v90);
    }

    *v9->clientIdentity = v92 + 1;
    v93 = v9 + 16 * v92;
    *(v93 + 4) = 0xD000000000000011;
    *(v93 + 5) = 0x80000001007FF960;
  }

LABEL_73:
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_10025D9A0();
  v94 = BidirectionalCollection<>.joined(separator:)();
  v96 = v95;
  v9, v95, v97, v98, v99, v100, v101, v102;
  v103._countAndFlagsBits = v94;
  v103._object = v96;
  String.append(_:)(v103);
  v96, v104, v105, v106, v107, v108, v109, v110;
  v111._countAndFlagsBits = 93;
  v111._object = 0xE100000000000000;
  String.append(_:)(v111);
  return 91;
}

BOOL sub_10072A40C(_DWORD *a1, int *a2)
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

_DWORD *sub_10072A43C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
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

int *sub_10072A468@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_10072A528@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void sub_10072A558(_TtC7remindd19RDXPCStorePerformer *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = sub_10072A740(a1);
  a1, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

unint64_t sub_10072A5AC()
{
  result = qword_100950DB0;
  if (!qword_100950DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950DB0);
  }

  return result;
}

unint64_t sub_10072A604()
{
  result = qword_100950DB8;
  if (!qword_100950DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950DB8);
  }

  return result;
}

unint64_t sub_10072A65C()
{
  result = qword_100950DC0;
  if (!qword_100950DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950DC0);
  }

  return result;
}

unint64_t sub_10072A6B4()
{
  result = qword_100950DC8;
  if (!qword_100950DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950DC8);
  }

  return result;
}

uint64_t sub_10072A708(uint64_t a1)
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

uint64_t sub_10072A740(uint64_t result)
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

uint64_t sub_10072A77C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950DD0);
  v1 = sub_100006654(v0, qword_100950DD0);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10072A844(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v2 - 8, v3);
  v5 = v35 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v11 = sub_100005F4C(0x7265746E756F63, 0xE700000000000000);
    if (v12)
    {
      sub_100005EF0(*(a1 + 56) + 32 * v11, v36);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16))
        {
          v13 = v35[0];
          v14 = sub_100005F4C(0xD000000000000010, 0x80000001007FFD20);
          if (v15)
          {
            sub_100005EF0(*(a1 + 56) + 32 * v14, v36);
            if (swift_dynamicCast())
            {
              if (*(a1 + 16))
              {
                v16 = *v35;
                v17 = sub_100005F4C(0x496163696C706572, 0xE900000000000044);
                if (v18)
                {
                  sub_100005EF0(*(a1 + 56) + 32 * v17, v36);
                  if (swift_dynamicCast())
                  {
                    v19 = v35[1];
                    UUID.init(uuidString:)();
                    v19, v20, v21, v22, v23, v24, v25, v26;
                    if ((*(v7 + 48))(v5, 1, v6) != 1)
                    {
                      (*(v7 + 32))(v10, v5, v6);
                      v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                      isa = UUID._bridgeToObjectiveC()().super.isa;
                      v34 = [v32 initWithCounter:v13 modificationTime:isa replicaID:v16];

                      (*(v7 + 8))(v10, v6);
                      return v34;
                    }

                    sub_1001A4F9C(v5);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (qword_1009367A8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_100950DD0);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Can't construct REMResolutionToken from invalid JSON", v30, 2u);
  }

  return 0;
}

id sub_10072ABE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_10072A844(a1);
  *a2 = result;
  return result;
}

void sub_10072AC10(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = sub_100005F4C(7364973, 0xE300000000000000), (v3 & 1) == 0) || (sub_100005EF0(*(a1 + 56) + 32 * v2, v58), sub_1000F5104(&qword_100950DE8, &qword_1007B7298), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1009367A8 == -1)
    {
LABEL_17:
      v39 = type metadata accessor for Logger();
      sub_100006654(v39, qword_100950DD0);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Can't construct REMResolutionTokenMap from invalid JSON", v42, 2u);
      }

      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_17;
  }

  sub_1000F5104(&qword_100950DF0, &unk_1007B72A0);
  v4 = static _DictionaryStorage.copy(original:)();
  v12 = v4;
  v13 = 0;
  v56 = v4;
  v14 = 1 << *(v57 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v57 + 64);
  v17 = (v14 + 63) >> 6;
  v55 = v4 + 64;
  if (!v16)
  {
LABEL_8:
    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {
        v57, v5, v6, v7, v8, v9, v10, v11;
        sub_10045B758(v12);
        v44 = v43;

        v45 = objc_allocWithZone(NSMutableDictionary);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v44, v47, v48, v49, v50, v51, v52, v53;
        v54 = [v45 initWithDictionary:isa];

        [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMap:v54];
        return;
      }

      v20 = *(v57 + 64 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_13:
    v21 = v18 | (v13 << 6);
    v22 = (*(v57 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(*(v57 + 56) + 8 * v21);
    sub_10072B12C();

    v27 = sub_10072A844(v26);
    v25, v28, v29, v30, v31, v32, v33, v34;
    v12 = v56;
    *(v55 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v35 = (v56[6] + 16 * v21);
    *v35 = v23;
    v35[1] = v24;
    *(v56[7] + 8 * v21) = v27;
    v36 = v56[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      break;
    }

    v56[2] = v38;
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

unint64_t sub_10072B12C()
{
  result = qword_100950DF8;
  if (!qword_100950DF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100950DF8);
  }

  return result;
}

void _sSo13REMCDReminderC7reminddE24prepareForDeletion_SwiftyyF_0()
{
  v1 = v0;
  v2 = [v0 managedObjectContext];
  if (!v2)
  {
    return;
  }

  v86 = v2;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    v18 = v86;
LABEL_8:

    return;
  }

  v4 = v3;
  v85 = sub_10072DC30(v0);
  type metadata accessor for REMCDDueDateDeltaAlert();
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v85];
  v38 = NSManagedObjectContext.fetch<A>(_:)();

  if (qword_1009367B0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100006654(v39, qword_100950E00);
  swift_bridgeObjectRetain_n();
  v40 = v0;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  v43 = v38 >> 62;
  if (os_log_type_enabled(v41, v42))
  {
    v1 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v87[0] = v44;
    *v1 = 136446466;
    v45 = [v40 remObjectID];
    if (v45)
    {
      v46 = v45;
      v47 = [v45 description];

      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;
    }

    else
    {
      v48 = 7104878;
      v50 = 0xE300000000000000;
    }

    v58 = sub_10000668C(v48, v50, v87);
    v50, v59, v60, v61, v62, v63, v64, v65;
    *(v1 + 4) = v58;
    *(v1 + 12) = 2048;
    if (v43)
    {
      v73 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v73 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38, v66, v67, v68, v69, v70, v71, v72;
    *(v1 + 14) = v73;
    v38, v74, v75, v76, v77, v78, v79, v80;
    _os_log_impl(&_mh_execute_header, v41, v42, "cleanUpCachedDueDateDeltaAlertsOnPreparationToReminderDeletion: prepareForDeletion on reminder {reminderID: %{public}s, alerts.count: %ld}", v1, 0x16u);
    sub_10000607C(v44);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  if (!v43)
  {
    v81 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v81)
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

  v81 = _CocoaArrayWrapper.endIndex.getter();
  if (!v81)
  {
LABEL_40:
    v38, v51, v52, v53, v54, v55, v56, v57;

    v18 = v85;
    goto LABEL_8;
  }

LABEL_29:
  v82 = 0;
  while (1)
  {
    if ((v38 & 0xC000000000000001) != 0)
    {
      v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v82 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v83 = *(v38 + 8 * v82 + 32);
    }

    v1 = v83;
    v84 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      break;
    }

    [v4 deleteObject:v83];

    ++v82;
    if (v84 == v81)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  swift_once();
  v7 = type metadata accessor for Logger();
  sub_100006654(v7, qword_100950E00);
  v8 = v1;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v87[0] = swift_slowAlloc();
    *v11 = 136446466;
    v12 = [v8 remObjectID];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 description];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 7104878;
      v17 = 0xE300000000000000;
    }

    v19 = sub_10000668C(v15, v17, v87);
    v17, v20, v21, v22, v23, v24, v25, v26;
    *(v11 + 4) = v19;
    *(v11 + 12) = 2082;
    swift_getErrorValue();
    v27 = Error.rem_errorDescription.getter();
    v29 = v28;
    v30 = sub_10000668C(v27, v28, v87);
    v29, v31, v32, v33, v34, v35, v36, v37;
    *(v11 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v9, v10, "cleanUpCachedDueDateDeltaAlertsOnPreparationToReminderDeletion: Failed to delete REMCDDueDateDeltaAlert(s) on the side table {reminderID: %{public}s, error: %{public}s}", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_10072B7A0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950E00);
  v1 = sub_100006654(v0, qword_100950E00);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall REMCDReminder.processDueDateDeltaAlertsDataChanges()()
{
  _s44DueDateDeltaAlertsDataCDIngestionCoordinatorCMa();
  swift_allocObject();
  sub_10072C2FC(v0);
  static os_log_type_t.info.getter();
  measureTimeElapsed(_:level:block:)();
}

void sub_10072BAD0()
{
  v2 = *(v0 + 16);
  v3 = sub_10072DC30(v2);
  if (!v1)
  {
    v4 = v3;
    v127 = v2;
    v128 = v0;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007953F0;
    *(inited + 32) = swift_getKeyPath();
    type metadata accessor for REMCDDueDateDeltaAlert();
    v6 = [objc_allocWithZone(NSFetchRequest) init];
    v7 = [swift_getObjCClassFromMetadata() entity];
    [v6 setEntity:v7];

    [v6 setAffectedStores:0];
    [v6 setPredicate:v4];
    v130 = _swiftEmptySetSingleton;

    sub_100391890(v8);
    inited, v9, v10, v11, v12, v13, v14, v15;
    v16 = sub_1003FE04C(_swiftEmptySetSingleton);
    _swiftEmptySetSingleton, v17, v18, v19, v20, v21, v22, v23;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v16, v25, v26, v27, v28, v29, v30, v31;
    [v6 setPropertiesToFetch:isa];

    swift_setDeallocating();
    swift_arrayDestroy();
    v32 = NSManagedObjectContext.fetch<A>(_:)();

    v33 = v127;
    v34 = sub_1002AFCFC();
    v35 = *(v128 + 24);
    v130 = 0;
    v36 = [v35 remObjectIDWithError:{&v130, v127}];
    v37 = v130;
    if (v36)
    {
      v38 = v36;
      v130 = 0;
      v39 = v37;
      v40 = [v33 remObjectIDWithError:&v130];
      v41 = v130;
      if (v40)
      {
        v42 = v40;
        type metadata accessor for REMDueDateDeltaAlertCDIngestor();
        v43 = swift_allocObject();
        *(v43 + 16) = v38;
        *(v43 + 24) = v42;
        v44 = v41;
        sub_10072C514(v34, v43);
        v130 = v34;

        sub_1000F5104(&qword_10093F5E0, &unk_1007B5240);
        type metadata accessor for UUID();
        sub_10072DEDC();
        sub_1001BE27C(&qword_10093B410, &protocol conformance descriptor for UUID);
        v75 = Sequence.mapToSet<A>(_:)();
        v34, v76, v77, v78, v79, v80, v81, v82;
        v130 = &_swiftEmptyArrayStorage;

        sub_10072D7D8(v32, v75, v128, &v130);
        v32, v83, v84, v85, v86, v87, v88, v89;
        swift_bridgeObjectRelease_n();

        v90 = v130;
        if (*v130->clientIdentity)
        {
          if (qword_1009367B0 != -1)
          {
            swift_once();
          }

          v91 = type metadata accessor for Logger();
          sub_100006654(v91, qword_100950E00);
          v92 = Logger.logObject.getter();
          v93 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v129 = v95;
            *v94 = 134218242;
            *(v94 + 4) = *v90->clientIdentity;
            *(v94 + 12) = 2080;

            v96 = Array.description.getter();
            v98 = v97;
            v90, v97, v99, v100, v101, v102, v103, v104;
            v105 = sub_10000668C(v96, v98, &v129);
            v98, v106, v107, v108, v109, v110, v111, v112;
            *(v94 + 14) = v105;
            _os_log_impl(&_mh_execute_header, v92, v93, "DueDateDeltaAlertsDataCDIngestionCoordinator: %ld REMCDDueDateDeltaAlert entries deleted {identifiers: %s}", v94, 0x16u);
            sub_10000607C(v95);
          }
        }

        sub_10072CE78(v34);

        v90, v113, v114, v115, v116, v117, v118, v119;
        v34, v120, v121, v122, v123, v124, v125, v126;
      }

      else
      {
        v60 = v130;
        v34, v61, v62, v63, v64, v65, v66, v67;
        v32, v68, v69, v70, v71, v72, v73, v74;

        _convertNSErrorToError(_:)();
        swift_willThrow();
      }
    }

    else
    {
      v45 = v130;
      v34, v46, v47, v48, v49, v50, v51, v52;
      v32, v53, v54, v55, v56, v57, v58, v59;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t *sub_10072C2FC(void *a1)
{
  v3 = v1;
  *(v1 + 16) = a1;
  v4 = a1;
  v7 = [v4 account];
  sub_1000F5104(&unk_100939D70, &qword_10079C100);
  Optional.tryUnwrap(_:file:line:)();

  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 24) = v9;
    v8 = [v4 storeControllerManagedObjectContext];
    sub_1000F5104(&unk_100950F60, &unk_1007B7350);
    Optional.tryUnwrap(_:file:line:)();

    *(v1 + 32) = v9;
    v6 = [objc_allocWithZone(RDPersistentStoreLookupForREMCDObject) init:v4];

    *(v3 + 40) = v6;
  }

  return v3;
}

uint64_t sub_10072C514(unint64_t a1, uint64_t a2)
{
  v134 = a2;
  v141 = type metadata accessor for UUID();
  v3 = *(v141 - 8);
  __chkstk_darwin(v141, v4);
  v140 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a1; v6; i = a1)
  {
    v7 = 0;
    v138 = a1 & 0xFFFFFFFFFFFFFF8;
    v139 = a1 & 0xC000000000000001;
    v137 = (v3 + 1);
    v8 = _swiftEmptyDictionarySingleton;
    v136 = v6;
    while (1)
    {
      if (v139)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v138 + 16))
        {
          goto LABEL_30;
        }

        v10 = *(a1 + 8 * v7 + 32);
      }

      a1 = v10;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = [v10 identifier];
      v13 = v140;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v145 = type metadata accessor for REMCDDueDateDeltaAlert();
      sub_1000F5104(&unk_100950F40, &qword_1007AE990);
      String.init<A>(describing:)();
      v15 = v14;
      v16 = objc_allocWithZone(REMObjectID);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v18 = String._bridgeToObjectiveC()();
      v15, v19, v20, v21, v22, v23, v24, v25;
      v26 = [v16 initWithUUID:isa entityName:v18];

      (*v137)(v13, v141);
      if ((v8 & 0xC000000000000001) != 0)
      {
        if (v8 < 0)
        {
          v3 = v8;
        }

        else
        {
          v3 = (v8 & 0xFFFFFFFFFFFFFF8);
        }

        v27 = a1;
        v28 = __CocoaDictionary.count.getter();
        if (__OFADD__(v28, 1))
        {
          goto LABEL_32;
        }

        v8 = sub_10021EBBC(v3, v28 + 1);
      }

      else
      {
        v29 = a1;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v145 = v8;
      v3 = v8;
      v32 = sub_10002B924(v26);
      v33 = *(v8 + 16);
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_31;
      }

      v36 = v31;
      if (*(v8 + 24) >= v35)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v8 = v145;
          if (v31)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v3 = &v145;
          sub_100377D2C();
          v8 = v145;
          if (v36)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_100372788(v35, isUniquelyReferenced_nonNull_native);
        v3 = v145;
        v37 = sub_10002B924(v26);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_98;
        }

        v32 = v37;
        v8 = v145;
        if (v36)
        {
LABEL_4:
          v9 = *(v8 + 56);
          v3 = *(v9 + 8 * v32);
          *(v9 + 8 * v32) = a1;

          goto LABEL_5;
        }
      }

      *(v8 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      *(*(v8 + 48) + 8 * v32) = v26;
      *(*(v8 + 56) + 8 * v32) = a1;

      v39 = *(v8 + 16);
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_33;
      }

      *(v8 + 16) = v41;
LABEL_5:
      ++v7;
      a1 = i;
      if (v11 == v136)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  v8 = _swiftEmptyDictionarySingleton;
LABEL_36:
  v145 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, 6, 0);
  v42 = 0;
  v43 = v145;
  v44 = 0x80000001007EA730;
  v45 = 0x80000001007E9F10;
  v46 = 0x80000001007EA710;
  do
  {
    v47 = *(&off_1008E44F0 + v42 + 32);
    v48 = 0xD00000000000001ALL;
    if (v47 == 4)
    {
      v48 = 0xD000000000000010;
      v49 = v45;
    }

    else
    {
      v49 = v44;
    }

    if (v47 == 3)
    {
      v48 = 0x6E6F697461657263;
      v49 = 0xEC00000065746144;
    }

    v50 = 0xD000000000000012;
    if (v47 == 1)
    {
      v51 = v46;
    }

    else
    {
      v50 = 0x4465746144657564;
      v51 = 0xEC00000061746C65;
    }

    if (!*(&off_1008E44F0 + v42 + 32))
    {
      v50 = 0x44497463656A626FLL;
      v51 = 0xE800000000000000;
    }

    if (*(&off_1008E44F0 + v42 + 32) <= 2u)
    {
      v52 = v50;
    }

    else
    {
      v52 = v48;
    }

    if (*(&off_1008E44F0 + v42 + 32) <= 2u)
    {
      v53 = v51;
    }

    else
    {
      v53 = v49;
    }

    v145 = v43;
    v55 = *v43->clientIdentity;
    v54 = *&v43->clientIdentity[8];
    if (v55 >= v54 >> 1)
    {
      v57 = v44;
      v141 = v45;
      v58 = v46;
      sub_100026EF4((v54 > 1), v55 + 1, 1);
      v46 = v58;
      v45 = v141;
      v44 = v57;
      v43 = v145;
    }

    ++v42;
    *v43->clientIdentity = v55 + 1;
    v56 = &v43->clientIdentity[16 * v55 + 16];
    *v56 = v52;
    v56[1] = v53;
  }

  while (v42 != 6);
  v143 = v43;
  v59 = &_swiftEmptyArrayStorage;
  v145 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, 1, 0);
  v60 = v145;
  v62 = *v145->clientIdentity;
  v61 = *&v145->clientIdentity[8];
  v63 = (v62 + 1);
  if (v62 >= v61 >> 1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    *v60->clientIdentity = v63;
    v61 = v60 + 16 * v62;
    *(v61 + 32) = 0x49746E756F636361;
    *(v61 + 40) = 0xE900000000000044;
    v144 = v60;
    v62 = *v43->clientIdentity;
    v59 = *v59->clientIdentity;
    v64 = (v59 + v62);
    if (__OFADD__(v59, v62))
    {
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v65 = swift_isUniquelyReferenced_nonNull_native();
    if (v65 && (v63 = &_swiftEmptyArrayStorage, v64 <= *&_swiftEmptyArrayStorage.clientIdentity[8] >> 1))
    {
      if (!*v43->clientIdentity)
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v59 <= v64)
      {
        v80 = v59 + v62;
      }

      else
      {
        v80 = v59;
      }

      v63 = sub_100365788(v65, v80, 1, &_swiftEmptyArrayStorage, v69, v70, v71, v72);
      if (!*v43->clientIdentity)
      {
LABEL_69:
        v43, v66, v67, v68, v69, v70, v71, v72;
        if (v62)
        {
          goto LABEL_94;
        }

        v59 = *v63->clientIdentity;
        goto LABEL_71;
      }
    }

    v61 = (*&v63->clientIdentity[8] >> 1) - *v63->clientIdentity;
    if (v61 < v62)
    {
      goto LABEL_95;
    }

    swift_arrayInitWithCopy();
    v43, v73, v74, v75, v76, v77, v78, v79;
    v59 = *v63->clientIdentity;
    if (v62)
    {
      v40 = __OFADD__(v59, v62);
      v59 = (v59 + v62);
      if (v40)
      {
        goto LABEL_97;
      }

      *v63->clientIdentity = v59;
    }

LABEL_71:
    v81 = v144;
    v43 = *v144->clientIdentity;
    v62 = v43 + v59;
    if (__OFADD__(v59, v43))
    {
      goto LABEL_93;
    }

    v82 = swift_isUniquelyReferenced_nonNull_native();
    if (v82 && v62 <= *&v63->clientIdentity[8] >> 1)
    {
      if (!*v81->clientIdentity)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v59 <= v62)
      {
        v99 = v43 + v59;
      }

      else
      {
        v99 = v59;
      }

      v63 = sub_100365788(v82, v99, 1, v63, v86, v87, v88, v89);
      if (!*v81->clientIdentity)
      {
LABEL_83:
        v81, v83, v84, v85, v86, v87, v88, v89;
        if (!v43)
        {
          goto LABEL_84;
        }

        goto LABEL_94;
      }
    }

    v61 = (*&v63->clientIdentity[8] >> 1) - *v63->clientIdentity;
    if (v61 >= v43)
    {
      break;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    sub_100026EF4((v61 > 1), v63, 1);
    v60 = v145;
  }

  swift_arrayInitWithCopy();
  v81, v90, v91, v92, v93, v94, v95, v96;
  if (!v43)
  {
    goto LABEL_84;
  }

  v97 = *v63->clientIdentity;
  v40 = __OFADD__(v97, v43);
  v98 = v43 + v97;
  if (v40)
  {
LABEL_97:
    __break(1u);
LABEL_98:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    goto LABEL_99;
  }

  *v63->clientIdentity = v98;
LABEL_84:
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  swift_arrayDestroy();
  v100 = sub_1001A5660(v63);
  v63, v101, v102, v103, v104, v105, v106, v107;
  if ((v8 & 0xC000000000000001) == 0)
  {
    v126 = v135;
    sub_1001BAF9C(v8, v100);
    if (v126)
    {
      goto LABEL_100;
    }

    v118 = v127;

    goto LABEL_92;
  }

  if (v8 < 0)
  {
    v108 = v8;
  }

  else
  {
    v108 = v8 & 0xFFFFFFFFFFFFFF8;
  }

  swift_bridgeObjectRetain_n();
  v109 = v135;
  v110 = sub_10072DF40(v108, v100);
  if (!v109)
  {
    v118 = v110;
    v100, v111, v112, v113, v114, v115, v116, v117;
LABEL_92:
    v8, v119, v120, v121, v122, v123, v124, v125;
    swift_bridgeObjectRelease_n();
    v129 = *(v133 + 32);
    v128 = *(v133 + 40);
    type metadata accessor for CDIngestionCoordinator();
    v130 = swift_allocObject();
    *(v130 + 16) = 0;
    *(v130 + 112) = &_swiftEmptyArrayStorage;
    *(v130 + 120) = &_swiftEmptyArrayStorage;
    *(v130 + 128) = &_swiftEmptyArrayStorage;
    *(v130 + 136) = &_swiftEmptyArrayStorage;
    *(v130 + 72) = v118;
    *(v130 + 80) = v128;
    *(v130 + 88) = v129;
    *(v130 + 24) = 0xD00000000000003ALL;
    *(v130 + 32) = 0x80000001007FFDE0;
    *(v130 + 48) = 0;
    *(v130 + 56) = 0;
    *(v130 + 40) = 0;
    *(v130 + 62) = 0;
    v131 = v129;
    swift_unknownObjectRetain();
    *(v130 + 144) = sub_10038F67C(&_swiftEmptyArrayStorage);
    *(v130 + 96) = 0;
    *(v130 + 104) = 0;
    sub_1006006EC(i, v134);
    sub_1003DA48C();
  }

LABEL_99:
  swift_bridgeObjectRelease_n();
LABEL_100:

  __break(1u);
  return result;
}

void sub_10072CE20(id *a1)
{
  v1 = [*a1 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_10072CE78(unint64_t a1)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10072DC30(*(v1 + 16));
  if (!v2)
  {
    v10 = v9;
    v93 = v4;
    v94 = v8;
    v89 = v5;
    v86 = a1;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007953F0;
    *(inited + 32) = swift_getKeyPath();
    type metadata accessor for REMCDDueDateDeltaAlert();
    v12 = [objc_allocWithZone(NSFetchRequest) init];
    v13 = [swift_getObjCClassFromMetadata() entity];
    [v12 setEntity:v13];

    [v12 setAffectedStores:0];
    [v12 setPredicate:v10];
    v97 = _swiftEmptySetSingleton;

    sub_100391890(v14);
    inited, v15, v16, v17, v18, v19, v20, v21;
    v22 = v97;
    v23 = sub_1003FE04C(v97);
    v22, v24, v25, v26, v27, v28, v29, v30;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v23, v32, v33, v34, v35, v36, v37, v38;
    [v12 setPropertiesToFetch:isa];

    swift_setDeallocating();
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = NSManagedObjectContext.fetch<A>(_:)();
    v40 = 0;

    if (isUniquelyReferenced_nonNull_native >> 62)
    {
LABEL_27:
      v48 = _CocoaArrayWrapper.endIndex.getter();
      v49 = v94;
      if (v48)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v48 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      v49 = v94;
      if (v48)
      {
LABEL_4:
        v50 = 0;
        v51 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
        v88 = v89 + 16;
        v91 = (v89 + 8);
        v92 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
        v52 = _swiftEmptyDictionarySingleton;
        v90 = isUniquelyReferenced_nonNull_native;
        v87 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
        while (1)
        {
          if (v51)
          {
            v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v50 >= *(v92 + 16))
            {
              goto LABEL_24;
            }

            v55 = *(isUniquelyReferenced_nonNull_native + 8 * v50 + 32);
          }

          v56 = v55;
          if (__OFADD__(v50, 1))
          {
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v95 = v50 + 1;
          v57 = [v55 identifier];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v58 = v56;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v97 = v52;
          v60 = sub_100363F20(v49);
          v61 = *v52->clientIdentity;
          v62 = (v59 & 1) == 0;
          v63 = v61 + v62;
          if (__OFADD__(v61, v62))
          {
            goto LABEL_25;
          }

          v64 = v59;
          if (*&v52->clientIdentity[8] >= v63)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v52 = v97;
              if (v59)
              {
                goto LABEL_5;
              }
            }

            else
            {
              sub_100377D40();
              v52 = v97;
              if (v64)
              {
                goto LABEL_5;
              }
            }
          }

          else
          {
            sub_10037279C(v63, isUniquelyReferenced_nonNull_native);
            v65 = sub_100363F20(v94);
            if ((v64 & 1) != (v66 & 1))
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v60 = v65;
            v52 = v97;
            if (v64)
            {
LABEL_5:
              v53 = *&v52->clientIdentity[40];
              v54 = *(v53 + 8 * v60);
              *(v53 + 8 * v60) = v58;

              v49 = v94;
              (*v91)(v94, v93);
              goto LABEL_6;
            }
          }

          v67 = v48;
          v68 = v40;
          *&v52->storeProvider[8 * (v60 >> 6) + 2] |= 1 << v60;
          v69 = v89;
          isUniquelyReferenced_nonNull_native = v93;
          v40 = v94;
          (*(v89 + 16))(*&v52->clientIdentity[32] + *(v89 + 72) * v60, v94, v93);
          *(*&v52->clientIdentity[40] + 8 * v60) = v58;
          v49 = v40;

          (*(v69 + 8))(v40, isUniquelyReferenced_nonNull_native);
          v70 = *v52->clientIdentity;
          v71 = __OFADD__(v70, 1);
          v72 = v70 + 1;
          if (v71)
          {
            goto LABEL_26;
          }

          *v52->clientIdentity = v72;
          v40 = v68;
          v48 = v67;
          v51 = v87;
LABEL_6:
          ++v50;
          isUniquelyReferenced_nonNull_native = v90;
          if (v95 == v48)
          {
            goto LABEL_29;
          }
        }
      }
    }

    v52 = _swiftEmptyDictionarySingleton;
LABEL_29:
    isUniquelyReferenced_nonNull_native, v41, v42, v43, v44, v45, v46, v47;
    v97 = 1;
    v80 = v86;
    if (v86 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v82 = 0;
      while (1)
      {
        if ((v80 & 0xC000000000000001) != 0)
        {
          v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v82 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v83 = *(v80 + 8 * v82 + 32);
        }

        v84 = v83;
        v85 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          break;
        }

        v96 = v83;
        sub_10072D438(&v96, v52, &v97);

        ++v82;
        if (v85 == i)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

LABEL_42:
    v52, v73, v74, v75, v76, v77, v78, v79;
  }
}

void sub_10072D438(void **a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v12, v13).n128_u64[0];
  v16 = v43 - v15;
  v17 = *a1;
  v18 = [v17 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(a2 + 16) && (v19 = sub_100363F20(v16), (v20 & 1) != 0))
  {
    v21 = *(v8 + 8);
    v22 = *(*(a2 + 56) + 8 * v19);
    v21(v16, v7);
    [v22 setSortOrder:*a3];

    if (__OFADD__(*a3, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a3;
    }
  }

  else
  {
    v43[1] = v3;
    v23 = *(v8 + 8);
    v23(v16, v7);
    if (qword_1009367B0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_100950E00);
    v25 = v17;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43[0] = v23;
      v30 = v29;
      v44 = v29;
      *v28 = 136315138;
      v31 = [v25 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001BE27C(&qword_10093F2A0, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (v43[0])(v11, v7);
      v35 = sub_10000668C(v32, v34, &v44);
      v34, v36, v37, v38, v39, v40, v41, v42;
      *(v28 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "DueDateDeltaAlertsDataCDIngestionCoordinator.applySortOrder: No CD alert found for alert identifier %s", v28, 0xCu);
      sub_10000607C(v30);
    }
  }
}

uint64_t sub_10072D770()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_10072D7D8(unint64_t a1, void *a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer **a4)
{
  v40 = a3;
  v41 = a4;
  v52 = a2;
  v5 = type metadata accessor for UUID();
  v46 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v47 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = v39 - v10;
  __chkstk_darwin(v12, v13);
  v53 = v39 - v14;
  v39[0] = a1;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = 0;
    v44 = v39[0] & 0xFFFFFFFFFFFFFF8;
    v45 = v39[0] & 0xC000000000000001;
    v42 = v39[0] + 32;
    v43 = i;
    v50 = v46 + 16;
    v51 = v52 + 7;
    v17 = (v46 + 8);
    v39[2] = v46 + 32;
    while (v45)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v21 = __OFADD__(v16, 1);
      v22 = v16 + 1;
      if (v21)
      {
        goto LABEL_21;
      }

LABEL_9:
      v48 = v20;
      v49 = v22;
      v23 = [v20 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      if (v52[2] && (v24 = v52, sub_1001BE27C(&qword_10093B410, &protocol conformance descriptor for UUID), v25 = dispatch thunk of Hashable._rawHashValue(seed:)(), v26 = -1 << *(v24 + 32), v27 = v25 & ~v26, ((*(v51 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
      {
        v28 = ~v26;
        v29 = *(v46 + 72);
        v30 = *(v46 + 16);
        while (1)
        {
          v30(v11, v52[6] + v29 * v27, v5);
          sub_1001BE27C(&qword_10093A3E0, &protocol conformance descriptor for UUID);
          v31 = dispatch thunk of static Equatable.== infix(_:_:)();
          v32 = *v17;
          (*v17)(v11, v5);
          if (v31)
          {
            break;
          }

          v27 = (v27 + 1) & v28;
          if (((*(v51 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        v32(v53, v5);
        v18 = v43;
        v19 = v48;
      }

      else
      {
LABEL_14:
        (*v17)(v53, v5);
        v19 = v48;
        [*(v40 + 32) deleteObject:v48];
        v33 = [v19 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = v41;
        v35 = *v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v34 = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = sub_100366328(0, *v35->clientIdentity + 1, 1, v35);
          *v41 = v35;
        }

        v18 = v43;
        v38 = *v35->clientIdentity;
        v37 = *&v35->clientIdentity[8];
        if (v38 >= v37 >> 1)
        {
          v35 = sub_100366328((v37 > 1), v38 + 1, 1, v35);
          *v41 = v35;
        }

        *v35->clientIdentity = v38 + 1;
        (*(v46 + 32))(v35 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v38, v47, v5);
      }

      v16 = v49;
      if (v49 == v18)
      {
        return;
      }
    }

    if (v16 >= *(v44 + 16))
    {
      goto LABEL_22;
    }

    v20 = *(v42 + 8 * v16);
    v21 = __OFADD__(v16, 1);
    v22 = v16 + 1;
    if (!v21)
    {
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }
}

uint64_t sub_10072DC30(void *a1)
{
  v2 = v1;
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4, v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v13, v14).n128_u64[0];
  v17 = &v30 - v16;
  v18 = [a1 identifier];
  if (v18)
  {
    v19 = v18;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 32))(v7, v12, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  Optional.tryUnwrap(_:file:line:)();
  sub_1001A4F9C(v7);
  if (!v1)
  {
    sub_1000F5104(&qword_10093D000, &qword_10079D320);
    v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100791300;
    (*(v9 + 16))(v21 + v20, v17, v8);
    v2 = sub_100231B7C(v21, 129);
    v21, v22, v23, v24, v25, v26, v27, v28;
    (*(v9 + 8))(v17, v8);
  }

  return v2;
}

unint64_t sub_10072DEDC()
{
  result = qword_100950F30;
  if (!qword_100950F30)
  {
    sub_1000F514C(&qword_10093F5E0, &unk_1007B5240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950F30);
  }

  return result;
}

Swift::Int sub_10072DF40(uint64_t a1, uint64_t a2)
{
  if (__CocoaDictionary.count.getter())
  {
    sub_1000F5104(&unk_100943C60, &unk_100798920);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v20 = v3;
  __CocoaDictionary.makeIterator()();
  swift_unknownObjectRetain();
  v4 = __CocoaDictionary.Iterator.next()();
  if (v4)
  {
    v5 = v4;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v6 = v5;
    do
    {
      v18 = v6;
      swift_dynamicCast();
      sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
      swift_dynamicCast();

      v13 = v3[2];
      if (v3[3] <= v13)
      {
        sub_10036CE68(v13 + 1, 1);
      }

      v3 = v20;
      result = NSObject._rawHashValue(seed:)(v20[5]);
      v8 = v20 + 8;
      v9 = -1 << *(v20 + 32);
      v10 = result & ~v9;
      v11 = v10 >> 6;
      if (((-1 << v10) & ~v20[(v10 >> 6) + 8]) != 0)
      {
        v12 = __clz(__rbit64((-1 << v10) & ~v20[(v10 >> 6) + 8])) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = 0;
        v15 = (63 - v9) >> 6;
        do
        {
          if (++v11 == v15 && (v14 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v16 = v11 == v15;
          if (v11 == v15)
          {
            v11 = 0;
          }

          v14 |= v16;
          v17 = v8[v11];
        }

        while (v17 == -1);
        v12 = __clz(__rbit64(~v17)) + (v11 << 6);
      }

      *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(v20[6] + 8 * v12) = v19;
      *(v20[7] + 8 * v12) = a2;
      ++v20[2];
      v6 = __CocoaDictionary.Iterator.next()();
    }

    while (v6);
  }

  return v3;
}

void sub_10072E1A8(uint64_t a1)
{
  v2 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &_swiftEmptyArrayStorage;
  v78 = *(a1 + 16);
  if (!v78)
  {
    return;
  }

  v73 = &v72 - v7;
  v75 = v5;
  v9 = type metadata accessor for REMRemindersListDataView.DatesModel.Group();
  v10 = 0;
  v11 = *(v9 - 8);
  v77 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v76 = *(v11 + 72);
  v84[5] = v3 + 16;
  v80 = v3;
  v74 = (v3 + 8);
  while (1)
  {
    v81 = v10;
    v13 = REMRemindersListDataView.DatesModel.Group.reminders.getter();
    v21 = v13;
    v22 = *(v13 + 16);
    if (v22)
    {
      v82 = v8;
      v84[0] = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v23 = *(v3 + 80);
      v79 = v21;
      v24 = v21 + ((v23 + 32) & ~v23);
      v83 = *(v3 + 72);
      v25 = *(v3 + 16);
      v27 = v74;
      v26 = v75;
      v28 = v73;
      do
      {
        v25(v28, v24, v26);
        REMRemindersListDataView.ReminderLite.objectID.getter();
        (*v27)(v28, v26);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v24 += v83;
        --v22;
      }

      while (v22);
      v79, v29, v30, v31, v32, v33, v34, v35;
      v36 = v84[0];
      v3 = v80;
      v8 = v82;
    }

    else
    {
      v13, v14, v15, v16, v17, v18, v19, v20;
      v36 = &_swiftEmptyArrayStorage;
    }

    v37 = v36 >> 62;
    if (v36 >> 62)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v8 >> 62;
    if (v8 >> 62)
    {
      v71 = _CocoaArrayWrapper.endIndex.getter();
      v41 = v71 + v38;
      if (__OFADD__(v71, v38))
      {
LABEL_37:
        __break(1u);
        return;
      }
    }

    else
    {
      v40 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v41 = v40 + v38;
      if (__OFADD__(v40, v38))
      {
        goto LABEL_37;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v83 = v38;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v39)
      {
        v50 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v41 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_20;
    }

    if (v39)
    {
      goto LABEL_19;
    }

LABEL_20:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v50 = v8 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
    v51 = *(v50 + 16);
    v52 = *(v50 + 24);
    if (v37)
    {
      break;
    }

    v53 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v53)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (((v52 >> 1) - v51) < v83)
    {
      goto LABEL_40;
    }

    v82 = v8;
    v56 = v50 + 8 * v51 + 32;
    v79 = v50;
    if (v37)
    {
      if (v53 < 1)
      {
        goto LABEL_42;
      }

      sub_10000CB48(&qword_10093F5A0, &qword_10093F598, &qword_1007A2640, &protocol conformance descriptor for [A]);
      for (i = 0; i != v53; ++i)
      {
        sub_1000F5104(&qword_10093F598, &qword_1007A2640);
        v65 = sub_10038D6F8(v84, i, v36);
        v67 = *v66;
        (v65)(v84, 0);
        *(v56 + 8 * i) = v67;
      }
    }

    else
    {
      type metadata accessor for REMObjectID_Codable();
      swift_arrayInitWithCopy();
    }

    v36, v57, v58, v59, v60, v61, v62, v63;
    v8 = v82;
    v3 = v80;
    v12 = v81;
    if (v83 >= 1)
    {
      v68 = *v79->clientIdentity;
      v69 = __OFADD__(v68, v83);
      v70 = v68 + v83;
      if (v69)
      {
        goto LABEL_41;
      }

      *v79->clientIdentity = v70;
    }

LABEL_4:
    v10 = v12 + 1;
    if (v10 == v78)
    {
      return;
    }
  }

  v54 = v50;
  v55 = _CocoaArrayWrapper.endIndex.getter();
  v50 = v54;
  v53 = v55;
  if (v55)
  {
    goto LABEL_25;
  }

LABEL_3:
  v36, v43, v44, v45, v46, v47, v48, v49;
  v12 = v81;
  if (v83 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_10072E660()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100950F70);
  v1 = sub_100006654(v0, qword_100950F70);
  if (qword_100936448 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975020);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10072E728()
{
  v1 = v0;
  v2 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v20[-v4];
  v6 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_storeControllerObservationToken;
  swift_beginAccess();
  sub_100010364(v1 + v11, v5, &qword_100942CA0, &qword_1007A3810);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000050A4(v5, &qword_100942CA0, &qword_1007A3810);
  }

  else
  {
    sub_10014D83C(v5, v10, type metadata accessor for RDStoreControllerNotificationCenter.Token);
    v12 = *(v1 + 72);
    v13 = *(v12 + 40);

    os_unfair_lock_lock(v13);
    __chkstk_darwin(v14, v15);
    *&v20[-16] = v10;
    swift_beginAccess();
    v16 = sub_1002601AC(sub_10014D8A4, &v20[-32]);
    v17 = *(*(v12 + 48) + 16);
    if (v17 < v16)
    {
      __break(1u);
      result = swift_endAccess();
      __break(1u);
      return result;
    }

    sub_100260C60(v16, v17);
    swift_endAccess();
    os_unfair_lock_unlock(v13);

    sub_10014D8C4(v10, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  }

  v18 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_lastDismissedDateDidChangeExternally;
  if (*(v1 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_lastDismissedDateDidChangeExternally))
  {

    AnyCancellable.cancel()();
  }

  *(v1 + v18) = 0;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_10000607C((v1 + 80));

  sub_1000050A4(v1 + v11, &qword_100942CA0, &qword_1007A3810);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000050A4(v1 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate, &unk_100938850, qword_100795AE0);
  return v1;
}

uint64_t sub_10072EA7C()
{
  sub_10072E728();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDTodayNotificationEngine(uint64_t a1)
{
  result = qword_100950FE0;
  if (!qword_100950FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10072EB28(uint64_t a1)
{
  sub_10073B0EC(319, &qword_100938FA0, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  if (v1 <= 0x3F)
  {
    sub_10073B0EC(319, &qword_100938D60, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10072EC78()
{
  v1 = v0;
  v140 = type metadata accessor for RDStoreControllerNotificationCenter.Observer(0);
  v2 = *(v140 - 8);
  __chkstk_darwin(v140, v3);
  v147 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v8 = &v128 - v7;
  v9 = sub_1000F5104(&qword_100942CA0, &qword_1007A3810);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v128 - v11;
  v13 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v13 - 8, v14);
  v136 = &v128 - v15;
  v139 = sub_1000F5104(&qword_100951200, &unk_1007B7460);
  v138 = *(v139 - 8);
  __chkstk_darwin(v139, v16);
  v137 = &v128 - v17;
  v130 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v130, v18);
  v20 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v24 = &v128 - v23;
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  v28 = __chkstk_darwin(v25, v27);
  v30 = (&v128 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = v0[2];
  *v30 = v31;
  v32 = *(v26 + 104);
  v143 = enum case for DispatchPredicate.onQueue(_:);
  v144 = v26 + 104;
  v142 = v32;
  v32(v30, v28);
  v135 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  v33 = *(v26 + 8);
  v146 = v25;
  v145 = v26 + 8;
  v141 = v33;
  v33(v30, v25);
  if ((v31 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v132 = v2;
  v34 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_started;
  if (*(v1 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_started))
  {
    if (qword_1009367B8 == -1)
    {
LABEL_4:
      v35 = type metadata accessor for Logger();
      sub_100006654(v35, qword_100950F70);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "RDTodayNotificationEngine.start() must be called exactly once", v38, 2u);
      }

      return;
    }

LABEL_23:
    swift_once();
    goto LABEL_4;
  }

  v133 = v8;
  v134 = v12;
  v131 = v24;
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100006654(v39, qword_100950F70);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Starting RDTodayNotificationEngine", v42, 2u);
  }

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "os_transaction INIT {name: com.apple.remindd.todayEngine.start}", v45, 2u);
  }

  v46 = os_transaction_create();
  *(v1 + v34) = 1;
  swift_beginAccess();
  sub_10000A87C((v1 + 10), &v155);
  v47 = v156;
  v48 = v157;
  sub_10000F61C(&v155, v156);
  v49 = v131;
  (*(v48 + 8))(v47, v48);
  v50 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate;
  swift_beginAccess();
  sub_1003CA59C(v49, v1 + v50);
  swift_endAccess();
  sub_100010364(v49, v20, &unk_100938850, qword_100795AE0);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  v53 = os_log_type_enabled(v51, v52);
  v129 = v46;
  v128 = v30;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock = v55;
    *v54 = 136315138;
    v56 = Optional.descriptionOrNil.getter();
    v58 = v57;
    sub_1000050A4(v20, &unk_100938850, qword_100795AE0);
    v59 = sub_10000668C(v56, v58, &aBlock);
    v58, v60, v61, v62, v63, v64, v65, v66;
    *(v54 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v51, v52, "RDTodayNotificationEngine: bootstrapping cachedLastDismissedDate from RDSynchronizedDismissedTodayNotificationStates {value: %s}", v54, 0xCu);
    sub_10000607C(v55);
  }

  else
  {

    sub_1000050A4(v20, &unk_100938850, qword_100795AE0);
  }

  sub_100736F1C(0x61727473746F6F62, 0xE900000000000070);
  v67 = v156;
  v68 = v157;
  sub_10000F61C(&v155, v156);
  aBlock = (*(v68 + 32))(v67, v68);
  v69 = v135;
  v154 = v135;
  v70 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v71 = v136;
  (*(*(v70 - 8) + 56))(v136, 1, 1, v70);
  v72 = v69;
  v135 = v72;
  sub_1000F5104(&qword_10094DB70, &qword_1007B3770);
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  sub_10000CB48(&qword_10094DB78, &qword_10094DB70, &qword_1007B3770, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000CDE4(&qword_10093CD40, &qword_10093E6E0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v73 = v137;
  Publisher.receive<A>(on:options:)();
  sub_1000050A4(v71, &qword_100939980, &unk_10079ADA0);

  type metadata accessor for RDTodayNotificationEngine(0);
  sub_10000CB48(&qword_100951208, &qword_100951200, &unk_1007B7460, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v74 = v139;
  v75 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (*(v138 + 8))(v73, v74);
  *(v1 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_lastDismissedDateDidChangeExternally) = v75;

  v76 = v1[4];
  ObjectType = swift_getObjectType();
  v78 = swift_allocObject();
  swift_weakInit();
  v79 = *(v76 + 8);
  v80 = *(v79 + 16);

  v80(sub_10073E664, v78, ObjectType, v79);

  v81 = objc_opt_self();
  v82 = [v81 daemonUserDefaults];
  v83 = swift_allocObject();
  swift_weakInit();
  v152 = sub_10073E66C;
  v153 = v83;
  aBlock = _NSConcreteStackBlock;
  v149 = 1107296256;
  v150 = sub_1007307E8;
  v151 = &unk_1008FD910;
  v84 = _Block_copy(&aBlock);

  v85 = [v82 streamTodayNotificationFireTime:v84];
  _Block_release(v84);

  *(v1 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_todayNotificationTimeObserver) = v85;
  swift_unknownObjectRelease();
  v86 = v1[6];
  v87 = swift_getObjectType();
  v88 = swift_allocObject();
  swift_weakInit();
  v89 = *(v86 + 16);

  v89(sub_10073E674, v88, v87, v86);

  v90 = [v81 daemonUserDefaults];
  v91 = swift_allocObject();
  swift_weakInit();
  v152 = sub_10073E67C;
  v153 = v91;
  aBlock = _NSConcreteStackBlock;
  v149 = 1107296256;
  v150 = sub_10073150C;
  v151 = &unk_1008FD938;
  v92 = _Block_copy(&aBlock);

  v93 = [v90 streamShouldIncludeRemindersDueTodayInBadgeCount:v92];
  _Block_release(v92);

  *(v1 + OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_badgeCountCriteriaObserver) = v93;
  swift_unknownObjectRelease();
  v94 = v1[9];
  sub_1000F5104(&unk_100936FD0, &unk_100795D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  v96 = [objc_opt_self() cdEntityName];
  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v99 = v98;

  *(inited + 32) = v97;
  *(inited + 40) = v99;
  v100 = sub_10038D894(inited);
  swift_setDeallocating();
  sub_100034610(inited + 32);
  v101 = swift_allocObject();
  swift_weakInit();

  v102 = v134;
  UUID.init()();
  v103 = v133;
  sub_100026CD8(v102, v133, type metadata accessor for RDStoreControllerNotificationCenter.Token);
  v104 = v140;
  *(v103 + *(v140 + 20)) = v100;
  v105 = v135;
  *(v103 + *(v104 + 24)) = v135;
  v106 = (v103 + *(v104 + 28));
  *v106 = sub_10073E684;
  v106[1] = v101;
  v107 = *(v94 + 40);
  v108 = v105;

  os_unfair_lock_lock(v107);
  sub_100026CD8(v103, v147, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  swift_beginAccess();
  v109 = *(v94 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v94 + 48) = v109;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v109 = sub_100365714(0, *v109->clientIdentity + 1, 1, v109);
    *(v94 + 48) = v109;
  }

  v111 = v128;
  v113 = *v109->clientIdentity;
  v112 = *&v109->clientIdentity[8];
  if (v113 >= v112 >> 1)
  {
    v109 = sub_100365714((v112 > 1), v113 + 1, 1, v109);
  }

  *v109->clientIdentity = v113 + 1;
  sub_10014D83C(v147, v109 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v113, type metadata accessor for RDStoreControllerNotificationCenter.Observer);
  *(v94 + 48) = v109;
  swift_endAccess();
  os_unfair_lock_unlock(v107);
  v100, v114, v115, v116, v117, v118, v119, v120;

  sub_10014D8C4(v133, type metadata accessor for RDStoreControllerNotificationCenter.Observer);

  v121 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v122 = v134;
  (*(*(v121 - 8) + 56))(v134, 0, 1, v121);
  v123 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_storeControllerObservationToken;
  swift_beginAccess();
  sub_100117A3C(v122, v1 + v123, &qword_100942CA0, &qword_1007A3810);
  swift_endAccess();
  v124 = swift_allocObject();
  *(v124 + 16) = v129;
  *v111 = v108;
  v125 = v146;
  v142(v111, v143, v146);
  swift_unknownObjectRetain();
  v126 = _dispatchPreconditionTest(_:)();
  v141(v111, v125);
  if (v126)
  {
    v127 = swift_allocObject();
    *(v127 + 16) = sub_10073E68C;
    *(v127 + 24) = v124;

    sub_100739E7C(sub_10073E6B0, v127);
    swift_unknownObjectRelease();

    sub_1000050A4(v131, &unk_100938850, qword_100795AE0);
    sub_10000607C(&v155);
  }

  else
  {
    __break(1u);
  }
}

void sub_10072FD84(uint64_t a1)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_100950F70);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "todayNotification XPC Event triggered", v11, 2u);
    }

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "os_transaction INIT {name: com.apple.remindd.todayEngine.bannerTimeEventStream}", v14, 2u);
    }

    v15 = os_transaction_create();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v17 = *(v7 + 16);
    *v5 = v17;
    (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
    swift_unknownObjectRetain();
    v18 = v17;
    LOBYTE(v17) = _dispatchPreconditionTest(_:)();
    (*(v2 + 8))(v5, v1);
    if (v17)
    {
      v19 = swift_allocObject();
      v19[2] = v7;
      v19[3] = sub_10073E914;
      v19[4] = v16;

      sub_100732288(sub_10073EA08, v19);

      swift_unknownObjectRelease();

      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_1009367B8 != -1)
  {
LABEL_15:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_100950F70);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Received RDTimeEventHandler event on deallocated RDTodayNotificationEngine", v23, 2u);
  }
}

void sub_100730144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4, v5);
  v51 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52, v7);
  v49 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = v48 - v15;
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100006654(v17, qword_100950F70);
  sub_100010364(a1, v16, &qword_10093B790, &qword_100798D88);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v48[0] = v18;
    v48[1] = a2;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315138;
    sub_100010364(v16, v12, &qword_10093B790, &qword_100798D88);
    v23 = type metadata accessor for DateComponents();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v12, 1, v23) == 1)
    {
      sub_1000050A4(v12, &qword_10093B790, &qword_100798D88);
      v25 = 0xE300000000000000;
      v26 = 7104878;
    }

    else
    {
      v26 = DateComponents.description.getter();
      v25 = v27;
      (*(v24 + 8))(v12, v23);
    }

    sub_1000050A4(v16, &qword_10093B790, &qword_100798D88);
    v28 = sub_10000668C(v26, v25, aBlock);
    v25, v29, v30, v31, v32, v33, v34, v35;
    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "streamTodayNotificationFireTime: %s", v21, 0xCu);
    sub_10000607C(v22);
  }

  else
  {

    sub_1000050A4(v16, &qword_10093B790, &qword_100798D88);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v37 = Logger.logObject.getter();
  if (Strong)
  {
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "os_transaction INIT {name: com.apple.remindd.todayEngine.todayNotificationTimeObserver}", v39, 2u);
    }

    v40 = os_transaction_create();
    v41 = swift_allocObject();
    *(v41 + 16) = Strong;
    *(v41 + 24) = v40;
    aBlock[4] = sub_10073E89C;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008FDB68;
    v42 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    v43 = v49;
    static DispatchQoS.unspecified.getter();
    v55 = &_swiftEmptyArrayStorage;
    sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    v44 = v51;
    v45 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v42);
    swift_unknownObjectRelease();
    (*(v53 + 8))(v44, v45);
    (*(v50 + 8))(v43, v52);
  }

  else
  {
    v46 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v37, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v37, v46, "Received streamTodayNotificationFireTime callback on deallocated RDTodayNotificationEngine", v47, 2u);
    }
  }
}

uint64_t sub_1007307E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = *(a1 + 32);
  if (a2)
  {
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for DateComponents();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for DateComponents();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  }

  v8(v7);

  return sub_1000050A4(v7, &qword_10093B790, &qword_100798D88);
}

void sub_100730920(uint64_t a1)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_100950F70);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "todayNotificationBadge event triggered", v11, 2u);
    }

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "os_transaction INIT {name: com.apple.remindd.todayEngine.badgeEventStream}", v14, 2u);
    }

    v15 = os_transaction_create();
    v16 = swift_allocObject();
    *(v16 + 16) = v7;
    *(v16 + 24) = v15;
    v17 = *(v7 + 16);
    *v5 = v17;
    (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);

    swift_unknownObjectRetain();
    v18 = v17;
    LOBYTE(v17) = _dispatchPreconditionTest(_:)();
    (*(v2 + 8))(v5, v1);
    if (v17)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = sub_10073E7E0;
      *(v19 + 24) = v16;

      sub_100739E7C(sub_10073EA04, v19);

      swift_unknownObjectRelease();

      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_1009367B8 != -1)
  {
LABEL_15:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_100950F70);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Received RDTimeEventHandler event on deallocated RDTodayNotificationEngine", v23, 2u);
  }
}

uint64_t sub_100730CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v16 = *(a1 + 16);
  *v14 = v16;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  swift_unknownObjectRetain();
  v17 = v16;
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v14, v10);
  if (a2)
  {
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a5;
    v19[4] = v15;

    sub_100732288(a6, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100730E74(char a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2, v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_100950F70);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    v15 = Bool.yesno.getter();
    v17 = v16;
    v18 = sub_10000668C(v15, v16, aBlock);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "includeToday: %s", v13, 0xCu);
    sub_10000607C(v14);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v27 = Logger.logObject.getter();
  if (Strong)
  {
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "os_transaction INIT {name: com.apple.remindd.todayEngine.streamBadgeCountCriteriaObserver}", v29, 2u);
    }

    v30 = os_transaction_create();
    v31 = swift_allocObject();
    *(v31 + 16) = Strong;
    *(v31 + 24) = v30;
    aBlock[4] = sub_10073E7B4;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008FDA28;
    v32 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v40 = &_swiftEmptyArrayStorage;
    sub_100054724(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    v33 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);
    swift_unknownObjectRelease();
    (*(v38 + 8))(v5, v33);
    (*(v36 + 8))(v9, v37);
  }

  else
  {
    v34 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v27, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v27, v34, "Received streamBadgeCountCriteria callback on deallocated RDTodayNotificationEngine", v35, 2u);
    }
  }
}

uint64_t sub_100731370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = *(a1 + 16);
  *v8 = v10;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  swift_unknownObjectRetain();
  v11 = v10;
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (a2)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_10073E7BC;
    *(v13 + 24) = v9;

    sub_100739E7C(sub_10073EA04, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10073150C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100731560(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100950F70);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "os_transaction INIT {name: com.apple.remindd.todayEngine.storeControllerChange}", v12, 2u);
    }

    v13 = os_transaction_create();
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v13;
    v15 = *(v8 + 16);
    *v6 = v15;
    (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);

    swift_unknownObjectRetain();
    v16 = v15;
    LOBYTE(v15) = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(v6, v2);
    if (v15)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = sub_10073E6B4;
      *(v17 + 24) = v14;

      sub_100739E7C(sub_10073EA04, v17);

      swift_unknownObjectRelease();

      return;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (qword_1009367B8 != -1)
  {
LABEL_13:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_100950F70);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Received storeController changed notification after RDTodayNotificationEngine was deallocated", v21, 2u);
  }
}

uint64_t sub_1007318B0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3, v6);
  swift_unknownObjectRetain_n();
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    sub_1007382EC();
    sub_10073E6BC(&static os_log_type_t.default.getter, "os_transaction RELEASE {name: com.apple.remindd.todayEngine.storeControllerChange}");
    return swift_unknownObjectRelease_n();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1007319FC(uint64_t a1, const char *a2)
{
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_100950F70);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 2u);
  }
}

void sub_100731AEC()
{
  v1 = v0;
  v78 = type metadata accessor for Date();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78, v2);
  v73 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v5);
  v7 = &v72 - v6;
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8, v9);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v72 - v14;
  __chkstk_darwin(v16, v17);
  v77 = &v72 - v18;
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006654(v19, qword_100950F70);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v75 = v7;
  v74 = v11;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v79[0] = v72;
    *v23 = 136315394;
    swift_beginAccess();
    sub_10000A87C(v0 + 80, v80);
    v24 = v81;
    v25 = v82;
    sub_10000F61C(v80, v81);
    v26 = v77;
    (*(v25 + 8))(v24, v25);
    sub_10000607C(v80);
    v27 = Optional.descriptionOrNil.getter();
    v29 = v28;
    sub_1000050A4(v26, &unk_100938850, qword_100795AE0);
    v30 = sub_10000668C(v27, v29, v79);
    v29, v31, v32, v33, v34, v35, v36, v37;
    *(v23 + 4) = v30;
    *(v23 + 12) = 2080;
    v38 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate;
    swift_beginAccess();
    sub_100010364(v1 + v38, v26, &unk_100938850, qword_100795AE0);
    v39 = Optional.descriptionOrNil.getter();
    v41 = v40;
    sub_1000050A4(v26, &unk_100938850, qword_100795AE0);
    v42 = sub_10000668C(v39, v41, v79);
    v41, v43, v44, v45, v46, v47, v48, v49;
    *(v23 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v20, v21, "RDTodayNotificationEngine: received RDSynchronizedDismissedTodayNotificationStates.lastDismissedDateDidChangeExternally {remoteValue: %s, localValue: %s}", v23, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  sub_10000A87C(v1 + 80, v80);
  v50 = v81;
  v51 = v82;
  sub_10000F61C(v80, v81);
  (*(v51 + 8))(v50, v51);
  v52 = v76;
  v53 = *(v76 + 48);
  if (v53(v15, 1, v78) == 1)
  {
    sub_1000050A4(v15, &unk_100938850, qword_100795AE0);
    sub_10000607C(v80);
LABEL_9:
    sub_10000A87C(v1 + 80, v80);
    v60 = v81;
    v61 = v82;
    sub_10000F61C(v80, v81);
    v62 = v77;
    (*(v61 + 8))(v60, v61);
    sub_10000607C(v80);
    v63 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate;
    swift_beginAccess();
    sub_100117A3C(v62, v1 + v63, &unk_100938850, qword_100795AE0);
LABEL_10:
    swift_endAccess();
    sub_100736F1C(0xD000000000000024, 0x8000000100800040);
    return;
  }

  v54 = *(v52 + 32);
  v55 = v75;
  v56 = v15;
  v57 = v78;
  v54(v75, v56, v78);
  sub_10000607C(v80);
  v58 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate;
  swift_beginAccess();
  v59 = v74;
  sub_100010364(v1 + v58, v74, &unk_100938850, qword_100795AE0);
  if (v53(v59, 1, v57) == 1)
  {
    (*(v52 + 8))(v55, v78);
    sub_1000050A4(v59, &unk_100938850, qword_100795AE0);
    goto LABEL_9;
  }

  v64 = v73;
  v54(v73, v59, v78);
  if (static Date.< infix(_:_:)())
  {
    v65 = v78;
    (*(v52 + 8))(v64, v78);
    v66 = v77;
    v54(v77, v55, v65);
    (*(v52 + 56))(v66, 0, 1, v65);
    swift_beginAccess();
    sub_100117A3C(v66, v1 + v58, &unk_100938850, qword_100795AE0);
    goto LABEL_10;
  }

  v67 = v77;
  v68 = v78;
  (*(v52 + 16))(v77, v64, v78);
  (*(v52 + 56))(v67, 0, 1, v68);
  swift_beginAccess();
  v69 = *(v1 + 104);
  v70 = *(v1 + 112);
  sub_10000C9DC(v1 + 80, v69);
  (*(v70 + 16))(v67, v69, v70);
  swift_endAccess();
  v71 = *(v52 + 8);
  v71(v64, v68);
  v71(v55, v68);
}

uint64_t sub_100732288(uint64_t (*a1)(void), void *a2)
{
  v480 = a2;
  v483 = a1;
  v452 = type metadata accessor for RDUserNotificationType();
  v451 = *(v452 - 8);
  __chkstk_darwin(v452, v3);
  v450 = &v439 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v453 = type metadata accessor for RDUserNotificationCategory();
  v449 = *(v453 - 8);
  __chkstk_darwin(v453, v5);
  v446 = &v439 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v444 = v6;
  __chkstk_darwin(v7, v8);
  v10 = (&v439 - v9);
  v473 = sub_1000F5104(&qword_1009431C0, &qword_10079D3E0);
  v487 = *(v473 - 8);
  __chkstk_darwin(v473, v11);
  v442 = &v439 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = (&v439 - v15);
  __chkstk_darwin(v17, v18);
  v472 = (&v439 - v19);
  __chkstk_darwin(v20, v21);
  v475 = &v439 - v22;
  __chkstk_darwin(v23, v24);
  v467 = (&v439 - v25);
  v486 = type metadata accessor for REMRemindersListDataView.DatesModel.Group();
  v489 = *&v486[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v486, v26);
  v490 = &v439 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v485 = &v439 - v30;
  v465 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v479 = *(v465 - 8);
  __chkstk_darwin(v465, v31);
  v464 = (&v439 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v478 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v481 = *(v478 - 1);
  __chkstk_darwin(v478, v33);
  v471 = &v439 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v477 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v476 = *(v477 - 8);
  __chkstk_darwin(v477, v35);
  v470 = &v439 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v457 = sub_1000F5104(&unk_1009511F0, &unk_1007B7450);
  v456 = *(v457 - 8);
  __chkstk_darwin(v457, v37);
  v466 = &v439 - v38;
  v454 = type metadata accessor for REMRemindersListDataView.DatesModel();
  v455 = *(v454 - 8);
  __chkstk_darwin(v454, v39);
  v460 = &v439 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v41 - 8, v42);
  v44 = (&v439 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v45, v46);
  v48 = &v439 - v47;
  __chkstk_darwin(v49, v50);
  v52 = &v439 - v51;
  v491 = type metadata accessor for Date();
  v488 = *(v491 - 8);
  __chkstk_darwin(v491, v53);
  v463 = &v439 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55, v56);
  v462 = &v439 - v57;
  __chkstk_darwin(v58, v59);
  v445 = &v439 - v60;
  __chkstk_darwin(v61, v62);
  v461 = &v439 - v63;
  __chkstk_darwin(v64, v65);
  v459 = &v439 - v66;
  __chkstk_darwin(v67, v68);
  v458 = &v439 - v69;
  __chkstk_darwin(v70, v71);
  v468 = &v439 - v72;
  __chkstk_darwin(v73, v74);
  v482 = &v439 - v75;
  v447 = v76;
  __chkstk_darwin(v77, v78);
  v492 = &v439 - v79;
  v80 = type metadata accessor for DispatchPredicate();
  v81 = *(v80 - 8);
  v83 = __chkstk_darwin(v80, v82);
  v85 = (&v439 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  v474 = v2;
  v86 = *(v2 + 16);
  *v85 = v86;
  (*(v81 + 104))(v85, enum case for DispatchPredicate.onQueue(_:), v80, v83);
  v87 = v86;
  LOBYTE(v86) = _dispatchPreconditionTest(_:)();
  (*(v81 + 8))(v85, v80);
  if ((v86 & 1) == 0)
  {
    goto LABEL_97;
  }

  v443 = v87;
  if (qword_1009367B8 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v448 = v10;
    v88 = type metadata accessor for Logger();
    v484 = sub_100006654(v88, qword_100950F70);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();
    v91 = os_log_type_enabled(v89, v90);
    v92 = v491;
    if (v91)
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v89, v90, "RDTodayNotificationEngine: started postTodayNotificationIfApplicable", v93, 2u);
    }

    v94 = v492;
    static Date.now.getter();
    v95 = v488;
    v96 = v488 + 16;
    v469 = *(v488 + 16);
    v469(v48, v94, v92);
    (*(v95 + 56))(v48, 0, 1, v92);
    sub_100734AD8(v48, v52);
    sub_1000050A4(v48, &unk_100938850, qword_100795AE0);
    v97 = *(v95 + 48);
    if (v97(v52, 1, v92) == 1)
    {
      sub_1000050A4(v52, &unk_100938850, qword_100795AE0);
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&_mh_execute_header, v98, v99, "Skipping postTodayNotificationIfApplicable because user has disabled today notification or there was error getting lastTodayNotificationFireDate", v100, 2u);
      }

      result = (*(v95 + 8))(v94, v92);
      if (v483)
      {
        return v483(0);
      }

      return result;
    }

    v440 = v16;
    v441 = v96;
    v102 = *(v95 + 32);
    v103 = v482;
    v102(v482, v52, v92);
    v104 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate;
    v105 = v474;
    swift_beginAccess();
    v106 = v105 + v104;
    v107 = v105;
    sub_100010364(v106, v44, &unk_100938850, qword_100795AE0);
    if (v97(v44, 1, v92) == 1)
    {
      v458 = v102;
      v459 = (v95 + 32);
      sub_1000050A4(v44, &unk_100938850, qword_100795AE0);
      v10 = v492;
      v108 = v481;
    }

    else
    {
      v109 = v468;
      v102(v468, v44, v92);
      v110 = static Date.< infix(_:_:)();
      v108 = v481;
      if (v110)
      {
        v111 = v458;
        v112 = v469;
        v469(v458, v103, v92);
        v113 = v459;
        v112(v459, v109, v92);
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v490 = swift_slowAlloc();
          aBlock[0] = v490;
          *v116 = 136446466;
          sub_100054724(&qword_100937010, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          LODWORD(v489) = v115;
          v117 = v111;
          v118 = v113;
          v119 = dispatch thunk of CustomStringConvertible.description.getter();
          v121 = v120;
          v122 = *(v95 + 8);
          v122(v117, v491);
          v123 = sub_10000668C(v119, v121, aBlock);
          v121, v124, v125, v126, v127, v128, v129, v130;
          *(v116 + 4) = v123;
          *(v116 + 12) = 2082;
          v131 = dispatch thunk of CustomStringConvertible.description.getter();
          v133 = v132;
          v122(v118, v491);
          v134 = sub_10000668C(v131, v133, aBlock);
          v133, v135, v136, v137, v138, v139, v140, v141;
          *(v116 + 14) = v134;
          _os_log_impl(&_mh_execute_header, v114, v489, "Skipping postTodayNotificationIfApplicable because {lastTodayNotificationFireDate: %{public}s < lastDismissedDate: %{public}s}", v116, 0x16u);
          swift_arrayDestroy();

          v92 = v491;

          v122(v468, v92);
          v142 = v482;
        }

        else
        {

          v122 = *(v95 + 8);
          v122(v113, v92);
          v122(v111, v92);
          v122(v109, v92);
          v142 = v103;
        }

        v122(v142, v92);
        v205 = v483;
        result = (v122)(v492, v92);
        if (!v205)
        {
          return result;
        }

        return v205(0);
      }

      v458 = v102;
      v459 = (v95 + 32);
      (*(v95 + 8))(v109, v92);
      v10 = v492;
    }

    Date.timeIntervalSince(_:)();
    v144 = v143;
    sub_1000060C8(0, &qword_100945E60, NSDateInterval_ptr);
    static NSDateInterval.rem1Minute.getter();
    v44 = v486;
    v48 = v485;
    v146 = v479;
    v147 = v477;
    v148 = v476;
    if (v144 >= v145)
    {
      v173 = v145;
      v174 = v462;
      v175 = v469;
      v469(v462, v103, v92);
      v176 = v463;
      v175(v463, v10, v92);
      v177 = Logger.logObject.getter();
      v178 = v103;
      v179 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v177, v179))
      {
        v180 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v180 = 134349570;
        *(v180 + 4) = v173;
        *(v180 + 12) = 2082;
        v181 = Date.description.getter();
        v183 = v182;
        v184 = *(v488 + 8);
        v184(v174, v491);
        v185 = sub_10000668C(v181, v183, aBlock);
        v183, v186, v187, v188, v189, v190, v191, v192;
        *(v180 + 14) = v185;
        *(v180 + 22) = 2082;
        v193 = Date.description.getter();
        v195 = v194;
        v184(v176, v491);
        v196 = sub_10000668C(v193, v195, aBlock);
        v197 = v195;
        v10 = v492;
        v197, v198, v199, v200, v201, v202, v203, v204;
        *(v180 + 24) = v196;
        _os_log_impl(&_mh_execute_header, v177, v179, "Current time is >%{public}fs after desired fire time. Not firing Today Notification {lastFireDate: %{public}s, now: %{public}s}", v180, 0x20u);
        swift_arrayDestroy();
        v92 = v491;

        v184(v482, v92);
      }

      else
      {

        v184 = *(v488 + 8);
        v184(v176, v92);
        v184(v174, v92);
        v184(v178, v92);
      }

      v205 = v483;
      result = (v184)(v10, v92);
      if (!v205)
      {
        return result;
      }

      return v205(0);
    }

    v149 = *(v107 + 120);
    v150 = v478;
    v151 = objc_allocWithZone(REMStore);
    v462 = v149;
    v468 = [v151 initWithDaemonController:v149];
    (*(v148 + 104))(v470, enum case for REMRemindersListDataView.SortingStyle.default(_:), v147);
    v108[13](v471, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v150);
    v152 = *(v146 + 104);
    v16 = v464;
    v153 = v465;
    v152(v464, enum case for REMRemindersListDataView.RemindersPrefetch.none(_:), v465);
    v154 = v481;
    static REMRemindersListDataView.fetchScheduled(store:sortingStyle:showCompleted:countCompleted:remindersPrefetch:alwaysIncludeTodayGroup:diffingAgainst:)();
    v463 = 0;
    (*(v479 + 8))(v16, v153);
    v154[1](v471, v478);
    (*(v476 + 8))(v470, v477);
    v208 = v457;
    v209 = v466;
    REMRemindersListDataView.Result.model.getter();
    (*(v456 + 8))(v209, v208);
    v210 = REMRemindersListDataView.DatesModel.groups.getter();
    v218 = v210;
    v481 = *(v210 + 16);
    if (!v481)
    {
      break;
    }

    v52 = 0;
    v479 = v489 + 16;
    v219 = (v489 + 32);
    v478 = (v489 + 8);
    v220 = &_swiftEmptyArrayStorage;
    while (v52 < *(v218 + 16))
    {
      v16 = ((*(v489 + 80) + 32) & ~*(v489 + 80));
      v221 = *(v489 + 72);
      (*(v489 + 16))(v48, v16 + v218 + v221 * v52, v44);
      v222 = REMRemindersListDataView.DatesModel.Group.reminders.getter();
      v223 = *(v222 + 16);
      v222, v224, v225, v226, v227, v228, v229, v230;
      if (v223)
      {
        v231 = *v219;
        (*v219)(v490, v48, v44);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v220;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100253DE0(0, *v220->clientIdentity + 1, 1);
          v220 = aBlock[0];
        }

        v234 = *v220->clientIdentity;
        v233 = *&v220->clientIdentity[8];
        if (v234 >= v233 >> 1)
        {
          sub_100253DE0((v233 > 1), v234 + 1, 1);
          v220 = aBlock[0];
        }

        *v220->clientIdentity = v234 + 1;
        v44 = v486;
        v231(v16 + v220 + v234 * v221, v490, v486);
        v48 = v485;
      }

      else
      {
        (*v478)(v48, v44);
      }

      ++v52;
      v10 = v492;
      if (v481 == v52)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    swift_once();
  }

  v220 = &_swiftEmptyArrayStorage;
LABEL_45:
  v218, v211, v212, v213, v214, v215, v216, v217;
  sub_10072E1A8(v220);
  v236 = v235;

  v237 = v10;
  if (v236 >> 62)
  {
    goto LABEL_101;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v238 = v236;
  while (1)
  {
    v239 = v468;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v238, v241, v242, v243, v244, v245, v246, v247;
    aBlock[0] = 0;
    v248 = [v239 fetchRemindersWithObjectIDs:isa error:aBlock];

    v249 = aBlock[0];
    if (!v248)
    {
      v290 = aBlock[0];
      v236, v291, v292, v293, v294, v295, v296, v297;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v455 + 8))(v460, v454);
      v172 = v491;
      v171 = v237;
      swift_errorRetain();
      v155 = Logger.logObject.getter();
      v156 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v158 = v237;
        v159 = swift_slowAlloc();
        aBlock[0] = v159;
        *v157 = 136315138;
        swift_getErrorValue();
        v160 = Error.localizedDescription.getter();
        v162 = v161;
        v163 = sub_10000668C(v160, v161, aBlock);
        v162, v164, v165, v166, v167, v168, v169, v170;
        *(v157 + 4) = v163;
        _os_log_impl(&_mh_execute_header, v155, v156, "Unable to fetch REMTodayDataView. Not posting any todayNotification. {error: %s}", v157, 0xCu);
        sub_10000607C(v159);
        v171 = v158;

        v172 = v491;
      }

      else
      {
      }

      v206 = *(v488 + 8);
      v206(v482, v172);
      v207 = v483;
      goto LABEL_27;
    }

    sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
    sub_10000CDE4(&qword_1009391F0, &qword_1009391E0, REMObjectID_ptr, &protocol conformance descriptor for NSObject);
    v250 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v251 = v249;

    __chkstk_darwin(v252, v253);
    v486 = v250;
    *(&v439 - 2) = v250;
    *(&v439 - 1) = v237;
    v489 = v236;
    v261 = sub_1003E0578(sub_10073E4DC, (&v439 - 4), v236);
    v262 = *v261->clientIdentity;
    v263 = &_swiftEmptyArrayStorage;
    v490 = v262;
    if (!v262)
    {
      break;
    }

    v264 = 0;
    v237 = &qword_10079D3E0;
    v265 = v467;
    while (v264 < *v261->clientIdentity)
    {
      v266 = (*(v487 + 80) + 32) & ~*(v487 + 80);
      v267 = *(v487 + 9);
      sub_100010364(v261 + v266 + v267 * v264, v265, &qword_1009431C0, &qword_10079D3E0);
      v268 = [*v265 displayDate];
      if (v268 && (v269 = v268, v236 = [v268 isAllDay], v269, v262 = v490, v236))
      {
        sub_100031B58(v265, v475, &qword_1009431C0, &qword_10079D3E0);
        v270 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v263;
        if ((v270 & 1) == 0)
        {
          sub_100253DA0(0, *v263->clientIdentity + 1, 1);
          v262 = v490;
          v263 = aBlock[0];
        }

        v272 = *v263->clientIdentity;
        v271 = *&v263->clientIdentity[8];
        v236 = v272 + 1;
        if (v272 >= v271 >> 1)
        {
          sub_100253DA0((v271 > 1), v272 + 1, 1);
          v262 = v490;
          v263 = aBlock[0];
        }

        *v263->clientIdentity = v236;
        sub_100031B58(v475, v263 + v266 + v272 * v267, &qword_1009431C0, &qword_10079D3E0);
        v265 = v467;
      }

      else
      {
        sub_1000050A4(v265, &qword_1009431C0, &qword_10079D3E0);
      }

      if (v262 == ++v264)
      {
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

    v238 = _bridgeCocoaArray<A>(_:)();
    v236, v432, v433, v434, v435, v436, v437, v438;
  }

LABEL_60:
  v486, v254, v255, v256, v257, v258, v259, v260;
  v489, v273, v274, v275, v276, v277, v278, v279;

  v280 = Logger.logObject.getter();
  v281 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v280, v281))
  {
    v282 = swift_slowAlloc();
    *v282 = 134217984;
    *(v282 + 4) = *v263->clientIdentity;

    _os_log_impl(&_mh_execute_header, v280, v281, "REMRemindersListDataView.fetchScheduled up to now fetched AllDay reminders. {count: %ld}", v282, 0xCu);
  }

  else
  {
  }

  v172 = v491;
  v237 = *v263->clientIdentity;
  if (v237)
  {
    v236 = 0;
    v298 = v472;
    do
    {
      if (v237 == v236)
      {

        v261, v365, v366, v367, v368, v369, v370, v371;
        v361 = Logger.logObject.getter();
        v362 = static os_log_type_t.default.getter();
        v372 = os_log_type_enabled(v361, v362);
        v172 = v491;
        if (!v372)
        {
          goto LABEL_82;
        }

        v363 = swift_slowAlloc();
        *v363 = 0;
        v364 = "No all-day reminder whose lastBannerPresentationDate is before their own dueDate (at TodayNotificationFireTime). Not posting TodayNotification.";
        goto LABEL_81;
      }

      if (v236 >= *v263->clientIdentity)
      {
        goto LABEL_100;
      }

      v299 = (*(v487 + 80) + 32) & ~*(v487 + 80);
      v300 = *(v487 + 9);
      sub_100010364(v263 + v299 + v300 * v236++, v298, &qword_1009431C0, &qword_10079D3E0);
      v301 = sub_100735900(*v298, v298 + *(v473 + 48), v492);
      sub_1000050A4(v298, &qword_1009431C0, &qword_10079D3E0);
    }

    while ((v301 & 1) == 0);
    v489 = v300;
    if (v490)
    {
      v309 = *v261->clientIdentity;
      if (v490 > v309)
      {
        __break(1u);
      }

      v310 = v440;
      sub_100010364(v261 + v299 + v489 * (v490 - 1), v440, &qword_1009431C0, &qword_10079D3E0);
      v261, v311, v312, v313, v314, v315, v316, v317;
      v318 = *v310;
      v319 = *(v488 + 8);
      v320 = v310 + *(v473 + 48);
      v490 = (v488 + 8);
      v487 = v319;
      v319(v320, v491);
      v321 = [v318 titleAsString];
      if (!v321)
      {
        v321 = _REMGetLocalizedString();
      }

      v322 = v321;
      v323 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v325 = v324;

      v326 = _REMGetLocalizedString();
      if (!v326)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v328 = v327;
        v326 = String._bridgeToObjectiveC()();
        v328, v329, v330, v331, v332, v333, v334, v335;
      }

      v336 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v484 = v318;
      v486 = v336;
      v485 = v337;
      v481 = v326;
      if (v309 < 2)
      {
        v479 = v323;
        v376 = v449;
        v358 = v448;
        v359 = v453;
        (*(v449 + 104))(v448, enum case for RDUserNotificationCategory.todayNotificationForSingleReminder(_:), v453);
        v377 = v318;
        v378 = v450;
        REMNotificationIdentifier.init(reminder:)();
        (*(v451 + 104))(v378, enum case for RDUserNotificationType.todayNotificationForSingleReminder(_:), v452);
        v379 = v377;
        v360 = sub_1002D833C(v377, 0, 0);

        v357 = v376;
      }

      else
      {
        v338 = _REMGetLocalizedString();
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v340 = v339;

        sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
        v341 = swift_allocObject();
        *(v341 + 16) = xmmword_100791340;
        *(v341 + 56) = &type metadata for String;
        v342 = sub_100006600();
        *(v341 + 32) = v323;
        *(v341 + 40) = v325;
        *(v341 + 96) = &type metadata for Int;
        *(v341 + 104) = &protocol witness table for Int;
        *(v341 + 64) = v342;
        *(v341 + 72) = v309 - 1;
        v479 = static String.localizedStringWithFormat(_:_:)();
        v325 = v343;
        v341, v343, v344, v345, v346, v347, v348, v349;
        v340, v350, v351, v352, v353, v354, v355, v356;
        v357 = v449;
        v358 = v448;
        v359 = v453;
        (*(v449 + 104))(v448, enum case for RDUserNotificationCategory.todayNotification(_:), v453);
        (*(v451 + 104))(v450, enum case for RDUserNotificationType.todayNotification(_:), v452);
        v360 = sub_1002D833C(0, 0, 0);
      }

      v380 = v444;
      v381 = v360;
      v382 = String._bridgeToObjectiveC()();
      v325, v383, v384, v385, v386, v387, v388, v389;
      [v381 setTitle:v382];

      v390 = v481;
      [v381 setBody:v481];

      v391 = Date._bridgeToObjectiveC()().super.isa;
      [v381 setDate:v391];

      v392 = v474;
      v481 = *(v474 + 56);
      v479 = RDUserNotificationCategory.rawValue.getter();
      v478 = v393;
      v394 = v446;
      (*(v357 + 16))(v446, v358, v359);
      v395 = (*(v357 + 80) + 24) & ~*(v357 + 80);
      v396 = (v380 + v395 + 7) & 0xFFFFFFFFFFFFFFF8;
      v397 = (v396 + 23) & 0xFFFFFFFFFFFFFFF8;
      v398 = swift_allocObject();
      *(v398 + 16) = v392;
      (*(v357 + 32))(v398 + v395, v394, v453);
      v399 = (v398 + v396);
      v400 = v483;
      v401 = v480;
      *v399 = v483;
      v399[1] = v401;
      v402 = (v398 + v397);
      v403 = v485;
      *v402 = v486;
      v402[1] = v403;

      sub_10014D92C(v400, v401);
      v404 = v478;
      sub_10052554C(v479, v478, v381, sub_10073E4F8, v398);

      v404, v405, v406, v407, v408, v409, v410, v411;

      v412 = objc_allocWithZone(REMStore);
      v413 = [v412 initWithDaemonController:v462];
      v414 = [objc_allocWithZone(REMSaveRequest) initWithStore:v413];
      [(RDXPCStorePerformer *)v414 setAuthor:RDTodayNotificationLastBannerPresentationDateAuthor];
      [(RDXPCStorePerformer *)v414 setUpdateLastModifiedDates:0];
      v486 = v414;
      [(RDXPCStorePerformer *)v414 setSyncToCloudKit:0];
      Date.init()();
      v415 = swift_allocObject();
      v483 = v415;
      *(v415 + 16) = &_swiftEmptyArrayStorage;
      v416 = (v415 + 16);
      v417 = *v263->clientIdentity;
      if (v417)
      {
        v480 = v413;
        v481 = v381;
        v485 = *(v473 + 48);
        v418 = v263 + v299;
        v419 = v442;
        do
        {
          sub_100010364(v418, v419, &qword_1009431C0, &qword_10079D3E0);
          v420 = *v419;
          v421 = [(RDXPCStorePerformer *)v486 updateReminder:*v419];
          v422 = Date._bridgeToObjectiveC()().super.isa;
          [v421 setLastBannerPresentationDate:v422];

          v423 = [v420 objectID];
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v416 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v416 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v424 = v491;
          v487(&v485[v419], v491);
          v418 += v489;
          --v417;
        }

        while (v417);

        v381 = v481;
        v413 = v480;
      }

      else
      {

        v424 = v491;
      }

      v425 = v445;
      v426 = v461;
      v469(v445, v461, v424);
      v427 = (*(v488 + 80) + 24) & ~*(v488 + 80);
      v428 = swift_allocObject();
      v428[2] = v483;
      (v458)(v428 + v427, v425, v424);
      aBlock[4] = sub_10073E5AC;
      aBlock[5] = v428;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100042968;
      aBlock[3] = &unk_1008FD8C0;
      v429 = _Block_copy(aBlock);

      v430 = v486;
      [(RDXPCStorePerformer *)v486 saveWithQueue:v443 completion:v429];
      _Block_release(v429);

      v431 = v487;
      v487(v426, v424);
      (*(v451 + 8))(v450, v452);
      (*(v449 + 8))(v448, v453);
      (*(v455 + 8))(v460, v454);
      v431(v482, v424);

      return (v431)(v492, v424);
    }

    v261, v302, v303, v304, v305, v306, v307, v308;

    v373 = Logger.logObject.getter();
    v374 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v373, v374))
    {
      v375 = swift_slowAlloc();
      *v375 = 0;
      _os_log_impl(&_mh_execute_header, v373, v374, "No reminderIDs found in Today smart list. Not posting TodayNotification.", v375, 2u);
    }

    (*(v455 + 8))(v460, v454);
    v206 = *(v488 + 8);
    v172 = v491;
    v206(v482, v491);
  }

  else
  {
    v261, v283, v284, v285, v286, v287, v288, v289;

    v361 = Logger.logObject.getter();
    v362 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v361, v362))
    {
      v363 = swift_slowAlloc();
      *v363 = 0;
      v364 = "No reminders in Today view. Not showing today notification.";
LABEL_81:
      _os_log_impl(&_mh_execute_header, v361, v362, v364, v363, 2u);
    }

LABEL_82:

    (*(v455 + 8))(v460, v454);
    v206 = *(v488 + 8);
    v206(v482, v172);
  }

  v207 = v483;
  v171 = v492;
LABEL_27:
  result = (v206)(v171, v172);
  if (v207)
  {
    return v207(0);
  }

  return result;
}

uint64_t sub_100734AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a1;
  v129 = a2;
  v125 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v123 = *(v125 - 8);
  __chkstk_darwin(v125, v3);
  v124 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for Calendar.SearchDirection();
  v120 = *(v122 - 8);
  __chkstk_darwin(v122, v5);
  v121 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for Calendar.MatchingPolicy();
  v118 = *(v128 - 8);
  __chkstk_darwin(v128, v7);
  v9 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v131 = *(v10 - 8);
  v132 = v10;
  __chkstk_darwin(v10, v11);
  v13 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for Calendar();
  v117 = *(v119 - 8);
  __chkstk_darwin(v119, v14);
  v16 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v114, v17);
  v116 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v22 = &v109 - v21;
  __chkstk_darwin(v23, v24);
  v127 = &v109 - v25;
  v26 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  __chkstk_darwin(v26 - 8, v27);
  v29 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31);
  v33 = &v109 - v32;
  v34 = type metadata accessor for DateComponents();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34, v36);
  v115 = &v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38, v39);
  v130 = &v109 - v40;
  v41 = [objc_opt_self() daemonUserDefaults];
  v42 = [v41 todayNotificationFireTime];

  if (v42)
  {
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v35 + 56))(v29, 0, 1, v34);
  }

  else
  {
    (*(v35 + 56))(v29, 1, 1, v34);
  }

  sub_100031B58(v29, v33, &qword_10093B790, &qword_100798D88);
  v43 = (*(v35 + 48))(v33, 1, v34);
  v44 = v131;
  if (v43 == 1)
  {
    sub_1000050A4(v33, &qword_10093B790, &qword_100798D88);
    v45 = v132;
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100006654(v46, qword_100950F70);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "DateUtils.lastTodayNotificationFireDate: Early return because user has disabled today notifications.", v49, 2u);
    }
  }

  else
  {
    v112 = v35;
    v52 = *(v35 + 32);
    v113 = v34;
    v52(v130, v33, v34);
    v109 = v16;
    static Calendar.current.getter();
    sub_100010364(v126, v22, &unk_100938850, qword_100795AE0);
    v53 = *(v44 + 48);
    v54 = v132;
    v55 = v53(v22, 1, v132);
    v111 = v44 + 48;
    v110 = v53;
    if (v55 == 1)
    {
      static Date.now.getter();
      v56 = v13;
      if (v53(v22, 1, v54) != 1)
      {
        sub_1000050A4(v22, &unk_100938850, qword_100795AE0);
      }
    }

    else
    {
      (*(v44 + 32))(v13, v22, v54);
      v56 = v13;
    }

    v57 = v118;
    v58 = v9;
    (*(v118 + 104))(v9, enum case for Calendar.MatchingPolicy.nextTime(_:), v128);
    v60 = v120;
    v59 = v121;
    v61 = v122;
    (*(v120 + 104))(v121, enum case for Calendar.SearchDirection.backward(_:), v122);
    v63 = v123;
    v62 = v124;
    v64 = v125;
    (*(v123 + 104))(v124, enum case for Calendar.RepeatedTimePolicy.first(_:), v125);
    v65 = v109;
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    (*(v63 + 8))(v62, v64);
    (*(v60 + 8))(v59, v61);
    (*(v57 + 8))(v58, v128);
    v44 = v131;
    v66 = v56;
    v45 = v132;
    (*(v131 + 8))(v66, v132);
    v67 = v65;
    v68 = v127;
    (*(v117 + 8))(v67, v119);
    if (v110(v68, 1, v45) != 1)
    {
      (*(v112 + 8))(v130, v113);
      v106 = v129;
      (*(v44 + 32))(v129, v68, v45);
      v51 = v106;
      v50 = 0;
      return (*(v44 + 56))(v51, v50, 1, v45);
    }

    v69 = v130;
    sub_1000050A4(v68, &unk_100938850, qword_100795AE0);
    v70 = v113;
    v71 = v112;
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_100006654(v72, qword_100950F70);
    v73 = v115;
    (*(v71 + 16))(v115, v69, v70);
    v74 = v116;
    sub_100010364(v126, v116, &unk_100938850, qword_100795AE0);
    v75 = v70;
    v76 = v71;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = v74;
      v80 = swift_slowAlloc();
      v133[0] = swift_slowAlloc();
      *v80 = 136446466;
      LODWORD(v128) = v78;
      v81 = v75;
      v82 = DateComponents.description.getter();
      v84 = v83;
      v85 = *(v76 + 8);
      v85(v73, v81);
      v86 = sub_10000668C(v82, v84, v133);
      v84, v87, v88, v89, v90, v91, v92, v93;
      *(v80 + 4) = v86;
      *(v80 + 12) = 2082;
      v94 = Optional.descriptionOrNil.getter();
      v96 = v95;
      sub_1000050A4(v79, &unk_100938850, qword_100795AE0);
      v97 = sub_10000668C(v94, v96, v133);
      v98 = v96;
      v44 = v131;
      v98, v99, v100, v101, v102, v103, v104, v105;
      *(v80 + 14) = v97;
      _os_log_impl(&_mh_execute_header, v77, v128, "DateUtils.lastTodayNotificationFireDate: Unable to find last fire date. {todayNotificationFireTime: %{public}s, referenceDate: %{public}s}", v80, 0x16u);
      swift_arrayDestroy();
      v45 = v132;

      v85(v130, v81);
    }

    else
    {

      sub_1000050A4(v74, &unk_100938850, qword_100795AE0);
      v108 = *(v76 + 8);
      v108(v73, v75);
      v108(v69, v75);
    }
  }

  v50 = 1;
  v51 = v129;
  return (*(v44 + 56))(v51, v50, 1, v45);
}

uint64_t sub_100735644@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v27 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100353844(*a1, a2);
  if (v18)
  {
    v19 = v18;
    v27[1] = v4;
    v20 = [v18 assignmentContext];
    v21 = [v20 currentAssignment];

    if (v21 && (v21, (sub_1005815C8(0) & 1) == 0))
    {
    }

    else
    {
      sub_1004F25C4(v19, a3, v12);
      if ((*(v14 + 48))(v12, 1, v13) != 1)
      {
        v22 = *(v14 + 32);
        v22(v17, v12, v13);
        v23 = sub_1000F5104(&qword_1009431C0, &qword_10079D3E0);
        v24 = *(v23 + 48);
        *a4 = v19;
        v22(&a4[v24], v17, v13);
        return (*(*(v23 - 8) + 56))(a4, 0, 1, v23);
      }

      sub_1000050A4(v12, &unk_100938850, qword_100795AE0);
    }
  }

  v26 = sub_1000F5104(&qword_1009431C0, &qword_10079D3E0);
  return (*(*(v26 - 8) + 56))(a4, 1, 1, v26);
}

uint64_t sub_100735900(void *a1, _BYTE *a2, _BYTE *a3)
{
  v94 = a3;
  v96 = a2;
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v89[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v89[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13, v14);
  v16 = &v89[-v15];
  __chkstk_darwin(v17, v18);
  v20 = &v89[-v19];
  __chkstk_darwin(v21, v22);
  v24 = &v89[-v23];
  *&v27 = __chkstk_darwin(v25, v26).n128_u64[0];
  v29 = &v89[-v28];
  v30 = [a1 lastBannerPresentationDate];
  v95 = v29;
  if (v30)
  {
    v31 = v30;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v93 = a1;
    v32 = v20;
    v33 = v16;
    v34 = v12;
    v35 = *(v9 + 32);
    v35(v7, v24, v8);
    v36 = v9;
    (*(v9 + 56))(v7, 0, 1, v8);
    v37 = v8;
    v35(v29, v7, v8);
    v12 = v34;
    v16 = v33;
    v20 = v32;
    a1 = v93;
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    static Date.distantPast.getter();
    v36 = v9;
    v38 = *(v9 + 48);
    v37 = v8;
    if (v38(v7, 1, v8) != 1)
    {
      sub_1000050A4(v7, &unk_100938850, qword_100795AE0);
    }
  }

  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100006654(v39, qword_100950F70);
  v40 = v36;
  v41 = *(v36 + 16);
  v42 = v37;
  v41(v20, v95, v37);
  v41(v16, v96, v37);
  v41(v12, v94, v37);
  v43 = a1;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  v46 = v12;
  if (os_log_type_enabled(v44, v45))
  {
    v47 = swift_slowAlloc();
    v92 = v44;
    v48 = v47;
    v49 = swift_slowAlloc();
    v91 = v49;
    v93 = swift_slowAlloc();
    v97 = v93;
    *v48 = 138544130;
    v50 = [v43 objectID];
    *(v48 + 4) = v50;
    *v49 = v50;
    *(v48 + 12) = 2082;
    v90 = v45;
    v51 = Date.description.getter();
    v53 = v52;
    v54 = *(v40 + 8);
    v54(v20, v42);
    v55 = sub_10000668C(v51, v53, &v97);
    v53, v56, v57, v58, v59, v60, v61, v62;
    *(v48 + 14) = v55;
    *(v48 + 22) = 2082;
    v63 = Date.description.getter();
    v65 = v64;
    v54(v16, v42);
    v66 = sub_10000668C(v63, v65, &v97);
    v65, v67, v68, v69, v70, v71, v72, v73;
    *(v48 + 24) = v66;
    *(v48 + 32) = 2082;
    v74 = Date.description.getter();
    v76 = v75;
    v54(v46, v42);
    v77 = v95;
    v78 = sub_10000668C(v74, v76, &v97);
    v76, v79, v80, v81, v82, v83, v84, v85;
    *(v48 + 34) = v78;
    v86 = v92;
    _os_log_impl(&_mh_execute_header, v92, v90, "Evaluating whether to trigger TodayNotification {reminderID: %{public}@, lastPresentationTime: %{public}s, fireDate: %{public}s, now: %{public}s}", v48, 0x2Au);
    sub_1000050A4(v91, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  else
  {

    v54 = *(v40 + 8);
    v54(v46, v37);
    v54(v16, v37);
    v54(v20, v37);
    v77 = v95;
  }

  if (static Date.< infix(_:_:)())
  {
    v87 = static Date.< infix(_:_:)();
  }

  else
  {
    v87 = 0;
  }

  v54(v77, v42);
  return v87 & 1;
}

void sub_100735F18(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, _TtC7remindd19RDXPCStorePerformer *a7)
{
  v148 = a7;
  v146 = a6;
  v157 = a5;
  v158 = a4;
  v159 = a3;
  v9 = type metadata accessor for DateComponents();
  v155 = *(v9 - 8);
  v156 = v9;
  __chkstk_darwin(v9, v10);
  v154 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for TimeZone();
  v152 = *(v153 - 8);
  __chkstk_darwin(v153, v12);
  v151 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for Date();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150, v14);
  v16 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RDUserNotificationCategory();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  v147 = &v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v24 = &v140 - v23;
  __chkstk_darwin(v25, v26);
  v28 = &v140 - v27;
  v29 = type metadata accessor for DispatchPredicate();
  v30 = *(v29 - 8);
  v32 = __chkstk_darwin(v29, v31);
  v34 = (&v140 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(a2 + 16);
  *v34 = v35;
  (*(v30 + 104))(v34, enum case for DispatchPredicate.onQueue(_:), v29, v32);
  v36 = v35;
  LOBYTE(v35) = _dispatchPreconditionTest(_:)();
  (*(v30 + 8))(v34, v29);
  if ((v35 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_4:
    v37 = type metadata accessor for Logger();
    sub_100006654(v37, qword_100950F70);
    v38 = v18;
    (*(v18 + 16))(v28, v159, v34);
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      *v41 = 136446466;
      v42 = RDUserNotificationCategory.rawValue.getter();
      v44 = v43;
      (*(v38 + 8))(v28, v34);
      v45 = sub_10000668C(v42, v44, &v160);
      v44, v46, v47, v48, v49, v50, v51, v52;
      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      swift_getErrorValue();
      v53 = Error.rem_errorDescription.getter();
      v55 = v54;
      v56 = sub_10000668C(v53, v54, &v160);
      v55, v57, v58, v59, v60, v61, v62, v63;
      *(v41 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v39, v40, "RDTodayNotificationEngine: Unable to post Today notification {category: %{public}s, error: %{public}s}", v41, 0x16u);
      swift_arrayDestroy();

      v64 = v158;
      if (!v158)
      {
        goto LABEL_13;
      }
    }

    else
    {

      (*(v18 + 8))(v28, v34);
      v64 = v158;
      if (!v158)
      {
LABEL_13:

        return;
      }
    }

    v64(0);
    goto LABEL_13;
  }

  if (a1)
  {
    swift_errorRetain();
    v34 = v17;
    if (qword_1009367B8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  v65 = v17;
  if (qword_1009367B8 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  v67 = sub_100006654(v66, qword_100950F70);
  v68 = v18;
  v69 = *(v18 + 16);
  v145 = v18 + 16;
  v144 = v69;
  v69(v24, v159, v17);
  v70 = v148;

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  v70, v73, v74, v75, v76, v77, v78, v79;
  v80 = os_log_type_enabled(v71, v72);
  v143 = v68;
  if (v80)
  {
    v81 = swift_slowAlloc();
    v142 = v67;
    v82 = v81;
    v141 = swift_slowAlloc();
    v160 = v141;
    *v82 = 136446466;
    v83 = RDUserNotificationCategory.rawValue.getter();
    v85 = v84;
    v86 = *(v68 + 8);
    v86(v24, v65);
    v87 = sub_10000668C(v83, v85, &v160);
    v85, v88, v89, v90, v91, v92, v93, v94;
    *(v82 + 4) = v87;
    *(v82 + 12) = 2080;
    *(v82 + 14) = sub_10000668C(v146, v70, &v160);
    _os_log_impl(&_mh_execute_header, v71, v72, "RDTodayNotificationEngine: Posted Today notification {category: %{public}s, body: %s}", v82, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v86 = *(v68 + 8);
    v86(v24, v65);
  }

  v95 = v65;
  v96 = objc_opt_self();
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v149 + 8))(v16, v150);
  v98 = v151;
  static TimeZone.current.getter();
  v99 = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v152 + 8))(v98, v153);
  v100 = [v96 rem_dateComponentsWithDate:isa timeZone:v99 isAllDay:0];

  v101 = v154;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  DateComponents.hour.getter();
  LOBYTE(v100) = v102;
  (*(v155 + 8))(v101, v156);
  if ((v100 & 1) == 0)
  {
    type metadata accessor for Analytics();
    sub_1000F5104(&unk_100939240, &unk_100798990);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    *(inited + 32) = 1701869940;
    *(inited + 40) = 0xE400000000000000;
    RDUserNotificationCategory.rawValue.getter();
    v123 = v122;
    v124 = String._bridgeToObjectiveC()();
    v123, v125, v126, v127, v128, v129, v130, v131;
    *(inited + 48) = v124;
    *(inited + 56) = 0x4872656767697274;
    *(inited + 64) = 0xEB0000000072756FLL;
    *(inited + 72) = Int._bridgeToObjectiveC()();
    v132 = sub_10038D880(inited);
    swift_setDeallocating();
    sub_1000F5104(&unk_100939250, &unk_100795D30);
    swift_arrayDestroy();
    static Analytics.postEvent(_:payload:duration:)();
    v132, v133, v134, v135, v136, v137, v138, v139;
    v120 = v158;
    if (!v158)
    {
      return;
    }

    goto LABEL_20;
  }

  v103 = v147;
  v144(v147, v159, v95);
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = v103;
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v160 = v108;
    *v107 = 136446210;
    v109 = RDUserNotificationCategory.rawValue.getter();
    v111 = v110;
    v86(v106, v95);
    v112 = sub_10000668C(v109, v111, &v160);
    v111, v113, v114, v115, v116, v117, v118, v119;
    *(v107 + 4) = v112;
    _os_log_impl(&_mh_execute_header, v104, v105, "Failed to compute current hour when posting analytics to event com.apple.reminders.notification with {category: %{public}s}", v107, 0xCu);
    sub_10000607C(v108);

    v120 = v158;
    if (!v158)
    {
      return;
    }

    goto LABEL_20;
  }

  v86(v103, v95);
  v120 = v158;
  if (v158)
  {
LABEL_20:
    v120(1);
  }
}

void sub_100736A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006654(v11, qword_100950F70);
    swift_errorRetain();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v14 = 136446466;
      swift_beginAccess();
      v15 = *(a2 + 16);
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

      v16 = Array.description.getter();
      v18 = v17;
      v15, v17, v19, v20, v21, v22, v23, v24;
      v25 = sub_10000668C(v16, v18, &v78);
      v18, v26, v27, v28, v29, v30, v31, v32;
      *(v14 + 4) = v25;
      *(v14 + 12) = 2080;
      swift_getErrorValue();
      v33 = Error.localizedDescription.getter();
      v35 = v34;
      v36 = sub_10000668C(v33, v34, &v78);
      v35, v37, v38, v39, v40, v41, v42, v43;
      *(v14 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v12, v13, "TodayNotificationEngine is unable to update lastBannerPresentationDate {reminderIDs: %{public}s, error: %s}", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1009367B8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100006654(v44, qword_100950F70);
    (*(v7 + 16))(v10, a3, v6);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v47 = 136446466;
      swift_beginAccess();
      v48 = *(a2 + 16);
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);

      v49 = Array.description.getter();
      v51 = v50;
      v48, v50, v52, v53, v54, v55, v56, v57;
      v58 = sub_10000668C(v49, v51, &v78);
      v51, v59, v60, v61, v62, v63, v64, v65;
      *(v47 + 4) = v58;
      *(v47 + 12) = 2082;
      v66 = Date.description.getter();
      v68 = v67;
      (*(v7 + 8))(v10, v6);
      v69 = sub_10000668C(v66, v68, &v78);
      v68, v70, v71, v72, v73, v74, v75, v76;
      *(v47 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v45, v46, "TodayNotificationEngine has updated lastBannerPresentationDate {reminderIDs: %{public}s, lastBannerPresentationDate: %{public}s}", v47, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

void sub_100736F1C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v3 = v2;
  v128 = a2;
  v126 = a1;
  v4 = type metadata accessor for RDUserNotificationCategory();
  v122 = *(v4 - 8);
  v123 = v4;
  __chkstk_darwin(v4, v5);
  v121 = &v114[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v114[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11, v12);
  v125 = &v114[-v13];
  __chkstk_darwin(v14, v15);
  v17 = &v114[-v16];
  v18 = type metadata accessor for Date();
  v129 = *(v18 - 8);
  __chkstk_darwin(v18, v19);
  v21 = &v114[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22, v23);
  v120 = &v114[-v24];
  __chkstk_darwin(v25, v26);
  v124 = &v114[-v27];
  __chkstk_darwin(v28, v29);
  v127 = &v114[-v30];
  v31 = type metadata accessor for DispatchPredicate();
  v32 = *(v31 - 8);
  v34 = __chkstk_darwin(v31, v33);
  v36 = &v114[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = *(v3 + 16);
  *v36 = v37;
  (*(v32 + 104))(v36, enum case for DispatchPredicate.onQueue(_:), v31, v34);
  v38 = v37;
  v39 = _dispatchPreconditionTest(_:)();
  (*(v32 + 8))(v36, v31);
  if (v39)
  {
    if (qword_1009367B8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v40 = type metadata accessor for Logger();
  sub_100006654(v40, qword_100950F70);
  v41 = v128;

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  v41, v44, v45, v46, v47, v48, v49, v50;
  if (os_log_type_enabled(v42, v43))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = v41;
    v54 = v52;
    v131[0] = v52;
    *v51 = 136446210;
    *(v51 + 4) = sub_10000668C(v126, v53, v131);
    _os_log_impl(&_mh_execute_header, v42, v43, "RDTodayNotificationEngine: started retractTodayNotificationIfApplicable {reason: %{public}s}", v51, 0xCu);
    sub_10000607C(v54);
  }

  v55 = v129;
  v56 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate;
  swift_beginAccess();
  sub_100010364(v3 + v56, v17, &unk_100938850, qword_100795AE0);
  v57 = v55[6];
  if ((v57)(v17, 1, v18) == 1)
  {
    sub_1000050A4(v17, &unk_100938850, qword_100795AE0);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
    }
  }

  else
  {
    v118 = v21;
    v119 = v3;
    v61 = v18;
    v62 = v55[4];
    v63 = v127;
    (v62)(v127, v17, v18);
    (v55[7])(v10, 1, 1, v18);
    v64 = v125;
    sub_100734AD8(v10, v125);
    sub_1000050A4(v10, &unk_100938850, qword_100795AE0);
    if ((v57)(v64, 1, v18) == 1)
    {
      sub_1000050A4(v64, &unk_100938850, qword_100795AE0);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v65, v66, "RDTodayNotificationEngine: Skipping retractTodayNotificationIfApplicable because user has disabled today notification or there was error getting lastTodayNotificationFireDate", v67, 2u);
      }

      v129[1](v127, v18);
    }

    else
    {
      v68 = v124;
      (v62)(v124, v64, v18);
      v69 = v63;
      if (static Date.< infix(_:_:)())
      {
        v70 = v129;
        v71 = v129[2];
        v72 = v120;
        (v71)(v120, v68, v61);
        v73 = v118;
        (v71)(v118, v69, v61);
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.default.getter();
        v76 = os_log_type_enabled(v74, v75);
        v77 = v61;
        v117 = v61;
        if (v76)
        {
          v78 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v130 = v116;
          *v78 = 136446466;
          sub_100054724(&qword_100937010, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v115 = v75;
          v79 = dispatch thunk of CustomStringConvertible.description.getter();
          v81 = v80;
          v82 = v70[1];
          v125 = ((v70 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          (v82)(v72, v77);
          v83 = sub_10000668C(v79, v81, &v130);
          v84 = v81;
          v69 = v127;
          v84, v85, v86, v87, v88, v89, v90, v91;
          *(v78 + 4) = v83;
          *(v78 + 12) = 2082;
          v92 = dispatch thunk of CustomStringConvertible.description.getter();
          v94 = v93;
          v129 = v82;
          (v82)(v73, v77);
          v95 = sub_10000668C(v92, v94, &v130);
          v94, v96, v97, v98, v99, v100, v101, v102;
          *(v78 + 14) = v95;
          _os_log_impl(&_mh_execute_header, v74, v115, "RDTodayNotificationEngine: proceeding to retractTodayNotificationIfApplicable because {lastTodayNotificationFireDate: %{public}s < lastDismissedDate: %{public}s}", v78, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v104 = v70[1];
          v125 = ((v70 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          (v104)(v73, v61);
          v129 = v104;
          (v104)(v72, v61);
        }

        v105 = v121;
        v106 = v122;
        v107 = *(v122 + 104);
        v108 = v123;
        v107(v121, enum case for RDUserNotificationCategory.todayNotification(_:), v123);
        v109 = v126;
        v110 = v128;
        sub_1007378E0(v105, v126, v128, v69);
        v111 = *(v106 + 8);
        v111(v105, v108);
        v107(v105, enum case for RDUserNotificationCategory.todayNotificationForSingleReminder(_:), v108);
        sub_1007378E0(v105, v109, v110, v69);
        v111(v105, v108);
        v112 = v117;
        v113 = v129;
        (v129)(v124, v117);
        v113(v69, v112);
      }

      else
      {
        v103 = v129[1];
        v103(v68, v18);
        v103(v63, v18);
      }
    }
  }
}

void sub_1007378E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v51 = a4;
  v52 = a2;
  v53 = a3;
  v7 = type metadata accessor for Date();
  v46 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v11 = type metadata accessor for RDUserNotificationCategory();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v15 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(v5 + 56);
  v16 = RDUserNotificationCategory.rawValue.getter();
  v47 = v17;
  v48 = v16;
  v18 = RDUserNotificationCategory.rawValue.getter();
  v49 = v19;
  v50 = v18;
  (*(v12 + 16))(v15, a1, v11);
  (*(v8 + 16))(&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v51, v7);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v8 + 80) + v21 + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  (*(v12 + 32))(v23 + v20, v15, v11);
  v24 = (v23 + v21);
  v25 = v53;
  *v24 = v52;
  v24[1] = v25;
  (*(v8 + 32))(v23 + v22, &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v46);

  v26 = v47;
  v27 = String._bridgeToObjectiveC()();
  v26, v28, v29, v30, v31, v32, v33, v34;
  v35 = v49;
  v36 = String._bridgeToObjectiveC()();
  v35, v37, v38, v39, v40, v41, v42, v43;
  aBlock[4] = sub_10073E3F4;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100042968;
  aBlock[3] = &unk_1008FD820;
  v44 = _Block_copy(aBlock);

  [v54 releaseNotificationWithIdentifier:v27 reference:v36 completion:v44];
  _Block_release(v44);
}