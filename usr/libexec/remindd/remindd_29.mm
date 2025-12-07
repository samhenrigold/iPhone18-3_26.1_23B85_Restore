void sub_1002E1C94(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v22[7] = &_swiftEmptyArrayStorage;
  if ((a3 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    sub_1002F1430();
    Set.Iterator.init(_cocoa:)();
    v4 = v22[1];
    v5 = v22[2];
    v6 = v22[3];
    v7 = v22[4];
    v8 = v22[5];
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(a3 + 32);
    v5 = a3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a3 + 56);
  }

  v12 = (v6 + 64) >> 6;
  v20 = v4;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_22;
    }

    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    swift_dynamicCast();
    v17 = v21;
    v15 = v7;
    v16 = v8;
    if (!v21)
    {
LABEL_23:
      v4 = v20;
LABEL_22:
      sub_10001B860(v4);
      return;
    }

LABEL_19:
    v22[0] = v17;
    v18 = a1(v22);
    if (v3)
    {

      sub_10001B860(v20);

      return;
    }

    if (v18)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v7 = v15;
    v8 = v16;
    v4 = v20;
  }

  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_22;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1002E1F04()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009411C0);
  v1 = sub_100006654(v0, qword_1009411C0);
  if (qword_100936458 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975050);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_1002E1FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  if (!a2)
  {
    Hasher._combine(_:)(0);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1002E208C(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    Hasher._combine(_:)(0);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int sub_1002E2144(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  Hasher.init(_seed:)();
  if (!v2)
  {
    Hasher._combine(_:)(0);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002E21EC(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

void sub_1002E2298(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v777 = a3;
  v778 = a2;
  v738 = a5;
  v754 = sub_1000F5104(&qword_1009412C8, &qword_1007A0EA0);
  v735 = *(v754 - 8);
  __chkstk_darwin(v754, v8);
  v723 = &v701 - v9;
  v736 = sub_1000F5104(&qword_1009412D0, &qword_1007A0EA8);
  __chkstk_darwin(v736, v10);
  v743 = &v701 - v11;
  v12 = sub_1000F5104(&qword_1009412D8, &qword_1007A0EB0);
  __chkstk_darwin(v12 - 8, v13);
  v737 = &v701 - v14;
  v15 = sub_1000F5104(&qword_1009412E0, &qword_1007A0EB8);
  __chkstk_darwin(v15 - 8, v16);
  v750 = &v701 - v17;
  v18 = sub_1000F5104(&qword_1009412E8, &qword_1007A0EC0);
  __chkstk_darwin(v18 - 8, v19);
  v748 = &v701 - v20;
  v21 = sub_1000F5104(&qword_1009412F0, &qword_1007A0EC8);
  __chkstk_darwin(v21 - 8, v22);
  v749 = &v701 - v23;
  v753 = sub_1000F5104(&qword_1009412F8, &qword_1007A0ED0);
  __chkstk_darwin(v753, v24);
  v747 = &v701 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v27);
  v742 = (&v701 - v28);
  __chkstk_darwin(v29, v30);
  v763 = &v701 - v31;
  v32 = sub_1000F5104(&qword_100941300, &qword_1007A0ED8);
  __chkstk_darwin(v32 - 8, v33);
  v733 = (&v701 - v34);
  v724 = type metadata accessor for KMeansAutoTuner.KMeanTuningHistory();
  v725 = *(v724 - 8);
  __chkstk_darwin(v724, v35);
  v716 = &v701 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37, v38);
  v715 = &v701 - v39;
  __chkstk_darwin(v40, v41);
  v714 = &v701 - v42;
  v746 = type metadata accessor for REMSuggestedAttributesTrainer.Result.IntentionalWord();
  v745 = *(v746 - 8);
  __chkstk_darwin(v746, v43);
  v719 = &v701 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v718 = type metadata accessor for RDIntentClusterModel.TuningSnapshot();
  v717 = *(v718 - 8);
  __chkstk_darwin(v718, v45);
  v726 = &v701 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v774 = type metadata accessor for KMeans.TrainingMetrics();
  v767 = *(v774 - 8);
  __chkstk_darwin(v774, v47);
  v711 = &v701 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49, v50);
  v710 = &v701 - v51;
  __chkstk_darwin(v52, v53);
  v773 = &v701 - v54;
  v713 = type metadata accessor for RDIntentClusterModel.ModelSnapshot();
  v712 = *(v713 - 8);
  __chkstk_darwin(v713, v55);
  v728 = &v701 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v755 = sub_1000F5104(&qword_100941308, &qword_1007A0EE0);
  __chkstk_darwin(v755, v57);
  v734 = (&v701 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v59, v60);
  v720 = (&v701 - v61);
  __chkstk_darwin(v62, v63);
  v741 = (&v701 - v64);
  __chkstk_darwin(v65, v66);
  v762 = &v701 - v67;
  v752 = sub_1000F5104(&qword_100941310, &unk_1007A0EE8);
  __chkstk_darwin(v752, v68);
  v739 = &v701 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70, v71);
  v740 = (&v701 - v72);
  __chkstk_darwin(v73, v74);
  v761 = &v701 - v75;
  v731 = type metadata accessor for REMTitleEmbeddingConfig();
  v730 = *(v731 - 8);
  __chkstk_darwin(v731, v76);
  v729 = &v701 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v757 = sub_1000F5104(&qword_10093EDF8, &qword_10079D5B0);
  v756 = *(v757 - 8);
  __chkstk_darwin(v757, v78);
  v764 = &v701 - v79;
  v765 = sub_1000F5104(&qword_100941318, &qword_1007A0EF8);
  __chkstk_darwin(v765, v80);
  v779 = (&v701 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v82, v83);
  v760 = (&v701 - v84);
  __chkstk_darwin(v85, v86);
  v769 = &v701 - v87;
  v88 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v88 - 8, v89);
  v727 = &v701 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v91, v92);
  v770 = &v701 - v93;
  v759 = type metadata accessor for REMSuggestedAttributeInputDataFrame();
  v758 = *(v759 - 8);
  __chkstk_darwin(v759, v94);
  v772 = &v701 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v768 = sub_1000F5104(&qword_100941320, &qword_1007A0F00);
  v771 = *(v768 - 8);
  __chkstk_darwin(v768, v96);
  v732 = &v701 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v98, v99);
  v766 = (&v701 - v100);
  v775 = type metadata accessor for URL();
  v776 = *(v775 - 8);
  __chkstk_darwin(v775, v101);
  v722 = &v701 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v103, v104);
  v721 = &v701 - v105;
  __chkstk_darwin(v106, v107);
  v781 = (&v701 - v108);
  isUniquelyReferenced_nonNull_native = type metadata accessor for TrainingContext(0);
  __chkstk_darwin(isUniquelyReferenced_nonNull_native, v110);
  v784 = (&v701 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = type metadata accessor for REMSuggestedAttributesTrainer.Parameters();
  v783 = *(v112 - 8);
  __chkstk_darwin(v112, v113);
  v782 = &v701 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v788 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  v787 = *(v788 - 8);
  __chkstk_darwin(v788, v115);
  v117 = &v701 - v116;
  v785 = sub_1000F5104(&qword_100941330, &qword_1007A0F10);
  v786 = *(v785 - 8);
  __chkstk_darwin(v785, v118);
  v780 = &v701 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v120, v121);
  v123 = &v701 - v122;
  __chkstk_darwin(v124, v125);
  v127 = &v701 - v126;
  __chkstk_darwin(v128, v129);
  v131 = (&v701 - v130);
  v132 = type metadata accessor for Date();
  v791 = *(v132 - 8);
  v792 = v132;
  __chkstk_darwin(v132, v133);
  v744 = &v701 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v135, v136);
  v751 = &v701 - v137;
  __chkstk_darwin(v138, v139);
  v790 = &v701 - v140;
  Date.init()();
  v141 = REMSuggestedAttributesTrainer.Parameters.allowLocalOverrides.getter();
  v789 = v117;
  if (v141)
  {
    v708 = isUniquelyReferenced_nonNull_native;
    v709 = a4;
    v142 = a1;
    v143 = (*(a1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_configurationSource + 16))();
    sub_1002F05EC(&qword_100941368, &type metadata accessor for REMSuggestedAttributesTrainer.Parameters, &protocol conformance descriptor for REMSuggestedAttributesTrainer.Parameters);
    v144 = v143;
    Partial<A>.init(dictionary:)();
    v793 = v5;
    if (v5)
    {
      (*(v791 + 8))(v790, v792);

      return;
    }

    v707 = v142;
    (*(v786 + 16))(v127, v131, v785);
    v146 = sub_1003679A8(0, 1, 1, &_swiftEmptyArrayStorage);
    v117 = *v146->clientIdentity;
    v147 = *&v146->clientIdentity[8];
    v148 = v146;
    v149 = v117 + 1;
    if (v117 >= v147 >> 1)
    {
LABEL_201:
      v150 = v149;
      v148 = sub_1003679A8((v147 > 1), v149, 1, v148);
    }

    else
    {
      v150 = v117 + 1;
    }

    v145 = v123;

    v151 = v786;
    v152 = v785;
    (*(v786 + 8))(v131, v785);
    v131 = v148;
    *(v148 + 16) = v150;
    (*(v151 + 32))(v148 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v117, v127, v152);
    v117 = v789;
    a4 = v709;
    a1 = v707;
    isUniquelyReferenced_nonNull_native = v708;
    if ((REMSuggestedAttributesTrainer.Parameters.allowCloudOverrides.getter() & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v793 = v5;
  v131 = &_swiftEmptyArrayStorage;
  v145 = v123;
  if ((REMSuggestedAttributesTrainer.Parameters.allowCloudOverrides.getter() & 1) == 0)
  {
LABEL_15:
    (*(v783 + 16))(v782, a4, v112);

    PartialOverride.init(full:partials:)();
    swift_getKeyPath();
    v168 = v788;
    PartialOverride.subscript.getter();

    if (LOBYTE(v798[0]) != 1)
    {
      v131, v169, v170, v171, v172, v173, v174, v175;
      if (qword_100935E70 != -1)
      {
        swift_once();
      }

      v195 = type metadata accessor for Logger();
      sub_100006654(v195, qword_1009411C0);
      v196 = Logger.logObject.getter();
      v197 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v196, v197))
      {
        v198 = swift_slowAlloc();
        *v198 = 0;
        _os_log_impl(&_mh_execute_header, v196, v197, "SuggestedAttributes Training is enabled on iOS: NO", v198, 2u);
        v117 = v789;
      }

      sub_1002F06A4();
      swift_allocError();
      swift_willThrow();
      (*(v787 + 8))(v117, v168);
      (*(v791 + 8))(v790, v792);
      return;
    }

    if (qword_100935E70 != -1)
    {
LABEL_198:
      swift_once();
    }

    v176 = type metadata accessor for Logger();
    v709 = sub_100006654(v176, qword_1009411C0);
    v177 = Logger.logObject.getter();
    v178 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      *v179 = 0;
      _os_log_impl(&_mh_execute_header, v177, v178, "SuggestedAttributes Training is enabled on iOS: NO", v179, 2u);
      v117 = v789;
    }

    v180 = v784;
    (*(v787 + 16))(v784, v117, v168);
    swift_getKeyPath();
    PartialOverride.subscript.getter();

    v707 = type metadata accessor for MersenneTwister();
    swift_allocObject();
    v181 = MersenneTwister.init(seed:)();
    v182 = *(isUniquelyReferenced_nonNull_native + 28);
    v708 = v181;
    *(&v180->super.isa + v182) = v181;
    v183 = v777;
    *(&v180->super.isa + *(isUniquelyReferenced_nonNull_native + 20)) = v777;
    v184 = v778;
    *(&v180->super.isa + *(isUniquelyReferenced_nonNull_native + 24)) = v778;
    swift_getKeyPath();
    v148 = v183;
    v185 = v184;
    PartialOverride.subscript.getter();

    v186 = LOBYTE(v798[0]);
    sub_1000060C8(0, &qword_10093E9B0, REMPaths_ptr);
    if (v186 == 1)
    {
      v187 = v793;
      static REMPaths.writableURLForMLModel()();
      isUniquelyReferenced_nonNull_native = v187;
      if (v187)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v199 = v793;
      static REMPaths.temporaryURLForMLModel()();
      isUniquelyReferenced_nonNull_native = v199;
      if (v199)
      {
LABEL_21:
        (*(v787 + 8))(v789, v788);
        (*(v791 + 8))(v790, v792);
        v131, v188, v189, v190, v191, v192, v193, v194;
        goto LABEL_22;
      }
    }

    swift_getKeyPath();
    v201 = v788;
    v200 = v789;
    PartialOverride.subscript.getter();

    v202 = sub_1002F048C(v798[0], v185);
    v793 = isUniquelyReferenced_nonNull_native;
    if (isUniquelyReferenced_nonNull_native)
    {
      (*(v776 + 8))(v781, v775);
      (*(v787 + 8))(v200, v201);
      (*(v791 + 8))(v790, v792);
      v131, v203, v204, v205, v206, v207, v208, v209;
      sub_1002F06F8(v784, type metadata accessor for TrainingContext);
      return;
    }

    v112 = v202;

    v210 = Logger.logObject.getter();
    v211 = static os_log_type_t.default.getter();
    v212 = os_log_type_enabled(v210, v211);
    v706 = (v112 >> 62);
    if (v212)
    {
      v213 = swift_slowAlloc();
      *v213 = 134217984;
      if (v112 >> 62)
      {
        v698 = v213;
        v221 = _CocoaArrayWrapper.endIndex.getter();
        v213 = v698;
      }

      else
      {
        v221 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v213 + 4) = v221;
      v222 = v213;
      v112, v214, v215, v216, v217, v218, v219, v220;
      _os_log_impl(&_mh_execute_header, v210, v211, "Done fetching reminder data source array for training. %ld distinct reminders fetched", v222, 0xCu);
    }

    else
    {

      v112, v223, v224, v225, v226, v227, v228, v229;
    }

    if (v706)
    {
      goto LABEL_210;
    }

    v230 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_38:
    swift_getKeyPath();
    v232 = v788;
    v231 = v789;
    PartialOverride.subscript.getter();

    if (v230 < v798[0])
    {
      v112, v233, v234, v235, v236, v237, v238, v239;
      v131, v240, v241, v242, v243, v244, v245, v246;
      sub_1002F1050();
      swift_allocError();
      *v247 = v230;
      swift_willThrow();
      (*(v776 + 8))(v781, v775);
      (*(v787 + 8))(v231, v232);
      goto LABEL_40;
    }

    swift_getKeyPath();
    v248 = v766;
    PartialOverride.subscript.getter();

    swift_getKeyPath();
    v249 = v768;
    PartialOverride.subscript.getter();

    v250 = *(v771 + 8);
    v771 += 8;
    v704 = v250;
    v250(v248, v249);
    if (LOBYTE(v798[1]) != 1)
    {
      v258 = v781;
      if (v230 < v798[0])
      {
        v112, v251, v252, v253, v254, v255, v256, v257;
        v131, v259, v260, v261, v262, v263, v264, v265;
        sub_1002F1050();
        swift_allocError();
        *v266 = v230;
        swift_willThrow();
        (*(v776 + 8))(v258, v775);
        (*(v787 + 8))(v789, v788);
LABEL_40:
        (*(v791 + 8))(v790, v792);
LABEL_22:
        sub_1002F06F8(v784, type metadata accessor for TrainingContext);
        return;
      }
    }

    REMSuggestedAttributeInputDataFrame.init(reminderDataSourceArray:)();
    v798[0] = 0;
    v267 = [v148 fetchDefaultListWithError:v798];
    v268 = v267;
    if (v798[0])
    {
      v269 = v798[0];

      swift_willThrow();
      v793 = 0;
      v148 = 1;
    }

    else
    {
      if (!v267)
      {
        v148 = 1;
LABEL_49:
        v117 = v779;
        v271 = type metadata accessor for UUID();
        v272 = *(v271 - 8);
        (*(v272 + 56))(v770, v148, 1, v271);
        if (v706)
        {
          v127 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v127 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v766 = v131;
        v702 = v272;
        v703 = v271;
        if (v127)
        {
          v117 = 0;
          v785 = v112 & 0xC000000000000001;
          v777 = v112 & 0xFFFFFFFFFFFFFF8;
          v273 = _swiftEmptyDictionarySingleton;
          v783 = v112;
          v782 = v127;
          while (1)
          {
            if (v785)
            {
              v168 = v273;
              specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v117 >= *(v777 + 16))
              {
                goto LABEL_208;
              }

              v168 = v273;
            }

            v786 = v117 + 1;
            if (__OFADD__(v117, 1))
            {
              __break(1u);
LABEL_197:
              __break(1u);
              goto LABEL_198;
            }

            v284 = dispatch thunk of REMSuggestedAttributeReminderDataSource.listUUIDString.getter();
            v148 = v285;
            v112 = dispatch thunk of REMSuggestedAttributeReminderDataSource.listName.getter();
            v131 = v286;
            v287 = v168;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v798[0] = v168;
            v288 = sub_100005F4C(v284, v148);
            v296 = *(v168 + 16);
            v297 = (v289 & 1) == 0;
            v298 = __OFADD__(v296, v297);
            v299 = v296 + v297;
            if (v298)
            {
              goto LABEL_197;
            }

            v123 = v289;
            if (*(v287 + 24) < v299)
            {
              break;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_66;
            }

            isUniquelyReferenced_nonNull_native = v288;
            sub_100373664();
            v288 = isUniquelyReferenced_nonNull_native;
            if (v123)
            {
LABEL_54:
              v274 = v288;
              v148, v289, v290, v291, v292, v293, v294, v295;
              v275 = v798[0];
              v276 = (*(v798[0] + 56) + 16 * v274);
              v148 = v276[1];
              *v276 = v112;
              v276[1] = v131;
              v273 = v275;

              v148, v277, v278, v279, v280, v281, v282, v283;
              goto LABEL_55;
            }

LABEL_67:
            v273 = v798[0];
            *(v798[0] + 8 * (v288 >> 6) + 64) |= 1 << v288;
            v300 = (*&v273->clientIdentity[32] + 16 * v288);
            *v300 = v284;
            v300[1] = v148;
            v301 = (*&v273->clientIdentity[40] + 16 * v288);
            *v301 = v112;
            v301[1] = v131;

            v302 = *v273->clientIdentity;
            v298 = __OFADD__(v302, 1);
            v303 = v302 + 1;
            if (v298)
            {
              __break(1u);
LABEL_206:
              __break(1u);
LABEL_207:
              __break(1u);
LABEL_208:
              __break(1u);
LABEL_209:
              __break(1u);
LABEL_210:
              v230 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_38;
            }

            *v273->clientIdentity = v303;
LABEL_55:
            v112 = v783;
            v127 = v782;
            ++v117;
            if (v786 == v782)
            {
              v705 = v273;
              v148 = 0;
              v145 = _swiftEmptyDictionarySingleton;
              while (1)
              {
                if (v785)
                {
                  v144 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v148 >= *(v777 + 16))
                  {
                    goto LABEL_209;
                  }

                  v144 = *(v112 + 8 * v148 + 32);
                }

                v786 = v148;
                v147 = v148 + 1;
                v780 = (v148 + 1);
                if (__OFADD__(v148, 1))
                {
                  break;
                }

                dispatch thunk of REMSuggestedAttributeReminderDataSource.title.getter();
                v314 = v313;
                String.index(_:offsetBy:limitedBy:)();
                String.subscript.getter();
                v131 = v315;
                v314, v316, v317, v315, v318, v319, v320, v321;
                v148 = static String._fromSubstring(_:)();
                isUniquelyReferenced_nonNull_native = v322;
                v131, v322, v323, v324, v325, v326, v327, v328;
                v778 = v144;
                v127 = dispatch thunk of REMSuggestedAttributeReminderDataSource.listUUIDString.getter();
                v112 = v329;
                v117 = swift_isUniquelyReferenced_nonNull_native();
                v798[0] = v145;
                v144 = v145;
                v123 = sub_100005F4C(v148, isUniquelyReferenced_nonNull_native);
                v147 = *(v145 + 16);
                v336 = (v149 & 1) == 0;
                v337 = v147 + v336;
                if (__OFADD__(v147, v336))
                {
                  goto LABEL_200;
                }

                v131 = v149;
                if (*(v145 + 24) >= v337)
                {
                  if ((v117 & 1) == 0)
                  {
                    sub_100373664();
                  }
                }

                else
                {
                  sub_10036A8F0(v337, v117);
                  v338 = sub_100005F4C(v148, isUniquelyReferenced_nonNull_native);
                  if ((v131 & 1) != (v149 & 1))
                  {
                    goto LABEL_215;
                  }

                  v123 = v338;
                }

                v117 = v779;
                if (v131)
                {
                  isUniquelyReferenced_nonNull_native, v149, v330, v331, v332, v333, v334, v335;
                  v145 = v798[0];
                  v304 = (*(v798[0] + 56) + 16 * v123);
                  v305 = v304[1];
                  *v304 = v127;
                  v304[1] = v112;

                  v305, v306, v307, v308, v309, v310, v311, v312;
                }

                else
                {
                  v145 = v798[0];
                  *(v798[0] + 8 * (v123 >> 6) + 64) |= 1 << v123;
                  v339 = (*(v145 + 48) + 16 * v123);
                  *v339 = v148;
                  v339[1] = isUniquelyReferenced_nonNull_native;
                  v340 = (*(v145 + 56) + 16 * v123);
                  *v340 = v127;
                  v340[1] = v112;

                  v341 = *(v145 + 16);
                  v298 = __OFADD__(v341, 1);
                  v342 = v341 + 1;
                  if (v298)
                  {
                    goto LABEL_206;
                  }

                  *(v145 + 16) = v342;
                }

                v112 = v783;
                v127 = v782;
                v148 = v786 + 1;
                if (v780 == v782)
                {
                  goto LABEL_89;
                }
              }

              __break(1u);
LABEL_200:
              __break(1u);
              goto LABEL_201;
            }
          }

          sub_10036A8F0(v299, isUniquelyReferenced_nonNull_native);
          v288 = sub_100005F4C(v284, v148);
          if ((v123 & 1) != (v289 & 1))
          {
LABEL_215:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

LABEL_66:
          if (v123)
          {
            goto LABEL_54;
          }

          goto LABEL_67;
        }

        v145 = _swiftEmptyDictionarySingleton;
        v705 = _swiftEmptyDictionarySingleton;
LABEL_89:
        v343 = v793;
        sub_1002E61C4(v145, v781, v117);
        v155 = v343;
        if (v343)
        {
          v344 = v760;
          *v760 = v343;
          swift_storeEnumTagMultiPayload();
          v155 = 0;
        }

        else
        {
          swift_storeEnumTagMultiPayload();
          v344 = v760;
          sub_100031B58(v117, v760, &qword_100941318, &qword_1007A0EF8);
        }

        v345 = v706;
        sub_100031B58(v344, v769, &qword_100941318, &qword_1007A0EF8);
        v145, v346, v347, v348, v349, v350, v351, v352;
        if ((v127 & 0x8000000000000000) != 0)
        {
          v353 = 100;
          if (!v345)
          {
LABEL_97:
            v354 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_101:
            if (v354 < v353)
            {
              goto LABEL_213;
            }

            v782 = 0;
            if ((v112 & 0xC000000000000001) != 0 && v353)
            {
              type metadata accessor for REMSuggestedAttributeReminderDataSource();

              v355 = 0;
              do
              {
                v155 = (v355 + 1);
                _ArrayBuffer._typeCheckSlowPath(_:)(v355);
                v355 = v155;
              }

              while (v353 != v155);
            }

            else
            {
            }

            v112, v356, v357, v358, v359, v360, v361, v362;
            if (v345)
            {
              v155 = _CocoaArrayWrapper.subscript.getter();
              v786 = v364;
              v131 = v365;
              v367 = v366;
              v112, v364, v365, v366, v368, v369, v370, v371;
              v363 = v155;
              v353 = v367 >> 1;
            }

            else
            {
              v131 = 0;
              v363 = (v112 & 0xFFFFFFFFFFFFFF8);
              v786 = (v112 & 0xFFFFFFFFFFFFFF8) + 32;
            }

            if (v131 == v353)
            {
              v153 = _swiftEmptyDictionarySingleton;
LABEL_129:
              swift_unknownObjectRelease();
              v401 = v764;
              v402 = v772;
              v403 = REMSuggestedAttributeInputDataFrame.index.getter();
              __chkstk_darwin(v403, v404);
              v699 = v402;
              v405 = v782;
              v406 = sub_1003DF568(sub_1002F0758, (&v701 - 4));
              (*(v756 + 8))(v401, v757);
              v407 = sub_1002F0774(v406);
              v406, v408, v409, v410, v411, v412, v413, v414;
              sub_1002E1048(v407);
              v416 = v415;
              v407, v417, v418, v419, v420, v421, v422, v423;

              v424 = Logger.logObject.getter();
              v425 = static os_log_type_t.default.getter();
              v416, v426, v427, v428, v429, v430, v431, v432;
              if (os_log_type_enabled(v424, v425))
              {
                v433 = swift_slowAlloc();
                v434 = swift_slowAlloc();
                v798[0] = v434;
                *v433 = 136315138;
                v435 = Array.description.getter();
                v437 = v436;
                v438 = v153;
                v439 = sub_10000668C(v435, v436, v798);
                v437, v440, v441, v442, v443, v444, v445, v446;
                *(v433 + 4) = v439;
                v153 = v438;
                _os_log_impl(&_mh_execute_header, v424, v425, "Training REMFilteredTitleEmbedding with %s", v433, 0xCu);
                sub_10000607C(v434);
              }

              v447 = v781;
              v448 = v766;
              v449 = type metadata accessor for REMFilteredTitleEmbedding();
              swift_allocObject();
              v450 = REMFilteredTitleEmbedding.init(from:stopWordThresholdByPercent:)();
              if (v405)
              {
                sub_1000050A4(v769, &qword_100941318, &qword_1007A0EF8);
                sub_1000050A4(v770, &unk_100939D90, "8\n\r");
                (*(v776 + 8))(v447, v775);
                (*(v787 + 8))(v789, v788);
                (*(v791 + 8))(v790, v792);
                v705, v451, v452, v453, v454, v455, v456, v457;
                v153, v458, v459, v460, v461, v462, v463, v464;
                v472 = v448;
                goto LABEL_195;
              }

              v473 = v450;
              v793 = 0;
              v474 = v729;
              REMFilteredTitleEmbedding.config()();
              v475 = REMTitleEmbeddingConfig.saveConfig(to:)();
              (*(v730 + 8))(v474, v731);
              v476 = *(v776 + 16);
              v477 = v775;
              v782 = v473;
              v780 = v153;
              if (v475)
              {
                v478 = v721;
                v476(v721, v447, v775);
                v479 = Logger.logObject.getter();
                v480 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v479, v480))
                {
                  v481 = v477;
                  v482 = swift_slowAlloc();
                  v483 = swift_slowAlloc();
                  v798[0] = v483;
                  *v482 = 136315138;
                  v484 = URL.absoluteString.getter();
                  v486 = v485;
                  v779 = *(v776 + 8);
                  v779(v478, v481);
                  v487 = sub_10000668C(v484, v486, v798);
                  v486, v488, v489, v490, v491, v492, v493, v494;
                  *(v482 + 4) = v487;
                  v495 = "embedding config file saved to %s";
                  goto LABEL_138;
                }

                v510 = *(v776 + 8);
                v511 = v478;
LABEL_142:
                v779 = v510;
                v510(v511, v477);
              }

              else
              {
                v496 = v722;
                v476(v722, v447, v775);
                v479 = Logger.logObject.getter();
                v480 = static os_log_type_t.error.getter();
                if (!os_log_type_enabled(v479, v480))
                {

                  v510 = *(v776 + 8);
                  v511 = v496;
                  goto LABEL_142;
                }

                v497 = v496;
                v498 = v477;
                v482 = swift_slowAlloc();
                v483 = swift_slowAlloc();
                v798[0] = v483;
                *v482 = 136315138;
                v499 = URL.absoluteString.getter();
                v501 = v500;
                v779 = *(v776 + 8);
                v779(v497, v498);
                v502 = sub_10000668C(v499, v501, v798);
                v501, v503, v504, v505, v506, v507, v508, v509;
                *(v482 + 4) = v502;
                v495 = "failed saving embedding config file to %s";
LABEL_138:
                _os_log_impl(&_mh_execute_header, v479, v480, v495, v482, 0xCu);
                sub_10000607C(v483);
                v473 = v782;
              }

              v512 = v728;
              v513 = v727;
              v514 = REMSuggestedAttributeInputDataFrame.title.getter();

              v515 = v793;
              sub_1002F09B4(v514);
              v345 = v515;

              v798[0] = REMFilteredTitleEmbedding.vector(for:)();
              sub_1000F5104(&qword_100941340, &qword_1007A1068);
              swift_allocObject();
              v793 = Series.init(_:defaultValue:)();
              v799 = v449;
              v800 = &protocol witness table for REMFilteredTitleEmbedding;
              v798[0] = v473;
              sub_100010364(v770, v513, &unk_100939D90, "8\n\r");
              v516 = v702;
              v517 = v703;
              LODWORD(v515) = (*(v702 + 48))(v513, 1, v703);

              if (v515 == 1)
              {
                sub_1000050A4(v513, &unk_100939D90, "8\n\r");
                v518 = 0;
              }

              else
              {
                UUID.uuidString.getter();
                v518 = v519;
                (*(v516 + 8))(v513, v517);
              }

              v520 = v739;
              sub_1002E74A4(v784, v793, v772, v739);
              v518, v521, v522, v523, v524, v525, v526, v527;
              sub_10000607C(v798);
              if (v345)
              {
                v528 = v740;
                v740->super.isa = v345;
                swift_storeEnumTagMultiPayload();
                v345 = 0;
              }

              else
              {
                swift_storeEnumTagMultiPayload();
                v528 = v740;
                sub_100031B58(v520, v740, &qword_100941310, &unk_1007A0EE8);
              }

              sub_100031B58(v528, v761, &qword_100941310, &unk_1007A0EE8);
              v778 = *(v754 + 48);
              v145 = dispatch thunk of Series.values.getter();
              swift_getKeyPath();
              v529 = v732;
              PartialOverride.subscript.getter();

              swift_getKeyPath();
              v530 = v768;
              PartialOverride.subscript.getter();

              v704(v529, v530);
              v531 = v797;
              v799 = v449;
              v800 = &protocol witness table for REMFilteredTitleEmbedding;
              v798[0] = v782;

              Date.init()();
              if (v531)
              {
                if (!(v145 >> 62))
                {
                  v532 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  goto LABEL_152;
                }

LABEL_214:
                v532 = _CocoaArrayWrapper.endIndex.getter();
LABEL_152:
                v533 = v743;
                if (v532 >= 10)
                {
                  v534 = 10;
                }

                else
                {
                  v534 = v532;
                }

                type metadata accessor for RDIntentClusterModel();
                v795 = v707;
                v796 = sub_1002F05EC(&qword_100941348, &type metadata accessor for MersenneTwister, &protocol conformance descriptor for MersenneTwister);
                v794 = v708;

                v699 = 0;
                v700 = 0;
                v535 = v726;
                v536 = static RDIntentClusterModel.modelByTuning(_:writeTo:minK:maxK:maxIter:embedding:randomGenerator:filename:)();
                if (v345)
                {
                  v145, v537, v538, v539, v540, v541, v542, v543;
                  v544 = *(v791 + 8);
                  v544(v751, v792);
                  sub_10000607C(&v794);
                  v545 = v345;
                  v546 = 0;
                  v547 = v747;
                  v549 = v754;
                  sub_10000607C(v798);
                  v550 = v741;
                  *v741 = v545;
                  swift_storeEnumTagMultiPayload();
LABEL_181:
                  sub_100031B58(v550, v762, &qword_100941308, &qword_1007A0EE0);
                  v665 = v733;
                  Result.valueOrNil()();
                  v666 = v665;
                  if ((*(v735 + 48))(v665, 1, v549) == 1)
                  {
                    sub_1000050A4(v665, &qword_100941300, &qword_1007A0ED8);
                    v766, v667, v668, v669, v670, v671, v672, v673;
                    v674 = 0;
                  }

                  else
                  {
                    v675 = *v665;
                    (*(v745 + 8))(v666 + *(v549 + 48), v746);

                    sub_1002F0DE4(v793, v675);
                    v766, v676, v677, v678, v679, v680, v681, v682;

                    Series.index.getter();
                    strcpy(v798, "missing intent");
                    HIBYTE(v798[1]) = -18;
                    sub_1000F5104(&qword_100941358, &qword_1007A1078);
                    swift_allocObject();
                    v547 = v747;
                    v674 = Series.init(_:index:defaultValue:)();
                  }

                  sub_1002E8E10(v784, v772, v674, v705, v547);
                  if (v546)
                  {
                    v683 = v742;
                    *v742 = v546;
                    swift_storeEnumTagMultiPayload();
                  }

                  else
                  {
                    swift_storeEnumTagMultiPayload();
                    v683 = v742;
                    sub_100031B58(v547, v742, &qword_1009412F8, &qword_1007A0ED0);
                  }

                  sub_100031B58(v683, v763, &qword_1009412F8, &qword_1007A0ED0);
                  swift_getKeyPath();
                  PartialOverride.subscript.getter();

                  if (LOBYTE(v798[0]) == 1)
                  {
                    if (qword_100935D08 != -1)
                    {
                      swift_once();
                    }

                    sub_1000F5104(&unk_10093E978, &qword_1007A1070);
                    sub_10000CB48(&qword_100941350, &unk_10093E978, &qword_1007A1070, &protocol conformance descriptor for PassthroughSubject<A, B>);
                    Subject<>.send()();
                  }

                  Result.eraseToCodableError()();
                  Result.eraseToCodableError()();
                  Result.eraseToCodableError()();
                  v684 = v734;
                  sub_100010364(v762, v734, &qword_100941308, &qword_1007A0EE0);
                  if (swift_getEnumCaseMultiPayload() == 1)
                  {
                    *v533 = *v684;
                  }

                  else
                  {
                    v685 = v684;
                    v686 = v723;
                    sub_100031B58(v685, v723, &qword_1009412C8, &qword_1007A0EA0);

                    (*(v745 + 32))(v533, v686 + *(v549 + 48), v746);
                  }

                  swift_storeEnumTagMultiPayload();
                  Result.eraseToCodableError()();
                  sub_1000050A4(v533, &qword_1009412D0, &qword_1007A0EA8);
                  v687 = v744;
                  Date.init()();
                  v688 = v790;
                  Date.timeIntervalSince(_:)();
                  v689 = v687;
                  v690 = v792;
                  v544(v689, v792);
                  REMSuggestedAttributesTrainer.Result.init(embedding:anchoredBubble:corebehavior:intentionalWord:trainingDuration:)();

                  sub_1000050A4(v763, &qword_1009412F8, &qword_1007A0ED0);
                  sub_1000050A4(v762, &qword_100941308, &qword_1007A0EE0);
                  sub_1000050A4(v761, &qword_100941310, &unk_1007A0EE8);
                  sub_1000050A4(v769, &qword_100941318, &qword_1007A0EF8);
                  sub_1000050A4(v770, &unk_100939D90, "8\n\r");
                  v779(v781, v775);
                  (*(v787 + 8))(v789, v788);
                  v544(v688, v690);
                  v705, v691, v692, v693, v694, v695, v696, v697;
                  v472 = v780;
LABEL_195:
                  v472, v465, v466, v467, v468, v469, v470, v471;
                  (*(v758 + 8))(v772, v759);
                  goto LABEL_22;
                }

                v760 = v534;
                v771 = 0;
                v777 = v536;
                v145, v537, v538, v539, v540, v541, v542, v543;
                sub_10000607C(&v794);
                v757 = RDIntentClusterModel.TuningSnapshot.bestK.getter();
                v756 = RDIntentClusterModel.TuningSnapshot.intentionalWords.getter();
                v551 = v714;
                RDIntentClusterModel.TuningSnapshot.kmeansTuningHistory.getter();
                v552 = KMeansAutoTuner.KMeanTuningHistory.modelMetricHistory.getter();
                v553 = v725 + 8;
                v554 = *(v725 + 8);
                v554(v551, v724);
                v562 = *(v552 + 16);
                v725 = v553;
                v768 = v554;
                if (v562)
                {
                  v794 = &_swiftEmptyArrayStorage;
                  sub_10025367C(0, v562, 0);
                  v563 = v794;
                  v786 = *(v767 + 16);
                  v564 = (*(v767 + 80) + 32) & ~*(v767 + 80);
                  v783 = v552;
                  v565 = v552 + v564;
                  v785 = *(v767 + 72);
                  v566 = (v767 + 8);
                  do
                  {
                    v567 = v773;
                    v568 = v774;
                    (v786)(v773, v565, v774);
                    v569 = KMeans.TrainingMetrics.clusterVariances.getter();
                    (*v566)(v567, v568);
                    v794 = v563;
                    v578 = *v563->clientIdentity;
                    v577 = *&v563->clientIdentity[8];
                    if (v578 >= v577 >> 1)
                    {
                      sub_10025367C((v577 > 1), v578 + 1, 1);
                      v563 = v794;
                    }

                    *v563->clientIdentity = v578 + 1;
                    *&v563->clientIdentity[8 * v578 + 16] = v569;
                    v565 += v785;
                    --v562;
                  }

                  while (v562);
                  v783, v570, v571, v572, v573, v574, v575, v576;
                  v599 = v726;
                  v554 = v768;
                }

                else
                {
                  v599 = v535;
                  v552, v555, v556, v557, v558, v559, v560, v561;
                }

                v600 = v715;
                RDIntentClusterModel.TuningSnapshot.kmeansTuningHistory.getter();
                v601 = KMeansAutoTuner.KMeanTuningHistory.modelMetricHistory.getter();
                v554(v600, v724);
                v609 = *(v601 + 16);
                if (v609)
                {
                  v794 = &_swiftEmptyArrayStorage;
                  sub_10025363C(0, v609, 0);
                  v610 = v794;
                  v785 = *(v767 + 16);
                  v611 = (*(v767 + 80) + 32) & ~*(v767 + 80);
                  v740 = v601;
                  v612 = v601 + v611;
                  v783 = *(v767 + 72);
                  v786 = v767 + 16;
                  v613 = (v767 + 8);
                  do
                  {
                    v614 = v773;
                    v615 = v774;
                    (v785)(v773, v612, v774);
                    v616 = KMeans.TrainingMetrics.clusterSizes.getter();
                    (*v613)(v614, v615);
                    v794 = v610;
                    v625 = *v610->clientIdentity;
                    v624 = *&v610->clientIdentity[8];
                    if (v625 >= v624 >> 1)
                    {
                      sub_10025363C((v624 > 1), v625 + 1, 1);
                      v610 = v794;
                    }

                    *v610->clientIdentity = v625 + 1;
                    *&v610->clientIdentity[8 * v625 + 16] = v616;
                    v612 += v783;
                    --v609;
                  }

                  while (v609);
                  v740, v617, v618, v619, v620, v621, v622, v623;
                  v599 = v726;
                  v554 = v768;
                }

                else
                {
                  v601, v602, v603, v604, v605, v606, v607, v608;
                }

                v626 = v716;
                RDIntentClusterModel.TuningSnapshot.kmeansTuningHistory.getter();
                v627 = KMeansAutoTuner.KMeanTuningHistory.modelMetricHistory.getter();
                v628 = v626;
                v629 = v627;
                v554(v628, v724);
                v637 = *(v629 + 16);
                if (v637)
                {
                  v794 = &_swiftEmptyArrayStorage;
                  sub_10025361C(0, v637, 0);
                  v638 = v794;
                  v786 = *(v767 + 16);
                  v639 = (*(v767 + 80) + 32) & ~*(v767 + 80);
                  v783 = v629;
                  v640 = v629 + v639;
                  v785 = *(v767 + 72);
                  v767 += 16;
                  v641 = (v767 - 8);
                  do
                  {
                    v642 = v773;
                    v643 = v774;
                    (v786)(v773, v640, v774);
                    KMeans.TrainingMetrics.mse.getter();
                    v645 = v644;
                    (*v641)(v642, v643);
                    v794 = v638;
                    v654 = *v638->clientIdentity;
                    v653 = *&v638->clientIdentity[8];
                    if (v654 >= v653 >> 1)
                    {
                      sub_10025361C((v653 > 1), v654 + 1, 1);
                      v638 = v794;
                    }

                    *v638->clientIdentity = v654 + 1;
                    *&v638->clientIdentity[8 * v654 + 16] = v645;
                    v640 += v785;
                    --v637;
                  }

                  while (v637);
                  v783, v646, v647, v648, v649, v650, v651, v652;
                  v599 = v726;
                }

                else
                {
                  v629, v630, v631, v632, v633, v634, v635, v636;
                }

                v655 = v744;
                Date.init()();
                v656 = v751;
                Date.timeIntervalSince(_:)();
                v657 = *(v791 + 8);
                v658 = v655;
                v659 = v792;
                v657(v658, v792);
                v660 = v719;
                v544 = v657;
                REMSuggestedAttributesTrainer.Result.IntentionalWordTuned.init(bestK:bestClusterLabels:minK:maxK:clusterVariances:clusterSizes:mse:trainingDuration:)();
                (*(v717 + 8))(v599, v718);
                v657(v656, v659);
                v661 = v745;
                v662 = v746;
                (*(v745 + 104))(v660, enum case for REMSuggestedAttributesTrainer.Result.IntentionalWord.fromTuning(_:), v746);
                v663 = *(v661 + 32);
                v598 = v720;
                v663(v778 + v720, v660, v662);
                v533 = v743;
                v549 = v754;
                v547 = v747;
              }

              else
              {
                type metadata accessor for RDIntentClusterModel();
                v795 = v707;
                v796 = sub_1002F05EC(&qword_100941348, &type metadata accessor for MersenneTwister, &protocol conformance descriptor for MersenneTwister);
                v794 = v708;

                v548 = static RDIntentClusterModel.modelByTraining(_:writeTo:k:embedding:randomGenerator:filename:)();
                v771 = 0;
                v777 = v548;
                v145, v579, v580, v581, v582, v583, v584, v585;
                sub_10000607C(&v794);
                v786 = RDIntentClusterModel.ModelSnapshot.intentionalWords.getter();
                v586 = v773;
                RDIntentClusterModel.ModelSnapshot.kmeansMetrics.getter();
                KMeans.TrainingMetrics.clusterVariances.getter();
                v587 = *(v767 + 8);
                v588 = v774;
                v587(v586, v774);
                v589 = v710;
                RDIntentClusterModel.ModelSnapshot.kmeansMetrics.getter();
                KMeans.TrainingMetrics.clusterSizes.getter();
                v587(v589, v588);
                v590 = v512;
                v591 = v711;
                RDIntentClusterModel.ModelSnapshot.kmeansMetrics.getter();
                KMeans.TrainingMetrics.mse.getter();
                v587(v591, v588);
                v592 = v744;
                Date.init()();
                v593 = v751;
                Date.timeIntervalSince(_:)();
                v544 = *(v791 + 8);
                v594 = v592;
                v595 = v792;
                v544(v594, v792);
                v596 = v720;
                v597 = v778;
                REMSuggestedAttributesTrainer.Result.IntentionalWordPrescribed.init(clusterLabels:clusterVariances:clusterSizes:mse:trainingDuration:)();
                (*(v712 + 8))(v590, v713);
                v544(v593, v595);
                v598 = v596;
                (*(v745 + 104))(&v597[v596], enum case for REMSuggestedAttributesTrainer.Result.IntentionalWord.prescribed(_:), v746);
                v547 = v747;
                v533 = v743;
                v549 = v754;
              }

              sub_10000607C(v798);
              *v598 = v777;
              swift_storeEnumTagMultiPayload();
              v664 = v598;
              v550 = v741;
              sub_100031B58(v664, v741, &qword_100941308, &qword_1007A0EE0);
              v546 = v771;
              goto LABEL_181;
            }

            v783 = v363;
            swift_unknownObjectRetain();
            v153 = _swiftEmptyDictionarySingleton;
            v785 = v353;
            while (1)
            {
              if (v131 >= v353)
              {
                __break(1u);
LABEL_203:
                __break(1u);
LABEL_204:
                v131 = sub_1003679A8(0, *v131->clientIdentity + 1, 1, v131);
LABEL_12:
                v165 = *v131->clientIdentity;
                v164 = *&v131->clientIdentity[8];
                if (v165 >= v164 >> 1)
                {
                  v131 = sub_1003679A8((v164 > 1), v165 + 1, 1, v131);
                }

                v166 = v786;
                v167 = v785;
                (*(v786 + 8))(v145, v785);
                *v131->clientIdentity = v165 + 1;
                (*(v166 + 32))(v131 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v165, v780, v167);
                v117 = v789;
                a4 = v153;
                goto LABEL_15;
              }

              v145 = dispatch thunk of REMSuggestedAttributeReminderDataSource.title.getter();
              v383 = v382;
              isUniquelyReferenced_nonNull_native = dispatch thunk of REMSuggestedAttributeReminderDataSource.listUUIDString.getter();
              v793 = v384;
              v155 = v153;
              v153 = swift_isUniquelyReferenced_nonNull_native();
              v798[0] = v155;
              v112 = sub_100005F4C(v145, v383);
              v392 = v155[2];
              v393 = (v385 & 1) == 0;
              v394 = v392 + v393;
              if (__OFADD__(v392, v393))
              {
                goto LABEL_203;
              }

              v148 = v385;
              if (v155[3] >= v394)
              {
                if (v153)
                {
                  if ((v385 & 1) == 0)
                  {
                    goto LABEL_124;
                  }
                }

                else
                {
                  v155 = v798;
                  sub_100373664();
                  if ((v148 & 1) == 0)
                  {
                    goto LABEL_124;
                  }
                }
              }

              else
              {
                sub_10036A8F0(v394, v153);
                v155 = v798[0];
                v395 = sub_100005F4C(v145, v383);
                if ((v148 & 1) != (v385 & 1))
                {
                  goto LABEL_215;
                }

                v112 = v395;
                if ((v148 & 1) == 0)
                {
LABEL_124:
                  v153 = v798[0];
                  *(v798[0] + 8 * (v112 >> 6) + 64) |= 1 << v112;
                  v396 = (*(v153 + 48) + 16 * v112);
                  *v396 = v145;
                  v396[1] = v383;
                  v397 = (*(v153 + 56) + 16 * v112);
                  v398 = v793;
                  *v397 = isUniquelyReferenced_nonNull_native;
                  v397[1] = v398;

                  v399 = *(v153 + 16);
                  v298 = __OFADD__(v399, 1);
                  v400 = v399 + 1;
                  if (v298)
                  {
                    goto LABEL_207;
                  }

                  *(v153 + 16) = v400;
                  goto LABEL_115;
                }
              }

              v383, v385, v386, v387, v388, v389, v390, v391;
              v153 = v798[0];
              v372 = (*(v798[0] + 56) + 16 * v112);
              v373 = v372[1];
              v374 = v793;
              *v372 = isUniquelyReferenced_nonNull_native;
              v372[1] = v374;

              v373, v375, v376, v377, v378, v379, v380, v381;
LABEL_115:
              v353 = v785;
              v131 = (v131 + 1);
              if (v785 == v131)
              {
                swift_unknownObjectRelease();
                goto LABEL_129;
              }
            }
          }
        }

        else
        {
          if (v127 >= 0x64)
          {
            v353 = 100;
          }

          else
          {
            v353 = v127;
          }

          if (!v345)
          {
            goto LABEL_97;
          }
        }

        if (_CocoaArrayWrapper.endIndex.getter() < 0)
        {
          __break(1u);
LABEL_213:
          __break(1u);
          goto LABEL_214;
        }

        v354 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_101;
      }

      v270 = [v267 objectID];

      v269 = [v270 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v148 = 0;
    }

    goto LABEL_49;
  }

LABEL_9:
  v153 = a4;
  v154 = (*(a1 + OBJC_IVAR____TtC7remindd33RDXPCSuggestedAttributesPerformer_configurationSource))();
  sub_1002F05EC(&qword_100941368, &type metadata accessor for REMSuggestedAttributesTrainer.Parameters, &protocol conformance descriptor for REMSuggestedAttributesTrainer.Parameters);
  v155 = v154;
  v156 = v793;
  Partial<A>.init(dictionary:)();
  v793 = v156;
  if (!v156)
  {
    (*(v786 + 16))(v780, v145, v785);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_12;
  }

  (*(v791 + 8))(v790, v792);
  v131, v157, v158, v159, v160, v161, v162, v163;
}

uint64_t sub_1002E61C4@<X0>(uint64_t a1@<X1>, void (**a2)(_BYTE *, uint64_t, __n128)@<X2>, uint64_t a3@<X8>)
{
  v287 = a3;
  v288 = a2;
  v300 = a1;
  v3 = sub_1000F5104(&qword_1009413C0, &qword_1007A6A60);
  __chkstk_darwin(v3 - 8, v4);
  v299 = &v269[-v5];
  v298 = type metadata accessor for REMSuggestedAttributeOutput();
  v289 = *(v298 - 8);
  __chkstk_darwin(v298, v6);
  v294 = &v269[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8, v9);
  v283 = &v269[-v10];
  v11 = type metadata accessor for URL();
  v292 = *(v11 - 8);
  v293 = v11;
  __chkstk_darwin(v11, v12);
  v291 = &v269[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14, v15);
  v285 = &v269[-v16];
  v17 = type metadata accessor for Date();
  v295 = *(v17 - 8);
  v296 = v17;
  __chkstk_darwin(v17, v18);
  v286 = &v269[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20, v21);
  v23 = &v269[-v22];
  v24 = sub_1000F5104(&qword_1009413C8, &qword_1007A1300);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24, v26);
  v290 = &v269[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28, v29);
  v31 = &v269[-v30];
  swift_getKeyPath();
  sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  v32 = *(v25 + 8);
  (v32)(v31, v24);
  if (LOBYTE(v301[0]) != 1)
  {
    sub_1002F06A4();
    swift_allocError();
    return swift_willThrow();
  }

  v284 = v23;
  Date.init()();
  swift_getKeyPath();
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  (v32)(v31, v24);
  p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  if (LOBYTE(v301[0]) == 1)
  {
    if (qword_100935E70 != -1)
    {
      goto LABEL_73;
    }

    goto LABEL_4;
  }

  v43 = v291;
  if (qword_100935E70 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100006654(v44, qword_1009411C0);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v47 = os_log_type_enabled(v45, v46);
  v39 = v300;
  v49 = v293;
  v48 = v294;
  v50 = v284;
  if (v47)
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "REMSuggestedAttributesTrainer: tuning anchoredBubbleModel", v51, 2u);
  }

  type metadata accessor for REMAnchoredBubbleModel();
  v52 = v297;
  v53 = static REMAnchoredBubbleModel.train(titleList:distanceScale:usePCA:)();
  v54 = v292;
  if (v52)
  {
    return (*(v295 + 8))(v50, v296);
  }

  v290 = v53;
  v282 = 0;
LABEL_17:

  v55 = v288;
  v56 = dispatch thunk of REMAnchoredBubbleModel.save(path:)();

  v57 = p_class_meths[462];
  if (v56)
  {
    if (v57 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100006654(v58, qword_1009411C0);
    v43 = v285;
    (*(v54 + 16))(v285, v55, v49);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = v54;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v301[0] = v63;
      *v62 = 136315138;
      v64 = URL.absoluteString.getter();
      v65 = v43;
      v67 = v66;
      (*(v61 + 8))(v65, v49);
      v68 = sub_10000668C(v64, v67, v301);
      v67, v69, v70, v71, v72, v73, v74, v75;
      *(v62 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v59, v60, "REMSuggestedAttributesTrainer: anchoredBubbleModel saved to %s", v62, 0xCu);
      sub_10000607C(v63);
      v39 = v300;

LABEL_26:

      goto LABEL_28;
    }
  }

  else
  {
    if (v57 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    sub_100006654(v76, qword_1009411C0);
    (*(v54 + 16))(v43, v55, v49);
    v59 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v77))
    {
      v78 = swift_slowAlloc();
      v79 = v43;
      v80 = swift_slowAlloc();
      v301[0] = v80;
      *v78 = 136315138;
      v81 = URL.absoluteString.getter();
      v82 = v49;
      v83 = v81;
      v85 = v84;
      (*(v54 + 8))(v79, v82);
      v86 = sub_10000668C(v83, v85, v301);
      v85, v87, v88, v89, v90, v91, v92, v93;
      *(v78 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v59, v77, "REMSuggestedAttributesTrainer: failed to save anchoredBubbleModel to %s", v78, 0xCu);
      sub_10000607C(v80);

      v48 = v294;
      goto LABEL_26;
    }
  }

  (*(v54 + 8))(v43, v49);
LABEL_28:
  v24 = v299;
  v32 = (v39 + 64);
  v94 = *(v39 + 64);
  v95 = 1 << *(v39 + 32);
  LODWORD(v285) = enum case for REMSuggestedAttributeOutput.list(_:);
  if (v95 < 64)
  {
    v96 = ~(-1 << v95);
  }

  else
  {
    v96 = -1;
  }

  v97 = v96 & v94;
  v98 = (v95 + 63) >> 6;
  v297 = (v289 + 6);
  v271 = v48 + 8;
  v291 = v289 + 4;
  v281 = (v289 + 2);
  v280 = (v289 + 11);
  v279 = enum case for REMSuggestedAttributeOutput.pasteboardURL(_:);
  v278 = enum case for REMSuggestedAttributeOutput.recurrenceFrequency(_:);
  v277 = enum case for REMSuggestedAttributeOutput.location(_:);
  v276 = enum case for REMSuggestedAttributeOutput.dueDate(_:);
  v275 = enum case for REMSuggestedAttributeOutput.assignee(_:);
  v274 = enum case for REMSuggestedAttributeOutput.flagged(_:);
  v273 = enum case for REMSuggestedAttributeOutput.priority(_:);
  v272 = enum case for REMSuggestedAttributeOutput.tag(_:);
  v288 = (v289 + 12);
  ++v289;
  v270 = enum case for REMSuggestedAttributeOutput.contact(_:);

  v292 = 0;
  v293 = 0;
  v99 = 0;
  while (2)
  {
    v100 = v99;
    if (!v97)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v99 = v100;
LABEL_37:
      v101 = __clz(__rbit64(v97));
      v97 &= v97 - 1;
      v102 = (v99 << 10) | (16 * v101);
      v103 = *(v39 + 56);
      v104 = *(*(v39 + 48) + v102 + 8);
      v105 = (v103 + v102);
      v107 = *v105;
      v106 = v105[1];

      dispatch thunk of REMAnchoredBubbleModel.predict(title:)();
      v24 = v299;
      if ((*v297)(v299, 1, v298) != 1)
      {
        break;
      }

      v106, v108, v109, v110, v111, v112, v113, v114;
      v104, v115, v116, v117, v118, v119, v120, v121;
      sub_1000050A4(v24, &qword_1009413C0, &qword_1007A6A60);
      v100 = v99;
      v39 = v300;
      if (!v97)
      {
LABEL_34:
        while (1)
        {
          v99 = v100 + 1;
          if (__OFADD__(v100, 1))
          {
            break;
          }

          if (v99 >= v98)
          {

            v264 = v286;
            Date.init()();
            v265 = v284;
            Date.timeIntervalSince(_:)();
            v266 = *(v295 + 8);
            v267 = v264;
            v268 = v296;
            v266(v267, v296);
            REMSuggestedAttributesTrainer.Result.AnchoredBubble.init(precision:recall:skippedRemindersCount:trainingSetCount:validationSetCount:trainingDuration:)();

            return (v266)(v265, v268);
          }

          v97 = v32[v99];
          ++v100;
          if (v97)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_73:
        swift_once();
LABEL_4:
        v34 = type metadata accessor for Logger();
        sub_100006654(v34, qword_1009411C0);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "REMSuggestedAttributesTrainer: anchoredBubbleModel using .defaultWordDistanceScale", v37, 2u);
        }

        type metadata accessor for REMAnchoredBubbleModel();
        swift_getKeyPath();
        v38 = v290;
        PartialOverride.subscript.getter();

        swift_getKeyPath();
        PartialOverride.subscript.getter();

        (v32)(v38, v24);
        v39 = v300;
        v40 = v297;
        v41 = static REMAnchoredBubbleModel.train(titleList:distanceScale:usePCA:)();
        if (v40)
        {
          return (*(v295 + 8))(v284, v296);
        }

        v290 = v41;
        v282 = 0;
        v49 = v293;
        v48 = v294;
        v43 = v291;
        v54 = v292;
        p_class_meths = (&OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm + 32);
        goto LABEL_17;
      }
    }

    v122 = v283;
    (*v291)(v283, v24, v298);
    v123 = __OFADD__(v293++, 1);
    if (v123)
    {
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v124 = v122;
    v125 = v298;
    (*v281)(v294, v124, v298);
    v126 = (*v280)(v294, v125);
    if (v126 == v285)
    {
      v104, v127, v128, v129, v130, v131, v132, v133;
      (*v288)(v294, v298);
      sub_1000F5104(&qword_1009413F8, &qword_1007A13C0);
      v134 = REMSuggestedList.listIdentifier.getter();
      v142 = v135;
      if (v107 == v134 && v106 == v135)
      {
        v135, v135, v136, v137, v138, v139, v140, v141;

        v106, v168, v169, v170, v171, v172, v173, v174;
        (*v289)(v283, v298);
      }

      else
      {
        v144 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v142, v145, v146, v147, v148, v149, v150, v151;

        v106, v152, v153, v154, v155, v156, v157, v158;
        (*v289)(v283, v298);
        if ((v144 & 1) == 0)
        {
          v24 = v299;
          v39 = v300;
          v159 = v294;
LABEL_57:
          v182 = type metadata accessor for REMSuggestedAttributeOutput.Source();
          (*(*(v182 - 8) + 8))(v159, v182);
          continue;
        }
      }

      v123 = __OFADD__(v292++, 1);
      v24 = v299;
      v39 = v300;
      if (!v123)
      {
        v159 = v294;
        goto LABEL_57;
      }

      goto LABEL_75;
    }

    break;
  }

  if (v126 == v279)
  {
    v160 = v298;
    (*v289)(v283, v298);
LABEL_55:
    v106, v161, v162, v163, v164, v165, v166, v167;
    v104, v175, v176, v177, v178, v179, v180, v181;
    v159 = v294;
    (*v288)(v294, v160);
LABEL_56:
    v39 = v300;
    goto LABEL_57;
  }

  v160 = v298;
  if (v126 == v278)
  {
LABEL_54:
    (*v289)(v283, v298);
    goto LABEL_55;
  }

  if (v126 == v277)
  {
    (*v289)(v283, v298);
    v106, v183, v184, v185, v186, v187, v188, v189;
    v104, v190, v191, v192, v193, v194, v195, v196;
    v159 = v294;
    (*v288)(v294, v160);
    v197 = &qword_1009413F0;
    v198 = &qword_1007A8C30;
LABEL_62:
    sub_1000F5104(v197, v198);

    goto LABEL_56;
  }

  if (v126 == v276)
  {
    (*v289)(v283, v298);
    v106, v199, v200, v201, v202, v203, v204, v205;
    v104, v206, v207, v208, v209, v210, v211, v212;
    v159 = v294;
    (*v288)(v294, v160);
    v197 = &qword_1009413E8;
    v198 = &unk_1007A13B0;
    goto LABEL_62;
  }

  if (v126 == v275)
  {
    (*v289)(v283, v298);
    v106, v213, v214, v215, v216, v217, v218, v219;
    v104, v220, v221, v222, v223, v224, v225, v226;
    v159 = v294;
    (*v288)(v294, v160);

    goto LABEL_56;
  }

  if (v126 == v274 || v126 == v273)
  {
    goto LABEL_54;
  }

  if (v126 == v272)
  {
    (*v289)(v283, v298);
    v106, v227, v228, v229, v230, v231, v232, v233;
    v104, v234, v235, v236, v237, v238, v239, v240;
    v159 = v294;
    (*v288)(v294, v160);
    v241 = sub_1000F5104(&qword_1009413D8, &unk_1007A13A0);
    *&v271[*(v241 + 48)], v242, v243, v244, v245, v246, v247, v248;
    goto LABEL_56;
  }

  if (v126 == v270)
  {
    v249 = v298;
    (*v289)(v283, v298);
    v106, v250, v251, v252, v253, v254, v255, v256;
    v104, v257, v258, v259, v260, v261, v262, v263;
    v159 = v294;
    (*v288)(v294, v249);
    sub_1000F5104(&qword_1009413D0, &qword_1007A1398);

    v24 = v299;
    v39 = v300;
    goto LABEL_57;
  }

LABEL_76:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E73AC@<X0>(uint64_t *a2@<X8>)
{
  REMSuggestedAttributeInputDataFrame.iloc(_:)();
  REMSuggestedAttributeInput.list.getter();

  v3 = REMSuggestedList.isValid.getter();

  if (v3)
  {
    REMSuggestedAttributeInputDataFrame.iloc(_:)();
    v5 = REMSuggestedAttributeInput.title.getter();
    v7 = v6;

    REMSuggestedAttributeInputDataFrame.iloc(_:)();
    REMSuggestedAttributeInput.list.getter();

    v8 = REMSuggestedList.listIdentifier.getter();
    v10 = v9;
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v8 = 0;
    v10 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v10;
  return result;
}

uint64_t sub_1002E74A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v239 = a3;
  v228 = a2;
  v212 = a4;
  v215 = type metadata accessor for URL();
  v214 = *(v215 - 8);
  __chkstk_darwin(v215, v5);
  v224 = v209 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for REMSuggestedAttributesTrainer.Result.Embedding();
  v226 = *(v227 - 8);
  __chkstk_darwin(v227, v7);
  v9 = v209 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for REMSuggestedAttributesAccuracy();
  v225 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v223 = v209 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v236 = v209 - v15;
  v245 = type metadata accessor for MultiClassificationMetric();
  v234 = *(v245 - 8);
  __chkstk_darwin(v245, v16);
  v222 = v209 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v241 = v209 - v20;
  __chkstk_darwin(v21, v22);
  v247 = v209 - v23;
  v24 = sub_1000F5104(&qword_10093EDF8, &qword_10079D5B0);
  __chkstk_darwin(v24 - 8, v25);
  v246 = v209 - v26;
  v237 = type metadata accessor for Date();
  v230 = *(v237 - 8);
  __chkstk_darwin(v237, v27);
  v221 = (v209 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29, v30);
  v32 = (v209 - v31);
  __chkstk_darwin(v33, v34);
  v36 = v209 - v35;
  v37 = sub_1000F5104(&qword_1009413A0, &qword_1007A1218);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37, v39);
  v41 = v209 - v40;
  swift_getKeyPath();
  v238 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  v248 = a1;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  v42 = *(v38 + 8);
  v231 = v41;
  v232 = v37;
  v233 = v38 + 8;
  v42(v41, v37);
  if (LOBYTE(v251) != 1)
  {
    sub_1002F06A4();
    swift_allocError();
    return swift_willThrow();
  }

  v229 = v42;
  v210 = v10;
  v211 = v9;
  v220 = REMSuggestedAttributeInputDataFrame.list.getter();
  Date.init()();
  if (qword_100935E70 != -1)
  {
    goto LABEL_82;
  }

  while (1)
  {
    v43 = type metadata accessor for Logger();
    v44 = sub_100006654(v43, qword_1009411C0);
    v45 = v230;
    v46 = *(v230 + 16);
    v219 = v36;
    v47 = v237;
    v46(v32, v36, v237);
    v209[4] = v44;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v45;
      v51 = swift_slowAlloc();
      v52 = COERCE_DOUBLE(swift_slowAlloc());
      v251 = v52;
      *v51 = 136446210;
      v53 = Date.description.getter();
      v54 = v47;
      v56 = v55;
      v218 = *(v50 + 8);
      v218(v32, v54);
      v57 = sub_10000668C(v53, v56, &v251);
      v56, v58, v59, v60, v61, v62, v63, v64;
      *(v51 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v48, v49, "trainEvaluatekNN started at %{public}s", v51, 0xCu);
      sub_10000607C(*&v52);
    }

    else
    {

      v218 = *(v45 + 8);
      v218(v32, v47);
    }

    swift_getKeyPath();
    v66 = v248;
    PartialOverride.subscript.getter();

    v67 = v251;
    if (v251 <= 1.0)
    {
      v68 = v251;
    }

    else
    {
      v68 = 1.0;
    }

    v69 = 1.0 - v68;
    v251 = *(v66 + *(type metadata accessor for TrainingContext(0) + 28));

    v70 = v239;
    v71 = REMSuggestedAttributeInputDataFrame.index.getter();
    v72 = v209;
    __chkstk_darwin(v71, v73);
    v209[-2] = v70;
    v74 = v244;
    v250 = sub_1002E1854(sub_1002F13B0, &v209[-4]);
    sub_1002EB904();
    v75 = v250;
    v76 = *v250->clientIdentity;
    if (v67 <= 0.0)
    {
      v77 = 1.0;
    }

    else
    {
      v77 = v69;
    }

    v78 = v77 * v76;
    if (COERCE_UNSIGNED_INT64(fabs(v78)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      swift_unknownObjectRelease();
      sub_1002786C4(v75, v75 + 32, v72, (2 * v76) | 1);
      v94 = v208;
      goto LABEL_35;
    }

    if (v78 <= -9.22337204e18)
    {
      goto LABEL_84;
    }

    if (v78 >= 9.22337204e18)
    {
      goto LABEL_85;
    }

    v79 = v78;
    v80 = sub_1002F36CC();
    v82 = v81;
    v84 = v83;
    v72 = v85;
    v216 = v79;
    v243 = v74;
    if (v85)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();

      v86 = swift_dynamicCastClass();
      if (!v86)
      {
        swift_unknownObjectRelease();
        v86 = &_swiftEmptyArrayStorage;
      }

      v87 = *v86->clientIdentity;

      if (__OFSUB__(v72 >> 1, v84))
      {
        __break(1u);
      }

      else if (v87 == (v72 >> 1) - v84)
      {
        v88 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v79 = v216;
        if (v88)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      swift_unknownObjectRelease();
      v79 = v216;
    }

    else
    {
    }

    sub_1002786C4(v80, v82, v84, v72);
LABEL_24:
    swift_unknownObjectRelease();
LABEL_25:
    v89 = v76 - v79;
    if (__OFSUB__(v76, v79))
    {
      goto LABEL_86;
    }

    if ((v89 & 0x8000000000000000) != 0)
    {
      goto LABEL_87;
    }

    v76 = *(v75 + 16);
    v90 = v76 >= v89;
    v91 = v76 - v89;
    if (v90)
    {
      v72 = v91;
    }

    else
    {
      v72 = 0;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v92 = swift_dynamicCastClass();
    if (!v92)
    {
      swift_unknownObjectRelease();
      v92 = &_swiftEmptyArrayStorage;
    }

    v93 = *v92->clientIdentity;

    if (v93 != v76 - v72)
    {
      goto LABEL_88;
    }

    v94 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v94)
    {
      goto LABEL_36;
    }

    v94 = &_swiftEmptyArrayStorage;
LABEL_35:
    swift_unknownObjectRelease();
LABEL_36:
    v95 = dispatch thunk of Series.iloc(index:)();
    v96 = dispatch thunk of Series.iloc(index:)();

    v97 = dispatch thunk of Series.iloc(index:)();
    v98 = v94;
    v99 = v97;
    v217 = v98;
    v244 = dispatch thunk of Series.iloc(index:)();
    v209[2] = v95;
    dispatch thunk of Series.values.getter();
    v209[3] = v96;
    v100 = v243;
    sub_1002E165C(v96);
    v209[1] = type metadata accessor for REMkNNByTitleEmbedding();
    swift_allocObject();
    v101 = REMkNNByTitleEmbedding.init(vectors:labels:)();
    v102 = sub_1002F0B98(v99);
    v110 = v102;
    v243 = v100;
    v111 = *v102->clientIdentity;
    v240 = v99;
    v242 = v101;
    if (v111)
    {
      v249 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      type metadata accessor for REMSuggestedList();
      v112 = &v110->clientIdentity[24];
      do
      {

        REMSuggestedList.__allocating_init(stringLiteral:)();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v112 += 16;
        --v111;
      }

      while (v111);
      v110, v113, v114, v115, v116, v117, v118, v119;
    }

    else
    {
      v102, v103, v104, v105, v106, v107, v108, v109;
    }

    Series.index.getter();
    type metadata accessor for REMSuggestedList();
    v249 = static REMSuggestedList.defaultValue.getter();
    v235 = sub_1000F5104(&qword_100941388, &qword_1007A1200);
    swift_allocObject();
    v32 = Series.init(_:index:defaultValue:)();
    v250 = v32;

    MultiClassificationMetric.init<A>(groundTruth:prediction:)();
    swift_getKeyPath();
    v120 = v231;
    PartialOverride.subscript.getter();

    swift_getKeyPath();
    v121 = v232;
    PartialOverride.subscript.getter();

    v122 = v229;
    (v229)(v120, v121);
    if (v249 < 3)
    {
      goto LABEL_45;
    }

    swift_getKeyPath();
    PartialOverride.subscript.getter();

    swift_getKeyPath();
    PartialOverride.subscript.getter();

    result = v122(v120, v121);
    v124 = v249 + 1;
    if (__OFADD__(v249, 1))
    {
      break;
    }

    if (v124 < 3)
    {
      goto LABEL_92;
    }

    if (v249 == 2)
    {
LABEL_45:
      v229 = 1;
      v125 = v243;
LABEL_46:
      v126 = Logger.logObject.getter();
      v127 = static os_log_type_t.default.getter();
      v128 = os_log_type_enabled(v126, v127);
      v129 = v229;
      if (v128)
      {
        v130 = swift_slowAlloc();
        *v130 = 134349056;
        *(v130 + 4) = v129;
        _os_log_impl(&_mh_execute_header, v126, v127, "best k for kNN model is %{public}ld", v130, 0xCu);
      }

      v131 = [objc_opt_self() daemonUserDefaults];
      v132 = [objc_allocWithZone(NSNumber) initWithInteger:v129];
      [v131 setBestKForKNN:v132];

      v133 = MultiClassificationMetric.correctIndices.getter();
      __chkstk_darwin(v133, v134);
      v135 = v239;
      v209[-2] = v239;
      v136 = v125;
      sub_10024D1A0(sub_1002F13D0, &v209[-4], v133);
      v133, v137, v138, v139, v140, v141, v142, v143;
      v144 = MultiClassificationMetric.incorrectIndices.getter();
      __chkstk_darwin(v144, v145);
      v209[-2] = v135;
      v209[-1] = &v250;
      sub_10024D1A0(sub_1002F13F0, &v209[-4], v144);
      v144, v146, v147, v148, v149, v150, v151, v152;
      (*(v234 + 16))(v222, v247, v245);
      REMSuggestedAttributesAccuracy.init(correctSample:incorrectSample:metrics:)();
      v153 = v221;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v155 = v154;
      v218(v153, v237);
      v156 = Logger.logObject.getter();
      v157 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        *v158 = 134349056;
        *(v158 + 4) = v155;
        _os_log_impl(&_mh_execute_header, v156, v157, "kNN model training time: %{public}f", v158, 0xCu);
      }

      type metadata accessor for Analytics();
      sub_1000F5104(&unk_100939240, &unk_100798990);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791340;
      strcpy((inited + 32), "list_accuracy");
      *(inited + 46) = -4864;
      MultiClassificationMetric.accuracy.getter();
      *(inited + 48) = Double._bridgeToObjectiveC()();
      *(inited + 56) = 0x616E5F6C65646F6DLL;
      *(inited + 64) = 0xEA0000000000656DLL;
      sub_1000060C8(0, &unk_10093F610, NSString_ptr);
      *(inited + 72) = NSString.init(stringLiteral:)();
      v160 = sub_10038D880(inited);
      swift_setDeallocating();
      sub_1000F5104(&unk_100939250, &unk_100795D30);
      swift_arrayDestroy();
      static Analytics.postEvent(_:payload:duration:)();
      v160, v161, v162, v163, v164, v165, v166, v167;
      v168 = v225;
      v169 = v210;
      (*(v225 + 16))(v223, v236, v210);
      v170 = v211;
      REMSuggestedAttributesTrainer.Result.Embedding.init(listAccuracy:skippedRemindersCount:trainingSetCount:validationSetCount:trainingDuration:)();
      swift_getKeyPath();
      PartialOverride.subscript.getter();

      v171 = v249;
      sub_1000060C8(0, &qword_10093E9B0, REMPaths_ptr);
      v172 = v224;
      if (v171 == 1)
      {
        static REMPaths.writableURLForMLModel()();
      }

      else
      {
        static REMPaths.temporaryURLForMLModel()();
      }

      v173 = v220;
      if (v136)
      {

LABEL_79:
        (*(v226 + 8))(v170, v227);
        (*(v168 + 8))(v236, v169);
        (*(v234 + 8))(v247, v245);

        v218(v219, v237);
      }

      v174 = *v217->clientIdentity;

      if (v174)
      {
        dispatch thunk of Series.values.getter();
        sub_1002E165C(v173);
        swift_allocObject();
        REMkNNByTitleEmbedding.init(vectors:labels:)();
        if (REMkNNByTitleEmbedding.save(to:with:)())
        {

LABEL_75:

          (*(v214 + 8))(v172, v215);
          (*(v168 + 8))(v236, v169);
          (*(v234 + 8))(v247, v245);

          v218(v219, v237);
          (*(v226 + 32))(v212, v170, v227);
        }

        v204 = objc_opt_self();
        v205 = String._bridgeToObjectiveC()();
        [v204 internalErrorWithDebugDescription:v205];

        swift_willThrow();
      }

      else
      {
        if (REMkNNByTitleEmbedding.save(to:with:)())
        {
          goto LABEL_75;
        }

        v206 = objc_opt_self();
        v207 = String._bridgeToObjectiveC()();
        [v206 internalErrorWithDebugDescription:v207];

        swift_willThrow();
      }

      (*(v214 + 8))(v172, v215);
      goto LABEL_79;
    }

    v232 = (v234 + 8);
    v213 = (v234 + 32);
    v175 = v249 - 2;
    if ((v249 - 2) >= 0xFFFFFFFFFFFFFFFDLL)
    {
      v175 = -3;
    }

    v176 = v175 + 3;
    v177 = 3;
    v229 = 1;
    v36 = v247;
    v125 = v243;
    v233 = v249 + 1;
    v231 = (v175 + 3);
    while (v177 != v176)
    {
      if (v177)
      {
        __chkstk_darwin(result, v123);
        v179 = v248;
        v209[-2] = v242;
        v209[-1] = v179;
        v180 = sub_1002E13F0(sub_1002F1410);
        v188 = v180;
        v189 = *v180->clientIdentity;
        if (v189)
        {
          v243 = v125;
          v249 = &_swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v190 = &v188->clientIdentity[24];
          do
          {

            REMSuggestedList.__allocating_init(stringLiteral:)();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v190 += 16;
            --v189;
          }

          while (v189);
          v188, v191, v192, v193, v194, v195, v196, v197;
          v36 = v247;
          v125 = v243;
        }

        else
        {
          v180, v181, v182, v183, v184, v185, v186, v187;
        }

        Series.index.getter();
        v249 = static REMSuggestedList.defaultValue.getter();
        swift_allocObject();
        v178 = Series.init(_:index:defaultValue:)();

        v198 = v241;
        MultiClassificationMetric.init<A>(groundTruth:prediction:)();
        MultiClassificationMetric.accuracy.getter();
        v200 = v199;
        MultiClassificationMetric.accuracy.getter();
        v201 = *v232;
        if (v200 >= v202)
        {
          v201(v198, v245);

          v178 = v32;
        }

        else
        {
          v203 = v245;
          v201(v36, v245);

          v250 = v178;
          result = (*v213)(v36, v198, v203);
          v229 = v177;
        }

        v124 = v233;
        v176 = v231;
      }

      else
      {
        v178 = v32;
      }

      ++v177;
      v32 = v178;
      if (v177 == v124)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_82:
    swift_once();
  }

  __break(1u);
LABEL_92:
  __break(1u);
  return result;
}

void sub_1002E8E10(_TtC7remindd19RDXPCStorePerformer *a1@<X0>, void *a2@<X1>, _TtC7remindd19RDXPCStorePerformer *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v441 = a4;
  v445 = a3;
  v451 = a2;
  v428 = a5;
  v6 = type metadata accessor for REMSuggestedLocation.LocationValue();
  v421 = *(v6 - 8);
  v422 = v6;
  __chkstk_darwin(v6, v7);
  v420 = v409 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for REMSuggestedAttributesAccuracy();
  v429 = *(v9 - 8);
  v430 = v9;
  __chkstk_darwin(v9, v10);
  v427 = v409 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v426 = v409 - v14;
  __chkstk_darwin(v15, v16);
  v425 = v409 - v17;
  __chkstk_darwin(v18, v19);
  v435 = v409 - v20;
  __chkstk_darwin(v21, v22);
  v438 = v409 - v23;
  __chkstk_darwin(v24, v25);
  v440 = v409 - v26;
  v443 = type metadata accessor for MultiClassificationMetric();
  v436 = *(v443 - 8);
  __chkstk_darwin(v443, v27);
  v423 = v409 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v30);
  v437 = v409 - v31;
  __chkstk_darwin(v32, v33);
  v442 = v409 - v34;
  __chkstk_darwin(v35, v36);
  v439 = v409 - v37;
  v38 = sub_1000F5104(&qword_10093EDF8, &qword_10079D5B0);
  v432 = *&v38[-1].shareRecordIDToRootRecordIDLock[2];
  v433 = v38;
  __chkstk_darwin(v38, v39);
  v431 = v409 - v40;
  v41 = type metadata accessor for URL();
  v458 = *(v41 - 8);
  v459 = v41;
  __chkstk_darwin(v41, v42);
  v450 = (v409 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v44, v45);
  v457 = v409 - v46;
  v455 = type metadata accessor for Date();
  v453 = *(v455 - 8);
  __chkstk_darwin(v455, v47);
  v424 = v409 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49, v50);
  v52 = v409 - v51;
  v53 = sub_1000F5104(&qword_100941378, &qword_1007A1080);
  v54 = *&v53[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v53, v55);
  v449 = (v409 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v57, v58);
  v444 = (v409 - v59);
  __chkstk_darwin(v60, v61);
  v448 = (v409 - v62);
  __chkstk_darwin(v63, v64);
  *&v447 = v409 - v65;
  __chkstk_darwin(v66, v67);
  v69 = (v409 - v68);
  swift_getKeyPath();
  v70 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  v71 = a1;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  v72 = *(v54 + 8);
  v446 = v69;
  v452 = v53;
  v456 = (v54 + 8);
  (v72)(v69, v53);
  if (LOBYTE(v462[0]) != 1)
  {
    sub_1002F06A4();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v418 = v72;
  v419 = v52;
  Date.init()();
  swift_getKeyPath();
  v434 = v71;
  PartialOverride.subscript.getter();

  v73 = LOBYTE(v462[0]);
  sub_1000060C8(0, &qword_10093E9B0, REMPaths_ptr);
  v74 = v457;
  v75 = v454;
  if (v73 == 1)
  {
    static REMPaths.writableURLForMLModel()();
  }

  else
  {
    static REMPaths.temporaryURLForMLModel()();
  }

  if (v75)
  {
    (*(v453 + 8))(v419, v455, v459);
    return;
  }

  (*(v458 + 16))(v450, v74, v459);
  swift_getKeyPath();
  v76 = v447;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  v77 = v452;
  PartialOverride.subscript.getter();

  v78 = v76;
  v79 = v418;
  (v418)(v78, v77);
  v454 = v462[0];
  swift_getKeyPath();
  v80 = v448;
  v417 = v70;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  (v79)(v80, v77);
  v81 = v463;
  type metadata accessor for RDCoreBehaviorModel(0);
  swift_allocObject();
  v82 = sub_1004C9A28(v450, v454, 0, v81, 0);
  v454 = 0;
  swift_getKeyPath();
  v83 = v446;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  (v79)(v83, v77);
  if (v462[0])
  {
    sub_1004C5AE0(v462[0]);
  }

  v450 = v82;
  swift_getKeyPath();
  v84 = v446;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  v85 = v452;
  PartialOverride.subscript.getter();

  v86 = v418;
  (v418)(v84, v85);
  v87 = v462[0];
  swift_getKeyPath();
  v88 = v86;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  (v86)(v84, v85);
  v89 = v462[0];
  v448 = v87;
  *&v447 = v87 + v462[0];
  v90 = v451;
  v91 = v445;
  if (__CFADD__(v87, v462[0]))
  {
    goto LABEL_87;
  }

  swift_getKeyPath();
  v92 = v444;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  (v86)(v92, v85);
  v93 = v454;
  sub_1004C5C68(v90, v91, v447, 0, *v462);
  v98 = v91;
  if (v93)
  {
LABEL_12:

    (*(v458 + 8))(v457, v459);
    (*(v453 + 8))(v419, v455);
    return;
  }

  v454 = 0;
  if (v89 <= 2 && v96 == 1)
  {
    *&v97 = 134217984;
    v447 = v97;
    while (1)
    {
      v99 = &v448->super.isa + v89 + 1;
      if (__CFADD__(v448, v89 + 1))
      {
        break;
      }

      if (qword_100935E70 != -1)
      {
        swift_once();
      }

      v100 = type metadata accessor for Logger();
      sub_100006654(v100, qword_1009411C0);
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = v447;
        *(v103 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v101, v102, "CoreBehavior terminated early. Retrying with support = %lu", v103, 0xCu);
      }

      swift_getKeyPath();
      v104 = v449;
      PartialOverride.subscript.getter();

      swift_getKeyPath();
      v105 = v452;
      PartialOverride.subscript.getter();

      v106 = v104;
      v88 = v418;
      (v418)(v106, v105);
      v107 = v454;
      sub_1004C5C68(v451, v98, v99, 0, *v462);
      if (v107)
      {
        goto LABEL_12;
      }

      v454 = 0;
      if (v89 <= 1)
      {
        ++v89;
        if (v108 == 1)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    return;
  }

LABEL_24:
  v414 = v95;
  v415 = v94;
  v449 = objc_opt_self();
  *&v447 = [(RDXPCStorePerformer *)v449 daemonUserDefaults];
  sub_1000F5104(&unk_10094EC20, &qword_1007A11D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791320;
  *(inited + 32) = 0x74726F70707573;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = UInt._bridgeToObjectiveC()();
  *(inited + 56) = 0x656D7473756A6461;
  *(inited + 64) = 0xEA0000000000746ELL;
  *(inited + 72) = UInt._bridgeToObjectiveC()();
  *(inited + 80) = 0x6E656469666E6F63;
  *(inited + 88) = 0xEA00000000006563;
  swift_getKeyPath();
  v110 = v446;
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  v111 = v452;
  PartialOverride.subscript.getter();

  (v88)(v110, v111);
  *(inited + 96) = Double._bridgeToObjectiveC()();
  v112 = sub_10038F938(inited);
  swift_setDeallocating();
  sub_1000F5104(&qword_100941380, &unk_1007A11E0);
  swift_arrayDestroy();
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v112, v114, v115, v116, v117, v118, v119, v120;
  v121 = v447;
  [v447 setCoreBehaviorTrainingParameters:isa];

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  (v88)(v110, v111);
  v122 = v462[0];
  v123 = v122 / REMSuggestedAttributeInputDataFrame.size.getter();
  swift_getKeyPath();
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  (v88)(v110, v111);
  v124 = v462[0];
  v125 = [(RDXPCStorePerformer *)v449 daemonUserDefaults];
  sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
  v126 = swift_initStackObject();
  *(v126 + 16) = xmmword_100791300;
  strcpy(v462, "coreBehavior");
  BYTE5(v462[1]) = 0;
  HIWORD(v462[1]) = -5120;
  AnyHashable.init<A>(_:)();
  sub_1000F5104(&unk_1009439E0, &unk_1007A11F0);
  v127 = swift_initStackObject();
  *(v127 + 16) = xmmword_100791340;
  *(v127 + 32) = 0x65766974616C6572;
  *(v127 + 40) = 0xEF74726F70707553;
  *(v127 + 48) = v123;
  *(v127 + 56) = 0x6E656469666E6F63;
  *(v127 + 64) = 0xEA00000000006563;
  *(v127 + 72) = v124;
  v128 = sub_10038DA10(v127);
  swift_setDeallocating();
  sub_1000F5104(&qword_10093EC60, &unk_10079D390);
  swift_arrayDestroy();
  *(v126 + 96) = sub_1000F5104(&qword_10093E9C0, qword_100794F90);
  *(v126 + 72) = v128;
  v129 = sub_10038ED74(v126);
  swift_setDeallocating();
  sub_1000050A4(v126 + 32, &unk_100946590, &qword_100796FF0);
  v130 = Dictionary._bridgeToObjectiveC()().super.isa;
  v129, v131, v132, v133, v134, v135, v136, v137;
  [v125 setSuggestedAttributesHarvestingOverrides:v130];

  v138 = v450;
  v139 = v454;
  v140 = sub_1004C6658(v441);
  v141 = v139;
  if (v139)
  {
    goto LABEL_12;
  }

  v410 = v140;
  v142 = v431;
  v143 = v451;
  v144 = REMSuggestedAttributeInputDataFrame.index.getter();
  __chkstk_darwin(v144, v145);
  v409[-4] = v138;
  v409[-3] = v143;
  v407 = v445;
  v146 = sub_10024D5D0(sub_1002F10A4);
  v444 = 0;
  (*v432->storeController)(v142, v433);
  v463 = &_swiftEmptyArrayStorage;
  v147 = *v146->clientIdentity;
  v446 = &_swiftEmptyArrayStorage;
  *&v447 = &_swiftEmptyArrayStorage;
  v456 = &_swiftEmptyArrayStorage;
  v417 = v146;
  v418 = &_swiftEmptyArrayStorage;
  v416 = v147;
  while (v147 != v141)
  {
    if (v141 >= *v146->clientIdentity)
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v148 = *&v146->clientIdentity[8 * v141 + 16];
    v141 = (v141 + 1);
    v149 = *(v148 + 16);
    if (v149)
    {

      v445 = (v141 - 1);
      v157 = (v148 + 80);
      do
      {
        if (!*v157)
        {
          v162 = *(v157 - 6);
          v163 = *(v157 - 4);
          v164 = *(v157 - 3);
          v166 = *(v157 - 2);
          v165 = *(v157 - 1);
          v454 = *(v157 - 5);
          v452 = v163;
          v448 = v164;
          v449 = v165;
          sub_1002F10C8(v162, v454, v163, v164, v166, v165, 0);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v446 = sub_1003679CC(0, *v446->clientIdentity + 1, 1, v446, v167, v168, v169, v170);
          }

          v172 = *v446->clientIdentity;
          v171 = *&v446->clientIdentity[8];
          if (v172 >= v171 >> 1)
          {
            v446 = sub_1003679CC((v171 > 1), v172 + 1, 1, v446, v167, v168, v169, v170);
          }

          v174 = v445;
          v173 = v446;
          *v446->clientIdentity = v172 + 1;
          *&v173->clientIdentity[8 * v172 + 16] = v174;

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v463 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v463 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v418 = v463;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            *&v447 = sub_100365788(0, *(v447 + 16) + 1, 1, v447, v175, v176, v177, v178);
          }

          v180 = *(v447 + 16);
          v179 = *(v447 + 24);
          if (v180 >= v179 >> 1)
          {
            *&v447 = sub_100365788((v179 > 1), v180 + 1, 1, v447, v175, v176, v177, v178);
          }

          v158 = v447;
          *(v447 + 16) = v180 + 1;
          v159 = v158 + 16 * v180;
          v160 = v448;
          v161 = v449;
          *(v159 + 32) = v448;
          *(v159 + 40) = v166;
          sub_1002F115C(v162, v454, v452, v160, v166, v161, 0, v178);
          v143 = v451;
        }

        v157 += 56;
        --v149;
      }

      while (v149);
      v148, v150, v151, v152, v153, v154, v155, v156;
      v147 = v416;
      v146 = v417;
    }
  }

  sub_1000F5104(&qword_100941388, &qword_1007A1200);
  type metadata accessor for REMSuggestedList();

  v462[0] = static REMSuggestedList.defaultValue.getter();

  v181 = Series.__allocating_init(_:index:defaultValue:)();
  v182 = sub_1000F5104(&qword_100941358, &qword_1007A1078);
  v462[0] = 0;
  v462[1] = 0xE000000000000000;

  v411 = v182;
  v183 = Series.__allocating_init(_:index:defaultValue:)();
  REMSuggestedAttributeInputDataFrame.list.getter();

  v184 = v439;
  MultiClassificationMetric.init<A>(groundTruth:prediction:)();
  v185 = MultiClassificationMetric.correctIndices.getter();
  __chkstk_darwin(v185, v186);
  v408 = v183;
  v187 = v444;
  sub_10024D1A0(sub_1002F11F0, &v409[-4], v185);
  v185, v188, v189, v190, v191, v192, v193, v194;
  v195 = MultiClassificationMetric.incorrectIndices.getter();
  __chkstk_darwin(v195, v196);
  v409[-4] = v143;
  v409[-3] = v181;
  v409[3] = v183;
  v409[4] = v181;
  v407 = v183;
  sub_10024D1A0(sub_1002F1210, &v409[-6], v195);
  v433 = v187;
  v195, v197, v198, v199, v200, v201, v202, v203;
  v412 = *(v436 + 16);
  v413 = v436 + 16;
  v412(v442, v184, v443);
  REMSuggestedAttributesAccuracy.init(correctSample:incorrectSample:metrics:)();
  v204 = 0;
  v461 = &_swiftEmptyArrayStorage;
  v449 = &_swiftEmptyArrayStorage;
  v452 = &_swiftEmptyArrayStorage;
  v432 = &_swiftEmptyArrayStorage;
  while (v416 != v204)
  {
    if (v204 >= *v417->clientIdentity)
    {
      goto LABEL_84;
    }

    v205 = *&v417->clientIdentity[8 * v204++ + 16];
    v206 = *(v205 + 16);
    if (v206)
    {

      v434 = (v204 - 1);
      v214 = (v205 + 80);
      do
      {
        if (*v214 == 2)
        {
          v221 = *(v214 - 6);
          v220 = *(v214 - 5);
          v222 = *(v214 - 4);
          v224 = *(v214 - 2);
          v223 = *(v214 - 1);
          v444 = *(v214 - 3);
          v445 = v223;
          sub_1002F10C8(v221, v220, v222, v444, v224, v223, 2u);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v454 = v220;
          v448 = v222;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v452 = sub_1003679CC(0, *v452->clientIdentity + 1, 1, v452, v226, v227, v228, v229);
          }

          v231 = *v452->clientIdentity;
          v230 = *&v452->clientIdentity[8];
          if (v231 >= v230 >> 1)
          {
            v452 = sub_1003679CC((v230 > 1), v231 + 1, 1, v452, v226, v227, v228, v229);
          }

          v232 = v452;
          *v452->clientIdentity = v231 + 1;
          *&v232->clientIdentity[8 * v231 + 16] = v434;

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v461 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v461 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v432 = v461;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v449 = sub_100365788(0, *v449->clientIdentity + 1, 1, v449, v233, v234, v235, v236);
          }

          v238 = *v449->clientIdentity;
          v237 = *&v449->clientIdentity[8];
          if (v238 >= v237 >> 1)
          {
            v449 = sub_100365788((v237 > 1), v238 + 1, 1, v449, v233, v234, v235, v236);
          }

          v215 = v448;
          v216 = v449;
          *v449->clientIdentity = v238 + 1;
          v217 = v216 + 16 * v238;
          v218 = v444;
          v219 = v445;
          *(v217 + 4) = v444;
          *(v217 + 5) = v224;
          sub_1002F115C(v221, v454, v215, v218, v224, v219, 2, v236);
        }

        v214 += 56;
        --v206;
      }

      while (v206);
      v205, v207, v208, v209, v210, v211, v212, v213;
    }
  }

  sub_1000F5104(&qword_100941390, &qword_1007A1208);
  type metadata accessor for REMSuggestedWeekDay();

  static REMSuggestedWeekDay.nilValue.getter();
  swift_allocObject();
  v462[0] = REMSuggestedWeekDay.init(_:)();

  v239 = Series.__allocating_init(_:index:defaultValue:)();
  v462[0] = 0;
  v462[1] = 0xE000000000000000;

  v240 = Series.__allocating_init(_:index:defaultValue:)();
  v241 = v451;
  REMSuggestedAttributeInputDataFrame.dueDayOfWeek.getter();

  v242 = v437;
  MultiClassificationMetric.init<A>(groundTruth:prediction:)();
  v243 = MultiClassificationMetric.correctIndices.getter();
  __chkstk_darwin(v243, v244);
  v408 = v240;
  v245 = v433;
  sub_10024D1A0(sub_1002F1268, &v409[-4], v243);
  v243, v246, v247, v248, v249, v250, v251, v252;
  v253 = MultiClassificationMetric.incorrectIndices.getter();
  __chkstk_darwin(v253, v254);
  v409[-4] = v241;
  v409[-3] = v239;
  v409[1] = v240;
  v409[2] = v239;
  v407 = v240;
  sub_10024D1A0(sub_1002F12AC, &v409[-6], v253);
  v255 = v245;
  v253, v256, v257, v258, v259, v260, v261, v262;
  v412(v442, v242, v443);
  REMSuggestedAttributesAccuracy.init(correctSample:incorrectSample:metrics:)();
  v270 = 0;
  v460 = &_swiftEmptyArrayStorage;
  v448 = &_swiftEmptyArrayStorage;
  v433 = &_swiftEmptyArrayStorage;
  while (v416 != v270)
  {
    if (v270 >= *v417->clientIdentity)
    {
      goto LABEL_85;
    }

    v271 = *&v417->clientIdentity[8 * v270++ + 16];
    v272 = *(v271 + 16);
    if (v272)
    {
      v409[0] = v255;

      v431 = (v270 - 1);
      v280 = (v271 + 80);
      do
      {
        if (*v280 == 1)
        {
          v285 = *(v280 - 6);
          v284 = *(v280 - 5);
          v286 = *(v280 - 4);
          v288 = *(v280 - 2);
          v287 = *(v280 - 1);
          v434 = *(v280 - 3);
          v444 = v287;
          sub_1002F10C8(v285, v284, v286, v434, v288, v287, 1u);

          v289 = swift_isUniquelyReferenced_nonNull_native();
          v454 = v284;
          v445 = v286;
          if ((v289 & 1) == 0)
          {
            v448 = sub_1003679CC(0, *v448->clientIdentity + 1, 1, v448, v290, v291, v292, v293);
          }

          v295 = *v448->clientIdentity;
          v294 = *&v448->clientIdentity[8];
          if (v295 >= v294 >> 1)
          {
            v448 = sub_1003679CC((v294 > 1), v295 + 1, 1, v448, v290, v291, v292, v293);
          }

          v296 = v448;
          *v448->clientIdentity = v295 + 1;
          *&v296->clientIdentity[8 * v295 + 16] = v431;

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v460 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v460 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v433 = v460;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v456 = sub_100365788(0, *v456->clientIdentity + 1, 1, v456, v297, v298, v299, v300);
          }

          v302 = *v456->clientIdentity;
          v301 = *&v456->clientIdentity[8];
          if (v302 >= v301 >> 1)
          {
            v456 = sub_100365788((v301 > 1), v302 + 1, 1, v456, v297, v298, v299, v300);
          }

          v281 = v456;
          *v456->clientIdentity = v302 + 1;
          v282 = v281 + 16 * v302;
          v283 = v434;
          *(v282 + 4) = v434;
          *(v282 + 5) = v288;
          sub_1002F115C(v285, v454, v445, v283, v288, v444, 1, v300);
        }

        v280 += 56;
        --v272;
      }

      while (v272);
      v271, v273, v274, v275, v276, v277, v278, v279;
      v255 = v409[0];
    }
  }

  v417, v263, v264, v265, v266, v267, v268, v269;
  sub_1000F5104(&qword_100941398, &qword_1007A1210);
  type metadata accessor for REMSuggestedLocation();
  (*(v421 + 104))(v420, enum case for REMSuggestedLocation.LocationValue.notAvailable(_:), v422);

  v303 = v448;

  v462[0] = REMSuggestedLocation.__allocating_init(_:)();

  v304 = Series.__allocating_init(_:index:defaultValue:)();
  v462[0] = 0;
  v462[1] = 0xE000000000000000;

  v305 = Series.__allocating_init(_:index:defaultValue:)();
  v306 = v255;
  v307 = v451;
  REMSuggestedAttributeInputDataFrame.location.getter();

  v308 = v442;
  v444 = v304;
  MultiClassificationMetric.init<A>(groundTruth:prediction:)();
  v309 = MultiClassificationMetric.correctIndices.getter();
  __chkstk_darwin(v309, v310);
  v408 = v305;
  v445 = v305;
  v434 = sub_10024D1A0(sub_1002F1310, &v409[-4], v309);
  v309, v311, v312, v313, v314, v315, v316, v317;
  v318 = MultiClassificationMetric.incorrectIndices.getter();
  __chkstk_darwin(v318, v319);
  v409[-4] = v307;
  v409[-3] = v304;
  v407 = v305;
  sub_10024D1A0(sub_1002F1350, &v409[-6], v318);
  v454 = v306;
  v449, v320, v321, v322, v323, v324, v325, v326;
  v433, v327, v328, v329, v330, v331, v332, v333;
  v303, v334, v335, v336, v337, v338, v339, v340;
  v456, v341, v342, v343, v344, v345, v346, v347;
  v318, v348, v349, v350, v351, v352, v353, v354;
  v418, v355, v356, v357, v358, v359, v360, v361;
  v446, v362, v363, v364, v365, v366, v367, v368;
  v447, v369, v370, v371, v372, v373, v374, v375;
  v432, v376, v377, v378, v379, v380, v381, v382;
  v452, v383, v384, v385, v386, v387, v388, v389;
  v412(v423, v308, v443);
  v390 = v435;
  REMSuggestedAttributesAccuracy.init(correctSample:incorrectSample:metrics:)();
  type metadata accessor for Analytics();
  sub_1000F5104(&unk_100939240, &unk_100798990);
  v391 = swift_initStackObject();
  *(v391 + 16) = xmmword_100792CE0;
  *(v391 + 32) = 0xD000000000000014;
  *(v391 + 40) = 0x80000001007F4590;
  MultiClassificationMetric.accuracy.getter();
  *(v391 + 48) = Double._bridgeToObjectiveC()();
  strcpy((v391 + 56), "list_accuracy");
  *(v391 + 70) = -4864;
  MultiClassificationMetric.accuracy.getter();
  *(v391 + 72) = Double._bridgeToObjectiveC()();
  *(v391 + 80) = 0xD000000000000011;
  *(v391 + 88) = 0x80000001007F45B0;
  MultiClassificationMetric.accuracy.getter();
  *(v391 + 96) = Double._bridgeToObjectiveC()();
  *(v391 + 104) = 0x616E5F6C65646F6DLL;
  *(v391 + 112) = 0xEA0000000000656DLL;
  sub_1000060C8(0, &unk_10093F610, NSString_ptr);
  *(v391 + 120) = NSString.init(stringLiteral:)();
  v392 = sub_10038D880(v391);
  swift_setDeallocating();
  sub_1000F5104(&unk_100939250, &unk_100795D30);
  swift_arrayDestroy();
  static Analytics.postEvent(_:payload:duration:)();
  v392, v393, v394, v395, v396, v397, v398, v399;
  v401 = v429;
  v400 = v430;
  v402 = *(v429 + 16);
  v402(v425, v440, v430);
  v402(v426, v438, v400);
  v402(v427, v390, v400);
  v452 = REMSuggestedAttributeInputDataFrame.size.getter();
  v451 = REMSuggestedAttributeInputDataFrame.size.getter();
  v403 = v424;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v456 = *(v453 + 8);
  (v456)(v403, v455);
  v407 = v410;
  REMSuggestedAttributesTrainer.Result.CoreBehavior.init(listAccuracy:dueDayOfWeekAccuracy:alarmLocationAccuracy:minedRuleCount:filteredOutRulesCount:distinctListCount:trainingSetCount:validationSetCount:trainingDuration:topRules:)();

  v404 = *(v401 + 8);
  v404(v435, v400);
  v405 = *(v436 + 8);
  v406 = v443;
  v405(v442, v443);
  v404(v438, v400);
  v405(v437, v406);
  v404(v440, v400);
  v405(v439, v406);
  (*(v458 + 8))(v457, v459);
  (v456)(v419, v455);
}

void sub_1002EB024(_TtC7remindd19RDXPCStorePerformer *a2@<X3>, _TtC7remindd19RDXPCStorePerformer **a3@<X8>)
{
  v5 = REMSuggestedAttributeInputDataFrame.iloc(_:)();
  if (a2)
  {
    dispatch thunk of Series.iloc(_:)();
    v6 = v15;
    a2 = v16;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1004C68F8(v5, v6, a2, 0, 0);

  a2, v8, v9, v10, v11, v12, v13, v14;
  *a3 = v7;
}

void sub_1002EB0D8(uint64_t *a2@<X8>)
{
  REMSuggestedAttributeInputDataFrame.iloc(_:)();
  v3 = REMSuggestedAttributeInput.description.getter();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);
  v5, v7, v8, v9, v10, v11, v12, v13;
  v14._countAndFlagsBits = 2314;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  dispatch thunk of Series.iloc(_:)();
  String.append(_:)(v22);
  v22._object, v15, v16, v17, v18, v19, v20, v21;
  *a2 = 0x5D7473694C3A565BLL;
  a2[1] = v23;
}

void sub_1002EB1BC(Swift::Int a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t *a5@<X8>)
{
  _StringGuts.grow(_:)(a2);
  0xE000000000000000, v8, v9, v10, v11, v12, v13, v14;
  v35 = a3;
  v36 = a4;
  REMSuggestedAttributeInputDataFrame.iloc(_:)();
  v15 = REMSuggestedAttributeInput.description.getter();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);
  v17, v19, v20, v21, v22, v23, v24, v25;
  v26._countAndFlagsBits = 2314;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  dispatch thunk of Series.iloc(_:)();
  String.append(_:)(v34);
  v34._object, v27, v28, v29, v30, v31, v32, v33;
  *a5 = v35;
  a5[1] = v36;
}

void sub_1002EB2B4(Swift::Int a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t *a5@<X8>, uint64_t (*a6)(void *))
{
  _StringGuts.grow(_:)(a2);
  0xE000000000000000, v9, v10, v11, v12, v13, v14, v15;
  v49 = a3;
  v50 = a4;
  REMSuggestedAttributeInputDataFrame.iloc(_:)();
  v16 = REMSuggestedAttributeInput.description.getter();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);
  v18, v20, v21, v22, v23, v24, v25, v26;
  v27._countAndFlagsBits = 540945696;
  v27._object = 0xE400000000000000;
  String.append(_:)(v27);
  v28 = dispatch thunk of Series.iloc(_:)();
  v29 = a6(v28);
  v31 = v30;

  v32._countAndFlagsBits = v29;
  v32._object = v31;
  String.append(_:)(v32);
  v31, v33, v34, v35, v36, v37, v38, v39;
  v40._countAndFlagsBits = 2314;
  v40._object = 0xE200000000000000;
  String.append(_:)(v40);
  dispatch thunk of Series.iloc(_:)();
  String.append(_:)(v48);
  v48._object, v41, v42, v43, v44, v45, v46, v47;
  *a5 = v49;
  a5[1] = v50;
}

uint64_t sub_1002EB40C(void *a1)
{
  REMSuggestedAttributeInputDataFrame.iloc(_:)();
  REMSuggestedAttributeInput.list.getter();

  v1 = REMSuggestedList.isValid.getter();

  return v1 & 1;
}

uint64_t sub_1002EB470@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000F5104(&qword_1009413A0, &qword_1007A1218);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v12 - v6;
  swift_getKeyPath();
  sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  PartialOverride.subscript.getter();

  swift_getKeyPath();
  PartialOverride.subscript.getter();

  (*(v4 + 8))(v7, v3);
  result = REMkNNByTitleEmbedding.predict(for:neighborCountToConsider:)();
  if (v9)
  {
    v10 = result;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (v9)
  {
    v11 = v9;
  }

  *a2 = v10;
  a2[1] = v11;
  return result;
}

void sub_1002EB5F4(void *a2@<X8>)
{
  REMSuggestedAttributeInputDataFrame.iloc(_:)();
  v3 = REMSuggestedAttributeInput.description.getter();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);
  v5, v7, v8, v9, v10, v11, v12, v13;
  *a2 = 0x5D7473694C3A565BLL;
  a2[1] = v14;
}

void sub_1002EB690(void *a3@<X8>)
{
  _StringGuts.grow(_:)(16);
  0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
  REMSuggestedAttributeInputDataFrame.iloc(_:)();
  v11 = REMSuggestedAttributeInput.description.getter();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);
  v13, v15, v16, v17, v18, v19, v20, v21;
  v22._countAndFlagsBits = 540945696;
  v22._object = 0xE400000000000000;
  String.append(_:)(v22);

  dispatch thunk of Series.iloc(_:)();

  v23 = REMSuggestedList.description.getter();
  v25 = v24;

  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);
  v25, v27, v28, v29, v30, v31, v32, v33;
  *a3 = 0x5D7473694C3A585BLL;
  a3[1] = 0xE800000000000000;
}

void sub_1002EB7C0(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = objc_autoreleasePoolPush();
  sub_1002E2298(v9, a2, a3, a4, a5);
  objc_autoreleasePoolPop(v10);
}

uint64_t sub_1002EB850(uint64_t a1)
{
  result = sub_1002F05EC(&qword_1009411F8, &type metadata accessor for REMSuggestedAttributesTrainer, &protocol conformance descriptor for REMSuggestedAttributesTrainer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002EB8A8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocClassInstance();
}

void sub_1002EB904()
{
  v1 = *v0;
  v2 = *(*v0)->clientIdentity;
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    type metadata accessor for MersenneTwister();
    sub_1002F05EC(&qword_100941348, &type metadata accessor for MersenneTwister, &protocol conformance descriptor for MersenneTwister);
    v4 = 0;
    while (1)
    {
      v6 = dispatch thunk of RandomNumberGenerator.next()();
      v7 = (v6 * v2) >> 64;
      if (v2 > v6 * v2)
      {
        v8 = -v2 % v2;
        if (v8 > v6 * v2)
        {
          do
          {
            v9 = dispatch thunk of RandomNumberGenerator.next()();
          }

          while (v8 > v9 * v2);
          v7 = (v9 * v2) >> 64;
        }
      }

      v10 = v4 + v7;
      if (__OFADD__(v4, v7))
      {
        break;
      }

      if (v4 != v10)
      {
        v11 = *v1->clientIdentity;
        if (v4 >= v11)
        {
          goto LABEL_19;
        }

        if (v10 >= v11)
        {
          goto LABEL_20;
        }

        v12 = *&v1->clientIdentity[8 * v4 + 16];
        v13 = *&v1->clientIdentity[8 * v10 + 16];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1004364A0(v1);
        }

        v14 = *v1->clientIdentity;
        if (v4 >= v14)
        {
          goto LABEL_21;
        }

        *&v1->clientIdentity[8 * v4 + 16] = v13;
        if (v10 >= v14)
        {
          goto LABEL_22;
        }

        *&v1->clientIdentity[8 * v10 + 16] = v12;
        *v15 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_1002EBA94(void *a1)
{
  v168 = type metadata accessor for REMSuggestedLocation.LocationValue();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168, v2);
  v166 = &v143[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v159 = type metadata accessor for Calendar();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159, v4);
  v157 = &v143[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v162 = type metadata accessor for DateComponents();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162, v6);
  v160 = &v143[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v164 = &v143[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11, v12);
  v173 = &v143[-v13];
  __chkstk_darwin(v14, v15);
  v17 = &v143[-v16];
  v18 = type metadata accessor for Date();
  v175 = *(v18 - 8);
  v176 = v18;
  __chkstk_darwin(v18, v19);
  v169 = &v143[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21, v22);
  v174 = &v143[-v23];
  v24 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v24 - 8, v25);
  v163 = &v143[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27, v28);
  v30 = &v143[-v29];
  __chkstk_darwin(v31, v32);
  v34 = &v143[-v33];
  v35 = type metadata accessor for UUID();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35, v37);
  v171 = &v143[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v39, v40);
  v165 = &v143[-v41];
  __chkstk_darwin(v42, v43);
  v172 = &v143[-v44];
  __chkstk_darwin(v45, v46);
  v184 = &v143[-v47];
  *&v180 = 0x696669746E656469;
  *(&v180 + 1) = 0xEA00000000007265;
  v48 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v177 = a1;
  v49 = [a1 __swift_objectForKeyedSubscript:v48];
  swift_unknownObjectRelease();
  if (v49)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v180 = 0u;
    v181 = 0u;
  }

  v182 = v180;
  v183 = v181;
  if (!*(&v181 + 1))
  {
    sub_1000050A4(&v182, &qword_100939ED0, &qword_100791B10);
    (*(v36 + 56))(v34, 1, 1, v35);
    goto LABEL_9;
  }

  v155 = v30;
  v50 = swift_dynamicCast();
  v156 = *(v36 + 56);
  v156(v34, v50 ^ 1u, 1, v35);
  v51 = *(v36 + 48);
  if (v51(v34, 1, v35) == 1)
  {
LABEL_9:
    sub_1000050A4(v34, &unk_100939D90, "8\n\r");
    v54 = objc_opt_self();
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v56 = String._bridgeToObjectiveC()();
    [v54 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v56];

    swift_willThrow();
    return ObjCClassFromMetadata;
  }

  v153 = v36;
  v52 = *(v36 + 32);
  v154 = v35;
  v152 = v52;
  (v52)(v184, v34);
  strcpy(&v180, "creationDate");
  BYTE13(v180) = 0;
  HIWORD(v180) = -5120;
  v53 = [v177 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v53)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v180 = 0u;
    v181 = 0u;
  }

  v57 = v176;
  v182 = v180;
  v183 = v181;
  if (!*(&v181 + 1))
  {
    sub_1000050A4(&v182, &qword_100939ED0, &qword_100791B10);
    (*(v175 + 56))(v17, 1, 1, v57);
    goto LABEL_16;
  }

  v58 = swift_dynamicCast();
  v59 = v175;
  v60 = *(v175 + 56);
  v149 = v175 + 56;
  v148 = v60;
  v60(v17, v58 ^ 1u, 1, v57);
  v61 = *(v59 + 48);
  v151 = v59 + 48;
  v150 = v61;
  if (v61(v17, 1, v57) == 1)
  {
LABEL_16:
    sub_1000050A4(v17, &unk_100938850, qword_100795AE0);
    v63 = objc_opt_self();
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v64 = String._bridgeToObjectiveC()();
    [v63 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v64];

    swift_willThrow();
    (*(v153 + 8))(v184, v154);
    return ObjCClassFromMetadata;
  }

  (*(v59 + 32))(v174, v17, v57);
  *&v180 = 0x6564692E7473696CLL;
  *(&v180 + 1) = 0xEF7265696669746ELL;
  v62 = [v177 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v62)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v180 = 0u;
    v181 = 0u;
  }

  v65 = v156;
  v66 = v155;
  v182 = v180;
  v183 = v181;
  if (!*(&v181 + 1))
  {
    sub_1000050A4(&v182, &qword_100939ED0, &qword_100791B10);
    v67 = v154;
    v65(v66, 1, 1, v154);
    goto LABEL_23;
  }

  v67 = v154;
  v68 = swift_dynamicCast();
  v65(v66, v68 ^ 1u, 1, v67);
  if (v51(v66, 1, v67) == 1)
  {
LABEL_23:
    sub_1000050A4(v66, &unk_100939D90, "8\n\r");
    v71 = objc_opt_self();
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v72 = String._bridgeToObjectiveC()();
    [v71 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v72];

    swift_willThrow();
    (*(v175 + 8))(v174, v176);
    (*(v153 + 8))(v184, v67);
    return ObjCClassFromMetadata;
  }

  v152(v172, v66, v67);
  *&v180 = 0x656C746974;
  *(&v180 + 1) = 0xE500000000000000;
  v69 = [v177 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  v70 = v153;
  if (v69)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v180 = 0u;
    v181 = 0u;
  }

  v74 = v176;
  v182 = v180;
  v183 = v181;
  v75 = v154;
  if (*(&v181 + 1))
  {
    if (swift_dynamicCast())
    {
      v76 = v179;
      v152 = v178;
      goto LABEL_31;
    }
  }

  else
  {
    sub_1000050A4(&v182, &qword_100939ED0, &qword_100791B10);
  }

  v152 = 0;
  v76 = 0xE000000000000000;
LABEL_31:
  v147 = v76;
  type metadata accessor for REMSuggestedList();
  v77 = *(v70 + 16);
  v78 = v163;
  v156 = (v70 + 16);
  v155 = v77;
  v77(v163, v172, v75);
  v65(v78, 0, 1, v75);
  v163 = REMSuggestedList.__allocating_init(listUUID:)();
  *&v180 = 0x6D616E2E7473696CLL;
  *(&v180 + 1) = 0xE900000000000065;
  v79 = &selRef_setPublicLinkLastModifiedDate_;
  v80 = [v177 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v80)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v180 = 0u;
    v181 = 0u;
  }

  v81 = v164;
  v182 = v180;
  v183 = v181;
  if (*(&v181 + 1))
  {
    if (swift_dynamicCast())
    {
      v82 = v179;
      v146 = v178;
      goto LABEL_39;
    }
  }

  else
  {
    sub_1000050A4(&v182, &qword_100939ED0, &qword_100791B10);
  }

  v146 = 0;
  v82 = 0xE000000000000000;
LABEL_39:
  v145 = v82;
  *&v182 = 0x64656767616C66;
  *(&v182 + 1) = 0xE700000000000000;
  v83 = [v177 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v83)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v180 = 0u;
    v181 = 0u;
  }

  v182 = v180;
  v183 = v181;
  if (*(&v181 + 1))
  {
    if (swift_dynamicCast())
    {
      v144 = v178 != 0;
      goto LABEL_47;
    }
  }

  else
  {
    sub_1000050A4(&v182, &qword_100939ED0, &qword_100791B10);
  }

  v144 = 0;
LABEL_47:
  *&v182 = 0x797469726F697270;
  *(&v182 + 1) = 0xE800000000000000;
  v84 = [v177 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v84)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v180 = 0u;
    v181 = 0u;
  }

  v182 = v180;
  v183 = v181;
  if (*(&v181 + 1))
  {
    if (swift_dynamicCast())
    {
      v85 = v178;
      goto LABEL_55;
    }
  }

  else
  {
    sub_1000050A4(&v182, &qword_100939ED0, &qword_100791B10);
  }

  v85 = 0;
LABEL_55:
  *&v180 = 0x65746144657564;
  *(&v180 + 1) = 0xE700000000000000;
  v86 = [v177 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v86)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v180 = 0u;
    v181 = 0u;
  }

  v182 = v180;
  v183 = v181;
  if (*(&v181 + 1))
  {
    v87 = v173;
    v88 = swift_dynamicCast() ^ 1;
    v89 = v87;
    v79 = &selRef_setPublicLinkLastModifiedDate_;
  }

  else
  {
    sub_1000050A4(&v182, &qword_100939ED0, &qword_100791B10);
    v89 = v173;
    v88 = 1;
  }

  v148(v89, v88, 1, v74);
  *&v182 = 0x7961446C6C61;
  *(&v182 + 1) = 0xE600000000000000;
  v90 = [v177 v79[19]];
  swift_unknownObjectRelease();
  if (v90)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v180 = 0u;
    v181 = 0u;
  }

  v182 = v180;
  v183 = v181;
  if (*(&v181 + 1))
  {
    if (swift_dynamicCast())
    {
      v91 = v178;
      goto LABEL_69;
    }
  }

  else
  {
    sub_1000050A4(&v182, &qword_100939ED0, &qword_100791B10);
  }

  v91 = 0;
LABEL_69:
  *&v182 = 0x656E6F5A656D6974;
  *(&v182 + 1) = 0xE800000000000000;
  v92 = [v177 v79[19]];
  swift_unknownObjectRelease();
  if (v92)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v180 = 0u;
    v181 = 0u;
  }

  v164 = v85;
  v182 = v180;
  v183 = v181;
  if (*(&v181 + 1))
  {
    if (swift_dynamicCast())
    {
      v93 = v179;
    }

    else
    {
      v93 = 0;
    }
  }

  else
  {
    sub_1000050A4(&v182, &qword_100939ED0, &qword_100791B10);
    v93 = 0;
  }

  sub_100010364(v173, v81, &unk_100938850, qword_100795AE0);
  v94 = v176;
  if (v150(v81, 1, v176) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v175 + 8))(v81, v94);
  }

  v96 = v165;
  if (v93)
  {
    v97 = String._bridgeToObjectiveC()();
    v93, v98, v99, v100, v101, v102, v103, v104;
  }

  else
  {
    v97 = 0;
  }

  v105 = v175;
  v106 = v169;
  v107 = [objc_opt_self() dueDateComponentsWithDueDate:isa isAllDay:v91 timeZoneName:v97];

  if (v107)
  {
    v108 = v160;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v109 = v157;
    static Calendar.current.getter();
    DateComponents.dayOfWeek(with:)();
    v111 = v110;
    (*(v158 + 8))(v109, v159);
    if (v111)
    {
      type metadata accessor for REMSuggestedWeekDay();
      static REMSuggestedWeekDay.nilValue.getter();
    }

    type metadata accessor for REMSuggestedWeekDay();
    swift_allocObject();
    v112 = REMSuggestedWeekDay.init(_:)();
    (v161[1])(v108, v162);
  }

  else
  {
    type metadata accessor for REMSuggestedWeekDay();
    static REMSuggestedWeekDay.nilValue.getter();
    swift_allocObject();
    v112 = REMSuggestedWeekDay.init(_:)();
  }

  type metadata accessor for ClassificationLabel();
  v162 = v112;

  static ClassificationLabel.nilLabel.getter();
  type metadata accessor for REMSuggestedContact();
  swift_allocObject();
  v165 = REMSuggestedContact.init(stringLiteral:)();
  strcpy(&v180, "contactHandles");
  HIBYTE(v180) = -18;
  v113 = [v177 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v113)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v180 = 0u;
    v181 = 0u;
  }

  v114 = v154;
  v115 = v171;
  v182 = v180;
  v183 = v181;
  if (!*(&v181 + 1))
  {
    v96 = v106;
    sub_1000050A4(&v182, &qword_100939ED0, &qword_100791B10);
    goto LABEL_106;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v96 = v106;
    goto LABEL_106;
  }

  v117 = v178;
  v116 = v179;
  sub_100029344(v178, v179);
  v118 = Data._bridgeToObjectiveC()().super.isa;
  v119 = [objc_opt_self() representationFromData:v118];

  sub_10001BBA0(v117, v116);
  if (!v119)
  {
    v96 = v106;
    sub_10001BBA0(v117, v116);
LABEL_102:
    v114 = v154;
    goto LABEL_105;
  }

  swift_allocObject();
  v120 = v119;
  v121 = v170;
  v122 = REMSuggestedContact.init(_:)();
  if (!v121)
  {
    v138 = v122;
    v96 = v106;

    sub_10001BBA0(v117, v116);

    v165 = v138;
    goto LABEL_102;
  }

  v177 = v120;
  v170 = v121;
  if (qword_100935E70 != -1)
  {
    goto LABEL_109;
  }

  while (1)
  {
    v123 = type metadata accessor for Logger();
    sub_100006654(v123, qword_1009411C0);
    v114 = v154;
    v155(v96, v184, v154);
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *&v182 = v161;
      *v126 = 136315138;
      sub_1002F05EC(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v127 = dispatch thunk of CustomStringConvertible.description.getter();
      v129 = v128;
      (*(v153 + 8))(v96, v114);
      v130 = sub_10000668C(v127, v129, &v182);
      v129, v131, v132, v133, v134, v135, v136, v137;
      *(v126 + 4) = v130;
      _os_log_impl(&_mh_execute_header, v124, v125, "Invalid REMContactRepresentation when initializing REMSuggestedContact {reminderIdentifier: %s}", v126, 0xCu);
      sub_10000607C(v161);

      sub_10001BBA0(v117, v116);
    }

    else
    {
      sub_10001BBA0(v117, v116);

      (*(v153 + 8))(v96, v114);
    }

    v105 = v175;
    v96 = v169;
LABEL_105:
    v115 = v171;
LABEL_106:
    v155(v115, v184, v114);
    v139 = v105;
    v140 = *(v105 + 16);
    v141 = v174;
    v117 = v176;
    v140(v96, v174, v176);
    type metadata accessor for REMSuggestedLocation();
    v116 = v166;
    (*(v167 + 104))(v166, enum case for REMSuggestedLocation.LocationValue.notAvailable(_:), v168);
    REMSuggestedLocation.__allocating_init(_:)();
    if ((v164 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_109:
    swift_once();
  }

  type metadata accessor for REMSuggestedAttributeReminderDataSource();
  swift_allocObject();
  ObjCClassFromMetadata = REMSuggestedAttributeReminderDataSource.init(title:reminderIdentifier:creationDate:list:listName:dueDayOfWeek:location:flagged:priority:tags:contact:recurrences:)();

  v142 = *(v153 + 8);
  v142(v172, v114);
  (*(v139 + 8))(v141, v117);
  v142(v184, v114);
  sub_1000050A4(v173, &unk_100938850, qword_100795AE0);
  return ObjCClassFromMetadata;
}

void sub_1002ED45C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v224 = &v209 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *&v8[-1].shareRecordIDToRootRecordIDLock[2];
  __chkstk_darwin(v8, v10);
  v226 = &v209 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s10PredicatesOMa(0);
  __chkstk_darwin(v12, v12);
  v14 = &v209 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v15 = sub_100043AA8();
  sub_1002F06F8(v14, _s10PredicatesOMa);
  v16 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v17 = [swift_getObjCClassFromMetadata() entity];
  [v16 setEntity:v17];

  [v16 setAffectedStores:0];
  [v16 setPredicate:v15];
  [v16 setResultType:2];

  [v16 setFetchBatchSize:a1];
  v18 = (a1 * 5) >> 64;
  v211 = a1;
  if (v18 != (5 * a1) >> 63)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    sub_100026EF4((v18 > 1), v9, 1);
    v20 = v236;
    goto LABEL_8;
  }

  v230 = a2;
  v231 = v2;
  [v16 setFetchLimit:?];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  *&v236 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, 1, 0);
  v20 = v236;
  v225 = v8;
  v219 = v16;
  v223 = v9;
  if ((inited & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v9 = *(inited + 32);
  }

  v21 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v22)
  {
    goto LABEL_149;
  }

  v16 = v21;
  v8 = v22;

  a1 = *(v20 + 16);
  v18 = *(v20 + 24);
  v9 = a1 + 1;
  if (a1 >= v18 >> 1)
  {
    goto LABEL_142;
  }

LABEL_8:
  *(v20 + 16) = v9;
  v23 = v20 + 16 * a1;
  *(v23 + 32) = v16;
  *(v23 + 40) = v8;
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = v219;
  [(RDXPCStorePerformer *)v219 setRelationshipKeyPathsForPrefetching:isa];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100796900;
  if (qword_100936050 != -1)
  {
    swift_once();
  }

  v26 = qword_100974E00;
  *(v25 + 32) = qword_100974E00;
  v27 = qword_100936060;
  v28 = v26;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = qword_100974E10;
  *(v25 + 40) = qword_100974E10;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v30 = v29;
  v31 = Array._bridgeToObjectiveC()().super.isa;
  v25, v32, v33, v34, v35, v36, v37, v38;
  [(RDXPCStorePerformer *)v8 setSortDescriptors:v31];

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007A0AF0;
  *(v39 + 32) = swift_getKeyPath();
  v229 = v39 + 32;
  *(v39 + 40) = swift_getKeyPath();
  *(v39 + 48) = swift_getKeyPath();
  *(v39 + 56) = swift_getKeyPath();
  *(v39 + 64) = swift_getKeyPath();
  *(v39 + 72) = swift_getKeyPath();
  *(v39 + 80) = swift_getKeyPath();
  *(v39 + 88) = swift_getKeyPath();
  *(v39 + 96) = swift_getKeyPath();
  *(v39 + 104) = swift_getKeyPath();
  *(v39 + 112) = swift_getKeyPath();
  *(v39 + 120) = swift_getKeyPath();
  *&v236 = &_swiftEmptyArrayStorage;
  sub_100010D04(0, 12, 0);
  v40 = 0;
  v41 = v236;
  a1 = v39 & 0xC000000000000001;
  v9 = v39 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (a1)
    {
      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v40 >= v18)
      {
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      v42 = *(v39 + 8 * v40 + 32);
    }

    v43 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v44)
    {
      *&v232 = 0;
      *(&v232 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v207._object = 0x80000001007EC120;
      v207._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v207);
      v234 = v42;
      goto LABEL_147;
    }

    v45 = v43;
    v46 = v44;
    *(&v233 + 1) = &type metadata for String;

    *&v232 = v45;
    *(&v232 + 1) = v46;
    *&v236 = v41;
    v16 = *(v41 + 16);
    v47 = *(v41 + 24);
    v8 = (v16 + 1);
    if (v16 >= v47 >> 1)
    {
      sub_100010D04((v47 > 1), v16 + 1, 1);
      v41 = v236;
    }

    ++v40;
    *(v41 + 16) = v8;
    sub_100005EE0(&v232, (v41 + 32 * v16 + 32));
  }

  while (v40 != 12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v48 = Array._bridgeToObjectiveC()().super.isa;

  v49 = v219;
  [(RDXPCStorePerformer *)v219 setPropertiesToFetch:v48];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v50 = v231;
  v51 = NSManagedObjectContext.fetch<A>(_:)();
  if (v50)
  {

    return;
  }

  v16 = v51;
  v213 = 0;
  v238 = &_swiftEmptyArrayStorage;
  if (!(v51 >> 62))
  {
    v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_25;
  }

LABEL_145:
  v53 = _CocoaArrayWrapper.endIndex.getter();
LABEL_25:
  a1 = v224;
  v9 = v225;
  if (v53)
  {
    v54 = 0;
    v229 = v16 & 0xC000000000000001;
    v218 = v16 & 0xFFFFFFFFFFFFFF8;
    v217 = (v16 + 32);
    v228 = (v223 + 56);
    v222 = (v223 + 48);
    v215 = (v223 + 32);
    v214 = (v223 + 8);
    v210 = &_swiftEmptyArrayStorage;
    v216 = _swiftEmptySetSingleton;
    *&v52 = 136446466;
    v220 = v52;
    *&v52 = 136315138;
    v209 = v52;
    v221 = v16;
    v227 = v53;
    while (1)
    {
      if (v229)
      {
        v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v218 + 16);
        if (v54 >= v18)
        {
          goto LABEL_140;
        }

        v66 = *&v217[8 * v54];
      }

      v67 = v66;
      v68 = __OFADD__(v54++, 1);
      if (v68)
      {
        goto LABEL_139;
      }

      *&v236 = 0x6564692E7473696CLL;
      *(&v236 + 1) = 0xEF7265696669746ELL;
      v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v69 = [v67 __swift_objectForKeyedSubscript:v8];
      swift_unknownObjectRelease();
      if (v69)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v236 = 0u;
        v237 = 0u;
      }

      v232 = v236;
      v233 = v237;
      if (!*(&v237 + 1))
      {
        break;
      }

      v70 = swift_dynamicCast();
      (*v228)(a1, v70 ^ 1u, 1, v9);
      if ((*v222)(a1, 1, v9) == 1)
      {
LABEL_43:
        sub_1000050A4(a1, &unk_100939D90, "8\n\r");
        if (qword_100935E70 != -1)
        {
          swift_once();
        }

        v72 = type metadata accessor for Logger();
        sub_100006654(v72, qword_1009411C0);
        v73 = v67;
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v74, v75))
        {

          goto LABEL_132;
        }

        v76 = swift_slowAlloc();
        *&v236 = swift_slowAlloc();
        *v76 = v220;
        *(v76 + 4) = sub_10000668C(0x6564692E7473696CLL, 0xEF7265696669746ELL, &v236);
        *(v76 + 12) = 2082;
        *&v232 = 0x6564692E7473696CLL;
        *(&v232 + 1) = 0xEF7265696669746ELL;
        v77 = [v73 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        v223 = v54;
        if (v77)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v232 = 0u;
          v233 = 0u;
        }

        sub_1000F5104(&qword_100939ED0, &qword_100791B10);
        v55 = Optional.descriptionOrNil.getter();
        v8 = v56;
        sub_1000050A4(&v232, &qword_100939ED0, &qword_100791B10);
        v57 = sub_10000668C(v55, v8, &v236);
        v8, v58, v59, v60, v61, v62, v63, v64;
        *(v76 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v74, v75, "Unexpected nil %{public}s in fetched reminder dictionary {value: %{public}s}", v76, 0x16u);
        swift_arrayDestroy();

        v9 = v225;
        v16 = v221;
        v65 = v227;
        v54 = v223;
LABEL_29:
        a1 = v224;
        if (v54 == v65)
        {
          goto LABEL_136;
        }
      }

      else
      {
        (*v215)(v226, a1, v9);
        *&v236 = 0x656C746974;
        *(&v236 + 1) = 0xE500000000000000;
        v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v71 = [v67 __swift_objectForKeyedSubscript:v8];
        swift_unknownObjectRelease();
        if (v71)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v236 = 0u;
          v237 = 0u;
        }

        v232 = v236;
        v233 = v237;
        if (!*(&v237 + 1))
        {
          sub_1000050A4(&v232, &qword_100939ED0, &qword_100791B10);
LABEL_70:
          if (qword_100935E70 != -1)
          {
            swift_once();
          }

          v109 = type metadata accessor for Logger();
          sub_100006654(v109, qword_1009411C0);
          v110 = v67;
          v111 = Logger.logObject.getter();
          v112 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v111, v112))
          {

            (*v214)(v226, v9);
            goto LABEL_132;
          }

          v113 = swift_slowAlloc();
          v231 = swift_slowAlloc();
          *&v236 = v231;
          *v113 = v220;
          *(v113 + 4) = sub_10000668C(0x656C746974, 0xE500000000000000, &v236);
          *(v113 + 12) = 2080;
          *&v232 = 0x656C746974;
          *(&v232 + 1) = 0xE500000000000000;
          v114 = [v110 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();
          if (v114)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v232 = 0u;
            v233 = 0u;
          }

          sub_1000F5104(&qword_100939ED0, &qword_100791B10);
          v142 = Optional.descriptionOrNil.getter();
          v8 = v143;
          sub_1000050A4(&v232, &qword_100939ED0, &qword_100791B10);
          v144 = sub_10000668C(v142, v8, &v236);
          v8, v145, v146, v147, v148, v149, v150, v151;
          *(v113 + 14) = v144;
          _os_log_impl(&_mh_execute_header, v111, v112, "Unexpected nil %{public}s in fetched reminder dictionary {value: %s}", v113, 0x16u);
          swift_arrayDestroy();

          v9 = v225;
          (*v214)(v226, v225);
          v16 = v221;
          v65 = v227;
          goto LABEL_29;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_70;
        }

        v212 = v67;
        v79 = v234;
        v78 = v235;
        v16 = UUID.uuidString.getter();
        v81 = v80;
        v82 = v216;
        v83 = *v216->clientIdentity;
        v231 = v78;
        v230 = v79;
        if (v83)
        {
          Hasher.init(_seed:)();
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          v84 = Hasher._finalize()();
          v85 = &v82->clientIdentity[40];
          v86 = -1 << v82->clientIdentity[16];
          v87 = v84 & ~v86;
          if ((*&v82->clientIdentity[((v87 >> 3) & 0xFFFFFFFFFFFFFF8) + 40] >> v87))
          {
            v88 = ~v86;
            v89 = *&v82->clientIdentity[32];
            while (1)
            {
              v90 = (v89 + 32 * v87);
              v91 = v90[1];
              if (v91)
              {
                v8 = v90[2];
                v92 = v90[3];
                v93 = *v90 == v16 && v91 == v81;
                if (v93 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  if (v92)
                  {
                    v94 = v8 == v230 && v92 == v231;
                    if (v94 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {
                      break;
                    }
                  }
                }
              }

              v87 = (v87 + 1) & v88;
              if (((*&v85[(v87 >> 3) & 0xFFFFFFFFFFFFFF8] >> v87) & 1) == 0)
              {
                goto LABEL_76;
              }
            }

            v9 = v225;
            (*v214)(v226, v225);
            v231, v95, v96, v97, v98, v99, v100, v101;
            v81, v102, v103, v104, v105, v106, v107, v108;

            a1 = v224;
            goto LABEL_131;
          }
        }

LABEL_76:
        v8 = v216;
        Hasher.init(_seed:)();
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        v115 = Hasher._finalize()();
        v122 = &v8->clientIdentity[40];
        v123 = -1 << v8->clientIdentity[16];
        v124 = v115 & ~v123;
        if ((*&v8->clientIdentity[((v124 >> 3) & 0xFFFFFFFFFFFFFF8) + 40] >> v124))
        {
          v125 = ~v123;
          v126 = *&v8->clientIdentity[32];
          while (1)
          {
            v127 = (v126 + 32 * v124);
            v128 = v127[1];
            if (v128)
            {
              v8 = v127[2];
              v129 = v127[3];
              v130 = *v127 == v16 && v128 == v81;
              if (v130 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                if (v129)
                {
                  v131 = v8 == v230 && v129 == v231;
                  if (v131 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }
                }
              }
            }

            v124 = (v124 + 1) & v125;
            if (((*&v122[(v124 >> 3) & 0xFFFFFFFFFFFFFF8] >> v124) & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          v231, v128, v116, v117, v118, v119, v120, v121;
          v81, v132, v133, v134, v135, v136, v137, v138;
        }

        else
        {
LABEL_92:
          v139 = v216;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v236 = v139;
          v141 = *v139->clientIdentity;
          if (*&v139->clientIdentity[8] <= v141)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_100381450(v141 + 1);
            }

            else
            {
              sub_10038BF00(v141 + 1);
            }

            v8 = v236;
            Hasher.init(_seed:)();
            Hasher._combine(_:)(1u);
            String.hash(into:)();
            Hasher._combine(_:)(1u);
            String.hash(into:)();
            v152 = Hasher._finalize()();
            v153 = &v8->clientIdentity[40];
            v154 = -1 << v8->clientIdentity[16];
            v124 = v152 & ~v154;
            if ((*&v8->clientIdentity[((v124 >> 3) & 0xFFFFFFFFFFFFFF8) + 40] >> v124))
            {
              v155 = ~v154;
              v9 = *&v8->clientIdentity[32];
              do
              {
                v156 = (v9 + 32 * v124);
                v157 = v156[1];
                if (v157)
                {
                  v8 = v156[2];
                  v158 = v156[3];
                  v159 = *v156 == v16 && v157 == v81;
                  if (v159 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    if (v158)
                    {
                      v160 = v8 == v230 && v158 == v231;
                      if (v160 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {
                        while (1)
                        {
                          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                          __break(1u);
LABEL_149:
                          *&v232 = 0;
                          *(&v232 + 1) = 0xE000000000000000;
                          _StringGuts.grow(_:)(46);
                          v208._object = 0x80000001007EC120;
                          v208._countAndFlagsBits = 0xD00000000000002CLL;
                          String.append(_:)(v208);
                          v234 = v9;
LABEL_147:
                          sub_1000F5104(&unk_100939F10, &qword_100797F30);
                          _print_unlocked<A, B>(_:_:)();
                          _assertionFailure(_:_:file:line:flags:)();
                          __break(1u);
                        }
                      }
                    }
                  }
                }

                v124 = (v124 + 1) & v155;
              }

              while (((*&v153[(v124 >> 3) & 0xFFFFFFFFFFFFFF8] >> v124) & 1) != 0);
            }
          }

          else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10019ABF4();
          }

          v161 = v236;
          *(v236 + ((v124 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v124;
          v162 = (*(v161 + 48) + 32 * v124);
          *v162 = v16;
          v162[1] = v81;
          v163 = v231;
          v162[2] = v230;
          v162[3] = v163;
          v164 = *(v161 + 16);
          v68 = __OFADD__(v164, 1);
          v165 = v164 + 1;
          if (v68)
          {
            __break(1u);
            goto LABEL_144;
          }

          v216 = v161;
          *(v161 + 16) = v165;
        }

        v166 = v212;
        v167 = v213;
        v168 = sub_1002EBA94(v212);
        if (v167)
        {
          a1 = v224;
          v9 = v225;
          if (qword_100935E70 != -1)
          {
            swift_once();
          }

          v213 = 0;
          v169 = type metadata accessor for Logger();
          sub_100006654(v169, qword_1009411C0);
          swift_errorRetain();
          v170 = Logger.logObject.getter();
          v171 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v170, v171))
          {
            v172 = swift_slowAlloc();
            v8 = swift_slowAlloc();
            *&v232 = v8;
            *v172 = v209;
            swift_getErrorValue();
            v173 = Error.rem_errorDescription.getter();
            v175 = v174;
            v176 = sub_10000668C(v173, v174, &v232);
            v231 = v167;
            v177 = v176;
            v175, v178, v179, v180, v181, v182, v183, v184;
            *(v172 + 4) = v177;
            _os_log_impl(&_mh_execute_header, v170, v171, "failed to convert fetched reminder dictionary {error: %s}", v172, 0xCu);
            sub_10000607C(v8);

            v9 = v225;
          }

          else
          {
          }

          (*v214)(v226, v9);
LABEL_131:
          v16 = v221;
          goto LABEL_132;
        }

        v213 = 0;
        a1 = v224;
        v9 = v225;
        v16 = v221;
        v8 = v168;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v238 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v238 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          a1 = v224;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v210 = v238;
        if (v238 >> 62)
        {
          v185 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v185 = *((v238 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        (*v214)(v226, v9);
        if (v185 >= v211)
        {
          v216, v186, v187, v188, v189, v190, v191, v192;

          goto LABEL_137;
        }

LABEL_132:
        if (v54 == v227)
        {
          goto LABEL_136;
        }
      }
    }

    sub_1000050A4(&v232, &qword_100939ED0, &qword_100791B10);
    (*v228)(a1, 1, 1, v9);
    goto LABEL_43;
  }

  v216 = _swiftEmptySetSingleton;
  v210 = &_swiftEmptyArrayStorage;
LABEL_136:

  v16, v193, v194, v195, v196, v197, v198, v199;
  v16 = v216;
LABEL_137:
  v16, v200, v201, v202, v203, v204, v205, v206;
}

uint64_t sub_1002EED40(void *a1)
{
  v2 = type metadata accessor for REMSuggestedLocation.LocationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  strcpy(&v45, "contactLabel");
  BYTE13(v45) = 0;
  HIWORD(v45) = -5120;
  v7 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45 = v43;
  v46 = v44;
  if (*(&v44 + 1))
  {
    v8 = swift_dynamicCast();
    v9 = v41;
    if (!v8)
    {
      v9 = 0;
    }

    v40 = v9;
    if (v8)
    {
      v10 = v42;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_1000050A4(&v45, &qword_100939ED0, &qword_100791B10);
    v40 = 0;
    v10 = 0;
  }

  *&v45 = 0x656C746974;
  *(&v45 + 1) = 0xE500000000000000;
  v11 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45 = v43;
  v46 = v44;
  if (*(&v44 + 1))
  {
    if (swift_dynamicCast())
    {
      v12 = v42;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    sub_1000050A4(&v45, &qword_100939ED0, &qword_100791B10);
    v12 = 0;
  }

  *&v43 = 0x74696D69786F7270;
  *(&v43 + 1) = 0xE900000000000079;
  v13 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45 = v43;
  v46 = v44;
  if (*(&v44 + 1))
  {
    if (swift_dynamicCast())
    {
      v21 = v41;
      if (!v10)
      {
        goto LABEL_25;
      }

LABEL_29:
      v12, v14, v15, v16, v17, v18, v19, v20;
      v12 = v10;
      goto LABEL_30;
    }
  }

  else
  {
    sub_1000050A4(&v45, &qword_100939ED0, &qword_100791B10);
  }

  v21 = 0;
  if (v10)
  {
    goto LABEL_29;
  }

LABEL_25:
  if (!v12)
  {
    type metadata accessor for REMSuggestedLocation();
    v22 = &enum case for REMSuggestedLocation.LocationValue.notAvailable(_:);
    goto LABEL_35;
  }

LABEL_30:
  if (String.containsNameOfHomeLocation.getter())
  {
    v12, v23, v24, v25, v26, v27, v28, v29;
    type metadata accessor for REMSuggestedLocation();
    *v6 = v21;
    v22 = &enum case for REMSuggestedLocation.LocationValue.home(_:);
  }

  else
  {
    v30 = String.containsNameOfWorkLocation.getter();
    v12, v31, v32, v33, v34, v35, v36, v37;
    type metadata accessor for REMSuggestedLocation();
    if (v30)
    {
      *v6 = v21;
      v22 = &enum case for REMSuggestedLocation.LocationValue.work(_:);
    }

    else
    {
      v22 = &enum case for REMSuggestedLocation.LocationValue.other(_:);
    }
  }

LABEL_35:
  (*(v3 + 104))(v6, *v22, v2);
  return REMSuggestedLocation.__allocating_init(_:)();
}

void sub_1002EF15C(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v366 = type metadata accessor for REMSuggestedLocation.LocationValue();
  v354 = *(v366 - 8);
  __chkstk_darwin(v366, v6);
  v367 = &v334[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8, v9);
  v362 = &v334[-v10];
  __chkstk_darwin(v11, v12);
  v357 = &v334[-v13];
  v14 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v14 - 8, v15);
  v17 = &v334[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18, v19);
  v359 = &v334[-v20];
  __chkstk_darwin(v21, v22);
  v24 = &v334[-v23];
  __chkstk_darwin(v25, v26);
  v361 = &v334[-v27];
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  v369 = v28;
  v370 = v29;
  __chkstk_darwin(v28, v30);
  v365 = &v334[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32, v33);
  v35 = &v334[-v34];
  v355 = a1 >> 62;
  if (a1 >> 62)
  {
    v36 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = &_swiftEmptyArrayStorage;
  v360 = v17;
  v358 = v24;
  if (v36)
  {
    *&v375[0] = &_swiftEmptyArrayStorage;
    sub_100253258(0, v36 & ~(v36 >> 63), 0);
    if (v36 < 0)
    {
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v363 = v2;
    v364 = a2;
    v38 = 0;
    v37 = *&v375[0];
    v368 = a1 & 0xC000000000000001;
    do
    {
      if (v368)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      dispatch thunk of REMSuggestedAttributeReminderDataSource.reminderIdentifier.getter();

      *&v375[0] = v37;
      v40 = *v37->clientIdentity;
      v39 = *&v37->clientIdentity[8];
      if (v40 >= v39 >> 1)
      {
        sub_100253258((v39 > 1), v40 + 1, 1);
        v37 = *&v375[0];
      }

      ++v38;
      *v37->clientIdentity = v40 + 1;
      (*(v370 + 32))(v37 + ((*(v370 + 80) + 32) & ~*(v370 + 80)) + *(v370 + 72) * v40, v35, v369);
    }

    while (v36 != v38);
    v3 = v363;
    a2 = v364;
  }

  v41 = sub_1003FC96C(v37);
  if (v3)
  {
    v37, v42, v43, v44, v45, v46, v47, v48;
    return;
  }

  v49 = v41;
  v356 = a1;
  v50 = a2;

  v52 = sub_1001A59A4(v51);
  v37, v53, v54, v55, v56, v57, v58, v59;
  *&v375[0] = v49;

  sub_1000F5104(&qword_1009412A0, &unk_1007A0B90);
  sub_10000CB48(&qword_1009412A8, &qword_1009412A0, &unk_1007A0B90, &protocol conformance descriptor for [A : B].Keys);
  sub_1002F05EC(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v60 = Sequence.compactMapToSet<A>(_:)();
  v49, v61, v62, v63, v64, v65, v66, v67;
  if (*(v60 + 16) <= *(v52 + 16) >> 3)
  {
    goto LABEL_19;
  }

  v68 = sub_10019CB14(v60, v52);
  v60, v69, v70, v71, v72, v73, v74, v75;
  v52 = *(v68 + 2);
  if (v52)
  {
    while (1)
    {
      v83 = sub_100368A1C(v52, 0);
      sub_1002799DC(v375, v83 + ((*(v370 + 80) + 32) & ~*(v370 + 80)), v52, v68);
      v85 = v84;
      sub_10001B860(*&v375[0]);
      if (v85 == v52)
      {
        break;
      }

      __break(1u);
LABEL_19:
      *&v375[0] = v52;
      sub_10019BC20(v60);
      v60, v86, v87, v88, v89, v90, v91, v92;
      v68 = *&v375[0];
      v52 = *(*&v375[0] + 16);
      if (!v52)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    v68, v76, v77, v78, v79, v80, v81, v82;
    v83 = &_swiftEmptyArrayStorage;
  }

  v93 = v50;
  v94 = sub_1003FD108(v83);
  v95 = v356;
  v352 = v94;

  v345 = sub_100348948(v37, v93);
  v96 = 0;
  v343 = sub_10047DEDC(v37, v93);
  v37, v97, v98, v99, v100, v101, v102, v103;
  if (v355)
  {
    v111 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v111 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v111)
  {
LABEL_112:
    v345, v104, v105, v106, v107, v108, v109, v110;
    v343, v278, v279, v280, v281, v282, v283, v284;
    v49, v285, v286, v287, v288, v289, v290, v291;
    v352, v292, v293, v294, v295, v296, v297, v298;

    return;
  }

  v112 = 0;
  v341 = v95 & 0xC000000000000001;
  v337 = v95 & 0xFFFFFFFFFFFFFF8;
  v336 = v95 + 32;
  v347 = (v370 + 16);
  v351 = (v370 + 56);
  v335 = enum case for REMSuggestedLocation.LocationValue.vehicle(_:);
  v113 = (v354 + 13);
  LODWORD(v355) = enum case for REMSuggestedLocation.LocationValue.notAvailable(_:);
  ++v354;
  v339 = (v370 + 8);
  v340 = v113;
  v353 = v113 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v344 = v49;
  v338 = v111;
  while (1)
  {
    if (v341)
    {
      v370 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v112 >= *(v337 + 16))
      {
        goto LABEL_121;
      }

      v370 = *(v336 + 8 * v112);
    }

    v368 = v96;
    v342 = v112 + 1;
    if (__OFADD__(v112, 1))
    {
      goto LABEL_120;
    }

    v114 = v365;
    dispatch thunk of REMSuggestedAttributeReminderDataSource.reminderIdentifier.getter();
    v115 = v361;
    v116 = v369;
    v346 = *v347;
    v346(v361, v114, v369);
    v350 = *v351;
    (v350)(v115, 0, 1, v116);
    v117 = v344;
    if (*v344->clientIdentity && (v118 = sub_1003645D8(v115), v115 = v361, (v119 & 1) != 0))
    {
      v120 = *(*&v117->clientIdentity[40] + 8 * v118);

      sub_1000050A4(v115, &unk_100939D90, "8\n\r");
      v120, v121, v122, v123, v124, v125, v126, v127;
      type metadata accessor for REMSuggestedLocation();
      v128 = *v340;
      (*v340)(v357, v335, v366);
      REMSuggestedLocation.__allocating_init(_:)();
      dispatch thunk of REMSuggestedAttributeReminderDataSource.location.setter();
    }

    else
    {
      sub_1000050A4(v115, &unk_100939D90, "8\n\r");
      v128 = *v340;
    }

    (v128)(v362, v355, v366);
    dispatch thunk of REMSuggestedAttributeReminderDataSource.location.getter();
    v129 = REMSuggestedLocation.locationValueDescription.getter();
    v131 = v130;

    v133 = REMSuggestedLocation.LocationValue.description.getter();
    v139 = v132;
    if (v129 == v133 && v131 == v132)
    {
      v140 = 1;
    }

    else
    {
      v140 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v131, v132, v133, v134, v135, v136, v137, v138;
    v139, v141, v142, v143, v144, v145, v146, v147;
    v364 = *v354;
    (v364)(v362, v366);
    if (v140)
    {
      v148 = v358;
      dispatch thunk of REMSuggestedAttributeReminderDataSource.reminderIdentifier.getter();
      (v350)(v148, 0, 1, v369);
      if (!*v352->clientIdentity || (v149 = sub_1003645D8(v148), (v150 & 1) == 0))
      {
        sub_1000050A4(v148, &unk_100939D90, "8\n\r");
        goto LABEL_60;
      }

      v151 = *(*&v352->clientIdentity[40] + 8 * v149);

      sub_1000050A4(v148, &unk_100939D90, "8\n\r");
      v158 = v151;
      v159 = v360;
      if (!(v151 >> 62))
      {
        v160 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v160)
        {
          goto LABEL_46;
        }

        goto LABEL_111;
      }

      v160 = _CocoaArrayWrapper.endIndex.getter();
      v158 = v151;
      if (!v160)
      {
LABEL_111:
        v158, v158, v152, v153, v154, v155, v156, v157;
        goto LABEL_61;
      }

LABEL_46:
      if (v160 < 1)
      {
        goto LABEL_123;
      }

      v161 = 0;
      v348 = v158 & 0xC000000000000001;
      v363 = v158;
      v349 = v160;
      while (1)
      {
        if (v348)
        {
          v175 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v175 = *&v158->clientIdentity[8 * v161 + 16];
        }

        v176 = v175;
        v177 = v366;
        v178 = v128;
        v128(v367, v355);
        dispatch thunk of REMSuggestedAttributeReminderDataSource.location.getter();
        v179 = REMSuggestedLocation.locationValueDescription.getter();
        v181 = v180;

        v183 = REMSuggestedLocation.LocationValue.description.getter();
        v189 = v182;
        if (v179 == v183 && v181 == v182)
        {
          v181, v182, v183, v184, v185, v186, v187, v188;
          v189, v162, v163, v164, v165, v166, v167, v168;
          (v364)(v367, v177);
        }

        else
        {
          v190 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v181, v191, v192, v193, v194, v195, v196, v197;
          v189, v198, v199, v200, v201, v202, v203, v204;
          (v364)(v367, v177);
          if ((v190 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        sub_1002EED40(v176);
        dispatch thunk of REMSuggestedAttributeReminderDataSource.location.setter();
LABEL_50:
        v161 = (v161 + 1);

        v128 = v178;
        v158 = v363;
        if (v349 == v161)
        {
          v363, v363, v169, v170, v171, v172, v173, v174;
          break;
        }
      }
    }

LABEL_60:
    v159 = v360;
LABEL_61:
    v205 = v359;
    v206 = v369;
    v346(v359, v365, v369);
    (v350)(v205, 0, 1, v206);
    v207 = v345;
    if (!*v345->clientIdentity || (v208 = sub_1003645D8(v205), (v209 & 1) == 0))
    {
      sub_1000050A4(v205, &unk_100939D90, "8\n\r");
      goto LABEL_91;
    }

    v210 = *(*&v207->clientIdentity[40] + 8 * v208);

    sub_1000050A4(v205, &unk_100939D90, "8\n\r");
    v376 = &_swiftEmptyArrayStorage;
    if (!(v210 >> 62))
    {
      v364 = v210 & 0xFFFFFFFFFFFFFF8;
      v218 = *((v210 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v218)
      {
        goto LABEL_65;
      }

      goto LABEL_89;
    }

    v364 = v210 & 0xFFFFFFFFFFFFFF8;
    v218 = _CocoaArrayWrapper.endIndex.getter();
    if (v218)
    {
LABEL_65:
      v219 = 0;
      v363 = (v210 & 0xC000000000000001);
      v349 = &_swiftEmptyArrayStorage;
LABEL_66:
      v220 = v219;
      while (1)
      {
        if (v363)
        {
          v221 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v220 >= *(v364 + 16))
          {
            goto LABEL_117;
          }

          v221 = *&v210->clientIdentity[8 * v220 + 16];
        }

        v222 = v221;
        v219 = v220 + 1;
        if (__OFADD__(v220, 1))
        {
          goto LABEL_116;
        }

        *&v373 = 1701667182;
        *(&v373 + 1) = 0xE400000000000000;
        v223 = [v221 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v223)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {

          v373 = 0u;
          v374 = 0u;
        }

        v375[0] = v373;
        v375[1] = v374;
        if (*(&v374 + 1))
        {
          if (swift_dynamicCast())
          {
            v224 = v371;
            v225 = (v372 >> 56) & 0xF;
            if ((v372 & 0x2000000000000000) == 0)
            {
              v225 = v371 & 0xFFFFFFFFFFFFLL;
            }

            if (v225)
            {
              v226 = v372;
              type metadata accessor for REMSuggestedAttributesHashtag();
              v227 = swift_allocObject();
              *(v227 + 16) = v224;
              *(v227 + 24) = v226;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v376 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v376 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v349 = v376;
              if (v219 != v218)
              {
                goto LABEL_66;
              }

              goto LABEL_90;
            }

            v372, v211, v212, v213, v214, v215, v216, v217;
          }
        }

        else
        {
          sub_1000050A4(v375, &qword_100939ED0, &qword_100791B10);
        }

        ++v220;
        if (v219 == v218)
        {
          goto LABEL_90;
        }
      }
    }

LABEL_89:
    v349 = &_swiftEmptyArrayStorage;
LABEL_90:
    v210, v211, v212, v213, v214, v215, v216, v217;
    v228 = v349;
    *&v375[0] = v349;
    sub_1000F5104(&qword_1009412B0, qword_1007A0BA0);
    sub_10000CB48(&qword_1009412B8, &qword_1009412B0, qword_1007A0BA0, &protocol conformance descriptor for [A]);
    sub_1002F05EC(&qword_1009412C0, type metadata accessor for REMSuggestedAttributesHashtag, &unk_1007A0B60);
    Sequence<>.canonicalTagSet.getter();
    v228, v229, v230, v231, v232, v233, v234, v235;
    dispatch thunk of REMSuggestedAttributeReminderDataSource.tags.setter();
    v159 = v360;
LABEL_91:
    v236 = v369;
    v346(v159, v365, v369);
    (v350)(v159, 0, 1, v236);
    if (*v343->clientIdentity)
    {
      v237 = sub_1003645D8(v159);
      if (v238)
      {
        break;
      }
    }

    sub_1000050A4(v159, &unk_100939D90, "8\n\r");
LABEL_27:
    (*v339)(v365, v369);
    v112 = v342;
    v49 = v344;
    v96 = v368;
    if (v342 == v338)
    {
      goto LABEL_112;
    }
  }

  v239 = *(*&v343->clientIdentity[40] + 8 * v237);

  sub_1000050A4(v159, &unk_100939D90, "8\n\r");
  if (!(v239 >> 62))
  {
    v247 = *((v239 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v247)
    {
      goto LABEL_95;
    }

    goto LABEL_108;
  }

  v247 = _CocoaArrayWrapper.endIndex.getter();
  if (!v247)
  {
LABEL_108:
    v239, v240, v241, v242, v243, v244, v245, v246;
    v249 = &_swiftEmptyArrayStorage;
LABEL_109:
    sub_1001A5660(v249);
    v249, v271, v272, v273, v274, v275, v276, v277;
    dispatch thunk of REMSuggestedAttributeReminderDataSource.recurrences.setter();

    goto LABEL_27;
  }

LABEL_95:
  *&v375[0] = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, v247 & ~(v247 >> 63), 0);
  if ((v247 & 0x8000000000000000) == 0)
  {
    v248 = 0;
    v249 = *&v375[0];
    v364 = v239 & 0xC000000000000001;
    v350 = v239 & 0xFFFFFFFFFFFFFF8;
    v250 = v368;
    v363 = v239;
    while (1)
    {
      v251 = v248 + 1;
      if (__OFADD__(v248, 1))
      {
        break;
      }

      if (v364)
      {
        v252 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v248 >= *(v350 + 16))
        {
          goto LABEL_119;
        }

        v252 = *&v239->clientIdentity[8 * v248 + 16];
      }

      v253 = v252;
      v254 = sub_1003BE0EC(v252);
      v368 = v250;
      if (v250)
      {
        (*v339)(v365, v369);

        v344, v299, v300, v301, v302, v303, v304, v305;
        v352, v306, v307, v308, v309, v310, v311, v312;
        v345, v313, v314, v315, v316, v317, v318, v319;
        v343, v320, v321, v322, v323, v324, v325, v326;
        v239, v327, v328, v329, v330, v331, v332, v333;

        return;
      }

      v255 = v254;
      v256 = v247;
      v257 = [v254 iCalendarDescription];

      v258 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v260 = v259;

      *&v375[0] = v249;
      v269 = *v249->clientIdentity;
      v268 = *&v249->clientIdentity[8];
      if (v269 >= v268 >> 1)
      {
        sub_100026EF4((v268 > 1), v269 + 1, 1);
        v249 = *&v375[0];
      }

      *v249->clientIdentity = v269 + 1;
      v270 = v249 + 16 * v269;
      *(v270 + 4) = v258;
      *(v270 + 5) = v260;
      ++v248;
      v247 = v256;
      v250 = v368;
      v239 = v363;
      if (v251 == v256)
      {
        v363, v261, v262, v263, v264, v265, v266, v267;
        goto LABEL_109;
      }
    }

LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
  }

  __break(1u);
LABEL_123:
  __break(1u);
}

uint64_t sub_1002F048C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100935E70 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_1009411C0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v7, v8, "fetching ReminderDataSource for training batch by batch {batchsize: %ld}", v9, 0xCu);
  }

  v10 = objc_autoreleasePoolPush();
  sub_1002ED45C(a1, a2);
  if (!v2)
  {
    v12 = v11;
    sub_1002EF15C(v11, a2);
    v3 = v14;
    v12, v15, v16, v17, v18, v19, v20, v21;
  }

  objc_autoreleasePoolPop(v10);
  return v3;
}

uint64_t sub_1002F05EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TrainingContext(uint64_t a1)
{
  result = qword_100941458;
  if (!qword_100941458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1002F06A4()
{
  result = qword_100941338;
  if (!qword_100941338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941338);
  }

  return result;
}

uint64_t sub_1002F06F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1002F0774(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  for (i = (a1 + 56); ; i += 4)
  {
    v4 = *(i - 3);
    v5 = *(i - 2);
    v7 = *(i - 1);
    v6 = *i;
    swift_bridgeObjectRetain_n();

    v15 = sub_100005F4C(v7, v6);
    v16 = _swiftEmptyDictionarySingleton[2];
    v17 = (v8 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      break;
    }

    v19 = v8;
    if (_swiftEmptyDictionarySingleton[3] < v18)
    {
      sub_10036C2F0(v18, 1);
      v20 = sub_100005F4C(v7, v6);
      if ((v19 & 1) != (v8 & 1))
      {
        goto LABEL_19;
      }

      v15 = v20;
    }

    if (v19)
    {
      v39 = v1;
      v6, v8, v9, v10, v11, v12, v13, v14;
      v21 = _swiftEmptyDictionarySingleton[7];
      v22 = *(v21 + 8 * v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v21;
      *(v21 + 8 * v15) = v22;
      v40 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_100365CC4(0, (*v22->clientIdentity + 1), 1, v22, v24, v25, v26, v27);
        *(v21 + 8 * v15) = v22;
      }

      v29 = *v22->clientIdentity;
      v28 = *&v22->clientIdentity[8];
      v30 = v29 + 1;
      v1 = v39;
      if (v29 >= v28 >> 1)
      {
        v31 = sub_100365CC4((v28 > 1), (v29 + 1), 1, v22, v24, v25, v26, v27);
        v30 = v29 + 1;
        v22 = v31;
        *(v38 + 8 * v15) = v31;
      }

      *v22->clientIdentity = v30;
      v3 = &v22->super.isa + 4 * v29;
      v3[4] = v40;
      v3[5] = v5;
      v3[6] = v7;
      v3[7] = v6;
    }

    else
    {
      sub_1000F5104(&qword_100943E50, &unk_1007A12F0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_100791300;
      *(v32 + 32) = v4;
      *(v32 + 40) = v5;
      *(v32 + 48) = v7;
      *(v32 + 56) = v6;
      _swiftEmptyDictionarySingleton[(v15 >> 6) + 8] |= 1 << v15;
      v33 = (_swiftEmptyDictionarySingleton[6] + 16 * v15);
      *v33 = v7;
      v33[1] = v6;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v15) = v32;
      v34 = _swiftEmptyDictionarySingleton[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_18;
      }

      _swiftEmptyDictionarySingleton[2] = v36;
    }

    if (!--v1)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002F09B4(uint64_t a1)
{
  sub_1000F5104(&qword_100941358, &qword_1007A1078);
  sub_10000CB48(&qword_1009413B8, &qword_100941358, &qword_1007A1078, &protocol conformance descriptor for Series<A>);
  v1 = dispatch thunk of Sequence.underestimatedCount.getter();
  specialized ContiguousArray.reserveCapacity(_:)();

  result = dispatch thunk of Sequence.makeIterator()();
  if (v1 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (v1)
  {
    do
    {
      result = dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!v18)
      {
        goto LABEL_9;
      }

      REMFilteredTitleEmbedding.vector(for:)();
      v18, v3, v4, v5, v6, v7, v8, v9;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (--v1);
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  v10 = v18;
  if (v18)
  {
    while (1)
    {
      REMFilteredTitleEmbedding.vector(for:)();
      v10, v11, v12, v13, v14, v15, v16, v17;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v10 = v18;
    }
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002F0B98(uint64_t a1)
{
  sub_1000F5104(&qword_100941340, &qword_1007A1068);
  sub_10000CB48(&qword_100941370, &qword_100941340, &qword_1007A1068, &protocol conformance descriptor for Series<A>);
  v2 = dispatch thunk of Sequence.underestimatedCount.getter();
  sub_100026EF4(0, v2 & ~(v2 >> 63), 0);

  result = dispatch thunk of Sequence.makeIterator()();
  if (v2 < 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (v2)
  {
    do
    {
      result = dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!a1)
      {
        goto LABEL_23;
      }

      v4 = REMkNNByTitleEmbedding.predict(for:neighborCountToConsider:)();
      v6 = v5;

      if (v6)
      {
        v7 = v4;
      }

      else
      {
        v7 = 0;
      }

      if (!v6)
      {
        v6 = 0xE000000000000000;
      }

      v9 = *_swiftEmptyArrayStorage.clientIdentity;
      v8 = *&_swiftEmptyArrayStorage.clientIdentity[8];
      if (v9 >= v8 >> 1)
      {
        sub_100026EF4((v8 > 1), v9 + 1, 1);
      }

      *_swiftEmptyArrayStorage.clientIdentity = v9 + 1;
      v10 = &_swiftEmptyArrayStorage + 16 * v9;
      *(v10 + 4) = v7;
      *(v10 + 5) = v6;
    }

    while (--v2);
  }

  dispatch thunk of _AnyIteratorBoxBase.next()();
  if (a1)
  {
    while (1)
    {
      v11 = REMkNNByTitleEmbedding.predict(for:neighborCountToConsider:)();
      v13 = v12;

      if (v13)
      {
        v14 = v11;
      }

      else
      {
        v14 = 0;
      }

      if (!v13)
      {
        v13 = 0xE000000000000000;
      }

      v16 = *_swiftEmptyArrayStorage.clientIdentity;
      v15 = *&_swiftEmptyArrayStorage.clientIdentity[8];
      if (v16 >= v15 >> 1)
      {
        sub_100026EF4((v15 > 1), v16 + 1, 1);
      }

      *_swiftEmptyArrayStorage.clientIdentity = v16 + 1;
      v17 = &_swiftEmptyArrayStorage + 16 * v16;
      *(v17 + 4) = v14;
      *(v17 + 5) = v13;
      dispatch thunk of _AnyIteratorBoxBase.next()();
    }
  }

  return &_swiftEmptyArrayStorage;
}

_TtC7remindd19RDXPCStorePerformer *sub_1002F0DE4(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&qword_100941340, &qword_1007A1068);
  sub_10000CB48(&qword_100941370, &qword_100941340, &qword_1007A1068, &protocol conformance descriptor for Series<A>);
  v4 = dispatch thunk of Sequence.underestimatedCount.getter();
  sub_100026EF4(0, v4 & ~(v4 >> 63), 0);
  v22 = a1;

  result = dispatch thunk of Sequence.makeIterator()();
  if (v4 < 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  for (i = 0x20676E697373696DLL; v4; a2 = v7)
  {
    result = dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!v22)
    {
      goto LABEL_21;
    }

    v7 = a2;
    v8 = RDIntentClusterModel.predict(for:)();
    v10 = v9;

    v11 = i;
    if (v10)
    {
      i = v8;
    }

    else
    {
      v10 = 0xEE00746E65746E69;
    }

    v13 = *_swiftEmptyArrayStorage.clientIdentity;
    v12 = *&_swiftEmptyArrayStorage.clientIdentity[8];
    if (v13 >= v12 >> 1)
    {
      sub_100026EF4((v12 > 1), v13 + 1, 1);
    }

    *_swiftEmptyArrayStorage.clientIdentity = v13 + 1;
    v14 = &_swiftEmptyArrayStorage + 16 * v13;
    *(v14 + 4) = i;
    *(v14 + 5) = v10;
    --v4;
    i = v11;
  }

  while (1)
  {
    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (!v22)
    {
      break;
    }

    v15 = RDIntentClusterModel.predict(for:)();
    v17 = v16;

    if (v17)
    {
      v18 = v15;
    }

    else
    {
      v18 = i;
    }

    if (!v17)
    {
      v17 = 0xEE00746E65746E69;
    }

    v20 = *_swiftEmptyArrayStorage.clientIdentity;
    v19 = *&_swiftEmptyArrayStorage.clientIdentity[8];
    if (v20 >= v19 >> 1)
    {
      sub_100026EF4((v19 > 1), v20 + 1, 1);
    }

    *_swiftEmptyArrayStorage.clientIdentity = v20 + 1;
    v21 = &_swiftEmptyArrayStorage + 16 * v20;
    *(v21 + 4) = v18;
    *(v21 + 5) = v17;
  }

  return &_swiftEmptyArrayStorage;
}

unint64_t sub_1002F1050()
{
  result = qword_100941360;
  if (!qword_100941360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100941360);
  }

  return result;
}

double sub_1002F10C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 2u)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (a7 - 3 >= 2)
  {
    if (a7 == 5)
    {

      goto LABEL_6;
    }

    if (a7 != 6)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_6:

  return result;
}

double sub_1002F115C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, _TtC7remindd19RDXPCStorePerformer *a5, _TtC7remindd19RDXPCStorePerformer *a6, void *a7, void *a8)
{
  v8 = a5;
  if (a7 <= 2u)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (a7 - 3 >= 2)
  {
    if (a7 == 5)
    {
      v8 = a6;
      a2, a2, a3, a4, a5, a6, a7, a8;
      goto LABEL_6;
    }

    if (a7 != 6)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_6:

  v8, a2, a3, a4, a5, a6, a7, a8;
  return result;
}

unint64_t sub_1002F1430()
{
  result = qword_100944210;
  if (!qword_100944210)
  {
    sub_1000060C8(255, &qword_100939EE0, off_1008D41D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944210);
  }

  return result;
}

uint64_t *sub_1002F14B8(uint64_t *a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    v4 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
    (*(*(v7 - 8) + 16))(v4, a2, v7);
    v8 = a3[5];
    v9 = a3[6];
    v10 = *(a2 + v8);
    *(v4 + v8) = v10;
    v11 = *(a2 + v9);
    *(v4 + v9) = v11;
    *(v4 + a3[7]) = *(a2 + a3[7]);
    v12 = v10;
    v13 = v11;
  }

  return v4;
}

uint64_t sub_1002F15AC(uint64_t a1, int *a2)
{
  v4 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  (*(*(v4 - 8) + 8))(a1, v4);
}

uint64_t sub_1002F1644(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = *(a2 + v7);
  *(a1 + v7) = v9;
  v10 = *(a2 + v8);
  *(a1 + v8) = v10;
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v11 = v9;
  v12 = v10;

  return a1;
}

uint64_t sub_1002F16F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a2 + v7);
  v9 = *(a1 + v7);
  *(a1 + v7) = v8;
  v10 = v8;

  v11 = a3[6];
  v12 = *(a2 + v11);
  v13 = *(a1 + v11);
  *(a1 + v11) = v12;
  v14 = v12;

  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t sub_1002F17B8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1002F1854(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = a3[6];
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

void sub_1002F1934(uint64_t a1, __n128 a2)
{
  sub_1002F19DC(319, a2);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1002F19DC(uint64_t a1, __n128 a2)
{
  if (!qword_100941468)
  {
    type metadata accessor for REMSuggestedAttributesTrainer.Parameters();
    v2 = type metadata accessor for PartialOverride();
    if (!v3)
    {
      atomic_store(v2, &qword_100941468);
    }
  }
}

double _s8KeyTupleVwxx(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(a1 + 8), a2, a3, a4, a5, a6, a7, a8;
  v16 = *(a1 + 24);

  v16, v9, v10, v11, v12, v13, v14, v15;
  return result;
}

void *_s8KeyTupleVwcp(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *_s8KeyTupleVwca(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v4, v5, v6, v7, v8, v9, v10, v11;
  a1[2] = a2[2];
  v12 = a2[3];
  v13 = a1[3];
  a1[3] = v12;

  v13, v14, v15, v16, v17, v18, v19, v20;
  return a1;
}

void *_s8KeyTupleVwta(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(a2 + 1);
  v11 = a1[1];
  *a1 = *a2;
  a1[1] = v10;
  v11, a2, a3, a4, a5, a6, a7, a8;
  v12 = *(a2 + 3);
  v13 = a1[3];
  a1[2] = *(a2 + 2);
  a1[3] = v12;
  v13, v14, v15, v16, v17, v18, v19, v20;
  return a1;
}

uint64_t _s8KeyTupleVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t _s8KeyTupleVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1002F1C2C()
{
  result = qword_1009414A0;
  if (!qword_1009414A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009414A0);
  }

  return result;
}

uint64_t sub_1002F1C80(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002F1CB8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009414A8);
  v1 = sub_100006654(v0, qword_1009414A8);
  if (qword_1009364B0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975158);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002F1D80(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v7 = String.data(using:allowLossyConversion:)();
  v9 = v8;
  v10 = *(v3 + 8);
  v10(v6, v2);
  result = 0;
  if (v9 >> 60 != 15)
  {
    sub_1000F5104(&qword_1009414C8, &qword_1007A1558);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    *(inited + 32) = NSDocumentTypeDocumentOption;
    v23 = inited + 32;
    type metadata accessor for DocumentType(0);
    *(inited + 40) = NSHTMLTextDocumentType;
    *(inited + 64) = v13;
    *(inited + 72) = NSCharacterEncodingDocumentOption;
    v14 = NSDocumentTypeDocumentOption;
    v15 = NSHTMLTextDocumentType;
    v16 = NSCharacterEncodingDocumentOption;
    v17 = v9;
    static String.Encoding.utf8.getter();
    v18 = String.Encoding.rawValue.getter();
    v10(v6, v2);
    *(inited + 104) = &type metadata for UInt;
    *(inited + 80) = v18;
    v19 = sub_10038FC0C(inited);
    swift_setDeallocating();
    sub_1000F5104(&qword_100943350, &unk_1007A1560);
    swift_arrayDestroy();
    objc_allocWithZone(NSAttributedString);
    sub_1001CB4B8(v7, v9);
    v20 = sub_1002F243C(v7, v9, v19, 0);
    sub_100031A14(v7, v9);
    if (v20)
    {
      v21 = [v20 string];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100031A14(v7, v17);

      return v22;
    }

    else
    {
      sub_100031A14(v7, v9);
      return 0;
    }
  }

  return result;
}

void sub_1002F2038(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _HashTable.startBucket.getter();
  v7 = 1 << *(a2 + 32);
  if (v7 < v6)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a2 + 36);
  v9 = *(a1 + 8);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  if (*a1 < v6)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = *(a1 + 32);
  if (v8 != v10)
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 24);
  if (v7 < v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = v10;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

uint64_t sub_1002F211C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_1002F3658(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if (result < 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 56 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 64 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1002F2280(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = _HashTable.startBucket.getter();
    v7 = *(a2 + 36);
    v8 = -1 << *(a2 + 32);
    v9 = sub_1002F211C(v6, v7, 0, a1, -v8, *(a2 + 36), 0, a2);
    v11 = v10;
    v13 = v12;
    v14 = v12;
    v15 = _HashTable.startBucket.getter();
    if (v14 == 255)
    {
      v16 = -v8;
    }

    else
    {
      v16 = v9;
    }

    if (v14 == 255)
    {
      v17 = v7;
    }

    else
    {
      v17 = v11;
    }

    if (v14 != 255 && (v13 & 1) != 0)
    {
      goto LABEL_16;
    }

    v18 = *(a2 + 36);
    if (v18 == v17)
    {
      if (v16 >= v15)
      {
        v22[0] = v15;
        v22[1] = v18;
        v23 = 0;
        v24 = v16;
        v25 = v17;
        v26 = 0;
        sub_1002F2038(v22, a2, v20);
        v19 = v20[1];
        *a3 = v20[0];
        *(a3 + 16) = v19;
        *(a3 + 32) = v20[2];
        *(a3 + 48) = v21;
        return;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1002F23A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

id sub_1002F243C(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, uint64_t a4)
{
  v5 = v4;
  isa = Data._bridgeToObjectiveC()().super.isa;
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_1002F3610(&qword_100937248, type metadata accessor for DocumentReadingOptionKey, &unk_100792C80);
  v9 = Dictionary._bridgeToObjectiveC()().super.isa;
  a3, v10, v11, v12, v13, v14, v15, v16;
  v21 = 0;
  v17 = [v5 initWithData:isa options:v9 documentAttributes:a4 error:&v21];

  if (v17)
  {
    v18 = v21;
  }

  else
  {
    v19 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v17;
}

uint64_t sub_1002F2584(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for String.Encoding();
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for DispatchTime();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1002F26CC, 0, 0);
}

uint64_t sub_1002F26CC()
{
  v29 = v0;
  if (qword_100935E78 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[10] = sub_100006654(v5, qword_1009414A8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136380675;
    sub_1002F3610(&qword_1009456F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000668C(v14, v16, &v28);
    v16, v18, v19, v20, v21, v22, v23, v24;
    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "RDPromptInputProcessor: loading URL: %{private}s", v12, 0xCu);
    sub_10000607C(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  static DispatchTime.now()();
  v0[11] = [objc_opt_self() sharedSession];
  v25 = swift_task_alloc();
  v0[12] = v25;
  *v25 = v0;
  v25[1] = sub_1002F2978;
  v26 = v0[2];

  return NSURLSession.data(from:delegate:)(v26, 0);
}

uint64_t sub_1002F2978(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *(*v4 + 88);
  v6[13] = a1;
  v6[14] = a2;
  v6[15] = v3;

  if (v3)
  {
    v8 = sub_1002F2F00;
  }

  else
  {

    v8 = sub_1002F2ABC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1002F2ABC(uint64_t a1)
{
  v74 = v1;
  static String.Encoding.utf8.getter();
  v2 = String.init(data:encoding:)();
  if (!v3)
  {
    v27 = v1[13];
    v26 = v1[14];
    sub_1002F35BC();
    swift_allocError();
    *v28 = 0;
LABEL_10:
    swift_willThrow();
    v57 = v27;
    v58 = v26;
    goto LABEL_11;
  }

  v4 = v2;
  v5 = v3;
  static DispatchTime.secondsElapsed(since:)();
  v7 = v6;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v73[0] = v18;
    *v17 = 134218499;
    *(v17 + 4) = v7;
    *(v17 + 12) = 2048;
    *(v17 + 14) = String.count.getter();
    v5, v19, v20, v21, v22, v23, v24, v25;
    *(v17 + 22) = 2081;
    *(v17 + 24) = sub_10000668C(v4, v5, v73);
    _os_log_impl(&_mh_execute_header, v8, v9, "RDPromptInputProcessor: loaded in %f seconds, characterCount: %ld HTMLString: { %{private}s }", v17, 0x20u);
    sub_10000607C(v18);
  }

  else
  {
    v5, v10, v11, v12, v13, v14, v15, v16;
  }

  v29 = sub_1002F1D80(v4, v5);
  v31 = v30;
  v5, v30, v32, v33, v34, v35, v36, v37;
  if (!v31)
  {
    v27 = v1[13];
    v26 = v1[14];
    sub_1002F35BC();
    swift_allocError();
    *v56 = 1;
    goto LABEL_10;
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v73[0] = v48;
    *v47 = 134218243;
    *(v47 + 4) = String.count.getter();
    v31, v49, v50, v51, v52, v53, v54, v55;
    *(v47 + 12) = 2081;
    *(v47 + 14) = sub_10000668C(v29, v31, v73);
    _os_log_impl(&_mh_execute_header, v38, v39, "RDPromptInputProcessor: trimmedHTML characterCount: %ld trimmedHTMLString: { %{private}s }", v47, 0x16u);
    sub_10000607C(v48);
  }

  else
  {
    v31, v40, v41, v42, v43, v44, v45, v46;
  }

  v68 = (v31 >> 56) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v68 = v29 & 0xFFFFFFFFFFFFLL;
  }

  v70 = v1[13];
  v69 = v1[14];
  if (v68)
  {
    (*(v1[5] + 8))(v1[6], v1[4]);
    sub_10001BBA0(v70, v69);

    v71 = v1[1];

    return v71(v29, v31);
  }

  v31, v61, v62, v63, v64, v65, v66, v67;
  sub_1002F35BC();
  swift_allocError();
  *v72 = 2;
  swift_willThrow();
  v57 = v70;
  v58 = v69;
LABEL_11:
  sub_10001BBA0(v57, v58);
  (*(v1[5] + 8))(v1[6], v1[4]);

  v59 = v1[1];

  return v59();
}

uint64_t sub_1002F2F00()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002F2F9C(Swift::Int a1, uint64_t a2, unint64_t a3)
{
  v96 = a1;
  v5 = type metadata accessor for DispatchTime();
  v88 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v89 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Prompt();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  Prompt.init(_:)();
  v13 = Prompt.overestimatedTokenCount()();
  v14 = *(v9 + 8);
  v93 = v12;
  v94 = v9 + 8;
  v95 = v8;
  v92 = v14;
  v14(v12, v8);
  if (qword_100935E78 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v15 = type metadata accessor for Logger();
    v16 = sub_100006654(v15, qword_1009414A8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v17, v18, "RDPromptInputProcessor: Checking if Input string is under token limit, current token count: %ld", v19, 0xCu);
    }

    if (v13 <= v96)
    {
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "RDPromptInputProcessor: Input is under token limit continue with original input.", v43, 2u);
      }

      return a2;
    }

    v85[1] = v16;
    v86 = v5;
    v87 = v13;
    v20 = String.count.getter();
    static DispatchTime.now()();
    v91 = a3;
    if (v20 < 0)
    {
      break;
    }

    v90 = 0;
    v13 = 0;
    v21 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v21 = a2;
    }

    v22 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v22 = 11;
    }

    v5 = v22 | (v21 << 16);
    v23 = v91;
    while (!__OFSUB__(v20, v13))
    {
      v24 = v13 + (v20 - v13) / 2;
      if (__OFADD__(v13, (v20 - v13) / 2))
      {
        goto LABEL_29;
      }

      if (v24 < 0)
      {
        goto LABEL_30;
      }

      String.index(_:offsetBy:limitedBy:)();
      a3 = a2;
      String.subscript.getter();
      v26 = v25;
      v23, v27, v28, v25, v29, v30, v31, v32;
      static String._fromSubstring(_:)();
      v26, v33, v34, v35, v36, v37, v38, v39;
      a2 = v93;
      Prompt.init(_:)();
      v40 = Prompt.overestimatedTokenCount()();
      v92(a2, v95);
      if (v40 > v96)
      {
        v20 = v24 - 1;
        v24 = v90;
      }

      else
      {
        v13 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_31;
        }

        v90 = v24;
      }

      a2 = a3;
      if (v20 < v13)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

  v24 = 0;
LABEL_23:
  v44 = v91;

  sub_1002F23A0(v24, a2, v44);
  v46 = v45;
  v44, v47, v48, v45, v49, v50, v51, v52;
  a2 = static String._fromSubstring(_:)();
  v54 = v53;
  v46, v53, v55, v56, v57, v58, v59, v60;

  v61 = v93;
  Prompt.init(_:)();
  v62 = Prompt.overestimatedTokenCount()();
  v92(v61, v95);
  v63 = v89;
  static DispatchTime.secondsElapsed(since:)();
  v65 = v64;

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v97 = v69;
    *v68 = 134218755;
    *(v68 + 4) = v65;
    *(v68 + 12) = 2048;
    *(v68 + 14) = String.count.getter();
    v54, v70, v71, v72, v73, v74, v75, v76;
    *(v68 + 22) = 2048;
    *(v68 + 24) = v62;
    *(v68 + 32) = 2081;
    *(v68 + 34) = sub_10000668C(a2, v54, &v97);
    _os_log_impl(&_mh_execute_header, v66, v67, "RDPromptInputProcessor: New string under token limit calculated in %f seconds, characterCount: %ld, token count: %ld string: %{private}s", v68, 0x2Au);
    sub_10000607C(v69);
  }

  else
  {

    v54, v77, v78, v79, v80, v81, v82, v83;
  }

  (*(v88 + 8))(v63, v86);
  return a2;
}

unint64_t sub_1002F35BC()
{
  result = qword_1009414C0;
  if (!qword_1009414C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009414C0);
  }

  return result;
}

uint64_t sub_1002F3610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1002F3658(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1002F3678()
{
  result = qword_1009414D0;
  if (!qword_1009414D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009414D0);
  }

  return result;
}

uint64_t sub_1002F36D0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = sub_1000F5104(&qword_10093DB08, &qword_1007A1720);
  v3[2] = v7;
  v3[3] = *(v7 - 8);
  v8 = swift_task_alloc();
  v3[4] = v8;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_1002F3820;

  return sub_1002F3C60(v8, a1, a2, v2, v6);
}

uint64_t sub_1002F3820()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002F3B98, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[7] = v3;
    v4 = sub_1002F6D58(&qword_10093DB28, 255, &type metadata accessor for TokenGenerator, &protocol conformance descriptor for TokenGenerator);
    *v3 = v2;
    v3[1] = sub_1002F39E0;
    v5 = v2[2];

    return GenerativeConfigurationRunnable<>.run(returning:)(v5, v4);
  }
}

uint64_t sub_1002F39E0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 64) = v2;

  (*(v6[3] + 8))(v6[4], v6[2]);
  if (v2)
  {

    return _swift_task_switch(sub_1002F3BFC, 0, 0);
  }

  else
  {

    v8 = v7[1];

    return v8(a1, a2);
  }
}

uint64_t sub_1002F3B98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F3BFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F3C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[43] = a4;
  v5[44] = a5;
  v5[41] = a2;
  v5[42] = a3;
  v5[40] = a1;
  sub_1000F5104(&qword_10093DB38, &qword_10079B890);
  v5[45] = swift_task_alloc();
  v5[46] = sub_1000F5104(&qword_10093DB40, &qword_10079B898);
  v5[47] = swift_task_alloc();
  v6 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v5[48] = v6;
  v5[49] = *(v6 - 8);
  v5[50] = swift_task_alloc();
  v7 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt();
  v5[51] = v7;
  v5[52] = *(v7 - 8);
  v5[53] = swift_task_alloc();
  sub_1000F5104(&qword_10093DB48, &unk_10079B8A0);
  v5[54] = swift_task_alloc();
  v8 = type metadata accessor for FunctionIdentifier();
  v5[55] = v8;
  v5[56] = *(v8 - 8);
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v9 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v5[59] = v9;
  v5[60] = *(v9 - 8);
  v5[61] = swift_task_alloc();
  type metadata accessor for StringResponseSanitizer.Guardrails();
  v5[62] = swift_task_alloc();
  v10 = type metadata accessor for StringResponseSanitizer();
  v5[63] = v10;
  v5[64] = *(v10 - 8);
  v5[65] = swift_task_alloc();
  type metadata accessor for SensitiveContentSettings();
  v5[66] = swift_task_alloc();
  type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  v5[67] = swift_task_alloc();
  v11 = type metadata accessor for StringRenderedPromptSanitizer();
  v5[68] = v11;
  v5[69] = *(v11 - 8);
  v5[70] = swift_task_alloc();
  v12 = type metadata accessor for ChatMessagesPrompt();
  v5[71] = v12;
  v5[72] = *(v12 - 8);
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v5[77] = swift_task_alloc();

  return _swift_task_switch(sub_1002F40BC, 0, 0);
}

uint64_t sub_1002F40BC()
{
  v33 = *(v0 + 608);
  v30 = *(v0 + 600);
  v24 = *(v0 + 584);
  v25 = *(v0 + 592);
  v38 = *(v0 + 576);
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v26 = *(v0 + 552);
  v27 = *(v0 + 544);
  v28 = *(v0 + 520);
  v29 = *(v0 + 512);
  v31 = *(v0 + 504);
  v36 = *(v0 + 488);
  v34 = *(v0 + 480);
  v35 = *(v0 + 472);
  v37 = *(v0 + 432);
  v23 = *(v0 + 328);
  v3 = *(v0 + 352);
  v32 = *(v0 + 344);
  v4 = swift_task_alloc();
  *(v4 + 16) = v23;
  *(v4 + 32) = v3;
  ChatMessagesPrompt.init(_:)();

  *(v0 + 624) = sub_1000F5104(&qword_10093DB60, &qword_10079B8B8);
  v5 = *(type metadata accessor for SensitiveContentSettings.Sanitizer() - 8);
  *(v0 + 632) = *(v5 + 72);
  *(v0 + 720) = *(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_100791340;
  static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
  static SensitiveContentSettings.Sanitizer.textSanitization.getter();
  SensitiveContentSettings.init(sanitizers:)();
  StringRenderedPromptSanitizer.Guardrails.init(sensitiveContentSettings:)();
  StringRenderedPromptSanitizer.init(guardrails:)();
  *(v0 + 640) = sub_1002F6D58(&qword_10093DB58, 255, &type metadata accessor for ChatMessagesPrompt, &protocol conformance descriptor for ChatMessagesPrompt);
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  v6 = *(v26 + 8);
  *(v0 + 648) = v6;
  *(v0 + 656) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v27);
  v7 = *(v38 + 8);
  *(v0 + 664) = v7;
  *(v0 + 672) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v24, v1);
  *(swift_allocObject() + 16) = xmmword_100791340;
  static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
  static SensitiveContentSettings.Sanitizer.textSanitization.getter();
  SensitiveContentSettings.init(sanitizers:)();
  StringResponseSanitizer.Guardrails.init(sensitiveContentSettings:)();
  StringResponseSanitizer.init(guardrails:)();
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  v8 = *(v29 + 8);
  *(v0 + 680) = v8;
  *(v0 + 688) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v28, v31);
  v7(v25, v1);
  v9 = sub_10038E004(&_swiftEmptyArrayStorage);
  GenerativeConfigurationProtocol._internalTrackingConfig(_:)();
  v9, v10, v11, v12, v13, v14, v15, v16;
  v7(v30, v1);
  v17 = *(v32 + 16);
  *(v0 + 696) = v17;
  v18 = OBJC_IVAR____TtCC7remindd27RDExtractIngredientsSessionP33_9D6AA108CADC804878354DD42EEB17DD11_ClientInfo_trackingConfig;
  swift_beginAccess();
  (*(v34 + 16))(v36, v17 + v18, v35);
  GenerativeConfigurationProtocol._internalSessionTrackingConfig(_:)();
  (*(v34 + 8))(v36, v35);
  v7(v33, v1);
  v19 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  (*(*(v19 - 8) + 56))(v37, 1, 1, v19);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v20 = swift_task_alloc();
  *(v0 + 704) = v20;
  *v20 = v0;
  v20[1] = sub_1002F45FC;
  v21 = *(v0 + 360);

  return static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataChatMessagesPrompt(_:)(v21, 0xD00000000000001CLL, 0x80000001007F46A0);
}

uint64_t sub_1002F45FC()
{
  *(*v1 + 712) = v0;

  if (v0)
  {
    v2 = sub_1002F4EA4;
  }

  else
  {
    v2 = sub_1002F4710;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F4710()
{
  v1 = v0[45];
  v2 = sub_1000F5104(&qword_10093DB68, &qword_10079B8C0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1002F6CB8(v1);
  }

  else
  {
    v59 = v0[85];
    v65 = v0[83];
    v53 = v0[81];
    v61 = v0[76];
    v62 = v0[77];
    v63 = v0[71];
    v64 = v0[72];
    v51 = v0[70];
    v52 = v0[68];
    v54 = v0[65];
    v56 = v0[63];
    v69 = v0[58];
    v45 = v0[57];
    v46 = v0[56];
    v47 = v0[55];
    v66 = v0[53];
    v60 = v0[52];
    v3 = v0[51];
    v67 = v0[50];
    v44 = *(v2 + 48);
    v4 = v0[49];
    v68 = v0[48];
    v6 = v0[46];
    v5 = v0[47];
    v49 = v0[42];
    v48 = v0[41];
    v7 = *(v6 + 48);
    v8 = *(v60 + 32);
    v58 = v3;
    v8(v5, v1, v3);
    v9 = *(v4 + 32);
    v9(v5 + v7, v1 + v44, v68);
    v10 = *(v6 + 48);
    v8(v66, v5, v3);
    v9(v67, v5 + v10, v68);
    _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    (*(v46 + 8))(v69, v47);
    (*(v46 + 32))(v69, v45, v47);
    sub_1000F5104(&qword_100941650, &qword_1007A1738);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 40) = 0x80000001007F46C0;
    *(inited + 48) = 0xD00000000000023ELL;
    *(inited + 56) = 0x80000001007F4100;
    *(inited + 88) = 1954047348;
    *(inited + 96) = 0xE400000000000000;
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = v48;
    *(inited + 112) = v49;

    v50 = sub_10038F2FC(inited);
    swift_setDeallocating();
    sub_1000F5104(&qword_100942F00, &unk_1007A1740);
    swift_arrayDestroy();
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_100791340;
    *(v12 + 32) = 0xD0000000000000BFLL;
    *(v12 + 40) = 0x80000001007F1340;
    *(swift_allocObject() + 16) = xmmword_100791340;
    static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
    static SensitiveContentSettings.Sanitizer.textSanitization.getter();
    SensitiveContentSettings.init(sanitizers:)();
    StringRenderedPromptSanitizer.Guardrails.init(sensitiveContentSettings:)();
    StringRenderedPromptSanitizer.init(guardrails:)();
    *(v12 + 72) = v52;
    sub_1000103CC((v12 + 48));
    static _OverrideConfigurationHelper.renderedPromptSanitizer(_:)();
    v53(v51, v52);
    *(v12 + 80) = 0xD0000000000000B3;
    *(v12 + 88) = 0x80000001007F1400;
    *(swift_allocObject() + 16) = xmmword_100791340;
    static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
    static SensitiveContentSettings.Sanitizer.textSanitization.getter();
    SensitiveContentSettings.init(sanitizers:)();
    StringResponseSanitizer.Guardrails.init(sensitiveContentSettings:)();
    StringResponseSanitizer.init(guardrails:)();
    *(v12 + 120) = v56;
    sub_1000103CC((v12 + 96));
    static _OverrideConfigurationHelper.responseSanitizer(_:)();
    v59(v54, v56);
    v13 = sub_1001F67C8(v12);
    swift_setDeallocating();
    sub_1000F5104(&unk_100939260, &unk_100797220);
    swift_arrayDestroy();
    v14 = sub_10038F430(&_swiftEmptyArrayStorage);
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingChatMessagesPrompts:bindingVariables:bindingConfigurations:)();
    v14, v15, v16, v17, v18, v19, v20, v21;
    v50, v22, v23, v24, v25, v26, v27, v28;
    v13, v29, v30, v31, v32, v33, v34, v35;
    (*(v4 + 8))(v67, v68);
    (*(v60 + 8))(v66, v58);
    v65(v62, v63);
    (*(v64 + 32))(v62, v61, v63);
  }

  v36 = v0[87];
  v57 = v0[83];
  v37 = v0[77];
  v38 = v0[76];
  v39 = v0[71];
  v40 = v0[58];
  v41 = v0[56];
  v55 = v0[55];
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  v0[39] = *(v36 + OBJC_IVAR____TtCC7remindd27RDExtractIngredientsSessionP33_9D6AA108CADC804878354DD42EEB17DD11_ClientInfo__model);
  type metadata accessor for TokenGenerator();
  GenerativeConfigurationProtocol.with<A>(model:modelType:)();
  v57(v38, v39);
  (*(v41 + 8))(v40, v55);
  v57(v37, v39);

  v42 = v0[1];

  return v42();
}

uint64_t sub_1002F4EA4()
{
  v1 = v0[83];
  v2 = v0[77];
  v3 = v0[71];
  (*(v0[56] + 8))(v0[58], v0[55]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002F5038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a1;
  v45 = a2;
  v51 = a4;
  v5 = type metadata accessor for User();
  v6 = *(v5 - 8);
  v46 = v5;
  v47 = v6;
  __chkstk_darwin(v5, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for System();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ChatMessagesPrompt();
  v42 = *(v15 - 8);
  v16 = v42;
  __chkstk_darwin(v15, v17);
  v41 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v22 = &v40 - v21;
  v50 = a3;
  v23 = v43;
  System.init(_:)();
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v11 + 8))(v14, v10);
  v48 = v44;
  v49 = v45;
  User.init(_:)();
  v45 = v23;
  v24 = v41;
  v25 = v46;
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v47 + 8))(v9, v25);
  sub_1000F5104(&qword_10093DB80, &qword_10079B8D8);
  v26 = *(v42 + 72);
  v27 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100791340;
  v29 = v28 + v27;
  v30 = *(v16 + 16);
  v30(v29, v22, v15);
  v30(v29 + v26, v24, v15);
  static ChatMessagesPromptBuilder.buildBlock(_:)();
  v28, v31, v32, v33, v34, v35, v36, v37;
  v38 = *(v16 + 8);
  v38(v24, v15);
  return (v38)(v22, v15);
}

uint64_t sub_1002F53B0()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[3] = &type metadata for String;
  v16[4] = &protocol witness table for String;
  v16[0] = 0xD00000000000023ELL;
  v16[1] = 0x80000001007F4100;
  static CustomPromptBuilder.buildExpression(_:)();
  sub_10000607C(v16);
  sub_1000F5104(&qword_100941658, &qword_1007A1750);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100791300;
  (*(v1 + 16))(v6 + v5, v4, v0);
  static CustomPromptBuilder.buildBlock(_:)();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1002F5568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[3] = &type metadata for String;
  v20[4] = &protocol witness table for String;
  v20[0] = a1;
  v20[1] = a2;

  static CustomPromptBuilder.buildExpression(_:)();
  sub_10000607C(v20);
  sub_1000F5104(&qword_100941658, &qword_1007A1750);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100791300;
  (*(v5 + 16))(v10 + v9, v8, v4);
  static CustomPromptBuilder.buildBlock(_:)();
  v10, v11, v12, v13, v14, v15, v16, v17;
  return (*(v5 + 8))(v8, v4);
}

void sub_1002F5720(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5)
{
  v6 = v5;
  v11 = type metadata accessor for CachePolicy();
  __chkstk_darwin(v11 - 8, v12);
  v13 = type metadata accessor for GenerativeModelSessionConfiguration();
  __chkstk_darwin(v13 - 8, v14);
  v74 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F5104(&qword_100941668, &qword_1007A1758);
  __chkstk_darwin(v16 - 8, v17);
  v72 = &v72 - v18;
  v19 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19, v21);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_10038E004(&_swiftEmptyArrayStorage);
  _ClientInfoSessionTrackingConfig.init(sessionTrackingConifg:_internalSessionTrackingConfig:)();
  v24 = *(v20 + 32);
  v73 = v6;
  v24(v6 + OBJC_IVAR____TtCC7remindd27RDExtractIngredientsSessionP33_9D6AA108CADC804878354DD42EEB17DD11_ClientInfo_trackingConfig, v23, v19);
  v32 = *(a5 + 16);
  v76 = a4;
  v75 = a1;
  if (!v32 || (v33 = sub_100005F4C(0xD000000000000015, 0x80000001007F1520), (v25 & 1) == 0))
  {
    v52 = a5;
LABEL_23:
    v52, v25, v26, v27, v28, v29, v30, v31;
LABEL_68:
    type metadata accessor for TokenGenerator();
    static Catalog.ResourceBundle.TokenGeneration.LLM.SuggestRecipeItemsV2ID.getter();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static CachePolicy.inMemory.getter();
    GenerativeModelSessionConfiguration.init(identifier:handlesSensitiveData:cachePolicy:)();
    *(v73 + OBJC_IVAR____TtCC7remindd27RDExtractIngredientsSessionP33_9D6AA108CADC804878354DD42EEB17DD11_ClientInfo__model) = TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:parentOfOnBehalfOf:)();
    return;
  }

  v34 = (*(a5 + 56) + 16 * v33);
  v36 = *v34;
  v35 = v34[1];

  a5, v37, v38, v39, v40, v41, v42, v43;
  v44 = HIBYTE(v35) & 0xF;
  v25 = v36 & 0xFFFFFFFFFFFFLL;
  if ((v35 & 0x2000000000000000) != 0)
  {
    v45 = HIBYTE(v35) & 0xF;
  }

  else
  {
    v45 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v45)
  {
    v52 = v35;
    goto LABEL_23;
  }

  if ((v35 & 0x1000000000000000) != 0)
  {
    sub_1002F62B8(v36, v35, 10);
    goto LABEL_67;
  }

  if ((v35 & 0x2000000000000000) == 0)
  {
    if ((v36 & 0x1000000000000000) != 0)
    {
      v46 = ((v35 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v46 = _StringObject.sharedUTF8.getter();
    }

    v47 = *v46;
    if (v47 == 43)
    {
      if (v25 >= 1)
      {
        v44 = v25 - 1;
        if (v25 != 1)
        {
          v57 = 0;
          if (v46)
          {
            v58 = v46 + 1;
            while (1)
            {
              v59 = *v58 - 48;
              if (v59 > 9)
              {
                goto LABEL_65;
              }

              v60 = 10 * v57;
              if ((v57 * 10) >> 64 != (10 * v57) >> 63)
              {
                goto LABEL_65;
              }

              v57 = v60 + v59;
              if (__OFADD__(v60, v59))
              {
                goto LABEL_65;
              }

              ++v58;
              if (!--v44)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_57;
        }

        goto LABEL_65;
      }

      goto LABEL_74;
    }

    if (v47 != 45)
    {
      if (v25)
      {
        v65 = 0;
        if (v46)
        {
          while (1)
          {
            v66 = *v46 - 48;
            if (v66 > 9)
            {
              goto LABEL_65;
            }

            v67 = 10 * v65;
            if ((v65 * 10) >> 64 != (10 * v65) >> 63)
            {
              goto LABEL_65;
            }

            v65 = v67 + v66;
            if (__OFADD__(v67, v66))
            {
              goto LABEL_65;
            }

            ++v46;
            if (!--v25)
            {
              goto LABEL_57;
            }
          }
        }

        goto LABEL_57;
      }

LABEL_65:
      LOBYTE(v44) = 1;
      goto LABEL_66;
    }

    if (v25 >= 1)
    {
      v44 = v25 - 1;
      if (v25 != 1)
      {
        v48 = 0;
        if (v46)
        {
          v49 = v46 + 1;
          while (1)
          {
            v50 = *v49 - 48;
            if (v50 > 9)
            {
              goto LABEL_65;
            }

            v51 = 10 * v48;
            if ((v48 * 10) >> 64 != (10 * v48) >> 63)
            {
              goto LABEL_65;
            }

            v48 = v51 - v50;
            if (__OFSUB__(v51, v50))
            {
              goto LABEL_65;
            }

            ++v49;
            if (!--v44)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_57:
        LOBYTE(v44) = 0;
LABEL_66:
        v78 = v44;
LABEL_67:
        v35, v25, v26, v27, v28, v29, v30, v31;
        goto LABEL_68;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v77[0] = v36;
  v77[1] = v35 & 0xFFFFFFFFFFFFFFLL;
  if (v36 != 43)
  {
    if (v36 != 45)
    {
      if (v44)
      {
        v68 = 0;
        v69 = v77;
        while (1)
        {
          v70 = *v69 - 48;
          if (v70 > 9)
          {
            break;
          }

          v71 = 10 * v68;
          if ((v68 * 10) >> 64 != (10 * v68) >> 63)
          {
            break;
          }

          v68 = v71 + v70;
          if (__OFADD__(v71, v70))
          {
            break;
          }

          ++v69;
          if (!--v44)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v44)
    {
      if (--v44)
      {
        v53 = 0;
        v54 = v77 + 1;
        while (1)
        {
          v55 = *v54 - 48;
          if (v55 > 9)
          {
            break;
          }

          v56 = 10 * v53;
          if ((v53 * 10) >> 64 != (10 * v53) >> 63)
          {
            break;
          }

          v53 = v56 - v55;
          if (__OFSUB__(v56, v55))
          {
            break;
          }

          ++v54;
          if (!--v44)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_73;
  }

  if (v44)
  {
    if (--v44)
    {
      v61 = 0;
      v62 = v77 + 1;
      while (1)
      {
        v63 = *v62 - 48;
        if (v63 > 9)
        {
          break;
        }

        v64 = 10 * v61;
        if ((v61 * 10) >> 64 != (10 * v61) >> 63)
        {
          break;
        }

        v61 = v64 + v63;
        if (__OFADD__(v64, v63))
        {
          break;
        }

        ++v62;
        if (!--v44)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_75:
  __break(1u);
}

uint64_t sub_1002F5CF0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtCC7remindd27RDExtractIngredientsSessionP33_9D6AA108CADC804878354DD42EEB17DD11_ClientInfo_trackingConfig;
  v10 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t sub_1002F5DA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC7remindd27RDExtractIngredientsSessionP33_9D6AA108CADC804878354DD42EEB17DD11_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1002F5E30(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC7remindd27RDExtractIngredientsSessionP33_9D6AA108CADC804878354DD42EEB17DD11_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t type metadata accessor for RDExtractIngredientsSession._ClientInfo(uint64_t a1)
{
  result = qword_1009415B0;
  if (!qword_1009415B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002F5FB4(uint64_t a1)
{
  result = type metadata accessor for _ClientInfoSessionTrackingConfig();
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

void sub_1002F605C(uint64_t a1, uint64_t a2)
{
  sub_1002F6D58(&qword_100941660, a2, type metadata accessor for RDExtractIngredientsSession, &unk_1007A1690);

  GenerativeModelSessionTokenGenerator.prewarm()();
}

uint64_t sub_1002F60C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1002F6170;

  return sub_1002F36D0(a1, a2);
}

uint64_t sub_1002F6170(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

void sub_1002F62B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a1;
  v80 = a2;

  v4 = String.init<A>(_:)();
  v12 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v41 = v5;
    v12 = sub_1002F6844(v4, v5);
    v43 = v42;
    v41, v42, v44, v45, v46, v47, v48, v49;
    v5 = v43;
    if ((v43 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v12 & 0x1000000000000000) != 0)
    {
      v13 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v77 = v5;
      v13 = _StringObject.sharedUTF8.getter();
      v14 = v78;
      v5 = v77;
    }

    v15 = *v13;
    if (v15 == 43)
    {
      if (v14 >= 1)
      {
        v25 = v14 - 1;
        if (v25)
        {
          v26 = a3 + 48;
          v27 = a3 + 55;
          v28 = a3 + 87;
          if (a3 > 10)
          {
            v26 = 58;
          }

          else
          {
            v28 = 97;
            v27 = 65;
          }

          if (v13)
          {
            v29 = 0;
            v30 = v13 + 1;
            while (1)
            {
              v31 = *v30;
              if (v31 < 0x30 || v31 >= v26)
              {
                if (v31 < 0x41 || v31 >= v27)
                {
                  if (v31 < 0x61 || v31 >= v28)
                  {
                    goto LABEL_125;
                  }

                  v32 = -87;
                }

                else
                {
                  v32 = -55;
                }
              }

              else
              {
                v32 = -48;
              }

              v33 = v29 * a3;
              if ((v29 * a3) >> 64 == (v29 * a3) >> 63)
              {
                v29 = v33 + (v31 + v32);
                if (!__OFADD__(v33, (v31 + v32)))
                {
                  ++v30;
                  if (--v25)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v15 != 45)
    {
      if (v14)
      {
        v34 = a3 + 48;
        v35 = a3 + 55;
        v36 = a3 + 87;
        if (a3 > 10)
        {
          v34 = 58;
        }

        else
        {
          v36 = 97;
          v35 = 65;
        }

        if (v13)
        {
          v37 = 0;
          while (1)
          {
            v38 = *v13;
            if (v38 < 0x30 || v38 >= v34)
            {
              if (v38 < 0x41 || v38 >= v35)
              {
                if (v38 < 0x61 || v38 >= v36)
                {
                  goto LABEL_125;
                }

                v39 = -87;
              }

              else
              {
                v39 = -55;
              }
            }

            else
            {
              v39 = -48;
            }

            v40 = v37 * a3;
            if ((v37 * a3) >> 64 == (v37 * a3) >> 63)
            {
              v37 = v40 + (v38 + v39);
              if (!__OFADD__(v40, (v38 + v39)))
              {
                ++v13;
                if (--v14)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v14 >= 1)
    {
      v16 = v14 - 1;
      if (v16)
      {
        v17 = a3 + 48;
        v18 = a3 + 55;
        v19 = a3 + 87;
        if (a3 > 10)
        {
          v17 = 58;
        }

        else
        {
          v19 = 97;
          v18 = 65;
        }

        if (v13)
        {
          v20 = 0;
          v21 = v13 + 1;
          while (1)
          {
            v22 = *v21;
            if (v22 < 0x30 || v22 >= v17)
            {
              if (v22 < 0x41 || v22 >= v18)
              {
                if (v22 < 0x61 || v22 >= v19)
                {
                  break;
                }

                v23 = -87;
              }

              else
              {
                v23 = -55;
              }
            }

            else
            {
              v23 = -48;
            }

            v24 = v20 * a3;
            if ((v20 * a3) >> 64 == (v20 * a3) >> 63)
            {
              v20 = v24 - (v22 + v23);
              if (!__OFSUB__(v24, (v22 + v23)))
              {
                ++v21;
                if (--v16)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:
      v5, v5, v6, v7, v8, v9, v10, v11;
      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v50 = HIBYTE(v5) & 0xF;
  v79 = v12;
  v80 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v12 != 43)
  {
    if (v12 != 45)
    {
      if (v50)
      {
        v69 = 0;
        v70 = a3 + 48;
        v71 = a3 + 55;
        v72 = a3 + 87;
        if (a3 > 10)
        {
          v70 = 58;
        }

        else
        {
          v72 = 97;
          v71 = 65;
        }

        v73 = &v79;
        while (1)
        {
          v74 = *v73;
          if (v74 < 0x30 || v74 >= v70)
          {
            if (v74 < 0x41 || v74 >= v71)
            {
              if (v74 < 0x61 || v74 >= v72)
              {
                goto LABEL_125;
              }

              v75 = -87;
            }

            else
            {
              v75 = -55;
            }
          }

          else
          {
            v75 = -48;
          }

          v76 = v69 * a3;
          if ((v69 * a3) >> 64 == (v69 * a3) >> 63)
          {
            v69 = v76 + (v74 + v75);
            if (!__OFADD__(v76, (v74 + v75)))
            {
              v73 = (v73 + 1);
              if (--v50)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v50)
    {
      v51 = v50 - 1;
      if (v51)
      {
        v52 = 0;
        v53 = a3 + 48;
        v54 = a3 + 55;
        v55 = a3 + 87;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v56 = &v79 + 1;
        while (1)
        {
          v57 = *v56;
          if (v57 < 0x30 || v57 >= v53)
          {
            if (v57 < 0x41 || v57 >= v54)
            {
              if (v57 < 0x61 || v57 >= v55)
              {
                goto LABEL_125;
              }

              v58 = -87;
            }

            else
            {
              v58 = -55;
            }
          }

          else
          {
            v58 = -48;
          }

          v59 = v52 * a3;
          if ((v52 * a3) >> 64 == (v52 * a3) >> 63)
          {
            v52 = v59 - (v57 + v58);
            if (!__OFSUB__(v59, (v57 + v58)))
            {
              ++v56;
              if (--v51)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v50)
  {
    v60 = v50 - 1;
    if (v60)
    {
      v61 = 0;
      v62 = a3 + 48;
      v63 = a3 + 55;
      v64 = a3 + 87;
      if (a3 > 10)
      {
        v62 = 58;
      }

      else
      {
        v64 = 97;
        v63 = 65;
      }

      v65 = &v79 + 1;
      while (1)
      {
        v66 = *v65;
        if (v66 < 0x30 || v66 >= v62)
        {
          if (v66 < 0x41 || v66 >= v63)
          {
            if (v66 < 0x61 || v66 >= v64)
            {
              goto LABEL_125;
            }

            v67 = -87;
          }

          else
          {
            v67 = -55;
          }
        }

        else
        {
          v67 = -48;
        }

        v68 = v61 * a3;
        if ((v61 * a3) >> 64 == (v61 * a3) >> 63)
        {
          v61 = v68 + (v66 + v67);
          if (!__OFADD__(v68, (v66 + v67)))
          {
            ++v65;
            if (--v60)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_1002F6844(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v4 = v3;
  v7 = sub_1002F68C4(v2, v5, v6, v3);
  v4, v8, v9, v10, v11, v12, v13, v14;
  return v7;
}

uint64_t sub_1002F68C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100009794(v9, 0), v12 = sub_1002F6A1C(v22, &v11->clientIdentity[16], v10, a1, a2, a3, a4), v13 = v22[3], , v13, v14, v15, v16, v17, v18, v19, v20, v12 == v10))
    {
      v21 = static String._uncheckedFromUTF8(_:)();

      return v21;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v22[0] = a3;
      v22[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1002F6A1C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1002F6C3C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1002F6C3C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1002F6C3C(unint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1002F6CB8(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_10093DB38, &qword_10079B890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002F6D58(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002F6DA0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100941670);
  v1 = sub_100006654(v0, qword_100941670);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1002F6E68(char a1)
{
  result = 0x44497463656A626FLL;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
    case 20:
      result = 0xD00000000000001CLL;
      break;
    case 5:
    case 12:
    case 22:
      result = 0xD000000000000019;
      break;
    case 6:
    case 17:
    case 24:
      v3 = 5;
      goto LABEL_16;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
    case 10:
      result = 0x44496E6F73726570;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD00000000000001DLL;
      break;
    case 15:
      result = 0x6576697463616E69;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0x6F54636E79536164;
      break;
    case 19:
      result = 0x654B687375506164;
      break;
    case 21:
      v3 = 13;
LABEL_16:
      result = v3 | 0xD000000000000012;
      break;
    case 23:
      result = 0x67694D7361576164;
      break;
    case 25:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002F70F4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1002F6E68(*a1);
  v5 = v4;
  v6 = sub_1002F6E68(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_1002F717C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1002F6E68(v1);
  v3 = v2;
  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

double sub_1002F71E0(uint64_t a1)
{
  sub_1002F6E68(*v1);
  v3 = v2;
  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

Swift::Int sub_1002F7234(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1002F6E68(v2);
  v4 = v3;
  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}