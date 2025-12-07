_BYTE *sub_1003C07C8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1003C09F0()
{
  v2 = qword_1006DAFA8;
  if (!qword_1006DAFA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAFA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003C0A6C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[12] = a3;
  v3[11] = a1;
  v3[9] = v3;
  v3[7] = 0;
  v3[8] = 0;
  v3[10] = 0;
  v4 = *a2;
  v3[13] = *a2;
  v5 = a2[1];
  v3[14] = v5;
  v3[7] = v4;
  v3[8] = v5;
  v3[10] = a3 + 16;
  return _swift_task_switch(sub_1003C0AD0, 0);
}

uint64_t sub_1003C0AD0()
{
  v0[9] = v0;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v0[5] = sub_100014038();
  v0[6] = &off_10065D4D8;
  v0[2] = Strong;
  type metadata accessor for MainActor();
  v0[15] = static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003C0BA8, v1);
}

uint64_t sub_1003C0BA8()
{
  v1 = v0[14];
  v2 = v0[13];
  v0[9] = v0;
  sub_1003B9F3C(v2, v1, v0 + 2);

  sub_1000160F4(v0 + 2);

  return _swift_task_switch(sub_1003C0C40, 0);
}

uint64_t sub_1003C0C40()
{
  v3 = *(v0 + 88);
  *(v0 + 72) = v0;
  v3[3] = sub_10025C9B0(&qword_1006D7C40, qword_100508520);
  v3[4] = sub_100282234();
  sub_10026AC9C(v3);
  static IntentResult.result<>()();
  v1 = *(*(v0 + 72) + 8);

  return v1();
}

uint64_t sub_1003C0D0C(uint64_t a1, uint64_t *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_1003C0A6C(a1, a2, v7);
}

uint64_t sub_1003C0DD0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[6] = a3;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = *a2;
  v3[7] = *a2;
  v3[3] = v4;
  v3[4] = a3 + 16;
  return _swift_task_switch(sub_1003C0E24, 0);
}

uint64_t sub_1003C0E24()
{
  v3 = v0[7];
  v6 = v0[5];
  v0[2] = v0;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1003BA7D0(v3);
  v4 = String._bridgeToObjectiveC()();

  _objc_retain(@"currentMailbox");
  [Strong beginSearchWithQueryString:v4 scope:@"currentMailbox"];
  _objc_release(@"currentMailbox");
  _objc_release(v4);
  _objc_release(Strong);
  v6[3] = sub_10025C9B0(&qword_1006D7C40, qword_100508520);
  v6[4] = sub_100282234();
  sub_10026AC9C(v6);
  static IntentResult.result<>()();
  v1 = *(v0[2] + 8);

  return v1();
}

uint64_t sub_1003C0F90(uint64_t a1, uint64_t *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_1003C0DD0(a1, a2, v7);
}

uint64_t sub_1003C1054(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v22 = a1;
  v28 = 0;
  v38[1] = 0;
  v37 = 0;
  v35 = 0;
  v38[2] = a1;
  v38[3] = a2;
  v3 = v2;
  v26 = [v2 collectionView];

  v24 = [v26 mui_sortedIndexPathsForVisibleItems];
  v23 = v24;
  v25 = type metadata accessor for IndexPath();
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v38[0] = v27;
  v4 = v2;
  v34 = v2;
  v29 = sub_10025C9B0(&unk_1006DAFC0, &qword_100509090);
  v30 = sub_1003C1558();
  sub_1003C15BC();
  v32 = v31;
  v33 = Sequence.compactMap<A>(_:)();
  if (v31)
  {

    __break(1u);
  }

  else
  {
    v13 = v33;
    v17 = 0;

    sub_100264880(v38);
    v37 = v33;
    v36 = v33;

    v14 = &v10;
    __chkstk_darwin(&v10);
    v15 = v9;
    v9[2] = v22;
    v9[3] = v5;
    v16 = sub_10025C9B0(&qword_1006DAFD8, &qword_100509098);
    sub_1003C1CBC();
    v6 = v17;
    v7 = Sequence.compactMap<A>(_:)();
    v18 = v6;
    v19 = v7;
    if (!v6)
    {
      v11 = v19;
      v12 = 0;

      v35 = v11;

      return v11;
    }
  }

  __break(1u);
  return result;
}

void sub_1003C1304(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = a3;
  v14 = a1;
  v13 = a2;
  v23 = 0;
  v22 = 0;
  v17 = type metadata accessor for IndexPath();
  v15 = *(v17 - 8);
  v16 = v17 - 8;
  v12 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v13);
  v4 = &v7 - v12;
  v18 = &v7 - v12;
  v23 = v5;
  v22 = v3;
  _objc_retain(v3);
  v20 = [v13 collectionView];
  _objc_release(v13);
  (*(v15 + 16))(v4, v14, v17);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v15 + 8))(v18, v17);
  v21 = [v20 cellForItemAtIndexPath:isa];
  _objc_release(isa);
  _objc_release(v20);
  if (v21)
  {
    v10 = v21;
    v8 = v21;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    v9 = v6;
    if (v6)
    {
      *v11 = v9;
    }

    else
    {
      _objc_release(v8);
      *v11 = 0;
    }
  }

  else
  {
    *v11 = 0;
  }
}

unint64_t sub_1003C1558()
{
  v2 = qword_1006DBB80;
  if (!qword_1006DBB80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DBB80);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1003C15BC()
{
  v2 = qword_1006DAFD0;
  if (!qword_1006DAFD0)
  {
    sub_10025CAA4(&unk_1006DAFC0, &qword_100509090);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAFD0);
    return WitnessTable;
  }

  return v2;
}

void sub_1003C1644(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v46 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v46 = *a1;
  v44 = a2;
  v45 = a3;
  v29 = [v46 cellHelper];
  v43 = v29;
  v30 = [v29 cellView];
  swift_getObjectType();
  v31 = [v30 viewModel];
  if (v31)
  {
    v42 = v31;
    _objc_release(v30);
    v19 = [v31 address];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v4;
    v40 = v20;
    v41 = v4;
    _objc_release(v19);
    v22 = [v31 subject];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v5;
    v38 = v24;
    v39 = v5;
    _objc_release(v22);
    v25 = [v29 messageListItem];
    v37 = v25;
    v36[4] = v24;
    v36[5] = v23;
    v36[2] = a2;
    v36[3] = a3;
    sub_1002686CC();
    v6 = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();
    if (v6)
    {
      swift_unknownObjectRetain();

      sub_1003AFE00(v25, v20, v21, v24, v23, v47);
      memcpy(a4, v47, 0x38uLL);
      swift_unknownObjectRelease();

      _objc_release(v31);
      _objc_release(v29);
    }

    else
    {
      v17 = [v31 address];
      v36[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36[1] = v7;
      v34 = a2;
      v35 = a3;
      v18 = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();
      sub_100268744(v36);
      _objc_release(v17);
      if (v18)
      {
        swift_unknownObjectRetain();

        sub_1003AFE00(v25, v20, v21, v24, v23, v48);
        memcpy(a4, v48, 0x38uLL);
        swift_unknownObjectRelease();

        _objc_release(v31);
        _objc_release(v29);
      }

      else
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v16 = [v25 summary];
        if (v16)
        {
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v8;
          _objc_release(v16);
          v14 = v12;
          v15 = v13;
        }

        else
        {
          v14 = 0;
          v15 = 0;
        }

        swift_unknownObjectRelease();
        if (v15)
        {
          v32[0] = v14;
          v32[1] = v15;
          v10 = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();
          sub_100268744(v32);
          v11 = v10 & 1;
        }

        else
        {
          v11 = 2;
        }

        v33 = v11;
        if (v11 == 2)
        {
          v9 = 0;
        }

        else
        {
          v9 = v33;
        }

        if (v9)
        {
          swift_unknownObjectRetain();

          sub_1003AFE00(v25, v20, v21, v24, v23, v49);
          memcpy(a4, v49, 0x38uLL);
        }

        else
        {
          *a4 = 0;
          a4[1] = 0;
          a4[2] = 0;
          a4[3] = 0;
          a4[4] = 0;
          a4[5] = 0;
          a4[6] = 0;
        }

        swift_unknownObjectRelease();

        _objc_release(v31);
        _objc_release(v29);
      }
    }
  }

  else
  {
    _objc_release(v30);
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    a4[3] = 0;
    a4[4] = 0;
    a4[5] = 0;
    a4[6] = 0;
    _objc_release(v29);
  }
}

unint64_t sub_1003C1CBC()
{
  v2 = qword_1006DAFE0;
  if (!qword_1006DAFE0)
  {
    sub_10025CAA4(&qword_1006DAFD8, &qword_100509098);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAFE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003C1D44(uint64_t a1)
{
  v169 = a1;
  v150 = sub_1003C3178;
  v151 = sub_10026EE84;
  v152 = sub_10026434C;
  v153 = sub_10026434C;
  v154 = sub_10026EF2C;
  v155 = sub_10035728C;
  v156 = sub_10026EE84;
  v157 = sub_10026434C;
  v158 = sub_10026434C;
  v159 = sub_10026EF2C;
  v201 = 0;
  v200 = 0;
  v199 = 0;
  v170 = v198;
  v198[0] = 0;
  v198[1] = 0;
  v193 = 0;
  v194 = 0;
  v191 = 0;
  v192 = 0;
  v185 = 0;
  v179 = 0;
  v176 = 0;
  v160 = 0;
  v161 = type metadata accessor for Logger();
  v162 = *(v161 - 8);
  v163 = v161 - 8;
  v165 = *(v162 + 64);
  v164 = (v165 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(0);
  v166 = &v41 - v164;
  v167 = v164;
  __chkstk_darwin(v2);
  v168 = &v41 - v167;
  v201 = v3;
  v200 = v1;
  v199 = _allocateUninitializedArray<A>(_:)();

  v197 = v169;
  v171 = sub_10025C9B0(&unk_1006D69B0, &unk_100503A00);
  sub_1002B76F0();
  Collection<>.makeIterator()();
  for (i = v172; ; i = v146)
  {
    v146 = i;
    sub_10025C9B0(&qword_1006D7F98, qword_100500890);
    IndexingIterator.next()();
    v147 = v195;
    v148 = v196;
    if (!v196)
    {
      sub_100264880(v198);
      v41 = &v199;
      v42 = v199;

      sub_100264880(v41);
      return v42;
    }

    v144 = v147;
    v145 = v148;
    v140 = v148;
    v139 = v147;
    v193 = v147;
    v194 = v148;

    v191 = v139;
    v192 = v140;
    v141 = sub_1003B1410(v139, v140);
    v142 = v139;
    v143 = v140;
    if (!v141)
    {
      break;
    }

    v138 = v141;
    v135 = v141;
    v185 = v141;
    _objc_retain(v149);
    v136 = [v149 dataSource];
    _objc_release(v149);
    v137 = [v136 messageListItemForItemID:v135];
    _objc_release(v136);
    if (v137)
    {
      v134 = v137;
      v131 = v137;
      v132 = [v137 resultIfAvailable];
      _objc_release(v131);
      v133 = v132;
    }

    else
    {
      v133 = 0;
    }

    v130 = v133;
    if (v133)
    {
      v129 = v130;
      v127 = v130;
      v176 = v130;
      swift_unknownObjectRetain();
      v128 = v202;
      sub_1003AFE00(v127, 0, 0, 0, 0, v202);
      memcpy(__dst, v128, sizeof(__dst));
      if (__dst[1])
      {
        v126 = v207;
        v124 = 56;
        memcpy(v207, __dst, sizeof(v207));
        sub_1003B1AB0(v207, v175);
        v125 = v174;
        memcpy(v174, v126, v124);
        sub_10025C9B0(&unk_1006DABC8, &qword_100507FD8);
        Array.append(_:)();
        sub_1003AF6BC(v126);
        swift_unknownObjectRelease();
        goto LABEL_27;
      }

      swift_unknownObjectRelease();
    }

    v119 = [v149 conversationViewController];
    v120 = [v119 referenceMessageListItem];
    v121 = v119;
    v122 = v135;
    v123 = v140;
    if (!v120)
    {
      v115 = v123;
      v114 = v122;
      _objc_release(v121);
      v116 = v114;
      v117 = v115;
LABEL_20:
      v4 = v168;
      v85 = v117;
      v86 = v116;
      v5 = Logger.appIntentLogger.unsafeMutableAddressor();
      (*(v162 + 16))(v4, v5, v161);
      swift_unknownObjectRetain();
      v89 = 7;
      v90 = swift_allocObject();
      *(v90 + 16) = v86;
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.error.getter();
      v87 = 17;
      v92 = swift_allocObject();
      *(v92 + 16) = 32;
      v93 = swift_allocObject();
      *(v93 + 16) = 8;
      v88 = 32;
      v6 = swift_allocObject();
      v7 = v90;
      v91 = v6;
      *(v6 + 16) = v150;
      *(v6 + 24) = v7;
      v8 = swift_allocObject();
      v9 = v91;
      v95 = v8;
      *(v8 + 16) = v151;
      *(v8 + 24) = v9;
      v97 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
      v94 = _allocateUninitializedArray<A>(_:)();
      v96 = v10;

      v11 = v92;
      v12 = v96;
      *v96 = v152;
      v12[1] = v11;

      v13 = v93;
      v14 = v96;
      v96[2] = v153;
      v14[3] = v13;

      v15 = v95;
      v16 = v96;
      v96[4] = v154;
      v16[5] = v15;
      sub_1002612B0();

      if (os_log_type_enabled(v98, v99))
      {
        v78 = static UnsafeMutablePointer.allocate(capacity:)();
        v77 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v79 = sub_1002641E8(0, v77, v77);
        v80 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
        v81 = &v184;
        v184 = v78;
        v82 = &v183;
        v183 = v79;
        v83 = &v182;
        v182 = v80;
        sub_10026423C(2, &v184);
        sub_10026423C(1, v81);
        v17 = v146;
        v180 = v152;
        v181 = v92;
        sub_100264250(&v180, v81, v82, v83);
        v84 = v17;
        if (v17)
        {

          __break(1u);
        }

        else
        {
          v180 = v153;
          v181 = v93;
          sub_100264250(&v180, &v184, &v183, &v182);
          v75 = 0;
          v180 = v154;
          v181 = v95;
          sub_100264250(&v180, &v184, &v183, &v182);
          _os_log_impl(&_mh_execute_header, v98, v99, "Failed to find match message with identifier %s", v78, 0xCu);
          sub_10026429C(v79, 0);
          sub_10026429C(v80, 1);
          UnsafeMutablePointer.deallocate()();
        }
      }

      else
      {
      }

      _objc_release(v98);
      (*(v162 + 8))(v168, v161);
      v72 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Failed to match identifier for message", 0x26uLL, 1);
      sub_100367A00();
      v73 = swift_allocError();
      v19 = v18;
      object = v72._object;
      *v19 = v72._countAndFlagsBits;
      v19[1] = object;
      swift_willThrow();
      swift_unknownObjectRelease();

      sub_100264880(v198);
      sub_100264880(&v199);
      v74 = v73;
      return v76;
    }

    v118 = v120;
    v109 = v120;
    v179 = v120;
    _objc_release(v119);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v108 = [v109 itemID];
    swift_unknownObjectRelease();
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_getObjectType();
    v110 = [v108 isEqual:v135];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v111 = v109;
    v112 = v135;
    v113 = v140;
    if ((v110 & 1) == 0)
    {
      v101 = v113;
      v100 = v112;
      swift_unknownObjectRelease();
      v116 = v100;
      v117 = v101;
      goto LABEL_20;
    }

    swift_unknownObjectRetain();
    v104 = v203;
    sub_1003AFE00(v109, 0, 0, 0, 0, v203);
    memcpy(__src, v104, sizeof(__src));
    v105 = v109;
    v106 = v135;
    v107 = v140;
    if (!__src[1])
    {
      v103 = v107;
      v102 = v106;
      swift_unknownObjectRelease();
      v116 = v102;
      v117 = v103;
      goto LABEL_20;
    }

    v71 = v205;
    v69 = 56;
    memcpy(v205, __src, sizeof(v205));
    sub_1003B1AB0(v205, v178);
    v70 = v177;
    memcpy(v177, v71, v69);
    sub_10025C9B0(&unk_1006DABC8, &qword_100507FD8);
    Array.append(_:)();
    sub_1003AF6BC(v71);
    swift_unknownObjectRelease();
LABEL_27:
    swift_unknownObjectRelease();
  }

  v21 = v166;
  v55 = v143;
  v54 = v142;
  v22 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v162 + 16))(v21, v22, v161);

  v57 = 32;
  v58 = 7;
  v23 = swift_allocObject();
  v24 = v55;
  v59 = v23;
  *(v23 + 16) = v54;
  *(v23 + 24) = v24;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();
  v56 = 17;
  v61 = swift_allocObject();
  *(v61 + 16) = 32;
  v62 = swift_allocObject();
  *(v62 + 16) = 8;
  v25 = swift_allocObject();
  v26 = v59;
  v60 = v25;
  *(v25 + 16) = v155;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v60;
  v64 = v27;
  *(v27 + 16) = v156;
  *(v27 + 24) = v28;
  v66 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v63 = _allocateUninitializedArray<A>(_:)();
  v65 = v29;

  v30 = v61;
  v31 = v65;
  *v65 = v157;
  v31[1] = v30;

  v32 = v62;
  v33 = v65;
  v65[2] = v158;
  v33[3] = v32;

  v34 = v64;
  v35 = v65;
  v65[4] = v159;
  v35[5] = v34;
  sub_1002612B0();

  if (os_log_type_enabled(v67, v68))
  {
    v47 = static UnsafeMutablePointer.allocate(capacity:)();
    v46 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v48 = sub_1002641E8(0, v46, v46);
    v49 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v50 = &v190;
    v190 = v47;
    v51 = &v189;
    v189 = v48;
    v52 = &v188;
    v188 = v49;
    sub_10026423C(2, &v190);
    sub_10026423C(1, v50);
    v36 = v146;
    v186 = v157;
    v187 = v61;
    sub_100264250(&v186, v50, v51, v52);
    v53 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v186 = v158;
      v187 = v62;
      sub_100264250(&v186, &v190, &v189, &v188);
      v45 = 0;
      v186 = v159;
      v187 = v64;
      sub_100264250(&v186, &v190, &v189, &v188);
      _os_log_impl(&_mh_execute_header, v67, v68, "Attempted to match message with invalid identifier %s", v47, 0xCu);
      sub_10026429C(v48, 0);
      sub_10026429C(v49, 1);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v67);
  (*(v162 + 8))(v166, v161);
  v43 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Received invalid identifier type for message", 0x2CuLL, 1);
  sub_100367A00();
  v44 = swift_allocError();
  v38 = v37;
  v39 = v43._object;
  *v38 = v43._countAndFlagsBits;
  v38[1] = v39;
  swift_willThrow();

  sub_100264880(v198);
  sub_100264880(&v199);
  v74 = v44;
  return v76;
}

uint64_t sub_1003C2EC0(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_10025C9B0(&qword_1006DB000, &qword_1005090A0);
  return String.init<A>(describing:)();
}

uint64_t sub_1003C2F14()
{
  sub_10025C9B0(&unk_1006DABC8, &qword_100507FD8);
  sub_10025C9B0(&qword_1006DB000, &qword_1005090A0);
  sub_1003C3180();
  Sequence.compactMap<A>(_:)();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 deleteMessagesWithItemIDs:isa];
  _objc_release(isa);
}

id sub_1003C3034@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_unknownObjectRetain();
  swift_getObjectType();
  v5 = [v3 itemID];
  swift_unknownObjectRelease();
  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1003C30B0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1003C1054(a1, a2);
  if (v2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1003C3114(uint64_t a1)
{
  v4 = sub_1003C1D44(a1);
  if (v1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1003C3180()
{
  v2 = qword_1006DB008;
  if (!qword_1006DB008)
  {
    sub_10025CAA4(&unk_1006DABC8, &qword_100507FD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB008);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003C3208()
{
  v42 = 0;
  v50 = 0;
  v29 = 0;
  v30 = (*(*(sub_10025C9B0(&qword_1006D7ED8, &qword_1005093B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v31 = &v12 - v30;
  v39 = type metadata accessor for Logger();
  v33 = v39;
  v34 = *(v39 - 8);
  v38 = v34;
  v35 = v34;
  v36 = *(v34 + 64);
  __chkstk_darwin(v39 - 8);
  v0 = &v12 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v0;
  v50 = v1;
  v2 = Logger.tipsLogger.unsafeMutableAddressor();
  (*(v38 + 16))(v0, v2, v39);
  v44 = Logger.logObject.getter();
  v40 = v44;
  v43 = static os_log_type_t.info.getter();
  v41 = v43;
  sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v45 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v44, v43))
  {
    v3 = v29;
    v20 = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = v20;
    v17 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v18 = 0;
    v21 = sub_1002641E8(0, v17, v17);
    v19 = v21;
    v22 = sub_1002641E8(v18, &type metadata for Any + 8, &type metadata for Any + 8);
    v49 = v20;
    v48 = v21;
    v47 = v22;
    v23 = 0;
    v24 = &v49;
    sub_10026423C(0, &v49);
    sub_10026423C(v23, v24);
    v46 = v45;
    v25 = &v12;
    __chkstk_darwin(&v12);
    v26 = &v12 - 6;
    *(&v12 - 4) = v4;
    *(&v12 - 3) = &v48;
    *(&v12 - 2) = &v47;
    v27 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v28 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v40, v41, "setting up MiniTipPopoverViewController observer", v16, 2u);
      v14 = 0;
      sub_10026429C(v19, 0);
      sub_10026429C(v22, v14);
      UnsafeMutablePointer.deallocate()();

      v15 = v28;
    }
  }

  else
  {

    v15 = v29;
  }

  (*(v35 + 8))(v37, v33);
  v12 = 0;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v31, 1);
  v6 = v32;
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v8 = v32;
  v9 = v12;
  v10 = v31;
  v7[2] = v13;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v8;
  sub_1002C7DB4(v9, v9, v10, &unk_1005090F8, v7, &type metadata for () + 8);
}

uint64_t sub_1003C370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 128) = 0;
  *(v4 + 40) = sub_10025C9B0(&qword_1006DB010, &qword_100509100);
  *(v4 + 48) = swift_task_alloc();
  v5 = sub_10025C9B0(&qword_1006DB018, &qword_100509108);
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 24) = a4;
  *(v4 + 80) = type metadata accessor for MainActor();
  *(v4 + 88) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 96) = v9;
  *(v4 + 104) = v6;

  return _swift_task_switch(sub_1003C3898, v9);
}

uint64_t sub_1003C3898()
{
  *(v0 + 16) = v0;
  if ([objc_opt_self() preferenceEnabled:32])
  {
    sub_1003C3F4C();

    v1 = *(v7[2] + 8);

    return v1();
  }

  else
  {
    v5 = *sub_1003A2834();
    _objc_retain(v5);
    sub_1003A29F8();
    _objc_release(v5);
    sub_1003A3248();
    Tip.shouldDisplayUpdates.getter();
    AsyncMapSequence.makeAsyncIterator()();
    v6 = static MainActor.shared.getter();
    v7[14] = v6;
    v3 = swift_task_alloc();
    v7[15] = v3;
    *v3 = v7[2];
    v3[1] = sub_1003C3AC4;
    v4 = v7[7];

    return __ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKF(v7 + 129, v6, &protocol witness table for MainActor, v4);
  }
}

uint64_t sub_1003C3AC4()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v6 = v2 + 16;

  if (v0)
  {
    v3 = *(v6 + 80);
    v4 = sub_1003C3E64;
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v6 + 80);
    v4 = sub_1003C3C40;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1003C3C40()
{
  *(v0 + 16) = v0;
  v7 = *(v0 + 129);
  if (v7 == 2)
  {
    (*(*(v6 + 64) + 8))(*(v6 + 72), *(v6 + 56));

    v1 = *(*(v6 + 16) + 8);

    return v1();
  }

  else
  {
    *(v6 + 128) = v7 & 1;
    if (v7)
    {
      sub_1003C3F4C();
    }

    else
    {
      [*(v6 + 32) dismissTip];
    }

    v5 = static MainActor.shared.getter();
    *(v6 + 112) = v5;
    v3 = swift_task_alloc();
    *(v6 + 120) = v3;
    *v3 = *(v6 + 16);
    v3[1] = sub_1003C3AC4;
    v4 = *(v6 + 56);

    return __ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKF(v6 + 129, v5, &protocol witness table for MainActor, v4);
  }
}

uint64_t sub_1003C3E74(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_1003C370C(a1, v6, v7, v8);
}

uint64_t sub_1003C3F4C()
{
  v368 = 0;
  v412 = 0;
  v344 = 0;
  v401 = 0;
  v396 = 0;
  v390 = 0;
  v382 = 0;
  v381 = 0.0;
  v380 = 0.0;
  v379 = 0.0;
  v363 = type metadata accessor for Logger();
  v346 = v363;
  v347 = *(v363 - 8);
  v362 = v347;
  v348 = v347;
  v358 = *(v347 + 64);
  __chkstk_darwin(v363 - 8);
  v360 = (v358 + 15) & 0xFFFFFFFFFFFFFFF0;
  v349 = &v51 - v360;
  __chkstk_darwin(&v51 - v360);
  v350 = &v51 - v360;
  __chkstk_darwin(&v51 - v360);
  v351 = &v51 - v360;
  __chkstk_darwin(&v51 - v360);
  v352 = &v51 - v360;
  __chkstk_darwin(&v51 - v360);
  v353 = &v51 - v360;
  __chkstk_darwin(&v51 - v360);
  v354 = &v51 - v360;
  __chkstk_darwin(&v51 - v360);
  v355 = &v51 - v360;
  __chkstk_darwin(&v51 - v360);
  v356 = &v51 - v360;
  __chkstk_darwin(&v51 - v360);
  v357 = &v51 - v360;
  __chkstk_darwin(&v51 - v360);
  v359 = &v51 - v360;
  __chkstk_darwin(&v51 - v360);
  v0 = &v51 - v360;
  v361 = &v51 - v360;
  v412 = v1;
  v2 = Logger.tipsLogger.unsafeMutableAddressor();
  v364 = *(v362 + 16);
  v365 = (v362 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v364(v0, v2, v363);
  v371 = Logger.logObject.getter();
  v366 = v371;
  v370 = static os_log_type_t.info.getter();
  v367 = v370;
  v369 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v372 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v371, v370))
  {
    v3 = v344;
    v335 = static UnsafeMutablePointer.allocate(capacity:)();
    v331 = v335;
    v332 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v333 = 0;
    v336 = sub_1002641E8(0, v332, v332);
    v334 = v336;
    v337 = sub_1002641E8(v333, &type metadata for Any + 8, &type metadata for Any + 8);
    v376[0] = v335;
    v375 = v336;
    v374 = v337;
    v338 = 0;
    v339 = v376;
    sub_10026423C(0, v376);
    sub_10026423C(v338, v339);
    v373 = v372;
    v340 = &v51;
    __chkstk_darwin(&v51);
    v341 = &v51 - 6;
    v342 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v343 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v366, v367, "presenting MiniTipPopoverViewController", v331, 2u);
      v329 = 0;
      sub_10026429C(v334, 0);
      sub_10026429C(v337, v329);
      UnsafeMutablePointer.deallocate()();

      v330 = v343;
    }
  }

  else
  {

    v330 = v344;
  }

  v326 = v330;

  v327 = *(v348 + 8);
  v328 = (v348 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v327(v361, v346);
  v411 = [v345 tipPopoverController];
  v325 = v411 == 0;
  v324 = v325;
  sub_10026A58C(&v411);
  if (v324)
  {
    v4 = v345;
    v322 = [v345 mailboxes];
    v319 = sub_1003655EC();
    v321 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v409[1] = v321;
    v320 = sub_10025C9B0(&qword_1006D9D90, &qword_100506E30);
    sub_1003A0290();
    v323 = Collection.isEmpty.getter();

    if (v323)
    {
      v44 = v350;
      v45 = Logger.tipsLogger.unsafeMutableAddressor();
      v364(v44, v45, v346);
      v91 = Logger.logObject.getter();
      v88 = v91;
      v90 = static os_log_type_t.error.getter();
      v89 = v90;
      v92 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v91, v90))
      {
        v46 = v326;
        v79 = static UnsafeMutablePointer.allocate(capacity:)();
        v75 = v79;
        v76 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v77 = 0;
        v80 = sub_1002641E8(0, v76, v76);
        v78 = v80;
        v81 = sub_1002641E8(v77, &type metadata for Any + 8, &type metadata for Any + 8);
        v409[0] = v79;
        v408[3] = v80;
        v408[2] = v81;
        v82 = 0;
        v83 = v409;
        sub_10026423C(0, v409);
        sub_10026423C(v82, v83);
        v408[1] = v92;
        v84 = &v51;
        __chkstk_darwin(&v51);
        v85 = &v51 - 6;
        v86 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
        sub_10026E6E0();
        Sequence.forEach(_:)();
        v87 = v46;
        if (v46)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&_mh_execute_header, v88, v89, "No mailboxes. Skip showing MiniTipPopoverViewController", v75, 2u);
          v73 = 0;
          sub_10026429C(v78, 0);
          sub_10026429C(v81, v73);
          UnsafeMutablePointer.deallocate()();

          v74 = v87;
        }
      }

      else
      {

        v74 = v326;
      }

      v72 = v74;

      v327(v350, v346);
      return v72;
    }

    else
    {
      v5 = v345;
      v318 = [v345 presentedViewController];

      v408[0] = v318;
      v317 = v318 == 0;
      v316 = v317;
      sub_10026A58C(v408);
      if (v316)
      {
        if ([v345 isFilterButtonAvailable])
        {
          v315 = [v345 filterButtonItem];
          if (v315)
          {
            v314 = v315;
            v311 = v315;
            v401 = v315;
            v6 = v345;
            v313 = [v345 navigationController];
            v312 = v313;

            if (v313)
            {
              v310 = v312;
              v307 = v312;
              v309 = [v312 toolbar];
              v308 = v309;

              if (v309)
              {
                v306 = v308;
              }

              else
              {
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              v304 = v306;
              v305 = [v306 items];
              if (v305)
              {
                v303 = v305;
                v300 = v305;
                v299 = sub_100295C30();
                v301 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                v302 = v301;
              }

              else
              {
                v302 = 0;
              }

              v297 = v302;

              v298 = v297;
            }

            else
            {
              v298 = 0;
            }

            v296 = v298;
            if (v298)
            {
              v295 = v296;
              v292 = v296;
              v396 = v296;
              v395[2] = v296;
              v395[1] = v311;
              v293 = sub_10025C9B0(&qword_1006D7790, &qword_1004FF6F8);
              v294 = sub_1002A748C();
              sub_1002A7384();
              if (Sequence<>.contains(_:)())
              {
                v7 = v345;
                v291 = [v345 viewIfLoaded];
                if (v291)
                {
                  v290 = v291;
                  v289 = v291;
                  v390 = v291;

                  v389 = [v289 window];
                  v288 = v389 != 0;
                  v287 = v288;
                  sub_10026A58C(&v389);
                  if (v287)
                  {
                    v285 = 0;
                    v278 = type metadata accessor for TipUIPopoverViewController();
                    v279 = *sub_1003A2834();
                    v8 = v279;
                    sub_1003A29F8();
                    v383 = &unk_100659DC0;
                    v384 = sub_1003A3248();

                    v9 = v289;
                    sub_1003C66D4();
                    v280 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
                    v382 = v280;
                    width = UILayoutFittingCompressedSize.width;
                    height = UILayoutFittingCompressedSize.height;
                    v380 = UILayoutFittingCompressedSize.width;
                    v381 = height;
                    v10 = v345;
                    v283 = [v345 traitCollection];

                    v284 = [v283 horizontalSizeClass];
                    v378[4] = v284;
                    v378[3] = 1;
                    v286 = type metadata accessor for UIUserInterfaceSizeClass(v285);
                    sub_100268354();
                    if (== infix<A>(_:_:)())
                    {
                      [v289 bounds];
                      v376[4] = v11;
                      v376[3] = v12;
                      v376[2] = v13;
                      v376[1] = v14;
                      v379 = sub_1003C66F0(*&v14, *&v13, *&v12, *&v11);
                      v277 = v379;
                    }

                    else
                    {
                      v379 = width;
                      v277 = width;
                    }

                    v15 = v359;
                    v271 = v277;
                    v16 = v280;
                    v378[1] = *&v271;
                    v378[2] = *&height;
                    [v280 setPreferredContentSize:{v271, height}];

                    v17 = Logger.tipsLogger.unsafeMutableAddressor();
                    v364(v15, v17, v346);
                    v275 = Logger.logObject.getter();
                    v272 = v275;
                    v274 = static os_log_type_t.default.getter();
                    v273 = v274;
                    v276 = _allocateUninitializedArray<A>(_:)();
                    if (os_log_type_enabled(v275, v274))
                    {
                      v18 = v326;
                      v262 = static UnsafeMutablePointer.allocate(capacity:)();
                      v258 = v262;
                      v259 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
                      v260 = 0;
                      v263 = sub_1002641E8(0, v259, v259);
                      v261 = v263;
                      v264 = sub_1002641E8(v260, &type metadata for Any + 8, &type metadata for Any + 8);
                      v377 = v262;
                      v376[7] = v263;
                      v376[6] = v264;
                      v265 = 0;
                      v266 = &v377;
                      sub_10026423C(0, &v377);
                      sub_10026423C(v265, v266);
                      v376[5] = v276;
                      v267 = &v51;
                      __chkstk_darwin(&v51);
                      v268 = &v51 - 6;
                      v269 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
                      sub_10026E6E0();
                      Sequence.forEach(_:)();
                      v270 = v18;
                      if (v18)
                      {
                        __break(1u);
                      }

                      else
                      {
                        _os_log_impl(&_mh_execute_header, v272, v273, "Will show MiniTipPopoverViewController", v258, 2u);
                        v256 = 0;
                        sub_10026429C(v261, 0);
                        sub_10026429C(v264, v256);
                        UnsafeMutablePointer.deallocate()();

                        v257 = v270;
                      }
                    }

                    else
                    {

                      v257 = v326;
                    }

                    v254 = v257;

                    v327(v359, v346);
                    v255 = TipUIPopoverViewController.popoverPresentationController.getter();
                    if (v255)
                    {
                      v253 = v255;
                      v252 = v255;
                      [v255 setPermittedArrowDirections:2];
                    }

                    v251 = TipUIPopoverViewController.popoverPresentationController.getter();
                    if (v251)
                    {
                      v250 = v251;
                      v249 = v251;
                      v19 = v311;
                      [v249 setSourceItem:v311];
                      swift_unknownObjectRelease();
                    }

                    v378[0] = [v345 scene];
                    if (v378[0])
                    {
                      v247 = v378[0];
                      v20 = v378[0];
                      sub_10026A58C(v378);
                      v248 = [v247 dockContainer];

                      [v248 presentViewController:v280 animated:1 completion:0];
                    }

                    else
                    {
                      sub_10026A58C(v378);
                    }

                    v246 = TipUIPopoverViewController.popoverPresentationController.getter();
                    if (v246)
                    {
                      v245 = v246;
                      v244 = v246;
                      v21 = v289;
                      v242 = sub_1003C6730(v289);

                      v241 = sub_1002AA63C();
                      isa = Array._bridgeToObjectiveC()().super.isa;

                      [v244 setPassthroughViews:isa];
                    }

                    v22 = v280;
                    [v345 setTipPopoverController:v280];

                    return v254;
                  }

                  else
                  {
                    v23 = v357;
                    v24 = Logger.tipsLogger.unsafeMutableAddressor();
                    v364(v23, v24, v346);
                    v238 = Logger.logObject.getter();
                    v235 = v238;
                    v237 = static os_log_type_t.error.getter();
                    v236 = v237;
                    v239 = _allocateUninitializedArray<A>(_:)();
                    if (os_log_type_enabled(v238, v237))
                    {
                      v25 = v326;
                      v226 = static UnsafeMutablePointer.allocate(capacity:)();
                      v222 = v226;
                      v223 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
                      v224 = 0;
                      v227 = sub_1002641E8(0, v223, v223);
                      v225 = v227;
                      v228 = sub_1002641E8(v224, &type metadata for Any + 8, &type metadata for Any + 8);
                      v388 = v226;
                      v387 = v227;
                      v386 = v228;
                      v229 = 0;
                      v230 = &v388;
                      sub_10026423C(0, &v388);
                      sub_10026423C(v229, v230);
                      v385 = v239;
                      v231 = &v51;
                      __chkstk_darwin(&v51);
                      v232 = &v51 - 6;
                      v233 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
                      sub_10026E6E0();
                      Sequence.forEach(_:)();
                      v234 = v25;
                      if (v25)
                      {
                        __break(1u);
                      }

                      else
                      {
                        _os_log_impl(&_mh_execute_header, v235, v236, "View controller's view is not in a window. Skip initialization", v222, 2u);
                        v220 = 0;
                        sub_10026429C(v225, 0);
                        sub_10026429C(v228, v220);
                        UnsafeMutablePointer.deallocate()();

                        v221 = v234;
                      }
                    }

                    else
                    {

                      v221 = v326;
                    }

                    v219 = v221;

                    v327(v357, v346);

                    return v219;
                  }
                }

                else
                {
                  v26 = v356;

                  v27 = Logger.tipsLogger.unsafeMutableAddressor();
                  v364(v26, v27, v346);
                  v217 = Logger.logObject.getter();
                  v214 = v217;
                  v216 = static os_log_type_t.error.getter();
                  v215 = v216;
                  v218 = _allocateUninitializedArray<A>(_:)();
                  if (os_log_type_enabled(v217, v216))
                  {
                    v28 = v326;
                    v205 = static UnsafeMutablePointer.allocate(capacity:)();
                    v201 = v205;
                    v202 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
                    v203 = 0;
                    v206 = sub_1002641E8(0, v202, v202);
                    v204 = v206;
                    v207 = sub_1002641E8(v203, &type metadata for Any + 8, &type metadata for Any + 8);
                    v394[0] = v205;
                    v393 = v206;
                    v392 = v207;
                    v208 = 0;
                    v209 = v394;
                    sub_10026423C(0, v394);
                    sub_10026423C(v208, v209);
                    v391 = v218;
                    v210 = &v51;
                    __chkstk_darwin(&v51);
                    v211 = &v51 - 6;
                    v212 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
                    sub_10026E6E0();
                    Sequence.forEach(_:)();
                    v213 = v28;
                    if (v28)
                    {
                      __break(1u);
                    }

                    else
                    {
                      _os_log_impl(&_mh_execute_header, v214, v215, "No source view available to initialize MiniTipPopoverViewController. Skip initialization", v201, 2u);
                      v199 = 0;
                      sub_10026429C(v204, 0);
                      sub_10026429C(v207, v199);
                      UnsafeMutablePointer.deallocate()();

                      v200 = v213;
                    }
                  }

                  else
                  {

                    v200 = v326;
                  }

                  v198 = v200;

                  v327(v356, v346);

                  return v198;
                }
              }

              else
              {
                v29 = v355;
                v30 = Logger.tipsLogger.unsafeMutableAddressor();
                v364(v29, v30, v346);
                v196 = Logger.logObject.getter();
                v193 = v196;
                v195 = static os_log_type_t.error.getter();
                v194 = v195;
                v197 = _allocateUninitializedArray<A>(_:)();
                if (os_log_type_enabled(v196, v195))
                {
                  v31 = v326;
                  v184 = static UnsafeMutablePointer.allocate(capacity:)();
                  v180 = v184;
                  v181 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
                  v182 = 0;
                  v185 = sub_1002641E8(0, v181, v181);
                  v183 = v185;
                  v186 = sub_1002641E8(v182, &type metadata for Any + 8, &type metadata for Any + 8);
                  v395[0] = v184;
                  v394[3] = v185;
                  v394[2] = v186;
                  v187 = 0;
                  v188 = v395;
                  sub_10026423C(0, v395);
                  sub_10026423C(v187, v188);
                  v394[1] = v197;
                  v189 = &v51;
                  __chkstk_darwin(&v51);
                  v190 = &v51 - 6;
                  v191 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
                  sub_10026E6E0();
                  Sequence.forEach(_:)();
                  v192 = v31;
                  if (v31)
                  {
                    __break(1u);
                  }

                  else
                  {
                    _os_log_impl(&_mh_execute_header, v193, v194, "Filter button isn't in view hierarchy. Skip showing MiniTipPopoverViewController", v180, 2u);
                    v178 = 0;
                    sub_10026429C(v183, 0);
                    sub_10026429C(v186, v178);
                    UnsafeMutablePointer.deallocate()();

                    v179 = v192;
                  }
                }

                else
                {

                  v179 = v326;
                }

                v177 = v179;

                v327(v355, v346);

                return v177;
              }
            }

            else
            {
              v32 = v354;
              v33 = Logger.tipsLogger.unsafeMutableAddressor();
              v364(v32, v33, v346);
              v175 = Logger.logObject.getter();
              v172 = v175;
              v174 = static os_log_type_t.error.getter();
              v173 = v174;
              v176 = _allocateUninitializedArray<A>(_:)();
              if (os_log_type_enabled(v175, v174))
              {
                v34 = v326;
                v163 = static UnsafeMutablePointer.allocate(capacity:)();
                v159 = v163;
                v160 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
                v161 = 0;
                v164 = sub_1002641E8(0, v160, v160);
                v162 = v164;
                v165 = sub_1002641E8(v161, &type metadata for Any + 8, &type metadata for Any + 8);
                v400 = v163;
                v399 = v164;
                v398 = v165;
                v166 = 0;
                v167 = &v400;
                sub_10026423C(0, &v400);
                sub_10026423C(v166, v167);
                v397 = v176;
                v168 = &v51;
                __chkstk_darwin(&v51);
                v169 = &v51 - 6;
                v170 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
                sub_10026E6E0();
                Sequence.forEach(_:)();
                v171 = v34;
                if (v34)
                {
                  __break(1u);
                }

                else
                {
                  _os_log_impl(&_mh_execute_header, v172, v173, "No buttons currently in toolbar. Skip showing MiniTipPopoverViewController", v159, 2u);
                  v157 = 0;
                  sub_10026429C(v162, 0);
                  sub_10026429C(v165, v157);
                  UnsafeMutablePointer.deallocate()();

                  v158 = v171;
                }
              }

              else
              {

                v158 = v326;
              }

              v156 = v158;

              v327(v354, v346);
              return v156;
            }
          }

          else
          {
            v35 = v353;
            v36 = Logger.tipsLogger.unsafeMutableAddressor();
            v364(v35, v36, v346);
            v154 = Logger.logObject.getter();
            v151 = v154;
            v153 = static os_log_type_t.error.getter();
            v152 = v153;
            v155 = _allocateUninitializedArray<A>(_:)();
            if (os_log_type_enabled(v154, v153))
            {
              v37 = v326;
              v142 = static UnsafeMutablePointer.allocate(capacity:)();
              v138 = v142;
              v139 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
              v140 = 0;
              v143 = sub_1002641E8(0, v139, v139);
              v141 = v143;
              v144 = sub_1002641E8(v140, &type metadata for Any + 8, &type metadata for Any + 8);
              v405[0] = v142;
              v404 = v143;
              v403 = v144;
              v145 = 0;
              v146 = v405;
              sub_10026423C(0, v405);
              sub_10026423C(v145, v146);
              v402 = v155;
              v147 = &v51;
              __chkstk_darwin(&v51);
              v148 = &v51 - 6;
              v149 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
              sub_10026E6E0();
              Sequence.forEach(_:)();
              v150 = v37;
              if (v37)
              {
                __break(1u);
              }

              else
              {
                _os_log_impl(&_mh_execute_header, v151, v152, "Trying to present a MiniTipPopoverViewController without a valid source item", v138, 2u);
                v136 = 0;
                sub_10026429C(v141, 0);
                sub_10026429C(v144, v136);
                UnsafeMutablePointer.deallocate()();

                v137 = v150;
              }
            }

            else
            {

              v137 = v326;
            }

            v135 = v137;

            v327(v353, v346);
            return v135;
          }
        }

        else
        {
          v38 = v352;
          v39 = Logger.tipsLogger.unsafeMutableAddressor();
          v364(v38, v39, v346);
          v133 = Logger.logObject.getter();
          v130 = v133;
          v132 = static os_log_type_t.error.getter();
          v131 = v132;
          v134 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v133, v132))
          {
            v40 = v326;
            v121 = static UnsafeMutablePointer.allocate(capacity:)();
            v117 = v121;
            v118 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
            v119 = 0;
            v122 = sub_1002641E8(0, v118, v118);
            v120 = v122;
            v123 = sub_1002641E8(v119, &type metadata for Any + 8, &type metadata for Any + 8);
            v406[0] = v121;
            v405[3] = v122;
            v405[2] = v123;
            v124 = 0;
            v125 = v406;
            sub_10026423C(0, v406);
            sub_10026423C(v124, v125);
            v405[1] = v134;
            v126 = &v51;
            __chkstk_darwin(&v51);
            v127 = &v51 - 6;
            v128 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
            sub_10026E6E0();
            Sequence.forEach(_:)();
            v129 = v40;
            if (v40)
            {
              __break(1u);
            }

            else
            {
              _os_log_impl(&_mh_execute_header, v130, v131, "Filter button isn't available. Skip showing MiniTipPopoverViewController", v117, 2u);
              v115 = 0;
              sub_10026429C(v120, 0);
              sub_10026429C(v123, v115);
              UnsafeMutablePointer.deallocate()();

              v116 = v129;
            }
          }

          else
          {

            v116 = v326;
          }

          v114 = v116;

          v327(v352, v346);
          return v114;
        }
      }

      else
      {
        v41 = v351;
        v42 = Logger.tipsLogger.unsafeMutableAddressor();
        v364(v41, v42, v346);
        v112 = Logger.logObject.getter();
        v109 = v112;
        v111 = static os_log_type_t.error.getter();
        v110 = v111;
        v113 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v112, v111))
        {
          v43 = v326;
          v100 = static UnsafeMutablePointer.allocate(capacity:)();
          v96 = v100;
          v97 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
          v98 = 0;
          v101 = sub_1002641E8(0, v97, v97);
          v99 = v101;
          v102 = sub_1002641E8(v98, &type metadata for Any + 8, &type metadata for Any + 8);
          v407 = v100;
          v406[3] = v101;
          v406[2] = v102;
          v103 = 0;
          v104 = &v407;
          sub_10026423C(0, &v407);
          sub_10026423C(v103, v104);
          v406[1] = v113;
          v105 = &v51;
          __chkstk_darwin(&v51);
          v106 = &v51 - 6;
          v107 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
          sub_10026E6E0();
          Sequence.forEach(_:)();
          v108 = v43;
          if (v43)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&_mh_execute_header, v109, v110, "Trying to present more than one MiniTipPopoverViewController", v96, 2u);
            v94 = 0;
            sub_10026429C(v99, 0);
            sub_10026429C(v102, v94);
            UnsafeMutablePointer.deallocate()();

            v95 = v108;
          }
        }

        else
        {

          v95 = v326;
        }

        v93 = v95;

        v327(v351, v346);
        return v93;
      }
    }
  }

  else
  {
    v47 = v349;
    v48 = Logger.tipsLogger.unsafeMutableAddressor();
    v364(v47, v48, v346);
    v70 = Logger.logObject.getter();
    v67 = v70;
    v69 = static os_log_type_t.error.getter();
    v68 = v69;
    v71 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v70, v69))
    {
      v49 = v326;
      v58 = static UnsafeMutablePointer.allocate(capacity:)();
      v54 = v58;
      v55 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v56 = 0;
      v59 = sub_1002641E8(0, v55, v55);
      v57 = v59;
      v60 = sub_1002641E8(v56, &type metadata for Any + 8, &type metadata for Any + 8);
      v410 = v58;
      v409[5] = v59;
      v409[4] = v60;
      v61 = 0;
      v62 = &v410;
      sub_10026423C(0, &v410);
      sub_10026423C(v61, v62);
      v409[3] = v71;
      v63 = &v51;
      __chkstk_darwin(&v51);
      v64 = &v51 - 6;
      v65 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v66 = v49;
      if (v49)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v67, v68, "Trying to present more than one MiniTipPopoverViewController", v54, 2u);
        v52 = 0;
        sub_10026429C(v57, 0);
        sub_10026429C(v60, v52);
        UnsafeMutablePointer.deallocate()();

        v53 = v66;
      }
    }

    else
    {

      v53 = v326;
    }

    v51 = v53;

    v327(v349, v346);
    return v51;
  }
}

uint64_t sub_1003C6730(void *a1)
{
  _objc_retain(a1);
  if (!a1)
  {
    sub_1002AA63C();
    return _allocateUninitializedArray<A>(_:)();
  }

  v11 = [a1 superview];
  if (!v11)
  {
    goto LABEL_6;
  }

  ObjectType = swift_getObjectType();
  if (ObjectType == sub_1003C6E30())
  {
    _objc_release(v11);
LABEL_6:
    sub_1002AA63C();
    _allocateUninitializedArray<A>(_:)();
    v5 = v2;
    _objc_retain(a1);
    *v5 = a1;
    sub_1002612B0();
    v6 = v3;
    _objc_release(a1);
    return v6;
  }

  _objc_retain(v11);
  sub_1003C6730(v11);
  _objc_release(v11);
  sub_1002AA63C();
  _allocateUninitializedArray<A>(_:)();
  v7 = v1;
  _objc_retain(a1);
  *v7 = a1;
  sub_1002612B0();
  v8 = static Array.+ infix(_:_:)();

  _objc_release(v11);
  _objc_release(a1);
  return v8;
}

Swift::Void __swiftcall MessageListViewController.dismissTip()()
{
  v43 = 0;
  v31 = 0;
  v38 = 0;
  v33 = type metadata accessor for Logger();
  v34 = *(v33 - 8);
  v35 = v34;
  v0 = __chkstk_darwin(v32);
  v36 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v0;
  v37 = [v0 tipPopoverController];
  if (v37)
  {
    v30 = v37;
    v28 = v37;
    v38 = v37;
    v27 = 0;
    [v37 dismissViewControllerAnimated:1 completion:?];
    [v32 setTipPopoverController:v27];

    v29 = v31;
  }

  else
  {
    v2 = v36;
    v3 = Logger.tipsLogger.unsafeMutableAddressor();
    (*(v35 + 16))(v2, v3, v33);
    v25 = Logger.logObject.getter();
    v22 = v25;
    v24 = static os_log_type_t.error.getter();
    v23 = v24;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v26 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v25, v24))
    {
      v4 = v31;
      v13 = static UnsafeMutablePointer.allocate(capacity:)();
      v9 = v13;
      v10 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v11 = 0;
      v14 = sub_1002641E8(0, v10, v10);
      v12 = v14;
      v15 = sub_1002641E8(v11, &type metadata for Any + 8, &type metadata for Any + 8);
      v42 = v13;
      v41 = v14;
      v40 = v15;
      v16 = 0;
      v17 = &v42;
      sub_10026423C(0, &v42);
      sub_10026423C(v16, v17);
      v39 = v26;
      v18 = &v6;
      __chkstk_darwin(&v6);
      v19 = &v6 - 6;
      *(&v6 - 4) = v5;
      *(&v6 - 3) = &v41;
      *(&v6 - 2) = &v40;
      v20 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v21 = v4;
      if (v4)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v22, v23, "Could not dismiss MiniTipPopoverViewController, no existing view controller", v9, 2u);
        v7 = 0;
        sub_10026429C(v12, 0);
        sub_10026429C(v15, v7);
        UnsafeMutablePointer.deallocate()();

        v8 = v21;
      }
    }

    else
    {

      v8 = v31;
    }

    v6 = v8;

    (*(v35 + 8))(v36, v33);
  }
}

unint64_t sub_1003C6E30()
{
  v2 = qword_1006DC840;
  if (!qword_1006DC840)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC840);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1003C6F08()
{
  v2 = *(v0 + OBJC_IVAR___MFMailboxFilterCriteriaBarButtonItem_titleLabel);
  _objc_retain(v2);
  return v2;
}

void *sub_1003C6FC4()
{
  v2 = *(v0 + OBJC_IVAR___MFMailboxFilterCriteriaBarButtonItem_subtitleLabel);
  _objc_retain(v2);
  return v2;
}

void *sub_1003C7080()
{
  v2 = *(v0 + OBJC_IVAR___MFMailboxFilterCriteriaBarButtonItem_chevronImageView);
  _objc_retain(v2);
  return v2;
}

id MFMailboxFilterCriteriaBarButtonItem.init(target:action:)(void *a1, uint64_t a2)
{
  v13 = a2;
  v14 = a1;
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  if (v14[3])
  {
    v8 = v14[3];
    sub_10027EC3C(v14, v8);
    v6 = *(v8 - 8);
    v7 = v6;
    v10 = v4;
    __chkstk_darwin(v4);
    v9 = v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))();
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v9, v8);
    sub_1000160F4(v14);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v4[1] = v12;
  v5 = [v15 initWithTarget:? action:?];
  swift_unknownObjectRelease();
  return v5;
}

unint64_t sub_1003C7288()
{
  v2 = qword_1006DB038;
  if (!qword_1006DB038)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB038);
    return ObjCClassMetadata;
  }

  return v2;
}

void MFMailboxFilterCriteriaBarButtonItem.init(coder:)()
{
  v0 = OBJC_IVAR___MFMailboxFilterCriteriaBarButtonItem_titleLabel;
  sub_100264928();
  *v0 = sub_10025C704();
  v1 = OBJC_IVAR___MFMailboxFilterCriteriaBarButtonItem_subtitleLabel;
  *v1 = sub_10025C704();
  v2 = OBJC_IVAR___MFMailboxFilterCriteriaBarButtonItem_chevronImageView;
  sub_1002649B4();
  *v2 = sub_10025C704();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init?(coder:) has not been implemented", 0x26uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1003C7598(uint64_t a1)
{
  sub_1002AA63C();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithArrangedSubviews:?];
  _objc_release(isa);

  return v4;
}

id sub_1003C760C(void *a1, uint64_t a2)
{
  v14 = a2;
  v15 = a1;
  if (a1[3])
  {
    v8 = v15[3];
    sub_10027EC3C(v15, v8);
    v6 = *(v8 - 8);
    v7 = v6;
    v10 = &v4;
    __chkstk_darwin(&v4);
    v9 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))();
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v9, v8);
    sub_1000160F4(v15);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v5 = [v13 initWithTarget:v12 action:?];
  swift_unknownObjectRelease();
  return v5;
}

unint64_t type metadata accessor for MFMailboxFilterCriteriaBarButtonItem()
{
  v2 = qword_1006DB068;
  if (!qword_1006DB068)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB068);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t static MFMailErrorMessageHelper.invalidRecipientErrorMessage(withRecipients:)(uint64_t a1)
{
  v157 = a1;
  v149 = 0;
  v225 = 0;
  v224 = 0;
  v223._object = 0;
  v223._countAndFlagsBits = 0;
  v222 = 0;
  v217 = 0;
  v216 = 0;
  v215 = 0;
  v205 = 0;
  v204 = 0;
  v144 = 0;
  v194 = 0;
  v191 = 0;
  v187 = 0;
  v186 = 0;
  v185 = 0;
  v184 = 0;
  v179 = 0;
  v178 = 0;
  v173 = 0;
  v172 = 0;
  v170 = 0;
  v165 = 0;
  v164 = 0;
  v159 = 0;
  v158 = 0;
  type metadata accessor for Locale();
  __chkstk_darwin(0);
  v154 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = v154;
  type metadata accessor for String.LocalizationValue();
  v3 = __chkstk_darwin(v157);
  v151 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v151;
  v225 = v3;
  v224 = v1;
  v150 = 1;
  v152 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Main", 4uLL, 1);
  v147 = v152;
  v223 = v152;
  sub_1003C8628();
  sub_10000B074();
  v153 = sub_1003C868C();
  v148 = v153;
  v222 = v153;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("INVALID_RECIPIENT_MESSAGE", 0x19uLL, v150);
  String.LocalizationValue.init(stringLiteral:)();

  v5 = v153;
  sub_100015CC0();
  v218 = v149;
  v219 = v149;
  v220 = 0;
  v221 = v150;
  v155 = String.init(localized:table:bundle:locale:comment:)();
  v156 = v6;
  v216 = v155;
  v217 = v6;

  if (!v157)
  {

    v138 = v155;
    v139 = v156;
    v140 = v144;
    return v138;
  }

  v143 = v157;
  v141 = v157;
  v215 = v157;
  v142 = Array.count.getter();
  if (v142 == 1)
  {
    v7 = v144;
    v127 = 1;
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SINGLE_INVALID_RECIPIENT_ADDRESS_MESSAGE_FORMAT%1$@", 0x33uLL, 1);
    String.LocalizationValue.init(stringLiteral:)();

    v8 = v148;
    sub_100015CC0();
    v130 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v163 = v127;
    v133 = String.init(localized:table:bundle:locale:comment:)();
    v135 = v9;
    v158 = v133;
    v159 = v9;
    v132 = sub_10025C9B0(&qword_1006DB0A8, &unk_100509130);
    v131 = _allocateUninitializedArray<A>(_:)();
    v128 = v10;
    v129 = &type metadata for String;
    *(v10 + 24) = &type metadata for String;
    *(v128 + 32) = sub_1003C89C0();
    Array.subscript.getter();
    sub_1002612B0();
    v134 = v11;
    v136 = static String.localizedStringWithFormat(_:_:)();
    v137 = v12;

    v138 = v136;
    v139 = v137;
    v140 = v7;
    return v138;
  }

  sub_10025C9B0(&qword_1006DB078, &qword_100509110);
  v213 = 2;
  v214 = 3;
  v212 = v142;
  sub_1003C86E4();
  if (static RangeExpression.~= infix(_:_:)())
  {
    v13 = v144;
    v118 = 1;
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QUOTED_INVALID_RECIPIENT_ADDRESS_FORMAT%1$@", 0x2BuLL, 1);
    String.LocalizationValue.init(stringLiteral:)();

    v14 = v148;
    sub_100015CC0();
    v174 = 0;
    v175 = 0;
    v176 = 0;
    v177 = v118;
    v120 = String.init(localized:table:bundle:locale:comment:)();
    v121 = v15;
    v119 = v15;
    v172 = v120;
    v173 = v15;
    v171 = v141;

    v122 = &v60;
    v16 = __chkstk_darwin(v120);
    v123 = &v60 - 4;
    *(&v60 - 2) = v16;
    *(&v60 - 1) = v17;
    v124 = sub_10025C9B0(&unk_1006D69B0, &unk_100503A00);
    v18 = sub_1002B76F0();
    v20 = sub_10025E9D8(sub_1003C8908, v123, v124, &type metadata for String, &type metadata for Never, v18, &protocol witness table for Never, v19);
    v125 = v13;
    v126 = v20;
    if (!v13)
    {
      v115 = v126;

      v170 = v115;
      v102 = 1;
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MULTIPLE_INVALID_RECIPIENT_ADDRESS_MESSAGE_FORMAT%1$@", 0x35uLL, 1);
      String.LocalizationValue.init(stringLiteral:)();

      v21 = v148;
      sub_100015CC0();
      v166 = 0;
      v167 = 0;
      v168 = 0;
      v169 = v102;
      v112 = String.init(localized:table:bundle:locale:comment:)();
      v114 = v22;
      v164 = v112;
      v165 = v22;
      v109 = sub_10025C9B0(&qword_1006DB0A8, &unk_100509130);
      v110 = _allocateUninitializedArray<A>(_:)();
      v107 = v23;
      v103 = objc_opt_self();

      v105 = &type metadata for String;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v111 = [v103 localizedStringByJoiningStrings:isa];

      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v24;
      v107[3] = v105;
      v25 = sub_1003C89C0();
      v26 = v106;
      v27 = v107;
      v28 = v108;
      v107[4] = v25;
      *v27 = v26;
      v27[1] = v28;
      sub_1002612B0();
      v113 = v29;

      v116 = static String.localizedStringWithFormat(_:_:)();
      v117 = v30;

      v138 = v116;
      v139 = v117;
      v140 = 0;
      return v138;
    }

    __break(1u);
  }

  else
  {
    sub_10025C9B0(&qword_1006DB088, &unk_100509118);
    v211 = 4;
    v210 = v142;
    sub_1003C876C();
    if ((static RangeExpression.~= infix(_:_:)() & 1) == 0)
    {

      v138 = v155;
      v139 = v156;
      v140 = v144;
      return v138;
    }

    v31 = v144;
    v90 = 1;
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("QUOTED_INVALID_RECIPIENT_ADDRESS_FORMAT%1$@", 0x2BuLL, 1);
    String.LocalizationValue.init(stringLiteral:)();

    v32 = v148;
    sub_100015CC0();
    v206 = 0;
    v207 = 0;
    v208 = 0;
    v209 = v90;
    v95 = String.init(localized:table:bundle:locale:comment:)();
    v96 = v33;
    v91 = v33;
    v204 = v95;
    v205 = v33;

    v199 = v141;
    v93 = sub_10025C9B0(&unk_1006D69B0, &unk_100503A00);
    v92 = v93;
    v94 = sub_1002B76F0();
    Collection.prefix(_:)();
    v195 = v200;
    v196 = v201;
    v197 = v202;
    v198 = v203;

    v97 = &v60;
    v34 = __chkstk_darwin(v95);
    v98 = &v60 - 4;
    *(&v60 - 2) = v34;
    *(&v60 - 1) = v35;
    v99 = sub_10025C9B0(&qword_1006DB098, &qword_100509128);
    v36 = sub_1003C8938();
    v38 = sub_10025E9D8(sub_1003C8908, v98, v99, &type metadata for String, &type metadata for Never, v36, &protocol witness table for Never, v37);
    v100 = v31;
    v101 = v38;
    if (!v31)
    {
      v87 = v101;

      sub_100294754();
      v194 = v87;

      v192 = v141;
      Collection.dropFirst(_:)();
      v60 = v193[0];
      v75 = &type metadata for String;
      v61 = ArraySlice.count.getter();
      v191 = v61;
      swift_unknownObjectRelease();
      v66 = 1;
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OTHER_INVALID_RECIPIENT_COUNT", 0x1DuLL, 1);
      String.LocalizationValue.init(stringLiteral:)();

      v39 = v148;
      sub_100015CC0();
      v64 = 0;
      v188 = 0;
      v189 = 0;
      v65 = 0;
      v190 = __PAIR16__(v66, 0);
      v62 = String.init(localized:table:bundle:locale:comment:)();
      v86 = v40;
      v186 = v62;
      v187 = v40;
      v79 = sub_10025C9B0(&qword_1006DB0A8, &unk_100509130);
      v67 = v66;
      _allocateUninitializedArray<A>(_:)();
      v41 = v61;
      v42[3] = &type metadata for Int;
      v42[4] = &protocol witness table for Int;
      *v42 = v41;
      sub_1002612B0();
      v63 = v43;
      v69 = static String.localizedStringWithFormat(_:_:)();
      v85 = v44;

      v184 = v69;
      v185 = v85;
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MULTIPLE_INVALID_RECIPIENT_ADDRESS_MESSAGE_FORMAT%1$@", 0x35uLL, v66);
      String.LocalizationValue.init(stringLiteral:)();

      v45 = v148;
      sub_100015CC0();
      v180 = v64;
      v181 = v64;
      v182 = v65;
      v183 = v66;
      v82 = String.init(localized:table:bundle:locale:comment:)();
      v84 = v46;
      v178 = v82;
      v179 = v46;
      v80 = _allocateUninitializedArray<A>(_:)();
      v77 = v47;
      v73 = objc_opt_self();
      v68 = _allocateUninitializedArray<A>(_:)();
      v70 = v48;

      v49 = v70;
      v50 = v85;
      *v70 = v69;
      v49[1] = v50;
      sub_1002612B0();
      v71 = v51;
      v72 = static Array.+ infix(_:_:)();

      v74 = Array._bridgeToObjectiveC()().super.isa;

      v81 = [v73 localizedStringByJoiningStrings:v74];

      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v52;
      v77[3] = v75;
      v53 = sub_1003C89C0();
      v54 = v76;
      v55 = v77;
      v56 = v78;
      v77[4] = v53;
      *v55 = v54;
      v55[1] = v56;
      sub_1002612B0();
      v83 = v57;

      v88 = static String.localizedStringWithFormat(_:_:)();
      v89 = v58;

      v138 = v88;
      v139 = v89;
      v140 = v100;
      return v138;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1003C8628()
{
  v2 = qword_1006DB070;
  if (!qword_1006DB070)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB070);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1003C868C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass:ObjCClassFromMetadata];

  return v0;
}

unint64_t sub_1003C86E4()
{
  v2 = qword_1006DB080;
  if (!qword_1006DB080)
  {
    sub_10025CAA4(&qword_1006DB078, &qword_100509110);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB080);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003C876C()
{
  v2 = qword_1006DB090;
  if (!qword_1006DB090)
  {
    sub_10025CAA4(&qword_1006DB088, &unk_100509118);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB090);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003C87F4@<X0>(uint64_t *a1@<X0>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v9 = a1[1];
  sub_10025C9B0(&qword_1006DB0A8, &unk_100509130);
  _allocateUninitializedArray<A>(_:)();
  v8 = v4;

  v8[3] = &type metadata for String;
  v8[4] = sub_1003C89C0();
  *v8 = v7;
  v8[1] = v9;
  sub_1002612B0();
  v10 = static String.localizedStringWithFormat(_:_:)();
  v11 = v5;

  result = v10;
  *a4 = v10;
  a4[1] = v11;
  return result;
}

unint64_t sub_1003C8938()
{
  v2 = qword_1006DB0A0;
  if (!qword_1006DB0A0)
  {
    sub_10025CAA4(&qword_1006DB098, &qword_100509128);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB0A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003C89C0()
{
  v2 = qword_1006DB0B0;
  if (!qword_1006DB0B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB0B0);
    return WitnessTable;
  }

  return v2;
}

char *sub_1003C8B80()
{
  v6 = 0;
  v1 = type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v5 = &v3 - v4;
  v6 = v0;
  swift_storeEnumTagMultiPayload();
  return sub_1003CB458(v5);
}

uint64_t type metadata accessor for MFReadLaterTriageInteractionState.State(uint64_t a1)
{
  v2 = qword_1006DB1F0;
  if (!qword_1006DB1F0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1003C8C84(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Five Seconds", 0xCuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("One Hour", 8uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Tonight", 7uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Tomorrow", 8uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Custom", 6uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cancel", 6uLL, 1)._countAndFlagsBits;
  }

  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return v2;
}

void *sub_1003C8E34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  v27 = a1;
  v36 = 0;
  v2 = sub_10025C9B0(&qword_1006D8740, &unk_100501CB0);
  v12 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v13 = v6 - v12;
  v14 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6 - v12);
  v15 = v6 - v14;
  v21 = 0;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v20 = v6 - v19;
  v22 = type metadata accessor for Calendar.Component();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v26 = v6 - v25;
  v28 = type metadata accessor for Calendar();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v27);
  v32 = v6 - v31;
  v36 = v4;
  v35 = v4;
  v33 = v4;
  if (v4)
  {
    switch(v27)
    {
      case 1:
        static Calendar.current.getter();
        (*(v23 + 104))(v26, enum case for Calendar.Component.hour(_:), v22);
        static Date.now.getter();
        variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        (*(v17 + 8))(v20, v16);
        (*(v23 + 8))(v26, v22);
        return (*(v29 + 8))(v32, v28);
      case 2:
        v10 = [objc_opt_self() ef_tonight];
        if (v10)
        {
          v9 = v10;
          v8 = v10;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();
          (*(v17 + 32))(v15, v20, v16);
          (*(v17 + 56))(v15, 0, 1, v16);
          _objc_release(v8);
        }

        else
        {
          (*(v17 + 56))(v15, 1, 1, v16);
        }

        return sub_1002A7168(v15, v11);
      case 3:
        v7 = [objc_opt_self() ef_tomorrowMorning];
        if (v7)
        {
          v6[1] = v7;
          v6[0] = v7;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();
          (*(v17 + 32))(v13, v20, v16);
          (*(v17 + 56))(v13, 0, 1, v16);
          _objc_release(v6[0]);
        }

        else
        {
          (*(v17 + 56))(v13, 1, 1, v16);
        }

        return sub_1002A7168(v13, v11);
      case 4:
      case 5:
        return (*(v17 + 56))(v11, 1, 1, v16);
      default:
        v34 = v33;
        result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        break;
    }
  }

  else
  {
    static Calendar.current.getter();
    (*(v23 + 104))(v26, enum case for Calendar.Component.second(_:), v22);
    static Date.now.getter();
    variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (*(v17 + 8))(v20, v16);
    (*(v23 + 8))(v26, v22);
    return (*(v29 + 8))(v32, v28);
  }

  return result;
}

uint64_t sub_1003C954C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
  }

  return 0;
}

uint64_t sub_1003C9780@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1003C954C(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1003C97D8@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v8 = 0;
  v18 = type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  v9 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v19 = &v6 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v10);
  v15 = &v6 - v14;
  v23 = &v6 - v14;
  v16 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v1);
  v17 = &v6 - v16;
  v22 = v3;
  sub_1003CB510(v3, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return (*(v12 + 56))(v7, 1, 1, v11);
    }

    v23 = v15;
    (*(v12 + 32))(v15, v19, v11);
    (*(v12 + 16))(v17, v15, v11);
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
    (*(v12 + 16))(v17, v15, v11);
    (*(v12 + 8))(v15, v11);
  }

  v21 = v17;
  (*(v12 + 16))(v7);
  (*(v12 + 56))(v7, 0, 1, v11);
  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_1003C9BB8()
{
  v49 = 0;
  v48 = 0;
  v50 = 0;
  v33 = 0;
  v34 = type metadata accessor for Date();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v38 = v17 - v37;
  v50 = v17 - v37;
  v41 = type metadata accessor for MFReadLaterTriageInteractionState.State(v0);
  v40 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v39);
  v42 = v17 - v40;
  v49 = v1;
  sub_1003CB510(v1, v17 - v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v48 = v38;
      (*(v35 + 32))(v38, v42, v34);
      v48 = v38;
      v17[0] = 15;
      v7 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      v20 = &v46;
      v46 = v7;
      v47 = v8;
      v18 = 1;
      v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Date selected: ", v17[0], 1);
      v17[1] = v9._object;
      DefaultStringInterpolation.appendLiteral(_:)(v9);

      sub_1003CB638();
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v18 & 1);
      object = v10._object;
      DefaultStringInterpolation.appendLiteral(_:)(v10);

      v22 = v46;
      v21 = v47;

      sub_100268744(v20);
      v23._countAndFlagsBits = String.init(stringInterpolation:)();
      v23._object = v11;
      (*(v35 + 8))(v38, v34);
      v32 = v23;
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("None", 4uLL, 1);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Select custom date", 0x12uLL, 1);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Remove date", 0xBuLL, 1);
        v14 = v12._object;
        countAndFlagsBits = v12._countAndFlagsBits;
      }

      else
      {
        v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cancel", 6uLL, 1);
        v14 = v15._object;
        countAndFlagsBits = v15._countAndFlagsBits;
      }

      v32._countAndFlagsBits = countAndFlagsBits;
      v32._object = v14;
    }
  }

  else
  {
    (*(v35 + 32))(v38, v42, v34);
    v50 = v38;
    v24 = 11;
    v2 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v28 = &v44;
    v44 = v2;
    v45 = v3;
    v26 = 1;
    v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Edit date: ", v24, 1);
    v25 = v4._object;
    DefaultStringInterpolation.appendLiteral(_:)(v4);

    sub_1003CB638();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v26 & 1);
    v27 = v5._object;
    DefaultStringInterpolation.appendLiteral(_:)(v5);

    v30 = v44;
    v29 = v45;

    sub_100268744(v28);
    v31._countAndFlagsBits = String.init(stringInterpolation:)();
    v31._object = v6;
    (*(v35 + 8))(v38, v34);
    v32 = v31;
  }

  return v32._countAndFlagsBits;
}

uint64_t sub_1003CA0CC(uint64_t a1, const void *a2)
{
  v39 = a1;
  v47 = a2;
  v57 = 0;
  v56 = 0;
  v37 = 0;
  v26 = type metadata accessor for Date();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v30 = v13 - v29;
  v31 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13 - v29);
  v32 = v13 - v31;
  v33 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13 - v31);
  v34 = v13 - v33;
  v35 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13 - v33);
  v36 = v13 - v35;
  v51 = sub_10025C9B0(&unk_1006DB240, &unk_100509380);
  v38 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v37);
  v53 = v13 - v38;
  v52 = type metadata accessor for MFReadLaterTriageInteractionState.State(v5);
  v45 = *(*(v52 - 8) + 64);
  v40 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v39);
  v41 = v13 - v40;
  v42 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v6);
  v43 = v13 - v42;
  v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v7);
  v50 = v13 - v44;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v8);
  v48 = v13 - v46;
  v57 = v9;
  v56 = v10;
  sub_1003CB510(v9, v13 - v46);
  sub_1003CB510(v47, v50);
  v49 = *(v51 + 48);
  sub_1003CD2A8(v48, v53);
  sub_1003CD2A8(v50, &v53[v49]);
  v54 = *(v51 + 48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      switch(EnumCaseMultiPayload)
      {
        case 2:
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            goto LABEL_26;
          }

          break;
        case 3:
          if (swift_getEnumCaseMultiPayload() != 3)
          {
            goto LABEL_26;
          }

          break;
        case 4:
          if (swift_getEnumCaseMultiPayload() != 4)
          {
            goto LABEL_26;
          }

          break;
        default:
          v11 = swift_getEnumCaseMultiPayload();
          if (v11 == 5)
          {
            break;
          }

LABEL_26:
          sub_1003CF7E0(v53);
          v25 = 0;
          return v25 & 1;
      }

      sub_1003CD09C(v53);
      v25 = 1;
      return v25 & 1;
    }

    sub_1003CB510(v53, v41);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v27 + 8))(v41, v26);
      goto LABEL_26;
    }

    v18 = *(v27 + 32);
    v17 = v27 + 32;
    v18(v32, v41, v26);
    v18(v30, &v53[v54], v26);
    if (static Date.== infix(_:_:)())
    {
      v16 = *(v27 + 8);
      v15 = v27 + 8;
      v16(v30, v26);
      v16(v32, v26);
      sub_1003CD09C(v53);
      v25 = 1;
    }

    else
    {
      v14 = *(v27 + 8);
      v13[1] = v27 + 8;
      v14(v30, v26);
      v14(v32, v26);
      sub_1003CD09C(v53);
      v25 = 0;
    }
  }

  else
  {
    sub_1003CB510(v53, v43);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v27 + 8))(v43, v26);
      goto LABEL_26;
    }

    v24 = *(v27 + 32);
    v23 = v27 + 32;
    v24(v36, v43, v26);
    v24(v34, &v53[v54], v26);
    if (static Date.== infix(_:_:)())
    {
      v22 = *(v27 + 8);
      v21 = v27 + 8;
      v22(v34, v26);
      v22(v36, v26);
      sub_1003CD09C(v53);
      v25 = 1;
    }

    else
    {
      v20 = *(v27 + 8);
      v19 = v27 + 8;
      v20(v34, v26);
      v20(v36, v26);
      sub_1003CD09C(v53);
      v25 = 0;
    }
  }

  return v25 & 1;
}

uint64_t sub_1003CA958(uint64_t a1)
{
  v11 = a1;
  v24 = 0;
  v23 = 0;
  v5 = 0;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = v6 - 8;
  v9 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(0);
  v10 = &v5 - v9;
  v14 = type metadata accessor for MFReadLaterTriageInteractionState.State(v1);
  v13 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v12);
  v15 = &v5 - v13;
  v24 = v3;
  v23 = v2;
  sub_1003CB510(v2, &v5 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v7 + 32))(v10, v15, v6);
      v20 = 3;
      Hasher.combine<A>(_:)();
      sub_1003CF760();
      Hasher.combine<A>(_:)();
      return (*(v7 + 8))(v10, v6);
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v17 = 0;
      return Hasher.combine<A>(_:)();
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v18 = 1;
      return Hasher.combine<A>(_:)();
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v21 = 4;
      }

      else
      {
        v22 = 5;
      }

      return Hasher.combine<A>(_:)();
    }
  }

  else
  {
    (*(v7 + 32))(v10, v15, v6);
    v19 = 2;
    Hasher.combine<A>(_:)();
    sub_1003CF760();
    Hasher.combine<A>(_:)();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1003CACA8()
{
  type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  sub_1003CB6B8();
  return _hashValue<A>(for:)();
}

char *sub_1003CAD54(uint64_t a1)
{
  v17 = a1;
  v20 = 0;
  v22 = sub_1003CB04C;
  v26 = 0;
  v25 = 0;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v16 = &v4 - v15;
  v18 = (*(*(sub_10025C9B0(&qword_1006D8740, &unk_100501CB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v17);
  v19 = &v4 - v18;
  v26 = v2;
  v25 = v1;
  v23 = v2;
  v21 = sub_10025C9B0(&unk_1006DCAF0, &unk_100509160);
  sub_1003CB738();
  Sequence.first(where:)();
  v11 = v24;
  if (v24 && (v10 = v11, v8 = v11, swift_getObjectType(), v9 = [v8 readLater], swift_unknownObjectRelease(), v9))
  {
    v7 = v9;
    v5 = v9;
    v6 = [v9 date];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v13 + 32))(v19, v16, v12);
    _objc_release(v5);
    (*(v13 + 56))(v19, 0, 1, v12);
    _objc_release(v6);
  }

  else
  {
    (*(v13 + 56))(v19, 1, 1, v12);
  }

  v4 = sub_1003CB0F8(v19);
  sub_1002A70C0(v19);
  return v4;
}

BOOL sub_1003CB04C(id *a1)
{
  v4 = 0;
  v4 = *a1;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v2 = [v4 readLater];
  swift_unknownObjectRelease();
  v3 = v2;
  sub_10026A58C(&v3);
  return v2 != 0;
}

char *sub_1003CB0F8(uint64_t a1)
{
  v12 = a1;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v10 = 0;
  v7 = type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v9 = &v5 - v8;
  v11 = (*(*(sub_10025C9B0(&qword_1006D8740, &unk_100501CB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v18 = &v5 - v11;
  v17 = type metadata accessor for Date();
  v15 = *(v17 - 8);
  v16 = v17 - 8;
  v13 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v12);
  v14 = &v5 - v13;
  v21 = &v5 - v13;
  v20 = v2;
  v19 = v1;
  sub_1002F29E4(v2, v3);
  if ((*(v15 + 48))(v18, 1, v17) == 1)
  {
    sub_1002A70C0(v18);
    swift_storeEnumTagMultiPayload();
    return sub_1003CB458(v9);
  }

  else
  {
    (*(v15 + 32))(v14, v18, v17);
    (*(v15 + 16))(v9, v14, v17);
    swift_storeEnumTagMultiPayload();
    v5 = sub_1003CB458(v9);
    (*(v15 + 8))(v14, v17);
    return v5;
  }
}

unint64_t sub_1003CB494()
{
  v2 = qword_1006DB100;
  if (!qword_1006DB100)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB100);
    return WitnessTable;
  }

  return v2;
}

void *sub_1003CB510(const void *a1, void *a2)
{
  v6 = type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = type metadata accessor for Date();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

unint64_t sub_1003CB638()
{
  v2 = qword_1006DB108;
  if (!qword_1006DB108)
  {
    type metadata accessor for Date();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB108);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003CB6B8()
{
  v2 = qword_1006DB110;
  if (!qword_1006DB110)
  {
    type metadata accessor for MFReadLaterTriageInteractionState.State(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB110);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003CB738()
{
  v2 = qword_1006DB120;
  if (!qword_1006DB120)
  {
    sub_10025CAA4(&unk_1006DCAF0, &unk_100509160);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB120);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003CBA2C()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006DB0E0);
  sub_1000208F4(v1, qword_1006DB0E0);
  type metadata accessor for MFReadLaterTriageInteractionState(0);
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_1003CBA94()
{
  if (qword_1006D6068 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006DB0E0);
}

uint64_t sub_1003CBB00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1003CBA94();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1003CBBD4()
{
  v12 = 0;
  v9 = type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  v5 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v9);
  v8 = &v3 - v5;
  v12 = v0;
  v6 = (v0 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  v7 = &v11;
  swift_beginAccess();
  sub_1003CB510(v6, v8);
  swift_endAccess();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_1003CD09C(v8);
      v4 = 0;
      return v4 & 1;
    }
  }

  else
  {
    v1 = type metadata accessor for Date();
    (*(*(v1 - 8) + 8))(v8);
  }

  v4 = 1;
  return v4 & 1;
}

uint64_t sub_1003CBD84()
{
  v12 = 0;
  v7 = type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  v3 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v8 = &v3 - v3;
  v4 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v3 - v3);
  v9 = &v3 - v4;
  v12 = v0;
  v5 = (v0 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  v6 = &v11;
  swift_beginAccess();
  sub_1003CB510(v5, v9);
  swift_endAccess();
  swift_storeEnumTagMultiPayload();
  v10 = sub_1003CA0CC(v9, v8);
  sub_1003CD09C(v8);
  sub_1003CD09C(v9);
  return v10 & 1;
}

uint64_t sub_1003CBF14()
{
  v12 = 0;
  v7 = type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  v3 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v8 = &v3 - v3;
  v4 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v3 - v3);
  v9 = &v3 - v4;
  v12 = v0;
  v5 = (v0 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  v6 = &v11;
  swift_beginAccess();
  sub_1003CB510(v5, v9);
  swift_endAccess();
  swift_storeEnumTagMultiPayload();
  v10 = sub_1003CA0CC(v9, v8);
  sub_1003CD09C(v8);
  sub_1003CD09C(v9);
  return v10 & 1;
}

uint64_t sub_1003CC0A4()
{
  v12 = 0;
  v7 = type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  v3 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v8 = &v3 - v3;
  v4 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v3 - v3);
  v9 = &v3 - v4;
  v12 = v0;
  v5 = (v0 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  v6 = &v11;
  swift_beginAccess();
  sub_1003CB510(v5, v9);
  swift_endAccess();
  swift_storeEnumTagMultiPayload();
  v10 = sub_1003CA0CC(v9, v8);
  sub_1003CD09C(v8);
  sub_1003CD09C(v9);
  return v10 & 1;
}

uint64_t sub_1003CC234()
{
  v10 = 0;
  v8 = type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  v4 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v7 = &v3 - v4;
  v10 = v0;
  v5 = (v0 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  v6 = &v9;
  swift_beginAccess();
  sub_1003CB510(v5, v7);
  swift_endAccess();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = type metadata accessor for Date();
    (*(*(v1 - 8) + 8))(v7);
    HIDWORD(v3) = 1;
  }

  else
  {
    sub_1003CD09C(v7);
    HIDWORD(v3) = 0;
  }

  return BYTE4(v3) & 1;
}

uint64_t sub_1003CC4D8@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v12 = 0;
  v1 = type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v2 = &v5 - v6;
  v10 = &v5 - v6;
  v12 = v3;
  v7 = (v3 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  v8 = &v11;
  swift_beginAccess();
  sub_1003CB510(v7, v2);
  swift_endAccess();
  sub_1003C97D8(v9);
  return sub_1003CD09C(v10);
}

uint64_t sub_1003CC5B0@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  swift_beginAccess();
  sub_1003CB510(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1003CC614(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(type metadata accessor for MFReadLaterTriageInteractionState.State(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = __chkstk_darwin(v7);
  v9 = v1;
  sub_1003CB510(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  v6 = &v8;
  swift_beginAccess();
  sub_1003CD168(v4, v5);
  swift_endAccess();
  return sub_1003CD09C(v7);
}

id sub_1003CC6EC()
{
  ObjectType = swift_getObjectType();
  v9 = 0;
  v1 = type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  v3 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v4 = &v3 - v3;
  v9 = v0;
  v5 = v0;
  swift_storeEnumTagMultiPayload();
  sub_1003CD2A8(v4, &v5[OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state]);
  v8.receiver = v9;
  v8.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v8, "init");
  _objc_retain(v7);
  v9 = v7;
  _objc_release(v7);
  return v7;
}

char *sub_1003CC80C(const void *a1)
{
  v44 = a1;
  v38 = v1;
  v32 = 0;
  v49 = sub_1003CD3EC;
  v52 = sub_1003CF1A8;
  v56 = sub_10026EE84;
  v58 = sub_10026434C;
  v60 = sub_10026434C;
  v63 = sub_10026EF2C;
  ObjectType = swift_getObjectType();
  v76 = 0;
  v75 = 0;
  v34 = 0;
  v35 = 0;
  v36 = *(type metadata accessor for MFReadLaterTriageInteractionState.State(0) - 8);
  v45 = v36;
  v46 = *(v36 + 64);
  v37 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v48 = &v21 - v37;
  v43 = type metadata accessor for Logger();
  v41 = *(v43 - 8);
  v42 = v43 - 8;
  v39 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v44);
  v3 = &v21 - v39;
  v40 = &v21 - v39;
  v75 = v2;
  v76 = v4;
  v5 = sub_1003CBA94();
  (*(v41 + 16))(v3, v5, v43);
  sub_1003CB510(v44, v48);
  v47 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v54 = 7;
  v50 = swift_allocObject();
  sub_1003CD2A8(v48, (v50 + v47));

  v53 = 32;
  v6 = swift_allocObject();
  v7 = v50;
  v55 = v6;
  *(v6 + 16) = v49;
  *(v6 + 24) = v7;

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  v51 = 17;
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v8 = swift_allocObject();
  v9 = v55;
  v57 = v8;
  *(v8 + 16) = v52;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v57;
  v64 = v10;
  *(v10 + 16) = v56;
  *(v10 + 24) = v11;
  v66 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v62 = _allocateUninitializedArray<A>(_:)();
  v65 = v12;

  v13 = v59;
  v14 = v65;
  *v65 = v58;
  v14[1] = v13;

  v15 = v61;
  v16 = v65;
  v65[2] = v60;
  v16[3] = v15;

  v17 = v64;
  v18 = v65;
  v65[4] = v63;
  v18[5] = v17;
  sub_1002612B0();

  if (os_log_type_enabled(v67, v68))
  {
    v19 = v34;
    v25 = static UnsafeMutablePointer.allocate(capacity:)();
    v24 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v26 = sub_1002641E8(0, v24, v24);
    v27 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v28 = &v73;
    v73 = v25;
    v29 = &v72;
    v72 = v26;
    v30 = &v71;
    v71 = v27;
    sub_10026423C(2, &v73);
    sub_10026423C(1, v28);
    v69 = v58;
    v70 = v59;
    sub_100264250(&v69, v28, v29, v30);
    v31 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v69 = v60;
      v70 = v61;
      sub_100264250(&v69, &v73, &v72, &v71);
      v23 = 0;
      v69 = v63;
      v70 = v64;
      sub_100264250(&v69, &v73, &v72, &v71);
      _os_log_impl(&_mh_execute_header, v67, v68, "Create interaction state with state: %s", v25, 0xCu);
      sub_10026429C(v26, 0);
      sub_10026429C(v27, 1);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v67);
  (*(v41 + 8))(v40, v43);
  v21 = v76;
  sub_1003CB510(v44, v48);
  sub_1003CD2A8(v48, &v21[OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state]);
  v74.receiver = v76;
  v74.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v74, "init");
  _objc_retain(v22);
  v76 = v22;
  sub_1003CD09C(v44);
  _objc_release(v76);
  return v22;
}

uint64_t type metadata accessor for MFReadLaterTriageInteractionState(uint64_t a1)
{
  v2 = qword_1006DB170;
  if (!qword_1006DB170)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1003CD09C(uint64_t a1)
{
  type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v1 = type metadata accessor for Date();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

void *sub_1003CD168(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1003CD09C(a2);
    v4 = type metadata accessor for MFReadLaterTriageInteractionState.State(0);
    if (swift_getEnumCaseMultiPayload() < 2)
    {
      v2 = type metadata accessor for Date();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

void *sub_1003CD2A8(const void *a1, void *a2)
{
  v6 = type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = type metadata accessor for Date();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

void *sub_1003CD3EC@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  v3 = (v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)));

  return sub_1003CD3D0(v3, a1);
}

uint64_t sub_1003CD460(unint64_t a1)
{
  v67 = a1;
  v68 = sub_10026E82C;
  v71 = sub_1003CF284;
  v75 = sub_10026EE84;
  v77 = sub_10026434C;
  v79 = sub_10026434C;
  v82 = sub_10026EF2C;
  v47 = "Fatal error";
  v48 = "MobileMail/MFReadLaterTriageInteractionState.swift";
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v49 = 0;
  v55 = 0;
  v50 = type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  v51 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v52 = v24 - v51;
  v53 = (*(*(sub_10025C9B0(&qword_1006D8740, &unk_100501CB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55);
  v54 = v24 - v53;
  v56 = type metadata accessor for Date();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v55);
  v60 = v24 - v59;
  v103 = v24 - v59;
  v66 = type metadata accessor for Logger();
  v64 = *(v66 - 8);
  v65 = v66 - 8;
  v62 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v67);
  v2 = v24 - v62;
  v63 = v24 - v62;
  v102 = v1;
  v101 = v3;
  v4 = sub_1003CBA94();
  (*(v64 + 16))(v2, v4, v66);
  v73 = 7;
  v69 = swift_allocObject();
  *(v69 + 16) = v67;

  v72 = 32;
  v5 = swift_allocObject();
  v6 = v69;
  v74 = v5;
  *(v5 + 16) = v68;
  *(v5 + 24) = v6;

  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();
  v70 = 17;
  v78 = swift_allocObject();
  *(v78 + 16) = 32;
  v80 = swift_allocObject();
  *(v80 + 16) = 8;
  v7 = swift_allocObject();
  v8 = v74;
  v76 = v7;
  *(v7 + 16) = v71;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v76;
  v83 = v9;
  *(v9 + 16) = v75;
  *(v9 + 24) = v10;
  v85 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v81 = _allocateUninitializedArray<A>(_:)();
  v84 = v11;

  v12 = v78;
  v13 = v84;
  *v84 = v77;
  v13[1] = v12;

  v14 = v80;
  v15 = v84;
  v84[2] = v79;
  v15[3] = v14;

  v16 = v83;
  v17 = v84;
  v84[4] = v82;
  v17[5] = v16;
  sub_1002612B0();

  if (os_log_type_enabled(v86, v87))
  {
    v18 = v49;
    v40 = static UnsafeMutablePointer.allocate(capacity:)();
    v39 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v41 = sub_1002641E8(0, v39, v39);
    v42 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v43 = &v92;
    v92 = v40;
    v44 = &v91;
    v91 = v41;
    v45 = &v90;
    v90 = v42;
    sub_10026423C(2, &v92);
    sub_10026423C(1, v43);
    v88 = v77;
    v89 = v78;
    sub_100264250(&v88, v43, v44, v45);
    v46 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v88 = v79;
      v89 = v80;
      sub_100264250(&v88, &v92, &v91, &v90);
      v38 = 0;
      v88 = v82;
      v89 = v83;
      sub_100264250(&v88, &v92, &v91, &v90);
      _os_log_impl(&_mh_execute_header, v86, v87, "Perform action: %s", v40, 0xCu);
      sub_10026429C(v41, 0);
      sub_10026429C(v42, 1);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v86);
  (*(v64 + 8))(v63, v66);
  v100 = v67;
  v37 = v67;
  if (v67 < 4)
  {
    sub_1003C8E34(v67, v54);
    if ((*(v57 + 48))(v54, 1, v56) != 1)
    {
      (*(v57 + 32))(v60, v54, v56);
      (*(v57 + 16))(v52, v60, v56);
      swift_storeEnumTagMultiPayload();
      v35 = (v61 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
      v36 = &v93;
      swift_beginAccess();
      sub_1003CD168(v52, v35);
      swift_endAccess();
      return (*(v57 + 8))(v60, v56);
    }

    sub_1002A70C0(v54);
    v27 = 45;
    v19 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v32 = &v95;
    v95 = v19;
    v96 = v20;
    v30 = 1;
    v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unexpected state - missing date from action: ", v27, 1);
    object = v21._object;
    DefaultStringInterpolation.appendLiteral(_:)(v21);

    v29 = &v94;
    v94 = v67;
    sub_1003CF2DC();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v30 & 1);
    v31 = v22._object;
    DefaultStringInterpolation.appendLiteral(_:)(v22);

    v34 = v95;
    v33 = v96;

    sub_100268744(v32);
    String.init(stringInterpolation:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_13;
  }

  if (v67 == 4)
  {
LABEL_13:
    swift_storeEnumTagMultiPayload();
    v25 = (v61 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
    v26 = &v97;
    swift_beginAccess();
    sub_1003CD168(v52, v25);
    return swift_endAccess();
  }

  if (v67 == 5)
  {
    swift_storeEnumTagMultiPayload();
    v24[0] = (v61 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
    v24[1] = &v98;
    swift_beginAccess();
    sub_1003CD168(v52, v24[0]);
    return swift_endAccess();
  }

  else
  {
    v99 = v37;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003CE220(uint64_t a1)
{
  v41 = a1;
  v51 = sub_1003CF358;
  v54 = sub_1003CF3CC;
  v58 = sub_10026EE84;
  v60 = sub_10026434C;
  v62 = sub_10026434C;
  v65 = sub_10026EF2C;
  v78 = 0;
  v77 = 0;
  v29 = 0;
  v33 = 0;
  v30 = type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  v31 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v32 = v20 - v31;
  v50 = type metadata accessor for Date();
  v46 = *(v50 - 8);
  v47 = v50 - 8;
  v44 = v46;
  v45 = *(v46 + 64);
  v34 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v49 = v20 - v34;
  v40 = type metadata accessor for Logger();
  v38 = *(v40 - 8);
  v39 = v40 - 8;
  v36 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v41);
  v2 = v20 - v36;
  v37 = v20 - v36;
  v78 = v1;
  v77 = v3;
  v4 = sub_1003CBA94();
  (*(v38 + 16))(v2, v4, v40);
  v42 = *(v46 + 16);
  v43 = v46 + 16;
  v42(v49, v41, v50);
  v48 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v56 = 7;
  v52 = swift_allocObject();
  (*(v46 + 32))(v52 + v48, v49, v50);

  v55 = 32;
  v5 = swift_allocObject();
  v6 = v52;
  v57 = v5;
  *(v5 + 16) = v51;
  *(v5 + 24) = v6;

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  v53 = 17;
  v61 = swift_allocObject();
  *(v61 + 16) = 32;
  v63 = swift_allocObject();
  *(v63 + 16) = 8;
  v7 = swift_allocObject();
  v8 = v57;
  v59 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v59;
  v66 = v9;
  *(v9 + 16) = v58;
  *(v9 + 24) = v10;
  v68 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v64 = _allocateUninitializedArray<A>(_:)();
  v67 = v11;

  v12 = v61;
  v13 = v67;
  *v67 = v60;
  v13[1] = v12;

  v14 = v63;
  v15 = v67;
  v67[2] = v62;
  v15[3] = v14;

  v16 = v66;
  v17 = v67;
  v67[4] = v65;
  v17[5] = v16;
  sub_1002612B0();

  if (os_log_type_enabled(v69, v70))
  {
    v18 = v29;
    v22 = static UnsafeMutablePointer.allocate(capacity:)();
    v21 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v23 = sub_1002641E8(0, v21, v21);
    v24 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v25 = &v75;
    v75 = v22;
    v26 = &v74;
    v74 = v23;
    v27 = &v73;
    v73 = v24;
    sub_10026423C(2, &v75);
    sub_10026423C(1, v25);
    v71 = v60;
    v72 = v61;
    sub_100264250(&v71, v25, v26, v27);
    v28 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v71 = v62;
      v72 = v63;
      sub_100264250(&v71, &v75, &v74, &v73);
      v20[2] = 0;
      v71 = v65;
      v72 = v66;
      sub_100264250(&v71, &v75, &v74, &v73);
      _os_log_impl(&_mh_execute_header, v69, v70, "Did select custom date: %s", v22, 0xCu);
      sub_10026429C(v23, 0);
      sub_10026429C(v24, 1);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v69);
  (*(v38 + 8))(v37, v40);
  v42(v32, v41, v50);
  swift_storeEnumTagMultiPayload();
  v20[0] = (v35 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  v20[1] = &v76;
  swift_beginAccess();
  sub_1003CD168(v32, v20[0]);
  return swift_endAccess();
}

uint64_t sub_1003CEC8C()
{
  v38 = 0;
  v47 = 0;
  v25 = 0;
  v26 = type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  __chkstk_darwin(0);
  v27 = &v7 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Logger();
  v29 = v35;
  v30 = *(v35 - 8);
  v34 = v30;
  v31 = v30;
  v32 = *(v30 + 64);
  __chkstk_darwin(v35 - 8);
  v1 = &v7 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v1;
  v47 = v2;
  v3 = sub_1003CBA94();
  (*(v34 + 16))(v1, v3, v35);
  v40 = Logger.logObject.getter();
  v36 = v40;
  v39 = static os_log_type_t.default.getter();
  v37 = v39;
  sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v41 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v40, v39))
  {
    v4 = v25;
    v16 = static UnsafeMutablePointer.allocate(capacity:)();
    v12 = v16;
    v13 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v14 = 0;
    v17 = sub_1002641E8(0, v13, v13);
    v15 = v17;
    v18 = sub_1002641E8(v14, &type metadata for Any + 8, &type metadata for Any + 8);
    v45 = v16;
    v44 = v17;
    v43 = v18;
    v19 = 0;
    v20 = &v45;
    sub_10026423C(0, &v45);
    sub_10026423C(v19, v20);
    v42 = v41;
    v21 = &v7;
    __chkstk_darwin(&v7);
    v22 = &v7 - 6;
    *(&v7 - 4) = v5;
    *(&v7 - 3) = &v44;
    *(&v7 - 2) = &v43;
    v23 = sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v24 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v36, v37, "Remove date", v12, 2u);
      v10 = 0;
      sub_10026429C(v15, 0);
      sub_10026429C(v18, v10);
      UnsafeMutablePointer.deallocate()();

      v11 = v24;
    }
  }

  else
  {

    v11 = v25;
  }

  (*(v31 + 8))(v33, v29);
  swift_storeEnumTagMultiPayload();
  v8 = (v28 + OBJC_IVAR____TtC10MobileMail33MFReadLaterTriageInteractionState_state);
  v9 = &v46;
  swift_beginAccess();
  sub_1003CD168(v27, v8);
  return swift_endAccess();
}

uint64_t sub_1003CF1A8()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  v1 = sub_1003CF204();

  return sub_10026E834(v5, v3, v4, v1);
}

unint64_t sub_1003CF204()
{
  v2 = qword_1006DB138;
  if (!qword_1006DB138)
  {
    type metadata accessor for MFReadLaterTriageInteractionState.State(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB138);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003CF284(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v2 = sub_1003CF2DC();

  return sub_10026E834(v5, v4, &unk_10065D810, v2);
}

unint64_t sub_1003CF2DC()
{
  v2 = qword_1006DB140;
  if (!qword_1006DB140)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB140);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003CF358@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1003CEB14(v3, a1);
}

uint64_t sub_1003CF3CC()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for Date();
  v1 = sub_1003CB638();

  return sub_10026E834(v5, v3, v4, v1);
}

uint64_t sub_1003CF458(uint64_t a1)
{
  updated = type metadata accessor for MFReadLaterTriageInteractionState.State(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1003CF5A4(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return v3;
}

unint64_t sub_1003CF64C()
{
  v2 = qword_1006DB228;
  if (!qword_1006DB228)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB228);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003CF6E0()
{
  v2 = qword_1006DB230;
  if (!qword_1006DB230)
  {
    type metadata accessor for MFReadLaterTriageInteractionState.State(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003CF760()
{
  v2 = qword_1006DB238;
  if (!qword_1006DB238)
  {
    type metadata accessor for Date();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB238);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003CF7E0(uint64_t a1)
{
  type metadata accessor for MFReadLaterTriageInteractionState.State(0);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v1 = type metadata accessor for Date();
    (*(*(v1 - 8) + 8))(a1);
  }

  v4 = a1 + *(sub_10025C9B0(&unk_1006DB240, &unk_100509380) + 48);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = type metadata accessor for Date();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

id sub_1003CF970()
{
  type metadata accessor for MFSafetyCheckWhenBlocking();
  result = ConversationNavigationBarItemsManager.__allocating_init()();
  static MFSafetyCheckWhenBlocking.shared = result;
  return result;
}

uint64_t *MFSafetyCheckWhenBlocking.shared.unsafeMutableAddressor()
{
  if (qword_1006D6070 != -1)
  {
    swift_once();
  }

  return &static MFSafetyCheckWhenBlocking.shared;
}

void *static MFSafetyCheckWhenBlocking.shared.getter()
{
  v1 = *MFSafetyCheckWhenBlocking.shared.unsafeMutableAddressor();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_1003CFAB8()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006DB250);
  sub_1000208F4(v1, qword_1006DB250);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.mobilemail", 0x14uLL, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MFSafetyCheckWhenBlocking", 0x19uLL, 1);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003CFB5C()
{
  if (qword_1006D6078 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006DB250);
}

uint64_t sub_1003CFBC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1003CFB5C();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1003CFC34()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail25MFSafetyCheckWhenBlocking_fetchSharingTask);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1003CFC9C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC10MobileMail25MFSafetyCheckWhenBlocking_fetchSharingTask);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

Swift::Void __swiftcall MFSafetyCheckWhenBlocking.prefetchSharing()()
{
  v13 = &unk_1005093C0;
  ObjectType = swift_getObjectType();
  v18 = 0;
  v1 = sub_10025C9B0(&qword_1006D7ED8, &qword_1005093B0);
  v15 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v16 = &v9 - v15;
  v18 = v0;
  v17 = sub_1003CFC34();
  v12 = v17 == 0;
  v11 = v12;
  sub_100268928(&v17);
  if (v11)
  {
    v10 = 0;
    v2 = type metadata accessor for TaskPriority();
    (*(*(v2 - 8) + 56))(v16, 1);
    v3 = swift_allocObject();
    v4 = ObjectType;
    v5 = v10;
    v6 = v16;
    v7 = v13;
    v3[2] = 0;
    v3[3] = 0;
    v3[4] = v4;
    v8 = sub_1002C7DB4(v5, v5, v6, v7, v3, &type metadata for () + 8);
    sub_1003CFC9C(v8);
  }
}

uint64_t sub_1003CFF2C()
{
  v0[2] = v0;
  v1 = type metadata accessor for Logger();
  v0[11] = v1;
  v0[12] = *(v1 - 8);
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();

  return _swift_task_switch(sub_1003D001C, 0);
}

uint64_t sub_1003D001C()
{
  v1 = v0[14];
  v17 = v0[12];
  v18 = v0[11];
  v0[2] = v0;
  v2 = sub_1003CFB5C();
  v3 = *(v17 + 16);
  v0[15] = v3;
  v0[16] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v18);
  v20 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  v0[17] = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v21 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v20, v19))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v13 = sub_1002641E8(0, v11, v11);
    v14 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v16 + 56) = buf;
    *(v16 + 64) = v13;
    *(v16 + 72) = v14;
    sub_10026423C(0, (v16 + 56));
    sub_10026423C(0, (v16 + 56));
    *(v16 + 80) = v21;
    v15 = swift_task_alloc();
    v15[2] = v16 + 56;
    v15[3] = v16 + 64;
    v15[4] = v16 + 72;
    sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();

    _os_log_impl(&_mh_execute_header, v20, v19, "Fetching sharing permissions", buf, 2u);
    sub_10026429C(v13, 0);
    sub_10026429C(v14, 0);
    UnsafeMutablePointer.deallocate()();
  }

  *(v16 + 144) = 0;
  v8 = *(v16 + 112);
  v9 = *(v16 + 88);
  v7 = *(v16 + 96);
  _objc_release(v20);
  v4 = *(v7 + 8);
  *(v16 + 152) = v4;
  *(v16 + 160) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v8, v9);
  type metadata accessor for DSBlockingController();
  *(v16 + 168) = static DSBlockingController.sharedInstance.getter();
  v10 = (&async function pointer to dispatch thunk of DSBlockingController.prefetchSharing() + async function pointer to dispatch thunk of DSBlockingController.prefetchSharing());
  v5 = swift_task_alloc();
  *(v16 + 176) = v5;
  *v5 = *(v16 + 16);
  v5[1] = sub_1003D0400;

  return v10();
}

uint64_t sub_1003D0400()
{
  *(*v0 + 16) = *v0;

  return _swift_task_switch(sub_1003D0538, 0);
}

uint64_t sub_1003D0538()
{
  v15 = *(v0 + 120);
  v1 = *(v0 + 104);
  v14 = *(v0 + 88);
  *(v0 + 16) = v0;
  v2 = sub_1003CFB5C();
  v15(v1, v2, v14);
  v17 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  v18 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v17, v16))
  {
    v3 = *(v0 + 144);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v9 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v11 = sub_1002641E8(0, v9, v9);
    v12 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v0 + 24) = buf;
    *(v0 + 32) = v11;
    *(v0 + 40) = v12;
    sub_10026423C(0, (v0 + 24));
    sub_10026423C(0, (v0 + 24));
    *(v0 + 48) = v18;
    v13 = swift_task_alloc();
    v13[2] = v0 + 24;
    v13[3] = v0 + 32;
    v13[4] = v0 + 40;
    sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&_mh_execute_header, v17, v16, "Completed fetching sharing permissions", buf, 2u);
    sub_10026429C(v11, 0);
    sub_10026429C(v12, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v7 = *(v0 + 152);
  v8 = *(v0 + 104);
  v6 = *(v0 + 88);
  _objc_release(v17);
  v7(v8, v6);

  v5 = *(*(v0 + 16) + 8);

  return v5();
}

uint64_t sub_1003D0884()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_10025FAC4;

  return sub_1003CFF2C();
}

uint64_t sub_1003D09AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v34 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v28 = &unk_1005093D0;
  ObjectType = swift_getObjectType();
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v35 = (*(*(sub_10025C9B0(&qword_1006D7ED8, &qword_1005093B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = &v23 - v35;
  v42 = __chkstk_darwin(v34);
  v43 = v6;
  v41 = v7 & 1;
  v39 = v8;
  v40 = v9;
  v38 = v5;
  v37 = sub_1003CFC34();
  v26 = v37 == 0;
  v25 = v26;
  sub_100268928(&v37);
  if (v25)
  {
    MFSafetyCheckWhenBlocking.prefetchSharing()();
  }

  v24 = 0;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v36, 1);
  _objc_retain(v27);

  v11 = swift_allocObject();
  v12 = v27;
  v13 = v34;
  v14 = v30;
  v15 = v32;
  v16 = v33;
  v17 = v31;
  v18 = ObjectType;
  v19 = v24;
  v20 = v36;
  v21 = v28;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  *(v11 + 48) = v14;
  *(v11 + 56) = v15;
  *(v11 + 64) = v16;
  *(v11 + 72) = v17;
  *(v11 + 80) = v18;
  sub_1002C7DB4(v19, v19, v20, v21, v11, &type metadata for () + 8);
}

uint64_t sub_1003D0C00(void *a1, void (*a2)(void, id), uint64_t a3)
{
  v37 = a1;
  v31 = a2;
  v30 = a3;
  v39 = sub_1003D2F88;
  v43 = sub_10026EE84;
  v45 = sub_10026434C;
  v47 = sub_10026434C;
  v50 = sub_10026EF2C;
  v63 = 0;
  v61 = 0;
  v62 = 0;
  v29 = 0;
  v36 = type metadata accessor for Logger();
  v34 = *(v36 - 8);
  v35 = v36 - 8;
  v32 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = v20 - v32;
  v33 = v20 - v32;
  v63 = __chkstk_darwin(v37);
  v61 = v4;
  v62 = v5;
  v6 = sub_1003CFB5C();
  (*(v34 + 16))(v3, v6, v36);
  _objc_retain(v37);
  v41 = 7;
  v42 = swift_allocObject();
  *(v42 + 16) = v37;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();
  v38 = 17;
  v46 = swift_allocObject();
  *(v46 + 16) = 34;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v40 = 32;
  v7 = swift_allocObject();
  v8 = v42;
  v44 = v7;
  *(v7 + 16) = v39;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v44;
  v51 = v9;
  *(v9 + 16) = v43;
  *(v9 + 24) = v10;
  v53 = sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v49 = _allocateUninitializedArray<A>(_:)();
  v52 = v11;

  v12 = v46;
  v13 = v52;
  *v52 = v45;
  v13[1] = v12;

  v14 = v48;
  v15 = v52;
  v52[2] = v47;
  v15[3] = v14;

  v16 = v51;
  v17 = v52;
  v52[4] = v50;
  v17[5] = v16;
  sub_1002612B0();

  if (os_log_type_enabled(v54, v55))
  {
    v18 = v29;
    v22 = static UnsafeMutablePointer.allocate(capacity:)();
    v21 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v23 = sub_1002641E8(0, v21, v21);
    v24 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
    v25 = &v60;
    v60 = v22;
    v26 = &v59;
    v59 = v23;
    v27 = &v58;
    v58 = v24;
    sub_10026423C(2, &v60);
    sub_10026423C(1, v25);
    v56 = v45;
    v57 = v46;
    sub_100264250(&v56, v25, v26, v27);
    v28 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v56 = v47;
      v57 = v48;
      sub_100264250(&v56, &v60, &v59, &v58);
      v20[1] = 0;
      v56 = v50;
      v57 = v51;
      sub_100264250(&v56, &v60, &v59, &v58);
      _os_log_impl(&_mh_execute_header, v54, v55, "Failed while trying to surface Safety Check when Blocking view, due to error: %{public}s", v22, 0xCu);
      sub_10026429C(v23, 0);
      sub_10026429C(v24, 1);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v54);
  (*(v34 + 8))(v33, v36);

  _objc_retain(v37);
  v31(0, v37);
  _objc_release(v37);
}

uint64_t sub_1003D1264(void *a1)
{
  v2 = [a1 ef_publicDescription];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v2);
  return v3;
}

uint64_t sub_1003D12C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = v19;
  *(v8 + 369) = v18 & 1;
  *(v8 + 224) = a8;
  *(v8 + 216) = a7;
  *(v8 + 208) = a6;
  *(v8 + 200) = a5;
  *(v8 + 192) = a4;
  *(v8 + 48) = v8;
  *(v8 + 56) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 368) = 0;
  *(v8 + 72) = 0;
  *(v8 + 152) = 0;
  sub_10025C9B0(&qword_1006DB298, &qword_100509410);
  *(v8 + 240) = swift_task_alloc();
  v9 = type metadata accessor for SafetyCheckWhenBlockingError();
  *(v8 + 248) = v9;
  *(v8 + 256) = *(v9 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 288) = v10;
  *(v8 + 296) = *(v10 - 8);
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 56) = a4;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 368) = v18 & 1;

  return _swift_task_switch(sub_1003D1574, 0);
}

uint64_t sub_1003D1574()
{
  *(v0 + 48) = v0;
  *(v0 + 64) = sub_1003CFC34();
  if (*(v0 + 64))
  {
    v4 = v8[8];
    v8[41] = v4;

    sub_100268928(v8 + 8);
    v3 = swift_task_alloc();
    v8[42] = v3;
    *v3 = v8[6];
    v3[1] = sub_1003D179C;

    return Task<>.value.getter(v5, v4);
  }

  else
  {
    sub_100268928(v8 + 8);
    v6 = v8[25];

    v7 = (v6 + *v6);
    v1 = swift_task_alloc();
    v8[43] = v1;
    *v1 = v8[6];
    v1[1] = sub_1003D1A00;

    return v7();
  }
}

uint64_t sub_1003D179C()
{
  *(*v0 + 48) = *v0;

  return _swift_task_switch(sub_1003D18B4, 0);
}

uint64_t sub_1003D18B4()
{
  *(v0 + 48) = v0;

  v3 = *(v0 + 200);

  v5 = (v3 + *v3);
  v1 = swift_task_alloc();
  *(v4 + 344) = v1;
  *v1 = *(v4 + 48);
  v1[1] = sub_1003D1A00;

  return v5();
}

uint64_t sub_1003D1A00(uint64_t a1)
{
  v5 = *v2;
  v5[6] = *v2;
  v5[44] = a1;
  v5[45] = v1;

  if (v1)
  {
    v3 = sub_1003D2404;
  }

  else
  {
    v3 = sub_1003D1B70;
  }

  return _swift_task_switch(v3, 0);
}

uint64_t sub_1003D1B70()
{
  v1 = *(v0 + 352);
  *(v0 + 48) = v0;
  if (!v1)
  {
    v4 = *(v39 + 320);
    v29 = *(v39 + 288);
    v28 = *(v39 + 296);

    v5 = sub_1003CFB5C();
    (*(v28 + 16))(v4, v5, v29);
    v31 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v32 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v31, v30))
    {
      v8 = *(v39 + 360);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v14 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v16 = sub_1002641E8(0, v14, v14);
      v17 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v39 + 120) = buf;
      *(v39 + 128) = v16;
      *(v39 + 136) = v17;
      sub_10026423C(0, (v39 + 120));
      sub_10026423C(0, (v39 + 120));
      *(v39 + 144) = v32;
      v18 = swift_task_alloc();
      v18[2] = v39 + 120;
      v18[3] = v39 + 128;
      v18[4] = v39 + 136;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      if (v8)
      {
      }

      _os_log_impl(&_mh_execute_header, v31, v30, "User does not share resources with contact being blocked", buf, 2u);
      sub_10026429C(v16, 0);
      sub_10026429C(v17, 0);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v11 = *(v39 + 320);
    v12 = *(v39 + 288);
    v13 = *(v39 + 216);
    v10 = *(v39 + 296);
    _objc_release(v31);
    (*(v10 + 8))(v11, v12);

    v13(0);

    goto LABEL_14;
  }

  v33 = *(v39 + 352);
  v2 = *(v39 + 312);
  v35 = *(v39 + 288);
  v34 = *(v39 + 296);
  *(v39 + 152) = v33;

  v3 = sub_1003CFB5C();
  (*(v34 + 16))(v2, v3, v35);
  v37 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v38 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v37, v36))
  {
    v6 = *(v39 + 360);
    v24 = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v25 = sub_1002641E8(0, v23, v23);
    v26 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v39 + 160) = v24;
    *(v39 + 168) = v25;
    *(v39 + 176) = v26;
    sub_10026423C(0, (v39 + 160));
    sub_10026423C(0, (v39 + 160));
    *(v39 + 184) = v38;
    v27 = swift_task_alloc();
    v27[2] = v39 + 160;
    v27[3] = v39 + 168;
    v27[4] = v39 + 176;
    sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    if (!v6)
    {

      _os_log_impl(&_mh_execute_header, v37, v36, "User does share resources with contact being blocked so present safety check view", v24, 2u);
      sub_10026429C(v25, 0);
      sub_10026429C(v26, 0);
      UnsafeMutablePointer.deallocate()();

      goto LABEL_9;
    }
  }

LABEL_9:
  v20 = *(v39 + 312);
  v21 = *(v39 + 288);
  v22 = *(v39 + 216);
  v19 = *(v39 + 296);
  _objc_release(v37);
  (*(v19 + 8))(v20, v21);

  _objc_retain(v33);
  v22(v33, 0);
  _objc_release(v33);

  _objc_release(v33);
LABEL_14:

  v9 = *(*(v39 + 48) + 8);

  return v9();
}

uint64_t sub_1003D2404()
{
  v47 = v0[45];
  v0[6] = v0;

  swift_errorRetain();
  v0[9] = v47;
  swift_errorRetain();
  v0[10] = v47;
  sub_10025C9B0(&unk_1006DCA70, &unk_10050C7F0);
  if (swift_dynamicCast())
  {
    (*(*(v46 + 256) + 56))(*(v46 + 240), 0, 1, *(v46 + 248));
  }

  else
  {
    (*(*(v46 + 256) + 56))(*(v46 + 240), 1, 1, *(v46 + 248));
  }

  if ((*(*(v46 + 256) + 48))(*(v46 + 240), 1, *(v46 + 248)) == 1)
  {
    v44 = *(v46 + 224);
    v43 = *(v46 + 216);
    sub_1003D3F1C(*(v46 + 240));
    swift_errorRetain();
    v45 = _convertErrorToNSError(_:)();
    sub_1003D0C00(v45, v43, v44);
    _objc_release(v45);
  }

  else
  {
    v41 = *(v46 + 280);
    v37 = *(v46 + 264);
    v40 = *(v46 + 248);
    v39 = *(v46 + 256);
    v36 = *(v39 + 32);
    v36();
    v38 = *(v39 + 16);
    (v38)(v41, v37, v40);
    v42 = (*(v39 + 88))(v41, v40);
    if (v42 == enum case for SafetyCheckWhenBlockingError.fetchNeeded(_:) || v42 == enum case for SafetyCheckWhenBlockingError.fetchInProgress(_:))
    {
      if (*(v46 + 369))
      {
        v32 = *(v46 + 272);
        v31 = *(v46 + 248);
        v34 = *(v46 + 224);
        v33 = *(v46 + 216);
        v38();
        sub_1003D3FC4();
        swift_allocError();
        (v36)(v3, v32, v31);
        v35 = _convertErrorToNSError(_:)();
        sub_1003D0C00(v35, v33, v34);
        _objc_release(v35);
      }

      else
      {
        v4 = *(v46 + 304);
        v27 = *(v46 + 288);
        v26 = *(v46 + 296);
        v5 = sub_1003CFB5C();
        (*(v26 + 16))(v4, v5, v27);
        oslog = Logger.logObject.getter();
        v28 = static os_log_type_t.info.getter();
        sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
        v30 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(oslog, v28))
        {
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          v21 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
          v23 = sub_1002641E8(0, v21, v21);
          v24 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
          *(v46 + 88) = buf;
          *(v46 + 96) = v23;
          *(v46 + 104) = v24;
          sub_10026423C(0, (v46 + 88));
          sub_10026423C(0, (v46 + 88));
          *(v46 + 112) = v30;
          v25 = swift_task_alloc();
          v25[2] = v46 + 88;
          v25[3] = v46 + 96;
          v25[4] = v46 + 104;
          sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
          sub_10026E6E0();
          Sequence.forEach(_:)();

          _os_log_impl(&_mh_execute_header, oslog, v28, "Need to fetch sharing permissions again and re-try presenting safety check view if needed", buf, 2u);
          sub_10026429C(v23, 0);
          sub_10026429C(v24, 0);
          UnsafeMutablePointer.deallocate()();
        }

        v15 = *(v46 + 304);
        v16 = *(v46 + 288);
        v20 = *(v46 + 224);
        v19 = *(v46 + 216);
        v18 = *(v46 + 208);
        v17 = *(v46 + 200);
        v14 = *(v46 + 296);
        _objc_release(oslog);
        (*(v14 + 8))(v15, v16);
        sub_1003CFC9C(0);
        sub_1003D09AC(v17, v18, 1, v19, v20);
      }
    }

    else
    {
      v12 = *(v46 + 280);
      v7 = *(v46 + 272);
      v13 = *(v46 + 248);
      v9 = *(v46 + 224);
      v8 = *(v46 + 216);
      v11 = *(v46 + 256);
      v38();
      sub_1003D3FC4();
      swift_allocError();
      (v36)(v6, v7, v13);
      v10 = _convertErrorToNSError(_:)();
      sub_1003D0C00(v10, v8, v9);
      _objc_release(v10);

      (*(v11 + 8))(v12, v13);
    }

    (*(*(v46 + 256) + 8))(*(v46 + 264), *(v46 + 248));
  }

  v1 = *(*(v46 + 48) + 8);

  return v1();
}

uint64_t sub_1003D2E5C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_1003D12C0(a1, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t MFSafetyCheckWhenBlocking.presentSafetyCheckIfNeeded(for:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  _objc_retain(a1);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v3 = variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
  sub_1003D09AC(&unk_1005093E0, v9, v3 & 1, sub_1003D3E50, v8);
}

uint64_t sub_1003D30B0(uint64_t a1)
{
  v1[4] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = a1;
  return _swift_task_switch(sub_1003D30EC, 0);
}

uint64_t sub_1003D30EC()
{
  *(v0 + 16) = v0;
  type metadata accessor for DSBlockingController();
  *(v0 + 40) = static DSBlockingController.sharedInstance.getter();
  v5 = (async function pointer to dispatch thunk of DSBlockingController.block(contact:) + async function pointer to dispatch thunk of DSBlockingController.block(contact:)[0]);
  v1 = swift_task_alloc();
  v4[6] = v1;
  *v1 = v4[2];
  v1[1] = sub_1003D31D4;
  v2 = v4[4];

  return v5(v2);
}

uint64_t sub_1003D31D4(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 56) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003D3378, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_1003D3378()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_1003D3418(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{

  a3(a1, a2);
}

uint64_t MFSafetyCheckWhenBlocking.presentSafetyCheckIfNeeded(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10025C9B0(&qword_1006D62A8, &qword_1004FC6D8);
  type metadata accessor for Handle();
  sub_1002687A0();
  v9 = Sequence.compactMap<A>(_:)();

  v6 = swift_allocObject();
  *(v6 + 16) = v9;

  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v3 = variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
  sub_1003D09AC(&unk_1005093F8, v6, v3 & 1, sub_1003D3E50, v5);
}

uint64_t sub_1003D3764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = a1;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v29 = type metadata accessor for Handle.Kind();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = &v8 - v32;
  v34 = *__chkstk_darwin(v28);
  v38 = v34;
  v35 = [v34 simpleAddress];
  if (v35)
  {
    v26 = v35;
    v21 = v35;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v2;
    _objc_release(v21);
    v24 = v22;
    v25 = v23;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v19 = v25;
  v20 = v24;
  if (v25)
  {
    v17 = v20;
    v18 = v19;
    v14 = v19;
    v15 = v20;
    v36 = v20;
    v37 = v19;
    (*(v30 + 104))(v33, enum case for Handle.Kind.emailAddress(_:), v29);
    v5 = [v34 displayName];
    v16 = v5;
    if (v5)
    {
      v13 = v16;
      v8 = v16;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v6;
      _objc_release(v8);
      v11 = v9;
      v12 = v10;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    Handle.init(type:value:displayName:)();
    v7 = type metadata accessor for Handle();
    return (*(*(v7 - 8) + 56))(v27, 0, 1);
  }

  else
  {
    v3 = type metadata accessor for Handle();
    return (*(*(v3 - 8) + 56))(v27, 1);
  }
}

uint64_t sub_1003D3A48(uint64_t a1)
{
  v1[4] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = a1;
  return _swift_task_switch(sub_1003D3A84, 0);
}

uint64_t sub_1003D3A84()
{
  *(v0 + 16) = v0;
  type metadata accessor for DSBlockingController();
  *(v0 + 40) = static DSBlockingController.sharedInstance.getter();
  v5 = (async function pointer to dispatch thunk of DSBlockingController.block(handles:) + async function pointer to dispatch thunk of DSBlockingController.block(handles:)[0]);
  v1 = swift_task_alloc();
  v4[6] = v1;
  *v1 = v4[2];
  v1[1] = sub_1003D31D4;
  v2 = v4[4];

  return v5(v2);
}

id MFSafetyCheckWhenBlocking.init()()
{
  v3 = 0;
  *OBJC_IVAR____TtC10MobileMail25MFSafetyCheckWhenBlocking_fetchSharingTask = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for MFSafetyCheckWhenBlocking();
  v1 = objc_msgSendSuper2(&v2, "init");
  _objc_retain(v1);
  v3 = v1;
  _objc_release(v1);
  return v1;
}

id MFSafetyCheckWhenBlocking.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFSafetyCheckWhenBlocking();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003D3D98()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100287C54;

  return sub_1003D30B0(v5);
}

uint64_t sub_1003D3E64()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100287C54;

  return sub_1003D3A48(v5);
}

uint64_t sub_1003D3F1C(uint64_t a1)
{
  v3 = type metadata accessor for SafetyCheckWhenBlockingError();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1003D3FC4()
{
  v2 = qword_1006DB2A0;
  if (!qword_1006DB2A0)
  {
    type metadata accessor for SafetyCheckWhenBlockingError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB2A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003D4044()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006F01E8);
  sub_1000208F4(v1, qword_1006F01E8);
  sub_1003D40AC();
  return static Logger.mailUILogger<A>(for:)();
}

unint64_t sub_1003D40AC()
{
  v2 = qword_1006DB2A8;
  if (!qword_1006DB2A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB2A8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1003D4110()
{
  if (qword_1006D6080 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006F01E8);
}

uint64_t sub_1003D417C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1003D4110();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1003D41E8(uint64_t a1)
{
  v2[81] = a1;
  v2[70] = v2;
  v2[71] = 0;
  v2[72] = 0;
  v2[73] = 0;
  v3 = type metadata accessor for MailAccountEntity(0);
  v2[82] = v3;
  v2[83] = *(v3 - 8);
  v2[84] = swift_task_alloc();
  sub_10025C9B0(&qword_1006D9B50, &unk_1005044F8);
  v2[85] = swift_task_alloc();
  sub_10025C9B0(&unk_1006D7380, &qword_100500790);
  v2[86] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[87] = v4;
  v2[88] = *(v4 - 8);
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  sub_10025C9B0(&qword_1006D7250, &unk_1004FF0C0);
  v2[91] = swift_task_alloc();
  v2[71] = a1;
  v2[72] = v1;

  return _swift_task_switch(sub_1003D4434, 0);
}

uint64_t sub_1003D4434()
{
  v80 = v0;
  v0[70] = v0;
  sub_1003D40AC();
  v74 = sub_10025C704();
  v0[73] = v74;
  sub_10043CD64(v0 + 36);
  memcpy(v0 + 19, v0 + 36, 0x88uLL);
  if (sub_1003D567C(v0 + 19) == 1)
  {
    v6 = *(v73 + 712);
    v43 = *(v73 + 696);
    v42 = *(v73 + 704);
    v7 = sub_1003D4110();
    (*(v42 + 16))(v6, v7, v43);
    log = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v46 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v44))
    {
      v38 = static UnsafeMutablePointer.allocate(capacity:)();
      v37 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v39 = sub_1002641E8(0, v37, v37);
      v40 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v73 + 616) = v38;
      *(v73 + 624) = v39;
      *(v73 + 632) = v40;
      sub_10026423C(0, (v73 + 616));
      sub_10026423C(0, (v73 + 616));
      *(v73 + 640) = v46;
      v41 = swift_task_alloc();
      v41[2] = v73 + 616;
      v41[3] = v73 + 624;
      v41[4] = v73 + 632;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, log, v44, "#SiriMail MSEmailModel sending a new email", v38, 2u);
      sub_10026429C(v39, 0);
      sub_10026429C(v40, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v35 = *(v73 + 712);
    v36 = *(v73 + 696);
    v34 = *(v73 + 704);
    _objc_release(log);
    (*(v34 + 8))(v35, v36);
    [v74 setType:1];
  }

  else
  {
    v70 = *(v73 + 728);
    memcpy((v73 + 16), (v73 + 152), 0x88uLL);

    v68 = String.uniqueIdentifier.getter();
    v69 = v1;

    sub_1003D5794(v68, v69);
    v71 = type metadata accessor for URL();
    v72 = *(v71 - 8);
    if ((*(v72 + 48))(v70, 1) == 1)
    {
      v67 = 0;
    }

    else
    {
      v65 = *(v73 + 728);
      URL._bridgeToObjectiveC()(v73);
      v66 = v2;
      (*(v72 + 8))(v65, v71);
      v67 = v66;
    }

    v3 = *(v73 + 720);
    v56 = *(v73 + 696);
    v55 = *(v73 + 704);

    [v74 setReference:v67];
    _objc_release(v67);
    v4 = sub_1003D4110();
    (*(v55 + 16))(v3, v4, v56);
    sub_1003814E0((v73 + 16), (v73 + 424));
    v57 = swift_allocObject();
    memcpy((v57 + 16), (v73 + 16), 0x88uLL);
    oslog = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();
    v59 = swift_allocObject();
    *(v59 + 16) = 32;
    v60 = swift_allocObject();
    *(v60 + 16) = 8;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1003D5964;
    *(v58 + 24) = v57;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_10026EE84;
    *(v61 + 24) = v58;
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    _allocateUninitializedArray<A>(_:)();
    v62 = v5;

    *v62 = sub_10026434C;
    v62[1] = v59;

    v62[2] = sub_10026434C;
    v62[3] = v60;

    v62[4] = sub_10026EF2C;
    v62[5] = v61;
    sub_1002612B0();

    if (os_log_type_enabled(oslog, v64))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v51 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v53 = sub_1002641E8(0, v51, v51);
      v54 = sub_1002641E8(1, &type metadata for Any + 8, &type metadata for Any + 8);
      v75 = buf;
      v76 = v53;
      v77 = v54;
      sub_10026423C(2, &v75);
      sub_10026423C(1, &v75);
      v78 = sub_10026434C;
      v79 = v59;
      sub_100264250(&v78, &v75, &v76, &v77);
      v78 = sub_10026434C;
      v79 = v60;
      sub_100264250(&v78, &v75, &v76, &v77);
      v78 = sub_10026EF2C;
      v79 = v61;
      sub_100264250(&v78, &v75, &v76, &v77);
      _os_log_impl(&_mh_execute_header, oslog, v64, "#SiriMail MSEmailModel replying to email %s", buf, 0xCu);
      sub_10026429C(v53, 0);
      sub_10026429C(v54, 1);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v48 = *(v73 + 720);
    v49 = *(v73 + 696);
    v47 = *(v73 + 704);
    _objc_release(oslog);
    (*(v47 + 8))(v48, v49);
    [v74 setType:2];
    sub_1003816C8((v73 + 16));
  }

  sub_10043CDE8();
  if (v8)
  {
    v32 = String._bridgeToObjectiveC()();

    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  [v74 setSubject:?];
  _objc_release(v33);
  sub_10043CE50();
  Optional<A>.toString.getter();
  if (v9)
  {
    v30 = String._bridgeToObjectiveC()();

    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v28 = *(v73 + 680);
  v29 = *(v73 + 656);
  v27 = *(v73 + 664);
  sub_100285F68(*(v73 + 688));
  [v74 setBody:v31];
  _objc_release(v31);
  sub_100289A40();
  if ((*(v27 + 48))(v28, 1, v29))
  {
    v13 = v73 + 568;
    v14 = v73 + 576;
    v15 = v73 + 584;
    sub_100358F78(*(v73 + 680));
    v26 = 0;
  }

  else
  {
    v23 = *(v73 + 680);
    v24 = *(v73 + 672);
    sub_10034BE38(v23, v24);
    sub_100358F78(v23);
    sub_10034B178();
    v25 = v10;
    sub_10034BF38(v24);
    v26 = v25;
  }

  if (v26)
  {
    v21 = String._bridgeToObjectiveC()();

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  [v74 setSender:{v13, v14, v15}];
  _objc_release(v22);
  *(v73 + 592) = sub_10043CEA4();
  v19 = sub_10025C9B0(&qword_1006DA330, &unk_10050BAC0);
  v20 = sub_1003D58DC();
  sub_10025E9D8(sub_1003D5874, 0, v19, &type metadata for String, &type metadata for Never, v20, &protocol witness table for Never, v50);
  sub_100264880((v73 + 592));
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v74 setTo:isa];
  _objc_release(isa);
  *(v73 + 600) = sub_1002895B8();
  sub_10025E9D8(sub_1003D5874, 0, v19, &type metadata for String, &type metadata for Never, v20, &protocol witness table for Never, v50);
  sub_100264880((v73 + 600));
  v17 = Array._bridgeToObjectiveC()().super.isa;

  [v74 setCc:v17];
  _objc_release(v17);
  *(v73 + 608) = sub_1002896B4();
  sub_10025E9D8(sub_1003D5874, 0, v19, &type metadata for String, &type metadata for Never, v20, &protocol witness table for Never, v50);
  sub_100264880((v73 + 608));
  v16 = Array._bridgeToObjectiveC()().super.isa;

  [v74 setBcc:v16];
  _objc_release(v16);

  v11 = *(*(v73 + 560) + 8);

  return v11(v74);
}

uint64_t sub_1003D567C(void *a1)
{
  v2 = -1;
  if (!HIDWORD(*a1))
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t sub_1003D5794(uint64_t a1, uint64_t a2)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("x-apple-mail://message/", 0x17uLL, 1);
  static String.+ infix(_:_:)();

  URL.init(string:)();
}

uint64_t sub_1003D5824()
{
  sub_10037EE3C();
  v1 = String.partiallyRedactedString.getter();

  return v1;
}

uint64_t sub_1003D5874@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10034F2C8(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  a2[1] = v3;
  return result;
}

unint64_t sub_1003D58DC()
{
  v2 = qword_1006DB2B0;
  if (!qword_1006DB2B0)
  {
    sub_10025CAA4(&qword_1006DA330, &unk_10050BAC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB2B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003D596C()
{
  v58 = v77;
  v21 = "Email thread to mute";
  v22 = "Email thread to mute";
  v32 = "Whether to mute or unmute thread notifications";
  v35 = "Whether to mute or unmute thread notifications";
  v57 = v78;
  memset(v78, 0, sizeof(v78));
  v0 = sub_10025C9B0(&unk_1006DB310, &unk_10050D1D0);
  v10 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v54 = &v9 - v10;
  v46 = 0;
  v1 = type metadata accessor for InputConnectionBehavior();
  v11 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v56 = &v9 - v11;
  v2 = sub_10025C9B0(&unk_1006D7080, &unk_1004FFEB0);
  v12 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v29 = &v9 - v12;
  v13 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v12);
  v55 = &v9 - v13;
  v14 = (*(*(sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v46);
  v52 = &v9 - v14;
  v15 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v46);
  v40 = &v9 - v15;
  v16 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v46);
  v39 = &v9 - v16;
  v17 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v46);
  v37 = &v9 - v17;
  v42 = type metadata accessor for LocalizedStringResource();
  v25 = *(v42 - 8);
  v26 = v42 - 8;
  v18 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v42);
  v51 = &v9 - v18;
  sub_10025C9B0(&unk_1006D7090, &unk_1004FEED0);
  v4 = v58;
  v19 = v77;
  v77[0] = 0;
  v77[1] = 0;
  v58[2] = 0;
  v4[3] = 0;
  v4[4] = 0;
  sub_10000B074();
  sub_1003DC7F0();
  v61 = AppDependency.__allocating_init(key:manager:)();

  v58[5] = v61;
  sub_10025C9B0(&unk_1006DB320, &qword_1005095D0);
  v47 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Thread", 6uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v33 = "AppIntents";
  v34 = 10;
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v47 & 1);
  sub_100015CC0();
  sub_10025D410(v40);
  v74 = v22;
  v23 = 20;
  v75 = 20;
  v45 = 2;
  v76 = 2;
  v41 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v21, v23, v47 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v24 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v33, v34, v47 & 1);
  sub_100015CC0();
  sub_10025D410(v40);
  v71[2] = v22;
  v71[3] = v23;
  v72 = v45;
  v73 = v41 & 1 & v47;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v44 = *(v25 + 56);
  v43 = v25 + 56;
  v44(v52, v41, v47, v42);
  v28 = v71;
  v71[0] = 0;
  v71[1] = 0;
  v48 = type metadata accessor for IntentDialog();
  v5 = *(v48 - 8);
  v50 = *(v5 + 56);
  v49 = v5 + 56;
  v50(v55, v47);
  (v50)(v29, v47, v47, v48);
  v27 = sub_100341EC8();
  v30 = sub_1003A148C();
  sub_1003BD8F8(v56);
  v59 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v58[6] = v59;
  sub_10025C9B0(&qword_1006DB330, &qword_1005095D8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mute", 4uLL, v47 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v33, v34, v47 & 1);
  sub_100015CC0();
  sub_10025D410(v40);
  v67 = v35;
  v36 = 46;
  v68 = 46;
  v69 = v45;
  v70 = v41 & 1 & v47;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v32, v36, v47 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v38 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v33, v34, v47 & 1);
  sub_100015CC0();
  sub_10025D410(v40);
  v63 = v35;
  v64 = v36;
  v65 = v45;
  v66 = v41 & 1 & v47;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v44(v52, v41, v47, v42);
  v53 = &v62;
  v62 = v45;
  v6 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v6 - 8) + 56))(v54, v47);
  (v50)(v55, v47, v47, v48);
  sub_1003424B8();
  sub_1003BD8F8(v56);
  v60 = IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();

  v7 = v57;
  v58[7] = v60;
  sub_1002FE5E4(v7);
  return v61;
}

uint64_t sub_1003D64D4(uint64_t a1, uint64_t a2)
{

  IntentParameter.wrappedValue.getter();

  return v3;
}

uint64_t sub_1003D654C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_1003D65E4@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v9 = "Mute or unmute notifications from an email thread.";
  v11 = "Mute or unmute notifications from an email thread.";
  v1 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v20 = &v5 - v5;
  v22 = 0;
  v6 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v16 = &v5 - v6;
  v7 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v15 = &v5 - v7;
  v8 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v13 = &v5 - v8;
  v19 = type metadata accessor for LocalizedStringResource();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v10 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v21 = &v5 - v10;
  v12 = 50;
  v23 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v2, 0x32uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v23 & 1);
  sub_100015CC0();
  sub_10025D410(v16);
  v26 = v11;
  v27 = v12;
  v28 = 2;
  v24 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, v23, v23, v19);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v3 = type metadata accessor for IntentDescription();
  return (*(*(v3 - 8) + 56))(v25, v24, v23);
}

uint64_t sub_1003D692C@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Mute or unmute notifications from an email thread.";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v13 = &v3 - v6;
  v1 = type metadata accessor for String.LocalizationValue();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v7;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mute Thread", 0xBuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 50;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1003D6B10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  AppDependency.wrappedValue.getter();

  return v4;
}

void sub_1003D6B7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _objc_retain(a1);
  AppDependency.wrappedValue.setter();

  _objc_release(a1);
}

uint64_t sub_1003D6C10(uint64_t a1)
{

  v2 = AppDependency.projectedValue.getter();

  return v2;
}

uint64_t sub_1003D6C78(uint64_t a1, uint64_t a2)
{

  v3 = IntentParameter.projectedValue.getter();

  return v3;
}

uint64_t sub_1003D6CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  IntentParameter.wrappedValue.getter();

  return v4 & 1;
}

uint64_t sub_1003D6D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_1003D6DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = IntentParameter.projectedValue.getter();

  return v4;
}

uint64_t sub_1003D6E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[94] = a4;
  v4[93] = a3;
  v4[92] = a2;
  v4[91] = a1;
  v4[58] = v4;
  v4[34] = 0;
  v4[35] = 0;
  v4[36] = 0;
  v4[59] = 0;
  v5 = type metadata accessor for Logger();
  v4[95] = v5;
  v4[96] = *(v5 - 8);
  v4[97] = swift_task_alloc();
  v4[98] = swift_task_alloc();
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v4[34] = a2;
  v4[35] = a3;
  v4[36] = a4;
  type metadata accessor for MainActor();
  v4[103] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[104] = v11;
  v4[105] = v6;

  return _swift_task_switch(sub_1003D7004, v11);
}

uint64_t sub_1003D7004()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v0[58] = v0;
  v14 = sub_1003D6B10(v3, v2, v1);
  sub_10035277C();
  v0[106] = 0;
  v7 = v13[94];
  v9 = v13[93];
  v8 = v13[92];
  _objc_release(v14);
  v13[37] = v8;
  v13[38] = v9;
  v13[39] = v7;
  v12 = sub_1003D64D4(v8, v9);
  v10 = v4;
  v13[107] = v4;
  v11 = sub_1003D6B10(v8, v9, v7);
  v13[108] = v11;
  v5 = swift_task_alloc();
  v13[109] = v5;
  v13[110] = sub_1003D9450();
  *v5 = v13[58];
  v5[1] = sub_1003D727C;

  return sub_1004606E0(v12, v10, v11);
}

uint64_t sub_1003D727C(uint64_t a1)
{
  v6 = *v1;
  v5 = *v1;
  v4 = *(*v1 + 864);
  *(v5 + 464) = *v1;
  *(v5 + 888) = a1;

  v2 = *(v6 + 832);

  return _swift_task_switch(sub_1003D7400, v2);
}

uint64_t sub_1003D7400()
{
  v1 = *(v0 + 888);
  *(v0 + 464) = v0;
  if (!v1)
  {
    v31 = type metadata accessor for ToolboxErrors();
    sub_100281ED4();
    swift_allocError();
    (*(*(v31 - 8) + 104))(v30, enum case for ToolboxErrors.noMessagesFound(_:));
    swift_willThrow();

    v29 = *(*(v132 + 464) + 8);

    return v29();
  }

  v130 = *(v132 + 888);
  *(v132 + 472) = v130;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v131 = [v130 conversationNotificationLevel];
  swift_unknownObjectRelease();
  *(v132 + 480) = 1;
  *(v132 + 488) = v131;
  type metadata accessor for EMConversationNotificationLevel(0);
  sub_100267894();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    *(v132 + 496) = 2;
    *(v132 + 504) = v131;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v12 = *(v132 + 800);
      v90 = *(v132 + 760);
      v89 = *(v132 + 768);
      v13 = Logger.appIntentLogger.unsafeMutableAddressor();
      (*(v89 + 16))(v12, v13, v90);
      log = Logger.logObject.getter();
      v91 = static os_log_type_t.debug.getter();
      sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
      v93 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v91))
      {
        v14 = *(v132 + 848);
        v85 = static UnsafeMutablePointer.allocate(capacity:)();
        v84 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
        v86 = sub_1002641E8(0, v84, v84);
        v87 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
        *(v132 + 632) = v85;
        *(v132 + 640) = v86;
        *(v132 + 648) = v87;
        sub_10026423C(0, (v132 + 632));
        sub_10026423C(0, (v132 + 632));
        *(v132 + 656) = v93;
        v88 = swift_task_alloc();
        v88[2] = v132 + 632;
        v88[3] = v132 + 640;
        v88[4] = v132 + 648;
        sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
        sub_10026E6E0();
        Sequence.forEach(_:)();
        if (v14)
        {
        }

        _os_log_impl(&_mh_execute_header, log, v91, "#MuteThreadIntent - do nothing, thread is notifying and therefore we should not manipulate its mute state.", v85, 2u);
        sub_10026429C(v86, 0);
        sub_10026429C(v87, 0);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v82 = *(v132 + 800);
      v83 = *(v132 + 760);
      v81 = *(v132 + 768);
      _objc_release(log);
      (*(v81 + 8))(v82, v83);
    }

    else
    {
      _allocateUninitializedArray<A>(_:)();
      sub_100266E7C();
      SetAlgebra<>.init(arrayLiteral:)();
      *(v132 + 520) = *(v132 + 512);
      *(v132 + 528) = v131;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        if (sub_1003D6CE0(*(v132 + 736), *(v132 + 744), *(v132 + 752)))
        {
          v15 = *(v132 + 792);
          v77 = *(v132 + 760);
          v76 = *(v132 + 768);
          v16 = Logger.appIntentLogger.unsafeMutableAddressor();
          (*(v76 + 16))(v15, v16, v77);
          v79 = Logger.logObject.getter();
          v78 = static os_log_type_t.debug.getter();
          sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
          v80 = _allocateUninitializedArray<A>(_:)();
          if (os_log_type_enabled(v79, v78))
          {
            v17 = *(v132 + 848);
            v72 = static UnsafeMutablePointer.allocate(capacity:)();
            v71 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
            v73 = sub_1002641E8(0, v71, v71);
            v74 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
            *(v132 + 600) = v72;
            *(v132 + 608) = v73;
            *(v132 + 616) = v74;
            sub_10026423C(0, (v132 + 600));
            sub_10026423C(0, (v132 + 600));
            *(v132 + 624) = v80;
            v75 = swift_task_alloc();
            v75[2] = v132 + 600;
            v75[3] = v132 + 608;
            v75[4] = v132 + 616;
            sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
            sub_10026E6E0();
            Sequence.forEach(_:)();
            if (v17)
            {
            }

            _os_log_impl(&_mh_execute_header, v79, v78, "#MuteThreadIntent - thread is not muted or notifying and user asked to mute, muting thread...", v72, 2u);
            sub_10026429C(v73, 0);
            sub_10026429C(v74, 0);
            UnsafeMutablePointer.deallocate()();
          }

          else
          {
          }

          v59 = *(v132 + 792);
          v60 = *(v132 + 760);
          v65 = *(v132 + 752);
          v64 = *(v132 + 744);
          v63 = *(v132 + 736);
          v58 = *(v132 + 768);
          _objc_release(v79);
          (*(v58 + 8))(v59, v60);
          sub_1003D9638();
          sub_10025C9B0(&unk_1006D7220, &qword_1004FF600);
          _allocateUninitializedArray<A>(_:)();
          v61 = v18;
          swift_unknownObjectRetain();
          *v61 = v130;
          sub_1002612B0();
          v68 = v19;
          v62 = sub_1003D6B10(v63, v64, v65);
          v66 = sub_100353058();
          _objc_release(v62);
          *(v132 + 320) = v63;
          *(v132 + 328) = v64;
          *(v132 + 336) = v65;
          v67 = sub_10028E57C();
          *(v132 + 344) = v63;
          *(v132 + 352) = v64;
          *(v132 + 360) = v65;
          v20 = sub_10028E5B4();
          v70 = sub_10027D364(v68, v66, v67, v20);
          *(v132 + 904) = v70;
          *(v132 + 16) = *(v132 + 464);
          *(v132 + 56) = v132 + 432;
          *(v132 + 24) = sub_1003D91A0;
          v69 = swift_continuation_init();
          *(v132 + 200) = sub_10025C9B0(&unk_1006D7CE0, &unk_1004FECE0);
          *(v132 + 176) = v69;
          *(v132 + 144) = _NSConcreteStackBlock;
          *(v132 + 152) = 1107296256;
          *(v132 + 156) = 0;
          *(v132 + 160) = sub_10027D41C;
          *(v132 + 168) = &unk_10065DAF0;
          [v70 performInteractionWithCompletion:?];
          v11 = v132 + 16;

          return _swift_continuation_await(v11);
        }

        v21 = *(v132 + 784);
        v54 = *(v132 + 760);
        v53 = *(v132 + 768);
        v22 = Logger.appIntentLogger.unsafeMutableAddressor();
        (*(v53 + 16))(v21, v22, v54);
        v56 = Logger.logObject.getter();
        v55 = static os_log_type_t.debug.getter();
        sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
        v57 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v56, v55))
        {
          v23 = *(v132 + 848);
          v49 = static UnsafeMutablePointer.allocate(capacity:)();
          v48 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
          v50 = sub_1002641E8(0, v48, v48);
          v51 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
          *(v132 + 568) = v49;
          *(v132 + 576) = v50;
          *(v132 + 584) = v51;
          sub_10026423C(0, (v132 + 568));
          sub_10026423C(0, (v132 + 568));
          *(v132 + 592) = v57;
          v52 = swift_task_alloc();
          v52[2] = v132 + 568;
          v52[3] = v132 + 576;
          v52[4] = v132 + 584;
          sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
          sub_10026E6E0();
          Sequence.forEach(_:)();
          if (v23)
          {
          }

          _os_log_impl(&_mh_execute_header, v56, v55, "#MuteThreadIntent - thread is already unmuted, do nothing.", v49, 2u);
          sub_10026429C(v50, 0);
          sub_10026429C(v51, 0);
          UnsafeMutablePointer.deallocate()();
        }

        else
        {
        }

        v46 = *(v132 + 784);
        v47 = *(v132 + 760);
        v45 = *(v132 + 768);
        _objc_release(v56);
        (*(v45 + 8))(v46, v47);
      }

      else
      {
        v24 = *(v132 + 776);
        v41 = *(v132 + 760);
        v40 = *(v132 + 768);
        v25 = Logger.appIntentLogger.unsafeMutableAddressor();
        (*(v40 + 16))(v24, v25, v41);
        v43 = Logger.logObject.getter();
        v42 = static os_log_type_t.debug.getter();
        sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
        v44 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v43, v42))
        {
          v26 = *(v132 + 848);
          v36 = static UnsafeMutablePointer.allocate(capacity:)();
          v35 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
          v37 = sub_1002641E8(0, v35, v35);
          v38 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
          *(v132 + 536) = v36;
          *(v132 + 544) = v37;
          *(v132 + 552) = v38;
          sub_10026423C(0, (v132 + 536));
          sub_10026423C(0, (v132 + 536));
          *(v132 + 560) = v44;
          v39 = swift_task_alloc();
          v39[2] = v132 + 536;
          v39[3] = v132 + 544;
          v39[4] = v132 + 552;
          sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
          sub_10026E6E0();
          Sequence.forEach(_:)();
          if (v26)
          {
          }

          _os_log_impl(&_mh_execute_header, v43, v42, "#MuteThreadIntent - do nothing", v36, 2u);
          sub_10026429C(v37, 0);
          sub_10026429C(v38, 0);
          UnsafeMutablePointer.deallocate()();
        }

        else
        {
        }

        v33 = *(v132 + 776);
        v34 = *(v132 + 760);
        v32 = *(v132 + 768);
        _objc_release(v43);
        (*(v32 + 8))(v33, v34);
      }
    }

LABEL_47:
    *(v132 + 416) = sub_1003D64D4(*(v132 + 736), *(v132 + 744));
    *(v132 + 424) = v28;
    sub_100341EC8();
    static IntentResult.result<A>(value:)();
    sub_100268744(v132 + 416);
    swift_unknownObjectRelease();

    v29 = *(*(v132 + 464) + 8);

    return v29();
  }

  if (sub_1003D6CE0(*(v132 + 736), *(v132 + 744), *(v132 + 752)))
  {
    v2 = *(v132 + 816);
    v126 = *(v132 + 760);
    v125 = *(v132 + 768);
    v3 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v125 + 16))(v2, v3, v126);
    v128 = Logger.logObject.getter();
    v127 = static os_log_type_t.debug.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v129 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(v128, v127))
    {

      goto LABEL_9;
    }

    v4 = *(v132 + 848);
    v121 = static UnsafeMutablePointer.allocate(capacity:)();
    v120 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v122 = sub_1002641E8(0, v120, v120);
    v123 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v132 + 696) = v121;
    *(v132 + 704) = v122;
    *(v132 + 712) = v123;
    sub_10026423C(0, (v132 + 696));
    sub_10026423C(0, (v132 + 696));
    *(v132 + 720) = v129;
    v124 = swift_task_alloc();
    v124[2] = v132 + 696;
    v124[3] = v132 + 704;
    v124[4] = v132 + 712;
    sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    if (!v4)
    {

      _os_log_impl(&_mh_execute_header, v128, v127, "#MuteThreadIntent - thread is already muted, do nothing.", v121, 2u);
      sub_10026429C(v122, 0);
      sub_10026429C(v123, 0);
      UnsafeMutablePointer.deallocate()();

LABEL_9:
      v118 = *(v132 + 816);
      v119 = *(v132 + 760);
      v117 = *(v132 + 768);
      _objc_release(v128);
      (*(v117 + 8))(v118, v119);
      goto LABEL_47;
    }
  }

  v5 = *(v132 + 808);
  v113 = *(v132 + 760);
  v112 = *(v132 + 768);
  v6 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v112 + 16))(v5, v6, v113);
  oslog = Logger.logObject.getter();
  v114 = static os_log_type_t.debug.getter();
  sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v116 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v114))
  {
    v7 = *(v132 + 848);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v107 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v109 = sub_1002641E8(0, v107, v107);
    v110 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v132 + 664) = buf;
    *(v132 + 672) = v109;
    *(v132 + 680) = v110;
    sub_10026423C(0, (v132 + 664));
    sub_10026423C(0, (v132 + 664));
    *(v132 + 688) = v116;
    v111 = swift_task_alloc();
    v111[2] = v132 + 664;
    v111[3] = v132 + 672;
    v111[4] = v132 + 680;
    sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    if (v7)
    {
    }

    _os_log_impl(&_mh_execute_header, oslog, v114, "#MuteThreadIntent - thread is muted and user asked to unmute, setting notify on thread...", buf, 2u);
    sub_10026429C(v109, 0);
    sub_10026429C(v110, 0);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v95 = *(v132 + 808);
  v96 = *(v132 + 760);
  v101 = *(v132 + 752);
  v100 = *(v132 + 744);
  v99 = *(v132 + 736);
  v94 = *(v132 + 768);
  _objc_release(oslog);
  (*(v94 + 8))(v95, v96);
  sub_1003D9638();
  sub_10025C9B0(&unk_1006D7220, &qword_1004FF600);
  _allocateUninitializedArray<A>(_:)();
  v97 = v8;
  swift_unknownObjectRetain();
  *v97 = v130;
  sub_1002612B0();
  v104 = v9;
  v98 = sub_1003D6B10(v99, v100, v101);
  v102 = sub_100353058();
  _objc_release(v98);
  *(v132 + 368) = v99;
  *(v132 + 376) = v100;
  *(v132 + 384) = v101;
  v103 = sub_10028E57C();
  *(v132 + 392) = v99;
  *(v132 + 400) = v100;
  *(v132 + 408) = v101;
  v10 = sub_10028E5B4();
  v106 = sub_10027D364(v104, v102, v103, v10);
  *(v132 + 896) = v106;
  *(v132 + 80) = *(v132 + 464);
  *(v132 + 120) = v132 + 448;
  *(v132 + 88) = sub_1003D8EF0;
  v105 = swift_continuation_init();
  *(v132 + 264) = sub_10025C9B0(&unk_1006D7CE0, &unk_1004FECE0);
  *(v132 + 240) = v105;
  *(v132 + 208) = _NSConcreteStackBlock;
  *(v132 + 216) = 1107296256;
  *(v132 + 220) = 0;
  *(v132 + 224) = sub_10027D41C;
  *(v132 + 232) = &unk_10065DB18;
  [v106 performInteractionWithCompletion:?];
  v11 = v132 + 80;

  return _swift_continuation_await(v11);
}

uint64_t sub_1003D8EF0()
{
  v3 = *v0;
  *(*v0 + 464) = *v0;
  v1 = *(v3 + 832);

  return _swift_task_switch(sub_1003D9008, v1);
}

uint64_t sub_1003D9008()
{
  v4 = *(v0 + 896);
  *(v0 + 464) = v0;
  _objc_release(*(v0 + 448));
  _objc_release(v4);
  *(v0 + 416) = sub_1003D64D4(*(v0 + 736), *(v0 + 744));
  *(v0 + 424) = v1;
  sub_100341EC8();
  static IntentResult.result<A>(value:)();
  sub_100268744(v0 + 416);
  swift_unknownObjectRelease();

  v2 = *(*(v0 + 464) + 8);

  return v2();
}

uint64_t sub_1003D91A0()
{
  v3 = *v0;
  *(*v0 + 464) = *v0;
  v1 = *(v3 + 832);

  return _swift_task_switch(sub_1003D92B8, v1);
}

uint64_t sub_1003D92B8()
{
  v4 = *(v0 + 904);
  *(v0 + 464) = v0;
  _objc_release(*(v0 + 432));
  _objc_release(v4);
  *(v0 + 416) = sub_1003D64D4(*(v0 + 736), *(v0 + 744));
  *(v0 + 424) = v1;
  sub_100341EC8();
  static IntentResult.result<A>(value:)();
  sub_100268744(v0 + 416);
  swift_unknownObjectRelease();

  v2 = *(*(v0 + 464) + 8);

  return v2();
}

unint64_t sub_1003D9450()
{
  v2 = qword_1006DB2B8;
  if (!qword_1006DB2B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB2B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003D94FC(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_1003D6E34(a1, v6, v7, v8);
}

uint64_t sub_1003D95D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003D596C();
  *a1 = result;
  a1[1] = v2;
  a1[2] = v3;
  return result;
}

unint64_t sub_1003D9638()
{
  v2 = qword_1006DB2E0;
  if (!qword_1006DB2E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DB2E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1003D9730()
{
  v2 = qword_1006DB2F0;
  if (!qword_1006DB2F0)
  {
    sub_10025CAA4(&qword_1006DB2F8, &qword_1005094C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB2F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003D97B8(uint64_t a1)
{
  result = sub_10033D2A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003D97FC()
{
  v2 = qword_1006DB300;
  if (!qword_1006DB300)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB300);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003D9890()
{
  v2 = qword_1006DB308;
  if (!qword_1006DB308)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB308);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003D99A0()
{
  v16 = "Email message draft to open";
  v41 = &v53;
  v53 = 0;
  v54 = 0;
  v39 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v5 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v37 = &v5 - v5;
  v1 = sub_10025C9B0(&unk_1006D7080, &unk_1004FFEB0);
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v36 = &v5 - v6;
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v6);
  v35 = &v5 - v7;
  v8 = (*(*(sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v33 = &v5 - v8;
  v9 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v22 = &v5 - v9;
  v10 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v21 = &v5 - v10;
  v11 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v19 = &v5 - v11;
  v26 = type metadata accessor for LocalizedStringResource();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v12 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v32 = &v5 - v12;
  sub_10025C9B0(&unk_1006DCC10, &unk_1005098B0);
  v27 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Draft Message", 0xDuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v14 = "AppIntents";
  v15 = 10;
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v27 & 1);
  sub_100015CC0();
  sub_10025D410(v22);
  v50 = v16;
  v17 = 27;
  v51 = 27;
  v18 = 2;
  v52 = 2;
  v25 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPEN_DRAFT_ENTITY_DESCRIPTION", 0x1DuLL, v27 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v14, v15, v27 & 1);
  sub_100015CC0();
  sub_10025D410(v22);
  v46 = v16;
  v47 = v17;
  v48 = v18;
  v49 = v25 & 1 & v27;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v23 + 56))(v33, v25, v27, v26);
  memset(__src, 0, sizeof(__src));
  v34 = __dst;
  memcpy(__dst, __src, sizeof(__dst));
  v28 = type metadata accessor for IntentDialog();
  v3 = *(v28 - 8);
  v30 = *(v3 + 56);
  v29 = v3 + 56;
  v30(v35, v27);
  (v30)(v36, v27, v27, v28);
  v31 = sub_10028D658();
  v38 = sub_1002B9D60();
  sub_1003BD8F8(v37);
  v43 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v53 = v43;
  sub_10025C9B0(&unk_1006D7090, &unk_1004FEED0);
  v40 = v44;
  memset(v44, 0, sizeof(v44));
  sub_10000B074();
  sub_1003DC7F0();
  v42 = AppDependency.__allocating_init(key:manager:)();

  v54 = v42;
  sub_10027EB24(v41);
  return v43;
}

void *sub_1003DA188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1;
  v7 = a2;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v5, sizeof(__dst));

  return memcpy(a3, __dst, 0x48uLL);
}

void *sub_1003DA214(void *a1, uint64_t a2, uint64_t a3)
{
  v6[11] = a1;
  v6[9] = a2;
  v6[10] = a3;

  sub_1002CD078(a1, v6);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  result = a1;
  sub_10028D6D0(a1);
  return result;
}

uint64_t sub_1003DA2BC@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v9 = "Open an email message draft";
  v1 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v17 = &v4 - v4;
  v19 = 0;
  v5 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v13 = &v4 - v5;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v12 = &v4 - v6;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v10 = &v4 - v7;
  v16 = type metadata accessor for LocalizedStringResource();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v18 = &v4 - v8;
  v20 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPEN_DRAFT_DESCRIPTION", 0x16uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v20 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v23 = v9;
  v24 = 27;
  v25 = 2;
  v21 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, v20, v20, v16);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v2 = type metadata accessor for IntentDescription();
  return (*(*(v2 - 8) + 56))(v22, v21, v20);
}

uint64_t sub_1003DA5FC@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Open an email message draft";
  v4 = 0;
  v3 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v3;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v13 = &v3 - v5;
  v1 = type metadata accessor for String.LocalizationValue();
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v6;
  v7 = 10;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Open Draft", 0xAuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", v7, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 27;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1003DA7E0@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_10025C9B0(&qword_1006DB338, &qword_1005095F0);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v26 = &v7 - v8;
  v19 = sub_10025C9B0(&unk_1006DB340, &qword_1005095F8);
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v9 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v21 = &v7 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v9);
  v16 = &v7 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v10);
  v20 = &v7 - v11;
  v25 = sub_10033DD3C();
  v12 = 5;
  v24 = &unk_10065DCE8;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Open ", v12, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&unk_1006DB350, &qword_100509628);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v22 & 1);
  v15 = v5._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);

  (*(v17 + 16))(v16, v20, v19);
  (*(v17 + 32))(v21, v16, v19);
  (*(v17 + 8))(v20, v19);
  ParameterSummaryString.init(stringInterpolation:)();
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v22 & 1)._countAndFlagsBits;
  return IntentParameterSummary.init(_:table:)();
}

void (*sub_1003DAB04(void *a1, uint64_t a2))(void **a1, char a2)
{
  v4 = sub_100294700(0x30uLL, 61863);
  *a1 = v4;
  v4[4] = a2;

  v4[5] = IntentParameter.wrappedValue.modify();
  return sub_1003BBDE0;
}

uint64_t sub_1003DABB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[58] = a3;
  v3[57] = a2;
  v3[56] = a1;
  v3[37] = v3;
  v3[29] = 0;
  v3[30] = 0;
  v3[42] = 0;
  v3[43] = 0;
  v3[48] = 0;
  v3[50] = 0;
  v4 = type metadata accessor for Logger();
  v3[59] = v4;
  v3[60] = *(v4 - 8);
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  sub_10025C9B0(&qword_1006D7DF0, &qword_100500800);
  v3[64] = swift_task_alloc();
  v5 = type metadata accessor for MailMessageEntityID();
  v3[65] = v5;
  v3[66] = *(v5 - 8);
  v3[67] = swift_task_alloc();
  v3[29] = a2;
  v3[30] = a3;
  type metadata accessor for MainActor();
  v3[68] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[69] = v10;
  v3[70] = v6;

  return _swift_task_switch(sub_1003DADE4, v10);
}

uint64_t sub_1003DADE4()
{
  v1 = v0[58];
  v2 = v0[57];
  v0[37] = v0;
  v0[31] = v2;
  v0[32] = v1;
  v0[71] = sub_10028F794();
  v83 = sub_100286A40(&unk_10065DCE8);
  if (v83)
  {
    *(v82 + 440) = &OBJC_PROTOCOL___ComposeCapable;
    v81 = swift_dynamicCastObjCProtocolConditional();
    if (v81)
    {
      v80 = v81;
    }

    else
    {
      _objc_release(v83);
      v80 = 0;
    }

    v79 = v80;
  }

  else
  {
    v79 = 0;
  }

  *(v82 + 576) = v79;
  if (!v79)
  {
    v12 = *(v82 + 488);
    v27 = *(v82 + 472);
    v26 = *(v82 + 480);
    v13 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v26 + 16))(v12, v13, v27);
    log = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v30 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v28))
    {
      v22 = static UnsafeMutablePointer.allocate(capacity:)();
      v21 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v23 = sub_1002641E8(0, v21, v21);
      v24 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v82 + 304) = v22;
      *(v82 + 312) = v23;
      *(v82 + 320) = v24;
      sub_10026423C(0, (v82 + 304));
      sub_10026423C(0, (v82 + 304));
      *(v82 + 328) = v30;
      v25 = swift_task_alloc();
      v25[2] = v82 + 304;
      v25[3] = v82 + 312;
      v25[4] = v82 + 320;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, log, v28, "Failed to find a scene capable of composing", v22, 2u);
      sub_10026429C(v23, 0);
      sub_10026429C(v24, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v16 = *(v82 + 488);
    v17 = *(v82 + 472);
    v19 = *(v82 + 464);
    v18 = *(v82 + 456);
    v15 = *(v82 + 480);
    _objc_release(log);
    (*(v15 + 8))(v16, v17);
    sub_10028B33C();
    swift_allocError();
    v20 = v14;

    *(v20 + 24) = &unk_10065DCE8;
    *(v20 + 32) = sub_10033DD3C();
    *v20 = v18;
    *(v20 + 8) = v19;
    *(v20 + 40) = 0;
    swift_willThrow();

    v11 = *(*(v82 + 296) + 8);

    return v11();
  }

  v78 = *(v82 + 520);
  v77 = *(v82 + 512);
  v3 = *(v82 + 464);
  v4 = *(v82 + 456);
  v76 = *(v82 + 528);
  *(v82 + 336) = v79;
  sub_1003DA188(v4, v3, (v82 + 160));

  sub_10028D6D0((v82 + 160));
  MailMessageEntityID.init(with:)();
  if ((*(v76 + 48))(v77, 1, v78) == 1)
  {
    v53 = *(v82 + 464);
    v54 = *(v82 + 456);
    sub_1002C1698(*(v82 + 512));
    sub_10028D4AC();
    sub_1003DA188(v54, v53, (v82 + 88));
    v49 = *(v82 + 88);
    v50 = *(v82 + 96);

    sub_10028D6D0((v82 + 88));
    sub_1003DA188(v54, v53, (v82 + 16));
    v51 = sub_1002CC92C();
    v52 = v9;
    sub_10028D6D0((v82 + 16));
    v55 = sub_1002BA97C(v54, v53);
    v56 = [v55 daemonInterface];
    _objc_release(v55);
    if (!v56)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v42 = *(v82 + 496);
    v45 = *(v82 + 472);
    v44 = *(v82 + 480);
    v41 = [v56 messageRepository];
    _objc_release(v56);
    v43 = sub_1003DC510(v49, v50, v51, v52, v41, 0);
    *(v82 + 344) = v43;
    v10 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v44 + 16))(v42, v10, v45);
    oslog = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
    v48 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v46))
    {
      v37 = static UnsafeMutablePointer.allocate(capacity:)();
      v36 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
      v38 = sub_1002641E8(0, v36, v36);
      v39 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
      *(v82 + 352) = v37;
      *(v82 + 360) = v38;
      *(v82 + 368) = v39;
      sub_10026423C(0, (v82 + 352));
      sub_10026423C(0, (v82 + 352));
      *(v82 + 376) = v48;
      v40 = swift_task_alloc();
      v40[2] = v82 + 352;
      v40[3] = v82 + 360;
      v40[4] = v82 + 368;
      sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, oslog, v46, "#SiriMail OpenDraftIntent opening autosaved draft message", v37, 2u);
      sub_10026429C(v38, 0);
      sub_10026429C(v39, 0);
      UnsafeMutablePointer.deallocate()();
    }

    v32 = *(v82 + 496);
    v33 = *(v82 + 472);
    v35 = *(v82 + 464);
    v34 = *(v82 + 456);
    v31 = *(v82 + 480);
    _objc_release(oslog);
    (*(v31 + 8))(v32, v33);
    *(v82 + 264) = v34;
    *(v82 + 272) = v35;
    sub_100286C38(v79, v43);
    _objc_release(v43);
    static IntentResult.result<>()();
    swift_unknownObjectRelease();

    v11 = *(*(v82 + 296) + 8);

    return v11();
  }

  v5 = *(v82 + 504);
  v72 = *(v82 + 472);
  v71 = *(v82 + 480);
  (*(*(v82 + 528) + 32))(*(v82 + 536), *(v82 + 512), *(v82 + 520));
  v6 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v71 + 16))(v5, v6, v72);
  v74 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();
  sub_10025C9B0(&unk_1006D7720, &qword_1004FC6D0);
  v75 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v74, v73))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v66 = sub_10025C9B0(&qword_1006D7290, &unk_1004FC6E0);
    v68 = sub_1002641E8(0, v66, v66);
    v69 = sub_1002641E8(0, &type metadata for Any + 8, &type metadata for Any + 8);
    *(v82 + 408) = buf;
    *(v82 + 416) = v68;
    *(v82 + 424) = v69;
    sub_10026423C(0, (v82 + 408));
    sub_10026423C(0, (v82 + 408));
    *(v82 + 432) = v75;
    v70 = swift_task_alloc();
    v70[2] = v82 + 408;
    v70[3] = v82 + 416;
    v70[4] = v82 + 424;
    sub_10025C9B0(&qword_1006D72C0, &unk_1004FEEF0);
    sub_10026E6E0();
    Sequence.forEach(_:)();

    _os_log_impl(&_mh_execute_header, v74, v73, "#SiriMail OpenDraftIntent opening persisted draft message", buf, 2u);
    sub_10026429C(v68, 0);
    sub_10026429C(v69, 0);
    UnsafeMutablePointer.deallocate()();
  }

  v60 = *(v82 + 504);
  v61 = *(v82 + 472);
  v63 = *(v82 + 464);
  v62 = *(v82 + 456);
  v59 = *(v82 + 480);
  _objc_release(v74);
  (*(v59 + 8))(v60, v61);
  v64 = sub_1002BA97C(v62, v63);
  v65 = [v64 daemonInterface];
  _objc_release(v64);
  if (!v65)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v57 = [v65 messageRepository];
  _objc_release(v65);
  v58 = EMMessageRepository.message(forMailMessageEntityID:)();
  *(v82 + 584) = v58;
  _objc_release(v57);
  *(v82 + 384) = v58;
  *(v82 + 592) = sub_10028D4AC();
  _objc_retain(v58);
  v8 = swift_task_alloc();
  *(v82 + 600) = v8;
  *v8 = *(v82 + 296);
  v8[1] = sub_1003DBFB8;

  return sub_10028F080(v58);
}

uint64_t sub_1003DBFB8(uint64_t a1)
{
  v5 = *v1;
  v4 = *v1;
  *(v4 + 296) = *v1;
  *(v4 + 608) = a1;

  v2 = *(v5 + 552);

  return _swift_task_switch(sub_1003DC0FC, v2);
}

uint64_t sub_1003DC0FC()
{
  v1 = v0[73];
  v22 = v1;
  v0[37] = v0;
  _objc_retain(v1);
  v0[49] = [v22 subject];
  if (v0[49])
  {
    v14 = *(v21 + 584);
    v15 = *(v21 + 392);
    _objc_retain(v15);
    sub_10026A58C((v21 + 392));
    _objc_release(v14);
    v16 = [v15 subjectString];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v2;
    _objc_release(v15);
    _objc_release(v16);
    v19 = v17;
    v20 = v18;
  }

  else
  {
    v5 = *(v21 + 584);
    sub_10026A58C((v21 + 392));
    _objc_release(v5);
    v19 = 0;
    v20 = 0;
  }

  v10 = *(v21 + 584);
  v12 = *(v21 + 536);
  v13 = *(v21 + 520);
  v7 = *(v21 + 464);
  v6 = *(v21 + 456);
  v8 = *(v21 + 576);
  v11 = *(v21 + 528);
  v9 = sub_1003DC4B8(v10, *(v21 + 608), v19, v20);
  *(v21 + 400) = v9;
  *(v21 + 280) = v6;
  *(v21 + 288) = v7;
  sub_100286C38(v8, v9);
  _objc_release(v9);
  _objc_release(v10);
  (*(v11 + 8))(v12, v13);
  static IntentResult.result<>()();
  swift_unknownObjectRelease();

  v3 = *(*(v21 + 296) + 8);

  return v3();
}

uint64_t sub_1003DC448()
{
  sub_10025C9B0(&unk_1006D7090, &unk_1004FEED0);
  sub_10000B074();
  sub_1003DC7F0();
  return AppDependency.__allocating_init(key:manager:)();
}

void (*sub_1003DC604(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = sub_100294700(0x28uLL, 61414);
  *a1 = v3;
  v3[4] = sub_1003DAB04(v3, *v1);
  return sub_10034C098;
}

uint64_t sub_1003DC6C4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_1003DABB0(a1, v6, v7);
}

uint64_t sub_1003DC790@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003D99A0();
  *a1 = result;
  a1[1] = v2;
  return result;
}

id sub_1003DC828(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = String._bridgeToObjectiveC()();

    v4 = [v11 initDraftRestoreOfMessage:a1 legacyMessage:a2 draftSubject:v8];
  }

  else
  {
    v4 = [v11 initDraftRestoreOfMessage:a1 legacyMessage:a2 draftSubject:0];
  }

  v7 = v4;
  _objc_release(v6);
  _objc_release(a2);
  _objc_release(a1);
  return v7;
}

id sub_1003DC908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v15 = String._bridgeToObjectiveC()();
  if (a4)
  {
    v10 = String._bridgeToObjectiveC()();

    v6 = [v13 initRecoveredAutosavedMessageWithIdentifier:v15 draftSubject:v10 messageRepository:? originalMessageObjectID:?];
  }

  else
  {
    v6 = [v13 initRecoveredAutosavedMessageWithIdentifier:v15 draftSubject:0 messageRepository:? originalMessageObjectID:?];
  }

  v9 = v6;
  _objc_release(a6);
  _objc_release(a5);
  _objc_release(v8);
  _objc_release(v15);

  return v9;
}

unint64_t sub_1003DCA14(uint64_t a1)
{
  result = sub_1003DCA40();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1003DCA40()
{
  v2 = qword_1006DB368;
  if (!qword_1006DB368)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB368);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003DCAD4()
{
  v2 = qword_1006DB370;
  if (!qword_1006DB370)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB370);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003DCB50(uint64_t a1)
{
  result = sub_10033DD3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003DCBAC()
{
  v2 = qword_1006DB380;
  if (!qword_1006DB380)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003DCC40()
{
  v2 = qword_1006DB388;
  if (!qword_1006DB388)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003DCD38()
{
  v2 = qword_1006DB390;
  if (!qword_1006DB390)
  {
    sub_10025CAA4(&unk_1006DB398, qword_100509878);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB390);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003DCDD8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v9 = "Open an email message draft";
  v1 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v17 = &v4 - v4;
  v19 = 0;
  v5 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v13 = &v4 - v5;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v12 = &v4 - v6;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v10 = &v4 - v7;
  v16 = type metadata accessor for LocalizedStringResource();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v18 = &v4 - v8;
  v20 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPEN_DRAFT_DESCRIPTION", 0x16uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v20 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v23 = v9;
  v24 = 27;
  v25 = 2;
  v21 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, v20, v20, v16);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v2 = type metadata accessor for IntentDescription();
  return (*(*(v2 - 8) + 56))(v22, v21, v20);
}

uint64_t sub_1003DD118@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Open an email message draft";
  v4 = 0;
  v3 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v3;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v13 = &v3 - v5;
  v1 = type metadata accessor for String.LocalizationValue();
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v6;
  v7 = 10;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Open Draft", 0xAuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", v7, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 27;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

void *sub_1003DD2FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a1;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v4, sizeof(__dst));

  return memcpy(a2, __dst, 0x48uLL);
}

void *sub_1003DD380(void *a1, uint64_t a2)
{
  v5[10] = a1;
  v5[9] = a2;

  sub_1002CD078(a1, v5);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  result = a1;
  sub_10028D6D0(a1);
  return result;
}

void (*sub_1003DD408(void *a1, uint64_t a2))(void **a1, char a2)
{
  v4 = sub_100294700(0x30uLL, 27755);
  *a1 = v4;
  v4[4] = a2;

  v4[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_1003DD4A4(uint64_t a1)
{
  v5[2] = a1;
  v3 = [objc_opt_self() sharedApplication];
  v2 = [v3 connectedScenes];
  sub_1002883E4();
  sub_100288448();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v3);
  v5[0] = v4;
  sub_10025C9B0(&unk_1006D72F0, &unk_1005001F0);
  sub_1002884C8();
  Sequence.first(where:)();
  sub_100264880(v5);
  _objc_release(v2);
  return v5[1];
}

uint64_t sub_1003DD5D0()
{
  v16 = "Email message draft to open";
  v40 = &v50;
  v50 = 0;
  v27 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v5 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v38 = &v5 - v5;
  v1 = sub_10025C9B0(&unk_1006D7080, &unk_1004FFEB0);
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v37 = &v5 - v6;
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v6);
  v36 = &v5 - v7;
  v8 = (*(*(sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v34 = &v5 - v8;
  v9 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v22 = &v5 - v9;
  v10 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v21 = &v5 - v10;
  v11 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v19 = &v5 - v11;
  v26 = type metadata accessor for LocalizedStringResource();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v12 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v33 = &v5 - v12;
  sub_10025C9B0(&unk_1006DCC10, &unk_1005098B0);
  v28 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Draft Message", 0xDuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v14 = "AppIntents";
  v15 = 10;
  v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v28 & 1);
  sub_100015CC0();
  sub_10025D410(v22);
  v47 = v16;
  v17 = 27;
  v48 = 27;
  v18 = 2;
  v49 = 2;
  v25 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPEN_DRAFT_ENTITY_DESCRIPTION", 0x1DuLL, v28 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v14, v15, v28 & 1);
  sub_100015CC0();
  sub_10025D410(v22);
  v43 = v16;
  v44 = v17;
  v45 = v18;
  v46 = v25 & 1 & v28;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v23 + 56))(v34, v25, v28, v26);
  memset(__src, 0, sizeof(__src));
  v35 = __dst;
  memcpy(__dst, __src, sizeof(__dst));
  v29 = type metadata accessor for IntentDialog();
  v3 = *(v29 - 8);
  v31 = *(v3 + 56);
  v30 = v3 + 56;
  v31(v36, v28);
  (v31)(v37, v28, v28, v29);
  v32 = sub_10028D658();
  v39 = sub_1002B9D60();
  sub_1003BD8F8(v38);
  v41 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v50 = v41;
  sub_100268928(v40);
  return v41;
}

void (*sub_1003DDD88(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = sub_100294700(0x28uLL, 49551);
  *a1 = v3;
  v3[4] = sub_1003DD408(v3, *v1);
  return sub_10034C098;
}

uint64_t sub_1003DDDFC(uint64_t a1, uint64_t a2)
{
  sub_1003DDE48();
  sub_1002D3F00();
  return static URLRepresentableIntent<>.urlRepresentation.getter();
}

unint64_t sub_1003DDE48()
{
  v2 = qword_1006DB3A8;
  if (!qword_1006DB3A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB3A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003DDF44(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v7 = sub_1003DDE48();
  v8 = sub_1003DE164();
  v4 = sub_1002D3F00();
  *v3 = *(v6 + 16);
  v3[1] = sub_1003DE01C;

  return URLRepresentableIntent<>.perform()(a2, v7, v8, v4);
}

uint64_t sub_1003DE01C()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v4 = *(*v5 + 8);

    return v4();
  }

  return result;
}

unint64_t sub_1003DE164()
{
  v2 = qword_1006DB3B8;
  if (!qword_1006DB3B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB3B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003DE1E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003DD5D0();
  *a1 = result;
  return result;
}

unint64_t sub_1003DE23C()
{
  v2 = qword_1006DB3C0;
  if (!qword_1006DB3C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB3C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003DE2D0()
{
  v2 = qword_1006DB3C8;
  if (!qword_1006DB3C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB3C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003DE364(uint64_t a1)
{
  result = sub_1003DE23C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003DE3A8()
{
  v2 = qword_1006DB3D8;
  if (!qword_1006DB3D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB3D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003DE43C()
{
  v2 = qword_1006DB3E0;
  if (!qword_1006DB3E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB3E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003DE4D0()
{
  v2 = qword_1006DB3E8;
  if (!qword_1006DB3E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB3E8);
    return WitnessTable;
  }

  return v2;
}

id static OpenMailboxQuicklyFactory.createOpenMailboxQuicklyViewController(with:delegate:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v24 = a2;
  v16 = "Fatal error";
  v17 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v18 = "MobileMail/OpenMailboxQuicklyFactory.swift";
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v28 = sub_10025C9B0(&qword_1006DB3F0, &qword_100509AD0);
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v21 = *(v25 + 64);
  v20 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v24);
  v29 = v9 - v20;
  v22 = v20;
  v4 = __chkstk_darwin(v3);
  v27 = v9 - v22;
  v37 = v9 - v22;
  v36 = v5;
  v35 = v4;
  v34 = v2;
  swift_unknownObjectRetain();
  v23 = type metadata accessor for OpenMailboxQuicklyItem();
  sub_1003DEA44();
  MUIOpenMailboxQuicklyView.init(delegate:)();
  sub_10025C9B0(&qword_1006DB400, &qword_100509AD8);
  (*(v25 + 16))(v29, v27, v28);
  v30 = UIHostingController.__allocating_init(rootView:)();
  v33 = v30;
  _objc_retain(v30);
  [v30 setModalPresentationStyle:5];
  _objc_release(v30);
  _objc_retain(v30);
  [v30 setModalTransitionStyle:2];
  _objc_release(v30);
  _objc_retain(v30);
  v31 = [v30 view];
  _objc_release(v30);
  if (v31)
  {
    v15 = v31;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v13 = v15;
  v12 = [objc_opt_self() clearColor];
  [v13 setBackgroundColor:?];
  _objc_release(v12);
  _objc_release(v13);
  _objc_retain(v30);
  v14 = [v30 view];
  _objc_release(v30);
  if (v14)
  {
    v11 = v14;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v10 = v11;
  type metadata accessor for AutoresizingMask(0);
  v9[0] = 2;
  _allocateUninitializedArray<A>(_:)();
  *v6 = v9[0];
  v6[1] = 16;
  sub_1002612B0();
  v9[1] = v7;
  sub_100266C1C();
  SetAlgebra<>.init(arrayLiteral:)();
  [v10 setAutoresizingMask:v32];
  _objc_release(v10);
  (*(v25 + 8))(v27, v28);
  return v30;
}

unint64_t sub_1003DEA44()
{
  v2 = qword_1006DB3F8;
  if (!qword_1006DB3F8)
  {
    type metadata accessor for OpenMailboxQuicklyItem();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB3F8);
    return WitnessTable;
  }

  return v2;
}

char *static OpenMailboxQuicklyFactory.createOpenMailboxQuicklyItem(with:)(void *a1)
{
  v49 = 0;
  v48 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v50 = a1;
  v39 = sub_1003DF218(a1);
  if (!v39)
  {
    return 0;
  }

  v48 = v39;
  v1 = [a1 itemURLString];
  v37 = v1;
  if (v1)
  {
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v2;
    _objc_release(v37);
    v35 = v33;
    v36 = v34;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  if (!v36)
  {
    _objc_release(v39);
    return 0;
  }

  v46 = v35;
  v47 = v36;
  v32 = [v39 isSmartMailbox];
  _objc_retain(a1);
  if (v32)
  {
    v31 = 1;
  }

  else
  {
    v45 = [a1 representingMailbox];
    v30 = v45 != 0;
    sub_10026A58C(&v45);
    v31 = v30;
  }

  _objc_release(a1);
  if ((v31 & 1) == 0)
  {

    _objc_release(v39);
    return 0;
  }

  v44 = static Color.accentColor.getter();
  v29 = [a1 iconTintColor];
  if (v29)
  {
    _objc_retain(v29);
    v44 = Color.init(_:)();

    _objc_release(v29);
  }

  v43 = Array.init()();
  v28 = [a1 representingMailbox];
  if (v28)
  {
    v42 = v28;
    v3 = [v28 accountRelativePath];
    v27 = v3;
    if (v3)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v4;
      _objc_release(v27);
      v25 = v23;
      v26 = v24;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    if (v26)
    {
      v21 = v25;
      v22 = v26;
    }

    else
    {
      LOBYTE(v7) = 2;
      v8 = 49;
      LODWORD(v9) = 0;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v41[0] = v21;
    v41[1] = v22;
    v40 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("/", 1uLL, 1);
    sub_1002686CC();
    v19 = StringProtocol.components<A>(separatedBy:)();
    sub_100268744(&v40);
    sub_100268744(v41);
    v43 = v19;

    sub_10025C9B0(&unk_1006D69B0, &unk_100503A00);
    sub_1002C8C78();
    sub_1003DF578();
    RangeReplaceableCollection<>.removeLast()();

    v20 = [v28 account];
    if (v20)
    {
      v18 = v20;
    }

    else
    {
      LOBYTE(v7) = 2;
      v8 = 51;
      LODWORD(v9) = 0;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v17 = [v18 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v18);
    Array.insert(_:at:)();
    _objc_release(v17);
    _objc_release(v28);
  }

  type metadata accessor for OpenMailboxQuicklyItem();
  v14 = [v39 name];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v5;
  v12 = v43;

  v13 = v44;

  v15 = sub_1003DF6CC(v35, v36, v39, v10, v11, v12, v13);
  _objc_release(v14);
  sub_100264880(&v43);
  sub_100268928(&v44);
  return v15;
}

id sub_1003DF218(void *a1)
{
  v17 = [a1 smartMailbox];
  if (!v17)
  {
    v14 = [a1 representingMailbox];
    if (v14)
    {
      v12 = [v14 objectID];
      _objc_release(v14);
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v11 = [objc_opt_self() sharedApplication];
      objc_opt_self();
      v1 = swift_dynamicCastObjCClass();
      if (v1)
      {
        v10 = v1;
      }

      else
      {
        _objc_release(v11);
        v10 = 0;
      }

      if (v10)
      {
        v2 = [v10 daemonInterface];
        if (v2)
        {
          v9 = v2;
        }

        else
        {
          LOBYTE(v4) = 2;
          v5 = 31;
          LODWORD(v6) = 0;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v7 = [v9 mailboxRepository];
        _objc_release(v9);
        v8 = [v7 mailboxIfAvailableForObjectID:v13];
        _objc_release(v7);
        if (v8)
        {
          _objc_release(v10);
          _objc_release(v13);
          return v8;
        }

        _objc_release(v10);
        _objc_release(v13);
      }

      else
      {
        _objc_release(v13);
      }
    }

    return 0;
  }

  return v17;
}

unint64_t sub_1003DF578()
{
  v2 = qword_1006DB408;
  if (!qword_1006DB408)
  {
    sub_10025CAA4(&unk_1006D69B0, &unk_100503A00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB408);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003DF7C4()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_identifier);

  return v2;
}

void *sub_1003DF810()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_mailbox);
  _objc_retain(v2);
  return v2;
}

uint64_t sub_1003DF8E4()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_displayName);

  return v2;
}

uint64_t sub_1003DF9BC()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_pathComponents);

  return v2;
}

uint64_t sub_1003DF9FC()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_tintColor);

  return v2;
}

char *sub_1003DFA3C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = 0;
  v24 = a1;
  v25 = a2;
  v23 = a3;
  v21 = a4;
  v22 = a5;
  v20 = a6;
  v19 = a7;

  v7 = OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_identifier;
  *OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_identifier = a1;
  *(v7 + 8) = a2;
  _objc_retain(a3);
  *&v26[OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_mailbox] = a3;

  v8 = &v26[OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_displayName];
  *v8 = a4;
  *(v8 + 1) = a5;

  *&v26[OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_pathComponents] = a6;

  *&v26[OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_tintColor] = a7;
  v18.receiver = v26;
  v18.super_class = type metadata accessor for OpenMailboxQuicklyItem();
  v17 = objc_msgSendSuper2(&v18, "init");
  _objc_retain(v17);
  v26 = v17;

  _objc_release(a3);

  _objc_release(v26);
  return v17;
}

uint64_t sub_1003DFC44()
{
  v12 = *(v0 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_mailbox);
  _objc_retain(v12);
  v13 = [v12 isSmartMailbox];
  _objc_release(v12);
  if ((v13 & 1) == 0)
  {
    goto LABEL_16;
  }

  v9 = *(v11 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_mailbox);
  _objc_retain(v9);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v8 = v10;
  }

  else
  {
    _objc_release(v9);
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_16;
  }

  [v8 smartMailboxType];
  type metadata accessor for EMSmartMailboxType(0);
  sub_1003E0A68();
  v1 = == infix<A>(_:_:)();
  if ((v1 & 1) == 0 || ((v7 = [objc_opt_self() sharedInstanceForSourceType:4]) == 0 ? (v6 = 0) : (v5 = objc_msgSend(v7, "icon"), _objc_release(v7), v6 = v5), !v6))
  {
    _objc_release(v8);
LABEL_16:
    sub_1003DFEE4();
    return Image.init(systemName:)();
  }

  v3 = Image.init(uiImage:)();
  _objc_release(v8);
  return v3;
}

uint64_t sub_1003DFEE4()
{
  v51 = *(v0 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_mailbox);
  _objc_retain(v51);
  v52 = [v51 isSmartMailbox];
  _objc_release(v51);
  if ((v52 & 1) != 0 && ((v48 = *(v50 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_mailbox), _objc_retain(v48), objc_opt_self(), (v49 = swift_dynamicCastObjCClass()) == 0) ? (_objc_release(v48), v47 = 0) : (v47 = v49), v47))
  {
    v1 = [v47 smartMailboxType];
    if (v1)
    {
      if (v1 == 1)
      {
        v42 = MFImageGlyphFavoriteFlaggedMailbox;
        _objc_retain(MFImageGlyphFavoriteFlaggedMailbox);
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v42);
        _objc_release(v47);
        return v43;
      }

      else if (v1 == 2)
      {
        v40 = MFImageGlyphFavoriteUnreadMailbox;
        _objc_retain(MFImageGlyphFavoriteUnreadMailbox);
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v40);
        _objc_release(v47);
        return v41;
      }

      else if (v1 == 4)
      {
        v38 = MFImageGlyphFavoriteAttachmentsMailbox;
        _objc_retain(MFImageGlyphFavoriteAttachmentsMailbox);
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v38);
        _objc_release(v47);
        return v39;
      }

      else if (v1 == 5)
      {
        v36 = MFImageGlyphFavoriteNotifydMailbox;
        _objc_retain(MFImageGlyphFavoriteNotifydMailbox);
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v36);
        _objc_release(v47);
        return v37;
      }

      else if (v1 == 6)
      {
        v32 = MFImageGlyphFavoriteTodayMailbox;
        _objc_retain(MFImageGlyphFavoriteTodayMailbox);
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v32);
        _objc_release(v47);
        return v33;
      }

      else if (v1 == 7)
      {
        v34 = MFImageGlyphFavoriteMuteThreadMailbox;
        _objc_retain(MFImageGlyphFavoriteMuteThreadMailbox);
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v34);
        _objc_release(v47);
        return v35;
      }

      else if (v1 == 8)
      {
        v22 = MFImageGlyphFavoriteInboxUnifiedMailbox;
        _objc_retain(MFImageGlyphFavoriteInboxUnifiedMailbox);
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v22);
        _objc_release(v47);
        return v23;
      }

      else if (v1 == 9)
      {
        v30 = MFImageGlyphFavoriteReadLaterMailbox;
        _objc_retain(MFImageGlyphFavoriteReadLaterMailbox);
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v30);
        _objc_release(v47);
        return v31;
      }

      else if (v1 == 10)
      {
        v28 = MFImageGlyphFavoriteFollowUpMailbox;
        _objc_retain(MFImageGlyphFavoriteFollowUpMailbox);
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v28);
        _objc_release(v47);
        return v29;
      }

      else if (v1 == 11)
      {
        v26 = MFImageGlyphFavoriteSendLaterMailbox;
        _objc_retain(MFImageGlyphFavoriteSendLaterMailbox);
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v26);
        _objc_release(v47);
        return v27;
      }

      else if (v1 == 12)
      {
        v24 = MFImageGlyphFavoriteUnsubscribeMailbox;
        _objc_retain(MFImageGlyphFavoriteUnsubscribeMailbox);
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v24);
        _objc_release(v47);
        return v25;
      }

      else
      {
        v20 = MFImageGlyphGenericMailbox;
        _objc_retain(MFImageGlyphGenericMailbox);
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        _objc_release(v20);
        _objc_release(v47);
        return v21;
      }
    }

    else
    {
      v44 = MFImageGlyphFavoriteVIPMailbox;
      _objc_retain(MFImageGlyphFavoriteVIPMailbox);
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v44);
      _objc_release(v47);
      return v45;
    }
  }

  else
  {
    v19 = *(v50 + OBJC_IVAR____TtC10MobileMail22OpenMailboxQuicklyItem_mailbox);
    _objc_retain(v19);
    [v19 type];
    _objc_release(v19);
    type metadata accessor for ECMailboxType(0);
    sub_100266924();
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v17 = MFImageGlyphJunkMailbox;
      _objc_retain(MFImageGlyphJunkMailbox);
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v17);
      return v18;
    }

    else if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v15 = MFImageGlyphArchiveMailbox;
      _objc_retain(MFImageGlyphArchiveMailbox);
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v15);
      return v16;
    }

    else if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v13 = MFImageGlyphTrashMailbox;
      _objc_retain(MFImageGlyphTrashMailbox);
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v13);
      return v14;
    }

    else if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v11 = MFImageGlyphSentMailbox;
      _objc_retain(MFImageGlyphSentMailbox);
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v11);
      return v12;
    }

    else if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v9 = MFImageGlyphDraftMailbox;
      _objc_retain(MFImageGlyphDraftMailbox);
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v9);
      return v10;
    }

    else if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v7 = MFImageGlyphOutboxMailbox;
      _objc_retain(MFImageGlyphOutboxMailbox);
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v7);
      return v8;
    }

    else if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v5 = MFImageGlyphInboxMailbox;
      _objc_retain(MFImageGlyphInboxMailbox);
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v5);
      return v6;
    }

    else
    {
      v3 = MFImageGlyphGenericMailbox;
      _objc_retain(MFImageGlyphGenericMailbox);
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v3);
      return v4;
    }
  }
}

unint64_t sub_1003E0A68()
{
  v2 = qword_1006DB468;
  if (!qword_1006DB468)
  {
    type metadata accessor for EMSmartMailboxType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB468);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003E0AE8(uint64_t a1)
{
  v8[4] = 0;
  v8[5] = a1;
  sub_100015DA0(a1, v8);
  if (v8[3])
  {
    sub_10025C9B0(&qword_1006DB478, &qword_100509B38);
    if (swift_dynamicCast())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }

    v5 = v6;
  }

  else
  {
    sub_10000B0D8(v8);
    v5 = 0;
  }

  if (v5)
  {

    swift_getObjectType();
    swift_unknownObjectRetain();
    v2 = [v5 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRelease();
    v3 = static String.== infix(_:_:)();

    _objc_release(v2);

    swift_unknownObjectRelease();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

id sub_1003E0E44()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OpenMailboxQuicklyItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003E0F54@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for OpenMailboxQuicklyItem();
  result = Identifiable<>.id.getter();
  *a2 = result;
  return result;
}

unint64_t sub_1003E0FC0()
{
  v2 = qword_1006DB508;
  if (!qword_1006DB508)
  {
    type metadata accessor for OpenMailboxQuicklyItem();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E1058()
{
  v2 = qword_1006DB510[0];
  if (!qword_1006DB510[0])
  {
    type metadata accessor for OpenMailboxQuicklyItem();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1006DB510);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003E10F0@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v9 = "Open an email message";
  v1 = sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v17 = &v4 - v4;
  v19 = 0;
  v5 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v13 = &v4 - v5;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v12 = &v4 - v6;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v10 = &v4 - v7;
  v16 = type metadata accessor for LocalizedStringResource();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v18 = &v4 - v8;
  v20 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPEN_MESSAGE_DESCRIPTION", 0x18uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v20 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v23 = v9;
  v24 = 21;
  v25 = 2;
  v21 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, v20, v20, v16);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v2 = type metadata accessor for IntentDescription();
  return (*(*(v2 - 8) + 56))(v22, v21, v20);
}

uint64_t sub_1003E1430@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Open an email message";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v13 = &v3 - v6;
  v1 = type metadata accessor for String.LocalizationValue();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v7;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Open Message", 0xCuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 21;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

void *sub_1003E1614@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a1;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v4, sizeof(__dst));

  return memcpy(a2, __dst, 0x80uLL);
}

void *sub_1003E1698(void *a1, uint64_t a2)
{
  v5[17] = a1;
  v5[16] = a2;

  sub_1002E0080(a1, v5);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  result = a1;
  sub_10027D9CC(a1);
  return result;
}

void (*sub_1003E1720(void *a1, uint64_t a2))(void **a1, char a2)
{
  v4 = sub_100294700(0x30uLL, 44969);
  *a1 = v4;
  v4[4] = a2;

  v4[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_1003E17BC(uint64_t a1)
{
  v5[2] = a1;
  v3 = [objc_opt_self() sharedApplication];
  v2 = [v3 connectedScenes];
  sub_1002883E4();
  sub_100288448();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v3);
  v5[0] = v4;
  sub_10025C9B0(&unk_1006D72F0, &unk_1005001F0);
  sub_1002884C8();
  Sequence.first(where:)();
  sub_100264880(v5);
  _objc_release(v2);
  return v5[1];
}

uint64_t sub_1003E18E8()
{
  v17 = "Email message to open";
  v42 = &v52;
  v52 = 0;
  v29 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v6 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v40 = &v5 - v6;
  v1 = sub_10025C9B0(&unk_1006D7080, &unk_1004FFEB0);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v39 = &v5 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v7);
  v38 = &v5 - v8;
  v9 = (*(*(sub_10025C9B0(&qword_1006D6280, qword_1004FC6A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v36 = &v5 - v9;
  v10 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v23 = &v5 - v10;
  v11 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v22 = &v5 - v11;
  v12 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v20 = &v5 - v12;
  v27 = type metadata accessor for LocalizedStringResource();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v13 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v35 = &v5 - v13;
  sub_10025C9B0(&qword_1006DBAE0, &unk_100509DE0);
  v30 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message", 7uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v15 = "AppIntents";
  v16 = 10;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v30 & 1);
  sub_100015CC0();
  sub_10025D410(v23);
  v49 = v17;
  v18 = 21;
  v50 = 21;
  v19 = 2;
  v51 = 2;
  v26 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OPEN_MESSAGE_ENTITY_DESCRIPTION", 0x1FuLL, v30 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v15, v16, v30 & 1);
  sub_100015CC0();
  sub_10025D410(v23);
  v45 = v17;
  v46 = v18;
  v47 = v19;
  v48 = v26 & 1 & v30;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v24 + 56))(v36, v26, v30, v27);
  v28 = v53;
  sub_1002E41D4(v53);
  v37 = v44;
  memcpy(v44, v28, sizeof(v44));
  v31 = type metadata accessor for IntentDialog();
  v3 = *(v31 - 8);
  v33 = *(v3 + 56);
  v32 = v3 + 56;
  v33(v38, v30);
  (v33)(v39, v30, v30, v31);
  v34 = sub_10027D1BC();
  v41 = sub_10027EAAC();
  sub_1003BD8F8(v40);
  v43 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v52 = v43;
  sub_100268928(v42);
  return v43;
}

void (*sub_1003E1F1C(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = sub_100294700(0x28uLL, 33954);
  *a1 = v3;
  v3[4] = sub_1003E1720(v3, *v1);
  return sub_10034C098;
}

uint64_t sub_1003E1F90(uint64_t a1, uint64_t a2)
{
  sub_1003E1FDC();
  sub_10038F6E8();
  return static URLRepresentableIntent<>.urlRepresentation.getter();
}

unint64_t sub_1003E1FDC()
{
  v2 = qword_1006DB528;
  if (!qword_1006DB528)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB528);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003E20D8(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v7 = sub_1003E1FDC();
  v8 = sub_1003E21B0();
  v4 = sub_10038F6E8();
  *v3 = *(v6 + 16);
  v3[1] = sub_1003DE01C;

  return URLRepresentableIntent<>.perform()(a2, v7, v8, v4);
}

unint64_t sub_1003E21B0()
{
  v2 = qword_1006DB538;
  if (!qword_1006DB538)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB538);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003E222C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003E18E8();
  *a1 = result;
  return result;
}

unint64_t sub_1003E2288()
{
  v2 = qword_1006DB540;
  if (!qword_1006DB540)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB540);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E231C()
{
  v2 = qword_1006DB548;
  if (!qword_1006DB548)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB548);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E23B0(uint64_t a1)
{
  result = sub_1003E2288();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003E23F4()
{
  v2 = qword_1006DB558;
  if (!qword_1006DB558)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1003E2488()
{
  v2 = qword_1006DB560;
  if (!qword_1006DB560)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB560);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1003E25BC@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_searchItem);
  swift_beginAccess();
  sub_1003E2620(v3, a1);
  return swift_endAccess();
}

void *sub_1003E2620(const void *a1, void *a2)
{
  v6 = type metadata accessor for SearchItem.Photo();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&unk_1006DBC50, &qword_100509DF0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1003E2748(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006DBC50, &qword_100509DF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = __chkstk_darwin(v7);
  v9 = v1;
  sub_1003E2620(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_searchItem);
  v6 = &v8;
  swift_beginAccess();
  sub_1003E2830(v4, v5);
  swift_endAccess();
  sub_1002F1878();
  return sub_1003E2A58(v7);
}

void *sub_1003E2830(const void *a1, void *a2)
{
  v7 = type metadata accessor for SearchItem.Photo();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = sub_10025C9B0(&unk_1006DBC50, &qword_100509DF0);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = sub_10025C9B0(&unk_1006DBC50, &qword_100509DF0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_1003E2A58(uint64_t a1)
{
  v3 = type metadata accessor for SearchItem.Photo();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1003E2B00(uint64_t a1)
{
  v30 = a1;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v1 = sub_10025C9B0(&qword_1006DB578, &qword_100509DF8);
  v24 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v25 = &v16 - v24;
  v37 = 0;
  v26 = type metadata accessor for PhotoContentConfiguration(0);
  v28 = *(*(v26 - 8) + 64);
  v27 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v30);
  v3 = &v16 - v27;
  v35 = &v16 - v27;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v32 = &v16 - v29;
  v49 = &v16 - v29;
  v48 = v4;
  v47 = v5;
  sub_1003E311C(v3);
  v31 = type metadata accessor for UICellConfigurationState();
  v34 = v46;
  v46[3] = v31;
  v46[4] = &protocol witness table for UICellConfigurationState;
  v6 = sub_10026AC9C(v46);
  (*(*(v31 - 8) + 16))(v6, v30);
  sub_1003E3210(v32);
  v7 = v33;
  sub_1000160F4(v34);
  sub_1003E3258(v35);
  v36 = OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_searchItem;
  v38 = &v7[OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_searchItem];
  swift_beginAccess();
  v39 = type metadata accessor for SearchItem.Photo();
  v8 = *(v39 - 8);
  v40 = *(v8 + 48);
  v41 = v8 + 48;
  if (v40(v38, 1) == 0)
  {
    v22 = SearchItem.Photo.image.getter();
    swift_endAccess();
    v23 = v22;
  }

  else
  {
    swift_endAccess();
    v23 = 0;
  }

  v9 = v33;
  v10 = *(v32 + 1);
  *(v32 + 1) = v23;
  _objc_release(v10);
  _objc_retain(v9);
  *(v32 + 2) = sub_100412864();

  _objc_release(v33);
  v20 = &v33[OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_searchItem];
  swift_beginAccess();
  if ((v40)(v20, 1, v39) == 0)
  {
    SearchItem.Photo.configuration.getter();
    swift_endAccess();
    v11 = type metadata accessor for CornerConfiguration();
    (*(*(v11 - 8) + 56))(v25, 0, 1);
  }

  else
  {
    swift_endAccess();
    v15 = type metadata accessor for CornerConfiguration();
    (*(*(v15 - 8) + 56))(v25, 1);
  }

  sub_1003E3344(v25, &v32[*(v26 + 28)]);
  if (UICellConfigurationState.isHighlighted.getter())
  {
    v19 = 1;
  }

  else
  {
    v19 = UICellConfigurationState.isSelected.getter();
  }

  if (v19)
  {
    v18 = *&v33[OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_selectedAlpha];
  }

  else
  {
    v18 = *&v33[OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_defaultAlpha];
  }

  v12 = v33;
  *v32 = v18;
  _objc_retain(v12);
  v17 = &v43;
  v44 = v26;
  v45 = sub_1003E356C();
  v13 = sub_10026AC9C(v17);
  sub_1003E35EC(v32, v13);
  UICollectionViewCell.contentConfiguration.setter();
  _objc_release(v33);
  return sub_1003E3258(v32);
}

uint64_t type metadata accessor for PhotoContentConfiguration(uint64_t a1)
{
  v2 = qword_1006DB660;
  if (!qword_1006DB660)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

char *sub_1003E311C@<X0>(char *a1@<X8>)
{
  v9 = a1;
  v10 = 0;
  v5 = 0;
  v6 = (*(*(type metadata accessor for PhotoContentConfiguration(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v1 = &v5 - v6;
  v8 = v1;
  v10 = &v5 - v6;
  *v1 = 1.0;
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  v7 = *(v2 + 28);
  v3 = type metadata accessor for CornerConfiguration();
  (*(*(v3 - 8) + 56))(&v8[v7], 1);
  return sub_1003E60F8(v8, v9);
}

uint64_t sub_1003E3258(uint64_t a1)
{
  _objc_release(*(a1 + 8));

  v2 = *(type metadata accessor for PhotoContentConfiguration(0) + 28);
  v4 = type metadata accessor for CornerConfiguration();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v2, 1))
  {
    (*(v5 + 8))(a1 + v2, v4);
  }

  return a1;
}

void *sub_1003E3344(const void *a1, void *a2)
{
  v7 = type metadata accessor for CornerConfiguration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = sub_10025C9B0(&qword_1006DB578, &qword_100509DF8);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = sub_10025C9B0(&qword_1006DB578, &qword_100509DF8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

unint64_t sub_1003E356C()
{
  v2 = qword_1006DB580;
  if (!qword_1006DB580)
  {
    type metadata accessor for PhotoContentConfiguration(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB580);
    return WitnessTable;
  }

  return v2;
}

char *sub_1003E35EC(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(a1 + 1);
  _objc_retain(v4);
  *(a2 + 1) = v4;
  v6 = *(a1 + 2);

  *(a2 + 2) = v6;
  v7 = *(type metadata accessor for PhotoContentConfiguration(0) + 28);
  v9 = type metadata accessor for CornerConfiguration();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a1[v7], 1))
  {
    v2 = sub_10025C9B0(&qword_1006DB578, &qword_100509DF8);
    memcpy(&a2[v7], &a1[v7], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))();
    (*(v10 + 56))(&a2[v7], 0, 1, v9);
  }

  return a2;
}

char *sub_1003E38B8(double a1, double a2, double a3, double a4)
{
  *&v9 = a1;
  *(&v9 + 1) = a2;
  *&v10 = a3;
  *(&v10 + 1) = a4;
  ObjectType = swift_getObjectType();
  v13 = v9;
  v14 = v10;
  v15 = v4;
  *&v4[OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_selectedAlpha] = 0x3FEB333333333333;
  *&v15[OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_defaultAlpha] = 1.0;
  v7 = OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_searchItem;
  v5 = type metadata accessor for SearchItem.Photo();
  (*(*(v5 - 8) + 56))(&v15[v7], 1);
  v12.receiver = v15;
  v12.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v12, "initWithFrame:", v9, v10);
  _objc_retain(v11);
  v15 = v11;
  _objc_release(v11);
  return v11;
}

char *sub_1003E3A78(void *a1)
{
  ObjectType = swift_getObjectType();
  v10 = a1;
  v11 = v1;
  *&v1[OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_selectedAlpha] = 0x3FEB333333333333;
  *&v11[OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_defaultAlpha] = 1.0;
  v5 = OBJC_IVAR____TtC10MobileMail22PhotoConfigurationCell_searchItem;
  v2 = type metadata accessor for SearchItem.Photo();
  (*(*(v2 - 8) + 56))(&v11[v5], 1);
  v9.receiver = v11;
  v9.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  if (v8)
  {
    _objc_retain(v8);
    v11 = v8;
    _objc_release(a1);
    _objc_release(v11);
    return v8;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

void *sub_1003E3CA8()
{
  v2 = *(v0 + 8);
  _objc_retain(v2);
  return v2;
}

void sub_1003E3CDC(void *a1)
{
  _objc_retain(a1);
  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
  _objc_release(v2);
  _objc_release(a1);
}

uint64_t sub_1003E3D30()
{
  v2 = *(v0 + 16);

  return v2;
}

void *sub_1003E3D94(const void *a1, void *a2)
{
  v6 = type metadata accessor for CornerConfiguration();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006DB578, &qword_100509DF8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1003E3EBC(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(sub_10025C9B0(&qword_1006DB578, &qword_100509DF8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v8);
  v7 = &v5 - v6;
  sub_1003E3D94(v2, &v5 - v6);
  v3 = type metadata accessor for PhotoContentConfiguration(0);
  sub_1003E3344(v7, (v1 + *(v3 + 28)));
  return sub_1003E3F6C(v8);
}

uint64_t sub_1003E3F6C(uint64_t a1)
{
  v3 = type metadata accessor for CornerConfiguration();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}