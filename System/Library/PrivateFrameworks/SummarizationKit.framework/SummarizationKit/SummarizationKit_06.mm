uint64_t sub_22805CBAC()
{
  v1 = v0[95];
  v2 = v0[89];
  v3 = v0[86];
  v4 = v0[84];
  v5 = v0[83];

  sub_22805D8E4((v0 + 2));
  (*(v4 + 8))(v3, v5);
  sub_22805DC6C(v2, type metadata accessor for SummarizationResult);
  sub_22805DC6C(v1, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);

  v6 = v0[1];

  return v6();
}

_OWORD *sub_22805CD30(char a1, uint64_t a2, char a3, uint64_t *a4)
{
  v7 = MEMORY[0x277D839B0];
  v26 = MEMORY[0x277D839B0];
  LOBYTE(v25) = a1;
  v8 = *a4;
  v10 = sub_227FEB408();
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *a4;
    if (v14)
    {
LABEL_8:
      v17 = (v16[7] + 32 * v10);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v17);
      return sub_227FE5EAC(&v25, v17);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_22801D03C();
    goto LABEL_7;
  }

  sub_2280196BC(v13, a3 & 1);
  v19 = sub_227FEB408();
  if ((v14 & 1) != (v20 & 1))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v10 = v19;
  v16 = *a4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  v21 = __swift_mutable_project_boxed_opaque_existential_0(&v25, v7);
  MEMORY[0x28223BE20](v21);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23);
  sub_22805CF0C(v10, a2, *v23, v16);

  return __swift_destroy_boxed_opaque_existential_1Tm_6(&v25);
}

_OWORD *sub_22805CF0C(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  v10 = MEMORY[0x277D839B0];
  LOBYTE(v9) = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_227FE5EAC(&v9, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_22805CF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizationResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22805CFF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBF8, &qword_22813DD20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22805D060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a3;
  v96 = a2;
  v4 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig(0);
  v92 = *(v4 - 8);
  v93 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v84 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v88 = &v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v85 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v90 = &v80 - v12;
  MEMORY[0x28223BE20](v11);
  v91 = &v80 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v87 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v80 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v80 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v80 - v23;
  v25 = type metadata accessor for SummarizationResult(0);
  v82 = v25[6];
  v26 = a1;
  sub_22805DC04(a1 + v82, v24, &qword_27D81E598, &qword_22813B300);
  v27 = sub_2281386FC();
  v28 = *(*(v27 - 8) + 48);
  v29 = v28(v24, 1, v27);
  sub_227FCB6F8(v24, &qword_27D81E598, &qword_22813B300);
  v94 = v25;
  if (v29 == 1 && (sub_22805DC04(v26 + v25[7], v22, &qword_27D81E598, &qword_22813B300), v30 = v28(v22, 1, v27), sub_227FCB6F8(v22, &qword_27D81E598, &qword_22813B300), v30 == 1))
  {
    v95 = *(v26 + v25[11]) ^ 1;
  }

  else
  {
    v95 = 0;
  }

  v31 = v26;
  v32 = v94;
  v81 = v94[8];
  sub_22805DC04(v31 + v81, v19, &qword_27D81E598, &qword_22813B300);
  v33 = v28(v19, 1, v27);
  sub_227FCB6F8(v19, &qword_27D81E598, &qword_22813B300);
  v89 = v31;
  if (v33 == 1 && (v34 = v87, sub_22805DC04(v31 + v32[9], v87, &qword_27D81E598, &qword_22813B300), v35 = v28(v34, 1, v27), sub_227FCB6F8(v34, &qword_27D81E598, &qword_22813B300), v35 == 1))
  {
    v36 = 2;
    if ((v95 & 1) == 0)
    {
      v36 = 0;
    }

    v83 = v36;
    v87 = 1;
    v37 = 1;
    v38 = v96;
    v39 = v92;
  }

  else
  {
    v38 = v96;
    v39 = v92;
    v87 = 0;
    if (v95)
    {
      v37 = 0;
      v83 = 2;
    }

    else
    {
      v83 = 0;
      v37 = 0;
    }
  }

  v40 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 24);
  v41 = v91;
  sub_22805DC04(v38 + v40, v91, &qword_27D81E8C8, &qword_22813C4D8);
  v44 = *(v39 + 48);
  v43 = v39 + 48;
  v42 = v44;
  v45 = v93;
  v46 = v44(v41, 1, v93);
  sub_227FCB6F8(v41, &qword_27D81E8C8, &qword_22813C4D8);
  v47 = v46 == 1;
  Kind_high = v96;
  if (!v47)
  {
    v49 = v90;
    sub_22805DC04(v96 + v40, v90, &qword_27D81E8C8, &qword_22813C4D8);
    if (v42(v49, 1, v45) == 1)
    {
      v50 = v88;
      sub_228137D6C();
      v51 = *(v45 + 20);
      if (qword_2813C5440 != -1)
      {
        swift_once();
      }

      *(v50 + v51) = qword_2813C5448;
      v52 = v90;
      v53 = v42(v90, 1, v45);

      if (v53 != 1)
      {
        sub_227FCB6F8(v52, &qword_27D81E8C8, &qword_22813C4D8);
      }
    }

    else
    {
      v54 = v49;
      v50 = v88;
      sub_22805DCCC(v54, v88, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
    }

    v55 = *(v50 + *(v45 + 20));
    v56 = &type metadata for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray;
    v57 = OBJC_IVAR____TtCV16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigP33_0E8DBBF5E77A489AA82974336A322CBD13_StorageClass__finalGmsSafetyMatrix;
    swift_beginAccess();
    v58 = *(v55 + v57);

    sub_22805DC6C(v50, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
    v59 = *(v58 + 16);
    v60 = v93;

    if (v59 >= 4)
    {
      v66 = v83 | v87;
      v67 = v85;
      sub_22805DC04(Kind_high + v40, v85, &qword_27D81E8C8, &qword_22813C4D8);
      if (v42(v67, 1, v60) != 1)
      {
        v68 = v84;
        sub_22805DCCC(v67, v84, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
        v64 = v89;
        v65 = v94;
        goto LABEL_28;
      }

      v92 = v43;
      v68 = v84;
      sub_228137D6C();
      Kind_high = SHIDWORD(v60[1].Kind);
      v64 = v89;
      v56 = v60;
      v65 = v94;
      if (qword_2813C5440 != -1)
      {
        goto LABEL_36;
      }

      while (1)
      {
        *(v68 + Kind_high) = qword_2813C5448;
        v69 = v85;
        v70 = v42(v85, 1, v56);

        Kind_high = v96;
        v60 = v56;
        v56 = &type metadata for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray;
        if (v70 != 1)
        {
          sub_227FCB6F8(v69, &qword_27D81E8C8, &qword_22813C4D8);
        }

LABEL_28:
        v71 = *(v68 + SHIDWORD(v60[1].Kind));
        Kind = v56[69].Kind;
        swift_beginAccess();
        v73 = *(v71 + Kind);

        sub_22805DC6C(v68, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfig);
        if (v66 < *(v73 + 16))
        {
          break;
        }

        __break(1u);
LABEL_36:
        swift_once();
      }

      v74 = *(v73 + 4 * v66 + 32);

      v75 = sub_2280244DC(Kind_high);
      if (v74 != 1)
      {
        v63 = v75;
        goto LABEL_32;
      }

      return 1;
    }
  }

  v61 = v95 & v37;
  v62 = sub_2280244DC(Kind_high);
  if (v61)
  {
    return 1;
  }

  v63 = v62;
  v64 = v89;
  v65 = v94;
LABEL_32:
  v77 = v65[7];
  v78 = v65[9];
  v79 = v86;
  if (sub_228099260(v64 + v77, v64 + v78, v63 & 1, v86))
  {
    sub_228099F40(*(v64 + v65[11]), (v64 + v82), v64 + v77, (v64 + v81), (v64 + v78), v79);
  }

  return 0;
}

_OWORD *sub_22805D944(uint64_t a1, char a2, uint64_t *a3, double a4)
{
  v7 = MEMORY[0x277D839F8];
  v26 = MEMORY[0x277D839F8];
  v25[0] = a4;
  v8 = *a3;
  v10 = sub_227FEB40C();
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a2 & 1) != 0)
  {
LABEL_7:
    v16 = *a3;
    if (v14)
    {
LABEL_8:
      v17 = (v16[7] + 32 * v10);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v17);
      return sub_227FE5EAC(v25, v17);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a2 & 1) == 0)
  {
    sub_22801D03C();
    goto LABEL_7;
  }

  sub_2280196BC(v13, a2 & 1);
  v19 = sub_227FEB40C();
  if ((v14 & 1) != (v20 & 1))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
    result = sub_2281399EC();
    __break(1u);
    return result;
  }

  v10 = v19;
  v16 = *a3;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  v21 = __swift_mutable_project_boxed_opaque_existential_0(v25, v7);
  MEMORY[0x28223BE20](v21);
  v23 = (v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  sub_22805DB84(v10, a1, v16, *v23);
  __swift_destroy_boxed_opaque_existential_1Tm_6(v25);
}

void sub_22805DB1C(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

id sub_22805DB30(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

_OWORD *sub_22805DB84(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  v10 = MEMORY[0x277D839F8];
  v9[0] = a4;
  a3[(a1 >> 6) + 8] |= 1 << a1;
  *(a3[6] + 8 * a1) = a2;
  result = sub_227FE5EAC(v9, (a3[7] + 32 * a1));
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

uint64_t sub_22805DC04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22805DC6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22805DCCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22805DD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v113 = a2;
  v83 = a5;
  v108 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID(0);
  v111 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v103 = (&v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v107 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v97 = &v83 - v13;
  v14 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID(0);
  v110 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v89 = (&v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v92 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v100 = &v83 - v22;
  v99 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig(0);
  v23 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v93 = (&v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC08, &unk_22813DE10);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v84 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v83 - v28;
  v104 = a3;
  v105 = a4;
  v90 = sub_22805FB50(a1, v113, a3, a4);
  v91 = v30;
  v112 = v15;
  v31 = *(v15 + 56);
  v109 = v14;
  v86 = v15 + 56;
  v85 = v31;
  v31(v29, 1, 1, v14);
  v32 = v5 + *(*v5 + 96);
  swift_beginAccess();
  v33 = *(v32 + 8);
  v98 = *(v33 + 16);
  if (v98)
  {
    v87 = v29;
    v96 = v33 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v101 = (v110 + 48);
    v34 = (v111 + 48);

    v36 = 0;
    v29 = v97;
    v37 = v93;
    v95 = v23;
    v94 = v35;
    v88 = v34;
    while (1)
    {
      if (v36 >= *(v35 + 16))
      {
LABEL_41:
        __break(1u);
LABEL_42:
        swift_once();
LABEL_35:
        v69 = sub_22813882C();
        __swift_project_value_buffer(v69, qword_2813C8A20);
        v70 = v91;

        v71 = v105;

        v72 = sub_22813880C();
        v73 = sub_2281396EC();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v114 = v75;
          *v74 = 136446466;
          v76 = v90;
          *(v74 + 4) = sub_227FCC340(v90, v70, &v114);
          *(v74 + 12) = 2082;
          v77 = v104;
          *(v74 + 14) = sub_227FCC340(v104, v71, &v114);
          _os_log_impl(&dword_227FC3000, v72, v73, "Can't find usecase safety config for %{public}s, %{public}s", v74, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAB28A0](v75, -1, -1);
          MEMORY[0x22AAB28A0](v74, -1, -1);
        }

        else
        {

          v77 = v104;
          v76 = v90;
        }

        v79 = swift_allocObject();
        v79[2] = v76;
        v79[3] = v70;
        v79[4] = v77;
        v79[5] = v71;
        v80 = swift_allocObject();
        *(v80 + 16) = 39;
        *(v80 + 24) = sub_228060190;
        *(v80 + 32) = v79;

        v81 = sub_227FF96D4(0, 0xD000000000000078, 0x8000000228146180, 132, sub_22806019C, v80);
        sub_227FDB3CC();
        swift_allocError();
        *v82 = 39;
        *(v82 + 8) = v81;
        swift_willThrow();
        return sub_22806038C(v29, &qword_27D81EC08, &unk_22813DE10);
      }

      v38 = *(v23 + 72);
      v106 = v36;
      sub_2280601A8(v96 + v38 * v36, v37, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
      v39 = v100;
      v40 = *(v99 + 24);
      sub_228060324(v37 + v40, v100, &qword_27D81E4B0, &qword_22813AB20);
      v41 = *v101;
      v42 = (*v101)(v39, 1, v102);
      sub_22806038C(v39, &qword_27D81E4B0, &qword_22813AB20);
      if (v42 != 1)
      {
        v43 = v92;
        sub_228060324(v37 + v40, v92, &qword_27D81E4B0, &qword_22813AB20);
        v44 = v102;
        if (v41(v43, 1, v102) == 1)
        {
          v45 = v89;
          *v89 = 0;
          v45[1] = 0xE000000000000000;
          sub_228137D6C();
          v46 = v45;
          if (v41(v43, 1, v44) != 1)
          {
            sub_22806038C(v92, &qword_27D81E4B0, &qword_22813AB20);
          }
        }

        else
        {
          v46 = v89;
          sub_228060270(v43, v89, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
        }

        v48 = *v46;
        v47 = v46[1];

        sub_228060210(v46, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientID);
        if (v48 == v90 && v47 == v91)
        {

          v37 = v93;
        }

        else
        {
          v49 = sub_2281399BC();

          v37 = v93;
          if ((v49 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v113 = *v37;
        v50 = v88;
        v111 = *(v113 + 16);
        if (v111)
        {
          v51 = 0;
          v110 = v113 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
          while (v51 < *(v113 + 16))
          {
            sub_2280601A8(v110 + *(v112 + 72) * v51, v17, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
            v52 = *(v109 + 20);
            sub_228060324(&v17[v52], v29, &qword_27D81E4A8, &unk_22813DE00);
            v53 = *v50;
            v54 = v108;
            if ((*v50)(v29, 1, v108) == 1)
            {
              sub_228060210(v17, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
              sub_22806038C(v29, &qword_27D81E4A8, &unk_22813DE00);
            }

            else
            {
              sub_22806038C(v29, &qword_27D81E4A8, &unk_22813DE00);
              v55 = &v17[v52];
              v56 = v107;
              sub_228060324(v55, v107, &qword_27D81E4A8, &unk_22813DE00);
              if (v53(v56, 1, v54) == 1)
              {
                v57 = v56;
                v58 = v103;
                *v103 = 0;
                v58[1] = 0xE000000000000000;
                sub_228137D6C();
                v59 = v57;
                v29 = v97;
                if (v53(v59, 1, v54) != 1)
                {
                  sub_22806038C(v107, &qword_27D81E4A8, &unk_22813DE00);
                }
              }

              else
              {
                v60 = v56;
                v58 = v103;
                sub_228060270(v60, v103, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
              }

              v61 = v58;
              v62 = *v58;
              v63 = *(v61 + 8);

              sub_228060210(v61, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientUseCaseID);
              if (v62 == v104 && v63 == v105)
              {

LABEL_31:
                v65 = v93;
                sub_228060210(v93, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
                v66 = v87;
                sub_22806038C(v87, &qword_27D81EC08, &unk_22813DE10);
                sub_228060270(v17, v66, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
                v67 = v66;
                v37 = v65;
                v85(v67, 0, 1, v109);
                goto LABEL_4;
              }

              v64 = sub_2281399BC();

              if (v64)
              {
                goto LABEL_31;
              }

              sub_228060210(v17, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
            }

            if (v111 == ++v51)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
          goto LABEL_41;
        }

LABEL_29:
        v37 = v93;
      }

LABEL_3:
      sub_228060210(v37, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfig);
LABEL_4:
      v36 = v106 + 1;
      v23 = v95;
      v35 = v94;
      if (v106 + 1 == v98)
      {

        v29 = v87;
        break;
      }
    }
  }

  v68 = v84;
  sub_228060324(v29, v84, &qword_27D81EC08, &unk_22813DE10);
  if ((*(v112 + 48))(v68, 1, v109) == 1)
  {
    sub_22806038C(v68, &qword_27D81EC08, &unk_22813DE10);
    if (qword_2813C49E0 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_35;
  }

  sub_22806038C(v29, &qword_27D81EC08, &unk_22813DE10);

  return sub_228060270(v68, v83, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig);
}

uint64_t ClientSafetyConfiguration.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = (v0 + qword_2813C6C50);
  *v1 = 0xD000000000000019;
  v1[1] = 0x800000022813DD90;
  v2 = (v0 + qword_2813C6C58);
  *v2 = 0x7478746270;
  v2[1] = 0xE500000000000000;
  v3 = (v0 + qword_2813C6C48);
  *v3 = 0xD000000000000010;
  v3[1] = 0x8000000228143AB0;
  return sub_227FDC18C(0xD000000000000019, 0x800000022813DD90, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
}

uint64_t ClientSafetyConfiguration.init()()
{
  v1 = (v0 + qword_2813C6C50);
  *v1 = 0xD000000000000019;
  v1[1] = 0x800000022813DD90;
  v2 = (v0 + qword_2813C6C58);
  *v2 = 0x7478746270;
  v2[1] = 0xE500000000000000;
  v3 = (v0 + qword_2813C6C48);
  *v3 = 0xD000000000000010;
  v3[1] = 0x8000000228143AB0;
  return sub_227FDC18C(0xD000000000000019, 0x800000022813DD90, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
}

uint64_t ClientSafetyConfiguration.__allocating_init(configFilePath:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  v5 = (v4 + qword_2813C6C50);
  *v5 = 0xD000000000000019;
  v5[1] = 0x800000022813DD90;
  v6 = (v4 + qword_2813C6C58);
  *v6 = 0x7478746270;
  v6[1] = 0xE500000000000000;
  v7 = (v4 + qword_2813C6C48);
  *v7 = 0xD000000000000010;
  v7[1] = 0x8000000228143AB0;
  return sub_227FDE360(a1, a2);
}

uint64_t ClientSafetyConfiguration.init(configFilePath:)(uint64_t a1, unint64_t a2)
{
  v3 = (v2 + qword_2813C6C50);
  *v3 = 0xD000000000000019;
  v3[1] = 0x800000022813DD90;
  v4 = (v2 + qword_2813C6C58);
  *v4 = 0x7478746270;
  v4[1] = 0xE500000000000000;
  v5 = (v2 + qword_2813C6C48);
  *v5 = 0xD000000000000010;
  v5[1] = 0x8000000228143AB0;
  return sub_227FDE360(a1, a2);
}

uint64_t ClientSafetyConfiguration.__allocating_init(assetManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = (v2 + qword_2813C6C50);
  *v3 = 0xD000000000000019;
  v3[1] = 0x800000022813DD90;
  v4 = (v2 + qword_2813C6C58);
  *v4 = 0x7478746270;
  v4[1] = 0xE500000000000000;
  v5 = (v2 + qword_2813C6C48);
  *v5 = 0xD000000000000010;
  v5[1] = 0x8000000228143AB0;
  return sub_227FE02B4(a1, 0, 0xD000000000000019, 0x800000022813DD90, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
}

uint64_t ClientSafetyConfiguration.init(assetManager:)(uint64_t a1)
{
  v2 = (v1 + qword_2813C6C50);
  *v2 = 0xD000000000000019;
  v2[1] = 0x800000022813DD90;
  v3 = (v1 + qword_2813C6C58);
  *v3 = 0x7478746270;
  v3[1] = 0xE500000000000000;
  v4 = (v1 + qword_2813C6C48);
  *v4 = 0xD000000000000010;
  v4[1] = 0x8000000228143AB0;
  return sub_227FE02B4(a1, 0, 0xD000000000000019, 0x800000022813DD90, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
}

BOOL sub_22805EE28(_DWORD *a1, _DWORD *a2)
{
  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  v4 = sub_22813882C();
  __swift_project_value_buffer(v4, qword_2813C89F0);
  v5 = sub_22813880C();
  v6 = sub_2281396CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_227FCC340(0xD00000000000003ELL, 0x8000000228146140, &v10);
    _os_log_impl(&dword_227FC3000, v5, v6, "version comparison of %{public}s is implemented", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v8);
    MEMORY[0x22AAB28A0](v8, -1, -1);
    MEMORY[0x22AAB28A0](v7, -1, -1);
  }

  return *a2 < *a1;
}

uint64_t sub_22805EFC4(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5E0, &unk_22813B410);
  v18 = v9;
  v10 = sub_2280603EC(qword_2813C6E58, &qword_27D81E5E0, &unk_22813B410);
  v19 = v10;
  v15 = 0xD00000000000001BLL;
  v16 = 0x8000000228146200;
  v17 = 3;
  sub_227FE77E0(&v15, v20);
  __swift_project_boxed_opaque_existential_1(&v15, v18);
  DynamicType = swift_getDynamicType();

  __swift_destroy_boxed_opaque_existential_0Tm_0(&v15);
  v21 = DynamicType;
  v12 = MEMORY[0x277D837D0];
  v18 = MEMORY[0x277D837D0];
  v15 = a2;
  v16 = a3;
  sub_228024ABC(&v15, v20);
  v18 = v9;
  v19 = v10;
  v15 = 0xD000000000000011;
  v16 = 0x8000000228146220;
  v17 = 3;
  sub_227FE77E0(&v15, v20);
  __swift_project_boxed_opaque_existential_1(&v15, v18);
  v13 = swift_getDynamicType();

  __swift_destroy_boxed_opaque_existential_0Tm_0(&v15);
  v21 = v13;
  v18 = v12;
  v15 = a4;
  v16 = a5;
  return sub_228024ABC(&v15, v20);
}

uint64_t sub_22805F154()
{
}

uint64_t ClientSafetyConfiguration.deinit(__n128 a1)
{
  sub_228060210(v1 + *(*v1 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);

  return v1;
}

uint64_t ClientSafetyConfiguration.__deallocating_deinit(__n128 a1)
{
  sub_228060210(v1 + *(*v1 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClientSafetyConfiguration(uint64_t a1)
{
  result = qword_2813C6C38;
  if (!qword_2813C6C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22805F434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5E0, &unk_22813B410);
  v17 = sub_2280603EC(qword_2813C6E58, &qword_27D81E5E0, &unk_22813B410);
  v13 = a3;
  v14 = a4;
  LOBYTE(v15) = a5;
  sub_227FE77E0(&v13, v18);
  __swift_project_boxed_opaque_existential_1(&v13, v16);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0Tm_0(&v13);
  v18[5] = DynamicType;
  if (a2)
  {
    v11 = MEMORY[0x277D837D0];
  }

  else
  {
    a1 = 0;
    v11 = 0;
    v15 = 0;
  }

  v13 = a1;
  v14 = a2;
  v16 = v11;
  return sub_228024ABC(&v13, v18);
}

uint64_t sub_22805F5EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, unint64_t *a7, void (*a8)(__int128 *, _BYTE *))
{
  v24 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5F8, &qword_22813DE20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v23 - v16;
  *(&v26 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v27 = sub_2280603EC(a7, a5, a6);
  *&v25 = a2;
  *(&v25 + 1) = a3;
  LOBYTE(v26) = a4;
  sub_227FE77E0(&v25, v28);
  __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0Tm_0(&v25);
  v29 = DynamicType;
  sub_228060324(a1, v17, &qword_27D81E5F8, &qword_22813DE20);
  v19 = sub_2281385EC();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    sub_22806038C(v17, &qword_27D81E5F8, &qword_22813DE20);
    v25 = 0u;
    v26 = 0u;
  }

  else
  {
    *(&v26 + 1) = v19;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v25);
    (*(v20 + 32))(boxed_opaque_existential_0, v17, v19);
  }

  v24(&v25, v28);
  return sub_22806038C(a1, &qword_27D81E5F8, &qword_22813DE20);
}

uint64_t sub_22805F81C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, unint64_t *a7, void (*a8)(__int128 *, _BYTE *))
{
  v24 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v23 - v16;
  *(&v26 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v27 = sub_2280603EC(a7, a5, a6);
  *&v25 = a2;
  *(&v25 + 1) = a3;
  LOBYTE(v26) = a4;
  sub_227FE77E0(&v25, v28);
  __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0Tm_0(&v25);
  v29 = DynamicType;
  sub_228060324(a1, v17, &qword_27D81E598, &qword_22813B300);
  v19 = sub_2281386FC();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    sub_22806038C(v17, &qword_27D81E598, &qword_22813B300);
    v25 = 0u;
    v26 = 0u;
  }

  else
  {
    *(&v26 + 1) = v19;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v25);
    (*(v20 + 32))(boxed_opaque_existential_0, v17, v19);
  }

  v24(&v25, v28);
  return sub_22806038C(a1, &qword_27D81E598, &qword_22813B300);
}

uint64_t sub_22805FA4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, unint64_t *a7, uint64_t (*a8)(uint64_t *, _BYTE *))
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v23 = sub_2280603EC(a7, a5, a6);
  v19 = a2;
  v20 = a3;
  LOBYTE(v21) = a4;
  sub_227FE77E0(&v19, v24);
  __swift_project_boxed_opaque_existential_1(&v19, v22);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0Tm_0(&v19);
  v25 = DynamicType;
  if (a1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  }

  else
  {
    v17 = 0;
    v20 = 0;
    v21 = 0;
  }

  v19 = a1;
  v22 = v17;
  return a8(&v19, v24);
}

uint64_t sub_22805FB50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1 && (sub_22808DA70(a1, a2) & 1) != 0)
  {
    a1 = 0xD000000000000012;
    if ((a3 != 0xD000000000000022 || 0x8000000228143160 != a4) && (sub_2281399BC() & 1) == 0)
    {
      if (a3 == 0xD00000000000002ALL && 0x80000002281432B0 == a4 || (sub_2281399BC() & 1) != 0)
      {
        return 0xD000000000000014;
      }

      else if ((a3 != 0xD000000000000028 || 0x8000000228143190 != a4) && (sub_2281399BC() & 1) == 0)
      {
        if (a3 == 0xD000000000000030 && 0x80000002281432E0 == a4 || (sub_2281399BC() & 1) != 0)
        {
          return 0xD000000000000014;
        }

        else if ((a3 != 0xD000000000000022 || 0x80000002281431C0 != a4) && (sub_2281399BC() & 1) == 0 && (a3 != 0xD000000000000028 || 0x80000002281431F0 != a4) && (sub_2281399BC() & 1) == 0 && (a3 != 0xD000000000000027 || 0x8000000228143220 != a4) && (sub_2281399BC() & 1) == 0 && (a3 != 0xD00000000000002DLL || 0x8000000228143250 != a4) && (sub_2281399BC() & 1) == 0)
        {
          v9 = 0xD00000000000001FLL;
          if (a3 == 0xD00000000000001BLL && 0x8000000228143340 == a4)
          {
            return v9;
          }

          if (sub_2281399BC())
          {
            return v9;
          }

          v9 = 0xD000000000000016;
          if (a3 == 0xD00000000000001ALL && 0x8000000228143320 == a4)
          {
            return v9;
          }

          if (sub_2281399BC())
          {
            return v9;
          }

          v9 = 0xD000000000000022;
          if (a3 == 0xD000000000000026 && 0x8000000228143360 == a4)
          {
            return v9;
          }

          if (sub_2281399BC())
          {
            return v9;
          }

          v9 = 0xD000000000000015;
          if (a3 == 0xD000000000000022 && 0x8000000228143130 == a4)
          {
            return v9;
          }

          if (sub_2281399BC())
          {
            return v9;
          }

          v9 = 0xD000000000000015;
          if (a3 == 0xD00000000000002ALL && 0x8000000228143280 == a4)
          {
            return v9;
          }

          if (sub_2281399BC())
          {
            return v9;
          }

          else if (a3 == 0xD000000000000018 && 0x80000002281433E0 == a4 || (sub_2281399BC() & 1) != 0)
          {
            return 0xD000000000000015;
          }

          else if (a3 == 0xD000000000000022 && 0x8000000228143390 == a4 || (sub_2281399BC() & 1) != 0)
          {
            return 0xD000000000000033;
          }

          else if ((sub_22813941C() & 1) == 0)
          {
            if (qword_2813C49A8 != -1)
            {
              swift_once();
            }

            v10 = sub_22813882C();
            __swift_project_value_buffer(v10, qword_2813C89F0);

            v11 = sub_22813880C();
            v12 = sub_2281396DC();

            if (os_log_type_enabled(v11, v12))
            {
              v13 = swift_slowAlloc();
              v14 = swift_slowAlloc();
              v15 = v14;
              *v13 = 136446210;
              *(v13 + 4) = sub_227FCC340(a3, a4, &v15);
              _os_log_impl(&dword_227FC3000, v11, v12, "Invalid useCase identifier and inference route combination: %{public}s", v13, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm_0(v14);
              MEMORY[0x22AAB28A0](v14, -1, -1);
              MEMORY[0x22AAB28A0](v13, -1, -1);
            }
          }
        }
      }
    }
  }

  else
  {
  }

  return a1;
}

uint64_t sub_2280601A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228060210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228060270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_228060324(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22806038C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2280603EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_228060464(void *a1, void *a2)
{
  v4 = (v2 + *a2);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = v8;
  v11 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  if (v7 == (*(*(v10 + 8) + 8))(v11) && v9 == v12)
  {
  }

  else
  {
    v14 = sub_2281399BC();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = v4[3];
  v16 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v15);
  v17 = (*(v16 + 16))(v15, v16);
  v19 = v18;
  v21 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  if (v17 == (*(*(v20 + 8) + 16))(v21) && v19 == v22)
  {
  }

  else
  {
    v24 = sub_2281399BC();

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  v25 = v4[3];
  v26 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v25);
  LODWORD(v25) = (*(v26 + 24))(v25, v26);
  v28 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  if (v25 == (*(*(v27 + 8) + 24))(v28))
  {
    v29 = v4[3];
    v30 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v29);
    v31 = (*(v30 + 32))(v29, v30);
    v33 = v32;
    v35 = a1[3];
    v34 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v35);
    if (v31 == (*(*(v34 + 8) + 32))(v35) && v33 == v36)
    {

LABEL_20:
      v38 = v4[3];
      v39 = v4[4];
      __swift_project_boxed_opaque_existential_1(v4, v38);
      v40 = (*(v39 + 40))(v38, v39);
      v42 = a1[3];
      v41 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v42);
      return v40 == (*(*(v41 + 8) + 40))(v42);
    }

    v37 = sub_2281399BC();

    if (v37)
    {
      goto LABEL_20;
    }
  }

  return 0;
}

uint64_t sub_2280607B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E788, &unk_22813BC90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_228088344(a3, v25 - v10, &qword_27D81E788, &unk_22813BC90);
  v12 = sub_22813959C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2280883AC(v11, &qword_27D81E788, &unk_22813BC90);
  }

  else
  {
    sub_22813958C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22813957C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_22813931C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      type metadata accessor for GMSModelInfo(0);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2280883AC(v25[0], &qword_27D81E788, &unk_22813BC90);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2280883AC(a3, &qword_27D81E788, &unk_22813BC90);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  type metadata accessor for GMSModelInfo(0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_228060AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E788, &unk_22813BC90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_228088344(a3, v25 - v10, &qword_27D81E788, &unk_22813BC90);
  v12 = sub_22813959C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2280883AC(v11, &qword_27D81E788, &unk_22813BC90);
  }

  else
  {
    sub_22813958C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22813957C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22813931C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2280883AC(a3, &qword_27D81E788, &unk_22813BC90);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2280883AC(a3, &qword_27D81E788, &unk_22813BC90);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_228060DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2281397FC();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_228085784(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for SummarizationResult(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t *sub_228060E7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v95 = a4;
  v61 = *v8;
  v63 = type metadata accessor for ModelBundleIdentifier(0);
  MEMORY[0x28223BE20](v63);
  v64 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for SummarizationSession.Configuration(0);
  v15 = MEMORY[0x28223BE20](v58);
  v57 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v56 = &v56 - v17;
  v18 = v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate;
  *(v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v68 = v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration;
  sub_228084B4C(a1, v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration, type metadata accessor for SummarizationSession.Configuration);
  v59 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_sessionInfo;
  sub_22808764C(a2, v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_sessionInfo);
  *(v18 + 8) = a6;
  v60 = v18;
  v65 = a5;
  swift_unknownObjectWeakAssign();
  v19 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v62 = v7;
  v69 = a1;
  v66 = a3;
  v67 = a2;
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v20 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v20 = &qword_2813C76F8;
  }

  v21 = *(*v20 + 720);
  v22 = *(*v20 + 728);
  v23 = *(*v20 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v24 = v95;
  if (byte_2813C4638 == 1)
  {
    v22(&v73, v23);

    v25 = v69;
    v26 = v67;
    if ((v73 & 1) == 0)
    {
LABEL_14:
      v27 = v66;
      if (qword_2813C49E0 != -1)
      {
        swift_once();
      }

      v28 = sub_22813882C();
      __swift_project_value_buffer(v28, qword_2813C8A20);
      v29 = sub_22813880C();
      v30 = sub_2281396DC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_227FC3000, v29, v30, "Using nil safetyContext; model safety has been disabled by internal override.", v31, 2u);
        MEMORY[0x22AAB28A0](v31, -1, -1);
      }

      *(v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_safetyContext) = 0;
      goto LABEL_23;
    }
  }

  else
  {

    v25 = v69;
    v26 = v67;
    if (!v21)
    {
      goto LABEL_14;
    }
  }

  v32 = v24;
  v27 = v66;
  if (!v24)
  {
    v33 = v56;
    sub_228084B4C(v25, v56, type metadata accessor for SummarizationSession.Configuration);
    v32 = *(v33 + *(v58 + 32));

    sub_228084CF0(v33, type metadata accessor for SummarizationSession.Configuration);
  }

  *(v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_safetyContext) = v32;

LABEL_23:
  v34 = v64;
  swift_storeEnumTagMultiPayload();
  v35 = _s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v25, v34);
  sub_228084CF0(v34, type metadata accessor for ModelBundleIdentifier);
  if ((v35 & 1) == 0)
  {
    sub_228088344(v27, &v89, &qword_27D81ED10, &unk_22813E4A0);
    if (*(&v90 + 1))
    {
      swift_unknownObjectRelease();

      sub_2280883AC(v27, &qword_27D81ED10, &unk_22813E4A0);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v26);
      sub_227FD0F5C(&v89, &v92);
    }

    else
    {
      v51 = v57;
      sub_228084B4C(v25, v57, type metadata accessor for SummarizationSession.Configuration);
      sub_22808764C(v26, v87);
      v86 = 0;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      v52 = type metadata accessor for GMSSummarizationModelEngine(0);
      v70 = 0u;
      v71 = 0u;
      v72 = 0;
      swift_allocObject();
      v53 = v62;
      sub_2280AB4E8(v51, v87, &v73, &v70);
      v62 = v53;
      if (v53)
      {
        swift_unknownObjectRelease();

        sub_2280883AC(v27, &qword_27D81ED10, &unk_22813E4A0);
        __swift_destroy_boxed_opaque_existential_1Tm_7(v26);
        sub_228084CF0(v25, type metadata accessor for SummarizationSession.Configuration);
        if (*(&v90 + 1))
        {
          sub_2280883AC(&v89, &qword_27D81ED10, &unk_22813E4A0);
        }

        goto LABEL_25;
      }

      v55 = v54;
      *(&v93 + 1) = v52;
      v94 = &off_283B5E840;
      swift_unknownObjectRelease();

      *&v92 = v55;
      sub_2280883AC(v27, &qword_27D81ED10, &unk_22813E4A0);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v26);
      if (*(&v90 + 1))
      {
        sub_2280883AC(&v89, &qword_27D81ED10, &unk_22813E4A0);
      }
    }

    v39 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine;
    sub_227FD0F5C(&v92, v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine);
    v40 = v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter;
    sub_2280876B0(v25, v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter, type metadata accessor for SummarizationSession.Configuration);
    v41 = type metadata accessor for TokenCounter(0);
    sub_22808764C(v8 + v39, &v40[*(v41 + 20)]);
    v42 = *(v68 + *(v58 + 32));
    v94 = 0;
    v92 = 0u;
    v93 = 0u;
    v91 = 0;
    v89 = 0u;
    v90 = 0u;
    v88 = 0;
    memset(v87, 0, sizeof(v87));
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    *&v73 = v42;
    BYTE8(v73) = 0;

    sub_22808840C(&v89, &v79);
    sub_22808840C(v87, &v81 + 8);
    sub_22808840C(&v70, &v84);
    sub_22808840C(&v92, &v76 + 8);
    v43 = v8 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_sanitizerFactory;
    v44 = v84;
    *(v43 + 10) = v83;
    *(v43 + 11) = v44;
    *(v43 + 12) = v85;
    *(v43 + 26) = v86;
    v45 = v80;
    *(v43 + 6) = v79;
    *(v43 + 7) = v45;
    v46 = v82;
    *(v43 + 8) = v81;
    *(v43 + 9) = v46;
    v47 = v76;
    *(v43 + 2) = v75;
    *(v43 + 3) = v47;
    v48 = v78;
    *(v43 + 4) = v77;
    *(v43 + 5) = v48;
    v49 = v74;
    *v43 = v73;
    *(v43 + 1) = v49;
    return v8;
  }

  v36 = swift_allocObject();
  *(v36 + 16) = 24;
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  v37 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, 90, sub_2280889AC, v36);
  sub_227FDB3CC();
  swift_allocError();
  *v38 = 24;
  *(v38 + 8) = v37;
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_2280883AC(v27, &qword_27D81ED10, &unk_22813E4A0);
  __swift_destroy_boxed_opaque_existential_1Tm_7(v26);
  sub_228084CF0(v25, type metadata accessor for SummarizationSession.Configuration);
LABEL_25:
  sub_228084CF0(v68, type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_7((v8 + v59));
  sub_228084D50(v60);

  swift_deallocPartialClassInstance();
  return v8;
}

uint64_t SummarizationSession.__allocating_init(configuration:sessionInfo:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for SummarizationSession.Configuration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228084B4C(a1, v6, type metadata accessor for SummarizationSession.Configuration);
  sub_22808764C(a2, v11);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v7 = swift_allocObject();
  sub_228060E7C(v6, v11, v9, 0, 0, 0);
  __swift_destroy_boxed_opaque_existential_1Tm_7(a2);
  sub_228084CF0(a1, type metadata accessor for SummarizationSession.Configuration);
  return v7;
}

uint64_t SummarizationSession.summarize(_:styles:requestInfo:signalCollector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[29] = a5;
  v6[30] = v5;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v7 = sub_2281386AC();
  v6[31] = v7;
  v6[32] = *(v7 - 8);
  v6[33] = swift_task_alloc();
  v8 = sub_2281385BC();
  v6[34] = v8;
  v6[35] = *(v8 - 8);
  v6[36] = swift_task_alloc();
  v9 = sub_2281386DC();
  v6[37] = v9;
  v6[38] = *(v9 - 8);
  v6[39] = swift_task_alloc();
  v10 = sub_2281386CC();
  v6[40] = v10;
  v6[41] = *(v10 - 8);
  v6[42] = swift_task_alloc();
  v11 = sub_2281386FC();
  v6[43] = v11;
  v6[44] = *(v11 - 8);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v12 = sub_22813757C();
  v6[47] = v12;
  v6[48] = *(v12 - 8);
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = type metadata accessor for ModelBundleIdentifier(0);
  v6[53] = swift_task_alloc();
  v13 = sub_228138F9C();
  v6[54] = v13;
  v6[55] = *(v13 - 8);
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228061D24, 0, 0);
}

uint64_t sub_228061D24()
{
  if (v0[29])
  {
    v1 = v0[29];
  }

  else
  {
    type metadata accessor for TelemetrySignalCollector();
    swift_allocObject();
    v1 = sub_2280D5C74();
  }

  v2 = v0[30];
  v3 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine;
  v0[62] = v1;
  v0[63] = v3;
  v4 = *(v2 + v3 + 24);
  v5 = *(v2 + v3 + 32);
  __swift_project_boxed_opaque_existential_1((v2 + v3), v4);
  v6 = *(v5 + 8);
  v7 = *(v6 + 32);

  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[64] = v8;
  *v8 = v0;
  v8[1] = sub_228061EA4;

  return v10(v4, v6);
}

uint64_t sub_228061EA4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 520) = a1;
  *(v3 + 528) = v1;

  if (v1)
  {
    v4 = sub_228063BDC;
  }

  else
  {
    v4 = sub_228061FBC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_228061FBC()
{
  v1 = (v0[30] + v0[63]);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = swift_task_alloc();
  v0[67] = v2;
  *v2 = v0;
  v2[1] = sub_228062060;

  return sub_2280AC248();
}

uint64_t sub_228062060(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 544) = a1;
  *(v3 + 552) = v1;

  if (v1)
  {
    v4 = sub_228063A9C;
  }

  else
  {
    v4 = sub_228062178;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_228062178()
{
  v133 = v0;
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 472);
  v4 = *(v0 + 480);
  os_unfair_lock_lock((v1 + 16));

  v129 = (v1 + 24);
  *(v1 + 24) = MEMORY[0x277D84F98];
  os_unfair_lock_unlock((v1 + 16));
  sub_228136F6C();
  v5 = sub_228136F8C();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2, 0, 1, v5);
  KeyPath = swift_getKeyPath(byte_22813DE90);
  sub_228088344(v2, v4, &qword_27D81EC50, &unk_228140BB0);
  os_unfair_lock_lock((v1 + 16));
  sub_228088344(v4, v3, &qword_27D81EC50, &unk_228140BB0);
  v8 = (*(v6 + 48))(v3, 1, v5);
  v9 = *(v0 + 472);
  if (v8 == 1)
  {

    sub_2280883AC(v9, &qword_27D81EC50, &unk_228140BB0);
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
  }

  else
  {
    *(v0 + 168) = v5;
    boxed_opaque_existential_0Tm_0 = __swift_allocate_boxed_opaque_existential_0Tm_0((v0 + 144));
    (*(v6 + 32))(boxed_opaque_existential_0Tm_0, v9, v5);
  }

  v11 = *(v0 + 488);
  v12 = *(v0 + 496);
  v13 = *(v0 + 480);
  v14 = *(v0 + 216);
  sub_228044D20(v0 + 144, KeyPath, v129);
  os_unfair_lock_unlock((v1 + 16));

  sub_2280883AC(v11, &qword_27D81EC50, &unk_228140BB0);
  sub_2280883AC(v13, &qword_27D81EC50, &unk_228140BB0);
  v15 = swift_getKeyPath(byte_22813DEB8);

  os_unfair_lock_lock((v1 + 16));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
  v132 = v16;
  v131[0] = v14;

  sub_228044C70(v131, v15, v129);
  os_unfair_lock_unlock((v1 + 16));

  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 224);
  v18 = *(v0 + 208);
  v19 = sub_22813882C();
  __swift_project_value_buffer(v19, qword_2813C8A20);
  sub_22808764C(v17, v0 + 64);
  sub_22808764C(v18, v0 + 104);

  v20 = sub_22813880C();
  v21 = sub_2281396BC();

  if (os_log_type_enabled(v20, v21))
  {
    v128 = v12;
    v22 = *(v0 + 216);
    v23 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v131[0] = v127;
    *v23 = 136315906;
    v24 = v16;
    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v25);
    v27 = (*(v26 + 16))(v25, v26);
    v29 = v28;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));
    v30 = sub_227FCC340(v27, v29, v131);

    *(v23 + 4) = v30;
    *(v23 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1((v0 + 104), *(v0 + 128));
    swift_getDynamicType();
    v31 = sub_228139B8C();
    v33 = v32;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 104));
    v34 = sub_227FCC340(v31, v33, v131);

    *(v23 + 14) = v34;
    *(v23 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC68, &qword_22813DF38);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_22813A4B0;
    *(v35 + 32) = v22;
    v12 = v128;

    v36 = MEMORY[0x22AAB1AD0](v35, v24);
    v38 = v37;

    v39 = sub_227FCC340(v36, v38, v131);

    *(v23 + 24) = v39;
    *(v23 + 32) = 2080;
    v40 = ModelBundleIdentifier.loggingDescription.getter();
    v42 = sub_227FCC340(v40, v41, v131);

    *(v23 + 34) = v42;
    _os_log_impl(&dword_227FC3000, v20, v21, "Handling request [requestIdentifier: %s, contentType: %s, styles: %s] with model: %s", v23, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v127, -1, -1);
    MEMORY[0x22AAB28A0](v23, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 104));
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));
  }

  sub_228084B4C(*(v0 + 240) + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration, *(v0 + 424), type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v44 = 1;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v44 = 2;
LABEL_13:
    sub_228084CF0(*(v0 + 424), type metadata accessor for ModelBundleIdentifier);
    goto LABEL_15;
  }

  v44 = 3;
LABEL_15:
  v45 = *(v0 + 552);
  v46 = swift_getKeyPath(byte_22813DEE8);
  os_unfair_lock_lock((v1 + 16));
  v132 = MEMORY[0x277D84A28];
  v131[0] = v44;

  sub_2280449E4(v131, v46, v129);
  os_unfair_lock_unlock((v1 + 16));

  type metadata accessor for SharedData();
  v47 = swift_allocObject();
  *(v0 + 560) = v47;
  type metadata accessor for SKAssetManager();
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  swift_initStackObject();
  v48 = SKAssetManager.init()();
  type metadata accessor for FilterRules(0);
  swift_allocObject();
  v49 = FilterRules.init(assetManager:)(v48);
  if (v45)
  {
    v50 = v45;
    v51 = (v0 + 176);

    *(v0 + 176) = v45;
    v52 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    if (swift_dynamicCast())
    {
      v54 = *(v0 + 400);
      v53 = *(v0 + 408);
      v56 = *(v0 + 384);
      v55 = *(v0 + 392);
      v57 = *(v0 + 376);

      (*(v56 + 32))(v54, v53, v57);
      v58 = *(v56 + 16);
      v58(v55, v54, v57);
      if ((*(v56 + 88))(v55, v57) == *MEMORY[0x277D71AC8])
      {
        v59 = *(v0 + 392);
        v60 = *(v0 + 400);
        v61 = *(v0 + 376);
        (*(*(v0 + 384) + 96))(v59, v61);
        v63 = *v59;
        v62 = v59[1];
        *(v0 + 640) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC60, &qword_22813DF20) + 64);
        sub_228084BB4(&qword_27D81EC58, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
        v64 = swift_allocError();
        *(v0 + 592) = v64;
        v58(v65, v60, v61);
        v66 = swift_task_alloc();
        *(v0 + 600) = v66;
        *v66 = v0;
        v66[1] = sub_228063D1C;
        v67 = *(v0 + 520);
        v68 = *(v0 + 496);
        v69 = *(v0 + 456);
        v70 = *(v0 + 240);
        v72 = *(v0 + 216);
        v71 = *(v0 + 224);
        v135 = *(v0 + 208);
        v136 = v72;
        v73 = v64;
        v74 = v63;
        v75 = v62;
LABEL_19:

        return sub_228064640(v69, v73, v74, v75, v67, v70, v71, v68);
      }

      v114 = *(v0 + 400);
      v130 = *(v0 + 392);
      v116 = *(v0 + 376);
      v115 = *(v0 + 384);
      sub_228084BB4(&qword_27D81EC58, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
      swift_allocError();
      v58(v117, v114, v116);
      swift_willThrow();

      v118 = *(v115 + 8);
      v118(v114, v116);
      v118(v130, v116);
    }

    else
    {
      v51 = (v0 + 184);

      *(v0 + 184) = v45;
      v85 = v45;
      if (swift_dynamicCast())
      {
        v87 = *(v0 + 360);
        v86 = *(v0 + 368);
        v88 = *(v0 + 344);
        v89 = *(v0 + 352);
        v91 = *(v0 + 304);
        v90 = *(v0 + 312);
        v92 = *(v0 + 296);

        (*(v89 + 32))(v87, v86, v88);
        sub_2281386EC();
        if ((*(v91 + 88))(v90, v92) == *MEMORY[0x277D0DB78])
        {
          v94 = (v0 + 248);
          v93 = *(v0 + 248);
          v96 = *(v0 + 328);
          v95 = *(v0 + 336);
          v98 = *(v0 + 312);
          v97 = *(v0 + 320);
          v100 = *(v0 + 256);
          v99 = *(v0 + 264);
          (*(*(v0 + 304) + 96))(v98, *(v0 + 296));
          (*(v96 + 32))(v95, v98, v97);
          sub_2281386BC();
          if ((*(v100 + 88))(v99, v93) == *MEMORY[0x277D0DA90])
          {
            v102 = *(v0 + 352);
            v101 = *(v0 + 360);
            v103 = *(v0 + 344);
            v105 = *(v0 + 280);
            v104 = *(v0 + 288);
            v107 = *(v0 + 264);
            v106 = *(v0 + 272);
            (*(*(v0 + 256) + 96))(v107, *(v0 + 248));
            (*(v105 + 32))(v104, v107, v106);
            sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
            v108 = swift_allocError();
            *(v0 + 616) = v108;
            (*(v102 + 16))(v109, v101, v103);
            v110 = sub_22813859C();
            v111 = sub_2281385AC();
            v112 = swift_task_alloc();
            *(v0 + 624) = v112;
            *v112 = v0;
            v112[1] = sub_228063FFC;
            v67 = *(v0 + 520);
            v68 = *(v0 + 496);
            v69 = *(v0 + 448);
            v70 = *(v0 + 240);
            v113 = *(v0 + 216);
            v71 = *(v0 + 224);
            v135 = *(v0 + 208);
            v136 = v113;
            v73 = v108;
            v74 = v110;
            v75 = v111;
            goto LABEL_19;
          }

          v119 = (v0 + 264);
          v120 = v0 + 256;
          (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
        }

        else
        {
          v119 = (v0 + 312);
          v120 = v0 + 304;
          v94 = (v0 + 296);
        }

        v121 = *v94;
        v123 = *(v0 + 352);
        v122 = *(v0 + 360);
        v124 = *(v0 + 344);
        (*(*v120 + 8))(*v119, v121);
        sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
        swift_allocError();
        (*(v123 + 16))(v125, v122, v124);
        swift_willThrow();

        (*(v123 + 8))(v122, v124);
      }

      else
      {
      }
    }

    v126 = *(v0 + 8);

    return v126();
  }

  else
  {
    *(v47 + 16) = v49;

    *(v47 + 24) = v12;

    if (qword_2813C8178 != -1)
    {
      swift_once();
    }

    v77 = *(v0 + 544);
    v78 = *(v0 + 240);
    v79 = *(v0 + 224);
    *(v0 + 192) = v47;
    v80 = swift_task_alloc();
    *(v0 + 568) = v80;
    v81 = *(v0 + 208);
    *(v80 + 16) = v78;
    *(v80 + 24) = v81;
    *(v80 + 40) = v79;
    *(v80 + 48) = 0;
    *(v80 + 56) = v77;
    *(v80 + 64) = v12;
    v82 = swift_task_alloc();
    *(v0 + 576) = v82;
    *v82 = v0;
    v82[1] = sub_2280630AC;
    v83 = *(v0 + 464);
    v84 = *(v0 + 432);
    v135 = 834;
    v136 = v84;

    return MEMORY[0x282200908](v83, v0 + 192, &unk_22813DF30, v80, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
  }
}

uint64_t sub_2280630AC()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_22806333C;
  }

  else
  {
    v2 = sub_2280631D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2280631D0()
{
  v1 = v0[58];
  v2 = v0[54];
  v3 = v0[55];
  v4 = v0[25];

  (*(v3 + 32))(v4, v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22806333C()
{

  v1 = *(v0 + 584);
  *(v0 + 176) = v1;
  v2 = (v0 + 176);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 400);
    v4 = *(v0 + 408);
    v7 = *(v0 + 384);
    v6 = *(v0 + 392);
    v8 = *(v0 + 376);

    (*(v7 + 32))(v5, v4, v8);
    v9 = *(v7 + 16);
    v9(v6, v5, v8);
    if ((*(v7 + 88))(v6, v8) == *MEMORY[0x277D71AC8])
    {
      v10 = *(v0 + 392);
      v11 = *(v0 + 400);
      v12 = *(v0 + 376);
      (*(*(v0 + 384) + 96))(v10, v12);
      v14 = *v10;
      v13 = v10[1];
      *(v0 + 640) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC60, &qword_22813DF20) + 64);
      sub_228084BB4(&qword_27D81EC58, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
      v15 = swift_allocError();
      *(v0 + 592) = v15;
      v9(v16, v11, v12);
      v17 = swift_task_alloc();
      *(v0 + 600) = v17;
      *v17 = v0;
      v17[1] = sub_228063D1C;
      v18 = *(v0 + 520);
      v19 = *(v0 + 496);
      v20 = *(v0 + 456);
      v21 = *(v0 + 240);
      v22 = *(v0 + 224);
      v23 = v15;
      v24 = v14;
      v25 = v13;
LABEL_4:

      return sub_228064640(v20, v23, v24, v25, v18, v21, v22, v19);
    }

    v55 = *(v0 + 400);
    v68 = *(v0 + 392);
    v57 = *(v0 + 376);
    v56 = *(v0 + 384);
    sub_228084BB4(&qword_27D81EC58, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
    swift_allocError();
    v9(v58, v55, v57);
    swift_willThrow();

    v59 = *(v56 + 8);
    v59(v55, v57);
    v59(v68, v57);
  }

  else
  {
    v2 = (v0 + 184);

    *(v0 + 184) = v1;
    v27 = v1;
    if (swift_dynamicCast())
    {
      v29 = *(v0 + 360);
      v28 = *(v0 + 368);
      v30 = *(v0 + 344);
      v31 = *(v0 + 352);
      v33 = *(v0 + 304);
      v32 = *(v0 + 312);
      v34 = *(v0 + 296);

      (*(v31 + 32))(v29, v28, v30);
      sub_2281386EC();
      if ((*(v33 + 88))(v32, v34) == *MEMORY[0x277D0DB78])
      {
        v36 = (v0 + 248);
        v35 = *(v0 + 248);
        v38 = *(v0 + 328);
        v37 = *(v0 + 336);
        v40 = *(v0 + 312);
        v39 = *(v0 + 320);
        v42 = *(v0 + 256);
        v41 = *(v0 + 264);
        (*(*(v0 + 304) + 96))(v40, *(v0 + 296));
        (*(v38 + 32))(v37, v40, v39);
        sub_2281386BC();
        if ((*(v42 + 88))(v41, v35) == *MEMORY[0x277D0DA90])
        {
          v44 = *(v0 + 352);
          v43 = *(v0 + 360);
          v45 = *(v0 + 344);
          v47 = *(v0 + 280);
          v46 = *(v0 + 288);
          v49 = *(v0 + 264);
          v48 = *(v0 + 272);
          (*(*(v0 + 256) + 96))(v49, *(v0 + 248));
          (*(v47 + 32))(v46, v49, v48);
          sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
          v50 = swift_allocError();
          *(v0 + 616) = v50;
          (*(v44 + 16))(v51, v43, v45);
          v52 = sub_22813859C();
          v53 = sub_2281385AC();
          v54 = swift_task_alloc();
          *(v0 + 624) = v54;
          *v54 = v0;
          v54[1] = sub_228063FFC;
          v18 = *(v0 + 520);
          v19 = *(v0 + 496);
          v20 = *(v0 + 448);
          v21 = *(v0 + 240);
          v22 = *(v0 + 224);
          v23 = v50;
          v24 = v52;
          v25 = v53;
          goto LABEL_4;
        }

        v60 = (v0 + 264);
        v61 = v0 + 256;
        (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
      }

      else
      {
        v60 = (v0 + 312);
        v61 = v0 + 304;
        v36 = (v0 + 296);
      }

      v62 = *v36;
      v64 = *(v0 + 352);
      v63 = *(v0 + 360);
      v65 = *(v0 + 344);
      (*(*v61 + 8))(*v60, v62);
      sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      swift_allocError();
      (*(v64 + 16))(v66, v63, v65);
      swift_willThrow();

      (*(v64 + 8))(v63, v65);
    }

    else
    {
    }
  }

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_228063A9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_228063BDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_228063D1C()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v3 = sub_2280642DC;
  }

  else
  {

    v3 = sub_228063E38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228063E38()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 456);
  v3 = *(v0 + 432);
  v4 = *(v0 + 440);
  v6 = *(v0 + 392);
  v5 = *(v0 + 400);
  v7 = *(v0 + 376);
  v8 = *(v0 + 384);
  v9 = *(v0 + 200);

  (*(v8 + 8))(v5, v7);
  (*(v4 + 32))(v9, v2, v3);
  v10 = sub_22813756C();
  (*(*(v10 - 8) + 8))(v6 + v1, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_228063FFC()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v3 = sub_22806448C;
  }

  else
  {

    v3 = sub_228064118;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_228064118()
{
  v1 = *(v0 + 440);
  v14 = *(v0 + 432);
  v15 = *(v0 + 448);
  v2 = *(v0 + 352);
  v3 = *(v0 + 336);
  v12 = *(v0 + 344);
  v13 = *(v0 + 360);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 280);
  v7 = *(v0 + 288);
  v8 = *(v0 + 272);
  v9 = *(v0 + 200);

  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v13, v12);
  (*(v1 + 32))(v9, v15, v14);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2280642DC()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 640);
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v5 = *(v0 + 376);
  v6 = *(v0 + 384);

  (*(v6 + 8))(v3, v5);

  v7 = sub_22813756C();
  (*(*(v7 - 8) + 8))(v4 + v2, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22806448C()
{
  v12 = *(v0 + 616);
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 320);
  v6 = *(v0 + 328);
  v7 = *(v0 + 280);
  v8 = *(v0 + 288);
  v9 = *(v0 + 272);

  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_228064640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[52] = v11;
  v8[53] = v12;
  v8[50] = a7;
  v8[51] = a8;
  v8[48] = a5;
  v8[49] = a6;
  v8[46] = a3;
  v8[47] = a4;
  v8[44] = a1;
  v8[45] = a2;
  v8[54] = type metadata accessor for ModelBundleIdentifier(0);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228064704, 0, 0);
}

uint64_t sub_228064704()
{
  v114 = v0;
  v1 = *(v0 + 392);
  v2 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter;
  sub_228084B4C(v1 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter, *(v0 + 456), type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_228084CF0(*(v0 + 456), type metadata accessor for ModelBundleIdentifier);
      goto LABEL_6;
    }
  }

  else
  {
    sub_228084CF0(*(v0 + 456), type metadata accessor for ModelBundleIdentifier);
  }

  v4 = *(v0 + 448);
  swift_storeEnumTagMultiPayload();
  v5 = _s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v1 + v2, v4);
  sub_228084CF0(v4, type metadata accessor for ModelBundleIdentifier);
  if ((v5 & 1) == 0)
  {
    if (qword_2813C49E0[0] != -1)
    {
      swift_once();
    }

    v42 = *(v0 + 400);
    v43 = *(v0 + 360);
    v44 = sub_22813882C();
    __swift_project_value_buffer(v44, qword_2813C8A20);
    sub_22808764C(v42, v0 + 64);
    v45 = v43;
    v46 = sub_22813880C();
    v47 = sub_2281396EC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v113[0] = v49;
      *v48 = 136446466;
      v50 = *(v0 + 88);
      v51 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v50);
      v52 = (*(v51 + 16))(v50, v51);
      v54 = v53;
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));
      v55 = sub_227FCC340(v52, v54, v113);

      *(v48 + 4) = v55;
      *(v48 + 12) = 2080;
      swift_getErrorValue();
      v56 = Error.loggingDescription.getter(*(v0 + 312), *(v0 + 320));
      v58 = sub_227FCC340(v56, v57, v113);

      *(v48 + 14) = v58;
      _os_log_impl(&dword_227FC3000, v46, v47, "Unexpected .tooManyTokensError for [requestIdentifier: %{public}s]: TokenCounter is using actual token counts; InputTruncator should have arrived at the correct answer: %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v49, -1, -1);
      MEMORY[0x22AAB28A0](v48, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 64));
    }

    v66 = *(v0 + 360);
    swift_willThrow();
    v67 = v66;
    goto LABEL_38;
  }

LABEL_6:
  v112 = sub_228085CEC(*(v0 + 408), *(v0 + 368), *(v0 + 376));
  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 400);
  v7 = sub_22813882C();
  __swift_project_value_buffer(v7, qword_2813C8A20);
  sub_22808764C(v6, v0 + 104);
  v8 = sub_22813880C();
  v9 = sub_2281396BC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 384);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v113[0] = v12;
    *v11 = 136446722;
    v13 = *(v0 + 128);
    v14 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), v13);
    v15 = (*(v14 + 16))(v13, v14);
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 104));
    v18 = sub_227FCC340(v15, v17, v113);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2050;
    *(v11 + 14) = v10;
    *(v11 + 22) = 2050;
    *(v11 + 24) = v112;
    _os_log_impl(&dword_227FC3000, v8, v9, "Handling .tooManyTokensError for [requestIdentifier: %{public}s]: reducing target maximum token length from %{public}ld to %{public}ld", v11, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v12);
    MEMORY[0x22AAB28A0](v12, -1, -1);
    MEMORY[0x22AAB28A0](v11, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 104));
  }

  v19 = *(v0 + 360);
  v20 = objc_opt_self();
  v21 = v19;

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v22 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v22 = &qword_2813C76F8;
  }

  v23 = *(*v22 + 560);
  v24 = *(*v22 + 568);
  v25 = *(*v22 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v24(v113, v25);

    if ((v113[0] & 1) == 0)
    {
LABEL_24:
      swift_willThrow();
LABEL_38:

      v68 = *(v0 + 8);

      return v68();
    }
  }

  else
  {

    if (!v23)
    {
      goto LABEL_24;
    }
  }

  v26 = *(v0 + 360);
  sub_22808764C(*(v0 + 400), v0 + 144);
  v27 = v26;
  v28 = sub_22813880C();
  v29 = sub_2281396BC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v0 + 360);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v113[0] = v33;
    *v31 = 136446722;
    v34 = *(v0 + 168);
    v35 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v34);
    v36 = (*(v35 + 16))(v34, v35);
    v38 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 144));
    v39 = sub_227FCC340(v36, v38, v113);

    *(v31 + 4) = v39;
    *(v31 + 12) = 2050;
    *(v31 + 14) = v112;
    *(v31 + 22) = 2114;
    v40 = v30;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 24) = v41;
    *v32 = v41;
    _os_log_impl(&dword_227FC3000, v28, v29, "Retrying summarization for [requestIdentifier: %{public}s] with [maxTokenLength: %{public}ld] after failure: %{public}@", v31, 0x20u);
    sub_2280883AC(v32, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v33);
    MEMORY[0x22AAB28A0](v33, -1, -1);
    MEMORY[0x22AAB28A0](v31, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 144));
  }

  if (qword_27D81E2C0 != -1)
  {
    swift_once();
  }

  v59 = *(v0 + 400);
  v60 = *(v0 + 408);
  v61 = *(v0 + 360);
  v62 = type metadata accessor for Signpost(0);
  __swift_project_value_buffer(v62, qword_27D823270);
  sub_22808764C(v59, v0 + 184);
  v63 = swift_allocObject();
  sub_227FD0F5C((v0 + 184), v63 + 16);
  *(v63 + 56) = v61;
  v64 = v61;
  sub_22812F9A4(sub_2280889F4, v63);

  KeyPath = swift_getKeyPath(byte_22813E238);
  os_unfair_lock_lock((v60 + 16));
  sub_228084228((v60 + 24), KeyPath, 1);
  os_unfair_lock_unlock((v60 + 16));
  v70 = *(v0 + 416);
  v71 = *(v0 + 400);
  v72 = *(v0 + 408);

  sub_22808764C(v71, v0 + 224);
  sub_22808764C(v70, v0 + 264);

  v73 = sub_22813880C();
  v74 = sub_2281396BC();

  if (os_log_type_enabled(v73, v74))
  {
    v76 = *(v0 + 424);
    v77 = swift_slowAlloc();
    v111 = v72;
    v78 = swift_slowAlloc();
    v113[0] = v78;
    *v77 = 136315906;
    v79 = *(v0 + 248);
    v80 = *(v0 + 256);
    __swift_project_boxed_opaque_existential_1((v0 + 224), v79);
    v81 = (*(v80 + 16))(v79, v80);
    v83 = v82;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 224));
    v84 = sub_227FCC340(v81, v83, v113);

    *(v77 + 4) = v84;
    *(v77 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1((v0 + 264), *(v0 + 288));
    swift_getDynamicType();
    v85 = sub_228139B8C();
    v87 = v86;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 264));
    v88 = sub_227FCC340(v85, v87, v113);

    *(v77 + 14) = v88;
    *(v77 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC68, &qword_22813DF38);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_22813A4B0;
    *(v89 + 32) = v76;

    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
    v91 = MEMORY[0x22AAB1AD0](v89, v90);
    v93 = v92;

    v94 = sub_227FCC340(v91, v93, v113);

    *(v77 + 24) = v94;
    *(v77 + 32) = 2080;
    v95 = ModelBundleIdentifier.loggingDescription.getter();
    v97 = sub_227FCC340(v95, v96, v113);

    *(v77 + 34) = v97;
    _os_log_impl(&dword_227FC3000, v73, v74, "Handling request [requestIdentifier: %s, contentType: %s, styles: %s] with model: %s", v77, 0x2Au);
    swift_arrayDestroy();
    v98 = v78;
    v72 = v111;
    MEMORY[0x22AAB28A0](v98, -1, -1);
    MEMORY[0x22AAB28A0](v77, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 264));
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 224));
  }

  sub_228084B4C(*(v0 + 392) + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration, *(v0 + 440), type metadata accessor for ModelBundleIdentifier);
  v99 = swift_getEnumCaseMultiPayload();
  if (v99)
  {
    if (v99 != 1)
    {
      v100 = 3;
      goto LABEL_50;
    }

    v100 = 2;
  }

  else
  {
    v100 = 1;
  }

  sub_228084CF0(*(v0 + 440), type metadata accessor for ModelBundleIdentifier);
LABEL_50:
  v101 = swift_getKeyPath(byte_22813DEE8);
  os_unfair_lock_lock((v60 + 16));
  v113[3] = MEMORY[0x277D84A28];
  v113[0] = v100;

  sub_2280449E4(v113, v101, (v60 + 24));
  os_unfair_lock_unlock((v60 + 16));

  type metadata accessor for SharedData();
  v102 = swift_allocObject();
  *(v0 + 464) = v102;
  type metadata accessor for SKAssetManager();
  *(v102 + 16) = 0;
  *(v102 + 24) = 0;
  swift_initStackObject();
  v103 = SKAssetManager.init()();
  type metadata accessor for FilterRules(0);
  swift_allocObject();
  *(v102 + 16) = FilterRules.init(assetManager:)(v103);

  *(v102 + 24) = v72;

  if (qword_2813C8178 != -1)
  {
    swift_once();
  }

  v105 = *(v0 + 392);
  v104 = *(v0 + 400);
  *(v0 + 344) = v102;
  v106 = swift_task_alloc();
  *(v0 + 472) = v106;
  v107 = *(v0 + 416);
  *(v106 + 16) = v105;
  *(v106 + 24) = v107;
  *(v106 + 40) = v104;
  *(v106 + 48) = 0;
  *(v106 + 56) = v112;
  *(v106 + 64) = v72;
  v108 = swift_task_alloc();
  *(v0 + 480) = v108;
  v109 = sub_228138F9C();
  *v108 = v0;
  v108[1] = sub_2280655D4;
  v110 = *(v0 + 352);
  v116 = 834;
  v117 = v109;

  return MEMORY[0x282200908](v110, v0 + 344, &unk_22813E470, v106, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
}

uint64_t sub_2280655D4()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_228065780;
  }

  else
  {
    v2 = sub_2280656F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2280656F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_228065780()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SummarizationSession.deinit()
{
  sub_228084CF0(v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration, type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_sessionInfo));
  sub_228084D50(v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate);

  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine));
  sub_228084CF0(v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter, type metadata accessor for TokenCounter);
  sub_228084D78(v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_sanitizerFactory);
  return v0;
}

uint64_t SummarizationSession.__deallocating_deinit()
{
  sub_228084CF0(v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration, type metadata accessor for SummarizationSession.Configuration);
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_sessionInfo));
  sub_228084D50(v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate);

  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine));
  sub_228084CF0(v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter, type metadata accessor for TokenCounter);
  sub_228084D78(v0 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_sanitizerFactory);

  return swift_deallocClassInstance();
}

uint64_t SummarizationSession.partialSummaries(for:requestInfo:signalCollector:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a1;
  v5[10] = a3;
  v6 = a2[1];
  v5[13] = *a2;
  v5[14] = v6;
  return MEMORY[0x2822009F8](sub_2280659D0, 0, 0);
}

uint64_t sub_2280659D0()
{
  type metadata accessor for SharedData();
  v1 = swift_allocObject();
  *(v0 + 120) = v1;
  type metadata accessor for SKAssetManager();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  swift_initStackObject();
  v2 = SKAssetManager.init()();
  type metadata accessor for FilterRules(0);
  swift_allocObject();
  v3 = FilterRules.init(assetManager:)(v2);
  v4 = *(v0 + 88);
  *(v1 + 16) = v3;

  *(v1 + 24) = v4;

  if (qword_2813C8178 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 112);
  v12 = *(v0 + 96);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  *(v0 + 64) = v1;
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *(v8 + 16) = v12;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  *(v8 + 48) = v6;
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC70, &qword_228142D40);
  *v9 = v0;
  v9[1] = sub_228065C2C;
  v10 = *(v0 + 72);

  return MEMORY[0x282200908](v10, v0 + 64, &unk_22813DF50, v8, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
}

uint64_t sub_228065C2C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_228065DB4;
  }

  else
  {
    v2 = sub_228065D50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228065D50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_228065DB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_228065E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a4;
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_228065EE8;

  return sub_228066034(a1, v6 + 2, a5, a6);
}

uint64_t sub_228065EE8()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22806601C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_228066034(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a1;
  v5[17] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E788, &unk_22813BC90);
  v5[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECA8, &qword_22813E110);
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
  v5[27] = v8;
  v9 = *(v8 - 8);
  v5[28] = v9;
  v5[29] = *(v9 + 64);
  v5[30] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a2;
  v12 = a2[1];
  v5[31] = v10;
  v5[32] = v11;
  v5[33] = v12;

  return MEMORY[0x2822009F8](sub_228066214, 0, 0);
}

uint64_t sub_228066214()
{
  v47 = v0;

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 != 1)
  {
    if (qword_2813C76F0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

  if (qword_27D81E2A0 != -1)
  {
LABEL_20:
    swift_once();
  }

LABEL_7:
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 136);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 8);
  v7 = *(v6 + 8);

  v8 = v7(v4, v6);
  v10 = sub_22808E410(v8, v9);

  if (sub_2280AA14C(0, 0, v10, v2, v1) >= v10)
  {
    v20 = *(v0 + 200);
    v19 = *(v0 + 208);
    v21 = *(v0 + 192);
    v22 = *(v0 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB8, &qword_22813E120);
    (*(v20 + 104))(v19, *MEMORY[0x277D858A0], v21);
    sub_22813960C();
    (*(v20 + 8))(v19, v21);
    if (v22)
    {
      v23 = *(v0 + 144);
    }

    else
    {
      type metadata accessor for TelemetrySignalCollector();
      swift_allocObject();
      v23 = sub_2280D5C74();
    }

    *(v0 + 272) = v23;
    v24 = *(v0 + 176);
    v25 = *(v0 + 184);
    v26 = *(v0 + 168);

    os_unfair_lock_lock((v23 + 16));

    v43 = (v23 + 24);
    *(v23 + 24) = MEMORY[0x277D84F98];
    os_unfair_lock_unlock((v23 + 16));
    sub_228136F6C();
    v27 = sub_228136F8C();
    v28 = *(v27 - 8);
    (*(v28 + 56))(v25, 0, 1, v27);
    KeyPath = swift_getKeyPath(byte_22813DE90);
    sub_228088344(v25, v24, &qword_27D81EC50, &unk_228140BB0);
    os_unfair_lock_lock((v23 + 16));
    sub_228088344(v24, v26, &qword_27D81EC50, &unk_228140BB0);
    v30 = (*(v28 + 48))(v26, 1, v27);
    v31 = *(v0 + 168);
    if (v30 == 1)
    {

      sub_2280883AC(v31, &qword_27D81EC50, &unk_228140BB0);
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
    }

    else
    {
      *(v0 + 120) = v27;
      boxed_opaque_existential_0Tm_0 = __swift_allocate_boxed_opaque_existential_0Tm_0((v0 + 96));
      (*(v28 + 32))(boxed_opaque_existential_0Tm_0, v31, v27);
    }

    v34 = *(v0 + 176);
    v33 = *(v0 + 184);
    v35 = *(v0 + 152);
    sub_228044D20(v0 + 96, KeyPath, v43);
    os_unfair_lock_unlock((v23 + 16));

    sub_2280883AC(v33, &qword_27D81EC50, &unk_228140BB0);
    sub_2280883AC(v34, &qword_27D81EC50, &unk_228140BB0);
    v36 = swift_getKeyPath(byte_22813DEB8);

    os_unfair_lock_lock((v23 + 16));
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
    v45[0] = &unk_283B5B380;

    sub_228044C70(v45, v36, v43);
    os_unfair_lock_unlock((v23 + 16));

    v37 = sub_22813936C();
    v38 = swift_getKeyPath(byte_22813E128);
    os_unfair_lock_lock((v23 + 16));
    v46 = MEMORY[0x277D84A28];
    v45[0] = v37;

    sub_2280449E4(v45, v38, v43);
    os_unfair_lock_unlock((v23 + 16));

    v39 = *(v35 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine + 24);
    v40 = *(v35 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine + 32);
    __swift_project_boxed_opaque_existential_1((v35 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine), v39);
    v41 = *(v40 + 8);
    v44 = (*(v41 + 32) + **(v41 + 32));
    v42 = swift_task_alloc();
    *(v0 + 280) = v42;
    *v42 = v0;
    v42[1] = sub_22806696C;

    return v44(v39, v41);
  }

  else
  {
    v12 = *(v0 + 256);
    v11 = *(v0 + 264);
    v13 = swift_allocObject();
    v13[2] = v10;
    v13[3] = v12;
    v13[4] = v11;
    v14 = swift_allocObject();
    *(v14 + 16) = 3;
    *(v14 + 24) = sub_228085540;
    *(v14 + 32) = v13;

    v15 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, 274, sub_22808554C, v14);
    sub_227FDB3CC();
    swift_allocError();
    *v16 = 3;
    *(v16 + 8) = v15;
    swift_willThrow();

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_22806696C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = sub_228066D64;
  }

  else
  {
    *(v4 + 296) = a1;
    v5 = sub_228066A94;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228066A94()
{
  v22 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  v19 = *(v0 + 256);
  v20 = *(v0 + 264);
  v18 = *(v0 + 240);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 160);
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);
  v17 = v6;
  os_unfair_lock_lock((v2 + 16));
  v21[3] = MEMORY[0x277D84A28];
  v21[0] = v1;

  sub_2280449E4(v21, KeyPath, (v2 + 24));
  os_unfair_lock_unlock((v2 + 16));

  v10 = sub_22813959C();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_22808764C(v8, v0 + 16);
  (*(v4 + 16))(v18, v3, v5);
  v11 = (*(v4 + 80) + 104) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  sub_227FD0F5C((v0 + 16), (v12 + 32));
  *(v12 + 9) = v7;
  *(v12 + 10) = v2;
  *(v12 + 11) = v19;
  *(v12 + 12) = v20;
  (*(v4 + 32))(&v12[v11], v18, v5);

  v13 = sub_228060AC0(0, 0, v17, &unk_22813E180, v12);
  sub_22808764C(v8, v0 + 56);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  sub_227FD0F5C((v0 + 56), v14 + 24);
  sub_22813961C();

  (*(v4 + 8))(v3, v5);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_228066D64()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[16];

  (*(v3 + 8))(v1, v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC70, &qword_228142D40);
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_228066E8C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E870, &qword_22813C008);
  v17 = v7;
  v8 = sub_228087D9C(&qword_27D81E878, &qword_27D81E870, &qword_22813C008, &unk_228140EF8);
  v18 = v8;
  v14 = 0xD00000000000001ELL;
  v15 = 0x8000000228146530;
  v16 = 3;
  sub_22808764C(&v14, v19);
  __swift_project_boxed_opaque_existential_1(&v14, v17);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm_7(&v14);
  v20 = DynamicType;
  v10 = MEMORY[0x277D83B88];
  v17 = MEMORY[0x277D83B88];
  v14 = a2;
  sub_228024ABC(&v14, v19);
  v11 = sub_2280AA14C(0, 0, 0x7FFFFFFFFFFFFFFFLL, a3, a4);
  v17 = v7;
  v18 = v8;
  v14 = 0xD00000000000001CLL;
  v15 = 0x8000000228146550;
  v16 = 3;
  sub_22808764C(&v14, v19);
  __swift_project_boxed_opaque_existential_1(&v14, v17);
  v12 = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1Tm_7(&v14);
  v20 = v12;
  v17 = v10;
  v14 = v11;
  return sub_228024ABC(&v14, v19);
}

uint64_t sub_228067034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a8;
  v8[29] = v15;
  v8[26] = a6;
  v8[27] = a7;
  v8[24] = a4;
  v8[25] = a5;
  v9 = sub_2281386DC();
  v8[30] = v9;
  v8[31] = *(v9 - 8);
  v8[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  v8[33] = swift_task_alloc();
  v10 = sub_2281386FC();
  v8[34] = v10;
  v8[35] = *(v10 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  type metadata accessor for PartialSummariesOperation(0);
  v8[38] = swift_task_alloc();
  v11 = sub_22813882C();
  v8[39] = v11;
  v8[40] = *(v11 - 8);
  v8[41] = swift_task_alloc();
  v12 = sub_22813716C();
  v8[42] = v12;
  v8[43] = *(v12 - 8);
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280672A0, 0, 0);
}

uint64_t sub_2280672A0()
{
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v1 = v0[25];
  v3 = __swift_project_value_buffer(v0[39], qword_2813C8A20);
  v0[47] = v3;
  sub_22810B534(v3, v2);
  v4 = *__swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine), *(v1 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine + 24));
  v5 = OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_model;
  v6 = swift_task_alloc();
  v0[48] = v6;
  *v6 = v0;
  v6[1] = sub_2280673C0;

  return sub_2280FA5A0(v4 + v5);
}

uint64_t sub_2280673C0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v5 = sub_228067BD4;
  }

  else
  {
    *(v4 + 400) = a1;
    v5 = sub_2280674E8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280674E8()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  v8 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter;
  *(v0 + 48) = type metadata accessor for TokenCounter(0);
  *(v0 + 56) = &off_283B5BC30;
  boxed_opaque_existential_0Tm_0 = __swift_allocate_boxed_opaque_existential_0Tm_0((v0 + 24));
  sub_228084B4C(v5 + v8, boxed_opaque_existential_0Tm_0, type metadata accessor for TokenCounter);
  sub_22808764C(v7, v0 + 64);
  *(v0 + 16) = v2;
  *(v0 + 104) = v6;
  *(v0 + 112) = 1;

  v10 = sub_2280A7954(v4, v3, v7, v6);
  *(v0 + 408) = v11;
  if (v1)
  {
    sub_228085A2C(v0 + 16);
    v12 = *(v0 + 280);
    *(v0 + 160) = v1;
    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    v14 = swift_dynamicCast();
    v15 = *(v12 + 56);
    if (v14)
    {
      v16 = *(v0 + 296);
      v17 = *(v0 + 272);
      v18 = *(v0 + 280);
      v20 = *(v0 + 256);
      v19 = *(v0 + 264);
      v21 = *(v0 + 248);
      v47 = *(v0 + 288);
      v48 = *(v0 + 240);
      v15(v19, 0, 1, v17);
      v50 = v16;
      (*(v18 + 32))(v16, v19, v17);
      v49 = *(v18 + 16);
      v49(v47, v16, v17);
      sub_2281386EC();
      v22 = (*(v21 + 88))(v20, v48);
      if (v22 == *MEMORY[0x277D0DB88])
      {
        v23 = 53;
      }

      else
      {
        v23 = 7;
      }

      if (v22 == *MEMORY[0x277D0DB58])
      {
        v24 = 54;
      }

      else
      {
        v24 = v23;
      }

      (*(v21 + 8))(v20, v48);
      sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      v25 = swift_allocError();
      v49(v26, v47, v17);
      v27 = swift_allocObject();
      *(v27 + 16) = v24;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0;
      v28 = sub_227FF96D4(v25, 0xD000000000000079, 0x80000002281464B0, 362, sub_228088990, v27);

      v29 = *(v18 + 8);
      v29(v47, v17);
      sub_227FDB3CC();
      v30 = swift_allocError();
      *v31 = v24;
      *(v31 + 8) = v28;
      *(v0 + 176) = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
      sub_22813963C();
      v29(v50, v17);
    }

    else
    {
      v36 = *(v0 + 264);
      v15(v36, 1, 1, *(v0 + 272));
      sub_2280883AC(v36, &qword_27D81E598, &qword_22813B300);
      *(v0 + 168) = v1;
      v37 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
      sub_22813963C();
    }

    v39 = *(v0 + 200);
    v38 = *(v0 + 208);
    v40 = *(v0 + 192);
    sub_22810B5D0(*(v0 + 376), v40, v1);
    v41 = v1;
    sub_2280D4DD0(v40, v38, v1);
    v42 = v39 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v43 = *(v0 + 192);
      v44 = *(v42 + 8);
      ObjectType = swift_getObjectType();
      (*(v44 + 8))(v43, v38, v1, ObjectType, v44);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v46 = *(v0 + 8);

    return v46();
  }

  else
  {
    v32 = v10;
    v33 = v11;
    v34 = swift_task_alloc();
    *(v0 + 416) = v34;
    *v34 = v0;
    v34[1] = sub_228067A98;

    return sub_2280C1424(v32, v33);
  }
}

uint64_t sub_228067A98(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 424) = a1;
  *(v3 + 432) = v1;

  if (v1)
  {
    v4 = sub_228068DBC;
  }

  else
  {
    v4 = sub_228068060;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_228067BD4()
{
  v1 = v0[49];
  v0[20] = v1;
  v2 = v0[35];
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v7 = v0[36];
    v6 = v0[37];
    v8 = v0[34];
    v9 = v0[35];
    v11 = v0[32];
    v10 = v0[33];
    v12 = v0[31];
    v36 = v0[30];
    v5(v10, 0, 1, v8);
    v37 = v6;
    (*(v9 + 32))(v6, v10, v8);
    v13 = *(v9 + 16);
    v13(v7, v6, v8);
    sub_2281386EC();
    v14 = (*(v12 + 88))(v11, v36);
    if (v14 == *MEMORY[0x277D0DB88])
    {
      v15 = 53;
    }

    else
    {
      v15 = 7;
    }

    if (v14 == *MEMORY[0x277D0DB58])
    {
      v16 = 54;
    }

    else
    {
      v16 = v15;
    }

    (*(v12 + 8))(v11, v36);
    sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v17 = swift_allocError();
    v13(v18, v7, v8);
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    v20 = sub_227FF96D4(v17, 0xD000000000000079, 0x80000002281464B0, 362, sub_228088990, v19);

    v21 = *(v9 + 8);
    v21(v7, v8);
    sub_227FDB3CC();
    v22 = swift_allocError();
    *v23 = v16;
    *(v23 + 8) = v20;
    v0[22] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
    sub_22813963C();
    v21(v37, v8);
  }

  else
  {
    v24 = v0[33];
    v5(v24, 1, 1, v0[34]);
    sub_2280883AC(v24, &qword_27D81E598, &qword_22813B300);
    v0[21] = v1;
    v25 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
    sub_22813963C();
  }

  v27 = v0[25];
  v26 = v0[26];
  v28 = v0[24];
  sub_22810B5D0(v0[47], v28, v1);
  v29 = v1;
  sub_2280D4DD0(v28, v26, v1);
  v30 = v27 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = v0[24];
    v32 = *(v30 + 8);
    ObjectType = swift_getObjectType();
    (*(v32 + 8))(v31, v26, v1, ObjectType, v32);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_228068060()
{
  v42 = v0;
  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v3 = *(*v2 + 240);
  v4 = *(*v2 + 248);
  v5 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v4(&v40, v5);

    if ((v40 & 1) == 0)
    {
LABEL_14:
      if (qword_2813C49A8 != -1)
      {
        swift_once();
      }

      v6 = __swift_project_value_buffer(v0[39], qword_2813C89F0);
      if (qword_2813C49C8 != -1)
      {
        swift_once();
      }

      if ((byte_2813C49D0 & 1) == 0)
      {
        if (qword_2813C4988 != -1)
        {
          swift_once();
        }

        v6 = __swift_project_value_buffer(v0[39], qword_2813C4990);
      }

      (*(v0[40] + 16))(v0[41], v6, v0[39]);
      v7 = sub_22813880C();
      v8 = sub_2281396BC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_227FC3000, v7, v8, "checkSupportedLanguage skipped; internal supportedLanguageCheckEnabled setting is false", v9, 2u);
        MEMORY[0x22AAB28A0](v9, -1, -1);
      }

      v11 = v0[40];
      v10 = v0[41];
      v12 = v0[39];

      (*(v11 + 8))(v10, v12);
      sub_2281370CC();
      (*(v0[43] + 16))(v0[44], v0[46], v0[42]);
      v13 = sub_22813880C();
      v14 = sub_2281396BC();
      v15 = os_log_type_enabled(v13, v14);
      v17 = v0[43];
      v16 = v0[44];
      v18 = v0[42];
      if (v15)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v41 = v20;
        *v19 = 136446210;
        v39 = sub_228136FEC();
        v22 = v21;
        v23 = *(v17 + 8);
        v23(v16, v18);
        v24 = sub_227FCC340(v39, v22, &v41);

        *(v19 + 4) = v24;
        _os_log_impl(&dword_227FC3000, v13, v14, "Locale used for inference: %{public}s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_7(v20);
        MEMORY[0x22AAB28A0](v20, -1, -1);
        MEMORY[0x22AAB28A0](v19, -1, -1);
      }

      else
      {

        v23 = *(v17 + 8);
        v23(v16, v18);
      }

      v0[57] = v23;
      v30 = v0[53];
      v31 = v0[38];
      v32 = v0[26];
      sub_22808764C(v0[24], (v0 + 15));

      sub_22806D8EC(v30, v0 + 15, v32, v31);
      if (qword_2813C8758 != -1)
      {
        swift_once();
      }

      v33 = v0[38];
      v34 = v0[29];
      v35 = v0[25];
      v36 = swift_task_alloc();
      v0[58] = v36;
      v36[2] = v33;
      v36[3] = v35;
      v36[4] = v34;
      v37 = swift_task_alloc();
      v0[59] = v37;
      *v37 = v0;
      v37[1] = sub_228068AC8;
      v38 = v0[46];
      v44 = 342;
      v45 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200908](v37, v38, &unk_22813E1C0, v36, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
    }
  }

  else
  {

    if (!v3)
    {
      goto LABEL_14;
    }
  }

  v25 = swift_task_alloc();
  v0[55] = v25;
  *v25 = v0;
  v25[1] = sub_2280686D4;
  v26 = v0[53];
  v27 = v0[45];
  v28 = v0[24];

  return sub_228069BB4(v27, v26, v28);
}

uint64_t sub_2280686D4()
{
  *(*v1 + 448) = v0;

  if (v0)
  {

    v2 = sub_228069250;
  }

  else
  {
    v2 = sub_2280687F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2280687F0()
{
  v25 = v0;
  (*(v0[43] + 32))(v0[46], v0[45], v0[42]);
  (*(v0[43] + 16))(v0[44], v0[46], v0[42]);
  v1 = sub_22813880C();
  v2 = sub_2281396BC();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[42];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136446210;
    v23 = sub_228136FEC();
    v10 = v9;
    v11 = *(v5 + 8);
    v11(v4, v6);
    v12 = sub_227FCC340(v23, v10, &v24);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_227FC3000, v1, v2, "Locale used for inference: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v8);
    MEMORY[0x22AAB28A0](v8, -1, -1);
    MEMORY[0x22AAB28A0](v7, -1, -1);
  }

  else
  {

    v11 = *(v5 + 8);
    v11(v4, v6);
  }

  v0[57] = v11;
  v13 = v0[53];
  v14 = v0[38];
  v15 = v0[26];
  sub_22808764C(v0[24], (v0 + 15));

  sub_22806D8EC(v13, v0 + 15, v15, v14);
  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v16 = v0[38];
  v17 = v0[29];
  v18 = v0[25];
  v19 = swift_task_alloc();
  v0[58] = v19;
  v19[2] = v16;
  v19[3] = v18;
  v19[4] = v17;
  v20 = swift_task_alloc();
  v0[59] = v20;
  *v20 = v0;
  v20[1] = sub_228068AC8;
  v21 = v0[46];
  v27 = 342;
  v28 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200908](v20, v21, &unk_22813E1C0, v19, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
}

uint64_t sub_228068AC8()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_2280696E4;
  }

  else
  {
    v2 = sub_228068BFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228068BFC()
{
  *(v0 + 184) = 0;
  v1 = *(v0 + 376);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
  sub_22813963C();
  sub_22810B54C(v1, v4);
  sub_2280D4DD0(v4, v2, 0);
  v5 = v3 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 192);
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(v7, v6, 0, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  v10 = *(v0 + 304);
  (*(v0 + 456))(*(v0 + 368), *(v0 + 336));
  sub_228085A2C(v0 + 16);
  sub_228084CF0(v10, type metadata accessor for PartialSummariesOperation);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_228068DBC()
{
  sub_228085A2C((v0 + 2));
  v1 = v0[54];
  v0[20] = v1;
  v2 = v0[35];
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v7 = v0[36];
    v6 = v0[37];
    v8 = v0[34];
    v9 = v0[35];
    v11 = v0[32];
    v10 = v0[33];
    v12 = v0[31];
    v36 = v0[30];
    v5(v10, 0, 1, v8);
    v37 = v6;
    (*(v9 + 32))(v6, v10, v8);
    v13 = *(v9 + 16);
    v13(v7, v6, v8);
    sub_2281386EC();
    v14 = (*(v12 + 88))(v11, v36);
    if (v14 == *MEMORY[0x277D0DB88])
    {
      v15 = 53;
    }

    else
    {
      v15 = 7;
    }

    if (v14 == *MEMORY[0x277D0DB58])
    {
      v16 = 54;
    }

    else
    {
      v16 = v15;
    }

    (*(v12 + 8))(v11, v36);
    sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v17 = swift_allocError();
    v13(v18, v7, v8);
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    v20 = sub_227FF96D4(v17, 0xD000000000000079, 0x80000002281464B0, 362, sub_228088990, v19);

    v21 = *(v9 + 8);
    v21(v7, v8);
    sub_227FDB3CC();
    v22 = swift_allocError();
    *v23 = v16;
    *(v23 + 8) = v20;
    v0[22] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
    sub_22813963C();
    v21(v37, v8);
  }

  else
  {
    v24 = v0[33];
    v5(v24, 1, 1, v0[34]);
    sub_2280883AC(v24, &qword_27D81E598, &qword_22813B300);
    v0[21] = v1;
    v25 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
    sub_22813963C();
  }

  v27 = v0[25];
  v26 = v0[26];
  v28 = v0[24];
  sub_22810B5D0(v0[47], v28, v1);
  v29 = v1;
  sub_2280D4DD0(v28, v26, v1);
  v30 = v27 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = v0[24];
    v32 = *(v30 + 8);
    ObjectType = swift_getObjectType();
    (*(v32 + 8))(v31, v26, v1, ObjectType, v32);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_228069250()
{
  sub_228085A2C((v0 + 2));
  v1 = v0[56];
  v0[20] = v1;
  v2 = v0[35];
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v7 = v0[36];
    v6 = v0[37];
    v8 = v0[34];
    v9 = v0[35];
    v11 = v0[32];
    v10 = v0[33];
    v12 = v0[31];
    v36 = v0[30];
    v5(v10, 0, 1, v8);
    v37 = v6;
    (*(v9 + 32))(v6, v10, v8);
    v13 = *(v9 + 16);
    v13(v7, v6, v8);
    sub_2281386EC();
    v14 = (*(v12 + 88))(v11, v36);
    if (v14 == *MEMORY[0x277D0DB88])
    {
      v15 = 53;
    }

    else
    {
      v15 = 7;
    }

    if (v14 == *MEMORY[0x277D0DB58])
    {
      v16 = 54;
    }

    else
    {
      v16 = v15;
    }

    (*(v12 + 8))(v11, v36);
    sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v17 = swift_allocError();
    v13(v18, v7, v8);
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    v20 = sub_227FF96D4(v17, 0xD000000000000079, 0x80000002281464B0, 362, sub_228088990, v19);

    v21 = *(v9 + 8);
    v21(v7, v8);
    sub_227FDB3CC();
    v22 = swift_allocError();
    *v23 = v16;
    *(v23 + 8) = v20;
    v0[22] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
    sub_22813963C();
    v21(v37, v8);
  }

  else
  {
    v24 = v0[33];
    v5(v24, 1, 1, v0[34]);
    sub_2280883AC(v24, &qword_27D81E598, &qword_22813B300);
    v0[21] = v1;
    v25 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
    sub_22813963C();
  }

  v27 = v0[25];
  v26 = v0[26];
  v28 = v0[24];
  sub_22810B5D0(v0[47], v28, v1);
  v29 = v1;
  sub_2280D4DD0(v28, v26, v1);
  v30 = v27 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = v0[24];
    v32 = *(v30 + 8);
    ObjectType = swift_getObjectType();
    (*(v32 + 8))(v31, v26, v1, ObjectType, v32);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_2280696E4()
{
  v1 = *(v0 + 304);
  (*(v0 + 456))(*(v0 + 368), *(v0 + 336));
  sub_228085A2C(v0 + 16);
  sub_228084CF0(v1, type metadata accessor for PartialSummariesOperation);
  v2 = *(v0 + 480);
  *(v0 + 160) = v2;
  v3 = *(v0 + 280);
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v5 = swift_dynamicCast();
  v6 = *(v3 + 56);
  if (v5)
  {
    v8 = *(v0 + 288);
    v7 = *(v0 + 296);
    v9 = *(v0 + 272);
    v10 = *(v0 + 280);
    v12 = *(v0 + 256);
    v11 = *(v0 + 264);
    v13 = *(v0 + 248);
    v37 = *(v0 + 240);
    v6(v11, 0, 1, v9);
    v38 = v7;
    (*(v10 + 32))(v7, v11, v9);
    v14 = *(v10 + 16);
    v14(v8, v7, v9);
    sub_2281386EC();
    v15 = (*(v13 + 88))(v12, v37);
    if (v15 == *MEMORY[0x277D0DB88])
    {
      v16 = 53;
    }

    else
    {
      v16 = 7;
    }

    if (v15 == *MEMORY[0x277D0DB58])
    {
      v17 = 54;
    }

    else
    {
      v17 = v16;
    }

    (*(v13 + 8))(v12, v37);
    sub_228084BB4(&qword_27D81E5A8, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
    v18 = swift_allocError();
    v14(v19, v8, v9);
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0;
    v21 = sub_227FF96D4(v18, 0xD000000000000079, 0x80000002281464B0, 362, sub_228088990, v20);

    v22 = *(v10 + 8);
    v22(v8, v9);
    sub_227FDB3CC();
    v23 = swift_allocError();
    *v24 = v17;
    *(v24 + 8) = v21;
    *(v0 + 176) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
    sub_22813963C();
    v22(v38, v9);
  }

  else
  {
    v25 = *(v0 + 264);
    v6(v25, 1, 1, *(v0 + 272));
    sub_2280883AC(v25, &qword_27D81E598, &qword_22813B300);
    *(v0 + 168) = v2;
    v26 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
    sub_22813963C();
  }

  v28 = *(v0 + 200);
  v27 = *(v0 + 208);
  v29 = *(v0 + 192);
  sub_22810B5D0(*(v0 + 376), v29, v2);
  v30 = v2;
  sub_2280D4DD0(v29, v27, v2);
  v31 = v28 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_analyticsDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v0 + 192);
    v33 = *(v31 + 8);
    ObjectType = swift_getObjectType();
    (*(v33 + 8))(v32, v27, v2, ObjectType, v33);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_228069BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECC8, &qword_22813E1D0);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECD0, &qword_22813E1D8);
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v6 = sub_22813713C();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  v4[26] = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  v4[27] = swift_task_alloc();
  v7 = sub_22813716C();
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_228069E44, 0, 0);
}

uint64_t sub_228069E44()
{
  v1 = *(v0 + 88);
  v2 = v1[2];
  *(v0 + 280) = v2;
  if (v2)
  {
    v3 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration;
    v4 = MEMORY[0x277D84F90];
    *(v0 + 296) = 0;
    *(v0 + 304) = v4;
    *(v0 + 288) = v3;
    v32 = v1[4];
    *(v0 + 312) = v32;
    v5 = v1[5];
    *(v0 + 320) = v5;
    v6 = qword_2813C4950;

    if (v6 != -1)
    {
      swift_once();
      v1 = *(v0 + 88);
    }

    v7 = *(v0 + 208);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v10 = *(v0 + 96);
    v11 = type metadata accessor for Signpost(0);
    *(v0 + 328) = __swift_project_value_buffer(v11, qword_2813C8948);
    sub_22808764C(v10, v0 + 16);
    v12 = swift_allocObject();
    *(v0 + 336) = v12;
    sub_227FD0F5C((v0 + 16), v12 + 16);
    *(v12 + 56) = v1;
    v13 = swift_allocObject();
    *(v0 + 344) = v13;
    *(v13 + 16) = sub_228085B34;
    *(v13 + 24) = v12;

    sub_2281324C4();
    v14 = *(v8 + 56);

    v14(v7, 1, 1, v9);
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 288);
    v16 = *(v0 + 104);
    v17 = sub_22813882C();
    v18 = __swift_project_value_buffer(v17, qword_2813C8A20);
    *(v0 + 352) = v18;
    v19 = swift_task_alloc();
    *(v0 + 360) = v19;
    *v19 = v0;
    v19[1] = sub_22806A300;
    v20 = *(v0 + 264);
    v21 = *(v0 + 208);
    v22 = *(v0 + 96);

    return sub_2280C5BB0(v20, v32, v5, v21, v16 + v15, v22, v18);
  }

  else
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v24 = sub_22813882C();
    __swift_project_value_buffer(v24, qword_2813C8A20);
    v25 = sub_22813880C();
    v26 = sub_2281396BC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_227FC3000, v25, v26, "No chunks to determine dominant language from.", v27, 2u);
      MEMORY[0x22AAB28A0](v27, -1, -1);
    }

    v28 = swift_allocObject();
    *(v28 + 16) = 23;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0;
    v29 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, 608, sub_22808899C, v28);
    sub_227FDB3CC();
    swift_allocError();
    *v30 = 23;
    *(v30 + 8) = v29;
    swift_willThrow();

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_22806A300()
{
  *(*v1 + 368) = v0;

  if (v0)
  {

    v2 = sub_22806B1F8;
  }

  else
  {
    v2 = sub_22806A41C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22806A41C()
{
  if (byte_283B5B3C8 <= 1u && !byte_283B5B3C8)
  {

LABEL_5:
    v2 = *(v0 + 288);
    v3 = *(v0 + 104);
    sub_22813715C();
    v4 = swift_task_alloc();
    *(v0 + 376) = v4;
    *v4 = v0;
    v4[1] = sub_22806BE88;
    v5 = *(v0 + 200);
    v6 = *(v0 + 96);

    return sub_22804CDFC(v5, v3 + v2, v6);
  }

  v1 = sub_2281399BC();

  if (v1)
  {
    goto LABEL_5;
  }

  v9 = *(v0 + 264);
  v8 = *(v0 + 272);
  v10 = *(v0 + 224);
  v11 = *(v0 + 232);
  v12 = *(v0 + 216);
  v13 = *(v0 + 176);
  v106 = *(v0 + 144);
  sub_2280883AC(*(v0 + 208), &qword_27D81E778, &qword_22813BC80);
  (*(v11 + 32))(v8, v9, v10);
  sub_2281324D4();

  sub_228084CF0(v12, type metadata accessor for SignpostToken);

  v14 = sub_22813936C();

  v15 = *(v106 + 48);
  (*(v11 + 16))(v13, v8, v10);
  *(v13 + v15) = v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v0 + 304);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_60:
    v17 = sub_228133DEC(0, *(v17 + 16) + 1, 1, v17);
  }

  v19 = *(v17 + 16);
  v18 = *(v17 + 24);
  if (v19 >= v18 >> 1)
  {
    v17 = sub_228133DEC((v18 > 1), v19 + 1, 1, v17);
  }

  v20 = *(v0 + 176);
  v21 = *(v0 + 152);
  (*(*(v0 + 232) + 8))(*(v0 + 272), *(v0 + 224));
  *(v17 + 16) = v19 + 1;
  sub_228085C84(v20, v17 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, &qword_27D81ECD0, &qword_22813E1D8);
  v22 = *(v0 + 280);
  v23 = *(v0 + 296) + 1;
  if (v23 == v22)
  {
    v24 = *(v17 + 16);
    v25 = v22 - v24;
    v26 = v22 >> 1;
    if (v26 >= v25)
    {
      if (v24)
      {
        v97 = v26;
        v53 = *(v0 + 160);
        v54 = *(v0 + 256);
        v56 = *(v0 + 224);
        v55 = *(v0 + 232);
        v57 = *(v0 + 168);
        v58 = *(v0 + 144);
        v111 = *(v0 + 152);
        v59 = v17 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
        sub_228088344(v59, v57, &qword_27D81ECD0, &qword_22813E1D8);
        v105 = v55[4];
        v105(v54, v57, v56);
        v101 = *(v58 + 48);
        v98 = v55[2];
        v98(v53, v54, v56);
        v102 = v59;
        sub_228088344(v59, v57, &qword_27D81ECD0, &qword_22813E1D8);
        v60 = v55[1];
        v61 = *(v57 + *(v58 + 48));
        v100 = v53;
        *(v53 + v101) = v61;
        v108 = v60;
        v60(v57, v56);
        v62 = *(v17 + 16);
        v107 = (v111 + 56);
        v63 = (v111 + 48);
        v99 = (v55 + 3);
        v103 = v17;

        v64 = 0;
        v17 = 0;
        v104 = v62;
        while (1)
        {
          if (v17 == v62)
          {
            v70 = 1;
            v17 = v62;
          }

          else
          {
            if (v17 >= *(v103 + 16))
            {
              goto LABEL_58;
            }

            sub_228088344(v102 + *(*(v0 + 152) + 72) * v17, *(v0 + 128), &qword_27D81ECD0, &qword_22813E1D8);
            v70 = 0;
            ++v17;
          }

          v72 = *(v0 + 136);
          v71 = *(v0 + 144);
          v73 = *(v0 + 128);
          v74 = *v107;
          (*v107)(v73, v70, 1, v71);
          sub_228085C84(v73, v72, &qword_27D81ECC8, &qword_22813E1D0);
          v75 = *v63;
          if ((*v63)(v72, 1, v71) == 1)
          {
            break;
          }

          v76 = *(*(v0 + 136) + *(*(v0 + 144) + 48));
          (v105)(*(v0 + 248));
          if (v61 < v76)
          {
            (*v99)(*(v0 + 160), *(v0 + 248), *(v0 + 224));
            *(v100 + v101) = v76;
            v61 = v76;
          }

          if (!v64)
          {
            v78 = *(v0 + 248);
            v77 = *(v0 + 256);
            v79 = *(v0 + 224);
            v108(v77, v79);
            v98(v77, v78, v79);
          }

          v65 = *(v0 + 248);
          v66 = *(v0 + 224);
          v67 = MEMORY[0x22AAAF600](v65, *(v0 + 256));
          v108(v65, v66);
          v68 = 1;
          if ((v67 & 1) == 0)
          {
            v68 = -1;
          }

          v69 = __OFADD__(v64, v68);
          v64 += v68;
          v62 = v104;
          if (v69)
          {
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }
        }

        v17 = 0;
        v80 = 0;
        v81 = v104;
        while (1)
        {
          if (v80 == v81)
          {
            v82 = 1;
            v80 = v81;
          }

          else
          {
            if (v80 >= *(v103 + 16))
            {
              goto LABEL_59;
            }

            sub_228088344(v102 + *(*(v0 + 152) + 72) * v80, *(v0 + 112), &qword_27D81ECD0, &qword_22813E1D8);
            v82 = 0;
            ++v80;
          }

          v83 = *(v0 + 144);
          v85 = *(v0 + 112);
          v84 = *(v0 + 120);
          v74(v85, v82, 1, v83);
          sub_228085C84(v85, v84, &qword_27D81ECC8, &qword_22813E1D0);
          if (v75(v84, 1, v83) == 1)
          {
            break;
          }

          v86 = *(v0 + 256);
          v87 = *(v0 + 240);
          v88 = *(v0 + 224);
          v105(v87, *(v0 + 120), v88);
          LOBYTE(v86) = MEMORY[0x22AAAF600](v87, v86);
          v108(v87, v88);
          v81 = v104;
          if (v86)
          {
            v69 = __OFADD__(v17++, 1);
            if (v69)
            {
              __break(1u);
              break;
            }
          }
        }

        v89 = (v0 + 256);
        if (v97 >= v17)
        {
          v108(*(v0 + 256), *(v0 + 224));
          v105 = v98;
          v89 = (v0 + 160);
        }

        v90 = *(v0 + 160);
        v105(*(v0 + 80), *v89, *(v0 + 224));
        sub_2280883AC(v90, &qword_27D81ECD0, &qword_22813E1D8);

        v91 = *(v0 + 8);
        goto LABEL_54;
      }

      v92 = sub_22813880C();
      v93 = sub_2281396BC();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_227FC3000, v92, v93, "Candidate list of locales is empty, cannot determine majority locale.", v94, 2u);
        MEMORY[0x22AAB28A0](v94, -1, -1);
      }

      v30 = swift_allocObject();
      v109 = 23;
      *(v30 + 16) = 23;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0;
      v31 = sub_228088994;
      v32 = 650;
    }

    else
    {

      v27 = sub_22813880C();
      v28 = sub_2281396BC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_227FC3000, v27, v28, "A majority of the chunks from this request are unsupported.", v29, 2u);
        MEMORY[0x22AAB28A0](v29, -1, -1);
      }

      v30 = swift_allocObject();
      v109 = 17;
      *(v30 + 16) = 17;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0;
      v31 = sub_228088998;
      v32 = 645;
    }

    v95 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, v32, v31, v30);
    sub_227FDB3CC();
    swift_allocError();
    *v96 = v109;
    *(v96 + 8) = v95;
    swift_willThrow();

    v91 = *(v0 + 8);
LABEL_54:

    return v91();
  }

  *(v0 + 296) = v23;
  *(v0 + 304) = v17;
  v33 = *(v0 + 88);
  v34 = v33 + 16 * v23;
  v110 = *(v34 + 32);
  *(v0 + 312) = v110;
  v35 = *(v34 + 40);
  *(v0 + 320) = v35;
  v36 = qword_2813C4950;

  if (v36 != -1)
  {
    swift_once();
    v33 = *(v0 + 88);
  }

  v37 = *(v0 + 208);
  v39 = *(v0 + 184);
  v38 = *(v0 + 192);
  v40 = *(v0 + 96);
  v41 = type metadata accessor for Signpost(0);
  *(v0 + 328) = __swift_project_value_buffer(v41, qword_2813C8948);
  sub_22808764C(v40, v0 + 16);
  v42 = swift_allocObject();
  *(v0 + 336) = v42;
  sub_227FD0F5C((v0 + 16), v42 + 16);
  *(v42 + 56) = v33;
  v43 = swift_allocObject();
  *(v0 + 344) = v43;
  *(v43 + 16) = sub_228085B34;
  *(v43 + 24) = v42;

  sub_2281324C4();
  v44 = *(v38 + 56);

  v44(v37, 1, 1, v39);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 288);
  v46 = *(v0 + 104);
  v47 = sub_22813882C();
  v48 = __swift_project_value_buffer(v47, qword_2813C8A20);
  *(v0 + 352) = v48;
  v49 = swift_task_alloc();
  *(v0 + 360) = v49;
  *v49 = v0;
  v49[1] = sub_22806A300;
  v50 = *(v0 + 264);
  v51 = *(v0 + 208);
  v52 = *(v0 + 96);

  return sub_2280C5BB0(v50, v110, v35, v51, v46 + v45, v52, v48);
}

uint64_t sub_22806B1F8()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 336);
  v4 = *(v0 + 216);
  sub_2280883AC(*(v0 + 208), &qword_27D81E778, &qword_22813BC80);

  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = sub_228085B34;
  v5[4] = v3;
  swift_beginAccess();
  *(v2 + 16) = sub_228085B40;
  *(v2 + 24) = v5;

  v6 = v1;

  swift_willThrow();
  sub_2281324D4();

  sub_228084CF0(v4, type metadata accessor for SignpostToken);

  v7 = v1;
  v8 = sub_22813880C();
  v9 = sub_2281396DC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_227FC3000, v8, v9, "Failed to check language for chunk: %@", v10, 0xCu);
    sub_2280883AC(v11, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v11, -1, -1);
    MEMORY[0x22AAB28A0](v10, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 296) + 1;
  if (v15 == v14)
  {
    v16 = *(v0 + 304);
    v17 = *(v16 + 16);
    v18 = v14 - v17;
    v19 = v14 >> 1;
    if (v19 >= v18)
    {
      if (v17)
      {
        v91 = v19;
        v47 = *(v0 + 160);
        v48 = *(v0 + 256);
        v50 = *(v0 + 224);
        v49 = *(v0 + 232);
        v51 = *(v0 + 168);
        v52 = *(v0 + 144);
        v104 = *(v0 + 152);
        v53 = v16 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
        v97 = *(v0 + 304);
        sub_228088344(v53, v51, &qword_27D81ECD0, &qword_22813E1D8);
        v99 = v49[4];
        v99(v48, v51, v50);
        v54 = *(v52 + 48);
        v92 = v49[2];
        v92(v47, v48, v50);
        v96 = v53;
        sub_228088344(v53, v51, &qword_27D81ECD0, &qword_22813E1D8);
        v55 = v49[1];
        v56 = *(v51 + *(v52 + 48));
        v94 = v54;
        v95 = v47;
        *(v47 + v54) = v56;
        v101 = v55;
        v55(v51, v50);
        v57 = *(v97 + 16);
        v100 = (v104 + 56);
        v58 = (v104 + 48);
        v103 = (v49 + 1);
        v93 = (v49 + 3);

        v28 = 0;
        v59 = 0;
        v98 = v57;
        while (1)
        {
          if (v59 == v57)
          {
            v65 = 1;
            v59 = v57;
          }

          else
          {
            if (v59 >= *(v97 + 16))
            {
              goto LABEL_50;
            }

            sub_228088344(v96 + *(*(v0 + 152) + 72) * v59, *(v0 + 128), &qword_27D81ECD0, &qword_22813E1D8);
            v65 = 0;
            ++v59;
          }

          v66 = *(v0 + 136);
          v67 = *(v0 + 144);
          v68 = *(v0 + 128);
          v69 = *v100;
          (*v100)(v68, v65, 1, v67);
          sub_228085C84(v68, v66, &qword_27D81ECC8, &qword_22813E1D0);
          v70 = *v58;
          if ((*v58)(v66, 1, v67) == 1)
          {
            break;
          }

          v71 = *(*(v0 + 136) + *(*(v0 + 144) + 48));
          (v99)(*(v0 + 248));
          if (v56 < v71)
          {
            (*v93)(*(v0 + 160), *(v0 + 248), *(v0 + 224));
            *(v95 + v94) = v71;
            v56 = v71;
          }

          if (!v28)
          {
            v73 = *(v0 + 248);
            v72 = *(v0 + 256);
            v74 = *(v0 + 224);
            v101(v72, v74);
            v92(v72, v73, v74);
          }

          v60 = *(v0 + 248);
          v61 = *(v0 + 224);
          v62 = MEMORY[0x22AAAF600](v60, *(v0 + 256));
          v101(v60, v61);
          v63 = 1;
          if ((v62 & 1) == 0)
          {
            v63 = -1;
          }

          v64 = __OFADD__(v28, v63);
          v28 += v63;
          v57 = v98;
          if (v64)
          {
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }
        }

        v28 = 0;
        v75 = 0;
        while (1)
        {
          if (v75 == v98)
          {
            v76 = 1;
            v75 = v98;
          }

          else
          {
            if (v75 >= *(v97 + 16))
            {
              goto LABEL_51;
            }

            sub_228088344(v96 + *(*(v0 + 152) + 72) * v75, *(v0 + 112), &qword_27D81ECD0, &qword_22813E1D8);
            v76 = 0;
            ++v75;
          }

          v77 = *(v0 + 144);
          v79 = *(v0 + 112);
          v78 = *(v0 + 120);
          v69(v79, v76, 1, v77);
          sub_228085C84(v79, v78, &qword_27D81ECC8, &qword_22813E1D0);
          if (v70(v78, 1, v77) == 1)
          {
            break;
          }

          v80 = *(v0 + 256);
          v81 = *(v0 + 240);
          v82 = *(v0 + 224);
          v99(v81, *(v0 + 120), v82);
          LOBYTE(v80) = MEMORY[0x22AAAF600](v81, v80);
          v101(v81, v82);
          if (v80)
          {
            v64 = __OFADD__(v28++, 1);
            if (v64)
            {
              __break(1u);
              break;
            }
          }
        }

        v83 = (v0 + 256);
        if (v91 >= v28)
        {
          v101(*(v0 + 256), *(v0 + 224));
          v99 = v92;
          v83 = (v0 + 160);
        }

        v84 = *(v0 + 160);
        v99(*(v0 + 80), *v83, *(v0 + 224));
        sub_2280883AC(v84, &qword_27D81ECD0, &qword_22813E1D8);

        v85 = *(v0 + 8);
        goto LABEL_46;
      }

      v86 = sub_22813880C();
      v87 = sub_2281396BC();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_227FC3000, v86, v87, "Candidate list of locales is empty, cannot determine majority locale.", v88, 2u);
        MEMORY[0x22AAB28A0](v88, -1, -1);
      }

      v23 = swift_allocObject();
      v102 = 23;
      *(v23 + 16) = 23;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      v24 = sub_228088994;
      v25 = 650;
    }

    else
    {

      v20 = sub_22813880C();
      v21 = sub_2281396BC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_227FC3000, v20, v21, "A majority of the chunks from this request are unsupported.", v22, 2u);
        MEMORY[0x22AAB28A0](v22, -1, -1);
      }

      v23 = swift_allocObject();
      v102 = 17;
      *(v23 + 16) = 17;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      v24 = sub_228088998;
      v25 = 645;
    }

    v89 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, v25, v24, v23);
    sub_227FDB3CC();
    swift_allocError();
    *v90 = v102;
    *(v90 + 8) = v89;
    swift_willThrow();

    v85 = *(v0 + 8);
LABEL_46:

    return v85();
  }

  *(v0 + 296) = v15;
  v26 = *(v0 + 88);
  v27 = v26 + 16 * v15;
  v103 = *(v27 + 32);
  *(v0 + 312) = v103;
  v28 = *(v27 + 40);
  *(v0 + 320) = v28;
  v29 = qword_2813C4950;

  if (v29 != -1)
  {
LABEL_52:
    swift_once();
    v26 = *(v0 + 88);
  }

  v30 = *(v0 + 208);
  v32 = *(v0 + 184);
  v31 = *(v0 + 192);
  v33 = *(v0 + 96);
  v34 = type metadata accessor for Signpost(0);
  *(v0 + 328) = __swift_project_value_buffer(v34, qword_2813C8948);
  sub_22808764C(v33, v0 + 16);
  v35 = swift_allocObject();
  *(v0 + 336) = v35;
  sub_227FD0F5C((v0 + 16), v35 + 16);
  *(v35 + 56) = v26;
  v36 = swift_allocObject();
  *(v0 + 344) = v36;
  *(v36 + 16) = sub_228085B34;
  *(v36 + 24) = v35;

  sub_2281324C4();
  v37 = *(v31 + 56);

  v37(v30, 1, 1, v32);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 288);
  v39 = *(v0 + 104);
  v40 = sub_22813882C();
  v41 = __swift_project_value_buffer(v40, qword_2813C8A20);
  *(v0 + 352) = v41;
  v42 = swift_task_alloc();
  *(v0 + 360) = v42;
  *v42 = v0;
  v42[1] = sub_22806A300;
  v43 = *(v0 + 264);
  v44 = *(v0 + 208);
  v45 = *(v0 + 96);

  return sub_2280C5BB0(v43, v103, v28, v44, v39 + v38, v45, v41);
}

uint64_t sub_22806BE88()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = v2[24];
    v3 = v2[25];
    v5 = v2[23];

    (*(v4 + 8))(v3, v5);
    v6 = sub_22806CC44;
  }

  else
  {
    (*(v2[24] + 8))(v2[25], v2[23]);
    v6 = sub_22806BFE4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22806BFE4()
{

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  v6 = *(v0 + 176);
  v100 = *(v0 + 144);
  sub_2280883AC(*(v0 + 208), &qword_27D81E778, &qword_22813BC80);
  (*(v4 + 32))(v1, v2, v3);
  sub_2281324D4();

  sub_228084CF0(v5, type metadata accessor for SignpostToken);

  v7 = sub_22813936C();

  v8 = *(v100 + 48);
  (*(v4 + 16))(v6, v1, v3);
  *(v6 + v8) = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 304);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_53:
    v10 = sub_228133DEC(0, *(v10 + 16) + 1, 1, v10);
  }

  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_228133DEC((v11 > 1), v12 + 1, 1, v10);
  }

  v13 = *(v0 + 176);
  v14 = *(v0 + 152);
  (*(*(v0 + 232) + 8))(*(v0 + 272), *(v0 + 224));
  *(v10 + 16) = v12 + 1;
  sub_228085C84(v13, v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12, &qword_27D81ECD0, &qword_22813E1D8);
  v15 = *(v0 + 280);
  v16 = *(v0 + 296) + 1;
  if (v16 == v15)
  {
    v17 = *(v10 + 16);
    v18 = v15 - v17;
    v19 = v15 >> 1;
    if (v19 >= v18)
    {
      if (v17)
      {
        v91 = v19;
        v47 = *(v0 + 160);
        v48 = *(v0 + 256);
        v50 = *(v0 + 224);
        v49 = *(v0 + 232);
        v51 = *(v0 + 168);
        v52 = *(v0 + 144);
        v105 = *(v0 + 152);
        v53 = v10 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
        sub_228088344(v53, v51, &qword_27D81ECD0, &qword_22813E1D8);
        v99 = v49[4];
        v99(v48, v51, v50);
        v95 = *(v52 + 48);
        v92 = v49[2];
        v92(v47, v48, v50);
        v96 = v53;
        sub_228088344(v53, v51, &qword_27D81ECD0, &qword_22813E1D8);
        v54 = v49[1];
        v55 = *(v51 + *(v52 + 48));
        v94 = v47;
        *(v47 + v95) = v55;
        v102 = v54;
        v54(v51, v50);
        v56 = *(v10 + 16);
        v101 = (v105 + 56);
        v57 = (v105 + 48);
        v93 = (v49 + 3);
        v97 = v10;

        v58 = 0;
        v10 = 0;
        v98 = v56;
        while (1)
        {
          if (v10 == v56)
          {
            v64 = 1;
            v10 = v56;
          }

          else
          {
            if (v10 >= *(v97 + 16))
            {
              goto LABEL_51;
            }

            sub_228088344(v96 + *(*(v0 + 152) + 72) * v10, *(v0 + 128), &qword_27D81ECD0, &qword_22813E1D8);
            v64 = 0;
            ++v10;
          }

          v66 = *(v0 + 136);
          v65 = *(v0 + 144);
          v67 = *(v0 + 128);
          v68 = *v101;
          (*v101)(v67, v64, 1, v65);
          sub_228085C84(v67, v66, &qword_27D81ECC8, &qword_22813E1D0);
          v69 = *v57;
          if ((*v57)(v66, 1, v65) == 1)
          {
            break;
          }

          v70 = *(*(v0 + 136) + *(*(v0 + 144) + 48));
          (v99)(*(v0 + 248));
          if (v55 < v70)
          {
            (*v93)(*(v0 + 160), *(v0 + 248), *(v0 + 224));
            *(v94 + v95) = v70;
            v55 = v70;
          }

          if (!v58)
          {
            v72 = *(v0 + 248);
            v71 = *(v0 + 256);
            v73 = *(v0 + 224);
            v102(v71, v73);
            v92(v71, v72, v73);
          }

          v59 = *(v0 + 248);
          v60 = *(v0 + 224);
          v61 = MEMORY[0x22AAAF600](v59, *(v0 + 256));
          v102(v59, v60);
          v62 = 1;
          if ((v61 & 1) == 0)
          {
            v62 = -1;
          }

          v63 = __OFADD__(v58, v62);
          v58 += v62;
          v56 = v98;
          if (v63)
          {
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }
        }

        v10 = 0;
        v74 = 0;
        v75 = v98;
        while (1)
        {
          if (v74 == v75)
          {
            v76 = 1;
            v74 = v75;
          }

          else
          {
            if (v74 >= *(v97 + 16))
            {
              goto LABEL_52;
            }

            sub_228088344(v96 + *(*(v0 + 152) + 72) * v74, *(v0 + 112), &qword_27D81ECD0, &qword_22813E1D8);
            v76 = 0;
            ++v74;
          }

          v77 = *(v0 + 144);
          v79 = *(v0 + 112);
          v78 = *(v0 + 120);
          v68(v79, v76, 1, v77);
          sub_228085C84(v79, v78, &qword_27D81ECC8, &qword_22813E1D0);
          if (v69(v78, 1, v77) == 1)
          {
            break;
          }

          v80 = *(v0 + 256);
          v81 = *(v0 + 240);
          v82 = *(v0 + 224);
          v99(v81, *(v0 + 120), v82);
          LOBYTE(v80) = MEMORY[0x22AAAF600](v81, v80);
          v102(v81, v82);
          v75 = v98;
          if (v80)
          {
            v63 = __OFADD__(v10++, 1);
            if (v63)
            {
              __break(1u);
              break;
            }
          }
        }

        v83 = (v0 + 256);
        if (v91 >= v10)
        {
          v102(*(v0 + 256), *(v0 + 224));
          v99 = v92;
          v83 = (v0 + 160);
        }

        v84 = *(v0 + 160);
        v99(*(v0 + 80), *v83, *(v0 + 224));
        sub_2280883AC(v84, &qword_27D81ECD0, &qword_22813E1D8);

        v85 = *(v0 + 8);
        goto LABEL_47;
      }

      v86 = sub_22813880C();
      v87 = sub_2281396BC();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_227FC3000, v86, v87, "Candidate list of locales is empty, cannot determine majority locale.", v88, 2u);
        MEMORY[0x22AAB28A0](v88, -1, -1);
      }

      v23 = swift_allocObject();
      v103 = 23;
      *(v23 + 16) = 23;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      v24 = sub_228088994;
      v25 = 650;
    }

    else
    {

      v20 = sub_22813880C();
      v21 = sub_2281396BC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_227FC3000, v20, v21, "A majority of the chunks from this request are unsupported.", v22, 2u);
        MEMORY[0x22AAB28A0](v22, -1, -1);
      }

      v23 = swift_allocObject();
      v103 = 17;
      *(v23 + 16) = 17;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      v24 = sub_228088998;
      v25 = 645;
    }

    v89 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, v25, v24, v23);
    sub_227FDB3CC();
    swift_allocError();
    *v90 = v103;
    *(v90 + 8) = v89;
    swift_willThrow();

    v85 = *(v0 + 8);
LABEL_47:

    return v85();
  }

  *(v0 + 296) = v16;
  *(v0 + 304) = v10;
  v26 = *(v0 + 88);
  v27 = v26 + 16 * v16;
  v104 = *(v27 + 32);
  *(v0 + 312) = v104;
  v28 = *(v27 + 40);
  *(v0 + 320) = v28;
  v29 = qword_2813C4950;

  if (v29 != -1)
  {
    swift_once();
    v26 = *(v0 + 88);
  }

  v30 = *(v0 + 208);
  v32 = *(v0 + 184);
  v31 = *(v0 + 192);
  v33 = *(v0 + 96);
  v34 = type metadata accessor for Signpost(0);
  *(v0 + 328) = __swift_project_value_buffer(v34, qword_2813C8948);
  sub_22808764C(v33, v0 + 16);
  v35 = swift_allocObject();
  *(v0 + 336) = v35;
  sub_227FD0F5C((v0 + 16), v35 + 16);
  *(v35 + 56) = v26;
  v36 = swift_allocObject();
  *(v0 + 344) = v36;
  *(v36 + 16) = sub_228085B34;
  *(v36 + 24) = v35;

  sub_2281324C4();
  v37 = *(v31 + 56);

  v37(v30, 1, 1, v32);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 288);
  v39 = *(v0 + 104);
  v40 = sub_22813882C();
  v41 = __swift_project_value_buffer(v40, qword_2813C8A20);
  *(v0 + 352) = v41;
  v42 = swift_task_alloc();
  *(v0 + 360) = v42;
  *v42 = v0;
  v42[1] = sub_22806A300;
  v43 = *(v0 + 264);
  v44 = *(v0 + 208);
  v45 = *(v0 + 96);

  return sub_2280C5BB0(v43, v104, v28, v44, v39 + v38, v45, v41);
}

uint64_t sub_22806CC44()
{
  (*(*(v0 + 232) + 8))(*(v0 + 264), *(v0 + 224));
  v1 = *(v0 + 384);
  v2 = *(v0 + 344);
  v3 = *(v0 + 336);
  v4 = *(v0 + 216);
  sub_2280883AC(*(v0 + 208), &qword_27D81E778, &qword_22813BC80);

  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = sub_228085B34;
  v5[4] = v3;
  swift_beginAccess();
  *(v2 + 16) = sub_228085B40;
  *(v2 + 24) = v5;

  v6 = v1;

  swift_willThrow();
  sub_2281324D4();

  sub_228084CF0(v4, type metadata accessor for SignpostToken);

  v7 = v1;
  v8 = sub_22813880C();
  v9 = sub_2281396DC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_227FC3000, v8, v9, "Failed to check language for chunk: %@", v10, 0xCu);
    sub_2280883AC(v11, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v11, -1, -1);
    MEMORY[0x22AAB28A0](v10, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 296) + 1;
  if (v15 == v14)
  {
    v16 = *(v0 + 304);
    v17 = *(v16 + 16);
    v18 = v14 - v17;
    v19 = v14 >> 1;
    if (v19 >= v18)
    {
      if (v17)
      {
        v91 = v19;
        v47 = *(v0 + 160);
        v48 = *(v0 + 256);
        v50 = *(v0 + 224);
        v49 = *(v0 + 232);
        v51 = *(v0 + 168);
        v52 = *(v0 + 144);
        v104 = *(v0 + 152);
        v53 = v16 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
        v97 = *(v0 + 304);
        sub_228088344(v53, v51, &qword_27D81ECD0, &qword_22813E1D8);
        v99 = v49[4];
        v99(v48, v51, v50);
        v54 = *(v52 + 48);
        v92 = v49[2];
        v92(v47, v48, v50);
        v96 = v53;
        sub_228088344(v53, v51, &qword_27D81ECD0, &qword_22813E1D8);
        v55 = v49[1];
        v56 = *(v51 + *(v52 + 48));
        v94 = v54;
        v95 = v47;
        *(v47 + v54) = v56;
        v101 = v55;
        v55(v51, v50);
        v57 = *(v97 + 16);
        v100 = (v104 + 56);
        v58 = (v104 + 48);
        v103 = (v49 + 1);
        v93 = (v49 + 3);

        v28 = 0;
        v59 = 0;
        v98 = v57;
        while (1)
        {
          if (v59 == v57)
          {
            v65 = 1;
            v59 = v57;
          }

          else
          {
            if (v59 >= *(v97 + 16))
            {
              goto LABEL_50;
            }

            sub_228088344(v96 + *(*(v0 + 152) + 72) * v59, *(v0 + 128), &qword_27D81ECD0, &qword_22813E1D8);
            v65 = 0;
            ++v59;
          }

          v66 = *(v0 + 136);
          v67 = *(v0 + 144);
          v68 = *(v0 + 128);
          v69 = *v100;
          (*v100)(v68, v65, 1, v67);
          sub_228085C84(v68, v66, &qword_27D81ECC8, &qword_22813E1D0);
          v70 = *v58;
          if ((*v58)(v66, 1, v67) == 1)
          {
            break;
          }

          v71 = *(*(v0 + 136) + *(*(v0 + 144) + 48));
          (v99)(*(v0 + 248));
          if (v56 < v71)
          {
            (*v93)(*(v0 + 160), *(v0 + 248), *(v0 + 224));
            *(v95 + v94) = v71;
            v56 = v71;
          }

          if (!v28)
          {
            v73 = *(v0 + 248);
            v72 = *(v0 + 256);
            v74 = *(v0 + 224);
            v101(v72, v74);
            v92(v72, v73, v74);
          }

          v60 = *(v0 + 248);
          v61 = *(v0 + 224);
          v62 = MEMORY[0x22AAAF600](v60, *(v0 + 256));
          v101(v60, v61);
          v63 = 1;
          if ((v62 & 1) == 0)
          {
            v63 = -1;
          }

          v64 = __OFADD__(v28, v63);
          v28 += v63;
          v57 = v98;
          if (v64)
          {
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }
        }

        v28 = 0;
        v75 = 0;
        while (1)
        {
          if (v75 == v98)
          {
            v76 = 1;
            v75 = v98;
          }

          else
          {
            if (v75 >= *(v97 + 16))
            {
              goto LABEL_51;
            }

            sub_228088344(v96 + *(*(v0 + 152) + 72) * v75, *(v0 + 112), &qword_27D81ECD0, &qword_22813E1D8);
            v76 = 0;
            ++v75;
          }

          v77 = *(v0 + 144);
          v79 = *(v0 + 112);
          v78 = *(v0 + 120);
          v69(v79, v76, 1, v77);
          sub_228085C84(v79, v78, &qword_27D81ECC8, &qword_22813E1D0);
          if (v70(v78, 1, v77) == 1)
          {
            break;
          }

          v80 = *(v0 + 256);
          v81 = *(v0 + 240);
          v82 = *(v0 + 224);
          v99(v81, *(v0 + 120), v82);
          LOBYTE(v80) = MEMORY[0x22AAAF600](v81, v80);
          v101(v81, v82);
          if (v80)
          {
            v64 = __OFADD__(v28++, 1);
            if (v64)
            {
              __break(1u);
              break;
            }
          }
        }

        v83 = (v0 + 256);
        if (v91 >= v28)
        {
          v101(*(v0 + 256), *(v0 + 224));
          v99 = v92;
          v83 = (v0 + 160);
        }

        v84 = *(v0 + 160);
        v99(*(v0 + 80), *v83, *(v0 + 224));
        sub_2280883AC(v84, &qword_27D81ECD0, &qword_22813E1D8);

        v85 = *(v0 + 8);
        goto LABEL_46;
      }

      v86 = sub_22813880C();
      v87 = sub_2281396BC();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_227FC3000, v86, v87, "Candidate list of locales is empty, cannot determine majority locale.", v88, 2u);
        MEMORY[0x22AAB28A0](v88, -1, -1);
      }

      v23 = swift_allocObject();
      v102 = 23;
      *(v23 + 16) = 23;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      v24 = sub_228088994;
      v25 = 650;
    }

    else
    {

      v20 = sub_22813880C();
      v21 = sub_2281396BC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_227FC3000, v20, v21, "A majority of the chunks from this request are unsupported.", v22, 2u);
        MEMORY[0x22AAB28A0](v22, -1, -1);
      }

      v23 = swift_allocObject();
      v102 = 17;
      *(v23 + 16) = 17;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      v24 = sub_228088998;
      v25 = 645;
    }

    v89 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, v25, v24, v23);
    sub_227FDB3CC();
    swift_allocError();
    *v90 = v102;
    *(v90 + 8) = v89;
    swift_willThrow();

    v85 = *(v0 + 8);
LABEL_46:

    return v85();
  }

  *(v0 + 296) = v15;
  v26 = *(v0 + 88);
  v27 = v26 + 16 * v15;
  v103 = *(v27 + 32);
  *(v0 + 312) = v103;
  v28 = *(v27 + 40);
  *(v0 + 320) = v28;
  v29 = qword_2813C4950;

  if (v29 != -1)
  {
LABEL_52:
    swift_once();
    v26 = *(v0 + 88);
  }

  v30 = *(v0 + 208);
  v32 = *(v0 + 184);
  v31 = *(v0 + 192);
  v33 = *(v0 + 96);
  v34 = type metadata accessor for Signpost(0);
  *(v0 + 328) = __swift_project_value_buffer(v34, qword_2813C8948);
  sub_22808764C(v33, v0 + 16);
  v35 = swift_allocObject();
  *(v0 + 336) = v35;
  sub_227FD0F5C((v0 + 16), v35 + 16);
  *(v35 + 56) = v26;
  v36 = swift_allocObject();
  *(v0 + 344) = v36;
  *(v36 + 16) = sub_228085B34;
  *(v36 + 24) = v35;

  sub_2281324C4();
  v37 = *(v31 + 56);

  v37(v30, 1, 1, v32);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 288);
  v39 = *(v0 + 104);
  v40 = sub_22813882C();
  v41 = __swift_project_value_buffer(v40, qword_2813C8A20);
  *(v0 + 352) = v41;
  v42 = swift_task_alloc();
  *(v0 + 360) = v42;
  *v42 = v0;
  v42[1] = sub_22806A300;
  v43 = *(v0 + 264);
  v44 = *(v0 + 208);
  v45 = *(v0 + 96);

  return sub_2280C5BB0(v43, v103, v28, v44, v39 + v38, v45, v41);
}

void sub_22806D8EC(uint64_t a1@<X0>, void *a2@<X1>, os_unfair_lock_s *a3@<X2>, uint64_t a4@<X8>)
{
  v42 = sub_22813795C();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22813794C();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for PartialSummariesOperation(0);
  MEMORY[0x28223BE20](v36);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22808764C(a2, v11);
  v43 = v11;
  *(v11 + 5) = a3;
  v12 = *(a1 + 16);
  if (v12)
  {
    v34 = a4;
    v35 = a2;
    v48[0] = MEMORY[0x277D84F90];
    v33 = a3;

    sub_228043C1C(0, v12, 0);
    v13 = 0;
    v14 = *(a1 + 16);
    v15 = (a1 + 40);
    v44 = v14 - 1;
    v45 = v14;
    v16 = v48[0];
    v46 = v12;
    v47 = a1;
    while (v14 != v13)
    {
      if (v13 >= *(a1 + 16))
      {
        goto LABEL_21;
      }

      v17 = *(v15 - 1);
      v18 = *v15;
      v19 = v14 < 2 || v44 == v13;
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = 2570;
      }

      if (v19)
      {
        v21 = 0xE000000000000000;
      }

      else
      {
        v21 = 0xE200000000000000;
      }

      v48[0] = v16;
      v22 = *(v16 + 16);
      v23 = *(v16 + 24);

      if (v22 >= v23 >> 1)
      {
        sub_228043C1C((v23 > 1), v22 + 1, 1);
        v16 = v48[0];
      }

      *(v16 + 16) = v22 + 1;
      v24 = (v16 + 40 * v22);
      v24[4] = v13;
      v24[5] = v17;
      v24[6] = v18;
      v24[7] = v20;
      v24[8] = v21;
      v15 += 2;
      ++v13;
      a1 = v47;
      v14 = v45;
      if (v46 == v13)
      {

        a4 = v34;
        a2 = v35;
        a3 = v33;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
LABEL_19:
    v25 = v43;
    *(v43 + 6) = v16;
    v27 = a2[3];
    v26 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v27);
    v28 = *(v26 + 8);
    v29 = *(v28 + 8);

    v29(v27, v28);
    (*(v40 + 104))(v38, *MEMORY[0x277D0E2D8], v42);
    v30 = v37;
    sub_22813792C();
    sub_22813796C();
    (*(v39 + 8))(v30, v41);
    v31 = *(v16 + 16);

    KeyPath = swift_getKeyPath("(1nU");
    os_unfair_lock_lock(a3 + 4);
    v48[3] = MEMORY[0x277D84A28];
    v48[0] = v31;

    sub_2280449E4(v48, KeyPath, &a3[6]);
    os_unfair_lock_unlock(a3 + 4);

    sub_2280876B0(v25, a4, type metadata accessor for PartialSummariesOperation);
    __swift_destroy_boxed_opaque_existential_1Tm_7(a2);
  }
}

uint64_t sub_22806DD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x2822009F8](sub_22806DD3C, 0, 0);
}

uint64_t sub_22806DD3C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v2 + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *(v5 + 16) = v1;
  type metadata accessor for PartialSummariesOperation.TaskResult(0);
  v6 = swift_task_alloc();
  v0[6] = v6;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v4;
  v6[5] = sub_228085B4C;
  v6[6] = v5;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_22806DE78;

  return MEMORY[0x282200740]();
}

uint64_t sub_22806DE78()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_22806DFF8;
  }

  else
  {

    v2 = sub_22806DF94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22806DF94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22806DFF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22806E064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB8, &qword_22813E120);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ED00, &qword_22813E410);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  (*(v3 + 16))(v5, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
  sub_22813962C();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22806E1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECC0, &qword_22813E190);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  v10 = sub_22813882C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2281395AC();
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_2813C8A20);
  if (qword_2813C49B8 != -1)
  {
    swift_once();
  }

  if ((byte_2813C49C1 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v10, qword_2813C4990);
  }

  (*(v11 + 16))(v13, v14, v10);
  sub_22808764C(a3, v44);
  v15 = *(v5 + 16);
  v16 = v9;
  v15(v9, v42, v4);
  v17 = v13;
  v18 = sub_22813880C();
  v19 = sub_2281396CC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v16;
    v21 = v20;
    v22 = swift_slowAlloc();
    v38 = v22;
    *v21 = 136446466;
    v42 = v10;
    v43 = v22;
    v40 = v11;
    v23 = v45;
    v24 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v25 = *(v24 + 16);
    v39 = v17;
    v26 = v25(v23, v24);
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm_7(v44);
    v29 = sub_227FCC340(v26, v28, &v43);

    *(v21 + 4) = v29;
    *(v21 + 12) = 2082;
    v30 = v37;
    v15(v41, v37, v4);
    v31 = sub_2281392EC();
    v33 = v32;
    (*(v5 + 8))(v30, v4);
    v34 = sub_227FCC340(v31, v33, &v43);

    *(v21 + 14) = v34;
    _os_log_impl(&dword_227FC3000, v18, v19, "partialSummaries continuation for  [requestIdentifier: %{public}s] terminated with reason: %{public}s", v21, 0x16u);
    v35 = v38;
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v35, -1, -1);
    MEMORY[0x22AAB28A0](v21, -1, -1);

    return (*(v40 + 8))(v39, v42);
  }

  else
  {

    (*(v5 + 8))(v16, v4);
    (*(v11 + 8))(v17, v10);
    return __swift_destroy_boxed_opaque_existential_1Tm_7(v44);
  }
}

uint64_t sub_22806E698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  *(v9 + 584) = v8;
  *(v9 + 576) = v16;
  *(v9 + 568) = v15;
  *(v9 + 114) = a8;
  *(v9 + 560) = a7;
  *(v9 + 552) = a6;
  *(v9 + 544) = a5;
  *(v9 + 536) = a3;
  *(v9 + 528) = a2;
  *(v9 + 520) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230);
  *(v9 + 592) = swift_task_alloc();
  sub_228136DEC();
  *(v9 + 600) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF8, &qword_22813E298);
  *(v9 + 608) = swift_task_alloc();
  *(v9 + 616) = swift_task_alloc();
  *(v9 + 624) = swift_task_alloc();
  *(v9 + 632) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0);
  *(v9 + 640) = swift_task_alloc();
  *(v9 + 648) = swift_task_alloc();
  *(v9 + 656) = type metadata accessor for ModelBundleIdentifier(0);
  *(v9 + 664) = swift_task_alloc();
  v10 = sub_228138F9C();
  *(v9 + 672) = v10;
  *(v9 + 680) = *(v10 - 8);
  *(v9 + 688) = swift_task_alloc();
  v11 = sub_22813882C();
  *(v9 + 696) = v11;
  *(v9 + 704) = *(v11 - 8);
  *(v9 + 712) = swift_task_alloc();
  *(v9 + 720) = swift_task_alloc();
  v12 = sub_228138E0C();
  *(v9 + 728) = v12;
  *(v9 + 736) = *(v12 - 8);
  *(v9 + 744) = swift_task_alloc();
  *(v9 + 752) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22806E988, 0, 0);
}

uint64_t sub_22806E988()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 560);
  v4 = *(v0 + 552);
  v5 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter;
  *(v0 + 48) = type metadata accessor for TokenCounter(0);
  *(v0 + 56) = &off_283B5BC30;
  boxed_opaque_existential_0Tm_0 = __swift_allocate_boxed_opaque_existential_0Tm_0((v0 + 24));
  sub_228084B4C(v1 + v5, boxed_opaque_existential_0Tm_0, type metadata accessor for TokenCounter);
  sub_22808764C(v3, v0 + 64);
  *(v0 + 104) = v2;
  *(v0 + 112) = 1;
  *(v0 + 16) = v4;

  v7 = swift_task_alloc();
  *(v0 + 760) = v7;
  *v7 = v0;
  v7[1] = sub_22806EAB0;
  v8 = *(v0 + 536);
  v9 = *(v0 + 528);

  return sub_2280C1424(v9, v8);
}

uint64_t sub_22806EAB0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 768) = a1;
  *(v3 + 776) = v1;

  if (v1)
  {
    v4 = sub_2280714A8;
  }

  else
  {
    v4 = sub_22806EBC8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_22806EBC8()
{
  v93 = v0;
  v2 = *(v0 + 776);
  v3 = *(v0 + 768);
  v4 = *(v0 + 576);
  v5 = MEMORY[0x277D84F90];
  *(v0 + 464) = MEMORY[0x277D84F90];
  sub_228138DEC();
  KeyPath = swift_getKeyPath("(1nU");
  v7 = *(v3 + 16) - 1;
  os_unfair_lock_lock((v4 + 16));
  sub_228084228((v4 + 24), KeyPath, v7);
  v8 = (v4 + 16);
  if (v2)
  {

    os_unfair_lock_unlock(v8);
    return;
  }

  os_unfair_lock_unlock(v8);

  v9 = *(v3 + 16);
  *(v0 + 784) = v9;
  *(v0 + 792) = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration;
  if (v9)
  {
    v10 = *(v0 + 768);
    *(v0 + 816) = 0;
    *(v0 + 808) = v5;
    *(v0 + 800) = v5;
    if (v10[2])
    {
      v1 = v10[4];
      v3 = v10[5];
      v11 = qword_2813C49E0;

      if (v11 == -1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_8:
    v12 = __swift_project_value_buffer(*(v0 + 696), qword_2813C8A20);
    *(v0 + 824) = v12;
    if (qword_2813C49B8 != -1)
    {
      swift_once();
    }

    v13 = byte_2813C49C1;
    *(v0 + 113) = byte_2813C49C1;
    v14 = v12;
    if ((v13 & 1) == 0)
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v14 = __swift_project_value_buffer(*(v0 + 696), qword_2813C4990);
    }

    v15 = *(v0 + 720);
    v16 = *(v0 + 696);
    v17 = *(v0 + 560);
    v18 = *(*(v0 + 704) + 16);
    *(v0 + 832) = v18;
    v18(v15, v14, v16);
    sub_22808764C(v17, v0 + 168);

    v19 = sub_22813880C();
    v20 = sub_2281396CC();
    if (os_log_type_enabled(v19, v20))
    {
      v89 = v1;
      v90 = v3;
      v21 = *(v0 + 544);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *(v0 + 504) = v23;
      *v22 = 134349826;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        __break(1u);
LABEL_39:
        swift_once();
LABEL_33:
        v72 = *(v0 + 584);
        v73 = *(v0 + 568);
        v74 = *(v0 + 114);
        v75 = *(v0 + 560);
        v76 = (v74 >> 8) & 1;
        v77 = v74 & 1;
        *(v0 + 488) = v3;
        v78 = swift_task_alloc();
        *(v0 + 864) = v78;
        *(v78 + 16) = v72;
        *(v78 + 24) = v90;
        *(v78 + 32) = &unk_283B5B3D0;
        *(v78 + 40) = v75;
        *(v78 + 48) = v77;
        *(v78 + 49) = v76;
        *(v78 + 56) = v73;
        *(v78 + 64) = v20;
        v79 = swift_task_alloc();
        *(v0 + 872) = v79;
        *v79 = v0;
        v79[1] = sub_22806FB64;
        v80 = *(v0 + 688);
        v81 = *(v0 + 672);
        v95 = 834;
        v96 = v81;

        MEMORY[0x282200908](v80, v0 + 488, &unk_22813E2C8, v78, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
        return;
      }

      v24 = v23;
      v25 = *(v0 + 768);
      v26 = *(v0 + 704);
      v87 = *(v0 + 696);
      v88 = *(v0 + 720);
      *(v22 + 4) = v21 + 1;
      *(v22 + 12) = 2050;
      *(v22 + 14) = 1;
      *(v22 + 22) = 2050;
      *(v22 + 24) = *(v25 + 16);

      *(v22 + 32) = 2082;
      v27 = *(v0 + 192);
      v28 = *(v0 + 200);
      __swift_project_boxed_opaque_existential_1((v0 + 168), v27);
      v29 = (*(v28 + 16))(v27, v28);
      v31 = v30;
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 168));
      v32 = sub_227FCC340(v29, v31, (v0 + 504));

      *(v22 + 34) = v32;
      _os_log_impl(&dword_227FC3000, v19, v20, "Started summarizing subchunk %{public}ld.%{public}ld of %{public}ld for [requestIdentifier: %{public}s]", v22, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v24);
      MEMORY[0x22AAB28A0](v24, -1, -1);
      MEMORY[0x22AAB28A0](v22, -1, -1);

      v33 = *(v26 + 8);
      v33(v88, v87);
      v1 = v89;
      v3 = v90;
    }

    else
    {
      v42 = *(v0 + 720);
      v43 = *(v0 + 704);
      v44 = *(v0 + 696);

      v33 = *(v43 + 8);
      v33(v42, v44);
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 168));
    }

    *(v0 + 840) = v33;
    sub_2281395DC();
    v45 = v0 + 248;
    v46 = *(v0 + 560);
    type metadata accessor for TelemetrySignalCollector();
    swift_allocObject();
    v20 = sub_2280D5C74();
    *(v0 + 848) = v20;
    *(v0 + 272) = &type metadata for SKTextChunk;
    *(v0 + 280) = &off_283B5E458;
    *(v0 + 248) = v1;
    *(v0 + 256) = v3;
    *(v0 + 264) = 1;

    sub_22808764C(v46, v0 + 288);
    sub_22808764C(v0 + 248, v0 + 328);

    v47 = sub_22813880C();
    v48 = sub_2281396BC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v92[0] = v50;
      *v49 = 136315906;
      v51 = *(v0 + 312);
      v52 = *(v0 + 320);
      __swift_project_boxed_opaque_existential_1((v0 + 288), v51);
      v53 = (*(v52 + 16))(v51, v52);
      v55 = v54;
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 288));
      v56 = sub_227FCC340(v53, v55, v92);

      *(v49 + 4) = v56;
      *(v49 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1((v0 + 328), *(v0 + 352));
      swift_getDynamicType();
      v57 = sub_228139B8C();
      v59 = v58;
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 328));
      v60 = sub_227FCC340(v57, v59, v92);

      *(v49 + 14) = v60;
      *(v49 + 22) = 2080;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
      v62 = MEMORY[0x22AAB1AD0](&unk_283B5B3F8, v61);
      v64 = sub_227FCC340(v62, v63, v92);

      *(v49 + 24) = v64;
      *(v49 + 32) = 2080;
      v65 = ModelBundleIdentifier.loggingDescription.getter();
      v67 = sub_227FCC340(v65, v66, v92);

      *(v49 + 34) = v67;
      v45 = v0 + 248;
      _os_log_impl(&dword_227FC3000, v47, v48, "Handling request [requestIdentifier: %s, contentType: %s, styles: %s] with model: %s", v49, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v50, -1, -1);
      MEMORY[0x22AAB28A0](v49, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 328));
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 288));
    }

    sub_228084B4C(*(v0 + 584) + *(v0 + 792), *(v0 + 664), type metadata accessor for ModelBundleIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v69 = 3;
        goto LABEL_28;
      }

      v69 = 2;
    }

    else
    {
      v69 = 1;
    }

    sub_228084CF0(*(v0 + 664), type metadata accessor for ModelBundleIdentifier);
LABEL_28:
    v70 = swift_getKeyPath(byte_22813DEE8);
    os_unfair_lock_lock((v20 + 16));
    *(v0 + 432) = MEMORY[0x277D84A28];
    *(v0 + 408) = v69;

    sub_2280449E4(v0 + 408, v70, (v20 + 24));
    os_unfair_lock_unlock((v20 + 16));

    type metadata accessor for SharedData();
    v3 = swift_allocObject();
    *(v0 + 856) = v3;
    type metadata accessor for SKAssetManager();
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    swift_initStackObject();
    v71 = SKAssetManager.init()();
    type metadata accessor for FilterRules(0);
    swift_allocObject();
    v90 = v45;
    *(v3 + 16) = FilterRules.init(assetManager:)(v71);

    *(v3 + 24) = v20;

    if (qword_2813C8178 == -1)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

  v85 = *(v0 + 752);
  v34 = *(v0 + 736);
  v91 = *(v0 + 728);
  v35 = *(v0 + 632);
  v84 = *(v0 + 640);
  v36 = *(v0 + 624);
  v82 = *(v0 + 616);
  v83 = *(v0 + 608);
  v37 = *(v0 + 576);
  v86 = *(v0 + 592);

  sub_228086458(v37, v5);

  v38 = sub_228136DBC();
  v39 = *(*(v38 - 8) + 56);
  v39(v35, 1, 1, v38);
  v39(v36, 1, 1, v38);
  *(v0 + 512) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
  sub_228087D9C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80, MEMORY[0x277D83958]);
  sub_22813925C();

  sub_228136DDC();
  sub_228136DCC();
  v39(v82, 0, 1, v38);
  v39(v83, 1, 1, v38);
  (*(v34 + 16))(v84, v85, v91);
  (*(v34 + 56))(v84, 0, 1, v91);
  v40 = sub_228138DDC();
  (*(*(v40 - 8) + 56))(v86, 1, 1, v40);
  sub_228138F4C();
  (*(v34 + 8))(v85, v91);
  sub_228085A2C(v0 + 16);

  v41 = *(v0 + 8);

  v41();
}

uint64_t sub_22806FB64()
{
  *(*v1 + 880) = v0;

  if (v0)
  {
    v2 = sub_228071124;
  }

  else
  {
    v2 = sub_22806FC88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22806FC88()
{
  v165 = v0;

  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 248));
  LOBYTE(v164[0]) = 2;
  v3 = Summary.stringValue(for:)(v164);
  if (!v3.value._object)
  {
    v11 = *(v0 + 688);
    v12 = *(v0 + 680);
    v13 = *(v0 + 672);

    v14 = swift_allocObject();
    *(v14 + 16) = 27;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    v15 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, 566, sub_2280889A4, v14);
    sub_227FDB3CC();
    v2 = swift_allocError();
    *v16 = 27;
    *(v16 + 8) = v15;
    swift_willThrow();

    (*(v12 + 8))(v11, v13);
    goto LABEL_48;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1 = *(v0 + 808);
  v161 = v0 + 248;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v1 = sub_2281338C0(0, *(v1 + 2) + 1, 1, v1);
  }

  v6 = *(v1 + 2);
  v5 = *(v1 + 3);
  if (v6 >= v5 >> 1)
  {
    v1 = sub_2281338C0((v5 > 1), v6 + 1, 1, v1);
  }

  *(v1 + 2) = v6 + 1;
  *&v1[16 * v6 + 32] = v3;

  MEMORY[0x22AAB1AA0](v7);
  if (*((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 464) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22813953C();
  }

  v8 = *(v0 + 736);
  v9 = *(v0 + 728);
  v10 = *(v0 + 648);
  sub_22813955C();
  v163 = *(v0 + 464);
  sub_228138EEC();
  if ((*(v8 + 48))(v10, 1, v9) == 1)
  {
    sub_2280883AC(*(v0 + 648), &qword_27D81EC98, &qword_22813E0D0);
  }

  else
  {
    v17 = *(v0 + 752);
    v18 = *(v0 + 736);
    v19 = *(v0 + 728);
    (*(v18 + 32))(*(v0 + 744), *(v0 + 648), v19);
    v20 = sub_228138DFC();
    v21 = *(v18 + 8);
    v21(v17, v19);
    if (v20)
    {
      sub_228138DFC();
    }

    v22 = *(v0 + 744);
    v23 = *(v0 + 728);
    sub_228138DEC();
    v21(v22, v23);
  }

  if (*(v0 + 113) != 1)
  {
    if (qword_2813C4988 != -1)
    {
      goto LABEL_61;
    }

    goto LABEL_17;
  }

  for (i = *(v0 + 824); ; i = __swift_project_value_buffer(*(v0 + 696), qword_2813C4990))
  {
    v25 = *(v0 + 560);
    (*(v0 + 832))(*(v0 + 712), i, *(v0 + 696));
    sub_22808764C(v25, v0 + 368);

    v26 = sub_22813880C();
    v27 = sub_2281396CC();
    v162 = v1;
    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 544);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *(v0 + 496) = v30;
      *v29 = 134349826;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_63;
      }

      v31 = v30;
      v160 = *(v0 + 840);
      v32 = *(v0 + 768);
      v152 = *(v0 + 712);
      v151 = *(v0 + 696);
      v157 = *(v0 + 688);
      v33 = *(v0 + 680);
      v155 = *(v0 + 672);
      v34 = *(v0 + 816) + 1;
      *(v29 + 4) = v28 + 1;
      *(v29 + 12) = 2050;
      *(v29 + 14) = v34;
      *(v29 + 22) = 2050;
      *(v29 + 24) = *(v32 + 16);

      *(v29 + 32) = 2082;
      v35 = *(v0 + 392);
      v36 = *(v0 + 400);
      __swift_project_boxed_opaque_existential_1((v0 + 368), v35);
      v37 = (*(v36 + 16))(v35, v36);
      v39 = v38;
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 368));
      v40 = sub_227FCC340(v37, v39, (v0 + 496));

      *(v29 + 34) = v40;
      _os_log_impl(&dword_227FC3000, v26, v27, "Finished summarizing subchunk %{public}ld.%{public}ld of %{public}ld for [requestIdentifier: %{public}s]", v29, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v31);
      MEMORY[0x22AAB28A0](v31, -1, -1);
      MEMORY[0x22AAB28A0](v29, -1, -1);

      v160(v152, v151);
      v41 = *(v33 + 8);
      v2 = (v33 + 8);
      v41(v157, v155);
    }

    else
    {
      v42 = *(v0 + 840);
      v43 = *(v0 + 712);
      v2 = *(v0 + 704);
      v27 = *(v0 + 696);
      v44 = *(v0 + 688);
      v45 = v26;
      v46 = *(v0 + 680);
      v47 = *(v0 + 672);

      v42(v43, v27);
      (*(v46 + 8))(v44, v47);
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 368));
    }

    v26 = *(v0 + 816);
    v48 = &v26->isa + 1;
    if ((&v26->isa + 1) == *(v0 + 784))
    {
      v49 = *(v0 + 736);
      v148 = *(v0 + 728);
      v149 = *(v0 + 752);
      v50 = *(v0 + 632);
      v147 = *(v0 + 640);
      v51 = *(v0 + 624);
      v145 = *(v0 + 616);
      v146 = *(v0 + 608);
      v52 = *(v0 + 576);
      v150 = *(v0 + 592);

      sub_228086458(v52, v163);

      v53 = sub_228136DBC();
      v54 = *(*(v53 - 8) + 56);
      v54(v50, 1, 1, v53);
      v54(v51, 1, 1, v53);
      *(v0 + 512) = v162;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
      sub_228087D9C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80, MEMORY[0x277D83958]);
      sub_22813925C();

      sub_228136DDC();
      sub_228136DCC();
      v54(v145, 0, 1, v53);
      v54(v146, 1, 1, v53);
      (*(v49 + 16))(v147, v149, v148);
      (*(v49 + 56))(v147, 0, 1, v148);
      v55 = sub_228138DDC();
      (*(*(v55 - 8) + 56))(v150, 1, 1, v55);
      sub_228138F4C();
      (*(v49 + 8))(v149, v148);
      sub_228085A2C(v0 + 16);

      v56 = *(v0 + 8);
      goto LABEL_53;
    }

    v159 = *(v0 + 880);
    *(v0 + 816) = v48;
    v1 = v162;
    *(v0 + 808) = v162;
    *(v0 + 800) = v163;
    v57 = *(v0 + 768);
    if (v48 < *(v57 + 16))
    {
      v58 = v57 + 16 * v48;
      v2 = *(v58 + 32);
      v27 = *(v58 + 40);
      v59 = qword_2813C49E0;

      if (v59 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_64;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
LABEL_26:
    v60 = __swift_project_value_buffer(*(v0 + 696), qword_2813C8A20);
    *(v0 + 824) = v60;
    if (qword_2813C49B8 != -1)
    {
      swift_once();
    }

    v61 = byte_2813C49C1;
    *(v0 + 113) = byte_2813C49C1;
    v62 = v60;
    if ((v61 & 1) == 0)
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v62 = __swift_project_value_buffer(*(v0 + 696), qword_2813C4990);
    }

    v63 = *(v0 + 720);
    v64 = *(v0 + 696);
    v65 = *(v0 + 560);
    v66 = *(*(v0 + 704) + 16);
    *(v0 + 832) = v66;
    v66(v63, v62, v64);
    sub_22808764C(v65, v0 + 168);

    v67 = sub_22813880C();
    v68 = sub_2281396CC();
    v156 = v2;
    v158 = v27;
    if (os_log_type_enabled(v67, v68))
    {
      v69 = *(v0 + 544);
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *(v0 + 504) = v71;
      *v70 = 134349826;
      if (__OFADD__(v69, 1))
      {
        __break(1u);
        goto LABEL_66;
      }

      v72 = v71;
      v73 = *(v0 + 768);
      v74 = *(v0 + 704);
      v153 = *(v0 + 696);
      v154 = *(v0 + 720);
      *(v70 + 4) = v69 + 1;
      *(v70 + 12) = 2050;
      *(v70 + 14) = &v26->isa + 2;
      *(v70 + 22) = 2050;
      *(v70 + 24) = *(v73 + 16);

      *(v70 + 32) = 2082;
      v75 = *(v0 + 192);
      v76 = *(v0 + 200);
      __swift_project_boxed_opaque_existential_1((v0 + 168), v75);
      v77 = (*(v76 + 16))(v75, v76);
      v79 = v78;
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 168));
      v80 = sub_227FCC340(v77, v79, (v0 + 504));

      *(v70 + 34) = v80;
      _os_log_impl(&dword_227FC3000, v67, v68, "Started summarizing subchunk %{public}ld.%{public}ld of %{public}ld for [requestIdentifier: %{public}s]", v70, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v72);
      MEMORY[0x22AAB28A0](v72, -1, -1);
      MEMORY[0x22AAB28A0](v70, -1, -1);

      v81 = *(v74 + 8);
      v81(v154, v153);
      v1 = v162;
    }

    else
    {
      v82 = *(v0 + 720);
      v83 = *(v0 + 704);
      v84 = *(v0 + 696);

      v81 = *(v83 + 8);
      v81(v82, v84);
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 168));
    }

    *(v0 + 840) = v81;
    sub_2281395DC();
    if (!v159)
    {
      break;
    }

    v2 = v159;

LABEL_48:
    sub_22808764C(*(v0 + 560), v0 + 208);

    v111 = v2;
    v112 = sub_22813880C();
    v113 = sub_2281396DC();

    if (!os_log_type_enabled(v112, v113))
    {
      swift_bridgeObjectRelease_n();

      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 208));
LABEL_52:
      v131 = *(v0 + 752);
      v132 = *(v0 + 736);
      v133 = *(v0 + 728);
      swift_willThrow();
      (*(v132 + 8))(v131, v133);
      sub_228085A2C(v0 + 16);

      v56 = *(v0 + 8);
LABEL_53:

      return v56();
    }

    v114 = *(v0 + 544);
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v164[0] = v116;
    *v115 = 134350082;
    v117 = v114 + 1;
    if (!__OFADD__(v114, 1))
    {
      v118 = v116;
      v119 = *(v0 + 768);
      v120 = *(v0 + 816) + 1;
      *(v115 + 4) = v117;
      *(v115 + 12) = 2050;
      *(v115 + 14) = v120;
      *(v115 + 22) = 2050;
      v121 = *(v119 + 16);

      *(v115 + 24) = v121;

      *(v115 + 32) = 2082;
      v122 = *(v0 + 232);
      v123 = *(v0 + 240);
      __swift_project_boxed_opaque_existential_1((v0 + 208), v122);
      v124 = (*(v123 + 16))(v122, v123);
      v126 = v125;
      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 208));
      v127 = sub_227FCC340(v124, v126, v164);

      *(v115 + 34) = v127;
      *(v115 + 42) = 2082;
      swift_getErrorValue();
      v128 = Error.loggingDescription.getter(*(v0 + 448), *(v0 + 456));
      v130 = sub_227FCC340(v128, v129, v164);

      *(v115 + 44) = v130;
      _os_log_impl(&dword_227FC3000, v112, v113, "Finished summarizing subchunk %{public}ld.%{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", v115, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v118, -1, -1);
      MEMORY[0x22AAB28A0](v115, -1, -1);

      goto LABEL_52;
    }

    __break(1u);
LABEL_61:
    swift_once();
LABEL_17:
    ;
  }

  v85 = *(v0 + 560);
  type metadata accessor for TelemetrySignalCollector();
  swift_allocObject();
  v70 = sub_2280D5C74();
  *(v0 + 848) = v70;
  *(v0 + 272) = &type metadata for SKTextChunk;
  *(v0 + 280) = &off_283B5E458;
  *(v0 + 248) = v156;
  *(v0 + 256) = v158;
  *(v0 + 264) = 1;

  sub_22808764C(v85, v0 + 288);
  sub_22808764C(v161, v0 + 328);

  v86 = sub_22813880C();
  v87 = sub_2281396BC();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v164[0] = v89;
    *v88 = 136315906;
    v90 = *(v0 + 312);
    v91 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1((v0 + 288), v90);
    v92 = (*(v91 + 16))(v90, v91);
    v94 = v93;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 288));
    v95 = sub_227FCC340(v92, v94, v164);

    *(v88 + 4) = v95;
    *(v88 + 12) = 2080;
    __swift_project_boxed_opaque_existential_1((v0 + 328), *(v0 + 352));
    swift_getDynamicType();
    v96 = sub_228139B8C();
    v98 = v97;
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 328));
    v99 = sub_227FCC340(v96, v98, v164);

    *(v88 + 14) = v99;
    *(v88 + 22) = 2080;
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
    v101 = MEMORY[0x22AAB1AD0](&unk_283B5B3F8, v100);
    v103 = sub_227FCC340(v101, v102, v164);

    *(v88 + 24) = v103;
    *(v88 + 32) = 2080;
    v104 = ModelBundleIdentifier.loggingDescription.getter();
    v106 = sub_227FCC340(v104, v105, v164);

    *(v88 + 34) = v106;
    _os_log_impl(&dword_227FC3000, v86, v87, "Handling request [requestIdentifier: %s, contentType: %s, styles: %s] with model: %s", v88, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v89, -1, -1);
    MEMORY[0x22AAB28A0](v88, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 328));
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 288));
  }

  sub_228084B4C(*(v0 + 584) + *(v0 + 792), *(v0 + 664), type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v108 = 2;
      goto LABEL_45;
    }

    v108 = 3;
  }

  else
  {
    v108 = 1;
LABEL_45:
    sub_228084CF0(*(v0 + 664), type metadata accessor for ModelBundleIdentifier);
  }

  KeyPath = swift_getKeyPath(byte_22813DEE8);
  os_unfair_lock_lock((v70 + 16));
  *(v0 + 432) = MEMORY[0x277D84A28];
  *(v0 + 408) = v108;

  sub_2280449E4(v0 + 408, KeyPath, (v70 + 24));
  os_unfair_lock_unlock((v70 + 16));

  type metadata accessor for SharedData();
  v67 = swift_allocObject();
  *(v0 + 856) = v67;
  type metadata accessor for SKAssetManager();
  v67[2].isa = 0;
  v67[3].isa = 0;
  swift_initStackObject();
  v110 = SKAssetManager.init()();
  type metadata accessor for FilterRules(0);
  swift_allocObject();
  v67[2].isa = FilterRules.init(assetManager:)(v110);

  v67[3].isa = v70;

  if (qword_2813C8178 != -1)
  {
LABEL_66:
    swift_once();
  }

  v135 = *(v0 + 584);
  v136 = *(v0 + 568);
  v137 = *(v0 + 114);
  v138 = *(v0 + 560);
  v139 = (v137 >> 8) & 1;
  v140 = v137 & 1;
  *(v0 + 488) = v67;
  v141 = swift_task_alloc();
  *(v0 + 864) = v141;
  *(v141 + 16) = v135;
  *(v141 + 24) = v161;
  *(v141 + 32) = &unk_283B5B3D0;
  *(v141 + 40) = v138;
  *(v141 + 48) = v140;
  *(v141 + 49) = v139;
  *(v141 + 56) = v136;
  *(v141 + 64) = v70;
  v142 = swift_task_alloc();
  *(v0 + 872) = v142;
  *v142 = v0;
  v142[1] = sub_22806FB64;
  v143 = *(v0 + 688);
  v144 = *(v0 + 672);
  v167 = 834;
  v168 = v144;

  return MEMORY[0x282200908](v143, v0 + 488, &unk_22813E2C8, v141, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
}

uint64_t sub_228071124()
{
  v27 = v0;

  v1 = v0[110];

  __swift_destroy_boxed_opaque_existential_1Tm_7(v0 + 31);
  sub_22808764C(v0[70], (v0 + 26));

  v2 = v1;
  v3 = sub_22813880C();
  v4 = sub_2281396DC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[68];
    v6 = swift_slowAlloc();
    result = swift_slowAlloc();
    v26[0] = result;
    *v6 = 134350082;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = v0[96];
    v11 = v0[102] + 1;
    *(v6 + 4) = v8;
    *(v6 + 12) = 2050;
    *(v6 + 14) = v11;
    *(v6 + 22) = 2050;
    v12 = *(v10 + 16);

    *(v6 + 24) = v12;

    *(v6 + 32) = 2082;
    v13 = v0[29];
    v14 = v0[30];
    __swift_project_boxed_opaque_existential_1(v0 + 26, v13);
    v15 = (*(v14 + 16))(v13, v14);
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1Tm_7(v0 + 26);
    v18 = sub_227FCC340(v15, v17, v26);

    *(v6 + 34) = v18;
    *(v6 + 42) = 2082;
    swift_getErrorValue();
    v19 = Error.loggingDescription.getter(v0[56], v0[57]);
    v21 = sub_227FCC340(v19, v20, v26);

    *(v6 + 44) = v21;
    _os_log_impl(&dword_227FC3000, v3, v4, "Finished summarizing subchunk %{public}ld.%{public}ld of %{public}ld for [requestIdentifier: %{public}s] with error: %{public}s", v6, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v9, -1, -1);
    MEMORY[0x22AAB28A0](v6, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_1Tm_7(v0 + 26);
  }

  v22 = v0[94];
  v23 = v0[92];
  v24 = v0[91];
  swift_willThrow();
  (*(v23 + 8))(v22, v24);
  sub_228085A2C((v0 + 2));

  v25 = v0[1];

  return v25();
}

uint64_t sub_2280714A8()
{
  sub_228085A2C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280715E0(void *a1)
{
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  MEMORY[0x22AAB1970](v4);

  MEMORY[0x22AAB1970](0xD000000000000014, 0x8000000228146570);
  v5 = sub_22813998C();
  MEMORY[0x22AAB1970](v5);

  MEMORY[0x22AAB1970](0xD000000000000017, 0x8000000228144450);
  return 0;
}

uint64_t sub_228071738()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(*(v3 + 8) + 8))(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t SummarizationSession.makeSharedSessionData(contentType:styles:requestInfo:maxTokenLength:signalCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v15 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter;
  v23 = type metadata accessor for TokenCounter(0);
  v24 = &off_283B5BC48;
  boxed_opaque_existential_0Tm_0 = __swift_allocate_boxed_opaque_existential_0Tm_0(v22);
  sub_228084B4C(v7 + v15, boxed_opaque_existential_0Tm_0, type metadata accessor for TokenCounter);
  sub_22808764C(a4, (a7 + 14));
  sub_22808764C(v22, a7);
  a7[5] = a1;
  a7[6] = a2;
  a7[7] = a3;
  a7[8] = a5;
  v17 = v23;
  v18 = v24;
  v19 = __swift_project_boxed_opaque_existential_1(v22, v23);
  a7[12] = v17;
  a7[13] = v18[1];
  v20 = __swift_allocate_boxed_opaque_existential_0Tm_0(a7 + 9);
  (*(*(v17 - 8) + 16))(v20, v19, v17);
  a7[19] = a6;

  __swift_destroy_boxed_opaque_existential_1Tm_7(v22);
  sub_22808764C(a4, (a7 + 20));
  a7[25] = a3;
  a7[26] = a6;
}

uint64_t sub_228071928(void *a1, uint64_t a2)
{
  *&v22[8] = 0;
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  MEMORY[0x22AAB1970](v6);

  MEMORY[0x22AAB1970](0xD000000000000015, 0x80000002281443F0);
  v8 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v9 = (*(*(v7 + 8) + 8))(v8);
  MEMORY[0x22AAB1970](v9);

  MEMORY[0x22AAB1970](0xD00000000000001FLL, 0x8000000228144410);
  v11 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v12 = (*(*(v10 + 8) + 16))(v11);
  MEMORY[0x22AAB1970](v12);

  MEMORY[0x22AAB1970](0xD00000000000001BLL, 0x8000000228144430);
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  *v22 = (*(*(v13 + 8) + 24))(v14);
  v15 = sub_22813998C();
  MEMORY[0x22AAB1970](v15);

  MEMORY[0x22AAB1970](0x3A726F727265202CLL, 0xE900000000000020);
  if (a2)
  {
    swift_getErrorValue();
    v16 = Error.loggingDescription.getter(v20, v21);
    v18 = v17;
  }

  else
  {
    v18 = 0xE300000000000000;
    v16 = 7104878;
  }

  MEMORY[0x22AAB1970](v16, v18);

  MEMORY[0x22AAB1970](0xD000000000000015, 0x8000000228146590);
  return *&v22[4];
}

uint64_t sub_228071BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_228071CA4;

  return sub_228071D98(a1, a3, a4, a5, a6 & 0x101, a7, a8);
}

uint64_t sub_228071CA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_228071D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 744) = v7;
  *(v8 + 736) = a7;
  *(v8 + 728) = a6;
  *(v8 + 1492) = a5;
  *(v8 + 720) = a4;
  *(v8 + 712) = a3;
  *(v8 + 704) = a2;
  *(v8 + 696) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  *(v8 + 752) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C0, &unk_22813C3A0);
  *(v8 + 760) = swift_task_alloc();
  sub_228136DEC();
  *(v8 + 768) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E950, &qword_22813C670);
  *(v8 + 776) = swift_task_alloc();
  *(v8 + 784) = swift_task_alloc();
  sub_228137AEC();
  *(v8 + 792) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D8, &unk_22813E420);
  *(v8 + 800) = swift_task_alloc();
  v9 = sub_228137A3C();
  *(v8 + 808) = v9;
  *(v8 + 816) = *(v9 - 8);
  *(v8 + 824) = swift_task_alloc();
  v10 = sub_228137A9C();
  *(v8 + 832) = v10;
  *(v8 + 840) = *(v10 - 8);
  *(v8 + 848) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ED08, &qword_228140BA0);
  *(v8 + 856) = swift_task_alloc();
  *(v8 + 864) = swift_task_alloc();
  *(v8 + 872) = type metadata accessor for SummarizationParameters(0);
  *(v8 + 880) = swift_task_alloc();
  *(v8 + 888) = swift_task_alloc();
  v11 = type metadata accessor for SummarizationResult(0);
  *(v8 + 896) = v11;
  *(v8 + 904) = *(v11 - 8);
  *(v8 + 912) = swift_task_alloc();
  *(v8 + 920) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230);
  *(v8 + 928) = swift_task_alloc();
  *(v8 + 936) = swift_task_alloc();
  *(v8 + 944) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0);
  *(v8 + 952) = swift_task_alloc();
  *(v8 + 960) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF8, &qword_22813E298);
  *(v8 + 968) = swift_task_alloc();
  *(v8 + 976) = swift_task_alloc();
  *(v8 + 984) = swift_task_alloc();
  *(v8 + 992) = swift_task_alloc();
  v12 = sub_228138F9C();
  *(v8 + 1000) = v12;
  *(v8 + 1008) = *(v12 - 8);
  *(v8 + 1016) = swift_task_alloc();
  v13 = sub_228136F8C();
  *(v8 + 1024) = v13;
  *(v8 + 1032) = *(v13 - 8);
  *(v8 + 1040) = swift_task_alloc();
  *(v8 + 1048) = swift_task_alloc();
  v14 = sub_22813882C();
  *(v8 + 1056) = v14;
  *(v8 + 1064) = *(v14 - 8);
  *(v8 + 1072) = swift_task_alloc();
  type metadata accessor for SignpostToken(0);
  *(v8 + 1080) = swift_task_alloc();
  *(v8 + 1088) = swift_task_alloc();
  *(v8 + 1096) = swift_task_alloc();
  v15 = sub_22813716C();
  *(v8 + 1104) = v15;
  *(v8 + 1112) = *(v15 - 8);
  *(v8 + 1120) = swift_task_alloc();
  *(v8 + 1128) = swift_task_alloc();
  *(v8 + 1136) = swift_task_alloc();
  *(v8 + 1144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280723C8, 0, 0);
}

uint64_t sub_2280723C8()
{
  v84 = v0;
  if ((*(v0 + 1492) & 0x100) != 0)
  {
    if (qword_2813C8758 != -1)
    {
      swift_once();
    }

    sub_228139B6C();
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 1144);
    v4 = *(v0 + 1136);
    v5 = *(v0 + 1112);
    v6 = *(v0 + 1104);
    __swift_project_value_buffer(*(v0 + 1056), qword_2813C8A20);
    (*(v5 + 16))(v4, v3, v6);
    v7 = sub_22813880C();
    v8 = sub_2281396BC();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 1136);
    v11 = *(v0 + 1112);
    v12 = *(v0 + 1104);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v83[0] = v14;
      *v13 = 136446210;
      v79 = sub_228136FEC();
      v16 = v15;
      v17 = *(v11 + 8);
      v17(v10, v12);
      v18 = sub_227FCC340(v79, v16, v83);

      *(v13 + 4) = v18;
      v19 = "Passing locale from partial summary request through: %{public}s";
LABEL_35:
      _os_log_impl(&dword_227FC3000, v7, v8, v19, v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v14);
      MEMORY[0x22AAB28A0](v14, -1, -1);
      MEMORY[0x22AAB28A0](v13, -1, -1);

LABEL_37:
      *(v0 + 1192) = v17;
      v38 = *(v0 + 736);
      v81 = v0 + 16;
      if (v38)
      {
        v39 = *(v0 + 728);
        os_unfair_lock_lock((v38 + 16));
        v83[3] = MEMORY[0x277D84A28];
        v83[0] = v39;

        sub_2280449E4(v83, KeyPath, (v38 + 24));
        os_unfair_lock_unlock((v38 + 16));

        v41 = *(v0 + 736);
      }

      else
      {
        v41 = 0;
      }

      v42 = *(v0 + 744);
      v43 = *(v0 + 728);
      v44 = *(v0 + 720);
      v45 = *(v0 + 712);
      v46 = *(v0 + 704);
      __swift_project_boxed_opaque_existential_1(v46, v46[3]);
      DynamicType = swift_getDynamicType();
      v48 = v46[4];
      v49 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter;
      *(v0 + 256) = type metadata accessor for TokenCounter(0);
      *(v0 + 264) = &off_283B5BC48;
      boxed_opaque_existential_0Tm_0 = __swift_allocate_boxed_opaque_existential_0Tm_0((v0 + 232));
      sub_228084B4C(v42 + v49, boxed_opaque_existential_0Tm_0, type metadata accessor for TokenCounter);
      sub_22808764C(v44, v0 + 128);
      sub_22808764C(v0 + 232, v81);
      *(v0 + 56) = DynamicType;
      *(v0 + 64) = v48;
      *(v0 + 72) = v45;
      *(v0 + 80) = v43;
      v52 = *(v0 + 256);
      v51 = *(v0 + 264);
      v53 = __swift_project_boxed_opaque_existential_1((v0 + 232), v52);
      *(v0 + 112) = v52;
      *(v0 + 120) = *(v51 + 8);
      v54 = __swift_allocate_boxed_opaque_existential_0Tm_0((v0 + 88));
      (*(*(v52 - 8) + 16))(v54, v53, v52);
      *(v0 + 168) = v41;

      __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 232));
      sub_22808764C(v44, v0 + 176);
      *(v0 + 216) = v45;
      *(v0 + 224) = v41;

      sub_228136F7C();
      if (qword_2813C4970 != -1)
      {
        swift_once();
      }

      v55 = *(v0 + 1144);
      v56 = *(v0 + 720);
      v57 = *(v0 + 712);
      v58 = *(v0 + 704);
      v59 = type metadata accessor for Signpost(0);
      *(v0 + 1200) = v59;
      v60 = __swift_project_value_buffer(v59, qword_2813C89A8);
      sub_22808764C(v56, v0 + 272);
      sub_22808764C(v58, v0 + 312);
      v61 = swift_allocObject();
      *(v0 + 1208) = v61;
      sub_227FD0F5C((v0 + 272), v61 + 16);
      sub_227FD0F5C((v0 + 312), v61 + 56);
      *(v61 + 96) = v57;
      v62 = swift_task_alloc();
      *(v0 + 1216) = v62;
      v62[2] = v55;
      v62[3] = v58;
      v62[4] = v81;

      v63 = swift_task_alloc();
      *(v0 + 1224) = v63;
      *v63 = v0;
      v63[1] = sub_22807392C;

      return sub_22810AB9C(v60, sub_2280889F8, v61, &unk_22813E438, v62);
    }

LABEL_36:

    v17 = *(v11 + 8);
    v17(v10, v12);
    goto LABEL_37;
  }

  v1 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v2 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_2813C76F8;
  }

  v20 = *(*v2 + 240);
  v21 = *(*v2 + 248);
  v22 = *(*v2 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v21(v83, v22);

    if ((v83[0] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (!v20)
    {
LABEL_21:
      if (qword_2813C49A8 != -1)
      {
        swift_once();
      }

      v23 = __swift_project_value_buffer(*(v0 + 1056), qword_2813C89F0);
      if (qword_2813C49C8 != -1)
      {
        swift_once();
      }

      if ((byte_2813C49D0 & 1) == 0)
      {
        if (qword_2813C4988 != -1)
        {
          swift_once();
        }

        v23 = __swift_project_value_buffer(*(v0 + 1056), qword_2813C4990);
      }

      (*(*(v0 + 1064) + 16))(*(v0 + 1072), v23, *(v0 + 1056));
      v24 = sub_22813880C();
      v25 = sub_2281396BC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_227FC3000, v24, v25, "checkSupportedLanguage skipped; internal supportedLanguageCheckEnabled setting is false", v26, 2u);
        MEMORY[0x22AAB28A0](v26, -1, -1);
      }

      v27 = *(v0 + 1072);
      v28 = *(v0 + 1064);
      v29 = *(v0 + 1056);

      (*(v28 + 8))(v27, v29);
      sub_2281370CC();
      if (qword_2813C49E0 != -1)
      {
        swift_once();
      }

      v30 = *(v0 + 1144);
      v31 = *(v0 + 1120);
      v32 = *(v0 + 1112);
      v33 = *(v0 + 1104);
      __swift_project_value_buffer(*(v0 + 1056), qword_2813C8A20);
      (*(v32 + 16))(v31, v30, v33);
      v7 = sub_22813880C();
      v8 = sub_2281396BC();
      v34 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 1120);
      v11 = *(v0 + 1112);
      v12 = *(v0 + 1104);
      if (v34)
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v83[0] = v14;
        *v13 = 136446210;
        v80 = sub_228136FEC();
        v36 = v35;
        v17 = *(v11 + 8);
        v17(v10, v12);
        v37 = sub_227FCC340(v80, v36, v83);

        *(v13 + 4) = v37;
        v19 = "Locale used for inference: %{public}s";
        goto LABEL_35;
      }

      goto LABEL_36;
    }
  }

  if (qword_2813C4950 != -1)
  {
    swift_once();
  }

  v65 = *(v0 + 744);
  v66 = *(v0 + 720);
  v67 = *(v0 + 712);
  v68 = *(v0 + 704);
  v69 = type metadata accessor for Signpost(0);
  *(v0 + 1152) = __swift_project_value_buffer(v69, qword_2813C8948);
  sub_22808764C(v66, v0 + 472);
  sub_22808764C(v68, v0 + 512);
  v70 = swift_allocObject();
  *(v0 + 1160) = v70;
  sub_227FD0F5C((v0 + 472), v70 + 16);
  sub_227FD0F5C((v0 + 512), v70 + 56);
  *(v70 + 96) = v67;
  v71 = swift_allocObject();
  *(v0 + 1168) = v71;
  *(v71 + 16) = sub_2280880A4;
  *(v71 + 24) = v70;

  sub_2281324C4();
  v72 = v68[3];
  v73 = v68[4];
  __swift_project_boxed_opaque_existential_1(v68, v72);
  v74 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_configuration;
  v82 = (*(v73 + 32) + **(v73 + 32));
  v75 = swift_task_alloc();
  *(v0 + 1176) = v75;
  *v75 = v0;
  v75[1] = sub_228072F94;
  v76 = *(v0 + 1128);
  v77 = *(v0 + 720);
  v78 = *(v0 + 712);

  return v82(v76, v65 + v74, v77, v78, v72, v73);
}

uint64_t sub_228072F94()
{
  *(*v1 + 1184) = v0;

  if (v0)
  {
    v2 = sub_22807361C;
  }

  else
  {
    v2 = sub_2280730A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2280730A8()
{
  v52 = v0;
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1128);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 1104);
  v5 = *(v0 + 1096);
  sub_2281324D4();
  sub_228084CF0(v5, type metadata accessor for SignpostToken);

  (*(v3 + 32))(v1, v2, v4);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 1144);
  v7 = *(v0 + 1120);
  v8 = *(v0 + 1112);
  v9 = *(v0 + 1104);
  __swift_project_value_buffer(*(v0 + 1056), qword_2813C8A20);
  (*(v8 + 16))(v7, v6, v9);
  v10 = sub_22813880C();
  v11 = sub_2281396BC();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 1120);
  v14 = *(v0 + 1112);
  v15 = *(v0 + 1104);
  v50 = v0 + 16;
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v51[0] = v17;
    *v16 = 136446210;
    v49 = sub_228136FEC();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = sub_227FCC340(v49, v19, v51);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_227FC3000, v10, v11, "Locale used for inference: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v17);
    MEMORY[0x22AAB28A0](v17, -1, -1);
    MEMORY[0x22AAB28A0](v16, -1, -1);
  }

  else
  {

    v20 = *(v14 + 8);
    v20(v13, v15);
  }

  *(v0 + 1192) = v20;
  v22 = *(v0 + 736);
  if (v22)
  {
    v23 = *(v0 + 728);
    os_unfair_lock_lock((v22 + 16));
    v51[3] = MEMORY[0x277D84A28];
    v51[0] = v23;

    sub_2280449E4(v51, KeyPath, (v22 + 24));
    os_unfair_lock_unlock((v22 + 16));

    v25 = *(v0 + 736);
  }

  else
  {
    v25 = 0;
  }

  v26 = *(v0 + 744);
  v27 = *(v0 + 728);
  v28 = *(v0 + 720);
  v29 = *(v0 + 712);
  v30 = *(v0 + 704);
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  DynamicType = swift_getDynamicType();
  v32 = v30[4];
  v33 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_tokenCounter;
  *(v0 + 256) = type metadata accessor for TokenCounter(0);
  *(v0 + 264) = &off_283B5BC48;
  boxed_opaque_existential_0Tm_0 = __swift_allocate_boxed_opaque_existential_0Tm_0((v0 + 232));
  sub_228084B4C(v26 + v33, boxed_opaque_existential_0Tm_0, type metadata accessor for TokenCounter);
  sub_22808764C(v28, v0 + 128);
  sub_22808764C(v0 + 232, v50);
  *(v0 + 56) = DynamicType;
  *(v0 + 64) = v32;
  *(v0 + 72) = v29;
  *(v0 + 80) = v27;
  v36 = *(v0 + 256);
  v35 = *(v0 + 264);
  v37 = __swift_project_boxed_opaque_existential_1((v0 + 232), v36);
  *(v0 + 112) = v36;
  *(v0 + 120) = *(v35 + 8);
  v38 = __swift_allocate_boxed_opaque_existential_0Tm_0((v0 + 88));
  (*(*(v36 - 8) + 16))(v38, v37, v36);
  *(v0 + 168) = v25;

  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 232));
  sub_22808764C(v28, v0 + 176);
  *(v0 + 216) = v29;
  *(v0 + 224) = v25;

  sub_228136F7C();
  if (qword_2813C4970 != -1)
  {
    swift_once();
  }

  v39 = *(v0 + 1144);
  v40 = *(v0 + 720);
  v41 = *(v0 + 712);
  v42 = *(v0 + 704);
  v43 = type metadata accessor for Signpost(0);
  *(v0 + 1200) = v43;
  v44 = __swift_project_value_buffer(v43, qword_2813C89A8);
  sub_22808764C(v40, v0 + 272);
  sub_22808764C(v42, v0 + 312);
  v45 = swift_allocObject();
  *(v0 + 1208) = v45;
  sub_227FD0F5C((v0 + 272), v45 + 16);
  sub_227FD0F5C((v0 + 312), v45 + 56);
  *(v45 + 96) = v41;
  v46 = swift_task_alloc();
  *(v0 + 1216) = v46;
  v46[2] = v39;
  v46[3] = v42;
  v46[4] = v50;

  v47 = swift_task_alloc();
  *(v0 + 1224) = v47;
  *v47 = v0;
  v47[1] = sub_22807392C;

  return sub_22810AB9C(v44, sub_2280889F8, v45, &unk_22813E438, v46);
}

uint64_t sub_22807361C()
{
  v1 = v0[148];
  v2 = v0[146];
  v3 = v0[145];
  v4 = v0[137];
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = sub_2280880A4;
  v5[4] = v3;
  swift_beginAccess();
  *(v2 + 16) = sub_228088A00;
  *(v2 + 24) = v5;

  v6 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_228084CF0(v4, type metadata accessor for SignpostToken);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22807392C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[154] = a1;
  v4[155] = a2;
  v4[156] = v2;

  if (v2)
  {
    v5 = sub_2280772D4;
  }

  else
  {

    v5 = sub_228073A5C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228073A5C()
{
  v16 = v0;
  v1 = v0[92];
  if (v1)
  {
    sub_228136F4C();
    v3 = v2 * -1000.0;
    KeyPath = swift_getKeyPath(byte_22813E370);
    os_unfair_lock_lock((v1 + 16));
    v15[3] = MEMORY[0x277D839F8];
    *v15 = v3;

    sub_228044BA4(v15, KeyPath, (v1 + 24));
    os_unfair_lock_unlock((v1 + 16));
  }

  v5 = v0[93];
  v6 = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine;
  v0[157] = OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine;
  v7 = *(v5 + v6 + 24);
  v8 = *(v5 + v6 + 32);
  __swift_project_boxed_opaque_existential_1((v5 + v6), v7);
  v9 = *(v8 + 8);
  v14 = (*(v9 + 24) + **(v9 + 24));
  v10 = swift_task_alloc();
  v0[158] = v10;
  *v10 = v0;
  v10[1] = sub_228073C18;
  v11 = v0[155];
  v12 = v0[154];

  return v14(v12, v11, v7, v9);
}

uint64_t sub_228073C18(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1272) = a1;
  *(v3 + 1280) = v1;

  if (v1)
  {
    v4 = sub_228077584;
  }

  else
  {
    v4 = sub_228073D30;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_228073D30()
{
  v1 = *(v0 + 992);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  v4 = *(v0 + 968);
  v5 = *(v0 + 960);
  v6 = *(v0 + 936);
  v101 = *(v0 + 712);
  v7 = sub_228136DBC();
  *(v0 + 1288) = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  *(v0 + 1296) = v9;
  *(v0 + 1304) = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v1, 1, 1, v7);
  v9(v2, 1, 1, v7);
  v9(v3, 1, 1, v7);
  v9(v4, 1, 1, v7);
  v10 = sub_228138E0C();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = sub_228138DDC();
  *(v0 + 1312) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  *(v0 + 1320) = v13;
  *(v0 + 1328) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(v6, 1, 1, v11);
  v14 = MEMORY[0x277D84F90];
  sub_228138F4C();
  *(v0 + 672) = sub_227FE5558(v14);
  v15 = *(v101 + 16);
  *(v0 + 1336) = v15;
  if (!v15)
  {
    v27 = *(v0 + 904);
    v28 = *(v0 + 896);
    v29 = *(v0 + 776);

    sub_228060DC0(v30, v29);

    if ((*(v27 + 48))(v29, 1, v28) == 1)
    {
      v31 = *(v0 + 776);
      v32 = &qword_27D81E950;
      v33 = &qword_22813C670;
    }

    else
    {
      v55 = *(v0 + 776);
      v56 = *(v0 + 760);
      sub_228088344(v55 + *(*(v0 + 896) + 20), v56, &qword_27D81E8C0, &unk_22813C3A0);
      sub_228084CF0(v55, type metadata accessor for SummarizationResult);
      v57 = type metadata accessor for GMSModelInfo(0);
      if ((*(*(v57 - 8) + 48))(v56, 1, v57) != 1)
      {
        v67 = *(v0 + 1272);
        v68 = *(v0 + 760);
        v69 = *(v0 + 752);
        v70 = *(v0 + 1336) == 0;
        sub_22813715C();
        v71 = sub_22813713C();
        (*(*(v71 - 8) + 56))(v69, 0, 1, v71);
        v72 = swift_task_alloc();
        *(v72 + 16) = v68;
        *(v72 + 24) = v69;
        *(v72 + 32) = v67;
        *(v72 + 40) = 0;
        *(v72 + 48) = 0;
        *(v72 + 56) = v70;
        sub_228138DCC();

        sub_2280883AC(v69, &qword_27D81E778, &qword_22813BC80);
        sub_228084CF0(v68, type metadata accessor for GMSModelInfo);
        v58 = 0;
        goto LABEL_16;
      }

      v31 = *(v0 + 760);
      v32 = &qword_27D81E8C0;
      v33 = &unk_22813C3A0;
    }

    sub_2280883AC(v31, v32, v33);
    v58 = 1;
LABEL_16:
    v73 = *(v0 + 1144);
    v94 = *(v0 + 1192);
    v93 = *(v0 + 1104);
    v74 = *(v0 + 1032);
    v91 = *(v0 + 1024);
    v92 = *(v0 + 1048);
    v75 = *(v0 + 1016);
    v76 = *(v0 + 1008);
    v90 = *(v0 + 1000);
    v77 = *(v0 + 936);
    v78 = *(v0 + 928);
    v79 = *(v0 + 696);
    (*(v0 + 1320))(v78, v58, 1, *(v0 + 1312));
    sub_228088344(v78, v77, &qword_27D81ECF0, &qword_22813E230);
    sub_228138F1C();
    sub_2280883AC(v78, &qword_27D81ECF0, &qword_22813E230);
    (*(v76 + 32))(v79, v75, v90);

    (*(v74 + 8))(v92, v91);
    sub_228045B70(v0 + 16);
    v94(v73, v93);

    v26 = *(v0 + 8);
    goto LABEL_17;
  }

  v16 = *(v0 + 712);
  *(v0 + 1488) = *MEMORY[0x277D0E578];
  v17 = *(v0 + 1280);
  *(v0 + 1494) = 1;
  *(v0 + 1344) = 0u;
  v18 = *(v16 + 32);
  *(v0 + 1495) = v18;
  sub_2281395DC();
  v19 = *(v0 + 1240);
  if (v17)
  {
    v20 = *(v0 + 1192);
    v21 = *(v0 + 1144);
    v22 = *(v0 + 1104);
    v23 = *(v0 + 1048);
    v24 = *(v0 + 1032);
    v25 = *(v0 + 1024);
    (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));

    (*(v24 + 8))(v23, v25);
    sub_228045B70(v0 + 16);
    v20(v21, v22);

    v26 = *(v0 + 8);
LABEL_17:

    return v26();
  }

  v34 = *(v0 + 1048);
  v35 = *(v0 + 1040);
  v36 = *(v0 + 1032);
  v37 = *(v0 + 1024);
  v38 = *(v0 + 880);
  v102 = *(v0 + 856);
  v39 = *(v0 + 840);
  v97 = *(v0 + 832);
  v98 = *(v0 + 1232);
  v95 = *(v0 + 720);
  v96 = *(v0 + 864);
  v99 = *(v0 + 1492) & 1;
  v40 = *(v0 + 704);
  sub_228136F7C();
  v41 = *(v36 + 40);
  *(v0 + 1360) = v41;
  *(v0 + 1368) = (v36 + 40) & 0xFFFFFFFFFFFFLL | 0xEFDA000000000000;
  v41(v34, v35, v37);
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  DynamicType = swift_getDynamicType();
  v43 = v40[4];
  sub_22808764C(v95, v0 + 352);
  (*(v39 + 56))(v96, 1, 1, v97);
  *(v0 + 624) = v98;
  *(v0 + 632) = v19;
  *(v0 + 640) = 10;
  *(v0 + 648) = 0xE100000000000000;
  *(v0 + 656) = 4091452;
  *(v0 + 664) = 0xE300000000000000;
  v89 = sub_227FDB420();
  v88 = MEMORY[0x277D837D0];
  *v38 = sub_2281397BC();
  *(v38 + 8) = v44;
  *(v38 + 16) = DynamicType;
  *(v38 + 24) = v43;
  *(v38 + 32) = v18;
  *(v38 + 33) = v99;
  sub_22808764C(v0 + 352, v38 + 40);
  sub_228088344(v96, v102, &qword_27D81ED08, &qword_228140BA0);
  v45 = *(v39 + 48);
  v46 = v45(v102, 1, v97);
  v47 = *(v0 + 832);
  if (v46 == 1)
  {
    v48 = *(v0 + 1488);
    v100 = *(v0 + 864);
    v103 = *(v0 + 856);
    v49 = *(v0 + 824);
    v50 = *(v0 + 816);
    v51 = *(v0 + 808);
    v52 = *(v0 + 800);
    v53 = sub_228137A7C();
    (*(*(v53 - 8) + 56))(v49, 1, 1, v53);
    (*(v50 + 104))(v49, v48, v51);
    sub_228137AAC();
    sub_228137A0C();
    v54 = sub_228137A1C();
    (*(*(v54 - 8) + 56))(v52, 0, 1, v54);
    sub_228137A8C();
    sub_2280883AC(v100, &qword_27D81ED08, &qword_228140BA0);
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 352));
    if (v45(v103, 1, v47) != 1)
    {
      sub_2280883AC(*(v0 + 856), &qword_27D81ED08, &qword_228140BA0);
    }
  }

  else
  {
    v59 = *(v0 + 856);
    v60 = *(v0 + 848);
    v61 = *(v0 + 840);
    sub_2280883AC(*(v0 + 864), &qword_27D81ED08, &qword_228140BA0);
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 352));
    (*(v61 + 32))(v60, v59, v47);
  }

  v62 = *(v0 + 888);
  v63 = *(v0 + 880);
  v64 = *(v0 + 736);
  (*(*(v0 + 840) + 32))(v63 + *(*(v0 + 872) + 36), *(v0 + 848), *(v0 + 832));
  sub_2280876B0(v63, v62, type metadata accessor for SummarizationParameters);
  if (v64)
  {
    v65 = *(v0 + 736);
    KeyPath = swift_getKeyPath(" 0nU", v88, v89, v89, v89);
    os_unfair_lock_lock((v65 + 16));
    sub_228084228((v65 + 24), KeyPath, 1);
    os_unfair_lock_unlock((*(v0 + 736) + 16));
  }

  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v81 = *(v0 + 888);
  v82 = *(v0 + 744);
  v83 = *(v0 + 736);
  *(v0 + 1376) = qword_2813C8B90;
  v84 = swift_task_alloc();
  *(v0 + 1384) = v84;
  v84[2] = v82;
  v84[3] = v81;
  v84[4] = v83;
  v85 = swift_task_alloc();
  *(v0 + 1392) = v85;
  *v85 = v0;
  v85[1] = sub_228074BE0;
  v86 = *(v0 + 1144);
  v87 = *(v0 + 912);

  return MEMORY[0x282200908](v87, v86, &unk_22813E448, v84, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
}

uint64_t sub_228074BE0()
{
  *(*v1 + 1400) = v0;

  if (v0)
  {

    v2 = sub_228077828;
  }

  else
  {

    v2 = sub_228074D28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_228074D28()
{
  v91 = v0;
  v1 = *(v0 + 736);
  sub_2280876B0(*(v0 + 912), *(v0 + 920), type metadata accessor for SummarizationResult);
  if (v1)
  {
    v2 = *(v0 + 1048);

    sub_228078930(v3, v2);
  }

  v4 = *(v0 + 1360);
  v5 = *(v0 + 1048);
  v6 = *(v0 + 1040);
  v7 = *(v0 + 1024);
  sub_228136F7C();
  v4(v5, v6, v7);
  if (qword_2813C4960 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 1400);
  v9 = *(v0 + 1495);
  v10 = *(v0 + 920);
  v11 = *(v0 + 720);
  v12 = *(v0 + 704);
  __swift_project_value_buffer(*(v0 + 1200), qword_2813C8978);
  sub_22808764C(v11, v0 + 392);
  sub_22808764C(v12, v0 + 432);
  v13 = swift_allocObject();
  sub_227FD0F5C((v0 + 392), v13 + 16);
  sub_227FD0F5C((v0 + 432), v13 + 56);
  *(v13 + 96) = v9;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_228087F4C;
  *(v14 + 24) = v13;

  v85 = v13;

  sub_2281324C8();
  v15 = v12[3];
  v16 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v15);
  v18 = *v10;
  v17 = v10[1];
  v19 = *(v16 + 16);

  v20 = v19(v18, v17, v0 + 16, v15, v16);
  *(v0 + 1408) = v21;
  if (v8)
  {
    v22 = v8;
    v81 = *(v0 + 1144);
    v82 = *(v0 + 1192);
    v79 = *(v0 + 1104);
    v23 = *(v0 + 1088);
    v24 = *(v0 + 1032);
    v77 = *(v0 + 1024);
    v78 = *(v0 + 1048);
    v25 = *(v0 + 1008);
    v26 = *(v0 + 1000);
    v76 = *(v0 + 920);
    v74 = *(v0 + 1016);
    v75 = *(v0 + 888);

    v27 = swift_allocObject();
    v27[2] = v22;
    v27[3] = sub_228087F4C;
    v27[4] = v85;
    swift_beginAccess();
    *(v14 + 16) = sub_228087F5C;
    *(v14 + 24) = v27;

    v28 = v22;

    swift_willThrow();
    sub_2281324D8();
    sub_228084CF0(v23, type metadata accessor for SignpostToken);

    (*(v25 + 8))(v74, v26);

    sub_228084CF0(v75, type metadata accessor for SummarizationParameters);
    sub_228084CF0(v76, type metadata accessor for SummarizationResult);

    (*(v24 + 8))(v78, v77);
    sub_228045B70(v0 + 16);
    v82(v81, v79);
LABEL_24:

    v61 = *(v0 + 8);

    return v61();
  }

  v29 = v20;
  v30 = v21;
  v31 = *(v0 + 1088);

  sub_2281324D8();
  sub_228084CF0(v31, type metadata accessor for SignpostToken);

  v32 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v32 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
    v84 = *(v0 + 1144);
    v86 = *(v0 + 1192);
    v83 = *(v0 + 1104);
    v80 = *(v0 + 1048);
    v42 = *(v0 + 1032);
    v43 = *(v0 + 1024);
    v44 = *(v0 + 1016);
    v45 = *(v0 + 1008);
    v46 = *(v0 + 1000);
    v47 = *(v0 + 920);
    v48 = *(v0 + 888);

    v49 = swift_allocObject();
    *(v49 + 16) = 27;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0;
    v50 = sub_227FF96D4(0, 0xD000000000000079, 0x80000002281464B0, 974, sub_2280889A8, v49);
    sub_227FDB3CC();
    swift_allocError();
    *v51 = 27;
    *(v51 + 8) = v50;
    swift_willThrow();
    (*(v45 + 8))(v44, v46);
    sub_228084CF0(v48, type metadata accessor for SummarizationParameters);
    sub_228084CF0(v47, type metadata accessor for SummarizationResult);

    (*(v42 + 8))(v80, v43);
    sub_228045B70(v0 + 16);
    v86(v84, v83);
    goto LABEL_24;
  }

  v33 = v0 + 672;
  if (*(v0 + 736))
  {
    v34 = *(v0 + 1048);

    sub_228078AE8(v35, v34, v29, v30);
  }

  v36 = *(v0 + 920);
  v37 = *(v0 + 904);
  v38 = *(v0 + 896);
  v39 = *(v0 + 784);
  v40 = *(v0 + 1495);

  *v36 = v29;
  v36[1] = v30;
  sub_228084B4C(v36, v39, type metadata accessor for SummarizationResult);
  (*(v37 + 56))(v39, 0, 1, v38);
  sub_228025270(v39, v40);
  if (v40 == 3)
  {
    v90[0] = 3;

    if (!sub_22809D2D0(v90))
    {
      goto LABEL_19;
    }

    sub_22809D4A4(v29, v30);
    *(v0 + 680) = v41;
    swift_setAtWritableKeyPath();
  }

  else
  {
    v89 = *(v0 + 1495);

    if (!sub_22809CD84(&v89))
    {
      goto LABEL_19;
    }

    v52 = *(v0 + 1296);
    v53 = *(v0 + 1288);
    v54 = *(v0 + 992);

    sub_228136DDC();
    sub_228136DCC();
    v52(v54, 0, 1, v53);
    v33 = v0 + 672;
    swift_setAtWritableKeyPath();
  }

LABEL_19:

  if (*(v0 + 1494))
  {
    v55 = (*(v0 + 744) + *(v0 + 1256));
    v56 = v55[3];
    v57 = v55[4];
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v58 = *(v57 + 8);
    v87 = (*(v58 + 24) + **(v58 + 24));
    v59 = swift_task_alloc();
    *(v0 + 1416) = v59;
    *v59 = v0;
    v59[1] = sub_228075A10;

    return v87(v29, v30, v56, v58);
  }

  else
  {

    *(v0 + 1440) = *(v0 + 1352);
    sub_2281395DC();
    v88 = v33;
    if (qword_2813C4958 != -1)
    {
      swift_once();
    }

    v62 = *(v0 + 1495);
    v63 = *(v0 + 1240);
    v64 = *(v0 + 1232);
    v65 = *(v0 + 744);
    v66 = *(v0 + 720);
    v67 = *(v0 + 704);
    *(v0 + 1448) = __swift_project_value_buffer(*(v0 + 1200), qword_2813C8960);
    v68 = swift_allocObject();
    *(v0 + 1456) = v68;
    *(v68 + 16) = sub_228131B40;
    *(v68 + 24) = 0;

    sub_2281324C4();
    v69 = swift_task_alloc();
    *(v0 + 1464) = v69;
    *(v69 + 16) = v65;
    *(v69 + 24) = v64;
    *(v69 + 32) = v63;
    *(v69 + 40) = v88;
    *(v69 + 48) = v66;
    *(v69 + 56) = v67;
    *(v69 + 64) = v62;
    v70 = swift_task_alloc();
    *(v0 + 1472) = v70;
    *v70 = v0;
    v70[1] = sub_228076030;
    v71 = *(v0 + 1144);
    v72 = *(v0 + 952);
    v73 = *(v0 + 944);
    v93 = 999;
    v94 = v73;

    return MEMORY[0x282200908](v72, v71, &unk_22813E458, v69, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
  }
}

uint64_t sub_228075A10(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1424) = v1;

  if (v1)
  {

    v5 = sub_228077B08;
  }

  else
  {
    *(v4 + 1432) = a1;
    v5 = sub_228075B64;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_228075B64(uint64_t a1)
{
  v2 = *(v1 + 1424);
  *(v1 + 1440) = *(v1 + 1432);
  sub_2281395DC();
  if (v2)
  {
    v23 = *(v1 + 1192);
    v3 = *(v1 + 1144);
    v4 = *(v1 + 1104);
    v5 = *(v1 + 1048);
    v6 = *(v1 + 1032);
    v7 = *(v1 + 1024);
    v8 = *(v1 + 920);
    v9 = *(v1 + 888);
    (*(*(v1 + 1008) + 8))(*(v1 + 1016), *(v1 + 1000));

    sub_228084CF0(v9, type metadata accessor for SummarizationParameters);
    sub_228084CF0(v8, type metadata accessor for SummarizationResult);

    (*(v6 + 8))(v5, v7);
    sub_228045B70(v1 + 16);
    v23(v3, v4);

    v10 = *(v1 + 8);

    return v10();
  }

  else
  {
    if (qword_2813C4958 != -1)
    {
      swift_once();
    }

    v12 = *(v1 + 1495);
    v13 = *(v1 + 1240);
    v14 = *(v1 + 1232);
    v15 = *(v1 + 744);
    v16 = *(v1 + 720);
    v17 = *(v1 + 704);
    *(v1 + 1448) = __swift_project_value_buffer(*(v1 + 1200), qword_2813C8960);
    v18 = swift_allocObject();
    *(v1 + 1456) = v18;
    *(v18 + 16) = sub_228131B40;
    *(v18 + 24) = 0;

    sub_2281324C4();
    v19 = swift_task_alloc();
    *(v1 + 1464) = v19;
    *(v19 + 16) = v15;
    *(v19 + 24) = v14;
    *(v19 + 32) = v13;
    *(v19 + 40) = v1 + 672;
    *(v19 + 48) = v16;
    *(v19 + 56) = v17;
    *(v19 + 64) = v12;
    v20 = swift_task_alloc();
    *(v1 + 1472) = v20;
    *v20 = v1;
    v20[1] = sub_228076030;
    v21 = *(v1 + 1144);
    v22 = *(v1 + 952);

    return MEMORY[0x282200908](v22, v21, &unk_22813E458, v19, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
  }
}

uint64_t sub_228076030()
{
  *(*v1 + 1480) = v0;

  if (v0)
  {
    v2 = sub_228076EEC;
  }

  else
  {

    v2 = sub_22807614C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22807614C()
{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 920);
  v4 = *(v0 + 888);
  v5 = *(v0 + 1344) + 1;
  sub_2281324D4();
  sub_228084CF0(v2, type metadata accessor for SignpostToken);

  sub_228138EFC();
  sub_228084CF0(v4, type metadata accessor for SummarizationParameters);
  sub_228084CF0(v3, type metadata accessor for SummarizationResult);
  if (v5 == v1)
  {
    v6 = *(v0 + 1440);
    v7 = *(v0 + 904);
    v8 = *(v0 + 896);
    v9 = *(v0 + 776);

    sub_228060DC0(v10, v9);

    if ((*(v7 + 48))(v9, 1, v8) == 1)
    {
      v11 = *(v0 + 776);
      v12 = &qword_27D81E950;
      v13 = &qword_22813C670;
    }

    else
    {
      v25 = *(v0 + 776);
      v26 = *(v0 + 760);
      sub_228088344(v25 + *(*(v0 + 896) + 20), v26, &qword_27D81E8C0, &unk_22813C3A0);
      sub_228084CF0(v25, type metadata accessor for SummarizationResult);
      v27 = type metadata accessor for GMSModelInfo(0);
      if ((*(*(v27 - 8) + 48))(v26, 1, v27) != 1)
      {
        v48 = *(v0 + 1272);
        v49 = *(v0 + 760);
        v50 = *(v0 + 752);
        v51 = *(v0 + 1336) == 0;
        sub_22813715C();
        v52 = sub_22813713C();
        (*(*(v52 - 8) + 56))(v50, 0, 1, v52);
        v53 = swift_task_alloc();
        *(v53 + 16) = v49;
        *(v53 + 24) = v50;
        *(v53 + 32) = v48;
        *(v53 + 40) = 0;
        *(v53 + 48) = v6;
        *(v53 + 56) = v51;
        sub_228138DCC();

        sub_2280883AC(v50, &qword_27D81E778, &qword_22813BC80);
        sub_228084CF0(v49, type metadata accessor for GMSModelInfo);
        v28 = 0;
        goto LABEL_13;
      }

      v11 = *(v0 + 760);
      v12 = &qword_27D81E8C0;
      v13 = &unk_22813C3A0;
    }

    sub_2280883AC(v11, v12, v13);
    v28 = 1;
LABEL_13:
    v54 = *(v0 + 1144);
    v84 = *(v0 + 1192);
    v83 = *(v0 + 1104);
    v55 = *(v0 + 1032);
    v81 = *(v0 + 1024);
    v82 = *(v0 + 1048);
    v56 = *(v0 + 1016);
    v57 = *(v0 + 1008);
    v80 = *(v0 + 1000);
    v58 = *(v0 + 936);
    v59 = *(v0 + 928);
    v60 = *(v0 + 696);
    (*(v0 + 1320))(v59, v28, 1, *(v0 + 1312));
    sub_228088344(v59, v58, &qword_27D81ECF0, &qword_22813E230);
    sub_228138F1C();
    sub_2280883AC(v59, &qword_27D81ECF0, &qword_22813E230);
    (*(v57 + 32))(v60, v56, v80);

    (*(v55 + 8))(v82, v81);
    sub_228045B70(v0 + 16);
    v84(v54, v83);

    v24 = *(v0 + 8);
    goto LABEL_14;
  }

  v14 = *(v0 + 1480);
  v15 = *(v0 + 1344) + 1;
  *(v0 + 1352) = *(v0 + 1440);
  *(v0 + 1494) = 0;
  *(v0 + 1344) = v15;
  v16 = *(*(v0 + 712) + v15 + 32);
  *(v0 + 1495) = v16;
  sub_2281395DC();
  v17 = *(v0 + 1240);
  if (v14)
  {
    v18 = *(v0 + 1192);
    v19 = *(v0 + 1144);
    v20 = *(v0 + 1104);
    v21 = *(v0 + 1048);
    v22 = *(v0 + 1032);
    v23 = *(v0 + 1024);
    (*(*(v0 + 1008) + 8))(*(v0 + 1016), *(v0 + 1000));

    (*(v22 + 8))(v21, v23);
    sub_228045B70(v0 + 16);
    v18(v19, v20);

    v24 = *(v0 + 8);
LABEL_14:

    return v24();
  }

  v29 = *(v0 + 1048);
  v30 = *(v0 + 1040);
  v31 = *(v0 + 1032);
  v32 = *(v0 + 1024);
  v33 = *(v0 + 880);
  v92 = *(v0 + 856);
  v34 = *(v0 + 840);
  v87 = *(v0 + 832);
  v88 = *(v0 + 1232);
  v85 = *(v0 + 720);
  v86 = *(v0 + 864);
  v90 = *(v0 + 1492) & 1;
  v35 = *(v0 + 704);
  sub_228136F7C();
  v36 = *(v31 + 40);
  *(v0 + 1360) = v36;
  *(v0 + 1368) = (v31 + 40) & 0xFFFFFFFFFFFFLL | 0xEFDA000000000000;
  v36(v29, v30, v32);
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  DynamicType = swift_getDynamicType();
  v38 = v35[4];
  sub_22808764C(v85, v0 + 352);
  (*(v34 + 56))(v86, 1, 1, v87);
  *(v0 + 624) = v88;
  *(v0 + 632) = v17;
  *(v0 + 640) = 10;
  *(v0 + 648) = 0xE100000000000000;
  *(v0 + 656) = 4091452;
  *(v0 + 664) = 0xE300000000000000;
  v79 = sub_227FDB420();
  v78 = MEMORY[0x277D837D0];
  *v33 = sub_2281397BC();
  *(v33 + 8) = v39;
  *(v33 + 16) = DynamicType;
  *(v33 + 24) = v38;
  *(v33 + 32) = v16;
  *(v33 + 33) = v90;
  sub_22808764C(v0 + 352, v33 + 40);
  sub_228088344(v86, v92, &qword_27D81ED08, &qword_228140BA0);
  v40 = *(v34 + 48);
  if (v40(v92, 1, v87) == 1)
  {
    v41 = *(v0 + 1488);
    v93 = *(v0 + 856);
    v89 = *(v0 + 864);
    v91 = *(v0 + 832);
    v42 = *(v0 + 824);
    v43 = *(v0 + 816);
    v44 = *(v0 + 808);
    v45 = *(v0 + 800);
    v46 = sub_228137A7C();
    (*(*(v46 - 8) + 56))(v42, 1, 1, v46);
    (*(v43 + 104))(v42, v41, v44);
    sub_228137AAC();
    sub_228137A0C();
    v47 = sub_228137A1C();
    (*(*(v47 - 8) + 56))(v45, 0, 1, v47);
    sub_228137A8C();
    sub_2280883AC(v89, &qword_27D81ED08, &qword_228140BA0);
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 352));
    if (v40(v93, 1, v91) != 1)
    {
      sub_2280883AC(*(v0 + 856), &qword_27D81ED08, &qword_228140BA0);
    }
  }

  else
  {
    v62 = *(v0 + 856);
    v63 = *(v0 + 848);
    v64 = *(v0 + 840);
    v65 = *(v0 + 832);
    sub_2280883AC(*(v0 + 864), &qword_27D81ED08, &qword_228140BA0);
    __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 352));
    (*(v64 + 32))(v63, v62, v65);
  }

  v66 = *(v0 + 888);
  v67 = *(v0 + 880);
  v68 = *(v0 + 736);
  (*(*(v0 + 840) + 32))(v67 + *(*(v0 + 872) + 36), *(v0 + 848), *(v0 + 832));
  sub_2280876B0(v67, v66, type metadata accessor for SummarizationParameters);
  if (v68)
  {
    v69 = *(v0 + 736);
    KeyPath = swift_getKeyPath(" 0nU", v78, v79, v79, v79);
    os_unfair_lock_lock((v69 + 16));
    sub_228084228((v69 + 24), KeyPath, 1);
    os_unfair_lock_unlock((*(v0 + 736) + 16));
  }

  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v71 = *(v0 + 888);
  v72 = *(v0 + 744);
  v73 = *(v0 + 736);
  *(v0 + 1376) = qword_2813C8B90;
  v74 = swift_task_alloc();
  *(v0 + 1384) = v74;
  v74[2] = v72;
  v74[3] = v71;
  v74[4] = v73;
  v75 = swift_task_alloc();
  *(v0 + 1392) = v75;
  *v75 = v0;
  v75[1] = sub_228074BE0;
  v76 = *(v0 + 1144);
  v77 = *(v0 + 912);

  return MEMORY[0x282200908](v77, v76, &unk_22813E448, v74, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
}

uint64_t sub_228076EEC()
{
  v1 = v0[185];
  v2 = v0[182];
  v17 = v0[143];
  v18 = v0[149];
  v16 = v0[138];
  v3 = v0[135];
  v4 = v0[129];
  v14 = v0[128];
  v15 = v0[131];
  v11 = v0[127];
  v5 = v0[126];
  v6 = v0[125];
  v13 = v0[115];
  v12 = v0[111];

  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = sub_228131B40;
  v7[4] = 0;
  swift_beginAccess();
  *(v2 + 16) = sub_2280889FC;
  *(v2 + 24) = v7;
  v8 = v1;

  swift_willThrow();
  sub_2281324D4();
  sub_228084CF0(v3, type metadata accessor for SignpostToken);

  (*(v5 + 8))(v11, v6);
  sub_228084CF0(v12, type metadata accessor for SummarizationParameters);
  sub_228084CF0(v13, type metadata accessor for SummarizationResult);

  (*(v4 + 8))(v15, v14);
  sub_228045B70((v0 + 2));
  v18(v17, v16);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2280772D4()
{
  v1 = v0[149];
  v2 = v0[143];
  v3 = v0[138];
  v4 = v0[131];
  v5 = v0[129];
  v6 = v0[128];

  (*(v5 + 8))(v4, v6);
  sub_228045B70((v0 + 2));
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_228077584()
{
  v1 = v0[149];
  v2 = v0[143];
  v3 = v0[138];
  v4 = v0[131];
  v5 = v0[129];
  v6 = v0[128];

  (*(v5 + 8))(v4, v6);
  sub_228045B70((v0 + 2));
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_228077828()
{
  v1 = v0[149];
  v2 = v0[143];
  v3 = v0[138];
  v4 = v0[131];
  v5 = v0[129];
  v6 = v0[128];
  v7 = v0[111];
  (*(v0[126] + 8))(v0[127], v0[125]);
  sub_228084CF0(v7, type metadata accessor for SummarizationParameters);

  (*(v5 + 8))(v4, v6);
  sub_228045B70((v0 + 2));
  v1(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_228077B08()
{
  v1 = v0[149];
  v2 = v0[143];
  v3 = v0[138];
  v4 = v0[131];
  v5 = v0[129];
  v6 = v0[128];
  v7 = v0[115];
  v8 = v0[111];
  (*(v0[126] + 8))(v0[127], v0[125]);
  sub_228084CF0(v8, type metadata accessor for SummarizationParameters);
  sub_228084CF0(v7, type metadata accessor for SummarizationResult);

  (*(v5 + 8))(v4, v6);
  sub_228045B70((v0 + 2));
  v1(v2, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_228077E08(void *a1, void *a2, uint64_t a3)
{
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 16))(v6, v7);
  MEMORY[0x22AAB1970](v8);

  MEMORY[0x22AAB1970](0x6E65746E6F63202CLL, 0xEF203A6570795474);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  swift_getDynamicType();
  v9 = sub_228139B8C();
  MEMORY[0x22AAB1970](v9);

  MEMORY[0x22AAB1970](0x73656C797473202CLL, 0xEA0000000000203ALL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC68, &qword_22813DF38);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22813A4B0;
  *(v10 + 32) = a3;

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
  v12 = MEMORY[0x22AAB1AD0](v10, v11);
  v14 = v13;

  MEMORY[0x22AAB1970](v12, v14);

  MEMORY[0x22AAB1970](0xD000000000000015, 0x8000000228146590);
  return 0;
}

uint64_t sub_228077FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_228078020, 0, 0);
}

uint64_t sub_228078020()
{
  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_22807815C;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  return MEMORY[0x282200908](v3, v4, &unk_22813E468, v1, 0, 0, 0xD00000000000002BLL, 0x8000000228146330);
}

uint64_t sub_22807815C()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_228078298, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_228078298()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2280782FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_228078320, 0, 0);
}

uint64_t sub_228078320()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_22807844C;
  v5 = v0[4];

  return v7(v5, v2, v3);
}

uint64_t sub_22807844C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;

    return MEMORY[0x2822009F8](sub_2280785A8, 0, 0);
  }
}

uint64_t sub_2280785A8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 56);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_2280785CC(void *a1, void *a2, char a3)
{
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  MEMORY[0x22AAB1970](v7);

  MEMORY[0x22AAB1970](0x6E65746E6F63202CLL, 0xEF203A6570795474);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  swift_getDynamicType();
  v8 = sub_228139B8C();
  MEMORY[0x22AAB1970](v8);

  MEMORY[0x22AAB1970](0x3A656C797473202CLL, 0xE900000000000020);
  sub_2281398EC();
  MEMORY[0x22AAB1970](0xD000000000000015, 0x8000000228146590);
  return 0;
}

uint64_t sub_228078764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_228078788, 0, 0);
}

uint64_t sub_228078788()
{
  __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine), *(v0[3] + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_modelEngine + 24));
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_22807883C;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];

  return sub_2280AC738(v4, v2, v3);
}

uint64_t sub_22807883C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_228078930(uint64_t a1, uint64_t a2)
{
  v4 = sub_228136F8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((a1 + 16));
  sub_2280D2D28((a1 + 24), KeyPath);
  v10 = v9;
  os_unfair_lock_unlock((a1 + 16));

  if (v10)
  {
    (*(v5 + 16))(v7, a2, v4);
    sub_228136F4C();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    os_unfair_lock_lock((a1 + 16));
    *&v16[3] = MEMORY[0x277D839F8];
    v16[0] = v13 * -1000.0;

    sub_228044BA4(v16, v14, (a1 + 24));
    os_unfair_lock_unlock((a1 + 16));
  }

  return result;
}

uint64_t sub_228078AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_228136F8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath("@0nU");
  os_unfair_lock_lock((a1 + 16));
  sub_2280D2D28((a1 + 24), KeyPath);
  v12 = v11;
  os_unfair_lock_unlock((a1 + 16));

  if (v12)
  {
    (*(v7 + 16))(v9, a2, v6);
    sub_228136F4C();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    v15 = swift_getKeyPath("@0nU");
    os_unfair_lock_lock((a1 + 16));
    v24 = MEMORY[0x277D839F8];
    v23[0] = v14 * -1000.0;

    sub_228044BA4(v23, v15, (a1 + 24));
    os_unfair_lock_unlock((a1 + 16));
  }

  v16 = swift_getKeyPath(byte_22813E348);
  os_unfair_lock_lock((a1 + 16));
  sub_2280D2D08((a1 + 24), v16);
  v18 = v17;
  os_unfair_lock_unlock((a1 + 16));

  if (v18)
  {
    v20 = sub_22813936C();
    v21 = swift_getKeyPath(byte_22813E348);
    os_unfair_lock_lock((a1 + 16));
    v24 = MEMORY[0x277D84A28];
    *&v23[0] = v20;

    sub_2280449E4(v23, v21, (a1 + 24));
    os_unfair_lock_unlock((a1 + 16));
  }

  return result;
}

uint64_t sub_228078D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 97) = a8;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_228078D80, 0, 0);
}

uint64_t sub_228078D80()
{
  if (*(*(v0 + 24) + OBJC_IVAR____TtC16SummarizationKit20SummarizationSession_safetyContext))
  {
    v1 = *(v0 + 97);
    v2 = *(v0 + 64);
    v3 = *(v0 + 48);
    v4 = *v3;
    *(v0 + 72) = *v3;
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    DynamicType = swift_getDynamicType();
    v6 = v2[4];
    *(v0 + 96) = v1;

    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_228078F24;
    v8 = *(v0 + 56);
    v9 = *(v0 + 32);
    v10 = *(v0 + 40);
    v11 = *(v0 + 16);

    return sub_228059EDC(v11, v9, v10, v4, v8, DynamicType, v6, (v0 + 96));
  }

  else
  {
    v13 = *(v0 + 16);
    v14 = sub_228138E0C();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_228078F24()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_228079074, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22807908C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[62] = a6;
  v7[63] = a7;
  v7[60] = a4;
  v7[61] = a5;
  v7[58] = a2;
  v7[59] = a3;
  v8 = type metadata accessor for PartialSummariesOperation.TaskResult(0);
  v7[64] = v8;
  v7[65] = *(v8 - 8);
  v7[66] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E948, &qword_22813E1F0);
  v7[67] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECD8, &qword_22813E1F8);
  v7[68] = v9;
  v7[69] = *(v9 - 8);
  v7[70] = swift_task_alloc();
  v10 = *(type metadata accessor for PartialSummariesOperation(0) - 8);
  v7[71] = v10;
  v7[72] = *(v10 + 64);
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E788, &unk_22813BC90);
  v7[75] = swift_task_alloc();
  v7[76] = swift_task_alloc();
  v7[77] = swift_task_alloc();
  v7[78] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC98, &qword_22813E0D0);
  v7[79] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280792F4, 0, 0);
}

uint64_t sub_2280792F4()
{
  v67 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 472);
  type metadata accessor for PartialSummariesOperation.AccumulatedSafetyClassification(0);
  v3 = swift_allocObject();
  *(v0 + 640) = v3;
  v59 = v3;
  v4 = (v3 + OBJC_IVAR____TtCV16SummarizationKit25PartialSummariesOperationP33_C01AE9D7F5E45ED078F835903D8E9C9431AccumulatedSafetyClassification_safetyClassification);
  v5 = sub_228138E0C();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  *v4 = 0;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECA0, &qword_22813E0D8) + 28);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECE0, &qword_22813E200);
  bzero(v4 + v6, *(*(v7 - 8) + 64));
  sub_228085C84(v1, v4 + v6, &qword_27D81EC98, &qword_22813E0D0);
  v8 = *(v2 + 48);
  v9 = *(v8 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECE8, &qword_22813E220);
    v10 = swift_allocObject();
    v10[2] = (_swift_stdlib_malloc_size_2(v10) - 40) / 40;
    v10[3] = 0;
    v10[4] = 0;
    sub_22808495C((v10 + 2), (v10 + 5), v9, v8);
  }

  else
  {

    v10 = *sub_228137CBC();
  }

  *(v0 + 416) = v10;
  *(v0 + 424) = sub_227FE573C(MEMORY[0x277D84F90]);
  *(v0 + 432) = 0;
  v11 = objc_opt_self();
  *(v0 + 648) = v11;
  ObjectType = off_2785F1000;

  if (qword_2813C4620 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v13 = byte_2813C4629;
    *(v0 + 720) = byte_2813C4629;
    v64 = v10;
    if (v13 == 1)
    {
      if (qword_27D81E2A0 != -1)
      {
        swift_once();
      }

      v14 = &off_27D81EDB0;
    }

    else
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v14 = &qword_2813C76F8;
    }

    v15 = *(*v14 + 1808);
    v16 = *(*v14 + 1816);
    v17 = *(*v14 + 2208);

    if (qword_2813C4630 != -1)
    {
      swift_once();
    }

    ObjectType = byte_2813C4638;
    *(v0 + 721) = byte_2813C4638;
    if (ObjectType == 1)
    {
      v16(v66, v17);

      if (v66[0])
      {
        goto LABEL_16;
      }
    }

    else
    {

      if (v15)
      {
LABEL_16:
        v18 = 1;
        goto LABEL_28;
      }
    }

    if (v13)
    {
      if (qword_27D81E2A0 != -1)
      {
        swift_once();
      }

      v19 = &off_27D81EDB0;
    }

    else
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v19 = &qword_2813C76F8;
    }

    v18 = *(*v19 + 1768);
    v20 = *(*v19 + 1776);
    v21 = *(*v19 + 2208);

    if (ObjectType)
    {
      v20(v66, v21);

      v18 = v66[0];
    }

    else
    {
    }

LABEL_28:
    v10 = v64;
    v22 = *__swift_project_boxed_opaque_existential_1(*(v0 + 488), *(*(v0 + 488) + 24));
    v23 = type metadata accessor for GMSSummarizationModelEngine(0);
    *(v0 + 656) = v23;
    *(v0 + 120) = v23;
    *(v0 + 128) = &off_283B5E840;
    *(v0 + 96) = v22;

    v24 = *(v0 + 576);
    if (v18 <= 0)
    {
      break;
    }

    v25 = v24 + 7;
    v56 = (v0 + 288);
    v57 = *(v0 + 568);
    v58 = v24 + 7;
    while (1)
    {
      swift_beginAccess();
      if (v10[3] < 1)
      {
        swift_endAccess();
        goto LABEL_50;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2280849CC();
      }

      v28 = *(v0 + 416);
      v29 = v28[4];
      v30 = &v28[5 * v29];
      v31 = v30[9];
      v32 = *(v30 + 7);
      *(v0 + 56) = *(v30 + 5);
      *(v0 + 72) = v32;
      *(v0 + 88) = v31;
      v33 = __OFADD__(v29, 1);
      v34 = v29 + 1;
      if (v33)
      {
        break;
      }

      v35 = v28[3];
      if (v34 >= v28[2])
      {
        v34 = 0;
      }

      v28[4] = v34;
      if (__OFSUB__(v35, 1))
      {
        goto LABEL_54;
      }

      v36 = *(v0 + 624);
      v62 = *(v0 + 616);
      v63 = v18;
      v37 = *(v0 + 592);
      v38 = *(v0 + 472);
      v60 = v36;
      v61 = *(v0 + 480);
      v65 = v28;
      v28[3] = v35 - 1;
      swift_endAccess();
      ObjectType = sub_22813959C();
      v39 = *(ObjectType - 8);
      (*(v39 + 56))(v36, 1, 1, ObjectType);
      sub_228084B4C(v38, v37, type metadata accessor for PartialSummariesOperation);
      sub_22808764C(v0 + 96, v0 + 216);
      v40 = (*(v57 + 80) + 72) & ~*(v57 + 80);
      v41 = (v40 + v25) & 0xFFFFFFFFFFFFFFF8;
      v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      *(v43 + 24) = 0;
      v44 = *(v0 + 72);
      *(v43 + 32) = *(v0 + 56);
      *(v43 + 48) = v44;
      *(v43 + 64) = *(v0 + 88);
      sub_2280876B0(v37, v43 + v40, type metadata accessor for PartialSummariesOperation);
      *(v43 + v41) = v59;
      *(v43 + v42) = v61;
      sub_227FD0F5C((v0 + 216), v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8));
      sub_228088344(v60, v62, &qword_27D81E788, &unk_22813BC90);
      LODWORD(v37) = (*(v39 + 48))(v62, 1, ObjectType);

      v45 = *(v0 + 616);
      if (v37 == 1)
      {
        sub_2280883AC(*(v0 + 616), &qword_27D81E788, &unk_22813BC90);
      }

      else
      {
        sub_22813958C();
        (*(v39 + 8))(v45, ObjectType);
      }

      if (*(v43 + 16))
      {
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        v46 = sub_22813957C();
        v48 = v47;
        swift_unknownObjectRelease();
      }

      else
      {
        v46 = 0;
        v48 = 0;
      }

      v49 = **(v0 + 464);
      v11 = (v48 | v46);

      if (v48 | v46)
      {
        v26 = v0 + 288;
        *v56 = 0;
        *(v0 + 296) = 0;
        *(v0 + 304) = v46;
        *(v0 + 312) = v48;
      }

      else
      {
        v26 = 0;
      }

      v18 = v63 - 1;
      v27 = *(v0 + 624);
      *(v0 + 392) = 1;
      *(v0 + 400) = v26;
      *(v0 + 408) = v49;
      swift_task_create();

      sub_2280883AC(v27, &qword_27D81E788, &unk_22813BC90);
      v10 = v65;
      v25 = v58;
      if (v63 <= 1)
      {
        v18 = 0;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    swift_once();
  }

  v25 = v24 + 7;
LABEL_50:
  *(v0 + 664) = v25;
  v50 = *(v0 + 464);
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 96));
  v51 = MEMORY[0x277D84F90];
  *(v0 + 440) = MEMORY[0x277D84F90];
  *(v0 + 672) = *v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  sub_2281395EC();
  *(v0 + 704) = v10;
  *(v0 + 696) = v10;
  *(v0 + 688) = v51;
  *(v0 + 680) = v18;
  v52 = swift_task_alloc();
  *(v0 + 712) = v52;
  *v52 = v0;
  v52[1] = sub_228079CA4;
  v53 = *(v0 + 544);
  v54 = *(v0 + 536);

  return MEMORY[0x2822004E8](v54, 0, 0, v53, v0 + 448);
}