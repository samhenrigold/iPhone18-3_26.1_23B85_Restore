uint64_t sub_1BFAA554C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB30, &qword_1BFAB3730);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BFAB1400;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  sub_1BFA1EF80(a3, v6 + 64, &qword_1EBDFBA30, &unk_1BFAB5450);

  return v6;
}

uint64_t sub_1BFAA55F4(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, void, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(v17, v6 + 32, v4, a1);
  OUTLINED_FUNCTION_6_13(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17[0]);
  if (a3 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

void *sub_1BFAA5684(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1BFAA6C6C(*(a1 + 16), 0, &qword_1EBDFB940, &qword_1BFAB1EC8, MEMORY[0x1E69D2F18]);
  sub_1BFAAEC98();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_6_13(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  if (a1 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void *sub_1BFAA575C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1BFAA6C6C(*(a1 + 16), 0, &qword_1EBDFC1E0, &qword_1BFAB78B0, MEMORY[0x1E69D2F98]);
  sub_1BFAAEDF8();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_6_13(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  if (a1 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1BFAA5834(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB30, &qword_1BFAB3730);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 16) = xmmword_1BFAB1C20;
  *(v2 + 56) = v3;
  *(v2 + 32) = 8224;
  *(v2 + 40) = 0xE200000000000000;
  sub_1BFA1EF80(a1, v10, &qword_1EBDFB8A8, &qword_1BFAB5050);
  v4 = v10[0];
  v5 = v10[1];
  *(v2 + 88) = v3;
  *(v2 + 64) = v4;
  *(v2 + 72) = v5;
  v6 = *(a1 + 40);
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 16), v6);
  *(v2 + 120) = v6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v2 + 96));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, v7, v6);
  __swift_destroy_boxed_opaque_existential_2Tm(v11);
  return v2;
}

uint64_t sub_1BFAA5934()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB30, &qword_1BFAB3730);
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 16) = xmmword_1BFAB7730;
  *(v0 + 56) = v1;
  *(v0 + 32) = 8224;
  *(v0 + 40) = 0xE200000000000000;
  *(v0 + 88) = sub_1BFAAEFB8();
  __swift_allocate_boxed_opaque_existential_1Tm((v0 + 64));
  sub_1BFAAED78();
  sub_1BFAAED68();
  v2 = v8;
  if (v8)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v7, v8);
    *(v0 + 120) = v2;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 96));
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1Tm, v3, v2);
    __swift_destroy_boxed_opaque_existential_2Tm(v7);
  }

  else
  {
    sub_1BF9FAB40(v7, qword_1EBDFB778, &unk_1BFAB1540);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
  }

  sub_1BFAAED88();
  *(v0 + 152) = MEMORY[0x1E69E63B0];
  *(v0 + 128) = v5;
  return v0;
}

uint64_t sub_1BFAA5A68(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB30, &qword_1BFAB3730);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 16) = xmmword_1BFAB1C20;
  *(v2 + 56) = v3;
  *(v2 + 32) = 8224;
  *(v2 + 40) = 0xE200000000000000;
  sub_1BFA1EF80(a1, v10, &qword_1EBDFC1D0, &qword_1BFAB7768);
  v4 = v10[0];
  v5 = v10[1];
  *(v2 + 88) = v3;
  *(v2 + 64) = v4;
  *(v2 + 72) = v5;
  v6 = *(a1 + 40);
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 16), v6);
  *(v2 + 120) = v6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v2 + 96));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1Tm, v7, v6);
  __swift_destroy_boxed_opaque_existential_2Tm(v11);
  return v2;
}

void sub_1BFAA5B90()
{
  sub_1BFAA71AC(&qword_1EDCC6610, &protocol conformance descriptor for SiriSuggestions.Interaction);

  JUMPOUT(0x1BFB5FE90);
}

uint64_t SiriSuggestions.Interaction.init(requestId:generationId:dialogIdentifiers:intent:executionParameters:catGlobalProperties:salientEntities:deviceState:owner:verb:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __int128 *a10, __int128 *a11, uint64_t a12, uint64_t a13)
{
  v18 = type metadata accessor for SiriSuggestions.Interaction(0);
  v19 = v18[14];
  v20 = *MEMORY[0x1E69D2FD0];
  sub_1BFAAEEA8();
  OUTLINED_FUNCTION_14();
  (*(v21 + 104))(&a9[v19], v20);
  v22 = v18[15];
  v23 = sub_1BFAAEFE8();
  OUTLINED_FUNCTION_110(&a9[v22], v24, v25, v23);
  *(a9 + 10) = a1;
  *(a9 + 11) = a2;
  *a9 = a4;
  *(a9 + 1) = a6;
  *(a9 + 2) = a5;
  sub_1BF9FA474(a11, (a9 + 24));
  *(a9 + 8) = a12;
  *(a9 + 9) = a13;
  *(a9 + 12) = a7;
  *(a9 + 13) = a8;
  sub_1BF9FA474(a10, (a9 + 112));
  v26 = v18[13];
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_14();
  result = (*(v27 + 32))(&a9[v26], a3);
  a9[v18[16]] = 0;
  return result;
}

uint64_t SiriSuggestions.Interaction.init(requestId:generationId:dialogIdentifiers:intent:executionParameters:catGlobalProperties:salientEntities:deviceState:owner:verb:invocationType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __int128 *a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = type metadata accessor for SiriSuggestions.Interaction(0);
  v20 = v19[15];
  v21 = sub_1BFAAEFE8();
  OUTLINED_FUNCTION_110(&a9[v20], v22, v23, v21);
  *(a9 + 10) = a1;
  *(a9 + 11) = a2;
  *a9 = a4;
  *(a9 + 1) = a6;
  *(a9 + 2) = a5;
  sub_1BF9FA474(a11, (a9 + 24));
  *(a9 + 8) = a12;
  *(a9 + 9) = a13;
  *(a9 + 12) = a7;
  *(a9 + 13) = a8;
  sub_1BF9FA474(a10, (a9 + 112));
  v24 = v19[13];
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_14();
  (*(v25 + 32))(&a9[v24], a3);
  v26 = v19[14];
  sub_1BFAAEEA8();
  OUTLINED_FUNCTION_14();
  result = (*(v27 + 32))(&a9[v26], a14);
  a9[v19[16]] = 0;
  return result;
}

void SiriSuggestions.Interaction.init(requestId:generationId:dialogIdentifiers:intent:executionParameters:catGlobalProperties:runningAppIds:deviceState:owner:verb:invocationType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 *a21, __int128 *a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_102();
  v26 = v25;
  v28 = v27;
  v80 = v29;
  v78 = v31;
  v79 = v30;
  v33 = v32;
  v77 = v34;
  v76 = v35;
  v37 = v36;
  v85 = sub_1BFAAEFB8();
  OUTLINED_FUNCTION_2_3();
  v81 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2();
  v42 = v41 - v40;
  v84 = sub_1BFAAEDA8();
  OUTLINED_FUNCTION_2_3();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2();
  v48 = v47 - v46;
  v49 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v51 = v50;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_2();
  v75 = v54 - v53;
  (*(v51 + 16))();
  v55 = *(v26 + 16);
  if (v55)
  {
    v72 = v51;
    v73 = v33;
    v74 = v28;
    v86 = MEMORY[0x1E69E7CC0];
    sub_1BFA2DD48(0, v55, 0);
    v56 = v86;
    v83 = *MEMORY[0x1E69D3100];
    v57 = v81 + 104;
    v82 = *(v81 + 104);
    v58 = v26 + 40;
    do
    {
      v59 = v57;
      v82(v42, v83, v85);

      sub_1BFAAED98();
      v61 = *(v86 + 16);
      v60 = *(v86 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1BFA2DD48((v60 > 1), v61 + 1, 1);
      }

      *(v86 + 16) = v61 + 1;
      OUTLINED_FUNCTION_12_1();
      (*(v44 + 32))(v86 + v62 + *(v44 + 72) * v61, v48, v84);
      v58 += 16;
      --v55;
      v57 = v59;
    }

    while (v55);
    v51 = v72;
    v63 = v49;
    (*(v72 + 8))(v73, v49);

    v64 = a25;
    v28 = v74;
  }

  else
  {

    (*(v51 + 8))(v33, v49);
    v56 = MEMORY[0x1E69E7CC0];
    v63 = v49;
    v64 = a25;
  }

  v65 = type metadata accessor for SiriSuggestions.Interaction(0);
  v66 = v65[15];
  v67 = sub_1BFAAEFE8();
  OUTLINED_FUNCTION_110(&v37[v66], v68, v69, v67);
  *(v37 + 10) = v76;
  *(v37 + 11) = v77;
  *v37 = v79;
  *(v37 + 1) = v80;
  *(v37 + 2) = v78;
  sub_1BF9FA474(a22, (v37 + 24));
  *(v37 + 8) = a23;
  *(v37 + 9) = a24;
  *(v37 + 12) = v28;
  *(v37 + 13) = v56;
  sub_1BF9FA474(a21, (v37 + 112));
  (*(v51 + 32))(&v37[v65[13]], v75, v63);
  v70 = v65[14];
  sub_1BFAAEEA8();
  OUTLINED_FUNCTION_14();
  (*(v71 + 32))(&v37[v70], v64);
  v37[v65[16]] = 0;
  OUTLINED_FUNCTION_101();
}

void SiriSuggestions.Interaction.init(requestId:generationId:dialogIdentifiers:intent:executionParameters:catGlobalProperties:runningAppIds:deviceState:owner:verb:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_102();
  v108 = v24;
  v106 = v25;
  v104 = v26;
  v101 = v27;
  v102 = v28;
  v30 = v29;
  v100 = v31;
  v99 = v32;
  v34 = v33;
  v105 = a24;
  v103 = a23;
  v107 = a22;
  v109 = a21;
  v115 = sub_1BFAAEFB8();
  OUTLINED_FUNCTION_2_3();
  v111 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2();
  v114 = v38 - v37;
  v113 = sub_1BFAAEDA8();
  OUTLINED_FUNCTION_2_3();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2();
  v93 = v43 - v42;
  v44 = sub_1BFAAEEA8();
  OUTLINED_FUNCTION_2_3();
  v110 = v45;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2();
  v49 = v48 - v47;
  v50 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v52 = v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_4_0();
  v56 = v54 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v90 - v58;
  v95 = v52;
  v60 = *(v52 + 16);
  v97 = v30;
  v60(&v90 - v58, v30, v50);
  sub_1BF9F93E8(v109, v123);
  v61 = v107;
  sub_1BF9F93E8(v107, v122);
  v62 = *MEMORY[0x1E69D2FD0];
  v63 = *(v110 + 104);
  v96 = v49;
  v64 = v49;
  v65 = v108;
  v98 = v44;
  v63(v64, v62, v44);
  v94 = v56;
  v60(v56, v59, v50);
  v66 = *(v65 + 16);
  if (v66)
  {
    v90 = v59;
    v91 = v50;
    v92 = v34;
    v121 = MEMORY[0x1E69E7CC0];
    sub_1BFA2DD48(0, v66, 0);
    v67 = v121;
    v112 = *MEMORY[0x1E69D3100];
    v68 = v111 + 104;
    v111 = *(v111 + 104);
    v69 = (v65 + 40);
    v70 = v93;
    do
    {
      v71 = *(v69 - 1);
      v72 = *v69;
      v118 = MEMORY[0x1E69E6158];
      v119 = MEMORY[0x1E69E6190];
      v120 = MEMORY[0x1E69E6160];
      v116 = v71;
      v117 = v72;
      v73 = v68;
      (v111)(v114, v112, v115);

      sub_1BFAAED98();
      v121 = v67;
      v75 = *(v67 + 16);
      v74 = *(v67 + 24);
      v56 = v75 + 1;
      if (v75 >= v74 >> 1)
      {
        v72 = &v121;
        sub_1BFA2DD48((v74 > 1), v75 + 1, 1);
        v70 = v93;
        v67 = v121;
      }

      *(v67 + 16) = v56;
      OUTLINED_FUNCTION_12_1();
      (*(v40 + 32))(v67 + v76 + *(v40 + 72) * v75, v70, v113);
      v69 += 2;
      --v66;
      v68 = v73;
    }

    while (v66);

    __swift_destroy_boxed_opaque_existential_2Tm(v107);
    __swift_destroy_boxed_opaque_existential_2Tm(v109);
    v77 = OUTLINED_FUNCTION_8_11();
    v50 = v91;
    (v72)(v77, v91);
    (v72)(v90, v50);
    v34 = v92;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_2Tm(v61);
    __swift_destroy_boxed_opaque_existential_2Tm(v109);
    v78 = OUTLINED_FUNCTION_8_11();
    (v60)(v78, v50);
    (v60)(v59, v50);
    v67 = MEMORY[0x1E69E7CC0];
  }

  v79 = v106;
  v80 = v105;
  v81 = v104;
  v82 = v103;
  v83 = type metadata accessor for SiriSuggestions.Interaction(0);
  v84 = v83[15];
  v85 = sub_1BFAAEFE8();
  OUTLINED_FUNCTION_110(v34 + v84, v86, v87, v85);
  v88 = v100;
  v34[10] = v99;
  v34[11] = v88;
  v89 = v101;
  v34[1] = v81;
  v34[2] = v89;
  *v34 = v102;
  sub_1BF9FA474(v122, (v34 + 3));
  v34[8] = v82;
  v34[9] = v80;
  v34[12] = v79;
  v34[13] = v67;
  sub_1BF9FA474(v123, (v34 + 14));
  (*(v56 + 32))(v34 + v83[13], v94, v50);
  (*(v110 + 32))(v34 + v83[14], v96, v98);
  *(v34 + v83[16]) = 0;
  OUTLINED_FUNCTION_101();
}

void SiriSuggestions.Interaction.init(requestId:generationId:dialogIdentifiers:intent:executionParameters:catGlobalProperties:salientEntities:deviceState:owner:verb:invocationType:relatedIntents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_10_11(v31, v32, v33, v34, v35, v36);
  *(v26 + 8) = a23;
  *(v26 + 9) = a24;
  *(v26 + 12) = v28;
  *(v26 + 13) = v27;
  sub_1BF9FA474(v30, (v26 + 112));
  v37 = type metadata accessor for SiriSuggestions.Interaction(0);
  v38 = v37[13];
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_14();
  (*(v39 + 32))(&v26[v38], v29);
  v40 = v37[14];
  sub_1BFAAEEA8();
  OUTLINED_FUNCTION_14();
  (*(v41 + 32))(&v26[v40], a25);
  sub_1BFAA4CA8(a26, &v26[v37[15]]);
  v26[v37[16]] = 0;
  OUTLINED_FUNCTION_101();
}

void *sub_1BFAA6A7C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1E8, &unk_1BFAB78B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 48);
  return v4;
}

void *sub_1BFAA6B00(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1F0, &qword_1BFAB78C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 64);
  return v4;
}

void *sub_1BFAA6C6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BFAA6DC4(uint64_t a1)
{
  sub_1BFAA715C(319, &qword_1EDCC6420, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1BFAA7040(319, &qword_1EDCC6470, &qword_1EBDFB550, &qword_1BFAB0970);
    if (v2 <= 0x3F)
    {
      sub_1BFAA70A4(319, &qword_1EDCC84F8, MEMORY[0x1E69D31C0]);
      if (v3 <= 0x3F)
      {
        sub_1BFAA715C(319, &qword_1EDCC84E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1BFAA7040(319, &qword_1EDCC6468, &qword_1EBDFC1D8, ">H");
          if (v5 <= 0x3F)
          {
            sub_1BFAA70F8(319, &qword_1EDCC6440, MEMORY[0x1E69D2F70], MEMORY[0x1E69E62F8]);
            if (v6 <= 0x3F)
            {
              sub_1BFAA70A4(319, &qword_1EDCC6520, MEMORY[0x1E69D2D70]);
              if (v7 <= 0x3F)
              {
                sub_1BFAAE3F8();
                if (v8 <= 0x3F)
                {
                  sub_1BFAAEEA8();
                  if (v9 <= 0x3F)
                  {
                    sub_1BFAA70F8(319, &qword_1EDCC64B8, MEMORY[0x1E69D3130], MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
                    {
                      sub_1BFAA715C(319, &qword_1EDCC6410, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
                      if (v11 <= 0x3F)
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
    }
  }
}

void sub_1BFAA7040(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1BFAAF7F8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BFAA70A4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1BFAA70F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1BFAA715C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BFAA71AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriSuggestions.Interaction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1BFAA71F0(void *result, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v11 = 0;
    v8 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v11;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v11 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v23 = -1 << *(a4 + 32);
    v24 = result;
    v10 = 0;
    v11 = 0;
    v12 = (63 - v5) >> 6;
    while (1)
    {
      if (v10 >= v8)
      {
        goto LABEL_24;
      }

      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            v7 = 0;
            v8 = v10;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v14);
          ++v11;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = v11;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v14 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_1BF9F8B40(*(a4 + 56) + 32 * v16, &v26);
      *&v25 = v19;
      *(&v25 + 1) = v20;
      v22 = v26;
      v21 = v27;
      v29 = v26;
      v30 = v27;
      v28 = v25;
      *v9 = v25;
      v9[1] = v22;
      v9[2] = v21;
      if (v13 == v8)
      {
        break;
      }

      v9 += 3;

      v10 = v13;
      v11 = v14;
      a4 = v17;
    }

    v11 = v14;
    a4 = v17;
LABEL_19:
    v5 = v23;
    result = v24;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_1BFAA738C(void *result, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v11 = 0;
    v8 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v11;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v11 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v24 = -1 << *(a4 + 32);
    v25 = result;
    v10 = 0;
    v11 = 0;
    v12 = (63 - v5) >> 6;
    while (1)
    {
      if (v10 >= v8)
      {
        goto LABEL_24;
      }

      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            v7 = 0;
            v8 = v10;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v14);
          ++v11;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = v11;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v14 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_1BFA27F7C(*(a4 + 56) + 48 * v16, &v27);
      *&v26 = v19;
      *(&v26 + 1) = v20;
      v22 = v28;
      v21 = v29;
      v32 = v28;
      v33 = v29;
      v23 = v27;
      v30 = v26;
      v31 = v27;
      *v9 = v26;
      v9[1] = v23;
      v9[2] = v22;
      v9[3] = v21;
      if (v13 == v8)
      {
        break;
      }

      v9 += 4;

      v10 = v13;
      v11 = v14;
      a4 = v17;
    }

    v11 = v14;
    a4 = v17;
LABEL_19:
    v5 = v24;
    result = v25;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1BFAA752C()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8(0);
  OUTLINED_FUNCTION_2_3();
  v43 = v9;
  v44 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_0();
  v42 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v34 - v14;
  v16 = v1 + 64;
  v15 = *(v1 + 64);
  v40 = -1 << *(v1 + 32);
  if (-v40 < 64)
  {
    v17 = ~(-1 << -v40);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  if (!v5)
  {
    v21 = 0;
LABEL_22:
    v33 = ~v40;
    *v7 = v1;
    v7[1] = v16;
    v7[2] = v33;
    v7[3] = v21;
    v7[4] = v18;
    OUTLINED_FUNCTION_101();
    return;
  }

  v19 = v3;
  if (!v3)
  {
    v21 = 0;
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v35 = v7;
    v36 = v1 + 64;
    v20 = 0;
    v21 = 0;
    v22 = (63 - v40) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    v39 = v19;
    while (v20 < v19)
    {
      if (__OFADD__(v20, 1))
      {
        goto LABEL_26;
      }

      if (!v18)
      {
        v16 = v36;
        while (1)
        {
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v23 >= v22)
          {
            v18 = 0;
            v7 = v35;
            goto LABEL_22;
          }

          v18 = *(v36 + 8 * v23);
          ++v21;
          if (v18)
          {
            v45 = v20 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v45 = v20 + 1;
      v23 = v21;
LABEL_17:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v1;
      v26 = *(v1 + 56);
      v28 = v43;
      v27 = v44;
      v29 = *(v44 + 72);
      v30 = v42;
      (*(v44 + 16))(v42, v26 + v29 * (v24 | (v23 << 6)), v43);
      v31 = *(v27 + 32);
      v32 = v41;
      v31(v41, v30, v28);
      v31(v5, v32, v28);
      v19 = v39;
      v20 = v45;
      if (v45 == v39)
      {
        v21 = v23;
        v7 = v35;
        v16 = v36;
        v1 = v25;
        goto LABEL_22;
      }

      v5 += v29;
      v21 = v23;
      v1 = v25;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_6_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1BFA27FF0(a10);
}

uint64_t OUTLINED_FUNCTION_7_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_1BFAAF658();
}

uint64_t OUTLINED_FUNCTION_10_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(v7 + 24);
  v6[10] = a1;
  v6[11] = a2;
  v6[1] = a6;
  v6[2] = a5;
  *v6 = a4;

  return sub_1BF9FA474(v9, (v6 + 3));
}

void OUTLINED_FUNCTION_13_3()
{

  sub_1BFAA752C();
}

uint64_t sub_1BFAA7830(uint64_t a1, uint64_t a2)
{
  sub_1BFAAE238();
  swift_allocObject();
  sub_1BFAAE228();
  sub_1BFAAF498();
  sub_1BFAA79B0(&qword_1EBDFC210, MEMORY[0x1E69CE2E8]);
  sub_1BFAAE218();
}

uint64_t static SiriSuggestionsXPCInterface.encodePhrases@Sendable (_:)(uint64_t a1)
{
  sub_1BFAAE278();
  swift_allocObject();
  sub_1BFAAE268();
  sub_1BFAAE248();
  sub_1BFAAF498();
  sub_1BFAA79B0(&qword_1EBDFC208, MEMORY[0x1E69CE2E0]);
  v1 = sub_1BFAAE258();

  return v1;
}

uint64_t sub_1BFAA79B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BFAAF498();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BFAA7A74(uint64_t a1, uint64_t a2)
{
  sub_1BFAAFF98();
  sub_1BFAAF908();
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFAA7ADC(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  sub_1BFAAFF98();
  a2(v5, a1);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFAA7B2C(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_4_14();
  }

  sub_1BFAAF908();
}

uint64_t sub_1BFAA7BBC(uint64_t a1, char a2)
{
  sub_1BFAAF908();
}

uint64_t sub_1BFAA7C94(uint64_t a1, char a2)
{
  sub_1BFAAF908();
}

uint64_t sub_1BFAA7CFC(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_0_16();
  }

  sub_1BFAAF908();
}

uint64_t sub_1BFAA7D74(uint64_t a1, char a2)
{
  sub_1BFAAF908();
}

uint64_t sub_1BFAA7EA8(void *a1, char a2)
{
  switch(a2)
  {
    case 3:
    case 4:
    case 5:
      break;
    default:
      OUTLINED_FUNCTION_2_14();
      OUTLINED_FUNCTION_3_13();
      break;
  }

  sub_1BFAAF908();
}

uint64_t sub_1BFAA7FA0(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 6:
    case 8:
      OUTLINED_FUNCTION_3_13();
      break;
    default:
      break;
  }

  sub_1BFAAF908();
}

uint64_t sub_1BFAA8128(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_1BFAAFF98();
  if (!v2)
  {
    OUTLINED_FUNCTION_0_16();
  }

  sub_1BFAAF908();

  return sub_1BFAAFFE8();
}

uint64_t sub_1BFAA81B4(uint64_t a1, char a2)
{
  sub_1BFAAFF98();
  sub_1BFAAF908();

  return sub_1BFAAFFE8();
}

uint64_t sub_1BFAA825C(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t))
{
  sub_1BFAAFF98();
  a3(v6, a2);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFAA82C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BFAAFF98();
  sub_1BFAAF908();
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFAA830C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_1BFAAFF98();
  if (!v2)
  {
    OUTLINED_FUNCTION_4_14();
  }

  sub_1BFAAF908();

  return sub_1BFAAFFE8();
}

unint64_t SiriSuggestionsStateStoreDefaultKeys.rawValue.getter()
{
  result = 0x7974697669746361;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x45746E65696C6173;
      break;
    case 5:
      result = 0x7453656369766564;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x72656E776FLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

SiriSuggestionsAPI::SiriSuggestionsStateStoreDefaultKeys_optional __swiftcall SiriSuggestionsStateStoreDefaultKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BFAAFD58();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1BFAA8548()
{
  result = qword_1EBDFC218;
  if (!qword_1EBDFC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC218);
  }

  return result;
}

unint64_t sub_1BFAA8610@<X0>(unint64_t *a1@<X8>)
{
  result = SiriSuggestionsStateStoreDefaultKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriSuggestionsStateStoreDefaultKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriSuggestionsStateStoreDefaultKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BFAA8804(char a1)
{
  if (a1)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD000000000000019;
  }
}

unint64_t sub_1BFAA883C(char a1)
{
  result = 0xD00000000000001CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFAA88E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_1BFAAEA08();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA60, &qword_1BFAB3480);
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1BFA44920(a1, &v17 - v13);
  (*(v9 + 16))(v11, a2, v8);
  sub_1BFAAE9C8();
  swift_allocObject();
  v14 = a3;
  v15 = sub_1BFAAE9B8();
  (*(v9 + 8))(a2, v8);
  sub_1BFA47E18(a1);
  *(v4 + 16) = v15;
  *(v4 + 24) = a3;
  return v4;
}

BOOL static SiriSuggestions.Constants.isSiriRuntimeEnabled()()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  sub_1BFAAF868();
  v2 = sub_1BFAAF8D8();
  v4 = v3;

  if (qword_1EDCC77C0 != -1)
  {
    swift_once();
  }

  v5 = sub_1BFAAF688();
  __swift_project_value_buffer(v5, qword_1EDCC77C8);

  v6 = sub_1BFAAF668();
  v7 = sub_1BFAAFB78();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1BF9F88A8(v2, v4, v14);
    _os_log_impl(&dword_1BF9F6000, v6, v7, "Got running process as %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v9);
    MEMORY[0x1BFB618C0](v9, -1, -1);
    MEMORY[0x1BFB618C0](v8, -1, -1);
  }

  v14[0] = v2;
  v14[1] = v4;
  MEMORY[0x1EEE9AC00](v10);
  v13[2] = v14;
  v11 = sub_1BFA14164(sub_1BFA14E70, v13, &unk_1F3F079D0);

  return v11;
}

uint64_t sub_1BFAA8CDC()
{
  v0 = sub_1BFAAEF58();
  __swift_allocate_value_buffer(v0, qword_1EDCC74B8);
  __swift_project_value_buffer(v0, qword_1EDCC74B8);
  return sub_1BFAAEF18();
}

uint64_t sub_1BFAA8DA0()
{
  v0 = sub_1BFAAE308();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_1EDCC8BA8);
  __swift_project_value_buffer(v0, qword_1EDCC8BA8);
  v5 = MEMORY[0x1BFB61290]();
  sub_1BFAAF868();

  sub_1BFAAE2A8();

  sub_1BFAAE2C8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BFAA8F1C()
{
  v0 = sub_1BFAAE308();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_1EDCC8B88);
  __swift_project_value_buffer(v0, qword_1EDCC8B88);
  if (qword_1EDCC8BA0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EDCC8BA8);
  (*(v1 + 16))(v4, v5, v0);
  sub_1BFAAE2C8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BFAA90AC()
{
  v0 = sub_1BFAAE308();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_1EDCC77F8);
  __swift_project_value_buffer(v0, qword_1EDCC77F8);
  if (qword_1EDCC8BC8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EDCC8B88);
  (*(v1 + 16))(v4, v5, v0);
  sub_1BFAAE2C8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1BFAA923C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  v9 = __swift_project_value_buffer(v8, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1BFAA9344(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1BF9F88A8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1BFAA93A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC220, &unk_1BFAB7AC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1BFAA9494(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

_BYTE *_s9ConstantsOwst(_BYTE *result, int a2, int a3)
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

void *sub_1BFAA9598(uint64_t a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB938, &qword_1BFAB1EC0);
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = (&v14 - v3);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1BFA2DDA0(0, v5, 0);
    v6 = v18;
    v16 = sub_1BFAAEC98();
    v7 = *(v16 - 8);
    v15 = *(v7 + 16);
    v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    do
    {
      v15(v4 + *(v17 + 48), v8, v16);
      *v4 = sub_1BFAAEC88();
      v18 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1BFA2DDA0((v10 > 1), v11 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v11 + 1;
      sub_1BFAAC6FC(v4, v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v11);
      v8 += v9;
      --v5;
    }

    while (v5);
  }

  v12 = sub_1BFAA9D0C(v6);
  return sub_1BFAA5684(v12);
}

uint64_t SignalledOwner.__allocating_init(rootOwner:matchedSignals:isConversationalContinuer:)(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_31_6();
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_24_9();
  SignalledOwner.init(rootOwner:matchedSignals:isConversationalContinuer:)(v5, v6, a3);
  return v3;
}

uint64_t SignalledOwner.init(rootOwner:matchedSignals:isConversationalContinuer:)(__int128 *a1, uint64_t a2, char a3)
{
  sub_1BF9FA474(a1, v3 + 16);
  *(v3 + 64) = a2;
  *(v3 + 56) = a3;
  return v3;
}

uint64_t SignalledOwner.__allocating_init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC228, &unk_1BFAB7AD0);
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BFAAC130();
  sub_1BFAAFFF8();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB590, &qword_1BFAB2640);
    LOBYTE(v13[0]) = 0;
    sub_1BFAAEE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC230, &qword_1BFAB7AE0);
    v15 = 1;
    sub_1BFAAC184(&qword_1EDCC77B0, &qword_1EDCC77E8, MEMORY[0x1E69D2FA8], MEMORY[0x1E69E6330]);
    sub_1BFAAFE08();
    v9 = *&v13[0];
    LOBYTE(v13[0]) = 2;
    v11 = sub_1BFAAFDD8();
    (*(v5 + 8))(v8, v3);
    sub_1BF9FA474(&v14, v13);
    OUTLINED_FUNCTION_31_6();
    v5 = swift_allocObject();
    SignalledOwner.init(rootOwner:matchedSignals:isConversationalContinuer:)(v13, v9, v11 & 1);
  }

  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return v5;
}

uint64_t SignalledOwner.encode(to:)(void *a1)
{
  v3 = v1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC238, &qword_1BFAB7AE8);
  OUTLINED_FUNCTION_2_3();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17[-1] - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BFAAC130();
  sub_1BFAB0008();
  v18 = 0;
  v10 = v3[5];
  v11 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v10);
  v12 = *(v11 + 32);
  v17[3] = v10;
  v17[4] = v12;
  __swift_allocate_boxed_opaque_existential_1Tm(v17);
  OUTLINED_FUNCTION_54();
  (*(v13 + 16))();
  sub_1BFAAEE68();
  if (v2)
  {
    (*(v6 + 8))(v9, v16);
    return __swift_destroy_boxed_opaque_existential_2Tm(v17);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v17);
    v17[0] = v3[8];
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC230, &qword_1BFAB7AE0);
    sub_1BFAAC184(&qword_1EDCC6428, &qword_1EDCC64D8, MEMORY[0x1E69D2FA0], MEMORY[0x1E69E6300]);
    v15 = v16;
    sub_1BFAAFEB8();
    LOBYTE(v17[0]) = 2;
    sub_1BFAAFE88();
    return (*(v6 + 8))(v9, v15);
  }
}

uint64_t sub_1BFAA9D0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC250, &qword_1BFAB7E30);
    v3 = sub_1BFAAFD48();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BFAAC76C(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void *sub_1BFAA9DBC(void (*a1)(uint64_t))
{
  v30 = sub_1BFAAEDF8();
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_11_11();
  v28 = v5;
  v29 = sub_1BFAAEC98();
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_11_11();
  v10 = *(v1 + 64);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = v9;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1BFA2DDC0(0, v11, 0);
    v12 = v32;
    v14 = v3 + 16;
    OUTLINED_FUNCTION_12_1();
    v16 = v10 + v15;
    v26 = *(v14 + 56);
    v27 = v17;
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v20 = v27(v28, v16, v30);
      a1(v20);
      (*v18)(v28, v30);
      v22 = *(v32 + 16);
      v21 = *(v32 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1BFA2DDC0((v21 > 1), v22 + 1, 1);
      }

      *(v32 + 16) = v22 + 1;
      OUTLINED_FUNCTION_12_1();
      (*(v7 + 32))(v32 + v23 + *(v7 + 72) * v22, v13, v29);
      v16 += v26;
      --v11;
      v14 = v19;
    }

    while (v11);
  }

  v24 = sub_1BFAA9598(v12);

  return v24;
}

uint64_t SignalledOwner.getSuggestionGroup()()
{
  sub_1BFAAEA38();
  sub_1BFAAEA28();
  sub_1BFAAEA18();
}

Swift::String __swiftcall SignalledOwner.getIdentifier()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = MEMORY[0x1BFB60380](v1, v2);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t SignalledOwner.getRoot()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v3);
  a1[3] = v3;
  __swift_allocate_boxed_opaque_existential_1Tm(a1);
  OUTLINED_FUNCTION_54();
  v5 = *(v4 + 16);

  return v5();
}

uint64_t static SignalledOwner.create(owner:suggestions:isConversationalContinuer:)(uint64_t a1, uint64_t a2, int a3)
{
  v99 = a3;
  v98 = a1;
  v122 = sub_1BFAAEC98();
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_3();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_3();
  v129 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v98 - v14;
  v16 = sub_1BFAAEDF8();
  OUTLINED_FUNCTION_2_3();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8_0();
  v128 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v24);
  v133 = &v98 - v25;
  v26 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_2_3();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_11_11();
  v101 = v30;
  sub_1BFAAC224();
  v121 = v16;
  v31 = sub_1BFAAF7D8();
  if (!*(a2 + 16))
  {
LABEL_26:
    sub_1BF9F93E8(v98, &v135);

    v95 = sub_1BFAA575C(v94);
    OUTLINED_FUNCTION_31_6();
    v96 = swift_allocObject();
    SignalledOwner.init(rootOwner:matchedSignals:isConversationalContinuer:)(&v135, v95, v99 & 1);

    return v96;
  }

  OUTLINED_FUNCTION_12_1();
  v105 = a2 + v32;
  v104 = *(v26 + 9);
  v132 = v18 + 16;
  v127 = (v5 + 8);
  v103 = *(v28 + 72);
  v107 = (v5 + 16);
  v119 = (v18 + 8);
  v114 = v18 + 32;
  v113 = v18 + 40;
  v34 = v121;
  v33 = v122;
  v126 = v15;
  v35 = v18;
  v36 = v133;
  OUTLINED_FUNCTION_29_6();
  v120 = v18;
  v108 = v10;
  while (1)
  {
    v106 = v37;
    sub_1BFA1C998(v105 + v103 * v37, v26);
    sub_1BF9F93E8(v26 + v104, &v135);
    sub_1BFA1C9FC(v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB590, &qword_1BFAB2640);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_25:
    v37 = v106 + 1;
    if (v106 + 1 == v18)
    {
      goto LABEL_26;
    }
  }

  v38 = *(v134 + 64);
  v125 = *(v38 + 16);
  if (!v125)
  {

    goto LABEL_25;
  }

  v102 = v134;
  OUTLINED_FUNCTION_12_1();
  v124 = v38 + v39;

  v18 = 0;
  v123 = v38;
  while (v18 < *(v38 + 16))
  {
    v130 = *(v35 + 72);
    v131 = *(v35 + 16);
    v131(v36, v124 + v130 * v18, v34);
    v40 = v126;
    sub_1BFAAEDC8();
    v41 = sub_1BFAAEC88();
    v26 = *v127;
    (*v127)(v40, v33);
    v42 = v129;
    sub_1BFAAEDD8();
    v43 = sub_1BFAAEC88();
    v44 = v42;
    v45 = v41;
    v46 = v43;
    v26(v44, v33);
    sub_1BFAAEDE8();
    v48 = v47;
    if (v31[2] && (v49 = OUTLINED_FUNCTION_22_7(), v52 = sub_1BFA1FB54(v50, v51, v49), (v53 & 1) != 0))
    {
      v116 = v46;
      v117 = v45;
      v131(v118, v31[7] + v52 * v130, v34);
      v54 = v129;
      sub_1BFAAEDC8();
      sub_1BFAAEC88();
      v55 = v54;
      v56 = v122;
      v26(v55, v122);
      v57 = v108;
      sub_1BFAAEDC8();
      v130 = sub_1BFAAEC68();
      v26(v57, v56);
      v58 = v112;
      sub_1BFAAEDC8();
      sub_1BFAAEC68();
      v59 = OUTLINED_FUNCTION_24_9();
      (v26)(v59);
      if (__OFADD__(v130, v58))
      {
        goto LABEL_30;
      }

      v115 = v31;
      v60 = v126;
      sub_1BFAAEC78();
      sub_1BFAAEDD8();
      sub_1BFAAEC88();
      v26(v57, v56);
      sub_1BFAAEDD8();
      v130 = sub_1BFAAEC68();
      v26(v58, v56);
      v61 = v58;
      v62 = v111;
      sub_1BFAAEDC8();
      sub_1BFAAEC68();
      v63 = OUTLINED_FUNCTION_24_9();
      (v26)(v63);
      if (__OFADD__(v130, v62))
      {
        goto LABEL_31;
      }

      v64 = v129;
      sub_1BFAAEC78();
      v65 = v57;
      v66 = *v107;
      (*v107)(v65, v60, v56);
      v66(v61, v64, v56);
      sub_1BFAAEDE8();
      v67 = v109;
      sub_1BFAAEDB8();
      v68 = v110;
      v34 = v121;
      v131(v110, v67, v121);
      v69 = v115;
      swift_isUniquelyReferenced_nonNull_native();
      *&v135 = v69;
      v70 = v60;
      sub_1BFA2681C(v48, v68, v117);

      v31 = v135;
      v71 = *v119;
      (*v119)(v67, v34);
      v26(v129, v56);
      v26(v70, v56);
      v71(v118, v34);
      v36 = v133;
      v71(v133, v34);
      v33 = v56;
      v35 = v120;
      v38 = v123;
    }

    else
    {
      v131(v128, v133, v34);
      swift_isUniquelyReferenced_nonNull_native();
      *&v135 = v31;
      v72 = OUTLINED_FUNCTION_22_7();
      v75 = sub_1BFA1FB54(v73, v74, v72);
      if (__OFADD__(v31[2], (v76 & 1) == 0))
      {
        goto LABEL_28;
      }

      v34 = v75;
      v36 = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB898, &qword_1BFAB7AF0);
      if (sub_1BFAAFCD8())
      {
        v77 = OUTLINED_FUNCTION_22_7();
        v80 = sub_1BFA1FB54(v78, v79, v77);
        v38 = v123;
        if ((v36 & 1) != (v81 & 1))
        {
          goto LABEL_32;
        }

        v34 = v80;
        v35 = v120;
      }

      else
      {
        v35 = v120;
        v38 = v123;
      }

      v31 = v135;
      if (v36)
      {
        OUTLINED_FUNCTION_27_10();
        v83(v82);

        v84 = OUTLINED_FUNCTION_20_9();
        v85(v84);
      }

      else
      {
        *(v135 + 8 * (v34 >> 6) + 64) |= 1 << v34;
        v86 = (v31[6] + 24 * v34);
        *v86 = v45;
        v86[1] = v46;
        *(v86 + 2) = v48;
        OUTLINED_FUNCTION_27_10();
        v88(v87);
        v89 = OUTLINED_FUNCTION_20_9();
        v90(v89);
        v91 = v31[2];
        v92 = __OFADD__(v91, 1);
        v93 = v91 + 1;
        if (v92)
        {
          goto LABEL_29;
        }

        v31[2] = v93;
      }

      v33 = v122;
    }

    if (v125 == ++v18)
    {

      OUTLINED_FUNCTION_29_6();
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1BFAAFF38();
  __break(1u);
  return result;
}

uint64_t sub_1BFAAAB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  sub_1BFAAF2C8();
  if (sub_1BFAAF2B8())
  {
    return sub_1BFAAF2B8() & (a5 == a6);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BFAAAC20(double a1)
{
  sub_1BFAAF2C8();
  sub_1BFAAC6B4(&qword_1EBDFB708, 255, MEMORY[0x1E69D3208], MEMORY[0x1E69D3210]);
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_35_8();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  return MEMORY[0x1BFB61210](*&v2);
}

uint64_t sub_1BFAAACD8(double a1)
{
  sub_1BFAAFF98();
  sub_1BFAAAC20(a1);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFAAAD38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E774F746F6F72 && a2 == 0xE900000000000072;
  if (v4 || (OUTLINED_FUNCTION_7(0x656E774F746F6F72, 0xE900000000000072) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001BFABA430 == a2;
    if (v6 || (OUTLINED_FUNCTION_7(0xD000000000000014, 0x80000001BFABA430) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000019 && 0x80000001BFAB9960 == a2)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_7(0xD000000000000019, 0x80000001BFAB9960);

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

uint64_t sub_1BFAAAE38(char a1)
{
  if (!a1)
  {
    return 0x656E774F746F6F72;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0xD000000000000019;
}

uint64_t sub_1BFAAAEB0(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1BFAAFF98();
  sub_1BFAAAC20(v2);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFAAAF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFAAAD38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFAAAF68(uint64_t a1)
{
  v2 = sub_1BFAAC130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFAAAFA4(uint64_t a1)
{
  v2 = sub_1BFAAC130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignalledOwner.deinit()
{
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));

  return v0;
}

uint64_t SignalledOwner.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));

  OUTLINED_FUNCTION_31_6();

  return swift_deallocClassInstance();
}

uint64_t sub_1BFAAB0CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BFAAC6B4(&qword_1EBDFC248, a2, type metadata accessor for SignalledOwner, &protocol conformance descriptor for SignalledOwner);

  return MEMORY[0x1EEE40920](a1, v3);
}

uint64_t sub_1BFAAB148@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SignalledOwner.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1BFAAB198(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_1BFAAEF98();
  OUTLINED_FUNCTION_2_3();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_11();
  v44 = v8;
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC140, &unk_1BFAB7E40);
  v42 = v4;
  v10 = sub_1BFAAFD38();
  v11 = v10;
  if (!*(v9 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v11;
    return;
  }

  v12 = 0;
  v13 = (v9 + 64);
  v14 = 1 << *(v9 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v9 + 64);
  v17 = (v14 + 63) >> 6;
  v39 = (v6 + 16);
  v40 = v9;
  v41 = v6;
  v43 = (v6 + 32);
  v18 = v10 + 64;
  if (!v16)
  {
LABEL_7:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      v37 = OUTLINED_FUNCTION_14_8();
      sub_1BFA26978(v37, v38, v13);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_12:
    v22 = v19 | (v12 << 6);
    v23 = *(v9 + 56);
    v24 = (*(v9 + 48) + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = *(v41 + 72);
    v28 = v23 + v27 * v22;
    if (v42)
    {
      (*v43)(v44, v28, v45);
    }

    else
    {
      (*v39)(v44, v28, v45);
    }

    sub_1BFAAFF98();
    sub_1BFAAF908();
    v29 = sub_1BFAAFFE8() & ~(-1 << *(v11 + 32));
    if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_5_13();
LABEL_25:
    *(v18 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v11 + 48) + 16 * v30);
    *v35 = v26;
    v35[1] = v25;
    (*v43)(*(v11 + 56) + v27 * v30, v44, v45);
    ++*(v11 + 16);
    v9 = v40;
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_8_12();
  while (1)
  {
    OUTLINED_FUNCTION_26_7();
    if (v34)
    {
      if (v32)
      {
        break;
      }
    }

    if (v31 == v33)
    {
      v31 = 0;
    }

    if (*(v18 + 8 * v31) != -1)
    {
      OUTLINED_FUNCTION_7_12();
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
}

void sub_1BFAAB4D0()
{
  OUTLINED_FUNCTION_4_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB618, &qword_1BFAB11A0);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_32_7();
  if (!v6)
  {
LABEL_28:

    *v0 = v2;
    return;
  }

  OUTLINED_FUNCTION_0_18();
  if (!v3)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_33_5();
      if (v8)
      {
        OUTLINED_FUNCTION_10_12();
        goto LABEL_9;
      }
    }

    if (v23)
    {
      OUTLINED_FUNCTION_9_9();
      if (v19 != v20)
      {
        OUTLINED_FUNCTION_16_7(v18);
      }

      else
      {
        v21 = OUTLINED_FUNCTION_14_8();
        sub_1BFA26978(v21, v22, v4);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_14();
LABEL_9:
    OUTLINED_FUNCTION_18_13();
    v11 = (v10 + 48 * v9);
    if (v23)
    {
      sub_1BFA17D30(v11, v24);
    }

    else
    {
      sub_1BFA27F7C(v11, v24);
    }

    sub_1BFAAFF98();
    sub_1BFAAF908();
    sub_1BFAAFFE8();
    OUTLINED_FUNCTION_2_15();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_5_13();
LABEL_20:
    OUTLINED_FUNCTION_3_14(v13);
    OUTLINED_FUNCTION_23_8(v15);
    sub_1BFA17D30(v24, (v17 + 48 * v16));
    OUTLINED_FUNCTION_17_7();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_8_12();
  while (1)
  {
    OUTLINED_FUNCTION_26_7();
    if (v12)
    {
      if (v14)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_19_7();
    if (!v12)
    {
      OUTLINED_FUNCTION_7_12();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1BFAAB670()
{
  OUTLINED_FUNCTION_4_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC268, qword_1BFAB7E58);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_32_7();
  if (!v6)
  {
LABEL_28:

    *v0 = v2;
    return;
  }

  OUTLINED_FUNCTION_0_18();
  if (!v3)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_33_5();
      if (v8)
      {
        OUTLINED_FUNCTION_10_12();
        goto LABEL_9;
      }
    }

    if (v23)
    {
      OUTLINED_FUNCTION_9_9();
      if (v19 != v20)
      {
        OUTLINED_FUNCTION_16_7(v18);
      }

      else
      {
        v21 = OUTLINED_FUNCTION_14_8();
        sub_1BFA26978(v21, v22, v4);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_14();
LABEL_9:
    OUTLINED_FUNCTION_18_13();
    v11 = (v10 + 32 * v9);
    if (v23)
    {
      sub_1BFA27FE0(v11, v24);
    }

    else
    {
      sub_1BF9F8B40(v11, v24);
    }

    sub_1BFAAFF98();
    sub_1BFAAF908();
    sub_1BFAAFFE8();
    OUTLINED_FUNCTION_2_15();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_5_13();
LABEL_20:
    OUTLINED_FUNCTION_3_14(v13);
    OUTLINED_FUNCTION_23_8(v15);
    sub_1BFA27FE0(v24, (v17 + 32 * v16));
    OUTLINED_FUNCTION_17_7();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_8_12();
  while (1)
  {
    OUTLINED_FUNCTION_26_7();
    if (v12)
    {
      if (v14)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_19_7();
    if (!v12)
    {
      OUTLINED_FUNCTION_7_12();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1BFAAB804()
{
  OUTLINED_FUNCTION_4_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC260, &qword_1BFAB7E50);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_32_7();
  if (!v6)
  {
LABEL_29:

    *v0 = v2;
    return;
  }

  v27 = v1;
  OUTLINED_FUNCTION_0_18();
  if (!v3)
  {
LABEL_4:
    v8 = v5;
    while (1)
    {
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_33_5();
      if (v9)
      {
        OUTLINED_FUNCTION_10_12();
        goto LABEL_9;
      }
    }

    if (v28)
    {
      OUTLINED_FUNCTION_9_9();
      if (v23 != v24)
      {
        OUTLINED_FUNCTION_16_7(v22);
      }

      else
      {
        v25 = OUTLINED_FUNCTION_14_8();
        sub_1BFA26978(v25, v26, v4);
      }

      v1[2] = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_14();
LABEL_9:
    v10 = v7 | (v5 << 6);
    v11 = v1[7];
    v12 = v1[6] + 8 * v10;
    v13 = *v12;
    v14 = *(v12 + 4);
    v15 = *(v11 + 8 * v10);
    if ((v28 & 1) == 0)
    {
    }

    sub_1BFAAFF98();
    sub_1BFAAFFB8();
    if (!v14)
    {
      sub_1BFAAFFC8();
    }

    sub_1BFAAFFE8();
    OUTLINED_FUNCTION_2_15();
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_5_13();
LABEL_21:
    OUTLINED_FUNCTION_3_14(v17);
    v21 = v20 + 8 * v19;
    *v21 = v13;
    *(v21 + 4) = v14;
    *(*(v2 + 56) + 8 * v19) = v15;
    OUTLINED_FUNCTION_17_7();
    v1 = v27;
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_8_12();
  while (1)
  {
    OUTLINED_FUNCTION_26_7();
    if (v16)
    {
      if (v18)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_19_7();
    if (!v16)
    {
      OUTLINED_FUNCTION_7_12();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1BFAAB9B4()
{
  OUTLINED_FUNCTION_4_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5C8, &qword_1BFAB1150);
  sub_1BFAAFD38();
  OUTLINED_FUNCTION_32_7();
  if (!v6)
  {
LABEL_28:

    *v0 = v2;
    return;
  }

  OUTLINED_FUNCTION_0_18();
  if (!v3)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_33_5();
      if (v8)
      {
        OUTLINED_FUNCTION_10_12();
        goto LABEL_9;
      }
    }

    if (v2)
    {
      OUTLINED_FUNCTION_9_9();
      if (v19 != v20)
      {
        OUTLINED_FUNCTION_16_7(v18);
      }

      else
      {
        v21 = OUTLINED_FUNCTION_14_8();
        sub_1BFA26978(v21, v22, v4);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_12_14();
LABEL_9:
    OUTLINED_FUNCTION_18_13();
    v11 = (v10 + 40 * v9);
    if (v2)
    {
      sub_1BF9FA474(v11, v23);
    }

    else
    {
      sub_1BF9F93E8(v11, v23);
    }

    sub_1BFAAFF98();
    sub_1BFAAF908();
    sub_1BFAAFFE8();
    OUTLINED_FUNCTION_2_15();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_5_13();
LABEL_20:
    OUTLINED_FUNCTION_3_14(v13);
    OUTLINED_FUNCTION_23_8(v15);
    sub_1BF9FA474(v23, v17 + 40 * v16);
    OUTLINED_FUNCTION_17_7();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_8_12();
  while (1)
  {
    OUTLINED_FUNCTION_26_7();
    if (v12)
    {
      if (v14)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_19_7();
    if (!v12)
    {
      OUTLINED_FUNCTION_7_12();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1BFAABB6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = sub_1BFAAEC98();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC250, &qword_1BFAB7E30);
  v37 = v4;
  result = sub_1BFAAFD38();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v9;
    return result;
  }

  v10 = 0;
  v11 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v33 = v2;
  v34 = (v5 + 16);
  v35 = v7;
  v36 = v5;
  v38 = (v5 + 32);
  v16 = result + 64;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      sub_1BFA26978(0, (v32 + 63) >> 6, v11);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = v17 | (v10 << 6);
    v21 = *(v7 + 56);
    v22 = *(*(v7 + 48) + 8 * v20);
    v42 = v22;
    v39 = *(v36 + 72);
    v23 = v21 + v39 * v20;
    if (v37)
    {
      (*v38)(v40, v23, v41);
    }

    else
    {
      (*v34)(v40, v23, v41);
    }

    sub_1BFAAF2C8();
    sub_1BFAAC6B4(&qword_1EBDFB708, 255, MEMORY[0x1E69D3208], MEMORY[0x1E69D3210]);
    result = sub_1BFAAF808();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v16 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v9 + 48) + 8 * v27) = v22;
    result = (*v38)(*(v9 + 56) + v39 * v27, v40, v41);
    ++*(v9 + 16);
    v7 = v35;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v16 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_1BFAABF28(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1BFAABF70(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_36_9(a1, a2, a3, a4, a5, a6);
  v9 = v8 + 24 * result;
  *v9 = v10;
  *(v9 + 8) = v11;
  *(v9 + 16) = v12 & 1;
  *(*(v7 + 56) + 8 * result) = v13;
  v14 = *(v7 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v16;
  }

  return result;
}

uint64_t sub_1BFAABFB8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OUTLINED_FUNCTION_6_14(a1, a2, a3, a4, a5);
  v10 = (v9 + 16 * v8);
  *v10 = v11;
  v10[1] = v12;
  v14 = *(v13 + 56);
  sub_1BFAAE748();
  OUTLINED_FUNCTION_54();
  result = (*(v15 + 32))(v14 + *(v15 + 72) * a1, a4);
  v17 = *(a5 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v19;
  }

  return result;
}

_OWORD *sub_1BFAAC048(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_6_14(a1, a2, a3, a4, a5);
  v8 = (v7 + 16 * v6);
  *v8 = v9;
  v8[1] = v10;
  result = sub_1BFA27FE0(v12, (*(v11 + 56) + 32 * v6));
  v14 = *(a5 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v16;
  }

  return result;
}

uint64_t sub_1BFAAC098(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OUTLINED_FUNCTION_6_14(a1, a2, a3, a4, a5);
  v10 = (v9 + 24 * v8);
  *v10 = v11;
  v10[1] = v12;
  v10[2] = v13;
  v15 = *(v14 + 56);
  sub_1BFAAEDF8();
  OUTLINED_FUNCTION_54();
  result = (*(v16 + 32))(v15 + *(v16 + 72) * a1, a4);
  v18 = *(a5 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v20;
  }

  return result;
}

unint64_t sub_1BFAAC130()
{
  result = qword_1EDCC8B60;
  if (!qword_1EDCC8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC8B60);
  }

  return result;
}

uint64_t sub_1BFAAC184(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFC230, &qword_1BFAB7AE0);
    sub_1BFAAC6B4(a2, 255, MEMORY[0x1E69D2F98], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BFAAC224()
{
  result = qword_1EDCC6AF8;
  if (!qword_1EDCC6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6AF8);
  }

  return result;
}

uint64_t sub_1BFAAC3E8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BFAAC428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SignalledOwner.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BFAAC558()
{
  result = qword_1EBDFC240;
  if (!qword_1EBDFC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC240);
  }

  return result;
}

unint64_t sub_1BFAAC5B0()
{
  result = qword_1EDCC6AF0;
  if (!qword_1EDCC6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6AF0);
  }

  return result;
}

unint64_t sub_1BFAAC608()
{
  result = qword_1EDCC8B50;
  if (!qword_1EDCC8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC8B50);
  }

  return result;
}

unint64_t sub_1BFAAC660()
{
  result = qword_1EDCC8B58;
  if (!qword_1EDCC8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC8B58);
  }

  return result;
}

uint64_t sub_1BFAAC6B4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1BFAAC6FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB938, &qword_1BFAB1EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFAAC76C(uint64_t a1, char a2, void *a3)
{
  v61 = a3;
  v5 = sub_1BFAAEC98();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v51 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB938, &qword_1BFAB1EC0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v59 = (&v46 - v17);
  v58 = *(a1 + 16);
  if (!v58)
  {
  }

  v18 = 0;
  v57 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v19 = *(v15 + 48);
  v55 = v6;
  v56 = v19;
  v60 = (v6 + 32);
  v49 = v6 + 16;
  v50 = v9;
  v48 = (v6 + 8);
  v47 = (v6 + 40);
  v53 = v16;
  v54 = a1;
  while (v18 < *(a1 + 16))
  {
    v20 = v59;
    sub_1BFAACBC4(v57 + *(v16 + 72) * v18, v59);
    v21 = *v20;
    v22 = *v60;
    v23 = v5;
    (*v60)(v13, v20 + v56, v5);
    v24 = *v61;
    v26 = sub_1BFA1FAA8(v21);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_19;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC258, &qword_1BFAB7E38);
        sub_1BFAAFCE8();
      }
    }

    else
    {
      sub_1BFAABB6C(v29, a2 & 1);
      v31 = sub_1BFA1FAA8(v21);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_22;
      }

      v26 = v31;
    }

    v33 = *v61;
    if (v30)
    {
      v34 = v33[7];
      v35 = *(v55 + 16);
      v52 = *(v55 + 72) * v26;
      v36 = v13;
      v37 = v50;
      v5 = v23;
      v35(v50, v34 + v52, v23);
      sub_1BFAAEC88();
      v38 = sub_1BFAAEC68();
      if (__OFADD__(v38, sub_1BFAAEC68()))
      {
        goto LABEL_21;
      }

      v39 = v51;
      sub_1BFAAEC78();
      v40 = *v48;
      (*v48)(v37, v23);
      v40(v36, v23);

      (*v47)(v33[7] + v52, v39, v23);
      v13 = v36;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      *(v33[6] + 8 * v26) = v21;
      v41 = v33[7] + *(v55 + 72) * v26;
      v5 = v23;
      v22(v41, v13, v23);
      v42 = v33[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_20;
      }

      v33[2] = v44;
    }

    ++v18;
    a2 = 1;
    v16 = v53;
    a1 = v54;
    if (v58 == v18)
    {
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
  sub_1BFAAF2C8();
  result = sub_1BFAAFF38();
  __break(1u);
  return result;
}

uint64_t sub_1BFAACBC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB938, &qword_1BFAB1EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of OfflineSuggestionsProvider.getSuggestionsForIntents(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BFA18718;

  return v11(a1, a2, a3, a4);
}

SiriSuggestionsAPI::CatGlobalsHolder __swiftcall CatGlobalsHolder.init(properties:deviceName:)(Swift::OpaquePointer properties, Swift::String_optional deviceName)
{
  object = deviceName.value._object;
  countAndFlagsBits = deviceName.value._countAndFlagsBits;
  v5 = v2;
  v6 = sub_1BFA12E44(properties._rawValue);

  *v5 = v6;
  v5[1] = countAndFlagsBits;
  v5[2] = object;
  result.deviceName.value._object = v9;
  result.deviceName.value._countAndFlagsBits = v8;
  result.properties._rawValue = v7;
  return result;
}

uint64_t CatGlobalsHolder.deviceName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t CatGlobalsHolder.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC270, &unk_1BFAB7EB0);
  OUTLINED_FUNCTION_2_3();
  MEMORY[0x1EEE9AC00](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BFAAD0DC();
  sub_1BFAAFFF8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5D0, &qword_1BFAB1158);
    LOBYTE(v12) = 0;
    OUTLINED_FUNCTION_2_16();
    v5 = sub_1BFAAEE38();
    OUTLINED_FUNCTION_2_16();
    sub_1BFAAEE18();
    v6 = sub_1BFA13064(v5);

    v7 = sub_1BFA12E44(v6);

    v8 = OUTLINED_FUNCTION_0_19();
    v9(v8);
    *a2 = v7;
    a2[1] = v12;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

unint64_t sub_1BFAAD0DC()
{
  result = qword_1EDCC75E8;
  if (!qword_1EDCC75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC75E8);
  }

  return result;
}

uint64_t CatGlobalsHolder.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC278, &unk_1BFAB7EC0);
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = *v1;
  v10 = v1[2];
  v16 = v1[1];
  v17 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BFAAD0DC();
  sub_1BFAB0008();
  LOBYTE(v19[0]) = 0;
  sub_1BFA13064(v9);
  v11 = v18;
  sub_1BFAAEE48();
  if (v11)
  {
    (*(v5 + 8))(v8, v3);
  }

  else
  {
    v13 = v16;

    v20 = 1;
    if (v17)
    {
      v14 = MEMORY[0x1E69E6160];
      v15 = MEMORY[0x1E69E6158];
    }

    else
    {
      v13 = 0;
      v15 = 0;
      v14 = 0;
      v19[2] = 0;
    }

    v19[0] = v13;
    v19[1] = v17;
    v19[3] = v15;
    v19[4] = v14;

    sub_1BFAAEE28();
    (*(v5 + 8))(v8, v3);
    return sub_1BFAAD328(v19);
  }
}

uint64_t sub_1BFAAD328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5A8, &qword_1BFAB0A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

SiriSuggestionsAPI::CatGlobalsHolder::CatPropertyKeys_optional __swiftcall CatGlobalsHolder.CatPropertyKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x69747265706F7270 && stringValue._object == 0xEA00000000007365;
  if (v5 || (sub_1BFAAFF08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x614E656369766564 && object == 0xEA0000000000656DLL)
  {

    v7 = 1;
  }

  else
  {
    v9 = sub_1BFAAFF08();

    if (v9)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t CatGlobalsHolder.CatPropertyKeys.hashValue.getter()
{
  v1 = *v0;
  sub_1BFAAFF98();
  MEMORY[0x1BFB611E0](v1);
  return sub_1BFAAFFE8();
}

uint64_t CatGlobalsHolder.CatPropertyKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x614E656369766564;
  }

  else
  {
    return 0x69747265706F7270;
  }
}

unint64_t sub_1BFAAD560()
{
  result = qword_1EBDFC280;
  if (!qword_1EBDFC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC280);
  }

  return result;
}

unint64_t sub_1BFAAD5B8()
{
  result = qword_1EDCC75F0;
  if (!qword_1EDCC75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC75F0);
  }

  return result;
}

unint64_t sub_1BFAAD610()
{
  result = qword_1EDCC75F8;
  if (!qword_1EDCC75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC75F8);
  }

  return result;
}

uint64_t sub_1BFAAD670(uint64_t a1)
{
  v2 = sub_1BFAAD0DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFAAD6AC(uint64_t a1)
{
  v2 = sub_1BFAAD0DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for CatGlobalsHolder.CatPropertyKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BFAAD920(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1BFAAF688();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_1BFAAF278();
  return sub_1BFAAF678();
}

uint64_t sub_1BFAAD9AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1BFAAF688();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1BFAADA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BFAADAAC, 0, 0);
}

uint64_t sub_1BFAADAAC()
{
  OUTLINED_FUNCTION_3_15(*(v0 + 56));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_17(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0_21(v2);

  return MEMORY[0x1EEE38600](v4);
}

uint64_t sub_1BFAADB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFAADB64()
{
  OUTLINED_FUNCTION_3_15((*(v0 + 56) + 16));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_17(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0_21(v2);

  return MEMORY[0x1EEE38600](v4);
}

uint64_t sub_1BFAADC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFAADC20()
{
  OUTLINED_FUNCTION_3_15((*(v0 + 56) + 120));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_17(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_0_21(v2);

  return MEMORY[0x1EEE38600](v4);
}

uint64_t sub_1BFAADCC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t SiriSuggestionsXPCBridge.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SiriSuggestionsXPCClient();
  result = SiriSuggestionsXPCClient.__allocating_init()();
  v4 = result;
  if (result)
  {
    result = sub_1BFAADE98();
  }

  else
  {
    v2 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v2;
  a1[4] = result;
  return result;
}

unint64_t sub_1BFAADE98()
{
  result = qword_1EDCC7E28;
  if (!qword_1EDCC7E28)
  {
    type metadata accessor for SiriSuggestionsXPCClient();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7E28);
  }

  return result;
}

unint64_t sub_1BFAADEF4(uint64_t a1)
{
  result = sub_1BFAADF1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BFAADF1C()
{
  result = qword_1EBDFC2A0;
  if (!qword_1EBDFC2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC2A0);
  }

  return result;
}

unint64_t sub_1BFAADF70(uint64_t a1)
{
  *(a1 + 8) = sub_1BFAADFA0();
  result = sub_1BFAADFF4();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1BFAADFA0()
{
  result = qword_1EBDFC2A8;
  if (!qword_1EBDFC2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC2A8);
  }

  return result;
}

unint64_t sub_1BFAADFF4()
{
  result = qword_1EBDFC2B0;
  if (!qword_1EBDFC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC2B0);
  }

  return result;
}

uint64_t sub_1BFAAE048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BFA18718;

  return sub_1BFAADA84(a1, a2, a3, a4, a5);
}

uint64_t sub_1BFAAE12C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1BFAAE16C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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