uint64_t sub_1AAE2349C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v67 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = type metadata accessor for BuilderConditional.Info(0, v7, v8, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v53 - v15;
  v64 = sub_1AAF8FE74();
  v16 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v53 - v23;
  v26 = type metadata accessor for BuilderConditional(0, v7, v8, v25);
  v60 = *(v26 - 8);
  v61 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v65 = &v53 - v27;
  v58 = v5;
  sub_1AAD3D6FC(a1, v28, &v53 - v27);
  OutputValue = AGGraphGetOutputValue();
  v62 = a1;
  if (OutputValue)
  {
    (*(v10 + 16))(v24, OutputValue, v9);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v10 + 56))(v24, v30, 1, v9);
  v31 = *(v16 + 16);
  v66 = v24;
  v32 = v64;
  v31(v21, v24, v64);
  v33 = v16;
  v34 = *(v10 + 48);
  v35 = v34(v21, 1, v9);
  v63 = v33;
  if (v35 == 1)
  {
    (*(v33 + 8))(v21, v32);
  }

  else
  {
    v38 = sub_1AAE21158(v65, v9, v36, v37);
    v54 = *(v10 + 8);
    v55 = v10 + 8;
    v54(v21, v9);
    if (v38)
    {
      result = AGGraphGetOutputValue();
      if (result)
      {
        v40 = v56;
        (*(v10 + 16))(v56, result, v9);
        v42 = v60;
        v41 = v61;
        v43 = v65;
        v44 = (*(v60 + 24))(v40, v65, v61);
        MEMORY[0x1EEE9AC00](v44);
        *(&v53 - 2) = v62;
        *(&v53 - 1) = swift_getWitnessTable();
        sub_1AACBC418(v40, sub_1AAD4BC60, (&v53 - 4), v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v45);
        (*(v63 + 8))(v66, v32);
        (*(v42 + 8))(v43, v41);
        return (v54)(v40, v9);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  v31(v18, v66, v32);
  if (v34(v18, 1, v9) == 1)
  {
    v46 = v63;
    (*(v63 + 8))(v18, v32);
    v47 = v62;
  }

  else
  {
    v48 = v57;
    (*(v10 + 32))(v57, v18, v9);
    v47 = v62;
    sub_1AAE23B18(v48, v62);
    (*(v10 + 8))(v48, v9);
    v46 = v63;
  }

  v49 = v59;
  v50 = v65;
  v51 = sub_1AAE23C30(v65, v47, v59);
  MEMORY[0x1EEE9AC00](v51);
  *(&v53 - 2) = v47;
  *(&v53 - 1) = swift_getWitnessTable();
  sub_1AACBC418(v49, sub_1AAD4B490, (&v53 - 4), v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v52);
  (*(v10 + 8))(v49, v9);
  (*(v46 + 8))(v66, v32);
  return (*(v60 + 8))(v50, v61);
}

uint64_t sub_1AAE23B18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResetPreference(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a2 + 56);
  v8 = sub_1AAF8E4B4();
  (*(*(v8 - 8) + 16))(v6, v2 + v7, v8);
  v12 = v6;
  sub_1AAF8E484();
  sub_1AAE279D0(v6, type metadata accessor for ResetPreference);
  type metadata accessor for BuilderConditional.Info(0, *(a2 + 16), *(a2 + 24), v9);
  return AGSubgraphInvalidate();
}

uint64_t sub_1AAE23C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for _ChartContentOutputs(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _ChartContentInputs(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v14 = result;
    v15 = AGSubgraphGetGraph();
    v16 = AGSubgraphCreate();

    AGSubgraphAddChild();
    sub_1AACE8BF0(v3 + *(a2 + 52), v12, type metadata accessor for _ChartContentInputs);
    sub_1AACE8BF0(v3 + *(a2 + 56), v9, type metadata accessor for _ChartContentOutputs);
    AGGraphClearUpdate();
    v17 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    sub_1AAE23E3C(a1, v14, v12, v9, v16, *(a2 + 16), *(a2 + 24), *(a2 + 32), a3, *(a2 + 40));
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    sub_1AAE279D0(v9, type metadata accessor for _ChartContentOutputs);
    return sub_1AAE279D0(v12, type metadata accessor for _ChartContentInputs);
  }

  return result;
}

id sub_1AAE23E3C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v98 = a8;
  v113 = a9;
  v114 = a5;
  v109 = a4;
  v105 = a3;
  v101 = a2;
  v94 = a10;
  v118 = *MEMORY[0x1E69E9840];
  v13 = type metadata accessor for BuilderConditional(0, a6, a7, a4);
  v110 = *(v13 - 8);
  v111 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v108 = &v91 - v14;
  v106 = type metadata accessor for SetSource(0);
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1AAF8D954();
  v99 = *(v16 - 8);
  v100 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v91 - v17;
  v18 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for _ChartContentInputs(0);
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1AAF8D954();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v93 = &v91 - v23;
  v24 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for BuilderConditional.Storage(0, a6, a7, v28);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v91 - v31;
  v33 = type metadata accessor for _ChartContentOutputs(0);
  v34 = MEMORY[0x1EEE9AC00](v33 - 8);
  v103 = &v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v30 + 16);
  v112 = a1;
  v36(v32, a1, v29, v34);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = v18;
    v38 = (*(v18 + 32))(v21, v32, a7);
    LODWORD(v115) = v101;
    MEMORY[0x1EEE9AC00](v38);
    *(&v91 - 4) = a7;
    v40 = type metadata accessor for BuilderConditional.FalseChild(0, a6, a7, v39);
    *(&v91 - 3) = v40;
    *(&v91 - 2) = swift_getWitnessTable();
    v41 = sub_1AAF8D1A4();
    v42 = MEMORY[0x1E69E73E0];
    v43 = MEMORY[0x1E69E7410];
    v45 = sub_1AACBC418(&v115, sub_1AAD4BC78, (&v91 - 6), v40, MEMORY[0x1E69E73E0], v41, MEMORY[0x1E69E7410], v44);
    v46 = v117;
    MEMORY[0x1EEE9AC00](v45);
    *(&v91 - 2) = a7;
    *(&v91 - 2) = v46;
    sub_1AACBC418(v21, sub_1AAD4B5E8, (&v91 - 4), a7, v42, MEMORY[0x1E69E6370], v43, v47);
    v48 = *(v102 + 24);
    v49 = v105;
    v50 = *(v105 + v48);
    v115 = 0;
    v116 = v50;
    sub_1AACBC63C();
    type metadata accessor for ChartContainerValues(0);
    sub_1AAE278B4(0, v51, v52, v53);
    sub_1AAE2790C(v54, v55, v56, v57);
    *(v49 + v48) = sub_1AAF8D194();
    v58 = v97;
    sub_1AACBC644(v46, v97);
    v59 = v104;
    sub_1AACE8BF0(v49, v104, type metadata accessor for _ChartContentInputs);
    v60 = v103;
    (*(v94 + 48))(v58, v59, a7);
    sub_1AAE279D0(v59, type metadata accessor for _ChartContentInputs);
    (*(v99 + 8))(v58, v100);
    (*(v37 + 8))(v21, a7);
  }

  else
  {
    v92 = v24;
    v61 = (*(v24 + 32))(v27, v32, a6);
    LODWORD(v115) = v101;
    MEMORY[0x1EEE9AC00](v61);
    *(&v91 - 4) = a6;
    v63 = type metadata accessor for BuilderConditional.TrueChild(0, a6, a7, v62);
    *(&v91 - 3) = v63;
    *(&v91 - 2) = swift_getWitnessTable();
    v64 = sub_1AAF8D1A4();
    v65 = MEMORY[0x1E69E73E0];
    v66 = MEMORY[0x1E69E7410];
    v68 = sub_1AACBC418(&v115, sub_1AAD4BC78, (&v91 - 6), v63, MEMORY[0x1E69E73E0], v64, MEMORY[0x1E69E7410], v67);
    v69 = v117;
    MEMORY[0x1EEE9AC00](v68);
    *(&v91 - 2) = a6;
    *(&v91 - 2) = v69;
    sub_1AACBC418(v27, sub_1AAE27B88, (&v91 - 4), a6, v65, MEMORY[0x1E69E6370], v66, v70);
    v71 = *(v102 + 24);
    v72 = v98;
    v73 = v105;
    v74 = *(v105 + v71);
    v115 = 1;
    v116 = v74;
    sub_1AACBC63C();
    type metadata accessor for ChartContainerValues(0);
    sub_1AAE278B4(0, v75, v76, v77);
    sub_1AAE2790C(v78, v79, v80, v81);
    *(v73 + v71) = sub_1AAF8D194();
    v82 = v93;
    sub_1AACBC644(v69, v93);
    v83 = v104;
    sub_1AACE8BF0(v73, v104, type metadata accessor for _ChartContentInputs);
    v60 = v103;
    (*(v72 + 48))(v82, v83, a6, v72);
    sub_1AAE279D0(v83, type metadata accessor for _ChartContentInputs);
    (*(v95 + 8))(v82, v96);
    (*(v92 + 8))(v27, a6);
  }

  v84 = sub_1AAF8E4B4();
  v85 = *(*(v84 - 8) + 16);
  v86 = v107;
  v85(v107, v109, v84);
  v87 = (v85)(v86 + *(v106 + 20), v60, v84);
  MEMORY[0x1EEE9AC00](v87);
  *(&v91 - 2) = v86;
  sub_1AAF8E484();
  sub_1AAE279D0(v60, type metadata accessor for _ChartContentOutputs);
  sub_1AAE279D0(v86, type metadata accessor for SetSource);
  v88 = v108;
  (*(v110 + 16))(v108, v112, v111);
  sub_1AAE213B8(v88, v114, a6, a7, v113);
  v89 = v114;

  return v89;
}

uint64_t sub_1AAE24984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, *v3 + v3[3], a2, v7);
  v10 = v3[1];
  v11 = v3[2];
  v14[0] = v10;
  v14[1] = v11;
  v12 = *(a3 + 32);

  v12(v9, v14, a2, a3);

  return (*(v6 + 8))(v9, a2);
}

char *sub_1AAE24AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v7 + 16))(v10, *v4 + *(v4 + 24), a2, v8);
  v11 = *(v4 + 16);
  v19[0] = *(v4 + 8);
  v20 = v11;
  v12 = *(a3 + 40);

  v12(&v21, v10, v19, a2, a3);

  (*(v7 + 8))(v10, a2);
  v13 = v21;
  v14 = *(v4 + 32);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AAD04BDC(0, *(v14 + 2) + 1, 1, v14);
    v14 = result;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  if (v17 >= v16 >> 1)
  {
    result = sub_1AAD04BDC((v16 > 1), v17 + 1, 1, v14);
    v14 = result;
  }

  *(v14 + 2) = v17 + 1;
  *&v14[8 * v17 + 32] = v13;
  *(v4 + 32) = v14;
  return result;
}

uint64_t sub_1AAE24C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = *(a2 - 8);
  v24 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _ChartContentCollectInputs(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CallCollectChartContent(0);
  sub_1AACE8BF0(v4 + v12[5], v11, type metadata accessor for _ChartContentCollectInputs);
  v13 = *(v9 + 28);
  v14 = *&v11[v13];
  v15 = *(v4 + v12[7]);
  v21 = v12[7];
  v22 = v15;
  sub_1AADAD8EC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AAF92AB0;
  *(inited + 32) = v15;
  *(inited + 72) = 0;
  v25 = v14;

  sub_1AADC85B8(inited);
  v17 = v25;

  *&v11[v13] = v17;
  v18 = v23;
  (*(v23 + 16))(v7, *v4 + *(v4 + v12[6]), a2);
  (*(v24 + 64))(&v25, v7, v11, a2);
  result = (*(v18 + 8))(v7, a2);
  if (__OFADD__(v22, 1))
  {
    __break(1u);
  }

  else
  {
    *(v4 + v21) = v22 + 1;

    sub_1AADC8BA0(v20);
    sub_1AAEEC248(v26);
    sub_1AAD58308(&v25);
    return sub_1AAE279D0(v11, type metadata accessor for _ChartContentCollectInputs);
  }

  return result;
}

void static BuilderPair<>._layoutChartContent(_:_:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for BuilderPair(0, a3, a4, a4);
  v13 = *(v12 + 8);
  sub_1AADCF1A0();
  if (v14)
  {
    v15 = v12 + 8 * *(v14 + 24);
    v22 = *a2;
    v16 = sub_1AADCF1CC(v12, v13, v15, (v12 + 16));
    MEMORY[0x1EEE9AC00](v16);
    v19[2] = a3;
    v19[3] = a4;
    v19[4] = a5;
    v19[5] = a6;
    v20 = v22;
    v21 = v17;
    sub_1AACBC418(a1, sub_1AAE26A40, v19, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v18);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AAE250E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v30[6] = a1;
  v30[7] = a2;
  v30[8] = a3;
  v22 = *(a4 + 16);
  if (v22)
  {

    v6 = 0;
    v7 = (a4 + 48);
    v21 = v4;
    do
    {
      v13 = *(v7 - 2);
      v14 = *v7;
      v30[9] = *(v7 - 1);
      v36 = *(a1 + v14);
      v15 = *(v4 + 16);
      v16 = *(v15 + 16);
      v17 = *(v16 + 32);
      *&v25 = v6;

      sub_1AAF90024();
      v30[0] = v17;
      swift_beginAccess();
      v18 = *(v16 + 16);
      if (*(v18 + 16) && (v19 = sub_1AACCAE28(v30), (v20 & 1) != 0))
      {
        v9 = *(*(v18 + 56) + 8 * v19);
      }

      else
      {
        swift_endAccess();
        sub_1AAF90704();
        MEMORY[0x1AC5992C0](v6);
        MEMORY[0x1AC5992F0](v17);
        v33 = v27;
        v34 = v28;
        v35 = v29;
        v31 = v25;
        v32 = v26;
        v8 = sub_1AAF906E4();
        v9 = sub_1AACCB060(v8);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *(v16 + 16);
        *(v16 + 16) = 0x8000000000000000;
        sub_1AACCB154(v9, v30, isUniquelyReferenced_nonNull_native);
        *(v16 + 16) = v24;
      }

      swift_endAccess();
      sub_1AACCAFF0(v30);
      ++v6;
      v7 += 3;
      v11 = *(v16 + 32);
      *(v16 + 32) = v9;
      v12 = *(v15 + 24);
      *(v15 + 24) = v9;
      sub_1AAE24984(v13, v13, v36);
      *(v15 + 24) = v12;

      *(v16 + 32) = v11;

      v4 = v21;
    }

    while (v22 != v6);
  }

  else
  {
  }
}

void static BuilderPair<>._renderChartContent(_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a1;
  v11 = type metadata accessor for BuilderPair(0, a3, a4, a4);
  v12 = *(v11 + 8);
  sub_1AADCF1A0();
  if (v13)
  {
    v14 = *(a2 + 1);
    v15 = *a2;
    v16 = sub_1AADCF1CC(v11, v12, v11 + 8 * *(v13 + 24), (v11 + 16));
    MEMORY[0x1EEE9AC00](v16);
    v19[2] = a3;
    v19[3] = a4;
    v19[4] = a5;
    v19[5] = a6;
    v20 = v15;
    v21 = v14;
    v22 = v17;
    sub_1AACBC418(v23, sub_1AAE26A78, v19, v11, MEMORY[0x1E69E73E0], &type metadata for _ChartContentRenderOutputs, MEMORY[0x1E69E7410], v18);
  }

  else
  {
    __break(1u);
  }
}

double sub_1AAE25460@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = a3;
  v50[6] = a1;
  v51 = a2 & 1;
  v52 = a3;
  v53 = 0;
  v54 = MEMORY[0x1E69E7CC0];
  v41 = *(a4 + 16);
  if (v41)
  {
    v7 = *(a3 + 16);

    v8 = 0;
    v9 = (a4 + 48);
    do
    {
      v16 = *(v9 - 2);
      v17 = *v9;
      v53 = *(v9 - 1);
      v43 = *(a1 + v17);
      v18 = *(v7 + 16);
      v19 = *(v18 + 32);
      *&v44 = v8;

      sub_1AAF90024();
      v50[0] = v19;
      swift_beginAccess();
      v20 = *(v18 + 16);
      if (*(v20 + 16) && (v21 = sub_1AACCAE28(v50), (v22 & 1) != 0))
      {
        v11 = *(*(v20 + 56) + 8 * v21);
      }

      else
      {
        swift_endAccess();
        sub_1AAF90704();
        MEMORY[0x1AC5992C0](v8);
        MEMORY[0x1AC5992F0](v19);
        v57 = v47;
        v58 = v48;
        v59 = v49;
        v55 = v44;
        v56 = v46;
        v10 = sub_1AAF906E4();
        v11 = sub_1AACCB060(v10);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = *(v18 + 16);
        *(v18 + 16) = 0x8000000000000000;
        sub_1AACCB154(v11, v50, isUniquelyReferenced_nonNull_native);
        *(v18 + 16) = v60;
      }

      swift_endAccess();
      sub_1AACCAFF0(v50);
      ++v8;
      v9 += 3;
      v13 = *(v18 + 32);
      *(v18 + 32) = v11;
      v14 = *(v7 + 24);
      *(v7 + 24) = v11;
      sub_1AAE24AC0(v16, v16, v43);
      v15 = v54;
      *(v7 + 24) = v14;
      *(v18 + 32) = v13;
    }

    while (v41 != v8);
    v5 = a3;
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(*(v5 + 16) + 24);
  v24 = *(v15 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v45 = MEMORY[0x1E69E7CC0];
    sub_1AAD0F6F0(0, v24, 0);
    v26 = v45;
    v27 = (v15 + 32);
    v28 = *(v45 + 16);
    do
    {
      v30 = *v27++;
      v29 = v30;
      v31 = *(v45 + 24);

      if (v28 >= v31 >> 1)
      {
        sub_1AAD0F6F0((v31 > 1), v28 + 1, 1);
      }

      *(v45 + 16) = v28 + 1;
      *(v45 + 8 * v28++ + 32) = v29;
      --v24;
    }

    while (v24);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  v32 = type metadata accessor for SgGroup(0);
  v33 = swift_allocBox();
  v35 = v34;
  v36 = v32[6];
  v37 = type metadata accessor for SgClipRect(0);
  (*(*(v37 - 8) + 56))(&v35[v36], 1, 1, v37);
  *v35 = v23;
  *(v35 + 1) = v26;
  *&v35[v32[7]] = 0x3FF0000000000000;
  *&v35[v32[8]] = 0;
  *&v35[v32[9]] = v25;
  v35[v32[10]] = 0;
  *a5 = v33;

  return result;
}

uint64_t static BuilderPair<>._makeChartContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v54 = a5;
  v55 = a6;
  v58 = a1;
  v62 = a7;
  v12 = type metadata accessor for _ChartContentOutputs(0);
  v53 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1AAF8E4B4();
  v65 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for MultiPreferenceCombinerVisitor(0);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for _ChartContentInputs(0);
  MEMORY[0x1EEE9AC00](v59);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for BuilderPair(255, a3, a4, v19);
  v20 = sub_1AAF8D954();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v52 - v22;
  v66[0] = a3;
  v66[1] = a4;
  v66[2] = a5;
  v66[3] = a6;
  ListVMa_3 = _s8MakeListVMa_3(0, v66);
  v57 = *(ListVMa_3 - 8);
  v25 = MEMORY[0x1EEE9AC00](ListVMa_3);
  v27 = &v52 - v26;
  (*(v21 + 16))(v23, v58, v20, v25);
  sub_1AACE8BF0(a2, v18, type metadata accessor for _ChartContentInputs);
  v28 = MEMORY[0x1E69E7CC0];
  v29 = v23;
  v30 = v18;
  v32 = v54;
  v31 = v55;
  sub_1AAE25EFC(v29, v30, 0, MEMORY[0x1E69E7CC0], a3, a4, v54, v55, v27);
  v33 = *(ListVMa_3 + 56);
  *&v27[v33] = 0;
  sub_1AAE26000(a3, ListVMa_3, a3, v32);
  *&v27[v33] = *(v56 + 40);
  v34 = v31;
  v35 = v65;
  sub_1AAE26000(a4, ListVMa_3, a4, v34);
  v58 = ListVMa_3;
  v36 = *(ListVMa_3 + 60);
  v56 = v27;
  v37 = *&v27[v36];
  v38 = *(v37 + 16);
  if (v38)
  {
    v55 = a2;
    v66[0] = v28;
    sub_1AAD40F4C(0, v38, 0);
    v28 = v66[0];
    v39 = v37 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v40 = *(v53 + 72);
    v41 = (v35 + 32);
    v42 = v63;
    do
    {
      v43 = v64;
      sub_1AACE8BF0(v39, v64, type metadata accessor for _ChartContentOutputs);
      v44 = *v41;
      (*v41)(v15, v43, v42);
      v66[0] = v28;
      v46 = *(v28 + 16);
      v45 = *(v28 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1AAD40F4C((v45 > 1), v46 + 1, 1);
        v42 = v63;
        v28 = v66[0];
      }

      *(v28 + 16) = v46 + 1;
      v44((v28 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v46), v15, v42);
      v39 += v40;
      --v38;
    }

    while (v38);
    v47 = v62;
  }

  else
  {
    v47 = v62;
  }

  v48 = v61;
  v49 = *(v60 + 20);
  Chart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0 = _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  *v48 = v28;
  MEMORY[0x1EEE9AC00](Chart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0);
  *(&v52 - 2) = v48;
  sub_1AAF8E394();
  (*(v57 + 8))(v56, v58);
  (*(v65 + 16))(v47, &v48[v49], v63);
  return sub_1AAE279D0(v48, type metadata accessor for MultiPreferenceCombinerVisitor);
}

void static BuilderPair<>._collectChartContent(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for BuilderPair(0, a3, a4, a4);
  v13 = *(v12 + 8);
  sub_1AADCF1A0();
  if (v14)
  {
    v15 = sub_1AADCF1CC(v12, v13, v12 + 8 * *(v14 + 24), (v12 + 16));
    MEMORY[0x1EEE9AC00](v15);
    v18[2] = a3;
    v18[3] = a4;
    v18[4] = a5;
    v18[5] = a6;
    v18[6] = a2;
    v18[7] = v16;
    sub_1AACBC418(a1, sub_1AAE26AC8, v18, v12, MEMORY[0x1E69E73E0], &type metadata for _ChartContentCollectOutputs, MEMORY[0x1E69E7410], v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AAE25EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  type metadata accessor for BuilderPair(255, a5, a6, a4);
  v18 = sub_1AAF8D954();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v21[0] = a5;
  v21[1] = a6;
  v21[2] = a7;
  v21[3] = a8;
  ListVMa_3 = _s8MakeListVMa_3(0, v21);
  result = sub_1AAE27A30(a2, a9 + ListVMa_3[13], type metadata accessor for _ChartContentInputs);
  *(a9 + ListVMa_3[14]) = a3;
  *(a9 + ListVMa_3[15]) = a4;
  return result;
}

uint64_t sub_1AAE26000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v43 = *MEMORY[0x1E69E9840];
  v38 = sub_1AAF8D954();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v34 - v7;
  v8 = type metadata accessor for _ChartContentOutputs(0);
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for _ChartContentInputs(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE8BF0(v4 + *(a2 + 52), v16, type metadata accessor for _ChartContentInputs);
  v39 = *(a2 + 60);
  v17 = *(v4 + v39);
  v18 = *(v14 + 32);
  v19 = *&v16[v18];
  v41 = v17[2];
  v42 = v19;
  sub_1AACBC63C();
  type metadata accessor for ChartContainerValues(0);
  sub_1AAE278B4(0, v20, v21, v22);
  sub_1AAE2790C(v23, v24, v25, v26);
  *&v16[v18] = sub_1AAF8D194();
  type metadata accessor for BuilderPair(0, *(a2 + 16), *(a2 + 24), v27);
  sub_1AACBC3B4(v4);
  v28 = v34;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v30 = v35;
  sub_1AACBC644(OffsetAttribute2, v35);
  (*(v37 + 48))(v30, v16, a3);
  (*(v36 + 8))(v30, v38);
  sub_1AACE8BF0(v12, v28, type metadata accessor for _ChartContentOutputs);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1AAD68DF4(0, v17[2] + 1, 1, v17);
  }

  v32 = v17[2];
  v31 = v17[3];
  if (v32 >= v31 >> 1)
  {
    v17 = sub_1AAD68DF4((v31 > 1), v32 + 1, 1, v17);
  }

  sub_1AAE279D0(v12, type metadata accessor for _ChartContentOutputs);
  sub_1AAE279D0(v16, type metadata accessor for _ChartContentInputs);
  v17[2] = v32 + 1;
  result = sub_1AAE27A30(v28, v17 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32, type metadata accessor for _ChartContentOutputs);
  *(v4 + v39) = v17;
  return result;
}

uint64_t sub_1AAE2640C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for CallCollectChartContent(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AACE8BF0(a2, v12 + v10[7], type metadata accessor for _ChartContentCollectInputs);
  v13 = v12 + v10[10];
  *v13 = MEMORY[0x1E69E7CC0];
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = xmmword_1AAF92AC0;
  *(v13 + 48) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  *(v13 + 56) = 0;
  *(v13 + 80) = xmmword_1AAF92AC0;
  *(v13 + 96) = 0;
  *(v13 + 112) = 0;
  *(v13 + 120) = 0;
  *(v13 + 104) = 0;
  *(v13 + 128) = xmmword_1AAF92AC0;
  *(v13 + 144) = 0;
  *(v13 + 160) = 0;
  *(v13 + 168) = 0;
  *(v13 + 152) = 0;
  *(v13 + 176) = xmmword_1AAF92AC0;
  *(v13 + 192) = 0;
  *(v13 + 208) = 0;
  *(v13 + 216) = 0;
  *(v13 + 200) = 0;
  *(v13 + 224) = xmmword_1AAF92AC0;
  *(v13 + 240) = 0;
  *(v13 + 256) = 0;
  *(v13 + 264) = 0;
  *(v13 + 248) = 0;
  *(v13 + 272) = xmmword_1AAF92AC0;
  *(v13 + 288) = 0;
  *(v13 + 304) = 0;
  *(v13 + 312) = 0;
  *(v13 + 296) = 0;
  *(v13 + 320) = xmmword_1AAF92AC0;
  *(v13 + 336) = 0;
  *(v13 + 352) = 0;
  *(v13 + 360) = 0;
  *(v13 + 344) = 0;
  *(v13 + 368) = xmmword_1AAF92AC0;
  *(v13 + 384) = 0;
  *(v13 + 400) = 0;
  *(v13 + 408) = 0;
  *(v13 + 392) = 0;
  *(v13 + 416) = xmmword_1AAF92AC0;
  *(v13 + 432) = 0;
  *(v13 + 448) = 0;
  *(v13 + 456) = 0;
  *(v13 + 440) = 0;
  *(v13 + 464) = xmmword_1AAF92AC0;
  *(v13 + 480) = 0;
  *(v13 + 488) = 0u;
  *(v13 + 504) = 0u;
  *(v13 + 520) = 1;
  *(v13 + 799) = 0;
  *(v13 + 768) = 0u;
  *(v13 + 784) = 0u;
  *(v13 + 736) = 0u;
  *(v13 + 752) = 0u;
  *(v13 + 704) = 0u;
  *(v13 + 720) = 0u;
  *(v13 + 672) = 0u;
  *(v13 + 688) = 0u;
  *(v13 + 640) = 0u;
  *(v13 + 656) = 0u;
  *(v13 + 608) = 0u;
  *(v13 + 624) = 0u;
  *(v13 + 576) = 0u;
  *(v13 + 592) = 0u;
  *(v13 + 544) = 0u;
  *(v13 + 560) = 0u;
  *(v13 + 528) = 0u;
  *v12 = a1;
  v14 = v10[8];
  *(v12 + v14) = 0;
  *(v12 + v10[9]) = 0;
  v15 = *(a3 + 16);
  if (v15)
  {
    v16 = (a3 + 48);
    do
    {
      v17 = *(v16 - 2);
      v18 = *(v16 - 1);
      v19 = *v16;
      v16 += 3;
      *(v12 + v14) = v18;
      sub_1AAE24C6C(v17, v17, *(a1 + v19));
      --v15;
    }

    while (v15);
  }

  sub_1AADF9ADC(v13, a4);
  return sub_1AAE279D0(v12, type metadata accessor for CallCollectChartContent);
}

uint64_t AnyChartContent.init<A>(erasing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  v6 = sub_1AACB2508(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(v6, a1, a2);
}

double static AnyChartContent._layoutChartContent(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = sub_1AACBB42C(a1, v4);

  return sub_1AAE266F4(v6, v2, v3, v4, v5);
}

double sub_1AAE266F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 16);
  v11 = *(v10 + 16);
  v12 = *(v11 + 32);

  v14 = sub_1AACDB064(a4, v12, v13);
  v15 = *(v11 + 32);
  *(v11 + 32) = v14;
  v16 = *(v10 + 24);
  *(v10 + 24) = v14;
  v18[0] = a2;
  v18[1] = a3;
  (*(a5 + 32))(a1, v18, a4, a5);
  *(v10 + 24) = v16;

  *(v11 + 32) = v15;

  return result;
}

double static AnyChartContent._renderChartContent(_:_:)(void *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = a1[3];
  v5 = a1[4];
  v6 = sub_1AACBB42C(a1, v4);

  return sub_1AACDB194(v6, v2, v3, v4, v5);
}

double sub_1AAE26840(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = sub_1AACBB42C(a1, v4);

  return sub_1AAE266F4(v6, v2, v3, v4, v5);
}

double sub_1AAE26894(void *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = a1[3];
  v5 = a1[4];
  v6 = sub_1AACBB42C(a1, v4);

  return sub_1AACDB194(v6, v2, v3, v4, v5);
}

void *sub_1AAE268FC(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = sub_1AACBB42C(a1, v4);

  return sub_1AAE269B4(v6, a2, v4, v5);
}

uint64_t static AnyChartContent._collectChartContent(content:inputs:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1AACBB42C(a1, v3);
  return (*(v4 + 64))(v5, a2, v3, v4);
}

uint64_t sub_1AAE26AFC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE26B4C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE26BAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1AAE26CD4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1AAE26E9C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE26F30(int *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v4 + 64);
  v8 = *(v6 + 80);
  if (v5 <= *(v6 + 84))
  {
    v9 = *(v6 + 84);
  }

  else
  {
    v9 = *(v4 + 84);
  }

  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
    goto LABEL_30;
  }

  v11 = ((*(v6 + 64) + ((v8 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = a2 - v10 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v11);
      if (v16)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v16 = *(a1 + v11);
      if (v16)
      {
        goto LABEL_27;
      }
    }

LABEL_30:
    if (v5 == v10)
    {
      return (*(v4 + 48))(a1, v5, v3);
    }

    v20 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v9 > 1)
    {
      return (*(v6 + 48))((v20 + v8 + 8) & ~v8);
    }

    else
    {
      return *v20 == 0;
    }
  }

  if (!v15)
  {
    goto LABEL_30;
  }

  v16 = *(a1 + v11);
  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_27:
  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    v19 = *a1;
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v18) + 1;
}

_BYTE *sub_1AAE27100(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v4 + 64);
  v8 = *(v6 + 80);
  if (v5 <= *(v6 + 84))
  {
    v9 = *(v6 + 84);
  }

  else
  {
    v9 = *(v4 + 84);
  }

  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = ((*(v6 + 64) + ((v8 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v6 + 64) + ((v8 + ((v7 + 7) & 0xFFFFFFF8) + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_20:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v11] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *&result[v11] = 0;
      }

      else if (v14)
      {
        result[v11] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return result;
      }

LABEL_36:
      if (v5 == v10)
      {
        v19 = *(v4 + 56);

        return v19();
      }

      else
      {
        v20 = (&result[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (v9 > 1)
        {
          v21 = *(v6 + 56);

          return v21((v20 + v8 + 8) & ~v8);
        }

        else if (a2 == 1)
        {
          *v20 = 0;
        }

        else
        {
          *v20 = a2 - 2;
        }
      }

      return result;
    }
  }

  if (((*(v6 + 64) + ((v8 + ((v7 + 7) & 0xFFFFFFF8) + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((*(v6 + 64) + ((v8 + ((v7 + 7) & 0xFFFFFFF8) + 8) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v10 + a2;
    v18 = result;
    bzero(result, v11);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v11] = v16;
    }

    else
    {
      *&result[v11] = v16;
    }
  }

  else if (v14)
  {
    result[v11] = v16;
  }

  return result;
}

void sub_1AAE27388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BuilderPair(255, *(a1 + 16), *(a1 + 24), a4);
  sub_1AAF8D954();
  if (v4 <= 0x3F)
  {
    type metadata accessor for _ChartContentInputs(319);
    if (v5 <= 0x3F)
    {
      sub_1AAE27464(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1AAE27464(uint64_t a1)
{
  if (!qword_1ED9AD928)
  {
    type metadata accessor for _ChartContentOutputs(255);
    v1 = sub_1AAF8F914();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9AD928);
    }
  }
}

void sub_1AAE274BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BuilderConditional(255, *(a1 + 16), *(a1 + 24), a4);
  sub_1AAF8D1A4();
  if (v4 <= 0x3F)
  {
    type metadata accessor for _ChartContentInputs(319);
    if (v5 <= 0x3F)
    {
      type metadata accessor for _ChartContentOutputs(319);
      if (v6 <= 0x3F)
      {
        type metadata accessor for Subgraph(319);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1AAE275A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BuilderConditional(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    type metadata accessor for Subgraph(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AAE27630(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = (v3 & 0xFFFFFFFFFFFFFFF8) + 16;
  v8 = v7 & 0xFFFFFFF8;
  v9 = a2 - 2147483646;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if (v11 == 4)
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  else if (v11 == 2)
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
LABEL_5:
      v5 = *((a1 + v3 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v5 >= 0xFFFFFFFF)
      {
        LODWORD(v5) = -1;
      }

      return (v5 + 1);
    }
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return (v8 | v13) ^ 0x80000000;
}

int *sub_1AAE2771C(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v4)
  {
    v4 = *(*(*(a4 + 24) - 8) + 64);
  }

  v5 = (v4 & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v7 = a3 - 2147483646;
    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v9 = a2 & 0x7FFFFFFF;
    if ((v4 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 1;
    }

    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v11 = result;
      bzero(result, v5);
      result = v11;
      *v11 = v9;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(result + v5) = v10;
      }

      else
      {
        *(result + v5) = v10;
      }
    }

    else if (v6)
    {
      *(result + v5) = v10;
    }

    return result;
  }

  v6 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v6 <= 1)
  {
    if (v6)
    {
      *(result + v5) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v6 == 2)
  {
    *(result + v5) = 0;
    goto LABEL_28;
  }

  *(result + v5) = 0;
  if (a2)
  {
LABEL_29:
    *((result + v4 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

void sub_1AAE278B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1ED9AE378[0])
  {
    v4 = type metadata accessor for ContainerWithChildID(0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], a4);
    if (!v5)
    {
      atomic_store(v4, qword_1ED9AE378);
    }
  }
}

unint64_t sub_1AAE2790C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_1ED9AFCF0[0];
  if (!qword_1ED9AFCF0[0])
  {
    sub_1AAE278B4(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9AFCF0);
  }

  return result;
}

uint64_t type metadata accessor for CallCollectChartContent(uint64_t a1)
{
  result = qword_1EB4259B8;
  if (!qword_1EB4259B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AAE279D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAE27A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE27AC0(uint64_t a1)
{
  result = type metadata accessor for _ChartContentCollectInputs(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1AAE27BB0@<D0>(uint64_t a1@<X8>)
{
  sub_1AAF885A0(9);
  if (qword_1ED9B5A00 != -1)
  {
    swift_once();
  }

  sub_1AAD0F924(&qword_1ED9C36D0, a1 + 32);
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = -1;
  sub_1AACDB97C(v12);
  *(a1 + 632) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 640) = -1;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 752) = -1;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = -1;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 0;
  *(a1 + 1104) = -1;
  v2 = v12[7];
  *(a1 + 1208) = v12[6];
  *(a1 + 1224) = v2;
  *(a1 + 1240) = v13;
  v3 = v12[3];
  *(a1 + 1144) = v12[2];
  *(a1 + 1160) = v3;
  v4 = v12[5];
  *(a1 + 1176) = v12[4];
  *(a1 + 1192) = v4;
  v5 = v12[1];
  *(a1 + 1112) = v12[0];
  *(a1 + 1128) = v5;
  v6 = type metadata accessor for ChartModel.Scenegraph(0);
  v7 = v6[14];
  v8 = *MEMORY[0x1E697E7D0];
  v9 = sub_1AAF8DF14();
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = a1 + v6[17];
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 40) = -1;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0;
  *(v10 + 88) = -1;
  *(v10 + 96) = 0u;
  *(v10 + 112) = 0u;
  *(v10 + 128) = 0;
  *(v10 + 136) = -1;
  *(v10 + 144) = 0u;
  *(v10 + 160) = 0u;
  *(v10 + 176) = 0;
  *(v10 + 184) = -1;
  *(v10 + 192) = 0u;
  *(v10 + 208) = 0u;
  *(v10 + 224) = 0;
  *(v10 + 232) = -1;
  *(v10 + 240) = 0u;
  *(v10 + 256) = 0u;
  *(v10 + 272) = 0;
  *(v10 + 280) = -1;
  *(v10 + 288) = 0u;
  *(v10 + 304) = 0u;
  *(v10 + 320) = 0;
  *(v10 + 328) = -1;
  *(v10 + 336) = 0u;
  *(v10 + 352) = 0u;
  *(v10 + 368) = 0;
  *(v10 + 376) = -1;
  *(v10 + 384) = 0u;
  *(v10 + 400) = 0u;
  *(v10 + 415) = 0;
  result = 0.0;
  *a1 = xmmword_1AAFA56E0;
  *(a1 + 16) = vdupq_n_s64(0xE000000000000000);
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 1;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 0u;
  *(a1 + v6[15]) = 0;
  *(a1 + v6[16]) = 0;
  return result;
}

BOOL sub_1AAE27E00(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 60);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    type metadata accessor for CGRect(0);
    sub_1AACF1A0C(&qword_1ED9B54E0, type metadata accessor for CGRect, MEMORY[0x1E695EF78]);

    v8 = sub_1AAF8EE64();

    return v8 & 1;
  }

  return result;
}

uint64_t *sub_1AAE27ED0()
{
  if (qword_1ED9B59F0 != -1)
  {
    swift_once();
  }

  sub_1AAE28CA4(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11]);

  return v0;
}

uint64_t sub_1AAE28044()
{
  sub_1AAE27ED0();

  return swift_deallocClassInstance();
}

void sub_1AAE28078(char a1, uint64_t a2, char a3)
{
  v5 = sub_1AAF8E7A4();
  v6 = sub_1AAF8E7A4();
  v7 = 240;
  if (v5 == v6)
  {
    v7 = 232;
  }

  v8 = *(v3 + v7);

  v9 = sub_1AAF8E7A4();
  v10 = sub_1AAF8E7A4();
  v11 = *(v3 + 64);
  v12 = v9 != v10;
  v57 = *(v3 + 48);
  v58 = v11;
  v59 = *(v3 + 80);
  v60 = *(v3 + 96);
  v13 = *(v3 + 32);
  v56[0] = *(v3 + 16);
  v56[1] = v13;
  v45 = v56[0];
  v46 = v13;
  v14 = *(v3 + 72);
  v54 = *(v3 + 56);
  v55 = v14;
  if (!v57)
  {
    v19 = *(v3 + 32);
    v61 = *(v3 + 16);
    v62 = v19;
    *&v63[8] = *(v3 + 56);
    *&v63[24] = *(v3 + 72);
    *v63 = 0;
    goto LABEL_12;
  }

  if (!*(*(&v59 + 1) + 16))
  {
    v20 = *(v3 + 32);
    v61 = *(v3 + 16);
    v62 = v20;
    *&v63[8] = *(v3 + 56);
    *&v63[24] = *(v3 + 72);
LABEL_11:
    *v63 = v57;
LABEL_12:
    *&v63[40] = *(&v59 + 1);
    LOWORD(v64) = v60;
    sub_1AACC9A40(v56, &v47, &qword_1ED9B5460, &type metadata for PartialSpec.Chart);
    sub_1AACC140C(&v61, &qword_1ED9B5460, &type metadata for PartialSpec.Chart);
    v18 = 0;
    if (!v8)
    {
      return;
    }

    goto LABEL_13;
  }

  v15 = sub_1AACB6398(v12);
  if ((v16 & 1) == 0)
  {
    v61 = v45;
    v62 = v46;
    *&v63[8] = v54;
    *&v63[24] = v55;
    goto LABEL_11;
  }

  v17 = *(*(*(&v59 + 1) + 56) + 72 * v15 + 64);
  v61 = v45;
  v62 = v46;
  *&v63[8] = v54;
  *&v63[24] = v55;
  *v63 = v57;
  *&v63[40] = *(&v59 + 1);
  LOWORD(v64) = v60;
  sub_1AACC9A40(v56, &v47, &qword_1ED9B5460, &type metadata for PartialSpec.Chart);
  sub_1AACC140C(&v61, &qword_1ED9B5460, &type metadata for PartialSpec.Chart);
  v18 = v17 == 1;
  if (!v8)
  {
    return;
  }

LABEL_13:
  sub_1AAE28B54(0, &qword_1ED9B3240, &qword_1ED9B4070, MEMORY[0x1E69E63B0], type metadata accessor for Signal);
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    if (v18)
    {

      sub_1AACD8DD8();
      swift_beginAccess();
      if (*(v22 + 40))
      {
        sub_1AACD8DD8();
        v23 = *(v22 + 40);
        v24 = *(v22 + 88);
        v25 = *(v22 + 120);
        v51 = *(v22 + 104);
        v52 = v25;
        v53 = *(v22 + 136);
        v49 = *(v22 + 72);
        v50 = v24;
        v26 = *(v22 + 56);
        v47 = v23;
        v48 = v26;
        if (v23)
        {
          v27 = *(v22 + 104);
          *&v63[16] = *(v22 + 88);
          *&v63[32] = v27;
          v64 = *(v22 + 120);
          v65 = *(v22 + 136);
          v28 = *(v22 + 56);
          v61 = *(v22 + 40);
          v62 = v28;
          *v63 = *(v22 + 72);
          sub_1AACE1D40();
          v29 = &qword_1ED9B4068;
          v30 = &qword_1ED9B4070;
          v31 = MEMORY[0x1E69E63B0];
LABEL_23:
          sub_1AACFEFFC(&v47, &v45, v29, v30, v31);

          sub_1AAE28C14(&v47, v29, v30, v31);
          return;
        }
      }

      goto LABEL_33;
    }

    if ((a3 & 1) == 0)
    {

      sub_1AACD8DD8();
      swift_beginAccess();
      if (*(v22 + 40))
      {
        sub_1AADC5DE0(*(v22 + 88));

        return;
      }

      goto LABEL_33;
    }

    goto LABEL_29;
  }

  sub_1AAE28B54(0, qword_1ED9AF680, qword_1ED9B40B8, MEMORY[0x1E69E6158], type metadata accessor for Signal);
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    goto LABEL_29;
  }

  v33 = v32;
  if (v18)
  {

    sub_1AACD8DD8();
    swift_beginAccess();
    if (*(v33 + 40))
    {
      sub_1AACD8DD8();
      v34 = *(v33 + 40);
      v35 = *(v33 + 88);
      v36 = *(v33 + 120);
      v51 = *(v33 + 104);
      v52 = v36;
      v53 = *(v33 + 136);
      v49 = *(v33 + 72);
      v50 = v35;
      v37 = *(v33 + 56);
      v47 = v34;
      v48 = v37;
      if (v34)
      {
        v38 = *(v33 + 104);
        *&v63[16] = *(v33 + 88);
        *&v63[32] = v38;
        v64 = *(v33 + 120);
        v65 = *(v33 + 136);
        v39 = *(v33 + 56);
        v61 = *(v33 + 40);
        v62 = v39;
        *v63 = *(v33 + 72);
        sub_1AACE1D40();
        v29 = &qword_1ED9B40B0;
        v30 = qword_1ED9B40B8;
        v31 = MEMORY[0x1E69E6158];
        goto LABEL_23;
      }
    }

LABEL_33:
    sub_1AAF902C4();
    __break(1u);
    return;
  }

  if (a3)
  {
LABEL_29:

    return;
  }

  sub_1AACD8DD8();
  swift_beginAccess();
  v40 = *(v33 + 40);
  v41 = *(v33 + 88);
  v42 = *(v33 + 120);
  *&v63[32] = *(v33 + 104);
  v64 = v42;
  v65 = *(v33 + 136);
  *v63 = *(v33 + 72);
  *&v63[16] = v41;
  v43 = *(v33 + 56);
  v61 = v40;
  v62 = v43;
  if (!v40)
  {
    goto LABEL_33;
  }

  v44 = MEMORY[0x1E69E6158];
  sub_1AACFEFFC(&v61, &v47, &qword_1ED9B40B0, qword_1ED9B40B8, MEMORY[0x1E69E6158]);

  sub_1AAE28C14(&v61, &qword_1ED9B40B0, qword_1ED9B40B8, v44);
}

void sub_1AAE286E0(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v6 = v4[18];
  v7 = (v6 + 40);
  if (a1)
  {
    v9 = v4[30];
    swift_retain_n();

    sub_1AACD8DD8();
    swift_beginAccess();
    if (*(v6 + 56))
    {
      goto LABEL_16;
    }

    v7 = (v6 + 48);
    v10 = a4;
  }

  else
  {
    v10 = a3;
    v9 = v4[29];
    swift_retain_n();

    sub_1AACD8DD8();
    swift_beginAccess();
    if (*(v6 + 56) == 1)
    {
      goto LABEL_16;
    }
  }

  v11 = *v7;

  if (!v9)
  {
LABEL_14:
    sub_1AAE28B30(&v49);
    goto LABEL_15;
  }

  sub_1AAE28B54(0, &qword_1ED9B3240, &qword_1ED9B4070, MEMORY[0x1E69E63B0], type metadata accessor for Signal);
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    sub_1AACD8DD8();
    swift_beginAccess();
    v14 = *(v13 + 40);
    v15 = *(v13 + 88);
    v16 = *(v13 + 120);
    v46 = *(v13 + 104);
    v47 = v16;
    v48 = *(v13 + 136);
    v44 = *(v13 + 72);
    v45 = v15;
    v17 = *(v13 + 56);
    v42 = v14;
    v43 = v17;
    if (v14)
    {
      v62 = v46;
      v63 = v47;
      v64 = v48;
      v58 = v42;
      v59 = v43;
      v60 = v44;
      v61 = v45;
      v65 = 0;
      sub_1AAE04C4C(&v58, v31, v11, v10);
      v18 = &qword_1ED9B4068;
      v19 = &qword_1ED9B4070;
      v20 = MEMORY[0x1E69E63B0];
LABEL_12:
      sub_1AACFEFFC(&v42, &v49, v18, v19, v20);

      v39 = v31[6];
      v40 = v31[7];
      v41 = v32;
      v35 = v31[2];
      v36 = v31[3];
      v37 = v31[4];
      v38 = v31[5];
      v33 = v31[0];
      v34 = v31[1];
      nullsub_1();
      v55 = v39;
      v56 = v40;
      v57 = v41;
      v51 = v35;
      v52 = v36;
      v53 = v37;
      v54 = v38;
      v49 = v33;
      v50 = v34;
LABEL_15:
      v27 = v56;
      *(a2 + 96) = v55;
      *(a2 + 112) = v27;
      *(a2 + 128) = v57;
      v28 = v52;
      *(a2 + 32) = v51;
      *(a2 + 48) = v28;
      v29 = v54;
      *(a2 + 64) = v53;
      *(a2 + 80) = v29;
      v30 = v50;
      *a2 = v49;
      *(a2 + 16) = v30;
      return;
    }

    goto LABEL_16;
  }

  sub_1AAE28B54(0, qword_1ED9AF680, qword_1ED9B40B8, MEMORY[0x1E69E6158], type metadata accessor for Signal);
  v21 = swift_dynamicCastClass();
  if (!v21)
  {

    goto LABEL_14;
  }

  v22 = v21;

  sub_1AACD8DD8();
  swift_beginAccess();
  v23 = *(v22 + 40);
  v24 = *(v22 + 88);
  v25 = *(v22 + 120);
  v46 = *(v22 + 104);
  v47 = v25;
  v48 = *(v22 + 136);
  v44 = *(v22 + 72);
  v45 = v24;
  v26 = *(v22 + 56);
  v42 = v23;
  v43 = v26;
  if (v23)
  {
    v62 = v46;
    v63 = v47;
    v64 = v48;
    v58 = v42;
    v59 = v43;
    v60 = v44;
    v61 = v45;
    v65 = 1;
    sub_1AAE04C4C(&v58, v31, v11, v10);
    v18 = &qword_1ED9B40B0;
    v19 = qword_1ED9B40B8;
    v20 = MEMORY[0x1E69E6158];
    goto LABEL_12;
  }

LABEL_16:
  sub_1AAF902C4();
  __break(1u);
}

unint64_t sub_1AAE28ACC()
{
  result = qword_1EB424158;
  if (!qword_1EB424158)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB424158);
  }

  return result;
}

double sub_1AAE28B30(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 255;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  return result;
}

void sub_1AAE28B54(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AAE28BBC(255, a3, a4, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1AAE28BBC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for ConcreteScale(0, a3, MEMORY[0x1E69E7DE0], a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AAE28C14(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAE28B54(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

double sub_1AAE28C84(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

double sub_1AAE28C94(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

double sub_1AAE28CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1AAE28D00()
{
  sub_1AACBFAEC();
  sub_1AAF8E144();
  return v1;
}

uint64_t EnvironmentValues.chartIsCanvasAccelerated.getter()
{
  sub_1AACBFE5C();
  sub_1AAF8E144();
  return v1;
}

uint64_t (*EnvironmentValues.chartIsCanvasAccelerated.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1AACBFE5C();
  sub_1AAF8E144();
  *(a1 + 16) = *(a1 + 17);
  return sub_1AAE28E1C;
}

double sub_1AAE28E54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  KeyPath = swift_getKeyPath();
  sub_1AAE2919C(0);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  sub_1AAE291F8(0);
  v10 = (a2 + *(v9 + 36));
  *v10 = KeyPath;
  v10[1] = v6;
  v10[2] = v5;

  return result;
}

double ChartPlotContent.body.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

double View.chartPlotStyle<A>(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  v14[0] = sub_1AAE290E0;
  v14[1] = v12;

  MEMORY[0x1AC597820](v14, a3, &type metadata for ChartPlotStyleModifier, a5);

  return result;
}

uint64_t sub_1AAE29040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v11 = *v8;
  v9(&v11, v7);
  return sub_1AAF8EF44();
}

unint64_t sub_1AAE2910C()
{
  result = qword_1ED9B12B0;
  if (!qword_1ED9B12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B12B0);
  }

  return result;
}

void sub_1AAE2919C(uint64_t a1)
{
  if (!qword_1ED9B0CF0)
  {
    sub_1AAE2910C();
    v1 = sub_1AAF8E4F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B0CF0);
    }
  }
}

void sub_1AAE291F8(uint64_t a1)
{
  if (!qword_1ED9B0CF8[0])
  {
    sub_1AAE2919C(255);
    sub_1AAE29260(255);
    v1 = sub_1AAF8DF74();
    if (!v2)
    {
      atomic_store(v1, qword_1ED9B0CF8);
    }
  }
}

void sub_1AAE29260(uint64_t a1)
{
  if (!qword_1ED9B0CE8)
  {
    sub_1AAE292B8();
    v1 = sub_1AAF8E724();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B0CE8);
    }
  }
}

void sub_1AAE292B8()
{
  if (!qword_1ED9B3738)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B3738);
    }
  }
}

unint64_t sub_1AAE29318()
{
  result = qword_1ED9B1200;
  if (!qword_1ED9B1200)
  {
    sub_1AAE291F8(255);
    sub_1AAE293F8(&qword_1ED9B11F8, sub_1AAE2919C, MEMORY[0x1E697FDF8]);
    sub_1AAE293F8(&qword_1ED9B11F0, sub_1AAE29260, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B1200);
  }

  return result;
}

uint64_t sub_1AAE293F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AAE29440(void (*a1)(uint64_t *__return_ptr, __int128 *))
{
  sub_1AAE2CCE4(v1, &v7, &qword_1EB4235D8, &type metadata for AnyPrimitiveFormat, MEMORY[0x1E69E6720]);
  if (v8[25] == 255)
  {
    return 0;
  }

  v5 = v7;
  v6[0] = *v8;
  *(v6 + 10) = *&v8[10];
  a1(&v9, &v5);
  if (v2)
  {
    result = sub_1AAD784B8(&v5);
    __break(1u);
  }

  else
  {
    sub_1AAD784B8(&v5);
    return v9;
  }

  return result;
}

void *sub_1AAE2950C(void *(*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return 0;
  }

  v7[0] = a3;
  v7[1] = a4;
  result = a1(&v8, v7);
  if (!v5)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAE29570(double a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (*(v1 + 104))
  {
    if (v2)
    {
      v5 = a1;

      v2(&v6, &v5);
      sub_1AACB4A98(v2, v3);
      if (v7)
      {
        return v6;
      }
    }
  }

  else if (v2)
  {
    v5 = a1;

    v2(&v6, &v5);
    sub_1AACB4A98(v2, v3);
    if ((v7 & 1) == 0)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1AAE29640(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = *v3;
  if (*(v3 + 104))
  {
    if (a3 == 2)
    {
      v6[0] = a1;
      v6[1] = a2;
      v4(&v7, v6);
      return v7;
    }
  }

  else if (a3 <= 1u)
  {
    v7 = a1;
    (v4)(v6, &v7, a2);
    return v6[0];
  }

  return 0;
}

double sub_1AAE296D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  sub_1AAE2CCE4(v5, &v27, &qword_1ED9B3E08, &type metadata for AnyChartSymbolShape, type metadata accessor for AnyConcreteScale);
  if (v35)
  {
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v19 = v27;
    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    if (a3 == 2)
    {
      *&v16 = a1;
      *(&v16 + 1) = a2;
      (v19)(&v16);
      sub_1AAE2D0DC(&v19, &qword_1ED9B4080, MEMORY[0x1E69E6158], v11);
    }

    else
    {
      sub_1AAE2D0DC(&v19, &qword_1ED9B4080, MEMORY[0x1E69E6158], v10);
      result = 0.0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0;
    }
  }

  else
  {
    v24 = v32;
    v25 = v33;
    v26 = v34;
    v19 = v27;
    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    if (a3 > 1u)
    {
      sub_1AAE2D0DC(&v19, &qword_1EB4259C8, MEMORY[0x1E69E63B0], v10);
      v16 = 0u;
      v17 = 0u;
      v18 = 0;
    }

    else
    {
      v15 = a1;
      (v19)(&v16, &v15);
      sub_1AAE2D0DC(&v19, &qword_1EB4259C8, MEMORY[0x1E69E63B0], v13);
    }

    result = *&v16;
    v14 = v17;
    *a4 = v16;
    *(a4 + 16) = v14;
    *(a4 + 32) = v18;
  }

  return result;
}

void sub_1AAE298A4(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v9 = v4[7];
  v40[6] = v4[6];
  v40[7] = v9;
  v41 = *(v4 + 128);
  v10 = v4[3];
  v40[2] = v4[2];
  v40[3] = v10;
  v11 = v4[5];
  v40[4] = v4[4];
  v40[5] = v11;
  v12 = v4[1];
  v40[0] = *v4;
  v40[1] = v12;
  if (sub_1AAE2D190(v40) != 1)
  {
    nullsub_1();
    v18 = v4[7];
    v37 = v4[6];
    v38 = v18;
    v39 = *(v4 + 128);
    v19 = v4[3];
    v33 = v4[2];
    v34 = v19;
    v20 = v4[5];
    v35 = v4[4];
    v36 = v20;
    v21 = v4[1];
    v31 = *v4;
    v32 = v21;
    nullsub_1();
    if (a3 <= 1u)
    {
      v26[0] = a1;
      goto LABEL_6;
    }

    v25 = 0;
    v24 = 0;
    v23 = 0;
LABEL_9:
    v22 = 0uLL;
    goto LABEL_10;
  }

  nullsub_1();
  v13 = v4[7];
  v37 = v4[6];
  v38 = v13;
  v39 = *(v4 + 128);
  v14 = v4[3];
  v33 = v4[2];
  v34 = v14;
  v15 = v4[5];
  v35 = v4[4];
  v36 = v15;
  v16 = v4[1];
  v31 = *v4;
  v32 = v16;
  nullsub_1();
  if (a3 != 2)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_9;
  }

  v26[0] = a1;
  v26[1] = a2;
LABEL_6:
  (*v17)(&v27, v26);
  v22 = v27;
  v23 = v28;
  v24 = v29;
  v25 = v30;
LABEL_10:
  *a4 = v22;
  *(a4 + 16) = v23;
  *(a4 + 24) = v24;
  *(a4 + 32) = v25;
}

uint64_t sub_1AAE29A08(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = *v3;
  if (*(v3 + 96))
  {
    if (a3 == 2)
    {
      v6[0] = a1;
      v6[1] = a2;
      v4(&v7, v6);
      return v7;
    }
  }

  else if (a3 <= 1u)
  {
    v7 = a1;
    (v4)(v6, &v7, a2);
    return v6[0];
  }

  return 0;
}

uint64_t sub_1AAE29A94@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a2;
  v29 = a1;
  v26 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23, v19);
  if ((*(v14 + 48))(v21, 1, v13) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v14 + 32))(v17, v21, v13);
  v29(v17, v11);
  result = (*(v14 + 8))(v17, v13);
  if (v6)
  {
    return (*(v26 + 32))(v27, v11, a3);
  }

  return result;
}

void ChartProxy.plotAreaFrame.getter()
{
  if (*(v0 + *(type metadata accessor for ChartModel.Scenegraph(0) + 60)))
  {
  }

  else
  {
    sub_1AAF902C4();
    __break(1u);
  }
}

double ChartProxy.plotFrame.getter()
{
  type metadata accessor for ChartModel.Scenegraph(0);

  return result;
}

uint64_t ChartProxy.position<A>(forX:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 640) == 255)
  {
    return 0;
  }

  v4 = sub_1AACD78AC(a1, a2, a3);
  v6 = v5;
  v8 = v7;
  v9.n128_u64[0] = 0;
  v10 = sub_1AAE08320(v4, v5, v7, v9);
  v12 = v11;
  v14 = v13;
  v15 = sub_1AACCA728(v4, v6, v8);
  MEMORY[0x1EEE9AC00](v15);
  if (v14)
  {
    return 0;
  }

  *&v17[0] = v10;
  v17[1] = v12;
  sub_1AAE2CBE4(v17, v18);
  return *&v18[0];
}

uint64_t sub_1AAE29F20@<X0>(double *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = sub_1AAF8DF14();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*a1 + a1[1]) * 0.5;
  type metadata accessor for ChartModel.Scenegraph(0);
  (*(v7 + 104))(v9, *MEMORY[0x1E697E7D8], v6);
  LOBYTE(a1) = sub_1AAF8DF04();
  result = (*(v7 + 8))(v9, v6);
  if (a1)
  {
    v10 = *(a2 + 1248) - v10;
  }

  *a3 = v10;
  return result;
}

double ChartProxy.position<A>(forY:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 752) != 255)
  {
    v4 = sub_1AACD78AC(a1, a2, a3);
    v6 = v5;
    v8 = v7;
    v9.n128_u64[0] = 0;
    v10 = COERCE_DOUBLE(sub_1AAE08320(v4, v5, v7, v9));
    v12 = v11;
    v14 = v13;
    sub_1AACCA728(v4, v6, v8);
    if ((v14 & 1) == 0)
    {
      return (v10 + v12) * 0.5;
    }
  }

  return result;
}

uint64_t ChartProxy.position<A, B>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v25 - v15;
  (*(*(a3 - 8) + 16))(&v25 - v15, a1, a3, v14);
  v17 = *(TupleTypeMetadata2 + 48);
  (*(*(a4 - 8) + 16))(&v16[v17], a2, a4);
  v18 = ChartProxy.position<A>(forX:)(v16, a3, a5);
  if (v19)
  {
    (*(v13 + 8))(v16, TupleTypeMetadata2);
    return 0;
  }

  v20 = v18;
  v21 = ChartProxy.position<A>(forY:)(&v16[v17], a4, a6);
  v23 = v22;
  (*(v13 + 8))(v16, TupleTypeMetadata2, v21);
  if (v23)
  {
    return 0;
  }

  return v20;
}

void *ChartProxy.positionRange<A>(forX:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1AAF8DF14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 640);
  if (v12 == 255)
  {
    v22 = 0.0;
    v24 = 0.0;
    v26 = 1;
  }

  else
  {
    v32 = *(v4 + 632);
    v13 = *(v4 + 616);
    v31[5] = *(v4 + 600);
    v31[6] = v13;
    v14 = *(v4 + 552);
    v31[1] = *(v4 + 536);
    v31[2] = v14;
    v15 = *(v4 + 584);
    v31[3] = *(v4 + 568);
    v31[4] = v15;
    v33 = v12;
    v16 = sub_1AACD78AC(a1, a2, a3);
    v18 = v17;
    v20 = v19;
    v21.n128_u64[0] = 0;
    v22 = COERCE_DOUBLE(sub_1AAE08320(v16, v17, v19, v21));
    v24 = v23;
    v26 = v25;
    sub_1AACCA728(v16, v18, v20);
  }

  type metadata accessor for ChartModel.Scenegraph(0);
  (*(v9 + 104))(v11, *MEMORY[0x1E697E7D8], v8);
  v27 = sub_1AAF8DF04();
  result = (*(v9 + 8))(v11, v8);
  if (v27)
  {
    MEMORY[0x1EEE9AC00](result);
    *&v31[-1] = v4;
    return sub_1AAE2950C(sub_1AAE2CC04, &v31[-2], *&v22, *&v24, v26 & 1);
  }

  else if (v26)
  {
    return 0;
  }

  else
  {
    v29 = v22;
    if (v24 >= v22)
    {
      v30 = v22;
    }

    else
    {
      v30 = v24;
    }

    if (v22 <= v24)
    {
      v29 = v24;
    }

    if (v30 > v29)
    {
      __break(1u);
    }

    else
    {
      return *&v30;
    }
  }

  return result;
}

uint64_t ChartProxy.positionRange<A>(forY:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 752) == 255)
  {
    return 0;
  }

  v4 = sub_1AACD78AC(a1, a2, a3);
  v6 = v5;
  v8 = v7;
  v9.n128_u64[0] = 0;
  v10 = COERCE_DOUBLE(sub_1AAE08320(v4, v5, v7, v9));
  v12 = v11;
  v14 = v13;
  result = sub_1AACCA728(v4, v6, v8);
  if (v14)
  {
    return 0;
  }

  v16 = v10;
  if (v12 >= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v12;
  }

  if (v10 <= v12)
  {
    v16 = v12;
  }

  if (v17 <= v16)
  {
    return *&v17;
  }

  __break(1u);
  return result;
}

uint64_t ChartProxy.positionRange<A, B>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v33 - v16;
  (*(*(a3 - 8) + 16))(&v33 - v16, a1, a3, v15);
  v18 = *(TupleTypeMetadata2 + 48);
  (*(*(a4 - 8) + 16))(&v17[v18], a2, a4);
  v19 = COERCE_DOUBLE(ChartProxy.positionRange<A>(forX:)(v17, a3, a5));
  if (v21)
  {
    result = (*(v14 + 8))(v17, TupleTypeMetadata2);
  }

  else
  {
    v23 = v19;
    v24 = v20;
    v25 = COERCE_DOUBLE(ChartProxy.positionRange<A>(forY:)(&v17[v18], a4, v34));
    v27 = v26;
    v29 = v28;
    result = (*(v14 + 8))(v17, TupleTypeMetadata2);
    if ((v29 & 1) == 0)
    {
      v30 = 0;
      v31 = v24 - v23;
      v32 = v27 - v25;
      goto LABEL_6;
    }
  }

  v23 = 0.0;
  v25 = 0.0;
  v30 = 1;
  v31 = 0.0;
  v32 = 0.0;
LABEL_6:
  *a7 = v23;
  *(a7 + 8) = v25;
  *(a7 + 16) = v31;
  *(a7 + 24) = v32;
  *(a7 + 32) = v30;
  return result;
}

uint64_t ChartProxy.value<A>(atX:as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = sub_1AAF8DF14();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 640);
  if (v13 == 255)
  {
    v18 = 0;
    v20 = 0;
    v22 = -1;
  }

  else
  {
    v35 = *(v4 + 632);
    v14 = *(v4 + 616);
    v33 = *(v4 + 600);
    v34 = v14;
    v15 = *(v4 + 552);
    v29 = *(v4 + 536);
    v30 = v15;
    v16 = *(v4 + 584);
    v31 = *(v4 + 568);
    v32 = v16;
    v36 = v13;
    type metadata accessor for ChartModel.Scenegraph(0);
    (*(v10 + 104))(v12, *MEMORY[0x1E697E7D8], v9);
    v17 = sub_1AAF8DF04();
    (*(v10 + 8))(v12, v9);
    if (v17)
    {
      a4 = *(v4 + 1248) - a4;
    }

    v18 = sub_1AAE29570(a4);
    v20 = v19;
    v22 = v21;
  }

  v27[1] = v18;
  v27[2] = v20;
  v28 = v22;
  MEMORY[0x1EEE9AC00](v18);
  v27[-4] = a1;
  v27[-3] = a2;
  v27[-2] = a1;
  v24 = v23;
  sub_1AAE2CF60(0, qword_1ED9B3978, &type metadata for AnyPrimitivePlottable, MEMORY[0x1E69E6720]);
  sub_1AAE29A94(sub_1AAE2CC3C, &v27[-6], MEMORY[0x1E69E73E0], a1, v25, a3);
  return sub_1AAE2CC54(v24, v20, v22);
}

uint64_t ChartProxy.value<A>(atY:as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = *(v4 + 752);
  if (v8 == 255)
  {
    v12 = 0;
    v14 = 0;
    v16 = -1;
  }

  else
  {
    v29 = *(v4 + 744);
    v9 = *(v4 + 728);
    v27 = *(v4 + 712);
    v28 = v9;
    v10 = *(v4 + 664);
    v23 = *(v4 + 648);
    v24 = v10;
    v11 = *(v4 + 696);
    v25 = *(v4 + 680);
    v26 = v11;
    v30 = v8;
    v12 = sub_1AAE29570(a4);
    v14 = v13;
    v16 = v15;
  }

  v21[7] = v12;
  v21[8] = v14;
  v22 = v16;
  MEMORY[0x1EEE9AC00](v12);
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a1;
  v18 = v17;
  sub_1AAE2CF60(0, qword_1ED9B3978, &type metadata for AnyPrimitivePlottable, MEMORY[0x1E69E6720]);
  sub_1AAE29A94(sub_1AAE2D198, v21, MEMORY[0x1E69E73E0], a1, v19, a3);
  return sub_1AAE2CC54(v18, v14, v16);
}

uint64_t ChartProxy.value<A, B>(at:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v36 = a4;
  v38 = a5;
  v12 = sub_1AAF8FE74();
  v34 = *(v12 - 8);
  v35 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v37 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v33 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1AAF8FE74();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - v19;
  v21 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChartProxy.value<A>(atX:as:)(a1, a3, v20, a6);
  if ((*(v21 + 48))(v20, 1, a1) == 1)
  {
    (*(v18 + 8))(v20, v17);
LABEL_5:
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v38, 1, 1, TupleTypeMetadata2);
  }

  v25 = *(v21 + 32);
  v25(v24, v20, a1);
  ChartProxy.value<A>(atY:as:)(a2, v36, v14, a7);
  v26 = v37;
  if ((*(v37 + 48))(v14, 1, a2) == 1)
  {
    (*(v21 + 8))(v24, a1);
    (*(v34 + 8))(v14, v35);
    goto LABEL_5;
  }

  v37 = *(v26 + 32);
  v29 = v33;
  (v37)(v33, v14, a2);
  v30 = swift_getTupleTypeMetadata2();
  v31 = *(v30 + 48);
  v32 = v38;
  v25(v38, v24, a1);
  (v37)(&v32[v31], v29, a2);
  return (*(*(v30 - 8) + 56))(v32, 0, 1, v30);
}

double ChartProxy.plotContainerFrame.getter()
{
  type metadata accessor for ChartModel.Scenegraph(0);

  return result;
}

uint64_t ChartProxy.foregroundStyle<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 856) == 255)
  {
    return 0;
  }

  v4 = sub_1AACD78AC(a1, a2, a3);
  v6 = v5;
  v8 = v7;
  v9 = sub_1AAE29A08(v4, v5, v7);
  sub_1AACCA728(v4, v6, v8);
  return v9;
}

uint64_t ChartProxy.lineStyle<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 1224);
  v41 = *(v4 + 1208);
  v42 = v9;
  v43 = *(v4 + 1240);
  v10 = *(v4 + 1160);
  v37 = *(v4 + 1144);
  v38 = v10;
  v11 = *(v4 + 1192);
  v39 = *(v4 + 1176);
  v40 = v11;
  v12 = *(v4 + 1128);
  v35 = *(v4 + 1112);
  v36 = v12;
  result = sub_1AAD05174(&v35);
  if (result == 1)
  {
    v14 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  else
  {
    v32 = v41;
    v33 = v42;
    v34 = v43;
    v28 = v37;
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v26 = v35;
    v27 = v36;
    v17 = sub_1AACD78AC(a1, a2, a3);
    v19 = v18;
    v21 = v20;
    sub_1AAE298A4(v17, v18, v20, v24);
    v22 = v24[1];
    v23 = v24[0];
    v14 = v25;
    result = sub_1AACCA728(v17, v19, v21);
    v16 = v22;
    v15 = v23;
  }

  *a4 = v15;
  *(a4 + 16) = v16;
  *(a4 + 32) = v14;
  return result;
}

double ChartProxy.symbol<A>(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1AAE2CFB0(v4 + 864, v15, sub_1AACC9CF4);
  if (v15[128] == 255)
  {
    sub_1AAE2D018(v15, sub_1AACC9CF4);
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    v9 = sub_1AACD78AC(a1, a2, a3);
    v11 = v10;
    v13 = v12;
    sub_1AAE296D8(v9, v10, v12, a4);
    sub_1AACCA728(v9, v11, v13);
    sub_1AACD222C(v15, &qword_1ED9B3E08, &type metadata for AnyChartSymbolShape, type metadata accessor for AnyConcreteScale);
  }

  return result;
}

uint64_t ChartProxy.symbolSize<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 1104) == 255)
  {
    return 0;
  }

  v4 = sub_1AACD78AC(a1, a2, a3);
  v6 = v5;
  v8 = v7;
  v9 = sub_1AAE29640(v4, v5, v7);
  sub_1AACCA728(v4, v6, v8);
  return v9;
}

uint64_t ChartProxy.xDomain<A>(dataType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 640);
  if (v5 == 255 || (v7 = *(v3 + 584), v8 = *(v3 + 616), v28 = *(v3 + 600), v29 = v8, v9 = *(v3 + 552), v25[0] = *(v3 + 536), v25[1] = v9, v10 = *(v3 + 584), v12 = *(v3 + 536), v11 = *(v3 + 552), v26 = *(v3 + 568), v27 = v10, v13 = *(v3 + 616), v23 = v28, *v24 = v13, v19 = v12, v20 = v11, v30 = *(v3 + 632), v31 = v5, *&v24[16] = *(v3 + 632), v21 = v26, v22 = v7, v24[24] = v5, v14 = MEMORY[0x1E69E7DE0], sub_1AAE2CCE4(v25, &v18, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale), sub_1AAE2CF60(0, &qword_1ED9B3E38, v14, type metadata accessor for AnyConcreteScale), v16 = sub_1AAE08520(a2, v15, a2, a3), v32[4] = v23, v33[0] = *v24, *(v33 + 9) = *&v24[9], v32[0] = v19, v32[1] = v20, v32[2] = v21, v32[3] = v22, sub_1AACD222C(v32, &qword_1ED9B3E38, v14, type metadata accessor for AnyConcreteScale), !v16))
  {
    v16 = sub_1AAF8F894();
  }

  return v16;
}

uint64_t ChartProxy.yDomain<A>(dataType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 752);
  if (v5 == 255 || (v7 = *(v3 + 696), v8 = *(v3 + 728), v28 = *(v3 + 712), v29 = v8, v9 = *(v3 + 664), v25[0] = *(v3 + 648), v25[1] = v9, v10 = *(v3 + 696), v12 = *(v3 + 648), v11 = *(v3 + 664), v26 = *(v3 + 680), v27 = v10, v13 = *(v3 + 728), v23 = v28, *v24 = v13, v19 = v12, v20 = v11, v30 = *(v3 + 744), v31 = v5, *&v24[16] = *(v3 + 744), v21 = v26, v22 = v7, v24[24] = v5, v14 = MEMORY[0x1E69E7DE0], sub_1AAE2CCE4(v25, &v18, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale), sub_1AAE2CF60(0, &qword_1ED9B3E38, v14, type metadata accessor for AnyConcreteScale), v16 = sub_1AAE08520(a2, v15, a2, a3), v32[4] = v23, v33[0] = *v24, *(v33 + 9) = *&v24[9], v32[0] = v19, v32[1] = v20, v32[2] = v21, v32[3] = v22, sub_1AACD222C(v32, &qword_1ED9B3E38, v14, type metadata accessor for AnyConcreteScale), !v16))
  {
    v16 = sub_1AAF8F894();
  }

  return v16;
}

uint64_t ChartProxy.foregroundStyleDomain<A>(dataType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 856);
  if (v5 == 255 || (v7 = *(v3 + 808), v8 = *(v3 + 776), v26 = *(v3 + 792), v27 = v7, v9 = *(v3 + 808), v10 = *(v3 + 840), v28 = *(v3 + 824), v29 = v10, v11 = *(v3 + 776), v25[0] = *(v3 + 760), v25[1] = v11, v20 = v26, v21 = v9, v12 = *(v3 + 840), v22 = v28, v23 = v12, v30 = v5, v18 = v25[0], v19 = v8, v24 = v5, v13 = MEMORY[0x1E697E0B8], sub_1AAE2CCE4(v25, v17, &qword_1ED9B3E28, MEMORY[0x1E697E0B8], type metadata accessor for AnyConcreteScale), sub_1AAE2CF60(0, &qword_1ED9B3E28, v13, type metadata accessor for AnyConcreteScale), v15 = sub_1AAE08520(a2, v14, a2, a3), v31[4] = v22, v31[5] = v23, v32 = v24, v31[0] = v18, v31[1] = v19, v31[2] = v20, v31[3] = v21, sub_1AACD222C(v31, &qword_1ED9B3E28, v13, type metadata accessor for AnyConcreteScale), !v15))
  {
    v15 = sub_1AAF8F894();
  }

  return v15;
}

uint64_t ChartProxy.symbolDomain<A>(dataType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AAE2CFB0(v3 + 864, v9, sub_1AACC9CF4);
  if (v9[128] == 255)
  {
    sub_1AAE2D018(v9, sub_1AACC9CF4);
LABEL_5:
    v7 = sub_1AAF8F894();

    return v7;
  }

  sub_1AAE2CF60(0, &qword_1ED9B3E08, &type metadata for AnyChartSymbolShape, type metadata accessor for AnyConcreteScale);
  v7 = sub_1AAE08520(a2, v6, a2, a3);
  sub_1AACD222C(v9, &qword_1ED9B3E08, &type metadata for AnyChartSymbolShape, type metadata accessor for AnyConcreteScale);
  if (!v7)
  {
    goto LABEL_5;
  }

  return v7;
}

uint64_t ChartProxy.symbolSizeDomain<A>(dataType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 1104);
  if (v5 == 255 || (v7 = *(v3 + 1048), v8 = *(v3 + 1080), v28 = *(v3 + 1064), v29 = v8, v9 = *(v3 + 1016), v25[0] = *(v3 + 1000), v25[1] = v9, v10 = *(v3 + 1048), v12 = *(v3 + 1000), v11 = *(v3 + 1016), v26 = *(v3 + 1032), v27 = v10, v13 = *(v3 + 1080), v23 = v28, *v24 = v13, v19 = v12, v20 = v11, v30 = *(v3 + 1096), v31 = v5, *&v24[16] = *(v3 + 1096), v21 = v26, v22 = v7, v24[24] = v5, v14 = MEMORY[0x1E69E7DE0], sub_1AAE2CCE4(v25, &v18, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale), sub_1AAE2CF60(0, &qword_1ED9B3E38, v14, type metadata accessor for AnyConcreteScale), v16 = sub_1AAE08520(a2, v15, a2, a3), v32[4] = v23, v33[0] = *v24, *(v33 + 9) = *&v24[9], v32[0] = v19, v32[1] = v20, v32[2] = v21, v32[3] = v22, sub_1AACD222C(v32, &qword_1ED9B3E38, v14, type metadata accessor for AnyConcreteScale), !v16))
  {
    v16 = sub_1AAF8F894();
  }

  return v16;
}

uint64_t ChartProxy.lineStyleDomain<A>(dataType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = *(v3 + 1240);
  v6 = (v3 + 1112);
  v7 = v6[7];
  v39 = v6[6];
  v40 = v7;
  v8 = v6[3];
  v35 = v6[2];
  v36 = v8;
  v9 = v6[5];
  v37 = v6[4];
  v38 = v9;
  v10 = v6[1];
  v33 = *v6;
  v34 = v10;
  if (sub_1AAD05174(&v33) == 1 || (v11 = v6[7], v29[6] = v6[6], v29[7] = v11, v30 = *(v6 + 128), v12 = v6[3], v29[2] = v6[2], v29[3] = v12, v13 = v6[5], v29[4] = v6[4], v29[5] = v13, v14 = v6[1], v29[0] = *v6, v29[1] = v14, v26 = v39, v27 = v40, v28 = v41, v22 = v35, v23 = v36, v24 = v37, v25 = v38, v20 = v33, v21 = v34, v15 = MEMORY[0x1E697DD48], sub_1AAE2CCE4(v29, v19, &qword_1ED9B3E18, MEMORY[0x1E697DD48], type metadata accessor for AnyConcreteScale), sub_1AAE2CF60(0, &qword_1ED9B3E18, v15, type metadata accessor for AnyConcreteScale), v17 = sub_1AAE08520(a2, v16, a2, a3), v31[6] = v26, v31[7] = v27, v32 = v28, v31[2] = v22, v31[3] = v23, v31[4] = v24, v31[5] = v25, v31[0] = v20, v31[1] = v21, sub_1AACD222C(v31, &qword_1ED9B3E18, v15, type metadata accessor for AnyConcreteScale), !v17))
  {
    v17 = sub_1AAF8F894();
  }

  return v17;
}

void ChartProxy.selectXValue(at:)(double a1)
{
  v3 = sub_1AAF8DF14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v7 = type metadata accessor for ChartModel.Scenegraph(0);
  sub_1AAE2CCE4(v1 + *(v7 + 68), &v16, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding, MEMORY[0x1E69E6720]);
  if (v17[24] == 255)
  {
    sub_1AACD222C(&v16, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding, MEMORY[0x1E69E6720]);
    sub_1AAF885A0(10);
  }

  else
  {
    v18 = v16;
    v19[0] = *v17;
    *(v19 + 9) = *&v17[9];
    v8 = *(v1 + 640);
    if (v8 != 255)
    {
      v20 = *(v1 + 632);
      v9 = *(v1 + 616);
      v19[6] = *(v1 + 600);
      v19[7] = v9;
      v10 = *(v1 + 552);
      v19[2] = *(v1 + 536);
      v19[3] = v10;
      v11 = *(v1 + 584);
      v19[4] = *(v1 + 568);
      v19[5] = v11;
      v21 = v8;
      (*(v4 + 104))(v6, *MEMORY[0x1E697E7D8], v3);
      v12 = sub_1AAF8DF04();
      (*(v4 + 8))(v6, v3);
      if (v12)
      {
        a1 = *(v1 + 1248) - a1;
      }

      v13 = sub_1AAE29570(a1);
      if (v15 != -1)
      {
        sub_1AAE84DC0(v13, v14, v15);
      }
    }

    sub_1AAD9E1BC(&v18);
  }
}

void ChartProxy.selectYValue(at:)(double a1)
{
  v3 = type metadata accessor for ChartModel.Scenegraph(0);
  sub_1AAE2CCE4(v1 + *(v3 + 68) + 96, &v13, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding, MEMORY[0x1E69E6720]);
  if (v14[24] == 255)
  {
    sub_1AACD222C(&v13, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding, MEMORY[0x1E69E6720]);
    sub_1AAF885A0(10);
    return;
  }

  v15 = v13;
  v16[0] = *v14;
  *(v16 + 9) = *&v14[9];
  v4 = *(v1 + 752);
  if (v4 != 255)
  {
    v5 = *(v1 + 680);
    v6 = *(v1 + 688);
    if (v4)
    {
      if (!v5)
      {
        goto LABEL_12;
      }

      v10 = a1;

      v5(&v11, &v10);
      sub_1AACB4A98(v5, v6);
      v7 = v12;
      if (!v12)
      {
        goto LABEL_12;
      }

      v8 = v11;
      v9 = 2;
    }

    else
    {
      if (!v5)
      {
        goto LABEL_12;
      }

      v10 = a1;

      v5(&v11, &v10);
      sub_1AACB4A98(v5, v6);
      if (v12)
      {
        goto LABEL_12;
      }

      v7 = 0;
      v9 = 0;
      v8 = v11;
    }

    sub_1AAE84DC0(v8, v7, v9);
  }

LABEL_12:
  sub_1AAD9E1BC(&v15);
}

void ChartProxy.selectXRange(from:to:)(double a1, double a2)
{
  v3 = v2;
  v6 = sub_1AAF8DF14();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ChartModel.Scenegraph(0);
  sub_1AAE2CCE4(v3 + *(v10 + 68) + 48, &v36, &qword_1ED9B48A0, &type metadata for AnyPrimitivePlottableRangeBinding, MEMORY[0x1E69E6720]);
  if (BYTE8(v37[1]) == 255)
  {
    sub_1AACD222C(&v36, &qword_1ED9B48A0, &type metadata for AnyPrimitivePlottableRangeBinding, MEMORY[0x1E69E6720]);
    sub_1AAF885A0(10);
  }

  else
  {
    v38 = v36;
    v39[0] = v37[0];
    *(v39 + 9) = *(v37 + 9);
    v11 = *(v3 + 640);
    if (v11 == 255)
    {
      goto LABEL_11;
    }

    v12 = *(v3 + 616);
    v46 = *(v3 + 600);
    v47 = v12;
    v48 = *(v3 + 632);
    v13 = *(v3 + 552);
    v42 = *(v3 + 536);
    v43 = v13;
    v14 = *(v3 + 584);
    v44 = *(v3 + 568);
    v45 = v14;
    v49 = v11;
    v15 = *(v10 + 56);
    v16 = *MEMORY[0x1E697E7D8];
    v34 = *(v7 + 104);
    v34(v9, v16, v6);
    v35 = v15;
    LOBYTE(v15) = sub_1AAF8DF04();
    v17 = *(v7 + 8);
    v17(v9, v6);
    if (v15)
    {
      a1 = *(v3 + 1248) - a1;
    }

    v18 = sub_1AAE29570(a1);
    if (v20 == 0xFF)
    {
      goto LABEL_11;
    }

    v32 = v18;
    v33 = v19;
    v21 = *(v3 + 640);
    if (v21 == 255)
    {
      v29 = v20;
      sub_1AAE2CD54(&v38);
      sub_1AAE2CC54(v32, v33, v29);
    }

    else
    {
      v31 = v20;
      v22 = *(v3 + 616);
      v39[6] = *(v3 + 600);
      v39[7] = v22;
      v40 = *(v3 + 632);
      v23 = *(v3 + 552);
      v39[2] = *(v3 + 536);
      v39[3] = v23;
      v24 = *(v3 + 584);
      v39[4] = *(v3 + 568);
      v39[5] = v24;
      v41 = v21;
      v34(v9, v16, v6);
      v25 = sub_1AAF8DF04();
      v17(v9, v6);
      if (v25)
      {
        a2 = *(v3 + 1248) - a2;
      }

      v26 = sub_1AAE29570(a2);
      if (v28 != -1)
      {
        sub_1AAE84F4C(v32, v33, v31, v26, v27, v28);
LABEL_11:
        sub_1AAE2CD54(&v38);
        return;
      }

      sub_1AAE2CD54(&v38);
      sub_1AAE2CC54(v32, v33, v31);
    }
  }
}

void ChartProxy.selectYRange(from:to:)(double a1, double a2)
{
  v5 = type metadata accessor for ChartModel.Scenegraph(0);
  sub_1AAE2CCE4(v2 + *(v5 + 68) + 144, &v20, &qword_1ED9B48A0, &type metadata for AnyPrimitivePlottableRangeBinding, MEMORY[0x1E69E6720]);
  if (v21[24] == 255)
  {
    sub_1AACD222C(&v20, &qword_1ED9B48A0, &type metadata for AnyPrimitivePlottableRangeBinding, MEMORY[0x1E69E6720]);
    sub_1AAF885A0(10);
    return;
  }

  v22 = v20;
  v23[0] = *v21;
  *(v23 + 9) = *&v21[9];
  v6 = *(v2 + 752);
  if (v6 == 255)
  {
    goto LABEL_14;
  }

  v7 = *(v2 + 680);
  v8 = *(v2 + 688);
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v19 = a1;

    v7(v24, &v19);
    sub_1AACB4A98(v7, v8);
    v9 = *(&v24[0] + 1);
    if (!*(&v24[0] + 1))
    {
      goto LABEL_14;
    }

    v10 = *&v24[0];
    v11 = 2;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v19 = a1;

    v7(v24, &v19);
    sub_1AACB4A98(v7, v8);
    if (BYTE8(v24[0]))
    {
      goto LABEL_14;
    }

    v9 = 0;
    v11 = 0;
    v10 = *&v24[0];
  }

  v12 = *(v2 + 752);
  if (v12 != 255)
  {
    v13 = *(v2 + 728);
    v24[4] = *(v2 + 712);
    v24[5] = v13;
    v25 = *(v2 + 744);
    v14 = *(v2 + 664);
    v24[0] = *(v2 + 648);
    v24[1] = v14;
    v15 = *(v2 + 696);
    v24[2] = *(v2 + 680);
    v24[3] = v15;
    v26 = v12;
    v16 = sub_1AAE29570(a2);
    if (v18 != -1)
    {
      sub_1AAE84F4C(v10, v9, v11, v16, v17, v18);
LABEL_14:
      sub_1AAE2CD54(&v22);
      return;
    }
  }

  sub_1AAE2CD54(&v22);
  sub_1AAE2CC54(v10, v9, v11);
}

void ChartProxy.selectAngleValue(at:)(double a1)
{
  v3 = sub_1AAF8DF14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v7 = type metadata accessor for ChartModel.Scenegraph(0);
  sub_1AAE2CCE4(v1 + *(v7 + 68) + 288, &v19, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding, MEMORY[0x1E69E6720]);
  if (v20[24] == 255)
  {
    sub_1AACD222C(&v19, &unk_1ED9B4890, &type metadata for AnyPrimitivePlottableOptionalBinding, MEMORY[0x1E69E6720]);
    sub_1AAF885A0(10);
  }

  else
  {
    v21 = v19;
    v22[0] = *v20;
    *(v22 + 9) = *&v20[9];
    v8 = *(v1 + 640);
    if (v8 != 255)
    {
      v9 = *(v1 + 1248);
      v10 = a1 * 57.2957795 / 360.0 * v9;
      v23 = *(v1 + 632);
      v11 = *(v1 + 616);
      v22[6] = *(v1 + 600);
      v22[7] = v11;
      v12 = *(v1 + 552);
      v22[2] = *(v1 + 536);
      v22[3] = v12;
      v13 = *(v1 + 584);
      v22[4] = *(v1 + 568);
      v22[5] = v13;
      v24 = v8;
      (*(v4 + 104))(v6, *MEMORY[0x1E697E7D8], v3);
      v14 = sub_1AAF8DF04();
      (*(v4 + 8))(v6, v3);
      v15 = v9 - v10;
      if ((v14 & 1) == 0)
      {
        v15 = v10;
      }

      v16 = sub_1AAE29570(v15);
      if (v18 != -1)
      {
        sub_1AAE84DC0(v16, v17, v18);
      }
    }

    sub_1AAD9E1BC(&v21);
  }
}

double ChartProxy.angle(at:)(double a1, double a2)
{
  v3 = atan2(-(a2 - *(v2 + 1256) * 0.5), a1 - *(v2 + 1248) * 0.5) * 180.0 / 3.14159265;
  if (v3 <= 0.0)
  {
    v3 = v3 + 360.0;
  }

  v4 = 90.0 - v3;
  if (v4 < 0.0)
  {
    v4 = v4 + 360.0;
  }

  return v4 / 360.0 * 360.0 * 0.0174532925;
}

double sub_1AAE2C7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(ValueMetadata *, uint64_t, uint64_t, uint64_t, void *, uint64_t, ValueMetadata *, uint64_t, __n128, uint64_t, unint64_t, uint64_t))
{
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a7;
  v18[5] = a8;
  v18[6] = a3;
  v18[7] = a4;
  v19 = sub_1AACCC7DC();

  (a11)(&type metadata for ChartScenegraphKey, a1, a2, a10, v18, a5, &type metadata for ChartScenegraphKey, a6, a7, v19, a8);

  return result;
}

uint64_t sub_1AAE2C8D8@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v31 = a6;
  v32 = a5;
  v29 = a3;
  v30 = a2;
  sub_1AACCCCDC(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ChartModel.Scenegraph(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ChartProxy(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v29 - v23;
  sub_1AAE2CFB0(a1, v10, sub_1AACCCCDC);
  v25 = *(v12 + 48);
  if ((v25)(v10, 1, v11) == 1)
  {
    v26 = sub_1AAE27BB0(v14);
    if (v25(v10, 1, v11, v26) != 1)
    {
      sub_1AAE2D018(v10, sub_1AACCCCDC);
    }
  }

  else
  {
    sub_1AAE2D078(v10, v14);
  }

  sub_1AAE2D078(v14, v17);
  v30(v17);
  sub_1AAE2D018(v17, type metadata accessor for ChartProxy);
  sub_1AACE0800();
  v27 = *(v18 + 8);
  v27(v21, a4);
  sub_1AACE0800();
  return (v27)(v24, a4);
}

double *sub_1AAE2CC04@<X0>(double *result@<X0>, double *a2@<X8>)
{
  v3 = result[1];
  if (*result > v3)
  {
    v4 = *result;
  }

  else
  {
    v4 = result[1];
  }

  v5 = *(*(v2 + 16) + 1248);
  if (v3 >= *result)
  {
    v3 = *result;
  }

  v6 = v5 - v3;
  if (v5 - v4 > v6)
  {
    __break(1u);
  }

  else
  {
    *a2 = v5 - v4;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_1AAE2CC54(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1AACCA728(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1AAE2CC68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  sub_1AACCAE10(*a1, v7, v8);
  return sub_1AACFB938(v6, v7, v8, v4, v5, a2);
}

uint64_t sub_1AAE2CCE4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AAE2CF60(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t type metadata accessor for ChartProxy(uint64_t a1)
{
  result = qword_1ED9B1148;
  if (!qword_1ED9B1148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AAE2CE44(uint64_t a1)
{
  result = type metadata accessor for ChartModel.Scenegraph(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAE2CEB0(uint64_t *a1, uint64_t (*a2)(uint64_t, void *), uint64_t a3)
{
  v4 = a1[1];
  v5 = a1[3];
  v7[0] = &type metadata for ChartScenegraphKey;
  v7[1] = v4;
  v7[2] = sub_1AACCC7DC();
  v7[3] = v5;
  a2(255, v7);
  sub_1AAF8DF74();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_1AAE2CF60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAE2CFB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE2D018(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAE2D078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartModel.Scenegraph(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE2D0DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AAE2D138(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AAE2D138(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for ConcreteScale(0, a3, &type metadata for AnyChartSymbolShape, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AAE2D250(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE2D2A0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void static Plot._renderChartContent(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v8 = *(a2 + 8);
  if (*a2)
  {
    v9 = v8 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
    swift_beginAccess();
    v10 = type metadata accessor for ChartContentRenderContext.Environment(0);
    v11 = (v9 + v10[23]);
    v12 = v11[3];
    v13 = (v9 + v10[24]);
    v14 = v13[3];
    v15 = (v9 + v10[25]);
    v16 = v15[1];
    if (v12)
    {
      v17 = 0;
    }

    else
    {
      v17 = v14 == 0;
    }

    if (v17 && v16 == 0)
    {
      LOBYTE(v76[0]) = 1;
      *(&v76[0] + 1) = v8;
      (*(a4 + 40))(a1, v76, a3, a4);
    }

    else
    {
      v19 = v10;
      v21 = *v11;
      v20 = v11[1];
      v22 = v11[2];
      v73 = v13[1];
      v74 = *v13;
      v71 = v13[2];
      v70 = *v15;
      *v11 = 0u;
      *(v11 + 1) = 0u;
      v23 = (v9 + v10[24]);
      *v23 = 0u;
      v23[1] = 0u;
      v24 = (v9 + v10[25]);
      *v24 = 0;
      v24[1] = 0;
      *(v9 + v10[26]) = 1;
      LOBYTE(v76[0]) = 1;
      *(&v76[0] + 1) = v8;
      v67 = v16;
      v25 = a1;
      v26 = v14;
      (*(a4 + 40))(&v78, v25, v76, a3, a4);
      v27 = (v9 + v19[23]);
      v65 = v27[1];
      v66 = *v27;
      v64 = v27[2];
      v62 = v78;
      v63 = v27[3];
      *v27 = v21;
      v27[1] = v20;
      v27[2] = v22;
      v27[3] = v12;
      v68 = v20;
      v69 = v22;
      v72 = v12;
      sub_1AADA61DC(v21, v20, v22, v12);
      v28 = (v9 + v19[24]);
      v29 = *v28;
      v30 = v28[1];
      v32 = v28[2];
      v31 = v28[3];
      *v28 = v74;
      v28[1] = v73;
      v28[2] = v71;
      v28[3] = v26;
      sub_1AADA61DC(v74, v73, v71, v26);
      v33 = (v9 + v19[25]);
      *v33 = v70;
      v33[1] = v67;
      *(v9 + v19[26]) = 0;
      v34 = v62;

      sub_1AADA6198(v66, v65, v64, v63);
      sub_1AADA6198(v29, v30, v32, v31);

      v35 = sub_1AAF517A0(v62);
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v79.origin.x = v35;
      v79.origin.y = v37;
      v79.size.width = v39;
      v79.size.height = v41;
      if (CGRectEqualToRect(v79, *MEMORY[0x1E695F050]))
      {
        sub_1AADA6198(v74, v73, v71, v26);
        sub_1AADA6198(v21, v68, v69, v72);

        *a5 = v62;
      }

      else
      {
        v42 = *(*(v8 + 16) + 24);
        v43 = v68;
        v44 = v69;
        if (!v72)
        {
          sub_1AAF8E214();
          type metadata accessor for FindClass();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v46 = objc_opt_self();
          v47 = ObjCClassFromMetadata;
          v34 = v62;
          v48 = [v46 bundleForClass_];
          v21 = sub_1AAF8EA44();
          v43 = v49;
          v72 = v50;
          v44 = v51;
        }

        v52 = v44 & 1;
        sub_1AAE2D7EC(v76);
        sub_1AAE12888();
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1AAF92AB0;
        *(v53 + 32) = v34;
        v54 = swift_allocObject();
        *(v54 + 16) = v42;
        *(v54 + 24) = v35;
        *(v54 + 32) = v37;
        *(v54 + 40) = v39;
        *(v54 + 48) = v41;
        *(v54 + 56) = v70;
        *(v54 + 64) = v67;
        *(v54 + 72) = v21;
        *(v54 + 80) = v43;
        *(v54 + 88) = v52;
        *(v54 + 96) = v72;
        *(v54 + 104) = v74;
        *(v54 + 112) = v73;
        *(v54 + 120) = v71;
        *(v54 + 128) = v26;
        v55 = v76[1];
        *(v54 + 136) = v76[0];
        *(v54 + 152) = v55;
        v56 = v76[2];
        v57 = v76[3];
        v58 = v76[4];
        *(v54 + 216) = v76[5];
        *(v54 + 200) = v58;
        *(v54 + 184) = v57;
        *(v54 + 168) = v56;
        v59 = v76[6];
        v60 = v76[7];
        v61 = v77;
        *(v54 + 264) = v76[8];
        *(v54 + 248) = v60;
        *(v54 + 232) = v59;
        *(v54 + 280) = v61;
        *(v54 + 288) = v53;
        *(v54 + 296) = 0;
        *a5 = v54 | 0xB000000000000000;
      }
    }
  }

  else
  {
    LOBYTE(v76[0]) = 0;
    *(&v76[0] + 1) = v8;
    (*(a4 + 40))(a1, v76, a3, a4);
  }
}

double sub_1AAE2D7EC(uint64_t a1)
{
  *a1 = 0xFFFFFFFF0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  return result;
}

double sub_1AAE2D820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19)
{
  v22 = a19 >> 62;
  if ((a19 >> 62) > 1)
  {
    if (v22 == 2)
    {
      sub_1AAD04750(a2, a3, a4 & 1);

      sub_1AAD0E818(a6, a7, a8);
      sub_1AAD04750(a11, a12, a13 & 1);

      v23 = a15;
      v24 = a16;
      v25 = a17;
      goto LABEL_6;
    }

    sub_1AAD04750(a3, a4, a5 & 1);

    sub_1AADB3124(a7, a8, a9, a10);
    sub_1AAD04750(a12, a13, a14 & 1);

    v27 = a16;
    v28 = a17;
    v29 = a18;
    v30 = a19;
  }

  else
  {
    if (!v22)
    {
      sub_1AAD04750(a2, a3, a4 & 1);

      v23 = a6;
      v24 = a7;
      v25 = a8;
LABEL_6:

      sub_1AAD0E818(v23, v24, v25);
      return result;
    }

    sub_1AAD04750(a3, a4, a5 & 1);

    v27 = a7;
    v28 = a8;
    v29 = a9;
    v30 = a10;
  }

  return sub_1AADB3124(v27, v28, v29, v30);
}

uint64_t static Plot._collectChartContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v9 = type metadata accessor for CollectedChartContent(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for _ChartContentCollectInputs(0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v14 + *(v18 + 32)) != 1)
  {
    return (*(a3 + 64))(a1, v15);
  }

  v65 = v9;
  v66 = v10;
  sub_1AAE2DDEC(v14, v17);
  v19 = &v17[*(v13 + 28)];
  v20 = type metadata accessor for ChartContainerValues(0);
  v21 = v20[17];
  v22 = &v19[v20[16]];
  v23 = *(v22 + 1);
  *&v68 = *v22;
  *(&v68 + 1) = v23;
  v24 = *(v22 + 3);
  v69 = *(v22 + 2);
  v25 = &v19[v21];
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[3];
  v67 = v25[2];
  v29 = &v19[v20[18]];
  v30 = *(v29 + 1);
  if (v24)
  {
    v31 = 0;
  }

  else
  {
    v31 = v28 == 0;
  }

  if (v31 && v30 == 0)
  {
    (*(a3 + 64))(v87, a1, v17, a2, a3);
    sub_1AADA6198(v26, v27, v67, 0);
    sub_1AADA6198(v68, *(&v68 + 1), v69, 0);

    memcpy(a4, v87, 0x323uLL);
  }

  else
  {
    v64 = a4;
    v62 = *v29;
    *v22 = 0u;
    *(v22 + 1) = 0u;
    *v29 = 0;
    *(v29 + 1) = 0;
    *v25 = 0u;
    *(v25 + 1) = 0u;
    v33 = a1;
    v34 = v24;
    v35 = v28;
    (*(a3 + 64))(v87, v33, v17, a2, a3);
    v36 = *(&v68 + 1);
    v71 = v68;
    v37 = v69;
    *&v72 = v69;
    *(&v72 + 1) = v34;
    *&v73 = v26;
    *(&v73 + 1) = v27;
    v38 = v26;
    v39 = v27;
    v40 = v67;
    *&v74 = v67;
    *(&v74 + 1) = v35;
    *&v75 = v62;
    *(&v75 + 1) = v30;
    v76 = 0;
    v77 = v68;
    v41 = v68;
    v78 = v69;
    v79 = v34;
    v80 = v38;
    v81 = v39;
    v63 = v39;
    v82 = v67;
    v83 = v35;
    v42 = v35;
    v84 = v62;
    v85 = v30;
    v86 = 0;
    v43 = v38;
    v44 = v42;
    sub_1AADA61DC(v38, v39, v67, v42);
    v45 = v41;
    v46 = v34;
    sub_1AADA61DC(v45, v36, v37, v34);
    sub_1AAE0F994(&v71, &v70);
    sub_1AAE0F9F0(&v77);
    sub_1AAE0FA44(0, v47);
    v49 = v48;
    v50 = swift_allocBox();
    v52 = v51 + *(v49 + 48);
    sub_1AAF027E4(v51);
    v53 = v72;
    *v52 = v71;
    *(v52 + 1) = v53;
    v54 = v73;
    v55 = v74;
    v56 = v75;
    v52[80] = v76;
    *(v52 + 3) = v55;
    *(v52 + 4) = v56;
    *(v52 + 2) = v54;
    v52[81] = 1;
    *v12 = v50;
    swift_storeEnumTagMultiPayload();
    v57 = v64;
    sub_1AADFA56C(&v87[1], (v64 + 1));
    sub_1AAE0FAB0(0, v58);
    v59 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1AAF92AB0;
    sub_1AAE0FB08(v12, v60 + v59, xmmword_1AAF92AB0);
    sub_1AADA6198(v43, v63, v40, v44);
    sub_1AADA6198(v68, *(&v68 + 1), v69, v46);
    sub_1AAD58308(v87);
    *v57 = v60;
  }

  return sub_1AAE2DE50(v17);
}

uint64_t sub_1AAE2DDEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ChartContentCollectInputs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE2DE50(uint64_t a1)
{
  v2 = type metadata accessor for _ChartContentCollectInputs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE2DEE8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((((((v8 + ((v6 + 1) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 186) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 32;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 1) & ~v6;
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((((((((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 186) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    v20 = v19 - 1;
    if (v20 < 0)
    {
      v20 = -1;
    }

    return (v20 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

unsigned int *sub_1AAE2E084(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((((((((((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 186) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((((((((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) + 143) & 0xFFFFFFF8) + 143) & 0xFFFFFFF8) + 186) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v10) = 0;
      }

      else if (v14)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = ((result + v8 + 1) & ~v8);
      if (v6 < 0x7FFFFFFE)
      {
        v20 = ((((((((result + v9) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 186) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          v20[2] = 0;
          v20[3] = 0;
          *v20 = a2 - 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          v20[3] = a2;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((((((((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) + 143) & 0xFFFFFFF8) + 143) & 0xFFFFFFF8) + 186) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((((((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFF8) + 143) & 0xFFFFFFF8) + 143) & 0xFFFFFFF8) + 186) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((((((((v9 + ((v8 + 1) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 186) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 32);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v10) = v16;
    }

    else
    {
      *(result + v10) = v16;
    }
  }

  else if (v14)
  {
    *(result + v10) = v16;
  }

  return result;
}

uint64_t sub_1AAE2E2A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 73))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 9;
  v5 = v3 - 9;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AAE2E2EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_1AAE2E344(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v49 = *(a3 + 16);
  v3 = *(v49 - 8);
  v4 = *(v3 + 84);
  v53 = *(sub_1AAF8CAA4() - 8);
  v5 = *(v53 + 64);
  v6 = *(sub_1AAF8CBA4() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1AAF8DF14() - 8);
  v10 = *(v9 + 80);
  v11 = (*(v9 + 64) + ((((v5 + v7) & ~v7) + v8 + v10) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_1AAF8DCD4() - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 64) + ((v11 + v13 + 8) & ~v13);
  if ((v14 + 1) > 8)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 8;
  }

  v51 = v15;
  sub_1AACB6294(0, &qword_1ED9B2AF0, type metadata accessor for ChartModel, MEMORY[0x1E6981E90]);
  v48 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 84);
  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = *(v17 + 84);
  }

  v50 = v4;
  if (v4 <= v19)
  {
    v4 = v19;
  }

  v20 = *(sub_1AAF8E9D4() - 8);
  v21 = *(v17 + 64);
  v22 = *(v20 + 80);
  v23 = *(v20 + 64);
  if (v4 <= *(v20 + 84))
  {
    v24 = *(v20 + 84);
  }

  else
  {
    v24 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  v25 = v10 | v7 | *(v53 + 80) & 0xF8 | v13 | 7;
  v26 = *(v3 + 64) + v25;
  v27 = a1;
  v28 = v51 + 184;
  v29 = *(v17 + 80) & 0xF8;
  v30 = ~v29 & 0xFFFFFFFFFFFFFFF8;
  v31 = v29 + 88;
  v32 = v21 + 7;
  v33 = ((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + v22 + 8;
  if (a2 <= v24)
  {
    goto LABEL_36;
  }

  v34 = ((v33 + ((v31 + ((((v28 + (v26 & ~v25)) & 0xFFFFFFFFFFFFFFF0) + 443) & 0xFFFFFFFFFFFFFFF8)) & v30)) & ~v22) + v23;
  v35 = 8 * (((v33 + ((v31 + ((((v51 - 72 + (v26 & ~(v10 | v7 | *(v53 + 80) & 0xF8 | v13 | 7))) & 0xF0) - 69) & 0xF8)) & v30)) & ~v22) + v23);
  if (v34 > 3)
  {
    goto LABEL_15;
  }

  v38 = ((a2 - v24 + ~(-1 << v35)) >> v35) + 1;
  if (HIWORD(v38))
  {
    v36 = *(a1 + v34);
    if (v36)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v38 <= 0xFF)
    {
      if (v38 < 2)
      {
        goto LABEL_36;
      }

LABEL_15:
      v36 = *(a1 + v34);
      if (!*(a1 + v34))
      {
        goto LABEL_36;
      }

LABEL_23:
      v39 = (v36 - 1) << v35;
      if (v34 > 3)
      {
        v39 = 0;
      }

      if (v34)
      {
        if (v34 <= 3)
        {
          v40 = v34;
        }

        else
        {
          v40 = 4;
        }

        if (v40 > 2)
        {
          if (v40 == 3)
          {
            v41 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v41 = *a1;
          }
        }

        else if (v40 == 1)
        {
          v41 = *a1;
        }

        else
        {
          v41 = *a1;
        }
      }

      else
      {
        v41 = 0;
      }

      return v24 + (v41 | v39) + 1;
    }

    v36 = *(a1 + v34);
    if (*(a1 + v34))
    {
      goto LABEL_23;
    }
  }

LABEL_36:
  if (v50 == v24)
  {
    v42 = v49;
    v43 = *(v3 + 48);
    v44 = v50;

    return v43(v27, v44, v42);
  }

  v27 = ((v31 + ((((v28 + ((a1 + v26) & ~v25)) & 0xFFFFFFFFFFFFFFF0) + 443) & 0xFFFFFFFFFFFFFFF8)) & v30);
  if (v24 == v19)
  {
    if (v18 >= 0x7FFFFFFE)
    {
      v43 = *(v17 + 48);
      v44 = v18;
      v42 = v48;

      return v43(v27, v44, v42);
    }

    v47 = *((v27 + v32) & 0xFFFFFFFFFFFFFFF8);
    if (v47 >= 0xFFFFFFFF)
    {
      LODWORD(v47) = -1;
    }

    if ((v47 + 1) >= 2)
    {
      return v47;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v45 = *(v20 + 48);
    v46 = (v27 + v33) & ~v22;

    return v45(v46);
  }
}

void sub_1AAE2E8DC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v47 = v4;
  v5 = *(v4 + 84);
  v49 = *(sub_1AAF8CAA4() - 8);
  v6 = *(v49 + 64);
  v7 = *(sub_1AAF8CBA4() - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1AAF8DF14() - 8);
  v11 = *(v10 + 80);
  v12 = (*(v10 + 64) + ((((v6 + v8) & ~v8) + v9 + v11) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_1AAF8DCD4() - 8);
  v14 = *(v13 + 80);
  v15 = *(v13 + 64) + ((v12 + v14 + 8) & ~v14);
  if ((v15 + 1) > 8)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 8;
  }

  sub_1AACB6294(0, &qword_1ED9B2AF0, type metadata accessor for ChartModel, MEMORY[0x1E6981E90]);
  v18 = *(v17 - 8);
  v46 = *(v18 + 84);
  if (v46 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = *(v18 + 84);
  }

  v48 = v5;
  if (v5 <= v19)
  {
    v5 = v19;
  }

  v20 = *(sub_1AAF8E9D4() - 8);
  v21 = v20;
  if (v5 <= *(v20 + 84))
  {
    v22 = *(v20 + 84);
  }

  else
  {
    v22 = v5;
  }

  v23 = *(v20 + 80);
  v24 = *(v20 + 64);
  v25 = v11 | v8 | *(v49 + 80) & 0xF8 | v14 | 7;
  v26 = *(v4 + 64) + v25;
  v27 = *(v18 + 80) & 0xF8;
  v28 = ~v27 & 0xFFFFFFFFFFFFFFF8;
  v29 = v27 + 88;
  v30 = (v27 + 88 + ((((v16 + 184 + (v26 & ~v25)) & 0xFFFFFFFFFFFFFFF0) + 443) & 0xFFFFFFFFFFFFFFF8)) & v28;
  v31 = *(v18 + 64) + 7;
  v32 = (v31 & 0xFFFFFFFFFFFFFFF8) + v23 + 8;
  v33 = ((v32 + v30) & ~v23) + v24;
  if (a3 <= v22)
  {
    v35 = 0;
    v34 = a1;
  }

  else
  {
    v34 = a1;
    if (v33 <= 3)
    {
      v38 = ((a3 - v22 + ~(-1 << (8 * v33))) >> (8 * v33)) + 1;
      if (HIWORD(v38))
      {
        v35 = 4;
      }

      else
      {
        if (v38 < 0x100)
        {
          v39 = 1;
        }

        else
        {
          v39 = 2;
        }

        if (v38 >= 2)
        {
          v35 = v39;
        }

        else
        {
          v35 = 0;
        }
      }
    }

    else
    {
      v35 = 1;
    }
  }

  if (v22 < a2)
  {
    v36 = ~v22 + a2;
    if (v33 < 4)
    {
      v37 = (v36 >> (8 * v33)) + 1;
      if (v33)
      {
        v40 = v36 & ~(-1 << (8 * v33));
        bzero(v34, v33);
        if (v33 != 3)
        {
          if (v33 == 2)
          {
            *v34 = v40;
            if (v35 > 1)
            {
LABEL_58:
              if (v35 == 2)
              {
                *&v34[v33] = v37;
              }

              else
              {
                *&v34[v33] = v37;
              }

              return;
            }
          }

          else
          {
            *v34 = v36;
            if (v35 > 1)
            {
              goto LABEL_58;
            }
          }

          goto LABEL_55;
        }

        *v34 = v40;
        v34[2] = BYTE2(v40);
      }

      if (v35 > 1)
      {
        goto LABEL_58;
      }
    }

    else
    {
      bzero(v34, v33);
      *v34 = v36;
      v37 = 1;
      if (v35 > 1)
      {
        goto LABEL_58;
      }
    }

LABEL_55:
    if (v35)
    {
      v34[v33] = v37;
    }

    return;
  }

  if (v35 > 1)
  {
    if (v35 != 2)
    {
      *&v34[v33] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&v34[v33] = 0;
  }

  else if (v35)
  {
    v34[v33] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v48 == v22)
  {
    v41 = *(v47 + 56);
    v42 = v34;
LABEL_41:

    v41(v42);
    return;
  }

  v42 = (v29 + ((((v16 + 184 + (&v34[v26] & ~v25)) & 0xFFFFFFFFFFFFFFF0) + 443) & 0xFFFFFFFFFFFFFFF8)) & v28;
  if (v22 == v19)
  {
    if (v46 < 0x7FFFFFFE)
    {
      v45 = ((v31 + v42) & 0xFFFFFFFFFFFFFFF8);
      if (a2 > 0x7FFFFFFE)
      {
        *v45 = 0;
        *v45 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v45 = a2;
      }

      return;
    }

    v41 = *(v18 + 56);
    goto LABEL_41;
  }

  v43 = *(v21 + 56);
  v44 = (v32 + v42) & ~v23;

  v43(v44);
}

void *sub_1AAE2EEC8(uint64_t a1, uint64_t a2)
{
  v8 = sub_1AAF8E364();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(*(a2 - 8) + 16))(&v12 - v10, a1, a2, v9);
  swift_storeEnumTagMultiPayload();
  return sub_1AAF8E374();
}

void *sub_1AAE2EFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1AAF8E364();
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(*(a3 - 8) + 16))(&v12 - v10, a1, a3, v9);
  swift_storeEnumTagMultiPayload();
  return sub_1AAF8E374();
}

void *sub_1AAE2F0B8()
{
  sub_1AAE04EE4();

  return sub_1AAF8E144();
}

uint64_t sub_1AAE2F100@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1AAF8E134();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACB6294(0, qword_1ED9B5598, type metadata accessor for ChartEnvironmentValues, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1AAE395C0(v2 + *(a1 + 36), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1AAD10834(v11, a2, type metadata accessor for ChartEnvironmentValues);
  }

  v13 = sub_1AAF8FD14();
  v14 = sub_1AAF8E764();
  sub_1AAF8D7B4(v13, &dword_1AACA8000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1AAF8E124();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AAE2F2F4(uint64_t a1)
{
  v3 = sub_1AAF8E134();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 40);
  v8 = *v7;
  v9 = *(v7 + 8);
  if (*(v7 + 16) == 1)
  {
    sub_1AACBD93C(*v7, v9);
  }

  else
  {

    v10 = sub_1AAF8FD14();
    v11 = sub_1AAF8E764();
    sub_1AAF8D7B4(v10, &dword_1AACA8000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1AAF8E124();
    swift_getAtKeyPath();
    v12 = sub_1AACB8774(v8, v9, 0, sub_1AACB8784);
    (*(v4 + 8))(v6, v3, v12);
    return v14;
  }

  return v8;
}

uint64_t sub_1AAE2F478(uint64_t a1)
{
  v3 = sub_1AAF8E134();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 44);
  v8 = *v7;
  v9 = *(v7 + 8);
  if (*(v7 + 16) == 1)
  {
    sub_1AACBD93C(*v7, v9);
  }

  else
  {

    v10 = sub_1AAF8FD14();
    v11 = sub_1AAF8E764();
    sub_1AAF8D7B4(v10, &dword_1AACA8000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1AAF8E124();
    swift_getAtKeyPath();
    v12 = sub_1AACB8774(v8, v9, 0, sub_1AACB8784);
    (*(v4 + 8))(v6, v3, v12);
    return v14;
  }

  return v8;
}

uint64_t sub_1AAE2F5FC(uint64_t a1)
{
  v3 = sub_1AAF8E134();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 48);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
  }

  else
  {

    v9 = sub_1AAF8FD14();
    v10 = sub_1AAF8E764();
    sub_1AAF8D7B4(v9, &dword_1AACA8000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1AAF8E124();
    swift_getAtKeyPath();
    sub_1AACB8788(v8, 0, MEMORY[0x1E69E7D48], MEMORY[0x1E69E7CF8]);
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_1AAE2F780(uint64_t a1)
{
  v3 = sub_1AAF8E134();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 52);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  if (*(v7 + 32) == 1)
  {
    sub_1AACBD93C(*v7, v9);
    sub_1AACBD93C(v10, v11);
  }

  else
  {

    v12 = sub_1AAF8FD14();
    v13 = sub_1AAF8E764();
    sub_1AAF8D7B4(v12, &dword_1AACA8000, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1AAF8E124();
    swift_getAtKeyPath();
    v14 = sub_1AACB879C(v8, v9, v10, v11, 0);
    (*(v4 + 8))(v6, v3, v14);
    return v16;
  }

  return v8;
}

void sub_1AAE2F91C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1AAF8E134();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(a1 + 56));
  v11 = *v9;
  v10 = v9[1];
  v12 = v9[2];
  v13 = *(v9 + 6);
  LODWORD(v9) = *(v9 + 56);
  v14 = v11;
  v22 = v10;
  v23 = v12;
  v21 = v11;
  if (v9 == 1)
  {
    sub_1AACB2628(v11, *(&v11 + 1), v10, *(&v10 + 1), v12, *(&v12 + 1), v13);
    v16 = v21;
    v15 = v22;
    v17 = v23;
  }

  else
  {

    v18 = sub_1AAF8FD14();
    v19 = sub_1AAF8E764();
    sub_1AAF8D7B4(v18, &dword_1AACA8000, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1AAF8E124();
    swift_getAtKeyPath();
    v20 = sub_1AACB87F0(v14, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v13, 0);
    (*(v6 + 8))(v8, v5, v20);
    v16 = v24;
    v15 = v25;
    v17 = v26;
    v13 = v27;
  }

  *a2 = v16;
  *(a2 + 16) = v15;
  *(a2 + 32) = v17;
  *(a2 + 48) = v13;
}

void *sub_1AAE2FAEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1AAF8E134();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AAE387DC(v2 + *(a1 + 60), v12, qword_1ED9B4560, &type metadata for ChartSelectionConfiguration, MEMORY[0x1E697DCB8]);
  if (v12[419] == 1)
  {
    return memcpy(a2, v12, 0x1A3uLL);
  }

  v10 = sub_1AAF8FD14();
  v11 = sub_1AAF8E764();
  sub_1AAF8D7B4(v10, &dword_1AACA8000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1AAF8E124();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AAE2FC84(uint64_t a1)
{
  v3 = sub_1AAF8E134();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 64);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
  }

  else
  {

    v9 = sub_1AAF8FD14();
    v10 = sub_1AAF8E764();
    sub_1AAF8D7B4(v9, &dword_1AACA8000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1AAF8E124();
    swift_getAtKeyPath();
    sub_1AACB8788(v8, 0, MEMORY[0x1E69E7D48], MEMORY[0x1E69E7CF8]);
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t sub_1AAE2FE08@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1AAF8E134();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1AAE387DC(v2 + *(a1 + 68), v15, &qword_1ED9B4558, &type metadata for ChartScrollZoomConfiguration, MEMORY[0x1E697DCB8]);
  if (v16 == 1)
  {
    v10 = v15[3];
    a2[2] = v15[2];
    a2[3] = v10;
    a2[4] = v15[4];
    v11 = v15[1];
    *a2 = v15[0];
    a2[1] = v11;
  }

  else
  {
    v12 = sub_1AAF8FD14();
    v13 = sub_1AAF8E764();
    sub_1AAF8D7B4(v12, &dword_1AACA8000, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1AAF8E124();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

double sub_1AAE2FFA4(char a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_1AAF8E7A4();
  v9 = sub_1AAF8E7A4();
  sub_1AAE2FE08(a2, &v16);
  if (v8 == v9)
  {
    v10 = *(&v16 + 1);
    v11 = v17;
    sub_1AACB2684(&v16);
  }

  else
  {
    v10 = v18;
    v11 = v19;
    sub_1AACB2684(&v16);
    a3 = a4;
  }

  sub_1AAE2FE08(a2, &v16);
  sub_1AACB2684(&v16);
  if (v8 == v9)
  {
    v12 = sub_1AAF8E774();
  }

  else
  {
    v12 = sub_1AAF8E794();
  }

  v13 = v12;
  sub_1AAF8E784();
  if (sub_1AAF8E784() == v13)
  {
    sub_1AACB6294(0, &qword_1ED9B44B0, type metadata accessor for ChartModel, MEMORY[0x1E6981E98]);
    sub_1AAF8F1D4();
    sub_1AAE28078(a1 & 1, v10, v11);
    a3 = v14;
  }

  return a3;
}

void sub_1AAE30114(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  type metadata accessor for RenderBasedChartView(0, a1, a2, a3);
  sub_1AACB6294(0, &qword_1ED9B44B0, type metadata accessor for ChartModel, MEMORY[0x1E6981E98]);
  sub_1AAF8F1D4();
  v5 = *(v10 + 320);

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1AACD8DD8();
  swift_beginAccess();
  v6 = *(v5 + 40);
  if (!v6)
  {
    goto LABEL_8;
  }

  sub_1AAF8F1D4();
  v7 = *(v9 + 328);

  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1AACD8DD8();
  swift_beginAccess();
  v8 = *(v7 + 40);
  if (v8 != 1)
  {
    sub_1AAE3975C(*(v7 + 40));

    *a4 = v6;
    a4[1] = v8;
    return;
  }

LABEL_8:
  sub_1AAF902C4();
  __break(1u);
}

void sub_1AAE302B0(_OWORD *a1@<X0>, uint64_t (**a2)(_OWORD *)@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[5];
  v5 = a1[3];
  v20 = a1[4];
  v21 = v4;
  v6 = a1[5];
  v7 = a1[7];
  v22 = a1[6];
  v23 = v7;
  v8 = a1[1];
  v17[0] = *a1;
  v17[1] = v8;
  v9 = a1[3];
  v11 = *a1;
  v10 = a1[1];
  v18 = a1[2];
  v19 = v9;
  v16[4] = v20;
  v16[5] = v6;
  v12 = a1[7];
  v16[6] = v22;
  v16[7] = v12;
  v16[0] = v11;
  v16[1] = v10;
  v13 = *a2;
  v16[2] = v18;
  v16[3] = v5;
  sub_1AAD00998(v17, &v15, sub_1AACCFC94);
  sub_1AACCFC94(0);
  sub_1AAD00E48();
  *&v16[0] = sub_1AAF8EF44();
  v14 = v13(v16);

  *a3 = v14;
}

void sub_1AAE30390(uint64_t a1@<X0>, uint64_t (**a2)(_OWORD *)@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 112);
  v22 = *(a1 + 96);
  v23 = v5;
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  v18 = *(a1 + 32);
  v19 = v7;
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  v20 = *(a1 + 64);
  v21 = v9;
  v10 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v10;
  v11 = *(a1 + 112);
  v15[6] = v22;
  v15[7] = v11;
  v15[2] = v18;
  v15[3] = v8;
  v15[4] = v20;
  v15[5] = v4;
  v24 = *(a1 + 128);
  v12 = *a2;
  v16 = *(a1 + 128);
  v15[0] = v17[0];
  v15[1] = v6;

  sub_1AAD00998(v17, v14, sub_1AACCD07C);
  sub_1AACCD07C(0);
  sub_1AAD00A90();
  *&v15[0] = sub_1AAF8EF44();
  v13 = v12(v15);

  *a3 = v13;
}

uint64_t sub_1AAE30494@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1AAD00D70(0, &qword_1ED9ADA80, sub_1AACCF9DC, sub_1AACCBDEC, MEMORY[0x1E697F948]);
  v77 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v69 - v5;
  sub_1AACCF9DC(0);
  v79 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v70 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD00D70(0, &qword_1ED9B2C90, sub_1AACCF9DC, sub_1AACCBDEC, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v78 = v69 - v10;
  sub_1AACCBDEC(0);
  v76 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ChartModel.Scenegraph(0);
  v74 = *(v14 - 8);
  v75 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v80 = (v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AACB6294(0, &qword_1ED9B44B0, type metadata accessor for ChartModel, MEMORY[0x1E6981E98]);
  sub_1AAF8F1D4();
  v16 = *(*&v91[0] + 216);

  if (!v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v72 = v6;
  v73 = a2;
  sub_1AACD8DD8();
  swift_beginAccess();
  if (*(v16 + 72))
  {
LABEL_17:
    result = sub_1AAF902C4();
    __break(1u);
    return result;
  }

  v17 = *(v16 + 56);
  v18 = *(v16 + 64);
  v19 = *(v16 + 40);
  v20 = *(v16 + 48);

  sub_1AAE2FE08(a1, v91);
  v21 = v91[0];
  sub_1AACB2684(v91);
  v22 = sub_1AAF8E774();
  sub_1AAF8E784();
  v23 = 0.0;
  if (sub_1AAF8E784() != v22)
  {
    v17 = 0.0;
  }

  v24 = sub_1AAF8E794();
  sub_1AAF8E784();
  if (sub_1AAF8E784() != v24)
  {
    v19 = 0.0;
  }

  v25 = sub_1AAF8E774();
  sub_1AAF8E784();
  if (sub_1AAF8E784() == v25)
  {
    v26 = v18;
  }

  else
  {
    v26 = 0.0;
  }

  v27 = sub_1AAF8E794();
  sub_1AAF8E784();
  if (sub_1AAF8E784() == v27)
  {
    v23 = v20;
  }

  sub_1AAF8DA64();
  v29 = v28;
  v31 = v30;
  v32 = sub_1AAE2FFA4(0, a1, v28, v30);
  v33 = sub_1AAE2FFA4(1, a1, v29, v31);
  sub_1AAF8F1D4();
  sub_1AAE2FAEC(a1, v91);
  sub_1AACD958C(v91, v80, v32, v33, v29, v31);

  sub_1AAD10630(v91);
  sub_1AAF8F1D4();
  sub_1AAE286E0(0, v93, v29, v31);

  sub_1AAF8F1D4();
  sub_1AAE286E0(1, v91, v29, v31);

  sub_1AACCC20C(0);
  v35 = v34;
  v36 = &v13[v34[12]];
  *v36 = swift_getKeyPath();
  v36[90] = 0;
  v37 = &v13[v35[13]];
  *v37 = swift_getKeyPath();
  v37[80] = 0;
  v38 = &v13[v35[14]];
  v84 = 0uLL;
  LOBYTE(v85) = -1;
  v71 = MEMORY[0x1E69E6720];
  sub_1AACBBBA0(0, qword_1ED9B3978, &type metadata for AnyPrimitivePlottable, MEMORY[0x1E69E6720]);
  sub_1AAF8EE24();
  v39 = v88;
  v40 = v89;
  *v38 = v87;
  v38[16] = v39;
  *(v38 + 3) = v40;
  v41 = &v13[v35[15]];
  v84 = 0uLL;
  LOBYTE(v85) = -1;
  sub_1AAF8EE24();
  v42 = v88;
  v43 = v89;
  *v41 = v87;
  v41[16] = v42;
  *(v41 + 3) = v43;
  *v13 = v21;
  v44 = *(a1 + 16);
  v45 = &v13[v35[9]];
  v46 = v80;
  v69[0] = *(a1 + 24);
  v69[1] = v44;
  sub_1AAE317A8(v80, v44, v69[0], v45, v17, v19, v26, v23);
  v47 = &v13[v35[10]];
  v48 = v93[3];
  *(v47 + 2) = v93[2];
  *(v47 + 3) = v48;
  *(v47 + 16) = v94;
  v49 = v93[7];
  *(v47 + 6) = v93[6];
  *(v47 + 7) = v49;
  v50 = v93[5];
  *(v47 + 4) = v93[4];
  *(v47 + 5) = v50;
  v51 = v93[1];
  *v47 = v93[0];
  *(v47 + 1) = v51;
  v52 = &v13[v35[11]];
  v53 = v91[7];
  *(v52 + 6) = v91[6];
  *(v52 + 7) = v53;
  *(v52 + 16) = v92;
  v54 = v91[3];
  *(v52 + 2) = v91[2];
  *(v52 + 3) = v54;
  v55 = v91[5];
  *(v52 + 4) = v91[4];
  *(v52 + 5) = v55;
  v56 = v91[1];
  *v52 = v91[0];
  *(v52 + 1) = v56;
  LOBYTE(v35) = sub_1AAF8E7B4();
  sub_1AAE39364(0);
  v58 = &v13[*(v57 + 36)];
  *v58 = v35;
  v58[1] = -v17;
  v58[2] = -v19;
  v58[3] = -v26;
  v58[4] = -v23;
  *(v58 + 40) = 0;
  sub_1AAF8E944();
  LOBYTE(v35) = v97;
  sub_1AACCC0EC(0);
  v60 = &v13[*(v59 + 36)];
  v61 = v96;
  *v60 = v95;
  *(v60 + 1) = v61;
  v60[32] = v35;
  *(v60 + 33) = 256;
  KeyPath = swift_getKeyPath();
  v63 = &v13[*(v76 + 36)];
  sub_1AACCCCA8(0);
  v65 = *(v64 + 28);
  sub_1AACB26B4(v46, v63 + v65, type metadata accessor for ChartModel.Scenegraph);
  (*(v74 + 56))(v63 + v65, 0, 1, v75);
  *v63 = KeyPath;
  sub_1AAE2FE08(a1, &v87);
  sub_1AAE387DC(v90, &v81, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior, v71);
  if (*(&v82 + 1))
  {
    v84 = v81;
    v85 = v82;
    v86 = v83;
    v66 = v70;
    sub_1AAE32020(&v84, v21, v70);
    sub_1AAD00998(v66, v72, sub_1AACCF9DC);
    swift_storeEnumTagMultiPayload();
    sub_1AACCFB98();
    sub_1AACCCD10();
    v67 = v78;
    sub_1AAF8E374();
    sub_1AAD00EF8(v66, sub_1AACCF9DC);
    sub_1AAE04C1C(&v84);
  }

  else
  {
    sub_1AACEC574(&v81, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior);
    sub_1AAD00998(v13, v72, sub_1AACCBDEC);
    swift_storeEnumTagMultiPayload();
    sub_1AACCFB98();
    sub_1AACCCD10();
    v67 = v78;
    sub_1AAF8E374();
  }

  sub_1AAD00EF8(v13, sub_1AACCBDEC);
  sub_1AAD2D1F0(v67, v73);
  sub_1AACEC574(v90, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior);
  return sub_1AACDCF70(v80, type metadata accessor for ChartModel.Scenegraph);
}

uint64_t sub_1AAE30DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v97 = a1;
  sub_1AAD00D70(0, &qword_1ED9ADA80, sub_1AACCF9DC, sub_1AACCBDEC, MEMORY[0x1E697F948]);
  v99 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v86 - v8;
  sub_1AACCF9DC(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v88 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD00D70(0, &qword_1ED9B2C90, sub_1AACCF9DC, sub_1AACCBDEC, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v100 = v86 - v14;
  sub_1AACCBDEC(0);
  v98 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ChartModel.Scenegraph(0);
  v95 = *(v18 - 8);
  v96 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v101 = (v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AACB6294(0, &qword_1ED9B44B0, type metadata accessor for ChartModel, MEMORY[0x1E6981E98]);
  sub_1AAF8F1D4();
  v20 = *(*&v112[0] + 216);

  if (!v20)
  {
    __break(1u);
    goto LABEL_20;
  }

  v92 = v11;
  v93 = v9;
  v94 = a3;
  sub_1AACD8DD8();
  swift_beginAccess();
  if (*(v20 + 72))
  {
LABEL_20:
    result = sub_1AAF902C4();
    __break(1u);
    return result;
  }

  v22 = *(v20 + 56);
  v21 = *(v20 + 64);
  v23 = *(v20 + 40);
  v24 = *(v20 + 48);

  sub_1AAE2FE08(a2, v112);
  v25 = v4;
  v26 = a2;
  v27 = LOBYTE(v112[0]);
  sub_1AACB2684(v112);
  v28 = sub_1AAF8E774();
  sub_1AAF8E784();
  if (sub_1AAF8E784() == v28)
  {
    v29 = v22;
  }

  else
  {
    v29 = 0.0;
  }

  v30 = sub_1AAF8E794();
  sub_1AAF8E784();
  if (sub_1AAF8E784() != v30)
  {
    v23 = 0.0;
  }

  v31 = sub_1AAF8E774();
  sub_1AAF8E784();
  if (sub_1AAF8E784() == v31)
  {
    v32 = v21;
  }

  else
  {
    v32 = 0.0;
  }

  v33 = sub_1AAF8E794();
  sub_1AAF8E784();
  if (sub_1AAF8E784() != v33)
  {
    v24 = 0.0;
  }

  v34 = sub_1AAF8E774();
  sub_1AAF8E784();
  v35 = sub_1AAF8E784();
  v36 = v21 + v22;
  if (v35 != v34)
  {
    v36 = 0.0;
  }

  v91 = v36;
  sub_1AAF8DA64();
  v39 = sub_1AAE2FFA4(0, v26, v37, v38);
  sub_1AAF8DA64();
  v42 = sub_1AAE2FFA4(1, v26, v40, v41);
  sub_1AAF8F1D4();
  sub_1AAF8DA64();
  v44 = v43;
  v46 = v45;
  sub_1AAE2FAEC(v26, v112);
  sub_1AACD958C(v112, v101, v39, v42, v44, v46);

  sub_1AAD10630(v112);
  v89 = v25;
  sub_1AAF8F1D4();
  sub_1AAF8DA64();
  sub_1AAE286E0(0, v114, v47, v48);

  sub_1AAF8F1D4();
  sub_1AAF8DA64();
  sub_1AAE286E0(1, v112, v49, v50);

  sub_1AAF8DA64();
  sub_1AACCC20C(0);
  v52 = v51;
  v53 = &v17[v51[12]];
  *v53 = swift_getKeyPath();
  v53[90] = 0;
  v54 = &v17[v52[13]];
  *v54 = swift_getKeyPath();
  v54[80] = 0;
  v55 = &v17[v52[14]];
  v105 = 0uLL;
  LOBYTE(v106) = -1;
  v90 = MEMORY[0x1E69E6720];
  sub_1AACBBBA0(0, qword_1ED9B3978, &type metadata for AnyPrimitivePlottable, MEMORY[0x1E69E6720]);
  sub_1AAF8EE24();
  v56 = v109;
  v57 = v110;
  *v55 = v108;
  v55[16] = v56;
  *(v55 + 3) = v57;
  v58 = &v17[v52[15]];
  v105 = 0uLL;
  LOBYTE(v106) = -1;
  sub_1AAF8EE24();
  v59 = v109;
  v60 = v110;
  *v58 = v108;
  v58[16] = v59;
  *(v58 + 3) = v60;
  v87 = v27;
  *v17 = v27;
  v61 = *(v26 + 16);
  v62 = &v17[v52[9]];
  v63 = v101;
  v86[0] = *(v26 + 24);
  v86[1] = v61;
  sub_1AAE317A8(v101, v61, v86[0], v62, v29, v23, v32, v24);
  v64 = &v17[v52[10]];
  v65 = v114[3];
  *(v64 + 2) = v114[2];
  *(v64 + 3) = v65;
  *(v64 + 16) = v115;
  v66 = v114[7];
  *(v64 + 6) = v114[6];
  *(v64 + 7) = v66;
  v67 = v114[5];
  *(v64 + 4) = v114[4];
  *(v64 + 5) = v67;
  v68 = v114[1];
  *v64 = v114[0];
  *(v64 + 1) = v68;
  v69 = &v17[v52[11]];
  v70 = v112[7];
  *(v69 + 6) = v112[6];
  *(v69 + 7) = v70;
  *(v69 + 16) = v113;
  v71 = v112[3];
  *(v69 + 2) = v112[2];
  *(v69 + 3) = v71;
  v72 = v112[5];
  *(v69 + 4) = v112[4];
  *(v69 + 5) = v72;
  v73 = v112[1];
  *v69 = v112[0];
  *(v69 + 1) = v73;
  LOBYTE(v52) = sub_1AAF8E7B4();
  sub_1AAE39364(0);
  v75 = &v17[*(v74 + 36)];
  *v75 = v52;
  v75[1] = -v29;
  v75[2] = -v23;
  v75[3] = -v32;
  v75[4] = -v24;
  *(v75 + 40) = 0;
  sub_1AAF8DA64();
  sub_1AAF8DA64();
  sub_1AAF8E944();
  LOBYTE(v52) = v118;
  sub_1AACCC0EC(0);
  v77 = &v17[*(v76 + 36)];
  v78 = v117;
  *v77 = v116;
  *(v77 + 1) = v78;
  v77[32] = v52;
  *(v77 + 33) = 256;
  KeyPath = swift_getKeyPath();
  v80 = &v17[*(v98 + 36)];
  sub_1AACCCCA8(0);
  v82 = *(v81 + 28);
  sub_1AACB26B4(v63, v80 + v82, type metadata accessor for ChartModel.Scenegraph);
  (*(v95 + 56))(v80 + v82, 0, 1, v96);
  *v80 = KeyPath;
  sub_1AAE2FE08(v26, &v108);
  sub_1AAE387DC(v111, &v102, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior, v90);
  if (*(&v103 + 1))
  {
    v105 = v102;
    v106 = v103;
    v107 = v104;
    v83 = v88;
    sub_1AAE32020(&v105, v87, v88);
    sub_1AAD00998(v83, v93, sub_1AACCF9DC);
    swift_storeEnumTagMultiPayload();
    sub_1AACCFB98();
    sub_1AACCCD10();
    v84 = v100;
    sub_1AAF8E374();
    sub_1AAD00EF8(v83, sub_1AACCF9DC);
    sub_1AAE04C1C(&v105);
  }

  else
  {
    sub_1AACEC574(&v102, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior);
    sub_1AAD00998(v17, v93, sub_1AACCBDEC);
    swift_storeEnumTagMultiPayload();
    sub_1AACCFB98();
    sub_1AACCCD10();
    v84 = v100;
    sub_1AAF8E374();
  }

  sub_1AAD00EF8(v17, sub_1AACCBDEC);
  sub_1AAD2D1F0(v84, v94);
  sub_1AACEC574(v111, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior);
  return sub_1AACDCF70(v101, type metadata accessor for ChartModel.Scenegraph);
}

void sub_1AAE317A8(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v58 = a4;
  v15 = MEMORY[0x1E697F948];
  sub_1AAD00BB8(0, &qword_1ED9ADA68, sub_1AACCC2A8, MEMORY[0x1E697F948]);
  v56 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v57 = (v51 - v17);
  sub_1AAD00BB8(0, &qword_1ED9ADA70, sub_1AACCC2DC, v15);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v51 - v19);
  sub_1AACCC2DC(0);
  v51[3] = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACCC2A8(0);
  v55 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v54 = v51 - v28;
  sub_1AAD00BB8(0, &qword_1ED9B2C28, sub_1AACCC2A8, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v52 = v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v53 = v51 - v32;
  v34 = type metadata accessor for RenderBasedChartView(0, a2, a3, v33);
  sub_1AAD09998(a1, v34, v23);
  v35 = sub_1AAE2F2F4(v34);
  v51[1] = a2;
  v51[2] = a3;
  if (v35)
  {
    v37 = v35;
    v38 = v36;
    v60 = v35;
    v61 = v36;
    sub_1AAE31D68(v23, &v60, &v59);
    *v20 = v59;
    swift_storeEnumTagMultiPayload();
    sub_1AACBE068(&qword_1ED9B2D18, sub_1AACCC2DC, sub_1AAE393A0, sub_1AACCFAB4);
    sub_1AAF8E374();
    sub_1AAD00EF8(v23, sub_1AACCC2DC);
    sub_1AACB4A98(v37, v38);
  }

  else
  {
    sub_1AAD00998(v23, v20, sub_1AACCC2DC);
    swift_storeEnumTagMultiPayload();
    sub_1AACBE068(&qword_1ED9B2D18, sub_1AACCC2DC, sub_1AAE393A0, sub_1AACCFAB4);
    sub_1AAF8E374();
    sub_1AAD00EF8(v23, sub_1AACCC2DC);
  }

  v39 = v54;
  sub_1AAD2D298(v26, v54);
  v40 = sub_1AAE2F478(v34);
  v42 = v52;
  if (v40)
  {
    v60 = v40;
    v61 = v41;
    v43 = v41;
    v44 = v40;
    sub_1AAE31EDC(v39, &v60, &v59);
    *v57 = v59;
    swift_storeEnumTagMultiPayload();
    sub_1AACCCA6C();
    sub_1AAF8E374();
    sub_1AAD00EF8(v39, sub_1AACCC2A8);
    sub_1AACB4A98(v44, v43);
  }

  else
  {
    sub_1AAD00998(v39, v57, sub_1AACCC2A8);
    swift_storeEnumTagMultiPayload();
    sub_1AACCCA6C();
    sub_1AAF8E374();
    sub_1AAD00EF8(v39, sub_1AACCC2A8);
  }

  v45 = v53;
  sub_1AAD2D2FC(v42, v53);
  v46 = sub_1AAF8E7B4();
  v47 = v45;
  v48 = v58;
  sub_1AAD2D2FC(v47, v58);
  sub_1AACCC3C4(0);
  v50 = v48 + *(v49 + 36);
  *v50 = v46;
  *(v50 + 8) = a5;
  *(v50 + 16) = a6;
  *(v50 + 24) = a7;
  *(v50 + 32) = a8;
  *(v50 + 40) = 0;
}

void sub_1AAE31D68(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  sub_1AACCC2DC(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  v12 = *a2;
  sub_1AAD00998(a1, &v15 - v10, sub_1AACCC2DC);
  sub_1AAD00998(v11, v8, sub_1AACCC2DC);
  sub_1AACBE068(&qword_1ED9B2D18, sub_1AACCC2DC, sub_1AAE393A0, sub_1AACCFAB4);
  v13 = sub_1AAF8EF44();
  sub_1AAD00EF8(v11, sub_1AACCC2DC);
  v16 = v13;
  v14 = v12(&v16);

  *a3 = v14;
}

void sub_1AAE31EDC(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  sub_1AACCC2A8(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  v12 = *a2;
  sub_1AAD00998(a1, &v15 - v10, sub_1AACCC2A8);
  sub_1AAD00998(v11, v8, sub_1AACCC2A8);
  sub_1AACCCA6C();

  v13 = sub_1AAF8EF44();
  sub_1AAD00EF8(v11, sub_1AACCC2A8);
  v16 = v13;
  v14 = v12(&v16);

  *a3 = v14;
}

uint64_t sub_1AAE32020@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  sub_1AACCBDEC(0);
  sub_1AACCCD10();
  sub_1AACCCF64();
  sub_1AAF8EBA4();
  sub_1AAE39674(a1, v8);
  sub_1AACCF9DC(0);
  return sub_1AADFC0A0(a2, v8, (a3 + *(v6 + 36)));
}

uint64_t sub_1AAE320C4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = *(a1 + 16);
  (*(v9 + 32))(v13 + v12, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = sub_1AAF8EE54();
  *a5 = a3;
  a5[1] = v13;
  a5[2] = result;
  a5[3] = a4;
  a5[4] = 0;
  return result;
}

double sub_1AAE321F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartModel.Scenegraph(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1, v4))
  {
    *(a1 + *(v4 + 64)) = a2;
  }

  return result;
}

uint64_t sub_1AAE322A0(uint64_t *a1)
{
  sub_1AAE394F4();

  return sub_1AAF8E154();
}

uint64_t sub_1AAE32300()
{
  v1 = sub_1AAF8E134();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    sub_1AACBD93C(*v0, *(v0 + 8));
    sub_1AACBD93C(v7, v8);
  }

  else
  {

    v9 = sub_1AAF8FD14();
    v10 = sub_1AAF8E764();
    sub_1AAF8D7B4(v9, &dword_1AACA8000, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1AAF8E124();
    swift_getAtKeyPath();
    v11 = sub_1AACB879C(v5, v6, v7, v8, 0);
    (*(v2 + 8))(v4, v1, v11);
    return v13;
  }

  return v5;
}

uint64_t sub_1AAE32490@<X0>(int a1@<W0>, void *a2@<X8>)
{
  LODWORD(MinX) = a1;
  v104 = a2;
  sub_1AAD00BB8(0, &qword_1ED9ADA78, sub_1AAD25FE8, MEMORY[0x1E697F948]);
  v102 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v103 = (&v87 - v4);
  v5 = sub_1AAF8DF14();
  v6 = *(v5 - 8);
  v93 = v5;
  v94 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v107 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChartModel.Scenegraph(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SgCanvasRenderer(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD26008(0);
  *&MaxX = v16 - 8;
  MEMORY[0x1EEE9AC00](v16 - 8);
  v106 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD25FE8(0);
  v101 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v88 = &v87 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v100 = &v87 - v23;
  v24 = type metadata accessor for ChartSeparateAxesContent(0);
  v25 = v2 + *(v24 + 40);
  sub_1AACB26B4(v25, v11, type metadata accessor for ChartModel.Scenegraph);
  v26 = *(v25 + 16);
  v111.origin.x = v2[9];
  v111.origin.y = v2[10];
  v111.size.height = v2[12];
  v27 = v2[5];
  v91 = v2[11];
  v111.size.width = v91;
  v92 = v27;
  y = v111.origin.y;
  x = v111.origin.x;
  height = v111.size.height;
  v112 = CGRectOffset(v111, -v27, 0.0);
  v28 = v112.origin.x;
  v29 = v112.origin.y;
  width = v112.size.width;
  v31 = v112.size.height;
  v113 = *(v25 + 1288);
  v105 = *(v24 + 28);
  v32 = sub_1AAF87D70(v2 + v105, v113.origin.x, v113.origin.y, v113.size.width, v113.size.height, v28, v29, width, v31);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = *(v11 + 78);
  v40 = *(v11 + 163);
  v41 = *(v11 + 164);
  v89 = *(v11 + 1288);
  v90 = v39;
  sub_1AAD050BC((v11 + 536), v109);
  v42 = *v11;
  sub_1AACB6294(0, &qword_1ED9B28A8, sub_1AAD107BC, MEMORY[0x1E69E6F90]);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1AAF92AB0;
  *(v43 + 32) = v42;
  sub_1AAD050BC(v109, v43 + 104);
  *(v43 + 40) = 0x3FF0000000000000;
  *(v43 + 48) = v26;
  v44 = v90;
  *(v43 + 72) = v89;
  *(v43 + 56) = v44;
  *(v43 + 88) = v40;
  *(v43 + 96) = v41;
  v45 = sub_1AAD10684(v43);
  swift_setDeallocating();
  v46 = v93;

  sub_1AACDCF70(v43 + 32, sub_1AAD107BC);
  swift_deallocClassInstance();
  sub_1AAD09944(v109);
  *v15 = v45;
  v15[8] = v11[1280];
  v47 = v94;
  (*(*&v94 + 16))(&v15[*(v13 + 32)], &v11[*(v9 + 64)], v46);
  v114.origin.x = v32;
  v114.origin.y = v34;
  v114.size.width = v36;
  v48 = v38;
  v114.size.height = v38;
  *&v90 = floor(CGRectGetMinX(v114) * 0.00390625) * 256.0;
  v115.origin.x = v32;
  v115.origin.y = v34;
  v115.size.width = v36;
  v115.size.height = v38;
  v49 = floor(CGRectGetMinY(v115) * 0.00390625) * 256.0;
  v116.origin.x = v32;
  v116.origin.y = v34;
  v116.size.width = v36;
  v116.size.height = v48;
  v50 = ceil(CGRectGetMaxX(v116) * 0.00390625) * 256.0;
  v117.origin.x = v32;
  v117.origin.y = v34;
  v117.size.width = v36;
  v117.size.height = v48;
  MaxY = CGRectGetMaxY(v117);
  v52 = *&v90;
  v53 = ceil(MaxY * 0.00390625) * 256.0 - v49;
  v54 = v11;
  v55 = v47;
  sub_1AACDCF70(v54, type metadata accessor for ChartModel.Scenegraph);
  v56 = &v15[*(v13 + 36)];
  *v56 = v52;
  *(v56 + 1) = v49;
  *(v56 + 2) = v50 - v52;
  *(v56 + 3) = v53;
  v57 = v91;
  v56[32] = 0;
  v58 = v2[7];
  v59 = *MEMORY[0x1E697E7D8];
  v60 = *(*&v47 + 104);
  v61 = v107;
  *&v90 = v60;
  v60(v107, v59, v46);
  LOBYTE(v9) = sub_1AAF8DF04();
  v62 = *(*&v55 + 8);
  v62(v61, v46);
  v63 = v92;
  if (v9)
  {
    v64 = v57 - v58 - v92;
  }

  else
  {
    v64 = v92;
  }

  v65 = v106;
  sub_1AAD10834(v15, v106, type metadata accessor for SgCanvasRenderer);
  v66 = v65 + *(*&MaxX + 44);
  *v66 = v64;
  *(v66 + 8) = 0;
  if (LOBYTE(MinX))
  {
    v67 = v2[8];
    v68 = v2[6];
    v118.origin.x = v63;
    v118.origin.y = v68;
    v118.size.width = v58;
    v118.size.height = v67;
    MinX = CGRectGetMinX(v118);
    v69 = y;
    v70 = x;
    v119.origin.x = x;
    v119.origin.y = y;
    v119.size.width = v57;
    v71 = height;
    v119.size.height = height;
    v94 = CGRectGetMinX(v119);
    v120.origin.x = v63;
    v120.origin.y = v68;
    v120.size.width = v58;
    v120.size.height = v67;
    MaxX = CGRectGetMaxX(v120);
    v121.origin.x = v70;
    v121.origin.y = v69;
    v121.size.width = v57;
    v121.size.height = v71;
    CGRectGetMaxX(v121);
    v122.origin.x = v70;
    v122.origin.y = v69;
    v122.size.width = v57;
    v122.size.height = v71;
    CGRectGetMinX(v122);
    v72 = v71;
  }

  else
  {
    v69 = y;
    v70 = x;
    v123.origin.x = x;
    v123.origin.y = y;
    v123.size.width = v57;
    v72 = height;
    v123.size.height = height;
    CGRectGetMinX(v123);
  }

  v124.origin.x = v70;
  v124.origin.y = v69;
  v124.size.width = v57;
  v124.size.height = v72;
  CGRectGetMaxX(v124);
  v125.origin.x = v70;
  v125.origin.y = v69;
  v125.size.width = v57;
  v125.size.height = v72;
  CGRectGetMinY(v125);
  v126.origin.x = v70;
  v126.origin.y = v69;
  v126.size.width = v57;
  v126.size.height = v72;
  CGRectGetMaxY(v126);
  v73 = v107;
  (v90)(v107, v59, v46);
  sub_1AAF8DF04();
  v62(v73, v46);
  sub_1AAF8E944();
  v74 = v110;
  v75 = v100;
  sub_1AAD10834(v106, v100, sub_1AAD26008);
  v76 = v75 + *(v101 + 36);
  v77 = v109[1];
  *v76 = v109[0];
  *(v76 + 16) = v77;
  *(v76 + 32) = v74;
  *(v76 + 33) = 256;
  v78 = sub_1AAE32300();
  v80 = v79;
  sub_1AACB4A98(v81, v82);
  if (v78)
  {

    v83 = v88;
    sub_1AACB26B4(v75, v88, sub_1AAD25FE8);
    sub_1AACB26B4(v83, v87, sub_1AAD25FE8);
    sub_1AACBE068(&unk_1ED9B4510, sub_1AAD25FE8, sub_1AAD260B4, sub_1AACCFB08);
    v84 = sub_1AAF8EF44();
    sub_1AACDCF70(v83, sub_1AAD25FE8);
    v108 = v84;
    v85 = v78(&v108);
    sub_1AACB4A98(v78, v80);

    *v103 = v85;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
    sub_1AAF8E374();
    sub_1AACB4A98(v78, v80);
  }

  else
  {
    sub_1AACB26B4(v75, v103, sub_1AAD25FE8);
    swift_storeEnumTagMultiPayload();
    sub_1AACBE068(&unk_1ED9B4510, sub_1AAD25FE8, sub_1AAD260B4, sub_1AACCFB08);
    sub_1AAF8E374();
  }

  return sub_1AACDCF70(v75, sub_1AAD25FE8);
}

uint64_t sub_1AAE32F1C@<X0>(int a1@<W0>, void *a2@<X8>)
{
  LODWORD(v100) = a1;
  v107 = a2;
  sub_1AAD00BB8(0, &qword_1ED9ADA78, sub_1AAD25FE8, MEMORY[0x1E697F948]);
  v105 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v106 = (&v87 - v4);
  v5 = sub_1AAF8DF14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v92.size.height = type metadata accessor for ChartModel.Scenegraph(0);
  MEMORY[0x1EEE9AC00](*&v92.size.height);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for SgCanvasRenderer(0);
  MEMORY[0x1EEE9AC00](v94);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD26008(0);
  v93 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD25FE8(0);
  v103 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v87 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v87 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v104 = &v87 - v20;
  v21 = type metadata accessor for ChartSeparateAxesContent(0);
  v22 = v2 + *(v21 + 40);
  sub_1AACB26B4(v22, v10, type metadata accessor for ChartModel.Scenegraph);
  v23 = *(v22 + 24);
  v25 = v2[9];
  v24 = v2[10];
  v26 = v2[11];
  v27 = v2[12];
  v28 = *(v21 + 28);
  v29 = *(v6 + 104);
  v98 = *MEMORY[0x1E697E7D8];
  v99 = v6 + 104;
  v97 = v29;
  v29(v8);
  v108 = v28;
  LOBYTE(v28) = sub_1AAF8DF04();
  v30 = *(v6 + 8);
  v102 = v5;
  v95 = v30;
  v96 = v6 + 8;
  v30(v8, v5);
  v31 = 0.0;
  if (v28)
  {
    v31 = v2[7] - v26;
  }

  v91 = v2[6];
  v112.origin.x = v25;
  v112.origin.y = v24;
  v112.size.width = v26;
  v112.size.height = v27;
  v113 = CGRectOffset(v112, v31, -v91);
  v32 = sub_1AAF87D70(v2 + v108, *(v22 + 1288), *(v22 + 1296), *(v22 + 1304), *(v22 + 1312), v113.origin.x, v113.origin.y, v113.size.width, v113.size.height);
  v92.origin.y = v24;
  v92.size.width = v26;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  *&v39 = *(v10 + 156);
  *&v40 = *(v10 + 161);
  v41 = *(v10 + 163);
  v92.origin.x = v25;
  v42 = *(v10 + 164);
  *(&v39 + 1) = *(v10 + 157);
  *(&v40 + 1) = *(v10 + 162);
  v89 = v40;
  v90 = v39;
  sub_1AAD050BC((v10 + 536), v110);
  v43 = *v10;
  sub_1AACB6294(0, &qword_1ED9B28A8, sub_1AAD107BC, MEMORY[0x1E69E6F90]);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1AAF92AB0;
  *(v44 + 32) = v43;
  sub_1AAD050BC(v110, v44 + 104);
  *(v44 + 40) = 0x3FF0000000000000;
  *(v44 + 48) = v23;
  v45 = v90;
  *(v44 + 72) = v89;
  *(v44 + 56) = v45;
  *(v44 + 88) = v41;
  *(v44 + 96) = v42;
  v46 = sub_1AAD10684(v44);
  swift_setDeallocating();

  sub_1AACDCF70(v44 + 32, sub_1AAD107BC);
  swift_deallocClassInstance();
  sub_1AAD09944(v110);
  *v12 = v46;
  v12[8] = v10[1280];
  v47 = v94;
  v48 = v102;
  (*(v6 + 16))(&v12[*(v94 + 24)], &v10[*(*&v92.size.height + 56)], v102);
  v114.origin.x = v32;
  v114.origin.y = v34;
  v114.size.width = v36;
  v49 = v38;
  v114.size.height = v38;
  MinX = CGRectGetMinX(v114);
  v92.size.height = v27;
  *&v90 = floor(MinX * 0.00390625) * 256.0;
  v115.origin.x = v32;
  v115.origin.y = v34;
  v115.size.width = v36;
  v115.size.height = v38;
  v51 = floor(CGRectGetMinY(v115) * 0.00390625) * 256.0;
  v116.origin.x = v32;
  v116.origin.y = v34;
  v116.size.width = v36;
  v116.size.height = v49;
  v52 = ceil(CGRectGetMaxX(v116) * 0.00390625) * 256.0;
  v117.origin.x = v32;
  v117.origin.y = v34;
  v117.size.width = v36;
  v117.size.height = v49;
  MaxY = CGRectGetMaxY(v117);
  v54 = *&v90;
  v55 = ceil(MaxY * 0.00390625) * 256.0 - v51;
  sub_1AACDCF70(v10, type metadata accessor for ChartModel.Scenegraph);
  v56 = &v12[*(v47 + 28)];
  *v56 = v54;
  *(v56 + 1) = v51;
  v57 = v91;
  *(v56 + 2) = v52 - v54;
  *(v56 + 3) = v55;
  v56[32] = 0;
  v58 = v101;
  sub_1AAD10834(v12, v101, type metadata accessor for SgCanvasRenderer);
  v59 = (v58 + *(v93 + 36));
  *v59 = 0.0;
  v59[1] = v57;
  if (LOBYTE(v100))
  {
    v60 = v2[7];
    v100 = v2[8];
    v118.size.height = v100;
    v61 = v2[5];
    v118.origin.x = v61;
    v118.origin.y = v57;
    v118.size.width = v60;
    CGRectGetMinY(v118);
    x = v92.origin.x;
    y = v92.origin.y;
    width = v92.size.width;
    height = v92.size.height;
    CGRectGetMinY(v92);
    v119.origin.x = v61;
    v119.origin.y = v57;
    v119.size.width = v60;
    v119.size.height = v100;
    v66 = CGRectGetMaxY(v119);
    v120.origin.x = x;
    v120.origin.y = y;
    v120.size.width = width;
    v120.size.height = height;
    v67 = CGRectGetMaxY(v120) < v66;
    v68 = 10000.0;
    if (v67)
    {
      v68 = 0.0;
    }

    v100 = v68;
    v70 = v103;
    v69 = v104;
    v71 = width;
    v72 = y;
    v73 = height;
  }

  else
  {
    v100 = 10000.0;
    v70 = v103;
    v69 = v104;
    v72 = v92.origin.y;
    v71 = v92.size.width;
    x = v92.origin.x;
    v73 = v92.size.height;
  }

  v121.origin.x = x;
  v121.origin.y = v72;
  v121.size.width = v71;
  v121.size.height = v73;
  CGRectGetMinX(v121);
  v122.origin.x = x;
  v122.origin.y = v72;
  v122.size.width = v71;
  v122.size.height = v73;
  CGRectGetMaxX(v122);
  v123.origin.x = x;
  v123.origin.y = v72;
  v123.size.width = v71;
  v123.size.height = v73;
  CGRectGetMinY(v123);
  v124.origin.x = x;
  v124.origin.y = v72;
  v124.size.width = v71;
  v124.size.height = v73;
  CGRectGetMaxY(v124);
  v97(v8, v98, v48);
  sub_1AAF8DF04();
  v95(v8, v48);
  sub_1AAF8E944();
  v74 = v111;
  sub_1AAD10834(v58, v69, sub_1AAD26008);
  v75 = v69 + *(v70 + 36);
  v76 = v110[1];
  *v75 = v110[0];
  *(v75 + 16) = v76;
  *(v75 + 32) = v74;
  *(v75 + 33) = 256;
  v77 = sub_1AAE32300();
  v79 = v78;
  v81 = v80;
  sub_1AACB4A98(v77, v82);
  if (v79)
  {

    v83 = v88;
    sub_1AACB26B4(v69, v88, sub_1AAD25FE8);
    sub_1AACB26B4(v83, v87, sub_1AAD25FE8);
    sub_1AACBE068(&unk_1ED9B4510, sub_1AAD25FE8, sub_1AAD260B4, sub_1AACCFB08);
    v84 = sub_1AAF8EF44();
    sub_1AACDCF70(v83, sub_1AAD25FE8);
    v109 = v84;
    v85 = v79(&v109);
    sub_1AACB4A98(v79, v81);

    *v106 = v85;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
    sub_1AAF8E374();
    sub_1AACB4A98(v79, v81);
  }

  else
  {
    sub_1AACB26B4(v69, v106, sub_1AAD25FE8);
    swift_storeEnumTagMultiPayload();
    sub_1AACBE068(&unk_1ED9B4510, sub_1AAD25FE8, sub_1AAD260B4, sub_1AACCFB08);
    sub_1AAF8E374();
  }

  return sub_1AACDCF70(v69, sub_1AAD25FE8);
}

uint64_t sub_1AAE33994@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1AAF8E134();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, v2, v4, v6);
  sub_1AAF8E104();
  v9 = type metadata accessor for ChartEnvironmentValues(0);
  sub_1AAF8E114();
  sub_1AAF8E0B4();
  sub_1AAF8E084();
  *(a1 + *(v9 + 28)) = v10;
  sub_1AAF8E094();
  sub_1AACBFE5C();
  sub_1AAF8E144();
  result = (*(v5 + 8))(v8, v4);
  *(a1 + *(v9 + 36)) = v12[15];
  return result;
}

void sub_1AAE33AEC(double a1@<X0>, char a2@<W1>, double a3@<X2>, int a4@<W3>, double a5@<X4>, double a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v88 = a6;
  v89 = a5;
  LODWORD(v90) = a4;
  v13 = sub_1AAF8D934();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v83 - v19;
  v21 = *(v7 + 32);
  v22 = *(v7 + 40);
  v86 = *(v7 + 48);
  v87 = v22;
  v93 = *(v7 + 56);
  v23 = *(v7 + 64);
  v24 = *(v8 + 72);
  if (v21 > 8)
  {
    goto LABEL_4;
  }

  if (((1 << v21) & 0x1E0) != 0)
  {
    v25 = v21;
    sub_1AAF885A0(6);
    v21 = v25;
    goto LABEL_4;
  }

  v85 = v21;
  if (((1 << v21) & 6) != 0)
  {
    if (v24)
    {
      v84 = v18;
      sub_1AAF8DB14();
      sub_1AAF8DB14();
      sub_1AAF8D924();
      v31 = v30;
      v32 = *(v14 + 8);
      v33 = v16;
      v34 = v84;
      v32(v33, v84);
      v32(v20, v34);
    }

    else
    {
      v31 = v23;
    }

    v28 = LOBYTE(v90);
    if (LOBYTE(v90))
    {
      v57 = a3;
    }

    else
    {
      v57 = (a3 - v31) * 0.5;
    }

    v92 = a2 & 1;
    v91 = LOBYTE(v90) & 1;
    v88 = v57;
    sub_1AAF8DAF4();
    v48 = v59;
    v44 = v58;
    v27 = a1;
    if ((a2 & 1) == 0)
    {
      v27 = a1 - (*(v8 + 8) + *(v8 + 24));
    }

    if ((v28 & 1) == 0)
    {
      a3 = a3 - (*v8 + *(v8 + 16)) - v58 - v31;
    }

    v35 = a3;
    v92 = a2 & 1;
    v91 = v28 & 1;
    sub_1AAF8DAF4();
    v60 = *v8;
    v37 = *(v8 + 8);
    v39 = v61 + v37 + *(v8 + 24);
    v63 = v62 + *v8 + *(v8 + 16);
    v64 = v31 + v44 + *v8;
    v51 = v85;
    v89 = 0.0;
    if (v85 == 1)
    {
      v42 = 0.0;
    }

    else
    {
      v42 = v31 + v63;
    }

    if (v85 == 1)
    {
      v36 = v64;
    }

    else
    {
      v36 = v60;
    }

    v45 = a1;
    v49 = a2;
    v41 = v31 + v44 + v63;
    a3 = v88;
    v50 = v28;
    v43 = v39;
    v46 = v44;
  }

  else
  {
    if (((1 << v21) & 0x18) == 0)
    {
LABEL_4:
      if (v24)
      {
        v26 = 8.0;
      }

      else
      {
        v26 = v23;
      }

      if (a2)
      {
        v27 = a1;
        v28 = LOBYTE(v90);
        if ((LOBYTE(v90) & 1) == 0)
        {
LABEL_9:
          v29 = v21;
          a3 = a3 - (*v8 + *(v8 + 16));
LABEL_15:
          v35 = a3;
          v92 = a2 & 1;
          v91 = v28 & 1;
          sub_1AAF8DAF4();
          v36 = *v8;
          v37 = *(v8 + 8);
          v39 = v38 + v37 + *(v8 + 24);
          v41 = v40 + *v8 + *(v8 + 16);
          v89 = v26 + v37;
          v42 = v26 + v36;
          v43 = v38 - (v26 + v26);
          v44 = v40 - (v26 + v26);
          v45 = v43;
          a3 = v44;
          v92 = 0;
          v91 = 0;
          sub_1AAF8DAF4();
          v48 = v47;
          v49 = 0;
          v50 = 0;
          v51 = v29;
          goto LABEL_48;
        }
      }

      else
      {
        v27 = a1 - (*(v8 + 8) + *(v8 + 24));
        v28 = LOBYTE(v90);
        if ((LOBYTE(v90) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v29 = v21;
      goto LABEL_15;
    }

    if (v24)
    {
      v84 = v18;
      sub_1AAF8DB14();
      sub_1AAF8DB14();
      sub_1AAF8D924();
      v53 = v52;
      v54 = *(v14 + 8);
      v55 = v16;
      v56 = v84;
      v54(v55, v84);
      v54(v20, v56);
    }

    else
    {
      v53 = v23;
    }

    if (a2)
    {
      v45 = a1;
    }

    else
    {
      v45 = (a1 - v53) * 0.5;
    }

    v92 = a2 & 1;
    v91 = LOBYTE(v90) & 1;
    sub_1AAF8DAF4();
    v43 = v65;
    v88 = v66;
    if ((a2 & 1) == 0)
    {
      a1 = a1 - (*(v8 + 8) + *(v8 + 24)) - v65 - v53;
    }

    v35 = a3;
    v28 = LOBYTE(v90);
    if ((LOBYTE(v90) & 1) == 0)
    {
      v35 = a3 - (*v8 + *(v8 + 16));
    }

    v92 = a2 & 1;
    v91 = LOBYTE(v90) & 1;
    sub_1AAF8DAF4();
    v36 = *v8;
    v67 = *(v8 + 8);
    v69 = v68 + v67 + *(v8 + 24);
    v41 = v70 + *v8 + *(v8 + 16);
    v71 = v53 + v69;
    v51 = v85;
    v42 = 0.0;
    if (v85 == 3)
    {
      v71 = 0.0;
    }

    v89 = v71;
    if (v85 == 3)
    {
      v37 = v53 + v43 + v67;
    }

    else
    {
      v37 = v67;
    }

    v49 = a2;
    v39 = v53 + v43 + v69;
    v50 = v28;
    v27 = a1;
    v44 = v41;
    v48 = v43;
    v46 = v88;
  }

LABEL_48:
  if (v93 == 1)
  {
    v90 = v37;
    v72 = v43;
    v73 = v36;
    v74 = v44;
    v75 = v48;
    v76 = v41;
    v77 = v39;
    v78 = v46;
    if (v51)
    {
      v79 = sub_1AAF8F0B4();
    }

    else
    {
      v79 = sub_1AAF8F0C4();
    }

    v46 = v78;
    v39 = v77;
    v41 = v76;
    v48 = v75;
    v44 = v74;
    v36 = v73;
    v43 = v72;
    v37 = v90;
  }

  else
  {
    v80 = v86;
    v79 = v87;
  }

  v81 = sub_1AAE384B8(v79, v80, v48, v46, v89, v42, v43, v44);
  *a7 = v39;
  *(a7 + 8) = v41;
  *(a7 + 16) = v27;
  *(a7 + 24) = a2 & 1;
  *(a7 + 32) = v35;
  *(a7 + 40) = v28 & 1;
  *(a7 + 48) = v37;
  *(a7 + 56) = v36;
  *(a7 + 64) = v45;
  *(a7 + 72) = v49 & 1;
  *(a7 + 80) = a3;
  *(a7 + 88) = v50 & 1;
  *(a7 + 96) = v81;
  *(a7 + 104) = v82;
}

uint64_t (*sub_1AAE341D0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1AAF8D804();
  return sub_1AAE34258;
}

void sub_1AAE34258(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1AAE342A0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1AAF8E134();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1AAE387DC(v2 + *(a1 + 48), v14, &qword_1ED9ADBB0, &type metadata for ChartScrollPositionConfiguration, MEMORY[0x1E697DCB8]);
  if (v16 == 1)
  {
    v10 = v14[3];
    a2[2] = v14[2];
    a2[3] = v10;
    a2[4] = *v15;
    *(a2 + 74) = *&v15[10];
    v11 = v14[1];
    *a2 = v14[0];
    a2[1] = v11;
  }

  else
  {
    v12 = sub_1AAF8FD14();
    v13 = sub_1AAF8E764();
    sub_1AAF8D7B4(v12, &dword_1AACA8000, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1AAF8E124();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_1AAE3443C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1AAF8E134();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1AAE387DC(v2 + *(a1 + 52), v15, &qword_1ED9B4558, &type metadata for ChartScrollZoomConfiguration, MEMORY[0x1E697DCB8]);
  if (v16 == 1)
  {
    v10 = v15[3];
    a2[2] = v15[2];
    a2[3] = v10;
    a2[4] = v15[4];
    v11 = v15[1];
    *a2 = v15[0];
    a2[1] = v11;
  }

  else
  {
    v12 = sub_1AAF8FD14();
    v13 = sub_1AAF8E764();
    sub_1AAF8D7B4(v12, &dword_1AACA8000, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1AAF8E124();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_1AAE345D8(uint64_t a1)
{
  sub_1AACBBB24(0, &qword_1ED9B2B50, qword_1ED9B3978, &type metadata for AnyPrimitivePlottable, MEMORY[0x1E6981790]);
  sub_1AAF8EE34();
  return v2;
}

uint64_t sub_1AAE346F4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1AACCCCDC(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACB26B4(a1, v6, sub_1AACCCCDC);
  v7 = type metadata accessor for ChartModel.Scenegraph(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    return sub_1AACDCF70(v6, sub_1AACCCCDC);
  }

  sub_1AACDCF70(a1, sub_1AACCCCDC);
  v8 = sub_1AACDCF70(v6, sub_1AACCCCDC);
  return a2(v8);
}

uint64_t sub_1AAE34830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAE39B14(&qword_1EB4259E0, sub_1AACCCCDC, sub_1AAE39330, MEMORY[0x1E69E7C80]);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1AAE348D8()
{
  result = qword_1EB4259D0;
  if (!qword_1EB4259D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4259D0);
  }

  return result;
}

unint64_t sub_1AAE34930()
{
  result = qword_1EB4259D8;
  if (!qword_1EB4259D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4259D8);
  }

  return result;
}

uint64_t sub_1AAE349C8(uint64_t a1)
{
  sub_1AACBBB24(0, &qword_1ED9B2B50, qword_1ED9B3978, &type metadata for AnyPrimitivePlottable, MEMORY[0x1E6981790]);
  sub_1AAF8EE34();
  return v2;
}

uint64_t sub_1AAE34AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v66 = *(a1 - 8);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v65 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 16);
  v6 = v4;
  sub_1AAD0A750(255, &qword_1ED9ADA30, sub_1AAE386A4, &type metadata for ScrollViewBoundsReader, MEMORY[0x1E697CA00]);
  v7 = v5;
  v8 = sub_1AAF8DF74();
  v64 = *(v6 + 24);
  v9 = v64;
  v10 = v6;
  v11 = sub_1AAE386F8();
  v85[6] = v9;
  v85[7] = v11;
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1AAE38788();
  *&v82 = v8;
  *(&v82 + 1) = &type metadata for XYBindingValue;
  v83 = WitnessTable;
  v84 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v82 = v8;
  *(&v82 + 1) = &type metadata for XYBindingValue;
  v83 = WitnessTable;
  v84 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_1AAE052B0();
  *&v82 = OpaqueTypeMetadata2;
  *(&v82 + 1) = &type metadata for ChartScrollPositionConfiguration;
  v83 = OpaqueTypeConformance2;
  v84 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  *&v82 = OpaqueTypeMetadata2;
  *(&v82 + 1) = &type metadata for ChartScrollPositionConfiguration;
  v83 = OpaqueTypeConformance2;
  v84 = v16;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = sub_1AAE05304();
  *&v82 = v17;
  *(&v82 + 1) = &type metadata for ChartScrollZoomConfiguration;
  v83 = v18;
  v84 = v19;
  swift_getOpaqueTypeMetadata2();
  *&v82 = v17;
  *(&v82 + 1) = &type metadata for ChartScrollZoomConfiguration;
  v83 = v18;
  v84 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1AAF8E564();
  swift_getWitnessTable();
  v20 = sub_1AAF8D844();
  v21 = swift_getWitnessTable();
  *&v82 = v20;
  *(&v82 + 1) = v21;
  v58 = swift_getOpaqueTypeMetadata2();
  *&v82 = v20;
  *(&v82 + 1) = v21;
  v57 = swift_getOpaqueTypeConformance2();
  v22 = sub_1AAF8E024();
  v59 = swift_getWitnessTable();
  *&v82 = v22;
  *(&v82 + 1) = v59;
  v54 = v22;
  v56 = MEMORY[0x1E697D1F0];
  v61 = swift_getOpaqueTypeMetadata2();
  v23 = sub_1AAF8E384();
  v24 = *(v23 - 8);
  v62 = v23;
  v63 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v55 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v60 = &v51 - v27;
  v28 = v10;
  v51 = v10;
  sub_1AAE342A0(v10, &v82);
  v29 = MEMORY[0x1E69E6720];
  sub_1AAE387DC(&v82, v81, &qword_1ED9B0F38, &type metadata for ChartScrollPosition, MEMORY[0x1E69E6720]);
  sub_1AAE04FC4(&v82);
  v30 = v7;
  v76 = v7;
  v31 = v64;
  v77 = v64;
  v78 = v2;
  v32 = v2;
  v53 = sub_1AAF520F4(sub_1AAE3884C);
  v52 = v33;
  sub_1AACEC574(v81, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
  sub_1AAE342A0(v28, &v82);
  sub_1AAE387DC(v85, v81, &qword_1ED9B0F38, &type metadata for ChartScrollPosition, v29);
  sub_1AAE04FC4(&v82);
  v73 = v30;
  v74 = v31;
  v75 = v2;
  v34 = sub_1AAF520F4(sub_1AAE38870);
  LOBYTE(v22) = v35;
  sub_1AACEC574(v81, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
  v37 = v65;
  v36 = v66;
  v38 = v32;
  v39 = v51;
  (*(v66 + 16))(v65, v38, v51);
  v40 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v30;
  *(v41 + 24) = v31;
  (*(v36 + 32))(v41 + v40, v37, v39);
  *&v82 = sub_1AAF8E014();
  *(&v82 + 1) = v42;
  LOBYTE(v29) = v52 & v22;
  v69[2] = v30;
  v69[3] = v31;
  v43 = v54;
  v69[4] = v53;
  v70 = v52 & 1;
  v71 = v34;
  v72 = v22 & 1;
  v44 = v59;
  v81[0] = v54;
  v81[1] = v59;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v55;
  sub_1AAE37E3C((v29 & 1) == 0, sub_1AAE388C0, v69, v43, v61, v44, v45, v55);

  v79 = v45;
  v80 = v44;
  v47 = v62;
  swift_getWitnessTable();
  v48 = v60;
  sub_1AACE0800();
  v49 = *(v63 + 8);
  v49(v46, v47);
  sub_1AACE0800();
  return (v49)(v48, v47);
}

uint64_t sub_1AAE351D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = (a2 + *(type metadata accessor for ChartScrollView(0, a3, a4, a4) + 40));
  v8 = *(v7 + 7);
  *&v36[16] = *(v7 + 6);
  v37 = v8;
  v38 = v7[16];
  v9 = *(v7 + 3);
  v33 = *(v7 + 2);
  v34 = v9;
  v10 = *(v7 + 5);
  v35 = *(v7 + 4);
  *v36 = v10;
  v11 = *(v7 + 1);
  v31 = *v7;
  v32 = v11;
  result = sub_1AAE3929C(&v31);
  v13 = result;
  v14 = 0.0;
  if (result != 1)
  {
    sub_1AAE04AD8(a1, &v26);
    if (v27[25])
    {
      v24 = v26;
      v25[0] = *v27;
      *(v25 + 9) = *&v27[9];
      v15 = sub_1AAE84CD4();
      v17 = v16;
      v19 = v18;
      sub_1AAE04B10(&v24);
    }

    else
    {
      v17 = *(&v26 + 1);
      v15 = v26;
      v19 = v27[0];
    }

    v29 = v35;
    v30[0] = *v36;
    *(v30 + 9) = *&v36[9];
    v26 = v31;
    *v27 = v32;
    *&v27[16] = v33;
    v28 = v34;
    v20 = sub_1AAE29640(v15, v17, v19);
    v22 = v21;
    result = sub_1AACCA728(v15, v17, v19);
    if (*(&v37 + 1) + 2.22044605e-12 < *&v37)
    {
      v23 = *&v20;
      if (v22)
      {
        v23 = 0.0;
      }

      v14 = (v23 - v38) / (*&v37 - *(&v37 + 1));
    }
  }

  *a5 = v14;
  *(a5 + 8) = v13 == 1;
  return result;
}

uint64_t sub_1AAE35374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = (a2 + *(type metadata accessor for ChartScrollView(0, a3, a4, a4) + 44));
  v8 = *(v7 + 7);
  *&v36[16] = *(v7 + 6);
  v37 = v8;
  v38 = v7[16];
  v9 = *(v7 + 3);
  v33 = *(v7 + 2);
  v34 = v9;
  v10 = *(v7 + 5);
  v35 = *(v7 + 4);
  *v36 = v10;
  v11 = *(v7 + 1);
  v31 = *v7;
  v32 = v11;
  result = sub_1AAE3929C(&v31);
  v13 = result;
  v14 = 0.0;
  if (result != 1)
  {
    sub_1AAE04AD8(a1, &v26);
    if (v27[25])
    {
      v24 = v26;
      v25[0] = *v27;
      *(v25 + 9) = *&v27[9];
      v15 = sub_1AAE84CD4();
      v17 = v16;
      v19 = v18;
      sub_1AAE04B10(&v24);
    }

    else
    {
      v17 = *(&v26 + 1);
      v15 = v26;
      v19 = v27[0];
    }

    v29 = v35;
    v30[0] = *v36;
    *(v30 + 9) = *&v36[9];
    v26 = v31;
    *v27 = v32;
    *&v27[16] = v33;
    v28 = v34;
    v20 = sub_1AAE29640(v15, v17, v19);
    v22 = v21;
    result = sub_1AACCA728(v15, v17, v19);
    if (*(&v37 + 1) + 2.22044605e-12 < *&v37)
    {
      v23 = *&v20;
      if (v22)
      {
        v23 = 0.0;
      }

      v14 = (v23 - v38) / (*&v37 - *(&v37 + 1));
    }
  }

  *a5 = v14;
  *(a5 + 8) = v13 == 1;
  return result;
}

uint64_t sub_1AAE35514@<X0>(char *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a4;
  v39 = a3;
  v40 = a2;
  v41 = a1;
  v44 = a5;
  v6 = sub_1AAF8E624();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0A750(255, &qword_1ED9ADA30, sub_1AAE386A4, &type metadata for ScrollViewBoundsReader, MEMORY[0x1E697CA00]);
  v9 = sub_1AAF8DF74();
  v10 = sub_1AAE386F8();
  v53 = a4;
  v54 = v10;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1AAE38788();
  v49 = v9;
  v50 = &type metadata for XYBindingValue;
  v51 = WitnessTable;
  v52 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = v9;
  v50 = &type metadata for XYBindingValue;
  v51 = WitnessTable;
  v52 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_1AAE052B0();
  v49 = OpaqueTypeMetadata2;
  v50 = &type metadata for ChartScrollPositionConfiguration;
  v51 = OpaqueTypeConformance2;
  v52 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v49 = OpaqueTypeMetadata2;
  v50 = &type metadata for ChartScrollPositionConfiguration;
  v51 = OpaqueTypeConformance2;
  v52 = v15;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = sub_1AAE05304();
  v49 = v16;
  v50 = &type metadata for ChartScrollZoomConfiguration;
  v51 = v17;
  v52 = v18;
  swift_getOpaqueTypeMetadata2();
  v49 = v16;
  v50 = &type metadata for ChartScrollZoomConfiguration;
  v51 = v17;
  v52 = v18;
  swift_getOpaqueTypeConformance2();
  sub_1AAF8E564();
  swift_getWitnessTable();
  v19 = sub_1AAF8D844();
  v38 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v22 = swift_getWitnessTable();
  v49 = v19;
  v50 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v37 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v35 - v27;
  v45 = v39;
  v46 = v36;
  v47 = v40;
  v48 = v41;
  sub_1AAF8D854();
  v41 = v8;
  sub_1AAF8E614();
  sub_1AACBBBA0(0, &qword_1ED9AD6B0, MEMORY[0x1E6980D08], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AAF9E2B0;
  v30 = sub_1AAF8E794();
  *(inited + 32) = v30;
  v31 = sub_1AAF8E774();
  *(inited + 33) = v31;
  sub_1AAF8E784();
  sub_1AAF8E784();
  if (sub_1AAF8E784() != v30)
  {
    sub_1AAF8E784();
  }

  sub_1AAF8E784();
  if (sub_1AAF8E784() != v31)
  {
    sub_1AAF8E784();
  }

  v32 = v41;
  sub_1AAF8EB34();
  (*(v42 + 8))(v32, v43);
  (*(v38 + 8))(v21, v19);
  v49 = v19;
  v50 = v22;
  swift_getOpaqueTypeConformance2();
  sub_1AACE0800();
  v33 = *(v37 + 8);
  v33(v25, v23);
  sub_1AACE0800();
  return (v33)(v28, v23);
}

uint64_t sub_1AAE35B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a2;
  v52 = a5;
  v49 = a1;
  v48 = sub_1AAF8DF94();
  v53 = *(v48 - 8);
  v50 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v46 = a3;
  v47 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a4;
  v45 = a4;
  v10 = type metadata accessor for ChartScrollView(0, a3, a4, v9);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v43 - v13;
  v43[0] = v43 - v13;
  sub_1AAD0A750(255, &qword_1ED9ADA30, sub_1AAE386A4, &type metadata for ScrollViewBoundsReader, MEMORY[0x1E697CA00]);
  v15 = sub_1AAF8DF74();
  v16 = sub_1AAE386F8();
  v58 = v8;
  v59 = v16;
  WitnessTable = swift_getWitnessTable();
  v18 = sub_1AAE38788();
  v54 = v15;
  v55 = &type metadata for XYBindingValue;
  v56 = WitnessTable;
  v57 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v54 = v15;
  v55 = &type metadata for XYBindingValue;
  v56 = WitnessTable;
  v57 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_1AAE052B0();
  v54 = OpaqueTypeMetadata2;
  v55 = &type metadata for ChartScrollPositionConfiguration;
  v56 = OpaqueTypeConformance2;
  v57 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v54 = OpaqueTypeMetadata2;
  v55 = &type metadata for ChartScrollPositionConfiguration;
  v56 = OpaqueTypeConformance2;
  v57 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_1AAE05304();
  v54 = v22;
  v55 = &type metadata for ChartScrollZoomConfiguration;
  v56 = v23;
  v57 = v24;
  v43[2] = swift_getOpaqueTypeMetadata2();
  v54 = v22;
  v55 = &type metadata for ChartScrollZoomConfiguration;
  v56 = v23;
  v57 = v24;
  v43[1] = swift_getOpaqueTypeConformance2();
  v25 = sub_1AAF8E564();
  v44 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = v43 - v30;
  v32 = v10;
  (*(v11 + 16))(v14, v49, v10, v29);
  v33 = v53;
  v34 = v47;
  v35 = v48;
  (*(v53 + 16))(v47, v51, v48);
  v36 = v11;
  v37 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v38 = (v12 + *(v33 + 80) + v37) & ~*(v33 + 80);
  v39 = swift_allocObject();
  v40 = v45;
  *(v39 + 16) = v46;
  *(v39 + 24) = v40;
  (*(v36 + 32))(v39 + v37, v43[0], v32);
  (*(v53 + 32))(v39 + v38, v34, v35);
  sub_1AAF8E554();
  swift_getWitnessTable();
  sub_1AACE0800();
  v41 = *(v44 + 8);
  v41(v27, v25);
  sub_1AACE0800();
  return (v41)(v31, v25);
}

uint64_t sub_1AAE36000@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v132 = a3;
  v137 = a2;
  v126 = a1;
  v119 = a6;
  v130 = sub_1AAF8DF94();
  v138 = *(v130 - 8);
  v131 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v128 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = a4;
  v9 = a5;
  v136 = a5;
  v11 = type metadata accessor for ChartScrollView(0, a4, a5, v10);
  v12 = *(v11 - 8);
  v124 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v122 = v91 - v13;
  v101 = sub_1AAF8E004();
  v14 = *(v101 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v121 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0A750(255, &qword_1ED9ADA30, sub_1AAE386A4, &type metadata for ScrollViewBoundsReader, MEMORY[0x1E697CA00]);
  v16 = sub_1AAF8DF74();
  v115 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v127 = v91 - v17;
  v18 = sub_1AAE386F8();
  v142 = v9;
  v143 = v18;
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1AAE38788();
  *&v140 = v16;
  v21 = v16;
  v102 = v16;
  *(&v140 + 1) = &type metadata for XYBindingValue;
  *v141 = WitnessTable;
  v104 = WitnessTable;
  *&v141[8] = v20;
  v22 = v20;
  v103 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v117 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v125 = v91 - v24;
  *&v140 = v21;
  *(&v140 + 1) = &type metadata for XYBindingValue;
  *v141 = WitnessTable;
  *&v141[8] = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_1AAE052B0();
  *&v140 = OpaqueTypeMetadata2;
  v27 = OpaqueTypeMetadata2;
  v105 = OpaqueTypeMetadata2;
  *(&v140 + 1) = &type metadata for ChartScrollPositionConfiguration;
  *v141 = OpaqueTypeConformance2;
  v107 = OpaqueTypeConformance2;
  *&v141[8] = v26;
  v106 = v26;
  v28 = swift_getOpaqueTypeMetadata2();
  v112 = v28;
  v118 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v129 = v91 - v29;
  *&v140 = v27;
  *(&v140 + 1) = &type metadata for ChartScrollPositionConfiguration;
  *v141 = OpaqueTypeConformance2;
  *&v141[8] = v26;
  v30 = swift_getOpaqueTypeConformance2();
  v111 = v30;
  v110 = sub_1AAE05304();
  *&v140 = v28;
  *(&v140 + 1) = &type metadata for ChartScrollZoomConfiguration;
  *v141 = v30;
  *&v141[8] = v110;
  v113 = MEMORY[0x1E6981448];
  v114 = swift_getOpaqueTypeMetadata2();
  v116 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v108 = v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v109 = v91 - v34;
  v35 = v11;
  v91[1] = *(v11 + 36);
  v36 = *(v14 + 16);
  v98 = v14 + 16;
  v99 = v36;
  v37 = v121;
  v38 = v101;
  (v36)(v121, v126, v101, v33);
  v133 = v12;
  v135 = *(v12 + 16);
  v120 = v12 + 16;
  v39 = v122;
  v135(v122, v137, v11);
  v40 = *(v14 + 80);
  v41 = (v40 + 32) & ~v40;
  v100 = *(v12 + 80);
  v94 = v41;
  v42 = (v15 + v100 + v41) & ~v100;
  v92 = v42 + v124;
  v93 = v42;
  v123 = v100 | 7;
  v97 = v100 | 7 | v40;
  v43 = swift_allocObject();
  v44 = v139;
  v45 = v136;
  *(v43 + 16) = v139;
  *(v43 + 24) = v45;
  v46 = *(v14 + 32);
  v95 = v14 + 32;
  v96 = v46;
  v47 = v43 + v41;
  v48 = v38;
  v46(v47, v37, v38);
  v134 = *(v133 + 32);
  v133 += 32;
  v49 = v39;
  v50 = v39;
  v51 = v35;
  v134(v43 + v42, v50, v35);
  v52 = v137;
  v53 = v45;
  sub_1AAE372F8(sub_1AAE389E4, v43, v44, v45);

  v54 = v52;
  sub_1AAE342A0(v51, &v140);
  sub_1AAE38AE4(&v140, &v144);
  v148 = *&v145[8];
  v149 = v145[24];
  v146 = v144;
  v147 = v145[0];
  v140 = v144;
  *v141 = *v145;
  *&v141[9] = *&v145[9];
  v55 = v121;
  v56 = v48;
  v99(v121, v126, v48);
  v57 = v49;
  v135(v49, v54, v51);
  v58 = v138;
  v59 = *(v138 + 16);
  v99 = (v138 + 16);
  v126 = v59;
  v60 = v128;
  v61 = v130;
  v59(v128, v132, v130);
  v98 = *(v58 + 80);
  v62 = v58;
  v63 = (v92 + v98) & ~v98;
  v64 = swift_allocObject();
  *(v64 + 16) = v139;
  *(v64 + 24) = v53;
  v96(v64 + v94, v55, v56);
  v134(v64 + v93, v57, v51);
  v65 = *(v62 + 32);
  v138 = v62 + 32;
  v121 = v65;
  (v65)(v64 + v63, v60, v61);
  v66 = v102;
  v67 = v127;
  sub_1AAF8EC14();

  sub_1AACEC574(&v146, qword_1ED9B3978, &type metadata for AnyPrimitivePlottable);
  sub_1AACEC574(&v148, qword_1ED9B3978, &type metadata for AnyPrimitivePlottable);
  (*(v115 + 8))(v67, v66);
  v68 = v137;
  sub_1AAE342A0(v51, &v140);
  v69 = v122;
  v70 = v51;
  v135(v122, v68, v51);
  v71 = (v100 + 32) & ~v100;
  v72 = v71 + v124;
  v73 = swift_allocObject();
  v74 = v136;
  *(v73 + 16) = v139;
  *(v73 + 24) = v74;
  v134(v73 + v71, v69, v70);
  v75 = v105;
  v76 = v125;
  sub_1AAF8EC14();

  sub_1AAE04FC4(&v140);
  (*(v117 + 8))(v76, v75);
  sub_1AAE3443C(v70, &v140);
  v135(v69, v68, v70);
  v77 = v128;
  v78 = v130;
  v126(v128, v132, v130);
  v79 = (v72 + v98) & ~v98;
  v80 = swift_allocObject();
  v81 = v136;
  *(v80 + 16) = v139;
  *(v80 + 24) = v81;
  v134(v80 + v71, v69, v70);
  (v121)(v80 + v79, v77, v78);
  v82 = v108;
  v83 = v112;
  v84 = v111;
  v85 = v110;
  v86 = v129;
  sub_1AAF8EC24();

  sub_1AACB2684(&v140);
  (*(v118 + 8))(v86, v83);
  *&v140 = v83;
  *(&v140 + 1) = &type metadata for ChartScrollZoomConfiguration;
  *v141 = v84;
  *&v141[8] = v85;
  swift_getOpaqueTypeConformance2();
  v87 = v109;
  v88 = v114;
  sub_1AACE0800();
  v89 = *(v116 + 8);
  v89(v82, v88);
  sub_1AACE0800();
  return (v89)(v87, v88);
}

void sub_1AAE36E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a2 + 32))
  {
    return;
  }

  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  if (sub_1AAF8DFE4())
  {
    v14 = sub_1AAF8DFD4() ^ 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = type metadata accessor for ChartScrollView(0, a5, a6, v13);
  v16 = (a4 + *(v15 + 40));
  v17 = *(v16 + 5);
  v18 = *(v16 + 7);
  v90 = *(v16 + 6);
  v91 = v18;
  v19 = *(v16 + 1);
  v20 = *(v16 + 3);
  v86 = *(v16 + 2);
  v87 = v20;
  v21 = *(v16 + 3);
  v22 = *(v16 + 5);
  v88 = *(v16 + 4);
  v89 = v22;
  v23 = *(v16 + 1);
  v84 = *v16;
  v85 = v23;
  v24 = *(v16 + 7);
  *&v98[16] = v90;
  v99 = v24;
  v95 = v86;
  v96 = v21;
  v97 = v88;
  *v98 = v17;
  v92 = v16[16];
  v100 = v16[16];
  v93 = v84;
  v94 = v19;
  if (sub_1AAE3929C(&v93) != 1)
  {
    *&v81[16] = v90;
    v82 = v91;
    v83 = v92;
    v78 = v86;
    v79 = v87;
    v80 = v88;
    *v81 = v89;
    v76 = v84;
    v77 = v85;
    sub_1AAE392D4(&v76, &v67);
    v107.origin.x = v9;
    v107.origin.y = v10;
    v107.size.width = v11;
    v107.size.height = v12;
    MinX = CGRectGetMinX(v107);
    v105 = v97;
    v106[0] = *v98;
    *(v106 + 9) = *&v98[9];
    v101 = v93;
    v102 = v94;
    v103 = v95;
    v104 = v96;
    v26 = sub_1AAE29570(MinX + v100);
    if (v28 == -1)
    {
LABEL_14:
      sub_1AACEC574(&v84, &qword_1ED9B3D40, &type metadata for ScrollViewMapping);
      goto LABEL_15;
    }

    if ((v14 & 1) == 0)
    {
LABEL_13:
      sub_1AAE34664(v26, v27, v28, v15);
      goto LABEL_14;
    }

    v29 = v26;
    v30 = v27;
    v31 = v28;
    sub_1AAE342A0(v15, &v67);
    sub_1AAE387DC(&v67, &v59, &qword_1ED9B0F38, &type metadata for ChartScrollPosition, MEMORY[0x1E69E6720]);
    sub_1AAE04FC4(&v67);
    if (HIBYTE(*&v60[24]) >= 0xFFu)
    {
      sub_1AACEC574(&v59, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
LABEL_12:
      v28 = v31;
      v27 = v30;
      v26 = v29;
      goto LABEL_13;
    }

    if ((*&v60[24] & 0x100) == 0)
    {
      sub_1AAE04AA8(&v59);
      goto LABEL_12;
    }

    v54 = v59;
    *v55 = *v60;
    *&v55[9] = *&v60[9];
    sub_1AAE85094(v29, v30, v31);
    sub_1AACEC574(&v84, &qword_1ED9B3D40, &type metadata for ScrollViewMapping);
    sub_1AAE04B10(&v54);
  }

LABEL_15:
  v32 = (a4 + *(v15 + 44));
  v33 = v32[5];
  v34 = v32[7];
  v73 = v32[6];
  v74 = v34;
  v35 = v32[1];
  v36 = v32[3];
  v69 = v32[2];
  v70 = v36;
  v37 = v32[3];
  v38 = v32[5];
  v71 = v32[4];
  v72 = v38;
  v39 = v32[1];
  v67 = *v32;
  v68 = v39;
  v40 = v32[7];
  *&v81[16] = v73;
  v82 = v40;
  v78 = v69;
  v79 = v37;
  v80 = v71;
  *v81 = v33;
  v75 = *(v32 + 16);
  v83 = *(v32 + 16);
  v76 = v67;
  v77 = v35;
  if (sub_1AAE3929C(&v76) != 1)
  {
    v64 = v73;
    v65 = v74;
    v66 = v75;
    *&v60[16] = v69;
    v61 = v70;
    v62 = v71;
    v63 = v72;
    v59 = v67;
    *v60 = v68;
    sub_1AAE392D4(&v59, &v54);
    v108.origin.x = v9;
    v108.origin.y = v10;
    v108.size.width = v11;
    v108.size.height = v12;
    MinY = CGRectGetMinY(v108);
    v57 = v80;
    v58[0] = *v81;
    *(v58 + 9) = *&v81[9];
    v54 = v76;
    *v55 = v77;
    *&v55[16] = v78;
    v56 = v79;
    v42 = sub_1AAE29570(MinY + v83);
    if (v44 != -1)
    {
      if (v14)
      {
        v45 = v42;
        v46 = v43;
        v47 = v44;
        sub_1AAE342A0(v15, v50);
        sub_1AAE387DC(&v51, &v48, &qword_1ED9B0F38, &type metadata for ChartScrollPosition, MEMORY[0x1E69E6720]);
        sub_1AAE04FC4(v50);
        if (HIBYTE(*&v49[24]) < 0xFFu)
        {
          if ((*&v49[24] & 0x100) != 0)
          {
            v52 = v48;
            v53[0] = *v49;
            *(v53 + 9) = *&v49[9];
            sub_1AAE85094(v45, v46, v47);
            sub_1AACEC574(&v67, &qword_1ED9B3D40, &type metadata for ScrollViewMapping);
            sub_1AAE04B10(&v52);
            return;
          }

          sub_1AAE04AA8(&v48);
        }

        else
        {
          sub_1AACEC574(&v48, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
        }

        v44 = v47;
        v43 = v46;
        v42 = v45;
      }

      sub_1AAE34A54(v42, v43, v44, v15);
    }

    sub_1AACEC574(&v67, &qword_1ED9B3D40, &type metadata for ScrollViewMapping);
  }
}

double sub_1AAE372F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1AAE386A4();

  sub_1AAF8EAD4();

  return result;
}

uint64_t sub_1AAE373B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  result = sub_1AAF8DFC4();
  if ((result & 1) == 0)
  {
    result = sub_1AAF8DFF4();
    if ((result & 1) == 0)
    {
      if (v12 == 255 || (v18 = (a4 + *(type metadata accessor for ChartScrollView(0, a6, a7, v17) + 40)), v19 = v18[7], *&v34[16] = v18[6], v35 = v19, v36 = *(v18 + 16), v20 = v18[3], v31 = v18[2], v32 = v20, v21 = v18[5], v33 = v18[4], *v34 = v21, v22 = v18[1], v29 = *v18, v30 = v22, result = sub_1AAE3929C(&v29), result == 1))
      {
        if (v15 == 255)
        {
          return result;
        }

        v23 = 1;
      }

      else
      {
        v42[6] = v33;
        v43[0] = *v34;
        *(v43 + 9) = *&v34[9];
        v42[2] = v29;
        v42[3] = v30;
        v42[4] = v31;
        v42[5] = v32;
        sub_1AAE29640(v10, v11, v12);
        if (v15 == 255)
        {
          return sub_1AAF8DF84();
        }

        v23 = 0;
      }

      v24 = (a4 + *(type metadata accessor for ChartScrollView(0, a6, a7, v17) + 44));
      v25 = v24[7];
      *&v34[16] = v24[6];
      v35 = v25;
      v36 = *(v24 + 16);
      v26 = v24[3];
      v31 = v24[2];
      v32 = v26;
      v27 = v24[5];
      v33 = v24[4];
      *v34 = v27;
      v28 = v24[1];
      v29 = *v24;
      v30 = v28;
      result = sub_1AAE3929C(&v29);
      if (result == 1)
      {
        if (v23)
        {
          return result;
        }
      }

      else
      {
        v41 = v33;
        v42[0] = *v34;
        *(v42 + 9) = *&v34[9];
        v37 = v29;
        v38 = v30;
        v39 = v31;
        v40 = v32;
        sub_1AAE29640(v13, v14, v15);
      }

      return sub_1AAF8DF84();
    }
  }

  return result;
}

uint64_t sub_1AAE375BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AAE387DC(a2, v28, &qword_1ED9B0F38, &type metadata for ChartScrollPosition, MEMORY[0x1E69E6720]);
  if (v29 == 255)
  {
    sub_1AACEC574(v28, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
  }

  else
  {
    sub_1AAE04AD8(v28, &v25);
    if (v27 == 1)
    {
      v23 = v25;
      v24[0] = *v26;
      *(v24 + 9) = *&v26[9];
      v8 = sub_1AAE84CD4();
      v10 = v9;
      v12 = v11;
      sub_1AAE04B10(&v23);
      sub_1AAE04AA8(v28);
      v14 = type metadata accessor for ChartScrollView(0, a4, a5, v13);
      sub_1AAE34664(v8, v10, v12, v14);
    }

    else
    {
      sub_1AAE04AA8(&v25);
      sub_1AAE04AA8(v28);
    }
  }

  sub_1AAE387DC(a2 + 48, v28, &qword_1ED9B0F38, &type metadata for ChartScrollPosition, MEMORY[0x1E69E6720]);
  if (v29 == 255)
  {
    return sub_1AACEC574(v28, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
  }

  sub_1AAE04AD8(v28, &v25);
  if (v27 == 1)
  {
    v23 = v25;
    v24[0] = *v26;
    *(v24 + 9) = *&v26[9];
    v16 = sub_1AAE84CD4();
    v18 = v17;
    v20 = v19;
    sub_1AAE04B10(&v23);
    sub_1AAE04AA8(v28);
    v22 = type metadata accessor for ChartScrollView(0, a4, a5, v21);
    return sub_1AAE34A54(v16, v18, v20, v22);
  }

  else
  {
    sub_1AAE04AA8(&v25);
    return sub_1AAE04AA8(v28);
  }
}

uint64_t sub_1AAE377C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ChartScrollView(0, a3, a4, a4);
  result = sub_1AAE345D8(v7);
  if (v10 != -1 || (result = sub_1AAE349C8(v7), v10 != -1))
  {
    sub_1AAE2CC54(result, v9, v10);
    v11 = sub_1AAE345D8(v7);
    if (v13 != -1)
    {
      v24 = v11;
      v25 = v12;
      v26 = v13;
      v14 = v11;
      v15 = v12;
      v16 = v13;
      sub_1AAE37944(&v24, a1, a3, a4, &v27);
      sub_1AAE2CC54(v14, v15, v16);
    }

    v17 = sub_1AAE349C8(v7);
    if (v19 != -1)
    {
      v24 = v17;
      v25 = v18;
      v26 = v19;
      v20 = v17;
      v21 = v18;
      v22 = a1;
      v23 = v19;
      sub_1AAE37A4C(&v24, v22, a3, a4, &v27);
      sub_1AAE2CC54(v20, v21, v23);
    }

    return sub_1AAF8DF84();
  }

  return result;
}

uint64_t sub_1AAE37944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = a2 + *(type metadata accessor for ChartScrollView(0, a3, a4, a4) + 40);
  v10 = *(v9 + 112);
  v19[6] = *(v9 + 96);
  v19[7] = v10;
  v20 = *(v9 + 128);
  v11 = *(v9 + 48);
  v19[2] = *(v9 + 32);
  v19[3] = v11;
  v12 = *(v9 + 80);
  v19[4] = *(v9 + 64);
  v19[5] = v12;
  v13 = *(v9 + 16);
  v19[0] = *v9;
  v19[1] = v13;
  result = sub_1AAE3929C(v19);
  v15 = result;
  v16 = 0.0;
  if (result != 1)
  {
    result = sub_1AAE29640(v6, v7, v8);
    v17 = *&result;
    if (v18)
    {
      v17 = 0.0;
    }

    v16 = v17 - v20;
  }

  *a5 = v16;
  *(a5 + 8) = v15 == 1;
  return result;
}

uint64_t sub_1AAE37A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = a2 + *(type metadata accessor for ChartScrollView(0, a3, a4, a4) + 44);
  v10 = *(v9 + 112);
  v19[6] = *(v9 + 96);
  v19[7] = v10;
  v20 = *(v9 + 128);
  v11 = *(v9 + 48);
  v19[2] = *(v9 + 32);
  v19[3] = v11;
  v12 = *(v9 + 80);
  v19[4] = *(v9 + 64);
  v19[5] = v12;
  v13 = *(v9 + 16);
  v19[0] = *v9;
  v19[1] = v13;
  result = sub_1AAE3929C(v19);
  v15 = result;
  v16 = 0.0;
  if (result != 1)
  {
    result = sub_1AAE29640(v6, v7, v8);
    v17 = *&result;
    if (v18)
    {
      v17 = 0.0;
    }

    v16 = v17 - v20;
  }

  *a5 = v16;
  *(a5 + 8) = v15 == 1;
  return result;
}

uint64_t sub_1AAE37B54(__int128 *a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  sub_1AAD0A750(255, &qword_1ED9ADA30, sub_1AAE386A4, &type metadata for ScrollViewBoundsReader, MEMORY[0x1E697CA00]);
  sub_1AAF8DF74();
  sub_1AAE386F8();
  swift_getWitnessTable();
  sub_1AAE38788();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1AAE052B0();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1AAE05304();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1AAF8E564();
  swift_getWitnessTable();
  sub_1AAF8D844();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1AAF8E024();
  swift_getWitnessTable();
  return sub_1AAF8EB74();
}

uint64_t sub_1AAE37E3C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a7;
  v38 = a6;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v36 = a8;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v31 - v22;
  v24 = sub_1AAF8E384();
  v35 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v31 - v26;
  if (v33)
  {
    v32(v34, v25);
    sub_1AACE0800();
    v28 = *(v17 + 8);
    v28(v20, a5);
    sub_1AACE0800();
    sub_1AAE2EEC8(v20, a5);
    v28(v20, a5);
    v28(v23, a5);
  }

  else
  {
    sub_1AACE0800();
    sub_1AACE0800();
    sub_1AAE2EFC0(v12, a5, a4);
    v29 = *(v10 + 8);
    v29(v12, a4);
    v29(v15, a4);
  }

  v39 = v37;
  v40 = v38;
  swift_getWitnessTable();
  sub_1AACE0800();
  return (*(v35 + 8))(v27, v24);
}

double sub_1AAE381A8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_1AAD0A750(0, &qword_1ED9ADA48, sub_1AAE386A4, &type metadata for ScrollViewBoundsReader, MEMORY[0x1E697FDE8]);
  sub_1AACBC0B0(0);
  sub_1AAE39A84();
  sub_1AAE39B14(&unk_1ED9AD860, sub_1AACBC0B0, sub_1AAE39B84, MEMORY[0x1E69E7C80]);

  sub_1AAF8EC14();

  return result;
}

uint64_t sub_1AAE3830C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1AAE38358(&v5, &v7) & 1;
}

uint64_t sub_1AAE38358(double *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == 255)
  {
    if (v3 != 255)
    {
      return 0;
    }

LABEL_11:
    v6 = *(a1 + 40);
    v7 = *(a2 + 40);
    if (v6 == 255)
    {
      return v7 == 255;
    }

    if (v7 != 255)
    {
      v8 = a1[3];
      v9 = *(a2 + 24);
      if (*(a1 + 40))
      {
        if (v6 != 1)
        {
          return v7 == 2 && (*&v8 == *&v9 && *(a1 + 4) == *(a2 + 32) || (sub_1AAF904F4() & 1) != 0);
        }

        if (v7 != 1)
        {
          return 0;
        }
      }

      else if (*(a2 + 40))
      {
        return 0;
      }

      if (v8 == v9)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v3 == 255)
  {
    return 0;
  }

  v4 = *a1;
  v5 = *a2;
  if (*(a1 + 16))
  {
    if (v2 != 1)
    {
      if (v3 != 2)
      {
        return 0;
      }

      if (*&v4 != *&v5 || *(a1 + 1) != *(a2 + 8))
      {
        v10 = a1;
        v11 = a2;
        v12 = sub_1AAF904F4();
        a2 = v11;
        v13 = v12;
        a1 = v10;
        if ((v13 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_11;
    }

    v2 = 0;
    if (v3 != 1)
    {
      return v2;
    }
  }

  else if (*(a2 + 16))
  {
    return v2;
  }

  if (v4 == v5)
  {
    goto LABEL_11;
  }

  return v2;
}

double sub_1AAE384B8(uint64_t a1, uint64_t a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  sub_1AAF8E274();
  if (sub_1AAF8E164())
  {
    v15.origin.x = a5;
    v15.origin.y = a6;
    v15.size.width = a7;
    v15.size.height = a8;
    MinX = CGRectGetMinX(v15);
  }

  else
  {
    sub_1AAF8E284();
    if (sub_1AAF8E164())
    {
      v16.origin.x = a5;
      v16.origin.y = a6;
      v16.size.width = a7;
      v16.size.height = a8;
      MinX = CGRectGetMaxX(v16) - a3;
    }

    else
    {
      sub_1AAF8E264();
      sub_1AAF8E164();
      v17.origin.x = a5;
      v17.origin.y = a6;
      v17.size.width = a7;
      v17.size.height = a8;
      MinX = CGRectGetMidX(v17) + a3 * -0.5;
    }
  }

  sub_1AAF8E274();
  if ((sub_1AAF8E164() & 1) == 0)
  {
    sub_1AAF8E284();
    if ((sub_1AAF8E164() & 1) == 0)
    {
      sub_1AAF8E264();
      if ((sub_1AAF8E164() & 1) == 0)
      {
        sub_1AAF885A0(7);
      }
    }
  }

  sub_1AAF8E174();
  if (sub_1AAF8E164())
  {
    v18.origin.x = a5;
    v18.origin.y = a6;
    v18.size.width = a7;
    v18.size.height = a8;
    CGRectGetMinY(v18);
  }

  else
  {
    sub_1AAF8E184();
    if (sub_1AAF8E164())
    {
      v19.origin.x = a5;
      v19.origin.y = a6;
      v19.size.width = a7;
      v19.size.height = a8;
      CGRectGetMaxY(v19);
    }

    else
    {
      sub_1AAF8E194();
      sub_1AAF8E164();
      v20.origin.x = a5;
      v20.origin.y = a6;
      v20.size.width = a7;
      v20.size.height = a8;
      CGRectGetMidY(v20);
    }
  }

  sub_1AAF8E174();
  if ((sub_1AAF8E164() & 1) == 0)
  {
    sub_1AAF8E184();
    if ((sub_1AAF8E164() & 1) == 0)
    {
      sub_1AAF8E194();
      if ((sub_1AAF8E164() & 1) == 0)
      {
        sub_1AAF885A0(8);
      }
    }
  }

  return MinX;
}

unint64_t sub_1AAE386A4()
{
  result = qword_1ED9AE2B8[0];
  if (!qword_1ED9AE2B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9AE2B8);
  }

  return result;
}

unint64_t sub_1AAE386F8()
{
  result = qword_1ED9ADA38;
  if (!qword_1ED9ADA38)
  {
    sub_1AAD0A750(255, &qword_1ED9ADA30, sub_1AAE386A4, &type metadata for ScrollViewBoundsReader, MEMORY[0x1E697CA00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9ADA38);
  }

  return result;
}

unint64_t sub_1AAE38788()
{
  result = qword_1ED9AEBA8;
  if (!qword_1ED9AEBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AEBA8);
  }

  return result;
}

uint64_t sub_1AAE387DC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AACBBBA0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AAE388E4@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for ChartScrollView(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1AAF8DF94() - 8);
  v12 = v3 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_1AAE36000(a1, v3 + v9, v12, v6, v7, a3);
}

void sub_1AAE389E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(sub_1AAF8E004() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v11 = *(type metadata accessor for ChartScrollView(0, v5, v6, v10) - 8);
  v12 = v2 + ((v9 + *(v11 + 80)) & ~*(v11 + 80));

  sub_1AAE36E54(a1, a2, v2 + v8, v12, v5, v6);
}

uint64_t sub_1AAE38AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AAE387DC(a1, v20, &qword_1ED9B0F38, &type metadata for ChartScrollPosition, MEMORY[0x1E69E6720]);
  if (v21 == 255)
  {
    sub_1AACEC574(v20, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
    v4 = 0;
    v5 = 0;
    v6 = -1;
  }

  else
  {
    sub_1AAE04AD8(v20, &v17);
    if (v19)
    {
      v15 = v17;
      v16[0] = *v18;
      *(v16 + 9) = *&v18[9];
      v4 = sub_1AAE84CD4();
      v5 = v7;
      v6 = v8;
      sub_1AAE04B10(&v15);
    }

    else
    {
      sub_1AAE04AA8(&v17);
      v4 = 0;
      v5 = 0;
      v6 = -1;
    }

    sub_1AAE04AA8(v20);
  }

  sub_1AAE387DC(a1 + 48, v20, &qword_1ED9B0F38, &type metadata for ChartScrollPosition, MEMORY[0x1E69E6720]);
  if (v21 == 255)
  {
    sub_1AAE04FC4(a1);
    result = sub_1AACEC574(v20, &qword_1ED9B0F38, &type metadata for ChartScrollPosition);
    v10 = 0;
    v11 = 0;
    v12 = -1;
  }

  else
  {
    sub_1AAE04AD8(v20, &v17);
    if (v19)
    {
      v15 = v17;
      v16[0] = *v18;
      *(v16 + 9) = *&v18[9];
      v10 = sub_1AAE84CD4();
      v11 = v13;
      v12 = v14;
      sub_1AAE04FC4(a1);
      sub_1AAE04B10(&v15);
    }

    else
    {
      sub_1AAE04FC4(a1);
      sub_1AAE04AA8(&v17);
      v10 = 0;
      v11 = 0;
      v12 = -1;
    }

    result = sub_1AAE04AA8(v20);
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  return result;
}

uint64_t sub_1AAE38CD4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(sub_1AAF8E004() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v11 = *(type metadata accessor for ChartScrollView(0, v5, v6, v10) - 8);
  v12 = (v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1AAF8DF94() - 8);
  v15 = v2 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80));

  return sub_1AAE373B4(a1, a2, v2 + v8, v2 + v12, v15, v5, v6);
}

uint64_t sub_1AAE38E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for ChartScrollView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_1AAE375BC(a1, a2, v10, v7, v8);
}

uint64_t sub_1AAE38ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for ChartScrollView(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  v10 = sub_1AAF8DF94();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v27 = *(v11 + 64);
  v13 = v4 + v8;
  (*(*(v5 - 8) + 8))(v4 + v8 + v6[9], v5);
  v14 = v4 + v8 + v6[10];
  if (*(v14 + 104) != 255)
  {
    sub_1AACE3E8C(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), *(v14 + 48), *(v14 + 56), *(v14 + 64));
  }

  v15 = v13 + v6[11];
  if (*(v15 + 104) != 255)
  {
    sub_1AACE3E8C(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32), *(v15 + 40), *(v15 + 48), *(v15 + 56), *(v15 + 64));
  }

  v16 = v13 + v6[12];
  if (*(v16 + 90))
  {
    v17 = *(v16 + 40);
    if (v17 >> 8 <= 0xFE)
    {
      if ((v17 & 0x100) != 0)
      {
        sub_1AACB634C((v13 + v6[12]));
      }

      else
      {
        sub_1AACCA728(*v16, *(v16 + 8), *(v16 + 16));
      }
    }

    v18 = *(v16 + 88);
    if (v18 >> 8 <= 0xFE)
    {
      if ((v18 & 0x100) != 0)
      {
        sub_1AACB634C((v16 + 48));
      }

      else
      {
        sub_1AACCA728(*(v16 + 48), *(v16 + 56), *(v16 + 64));
      }
    }
  }

  else
  {
  }

  v19 = v13 + v6[13];
  if (*(v19 + 80))
  {
    if (*(v19 + 64))
    {
      sub_1AACB634C((v19 + 40));
    }
  }

  else
  {
  }

  v20 = v13 + v6[14];
  v21 = *(v20 + 16);
  if (v21 != 255)
  {
    sub_1AACCA728(*v20, *(v20 + 8), v21);
  }

  v22 = v13 + v6[15];
  v23 = *(v22 + 16);
  if (v23 != 255)
  {
    sub_1AACCA728(*v22, *(v22 + 8), v23);
  }

  v24 = v7 | v12;
  v25 = (v8 + v9 + v12) & ~v12;

  (*(v11 + 8))(v4 + v25, v10);

  return MEMORY[0x1EEE6BDD0](v4, v25 + v27, v24 | 7);
}

uint64_t sub_1AAE391B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for ChartScrollView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1AAF8DF94() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1AAE377C8(v4 + v8, v11, v5, v6);
}

uint64_t sub_1AAE3929C(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double sub_1AAE392B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  *(a2 + 32) = v5 & 1;
  *(a2 + 40) = v4;
  *(a2 + 48) = v3;

  return result;
}

void sub_1AAE393E8()
{
  if (!qword_1ED9B2B90)
  {
    v0 = sub_1AAF8E744();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2B90);
    }
  }
}

unint64_t sub_1AAE3944C()
{
  result = qword_1ED9AFEF8[0];
  if (!qword_1ED9AFEF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9AFEF8);
  }

  return result;
}

unint64_t sub_1AAE394A0()
{
  result = qword_1ED9AEB60;
  if (!qword_1ED9AEB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AEB60);
  }

  return result;
}

unint64_t sub_1AAE394F4()
{
  result = qword_1ED9AE190[0];
  if (!qword_1ED9AE190[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9AE190);
  }

  return result;
}

uint64_t sub_1AAE39548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  sub_1AACB4A98(a8, a9);

  return sub_1AAD2CB2C(a11, a12);
}

uint64_t sub_1AAE395C0(uint64_t a1, uint64_t a2)
{
  sub_1AACB6294(0, qword_1ED9B5598, type metadata accessor for ChartEnvironmentValues, MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AAE396D0(uint64_t a1@<X3>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  type metadata accessor for RenderBasedChartView(0, v4, v5, a1);

  sub_1AAE30114(v4, v5, v6, a2);
}

id sub_1AAE3975C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1AAE39818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAE3982C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1AAE39878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1AAE398D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAE39920(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}