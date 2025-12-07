uint64_t sub_1E5923E20(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = *(a1 + *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 92));
  if ((sub_1E59FA5FC() & 1) != 0 && *(v10 + 16) >= 2uLL)
  {
    sub_1E5930424(a2);
  }

  else
  {
    sub_1E592D5A8(&v23, a2);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
  v12 = v11[16];
  v13 = v11[20];
  v14 = &v9[v11[24]];
  v23 = xmmword_1E5A36200;
  sub_1E59306E4();
  sub_1E5A2BE14();
  sub_1E5A2BC94();
  v15 = *MEMORY[0x1E6999B60];
  v16 = sub_1E5A2B924();
  (*(*(v16 - 8) + 104))(&v9[v12], v15, v16);
  v17 = *MEMORY[0x1E6999B40];
  v18 = sub_1E5A2B914();
  (*(*(v18 - 8) + 104))(&v9[v13], v17, v18);
  *v14 = &unk_1E5A36288;
  *(v14 + 1) = 0;
  (*(v7 + 104))(v9, *MEMORY[0x1E6999AD8], v6);
  v19 = *a3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1E58E7254(0, v19[2] + 1, 1, v19);
  }

  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1E58E7254((v20 > 1), v21 + 1, 1, v19);
  }

  v19[2] = v21 + 1;
  result = (*(v7 + 32))(v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21, v9, v6);
  *a3 = v19;
  return result;
}

uint64_t sub_1E59240F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v7 = *(a3 + 8);
  v6 = *(a3 + 16);
  v8 = *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 60);
  v9 = *(a1 + v8);
  v10 = *(v9 + 16);

  if (v10 && (v11 = sub_1E58EF508(v7, v6), (v12 & 1) != 0))
  {
    v13 = (*(v9 + 56) + 32 * v11);
    v15 = *v13;
    v14 = v13[1];
    v17 = v13[2];
    v16 = v13[3];

    swift_bridgeObjectRelease_n();

    v18 = v17;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CD0];
    v15 = v7;
    v14 = v6;
    v16 = MEMORY[0x1E69E7CD0];
  }

  v26 = v15;
  v27 = v14;
  v28 = v18;
  v29 = v16;
  if (sub_1E59E8F3C(v4, v5, v18))
  {
    sub_1E59302E8(v4, v5);
  }

  else
  {

    sub_1E592CD80(&v25, v4, v5);
  }

  v19 = v26;
  v20 = v27;
  v21 = v28;
  v22 = v29;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a1 + v8);
  sub_1E592CA44(v19, v20, v21, v22, v7, v6, isUniquelyReferenced_nonNull_native);

  *(a1 + v8) = v25;
  return result;
}

uint64_t sub_1E5924278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(a3 + 8);
  v6 = *(a3 + 16);
  v8 = *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 60);
  v9 = *(a1 + v8);
  v10 = *(v9 + 16);

  if (v10 && (v11 = sub_1E58EF508(v7, v6), (v12 & 1) != 0))
  {
    v13 = (*(v9 + 56) + 32 * v11);
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[2];
    v17 = v13[3];

    swift_bridgeObjectRelease_n();

    v18 = v17;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
    v15 = v7;
    v14 = v6;
    v18 = MEMORY[0x1E69E7CD0];
  }

  v26 = v15;
  v27 = v14;
  v28 = v16;
  v29 = v18;
  if (sub_1E59E8F3C(v4, v5, v18))
  {
    sub_1E59302E8(v4, v5);
  }

  else
  {

    sub_1E592CD80(&v25, v4, v5);
  }

  v19 = v26;
  v20 = v27;
  v21 = v28;
  v22 = v29;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a1 + v8);
  sub_1E592CA44(v19, v20, v21, v22, v7, v6, isUniquelyReferenced_nonNull_native);

  *(a1 + v8) = v25;
  return result;
}

uint64_t sub_1E5924400(uint64_t a1, char **a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v72 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v72 - v13;
  v15 = v2[5];
  v97 = v2[4];
  v98 = v15;
  v16 = v2[7];
  v99 = v2[6];
  v100 = v16;
  v17 = v2[1];
  v93 = *v2;
  v94 = v17;
  v18 = v2[3];
  v95 = v2[2];
  v96 = v18;
  result = type metadata accessor for WorkoutPlanCreationLocalState(0);
  v20 = *(result + 52);
  if (*(a1 + v20) == 1)
  {
    v73 = v8;
    *(a1 + v20) = 2;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v91 = v5;
    v22 = v21[16];
    v23 = v21[20];
    v24 = &v14[v21[24]];
    v92[0] = xmmword_1E5A36220;
    v89 = sub_1E59306E4();
    sub_1E5A2BE14();
    sub_1E5A2BC94();
    v25 = *MEMORY[0x1E6999B60];
    v26 = sub_1E5A2B924();
    v27 = *(v26 - 8);
    v28 = *(v27 + 104);
    v29 = &v14[v22];
    v30 = v6;
    v74 = v25;
    v87 = v28;
    v88 = v26;
    v86 = v27 + 104;
    (v28)(v29, v25);
    v31 = *MEMORY[0x1E6999B40];
    v32 = sub_1E5A2B914();
    v33 = *(v32 - 8);
    v34 = *(v33 + 104);
    v85 = v31;
    v83 = v34;
    v84 = v32;
    v82 = v33 + 104;
    (v34)(&v14[v23], v31);
    v35 = swift_allocObject();
    v36 = v98;
    v35[5] = v97;
    v35[6] = v36;
    v37 = v100;
    v35[7] = v99;
    v35[8] = v37;
    v38 = v94;
    v35[1] = v93;
    v35[2] = v38;
    v39 = v96;
    v35[3] = v95;
    v35[4] = v39;
    *v24 = &unk_1E5A364F0;
    *(v24 + 1) = v35;
    v40 = *(v6 + 104);
    v80 = *MEMORY[0x1E6999AD8];
    v81 = v6 + 104;
    v79 = v40;
    v40(v14);
    v41 = *a2;
    sub_1E5932690(&v93, v92);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1E58E7254(0, *(v41 + 2) + 1, 1, v41);
    }

    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    v44 = v73;
    v75 = a2;
    if (v43 >= v42 >> 1)
    {
      v41 = sub_1E58E7254((v42 > 1), v43 + 1, 1, v41);
    }

    *(v41 + 2) = v43 + 1;
    v46 = *(v30 + 32);
    v45 = v30 + 32;
    v77 = (*(v45 + 48) + 32) & ~*(v45 + 48);
    v78 = v46;
    v76 = *(v45 + 40);
    v47 = v45;
    v48 = v91;
    v90 = v47;
    v46(&v41[v77 + v76 * v43], v14, v91);
    v49 = v21[16];
    v50 = v21[20];
    v51 = &v11[v21[24]];
    v92[0] = xmmword_1E5A36230;
    sub_1E5A2BE14();
    v87(&v11[v49], *MEMORY[0x1E6999B50], v88);
    v83(&v11[v50], v85, v84);
    v52 = swift_allocObject();
    v53 = v98;
    v52[5] = v97;
    v52[6] = v53;
    v54 = v100;
    v52[7] = v99;
    v52[8] = v54;
    v55 = v94;
    v52[1] = v93;
    v52[2] = v55;
    v56 = v96;
    v52[3] = v95;
    v52[4] = v56;
    *v51 = &unk_1E5A36500;
    *(v51 + 1) = v52;
    sub_1E5932690(&v93, v92);
    sub_1E5A2BC94();
    v79(v11, v80, v48);
    v58 = *(v41 + 2);
    v57 = *(v41 + 3);
    if (v58 >= v57 >> 1)
    {
      v41 = sub_1E58E7254((v57 > 1), v58 + 1, 1, v41);
    }

    v60 = v75;
    v59 = v76;
    *(v41 + 2) = v58 + 1;
    v61 = v91;
    v78(&v41[v77 + v58 * v59], v11, v91);
    v62 = v21[16];
    v63 = v21[20];
    v64 = &v44[v21[24]];
    v92[0] = xmmword_1E5A36240;
    sub_1E5A2BE14();
    sub_1E5A2BC94();
    v87(&v44[v62], v74, v88);
    v83(&v44[v63], v85, v84);
    v65 = swift_allocObject();
    v66 = v98;
    v65[5] = v97;
    v65[6] = v66;
    v67 = v100;
    v65[7] = v99;
    v65[8] = v67;
    v68 = v94;
    v65[1] = v93;
    v65[2] = v68;
    v69 = v96;
    v65[3] = v95;
    v65[4] = v69;
    *v64 = &unk_1E5A36510;
    *(v64 + 1) = v65;
    v79(v44, v80, v61);
    sub_1E5932690(&v93, v92);
    v71 = *(v41 + 2);
    v70 = *(v41 + 3);
    if (v71 >= v70 >> 1)
    {
      v41 = sub_1E58E7254((v70 > 1), v71 + 1, 1, v41);
    }

    *(v41 + 2) = v71 + 1;
    result = (v78)(&v41[v77 + v71 * v76], v44, v91);
    *v60 = v41;
  }

  return result;
}

uint64_t sub_1E5924A3C(uint64_t a1, uint64_t *a2)
{
  v72 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
  v4 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - v8;
  v10 = type metadata accessor for WorkoutPlanCreationScheduleRequest(0);
  v68 = *(v10 - 1);
  v11 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v70 = (&v65 - v13);
  v14 = v2[5];
  v78 = v2[4];
  v79 = v14;
  v15 = v2[7];
  v80 = v2[6];
  v81 = v15;
  v16 = v2[1];
  v74 = *v2;
  v75 = v16;
  v17 = v2[3];
  v76 = v2[2];
  v77 = v17;
  v18 = type metadata accessor for WorkoutPlanCreationLocalState(0);
  v19 = *(a1 + v18[19]);
  if (*(v19 + 16) && (v20 = v18, v21 = *(a1 + v18[23]), *(v21 + 16)) && (v22 = *(a1 + v18[21]), v22 >= 1) && (v23 = *(a1 + v18[22]), v23 >= 1))
  {
    v65 = v18[7];
    v66 = v22;
    v24 = v10[5];
    v67 = v23;
    v25 = sub_1E5A29E74();
    v26 = v70 + v24;
    v27 = v70;
    (*(*(v25 - 8) + 16))(v26, a1 + v65, v25);
    sub_1E58BABA0(a1 + v20[16], v27 + v10[6], &qword_1ECFFD900, &qword_1E5A39BB0);
    v28 = *(a1 + v20[31]);

    v29 = sub_1E59520D8(v19);
    v30 = sub_1E591CA10(v29);

    v31 = v70;
    *v70 = v30;
    v32 = v67;
    *(v31 + v10[7]) = v66;
    *(v31 + v10[8]) = v28;
    *(v31 + v10[9]) = v32;
    *(v31 + v10[10]) = v21;
    v33 = v31;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v35 = v34[16];
    v36 = v34[20];
    v37 = &v9[v34[24]];
    v73[0] = xmmword_1E5A36250;
    sub_1E59306E4();
    sub_1E5A2BE14();
    sub_1E5A2BC94();
    v38 = *MEMORY[0x1E6999B60];
    v39 = sub_1E5A2B924();
    (*(*(v39 - 8) + 104))(&v9[v35], v38, v39);
    v40 = *MEMORY[0x1E6999B40];
    v41 = sub_1E5A2B914();
    (*(*(v41 - 8) + 104))(&v9[v36], v40, v41);
    v42 = v69;
    sub_1E5932C30(v33, v69, type metadata accessor for WorkoutPlanCreationScheduleRequest);
    v43 = (*(v68 + 80) + 144) & ~*(v68 + 80);
    v44 = swift_allocObject();
    v45 = v79;
    v44[5] = v78;
    v44[6] = v45;
    v46 = v81;
    v44[7] = v80;
    v44[8] = v46;
    v47 = v75;
    v44[1] = v74;
    v44[2] = v47;
    v48 = v77;
    v44[3] = v76;
    v44[4] = v48;
    sub_1E59326EC(v42, v44 + v43, type metadata accessor for WorkoutPlanCreationScheduleRequest);
    *v37 = &unk_1E5A36528;
    *(v37 + 1) = v44;
    v49 = v71;
    (*(v4 + 104))(v9, *MEMORY[0x1E6999AD8], v71);
    v50 = v72;
    v51 = *v72;
    sub_1E5932690(&v74, v73);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_1E58E7254(0, v51[2] + 1, 1, v51);
    }

    v53 = v51[2];
    v52 = v51[3];
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      v51 = sub_1E58E7254((v52 > 1), v53 + 1, 1, v51);
    }

    sub_1E5932F40(v70, type metadata accessor for WorkoutPlanCreationScheduleRequest);
  }

  else
  {
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
    v56 = v55[16];
    v57 = v55[20];
    v58 = &v6[v55[24]];
    v73[0] = xmmword_1E5A36250;
    sub_1E59306E4();
    sub_1E5A2BE14();
    v59 = *MEMORY[0x1E6999B60];
    v60 = sub_1E5A2B924();
    (*(*(v60 - 8) + 104))(&v6[v56], v59, v60);
    v61 = *MEMORY[0x1E6999B40];
    v62 = sub_1E5A2B914();
    (*(*(v62 - 8) + 104))(&v6[v57], v61, v62);
    *v58 = &unk_1E5A36518;
    *(v58 + 1) = 0;
    sub_1E5A2BC94();
    v49 = v71;
    (*(v4 + 104))(v6, *MEMORY[0x1E6999AD8], v71);
    v50 = v72;
    v51 = *v72;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_1E58E7254(0, v51[2] + 1, 1, v51);
    }

    v53 = v51[2];
    v63 = v51[3];
    v54 = v53 + 1;
    if (v53 >= v63 >> 1)
    {
      v51 = sub_1E58E7254((v63 > 1), v53 + 1, 1, v51);
    }

    v9 = v6;
  }

  v51[2] = v54;
  result = (*(v4 + 32))(v51 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v53, v9, v49);
  *v50 = v51;
  return result;
}

uint64_t sub_1E592512C(uint64_t a1)
{
  v31 = a1;
  v32 = sub_1E5A29E34();
  v1 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E5A2A004();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC028, &qword_1E5A2FCB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_1E5A29EC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5A29FE4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *MEMORY[0x1E6969868], v8, v14);
  sub_1E5A29ED4();
  (*(v9 + 8))(v11, v8);
  sub_1E5A29F04();
  sub_1E5A29E94();
  v17 = sub_1E5A29EB4();
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  sub_1E5A29FA4();
  sub_1E5A29FF4();
  sub_1E5A29FB4();
  v18 = type metadata accessor for WorkoutPlanCreationLocalState(0);
  v19 = v31;
  v33 = *(v31 + *(v18 + 112));

  sub_1E5A29E14();
  v20 = Calendar.availableDays(for:schedule:)(v3, &v33);
  (*(v1 + 8))(v3, v32);

  (*(v13 + 8))(v16, v12);
  v21 = v19 + *(v18 + 116);
  if (*(v21 + 24) == 1)
  {
  }

  v22 = (v20 + 48);
  v23 = *(v20 + 16) + 1;
  while (--v23)
  {
    v25 = *(v22 - 1);
    v24 = *v22;
    v26 = *(v22 - 2);
    v22 += 3;
    if (v26 == *v21 && v25 == *(v21 + 8) && v24 == *(v21 + 16))
    {
    }
  }

  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *(v21 + 24) = 1;
  return result;
}

char *sub_1E5925500(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 112));
  if (v2)
  {
    v3 = sub_1E591B840(v2);
    if (*(v3 + 16))
    {
      v4 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC080, &unk_1E5A36480);
      v5 = sub_1E5A2BF14();
      v3 = v4;
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC8];
    }

    v21 = v5;
    sub_1E591C604(v3, 1, &v21);
    v6 = v21;
  }

  else
  {
    v6 = sub_1E590E078(MEMORY[0x1E69E7CC0]);
  }

  v7 = *(a1 + *(type metadata accessor for EditItem(0) + 24));
  v21 = &unk_1F5F5B748;
  sub_1E58D1E60(&v21);
  v8 = *(v21 + 2);
  if (v8)
  {
    v9 = v21 + 32;
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v13 = *v9++;
      v12 = v13;
      if (v7 != 7 && v12 == v7)
      {
        break;
      }

      if (*(v6 + 2) && (sub_1E58EF8CC(v12), (v17 & 1) != 0))
      {
      }

      else
      {
        v18 = v10;
      }

      v19 = *(v18 + 16);

      if (v7 == 7)
      {
        if (!v19)
        {
          break;
        }
      }

      else if (v19 <= 9)
      {
        break;
      }

LABEL_10:
      if (!--v8)
      {
        goto LABEL_26;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1E590DEC8(0, *(v11 + 2) + 1, 1);
      v11 = v21;
    }

    v16 = *(v11 + 2);
    v15 = *(v11 + 3);
    if (v16 >= v15 >> 1)
    {
      sub_1E590DEC8((v15 > 1), v16 + 1, 1);
      v11 = v21;
    }

    *(v11 + 2) = v16 + 1;
    v11[v16 + 32] = v12;
    goto LABEL_10;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_26:

  return v11;
}

void sub_1E5925744(uint64_t a1)
{
  v2 = type metadata accessor for EditItem(0);
  v3 = *(a1 + *(v2 + 32));
  v4 = MEMORY[0x1E69E7CD0];
  if (v3)
  {
    v38 = MEMORY[0x1E69E7CD0];
    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 56);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    while (v7)
    {
      v11 = v9;
LABEL_12:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = *(v3 + 48) + 24 * (v12 | (v11 << 6));
      v15 = *v13;
      v14 = *(v13 + 8);
      v16 = *(v13 + 16);
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v43[0] = v15;
          v43[1] = v14;
          memset(&v43[2], 0, 24);
          v44 = 5;

          v10 = v43;
        }

        else
        {
          v45[0] = v15;
          v45[1] = v14;
          memset(&v45[2], 0, 24);
          v46 = 6;

          v10 = v45;
        }
      }

      else if (v16)
      {
        v41[0] = v15;
        v41[1] = v14;
        memset(&v41[2], 0, 24);
        v42 = 2;

        v10 = v41;
      }

      else
      {
        v39[0] = v15;
        v39[1] = v14;
        memset(&v39[2], 0, 24);
        v40 = 0;

        v10 = v39;
      }

      sub_1E592CED0(v36, v10);
      sub_1E58BACAC(v36[0], v36[1], v36[2], v36[3], v36[4], v37);
      v9 = v11;
    }

    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        v4 = v38;
        goto LABEL_19;
      }

      v7 = *(v3 + 56 + 8 * v11);
      ++v9;
      if (v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_19:
  if (*(a1 + *(v2 + 28) + 8))
  {
LABEL_35:
    v35 = MEMORY[0x1E69E7CD0];
LABEL_36:
    sub_1E5925AA4(v4, v35);
    return;
  }

  v17 = *(a1 + *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 24) + 8);
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 56);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  if (v20)
  {
    while (1)
    {
      v23 = v22;
LABEL_27:
      v24 = *(v17 + 48) + 40 * (__clz(__rbit64(v20)) | (v23 << 6));
      v25 = *v24;
      v27 = *(v24 + 8);
      v26 = *(v24 + 16);
      v28 = *(v24 + 24);
      v29 = *(v24 + 32);

      sub_1E5A2BD04();
      if (v25 - v28 <= v30 && v30 <= v25 + v29)
      {
        break;
      }

      v20 &= v20 - 1;

      v22 = v23;
      if (!v20)
      {
        goto LABEL_24;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8E8, &qword_1E5A36468);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E5A2C920;
    *(inited + 32) = v25;
    v33 = inited + 32;
    *(inited + 40) = v27;
    *(inited + 48) = v26;
    *(inited + 56) = v28;
    *(inited + 64) = v29;
    *(inited + 72) = 1;
    v34 = sub_1E59E24B4(inited);
    swift_setDeallocating();
    sub_1E5932300(v33);
    v35 = v34;
    goto LABEL_36;
  }

LABEL_24:
  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      goto LABEL_35;
    }

    v20 = *(v17 + 56 + 8 * v23);
    ++v22;
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_38:
  __break(1u);
}

void sub_1E5925AA4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v17 = a2;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = (*(a1 + 48) + 48 * (v11 | (v10 << 6)));
      v13 = *(v12 + 25);
      v14 = v12[1];
      v18 = *v12;
      v19[0] = v14;
      *(v19 + 9) = v13;
      sub_1E59323E4(&v18, v15);
      sub_1E592CED0(v15, &v18);
      sub_1E58BACAC(v15[0], v15[1], v15[2], v15[3], v15[4], v16);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

int *sub_1E5925BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v37 = a3;
  v35 = a2;
  v5 = sub_1E5A29E74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WorkoutPlanScheduledItem(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = type metadata accessor for EditItem(0);
  v14 = result;
  v15 = *(a1 + result[10]);
  if (v15 != 7 || (v15 = *(a1 + result[6]), v15 != 7))
  {
    result = type metadata accessor for WorkoutPlanCreationLocalState(0);
    v16 = *(a1 + result[28]);
    if (v16)
    {
      v33 = result[28];
      v34 = v10;
      v17 = *(v16 + 16);
      v32 = v15;
      if (v17 && (v18 = sub_1E58EF458(v15, 0, 0, 0), (v19 & 1) != 0))
      {
        v20 = *(*(v16 + 56) + 8 * v18);
      }

      else
      {
        v20 = MEMORY[0x1E69E7CC0];
      }

      sub_1E5A29E64();
      v21 = *(a1 + v14[8]);
      if (v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = MEMORY[0x1E69E7CD0];
      }

      (*(v6 + 32))(v12 + *(v9 + 24), v8, v5);
      v23 = (v12 + *(v9 + 28));
      v24 = v37;
      *v23 = v35;
      v23[1] = v24;
      *v12 = v36;
      v12[1] = v22;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1E58E7050(0, v20[2] + 1, 1, v20);
      }

      v25 = v34;
      v27 = v20[2];
      v26 = v20[3];
      if (v27 >= v26 >> 1)
      {
        v20 = sub_1E58E7050((v26 > 1), v27 + 1, 1, v20);
      }

      v20[2] = v27 + 1;
      sub_1E59326EC(v12, v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v27, type metadata accessor for WorkoutPlanScheduledItem);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v16;
      sub_1E592C8B4(v20, v32, 0, 0, 0, isUniquelyReferenced_nonNull_native);
      v29 = v38;
      v30 = v33;

      *(a1 + v30) = v29;
    }
  }

  return result;
}

uint64_t sub_1E5925ED0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E59302D4(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for WorkoutPlanScheduledItem(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1E59326EC(v11, a2, type metadata accessor for WorkoutPlanScheduledItem);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E5926004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[33] = a4;
  v5[34] = a5;
  v5[31] = a2;
  v5[32] = a3;
  v5[30] = a1;
  v5[35] = type metadata accessor for WorkoutPlanCreationAction(0);
  v5[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E59260A0, 0, 0);
}

uint64_t sub_1E59260A0()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  v5 = sub_1E59E24B4(&unk_1F5F5B7F0);
  v0[37] = v5;
  sub_1E5932300(&unk_1F5F5B810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8E8, &qword_1E5A36468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C920;
  *(inited + 32) = v4;
  *(inited + 40) = v1;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 3;

  v7 = sub_1E5932354(inited, v3);
  v0[38] = v7;
  swift_setDeallocating();
  sub_1E5932300(inited + 32);
  v8 = *(v2 + 48);
  v0[28] = v5;
  v0[29] = v7;
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[39] = v9;
  *v9 = v0;
  v9[1] = sub_1E5926258;

  return (v11)(v0 + 12, v0 + 28);
}

uint64_t sub_1E5926258()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1E59265A0;
  }

  else
  {

    v2 = sub_1E592637C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E592637C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 112);
  *(v0 + 160) = *(v0 + 96);
  *(v0 + 176) = v4;
  v5 = *(v0 + 144);
  *(v0 + 192) = *(v0 + 128);
  *(v0 + 208) = v5;
  *v1 = v2;
  *(v1 + 8) = v3;
  v6 = *(v0 + 160);
  v7 = *(v0 + 176);
  v8 = *(v0 + 208);
  *(v1 + 48) = *(v0 + 192);
  *(v1 + 64) = v8;
  *(v1 + 16) = v6;
  *(v1 + 32) = v7;
  swift_storeEnumTagMultiPayload();

  v9 = swift_task_alloc();
  *(v0 + 328) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v9 = v0;
  v9[1] = sub_1E5926470;
  v11 = *(v0 + 288);

  return MEMORY[0x1EEE01A40](v11, v10);
}

uint64_t sub_1E5926470()
{
  v1 = *(*v0 + 288);
  v4 = *v0;

  sub_1E5932F40(v1, type metadata accessor for WorkoutPlanCreationAction);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E59265A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5926630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 265) = v18;
  *(v8 + 136) = v17;
  *(v8 + 264) = v16;
  *(v8 + 120) = v15;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  *(v8 + 144) = type metadata accessor for WorkoutPlanCreationAction(0);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = type metadata accessor for WorkoutPlanCreationRequest(0);
  *(v8 + 168) = swift_task_alloc();
  sub_1E5A2BAF4();
  *(v8 + 176) = swift_task_alloc();
  v10 = sub_1E5A29EB4();
  *(v8 + 184) = v10;
  *(v8 + 192) = *(v10 - 8);
  *(v8 + 200) = swift_task_alloc();
  sub_1E5A2BB14();
  *(v8 + 208) = swift_task_alloc();
  v13 = (*(a2 + 32) + **(a2 + 32));
  v11 = swift_task_alloc();
  *(v8 + 216) = v11;
  *v11 = v8;
  v11[1] = sub_1E5926864;

  return v13();
}

uint64_t sub_1E5926864(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    MEMORY[0x1E69331F0](v2);
    v7 = sub_1E592699C;
  }

  else
  {
    *(v6 + 224) = a2;
    *(v6 + 232) = a1;
    v7 = sub_1E5926C28;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E592699C()
{
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE2D33E0;
  (*(*(v0 + 192) + 16))(*(v0 + 200), *(v0 + 72), *(v0 + 184));
  v2 = v1;
  v3 = sub_1E5A2BB64();
  v5 = v4;
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v23 = *(v0 + 264);
  v24 = *(v0 + 136);
  v21 = *(v0 + 128);
  v22 = v3;
  v20 = *(v0 + 112);
  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  v12 = *(v0 + 64);
  v13 = v7[6];
  v14 = sub_1E5A29E74();
  (*(*(v14 - 8) + 16))(&v6[v13], v10, v14);
  sub_1E58BABA0(v9, &v6[v7[7]], &qword_1ECFFD900, &qword_1E5A39BB0);
  *v6 = v11;
  *(v6 + 1) = v22;
  *(v6 + 2) = v5;
  *&v6[v7[8]] = v8;
  v15 = &v6[v7[9]];
  *v15 = v20;
  *(v15 + 2) = v21;
  v6[v7[10]] = v23;
  *&v6[v7[11]] = v24;
  v16 = *v12;

  v25 = (v16 + *v16);
  v17 = swift_task_alloc();
  *(v0 + 240) = v17;
  *v17 = v0;
  v17[1] = sub_1E5926EF8;
  v18 = *(v0 + 168);

  return v25(v18);
}

uint64_t sub_1E5926C28()
{
  sub_1E5A2BAE4();
  sub_1E5A2BAD4();
  sub_1E5A2BAC4();

  sub_1E5A2BAD4();
  sub_1E5A2BB04();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE2D33E0;
  (*(*(v0 + 192) + 16))(*(v0 + 200), *(v0 + 72), *(v0 + 184));
  v2 = v1;
  v3 = sub_1E5A2BB64();
  v5 = v4;
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v23 = *(v0 + 264);
  v24 = *(v0 + 136);
  v21 = *(v0 + 128);
  v22 = v3;
  v20 = *(v0 + 112);
  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  v12 = *(v0 + 64);
  v13 = v7[6];
  v14 = sub_1E5A29E74();
  (*(*(v14 - 8) + 16))(&v6[v13], v10, v14);
  sub_1E58BABA0(v9, &v6[v7[7]], &qword_1ECFFD900, &qword_1E5A39BB0);
  *v6 = v11;
  *(v6 + 1) = v22;
  *(v6 + 2) = v5;
  *&v6[v7[8]] = v8;
  v15 = &v6[v7[9]];
  *v15 = v20;
  *(v15 + 2) = v21;
  v6[v7[10]] = v23;
  *&v6[v7[11]] = v24;
  v16 = *v12;

  v25 = (v16 + *v16);
  v17 = swift_task_alloc();
  *(v0 + 240) = v17;
  *v17 = v0;
  v17[1] = sub_1E5926EF8;
  v18 = *(v0 + 168);

  return v25(v18);
}

uint64_t sub_1E5926EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v4;
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = v3;

  if (v3)
  {
    MEMORY[0x1E69331F0](v3);
    v7 = sub_1E5927304;
  }

  else
  {
    v6[31] = a2;
    v7 = sub_1E5927030;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E5927030()
{
  v2 = *(v0 + 248);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = *(v0 + 152);
  v6 = *(v0 + 265);
  *v5 = v3;
  *(v5 + 8) = v2;
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  *(v0 + 256) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v7 = v0;
  v7[1] = sub_1E592711C;
  v9 = *(v0 + 152);

  return MEMORY[0x1EEE01A40](v9, v8);
}

uint64_t sub_1E592711C()
{
  v1 = *(*v0 + 152);

  sub_1E5932F40(v1, type metadata accessor for WorkoutPlanCreationAction);

  return MEMORY[0x1EEE6DFA0](sub_1E5927248, 0, 0);
}

uint64_t sub_1E5927248()
{
  sub_1E5932F40(*(v0 + 168), type metadata accessor for WorkoutPlanCreationRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5927304()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 265);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v3 = v0;
  v3[1] = sub_1E592711C;
  v5 = *(v0 + 152);

  return MEMORY[0x1EEE01A40](v5, v4);
}

uint64_t sub_1E59273D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = type metadata accessor for WorkoutPlanCreationAction(0);
  v3[5] = swift_task_alloc();
  v8 = (*(a2 + 80) + **(a2 + 80));
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_1E592750C;

  return v8(v3 + 2, a3);
}

uint64_t sub_1E592750C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1E5927818;
  }

  else
  {
    v2 = sub_1E5927620;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5927620()
{
  **(v0 + 40) = *(v0 + 16);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v1 = v0;
  v1[1] = sub_1E59276E8;
  v3 = *(v0 + 40);

  return MEMORY[0x1EEE01A40](v3, v2);
}

uint64_t sub_1E59276E8()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  sub_1E5932F40(v1, type metadata accessor for WorkoutPlanCreationAction);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E5927818()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E592787C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for WorkoutPlanCreationAction(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5927910, 0, 0);
}

uint64_t sub_1E5927910()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v1 = v0;
  v1[1] = sub_1E59279D0;
  v3 = *(v0 + 32);

  return MEMORY[0x1EEE01A40](v3, v2);
}

uint64_t sub_1E59279D0()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  sub_1E5932F40(v1, type metadata accessor for WorkoutPlanCreationAction);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E5927B00(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC380, &qword_1E5A30890);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v35 - v7;
  v9 = v2[5];
  v50 = v2[4];
  v51 = v9;
  v10 = v2[7];
  v52 = v2[6];
  v53 = v10;
  v11 = v2[1];
  v46 = *v2;
  v47 = v11;
  v12 = v2[3];
  v48 = v2[2];
  v49 = v12;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v45 = MEMORY[0x1E69E7CC0];
    sub_1E590DF08(0, v13, 0);
    v14 = v45;
    v40 = *MEMORY[0x1E6999B60];
    v15 = *MEMORY[0x1E6999B40];
    v38 = a2 & 1;
    v39 = v15;
    v37 = *MEMORY[0x1E6999AD8];
    v35[2] = v6 + 32;
    v36 = (v6 + 104);
    v35[1] = sub_1E59306E4();
    v16 = (a1 + 40);
    v41 = v6;
    do
    {
      v42 = v14;
      v43 = v13;
      v18 = *(v16 - 1);
      v17 = *v16;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC2B0, &qword_1E5A30650);
      v20 = v19[16];
      v21 = v19[20];
      v22 = &v8[v19[24]];
      v44[0] = v18;
      v44[1] = v17;
      swift_bridgeObjectRetain_n();
      sub_1E5A2BE14();
      sub_1E5A2BC94();
      v23 = sub_1E5A2B924();
      (*(*(v23 - 8) + 104))(&v8[v20], v40, v23);
      v24 = sub_1E5A2B914();
      v25 = &v8[v21];
      v14 = v42;
      (*(*(v24 - 8) + 104))(v25, v39, v24);
      v26 = swift_allocObject();
      *(v26 + 16) = v18;
      *(v26 + 24) = v17;
      v27 = v51;
      *(v26 + 96) = v50;
      *(v26 + 112) = v27;
      v28 = v53;
      *(v26 + 128) = v52;
      *(v26 + 144) = v28;
      v29 = v47;
      *(v26 + 32) = v46;
      *(v26 + 48) = v29;
      v30 = v49;
      *(v26 + 64) = v48;
      *(v26 + 80) = v30;
      v31 = v37;
      *(v26 + 160) = v38;
      *v22 = &unk_1E5A364C8;
      *(v22 + 1) = v26;
      (*v36)(v8, v31, v5);
      sub_1E5932690(&v46, v44);
      v45 = v14;
      v33 = *(v14 + 16);
      v32 = *(v14 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1E590DF08((v32 > 1), v33 + 1, 1);
        v14 = v45;
      }

      *(v14 + 16) = v33 + 1;
      (*(v41 + 32))(v14 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v33, v8, v5);
      v16 += 2;
      v13 = v43 - 1;
    }

    while (v43 != 1);
  }

  return v14;
}

uint64_t sub_1E5927E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 528) = a5;
  *(v5 + 448) = a3;
  *(v5 + 456) = a4;
  *(v5 + 432) = a1;
  *(v5 + 440) = a2;
  *(v5 + 464) = type metadata accessor for WorkoutPlanCreationAction(0);
  *(v5 + 472) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5927EF8, 0, 0);
}

uint64_t sub_1E5927EF8()
{
  v1 = v0[56];
  v2 = v0[57];
  v3 = v0[55];
  v4 = sub_1E59E24B4(&unk_1F5F5B840);
  v0[60] = v4;
  sub_1E5932300(&unk_1F5F5B860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8E8, &qword_1E5A36468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C920;
  *(inited + 32) = v3;
  *(inited + 40) = v1;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 3;

  v6 = sub_1E59E24B4(inited);
  v0[61] = v6;
  swift_setDeallocating();
  sub_1E5932300(inited + 32);
  v7 = *(v2 + 48);
  v0[52] = v4;
  v0[53] = v6;
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[62] = v8;
  *v8 = v0;
  v8[1] = sub_1E5928098;

  return (v10)(v0 + 12, v0 + 52);
}

uint64_t sub_1E5928098()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_1E59286C4;
  }

  else
  {

    v2 = sub_1E59281BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E59281BC()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 112);
  *(v0 + 160) = *(v0 + 96);
  *(v0 + 176) = v2;
  v3 = *(v0 + 144);
  *(v0 + 192) = *(v0 + 128);
  *(v0 + 208) = v3;
  v4 = *(v0 + 472);
  if (v1 == 1)
  {
    v5 = *(v0 + 440);
    v6 = *(v0 + 448);
    v7 = *(v0 + 112);
    *(v0 + 288) = *(v0 + 96);
    *(v0 + 304) = v7;
    v8 = *(v0 + 144);
    *(v0 + 320) = *(v0 + 128);
    *(v0 + 336) = v8;
    *v4 = v5;
    *(v4 + 8) = v6;
    v9 = *(v0 + 288);
    v10 = *(v0 + 304);
    v11 = *(v0 + 336);
    *(v4 + 48) = *(v0 + 320);
    *(v4 + 64) = v11;
    *(v4 + 16) = v9;
    *(v4 + 32) = v10;
    swift_storeEnumTagMultiPayload();

    sub_1E58BD154(v0 + 160, v0 + 352);
    v12 = swift_task_alloc();
    *(v0 + 512) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
    *v12 = v0;
    v14 = sub_1E5928374;
  }

  else
  {
    v15 = *(v0 + 440);
    v16 = *(v0 + 448);
    v17 = *(v0 + 112);
    *(v0 + 224) = *(v0 + 96);
    *(v0 + 240) = v17;
    v18 = *(v0 + 144);
    *(v0 + 256) = *(v0 + 128);
    *(v0 + 272) = v18;
    *v4 = v15;
    *(v4 + 8) = v16;
    v19 = *(v0 + 224);
    v20 = *(v0 + 240);
    v21 = *(v0 + 272);
    *(v4 + 48) = *(v0 + 256);
    *(v4 + 64) = v21;
    *(v4 + 16) = v19;
    *(v4 + 32) = v20;
    swift_storeEnumTagMultiPayload();

    v12 = swift_task_alloc();
    *(v0 + 520) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
    *v12 = v0;
    v14 = sub_1E5928594;
  }

  v12[1] = v14;
  v22 = *(v0 + 472);

  return MEMORY[0x1EEE01A40](v22, v13);
}

uint64_t sub_1E5928374()
{
  v1 = *(*v0 + 472);

  sub_1E5932F40(v1, type metadata accessor for WorkoutPlanCreationAction);

  return MEMORY[0x1EEE6DFA0](sub_1E59284A0, 0, 0);
}

uint64_t sub_1E59284A0()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 440);
  v3 = *(v0 + 448);
  v4 = *(v0 + 176);
  *(v0 + 224) = *(v0 + 160);
  *(v0 + 240) = v4;
  v5 = *(v0 + 208);
  *(v0 + 256) = *(v0 + 192);
  *(v0 + 272) = v5;
  *v1 = v2;
  *(v1 + 8) = v3;
  v6 = *(v0 + 224);
  v7 = *(v0 + 240);
  v8 = *(v0 + 272);
  *(v1 + 48) = *(v0 + 256);
  *(v1 + 64) = v8;
  *(v1 + 16) = v6;
  *(v1 + 32) = v7;
  swift_storeEnumTagMultiPayload();

  v9 = swift_task_alloc();
  *(v0 + 520) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v9 = v0;
  v9[1] = sub_1E5928594;
  v11 = *(v0 + 472);

  return MEMORY[0x1EEE01A40](v11, v10);
}

uint64_t sub_1E5928594()
{
  v1 = *(*v0 + 472);
  v4 = *v0;

  sub_1E5932F40(v1, type metadata accessor for WorkoutPlanCreationAction);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E59286C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E592873C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[32] = a3;
  v4[33] = a4;
  v4[30] = a1;
  v4[31] = a2;
  v4[34] = type metadata accessor for WorkoutPlanCreationAction(0);
  v4[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E59287D4, 0, 0);
}

uint64_t sub_1E59287D4()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v4 = sub_1E59E24B4(&unk_1F5F5B890);
  v0[36] = v4;
  sub_1E5932300(&unk_1F5F5B8B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8E8, &qword_1E5A36468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C920;
  *(inited + 32) = v3;
  *(inited + 40) = v1;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 3;

  v6 = sub_1E59E24B4(inited);
  v0[37] = v6;
  swift_setDeallocating();
  sub_1E5932300(inited + 32);
  v7 = *(v2 + 48);
  v0[28] = v4;
  v0[29] = v6;
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[38] = v8;
  *v8 = v0;
  v8[1] = sub_1E592897C;

  return (v10)(v0 + 12, v0 + 28);
}

uint64_t sub_1E592897C()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1E5928CC4;
  }

  else
  {

    v2 = sub_1E5928AA0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5928AA0()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 112);
  *(v0 + 160) = *(v0 + 96);
  *(v0 + 176) = v4;
  v5 = *(v0 + 144);
  *(v0 + 192) = *(v0 + 128);
  *(v0 + 208) = v5;
  *v1 = v2;
  *(v1 + 8) = v3;
  v6 = *(v0 + 160);
  v7 = *(v0 + 176);
  v8 = *(v0 + 208);
  *(v1 + 48) = *(v0 + 192);
  *(v1 + 64) = v8;
  *(v1 + 16) = v6;
  *(v1 + 32) = v7;
  swift_storeEnumTagMultiPayload();

  v9 = swift_task_alloc();
  *(v0 + 320) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v9 = v0;
  v9[1] = sub_1E5928B94;
  v11 = *(v0 + 280);

  return MEMORY[0x1EEE01A40](v11, v10);
}

uint64_t sub_1E5928B94()
{
  v1 = *(*v0 + 280);
  v4 = *v0;

  sub_1E5932F40(v1, type metadata accessor for WorkoutPlanCreationAction);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E5928CC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5928D3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  result = type metadata accessor for EditItem(0);
  v5 = a1 + *(result + 28);
  if ((*(v5 + 8) & 1) == 0)
  {
    v22 = v3;
    v6 = *(a1 + *(type metadata accessor for WorkoutPlanCreationLocalState(0) + 24) + 8);
    v7 = 1 << *(v6 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v6 + 56);
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    if (v9)
    {
      while (1)
      {
        v12 = v11;
LABEL_10:
        v13 = *(v6 + 48) + 40 * (__clz(__rbit64(v9)) | (v12 << 6));
        v14 = *v13;
        v16 = *(v13 + 8);
        v15 = *(v13 + 16);
        v17 = *(v13 + 24);
        v18 = *(v13 + 32);

        sub_1E5A2BD04();
        if (v14 - v17 <= v19 && v19 <= v14 + v18)
        {
          break;
        }

        v9 &= v9 - 1;

        v11 = v12;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = sub_1E59E8F3C(v16, v15, v22);

      if ((v21 & 1) == 0)
      {
        *v5 = 0;
        *(v5 + 8) = 1;
      }
    }

    else
    {
      while (1)
      {
LABEL_7:
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          return result;
        }

        if (v12 >= v10)
        {
          break;
        }

        v9 = *(v6 + 56 + 8 * v12);
        ++v11;
        if (v9)
        {
          goto LABEL_10;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E5928F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 536) = a6;
  *(v6 + 456) = a4;
  *(v6 + 464) = a5;
  *(v6 + 440) = a2;
  *(v6 + 448) = a3;
  *(v6 + 432) = a1;
  *(v6 + 472) = type metadata accessor for WorkoutPlanCreationAction(0);
  *(v6 + 480) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5928FAC, 0, 0);
}

uint64_t sub_1E5928FAC()
{
  v1 = v0[57];
  v2 = v0[58];
  v3 = v0[55];
  v4 = v0[56];
  v5 = sub_1E59E24B4(&unk_1F5F5B8E0);
  v0[61] = v5;
  sub_1E5932300(&unk_1F5F5B900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8E8, &qword_1E5A36468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C920;
  *(inited + 32) = v4;
  *(inited + 40) = v1;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 3;

  v7 = sub_1E5932354(inited, v3);
  v0[62] = v7;
  swift_setDeallocating();
  sub_1E5932300(inited + 32);
  v8 = *(v2 + 48);
  v0[52] = v5;
  v0[53] = v7;
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[63] = v9;
  *v9 = v0;
  v9[1] = sub_1E592915C;

  return (v11)(v0 + 12, v0 + 52);
}

uint64_t sub_1E592915C()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_1E5929438;
  }

  else
  {

    v2 = sub_1E5929280;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5929280()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 112);
  *(v0 + 160) = *(v0 + 96);
  *(v0 + 176) = v2;
  v3 = *(v0 + 144);
  *(v0 + 192) = *(v0 + 128);
  *(v0 + 208) = v3;
  v4 = *(v0 + 480);
  if (v1 == 1)
  {
    v5 = *(v0 + 448);
    v6 = *(v0 + 456);
    v7 = *(v0 + 112);
    *(v0 + 288) = *(v0 + 96);
    *(v0 + 304) = v7;
    v8 = *(v0 + 144);
    *(v0 + 320) = *(v0 + 128);
    *(v0 + 336) = v8;
    *v4 = v5;
    *(v4 + 8) = v6;
    v9 = *(v0 + 288);
    v10 = *(v0 + 304);
    v11 = *(v0 + 336);
    *(v4 + 48) = *(v0 + 320);
    *(v4 + 64) = v11;
    *(v4 + 16) = v9;
    *(v4 + 32) = v10;
    swift_storeEnumTagMultiPayload();

    sub_1E58BD154(v0 + 160, v0 + 352);
    v12 = swift_task_alloc();
    *(v0 + 520) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
    *v12 = v0;
    v14 = sub_1E59294B0;
  }

  else
  {
    v15 = *(v0 + 448);
    v16 = *(v0 + 456);
    v17 = *(v0 + 112);
    *(v0 + 224) = *(v0 + 96);
    *(v0 + 240) = v17;
    v18 = *(v0 + 144);
    *(v0 + 256) = *(v0 + 128);
    *(v0 + 272) = v18;
    *v4 = v15;
    *(v4 + 8) = v16;
    v19 = *(v0 + 224);
    v20 = *(v0 + 240);
    v21 = *(v0 + 272);
    *(v4 + 48) = *(v0 + 256);
    *(v4 + 64) = v21;
    *(v4 + 16) = v19;
    *(v4 + 32) = v20;
    swift_storeEnumTagMultiPayload();

    v12 = swift_task_alloc();
    *(v0 + 528) = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
    *v12 = v0;
    v14 = sub_1E59296D0;
  }

  v12[1] = v14;
  v22 = *(v0 + 480);

  return MEMORY[0x1EEE01A40](v22, v13);
}

uint64_t sub_1E5929438()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E59294B0()
{
  v1 = *(*v0 + 480);

  sub_1E5932F40(v1, type metadata accessor for WorkoutPlanCreationAction);

  return MEMORY[0x1EEE6DFA0](sub_1E59295DC, 0, 0);
}

uint64_t sub_1E59295DC()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  v4 = *(v0 + 176);
  *(v0 + 224) = *(v0 + 160);
  *(v0 + 240) = v4;
  v5 = *(v0 + 208);
  *(v0 + 256) = *(v0 + 192);
  *(v0 + 272) = v5;
  *v1 = v2;
  *(v1 + 8) = v3;
  v6 = *(v0 + 224);
  v7 = *(v0 + 240);
  v8 = *(v0 + 272);
  *(v1 + 48) = *(v0 + 256);
  *(v1 + 64) = v8;
  *(v1 + 16) = v6;
  *(v1 + 32) = v7;
  swift_storeEnumTagMultiPayload();

  v9 = swift_task_alloc();
  *(v0 + 528) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v9 = v0;
  v9[1] = sub_1E59296D0;
  v11 = *(v0 + 480);

  return MEMORY[0x1EEE01A40](v11, v10);
}

uint64_t sub_1E59296D0()
{
  v1 = *(*v0 + 480);
  v4 = *v0;

  sub_1E5932F40(v1, type metadata accessor for WorkoutPlanCreationAction);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E5929800(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = type metadata accessor for WorkoutPlanCreationAction(0);
  v2[14] = swift_task_alloc();
  v6 = (*(a2 + 16) + **(a2 + 16));
  v4 = swift_task_alloc();
  v2[15] = v4;
  *v4 = v2;
  v4[1] = sub_1E5929928;

  return v6(v2 + 2);
}

uint64_t sub_1E5929928()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1E5929C44;
  }

  else
  {
    v2 = sub_1E5929A3C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5929A3C()
{
  memmove(*(v0 + 112), (v0 + 16), 0x50uLL);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v1 = v0;
  v1[1] = sub_1E5929B14;
  v3 = *(v0 + 112);

  return MEMORY[0x1EEE01A40](v3, v2);
}

uint64_t sub_1E5929B14()
{
  v1 = *(*v0 + 112);
  v4 = *v0;

  sub_1E5932F40(v1, type metadata accessor for WorkoutPlanCreationAction);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E5929C44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5929CA8(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 96) + **(a2 + 96));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1E58CD5C8;

  return v5();
}

uint64_t sub_1E5929D90(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v2[24] = type metadata accessor for WorkoutPlanCreationAction(0);
  v2[25] = swift_task_alloc();
  v6 = (*(a2 + 64) + **(a2 + 64));
  v4 = swift_task_alloc();
  v2[26] = v4;
  *v4 = v2;
  v4[1] = sub_1E5929EB8;

  return v6(v2 + 17);
}

uint64_t sub_1E5929EB8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1E592A7C0;
  }

  else
  {
    v2 = sub_1E5929FCC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5929FCC()
{
  v1 = v0[20];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 17, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[15] = swift_getAssociatedTypeWitness();
  v0[16] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  sub_1E5A2BCE4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v0[15]);
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_1E592A18C;

  return MEMORY[0x1EEE6D8D0](v0 + 32, 0, 0);
}

uint64_t sub_1E592A18C()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E592A29C, 0, 0);
  }

  return result;
}

uint64_t sub_1E592A29C()
{
  if (*(v0 + 256) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = (*(*(v0 + 184) + 16) + **(*(v0 + 184) + 16));
    v3 = swift_task_alloc();
    *(v0 + 232) = v3;
    *v3 = v0;
    v3[1] = sub_1E592A3E4;

    return v4(v0 + 16);
  }
}

uint64_t sub_1E592A3E4()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1E592A824;
  }

  else
  {
    v2 = sub_1E592A4F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E592A4F8()
{
  memmove(*(v0 + 200), (v0 + 16), 0x50uLL);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v1 = v0;
  v1[1] = sub_1E592A5D0;
  v3 = *(v0 + 200);

  return MEMORY[0x1EEE01A40](v3, v2);
}

uint64_t sub_1E592A5D0()
{
  v1 = *(*v0 + 200);

  sub_1E5932F40(v1, type metadata accessor for WorkoutPlanCreationAction);

  return MEMORY[0x1EEE6DFA0](sub_1E592A6FC, 0, 0);
}

uint64_t sub_1E592A6FC()
{
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, *(v0 + 120));
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_1E592A18C;

  return MEMORY[0x1EEE6D8D0](v0 + 256, 0, 0);
}

uint64_t sub_1E592A7C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E592A824()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E592A890(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for WorkoutPlanCreationAction(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E592A924, 0, 0);
}

uint64_t sub_1E592A924()
{
  **(v0 + 32) = 768;
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v1 = v0;
  v1[1] = sub_1E59279D0;
  v3 = *(v0 + 32);

  return MEMORY[0x1EEE01A40](v3, v2);
}

uint64_t sub_1E592A9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = type metadata accessor for WorkoutPlanCreationAction(0);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v8 = (*(a2 + 112) + **(a2 + 112));
  v6 = swift_task_alloc();
  v3[7] = v6;
  *v6 = v3;
  v6[1] = sub_1E592AB28;

  return v8(a3);
}

uint64_t sub_1E592AB28()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E592AE5C;
  }

  else
  {
    v2 = sub_1E592AC3C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E592AC3C()
{
  **(v0 + 48) = 769;
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v1 = v0;
  v1[1] = sub_1E592AD08;
  v3 = *(v0 + 48);

  return MEMORY[0x1EEE01A40](v3, v2);
}

uint64_t sub_1E592AD08()
{
  v1 = *(*v0 + 48);
  v2 = *v0;

  sub_1E5932F40(v1, type metadata accessor for WorkoutPlanCreationAction);

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1E592AE5C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  *(v0 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD7F0, &unk_1E5A36530);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 88);
  if (!v4)
  {
    v5 = 3;
  }

  *v2 = 0;
  v2[1] = v5;
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F0, &unk_1E5A36470);
  *v6 = v0;
  v6[1] = sub_1E592AF84;
  v8 = *(v0 + 40);

  return MEMORY[0x1EEE01A40](v8, v7);
}

uint64_t sub_1E592AF84()
{
  v1 = *(*v0 + 40);

  sub_1E5932F40(v1, type metadata accessor for WorkoutPlanCreationAction);

  return MEMORY[0x1EEE6DFA0](sub_1E592B0B0, 0, 0);
}

uint64_t sub_1E592B0B0()
{
  MEMORY[0x1E69331F0](*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E592B124(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E5A226D0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E592B190(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E592B190(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E5A2C0E4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1E5A2BC24();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1E5919D7C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E5919B74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E592B288(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD910, &qword_1E5A364D0);
  result = sub_1E5A2BE34();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1E5A2C1B4();
      sub_1E5A2BB74();
      result = sub_1E5A2C204();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E592B4E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F8, &unk_1E5A403F0);
  result = sub_1E5A2BE34();
  v5 = result;
  if (*(v3 + 16))
  {
    v34 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (1)
    {
      if (!v10)
      {
        v16 = v6;
        while (1)
        {
          v6 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_57;
          }

          if (v6 >= v11)
          {
            break;
          }

          v17 = v7[v6];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v10 = (v17 - 1) & v17;
            goto LABEL_15;
          }
        }

        v33 = 1 << *(v3 + 32);
        if (v33 >= 64)
        {
          bzero(v7, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v33;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        goto LABEL_55;
      }

      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 48 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v37 = *(v18 + 24);
      v35 = *(v18 + 16);
      v36 = *(v18 + 32);
      v21 = *(v18 + 40);
      sub_1E5A2C1B4();
      if (v21 > 3)
      {
        if (v21 <= 5)
        {
          if (v21 == 4)
          {
            v22 = 4;
          }

          else
          {
            v22 = 5;
          }
        }

        else if (v21 == 6)
        {
          v22 = 6;
        }

        else
        {
          if (v21 != 7)
          {
            MEMORY[0x1E6932DE0](8);
            sub_1E5A2BB74();

            goto LABEL_42;
          }

          v22 = 7;
        }

        goto LABEL_41;
      }

      if (v21 > 1)
      {
        break;
      }

      if (!v21)
      {
        v22 = 0;
LABEL_41:
        MEMORY[0x1E6932DE0](v22);
        sub_1E5A2BB74();
        goto LABEL_42;
      }

      MEMORY[0x1E6932DE0](1);
      if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v23 = v19;
      }

      else
      {
        v23 = 0;
      }

      MEMORY[0x1E6932E10](v23);
      sub_1E5A2BB74();
      if ((v37 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v24 = v37;
      }

      else
      {
        v24 = 0;
      }

      MEMORY[0x1E6932E10](v24);
      if ((v36 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v25 = v36;
      }

      else
      {
        v25 = 0;
      }

      MEMORY[0x1E6932E10](v25);
LABEL_42:
      result = sub_1E5A2C204();
      v26 = -1 << *(v5 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_57:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 48 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v35;
      *(v14 + 24) = v37;
      *(v14 + 32) = v36;
      *(v14 + 40) = v21;
      ++*(v5 + 16);
      v3 = v34;
    }

    if (v21 == 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = 3;
    }

    goto LABEL_41;
  }

LABEL_55:

  *v2 = v5;
  return result;
}

unint64_t sub_1E592B984(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD908, &qword_1E5A364A8);
  result = sub_1E5A2BE34();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v22 = result + 56;
    for (i = v3; v10; ++*(v5 + 16))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v15 = (*(v3 + 48) + 32 * (v12 | (v6 << 6)));
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = v15[3];
      sub_1E5A2C1B4();
      sub_1E5A2BB74();
      sub_1E58B93C8(v24, v18);
      sub_1E58B93C8(v24, v19);
      sub_1E5A2C204();
      result = sub_1E5A2BE04();
      *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v20 = (*(v5 + 48) + 32 * result);
      *v20 = v16;
      v20[1] = v17;
      v3 = i;
      v20[2] = v18;
      v20[3] = v19;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= v11)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v21 = 1 << *(v3 + 32);
    if (v21 >= 64)
    {
      bzero(v7, ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v21;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E592BBA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8E0, &unk_1E5A36440);
  result = sub_1E5A2BE34();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_1E592C45C(*v15, v15[1], v15[2], v15[3], v5))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_11:
      v15 = (*(v3 + 48) + 32 * (v12 | (v6 << 6)));
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    v16 = 1 << *(v3 + 32);
    if (v16 >= 64)
    {
      bzero((v3 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v16;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E592BD0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD918, &qword_1E5A364D8);
  result = sub_1E5A2BE34();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v17);
      result = sub_1E5A2C204();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E592BF5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD920, &qword_1E5A364E0);
  result = sub_1E5A2BE34();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v21);
      sub_1E5A2BB74();
      result = sub_1E5A2C204();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E592C1DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8D8, &qword_1E5A36438);
  result = sub_1E5A2BE34();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v21);
      sub_1E5A2BB74();
      result = sub_1E5A2C204();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1E592C45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](*(a3 + 16));
  v10 = *(a3 + 16);
  if (v10)
  {
    v11 = (a3 + 32);
    do
    {
      v12 = *v11++;
      MEMORY[0x1E6932DE0](v12);
      --v10;
    }

    while (v10);
  }

  MEMORY[0x1E6932DE0](*(a4 + 16));
  v13 = *(a4 + 16);
  if (v13)
  {
    v14 = (a4 + 32);
    do
    {
      v15 = *v14++;
      MEMORY[0x1E6932DE0](v15);
      --v13;
    }

    while (v13);
  }

  sub_1E5A2C204();
  result = sub_1E5A2BE04();
  *(a5 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v17 = (*(a5 + 48) + 32 * result);
  *v17 = a1;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = a4;
  ++*(a5 + 16);
  return result;
}

unint64_t *sub_1E592C580(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1E58BD154(a4, &v9);
    v8 = sub_1E5931328(v7, a2, a3, a4);

    sub_1E58BD18C(a4);
    sub_1E58BD18C(a4);
    return v8;
  }

  return result;
}

uint64_t sub_1E592C62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = sub_1E58EF458(a1, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v4;
  v14 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1E5900A8C();
    v10 = v14;
  }

  v11 = v8;
  v12 = *(*(v10 + 56) + 8 * v8);
  sub_1E592C6B4(v11, v10);
  *v5 = v10;
  return v12;
}

uint64_t sub_1E592C6B4(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1E5A2BDF4() + 1) & ~v5;
    v29 = v4;
    do
    {
      v9 = v2;
      v10 = (*(v2 + 48) + 32 * v6);
      v11 = v7;
      v12 = *v10;
      v13 = v10[1];
      v14 = v10[2];
      v15 = v10[3];
      v16 = v8;
      sub_1E5A2C1B4();
      v17 = v12;
      v7 = v11;
      MEMORY[0x1E6932DE0](v17);
      MEMORY[0x1E6932DE0](v13);
      MEMORY[0x1E6932DE0](v14);
      MEMORY[0x1E6932DE0](v15);
      result = sub_1E5A2C204();
      v8 = v16;
      v18 = result & v11;
      if (v3 >= v16)
      {
        if (v18 < v16)
        {
          v4 = v29;
          v2 = v9;
        }

        else
        {
          v4 = v29;
          v2 = v9;
          if (v3 >= v18)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v29;
        v2 = v9;
        if (v18 >= v8 || v3 >= v18)
        {
LABEL_11:
          v19 = *(v2 + 48);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v22 = v21[1];
            *v20 = *v21;
            v20[1] = v22;
          }

          v23 = *(v2 + 56);
          v24 = (v23 + 8 * v3);
          v25 = (v23 + 8 * v6);
          if (v3 != v6 || v24 >= v25 + 1)
          {
            *v24 = *v25;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v11;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(v2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v28;
    ++*(v2 + 36);
  }

  return result;
}

unint64_t sub_1E592C8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_1E58EF458(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1E5901460(v20, a6 & 1);
      result = sub_1E58EF458(a2, a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_1E5A2C134();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_1E5900A8C();
      result = v23;
    }
  }

  v25 = *v7;
  if ((v21 & 1) == 0)
  {
    v25[(result >> 6) + 8] |= 1 << result;
    v26 = (v25[6] + 32 * result);
    *v26 = a2;
    v26[1] = a3;
    v26[2] = a4;
    v26[3] = a5;
    *(v25[7] + 8 * result) = a1;
    v27 = v25[2];
    v19 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v19)
    {
      v25[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  *(v25[7] + 8 * result) = a1;
}

uint64_t sub_1E592CA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1E58EF508(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_1E5901728(v22, a7 & 1);
      v17 = sub_1E58EF508(a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_1E5A2C134();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_1E5900BF4();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 32 * v17);
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v30 = (v27[6] + 16 * v17);
  *v30 = a5;
  v30[1] = a6;
  v31 = (v27[7] + 32 * v17);
  *v31 = a1;
  v31[1] = a2;
  v31[2] = a3;
  v31[3] = a4;
  v32 = v27[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v33;
}

uint64_t sub_1E592CBF8(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E58EF508(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1E5901A08(v16, a4 & 1);
      v11 = sub_1E58EF508(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1E5A2C134();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1E5900D90();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + (v11 << 6);

    return sub_1E593299C(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + (v11 << 6));
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[3];
  v25[2] = a1[2];
  v25[3] = v28;
  *v25 = v26;
  v25[1] = v27;
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;
}

uint64_t sub_1E592CD80(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  v8 = sub_1E5A2C204();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1E5A2C114() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1E592DB58(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1E592CED0(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[1];
  v33 = *a2;
  *v34 = v5;
  *&v34[9] = *(a2 + 25);
  v6 = *v2;
  sub_1E5A2C1B4();
  WorkoutPlanCreationFilterItem.hash(into:)(&v31);
  v7 = sub_1E5A2C204();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v6 + 48) + 48 * v9;
      v12 = *(v11 + 8);
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      v15 = *(v11 + 32);
      *&v31 = *v11;
      *(&v31 + 1) = v12;
      *v32 = v13;
      *&v32[8] = v14;
      *&v32[16] = v15;
      v32[24] = *(v11 + 40);
      sub_1E58BACE0(v31, v12, v13, v14, v15, v32[24]);
      v16 = _s18FitnessWorkoutPlan0bC18CreationFilterItemO2eeoiySbAC_ACtFZ_0(&v31, &v33);
      sub_1E58BACAC(v31, *(&v31 + 1), *v32, *&v32[8], *&v32[16], v32[24]);
      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1E58BACAC(v33, *(&v33 + 1), *v34, *&v34[8], *&v34[16], v34[24]);
    v22 = *(v6 + 48) + 48 * v9;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    v26 = *(v22 + 24);
    v27 = *(v22 + 32);
    *a1 = *v22;
    *(a1 + 8) = v24;
    *(a1 + 16) = v25;
    *(a1 + 24) = v26;
    *(a1 + 32) = v27;
    v28 = *(v22 + 40);
    *(a1 + 40) = v28;
    sub_1E58BACE0(v23, v24, v25, v26, v27, v28);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v33;
    *v32 = *v34;
    *&v32[9] = *&v34[9];
    v30 = *v3;
    sub_1E59323E4(&v31, v29);
    sub_1E592DCD8(&v31, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v30;
    v18 = *&v34[16];
    v19 = v34[24];
    v20 = *v34;
    *a1 = v33;
    *(a1 + 16) = v20;
    *(a1 + 32) = v18;
    *(a1 + 40) = v19;
    return 1;
  }
}

uint64_t sub_1E592D0A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E58B93C8(v29, a4);
  v28 = a5;
  sub_1E58B93C8(v29, a5);
  v11 = sub_1E5A2C204();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    do
    {
      v15 = (*(v10 + 48) + 32 * v13);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a2 && v15[1] == a3;
      if (v18 || (sub_1E5A2C114() & 1) != 0)
      {

        if (sub_1E58B61B8(v16, a4))
        {
          v19 = sub_1E58B61B8(v17, v28);

          if (v19)
          {

            v20 = (*(v10 + 48) + 32 * v13);
            v21 = v20[1];
            v22 = v20[2];
            v23 = v20[3];
            *a1 = *v20;
            a1[1] = v21;
            a1[2] = v22;
            a1[3] = v23;

            return 0;
          }
        }

        else
        {
        }
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v29[0] = *v26;

  sub_1E592DEA0(a2, a3, a4, v28, v13, isUniquelyReferenced_nonNull_native);
  *v26 = *&v29[0];
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = v28;
  return 1;
}

uint64_t sub_1E592D2F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](*(a4 + 16));
  v11 = *(a4 + 16);
  if (v11)
  {
    v12 = (a4 + 32);
    do
    {
      v13 = *v12++;
      MEMORY[0x1E6932DE0](v13);
      --v11;
    }

    while (v11);
  }

  MEMORY[0x1E6932DE0](*(a5 + 16));
  v14 = *(a5 + 16);
  if (v14)
  {
    v15 = (a5 + 32);
    do
    {
      v16 = *v15++;
      MEMORY[0x1E6932DE0](v16);
      --v14;
    }

    while (v14);
  }

  v17 = sub_1E5A2C204();
  v18 = v10 + 56;
  v19 = -1 << *(v10 + 32);
  v20 = v17 & ~v19;
  if (((*(v10 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
LABEL_31:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *v41;

    sub_1E592E0CC(a2, a3, a4, a5, v20, isUniquelyReferenced_nonNull_native);
    *v41 = v43;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }

  v21 = ~v19;
  v22 = *(v10 + 48);
  v40 = v10;
  while (1)
  {
    v23 = (v22 + 32 * v20);
    result = *v23;
    v26 = v23[2];
    v25 = v23[3];
    if (*v23 != a2 || v23[1] != a3)
    {
      result = sub_1E5A2C114();
      if ((result & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v28 = *(v26 + 16);
    if (v28 != *(a4 + 16))
    {
      goto LABEL_9;
    }

    if (v28 && v26 != a4)
    {
      break;
    }

LABEL_24:
    v32 = *(v25 + 16);
    if (v32 == *(a5 + 16))
    {
      if (!v32 || v25 == a5)
      {
LABEL_30:

        v35 = (*(v40 + 48) + 32 * v20);
        v36 = v35[1];
        v37 = v35[2];
        v38 = v35[3];
        *a1 = *v35;
        a1[1] = v36;
        a1[2] = v37;
        a1[3] = v38;

        return 0;
      }

      v33 = (v25 + 32);
      v34 = (a5 + 32);
      while (*v33 == *v34)
      {
        ++v33;
        ++v34;
        if (!--v32)
        {
          goto LABEL_30;
        }
      }
    }

LABEL_9:
    v20 = (v20 + 1) & v21;
    if (((*(v18 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v30 = (v26 + 32);
  v31 = (a4 + 32);
  while (v28)
  {
    if (*v30 != *v31)
    {
      goto LABEL_9;
    }

    ++v30;
    ++v31;
    if (!--v28)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1E592D5A8(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a2);
  v6 = sub_1E5A2C204();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1E592E36C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1E592D6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v8 = *v4;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v5);
  sub_1E5A2BB74();
  v9 = sub_1E5A2C204();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v8 + 48);
    do
    {
      v14 = v13 + 24 * v11;
      v15 = *(v14 + 16);
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          if (v5 != 2)
          {
            goto LABEL_4;
          }
        }

        else if (v5 != 3)
        {
          goto LABEL_4;
        }
      }

      else if (*(v14 + 16))
      {
        if (v5 != 1)
        {
          goto LABEL_4;
        }
      }

      else if (v5)
      {
        goto LABEL_4;
      }

      v16 = *v14 == a2 && *(v14 + 8) == a3;
      if (v16 || (sub_1E5A2C114() & 1) != 0)
      {
        sub_1E58BAAC0(a2, a3, v15);
        v17 = *(v8 + 48) + 24 * v11;
        v18 = *v17;
        v19 = *(v17 + 8);
        *a1 = *v17;
        *(a1 + 8) = v19;
        v20 = *(v17 + 16);
        *(a1 + 16) = v20;
        sub_1E5932970(v18, v19, v20);
        return 0;
      }

LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v23;
  sub_1E5932970(a2, a3, v5);
  sub_1E592E4B8(a2, a3, v5, v11, isUniquelyReferenced_nonNull_native);
  *v23 = v25;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = v5;
  return 1;
}

uint64_t sub_1E592D880(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *v4;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a4 & 1);
  sub_1E5A2BB74();
  v9 = sub_1E5A2C204();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_19:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    sub_1E58B413C(a2, a3);
    sub_1E592E6AC(a2, a3, a4 & 1, v11, isUniquelyReferenced_nonNull_native);
    *v24 = v27;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4 & 1;
    return 1;
  }

  v26 = ~v10;
  while (1)
  {
    v12 = *(v8 + 48) + 24 * v11;
    v14 = *v12;
    v13 = *(v12 + 8);
    if (*(v12 + 16))
    {
      if ((a4 & 1) == 0)
      {
        goto LABEL_3;
      }

      if (v14 == a2 && v13 == a3)
      {
        break;
      }

      goto LABEL_17;
    }

    if (a4)
    {
LABEL_3:
      sub_1E58B413C(a2, a3);
      sub_1E58B413C(v14, v13);
      sub_1E591CB8C(v14, v13);
      sub_1E591CB8C(a2, a3);
      goto LABEL_4;
    }

    if (v14 == a2 && v13 == a3)
    {
      break;
    }

LABEL_17:
    v17 = sub_1E5A2C114();
    sub_1E58B413C(a2, a3);
    sub_1E58B413C(v14, v13);
    sub_1E591CB8C(v14, v13);
    sub_1E591CB8C(a2, a3);
    if (v17)
    {
      goto LABEL_21;
    }

LABEL_4:
    v11 = (v11 + 1) & v26;
    if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  sub_1E591CB8C(a2, a3);
LABEL_21:
  sub_1E591CB8C(a2, a3);
  v20 = *(v8 + 48) + 24 * v11;
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  *a1 = *v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v23;
  sub_1E58B413C(v21, v22);
  return 0;
}

uint64_t sub_1E592DB58(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1E592B288(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1E592E998();
      goto LABEL_16;
    }

    sub_1E592F1E8(v8 + 1);
  }

  v10 = *v4;
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  result = sub_1E5A2C204();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1E5A2C114();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1E5A2C124();
  __break(1u);
  return result;
}

void sub_1E592DCD8(__int128 *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = a1[1];
  v33 = *a1;
  *v34 = v6;
  *&v34[9] = *(a1 + 25);
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E592B4E8(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1E592EAF4();
      goto LABEL_12;
    }

    sub_1E592F420(v7 + 1);
  }

  v9 = *v3;
  sub_1E5A2C1B4();
  WorkoutPlanCreationFilterItem.hash(into:)(&v27);
  v10 = sub_1E5A2C204();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v9 + 48) + 48 * a2;
      v14 = *(v13 + 8);
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      v17 = *(v13 + 32);
      v27 = *v13;
      v28 = v14;
      v29 = v15;
      v30 = v16;
      v31 = v17;
      v32 = *(v13 + 40);
      sub_1E58BACE0(v27, v14, v15, v16, v17, v32);
      v18 = _s18FitnessWorkoutPlan0bC18CreationFilterItemO2eeoiySbAC_ACtFZ_0(&v27, &v33);
      sub_1E58BACAC(v27, v28, v29, v30, v31, v32);
      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v20 = *(v19 + 48) + 48 * a2;
  v21 = *&v34[16];
  v22 = v34[24];
  v23 = *v34;
  *v20 = v33;
  *(v20 + 16) = v23;
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  v24 = *(v19 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v19 + 16) = v26;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1E5A2C124();
  __break(1u);
}

uint64_t sub_1E592DEA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v9 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a6 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a6)
  {
    sub_1E592B984(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_1E592EC6C(&qword_1ECFFD908, &qword_1E5A364A8);
      goto LABEL_20;
    }

    sub_1E592F8A0(v10 + 1);
  }

  v12 = *v6;
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  sub_1E58B93C8(v28, a3);
  sub_1E58B93C8(v28, a4);
  result = sub_1E5A2C204();
  v13 = -1 << *(v12 + 32);
  a5 = result & ~v13;
  if ((*(v12 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v14 = ~v13;
    do
    {
      v15 = (*(v12 + 48) + 32 * a5);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == v9 && v15[1] == a2;
      if (v18 || (result = sub_1E5A2C114(), (result & 1) != 0))
      {

        if (sub_1E58B61B8(v16, a3))
        {
          v19 = sub_1E58B61B8(v17, a4);

          if (v19)
          {
            result = sub_1E5A2C124();
            __break(1u);
            break;
          }
        }

        else
        {
        }
      }

      a5 = (a5 + 1) & v14;
    }

    while (((*(v12 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_20:
  v20 = *v25;
  *(*v25 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v21 = (*(v20 + 48) + 32 * a5);
  *v21 = v9;
  v21[1] = a2;
  v21[2] = a3;
  v21[3] = a4;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_1E592E0CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_38;
  }

  if (a6)
  {
    sub_1E592BBA0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_1E592EC6C(&qword_1ECFFD8E0, &unk_1E5A36440);
      goto LABEL_38;
    }

    sub_1E592FA98(v12 + 1);
  }

  v14 = *v6;
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  MEMORY[0x1E6932DE0](*(a3 + 16));
  v15 = *(a3 + 16);
  if (v15)
  {
    v16 = (a3 + 32);
    do
    {
      v17 = *v16++;
      MEMORY[0x1E6932DE0](v17);
      --v15;
    }

    while (v15);
  }

  MEMORY[0x1E6932DE0](*(a4 + 16));
  v18 = *(a4 + 16);
  if (v18)
  {
    v19 = (a4 + 32);
    do
    {
      v20 = *v19++;
      MEMORY[0x1E6932DE0](v20);
      --v18;
    }

    while (v18);
  }

  result = sub_1E5A2C204();
  v21 = v14 + 56;
  v22 = -1 << *(v14 + 32);
  a5 = result & ~v22;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v23 = ~v22;
    v24 = *(v14 + 48);
    do
    {
      v25 = (v24 + 32 * a5);
      result = *v25;
      v26 = v25[2];
      v27 = v25[3];
      v28 = *v25 == v11 && v25[1] == a2;
      if (v28 || (result = sub_1E5A2C114(), (result & 1) != 0))
      {
        v29 = *(v26 + 16);
        if (v29 == *(a3 + 16))
        {
          if (v29)
          {
            v30 = v26 == a3;
          }

          else
          {
            v30 = 1;
          }

          if (!v30)
          {
            v31 = (v26 + 32);
            v32 = (a3 + 32);
            while (v29)
            {
              if (*v31 != *v32)
              {
                goto LABEL_16;
              }

              ++v31;
              ++v32;
              if (!--v29)
              {
                goto LABEL_31;
              }
            }

            __break(1u);
LABEL_41:
            __break(1u);
            return result;
          }

LABEL_31:
          v33 = *(v27 + 16);
          if (v33 == *(a4 + 16))
          {
            if (!v33 || v27 == a4)
            {
LABEL_37:
              result = sub_1E5A2C124();
              __break(1u);
              break;
            }

            v34 = (v27 + 32);
            v35 = (a4 + 32);
            while (*v34 == *v35)
            {
              ++v34;
              ++v35;
              if (!--v33)
              {
                goto LABEL_37;
              }
            }
          }
        }
      }

LABEL_16:
      a5 = (a5 + 1) & v23;
    }

    while (((*(v21 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_38:
  v36 = *v41;
  *(*v41 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v37 = (*(v36 + 48) + 32 * a5);
  *v37 = v11;
  v37[1] = a2;
  v37[2] = a3;
  v37[3] = a4;
  v38 = *(v36 + 16);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
    goto LABEL_41;
  }

  *(v36 + 16) = v40;
  return result;
}

uint64_t sub_1E592E36C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E592BD0C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1E592EDD8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1E592FC04(v5 + 1);
  }

  v8 = *v3;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](v4);
  result = sub_1E5A2C204();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E5A2C124();
  __break(1u);
  return result;
}

uint64_t sub_1E592E4B8(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a5)
  {
    sub_1E592BF5C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1E592EF18();
      goto LABEL_26;
    }

    sub_1E592FE24(v11 + 1);
  }

  v13 = *v5;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a3);
  sub_1E5A2BB74();
  result = sub_1E5A2C204();
  v14 = v13 + 56;
  v15 = -1 << *(v13 + 32);
  a4 = result & ~v15;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v16 = ~v15;
    v17 = *(v13 + 48);
    do
    {
      v18 = v17 + 24 * a4;
      result = *v18;
      v19 = *(v18 + 8);
      v20 = *(v18 + 16);
      if (v20 > 1)
      {
        if (v20 == 2)
        {
          if (a3 != 2)
          {
            goto LABEL_11;
          }
        }

        else if (a3 != 3)
        {
          goto LABEL_11;
        }
      }

      else if (v20)
      {
        if (a3 != 1)
        {
          goto LABEL_11;
        }
      }

      else if (a3)
      {
        goto LABEL_11;
      }

      v21 = result == v10 && v19 == a2;
      if (v21 || (result = sub_1E5A2C114(), (result & 1) != 0))
      {
        result = sub_1E5A2C124();
        __break(1u);
        break;
      }

LABEL_11:
      a4 = (a4 + 1) & v16;
    }

    while (((*(v14 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_26:
  v22 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = *(v22 + 48) + 24 * a4;
  *v23 = v10;
  *(v23 + 8) = a2;
  *(v23 + 16) = a3;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

uint64_t sub_1E592E6AC(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 <= v10 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_1E592C1DC(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        result = sub_1E592F080();
        goto LABEL_26;
      }

      sub_1E593007C(v10 + 1);
    }

    v12 = *v5;
    sub_1E5A2C1B4();
    MEMORY[0x1E6932DE0](a3 & 1);
    sub_1E5A2BB74();
    result = sub_1E5A2C204();
    v13 = -1 << *(v12 + 32);
    a4 = result & ~v13;
    if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v14 = ~v13;
      do
      {
        v15 = *(v12 + 48) + 24 * a4;
        v17 = *v15;
        v16 = *(v15 + 8);
        if (*(v15 + 16))
        {
          if ((a3 & 1) == 0)
          {
            goto LABEL_10;
          }

          if (v17 == v9 && v16 == a2)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (a3)
          {
LABEL_10:
            sub_1E58B413C(v9, a2);
            sub_1E58B413C(v17, v16);
            sub_1E591CB8C(v17, v16);
            result = sub_1E591CB8C(v9, a2);
            goto LABEL_11;
          }

          if (v17 == v9 && v16 == a2)
          {
            goto LABEL_29;
          }
        }

        v20 = sub_1E5A2C114();
        sub_1E58B413C(v9, a2);
        sub_1E58B413C(v17, v16);
        sub_1E591CB8C(v17, v16);
        result = sub_1E591CB8C(v9, a2);
        if (v20)
        {
          goto LABEL_30;
        }

LABEL_11:
        a4 = (a4 + 1) & v14;
      }

      while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_26:
  v21 = *v26;
  *(*v26 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = v9;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3 & 1;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_29:
    sub_1E58B413C(v9, a2);
    sub_1E58B413C(v9, a2);
    sub_1E591CB8C(v9, a2);
    sub_1E591CB8C(v9, a2);
LABEL_30:
    result = sub_1E5A2C124();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

void *sub_1E592E998()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD910, &qword_1E5A364D0);
  v2 = *v0;
  v3 = sub_1E5A2BE24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1E592EAF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F8, &unk_1E5A403F0);
  v2 = *v0;
  v3 = sub_1E5A2BE24();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 48 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v4 + 48) + v17;
        v25 = *(v18 + 40);
        *v24 = *v18;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        *(v24 + 40) = v25;
        sub_1E58BACE0(v19, v20, v21, v22, v23, v25);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_1E592EC6C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1E5A2BE24();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 32 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v21 = v20[1];
        v22 = v20[2];
        v23 = v20[3];
        v24 = (*(v6 + 48) + v19);
        *v24 = *v20;
        v24[1] = v21;
        v24[2] = v22;
        v24[3] = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1E592EDD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD918, &qword_1E5A364D8);
  v2 = *v0;
  v3 = sub_1E5A2BE24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E592EF18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD920, &qword_1E5A364E0);
  v2 = *v0;
  v3 = sub_1E5A2BE24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_1E5932970(v19, v20, v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E592F080()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8D8, &qword_1E5A36438);
  v2 = *v0;
  v3 = sub_1E5A2BE24();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_1E58B413C(v19, v20);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E592F1E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD910, &qword_1E5A364D0);
  result = sub_1E5A2BE34();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1E5A2C1B4();

      sub_1E5A2BB74();
      result = sub_1E5A2C204();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E592F420(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8F8, &unk_1E5A403F0);
  result = sub_1E5A2BE34();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_53:
    *v2 = v5;
    return result;
  }

  v33 = v3;
  v6 = 0;
  v7 = v3 + 56;
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  while (v10)
  {
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_15:
    v18 = *(v3 + 48) + 48 * (v15 | (v6 << 6));
    v19 = *v18;
    v20 = *(v18 + 8);
    v36 = *(v18 + 24);
    v34 = *(v18 + 16);
    v35 = *(v18 + 32);
    v21 = *(v18 + 40);
    sub_1E5A2C1B4();
    if (v21 > 3)
    {
      if (v21 <= 5)
      {
        if (v21 == 4)
        {
          v22 = 4;
        }

        else
        {
          v22 = 5;
        }
      }

      else if (v21 == 6)
      {
        v22 = 6;
      }

      else
      {
        if (v21 != 7)
        {
          MEMORY[0x1E6932DE0](8);
          sub_1E5A2BB74();

          goto LABEL_42;
        }

        v22 = 7;
      }

      goto LABEL_41;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = 2;
      }

      else
      {
        v22 = 3;
      }

      goto LABEL_41;
    }

    if (!v21)
    {
      v22 = 0;
LABEL_41:
      MEMORY[0x1E6932DE0](v22);

      sub_1E5A2BB74();
      goto LABEL_42;
    }

    MEMORY[0x1E6932DE0](1);
    if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v23 = v19;
    }

    else
    {
      v23 = 0;
    }

    MEMORY[0x1E6932E10](v23);

    sub_1E5A2BB74();
    if ((v36 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v24 = v36;
    }

    else
    {
      v24 = 0;
    }

    MEMORY[0x1E6932E10](v24);
    if ((v35 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v25 = v35;
    }

    else
    {
      v25 = 0;
    }

    MEMORY[0x1E6932E10](v25);
LABEL_42:
    result = sub_1E5A2C204();
    v26 = -1 << *(v5 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v26) >> 6;
      while (++v28 != v30 || (v29 & 1) == 0)
      {
        v31 = v28 == v30;
        if (v28 == v30)
        {
          v28 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v28);
        if (v32 != -1)
        {
          v13 = __clz(__rbit64(~v32)) + (v28 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_55;
    }

    v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v5 + 48) + 48 * v13;
    *v14 = v19;
    *(v14 + 8) = v20;
    *(v14 + 16) = v34;
    *(v14 + 24) = v36;
    *(v14 + 32) = v35;
    *(v14 + 40) = v21;
    ++*(v5 + 16);
    v3 = v33;
  }

  v16 = v6;
  while (1)
  {
    v6 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      v2 = v1;
      goto LABEL_53;
    }

    v17 = *(v7 + 8 * v6);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v10 = (v17 - 1) & v17;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

unint64_t sub_1E592F8A0(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD908, &qword_1E5A364A8);
  result = sub_1E5A2BE34();
  v4 = result;
  v21 = v2;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v21 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v21 + 56);
    v9 = (v6 + 63) >> 6;
    for (i = result + 56; v8; ++*(v4 + 16))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v13 = (*(v21 + 48) + 32 * (v10 | (v5 << 6)));
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[2];
      v17 = v13[3];
      sub_1E5A2C1B4();

      sub_1E5A2BB74();
      sub_1E58B93C8(v22, v16);
      sub_1E58B93C8(v22, v17);
      sub_1E5A2C204();
      result = sub_1E5A2BE04();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v18 = (*(v4 + 48) + 32 * result);
      *v18 = v14;
      v18[1] = v15;
      v18[2] = v16;
      v18[3] = v17;
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_14;
      }

      v12 = *(v21 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v19 = v4;
  }

  return result;
}

uint64_t sub_1E592FA98(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8E0, &unk_1E5A36440);
  result = sub_1E5A2BE34();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v2 + 56);
    for (i = (v6 + 63) >> 6; v8; result = sub_1E592C45C(v14, v15, v16, v17, v4))
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      v13 = (*(v2 + 48) + 32 * (v10 | (v5 << 6)));
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[2];
      v17 = v13[3];
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= i)
      {
        goto LABEL_13;
      }

      v12 = *(v2 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v18 = v4;
  }

  return result;
}

uint64_t sub_1E592FC04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD918, &qword_1E5A364D8);
  result = sub_1E5A2BE34();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v16);
      result = sub_1E5A2C204();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E592FE24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD920, &qword_1E5A364E0);
  result = sub_1E5A2BE34();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v21);

      sub_1E5A2BB74();
      result = sub_1E5A2C204();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E593007C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD8D8, &qword_1E5A36438);
  result = sub_1E5A2BE34();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](v21);

      sub_1E5A2BB74();
      result = sub_1E5A2C204();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E59302E8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1E5A2C1B4();
  sub_1E5A2BB74();
  v6 = sub_1E5A2C204();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1E5A2C114() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E592E998();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1E5930834(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1E5930424(unsigned __int8 a1)
{
  v3 = *v1;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  v4 = sub_1E5A2C204();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 7;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 7;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E592EDD8();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_1E59309F8(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1E593052C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = *v3;
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a3);
  sub_1E5A2BB74();
  v8 = sub_1E5A2C204();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 24 * v10);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(v13 + 16);
    if (v16 <= 1)
    {
      if (v16)
      {
        if (a3 == 1)
        {
          goto LABEL_13;
        }
      }

      else if (!a3)
      {
        goto LABEL_13;
      }

      goto LABEL_4;
    }

    if (v16 != 2)
    {
      break;
    }

    if (a3 == 2)
    {
      goto LABEL_13;
    }

LABEL_4:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  if (a3 != 3)
  {
    goto LABEL_4;
  }

LABEL_13:
  v17 = v14 == a1 && v15 == a2;
  if (!v17 && (sub_1E5A2C114() & 1) == 0)
  {
    goto LABEL_4;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;
  v22 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E592EF18();
    v19 = v22;
  }

  v20 = *(*(v19 + 48) + 24 * v10);
  sub_1E5930BA0(v10);
  result = v20;
  *v3 = v22;
  return result;
}

unint64_t sub_1E59306E4()
{
  result = qword_1ECFFD8A8;
  if (!qword_1ECFFD8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD8A8);
  }

  return result;
}

uint64_t sub_1E5930738(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 168);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E58CECB4;

  return sub_1E5928F0C(a1, v4, v5, v6, v1 + 40, v7);
}

unint64_t sub_1E5930834(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E5A2BDF4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1E5A2C1B4();

        sub_1E5A2BB74();
        v10 = sub_1E5A2C204();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1E59309F8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E5A2BDF4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_1E5A2C1B4();
        MEMORY[0x1E6932DE0](v10);
        v11 = sub_1E5A2C204() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1E5930BA0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E5A2BDF4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v28 = v4;
      do
      {
        v10 = 24 * v6;
        v11 = v3;
        v12 = *(v3 + 48) + 24 * v6;
        v13 = *v12;
        v14 = *(v12 + 8);
        v15 = v2;
        v16 = *(v12 + 16);
        v17 = v9;
        sub_1E5A2C1B4();
        MEMORY[0x1E6932DE0](v16);

        sub_1E5A2BB74();
        v18 = sub_1E5A2C204();
        v19 = v16;
        v2 = v15;
        sub_1E58BAAC0(v13, v14, v19);
        v9 = v17;
        v20 = v18 & v7;
        if (v15 >= v17)
        {
          if (v20 < v17)
          {
            v4 = v28;
            v3 = v11;
          }

          else
          {
            v4 = v28;
            v3 = v11;
            if (v2 >= v20)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v4 = v28;
          v3 = v11;
          if (v20 >= v9 || v2 >= v20)
          {
LABEL_12:
            v21 = *(v3 + 48);
            v22 = v21 + 24 * v2;
            v23 = (v21 + v10);
            if (24 * v2 < v10 || v22 >= v23 + 24 || v2 != v6)
            {
              v24 = *v23;
              *(v22 + 16) = *(v23 + 2);
              *v22 = v24;
              v2 = v6;
            }
          }
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v25 = *(v3 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v27;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1E5930DDC(unint64_t a1, int a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((a1 & 0x8000000000000000) != 0 || (v7 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v8 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v8 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v8 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = *v3;
  if (!v7)
  {
LABEL_10:
    v11 = isUniquelyReferenced_nonNull_native;
    sub_1E592EF18();
    isUniquelyReferenced_nonNull_native = v11;
    v8 = v12;
  }

  v9 = *(*(v8 + 48) + 24 * isUniquelyReferenced_nonNull_native);
  sub_1E5930BA0(isUniquelyReferenced_nonNull_native);
  *v3 = v12;
  return v9;
}

uint64_t sub_1E5930EC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        return !a4;
      case 1:
        return a4 == 1;
      case 2:
        return a4 == 2;
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        if (a4 == 3)
        {
          return 1;
        }
      }

      else if (a4 == 4)
      {
        return 1;
      }

      return 0;
    }

    if (a2 == 5)
    {
      return a4 == 5;
    }

    if (a2 == 6)
    {
      return a4 == 6;
    }
  }

  if (a4 < 7)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1E5A2C114();
  }
}

uint64_t sub_1E5930FA4(uint64_t a1, uint64_t a2)
{
  v39 = a1 + 64;
  v42 = MEMORY[0x1E69E7CC8];
  v46 = MEMORY[0x1E69E7CC8];
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = a2 + 56;

  v9 = 0;
  while (v5)
  {
    v10 = v5;
LABEL_13:
    v5 = (v10 - 1) & v10;
    if (*(a2 + 16))
    {
      v43 = (v10 - 1) & v10;
      v12 = __clz(__rbit64(v10)) | (v9 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = v13[1];
      v41 = *v13;
      v15 = (*(a1 + 56) + 32 * v12);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = v15[3];
      sub_1E5A2C1B4();
      v44 = v14;

      v45 = v18;

      sub_1E5A2BB74();
      v20 = sub_1E5A2C204();
      v21 = -1 << *(a2 + 32);
      v22 = v20 & ~v21;
      if ((*(v7 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(a2 + 48) + 16 * v22);
          v25 = *v24 == v16 && v24[1] == v17;
          if (v25 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v7 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        v26 = v42;
        v27 = *(v42 + 16);
        if (*(v42 + 24) <= v27)
        {

          sub_1E5901728(v27 + 1, 1);
          v26 = v46;
        }

        else
        {
        }

        sub_1E5A2C1B4();
        sub_1E5A2BB74();
        result = sub_1E5A2C204();
        v28 = v26 + 64;
        v29 = -1 << *(v26 + 32);
        v30 = result & ~v29;
        v31 = v30 >> 6;
        if (((-1 << v30) & ~*(v26 + 64 + 8 * (v30 >> 6))) == 0)
        {
          v33 = 0;
          v34 = (63 - v29) >> 6;
          while (++v31 != v34 || (v33 & 1) == 0)
          {
            v35 = v31 == v34;
            if (v31 == v34)
            {
              v31 = 0;
            }

            v33 |= v35;
            v36 = *(v28 + 8 * v31);
            if (v36 != -1)
            {
              v32 = __clz(__rbit64(~v36)) + (v31 << 6);
              goto LABEL_36;
            }
          }

          goto LABEL_39;
        }

        v32 = __clz(__rbit64((-1 << v30) & ~*(v26 + 64 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_36:
        *(v28 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        v37 = (*(v26 + 48) + 16 * v32);
        *v37 = v41;
        v37[1] = v44;
        v38 = (*(v26 + 56) + 32 * v32);
        *v38 = v16;
        v38[1] = v17;
        v38[2] = v45;
        v38[3] = v19;
        v42 = v26;
        ++*(v26 + 16);
      }

      else
      {
LABEL_5:
      }

      v5 = v43;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v42;
    }

    v10 = *(v39 + 8 * v11);
    ++v9;
    if (v10)
    {
      v9 = v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

unint64_t *sub_1E5931328(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = 0;
  v47 = result;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = *(a3 + 48) + 24 * v13;
    v15 = *v14;
    v16 = *(v14 + 8);
    v53 = v8;
    v50 = v13;
    v52 = *(v14 + 16);
    if (v52 > 1u)
    {
      if (*(v14 + 16) == 2)
      {
        v24 = a4[5];
        if (!*(v24 + 16))
        {
          goto LABEL_56;
        }

        sub_1E5A2C1B4();

        sub_1E5A2BB74();
        v25 = sub_1E5A2C204();
        v26 = -1 << *(v24 + 32);
        v27 = v25 & ~v26;
        if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_55;
        }

        v28 = ~v26;
        while (1)
        {
          v29 = (*(v24 + 48) + 16 * v27);
          v30 = *v29 == v15 && v16 == v29[1];
          if (v30 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }

          v27 = (v27 + 1) & v28;
          if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_55;
          }
        }
      }

      else
      {
        v38 = a4[6];
        if (!*(v38 + 16))
        {
          goto LABEL_56;
        }

        sub_1E5A2C1B4();

        sub_1E5A2BB74();
        v39 = sub_1E5A2C204();
        v40 = -1 << *(v38 + 32);
        v41 = v39 & ~v40;
        if (((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
        {
          goto LABEL_55;
        }

        v42 = ~v40;
        while (1)
        {
          v43 = (*(v38 + 48) + 16 * v41);
          v44 = *v43 == v15 && v16 == v43[1];
          if (v44 || (sub_1E5A2C114() & 1) != 0)
          {
            break;
          }

          v41 = (v41 + 1) & v42;
          if (((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            goto LABEL_55;
          }
        }
      }

LABEL_5:
      result = sub_1E58BAAC0(v15, v16, v52);
      v8 = v53;
    }

    else
    {
      if (*(v14 + 16))
      {
        v31 = a4[2];
        if (!*(v31 + 16))
        {
          goto LABEL_56;
        }

        sub_1E5A2C1B4();

        sub_1E5A2BB74();
        v32 = sub_1E5A2C204();
        v33 = -1 << *(v31 + 32);
        v34 = v32 & ~v33;
        if (((*(v31 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_55;
        }

        v35 = ~v33;
        while (1)
        {
          v36 = (*(v31 + 48) + 16 * v34);
          v37 = *v36 == v15 && v16 == v36[1];
          if (v37 || (sub_1E5A2C114() & 1) != 0)
          {
            goto LABEL_5;
          }

          v34 = (v34 + 1) & v35;
          if (((*(v31 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_55;
          }
        }
      }

      v17 = *a4;
      if (*(*a4 + 16))
      {
        sub_1E5A2C1B4();

        sub_1E5A2BB74();
        v18 = sub_1E5A2C204();
        v19 = -1 << *(v17 + 32);
        v20 = v18 & ~v19;
        if ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          do
          {
            v22 = (*(v17 + 48) + 16 * v20);
            v23 = *v22 == v15 && v16 == v22[1];
            if (v23 || (sub_1E5A2C114() & 1) != 0)
            {
              goto LABEL_5;
            }

            v20 = (v20 + 1) & v21;
          }

          while (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
        }

LABEL_55:
        result = sub_1E58BAAC0(v15, v16, v52);
        v8 = v53;
        v13 = v50;
      }

LABEL_56:
      *(v47 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v48++, 1))
      {
        __break(1u);
LABEL_59:

        return sub_1E59E07C0(v47, a2, v48, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_59;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5931788(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  v59 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  v6 = 8 * v5;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_64;
  }

  v7 = sub_1E58BD154(a2, v58);
  while (2)
  {
    v50[0] = v50;
    MEMORY[0x1EEE9AC00](v7);
    v51 = v50 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v51, v6);
    v52 = 0;
    v53 = v3;
    v8 = 0;
    v9 = v3 + 56;
    v10 = 1 << *(v3 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v3 + 56);
    v5 = (v10 + 63) >> 6;
    v54 = v2;
    while (v12)
    {
      v13 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v16 = v13 | (v8 << 6);
      v17 = *(v3 + 48) + 24 * v16;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v57 = v12;
      v55 = v16;
      v56 = v20;
      if (v20 > 1)
      {
        if (v20 == 2)
        {
          v27 = v2[5];
          if (!*(v27 + 16))
          {
            goto LABEL_58;
          }

          sub_1E5A2C1B4();

          sub_1E5A2BB74();
          v28 = sub_1E5A2C204();
          v29 = -1 << *(v27 + 32);
          v30 = v28 & ~v29;
          if (((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_57;
          }

          v6 = ~v29;
          while (1)
          {
            v31 = (*(v27 + 48) + 16 * v30);
            v32 = *v31 == v18 && v19 == v31[1];
            if (v32 || (sub_1E5A2C114() & 1) != 0)
            {
              break;
            }

            v30 = (v30 + 1) & v6;
            if (((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
            {
              goto LABEL_57;
            }
          }
        }

        else
        {
          v39 = v2[6];
          if (!*(v39 + 16))
          {
            goto LABEL_58;
          }

          sub_1E5A2C1B4();

          sub_1E5A2BB74();
          v40 = sub_1E5A2C204();
          v41 = -1 << *(v39 + 32);
          v42 = v40 & ~v41;
          if (((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_57;
          }

          v6 = ~v41;
          while (1)
          {
            v43 = (*(v39 + 48) + 16 * v42);
            v44 = *v43 == v18 && v19 == v43[1];
            if (v44 || (sub_1E5A2C114() & 1) != 0)
            {
              break;
            }

            v42 = (v42 + 1) & v6;
            if (((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
            {
              goto LABEL_57;
            }
          }
        }

LABEL_7:
        sub_1E58BAAC0(v18, v19, v56);
        v3 = v53;
        v2 = v54;
        v12 = v57;
      }

      else
      {
        if (v20)
        {
          v33 = v2[2];
          if (!*(v33 + 16))
          {
            goto LABEL_58;
          }

          sub_1E5A2C1B4();

          sub_1E5A2BB74();
          v34 = sub_1E5A2C204();
          v35 = -1 << *(v33 + 32);
          v36 = v34 & ~v35;
          if (((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_57;
          }

          v6 = ~v35;
          while (1)
          {
            v37 = (*(v33 + 48) + 16 * v36);
            v38 = *v37 == v18 && v19 == v37[1];
            if (v38 || (sub_1E5A2C114() & 1) != 0)
            {
              goto LABEL_7;
            }

            v36 = (v36 + 1) & v6;
            if (((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
            {
              goto LABEL_57;
            }
          }
        }

        v21 = *v2;
        if (*(*v2 + 16))
        {
          sub_1E5A2C1B4();

          sub_1E5A2BB74();
          v22 = sub_1E5A2C204();
          v23 = -1 << *(v21 + 32);
          v24 = v22 & ~v23;
          if ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
          {
            v6 = ~v23;
            do
            {
              v25 = (*(v21 + 48) + 16 * v24);
              v26 = *v25 == v18 && v19 == v25[1];
              if (v26 || (sub_1E5A2C114() & 1) != 0)
              {
                goto LABEL_7;
              }

              v24 = (v24 + 1) & v6;
            }

            while (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
          }

LABEL_57:
          sub_1E58BAAC0(v18, v19, v56);
          v3 = v53;
          v2 = v54;
          v12 = v57;
          v16 = v55;
        }

LABEL_58:
        *&v51[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v52++, 1))
        {
          __break(1u);
LABEL_61:
          v46 = sub_1E59E07C0(v51, v50[1], v52, v3);
          goto LABEL_62;
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v5)
      {
        goto LABEL_61;
      }

      v15 = *(v9 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v12 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_64:
    sub_1E58BD154(v2, v58);

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v48 = v3;
  v49 = swift_slowAlloc();
  sub_1E58BD154(v2, v58);
  v46 = sub_1E592C580(v49, v5, v48, v2);

  MEMORY[0x1E6933430](v49, -1, -1);
LABEL_62:
  sub_1E58BD18C(v2);
  return v46;
}

uint64_t sub_1E5931D18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58CECB4;

  return sub_1E592873C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E5931F40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_18FitnessWorkoutPlan0bC15CreationFeatureV14TaskIdentifierO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E5931FB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E593200C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 6;
    }
  }

  return result;
}

void *sub_1E593205C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1E5932090()
{
  result = qword_1ECFFD8D0;
  if (!qword_1ECFFD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD8D0);
  }

  return result;
}

uint64_t sub_1E59320E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5932154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanScheduledItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_2(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_1E5932244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E58CECB4;

  return sub_1E5926004(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1E5932354(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = v3[1];
      v9 = *v3;
      v10[0] = v4;
      *(v10 + 9) = *(v3 + 25);
      sub_1E59323E4(&v9, v6);
      sub_1E592CED0(v6, &v9);
      sub_1E58BACAC(v6[0], v6[1], v6[2], v6[3], v6[4], v7);
      v3 += 3;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_1E5932440(uint64_t a1)
{
  v2 = *(sub_1E5A29EB4() - 8);
  v16 = (*(v2 + 80) + 144) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1E5A29E74() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + v3);
  v10 = *(v1 + v9);
  v11 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v15 + 16) = v12;
  *v12 = v15;
  v12[1] = sub_1E58CECB4;

  return sub_1E5926630(a1, v1 + 16, v1 + v16, v14, v1 + v5, v1 + v8, v10, v11);
}

uint64_t sub_1E59326EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5932754(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutPlanCreationScheduleRequest(0) - 8);
  v5 = (*(v4 + 80) + 144) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58CD5C8;

  return sub_1E59273D4(a1, v1 + 16, v1 + v5);
}

uint64_t objectdestroy_3Tm(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_1E59328B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 160);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E58CECB4;

  return sub_1E5927E5C(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_1E5932970(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_1E5932988(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1E58BAAC0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1E59329F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CECB4;

  return sub_1E5929800(a1, v1 + 16);
}

uint64_t sub_1E5932A90(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CECB4;

  return sub_1E5929CA8(a1, v1 + 16);
}

uint64_t objectdestroy_54Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1E5932B98(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E58CECB4;

  return sub_1E5929D90(a1, v1 + 16);
}

uint64_t sub_1E5932C30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_27Tm()
{
  v1 = type metadata accessor for WorkoutPlanCreationScheduleRequest(0);
  v2 = (*(*(v1 - 8) + 80) + 144) & ~*(*(v1 - 8) + 80);

  v3 = *(v1 + 20);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v6 = v0 + v2 + *(v1 + 24);
  v7 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v5(v6 + *(v7 + 20), v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5932E64(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutPlanCreationScheduleRequest(0) - 8);
  v5 = (*(v4 + 80) + 144) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E58CECB4;

  return sub_1E592A9EC(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1E5932F40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ActiveWorkoutPlanArtwork.init(backgroundColor:templateURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E58F0054(a1, a3, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  active = type metadata accessor for ActiveWorkoutPlanArtwork(0);
  return sub_1E58F0054(a2, a3 + *(active + 20), &qword_1ECFFB5E0, &qword_1E5A3AC70);
}

uint64_t type metadata accessor for ActiveWorkoutPlanArtwork(uint64_t a1)
{
  result = qword_1ECFFD968;
  if (!qword_1ECFFD968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E59330C8()
{
  if (*v0)
  {
    return 0x6574616C706D6574;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

uint64_t sub_1E5933118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v6 || (sub_1E5A2C114() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5A2C114();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E5933200(uint64_t a1)
{
  v2 = sub_1E5933478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E593323C(uint64_t a1)
{
  v2 = sub_1E5933478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActiveWorkoutPlanArtwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD928, &qword_1E5A36540);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5933478();
  sub_1E5A2C224();
  v8[15] = 0;
  sub_1E5A2A064();
  sub_1E59346A4(&qword_1ECFFD938, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA0]);
  sub_1E5A2C054();
  if (!v1)
  {
    type metadata accessor for ActiveWorkoutPlanArtwork(0);
    v8[14] = 1;
    sub_1E5A29D44();
    sub_1E59346A4(&qword_1ECFFD940, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1E5A2C054();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E5933478()
{
  result = qword_1ECFFD930;
  if (!qword_1ECFFD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD930);
  }

  return result;
}

uint64_t ActiveWorkoutPlanArtwork.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v23 = &v19 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD948, &qword_1E5A36548);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v10 = &v19 - v9;
  active = type metadata accessor for ActiveWorkoutPlanArtwork(0);
  MEMORY[0x1EEE9AC00](active);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5933478();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = active;
  v14 = v13;
  v15 = v22;
  sub_1E5A2A064();
  v26 = 0;
  sub_1E59346A4(&qword_1ECFFD950, MEMORY[0x1E699DB98], MEMORY[0x1E699DBB8]);
  v16 = v23;
  v17 = v24;
  sub_1E5A2BF84();
  sub_1E58F0054(v16, v14, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  sub_1E5A29D44();
  v25 = 1;
  sub_1E59346A4(&qword_1ECFFD958, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1E5A2BF84();
  (*(v15 + 8))(v10, v17);
  sub_1E58F0054(v6, v14 + *(v20 + 20), &qword_1ECFFB5E0, &qword_1E5A3AC70);
  sub_1E593387C(v14, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E59338E0(v14);
}

uint64_t sub_1E593387C(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveWorkoutPlanArtwork(0);
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_1E59338E0(uint64_t a1)
{
  active = type metadata accessor for ActiveWorkoutPlanArtwork(0);
  (*(*(active - 8) + 8))(a1, active);
  return a1;
}

uint64_t ActiveWorkoutPlanArtwork.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E5A29D44();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_1E5A2A064();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  sub_1E58BABA0(v2, &v20 - v13, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_1E5A2C1D4();
    sub_1E59346A4(&qword_1ECFFB5F0, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA8]);
    sub_1E5A2BA44();
    (*(v9 + 8))(v11, v8);
  }

  active = type metadata accessor for ActiveWorkoutPlanArtwork(0);
  sub_1E58BABA0(v2 + *(active + 20), v7, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  v17 = v22;
  v16 = v23;
  if ((*(v22 + 48))(v7, 1, v23) == 1)
  {
    return sub_1E5A2C1D4();
  }

  v19 = v21;
  (*(v17 + 32))(v21, v7, v16);
  sub_1E5A2C1D4();
  sub_1E59346A4(&qword_1ECFFB5F8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1E5A2BA44();
  return (*(v17 + 8))(v19, v16);
}

uint64_t ActiveWorkoutPlanArtwork.hashValue.getter()
{
  sub_1E5A2C1B4();
  ActiveWorkoutPlanArtwork.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E5933D58()
{
  sub_1E5A2C1B4();
  ActiveWorkoutPlanArtwork.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E5933D9C(uint64_t a1)
{
  sub_1E5A2C1B4();
  ActiveWorkoutPlanArtwork.hash(into:)(v2);
  return sub_1E5A2C204();
}

BOOL _s18FitnessWorkoutPlan06ActivebC7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5A29D44();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v39 = &v38 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB600, &unk_1E5A36750);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v38 - v8;
  v9 = sub_1E5A2A064();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB608, &qword_1E5A2CDC0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v38 - v17;
  v20 = *(v19 + 56);
  v42 = a1;
  sub_1E58BABA0(a1, &v38 - v17, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v43 = a2;
  sub_1E58BABA0(a2, &v18[v20], &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) != 1)
  {
    sub_1E58BABA0(v18, v15, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
    if (v21(&v18[v20], 1, v9) != 1)
    {
      (*(v10 + 32))(v12, &v18[v20], v9);
      sub_1E59346A4(&qword_1ECFFB618, MEMORY[0x1E699DB98], MEMORY[0x1E699DBB0]);
      v25 = sub_1E5A2BA74();
      v26 = *(v10 + 8);
      v26(v12, v9);
      v26(v15, v9);
      sub_1E58BAD14(v18, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v10 + 8))(v15, v9);
LABEL_6:
    v22 = &qword_1ECFFB608;
    v23 = &qword_1E5A2CDC0;
    v24 = v18;
LABEL_14:
    sub_1E58BAD14(v24, v22, v23);
    return 0;
  }

  if (v21(&v18[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_1E58BAD14(v18, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
LABEL_8:
  v27 = *(type metadata accessor for ActiveWorkoutPlanArtwork(0) + 20);
  v28 = v41;
  v29 = *(v40 + 48);
  sub_1E58BABA0(v42 + v27, v41, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  sub_1E58BABA0(v43 + v27, v28 + v29, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  v31 = v44;
  v30 = v45;
  v32 = *(v44 + 48);
  if (v32(v28, 1, v45) == 1)
  {
    if (v32(v28 + v29, 1, v30) == 1)
    {
      sub_1E58BAD14(v28, &qword_1ECFFB5E0, &qword_1E5A3AC70);
      return 1;
    }

    goto LABEL_13;
  }

  v33 = v39;
  sub_1E58BABA0(v28, v39, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  if (v32(v28 + v29, 1, v30) == 1)
  {
    (*(v31 + 8))(v33, v30);
LABEL_13:
    v22 = &qword_1ECFFB600;
    v23 = &unk_1E5A36750;
    v24 = v28;
    goto LABEL_14;
  }

  v35 = v38;
  (*(v31 + 32))(v38, v28 + v29, v30);
  sub_1E59346A4(&qword_1ECFFB610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v36 = sub_1E5A2BA74();
  v37 = *(v31 + 8);
  v37(v35, v30);
  v37(v33, v30);
  sub_1E58BAD14(v28, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  return (v36 & 1) != 0;
}

void sub_1E593447C(uint64_t a1)
{
  sub_1E5934538(319, &qword_1ECFFD978, MEMORY[0x1E699DB98]);
  if (v1 <= 0x3F)
  {
    sub_1E5934538(319, &qword_1ECFFD980, MEMORY[0x1E6968FB0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5934538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E5A2BD84();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E59345A0()
{
  result = qword_1ECFFD988;
  if (!qword_1ECFFD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD988);
  }

  return result;
}

unint64_t sub_1E59345F8()
{
  result = qword_1ECFFD990;
  if (!qword_1ECFFD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD990);
  }

  return result;
}

unint64_t sub_1E5934650()
{
  result = qword_1ECFFD998;
  if (!qword_1ECFFD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD998);
  }

  return result;
}

uint64_t sub_1E59346A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t WorkoutPlanFilterOptions.init(bodyFocuses:durations:equipment:filterConfigurations:musicGenres:skillLevels:themes:trainers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
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

uint64_t sub_1E5934740()
{
  v1 = *v0;
  v2 = 0x75636F4679646F62;
  v3 = 0x73656D656874;
  if (v1 != 6)
  {
    v3 = 0x7372656E69617274;
  }

  v4 = 0x6E6547636973756DLL;
  if (v1 != 4)
  {
    v4 = 0x76654C6C6C696B73;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E656D7069757165;
  if (v1 != 2)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E593484C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E59361F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5934874(uint64_t a1)
{
  v2 = sub_1E5934CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59348B0(uint64_t a1)
{
  v2 = sub_1E5934CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanFilterOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9A0, &qword_1E5A36760);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v26 = v1[2];
  v27 = v8;
  v11 = v1[5];
  v24 = v1[4];
  v25 = v10;
  v12 = v1[7];
  v22 = v1[6];
  v23 = v11;
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1E5934CEC();

  sub_1E5A2C224();
  v29 = v9;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9B0, &qword_1E5A36768);
  sub_1E5934D40();
  v17 = v7;
  sub_1E5A2C0B4();
  if (v2)
  {

    return (*(v5 + 8))(v7, v16);
  }

  else
  {
    v20 = v25;
    v19 = v26;

    v29 = v27;
    v28 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9C0, &qword_1E5A36770);
    sub_1E5934DC4();
    sub_1E5A2C0B4();
    v29 = v19;
    v28 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9D0, &qword_1E5A36778);
    sub_1E5934E48();
    sub_1E5A2C0B4();
    v29 = v20;
    v28 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9E0, &qword_1E5A36780);
    sub_1E5934ECC();
    sub_1E5A2C0B4();
    v29 = v24;
    v28 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9F8, &qword_1E5A36788);
    sub_1E5934FA4();
    sub_1E5A2C0B4();
    v29 = v23;
    v28 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDA08, &qword_1E5A36790);
    sub_1E5935028();
    sub_1E5A2C0B4();
    v29 = v22;
    v28 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDA18, &qword_1E5A36798);
    sub_1E59350AC();
    sub_1E5A2C0B4();
    v29 = v12;
    v28 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDA28, &qword_1E5A367A0);
    sub_1E5935130();
    sub_1E5A2C0B4();
    return (*(v5 + 8))(v17, v16);
  }
}

unint64_t sub_1E5934CEC()
{
  result = qword_1ECFFD9A8;
  if (!qword_1ECFFD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD9A8);
  }

  return result;
}

unint64_t sub_1E5934D40()
{
  result = qword_1ECFFD9B8;
  if (!qword_1ECFFD9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9B0, &qword_1E5A36768);
    sub_1E58C2E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD9B8);
  }

  return result;
}

unint64_t sub_1E5934DC4()
{
  result = qword_1ECFFD9C8;
  if (!qword_1ECFFD9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9C0, &qword_1E5A36770);
    sub_1E58F4700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD9C8);
  }

  return result;
}

unint64_t sub_1E5934E48()
{
  result = qword_1ECFFD9D8;
  if (!qword_1ECFFD9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9D0, &qword_1E5A36778);
    sub_1E58C2E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD9D8);
  }

  return result;
}

unint64_t sub_1E5934ECC()
{
  result = qword_1ECFFD9E8;
  if (!qword_1ECFFD9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9E0, &qword_1E5A36780);
    sub_1E5934F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD9E8);
  }

  return result;
}

unint64_t sub_1E5934F50()
{
  result = qword_1ECFFD9F0;
  if (!qword_1ECFFD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFD9F0);
  }

  return result;
}

unint64_t sub_1E5934FA4()
{
  result = qword_1ECFFDA00;
  if (!qword_1ECFFDA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9F8, &qword_1E5A36788);
    sub_1E58C3680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA00);
  }

  return result;
}

unint64_t sub_1E5935028()
{
  result = qword_1ECFFDA10;
  if (!qword_1ECFFDA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDA08, &qword_1E5A36790);
    sub_1E58C2EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA10);
  }

  return result;
}

unint64_t sub_1E59350AC()
{
  result = qword_1ECFFDA20;
  if (!qword_1ECFFDA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDA18, &qword_1E5A36798);
    sub_1E58C2F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA20);
  }

  return result;
}

unint64_t sub_1E5935130()
{
  result = qword_1ECFFDA30;
  if (!qword_1ECFFDA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDA28, &qword_1E5A367A0);
    sub_1E58C3110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA30);
  }

  return result;
}

uint64_t WorkoutPlanFilterOptions.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDA38, &qword_1E5A367A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5934CEC();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9B0, &qword_1E5A36768);
  LOBYTE(v25) = 0;
  sub_1E59357D4();
  sub_1E5A2BFE4();
  v9 = a2;
  v10 = v29[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9C0, &qword_1E5A36770);
  LOBYTE(v25) = 1;
  sub_1E5935858();
  sub_1E5A2BFE4();
  v24 = v29[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9D0, &qword_1E5A36778);
  LOBYTE(v25) = 2;
  sub_1E59358DC();
  sub_1E5A2BFE4();
  v23 = v29[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9E0, &qword_1E5A36780);
  LOBYTE(v25) = 3;
  sub_1E5935960();
  sub_1E5A2BFE4();
  v11 = v29[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD9F8, &qword_1E5A36788);
  LOBYTE(v25) = 4;
  sub_1E5935A38();
  sub_1E5A2BFE4();
  v22 = v29[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDA08, &qword_1E5A36790);
  LOBYTE(v25) = 5;
  sub_1E5935ABC();
  v21 = 0;
  sub_1E5A2BFE4();
  v19 = v29[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDA18, &qword_1E5A36798);
  LOBYTE(v25) = 6;
  sub_1E5935B40();
  sub_1E5A2BFE4();
  v20 = v29[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDA28, &qword_1E5A367A0);
  v30[0] = 7;
  sub_1E5935BC4();
  sub_1E5A2BFE4();
  (*(v6 + 8))(v8, v5);
  v21 = v31;
  v13 = v23;
  v12 = v24;
  *&v25 = v10;
  *(&v25 + 1) = v24;
  *&v26 = v23;
  *(&v26 + 1) = v11;
  v14 = v22;
  v15 = v19;
  *&v27 = v22;
  *(&v27 + 1) = v19;
  *&v28 = v20;
  *(&v28 + 1) = v31;
  v16 = v26;
  *v9 = v25;
  v9[1] = v16;
  v17 = v28;
  v9[2] = v27;
  v9[3] = v17;
  sub_1E5931DC4(&v25, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29[0] = v10;
  v29[1] = v12;
  v29[2] = v13;
  v29[3] = v11;
  v29[4] = v14;
  v29[5] = v15;
  v29[6] = v20;
  v29[7] = v21;
  return sub_1E58F011C(v29);
}

unint64_t sub_1E59357D4()
{
  result = qword_1ECFFDA40;
  if (!qword_1ECFFDA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9B0, &qword_1E5A36768);
    sub_1E58C771C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA40);
  }

  return result;
}

unint64_t sub_1E5935858()
{
  result = qword_1ECFFDA48;
  if (!qword_1ECFFDA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9C0, &qword_1E5A36770);
    sub_1E58F56BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA48);
  }

  return result;
}

unint64_t sub_1E59358DC()
{
  result = qword_1ECFFDA50;
  if (!qword_1ECFFDA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9D0, &qword_1E5A36778);
    sub_1E58C7770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA50);
  }

  return result;
}

unint64_t sub_1E5935960()
{
  result = qword_1ECFFDA58;
  if (!qword_1ECFFDA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9E0, &qword_1E5A36780);
    sub_1E59359E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA58);
  }

  return result;
}

unint64_t sub_1E59359E4()
{
  result = qword_1ECFFDA60;
  if (!qword_1ECFFDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA60);
  }

  return result;
}

unint64_t sub_1E5935A38()
{
  result = qword_1ECFFDA68;
  if (!qword_1ECFFDA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFD9F8, &qword_1E5A36788);
    sub_1E58C7A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA68);
  }

  return result;
}

unint64_t sub_1E5935ABC()
{
  result = qword_1ECFFDA70;
  if (!qword_1ECFFDA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDA08, &qword_1E5A36790);
    sub_1E58C77C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA70);
  }

  return result;
}

unint64_t sub_1E5935B40()
{
  result = qword_1ECFFDA78;
  if (!qword_1ECFFDA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDA18, &qword_1E5A36798);
    sub_1E58C7818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA78);
  }

  return result;
}

unint64_t sub_1E5935BC4()
{
  result = qword_1ECFFDA80;
  if (!qword_1ECFFDA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDA28, &qword_1E5A367A0);
    sub_1E58C78C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA80);
  }

  return result;
}

uint64_t WorkoutPlanFilterOptions.hash(into:)(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[3];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  sub_1E58BAD80();
  sub_1E58BA66C(a1, v3);
  sub_1E58BAD80();
  sub_1E58BA2C4(a1, v4);
  sub_1E58BAD80();
  sub_1E58BA100(a1, v5);
  sub_1E58B9F70(a1, v7);

  return sub_1E58B9D88(a1, v6);
}

uint64_t WorkoutPlanFilterOptions.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  sub_1E5A2C1B4();
  sub_1E58BAD80();
  sub_1E58BA66C(v7, v1);
  sub_1E58BAD80();
  sub_1E58BA2C4(v7, v2);
  sub_1E58BAD80();
  sub_1E58BA100(v7, v3);
  sub_1E58B9F70(v7, v5);
  sub_1E58B9D88(v7, v4);
  return sub_1E5A2C204();
}

uint64_t sub_1E5935DEC(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[3];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  sub_1E58BAD80();
  sub_1E58BA66C(a1, v3);
  sub_1E58BAD80();
  sub_1E58BA2C4(a1, v4);
  sub_1E58BAD80();
  sub_1E58BA100(a1, v5);
  sub_1E58B9F70(a1, v7);

  return sub_1E58B9D88(a1, v6);
}

uint64_t sub_1E5935E98(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[3];
  v4 = v1[5];
  v6 = v1[6];
  v5 = v1[7];
  sub_1E5A2C1B4();
  sub_1E58BAD80();
  sub_1E58BA66C(v8, v2);
  sub_1E58BAD80();
  sub_1E58BA2C4(v8, v3);
  sub_1E58BAD80();
  sub_1E58BA100(v8, v4);
  sub_1E58B9F70(v8, v6);
  sub_1E58B9D88(v8, v5);
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan0bC13FilterOptionsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v4 = a1[5];
  v12 = a1[6];
  v5 = a2[1];
  v6 = a2[3];
  v7 = a2[5];
  v10 = a1[7];
  v11 = a2[6];
  v9 = a2[7];
  if ((sub_1E58BAD78() & 1) == 0 || (sub_1E58B7160(v2, v5) & 1) == 0 || (sub_1E58BAD78() & 1) == 0 || (sub_1E58B7378(v3, v6) & 1) == 0 || (sub_1E58BAD78() & 1) == 0 || (sub_1E58B7BF8(v4, v7) & 1) == 0 || (sub_1E58B7EE0(v12, v11) & 1) == 0)
  {
    return 0;
  }

  return sub_1E58B8154(v10, v9);
}

unint64_t sub_1E5936074()
{
  result = qword_1ECFFDA88;
  if (!qword_1ECFFDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA88);
  }

  return result;
}

unint64_t sub_1E59360EC()
{
  result = qword_1ECFFDA90;
  if (!qword_1ECFFDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA90);
  }

  return result;
}

unint64_t sub_1E5936144()
{
  result = qword_1ECFFDA98;
  if (!qword_1ECFFDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDA98);
  }

  return result;
}

unint64_t sub_1E593619C()
{
  result = qword_1ECFFDAA0;
  if (!qword_1ECFFDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFDAA0);
  }

  return result;
}

uint64_t sub_1E59361F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x75636F4679646F62 && a2 == 0xEB00000000736573 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE900000000000073 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D7069757165 && a2 == 0xE900000000000074 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5A46710 == a2 || (sub_1E5A2C114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6547636973756DLL && a2 == 0xEB00000000736572 || (sub_1E5A2C114() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x76654C6C6C696B73 && a2 == 0xEB00000000736C65 || (sub_1E5A2C114() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73656D656874 && a2 == 0xE600000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7372656E69617274 && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v5 = sub_1E5A2C114();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t EquipmentSelectionView.init(store:)@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0, MEMORY[0x1E6999B78]);
  result = sub_1E5A2A654();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E593652C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for EditItem(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = *a1;
  v13 = a1[1];
  swift_getKeyPath();

  sub_1E5A2B934();

  v14 = *&v11[*(v6 + 40)];

  sub_1E58F00BC(v11, type metadata accessor for EditItem);
  if (v14)
  {
    if (*(v14 + 16))
    {
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](1);
      sub_1E5A2BB74();
      v15 = sub_1E5A2C204();
      v16 = -1 << *(v14 + 32);
      v17 = v15 & ~v16;
      if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        v19 = *(v14 + 48);
        while (1)
        {
          v20 = v19 + 24 * v17;
          if (*(v20 + 16) == 1)
          {
            v21 = *v20 == v12 && *(v20 + 8) == v13;
            if (v21 || (sub_1E5A2C114() & 1) != 0)
            {
              break;
            }
          }

          v17 = (v17 + 1) & v18;
          if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

LABEL_25:

        return 1;
      }
    }

LABEL_26:

    return 0;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  sub_1E58EFFE4(v8, v4);
  sub_1E58F00BC(v8, type metadata accessor for EditItem);
  v22 = type metadata accessor for WorkoutPlanScheduledItem(0);
  if ((*(*(v22 - 8) + 48))(v4, 1, v22) != 1)
  {
    v23 = *(v4 + 1);

    sub_1E58F00BC(v4, type metadata accessor for WorkoutPlanScheduledItem);
    if (*(v23 + 16))
    {
      sub_1E5A2C1B4();
      MEMORY[0x1E6932DE0](1);
      sub_1E5A2BB74();
      v24 = sub_1E5A2C204();
      v25 = -1 << *(v23 + 32);
      v26 = v24 & ~v25;
      if ((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
      {
        v27 = ~v25;
        v28 = *(v23 + 48);
        while (1)
        {
          v29 = v28 + 24 * v26;
          if (*(v29 + 16) == 1)
          {
            v30 = *v29 == v12 && *(v29 + 8) == v13;
            if (v30 || (sub_1E5A2C114() & 1) != 0)
            {
              goto LABEL_25;
            }
          }

          v26 = (v26 + 1) & v27;
          if (((*(v23 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_26;
          }
        }
      }
    }

    goto LABEL_26;
  }

  sub_1E58BAD14(v4, &qword_1ECFFB790, &qword_1E5A2D620);
  return 0;
}

uint64_t sub_1E5936908(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB790, &qword_1E5A2D620);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v43 - v3;
  v4 = type metadata accessor for EditItem(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = *a1;
  v14 = a1[1];
  swift_getKeyPath();

  sub_1E5A2B934();

  v15 = &v12[*(v4 + 36)];
  v17 = *v15;
  v16 = v15[1];

  sub_1E58F00BC(v12, type metadata accessor for EditItem);
  if (!v16)
  {
LABEL_8:
    swift_getKeyPath();

    sub_1E5A2B934();

    v25 = *&v9[*(v4 + 32)];

    result = sub_1E58F00BC(v9, type metadata accessor for EditItem);
    if (!v25)
    {
      swift_getKeyPath();

      sub_1E5A2B934();

      v27 = v43;
      sub_1E58EFFE4(v6, v43);
      sub_1E58F00BC(v6, type metadata accessor for EditItem);
      v28 = type metadata accessor for WorkoutPlanScheduledItem(0);
      if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
      {
        sub_1E58BAD14(v27, &qword_1ECFFB790, &qword_1E5A2D620);
        return 0;
      }

      v25 = *(v27 + 8);

      result = sub_1E58F00BC(v27, type metadata accessor for WorkoutPlanScheduledItem);
    }

    v29 = 0;
    v30 = v25 + 56;
    v31 = 1 << *(v25 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v25 + 56);
    do
    {
      if (!v33)
      {
        while (1)
        {
          v34 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            __break(1u);
            return result;
          }

          if (v34 >= ((v31 + 63) >> 6))
          {
            break;
          }

          v33 = *(v30 + 8 * v34);
          ++v29;
          if (v33)
          {
            v29 = v34;
            goto LABEL_21;
          }
        }

        v24 = 0;
        if (!*(v25 + 16))
        {
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      v34 = v29;
LABEL_21:
      v35 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
    }

    while (*(*(v25 + 48) + 24 * (v35 | (v34 << 6)) + 16) != 1);
    v24 = 1;
    if (!*(v25 + 16))
    {
      goto LABEL_36;
    }

LABEL_25:
    sub_1E5A2C1B4();
    MEMORY[0x1E6932DE0](1);
    sub_1E5A2BB74();
    v36 = sub_1E5A2C204();
    v37 = -1 << *(v25 + 32);
    v38 = v36 & ~v37;
    if (((*(v30 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
    {
LABEL_36:

      return v24;
    }

    v39 = ~v37;
    v40 = *(v25 + 48);
    while (1)
    {
      v41 = v40 + 24 * v38;
      if (*(v41 + 16) == 1)
      {
        v42 = *v41 == v13 && *(v41 + 8) == v14;
        if (v42 || (sub_1E5A2C114() & 1) != 0)
        {
          break;
        }
      }

      v38 = (v38 + 1) & v39;
      if (((*(v30 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    return 0;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  v18 = v44;
  if (!*(v44 + 16))
  {

    goto LABEL_7;
  }

  v19 = sub_1E58EF508(v17, v16);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v22 = *(*(v18 + 56) + (v19 << 6) + 16);

  v23 = sub_1E59E8F3C(v13, v14, v22);

  if (v23)
  {
    goto LABEL_8;
  }

  return 1;
}

uint64_t sub_1E5936E28(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();

  sub_1E5A2B934();

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v11;

  sub_1E58F011C(v12);

  v3 = sub_1E5939448(v9, a1);

  v4 = v3[2];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_1E5A206E4(v3[2], 0);
  v6 = sub_1E5A234FC();

  sub_1E58D26C0(v8);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x1E69E7CC0];
  }

  *&v8 = v5;
  sub_1E5939010(&v8);

  return v8;
}

void sub_1E5936F90(uint64_t a1)
{
  v2 = sub_1E5A2B764();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1E5A2B774();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = ceil(*(a1 + 16) * 0.5);
  if (v9 == INFINITY)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < 9.22337204e18)
  {
    v10 = v9;
    *v5 = xmmword_1E5A317E0;
    (*(v3 + 104))(v5, *MEMORY[0x1E697D748], v2);
    sub_1E5A2B784();
    sub_1E59E9100(v8, v10);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1E5937138@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *v2;
  v9 = v2[1];
  v17 = *v2;
  v18 = v9;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  if (sub_1E5936908(&v13))
  {
    result = sub_1E5A2ABA4();
    v11 = MEMORY[0x1E697FE70];
    *(a2 + 24) = MEMORY[0x1E697FE80];
    *(a2 + 32) = v11;
    *a2 = result;
  }

  else
  {
    v17 = v8;
    v18 = v9;
    v13 = v4;
    v14 = v5;
    v15 = v6;
    v16 = v7;
    if (sub_1E593652C(&v13))
    {
      result = sub_1E5A2B404();
    }

    else
    {
      result = sub_1E5A2B424();
    }

    v12 = MEMORY[0x1E6981568];
    *(a2 + 24) = MEMORY[0x1E69815C0];
    *(a2 + 32) = v12;
    *a2 = result;
  }

  return result;
}

uint64_t EquipmentSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  MEMORY[0x1EEE9AC00](v38);
  v42 = v36 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDAA8, &qword_1E5A36A20);
  v39 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v36 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDAB0, &qword_1E5A36A28);
  MEMORY[0x1EEE9AC00](v40);
  v41 = v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDAB8, &qword_1E5A36A30);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v36 - v9;
  v10 = type metadata accessor for EditItem(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v14 = v1[1];
  swift_getKeyPath();

  sub_1E5A2B934();

  v16 = &v13[*(v11 + 44)];
  v18 = *v16;
  v17 = v16[1];

  sub_1E58F00BC(v13, type metadata accessor for EditItem);
  if (!v17)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();

  sub_1E5A2B934();

  v19 = v46[0];
  if (!*(v46[0] + 16))
  {

    goto LABEL_7;
  }

  v20 = sub_1E58EF508(v18, v17);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_7:

LABEL_8:
    v35 = 1;
    v34 = v43;
    return (*(v8 + 56))(v34, v35, 1, v7);
  }

  v23 = *(*(v19 + 56) + (v20 << 6) + 16);

  v36[3] = v36;
  MEMORY[0x1EEE9AC00](v24);
  v36[2] = &v36[-6];
  v36[-4] = v15;
  v36[-3] = v14;
  v36[-2] = v23;
  sub_1E59388B8(v46);
  v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC670, &unk_1E5A37DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDAC0, &unk_1E5A36A80);
  sub_1E58EF58C();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFDAC8, &unk_1E5A36A90);
  v26 = sub_1E58CD164(&qword_1ECFFDAD0, &qword_1ECFFDAC8, &unk_1E5A36A90, MEMORY[0x1E697BE60]);
  v44 = v25;
  v45 = v26;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B714();

  sub_1E5A2ADF4();
  sub_1E5938AEC();
  v27 = v41;
  sub_1E5A2B134();
  (*(v39 + 8))(v5, v3);
  v46[0] = sub_1E5A2B414();
  *(v27 + *(v40 + 36)) = sub_1E5A2B634();
  v28 = *MEMORY[0x1E697E728];
  v29 = sub_1E5A2A684();
  v30 = v42;
  (*(*(v29 - 8) + 104))(v42, v28, v29);
  sub_1E5904640(&qword_1ECFFBF40, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E5A2BA74();
  if (result)
  {
    sub_1E5938BFC();
    sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0, MEMORY[0x1E69E6ED8]);
    v32 = v37;
    sub_1E5A2B164();
    sub_1E58BAD14(v30, &qword_1ECFFCE80, &qword_1E5A35BC0);
    sub_1E58BAD14(v27, &qword_1ECFFDAB0, &qword_1E5A36A28);
    v33 = v43;
    (*(v8 + 32))(v43, v32, v7);
    v34 = v33;
    v35 = 0;
    return (*(v8 + 56))(v34, v35, 1, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E59378D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = sub_1E5A2AAC4();
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDAC8, &unk_1E5A36A90);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  sub_1E5A2AD64();
  v16 = a1;
  v17 = a2;
  v18 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFDAF8, &qword_1E5A36B60);
  sub_1E58CD164(&qword_1ECFFDB00, &qword_1ECFFDAF8, &qword_1E5A36B60, MEMORY[0x1E697D7A0]);
  sub_1E5A2A4C4();
  sub_1E5A2AAB4();
  LOBYTE(a2) = sub_1E5A2AD64();
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != a2)
  {
    sub_1E5A2AD74();
  }

  sub_1E58CD164(&qword_1ECFFDAD0, &qword_1ECFFDAC8, &unk_1E5A36A90, MEMORY[0x1E697BE60]);
  sub_1E5A2B234();
  (*(v6 + 8))(v8, v15);
  return (*(v10 + 8))(v12, v9);
}