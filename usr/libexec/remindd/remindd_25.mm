unint64_t sub_100288224(unint64_t result)
{
  if (!result)
  {
    return result;
  }

  sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
  sub_1000060C8(0, &unk_100939E90, NSOrderedSet_ptr);
  sub_10000CDE4(&qword_100940C60, &unk_100939E90, NSOrderedSet_ptr, &protocol conformance descriptor for NSOrderedSet);
  result = Sequence.elements<A>(ofType:)();
  if (result >> 62)
  {
    v21 = result;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    result = v21;
    if (v22)
    {
      goto LABEL_4;
    }

LABEL_9:
    result, v1, v2, v3, v4, v5, v6, v7;
    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = result;
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = result;
    v9 = *(result + 32);
LABEL_7:
    v17 = v9;
    v8, v10, v11, v12, v13, v14, v15, v16;
    v18 = sub_1003BE0EC(v17);
    v19 = [v18 iCalendarDescription];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002883C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100288428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100288490(void *a1)
{
  v1 = objc_opt_self();
  v2 = [v1 localizedStringForLabel:CNLabelHome];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = String.lowercased()();
  v4, v5._object, v6, v7, v8, v9, v10, v11;
  v12 = [v1 localizedStringForLabel:CNLabelWork];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = String.lowercased()();
  countAndFlagsBits = v15._countAndFlagsBits;
  v14, v15._object, v17, v18, v19, v20, v21, v22;
  v23 = [v1 localizedStringForLabel:CNLabelSchool];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = String.lowercased()();
  object = v26._object;
  v25, v26._object, v28, v29, v30, v31, v32, v33;
  v34 = [v1 localizedStringForLabel:CNLabelOther];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37 = a1;
  v38 = String.lowercased()();
  v36, v38._object, v39, v40, v41, v42, v43, v44;
  v45 = [a1 title];
  if (v45)
  {
    v46 = v45;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49 = String.lowercased()()._object;

    sub_10013BCF4();

    if (StringProtocol.contains<A>(_:)())
    {
      v57 = v5._countAndFlagsBits;
      v58 = v5._object;
LABEL_8:
      v48, v50, v51, v52, v53, v54, v55, v56;
      v49, v59, v60, v61, v62, v63, v64, v65;
      swift_arrayDestroy();
      v58, v66, v67, v68, v69, v70, v71, v72;
      v15._object, v73, v74, v75, v76, v77, v78, v79;
      v26._object, v80, v81, v82, v83, v84, v85, v86;
      v94 = v38._object;
LABEL_27:
      v94, v87, v88, v89, v90, v91, v92, v93;
      return v57;
    }

    v5._object, v50, v51, v52, v53, v54, v55, v56;
    v57 = v15._countAndFlagsBits;

    if (StringProtocol.contains<A>(_:)() & 1) != 0 || (v15._object, v50, v51, v52, v53, v54, v55, v56, v57 = v26._countAndFlagsBits, , (StringProtocol.contains<A>(_:)()) || (v26._object, v50, v51, v52, v53, v54, v55, v56, v57 = v38._countAndFlagsBits, , (StringProtocol.contains<A>(_:)()))
    {
      v58 = v5._object;
      goto LABEL_8;
    }

    v48, v50, v51, v52, v53, v54, v55, v56;
    v49, v95, v96, v97, v98, v99, v100, v101;
    v38._object, v102, v103, v104, v105, v106, v107, v108;
    swift_arrayDestroy();
    object = v26._object;
    v37 = a1;
    countAndFlagsBits = v15._countAndFlagsBits;
  }

  v109 = [v37 address];
  v57 = v5._countAndFlagsBits;
  if (v109)
  {
    v110 = v109;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v111;

    v113 = String.lowercased()()._object;
    v114 = v5._object;

    sub_10013BCF4();

    if (StringProtocol.contains<A>(_:)())
    {
LABEL_16:
      v112, v115, v116, v117, v118, v119, v120, v121;
      v113, v122, v123, v124, v125, v126, v127, v128;
      swift_arrayDestroy();
      v136 = v114;
LABEL_26:
      v136, v129, v130, v131, v132, v133, v134, v135;
      v15._object, v171, v172, v173, v174, v175, v176, v177;
      object, v178, v179, v180, v181, v182, v183, v184;
      v94 = v38._object;
      goto LABEL_27;
    }

    v5._object, v115, v116, v117, v118, v119, v120, v121;
    v57 = countAndFlagsBits;

    if (StringProtocol.contains<A>(_:)() & 1) != 0 || (v15._object, v115, v116, v117, v118, v119, v120, v121, v57 = v26._countAndFlagsBits, , (StringProtocol.contains<A>(_:)()) || (object, v115, v116, v117, v118, v119, v120, v121, v57 = v38._countAndFlagsBits, , (StringProtocol.contains<A>(_:)()))
    {
      v114 = v5._object;
      goto LABEL_16;
    }

    v112, v115, v116, v117, v118, v119, v120, v121;
    v113, v137, v138, v139, v140, v141, v142, v143;
    v38._object, v144, v145, v146, v147, v148, v149, v150;
    swift_arrayDestroy();
    v57 = v5._countAndFlagsBits;
    v37 = a1;
  }

  v151 = [v37 contactLabel];
  if (!v151)
  {
    v57 = 0x6E776F6E6B6E753CLL;
    v136 = v5._object;
    goto LABEL_26;
  }

  v152 = v151;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v154 = v153;

  v155 = String.lowercased()()._object;
  sub_10013BCF4();

  if (StringProtocol.contains<A>(_:)() & 1) != 0 || (v5._object, v156, v157, v158, v159, v160, v161, v162, v57 = countAndFlagsBits, , (StringProtocol.contains<A>(_:)()) || (v15._object, v156, v157, v158, v159, v160, v161, v162, v57 = v26._countAndFlagsBits, , (StringProtocol.contains<A>(_:)()) || (object, v156, v157, v158, v159, v160, v161, v162, v57 = v38._countAndFlagsBits, , (StringProtocol.contains<A>(_:)()))
  {
    v154, v156, v157, v158, v159, v160, v161, v162;
    v170 = v155;
  }

  else
  {
    v57 = 0x6E776F6E6B6E753CLL;
    v154, v156, v157, v158, v159, v160, v161, v162;
    v155, v186, v187, v188, v189, v190, v191, v192;
    v170 = v38._object;
  }

  v170, v163, v164, v165, v166, v167, v168, v169;
  swift_arrayDestroy();
  return v57;
}

uint64_t *sub_100288C2C(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 20);
    v12 = (a1 + v11);
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    v12[1] = v14;
  }

  return a1;
}

double sub_100288DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v13 = *(a1 + *(a2 + 20) + 8);

  v13, v6, v7, v8, v9, v10, v11, v12;
  return result;
}

char *sub_100288E84(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = *(v11 + 1);
  *v10 = *v11;
  *(v10 + 1) = v12;

  return a1;
}

char *sub_100288FC0(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = &a1[v12];
  v14 = &a2[v12];
  *v13 = *v14;
  v15 = *(v13 + 1);
  *(v13 + 1) = *(v14 + 1);

  v15, v16, v17, v18, v19, v20, v21, v22;
  return a1;
}

char *sub_100289174(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *sub_1002892A4(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v18 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1, a2, *(*(v18 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v19 = *(a3 + 20);
  v20 = &a1[v19];
  v21 = &a2[v19];
  v23 = *v21;
  v22 = *(v21 + 1);
  v24 = *(v20 + 1);
  *v20 = v23;
  *(v20 + 1) = v22;
  v24, v11, v12, v13, v14, v15, v16, v17;
  return a1;
}

void sub_100289470(uint64_t a1)
{
  sub_100289520(319, &qword_100938D60, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_100289520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double destroy for RDStoreControllerExporter.DistributedEvaluation.List(void *a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  a1[2], a2, a3, a4, a5, a6, a7, a8;
  v16 = a1[3];
  if (v16)
  {
    v16, v9, v10, v11, v12, v13, v14, v15;
    a1[6], v17, v18, v19, v20, v21, v22, v23;
  }

  v24 = a1[7];

  v24, v9, v10, v11, v12, v13, v14, v15;
  return result;
}

uint64_t initializeWithCopy for RDStoreControllerExporter.DistributedEvaluation.List(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  v6 = (a2 + 24);
  v5 = *(a2 + 24);

  if (v5)
  {
    *(a1 + 24) = v5;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v7 = v6[1];
    *(a1 + 24) = *v6;
    *(a1 + 40) = v7;
  }

  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for RDStoreControllerExporter.DistributedEvaluation.List(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v4, v5, v6, v7, v8, v9, v10, v11;
  v19 = (a1 + 24);
  v20 = *(a1 + 24);
  v22 = (a2 + 24);
  v21 = *(a2 + 24);
  if (v20)
  {
    if (v21)
    {
      *(a1 + 24) = v21;

      v20, v23, v24, v25, v26, v27, v28, v29;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      v30 = *(a1 + 48);
      *(a1 + 48) = *(a2 + 48);

      v30, v31, v32, v33, v34, v35, v36, v37;
    }

    else
    {
      sub_100289774((a1 + 24), v12, v13, v14, v15, v16, v17, v18);
      v38 = *(a2 + 40);
      *v19 = *v22;
      *(a1 + 40) = v38;
    }
  }

  else if (v21)
  {
    *(a1 + 24) = v21;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v39 = *(a2 + 40);
    *v19 = *v22;
    *(a1 + 40) = v39;
  }

  v40 = *(a2 + 56);
  v41 = *(a1 + 56);
  *(a1 + 56) = v40;

  v41, v42, v43, v44, v45, v46, v47, v48;
  return a1;
}

_TtC7remindd19RDXPCStorePerformer **sub_100289774(_TtC7remindd19RDXPCStorePerformer **a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  a1[3], v9, v10, v11, v12, v13, v14, v15;
  return a1;
}

uint64_t assignWithTake for RDStoreControllerExporter.DistributedEvaluation.List(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1 = *a2;
  v10 = *(a2 + 16);
  v11 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v10;
  v11, a2, a3, a4, a5, a6, a7, a8;
  v19 = *(a1 + 24);
  v20 = *(a2 + 24);
  if (!v19)
  {
    goto LABEL_5;
  }

  if (!v20)
  {
    sub_100289774((a1 + 24), v12, v13, v14, v15, v16, v17, v18);
LABEL_5:
    v29 = *(a2 + 40);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = v29;
    goto LABEL_6;
  }

  *(a1 + 24) = v20;
  v19, v12, v13, v14, v15, v16, v17, v18;
  *(a1 + 32) = *(a2 + 32);
  v21 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  v21, v22, v23, v24, v25, v26, v27, v28;
LABEL_6:
  v30 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  v30, v12, v13, v14, v15, v16, v17, v18;
  return a1;
}

uint64_t getEnumTagSinglePayload for RDStoreControllerExporter.DistributedEvaluation.List(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RDStoreControllerExporter.DistributedEvaluation.List(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for RDStoreControllerExporter.DistributedEvaluation.FuzzedEmbeddings(_TtC7remindd19RDXPCStorePerformer **a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  v16 = a1[3];

  v16, v9, v10, v11, v12, v13, v14, v15;
  return result;
}

uint64_t initializeWithCopy for RDStoreControllerExporter.DistributedEvaluation.FuzzedEmbeddings(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = a2[3];

  return a1;
}

_TtC7remindd19RDXPCStorePerformer **assignWithCopy for RDStoreControllerExporter.DistributedEvaluation.FuzzedEmbeddings(_TtC7remindd19RDXPCStorePerformer **a1, _TtC7remindd19RDXPCStorePerformer **a2)
{
  v4 = *a1;
  *a1 = *a2;

  v4, v5, v6, v7, v8, v9, v10, v11;
  a1[1] = a2[1];
  a1[2] = a2[2];
  v12 = a2[3];
  v13 = a1[3];
  a1[3] = v12;

  v13, v14, v15, v16, v17, v18, v19, v20;
  return a1;
}

uint64_t *assignWithTake for RDStoreControllerExporter.DistributedEvaluation.FuzzedEmbeddings(uint64_t *a1, uint64_t *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *a1;
  *a1 = *a2;
  v10, a2, a3, a4, a5, a6, a7, a8;
  *(a1 + 1) = *(a2 + 1);
  v11 = a1[3];
  a1[3] = a2[3];
  v11, v12, v13, v14, v15, v16, v17, v18;
  return a1;
}

uint64_t *sub_100289A48(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    v85 = *(v8 + 48);
    v86 = v7;
    v81 = v8;
    if (v85(a2, 1, v7))
    {
      v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = a3[5];
    v12 = a3[6];
    v13 = a1 + v11;
    v14 = a2 + v11;
    *v13 = *v14;
    v13[8] = v14[8];
    v15 = a1 + v12;
    v16 = a2 + v12;
    *v15 = *v16;
    v15[8] = v16[8];
    v17 = a3[7];
    v18 = a3[8];
    v19 = a1 + v17;
    v20 = a2 + v17;
    *v19 = *v20;
    v19[8] = v20[8];
    v21 = a1 + v18;
    v22 = a2 + v18;
    *v21 = *v22;
    v21[8] = v22[8];
    v23 = a3[9];
    v24 = a3[10];
    v25 = (a1 + v23);
    v26 = (a2 + v23);
    v27 = v26[1];
    *v25 = *v26;
    v25[1] = v27;
    v28 = a1 + v24;
    v29 = a2 + v24;
    v30 = *(a2 + v24);

    if (v30)
    {
      *v28 = v30;
      *(v28 + 8) = *(v29 + 8);
      *(v28 + 3) = *(v29 + 3);
    }

    else
    {
      v31 = *(v29 + 1);
      *v28 = *v29;
      *(v28 + 1) = v31;
    }

    v32 = a3[11];
    v33 = a3[12];
    v34 = (a1 + v32);
    v35 = (a2 + v32);
    v83 = v35[1];
    *v34 = *v35;
    v34[1] = v83;
    v36 = (a1 + v33);
    v37 = (a2 + v33);
    v38 = v37[1];
    *v36 = *v37;
    v36[1] = v38;
    v39 = a3[13];
    v40 = a3[14];
    v41 = (a1 + v39);
    v42 = (a2 + v39);
    v43 = v42[1];
    *v41 = *v42;
    v41[1] = v43;
    v44 = (a1 + v40);
    v45 = (a2 + v40);
    v46 = v45[1];
    *v44 = *v45;
    v44[1] = v46;
    v47 = a3[15];
    __dst = a1 + v47;
    v82 = a2 + v47;
    v48 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate(0);
    v49 = *(v48 - 8);
    v50 = *(v49 + 48);

    if (v50(v82, 1, v48))
    {
      v51 = sub_1000F5104(&qword_10093F968, &unk_10079E200);
      memcpy(__dst, v82, *(*(v51 - 8) + 64));
      v53 = v85;
      v52 = v86;
    }

    else
    {
      v53 = v85;
      v52 = v86;
      if (v85(v82, 1, v86))
      {
        v54 = sub_1000F5104(&unk_100938850, qword_100795AE0);
        memcpy(__dst, v82, *(*(v54 - 8) + 64));
      }

      else
      {
        (*(v81 + 16))(__dst, v82, v86);
        (*(v81 + 56))(__dst, 0, 1, v86);
      }

      v55 = *(v48 + 20);
      v56 = &__dst[v55];
      v57 = &v82[v55];
      v58 = *(v57 + 1);
      *v56 = *v57;
      *(v56 + 1) = v58;
      v59 = *(v49 + 56);

      v59(__dst, 0, 1, v48);
    }

    v60 = a3[16];
    if (v53(a2 + v60, 1, v52))
    {
      v61 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      memcpy(a1 + v60, a2 + v60, *(*(v61 - 8) + 64));
    }

    else
    {
      (*(v81 + 16))(a1 + v60, a2 + v60, v52);
      (*(v81 + 56))(a1 + v60, 0, 1, v52);
    }

    v62 = a3[18];
    *(a1 + a3[17]) = *(a2 + a3[17]);
    *(a1 + v62) = *(a2 + v62);
    v63 = a3[19];
    v64 = a3[20];
    v65 = a1 + v63;
    v66 = a2 + v63;
    *v65 = *v66;
    v65[8] = v66[8];
    v67 = (a1 + v64);
    v68 = (a2 + v64);
    v69 = v68[1];
    *v67 = *v68;
    v67[1] = v69;
    v70 = a3[21];
    v71 = a3[22];
    v72 = (a1 + v70);
    v73 = (a2 + v70);
    v74 = v73[1];
    *v72 = *v73;
    v72[1] = v74;
    v75 = (a1 + v71);
    v76 = (a2 + v71);
    v77 = v76[1];
    *v75 = *v76;
    v75[1] = v77;
    v78 = a3[24];
    *(a1 + a3[23]) = *(a2 + a3[23]);
    *(a1 + v78) = *(a2 + v78);
    v79 = a3[26];
    *(a1 + a3[25]) = *(a2 + a3[25]);
    *(a1 + v79) = *(a2 + v79);
    *(a1 + a3[27]) = *(a2 + a3[27]);
  }

  return a1;
}

double sub_100289FF8(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  *(a1 + a2[9] + 8), v7, v8, v9, v10, v11, v12, v13;
  v21 = (a1 + a2[10]);
  if (*v21)
  {
    *v21, v14, v15, v16, v17, v18, v19, v20;
    v21[3], v22, v23, v24, v25, v26, v27, v28;
  }

  *(a1 + a2[11] + 8), v14, v15, v16, v17, v18, v19, v20;
  *(a1 + a2[12] + 8), v29, v30, v31, v32, v33, v34, v35;
  *(a1 + a2[13] + 8), v36, v37, v38, v39, v40, v41, v42;
  *(a1 + a2[14] + 8), v43, v44, v45, v46, v47, v48, v49;
  v50 = a1 + a2[15];
  v51 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate(0);
  if (!(*(*(v51 - 8) + 48))(v50, 1, v51))
  {
    if (!v6(v50, 1, v4))
    {
      (*(v5 + 8))(v50, v4);
    }

    *(v50 + *(v51 + 20) + 8), v52, v53, v54, v55, v56, v57, v58;
  }

  v59 = a2[16];
  if (!v6(a1 + v59, 1, v4))
  {
    (*(v5 + 8))(a1 + v59, v4);
  }

  *(a1 + a2[17]), v60, v61, v62, v63, v64, v65, v66;
  *(a1 + a2[20] + 8), v67, v68, v69, v70, v71, v72, v73;
  *(a1 + a2[21] + 8), v74, v75, v76, v77, v78, v79, v80;
  *(a1 + a2[22] + 8), v81, v82, v83, v84, v85, v86, v87;
  v95 = *(a1 + a2[23]);

  v95, v88, v89, v90, v91, v92, v93, v94;
  return result;
}

char *sub_10028A24C(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v83 = *(v7 + 48);
  v84 = v6;
  v79 = v7;
  if (v83(a2, 1, v6))
  {
    v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = a3[5];
  v10 = a3[6];
  v11 = &a1[v9];
  v12 = &a2[v9];
  *v11 = *v12;
  v11[8] = v12[8];
  v13 = &a1[v10];
  v14 = &a2[v10];
  *v13 = *v14;
  v13[8] = v14[8];
  v15 = a3[7];
  v16 = a3[8];
  v17 = &a1[v15];
  v18 = &a2[v15];
  *v17 = *v18;
  v17[8] = v18[8];
  v19 = &a1[v16];
  v20 = &a2[v16];
  *v19 = *v20;
  v19[8] = v20[8];
  v21 = a3[9];
  v22 = a3[10];
  v23 = &a1[v21];
  v24 = &a2[v21];
  v25 = *(v24 + 1);
  *v23 = *v24;
  *(v23 + 1) = v25;
  v26 = &a1[v22];
  v27 = &a2[v22];
  v28 = *&a2[v22];

  if (v28)
  {
    *v26 = v28;
    *(v26 + 8) = *(v27 + 8);
    *(v26 + 3) = *(v27 + 3);
  }

  else
  {
    v29 = *(v27 + 1);
    *v26 = *v27;
    *(v26 + 1) = v29;
  }

  v30 = a3[11];
  v31 = a3[12];
  v32 = &a1[v30];
  v33 = &a2[v30];
  v81 = *(v33 + 1);
  *v32 = *v33;
  *(v32 + 1) = v81;
  v34 = &a1[v31];
  v35 = &a2[v31];
  v36 = *(v35 + 1);
  *v34 = *v35;
  *(v34 + 1) = v36;
  v37 = a3[13];
  v38 = a3[14];
  v39 = &a1[v37];
  v40 = &a2[v37];
  v41 = *(v40 + 1);
  *v39 = *v40;
  *(v39 + 1) = v41;
  v42 = &a1[v38];
  v43 = &a2[v38];
  v44 = *(v43 + 1);
  *v42 = *v43;
  *(v42 + 1) = v44;
  v45 = a3[15];
  __dst = &a1[v45];
  v80 = &a2[v45];
  v46 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate(0);
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);

  if (v48(v80, 1, v46))
  {
    v49 = sub_1000F5104(&qword_10093F968, &unk_10079E200);
    memcpy(__dst, v80, *(*(v49 - 8) + 64));
    v51 = v83;
    v50 = v84;
  }

  else
  {
    v51 = v83;
    v50 = v84;
    if (v83(v80, 1, v84))
    {
      v52 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      memcpy(__dst, v80, *(*(v52 - 8) + 64));
    }

    else
    {
      (*(v79 + 16))(__dst, v80, v84);
      (*(v79 + 56))(__dst, 0, 1, v84);
    }

    v53 = *(v46 + 20);
    v54 = &__dst[v53];
    v55 = &v80[v53];
    v56 = *(v55 + 1);
    *v54 = *v55;
    *(v54 + 1) = v56;
    v57 = *(v47 + 56);

    v57(__dst, 0, 1, v46);
  }

  v58 = a3[16];
  if (v51(&a2[v58], 1, v50))
  {
    v59 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(&a1[v58], &a2[v58], *(*(v59 - 8) + 64));
  }

  else
  {
    (*(v79 + 16))(&a1[v58], &a2[v58], v50);
    (*(v79 + 56))(&a1[v58], 0, 1, v50);
  }

  v60 = a3[18];
  *&a1[a3[17]] = *&a2[a3[17]];
  a1[v60] = a2[v60];
  v61 = a3[19];
  v62 = a3[20];
  v63 = &a1[v61];
  v64 = &a2[v61];
  *v63 = *v64;
  v63[8] = v64[8];
  v65 = &a1[v62];
  v66 = &a2[v62];
  v67 = *(v66 + 1);
  *v65 = *v66;
  *(v65 + 1) = v67;
  v68 = a3[21];
  v69 = a3[22];
  v70 = &a1[v68];
  v71 = &a2[v68];
  v72 = *(v71 + 1);
  *v70 = *v71;
  *(v70 + 1) = v72;
  v73 = &a1[v69];
  v74 = &a2[v69];
  v75 = *(v74 + 1);
  *v73 = *v74;
  *(v73 + 1) = v75;
  v76 = a3[24];
  *&a1[a3[23]] = *&a2[a3[23]];
  a1[v76] = a2[v76];
  v77 = a3[26];
  a1[a3[25]] = a2[a3[25]];
  a1[v77] = a2[v77];
  a1[a3[27]] = a2[a3[27]];

  return a1;
}

char *sub_10028A7B0(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v203 = v8;
  v10 = v8(a2, 1, v6);
  v201 = v7;
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v11 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(a1, a2, v6);
LABEL_7:
  v12 = a3[5];
  v13 = &a1[v12];
  v14 = &a2[v12];
  v15 = *v14;
  v13[8] = v14[8];
  *v13 = v15;
  v16 = a3[6];
  v17 = &a1[v16];
  v18 = &a2[v16];
  v19 = *v18;
  v17[8] = v18[8];
  *v17 = v19;
  v20 = a3[7];
  v21 = &a1[v20];
  v22 = &a2[v20];
  v23 = *v22;
  v21[8] = v22[8];
  *v21 = v23;
  v24 = a3[8];
  v25 = &a1[v24];
  v26 = &a2[v24];
  v27 = *v26;
  v25[8] = v26[8];
  *v25 = v27;
  v28 = a3[9];
  v29 = &a1[v28];
  v30 = &a2[v28];
  *v29 = *v30;
  v31 = *(v29 + 1);
  *(v29 + 1) = *(v30 + 1);

  v31, v32, v33, v34, v35, v36, v37, v38;
  v46 = a3[10];
  v47 = &a1[v46];
  v48 = &a2[v46];
  v49 = *&a1[v46];
  v50 = *&a2[v46];
  v202 = v6;
  if (v49)
  {
    if (v50)
    {
      *v47 = v50;

      v49, v51, v52, v53, v54, v55, v56, v57;
      *(v47 + 1) = *(v48 + 1);
      *(v47 + 2) = *(v48 + 2);
      v58 = *(v47 + 3);
      *(v47 + 3) = *(v48 + 3);

      v58, v59, v60, v61, v62, v63, v64, v65;
    }

    else
    {
      sub_100289774(&a1[v46], v39, v40, v41, v42, v43, v44, v45);
      v66 = *(v48 + 1);
      *v47 = *v48;
      *(v47 + 1) = v66;
    }
  }

  else if (v50)
  {
    *v47 = v50;
    *(v47 + 1) = *(v48 + 1);
    *(v47 + 2) = *(v48 + 2);
    *(v47 + 3) = *(v48 + 3);
  }

  else
  {
    v67 = *(v48 + 1);
    *v47 = *v48;
    *(v47 + 1) = v67;
  }

  v68 = a3[11];
  v69 = &a1[v68];
  v70 = &a2[v68];
  *v69 = *v70;
  v71 = *(v69 + 1);
  *(v69 + 1) = *(v70 + 1);

  v71, v72, v73, v74, v75, v76, v77, v78;
  v79 = a3[12];
  v80 = &a1[v79];
  v81 = &a2[v79];
  *v80 = *v81;
  v82 = *(v80 + 1);
  *(v80 + 1) = *(v81 + 1);

  v82, v83, v84, v85, v86, v87, v88, v89;
  v90 = a3[13];
  v91 = &a1[v90];
  v92 = &a2[v90];
  *v91 = *v92;
  v93 = *(v91 + 1);
  *(v91 + 1) = *(v92 + 1);

  v93, v94, v95, v96, v97, v98, v99, v100;
  v101 = a3[14];
  v102 = &a1[v101];
  v103 = &a2[v101];
  *v102 = *v103;
  v104 = *(v102 + 1);
  *(v102 + 1) = *(v103 + 1);

  v104, v105, v106, v107, v108, v109, v110, v111;
  v112 = a3[15];
  v113 = &a1[v112];
  v114 = &a2[v112];
  v115 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate(0);
  v116 = *(v115 - 8);
  v117 = *(v116 + 48);
  v118 = v117(v113, 1, v115);
  v119 = v117(v114, 1, v115);
  if (!v118)
  {
    v120 = v202;
    if (v119)
    {
      sub_1002883C8(v113, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
      goto LABEL_21;
    }

    v123 = v203(v113, 1, v202);
    v124 = v203(v114, 1, v202);
    if (v123)
    {
      if (!v124)
      {
        (*(v201 + 16))(v113, v114, v202);
        (*(v201 + 56))(v113, 0, 1, v202);
LABEL_30:
        v130 = *(v115 + 20);
        v131 = &v113[v130];
        v132 = &v114[v130];
        *v131 = *v132;
        v133 = *(v131 + 1);
        *(v131 + 1) = *(v132 + 1);

        v133, v134, v135, v136, v137, v138, v139, v140;
        goto LABEL_31;
      }
    }

    else
    {
      if (!v124)
      {
        (*(v201 + 24))(v113, v114, v202);
        goto LABEL_30;
      }

      (*(v201 + 8))(v113, v202);
    }

    v129 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(v113, v114, *(*(v129 - 8) + 64));
    goto LABEL_30;
  }

  v120 = v202;
  if (v119)
  {
LABEL_21:
    v122 = sub_1000F5104(&qword_10093F968, &unk_10079E200);
    memcpy(v113, v114, *(*(v122 - 8) + 64));
    goto LABEL_31;
  }

  if (v203(v114, 1, v202))
  {
    v121 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(v113, v114, *(*(v121 - 8) + 64));
  }

  else
  {
    (*(v201 + 16))(v113, v114, v202);
    (*(v201 + 56))(v113, 0, 1, v202);
  }

  v125 = *(v115 + 20);
  v126 = &v113[v125];
  v127 = &v114[v125];
  *v126 = *v127;
  *(v126 + 1) = *(v127 + 1);
  v128 = *(v116 + 56);

  v128(v113, 0, 1, v115);
LABEL_31:
  v141 = a3[16];
  v142 = v203(&a1[v141], 1, v120);
  v143 = v203(&a2[v141], 1, v120);
  if (!v142)
  {
    if (!v143)
    {
      (*(v201 + 24))(&a1[v141], &a2[v141], v120);
      goto LABEL_37;
    }

    (*(v201 + 8))(&a1[v141], v120);
    goto LABEL_36;
  }

  if (v143)
  {
LABEL_36:
    v144 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(&a1[v141], &a2[v141], *(*(v144 - 8) + 64));
    goto LABEL_37;
  }

  (*(v201 + 16))(&a1[v141], &a2[v141], v120);
  (*(v201 + 56))(&a1[v141], 0, 1, v120);
LABEL_37:
  v145 = a3[17];
  v146 = *&a1[v145];
  *&a1[v145] = *&a2[v145];

  v146, v147, v148, v149, v150, v151, v152, v153;
  a1[a3[18]] = a2[a3[18]];
  v154 = a3[19];
  v155 = &a1[v154];
  v156 = &a2[v154];
  v157 = v156[8];
  *v155 = *v156;
  v155[8] = v157;
  v158 = a3[20];
  v159 = &a1[v158];
  v160 = &a2[v158];
  *v159 = *v160;
  v161 = *(v159 + 1);
  *(v159 + 1) = *(v160 + 1);

  v161, v162, v163, v164, v165, v166, v167, v168;
  v169 = a3[21];
  v170 = &a1[v169];
  v171 = &a2[v169];
  *v170 = *v171;
  v172 = *(v170 + 1);
  *(v170 + 1) = *(v171 + 1);

  v172, v173, v174, v175, v176, v177, v178, v179;
  v180 = a3[22];
  v181 = &a1[v180];
  v182 = &a2[v180];
  *v181 = *v182;
  v183 = *(v181 + 1);
  *(v181 + 1) = *(v182 + 1);

  v183, v184, v185, v186, v187, v188, v189, v190;
  v191 = a3[23];
  v192 = *&a1[v191];
  *&a1[v191] = *&a2[v191];

  v192, v193, v194, v195, v196, v197, v198, v199;
  a1[a3[24]] = a2[a3[24]];
  a1[a3[25]] = a2[a3[25]];
  a1[a3[26]] = a2[a3[26]];
  a1[a3[27]] = a2[a3[27]];
  return a1;
}

char *sub_10028B05C(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v46 = v7;
  if (v8(a2, 1, v6))
  {
    v9 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = a3[5];
  v11 = a3[6];
  v12 = &a1[v10];
  v13 = &a2[v10];
  *v12 = *v13;
  v12[8] = v13[8];
  v14 = &a1[v11];
  v15 = &a2[v11];
  *v14 = *v15;
  v14[8] = v15[8];
  v16 = a3[7];
  v17 = a3[8];
  v18 = &a1[v16];
  v19 = &a2[v16];
  *v18 = *v19;
  v18[8] = v19[8];
  v20 = &a1[v17];
  v21 = &a2[v17];
  *v20 = *v21;
  v20[8] = v21[8];
  v22 = a3[10];
  *&a1[a3[9]] = *&a2[a3[9]];
  v23 = &a1[v22];
  v24 = &a2[v22];
  v25 = *(v24 + 1);
  *v23 = *v24;
  *(v23 + 1) = v25;
  v26 = a3[12];
  *&a1[a3[11]] = *&a2[a3[11]];
  *&a1[v26] = *&a2[v26];
  v27 = a3[14];
  *&a1[a3[13]] = *&a2[a3[13]];
  v28 = a3[15];
  v29 = &a1[v28];
  v30 = &a2[v28];
  *&a1[v27] = *&a2[v27];
  v31 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate(0);
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v30, 1, v31))
  {
    v33 = sub_1000F5104(&qword_10093F968, &unk_10079E200);
    memcpy(v29, v30, *(*(v33 - 8) + 64));
  }

  else
  {
    if (v8(v30, 1, v6))
    {
      v34 = sub_1000F5104(&unk_100938850, qword_100795AE0);
      memcpy(v29, v30, *(*(v34 - 8) + 64));
    }

    else
    {
      (*(v46 + 32))(v29, v30, v6);
      (*(v46 + 56))(v29, 0, 1, v6);
    }

    *&v29[*(v31 + 20)] = *&v30[*(v31 + 20)];
    (*(v32 + 56))(v29, 0, 1, v31);
  }

  v35 = a3[16];
  if (v8(&a2[v35], 1, v6))
  {
    v36 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(&a1[v35], &a2[v35], *(*(v36 - 8) + 64));
  }

  else
  {
    (*(v46 + 32))(&a1[v35], &a2[v35], v6);
    (*(v46 + 56))(&a1[v35], 0, 1, v6);
  }

  v37 = a3[18];
  *&a1[a3[17]] = *&a2[a3[17]];
  a1[v37] = a2[v37];
  v38 = a3[19];
  v39 = a3[20];
  v40 = &a1[v38];
  v41 = &a2[v38];
  *v40 = *v41;
  v40[8] = v41[8];
  *&a1[v39] = *&a2[v39];
  v42 = a3[22];
  *&a1[a3[21]] = *&a2[a3[21]];
  *&a1[v42] = *&a2[v42];
  v43 = a3[24];
  *&a1[a3[23]] = *&a2[a3[23]];
  a1[v43] = a2[v43];
  v44 = a3[26];
  a1[a3[25]] = a2[a3[25]];
  a1[v44] = a2[v44];
  a1[a3[27]] = a2[a3[27]];
  return a1;
}

char *sub_10028B4D4(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  v197 = v7;
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    v18 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(a1, a2, *(*(v18 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(a1, a2, v6);
LABEL_7:
  v19 = a3[5];
  v20 = a3[6];
  v21 = &a1[v19];
  v22 = &a2[v19];
  *v21 = *v22;
  v21[8] = v22[8];
  v23 = &a1[v20];
  v24 = &a2[v20];
  *v23 = *v24;
  v23[8] = v24[8];
  v25 = a3[7];
  v26 = a3[8];
  v27 = &a1[v25];
  v28 = &a2[v25];
  *v27 = *v28;
  v27[8] = v28[8];
  v29 = &a1[v26];
  v30 = &a2[v26];
  *v29 = *v30;
  v29[8] = v30[8];
  v31 = a3[9];
  v32 = &a1[v31];
  v33 = &a2[v31];
  v35 = *v33;
  v34 = *(v33 + 1);
  v36 = *(v32 + 1);
  *v32 = v35;
  *(v32 + 1) = v34;
  v36, v11, v12, v13, v14, v15, v16, v17;
  v44 = a3[10];
  v45 = &a1[v44];
  v46 = &a2[v44];
  v47 = *&a1[v44];
  v198 = v8;
  v199 = v6;
  if (v47)
  {
    if (*v46)
    {
      *v45 = *v46;
      v47, v37, v38, v39, v40, v41, v42, v43;
      *(v45 + 8) = *(v46 + 8);
      v48 = *(v45 + 3);
      *(v45 + 3) = *(v46 + 3);
      v48, v49, v50, v51, v52, v53, v54, v55;
      goto LABEL_12;
    }

    sub_100289774(v45, v37, v38, v39, v40, v41, v42, v43);
  }

  v56 = *(v46 + 1);
  *v45 = *v46;
  *(v45 + 1) = v56;
LABEL_12:
  v57 = a3[11];
  v58 = &a1[v57];
  v59 = &a2[v57];
  v61 = *v59;
  v60 = *(v59 + 1);
  v62 = *(v58 + 1);
  *v58 = v61;
  *(v58 + 1) = v60;
  v62, v37, v38, v39, v40, v41, v42, v43;
  v63 = a3[12];
  v64 = &a1[v63];
  v65 = &a2[v63];
  v67 = *v65;
  v66 = *(v65 + 1);
  v68 = *(v64 + 1);
  *v64 = v67;
  *(v64 + 1) = v66;
  v68, v69, v70, v71, v72, v73, v74, v75;
  v76 = a3[13];
  v77 = &a1[v76];
  v78 = &a2[v76];
  v80 = *v78;
  v79 = *(v78 + 1);
  v81 = *(v77 + 1);
  *v77 = v80;
  *(v77 + 1) = v79;
  v81, v82, v83, v84, v85, v86, v87, v88;
  v89 = a3[14];
  v90 = &a1[v89];
  v91 = &a2[v89];
  v93 = *v91;
  v92 = *(v91 + 1);
  v94 = *(v90 + 1);
  *v90 = v93;
  *(v90 + 1) = v92;
  v94, v95, v96, v97, v98, v99, v100, v101;
  v102 = a3[15];
  v103 = &a1[v102];
  v104 = &a2[v102];
  v105 = type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate(0);
  v106 = *(v105 - 8);
  v107 = *(v106 + 48);
  v108 = v107(v103, 1, v105);
  v109 = v107(v104, 1, v105);
  if (!v108)
  {
    v111 = v198;
    v110 = v199;
    if (v109)
    {
      sub_1002883C8(v103, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
      goto LABEL_18;
    }

    v114 = v198(v103, 1, v199);
    v115 = v198(v104, 1, v199);
    if (v114)
    {
      if (!v115)
      {
        (*(v197 + 32))(v103, v104, v199);
        (*(v197 + 56))(v103, 0, 1, v199);
LABEL_28:
        v124 = *(v105 + 20);
        v125 = &v103[v124];
        v126 = &v104[v124];
        v128 = *v126;
        v127 = *(v126 + 1);
        v129 = *(v125 + 1);
        *v125 = v128;
        *(v125 + 1) = v127;
        v129, v116, v117, v118, v119, v120, v121, v122;
        goto LABEL_29;
      }
    }

    else
    {
      if (!v115)
      {
        (*(v197 + 40))(v103, v104, v199);
        goto LABEL_28;
      }

      (*(v197 + 8))(v103, v199);
    }

    v123 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(v103, v104, *(*(v123 - 8) + 64));
    goto LABEL_28;
  }

  v111 = v198;
  v110 = v199;
  if (v109)
  {
LABEL_18:
    v113 = sub_1000F5104(&qword_10093F968, &unk_10079E200);
    memcpy(v103, v104, *(*(v113 - 8) + 64));
    goto LABEL_29;
  }

  if (v198(v104, 1, v199))
  {
    v112 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(v103, v104, *(*(v112 - 8) + 64));
  }

  else
  {
    (*(v197 + 32))(v103, v104, v199);
    (*(v197 + 56))(v103, 0, 1, v199);
  }

  *&v103[*(v105 + 20)] = *&v104[*(v105 + 20)];
  (*(v106 + 56))(v103, 0, 1, v105);
LABEL_29:
  v130 = a3[16];
  v131 = v111(&a1[v130], 1, v110);
  v132 = v111(&a2[v130], 1, v110);
  if (!v131)
  {
    if (!v132)
    {
      (*(v197 + 40))(&a1[v130], &a2[v130], v110);
      goto LABEL_35;
    }

    (*(v197 + 8))(&a1[v130], v110);
    goto LABEL_34;
  }

  if (v132)
  {
LABEL_34:
    v140 = sub_1000F5104(&unk_100938850, qword_100795AE0);
    memcpy(&a1[v130], &a2[v130], *(*(v140 - 8) + 64));
    goto LABEL_35;
  }

  (*(v197 + 32))(&a1[v130], &a2[v130], v110);
  (*(v197 + 56))(&a1[v130], 0, 1, v110);
LABEL_35:
  v141 = a3[17];
  v142 = *&a1[v141];
  *&a1[v141] = *&a2[v141];
  v142, v133, v134, v135, v136, v137, v138, v139;
  v143 = a3[19];
  a1[a3[18]] = a2[a3[18]];
  v144 = &a1[v143];
  v145 = &a2[v143];
  *v144 = *v145;
  v144[8] = v145[8];
  v146 = a3[20];
  v147 = &a1[v146];
  v148 = &a2[v146];
  v150 = *v148;
  v149 = *(v148 + 1);
  v151 = *(v147 + 1);
  *v147 = v150;
  *(v147 + 1) = v149;
  v151, v152, v153, v154, v155, v156, v157, v158;
  v159 = a3[21];
  v160 = &a1[v159];
  v161 = &a2[v159];
  v163 = *v161;
  v162 = *(v161 + 1);
  v164 = *(v160 + 1);
  *v160 = v163;
  *(v160 + 1) = v162;
  v164, v165, v166, v167, v168, v169, v170, v171;
  v172 = a3[22];
  v173 = &a1[v172];
  v174 = &a2[v172];
  v176 = *v174;
  v175 = *(v174 + 1);
  v177 = *(v173 + 1);
  *v173 = v176;
  *(v173 + 1) = v175;
  v177, v178, v179, v180, v181, v182, v183, v184;
  v185 = a3[23];
  v186 = *&a1[v185];
  *&a1[v185] = *&a2[v185];
  v186, v187, v188, v189, v190, v191, v192, v193;
  v194 = a3[25];
  a1[a3[24]] = a2[a3[24]];
  a1[v194] = a2[v194];
  v195 = a3[27];
  a1[a3[26]] = a2[a3[26]];
  a1[v195] = a2[v195];
  return a1;
}

void sub_10028BC8C(uint64_t a1)
{
  sub_100289520(319, &qword_100938D60, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_100289520(319, &unk_10093FA78, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

double destroy for RDStoreControllerExporter.DistributedEvaluation.ExportResult(_TtC7remindd19RDXPCStorePerformer **a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1, a2, a3, a4, a5, a6, a7, a8;
  a1[2], v9, v10, v11, v12, v13, v14, v15;
  v23 = a1[4];

  v23, v16, v17, v18, v19, v20, v21, v22;
  return result;
}

uint64_t initializeWithCopy for RDStoreControllerExporter.DistributedEvaluation.ExportResult(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v4;
  v5 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

_TtC7remindd19RDXPCStorePerformer **assignWithCopy for RDStoreControllerExporter.DistributedEvaluation.ExportResult(_TtC7remindd19RDXPCStorePerformer **a1, _TtC7remindd19RDXPCStorePerformer **a2)
{
  v4 = *a1;
  *a1 = *a2;

  v4, v5, v6, v7, v8, v9, v10, v11;
  a1[1] = a2[1];
  v12 = a1[2];
  a1[2] = a2[2];

  v12, v13, v14, v15, v16, v17, v18, v19;
  a1[3] = a2[3];
  v20 = a1[4];
  a1[4] = a2[4];

  v20, v21, v22, v23, v24, v25, v26, v27;
  v28 = a2[5];
  *(a1 + 48) = *(a2 + 48);
  a1[5] = v28;
  return a1;
}

__n128 initializeWithTake for RDDARequest(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer **assignWithTake for RDStoreControllerExporter.DistributedEvaluation.ExportResult(_TtC7remindd19RDXPCStorePerformer **a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *a1;
  *a1 = *a2;
  v10, a2, a3, a4, a5, a6, a7, a8;
  v11 = *(a2 + 2);
  v12 = a1[2];
  a1[1] = *(a2 + 1);
  a1[2] = v11;
  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = *(a2 + 4);
  v21 = a1[4];
  a1[3] = *(a2 + 3);
  a1[4] = v20;
  v21, v22, v23, v24, v25, v26, v27, v28;
  a1[5] = *(a2 + 5);
  *(a1 + 48) = a2[48];
  return a1;
}

uint64_t getEnumTagSinglePayload for RDStoreControllerExporter.DistributedEvaluation.ExportResult(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for RDStoreControllerExporter.DistributedEvaluation.ExportResult(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double destroy for RDStoreControllerExporter.DistributedEvaluation.Account(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(a1 + 8), a2, a3, a4, a5, a6, a7, a8;
  v16 = *(a1 + 16);

  v16, v9, v10, v11, v12, v13, v14, v15;
  return result;
}

void *sub_10028C0A8(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for RDStoreControllerExporter.DistributedEvaluation.Account(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v4, v5, v6, v7, v8, v9, v10, v11;
  v12 = a2[2];
  v13 = a1[2];
  a1[2] = v12;

  v13, v14, v15, v16, v17, v18, v19, v20;
  return a1;
}

void *assignWithTake for RDStoreControllerExporter.DistributedEvaluation.Account(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1 = *a2;
  a1[1], a2, a3, a4, a5, a6, a7, a8;
  v10 = a1[2];
  *(a1 + 1) = *(a2 + 8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  return a1;
}

unint64_t sub_10028C1A8()
{
  result = qword_10093FB08;
  if (!qword_10093FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FB08);
  }

  return result;
}

unint64_t sub_10028C1FC()
{
  result = qword_10093FB20;
  if (!qword_10093FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FB20);
  }

  return result;
}

unint64_t sub_10028C250()
{
  result = qword_10093FB30;
  if (!qword_10093FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FB30);
  }

  return result;
}

uint64_t sub_10028C2A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10028C2EC(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a1 == 0x73746E756F636361 && a2 == 0xE800000000000000;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEE0065676175676ELL;
    if (a1 == 0x614C6D6574737973 && a2 == 0xEE0065676175676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x80000001007F2BA0;
      if (a1 == 0xD000000000000012 && 0x80000001007F2BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x80000001007F2BC0 == a2)
      {
        a2, 0x80000001007F2BC0, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        a2, v15, v16, v17, v18, v19, v20, v21;
        if (v14)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_10028C464@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000F5104(&qword_10093FC18, &qword_10079E650);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v23 - v8;
  sub_10000F61C(a1, a1[3]);
  sub_10028C1A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000607C(a1);
  }

  sub_1000F5104(&qword_10093FB10, &qword_10079E5D0);
  v29 = 0;
  sub_10028DE8C(&qword_10093FC20, sub_10028DF04, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v30;
  v28 = 1;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  v25 = v11;
  v27 = 2;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = v14;
  v26 = 3;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_10000607C(a1);
  v20 = v25;
  *a2 = v10;
  *(a2 + 8) = v20;
  v22 = v23;
  v21 = v24;
  *(a2 + 16) = v13;
  *(a2 + 24) = v22;
  *(a2 + 32) = v21;
  *(a2 + 40) = v15;
  *(a2 + 48) = v18 & 1;
  return result;
}

uint64_t sub_10028C70C(void *a1)
{
  v3 = sub_1000F5104(&qword_10093FC30, &qword_10079E658);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10000F61C(a1, a1[3]);
  sub_10028DF58();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1000F5104(&qword_10093FC40, &qword_10079E660);
    v10[15] = 1;
    sub_10028DFAC(&qword_10093FC48, sub_10028E024, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000607C(a1);
  return v8;
}

uint64_t sub_10028C91C(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a1 == 0x6465726168537369 && a2 == 0xE800000000000000;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x70756F72477369 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = 0x80000001007F2BE0;
    if (a1 == 0xD000000000000015 && 0x80000001007F2BE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 3;
    }

    else if (a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073)
    {
      0xE900000000000073, v12, a3, a4, a5, a6, a7, a8;
      return 4;
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 4;
      }

      else
      {
        return 5;
      }
    }
  }
}

void *sub_10028CAD8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000F5104(&qword_10093FB40, &qword_10079E5F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v44 - v8;
  sub_10000F61C(a1, a1[3]);
  sub_10028CEF8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v50 = v2;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 2;
    v17 = 2;
LABEL_4:
    sub_10000607C(a1);
    LOBYTE(v56) = v17;
    BYTE1(v56) = v16;
    v57 = v15;
    v58 = v14;
    v59 = v13;
    v60 = v12;
    v61 = v11;
    v62 = v10;
    v63 = &_swiftEmptyArrayStorage;
    return sub_1002865E8(&v56, v18, v19, v20, v21, v22, v23, v24);
  }

  LOBYTE(v56) = 0;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v56) = 1;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v56) = 2;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v50 = 0;
  v46 = v26;
  v47 = v27;
  LOBYTE(v51) = 3;
  sub_10028CF4C();
  v28 = v50;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v50 = v28;
  if (v28)
  {
    (*(v6 + 8))(v9, v5);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
LABEL_9:
    v16 = v48;
    v17 = v49;
    v15 = v46;
    v14 = v47;
    goto LABEL_4;
  }

  v45 = a2;
  v13 = v56;
  v12 = v57;
  v11 = v58;
  v10 = v59;
  sub_1000F5104(&qword_10093FB58, &qword_10079E5F8);
  v55 = 4;
  sub_10028CFF4(&qword_10093FB60, &qword_10093FB68, &unk_10079E410, &protocol conformance descriptor for <A> [A]);
  v29 = v50;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v50 = v29;
  if (v29)
  {
    (*(v6 + 8))(v9, v5);
    goto LABEL_9;
  }

  (*(v6 + 8))(v9, v5);
  v44 = v64;
  v31 = v48;
  v30 = v49;
  LOBYTE(v51) = v49;
  BYTE1(v51) = v48;
  v32 = v46;
  v33 = v47;
  *(&v51 + 1) = v46;
  *&v52 = v47;
  *(&v52 + 1) = v13;
  *&v53 = v12;
  *(&v53 + 1) = v11;
  *&v54 = v10;
  *(&v54 + 1) = v64;
  sub_1002865B0(&v51, &v56);
  sub_10000607C(a1);
  LOBYTE(v56) = v30;
  BYTE1(v56) = v31;
  v57 = v32;
  v58 = v33;
  v59 = v13;
  v60 = v12;
  v61 = v11;
  v62 = v10;
  v63 = v44;
  result = sub_1002865E8(&v56, v34, v35, v36, v37, v38, v39, v40);
  v41 = v52;
  v42 = v45;
  *v45 = v51;
  v42[1] = v41;
  v43 = v54;
  v42[2] = v53;
  v42[3] = v43;
  return result;
}

unint64_t sub_10028CEF8()
{
  result = qword_10093FB48;
  if (!qword_10093FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FB48);
  }

  return result;
}

unint64_t sub_10028CF4C()
{
  result = qword_10093FB50;
  if (!qword_10093FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FB50);
  }

  return result;
}

unint64_t sub_10028CFA0()
{
  result = qword_10093FB78;
  if (!qword_10093FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FB78);
  }

  return result;
}

uint64_t sub_10028CFF4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10093FB58, &qword_10079E5F8);
    sub_10028C2A4(a2, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.Reminder, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_10028D090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_10028D0D0(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = 0xEC00000065746144;
  v11 = a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x80000001007F2C00;
    if (a1 == 0xD000000000000011 && 0x80000001007F2C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0x80000001007F2C20;
      if (a1 == 0xD000000000000013 && 0x80000001007F2C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v15 = 0xEC0000006B656557;
        if (a1 == 0x664F796144657564 && a2 == 0xEC0000006B656557 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          a2, v15, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else
        {
          v16 = 0x80000001007F2C40;
          if (a1 == 0xD000000000000010 && 0x80000001007F2C40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            a2, v16, a3, a4, a5, a6, a7, a8;
            return 4;
          }

          else
          {
            v17 = 0xEF68736148646574;
            if (a1 == 0x6C6153656C746974 && a2 == 0xEF68736148646574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              a2, v17, a3, a4, a5, a6, a7, a8;
              return 5;
            }

            else
            {
              v18 = 0x80000001007F2BE0;
              if (a1 == 0xD000000000000015 && 0x80000001007F2BE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                a2, v18, a3, a4, a5, a6, a7, a8;
                return 6;
              }

              else
              {
                v19 = 0xEC00000063655632;
                if (a1 == 0x65636E65746E6573 && a2 == 0xEC00000063655632 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  a2, v19, a3, a4, a5, a6, a7, a8;
                  return 7;
                }

                else
                {
                  v20 = 0x80000001007F2C60;
                  if (a1 == 0xD000000000000010 && 0x80000001007F2C60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    a2, v20, a3, a4, a5, a6, a7, a8;
                    return 8;
                  }

                  else
                  {
                    v21 = 0x80000001007F2C80;
                    if (a1 == 0xD000000000000011 && 0x80000001007F2C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {
                      a2, v21, a3, a4, a5, a6, a7, a8;
                      return 9;
                    }

                    else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {
                      a2, v21, a3, a4, a5, a6, a7, a8;
                      return 10;
                    }

                    else
                    {
                      v22 = 0xEB00000000657461;
                      if (a1 == 0x4479616C70736964 && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {
                        a2, v22, a3, a4, a5, a6, a7, a8;
                        return 11;
                      }

                      else
                      {
                        v23 = 0xEE00657461446E6FLL;
                        if (a1 == 0x6974656C706D6F63 && a2 == 0xEE00657461446E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          a2, v23, a3, a4, a5, a6, a7, a8;
                          return 12;
                        }

                        else if (a1 == 0x7461446D72616C61 && a2 == 0xEA00000000007365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          a2, v23, a3, a4, a5, a6, a7, a8;
                          return 13;
                        }

                        else if (a1 == 0x656767616C467369 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          a2, v23, a3, a4, a5, a6, a7, a8;
                          return 14;
                        }

                        else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          a2, v23, a3, a4, a5, a6, a7, a8;
                          return 15;
                        }

                        else
                        {
                          v24 = 0x80000001007F2CA0;
                          if (a1 == 0xD000000000000017 && 0x80000001007F2CA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {
                            a2, v24, a3, a4, a5, a6, a7, a8;
                            return 16;
                          }

                          else
                          {
                            v25 = 0x80000001007F2CC0;
                            if (a1 == 0xD000000000000016 && 0x80000001007F2CC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {
                              a2, v25, a3, a4, a5, a6, a7, a8;
                              return 17;
                            }

                            else
                            {
                              v26 = 0x80000001007F2CE0;
                              if (a1 == 0xD000000000000015 && 0x80000001007F2CE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {
                                a2, v26, a3, a4, a5, a6, a7, a8;
                                return 18;
                              }

                              else
                              {
                                v27 = 0xEE0073495455746ELL;
                                if (a1 == 0x656D686361747461 && a2 == 0xEE0073495455746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {
                                  a2, v27, a3, a4, a5, a6, a7, a8;
                                  return 19;
                                }

                                else
                                {
                                  v28 = 0x80000001007F2D00;
                                  if (a1 == 0xD000000000000018 && 0x80000001007F2D00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {
                                    a2, v28, a3, a4, a5, a6, a7, a8;
                                    return 20;
                                  }

                                  else
                                  {
                                    v29 = 0xEC0000006B736154;
                                    if (a1 == 0x746E657261507369 && a2 == 0xEC0000006B736154 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {
                                      a2, v29, a3, a4, a5, a6, a7, a8;
                                      return 21;
                                    }

                                    else
                                    {
                                      v30 = 0xE90000000000006BLL;
                                      if (a1 == 0x7361746275537369 && a2 == 0xE90000000000006BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {
                                        a2, v30, a3, a4, a5, a6, a7, a8;
                                        return 22;
                                      }

                                      else if (a1 == 0x4172657355736168 && a2 == 0xEF79746976697463)
                                      {
                                        0xEF79746976697463, 0xEF79746976697463, a3, a4, a5, a6, a7, a8;
                                        return 23;
                                      }

                                      else
                                      {
                                        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
                                        a2, v32, v33, v34, v35, v36, v37, v38;
                                        if (v31)
                                        {
                                          return 23;
                                        }

                                        else
                                        {
                                          return 24;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10028D864(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a1 == 0x6E69646465626D65 && a2 == 0xEA00000000007367;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000)
  {
    0xE800000000000000, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10028D984(void *a1)
{
  v3 = sub_1000F5104(&qword_10093FB98, &qword_10079E610);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_10000F61C(a1, v8);
  sub_10028DBE8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000F5104(&qword_10093FBA8, &qword_10079E618);
    v10[15] = 0;
    sub_10028DC3C(&qword_10093FBB0, &qword_10093FBB8, &protocol witness table for Double, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11;
    v10[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10[13] = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000607C(a1);
  return v8;
}

unint64_t sub_10028DBE8()
{
  result = qword_10093FBA0;
  if (!qword_10093FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FBA0);
  }

  return result;
}

uint64_t sub_10028DC3C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10093FBA8, &qword_10079E618);
    sub_10028DCC8(a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10028DCC8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10093EDF0, &qword_10079E620);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10028DD34()
{
  result = qword_10093FBE0;
  if (!qword_10093FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FBE0);
  }

  return result;
}

uint64_t sub_10028DD88(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10093FBF0, &unk_10079E638);
    sub_10028C2A4(a2, type metadata accessor for RDStoreControllerExporter.DistributedEvaluation.AlarmDate, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10028DE24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10028DE8C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10093FB10, &qword_10079E5D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10028DF04()
{
  result = qword_10093FC28;
  if (!qword_10093FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FC28);
  }

  return result;
}

unint64_t sub_10028DF58()
{
  result = qword_10093FC38;
  if (!qword_10093FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FC38);
  }

  return result;
}

uint64_t sub_10028DFAC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10093FC40, &qword_10079E660);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10028E024()
{
  result = qword_10093FC50;
  if (!qword_10093FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FC50);
  }

  return result;
}

unint64_t sub_10028E078()
{
  result = qword_10093FC68;
  if (!qword_10093FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FC68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RDStoreControllerExporter.DistributedEvaluation.Reminder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RDStoreControllerExporter.DistributedEvaluation.Reminder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10028E270()
{
  result = qword_10093FC70;
  if (!qword_10093FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FC70);
  }

  return result;
}

unint64_t sub_10028E2C8()
{
  result = qword_10093FC78;
  if (!qword_10093FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FC78);
  }

  return result;
}

unint64_t sub_10028E320()
{
  result = qword_10093FC80;
  if (!qword_10093FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FC80);
  }

  return result;
}

unint64_t sub_10028E378()
{
  result = qword_10093FC88;
  if (!qword_10093FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FC88);
  }

  return result;
}

unint64_t sub_10028E3D0()
{
  result = qword_10093FC90;
  if (!qword_10093FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FC90);
  }

  return result;
}

unint64_t sub_10028E428()
{
  result = qword_10093FC98;
  if (!qword_10093FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FC98);
  }

  return result;
}

unint64_t sub_10028E480()
{
  result = qword_10093FCA0;
  if (!qword_10093FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FCA0);
  }

  return result;
}

unint64_t sub_10028E4D8()
{
  result = qword_10093FCA8;
  if (!qword_10093FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FCA8);
  }

  return result;
}

unint64_t sub_10028E530()
{
  result = qword_10093FCB0;
  if (!qword_10093FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FCB0);
  }

  return result;
}

unint64_t sub_10028E588()
{
  result = qword_10093FCB8;
  if (!qword_10093FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FCB8);
  }

  return result;
}

unint64_t sub_10028E5E0()
{
  result = qword_10093FCC0;
  if (!qword_10093FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FCC0);
  }

  return result;
}

unint64_t sub_10028E638()
{
  result = qword_10093FCC8;
  if (!qword_10093FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FCC8);
  }

  return result;
}

unint64_t sub_10028E690()
{
  result = qword_10093FCD0;
  if (!qword_10093FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FCD0);
  }

  return result;
}

unint64_t sub_10028E6E8()
{
  result = qword_10093FCD8;
  if (!qword_10093FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FCD8);
  }

  return result;
}

unint64_t sub_10028E740()
{
  result = qword_10093FCE0;
  if (!qword_10093FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FCE0);
  }

  return result;
}

unint64_t sub_10028E798()
{
  result = qword_10093FCE8;
  if (!qword_10093FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FCE8);
  }

  return result;
}

unint64_t sub_10028E7F0()
{
  result = qword_10093FCF0;
  if (!qword_10093FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FCF0);
  }

  return result;
}

unint64_t sub_10028E848()
{
  result = qword_10093FCF8;
  if (!qword_10093FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FCF8);
  }

  return result;
}

uint64_t sub_10028E8A8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093FD00);
  v1 = sub_100006654(v0, qword_10093FD00);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t NSURL.rd_isExcludedFromBackup.getter()
{
  v23[1] = swift_getObjectType();
  v0 = type metadata accessor for URLResourceValues();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  __chkstk_darwin(v8, v9);
  v11 = v23 - v10;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000F5104(&qword_10093FD18, &qword_10079ECE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(inited + 32) = NSURLIsExcludedFromBackupKey;
  v13 = NSURLIsExcludedFromBackupKey;
  v14 = sub_1001A6360(inited);
  swift_setDeallocating();
  sub_10028F22C(inited + 32);
  URL.resourceValues(forKeys:)();
  v14, v15, v16, v17, v18, v19, v20, v21;
  LOBYTE(inited) = URLResourceValues.isExcludedFromBackup.getter();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v11, v5);
  return inited & 1;
}

id NSURL.rd_isExcludedFromBackup.setter(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getObjectType();
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URLResourceValues();
  v10 = *(v9 - 8);
  *&v12 = __chkstk_darwin(v9, v11).n128_u64[0];
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 rd_isExcludedFromBackup];
  if (result != v3)
  {
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    URL.setResourceValues(_:)();
    (*(v10 + 8))(v14, v9);
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_10028F22C(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10028F288()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093FD20);
  v1 = sub_100006654(v0, qword_10093FD20);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10028F350(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0xD000000000000032;
  }

  else
  {
    v9 = 0xD000000000000021;
  }

  if (v8)
  {
    v10 = "store did change";
  }

  else
  {
    v10 = "hangeNotification";
  }

  v11 = (v10 | 0x8000000000000000);
  if (*a2)
  {
    v12 = 0xD000000000000032;
  }

  else
  {
    v12 = 0xD000000000000021;
  }

  if (*a2)
  {
    v13 = "hangeNotification";
  }

  else
  {
    v13 = "store did change";
  }

  v14 = (v13 | 0x8000000000000000);
  if (v9 == v12 && v11 == v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v11, a2, v12, a4, a5, a6, a7, a8;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_10028F3FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = "hangeNotification";
  }

  else
  {
    v2 = "store did change";
  }

  String.hash(into:)();
  (v2 | 0x8000000000000000), v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

double sub_10028F47C(uint64_t a1)
{
  if (*v1)
  {
    v2 = "hangeNotification";
  }

  else
  {
    v2 = "store did change";
  }

  String.hash(into:)();

  (v2 | 0x8000000000000000), v3, v4, v5, v6, v7, v8, v9;
  return result;
}

Swift::Int sub_10028F4E8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = "hangeNotification";
  }

  else
  {
    v3 = "store did change";
  }

  String.hash(into:)();
  (v3 | 0x8000000000000000), v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_10028F564(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E29B0, v3);
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

void sub_10028F5C4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000032;
  }

  else
  {
    v2 = 0xD000000000000021;
  }

  if (*v1)
  {
    v3 = "hangeNotification";
  }

  else
  {
    v3 = "store did change";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_10028F604(void *a1, char a2)
{
  v3 = v2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 36) = -1;
  v5 = a2 & 1;
  *(v3 + 32) = a2 & 1;
  out_token = -1;
  if (a2)
  {
    v6 = 0xD000000000000032;
  }

  else
  {
    v6 = 0xD000000000000021;
  }

  if (a2)
  {
    v7 = "hangeNotification";
  }

  else
  {
    v7 = "store did change";
  }

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v5;
  aBlock[4] = sub_100290390;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004D4ECC;
  aBlock[3] = &unk_1008EC7D0;
  v10 = _Block_copy(aBlock);
  v11 = a1;

  v12 = String.utf8CString.getter();
  (v7 | 0x8000000000000000), v13, v14, v15, v16, v17, v18, v19;
  v20 = notify_register_dispatch((v12 + 32), &out_token, v11, v10);

  _Block_release(v10);

  if (v20 || out_token == -1)
  {
    if (qword_100935DC0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100006654(v34, qword_10093FD20);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315394;
      v39 = sub_10000668C(v6, (v7 | 0x8000000000000000), aBlock);
      (v7 | 0x8000000000000000), v40, v41, v42, v43, v44, v45, v46;
      *(v37 + 4) = v39;
      *(v37 + 12) = 1024;
      *(v37 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to register for notifyd notification {notificationName: %s, status: %u}", v37, 0x12u);
      sub_10000607C(v38);
    }
  }

  else
  {
    if (qword_100935DC0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_10093FD20);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      v26 = sub_10000668C(v6, (v7 | 0x8000000000000000), aBlock);
      (v7 | 0x8000000000000000), v27, v28, v29, v30, v31, v32, v33;
      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Registered notifyd notification {notificationName: %s}", v24, 0xCu);
      sub_10000607C(v25);
    }

    *(v3 + 36) = out_token;
  }

  return v3;
}

void sub_10028F9F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for REM_os_activity.Options();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_allocObject();
    *(v11 + 16) = a3 & 1;
    *(v11 + 24) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10029039C;
    *(v12 + 24) = v11;
    aBlock[4] = sub_1000529DC;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F160;
    aBlock[3] = &unk_1008EC848;
    v13 = _Block_copy(aBlock);
    sub_1000F5104(&unk_10094D920, &unk_1007B3300);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100791300;

    static REM_os_activity.Options.ifNonePresent.getter();
    v30 = v14;
    sub_1002903A8();
    sub_1000F5104(&unk_10094D930, &qword_10079EE00);
    sub_100290400();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    static REM_os_activity.initiate(_:dso:options:execute:)();
    _Block_release(v13);

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    if (qword_100935DC0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10093FD20);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136315138;
      if (a3)
      {
        v20 = 0xD000000000000032;
      }

      else
      {
        v20 = 0xD000000000000021;
      }

      if (a3)
      {
        v21 = "hangeNotification";
      }

      else
      {
        v21 = "store did change";
      }

      v22 = sub_10000668C(v20, (v21 | 0x8000000000000000), aBlock);
      (v21 | 0x8000000000000000), v23, v24, v25, v26, v27, v28, v29;
      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "Received notifyd notification after event stream was deallocated {name: %s}", v18, 0xCu);
      sub_10000607C(v19);
    }
  }
}

void sub_10028FDB4(char a1)
{
  if (qword_100935DC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10093FD20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    if (a1)
    {
      v7 = 0xD000000000000032;
    }

    else
    {
      v7 = 0xD000000000000021;
    }

    if (a1)
    {
      v8 = "hangeNotification";
    }

    else
    {
      v8 = "store did change";
    }

    v9 = sub_10000668C(v7, (v8 | 0x8000000000000000), &v17);
    (v8 | 0x8000000000000000), v10, v11, v12, v13, v14, v15, v16;
    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received notifyd notification {name: %s}", v5, 0xCu);
    sub_10000607C(v6);
  }

  sub_100290138();
}

uint64_t sub_10028FF34()
{
  v1 = v0;
  if (qword_100935DC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10093FD20);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    if (*(v1 + 32))
    {
      v7 = 0xD000000000000032;
    }

    else
    {
      v7 = 0xD000000000000021;
    }

    if (*(v1 + 32))
    {
      v8 = "hangeNotification";
    }

    else
    {
      v8 = "store did change";
    }

    v9 = sub_10000668C(v7, (v8 | 0x8000000000000000), &v19);
    (v8 | 0x8000000000000000), v10, v11, v12, v13, v14, v15, v16;
    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deallocating notifyd stream {notificationName: %s}", v5, 0xCu);
    sub_10000607C(v6);
  }

  v17 = *(v1 + 36);
  if (v17 != -1)
  {
    notify_cancel(v17);
    *(v1 + 36) = -1;
  }

  sub_1000FDA80(*(v1 + 16), *(v1 + 24));
  return v1;
}

uint64_t sub_1002900E0()
{
  sub_10028FF34();

  return swift_deallocClassInstance();
}

void sub_100290138()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 24);

    v2(v4);

    sub_1000FDA80(v2, v3);
  }

  else
  {
    if (qword_100935DC0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10093FD20);

    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      if (*(v1 + 32))
      {
        v9 = 0xD000000000000032;
      }

      else
      {
        v9 = 0xD000000000000021;
      }

      if (*(v1 + 32))
      {
        v10 = "hangeNotification";
      }

      else
      {
        v10 = "store did change";
      }

      v11 = sub_10000668C(v9, (v10 | 0x8000000000000000), &v20);
      (v10 | 0x8000000000000000), v12, v13, v14, v15, v16, v17, v18;
      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Dropped notification because we don't have an event handler {notificationName: %s}", v7, 0xCu);
      sub_10000607C(v8);
    }
  }
}

unint64_t sub_100290328()
{
  result = qword_10093FE20;
  if (!qword_10093FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FE20);
  }

  return result;
}

uint64_t sub_10029037C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1000FDA80(v3, v4);
}

unint64_t sub_1002903A8()
{
  result = qword_10093FE28;
  if (!qword_10093FE28)
  {
    type metadata accessor for REM_os_activity.Options();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FE28);
  }

  return result;
}

unint64_t sub_100290400()
{
  result = qword_10093FE30;
  if (!qword_10093FE30)
  {
    sub_1000F514C(&unk_10094D930, &qword_10079EE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093FE30);
  }

  return result;
}

uint64_t sub_10029046C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093FE40);
  v1 = sub_100006654(v0, qword_10093FE40);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100290534(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (qword_100935DC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_10093FE40);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "os_transaction INIT {name: com.apple.remindd.RDContactInteractionAlarmProducer.didReceiveContactEvent", v6, 2u);
  }

  os_transaction_create();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "RDContactInteractionAlarmProducer received contact event", v9, 2u);
  }

  sub_1002906BC(v2);
  sub_100293410();

  return swift_unknownObjectRelease();
}

void sub_1002906BC(unint64_t a1)
{
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v181 = *(v2 - 8);
  v182 = v2;
  __chkstk_darwin(v2, v3);
  v5 = &v170 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6, v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8, v9);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  __chkstk_darwin(v14, v15);
  v17 = &v170 - v16;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      v179 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v180 = v12;
      v184 = v11;
      v18 = Date.init()();
      __chkstk_darwin(v18, v19);
      *(&v170 - 2) = v185;
      *(&v170 - 1) = v17;
      v183 = v17;

      v25 = sub_100759CB4(sub_1002934F8, (&v170 - 4), a1, v20, v21, v22, v23, v24);
      v33 = v25;
      v34 = v25 >> 62;
      if (v25 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_5:
          sub_10000F61C((&v185->isa + OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_dataSource), *(&v185[3].isa + OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_dataSource));
          v35 = sub_1004121E4(a1);
          v43 = v35;
          if (*v35->clientIdentity)
          {
            v178 = v34;
            v174 = v10;
            if (qword_100935DC8 != -1)
            {
              swift_once();
            }

            v44 = type metadata accessor for Logger();
            v45 = sub_100006654(v44, qword_10093FE40);

            v46 = v43;
            v47 = Logger.logObject.getter();
            v48 = static os_log_type_t.default.getter();
            v49 = os_log_type_enabled(v47, v48);
            v173 = v46;
            if (v49)
            {
              v50 = swift_slowAlloc();
              *v50 = 134217984;
              *(v50 + 4) = *v46->clientIdentity;
              v46, v51, v52, v53, v54, v55, v56, v57;
              _os_log_impl(&_mh_execute_header, v47, v48, "DataSource returned alarms for contact interaction. {count: %ld}", v50, 0xCu);
            }

            else
            {

              v46, v89, v90, v91, v92, v93, v94, v95;
            }

            v172 = v45;
            v96 = Logger.logObject.getter();
            v97 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              *v98 = 0;
              _os_log_impl(&_mh_execute_header, v96, v97, "os_transaction INIT {name: com.apple.remindd.RDContactInteractionAlarmProducer.contactStoreQuery}", v98, 2u);
            }

            v99 = os_transaction_create();
            v100 = *(&v185->isa + OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_queue);
            v101 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
            v175 = "cer.contactStoreQuery";
            v176 = v101;
            v177 = v100;
            static DispatchQoS.unspecified.getter();
            v186[0] = &_swiftEmptyArrayStorage;
            sub_100293518(&qword_100936EE0, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
            v10 = sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
            sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00, &protocol conformance descriptor for [A]);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            (*(v181 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v182);
            OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
            type metadata accessor for REMContactsProvider();
            swift_allocObject();
            REMContactsProvider.init(contactStoreCreator:queue:backgroundQueue:)();
            if (v178)
            {
              a1 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              a1 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v102 = &_swiftEmptyArrayStorage;
            if (!a1)
            {
              goto LABEL_27;
            }

            v186[0] = &_swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            if ((a1 & 0x8000000000000000) == 0)
            {
              v103 = 0;
              do
              {
                if ((v33 & 0xC000000000000001) != 0)
                {
                  v104 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v104 = *&v33->clientIdentity[8 * v103 + 16];
                }

                v105 = v104;
                ++v103;
                REMContactsProvider.name(for:)();
                Promise.errorAsNil()();

                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }

              while (a1 != v103);
              v102 = v186[0];
LABEL_27:

              v106 = Logger.logObject.getter();
              v107 = static os_log_type_t.default.getter();
              v33, v108, v109, v110, v111, v112, v113, v114;
              v115 = os_log_type_enabled(v106, v107);
              v171 = v99;
              if (v115)
              {
                v116 = swift_slowAlloc();
                v117 = swift_slowAlloc();
                v186[0] = v117;
                *v116 = 136315138;
                sub_1000060C8(0, &unk_10093C970, REMContactRepresentation_ptr);
                v118 = Array.description.getter();
                v120 = v119;
                v121 = sub_10000668C(v118, v119, v186);
                v120, v122, v123, v124, v125, v126, v127, v128;
                *(v116 + 4) = v121;
                _os_log_impl(&_mh_execute_header, v106, v107, "Resolving contact names for newlySeenContactReps {newlySeenContactReps: %s}", v116, 0xCu);
                sub_10000607C(v117);
              }

              v129 = v174;
              sub_1000F5104(&qword_10093FEF0, &qword_10079EEC8);
              v186[0] = v102;
              sub_1000F5104(&qword_10093FEF8, qword_10079EED0);
              sub_10000CB48(&qword_10093FF00, &qword_10093FEF8, qword_10079EED0, &protocol conformance descriptor for [A]);
              static Promise.all<A>(_:)();
              v102, v130, v131, v132, v133, v134, v135, v136;
              v138 = v183;
              v137 = v184;
              v139 = v179;
              (*(v184 + 16))(v179, v183, v129);
              v140 = (*(v137 + 80) + 40) & ~*(v137 + 80);
              v141 = (v180 + v140 + 7) & 0xFFFFFFFFFFFFFFF8;
              v142 = swift_allocObject();
              v143 = v173;
              *(v142 + 2) = v33;
              *(v142 + 3) = v143;
              v144 = v185;
              *(v142 + 4) = v185;
              (*(v137 + 32))(&v142[v140], v139, v129);
              *&v142[v141] = v171;
              v145 = v144;
              swift_unknownObjectRetain();
              v146 = zalgo.getter();
              dispatch thunk of Promise.then<A>(on:closure:)();
              swift_unknownObjectRelease();

              (*(v137 + 8))(v138, v129);
              return;
            }

            __break(1u);
          }

          else
          {
            v35, v36, v37, v38, v39, v40, v41, v42;
            v33, v58, v59, v60, v61, v62, v63, v64;
            if (qword_100935DC8 == -1)
            {
LABEL_11:
              v65 = type metadata accessor for Logger();
              sub_100006654(v65, qword_10093FE40);

              v66 = Logger.logObject.getter();
              v67 = static os_log_type_t.default.getter();
              a1, v68, v69, v70, v71, v72, v73, v74;
              if (!os_log_type_enabled(v66, v67))
              {
LABEL_44:

                (*(v184 + 8))(v183, v10);
                return;
              }

              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v186[0] = v76;
              *v75 = 136315138;
              sub_1000060C8(0, &unk_10093C970, REMContactRepresentation_ptr);
              v77 = Array.description.getter();
              v79 = v78;
              v80 = sub_10000668C(v77, v78, v186);
              v79, v81, v82, v83, v84, v85, v86, v87;
              *(v75 + 4) = v80;
              v88 = "DataSource returned no alarms for contact interaction. Done {contacts: %s}";
LABEL_43:
              _os_log_impl(&_mh_execute_header, v66, v67, v88, v75, 0xCu);
              sub_10000607C(v76);

              goto LABEL_44;
            }
          }

          swift_once();
          goto LABEL_11;
        }
      }

      else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }

      v33, v26, v27, v28, v29, v30, v31, v32;
      if (qword_100935DC8 != -1)
      {
        swift_once();
      }

      v151 = type metadata accessor for Logger();
      sub_100006654(v151, qword_10093FE40);

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      a1, v152, v153, v154, v155, v156, v157, v158;
      if (!os_log_type_enabled(v66, v67))
      {
        goto LABEL_44;
      }

      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v186[0] = v76;
      *v75 = 136315138;
      sub_1000060C8(0, &unk_10093C970, REMContactRepresentation_ptr);
      v159 = Array.description.getter();
      v161 = v160;
      v162 = sub_10000668C(v159, v160, v186);
      v161, v163, v164, v165, v166, v167, v168, v169;
      *(v75 + 4) = v162;
      v88 = "All contactReps interacted with are recently-checkedIn already. Not producing anything. {contactRepresentation: %s}";
      goto LABEL_43;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  if (qword_100935DC8 != -1)
  {
    swift_once();
  }

  v147 = type metadata accessor for Logger();
  sub_100006654(v147, qword_10093FE40);
  v185 = Logger.logObject.getter();
  v148 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v185, v148))
  {
    v149 = swift_slowAlloc();
    *v149 = 0;
    _os_log_impl(&_mh_execute_header, v185, v148, "didInteract.contacts is empty. Skipping", v149, 2u);
  }

  v150 = v185;
}

id sub_100291340()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeopleNotifyToken;
  if (notify_is_valid_token(*&v0[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeopleNotifyToken]))
  {
    notify_cancel(*&v0[v2]);
    *&v0[v2] = -1;
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

BOOL sub_100291494(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = v17 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_10000F61C((a2 + OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_userInteractionSessionManager), *(a2 + OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_userInteractionSessionManager + 24));
  sub_100453F50(v13, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000050A4(v7, &unk_100938850, qword_100795AE0);
    return 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    Date.timeIntervalSince(_:)();
    v16 = v15;
    (*(v9 + 8))(v12, v8);
    return v16 >= 10800.0;
  }
}

id sub_100291678()
{
  v0 = objc_allocWithZone(CNContactStore);

  return [v0 init];
}

void sub_1002916B0(_TtC7remindd19RDXPCStorePerformer **a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = *a1;
  v62[2] = a2;
  v62[3] = v8;
  v62[4] = a4;
  v62[5] = a5;
  v62[6] = a2;

  sub_10024D2B0(sub_100293610, v62, a3);
  v10 = v9;
  v8, v11, v12, v13, v14, v15, v16, v17;
  a2, v18, v19, v20, v21, v22, v23, v24;
  if (qword_100935DC8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100006654(v25, qword_10093FE40);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v36 = 0;
    v37 = 0;
    *v28 = 134218240;
    v38 = *(v10 + 16);
    while (2)
    {
      v39 = 40 * v37 + 65;
      do
      {
        if (v38 == v37)
        {
          *(v28 + 4) = v36;
          *(v28 + 12) = 2048;
          *(v28 + 14) = v38;
          v50 = v28;
          v10, v29, v30, v31, v32, v33, v34, v35;
          _os_log_impl(&_mh_execute_header, v26, v27, "Producing alarms for contact interaction {activeCount: %ld, totalCount: %ld}", v50, 0x16u);

          goto LABEL_14;
        }

        if (v37 >= v38)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_18;
        }

        v41 = *(v10 + v39);
        ++v37;
        v39 += 40;
      }

      while ((v41 & 1) != 0);
      v37 = v40;
      if (!__OFADD__(v36++, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
  }

  v10, v43, v44, v45, v46, v47, v48, v49;
LABEL_14:
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100292644(a4, v10, Strong);
  swift_unknownObjectRelease();
  v10, v52, v53, v54, v55, v56, v57, v58;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "os_transaction RELEASE {name: com.apple.remindd.RDContactInteractionAlarmProducer.contactStoreQuery}", v61, 2u);
  }
}

void sub_100291938(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _TtC7remindd19RDXPCStorePerformer *a6@<X5>, void *a7@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  if (a2 >> 62)
  {
    goto LABEL_24;
  }

  v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v58 = v9;
  v61 = v8;
  if (v10)
  {
    v11 = 0;
    v8 = (a3 + 40);
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          v10 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        v12 = *(a2 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = *(a3 + 16);
      if (v11 == v14)
      {

        break;
      }

      if (v11 >= v14)
      {
        goto LABEL_23;
      }

      v16 = *(v8 - 1);
      v15 = *v8;

      v17 = [v61 contactHandles];
      if (v17)
      {
        v9 = v17;
        v25 = [v17 matchesContactRepresentation:v13];

        if (v25)
        {
          sub_10000F61C((a4 + OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_userInteractionSessionManager), *(a4 + OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_userInteractionSessionManager + 24));
          v52 = v58;
          sub_100453970(v13, a5);

          v53 = 0;
          v54 = a7;
          *a7 = v61;
          a7[1] = v58;
          a7[2] = v16;
          a7[3] = v15;
          goto LABEL_21;
        }
      }

      ++v11;
      v15, v18, v19, v20, v21, v22, v23, v24;

      v8 += 2;
    }

    while (v10 != v11);
  }

  if (qword_100935DC8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100006654(v26, qword_10093FE40);
  v27 = v61;

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.fault.getter();
  a6, v30, v31, v32, v33, v34, v35, v36;

  if (os_log_type_enabled(v28, v29))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v62 = v39;
    *v37 = 138412546;
    v40 = [v27 objectID];
    *(v37 + 4) = v40;
    *v38 = v40;
    *(v37 + 12) = 2080;
    sub_1000060C8(0, &unk_10093C970, REMContactRepresentation_ptr);
    v41 = Array.description.getter();
    v43 = v42;
    v44 = sub_10000668C(v41, v42, &v62);
    v43, v45, v46, v47, v48, v49, v50, v51;
    *(v37 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v28, v29, "dataSource returned alarms that don't match any input contactReps {reminderID: %@, newlySeenContactReps: %s}", v37, 0x16u);
    sub_1000050A4(v38, &unk_100938E70, &unk_100797230);

    sub_10000607C(v39);
  }

  v54 = a7;
  *a7 = v27;
  a7[1] = v58;
  v53 = 1;
  a7[2] = 0;
  a7[3] = 0;
LABEL_21:
  v54[32] = 3;
  v54[33] = v53;
  v54[34] = 0;
}

void sub_100291CD0(char a1)
{
  v2 = OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeople;
  if (v1[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeople] == (a1 & 1))
  {
    return;
  }

  v3 = v1;
  if (qword_100935DC8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_10093FE40);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = a1 & 1;
    *(v9 + 8) = 1024;
    *(v9 + 10) = v1[v2];

    _os_log_impl(&_mh_execute_header, v7, v8, "shouldNotifyOfInteractionWithPeople value changed. Updating state {previousValue: %{BOOL}d, value: %{BOOL}d}", v9, 0xEu);
  }

  else
  {

    v7 = v6;
  }

  v10 = OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeopleNotifyToken;
  if (notify_is_valid_token(*(&v6->isa + OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeopleNotifyToken)))
  {
    v11 = notify_set_state(*(&v6->isa + v10), v1[v2]);
    v12 = notify_post(_REMStoreShouldNotifyOfInteractionWithPeopleNotificationName);
    if (!(v11 | v12))
    {
      return;
    }

    v16 = v12;
    v17 = v6;
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(oslog, v18))
    {

      v20 = v17;
      goto LABEL_17;
    }

    v19 = swift_slowAlloc();
    *v19 = 67109632;
    *(v19 + 4) = v11;
    *(v19 + 8) = 1024;
    *(v19 + 10) = v16;
    *(v19 + 14) = 1024;
    *(v19 + 16) = v3[v2];

    _os_log_impl(&_mh_execute_header, oslog, v18, "Failed to update or post update to _REMStoreShouldNotifyOfInteractionWithPeopleNotificationName {notifySetStateStatus: %u,  notifyPostStatus: %u, value: %{BOOL}d}", v19, 0x14u);
  }

  else
  {
    v13 = v6;
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v14))
    {

      v20 = v13;
      goto LABEL_17;
    }

    v15 = swift_slowAlloc();
    *v15 = 67109376;
    *(v15 + 4) = *(&v6->isa + v10);
    *(v15 + 8) = 1024;
    *(v15 + 10) = v3[v2];

    _os_log_impl(&_mh_execute_header, oslog, v14, "shouldNotifyOfInteractionWithPeopleNotifyToken is invalid. Failed to update state {token: %d, value: %{BOOL}d}", v15, 0xEu);
  }

  v20 = oslog;
LABEL_17:
}

void sub_100292020()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_queue];
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    if (qword_100935DC8 == -1)
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
  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_10093FE40);
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 136315138;
    v15 = [v10 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_10000668C(v16, v18, &v39);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Starting people interaction alarm producer {producer: %s}", v13, 0xCu);
    sub_10000607C(v14);
  }

  sub_10000F61C(&v10[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_dataSource], *&v10[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_dataSource + 24]);

  v28 = sub_100412154(v27);

  v29 = *(v28 + 16);
  v28, v30, v31, v32, v33, v34, v35, v36;
  v37 = v10[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeople];
  v10[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeople] = v29 != 0;
  sub_100291CD0(v37);
}

uint64_t sub_1002922DC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_queue];
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v10 = &v0[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_dataSource];
    sub_10000F61C(&v0[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_dataSource], *&v0[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_dataSource + 24]);

    v12 = sub_100412154(v11);

    v13 = *(v12 + 16);
    v12, v14, v15, v16, v17, v18, v19, v20;
    v21 = v0[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeople];
    v0[OBJC_IVAR____TtC7remindd33RDContactInteractionAlarmProducer_shouldNotifyOfInteractionWithPeople] = v13 != 0;
    sub_100291CD0(v21);
    sub_10000F61C(v10, v10[3]);

    v23 = sub_100412154(v22);

    v31 = *(v23 + 16);
    if (v31)
    {
      v58 = v0;
      v59 = &_swiftEmptyArrayStorage;
      sub_100253968(0, v31, 0);
      v32 = v59;
      v57 = v23;
      v33 = (v23 + 40);
      do
      {
        v34 = *(v33 - 1);
        v35 = *v33;
        v59 = v32;
        v37 = *v32->clientIdentity;
        v36 = *&v32->clientIdentity[8];
        v38 = v34;
        v39 = v35;
        if (v37 >= v36 >> 1)
        {
          sub_100253968((v36 > 1), v37 + 1, 1);
          v32 = v59;
        }

        *v32->clientIdentity = v37 + 1;
        v47 = v32 + 40 * v37;
        *(v47 + 4) = v38;
        *(v47 + 5) = v35;
        *(v47 + 6) = 0;
        *(v47 + 7) = 0;
        *(v47 + 32) = 259;
        v47[66] = 0;
        v33 += 3;
        --v31;
      }

      while (v31);
      v57, v40, v41, v42, v43, v44, v45, v46;
      v0 = v58;
    }

    else
    {
      v23, v24, v25, v26, v27, v28, v29, v30;
      v32 = &_swiftEmptyArrayStorage;
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_100292644(v0, v32, Strong);
    v32, v49, v50, v51, v52, v53, v54, v55;
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002925EC(uint64_t a1, uint64_t a2)
{
  result = sub_100293518(&qword_10093FEB0, a2, type metadata accessor for RDContactInteractionAlarmProducer, &protocol conformance descriptor for NSObject);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100292644(void *a1, uint64_t a2, uint64_t a3)
{
  v58[3] = type metadata accessor for RDContactInteractionAlarmProducer();
  v58[4] = sub_100293518(&qword_10093FEB8, v6, type metadata accessor for RDContactInteractionAlarmProducer, &unk_10079EEA4);
  v58[0] = a1;
  v7 = qword_100936828;
  v8 = a1;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_100951780);
  sub_10000A87C(v58, v55);
  swift_bridgeObjectRetain_n();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v54 = v13;
    *v12 = 136315394;
    v14 = [*sub_10000F61C(v55 v56)];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    sub_10000607C(v55);
    v18 = sub_10000668C(v15, v17, &v54);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v12 + 4) = v18;
    *(v12 + 12) = 2048;
    v26 = *(a2 + 16);
    a2, v27, v28, v29, v30, v31, v32, v33;
    *(v12 + 14) = v26;
    a2, v34, v35, v36, v37, v38, v39, v40;
    _os_log_impl(&_mh_execute_header, v10, v11, "Producer did produce alarms {producer: %s, alarms.count: %ld}", v12, 0x16u);
    sub_10000607C(v13);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_10000607C(v55);
  }

  v41 = *(a3 + 24);
  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = v41 + 32;

    do
    {
      sub_10000A87C(v43, v55);
      v44 = v56;
      v45 = v57;
      sub_10000F61C(v55, v56);
      (*(v45 + 8))(a2, v58, v44, v45);
      sub_10000607C(v55);
      v43 += 40;
      --v42;
    }

    while (v42);
    v41, v46, v47, v48, v49, v50, v51, v52;
  }

  return sub_10000607C(v58);
}

uint64_t sub_1002928F8(void *a1, uint64_t a2, uint64_t a3)
{
  v57[3] = type metadata accessor for RDTimeAlarmProducer();
  v57[4] = sub_100293518(&qword_10093FEC0, 255, type metadata accessor for RDTimeAlarmProducer, &unk_1007A6A04);
  v57[0] = a1;
  v6 = qword_100936828;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100951780);
  sub_10000A87C(v57, v54);
  swift_bridgeObjectRetain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v53 = v12;
    *v11 = 136315394;
    v13 = [*sub_10000F61C(v54 v55)];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    sub_10000607C(v54);
    v17 = sub_10000668C(v14, v16, &v53);
    v16, v18, v19, v20, v21, v22, v23, v24;
    *(v11 + 4) = v17;
    *(v11 + 12) = 2048;
    v25 = *(a2 + 16);
    a2, v26, v27, v28, v29, v30, v31, v32;
    *(v11 + 14) = v25;
    a2, v33, v34, v35, v36, v37, v38, v39;
    _os_log_impl(&_mh_execute_header, v9, v10, "Producer did produce alarms {producer: %s, alarms.count: %ld}", v11, 0x16u);
    sub_10000607C(v12);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_10000607C(v54);
  }

  v40 = *(a3 + 24);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = v40 + 32;

    do
    {
      sub_10000A87C(v42, v54);
      v43 = v55;
      v44 = v56;
      sub_10000F61C(v54, v55);
      (*(v44 + 8))(a2, v57, v43, v44);
      sub_10000607C(v54);
      v42 += 40;
      --v41;
    }

    while (v41);
    v40, v45, v46, v47, v48, v49, v50, v51;
  }

  return sub_10000607C(v57);
}

uint64_t sub_100292BB4(void *a1, uint64_t a2, uint64_t a3)
{
  v57[3] = type metadata accessor for RDDueDateDeltaAlarmProducer();
  v57[4] = sub_100293518(&qword_10093FEC8, 255, type metadata accessor for RDDueDateDeltaAlarmProducer, &unk_1007ACAAC);
  v57[0] = a1;
  v6 = qword_100936828;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100951780);
  sub_10000A87C(v57, v54);
  swift_bridgeObjectRetain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v53 = v12;
    *v11 = 136315394;
    v13 = [*sub_10000F61C(v54 v55)];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    sub_10000607C(v54);
    v17 = sub_10000668C(v14, v16, &v53);
    v16, v18, v19, v20, v21, v22, v23, v24;
    *(v11 + 4) = v17;
    *(v11 + 12) = 2048;
    v25 = *(a2 + 16);
    a2, v26, v27, v28, v29, v30, v31, v32;
    *(v11 + 14) = v25;
    a2, v33, v34, v35, v36, v37, v38, v39;
    _os_log_impl(&_mh_execute_header, v9, v10, "Producer did produce alarms {producer: %s, alarms.count: %ld}", v11, 0x16u);
    sub_10000607C(v12);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_10000607C(v54);
  }

  v40 = *(a3 + 24);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = v40 + 32;

    do
    {
      sub_10000A87C(v42, v54);
      v43 = v55;
      v44 = v56;
      sub_10000F61C(v54, v55);
      (*(v44 + 8))(a2, v57, v43, v44);
      sub_10000607C(v54);
      v42 += 40;
      --v41;
    }

    while (v41);
    v40, v45, v46, v47, v48, v49, v50, v51;
  }

  return sub_10000607C(v57);
}

uint64_t sub_100292E70(void *a1, uint64_t a2, uint64_t a3)
{
  v57[3] = type metadata accessor for RDVehicleAlarmProducer();
  v57[4] = sub_100293518(&qword_10093FED0, 255, type metadata accessor for RDVehicleAlarmProducer, &unk_1007AE798);
  v57[0] = a1;
  v6 = qword_100936828;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100951780);
  sub_10000A87C(v57, v54);
  swift_bridgeObjectRetain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v53 = v12;
    *v11 = 136315394;
    v13 = [*sub_10000F61C(v54 v55)];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    sub_10000607C(v54);
    v17 = sub_10000668C(v14, v16, &v53);
    v16, v18, v19, v20, v21, v22, v23, v24;
    *(v11 + 4) = v17;
    *(v11 + 12) = 2048;
    v25 = *(a2 + 16);
    a2, v26, v27, v28, v29, v30, v31, v32;
    *(v11 + 14) = v25;
    a2, v33, v34, v35, v36, v37, v38, v39;
    _os_log_impl(&_mh_execute_header, v9, v10, "Producer did produce alarms {producer: %s, alarms.count: %ld}", v11, 0x16u);
    sub_10000607C(v12);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_10000607C(v54);
  }

  v40 = *(a3 + 24);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = v40 + 32;

    do
    {
      sub_10000A87C(v42, v54);
      v43 = v55;
      v44 = v56;
      sub_10000F61C(v54, v55);
      (*(v44 + 8))(a2, v57, v43, v44);
      sub_10000607C(v54);
      v42 += 40;
      --v41;
    }

    while (v41);
    v40, v45, v46, v47, v48, v49, v50, v51;
  }

  return sub_10000607C(v57);
}

uint64_t sub_10029312C(void *a1, uint64_t a2, uint64_t a3)
{
  v57[3] = type metadata accessor for RDLocationAlarmProducer();
  v57[4] = sub_100293518(&qword_10093FED8, 255, type metadata accessor for RDLocationAlarmProducer, &unk_1007B2BE8);
  v57[0] = a1;
  v6 = qword_100936828;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_100951780);
  sub_10000A87C(v57, v54);
  swift_bridgeObjectRetain_n();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v53 = v12;
    *v11 = 136315394;
    v13 = [*sub_10000F61C(v54 v55)];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    sub_10000607C(v54);
    v17 = sub_10000668C(v14, v16, &v53);
    v16, v18, v19, v20, v21, v22, v23, v24;
    *(v11 + 4) = v17;
    *(v11 + 12) = 2048;
    v25 = *(a2 + 16);
    a2, v26, v27, v28, v29, v30, v31, v32;
    *(v11 + 14) = v25;
    a2, v33, v34, v35, v36, v37, v38, v39;
    _os_log_impl(&_mh_execute_header, v9, v10, "Producer did produce alarms {producer: %s, alarms.count: %ld}", v11, 0x16u);
    sub_10000607C(v12);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_10000607C(v54);
  }

  v40 = *(a3 + 24);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = v40 + 32;

    do
    {
      sub_10000A87C(v42, v54);
      v43 = v55;
      v44 = v56;
      sub_10000F61C(v54, v55);
      (*(v44 + 8))(a2, v57, v43, v44);
      sub_10000607C(v54);
      v42 += 40;
      --v41;
    }

    while (v41);
    v40, v45, v46, v47, v48, v49, v50, v51;
  }

  return sub_10000607C(v57);
}

void sub_100293410()
{
  if (qword_100935DC8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_10093FE40);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "os_transaction RELEASE {name: com.apple.remindd.RDContactInteractionAlarmProducer.didReceiveContactEvent", v2, 2u);
  }
}

uint64_t sub_100293518(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

_TtC7remindd19RDXPCStorePerformer *sub_100293638(uint64_t a1)
{
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v42 = &_swiftEmptyArrayStorage;
    sub_100010D04(0, v2 & ~(v2 >> 63), 0);
    v36 = &_swiftEmptyArrayStorage;
    if (v35)
    {
      v4 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v4 = _HashTable.startBucket.getter();
      v5 = *(a1 + 36);
    }

    v39 = v4;
    v40 = v5;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_36;
        }

        v15 = v39;
        v14 = v40;
        v16 = v41;
        sub_100030F8C(v39, v40, v41, a1);
        v17 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v18)
        {
          goto LABEL_43;
        }

        v19 = v17;
        v20 = v18;
        v38 = &type metadata for String;

        *&v37 = v19;
        *(&v37 + 1) = v20;
        v21 = v36;
        v42 = v36;
        v23 = *v36->clientIdentity;
        v22 = *&v36->clientIdentity[8];
        if (v23 >= v22 >> 1)
        {
          sub_100010D04((v22 > 1), v23 + 1, 1);
          v21 = v42;
        }

        *v21->clientIdentity = v23 + 1;
        v36 = v21;
        sub_100005EE0(&v37, &v21->clientIdentity[32 * v23 + 16]);
        if (v35)
        {
          if (!v16)
          {
            goto LABEL_41;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_1000F5104(&qword_10093FF08, qword_10079EF20);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(&v37, 0);
          if (v6 == v2)
          {
LABEL_33:
            sub_100010E34(v39, v40, v41, v8, v9, v10, v11, v12);
            return v36;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_42;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v24 = (1 << *(a1 + 32));
          if (v15 >= v24)
          {
            goto LABEL_37;
          }

          v25 = v15 >> 6;
          v26 = *(a1 + 56 + 8 * (v15 >> 6));
          if (((v26 >> v15) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(a1 + 36) != v14)
          {
            goto LABEL_39;
          }

          v27 = v26 & (-2 << (v15 & 0x3F));
          if (v27)
          {
            v24 = (__clz(__rbit64(v27)) | v15 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v28 = v25 << 6;
            v29 = v25 + 1;
            v30 = (a1 + 64 + 8 * v25);
            while (v29 < &v24->storeProvider[1] >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                sub_100010E34(v15, v14, 0, v8, v9, v10, v11, v12);
                v24 = (__clz(__rbit64(v31)) + v28);
                goto LABEL_32;
              }
            }

            sub_100010E34(v15, v14, 0, v8, v9, v10, v11, v12);
          }

LABEL_32:
          v33 = *(a1 + 36);
          v39 = v24;
          v40 = v33;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_33;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    *&v37 = 0;
    *(&v37 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v34._object = 0x80000001007EC120;
    v34._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v34);
    sub_1000F5104(&qword_100943980, &unk_10079EF10);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100293A54@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 accountID];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_100293AF8(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_10018E470(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setAccountID:isa];
}

uint64_t sub_100293C24()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007953F0;
  result = swift_getKeyPath();
  *(v0 + 32) = result;
  qword_100974D10 = v0;
  return result;
}

unint64_t sub_100293C88()
{
  result = qword_10093F430;
  if (!qword_10093F430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10093F430);
  }

  return result;
}

void sub_100293CE0(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v43 = a2;
  v45 = a3;
  v41 = a4;
  v5 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v40 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v14);
  v16 = &v34 - v15;
  v17 = type metadata accessor for REMRemindersListDataView.Diff();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v23);
  v25 = &v34 - v24;
  v44 = a1;
  v26 = v46;
  v27 = sub_100294100(a1);
  if (!v26)
  {
    v35 = v21;
    v36 = v18;
    v37 = v12;
    v38 = v16;
    v39 = v17;
    v46 = v27;
    v28 = [v42 fetchResultTokenToDiffAgainst];
    v29 = v25;
    sub_100534D44(v28, v25);

    v45 = 0;
    v30 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
    v31 = v38;
    REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
    v32 = v40;
    (*(v40 + 16))(v37, v31, v9);
    v33 = v36;
    (*(v36 + 16))(v35, v29, v39);
    sub_10029443C(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
    sub_10029443C(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel, &protocol conformance descriptor for REMRemindersListDataView.FlatModel);
    REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
    (*(v32 + 8))(v31, v9);
    (*(v33 + 8))(v29, v39);
  }
}

uint64_t sub_1002940A8(uint64_t a1)
{
  result = sub_10029443C(&unk_10093FF30, &type metadata accessor for REMRemindersListDataView.DEBUG_PhantomRemindersInvocation, &protocol conformance descriptor for REMRemindersListDataView.DEBUG_PhantomRemindersInvocation);
  *(a1 + 8) = result;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_100294100(uint64_t a1)
{
  v23 = a1;
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v1 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v2);
  v4 = &Subtasks - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &Subtasks - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v10, v11);
  v13 = &Subtasks - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s10PredicatesOMa(0);
  __chkstk_darwin(v14, v14);
  v16 = &Subtasks - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v17 = sub_100043AA8();
  sub_1001A4F3C(v16, _s10PredicatesOMa);
  v18 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v19 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v19 - 8) + 104))(v13, v18, v19);
  v20 = Subtasks;
  swift_storeEnumTagMultiPayload();
  (*(v6 + 104))(v9, enum case for REMRemindersListDataView.ShowCompleted.on(_:), v5);
  (*(v1 + 104))(v4, enum case for REMRemindersListDataView.FetchSubtasks.off(_:), v20);
  v24 = sub_100536D54(v23, v17, v13, v9, v4, &_swiftEmptyArrayStorage, 0);

  (*(v1 + 8))(v4, v20);
  (*(v6 + 8))(v9, v5);
  sub_1001A4F3C(v13, _s9UtilitiesO12SortingStyleOMa);
  return v24;
}

uint64_t sub_10029443C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100294484()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093FF40);
  v1 = sub_100006654(v0, qword_10093FF40);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10029454C(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v9 = *a2;
  if (qword_100935DD8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10093FF40);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v11, v12, "RDFirstUnlockManager: Received hasUnlockedSinceBoot published value {hasUnlockedSinceBoot: %{BOOL}d}", v13, 8u);
  }

  sub_10000F61C(a3, a3[3]);
  type metadata accessor for _MobileKeybagStateProvider();
  v14 = sub_1003478A4();
  if (v9 != (v14 & 1))
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109376;
      *(v17 + 4) = v14 & 1;
      *(v17 + 8) = 1024;
      *(v17 + 10) = v9;
    }
  }

  if (v14)
  {
    if (*(a1 + 24))
    {

      AnyCancellable.cancel()();
    }

    *(a1 + 24) = 0;

    if (!*(a4 + 24))
    {
      if (qword_100935FC8 != -1)
      {
        swift_once();
      }

      v24 = xmmword_10079EFA0;
      v26 = 0;
      v27[0] = 0;
      v25 = 0;
      *(v27 + 6) = 0;
      sub_1000081D8(&v24, 0x6E755F7473726966, 0xEC0000006B636F6CLL);
    }

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "RDFirstUnlockManager: Received first unlock event. Executing unlockHandler.", v22, 2u);
    }

    a5(1);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
    }
  }
}

uint64_t sub_100294910()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100294974(uint64_t a1, char *a2, void (*a3)(uint64_t, char *), uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  a3(a1, &v6);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

uint64_t sub_100294A20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v71 = a3;
  v72 = a1;
  v12 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v12 - 8, v13);
  v66 = &v58 - v14;
  v65 = sub_1000F5104(&qword_100940038, &qword_10079EFE0);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65, v15);
  v17 = &v58 - v16;
  v18 = sub_1000F5104(&qword_100940040, &unk_10079EFE8);
  v69 = *(v18 - 8);
  v70 = v18;
  __chkstk_darwin(v18, v19);
  v68 = &v58 - v20;
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v21 - 8);
  __chkstk_darwin(v21, v22);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62, v25);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_allocObject();
  v59 = a4;
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  type metadata accessor for RDKeybagStateProviderFactory();
  swift_unknownObjectRetain();
  v60 = a5;

  v67 = a2;
  sub_10034672C(a2, v80);
  sub_10000F61C(v80, v81);
  v29 = type metadata accessor for _MobileKeybagStateProvider();
  if (sub_1003478A4())
  {
    if (qword_100935DD8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006654(v30, qword_10093FF40);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "RDFirstUnlockManager: Device is in after first unlock state in the 1st check. Executing unlockHandler.", v33, 2u);
    }

    v34 = swift_allocObject();
    *(v34 + 16) = sub_100295558;
    *(v34 + 24) = v28;
    v76 = sub_100295658;
    v77 = v34;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v74 = sub_100019200;
    v75 = &unk_1008EC9B0;
    v35 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    *&v78[0] = &_swiftEmptyArrayStorage;
    sub_100295684(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);
    (*(v63 + 1))(v24, v21);
    (*(v61 + 8))(v27, v62);

LABEL_18:
    v56 = 2;
    goto LABEL_19;
  }

  if (qword_100935DD8 != -1)
  {
    swift_once();
  }

  v63 = sub_1003478A4;
  v36 = type metadata accessor for Logger();
  v62 = sub_100006654(v36, qword_10093FF40);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "RDFirstUnlockManager: Device is in before first unlock state in the 1st check. Registering with RDKeybagStateProvider.hasUnlockedSinceBootPublisher.", v39, 2u);
  }

  v40 = v71;
  v41 = *(v71 + 16);
  sub_10000F61C(v80, v81);
  *&aBlock = sub_100347814();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = 1;

  sub_1000F5104(&qword_100940048, &qword_10079EFF8);
  sub_10000CB48(&unk_100940050, &qword_100940048, &qword_10079EFF8, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  *&aBlock = v72;
  v43 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v44 = v66;
  (*(*(v43 - 8) + 56))(v66, 1, 1, v43);
  sub_100007F54();
  sub_10000CB48(&qword_100940060, &qword_100940038, &qword_10079EFE0, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  sub_100295684(&qword_10093CD40, sub_100007F54, &protocol conformance descriptor for OS_dispatch_queue);
  v45 = v68;
  v72 = v29;
  v46 = v65;
  Publisher.receive<A>(on:options:)();
  sub_100295564(v44);
  v47 = v40;
  (*(v64 + 8))(v17, v46);
  sub_10000A87C(v80, &aBlock);
  sub_1002955CC(v67, v78);
  v48 = swift_allocObject();
  sub_100054B6C(&aBlock, v48 + 16);
  v49 = v78[1];
  *(v48 + 56) = v78[0];
  *(v48 + 72) = v49;
  *(v48 + 88) = v79;
  *(v48 + 96) = sub_100295558;
  *(v48 + 104) = v28;
  v50 = swift_allocObject();
  v50[2] = sub_10029563C;
  v50[3] = v48;
  v50[4] = v41;
  type metadata accessor for RDFirstUnlockManager();
  sub_10000CB48(&qword_100940068, &qword_100940040, &unk_10079EFE8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v51 = v70;
  v52 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  (*(v69 + 8))(v45, v51);
  *(v47 + 24) = v52;

  sub_10000F61C(v80, v81);
  sub_10034739C();
  sub_10000F61C(v80, v81);
  if ((v63)(v72))
  {
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "RDFirstUnlockManager: Device has transitioned to after first unlock state in the 2nd check. Executing unlockHandler and ignoring notifications.", v55, 2u);
    }

    if (*(v47 + 24))
    {

      AnyCancellable.cancel()();
    }

    *(v47 + 24) = 0;

    sub_1000FBC64(1, v59);
    goto LABEL_18;
  }

  v56 = 0;
LABEL_19:
  sub_10000607C(v80);

  return v56;
}

uint64_t sub_100295564(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002955CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100936E80, qword_10079F000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100295684(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002956CC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100940070);
  v1 = sub_100006654(v0, qword_100940070);
  if (qword_1009364A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975128);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100295794(void *a1)
{
  v118 = a1;
  v2 = *v1;
  v3 = type metadata accessor for Date();
  v117 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v114 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v109 - v8;
  __chkstk_darwin(v10, v11);
  v13 = &v109 - v12;
  if (qword_100935DE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100940070);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v115 = v9;
  v113 = v2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v120[0] = v19;
    *v18 = 136315138;
    *&v121 = v2;
    swift_getMetatypeMetadata();
    v20 = String.init<A>(describing:)();
    v22 = v21;
    v23 = v3;
    v24 = sub_10000668C(v20, v21, v120);
    v22, v25, v26, v27, v28, v29, v30, v31;
    *(v18 + 4) = v24;
    v3 = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s: Start execution", v18, 0xCu);
    sub_10000607C(v19);
  }

  Date.init()();
  type metadata accessor for REMCDPublicTemplate();
  v32 = [swift_getObjCClassFromMetadata() fetchRequest];
  v33 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v32];
  [v33 setResultType:1];
  v119 = 0;
  v34 = [v118 executeRequest:v33 error:&v119];
  v35 = v119;
  if (v34)
  {
    v36 = v34;
    *(&v122 + 1) = sub_1000060C8(0, &qword_100939EC0, NSPersistentStoreResult_ptr);
    *&v121 = v36;
    sub_1000060C8(0, &qword_100939EC8, NSBatchDeleteResult_ptr);
    v37 = v35;
    v38 = v116;
    throwingCast<A>(_:as:failureMessage:)();
    if (v38)
    {

      v117[1](v13, v3);
      return sub_10000607C(&v121);
    }

    else
    {
      sub_10000607C(&v121);
      v41 = v120[0];
      if ([v120[0] result])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100005EE0(v120, &v121);
      }

      else
      {
        v121 = 0u;
        v122 = 0u;
      }

      v42 = sub_1000F5104(&qword_100937028, &qword_100791C10);
      throwingCast<A>(_:as:failureMessage:)();
      v112 = v41;
      sub_1000050A4(&v121, &qword_100939ED0, &qword_100791B10);
      v43 = v119;
      v111 = objc_opt_self();
      sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      *&v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v121 + 1) = v45;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = v42;
      v110 = v43;
      *(inited + 72) = v43;

      v46 = sub_10038ED74(inited);
      v116 = v3;
      v47 = v46;
      swift_setDeallocating();
      sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v47, v49, v50, v51, v52, v53, v54, v55;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1007953F0;
      v57 = v118;
      *(v56 + 32) = v118;
      sub_1000060C8(0, &unk_100940130, NSManagedObjectContext_ptr);
      v58 = v57;
      v59 = Array._bridgeToObjectiveC()().super.isa;
      v60 = v56;
      v61 = v110;
      v60, v62, v63, v64, v65, v66, v67, v68;
      [v111 mergeChangesFromRemoteContextSave:isa intoContexts:v59];

      v69 = v116;
      v70 = v117;
      v71 = v115;
      (v117[2])(v115, v13, v116);

      v72 = Logger.logObject.getter();
      LODWORD(v118) = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v72, v118))
      {
        v111 = v72;
        v73 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v120[0] = v109;
        *v73 = 136315650;
        *&v121 = v113;
        swift_getMetatypeMetadata();
        v74 = String.init<A>(describing:)();
        v75 = v61;
        v77 = v76;
        v78 = sub_10000668C(v74, v76, v120);
        v77, v79, v80, v81, v82, v83, v84, v85;
        *(v73 + 4) = v78;
        *(v73 + 12) = 2048;
        if (v75 >> 62)
        {
          v93 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v93 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v75, v86, v87, v88, v89, v90, v91, v92;
        *(v73 + 14) = v93;
        v75, v94, v95, v96, v97, v98, v99, v100;
        *(v73 + 22) = 2048;
        v101 = v114;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v103 = v102;
        v104 = v117[1];
        v117 = v104;
        v105 = v101;
        v106 = v116;
        (v104)(v105, v116);
        (v104)(v71, v106);
        *(v73 + 24) = v103;
        v107 = v111;
        _os_log_impl(&_mh_execute_header, v111, v118, "%s: Finished execution {deletionCount: %ld, elapsedSeconds: %f}", v73, 0x20u);
        sub_10000607C(v109);

        return (v117)(v13, v106);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v108 = v70[1];
        v108(v71, v69);
        return (v108)(v13, v69);
      }
    }
  }

  else
  {
    v40 = v119;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (v117[1])(v13, v3);
  }
}

uint64_t sub_1002960BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10029613C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100940140);
  v1 = sub_100006654(v0, qword_100940140);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10029621C()
{
  sub_1002962C4();

  sub_1000536E0(v0 + 32);
  sub_10000607C((v0 + 48));
  sub_10000607C((v0 + 88));

  sub_1000536E0(v0 + 136);

  swift_unknownObjectRelease();
  sub_10000CC4C(*(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208) | (*(v0 + 212) << 32), v1, v2);
  *(v0 + 224), v3, v4, v5, v6, v7, v8, v9;
  sub_10000607C((v0 + 232));
  sub_1000050A4(v0 + 272, &unk_100940320, qword_10079F2F0);
  return v0;
}

void sub_1002962C4()
{
  if (*(v0 + 152))
  {
    *(v0 + 152) = 0;

    if (qword_100935DE8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006654(v1, qword_100940140);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "RDICCloudExtraneousAlarmsCollector: stopped.", v3, 2u);
    }
  }
}

uint64_t sub_1002963CC()
{
  sub_10029621C();

  return swift_deallocClassInstance();
}

void sub_100296400()
{
  v0 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v106 = *(v0 - 8);
  v107 = v0;
  __chkstk_darwin(v0, v1);
  v105 = v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v3 - 8, v4);
  v108 = (v86 - v5);
  v6 = type metadata accessor for NSNotificationCenter.Publisher();
  v101 = *(v6 - 8);
  v102 = v6;
  __chkstk_darwin(v6, v7);
  v100 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_100936ED0, &unk_100791AF0);
  v103 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v12 = v86 - v11;
  v13 = sub_1000F5104(&qword_100940378, &qword_10079FBF0);
  v104 = *(v13 - 8);
  __chkstk_darwin(v13, v14);
  v16 = v86 - v15;
  v17 = sub_1000F5104(&qword_100940380, &qword_10079FBF8);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17, v19);
  v21 = v86 - v20;
  v22 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22, v24);
  v26 = v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v27, v28);
  if (!v109[19])
  {
    v87 = v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v88 = v31;
    v89 = v26;
    v90 = v29;
    v91 = v23;
    v92 = v22;
    v94 = v12;
    v93 = v9;
    v95 = v16;
    v96 = v13;
    v97 = v21;
    v98 = v18;
    v99 = v17;
    v32 = v109;
    swift_beginAccess();
    v33 = v32[14];
    v34 = v32[15];
    sub_10000F61C(v32 + 11, v33);
    v35 = (*(v34 + 8))(v33, v34);
    swift_endAccess();
    v36 = v108;
    if ((v35 & 1) == 0)
    {
      if (qword_100935DE8 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100006654(v37, qword_100940140);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      v40 = os_log_type_enabled(v38, v39);
      v41 = v92;
      v42 = v91;
      if (v40)
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "os_transaction INIT {name: com.apple.remindd.RDICCloudExtraneousAlarmsCollector.runHandlerOnInit}", v43, 2u);
      }

      v44 = os_transaction_create();
      v86[1] = v32[3];
      v45 = swift_allocObject();
      swift_weakInit();
      v46 = swift_allocObject();
      *(v46 + 16) = v45;
      *(v46 + 24) = v44;
      aBlock[4] = sub_10029EB3C;
      aBlock[5] = v46;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100019200;
      aBlock[3] = &unk_1008ECB68;
      v47 = _Block_copy(aBlock);

      v86[2] = v44;
      swift_unknownObjectRetain();
      v48 = v87;
      static DispatchQoS.unspecified.getter();
      v110 = &_swiftEmptyArrayStorage;
      sub_100054604(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000F5104(&unk_100939E50, &unk_100791AD0);
      sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
      v49 = v89;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v47);
      (*(v42 + 8))(v49, v41);
      (*(v88 + 8))(v48, v90);

      if (swift_unknownObjectWeakLoadStrong())
      {
        v50 = v32[18];
        ObjectType = swift_getObjectType();
        (*(v50 + 16))(ObjectType, v50);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      v36 = v108;
    }

    sub_10029E464(0x20000000000001uLL);
    v52 = v32[9];
    v53 = v32[10];
    sub_10000F61C(v32 + 6, v52);
    (*(v53 + 16))(v52, v53);
    if (qword_100935DF0 != -1)
    {
      swift_once();
    }

    v54 = v100;
    NSNotificationCenter.publisher(for:object:)();
    aBlock[0] = v32[3];
    v55 = aBlock[0];
    v56 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v108 = *(*(v56 - 8) + 56);
    v108(v36, 1, 1, v56);
    v92 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    sub_100054604(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
    sub_100006CA4();
    v57 = v55;
    v58 = v94;
    v59 = v102;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v36, &qword_100939980, &unk_10079ADA0);
    (*(v101 + 8))(v54, v59);
    swift_allocObject();
    swift_weakInit();
    sub_10000CB48(&qword_100936F10, &unk_100936ED0, &unk_100791AF0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v60 = v95;
    v61 = v93;
    Publisher.filter(_:)();

    (*(v103 + 8))(v58, v61);
    v62 = v105;
    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    aBlock[0] = v57;
    v108(v36, 1, 1, v56);
    sub_10000CB48(&qword_100940388, &qword_100940378, &qword_10079FBF0, &protocol conformance descriptor for Publishers.Filter<A>);
    v63 = v97;
    v64 = v96;
    Publisher.debounce<A>(for:scheduler:options:)();
    sub_1000050A4(v36, &qword_100939980, &unk_10079ADA0);

    (*(v106 + 8))(v62, v107);
    v65 = v109;
    (*(v104 + 8))(v60, v64);
    swift_allocObject();
    swift_weakInit();
    sub_10000CB48(&qword_100940390, &qword_100940380, &qword_10079FBF8, &protocol conformance descriptor for Publishers.Debounce<A, B>);
    v66 = v99;
    v67 = Publisher<>.sink(receiveValue:)();

    (*(v98 + 8))(v63, v66);
    v65[19] = v67;

    if (swift_unknownObjectWeakLoadStrong())
    {
      v68 = v65[18];
      v69 = swift_getObjectType();
      (*(v68 + 8))(v69, v68);
      swift_unknownObjectRelease();
    }

    if (qword_100935DE8 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_100006654(v70, qword_100940140);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      aBlock[0] = v74;
      *v73 = 136315138;
      v75 = Double.description.getter();
      v77 = v76;
      v78 = sub_10000668C(v75, v76, aBlock);
      v77, v79, v80, v81, v82, v83, v84, v85;
      *(v73 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v71, v72, "RDICCloudExtraneousAlarmsCollector: started, subscribed to DidMarkExtraneousAlarmsPendingToSyncUpDelete {debounceInterval(randomized): %s}", v73, 0xCu);
      sub_10000607C(v74);
    }
  }
}

void sub_100297134(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100297248();
  }

  if (qword_100935DE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_100940140);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "os_transaction RELEASE {name: com.apple.remindd.RDICCloudExtraneousAlarmsCollector.runHandlerOnInit}", v4, 2u);
  }
}

uint64_t sub_100297248()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v3, v4);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 56;
  __chkstk_darwin(v7, v8);
  v10 = v37 - v9 + 56;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11, v13);
  v16 = (v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) + 56);
  v17 = *(v1 + 24);
  *v16 = v17;
  (*(v12 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v11, v14);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v16, v11);
  if (v17)
  {
    v37[3] = v2;
    v37[4] = &off_1008ECA90;
    v37[0] = v1;

    sub_1006E3F2C(v37);
    return sub_10000607C(v37);
  }

  else
  {
    __break(1u);
    swift_once();
    v19 = type metadata accessor for Logger();
    sub_100006654(v19, qword_100940140);
    sub_100010364(v10, v6, &unk_100938850, qword_100795AE0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37[0] = v23;
      *v22 = 136446210;
      v24 = Optional.descriptionOrNil.getter();
      v26 = v25;
      sub_1000050A4(v6, &unk_100938850, qword_100795AE0);
      v27 = sub_10000668C(v24, v26, v37);
      v26, v28, v29, v30, v31, v32, v33, v34;
      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "RDICCloudExtraneousAlarmsCollector THROTTLED, skipping {lastExecuted: %{public}s}", v22, 0xCu);
      sub_10000607C(v23);
    }

    else
    {

      sub_1000050A4(v6, &unk_100938850, qword_100795AE0);
    }

    return sub_1000050A4(v10, &unk_100938850, qword_100795AE0);
  }
}

uint64_t sub_10029779C(uint64_t a1, uint64_t a2)
{
  v2 = Notification.userInfo.getter();
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v4;
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16) && (v12 = sub_10001B0D8(v35), (v5 & 1) != 0))
    {
      sub_100005EF0(*(v3 + 56) + 32 * v12, v36);
      sub_10001B2CC(v35);
      v3, v13, v14, v15, v16, v17, v18, v19;
      if (swift_dynamicCast())
      {
        v20._object = 0x800000010079F130;
        v20._countAndFlagsBits = 0xD000000000000022;
        v21 = String.hasPrefix(_:)(v20);
        v34, v22, v23, v24, v25, v26, v27, v28;
        if (v21)
        {
          if (qword_100935DE8 != -1)
          {
            swift_once();
          }

          v29 = type metadata accessor for Logger();
          sub_100006654(v29, qword_100940140);
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&_mh_execute_header, v30, v31, "RDICCloudExtraneousAlarmsCollector: Should not be producing DidMarkExtraneousAlarmsPendingToSyncUpDelete notification from transactions of RDICCloudExtraneousAlarmsCollector", v32, 2u);
          }

          return 0;
        }
      }
    }

    else
    {
      v3, v5, v6, v7, v8, v9, v10, v11;
      sub_10001B2CC(v35);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1002979D0(0);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100297B14();
  }

  return 1;
}

void sub_1002979D0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  sub_10000C9DC(v1 + 88, v3);
  (*(v4 + 16))(a1, v3, v4);
  swift_endAccess();
  if (qword_100935DE8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006654(v5, qword_100940140);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a1 & 1;
  }
}

uint64_t sub_100297B14()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v1[3];
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  v10 = v1[14];
  v11 = v1[15];
  sub_10000F61C(v1 + 11, v10);
  v12 = (*(v11 + 8))(v10, v11);
  result = swift_endAccess();
  if ((v12 & 1) != 0 || v1[20])
  {
    return result;
  }

  if (qword_100935DE8 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100940140);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "os_transaction INIT {name: com.apple.remindd.RDICCloudExtraneousAlarmsCollector.handleEvent}", v17, 2u);
  }

  v1[20] = os_transaction_create();
  swift_unknownObjectRelease();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = v1[18];
    ObjectType = swift_getObjectType();
    (*(v18 + 24))(ObjectType, v18);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100297D88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100297248();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100297E10();
  }

  return result;
}

uint64_t sub_100297E10()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v1[3];
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  result = v1[20];
  if (!result)
  {
    return result;
  }

  v1[20] = 0;
  swift_unknownObjectRelease();
  if (qword_100935DE8 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_100940140);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "os_transaction RELEASE {name: com.apple.remindd.RDICCloudExtraneousAlarmsCollector.handleEvent}", v14, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = v1[18];
    ObjectType = swift_getObjectType();
    (*(v15 + 32))(ObjectType, v15);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100298018()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1[3];
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    swift_beginAccess();
    v10 = v1[14];
    v11 = v1[15];
    sub_10000F61C(v1 + 11, v10);
    v12 = (*(v11 + 8))(v10, v11);
    v13 = swift_endAccess();
    if ((v12 & 1) == 0)
    {
      v15 = sub_1002982C4(v13, v14);
      if (*(v15 + 16))
      {
        sub_1002985A8();
        type metadata accessor for Analytics();
        if (static Analytics.isEventUsed(_:)())
        {
          sub_1000F5104(&unk_100939240, &unk_100798990);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100791300;
          *(inited + 32) = 0x746E756F63;
          *(inited + 40) = 0xE500000000000000;
          *(inited + 48) = Int._bridgeToObjectiveC()();
          v17 = sub_10038D880(inited);
          swift_setDeallocating();
          sub_1000050A4(inited + 32, &unk_100939250, &unk_100795D30);
          static Analytics.postEvent(_:payload:duration:)();
          v17, v18, v19, v20, v21, v22, v23, v24;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v32 = v1[18];
        ObjectType = swift_getObjectType();
        (*(v32 + 40))(v15, ObjectType, v32);
        v15, v34, v35, v36, v37, v38, v39, v40;
        swift_unknownObjectRelease();
      }

      else
      {
        v15, v25, v26, v27, v28, v29, v30, v31;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002982C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = 0;
  v4 = *(v2 + 16);
  v5 = cloudKitAccountTypes();
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_1001A61BC(v6);
  v6, v8, v9, v10, v11, v12, v13, v14;
  sub_1003950D0(v7);
  v16 = v15;
  v7, v17, v18, v19, v20, v21, v22, v23;
  isa = Set._bridgeToObjectiveC()().super.isa;
  v16, v25, v26, v27, v28, v29, v30, v31;
  v32 = [v4 storesForAccountTypes:isa];

  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = *(v3 + 184);
  v46 = *(v3 + 168);
  v47[0] = v34;
  *(v47 + 14) = *(v3 + 198);
  v44[2] = v3;
  v44[3] = v33;
  v44[4] = &v45;
  v35 = sub_100400578(&v46, sub_10029E59C, v44);
  v33, v36, v37, v38, v39, v40, v41, v42;
  if (v45 == 1)
  {
    sub_1002979D0(1);
  }

  return v35;
}

void sub_1002985A8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v29 = v8;
    v30 = v7;
    v31 = v3;
    v14 = v1[5];
    if (qword_100935DE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_100940140);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "os_transaction INIT {name: com.apple.remindd.RDICCloudExtraneousAlarmsCollector.syncUp}", v18, 2u);
    }

    v19 = os_transaction_create();
    v28[1] = v1[3];
    v20 = swift_allocObject();
    v20[2] = v13;
    v20[3] = v14;
    v20[4] = v19;
    aBlock[4] = sub_10029E4F0;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    aBlock[3] = &unk_1008ECAF0;
    v21 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v32 = &_swiftEmptyArrayStorage;
    sub_100054604(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v28[0] = v13;
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (v31[1].isa)(v6, v2);
    (*(v29 + 8))(v11, v30);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = v1[18];
      ObjectType = swift_getObjectType();
      (*(v22 + 48))(ObjectType, v22);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100935DE8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_100940140);
    v31 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v31, v25, "RDICCloudExtraneousAlarmsCollector: Unexpected nil RDICCloudExtraneousAlarmsSyncPerformer (ICCloudContext), bailing out from syncUp()", v26, 2u);
    }

    v27 = v31;
  }
}

void sub_100298A90(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X3>, NSObject *a5@<X8>)
{
  v11 = a2[9];
  v12 = a2[10];
  sub_10000F61C(a2 + 6, v11);
  v13 = (*(v12 + 8))(v11, v12);
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_55;
  }

  v14 = sub_10029E5BC(v13 + 1);
  if (v5)
  {
    return;
  }

  a3 = v14;
  v6 = v14 >> 62;
  if (v14 >> 62)
  {
LABEL_55:
    v22 = _CocoaArrayWrapper.endIndex.getter();
    if (v22)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22)
  {
LABEL_5:
    v114 = a4;
    v115 = a5;
    if (qword_100935DE8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_100940140);

    a5 = Logger.logObject.getter();
    a4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(a5, a4))
    {
      v31 = swift_slowAlloc();
      *v31 = 134218240;
      if (v6)
      {
        v32 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v32 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v31 + 4) = v32;
      a3, v24, v25, v26, v27, v28, v29, v30;
      *(v31 + 12) = 2048;
      *(v31 + 14) = v13;
      _os_log_impl(&_mh_execute_header, a5, a4, "RDICCloudExtraneousAlarmsCollector: fetched extraneous alarm triggers {triggers.count: %ld, deleteLimit: %ld}", v31, 0x16u);
    }

    else
    {

      a3, v33, v34, v35, v36, v37, v38, v39;
    }

    v117 = &_swiftEmptyArrayStorage;
    if (v13 < 0)
    {
      __break(1u);
    }

    else
    {
      if (v22 >= v13)
      {
        v40 = v13;
      }

      else
      {
        v40 = v22;
      }

      if (v22 < 0)
      {
        v40 = v13;
      }

      if (v13)
      {
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      if (v6)
      {
        if (_CocoaArrayWrapper.endIndex.getter() < 0)
        {
          __break(1u);
        }

        v42 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v42 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v42 >= v41)
      {
        if ((a3 & 0xC000000000000001) != 0 && v41)
        {
          sub_1000060C8(0, &unk_100940330, off_1008D4148);

          v43 = 0;
          do
          {
            v44 = v43 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v43);
            v43 = v44;
          }

          while (v41 != v44);
          if (!v6)
          {
            goto LABEL_32;
          }
        }

        else
        {

          if (!v6)
          {
LABEL_32:
            v52 = 0;
            v53 = (a3 & 0xFFFFFFFFFFFFFF8) + 32;
            v54 = (2 * v41) | 1;
            goto LABEL_35;
          }
        }

        a3, v45, v46, v47, v48, v49, v50, v51;
        _CocoaArrayWrapper.subscript.getter();
        v53 = v55;
        v52 = v56;
        v54 = v57;
LABEL_35:
        sub_10029E4FC(v53, v52, v54, &v117);
        swift_unknownObjectRelease();
        v58 = v117;
        if (*v117->clientIdentity)
        {
          v116 = 0;
          if (![a1 save:&v116])
          {
            v88 = v116;
            a3, v89, v90, v91, v92, v93, v94, v95;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            v58, v96, v97, v98, v99, v100, v101, v102;
            return;
          }

          v59 = v116;
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v60, v61))
          {
LABEL_42:

            if (v6)
            {
              if (v13 >= _CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_44;
              }
            }

            else if (v13 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_44:
              a3, v70, v71, v72, v73, v74, v75, v76;
              *v114 = 1;
LABEL_53:
              v115->isa = v58;
              return;
            }

            v77 = Logger.logObject.getter();
            v78 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v77, v78))
            {
              v86 = swift_slowAlloc();
              *v86 = 134218240;
              if (v6)
              {
                v87 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                v87 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              a3, v79, v80, v81, v82, v83, v84, v85;
              *(v86 + 4) = v87;
              a3, v103, v104, v105, v106, v107, v108, v109;
              *(v86 + 12) = 2048;
              *(v86 + 14) = v13;
              _os_log_impl(&_mh_execute_header, v77, v78, "RDICCloudExtraneousAlarmsCollector: leaving noOutstandingExtraneousItems=false because fetched triggers.count=%ld > deleteLimit=%ld", v86, 0x16u);
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            goto LABEL_53;
          }

          v62 = swift_slowAlloc();
          *v62 = 134217984;
          *(v62 + 4) = *v58->clientIdentity;
          v63 = "RDICCloudExtraneousAlarmsCollector: applied and saved REMCDObjectDirtyFlagsNeedDelete dirty flags to %ld alarm and triggers.";
          v64 = v61;
          v65 = v60;
          v66 = v62;
          v67 = 12;
        }

        else
        {
          v60 = Logger.logObject.getter();
          v68 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v60, v68))
          {
            goto LABEL_42;
          }

          v69 = swift_slowAlloc();
          *v69 = 0;
          v63 = "RDICCloudExtraneousAlarmsCollector: none of the fetched alarm triggers should apply REMCDObjectDirtyFlagsNeedDelete.";
          v64 = v68;
          v65 = v60;
          v66 = v69;
          v67 = 2;
        }

        _os_log_impl(&_mh_execute_header, v65, v64, v63, v66, v67);

        goto LABEL_42;
      }
    }

    __break(1u);
    goto LABEL_63;
  }

LABEL_56:
  a3, v15, v16, v17, v18, v19, v20, v21;
  if (qword_100935DE8 != -1)
  {
LABEL_63:
    swift_once();
  }

  v110 = type metadata accessor for Logger();
  sub_100006654(v110, qword_100940140);
  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 0;
    _os_log_impl(&_mh_execute_header, v111, v112, "RDICCloudExtraneousAlarmsCollector: fetched 0 extraneous alarm triggers.", v113, 2u);
  }

  *a4 = 1;
  a5->isa = &_swiftEmptyArrayStorage;
}

void sub_1002990FC(void **a1, _TtC7remindd19RDXPCStorePerformer **a2)
{
  v113 = a2;
  v112 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v112, v4);
  v6 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v107 - v9;
  v11 = type metadata accessor for UUID();
  v114 = *(v11 - 8);
  __chkstk_darwin(v11, v12);
  v14 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v18 = &v107 - v17;
  __chkstk_darwin(v19, v20);
  v22 = &v107 - v21;
  *&v25 = __chkstk_darwin(v23, v24).n128_u64[0];
  v27 = &v107 - v26;
  v28 = *a1;
  if (![v28 isTemporal])
  {
    return;
  }

  v111 = v11;
  v29 = [v28 alarm];
  if (!v29)
  {
    if (qword_100935DE8 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100006654(v52, qword_100940140);
    v53 = v28;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v115 = v57;
      *v56 = 136315138;
      v58 = [v53 remObjectID];
      if (v58)
      {
        v59 = v58;
        v60 = [v58 description];

        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;
      }

      else
      {
        v63 = 0xE300000000000000;
        v61 = 7104878;
      }

      v98 = sub_10000668C(v61, v63, &v115);
      v63, v99, v100, v101, v102, v103, v104, v105;
      *(v56 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v54, v55, "RDICCloudExtraneousAlarmsCollector: fetched an extraneous trigger without an alarm, skipping {triggerID: %s}", v56, 0xCu);
      sub_10000607C(v57);

      return;
    }

LABEL_30:

    return;
  }

  v30 = v29;
  v31 = [v28 identifier];
  v110 = v2;
  if (!v31)
  {
LABEL_20:
    if (qword_100935DE8 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100006654(v64, qword_100940140);
    v65 = v28;
    v66 = v30;
    v54 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v67))
    {
      LODWORD(v113) = v67;
      v68 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v115 = v109;
      *v68 = 136315394;
      v69 = [v65 identifier];
      if (v69)
      {
        v70 = v69;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v71 = 0;
      }

      else
      {
        v71 = 1;
      }

      v72 = *(v114 + 56);
      v73 = 1;
      v114 += 56;
      v72(v10, v71, 1, v111);
      v74 = Optional.descriptionOrNil.getter();
      v76 = v75;
      sub_1000050A4(v10, &unk_100939D90, "8\n\r");
      v77 = sub_10000668C(v74, v76, &v115);
      v76, v78, v79, v80, v81, v82, v83, v84;
      *(v68 + 4) = v77;
      *(v68 + 12) = 2080;
      v85 = [v66 identifier];
      if (v85)
      {
        v86 = v85;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v73 = 0;
      }

      v72(v6, v73, 1, v111);
      v87 = Optional.descriptionOrNil.getter();
      v89 = v88;
      sub_1000050A4(v6, &unk_100939D90, "8\n\r");
      v90 = sub_10000668C(v87, v89, &v115);
      v89, v91, v92, v93, v94, v95, v96, v97;
      *(v68 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v54, v113, "RDICCloudExtraneousAlarmsCollector: fetched an extraneous trigger/alarm without identifier, skipping {triggerID: %s, alarmID: %s}", v68, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_30;
  }

  v32 = v31;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = [v30 identifier];
  if (!v33)
  {
    (*(v114 + 8))(v27, v111);
    goto LABEL_20;
  }

  v34 = v33;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  [v28 setShouldSyncUpDeleteIfNeeded];
  v108 = *(v114 + 16);
  v108(v18, v27, v111);
  v35 = v113;
  v36 = *v113;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v35 = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = sub_100366328(0, *v36->clientIdentity + 1, 1, v36);
    *v113 = v36;
  }

  v39 = *v36->clientIdentity;
  v38 = *&v36->clientIdentity[8];
  if (v39 >= v38 >> 1)
  {
    v36 = sub_100366328((v38 > 1), v39 + 1, 1, v36);
    *v113 = v36;
  }

  *v36->clientIdentity = v39 + 1;
  v40 = *(v114 + 32);
  v109 = (*(v114 + 80) + 32) & ~*(v114 + 80);
  v107 = *(v114 + 72);
  v41 = v18;
  v42 = v111;
  v112 = v40;
  v40(v36 + v109 + v107 * v39, v41, v111);
  [v30 setShouldSyncUpDeleteIfNeeded];
  v108(v14, v22, v42);
  v43 = v113;
  v44 = *v113;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  *v43 = v44;
  if ((v45 & 1) == 0)
  {
    v44 = sub_100366328(0, *v44->clientIdentity + 1, 1, v44);
    *v113 = v44;
  }

  v47 = *v44->clientIdentity;
  v46 = *&v44->clientIdentity[8];
  if (v47 >= v46 >> 1)
  {
    v106 = sub_100366328((v46 > 1), v47 + 1, 1, v44);
    *v113 = v106;
  }

  v48 = *(v114 + 8);
  v49 = v22;
  v50 = v111;
  v48(v49, v111);
  v48(v27, v50);
  v51 = *v113;
  *v51->clientIdentity = v47 + 1;
  v112(v51 + v109 + v47 * v107, v14, v50);
}

void sub_100299950(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 8))(1, @"ExtraneousAlarmsCollector", 0, 0, ObjectType, a2);
  if (qword_100935DE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100940140);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "os_transaction RELEASE {name: com.apple.remindd.RDICCloudExtraneousAlarmsCollector.syncUp}", v6, 2u);
  }
}

uint64_t sub_100299A78@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  swift_beginAccess();
  sub_100010364((v1 + 34), &v11, &unk_100940320, qword_10079F2F0);
  if (v12)
  {
    return sub_100054B6C(&v11, a1);
  }

  sub_1000050A4(&v11, &unk_100940320, qword_10079F2F0);
  v6 = v1[9];
  v7 = v1[10];
  sub_10000F61C(v1 + 6, v6);
  v8 = (*(v7 + 24))(v6, v7);
  v12 = v4;
  v13 = &off_1008ECA70;
  *&v11 = v1;
  v9 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v10 = swift_allocObject();
  sub_100054B6C(&v11, v10 + 16);
  *(v10 + 56) = v8;
  a1[3] = v9;
  a1[4] = &off_1008F5B28;
  *a1 = v10;
  sub_10000A87C(a1, &v11);
  swift_beginAccess();

  sub_10029A4F8(&v11, (v2 + 34));
  return swift_endAccess();
}

uint64_t sub_100299C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000A87C(a1, v30);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDICCloudExtraneousAlarmsCollector();
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    sub_10000A87C(v2 + 16, v26);
    v5 = v27;
    v6 = v28;
    sub_10000F61C(v26, v27);
    (*(v6 + 32))(v5, v6);
    sub_10000607C(v26);
    return sub_10000607C(v30);
  }

  else
  {
    if (qword_100935DE8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_100940140);
    sub_10000A87C(a1, v26);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136446210;
      sub_10000A87C(v26, &v25);
      v13 = String.init<A>(describing:)();
      v15 = v14;
      sub_10000607C(v26);
      v16 = sub_10000668C(v13, v15, &v29);
      v15, v17, v18, v19, v20, v21, v22, v23;
      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "RDICCloudExtraneousAlarmsCollectorExecutionDateStorage.lastExecutedDate(for:) must work with RDICCloudExtraneousAlarmsCollector only {executable: %{public}s}", v11, 0xCu);
      sub_10000607C(v12);
    }

    else
    {

      sub_10000607C(v26);
    }

    sub_10000607C(v30);
    v24 = type metadata accessor for Date();
    return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
  }
}

uint64_t sub_100299E88(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v30 - v7;
  sub_10000A87C(a1, v33);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDICCloudExtraneousAlarmsCollector();
  if (swift_dynamicCast())
  {

    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v8, a2, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    swift_beginAccess();
    v11 = *(v2 + 40);
    v12 = *(v2 + 48);
    sub_10000C9DC(v2 + 16, v11);
    (*(v12 + 40))(v8, v11, v12);
    swift_endAccess();
  }

  else
  {
    if (qword_100935DE8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100940140);
    sub_10000A87C(a1, v32);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136446210;
      sub_10000A87C(v32, v30);
      v18 = String.init<A>(describing:)();
      v20 = v19;
      sub_10000607C(v32);
      v21 = sub_10000668C(v18, v20, &v31);
      v20, v22, v23, v24, v25, v26, v27, v28;
      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "RDICCloudExtraneousAlarmsCollectorExecutionDateStorage.updateLastExecutedDate(for:) must work with RDICCloudExtraneousAlarmsCollector only {executable: %{public}s}", v16, 0xCu);
      sub_10000607C(v17);
    }

    else
    {

      sub_10000607C(v32);
    }
  }

  return sub_10000607C(v33);
}

uint64_t sub_10029A1FC()
{
  v1 = *(*v0 + 216);

  return v1;
}

unint64_t sub_10029A280()
{
  result = [*v0 extraneousAlarmsDeleteCountLimit];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10029A308@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 lastExtraneousAlarmsCollectorExecutionDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_10029A3AC(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(a1, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(a1, v4);
    v7 = isa;
  }

  v9 = v7;
  [v3 setLastExtraneousAlarmsCollectorExecutionDate:?];
}

uint64_t sub_10029A4F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_100940320, qword_10079F2F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10029A568(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{

  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);

  v5._object = 0x800000010079F840;
  v5._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v5);
  a2, v6, v7, v8, v9, v10, v11, v12;

  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  a2, v14, v15, v16, v17, v18, v19, v20;

  v21._countAndFlagsBits = 0xD000000000000023;
  v21._object = 0x80000001007F2430;
  String.append(_:)(v21);
  a2, v22, v23, v24, v25, v26, v27, v28;
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100791320;
  *(v29 + 32) = a1;
  *(v29 + 40) = a2;
  *(v29 + 88) = &type metadata for String;
  *(v29 + 56) = &type metadata for String;
  *(v29 + 64) = a1;
  *(v29 + 72) = a2;
  v30 = rem_currentRuntimeVersion();
  *(v29 + 120) = &type metadata for Int;
  *(v29 + 96) = v30;
  v31 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v29, v33, v34, v35, v36, v37, v38, v39;
  v40 = [objc_opt_self() predicateWithFormat:v31 argumentArray:isa];

  return v40;
}

uint64_t sub_10029A758(char a1)
{
  sub_1000F5104(&qword_100940358, &qword_10079FBE0);
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    __chkstk_darwin(inited, v3);
    sub_1000060C8(0, &qword_100940360, off_1008D4138);
    KeyPath = swift_getKeyPath();
    v5 = sub_1003F71F4(KeyPath);

    *(inited + 32) = v5;
    __chkstk_darwin(v6, v7);
    v8 = swift_getKeyPath();
    v9 = sub_1003F71F4(v8);

    *(inited + 40) = v9;
    return sub_10000C2B0();
  }

  else
  {
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_100791340;
    __chkstk_darwin(v11, v12);
    sub_1000060C8(0, &qword_100940360, off_1008D4138);
    v13 = swift_getKeyPath();
    v14 = sub_1003EDE80(v13);

    *(v11 + 32) = v14;
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100791300;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 32) = 0xD000000000000017;
    *(v15 + 40) = 0x800000010079F910;
    v16 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v15, v18, v19, v20, v21, v22, v23, v24;
    v25 = [objc_opt_self() predicateWithFormat:v16 argumentArray:isa];

    *(v11 + 40) = v25;
    return sub_100025060(v11);
  }
}

uint64_t sub_10029A9E8(char a1)
{
  sub_1000F5104(&qword_100939F28, &qword_100797310);
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    __chkstk_darwin(inited, v3);
    sub_1000060C8(0, &unk_100940330, off_1008D4148);
    KeyPath = swift_getKeyPath();
    v5 = sub_1003F71FC(KeyPath);

    *(inited + 32) = v5;
    __chkstk_darwin(v6, v7);
    v8 = swift_getKeyPath();
    v9 = sub_1003F71FC(v8);

    *(inited + 40) = v9;
    return sub_10000C2B0();
  }

  else
  {
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_100791340;
    __chkstk_darwin(v11, v12);
    sub_1000060C8(0, &unk_100940330, off_1008D4148);
    v13 = swift_getKeyPath();
    v14 = sub_1003EF200(v13);

    *(v11 + 32) = v14;
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100791300;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 32) = 0xD000000000000017;
    *(v15 + 40) = 0x800000010079F910;
    v16 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v15, v18, v19, v20, v21, v22, v23, v24;
    v25 = [objc_opt_self() predicateWithFormat:v16 argumentArray:isa];

    *(v11 + 40) = v25;
    return sub_100025060(v11);
  }
}

uint64_t sub_10029AC78(char a1)
{
  sub_1000F5104(&qword_100940368, &qword_10079FBE8);
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    __chkstk_darwin(inited, v3);
    sub_1000060C8(0, &qword_100940370, off_1008D4150);
    KeyPath = swift_getKeyPath();
    v5 = sub_1003F71F8(KeyPath);

    *(inited + 32) = v5;
    __chkstk_darwin(v6, v7);
    v8 = swift_getKeyPath();
    v9 = sub_1003F71F8(v8);

    *(inited + 40) = v9;
    return sub_10000C2B0();
  }

  else
  {
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_100791340;
    __chkstk_darwin(v11, v12);
    sub_1000060C8(0, &qword_100940370, off_1008D4150);
    v13 = swift_getKeyPath();
    v14 = sub_1003EE11C(v13);

    *(v11 + 32) = v14;
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100791300;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 32) = 0xD000000000000017;
    *(v15 + 40) = 0x800000010079F910;
    v16 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v15, v18, v19, v20, v21, v22, v23, v24;
    v25 = [objc_opt_self() predicateWithFormat:v16 argumentArray:isa];

    *(v11 + 40) = v25;
    return sub_100025060(v11);
  }
}

uint64_t sub_10029AF08(char a1)
{
  sub_1000F5104(&qword_100940348, &qword_10079FBD8);
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    __chkstk_darwin(inited, v3);
    sub_1000060C8(0, &qword_100940350, off_1008D4130);
    KeyPath = swift_getKeyPath();
    v5 = sub_1003F7204(KeyPath);

    *(inited + 32) = v5;
    __chkstk_darwin(v6, v7);
    v8 = swift_getKeyPath();
    v9 = sub_1003F7204(v8);

    *(inited + 40) = v9;
    return sub_10000C2B0();
  }

  else
  {
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_100791340;
    __chkstk_darwin(v11, v12);
    sub_1000060C8(0, &qword_100940350, off_1008D4130);
    v13 = swift_getKeyPath();
    v14 = sub_1003EFC5C(v13);

    *(v11 + 32) = v14;
    sub_1000F5104(&unk_100938E80, &unk_1007959D0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100791300;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 32) = 0xD000000000000017;
    *(v15 + 40) = 0x800000010079F910;
    v16 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v15, v18, v19, v20, v21, v22, v23, v24;
    v25 = [objc_opt_self() predicateWithFormat:v16 argumentArray:isa];

    *(v11 + 40) = v25;
    return sub_100025060(v11);
  }
}

uint64_t sub_10029B198(void *a1, char a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = v98 - v6;
  v99 = &_swiftEmptyArrayStorage;
  v8 = a2 >> 5;
  if (v8 <= 2)
  {
    if (v8 - 1 >= 2)
    {
      sub_1000F5104(&qword_100940358, &qword_10079FBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791320;
      __chkstk_darwin(inited, v21);
      v22 = sub_1000060C8(0, &qword_100940360, off_1008D4138);
      *&v98[-1] = v22;
      KeyPath = swift_getKeyPath();
      v24 = sub_10004FAEC(a1);
      v25 = sub_1003EDE30(KeyPath, v24);

      *(inited + 32) = v25;
      __chkstk_darwin(v26, v27);
      *&v98[-1] = v22;
      v28 = swift_getKeyPath();
      v29 = sub_1003EDE54(v28);

      *(inited + 40) = v29;
      __chkstk_darwin(v30, v31);
      *&v98[-1] = v22;
      v32 = swift_getKeyPath();
      v33 = sub_100391908(v32, 0);

      *(inited + 48) = v33;
    }

    else
    {
      sub_1000F5104(&qword_100940358, &qword_10079FBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      __chkstk_darwin(inited, v10);
      *&v98[-1] = sub_1000060C8(0, &qword_100940360, off_1008D4138);
      v11 = swift_getKeyPath();
      v12 = sub_10004FAEC(a1);
      v13 = sub_1003EDE30(v11, v12);

      *(inited + 32) = v13;
    }

    sub_100272138(inited);
    v19 = 0;
    goto LABEL_9;
  }

  if (v8 == 3)
  {
    sub_1000F5104(&qword_100940358, &qword_10079FBE0);
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_100791340;
    __chkstk_darwin(v62, v63);
    v38 = sub_1000060C8(0, &qword_100940360, off_1008D4138);
    *&v98[-1] = v38;
    v64 = swift_getKeyPath();
    v65 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = type metadata accessor for UUID();
    v34 = 1;
    (*(*(v66 - 8) + 56))(v7, 0, 1, v66);
    v67 = sub_10039191C(v64, v7);

    *(v62 + 32) = v67;
    v68 = sub_10029A758(a2 & 1);
    v45 = v62;
    v19 = 0;
    *(v62 + 40) = v68;
    goto LABEL_11;
  }

  if (v8 == 4)
  {
    sub_1000F5104(&qword_100940358, &qword_10079FBE0);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_100791300;
    __chkstk_darwin(v14, v15);
    *&v98[-1] = sub_1000060C8(0, &qword_100940360, off_1008D4138);
    v16 = swift_getKeyPath();
    v17 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = type metadata accessor for UUID();
    v19 = 1;
    (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
    v20 = sub_10039191C(v16, v7);

    *(v14 + 32) = v20;
    sub_100272138(v14);
LABEL_9:
    v34 = 1;
LABEL_10:
    sub_1000F5104(&qword_100940358, &qword_10079FBE0);
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_100791320;
    *(v35 + 32) = sub_10001035C(0);
    *(v35 + 40) = sub_10029A568(0x6D72616C61, 0xE500000000000000);
    *(v35 + 48) = sub_10029A568(0x65722E6D72616C61, 0xEE007265646E696DLL);
    sub_100272138(v35);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_100791340;
    __chkstk_darwin(v36, v37);
    v38 = sub_1000060C8(0, &qword_100940360, off_1008D4138);
    *&v98[-1] = v38;
    v39 = swift_getKeyPath();
    v40 = sub_1003F71F4(v39);

    *(v36 + 32) = v40;
    __chkstk_darwin(v41, v42);
    *&v98[-1] = v38;
    v43 = swift_getKeyPath();
    v44 = sub_1003F71F4(v43);

    v45 = v36;
    *(v36 + 40) = v44;
    goto LABEL_11;
  }

  if (__PAIR128__(-96, 2) < __PAIR128__(a2, a1))
  {
    if (a2 == 160 && a1 == 3)
    {
      v34 = 0;
      v19 = 1;
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  if (__PAIR128__(((a1 != 0) + a2 + 95), a1 - 1) < 2)
  {
LABEL_26:
    v19 = 1;
    goto LABEL_9;
  }

  sub_1000F5104(&qword_100940358, &qword_10079FBE0);
  v69 = swift_initStackObject();
  *(v69 + 16) = xmmword_100792CE0;
  __chkstk_darwin(v69, v70);
  v38 = sub_1000060C8(0, &qword_100940360, off_1008D4138);
  *&v98[-1] = v38;
  v71 = swift_getKeyPath();
  v72 = sub_1003EDE80(v71);

  *(v69 + 32) = v72;
  __chkstk_darwin(v73, v74);
  *&v98[-1] = v38;
  v75 = swift_getKeyPath();
  v76 = sub_1003EDE80(v75);

  *(v69 + 40) = v76;
  __chkstk_darwin(v77, v78);
  *&v98[-1] = v38;
  v79 = swift_getKeyPath();
  v80 = sub_1003EDE94(v79);

  *(v69 + 48) = v80;
  __chkstk_darwin(v81, v82);
  *&v98[-1] = v38;
  v83 = swift_getKeyPath();
  v84 = sub_1003EDE94(v83);

  *(v69 + 56) = v84;
  sub_100272138(v69);
  v85 = swift_initStackObject();
  *(v85 + 16) = xmmword_100791320;
  __chkstk_darwin(v85, v86);
  *&v98[-1] = v38;
  v87 = swift_getKeyPath();
  v88 = sub_1003EDE54(v87);

  *(v85 + 32) = v88;
  __chkstk_darwin(v89, v90);
  *&v98[-1] = v38;
  v91 = swift_getKeyPath();
  v92 = sub_100391908(v91, 0);

  *(v85 + 40) = v92;
  __chkstk_darwin(v93, v94);
  *&v98[-1] = v38;
  v95 = swift_getKeyPath();
  v96 = sub_100391908(v95, 0);

  v45 = v85;
  v19 = 0;
  *(v85 + 48) = v96;
  v34 = 1;
LABEL_11:
  sub_100272138(v45);
  sub_1000F5104(&qword_100940358, &qword_10079FBE0);
  v46 = swift_initStackObject();
  v98[0] = xmmword_100791300;
  *(v46 + 16) = xmmword_100791300;
  __chkstk_darwin(v46, v47);
  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  *&v98[-1] = v38;
  v48 = swift_getKeyPath();
  v49 = sub_1003F71F4(v48);

  *(v46 + 32) = v49;
  sub_100272138(v46);
  if (v34)
  {
    v50 = swift_initStackObject();
    *(v50 + 16) = v98[0];
    __chkstk_darwin(v50, v51);
    *&v98[-1] = v38;
    v52 = swift_getKeyPath();
    v53 = [objc_opt_self() localInternalAccountID];
    v54 = [v53 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = type metadata accessor for UUID();
    (*(*(v55 - 8) + 56))(v7, 0, 1, v55);
    v56 = sub_1003EDEC0(v52, v7);

    *(v50 + 32) = v56;
    sub_100272138(v50);
  }

  if (v19)
  {
    v57 = swift_initStackObject();
    *(v57 + 16) = v98[0];
    __chkstk_darwin(v57, v58);
    *&v98[-1] = v38;
    v59 = swift_getKeyPath();
    v60 = sub_1003F71F4(v59);

    *(v57 + 32) = v60;
    sub_100272138(v57);
  }

  return sub_10000C2B0();
}

uint64_t sub_10029BD74(void *a1, char a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = v98 - v6;
  v99 = &_swiftEmptyArrayStorage;
  v8 = a2 >> 5;
  if (v8 <= 2)
  {
    if (v8 - 1 >= 2)
    {
      sub_1000F5104(&qword_100939F28, &qword_100797310);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791320;
      __chkstk_darwin(inited, v21);
      v22 = sub_1000060C8(0, &unk_100940330, off_1008D4148);
      *&v98[-1] = v22;
      KeyPath = swift_getKeyPath();
      v24 = sub_10004FAEC(a1);
      v25 = sub_1003EF1B0(KeyPath, v24);

      *(inited + 32) = v25;
      __chkstk_darwin(v26, v27);
      *&v98[-1] = v22;
      v28 = swift_getKeyPath();
      v29 = sub_1003EF1D4(v28);

      *(inited + 40) = v29;
      __chkstk_darwin(v30, v31);
      *&v98[-1] = v22;
      v32 = swift_getKeyPath();
      v33 = sub_100392264(v32, 0);

      *(inited + 48) = v33;
    }

    else
    {
      sub_1000F5104(&qword_100939F28, &qword_100797310);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      __chkstk_darwin(inited, v10);
      *&v98[-1] = sub_1000060C8(0, &unk_100940330, off_1008D4148);
      v11 = swift_getKeyPath();
      v12 = sub_10004FAEC(a1);
      v13 = sub_1003EF1B0(v11, v12);

      *(inited + 32) = v13;
    }

    sub_100272178(inited);
    v19 = 0;
    goto LABEL_9;
  }

  if (v8 == 3)
  {
    sub_1000F5104(&qword_100939F28, &qword_100797310);
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_100791340;
    __chkstk_darwin(v62, v63);
    v38 = sub_1000060C8(0, &unk_100940330, off_1008D4148);
    *&v98[-1] = v38;
    v64 = swift_getKeyPath();
    v65 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = type metadata accessor for UUID();
    v34 = 1;
    (*(*(v66 - 8) + 56))(v7, 0, 1, v66);
    v67 = sub_100392278(v64, v7);

    *(v62 + 32) = v67;
    v68 = sub_10029A9E8(a2 & 1);
    v45 = v62;
    v19 = 0;
    *(v62 + 40) = v68;
    goto LABEL_11;
  }

  if (v8 == 4)
  {
    sub_1000F5104(&qword_100939F28, &qword_100797310);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_100791300;
    __chkstk_darwin(v14, v15);
    *&v98[-1] = sub_1000060C8(0, &unk_100940330, off_1008D4148);
    v16 = swift_getKeyPath();
    v17 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = type metadata accessor for UUID();
    v19 = 1;
    (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
    v20 = sub_100392278(v16, v7);

    *(v14 + 32) = v20;
    sub_100272178(v14);
LABEL_9:
    v34 = 1;
LABEL_10:
    sub_1000F5104(&qword_100939F28, &qword_100797310);
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_100791320;
    *(v35 + 32) = sub_10001035C(0);
    *(v35 + 40) = sub_10029A568(0x6D72616C61, 0xE500000000000000);
    *(v35 + 48) = sub_10029A568(0x65722E6D72616C61, 0xEE007265646E696DLL);
    sub_100272178(v35);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_100791340;
    __chkstk_darwin(v36, v37);
    v38 = sub_1000060C8(0, &unk_100940330, off_1008D4148);
    *&v98[-1] = v38;
    v39 = swift_getKeyPath();
    v40 = sub_1003F71FC(v39);

    *(v36 + 32) = v40;
    __chkstk_darwin(v41, v42);
    *&v98[-1] = v38;
    v43 = swift_getKeyPath();
    v44 = sub_1003F71FC(v43);

    v45 = v36;
    *(v36 + 40) = v44;
    goto LABEL_11;
  }

  if (__PAIR128__(-96, 2) < __PAIR128__(a2, a1))
  {
    if (a2 == 160 && a1 == 3)
    {
      v34 = 0;
      v19 = 1;
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  if (__PAIR128__(((a1 != 0) + a2 + 95), a1 - 1) < 2)
  {
LABEL_26:
    v19 = 1;
    goto LABEL_9;
  }

  sub_1000F5104(&qword_100939F28, &qword_100797310);
  v69 = swift_initStackObject();
  *(v69 + 16) = xmmword_100792CE0;
  __chkstk_darwin(v69, v70);
  v38 = sub_1000060C8(0, &unk_100940330, off_1008D4148);
  *&v98[-1] = v38;
  v71 = swift_getKeyPath();
  v72 = sub_1003EF200(v71);

  *(v69 + 32) = v72;
  __chkstk_darwin(v73, v74);
  *&v98[-1] = v38;
  v75 = swift_getKeyPath();
  v76 = sub_1003EF200(v75);

  *(v69 + 40) = v76;
  __chkstk_darwin(v77, v78);
  *&v98[-1] = v38;
  v79 = swift_getKeyPath();
  v80 = sub_1003EF214(v79);

  *(v69 + 48) = v80;
  __chkstk_darwin(v81, v82);
  *&v98[-1] = v38;
  v83 = swift_getKeyPath();
  v84 = sub_1003EF214(v83);

  *(v69 + 56) = v84;
  sub_100272178(v69);
  v85 = swift_initStackObject();
  *(v85 + 16) = xmmword_100791320;
  __chkstk_darwin(v85, v86);
  *&v98[-1] = v38;
  v87 = swift_getKeyPath();
  v88 = sub_1003EF1D4(v87);

  *(v85 + 32) = v88;
  __chkstk_darwin(v89, v90);
  *&v98[-1] = v38;
  v91 = swift_getKeyPath();
  v92 = sub_100392264(v91, 0);

  *(v85 + 40) = v92;
  __chkstk_darwin(v93, v94);
  *&v98[-1] = v38;
  v95 = swift_getKeyPath();
  v96 = sub_100392264(v95, 0);

  v45 = v85;
  v19 = 0;
  *(v85 + 48) = v96;
  v34 = 1;
LABEL_11:
  sub_100272178(v45);
  sub_1000F5104(&qword_100939F28, &qword_100797310);
  v46 = swift_initStackObject();
  v98[0] = xmmword_100791300;
  *(v46 + 16) = xmmword_100791300;
  __chkstk_darwin(v46, v47);
  sub_1000060C8(0, &unk_100940330, off_1008D4148);
  *&v98[-1] = v38;
  v48 = swift_getKeyPath();
  v49 = sub_1003F71FC(v48);

  *(v46 + 32) = v49;
  sub_100272178(v46);
  if (v34)
  {
    v50 = swift_initStackObject();
    *(v50 + 16) = v98[0];
    __chkstk_darwin(v50, v51);
    *&v98[-1] = v38;
    v52 = swift_getKeyPath();
    v53 = [objc_opt_self() localInternalAccountID];
    v54 = [v53 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = type metadata accessor for UUID();
    (*(*(v55 - 8) + 56))(v7, 0, 1, v55);
    v56 = sub_1003EF240(v52, v7);

    *(v50 + 32) = v56;
    sub_100272178(v50);
  }

  if (v19)
  {
    v57 = swift_initStackObject();
    *(v57 + 16) = v98[0];
    __chkstk_darwin(v57, v58);
    *&v98[-1] = v38;
    v59 = swift_getKeyPath();
    v60 = sub_1003F71FC(v59);

    *(v57 + 32) = v60;
    sub_100272178(v57);
  }

  return sub_10000C2B0();
}

uint64_t sub_10029C950(void *a1, char a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = v98 - v6;
  v99 = &_swiftEmptyArrayStorage;
  v8 = a2 >> 5;
  if (v8 <= 2)
  {
    if (v8 - 1 >= 2)
    {
      sub_1000F5104(&qword_100940368, &qword_10079FBE8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791320;
      __chkstk_darwin(inited, v21);
      v22 = sub_1000060C8(0, &qword_100940370, off_1008D4150);
      *&v98[-1] = v22;
      KeyPath = swift_getKeyPath();
      v24 = sub_10004FAEC(a1);
      v25 = sub_1003EE0CC(KeyPath, v24);

      *(inited + 32) = v25;
      __chkstk_darwin(v26, v27);
      *&v98[-1] = v22;
      v28 = swift_getKeyPath();
      v29 = sub_1003EE0F0(v28);

      *(inited + 40) = v29;
      __chkstk_darwin(v30, v31);
      *&v98[-1] = v22;
      v32 = swift_getKeyPath();
      v33 = sub_100391958(v32, 0);

      *(inited + 48) = v33;
    }

    else
    {
      sub_1000F5104(&qword_100940368, &qword_10079FBE8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      __chkstk_darwin(inited, v10);
      *&v98[-1] = sub_1000060C8(0, &qword_100940370, off_1008D4150);
      v11 = swift_getKeyPath();
      v12 = sub_10004FAEC(a1);
      v13 = sub_1003EE0CC(v11, v12);

      *(inited + 32) = v13;
    }

    sub_100272410(inited);
    v19 = 0;
    goto LABEL_9;
  }

  if (v8 == 3)
  {
    sub_1000F5104(&qword_100940368, &qword_10079FBE8);
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_100791340;
    __chkstk_darwin(v62, v63);
    v38 = sub_1000060C8(0, &qword_100940370, off_1008D4150);
    *&v98[-1] = v38;
    v64 = swift_getKeyPath();
    v65 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = type metadata accessor for UUID();
    v34 = 1;
    (*(*(v66 - 8) + 56))(v7, 0, 1, v66);
    v67 = sub_10039196C(v64, v7);

    *(v62 + 32) = v67;
    v68 = sub_10029AC78(a2 & 1);
    v45 = v62;
    v19 = 0;
    *(v62 + 40) = v68;
    goto LABEL_11;
  }

  if (v8 == 4)
  {
    sub_1000F5104(&qword_100940368, &qword_10079FBE8);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_100791300;
    __chkstk_darwin(v14, v15);
    *&v98[-1] = sub_1000060C8(0, &qword_100940370, off_1008D4150);
    v16 = swift_getKeyPath();
    v17 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = type metadata accessor for UUID();
    v19 = 1;
    (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
    v20 = sub_10039196C(v16, v7);

    *(v14 + 32) = v20;
    sub_100272410(v14);
LABEL_9:
    v34 = 1;
LABEL_10:
    sub_1000F5104(&qword_100940368, &qword_10079FBE8);
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_100791320;
    *(v35 + 32) = sub_10001035C(0);
    *(v35 + 40) = sub_10029A568(0x6D72616C61, 0xE500000000000000);
    *(v35 + 48) = sub_10029A568(0x65722E6D72616C61, 0xEE007265646E696DLL);
    sub_100272410(v35);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_100791340;
    __chkstk_darwin(v36, v37);
    v38 = sub_1000060C8(0, &qword_100940370, off_1008D4150);
    *&v98[-1] = v38;
    v39 = swift_getKeyPath();
    v40 = sub_1003F71F8(v39);

    *(v36 + 32) = v40;
    __chkstk_darwin(v41, v42);
    *&v98[-1] = v38;
    v43 = swift_getKeyPath();
    v44 = sub_1003F71F8(v43);

    v45 = v36;
    *(v36 + 40) = v44;
    goto LABEL_11;
  }

  if (__PAIR128__(-96, 2) < __PAIR128__(a2, a1))
  {
    if (a2 == 160 && a1 == 3)
    {
      v34 = 0;
      v19 = 1;
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  if (__PAIR128__(((a1 != 0) + a2 + 95), a1 - 1) < 2)
  {
LABEL_26:
    v19 = 1;
    goto LABEL_9;
  }

  sub_1000F5104(&qword_100940368, &qword_10079FBE8);
  v69 = swift_initStackObject();
  *(v69 + 16) = xmmword_100792CE0;
  __chkstk_darwin(v69, v70);
  v38 = sub_1000060C8(0, &qword_100940370, off_1008D4150);
  *&v98[-1] = v38;
  v71 = swift_getKeyPath();
  v72 = sub_1003EE11C(v71);

  *(v69 + 32) = v72;
  __chkstk_darwin(v73, v74);
  *&v98[-1] = v38;
  v75 = swift_getKeyPath();
  v76 = sub_1003EE11C(v75);

  *(v69 + 40) = v76;
  __chkstk_darwin(v77, v78);
  *&v98[-1] = v38;
  v79 = swift_getKeyPath();
  v80 = sub_1003EE130(v79);

  *(v69 + 48) = v80;
  __chkstk_darwin(v81, v82);
  *&v98[-1] = v38;
  v83 = swift_getKeyPath();
  v84 = sub_1003EE130(v83);

  *(v69 + 56) = v84;
  sub_100272410(v69);
  v85 = swift_initStackObject();
  *(v85 + 16) = xmmword_100791320;
  __chkstk_darwin(v85, v86);
  *&v98[-1] = v38;
  v87 = swift_getKeyPath();
  v88 = sub_1003EE0F0(v87);

  *(v85 + 32) = v88;
  __chkstk_darwin(v89, v90);
  *&v98[-1] = v38;
  v91 = swift_getKeyPath();
  v92 = sub_100391958(v91, 0);

  *(v85 + 40) = v92;
  __chkstk_darwin(v93, v94);
  *&v98[-1] = v38;
  v95 = swift_getKeyPath();
  v96 = sub_100391958(v95, 0);

  v45 = v85;
  v19 = 0;
  *(v85 + 48) = v96;
  v34 = 1;
LABEL_11:
  sub_100272410(v45);
  sub_1000F5104(&qword_100940368, &qword_10079FBE8);
  v46 = swift_initStackObject();
  v98[0] = xmmword_100791300;
  *(v46 + 16) = xmmword_100791300;
  __chkstk_darwin(v46, v47);
  sub_1000060C8(0, &qword_100940370, off_1008D4150);
  *&v98[-1] = v38;
  v48 = swift_getKeyPath();
  v49 = sub_1003F71F8(v48);

  *(v46 + 32) = v49;
  sub_100272410(v46);
  if (v34)
  {
    v50 = swift_initStackObject();
    *(v50 + 16) = v98[0];
    __chkstk_darwin(v50, v51);
    *&v98[-1] = v38;
    v52 = swift_getKeyPath();
    v53 = [objc_opt_self() localInternalAccountID];
    v54 = [v53 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = type metadata accessor for UUID();
    (*(*(v55 - 8) + 56))(v7, 0, 1, v55);
    v56 = sub_1003EE15C(v52, v7);

    *(v50 + 32) = v56;
    sub_100272410(v50);
  }

  if (v19)
  {
    v57 = swift_initStackObject();
    *(v57 + 16) = v98[0];
    __chkstk_darwin(v57, v58);
    *&v98[-1] = v38;
    v59 = swift_getKeyPath();
    v60 = sub_1003F71F8(v59);

    *(v57 + 32) = v60;
    sub_100272410(v57);
  }

  return sub_10000C2B0();
}

uint64_t sub_10029D52C(void *a1, char a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = v98 - v6;
  v99 = &_swiftEmptyArrayStorage;
  v8 = a2 >> 5;
  if (v8 <= 2)
  {
    if (v8 - 1 >= 2)
    {
      sub_1000F5104(&qword_100940348, &qword_10079FBD8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791320;
      __chkstk_darwin(inited, v21);
      v22 = sub_1000060C8(0, &qword_100940350, off_1008D4130);
      *&v98[-1] = v22;
      KeyPath = swift_getKeyPath();
      v24 = sub_10004FAEC(a1);
      v25 = sub_1003EF758(KeyPath, v24);

      *(inited + 32) = v25;
      __chkstk_darwin(v26, v27);
      *&v98[-1] = v22;
      v28 = swift_getKeyPath();
      v29 = sub_1003EF800(v28);

      *(inited + 40) = v29;
      __chkstk_darwin(v30, v31);
      *&v98[-1] = v22;
      v32 = swift_getKeyPath();
      v33 = sub_100392868(v32, 0);

      *(inited + 48) = v33;
    }

    else
    {
      sub_1000F5104(&qword_100940348, &qword_10079FBD8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100791300;
      __chkstk_darwin(inited, v10);
      *&v98[-1] = sub_1000060C8(0, &qword_100940350, off_1008D4130);
      v11 = swift_getKeyPath();
      v12 = sub_10004FAEC(a1);
      v13 = sub_1003EF758(v11, v12);

      *(inited + 32) = v13;
    }

    sub_100272900(inited);
    v19 = 0;
    goto LABEL_9;
  }

  if (v8 == 3)
  {
    sub_1000F5104(&qword_100940348, &qword_10079FBD8);
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_100791340;
    __chkstk_darwin(v62, v63);
    v38 = sub_1000060C8(0, &qword_100940350, off_1008D4130);
    *&v98[-1] = v38;
    v64 = swift_getKeyPath();
    v65 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = type metadata accessor for UUID();
    v34 = 1;
    (*(*(v66 - 8) + 56))(v7, 0, 1, v66);
    v67 = sub_10039287C(v64, v7);

    *(v62 + 32) = v67;
    v68 = sub_10029AF08(a2 & 1);
    v45 = v62;
    v19 = 0;
    *(v62 + 40) = v68;
    goto LABEL_11;
  }

  if (v8 == 4)
  {
    sub_1000F5104(&qword_100940348, &qword_10079FBD8);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_100791300;
    __chkstk_darwin(v14, v15);
    *&v98[-1] = sub_1000060C8(0, &qword_100940350, off_1008D4130);
    v16 = swift_getKeyPath();
    v17 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = type metadata accessor for UUID();
    v19 = 1;
    (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
    v20 = sub_10039287C(v16, v7);

    *(v14 + 32) = v20;
    sub_100272900(v14);
LABEL_9:
    v34 = 1;
LABEL_10:
    sub_1000F5104(&qword_100940348, &qword_10079FBD8);
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_100791320;
    *(v35 + 32) = sub_10001035C(0);
    *(v35 + 40) = sub_10029A568(0x6D72616C61, 0xE500000000000000);
    *(v35 + 48) = sub_10029A568(0x65722E6D72616C61, 0xEE007265646E696DLL);
    sub_100272900(v35);
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_100791340;
    __chkstk_darwin(v36, v37);
    v38 = sub_1000060C8(0, &qword_100940350, off_1008D4130);
    *&v98[-1] = v38;
    v39 = swift_getKeyPath();
    v40 = sub_1003F7204(v39);

    *(v36 + 32) = v40;
    __chkstk_darwin(v41, v42);
    *&v98[-1] = v38;
    v43 = swift_getKeyPath();
    v44 = sub_1003F7204(v43);

    v45 = v36;
    *(v36 + 40) = v44;
    goto LABEL_11;
  }

  if (__PAIR128__(-96, 2) < __PAIR128__(a2, a1))
  {
    if (a2 == 160 && a1 == 3)
    {
      v34 = 0;
      v19 = 1;
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  if (__PAIR128__(((a1 != 0) + a2 + 95), a1 - 1) < 2)
  {
LABEL_26:
    v19 = 1;
    goto LABEL_9;
  }

  sub_1000F5104(&qword_100940348, &qword_10079FBD8);
  v69 = swift_initStackObject();
  *(v69 + 16) = xmmword_100792CE0;
  __chkstk_darwin(v69, v70);
  v38 = sub_1000060C8(0, &qword_100940350, off_1008D4130);
  *&v98[-1] = v38;
  v71 = swift_getKeyPath();
  v72 = sub_1003EFC5C(v71);

  *(v69 + 32) = v72;
  __chkstk_darwin(v73, v74);
  *&v98[-1] = v38;
  v75 = swift_getKeyPath();
  v76 = sub_1003EFC5C(v75);

  *(v69 + 40) = v76;
  __chkstk_darwin(v77, v78);
  *&v98[-1] = v38;
  v79 = swift_getKeyPath();
  v80 = sub_1003F07AC(v79);

  *(v69 + 48) = v80;
  __chkstk_darwin(v81, v82);
  *&v98[-1] = v38;
  v83 = swift_getKeyPath();
  v84 = sub_1003F07AC(v83);

  *(v69 + 56) = v84;
  sub_100272900(v69);
  v85 = swift_initStackObject();
  *(v85 + 16) = xmmword_100791320;
  __chkstk_darwin(v85, v86);
  *&v98[-1] = v38;
  v87 = swift_getKeyPath();
  v88 = sub_1003EF800(v87);

  *(v85 + 32) = v88;
  __chkstk_darwin(v89, v90);
  *&v98[-1] = v38;
  v91 = swift_getKeyPath();
  v92 = sub_100392868(v91, 0);

  *(v85 + 40) = v92;
  __chkstk_darwin(v93, v94);
  *&v98[-1] = v38;
  v95 = swift_getKeyPath();
  v96 = sub_100392868(v95, 0);

  v45 = v85;
  v19 = 0;
  *(v85 + 48) = v96;
  v34 = 1;
LABEL_11:
  sub_100272900(v45);
  sub_1000F5104(&qword_100940348, &qword_10079FBD8);
  v46 = swift_initStackObject();
  v98[0] = xmmword_100791300;
  *(v46 + 16) = xmmword_100791300;
  __chkstk_darwin(v46, v47);
  sub_1000060C8(0, &qword_100940350, off_1008D4130);
  *&v98[-1] = v38;
  v48 = swift_getKeyPath();
  v49 = sub_1003F7204(v48);

  *(v46 + 32) = v49;
  sub_100272900(v46);
  if (v34)
  {
    v50 = swift_initStackObject();
    *(v50 + 16) = v98[0];
    __chkstk_darwin(v50, v51);
    *&v98[-1] = v38;
    v52 = swift_getKeyPath();
    v53 = [objc_opt_self() localInternalAccountID];
    v54 = [v53 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = type metadata accessor for UUID();
    (*(*(v55 - 8) + 56))(v7, 0, 1, v55);
    v56 = sub_1003EF884(v52, v7);

    *(v50 + 32) = v56;
    sub_100272900(v50);
  }

  if (v19)
  {
    v57 = swift_initStackObject();
    *(v57 + 16) = v98[0];
    __chkstk_darwin(v57, v58);
    *&v98[-1] = v38;
    v59 = swift_getKeyPath();
    v60 = sub_1003F7204(v59);

    *(v57 + 32) = v60;
    sub_100272900(v57);
  }

  return sub_10000C2B0();
}

id sub_10029E108@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reminder];
  *a2 = result;
  return result;
}

void sub_10029E15C(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

void sub_10029E298(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 originalAlarmUID];
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

void sub_10029E300(uint64_t a1, void **a2)
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
  [v2 setOriginalAlarmUID:?];
}

uint64_t sub_10029E370@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

id sub_10029E414@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 list];
  *a2 = result;
  return result;
}

unint64_t sub_10029E464(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10029E4FC(uint64_t a1, uint64_t a2, unint64_t a3, _TtC7remindd19RDXPCStorePerformer **a4)
{
  v5 = a3 >> 1;
  v6 = (a3 >> 1) - a2;
  if (a3 >> 1 != a2)
  {
    if (a2 > v5)
    {
      v5 = a2;
    }

    v8 = v5 - a2;
    v9 = (a1 + 8 * a2);
    while (v8)
    {
      v11 = *v9;
      v10 = v11;
      sub_1002990FC(&v11, a4);

      if (!v4)
      {
        --v8;
        ++v9;
        if (--v6)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_10029E5BC(uint64_t a1)
{
  v2 = sub_10029BD74(0, 160);
  sub_1000060C8(0, &unk_100940330, off_1008D4148);
  v3 = [objc_allocWithZone(NSFetchRequest) init];
  v4 = [swift_getObjCClassFromMetadata() entity];
  [v3 setEntity:v4];

  [v3 setAffectedStores:0];
  [v3 setPredicate:v2];

  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v3 setAffectedStores:isa];

  [v3 setFetchLimit:a1];
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007953F0;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v6 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  v7 = Array._bridgeToObjectiveC()().super.isa;
  v6, v8, v9, v10, v11, v12, v13, v14;
  [v3 setSortDescriptors:v7];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v39 = &_swiftEmptyArrayStorage;
  sub_100010D04(0, 1, 0);
  v16 = &_swiftEmptyArrayStorage;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  v17 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v18)
  {
LABEL_18:
    *&v37 = 0;
    *(&v37 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v36._object = 0x80000001007EC120;
    v36._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v36);
    sub_1000F5104(&qword_100940340, &unk_10079F3A0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v19 = v17;
  v20 = v18;
  v38 = &type metadata for String;

  *&v37 = v19;
  *(&v37 + 1) = v20;
  v22 = *_swiftEmptyArrayStorage.clientIdentity;
  v21 = *&_swiftEmptyArrayStorage.clientIdentity[8];
  if (v22 >= v21 >> 1)
  {
    sub_100010D04((v21 > 1), v22 + 1, 1);
    v16 = v39;
  }

  *v16->clientIdentity = v22 + 1;
  sub_100005EE0(&v37, &v16->clientIdentity[32 * v22 + 16]);
  swift_setDeallocating();
  swift_arrayDestroy();
  v23 = Array._bridgeToObjectiveC()().super.isa;

  [v3 setPropertiesToFetch:v23];

  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1007953F0;
  *(v24 + 32) = swift_getKeyPath();
  v39 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, 1, 0);
  v25 = v39;
  if ((v24 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  v26 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v27)
  {
    goto LABEL_18;
  }

  v28 = v26;
  v29 = v27;

  v31 = *v25->clientIdentity;
  v30 = *&v25->clientIdentity[8];
  if (v31 >= v30 >> 1)
  {
    sub_100026EF4((v30 > 1), v31 + 1, 1);
    v25 = v39;
  }

  *v25->clientIdentity = v31 + 1;
  v32 = v25 + 16 * v31;
  *(v32 + 4) = v28;
  *(v32 + 5) = v29;
  swift_setDeallocating();
  swift_arrayDestroy();
  v33 = Array._bridgeToObjectiveC()().super.isa;

  [v3 setRelationshipKeyPathsForPrefetching:v33];

  v34 = NSManagedObjectContext.fetch<A>(_:)();
  return v34;
}

uint64_t sub_10029EB68()
{
  v1 = [v0 activityTypeRawValue];
  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return (0x20504030100uLL >> (8 * v1));
  }
}

uint64_t sub_10029EBB0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100940398);
  v1 = sub_100006654(v0, qword_100940398);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_10029EC9C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10079FF06[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10029ED24(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10079FF06[v2]);
  return Hasher._finalize()();
}

uint64_t sub_10029ED70@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002A0D94(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10029EDB4()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000018;
  v4 = 0xD000000000000018;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6579297;
  if (v1 != 1)
  {
    v5 = 0x6574656C706D6F63;
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

id sub_10029EE80()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v160 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v11, v12).n128_u64[0];
  v15 = &v160 - v14;
  v16 = [v0 accountIdentifier];
  if (!v16)
  {
    v36 = objc_opt_self();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    __chkstk_darwin(ObjCClassFromMetadata, v38);
    KeyPath = swift_getKeyPath();
    sub_1003AB82C(KeyPath);
    v41 = v40;

    v42 = String._bridgeToObjectiveC()();
    v41, v43, v44, v45, v46, v47, v48, v49;
    v50 = [v36 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v42];
LABEL_7:
    v50;

    swift_willThrow();
    goto LABEL_17;
  }

  v17 = v16;
  v18 = [v0 activityDate];
  if (!v18)
  {

    v51 = objc_opt_self();
    v52 = swift_getObjCClassFromMetadata();
    __chkstk_darwin(v52, v53);
    v54 = swift_getKeyPath();
    sub_1003AB82C(v54);
    v56 = v55;

    v42 = String._bridgeToObjectiveC()();
    v56, v57, v58, v59, v60, v61, v62, v63;
    v50 = [v51 unexpectedNilPropertyWithClass:v52 property:v42];
    goto LABEL_7;
  }

  v19 = v18;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = sub_10029EB68();
  if (v20 == 6 || (v64 = v20, (v65 = [v1 authorUserRecordIDString]) == 0))
  {

    v21 = objc_opt_self();
    v22 = swift_getObjCClassFromMetadata();
    __chkstk_darwin(v22, v23);
    v24 = swift_getKeyPath();
    sub_1003AB82C(v24);
    v26 = v25;

    v27 = String._bridgeToObjectiveC()();
    v26, v28, v29, v30, v31, v32, v33, v34;
    v35 = [v21 unexpectedNilPropertyWithClass:v22 property:v27];
  }

  else
  {
    v66 = v65;
    v67 = [v1 ckIdentifier];
    if (v67)
    {
      v167 = v67;
      v68 = [v1 sharedEntityName];
      if (v68)
      {
        v166 = v68;
        (*(v7 + 16))(v10, v15, v6);
        v165 = qword_10079FEC8[v64];
        v69 = [v1 ckParentCloudObjectEntityName];
        if (v69)
        {
          v70 = v69;
          v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v164 = v71;
        }

        else
        {
          v161 = 0;
          v164 = 0;
        }

        v126 = [v1 ckParentCloudObjectIdentifier];
        if (v126)
        {
          v127 = v126;
          v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v163 = v128;
        }

        else
        {
          v160 = 0;
          v163 = 0;
        }

        v129 = [v1 uuidForChangeTracking];
        if (v129)
        {
          v130 = v129;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v131 = 0;
        }

        else
        {
          v131 = 1;
        }

        v132 = type metadata accessor for UUID();
        v133 = *(v132 - 8);
        (*(v133 + 56))(v5, v131, 1, v132);
        isa = Date._bridgeToObjectiveC()().super.isa;
        v134 = v164;
        if (v164)
        {
          v161 = String._bridgeToObjectiveC()();
          v134, v135, v136, v137, v138, v139, v140, v141;
          v142 = v163;
          if (v163)
          {
LABEL_32:
            v164 = String._bridgeToObjectiveC()();
            v142, v143, v144, v145, v146, v147, v148, v149;
LABEL_35:
            if ((*(v133 + 48))(v5, 1, v132) == 1)
            {
              v150 = 0;
            }

            else
            {
              v150 = UUID._bridgeToObjectiveC()().super.isa;
              (*(v133 + 8))(v5, v132);
            }

            v163 = v150;
            v151 = objc_allocWithZone(REMSharedEntitySyncActivity);
            v159 = v150;
            v152 = v167;
            v154 = v161;
            v153 = isa;
            v155 = v66;
            v156 = v66;
            v157 = v164;
            v165 = [v151 initWithAccountIdentifier:v17 activityDate:isa activityType:v165 authorUserRecordIDString:v155 ckParentCloudObjectEntityName:v161 ckParentCloudObjectIdentifier:v164 ckIdentifier:v167 sharedEntityName:v166 uuidForChangeTracking:v159];

            v158 = *(v7 + 8);
            v158(v10, v6);
            v158(v15, v6);
            return v165;
          }
        }

        else
        {
          v161 = 0;
          v142 = v163;
          if (v163)
          {
            goto LABEL_32;
          }
        }

        v164 = 0;
        goto LABEL_35;
      }

      v85 = objc_opt_self();
      v86 = swift_getObjCClassFromMetadata();
      __chkstk_darwin(v86, v87);
      v88 = swift_getKeyPath();
      sub_1003AB82C(v88);
      v90 = v89;

      v27 = String._bridgeToObjectiveC()();
      v90, v91, v92, v93, v94, v95, v96, v97;
      v35 = [v85 unexpectedNilPropertyWithClass:v86 property:v27];
    }

    else
    {

      v72 = objc_opt_self();
      v73 = swift_getObjCClassFromMetadata();
      __chkstk_darwin(v73, v74);
      v75 = swift_getKeyPath();
      sub_1003AB82C(v75);
      v77 = v76;

      v27 = String._bridgeToObjectiveC()();
      v77, v78, v79, v80, v81, v82, v83, v84;
      v35 = [v72 unexpectedNilPropertyWithClass:v73 property:v27];
    }
  }

  v35;

  swift_willThrow();
  (*(v7 + 8))(v15, v6);
LABEL_17:
  if (qword_100935DF8 != -1)
  {
    swift_once();
  }

  v98 = type metadata accessor for Logger();
  sub_100006654(v98, qword_100940398);
  swift_errorRetain();
  v99 = v1;
  v100 = Logger.logObject.getter();
  v101 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v168[0] = swift_slowAlloc();
    *v102 = 136315650;
    *(v102 + 4) = sub_10000668C(0xD000000000000014, 0x80000001007F34A0, v168);
    *(v102 + 12) = 2082;
    swift_getErrorValue();
    v103 = Error.rem_errorDescription.getter();
    v105 = v104;
    v106 = sub_10000668C(v103, v104, v168);
    v105, v107, v108, v109, v110, v111, v112, v113;
    *(v102 + 14) = v106;
    *(v102 + 22) = 2082;
    v114 = sub_10029FB20();
    v116 = v115;
    v117 = sub_10000668C(v114, v115, v168);
    v116, v118, v119, v120, v121, v122, v123, v124;
    *(v102 + 24) = v117;
    _os_log_impl(&_mh_execute_header, v100, v101, "📓 %s: An unexpected error occurred {description: %{public}s, activityObject: %{public}s}", v102, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10029F930@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 activityDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_10029F9D4(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_10012F78C(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setActivityDate:isa];
}

uint64_t sub_10029FB20()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v46 - v11;
  sub_1000F5104(&qword_100939EB0, &qword_1007989A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100792CF0;
  v14 = [v0 accountIdentifier];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  *(v13 + 56) = &type metadata for String;
  v19 = sub_100006600();
  *(v13 + 64) = v19;
  if (v18)
  {
    v20 = v16;
  }

  else
  {
    v20 = 7104878;
  }

  v21 = 0xE300000000000000;
  if (v18)
  {
    v21 = v18;
  }

  *(v13 + 32) = v20;
  *(v13 + 40) = v21;
  v22 = sub_10029EB68();
  if (v22 <= 2)
  {
    if (v22)
    {
      if (v22 == 1)
      {
        v24 = 0xE300000000000000;
        v25 = 6579297;
      }

      else
      {
        v24 = 0xE800000000000000;
        v25 = 0x6574656C706D6F63;
      }
    }

    else
    {
      v24 = 0xE700000000000000;
      v25 = 0x6E776F6E6B6E75;
    }

    goto LABEL_22;
  }

  if (v22 <= 4)
  {
    if (v22 == 3)
    {
      v23 = "titleMayHaveDirtyHashtag";
    }

    else
    {
      v23 = "notesMayHaveDirtyHashtag";
    }

    v24 = (v23 - 32) | 0x8000000000000000;
    v25 = 0xD000000000000018;
    goto LABEL_22;
  }

  if (v22 == 5)
  {
    v24 = 0x80000001007F3370;
    v25 = 0xD00000000000001BLL;
LABEL_22:
    *(v13 + 96) = &type metadata for String;
    *(v13 + 104) = v19;
    *(v13 + 72) = v25;
    goto LABEL_23;
  }

  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v19;
  v24 = 0xE300000000000000;
  *(v13 + 72) = 7104878;
LABEL_23:
  *(v13 + 80) = v24;
  v26 = [v0 ckIdentifier];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = (v13 + 112);
    *(v13 + 136) = &type metadata for String;
    *(v13 + 144) = v19;
    if (v30)
    {
      *v31 = v28;
      goto LABEL_28;
    }
  }

  else
  {
    v31 = (v13 + 112);
    *(v13 + 136) = &type metadata for String;
    *(v13 + 144) = v19;
  }

  *v31 = 7104878;
  v30 = 0xE300000000000000;
LABEL_28:
  *(v13 + 120) = v30;
  v32 = [v0 sharedEntityName];
  if (v32)
  {
    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = (v13 + 152);
    *(v13 + 176) = &type metadata for String;
    *(v13 + 184) = v19;
    if (v36)
    {
      *v37 = v34;
      goto LABEL_33;
    }
  }

  else
  {
    v37 = (v13 + 152);
    *(v13 + 176) = &type metadata for String;
    *(v13 + 184) = v19;
  }

  *v37 = 7104878;
  v36 = 0xE300000000000000;
LABEL_33:
  *(v13 + 160) = v36;
  v38 = [v0 uuidForChangeTracking];
  if (v38)
  {
    v39 = v38;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v2 + 56))(v8, 0, 1, v1);
  }

  else
  {
    (*(v2 + 56))(v8, 1, 1, v1);
  }

  sub_100100FB4(v8, v12);
  if ((*(v2 + 48))(v12, 1, v1))
  {
    sub_1000050A4(v12, &unk_100939D90, "8\n\r");
    v40 = (v13 + 192);
    *(v13 + 216) = &type metadata for String;
    *(v13 + 224) = v19;
  }

  else
  {
    v42 = v47;
    (*(v2 + 16))(v47, v12, v1);
    sub_1000050A4(v12, &unk_100939D90, "8\n\r");
    v43 = UUID.uuidString.getter();
    v41 = v44;
    (*(v2 + 8))(v42, v1);
    v40 = (v13 + 192);
    *(v13 + 216) = &type metadata for String;
    *(v13 + 224) = v19;
    if (v41)
    {
      *v40 = v43;
      goto LABEL_41;
    }
  }

  *v40 = 7104878;
  v41 = 0xE300000000000000;
LABEL_41:
  *(v13 + 200) = v41;
  return String.init(format:_:)();
}

void sub_1002A0038(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  *&v7 = __chkstk_darwin(v4, v6).n128_u64[0];
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 accountIdentifier];
  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    v10 = String._bridgeToObjectiveC()();
    v12, v13, v14, v15, v16, v17, v18, v19;
  }

  [v2 setAccountIdentifier:v10];

  v20 = [a1 activityDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v9, v4);
  [v2 setActivityDate:isa];

  [v2 setActivityTypeRawValue:{word_10079FF06[sub_1002A0DC0(objc_msgSend(a1, "activityType"))]}];
  v22 = [a1 authorUserRecordIDString];
  if (!v22)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
    v22 = String._bridgeToObjectiveC()();
    v24, v25, v26, v27, v28, v29, v30, v31;
  }

  [v2 setAuthorUserRecordIDString:v22];

  v32 = [a1 ckParentCloudObjectEntityName];
  [v2 setCkParentCloudObjectEntityName:v32];

  v33 = [a1 ckParentCloudObjectIdentifier];
  [v2 setCkParentCloudObjectIdentifier:v33];

  v34 = [a1 ckIdentifier];
  if (!v34)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    v34 = String._bridgeToObjectiveC()();
    v36, v37, v38, v39, v40, v41, v42, v43;
  }

  [v2 setCkIdentifier:v34];

  v44 = [a1 sharedEntityName];
  if (!v44)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;
    v44 = String._bridgeToObjectiveC()();
    v46, v47, v48, v49, v50, v51, v52, v53;
  }

  [v2 setSharedEntityName:v44];
}