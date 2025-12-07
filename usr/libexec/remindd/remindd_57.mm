void sub_100539C18(id *a1)
{
  v1 = [*a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_100539C70(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = _s10PredicatesOMa(0);
  __chkstk_darwin(v10, v11);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      *&v104 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      goto LABEL_4;
    }

    goto LABEL_62;
  }

LABEL_58:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_62;
  }

  v100 = v10;
  v90 = _CocoaArrayWrapper.endIndex.getter();
  v10 = &_swiftEmptyArrayStorage;
  if (v90)
  {
    v14 = v90;
    *&v104 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = v100;
    if ((v14 & 0x8000000000000000) == 0)
    {
LABEL_4:
      v99 = a2;
      v100 = v10;
      *&v97 = a4;
      v98 = a3;
      v95 = v5;
      v15 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v16 = *(a1 + 8 * v15 + 32);
        }

        v17 = v16;
        ++v15;
        v18 = [v16 objectID];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v14 != v15);
      v10 = v104;
      a4 = v97;
      goto LABEL_10;
    }

    __break(1u);
LABEL_62:
    sub_10038E654(&_swiftEmptyArrayStorage);
    return;
  }

  while (2)
  {
    v98 = a3;
    v99 = a2;
    v95 = v5;
LABEL_10:
    v19 = *(sub_1000F5104(&qword_100946050, &qword_1007B0450) + 48);
    *v13 = v10;
    v20 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
    (*(*(v20 - 8) + 16))(&v13[v19], v99, v20);
    swift_storeEnumTagMultiPayload();
    v21 = sub_100043AA8();
    sub_1005401EC(v13, _s10PredicatesOMa);
    v100 = v21;
    v22 = sub_1005362CC(a4, v21);
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v23 = swift_allocObject();
    v97 = xmmword_100791300;
    *(v23 + 16) = xmmword_100791300;
    v24 = objc_opt_self();
    v25 = [v24 expressionForEvaluatedObject];
    *(v23 + 56) = sub_1000060C8(0, &qword_100939F40, NSExpression_ptr);
    *(v23 + 32) = v25;
    v26 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v23, v28, v29, v30, v31, v32, v33, v34;
    v35 = [v24 expressionForFunction:v26 arguments:isa];

    v36 = [objc_allocWithZone(NSExpressionDescription) init];
    v99 = v35;
    [v36 setExpression:v35];
    v37 = v36;
    v38 = String._bridgeToObjectiveC()();
    [v37 setName:v38];

    [v37 setExpressionResultType:300];
    [v22 setReturnsObjectsAsFaults:0];
    v39 = swift_allocObject();
    *(v39 + 16) = v97;
    *(v39 + 56) = &type metadata for String;
    strcpy((v39 + 32), "parentReminder");
    *(v39 + 47) = -18;
    v40 = Array._bridgeToObjectiveC()().super.isa;
    v41 = v39;
    a3 = 0xEE007265646E696DLL;
    v41, v42, v43, v44, v45, v46, v47, v48;
    [v22 setPropertiesToGroupBy:v40];

    a4 = 0x6552746E65726170;
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_100791340;
    *(v49 + 56) = &type metadata for String;
    strcpy((v49 + 32), "parentReminder");
    *(v49 + 47) = -18;
    *(v49 + 88) = sub_1000060C8(0, &qword_100939F48, NSExpressionDescription_ptr);
    *(v49 + 64) = v37;
    v50 = v37;
    v51 = Array._bridgeToObjectiveC()().super.isa;
    v49, v52, v53, v54, v55, v56, v57, v58;
    [v22 setPropertiesToFetch:v51];

    [v22 setResultType:2];
    sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
    v59 = v95;
    v60 = NSManagedObjectContext.fetch<A>(_:)();
    if (v59)
    {

      return;
    }

    v93 = v50;
    v95 = 0;
    v106 = _swiftEmptyDictionarySingleton;
    v13 = (v60 >> 62);
    a2 = v60;
    v94 = v22;
    if (v60 >> 62)
    {
      v61 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = 0x746E756F63;
    v5 = v99;
    sub_1000F5104(&qword_10094BE08, qword_1007B0458);
    Dictionary.reserveCapacity(_:)(v61);
    if (v13)
    {
      v62 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v100;
      v98 = v62;
      if (!v62)
      {
LABEL_55:

        a2, v83, v84, v85, v86, v87, v88, v89;
        return;
      }
    }

    else
    {
      v10 = v100;
      v98 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v98)
      {
        goto LABEL_55;
      }
    }

    v63 = 0;
    v96 = a2 & 0xFFFFFFFFFFFFFF8;
    *&v97 = a2 & 0xC000000000000001;
    v92 = a2;
    while (1)
    {
      if (v97)
      {
        v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v63 >= *(v96 + 16))
        {
          goto LABEL_57;
        }

        v64 = *(a2 + 8 * v63 + 32);
      }

      v10 = v64;
      v5 = (v63 + 1);
      if (__OFADD__(v63, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      *&v102 = 0x746E756F63;
      *(&v102 + 1) = 0xE500000000000000;
      v13 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v65 = [(RDXPCStorePerformer *)v10 __swift_objectForKeyedSubscript:v13];
      swift_unknownObjectRelease();
      if (v65)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v102 = 0u;
        v103 = 0u;
      }

      v104 = v102;
      v105 = v103;
      if (*(&v103 + 1))
      {
        break;
      }

      sub_1000050A4(&v104, &qword_100939ED0, &qword_100791B10);
LABEL_44:
      v10 = v100;
LABEL_45:
      ++v63;
      v78 = v5 == v98;
      v5 = v99;
      if (v78)
      {
        goto LABEL_55;
      }
    }

    sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_44;
    }

    v66 = v101;
    v67 = [v101 integerValue];

    if (v67 <= 0)
    {
      goto LABEL_41;
    }

    strcpy(&v102, "parentReminder");
    HIBYTE(v102) = -18;
    v13 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v68 = [(RDXPCStorePerformer *)v10 __swift_objectForKeyedSubscript:v13];
    swift_unknownObjectRelease();
    if (v68)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v102 = 0u;
      v103 = 0u;
    }

    v104 = v102;
    v105 = v103;
    if (!*(&v103 + 1))
    {

      sub_1000050A4(&v104, &qword_100939ED0, &qword_100791B10);
      goto LABEL_43;
    }

    v69 = sub_1000060C8(0, &qword_100943230, NSManagedObjectID_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_41:

LABEL_43:
      a1 = 0x746E756F63;
      goto LABEL_44;
    }

    v91 = v69;
    v13 = v101;
    v70 = v106;
    a4 = swift_isUniquelyReferenced_nonNull_native();
    *&v104 = v70;
    a2 = sub_100363FF4(v13);
    v72 = v70[2];
    v73 = (v71 & 1) == 0;
    v74 = v72 + v73;
    if (__OFADD__(v72, v73))
    {
      __break(1u);
      continue;
    }

    break;
  }

  v75 = v71;
  if (v70[3] >= v74)
  {
    if ((a4 & 1) == 0)
    {
      sub_1003739EC();
    }
  }

  else
  {
    sub_10036AF34(v74, a4);
    v76 = sub_100363FF4(v13);
    if ((v75 & 1) != (v77 & 1))
    {
      goto LABEL_67;
    }

    a2 = v76;
  }

  a4 = 0x6552746E65726170;
  v79 = v104;
  if (v75)
  {
    *(*(v104 + 56) + 8 * a2) = v67;

LABEL_54:
    a3 = 0xEE007265646E696DLL;
    a1 = 0x746E756F63;
    v10 = v100;
    a2 = v92;
    v106 = v79;
    goto LABEL_45;
  }

  *(v104 + 8 * (a2 >> 6) + 64) |= 1 << a2;
  *(v79[6] + 8 * a2) = v13;
  *(v79[7] + 8 * a2) = v67;

  v80 = v79[2];
  v81 = __OFADD__(v80, 1);
  v82 = v80 + 1;
  if (!v81)
  {
    v79[2] = v82;
    goto LABEL_54;
  }

  __break(1u);
LABEL_67:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10053A630(_TtC7remindd19RDXPCStorePerformer **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _TtC7remindd19RDXPCStorePerformer *a4@<X3>, void (*a5)(char *, char *, uint64_t)@<X4>, _TtC7remindd19RDXPCStorePerformer *a6@<X5>, _TtC7remindd19RDXPCStorePerformer *a7@<X6>, uint64_t a8@<X8>, _TtC7remindd19RDXPCStorePerformer **a9, objc_class *a10, char a11, uint64_t a12, uint64_t a13)
{
  v491 = a7;
  v492 = a6;
  v496 = a5;
  v497 = a4;
  v17 = sub_1000F5104(&qword_100939860, &unk_10079D480);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  v481 = &v474 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v480 = &v474 - v23;
  __chkstk_darwin(v24, v25);
  v477 = &v474 - v26;
  v483 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v484 = *(v483 - 8);
  __chkstk_darwin(v483, v27);
  v476 = &v474 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v30);
  v479 = &v474 - v31;
  __chkstk_darwin(v32, v33);
  v482 = &v474 - v34;
  v487 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v487, v35);
  v478 = &v474 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37, v38);
  v486 = &v474 - v39;
  __chkstk_darwin(v40, v41);
  v485 = (&v474 - v42);
  v489 = _s10PredicatesOMa(0);
  __chkstk_darwin(v489, v43);
  v490 = (&v474 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v46 = *(Subtasks - 8);
  *&v48 = __chkstk_darwin(Subtasks, v47).n128_u64[0];
  v50 = &v474 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *a1;
  v52 = [(RDXPCStorePerformer *)v51 remObjectID];
  if (!v52)
  {
    (*(v18 + 56))(a8, 1, 1, v17);
    return;
  }

  v499 = v52;
  v493 = v18;
  v495 = v17;
  v498 = a8;
  v500 = v51;
  v53 = sub_10053BBF8(a2);
  v55 = v54;
  (*(v46 + 16))(v50, a3, Subtasks);
  v56 = (*(v46 + 88))(v50, Subtasks);
  v494 = v55;
  if (v56 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:))
  {
    v488 = v53;
    v57 = 0;
    v58 = 0;
    v59 = 1;
LABEL_4:
    v60 = v498;
LABEL_5:
    v61 = v499;
    sub_10031E0C4(v57, v59, v61);
    v62 = v61;
    sub_10031E750(v58, v62);
    v63 = v500;
    v502 = v500;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v64 = v63;
    REMSortableElement.init(element:sortIndex:)();

    (*(v493 + 56))(v60, 0, 1, v495);
    return;
  }

  if (v56 != enum case for REMRemindersListDataView.FetchSubtasks.on(_:))
  {
    if (v56 == enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
    {
      swift_beginAccess();
      v60 = v498;
      if (*(a13 + 16))
      {
        v112 = *(a13 + 16);
      }

      else
      {
        v149 = v492;
        swift_beginAccess();
        v150 = *v149->clientIdentity;

        v152 = v501;
        sub_100539C70(v151, v491, v496, a10);
        if (v152)
        {

          v150, v161, v162, v163, v164, v165, v166, v167;
          return;
        }

        v112 = v153;
        v150, v154, v155, v156, v157, v158, v159, v160;
        swift_beginAccess();
        v191 = *(a13 + 16);
        *(a13 + 16) = v112;

        v191, v192, v193, v194, v195, v196, v197, v198;
      }

      v113 = [(RDXPCStorePerformer *)v500 objectID];
      v114 = v113;
      v115 = *(v112 + 16);
      v488 = v53;
      if (v115 && (v116 = sub_100363FF4(v113), (v117 & 1) != 0))
      {
        v57 = *(*(v112 + 56) + 8 * v116);
        v112, v117, v118, v119, v120, v121, v122, v123;

        v59 = 0;
        v58 = 0;
      }

      else
      {

        v112, v124, v125, v126, v127, v128, v129, v130;
        v57 = 0;
        v58 = 0;
        v59 = 1;
      }

      goto LABEL_5;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_103;
  }

  v475 = a2;
  v65 = v497;
  swift_beginAccess();
  v66 = v500;
  if (*v65->clientIdentity)
  {
    v67 = *v65->clientIdentity;
    v68 = v501;
  }

  else
  {
    v131 = v492;
    swift_beginAccess();
    v132 = *v131->clientIdentity;

    v133 = v501;
    v134 = sub_10053FB3C(v496, v132);
    v68 = v133;
    if (v133)
    {

      v132, v142, v143, v144, v145, v146, v147, v148;
      return;
    }

    v67 = v134;
    v132, v135, v136, v137, v138, v139, v140, v141;
    swift_beginAccess();
    v183 = *v65->clientIdentity;
    *v65->clientIdentity = v67;

    v183, v184, v185, v186, v187, v188, v189, v190;
    v66 = v500;
  }

  if ((sub_100240EEC(v499, v67) & 1) == 0)
  {
    v488 = v53;
    v67, v69, v70, v71, v72, v73, v74, v75;
    v57 = 0;
    v58 = 0;
    v59 = 1;
    goto LABEL_4;
  }

  v76 = *a9;
  v502 = 0;

  v77 = [(RDXPCStorePerformer *)v66 remObjectIDWithError:&v502];
  v78 = v502;
  if (!v77)
  {
    v168 = v502;
    v67, v169, v170, v171, v172, v173, v174, v175;
    v76, v176, v177, v178, v179, v180, v181, v182;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v79 = v77;
  v501 = a10;
  v497 = v67;
  v488 = v53;
  v80 = sub_1000F5104(&qword_100946058, qword_1007A75D0);
  v81 = *(v80 + 48);
  v82 = *(v80 + 64);
  v83 = v490;
  v490->super.isa = v79;
  v84 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v85 = v491;
  (*(*(v84 - 8) + 16))(v83 + v81, v491, v84);
  *(&v83->super.isa + v82) = a11 & 1;
  swift_storeEnumTagMultiPayload();
  v86 = v78;
  v87 = sub_100043AA8();
  if (qword_1009363F8 != -1)
  {
    swift_once();
  }

  v88 = sub_100050654(qword_100974F68, v76, v501, v87);
  v76, v89, v90, v91, v92, v93, v94, v95;

  v96 = sub_10053CE0C(v475, v85, 0);
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v96, v98, v99, v100, v101, v102, v103, v104;
  [(RDXPCStorePerformer *)v88 setSortDescriptors:isa];

  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v58 = NSManagedObjectContext.fetch<A>(_:)();

  v60 = v498;
  if (v68)
  {
    v497, v105, v106, v107, v108, v109, v110, v111;

    sub_1005401EC(v490, _s10PredicatesOMa);
    return;
  }

  sub_1005401EC(v490, _s10PredicatesOMa);
  if (v58 >> 62)
  {
    v199 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v199 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v200 = v500;
  v201 = v486;
  v202 = v485;
  if (v199)
  {
    sub_1005402B4(v475, v485, _s9UtilitiesO12SortingStyleOMa);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      sub_1005401EC(v202, _s9UtilitiesO12SortingStyleOMa);
      goto LABEL_51;
    }

    v203 = v202;
    v204 = *v202;
    v206 = v203[1];
    v205 = v203[2];
    v207 = v203[3];
    v208 = v203[4];

    if (a12)
    {
      v501 = 0;

      v200 = v500;
      v212 = [(RDXPCStorePerformer *)v500 remObjectID];
      if (v212)
      {
        v216 = v212;
        v492 = v207;
        v490 = v205;
        v496 = v58;
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007953F0;
        *(inited + 32) = v200;
        v218 = v200;
        v219 = sub_1001A574C(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_1002143F0(v219);
        v221 = v220;
        v219, v222, v223, v224, v225, v226, v227, v228;
        v229 = sub_100353598(v216, v221);

        v221, v230, v231, v232, v233, v234, v235, v236;
        if (v229)
        {
          v58 = v496;
          v240 = v492;
          if (v204 && (sub_1002CE6A8(v229, v206), v242 = v241, v208, v243, v244, v245, v246, v247, v248, v249, v240, v250, v251, v252, v253, v254, v255, v256, v490, v257, v258, v259, v260, v261, v262, v263, v206, v264, v265, v266, v267, v268, v269, v270, v204, v271, v272, v273, v274, v275, v276, v277, v242))
          {
            v60 = v498;
            if (*(v242 + 16))
            {
              v278 = sub_100155828(v242, v491, a12, v58);
              v58, v279, v280, v281, v282, v283, v284, v285;
              v242, v286, v287, v288, v289, v290, v291, v292;

              v58 = v278;
            }

            else
            {

              v242, v293, v294, v295, v296, v297, v298, v299;
            }

            v68 = v501;
          }

          else
          {

            v68 = v501;
            v60 = v498;
          }

          goto LABEL_49;
        }

        sub_100524898(v204, v206, v490, v492, v208, v237, v238, v239);

        v200 = v500;
        v68 = v501;
        v60 = v498;
        v58 = v496;
      }

      else
      {
        sub_100524898(v204, v206, v205, v207, v208, v213, v214, v215);

        v68 = v501;
        v60 = v498;
      }

LABEL_50:
      v201 = v486;
      goto LABEL_51;
    }

    sub_100524898(v204, v206, v205, v207, v208, v209, v210, v211);
    v60 = v498;
LABEL_49:
    v200 = v500;
    goto LABEL_50;
  }

LABEL_51:
  if (v58 >> 62)
  {
    v57 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v57 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1005402B4(v475, v201, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v497, v301, v302, v303, v304, v305, v306, v307;
      v314 = v484;
      v315 = v479;
      v316 = v483;
      (*(v484 + 32))(v479, v201, v483);
      v317 = sub_1001561A0(v315, v491, v58);
      v58, v318, v319, v320, v321, v322, v323, v324;
      (*(v314 + 8))(v315, v316);
      v59 = 0;
      v58 = v317;
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload != 4)
    {
LABEL_65:
      v497, v301, v302, v303, v304, v305, v306, v307;
      v59 = 0;
      goto LABEL_5;
    }

LABEL_59:
    v497, v301, v302, v303, v304, v305, v306, v307;
    sub_1005401EC(v201, _s9UtilitiesO12SortingStyleOMa);
    v59 = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload >= 2)
  {
    goto LABEL_59;
  }

  v308 = v484;
  v309 = v482;
  v310 = v201;
  v311 = v483;
  (*(v484 + 32))(v482, v310, v483);
  v312 = [(RDXPCStorePerformer *)v200 completed];
  if (v312)
  {
    (*(v308 + 8))(v309, v311);
    goto LABEL_65;
  }

  __chkstk_darwin(v312, v313);
  v325 = v475;
  *(&v474 - 2) = v475;

  sub_10024CAF0(sub_10054024C, (&v474 - 4), v58);
  v327 = v326;
  v58, v328, v329, v330, v331, v332, v333, v334;
  v342 = v494;
  if (!*v327->clientIdentity)
  {
    (*(v484 + 8))(v482, v483);
    v327, v345, v346, v347, v348, v349, v350, v351;
    goto LABEL_65;
  }

  v58, v335, v336, v337, v338, v339, v340, v341;
  v343 = v478;
  sub_1005402B4(v325, v478, _s9UtilitiesO12SortingStyleOMa);
  v344 = swift_getEnumCaseMultiPayload();
  sub_1005401EC(v343, _s9UtilitiesO12SortingStyleOMa);
  v490 = v327;
  if (v344 == 1)
  {
    v327 = sub_100156950(v482, v491, v327);
  }

  else
  {
  }

  v352 = *v327->clientIdentity;
  v58 = &_swiftEmptyArrayStorage;
  v501 = v68;
  v489 = v57;
  v491 = v327;
  if (v352)
  {
    v502 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v496 = *(v493 + 16);
    v353 = v327 + ((*(v493 + 80) + 32) & ~*(v493 + 80));
    v492 = *(v493 + 72);
    v354 = (v493 + 8);
    v355 = v495;
    v356 = v477;
    do
    {
      v496(v356, v353, v355);
      REMSortableElement.element.getter();
      (*v354)(v356, v355);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v353 = v492 + v353;
      --v352;
    }

    while (v352);
    v58 = v502;
    v60 = v498;
    v342 = v494;
    v57 = v489;
    v327 = v491;
  }

  v357 = v483;
  v358 = v484;
  if ((v342 & 1) == 0)
  {
    (*(v484 + 8))(v482, v483);
    v327, v403, v404, v405, v406, v407, v408, v409;
    v490, v410, v411, v412, v413, v414, v415, v416;
    v497, v417, v418, v419, v420, v421, v422, v423;
    v494 = 0;
    v59 = 0;
    goto LABEL_5;
  }

  v359 = v476;
  v360 = v482;
  (*(v484 + 16))(v476, v482, v483);
  v361 = (*(v358 + 88))(v359, v357);
  if (v361 == enum case for REMRemindersListDataView.SortingDirection.ascending(_:))
  {
    (*(v358 + 8))(v360, v357);
    v490, v362, v363, v364, v365, v366, v367, v368;
    v497, v369, v370, v371, v372, v373, v374, v375;
    v383 = *v327->clientIdentity;
    if (v383)
    {
      v496 = v58;
      v497 = *(v493 + 16);
      v384 = v327 + ((*(v493 + 80) + 32) & ~*(v493 + 80));
      v385 = *(v493 + 72);
      v386 = (v493 + 8);
      v387 = &_swiftEmptyArrayStorage;
      v388 = v495;
      do
      {
        v389 = v480;
        (v497)(v480, v384, v388);
        v390 = REMSortableElement.sortIndex.getter();
        v391 = v388;
        v393 = v392;
        (*v386)(v389, v391);
        if ((v393 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v387 = sub_100366E3C(0, *v387->clientIdentity + 1, 1, v387, v397, v398, v399, v400);
          }

          v402 = *v387->clientIdentity;
          v401 = *&v387->clientIdentity[8];
          if (v402 >= v401 >> 1)
          {
            v387 = sub_100366E3C((v401 > 1), v402 + 1, 1, v387, v397, v398, v399, v400);
          }

          *v387->clientIdentity = v402 + 1;
          *&v387->clientIdentity[8 * v402 + 16] = v390;
        }

        v384 += v385;
        --v383;
        v388 = v495;
      }

      while (v383);
      v491, v394, v395, v396, v397, v398, v399, v400;
      v60 = v498;
      v58 = v496;
      v57 = v489;
    }

    else
    {
      v327, v376, v377, v378, v379, v380, v381, v382;
      v387 = &_swiftEmptyArrayStorage;
    }

    v466 = sub_1002656D4(v387);
LABEL_99:
    v488 = v466;
    v494 = v467;
    v387, v467, v468, v469, v470, v471, v472, v473;
    v59 = 0;
    goto LABEL_5;
  }

  v424 = v493;
  if (v361 == enum case for REMRemindersListDataView.SortingDirection.descending(_:))
  {
    (*(v484 + 8))(v360, v357);
    v490, v425, v426, v427, v428, v429, v430, v431;
    v497, v432, v433, v434, v435, v436, v437, v438;
    v446 = *v491->clientIdentity;
    if (v446)
    {
      v496 = v58;
      v448 = *(v424 + 16);
      v447 = v424 + 16;
      v497 = v448;
      v449 = v491 + ((*(v447 + 64) + 32) & ~*(v447 + 64));
      v450 = *(v447 + 56);
      v387 = &_swiftEmptyArrayStorage;
      v451 = v495;
      do
      {
        v452 = v481;
        (v497)(v481, v449, v451);
        v453 = REMSortableElement.sortIndex.getter();
        v454 = v451;
        v456 = v455;
        (*(v447 - 8))(v452, v454);
        if ((v456 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v387 = sub_100366E3C(0, *v387->clientIdentity + 1, 1, v387, v460, v461, v462, v463);
          }

          v465 = *v387->clientIdentity;
          v464 = *&v387->clientIdentity[8];
          if (v465 >= v464 >> 1)
          {
            v387 = sub_100366E3C((v464 > 1), v465 + 1, 1, v387, v460, v461, v462, v463);
          }

          *v387->clientIdentity = v465 + 1;
          *&v387->clientIdentity[8 * v465 + 16] = v453;
        }

        v449 += v450;
        --v446;
        v451 = v495;
      }

      while (v446);
      v491, v457, v458, v459, v460, v461, v462, v463;
      v60 = v498;
      v58 = v496;
      v57 = v489;
    }

    else
    {
      v491, v439, v440, v441, v442, v443, v444, v445;
      v387 = &_swiftEmptyArrayStorage;
    }

    v466 = sub_100265718(v387);
    goto LABEL_99;
  }

LABEL_103:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

id sub_10053BBF8(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v28 - v14;
  v16 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v16, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005402B4(a1, v19, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v21 = 0.0;
    if ((EnumCaseMultiPayload - 2) >= 3)
    {
      return *&v21;
    }

    goto LABEL_15;
  }

  if (!EnumCaseMultiPayload)
  {
    v22 = [v1 displayDateDate];
    if (v22)
    {
      v23 = v22;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    (*(v4 + 56))(v11, v24, 1, v3);
    sub_10012F7FC(v11, v15);
    if (!(*(v4 + 48))(v15, 1, v3))
    {
      (*(v4 + 16))(v7, v15, v3);
      sub_1000050A4(v15, &unk_100938850, qword_100795AE0);
      Date.timeIntervalSinceReferenceDate.getter();
      v27 = v26;
      (*(v4 + 8))(v7, v3);
      v21 = v27;
      goto LABEL_15;
    }

    sub_1000050A4(v15, &unk_100938850, qword_100795AE0);
    goto LABEL_13;
  }

  if ([v1 priority] < 1)
  {
LABEL_13:
    v21 = 0.0;
    goto LABEL_15;
  }

  result = [v1 priority];
  if (!__OFSUB__(10, result))
  {
    v21 = (10 - result);
LABEL_15:
    sub_1005401EC(v19, _s9UtilitiesO12SortingStyleOMa);
    return *&v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_10053BF40(id *a1, uint64_t a2)
{
  v3 = *a1;
  sub_10053BBF8(a2);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  return REMSortableElement.init(element:sortIndex:)();
}

double sub_10053BFD0(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, void *a4, void *a5, uint64_t *a6)
{
  v143 = a6;
  *&v145 = a2;
  v10 = sub_1000F5104(&qword_100938C48, &qword_1007957D0);
  v141 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v140 = &v136 - v12;
  type metadata accessor for REMCDManualSortHint();
  if (qword_1009367E0 != -1)
  {
    swift_once();
  }

  v13 = qword_1009752F0;
  v142 = v10;
  v139 = qword_1009752F0;
  if (a1 != 1 || (, v14._countAndFlagsBits = v145, v14._object = a3, (v15 = REMSmartListType.init(stringValue:)(v14)) == 0))
  {
LABEL_12:

    v25 = a4;
    v26 = [a5 persistentStoreOfAccountWithAccountID:v25];
    if (v26)
    {
      v27 = v26;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1007953F0;
      *(v28 + 32) = v27;
    }

    else
    {
      v28 = 0;
    }

    *&v144 = a1;
    v29 = sub_1000398EC(a1, v145, a3, a4);
    v30 = [objc_allocWithZone(NSFetchRequest) init];
    v31 = [swift_getObjCClassFromMetadata() entity];
    [v30 setEntity:v31];

    if (v28)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v32.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v32.super.isa = 0;
    }

    [v30 setAffectedStores:v32.super.isa];

    [v30 setPredicate:v29];
    v28, v33, v34, v35, v36, v37, v38, v39;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1007953F0;
    if (qword_100935AA8 != -1)
    {
      swift_once();
    }

    v41 = qword_100974C08;
    *(v40 + 32) = qword_100974C08;
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v42 = v41;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v40, v44, v45, v46, v47, v48, v49, v50;
    [v30 setSortDescriptors:isa];

    v51 = NSManagedObjectContext.fetch<A>(_:)();
    v59 = v144;
    if (v51 >> 62)
    {
      v116 = v51;
      v117 = _CocoaArrayWrapper.endIndex.getter();
      v51 = v116;
      if (v117)
      {
        goto LABEL_22;
      }
    }

    else if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      if ((v51 & 0xC000000000000001) != 0)
      {
        v60 = v51;
        v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v60 = v51;
        v61 = *(v51 + 32);
      }

      v23 = v61;
      v60, v62, v63, v64, v65, v66, v67, v68;
      if (v59 == 1 && (v69 = [v23 remObjectID]) != 0)
      {
        v70 = v69;
        v71 = [v23 objectID];
        v72 = type metadata accessor for RDPredefinedObjectKey();
        v73 = objc_allocWithZone(v72);
        *&v73[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_accountID] = v25;
        *&v73[OBJC_IVAR____TtC7remindd21RDPredefinedObjectKey_objectID] = v70;
        v146.receiver = v73;
        v146.super_class = v72;
        v138 = v25;
        v137 = v70;
        v74 = objc_msgSendSuper2(&v146, "init");
        v75 = v141;
        v76 = v140;
        (*(v141 + 104))(v140, enum case for REMCache.ExecutionMode.asynchronously<A, B>(_:), v142);
        v77 = swift_allocObject();
        *(v77 + 16) = v71;
        *(v77 + 24) = v74;
        v78 = v71;
        v79 = v74;
        dispatch thunk of REMCache.performReadAndWrite(_:operations:)();

        a3, v80, v81, v82, v83, v84, v85, v86;

        (*(v75 + 8))(v76, v142);
      }

      else
      {

        a3, v87, v88, v89, v90, v91, v92, v93;
      }

      goto LABEL_29;
    }

    v51, v52, v53, v54, v55, v56, v57, v58;

    a3, v118, v119, v120, v121, v122, v123, v124;
    v115 = 0;
    v144 = 0u;
    v145 = 0u;
    goto LABEL_37;
  }

  v16 = v15;
  v17 = sub_100139BE4(v15, a4, v13);
  if (!v17)
  {

    goto LABEL_12;
  }

  v18 = v17;
  *&v147[0] = 0;
  v19 = [a5 existingObjectWithID:v17 error:v147];
  if (!v19)
  {
    v24 = *&v147[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    goto LABEL_12;
  }

  v20 = v19;
  v21 = *&v147[0];

  v22 = swift_dynamicCastClass();
  if (!v22)
  {

    goto LABEL_12;
  }

  v23 = v22;
LABEL_29:
  v94 = [objc_opt_self() sharedConfiguration];
  v95 = [v94 manualSortHintLastAccessedUpdatePolicy];

  v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v97;

  v99._countAndFlagsBits = v96;
  v99._object = v98;
  v100 = _findStringSwitchCase(cases:string:)(&off_1008DD3F0, v99);
  v98, v101, v102, v103, v104, v105, v106, v107;
  if (v100 >= 3)
  {
    LOBYTE(v100) = 2;
  }

  v108 = [v23 remObjectID];
  if (v108)
  {
    v109 = v108;
    v110 = [v108 description];

    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v112;
  }

  else
  {
    v113 = 0xE300000000000000;
    v111 = 7104878;
  }

  v114 = swift_allocObject();
  *(v114 + 16) = v111;
  *(v114 + 24) = v113;
  sub_1002D74D4(1, v100, sub_10013AF94, v114);

  v30 = v23;
  sub_100226C14(v147);
  v144 = v147[1];
  v145 = v147[0];
  v115 = v148;

LABEL_37:
  v125 = v143;
  v126 = *v143;
  v127 = v143[1];
  v128 = v143[2];
  v129 = v143[3];
  v130 = v143[4];
  v131 = v144;
  *v143 = v145;
  *(v125 + 1) = v131;
  v125[4] = v115;
  return sub_100524898(v126, v127, v128, v129, v130, v132, v133, v134);
}

uint64_t sub_10053C9CC()
{
  if (qword_1009367D8 != -1)
  {
    swift_once();
  }

  v0 = sub_100013674(qword_1009752E8);
  if (v0)
  {
    v1 = v0;
    sub_1006B038C();
    v3 = v2;
    v4 = type metadata accessor for RDManualSortIDCache();
    if (qword_100936508 != -1)
    {
      v4 = swift_once();
    }

    __chkstk_darwin(v4, v5);
    OS_dispatch_queue.sync<A>(execute:)();
    type metadata accessor for RDManualSortIDAdapter();
    swift_allocObject();
    v6 = sub_100214ECC(v12, v3, 0);
  }

  else
  {
    if (qword_1009363F0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_10094BDF0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "No primary active CloudKit account found when trying to fetch reminders in REMRemindersListDataView invocation with .manualWithSortHint sorting style", v10, 2u);
    }

    return 0;
  }

  return v6;
}

_TtC7remindd19RDXPCStorePerformer *sub_10053CBE4(uint64_t a1, __n128 a2)
{
  v3 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v3, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005402B4(a1, v6, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      goto LABEL_9;
    }

    sub_1005401EC(v6, _s9UtilitiesO12SortingStyleOMa);
    return &_swiftEmptyArrayStorage;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_9:
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007953F0;
    *(v8 + 32) = swift_getKeyPath();
    sub_1005401EC(v6, _s9UtilitiesO12SortingStyleOMa);
    return v8;
  }

  if (EnumCaseMultiPayload != 4)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1005401EC(v6, _s9UtilitiesO12SortingStyleOMa);
  if (qword_1009367E8 != -1)
  {
    swift_once();
  }

  v8 = qword_100975338;

  return v8;
}

uint64_t sub_10053CE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v84 = a2;
  v83 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v4 = *(v83 - 8);
  __chkstk_darwin(v83, v5);
  v82 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v80 - v14;
  __chkstk_darwin(v16, v17);
  v19 = &v80 - v18;
  __chkstk_darwin(v20, v21);
  v23 = &v80 - v22;
  v24 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v24, v25);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005402B4(a1, v27, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v8 + 32))(v15, v27, v7);
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1007953F0;
        (*(v8 + 104))(v19, enum case for REMRemindersListDataView.SortingDirection.descending(_:), v7);
        sub_10054026C(&qword_100939858, &type metadata accessor for REMRemindersListDataView.SortingDirection, &protocol conformance descriptor for REMRemindersListDataView.SortingDirection);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v30 = *(v8 + 8);
        v30(v19, v7);
        if (v87 == v86)
        {
          v31 = v81;
          if (qword_100936040 != -1)
          {
            swift_once();
          }

          v32 = &qword_100974DF0;
        }

        else
        {
          v31 = v81;
          if (qword_100936038 != -1)
          {
            swift_once();
          }

          v32 = &qword_100974DE8;
        }

        v52 = *v32;
        *(v29 + 32) = *v32;
        v87 = v29;
        if (v31)
        {
          v53 = v31;
        }

        else
        {
          v53 = swift_allocObject();
          *(v53 + 16) = xmmword_100796900;
          v61 = qword_100936048;
          v62 = v52;
          if (v61 != -1)
          {
            swift_once();
          }

          v63 = qword_100974DF8;
          *(v53 + 32) = qword_100974DF8;
          v64 = qword_100936030;
          v65 = v63;
          if (v64 != -1)
          {
            swift_once();
          }

          v52 = qword_100974DE0;
          *(v53 + 40) = qword_100974DE0;
        }

        v66 = v52;

        sub_100271560(v53);
        v67 = v15;
      }

      else
      {
        (*(v8 + 32))(v11, v27, v7);
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v42 = swift_allocObject();
        v80 = xmmword_1007953F0;
        *(v42 + 16) = xmmword_1007953F0;
        (*(v8 + 104))(v19, enum case for REMRemindersListDataView.SortingDirection.descending(_:), v7);
        sub_10054026C(&qword_100939858, &type metadata accessor for REMRemindersListDataView.SortingDirection, &protocol conformance descriptor for REMRemindersListDataView.SortingDirection);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v30 = *(v8 + 8);
        v30(v19, v7);
        if (v87 == v86)
        {
          v43 = v81;
          if (qword_100936050 != -1)
          {
            swift_once();
          }

          v44 = &qword_100974E00;
        }

        else
        {
          v43 = v81;
          if (qword_100936048 != -1)
          {
            swift_once();
          }

          v44 = &qword_100974DF8;
        }

        v54 = *v44;
        *(v42 + 32) = *v44;
        v87 = v42;
        if (v43)
        {
          v55 = v43;
        }

        else
        {
          v55 = swift_allocObject();
          *(v55 + 16) = v80;
          v68 = qword_100936030;
          v69 = v54;
          if (v68 != -1)
          {
            swift_once();
          }

          v54 = qword_100974DE0;
          *(v55 + 32) = qword_100974DE0;
        }

        v70 = v54;

        sub_100271560(v55);
        v67 = v11;
      }

      v30(v67, v7);
      goto LABEL_69;
    }

    (*(v8 + 32))(v23, v27, v7);
    v87 = &_swiftEmptyArrayStorage;
    (*(v8 + 104))(v19, enum case for REMRemindersListDataView.SortingDirection.descending(_:), v7);
    sub_10054026C(&qword_100939858, &type metadata accessor for REMRemindersListDataView.SortingDirection, &protocol conformance descriptor for REMRemindersListDataView.SortingDirection);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v37 = *(v8 + 8);
    v37(v19, v7);
    if (v86 == v85)
    {
      v38 = v81;
      if (qword_100936070 != -1)
      {
        swift_once();
      }

      v39 = qword_100974E20;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v38)
      {
LABEL_19:
        v40 = v38;
LABEL_41:

        sub_100271560(v40);
        v37(v23, v7);
LABEL_69:
        v34 = v82;
        v33 = v83;
        goto LABEL_70;
      }
    }

    else
    {
      v38 = v81;
      if (qword_100936068 != -1)
      {
        swift_once();
      }

      if (qword_100974E18)
      {
        v46 = qword_100974E18;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        if (v38)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (qword_1009363F0 != -1)
        {
          swift_once();
        }

        v74 = type metadata accessor for Logger();
        sub_100006654(v74, qword_10094BDF0);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&_mh_execute_header, v75, v76, "REMCDReminder.displayDateSortDescriptor should not be nil", v77, 2u);
        }

        if (v38)
        {
          goto LABEL_19;
        }
      }
    }

    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100796900;
    if (qword_100936048 != -1)
    {
      swift_once();
    }

    v47 = qword_100974DF8;
    *(v40 + 32) = qword_100974DF8;
    v48 = qword_100936030;
    v49 = v47;
    if (v48 != -1)
    {
      swift_once();
    }

    v50 = qword_100974DE0;
    *(v40 + 40) = qword_100974DE0;
    v51 = v50;
    goto LABEL_41;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (v81)
    {
      v41 = v81;
    }

    else
    {
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_100796900;
      if (qword_100936048 != -1)
      {
        swift_once();
      }

      v56 = qword_100974DF8;
      *(v41 + 32) = qword_100974DF8;
      v57 = qword_100936030;
      v58 = v56;
      if (v57 != -1)
      {
        swift_once();
      }

      v59 = qword_100974DE0;
      *(v41 + 40) = qword_100974DE0;
      v60 = v59;
    }

    v87 = v41;

    sub_1005401EC(v27, _s9UtilitiesO12SortingStyleOMa);
    goto LABEL_69;
  }

  v34 = v82;
  v33 = v83;
  if (EnumCaseMultiPayload == 4)
  {
    sub_1005401EC(v27, _s9UtilitiesO12SortingStyleOMa);
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1007953F0;
    if (qword_100936048 != -1)
    {
      v78 = v35;
      swift_once();
      v35 = v78;
    }

    v36 = qword_100974DF8;
  }

  else
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1007953F0;
    if (qword_100936030 != -1)
    {
      v79 = v35;
      swift_once();
      v35 = v79;
    }

    v36 = qword_100974DE0;
  }

  *(v35 + 32) = v36;
  v87 = v35;
  v45 = v36;
LABEL_70:
  (*(v4 + 16))(v34, v84, v33);
  v71 = (*(v4 + 88))(v34, v33);
  if (v71 == enum case for REMRemindersListDataView.ShowCompleted.after(_:) || v71 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
  {
    (*(v4 + 8))(v34, v33);
    return v87;
  }

  if (v71 == enum case for REMRemindersListDataView.ShowCompleted.off(_:))
  {
    return v87;
  }

  if (v71 == enum case for REMRemindersListDataView.ShowCompleted.on(_:))
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1007953F0;
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    swift_getKeyPath();
    *(v73 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
    v86 = v73;
    sub_100271560(v87);
    return v86;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10053DB98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v121 = a3;
  v9 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  __chkstk_darwin(v16, v17);
  v19 = &v118 - v18;
  __chkstk_darwin(v20, v21);
  v124 = &v118 - v23;
  v138 = a1;
  if (a1 < 1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v131 = v22;
  v120 = a5;
  v119 = a4;
  sub_1000F5104(&qword_10094BE10, qword_1007B0508);
  swift_allocObject();
  v24 = MutableOrderedSet.init(_:)();
  v26 = v124;
  v126 = *(a2 + 16);
  v128 = v24;
  if (!v126)
  {
    goto LABEL_34;
  }

  v28 = *(v10 + 16);
  v27 = v10 + 16;
  v139 = v28;
  v29 = *(v27 + 56);
  v122 = (*(v27 + 64) + 32) & ~*(v27 + 64);
  v125 = a2 + v122;
  v134 = v27;
  v137 = (v27 - 8);
  v30 = 0;
  *&v25 = 138543362;
  v130 = v25;
  v132 = v29;
  v133 = v9;
  v123 = v13;
  v127 = v19;
  while (1)
  {
    v139(v26, v125 + v29 * v30, v9);
    if (MutableOrderedSet.count.getter() >= v138)
    {
      break;
    }

    v35 = REMRemindersListDataView.ReminderLite.objectID.getter();
    v140 = v35;
    v36 = MutableOrderedSet.contains(_:)();

    if (v36)
    {
      if (qword_1009363F0 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100006654(v37, qword_10094BDF0);
      v139(v13, v26, v9);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v38, v39))
      {

        v40 = *v137;
        (*v137)(v13, v9);
        v40(v26, v9);
        goto LABEL_6;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = v130;
      v33 = REMRemindersListDataView.ReminderLite.objectID.getter();
      v129 = v30;
      v34 = *v137;
      (*v137)(v13, v133);
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&_mh_execute_header, v38, v39, "Attempted to fetch duplicate initial reminders {reminderLite.objectID: %{public}@}", v31, 0xCu);
      sub_1000050A4(v32, &unk_100938E70, &unk_100797230);
      v26 = v124;

      v9 = v133;

      v34(v26, v9);
      v29 = v132;
    }

    else
    {
      v129 = v30;
      v41 = REMRemindersListDataView.ReminderLite.objectID.getter();
      v140 = v41;
      MutableOrderedSet.add(_:)();

      v42 = REMRemindersListDataView.ReminderLite.subtasks.getter();
      if (v42)
      {
        v43 = v42;
      }

      else
      {
        v43 = &_swiftEmptyArrayStorage;
      }

      v136 = *(v43 + 16);
      if (v136)
      {
        v44 = 0;
        v45 = (v43 + v122);
        v135 = v43;
        while (v44 < *(v43 + 16))
        {
          v139(v19, v45, v9);
          if (MutableOrderedSet.count.getter() >= v138)
          {
            v43, v48, v49, v50, v51, v52, v53, v54;
            v72 = *v137;
            (*v137)(v19, v9);
            v26 = v124;
            v72(v124, v9);
            goto LABEL_32;
          }

          v55 = REMRemindersListDataView.ReminderLite.objectID.getter();
          v140 = v55;
          v56 = MutableOrderedSet.contains(_:)();

          if (v56)
          {
            v57 = v19;
            if (qword_1009363F0 != -1)
            {
              swift_once();
            }

            v58 = type metadata accessor for Logger();
            sub_100006654(v58, qword_10094BDF0);
            v59 = v131;
            v139(v131, v57, v9);
            v60 = Logger.logObject.getter();
            v61 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              *v62 = v130;
              v64 = REMRemindersListDataView.ReminderLite.objectID.getter();
              v47 = *v137;
              (*v137)(v59, v133);
              *(v62 + 4) = v64;
              *v63 = v64;
              _os_log_impl(&_mh_execute_header, v60, v61, "Attempted to fetch duplicate initial reminders {subtask.objectID: %{public}@}", v62, 0xCu);
              sub_1000050A4(v63, &unk_100938E70, &unk_100797230);

              v9 = v133;

              v19 = v127;
              v47(v127, v9);
            }

            else
            {

              v47 = *v137;
              (*v137)(v59, v9);
              v47(v57, v9);
              v19 = v57;
            }

            v29 = v132;
          }

          else
          {
            v46 = REMRemindersListDataView.ReminderLite.objectID.getter();
            v140 = v46;
            MutableOrderedSet.add(_:)();

            v47 = *v137;
            (*v137)(v19, v9);
          }

          ++v44;
          v45 += v29;
          v43 = v135;
          if (v136 == v44)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v81 = _CocoaArrayWrapper.endIndex.getter();
        if (!v81)
        {
          goto LABEL_51;
        }

LABEL_36:
        v82 = 0;
        while (1)
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v84 = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (v82 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v83 = *(v43 + 8 * v82 + 32);
            v84 = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              goto LABEL_48;
            }
          }

          v85 = v83;
          sub_1005E2A38(v85);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*v140->clientIdentity >= *&v140->clientIdentity[8] >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v86 = v140;
          ++v82;
          if (v84 == v81)
          {
            goto LABEL_52;
          }
        }
      }

      v47 = *v137;
LABEL_30:
      v26 = v124;
      v47(v124, v9);
      v43, v65, v66, v67, v68, v69, v70, v71;
LABEL_32:
      v13 = v123;
    }

    v30 = v129;
LABEL_6:
    if (++v30 == v126)
    {
      goto LABEL_34;
    }
  }

  (*v137)(v26, v9);
LABEL_34:
  v73 = MutableOrderedSet.array.getter();
  v43 = v73;
  v140 = &_swiftEmptyArrayStorage;
  if (v73 >> 62)
  {
    goto LABEL_50;
  }

  v81 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v81)
  {
    goto LABEL_36;
  }

LABEL_51:
  v86 = &_swiftEmptyArrayStorage;
LABEL_52:
  v43, v74, v75, v76, v77, v78, v79, v80;
  v87 = sub_1003EBAD0();
  v88 = v121;
  sub_1005EC0F4(v86, 0, 1, v87, v120);
  v90 = v89;
  v87, v91, v92, v93, v94, v95, v96, v97;
  v86, v98, v99, v100, v101, v102, v103, v104;
  v105 = [objc_opt_self() defaultFetchOptions];
  v106 = [v105 fetchOptionsIncludingDueDateDeltaAlerts];

  v107 = v106;
  sub_1003ED1A4(v90, v107, v88, v119);
  v109 = v108;

  v90, v110, v111, v112, v113, v114, v115, v116;

  return v109;
}

_TtC7remindd19RDXPCStorePerformer *sub_10053E698(uint64_t a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, void *a4, uint64_t a5)
{
  v5 = &_swiftEmptyArrayStorage;
  if (a1 < 1)
  {
    return v5;
  }

  v7 = a1;
  v8 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
  if ((v8 & 0xC000000000000001) != 0)
  {
    v16 = v8;
    v17 = __CocoaSet.count.getter();
    v16, v18, v19, v20, v21, v22, v23, v24;
    if (v17)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v25 = *(v8 + 16);
    v8, v9, v10, v11, v12, v13, v14, v15;
    if (v25)
    {
      goto LABEL_10;
    }
  }

  v26 = REMRemindersListDataView.Diff.insertedReminderObjectIDs.getter();
  if ((v26 & 0xC000000000000001) != 0)
  {
    v34 = v26;
    v35 = __CocoaSet.count.getter();
    v34, v36, v37, v38, v39, v40, v41, v42;
    if (!v35)
    {
      return v5;
    }
  }

  else
  {
    v43 = *(v26 + 16);
    v26, v27, v28, v29, v30, v31, v32, v33;
    if (!v43)
    {
      return v5;
    }
  }

LABEL_10:
  v44 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
  v45 = REMRemindersListDataView.Diff.insertedReminderObjectIDs.getter();
  sub_1000434E8(v45, v44);
  v47 = v46;
  v48 = sub_1000436E4(v46);
  v47, v49, v50, v51, v52, v53, v54, v55;
  LODWORD(v56) = v48 < 0 || (v48 & 0x4000000000000000) != 0;
  if (v56 == 1)
  {
    goto LABEL_44;
  }

  v57 = *(v48 + 16);
  if (v57 >= v7)
  {
    v58 = v7;
  }

  else
  {
    v58 = *(v48 + 16);
  }

  result = *(v48 + 16);
  if (v57 >= v58)
  {
    while (1)
    {
      if ((v48 & 0xC000000000000001) != 0 && v57)
      {
        type metadata accessor for REMObjectID_Codable();

        v60 = 0;
        do
        {
          v61 = v60 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v60);
          v60 = v61;
        }

        while (v58 != v61);
      }

      else
      {
      }

      if (v56)
      {
        v62 = _CocoaArrayWrapper.subscript.getter();
        v56 = v63;
        v65 = v64;
        v67 = v66;

        v58 = v67 >> 1;
        v48 = v62;
      }

      else
      {
        v65 = 0;
        v56 = (v48 + 32);
      }

      v68 = v58 - v65;
      if (__OFSUB__(v58, v65))
      {
        goto LABEL_49;
      }

      if (!v68)
      {
        break;
      }

      v122 = v5;
      v69 = specialized ContiguousArray.reserveCapacity(_:)();
      if ((v68 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v119 = a3;
        v48 = 0;
        v7 = 0;
        v70 = v65;
        a3 = &v56[8 * v65];
        while (1)
        {
          v71 = (v48 + 1);
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (v70 + v48 >= v58 || v48 >= v68)
          {
            goto LABEL_43;
          }

          v72 = *(&a3->super.isa + v48);
          LODWORD(v56) = sub_1005E2A38(v72);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v5 = *v122->clientIdentity;
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v48;
          if (v71 == v68)
          {
            swift_unknownObjectRelease();
            v73 = v122;
            a3 = v119;
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v69 = _CocoaArrayWrapper.endIndex.getter();
        if (v69 >= v7)
        {
          v58 = v7;
        }

        else
        {
          v58 = v69;
        }

        if (v69 < 0)
        {
          __break(1u);
LABEL_49:
          __break(1u);
          swift_once();
          v94 = type metadata accessor for Logger();
          sub_100006654(v94, qword_10094BDF0);
          swift_errorRetain();
          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v122 = v98;
            *v97 = 136446210;
            swift_errorRetain();
            sub_1000F5104(&unk_1009399E0, &qword_100795D00);
            v99 = String.init<A>(describing:)();
            v101 = v100;
            v102 = sub_10000668C(v99, v100, &v122);
            v101, v103, v104, v105, v106, v107, v108, v109;
            *(v97 + 4) = v102;
            _os_log_impl(&_mh_execute_header, v95, v96, "Failed to fetch reminders from reminderLites. Not returning initial reminder {error: %{public}s}", v97, 0xCu);
            sub_10000607C(v98);
          }

          return &_swiftEmptyArrayStorage;
        }
      }

      v118 = v69;
      result = _CocoaArrayWrapper.endIndex.getter();
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      v57 = v118;
      if (result < v58)
      {
        goto LABEL_53;
      }
    }

    swift_unknownObjectRelease();
    v73 = &_swiftEmptyArrayStorage;
LABEL_37:
    v74 = sub_1003EBAD0();
    sub_1005EC0F4(v73, 0, 1, v74, a5);
    v76 = v75;
    v74, v77, v78, v79, v80, v81, v82, v83;
    v73, v84, v85, v86, v87, v88, v89, v90;
    v91 = [objc_opt_self() defaultFetchOptions];
    v92 = [v91 fetchOptionsIncludingDueDateDeltaAlerts];

    v93 = v92;
    sub_1003ED1A4(v76, v93, a3, a4);
    v5 = v110;
    v76, v111, v112, v113, v114, v115, v116, v117;

    return v5;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10053EBE4(char *a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, uint64_t a4, uint64_t a5)
{
  v10 = _s10PredicatesOMa(0);
  __chkstk_darwin(v10, v11);
  v13 = &v192 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v17 = &v192 - v16;
  __chkstk_darwin(v18, v19);
  v200 = (&v192 - v21);
  result = &_swiftEmptyArrayStorage;
  if (!*(a2 + 16))
  {
    return result;
  }

  v197 = v20;
  v23 = 0;
  sub_100537F88(a2);
  v25 = v24;
  if (qword_1009363F0 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v26 = type metadata accessor for Logger();
    v27 = sub_100006654(v26, qword_10094BDF0);

    v199 = v27;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v25, v30, v31, v32, v33, v34, v35, v36;
    v37 = os_log_type_enabled(v28, v29);
    v198 = v25;
    v193 = a4;
    v194 = v13;
    v195 = v23;
    v196 = a3;
    v201 = a5;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v203[0] = v39;
      *v38 = 136315138;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v40 = Array.description.getter();
      v42 = v41;
      v43 = sub_10000668C(v40, v41, v203);
      v44 = v42;
      v25 = v198;
      v44, v45, v46, v47, v48, v49, v50, v51;
      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v28, v29, "fetchRemindersDue objectIDs %s", v38, 0xCu);
      sub_10000607C(v39);
    }

    v52 = sub_1000F5104(&qword_100946060, &qword_1007A7648);
    v53 = *(v52 + 48);
    v54 = *(v52 + 64);
    v55 = v200;
    *v200 = v25;
    v56 = type metadata accessor for Date();
    v57 = *(v56 - 8);
    v13 = *(v57 + 16);
    (v13)(v55 + v53, a1, v56);
    v58 = *(v57 + 56);
    v58(v55 + v53, 0, 1, v56);
    v59 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
    (v13)(v55 + v54, &a1[*(v59 + 36)], v56);
    v60 = v198;
    v58(v55 + v54, 0, 1, v56);
    swift_storeEnumTagMultiPayload();
    sub_1005402B4(v55, v17, _s10PredicatesOMa);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v203[0] = v13;
      *v63 = 136315138;
      sub_1005402B4(v17, v194, _s10PredicatesOMa);
      v64 = String.init<A>(describing:)();
      v66 = v65;
      sub_1005401EC(v17, _s10PredicatesOMa);
      v67 = sub_10000668C(v64, v66, v203);
      v66, v68, v69, v70, v71, v72, v73, v74;
      *(v63 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v61, v62, "fetchRemindersDue predicate %s", v63, 0xCu);
      sub_10000607C(v13);
    }

    else
    {

      sub_1005401EC(v17, _s10PredicatesOMa);
    }

    isa = v201;
    a5 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    if (qword_100936080 != -1)
    {
      swift_once();
    }

    v194 = qword_100974E30;
    v76 = sub_100043AA8();
    v77 = [objc_allocWithZone(NSFetchRequest) init];
    v78 = [swift_getObjCClassFromMetadata() entity];
    [v77 setEntity:v78];

    if (isa)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [v77 setAffectedStores:{isa, v192}];

    [v77 setPredicate:v76];
    [v77 setFetchLimit:0];
    v197 = v77;
    [v77 setFetchOffset:0];
    v203[0] = &_swiftEmptyArrayStorage;
    v23 = sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB48(&qword_100939850, &qword_100949370, &unk_100797770, &protocol conformance descriptor for [A]);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v205 = sub_1003EBAD0();
    sub_100271EA8(&_swiftEmptyArrayStorage);
    v80 = sub_100235FA0(Predicate);
    Predicate, v81, v82, v83, v84, v85, v86, v87;
    a3 = sub_100277CC0(v80);
    v80, v88, v89, v90, v91, v92, v93, v94;

    a4 = *a3->clientIdentity;
    if (!a4)
    {
      goto LABEL_31;
    }

LABEL_15:
    v204 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, a4 & ~(a4 >> 63), 0);
    if (a4 < 0)
    {
      __break(1u);
LABEL_44:
      v203[0] = 0;
      v203[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v191._object = 0x80000001007EC120;
      v191._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v191);
      v202 = v23;
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v192 = a5;
    v17 = 0;
    v25 = v204;
    v201 = a3 & 0xC000000000000001;
    while (1)
    {
      a1 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v201)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *a3->clientIdentity)
        {
          goto LABEL_28;
        }

        v23 = *&a3->clientIdentity[8 * v17 + 16];
      }

      v95 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v96)
      {
        goto LABEL_44;
      }

      v97 = v95;
      a5 = v96;

      v204 = v25;
      v13 = *v25->clientIdentity;
      v98 = *&v25->clientIdentity[8];
      v23 = v13 + 1;
      if (v13 >= v98 >> 1)
      {
        sub_100026EF4((v98 > 1), v13 + 1, 1);
        v25 = v204;
      }

      *v25->clientIdentity = v23;
      v99 = v25 + 16 * v13;
      *(v99 + 4) = v97;
      *(v99 + 5) = a5;
      ++v17;
      if (a1 == a4)
      {

        v198, v100, v101, v102, v103, v104, v105, v106;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  a4 = _CocoaArrayWrapper.endIndex.getter();
  if (a4)
  {
    goto LABEL_15;
  }

LABEL_31:

  v60, v107, v108, v109, v110, v111, v112, v113;
  v25 = &_swiftEmptyArrayStorage;
LABEL_32:
  sub_100271EA8(v25);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  v114 = v205;
  v115 = Array._bridgeToObjectiveC()().super.isa;
  v114, v116, v117, v118, v119, v120, v121, v122;
  v123 = v197;
  [v197 setRelationshipKeyPathsForPrefetching:v115];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v124 = Array._bridgeToObjectiveC()().super.isa;
  [v123 setSortDescriptors:v124];

  v125 = v195;
  v126 = v196;
  v127 = NSManagedObjectContext.fetch<A>(_:)();
  if (v125)
  {
    sub_1005401EC(v200, _s10PredicatesOMa);

    swift_errorRetain();
    v167 = Logger.logObject.getter();
    v168 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v203[0] = v170;
      *v169 = 136446210;
      v204 = v125;
      swift_errorRetain();
      sub_1000F5104(&unk_1009399E0, &qword_100795D00);
      v171 = String.init<A>(describing:)();
      v173 = v172;
      v174 = sub_10000668C(v171, v172, v203);
      v173, v175, v176, v177, v178, v179, v180, v181;
      *(v169 + 4) = v174;
      _os_log_impl(&_mh_execute_header, v167, v168, "Failed to fetch reminders from reminderLites. Not returning initial reminder {error: %{public}s}", v169, 0xCu);
      sub_10000607C(v170);
    }

    return &_swiftEmptyArrayStorage;
  }

  else
  {
    v128 = v127;
    v129 = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v127);
    v128, v130, v131, v132, v133, v134, v135, v136;

    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.default.getter();
    v129, v139, v140, v141, v142, v143, v144, v145;
    if (os_log_type_enabled(v137, v138))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v203[0] = v147;
      *v146 = 136315138;
      v148 = Array.description.getter();
      v150 = v149;
      v151 = v126;
      v152 = sub_10000668C(v148, v149, v203);
      v150, v153, v154, v155, v156, v157, v158, v159;
      *(v146 + 4) = v152;
      v126 = v151;
      _os_log_impl(&_mh_execute_header, v137, v138, "fetchRemindersDue cdReminders %s", v146, 0xCu);
      sub_10000607C(v147);
    }

    v160 = v193;
    v161 = objc_opt_self();
    v162 = [v161 defaultFetchOptions];
    v163 = v162;
    if (!v162)
    {
      v163 = [v161 defaultFetchOptions];
    }

    v164 = v162;
    v165 = [v163 fetchOptionsIncludingDueDateDeltaAlerts];

    v166 = v165;
    sub_1003ED1A4(v129, v166, v126, v160);
    v183 = v182;

    v129, v184, v185, v186, v187, v188, v189, v190;
    sub_1005401EC(v200, _s10PredicatesOMa);
    return v183;
  }
}

uint64_t _s9UtilitiesO12SortingStyleOMa(uint64_t a1)
{
  result = qword_10094BE90;
  if (!qword_10094BE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t *sub_10053FB3C(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  sub_1000F5104(&qword_10093B980, qword_10079A3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791340;
  v7 = (a2 >> 62);
  if (a2 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v87 = v4;
    if (i)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      if (i < 0)
      {
        __break(1u);
        goto LABEL_34;
      }

      v9 = 0;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v10 = *(a2 + 8 * v9 + 32);
        }

        v11 = v10;
        ++v9;
        v12 = [v10 objectID];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (i != v9);
    }

    sub_1000060C8(0, &unk_100938890, NSPredicate_ptr);
    sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100791300;
    *(v13 + 56) = sub_1000F5104(&qword_100937028, &qword_100791C10);
    *(v13 + 64) = sub_10000CB48(&unk_10094F0D0, &qword_100937028, &qword_100791C10, &protocol conformance descriptor for [A]);
    *(v13 + 32) = &_swiftEmptyArrayStorage;
    *(inited + 32) = NSPredicate.init(format:_:)();
    KeyPath = swift_getKeyPath();
    v15 = sub_1003F7214(KeyPath, 0);

    *(inited + 40) = v15;
    v16 = sub_10000C2B0();
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_1007953F0;
    *(v17 + 32) = swift_getKeyPath();
    v88 = v16;
    if (v7)
    {
      sub_1000060C8(0, &qword_100939D80, off_1008D41B8);

      v18 = _bridgeCocoaArray<A>(_:)();
      a2, v19, v20, v21, v22, v23, v24, v25;
      a2 = v18;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_1000060C8(0, &qword_100939D80, off_1008D41B8);
    }

    sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    sub_10000CB48(&qword_100946C40, &qword_10093F5C0, &qword_1007A1FB0, &protocol conformance descriptor for [A]);
    sub_10000CE28(&qword_10093F488, &qword_10093F430, NSPersistentStore_ptr);
    v26 = Sequence.compactMapToSet<A>(_:)();
    sub_10002595C(v26);
    v26, v27, v28, v29, v30, v31, v32, v33;
    v7 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v34 = [objc_allocWithZone(NSFetchRequest) init];
    v35 = [swift_getObjCClassFromMetadata() entity];
    [v34 setEntity:v35];

    isa = Array._bridgeToObjectiveC()().super.isa;
    [v34 setAffectedStores:isa];

    [v34 setPredicate:v88];

    sub_100050AD0(v37);
    v17, v38, v39, v40, v41, v42, v43, v44;
    v45 = sub_1003FE014(_swiftEmptySetSingleton);
    _swiftEmptySetSingleton, v46, v47, v48, v49, v50, v51, v52;
    v53 = Array._bridgeToObjectiveC()().super.isa;
    v45, v54, v55, v56, v57, v58, v59, v60;
    [v34 setPropertiesToFetch:v53];
    a2, v61, v62, v63, v64, v65, v66, v67;

    swift_setDeallocating();
    swift_arrayDestroy();
    v68 = NSManagedObjectContext.fetch<A>(_:)();
    if (v87)
    {
      break;
    }

    a2 = v68;
    v87 = v34;
    v3 = v68 & 0xFFFFFFFFFFFFFF8;
    if (!(v68 >> 62))
    {
      v4 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_17;
    }

LABEL_34:
    v4 = _CocoaArrayWrapper.endIndex.getter();
LABEL_17:
    inited = 0;
    while (1)
    {
      if (v4 == inited)
      {
        a2, v69, v70, v71, v72, v73, v74, v75;
        a2 = sub_1001A577C(&_swiftEmptyArrayStorage);

        &_swiftEmptyArrayStorage, v79, v80, v81, v82, v83, v84, v85;
        return a2;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (inited >= *(v3 + 16))
        {
          goto LABEL_31;
        }

        v76 = *(a2 + 8 * inited + 32);
      }

      v7 = v76;
      v77 = inited + 1;
      if (__OFADD__(inited, 1))
      {
        break;
      }

      v78 = [v76 remObjectID];

      ++inited;
      if (v78)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        inited = v77;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  return a2;
}

uint64_t sub_1005401EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10054026C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005402B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_10054032C(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_13;
    }

LABEL_10:
    v13 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v13 - 8) + 16))(a1, a2, v13);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 4)
  {
    if (*a2)
    {
      v8 = a2[1];
      v9 = a2[2];
      *a1 = *a2;
      a1[1] = v8;
      v10 = a2[3];
      v11 = a2[4];
      a1[2] = v9;
      a1[3] = v10;
      a1[4] = v11;
    }

    else
    {
      v16 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v16;
      a1[4] = a2[4];
    }

    v17 = a2[5];
    a1[5] = v17;
    v18 = v17;
    goto LABEL_18;
  }

LABEL_13:
  v14 = *(v6 + 64);

  return memcpy(a1, a2, v14);
}

void sub_1005405CC(_TtC7remindd19RDXPCStorePerformer **a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload > 1)
    {
      return;
    }
  }

  else if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      if (*a1)
      {
        *a1, v4, v5, v6, v7, v8, v9, v10;
        a1[1], v11, v12, v13, v14, v15, v16, v17;
        a1[2], v18, v19, v20, v21, v22, v23, v24;
        a1[3], v25, v26, v27, v28, v29, v30, v31;
        a1[4], v32, v33, v34, v35, v36, v37, v38;
      }

      v39 = a1[5];
    }

    return;
  }

  v40 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v41 = *(*(v40 - 8) + 8);

  v41(a1, v40);
}

void *sub_1005406B8(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_11;
    }

LABEL_8:
    v11 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v11 - 8) + 16))(a1, a2, v11);
LABEL_16:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 4)
  {
    if (*a2)
    {
      v7 = a2[1];
      v8 = a2[2];
      *a1 = *a2;
      a1[1] = v7;
      v9 = a2[3];
      v10 = a2[4];
      a1[2] = v8;
      a1[3] = v9;
      a1[4] = v10;
    }

    else
    {
      v14 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v14;
      a1[4] = a2[4];
    }

    v15 = a2[5];
    a1[5] = v15;
    v16 = v15;
    goto LABEL_16;
  }

LABEL_11:
  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *sub_100540918(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005401EC(a1, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_12;
    }

LABEL_9:
    v7 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 4)
  {
    if (*a2)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      a1[3] = a2[3];
      a1[4] = a2[4];
    }

    else
    {
      v10 = *a2;
      v11 = *(a2 + 1);
      a1[4] = a2[4];
      *a1 = v10;
      *(a1 + 1) = v11;
    }

    v12 = a2[5];
    a1[5] = v12;
    v13 = v12;
    goto LABEL_17;
  }

LABEL_12:
  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

void *sub_100540BAC(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_9;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
LABEL_9:
    v9 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v7);
}

void *sub_100540D7C(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005401EC(a1, _s9UtilitiesO12SortingStyleOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_10;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
LABEL_10:
    v9 = type metadata accessor for REMRemindersListDataView.SortingDirection();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v7);
}

uint64_t sub_100540F70(uint64_t a1)
{
  result = type metadata accessor for REMRemindersListDataView.SortingDirection();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void **_s9UtilitiesO29ManualSortHintPersistenceHostOwca(void **a1, void **a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v5 = v3;

  return a1;
}

void **_s9UtilitiesO29ManualSortHintPersistenceHostOwta(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

unint64_t sub_100541084(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v9 = String.subscript.getter();
    v11 = v10;
    v22[0] = v9;
    v22[1] = v10;
    v12 = a1(v22);
    if (v4)
    {
      break;
    }

    v20 = v12;
    v11, v13, v14, v15, v16, v17, v18, v19;
    if (v20)
    {
      return v8;
    }
  }

  v11, v13, v14, v15, v16, v17, v18, v19;
  return v8;
}

uint64_t sub_100541188()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094BEC8);
  v1 = sub_100006654(v0, qword_10094BEC8);
  if (qword_1009364A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975140);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100541250(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x7865646E69;
  }

  else
  {
    v9 = 0x7265646E696D6572;
  }

  if (v8)
  {
    v10 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (*a2)
  {
    v11 = 0x7865646E69;
  }

  else
  {
    v11 = 0x7265646E696D6572;
  }

  if (*a2)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

Swift::Int sub_1005412F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xE500000000000000;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

double sub_100541374(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE500000000000000;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
  return result;
}

Swift::Int sub_1005413E0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_10054145C(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E3BA8, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_1005414BC(uint64_t *a1@<X8>)
{
  v2 = 0x7265646E696D6572;
  if (*v1)
  {
    v2 = 0x7865646E69;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1005414F8()
{
  if (*v0)
  {
    return 0x7865646E69;
  }

  else
  {
    return 0x7265646E696D6572;
  }
}

void sub_100541530(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E3BA8, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

uint64_t sub_100541594(uint64_t a1)
{
  v2 = sub_1005434CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005415D0(uint64_t a1)
{
  v2 = sub_1005434CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10054160C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1005427B0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_10054163C(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 0x6E6F73616572;
  v9 = *a1;
  v10 = 0xE600000000000000;
  v11 = 0x7265646E696D6572;
  if (v9 == 1)
  {
    v11 = 0x6E6F73616572;
  }

  else
  {
    v10 = 0xE900000000000073;
  }

  if (*a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0xD000000000000014;
  }

  if (v9)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0x80000001007EAC40;
  }

  v14 = 0xE600000000000000;
  if (*a2 != 1)
  {
    v8 = 0x7265646E696D6572;
    v14 = 0xE900000000000073;
  }

  if (*a2)
  {
    v15 = v8;
  }

  else
  {
    v15 = 0xD000000000000014;
  }

  if (*a2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0x80000001007EAC40;
  }

  if (v12 == v15 && v13 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v13, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

Swift::Int sub_10054173C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xE600000000000000;
  if (v1 != 1)
  {
    v2 = 0xE900000000000073;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x80000001007EAC40;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

double sub_1005417E4(uint64_t a1)
{
  v2 = 0xE600000000000000;
  if (*v1 != 1)
  {
    v2 = 0xE900000000000073;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x80000001007EAC40;
  }

  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

Swift::Int sub_100541878(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0xE600000000000000;
  if (v2 != 1)
  {
    v3 = 0xE900000000000073;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x80000001007EAC40;
  }

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_10054191C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100542964(*a1);
  *a2 = result;
  return result;
}

void sub_10054194C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F73616572;
  if (v2 != 1)
  {
    v4 = 0x7265646E696D6572;
    v3 = 0xE900000000000073;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (v5)
  {
    v3 = 0x80000001007EAC40;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1005419B0()
{
  v1 = 0x6E6F73616572;
  if (*v0 != 1)
  {
    v1 = 0x7265646E696D6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

unint64_t sub_100541A10@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100542964(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100541A38(uint64_t a1)
{
  v2 = sub_1005431D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100541A74(uint64_t a1)
{
  v2 = sub_1005431D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100541AB0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1005429B0(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

Swift::Int sub_100541AF8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100541B6C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_100541BC0(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E3C60, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5 != 0;
}

void sub_100541C50(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E3C98, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5 != 0;
}

uint64_t sub_100541CA8(uint64_t a1)
{
  v2 = sub_100542DF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100541CE4(uint64_t a1)
{
  v2 = sub_100542DF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100541D20@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100542C44(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100541D4C(unint64_t a1, unint64_t a2)
{
  v4 = sub_10042D174(123, 0xE100000000000000, a1, a2);
  if (v5)
  {
    if (qword_100936408 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006654(v6, qword_10094BEC8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_17;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "RDAutoCategorizerPromptOutputJSONProcessor: unable to find first brace of JSON {error: failedToFindValidJSON}";
    goto LABEL_16;
  }

  v11 = v4;
  v28[0] = 125;
  v28[1] = 0xE100000000000000;
  __chkstk_darwin(v4, v5);
  v27[2] = v28;
  v12 = sub_100541084(sub_100040B40, v27, a1, a2);
  if (v13)
  {
    if (qword_100936408 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006654(v14, qword_10094BEC8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_17;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "RDAutoCategorizerPromptOutputJSONProcessor: unable to find last brace of JSON {error: failedToFindValidJSON}";
    goto LABEL_16;
  }

  if (v12 >> 14 >= v11 >> 14)
  {
    String.index(after:)();
    String.subscript.getter();
    v19 = v18;
    v8 = static String._fromSubstring(_:)();
    v19, v20, v21, v22, v23, v24, v25, v26;
    return v8;
  }

  if (qword_100936408 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006654(v15, qword_10094BEC8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "RDAutoCategorizerPromptOutputJSONProcessor: {error: failedToFindValidJSON}";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);
  }

LABEL_17:

  sub_100542690();
  swift_allocError();
  *v16 = 1;
  swift_willThrow();
  return v8;
}

uint64_t sub_100542068(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100541D4C(a1, a2);
  if (!v2)
  {
    v12 = v11;
    static String.Encoding.utf8.getter();
    v13 = String.data(using:allowLossyConversion:)();
    v15 = v14;
    v12, v14, v16, v17, v18, v19, v20, v21;
    (*(v6 + 8))(v9, v5);
    if (v15 >> 60 == 15)
    {
      if (qword_100936408 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100006654(v22, qword_10094BEC8);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "RDAutoCategorizerPromptOutputJSONProcessor: {error: failedToDecodeSections}", v25, 2u);
      }

      sub_100542690();
      swift_allocError();
      *v26 = 0;
      return swift_willThrow();
    }

    else
    {
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_1005426E4();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      sub_100031A14(v13, v15);
      return v27[1];
    }
  }

  return result;
}

void *sub_1005422EC(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_100542068(a1, a2);
  if (v3)
  {
    return v4;
  }

  v7 = v6;
  v4 = sub_10038E004(&_swiftEmptyArrayStorage);
  v15 = v7;
  v76 = *(v7 + 16);
  if (!v76)
  {
LABEL_30:
    v15, v8, v9, v10, v11, v12, v13, v14;
    return v4;
  }

  v16 = 0;
  v75 = v7 + 32;
  v80 = a3 + 32;
  v17 = &qword_100936000;
  v79 = a3;
  v74 = v7;
  while (1)
  {
    if (v16 >= *(v15 + 16))
    {
      goto LABEL_35;
    }

    v32 = (v75 + 40 * v16);
    v33 = v32[4];
    v84 = *(v33 + 16);
    if (v84)
    {
      break;
    }

LABEL_5:
    if (++v16 == v76)
    {
      goto LABEL_30;
    }
  }

  v78 = v16;
  v34 = v32[1];
  v81 = *v32;
  v77 = v32[3];

  swift_bridgeObjectRetain_n();
  v83 = v34;

  v35 = 0;
  v36 = 32;
  v82 = v33;
  while (v35 < *(v33 + 16))
  {
    v37 = *(v33 + v36);
    if ((v37 & 0x8000000000000000) != 0 || v37 >= *(a3 + 16))
    {
      if (v17[129] != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_100006654(v55, qword_10094BEC8);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 134217984;
        *(v58 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v56, v57, "RDAutoCategorizerPromptOutputJSONProcessor: skipping output reminder with index %ld", v58, 0xCu);
        v33 = v82;
      }

      goto LABEL_10;
    }

    v38 = (v80 + 16 * v37);
    v40 = *v38;
    v39 = v38[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = sub_100005F4C(v40, v39);
    v50 = v4[2];
    v51 = (v42 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_33;
    }

    v53 = v42;
    if (v4[3] >= v52)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v42 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_100373664();
        if ((v53 & 1) == 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      sub_10036A8F0(v52, isUniquelyReferenced_nonNull_native);
      v54 = sub_100005F4C(v40, v39);
      if ((v53 & 1) != (v42 & 1))
      {
        goto LABEL_36;
      }

      v49 = v54;
      if ((v53 & 1) == 0)
      {
LABEL_27:
        v4[(v49 >> 6) + 8] |= 1 << v49;
        v68 = (v4[6] + 16 * v49);
        *v68 = v40;
        v68[1] = v39;
        v69 = (v4[7] + 16 * v49);
        *v69 = v81;
        v69[1] = v83;
        v70 = v4[2];
        v71 = __OFADD__(v70, 1);
        v72 = v70 + 1;
        if (v71)
        {
          goto LABEL_34;
        }

        v4[2] = v72;
        goto LABEL_29;
      }
    }

    v39, v42, v43, v44, v45, v46, v47, v48;
    v59 = (v4[7] + 16 * v49);
    v60 = v59[1];
    *v59 = v81;
    v59[1] = v83;
    v60, v61, v62, v63, v64, v65, v66, v67;
LABEL_29:
    a3 = v79;
    v17 = &qword_100936000;
    v33 = v82;
LABEL_10:
    ++v35;
    v36 += 24;
    if (v84 == v35)
    {
      swift_bridgeObjectRelease_n();
      v77, v18, v19, v20, v21, v22, v23, v24;
      v83, v25, v26, v27, v28, v29, v30, v31;
      v15 = v74;
      v16 = v78;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100542690()
{
  result = qword_10094BEE0;
  if (!qword_10094BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BEE0);
  }

  return result;
}

unint64_t sub_1005426E4()
{
  result = qword_10094BEE8;
  if (!qword_10094BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BEE8);
  }

  return result;
}

unint64_t sub_10054275C()
{
  result = qword_10094BEF0;
  if (!qword_10094BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BEF0);
  }

  return result;
}

void *sub_1005427B0(void *a1)
{
  v3 = sub_1000F5104(&qword_10094BF78, &qword_1007B0A20);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10[-v6];
  v8 = sub_10000F61C(a1, a1[3]);
  sub_1005434CC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v10[14] = 1;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000607C(a1);
  return v8;
}

unint64_t sub_100542964(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E3BF8, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_1005429B0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000F5104(&qword_10094BF38, &qword_1007B0898);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v18 - v8;
  sub_10000F61C(a1, a1[3]);
  sub_1005431D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000607C(a1);
  }

  else
  {
    v24 = 0;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v20 = v10;
    v23 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    v19 = v13;
    sub_1000F5104(&qword_10094BF48, &qword_1007B08A0);
    v22 = 2;
    sub_100543224(&qword_10094BF50, &qword_10094BF48, &qword_1007B08A0, sub_1005432A0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v16 = v21;
    sub_10000607C(a1);
    v17 = v19;
    *a2 = v20;
    a2[1] = v12;
    a2[2] = v17;
    a2[3] = v15;
    a2[4] = v16;
  }
}

void *sub_100542C44(void *a1)
{
  v3 = sub_1000F5104(&qword_10094BEF8, &qword_1007B0708);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v10 - v6;
  v8 = sub_10000F61C(a1, a1[3]);
  sub_100542DF4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000607C(a1);
  }

  else
  {
    sub_1000F5104(&qword_10094BF08, &qword_1007B0710);
    sub_100543224(&qword_10094BF10, &qword_10094BF08, &qword_1007B0710, sub_100542E48);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v8 = v10[1];
    sub_10000607C(a1);
  }

  return v8;
}

unint64_t sub_100542DF4()
{
  result = qword_10094BF00;
  if (!qword_10094BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF00);
  }

  return result;
}

unint64_t sub_100542E48()
{
  result = qword_10094BF18;
  if (!qword_10094BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF18);
  }

  return result;
}

double destroy for RDAutoCategorizeOutputRoot.Section(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  a1[1], a2, a3, a4, a5, a6, a7, a8;
  a1[3], v9, v10, v11, v12, v13, v14, v15;
  v23 = a1[4];

  v23, v16, v17, v18, v19, v20, v21, v22;
  return result;
}

void *initializeWithCopy for RDAutoCategorizeOutputRoot.Section(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  return a1;
}

void *assignWithCopy for RDAutoCategorizeOutputRoot.Section(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v4, v5, v6, v7, v8, v9, v10, v11;
  a1[2] = a2[2];
  v12 = a1[3];
  a1[3] = a2[3];

  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = a2[4];
  v21 = a1[4];
  a1[4] = v20;

  v21, v22, v23, v24, v25, v26, v27, v28;
  return a1;
}

void *assignWithTake for RDAutoCategorizeOutputRoot.Section(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(a2 + 8);
  v11 = a1[1];
  *a1 = *a2;
  a1[1] = v10;
  v11, a2, a3, a4, a5, a6, a7, a8;
  a1[2] = *(a2 + 16);
  a1[3], v12, v13, v14, v15, v16, v17, v18;
  v19 = a1[4];
  *(a1 + 3) = *(a2 + 24);
  v19, v20, v21, v22, v23, v24, v25, v26;
  return a1;
}

uint64_t getEnumTagSinglePayload for RDAutoCategorizeOutputRoot.Section(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for RDAutoCategorizeOutputRoot.Section(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005430CC()
{
  result = qword_10094BF20;
  if (!qword_10094BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF20);
  }

  return result;
}

unint64_t sub_100543124()
{
  result = qword_10094BF28;
  if (!qword_10094BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF28);
  }

  return result;
}

unint64_t sub_10054317C()
{
  result = qword_10094BF30;
  if (!qword_10094BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF30);
  }

  return result;
}

unint64_t sub_1005431D0()
{
  result = qword_10094BF40;
  if (!qword_10094BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF40);
  }

  return result;
}

uint64_t sub_100543224(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005432A0()
{
  result = qword_10094BF58;
  if (!qword_10094BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RDAutoCategorizeOutputRoot.Section.Reminder(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for RDAutoCategorizeOutputRoot.Section.Reminder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1005433C8()
{
  result = qword_10094BF60;
  if (!qword_10094BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF60);
  }

  return result;
}

unint64_t sub_100543420()
{
  result = qword_10094BF68;
  if (!qword_10094BF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF68);
  }

  return result;
}

unint64_t sub_100543478()
{
  result = qword_10094BF70;
  if (!qword_10094BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF70);
  }

  return result;
}

unint64_t sub_1005434CC()
{
  result = qword_10094BF80;
  if (!qword_10094BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF80);
  }

  return result;
}

unint64_t sub_100543534()
{
  result = qword_10094BF88;
  if (!qword_10094BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF88);
  }

  return result;
}

unint64_t sub_10054358C()
{
  result = qword_10094BF90;
  if (!qword_10094BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF90);
  }

  return result;
}

unint64_t sub_1005435E4()
{
  result = qword_10094BF98;
  if (!qword_10094BF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF98);
  }

  return result;
}

void sub_100543638(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v208 = a2;
  v211 = a3;
  v197 = a5;
  v7 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel();
  v198 = *(v7 - 8);
  v199 = v7;
  __chkstk_darwin(v7, v8);
  v200 = v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v203 = v186 - v12;
  v13 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v13 - 8, v14);
  v194 = v186 - v15;
  v215 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v195 = *(v215 - 8);
  __chkstk_darwin(v215, v16);
  v206 = v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v213 = v186 - v20;
  v202 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v205 = *(v202 - 8);
  __chkstk_darwin(v202, v21);
  v201 = v186 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v204 = v186 - v25;
  v212 = type metadata accessor for REMRemindersListDataView.Diff();
  v216 = *(v212 - 8);
  __chkstk_darwin(v212, v26);
  v196 = v186 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v29);
  v209 = v186 - v30;
  v31 = _s10PredicatesOMa(0);
  __chkstk_darwin(v31, v32);
  v34 = v186 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v36 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v37);
  v39 = v186 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40, v41);
  v43 = v186 - v42;
  __chkstk_darwin(v44, v45);
  v47 = v186 - v46;
  v210 = a4;
  REMRemindersListDataView.AllSectionsInvocation.Parameters.configuration.getter();
  v48 = v214;
  v49 = sub_100545318(a1, v47);
  if (v48)
  {
    (*(v36 + 8))(v47, Configuration);
    return;
  }

  v189 = v31;
  v214 = v39;
  v191 = v49;
  v193 = 0;
  v192 = a1;
  v50 = *(v36 + 8);
  v50(v47, Configuration);
  REMRemindersListDataView.AllSectionsInvocation.Parameters.configuration.getter();
  v51 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  v190 = Configuration;
  v188 = v36 + 8;
  v187 = v50;
  v50(v43, Configuration);
  v186[3] = v51;
  if (v51)
  {
    swift_storeEnumTagMultiPayload();
    v52 = sub_100043AA8();
    sub_1000513B4(v34);
    sub_100345DB0();
    v53 = [objc_allocWithZone(NSFetchRequest) init];
    v54 = [swift_getObjCClassFromMetadata() entity];
    [v53 setEntity:v54];

    [v53 setAffectedStores:0];
    [v53 setPredicate:v52];
    v55 = v192;
    v56 = v193;
    v57 = NSManagedObjectContext.count<A>(for:)();
    v58 = v56;

    v66 = v211;
    v67 = v214;
    if (v56)
    {
LABEL_8:
      v191, v59, v60, v61, v62, v63, v64, v65;
      return;
    }
  }

  else
  {
    v57 = 0;
    v66 = v211;
    v55 = v192;
    v58 = v193;
    v67 = v214;
  }

  v68 = [v207 fetchResultTokenToDiffAgainst];
  v69 = v209;
  sub_100534D44(v68, v209);

  v70 = v190;
  if (v58)
  {
    goto LABEL_8;
  }

  v208 = v57;
  v193 = 0;
  REMRemindersListDataView.AllSectionsInvocation.Parameters.configuration.getter();
  v71 = v204;
  REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
  v187(v67, v70);
  v72 = v205;
  v73 = v201;
  v74 = v71;
  v75 = v202;
  (*(v205 + 16))(v201, v74, v202);
  v76 = (*(v72 + 88))(v73, v75);
  if (v76 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    (*(v72 + 96))(v73, v75);
    v207 = *v73;
    v77 = *v191->clientIdentity;
    v78 = v216;
    if (v77)
    {
      v79 = v195 + 16;
      v214 = *(v195 + 16);
      v80 = v191 + ((*(v195 + 80) + 32) & ~*(v195 + 80));
      v210 = *(v195 + 72);
      v81 = (v195 + 8);
      v82 = &_swiftEmptyArrayStorage;
      v83 = v213;
      while (1)
      {
        v84 = v83;
        v85 = v215;
        v86 = v79;
        v214(v83, v80, v215);
        v87 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
        (*v81)(v84, v85);
        v88 = *(v87 + 16);
        v89 = *v82->clientIdentity;
        v90 = v89 + v88;
        if (__OFADD__(v89, v88))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v90 > *&v82->clientIdentity[8] >> 1)
        {
          if (v89 <= v90)
          {
            v99 = v89 + v88;
          }

          else
          {
            v99 = v89;
          }

          v82 = sub_100365A4C(isUniquelyReferenced_nonNull_native, v99, 1, v82);
        }

        v78 = v216;
        if (*(v87 + 16))
        {
          v100 = (*&v82->clientIdentity[8] >> 1) - *v82->clientIdentity;
          type metadata accessor for REMRemindersListDataView.SectionLite();
          if (v100 < v88)
          {
            goto LABEL_55;
          }

          swift_arrayInitWithCopy();
          v87, v101, v102, v103, v104, v105, v106, v107;
          v78 = v216;
          v83 = v213;
          if (v88)
          {
            v108 = *v82->clientIdentity;
            v109 = __OFADD__(v108, v88);
            v110 = v108 + v88;
            if (v109)
            {
              goto LABEL_56;
            }

            *v82->clientIdentity = v110;
          }
        }

        else
        {
          v87, v92, v93, v94, v95, v96, v97, v98;
          v83 = v213;
          if (v88)
          {
            goto LABEL_54;
          }
        }

        v80 += v210;
        --v77;
        v79 = v86;
        if (!v77)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v82 = &_swiftEmptyArrayStorage;
LABEL_46:
    v151 = Array<A>.reminders.getter();
    v82, v152, v153, v154, v155, v156, v157, v158;
    sub_10053DB98(v207, v151, v192, v211, 0);
    v151, v159, v160, v161, v162, v163, v164, v165;
    (*(v205 + 8))(v204, v202);
    v113 = v198;
    v114 = v199;
    v115 = v203;
    v111 = v200;
    v166 = v196;
    v116 = v212;
LABEL_52:
    REMRemindersListDataView.ListsSectionsModel.init(lists:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    (*(v113 + 16))(v111, v115, v114);
    v185 = v209;
    (*(v78 + 16))(v166, v209, v116);
    sub_1005456F4(&qword_100942E10, &type metadata accessor for REMRemindersListDataView.ListsSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.ListsSectionsModel);
    sub_1005456F4(&qword_100942E18, &type metadata accessor for REMRemindersListDataView.ListsSectionsModel, &protocol conformance descriptor for REMRemindersListDataView.ListsSectionsModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v113 + 8))(v203, v114);
    (*(v78 + 8))(v185, v116);
    return;
  }

  v111 = v200;
  v78 = v216;
  if (v76 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
  {
    v112 = v205;
    (*(v205 + 96))(v73, v75);
    sub_10053E698(*v73, v69, v55, v66, 0);
    (*(v112 + 8))(v204, v75);
    v113 = v198;
    v114 = v199;
    v115 = v203;
    v116 = v212;
LABEL_51:
    v166 = v196;
    goto LABEL_52;
  }

  v116 = v212;
  if (v76 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
  {
    v117 = v201;
    (*(v205 + 96))(v201, v75);
    v210 = *v117;
    v118 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    sub_100031B58(v117 + *(v118 + 48), v194, &qword_10094B8E0, &unk_1007AABD0);
    v119 = *v191->clientIdentity;
    if (v119)
    {
      v120 = v195 + 16;
      v214 = *(v195 + 16);
      v121 = v191 + ((*(v195 + 80) + 32) & ~*(v195 + 80));
      v213 = *(v195 + 72);
      v122 = (v195 + 8);
      v123 = &_swiftEmptyArrayStorage;
      v124 = v215;
      v125 = v206;
      while (1)
      {
        v126 = v125;
        v127 = v120;
        v214(v125, v121, v124);
        v128 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
        (*v122)(v126, v124);
        v129 = *(v128 + 16);
        v130 = *v123->clientIdentity;
        v131 = v130 + v129;
        if (__OFADD__(v130, v129))
        {
          goto LABEL_57;
        }

        v132 = swift_isUniquelyReferenced_nonNull_native();
        if (!v132 || v131 > *&v123->clientIdentity[8] >> 1)
        {
          if (v130 <= v131)
          {
            v140 = v130 + v129;
          }

          else
          {
            v140 = v130;
          }

          v123 = sub_100365A4C(v132, v140, 1, v123);
        }

        v116 = v212;
        v124 = v215;
        if (*(v128 + 16))
        {
          v141 = (*&v123->clientIdentity[8] >> 1) - *v123->clientIdentity;
          type metadata accessor for REMRemindersListDataView.SectionLite();
          if (v141 < v129)
          {
            goto LABEL_59;
          }

          swift_arrayInitWithCopy();
          v128, v142, v143, v144, v145, v146, v147, v148;
          v116 = v212;
          v124 = v215;
          v125 = v206;
          if (v129)
          {
            v149 = *v123->clientIdentity;
            v109 = __OFADD__(v149, v129);
            v150 = v149 + v129;
            if (v109)
            {
              goto LABEL_60;
            }

            *v123->clientIdentity = v150;
          }
        }

        else
        {
          v128, v133, v134, v135, v136, v137, v138, v139;
          v125 = v206;
          if (v129)
          {
            goto LABEL_58;
          }
        }

        v121 = &v213[v121];
        --v119;
        v120 = v127;
        if (!v119)
        {
          goto LABEL_50;
        }
      }
    }

    v123 = &_swiftEmptyArrayStorage;
LABEL_50:
    v167 = Array<A>.reminders.getter();
    v123, v168, v169, v170, v171, v172, v173, v174;
    v175 = v211;
    v176 = v192;
    sub_10053DB98(v210, v167, v192, v211, 0);
    v177 = v194;
    sub_10053EBE4(v194, v167, v176, v175, 0);
    v167, v178, v179, v180, v181, v182, v183, v184;
    sub_1000050A4(v177, &qword_10094B8E0, &unk_1007AABD0);
    (*(v205 + 8))(v204, v202);
    v113 = v198;
    v114 = v199;
    v115 = v203;
    v111 = v200;
    v78 = v216;
    goto LABEL_51;
  }

  v113 = v198;
  v114 = v199;
  v115 = v203;
  if (v76 == enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
  {
    (*(v205 + 8))(v204, v75);
    goto LABEL_51;
  }

LABEL_61:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_100544468(void **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = v6;
  v167 = a4;
  v170 = a3;
  v11 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List.ListType();
  v165 = *(v11 - 8);
  v166 = v11;
  __chkstk_darwin(v11, v12);
  v163 = &v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v162 = &v155 - v16;
  __chkstk_darwin(v17, v18);
  v164 = &v155 - v19;
  v161 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v160 = *(v161 - 8);
  __chkstk_darwin(v161, v20);
  v159 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v22 - 8, v23);
  v25 = &v155 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v27);
  v171 = &v155 - v28;
  __chkstk_darwin(v29, v30);
  v32 = &v155 - v31;
  v33 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  __chkstk_darwin(v33 - 8, v34);
  v36 = &v155 - v35;
  v185 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v172 = *(v185 - 8);
  __chkstk_darwin(v185, v37);
  v184 = &v155 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for UUID();
  v168 = *(v186 - 8);
  *&v40 = __chkstk_darwin(v186, v39).n128_u64[0];
  v42 = &v155 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *a1;
  v44 = [v43 identifier];
  if (!v44)
  {
    v83 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
    (*(*(v83 - 8) + 56))(a5, 1, 1, v83);
    return;
  }

  v158 = v43;
  v45 = v44;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = v42;
  if (*(a2 + 16))
  {
    v47 = sub_100363F20(v42);
    if (v48)
    {
      v49 = *(*(a2 + 56) + 8 * v47);
      if (v49 >> 62)
      {
LABEL_51:
        v50 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v156 = v46;
      v157 = v7;

      if (v50)
      {
        v46 = 0;
        v182 = v49 & 0xFFFFFFFFFFFFFF8;
        v183 = v49 & 0xC000000000000001;
        v180 = (v168 + 48);
        v181 = (v168 + 56);
        v169 = (v168 + 8);
        v7 = v171;
        v173 = (v172 + 32);
        v174 = (v172 + 48);
        v58 = &_swiftEmptyArrayStorage;
        v178 = a5;
        v179 = v25;
        v175 = v36;
        v176 = v50;
        v177 = v49;
        while (1)
        {
          if (v183)
          {
            v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v46 >= *(v182 + 16))
            {
              goto LABEL_50;
            }

            v59 = *&v49->clientIdentity[8 * v46 + 16];
          }

          a5 = v59;
          v60 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v61 = [v59 identifier];
          if (v61)
          {
            v62 = v61;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v63 = 0;
          }

          else
          {
            v63 = 1;
          }

          v25 = v186;
          (*v181)(v7, v63, 1, v186);
          sub_100031B58(v7, v32, &unk_100939D90, "8\n\r");
          v64 = *v180;
          if ((*v180)(v32, 1, v25) != 1)
          {
            break;
          }

          v65 = 0;
          v66 = 0;
          v67 = v185;
          v36 = v175;
LABEL_28:
          sub_1005384A4(a5, v65, v66, v36);
          sub_1000050A4(v32, &unk_100939D90, "8\n\r");
          if ((*v174)(v36, 1, v67) == 1)
          {
            sub_1000050A4(v36, &qword_100940628, &unk_1007A6A20);
          }

          else
          {
            v76 = *v173;
            (*v173)(v184, v36, v67);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v58 = sub_100365A24(0, *v58->clientIdentity + 1, 1, v58);
            }

            v25 = *v58->clientIdentity;
            v77 = *&v58->clientIdentity[8];
            if (v25 >= v77 >> 1)
            {
              v58 = sub_100365A24((v77 > 1), v25 + 1, 1, v58);
            }

            *v58->clientIdentity = v25 + 1;
            v76(v58 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v25, v184, v185);
          }

          v49 = v177;
          a5 = v178;
          ++v46;
          if (v60 == v176)
          {
            goto LABEL_43;
          }
        }

        v68 = v58;
        v69 = v179;
        sub_10018E470(v32, v179);
        if (v64(v69, 1, v25) == 1)
        {
          __break(1u);
          return;
        }

        v70 = v170;
        v36 = v175;
        if (*(v170 + 16))
        {
          v71 = v179;
          v25 = v170;
          v72 = sub_100363F20(v179);
          if (v73)
          {
            v74 = *(*(v70 + 56) + 8 * v72);
            v25 = v169;
            v75 = *v169;

            v75(v71, v186);
            v66 = v74;
            if (v74 >> 62)
            {
              v78 = _CocoaArrayWrapper.endIndex.getter();
              v66 = v74;
              v65 = v78;
            }

            else
            {
              v65 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            goto LABEL_27;
          }

          (*v169)(v71, v186);
        }

        else
        {
          (*v169)(v179, v186);
        }

        v65 = 0;
        v66 = 0;
LABEL_27:
        v58 = v68;
        v7 = v171;
        v67 = v185;
        goto LABEL_28;
      }

      v58 = &_swiftEmptyArrayStorage;
LABEL_43:
      v49, v51, v52, v53, v54, v55, v56, v57;
      v101 = objc_opt_self();
      v46 = v156;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v103 = [v101 objectIDWithUUID:isa];

      v104 = v157;
      v105 = sub_1001BE2C0(v167, v103);
      if (v104)
      {
        (*(v168 + 8))(v46, v186);
        v58, v106, v107, v108, v109, v110, v111, v112;

        return;
      }

      v113 = v105;

      v92 = v113;
      if (v113 >> 62)
      {
        v92 = v113;
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_47;
        }
      }

      else if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_47:
        v114 = sub_100270978(v92);
        v92, v115, v116, v117, v118, v119, v120, v121;
        v185 = sub_1001BD57C(v114, v58);
        v114, v130, v131, v132, v133, v134, v135, v136;
        v129 = v58;
        goto LABEL_48;
      }

LABEL_55:
      v92, v85, v86, v87, v88, v89, v90, v91;
      sub_1000F5104(&qword_10093B448, &qword_10079D400);
      type metadata accessor for REMRemindersListDataView.SectionLite();
      v137 = swift_allocObject();
      *(v137 + 16) = xmmword_100791300;
      (*(v160 + 104))(v159, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v161);
      v185 = v137;
      REMRemindersListDataView.SectionLite.init(type:reminders:)();
      goto LABEL_56;
    }
  }

  v79 = objc_opt_self();
  v80 = UUID._bridgeToObjectiveC()().super.isa;
  v81 = [v79 objectIDWithUUID:v80];

  v82 = sub_1001BE2C0(v167, v81);
  if (v6)
  {
    (*(v168 + 8))(v42, v186);

    return;
  }

  v84 = v82;

  v92 = v84;
  if (v84 >> 62)
  {
    v92 = v84;
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_55;
    }
  }

  else if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_55;
  }

  v93 = sub_100270978(v92);
  v92, v94, v95, v96, v97, v98, v99, v100;
  v185 = sub_1001BD57C(v93, &_swiftEmptyArrayStorage);
  v129 = v93;
LABEL_48:
  v129, v122, v123, v124, v125, v126, v127, v128;
LABEL_56:
  v157 = 0;
  v138 = v158;
  v139 = [v158 shouldCategorizeGroceryItems];
  v141 = v165;
  v140 = v166;
  v142 = &enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.grocery(_:);
  if (!v139)
  {
    v142 = &enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.regular(_:);
  }

  v143 = v162;
  (*(v165 + 104))(v162, *v142, v166);
  (*(v141 + 32))(v164, v143, v140);
  v144 = objc_opt_self();
  v156 = v46;
  v145 = UUID._bridgeToObjectiveC()().super.isa;
  v146 = [v144 objectIDWithUUID:v145];

  REMObjectID.codable.getter();
  v147 = [v138 displayName];
  if (v147)
  {
    v148 = v147;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v149 = [v158 color];
  if (v149)
  {
    v150 = v149;
    REMColor.codable.getter();
  }

  v152 = v165;
  v151 = v166;
  v153 = v164;
  (*(v165 + 16))(v163, v164, v166);
  REMRemindersListDataView.ListsSectionsModel.List.init(listID:listName:listColor:listType:sections:)();
  (*(v152 + 8))(v153, v151);
  (*(v168 + 8))(v156, v186);
  v154 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  (*(*(v154 - 8) + 56))(a5, 0, 1, v154);
}

uint64_t sub_1005452C0(uint64_t a1)
{
  result = sub_1005456F4(&qword_10094BFC0, &type metadata accessor for REMRemindersListDataView.AllSectionsInvocation, &protocol conformance descriptor for REMRemindersListDataView.AllSectionsInvocation);
  *(a1 + 8) = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100545318(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2)
{
  v5 = sub_1000F5104(&qword_100942E08, &qword_1007A3868);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v52 - v7;
  v9 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = (&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14, v15);
  v17 = &v52 - v16;
  v18 = sub_1001A41EC(a1, a2);
  if (!v2)
  {
    v20 = v18;
    v55 = v17;
    v21 = v19;
    v22 = sub_1001A3FA8(a1);
    if (v22 >> 62)
    {
      goto LABEL_22;
    }

    v31 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v21; v31; i = v21)
    {
      v59 = v13;
      v21 = 0;
      v61 = v22 & 0xFFFFFFFFFFFFFF8;
      v62 = v22 & 0xC000000000000001;
      v52 = v10;
      v56 = (v10 + 32);
      v57 = (v10 + 48);
      v13 = &_swiftEmptyArrayStorage;
      v53 = v20;
      v54 = a1;
      v58 = v31;
      v60 = v22;
      while (1)
      {
        if (v62)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *(v61 + 16))
          {
            goto LABEL_21;
          }

          v22 = *(v22 + 8 * v21 + 32);
        }

        v10 = v22;
        v32 = (v21 + 1);
        if (__OFADD__(v21, 1))
        {
          break;
        }

        v64 = v22;
        sub_100544468(&v64, v20, i, a1, v8);

        if ((*v57)(v8, 1, v9) == 1)
        {
          sub_1000050A4(v8, &qword_100942E08, &qword_1007A3868);
        }

        else
        {
          v33 = v55;
          v34 = *v56;
          (*v56)(v55, v8, v9);
          v34(v59, v33, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_100365B88(0, *v13->clientIdentity + 1, 1, v13);
          }

          v36 = *v13->clientIdentity;
          v35 = *&v13->clientIdentity[8];
          v10 = (v36 + 1);
          if (v36 >= v35 >> 1)
          {
            v13 = sub_100365B88((v35 > 1), v36 + 1, 1, v13);
          }

          *v13->clientIdentity = v10;
          v34((v13 + ((v52[80] + 32) & ~v52[80]) + *(v52 + 9) * v36), v59, v9);
          v20 = v53;
          a1 = v54;
        }

        ++v21;
        v22 = v60;
        if (v32 == v58)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v37 = v22;
      v31 = _CocoaArrayWrapper.endIndex.getter();
      v22 = v37;
    }

    v13 = &_swiftEmptyArrayStorage;
LABEL_24:
    v22, v23, v24, v25, v26, v27, v28, v29;
    i, v38, v39, v40, v41, v42, v43, v44;
    v20, v45, v46, v47, v48, v49, v50, v51;
  }

  return v13;
}

uint64_t sub_1005456F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10054573C(const char *a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4, _TtC7remindd19RDXPCStorePerformer *a5, ...)
{
  v7 = a3;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();
  a5, v11, v12, v13, v14, v15, v16, v17;
  a4, v18, v19, v20, v21, v22, v23, v24;
  if (os_log_type_enabled(v9, v10))
  {
    v25 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v25 = 136446722;
    v26 = StaticString.description.getter();
    v28 = v27;
    v29 = sub_10000668C(v26, v27, &v60);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v37 = Dictionary.description.getter();
    v39 = v38;
    LOBYTE(v28) = v7;
    v40 = sub_10000668C(v37, v38, &v60);
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v25 + 14) = v40;
    *(v25 + 22) = 2082;
    v48 = Dictionary.description.getter();
    v50 = v49;
    v51 = sub_10000668C(v48, v49, &v60);
    v52 = v50;
    v7 = v28;
    v52, v53, v54, v55, v56, v57, v58, v59;
    *(v25 + 24) = v51;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s; UserInfo=%s; PublicUserInfo=%{public}s", v25, 0x20u);
    swift_arrayDestroy();
  }

  if (v7)
  {
    goto LABEL_6;
  }

  if (a1)
  {
    rdi_os_crash();
LABEL_6:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100545C44(uint64_t a1, uint64_t *a2, void *a3, SEL *a4)
{
  v6 = type metadata accessor for Logger();
  sub_1000EECAC(v6, a2);
  sub_100006654(v6, a2);
  v7 = [objc_opt_self() *a4];
  return Logger.init(_:)();
}

uint64_t sub_100545CB8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094BFC8);
  v1 = sub_100006654(v0, qword_10094BFC8);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100545D80(_TtC7remindd19RDXPCStorePerformer *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v130 = a1;
  v126 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2;
  v13 = sub_100008E70();
  v14 = v12;
  if (a2)
  {
    v129 = v3;
    if (v12)
    {
      KeyPath = swift_getKeyPath();
      v16 = [v11 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = UUID.uuidString.getter();
      v19 = v18;
      (*(v7 + 8))(v10, v6);
      v131 = v17;
      v132 = v19;
      v20._countAndFlagsBits = 47;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      v21._countAndFlagsBits = v13;
      v21._object = v14;
      String.append(_:)(v21);
      v14, v22, v23, v24, v25, v26, v27, v28;
      v29 = sub_1003928A0(KeyPath, v131, v132);
    }

    else
    {
      v39 = swift_getKeyPath();
      v40 = [v11 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = UUID.uuidString.getter();
      v43 = v42;
      (*(v7 + 8))(v10, v6);
      v131 = v41;
      v132 = v43;

      v44._countAndFlagsBits = 47;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);
      v43, v45, v46, v47, v48, v49, v50, v51;
      v29 = sub_100546800(v39, v131, v132, 6, &qword_100943A28, &unk_1007B0C00);
    }

    v4 = v129;
    goto LABEL_8;
  }

  if (v12)
  {
    v30 = swift_getKeyPath();
    v131 = 47;
    v132 = 0xE100000000000000;
    v31._countAndFlagsBits = v13;
    v31._object = v14;
    String.append(_:)(v31);
    v14, v32, v33, v34, v35, v36, v37, v38;
    v29 = sub_1005465B8(v30, v131, v132, 6, &qword_100943A28, &unk_1007B0C00);

LABEL_8:
    v52 = v29;
    goto LABEL_9;
  }

  v29 = 0;
LABEL_9:
  sub_100547564();
  v53 = [objc_allocWithZone(NSFetchRequest) init];
  v54 = [swift_getObjCClassFromMetadata() entity];
  [v53 setEntity:v54];

  [v53 setAffectedStores:0];
  [v53 setPredicate:v29];

  [v53 setReturnsObjectsAsFaults:0];
  v55 = NSManagedObjectContext.fetch<A>(_:)();
  v56 = v4;
  if (v4)
  {

    return;
  }

  v57 = v55;
  v133 = sub_1000F5104(&qword_10094C080, &unk_1007B0BF0);
  v131 = v57;
  throwingCast<A>(_:as:failureMessage:)();
  sub_10000607C(&v131);
  v58 = v134;
  v124 = v53;
  v125 = v29;
  if (v134 >> 62)
  {
    goto LABEL_48;
  }

  v59 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v123 = 0;
  if (v59)
  {
LABEL_15:
    if (v59 >= 1)
    {
      v60 = 0;
      v128 = v58 & 0xC000000000000001;
      v56 = _swiftEmptyDictionarySingleton;
      v127 = v58;
      while (1)
      {
        if (v128)
        {
          v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v69 = *&v58->clientIdentity[8 * v60 + 16];
        }

        v70 = v69;
        v71 = [v69 identifier];
        if (v71)
        {
          v72 = v71;
          v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v130 = v73;

          v74 = [v70 managerData];
          if (v74)
          {
            v75 = v74;
            v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v78 = v77;
          }

          else
          {
            v76 = 0;
            v78 = 0xC000000000000000;
          }

          v79 = [v70 version];
          if ((v79 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            v59 = _CocoaArrayWrapper.endIndex.getter();
            v123 = v56;
            if (!v59)
            {
              goto LABEL_49;
            }

            goto LABEL_15;
          }

          v80 = v79;
          v81 = objc_allocWithZone(REMReplicaManagerSerializedData);
          isa = Data._bridgeToObjectiveC()().super.isa;
          v58 = [v81 initWithManagerData:isa version:v80];

          sub_10001BBA0(v76, v78);
          if (v58)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v131 = v56;
            v85 = sub_100005F4C(v129, v130);
            v86 = v56[2];
            v87 = (v84 & 1) == 0;
            v88 = v86 + v87;
            if (__OFADD__(v86, v87))
            {
              goto LABEL_46;
            }

            v89 = v84;
            if (v56[3] >= v88)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v56 = v131;
                if ((v84 & 1) == 0)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                sub_1003776DC();
                v56 = v131;
                if ((v89 & 1) == 0)
                {
                  goto LABEL_42;
                }
              }
            }

            else
            {
              sub_100371E94(v88, isUniquelyReferenced_nonNull_native);
              v90 = sub_100005F4C(v129, v130);
              if ((v89 & 1) != (v91 & 1))
              {
                goto LABEL_52;
              }

              v85 = v90;
              v56 = v131;
              if ((v89 & 1) == 0)
              {
LABEL_42:
                v56[(v85 >> 6) + 8] |= 1 << v85;
                v111 = (v56[6] + 16 * v85);
                v112 = v130;
                *v111 = v129;
                v111[1] = v112;
                *(v56[7] + 8 * v85) = v58;
                v113 = v56[2];
                v114 = __OFADD__(v113, 1);
                v115 = v113 + 1;
                if (v114)
                {
                  goto LABEL_47;
                }

                v56[2] = v115;
                goto LABEL_44;
              }
            }

            v102 = v56[7];
            v103 = *(v102 + 8 * v85);
            *(v102 + 8 * v85) = v58;

            v130, v104, v105, v106, v107, v108, v109, v110;
            v70 = v103;
LABEL_44:

            v58 = v127;
            goto LABEL_21;
          }

          v92 = v130;
          v93 = sub_100005F4C(v129, v130);
          v95 = v94;
          v92, v94, v96, v97, v98, v99, v100, v101;
          if ((v95 & 1) == 0)
          {
            goto LABEL_44;
          }

          v61 = swift_isUniquelyReferenced_nonNull_native();
          v131 = v56;
          v58 = v127;
          if ((v61 & 1) == 0)
          {
            sub_1003776DC();
            v56 = v131;
          }

          *(v56[6] + 16 * v93 + 8), v62, v63, v64, v65, v66, v67, v68;

          sub_100337828();
        }

LABEL_21:
        if (v59 == ++v60)
        {
          goto LABEL_50;
        }
      }
    }

    __break(1u);
LABEL_52:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_49:
    v56 = _swiftEmptyDictionarySingleton;
LABEL_50:

    v58, v116, v117, v118, v119, v120, v121, v122;
    *v126 = v56;
  }
}

void sub_100546494(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1005464FC(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setIdentifier:?];
}

id sub_1005465B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  _StringGuts.grow(_:)(16);
  0xE000000000000000, v10, v11, v12, v13, v14, v15, v16;
  v24._countAndFlagsBits = sub_1003AB9F4(a4, v17, v18, v19, v20, v21, v22, v23);
  object = v24._object;
  String.append(_:)(v24);
  object, v26, v27, v28, v29, v30, v31, v32;
  v33._countAndFlagsBits = 4203808;
  v33._object = 0xE300000000000000;
  String.append(_:)(v33);
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100791340;

  v35 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v36)
  {
    v37 = v35;
    v38 = v36;

    *(v34 + 32) = v37;
    *(v34 + 40) = v38;
    *(v34 + 88) = &type metadata for String;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = a2;
    *(v34 + 72) = a3;
    v39 = String._bridgeToObjectiveC()();
    0xEB00000000485449, v40, v41, v42, v43, v44, v45, v46;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v34, v48, v49, v50, v51, v52, v53, v54;
    v55 = [objc_opt_self() predicateWithFormat:v39 argumentArray:isa];

    return v55;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v57._object = 0x80000001007EC120;
    v57._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v57);
    sub_1000F5104(a5, a6);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_100546800(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  _StringGuts.grow(_:)(18);
  0xE000000000000000, v10, v11, v12, v13, v14, v15, v16;
  v24._countAndFlagsBits = sub_1003AB9F4(a4, v17, v18, v19, v20, v21, v22, v23);
  object = v24._object;
  String.append(_:)(v24);
  object, v26, v27, v28, v29, v30, v31, v32;
  v33._countAndFlagsBits = 4203808;
  v33._object = 0xE300000000000000;
  String.append(_:)(v33);
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100791340;

  v35 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v36)
  {
    v37 = v35;
    v38 = v36;

    *(v34 + 32) = v37;
    *(v34 + 40) = v38;
    *(v34 + 88) = &type metadata for String;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = a2;
    *(v34 + 72) = a3;
    v39 = String._bridgeToObjectiveC()();
    0xED00004854495753, v40, v41, v42, v43, v44, v45, v46;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v34, v48, v49, v50, v51, v52, v53, v54;
    v55 = [objc_opt_self() predicateWithFormat:v39 argumentArray:isa];

    return v55;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v57._object = 0x80000001007EC120;
    v57._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v57);
    sub_1000F5104(a5, a6);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *sub_100546A4C(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_100270804(a1);
  v7 = sub_1003EF77C(KeyPath, v6);

  sub_100547564();
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  v10 = v8;
  [v8 setAffectedStores:0];
  [v8 setPredicate:v7];

  v11 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

    return a2;
  }

  v12 = v11;
  v63[3] = sub_1000F5104(&qword_10094C080, &unk_1007B0BF0);
  v63[0] = v12;
  throwingCast<A>(_:as:failureMessage:)();
  sub_10000607C(v63);
  isUniquelyReferenced_nonNull_native = v64;
  if (v64 >> 62)
  {
LABEL_31:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_32:

    isUniquelyReferenced_nonNull_native, v50, v51, v52, v53, v54, v55, v56;
    return _swiftEmptyDictionarySingleton;
  }

  v14 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_32;
  }

LABEL_5:
  v58 = v10;
  v10 = 0;
  v62 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v59 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  a2 = _swiftEmptyDictionarySingleton;
  v60 = v14;
  v61 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    if (v62)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v59 + 16))
      {
        goto LABEL_29;
      }

      v15 = *(isUniquelyReferenced_nonNull_native + 8 * v10 + 32);
    }

    v16 = v15;
    v17 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v18 = [v15 identifier];
    if (v18)
    {
      break;
    }

LABEL_7:
    ++v10;
    if (v17 == v14)
    {

      isUniquelyReferenced_nonNull_native, v43, v44, v45, v46, v47, v48, v49;
      return a2;
    }
  }

  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63[0] = a2;
  v31 = sub_100005F4C(v20, v22);
  v32 = a2[2];
  v33 = (v24 & 1) == 0;
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
    goto LABEL_28;
  }

  v35 = v24;
  if (a2[3] >= v34)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v24)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_1003776F0();
      if (v35)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    a2 = v63[0];
    *(v63[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
    v39 = (a2[6] + 16 * v31);
    *v39 = v20;
    v39[1] = v22;
    *(a2[7] + 8 * v31) = v23;

    v40 = a2[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_30;
    }

    a2[2] = v42;
    goto LABEL_25;
  }

  sub_100371EA8(v34, isUniquelyReferenced_nonNull_native);
  v36 = sub_100005F4C(v20, v22);
  if ((v35 & 1) == (v24 & 1))
  {
    v31 = v36;
    if ((v35 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_21:
    v22, v24, v25, v26, v27, v28, v29, v30;
    a2 = v63[0];
    v37 = *(v63[0] + 56);
    v38 = *(v37 + 8 * v31);
    *(v37 + 8 * v31) = v23;

LABEL_25:
    v14 = v60;
    isUniquelyReferenced_nonNull_native = v61;
    goto LABEL_7;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100546E18(uint64_t a1, uint64_t a2, id a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = a2;
  v171 = v8;
  v10 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v170 = v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = &_swiftEmptyArrayStorage;
  v163 = v10;
  v164 = v11;
  v166 = a1;
  if (v13)
  {
    v168 = v3;
    v162 = a3;
    v175 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v13, 0);
    v14 = v175;
    v169 = v10 + 1;
    v15 = (a1 + 56);
    v167 = v13;
    do
    {
      v16 = *(v15 - 3);
      v172 = *(v15 - 2);
      v18 = *(v15 - 1);
      v17 = *v15;
      v19 = v16;

      v20 = v17;
      v21 = [v19 uuid];
      v22 = v170;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = UUID.uuidString.getter();
      v25 = v24;
      (*v169)(v22, v171);
      v173 = v23;
      v174 = v25;
      v26._countAndFlagsBits = 47;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      v27._countAndFlagsBits = v172;
      v27._object = v18;
      String.append(_:)(v27);

      v18, v28, v29, v30, v31, v32, v33, v34;
      v35 = v173;
      v36 = v174;
      v175 = v14;
      v38 = *v14->clientIdentity;
      v37 = *&v14->clientIdentity[8];
      if (v38 >= v37 >> 1)
      {
        sub_100026EF4((v37 > 1), v38 + 1, 1);
        v14 = v175;
      }

      *v14->clientIdentity = v38 + 1;
      v39 = v14 + 16 * v38;
      *(v39 + 4) = v35;
      *(v39 + 5) = v36;
      v15 += 4;
      --v13;
    }

    while (v13);
    a3 = v162;
    v11 = v164;
    v13 = v167;
    v4 = v168;
  }

  v40 = sub_100546A4C(v14, v11);
  if (v4)
  {
    v48 = v14;
LABEL_9:
    v48, v41, v42, v43, v44, v45, v46, v47;
    return;
  }

  v49 = v40;
  v14, v41, v42, v43, v44, v45, v46, v47;
  if (!v13)
  {
    v48 = v49;
    goto LABEL_9;
  }

  v160[1] = 0;
  v162 = a3;
  v51 = v163 + 1;
  v169 = (v13 - 1);
  v52 = &v166->clientIdentity[40];
  *&v50 = 134218240;
  v161 = v50;
  v165 = v49;
  ++v163;
  while (1)
  {
    v68 = *(v52 - 3);
    v69 = *(v52 - 2);
    v71 = *(v52 - 1);
    v70 = *v52;
    v168 = v52;
    v72 = v68;

    v172 = v70;
    v73 = [v72 uuid];
    v74 = v170;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v75 = UUID.uuidString.getter();
    v77 = v76;
    v78 = *v51;
    (*v51)(v74, v171);
    v173 = v75;
    v174 = v77;
    v79._countAndFlagsBits = 47;
    v79._object = 0xE100000000000000;
    String.append(_:)(v79);
    v167 = v69;
    v80._countAndFlagsBits = v69;
    v80._object = v71;
    String.append(_:)(v80);
    v88 = v174;
    if (!*v49->clientIdentity)
    {
      break;
    }

    v89 = sub_100005F4C(v173, v174);
    v91 = v90;
    v88, v90, v92, v93, v94, v95, v96, v97;
    if ((v91 & 1) == 0)
    {
      goto LABEL_24;
    }

    v98 = *(*&v49->clientIdentity[40] + 8 * v89);
    v99 = [v172 version];
    v100 = [v98 version];
    if ((v100 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }

    v101 = v100;
    if (v100)
    {
      if (v100 < v99)
      {
        goto LABEL_31;
      }
    }

    else if (v99)
    {
LABEL_31:
      v166 = v71;
      v106 = v72;
      goto LABEL_27;
    }

    if (qword_1009364F8 != -1)
    {
      swift_once();
    }

    v102 = type metadata accessor for Logger();
    sub_100006654(v102, qword_10094BFC8);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = v161;
      *(v105 + 4) = v99;
      *(v105 + 12) = 2048;
      *(v105 + 14) = v101;
      _os_log_impl(&_mh_execute_header, v103, v104, "Skipping replica manager update. Version in database is newer {inputVersion: %llu, currentVersion: %llu}", v105, 0x16u);
    }

    v71, v53, v54, v55, v56, v57, v58, v59;
    v49 = v165;
    v67 = v169;
    if (!v169)
    {
LABEL_32:
      v49, v60, v61, v62, v63, v64, v65, v66;
      return;
    }

LABEL_13:
    v169 = (v67 - 1);
    v52 = v168 + 4;
  }

  v174, v81, v82, v83, v84, v85, v86, v87;
LABEL_24:
  v166 = v71;
  v106 = v72;
  v107 = [v72 uuid];
  v108 = v170;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  v110 = v109;
  v78(v108, v171);
  v111 = String._bridgeToObjectiveC()();
  v110, v112, v113, v114, v115, v116, v117, v118;
  v119 = [v162 storeForAccountIdentifier:v111];

  sub_100547564();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v121 = [ObjCClassFromMetadata entity];
  v122 = objc_allocWithZone(ObjCClassFromMetadata);
  v123 = v164;
  v124 = [v122 initWithEntity:v121 insertIntoManagedObjectContext:v164];
  v98 = v124;
  if (v119)
  {
    v125 = v124;
    [v123 assignObject:v125 toPersistentStore:v119];
  }

LABEL_27:
  v126 = v98;
  v127 = v106;
  v128 = [v106 uuid];
  v129 = v170;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v130 = UUID.uuidString.getter();
  v132 = v131;
  v133 = v129;
  v51 = v163;
  v78(v133, v171);
  v173 = v130;
  v174 = v132;
  v134._countAndFlagsBits = 47;
  v134._object = 0xE100000000000000;
  String.append(_:)(v134);
  v136 = v166;
  v135._countAndFlagsBits = v167;
  v135._object = v166;
  String.append(_:)(v135);
  v137 = v174;
  v138 = String._bridgeToObjectiveC()();
  v137, v139, v140, v141, v142, v143, v144, v145;
  [v126 setIdentifier:v138];

  v146 = v172;
  v147 = [v172 managerData];
  v148 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v150 = v149;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10001BBA0(v148, v150);
  [v126 setManagerData:isa];

  v152 = [v146 version];
  if ((v152 & 0x8000000000000000) == 0)
  {
    [v126 setVersion:v152];

    v136, v153, v154, v155, v156, v157, v158, v159;
    v67 = v169;
    v49 = v165;
    if (!v169)
    {
      goto LABEL_32;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_100547564()
{
  result = qword_10094C078;
  if (!qword_10094C078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10094C078);
  }

  return result;
}

void destroy for RDReplicaManagerPayload(uint64_t a1)
{
  *(a1 + 16), v2, v3, v4, v5, v6, v7, v8;
  v9 = *(a1 + 24);
}

void *initializeWithCopy for RDReplicaManagerPayload(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;
  v6 = v3;

  v7 = v5;
  return a1;
}

uint64_t assignWithCopy for RDReplicaManagerPayload(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v7, v8, v9, v10, v11, v12, v13, v14;
  v15 = *(a2 + 24);
  v16 = *(a1 + 24);
  *(a1 + 24) = v15;
  v17 = v15;

  return a1;
}

uint64_t assignWithTake for RDReplicaManagerPayload(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16), v5, v6, v7, v8, v9, v10, v11;
  v12 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_100547720(uint64_t a1, uint64_t a2)
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
  v9[1] = sub_100547870;

  return sub_100547A30(v8, a1, a2, v2, v6);
}

uint64_t sub_100547870()
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
    v4 = sub_100549E1C(&qword_10093DB28, 255, &type metadata accessor for TokenGenerator, &protocol conformance descriptor for TokenGenerator);
    *v3 = v2;
    v3[1] = sub_1002F39E0;
    v5 = v2[2];

    return GenerativeConfigurationRunnable<>.run(returning:)(v5, v4);
  }
}

uint64_t sub_100547A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return _swift_task_switch(sub_100547E8C, 0, 0);
}

uint64_t sub_100547E8C()
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
  *(v0 + 640) = sub_100549E1C(&qword_10093DB58, 255, &type metadata accessor for ChatMessagesPrompt, &protocol conformance descriptor for ChatMessagesPrompt);
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
  v18 = OBJC_IVAR____TtCC7remindd27RDExtractActionItemsSessionP33_65ACC8D7E27C3DAD01B886D5505F9AB111_ClientInfo_trackingConfig;
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
  v20[1] = sub_1005483CC;
  v21 = *(v0 + 360);

  return static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataChatMessagesPrompt(_:)(v21, 0xD00000000000001CLL, 0x80000001007FC1F0);
}

uint64_t sub_1005483CC()
{
  *(*v1 + 712) = v0;

  if (v0)
  {
    v2 = sub_1002F4EA4;
  }

  else
  {
    v2 = sub_1005484E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005484E0()
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
    *(inited + 48) = 0xD000000000000436;
    *(inited + 56) = 0x80000001007F3CC0;
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
  v0[39] = *(v36 + OBJC_IVAR____TtCC7remindd27RDExtractActionItemsSessionP33_65ACC8D7E27C3DAD01B886D5505F9AB111_ClientInfo__model);
  type metadata accessor for TokenGenerator();
  GenerativeConfigurationProtocol.with<A>(model:modelType:)();
  v57(v38, v39);
  (*(v41 + 8))(v40, v55);
  v57(v37, v39);

  v42 = v0[1];

  return v42();
}

uint64_t sub_100548C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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

uint64_t sub_100548FEC()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[3] = &type metadata for String;
  v16[4] = &protocol witness table for String;
  v16[0] = 0xD000000000000436;
  v16[1] = 0x80000001007F3CC0;
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

uint64_t sub_1005491A4(uint64_t a1, uint64_t a2)
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

void sub_10054935C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5)
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
  v24(v6 + OBJC_IVAR____TtCC7remindd27RDExtractActionItemsSessionP33_65ACC8D7E27C3DAD01B886D5505F9AB111_ClientInfo_trackingConfig, v23, v19);
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
    static Catalog.ResourceBundle.TokenGeneration.LLM.RemindersSuggestActionItemsV2ID.getter();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static CachePolicy.inMemory.getter();
    GenerativeModelSessionConfiguration.init(identifier:handlesSensitiveData:cachePolicy:)();
    *(v73 + OBJC_IVAR____TtCC7remindd27RDExtractActionItemsSessionP33_65ACC8D7E27C3DAD01B886D5505F9AB111_ClientInfo__model) = TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:parentOfOnBehalfOf:)();
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

uint64_t sub_10054992C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtCC7remindd27RDExtractActionItemsSessionP33_65ACC8D7E27C3DAD01B886D5505F9AB111_ClientInfo_trackingConfig;
  v10 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t sub_1005499E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC7remindd27RDExtractActionItemsSessionP33_65ACC8D7E27C3DAD01B886D5505F9AB111_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_100549A6C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC7remindd27RDExtractActionItemsSessionP33_65ACC8D7E27C3DAD01B886D5505F9AB111_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t type metadata accessor for RDExtractActionItemsSession._ClientInfo(uint64_t a1)
{
  result = qword_10094C160;
  if (!qword_10094C160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100549BF0(uint64_t a1)
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

void sub_100549C98(uint64_t a1, uint64_t a2)
{
  sub_100549E1C(&qword_10094C200, a2, type metadata accessor for RDExtractActionItemsSession, &unk_1007B0C90);

  GenerativeModelSessionTokenGenerator.prewarm()();
}

uint64_t sub_100549D04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1002F6170;

  return sub_100547720(a1, a2);
}

uint64_t sub_100549E1C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100549E64(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = type metadata accessor for DispatchQoS();
  v8 = *(v24 - 8);
  __chkstk_darwin(v24, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v4 + 16);
  static DispatchWorkItemFlags.barrier.getter();
  v17 = swift_allocObject();
  v18 = swift_weakInit();
  if (a1)
  {
    __chkstk_darwin(v18, v19);
    *(&v23 - 4) = v17;
    *(&v23 - 3) = a2;
    *(&v23 - 2) = a3;
    OS_dispatch_queue.sync<A>(flags:execute:)();
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v21 = swift_allocObject();
    v21[2] = v17;
    v21[3] = a2;
    v21[4] = a3;
    aBlock[4] = sub_10054B6C0;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008F6A60;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);
    (*(v8 + 8))(v11, v24);
    (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_10054A160()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094C208);
  v1 = sub_100006654(v0, qword_10094C208);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10054A228@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  if (qword_100936510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = sub_100353894(a1, qword_10094C228);
  if (v6)
  {
    v7 = v6;
LABEL_13:
    result = swift_endAccess();
    *a3 = v7;
    return result;
  }

  swift_endAccess();
  type metadata accessor for RDManualSortIDCache();
  v7 = swift_allocObject();
  v7[4] = 0;
  v7[2] = a2;
  type metadata accessor for RDManualSortIDCacheContext();
  swift_allocObject();
  v8 = a2;
  v9 = sub_1004777E8(0);
  v7[3] = v9;
  *(v9 + 40) = &off_1008F6A00;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  if ((qword_10094C228 & 0xC000000000000001) == 0)
  {

    goto LABEL_12;
  }

  if (qword_10094C228 < 0)
  {
    v10 = qword_10094C228;
  }

  else
  {
    v10 = qword_10094C228 & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    qword_10094C228 = sub_10021E294(v10, result + 1);
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = qword_10094C228;
    sub_1002CA7F0(v7, a1, isUniquelyReferenced_nonNull_native);
    qword_10094C228 = v13;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_10054A3FC(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 24);
    v8[3] = type metadata accessor for RDManualSortIDCacheContext();
    v8[4] = a4;
    v8[0] = v7;

    a2(v8);

    return sub_10000607C(v8);
  }

  return result;
}

uint64_t sub_10054A49C(uint64_t a1, void (*a2)(void *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 24);
    v5[3] = type metadata accessor for RDManualSortIDCacheContext();
    v5[4] = &off_1008F2FD0;
    v5[0] = v4;

    a2(v5);

    return sub_10000607C(v5);
  }

  return result;
}

uint64_t sub_10054A548(char a1)
{
  v2 = v1;
  sub_100549E64(a1 & 1, sub_10054A680, 0);
  if (qword_100936500 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_10094C208);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "RDManualSortIDCache cancels observing account changes", v6, 2u);
  }

  if (*(v2 + 32))
  {

    AnyCancellable.cancel()();
  }

  *(v2 + 32) = 0;
}

uint64_t sub_10054A6AC()
{
  v0 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v0 - 8, v1);
  v46 = &v43 - v2;
  v43 = sub_1000F5104(&unk_100936F50, &unk_100791B40);
  v3 = *(v43 - 8);
  __chkstk_darwin(v43, v4);
  v6 = &v43 - v5;
  v7 = type metadata accessor for NSNotificationCenter.Publisher();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939970, &unk_10079ADB0);
  v13 = *(v12 - 8);
  v44 = v12;
  v45 = v13;
  __chkstk_darwin(v12, v14);
  v16 = &v43 - v15;
  v17 = sub_1000F5104(&unk_100936F60, &unk_100791B50);
  v18 = *(v17 - 8);
  v48 = v17;
  v49 = v18;
  __chkstk_darwin(v17, v19);
  v21 = &v43 - v20;
  v22 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  v26 = sub_100440048(v23, v24, 0xD000000000000013, 0x80000001007B0D30, 0);
  v25, v27, v28, v29, v30, v31, v32, v33;
  (*(v8 + 8))(v11, v7);
  v50 = v26;
  sub_1000F5104(&unk_10093D140, qword_1007969F0);
  sub_1000F5104(&unk_100936F70, &unk_100791B60);
  sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();
  sub_10000CB48(&unk_100936F80, &unk_100936F50, &unk_100791B40, &protocol conformance descriptor for Publishers.Map<A, B>);
  v34 = v43;
  Publisher.filter(_:)();

  (*(v3 + 8))(v6, v34);
  v50 = *(v47 + 16);
  v35 = v50;
  v36 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v37 = v46;
  (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
  sub_100007F54();
  sub_10000CB48(&unk_10093D160, &unk_100939970, &unk_10079ADB0, &protocol conformance descriptor for Publishers.Filter<A>);
  sub_10054B6E8(&qword_10093CD40, sub_100007F54, &protocol conformance descriptor for OS_dispatch_queue);
  v38 = v35;
  v39 = v44;
  Publisher.receive<A>(on:options:)();
  sub_100295564(v37);

  (*(v45 + 8))(v16, v39);
  swift_allocObject();
  swift_weakInit();
  sub_10000CB48(&unk_100936F90, &unk_100936F60, &unk_100791B50, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v40 = v48;
  v41 = Publisher<>.sink(receiveValue:)();

  (*(v49 + 8))(v21, v40);
  return v41;
}

uint64_t sub_10054ACB0()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = *(v0 - 8);
  v18 = v0;
  __chkstk_darwin(v0, v1);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4, v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8, v7);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007F54();
  v19 = type metadata accessor for RDManualSortIDCache();
  sub_1000F5104(&qword_10094C2E0, &qword_1007B0D78);
  v13 = String.init<A>(reflecting:)();
  v16[1] = v14;
  v16[2] = v13;
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v8);
  static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  static DispatchQoS.unspecified.getter();
  v19 = &_swiftEmptyArrayStorage;
  sub_10054B6E8(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v17 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10094C220 = result;
  return result;
}

unint64_t sub_10054AFF4()
{
  result = sub_100390874(&_swiftEmptyArrayStorage);
  qword_10094C228 = result;
  return result;
}

uint64_t sub_10054B01C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10054A548(0);
  }

  return result;
}

uint64_t sub_10054B078()
{

  return swift_deallocClassInstance();
}

unint64_t *sub_10054B0E4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_10054B3AC(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_10054B15C(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v23 = v4;
    v24 = v1;
    v22[1] = v22;
    __chkstk_darwin(a1, v5);
    v7 = v22 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v25 = 0;
    v8 = 0;
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v4 = v10 & *(v2 + 56);
    v11 = (v9 + 63) >> 6;
    while (v4)
    {
      v12 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_12:
      v15 = v12 | (v8 << 6);
      if ([*(*(v2 + 48) + 24 * v15 + 8) isCloudKit])
      {
        *&v7[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v25++, 1))
        {
          __break(1u);
          return sub_1001A0644(v7, v23, v25, v2);
        }
      }
    }

    v13 = v8;
    while (1)
    {
      v8 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v8 >= v11)
      {
        return sub_1001A0644(v7, v23, v25, v2);
      }

      v14 = *(v2 + 56 + 8 * v8);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v4 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v18 = v1;
    v19 = v5;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v5 = v19;
    v1 = v18;
  }

  v20 = swift_slowAlloc();
  v21 = sub_10054B0E4(v20, v4, v2);

  return v21;
}

unint64_t *sub_10054B3AC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    result = [*(*(a3 + 48) + 24 * v14 + 8) isCloudKit];
    if (result)
    {
      *(v17 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_1001A0644(v17, v16, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10054B4EC@<X0>(Swift::Int *a2@<X8>)
{

  result = sub_10054B15C(v3);
  *a2 = result;
  return result;
}

uint64_t sub_10054B530(uint64_t result)
{
  if (*(v1 + 32))
  {
    v2 = 1;
  }

  else
  {
    v2 = result == 0;
  }

  if (!v2)
  {
    v3 = v1;
    v4 = *(result + OBJC_IVAR____TtC7remindd21RDAccountManualSortID_accountTypeHost);

    if ([v4 isCloudKit])
    {
      if (qword_100936500 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100006654(v5, qword_10094C208);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "RDManualSortIDCache starts observing account changes", v8, 2u);
      }

      v9 = sub_10054A6AC();

      *(v3 + 32) = v9;
    }
  }

  return result;
}

uint64_t sub_10054B6E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_10054B730(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  }

  return a1;
}

uint64_t sub_10054B82C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_10054B8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_10054B980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_10054BA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_10054BAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t type metadata accessor for RDPermanentlyHiddenReminder(uint64_t a1)
{
  result = qword_10094C340;
  if (!qword_10094C340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10054BC04(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

Swift::Int sub_10054BCCC()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10054C024(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_10054C024(&unk_1009431A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10054BDB8(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10054C024(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_10054C024(&unk_1009431A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10054BE8C(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10054C024(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_10054C024(&unk_1009431A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10054BF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Date.== infix(_:_:)();
}

uint64_t sub_10054C024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10054C06C(_TtC7remindd19RDXPCStorePerformer *a1@<X1>, void (**a2)(uint64_t, uint64_t)@<X2>, void *a3@<X3>, uint64_t a5@<X8>)
{
  v169 = a2;
  v158 = a3;
  v160 = a5;
  v161 = type metadata accessor for REMRemindersListDataView.ListsModel();
  v163 = *(v161 - 8);
  __chkstk_darwin(v161, v6);
  v159 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v164 = &v145 - v10;
  v11 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  __chkstk_darwin(v11 - 8, v12);
  v156 = &v145 - v13;
  v172 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v157 = *(v172 - 8);
  __chkstk_darwin(v172, v14);
  v167 = &v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v170 = (&v145 - v18);
  v19 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v165 = *(v19 - 8);
  v166 = v19;
  __chkstk_darwin(v19, v20);
  v22 = (&v145 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23, v24);
  v26 = &v145 - v25;
  v27 = type metadata accessor for REMRemindersListDataView.Diff();
  v162 = *(v27 - 8);
  __chkstk_darwin(v27, v28);
  v30 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v32);
  v34 = &v145 - v33;
  v35 = _s10PredicatesOMa(0);
  __chkstk_darwin(v35, v36);
  v38 = &v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v171;
  v40 = sub_10054D590(a1);
  if (v39)
  {
    return;
  }

  v150 = v22;
  v152 = v26;
  v153 = v40;
  v171 = a1;
  v154 = v30;
  v155 = v34;
  v149 = v27;
  v41 = REMRemindersListDataView.AllInvocation.Parameters.countCompleted.getter();
  if (v41)
  {
    swift_storeEnumTagMultiPayload();
    v42 = sub_100043AA8();
    sub_1000513B4(v38);
    sub_100345DB0();
    v43 = [objc_allocWithZone(NSFetchRequest) init];
    v44 = [swift_getObjCClassFromMetadata() entity];
    [v43 setEntity:v44];

    [v43 setAffectedStores:0];
    v45 = v42;
    [v43 setPredicate:v42];
    v46 = v171;
    v47 = NSManagedObjectContext.count<A>(for:)();
    v48 = v154;
    v49 = v155;
    v148 = v47;
  }

  else
  {
    v148 = 0;
    v48 = v154;
    v49 = v155;
    v46 = v171;
  }

  v50 = [v168 fetchResultTokenToDiffAgainst];
  sub_100534D44(v50, v49);

  v151 = 0;
  v51 = v48;
  v52 = v152;
  REMRemindersListDataView.AllInvocation.Parameters.remindersPrefetch.getter();
  v54 = v165;
  v53 = v166;
  v55 = v150;
  (*(v165 + 16))(v150, v52, v166);
  v56 = (*(v54 + 88))(v55, v53);
  v147 = v41;
  if (v56 != enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
  {
    v89 = v162;
    v88 = v163;
    if (v56 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
    {
      v91 = v165;
      v90 = v166;
      (*(v165 + 96))(v55, v166);
      sub_10053E698(*v55, v49, v46, v158, 0);
      (*(v91 + 8))(v152, v90);
      v92 = v164;
      v93 = v159;
      v94 = v149;
LABEL_45:
      REMRemindersListDataView.ListsModel.init(groups:completedRemindersCount:hasCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
      v134 = v161;
      (*(v88 + 16))(v93, v92, v161);
      v135 = v155;
      (*(v89 + 16))(v51, v155, v94);
      sub_10054DB98(&qword_10094C3B0, &type metadata accessor for REMRemindersListDataView.ListsModel, &protocol conformance descriptor for REMRemindersListDataView.ListsModel);
      sub_10054DB98(&qword_10094C3B8, &type metadata accessor for REMRemindersListDataView.ListsModel, &protocol conformance descriptor for REMRemindersListDataView.ListsModel);
      REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
      (*(v88 + 8))(v164, v134);
      (*(v89 + 8))(v135, v94);
      return;
    }

    v95 = v157;
    if (v56 != enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
    {
      v92 = v164;
      v93 = v159;
      v94 = v149;
      if (v56 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
      {
        goto LABEL_59;
      }

      (*(v165 + 8))(v152, v166);
      goto LABEL_45;
    }

    (*(v165 + 96))(v55, v166);
    v146 = *v55;
    v96 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
    sub_100031B58(v55 + *(v96 + 48), v156, &qword_10094B8E0, &unk_1007AABD0);
    v97 = *v153->clientIdentity;
    if (v97)
    {
      v99 = *(v95 + 16);
      v98 = v95 + 16;
      v100 = v153 + ((*(v98 + 64) + 32) & ~*(v98 + 64));
      v168 = *(v98 + 56);
      v169 = (v98 - 8);
      v170 = v99;
      v101 = &_swiftEmptyArrayStorage;
      v102 = v172;
      do
      {
        v103 = v167;
        v170(v167, v100, v102);
        v104 = REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
        (*v169)(v103, v102);
        v105 = *(v104 + 16);
        v106 = *v101->clientIdentity;
        v107 = v106 + v105;
        if (__OFADD__(v106, v105))
        {
          goto LABEL_55;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v107 > *&v101->clientIdentity[8] >> 1)
        {
          if (v106 <= v107)
          {
            v116 = v106 + v105;
          }

          else
          {
            v116 = v106;
          }

          v101 = sub_100365A24(isUniquelyReferenced_nonNull_native, v116, 1, v101);
        }

        v102 = v172;
        if (*(v104 + 16))
        {
          v117 = (*&v101->clientIdentity[8] >> 1) - *v101->clientIdentity;
          type metadata accessor for REMRemindersListDataView.ReminderLite();
          if (v117 < v105)
          {
            goto LABEL_57;
          }

          swift_arrayInitWithCopy();
          v104, v118, v119, v120, v121, v122, v123, v124;
          v46 = v171;
          if (v105)
          {
            v125 = *v101->clientIdentity;
            v86 = __OFADD__(v125, v105);
            v126 = v125 + v105;
            if (v86)
            {
              goto LABEL_58;
            }

            *v101->clientIdentity = v126;
          }
        }

        else
        {
          v104, v109, v110, v111, v112, v113, v114, v115;
          v46 = v171;
          if (v105)
          {
            goto LABEL_56;
          }
        }

        v100 = &v168[v100];
        --v97;
      }

      while (v97);
    }

    else
    {
      v101 = &_swiftEmptyArrayStorage;
    }

    v136 = v158;
    sub_10053DB98(v146, v101, v46, v158, 0);
    v137 = v156;
    sub_10053EBE4(v156, v101, v46, v136, 0);
    v101, v138, v139, v140, v141, v142, v143, v144;
    sub_1000050A4(v137, &qword_10094B8E0, &unk_1007AABD0);
    (*(v165 + 8))(v152, v166);
LABEL_44:
    v88 = v163;
    v92 = v164;
    v93 = v159;
    v94 = v149;
    v89 = v162;
    v51 = v154;
    goto LABEL_45;
  }

  (*(v54 + 96))(v55, v53);
  v167 = *v55;
  v57 = *v153->clientIdentity;
  if (!v57)
  {
    v60 = &_swiftEmptyArrayStorage;
LABEL_43:
    sub_10053DB98(v167, v60, v171, v158, 0);
    v60, v127, v128, v129, v130, v131, v132, v133;
    (*(v165 + 8))(v152, v166);
    goto LABEL_44;
  }

  v169 = *(v157 + 16);
  v58 = v153 + ((*(v157 + 80) + 32) & ~*(v157 + 80));
  v168 = *(v157 + 72);
  v59 = (v157 + 8);
  v60 = &_swiftEmptyArrayStorage;
  v61 = v170;
  while (1)
  {
    v62 = v61;
    v63 = v172;
    (v169)(v61, v58, v172);
    v64 = REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
    (*v59)(v62, v63);
    v65 = *(v64 + 16);
    v66 = *v60->clientIdentity;
    v67 = v66 + v65;
    if (__OFADD__(v66, v65))
    {
      break;
    }

    v68 = swift_isUniquelyReferenced_nonNull_native();
    if (v68 && v67 <= *&v60->clientIdentity[8] >> 1)
    {
      if (*(v64 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v66 <= v67)
      {
        v76 = v66 + v65;
      }

      else
      {
        v76 = v66;
      }

      v60 = sub_100365A24(v68, v76, 1, v60);
      if (*(v64 + 16))
      {
LABEL_19:
        v77 = (*&v60->clientIdentity[8] >> 1) - *v60->clientIdentity;
        type metadata accessor for REMRemindersListDataView.ReminderLite();
        if (v77 < v65)
        {
          goto LABEL_53;
        }

        swift_arrayInitWithCopy();
        v64, v78, v79, v80, v81, v82, v83, v84;
        v61 = v170;
        if (v65)
        {
          v85 = *v60->clientIdentity;
          v86 = __OFADD__(v85, v65);
          v87 = v85 + v65;
          if (v86)
          {
            goto LABEL_54;
          }

          *v60->clientIdentity = v87;
        }

        goto LABEL_9;
      }
    }

    v64, v69, v70, v71, v72, v73, v74, v75;
    v61 = v170;
    if (v65)
    {
      goto LABEL_52;
    }

LABEL_9:
    v58 = &v168[v58];
    if (!--v57)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_10054CCAC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v97 = a3;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v107 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v96 = &v88 - v14;
  __chkstk_darwin(v15, v16);
  v18 = &v88 - v17;
  v19 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  __chkstk_darwin(v19 - 8, v20);
  v113 = &v88 - v21;
  v109 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v98 = *(v109 - 8);
  __chkstk_darwin(v109, v22);
  v108 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for UUID();
  v94 = *(v99 - 8);
  *&v25 = __chkstk_darwin(v99, v24).n128_u64[0];
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = *a1;
  v28 = [v93 identifier];
  if (!v28)
  {
    v77 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
    return (*(*(v77 - 8) + 56))(a4, 1, 1, v77);
  }

  v29 = v28;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(a2 + 16) && (v30 = sub_100363F20(v27), (v31 & 1) != 0))
  {
    v32 = *(*(a2 + 56) + 8 * v30);
    if (v32 >> 62)
    {
LABEL_48:
      v33 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v89 = v27;
    v90 = a4;
    v91 = v5;

    if (v33)
    {
      v5 = 0;
      v105 = v32 & 0xFFFFFFFFFFFFFF8;
      v106 = v32 & 0xC000000000000001;
      v103 = (v94 + 48);
      v104 = (v94 + 56);
      v95 = (v94 + 8);
      v41 = v99;
      v42 = (v98 + 48);
      v100 = (v98 + 32);
      v110 = &_swiftEmptyArrayStorage;
      a4 = &unk_100939D90;
      v43 = "8\n\r";
      v27 = v96;
      v101 = v33;
      v102 = v32;
      v92 = v18;
      while (1)
      {
        if (v106)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v45 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v5 >= *(v105 + 16))
          {
            goto LABEL_47;
          }

          v44 = *&v32->clientIdentity[8 * v5 + 16];
          v45 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        v111 = v44;
        v112 = v45;
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

        (*v104)(v27, v48, 1, v41);
        v49 = v27;
        v50 = v27;
        v51 = v43;
        sub_100031B58(v50, v18, &unk_100939D90, v43);
        v52 = *v103;
        if ((*v103)(v18, 1, v41) == 1)
        {
          v53 = 0;
          v54 = 0;
        }

        else
        {
          v55 = v42;
          v56 = v18;
          v57 = v18;
          v58 = v41;
          v59 = v107;
          sub_10018E470(v57, v107);
          v60 = v59;
          v41 = v58;
          result = v52(v60, 1, v58);
          if (result == 1)
          {
            __break(1u);
            return result;
          }

          v62 = v97;
          if (*(v97 + 16))
          {
            v63 = v107;
            v64 = sub_100363F20(v107);
            if (v65)
            {
              v66 = *(*(v62 + 56) + 8 * v64);
              v67 = *v95;

              v67(v63, v41);
              v54 = v66;
              v42 = v55;
              if (v66 >> 62)
              {
                v76 = _CocoaArrayWrapper.endIndex.getter();
                v54 = v66;
                v53 = v76;
              }

              else
              {
                v53 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v49 = v96;
            }

            else
            {
              (*v95)(v63, v41);
              v53 = 0;
              v54 = 0;
              v49 = v96;
              v42 = v55;
            }

            a4 = &unk_100939D90;
            v43 = v51;
            v18 = v92;
          }

          else
          {
            (*v95)(v107, v41);
            v53 = 0;
            v54 = 0;
            v18 = v56;
            v42 = v55;
            a4 = &unk_100939D90;
          }
        }

        v68 = v113;
        sub_1005384A4(v111, v53, v54, v113);
        sub_1000050A4(v18, &unk_100939D90, v43);
        v69 = v68;
        v70 = v109;
        if ((*v42)(v69, 1, v109) == 1)
        {
          sub_1000050A4(v113, &qword_100940628, &unk_1007A6A20);
          v27 = v49;
        }

        else
        {
          v71 = *v100;
          (*v100)(v108, v113, v70);
          v27 = v49;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_100365A24(0, *v110->clientIdentity + 1, 1, v110);
          }

          v73 = *v110->clientIdentity;
          v72 = *&v110->clientIdentity[8];
          if (v73 >= v72 >> 1)
          {
            v110 = sub_100365A24((v72 > 1), v73 + 1, 1, v110);
          }

          v74 = v109;
          v75 = v110;
          *v110->clientIdentity = v73 + 1;
          v71(v75 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v73, v108, v74);
          v41 = v99;
          a4 = &unk_100939D90;
        }

        ++v5;
        v32 = v102;
        if (v112 == v101)
        {
          goto LABEL_40;
        }
      }
    }

    v110 = &_swiftEmptyArrayStorage;
LABEL_40:
    v32, v34, v35, v36, v37, v38, v39, v40;
    a4 = v90;
    v27 = v89;
  }

  else
  {
    v110 = &_swiftEmptyArrayStorage;
  }

  v78 = a4;
  v79 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v81 = [v79 objectIDWithUUID:isa];

  REMObjectID.codable.getter();
  v82 = v93;
  v83 = [v93 displayName];
  if (v83)
  {
    v84 = v83;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v85 = [v82 color];
  if (v85)
  {
    v86 = v85;
    REMColor.codable.getter();
  }

  REMRemindersListDataView.ListsModel.Sublist.init(listID:listName:listColor:reminders:isCustomSmartList:)();
  (*(v94 + 8))(v27, v99);
  v87 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  return (*(*(v87 - 8) + 56))(v78, 0, 1, v87);
}

uint64_t sub_10054D538(uint64_t a1)
{
  result = sub_10054DB98(&qword_10094C3A0, &type metadata accessor for REMRemindersListDataView.AllInvocation, &protocol conformance descriptor for REMRemindersListDataView.AllInvocation);
  *(a1 + 8) = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_10054D590(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v76 = a1;
  v1 = sub_1000F5104(&qword_10094C3A8, &qword_1007B0E38);
  __chkstk_darwin(v1 - 8, v2);
  v71 = &v67 - v3;
  v4 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4, v5);
  v78 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v68 = &v67 - v9;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v10 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  __chkstk_darwin(v14 - 8, v15);
  v16 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  __chkstk_darwin(v16 - 8, v17);
  v18 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v18 - 8, v19);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v20 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v21);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListDataView.AllInvocation.Parameters.sortingStyle.getter();
  REMRemindersListDataView.AllInvocation.Parameters.showCompleted.getter();
  REMRemindersListDataView.AllInvocation.Parameters.countCompleted.getter();
  REMRemindersListDataView.AllInvocation.Parameters.remindersPrefetch.getter();
  (*(v10 + 104))(v13, enum case for REMRemindersListDataView.FetchSubtasks.on(_:), Subtasks);
  v24 = v76;
  REMRemindersListDataView.FetchConfiguration.init(sortingStyle:showCompleted:countCompleted:remindersPrefetch:fetchSubtasks:)();
  v25 = v77;
  v26 = sub_1001A41EC(v24, v23);
  if (v25)
  {
    (*(v20 + 8))(v23, Configuration);
  }

  else
  {
    v28 = v27;
    v29 = v26;
    (*(v20 + 8))(v23, Configuration);
    v30 = sub_1001A3FA8(v24);
    if (v30 >> 62)
    {
      goto LABEL_26;
    }

    v39 = v29;
    v40 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v41 = v70;
      v42 = v71;
      v76 = v28;
      v77 = v39;
      if (!v40)
      {
        break;
      }

      v43 = 0;
      Configuration = v30 & 0xFFFFFFFFFFFFFF8;
      Subtasks = v30 & 0xC000000000000001;
      v72 = (v69 + 48);
      v44 = (v69 + 32);
      v24 = &_swiftEmptyArrayStorage;
      v73 = v40;
      while (1)
      {
        if (Subtasks)
        {
          v28 = v30;
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v43 >= *(Configuration + 16))
          {
            goto LABEL_25;
          }

          v28 = v30;
          v30 = *(v30 + 8 * v43 + 32);
        }

        v45 = v30;
        v29 = (v43 + 1);
        if (__OFADD__(v43, 1))
        {
          break;
        }

        v79 = v30;
        sub_10054CCAC(&v79, v77, v76, v42);

        if ((*v72)(v42, 1, v41) == 1)
        {
          sub_1000050A4(v42, &qword_10094C3A8, &qword_1007B0E38);
        }

        else
        {
          v46 = v41;
          v47 = *v44;
          v48 = v68;
          (*v44)();
          (v47)(v78, v48, v46);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_100365B14(0, *v24->clientIdentity + 1, 1, v24);
          }

          v50 = *v24->clientIdentity;
          v49 = *&v24->clientIdentity[8];
          if (v50 >= v49 >> 1)
          {
            v24 = sub_100365B14((v49 > 1), v50 + 1, 1, v24);
          }

          *v24->clientIdentity = v50 + 1;
          v51 = v70;
          (v47)(v24 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v50, v78, v70);
          v41 = v51;
          v42 = v71;
        }

        ++v43;
        v30 = v28;
        if (v29 == v73)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v66 = v30;
      v40 = _CocoaArrayWrapper.endIndex.getter();
      v30 = v66;
      v39 = v29;
    }

    v24 = &_swiftEmptyArrayStorage;
LABEL_23:
    v30, v31, v32, v33, v34, v35, v36, v37;
    v76, v52, v53, v54, v55, v56, v57, v58;
    v77, v59, v60, v61, v62, v63, v64, v65;
  }

  return v24;
}

uint64_t sub_10054DB98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10054DBE0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_10014F5CC(a1, v11);
  v3 = v12;
  if (v12)
  {
    v4 = sub_10000F61C(v11, v12);
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4, v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    sub_10000607C(v11);
  }

  else
  {
    v9 = 0;
  }

  v10 = String._bridgeToObjectiveC()();
  [v2 setObject:v9 forKey:v10];
  swift_unknownObjectRelease();
}

void sub_10054DD44(uint64_t a1)
{
  v3 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  v46 = *(v3 - 8);
  __chkstk_darwin(v3 - 8, v4);
  v45 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v37 = v1;
    v49 = &_swiftEmptyArrayStorage;
    sub_100253258(0, v11, 0);
    v12 = v49;
    v13 = a1 + 56;
    v14 = _HashTable.startBucket.getter();
    v15 = v7;
    v16 = v14;
    v17 = 0;
    v43 = (v15 + 16);
    v44 = v15;
    v41 = a1;
    v42 = v15 + 32;
    v38 = a1 + 64;
    v39 = v11;
    v40 = a1 + 56;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
    {
      v19 = v16 >> 6;
      if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_21;
      }

      v20 = *(a1 + 36);
      v47 = v17;
      v48 = v20;
      v21 = v45;
      sub_100550228(*(a1 + 48) + *(v46 + 72) * v16, v45, type metadata accessor for RDPermanentlyHiddenReminder);
      (*v43)(v10, v21, v6);
      sub_100550290(v21, type metadata accessor for RDPermanentlyHiddenReminder);
      v49 = v12;
      v22 = v6;
      v24 = *v12->clientIdentity;
      v23 = *&v12->clientIdentity[8];
      if (v24 >= v23 >> 1)
      {
        sub_100253258((v23 > 1), v24 + 1, 1);
        v12 = v49;
      }

      *v12->clientIdentity = v24 + 1;
      (*(v44 + 32))(v12 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v24, v10, v22);
      v18 = 1 << *(v41 + 32);
      if (v16 >= v18)
      {
        goto LABEL_22;
      }

      v13 = v40;
      v30 = *(v40 + 8 * v19);
      if ((v30 & (1 << v16)) == 0)
      {
        goto LABEL_23;
      }

      v6 = v22;
      a1 = v41;
      if (v48 != *(v41 + 36))
      {
        goto LABEL_24;
      }

      v31 = v30 & (-2 << (v16 & 0x3F));
      if (v31)
      {
        v18 = __clz(__rbit64(v31)) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = v19 << 6;
        v33 = v19 + 1;
        v34 = (v38 + 8 * v19);
        while (v33 < (v18 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            sub_100010E34(v16, v48, 0, v25, v26, v27, v28, v29);
            v18 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        sub_100010E34(v16, v48, 0, v25, v26, v27, v28, v29);
      }

LABEL_4:
      v17 = v47 + 1;
      v16 = v18;
      if (v47 + 1 == v39)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_10054E10C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v46 = a2;
  v50 = a3;
  v42 = a4;
  v5 = type metadata accessor for REMRemindersListDataView.Diff();
  v43 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v49 = &v39 - v11;
  v12 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v48 = &v39 - v23;
  v44 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v24 = *(v44 - 8);
  __chkstk_darwin(v44, v25);
  v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  v28 = v51;
  result = sub_10054E5F4(a1);
  if (!v28)
  {
    v39 = v8;
    v40 = v20;
    v50 = v17;
    v51 = v16;
    v41 = v5;

    v30 = v27;
    REMRemindersListDataView.CountByCompleted.init(reminders:)();
    v31 = v27;
    v32 = v44;
    (*(v24 + 16))(v15, v31, v44);
    (*(v24 + 56))(v15, 0, 1, v32);
    v33 = v48;
    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v34 = [v45 fetchResultTokenToDiffAgainst];
    sub_100534D44(v34, v49);

    v35 = v50;
    v36 = v33;
    v37 = v51;
    (*(v50 + 16))(v40, v36, v51);
    v38 = v43;
    (*(v43 + 16))(v39, v49, v41);
    v47 = sub_1005502F0(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
    sub_1005502F0(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v38 + 8))(v49, v41);
    (*(v35 + 8))(v48, v37);
    return (*(v24 + 8))(v30, v32);
  }

  return result;
}

uint64_t sub_10054E59C(uint64_t a1)
{
  result = sub_1005502F0(&qword_10094C3E0, &type metadata accessor for REMRemindersListDataView.RecentlyDeletedInvocation, &protocol conformance descriptor for REMRemindersListDataView.RecentlyDeletedInvocation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10054E5F4(uint64_t a1)
{
  v507 = a1;
  v513 = type metadata accessor for UUID();
  v489 = *(v513 - 8);
  __chkstk_darwin(v513, v1);
  v514 = &v478[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v493 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v488 = *(v493 - 8);
  __chkstk_darwin(v493, v3);
  v487 = &v478[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5, v6);
  v492 = &v478[-v7];
  v511 = sub_1000F5104(&qword_100939860, &unk_10079D480);
  v482 = *(v511 - 8);
  __chkstk_darwin(v511, v8);
  v510 = &v478[-v9];
  v484 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  v483 = *(v484 - 8);
  __chkstk_darwin(v484, v10);
  v481 = &v478[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12, v13);
  v480 = &v478[-v14];
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v504 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v15);
  v509 = &v478[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v506 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v505 = *(v506 - 8);
  __chkstk_darwin(v506, v17);
  v490 = &v478[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19, v20);
  v512 = &v478[-v21];
  v515 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v22 = *(v515 - 8);
  __chkstk_darwin(v515, v23);
  v25 = &v478[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v26, v27);
  v486 = &v478[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29, v30);
  v485 = &v478[-v31];
  __chkstk_darwin(v32, v33);
  v491 = &v478[-v34];
  __chkstk_darwin(v35, v36);
  v516 = &v478[-v37];
  __chkstk_darwin(v38, v39);
  v41 = &v478[-v40];
  __chkstk_darwin(v42, v43);
  v45 = &v478[-v44];
  v46 = _s10PredicatesOMa(0);
  __chkstk_darwin(v46, v47);
  v49 = &v478[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000F5104(&qword_100946040, &qword_1007A75B8);
  *v49 = REMRemindersListDataView.RecentlyDeletedInvocation.Parameters.accountID.getter();
  REMRemindersListDataView.RecentlyDeletedInvocation.Parameters.deletedAfterDate.getter();
  v49[8] = 1;
  swift_storeEnumTagMultiPayload();
  v502 = sub_100043AA8();
  sub_100550290(v49, _s10PredicatesOMa);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1007953F0;
  if (qword_100936058 != -1)
  {
LABEL_91:
    v465 = v50;
    swift_once();
    v50 = v465;
  }

  v51 = qword_100974E08;
  v501 = v50;
  *(v50 + 32) = qword_100974E08;
  v52 = *(v22 + 104);
  v22 += 104;
  v52(v25, enum case for REMRemindersListDataView.SortingStyle.default(_:), v515);
  swift_storeEnumTagMultiPayload();
  v53 = v51;
  sub_1005368D8(v25, v41, v45);
  v54 = *(v505 + 104);
  v479 = enum case for REMRemindersListDataView.ShowCompleted.on(_:);
  v54(v512);
  v55 = v504;
  v56 = Subtasks;
  v57.n128_f64[0] = (*(v504 + 104))(v509, enum case for REMRemindersListDataView.FetchSubtasks.on(_:), Subtasks);
  v500 = sub_1005393B4(v507, v57);
  v58 = v45;
  if (qword_1009363F8 != -1)
  {
    swift_once();
  }

  v518 = qword_100974F68;

  v45 = &_swiftEmptyArrayStorage;
  sub_100271A80(&_swiftEmptyArrayStorage);
  v525 = v518;
  v524 = &_swiftEmptyArrayStorage;
  v60 = sub_10053CBE4(v58, v59);
  sub_100271A80(v60);
  v61 = v516;
  sub_100550228(v58, v516, _s9UtilitiesO12SortingStyleOMa);
  v494 = v26;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v26 = v517;
LABEL_10:
    sub_100550290(v61, _s9UtilitiesO12SortingStyleOMa);
    v64 = &_swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  v26 = v517;
  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_10;
  }

  v63 = EnumCaseMultiPayload;
  v64 = &_swiftEmptyArrayStorage;
  if (v63 == 4)
  {
    sub_100550290(v61, _s9UtilitiesO12SortingStyleOMa);
    if (qword_1009367F0 != -1)
    {
      goto LABEL_95;
    }

    goto LABEL_9;
  }

  while (1)
  {
LABEL_11:
    v508 = v58;
    sub_100271A80(v64);
    v522 = v524;
    v523 = v525;
    v518 = v45;

    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB48(&qword_100939850, &qword_100949370, &unk_100797770, &protocol conformance descriptor for [A]);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v66 = sub_100235F88(Predicate);
    sub_100271A98(v66);
    v495 = Predicate;
    v67 = sub_100235FA0(Predicate);
    sub_100271A98(v67);
    sub_1000F5104(&qword_10093F5A8, &qword_10079DFD0);
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    Array<A>.removeDuplicates()();
    v68 = v525;
    v69 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v70 = [objc_allocWithZone(NSFetchRequest) init];
    v497 = v69;
    v71 = [swift_getObjCClassFromMetadata() entity];
    [v70 setEntity:v71];

    [v70 setAffectedStores:0];
    [v70 setPredicate:v502];
    v518 = _swiftEmptySetSingleton;

    sub_100050AD0(v72);
    v499 = v68;
    v68, v73, v74, v75, v76, v77, v78, v79;
    v80 = v518;
    v81 = sub_1003FE014(v518);
    v496 = v26;
    v80, v82, v83, v84, v85, v86, v87, v88;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v81, v90, v91, v92, v93, v94, v95, v96;
    v498 = v70;
    [v70 setPropertiesToFetch:isa];

    v97 = v524;
    v26 = v524;
    if (v524 >> 62)
    {
      v466 = _CocoaArrayWrapper.endIndex.getter();
      v97 = v26;
      v45 = v466;
    }

    else
    {
      v45 = *((v524 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v98 = &_swiftEmptyArrayStorage;
    v58 = v508;
    v517 = v97;
    if (v45)
    {
      v521 = &_swiftEmptyArrayStorage;
      v50 = sub_100026EF4(0, v45 & ~(v45 >> 63), 0);
      if ((v45 & 0x8000000000000000) == 0)
      {
        v105 = 0;
        v98 = v521;
        v106 = v26;
        v515 = v26 & 0xFFFFFFFFFFFFFF8;
        v516 = (v26 & 0xC000000000000001);
        v25 = v45;
        while (1)
        {
          v55 = (v105 + 1);
          if (__OFADD__(v105, 1))
          {
            __break(1u);
            goto LABEL_88;
          }

          if (v516)
          {
            v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v105 >= *(v515 + 16))
            {
              __break(1u);
              goto LABEL_91;
            }

            v107 = *&v106[8 * v105 + 32];
          }

          v108 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v109)
          {
            goto LABEL_101;
          }

          v22 = v108;
          v26 = v109;

          v521 = v98;
          v41 = *v98->clientIdentity;
          v110 = *&v98->clientIdentity[8];
          v45 = v41 + 1;
          if (v41 >= v110 >> 1)
          {
            v50 = sub_100026EF4((v110 > 1), v41 + 1, 1);
            v98 = v521;
          }

          *v98->clientIdentity = v45;
          v111 = v98 + 16 * v41;
          *(v111 + 4) = v22;
          *(v111 + 5) = v26;
          ++v105;
          v106 = v517;
          if (v55 == v25)
          {
            v26 = v517;
            v56 = Subtasks;
            v55 = v504;
            v58 = v508;
            goto LABEL_26;
          }
        }
      }

      __break(1u);
      goto LABEL_94;
    }

LABEL_26:
    v41 = swift_allocObject();
    v112 = Array._bridgeToObjectiveC()().super.isa;
    v98, v113, v114, v115, v116, v117, v118, v119;
    v120 = v498;
    [v498 setRelationshipKeyPathsForPrefetching:v112];

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v121 = v501;
    v122 = Array._bridgeToObjectiveC()().super.isa;
    [v120 setSortDescriptors:v122];

    v123 = v120;
    v124 = v496;
    v125 = NSManagedObjectContext.fetch<A>(_:)();
    v133 = v124;
    if (v124)
    {
      v499, v126, v127, v128, v129, v130, v131, v132;
      v26, v134, v135, v136, v137, v138, v139, v140;
      v121, v141, v142, v143, v144, v145, v146, v147;

      v495, v148, v149, v150, v151, v152, v153, v154;

      v522, v155, v156, v157, v158, v159, v160, v161;
      v523, v162, v163, v164, v165, v166, v167, v168;
      swift_deallocUninitializedObject();
      v283 = v509;
LABEL_44:
      v55[1](v283, v56);
      (*(v505 + 8))(v512, v506);
      sub_100550290(v58, _s9UtilitiesO12SortingStyleOMa);
      return v41;
    }

    *(v41 + 16) = v125;

    v169 = v505;
    v170 = v490;
    v171 = v506;
    (*(v505 + 16))(v490, v512, v506);
    v172 = (*(v169 + 88))(v170, v171);
    if (v172 == enum case for REMRemindersListDataView.ShowCompleted.after(_:))
    {
      v495, v173, v174, v175, v176, v177, v178, v179;
      (*(v169 + 8))(v170, v171);
    }

    else
    {
      if (v172 == enum case for REMRemindersListDataView.ShowCompleted.allowlist(_:))
      {
        v495, v173, v174, v175, v176, v177, v178, v179;
        (*(v169 + 96))(v170, v171);
        v518 = *v170;
        v180 = v518;
        sub_1000F5104(&qword_100944F78, qword_1007AABF0);
        sub_10000CB48(&qword_100947CB0, &qword_100944F78, qword_1007AABF0, &protocol conformance descriptor for Set<A>);
        sub_1005502F0(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v181 = Sequence.mapToSet<A>(_:)();
        v180, v182, v183, v184, v185, v186, v187, v188;
        goto LABEL_36;
      }

      if (v172 != enum case for REMRemindersListDataView.ShowCompleted.off(_:) && v172 != v479)
      {
        goto LABEL_102;
      }

      v495, v173, v174, v175, v176, v177, v178, v179;
    }

    v181 = _swiftEmptySetSingleton;
LABEL_36:
    v189 = *(v41 + 16);

    v190 = &_swiftEmptyArrayStorage;
    v191 = sub_100155C54(&_swiftEmptyArrayStorage, v181, v189);
    v189, v192, v193, v194, v195, v196, v197, v198;
    v181, v199, v200, v201, v202, v203, v204, v205;
    v206 = *(v41 + 16);
    *(v41 + 16) = v191;
    v206, v207, v208, v209, v210, v211, v212, v213;
    v214 = v491;
    sub_100550228(v508, v491, _s9UtilitiesO12SortingStyleOMa);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v215 = v214;
      v216 = *v214;
      v218 = v215[1];
      v217 = v215[2];
      v220 = v215[3];
      v219 = v215[4];

      if (v216)
      {
        v218, v221, v222, v223, v224, v225, v226, v227;
        v217, v228, v229, v230, v231, v232, v233, v234;
        v220, v235, v236, v237, v238, v239, v240, v241;
        v219, v242, v243, v244, v245, v246, v247, v248;
        v256 = v500;
        if (v500)
        {
          v257 = *(v41 + 16);

          v258 = sub_100155828(v216, v512, v256, v257);
          v257, v259, v260, v261, v262, v263, v264, v265;
          v216, v266, v267, v268, v269, v270, v271, v272;

          v273 = *(v41 + 16);
          *(v41 + 16) = v258;
        }

        else
        {
          v273 = v216;
        }

        v273, v249, v250, v251, v252, v253, v254, v255;
      }
    }

    else
    {
      sub_100550290(v214, _s9UtilitiesO12SortingStyleOMa);
    }

    v274 = swift_allocObject();
    *(v274 + 16) = 0;
    v275 = swift_allocObject();
    v275[2] = 0;
    v520 = _swiftEmptyDictionarySingleton;
    v521 = _swiftEmptyDictionarySingleton;
    v276 = *(v41 + 16);
    __chkstk_darwin(v275, v277);
    v279 = v508;
    v278 = v509;
    *&v478[-112] = v508;
    *&v478[-104] = v278;
    v280 = v507;
    *&v478[-96] = v281;
    *&v478[-88] = v280;
    v282 = v512;
    *&v478[-80] = v41;
    *&v478[-72] = v282;
    *&v478[-64] = &v523;
    *&v478[-56] = &v522;
    *&v478[-48] = 0;
    v478[-40] = 1;
    v107 = v500;
    *&v478[-32] = v500;
    *&v478[-24] = v274;
    v476 = &v521;
    v477 = &v520;

    v516 = sub_1003DE68C(sub_10046D484, &v478[-128], v276);
    v498 = v275;
    v507 = v274;
    v276, v285, v286, v287, v288, v289, v290, v291;
    v292 = v485;
    sub_100550228(v279, v485, _s9UtilitiesO12SortingStyleOMa);
    v293 = swift_getEnumCaseMultiPayload();
    v56 = Subtasks;
    v294 = v517;
    if (v293 > 2)
    {
      if (v293 != 3 && v293 != 4)
      {
        goto LABEL_52;
      }
    }

    else if (v293 < 2)
    {
      v107 = v483;
      v295 = v480;
      v296 = v484;
      (*(v483 + 32))(v480, v292, v484);
      v297 = v516;
      v515 = sub_100156950(v295, v512, v516);
      v297, v298, v299, v300, v301, v302, v303, v304;
      v305 = v295;
      v294 = v517;
      (v107[1])(v305, v296);
      v306 = v515;
      goto LABEL_53;
    }

    sub_100550290(v292, _s9UtilitiesO12SortingStyleOMa);
LABEL_52:
    v306 = v516;
LABEL_53:
    v518 = &_swiftEmptyArrayStorage;
    v307 = *v306->clientIdentity;
    v516 = v306;
    if (v307)
    {
      v515 = 0;
      v107 = *(v482 + 16);
      v308 = v306 + ((*(v482 + 80) + 32) & ~*(v482 + 80));
      v309 = *(v482 + 72);
      v310 = (v482 + 8);
      do
      {
        v311 = v510;
        v312 = v511;
        (v107)(v510, v308, v511);
        REMSortableElement.element.getter();
        (*v310)(v311, v312);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v518 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v518 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v497 = *((v518 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v308 += v309;
        --v307;
      }

      while (v307);
      v294 = v517;
      v190 = v518;
      v56 = Subtasks;
      v279 = v508;
      v133 = v515;
    }

    swift_beginAccess();
    v313 = *(v41 + 16);
    *(v41 + 16) = v190;
    v313, v314, v315, v316, v317, v318, v319, v320;
    v321 = v486;
    sub_100550228(v279, v486, _s9UtilitiesO12SortingStyleOMa);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v322 = v483;
      v323 = v481;
      v324 = v484;
      (*(v483 + 32))(v481, v321, v484);
      v325 = *(v41 + 16);

      v326 = sub_1001561A0(v323, v512, v325);
      v325, v327, v328, v329, v330, v331, v332, v333;
      v334 = *(v322 + 8);
      v107 = (v322 + 8);
      v335 = v323;
      v294 = v517;
      v334(v335, v324);
      v336 = *(v41 + 16);
      *(v41 + 16) = v326;
      v336, v337, v338, v339, v340, v341, v342, v343;
    }

    else
    {
      sub_100550290(v321, _s9UtilitiesO12SortingStyleOMa);
    }

    v98 = v509;
    v344 = v501;
    v345 = *(v41 + 16);

    v517 = sub_1005364C4(v346, &v521, &v520);
    v515 = v133;
    v499, v347, v348, v349, v350, v351, v352, v353;
    v294, v354, v355, v356, v357, v358, v359, v360;
    v344, v361, v362, v363, v364, v365, v366, v367;
    v345, v368, v369, v370, v371, v372, v373, v374;
    v516, v375, v376, v377, v378, v379, v380, v381;

    v382 = *(v41 + 16);
    v383 = v520;

    v383, v384, v385, v386, v387, v388, v389, v390;
    v391 = v521;

    v391, v392, v393, v394, v395, v396, v397, v398;
    v522, v399, v400, v401, v402, v403, v404, v405;
    v406 = v523;

    v406, v407, v408, v409, v410, v411, v412, v413;
    if (v382 >> 62)
    {
      v467 = _CocoaArrayWrapper.endIndex.getter();
      v55 = v504;
      v22 = v489;
      if (!v467)
      {
LABEL_97:

        v382, v468, v469, v470, v471, v472, v473, v474;
        v41 = v517;
        goto LABEL_98;
      }
    }

    else
    {
      v55 = v504;
      v22 = v489;
      if (!*((v382 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }
    }

    v41 = v517;
    if ((v382 & 0xC000000000000001) != 0)
    {
      v414 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_67;
    }

    if (!*((v382 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v414 = *(v382 + 32);
LABEL_67:
    v422 = v414;
    v382, v415, v416, v417, v418, v419, v420, v421;
    v423 = [v422 account];

    if (!v423)
    {
      goto LABEL_72;
    }

    v424 = [(RDXPCStorePerformer *)v423 recentlyDeletedInfoAsData];
    if (!v424)
    {

LABEL_72:
LABEL_73:
      v279 = v508;
LABEL_98:
      v55[1](v98, v56);
      (*(v505 + 8))(v512, v506);
      sub_100550290(v279, _s9UtilitiesO12SortingStyleOMa);
      return v41;
    }

    v499 = v423;
    v425 = v424;
    v426 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v428 = v427;

    type metadata accessor for RDRecentlyDeletedInfo(0);
    sub_1005502F0(&unk_100950C50, type metadata accessor for RDRecentlyDeletedInfo, &unk_1007B7EC8);
    v429 = v515;
    static REMJSONRepresentable.fromJSONData(_:)();
    if (v429)
    {
      sub_10001BBA0(v426, v428);
      v41, v430, v431, v432, v433, v434, v435, v436;

      v283 = v98;
      v58 = v508;
      goto LABEL_44;
    }

    sub_10001BBA0(v426, v428);
    v498 = v525;
    v437 = *(v525 + 16);

    sub_10054DD44(v438);
    v45 = v439;
    v515 = 0;
    v437, v440, v441, v442, v443, v444, v445, v446;
    v511 = *(v41 + 16);
    if (!v511)
    {
LABEL_88:
      v26 = &_swiftEmptyArrayStorage;
LABEL_89:
      v41, v106, v99, v100, v101, v102, v103, v104;

      v45, v458, v459, v460, v461, v462, v463, v464;

      v41 = v26;
      v56 = Subtasks;
      goto LABEL_73;
    }

    v58 = 0;
    v507 = v488 + 16;
    v501 = (v22 + 8);
    v500 = (v488 + 8);
    v510 = (v488 + 32);
    v26 = &_swiftEmptyArrayStorage;
    v56 = &qword_10093A3E0;
    while (v58 < *(v41 + 16))
    {
      v516 = ((*(v488 + 80) + 32) & ~*(v488 + 80));
      v449 = *(v488 + 72);
      (*(v488 + 16))(v492, v516 + v41 + v449 * v58++, v493);
      v450 = REMRemindersListDataView.ReminderLite.objectID.getter();
      v451 = [v450 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v452 = 0;
      v453 = *(v45 + 16);
      while (v453 != v452)
      {
        v454 = v452 + 1;
        sub_1005502F0(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v455 = dispatch thunk of static Equatable.== infix(_:_:)();
        v452 = v454;
        if (v455)
        {
          (v501->super.isa)(v514, v513);
          (*v500)(v492, v493);
          goto LABEL_79;
        }
      }

      (v501->super.isa)(v514, v513);
      v456 = *v510;
      (*v510)(v487, v492, v493);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v525 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100253530(0, *(v26 + 16) + 1, 1);
        v26 = v525;
      }

      v448 = *(v26 + 16);
      v447 = *(v26 + 24);
      if (v448 >= v447 >> 1)
      {
        sub_100253530((v447 > 1), v448 + 1, 1);
        v26 = v525;
      }

      *(v26 + 16) = v448 + 1;
      v456(v516 + v26 + v448 * v449, v487, v493);
      v22 = v489;
LABEL_79:
      v55 = v504;
      v98 = v509;
      v41 = v517;
      if (v58 == v511)
      {
        goto LABEL_89;
      }
    }

LABEL_94:
    __break(1u);
LABEL_95:
    swift_once();
LABEL_9:
  }

  __break(1u);
LABEL_101:
  v518 = 0;
  v519 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v475._object = 0x80000001007EC120;
  v475._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v475);
  v520 = v107;
  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  _print_unlocked<A, B>(_:_:)();
  LODWORD(v477) = 0;
  v476 = 19;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_102:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}