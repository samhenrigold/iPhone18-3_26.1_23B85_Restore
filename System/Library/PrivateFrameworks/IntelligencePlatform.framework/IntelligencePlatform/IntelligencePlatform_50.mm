uint64_t sub_1ABE4C0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t type metadata accessor for SearchableViewDatabaseTable(uint64_t a1)
{
  result = qword_1ED871B58;
  if (!qword_1ED871B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1ABE4C1D0(uint64_t a1)
{
  sub_1ABB2CA7C();
  if (v1 <= 0x3F)
  {
    sub_1ABB2CAD4(319);
    if (v2 <= 0x3F)
    {
      sub_1ABE4C274();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1ABE4C274()
{
  if (!qword_1ED871B00)
  {
    v0 = sub_1ABF241F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED871B00);
    }
  }
}

uint64_t sub_1ABE4C2C4(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v4 = v5;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_9:
      result = sub_1ABE4FBC4(result, v4);
      break;
    case 3uLL:
      result = 0;
      v2 = 0;
      goto LABEL_5;
    default:
      v2 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1ABE4FB48(result, v2);
      break;
  }

  return result;
}

uint64_t SemanticSearchServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t static SemanticSearchService.SemanticSearchOptions.defaultSemanticSearchOptions.getter()
{
  v0 = type metadata accessor for SemanticSearchService.SemanticSearchOptions();

  return MEMORY[0x1EEE6C000](v0, &unk_1EB4D04C0);
}

uint64_t SemanticSearchService.__allocating_init(options:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SemanticSearchService.init(options:)(a1);
  return v2;
}

uint64_t SemanticSearchService.init(options:)(uint64_t a1)
{
  v42 = a1;
  v2 = v1;
  v43[1] = *MEMORY[0x1E69E9840];
  sub_1ABF230A4();
  sub_1ABA7BB64();
  v38 = v4;
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v7 = v6 - v5;
  v8 = sub_1ABF21CF4();
  v9 = sub_1ABA7AB80(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  sub_1ABF23074();
  sub_1ABA7BB64();
  v40 = v11;
  v41 = v10;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7AC18();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = type metadata accessor for ViewService();
  v19 = static ViewService.clientService.getter(v18);
  *(v1 + 16) = v19;
  v20 = (v1 + 16);
  v21 = *(v19 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  swift_unknownObjectRetain();
  v22 = sub_1ABF23BD4();
  v43[0] = 0;
  v23 = [v21 requestAssertionForViewName:v22 error:v43];
  swift_unknownObjectRelease();

  v24 = v43[0];
  if (!v23)
  {
    v35 = v43[0];
    sub_1ABF21BE4();

    swift_willThrow();
LABEL_6:

    type metadata accessor for SemanticSearchService();
    swift_deallocPartialClassInstance();
    return v2;
  }

  *(v2 + 40) = v42;
  v25 = objc_allocWithZone(MEMORY[0x1E696AB78]);

  v26 = v24;
  v27 = [v25 init];
  *(v2 + 48) = v27;
  v20 = (v2 + 48);
  v28 = v27;
  v29 = sub_1ABF23BD4();
  [v28 setDateFormat_];

  v30 = [objc_opt_self() contextualEmbeddingWithLanguage_];
  if (!v30)
  {
    sub_1ABE4C94C();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_6;
  }

  *(v2 + 24) = v30;
  v31 = v30;
  v32 = [v23 viewArtifactURL];
  sub_1ABF21CA4();

  (*(v38 + 104))(v7, *MEMORY[0x1E69DF528], v39);
  [*(v2 + 24) sentenceVectorDimension];
  sub_1ABF23054();
  v34 = v40;
  v33 = v41;
  (*(v40 + 16))(v14, v17, v41);
  sub_1ABF23044();
  swift_allocObject();
  *(v2 + 32) = sub_1ABF22FF4();
  sub_1ABF23024();

  swift_unknownObjectRelease();
  (*(v34 + 8))(v17, v33);
  return v2;
}

unint64_t sub_1ABE4C94C()
{
  result = qword_1EB4DB010;
  if (!qword_1EB4DB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB010);
  }

  return result;
}

id *SemanticSearchService.deinit()
{

  sub_1ABF23034();

  return v0;
}

uint64_t SemanticSearchService.__deallocating_deinit()
{
  SemanticSearchService.deinit();

  return swift_deallocClassInstance();
}

id sub_1ABE4CA38(uint64_t a1, unint64_t a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 24);
  v6 = [v5 maximumSequenceLength];

  v7 = sub_1ABD52B98(v6, a1, a2);
  v8 = MEMORY[0x1AC5A9330](v7);
  v10 = v9;

  v11 = *MEMORY[0x1E6977748];
  v20[0] = 0;
  v12 = sub_1ABE4FC60(v8, v10, v11, v20, v5);
  if (v12)
  {
    v13 = v12;
    v14 = v20[0];
    v15 = sub_1ABF21DD4();
    v17 = v16;

    v18 = sub_1ABE4C2C4(v15, v17);
    sub_1ABA96210(v15, v17);
  }

  else
  {
    v18 = v20[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  return v18;
}

void *sub_1ABE4CB84@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result && (v4 = result, v5 = a2 - result, (a2 - result + 3) >= 7))
  {
    v7 = v5 / 4;
    if (v5 <= 3)
    {
      v8 = 4 * v7;
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1ABAD219C(&qword_1EB4D1360, &unk_1ABF41170);
      v8 = 4 * v7;
      v6 = swift_allocObject();
      v9 = j__malloc_size(v6);
      v6[2] = v7;
      v6[3] = 2 * ((v9 - 32) / 4);
    }

    result = memcpy(v6 + 4, v4, v8);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v6;
  return result;
}

char *sub_1ABE4CC54(uint64_t *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v4 = sub_1ABA7AB80(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7AC18();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v115 - v9;
  v11 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v126 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7AC18();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v14);
  v120 = &v115 - v15;
  sub_1ABA8409C();
  v136 = sub_1ABF223D4();
  sub_1ABA7BB64();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v135 = v20 - v19;
  sub_1ABA8409C();
  v138 = sub_1ABF23144();
  sub_1ABA7BB64();
  v125 = v21;
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7BC58();
  v137 = (v24 - v23);
  sub_1ABA8409C();
  v25 = sub_1ABF23134();
  v26 = sub_1ABA7AB80(v25);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7BC58();
  v139 = v28 - v27;
  sub_1ABA8409C();
  sub_1ABF23094();
  sub_1ABA7BB64();
  v140 = v29;
  v141 = v30;
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7AC18();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v32);
  if (a1)
  {
    v1 = &v115 - v33;
    v116 = v10;
    v117 = v7;
    v34 = a1[2];
    v121 = a1;
    v118 = v11;
    if (v34 && (v35 = *(v34 + 16)) != 0)
    {
      v36 = (v34 + 32);
      v134 = *MEMORY[0x1E69DF5B8];
      v132 = *(v125 + 104);
      v133 = v125 + 104;
      v131 = *MEMORY[0x1E69DF550];
      v130 = (v17 + 8);
      v129 = *MEMORY[0x1E69DF5D8];
      v128 = v141 + 32;
      v37 = MEMORY[0x1E69E7CC0];
      v127 = xmmword_1ABF34740;
      v38 = v135;
      do
      {
        v39 = *v36;
        v142 = v36 + 1;
        v41 = v137;
        v40 = v138;
        *v137 = 0;
        v41[1] = 0;
        v132(v41, v134, v40);
        sub_1ABF23124();
        sub_1ABAD219C(&qword_1EB4DB048, &qword_1ABF6C720);
        v42 = (sub_1ABAD219C(&unk_1EB4DB050, &unk_1ABF6C728) - 8);
        v43 = v37;
        v44 = (*(*v42 + 80) + 32) & ~*(*v42 + 80);
        v45 = swift_allocObject();
        *(v45 + 16) = v127;
        v46 = v45 + v44;
        v47 = (v46 + v42[14]);
        sub_1ABF23114();
        sub_1ABA7BBB0();
        (*(v48 + 104))(v46, v131);
        v143 = 37;
        v144 = 0xE100000000000000;
        MEMORY[0x1AC5AA830](v39);
        sub_1ABB8087C();
        v49 = v136;
        v50 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v50);
        v37 = v43;

        (*v130)(v38, v49);
        MEMORY[0x1AC5A9410](37, 0xE100000000000000);
        v51 = v144;
        *v47 = v143;
        v47[1] = v51;
        v52 = sub_1ABF23154();
        sub_1ABA7BBB0();
        (*(v53 + 104))(v47, v129, v52);
        v54 = sub_1ABA94D60();
        sub_1ABA7B9B4(v54, v55, v56, v52);
        sub_1ABF23084();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABADCAA8();
          v37 = v61;
        }

        v58 = *(v37 + 2);
        v57 = *(v37 + 3);
        if (v58 >= v57 >> 1)
        {
          sub_1ABA7BBEC(v57);
          sub_1ABADCAA8();
          v37 = v62;
        }

        *(v37 + 2) = v58 + 1;
        sub_1ABA7AB74();
        (*(v60 + 32))(&v37[v59 + *(v60 + 72) * v58], v1);
        --v35;
        v36 = v142;
      }

      while (v35);
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC0];
    }

    a1 = v121;
    v10 = v116;
    sub_1ABAE6A34(v121 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_startFilter, v116);
    v11 = v118;
    if (sub_1ABA7E1E0(v10, 1, v118) != 1)
    {
      v63 = v126;
      v66 = v120;
      (*(v126 + 32))(v120, v10, v11);
      v68 = v137;
      v67 = v138;
      *v137 = 0;
      v68[1] = 0;
      (*(v125 + 104))(v68, *MEMORY[0x1E69DF5B8], v67);
      sub_1ABF23124();
      sub_1ABAD219C(&qword_1EB4DB048, &qword_1ABF6C720);
      sub_1ABAD219C(&unk_1EB4DB050, &unk_1ABF6C728);
      sub_1ABAA5524();
      v69 = sub_1ABA996DC();
      sub_1ABA90B70(v69, xmmword_1ABF34740);
      v70 = *MEMORY[0x1E69DF548];
      sub_1ABF23114();
      sub_1ABA7BBB0();
      (*(v71 + 104))(v37, v70);
      v72 = *(v122 + 48);
      v73 = sub_1ABF21E34();
      v74 = [v72 stringFromDate_];

      v75 = sub_1ABF23C04();
      v77 = v76;

      *a1 = v75;
      a1[1] = v77;
      v78 = *MEMORY[0x1E69DF5D8];
      v79 = sub_1ABF23154();
      sub_1ABA7BBB0();
      (*(v80 + 104))(a1, v78, v79);
      v81 = sub_1ABA94D60();
      v82 = v79;
      v37 = v1;
      sub_1ABA7B9B4(v81, v83, v84, v82);
      v85 = v119;
      sub_1ABF23084();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABADCAA8();
        v37 = v113;
      }

      v87 = *(v37 + 2);
      v86 = *(v37 + 3);
      a1 = v121;
      if (v87 >= v86 >> 1)
      {
        sub_1ABA7DC80(v86);
        sub_1ABADCAA8();
        v37 = v114;
      }

      (*(v63 + 8))(v66, v11);
      *(v37 + 2) = v87 + 1;
      (*(v141 + 32))(&v37[((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v87], v85, v140);
      v7 = v117;
      goto LABEL_22;
    }

    v63 = v126;
    v7 = v117;
  }

  else
  {
    sub_1ABA7B9B4(v10, 1, 1, v11);
    v37 = MEMORY[0x1E69E7CC0];
    v63 = v126;
  }

  sub_1ABC28C50(v10);
  if (!a1)
  {
    v64 = sub_1ABAA0A38();
    sub_1ABA7B9B4(v64, v65, 1, v11);
LABEL_23:
    sub_1ABC28C50(v7);
    return v37;
  }

LABEL_22:
  sub_1ABAE6A34(a1 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_endFilter, v7);
  v88 = sub_1ABAA0A38();
  if (sub_1ABA7E1E0(v88, v89, v11) == 1)
  {
    goto LABEL_23;
  }

  (*(v63 + 32))(v124, v7, v11);
  v91 = v137;
  v90 = v138;
  *v137 = 0;
  v91[1] = 0;
  (*(v125 + 104))(v91, *MEMORY[0x1E69DF5B8], v90);
  sub_1ABF23124();
  sub_1ABAD219C(&qword_1EB4DB048, &qword_1ABF6C720);
  sub_1ABAD219C(&unk_1EB4DB050, &unk_1ABF6C728);
  sub_1ABAA5524();
  v92 = sub_1ABA996DC();
  sub_1ABA90B70(v92, xmmword_1ABF34740);
  v93 = *MEMORY[0x1E69DF540];
  sub_1ABF23114();
  sub_1ABA7BBB0();
  (*(v94 + 104))(v37, v93);
  v95 = *(v122 + 48);
  v96 = sub_1ABF21E34();
  v97 = [v95 stringFromDate_];

  v98 = sub_1ABF23C04();
  v100 = v99;

  *a1 = v98;
  a1[1] = v100;
  v101 = *MEMORY[0x1E69DF5D8];
  v102 = sub_1ABF23154();
  sub_1ABA7BBB0();
  (*(v103 + 104))(a1, v101, v102);
  v104 = sub_1ABA94D60();
  v105 = v102;
  v37 = v1;
  sub_1ABA7B9B4(v104, v106, v107, v105);
  sub_1ABF23084();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABA7BEF0();
    sub_1ABADCAA8();
    v37 = v111;
  }

  v109 = *(v37 + 2);
  v108 = *(v37 + 3);
  if (v109 >= v108 >> 1)
  {
    sub_1ABA7DC80(v108);
    sub_1ABADCAA8();
    v37 = v112;
  }

  (*(v63 + 8))(v124, v11);
  *(v37 + 2) = v109 + 1;
  (*(v141 + 32))(&v37[((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v109], v123, v140);
  return v37;
}

uint64_t sub_1ABE4D85C(unsigned __int8 *a1, uint64_t a2)
{
  v7 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v13 = v12 - v11;
  v14 = *a1;
  v15 = *(v2 + 48);
  sub_1ABF21EA4();
  v16 = sub_1ABF21E34();
  (*(v9 + 8))(v13, v7);
  v17 = [v15 stringFromDate_];

  v18 = sub_1ABF23C04();
  v20 = v19;

  v21 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    v54 = MEMORY[0x1E69E7CC0];
    sub_1ABAAB7C8(a2);
    sub_1ABA843AC();
    while (v17 != v14)
    {
      if (v3)
      {
        v25 = MEMORY[0x1AC5AA170](v14, a2);
      }

      else
      {
        if (v14 >= *(v4 + 16))
        {
          goto LABEL_123;
        }

        v25 = *(a2 + 8 * v14 + 32);
      }

      if (__OFADD__(v14, 1))
      {
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
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
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
        goto LABEL_134;
      }

      v26 = *(v25 + 80);
      if (v26 && (*(v25 + 72) == v18 ? (v27 = v26 == v20) : (v27 = 0), !v27 && (sub_1ABF25054() & 1) != 0))
      {
        v21 = &v54;
        sub_1ABF24B94();
        sub_1ABF24BD4();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
      }

      else
      {
      }

      ++v14;
    }

    a2 = v54;
    if (!sub_1ABAAB7C8(v54))
    {
      goto LABEL_117;
    }

    sub_1ABA83CAC();
    if (v14)
    {
      v39 = MEMORY[0x1AC5AA170](0, a2);
    }

    else
    {
      v39 = *(a2 + 32);
    }

    v40 = 1;
LABEL_73:
    v33 = v39;
    for (i = v40; v21 != i; ++i)
    {
      if (v14)
      {
        sub_1ABAA4274();
        v39 = v42;
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_128;
        }

        if (i >= *(a2 + 16))
        {
          goto LABEL_133;
        }

        sub_1ABA81C80();
      }

      v40 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_125;
      }

      v43 = v33[10];
      if (v43 && (v44 = v39[10]) != 0)
      {
        v45 = v33[9] == v39[9] && v43 == v44;
        if (!v45 && (sub_1ABF25054() & 1) != 0)
        {
LABEL_92:

          goto LABEL_73;
        }
      }

      else if (!v39[8] || v33[8])
      {
        goto LABEL_92;
      }
    }

    goto LABEL_116;
  }

  if (v14 == 1)
  {
    v54 = MEMORY[0x1E69E7CC0];
    sub_1ABAAB7C8(a2);
    sub_1ABA843AC();
    while (v17 != v14)
    {
      if (v3)
      {
        v22 = MEMORY[0x1AC5AA170](v14, a2);
      }

      else
      {
        if (v14 >= *(v4 + 16))
        {
          goto LABEL_122;
        }

        v22 = *(a2 + 8 * v14 + 32);
      }

      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_120;
      }

      v23 = *(v22 + 64);
      if (v23 && (v18 == *(v22 + 56) ? (v24 = v23 == v20) : (v24 = 0), !v24 && (sub_1ABF25054() & 1) != 0))
      {
        v21 = &v54;
        sub_1ABF24B94();
        sub_1ABF24BD4();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
      }

      else
      {
      }

      ++v14;
    }

    a2 = v54;
    if (!sub_1ABAAB7C8(v54))
    {
      goto LABEL_117;
    }

    sub_1ABA83CAC();
    if (!v14)
    {
      v31 = *(a2 + 32);

      goto LABEL_49;
    }

LABEL_134:
    v31 = MEMORY[0x1AC5AA170](0, a2);
LABEL_49:
    v32 = 1;
LABEL_50:
    v33 = v31;
    for (j = v32; v21 != j; ++j)
    {
      if (v14)
      {
        sub_1ABAA4274();
        v31 = v35;
      }

      else
      {
        if ((j & 0x8000000000000000) != 0)
        {
          goto LABEL_129;
        }

        if (j >= *(a2 + 16))
        {
          goto LABEL_131;
        }

        sub_1ABA81C80();
      }

      v32 = j + 1;
      if (__OFADD__(j, 1))
      {
        goto LABEL_126;
      }

      v36 = *(v31 + 64);
      if (v36)
      {
        v37 = v33[8];
        if (!v37 || (*(v31 + 56) == v33[7] ? (v38 = v36 == v37) : (v38 = 0), !v38 && (sub_1ABF25054() & 1) != 0))
        {
LABEL_68:

          goto LABEL_50;
        }
      }

      else if (!v33[8])
      {
        goto LABEL_68;
      }
    }

    goto LABEL_116;
  }

  v54 = v21;
  v28 = sub_1ABAAB7C8(a2);
  for (k = 0; v28 != k; ++k)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      sub_1ABAA4274();
      v17 = v30;
    }

    else
    {
      if (k >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_124;
      }

      sub_1ABA81C80();
    }

    if (__OFADD__(k, 1))
    {
      goto LABEL_121;
    }

    if (v17[8])
    {
      v21 = &v54;
      sub_1ABF24B94();
      v14 = v54[2];
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
    }

    else
    {
    }
  }

  a2 = v54;
  if (sub_1ABAAB7C8(v54))
  {
    sub_1ABA83CAC();
    if (v14)
    {
      v46 = MEMORY[0x1AC5AA170](0, a2);
    }

    else
    {
      v46 = *(a2 + 32);
    }

    v47 = 1;
LABEL_97:
    v33 = v46;
    for (m = v47; v21 != m; ++m)
    {
      if (v14)
      {
        sub_1ABAA4274();
        v46 = v49;
      }

      else
      {
        if ((m & 0x8000000000000000) != 0)
        {
          goto LABEL_130;
        }

        if (m >= *(a2 + 16))
        {
          goto LABEL_132;
        }

        sub_1ABA81C80();
      }

      v47 = m + 1;
      if (__OFADD__(m, 1))
      {
        goto LABEL_127;
      }

      v50 = *(v46 + 64);
      if (v50)
      {
        v51 = v33[8];
        if (!v51 || (*(v46 + 56) == v33[7] ? (v52 = v50 == v51) : (v52 = 0), !v52 && (sub_1ABF25054() & 1) != 0))
        {
LABEL_115:

          goto LABEL_97;
        }
      }

      else if (!v33[8])
      {
        goto LABEL_115;
      }
    }

LABEL_116:

    sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
    result = swift_allocObject();
    *(result + 16) = xmmword_1ABF5FD20;
    *(result + 32) = v33;
    return result;
  }

LABEL_117:

  return MEMORY[0x1E69E7CC0];
}

uint64_t *sub_1ABE4DEAC(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v105 = a3;
  v7 = sub_1ABF23104();
  sub_1ABA7BB64();
  v109 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7AC18();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v96 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v96 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v96 - v20;
  v22 = v111;
  sub_1ABE4CA38(a1, a2);
  if (!v22)
  {
    v103 = v18;
    v106 = v15;
    v107 = v7;
    v100 = v12;
    sub_1ABE4CC54(v105);
    v23 = *(v4 + 40);
    v24 = sub_1ABF23014();
    v104 = 0;
    v12 = v24;
    v108 = v23;
    v99 = v4;

    v26 = 0;
    v27 = v12[2];
    v28 = v109;
    v110 = v109 + 8;
    v111 = v109 + 16;
    v101 = (v109 + 32);
    v102 = MEMORY[0x1E69E7CC0];
    v29 = v107;
    while (v27 != v26)
    {
      if (v26 >= v12[2])
      {
        __break(1u);
        return result;
      }

      v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v31 = *(v28 + 72);
      (*(v28 + 16))(v21, v12 + v30 + v31 * v26, v29);
      v32 = v29;
      sub_1ABF230B4();
      if (*(v108 + 24) < v33)
      {
        v98 = *v101;
        v98(v103, v21, v29);
        v35 = v102;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v35;
        *__dst = v35;
        if (isUniquelyReferenced_nonNull_native)
        {
          v29 = v32;
        }

        else
        {
          sub_1ABADED24(0, *(v35 + 16) + 1, 1);
          v29 = v107;
          v37 = *__dst;
        }

        v28 = v109;
        v39 = *(v37 + 16);
        v38 = *(v37 + 24);
        v40 = v39 + 1;
        v41 = v103;
        if (v39 >= v38 >> 1)
        {
          v42 = sub_1ABA7BBEC(v38);
          v102 = v43;
          v97 = v44;
          sub_1ABADED24(v42, v44, 1);
          v40 = v97;
          v39 = v102;
          v41 = v103;
          v29 = v107;
          v37 = *__dst;
        }

        ++v26;
        *(v37 + 16) = v40;
        v102 = v37;
        result = (v98)(v37 + v30 + v39 * v31, v41, v29);
      }

      else
      {
        sub_1ABAA5AB8();
        result = v34(v21, v29);
        ++v26;
        v28 = v109;
      }
    }

    v45 = v104;
    ViewService.semanticSearchView.getter(__dst);
    if (v45)
    {
    }

    else
    {
      v117 = *&__dst[32];
      v116[0] = *__dst;
      v116[1] = *&__dst[16];
      v46 = v102;
      v47 = *(v102 + 16);
      v48 = MEMORY[0x1E69E7CC0];
      if (v47)
      {
        v104 = 0;
        v113[0] = MEMORY[0x1E69E7CC0];
        sub_1ABADE24C(0, v47, 0);
        v49 = v113[0];
        sub_1ABA7AB74();
        v51 = v46 + v50;
        v108 = *(v28 + 72);
        v52 = *(v28 + 16);
        v54 = v106;
        v53 = v107;
        do
        {
          v52(v54, v51, v53);
          v55 = sub_1ABF230C4();
          v53 = v107;
          v56 = v55;
          sub_1ABAA5AB8();
          v57(v54, v53);
          v113[0] = v49;
          v59 = *(v49 + 16);
          v58 = *(v49 + 24);
          if (v59 >= v58 >> 1)
          {
            v60 = sub_1ABA7BBEC(v58);
            sub_1ABADE24C(v60, v59 + 1, 1);
            v53 = v107;
            v49 = v113[0];
          }

          *(v49 + 16) = v59 + 1;
          *(v49 + 8 * v59 + 32) = v56;
          v51 += v108;
          --v47;
          v54 = v106;
        }

        while (v47);
        v61 = v104;
        v48 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v49 = MEMORY[0x1E69E7CC0];
        v61 = 0;
      }

      v62 = sub_1ABE8B698(v49);
      ObjectType = swift_getObjectType();
      MEMORY[0x1EEE9AC00](ObjectType);
      v12 = &v96 - 4;
      *(&v96 - 2) = v116;
      *(&v96 - 1) = v62;
      sub_1ABAD219C(&qword_1EB4DB060, &qword_1ABF6C3B0);
      sub_1ABF22464();
      if (v61)
      {
        sub_1ABE4F588(v116);
      }

      else
      {
        sub_1ABE4F588(v116);

        v64 = v113[0];
        v65 = *(v113[0] + 16);
        v104 = 0;
        if (v65)
        {
          v115 = v48;
          sub_1ABADED04(0, v65, 0);
          v66 = v115;
          v67 = v65 - 1;
          for (i = 32; ; i += 72)
          {
            memcpy(v113, (v64 + i), sizeof(v113));
            v69 = v113[0];
            memcpy(__dst, (v64 + i), sizeof(__dst));
            sub_1ABC106B0(v113, v112);
            v115 = v66;
            v71 = *(v66 + 16);
            v70 = *(v66 + 24);
            if (v71 >= v70 >> 1)
            {
              v73 = sub_1ABA7BBEC(v70);
              sub_1ABADED04(v73, v71 + 1, 1);
              v66 = v115;
            }

            *(v66 + 16) = v71 + 1;
            v72 = v66 + 80 * v71;
            *(v72 + 32) = v69;
            memcpy((v72 + 40), __dst, 0x48uLL);
            if (!v67)
            {
              break;
            }

            --v67;
          }

          v48 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v66 = MEMORY[0x1E69E7CC0];
        }

        v74 = sub_1ABBFA960(v66);
        v112[0] = v48;
        v75 = v102;
        v76 = *(v102 + 16);
        v77 = v100;
        if (v76)
        {
          sub_1ABA7AB74();
          v79 = v75 + v78;
          v81 = *(v80 + 72);
          v82 = *(v80 + 16);
          v12 = MEMORY[0x1E69E7CC0];
          v83 = v107;
          v108 = v81;
          do
          {
            v82(v77, v79, v83);
            v84 = sub_1ABF230C4();
            if (*(v74 + 16) && (v85 = sub_1ABAFF5A4(v84), (v86 & 1) != 0))
            {
              memcpy(__dst, (*(v74 + 56) + 72 * v85), sizeof(__dst));
              sub_1ABC106B0(__dst, v113);
              v87 = sub_1ABF230C4();
              sub_1ABF230B4();
              v89 = v88;
              type metadata accessor for SemanticSearchService.SemanticSearchResult();
              v90 = swift_allocObject();
              *(v90 + 16) = v87;
              *(v90 + 24) = v89;
              memcpy((v90 + 32), __dst, 0x48uLL);
              sub_1ABAA5AB8();
              v92 = v91(v77, v107);
              MEMORY[0x1AC5A9710](v92);
              v93 = *((v112[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((v112[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v93 >> 1)
              {
                sub_1ABA7BBEC(v93);
                sub_1ABF24134();
              }

              sub_1ABF24184();
              v12 = v112[0];
              v83 = v107;
              v81 = v108;
            }

            else
            {
              sub_1ABAA5AB8();
              v83 = v107;
              v94(v77, v107);
            }

            v79 += v81;
            --v76;
          }

          while (v76);
        }

        else
        {

          v12 = MEMORY[0x1E69E7CC0];
        }

        if (v105 && *(v105 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_orderAndLimit) != 3)
        {
          __dst[0] = *(v105 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_orderAndLimit);
          v95 = sub_1ABE4D85C(__dst, v12);

          return v95;
        }
      }
    }
  }

  return v12;
}

uint64_t SemanticSearchService.SemanticSearchResult.__allocating_init(assetId:similarity:semanticSearchItem:)(uint64_t a1, const void *a2, float a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  memcpy((v6 + 32), a2, 0x48uLL);
  return v6;
}

uint64_t SemanticSearchService.SemanticSearchOptions.__allocating_init(maxResults:similarityThreshold:)(uint64_t a1, float a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t SemanticSearchService.SemanticSearchOptions.init(maxResults:similarityThreshold:)(uint64_t a1, float a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t SemanticSearchService.SemanticSearchFilters.__allocating_init(entityIds:startFilter:endFilter:orderAndLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = swift_allocObject();
  SemanticSearchService.SemanticSearchFilters.init(entityIds:startFilter:endFilter:orderAndLimit:)(a1, a2, a3, a4);
  return v8;
}

uint64_t SemanticSearchService.SemanticSearchFilters.init(entityIds:startFilter:endFilter:orderAndLimit:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = *a4;
  *(v4 + 16) = a1;
  sub_1ABAE84E0(a2, v4 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_startFilter);
  sub_1ABAE84E0(a3, v4 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_endFilter);
  *(v4 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_orderAndLimit) = v6;
  return v4;
}

IntelligencePlatform::SemanticSearchService::SemanticSearchFilters::OrderAndLimit_optional __swiftcall SemanticSearchService.SemanticSearchFilters.OrderAndLimit.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SemanticSearchService.SemanticSearchFilters.OrderAndLimit.rawValue.getter()
{
  v1 = 1954047342;
  if (*v0 != 1)
  {
    v1 = 0x7473726966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953718636;
  }
}

uint64_t sub_1ABE4E9A8@<X0>(uint64_t *a1@<X8>)
{
  result = SemanticSearchService.SemanticSearchFilters.OrderAndLimit.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1ABE4E9E0()
{
  v1 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v2 = sub_1ABA7AB80(v1);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7AC18();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = *(v0 + 16);
  if (v9 && *(v9 + 16))
  {
    return 0;
  }

  sub_1ABAE6A34(v0 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_startFilter, &v16 - v7);
  v10 = sub_1ABF21EB4();
  v11 = sub_1ABA7E1E0(v8, 1, v10);
  sub_1ABC28C50(v8);
  if (v11 != 1)
  {
    return 0;
  }

  sub_1ABAE6A34(v0 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_endFilter, v5);
  v12 = sub_1ABAA0A38();
  v14 = sub_1ABA7E1E0(v12, v13, v10);
  sub_1ABC28C50(v5);
  return v14 == 1 && *(v0 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_orderAndLimit) == 3;
}

uint64_t sub_1ABE4EB18()
{
  v1 = v0;
  v2 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7AC18();
  v65 = (v4 - v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v62 - v7;
  sub_1ABF21EB4();
  sub_1ABA7BB64();
  v67 = v9;
  v68 = v10;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7AC18();
  v66 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v62 - v14;
  sub_1ABA8409C();
  v15 = sub_1ABF223D4();
  sub_1ABA7BB64();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v21 = (v20 - v19);
  v22 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v23 = sub_1ABF23BD4();
  [v22 setDateFormat_];

  v24 = *(v1 + 16);
  if (v24)
  {
    v63 = v22;
    strcpy(v70, "EntityIds: ");
    HIDWORD(v70[1]) = -352321536;
    v25 = *(v24 + 16);
    v26 = MEMORY[0x1E69E7CC0];
    if (v25)
    {
      v62 = v1;
      v69 = MEMORY[0x1E69E7CC0];
      sub_1ABADDBF4(0, v25, 0);
      v26 = v69;
      v27 = (v24 + 32);
      do
      {
        v28 = *v27++;
        MEMORY[0x1AC5AA830](v28);
        v69 = v26;
        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        if (v30 >= v29 >> 1)
        {
          v32 = sub_1ABA7BBEC(v29);
          sub_1ABADDBF4(v32, v30 + 1, 1);
          v26 = v69;
        }

        *(v26 + 16) = v30 + 1;
        sub_1ABA7AB74();
        (*(v17 + 32))(v26 + v31 + *(v17 + 72) * v30, v21, v15);
        --v25;
      }

      while (v25);
      v1 = v62;
    }

    MEMORY[0x1AC5A9750](v26, v15);

    sub_1ABA8E4C8();

    sub_1ABAAA4F4();
    v34 = v33;
    v36 = *(v33 + 16);
    v35 = *(v33 + 24);
    v21 = (v36 + 1);
    v37 = v67;
    if (v36 >= v35 >> 1)
    {
      sub_1ABA7DC80(v35);
      sub_1ABAAA4F4();
      v34 = v55;
    }

    v22 = v63;
    sub_1ABA8ED58();
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
    v37 = v67;
  }

  sub_1ABAE6A34(v1 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_startFilter, v8);
  if (sub_1ABA7E1E0(v8, 1, v37) == 1)
  {
    sub_1ABC28C50(v8);
    v38 = v66;
  }

  else
  {
    (*(v68 + 32))(v64, v8, v37);
    strcpy(v70, "StartFilter: ");
    HIWORD(v70[1]) = -4864;
    v39 = sub_1ABF21E34();
    v40 = sub_1ABAA46C8(v39);

    sub_1ABF23C04();
    sub_1ABA8E4C8();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7BEF0();
      sub_1ABAAA4F4();
      v34 = v56;
    }

    v38 = v66;
    sub_1ABA8C3FC();
    if (v42)
    {
      sub_1ABA7DC80(v41);
      sub_1ABAAA4F4();
      v34 = v57;
    }

    (*(v68 + 8))(v64, v37);
    sub_1ABA8ED58();
  }

  v43 = v65;
  sub_1ABAE6A34(v1 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_endFilter, v65);
  v44 = sub_1ABAA0A38();
  if (sub_1ABA7E1E0(v44, v45, v37) == 1)
  {
    sub_1ABC28C50(v43);
  }

  else
  {
    (*(v68 + 32))(v38, v43, v37);
    strcpy(v70, "EndFilter: ");
    HIDWORD(v70[1]) = -352321536;
    v46 = sub_1ABF21E34();
    v47 = sub_1ABAA46C8(v46);

    sub_1ABF23C04();
    sub_1ABA8E4C8();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7BEF0();
      sub_1ABAAA4F4();
      v34 = v58;
    }

    sub_1ABA8C3FC();
    if (v42)
    {
      sub_1ABA7DC80(v48);
      sub_1ABAAA4F4();
      v34 = v59;
    }

    (*(v68 + 8))(v38, v37);
    sub_1ABA8ED58();
  }

  v49 = *(v1 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_orderAndLimit);
  if (v49 != 3)
  {
    v70[0] = 0;
    v70[1] = 0xE000000000000000;
    sub_1ABF24AB4();

    v70[0] = 0x646E41726564724FLL;
    v70[1] = 0xEF203A74696D694CLL;
    if (v49)
    {
      if (v49 == 1)
      {
        v51 = 0xE400000000000000;
        v52 = 1954047342;
      }

      else
      {
        v51 = 0xE500000000000000;
        v52 = 0x7473726966;
      }
    }

    else
    {
      v51 = 0xE400000000000000;
      v52 = 1953718636;
    }

    MEMORY[0x1AC5A9410](v52, v51);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7BEF0();
      sub_1ABAAA4F4();
      v34 = v60;
    }

    sub_1ABA8C3FC();
    if (v42)
    {
      sub_1ABA7DC80(v53);
      sub_1ABAAA4F4();
      v34 = v61;
    }

    sub_1ABA8ED58();
    goto LABEL_39;
  }

  if (*(v34 + 16))
  {
LABEL_39:
    v70[0] = v34;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAB47C4(&qword_1ED870668, &unk_1EB4D33D0, &unk_1ABF3A8C0, MEMORY[0x1E69E6310]);
    v50 = sub_1ABF23B54();

    return v50;
  }

  return 4271950;
}

uint64_t SemanticSearchService.SemanticSearchFilters.deinit()
{

  sub_1ABC28C50(v0 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_startFilter);
  sub_1ABC28C50(v0 + OBJC_IVAR____TtCC20IntelligencePlatform21SemanticSearchService21SemanticSearchFilters_endFilter);
  return v0;
}

uint64_t SemanticSearchService.SemanticSearchFilters.__deallocating_deinit()
{
  SemanticSearchService.SemanticSearchFilters.deinit();

  return swift_deallocClassInstance();
}

uint64_t SemanticSearchService.SemanticSearchResult.semanticSearchItem.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 32), sizeof(__dst));
  memcpy(a1, (v1 + 32), 0x48uLL);
  return sub_1ABC106B0(__dst, &v4);
}

uint64_t SemanticSearchService.SemanticSearchResult.init(assetId:similarity:semanticSearchItem:)(uint64_t a1, const void *a2, float a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  memcpy((v3 + 32), a2, 0x48uLL);
  return v3;
}

uint64_t sub_1ABE4F38C()
{
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1ABF24AB4();
  v5 = 0;
  v6 = 0xE000000000000000;
  MEMORY[0x1AC5A9410](0x4449797469746E45, 0xEA0000000000203ALL);
  __dst[0] = *(v0 + 16);
  v1 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v1);

  MEMORY[0x1AC5A9410](0x616C696D6953202CLL, 0xEE00203A79746972);
  sub_1ABF24374();
  MEMORY[0x1AC5A9410](8236, 0xE200000000000000);
  memcpy(__dst, (v0 + 32), sizeof(__dst));
  v2 = SemanticSearchItem.description.getter();
  MEMORY[0x1AC5A9410](v2);

  return v5;
}

uint64_t SemanticSearchService.SemanticSearchResult.deinit()
{
  sub_1ABAA4B88();

  return v0;
}

uint64_t SemanticSearchService.SemanticSearchResult.__deallocating_deinit()
{
  sub_1ABAA4B88();

  return swift_deallocClassInstance();
}

unint64_t sub_1ABE4F604()
{
  result = qword_1EB4DB018;
  if (!qword_1EB4DB018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB018);
  }

  return result;
}

unint64_t sub_1ABE4F65C()
{
  result = qword_1EB4DB020;
  if (!qword_1EB4DB020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB020);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SemanticSearchServiceError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for SemanticSearchService.SemanticSearchFilters(uint64_t a1)
{
  result = qword_1EB4DB038;
  if (!qword_1EB4DB038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1ABE4F900(uint64_t a1)
{
  sub_1ABAE8794(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for SemanticSearchService.SemanticSearchFilters.OrderAndLimit(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void *sub_1ABE4FB48(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v7 = WORD2(a2);
  v6 = a2;
  result = sub_1ABE4CB84(&v5, &v5 + BYTE6(a2), &v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

char *sub_1ABE4FBC4(uint64_t a1, uint64_t a2)
{
  result = sub_1ABF219E4();
  v6 = result;
  if (result)
  {
    result = sub_1ABF21A04();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v6 += a1 - result;
  }

  v7 = __OFSUB__(a2, a1);
  v8 = a2 - a1;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = sub_1ABF219F4();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = &v6[v10];
  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  result = sub_1ABE4CB84(v6, v12, &v13);
  if (!v2)
  {
    return v13;
  }

  return result;
}

id sub_1ABE4FC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1ABF23BD4();

  v9 = [a5 sentenceEmbeddingVectorDataForString:v8 language:a3 error:a4];

  return v9;
}

void ViewService.semanticSearchView.getter(void *a1@<X8>)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(v1 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v5 = sub_1ABF23BD4();
  v16[0] = 0;
  v6 = [v4 requestAssertionForViewName:v5 error:v16];

  v7 = v16[0];
  if (v6)
  {
    v8 = *(v1 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v9 = v8[5];
    v10 = v8[6];
    sub_1ABA93E20(v8 + 2, v9);
    v11 = *(v10 + 8);
    v12 = v7;
    v13 = v11(v6, v9, v10);
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1ABE50C68(v6, v13, v14, a1);
    }
  }

  else
  {
    v15 = v16[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }
}

uint64_t ViewService.SemanticSearchView.getSemanticSearchItems(subjectIds:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4DB060, &qword_1ABF6C3B0);
  result = sub_1ABF22464();
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t SemanticSearchItem.textualization.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t SemanticSearchItem.starttime.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t SemanticSearchItem.endtime.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t SemanticSearchItem.entities.setter()
{
  sub_1ABA7FC9C();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t SemanticSearchItem.description.getter()
{
  v2 = v0[1];
  v1 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[7];
  v7 = v0[8];

  sub_1ABF24AB4();

  if (v1)
  {
    v9 = v2;
  }

  else
  {
    v9 = 4271950;
  }

  if (!v1)
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x1AC5A9410](v9, v1);

  MEMORY[0x1AC5A9410](0x3A7472617453202CLL, 0xE900000000000020);
  if (v3)
  {
    v10 = v4;
  }

  else
  {
    v10 = 4271950;
  }

  if (v3)
  {
    v11 = v3;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x1AC5A9410](v10, v11);

  MEMORY[0x1AC5A9410](0x203A646E45202CLL, 0xE700000000000000);
  if (v5)
  {
    v12 = v6;
  }

  else
  {
    v12 = 4271950;
  }

  if (v5)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  MEMORY[0x1AC5A9410](v12, v13);

  MEMORY[0x1AC5A9410](0x697469746E45202CLL, 0xEC000000203A7365);
  if (v7)
  {
    v14 = v8;
  }

  else
  {
    v14 = 4271950;
  }

  if (v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  MEMORY[0x1AC5A9410](v14, v15);

  return 0x203A74786554;
}

uint64_t sub_1ABE502E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696C617574786574 && a2 == 0xEE006E6F6974617ALL;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D69747472617473 && a2 == 0xE900000000000065;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D6974646E65 && a2 == 0xE700000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

          if (v10)
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
  }
}

uint64_t sub_1ABE50498(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x696C617574786574;
      break;
    case 2:
      result = 0x6D69747472617473;
      break;
    case 3:
      result = 0x656D6974646E65;
      break;
    case 4:
      result = 0x7365697469746E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE50548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE502E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE50570(uint64_t a1)
{
  v2 = sub_1ABE50FFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE505AC(uint64_t a1)
{
  v2 = sub_1ABE50FFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SemanticSearchItem.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4DB068, &qword_1ABF6C738);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = v1[1];
  v11 = v1[3];
  v26 = v1[2];
  v27 = v10;
  v12 = v1[5];
  v24 = v1[4];
  v25 = v11;
  v13 = v1[7];
  v22 = v1[6];
  v23 = v12;
  v14 = v1[8];
  v20 = v13;
  v21 = v14;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE50FFC();
  sub_1ABF252E4();
  v31[1] = 0;
  sub_1ABF24FA4();
  if (!v2)
  {
    v15 = v24;
    v16 = v25;
    v17 = v22;
    v18 = v23;
    v31[0] = 1;
    sub_1ABA811DC(v27, v26, v31);
    v30 = 2;
    sub_1ABA811DC(v16, v15, &v30);
    v29 = 3;
    sub_1ABA811DC(v18, v17, &v29);
    v28 = 4;
    sub_1ABA811DC(v20, v21, &v28);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t SemanticSearchItem.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4DB078, &qword_1ABF6C740);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE50FFC();
  sub_1ABF252C4();
  if (v2)
  {
    sub_1ABA84B54(a1);
  }

  else
  {
    LOBYTE(v34[0]) = 0;
    sub_1ABA7DFC4();
    v11 = sub_1ABF24E84();
    LOBYTE(v34[0]) = 1;
    sub_1ABA7DFC4();
    v12 = sub_1ABF24DB4();
    v14 = v13;
    v31 = v12;
    v32 = v11;
    LOBYTE(v34[0]) = 2;
    sub_1ABA7DFC4();
    v15 = sub_1ABF24DB4();
    v17 = v16;
    v30 = v15;
    v29 = a2;
    LOBYTE(v34[0]) = 3;
    sub_1ABA7DFC4();
    v18 = sub_1ABF24DB4();
    v20 = v19;
    v28 = v18;
    v35 = 4;
    v21 = sub_1ABF24DB4();
    v22 = v10;
    v24 = v23;
    (*(v7 + 8))(v22, v5);
    v26 = v31;
    v25 = v32;
    __src[0] = v32;
    __src[1] = v31;
    __src[2] = v14;
    __src[3] = v30;
    __src[4] = v17;
    __src[5] = v28;
    __src[6] = v20;
    __src[7] = v21;
    __src[8] = v24;
    memcpy(v29, __src, 0x48uLL);
    sub_1ABC106B0(__src, v34);
    sub_1ABA84B54(a1);
    v34[0] = v25;
    v34[1] = v26;
    v34[2] = v14;
    v34[3] = v30;
    v34[4] = v17;
    v34[5] = v28;
    v34[6] = v20;
    v34[7] = v21;
    v34[8] = v24;
    return sub_1ABC1065C(v34);
  }
}

uint64_t sub_1ABE50AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE514BC();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABE50B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABE51468();

  return sub_1ABF22804();
}

uint64_t sub_1ABE50C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE51414();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void sub_1ABE50C68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [swift_unknownObjectRetain() viewArtifactTableName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1ABF23C04();
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v12 = 0x80000001ABF938D0;
    v10 = 0xD000000000000017;
  }

  *a4 = a1;
  a4[1] = v10;
  a4[2] = v12;
  a4[3] = a2;
  a4[4] = a3;
}

uint64_t sub_1ABE50D1C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v22 = a1;
  v20 = a4;
  v21 = sub_1ABAD219C(&qword_1EB4DB0C8, &qword_1ABF6CB08);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4DB0D0, &qword_1ABF6CB10);
  sub_1ABA7BB64();
  v12 = v11;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;

  sub_1ABF22D04();
  v25[6] = a3;
  v24[3] = sub_1ABF22D14();
  v24[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v24);
  sub_1ABF22D24();
  v25[3] = sub_1ABF22424();
  v25[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v25);
  sub_1ABAD219C(&qword_1EB4DB0D8, &unk_1ABF6CB18);
  sub_1ABAB47C4(&qword_1EB4DB0E0, &qword_1EB4DB0D8, &unk_1ABF6CB18, MEMORY[0x1E69E6508]);
  sub_1ABF23EE4();
  sub_1ABA84B54(v24);
  sub_1ABF22CA4();
  sub_1ABA84B54(v25);
  sub_1ABAB47C4(&qword_1EB4DB0E8, &qword_1EB4DB0C8, &qword_1ABF6CB08, MEMORY[0x1E699FF60]);
  sub_1ABE51510();
  v16 = v21;
  v17 = v23;
  v18 = sub_1ABF22234();
  (*(v6 + 8))(v9, v16);
  result = (*(v12 + 8))(v15, v10);
  if (!v17)
  {
    *v20 = v18;
  }

  return result;
}

unint64_t sub_1ABE50FFC()
{
  result = qword_1EB4DB070;
  if (!qword_1EB4DB070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB070);
  }

  return result;
}

unint64_t sub_1ABE51054()
{
  result = qword_1EB4DB080;
  if (!qword_1EB4DB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB080);
  }

  return result;
}

unint64_t sub_1ABE510AC()
{
  result = qword_1EB4DB088;
  if (!qword_1EB4DB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB088);
  }

  return result;
}

unint64_t sub_1ABE51104()
{
  result = qword_1EB4DB090;
  if (!qword_1EB4DB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB090);
  }

  return result;
}

uint64_t sub_1ABE51158(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1ABE511AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SemanticSearchItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE51310()
{
  result = qword_1EB4DB098;
  if (!qword_1EB4DB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB098);
  }

  return result;
}

unint64_t sub_1ABE51368()
{
  result = qword_1EB4DB0A0;
  if (!qword_1EB4DB0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB0A0);
  }

  return result;
}

unint64_t sub_1ABE513C0()
{
  result = qword_1EB4DB0A8;
  if (!qword_1EB4DB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB0A8);
  }

  return result;
}

unint64_t sub_1ABE51414()
{
  result = qword_1EB4DB0B0;
  if (!qword_1EB4DB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB0B0);
  }

  return result;
}

unint64_t sub_1ABE51468()
{
  result = qword_1EB4DB0B8;
  if (!qword_1EB4DB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB0B8);
  }

  return result;
}

unint64_t sub_1ABE514BC()
{
  result = qword_1EB4DB0C0;
  if (!qword_1EB4DB0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB0C0);
  }

  return result;
}

unint64_t sub_1ABE51510()
{
  result = qword_1EB4DB0F0;
  if (!qword_1EB4DB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB0F0);
  }

  return result;
}

uint64_t sub_1ABE51564(uint64_t a1, uint64_t (*a2)(_BYTE *))
{
  sub_1ABF24C34();
  do
  {
    sub_1ABF24D64();
    if (!__src[2])
    {
      break;
    }

    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v6, __src, sizeof(v6));
    v4 = a2(v6);
    sub_1ABE520BC(__dst);
    if (v2)
    {
      break;
    }
  }

  while ((v4 & 1) != 0);
}

uint64_t sub_1ABE5161C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, void *a4)
{
  v32 = a1;
  v33 = a2;
  v29[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v30 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - v10;
  sub_1ABF247E4();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v29 - v13;
  sub_1ABA7BD7C();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BC58();
  v18 = v17 - v16;
  v19 = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v31 = v20;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA811F8();
  v22(v18, v34, a3);
  v34 = a4;
  sub_1ABF23F04();
  v23 = v19;
  swift_getAssociatedConformanceWitness();
  v24 = (v30 + 32);
  v25 = (v30 + 8);
  do
  {
    sub_1ABF24864();
    if (sub_1ABA7E1E0(v14, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*v24)(v11, v14, AssociatedTypeWitness);
    v26 = v32(v11);
    if (v4)
    {
      (*v25)(v11, AssociatedTypeWitness);
      return (*(v31 + 8))(v34, v23);
    }

    v27 = v26;
    (*v25)(v11, AssociatedTypeWitness);
  }

  while ((v27 & 1) != 0);
  return (*(v31 + 8))(v34, v23);
}

uint64_t sub_1ABE51930(uint64_t (*a1)(uint64_t *, uint64_t (*)(), __n128), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v53 = a6;
  v54 = a7;
  v59 = a5;
  v50 = a1;
  v51 = a2;
  sub_1ABA7BD7C();
  v48 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v57 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v47 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  sub_1ABA7BD7C();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7BC58();
  v25 = v24 - v23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v49 = v27;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA811F8();
  v29(v25, v61, a3);
  v60 = a5;
  sub_1ABF23F04();
  v52 = a3;
  v61 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = (v47 + 32);
  v31 = (v48 + 32);
  for (i = (v48 + 8); ; (*i)(v15, a4))
  {
    v33 = v56;
    sub_1ABF24864();
    (*v30)(v21, v33, v57);
    v34 = TupleTypeMetadata2;
    if (sub_1ABA7E1E0(v21, 1, TupleTypeMetadata2) == 1)
    {
      v41 = sub_1ABA7DFD8();
      return v42(v41);
    }

    v35 = *v21;
    v36 = (*v31)(v15, &v21[*(v34 + 48)], a4);
    v62 = v35;
    v37 = MEMORY[0x1EEE9AC00](v36);
    *(&v46 - 6) = v52;
    *(&v46 - 5) = a4;
    v39 = v53;
    v38 = v54;
    *(&v46 - 4) = v59;
    *(&v46 - 3) = v39;
    *(&v46 - 2) = v38;
    *(&v46 - 1) = v15;
    v40 = v50(&v62, sub_1ABE52098, v37);
    if (v7 || (v40 & 1) == 0)
    {
      break;
    }
  }

  v44 = sub_1ABA7DFD8();
  v45(v44);
  return (*i)(v15, a4);
}

uint64_t sub_1ABE51D48(uint64_t (*a1)(char *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a3;
  v32 = a1;
  v33 = a2;
  v29[1] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v29 - v10;
  v12 = sub_1ABF247E4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v29 - v13;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_getAssociatedTypeWitness();
  v31 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v29 - v21;
  (*(v15 + 16))(v18, v34, a5, v20);
  v34 = v22;
  sub_1ABF23F04();
  v23 = v19;
  swift_getAssociatedConformanceWitness();
  v24 = (v30 + 32);
  v25 = (v30 + 8);
  do
  {
    sub_1ABF24864();
    if (sub_1ABA7E1E0(v14, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*v24)(v11, v14, AssociatedTypeWitness);
    v26 = v32(v11);
    if (v7)
    {
      (*v25)(v11, AssociatedTypeWitness);
      return (*(v31 + 8))(v34, v23);
    }

    v27 = v26;
    (*v25)(v11, AssociatedTypeWitness);
  }

  while ((v27 & 1) != 0);
  return (*(v31 + 8))(v34, v23);
}

uint64_t sub_1ABE520BC(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DB100, &qword_1ABF70760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *Sequence<>.bufferToContext()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Sequence<>.bufferToDictionaryGroupedBySubject()(a1, a2, a3);
  swift_getAssociatedTypeWitness();
  sub_1ABF241F4();
  sub_1ABB668FC();
  v3 = sub_1ABF23A44();
  sub_1ABA7DFE8();
  sub_1ABA8FB60();
  swift_getWitnessTable();
  v4 = TripleProviderProtocol.context()(v3);

  return v4;
}

uint64_t Sequence<>.bufferToDictionaryGroupedBySubject()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a1, v7);
  v12 = a1;
  v13 = a2;
  v14 = a3;
  sub_1ABB668FC();
  return sub_1ABF23A14();
}

uint64_t sub_1ABE52300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v5(AssociatedTypeWitness, a4);
}

uint64_t *Sequence<>.bufferToContext<A>(objectMapping:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Sequence<>.bufferToDictionaryGroupedBySubject()(a2, a4, a6);
  swift_getAssociatedTypeWitness();
  sub_1ABF241F4();
  sub_1ABB668FC();
  v8 = sub_1ABF23A44();
  sub_1ABA7DFE8();
  sub_1ABA8FB60();
  swift_getWitnessTable();
  v9 = TripleProviderProtocol.context<A>(objectMapping:)(a1, v8, a3);

  return v9;
}

void static LogSignpost.begin(logger:_:)()
{
  sub_1ABA7E2A8();
  v43 = v1;
  v44 = v2;
  v4 = v3;
  v6 = v5;
  v42 = v7;
  v40 = sub_1ABF23744();
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7AC18();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA8E3E8();
  v15 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v21 = v20 - v19;
  v41 = sub_1ABF23774();
  sub_1ABA7BB64();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7BC58();
  v27 = v26 - v25;
  (*(v17 + 16))(v21, v4, v15);
  v28 = v0;
  v29 = v44;
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v30 = sub_1ABF23764();
  v31 = sub_1ABF24714();
  if ((sub_1ABF247D4() & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v42 & 1) == 0)
  {
    v32 = v43;
    if (v43)
    {
      v33 = v28;
LABEL_9:
      sub_1ABA8179C();
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v30, v31, v37, v32, "", v36, 2u);
      v28 = v33;
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      v29 = v44;
LABEL_10:

      (*(v9 + 16))(v13, v28, v40);
      sub_1ABF237B4();
      sub_1ABA90758();
      swift_allocObject();
      v38 = sub_1ABF237A4();
      (*(v9 + 8))(v28, v40);
      *v6 = v43;
      *(v6 + 8) = v29;
      *(v6 + 16) = v42;
      *(v6 + 24) = v38;
      v39 = type metadata accessor for LogSignpost(0);
      (*(v23 + 32))(v6 + *(v39 + 24), v27, v41);
      sub_1ABA7BC1C();
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v43 >> 32)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1ABA8120C();
  if (!v34)
  {
    sub_1ABAA61F8();
    if (!(!v34 & v35))
    {
      v33 = v28;
      v32 = &v45;
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
}

void withThrowingSignpost<A>(_:closure:)(unint64_t a1, uint64_t a2, char a3, void (*a4)(void))
{
  v7 = sub_1ABF23744();
  sub_1ABA7BB64();
  v42 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7AC18();
  sub_1ABA843C0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA8E3E8();
  v11 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BC58();
  v17 = v16 - v15;
  sub_1ABF23774();
  sub_1ABA7BB64();
  v39 = v19;
  v40 = v18;
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v20 = sub_1ABA8BFC4();
  v38 = type metadata accessor for LogSignpost(v20);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  v24 = v23 - v22;
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  v25 = sub_1ABA7AA24(v11, qword_1ED871EF8);
  (*(v13 + 16))(v17, v25, v11);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v26 = sub_1ABF23764();
  v27 = sub_1ABF24714();
  if ((sub_1ABF247D4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v37 = a4;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      v28 = a1;
LABEL_11:
      sub_1ABA8179C();
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v26, v27, v32, v28, "", v31, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      a4 = v37;
LABEL_12:

      (*(v42 + 16))(v41, v5, v7);
      sub_1ABF237B4();
      sub_1ABA90758();
      swift_allocObject();
      v33 = sub_1ABF237A4();
      v34 = v7;
      v35 = v33;
      (*(v42 + 8))(v5, v34);
      *v24 = a1;
      *(v24 + 8) = a2;
      *(v24 + 16) = a3;
      *(v24 + 24) = v35;
      v36 = (*(v39 + 32))(v24 + *(v38 + 24), v4, v40);
      a4(v36);
      sub_1ABE542F4();
      sub_1ABBA4F10(v24);
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(a1))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1ABA8120C();
  if (!v29)
  {
    sub_1ABAA61F8();
    if (!(!v29 & v30))
    {
      v28 = &v46;
      goto LABEL_11;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

void static LogSignpost.begin(logger:_:message:)()
{
  sub_1ABA7E2A8();
  v45 = v0;
  v46 = v1;
  v44 = v2;
  v48 = v3;
  v5 = v4;
  v47 = v6;
  v42 = sub_1ABF23744();
  sub_1ABA7BB64();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7AC18();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7BC58();
  v22 = v21 - v20;
  v43 = sub_1ABF23774();
  sub_1ABA7BB64();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7BC58();
  v28 = v27 - v26;
  (*(v18 + 16))(v22, v45, v16);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v29 = sub_1ABF23764();
  sub_1ABF24714();
  v30 = sub_1ABF23704();
  if ((sub_1ABF247D4() & 1) == 0)
  {

    v31 = v42;
    (*(v8 + 16))(v12, v15, v42);
    sub_1ABF237B4();
    sub_1ABA90758();
    swift_allocObject();
    v32 = sub_1ABF237A4();
    (*(v8 + 8))(v15, v31);
    v33 = v44;
    *v5 = v48;
    *(v5 + 8) = v33;
    *(v5 + 16) = v47;
    *(v5 + 24) = v32;
    v34 = type metadata accessor for LogSignpost(0);
    (*(v24 + 32))(v5 + *(v34 + 24), v28, v43);
    sub_1ABA7BC1C();
    return;
  }

  v35 = v30;
  v36 = v48;
  if ((v47 & 1) == 0)
  {
    if (v48)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (HIDWORD(v36))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1ABA8120C();
  if (!v37)
  {
    sub_1ABAA61F8();
    if (!v37 & v38)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_9:
    if ((v35 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(v35))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      sub_1ABAA5538();
      v39 = swift_slowAlloc();
      if (v29)
      {
        sub_1ABAA5AC4();
        if (!v38)
        {
          goto LABEL_27;
        }

        swift_slowAlloc();
      }

      if (v8)
      {
        sub_1ABA97DBC();
        if (!v38)
        {
          goto LABEL_28;
        }

        v40 = swift_slowAlloc();
      }

      else
      {
        v40 = 0;
      }

      sub_1ABA83CD0(v40);
      for (; v5; --v5)
      {
        v41 = *(v39 - 8);

        v41(&v51, &v50, &v49);

        v39 += 16;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_29:
  __break(1u);
}

Swift::Void __swiftcall LogSignpost.end()()
{
  sub_1ABA7E2A8();
  v1 = sub_1ABF23784();
  sub_1ABA7BB64();
  v23 = v2;
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v6 = v5 - v4;
  v7 = sub_1ABF23744();
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v13 = v12 - v11;
  type metadata accessor for LogSignpost(0);
  v14 = *v0;
  v15 = *(v0 + 16);

  v16 = sub_1ABF23764();
  sub_1ABF23794();
  v22 = sub_1ABF24704();
  if ((sub_1ABF247D4() & 1) == 0)
  {
LABEL_13:

    (*(v9 + 8))(v13, v7);
    sub_1ABA7BC1C();
    return;
  }

  if ((v15 & 1) == 0)
  {
    if (v14)
    {
      v17 = v23;
LABEL_9:

      sub_1ABF237C4();

      if ((*(v17 + 88))(v6, v1) == *MEMORY[0x1E69E93E8])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v17 + 8))(v6, v1);
        v19 = "";
      }

      sub_1ABA8179C();
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v16, v22, v21, v14, v19, v20, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v14 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1ABA8ED68();
  if (!v18)
  {
    v17 = v23;
    if (v14 >> 16 <= 0x10)
    {
      v14 = &v24;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

void LogSignpost.end(message:)()
{
  sub_1ABA7E2A8();
  v2 = v1;
  sub_1ABF23784();
  sub_1ABA7BB64();
  v36 = v4;
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v7 = v6 - v5;
  v8 = sub_1ABF23744();
  sub_1ABA7BB64();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v14 = v13 - v12;
  type metadata accessor for LogSignpost(0);
  v15 = *v0;
  v16 = *(v0 + 16);

  v17 = sub_1ABF23764();
  sub_1ABF23794();
  v35 = sub_1ABF24704();
  v38 = sub_1ABF23704();
  if ((sub_1ABF247D4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v31 = v17;
  v32 = v8;
  v33 = v14;
  v34 = v10;
  if (v16)
  {
    if (v15 >> 32)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    sub_1ABA8ED68();
    if (v18)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v15 >> 16 > 0x10)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v15 = &v42;
  }

  else if (!v15)
  {
    __break(1u);
LABEL_5:

    (*(v10 + 8))(v14, v8);
LABEL_28:
    sub_1ABA7BC1C();
    return;
  }

  v19 = v2[2];
  v20 = v2[5];
  v21 = v2[6];

  sub_1ABF237C4();

  if ((*(v36 + 88))(v7, v37) == *MEMORY[0x1E69E93E8])
  {
    if ((v38 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v38))
    {
      v22 = swift_slowAlloc();
      if (!v21)
      {
        v23 = 0;
        goto LABEL_17;
      }

      if ((v21 - 0x1000000000000000) >> 61 == 7)
      {
        v23 = swift_slowAlloc();
LABEL_17:
        if (!v20)
        {
          v24 = v15;
          v25 = 0;
          goto LABEL_21;
        }

        if ((v20 - 0x400000000000000) >> 59 == 31)
        {
          v24 = v15;
          v25 = swift_slowAlloc();
LABEL_21:
          v39 = v25;
          v40 = v23;
          v26 = v22;
          *v22 = 0;
          v41 = v22 + 2;
          v27 = *(v19 + 16);
          for (i = v19 + 40; v27; --v27)
          {
            v29 = *(i - 8);

            v29(&v41, &v40, &v39);

            i += 16;
          }

          v30 = sub_1ABF23724();
          _os_signpost_emit_with_name_impl(&dword_1ABA78000, v31, v35, v30, v24, "[Error] Interval already ended", v26, v38);
          if (v23)
          {
            sub_1ABAD219C(&unk_1EB4D57F0, &qword_1ABF390C0);
            swift_arrayDestroy();
            sub_1ABA7BDD8();
            MEMORY[0x1AC5AB8B0]();
          }

          if (v25)
          {
            swift_arrayDestroy();
            sub_1ABA7BDD8();
            MEMORY[0x1AC5AB8B0]();
          }

          sub_1ABA7BDD8();
          MEMORY[0x1AC5AB8B0]();

          (*(v34 + 8))(v33, v32);
          goto LABEL_28;
        }

        goto LABEL_32;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_36:
  __break(1u);
}

void static LogSignpost.emit(_:_:_:)()
{
  sub_1ABA7E2A8();
  v31 = v1;
  v30 = v2;
  v4 = v3;
  v5 = sub_1ABF23744();
  sub_1ABA7BB64();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  sub_1ABA8BFC4();
  v9 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  v16 = sub_1ABF23774();
  sub_1ABA7BB64();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7BC58();
  v22 = v21 - v20;
  (*(v11 + 16))(v15, v4, v9);
  sub_1ABF23754();
  sub_1ABF23734();
  v23 = sub_1ABF23764();
  sub_1ABF24724();
  v24 = sub_1ABF23704();
  if ((sub_1ABF247D4() & 1) == 0)
  {

    (*(v7 + 8))(v0, v5);
    (*(v18 + 8))(v22, v16);
    sub_1ABA7BC1C();
    return;
  }

  if ((v31 & 1) == 0)
  {
    if (v30)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if (HIDWORD(v30))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1ABA8120C();
  if (!v25)
  {
    sub_1ABAA61F8();
    if (!v25 & v26)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_9:
    if ((v24 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(v24))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      sub_1ABAA5538();
      v27 = swift_slowAlloc();
      if (v23)
      {
        sub_1ABAA5AC4();
        if (!v26)
        {
          goto LABEL_27;
        }

        swift_slowAlloc();
      }

      if (v0)
      {
        sub_1ABA97DBC();
        if (!v26)
        {
          goto LABEL_28;
        }

        v28 = swift_slowAlloc();
      }

      else
      {
        v28 = 0;
      }

      sub_1ABA83CD0(v28);
      for (; v7; --v7)
      {
        v29 = *(v27 - 8);

        v29(&v34, &v33, &v32);

        v27 += 16;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_29:
  __break(1u);
}

void withSignpost<A>(_:closure:)()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v49 = v4;
  v50 = v5;
  v51 = v6;
  v52 = v7;
  v48 = sub_1ABF23744();
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7AC18();
  sub_1ABA843C0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v43 - v12;
  v14 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7BC58();
  v20 = v19 - v18;
  v46 = sub_1ABF23774();
  sub_1ABA7BB64();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7BC58();
  v26 = v25 - v24;
  v45 = type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7BC58();
  v30 = v29 - v28;
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  v31 = sub_1ABA7AA24(v14, qword_1ED871EF8);
  (*(v16 + 16))(v20, v31, v14);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v32 = sub_1ABF23764();
  v33 = sub_1ABF24714();
  if ((sub_1ABF247D4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v43[1] = v1;
  v44 = v3;
  if ((v52 & 1) == 0)
  {
    if (v51)
    {
      v34 = v51;
LABEL_11:
      sub_1ABA8179C();
      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v32, v33, v38, v34, "", v37, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      v3 = v44;
LABEL_12:

      v39 = v48;
      (*(v9 + 16))(v47, v13, v48);
      sub_1ABF237B4();
      sub_1ABA90758();
      swift_allocObject();
      v40 = sub_1ABF237A4();
      (*(v9 + 8))(v13, v39);
      v41 = v49;
      *v30 = v51;
      *(v30 + 8) = v41;
      *(v30 + 16) = v52;
      *(v30 + 24) = v40;
      v42 = (*(v22 + 32))(v30 + *(v45 + 24), v26, v46);
      v3(v42);
      sub_1ABE542F4();
      sub_1ABBA4F10(v30);
      sub_1ABA7BC1C();
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v51 >> 32)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1ABA8120C();
  if (!v35)
  {
    sub_1ABAA61F8();
    if (!(!v35 & v36))
    {
      v34 = &v53;
      goto LABEL_11;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t withThrowingSignpostAsync<A>(_:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 176) = a4;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  v7 = sub_1ABF23744();
  *(v6 + 64) = v7;
  sub_1ABA7BBD0(v7);
  *(v6 + 72) = v8;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  v9 = sub_1ABF237F4();
  *(v6 + 96) = v9;
  sub_1ABA7BBD0(v9);
  *(v6 + 104) = v10;
  *(v6 + 112) = swift_task_alloc();
  v11 = sub_1ABF23774();
  *(v6 + 120) = v11;
  sub_1ABA7BBD0(v11);
  *(v6 + 128) = v12;
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = type metadata accessor for LogSignpost(0);
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ABE53DAC, 0, 0);
}

void sub_1ABE53DAC()
{
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = sub_1ABA7AA24(v3, qword_1ED871EF8);
  (*(v2 + 16))(v1, v4, v3);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v5 = sub_1ABF23764();
  v6 = sub_1ABF24714();
  if ((sub_1ABF247D4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = *(v0 + 32);
  if (*(v0 + 176))
  {
LABEL_7:
    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      sub_1ABA8ED68();
      if (v8)
      {
LABEL_17:
        __break(1u);
        return;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 16);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  sub_1ABA8179C();
  v9 = swift_slowAlloc();
  *v9 = 0;
  v10 = sub_1ABF23724();
  _os_signpost_emit_with_name_impl(&dword_1ABA78000, v5, v6, v10, v7, "", v9, 2u);
  sub_1ABA7BDD8();
  MEMORY[0x1AC5AB8B0]();
LABEL_12:

  v11 = *(v0 + 152);
  v12 = *(v0 + 128);
  v25 = *(v0 + 136);
  v23 = *(v0 + 144);
  v24 = *(v0 + 120);
  v13 = *(v0 + 88);
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);
  v22 = *(v0 + 176);
  v18 = *(v0 + 32);
  (*(v14 + 16))(*(v0 + 80), v13, v15);
  sub_1ABF237B4();
  sub_1ABA90758();
  swift_allocObject();
  v19 = sub_1ABF237A4();
  (*(v14 + 8))(v13, v15);
  *v11 = v18;
  *(v11 + 8) = v17;
  *(v11 + 16) = v22;
  *(v11 + 24) = v19;
  (*(v12 + 32))(v11 + *(v23 + 24), v25, v24);
  v26 = (v16 + *v16);
  v20 = swift_task_alloc();
  *(v0 + 160) = v20;
  *v20 = v0;
  v20[1] = sub_1ABE540A0;
  v21 = *(v0 + 24);

  v26(v21);
}

uint64_t sub_1ABE540A0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1ABE54254;
  }

  else
  {
    v2 = sub_1ABE541B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1ABE541B4()
{
  sub_1ABA9A710();
  sub_1ABBA4F10(v0);

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1ABE54254()
{
  sub_1ABA9A710();
  sub_1ABBA4F10(v0);

  v2 = *(v1 + 8);

  return v2();
}

void sub_1ABE542F4()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v3 = sub_1ABF23784();
  sub_1ABA7BB64();
  v21 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  sub_1ABA8BFC4();
  v6 = sub_1ABF23744();
  sub_1ABA7BB64();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v12 = v11 - v10;
  type metadata accessor for LogSignpost(0);
  v13 = *v2;
  v14 = *(v2 + 16);
  v15 = sub_1ABF23764();
  sub_1ABF23794();
  v20 = sub_1ABF24704();
  if ((sub_1ABF247D4() & 1) == 0)
  {
LABEL_13:

    (*(v8 + 8))(v12, v6);
    sub_1ABA7BC1C();
    return;
  }

  if ((v14 & 1) == 0)
  {
    if (v13)
    {
LABEL_9:

      sub_1ABF237C4();

      if ((*(v21 + 88))(v0, v3) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 8))(v0, v3);
        v17 = "";
      }

      sub_1ABA8179C();
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v15, v20, v19, v13, v17, v18, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v13 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1ABA8ED68();
  if (!v16)
  {
    if (v13 >> 16 <= 0x10)
    {
      v13 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_1ABE54550(uint64_t a1)
{
  result = sub_1ABF237B4();
  if (v2 <= 0x3F)
  {
    result = sub_1ABF23774();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABE545E4()
{
  sub_1ABAA6204();
  v2 = sub_1ABAD219C(&qword_1EB4DB128, &qword_1ABF6CBF0);
  sub_1ABA7AB80(v2);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA8C40C();
  sub_1ABAA2E30();
  result = sub_1ABA9768C();
  if (!v0)
  {
    sub_1ABAA428C();
    MEMORY[0x1EEE9AC00](v5);
    sub_1ABA7F9D8();
    v6 = sub_1ABAA46E8();
    sub_1ABE5555C(v6, v7, v8);
    v9 = sub_1ABAD219C(&qword_1EB4DB130, &qword_1ABF6CBF8);
    sub_1ABA8E4E4(v9);
    if (v10)
    {

      sub_1ABAB480C(v1, &qword_1EB4DB128, &qword_1ABF6CBF0);
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        swift_willThrowTypedImpl();
      }

      sub_1ABA81C9C();
      v12 = sub_1ABA7D0F8();
      sub_1ABE57C7C(v12, v13, v14);
    }

    v15 = type metadata accessor for CustomGraphPerson(0);
    return sub_1ABAA50A8(v15);
  }

  return result;
}

uint64_t sub_1ABE54754()
{
  sub_1ABAA6204();
  v2 = sub_1ABAD219C(&qword_1EB4D61E8, &qword_1ABF500B8);
  sub_1ABA7AB80(v2);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA8C40C();
  sub_1ABAA2E30();
  result = sub_1ABA9768C();
  if (!v0)
  {
    sub_1ABAA428C();
    MEMORY[0x1EEE9AC00](v5);
    sub_1ABA7F9D8();
    v6 = sub_1ABAA46E8();
    sub_1ABE55928(v6, v7, v8);
    v9 = sub_1ABAD219C(&qword_1EB4D1BE0, &unk_1ABF34230);
    sub_1ABA8E4E4(v9);
    if (v10)
    {

      sub_1ABAB480C(v1, &qword_1EB4D61E8, &qword_1ABF500B8);
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        swift_willThrowTypedImpl();
      }

      v12 = sub_1ABA7D0F8();
      sub_1ABE57C7C(v12, v13, v14);
    }

    v15 = type metadata accessor for CustomGraphSongEvent(0);
    return sub_1ABAA50A8(v15);
  }

  return result;
}

uint64_t sub_1ABE548D4()
{
  sub_1ABAA6204();
  v2 = sub_1ABAD219C(&qword_1EB4D61E0, &qword_1ABF500B0);
  sub_1ABA7AB80(v2);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA8C40C();
  sub_1ABAA2E30();
  result = sub_1ABA9768C();
  if (!v0)
  {
    sub_1ABAA428C();
    MEMORY[0x1EEE9AC00](v5);
    sub_1ABA7F9D8();
    v6 = sub_1ABAA46E8();
    sub_1ABE55BD4(v6, v7, v8);
    v9 = sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
    sub_1ABA8E4E4(v9);
    if (v10)
    {

      sub_1ABAB480C(v1, &qword_1EB4D61E0, &qword_1ABF500B0);
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        swift_willThrowTypedImpl();
      }

      v12 = sub_1ABA7D0F8();
      sub_1ABE57C7C(v12, v13, v14);
    }

    v15 = type metadata accessor for CustomGraphActivityEvent(0);
    return sub_1ABAA50A8(v15);
  }

  return result;
}

uint64_t sub_1ABE54A54@<X0>(uint64_t a2@<X8>)
{
  v4 = v2;

  v6 = sub_1ABE910B8();

  if (!v3)
  {
    *&v13[0] = v6;
    v18 = v4;
    MEMORY[0x1EEE9AC00](result);
    sub_1ABE55E80(sub_1ABE57BF0, &v15);
    if (v17[24] == 255)
    {

      v13[0] = v15;
      v13[1] = v16;
      v14[0] = *v17;
      *(v14 + 9) = *&v17[9];
      result = sub_1ABAB480C(v13, &qword_1EB4DB120, &qword_1ABF6CBE8);
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0;
    }

    else
    {
      v8 = v15;
      if (v17[24])
      {
        *&v13[0] = v15;
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        swift_willThrowTypedImpl();
      }

      else
      {
        v9 = *(&v15 + 1);
        v10 = v16;
        v11 = *v17;
        v12 = *&v17[16];

        *a2 = v8;
        *(a2 + 8) = v9;
        *(a2 + 16) = v10;
        *(a2 + 32) = v11;
        *(a2 + 48) = v12;
      }
    }
  }

  return result;
}

void *sub_1ABE54BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 32);
  v12[0] = *(v2 + 16);
  v12[1] = v6;
  v13 = *(v2 + 48);
  sub_1ABE577F0(v12, __src);
  v7 = sub_1ABE91150(a1);
  result = sub_1ABE5784C(v12);
  if (!v3)
  {
    __dst[0] = v7;
    __dst[12] = v2;
    MEMORY[0x1EEE9AC00](result);
    sub_1ABE562F8(sub_1ABE579E4, __src);
    if (LOBYTE(__src[11]) == 255)
    {

      memcpy(__dst, __src, 0x59uLL);
      result = sub_1ABAB480C(__dst, &qword_1EB4DB108, &unk_1ABF6CBC8);
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0;
    }

    else
    {
      v9 = __src[0];
      if (__src[11])
      {
        __dst[0] = __src[0];
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        swift_willThrowTypedImpl();
      }

      else
      {

        *a2 = v9;
        return memcpy((a2 + 8), &__src[1], 0x50uLL);
      }
    }
  }

  return result;
}

uint64_t sub_1ABE54DA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 16);
  v9 = (a1 + 32);
  if (v8)
  {
    while (1)
    {
      v10 = v9[1];
      v20[0] = *v9;
      v20[1] = v10;
      v12 = *v9;
      v11 = v9[1];
      v21[0] = v9[2];
      *(v21 + 9) = *(v9 + 41);
      v17 = v12;
      v18 = v11;
      v19[0] = v9[2];
      *(v19 + 9) = *(v9 + 41);
      sub_1ABAFC790(v20, &v14, &qword_1EB4D1828, &qword_1ABF50FD0);
      sub_1ABE57330(&v17, a2, a3, a4);
      if (v4)
      {
        break;
      }

      v14 = v17;
      v15 = v18;
      v16[0] = v19[0];
      *(v16 + 9) = *(v19 + 9);
      sub_1ABAB480C(&v14, &qword_1EB4D1828, &qword_1ABF50FD0);
      v9 += 4;
      if (!--v8)
      {
        goto LABEL_6;
      }
    }

    v14 = v17;
    v15 = v18;
    v16[0] = v19[0];
    *(v16 + 9) = *(v19 + 9);
    sub_1ABAB480C(&v14, &qword_1EB4D1828, &qword_1ABF50FD0);
  }

LABEL_6:
}

uint64_t (*sub_1ABE54EF8(uint64_t (*result)(_BYTE *), uint64_t a2, uint64_t a3))(_BYTE *)
{
  v4 = result;
  v5 = (a3 + 32);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    memcpy(__dst, v5, sizeof(__dst));
    memcpy(__src, v5, sizeof(__src));
    sub_1ABB345D8(__dst, v9);
    v7 = v4(__src);
    if (v3)
    {
      memcpy(v9, __src, sizeof(v9));
      return sub_1ABB34634(v9);
    }

    v8 = v7;
    v5 += 112;
    memcpy(v9, __src, sizeof(v9));
    result = sub_1ABB34634(v9);
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t (*sub_1ABE54FDC(uint64_t (*result)(_BYTE *), uint64_t a2, uint64_t a3))(_BYTE *)
{
  v4 = result;
  v5 = (a3 + 32);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    memcpy(__dst, v5, sizeof(__dst));
    memcpy(__src, v5, sizeof(__src));
    sub_1ABE57A98(__dst, v9);
    v7 = v4(__src);
    if (v3)
    {
      memcpy(v9, __src, sizeof(v9));
      return sub_1ABE57AF4(v9);
    }

    v8 = v7;
    v5 += 120;
    memcpy(v9, __src, sizeof(v9));
    result = sub_1ABE57AF4(v9);
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t sub_1ABE550F0()
{

  sub_1ABE5689C(&type metadata for CustomGraphOrganization);
}

uint64_t sub_1ABE55158(uint64_t (*a1)(void))
{

  v2 = sub_1ABE56740(a1);

  return v2;
}

uint64_t sub_1ABE5519C()
{

  sub_1ABE5689C(&type metadata for CustomGraphSportsTeam);
}

uint64_t sub_1ABE551EC()
{

  v0 = sub_1ABE56740(type metadata accessor for CustomGraphSportsGameEvent);

  return v0;
}

uint64_t sub_1ABE5523C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v5 = sub_1ABE55158(type metadata accessor for CustomGraphPerson);
  result = sub_1ABE564C8(a1, v5, type metadata accessor for CustomGraphPerson, sub_1ABE57C44, sub_1ABCDAAEC);
  if (!v2)
  {
    v7 = type metadata accessor for CustomGraphPerson(0);
    return sub_1ABA7B9B4(a2, 0, 1, v7);
  }

  return result;
}

uint64_t sub_1ABE55314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v5 = sub_1ABE55158(type metadata accessor for CustomGraphSongEvent);
  result = sub_1ABE564C8(a1, v5, type metadata accessor for CustomGraphSongEvent, sub_1ABE57C44, sub_1ABCCF2F4);
  if (!v2)
  {
    v7 = type metadata accessor for CustomGraphSongEvent(0);
    return sub_1ABA7B9B4(a2, 0, 1, v7);
  }

  return result;
}

uint64_t sub_1ABE553EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v5 = sub_1ABE55158(type metadata accessor for CustomGraphActivityEvent);
  result = sub_1ABE564C8(a1, v5, type metadata accessor for CustomGraphActivityEvent, sub_1ABE57C44, sub_1ABC8CE40);
  if (!v2)
  {
    v7 = type metadata accessor for CustomGraphActivityEvent(0);
    return sub_1ABA7B9B4(a2, 0, 1, v7);
  }

  return result;
}

double sub_1ABE554C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1ABE550F0();
  *&result = sub_1ABE5659C(a1, a2).n128_u64[0];
  return result;
}

void *sub_1ABE55510@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  sub_1ABE5519C();
  return sub_1ABE56630(a1, a2);
}

uint64_t sub_1ABE5555C@<X0>(void (*a1)(__n128)@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v23[1] = a2;
  v5 = type metadata accessor for CustomGraphPerson(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - v16;
  a1(v15);
  sub_1ABAFC6F0(v13, v17, &qword_1EB4D2920, &qword_1ABF6CB70);
  sub_1ABAFC6F0(v17, v10, &qword_1EB4D2920, &qword_1ABF6CB70);
  if (sub_1ABA7E1E0(v10, 1, v5) == 1)
  {
    sub_1ABAB480C(v10, &qword_1EB4D2920, &qword_1ABF6CB70);
    v18 = sub_1ABAD219C(&qword_1EB4DB130, &qword_1ABF6CBF8);
    v19 = a3;
    v20 = 1;
  }

  else
  {
    sub_1ABE57C7C(v10, v7, type metadata accessor for CustomGraphPerson);
    sub_1ABE57C7C(v7, a3, type metadata accessor for CustomGraphPerson);
    v21 = sub_1ABAD219C(&qword_1EB4DB130, &qword_1ABF6CBF8);
    swift_storeEnumTagMultiPayload();
    v19 = a3;
    v20 = 0;
    v18 = v21;
  }

  return sub_1ABA7B9B4(v19, v20, 1, v18);
}

void sub_1ABE55928(uint64_t a1, uint64_t a2, int a3)
{
  v9 = sub_1ABA7EBDC(a1, a2, a3);
  type metadata accessor for CustomGraphSongEvent(v9);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA809E8();
  v11 = sub_1ABAD219C(&qword_1EB4D61B0, &qword_1ABF50310);
  v12 = sub_1ABA7AB80(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA8121C();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA99704();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA8ED74();
  v8();
  if (!v4)
  {
    sub_1ABA97DD0();
    sub_1ABA843D4();
    sub_1ABAA3DF8();
    if (v26)
    {
      sub_1ABAB480C(v7, &qword_1EB4D61B0, &qword_1ABF50310);
      sub_1ABAD219C(&qword_1EB4D1BE0, &unk_1ABF34230);
      v33 = sub_1ABA8FB7C();
LABEL_17:
      sub_1ABA7B9B4(v33, v34, v35, v36);
      return;
    }

    sub_1ABE57C7C(v7, v6, type metadata accessor for CustomGraphSongEvent);
    v40 = sub_1ABA94D70();
    sub_1ABE57C7C(v40, v41, v42);
    sub_1ABAD219C(&qword_1EB4D1BE0, &unk_1ABF34230);
    sub_1ABA939DC();
LABEL_16:
    swift_storeEnumTagMultiPayload();
    v33 = sub_1ABA90B88();
    goto LABEL_17;
  }

  sub_1ABAA32A0();
  v15 = sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((sub_1ABAA5AD8(v15, v16, v17, &type metadata for BaseEntityConstructionError) & 1) == 0)
  {
LABEL_13:

    v50[10] = v3;
    v37 = v3;
    if (sub_1ABAA554C(v37, v38, v39, &type metadata for GraphObjectConstructionError))
    {
      sub_1ABC81B08(v50, v48);
      sub_1ABC81B08(v48, v49);
      sub_1ABC81B64(v48);
      if ((v47 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D1BE0, &unk_1ABF34230);
        v43 = sub_1ABA8FB7C();
        sub_1ABA7B9B4(v43, v44, v45, v46);
        v32 = v3;
        goto LABEL_19;
      }
    }

    swift_willThrow();
    *v5 = v3;
    sub_1ABAD219C(&qword_1EB4D1BE0, &unk_1ABF34230);
    sub_1ABA939DC();
    goto LABEL_16;
  }

  v18 = sub_1ABA7C7AC();
  if (!v26 || v24 || v18 != 1 || (sub_1ABA7C2EC(), v27))
  {
    sub_1ABC81BB8(v18, v19, v20, v21, v22, v23, v24, v25);
    goto LABEL_13;
  }

  sub_1ABAD219C(&qword_1EB4D1BE0, &unk_1ABF34230);
  v28 = sub_1ABA8FB7C();
  sub_1ABA7B9B4(v28, v29, v30, v31);
  v32 = v49[0];
LABEL_19:
}

void sub_1ABE55BD4(uint64_t a1, uint64_t a2, int a3)
{
  v9 = sub_1ABA7EBDC(a1, a2, a3);
  type metadata accessor for CustomGraphActivityEvent(v9);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA809E8();
  v11 = sub_1ABAD219C(&qword_1EB4D6200, &unk_1ABF6CC00);
  v12 = sub_1ABA7AB80(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA8121C();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA99704();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA8ED74();
  v8();
  if (!v4)
  {
    sub_1ABA97DD0();
    sub_1ABA843D4();
    sub_1ABAA3DF8();
    if (v26)
    {
      sub_1ABAB480C(v7, &qword_1EB4D6200, &unk_1ABF6CC00);
      sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
      v33 = sub_1ABA8FB7C();
LABEL_17:
      sub_1ABA7B9B4(v33, v34, v35, v36);
      return;
    }

    sub_1ABE57C7C(v7, v6, type metadata accessor for CustomGraphActivityEvent);
    v40 = sub_1ABA94D70();
    sub_1ABE57C7C(v40, v41, v42);
    sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
    sub_1ABA939DC();
LABEL_16:
    swift_storeEnumTagMultiPayload();
    v33 = sub_1ABA90B88();
    goto LABEL_17;
  }

  sub_1ABAA32A0();
  v15 = sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((sub_1ABAA5AD8(v15, v16, v17, &type metadata for BaseEntityConstructionError) & 1) == 0)
  {
LABEL_13:

    v50[10] = v3;
    v37 = v3;
    if (sub_1ABAA554C(v37, v38, v39, &type metadata for GraphObjectConstructionError))
    {
      sub_1ABC81B08(v50, v48);
      sub_1ABC81B08(v48, v49);
      sub_1ABC81B64(v48);
      if ((v47 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
        v43 = sub_1ABA8FB7C();
        sub_1ABA7B9B4(v43, v44, v45, v46);
        v32 = v3;
        goto LABEL_19;
      }
    }

    swift_willThrow();
    *v5 = v3;
    sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
    sub_1ABA939DC();
    goto LABEL_16;
  }

  v18 = sub_1ABA7C7AC();
  if (!v26 || v24 || v18 != 1 || (sub_1ABA7C2EC(), v27))
  {
    sub_1ABC81BB8(v18, v19, v20, v21, v22, v23, v24, v25);
    goto LABEL_13;
  }

  sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
  v28 = sub_1ABA8FB7C();
  sub_1ABA7B9B4(v28, v29, v30, v31);
  v32 = v49[0];
LABEL_19:
}

void *sub_1ABE55E80@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  result = a1(&v9);
  v4 = v10;
  if (v10)
  {
    v5 = v9;
    v6 = v11;
    v7 = v12;
    v8 = v13;
    LOBYTE(v9) = 0;
    *a2 = v5;
    *(a2 + 8) = v4;
    *(a2 + 16) = v6;
    *(a2 + 32) = v7;
    *(a2 + 40) = v8;
    *(a2 + 56) = 0;
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 56) = -1;
  }

  return result;
}

void sub_1ABE5604C(uint64_t a1, uint64_t a2, int a3)
{
  v9 = sub_1ABA7EBDC(a1, a2, a3);
  type metadata accessor for CustomGraphSportsGameEvent(v9);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA809E8();
  v11 = sub_1ABAD219C(&qword_1EB4D6248, &qword_1ABF50210);
  v12 = sub_1ABA7AB80(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA8121C();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA99704();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA8ED74();
  v8();
  if (!v4)
  {
    sub_1ABA97DD0();
    sub_1ABA843D4();
    sub_1ABAA3DF8();
    if (v26)
    {
      sub_1ABAB480C(v7, &qword_1EB4D6248, &qword_1ABF50210);
      sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
      v33 = sub_1ABA8FB7C();
LABEL_17:
      sub_1ABA7B9B4(v33, v34, v35, v36);
      return;
    }

    sub_1ABE57C7C(v7, v6, type metadata accessor for CustomGraphSportsGameEvent);
    v40 = sub_1ABA94D70();
    sub_1ABE57C7C(v40, v41, v42);
    sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
    sub_1ABA939DC();
LABEL_16:
    swift_storeEnumTagMultiPayload();
    v33 = sub_1ABA90B88();
    goto LABEL_17;
  }

  sub_1ABAA32A0();
  v15 = sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  if ((sub_1ABAA5AD8(v15, v16, v17, &type metadata for BaseEntityConstructionError) & 1) == 0)
  {
LABEL_13:

    v50[10] = v3;
    v37 = v3;
    if (sub_1ABAA554C(v37, v38, v39, &type metadata for GraphObjectConstructionError))
    {
      sub_1ABC81B08(v50, v48);
      sub_1ABC81B08(v48, v49);
      sub_1ABC81B64(v48);
      if ((v47 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
        v43 = sub_1ABA8FB7C();
        sub_1ABA7B9B4(v43, v44, v45, v46);
        v32 = v3;
        goto LABEL_19;
      }
    }

    swift_willThrow();
    *v5 = v3;
    sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
    sub_1ABA939DC();
    goto LABEL_16;
  }

  v18 = sub_1ABA7C7AC();
  if (!v26 || v24 || v18 != 1 || (sub_1ABA7C2EC(), v27))
  {
    sub_1ABC81BB8(v18, v19, v20, v21, v22, v23, v24, v25);
    goto LABEL_13;
  }

  sub_1ABAD219C(&qword_1EB4DB110, &unk_1ABF6CBD8);
  v28 = sub_1ABA8FB7C();
  sub_1ABA7B9B4(v28, v29, v30, v31);
  v32 = v49[0];
LABEL_19:
}

void *sub_1ABE562F8@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  if (v6)
  {
    *a2 = v5;
    *(a2 + 8) = v4;
    result = memcpy((a2 + 16), v7, 0x48uLL);
    *(a2 + 88) = 0;
  }

  else
  {
    *(a2 + 80) = 0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 88) = -1;
  }

  return result;
}

uint64_t sub_1ABE564C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t, _BYTE *, uint64_t, __n128))
{
  v10 = a3(0);
  sub_1ABA7AB80(v10);
  sub_1ABA7BB88();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v18 = &v19;
  v19 = a1;
  a5(a4, v17, a2, v12);
  if (!v5)
  {
    v13 = sub_1ABA94D70();
    sub_1ABE57C7C(v13, v14, v15);
  }
}

__n128 sub_1ABE5659C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a1;
  sub_1ABCD6550(sub_1ABE57C0C, v8);

  if (!v2)
  {
    v5 = v8[1];
    v6 = v10;
    result = v9;
    v7 = v11;
    *a2 = v8[0];
    *(a2 + 8) = v5;
    *(a2 + 16) = result;
    *(a2 + 32) = v6;
    *(a2 + 40) = v7;
  }

  return result;
}

void *sub_1ABE56630@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = a1;
  sub_1ABCD7E50(sub_1ABE57A44, __src);

  if (!v2)
  {
    return memcpy(a2, __src, 0x58uLL);
  }

  return result;
}

uint64_t sub_1ABE566B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = a5;
  v14[2] = &v15;

  return a7(a6, v14, a1, a2, a3, a4);
}

uint64_t sub_1ABE56740(uint64_t (*a1)(void))
{
  v2 = v1;
  v3 = a1(0);
  sub_1ABA96B24();
  sub_1ABAD5248(v3, *(v1 + 16));
  v4 = v25;
  sub_1ABAB480C(v24, &qword_1EB4D3000, &unk_1ABF3AA60);
  if (!v4)
  {
    v25 = sub_1ABF217F4();
    swift_allocObject();
    v24[0] = sub_1ABF217E4();
    swift_beginAccess();
    sub_1ABD25744(v24, v3);
    swift_endAccess();
  }

  v5 = sub_1ABAD5248(v3, *(v2 + 16));
  sub_1ABAA2408(v6, v7, v8, v9, v10, v11, v5);
  v12 = sub_1ABA7D000();
  sub_1ABAD219C(v12, v13);
  sub_1ABF217F4();
  if (swift_dynamicCast())
  {
    sub_1ABAB480C(v24, &qword_1EB4D3000, &unk_1ABF3AA60);
    return v23;
  }

  else
  {
    sub_1ABAA26FC();
    result = sub_1ABAA4BA8("Fatal error", v15, v16, v17, v18, "IntelligencePlatform/InitializationResourcesManager.swift", v19, v20, v21, v22);
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABE5689C(uint64_t a1)
{
  v3 = v1;
  sub_1ABA96B24();
  sub_1ABAD5248(a1, *(v1 + 16));
  v4 = v24;
  sub_1ABAB480C(v23, &qword_1EB4D3000, &unk_1ABF3AA60);
  if (!v4)
  {
    v24 = MEMORY[0x1E69E7CA8] + 8;
    swift_beginAccess();
    sub_1ABD25744(v23, a1);
    swift_endAccess();
  }

  v5 = sub_1ABAD5248(a1, *(v3 + 16));
  sub_1ABAA2408(v6, v7, v8, v9, v10, v11, v5);
  v12 = sub_1ABA7D000();
  sub_1ABAD219C(v12, v13);
  if (swift_dynamicCast())
  {
    return sub_1ABAB480C(v23, &qword_1EB4D3000, &unk_1ABF3AA60);
  }

  sub_1ABAA26FC();
  result = sub_1ABAA4BA8("Fatal error", v15, v16, v17, v18, "IntelligencePlatform/InitializationResourcesManager.swift", v19, v20, v21, v22);
  __break(1u);
  return result;
}

void *ViewService.siriPersonView.getter()
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = *(v0 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v3 = sub_1ABF23BD4();
  v17[0] = 0;
  v4 = [v2 requestAssertionForViewName:v3 error:v17];

  v5 = v17[0];
  if (v4)
  {
    v6 = *(v0 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v7 = v6[5];
    v8 = v6[6];
    sub_1ABA93E20(v6 + 2, v7);
    v9 = *(v8 + 8);
    v10 = v5;
    v11 = v9(v4, v7, v8);
    if (v1)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      v15 = v11;
      v16 = v12;
      type metadata accessor for SubgraphView();
      swift_allocObject();
      return SubgraphView.init(accessAssertion:database:tableName:batchSize:)(v4, v15, v16, 0x7372655069726973, 0xEA00000000006E6FLL, 10);
    }
  }

  else
  {
    v14 = v17[0];
    sub_1ABF21BE4();

    return swift_willThrow();
  }
}

void SiriPersonView.fetchValues(entityIdentifier:)(uint64_t a1)
{
  v3 = v2;
  v5 = sub_1ABAD219C(&qword_1EB4D2920, &qword_1ABF6CB70);
  sub_1ABA7AB80(v5);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v83 - v7;
  v9 = type metadata accessor for CustomGraphPerson(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1[1];
  v83 = *v1;
  v95 = v13;
  v110 = MEMORY[0x1E69E7CC0];
  v97 = *(a1 + 16);
  if (!v97)
  {
    v86 = MEMORY[0x1E69E7CC0];
    return;
  }

  v14 = 0;
  v96 = a1 + 32;
  v85 = v12 + 16;
  v92 = 181;
  v91 = 1844;
  v90 = 3396;
  v87 = xmmword_1ABF34750;
  v86 = MEMORY[0x1E69E7CC0];
  v89 = v8;
  v93 = v9;
  v94 = v12;
  while (1)
  {
    v15 = *(v96 + 8 * v14);
    EntityClass.init(intValue:)(HIBYTE(v15), &v103);
    if (!v104)
    {
      sub_1ABAEFC04();
      v41 = swift_allocError();
      *v42 = v87;
      v42[1] = 0u;
      v42[2] = 0u;
      v42[3] = 0u;
      *(v42 + 57) = 0u;
LABEL_20:
      swift_willThrow();

      v3 = 0;
      goto LABEL_46;
    }

    if (v92 < 27)
    {
      break;
    }

    if (!_Records_GDEntityClass_records)
    {
      goto LABEL_58;
    }

    if (*(_Records_GDEntityClass_records + 0x278) >= v91)
    {
      goto LABEL_56;
    }

    if (*(_Records_GDEntityClass_records + 0x280) >= v90)
    {
      goto LABEL_57;
    }

    v98 = v15;
    v102 = v104;
    if (!_Records_GDEntityClass_classIds[0])
    {
      goto LABEL_60;
    }

    v99 = v14;
    v100 = v3;
    v16 = v103;
    v18 = v105;
    v17 = v106;
    LODWORD(v101) = v107;
    v19 = *(_Records_GDEntityClass_records + 0x270);
    v20 = sub_1ABF23DD4();
    if (!_Records_GDEntityClass_labels)
    {
      goto LABEL_59;
    }

    v22 = v20;
    v23 = v21;
    v24 = sub_1ABF23DD4();
    v108[0] = v22;
    v108[1] = v23;
    v108[2] = v24;
    v108[3] = v25;
    v109 = v19;
    if (v24 != v18 || v17 != v25)
    {
      v27 = v24;
      v28 = v25;
      if ((sub_1ABF25054() & 1) == 0)
      {
        v103 = v16;
        v104 = v102;
        v105 = v18;
        v106 = v17;
        v107 = v101;
        EntityClass.ancestorClassesSet.getter();
        sub_1ABAA6788(v108, v29, v30, v31, v32, v33, v34, v35, v83, v84, v85, v86, v87, *(&v87 + 1), v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
        LODWORD(v84) = v36;

        if ((v84 & 1) == 0)
        {
          sub_1ABAEFC04();
          v41 = swift_allocError();
          *v81 = v22;
          *(v81 + 8) = v23;
          *(v81 + 16) = v27;
          *(v81 + 24) = v28;
          *(v81 + 32) = v19;
          v82 = v102;
          *(v81 + 40) = v16;
          *(v81 + 48) = v82;
          *(v81 + 56) = v18;
          *(v81 + 64) = v17;
          *(v81 + 72) = v101;
          v14 = v99;
          goto LABEL_20;
        }
      }
    }

    sub_1ABA88934(v108);
    sub_1ABAA8FA8(v16, v102, v18, v17);
    v37 = v89;
    v38 = v100;
    sub_1ABE545E4();
    v3 = v38;
    v39 = v94;
    if (v38)
    {
LABEL_52:

      return;
    }

    v40 = v93;
    if (sub_1ABA7E1E0(v37, 1, v93) == 1)
    {
      sub_1ABAB480C(v37, &qword_1EB4D2920, &qword_1ABF6CB70);
    }

    else
    {
      sub_1ABA81C9C();
      sub_1ABE57C7C(v37, v39, v43);
      if (*&v85[*(v40 + 112)])
      {
        v100 = 0;
        v44 = 0;
        v45 = *(v39 + *(v40 + 108));
        v46 = *(v45 + 16);
        v47 = v45 + 112;
        v98 = MEMORY[0x1E69E7CC0];
        v84 = v45 + 112;
LABEL_23:
        v48 = v47 + 88 * v44;
        sub_1ABA95964();
        while (v46 != v44)
        {
          if (v44 >= v46)
          {
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

          v50 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            goto LABEL_54;
          }

          v51 = *(v48 - 48);
          if (v51)
          {
            v53 = *(v48 - 64);
            v52 = *(v48 - 56);
            v54 = *(v48 - 32);
            v101 = *(v48 - 40);
            v102 = v53;
            v55 = *(v48 - 24);
            v56 = v52 == v49 && v51 == 0xE900000000000074;
            if (v56 || (sub_1ABF25054(), sub_1ABA95964(), (v57 & 1) != 0))
            {
              if (v55)
              {

                swift_bridgeObjectRetain_n();

                v58 = v98;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1ABAAA4F4();
                  v58 = v62;
                }

                v59 = *(v58 + 16);
                v60 = v59 + 1;
                if (v59 >= *(v58 + 24) >> 1)
                {
                  v98 = v59 + 1;
                  sub_1ABAAA4F4();
                  v60 = v98;
                  v58 = v63;
                }

                *(v58 + 16) = v60;
                v98 = v58;
                v61 = v58 + 16 * v59;
                *(v61 + 32) = v54;
                *(v61 + 40) = v55;

                v44 = v50;
                v47 = v84;
                goto LABEL_23;
              }
            }
          }

          ++v44;
          v48 += 88;
        }

        v103 = MEMORY[0x1E69E7CC0];
        v64 = v94;
        v65 = *(v94 + *(v93 + 96));
        v66 = v83;

        v67 = v95;

        v68 = v65;
        v69 = v100;
        sub_1ABE54DA8(v68, v66, v67, &v103);
        if (v69)
        {

          sub_1ABE57784(v64);

          goto LABEL_52;
        }

        v100 = 0;
        v70 = v64[5];
        v86 = v64[4];
        v72 = v64[6];
        v71 = v64[7];
        v84 = v64[8];
        v73 = v64[2];
        v74 = v64[3];
        v75 = v64[11];
        v76 = v103;
        v101 = objc_allocWithZone(GDSiriPerson);
        v77 = v98;

        v78 = v72;

        v79 = v71;

        v80 = v84;

        v102 = v76;
        sub_1ABE5759C(v77, v74, v86, v70, v78, v79, v80, v73, v75, v76);
        MEMORY[0x1AC5A9710]();
        if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1ABF24134();
        }

        sub_1ABA7D0F8();
        sub_1ABF24184();
        v86 = v110;
        sub_1ABE57784(v64);

        v3 = v100;
      }

      else
      {
        sub_1ABE57784(v39);
      }
    }

    v14 = v99;
LABEL_46:
    if (++v14 == v97)
    {
      return;
    }
  }

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
}

uint64_t sub_1ABE57330(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = 0;
  v6 = *(result + 40);
  v22 = *(v6 + 16);
  v15 = v6;
  while (v22 != v5)
  {
    if (v5 >= *(v15 + 16))
    {
      __break(1u);
      return result;
    }

    result = sub_1ABE54A54(&v16);
    if (v4)
    {
      return result;
    }

    v7 = v17;
    if (v17)
    {
      v8 = v16;
      v9 = v18;
      v10 = v19;
      v11 = v20;
      v12 = v21;
      if (v19 | v21)
      {
        sub_1ABE57B8C(v16, v17);

        sub_1ABC77428(v8, v7);
        v13 = objc_allocWithZone(GDSiriPersonOrganization);
        sub_1ABE574FC(v9, v10, v11, v12);
        MEMORY[0x1AC5A9710]();
        if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1ABF24134();
        }

        result = sub_1ABF24184();
      }

      else
      {
        result = sub_1ABC77428(v16, v17);
      }
    }

    ++v5;
  }

  return result;
}

id sub_1ABE574FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_1ABF23BD4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_1ABF23BD4();

LABEL_6:
  v8 = [v4 initWithOrganizationName:v6 phoneticOrganizationName:v7];

  return v8;
}

id sub_1ABE5759C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = sub_1ABF240C4();

  v10 = sub_1ABF240C4();

  v11 = sub_1ABF240C4();

  v20 = sub_1ABF240C4();

  v19 = sub_1ABF240C4();

  v18 = sub_1ABF240C4();

  v12 = sub_1ABF240C4();

  v17 = sub_1ABF240C4();

  v13 = sub_1ABF240C4();

  sub_1ABE57B48();
  v14 = sub_1ABF240C4();

  v15 = [v22 initWithContactIdentifiers:v21 givenNames:v10 phoneticGivenNames:v11 middleNames:v20 phoneticMiddleNames:v19 lastNames:v18 phoneticLastNames:v12 prefixes:v17 nickNames:v13 organizations:v14];

  return v15;
}

uint64_t sub_1ABE57784(uint64_t a1)
{
  v2 = type metadata accessor for CustomGraphPerson(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABE57B48()
{
  result = qword_1EB4DB118;
  if (!qword_1EB4DB118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4DB118);
  }

  return result;
}

uint64_t sub_1ABE57B8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1ABE57C7C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1ABA7BBB0();
  v4 = sub_1ABA7D000();
  v5(v4);
  return a2;
}

uint64_t static ViewService.SiriRemembersView.databaseMigrator()()
{
  v1 = sub_1ABF22714();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABF22734();
  v5 = *(v2 + 104);
  v6 = (v5)(v4, *MEMORY[0x1E699FE90], v1);
  sub_1ABA81238(v6, 0x80000001ABF88320, v7, sub_1ABE5818C);
  v8 = *(v2 + 8);
  v9 = sub_1ABA7D2D8();
  v8(v9);
  v10 = sub_1ABA8FB90();
  v5(v10);
  sub_1ABA7D2E4(0xD000000000000017, v11, v12, sub_1ABE5A684);
  v13 = sub_1ABA7D2D8();
  v8(v13);
  v14 = sub_1ABA8FB90();
  v5(v14);
  sub_1ABA7D2E4(0xD00000000000001BLL, v15, v16, sub_1ABE5ABF0);
  v17 = sub_1ABA7D2D8();
  v8(v17);
  v18 = sub_1ABA8FB90();
  v5(v18);
  sub_1ABA7D2E4(0xD00000000000001CLL, v19, v20, sub_1ABE5ACEC);
  v21 = sub_1ABA7D2D8();
  v8(v21);
  v22 = sub_1ABA8FB90();
  v5(v22);
  sub_1ABA7D2E4(0xD000000000000023, v23, v24, sub_1ABE5B0C4);
  v25 = sub_1ABA7D2D8();
  v8(v25);
  v26 = sub_1ABA8FB90();
  v5(v26);
  sub_1ABA7D2E4(0xD000000000000023, v27, v28, sub_1ABE5B2B4);
  v29 = sub_1ABA7D2D8();
  v8(v29);
  v30 = sub_1ABA8FB90();
  v5(v30);
  sub_1ABA7D2E4(0xD00000000000001FLL, v31, v32, sub_1ABE5B700);
  v33 = sub_1ABA7D2D8();
  v8(v33);
  v34 = sub_1ABA8FB90();
  v5(v34);
  sub_1ABA7D2E4(0xD000000000000017, v35, v36, sub_1ABE5B918);
  v37 = sub_1ABA7D2D8();
  v8(v37);
  v38 = sub_1ABA8FB90();
  v39 = (v5)(v38);
  sub_1ABA81238(v39, v0 | 0x8000000000000000, v40, sub_1ABE5BF38);
  v41 = sub_1ABA7D2D8();
  v8(v41);
  v42 = sub_1ABA8FB90();
  v5(v42);
  sub_1ABA7D2E4(0xD000000000000012, v43, v44, sub_1ABE5C5EC);
  v45 = sub_1ABA7D2D8();
  v8(v45);
  v46 = sub_1ABA8FB90();
  v5(v46);
  sub_1ABA7D2E4(0xD00000000000001ELL, v47, v48, sub_1ABE5C7DC);
  v49 = sub_1ABA7D2D8();
  v8(v49);
  v50 = sub_1ABA8FB90();
  v5(v50);
  sub_1ABA7D2E4(0xD000000000000014, v51, v52, sub_1ABE5C9CC);
  v53 = sub_1ABA7D2D8();
  v8(v53);
  v54 = sub_1ABA8FB90();
  v5(v54);
  sub_1ABA7D2E4(0xD00000000000001BLL, v55, v56, sub_1ABE5CBC4);
  v57 = sub_1ABA7D2D8();
  return (v8)(v57);
}

uint64_t sub_1ABE5818C(uint64_t a1)
{
  v93 = a1;
  v1 = sub_1ABF22C44();
  v2 = *(v1 - 8);
  v82 = v1;
  v83 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v81 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1ABF222B4();
  v5 = *(v4 - 8);
  v88 = v4;
  v89 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v79 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v73 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v73 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v73 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v73 - v14;
  v15 = sub_1ABF222D4();
  v92 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v73 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v73 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v73 - v27;
  *&v95 = MEMORY[0x1E69E7CC0];
  v29 = sub_1ABB55AE0(&qword_1EB4D3468, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
  v30 = sub_1ABAD219C(&qword_1EB4D3470, &qword_1ABF3C4E0);
  v31 = sub_1ABB55B28(&qword_1EB4D3478, &qword_1EB4D3470, &qword_1ABF3C4E0);
  v90 = v30;
  v91 = v29;
  sub_1ABF24964();
  v32 = v94;
  sub_1ABF22EB4();
  v94 = v32;
  if (v32)
  {
    return (*(v92 + 8))(v28, v15);
  }

  v78 = v19;
  v34 = v31;
  v35 = v92 + 8;
  v36 = *(v92 + 8);
  v36(v28, v15);
  *&v95 = MEMORY[0x1E69E7CC0];
  sub_1ABF24964();
  v37 = v94;
  sub_1ABF22EB4();
  v94 = v37;
  if (v37)
  {
    v38 = v25;
  }

  else
  {
    v36(v25, v15);
    v39 = MEMORY[0x1E69E7CC0];
    *&v95 = MEMORY[0x1E69E7CC0];
    sub_1ABF24964();
    v40 = v94;
    sub_1ABF22EB4();
    v94 = v40;
    if (!v40)
    {
      v75 = v34;
      v36(v22, v15);
      v76 = v36;
      v97 = 0;
      v95 = 0u;
      v96 = 0u;
      v98 = v39;
      v41 = sub_1ABB55AE0(&qword_1EB4D3440, MEMORY[0x1E699FDD0], MEMORY[0x1E699FDD8]);
      v42 = sub_1ABAD219C(&qword_1EB4D3448, &qword_1ABF3C4C8);
      v43 = sub_1ABB55B28(&qword_1EB4D3450, &qword_1EB4D3448, &qword_1ABF3C4C8);
      v44 = v87;
      v77 = v43;
      v45 = v88;
      sub_1ABF24964();
      v46 = v94;
      sub_1ABF22EA4();
      v94 = v46;
      if (v46)
      {
        (*(v89 + 8))(v44, v45);
      }

      else
      {
        v92 = v35;
        v74 = v15;
        v47 = v44;
        v48 = v89 + 8;
        v49 = *(v89 + 8);
        v49(v47, v45);
        sub_1ABA925A4(&v95, &unk_1EB4D3C40, &unk_1ABF3FCC0);
        v97 = 0;
        v50 = v41;
        v51 = v42;
        v95 = 0u;
        v96 = 0u;
        v98 = MEMORY[0x1E69E7CC0];
        v52 = v86;
        sub_1ABF24964();
        v53 = v94;
        sub_1ABF22EA4();
        v94 = v53;
        v54 = v52;
        if (v53 || (v49(v52, v45), sub_1ABA925A4(&v95, &unk_1EB4D3C40, &unk_1ABF3FCC0), v97 = 0, v95 = 0u, v96 = 0u, v98 = MEMORY[0x1E69E7CC0], v55 = v50, v56 = v85, v57 = v55, sub_1ABF24964(), v58 = v94, sub_1ABF22EA4(), v94 = v58, v54 = v56, v58))
        {
          v49(v54, v45);
        }

        else
        {
          v49(v56, v45);
          sub_1ABA925A4(&v95, &unk_1EB4D3C40, &unk_1ABF3FCC0);
          v97 = 0;
          v87 = v49;
          v95 = 0u;
          v96 = 0u;
          v98 = MEMORY[0x1E69E7CC0];
          v59 = v84;
          sub_1ABF24964();
          v60 = v94;
          sub_1ABF22EA4();
          v94 = v60;
          if (v60)
          {
            (v87)(v59, v45);
          }

          else
          {
            v85 = v51;
            v86 = v57;
            v61 = v87;
            (v87)(v59, v45);
            sub_1ABA925A4(&v95, &unk_1EB4D3C40, &unk_1ABF3FCC0);
            *&v95 = MEMORY[0x1E69E7CC0];
            v62 = v78;
            v63 = v74;
            sub_1ABF24964();
            v64 = v94;
            sub_1ABF22EB4();
            v94 = v64;
            v65 = v62;
            if (v64)
            {
              return v76(v65, v63);
            }

            v76(v62, v63);
            v66 = v81;
            sub_1ABF22C34();
            v67 = v82;
            v68 = v94;
            sub_1ABF22E94();
            v94 = v68;
            if (v68)
            {
              return (*(v83 + 8))(v66, v67);
            }

            v89 = v48;
            (*(v83 + 8))(v66, v67);
            v69 = MEMORY[0x1E69E7CC0];
            *&v95 = MEMORY[0x1E69E7CC0];
            v70 = v80;
            sub_1ABF24964();
            v71 = v94;
            sub_1ABF22EB4();
            v94 = v71;
            v65 = v70;
            if (v71)
            {
              return v76(v65, v63);
            }

            v76(v70, v63);
            v97 = 0;
            v95 = 0u;
            v96 = 0u;
            v98 = v69;
            sub_1ABF24964();
            v72 = v94;
            sub_1ABF22EA4();
            v94 = v72;
            v61(v79, v88);
          }
        }
      }

      return sub_1ABA925A4(&v95, &unk_1EB4D3C40, &unk_1ABF3FCC0);
    }

    v38 = v22;
  }

  return (v36)(v38, v15);
}

uint64_t sub_1ABE58D5C()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v9 - v1;
  v3 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v9 - v4;
  sub_1ABF22D84();
  v6 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v5, 0, 1, v6);
  sub_1ABF22634();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v7 = sub_1ABF22E64();
  sub_1ABA7B9B4(v2, 1, 1, v7);
  sub_1ABF22684();

  sub_1ABA925A4(v2, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v5, 0, 1, v6);
  sub_1ABF22634();

  return sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
}

uint64_t sub_1ABE58F34()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v9 - v1;
  v3 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v9 - v4;
  sub_1ABF22D84();
  v6 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v5, 0, 1, v6);
  sub_1ABF22634();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v7 = sub_1ABF22E64();
  sub_1ABA7B9B4(v2, 1, 1, v7);
  sub_1ABF22684();

  sub_1ABA925A4(v2, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DC4();
  sub_1ABA7B9B4(v5, 0, 1, v6);
  sub_1ABF22634();

  return sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
}

uint64_t sub_1ABE59104(uint64_t a1)
{
  v22 = sub_1ABF22E04();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_1ABF22E64();
  sub_1ABA7B9B4(v8, 1, 1, v9);
  sub_1ABF22624();

  sub_1ABA925A4(v8, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  v10 = sub_1ABF22DD4();
  v20 = v10;
  sub_1ABA7B9B4(v5, 0, 1, v10);
  sub_1ABF22634();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v8, 1, 1, v9);
  sub_1ABF226A4();

  sub_1ABA925A4(v8, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v5, 0, 1, v10);
  sub_1ABF22634();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v11 = v9;
  sub_1ABA7B9B4(v8, 1, 1, v9);
  sub_1ABF226C4();

  sub_1ABA925A4(v8, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v12 = v21;
  sub_1ABF22DF4();
  sub_1ABF226B4();

  v19 = *(v23 + 8);
  v23 += 8;
  v13 = v22;
  v19(v12, v22);
  sub_1ABF22D84();
  v14 = v20;
  sub_1ABA7B9B4(v5, 0, 1, v20);
  v18 = a1;
  sub_1ABF22634();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v8, 1, 1, v11);
  sub_1ABF226C4();

  sub_1ABA925A4(v8, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DF4();
  sub_1ABF226B4();

  v15 = v13;
  v16 = v19;
  v19(v12, v15);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v5, 0, 1, v14);
  sub_1ABF22634();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v8, 1, 1, v11);
  sub_1ABF226C4();

  sub_1ABA925A4(v8, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DF4();
  sub_1ABF226B4();

  v16(v12, v22);
  sub_1ABF22DA4();
  sub_1ABA7B9B4(v5, 0, 1, v14);
  sub_1ABF22634();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v8, 1, 1, v11);
  sub_1ABF226C4();

  sub_1ABA925A4(v8, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v5, 0, 1, v14);
  sub_1ABF22634();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v8, 1, 1, v11);
  sub_1ABF226C4();

  sub_1ABA925A4(v8, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v5, 0, 1, v14);
  sub_1ABF22634();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v8, 1, 1, v11);
  sub_1ABF226C4();

  sub_1ABA925A4(v8, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v5, 0, 1, v14);
  sub_1ABF22634();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v8, 1, 1, v11);
  sub_1ABF226C4();

  sub_1ABA925A4(v8, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DC4();
  sub_1ABA7B9B4(v5, 0, 1, v14);
  sub_1ABF22634();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v8, 1, 1, v11);
  sub_1ABF226C4();

  sub_1ABA925A4(v8, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D94();
  sub_1ABA7B9B4(v5, 0, 1, v14);
  sub_1ABF22634();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v8, 1, 1, v11);
  sub_1ABF226C4();

  sub_1ABA925A4(v8, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v5, 0, 1, v14);
  sub_1ABF22634();

  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v5, 0, 1, v14);
  sub_1ABF22634();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v8, 1, 1, v11);
  sub_1ABF226C4();

  return sub_1ABA925A4(v8, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABE59A7C()
{
  v0 = sub_1ABF22E04();
  v14 = *(v0 - 8);
  v15 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v13 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1ABF22E64();
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF22624();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  v9 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v4, 0, 1, v9);
  sub_1ABF22634();
  sub_1ABA925A4(v4, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF226C4();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v4, 0, 1, v9);
  sub_1ABF22634();
  sub_1ABA925A4(v4, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF226C4();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v10 = v13;
  sub_1ABF22DF4();
  sub_1ABF226B4();

  (*(v14 + 8))(v10, v15);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v4, 0, 1, v9);
  sub_1ABF22634();
  sub_1ABA925A4(v4, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF226C4();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v4, 0, 1, v9);
  sub_1ABF22634();
  sub_1ABA925A4(v4, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF226C4();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DC4();
  sub_1ABA7B9B4(v4, 0, 1, v9);
  sub_1ABF22634();
  sub_1ABA925A4(v4, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF226C4();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DC4();
  sub_1ABA7B9B4(v4, 0, 1, v9);
  sub_1ABF22634();
  sub_1ABA925A4(v4, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF226C4();

  sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABA7B9B4(v7, 1, 1, v8);
  sub_1ABF22644();
  return sub_1ABA925A4(v7, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABE5A018()
{
  sub_1ABF22884();
  sub_1ABF22894();
}

uint64_t sub_1ABE5A07C(uint64_t a1)
{
  v27 = a1;
  v1 = sub_1ABF22E04();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v28 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1ABAD219C(&qword_1EB4D3480, &qword_1ABF3C4E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  sub_1ABF22DB4();
  v26 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v14, 0, 1, v26);
  sub_1ABF22634();
  sub_1ABA925A4(v14, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v31 = sub_1ABF22E64();
  sub_1ABA7B9B4(v11, 1, 1, v31);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v24 = *MEMORY[0x1E69A00B8];
  v15 = v24;
  v16 = sub_1ABF22E44();
  v17 = *(v16 - 8);
  v23 = *(v17 + 104);
  v25 = v17 + 104;
  v23(v8, v15, v16);
  sub_1ABA7B9B4(v8, 0, 1, v16);
  sub_1ABA7B9B4(v5, 1, 1, v16);
  sub_1ABF22694();

  sub_1ABA925A4(v5, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABA925A4(v8, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABF22DB4();
  v18 = v26;
  sub_1ABA7B9B4(v14, 0, 1, v26);
  sub_1ABF22634();
  sub_1ABA925A4(v14, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v11, 1, 1, v31);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v23(v8, v24, v16);
  sub_1ABA7B9B4(v8, 0, 1, v16);
  sub_1ABA7B9B4(v5, 1, 1, v16);
  sub_1ABF22694();

  sub_1ABA925A4(v5, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABA925A4(v8, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v14, 0, 1, v18);
  sub_1ABF22634();
  sub_1ABA925A4(v14, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v19 = v31;
  sub_1ABA7B9B4(v11, 1, 1, v31);
  sub_1ABF226C4();

  sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v20 = v28;
  sub_1ABF22DF4();
  sub_1ABF226B4();

  (*(v29 + 8))(v20, v30);
  sub_1ABA7B9B4(v11, 1, 1, v19);
  sub_1ABF22614();
  return sub_1ABA925A4(v11, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABE5A684(uint64_t a1)
{
  v3 = sub_1ABF22854();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  v22 = a1;
  result = sub_1ABF22E84();
  if (!v1)
  {
    v21 = v6;
    sub_1ABF22844();
    sub_1ABF22EC4();
    v17 = v15;
    v18 = *(v4 + 8);
    v18(v17, v3);
    sub_1ABF22844();
    sub_1ABF22EC4();
    v18(v12, v3);
    sub_1ABF22844();
    sub_1ABF22EC4();
    v18(v9, v3);
    v19 = v21;
    sub_1ABF22844();
    sub_1ABF22EC4();
    v18(v19, v3);
    return sub_1ABF22E84();
  }

  return result;
}

uint64_t sub_1ABE5A9C0()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11[-1] - v1;
  v3 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11[-1] - v5;
  MEMORY[0x1AC5A7C60](0x727453726F6E6F64, 0xEB000000006D6165, 0x727453726F6E6F64, 0xEF747865546D6165, v4);
  sub_1ABF22DB4();
  v7 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v6, 0, 1, v7);
  sub_1ABF225E4();
  sub_1ABA925A4(v6, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v11[3] = MEMORY[0x1E69E6530];
  v11[4] = MEMORY[0x1E69A0180];
  v11[0] = 0;
  sub_1ABF226D4();

  sub_1ABA84B54(v11);
  v8 = sub_1ABF22E64();
  sub_1ABA7B9B4(v2, 1, 1, v8);
  sub_1ABF226C4();

  return sub_1ABA925A4(v2, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABE5ABF0()
{
  v0 = sub_1ABF22854();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABF22844();
  sub_1ABF22EC4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1ABE5ACEC()
{
  v1 = sub_1ABF22854();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ABF22E84();
  if (!v0)
  {
    sub_1ABF22844();
    sub_1ABF22EC4();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_1ABE5AE2C()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-1] - v1;
  v3 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-1] - v4;
  sub_1ABF22D94();
  v6 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v5, 0, 1, v6);
  sub_1ABF225E4();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v7 = MEMORY[0x1E69E6530];
  v8 = MEMORY[0x1E69A0180];
  v13 = MEMORY[0x1E69E6530];
  v14 = MEMORY[0x1E69A0180];
  v12[0] = 0;
  sub_1ABF226D4();

  sub_1ABA84B54(v12);
  v9 = sub_1ABF22E64();
  sub_1ABA7B9B4(v2, 1, 1, v9);
  sub_1ABF226C4();

  sub_1ABA925A4(v2, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v5, 0, 1, v6);
  sub_1ABF225E4();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v13 = v7;
  v14 = v8;
  v12[0] = 15;
  sub_1ABF226D4();

  sub_1ABA84B54(v12);
  sub_1ABA7B9B4(v2, 1, 1, v9);
  sub_1ABF226C4();

  return sub_1ABA925A4(v2, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABE5B0C4()
{
  v0 = sub_1ABF222B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = MEMORY[0x1E69E7CC0];
  sub_1ABB55AE0(&qword_1EB4D3440, MEMORY[0x1E699FDD0], MEMORY[0x1E699FDD8]);
  sub_1ABAD219C(&qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABB55B28(&qword_1EB4D3450, &qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABF24964();
  sub_1ABF22EA4();
  (*(v1 + 8))(v3, v0);
  return sub_1ABA925A4(v6, &unk_1EB4D3C40, &unk_1ABF3FCC0);
}

uint64_t sub_1ABE5B2B4()
{
  v1 = sub_1ABF22854();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ABF22E84();
  if (!v0)
  {
    v6 = [objc_opt_self() platform];
    v7 = BMDevicePlatform.deviceMetadataDevicePlatform.getter(v6);
    sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E72F0];
    *(v8 + 16) = xmmword_1ABF34740;
    v10 = MEMORY[0x1E69A01B8];
    *(v8 + 56) = v9;
    *(v8 + 64) = v10;
    *(v8 + 32) = v7;
    sub_1ABF22834();
    sub_1ABF22EC4();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_1ABE5B460()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10[-1] - v1;
  v3 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10[-1] - v4;
  sub_1ABF22DA4();
  v6 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v5, 0, 1, v6);
  sub_1ABF225E4();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v7 = sub_1ABF22E64();
  sub_1ABA7B9B4(v2, 1, 1, v7);
  sub_1ABF226C4();

  sub_1ABA925A4(v2, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v11 = MEMORY[0x1E69E6370];
  v12 = MEMORY[0x1E69A0150];
  LOBYTE(v10[0]) = 1;
  sub_1ABF226D4();

  sub_1ABA84B54(v10);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v5, 0, 1, v6);
  sub_1ABF225E4();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v2, 1, 1, v7);
  sub_1ABF226C4();

  sub_1ABA925A4(v2, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v11 = MEMORY[0x1E69E6530];
  v12 = MEMORY[0x1E69A0180];
  v10[0] = 0;
  sub_1ABF226D4();

  return sub_1ABA84B54(v10);
}

uint64_t sub_1ABE5B758()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10[-1] - v1;
  v3 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10[-1] - v4;
  sub_1ABF22DB4();
  v6 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v5, 0, 1, v6);
  sub_1ABF225E4();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v7 = sub_1ABF22E64();
  sub_1ABA7B9B4(v2, 1, 1, v7);
  sub_1ABF226C4();

  sub_1ABA925A4(v2, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v10[3] = MEMORY[0x1E69E6530];
  v10[4] = MEMORY[0x1E69A0180];
  v10[0] = 0;
  sub_1ABF226D4();

  return sub_1ABA84B54(v10);
}

uint64_t sub_1ABE5B918()
{
  v31 = sub_1ABF22854();
  v0 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  sub_1ABF22844();
  v18 = v30;
  sub_1ABF22EC4();
  if (v18)
  {
    return (*(v0 + 8))(v17, v31);
  }

  v29 = v8;
  v30 = v14;
  v27 = v2;
  v28 = v5;
  v20 = *(v0 + 8);
  v21 = v31;
  v20(v17, v31);
  sub_1ABF22E84();
  sub_1ABF22E84();
  v22 = v30;
  sub_1ABF22844();
  sub_1ABF22EC4();
  v20(v22, v21);
  sub_1ABF22844();
  sub_1ABF22EC4();
  v20(v11, v21);
  v23 = v29;
  sub_1ABF22844();
  sub_1ABF22EC4();
  v20(v23, v21);
  v24 = v20;
  v25 = v28;
  sub_1ABF22844();
  sub_1ABF22EC4();
  v24(v25, v21);
  v26 = v27;
  sub_1ABF22844();
  sub_1ABF22EC4();
  return (v24)(v26, v21);
}

uint64_t sub_1ABE5BD74()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10[-1] - v1;
  v3 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10[-1] - v4;
  sub_1ABF22D84();
  v6 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v5, 0, 1, v6);
  sub_1ABF225E4();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v10[3] = MEMORY[0x1E69E6158];
  v10[4] = MEMORY[0x1E69A0138];
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1ABF226D4();

  sub_1ABA84B54(v10);
  v7 = sub_1ABF22E64();
  sub_1ABA7B9B4(v2, 1, 1, v7);
  sub_1ABF226C4();

  return sub_1ABA925A4(v2, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABE5BF38(uint64_t a1)
{
  v24 = a1;
  v1 = sub_1ABF222D4();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v20 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1ABF222B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v28 = MEMORY[0x1E69E7CC0];
  v10 = sub_1ABB55AE0(&qword_1EB4D3440, MEMORY[0x1E699FDD0], MEMORY[0x1E699FDD8]);
  v11 = sub_1ABAD219C(&qword_1EB4D3448, &qword_1ABF3C4C8);
  v12 = sub_1ABB55B28(&qword_1EB4D3450, &qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABF24964();
  v13 = v23;
  sub_1ABF22EA4();
  if (v13)
  {
    (*(v4 + 8))(v9, v3);
  }

  else
  {
    v19[0] = v12;
    v19[1] = v11;
    v19[2] = v10;
    v23 = v6;
    v15 = *(v4 + 8);
    v15(v9, v3);
    sub_1ABA925A4(&v25, &unk_1EB4D3C40, &unk_1ABF3FCC0);
    *&v25 = MEMORY[0x1E69E7CC0];
    sub_1ABB55AE0(&qword_1EB4D3468, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
    sub_1ABAD219C(&qword_1EB4D3470, &qword_1ABF3C4E0);
    sub_1ABB55B28(&qword_1EB4D3478, &qword_1EB4D3470, &qword_1ABF3C4E0);
    v16 = v20;
    v17 = v22;
    sub_1ABF24964();
    sub_1ABF22EB4();
    (*(v21 + 8))(v16, v17);
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v28 = MEMORY[0x1E69E7CC0];
    v18 = v23;
    sub_1ABF24964();
    sub_1ABF22EA4();
    v15(v18, v3);
  }

  return sub_1ABA925A4(&v25, &unk_1EB4D3C40, &unk_1ABF3FCC0);
}

uint64_t sub_1ABE5C3B4()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  sub_1ABF22D84();
  v6 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v5, 0, 1, v6);
  sub_1ABF22634();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v7 = *MEMORY[0x1E69A00D0];
  v8 = sub_1ABF22E64();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  sub_1ABA7B9B4(v2, 0, 1, v8);
  sub_1ABF22684();

  sub_1ABA925A4(v2, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D94();
  sub_1ABA7B9B4(v5, 0, 1, v6);
  sub_1ABF22634();

  return sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
}

uint64_t sub_1ABE5C5EC()
{
  v0 = sub_1ABF222B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = MEMORY[0x1E69E7CC0];
  sub_1ABB55AE0(&qword_1EB4D3440, MEMORY[0x1E699FDD0], MEMORY[0x1E699FDD8]);
  sub_1ABAD219C(&qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABB55B28(&qword_1EB4D3450, &qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABF24964();
  sub_1ABF22EA4();
  (*(v1 + 8))(v3, v0);
  return sub_1ABA925A4(v6, &unk_1EB4D3C40, &unk_1ABF3FCC0);
}

uint64_t sub_1ABE5C7DC()
{
  v0 = sub_1ABF222B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = MEMORY[0x1E69E7CC0];
  sub_1ABB55AE0(&qword_1EB4D3440, MEMORY[0x1E699FDD0], MEMORY[0x1E699FDD8]);
  sub_1ABAD219C(&qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABB55B28(&qword_1EB4D3450, &qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABF24964();
  sub_1ABF22EA4();
  (*(v1 + 8))(v3, v0);
  return sub_1ABA925A4(v6, &unk_1EB4D3C40, &unk_1ABF3FCC0);
}

uint64_t sub_1ABE5C9CC()
{
  v1 = sub_1ABF22854();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  sub_1ABF22844();
  sub_1ABF22EC4();
  if (v0)
  {
    return (*(v2 + 8))(v10, v1);
  }

  v12 = *(v2 + 8);
  v12(v10, v1);
  sub_1ABF22844();
  sub_1ABF22EC4();
  v12(v7, v1);
  sub_1ABF22844();
  sub_1ABF22EC4();
  return (v12)(v4, v1);
}

uint64_t sub_1ABE5CBC4()
{
  v1 = sub_1ABF22854();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1ABF22844();
  sub_1ABF22EC4();
  if (v0)
  {
    return (*(v2 + 8))(v13, v1);
  }

  v17 = *(v2 + 8);
  v17(v13, v1);
  sub_1ABF22844();
  sub_1ABF22EC4();
  v15 = v17;
  v17(v10, v1);
  sub_1ABF22844();
  sub_1ABF22EC4();
  v15(v7, v1);
  sub_1ABF22844();
  sub_1ABF22EC4();
  return (v15)(v4, v1);
}

uint64_t sub_1ABE5CE50()
{
  v0 = sub_1ABF22E64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = sub_1ABF22AB4();
  sub_1ABB9009C(v7, qword_1EB4DB138);
  sub_1ABA7AA24(v7, qword_1EB4DB138);
  v8 = *MEMORY[0x1E69A00D0];
  v9 = *(v1 + 104);
  v9(v6, v8, v0);
  v9(v3, v8, v0);
  return sub_1ABF22AA4();
}

uint64_t static ViewService.SiriRemembersView.ProcessedInteraction.persistenceConflictPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB4D0110 != -1)
  {
    swift_once();
  }

  v3 = sub_1ABF22AB4();
  v4 = sub_1ABA7AA24(v3, qword_1EB4DB138);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t ViewService.SiriRemembersView.ProcessedInteraction.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ViewService.SiriRemembersView.ProcessedInteraction.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction(0) + 20);
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction(uint64_t a1)
{
  result = qword_1ED86B760;
  if (!qword_1ED86B760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ViewService.SiriRemembersView.ProcessedInteraction.init(id:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction(0) + 20);
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  v8 = *(v7 + 32);

  return v8(&a4[v6], a3);
}

uint64_t sub_1ABE5D1B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABE5D270(char a1)
{
  if (a1)
  {
    return 1702125924;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1ABE5D29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE5D1B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE5D2C4(uint64_t a1)
{
  v2 = sub_1ABE5D4CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE5D300(uint64_t a1)
{
  v2 = sub_1ABE5D4CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewService.SiriRemembersView.ProcessedInteraction.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4DB150, &qword_1ABF6CC10);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA83634();
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE5D4CC();
  sub_1ABF252E4();
  sub_1ABF24F34();
  if (!v1)
  {
    type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction(0);
    sub_1ABF21EB4();
    sub_1ABA7C7C8();
    sub_1ABE5FC24(v8, v9, MEMORY[0x1E6969538]);
    sub_1ABF24F84();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_1ABE5D4CC()
{
  result = qword_1EB4CF6D0;
  if (!qword_1EB4CF6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF6D0);
  }

  return result;
}

uint64_t ViewService.SiriRemembersView.ProcessedInteraction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v21 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  v8 = v7 - v6;
  sub_1ABAD219C(&qword_1EB4DB158, &qword_1ABF6CC18);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v10 = type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v14 = (v13 - v12);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE5D4CC();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  *v14 = sub_1ABF24E14();
  v14[1] = v15;
  sub_1ABA7C7C8();
  sub_1ABE5FC24(v16, v17, MEMORY[0x1E6969558]);
  sub_1ABF24E64();
  v18 = sub_1ABA939EC();
  v19(v18);
  (*(v21 + 32))(v14 + *(v10 + 20), v8, v23);
  sub_1ABE5D7E8(v14, a2);
  sub_1ABA84B54(a1);
  return sub_1ABE5D84C(v14);
}

uint64_t sub_1ABE5D7E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE5D84C(uint64_t a1)
{
  v2 = type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABE5D8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE5FC24(&unk_1EB4D0100, type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction, &protocol conformance descriptor for ViewService.SiriRemembersView.ProcessedInteraction);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABE5D970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABE5FC24(&qword_1EB4DB1A8, type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction, &protocol conformance descriptor for ViewService.SiriRemembersView.ProcessedInteraction);

  return sub_1ABF22804();
}

uint64_t sub_1ABE5DAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE5FC24(&qword_1EB4CF6C8, type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction, &protocol conformance descriptor for ViewService.SiriRemembersView.ProcessedInteraction);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1ABE5DBF4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_1ABE5DC68(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t ViewService.SiriRemembersView.ProcessingStateCache.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *(result + 24) = 0;
  return result;
}

uint64_t ViewService.SiriRemembersView.ProcessingStateCache.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  *(v0 + 24) = 0;
  return result;
}

uint64_t ViewService.SiriRemembersView.ProcessingStateCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t BMSiriRemembersInteraction.ProcessingState.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t BMSiriRemembersInteraction.processingState(db:)@<X0>(_BYTE *a2@<X8>)
{
  v4 = v2;
  v6 = sub_1ABAD219C(&qword_1EB4DB160, &qword_1ABF6CC20);
  sub_1ABA7BB64();
  v8 = v7;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24[-1] - v10;
  sub_1ABAD219C(&qword_1EB4DB168, &qword_1ABF6CC28);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA83634();
  if (qword_1ED870750 != -1)
  {
    sub_1ABA7D72C(&qword_1ED870750);
  }

  v13 = sub_1ABF237F4();
  sub_1ABA7AA24(v13, qword_1ED870758);
  v14 = sub_1ABF237D4();
  v15 = sub_1ABF24654();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1ABA78000, v14, v15, "ProcessingState: checking database", v16, 2u);
    MEMORY[0x1AC5AB8B0](v16, -1, -1);
  }

  result = sub_1ABBAE7C4(v4, &selRef_identifier);
  if (v18)
  {
    v19 = result;
    v20 = v18;
    v21 = type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction(0);
    v25[3] = sub_1ABF22D14();
    v25[4] = MEMORY[0x1E69A0050];
    sub_1ABA93DC0(v25);
    sub_1ABF22D24();
    v24[3] = MEMORY[0x1E69E6158];
    v24[4] = MEMORY[0x1E69A0130];
    v24[0] = v19;
    v24[1] = v20;
    v26[3] = sub_1ABF22424();
    v26[4] = MEMORY[0x1E699FE60];
    sub_1ABA93DC0(v26);
    sub_1ABF22AD4();
    sub_1ABAB480C(v24, &unk_1EB4D3C40, &unk_1ABF3FCC0);
    sub_1ABA84B54(v25);
    sub_1ABE5FC24(qword_1ED86B228, type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction, &protocol conformance descriptor for ViewService.SiriRemembersView.ProcessedInteraction);
    sub_1ABF221C4();
    sub_1ABA84B54(v26);
    sub_1ABE5F2E0();
    sub_1ABE5FC24(&qword_1ED86B220, type metadata accessor for ViewService.SiriRemembersView.ProcessedInteraction, &protocol conformance descriptor for ViewService.SiriRemembersView.ProcessedInteraction);
    sub_1ABF22244();
    (*(v8 + 8))(v11, v6);
    v22 = 2 * (sub_1ABA7E1E0(v3, 1, v21) != 1);
    result = sub_1ABAB480C(v3, &qword_1EB4DB168, &qword_1ABF6CC28);
  }

  else
  {
    v22 = 0;
  }

  *a2 = v22;
  return result;
}

void BMSiriRemembersInteraction.processingState(db:cache:)(uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA83634();
  v8 = sub_1ABBAE7C4(v3, &selRef_identifier);
  if (v9 && (v10 = v8, v11 = v9, sub_1ABA7F2A0(a2 + 16, v26), v12 = *(a2 + 16), , sub_1ABAD5B20(v10, v11, v12), , , v13 = sub_1ABF21EB4(), LODWORD(v11) = sub_1ABA7E1E0(v4, 1, v13), sub_1ABAB480C(v4, &qword_1EB4D9BF0, &qword_1ABF34240), v11 != 1))
  {
    if (qword_1ED870750 != -1)
    {
      sub_1ABA7D72C(&qword_1ED870750);
    }

    v20 = sub_1ABF237F4();
    sub_1ABA7AA24(v20, qword_1ED870758);
    v21 = sub_1ABF237D4();
    v22 = sub_1ABF24654();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      sub_1ABA9490C(&dword_1ABA78000, v24, v25, "ProcessingState: ProcessingStateCache: hit");
      MEMORY[0x1AC5AB8B0](v23, -1, -1);
    }

    *a3 = 2;
  }

  else
  {
    sub_1ABA7F2A0(a2 + 24, v27);
    if (*(a2 + 24) == 1)
    {
      if (qword_1ED870750 != -1)
      {
        sub_1ABA7D72C(&qword_1ED870750);
      }

      v14 = sub_1ABF237F4();
      sub_1ABA7AA24(v14, qword_1ED870758);
      v15 = sub_1ABF237D4();
      v16 = sub_1ABF24654();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        sub_1ABA9490C(&dword_1ABA78000, v18, v19, "ProcessingState: ProcessingStateCache: full coverage assuming unprocessed");
        MEMORY[0x1AC5AB8B0](v17, -1, -1);
      }

      *a3 = 0;
    }

    else
    {
      BMSiriRemembersInteraction.processingState(db:)(a3);
    }
  }
}

void ViewService.SiriRemembersView.Interaction.init(interaction:biomeEventTimestamp:syncedStreamName:isLocal:devicePlatform:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v74 = a4;
  v73 = a2;
  v12 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v77 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  v20 = sub_1ABBAE7C4(a1, &selRef_identifier);
  if (!v21)
  {

    sub_1ABA81258();
    v33 = v32 + 6;
LABEL_15:
    v38 = v31 | 0x8000000000000000;
    sub_1ABE5F344();
    swift_allocError();
    *v39 = v33;
    *(v39 + 8) = v38;
    *(v39 + 16) = 1;
    swift_willThrow();

    return;
  }

  v22 = v21;
  v71 = v20;
  v23 = sub_1ABBAE7C4(a1, &selRef_domain);
  if (!v24)
  {

    sub_1ABA81258();
    v33 = v34 + 2;
    goto LABEL_15;
  }

  v69 = v23;
  v72 = v24;
  v25 = sub_1ABBAE7C4(a1, &selRef_type);
  if (!v26)
  {
    v33 = 0xD00000000000001FLL;

    v31 = "nteraction.domain";
    goto LABEL_15;
  }

  v67 = v25;
  v70 = v26;
  v27 = sub_1ABBAE7C4(a1, &selRef_appBundleId);
  if (!v28)
  {

    sub_1ABA81258();
    v33 = v35 + 7;
    goto LABEL_15;
  }

  v66 = v27;
  v68 = v28;
  if (([a1 hasIsDonatedBySiri] & 1) == 0)
  {

    sub_1ABA81258();
    v33 = v36 + 11;
    goto LABEL_15;
  }

  v65 = a5;
  v29 = [a1 startDate];
  if (!v29)
  {

    sub_1ABA81258();
    v33 = v37 + 5;
    goto LABEL_15;
  }

  v30 = v29;
  sub_1ABF21E64();

  (*(v77 + 32))(v19, v16, v12);
  if ([a1 hasContentHash])
  {
    v64 = [a1 contentHash];
  }

  else
  {
    v64 = 0;
  }

  v63 = [a1 isDonatedBySiri];
  v62 = [a1 interactionSource];
  v61 = [a1 direction];
  v60 = [a1 status];
  v59 = type metadata accessor for ViewService.SiriRemembersView.Interaction(0);
  v40 = v77;
  (*(v77 + 16))(a6 + *(v59 + 52), v19, v12);
  [a1 durationInSeconds];
  v42 = v41;
  v43 = sub_1ABBAE7C4(a1, &selRef_fields);
  v56 = v44;
  v57 = v43;
  v58 = [a1 userDonatorType];
  sub_1ABA81CB4();
  MEMORY[0x1AC5A9410](v73, a3);
  MEMORY[0x1AC5A9410](94, 0xE100000000000000);

  v45 = v75;
  v46 = v76;
  (*(v40 + 8))(v19, v12);
  *a6 = 0;
  *(a6 + 8) = 1;
  *(a6 + 16) = v71;
  *(a6 + 24) = v22;
  v47 = v72;
  *(a6 + 32) = v69;
  *(a6 + 40) = v47;
  v48 = v70;
  *(a6 + 48) = v67;
  *(a6 + 56) = v48;
  v49 = v68;
  *(a6 + 64) = v66;
  *(a6 + 72) = v49;
  v50 = v62;
  *(a6 + 80) = v63;
  LODWORD(v49) = v60;
  v51 = v61;
  *(a6 + 84) = v50;
  *(a6 + 88) = v51;
  *(a6 + 92) = v49;
  v52 = v59;
  *(a6 + *(v59 + 56)) = v42;
  v53 = (a6 + v52[15]);
  v54 = v56;
  *v53 = v57;
  v53[1] = v54;
  *(a6 + v52[16]) = v64;
  *(a6 + v52[17]) = a7;
  *(a6 + v52[18]) = v74 & 1;
  *(a6 + v52[19]) = v65;
  *(a6 + v52[20]) = v58;
  v55 = (a6 + v52[21]);
  *v55 = v45;
  v55[1] = v46;
}

uint64_t ViewService.SiriRemembersView.Interaction.updatedInteraction(from:biomeEventTimestamp:syncedStreamName:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  v58 = sub_1ABBAE7C4(a1, &selRef_fields);
  v59 = v16;
  v17 = type metadata accessor for ViewService.SiriRemembersView.Interaction(0);
  v18 = *(v5 + v17[16]);
  if ([a1 hasContentHash])
  {
    v18 = [a1 contentHash];
  }

  v52 = *(v5 + 8);
  v51 = v5[2];
  v53 = *v5;
  v54 = v5[3];

  v19 = sub_1ABBAE7C4(a1, &selRef_domain);
  if (v20)
  {
    v48 = v20;
    v50 = v19;
  }

  else
  {
    v50 = v5[4];
    v48 = v5[5];
  }

  v21 = sub_1ABBAE7C4(a1, &selRef_type);
  if (v22)
  {
    v45 = v22;
    v46 = v21;
  }

  else
  {
    v46 = v5[6];
    v45 = v5[7];
  }

  v23 = sub_1ABBAE7C4(a1, &selRef_appBundleId);
  if (v24)
  {
    v43 = v24;
    v44 = v23;
  }

  else
  {
    v44 = v5[8];
    v43 = v5[9];
  }

  v55 = v18;
  if ([a1 hasIsDonatedBySiri])
  {
    v42 = [a1 isDonatedBySiri];
  }

  else
  {
    v42 = *(v5 + 80);
  }

  v41 = *(v5 + 21);
  if ([a1 direction])
  {
    v40 = [a1 direction];
  }

  else
  {
    v40 = *(v5 + 22);
  }

  if ([a1 status])
  {
    v39 = [a1 status];
  }

  else
  {
    v39 = *(v5 + 23);
  }

  v25 = [a1 startDate];
  if (v25)
  {
    v26 = v25;
    sub_1ABF21E64();
  }

  else
  {
    (*(v11 + 16))(v15, v5 + v17[13], v9);
  }

  if ([a1 hasDurationInSeconds])
  {
    [a1 durationInSeconds];
    v28 = v27;
  }

  else
  {
    v28 = *(v5 + v17[14]);
  }

  v56 = v11;
  v57 = v9;
  if (!v59)
  {
    v29 = (v5 + v17[15]);
    v58 = *v29;
    v59 = v29[1];
  }

  v30 = *(v5 + v17[18]);
  v38 = *(v5 + v17[19]);
  v31 = [a1 userDonatorType];
  v32 = (v5 + v17[21]);
  v33 = *v32;
  v34 = v32[1];
  sub_1ABA81CB4();
  MEMORY[0x1AC5A9410](a2, a3);
  MEMORY[0x1AC5A9410](94, 0xE100000000000000);
  sub_1ABAE28EC();
  if (sub_1ABF248D4())
  {
  }

  else
  {

    MEMORY[0x1AC5A9410]();
  }

  *a4 = v53;
  *(a4 + 8) = v52;
  *(a4 + 16) = v51;
  *(a4 + 24) = v54;
  *(a4 + 32) = v50;
  *(a4 + 40) = v48;
  *(a4 + 48) = v46;
  *(a4 + 56) = v45;
  *(a4 + 64) = v44;
  *(a4 + 72) = v43;
  *(a4 + 80) = v42;
  *(a4 + 84) = v41;
  *(a4 + 88) = v40;
  *(a4 + 92) = v39;
  result = (*(v56 + 32))(a4 + v17[13], v15, v57);
  *(a4 + v17[14]) = v28;
  v36 = (a4 + v17[15]);
  *v36 = v58;
  v36[1] = v59;
  *(a4 + v17[16]) = v55;
  *(a4 + v17[17]) = a5;
  *(a4 + v17[18]) = v30;
  *(a4 + v17[19]) = v38;
  *(a4 + v17[20]) = v31;
  v37 = (a4 + v17[21]);
  *v37 = v33;
  v37[1] = v34;
  return result;
}

uint64_t sub_1ABE5EE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE5FC24(&qword_1EB4D0138, type metadata accessor for ViewService.SiriRemembersView.Interaction, &protocol conformance descriptor for ViewService.SiriRemembersView.Interaction);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t ViewService.SiriRemembersView.Entity.init(entity:createdAt:updatedAt:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 0xD00000000000002FLL;
  v9 = sub_1ABBAE7C4(a1, &selRef_identifier);
  if (!v10)
  {
    v31 = "nteraction.startDate";
    v8 = 0xD000000000000035;
LABEL_17:
    v32 = v31 | 0x8000000000000000;
    sub_1ABE5F344();
    swift_allocError();
    *v33 = v8;
    *(v33 + 8) = v32;
    *(v33 + 16) = 1;
    swift_willThrow();

    v34 = sub_1ABF21EB4();
    sub_1ABA7BBB0();
    v36 = *(v35 + 8);
    v36(a3, v34);
    return (v36)(a2, v34);
  }

  v11 = v9;
  v12 = v10;
  v39 = a2;
  v13 = sub_1ABBAE7C4(a1, &selRef_type);
  if (!v14)
  {

    v31 = "bersEntity.identifier";
    goto LABEL_17;
  }

  v15 = v14;
  v37 = v13;
  v16 = sub_1ABBAE7C4(a1, &selRef_fields);
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 32123;
  }

  v38 = a3;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE200000000000000;
  }

  v20 = sub_1ABBAE7C4(a1, &selRef_fieldsTokens);
  v22 = v21;

  *a4 = 0;
  if (v22)
  {
    v23 = v20;
  }

  else
  {
    v23 = 0;
  }

  *(a4 + 8) = 1;
  v24 = 0xE000000000000000;
  if (v22)
  {
    v24 = v22;
  }

  *(a4 + 16) = v11;
  *(a4 + 24) = v12;
  *(a4 + 32) = v37;
  *(a4 + 40) = v15;
  *(a4 + 48) = v18;
  *(a4 + 56) = v19;
  *(a4 + 64) = v23;
  *(a4 + 72) = v24;
  v25 = type metadata accessor for ViewService.SiriRemembersView.Entity(0);
  v26 = *(v25 + 36);
  v27 = sub_1ABF21EB4();
  sub_1ABA7BBB0();
  v29 = *(v28 + 32);
  v29(a4 + v26, v39, v27);
  return (v29)(a4 + *(v25 + 40), v38, v27);
}

uint64_t sub_1ABE5F110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE5FC24(&qword_1ED86B1D0, type metadata accessor for ViewService.SiriRemembersView.Entity, &protocol conformance descriptor for ViewService.SiriRemembersView.Entity);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1ABE5F198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABE5FBD0();

  return sub_1ABF22804();
}

uint64_t sub_1ABE5F28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE5FB7C();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

unint64_t sub_1ABE5F2E0()
{
  result = qword_1ED86B370;
  if (!qword_1ED86B370)
  {
    sub_1ABAE2850(&qword_1EB4DB160, &qword_1ABF6CC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B370);
  }

  return result;
}

unint64_t sub_1ABE5F344()
{
  result = qword_1EB4DB170;
  if (!qword_1EB4DB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB170);
  }

  return result;
}

unint64_t sub_1ABE5F474()
{
  result = qword_1EB4DB188;
  if (!qword_1EB4DB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB188);
  }

  return result;
}

unint64_t sub_1ABE5F5EC()
{
  result = qword_1EB4DB190;
  if (!qword_1EB4DB190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB190);
  }

  return result;
}

unint64_t sub_1ABE5F644()
{
  result = qword_1EB4D0130;
  if (!qword_1EB4D0130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0130);
  }

  return result;
}

unint64_t sub_1ABE5F69C()
{
  result = qword_1ED871348;
  if (!qword_1ED871348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871348);
  }

  return result;
}

uint64_t sub_1ABE5F718(uint64_t a1)
{
  result = sub_1ABF21EB4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s15ProcessingStateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s14descr1F2074559O20ProcessedInteractionV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE5FA78()
{
  result = qword_1EB4DB198;
  if (!qword_1EB4DB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB198);
  }

  return result;
}

unint64_t sub_1ABE5FAD0()
{
  result = qword_1EB4D0118;
  if (!qword_1EB4D0118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0118);
  }

  return result;
}

unint64_t sub_1ABE5FB28()
{
  result = qword_1EB4D0120;
  if (!qword_1EB4D0120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0120);
  }

  return result;
}

unint64_t sub_1ABE5FB7C()
{
  result = qword_1EB4D0128;
  if (!qword_1EB4D0128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0128);
  }

  return result;
}

unint64_t sub_1ABE5FBD0()
{
  result = qword_1EB4DB1A0;
  if (!qword_1EB4DB1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB1A0);
  }

  return result;
}

uint64_t sub_1ABE5FC24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ViewService.SiriRemembersView.SourceStreams.init(syncedStreamName:)@<X0>(void *a1@<X8>)
{
  sub_1ABA82FAC();
  MEMORY[0x1AC5A9410](94, 0xE100000000000000);

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t ViewService.SiriRemembersView.Interaction.init(rowid:id:domain:type:bundleId:isDonatedBySiri:donorStream:direction:handlingStatus:startDate:durationSeconds:fields:contentHash:biomeEventTimestamp:isLocal:devicePlatform:userDonatorType:sourceStreams:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, int a21, uint64_t *a22)
{
  v26 = *a22;
  v25 = a22[1];
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a12;
  *(a9 + 72) = a13;
  *(a9 + 80) = a14;
  *(a9 + 84) = *(&a14 + 4);
  *(a9 + 92) = HIDWORD(a14);
  v27 = type metadata accessor for ViewService.SiriRemembersView.Interaction(0);
  v28 = v27[13];
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  result = (*(v29 + 32))(a9 + v28, a15);
  *(a9 + v27[14]) = a10;
  v31 = (a9 + v27[15]);
  *v31 = a16;
  v31[1] = a17;
  *(a9 + v27[16]) = a18;
  *(a9 + v27[17]) = a11;
  *(a9 + v27[18]) = a19;
  *(a9 + v27[19]) = a20;
  *(a9 + v27[20]) = a21;
  v32 = (a9 + v27[21]);
  *v32 = v26;
  v32[1] = v25;
  return result;
}

uint64_t ViewService.SiriRemembersView.SourceStreams.adding(syncedStreamName:)@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  MEMORY[0x1AC5A9410]();
  MEMORY[0x1AC5A9410](94, 0xE100000000000000);
  sub_1ABAE28EC();
  if (sub_1ABF248D4())
  {
  }

  else
  {

    MEMORY[0x1AC5A9410](94, 0xE100000000000000);
  }

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t ViewService.SiriRemembersView.Entity.init(rowid:id:type:fields:fieldsTokens:createdAt:updatedAt:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  v14 = type metadata accessor for ViewService.SiriRemembersView.Entity(0);
  v15 = *(v14 + 36);
  v16 = sub_1ABF21EB4();
  sub_1ABA7BBB0();
  v20 = *(v17 + 32);
  v20(a9 + v15, a12, v16);
  v18 = a9 + *(v14 + 40);

  return (v20)(v18, a13, v16);
}

void ViewService.siriRemembersView.getter(uint64_t a1@<X8>)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  sub_1ABA96B44();
  v4 = sub_1ABF23BD4();
  v10[0] = 0;
  v5 = [v3 requestAssertionForViewName:v4 error:v10];

  v6 = v10[0];
  if (v5)
  {
    *(a1 + *(type metadata accessor for ViewService.SiriRemembersView(0) + 20)) = v5;
    v7 = v6;
    v8 = [swift_unknownObjectRetain() viewArtifactURL];
    sub_1ABF21CA4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = v10[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }
}

uint64_t BMSiriRemembersInteractionInteractionDirection.description.getter()
{
  v0 = BMSiriRemembersInteractionInteractionDirectionAsString();
  sub_1ABF23C04();
  sub_1ABAB5DD4();
  return sub_1ABA8CD18();
}

uint64_t BMSiriRemembersInteractionInteractionStatus.description.getter()
{
  v0 = BMSiriRemembersInteractionInteractionStatusAsString();
  sub_1ABF23C04();
  sub_1ABAB5DD4();
  return sub_1ABA8CD18();
}

uint64_t BMSiriRemembersInteractionInteractionSource.description.getter()
{
  v0 = BMSiriRemembersInteractionInteractionSourceAsString();
  sub_1ABF23C04();
  sub_1ABAB5DD4();
  return sub_1ABA8CD18();
}

uint64_t BMDeviceMetadataDevicePlatform.description.getter()
{
  v0 = BMDeviceMetadataDevicePlatformAsString();
  sub_1ABF23C04();
  sub_1ABAB5DD4();
  return sub_1ABA8CD18();
}

uint64_t BMSiriRemembersInteractionUserDonatorType.description.getter()
{
  v0 = BMSiriRemembersInteractionUserDonatorTypeAsString();
  sub_1ABF23C04();
  sub_1ABAB5DD4();
  return sub_1ABA8CD18();
}

uint64_t ViewService.SiriRemembersView.SourceStreams.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ViewService.SiriRemembersView.SourceStreams.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static ViewService.SiriRemembersView.SourceStreams.encoded(syncedStreamName:)()
{
  sub_1ABA82FAC();
  MEMORY[0x1AC5A9410](94, 0xE100000000000000);
  return v1;
}

uint64_t sub_1ABE60A34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = ViewService.SiriRemembersView.SourceStreams.init(rawValue:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_1ABE60A74@<X0>(uint64_t *a1@<X8>)
{
  result = ViewService.SiriRemembersView.SourceStreams.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABE60A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABE62BC4();
  v5 = sub_1ABE65994();
  v6 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B38](a1, a2, v4, v5, v6);
}

uint64_t sub_1ABE60B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE62C18();
  v7 = sub_1ABE65994();
  v8 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B48](a1, a2, a3, v6, v7, v8);
}

uint64_t sub_1ABE60B84(uint64_t a1)
{
  v2 = sub_1ABE65940();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1ABE60BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE65940();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

uint64_t sub_1ABE60CCC()
{
  v0 = sub_1ABAD219C(&qword_1EB4DB298, &qword_1ABF6DE88);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1ABAD219C(&qword_1EB4DB1F8, &qword_1ABF6D270);
  sub_1ABB9009C(v3, qword_1ED8704F0);
  sub_1ABA7AA24(v3, qword_1ED8704F0);
  type metadata accessor for ViewService.SiriRemembersView.Interaction(0);
  v4 = sub_1ABF220B4();
  sub_1ABA7B9B4(v2, 1, 1, v4);
  sub_1ABE62B7C(&qword_1ED870C68, type metadata accessor for ViewService.SiriRemembersView.Interaction, &protocol conformance descriptor for ViewService.SiriRemembersView.Interaction);
  sub_1ABE5F69C();
  sub_1ABF221E4();
  return sub_1ABE659E8(v2);
}

uint64_t static ViewService.SiriRemembersView.Interaction.interactionEntities.getter()
{
  if (qword_1ED8704E8 != -1)
  {
    swift_once();
  }

  v0 = sub_1ABAD219C(&qword_1EB4DB1F8, &qword_1ABF6D270);
  sub_1ABA7AA24(v0, qword_1ED8704F0);
  sub_1ABA7EBF4();
  v1 = sub_1ABAA3A84();

  return v2(v1);
}

uint64_t sub_1ABE60EB8()
{
  v0 = sub_1ABAD219C(&qword_1EB4DB250, &qword_1ABF6D2B8);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - v2;
  v4 = sub_1ABAD219C(&qword_1EB4DB1F8, &qword_1ABF6D270);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v8 = sub_1ABAD219C(&qword_1EB4DB200, &qword_1ABF6D278);
  sub_1ABB9009C(v8, qword_1ED8704A8);
  v12[1] = sub_1ABA7AA24(v8, qword_1ED8704A8);
  type metadata accessor for ViewService.SiriRemembersView.Interaction(0);
  type metadata accessor for ViewService.SiriRemembersView.Entity(0);
  if (qword_1ED8704E8 != -1)
  {
    swift_once();
  }

  v9 = sub_1ABA7AA24(v4, qword_1ED8704F0);
  (*(v5 + 16))(v7, v9, v4);
  if (qword_1ED870460 != -1)
  {
    swift_once();
  }

  v10 = sub_1ABA7AA24(v0, qword_1ED870468);
  (*(v1 + 16))(v3, v10, v0);
  sub_1ABE62B7C(&qword_1ED870C68, type metadata accessor for ViewService.SiriRemembersView.Interaction, &protocol conformance descriptor for ViewService.SiriRemembersView.Interaction);
  sub_1ABAB47C4(&qword_1ED870590, &qword_1EB4DB1F8, &qword_1ABF6D270, MEMORY[0x1E699FED8]);
  sub_1ABAB47C4(&qword_1ED870588, &qword_1EB4DB250, &qword_1ABF6D2B8, MEMORY[0x1E699FF30]);
  sub_1ABF221F4();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t static ViewService.SiriRemembersView.Interaction.entities.getter()
{
  if (qword_1ED8704A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1ABAD219C(&qword_1EB4DB200, &qword_1ABF6D278);
  sub_1ABA7AA24(v0, qword_1ED8704A8);
  sub_1ABA7EBF4();
  v1 = sub_1ABAA3A84();

  return v2(v1);
}

uint64_t ViewService.SiriRemembersView.Interaction.rowid.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ViewService.SiriRemembersView.Interaction.startDate.getter()
{
  v0 = sub_1ABAA0880();
  type metadata accessor for ViewService.SiriRemembersView.Interaction(v0);
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  v1 = sub_1ABAA367C();

  return v2(v1);
}

uint64_t ViewService.SiriRemembersView.Interaction.fields.getter()
{
  type metadata accessor for ViewService.SiriRemembersView.Interaction(0);

  return sub_1ABA7D000();
}

uint64_t ViewService.SiriRemembersView.Interaction.sourceStreams.getter()
{
  v2 = sub_1ABAA0880();
  v3 = (v1 + *(type metadata accessor for ViewService.SiriRemembersView.Interaction(v2) + 84));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

uint64_t sub_1ABE61580(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6469776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701869940 && a2 == 0xE400000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6574616E6F447369 && a2 == 0xEF69726953794264;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x727453726F6E6F64 && a2 == 0xEB000000006D6165;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x676E696C646E6168 && a2 == 0xEE00737574617453;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6E6F697461727564 && a2 == 0xEF73646E6F636553;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x48746E65746E6F63 && a2 == 0xEB00000000687361;
                          if (v17 || (sub_1ABF25054() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000013 && 0x80000001ABF7EF60 == a2;
                            if (v18 || (sub_1ABF25054() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6C61636F4C7369 && a2 == 0xE700000000000000;
                              if (v19 || (sub_1ABF25054() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6C50656369766564 && a2 == 0xEE006D726F667461;
                                if (v20 || (sub_1ABF25054() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x616E6F4472657375 && a2 == 0xEF65707954726F74;
                                  if (v21 || (sub_1ABF25054() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else if (a1 == 0x7453656372756F73 && a2 == 0xED0000736D616572)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v23 = sub_1ABF25054();

                                    if (v23)
                                    {
                                      return 17;
                                    }

                                    else
                                    {
                                      return 18;
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

unint64_t sub_1ABE61B08(char a1)
{
  result = 0x6469776F72;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x6E69616D6F64;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x6449656C646E7562;
      break;
    case 5:
      result = 0x6574616E6F447369;
      break;
    case 6:
      result = 0x727453726F6E6F64;
      break;
    case 7:
      result = 0x6F69746365726964;
      break;
    case 8:
      result = 0x676E696C646E6168;
      break;
    case 9:
      result = 0x7461447472617473;
      break;
    case 10:
      result = 0x6E6F697461727564;
      break;
    case 11:
      result = 0x73646C656966;
      break;
    case 12:
      result = 0x48746E65746E6F63;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x6C61636F4C7369;
      break;
    case 15:
      result = 0x6C50656369766564;
      break;
    case 16:
      result = 0x616E6F4472657375;
      break;
    case 17:
      result = 0x7453656372756F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE61D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE61580(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE61D6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABE61B00();
  *a1 = result;
  return result;
}

uint64_t sub_1ABE61D94(uint64_t a1)
{
  v2 = sub_1ABE62B28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE61DD0(uint64_t a1)
{
  v2 = sub_1ABE62B28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewService.SiriRemembersView.Interaction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4DB208, &qword_1ABF6D280);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE62B28();
  sub_1ABF252E4();
  LOBYTE(v33) = 0;
  sub_1ABA88A3C();
  sub_1ABF24F24();
  if (!v2)
  {
    sub_1ABA7F9F4(1);
    sub_1ABF24F34();
    sub_1ABA7F9F4(2);
    sub_1ABF24F34();
    sub_1ABA7F9F4(3);
    sub_1ABF24F34();
    sub_1ABA7F9F4(4);
    sub_1ABF24F34();
    LOBYTE(v33) = 5;
    sub_1ABA9809C();
    sub_1ABA88A3C();
    sub_1ABF24F44();
    LODWORD(v33) = v3[21];
    v11 = sub_1ABA95978(6);
    type metadata accessor for BMSiriRemembersInteractionInteractionSource(v11);
    sub_1ABA8E50C();
    sub_1ABE62B7C(v12, v13, &protocol conformance descriptor for BMSiriRemembersInteractionInteractionSource);
    sub_1ABA939FC();
    LODWORD(v33) = v3[22];
    v14 = sub_1ABA95978(7);
    type metadata accessor for BMSiriRemembersInteractionInteractionDirection(v14);
    sub_1ABA9A734();
    sub_1ABE62B7C(v15, v16, &protocol conformance descriptor for BMSiriRemembersInteractionInteractionDirection);
    sub_1ABA939FC();
    LODWORD(v33) = v3[23];
    v17 = sub_1ABA95978(8);
    type metadata accessor for BMSiriRemembersInteractionInteractionStatus(v17);
    sub_1ABAA6218();
    sub_1ABE62B7C(v18, v19, &protocol conformance descriptor for BMSiriRemembersInteractionInteractionStatus);
    sub_1ABA939FC();
    v20 = type metadata accessor for ViewService.SiriRemembersView.Interaction(0);
    LOBYTE(v33) = 9;
    sub_1ABF21EB4();
    sub_1ABA8FBA4();
    sub_1ABE62B7C(v21, v22, MEMORY[0x1E6969538]);
    sub_1ABA9809C();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    LOBYTE(v33) = 10;
    sub_1ABA88A3C();
    sub_1ABF24F54();
    sub_1ABA7F9F4(11);
    sub_1ABF24ED4();
    LOBYTE(v33) = 12;
    sub_1ABA9809C();
    sub_1ABA88A3C();
    sub_1ABF24F74();
    LOBYTE(v33) = 13;
    sub_1ABA88A3C();
    sub_1ABF24F54();
    LOBYTE(v33) = 14;
    sub_1ABA9809C();
    sub_1ABA88A3C();
    sub_1ABF24F44();
    LODWORD(v33) = *(v3 + v20[19]);
    v23 = sub_1ABA95978(15);
    type metadata accessor for BMDeviceMetadataDevicePlatform(v23);
    sub_1ABA97DF0();
    sub_1ABE62B7C(v24, v25, &protocol conformance descriptor for BMDeviceMetadataDevicePlatform);
    sub_1ABA939FC();
    LODWORD(v33) = *(v3 + v20[20]);
    v26 = sub_1ABA95978(16);
    type metadata accessor for BMSiriRemembersInteractionUserDonatorType(v26);
    sub_1ABA843F4();
    sub_1ABE62B7C(v27, v28, &protocol conformance descriptor for BMSiriRemembersInteractionUserDonatorType);
    sub_1ABA939FC();
    v29 = (v3 + v20[21]);
    v30 = v29[1];
    v33 = *v29;
    v34 = v30;
    v35 = 17;
    sub_1ABE62BC4();

    sub_1ABA88A3C();
    sub_1ABF24F84();
  }

  return (*(v7 + 8))(v10, v5);
}

void ViewService.SiriRemembersView.Interaction.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  sub_1ABF21EB4();
  sub_1ABA7BB64();
  v46 = v6;
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  v9 = v8 - v7;
  sub_1ABAD219C(&unk_1EB4DB210, &qword_1ABF6D288);
  sub_1ABA7BB64();
  v11 = v10;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v48 = type metadata accessor for ViewService.SiriRemembersView.Interaction(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  v17 = v2[3];
  v18 = v2[4];
  sub_1ABA93E20(v2, v17);
  sub_1ABE62B28();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABAA429C();
    sub_1ABA84B54(v2);
    if (v11)
    {

      if (!v18)
      {
LABEL_5:
        if (!v17)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if (!v18)
    {
      goto LABEL_5;
    }

    (*(v46 + 8))(v16 + v48[13], v47);
    if (!v17)
    {
      goto LABEL_10;
    }

LABEL_9:

    goto LABEL_10;
  }

  LOBYTE(v49) = 0;
  sub_1ABA94D80();
  v19 = sub_1ABF24E04();
  sub_1ABA96E30(v19, v20);
  sub_1ABA81268(v21);
  *(v16 + 16) = sub_1ABF24E14();
  *(v16 + 24) = v22;
  sub_1ABA81268(2);
  *(v16 + 32) = sub_1ABF24E14();
  *(v16 + 40) = v23;
  sub_1ABA81268(3);
  *(v16 + 48) = sub_1ABF24E14();
  *(v16 + 56) = v24;
  sub_1ABA81268(4);
  *(v16 + 64) = sub_1ABF24E14();
  *(v16 + 72) = v25;
  sub_1ABA81268(5);
  *(v16 + 80) = sub_1ABF24E24() & 1;
  type metadata accessor for BMSiriRemembersInteractionInteractionSource(0);
  sub_1ABA8E50C();
  sub_1ABE62B7C(v26, v27, &protocol conformance descriptor for BMSiriRemembersInteractionInteractionSource);
  sub_1ABA83CF0();
  sub_1ABA94D80();
  sub_1ABF24E64();
  *(v16 + 84) = v49;
  type metadata accessor for BMSiriRemembersInteractionInteractionDirection(0);
  sub_1ABA9A734();
  sub_1ABE62B7C(v28, v29, &protocol conformance descriptor for BMSiriRemembersInteractionInteractionDirection);
  sub_1ABA83CF0();
  sub_1ABA94D80();
  sub_1ABF24E64();
  *(v16 + 88) = v49;
  type metadata accessor for BMSiriRemembersInteractionInteractionStatus(0);
  sub_1ABAA6218();
  sub_1ABE62B7C(v30, v31, &protocol conformance descriptor for BMSiriRemembersInteractionInteractionStatus);
  sub_1ABA83CF0();
  sub_1ABA94D80();
  sub_1ABF24E64();
  *(v16 + 92) = v49;
  LOBYTE(v49) = 9;
  sub_1ABA8FBA4();
  sub_1ABE62B7C(v32, v33, MEMORY[0x1E6969558]);
  sub_1ABA94D80();
  sub_1ABF24E64();
  (*(v46 + 32))(v16 + v48[13], v9, v47);
  sub_1ABA7C7E0(10);
  sub_1ABF24E34();
  *(v16 + v48[14]) = v34;
  sub_1ABA7C7E0(11);
  v35 = sub_1ABF24DB4();
  v36 = (v16 + v48[15]);
  *v36 = v35;
  v36[1] = v37;
  sub_1ABA7C7E0(12);
  *(v16 + v48[16]) = sub_1ABF24E54();
  sub_1ABA7C7E0(13);
  sub_1ABF24E34();
  *(v16 + v48[17]) = v38;
  sub_1ABA7C7E0(14);
  *(v16 + v48[18]) = sub_1ABF24E24() & 1;
  type metadata accessor for BMDeviceMetadataDevicePlatform(0);
  sub_1ABA97DF0();
  sub_1ABE62B7C(v39, v40, &protocol conformance descriptor for BMDeviceMetadataDevicePlatform);
  sub_1ABA83CF0();
  sub_1ABA94D80();
  sub_1ABF24E64();
  *(v16 + v48[19]) = v49;
  type metadata accessor for BMSiriRemembersInteractionUserDonatorType(0);
  sub_1ABA843F4();
  sub_1ABE62B7C(v41, v42, &protocol conformance descriptor for BMSiriRemembersInteractionUserDonatorType);
  sub_1ABA83CF0();
  sub_1ABA94D80();
  sub_1ABF24E64();
  *(v16 + v48[20]) = v49;
  sub_1ABE62C18();
  sub_1ABA94D80();
  sub_1ABF24E64();
  v43 = sub_1ABAA556C();
  v44(v43);
  v45 = (v16 + v48[21]);
  *v45 = v49;
  v45[1] = v50;
  sub_1ABE63FD4(v16, v4, type metadata accessor for ViewService.SiriRemembersView.Interaction);
  sub_1ABA84B54(v2);
  sub_1ABE64030(v16, type metadata accessor for ViewService.SiriRemembersView.Interaction);
LABEL_10:
  sub_1ABA7BC90();
}

uint64_t sub_1ABE62A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE62B7C(&qword_1ED871358, type metadata accessor for ViewService.SiriRemembersView.Interaction, &protocol conformance descriptor for ViewService.SiriRemembersView.Interaction);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1ABE62B28()
{
  result = qword_1ED870510;
  if (!qword_1ED870510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870510);
  }

  return result;
}

uint64_t sub_1ABE62B7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1ABE62BC4()
{
  result = qword_1ED86B778;
  if (!qword_1ED86B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B778);
  }

  return result;
}

unint64_t sub_1ABE62C18()
{
  result = qword_1ED870488;
  if (!qword_1ED870488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870488);
  }

  return result;
}

uint64_t sub_1ABE62C94(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  sub_1ABB9009C(v6, a3);
  v7 = sub_1ABA7AA24(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t sub_1ABE62D58@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  v9 = sub_1ABA7AA24(v8, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1ABE62DF8()
{
  v0 = sub_1ABAD219C(&qword_1EB4DB298, &qword_1ABF6DE88);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1ABAD219C(&qword_1EB4DB220, &qword_1ABF6D290);
  sub_1ABB9009C(v3, qword_1EB4DB1B0);
  sub_1ABA7AA24(v3, qword_1EB4DB1B0);
  type metadata accessor for ViewService.SiriRemembersView.Entity(0);
  v4 = sub_1ABF220B4();
  sub_1ABA7B9B4(v2, 1, 1, v4);
  sub_1ABE62B7C(&qword_1ED870C30, type metadata accessor for ViewService.SiriRemembersView.Entity, &protocol conformance descriptor for ViewService.SiriRemembersView.Entity);
  sub_1ABE5F69C();
  sub_1ABF221E4();
  return sub_1ABE659E8(v2);
}

uint64_t static ViewService.SiriRemembersView.Entity.interactionEntities.getter()
{
  if (qword_1EB4D0408 != -1)
  {
    swift_once();
  }

  v0 = sub_1ABAD219C(&qword_1EB4DB220, &qword_1ABF6D290);
  sub_1ABA7AA24(v0, qword_1EB4DB1B0);
  sub_1ABA7EBF4();
  v1 = sub_1ABAA3A84();

  return v2(v1);
}

uint64_t sub_1ABE62FE4()
{
  v0 = sub_1ABAD219C(&qword_1EB4DB248, &qword_1ABF6D2B0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - v2;
  v4 = sub_1ABAD219C(&qword_1EB4DB220, &qword_1ABF6D290);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v8 = sub_1ABAD219C(&qword_1EB4DB228, &qword_1ABF6D298);
  sub_1ABB9009C(v8, qword_1EB4DB1C8);
  v12[1] = sub_1ABA7AA24(v8, qword_1EB4DB1C8);
  type metadata accessor for ViewService.SiriRemembersView.Entity(0);
  type metadata accessor for ViewService.SiriRemembersView.Interaction(0);
  if (qword_1EB4D0408 != -1)
  {
    swift_once();
  }

  v9 = sub_1ABA7AA24(v4, qword_1EB4DB1B0);
  (*(v5 + 16))(v7, v9, v4);
  if (qword_1EB4D0428 != -1)
  {
    swift_once();
  }

  v10 = sub_1ABA7AA24(v0, qword_1EB4DB1E0);
  (*(v1 + 16))(v3, v10, v0);
  sub_1ABE62B7C(&qword_1ED870C30, type metadata accessor for ViewService.SiriRemembersView.Entity, &protocol conformance descriptor for ViewService.SiriRemembersView.Entity);
  sub_1ABAB47C4(&qword_1EB4DB2B0, &qword_1EB4DB220, &qword_1ABF6D290, MEMORY[0x1E699FED8]);
  sub_1ABAB47C4(&qword_1EB4DB2B8, &qword_1EB4DB248, &qword_1ABF6D2B0, MEMORY[0x1E699FF30]);
  sub_1ABF221F4();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t static ViewService.SiriRemembersView.Entity.interactions.getter()
{
  if (qword_1EB4D0410 != -1)
  {
    swift_once();
  }

  v0 = sub_1ABAD219C(&qword_1EB4DB228, &qword_1ABF6D298);
  sub_1ABA7AA24(v0, qword_1EB4DB1C8);
  sub_1ABA7EBF4();
  v1 = sub_1ABAA3A84();

  return v2(v1);
}

uint64_t ViewService.SiriRemembersView.Entity.createdAt.getter()
{
  v0 = sub_1ABAA0880();
  type metadata accessor for ViewService.SiriRemembersView.Entity(v0);
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  v1 = sub_1ABAA367C();

  return v2(v1);
}

uint64_t ViewService.SiriRemembersView.Entity.updatedAt.getter()
{
  v0 = sub_1ABAA0880();
  type metadata accessor for ViewService.SiriRemembersView.Entity(v0);
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  v1 = sub_1ABAA367C();

  return v2(v1);
}

uint64_t sub_1ABE634D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6469776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F5473646C656966 && a2 == 0xEC000000736E656BLL;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4164657461657263 && a2 == 0xE900000000000074;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4164657461647075 && a2 == 0xE900000000000074)
            {

              return 6;
            }

            else
            {
              v12 = sub_1ABF25054();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABE63704(char a1)
{
  result = 0x6469776F72;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x73646C656966;
      break;
    case 4:
      result = 0x6F5473646C656966;
      break;
    case 5:
      v3 = 1634038371;
      goto LABEL_8;
    case 6:
      v3 = 1633972341;
LABEL_8:
      result = v3 | 0x4164657400000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE637BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE634D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE637E4(uint64_t a1)
{
  v2 = sub_1ABE63A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE63820(uint64_t a1)
{
  v2 = sub_1ABE63A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ViewService.SiriRemembersView.Entity.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1ABA7BCA8();
  a26 = v28;
  a27 = v29;
  v31 = v30;
  v32 = sub_1ABAD219C(&unk_1EB4DB230, &qword_1ABF6D2A0);
  sub_1ABA7BB64();
  v34 = v33;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  sub_1ABA93E20(v31, v31[3]);
  sub_1ABE63A94();
  sub_1ABF252E4();
  a17 = 0;
  sub_1ABA81CC8();
  sub_1ABF24F24();
  if (!v27)
  {
    a16 = 1;
    sub_1ABA81CC8();
    sub_1ABF24F34();
    sub_1ABAA1AE0();
    sub_1ABA81CC8();
    sub_1ABF24F34();
    a14 = 3;
    sub_1ABA81CC8();
    sub_1ABF24F34();
    a13 = 4;
    sub_1ABA81CC8();
    sub_1ABF24F34();
    type metadata accessor for ViewService.SiriRemembersView.Entity(0);
    a12 = 5;
    sub_1ABF21EB4();
    sub_1ABA8FBA4();
    sub_1ABE62B7C(v38, v39, MEMORY[0x1E6969538]);
    sub_1ABA7BF34();
    sub_1ABF24F84();
    a11 = 6;
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  (*(v34 + 8))(v37, v32);
  sub_1ABA7BC90();
}

unint64_t sub_1ABE63A94()
{
  result = qword_1ED870448;
  if (!qword_1ED870448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870448);
  }

  return result;
}

void ViewService.SiriRemembersView.Entity.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1ABA7BCA8();
  v29 = v28;
  v61 = v30;
  sub_1ABF21EB4();
  sub_1ABA7BB64();
  v63 = v32;
  v64 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v34 = v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v60 - v36;
  v62 = sub_1ABAD219C(&qword_1EB4DB240, &qword_1ABF6D2A8);
  sub_1ABA7BB64();
  v39 = v38;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v60 - v41;
  v66 = type metadata accessor for ViewService.SiriRemembersView.Entity(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1ABA7BC58();
  v46 = (v45 - v44);
  v47 = v29[3];
  v65 = v29;
  v48 = sub_1ABA93E20(v29, v47);
  sub_1ABE63A94();
  sub_1ABF252C4();
  if (v27)
  {
    sub_1ABAA2A68();
    sub_1ABA84B54(v65);
    v51 = v66;
    if (v47)
    {

      if (!v48)
      {
LABEL_5:
        if (!v37)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if (!v48)
    {
      goto LABEL_5;
    }

    if (!v37)
    {
      goto LABEL_10;
    }

LABEL_9:
    (*(v63 + 8))(&v46[*(v51 + 36)], v64);
    goto LABEL_10;
  }

  sub_1ABA8C430();
  v49 = sub_1ABF24E04();
  sub_1ABA96E30(v49, v50);
  sub_1ABA8C430();
  *(v46 + 2) = sub_1ABF24E14();
  *(v46 + 3) = v52;
  sub_1ABAA1AE0();
  sub_1ABA8C430();
  *(v46 + 4) = sub_1ABF24E14();
  *(v46 + 5) = v53;
  sub_1ABA8C430();
  *(v46 + 6) = sub_1ABF24E14();
  *(v46 + 7) = v54;
  sub_1ABA8C430();
  *(v46 + 8) = sub_1ABF24E14();
  *(v46 + 9) = v55;
  sub_1ABA8FBA4();
  v60[1] = sub_1ABE62B7C(v56, v57, MEMORY[0x1E6969558]);
  sub_1ABF24E64();
  v58 = &v46[*(v66 + 36)];
  v59 = v64;
  v60[0] = *(v63 + 32);
  (v60[0])(v58, v37, v64);
  sub_1ABF24E64();
  (*(v39 + 8))(v42, v62);
  (v60[0])(&v46[*(v66 + 40)], v34, v59);
  sub_1ABE63FD4(v46, v61, type metadata accessor for ViewService.SiriRemembersView.Entity);
  sub_1ABA84B54(v65);
  sub_1ABE64030(v46, type metadata accessor for ViewService.SiriRemembersView.Entity);
LABEL_10:
  sub_1ABA7BC90();
}

uint64_t sub_1ABE63FD4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1ABA7BBB0();
  v4 = sub_1ABA7D000();
  v5(v4);
  return a2;
}

uint64_t sub_1ABE64030(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1ABA7BBB0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1ABE640B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE62B7C(&unk_1ED870400, type metadata accessor for ViewService.SiriRemembersView.Entity, &protocol conformance descriptor for ViewService.SiriRemembersView.Entity);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABE6418C(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1ABF22D14();
  sub_1ABB9009C(v4, a2);
  sub_1ABA7AA24(v4, a2);
  sub_1ABE64BCC();
  return sub_1ABF22D34();
}

uint64_t sub_1ABE64208()
{
  v0 = sub_1ABAD219C(&qword_1EB4DB298, &qword_1ABF6DE88);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_1ABAD219C(&qword_1EB4DB248, &qword_1ABF6D2B0);
  sub_1ABB9009C(v3, qword_1EB4DB1E0);
  sub_1ABA7AA24(v3, qword_1EB4DB1E0);
  type metadata accessor for ViewService.SiriRemembersView.Interaction(0);
  sub_1ABAD219C(&unk_1EB4DB2A0, &unk_1ABF6DE90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABF34740;
  if (qword_1EB4D0418 != -1)
  {
    swift_once();
  }

  v5 = sub_1ABF22D14();
  v6 = sub_1ABA7AA24(v5, qword_1EB5498E8);
  v7 = MEMORY[0x1E69A0030];
  *(v4 + 56) = v5;
  *(v4 + 64) = v7;
  v8 = sub_1ABA93DC0((v4 + 32));
  (*(*(v5 - 8) + 16))(v8, v6, v5);
  sub_1ABF220C4();
  v9 = sub_1ABF220B4();
  sub_1ABA7B9B4(v2, 0, 1, v9);
  sub_1ABE5F69C();
  sub_1ABE62B7C(&qword_1ED870C68, type metadata accessor for ViewService.SiriRemembersView.Interaction, &protocol conformance descriptor for ViewService.SiriRemembersView.Interaction);
  sub_1ABF22204();
  return sub_1ABE659E8(v2);
}

uint64_t static ViewService.SiriRemembersView.InteractionEntity.interaction.getter()
{
  if (qword_1EB4D0428 != -1)
  {
    swift_once();
  }

  v0 = sub_1ABAD219C(&qword_1EB4DB248, &qword_1ABF6D2B0);
  sub_1ABA7AA24(v0, qword_1EB4DB1E0);
  sub_1ABA7EBF4();
  v1 = sub_1ABAA3A84();

  return v2(v1);
}

uint64_t sub_1ABE644CC()
{
  v0 = sub_1ABAD219C(&qword_1EB4DB298, &qword_1ABF6DE88);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_1ABAD219C(&qword_1EB4DB250, &qword_1ABF6D2B8);
  sub_1ABB9009C(v3, qword_1ED870468);
  sub_1ABA7AA24(v3, qword_1ED870468);
  type metadata accessor for ViewService.SiriRemembersView.Entity(0);
  sub_1ABAD219C(&unk_1EB4DB2A0, &unk_1ABF6DE90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1ABF34740;
  if (qword_1ED870450 != -1)
  {
    swift_once();
  }

  v5 = sub_1ABF22D14();
  v6 = sub_1ABA7AA24(v5, qword_1ED87C410);
  v7 = MEMORY[0x1E69A0030];
  *(v4 + 56) = v5;
  *(v4 + 64) = v7;
  v8 = sub_1ABA93DC0((v4 + 32));
  (*(*(v5 - 8) + 16))(v8, v6, v5);
  sub_1ABF220C4();
  v9 = sub_1ABF220B4();
  sub_1ABA7B9B4(v2, 0, 1, v9);
  sub_1ABE5F69C();
  sub_1ABE62B7C(&qword_1ED870C30, type metadata accessor for ViewService.SiriRemembersView.Entity, &protocol conformance descriptor for ViewService.SiriRemembersView.Entity);
  sub_1ABF22204();
  return sub_1ABE659E8(v2);
}

uint64_t static ViewService.SiriRemembersView.InteractionEntity.entity.getter()
{
  if (qword_1ED870460 != -1)
  {
    swift_once();
  }

  v0 = sub_1ABAD219C(&qword_1EB4DB250, &qword_1ABF6D2B8);
  sub_1ABA7AA24(v0, qword_1ED870468);
  sub_1ABA7EBF4();
  v1 = sub_1ABAA3A84();

  return v2(v1);
}

uint64_t ViewService.SiriRemembersView.InteractionEntity.init(interactionRowid:entityRowid:parameter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1ABE647D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001ABF860F0 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F52797469746E65 && a2 == 0xEB00000000646977;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6574656D61726170 && a2 == 0xE900000000000072)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABE648FC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x6F52797469746E65;
  }

  return 0x6574656D61726170;
}

uint64_t sub_1ABE64964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABE649B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE647D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE649E0(uint64_t a1)
{
  v2 = sub_1ABE64BCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE64A1C(uint64_t a1)
{
  v2 = sub_1ABE64BCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ViewService.SiriRemembersView.InteractionEntity.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&unk_1EB4DB258, &qword_1ABF6D2C0);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  v10 = v0[1];
  v11 = v0[3];
  v12[2] = v0[2];
  v12[3] = v10;
  v12[1] = v11;
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABE64BCC();
  sub_1ABF252E4();
  sub_1ABA7BF34();
  sub_1ABF24FA4();
  if (!v1)
  {
    sub_1ABA7BF34();
    sub_1ABF24FA4();
    sub_1ABAA1AE0();
    sub_1ABA81CC8();
    sub_1ABF24F34();
  }

  (*(v6 + 8))(v9, v4);
  sub_1ABA7BC90();
}

unint64_t sub_1ABE64BCC()
{
  result = qword_1ED870C50;
  if (!qword_1ED870C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870C50);
  }

  return result;
}

void ViewService.SiriRemembersView.InteractionEntity.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v30 = sub_1ABAD219C(&qword_1EB4DB268, &unk_1ABF6D2C8);
  sub_1ABA7BB64();
  v32 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  sub_1ABA93E20(v27, v27[3]);
  sub_1ABE64BCC();
  sub_1ABF252C4();
  if (!v23)
  {
    a13 = 0;
    sub_1ABA976A8();
    v36 = sub_1ABF24E84();
    a12 = 1;
    sub_1ABA976A8();
    v37 = sub_1ABF24E84();
    sub_1ABAA1AE0();
    sub_1ABA976A8();
    v38 = sub_1ABF24E14();
    v39 = v35;
    v41 = v40;
    (*(v32 + 8))(v39, v30);
    *v29 = v36;
    v29[1] = v37;
    v29[2] = v38;
    v29[3] = v41;
  }

  sub_1ABA84B54(v27);
  sub_1ABA7BC90();
}

unint64_t sub_1ABE64DB8()
{
  result = qword_1ED870C60;
  if (!qword_1ED870C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870C60);
  }

  return result;
}

unint64_t sub_1ABE64E10()
{
  result = qword_1ED870498;
  if (!qword_1ED870498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870498);
  }

  return result;
}

uint64_t sub_1ABE64EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE658EC();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

void sub_1ABE64F44(uint64_t a1)
{
  sub_1ABE650C0(319, &qword_1ED871880, MEMORY[0x1E69E7360]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BMSiriRemembersInteractionInteractionSource(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for BMSiriRemembersInteractionInteractionDirection(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for BMSiriRemembersInteractionInteractionStatus(319);
        if (v4 <= 0x3F)
        {
          sub_1ABF21EB4();
          if (v5 <= 0x3F)
          {
            sub_1ABE650C0(319, &unk_1ED871B08, MEMORY[0x1E69E6158]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for BMDeviceMetadataDevicePlatform(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for BMSiriRemembersInteractionUserDonatorType(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1ABE650C0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1ABF247E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1ABE65144(uint64_t a1)
{
  sub_1ABE650C0(319, &qword_1ED871880, MEMORY[0x1E69E7360]);
  if (v1 <= 0x3F)
  {
    sub_1ABF21EB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *sub_1ABE6520C(_BYTE *result, int a2, int a3)
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