uint64_t sub_1C83204BC()
{
  OUTLINED_FUNCTION_14_8();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64) + v3;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 1, v2 | 7);
}

double sub_1C8320544()
{
  v1 = sub_1C840BB2C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  if (*(v0 + 56) == 1)
  {
    return *(v0 + 48);
  }

  sub_1C840D17C();
  v7 = sub_1C840BD9C();
  sub_1C840B3CC();

  sub_1C840BB1C();
  swift_getAtKeyPath();
  sub_1C831E878(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

id sub_1C8320690(double a1, double a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  switch(v5 >> 5)
  {
    case 1u:
      v12 = v3 * a2;
      v13 = v4 * a2;
      v8 = objc_allocWithZone(MEMORY[0x1E69A8A30]);
      v9 = v12;
      v10 = v13;
      goto LABEL_7;
    case 4u:
      if (*&v4 | *&v3 || v5 != 128)
      {
        v15 = *&v3 == 1 && *&v4 == 0;
        if (v15 && v5 == 128)
        {
          v11 = [objc_opt_self() imageDescriptorNamed_];
        }

        else
        {
          v16 = *&v3 == 2 && *&v4 == 0;
          if (v16 && v5 == 128)
          {
            v11 = [objc_opt_self() imageDescriptorNamed_];
          }

          else
          {
            v11 = [objc_opt_self() imageDescriptorNamed_];
          }
        }
      }

      else
      {
        v11 = [objc_opt_self() imageDescriptorNamed_];
      }

      result = v11;
      break;
    default:
      v7 = v3 * a2;
      v8 = objc_allocWithZone(MEMORY[0x1E69A8A30]);
      v9 = v7;
      v10 = v7;
LABEL_7:

      result = [v8 initWithSize:v9 scale:{v10, a1}];
      break;
  }

  return result;
}

double sub_1C83208F8(uint64_t a1, double result)
{
  v2 = *(a1 + 16);
  v3 = v2 >> 5;
  if (v2 >> 5)
  {
    v4 = v3 == 3;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if (v3 != 4)
    {
      return result / 0.8;
    }

    v5 = v2 == 128 && *(a1 + 8) == 0;
    if (!v5 || *a1 != 2)
    {
      return result / 0.8;
    }
  }

  return result;
}

uint64_t sub_1C832096C@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v124 = a3;
  v120 = a4;
  v116 = sub_1C840C62C();
  v105 = *(v116 - 1);
  MEMORY[0x1EEE9AC00](v116);
  v104 = (&v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C840B8BC();
  v11 = sub_1C840B85C();
  v106 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v99 - v12;
  v122 = v13;
  v14 = sub_1C840B85C();
  v108 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v99 - v15;
  v123 = v16;
  v17 = sub_1C840B85C();
  v112 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v109 = &v99 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DB60, &qword_1C84168D8);
  v121 = v17;
  v19 = sub_1C840B85C();
  v113 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v111 = &v99 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DB68, &qword_1C84168E0);
  v119 = v19;
  v21 = sub_1C840B85C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v110 = &v99 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v114 = &v99 - v28;
  v29 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v99 - v34;
  v36 = sub_1C840BC7C();
  v117 = *(v36 - 8);
  v118 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v99 - v37;
  v39 = *(a1 + 3);
  if (v39)
  {
    v99 = v24;
    v100 = v22;
    v101 = v38;
    v102 = v21;
    v40 = *(a1 + 4);
    v115 = v39;
    v40(a5, a6);
    type metadata accessor for RoundedBackgroundIconView(0, a2, v124, v41);
    v42 = v104;
    sub_1C834C2DC(v104);
    v43 = v103;
    sub_1C840C22C();
    (*(v105 + 8))(v42, v116);
    v44 = *(v29 + 8);
    v116 = a2;
    v44(v35, a2);
    v45 = *a1;
    v46 = *(a1 + 1);
    v47 = a1[16];
    v48 = sub_1C8320544();
    if (v47 < 0x20)
    {
      v125 = v45;
      v126 = v46;
      v127 = v47;
      v49 = sub_1C8320690(v48, 1.0);
      [v49 size];
    }

    v64 = MEMORY[0x1E697E270];
    v65 = v124;
    v136 = v124;
    v137 = MEMORY[0x1E697EBB8];
    v66 = v122;
    WitnessTable = swift_getWitnessTable();
    v68 = v107;
    sub_1C840C1AC();
    (*(v106 + 8))(v43, v66);
    v134 = WitnessTable;
    v135 = v64;
    v69 = v123;
    v70 = swift_getWitnessTable();
    sub_1C840C5FC();
    v71 = v109;
    sub_1C840C19C();
    v72 = (v108[1])(v68, v69);
    v108 = &v99;
    MEMORY[0x1EEE9AC00](v72);
    v73 = v115;
    *(&v99 - 6) = v116;
    *(&v99 - 5) = v65;
    *(&v99 - 4) = a1;
    *(&v99 - 3) = a5;
    *(&v99 - 2) = a6;
    *(&v99 - 1) = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DD68, &qword_1C8417870);
    v132 = v70;
    v133 = MEMORY[0x1E697E040];
    v74 = v121;
    v75 = swift_getWitnessTable();
    sub_1C8351A38();
    sub_1C834712C(v74);
    v76 = v111;
    sub_1C840C0BC();
    (*(v112 + 8))(v71, v74);
    v77 = sub_1C83527D8(&qword_1EC29C958, &qword_1EC29DB60, &qword_1C84168D8, MEMORY[0x1E697F940]);
    v130 = v75;
    v131 = v77;
    v78 = v119;
    v79 = swift_getWitnessTable();
    v80 = v110;
    sub_1C840C1BC();
    (*(v113 + 8))(v76, v78);
    v81 = sub_1C83527D8(qword_1ED7EE7B0, &qword_1EC29DB68, &qword_1C84168E0, MEMORY[0x1E697DDB0]);
    v128 = v79;
    v129 = v81;
    v82 = v102;
    v83 = swift_getWitnessTable();
    v84 = v114;
    sub_1C8317B60(v80, v82, v83);
    v85 = *(v100 + 8);
    v85(v80, v82);
    v86 = v99;
    sub_1C8317B60(v84, v82, v83);
    v38 = v101;
    v87 = v83;
    v88 = v124;
    sub_1C832271C(v86, v82, v116, v87, v124, v89, v90, v91, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);

    v85(v86, v82);
    v85(v84, v82);
    v59 = v88;
  }

  else
  {
    v50 = *(a1 + 4);
    v51 = MEMORY[0x1E697E270];
    v52 = MEMORY[0x1E697E040];
    v50(a5, a6);
    v53 = v124;
    sub_1C8317B60(v32, a2, v124);
    v116 = *(v29 + 8);
    (v116)(v32, a2);
    sub_1C8317B60(v35, a2, v53);
    v158 = v53;
    v159 = MEMORY[0x1E697EBB8];
    v156 = swift_getWitnessTable();
    v157 = v51;
    v154 = swift_getWitnessTable();
    v155 = v52;
    v54 = swift_getWitnessTable();
    v55 = sub_1C83527D8(&qword_1EC29C958, &qword_1EC29DB60, &qword_1C84168D8, MEMORY[0x1E697F940]);
    v152 = v54;
    v153 = v55;
    v56 = swift_getWitnessTable();
    v57 = sub_1C83527D8(qword_1ED7EE7B0, &qword_1EC29DB68, &qword_1C84168E0, MEMORY[0x1E697DDB0]);
    v150 = v56;
    v151 = v57;
    v58 = swift_getWitnessTable();
    v59 = v124;
    sub_1C8322590(v32, v21, a2, v58, v124, v60, v61, v62, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
    v63 = v116;
    (v116)(v32, a2);
    (v63)(v35, a2);
  }

  v148 = v59;
  v149 = MEMORY[0x1E697EBB8];
  v146 = swift_getWitnessTable();
  v147 = MEMORY[0x1E697E270];
  v144 = swift_getWitnessTable();
  v145 = MEMORY[0x1E697E040];
  v92 = swift_getWitnessTable();
  v93 = sub_1C83527D8(&qword_1EC29C958, &qword_1EC29DB60, &qword_1C84168D8, MEMORY[0x1E697F940]);
  v142 = v92;
  v143 = v93;
  v94 = swift_getWitnessTable();
  v95 = sub_1C83527D8(qword_1ED7EE7B0, &qword_1EC29DB68, &qword_1C84168E0, MEMORY[0x1E697DDB0]);
  v140 = v94;
  v141 = v95;
  v138 = swift_getWitnessTable();
  v139 = v59;
  v96 = v118;
  v97 = swift_getWitnessTable();
  sub_1C8317B60(v38, v96, v97);
  return (*(v117 + 8))(v38, v96);
}

uint64_t sub_1C8321618@<X0>(id *a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  v50 = a2;
  v5 = sub_1C840B82C();
  v49 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C840BB2C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DCE8, &qword_1C8417788);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DCF0, &qword_1C8417790);
  *&v15 = MEMORY[0x1EEE9AC00](v47).n128_u64[0];
  v17 = &v42 - v16;
  v44 = *a1;
  v18 = [v44 symbolName];
  v46 = sub_1C840CDDC();
  v45 = v19;

  memcpy(__dst, a1, sizeof(__dst));
  v20 = sub_1C8321C78(a3);
  v21 = a1[8];
  v52 = v21;
  v53 = *(a1 + 36);
  v48 = v7;
  if (HIBYTE(v53) == 1)
  {
    if ((v53 & 1) == 0)
    {
      v22 = v21;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  sub_1C840D17C();
  v23 = sub_1C840BD9C();
  v43 = v12;
  v24 = v8;
  v25 = v5;
  v26 = v23;
  sub_1C840B3CC();

  v5 = v25;
  sub_1C840BB1C();
  swift_getAtKeyPath();
  sub_1C8352B5C(&v52, &unk_1EC29DCF8);
  v27 = v24;
  v12 = v43;
  (*(v9 + 8))(v11, v27);
  if (LOBYTE(__dst[1]) == 1)
  {
LABEL_5:
    sub_1C840BF1C();
    v22 = v28;
    goto LABEL_7;
  }

  v22 = __dst[0];
LABEL_7:
  v29 = v47;
  KeyPath = swift_getKeyPath();
  memcpy(__dst, a1, sizeof(__dst));
  v31 = sub_1C832226C();
  v32 = &v14[*(v12 + 36)];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D650, &qword_1C8415AB0) + 28);
  if (a1[4])
  {
    sub_1C840BBEC();
  }

  else
  {
    SymbolRenderingMode.init(from:)([v44 renderingMode]);
  }

  v34 = sub_1C840BC2C();
  __swift_storeEnumTagSinglePayload(v32 + v33, 0, 1, v34);
  *v32 = swift_getKeyPath();
  *v14 = KeyPath;
  v14[8] = 0;
  v35 = v45;
  *(v14 + 2) = v46;
  *(v14 + 3) = v35;
  *(v14 + 4) = v20;
  *(v14 + 5) = v22;
  *(v14 + 6) = v31;
  v36 = &v17[*(v29 + 36)];
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DD00, &qword_1C8417800) + 28);
  v38 = *MEMORY[0x1E69816E0];
  v39 = sub_1C840C45C();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = swift_getKeyPath();
  sub_1C832247C();
  v40 = v48;
  if (*(a1 + 24) > 0x1Fu)
  {
    sub_1C840B7DC();
  }

  else
  {
    sub_1C840B7CC();
  }

  sub_1C83224D4();
  sub_1C840C11C();
  (*(v49 + 8))(v40, v5);
  return sub_1C8352B5C(v17, &qword_1EC29DCF0);
}

unint64_t sub_1C8321BE4()
{
  result = qword_1EC29C938;
  if (!qword_1EC29C938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DB90, &qword_1C8416E08);
    sub_1C831CC28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29C938);
  }

  return result;
}

double sub_1C8321C78(double a1)
{
  v29 = sub_1C840BB2C();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v28 = *(v1 + 8);
  v27 = *(v1 + 16);
  v26 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 80);
  v23 = *(v1 + 88);
  v11 = *(v1 + 104);
  *&v33[0] = *(v1 + 96);
  *(&v33[0] + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DD38, &qword_1C8417840);
  sub_1C840C51C();
  v12 = [v6 symbolName];
  v25 = sub_1C840CDDC();
  v24 = v13;

  if (v7)
  {
    sub_1C831F57C(v7);
    sub_1C831F57C(v7);
    v14 = v7;
  }

  else
  {
    v14 = 0;
  }

  sub_1C831F58C(v14);
  sub_1C831F58C(0);
  sub_1C831F58C(v14);
  if (v9)
  {
    v15 = v8;
  }

  else
  {

    sub_1C840D17C();
    v16 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();
    sub_1C831E878(v8, 0);
    (*(v3 + 8))(v5, v29);
    v15 = *&v33[0];
  }

  v17 = [v6 hasClearBackground];
  if (v23)
  {
    LOBYTE(v35) = v10 & 1;
  }

  else
  {

    sub_1C840D17C();
    v18 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();
    sub_1C831E878(v10, 0);
    (*(v3 + 8))(v5, v29);
    LOBYTE(v10) = v35;
  }

  *&v30 = v25;
  *(&v30 + 1) = v24;
  *&v31 = v28;
  *(&v31 + 1) = v27;
  v32[0] = v26;
  v32[1] = v7 == 0;
  *&v32[8] = v15;
  *&v32[16] = a1;
  v32[24] = v17;
  v32[25] = v10 & 1;
  sub_1C8322050(&v30);
  v20 = v19;

  v33[0] = v30;
  v33[1] = v31;
  v34[0] = *v32;
  *(v34 + 10) = *&v32[10];
  sub_1C832223C(v33);
  return v20;
}

unint64_t sub_1C8321FFC()
{
  result = qword_1ED7EE918;
  if (!qword_1ED7EE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE918);
  }

  return result;
}

__int128 *sub_1C8322050(__int128 *result)
{
  v2 = v1;
  v3 = result[2];
  v15[1] = result[1];
  *v16 = v3;
  v15[0] = *result;
  *&v16[10] = *(result + 42);
  if ((BYTE1(v3) & 1) != 0 || (v16[0] & 0xE0) != 0x40)
  {
    swift_beginAccess();
    if (*(*(v1 + 16) + 16))
    {

      sub_1C8323E90(v15);
      if (v4)
      {
      }
    }

    type metadata accessor for SymbolAlignment();
    v5 = v15[0];
    v6 = *&v16[8];
    v7 = sub_1C8320690(*&v16[8], 1.0);
    [v7 size];
    v9 = v8;

    static SymbolAlignment.fontSize(for:containerDimension:scale:circularContainer:)(v5, *(&v5 + 1), v16[25], v9, v6);
    v11 = v10;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v2 + 16);
    v13.n128_u64[0] = v11;
    sub_1C8323D90(v15, isUniquelyReferenced_nonNull_native, v13);
    *(v2 + 16) = v14;
    return swift_endAccess();
  }

  return result;
}

unint64_t sub_1C83221E8()
{
  result = qword_1ED7EE910;
  if (!qword_1ED7EE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE910);
  }

  return result;
}

uint64_t sub_1C832226C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DD30, &qword_1C841AE90);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1C8414660;
    if (v1 == 1)
    {
      *(v2 + 32) = sub_1C840C2EC();
    }

    else
    {
      v12 = [v1 platformColor];
      *(v2 + 32) = sub_1C840C26C();
      sub_1C831F58C(v1);
    }

    return v2;
  }

  v3 = [*v0 symbolColors];
  sub_1C8312180(0, &qword_1EC29CF10, 0x1E69E09E0);
  v4 = sub_1C840CFDC();

  v5 = sub_1C836DAB4();
  if (!v5)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1C840D46C();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1CCA75DF0](v8, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      v11 = [v9 platformColor];
      sub_1C840C26C();

      sub_1C840D44C();
      sub_1C840D47C();
      sub_1C840D48C();
      sub_1C840D45C();
    }

    while (v6 != v8);

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C832247C()
{
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_12();
  v4(v3);
  return v0;
}

unint64_t sub_1C83224D4()
{
  result = qword_1EC29DD08;
  if (!qword_1EC29DD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DCF0, &qword_1C8417790);
    sub_1C83234A0();
    sub_1C83527D8(&qword_1EC29C8F0, &unk_1EC29DD00, &unk_1C8417800, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DD08);
  }

  return result;
}

void sub_1C8322590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_49();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_2();
  v23 = MEMORY[0x1EEE9AC00](v22);
  (*(*(v18 - 8) + 16))(&a9 - v24, v19, v18, v23);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_44();
}

unint64_t sub_1C8322640()
{
  result = qword_1ED7EE908;
  if (!qword_1ED7EE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE908);
  }

  return result;
}

void sub_1C832271C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_49();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_2();
  v23 = MEMORY[0x1EEE9AC00](v22);
  (*(*(v18 - 8) + 16))(&a9 - v24, v19, v18, v23);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_44();
}

uint64_t OUTLINED_FUNCTION_45_0(uint64_t a1)
{

  return sub_1C8351588();
}

double OUTLINED_FUNCTION_45_1()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t sub_1C8322834@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a1;
  v29 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DE80, &qword_1C8417AC0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DE88, &qword_1C8417AC8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DE90, &qword_1C8417AD0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DE98, &qword_1C8417AD8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  v18 = a2[2];
  if (v18 == 2)
  {
    v20 = a2[4];
    v21 = a2[5];
    (*(v5 + 16))(v13, v28, v4, v15);
    v22 = &v13[*(v11 + 36)];
    *v22 = v20;
    *(v22 + 1) = v21;
    sub_1C83524D8();
  }

  else if (v18 == 1)
  {
    v19 = a2[4];
    (*(v5 + 16))(v17, v28, v4, v15);
    *&v17[*(v14 + 36)] = v19;
    sub_1C8322B8C();
  }

  else if (v18 >= 3)
  {
    v23 = a2[4];
    v24 = a2[5];
    v25 = a2[6];
    (*(v5 + 16))(v10, v28, v4, v15);
    v26 = &v10[*(v8 + 36)];
    *v26 = v23;
    *(v26 + 1) = v24;
    *(v26 + 2) = v25;
    sub_1C83523F4();
  }

  else
  {
    (*(v5 + 16))(v7, v28, v4, v15);
    sub_1C83527D8(&qword_1EC29DEA8, &qword_1EC29DE80, &qword_1C8417AC0, MEMORY[0x1E697FDF8]);
  }

  result = sub_1C840C5AC();
  *v29 = result;
  return result;
}

unint64_t sub_1C8322B8C()
{
  result = qword_1EC29DEC8;
  if (!qword_1EC29DEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DE98, &qword_1C8417AD8);
    sub_1C83527D8(&qword_1EC29DEA8, &unk_1EC29DE80, &unk_1C8417AC0, MEMORY[0x1E697FDF8]);
    sub_1C83527D8(&qword_1EC29DED0, &unk_1EC29DED8, &unk_1C8417AF0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DEC8);
  }

  return result;
}

void sub_1C8322C90(uint64_t a1)
{
  sub_1C8322DD0(319);
  if (v1 <= 0x3F)
  {
    sub_1C8316CE4();
    if (v2 <= 0x3F)
    {
      sub_1C8322E38(319, &qword_1EC29CAD8, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1C8322E38(319, &qword_1EC29CE28, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1C8313384(319, &qword_1EC29CAC8, MEMORY[0x1E6981E38]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C8322DD0(uint64_t a1)
{
  if (!qword_1EC29C8A8)
  {
    sub_1C8312180(255, &qword_1EC29C8B0, 0x1E69E0B40);
    v1 = sub_1C840D2FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC29C8A8);
    }
  }
}

void sub_1C8322E38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C8322F18(uint64_t *a1)
{
  sub_1C840B8BC();
  OUTLINED_FUNCTION_17_0();
  sub_1C840B85C();
  sub_1C840B85C();
  sub_1C840B85C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DB60, &qword_1C84168D8);
  OUTLINED_FUNCTION_17_0();
  sub_1C840B85C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DB68, &qword_1C84168E0);
  OUTLINED_FUNCTION_17_0();
  sub_1C840B85C();
  sub_1C840BC7C();
  sub_1C840C3AC();
  sub_1C840B85C();
  sub_1C840BC7C();
  sub_1C840BC7C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_34_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_5();
  sub_1C83527D8(v1, &qword_1EC29DB60, &qword_1C84168D8, v2);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_5();
  sub_1C83527D8(v3, &qword_1EC29DB68, &qword_1C84168E0, v4);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C83231A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!BYTE1(a3))
  {
    MEMORY[0x1CCA76180](0, a2, a3);
    v7 = a2;
    return MEMORY[0x1CCA76180](v7);
  }

  if (BYTE1(a3) != 1)
  {
    MEMORY[0x1CCA76180](2, a2, a3);
    MEMORY[0x1CCA76180](a2);
    sub_1C840D79C();
    if ((a2 & 0xFF00) != 0x400)
    {
      MEMORY[0x1CCA76180](BYTE1(a2));
    }

    if ((a2 & 0xFF0000) != 0x90000)
    {
      sub_1C840D79C();
      v7 = BYTE2(a2);
      return MEMORY[0x1CCA76180](v7);
    }

    return sub_1C840D79C();
  }

  v4 = a3;
  v5 = a3;
  MEMORY[0x1CCA76180](1);
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1CCA761A0](v6);
  if (v5 == 9)
  {
    return sub_1C840D79C();
  }

  sub_1C840D79C();
  v7 = v4;
  return MEMORY[0x1CCA76180](v7);
}

uint64_t sub_1C8323288()
{
  v0 = sub_1C840C62C();
  __swift_allocate_value_buffer(v0, qword_1EC29E4A0);
  v1 = __swift_project_value_buffer(v0, qword_1EC29E4A0);
  v2 = *MEMORY[0x1E6981DF0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1C8323310()
{
  v1 = OBJC_IVAR____TtCV18WorkflowUIServices17PrefetchableImage11Coordinator_reportedStages;
  OUTLINED_FUNCTION_17_1();
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  v6 = *(v3 + 16);
  v4 = v3 + 16;
  v5 = v6;
  if (v6)
  {
    v7 = *(v4 + 16 * v5);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_65_0()
{
}

uint64_t OUTLINED_FUNCTION_65_1(uint64_t a1)
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_65_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C840D7EC();
}

unint64_t sub_1C8323414()
{
  result = qword_1EC29DD18;
  if (!qword_1EC29DD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DD20, &qword_1C8417838);
    sub_1C8323558();
    sub_1C83235D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DD18);
  }

  return result;
}

unint64_t sub_1C83234A0()
{
  result = qword_1EC29DD10;
  if (!qword_1EC29DD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DCE8, &qword_1C8417788);
    sub_1C8323414();
    sub_1C83527D8(&unk_1EC29C8F8, &qword_1EC29D650, &qword_1C8415AB0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DD10);
  }

  return result;
}

unint64_t sub_1C8323558()
{
  result = qword_1ED7EE9F8[0];
  if (!qword_1ED7EE9F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7EE9F8);
  }

  return result;
}

__n128 IconView.init(_:size:displayMode:animated:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a2[1].n128_u8[0];
  v6 = *a3;
  v7 = *(a3 + 8);
  *a5 = a1;
  result = *a2;
  *(a5 + 8) = *a2;
  *(a5 + 24) = v5;
  *(a5 + 32) = v6;
  *(a5 + 40) = v7;
  *(a5 + 41) = a4;
  return result;
}

unint64_t sub_1C83235D8()
{
  result = qword_1EC29DD28;
  if (!qword_1EC29DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DD28);
  }

  return result;
}

uint64_t static SymbolAlignment.fontSize(for:containerDimension:scale:circularContainer:)(uint64_t a1, unint64_t a2, char a3, double a4, double a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2B0, &qword_1C84151D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C8416750;
  strcpy((inited + 32), "accessibility");
  *(inited + 46) = -4864;
  *(inited + 48) = 0xD000000000000012;
  *(inited + 56) = 0x80000001C8420710;
  *(inited + 64) = 0x6C2E6D617A616873;
  *(inited + 72) = 0xEB000000006F676FLL;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001C8420730;
  OUTLINED_FUNCTION_2_12();
  v53 = a1;
  if (sub_1C840CEFC() & 1) != 0 || (OUTLINED_FUNCTION_2_12(), v11 = sub_1C840CEFC(), (v11))
  {

    if (a3)
    {
      v12 = 0.528;
    }

    else
    {
      v12 = 0.66;
    }

    v13 = a4 * v12;
  }

  else
  {
    v54[0] = a1;
    v54[1] = a2;
    MEMORY[0x1EEE9AC00](v11);
    v51[2] = v54;
    v38 = a1;
    v39 = sub_1C8315EB4(sub_1C8323BB8, v51, inited);
    swift_setDeallocating();
    sub_1C8323C1C();
    if (v39)
    {
      if (a3)
      {
        v40 = 0.528;
      }

      else
      {
        v40 = 0.66;
      }

      v13 = a4 * v40;
      a1 = v53;
    }

    else
    {
      v41 = 0.58;
      if (a3)
      {
        v41 = 0.464;
      }

      v13 = v41 * a4;
      sub_1C8323C60();

      v42 = sub_1C8323CCC(v38, a2, 1, v13, a5);
      a1 = v38;
      if (v42)
      {
        v43 = v42;
        [v42 sizeInPoints];
        v45 = v44;
        v47 = v46;
      }

      else
      {
        v45 = 0.0;
        v47 = 0.0;
      }

      if (v45 > v47)
      {
        v48 = v45;
      }

      else
      {
        v48 = v47;
      }

      v49 = v48 / a4;
      if (a3)
      {
        v50 = 0.5621;
      }

      else
      {
        v50 = 0.73;
      }

      if (v49 > v50)
      {
        v13 = v13 * v50 / v49;
      }
    }
  }

  v51[5] = 0;
  if (qword_1EC29CF68 != -1)
  {
LABEL_56:
    swift_once();
  }

  v14 = off_1EC29FB68 + 64;
  OUTLINED_FUNCTION_1_16();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v21 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v21 = a1;
  }

  v22 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v22 = 11;
  }

  v51[6] = v22 | (v21 << 16);
  v52 = v15;

  v23 = 0;
  v51[7] = a2;
  while (v18)
  {
LABEL_18:
    v25 = __clz(__rbit64(v18)) | (v23 << 6);
    v26 = (*(v52 + 48) + 16 * v25);
    v28 = *v26;
    v27 = v26[1];
    v29 = *(*(v52 + 56) + 8 * v25);

    OUTLINED_FUNCTION_7_10();
    if (sub_1C840CEFC())
    {
      OUTLINED_FUNCTION_7_10();
      if (__OFSUB__(0, sub_1C840CE5C()))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      sub_1C840CE7C();
      OUTLINED_FUNCTION_8_12();
      v30 = sub_1C840CF2C();
      v28 = MEMORY[0x1CCA75810](v30);
      v32 = v31;
      a1 = v53;
    }

    else
    {

      v32 = v27;
    }

    OUTLINED_FUNCTION_7_10();
    OUTLINED_FUNCTION_2_12();
    if (sub_1C840CEFC())
    {
      OUTLINED_FUNCTION_7_10();
      if (__OFSUB__(0, sub_1C840CE5C()))
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_2_12();
      sub_1C840CE7C();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_2_12();
      v33 = sub_1C840CF2C();
      a1 = MEMORY[0x1CCA75810](v33);
      a2 = v34;
    }

    else
    {
    }

    v18 &= v18 - 1;
    if (v28 == a1 && v32 == a2)
    {

      OUTLINED_FUNCTION_5_14();
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_2_12();
    v36 = sub_1C840D69C();

    OUTLINED_FUNCTION_5_14();
    if (v36)
    {
LABEL_33:
      v13 = v13 * v29;
    }
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v24 >= v20)
    {
      break;
    }

    v18 = *&v14[8 * v24];
    ++v23;
    if (v18)
    {
      v23 = v24;
      goto LABEL_18;
    }
  }

  return BSFloatRoundForScale();
}

uint64_t sub_1C8323BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1C840D69C() & 1;
  }
}

uint64_t sub_1C8323C1C()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1C8323C60()
{
  result = qword_1EC29C870;
  if (!qword_1EC29C870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC29C870);
  }

  return result;
}

id sub_1C8323CCC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = sub_1C840CD9C();

  v9 = [swift_getObjCClassFromMetadata() glyphNamed:v8 pointSize:a3 symbolSize:a4 scaleFactor:a5];

  return v9;
}

void *sub_1C8323D50()
{
  result = sub_1C840CD3C();
  off_1EC29FB68 = result;
  return result;
}

uint64_t sub_1C8323D90(__int128 *a1, char a2, __n128 a3)
{
  v4 = v3;
  v6 = a3.n128_f64[0];
  v7 = *v3;
  v8 = sub_1C8323E90(a1);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DD50, &qword_1C8417858);
  result = sub_1C840D4EC();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1C8323E90(a1);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_9:
    result = sub_1C840D6DC();
    __break(1u);
    return result;
  }

  v10 = result;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    *(v14[7] + 8 * v10) = v6;
  }

  else
  {
    sub_1C83245CC(v10, a1, v14, v6);
    return sub_1C8324594(a1, &v15);
  }

  return result;
}

unint64_t sub_1C8323E90(__int128 *a1)
{
  v2 = a1[1];
  v6 = *a1;
  v7 = v2;
  v8[0] = a1[2];
  *(v8 + 10) = *(a1 + 42);
  sub_1C840D77C();
  sub_1C8323F14(v5);
  v3 = sub_1C840D7CC();

  return sub_1C83241F4(a1, v3);
}

uint64_t sub_1C8323F14(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 57);
  sub_1C840CE4C();
  IconSize.hash(into:)(a1);
  sub_1C840D79C();
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1CCA761A0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x1CCA761A0](*&v7);
  sub_1C840D79C();
  return MEMORY[0x1CCA76180](v5);
}

uint64_t IconSize.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  switch(v3 >> 5)
  {
    case 1u:
      sub_1C840CE4C();
      v7 = OUTLINED_FUNCTION_20_2();
      MEMORY[0x1CCA761A0](v7);
      goto LABEL_9;
    case 3u:
      sub_1C840CE4C();
      v5 = OUTLINED_FUNCTION_20_2();
      MEMORY[0x1CCA761A0](v5);
      if (v3)
      {
        if (v2)
        {
          if (v2 == 1)
          {
            v6 = 1;
          }

          else
          {
            v6 = 2;
          }
        }

        else
        {
          v6 = 0;
        }

        return MEMORY[0x1CCA76180](v6);
      }

      else
      {
        MEMORY[0x1CCA76180](3);
LABEL_9:
        if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v4 = v2;
        }

        else
        {
          v4 = 0;
        }

        return MEMORY[0x1CCA761A0](v4);
      }

    case 4u:

      return sub_1C840CE4C();
    default:
      sub_1C840CE4C();
      v4 = OUTLINED_FUNCTION_20_2();
      return MEMORY[0x1CCA761A0](v4);
  }
}

unint64_t sub_1C83241F4(double *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *(a1 + 2);
    v8 = *(a1 + 3);
    v9 = *(a1 + 32);
    v10 = v7 != 3;
    v11 = v7 != 2;
    v12 = v7 != 1;
    if (v8)
    {
      v10 = 1;
      v11 = 1;
      v12 = 1;
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = a1[5];
    v15 = a1[6];
    v57 = *(a1 + 56);
    v58 = *(a1 + 33);
    v16 = *a1;
    v17 = *(a1 + 1);
    v60 = v9 & 0xE0;
    v18 = *(v2 + 48);
    if (v9 != 128)
    {
      v10 = 1;
    }

    v49 = v10;
    v19 = v9 != 128 || v11;
    v48 = v19;
    v20 = v9 != 128 || v12;
    v21 = v9 != 128 || *(a1 + 1) != 0;
    v54 = v21;
    v55 = *(a1 + 57);
    v22 = a1[2];
    v23 = a1[3];
    v52 = v9 & (v8 > 1);
    v53 = v20;
    v51 = v9 & (v8 == 1);
    v56 = *(a1 + 32);
    v50 = v9 & v13;
    v59 = v6;
    while (1)
    {
      v24 = v18 + (v5 << 6);
      v25 = *(v24 + 16);
      v26 = *(v24 + 24);
      v27 = *(v24 + 32);
      v28 = *(v24 + 33);
      v30 = *(v24 + 40);
      v29 = *(v24 + 48);
      v31 = *(v24 + 56);
      v32 = *(v24 + 57);
      if (*v24 != v16 || *(v24 + 8) != v17)
      {
        v61 = v5;
        v34 = v3;
        v35 = *(v24 + 16);
        v36 = sub_1C840D69C();
        v25 = v35;
        v5 = v61;
        v6 = v59;
        v3 = v34;
        if ((v36 & 1) == 0)
        {
          goto LABEL_88;
        }
      }

      switch(v27 >> 5)
      {
        case 1u:
          if (v60 != 32 || v25 != v22 || v26 != v23)
          {
            goto LABEL_88;
          }

          goto LABEL_76;
        case 2u:
          if (v60 != 64 || v25 != v22)
          {
            goto LABEL_88;
          }

          goto LABEL_76;
        case 3u:
          if (v60 != 96 || v25 != v22)
          {
            goto LABEL_88;
          }

          if (v27)
          {
            if (v26 == 0.0)
            {
              if ((v50 & 1) == 0)
              {
                goto LABEL_88;
              }
            }

            else if (*&v26 == 1)
            {
              if ((v51 & 1) == 0)
              {
                goto LABEL_88;
              }
            }

            else if (!v52)
            {
              goto LABEL_88;
            }
          }

          else if ((v56 & 1) != 0 || v26 != v23)
          {
            goto LABEL_88;
          }

LABEL_76:
          if ((v28 ^ v58))
          {
            goto LABEL_88;
          }

          goto LABEL_81;
        case 4u:
          if (*&v26 | *&v25 || v27 != 128)
          {
            v44 = *&v25 == 1 && *&v26 == 0;
            if (v44 && v27 == 128)
            {
              if (v60 != 128)
              {
                goto LABEL_88;
              }

              v38 = v28 ^ v58;
              v39 = v53;
            }

            else
            {
              v45 = *&v25 == 2 && *&v26 == 0;
              if (v45 && v27 == 128)
              {
                if (v60 != 128)
                {
                  goto LABEL_88;
                }

                v38 = v28 ^ v58;
                v39 = v48;
              }

              else
              {
                if (v60 != 128)
                {
                  goto LABEL_88;
                }

                v38 = v28 ^ v58;
                v39 = v49;
              }
            }
          }

          else
          {
            if (v60 != 128)
            {
              goto LABEL_88;
            }

            v38 = v28 ^ v58;
            v39 = v54;
          }

          if (((v39 | v38) & 1) == 0)
          {
LABEL_81:
            v46 = v30 == v14 && v29 == v15;
            if (v46 && ((v31 ^ v57) & 1) == 0 && ((v55 ^ v32) & 1) == 0)
            {
              return v5;
            }
          }

LABEL_88:
          v5 = (v5 + 1) & v6;
          if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
          {
            return v5;
          }

          break;
        default:
          if (v56 >= 0x20 || v25 != v22)
          {
            goto LABEL_88;
          }

          goto LABEL_76;
      }
    }
  }

  return v5;
}

unint64_t sub_1C83245CC(unint64_t result, _OWORD *a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  v4 = (a3[6] + (result << 6));
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  *(v4 + 42) = *(a2 + 42);
  *(a3[7] + 8 * result) = a4;
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

uint64_t sub_1C8324628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E740, &qword_1C8419950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C8324694(uint64_t a1)
{
  v3 = v1;
  v15[1] = *MEMORY[0x1E69E9840];
  if (qword_1EC29CF48 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v4 = sub_1C840B4AC();
  __swift_project_value_buffer(v4, qword_1EC2A9D48);

  v5 = sub_1C840B48C();
  v6 = sub_1C840D18C();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_51_2();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_18_7();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1C830E180(*(v3 + 112), *(v3 + 120), v15);
    _os_log_impl(&dword_1C830A000, v5, v6, "UserDefaultsPersistence saving to default:%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
  }

  sub_1C840AF7C();
  OUTLINED_FUNCTION_54_1();
  swift_allocObject();
  sub_1C840AF6C();
  sub_1C840AF5C();

  if (!v2)
  {
    OUTLINED_FUNCTION_85_1();
    v9 = sub_1C840B15C();
    v15[0] = 0;
    v10 = [v9 compressedDataUsingAlgorithm:0 error:v15];

    if (v10)
    {
      v11 = v15[0];
      MEMORY[0x1CCA73B40](v10);
      sub_1C83B60F8();
    }

    else
    {
      v12 = v15[0];
      sub_1C840B0EC();

      swift_willThrow();
    }

    v13 = OUTLINED_FUNCTION_85_1();
    sub_1C8315128(v13, v14);
  }
}

uint64_t sub_1C83248E8()
{
  OUTLINED_FUNCTION_10_0();
  sub_1C8324694(*(v0 + 16));
  OUTLINED_FUNCTION_41();

  return v1();
}

uint64_t sub_1C832495C()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_16_0();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  *(v3 + 120) = v0;

  v7 = *(v3 + 56);
  if (v0)
  {
    v8 = sub_1C83B2EF0;
  }

  else
  {
    v8 = sub_1C8324A80;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C8324A80()
{
  OUTLINED_FUNCTION_10_0();
  sub_1C83155E8();

  OUTLINED_FUNCTION_41();

  return v0();
}

uint64_t sub_1C8324B00()
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_16_0();
  v1 = *v0;
  OUTLINED_FUNCTION_95();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return v3();
}

uint64_t sub_1C8324BE0()
{
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_16_0();
  v1 = *v0;
  OUTLINED_FUNCTION_95();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return v3();
}

uint64_t sub_1C8324CFC()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_80_2();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_0_14(v4);
  *v5 = v6;
  v5[1] = sub_1C837541C;
  v7 = OUTLINED_FUNCTION_33_0();

  return sub_1C8324DA8(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_1C8324DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1C840D4AC();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C8324E6C, 0, 0);
}

uint64_t sub_1C8324E6C()
{
  OUTLINED_FUNCTION_130();
  sub_1C840D70C();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1C8325394;
  OUTLINED_FUNCTION_17_1();

  return sub_1C8324F24(v2, v3, v4, v5, 1);
}

uint64_t sub_1C8324F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1C840D49C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1C8325024, 0, 0);
}

uint64_t sub_1C8325024()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1C840D4AC();
  v5 = sub_1C83251B0(&qword_1EC29F978, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1C840D6EC();
  sub_1C83251B0(&qword_1EC29F980, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1C840D4BC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1C83251F8;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1C83251B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C83251F8()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_16_0();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_95();
  *v8 = v7;
  *(v3 + 120) = v0;

  v9 = OUTLINED_FUNCTION_79();
  v6(v9);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C83B6304, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_41();

    return v10();
  }
}

uint64_t sub_1C8325394()
{
  OUTLINED_FUNCTION_10_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[9] = v0;

  v6 = v2[7];
  v7 = v2[6];
  v8 = v2[5];
  if (v0)
  {
    (*(v7 + 8))(v6, v8);

    return MEMORY[0x1EEE6DFA0](sub_1C83B2AF0, 0, 0);
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = swift_task_alloc();
    v3[10] = v9;
    *v9 = v5;
    v9[1] = sub_1C8324BE0;

    return sub_1C832555C();
  }
}

uint64_t sub_1C832557C()
{
  OUTLINED_FUNCTION_120();
  v15 = v0;
  v1 = *(*(v0 + 16) + 176);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    if (qword_1EC29CF48 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v3 = sub_1C840B4AC();
    __swift_project_value_buffer(v3, qword_1EC2A9D48);
    OUTLINED_FUNCTION_28_3();

    v4 = sub_1C840B48C();
    v5 = sub_1C840D18C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 16);
      OUTLINED_FUNCTION_51_2();
      v7 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_7();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1C830E180(*(v6 + 112), *(v6 + 120), &v14);
      OUTLINED_FUNCTION_87_0(&dword_1C830A000, v9, v10, "[%s] Deactivate");
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_7_9();
      MEMORY[0x1CCA773B0]();
      OUTLINED_FUNCTION_7_9();
      MEMORY[0x1CCA773B0]();
    }

    v11 = swift_task_alloc();
    *(v0 + 24) = v11;
    *v11 = v0;
    v11[1] = sub_1C8324B00;

    return sub_1C83257C0();
  }

  else
  {
    OUTLINED_FUNCTION_41();

    return v13();
  }
}

uint64_t sub_1C83257C0()
{
  OUTLINED_FUNCTION_130();
  v1[7] = v0;
  v2 = sub_1C840B3FC();
  v1[8] = v2;
  OUTLINED_FUNCTION_13(v2);
  v1[9] = v3;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C8325878()
{
  OUTLINED_FUNCTION_34();
  if (qword_1EC29CF50 != -1)
  {
    OUTLINED_FUNCTION_2_11();
    swift_once();
  }

  v1 = sub_1C840B42C();
  __swift_project_value_buffer(v1, qword_1EC2A9D60);
  sub_1C840B3EC();
  v2 = sub_1C840B41C();
  sub_1C840D21C();
  if (sub_1C840D2EC())
  {
    v3 = OUTLINED_FUNCTION_70_2();
    OUTLINED_FUNCTION_79_1(v3);
    v4 = sub_1C840B3DC();
    OUTLINED_FUNCTION_86_0(&dword_1C830A000, v5, v6, v4, "Prefetch.Persistence", "Save");
    OUTLINED_FUNCTION_7_9();
    MEMORY[0x1CCA773B0]();
  }

  v7 = v0[7];

  v8 = OUTLINED_FUNCTION_15();
  v9(v8);
  sub_1C840B46C();
  OUTLINED_FUNCTION_54_1();
  swift_allocObject();
  OUTLINED_FUNCTION_82_2();
  v0[12] = sub_1C840B45C();
  v10 = OUTLINED_FUNCTION_79();
  v11(v10);
  v12 = v7[19];
  v13 = v7[20];
  __swift_project_boxed_opaque_existential_1(v7 + 16, v12);
  OUTLINED_FUNCTION_17_1();
  swift_beginAccess();
  v15 = v7[25];
  v14 = v7[26];
  v0[13] = v14;
  v0[5] = v15;
  v0[6] = v14;
  v16 = *(v13 + 48);

  v19 = (v16 + *v16);
  v17 = swift_task_alloc();
  v0[14] = v17;
  *v17 = v0;
  v17[1] = sub_1C832495C;

  return (v19)(v0 + 5, v12, v13);
}

uint64_t sub_1C8325AE0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C83248E8, v3, 0);
}

void sub_1C8325B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_28_1();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F928, &unk_1C841C048);
  OUTLINED_FUNCTION_5();
  v29 = v28;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_52_1(v26, v26[3]);
  sub_1C830F51C();
  OUTLINED_FUNCTION_75_2();
  sub_1C840D7FC();
  OUTLINED_FUNCTION_40_3();
  sub_1C840D62C();
  if (!v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F900, &qword_1C841C038);
    sub_1C8325C80();
    sub_1C840D64C();
  }

  (*(v29 + 8))(v24, v27);
  OUTLINED_FUNCTION_29_0();
}

unint64_t sub_1C8325C80()
{
  result = qword_1EC29F930;
  if (!qword_1EC29F930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29F900, &qword_1C841C038);
    sub_1C83113DC(&qword_1EC29F938, sub_1C8325D3C, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F930);
  }

  return result;
}

unint64_t sub_1C8325D3C()
{
  result = qword_1EC29F940;
  if (!qword_1EC29F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29F940);
  }

  return result;
}

uint64_t sub_1C8325D90(uint64_t *a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29CFA0, &qword_1C8414680);
  v2 = MEMORY[0x1E6981840];
  v5[0] = v1;
  v5[1] = MEMORY[0x1E6981840];
  v5[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29CFA8, &qword_1C8414688);
  v5[3] = v2;
  sub_1C840BC7C();
  OUTLINED_FUNCTION_10_2();
  sub_1C840C3AC();
  v6 = sub_1C840B85C();
  OUTLINED_FUNCTION_11_0(v6, v3, v5);
  OUTLINED_FUNCTION_10_2();
  sub_1C840C63C();
  OUTLINED_FUNCTION_1_3();
  swift_getWitnessTable();
  sub_1C840C55C();
  sub_1C840B85C();
  sub_1C840B85C();
  OUTLINED_FUNCTION_2_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for ShortcutIndexedSearchView.Metrics.Icon(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ShortcutIndexedSearchView.Metrics.Icon(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void sub_1C8325F28(uint64_t a2@<X8>)
{
  sub_1C8325F5C();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_1C8325F9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C8325FEC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29CFA0, &qword_1C8414680);
  OUTLINED_FUNCTION_6();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C8326054(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29CFA0, &qword_1C8414680);
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1C83261B4()
{
  OUTLINED_FUNCTION_22_0();
  result = sub_1C840BA2C();
  *v0 = result;
  return result;
}

uint64_t sub_1C832629C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D330, &unk_1C8415340);
  OUTLINED_FUNCTION_11();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_19(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_1C8326344()
{
  OUTLINED_FUNCTION_27_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D330, &unk_1C8415340);
  OUTLINED_FUNCTION_11();
  if (*(v5 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_1C83263E8()
{
  v1 = type metadata accessor for ShortcutIndexedSearchView.DeepLinkButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E8F0, &unk_1C84164E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C840B71C();
    OUTLINED_FUNCTION_6();
    (*(v6 + 8))(v0 + v3);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2F0, &qword_1C84152A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C840B38C();
    OUTLINED_FUNCTION_6();
    (*(v8 + 8))(v5 + v7);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C8326580(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D428, &unk_1C8415740);
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1C83265E0()
{
  OUTLINED_FUNCTION_22_0();
  result = sub_1C840BA9C();
  *v0 = result;
  return result;
}

uint64_t sub_1C8326630()
{
  v1 = sub_1C840B8AC();
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64) + v5;
  v8 = v0 + *(v2 + 28);
  sub_1C840BB8C();
  OUTLINED_FUNCTION_6();
  (*(v9 + 8))(v8 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 1, v4 | 7);
}

uint64_t sub_1C8326710()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D428, &unk_1C8415740);
  sub_1C840BC8C();
  sub_1C8335B28();
  OUTLINED_FUNCTION_6_2();
  sub_1C8334AD0(v0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C83267FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E700, &unk_1C8415A30);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C8326850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E700, &unk_1C8415A30);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1C83268D0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEmphasized.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C8326930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E700, &unk_1C8415A30);
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C83269C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E700, &unk_1C8415A30);
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C8326A8C(void *a1)
{
  sub_1C840B85C();
  sub_1C83410F8();
  return swift_getWitnessTable();
}

uint64_t sub_1C8326B6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8342278();
  *a1 = result;
  return result;
}

uint64_t sub_1C8326BA4(uint64_t *a1)
{
  type metadata accessor for SolidColorThemeListRowModifier(255);
  sub_1C840B85C();
  sub_1C83442F8(&qword_1EC29D8F0, type metadata accessor for SolidColorThemeListRowModifier, &unk_1C8416314);
  return swift_getWitnessTable();
}

uint64_t sub_1C8326C40(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E700, &unk_1C8415A30);
    v7 = OUTLINED_FUNCTION_6_4(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void *sub_1C8326CDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E700, &unk_1C8415A30);
    v6 = OUTLINED_FUNCTION_6_4(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1C8326D64(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 16);
    if (v3 > 1)
    {
      return (v3 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E700, &unk_1C8415A30);
    v6 = OUTLINED_FUNCTION_6_4(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_1C8326DEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E700, &unk_1C8415A30);
    v6 = OUTLINED_FUNCTION_6_4(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_1C8326E70()
{
  v1 = type metadata accessor for CardBackgroundColorModifier(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0, &qword_1C8415D10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C840B5EC();
    OUTLINED_FUNCTION_6();
    (*(v6 + 8))(v0 + v3 + v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C8326FC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C83424BC();
  *a1 = result;
  return result;
}

id sub_1C832701C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8341954();
  *a1 = result;
  return result;
}

uint64_t sub_1C8327098()
{
  OUTLINED_FUNCTION_22_0();
  result = sub_1C840BADC();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C83270EC()
{
  OUTLINED_FUNCTION_22_0();
  result = MEMORY[0x1CCA74400]();
  *v0 = result;
  return result;
}

uint64_t sub_1C832711C()
{
  OUTLINED_FUNCTION_22_0();
  result = EnvironmentValues.symbolIconFontWeight.getter();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1C832718C()
{
  OUTLINED_FUNCTION_35();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_19(*(v0 + 32));
  }

  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB80, &qword_1C8416DC8);
  v6 = OUTLINED_FUNCTION_6_4(*(v5 + 52));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C832720C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35();
  if (v5 == v6)
  {
    *(v2 + 32) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB80, &qword_1C8416DC8);
    v8 = OUTLINED_FUNCTION_6_4(*(v7 + 52));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1C8327290()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DB40, &qword_1C8416808);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DB38, &qword_1C8416800);
  sub_1C8312180(255, &unk_1ED7EE930, 0x1E69E0960);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DB50, &qword_1C84168A0);
  sub_1C834F854();
  sub_1C834F934();
  swift_getOpaqueTypeConformance2();
  sub_1C834F988();
  swift_getOpaqueTypeConformance2();
  sub_1C834F9F0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C8327418()
{
  v1 = *(v0 + 48);
  if (v1 >= 2)
  {
  }

  sub_1C831E878(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1C832746C()
{
  v1 = sub_1C840B8AC();
  v2 = OUTLINED_FUNCTION_13(v1);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64) + v5;
  v8 = v0 + *(v2 + 28);
  sub_1C840BB8C();
  OUTLINED_FUNCTION_6();
  (*(v9 + 8))(v8 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 1, v4 | 7);
}

uint64_t sub_1C8327540()
{
  OUTLINED_FUNCTION_35();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_19(*(v0 + 8));
  }

  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E700, &unk_1C8415A30);
  v6 = OUTLINED_FUNCTION_6_4(*(v5 + 32));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C83275C0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_35();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E700, &unk_1C8415A30);
    v8 = OUTLINED_FUNCTION_6_4(*(v7 + 32));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1C8327680(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DEE0, &qword_1C8417AF8);
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_1C83276E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for BlendedBorderView(0);
  OUTLINED_FUNCTION_6_6();
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  swift_unknownObjectRelease();

  v10 = *(v6 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0, &qword_1C8415D10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C840B5EC();
    OUTLINED_FUNCTION_6();
    (*(v11 + 8))(v7 + v9 + v10);
  }

  else
  {
  }

  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE6BDD0](v12, v13, v14);
}

uint64_t sub_1C83277F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for BlendedBorderView(0);
  OUTLINED_FUNCTION_6_6();
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  swift_unknownObjectRelease();
  v10 = v7 + v9;

  v11 = v6[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0, &qword_1C8415D10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C840B5EC();
    OUTLINED_FUNCTION_6();
    (*(v12 + 8))(v10 + v11);
  }

  else
  {
  }

  sub_1C831E878(*(v10 + v6[9]), *(v10 + v6[9] + 8));
  sub_1C831E878(*(v10 + v6[10]), *(v10 + v6[10] + 8));
  OUTLINED_FUNCTION_44();

  return MEMORY[0x1EEE6BDD0](v13, v14, v15);
}

uint64_t sub_1C83279E0()
{
  v1 = sub_1C840C8DC();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_1C840C70C();
  OUTLINED_FUNCTION_5();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v15, v16 | 7);
}

unint64_t sub_1C8327B78()
{
  OUTLINED_FUNCTION_22_2();
  sub_1C840D54C();
  OUTLINED_FUNCTION_8_7();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C8327BBC(char a1)
{
  if (!a1)
  {
    return 1953393012;
  }

  if (a1 == 1)
  {
    return 0x746E656964617267;
  }

  return 0x47646E41746E6974;
}

uint64_t sub_1C8327C18(char a1)
{
  if (a1)
  {
    return 0x746E656964617267;
  }

  else
  {
    return 0x79654B746E6974;
  }
}

uint64_t sub_1C8327C98(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C840C62C();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C8327D20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C840C62C();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C8327EB8(uint64_t *a1)
{
  type metadata accessor for IconBlendModeModifier(255);
  sub_1C840B85C();
  sub_1C836F200(&qword_1EC29E4C0, type metadata accessor for IconBlendModeModifier, &unk_1C8418D34);
  return swift_getWitnessTable();
}

uint64_t sub_1C8327F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C840C62C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C8327F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C840C62C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1C8327FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D3E0, &qword_1C84154C0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1C83280B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D3E0, &qword_1C84154C0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C83281BC()
{
  v1 = sub_1C840C85C();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C83282AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8372048();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1C8328314(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  v3 = a2;
}

uint64_t sub_1C8328348@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C840B94C();
  *a1 = result;
  return result;
}

uint64_t sub_1C8328380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D330, &unk_1C8415340);
  OUTLINED_FUNCTION_11();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E700, &unk_1C8415A30);
    OUTLINED_FUNCTION_11();
    if (*(v11 + 84) != v3)
    {
      OUTLINED_FUNCTION_19_5();
      return (v13 + 1);
    }

    v8 = v10;
    v9 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void sub_1C832847C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D330, &unk_1C8415340);
  OUTLINED_FUNCTION_11();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E700, &unk_1C8415A30);
    OUTLINED_FUNCTION_11();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 28) + 8) = (v4 - 1);
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

uint64_t sub_1C832857C()
{
  OUTLINED_FUNCTION_14();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D330, &unk_1C8415340);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1C83285CC()
{
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D330, &unk_1C8415340);
  v0 = OUTLINED_FUNCTION_30_3();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1C8328684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_19_5();
    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for TopHitViewTextStyle.Resolved(0);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void sub_1C8328710()
{
  OUTLINED_FUNCTION_14();
  if (v3 == 2147483646)
  {
    *(v1 + 16) = v0;
  }

  else
  {
    v4 = v2;
    v5 = type metadata accessor for TopHitViewTextStyle.Resolved(0);
    v6 = v1 + *(v4 + 24);

    __swift_storeEnumTagSinglePayload(v6, v0, v0, v5);
  }
}

uint64_t sub_1C832878C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D330, &unk_1C8415340);
  OUTLINED_FUNCTION_11();
  if (*(v5 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v4);
  }

  else
  {
    OUTLINED_FUNCTION_19_5();
    return (v7 + 1);
  }
}

void sub_1C8328838(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D330, &unk_1C8415340);
  OUTLINED_FUNCTION_11();
  if (*(v8 + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_30_3();

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 36)) = (v4 - 1);
  }
}

uint64_t sub_1C83288D8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C840BAFC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void *sub_1C8328928@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C837B9D0();
  *a1 = result;
  return result;
}

__n128 sub_1C8328964(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C8328970()
{
  v1 = sub_1C840B8AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0 + *(v1 + 20);
  sub_1C840BB8C();
  OUTLINED_FUNCTION_6();
  (*(v7 + 8))(v6 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C8328A48()
{
  v1 = (type metadata accessor for AppShortcutIndexedSearchView.DerivedStyles(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_1C837FA8C(*(v0 + v3), *(v0 + v3 + 8));

  v5 = v0 + v3 + v1[8];

  v6 = *(type metadata accessor for TopHitViewTextStyle.Resolved(0) + 20);
  sub_1C840C62C();
  OUTLINED_FUNCTION_6();
  (*(v7 + 8))(v5 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C8328B74()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C8328C00(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E758, &qword_1C8419990);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC29E760, &qword_1C8419998);
  type metadata accessor for SpotlightUiShadow(255);
  OUTLINED_FUNCTION_17_0();
  sub_1C840B85C();
  OUTLINED_FUNCTION_3_8();
  sub_1C837E6E0(v1);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17_0();
  sub_1C840BC4C();
  OUTLINED_FUNCTION_17_0();
  sub_1C840B85C();
  OUTLINED_FUNCTION_5_9();
  sub_1C840BC7C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E770, &qword_1C84199A0);
  OUTLINED_FUNCTION_5_9();
  sub_1C840BC7C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E778, &unk_1C84199A8);
  OUTLINED_FUNCTION_5_9();
  swift_getTupleTypeMetadata2();
  sub_1C840C63C();
  OUTLINED_FUNCTION_1_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_9();
  sub_1C840C59C();
  sub_1C840B85C();
  OUTLINED_FUNCTION_8();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C8328D9C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E988, &qword_1C8419C10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E990, &qword_1C8419C18);
  OUTLINED_FUNCTION_17_0();
  sub_1C840B85C();
  OUTLINED_FUNCTION_1_13();
  sub_1C830D3C0(v1, &qword_1EC29E990, &qword_1C8419C18, v2);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_8();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_17_0();
  swift_getTupleTypeMetadata2();
  v3 = sub_1C840C63C();
  OUTLINED_FUNCTION_7_7(v3);
  OUTLINED_FUNCTION_17_0();
  sub_1C840C57C();
  sub_1C840C3AC();
  sub_1C840BCEC();
  OUTLINED_FUNCTION_17_0();
  sub_1C840B85C();
  sub_1C840B85C();
  type metadata accessor for CardBackgroundColorModifier(255);
  OUTLINED_FUNCTION_17_0();
  sub_1C840B85C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E9A0, &qword_1C8419C20);
  OUTLINED_FUNCTION_17_0();
  sub_1C840B85C();
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_9();
  sub_1C8381B98(v4, v5, MEMORY[0x1E6980268]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_7();
  sub_1C8381B98(v6, v7, &unk_1C8416364);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_8();
  sub_1C830D3C0(v8, &qword_1EC29E9A0, &qword_1C8419C20, v9);
  return swift_getWitnessTable();
}

uint64_t sub_1C8329014(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E988, &qword_1C8419C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8329084(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E988, &qword_1C8419C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C83290EC()
{

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1C832914C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8329188()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C83291C0()
{
  sub_1C840C70C();
  OUTLINED_FUNCTION_0_10();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1C8329250()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C8329288()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C8329348@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C838CA40();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C8329388@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C83906AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C83293F8(void *a1)
{
  v1 = sub_1C840B5CC();
  OUTLINED_FUNCTION_7();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for GradientColorResolverView(255, v1, WitnessTable, v3);
  sub_1C840B64C();
  sub_1C840B85C();
  sub_1C8319BC0();
  OUTLINED_FUNCTION_6_10();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17_0();
  sub_1C840B8DC();
  sub_1C840B85C();
  sub_1C840B85C();
  sub_1C840BC7C();
  sub_1C840BC7C();
  OUTLINED_FUNCTION_1_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C8329638(uint64_t *a1)
{
  sub_1C840B85C();
  sub_1C840B85C();
  sub_1C840B85C();
  OUTLINED_FUNCTION_10_2();
  sub_1C840B85C();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_10_2();
  sub_1C840C63C();
  OUTLINED_FUNCTION_1_3();
  swift_getWitnessTable();
  sub_1C840C59C();
  OUTLINED_FUNCTION_8();

  return swift_getWitnessTable();
}

id sub_1C832970C(void *a1)
{
  [a1 setNeedsLayout];

  return [a1 layoutIfNeeded];
}

uint64_t sub_1C8329754()
{
  OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8329788()
{
  OUTLINED_FUNCTION_37_0();
  result = sub_1C8396CB4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_1C83297DC()
{
  OUTLINED_FUNCTION_37_0();
  result = sub_1C8396D90();
  *v0 = result;
  return result;
}

uint64_t sub_1C8329858()
{
  OUTLINED_FUNCTION_37_0();
  result = sub_1C839713C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C832988C()
{
  OUTLINED_FUNCTION_37_0();
  result = sub_1C839752C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C83298E8()
{
  OUTLINED_FUNCTION_37_0();
  result = sub_1C8397854();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C832993C()
{
  OUTLINED_FUNCTION_37_0();
  result = sub_1C83979A4();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C8329990()
{
  OUTLINED_FUNCTION_37_0();
  result = sub_1C839B7C0();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1C83299E4()
{

  v0 = OUTLINED_FUNCTION_63_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8329A14()
{
  MEMORY[0x1CCA77470](v0 + 16);
  OUTLINED_FUNCTION_16_7();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8329A48()
{

  v0 = OUTLINED_FUNCTION_63_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8329A78()
{
  v1 = OUTLINED_FUNCTION_63_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C8329AC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C8329CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E700, &unk_1C8415A30);
  OUTLINED_FUNCTION_11();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F270, &qword_1C841ABB8);
  OUTLINED_FUNCTION_11();
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

void sub_1C8329DB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E700, &unk_1C8415A30);
  OUTLINED_FUNCTION_11();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F270, &qword_1C841ABB8);
    OUTLINED_FUNCTION_11();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1C8329EB8()
{

  OUTLINED_FUNCTION_4_13();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C8329EEC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C8329F24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C8329F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E700, &unk_1C8415A30);
  OUTLINED_FUNCTION_11();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F430, &unk_1C841AF70);
  OUTLINED_FUNCTION_11();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 40));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1C832A078(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E700, &unk_1C8415A30);
  OUTLINED_FUNCTION_11();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F430, &unk_1C841AF70);
    OUTLINED_FUNCTION_11();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 36);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_1C832A180()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C832A270@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C83B46AC(a2, a3);
  *a1 = result & 1;
  return result;
}

unint64_t sub_1C832A29C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C83B4AA0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C832A2C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C83B4AB0(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1C832A310()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_77_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C832A354()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_77_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C832A480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopHitViewTextStyle.Resolved(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C832A4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopHitViewTextStyle.Resolved(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1C832A514(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_1C840C62C();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_1C832A5A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1C840C62C();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C832A628()
{
  OUTLINED_FUNCTION_4_13();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C832A678()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

__n128 sub_1C832A6D0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C832A6E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C83BBA60();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C832A754()
{

  OUTLINED_FUNCTION_4_13();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C832A7AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C840BA7C();
  *a1 = result;
  return result;
}

uint64_t sub_1C832A800(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TopHitViewTextStyle(0);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1C832A888(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TopHitViewTextStyle(0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C832A908(void *a1)
{
  v1 = sub_1C840B5CC();
  OUTLINED_FUNCTION_7();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for GradientColorResolverView(255, v1, WitnessTable, v3);
  sub_1C840B64C();
  sub_1C840B85C();
  sub_1C8319BC0();
  OUTLINED_FUNCTION_6_10();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C840B8DC();
  sub_1C840B85C();
  sub_1C840B85C();
  OUTLINED_FUNCTION_1_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_12();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C832AABC()
{
  sub_1C8369924(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C832AAF8()
{
  MEMORY[0x1CCA77470](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C832AB30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29FF78, &qword_1C841DE68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C832AB98()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C832ABDC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C832AC14()
{

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_1C832AD1C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t WidgetConfigurationCardHeaderView.init(icon:title:subtitle:dismiss:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t WidgetConfigurationCardHeaderView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a1;
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29CFA0, &qword_1C8414680);
  v5 = MEMORY[0x1E6981840];
  *&v50 = v4;
  *(&v50 + 1) = MEMORY[0x1E6981840];
  *&v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29CFA8, &qword_1C8414688);
  *(&v51 + 1) = v5;
  v6 = *(a1 + 16);
  sub_1C840BC7C();
  OUTLINED_FUNCTION_10_2();
  sub_1C840C3AC();
  *&v52 = sub_1C840B85C();
  OUTLINED_FUNCTION_11_0(v52, v7, &v50);
  OUTLINED_FUNCTION_10_2();
  sub_1C840C63C();
  OUTLINED_FUNCTION_1_3();
  swift_getWitnessTable();
  v8 = sub_1C840C55C();
  OUTLINED_FUNCTION_5();
  v38 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = sub_1C840B85C();
  OUTLINED_FUNCTION_5();
  v41 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = sub_1C840B85C();
  OUTLINED_FUNCTION_5();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  v39 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v40 = &v37 - v24;
  v25 = v2[1];
  v50 = *v2;
  v51 = v25;
  v26 = v2[3];
  v52 = v2[2];
  v53 = v26;
  v27 = *(v37 + 24);
  v43 = v6;
  v44 = v27;
  v45 = &v50;
  sub_1C840BB7C();
  sub_1C840C54C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC29CFB0, &qword_1C8414690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C8414650;
  LOBYTE(v6) = sub_1C840BDBC();
  *(inited + 32) = v6;
  v29 = sub_1C840BDDC();
  *(inited + 33) = v29;
  sub_1C840BE0C();
  sub_1C840BE0C();
  if (sub_1C840BE0C() != v6)
  {
    sub_1C840BE0C();
  }

  sub_1C840BE0C();
  if (sub_1C840BE0C() != v29)
  {
    sub_1C840BE0C();
  }

  OUTLINED_FUNCTION_2_2();
  WitnessTable = swift_getWitnessTable();
  sub_1C840C1DC();
  (*(v38 + 8))(v12, v8);
  v48 = WitnessTable;
  v49 = MEMORY[0x1E697E5D8];
  OUTLINED_FUNCTION_0_0();
  v31 = swift_getWitnessTable();
  sub_1C840B86C();
  sub_1C840BDCC();
  v32 = v39;
  sub_1C840C14C();
  (*(v41 + 8))(v17, v13);
  v46 = v31;
  v47 = MEMORY[0x1E6980A30];
  swift_getWitnessTable();
  v33 = *(v20 + 16);
  v34 = v40;
  v33(v40, v32, v18);
  v35 = *(v20 + 8);
  v35(v32, v18);
  v33(v42, v34, v18);
  return (v35)(v34, v18);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C832B280@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v42 = sub_1C840BC7C();
  v7 = sub_1C840C3AC();
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v39 - v8;
  v9 = sub_1C840B85C();
  v48 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29CFA0, &qword_1C8414680);
  v39 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = a1[1];
  *(v18 + 32) = *a1;
  *(v18 + 48) = v19;
  v20 = a1[3];
  *(v18 + 64) = a1[2];
  *(v18 + 80) = v20;
  v22 = type metadata accessor for WidgetConfigurationCardHeaderView(0, a2, a3, v21);
  (*(*(v22 - 8) + 16))(__src, a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D178, &qword_1C8414DD8);
  __src[0] = MEMORY[0x1E6981748];
  __src[1] = MEMORY[0x1E6981710];
  swift_getOpaqueTypeConformance2();
  v46 = v17;
  sub_1C840C53C();
  sub_1C840C5FC();
  sub_1C840B69C();
  v23 = &v17[*(v13 + 36)];
  v24 = v65;
  *v23 = v64;
  *(v23 + 1) = v24;
  *(v23 + 2) = v66;
  v25 = sub_1C840BBCC();
  v60[0] = 0;
  sub_1C832BAD4(a1, __src);
  memcpy(v67, __src, sizeof(v67));
  memcpy(v68, __src, sizeof(v68));
  sub_1C832D46C(v67, v69, &qword_1EC29D180, &qword_1C8414DE0);
  sub_1C832D574(v68, &qword_1EC29D180, &qword_1C8414DE0);
  memcpy(__src + 7, v67, 0x78uLL);
  v69[0] = v25;
  v69[1] = 0;
  LOBYTE(v69[2]) = v60[0];
  memcpy(&v69[2] + 1, __src, 0x7FuLL);
  v49 = a2;
  v50 = a3;
  v51 = a1;
  v63[8] = a3;
  v63[9] = MEMORY[0x1E6981580];
  WitnessTable = swift_getWitnessTable();
  v27 = v40;
  sub_1C840C39C();
  v63[7] = WitnessTable;
  v28 = swift_getWitnessTable();
  sub_1C834712C(v7);
  v29 = v41;
  sub_1C840C19C();
  (*(v44 + 8))(v27, v7);
  v63[5] = v28;
  v63[6] = MEMORY[0x1E697E040];
  v44 = swift_getWitnessTable();
  v30 = v48;
  v31 = *(v48 + 16);
  v32 = v43;
  v31(v43, v29, v9);
  v33 = *(v30 + 8);
  v48 = v30 + 8;
  v33(v29, v9);
  v34 = v47;
  sub_1C8325FEC(v46, v47);
  v61 = 0;
  v62 = 1;
  v63[0] = v34;
  v63[1] = &v61;
  memcpy(v60, v69, sizeof(v60));
  v58 = 0;
  v59 = 1;
  v63[2] = v60;
  v63[3] = &v58;
  v31(v29, v32, v9);
  v63[4] = v29;
  sub_1C832D46C(v69, __src, &qword_1EC29CFA8, &qword_1C8414688);
  v35 = MEMORY[0x1E6981840];
  v57[0] = v39;
  v57[1] = MEMORY[0x1E6981840];
  v57[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29CFA8, &qword_1C8414688);
  v57[3] = v35;
  v57[4] = v9;
  v36 = sub_1C832D3B4();
  v37 = MEMORY[0x1E6981838];
  v52 = v36;
  v53 = MEMORY[0x1E6981838];
  v54 = sub_1C830D3C0(&qword_1EC29D1A0, &qword_1EC29CFA8, &qword_1C8414688, MEMORY[0x1E6981870]);
  v55 = v37;
  v56 = v44;
  sub_1C8375E44(v63, 5, v57);
  sub_1C832D574(v69, &qword_1EC29CFA8, &qword_1C8414688);
  v33(v32, v9);
  sub_1C8326054(v46);
  v33(v29, v9);
  memcpy(__src, v60, 0x90uLL);
  sub_1C832D574(__src, &qword_1EC29CFA8, &qword_1C8414688);
  return sub_1C8326054(v47);
}

double sub_1C832B968()
{
  v0 = sub_1C840C3EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C840C3DC();
  (*(v1 + 104))(v3, *MEMORY[0x1E6981630], v0);
  v4 = sub_1C840C46C();

  (*(v1 + 8))(v3, v0);
  v6[1] = v4;
  sub_1C840BEEC();
  sub_1C840C0CC();

  return result;
}

uint64_t sub_1C832BAD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{

  sub_1C840BFDC();
  v28 = sub_1C840C07C();
  v29 = v3;
  v31 = v4;
  v6 = v5;

  KeyPath = swift_getKeyPath();
  v26 = swift_getKeyPath();
  v7 = v6 & 1;
  LOBYTE(v34) = v6 & 1;
  __dst[0] = 0;
  if (a1[5])
  {

    sub_1C840BFBC();
    v8 = sub_1C840C07C();
    v10 = v9;
    v12 = v11;

    sub_1C840BF1C();
    v13 = sub_1C840C04C();
    v15 = v14;
    v17 = v16;
    sub_1C832D564(v8, v10, v12 & 1);

    v34 = xmmword_1C8414660;
    sub_1C832D5CC();
    v18 = sub_1C840C06C();
    v20 = v19;
    LOBYTE(v8) = v21;
    v23 = v22;
    sub_1C832D564(v13, v15, v17 & 1);

    v24 = v8 & 1;
    sub_1C832D510(v18, v20, v8 & 1);
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v24 = 0;
    v23 = 0;
  }

  __src[0] = v28;
  __src[1] = v31;
  LOBYTE(__src[2]) = v7;
  *(&__src[2] + 1) = v48[0];
  HIDWORD(__src[2]) = *(v48 + 3);
  __src[3] = v29;
  __src[4] = KeyPath;
  __src[5] = 2;
  LOBYTE(__src[6]) = 0;
  *(&__src[6] + 1) = *v47;
  HIDWORD(__src[6]) = *&v47[3];
  __src[7] = v26;
  LOBYTE(__src[8]) = 1;
  *(&__src[8] + 1) = *v46;
  HIDWORD(__src[8]) = *&v46[3];
  *&__src[9] = xmmword_1C8414670;
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C832D46C(__src, &v34, &qword_1EC29D1A8, &unk_1C8414E50);
  sub_1C832D4CC(v18, v20, v24, v23);
  sub_1C832D520(v18, v20, v24, v23);
  memcpy(a2, __dst, 0x58uLL);
  a2[11] = v18;
  a2[12] = v20;
  a2[13] = v24;
  a2[14] = v23;
  sub_1C832D520(v18, v20, v24, v23);
  *&v34 = v28;
  *(&v34 + 1) = v31;
  v35 = v7;
  *v36 = v48[0];
  *&v36[3] = *(v48 + 3);
  v37 = v29;
  v38 = KeyPath;
  v39 = 2;
  v40 = 0;
  *v41 = *v47;
  *&v41[3] = *&v47[3];
  v42 = v26;
  v43 = 1;
  *&v44[3] = *&v46[3];
  *v44 = *v46;
  v45 = xmmword_1C8414670;
  return sub_1C832D574(&v34, &qword_1EC29D1A8, &unk_1C8414E50);
}

uint64_t sub_1C832BE40@<X0>(void (**a1)(__n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v39 = a4;
  v6 = sub_1C840D2FC();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v19 = sub_1C840BC7C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v35 - v22;
  (*a1)(v21);
  if (__swift_getEnumTagSinglePayload(v8, 1, a2) == 1)
  {
    (*(v36 + 8))(v8, v37);
    v24 = sub_1C840C2BC();
    v25 = v38;
    sub_1C8322590(&v42, a2, MEMORY[0x1E69815C0], v38, MEMORY[0x1E6981580], v26, v27, v28, v35, v36, v37, v38, v39, v40, v41, v24, v43, v44);
  }

  else
  {
    (*(v9 + 32))(v18, v8, a2);
    v29 = *(v9 + 16);
    v29(v15, v18, a2);
    v29(v12, v15, a2);
    v25 = v38;
    sub_1C832271C(v12, a2, MEMORY[0x1E69815C0], v38, MEMORY[0x1E6981580], v30, v31, v32, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
    v33 = *(v9 + 8);
    v33(v12, a2);
    v33(v15, a2);
    v33(v18, a2);
  }

  v40 = v25;
  v41 = MEMORY[0x1E6981580];
  swift_getWitnessTable();
  (*(v20 + 16))(v39, v23, v19);
  return (*(v20 + 8))(v23, v19);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C832C264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C832C2B4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C832C2F4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C832C390(uint64_t a1, int a2)
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

uint64_t sub_1C832C3B0(uint64_t result, int a2, int a3)
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

uint64_t sub_1C832C3F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C832C410(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C832C4C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C832C4E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t sub_1C832C570()
{
  v0 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7_0(v0);
  return sub_1C840D7CC();
}

uint64_t sub_1C832C5B0(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_9();
  sub_1C83B2218(v3, v1);
  return sub_1C840D7CC();
}

uint64_t sub_1C832C614(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_9();
  MEMORY[0x1CCA76180](a1);
  return sub_1C840D7CC();
}

uint64_t sub_1C832C654(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  sub_1C840D79C();
  return sub_1C840D7CC();
}

uint64_t sub_1C832C694(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  MEMORY[0x1CCA76180](a1);
  return sub_1C840D7CC();
}

uint64_t sub_1C832C6D4()
{
  OUTLINED_FUNCTION_8_1();
  sub_1C840D79C();
  return sub_1C840D7CC();
}

uint64_t sub_1C832C710(uint64_t a1, unsigned __int8 a2)
{
  sub_1C840D77C();
  MEMORY[0x1CCA76180](a2);
  return sub_1C840D7CC();
}

uint64_t sub_1C832C754()
{
  v1 = OUTLINED_FUNCTION_8_1();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x707369446E6F6369;
    }

    else
    {
      v3 = 0x756F72676B636162;
    }
  }

  else
  {
    v3 = 0x6F6C6F4374786574;
  }

  OUTLINED_FUNCTION_12_0(v1, v3, v2);

  return sub_1C840D7CC();
}

uint64_t sub_1C832C800()
{
  OUTLINED_FUNCTION_8_1();
  sub_1C83B2218(v2, v0);
  return sub_1C840D7CC();
}

uint64_t sub_1C832C83C()
{
  v1 = OUTLINED_FUNCTION_8_1();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0x746E656964617267;
    }

    else
    {
      v3 = 0x47646E41746E6974;
    }
  }

  else
  {
    v3 = 1953393012;
  }

  OUTLINED_FUNCTION_12_0(v1, v3, v2);

  return sub_1C840D7CC();
}

uint64_t sub_1C832C8D0()
{
  v1 = OUTLINED_FUNCTION_8_1();
  if (v0)
  {
    v3 = 0x746E656964617267;
  }

  else
  {
    v3 = 0x79654B746E6974;
  }

  OUTLINED_FUNCTION_12_0(v1, v3, v2);

  return sub_1C840D7CC();
}

uint64_t sub_1C832C948(uint64_t a1)
{
  v1 = sub_1C840D77C();
  OUTLINED_FUNCTION_7_0(v1);
  return sub_1C840D7CC();
}

uint64_t sub_1C832C980()
{
  v1 = OUTLINED_FUNCTION_8_1();
  if (v0)
  {
    if (v0 == 1)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0xD00000000000001DLL;
    }
  }

  else
  {
    v3 = 0x6953657361726870;
  }

  OUTLINED_FUNCTION_12_0(v1, v3, v2);

  return sub_1C840D7CC();
}

uint64_t sub_1C832CA24(uint64_t a1, uint64_t a2)
{
  sub_1C840D77C();
  MEMORY[0x1CCA76180](a2);
  return sub_1C840D7CC();
}

void sub_1C832CA68()
{
  OUTLINED_FUNCTION_3();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_1C832CA98(uint64_t a1, id *a2)
{
  result = sub_1C840CDBC();
  *a2 = 0;
  return result;
}

uint64_t sub_1C832CB10(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1CCA73D10](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C832CB64(uint64_t a1, id *a2)
{
  v3 = sub_1C840CDCC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C832CBE4(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1CCA73D20](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_1C832CC4C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1C832D2F0(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1C832CC80(uint64_t a1)
{
  v1 = sub_1C840CDDC();
  v2 = MEMORY[0x1CCA75900](v1);

  return v2;
}

uint64_t sub_1C832CCC0(uint64_t a1, uint64_t a2)
{
  sub_1C840CDDC();
  sub_1C840CE4C();
}

uint64_t sub_1C832CD14(double a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  return MEMORY[0x1CCA761A0](*&a1);
}

uint64_t sub_1C832CD50(uint64_t a1, uint64_t a2)
{
  sub_1C840CDDC();
  sub_1C840D77C();
  sub_1C840CE4C();
  v2 = sub_1C840D7CC();

  return v2;
}

uint64_t sub_1C832CDC4(uint64_t a1, double a2)
{
  if (a2 == 0.0)
  {
    a2 = 0.0;
  }

  return MEMORY[0x1EEE6B628](a1, *&a2);
}

uint64_t sub_1C832CE30@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1C840CD9C();

  *a2 = v3;
  return result;
}

uint64_t sub_1C832CE78()
{
  v1 = OUTLINED_FUNCTION_3();
  result = sub_1C832CEA0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1C832CEA4(uint64_t a1)
{
  sub_1C832CFF0(&qword_1EC29F130, type metadata accessor for Key, &unk_1C8414D94);
  sub_1C832CFF0(&qword_1EC29D110, type metadata accessor for Key, &unk_1C8414A2C);

  return sub_1C840D53C();
}

uint64_t sub_1C832CFF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1C832D0C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_1C832D0D8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1C832D0E4(uint64_t a1)
{
  sub_1C832CFF0(&qword_1EC29D0F0, type metadata accessor for Weight, &unk_1C8414D04);
  sub_1C832CFF0(&qword_1EC29D0F8, type metadata accessor for Weight, &unk_1C8414CA4);
  sub_1C832D32C();
  return sub_1C840D53C();
}

uint64_t sub_1C832D2F0(uint64_t a1)
{
  sub_1C840CDDC();
  v1 = sub_1C840CD9C();

  return v1;
}

unint64_t sub_1C832D32C()
{
  result = qword_1EC29D100;
  if (!qword_1EC29D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D100);
  }

  return result;
}

unint64_t sub_1C832D3B4()
{
  result = qword_1EC29D188;
  if (!qword_1EC29D188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29CFA0, &qword_1C8414680);
    sub_1C830D3C0(&qword_1EC29D190, &qword_1EC29D198, &qword_1C8414DE8, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D188);
  }

  return result;
}

uint64_t sub_1C832D46C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6();
  (*(v6 + 16))(a2, a1);
  return a2;
}

double sub_1C832D4CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C832D510(a1, a2, a3 & 1);
  }

  return result;
}

double sub_1C832D510(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1C832D520(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C832D564(result, a2, a3 & 1);
  }

  return result;
}

void sub_1C832D564(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C832D574(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C832D5CC()
{
  result = qword_1EC29D1B0;
  if (!qword_1EC29D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D1B0);
  }

  return result;
}

uint64_t sub_1C832D640(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C832D660(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

WorkflowUIServices::ParameterSummaryContent __swiftcall ParameterSummaryContent.init(contents:)(WorkflowUIServices::ParameterSummaryContent contents)
{
  *(v1 + 8) = 0;
  *v1 = contents.contents._rawValue;
  return contents;
}

uint64_t ParameterSummaryContent.text.getter()
{
  v1 = *v0;
  v14 = 0;
  v15 = 0xE000000000000000;
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = v1 + 32;
  do
  {
    sub_1C832D808(v3, v13);
    sub_1C832D808(v13, __src);
    if (v12)
    {
      memcpy(__dst, __src, sizeof(__dst));
      v4 = __dst[10];
      v5 = __dst[11];
      __swift_project_boxed_opaque_existential_1(&__dst[7], __dst[10]);
      v6 = (*(v5 + 24))(v4, v5);
      v8 = v7;
      sub_1C832D840(__dst);
    }

    else
    {
      v6 = __src[0];
      v8 = __src[1];
    }

    MEMORY[0x1CCA75890](v6, v8);

    sub_1C832D870(v13);
    v3 += 104;
    --v2;
  }

  while (v2);
  return v14;
}

uint64_t static ParameterSummaryContent.token(typedValue:title:symbolName:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = sub_1C840B1DC();
  OUTLINED_FUNCTION_5();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v25[3] = sub_1C840CA1C();
  v25[4] = &protocol witness table for TypedValue;
  __swift_allocate_boxed_opaque_existential_1(v25);
  OUTLINED_FUNCTION_5_0();
  (*(v16 + 16))();
  sub_1C840B1CC();
  v17 = sub_1C840B1BC();
  v19 = v18;
  (*(v11 + 8))(v15, v9);
  v23[0] = v17;
  v23[1] = v19;
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = a3;
  v23[5] = a4;
  v24 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D290, &unk_1C8414F80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C8414660;
  sub_1C832DBC8(v23, v20 + 32);
  *(v20 + 128) = 1;

  result = sub_1C832D840(v23);
  *(a5 + 8) = 0;
  *a5 = v20;
  return result;
}

uint64_t ParameterSummaryContentValue.init(title:symbolName:tokenize:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = sub_1C840B1DC();
  OUTLINED_FUNCTION_5();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  sub_1C840B1CC();
  v19 = sub_1C840B1BC();
  v21 = v20;
  (*(v14 + 8))(v18, v12);
  *a7 = v19;
  *(a7 + 8) = v21;
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5;
  return sub_1C830D408(a6, a7 + 56);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t static ParameterSummaryContent.value(_:fallbackName:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = sub_1C840B1DC();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 24))(v13, v14);
  if (v16)
  {
    a2 = v15;
    a3 = v16;
  }

  else
  {
  }

  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = (*(v18 + 40))(v17, v18);
  v21 = v20;
  v23 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  LOBYTE(v22) = (*(v22 + 48))(v23, v22);
  sub_1C832DE28(a1, &v33);
  sub_1C840B1CC();
  v24 = sub_1C840B1BC();
  v26 = v25;
  (*(v8 + 8))(v12, v29);
  v31[0] = v24;
  v31[1] = v26;
  v31[2] = a2;
  v31[3] = a3;
  v31[4] = v19;
  v31[5] = v21;
  v32 = v22 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D290, &unk_1C8414F80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C8414660;
  sub_1C832DBC8(v31, v27 + 32);
  *(v27 + 128) = 1;
  result = sub_1C832D840(v31);
  *(a4 + 8) = 0;
  *a4 = v27;
  return result;
}

uint64_t sub_1C832DE28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *ParameterSummaryContent.appending(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  sub_1C832D808(a1, __src);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C832E644();
    v4 = v7;
  }

  v5 = *(v4 + 16);
  if (v5 >= *(v4 + 24) >> 1)
  {
    sub_1C832E644();
    v4 = v8;
  }

  *(v4 + 16) = v5 + 1;
  result = memcpy((v4 + 104 * v5 + 32), __src, 0x61uLL);
  *(a2 + 8) = 0;
  *a2 = v4;
  return result;
}

uint64_t sub_1C832DFF8(char a1)
{
  sub_1C840D77C();
  MEMORY[0x1CCA76180](a1 & 1);
  return sub_1C840D7CC();
}

uint64_t sub_1C832E048(uint64_t a1)
{
  v2 = *v1;
  sub_1C840D77C();
  MEMORY[0x1CCA76180](v2);
  return sub_1C840D7CC();
}

uint64_t TypedValue.init(textValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C840CA1C();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = (v11 - v10);
  sub_1C840C9DC();
  v13 = swift_allocBox();
  *v14 = a1;
  v14[1] = a2;
  OUTLINED_FUNCTION_5_0();
  (*(v15 + 104))();
  *v12 = v13;
  (*(v8 + 104))(v12, *MEMORY[0x1E69DAE70], v6);
  (*(v8 + 32))(a3, v12, v6);
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
}

uint64_t TypedValue.init(typedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C840CA1C();
  OUTLINED_FUNCTION_5_0();
  (*(v5 + 32))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TypedValue.textValue()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D298, &unk_1C8415B80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  sub_1C840CA0C();
  v5 = sub_1C840CC0C();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1C832E738(v4);
    sub_1C832E7A0();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
  }

  else
  {
    v0 = sub_1C840CBDC();
    v1 = v7;
    OUTLINED_FUNCTION_5_0();
    (*(v8 + 8))(v4, v5);
  }

  v9 = v0;
  v10 = v1;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t TypedValue.typedValue()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C832E3C4, 0, 0);
}

uint64_t sub_1C832E3C4()
{
  sub_1C840CA1C();
  OUTLINED_FUNCTION_5_0();
  v1 = OUTLINED_FUNCTION_12();
  v2(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C832E478(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C8311C5C;

  return TypedValue.typedValue()(a1);
}

uint64_t sub_1C832E558(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1C832E5FC(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_1C832E644()
{
  OUTLINED_FUNCTION_14_0();
  if (v3)
  {
    OUTLINED_FUNCTION_3_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_13_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D290, &unk_1C8414F80);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_7_1();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[104 * v7] <= v11)
    {
      memmove(v11, v12, 104 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1C832E738(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D298, &unk_1C8415B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C832E7A0()
{
  result = qword_1EC29D2A0;
  if (!qword_1EC29D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D2A0);
  }

  return result;
}

uint64_t sub_1C832E7F4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C832E834(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C832E894(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 97))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 96);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C832E8D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C832E924(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 96) = a2;
  return result;
}

uint64_t sub_1C832E964(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C832E9A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1C832EA08(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C832EAE4()
{
  result = qword_1EC29D2A8;
  if (!qword_1EC29D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D2A8);
  }

  return result;
}

void sub_1C832EB38()
{
  OUTLINED_FUNCTION_9_1();
  if (v3)
  {
    OUTLINED_FUNCTION_8_2();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_3();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1C832F0F0(*(v0 + 16), v4, &qword_1EC29D2E8, &qword_1C8415210, MEMORY[0x1E69DAE88]);
  OUTLINED_FUNCTION_16_1();
  v7 = *(sub_1C840CA1C() - 8);
  if (v1)
  {
    OUTLINED_FUNCTION_11_1((*(v7 + 80) + 32) & ~*(v7 + 80), MEMORY[0x1E69DAE88]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }
}

void sub_1C832EC24()
{
  OUTLINED_FUNCTION_9_1();
  if (v3)
  {
    OUTLINED_FUNCTION_8_2();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_3();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1C832F0F0(*(v0 + 16), v4, &qword_1EC29D2C8, &qword_1C84151E8, MEMORY[0x1E69DB190]);
  OUTLINED_FUNCTION_16_1();
  v7 = *(sub_1C840CB0C() - 8);
  if (v1)
  {
    OUTLINED_FUNCTION_11_1((*(v7 + 80) + 32) & ~*(v7 + 80), MEMORY[0x1E69DB190]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }
}

void sub_1C832ED10()
{
  OUTLINED_FUNCTION_14_0();
  if (v3)
  {
    OUTLINED_FUNCTION_3_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_13_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = v0[2];
  if (v4 <= v7)
  {
    v8 = v0[2];
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAC0, &unk_1C8419240);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_7_1();
    v9[2] = v7;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[5 * v7 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 40 * v7);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2D8, &qword_1C8415200);
    swift_arrayInitWithCopy();
  }
}

void sub_1C832EE28()
{
  OUTLINED_FUNCTION_14_0();
  if (v3)
  {
    OUTLINED_FUNCTION_3_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_13_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2D0, &unk_1C84151F0);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_7_1();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[48 * v7] <= v11)
    {
      memmove(v11, v12, 48 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1C832EF1C()
{
  OUTLINED_FUNCTION_9_1();
  if (v3)
  {
    OUTLINED_FUNCTION_8_2();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_3();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1C832F0F0(*(v0 + 16), v4, &qword_1EC29D2E0, &qword_1C8415208, MEMORY[0x1E69DB348]);
  OUTLINED_FUNCTION_16_1();
  v7 = *(sub_1C840CB6C() - 8);
  if (v1)
  {
    OUTLINED_FUNCTION_11_1((*(v7 + 80) + 32) & ~*(v7 + 80), MEMORY[0x1E69DB348]);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }
}

void sub_1C832F008()
{
  OUTLINED_FUNCTION_14_0();
  if (v3)
  {
    OUTLINED_FUNCTION_3_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_13_0();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2C0, &qword_1C84151E0);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 8);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v7] <= v11)
    {
      memmove(v11, v12, 8 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v7);
  }
}

void *sub_1C832F0F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_16_1();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v12);
  if (v10)
  {
    if ((result - v11) != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * ((result - v11) / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1C832F1E8(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[104 * a2] <= __dst)
  {
    return memmove(__dst, __src, 104 * a2);
  }

  return __src;
}

void sub_1C832F230(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_5_0(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_15_0();

    MEMORY[0x1EEE6BD00](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_15_0();

    MEMORY[0x1EEE6BCF8](v9);
  }
}

char *sub_1C832F2F4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[32 * a2] <= __dst)
  {
    return memmove(__dst, __src, 32 * a2);
  }

  return __src;
}

uint64_t sub_1C832F340@<X0>(void *a1@<X8>)
{
  v2 = sub_1C840BB2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2F0, &qword_1C84152A0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1C8317A78();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1C840B38C();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_1C840D17C();
    v11 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1C832F540@<X0>(void *a1@<X8>)
{
  v2 = sub_1C840BB2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0, &qword_1C8415D10);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  type metadata accessor for ShortcutIndexedSearchView(0);
  sub_1C8317A78();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1C840B5EC();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_1C840D17C();
    v11 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t ShortcutIndexedSearchView.init(descriptor:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2F0, &qword_1C84152A0);
  OUTLINED_FUNCTION_16();
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for ShortcutIndexedSearchView(0);
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0, &qword_1C8415D10);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + *(v4 + 24)) = a1;
  return result;
}

uint64_t ShortcutIndexedSearchView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2F8, &qword_1C84152E0) - 8;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D300, &qword_1C84152E8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  sub_1C832F9DC(v6);
  v11 = sub_1C832FF88();
  KeyPath = swift_getKeyPath();
  v13 = &v6[*(v3 + 44)];
  *v13 = KeyPath;
  v13[1] = v11;
  sub_1C83303AC(&v25);
  if (v28)
  {
    v23 = v27;
    v24 = v26;
    sub_1C832D574(&v25, &qword_1EC29D318, &qword_1C8415330);
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v14 = sub_1C840BDCC();
  sub_1C832247C();
  v15 = &v10[*(v7 + 36)];
  *v15 = v14;
  v16 = v24;
  *(v15 + 24) = v23;
  *(v15 + 8) = v16;
  v15[40] = 0;
  v17 = sub_1C840C5FC();
  v19 = v18;
  v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D308, &unk_1C8415320) + 36);
  sub_1C83308C4(v1, v20);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D310, &qword_1C8419380) + 36));
  *v21 = v17;
  v21[1] = v19;
  return sub_1C832247C();
}

uint64_t sub_1C832F9DC@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D3D0, &qword_1C8415478);
  MEMORY[0x1EEE9AC00](v36);
  v32 = (&v31 - v2);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5F0, &qword_1C8415980);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v31 - v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D3C0, &qword_1C8415470);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v31 - v4;
  v6 = sub_1C840B38C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  sub_1C832F340((&v31 - v11));
  v13 = *(v7 + 104);
  v13(v9, *MEMORY[0x1E6985BB0], v6);
  v14 = sub_1C840B37C();
  v15 = *(v7 + 8);
  v15(v9, v6);
  v15(v12, v6);
  if ((v14 & 1) != 0 && (sub_1C83303AC(__src), v39))
  {
    memcpy(__dst, __src, sizeof(__dst));
    v43 = v39;
    v16 = sub_1C840BBCC();
    v17 = __dst[5];
    *v5 = v16;
    *(v5 + 1) = v17;
    v5[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D600, &qword_1C8415990);
    sub_1C833121C(v1, __dst, &v5[*(v18 + 44)]);
    v19 = &qword_1EC29D3C0;
    v20 = &qword_1C8415470;
    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    sub_1C83360A8(&unk_1EC29D3B8);
    sub_1C83360A8(&unk_1EC29D3C8);
    v21 = v37;
    sub_1C840BC6C();
    sub_1C832D574(__src, &qword_1EC29D318, &qword_1C8415330);
    v22 = v5;
  }

  else
  {
    sub_1C832F340(v12);
    v13(v9, *MEMORY[0x1E6985BC0], v6);
    v23 = sub_1C840B37C();
    v15(v9, v6);
    v15(v12, v6);
    if ((v23 & 1) == 0)
    {
      v28 = 1;
      v21 = v37;
      goto LABEL_10;
    }

    sub_1C83303AC(v40);
    v21 = v37;
    if (!v41)
    {
      v28 = 1;
      goto LABEL_10;
    }

    memcpy(__dst, v40, sizeof(__dst));
    v43 = v41;
    v24 = sub_1C840BB7C();
    v25 = __dst[5];
    v26 = v32;
    *v32 = v24;
    v26[1] = v25;
    *(v26 + 16) = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5F8, &qword_1C8415988);
    sub_1C83317DC(v1, __dst, v26 + *(v27 + 44));
    v19 = &qword_1EC29D3D0;
    v20 = &qword_1C8415478;
    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    sub_1C83360A8(&unk_1EC29D3B8);
    sub_1C83360A8(&unk_1EC29D3C8);
    sub_1C840BC6C();
    sub_1C832D574(v40, &qword_1EC29D318, &qword_1C8415330);
    v22 = v26;
  }

  sub_1C832D574(v22, v19, v20);
  v28 = 0;
LABEL_10:
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D3B0, &qword_1C8415468);
  return __swift_storeEnumTagSinglePayload(v21, v28, 1, v29);
}

uint64_t sub_1C832FF88()
{
  v1 = sub_1C840B5EC();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v26 - v4;
  v31 = sub_1C840BB2C();
  v5 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2F0, &qword_1C84152A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = sub_1C840B38C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v0;
  sub_1C8317A78();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  else
  {
    sub_1C840D17C();
    v15 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v31);
  }

  v16 = (*(v12 + 88))(v14, v11);
  if (v16 == *MEMORY[0x1E6985BB0])
  {
    return sub_1C840C2CC();
  }

  if (v16 == *MEMORY[0x1E6985BC0])
  {
    v18 = [objc_opt_self() currentDevice];
    v19 = [v18 userInterfaceIdiom];

    if (!v19)
    {
      return sub_1C840C2CC();
    }

    v20 = v26;
    sub_1C832F540(v26);
    v22 = v29;
    v21 = v30;
    v23 = v27;
    (*(v29 + 104))(v27, *MEMORY[0x1E697DBA8], v30);
    v24 = sub_1C840B5DC();
    v25 = *(v22 + 8);
    v25(v23, v21);
    v25(v20, v21);
    if (v24)
    {
      return sub_1C840C2CC();
    }

    return sub_1C840C2AC();
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    return 0;
  }
}

void sub_1C83303AC(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E740, &qword_1C8419950);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_1();
  v48[2] = v7;
  OUTLINED_FUNCTION_17();
  sub_1C840BFEC();
  OUTLINED_FUNCTION_5();
  v48[3] = v9;
  v48[4] = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v48[1] = v11 - v10;
  OUTLINED_FUNCTION_17();
  v48[0] = sub_1C840BB2C();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = &qword_1EC29D2F0;
  v19 = OUTLINED_FUNCTION_15();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v22);
  v24 = (v48 - v23);
  v25 = sub_1C840B38C();
  OUTLINED_FUNCTION_5();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  sub_1C8317A78();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v27 + 32))(v31, v24, v25);
  }

  else
  {
    v18 = *v24;
    sub_1C840D17C();
    v21 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();

    v32 = *(v13 + 8);
    v13 += 8;
    v32(v17, v48[0]);
  }

  v33 = (*(v27 + 88))(v31, v25);
  if (v33 == *MEMORY[0x1E6985BB0])
  {
    v34 = OUTLINED_FUNCTION_9_2();
    v35(v34);
    v36 = sub_1C840BE7C();
    OUTLINED_FUNCTION_12_1(v36);
    sub_1C832D574(v25, &qword_1EC29E740, &qword_1C8419950);
    (v21)[1](v13, v18);
    sub_1C840BF1C();
    v37 = sub_1C840BF6C();

    v38 = xmmword_1C8415240;
    v39 = xmmword_1C8415250;
    v40 = 13.0;
    v41 = 0x402A000000000000;
    v42 = 15.0;
    v43 = 0x4032000000000000;
  }

  else if (v33 == *MEMORY[0x1E6985BC0])
  {
    v44 = [objc_opt_self() mainScreen];
    [v44 bounds];
    OUTLINED_FUNCTION_20();

    v49.origin.x = v1;
    v49.origin.y = v2;
    v49.size.width = v3;
    v49.size.height = v4;
    if (CGRectGetWidth(v49) <= 414.0)
    {
      v42 = 16.0;
    }

    else
    {
      v42 = 20.0;
    }

    v45 = OUTLINED_FUNCTION_9_2();
    v46(v45);
    v47 = sub_1C840BE7C();
    OUTLINED_FUNCTION_12_1(v47);
    sub_1C832D574(v25, &qword_1EC29E740, &qword_1C8419950);
    (v21)[1](v13, v44);
    sub_1C840BF1C();
    v37 = sub_1C840BF6C();

    v43 = 0;
    v38 = xmmword_1C8415220;
    v39 = xmmword_1C8415230;
    v41 = 0x402A000000000000;
    v40 = v42;
  }

  else
  {
    v39 = 0uLL;
    v42 = 0.0;
    if (v33 != *MEMORY[0x1E6985BB8])
    {
      (*(v27 + 8))(v31, v25);
      v39 = 0uLL;
    }

    v43 = 0;
    v41 = 0;
    v37 = 0;
    v40 = 0.0;
    v38 = 0uLL;
  }

  *a1 = v43;
  *(a1 + 8) = v41;
  *(a1 + 16) = v42;
  *(a1 + 24) = v41;
  *(a1 + 32) = v40;
  *(a1 + 40) = v39;
  *(a1 + 56) = v38;
  *(a1 + 72) = v37;
}

uint64_t sub_1C83308C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_1C840B8AC();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v41 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5D8, &unk_1C8415950);
  MEMORY[0x1EEE9AC00](v45);
  v8 = (&v41 - v7);
  v9 = sub_1C840B38C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  sub_1C832F340((&v41 - v14));
  (*(v10 + 104))(v12, *MEMORY[0x1E6985BB0], v9);
  v16 = sub_1C840B37C();
  v17 = *(v10 + 8);
  v17(v12, v9);
  v17(v15, v9);
  if ((v16 & 1) != 0 && (sub_1C83303AC(v47), v47[9]))
  {
    v18 = v47[0];
    v19 = *(v3 + 20);
    v20 = *MEMORY[0x1E697F468];
    v21 = sub_1C840BB8C();
    v22 = v44;
    (*(*(v21 - 8) + 104))(&v44[v19], v20, v21);
    *v22 = v18;
    v22[1] = v18;
    v23 = [*(a1 + *(type metadata accessor for ShortcutIndexedSearchView(0) + 24)) backgroundColor];
    v24 = [v23 paletteGradient];

    sub_1C83356FC();
    v25 = ((*(v42 + 80) + 16) & ~*(v42 + 80)) + v4;
    v26 = swift_allocObject();
    sub_1C8336304();
    *(v26 + v25) = 0;
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0, &qword_1C8415D10);
    swift_storeEnumTagMultiPayload();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E7D0, &unk_1C8417890);
    v28 = v27[9];
    *(v8 + v28) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5A0, &qword_1C8415910);
    swift_storeEnumTagMultiPayload();
    *(v8 + v27[10]) = v24;
    v29 = (v8 + v27[11]);
    *v29 = sub_1C833635C;
    v29[1] = v26;
    v30 = v24;
    Gradient.init(_:)(v30);
    sub_1C840B78C();
    v31 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E7E0, &unk_1C8415960) + 36);
    v32 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5E0, &unk_1C8417920) + 36)];
    sub_1C83356FC();
    *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E7F0, &unk_1C8415970) + 36)] = 256;
    v33 = v49;
    *v31 = v48;
    *(v31 + 1) = v33;
    *(v31 + 4) = v50;
    v34 = sub_1C840C5FC();
    v36 = v35;

    sub_1C832D574(v47, &qword_1EC29D318, &qword_1C8415330);
    sub_1C83363F4(v22, MEMORY[0x1E697EAF0]);
    v37 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5E8, &unk_1C8419AD0) + 36)];
    *v37 = v34;
    v37[1] = v36;
    v38 = v46;
    sub_1C832247C();
    v39 = 0;
  }

  else
  {
    v39 = 1;
    v38 = v46;
  }

  return __swift_storeEnumTagSinglePayload(v38, v39, 1, v45);
}

uint64_t sub_1C8330E2C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0, &qword_1C8415D10);
  swift_storeEnumTagMultiPayload();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D598, &unk_1C8419BE0);
  v8 = v7[9];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5A0, &qword_1C8415910);
  swift_storeEnumTagMultiPayload();
  *(a3 + v7[10]) = a1;
  v9 = (a3 + v7[11]);
  *v9 = sub_1C83362AC;
  v9[1] = v6;
  Gradient.init(_:)(a1);
  sub_1C840B78C();
  v10 = sub_1C840C5FC();
  v12 = v11;
  *&v18 = v17;
  WORD4(v18) = 256;
  *&v19 = v10;
  *(&v19 + 1) = v11;
  v13 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5A8, &qword_1C8415918) + 36));
  *v13 = v15;
  v13[1] = v16;
  v13[2] = v18;
  v13[3] = v19;
  v20[0] = v15;
  v20[1] = v16;
  v21 = v17;
  v22 = 256;
  v23 = v10;
  v24 = v12;

  sub_1C8317A78();
  sub_1C832D574(v20, &qword_1EC29D5B0, &unk_1C8415920);
}

uint64_t sub_1C8331024@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0, &qword_1C8415D10);
  swift_storeEnumTagMultiPayload();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5C0, &qword_1C8415938);
  v8 = v7[9];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5A0, &qword_1C8415910);
  swift_storeEnumTagMultiPayload();
  *(a3 + v7[10]) = a1;
  v9 = (a3 + v7[11]);
  *v9 = sub_1C833662C;
  v9[1] = v6;
  Gradient.init(_:)(a1);
  sub_1C840B78C();
  v10 = sub_1C840C5FC();
  v12 = v11;
  *&v18 = v17;
  WORD4(v18) = 256;
  *&v19 = v10;
  *(&v19 + 1) = v11;
  v13 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5C8, &unk_1C8415940) + 36));
  *v13 = v15;
  v13[1] = v16;
  v13[2] = v18;
  v13[3] = v19;
  v20[0] = v15;
  v20[1] = v16;
  v21 = v17;
  v22 = 256;
  v23 = v10;
  v24 = v12;

  sub_1C8317A78();
  sub_1C832D574(v20, &qword_1EC29D5D0, &qword_1C84178C0);
}

uint64_t sub_1C833121C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D608, &qword_1C8415998);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  *v10 = sub_1C840BB7C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D610, &qword_1C84159A0);
  sub_1C83314DC(a1, a2, &v10[*(v11 + 44)]);
  v12 = [*(a1 + *(type metadata accessor for ShortcutIndexedSearchView(0) + 24)) name];
  v13 = sub_1C840CDDC();
  v15 = v14;

  v39[0] = v13;
  v39[1] = v15;
  sub_1C833644C();
  v16 = sub_1C840C08C();
  v18 = v17;
  v20 = v19;
  sub_1C83303AC(v39);
  v21 = sub_1C840C07C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1C832D574(v39, &qword_1EC29D318, &qword_1C8415330);
  sub_1C832D564(v16, v18, v20 & 1);

  KeyPath = swift_getKeyPath();
  v38 = v25 & 1;
  v37 = 0;
  v35 = v7;
  sub_1C8317A78();
  v29 = v37;
  v30 = v38;
  v31 = v36;
  sub_1C8317A78();
  v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D618, &qword_1C84159D8) + 48);
  *v32 = v21;
  *(v32 + 8) = v23;
  *(v32 + 16) = v30;
  *(v32 + 24) = v27;
  *(v32 + 32) = KeyPath;
  *(v32 + 40) = 2;
  *(v32 + 48) = v29;
  *(v32 + 56) = 0x3FF0000000000000;
  sub_1C832D510(v21, v23, v30 & 1);

  sub_1C832D574(v10, &qword_1EC29D608, &qword_1C8415998);
  sub_1C832D564(v21, v23, v30 & 1);

  return sub_1C832D574(v35, &qword_1EC29D608, &qword_1C8415998);
}

uint64_t sub_1C83314DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = type metadata accessor for ShortcutIndexedSearchView.DeepLinkButton(0);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v26 - v10);
  v12 = type metadata accessor for ShortcutIndexedSearchView.BadgedIconView(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v26 - v17);
  v19 = *(a1 + *(type metadata accessor for ShortcutIndexedSearchView(0) + 24));
  v29 = *(a2 + 56);
  *v18 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2F0, &qword_1C84152A0);
  swift_storeEnumTagMultiPayload();
  *(v18 + *(v13 + 28)) = v19;
  *(v18 + *(v13 + 32)) = v29;
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E8F0, &unk_1C84164E0);
  swift_storeEnumTagMultiPayload();
  v20 = v6[7];
  *(v11 + v20) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v11 + v6[8]) = v19;
  v21 = a2;
  memcpy(v11 + v6[9], a2, 0x50uLL);
  sub_1C83356FC();
  sub_1C83356FC();
  v22 = v27;
  sub_1C83356FC();
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D620, &qword_1C8415A10) + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_1C83356FC();
  v24 = v19;
  sub_1C83364A0(v21, v28);
  sub_1C83363F4(v11, type metadata accessor for ShortcutIndexedSearchView.DeepLinkButton);
  sub_1C83363F4(v18, type metadata accessor for ShortcutIndexedSearchView.BadgedIconView);
  sub_1C83363F4(v8, type metadata accessor for ShortcutIndexedSearchView.DeepLinkButton);
  return sub_1C83363F4(v15, type metadata accessor for ShortcutIndexedSearchView.BadgedIconView);
}

uint64_t sub_1C83317DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v52 = a3;
  v5 = type metadata accessor for ShortcutIndexedSearchView.DeepLinkButton(0);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v43 - v9);
  v11 = type metadata accessor for ShortcutIndexedSearchView.BadgedIconView(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v43 - v15);
  v17 = *(a1 + *(type metadata accessor for ShortcutIndexedSearchView(0) + 24));
  v58 = *(a2 + 56);
  *v16 = swift_getKeyPath();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2F0, &qword_1C84152A0);
  swift_storeEnumTagMultiPayload();
  *(v16 + *(v12 + 28)) = v17;
  *(v16 + *(v12 + 32)) = v58;
  v45 = v16;
  v18 = v17;
  v19 = [v18 name];
  v20 = sub_1C840CDDC();
  v22 = v21;

  v57[0] = v20;
  v57[1] = v22;
  sub_1C833644C();
  v23 = sub_1C840C08C();
  v25 = v24;
  v27 = v26;
  sub_1C83303AC(v57);
  v47 = sub_1C840C07C();
  v46 = v28;
  LOBYTE(a1) = v29;
  v48 = v30;
  sub_1C832D574(v57, &qword_1EC29D318, &qword_1C8415330);
  sub_1C832D564(v23, v25, v27 & 1);

  KeyPath = swift_getKeyPath();
  v56 = a1 & 1;
  v55 = 0;
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E8F0, &unk_1C84164E0);
  swift_storeEnumTagMultiPayload();
  v31 = v6[7];
  *(v10 + v31) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v10 + v6[8]) = v18;
  v32 = v50;
  memcpy(v10 + v6[9], v50, 0x50uLL);
  sub_1C83356FC();
  LOBYTE(v25) = v55;
  LOBYTE(v18) = v56;
  v33 = v51;
  sub_1C83356FC();
  v34 = v52;
  sub_1C83356FC();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D628, &qword_1C8415A18);
  v36 = v34;
  v37 = v34 + *(v35 + 48);
  v38 = v47;
  v39 = v46;
  *v37 = v47;
  *(v37 + 8) = v39;
  *(v37 + 16) = v18;
  v40 = KeyPath;
  *(v37 + 24) = v48;
  *(v37 + 32) = v40;
  *(v37 + 40) = 2;
  *(v37 + 48) = v25;
  *(v37 + 56) = 0x3FF0000000000000;
  v41 = v36 + *(v35 + 64);
  *v41 = 0;
  *(v41 + 8) = 1;
  sub_1C83356FC();
  sub_1C83364A0(v32, v54);
  sub_1C832D510(v38, v39, v18 & 1);

  sub_1C83363F4(v10, type metadata accessor for ShortcutIndexedSearchView.DeepLinkButton);
  sub_1C83363F4(v45, type metadata accessor for ShortcutIndexedSearchView.BadgedIconView);
  sub_1C83363F4(v33, type metadata accessor for ShortcutIndexedSearchView.DeepLinkButton);
  sub_1C832D564(v38, v39, v18 & 1);

  return sub_1C83363F4(v53, type metadata accessor for ShortcutIndexedSearchView.BadgedIconView);
}

uint64_t ShortcutIndexedSearchView.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D320, &qword_1C8415338);
  OUTLINED_FUNCTION_5();
  v22 = v4;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for ShortcutIndexedSearchView(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = (v11 - v10);
  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2F0, &qword_1C84152A0);
  swift_storeEnumTagMultiPayload();
  v13 = *(v8 + 20);
  *(v12 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0, &qword_1C8415D10);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8334944();
  sub_1C840D7EC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1C832D574(v12, &qword_1EC29D330, &unk_1C8415340);
    return sub_1C832D574(v12 + v13, &qword_1EC29E700, &unk_1C8415A30);
  }

  else
  {
    v20 = v8;
    v14 = v22;
    sub_1C8334998();
    sub_1C840D5CC();
    v16 = v23;
    v15 = v24;
    sub_1C8312180(0, &qword_1EC29D340, 0x1E696ACD0);
    sub_1C8312180(0, &qword_1EC29C898, 0x1E69E0DF0);
    result = sub_1C840D1BC();
    v18 = result;
    if (result)
    {
      (*(v14 + 8))(v7, v25);
      sub_1C8315128(v16, v15);
      *(v12 + *(v20 + 24)) = v18;
      sub_1C83356FC();
      __swift_destroy_boxed_opaque_existential_1(a1);
      return sub_1C83363F4(v12, type metadata accessor for ShortcutIndexedSearchView);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t ShortcutIndexedSearchView.encode(to:)(void *a1)
{
  v2 = v1;
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D348, &qword_1C8415350);
  OUTLINED_FUNCTION_5();
  v6 = v5;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-1] - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8334944();
  sub_1C840D7FC();
  v10 = objc_opt_self();
  v11 = *(v2 + *(type metadata accessor for ShortcutIndexedSearchView(0) + 24));
  v20[0] = 0;
  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v20];
  v13 = v20[0];
  if (v12)
  {
    v14 = sub_1C840B17C();
    v16 = v15;

    v20[0] = v14;
    v20[1] = v16;
    sub_1C83349EC();
    sub_1C840D64C();
    (*(v6 + 8))(v9, v4);
    return sub_1C8315128(v14, v16);
  }

  else
  {
    v18 = v13;
    sub_1C840B0EC();

    swift_willThrow();
    return (*(v6 + 8))(v9, v4);
  }
}

BOOL sub_1C833221C()
{
  v0 = sub_1C840D54C();

  return v0 != 0;
}

BOOL sub_1C8332278@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1C833221C();
  *a1 = result;
  return result;
}

BOOL sub_1C83322E8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1C833221C();
  *a1 = result;
  return result;
}

uint64_t sub_1C8332320(uint64_t a1)
{
  v2 = sub_1C8334944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C833235C(uint64_t a1)
{
  v2 = sub_1C8334944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8332398()
{
  v19[1] = *MEMORY[0x1E69E9840];
  v1 = [objc_opt_self() standardClient];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC29EB80, &unk_1C8416660);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C8415260;
  v3 = type metadata accessor for ShortcutIndexedSearchView.BadgedIconView(0);
  v4 = [*(v0 + *(v3 + 20)) glyphCharacter];
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  sub_1C8312180(0, &qword_1EC29D5B8, 0x1E696AD98);
  v5 = sub_1C840CFCC();

  v6 = *(v0 + *(v3 + 24));
  v19[0] = 0;
  v7 = [v1 drawGlyphs:v5 atSize:0 withBackgroundColorValues:v19 error:{v6, v6}];

  v8 = v19[0];
  if (!v7)
  {
    v16 = v19[0];
    v17 = sub_1C840B0EC();

    swift_willThrow();
    return 0;
  }

  v9 = sub_1C840CFDC();
  v10 = v8;

  v11 = sub_1C8332614(v9);

  if (!v11)
  {
    return v11;
  }

  if (!sub_1C836DAB4())
  {

    return 0;
  }

  sub_1C83A8658();
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1CCA75DF0](0, v11);
  }

  else
  {
    v12 = *(v11 + 32);
  }

  v13 = v12;

  v14 = [objc_opt_self() imageWithCGImage_];
  v15 = [v14 platformImage];
  v11 = _s7SwiftUI5ImageV18WorkflowUIServicesE08platformC0ACSo7UIImageC_tcfC_0();

  return v11;
}

uint64_t sub_1C8332614(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1C840D46C();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_1C830E4A4(v3, v5);
    type metadata accessor for CGImage(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1C840D44C();
    sub_1C840D47C();
    sub_1C840D48C();
    sub_1C840D45C();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1C8332700@<X0>(uint64_t a1@<X8>)
{
  v6 = v1;
  v143 = a1;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E7A0, &qword_1C84157F0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_1();
  v130 = v8;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D4D0, &qword_1C84157F8);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_1();
  v134 = v10;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D4D8, &qword_1C8415800);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10_1();
  v131 = v12;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D4E0, &qword_1C8415808);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_10_1();
  v136 = v14;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D4E8, &qword_1C8415810);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_10_1();
  v141 = v16;
  OUTLINED_FUNCTION_17();
  sub_1C840C3EC();
  OUTLINED_FUNCTION_5();
  v138 = v18;
  v139 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v137 = v20 - v19;
  OUTLINED_FUNCTION_17();
  v21 = sub_1C840B38C();
  OUTLINED_FUNCTION_5();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v130 - v28;
  sub_1C8344870((&v130 - v28));
  v30 = *(v23 + 104);
  v30(v26, *MEMORY[0x1E6985BB0], v21);
  v31 = sub_1C840B37C();
  v32 = *(v23 + 8);
  v32(v26, v21);
  v32(v29, v21);
  if (v31)
  {
    v33 = type metadata accessor for ShortcutIndexedSearchView.BadgedIconView(0);
    v34 = [*(v6 + *(v33 + 20)) associatedAppBundleIdentifier];
    if (v34)
    {
      v35 = v34;
      v36 = sub_1C840CDDC();
      v38 = v37;

      v39 = [objc_opt_self() sharedResolver];
      v40 = objc_allocWithZone(MEMORY[0x1E696E720]);
      v41 = sub_1C833488C(v36, v38);
      v42 = [v39 resolvedAppMatchingDescriptor_];

      if (v42)
      {
        if ([v42 isInstalled])
        {
          v43 = sub_1C8336198(v42);
          if (v44)
          {
            v45 = v43;
            v46 = v44;
            v47 = *(v6 + *(v33 + 24));
            sub_1C8312180(0, &unk_1ED7EE930, 0x1E69E0960);
            v48 = sub_1C833350C(v45, v46);
            *&v148 = swift_getKeyPath();
            BYTE8(v148) = 0;
            KeyPath = swift_getKeyPath();
            v150 = 0;
            v153[0] = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E7B0, &qword_1C84158C0);
            OUTLINED_FUNCTION_23();
            sub_1C840C50C();
            v151 = v159;
            v144 = v48;
            v145 = v47;
            v146 = 0;
            v147 = 97;
            v152 = 0;
            sub_1C83361FC(&v144, v153);
            v158 = 0;
            v49 = OUTLINED_FUNCTION_15();
            __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
            sub_1C831CABC();
            OUTLINED_FUNCTION_8_3();
            sub_1C8336048(v51);
            OUTLINED_FUNCTION_23();
            sub_1C840BC6C();

            sub_1C8336258(&v144);
LABEL_18:
            OUTLINED_FUNCTION_28(&v159);
            swift_storeEnumTagMultiPayload();
            v77 = OUTLINED_FUNCTION_15();
            __swift_instantiateConcreteTypeFromMangledNameV2(v77, v78);
            OUTLINED_FUNCTION_5_1();
            OUTLINED_FUNCTION_8_3();
            sub_1C83364D8(v79);
            OUTLINED_FUNCTION_4_0();
            sub_1C83364D8(v80);
            v81 = v143;
            sub_1C840BC6C();
            OUTLINED_FUNCTION_8_3();
            sub_1C832D574(v82, v83, v84);
            v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D4F0, &qword_1C8415818);
            v71 = v81;
LABEL_28:
            v72 = 0;
            return __swift_storeEnumTagSinglePayload(v71, v72, 1, v70);
          }
        }
      }
    }

    if (sub_1C8332398())
    {
      v74 = v137;
      v73 = v138;
      v75 = v139;
      (*(v138 + 104))(v137, *MEMORY[0x1E6981630], v139);
      OUTLINED_FUNCTION_21_0();
      v76 = sub_1C840C46C();
      (*(v73 + 8))(v74, v75);
      sub_1C840C5FC();
      sub_1C840B69C();
      v153[0] = v76;
      v153[1] = v144;
      v154 = v145;
      v155 = v146;
      v156 = v147;
      v157 = v148;
      v158 = 1;
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D520, &qword_1C8415838);
      sub_1C831CABC();
      sub_1C8336048(&qword_1EC29CA70);
      OUTLINED_FUNCTION_23();
      sub_1C840BC6C();
    }

    else
    {
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v159 = 0u;
      v166 = -256;
    }

    goto LABEL_18;
  }

  sub_1C8344870(v29);
  v30(v26, *MEMORY[0x1E6985BC0], v21);
  v52 = sub_1C840B37C();
  v32(v26, v21);
  v32(v29, v21);
  if (v52)
  {
    v53 = type metadata accessor for ShortcutIndexedSearchView.BadgedIconView(0);
    v54 = *(v6 + *(v53 + 20));
    v55 = [v54 associatedAppBundleIdentifier];
    if (v55)
    {
      v56 = v55;
      v57 = sub_1C840CDDC();
      v59 = v58;

      v60 = [objc_opt_self() sharedResolver];
      v61 = objc_allocWithZone(MEMORY[0x1E696E720]);
      v62 = sub_1C833488C(v57, v59);
      v63 = [v60 resolvedAppMatchingDescriptor_];

      v64 = v136;
      if (v63)
      {
        if ([v63 isInstalled])
        {
          v65 = sub_1C8336198(v63);
          if (v66)
          {
            v67 = v65;
            v68 = v66;
            sub_1C8312180(0, &unk_1ED7EE930, 0x1E69E0960);
            v69 = sub_1C833350C(v67, v68);

            goto LABEL_22;
          }
        }
      }

      v69 = 0;
    }

    else
    {
      v69 = 0;
      v64 = v136;
    }

LABEL_22:
    if (sub_1C8332398())
    {
      v86 = v137;
      v85 = v138;
      v87 = v54;
      v88 = v139;
      (*(v138 + 104))(v137, *MEMORY[0x1E6981630], v139);
      OUTLINED_FUNCTION_21_0();
      v130 = sub_1C840C46C();
      (*(v85 + 8))(v86, v88);
      LODWORD(v139) = sub_1C840BDCC();
      sub_1C840B57C();
      OUTLINED_FUNCTION_20();
      sub_1C840C5FC();
      sub_1C840B69C();
      LOBYTE(v153[0]) = 0;
      *(v167 + 7) = v159;
      *(&v167[1] + 7) = v160;
      *(&v167[2] + 7) = v161;
      v89 = sub_1C840C5FC();
      v138 = v6;
      v91 = v90;
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D548, &qword_1C8415840);
      v93 = v131;
      v94 = v69;
      v95 = (v131 + *(v92 + 36));
      v96 = [v87 backgroundColor];
      v97 = [v96 paletteGradient];

      sub_1C8330E2C(v97, 0, v95);
      v98 = (v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D590, &qword_1C84158C8) + 36));
      *v98 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2F0, &qword_1C84152A0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for SpotlightUiShadow(0);
      OUTLINED_FUNCTION_25_0();
      *(v98 + v99) = v100;
      *(v98 + *(v101 + 24)) = 0x4020000000000000;
      v102 = (v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D578, &qword_1C8415858) + 36));
      v69 = v94;
      *v102 = v89;
      v102[1] = v91;
      *v93 = v130;
      *(v93 + 8) = v139;
      *(v93 + 16) = v2;
      *(v93 + 24) = v3;
      *(v93 + 32) = v4;
      *(v93 + 40) = v5;
      *(v93 + 48) = 0;
      *(v93 + 96) = *(&v167[2] + 15);
      v103 = v167[1];
      *(v93 + 81) = v167[2];
      v104 = v167[0];
      v64 = v136;
      *(v93 + 65) = v103;
      *(v93 + 49) = v104;
      v105 = sub_1C840C5FC();
      v107 = v106;
      v108 = v93 + *(v133 + 36);
      sub_1C8333580(v94, v138, v108);
      v109 = (v108 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D588, &qword_1C8415860) + 36));
      *v109 = v105;
      v109[1] = v107;
      sub_1C8317A78();
      swift_storeEnumTagMultiPayload();
      sub_1C8335E2C();
      sub_1C83360DC();
      sub_1C840BC6C();

      v110 = v93;
      v111 = &qword_1EC29D4D8;
      v112 = &qword_1C8415800;
    }

    else
    {
      if (!v69)
      {
        v121 = 1;
        goto LABEL_27;
      }

      v113 = *(v6 + *(v53 + 24));
      v114 = swift_getKeyPath();
      v115 = v130;
      *(v130 + 32) = v114;
      *(v115 + 40) = 0;
      *(v115 + 48) = swift_getKeyPath();
      *(v115 + 88) = 0;
      v153[0] = 0;
      v116 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E7B0, &qword_1C84158C0);
      OUTLINED_FUNCTION_23();
      sub_1C840C50C();
      *(v115 + 96) = v159;
      *v115 = v116;
      *(v115 + 8) = v113;
      *(v115 + 16) = 0;
      *(v115 + 24) = 97;
      *(v115 + 112) = 0;
      v117 = (v115 + *(v135 + 36));
      *v117 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2F0, &qword_1C84152A0);
      OUTLINED_FUNCTION_16();
      swift_storeEnumTagMultiPayload();
      type metadata accessor for SpotlightUiShadow(0);
      OUTLINED_FUNCTION_25_0();
      *(v117 + v118) = v119;
      *(v117 + *(v120 + 24)) = 0x4020000000000000;
      sub_1C8317A78();
      swift_storeEnumTagMultiPayload();
      sub_1C8335E2C();
      sub_1C83360DC();
      sub_1C840BC6C();
      OUTLINED_FUNCTION_8_3();
    }

    sub_1C832D574(v110, v111, v112);
    v121 = 0;
LABEL_27:
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D4F8, &qword_1C8415820);
    __swift_storeEnumTagSinglePayload(v64, v121, 1, v122);
    OUTLINED_FUNCTION_28(v64);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D500, &qword_1C8415828);
    OUTLINED_FUNCTION_5_1();
    sub_1C83364D8(v123);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_8_3();
    sub_1C83364D8(v124);
    v125 = v143;
    sub_1C840BC6C();

    OUTLINED_FUNCTION_8_3();
    sub_1C832D574(v126, v127, v128);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D4F0, &qword_1C8415818);
    v71 = v125;
    goto LABEL_28;
  }

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D4F0, &qword_1C8415818);
  v71 = v143;
  v72 = 1;
  return __swift_storeEnumTagSinglePayload(v71, v72, 1, v70);
}

id sub_1C833350C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C840CD9C();

  v4 = [v2 initWithBundleIdentifier_];

  return v4;
}

uint64_t sub_1C8333580@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E780, &unk_1C84158D0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - v7;
  if (a1)
  {
    v9 = (a2 + *(type metadata accessor for ShortcutIndexedSearchView.BadgedIconView(0) + 24));
    v10 = v9[1];
    v11 = *v9 + v10 * -0.5 + 3.0;
    KeyPath = swift_getKeyPath();
    v21 = 0;
    v22 = swift_getKeyPath();
    v23 = 0;
    v16[1] = 0;
    v12 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E7B0, &qword_1C84158C0);
    sub_1C840C50C();
    v24 = v17;
    v18[0] = v12;
    *&v18[1] = v10;
    v18[2] = 0;
    v19 = 97;
    v25 = 0;
    if (qword_1EC29CD08 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for SpotlightUiShadow(0);
    __swift_project_value_buffer(v13, qword_1EC29CD10);
    sub_1C83361FC(v18, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E7A0, &qword_1C84157F0);
    sub_1C83356FC();
    sub_1C8336258(v18);
    v14 = &v8[*(v6 + 36)];
    *v14 = v11;
    v14[1] = v11;
    sub_1C832247C();
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  }
}

uint64_t sub_1C8333840@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  sub_1C840BC8C();
  OUTLINED_FUNCTION_5();
  v37 = v2;
  v38 = v3;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v36 = v5 - v4;
  OUTLINED_FUNCTION_17();
  sub_1C840B88C();
  OUTLINED_FUNCTION_5();
  v34 = v6;
  v35 = v7;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = type metadata accessor for ShortcutIndexedSearchView.DeepLinkButton(0);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D420, &qword_1C8415738);
  OUTLINED_FUNCTION_5();
  v15 = v14;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D428, &unk_1C8415740);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  OUTLINED_FUNCTION_15();
  sub_1C83356FC();
  swift_allocObject();
  sub_1C8336304();
  v40 = v1;
  v23 = OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_8_3();
  sub_1C83364D8(v25);
  sub_1C840C53C();
  sub_1C840B87C();
  sub_1C83360A8(&unk_1EC29D488);
  sub_1C8334AD0(&unk_1EC29D490);
  v26 = v34;
  sub_1C840C0EC();
  (*(v35 + 8))(v10, v26);
  (*(v15 + 8))(v18, v13);
  v27 = &v22[*(v19 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D498, &qword_1C8415798);
  sub_1C840B8FC();
  sub_1C840C66C();
  *v27 = vdupq_n_s64(0x3FEB333333333333uLL);
  v27[1].i64[0] = v28;
  v27[1].i64[1] = v29;
  v27[2].i8[0] = 0;
  v30 = v36;
  sub_1C840B93C();
  sub_1C8335B28();
  OUTLINED_FUNCTION_6_2();
  sub_1C8334AD0(v31);
  v32 = v37;
  sub_1C840C10C();
  (*(v38 + 8))(v30, v32);
  return sub_1C8326580(v22);
}

uint64_t sub_1C8333CDC()
{
  v17 = sub_1C840B71C();
  v1 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D4C8, &qword_1C84157E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1C840B13C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1C840D3DC();

  v18 = 0xD00000000000001FLL;
  v19 = 0x80000001C841EC30;
  v11 = [*(v0 + *(type metadata accessor for ShortcutIndexedSearchView.DeepLinkButton(0) + 24)) name];
  v12 = sub_1C840CDDC();
  v14 = v13;

  MEMORY[0x1CCA75890](v12, v14);

  sub_1C840B12C();

  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_1C832D574(v6, &qword_1EC29D4C8, &qword_1C84157E8);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_1C8344A8C(v3);
  sub_1C840B70C();
  (*(v1 + 8))(v3, v17);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1C8333F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E8B0, &unk_1C8415780);
  MEMORY[0x1EEE9AC00](v43);
  v41 = (&v41 - v3);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D4B8, &unk_1C84157A0);
  MEMORY[0x1EEE9AC00](v44);
  v45 = (&v41 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E740, &qword_1C8419950);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D4C0, &qword_1C84157B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - v8;
  v10 = sub_1C840B38C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v46 = type metadata accessor for ShortcutIndexedSearchView.DeepLinkButton(0);
  v47 = a1;
  sub_1C8344870(v16);
  v17 = *(v11 + 104);
  v17(v13, *MEMORY[0x1E6985BB0], v10);
  LOBYTE(a1) = sub_1C840B37C();
  v18 = *(v11 + 8);
  v18(v13, v10);
  v18(v16, v10);
  if (a1)
  {
    sub_1C840C3DC();
    sub_1C840BBFC();
    v19 = sub_1C840BC2C();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v19);
    v20 = sub_1C840C43C();

    sub_1C832D574(v9, &qword_1EC29D4C0, &qword_1C84157B0);
    sub_1C840C2CC();
    v21 = sub_1C840C2DC();

    v22 = sub_1C840C2CC();
    v23 = sub_1C840BE7C();
    v24 = v42;
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v23);
    v25 = sub_1C840BF2C();
    sub_1C832D574(v24, &qword_1EC29E740, &qword_1C8419950);
    KeyPath = swift_getKeyPath();
    v27 = v45;
    *v45 = v20;
    v27[1] = v21;
    v27[2] = v22;
    v27[3] = KeyPath;
    v27[4] = v25;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D458, &qword_1C8415760);
    sub_1C8335844();
    sub_1C83359B4();
    v28 = v48;
    sub_1C840BC6C();
  }

  else
  {
    v29 = v46;
    v30 = v47;
    sub_1C8344870(v16);
    v17(v13, *MEMORY[0x1E6985BC0], v10);
    v31 = sub_1C840B37C();
    v18(v13, v10);
    v18(v16, v10);
    if ((v31 & 1) == 0)
    {
      v38 = 1;
      v28 = v48;
      goto LABEL_7;
    }

    v32 = *(v30 + *(v29 + 28) + 48);
    v33 = swift_getKeyPath();
    v34 = v41;
    *v41 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0, &qword_1C8415D10);
    swift_storeEnumTagMultiPayload();
    *(v34 + *(type metadata accessor for SizedEllipsis(0) + 20)) = v32;
    sub_1C840C61C();
    sub_1C840B69C();
    v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E8C0, &qword_1C8419B40) + 36));
    v36 = v50;
    *v35 = v49;
    v35[1] = v36;
    v35[2] = v51;
    v37 = (v34 + *(v43 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E8A0, &qword_1C8415790);
    sub_1C840B90C();
    *v37 = 0;
    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D458, &qword_1C8415760);
    sub_1C8335844();
    sub_1C83359B4();
    v28 = v48;
    sub_1C840BC6C();
    sub_1C832D574(v34, &unk_1EC29E8B0, &unk_1C8415780);
  }

  v38 = 0;
LABEL_7:
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D448, &qword_1C8415758);
  return __swift_storeEnumTagSinglePayload(v28, v38, 1, v39);
}

uint64_t sub_1C83345E0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_14();
  if ((sub_1C840B56C() & 1) == 0 || *(v3 + 40) != *(v2 + 40) || *(v3 + 48) != *(v2 + 48) || *(v3 + 56) != *(v2 + 56) || *(v3 + 64) != *(v2 + 64))
  {
    return 0;
  }

  v4 = *(v3 + 72);
  v5 = *(v2 + 72);

  return MEMORY[0x1EEDE2BF0](v4, v5);
}

uint64_t sub_1C83346F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_2();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1C83347B4@<X0>(void *a1@<X0>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v5 = sub_1C840C2BC();
  }

  else
  {
    v6 = [a1 platformColor];
    v5 = sub_1C840C26C();
  }

  v7 = v5;
  sub_1C83356FC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E800, &qword_1C8415930);
  *(a4 + *(result + 52)) = v7;
  *(a4 + *(result + 56)) = 256;
  return result;
}

uint64_t sub_1C8334850(void *a1, char a2)
{
  if (a2)
  {
    return sub_1C840C2BC();
  }

  v3 = [a1 platformColor];
  return sub_1C840C26C();
}

id sub_1C833488C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C840CD9C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithBundleIdentifier_];

  return v4;
}

uint64_t sub_1C83348F0()
{
  OUTLINED_FUNCTION_22_0();
  result = sub_1C840BA2C();
  *v0 = result;
  return result;
}

unint64_t sub_1C8334944()
{
  result = qword_1EC29D328;
  if (!qword_1EC29D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D328);
  }

  return result;
}

unint64_t sub_1C8334998()
{
  result = qword_1EC29D338;
  if (!qword_1EC29D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D338);
  }

  return result;
}

unint64_t sub_1C83349EC()
{
  result = qword_1EC29D350;
  if (!qword_1EC29D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D350);
  }

  return result;
}

unint64_t sub_1C8334AD0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_16();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1C8334B9C(uint64_t a1)
{
  sub_1C833545C(319, &unk_1EC29CAE0, MEMORY[0x1E6985BC8]);
  if (v1 <= 0x3F)
  {
    sub_1C833545C(319, &qword_1EC29CE38, MEMORY[0x1E697DBD0]);
    if (v2 <= 0x3F)
    {
      sub_1C8312180(319, &qword_1EC29C898, 0x1E69E0DF0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1C8334C80()
{
  result = qword_1EC29D380;
  if (!qword_1EC29D380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D308, &unk_1C8415320);
    sub_1C8334D38();
    sub_1C83360A8(&unk_1EC29C960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D380);
  }

  return result;
}

unint64_t sub_1C8334D38()
{
  result = qword_1EC29D388;
  if (!qword_1EC29D388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D300, &qword_1C84152E8);
    sub_1C8334DC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D388);
  }

  return result;
}

unint64_t sub_1C8334DC4()
{
  result = qword_1EC29D390;
  if (!qword_1EC29D390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D2F8, &qword_1C84152E0);
    sub_1C83364D8(&unk_1EC29D398);
    sub_1C83360A8(&qword_1ED7EE960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D390);
  }

  return result;
}

unint64_t sub_1C8334EA8()
{
  result = qword_1EC29D3A8;
  if (!qword_1EC29D3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D3B0, &qword_1C8415468);
    sub_1C83360A8(&unk_1EC29D3B8);
    sub_1C83360A8(&unk_1EC29D3C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D3A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShortcutIndexedSearchView.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for ShortcutIndexedSearchView.CodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C8335090(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C83350D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_11();
  if (*(v13 + 84) == a2)
  {
    v14 = v12;
    v15 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    OUTLINED_FUNCTION_11();
    if (*(v17 + 84) != a2)
    {
      return OUTLINED_FUNCTION_19(*(a1 + *(a3 + 24)));
    }

    v14 = v16;
    v15 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v15, a2, v14);
}

void __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  OUTLINED_FUNCTION_27_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_11();
  if (*(v17 + 84) == v11)
  {
    v18 = v16;
    v19 = v9;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    OUTLINED_FUNCTION_11();
    if (*(v21 + 84) != v11)
    {
      *(v9 + *(v10 + 24)) = (v8 - 1);
      return;
    }

    v18 = v20;
    v19 = v9 + *(v10 + 20);
  }

  __swift_storeEnumTagSinglePayload(v19, v8, v8, v18);
}

void sub_1C8335370(uint64_t a1)
{
  sub_1C833545C(319, &qword_1EC29CAD0, MEMORY[0x1E697E178]);
  if (v1 <= 0x3F)
  {
    sub_1C833545C(319, &unk_1EC29CAE0, MEMORY[0x1E6985BC8]);
    if (v2 <= 0x3F)
    {
      sub_1C8312180(319, &qword_1EC29C898, 0x1E69E0DF0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C833545C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_16();
    v4 = sub_1C840B60C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C83354F4(uint64_t a1)
{
  sub_1C833545C(319, &unk_1EC29CAE0, MEMORY[0x1E6985BC8]);
  if (v1 <= 0x3F)
  {
    sub_1C8312180(319, &qword_1EC29C898, 0x1E69E0DF0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C83355F8()
{
  result = qword_1EC29D408;
  if (!qword_1EC29D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D408);
  }

  return result;
}

unint64_t sub_1C8335650()
{
  result = qword_1EC29D410;
  if (!qword_1EC29D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D410);
  }

  return result;
}

unint64_t sub_1C83356A8()
{
  result = qword_1EC29D418;
  if (!qword_1EC29D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D418);
  }

  return result;
}

uint64_t sub_1C83356FC()
{
  OUTLINED_FUNCTION_14();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_12();
  v3(v2);
  return v0;
}

unint64_t sub_1C83357B8()
{
  result = qword_1EC29D440;
  if (!qword_1EC29D440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D448, &qword_1C8415758);
    sub_1C8335844();
    sub_1C83359B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D440);
  }

  return result;
}

unint64_t sub_1C8335844()
{
  result = qword_1EC29D450;
  if (!qword_1EC29D450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D458, &qword_1C8415760);
    sub_1C83358FC();
    sub_1C83360A8(&qword_1ED7EE968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D450);
  }

  return result;
}

unint64_t sub_1C83358FC()
{
  result = qword_1EC29D460;
  if (!qword_1EC29D460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D468, &qword_1C8415768);
    sub_1C83360A8(&qword_1EC29D470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D460);
  }

  return result;
}

unint64_t sub_1C83359B4()
{
  result = qword_1EC29CA38;
  if (!qword_1EC29CA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC29E8B0, &unk_1C8415780);
    sub_1C8335A6C();
    sub_1C83360A8(&unk_1EC29C918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CA38);
  }

  return result;
}

unint64_t sub_1C8335A6C()
{
  result = qword_1EC29CAB0;
  if (!qword_1EC29CAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29E8C0, &qword_1C8419B40);
    sub_1C8334AD0(&unk_1EC29CD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CAB0);
  }

  return result;
}

unint64_t sub_1C8335B28()
{
  result = qword_1EC29D4A0;
  if (!qword_1EC29D4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D428, &unk_1C8415740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D420, &qword_1C8415738);
    sub_1C840B88C();
    sub_1C83360A8(&unk_1EC29D488);
    sub_1C8334AD0(&unk_1EC29D490);
    swift_getOpaqueTypeConformance2();
    sub_1C83360A8(&unk_1EC29D4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D4A0);
  }

  return result;
}

uint64_t sub_1C8335CA0()
{
  OUTLINED_FUNCTION_22_0();
  result = sub_1C840BA9C();
  *v0 = result;
  return result;
}

unint64_t sub_1C8335CF4()
{
  result = qword_1EC29D510;
  if (!qword_1EC29D510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D518, &qword_1C8415830);
    sub_1C831CABC();
    sub_1C8336048(&qword_1EC29CA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D510);
  }

  return result;
}

unint64_t sub_1C8335DA0()
{
  result = qword_1EC29D530;
  if (!qword_1EC29D530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D4F8, &qword_1C8415820);
    sub_1C8335E2C();
    sub_1C83360DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D530);
  }

  return result;
}

unint64_t sub_1C8335E2C()
{
  result = qword_1EC29D538;
  if (!qword_1EC29D538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D4D8, &qword_1C8415800);
    sub_1C8335EE4();
    sub_1C83360A8(&unk_1EC29D580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D538);
  }

  return result;
}

unint64_t sub_1C8335EE4()
{
  result = qword_1EC29D540;
  if (!qword_1EC29D540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D548, &qword_1C8415840);
    sub_1C8335F9C();
    sub_1C83360A8(&unk_1EC29D570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D540);
  }

  return result;
}

unint64_t sub_1C8335F9C()
{
  result = qword_1EC29D550;
  if (!qword_1EC29D550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D558, &qword_1C8415848);
    sub_1C8336048(&unk_1EC29D560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D550);
  }

  return result;
}

unint64_t sub_1C8336048(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_18(0, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C83360A8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_18(0, v3, v4);
    OUTLINED_FUNCTION_16();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C83360DC()
{
  result = qword_1EC29CAB8;
  if (!qword_1EC29CAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC29E7A0, &qword_1C84157F0);
    sub_1C831CABC();
    sub_1C8334AD0(&unk_1EC29CCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CAB8);
  }

  return result;
}

uint64_t sub_1C8336198(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C840CDDC();

  return v3;
}

uint64_t sub_1C83362C8@<X0>(void *a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  result = sub_1C8334850(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_1C8336304()
{
  OUTLINED_FUNCTION_14();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_12();
  v3(v2);
  return v0;
}

uint64_t sub_1C833635C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C840B8AC();
  OUTLINED_FUNCTION_13(v5);
  v8 = *(v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80)) + *(v7 + 64));

  return sub_1C83347B4(a1, v8, a2);
}

uint64_t sub_1C83363F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C833644C()
{
  result = qword_1EC29C8C0;
  if (!qword_1EC29C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29C8C0);
  }

  return result;
}

unint64_t sub_1C83364D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_18(0, v4, v5);
    v2();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C8336544()
{
  result = qword_1EC29D640;
  if (!qword_1EC29D640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D4F0, &qword_1C8415818);
    sub_1C83364D8(&unk_1EC29D508);
    sub_1C83364D8(&unk_1EC29D528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D640);
  }

  return result;
}

uint64_t type metadata accessor for SizedEllipsis(uint64_t a1)
{
  result = qword_1EC29CD30;
  if (!qword_1EC29CD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C83366B8(uint64_t a1)
{
  sub_1C833672C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C833672C(uint64_t a1)
{
  if (!qword_1EC29CE38)
  {
    sub_1C840B5EC();
    v1 = sub_1C840B60C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC29CE38);
    }
  }
}

uint64_t sub_1C83367A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C840C3EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C840C3DC();
  (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
  v18 = sub_1C840C46C();

  (*(v3 + 8))(v5, v2);
  type metadata accessor for SizedEllipsis(0);
  sub_1C840C5FC();
  sub_1C840B69C();
  v6 = v19;
  LOBYTE(v5) = v20;
  v7 = v21;
  LOBYTE(v3) = v22;
  v8 = v23;
  v9 = v24;
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D648, &qword_1C8415AA8) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D650, &qword_1C8415AB0) + 28);
  sub_1C840BC1C();
  v12 = sub_1C840BC2C();
  __swift_storeEnumTagSinglePayload(v10 + v11, 0, 1, v12);
  *v10 = swift_getKeyPath();
  *a1 = v18;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  v13 = sub_1C83369E0();
  v14 = sub_1C8336B24();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D658, &qword_1C8415AE8);
  v16 = (a1 + *(result + 36));
  *v16 = v13;
  v16[1] = v14;
  return result;
}

uint64_t sub_1C83369E0()
{
  v0 = sub_1C840B5EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1C831BA8C((&v10 - v5));
  (*(v1 + 104))(v3, *MEMORY[0x1E697DBA8], v0);
  v7 = sub_1C840B5DC();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    return sub_1C840C2CC();
  }

  else
  {
    return sub_1C840C2AC();
  }
}

uint64_t sub_1C8336B24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E8E0, &unk_1C8415AF0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (v18 - v1);
  v3 = sub_1C840B5EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - v8;
  sub_1C831BA8C((v18 - v8));
  (*(v4 + 104))(v6, *MEMORY[0x1E697DBA8], v3);
  v10 = sub_1C840B5DC();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  if (v10)
  {
    sub_1C840C2CC();
    v12 = sub_1C840C2DC();

    v13 = *(v0 + 36);
    v14 = *MEMORY[0x1E6981DB8];
    v15 = sub_1C840C62C();
    (*(*(v15 - 8) + 104))(v2 + v13, v14, v15);
    *v2 = v12;
    sub_1C830D3C0(&qword_1EC29C930, &unk_1EC29E8E0, &unk_1C8415AF0, MEMORY[0x1E697FAF0]);
  }

  else
  {
    sub_1C840C2AC();
    v16 = sub_1C840C2DC();

    v18[1] = v16;
  }

  return sub_1C840B6AC();
}

unint64_t sub_1C8336DAC()
{
  result = qword_1EC29C9F8;
  if (!qword_1EC29C9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D658, &qword_1C8415AE8);
    sub_1C8336E64();
    sub_1C830D3C0(&qword_1EC29C910, &unk_1EC29E890, &qword_1C8415B00, MEMORY[0x1E6980600]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29C9F8);
  }

  return result;
}

unint64_t sub_1C8336E64()
{
  result = qword_1EC29CA10;
  if (!qword_1EC29CA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D648, &qword_1C8415AA8);
    sub_1C8336F1C();
    sub_1C830D3C0(&unk_1EC29C8F8, &qword_1EC29D650, &qword_1C8415AB0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CA10);
  }

  return result;
}

unint64_t sub_1C8336F1C()
{
  result = qword_1EC29CA70;
  if (!qword_1EC29CA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D520, &qword_1C8415838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CA70);
  }

  return result;
}

uint64_t WFImage.image.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D660, &qword_1C8415B08);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v8 = &v25 - v7;
  if ([v1 representationType] == 5)
  {
    sub_1C8337304(v1, &selRef_name);
    if (v9)
    {
      v10 = [v1 bundle];
      sub_1C840C48C();
      goto LABEL_10;
    }
  }

  if ([v1 representationType] != 4 || (sub_1C8337304(v1, &selRef_symbolName), !v11))
  {
    v14 = [v1 platformImage];
    goto LABEL_9;
  }

  v12 = [v1 symbolConfiguration];
  if (v12)
  {
    v13 = v12;

    v14 = [v1 untintedPlatformImage];
LABEL_9:
    v15 = v14;
    _s7SwiftUI5ImageV18WorkflowUIServicesE08platformC0ACSo7UIImageC_tcfC_0();
    goto LABEL_10;
  }

  sub_1C840C42C();
LABEL_10:

  v16 = [v1 renderingMode];
  if (v16 == 1)
  {
    v17 = MEMORY[0x1E6981688];
  }

  else
  {
    if (v16 != 2)
    {
      v22 = sub_1C840C44C();
      v20 = v4;
      v21 = 1;
      goto LABEL_16;
    }

    v17 = MEMORY[0x1E6981698];
  }

  v18 = *v17;
  v19 = sub_1C840C44C();
  (*(*(v19 - 8) + 104))(v4, v18, v19);
  v20 = v4;
  v21 = 0;
  v22 = v19;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
  sub_1C833722C(v4, v8);
  v23 = sub_1C840C41C();

  sub_1C833729C(v8);
  return v23;
}

uint64_t sub_1C833722C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D660, &qword_1C8415B08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C833729C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D660, &qword_1C8415B08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8337304(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1C840CDDC();

  return v4;
}

uint64_t TypedValue.PrimitiveValue.PersonValue.init(typedValue:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1C840C9DC();
  OUTLINED_FUNCTION_5();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  sub_1C840CA1C();
  OUTLINED_FUNCTION_11();
  v10 = OUTLINED_FUNCTION_11_2();
  if (v11(v10) != *MEMORY[0x1E69DAE70])
  {
    v20 = OUTLINED_FUNCTION_11_2();
    v21(v20);
LABEL_6:
    v19 = sub_1C840C99C();
    v17 = a2;
    v18 = 1;
    return __swift_storeEnumTagSinglePayload(v17, v18, 1, v19);
  }

  v12 = OUTLINED_FUNCTION_11_2();
  v13(v12);
  swift_projectBox();
  OUTLINED_FUNCTION_18_0();
  v14(v9);
  if ((*(v5 + 88))(v9, v3) != *MEMORY[0x1E69DADE8])
  {
    (*(v5 + 8))(v9, v3);

    goto LABEL_6;
  }

  (*(v5 + 96))(v9, v3);
  v15 = sub_1C840C99C();
  OUTLINED_FUNCTION_6();
  (*(v16 + 32))(a2, v9, v15);

  v17 = a2;
  v18 = 0;
  v19 = v15;
  return __swift_storeEnumTagSinglePayload(v17, v18, 1, v19);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TypedValue.PrimitiveValue.PersonValue.textValue()()
{
  v0 = sub_1C840C98C();
  v1 = [v0 displayName];

  v2 = sub_1C840CDDC();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t TypedValue.PrimitiveValue.PersonValue.typedValue()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C833761C, 0, 0);
}

uint64_t sub_1C833761C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1C840C9DC();
  v4 = swift_allocBox();
  v6 = v5;
  sub_1C840C99C();
  OUTLINED_FUNCTION_6();
  (*(v7 + 16))(v6, v1);
  (*(*(v3 - 8) + 104))(v6, *MEMORY[0x1E69DADE8], v3);
  *v2 = v4;
  v8 = *MEMORY[0x1E69DAE70];
  sub_1C840CA1C();
  OUTLINED_FUNCTION_6();
  (*(v9 + 104))(v2, v8);
  v10 = v0[1];

  return v10();
}

uint64_t sub_1C8337774(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C8311C5C;

  return TypedValue.PrimitiveValue.PersonValue.typedValue()(a1);
}

uint64_t ParameterSummaryPersonParameter.init(parameterDefinition:identifier:placeholder:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_14_1();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  v16 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_18_0();
  v23(v22, v12, v16);
  sub_1C83379C0(a6, v15);
  v24 = sub_1C8337A48(v22, v8, v7, v6, a5, v15, sub_1C8339B64);
  sub_1C832D574(a6, &qword_1EC29EAD0, &qword_1C8418AB0);
  (*(v18 + 8))(v12, v16);
  return v24;
}

uint64_t sub_1C83379C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8337A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(__int128 *__return_ptr, unint64_t))
{
  v11 = v7;
  OUTLINED_FUNCTION_14_1();
  v15 = v14;
  OUTLINED_FUNCTION_7_2(qword_1EC2A9D78);
  OUTLINED_FUNCTION_9_3(qword_1EC2A9D80);
  v16 = qword_1EC2A9D88;
  v17 = sub_1C840CB6C();
  OUTLINED_FUNCTION_11();
  v19 = v18;
  (*(v18 + 16))(&v11[v16], v15, v17);
  if (!v9)
  {
    v10 = sub_1C840CB3C();
    v9 = v20;
  }

  *(v11 + 2) = v10;
  *(v11 + 3) = v9;
  sub_1C840CB4C();

  OUTLINED_FUNCTION_20_0();
  if (v21)
  {
    v22 = sub_1C840CB4C();
  }

  else
  {
    v22 = sub_1C840CB3C();
  }

  *(v11 + 4) = v22;
  *(v11 + 5) = v23;
  if (!a5)
  {
    v8 = v22;
  }

  *(v11 + 6) = v8;
  *(v11 + 7) = a5;
  sub_1C8338A28(a6, a7, &v26);
  sub_1C832D574(a6, &qword_1EC29EAD0, &qword_1C8418AB0);
  (*(v19 + 8))(v15, v17);
  return OUTLINED_FUNCTION_1_4(v26);
}

uint64_t ParameterSummaryPersonParameter.init(parameterDefinition:identifier:placeholder:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v11 = sub_1C840C99C();
  OUTLINED_FUNCTION_5();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = sub_1C840CB6C();
  OUTLINED_FUNCTION_5();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  (*(v20 + 16))(v23 - v22, a1, v18);
  OUTLINED_FUNCTION_18_0();
  v25(v17, a6, v11);
  v26 = sub_1C83384CC(v24, a2, a3, a4, a5, v17, MEMORY[0x1E69DAD38], &protocol witness table for TypedValue.PrimitiveValue.PersonValue);
  (*(v13 + 8))(a6, v11);
  (*(v20 + 8))(a1, v18);
  return v26;
}

uint64_t sub_1C8338148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_7_2(qword_1EC2A9D78);
  OUTLINED_FUNCTION_9_3(qword_1EC2A9D80);
  v14 = qword_1EC2A9D88;
  v15 = sub_1C840CB6C();
  OUTLINED_FUNCTION_11();
  v17 = v16;
  (*(v16 + 16))(&v8[v14], v8, v15);
  if (!v11)
  {
    v12 = sub_1C840CB3C();
    v11 = v18;
  }

  *(v8 + 2) = v12;
  *(v8 + 3) = v11;
  sub_1C840CB4C();

  OUTLINED_FUNCTION_19_0();
  if (v19)
  {
    v20 = sub_1C840CB4C();
  }

  else
  {
    v20 = sub_1C840CB3C();
  }

  *(v8 + 4) = v20;
  *(v8 + 5) = v21;
  if (!v9)
  {
    v10 = v20;
  }

  *(v8 + 6) = v10;
  *(v8 + 7) = v9;
  v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v25[4] = &protocol witness table for ParameterUnit<A>;
  v25[0] = a6;
  OUTLINED_FUNCTION_17_2(v25, &v26);
  (*(v17 + 8))(v8, v15);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return OUTLINED_FUNCTION_1_4(v26);
}

uint64_t sub_1C83382D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  OUTLINED_FUNCTION_14_1();
  v15 = v14;
  OUTLINED_FUNCTION_7_2(qword_1EC2A9D78);
  OUTLINED_FUNCTION_9_3(qword_1EC2A9D80);
  v16 = qword_1EC2A9D88;
  v17 = sub_1C840CB6C();
  OUTLINED_FUNCTION_11();
  v19 = v18;
  (*(v18 + 16))(&v11[v16], v15, v17);
  if (!v9)
  {
    v10 = sub_1C840CB3C();
    v9 = v20;
  }

  *(v11 + 2) = v10;
  *(v11 + 3) = v9;
  sub_1C840CB4C();

  OUTLINED_FUNCTION_20_0();
  if (v21)
  {
    v22 = sub_1C840CB4C();
  }

  else
  {
    v22 = sub_1C840CB3C();
  }

  *(v11 + 4) = v22;
  *(v11 + 5) = v23;
  if (!a5)
  {
    v8 = v22;
  }

  *(v11 + 6) = v8;
  *(v11 + 7) = a5;
  v26[3] = MEMORY[0x1E69E6158];
  v26[4] = &protocol witness table for String;
  v26[0] = a6;
  v26[1] = a7;
  OUTLINED_FUNCTION_17_2(v26, &v27);
  (*(v19 + 8))(v15, v17);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return OUTLINED_FUNCTION_1_4(v27);
}

uint64_t sub_1C83384CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_7_2(qword_1EC2A9D78);
  OUTLINED_FUNCTION_9_3(qword_1EC2A9D80);
  v14 = qword_1EC2A9D88;
  v15 = sub_1C840CB6C();
  OUTLINED_FUNCTION_11();
  v17 = v16;
  (*(v16 + 16))(&v8[v14], v8, v15);
  if (!v11)
  {
    v12 = sub_1C840CB3C();
    v11 = v18;
  }

  *(v8 + 2) = v12;
  *(v8 + 3) = v11;
  sub_1C840CB4C();

  OUTLINED_FUNCTION_19_0();
  if (v19)
  {
    v20 = sub_1C840CB4C();
  }

  else
  {
    v20 = sub_1C840CB3C();
  }

  *(v8 + 4) = v20;
  *(v8 + 5) = v21;
  if (!v9)
  {
    v10 = v20;
  }

  *(v8 + 6) = v10;
  *(v8 + 7) = v9;
  v22 = a7(0);
  v28[3] = v22;
  v28[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  v24 = *(v22 - 8);
  (*(v24 + 16))(boxed_opaque_existential_1, a6, v22);
  OUTLINED_FUNCTION_17_2(v28, &v29);
  (*(v24 + 8))(a6, v22);
  (*(v17 + 8))(v8, v15);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return OUTLINED_FUNCTION_1_4(v29);
}

uint64_t sub_1C83386BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  OUTLINED_FUNCTION_7_2(qword_1EC2A9D78);
  OUTLINED_FUNCTION_9_3(qword_1EC2A9D80);
  v14 = qword_1EC2A9D88;
  v15 = sub_1C840CB6C();
  OUTLINED_FUNCTION_11();
  v17 = v16;
  (*(v16 + 16))(&v7[v14], a1, v15);
  if (!a3)
  {
    a2 = sub_1C840CB3C();
    a3 = v18;
  }

  *(v7 + 2) = a2;
  *(v7 + 3) = a3;
  v19 = sub_1C840CB4C();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v23 = sub_1C840CB4C();
  }

  else
  {
    v23 = sub_1C840CB3C();
  }

  *(v7 + 4) = v23;
  *(v7 + 5) = v24;
  if (!a5)
  {
    a4 = v23;
  }

  *(v7 + 6) = a4;
  *(v7 + 7) = a5;
  v26[3] = MEMORY[0x1E69E6370];
  v26[4] = &protocol witness table for Bool;
  LOBYTE(v26[0]) = a6 & 1;
  OUTLINED_FUNCTION_17_2(v26, &v27);
  (*(v17 + 8))(a1, v15);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return OUTLINED_FUNCTION_1_4(v27);
}

uint64_t sub_1C8338878()
{

  v1 = qword_1EC2A9D88;
  sub_1C840CB6C();
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(v0 + v1);

  sub_1C8338A00(v0 + qword_1EC2A9D80);
  return v0;
}

uint64_t ParameterSummaryPersonParameter.__deallocating_deinit()
{
  v0 = sub_1C8338878();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ParameterSummaryPersonParameter(uint64_t a1)
{
  result = qword_1EC29D668;
  if (!qword_1EC29D668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C8338A28(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, unint64_t)@<X1>, uint64_t a3@<X8>)
{
  v180 = a2;
  v185 = a1;
  v186 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D298, &unk_1C8415B80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_6_3(&v166 - v4);
  v179 = sub_1C840B1DC();
  OUTLINED_FUNCTION_5();
  v178 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_3(v8 - v7);
  v183 = sub_1C840C85C();
  OUTLINED_FUNCTION_5();
  v184 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_3(v12 - v11);
  v173 = sub_1C840CAAC();
  OUTLINED_FUNCTION_5();
  v172 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_3(v16 - v15);
  *&v176 = sub_1C840C8AC();
  OUTLINED_FUNCTION_5();
  v175 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_3(v20 - v19);
  v21 = sub_1C840C9DC();
  OUTLINED_FUNCTION_5();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v166 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v166 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29EAD0, &qword_1C8418AB0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v166 - v31;
  v33 = sub_1C840CA1C();
  OUTLINED_FUNCTION_5();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v166 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v166 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v166 - v43;
  sub_1C83379C0(v185, v32);
  if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
  {
    sub_1C832D574(v32, &qword_1EC29EAD0, &qword_1C8418AB0);
LABEL_3:
    v45 = v186;
    *(v186 + 8) = 0;
    *v45 = MEMORY[0x1E69E7CC0];
    return;
  }

  (*(v35 + 32))(v44, v32, v33);
  v46 = *(v35 + 16);
  v169 = v44;
  v185 = v35 + 16;
  v170 = v46;
  v46(v41, v44, v33);
  v47 = OUTLINED_FUNCTION_11_2();
  v167 = v48;
  v110 = (v48)(v47) == *MEMORY[0x1E69DAE70];
  v168 = v33;
  if (v110)
  {
    v49 = OUTLINED_FUNCTION_11_2();
    v50(v49);
    swift_projectBox();
    OUTLINED_FUNCTION_18_0();
    v51(v29);

    (*(v23 + 104))(v26, *MEMORY[0x1E69DADD8], v21);
    v52 = sub_1C840CC4C();
    v53 = *(v23 + 8);
    v53(v26, v21);
    v53(v29, v21);
    v56 = v35;
    v57 = v184;
    if (v52)
    {
      (*(v35 + 8))(v169, v168);
      goto LABEL_3;
    }
  }

  else
  {
    v54 = OUTLINED_FUNCTION_11_2();
    v55(v54);
    v56 = v35;
    v57 = v184;
  }

  sub_1C840CE2C("1 item", 6);
  v58 = v169;
  if (qword_1EC29CF30 != -1)
  {
    swift_once();
  }

  v59 = qword_1EC29EA60;
  v60 = sub_1C840CD9C();
  v61 = sub_1C840CD9C();

  v62 = [v59 localizedStringForKey:v60 value:v61 table:0];

  v63 = sub_1C840CDDC();
  v65 = v64;

  v66 = v168;
  OUTLINED_FUNCTION_5_2();
  v67();
  v68 = v167(v38, v66);
  if (v68 != *MEMORY[0x1E69DAE18])
  {
    v96 = v186;
    if (v68 != *MEMORY[0x1E69DAE28])
    {
      (*(v56 + 8))(v38, v66);
      v104 = v181;
      goto LABEL_48;
    }

    v166 = v63;
    v97 = OUTLINED_FUNCTION_10_4();
    v98(v97);
    v63 = *v38;
    v99 = swift_projectBox();
    v100 = v175;
    v101 = v174;
    v102 = v176;
    (*(v175 + 16))(v174, v99, v176);
    v65 = v171;
    sub_1C840C89C();
    v103 = v172;
    v104 = v173;
    if ((*(v172 + 88))(v65, v173) != *MEMORY[0x1E69DB098])
    {
      (*(v100 + 8))(v101, v102);
      (*(v103 + 8))(v65, v104);

      OUTLINED_FUNCTION_13_1();
      v96 = v186;
      goto LABEL_48;
    }

    v105 = v103;
    v106 = v66;
    v58 = 0xD000000000000010;
    (*(v105 + 96))(v65, v104);
    v56 = *v65;
    v104 = *(*v65 + 16);
    v107 = *(*v65 + 24);
    v108 = *(*v65 + 32);
    v109 = *(*v65 + 40);

    v110 = v104 == 0xD000000000000010 && 0x80000001C841ED50 == v107;
    if (v110)
    {

      OUTLINED_FUNCTION_21_1();
    }

    else
    {
      v104 = sub_1C840D69C();

      OUTLINED_FUNCTION_21_1();
      if ((v104 & 1) == 0)
      {
        v111 = OUTLINED_FUNCTION_4_1();
        v112(v111, v176);

LABEL_47:
        v96 = v186;
        v66 = v106;
        OUTLINED_FUNCTION_13_1();
LABEL_48:
        v180(&v199, v58);
        if (v200)
        {

          sub_1C830D408(&v199, &v187);
          OUTLINED_FUNCTION_17_2(&v187, v96);
          __swift_destroy_boxed_opaque_existential_1(&v187);
          (*(v56 + 8))(v58, v66);
        }

        else
        {
          v146 = v66;
          sub_1C832D574(&v199, &qword_1EC29D678, &unk_1C8418B10);
          sub_1C840CA0C();
          v147 = sub_1C840CC0C();
          if (__swift_getEnumTagSinglePayload(v104, 1, v147) == 1)
          {
            sub_1C832D574(v104, &qword_1EC29D298, &unk_1C8415B80);
          }

          else
          {
            v63 = sub_1C840CBDC();
            v149 = v148;
            (*(*(v147 - 8) + 8))(v104, v147);

            v65 = v149;
          }

          v190 = v146;
          v191 = &protocol witness table for TypedValue;
          __swift_allocate_boxed_opaque_existential_1(&v187);
          OUTLINED_FUNCTION_5_2();
          v150();
          static ParameterSummaryContent.value(_:fallbackName:)(&v187, v63, v65, v96);

          (*(v56 + 8))(v58, v146);
          __swift_destroy_boxed_opaque_existential_1(&v187);
        }

        return;
      }
    }

    v142 = v108 == 0x6E4565646F4E4946 && v109 == 0xEC00000079746974;
    v63 = v176;
    if (v142)
    {
    }

    else
    {
      v143 = sub_1C840D69C();

      if ((v143 & 1) == 0)
      {
        v144 = OUTLINED_FUNCTION_4_1();
        v145(v144, v63);

        goto LABEL_47;
      }
    }

    v151 = sub_1C836C698();
    if (v152)
    {
      v153 = v151;
    }

    else
    {
      v153 = 0x696C637265706170;
    }

    if (v152)
    {
      v154 = v152;
    }

    else
    {
      v154 = 0xE900000000000070;
    }

    v155 = v106;
    v195 = v106;
    v196 = &protocol witness table for TypedValue;
    __swift_allocate_boxed_opaque_existential_1(v194);
    OUTLINED_FUNCTION_5_2();
    v156();
    v157 = v177;
    sub_1C840B1CC();
    v158 = sub_1C840B1BC();
    v160 = v159;
    OUTLINED_FUNCTION_8_0();
    v161(v157, v179);
    v187 = v158;
    v188 = v160;
    OUTLINED_FUNCTION_15_1();
    v191 = v153;
    v192 = v154;
    v193 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D290, &unk_1C8414F80);
    v162 = swift_allocObject();
    *(v162 + 16) = xmmword_1C8414660;
    sub_1C832DBC8(&v187, v162 + 32);
    *(v162 + 128) = 1;
    v163 = OUTLINED_FUNCTION_4_1();
    v164(v163, v63);
    (*(v56 + 8))(0xD000000000000010, v155);
    sub_1C832D840(&v187);

    v165 = v186;
    *(v186 + 8) = 0;
    *v165 = v162;
    return;
  }

  v166 = v63;
  v69 = v58;
  v70 = OUTLINED_FUNCTION_10_4();
  v71(v70);
  v72 = v66;
  v73 = *v38;
  v74 = swift_projectBox();
  v75 = v182;
  v76 = v183;
  (*(v57 + 16))(v182, v74, v183);
  v77 = *(sub_1C840C84C() + 16);

  v78 = v186;
  if (v77)
  {
    v180 = v73;
    v181 = v56;
    v79 = 0x696C637265706170;
    v80 = *(sub_1C840C84C() + 16);

    if (v80 == 1)
    {
      v81 = v75;
      v82 = sub_1C836C698();
      if (v83)
      {
        v79 = v82;
        v84 = v83;
      }

      else
      {
        v84 = 0xE900000000000070;
      }

      v195 = v72;
      v196 = &protocol witness table for TypedValue;
      __swift_allocate_boxed_opaque_existential_1(v194);
      OUTLINED_FUNCTION_5_2();
      v85();
      v86 = v76;
      v87 = v177;
      sub_1C840B1CC();
      v88 = sub_1C840B1BC();
      v90 = v89;
      OUTLINED_FUNCTION_8_0();
      v91(v87, v179);
      v187 = v88;
      v188 = v90;
      OUTLINED_FUNCTION_15_1();
      v191 = v79;
      v192 = v84;
      v193 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D290, &unk_1C8414F80);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_1C8414660;
      sub_1C832DBC8(&v187, v92 + 32);
      *(v92 + 128) = 1;
      OUTLINED_FUNCTION_8_0();
      v93(v81, v86);
      OUTLINED_FUNCTION_8_0();
      v95 = v69;
    }

    else
    {

      v113 = sub_1C840CE2C("%ld items", v166);
      v114 = v113;
      v116 = v115;
      v117 = HIBYTE(v115) & 0xF;
      if ((v115 & 0x2000000000000000) == 0)
      {
        v117 = v113 & 0xFFFFFFFFFFFFLL;
      }

      if (v117)
      {
        v187 = 0;
        v188 = 0xE000000000000000;
        sub_1C840D3DC();

        v187 = v114;
        v188 = v116;
        *&v199 = 10;
        *(&v199 + 1) = 0xE100000000000000;
        v197 = 32;
        v198 = 0xE100000000000000;
        sub_1C833644C();
        v187 = sub_1C840D32C();
        v188 = v118;
        MEMORY[0x1CCA75890](0xD000000000000010, 0x80000001C841ED30);
        v119 = sub_1C840CD9C();

        v120 = sub_1C840CD9C();

        v121 = [v59 localizedStringForKey:v119 value:v120 table:0];

        sub_1C840CDDC();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D680, &unk_1C8415B90);
      v122 = swift_allocObject();
      v176 = xmmword_1C8414660;
      *(v122 + 16) = xmmword_1C8414660;
      v123 = v182;
      v124 = *(sub_1C840C84C() + 16);

      v125 = MEMORY[0x1E69E65A8];
      *(v122 + 56) = MEMORY[0x1E69E6530];
      *(v122 + 64) = v125;
      *(v122 + 32) = v124;
      v126 = sub_1C840CDAC();
      v128 = v127;

      v129 = sub_1C836C698();
      if (v130)
      {
        v131 = v129;
      }

      else
      {
        v131 = 0x696C637265706170;
      }

      v132 = v69;
      if (v130)
      {
        v133 = v130;
      }

      else
      {
        v133 = 0xE900000000000070;
      }

      v195 = v72;
      v196 = &protocol witness table for TypedValue;
      __swift_allocate_boxed_opaque_existential_1(v194);
      OUTLINED_FUNCTION_5_2();
      v134();
      v135 = v177;
      sub_1C840B1CC();
      v136 = sub_1C840B1BC();
      v138 = v137;
      OUTLINED_FUNCTION_8_0();
      v139(v135, v179);
      v187 = v136;
      v188 = v138;
      v189 = v126;
      v190 = v128;
      v191 = v131;
      v192 = v133;
      v193 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D290, &unk_1C8414F80);
      v92 = swift_allocObject();
      *(v92 + 16) = v176;
      sub_1C832DBC8(&v187, v92 + 32);
      *(v92 + 128) = 1;
      OUTLINED_FUNCTION_8_0();
      v140(v123, v183);
      OUTLINED_FUNCTION_8_0();
      v95 = v132;
    }

    v94(v95, v72);
    sub_1C832D840(&v187);

    v141 = v186;
    *(v186 + 8) = 0;
    *v141 = v92;
  }

  else
  {

    (*(v57 + 8))(v75, v76);
    (*(v56 + 8))(v69, v72);

    *(v78 + 8) = 0;
    *v78 = MEMORY[0x1E69E7CC0];
  }
}