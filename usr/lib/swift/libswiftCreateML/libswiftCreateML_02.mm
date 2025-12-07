void *assignWithCopy for MLHandPoseClassifier(void *a1, void *a2, int *a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *a1;
  *a1 = *a2;

  v5;
  a1[1] = a2[1];

  v6 = a2[2];
  v7 = v4[2];
  v4[2] = v6;
  v6;

  v8 = type metadata accessor for MLHandActionClassifier(0);
  v9 = *(v8 + 28);
  v10 = v4 + v9;
  v11 = a2 + v9;
  v120 = v8;
  if (v4 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    v12 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v11, v12) == 1)
    {
      v118 = v12;
      v13 = type metadata accessor for MLHandActionClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v11, v13);
      switch(EnumCaseMultiPayload)
      {
        case 0u:
          v141 = type metadata accessor for URL(0);
          v16 = *(*(v141 - 8) + 16);
          v16(v10, v11, v141);
          v135 = v13;
          v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v16(&v10[v17[12]], &v11[v17[12]], v141);
          v3 = a2;
          v18 = v17[16];
          *&v10[v18] = *&v11[v18];
          *&v10[v18 + 8] = *&v11[v18 + 8];
          v19 = v17[20];
          *&v10[v19] = *&v11[v19];
          *&v10[v19 + 8] = *&v11[v19 + 8];
          v20 = v17[24];
          *&v10[v20] = *&v11[v20];
          *&v10[v20 + 8] = *&v11[v20 + 8];
          v21 = v17[28];
          *&v10[v21] = *&v11[v21];
          goto LABEL_11;
        case 1u:
        case 2u:
          v14 = type metadata accessor for URL(0);
          (*(*(v14 - 8) + 16))(v10, v11, v14);
          goto LABEL_14;
        case 3u:
          v136 = v13;
          v22 = *v11;
          v142 = v11[8];
          outlined copy of Result<_DataTable, Error>(*v11, v142);
          *v10 = v22;
          v10[8] = v142;
          *(v10 + 2) = *(v11 + 2);
          *(v10 + 3) = *(v11 + 3);
          *(v10 + 4) = *(v11 + 4);
          *(v10 + 5) = *(v11 + 5);
          *(v10 + 6) = *(v11 + 6);
          *(v10 + 7) = *(v11 + 7);

          v13 = v136;

          goto LABEL_13;
        case 4u:
          v134 = v13;
          v15 = *v11;
          v140 = v11[8];
          outlined copy of Result<_DataTable, Error>(*v11, v140);
          *v10 = v15;
          v10[8] = v140;
          *(v10 + 2) = *(v11 + 2);
          *(v10 + 3) = *(v11 + 3);
          *(v10 + 4) = *(v11 + 4);
          *(v10 + 5) = *(v11 + 5);
          *(v10 + 6) = *(v11 + 6);
          *(v10 + 7) = *(v11 + 7);
          *(v10 + 8) = *(v11 + 8);
          *(v10 + 9) = *(v11 + 9);

          v13 = v134;

          goto LABEL_13;
        case 5u:
          v23 = type metadata accessor for DataFrame(0);
          (*(*(v23 - 8) + 16))(v10, v11, v23);
          v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v25 = v24[12];
          *&v10[v25] = *&v11[v25];
          *&v10[v25 + 8] = *&v11[v25 + 8];
          v26 = v24[16];
          *&v10[v26] = *&v11[v26];
          *&v10[v26 + 8] = *&v11[v26 + 8];
          v27 = v24[20];
          *&v10[v27] = *&v11[v27];
          v135 = v13;
          *&v10[v27 + 8] = *&v11[v27 + 8];

          goto LABEL_12;
        case 6u:
          v28 = type metadata accessor for DataFrame(0);
          (*(*(v28 - 8) + 16))(v10, v11, v28);
          v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v30 = v29[12];
          *&v10[v30] = *&v11[v30];
          *&v10[v30 + 8] = *&v11[v30 + 8];
          v31 = v29[16];
          *&v10[v31] = *&v11[v31];
          *&v10[v31 + 8] = *&v11[v31 + 8];
          v32 = v29[20];
          *&v10[v32] = *&v11[v32];
          *&v10[v32 + 8] = *&v11[v32 + 8];
          v21 = v29[24];
          *&v10[v21] = *&v11[v21];
          v135 = v13;
LABEL_11:
          *&v10[v21 + 8] = *&v11[v21 + 8];

LABEL_12:

          v13 = v135;
LABEL_13:

LABEL_14:
          swift_storeEnumTagMultiPayload(v10, v13, EnumCaseMultiPayload);
          swift_storeEnumTagMultiPayload(v10, v118, 1);
          break;
      }
    }

    else
    {
      memcpy(v10, v11, *(*(v12 - 8) + 64));
    }

    v8 = v120;
  }

  v33 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *&v10[v33[5]] = *&v11[v33[5]];
  *&v10[v33[6]] = *&v11[v33[6]];
  *&v10[v33[7]] = *&v11[v33[7]];
  *&v10[v33[8]] = *&v11[v33[8]];
  *&v10[v33[10]] = *&v11[v33[10]];
  v119 = v4;
  if (v4 != v3)
  {
    v34 = *(v8 + 32);
    v35 = (v4 + v34);
    v36 = (v3 + v34);
    outlined destroy of MLActivityClassifier.ModelParameters(v35, type metadata accessor for MLClassifierMetrics.Contents);
    v126 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v37 = swift_getEnumCaseMultiPayload(v36, v126);
    if (v37 == 2)
    {
      v43 = *v36;
      swift_errorRetain(*v36);
      *v35 = v43;
      v3 = a2;
    }

    else if (v37 == 1)
    {
      *v35 = *v36;
      v137 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v38 = *(v137 + 20);
      v117 = v35 + v38;
      v39 = type metadata accessor for DataFrame(0);
      v40 = *(*(v39 - 8) + 16);
      v41 = v36 + v38;
      v3 = a2;
      v40(v117, v41, v39);
      v42 = v39;
      v4 = v119;
      v40(v35 + *(v137 + 24), v36 + *(v137 + 24), v42);
      v37 = 1;
    }

    else
    {
      v138 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v44 = swift_getEnumCaseMultiPayload(v36, v138);
      v45 = v44 == 1;
      v46 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v44 == 1)
      {
        v46 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v47 = __swift_instantiateConcreteTypeFromMangledName(v46);
      (*(*(v47 - 8) + 16))(v35, v36, v47);
      swift_storeEnumTagMultiPayload(v35, v138, v45);
      v4 = v119;
    }

    swift_storeEnumTagMultiPayload(v35, v126, v37);
    v48 = *(v120 + 36);
    v49 = (v4 + v48);
    v50 = (v3 + v48);
    outlined destroy of MLActivityClassifier.ModelParameters(v49, type metadata accessor for MLClassifierMetrics.Contents);
    v51 = swift_getEnumCaseMultiPayload(v50, v126);
    if (v51 == 2)
    {
      v56 = *v50;
      swift_errorRetain(*v50);
      *v49 = v56;
    }

    else if (v51 == 1)
    {
      *v49 = *v50;
      v121 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v52 = *(v121 + 20);
      v143 = v49 + v52;
      v53 = type metadata accessor for DataFrame(0);
      v54 = *(*(v53 - 8) + 16);
      v55 = v50 + v52;
      v4 = v119;
      v54(v143, v55, v53);
      v54(v49 + *(v121 + 24), v50 + *(v121 + 24), v53);
      v51 = 1;
    }

    else
    {
      v122 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v57 = swift_getEnumCaseMultiPayload(v50, v122);
      v58 = v57 == 1;
      v59 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v57 == 1)
      {
        v59 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v60 = __swift_instantiateConcreteTypeFromMangledName(v59);
      (*(*(v60 - 8) + 16))(v49, v50, v60);
      swift_storeEnumTagMultiPayload(v49, v122, v58);
    }

    swift_storeEnumTagMultiPayload(v49, v126, v51);
    v3 = a2;
  }

  v61 = a3[5];
  v62 = *(v3 + v61);
  v63 = *(v4 + v61);
  *(v4 + v61) = v62;
  v62;
  v64 = v63;
  v65 = a2;

  v66 = a3[6];
  v67 = v4 + v66;
  v68 = a2 + v66;
  if (v4 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v67, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
    v69 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v68, v69) == 1)
    {
      v123 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
      v127 = swift_getEnumCaseMultiPayload(v68, v123);
      switch(v127)
      {
        case 0u:
          v73 = type metadata accessor for URL(0);
          v139 = *(*(v73 - 8) + 16);
          v139(v67, v68, v73);
          v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
          v139(&v67[v74[12]], &v68[v74[12]], v73);
          v75 = v74[16];
          *&v67[v75] = *&v68[v75];
          *&v67[v75 + 8] = *&v68[v75 + 8];
          v76 = v74[20];
          v4 = v119;
          goto LABEL_43;
        case 1u:
        case 2u:
          v70 = type metadata accessor for URL(0);
          (*(*(v70 - 8) + 16))(v67, v68, v70);
          goto LABEL_46;
        case 3u:
          v77 = *v68;
          v78 = v68[8];
          outlined copy of Result<_DataTable, Error>(*v68, v78);
          *v67 = v77;
          v67[8] = v78;
          *(v67 + 2) = *(v68 + 2);
          *(v67 + 3) = *(v68 + 3);
          *(v67 + 4) = *(v68 + 4);
          *(v67 + 5) = *(v68 + 5);
          *(v67 + 6) = *(v68 + 6);
          *(v67 + 7) = *(v68 + 7);
          goto LABEL_41;
        case 4u:
          v71 = *v68;
          v72 = v68[8];
          outlined copy of Result<_DataTable, Error>(*v68, v72);
          *v67 = v71;
          v67[8] = v72;
          v4 = v119;
          *(v67 + 2) = *(v68 + 2);
          *(v67 + 3) = *(v68 + 3);
          *(v67 + 4) = *(v68 + 4);
          *(v67 + 5) = *(v68 + 5);
          goto LABEL_44;
        case 5u:
          v79 = type metadata accessor for DataFrame(0);
          (*(*(v79 - 8) + 16))(v67, v68, v79);
          v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v81 = v80[12];
          *&v67[v81] = *&v68[v81];
          *&v67[v81 + 8] = *&v68[v81 + 8];
          v82 = v80[16];
          *&v67[v82] = *&v68[v82];
          *&v67[v82 + 8] = *&v68[v82 + 8];
          v83 = v80[20];
          *&v67[v83] = *&v68[v83];
          *&v67[v83 + 8] = *&v68[v83 + 8];
LABEL_41:

          v65 = a2;

          v4 = v119;
          break;
        case 6u:
          v84 = type metadata accessor for DataFrame(0);
          (*(*(v84 - 8) + 16))(v67, v68, v84);
          v85 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
          v86 = *(v85 + 48);
          *&v67[v86] = *&v68[v86];
          *&v67[v86 + 8] = *&v68[v86 + 8];
          v76 = *(v85 + 64);
LABEL_43:
          *&v67[v76] = *&v68[v76];
          *&v67[v76 + 8] = *&v68[v76 + 8];
LABEL_44:

          v65 = a2;
          break;
      }

LABEL_46:
      swift_storeEnumTagMultiPayload(v67, v123, v127);
      swift_storeEnumTagMultiPayload(v67, v69, 1);
    }

    else
    {
      memcpy(v67, v68, *(*(v69 - 8) + 64));
    }
  }

  v87 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *&v67[v87[5]] = *&v68[v87[5]];
  *&v67[v87[6]] = *&v68[v87[6]];
  *&v67[v87[7]] = *&v68[v87[7]];
  if (v4 != v65)
  {
    v88 = a3[7];
    v89 = (v4 + v88);
    v90 = (v65 + v88);
    outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLClassifierMetrics.Contents);
    v124 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v91 = swift_getEnumCaseMultiPayload(v90, v124);
    if (v91 == 2)
    {
      v96 = *v90;
      swift_errorRetain(*v90);
      *v89 = v96;
    }

    else if (v91 == 1)
    {
      *v89 = *v90;
      v128 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v92 = *(v128 + 20);
      v144 = v89 + v92;
      v93 = type metadata accessor for DataFrame(0);
      v94 = *(*(v93 - 8) + 16);
      v95 = v90 + v92;
      v4 = v119;
      v94(v144, v95, v93);
      v94(v89 + *(v128 + 24), v90 + *(v128 + 24), v93);
      v91 = 1;
    }

    else
    {
      v129 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v97 = swift_getEnumCaseMultiPayload(v90, v129);
      v98 = v97 == 1;
      v99 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v97 == 1)
      {
        v99 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v100 = __swift_instantiateConcreteTypeFromMangledName(v99);
      (*(*(v100 - 8) + 16))(v89, v90, v100);
      swift_storeEnumTagMultiPayload(v89, v129, v98);
    }

    swift_storeEnumTagMultiPayload(v89, v124, v91);
    v101 = a3[8];
    v102 = (v4 + v101);
    v103 = (a2 + v101);
    outlined destroy of MLActivityClassifier.ModelParameters(v4 + v101, type metadata accessor for MLClassifierMetrics.Contents);
    v104 = swift_getEnumCaseMultiPayload(v103, v124);
    if (v104 == 2)
    {
      v109 = *v103;
      swift_errorRetain(v109);
      *v102 = v109;
    }

    else if (v104 == 1)
    {
      *v102 = *v103;
      v132 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v105 = *(v132 + 20);
      v130 = v102 + v105;
      v106 = type metadata accessor for DataFrame(0);
      v107 = *(*(v106 - 8) + 16);
      v108 = v103 + v105;
      v4 = v119;
      v107(v130, v108, v106);
      v107(v102 + *(v132 + 24), v103 + *(v132 + 24), v106);
      v104 = 1;
    }

    else
    {
      v110 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v111 = swift_getEnumCaseMultiPayload(v103, v110);
      v133 = v103;
      v112 = v111 == 1;
      v113 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v111 == 1)
      {
        v113 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v114 = __swift_instantiateConcreteTypeFromMangledName(v113);
      (*(*(v114 - 8) + 16))(v102, v133, v114);
      swift_storeEnumTagMultiPayload(v102, v110, v112);
    }

    swift_storeEnumTagMultiPayload(v102, v124, v104);
  }

  return v4;
}

uint64_t initializeWithTake for MLHandPoseClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v127 = type metadata accessor for MLHandActionClassifier(0);
  v3 = *(v127 + 28);
  v4 = (a1 + v3);
  v5 = (a2 + v3);
  v6 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v5, v6) == 1)
  {
    v7 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v5, v7))
    {
      case 0u:
        v120 = type metadata accessor for URL(0);
        v8 = *(*(v120 - 8) + 32);
        v8(v4, v5, v120);
        v125 = v7;
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v8(&v4[v9[12]], &v5[v9[12]], v120);
        *&v4[v9[16]] = *&v5[v9[16]];
        *&v4[v9[20]] = *&v5[v9[20]];
        *&v4[v9[24]] = *&v5[v9[24]];
        *&v4[v9[28]] = *&v5[v9[28]];
        v10 = v4;
        v11 = v125;
        v12 = 0;
        goto LABEL_11;
      case 1u:
        v14 = type metadata accessor for URL(0);
        (*(*(v14 - 8) + 32))(v4, v5, v14);
        v113 = 1;
        goto LABEL_10;
      case 2u:
        v13 = type metadata accessor for URL(0);
        (*(*(v13 - 8) + 32))(v4, v5, v13);
        v113 = 2;
        goto LABEL_10;
      case 5u:
        v15 = type metadata accessor for DataFrame(0);
        (*(*(v15 - 8) + 32))(v4, v5, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&v4[v16[12]] = *&v5[v16[12]];
        *&v4[v16[16]] = *&v5[v16[16]];
        *&v4[v16[20]] = *&v5[v16[20]];
        v113 = 5;
        goto LABEL_10;
      case 6u:
        v17 = type metadata accessor for DataFrame(0);
        (*(*(v17 - 8) + 32))(v4, v5, v17);
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&v4[v18[12]] = *&v5[v18[12]];
        *&v4[v18[16]] = *&v5[v18[16]];
        *&v4[v18[20]] = *&v5[v18[20]];
        *&v4[v18[24]] = *&v5[v18[24]];
        v113 = 6;
LABEL_10:
        v12 = v113;
        v10 = v4;
        v11 = v7;
LABEL_11:
        swift_storeEnumTagMultiPayload(v10, v11, v12);
        break;
      default:
        memcpy(v4, v5, *(*(v7 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload(v4, v6, 1);
  }

  else
  {
    memcpy(v4, v5, *(*(v6 - 8) + 64));
  }

  v19 = v127;
  v20 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *&v4[v20[5]] = *&v5[v20[5]];
  *&v4[v20[6]] = *&v5[v20[6]];
  *&v4[v20[7]] = *&v5[v20[7]];
  *&v4[v20[8]] = *&v5[v20[8]];
  *&v4[v20[10]] = *&v5[v20[10]];
  v21 = *(v127 + 32);
  v22 = (a1 + v21);
  v23 = a2;
  v24 = (a2 + v21);
  v25 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v24, v25);
  v126 = v25;
  if (EnumCaseMultiPayload == 1)
  {
    *v22 = *v24;
    v121 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v37 = *(v121 + 20);
    v115 = &v22[v37];
    v38 = type metadata accessor for DataFrame(0);
    v39 = *(*(v38 - 8) + 32);
    v40 = &v24[v37];
    v25 = v126;
    v39(v115, v40, v38);
    v41 = v38;
    v19 = v127;
    v39(&v22[*(v121 + 24)], &v24[*(v121 + 24)], v41);
    v23 = a2;
    v36 = 1;
    v34 = v22;
    v35 = v126;
LABEL_19:
    swift_storeEnumTagMultiPayload(v34, v35, v36);
    goto LABEL_21;
  }

  if (!EnumCaseMultiPayload)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v28 = swift_getEnumCaseMultiPayload(v24, v27);
    v29 = v28 == 1;
    v30 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v28 == 1)
    {
      v30 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v31 = __swift_instantiateConcreteTypeFromMangledName(v30);
    (*(*(v31 - 8) + 32))(v22, v24, v31);
    v32 = v27;
    v25 = v126;
    v33 = v29;
    v23 = a2;
    swift_storeEnumTagMultiPayload(v22, v32, v33);
    v34 = v22;
    v35 = v126;
    v36 = 0;
    goto LABEL_19;
  }

  memcpy(v22, v24, *(*(v25 - 8) + 64));
LABEL_21:
  v42 = *(v19 + 36);
  v43 = (a1 + v42);
  v44 = (v23 + v42);
  v45 = swift_getEnumCaseMultiPayload(v44, v25);
  if (v45 == 1)
  {
    *v43 = *v44;
    v128 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v54 = *(v128 + 20);
    v122 = &v43[v54];
    v55 = type metadata accessor for DataFrame(0);
    v56 = *(*(v55 - 8) + 32);
    v57 = &v44[v54];
    v23 = a2;
    v56(v122, v57, v55);
    v56(&v43[*(v128 + 24)], &v44[*(v128 + 24)], v55);
    v53 = 1;
    v51 = v43;
    v52 = v126;
LABEL_27:
    swift_storeEnumTagMultiPayload(v51, v52, v53);
    goto LABEL_29;
  }

  if (!v45)
  {
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v47 = swift_getEnumCaseMultiPayload(v44, v46);
    v48 = v47 == 1;
    v49 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v47 == 1)
    {
      v49 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v50 = __swift_instantiateConcreteTypeFromMangledName(v49);
    (*(*(v50 - 8) + 32))(v43, v44, v50);
    swift_storeEnumTagMultiPayload(v43, v46, v48);
    v51 = v43;
    v52 = v126;
    v53 = 0;
    goto LABEL_27;
  }

  memcpy(v43, v44, *(*(v25 - 8) + 64));
LABEL_29:
  v58 = a3;
  *(a1 + *(a3 + 20)) = *(v23 + *(a3 + 20));
  v59 = *(a3 + 24);
  v60 = (a1 + v59);
  v61 = (v23 + v59);
  v62 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v61, v62) == 1)
  {
    v129 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v61, v129))
    {
      case 0u:
        v63 = type metadata accessor for URL(0);
        v123 = *(*(v63 - 8) + 32);
        v123(v60, v61, v63);
        v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
        v65 = v63;
        v58 = a3;
        v123(&v60[v64[12]], &v61[v64[12]], v65);
        *&v60[v64[16]] = *&v61[v64[16]];
        v66 = v64[20];
        v23 = a2;
        *&v60[v66] = *&v61[v66];
        v67 = v60;
        v68 = v129;
        v69 = 0;
        goto LABEL_39;
      case 1u:
        v71 = type metadata accessor for URL(0);
        (*(*(v71 - 8) + 32))(v60, v61, v71);
        v114 = 1;
        goto LABEL_38;
      case 2u:
        v70 = type metadata accessor for URL(0);
        (*(*(v70 - 8) + 32))(v60, v61, v70);
        v114 = 2;
        goto LABEL_38;
      case 5u:
        v72 = type metadata accessor for DataFrame(0);
        (*(*(v72 - 8) + 32))(v60, v61, v72);
        v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&v60[v73[12]] = *&v61[v73[12]];
        *&v60[v73[16]] = *&v61[v73[16]];
        *&v60[v73[20]] = *&v61[v73[20]];
        v114 = 5;
        goto LABEL_38;
      case 6u:
        v74 = type metadata accessor for DataFrame(0);
        (*(*(v74 - 8) + 32))(v60, v61, v74);
        v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
        *&v60[*(v75 + 48)] = *&v61[*(v75 + 48)];
        *&v60[*(v75 + 64)] = *&v61[*(v75 + 64)];
        v114 = 6;
LABEL_38:
        v69 = v114;
        v67 = v60;
        v68 = v129;
LABEL_39:
        swift_storeEnumTagMultiPayload(v67, v68, v69);
        break;
      default:
        memcpy(v60, v61, *(*(v129 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload(v60, v62, 1);
  }

  else
  {
    memcpy(v60, v61, *(*(v62 - 8) + 64));
  }

  v76 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *&v60[v76[5]] = *&v61[v76[5]];
  *&v60[v76[6]] = *&v61[v76[6]];
  *&v60[v76[7]] = *&v61[v76[7]];
  v77 = *(v58 + 28);
  v78 = (a1 + v77);
  v79 = (v23 + v77);
  v80 = v126;
  v81 = swift_getEnumCaseMultiPayload(v79, v126);
  if (v81 == 1)
  {
    *v78 = *v79;
    v130 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v92 = *(v130 + 20);
    v124 = &v78[v92];
    v93 = type metadata accessor for DataFrame(0);
    v94 = *(*(v93 - 8) + 32);
    v95 = &v79[v92];
    v23 = a2;
    v94(v124, v95, v93);
    v96 = v93;
    v80 = v126;
    v94(&v78[*(v130 + 24)], &v79[*(v130 + 24)], v96);
    v58 = a3;
    v91 = 1;
    v89 = v78;
    v90 = v126;
LABEL_47:
    swift_storeEnumTagMultiPayload(v89, v90, v91);
    goto LABEL_49;
  }

  if (!v81)
  {
    v82 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v83 = swift_getEnumCaseMultiPayload(v79, v82);
    v84 = v83 == 1;
    v85 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v83 == 1)
    {
      v85 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v86 = __swift_instantiateConcreteTypeFromMangledName(v85);
    (*(*(v86 - 8) + 32))(v78, v79, v86);
    v87 = v82;
    v80 = v126;
    v88 = v84;
    v58 = a3;
    swift_storeEnumTagMultiPayload(v78, v87, v88);
    v89 = v78;
    v90 = v126;
    v91 = 0;
    goto LABEL_47;
  }

  memcpy(v78, v79, *(*(v126 - 8) + 64));
LABEL_49:
  v97 = *(v58 + 32);
  v98 = (a1 + v97);
  v99 = (v97 + v23);
  v100 = swift_getEnumCaseMultiPayload(v99, v80);
  if (v100 == 1)
  {
    *v98 = *v99;
    v118 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v109 = *(v118 + 20);
    v110 = type metadata accessor for DataFrame(0);
    v111 = *(*(v110 - 8) + 32);
    v111(&v98[v109], &v99[v109], v110);
    v111(&v98[*(v118 + 24)], &v99[*(v118 + 24)], v110);
    v108 = 1;
    v106 = v98;
    v107 = v126;
  }

  else
  {
    if (v100)
    {
      memcpy(v98, v99, *(*(v80 - 8) + 64));
      return a1;
    }

    v101 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v102 = swift_getEnumCaseMultiPayload(v99, v101);
    v103 = v102 == 1;
    v104 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v102 == 1)
    {
      v104 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v105 = __swift_instantiateConcreteTypeFromMangledName(v104);
    (*(*(v105 - 8) + 32))(v98, v99, v105);
    swift_storeEnumTagMultiPayload(v98, v101, v103);
    v106 = v98;
    v107 = v80;
    v108 = 0;
  }

  swift_storeEnumTagMultiPayload(v106, v107, v108);
  return a1;
}

void *assignWithTake for MLHandPoseClassifier(void *a1, void *a2, int *a3)
{
  v3 = a2;
  v5 = *a1;
  *a1 = *a2;
  v5;
  a1[1] = a2[1];

  v6 = a1[2];
  a1[2] = a2[2];

  v134 = type metadata accessor for MLHandActionClassifier(0);
  v7 = v134[7];
  v8 = a1 + v7;
  v9 = a2 + v7;
  v123 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v8, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    v10 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v9, v10) == 1)
    {
      v130 = type metadata accessor for MLHandActionClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(v9, v130))
      {
        case 0u:
          v119 = type metadata accessor for URL(0);
          v11 = *(*(v119 - 8) + 32);
          v11(v8, v9, v119);
          v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v11(&v8[v12[12]], &v9[v12[12]], v119);
          v3 = a2;
          *&v8[v12[16]] = *&v9[v12[16]];
          *&v8[v12[20]] = *&v9[v12[20]];
          *&v8[v12[24]] = *&v9[v12[24]];
          *&v8[v12[28]] = *&v9[v12[28]];
          v13 = v8;
          v14 = v130;
          v15 = 0;
          goto LABEL_12;
        case 1u:
          v17 = type metadata accessor for URL(0);
          (*(*(v17 - 8) + 32))(v8, v9, v17);
          v114 = 1;
          goto LABEL_11;
        case 2u:
          v16 = type metadata accessor for URL(0);
          (*(*(v16 - 8) + 32))(v8, v9, v16);
          v114 = 2;
          goto LABEL_11;
        case 5u:
          v18 = type metadata accessor for DataFrame(0);
          (*(*(v18 - 8) + 32))(v8, v9, v18);
          v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          *&v8[v19[12]] = *&v9[v19[12]];
          *&v8[v19[16]] = *&v9[v19[16]];
          *&v8[v19[20]] = *&v9[v19[20]];
          v114 = 5;
          goto LABEL_11;
        case 6u:
          v20 = type metadata accessor for DataFrame(0);
          (*(*(v20 - 8) + 32))(v8, v9, v20);
          v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          *&v8[v21[12]] = *&v9[v21[12]];
          *&v8[v21[16]] = *&v9[v21[16]];
          *&v8[v21[20]] = *&v9[v21[20]];
          *&v8[v21[24]] = *&v9[v21[24]];
          v114 = 6;
LABEL_11:
          v15 = v114;
          v13 = v8;
          v14 = v130;
LABEL_12:
          swift_storeEnumTagMultiPayload(v13, v14, v15);
          break;
        default:
          memcpy(v8, v9, *(*(v130 - 8) + 64));
          break;
      }

      swift_storeEnumTagMultiPayload(v8, v10, 1);
    }

    else
    {
      memcpy(v8, v9, *(*(v10 - 8) + 64));
    }
  }

  v22 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *&v8[v22[5]] = *&v9[v22[5]];
  *&v8[v22[6]] = *&v9[v22[6]];
  *&v8[v22[7]] = *&v9[v22[7]];
  *&v8[v22[8]] = *&v9[v22[8]];
  *&v8[v22[10]] = *&v9[v22[10]];
  if (v123 == v3)
  {
    goto LABEL_31;
  }

  v23 = v134[8];
  v24 = v123 + v23;
  v25 = v3 + v23;
  outlined destroy of MLActivityClassifier.ModelParameters(v24, type metadata accessor for MLClassifierMetrics.Contents);
  v26 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v25, v26);
  v131 = v26;
  if (EnumCaseMultiPayload == 1)
  {
    *v24 = *v25;
    v120 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v36 = *(v120 + 20);
    v116 = &v24[v36];
    v125 = v3;
    v37 = type metadata accessor for DataFrame(0);
    v38 = *(*(v37 - 8) + 32);
    v39 = &v25[v36];
    v26 = v131;
    v38(v116, v39, v37);
    v40 = v37;
    v3 = v125;
    v38(&v24[*(v120 + 24)], &v25[*(v120 + 24)], v40);
    v35 = 1;
    v33 = v24;
    v34 = v131;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(v24, v25, *(*(v26 - 8) + 64));
      goto LABEL_23;
    }

    v124 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v28 = swift_getEnumCaseMultiPayload(v25, v124);
    v29 = v28 == 1;
    v30 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v28 == 1)
    {
      v30 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v31 = __swift_instantiateConcreteTypeFromMangledName(v30);
    (*(*(v31 - 8) + 32))(v24, v25, v31);
    v32 = v29;
    v26 = v131;
    swift_storeEnumTagMultiPayload(v24, v124, v32);
    v33 = v24;
    v34 = v131;
    v35 = 0;
  }

  swift_storeEnumTagMultiPayload(v33, v34, v35);
LABEL_23:
  v41 = v134[9];
  v42 = v123 + v41;
  v43 = v3 + v41;
  outlined destroy of MLActivityClassifier.ModelParameters(v42, type metadata accessor for MLClassifierMetrics.Contents);
  v44 = swift_getEnumCaseMultiPayload(v43, v26);
  if (v44 == 1)
  {
    *v42 = *v43;
    v136 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v54 = *(v136 + 20);
    v55 = &v42[v54];
    v126 = v3;
    v56 = type metadata accessor for DataFrame(0);
    v57 = &v43[v54];
    v58 = *(*(v56 - 8) + 32);
    v58(v55, v57, v56);
    v59 = v56;
    v3 = v126;
    v58(&v42[*(v136 + 24)], &v43[*(v136 + 24)], v59);
    v53 = 1;
    v51 = v42;
    v52 = v131;
LABEL_29:
    swift_storeEnumTagMultiPayload(v51, v52, v53);
    goto LABEL_31;
  }

  if (!v44)
  {
    v135 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v45 = swift_getEnumCaseMultiPayload(v43, v135);
    v46 = v3;
    v47 = v45 == 1;
    v48 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v45 == 1)
    {
      v48 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v49 = __swift_instantiateConcreteTypeFromMangledName(v48);
    (*(*(v49 - 8) + 32))(v42, v43, v49);
    v50 = v47;
    v3 = v46;
    swift_storeEnumTagMultiPayload(v42, v135, v50);
    v51 = v42;
    v52 = v131;
    v53 = 0;
    goto LABEL_29;
  }

  memcpy(v42, v43, *(*(v26 - 8) + 64));
LABEL_31:
  v60 = a3[5];
  v61 = *(v123 + v60);
  *(v123 + v60) = *(v3 + v60);

  v62 = a3[6];
  v63 = v123 + v62;
  v64 = v3 + v62;
  if (v123 != v3)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData);
    v65 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v64, v65) == 1)
    {
      v137 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(v64, v137))
      {
        case 0u:
          v121 = type metadata accessor for URL(0);
          v132 = *(*(v121 - 8) + 32);
          v132(v63, v64, v121);
          v127 = v3;
          v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
          v132(&v63[v66[12]], &v64[v66[12]], v121);
          *&v63[v66[16]] = *&v64[v66[16]];
          v67 = v66[20];
          v3 = v127;
          *&v63[v67] = *&v64[v67];
          v68 = v63;
          v69 = v137;
          v70 = 0;
          goto LABEL_42;
        case 1u:
          v72 = type metadata accessor for URL(0);
          (*(*(v72 - 8) + 32))(v63, v64, v72);
          v115 = 1;
          goto LABEL_41;
        case 2u:
          v71 = type metadata accessor for URL(0);
          (*(*(v71 - 8) + 32))(v63, v64, v71);
          v115 = 2;
          goto LABEL_41;
        case 5u:
          v73 = type metadata accessor for DataFrame(0);
          (*(*(v73 - 8) + 32))(v63, v64, v73);
          v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          *&v63[v74[12]] = *&v64[v74[12]];
          *&v63[v74[16]] = *&v64[v74[16]];
          *&v63[v74[20]] = *&v64[v74[20]];
          v115 = 5;
          goto LABEL_41;
        case 6u:
          v75 = type metadata accessor for DataFrame(0);
          (*(*(v75 - 8) + 32))(v63, v64, v75);
          v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
          *&v63[*(v76 + 48)] = *&v64[*(v76 + 48)];
          *&v63[*(v76 + 64)] = *&v64[*(v76 + 64)];
          v115 = 6;
LABEL_41:
          v70 = v115;
          v68 = v63;
          v69 = v137;
LABEL_42:
          swift_storeEnumTagMultiPayload(v68, v69, v70);
          break;
        default:
          memcpy(v63, v64, *(*(v137 - 8) + 64));
          break;
      }

      swift_storeEnumTagMultiPayload(v63, v65, 1);
    }

    else
    {
      memcpy(v63, v64, *(*(v65 - 8) + 64));
    }
  }

  v77 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *&v63[v77[5]] = *&v64[v77[5]];
  *&v63[v77[6]] = *&v64[v77[6]];
  *&v63[v77[7]] = *&v64[v77[7]];
  if (v123 == v3)
  {
    return v123;
  }

  v78 = a3[7];
  v79 = v123 + v78;
  v80 = v3 + v78;
  outlined destroy of MLActivityClassifier.ModelParameters(v79, type metadata accessor for MLClassifierMetrics.Contents);
  v81 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v82 = swift_getEnumCaseMultiPayload(v80, v81);
  v138 = v81;
  if (v82 == 1)
  {
    *v79 = *v80;
    v133 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v92 = *(v133 + 20);
    v122 = &v79[v92];
    v129 = v3;
    v93 = type metadata accessor for DataFrame(0);
    v94 = *(*(v93 - 8) + 32);
    v95 = &v80[v92];
    v81 = v138;
    v94(v122, v95, v93);
    v96 = v93;
    v3 = v129;
    v94(&v79[*(v133 + 24)], &v80[*(v133 + 24)], v96);
    v91 = 1;
    v89 = v79;
    v90 = v138;
  }

  else
  {
    if (v82)
    {
      memcpy(v79, v80, *(*(v81 - 8) + 64));
      goto LABEL_53;
    }

    v128 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v83 = swift_getEnumCaseMultiPayload(v80, v128);
    v84 = v3;
    v85 = v83 == 1;
    v86 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v83 == 1)
    {
      v86 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v87 = __swift_instantiateConcreteTypeFromMangledName(v86);
    (*(*(v87 - 8) + 32))(v79, v80, v87);
    v88 = v85;
    v3 = v84;
    v81 = v138;
    swift_storeEnumTagMultiPayload(v79, v128, v88);
    v89 = v79;
    v90 = v138;
    v91 = 0;
  }

  swift_storeEnumTagMultiPayload(v89, v90, v91);
LABEL_53:
  v97 = a3[8];
  v98 = v123 + v97;
  v99 = v3 + v97;
  outlined destroy of MLActivityClassifier.ModelParameters(v123 + v97, type metadata accessor for MLClassifierMetrics.Contents);
  v100 = swift_getEnumCaseMultiPayload(v99, v81);
  if (v100 == 1)
  {
    *v98 = *v99;
    v118 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v110 = *(v118 + 20);
    v111 = type metadata accessor for DataFrame(0);
    v112 = *(*(v111 - 8) + 32);
    v112(&v98[v110], &v99[v110], v111);
    v112(&v98[*(v118 + 24)], &v99[*(v118 + 24)], v111);
    v109 = 1;
    v107 = v98;
    v108 = v138;
  }

  else
  {
    if (v100)
    {
      memcpy(v98, v99, *(*(v81 - 8) + 64));
      return v123;
    }

    v101 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v102 = swift_getEnumCaseMultiPayload(v99, v101);
    v103 = v99;
    v104 = v102 == 1;
    v105 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v102 == 1)
    {
      v105 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v106 = __swift_instantiateConcreteTypeFromMangledName(v105);
    (*(*(v106 - 8) + 32))(v98, v103, v106);
    swift_storeEnumTagMultiPayload(v98, v101, v104);
    v107 = v98;
    v108 = v138;
    v109 = 0;
  }

  swift_storeEnumTagMultiPayload(v107, v108, v109);
  return v123;
}

uint64_t sub_27341(uint64_t a1, unsigned int a2, int *a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLHandActionClassifier(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v5 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
    if (*(*(v5 - 8) + 84) == a2)
    {
      v7 = a3[6];
    }

    else
    {
      v5 = type metadata accessor for MLClassifierMetrics(0);
      v7 = a3[7];
    }

    v4 = v7 + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  result = 0;
  if ((*(a1 + a3[5]) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + a3[5]) >> 1) + 1;
  }

  return result;
}

uint64_t sub_273F3(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLHandActionClassifier(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    if (a3 == 0x7FFFFFFF)
    {
      result = a4[5];
      *(a1 + result) = 2 * (a2 - 1);
      return result;
    }

    v7 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
    if (*(*(v7 - 8) + 84) == a3)
    {
      v9 = a4[6];
    }

    else
    {
      v7 = type metadata accessor for MLClassifierMetrics(0);
      v9 = a4[7];
    }

    v6 = v9 + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for MLHandPoseClassifier(uint64_t a1)
{
  result = type metadata accessor for MLHandActionClassifier(319);
  if (v2 <= 0x3F)
  {
    v5[0] = *(result - 8) + 64;
    v5[1] = &value witness table for Builtin.UnknownObject + 64;
    result = type metadata accessor for MLHandPoseClassifier.ModelParameters(319);
    if (v3 <= 0x3F)
    {
      v5[2] = *(result - 8) + 64;
      result = type metadata accessor for MLClassifierMetrics.Contents(319);
      if (v4 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        v7 = v6;
        swift_initStructMetadata(a1, 256, 5, v5, a1 + 16);
        return 0;
      }
    }
  }

  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    BUG();
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v5 <= 0)
  {
    v8 = _swiftEmptyArrayStorage;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
    v8 = swift_allocObject(v7, 8 * v5 + 32, 7);
    v9 = (_swift_stdlib_malloc_size(v8) - 32);
    v8[2] = v5;
    v8[3] = 2 * (v9 / 8) + 1;
  }

  if (v4 == a3)
  {
    BUG();
  }

  v10 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
  swift_arrayInitWithCopy((v8 + 4), a2 + 8 * a3, v5, v10);
  return v8;
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    BUG();
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v5 <= 0)
  {
    v8 = _swiftEmptyArrayStorage;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
    v8 = swift_allocObject(v7, 8 * v5 + 32, 7);
    v9 = (_swift_stdlib_malloc_size(v8) - 32);
    v8[2] = v5;
    v8[3] = 2 * (v9 / 8);
  }

  if (v4 == a3)
  {
    BUG();
  }

  memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
  return v8;
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    BUG();
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = a2;
  if (v5 <= 0)
  {
    v12 = _swiftEmptyArrayStorage;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<NeuralNetwork.Layer>);
    v9 = *(type metadata accessor for NeuralNetwork.Layer(0) - 8);
    v17 = *(v9 + 72);
    v10 = *(v9 + 80);
    v11 = (v10 + 32) & ~v10;
    v12 = swift_allocObject(v8, v11 + v5 * v17, v10 | 7);
    v13 = _swift_stdlib_malloc_size(v12);
    if (!v17)
    {
      BUG();
    }

    v14 = v13 - v11;
    if (__OFSUB__(-v14, 1) && v17 == -1)
    {
      BUG();
    }

    v12[2] = v5;
    v12[3] = 2 * (v14 / v17);
    v7 = a2;
  }

  if (v4 == a3)
  {
    BUG();
  }

  v15 = type metadata accessor for NeuralNetwork.Layer(0);
  swift_arrayInitWithCopy(v12 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)), *(*(v15 - 8) + 72) * a3 + v7, v5, v15);
  return v12;
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    BUG();
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v5 <= 0)
  {
    v8 = _swiftEmptyArrayStorage;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Interaction>);
    v8 = swift_allocObject(v7, 16 * v5 + 32, 7);
    v9 = (_swift_stdlib_malloc_size(v8) - 32);
    v8[2] = v5;
    v8[3] = 2 * (v9 / 16);
  }

  if (v4 == a3)
  {
    BUG();
  }

  memcpy(v8 + 4, (16 * a3 + a2), 16 * v5);
  return v8;
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    BUG();
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v5 <= 0)
  {
    v8 = _swiftEmptyArrayStorage;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v8 = swift_allocObject(v7, 8 * v5 + 32, 7);
    v9 = (_swift_stdlib_malloc_size(v8) - 32);
    v8[2] = v5;
    v8[3] = 2 * (v9 / 8);
  }

  if (v4 == a3)
  {
    BUG();
  }

  memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
  return v8;
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    BUG();
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = a2;
  if (v5 <= 0)
  {
    v12 = _swiftEmptyArrayStorage;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedFeature<URL, String>>);
    v9 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>) - 8);
    v17 = *(v9 + 72);
    v10 = *(v9 + 80);
    v11 = (v10 + 32) & ~v10;
    v12 = swift_allocObject(v8, v11 + v5 * v17, v10 | 7);
    v13 = _swift_stdlib_malloc_size(v12);
    if (!v17)
    {
      BUG();
    }

    v14 = v13 - v11;
    if (__OFSUB__(-v14, 1) && v17 == -1)
    {
      BUG();
    }

    v12[2] = v5;
    v12[3] = 2 * (v14 / v17);
    v7 = a2;
  }

  if (v4 == a3)
  {
    BUG();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  swift_arrayInitWithCopy(v12 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)), *(*(v15 - 8) + 72) * a3 + v7, v5, v15);
  return v12;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(void *a1, uint64_t a2)
{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, &demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, &demangling cache variable for type metadata for _ContiguousArrayStorage<UInt64>);
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(void *__src, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  if (a2 <= 0)
  {
    v6 = 8 * a2;
    v4 = _swiftEmptyArrayStorage;
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledName(a3);
    v4 = swift_allocObject(v3, 8 * a2 + 32, 7);
    v5 = (_swift_stdlib_malloc_size(v4) - 32);
    v4[2] = a2;
    v4[3] = 2 * (v5 / 8);
    v6 = 8 * a2;
  }

  memcpy(v4 + 4, __src, v6);
  return v4;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(void *__src, uint64_t a2)
{
  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  if (a2 <= 0)
  {
    v5 = 4 * a2;
    v3 = _swiftEmptyArrayStorage;
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Float>);
    v3 = swift_allocObject(v2, 4 * a2 + 32, 7);
    v4 = (_swift_stdlib_malloc_size(v3) - 32);
    v3[2] = a2;
    v3[3] = 2 * (v4 / 4);
    v5 = 4 * a2;
  }

  memcpy(v3 + 4, __src, v5);
  return v3;
}

void *_s10Algorithms23ChunksOfCountCollectionV5_base06_chunkD0ACyxGx_SitcfCs10ArraySliceVySSG_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    BUG();
  }

  if (a5 <= 0)
  {
    v8 = v7 <= 0;
    v9 = v7 > a5;
  }

  else
  {
    v8 = v7 >= 0;
    v9 = v7 < a5;
  }

  if (!v9 || !v8)
  {
    v6 = a5 + a3;
    if (__OFADD__(a5, a3))
    {
      BUG();
    }
  }

  *result = a1;
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  result[5] = v6;
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(a4 + 32);
  v6 = ~(-1 << -v5);
  if (-v5 >= 64)
  {
    v6 = -1;
  }

  v7 = a4 + 56;
  v8 = *(a4 + 56) & v6;
  if (!a2)
  {
    v11 = 0;
    a3 = 0;
    goto LABEL_35;
  }

  if (!a3)
  {
    v11 = 0;
    goto LABEL_35;
  }

  if (a3 < 0)
  {
    BUG();
  }

  v9 = (63 - v5) >> 6;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = v10;
    if (__OFADD__(1, v10++))
    {
      BUG();
    }

    if (v8)
    {
      goto LABEL_20;
    }

    v14 = v11 + 1;
    if (__OFADD__(1, v11))
    {
      BUG();
    }

    if (v14 >= v9)
    {
      goto LABEL_34;
    }

    v8 = *(v7 + 8 * v14);
    if (v8)
    {
      ++v11;
      goto LABEL_20;
    }

    v11 += 2;
    if (v14 + 1 >= v9)
    {
      v11 = v14;
      goto LABEL_34;
    }

    v8 = *(v7 + 8 * v14 + 8);
    if (!v8)
    {
      v15 = v14 + 2;
      if (v14 + 2 >= v9)
      {
        goto LABEL_34;
      }

      v8 = *(v7 + 8 * v14 + 16);
      if (v8)
      {
        goto LABEL_17;
      }

      v11 = v14 + 3;
      if (v14 + 3 >= v9)
      {
        goto LABEL_36;
      }

      v8 = *(v7 + 8 * v14 + 24);
      if (!v8)
      {
        v15 = v14 + 4;
        if (v14 + 4 >= v9)
        {
          goto LABEL_34;
        }

        v8 = *(v7 + 8 * v14 + 32);
        if (v8)
        {
          goto LABEL_17;
        }

        v11 = v14 + 5;
        if (v14 + 5 >= v9)
        {
LABEL_36:
          v11 = v15;
          goto LABEL_34;
        }

        v8 = *(v7 + 8 * v14 + 40);
        if (!v8)
        {
          break;
        }
      }
    }

LABEL_20:
    _BitScanForward64(&v16, v8);
    v8 &= v8 - 1;
    *a2++ = *(*(a4 + 48) + ((v11 << 9) | (8 * v16)));
    if (v10 == a3)
    {
      goto LABEL_35;
    }
  }

  v15 = v14 + 6;
  if (v14 + 6 >= v9)
  {
    goto LABEL_34;
  }

  v8 = *(v7 + 8 * v14 + 48);
  if (v8)
  {
LABEL_17:
    v11 = v15;
    goto LABEL_20;
  }

  while (1)
  {
    v11 = v15 + 1;
    if (v15 + 1 >= v9)
    {
      break;
    }

    v8 = *(a4 + 8 * v15++ + 64);
    if (v8)
    {
      goto LABEL_20;
    }
  }

  v11 = v9 - 1;
LABEL_34:
  v8 = 0;
  a3 = v12;
LABEL_35:
  *a1 = a4;
  a1[1] = v7;
  a1[2] = ~v5;
  a1[3] = v11;
  a1[4] = v8;
  return a3;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = -1 << *(a4 + 32);
  v6 = ~(-1 << -v5);
  if (-v5 >= 64)
  {
    v6 = -1;
  }

  v21 = a4 + 56;
  v7 = *(a4 + 56) & v6;
  v19 = v5;
  if (!a2)
  {
    v10 = 0;
    a3 = 0;
    goto LABEL_38;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_38;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    BUG();
  }

  v8 = a2;
  v23 = a1;
  v22 = (63 - v5) >> 6;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    if (v9 >= a3)
    {
      BUG();
    }

    v11 = v9 + 1;
    if (__OFADD__(1, v9))
    {
      BUG();
    }

    if (!v7)
    {
      v12 = v10 + 1;
      if (__OFADD__(1, v10))
      {
        BUG();
      }

      if (v12 >= v22)
      {
        goto LABEL_36;
      }

      v7 = *(v21 + 8 * v12);
      if (v7)
      {
        ++v10;
        goto LABEL_21;
      }

      v10 += 2;
      if (v12 + 1 >= v22)
      {
        v10 = v12;
        goto LABEL_36;
      }

      v7 = *(v21 + 8 * v12 + 8);
      if (!v7)
      {
        v13 = v12 + 2;
        if (v12 + 2 >= v22)
        {
          goto LABEL_36;
        }

        v7 = *(v21 + 8 * v12 + 16);
        if (v7)
        {
          goto LABEL_18;
        }

        v10 = v12 + 3;
        if (v12 + 3 >= v22)
        {
          goto LABEL_39;
        }

        v7 = *(v21 + 8 * v12 + 24);
        if (!v7)
        {
          v13 = v12 + 4;
          if (v12 + 4 >= v22)
          {
            goto LABEL_36;
          }

          v7 = *(v21 + 8 * v12 + 32);
          if (v7)
          {
            goto LABEL_18;
          }

          v10 = v12 + 5;
          if (v12 + 5 >= v22)
          {
LABEL_39:
            v10 = v13;
            goto LABEL_36;
          }

          v7 = *(v21 + 8 * v12 + 40);
          if (!v7)
          {
            break;
          }
        }
      }
    }

LABEL_21:
    _BitScanForward64(&v14, v7);
    v7 &= v7 - 1;
    v15 = *(a4 + 48);
    v16 = (v10 << 10) | (16 * v14);
    v17 = *(v15 + v16 + 8);
    *v8 = *(v15 + v16);
    v8[1] = v17;
    if (v11 == a3)
    {

      goto LABEL_37;
    }

    v8 += 2;

    v9 = v11;
  }

  v13 = v12 + 6;
  if (v12 + 6 >= v22)
  {
    goto LABEL_36;
  }

  v7 = *(v21 + 8 * v12 + 48);
  if (v7)
  {
LABEL_18:
    v10 = v13;
    goto LABEL_21;
  }

  while (1)
  {
    v10 = v13 + 1;
    if (v13 + 1 >= v22)
    {
      break;
    }

    v7 = *(a4 + 8 * v13++ + 64);
    if (v7)
    {
      goto LABEL_21;
    }
  }

  v10 = v22 - 1;
LABEL_36:
  v7 = 0;
  a3 = v9;
LABEL_37:
  a1 = v23;
LABEL_38:
  *a1 = a4;
  a1[1] = v21;
  a1[2] = ~v19;
  a1[3] = v10;
  a1[4] = v7;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = 0;
  if (!a2)
  {
    goto LABEL_13;
  }

  v6 = a3;
  if (!a3)
  {
    v5 = 0;
    goto LABEL_14;
  }

  if (a3 < 0)
  {
    BUG();
  }

  v7 = a2;
  if (!CMLDictionary.size.getter())
  {
    v5 = 0;
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v17 = 1;
  v5 = 0;
  v16 = v6;
  while (1)
  {
    v15 = v7;
    v8 = v5;
    v9 = CMLDictionary.keyAndValue(at:)(v5);
    v11 = v10;
    v5 = specialized RandomAccessCollection<>.index(after:)(v8);
    *v15 = v9;
    v15[1] = v11;
    v6 = v16;
    if (v16 == v17)
    {
      break;
    }

    if (__OFADD__(1, v17))
    {
      BUG();
    }

    ++v17;
    v12 = v5;
    v7 = v15 + 2;
    v13 = v5 == CMLDictionary.size.getter();
    v5 = v12;
    if (v13)
    {
      v6 = v17 - 1;
      break;
    }
  }

  v4 = a1;
LABEL_14:
  *v4 = v3;
  v4[1] = v5;
  return v6;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v6 = specialized Dictionary.startIndex.getter(a4);
  v8 = v7;
  v44 = v9;
  a4;
  if (!a2)
  {
    a3 = 0;
    v28 = a1;
    v10 = v6;
LABEL_19:
    v29 = v44;
    goto LABEL_21;
  }

  v10 = v6;
  if (!a3)
  {
    v28 = a1;
    goto LABEL_19;
  }

  if (a3 < 0)
  {
    BUG();
  }

  v37 = a2;
  v41 = a4 + 64;
  v11 = 0;
  v12 = 0;
  v40 = a4;
  v35 = a3;
  while (1)
  {
    v13 = __OFADD__(1, v12);
    v14 = v12 + 1;
    if (v13)
    {
      BUG();
    }

    if (v44)
    {
      BUG();
    }

    v15 = *(a4 + 36);
    v16 = 1 << *(a4 + 32);
    if (v15 != v8)
    {
      BUG();
    }

    if (v10 == v16)
    {
      break;
    }

    if (v10 < 0 || v10 >= v16)
    {
      BUG();
    }

    v32 = v8;
    v17 = v10 >> 6;
    v18 = *(v41 + 8 * (v10 >> 6));
    v19 = 1 << v10;
    if (!_bittest64(&v18, v10))
    {
      BUG();
    }

    v38 = v15;
    v33 = v14;
    v20 = *(v40 + 48);
    v21 = *(v40 + 56);
    v22 = *(v20 + 24 * v10);
    v23 = *(v20 + 24 * v10 + 8);
    v24 = *(v20 + 24 * v10 + 16);
    v36 = *(v21 + 24 * v10);
    v39 = *(v21 + 24 * v10 + 8);
    v43 = *(v21 + 24 * v10 + 16);
    v31 = v10;
    outlined copy of MLDataValue(v36, v39, v43);
    v42 = v24;
    outlined copy of MLDataValue(v22, v23, v24);
    outlined copy of MLDataValue(v36, v39, v43);
    outlined copy of MLDataValue(v22, v23, v24);
    v34 = v22;
    outlined consume of MLDataValue(v22, v23, v24);
    outlined consume of MLDataValue(v36, v39, v43);
    v25 = *(v40 + 32);
    if (v31 >= -(-1 << v25))
    {
      BUG();
    }

    if ((v19 & *(v41 + 8 * v17)) == 0)
    {
      BUG();
    }

    a4 = v40;
    if (*(v40 + 36) != v38)
    {
      BUG();
    }

    v26 = _HashTable.occupiedBucket(after:)(v31, v41, ~(-1 << v25));
    v27 = *(v40 + 36);
    v44 = 0;
    outlined consume of [MLDataValue : MLDataValue].Index._Variant(v31, v32, 0);
    *v37 = v34;
    *(v37 + 8) = v23;
    *(v37 + 16) = v42;
    *(v37 + 24) = v36;
    *(v37 + 32) = v39;
    *(v37 + 40) = v43;
    v37 += 48;
    v12 = v33;
    v11 = v33;
    v10 = v26;
    v8 = v27;
    a3 = v35;
    if (v33 == v35)
    {
      v10 = v26;
      v8 = v27;
      v28 = a1;
      v29 = 0;
      goto LABEL_21;
    }
  }

  v29 = 0;
  a3 = v11;
  v28 = a1;
LABEL_21:
  *v28 = a4;
  *(v28 + 8) = v10;
  *(v28 + 16) = v8;
  *(v28 + 24) = v29 & 1;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  result = 0;
  v85 = a1;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        BUG();
      }

      v8 = a2;
      if (CMLSequence.size.getter())
      {
        v9 = 1;
        v10 = 0;
        v11 = 0;
        v84 = a3;
        v87 = a4;
        do
        {
          v83 = v9;
          v81 = v10;
          v12 = CMLSequence.value(at:)(v10);
          if (v11)
          {
            v71 = "CreateML/SequenceType.swift";
            v72 = 27;
            v69 = 36;
            v70 = v11;
            goto LABEL_68;
          }

          v13 = v12;
          v14 = CMLFeatureValue.type.getter();
          v82 = v8;
          switch(v14)
          {
            case 0:
              v15 = *(v13 + 16);

              v95 = COERCE_DOUBLE(specialized handling<A, B>(_:_:)(v15));
              v13;
              object = 0;
              v17 = 0;
              goto LABEL_47;
            case 1:
              v60 = *(v13 + 16);

              specialized handling<A, B>(_:_:)(v60);
              v93 = a5;
              v13;
              a5 = v93;
              v95 = v93;
              v17 = 1;
              goto LABEL_44;
            case 2:

              v54 = CMLFeatureValue.stringValue()();
              v95 = *&v54._countAndFlagsBits;
              if (v55)
              {
                v55;

                BUG();
              }

              object = v54._object;
              v13;
              v17 = 2;
              goto LABEL_47;
            case 3:
              v56 = *(v13 + 16);

              v57 = specialized handling<A, B>(_:_:)(v56);
              if (!v57)
              {
                BUG();
              }

              v58 = type metadata accessor for CMLSequence();
              v59 = swift_allocObject(v58, 25, 7);
              *(v59 + 16) = v57;
              v95 = *&v59;
              *(v59 + 24) = 1;
              v13;
              v17 = 3;
              goto LABEL_46;
            case 4:
              v18 = *(v13 + 16);
              v88 = v13;

              v19 = specialized handling<A, B>(_:_:)(v18);
              if (!v19)
              {
                BUG();
              }

              v86 = type metadata accessor for CMLDictionary();
              *&v20 = COERCE_DOUBLE(swift_initStackObject(v86, v76));
              *(v20 + 16) = v19;
              v89 = _swiftEmptyDictionarySingleton;
              swift_retain_n(v20, 2);
              v21 = 0;
              v95 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
              v93 = *&v20;
              break;
            case 5:

              v17 = 6;
              v95 = 0.0;
              goto LABEL_44;
            case 6:

              MLDataValue.MultiArrayType.init(from:)(v13);
              v95 = *&v91;
              if (!v91)
              {
                BUG();
              }

              v17 = 5;
LABEL_44:
              object = 0;
              goto LABEL_47;
          }

          while (v21 != CMLDictionary.size.getter())
          {
            CMLDictionary.keyAndValue(at:)(v21);
            v23 = v22;
            v21 = specialized RandomAccessCollection<>.index(after:)(v21);
            v24 = CMLFeatureValue.stringValue()();
            if (v25)
            {
              v25;

              *&v20 = v93;
            }

            else
            {
              v90 = v24;

              switch(CMLFeatureValue.type.getter())
              {
                case 0u:
                  v26 = *(v23 + 16);

                  countAndFlagsBits = specialized handling<A, B>(_:_:)(v26);
                  JUMPOUT(0x2877ALL);
                case 1u:
                  v35 = *(v23 + 16);

                  specialized handling<A, B>(_:_:)(v35);
                  countAndFlagsBits = *&a5;
                  JUMPOUT(0x2890ALL);
                case 2u:

                  countAndFlagsBits = CMLFeatureValue.stringValue()()._countAndFlagsBits;
                  if (!v30)
                  {
                    JUMPOUT(0x2886ALL);
                  }

                  v30;

                  BUG();
                case 3u:
                  v31 = *(v23 + 16);

                  v32 = specialized handling<A, B>(_:_:)(v31);
                  if (v32)
                  {
                    v33 = type metadata accessor for CMLSequence();
                    v34 = swift_allocObject(v33, 25, 7);
                    v34[2] = v32;
                    countAndFlagsBits = v34;
                    JUMPOUT(0x288CFLL);
                  }

                  BUG();
                case 4u:
                  v27 = *(v23 + 16);

                  v28 = specialized handling<A, B>(_:_:)(v27);
                  if (v28)
                  {
                    v29 = swift_allocObject(v86, 24, 7);
                    *(v29 + 16) = v28;
                    v79[0] = v29;
                    v79[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
                    v79[2] = 0;
                    v79[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
                    v79[4] = 0;
                    v79[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
                    v79[6] = 0;
                    _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5(v79);
                    JUMPOUT(0x2882ELL);
                  }

                  BUG();
                case 5u:

                  v23;
                  v36 = 6;
                  countAndFlagsBits = 0;
                  break;
                case 6u:

                  MLDataValue.MultiArrayType.init(from:)(v23);
                  countAndFlagsBits = v91;
                  if (!v91)
                  {
                    BUG();
                  }

                  v23;
                  v36 = 5;
                  break;
              }

              v96 = 0;
              v91 = v90;
              LOBYTE(v92) = 2;
              v37 = v95;
              specialized __RawDictionaryStorage.find<A>(_:)(v90, 2, a5);
              v40 = (v39 & 1) == 0;
              v41 = __OFADD__(*(*&v37 + 16), v40);
              v42 = *(*&v37 + 16) + v40;
              if (v41)
              {
                BUG();
              }

              v43 = v39;
              if (*(*&v37 + 24) < v42)
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, 1u);
                v44 = v90;
                specialized __RawDictionaryStorage.find<A>(_:)(v90, 2, a5);
                LOBYTE(v45) = v45 & 1;
                v46 = v43;
                if ((v43 & 1) != v45)
                {
                  LOBYTE(v46) = v43 & 1;
                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, *(&v44 + 1), v45, v46);
                  BUG();
                }
              }

              v47 = v96;
              if (v43)
              {
                v73 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
                swift_willThrow();
                v80 = v73;
                swift_errorRetain(v73);
                v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
                if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v80, v74, &type metadata for _MergeError, 0))
                {
                  v77 = 0;
                  v78 = 0xE000000000000000;
                  _StringGuts.grow(_:)(30);
                  v75._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
                  v75._countAndFlagsBits = 0xD00000000000001BLL;
                  String.append(_:)(v75);
                  _print_unlocked<A, B>(_:_:)(&v91, &v77, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
                  v75._countAndFlagsBits = 39;
                  v75._object = 0xE100000000000000;
                  String.append(_:)(v75);
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v77, v78, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
                  BUG();
                }

                outlined consume of MLDataValue(countAndFlagsBits, v96, v36);
                outlined consume of MLDataValue(v91, *(&v91 + 1), v92);

                v80;
                v71 = "Swift/Dictionary.swift";
                v72 = 22;
                v69 = 489;
                v70 = v73;
LABEL_68:
                swift_unexpectedError(v70, v71, v72, 1, v69);
                BUG();
              }

              v48 = v89;
              v89[(v38 >> 6) + 8] |= 1 << v38;
              v49 = v48[6];
              v50 = 24 * v38;
              *(v49 + v50) = v90;
              *(v49 + v50 + 16) = 2;
              v51 = v48[7];
              *(v51 + v50) = countAndFlagsBits;
              *(v51 + v50 + 8) = v47;
              *(v51 + v50 + 16) = v36;
              v52 = v48[2];
              v41 = __OFADD__(1, v52);
              v53 = v52 + 1;
              if (v41)
              {
                BUG();
              }

              v95 = *&v48;
              v48[2] = v53;
              *&v20 = v93;
            }
          }

          v88;
          v20;
          v17 = 4;
LABEL_46:
          object = 0;
          a4 = v87;
LABEL_47:
          if (v81 >= CMLSequence.size.getter())
          {
            BUG();
          }

          v61 = v82;
          *v82 = v95;
          v61[1] = object;
          *(v61 + 16) = v17;
          v62 = v61;
          result = v84;
          if (v83 == v84)
          {
            break;
          }

          v63 = v83 + 1;
          if (__OFADD__(1, v83))
          {
            BUG();
          }

          v93 = 0.0;
          v64 = a4;
          v65 = v83;
          v66 = CMLSequence.size.getter();
          v8 = (v62 + 3);
          result = v65;
          v10 = v65;
          v67 = v65 == v66;
          a4 = v64;
          v11 = *&v93;
          v9 = v63;
        }

        while (!v67);
      }

      else
      {
        result = 0;
      }
    }

    else
    {
      result = 0;
    }
  }

  v68 = v85;
  *v85 = a4;
  v68[1] = result;
  return result;
}

{
  v22 = a2;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        BUG();
      }

      v7 = CMLSequence.size.getter();
      v8 = 0;
      v9 = specialized RandomAccessCollection<>.distance(from:to:)(0, v7);

      if (v9)
      {
        v10 = 1;
        while (1)
        {
          v21 = v10;
          v20 = v10 - 1;
          v11 = CMLSequence.value(at:)(v10 - 1);
          MLDataValue.init(_:)(v11, a5);
          outlined copy of MLDataValue(v17, v18, v19);
          outlined consume of MLDataValue(v17, v18, v19);

          v12 = CMLSequence.size.getter();
          v13 = specialized RandomAccessCollection<>.distance(from:to:)(0, v12);

          if (v20 >= v13)
          {
            BUG();
          }

          *v22 = v17;
          *(v22 + 8) = v18;
          *(v22 + 16) = v19;
          if (a3 == v21)
          {
            break;
          }

          if (__OFADD__(1, v21))
          {
            BUG();
          }

          v14 = CMLSequence.size.getter();
          v15 = specialized RandomAccessCollection<>.distance(from:to:)(0, v14);

          v22 += 24;
          v10 = v21 + 1;
          if (v21 == v15)
          {
            v8 = v21;
            goto LABEL_14;
          }
        }

        v8 = a3;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_14:
  *a1 = a4;
  a1[1] = v8;
  return v8;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a4;
  v19 = a3;
  v21 = a5 & 1;
  v14 = a5 & 1;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        BUG();
      }

      v6 = 0;
      v20 = a5;
      v17 = a5;
      v18 = a4;
      v7 = 0;
      while (1)
      {
        if (__OFADD__(1, v7++))
        {
          BUG();
        }

        *&v15 = v5;
        BYTE8(v15) = v21;
        outlined copy of Result<_DataTable, Error>(v5, v17);
        v9 = MLDataTable.size.getter();
        outlined consume of Result<_DataTable, Error>(v5, v21);
        if (v6 == v9)
        {
          break;
        }

        MLDataTable.Rows.subscript.getter(v6);
        v18 = a4;
        v20 = v14;
        outlined copy of Result<_DataTable, Error>(a4, v14);
        v10 = MLDataTable.size.getter();
        outlined consume of Result<_DataTable, Error>(a4, v14 & 1);
        if (v6 >= v10)
        {
          BUG();
        }

        *a2 = v15;
        *(a2 + 16) = v16;
        a2 += 24;
        v5 = a4;
        v6 = v7;
        if (v7 == v19)
        {
          v5 = a4;
          goto LABEL_12;
        }
      }

      v5 = v18;
      v19 = v6;
LABEL_12:
      a5 = v20;
    }
  }

  else
  {
    v19 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = a5 & 1;
  result = v19;
  *(a1 + 16) = v19;
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v9 = 0;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        BUG();
      }

      v10 = 0;
      v11 = 0;
      v39 = a4;
      v36 = a3;
      while (1)
      {
        v12 = __OFADD__(1, v11);
        v13 = v11 + 1;
        if (v12)
        {
          BUG();
        }

        v40 = v10;
        v34 = v13;
        v33 = a2;

        swift_retain_n(v6, 2);
        v14 = CMLSequence.size.getter();
        v32 = specialized RandomAccessCollection<>.distance(from:to:)(0, v14);

        v15 = CMLSequence.size.getter();
        v16 = specialized RandomAccessCollection<>.distance(from:to:)(0, v15);

        if (v16 < 0)
        {
          BUG();
        }

        v17 = CMLSequence.size.getter();
        v18 = specialized RandomAccessCollection<>.distance(from:to:)(0, v17);
        v7;
        a4 = v39;

        v6;
        if (v32 < 0 || v18 < v32)
        {
          BUG();
        }

        v9 = v40;
        if (v40 == v32)
        {
          break;
        }

        CMLSequence.value(at:)(v40);
        v19 = CMLFeatureValue.stringValue()();
        if (v20)
        {
          v20;

          _StringGuts.grow(_:)(37);
          0;
          v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
          object = v26._object;
          String.append(_:)(v26);
          object;
          v28._countAndFlagsBits = 46;
          v28._object = 0xE100000000000000;
          String.append(_:)(v28);
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000022, ("able.ColumnNames.swift" + 0x8000000000000000), "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
          BUG();
        }

        countAndFlagsBits = v19._countAndFlagsBits;
        v23 = v19._object;

        v24 = CMLSequence.value(at:)(v40);
        MLDataValue.init(_:)(v24, v21);

        outlined copy of MLDataValue(v29, v30, v31);
        v23;
        outlined consume of MLDataValue(v29, v30, v31);
        *v33 = countAndFlagsBits;
        *(v33 + 8) = v23;
        *(v33 + 16) = v29;
        *(v33 + 24) = v30;
        *(v33 + 32) = v31;
        v6 = a6;
        a2 = v33 + 40;
        v11 = v34;
        v10 = v34;
        a3 = v36;
        v7 = a5;
        a4 = v39;
        if (v34 == v36)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v9 = a3;
    }
  }

  *a1 = a4;
  a1[1] = v7;
  a1[2] = v6;
  a1[3] = v9;
  return v9;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  if (a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        BUG();
      }

      v28 = a1;

      v6 = CMLSequence.size.getter();
      v7 = 0;
      v8 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

      if (v8)
      {
        v9 = 1;
        v27 = a4;
        v24 = a3;
        while (1)
        {
          v23 = v9;
          v10 = v9 - 1;
          CMLSequence.value(at:)(v9 - 1);
          v26 = v10;
          v11 = CMLFeatureValue.stringValue()();
          if (v12)
          {

            v12;
            _StringGuts.grow(_:)(37);
            0;
            v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
            object = v20._object;
            String.append(_:)(v20);
            object;
            v22._countAndFlagsBits = 46;
            v22._object = 0xE100000000000000;
            String.append(_:)(v22);
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000022, ("able.ColumnNames.swift" + 0x8000000000000000), "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
            BUG();
          }

          countAndFlagsBits = v11._countAndFlagsBits;
          v14 = v11._object;

          v15 = CMLSequence.size.getter();
          v16 = specialized RandomAccessCollection<>.distance(from:to:)(0, v15);

          if (v26 >= v16)
          {
            BUG();
          }

          *v25 = countAndFlagsBits;
          v25[1] = v14;
          if (v24 == v23)
          {
            break;
          }

          if (__OFADD__(1, v23))
          {
            BUG();
          }

          a4 = v27;

          v17 = CMLSequence.size.getter();
          v18 = specialized RandomAccessCollection<>.distance(from:to:)(0, v17);

          v25 += 2;
          v9 = v23 + 1;
          if (v23 == v18)
          {
            v7 = v23;
            goto LABEL_15;
          }
        }

        v7 = v24;
        a4 = v27;
LABEL_15:
        a1 = v28;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a1 = a4;
  a1[1] = v7;
  return v7;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v7 = 0;
  v92 = type metadata accessor for Date(0);
  v80 = *(v92 - 8);
  v8 = *(v80 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v93 = v73;
  v91 = type metadata accessor for DataFrame.Rows(0);
  v78 = *(v91 - 8);
  v11 = *(v78 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v87 = v73;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v86 = v73;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v79 = v73;
  v81 = type metadata accessor for DataFrame(0);
  v82 = *(v81 - 8);
  v18 = *(v82 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v94 = v73;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v83 = v73;
  v23 = alloca(v18);
  v24 = alloca(v18);
  v84 = v73;
  v89 = type metadata accessor for MLActivityClassifier.DataBatcher(0);
  v25 = *(*(v89 - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v28 = v73;
  v29 = v3;
  v100 = v73;
  outlined init with take of MLClassifierMetrics(v3, v73, type metadata accessor for MLActivityClassifier.DataBatcher);
  if (a2)
  {
    if (a3)
    {
      if ((a3 & 0x8000000000000000) != 0)
      {
        BUG();
      }

      v96 = a1;
      v98 = 0;
      v95 = *(v89 + 48);
      v32 = 0;
      v85 = a3;
      while (1)
      {
        if (v32 >= a3)
        {
          BUG();
        }

        v90 = v32;
        v33 = __OFADD__(1, v32);
        v34 = v32 + 1;
        if (v33)
        {
          BUG();
        }

        v77 = v34;
        v76 = a2;
        v35 = v100;
        v36 = *&v100[v95];
        v37 = v79;
        DataFrame.rows.getter(v29, v28, v30, v31);
        v38 = DataFrame.Rows.count.getter();
        v39 = *(v78 + 8);
        v39(v37, v91);
        v97 = v36;
        if (v36 >= v38)
        {
          a1 = v96;
          v7 = v90;
          goto LABEL_33;
        }

        v88 = v39;
        v40 = v93;
        Date.init()(v37);
        v99 = Date.timeIntervalSince1970.getter(v37);
        v41 = *(v80 + 8);
        v41(v40, v92);
        v42 = v99 * 1000.0;
        if (COERCE__INT64(fabs(v99 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          BUG();
        }

        if (v42 <= -9.223372036854778e18)
        {
          BUG();
        }

        if (v42 >= 9.223372036854776e18)
        {
          BUG();
        }

        v43 = *(v35 + *(v89 + 32));
        v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
        if (swift_dynamicCastMetatype(v43, v44))
        {
          v47 = v97 + 1;
          v48 = v86;
          DataFrame.rows.getter(v43, v44, v45, v46);
          v49 = DataFrame.Rows.count.getter();
          v50 = v48;
          v51 = v100;
          v88(v50, v91);
          if (v49 < v47)
          {
            v47 = v49;
          }

          *&v51[v95] = v47;
          v52 = v93;
          Date.init()(v50);
          v99 = Date.timeIntervalSince1970.getter(v50);
          v41(v52, v92);
          v53 = v99 * 1000.0;
          if (COERCE__INT64(fabs(v99 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            BUG();
          }

          if (v53 <= -9.223372036854778e18)
          {
            BUG();
          }

          if (v53 >= 9.223372036854776e18)
          {
            BUG();
          }

          v54 = v98;
          _s8CreateML20MLActivityClassifierV11DataBatcherV13generateBatch33_B38BBA08EC64E268F7AB3D1A029502D210startingAt8rowCount4seed_07TabularE00E5FrameVSi_S2ixmtKSjRzlFSd_Tt3g5(v97, 1, v53);
        }

        else
        {
          v55 = v43;
          v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
          if (!swift_dynamicCastMetatype(v43, v56))
          {
            v74 = 0;
            v75 = 0xE000000000000000;
            _StringGuts.grow(_:)(24);
            v75;
            v74 = 0xD000000000000016;
            v75 = "ityClassifier+Batching.swift" + 0x8000000000000000;
            v71._countAndFlagsBits = _typeName(_:qualified:)(v43, 0);
            object = v71._object;
            String.append(_:)(v71);
            object;
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v74, v75, "CreateML/MLActivityClassifier+Batching.swift", 44, 2, 348, 0);
            BUG();
          }

          v59 = v97 + 1;
          v60 = v87;
          DataFrame.rows.getter(v55, v56, v57, v58);
          v61 = DataFrame.Rows.count.getter();
          v88(v60, v91);
          if (v61 < v59)
          {
            v59 = v61;
          }

          *(v35 + v95) = v59;
          v62 = v93;
          Date.init()(v60);
          v99 = Date.timeIntervalSince1970.getter(v60);
          v41(v62, v92);
          v63 = v99 * 1000.0;
          if (COERCE__INT64(fabs(v99 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            BUG();
          }

          if (v63 <= -9.223372036854778e18)
          {
            BUG();
          }

          if (v63 >= 9.223372036854776e18)
          {
            BUG();
          }

          v54 = v98;
          _s8CreateML20MLActivityClassifierV11DataBatcherV13generateBatch33_B38BBA08EC64E268F7AB3D1A029502D210startingAt8rowCount4seed_07TabularE00E5FrameVSi_S2ixmtKSjRzlFSf_Tt3g5(v97, 1, v63);
        }

        if (v54)
        {
          v54;
          a1 = v96;
          v7 = v90;
          goto LABEL_32;
        }

        v98 = 0;
        v64 = v82;
        v65 = *(v82 + 32);
        v66 = v83;
        v67 = v81;
        v65(v83, v94, v81);
        v68 = v84;
        v65(v84, v66, v67);
        v69 = v76;
        v29 = v76;
        v28 = v68;
        v65(v76, v68, v67);
        a3 = v85;
        v32 = v77;
        if (v77 == v85)
        {
          break;
        }

        a2 = &v69[*(v64 + 72)];
      }

      v7 = v85;
      a1 = v96;
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_32:
  v35 = v100;
LABEL_33:
  outlined init with take of MLClassifierMetrics(v35, a1, type metadata accessor for MLActivityClassifier.DataBatcher);
  return v7;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = 0;
  if (!a2)
  {
    goto LABEL_13;
  }

  if (!a3)
  {
    v5 = 0;
    goto LABEL_14;
  }

  if (a3 < 0)
  {
    BUG();
  }

  v10 = a3;
  if (!CMLSequence.size.getter())
  {
    v5 = 0;
LABEL_13:
    a3 = 0;
    goto LABEL_14;
  }

  v6 = 1;
  v5 = 0;
  while (1)
  {
    v7 = CMLSequence.value(at:)(v5);
    v5 = specialized RandomAccessCollection<>.index(after:)(v5);
    *(a2 + 8 * v6 - 8) = v7;
    a3 = v10;
    if (v10 == v6)
    {
      break;
    }

    if (__OFADD__(1, v6++))
    {
      BUG();
    }

    if (v5 == CMLSequence.size.getter())
    {
      a3 = v6 - 1;
      break;
    }
  }

  v4 = a1;
LABEL_14:
  *v4 = v3;
  v4[1] = v5;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
LABEL_6:
    v5 = a4;
    goto LABEL_7;
  }

  if (a3 < 0)
  {
    BUG();
  }

  if (a5 == a4)
  {
LABEL_5:
    a3 = 0;
    goto LABEL_6;
  }

  if (a5 < a4)
  {
    BUG();
  }

  if (a5 <= a4)
  {
    BUG();
  }

  *a2 = a4;
  if (a3 == 1)
  {
    v5 = a4 + 1;
  }

  else
  {
    v7 = 1;
    v8 = 1;
    while (1)
    {
      if (__OFADD__(1, v8++))
      {
        BUG();
      }

      if (!(v7 + a4 - a5))
      {
        break;
      }

      if (a4 + v7 >= a5)
      {
        BUG();
      }

      a2[v7] = a4 + v7;
      v7 = v8;
      if (v8 == a3)
      {
        v5 = a4 + v8;
        goto LABEL_7;
      }
    }

    v5 = a5;
    a3 = a5 - a4;
  }

LABEL_7:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v5;
  return a3;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a2)
  {
    result = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
    goto LABEL_11;
  }

  if (a3 < 0)
  {
    BUG();
  }

  result = a4;
  if (!a4)
  {
    goto LABEL_13;
  }

  if (a4 <= 0)
  {
    BUG();
  }

  *a2 = a5;
  if (a3 == 1)
  {
LABEL_11:
    result = a3;
    goto LABEL_13;
  }

  v6 = 1;
  v7 = 1;
  while (1)
  {
    if (__OFADD__(1, v7++))
    {
      BUG();
    }

    if (a4 == v6)
    {
      break;
    }

    a2[v6] = a5;
    v6 = v7;
    if (v7 == a3)
    {
      goto LABEL_11;
    }
  }

  result = a4;
LABEL_13:
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = result;
  return result;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = -1 << *(a4 + 32);
  v6 = ~(-1 << -v5);
  if (-v5 >= 64)
  {
    v6 = -1;
  }

  v23 = a4 + 56;
  v7 = *(a4 + 56) & v6;
  v21 = v5;
  if (!a2)
  {
    v10 = 0;
    a3 = 0;
    goto LABEL_38;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_38;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    BUG();
  }

  v8 = a2;
  v25 = a1;
  v24 = (63 - v5) >> 6;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    if (v9 >= a3)
    {
      BUG();
    }

    v11 = v9 + 1;
    if (__OFADD__(1, v9))
    {
      BUG();
    }

    if (!v7)
    {
      v12 = v10 + 1;
      if (__OFADD__(1, v10))
      {
        BUG();
      }

      if (v12 >= v24)
      {
        goto LABEL_36;
      }

      v7 = *(v23 + 8 * v12);
      if (v7)
      {
        ++v10;
        goto LABEL_21;
      }

      v10 += 2;
      if (v12 + 1 >= v24)
      {
        v10 = v12;
        goto LABEL_36;
      }

      v7 = *(v23 + 8 * v12 + 8);
      if (!v7)
      {
        v13 = v12 + 2;
        if (v12 + 2 >= v24)
        {
          goto LABEL_36;
        }

        v7 = *(v23 + 8 * v12 + 16);
        if (v7)
        {
          goto LABEL_18;
        }

        v10 = v12 + 3;
        if (v12 + 3 >= v24)
        {
          goto LABEL_39;
        }

        v7 = *(v23 + 8 * v12 + 24);
        if (!v7)
        {
          v13 = v12 + 4;
          if (v12 + 4 >= v24)
          {
            goto LABEL_36;
          }

          v7 = *(v23 + 8 * v12 + 32);
          if (v7)
          {
            goto LABEL_18;
          }

          v10 = v12 + 5;
          if (v12 + 5 >= v24)
          {
LABEL_39:
            v10 = v13;
            goto LABEL_36;
          }

          v7 = *(v23 + 8 * v12 + 40);
          if (!v7)
          {
            break;
          }
        }
      }
    }

LABEL_21:
    _BitScanForward64(&v14, v7);
    v7 &= v7 - 1;
    v15 = v14 | (v10 << 6);
    v16 = *(a4 + 48);
    v15 *= 24;
    v17 = *(v16 + v15);
    v18 = *(v16 + v15 + 8);
    v19 = *(v16 + v15 + 16);
    *v8 = v17;
    *(v8 + 8) = v18;
    *(v8 + 16) = v19;
    if (v11 == a3)
    {
      outlined copy of MLRecommender.Identifier(v17, v18, v19);
      goto LABEL_37;
    }

    v8 += 24;
    outlined copy of MLRecommender.Identifier(v17, v18, v19);
    v9 = v11;
  }

  v13 = v12 + 6;
  if (v12 + 6 >= v24)
  {
    goto LABEL_36;
  }

  v7 = *(v23 + 8 * v12 + 48);
  if (v7)
  {
LABEL_18:
    v10 = v13;
    goto LABEL_21;
  }

  while (1)
  {
    v10 = v13 + 1;
    if (v13 + 1 >= v24)
    {
      break;
    }

    v7 = *(a4 + 8 * v13++ + 64);
    if (v7)
    {
      goto LABEL_21;
    }
  }

  v10 = v24 - 1;
LABEL_36:
  v7 = 0;
  a3 = v9;
LABEL_37:
  a1 = v25;
LABEL_38:
  *a1 = a4;
  a1[1] = v23;
  a1[2] = ~v21;
  a1[3] = v10;
  a1[4] = v7;
  return a3;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v17 = -1 << *(a4 + 32);
  v5 = ~(-1 << -v17);
  if (-v17 >= 64)
  {
    v5 = -1;
  }

  v19 = a4 + 64;
  v6 = *(a4 + 64) & v5;
  if (!a2)
  {
    i = 0;
    v4 = 0;
    goto LABEL_46;
  }

  if (!a3)
  {
    i = 0;
    goto LABEL_46;
  }

  if (a3 < 0)
  {
    BUG();
  }

  v7 = a2;
  v20 = (63 - v17) >> 6;
  v8 = 0;
  for (i = 0; ; i = v11)
  {
    if (v8 >= v4)
    {
      BUG();
    }

    v10 = v8 + 1;
    if (__OFADD__(1, v8))
    {
      BUG();
    }

    if (v6)
    {
LABEL_10:
      v11 = i;
      goto LABEL_22;
    }

    v12 = i + 1;
    if (__OFADD__(1, i))
    {
      BUG();
    }

    if (v12 >= v20)
    {
      goto LABEL_45;
    }

    v6 = *(v19 + 8 * v12);
    if (v6)
    {
      v11 = i + 1;
      goto LABEL_22;
    }

    v11 = i + 2;
    if (i + 2 >= v20)
    {
      ++i;
      goto LABEL_45;
    }

    v6 = *(v19 + 8 * v12 + 8);
    if (!v6)
    {
      v13 = i + 3;
      if (i + 3 >= v20)
      {
        goto LABEL_39;
      }

      v6 = *(v19 + 8 * v12 + 16);
      if (v6)
      {
        goto LABEL_19;
      }

      v11 = i + 4;
      if (i + 4 >= v20)
      {
        goto LABEL_40;
      }

      v6 = *(v19 + 8 * v12 + 24);
      if (!v6)
      {
        v13 = i + 5;
        if (i + 5 >= v20)
        {
LABEL_39:
          i = v11;
          goto LABEL_45;
        }

        v6 = *(v19 + 8 * v12 + 32);
        if (v6)
        {
LABEL_19:
          v11 = v13;
          goto LABEL_22;
        }

        if (i + 6 >= v20)
        {
LABEL_40:
          i = v13;
          goto LABEL_45;
        }

        v6 = *(v19 + 8 * v12 + 40);
        if (v6)
        {
          v11 = i + 6;
          goto LABEL_22;
        }

        v11 = i + 7;
        if (i + 7 >= v20)
        {
          i += 6;
          goto LABEL_45;
        }

        v6 = *(v19 + 8 * v12 + 48);
        if (!v6)
        {
          break;
        }
      }
    }

LABEL_22:
    _BitScanForward64(&v14, v6);
    v6 &= v6 - 1;
    *v7 = *(*(a4 + 56) + ((v11 << 9) | (8 * v14)));
    if (v10 == v4)
    {

      i = v11;
      goto LABEL_46;
    }

    ++v7;

    v8 = v10;
  }

  v15 = i + 8;
  while (v15 < v20)
  {
    v6 = *(a4 + 8 * v15++ + 64);
    if (v6)
    {
      i = v15 - 1;
      goto LABEL_10;
    }
  }

  i = v20 - 1;
LABEL_45:
  v6 = 0;
  v4 = v8;
LABEL_46:
  *a1 = a4;
  a1[1] = v19;
  a1[2] = ~v17;
  a1[3] = i;
  a1[4] = v6;
  return v4;
}

{
  v4 = a3;
  v20 = -1 << *(a4 + 32);
  v5 = ~(-1 << -v20);
  if (-v20 >= 64)
  {
    v5 = -1;
  }

  v22 = a4 + 64;
  v6 = *(a4 + 64) & v5;
  if (!a2)
  {
    i = 0;
    v4 = 0;
    goto LABEL_47;
  }

  if (!a3)
  {
    i = 0;
    goto LABEL_47;
  }

  if (a3 < 0)
  {
    BUG();
  }

  v7 = a2;
  v24 = a1;
  v23 = (63 - v20) >> 6;
  v8 = 0;
  for (i = 0; ; i = v11)
  {
    if (v8 >= v4)
    {
      BUG();
    }

    v10 = v8 + 1;
    if (__OFADD__(1, v8))
    {
      BUG();
    }

    if (v6)
    {
LABEL_10:
      v11 = i;
      goto LABEL_22;
    }

    v12 = i + 1;
    if (__OFADD__(1, i))
    {
      BUG();
    }

    if (v12 >= v23)
    {
      goto LABEL_45;
    }

    v6 = *(v22 + 8 * v12);
    if (v6)
    {
      v11 = i + 1;
      goto LABEL_22;
    }

    v11 = i + 2;
    if (i + 2 >= v23)
    {
      ++i;
      goto LABEL_45;
    }

    v6 = *(v22 + 8 * v12 + 8);
    if (!v6)
    {
      v13 = i + 3;
      if (i + 3 >= v23)
      {
        goto LABEL_39;
      }

      v6 = *(v22 + 8 * v12 + 16);
      if (v6)
      {
        goto LABEL_19;
      }

      v11 = i + 4;
      if (i + 4 >= v23)
      {
        goto LABEL_40;
      }

      v6 = *(v22 + 8 * v12 + 24);
      if (!v6)
      {
        v13 = i + 5;
        if (i + 5 >= v23)
        {
LABEL_39:
          i = v11;
          goto LABEL_45;
        }

        v6 = *(v22 + 8 * v12 + 32);
        if (v6)
        {
LABEL_19:
          v11 = v13;
          goto LABEL_22;
        }

        if (i + 6 >= v23)
        {
LABEL_40:
          i = v13;
          goto LABEL_45;
        }

        v6 = *(v22 + 8 * v12 + 40);
        if (v6)
        {
          v11 = i + 6;
          goto LABEL_22;
        }

        v11 = i + 7;
        if (i + 7 >= v23)
        {
          i += 6;
          goto LABEL_45;
        }

        v6 = *(v22 + 8 * v12 + 48);
        if (!v6)
        {
          break;
        }
      }
    }

LABEL_22:
    _BitScanForward64(&v14, v6);
    v6 &= v6 - 1;
    v15 = *(a4 + 48);
    v16 = (v11 << 10) | (16 * v14);
    v17 = *(v15 + v16 + 8);
    *v7 = *(v15 + v16);
    v7[1] = v17;
    if (v10 == v4)
    {

      i = v11;
      goto LABEL_46;
    }

    v7 += 2;

    v8 = v10;
  }

  v18 = i + 8;
  while (v18 < v23)
  {
    v6 = *(a4 + 8 * v18++ + 64);
    if (v6)
    {
      i = v18 - 1;
      goto LABEL_10;
    }
  }

  i = v23 - 1;
LABEL_45:
  v6 = 0;
  v4 = v8;
LABEL_46:
  a1 = v24;
LABEL_47:
  *a1 = a4;
  a1[1] = v22;
  a1[2] = ~v20;
  a1[3] = i;
  a1[4] = v6;
  return v4;
}

unint64_t specialized ChunksOfCountCollection.count.getter()
{
  v1 = v0[3] >> 1;
  v2 = __OFSUB__(v1, v0[2]);
  v3 = v1 - v0[2];
  if (v2)
  {
    BUG();
  }

  v4 = v0[4];
  if (!v4)
  {
    BUG();
  }

  if (!(v3 ^ 0x8000000000000000 | ~v4))
  {
    BUG();
  }

  v6 = v3 % v4;
  v5 = v3 / v4;
  v7 = (v6 > 0) | (v6 >> 63);
  v2 = __OFADD__(v5, v7);
  v8 = v5 + v7;
  if (v2)
  {
    BUG();
  }

  return v8;
}

uint64_t specialized closure #3 in MLActivityClassifier.DataBatcher.generateBatch<A>(startingAt:rowCount:seed:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4;
  result = specialized closure #3 in MLActivityClassifier.DataBatcher.generateBatch<A>(startingAt:rowCount:seed:_:)(*a1, a1[1], a2, a4);
  if (!v5)
  {
    *v6 = result;
  }

  return result;
}

uint64_t partial apply for specialized closure #3 in MLActivityClassifier.DataBatcher.generateBatch<A>(startingAt:rowCount:seed:_:)(uint64_t *a1, uint64_t a2)
{
  return specialized closure #3 in MLActivityClassifier.DataBatcher.generateBatch<A>(startingAt:rowCount:seed:_:)(a1, *(v2 + 16), a2, &demangling cache variable for type metadata for [Double]);
}

{
  return specialized closure #3 in MLActivityClassifier.DataBatcher.generateBatch<A>(startingAt:rowCount:seed:_:)(a1, *(v2 + 16), a2, &demangling cache variable for type metadata for [Float]);
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(&v10[1] + 1) = a4;
  *&v10[2] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return outlined init with take of TabularRegressionTask(v10, v8 + 40 * a1 + 32);
}

uint64_t outlined assign with copy of MLClassifierMetrics(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLClassifierMetrics(0);
  (*(*(v2 - 8) + 24))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for String?);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v1);
    lazy protocol witness table cache variable for type String? and conformance <A> A? = result;
  }

  return result;
}

uint64_t closure #1 in CMLTable.column(name:)partial apply(uint64_t a1)
{
  return partial apply for closure #1 in CMLTable.column(name:)(a1);
}

{
  return partial apply for closure #1 in CMLTable.column(name:)(a1);
}

uint64_t closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply(void *a1)
{
  return partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1);
}

{
  return partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1);
}

{
  return partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1);
}

{
  return _s8CreateML15MLUntypedColumnVyACxcSTRzAA11MLDataValueO7ElementRtzlufcAA08_UntypedD0CyKXEfU_SayAEG_TG5TA_0(a1);
}

{
  return _s8CreateML15MLUntypedColumnVyACxcSTRzAA11MLDataValueO7ElementRtzlufcAA08_UntypedD0CyKXEfU_SayAEG_TG5TA_0(a1);
}

{
  return partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1);
}

{
  return partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1);
}

{
  return partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1);
}

void *initializeBufferWithCopyOfBuffer for MLBoostedTreeClassifier.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *__src;
    *v3 = *__src;
    v3 = (v10 + ((v5 + 16) & ~v5));

    return v3;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v11 = type metadata accessor for DataFrame(0);
    (*(*(v11 - 8) + 16))(__dst, __src, v11);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return v3;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = *__src;
    v9 = __src[8];
    outlined copy of Result<_DataTable, Error>(*__src, v9);
    *__dst = v8;
    __dst[8] = v9;
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return v3;
  }

  return memcpy(__dst, __src, *(v4 + 64));
}

uint64_t destroy for MLBoostedTreeClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 2)
  {
    v3 = type metadata accessor for DataFrame(0);
    return (*(*(v3 - 8) + 8))(a1, v3);
  }

  else if (result == 1)
  {
    return outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
  }

  return result;
}

_BYTE *initializeWithCopy for MLBoostedTreeClassifier.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DataFrame(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *__src;
    v6 = __src[8];
    outlined copy of Result<_DataTable, Error>(*__src, v6);
    *__dst = v5;
    __dst[8] = v6;
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

_BYTE *assignWithCopy for MLBoostedTreeClassifier.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLBoostedTreeClassifier.ModelParameters.ValidationData(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DataFrame(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *__src;
    v6 = __src[8];
    outlined copy of Result<_DataTable, Error>(*__src, v6);
    *__dst = v5;
    __dst[8] = v6;
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLBoostedTreeClassifier.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLBoostedTreeClassifier.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  }

  return result;
}

void *initializeWithTake for MLBoostedTreeClassifier.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 2)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for DataFrame(0);
  (*(*(v4 - 8) + 32))(__dst, __src, v4);
  swift_storeEnumTagMultiPayload(__dst, a3, 2);
  return __dst;
}

void *assignWithTake for MLBoostedTreeClassifier.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLBoostedTreeClassifier.ModelParameters.ValidationData(__dst);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 2)
  {
    v4 = type metadata accessor for DataFrame(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLBoostedTreeClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_33D828;
  v5[1] = &unk_33D840;
  result = type metadata accessor for DataFrame(319);
  if (v4 <= 0x3F)
  {
    v5[2] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t MLBoostedTreeClassifier.ModelParameters.ValidationData.asTable()(__m128 a1)
{
  v3 = v1;
  v4 = type metadata accessor for DataFrame(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v29 = &v25;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v28 = &v25;
  v10 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLBoostedTreeClassifier.ModelParameters.ValidationData(v2, &v25);
  result = swift_getEnumCaseMultiPayload(&v25, v10);
  switch(result)
  {
    case 0:
      *v3 = 0;
      *(v3 + 8) = -1;
      break;
    case 1:
      result = v25;
      v15 = v26;
      goto LABEL_7;
    case 2:
      v16 = v28;
      v17 = v27;
      (*(v27 + 32))(v28, &v25, v4);
      v18 = v29;
      *a1.i64 = (*(v17 + 16))(v29, v16, v4);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v18, 1, a1);
      (*(v17 + 8))(v16, v4);
      result = v30;
      v15 = v31;
LABEL_7:
      *v3 = result;
      *(v3 + 8) = v15;
      break;
    case 3:
      v19 = v3;
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v21 = empty;
      v22 = type metadata accessor for CMLTable();
      v23 = swift_allocObject(v22, 24, 7);
      *(v23 + 16) = v21;
      v24 = type metadata accessor for _DataTable();
      swift_allocObject(v24, 40, 7);
      result = _DataTable.init(impl:)(v23);
      *v19 = result;
      *(v19 + 8) = 0;
      break;
  }

  return result;
}

uint64_t MLBoostedTreeClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *, uint64_t *, uint64_t))
{
  v56 = a3;
  v55 = a2;
  v54 = a1;
  v4 = type metadata accessor for DataFrame(0);
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v53 = &v44;
  v47 = type metadata accessor for DataFrame.Slice(0);
  v46 = *(v47 - 8);
  v8 = *(v46 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v49 = &v44;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v52 = &v44;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v50 = &v44;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v48 = &v44;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v51 = &v44;
  v20 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLBoostedTreeClassifier.ModelParameters.ValidationData(v3, &v44);
  switch(swift_getEnumCaseMultiPayload(&v44, v20))
  {
    case 0u:
      v57 = v4;
      v24 = v51;
      v25 = v50;
      DataFrame.randomSplit(strategy:)(v51, v50, &v44);
      v26 = v46;
      v27 = v52;
      v28 = v25;
      v29 = v47;
      v56 = *(v46 + 16);
      v56(v52, v28, v47);
      DataFrame.init(_:)(v27);
      v30 = v48;
      outlined init with copy of DataFrame.Slice?(v24, v48);
      v31 = v29;
      if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
      {
        __swift_storeEnumTagSinglePayload(v55, 1, 1, v57);
        (*(v26 + 8))(v50, v29);
      }

      else
      {
        v41 = v52;
        (*(v26 + 32))(v52, v30, v31);
        v42 = v49;
        v56(v49, v41, v31);
        DataFrame.init(_:)(v42);
        v43 = *(v26 + 8);
        v43(v41, v31);
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
        v43(v50, v31);
      }

      return outlined destroy of DataFrame.Slice?(v51);
    case 1u:
      v36 = v44;
      v37 = v45;
      (*(v57 + 16))(v54, v56, v4);
      v44 = v36;
      v45 = v37;
      v38 = v55;
      DataFrame.init(_:)(&v44);
      v34 = v38;
      goto LABEL_10;
    case 2u:
      v32 = *(v57 + 32);
      v32(v53, &v44, v4);
      if (DataFrameProtocol.isEmpty.getter(v4, &protocol witness table for DataFrame))
      {
        v33 = v57;
        (*(v57 + 8))(v53, v4);
        (*(v33 + 16))(v54, v56, v4);
LABEL_7:
        v34 = v55;
        v35 = 1;
      }

      else
      {
        (*(v57 + 16))(v54, v56, v4);
        v39 = v55;
        v32(v55, v53, v4);
        v34 = v39;
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v4);
    case 3u:
      (*(v57 + 16))(v54, v56, v4);
      goto LABEL_7;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledName(uint64_t *a1)
{
  result = *a1;
  if (*a1 < 0)
  {
    result = swift_getTypeByMangledNameInContext2(a1 + result, -(result >> 32), 0, 0);
    *a1 = result;
  }

  return result;
}

uint64_t outlined init with copy of MLBoostedTreeClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of DataFrame.Slice?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

NSURL *BlobsFile.init(data:)(unint64_t a1, unint64_t a2, double a3, __m128 a4, __m128 a5, __m128 a6)
{
  v8 = v7;
  v9 = a1;
  v72 = v6;
  outlined copy of Data._Representation(a1, a2);
  v10 = static BlobsFile.isShort(_:)(a1, a2);
  v80 = a2;
  v11 = a2 >> 62;
  v12 = a2 >> 62;
  if ((v10 & 1) == 0)
  {
    v81 = v7;
    v78 = v11;
    switch(v11)
    {
      case 0:
        v15 = a1 >> 8;
        v16 = a1 >> 16;
        v17 = a1 & 0xFF000000;
        v18 = HIDWORD(a1);
        v19 = a1 >> 40;
        v20 = HIWORD(a1);
        v21 = HIBYTE(a1);
        v22 = 0;
        v23 = v80;
        LOBYTE(v24) = v9;
        break;
      case 1:
        if (a1 >> 32 >= a1)
        {
          outlined copy of Data._Representation(a1, v80);
          if (__DataStorage._bytes.getter(a1, v80, v39, v40))
          {
            (__DataStorage._offset.getter)(a3, *a4.i64, *a5.i64, *a6.i64);
            JUMPOUT(0x2B748);
          }

          (__DataStorage._length.getter)(a3, *a4.i64, *a5.i64, *a6.i64);
          BUG();
        }

        BUG();
      case 2:
        v28 = *(a1 + 16);

        v31 = __DataStorage._bytes.getter(v80 & 0x3FFFFFFFFFFFFFFFLL, a2, v29, v30);
        if (v31)
        {
          v32 = v31;
          v33 = (__DataStorage._offset.getter)(a3, *a4.i64, *a5.i64, *a6.i64);
          v34 = __OFSUB__(v28, v33);
          v35 = v28 - v33;
          if (v34)
          {
            BUG();
          }

          v36 = (v32 + v35);
        }

        else
        {
          v36 = 0;
        }

        __DataStorage._length.getter();
        if (!v36)
        {
          BUG();
        }

        v50 = v36->i32[0];
        LODWORD(v18) = v36->i32[1];
        v79 = v36->u64[1];
        v74 = v36[1];
        v75 = v36[2];
        v76 = v36[3];
        v24 = v50;

        a6 = v76;
        a5 = v75;
        a4 = v74;
        LODWORD(v15) = v24 >> 8;
        LODWORD(v16) = HIWORD(v24);
        v17 = v24 & 0xFF000000;
        LODWORD(v19) = v18 >> 8;
        LODWORD(v20) = WORD1(v18);
        LODWORD(v21) = BYTE3(v18);
        v23 = v79;
        v22 = v79 & 0xFFFF000000000000;
        break;
      case 3:
        v23 = 0;
        v22 = 0;
        LOBYTE(v18) = 0;
        LOWORD(v19) = 0;
        LOBYTE(v20) = 0;
        LODWORD(v21) = 0;
        LOBYTE(v24) = 0;
        LOWORD(v15) = 0;
        LOBYTE(v16) = 0;
        v17 = 0;
        break;
    }

    v77 = (v16 << 16) | (v15 << 8) | v17 | v24;
    v91 = v77;
    v92 = (v21 << 24) | (v20 << 16) | (v19 << 8) | v18;
    v51 = v22 | v23 & 0xFFFFFFFFFFFFLL;
    v93 = v51;
    v94 = a4;
    v95 = a5;
    v96 = a6;
    v83 = a4;
    v84 = a5;
    v85 = a6;
    *&v82 = __PAIR64__(v92, v77);
    *(&v82 + 1) = v51;
    if (v92 == 2)
    {
      v74 = a4;
      v75 = a5;
      v76 = a6;
      switch(v78)
      {
        case 0uLL:
          *&v98 = v9;
          DWORD2(v98) = v80;
          WORD6(v98) = WORD2(v80);
          closure #1 in static BlobsFile.readMetadata(from:header:)(&v98, &v98 + BYTE6(v80), &v91, v9, v80);
          if (v81)
          {
            outlined consume of Data._Representation(v9, v80);
            outlined consume of Data._Representation(v9, v80);
            outlined consume of Data._Representation(v9, v80);
            goto LABEL_50;
          }

          v81 = 0;
          v41 = v80;
          outlined consume of Data._Representation(v9, v80);
          outlined consume of Data._Representation(v9, v80);
          v65 = *v97;
          goto LABEL_62;
        case 1uLL:
          v79 = v71;
          v73 = v9;
          if (v9 >> 32 < v9)
          {
            BUG();
          }

          v41 = v80;
          v78 = v80 & 0x3FFFFFFFFFFFFFFFLL;
          outlined copy of Data._Representation(v9, v80);
          v61 = v81;
          v62 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v73, v9 >> 32, v78, &v91, v9, v41, closure #1 in static BlobsFile.readMetadata(from:header:));
          v81 = v61;
          if (v61)
          {
            goto LABEL_49;
          }

          v65 = v62;
          goto LABEL_62;
        case 2uLL:
          v79 = v71;
          v41 = v80;
          v55 = v80 & 0x3FFFFFFFFFFFFFFFLL;
          v78 = *(v9 + 16);
          v73 = *(v9 + 24);
          outlined copy of Data._Representation(v9, v80);

          v56 = v55;
          v57 = v81;
          v58 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v78, v73, v56, &v91, v9, v41, closure #1 in static BlobsFile.readMetadata(from:header:));
          v81 = v57;
          if (!v57)
          {
            v69 = v58;

            v65 = v69;
            goto LABEL_62;
          }

LABEL_44:

LABEL_49:
          outlined consume of Data._Representation(v9, v41);
          goto LABEL_50;
        case 3uLL:
          v79 = v71;
          *(&v98 + 6) = 0;
          *&v98 = 0;
          v59 = v80;
          v60 = v81;
          closure #1 in static BlobsFile.readMetadata(from:header:)(&v98, &v98, &v91, v9, v80);
          if (!v60)
          {
            v81 = 0;
            outlined consume of Data._Representation(v9, v59);
            outlined consume of Data._Representation(v9, v59);
            v65 = *v97;
            v41 = v59;
LABEL_62:
            v66 = v74;
            v67 = v75;
            v68 = v76;
            goto LABEL_63;
          }

          outlined consume of Data._Representation(v9, v59);
          outlined consume of Data._Representation(v9, v59);
          outlined consume of Data._Representation(v9, v59);
LABEL_50:
          v54 = v80;
          break;
      }

      goto LABEL_51;
    }

LABEL_42:
    v52 = lazy protocol witness table accessor for type BlobsFileError and conformance BlobsFileError();
    swift_allocError(&type metadata for BlobsFileError, v52, 0, 0);
    *v53 = 0;
    swift_willThrow();
    v54 = v80;
    outlined consume of Data._Representation(v9, v80);
LABEL_51:
    *&v98 = v9;
    *(&v98 + 1) = v54;
    v99 = v82;
    v100 = v83;
    v101 = v84;
    v102 = v85;
    v103 = _swiftEmptyArrayStorage;
    outlined release of BlobsFile(&v98);
    return __stack_chk_guard;
  }

  switch(v11)
  {
    case 0:
      v13 = HIDWORD(a1);
      v14 = a1;
      break;
    case 1:
      v78 = v11;
      v81 = v7;
      if (a1 >> 32 < a1)
      {
        BUG();
      }

      specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1, a1 >> 32, v80 & 0x3FFFFFFFFFFFFFFFLL, v37);
      if (v81)
      {
        outlined consume of Data._Representation(a1, v80);
        BUG();
      }

      v8 = 0;
      v14 = v86;
      LODWORD(v13) = v87;
      outlined consume of Data._Representation(a1, v80);
      goto LABEL_17;
    case 2:
      v78 = v11;
      v81 = v7;
      v25 = *(a1 + 16);
      v26 = *(a1 + 24);

      specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v25, v26, v80 & 0x3FFFFFFFFFFFFFFFLL, v27);
      if (v7)
      {

        BUG();
      }

      v8 = 0;
      LODWORD(v13) = v89;
      v14 = v88;

LABEL_17:
      v12 = v78;
      break;
    case 3:
      v14 = 0;
      LODWORD(v13) = 0;
      break;
  }

  *&v90[0] = __PAIR64__(v13, v14);
  memset(v90 + 8, 0, 56);
  v82 = __PAIR64__(v13, v14);
  v83 = v90[1];
  v84 = v90[2];
  v85 = 0uLL;
  if (v13 != 2)
  {
    goto LABEL_42;
  }

  v79 = v71;
  switch(v12)
  {
    case 0uLL:
      *&v98 = a1;
      v38 = v80;
      DWORD2(v98) = v80;
      WORD6(v98) = WORD2(v80);
      closure #1 in static BlobsFile.readShortMetadata(from:header:)(&v98, &v98 + BYTE6(v80), v90, a1, v80);
      outlined consume of Data._Representation(a1, v38);
      v78 = a1;
      outlined consume of Data._Representation(a1, v38);
      if (v8)
      {
        goto LABEL_30;
      }

      v81 = 0;
      v77 = v14;
      v65 = *v97;
      v66 = 0;
      v51 = 0;
      v67 = 0;
      v68 = 0;
      v41 = v80;
      v9 = v78;
      break;
    case 1uLL:
      v77 = v14;
      v81 = v8;
      if (a1 >> 32 < a1)
      {
        BUG();
      }

      v41 = v80;
      v78 = v80 & 0x3FFFFFFFFFFFFFFFLL;
      outlined copy of Data._Representation(a1, v80);
      v48 = v81;
      v49 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1, a1 >> 32, v78, v90, a1, v41, closure #1 in static BlobsFile.readShortMetadata(from:header:));
      v81 = v48;
      if (v48)
      {
        goto LABEL_49;
      }

      v65 = v49;
      goto LABEL_60;
    case 2uLL:
      v77 = v14;
      v81 = v8;
      v41 = v80;
      v42 = v80 & 0x3FFFFFFFFFFFFFFFLL;
      v78 = *(a1 + 16);
      v43 = *(a1 + 24);
      outlined copy of Data._Representation(a1, v80);

      v44 = v42;
      v45 = v81;
      v46 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v78, v43, v44, v90, a1, v41, closure #1 in static BlobsFile.readShortMetadata(from:header:));
      v81 = v45;
      if (v45)
      {
        goto LABEL_44;
      }

      v64 = v46;

      v65 = v64;
LABEL_60:
      v66 = 0;
      v51 = 0;
      v67 = 0;
      v68 = 0;
      break;
    case 3uLL:
      *(&v98 + 6) = 0;
      *&v98 = 0;
      v47 = v80;
      closure #1 in static BlobsFile.readShortMetadata(from:header:)(&v98, &v98, v90, a1, v80);
      if (v8)
      {
        outlined consume of Data._Representation(a1, v47);
        outlined consume of Data._Representation(a1, v47);
LABEL_30:
        JUMPOUT(0x2B84FLL);
      }

      v81 = 0;
      v77 = v14;
      outlined consume of Data._Representation(a1, v47);
      outlined consume of Data._Representation(a1, v47);
      v65 = *v97;
      v66 = 0;
      v51 = 0;
      v67 = 0;
      v68 = 0;
      v41 = v47;
      break;
  }

LABEL_63:
  *v97 = v9;
  *&v97[8] = v41;
  *&v97[16] = v77;
  *&v97[20] = 2;
  *&v97[24] = v51;
  *&v97[32] = v66;
  *&v97[48] = v67;
  *&v97[64] = v68;
  *&v97[80] = v65;
  v70 = v65;
  outlined retain of BlobsFile(v97);
  outlined consume of Data._Representation(v9, v41);
  *&v98 = v9;
  *(&v98 + 1) = v41;
  v99 = v82;
  v100 = v83;
  v101 = v84;
  v102 = v85;
  v103 = v70;
  outlined release of BlobsFile(&v98);
  qmemcpy(v72, v97, 0x58uLL);
  return __stack_chk_guard;
}

uint64_t static BlobsFile.isShort(_:)(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  switch(a2 >> 62)
  {
    case 0uLL:
      v4 = BYTE6(a2);
      goto LABEL_6;
    case 1uLL:
      LODWORD(v4) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        BUG();
      }

      v4 = v4;
      goto LABEL_6;
    case 2uLL:
      v5 = *(a1 + 24);
      v6 = __OFSUB__(v5, *(a1 + 16));
      v4 = v5 - *(a1 + 16);
      if (v6)
      {
        BUG();
      }

LABEL_6:
      LOBYTE(v2) = 1;
      if (v4 == 40)
      {
        return v2;
      }

      if (v3 == 2)
      {
        v8 = *(a1 + 24);
        v6 = __OFSUB__(v8, *(a1 + 16));
        v7 = v8 - *(a1 + 16);
        if (v6)
        {
          BUG();
        }
      }

      else if (v3 == 1)
      {
        LODWORD(v7) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          BUG();
        }

        v7 = v7;
      }

      else
      {
        v7 = BYTE6(a2);
      }

      if (v7 == 64)
      {
        return 0;
      }

      if (v3 == 2)
      {
        v10 = *(a1 + 24);
        v6 = __OFSUB__(v10, *(a1 + 16));
        v9 = v10 - *(a1 + 16);
        if (v6)
        {
          BUG();
        }
      }

      else if (v3 == 1)
      {
        LODWORD(v9) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          BUG();
        }

        v9 = v9;
      }

      else
      {
        v9 = BYTE6(a2);
      }

      if (v9 < 68)
      {
        return 0;
      }

      else if (v3 == 2)
      {
        v12 = *(a1 + 16);
        v13 = *(a1 + 24);

        LOBYTE(v15) = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v12, v13, a2 & 0x3FFFFFFFFFFFFFFFLL, v14);
        v2 = v15;
      }

      else
      {
        if (a1 >> 32 < a1)
        {
          BUG();
        }

        LOBYTE(v17) = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1, a1 >> 32, a2 & 0x3FFFFFFFFFFFFFFFLL, v16);
        v2 = v17;
        outlined consume of Data._Representation(a1, a2);
      }

      return v2;
    case 3uLL:
      return 0;
  }
}

unint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  result = a2 >> 62;
  if (a2 >> 62 != 1)
  {
    if (result != 2)
    {
      return result;
    }
  }
}

uint64_t lazy protocol witness table accessor for type BlobsFileError and conformance BlobsFileError()
{
  result = lazy protocol witness table cache variable for type BlobsFileError and conformance BlobsFileError;
  if (!lazy protocol witness table cache variable for type BlobsFileError and conformance BlobsFileError)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for BlobsFileError, &type metadata for BlobsFileError);
    lazy protocol witness table cache variable for type BlobsFileError and conformance BlobsFileError = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BlobsFileError and conformance BlobsFileError;
  if (!lazy protocol witness table cache variable for type BlobsFileError and conformance BlobsFileError)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for BlobsFileError, &type metadata for BlobsFileError);
    lazy protocol witness table cache variable for type BlobsFileError and conformance BlobsFileError = result;
  }

  return result;
}

char **closure #1 in static BlobsFile.readMetadata(from:header:)(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v6 = BYTE6(a5);
  v36 = v5;
  v8 = *a3;
  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0, _swiftEmptyArrayStorage);
  if (!v8)
  {
LABEL_20:
    result = v36;
    *v36 = v9;
    return result;
  }

  v10 = v8;
  v11 = __OFSUB__(HIDWORD(a4), a4);
  v12 = HIDWORD(a4) - a4;
  v13 = v6;
  v14 = 64;
  v15 = a4;
  v16 = a1;
  while (2)
  {
    v17 = v14 + 64;
    if (__OFADD__(64, v14))
    {
      BUG();
    }

    v18 = v13;
    switch(v13)
    {
      case 0:
        goto LABEL_8;
      case 1:
        v18 = v12;
        if (v11)
        {
          BUG();
        }

        goto LABEL_8;
      case 2:
        v19 = *(v15 + 24);
        v20 = __OFSUB__(v19, *(v15 + 16));
        v18 = v19 - *(v15 + 16);
        if (v20)
        {
          BUG();
        }

LABEL_8:
        if (v17 >= v18)
        {
          goto LABEL_21;
        }

        goto LABEL_11;
      case 3:
        if (v17 >= 0)
        {
          goto LABEL_21;
        }

LABEL_11:
        if (!v16)
        {
          BUG();
        }

        v21 = *(v16 + v14 + 4);
        v22 = *(v16 + v14 + 8);
        v35 = *(v16 + v14 + 48);
        v34 = *(v16 + v14 + 32);
        v33 = *(v16 + v14 + 16);
        if (*(v16 + v14) == -559038737)
        {
          v23 = *(v9 + 2);
          v24 = v23 + 1;
          if (*(v9 + 3) >> 1 <= v23)
          {
            v37 = v10;
            v40 = v11;
            v38 = v12;
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v9 + 3) >= 2uLL, v24, 1, v9);
            v24 = v23 + 1;
            v12 = v38;
            v11 = v40;
            v10 = v37;
            v16 = a1;
            v9 = v29;
          }

          *(v9 + 2) = v24;
          v25 = v23 << 6;
          *&v9[v25 + 32] = -559038737;
          *&v9[v25 + 36] = v21;
          *&v9[v25 + 40] = v22;
          *&v9[v25 + 48] = v33;
          *&v9[v25 + 64] = v34;
          *&v9[v25 + 80] = v35;
          if (v22 < 0)
          {
            BUG();
          }

          v26 = v22 - 1;
          if (((v26 / 64 - 0x1FFFFFFFFFFFFFFLL) >> 58) < 0x3F)
          {
            BUG();
          }

          v27 = (v26 / 64) << 6;
          v20 = __OFSUB__(v27, -128);
          v28 = v27 + 128;
          if (v20)
          {
            BUG();
          }

          v20 = __OFADD__(v28, v14);
          v14 += v28;
          if (v20)
          {
            BUG();
          }

          if (!--v10)
          {
            goto LABEL_20;
          }

          continue;
        }

LABEL_21:
        v9;
        v31 = lazy protocol witness table accessor for type BlobsFileError and conformance BlobsFileError();
        swift_allocError(&type metadata for BlobsFileError, v31, 0, 0);
        *v32 = 1;
        return swift_willThrow();
    }
  }
}

char **closure #1 in static BlobsFile.readShortMetadata(from:header:)(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, unint64_t a5)
{
  v37 = v6;
  v43 = a1;
  v38 = v5;
  v9 = *a3;
  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0, _swiftEmptyArrayStorage);
  if (!v9)
  {
LABEL_20:
    result = v38;
    *v38 = v10;
    return result;
  }

  v11 = v9;
  v12 = __OFSUB__(HIDWORD(a4), a4);
  v13 = HIDWORD(a4) - a4;
  v14 = BYTE6(a5);
  v15 = 40;
  v36 = a5 >> 62;
  v16 = 0;
  v17 = a4;
  v18 = v43;
  while (2)
  {
    v19 = v15 + 56;
    if (__OFADD__(56, v15))
    {
      BUG();
    }

    v20 = v14;
    switch(v14)
    {
      case 0:
        goto LABEL_8;
      case 1:
        v20 = v13;
        if (v12)
        {
          BUG();
        }

        goto LABEL_8;
      case 2:
        v21 = *(v17 + 24);
        v22 = __OFSUB__(v21, *(v17 + 16));
        v20 = v21 - *(v17 + 16);
        if (v22)
        {
          BUG();
        }

LABEL_8:
        if (v19 >= v20)
        {
          goto LABEL_21;
        }

        goto LABEL_11;
      case 3:
        if (v19 >= 0)
        {
          goto LABEL_21;
        }

LABEL_11:
        if (!v18)
        {
          BUG();
        }

        if (*(v18 + v15) == -559038737)
        {
          v23 = *(v18 + v15 + 4);
          v24 = _mm_loadu_si128((v18 + v15 + 8));
          v25 = *(v10 + 2);
          v26 = *(v10 + 3);
          if (v26 >> 1 <= v25)
          {
            v39 = v17;
            v40 = v11;
            v44 = v12;
            v41 = v13;
            v42 = v14;
            v35 = v24;
            v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26 >= 2, v25 + 1, 1, v10);
            v24 = _mm_load_si128(&v35);
            v16 = 0;
            v14 = v42;
            v13 = v41;
            v12 = v44;
            LODWORD(v11) = v40;
            v18 = v43;
            v17 = v39;
            v10 = v31;
          }

          *(v10 + 2) = v25 + 1;
          v27 = v25 << 6;
          *&v10[v27 + 32] = -559038737;
          *&v10[v27 + 36] = v23;
          *&v10[v27 + 40] = v24;
          *&v10[v27 + 88] = 0;
          *&v10[v27 + 56] = v16;
          *&v10[v27 + 72] = v16;
          if (v24.i64[0] < 0)
          {
            BUG();
          }

          v28 = (v24.i64[0] - 1) / 8;
          if (((v28 - 0xFFFFFFFFFFFFFFFLL) >> 61) < 7)
          {
            BUG();
          }

          v29 = 8 * v28;
          v22 = __OFADD__(64, v29);
          v30 = v29 + 64;
          if (v22)
          {
            BUG();
          }

          v22 = __OFADD__(v30, v15);
          v15 += v30;
          if (v22)
          {
            BUG();
          }

          v11 = (v11 - 1);
          if (!v11)
          {
            goto LABEL_20;
          }

          continue;
        }

LABEL_21:
        v10;
        v33 = lazy protocol witness table accessor for type BlobsFileError and conformance BlobsFileError();
        swift_allocError(&type metadata for BlobsFileError, v33, 0, 0);
        *v34 = 1;
        return swift_willThrow();
    }
  }
}

BOOL specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __DataStorage._bytes.getter(a1, a2, a3, a4);
  if (v4)
  {
    v5 = v4;
    v6 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v6))
    {
      BUG();
    }

    v7 = v5 + a1 - v6;
  }

  else
  {
    v7 = 0;
  }

  __DataStorage._length.getter();
  if (!v7)
  {
    BUG();
  }

  return *(v7 + 64) != -559038737 && *(v7 + 40) == -559038737;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = __DataStorage._bytes.getter(a1, a2, a3, a4);
  if (v6)
  {
    v7 = v6;
    v8 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v8))
    {
      BUG();
    }

    v9 = v7 + a1 - v8;
  }

  else
  {
    v9 = 0;
  }

  __DataStorage._length.getter();
  if (!v9)
  {
    BUG();
  }

  result = *v9;
  *v5 = *v9;
  *(v5 + 8) = *(v9 + 8);
  *(v5 + 24) = *(v9 + 24);
  return result;
}

unint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = __DataStorage._bytes.getter(a1, a2, a3, a4);
  if (v8)
  {
    v9 = v8;
    v10 = __DataStorage._offset.getter();
    v11 = a1;
    if (__OFSUB__(a1, v10))
    {
      BUG();
    }

    v12 = v9 + a1 - v10;
  }

  else
  {
    v11 = a1;
    v12 = 0;
  }

  v13 = a2 - v11;
  if (__OFSUB__(a2, v11))
  {
    BUG();
  }

  v14 = __DataStorage._length.getter();
  if (v14 < v13)
  {
    v13 = v14;
  }

  v15 = v12 + v13;
  if (!v12)
  {
    v15 = 0;
  }

  a7(v12, v15, a4, a5, a6);
  result = outlined consume of Data._Representation(a5, a6);
  if (!v7)
  {
    return v17;
  }

  return result;
}

uint64_t *outlined retain of BlobsFile(uint64_t *a1)
{
  outlined copy of Data._Representation(*a1, a1[1]);

  return a1;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySiG_Si5label_So12MLMultiArrayC9keypointstsAE_pTg50108_s8CreateML22MLHandActionClassifierV36makeLabeledKeypointsSequenceFeatures4from11classLabelsSaySi5label_So12ef30C9keypointstGAA11MLDataTableV_T24SSGtKFZSiAG_AiJtSiKXEfU_0I2ML0yZ0VSaySSGTf1cn_n(uint64_t a1, void *a2, int a3, void *a4, double a5)
{
  v31 = v5;
  v29 = a4;
  v22 = a1;
  v7 = *(a1 + 16);
  if (v7)
  {
    v28 = _swiftEmptyArrayStorage;
    v8 = 0;
    v24 = v7;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v10 = _swiftEmptyArrayStorage;
    v30 = a3;
    v27 = a3 & 1;
    v11 = v31;
    v23 = a2;
    while (1)
    {
      v20 = *(v22 + 8 * v8 + 32);
      closure #1 in static MLHandActionClassifier.makeLabeledKeypointsSequenceFeatures(from:classLabels:)(&v20, a2, v27, v29, &v21, a5);
      if (v11)
      {
        break;
      }

      v12 = v18;
      v13 = v19;
      v28 = v10;
      v14 = v10[2];
      v15 = v10[3];
      if (v15 >> 1 <= v14)
      {
        v26 = v19;
        v25 = v18;
        v31 = 0;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 >= 2, v14 + 1, 1);
        v13 = v26;
        v12 = v25;
        v11 = v31;
        v10 = v28;
      }

      ++v8;
      v10[2] = v14 + 1;
      v16 = 2 * v14;
      v10[v16 + 4] = v12;
      v10[v16 + 5] = v13;
      a2 = v23;
      if (v24 == v8)
      {
        v31 = v11;
        outlined consume of Result<_DataTable, Error>(v23, v30);
        goto LABEL_10;
      }
    }

    outlined consume of Result<_DataTable, Error>(a2, v30);
    v29;
  }

  else
  {
    outlined consume of Result<_DataTable, Error>(a2, a3);
    v10 = _swiftEmptyArrayStorage;
LABEL_10:
    v29;
  }

  return v10;
}

void *static MLHandActionClassifier.makeLabeledKeypointsSequenceFeatures(from:classLabels:)(uint64_t a1, void *a2, double a3)
{
  v4 = *(a1 + 8) & 1;
  v9 = *a1;
  v3 = *a1;
  outlined copy of Result<_DataTable, Error>(*a1, *(a1 + 8));
  v5._countAndFlagsBits = 0x5F6E6F6973736573;
  v5._object = 0xEA00000000006469;
  MLDataTable.subscript.getter(v5);
  outlined consume of Result<_DataTable, Error>(v9, v4);
  MLUntypedColumn.dropDuplicates()();
  outlined consume of Result<_DataTable, Error>(v10, v11);
  if (v4 || (outlined copy of Result<_DataTable, Error>(v9, 0), _UntypedColumn.type.getter(), outlined consume of Result<_DataTable, Error>(v9, 0), v10))
  {
    outlined consume of Result<_DataTable, Error>(v9, v4);
    BUG();
  }

  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5(v9, 0, a3);
  outlined copy of Result<_DataTable, Error>(v3, v4);

  ML22MLHandActionClassifierV36makeLabeledKeypointsSequenceFeatures4from11classLabelsSaySi5label_So12ef30C9keypointstGAA11MLDataTableV_T24SSGtKFZSiAG_AiJtSiKXEfU_0I2ML0yZ0VSaySSGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySiG_Si5label_So12MLMultiArrayC9keypointstsAE_pTg50108_s8CreateML22MLHandActionClassifierV36makeLabeledKeypointsSequenceFeatures4from11classLabelsSaySi5label_So12ef30C9keypointstGAA11MLDataTableV_T24SSGtKFZSiAG_AiJtSiKXEfU_0I2ML0yZ0VSaySSGTf1cn_n(MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5, v3, v4, a2, a3);
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5;
  return ML22MLHandActionClassifierV36makeLabeledKeypointsSequenceFeatures4from11classLabelsSaySi5label_So12ef30C9keypointstGAA11MLDataTableV_T24SSGtKFZSiAG_AiJtSiKXEfU_0I2ML0yZ0VSaySSGTf1cn_n;
}

uint64_t *closure #1 in static MLHandActionClassifier.makeLabeledKeypointsSequenceFeatures(from:classLabels:)(uint64_t *a1, void *a2, int a3, void *a4, uint64_t *a5, double a6)
{
  v62 = a4;
  v56 = v6;
  v66 = a5;
  *&v65 = v7;
  v8 = *a1;
  v61 = a2;
  *&v57 = a2;
  LODWORD(v70) = a3;
  v9 = a3 & 1;
  BYTE8(v57) = a3 & 1;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  v10._countAndFlagsBits = 0x5F6E6F6973736573;
  v10._object = 0xEA00000000006469;
  MLDataTable.subscript.getter(v10);
  outlined consume of Result<_DataTable, Error>(v57, SBYTE8(v57));
  v67 = v71;
  v68 = v72;
  v59 = &type metadata for Int;
  v60 = &protocol witness table for Int;
  *&v57 = v8;
  static MLUntypedColumn.== infix(_:_:)(&v67, &v57);
  outlined consume of Result<_DataTable, Error>(v67, v68);
  __swift_destroy_boxed_opaque_existential_1Tm(&v57);
  *&v57 = v61;
  BYTE8(v57) = v9;
  v71 = v53;
  v72 = v54;
  outlined copy of Result<_DataTable, Error>(v61, v70);
  MLDataTable.subscript.getter(&v71);
  outlined consume of Result<_DataTable, Error>(v71, v72);
  outlined consume of Result<_DataTable, Error>(v57, SBYTE8(v57));
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
  v12 = swift_allocObject(v11, 56, 7);
  v12[2].super.super.isa = (&dword_0 + 3);
  v12[3].super.super.isa = (&dword_4 + 3);
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v12[4].super.super.isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v12[5].super.super.isa = NSNumber.init(integerLiteral:)(3).super.super.isa;
  v12[6].super.super.isa = NSNumber.init(integerLiteral:)(21).super.super.isa;
  v13 = v65;
  static _VideoUtilities.reformatKeypointsDataTable(table:featureColumn:keypointsShape:)(&v73, 0x746E696F7079656BLL, 0xE900000000000073, v12);
  if (v13)
  {
    v12;
    outlined consume of Result<_DataTable, Error>(v73, v74);
    result = v66;
    *v66 = v13;
    return result;
  }

  *&v65 = 0;
  v12;
  v15 = v73;
  v16 = v74;
  *&v57 = v73;
  BYTE8(v57) = v74;
  v17._countAndFlagsBits = 0x6C6562616CLL;
  v17._object = 0xE500000000000000;
  MLDataTable.subscript.getter(v17);
  if (v54)
  {
    outlined consume of Result<_DataTable, Error>(v53, 1);
LABEL_9:
    v28 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v26 = swift_allocError(&type metadata for MLCreateError, v28, 0, 0);
    *v29 = 0xD000000000000023;
    *(v29 + 8) = "+DataHandling.swift" + 0x8000000000000000;
    *(v29 + 16) = 0;
    *(v29 + 32) = 0;
    *(v29 + 48) = 0;
    goto LABEL_10;
  }

  v64 = v15;

  _UntypedColumn.valueAtIndex(index:)(0, a6);
  outlined consume of Result<_DataTable, Error>(v53, 0);
  outlined consume of Result<_DataTable, Error>(v53, 0);
  v18 = v57;
  if (v58 != 2)
  {
    outlined consume of MLDataValue(v57, *(&v57 + 1), v58);
    goto LABEL_9;
  }

  v19 = v62;
  v20 = specialized Collection<>.firstIndex(of:)(v57, v62);
  if (v21)
  {
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    SBYTE8(v57);
    *&v57 = 0xD000000000000017;
    *(&v57 + 1) = "l column name label" + 0x8000000000000000;
    String.append(_:)(v18);
    outlined consume of MLDataValue(v18._countAndFlagsBits, v18._object, 2);
    v22._object = 0xE400000000000000;
    v22._countAndFlagsBits = 544106784;
    String.append(_:)(v22);
    v23._countAndFlagsBits = Array.description.getter(v19, &type metadata for String);
    object = v23._object;
    String.append(_:)(v23);
    object;
    v65 = v57;
    v25 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v26 = swift_allocError(&type metadata for MLCreateError, v25, 0, 0);
    *v27 = v65;
    *(v27 + 16) = 0;
    *(v27 + 32) = 0;
    *(v27 + 48) = 0;
LABEL_10:
    swift_willThrow();
    outlined consume of Result<_DataTable, Error>(v73, v74);
    result = v66;
    *v66 = v26;
    return result;
  }

  v52 = v20;
  outlined consume of MLDataValue(v18._countAndFlagsBits, v18._object, 2);
  v30 = v64;
  v71 = v64;
  v72 = v16;
  *&v57 = v64;
  BYTE8(v57) = v16;
  outlined copy of Result<_DataTable, Error>(v64, v16);
  outlined copy of Result<_DataTable, Error>(v30, v16);
  v31 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v57, SBYTE8(v57));
  v32 = specialized RandomAccessCollection<>.distance(from:to:)(0, v31, v30, v16);
  if (v32)
  {
    v69 = v16;
    v67 = _swiftEmptyArrayStorage;
    v63 = v32;
    specialized ContiguousArray.reserveCapacity(_:)(v32);
    if (v63 < 0)
    {
      BUG();
    }

    v33 = 0;
    v34 = 0;
    while (1)
    {
      v61 = (v34 + 1);
      if (__OFADD__(1, v34))
      {
        BUG();
      }

      v62 = v33;
      MLDataTable.Rows.subscript.getter(v33);
      v35 = *(&v57 + 1);
      v36 = v58;
      v37 = *(*(&v57 + 1) + 16) == 0;
      v70 = v57;
      if (v37)
      {
        break;
      }

      v38 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E696F7079656BLL, 0xE900000000000073);
      if ((v39 & 1) == 0)
      {

        v35;

        break;
      }

      v40 = *(*(v35 + 56) + 8 * v38);

      v41 = v65;
      v42 = CMLSequence.value(at:)(v40);
      if (v41)
      {
        swift_unexpectedError(v41, "CreateML/MLDataTable.Row.swift", 30, 1, 85);
        BUG();
      }

      MLDataValue.init(_:)(v42, a6);
      v35;
      v43 = v70;

      v36;
      if (v55 != 5)
      {
        outlined consume of MLDataValue(v53, v54, v55);
        break;
      }

      *&v65 = 0;

      v35;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v43);
      v44 = v67[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v44);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v44);
      specialized ContiguousArray._endMutation()(v44);
      *&v57 = v71;
      BYTE8(v57) = v72;
      outlined copy of Result<_DataTable, Error>(v71, v72);
      v45 = MLDataTable.size.getter();
      outlined consume of Result<_DataTable, Error>(v57, SBYTE8(v57));
      if (v62 >= v45)
      {
        BUG();
      }

      v34 = v61;
      v33 = v61;
      v46 = v56;
      if (v61 == v63)
      {
        outlined consume of Result<_DataTable, Error>(v64, v69);
        v47 = v67;
        goto LABEL_23;
      }
    }

    v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v50 = swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
    *v51 = 0xD00000000000002BLL;
    *(v51 + 8) = "No matching label name " + 0x8000000000000000;
    *(v51 + 16) = 0;
    *(v51 + 32) = 0;
    *(v51 + 48) = 0;
    swift_willThrow();

    v35;

    outlined consume of Result<_DataTable, Error>(v64, v69);
    *v66 = v50;
    return outlined consume of Result<_DataTable, Error>(v73, v74);
  }

  else
  {
    outlined consume of Result<_DataTable, Error>(v30, v16);
    v47 = _swiftEmptyArrayStorage;
    v46 = v56;
LABEL_23:
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
    v48 = @nonobjc MLMultiArray.__allocating_init(concatenating:axis:dataType:)(v47, 0, 65600);
    *v46 = v52;
    v46[1] = v48;
    return outlined consume of Result<_DataTable, Error>(v73, v74);
  }
}

uint64_t specialized Collection<>.firstIndex(of:)(__int128 a1, void *a2)
{
  v9 = a2[2];
  if (!v9)
  {
    return 0;
  }

  v3 = 0;
  if (a1 != *(a2 + 2) && (_stringCompareWithSmolCheck(_:_:expecting:)(a2[4], a2[5], a1, *(&a1 + 1), 0) & 1) == 0)
  {
    v4 = a2 + 7;
    v5 = 1;
    v3 = 0;
    while (v9 != v5)
    {
      v6 = v5;
      ++v3;
      if (a1 == *(v4 - 1))
      {
        return v3;
      }

      v7 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v4 - 1), *v4, a1, *(&a1 + 1), 0);
      v5 = v6 + 1;
      v4 += 2;
      if (v7)
      {
        return v6;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (*(a2 + 32) == a1)
    {
      return 0;
    }

    v4 = v2 - 1;
    v5 = 0;
    while (v4 != v5)
    {
      result = v5 + 1;
      if (*(a2 + 8 * v5++ + 40) == a1)
      {
        return result;
      }
    }
  }

  return 0;
}

unint64_t specialized Collection<>.firstIndex(of:)(__int128 a1, uint64_t a2, unint64_t a3)
{
  v5 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v5 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v10 = 4 * v5;
  for (i = 15; ; i = String.index(after:)(i, a2, a3))
  {
    if (i >> 14 == v10)
    {
      return 0;
    }

    *&v7 = String.subscript.getter(i, a2, a3);
    v8 = BYTE8(v7);
    if (a1 == v7)
    {
      break;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)(v7, *(&v7 + 1), a1, *(&a1 + 1), 0);
    v8;
    if (v11)
    {
      return i;
    }
  }

  SBYTE8(v7);
  return i;
}

id @nonobjc MLMultiArray.__allocating_init(concatenating:axis:dataType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [ObjCClassFromMetadata multiArrayByConcatenatingMultiArrays:isa alongAxis:a2 dataType:a3];
  v7 = v6;

  return v7;
}

void *static MLHandActionClassifier.prepareDataset(classLabels:trainingFeatures:validationFeatures:parameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v54 = v7;
  v46 = a6;
  v51 = a2;
  v50 = a1;
  v49 = type metadata accessor for LearningPhase(0);
  v56 = *(v49 - 8);
  v11 = v56[8];
  v12 = alloca(v11);
  v13 = alloca(v11);
  v47 = &v39;
  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>);
  v14 = *(v48 - 8);
  v15 = *(v14 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v52 = &v39;
  v18 = *a4;
  v19 = *(a4 + 8);
  v39 = *a5;
  LOBYTE(v55) = *(a5 + 8);
  v44 = v18;
  v45 = v19;
  v20 = v54;
  result = static MLHandActionClassifier.makeLabeledKeypointsSequenceFeatures(from:classLabels:)(&v44, a3, a7);
  if (!v20)
  {
    v54 = 0;
    v53 = v14;
    v40 = a3;
    v22 = a3[2];
    v23 = result;
    v24 = v47;
    v25 = v49;
    v43 = v56[13];
    v43(v47, enum case for LearningPhase.training(_:), v49);
    v41 = v22;
    _s8CreateML22MLHandActionClassifierV11makeDataset4from16classLabelsCount10parameters13learningPhase14NeuralNetworks0G0VySaySi5label_So12MLMultiArrayC9keypointstGAI10DataSampleVyAI6TensorVATGGx_SiAC15ModelParametersVAI08LearningN0OtSkRzSiAL_AnOt7ElementRtzlFZAP_Tt4g5(v23, v22, v46, v24);
    v42 = v56[1];
    v42(v24, v25);
    v23;
    v26 = 1;
    v27 = v52;
    if (v55 != 0xFF)
    {
      v28 = v39;
      v44 = v39;
      v29 = v55;
      LOBYTE(v55) = v55 & 1;
      v45 = v55;
      outlined copy of Result<_DataTable, Error>(v39, v29);
      outlined copy of Result<_DataTable, Error>(v28, v29);
      outlined copy of Result<_DataTable, Error>(v28, v29);
      v56 = MLDataTable.size.getter();
      v30 = v28;
      outlined consume of Result<_DataTable, Error>(v44, v45);
      outlined consume of MLDataTable?(v28, v29);
      if (v56)
      {
        LODWORD(v56) = v29;
        v44 = v28;
        v45 = v55;
        v31 = v54;
        v32 = static MLHandActionClassifier.makeLabeledKeypointsSequenceFeatures(from:classLabels:)(&v44, v40, a7);
        v54 = v31;
        v33 = v28;
        v34 = v50;
        if (v31)
        {
          (*(v53 + 8))(v52, v48);
          return outlined consume of MLDataTable?(v28, v56);
        }

        v55 = v32;
        v38 = v47;
        v43(v47, enum case for LearningPhase.inference(_:), v49);
        v35 = v51;
        _s8CreateML22MLHandActionClassifierV11makeDataset4from16classLabelsCount10parameters13learningPhase14NeuralNetworks0G0VySaySi5label_So12MLMultiArrayC9keypointstGAI10DataSampleVyAI6TensorVATGGx_SiAC15ModelParametersVAI08LearningN0OtSkRzSiAL_AnOt7ElementRtzlFZAP_Tt4g5(v55, v41, v46, v38);
        outlined consume of MLDataTable?(v33, v56);
        v42(v38, v49);
        v55;
        v26 = 0;
        v27 = v52;
        goto LABEL_8;
      }

      v26 = 1;
      outlined consume of MLDataTable?(v30, v29);
    }

    v35 = v51;
    v34 = v50;
LABEL_8:
    v36 = v27;
    v37 = v48;
    (*(v53 + 32))(v34, v36, v48);
    return __swift_storeEnumTagSinglePayload(v35, v26, 1, v37);
  }

  return result;
}

uint64_t _s8CreateML22MLHandActionClassifierV11makeDataset4from16classLabelsCount10parameters13learningPhase14NeuralNetworks0G0VySaySi5label_So12MLMultiArrayC9keypointstGAI10DataSampleVyAI6TensorVATGGx_SiAC15ModelParametersVAI08LearningN0OtSkRzSiAL_AnOt7ElementRtzlFZAP_Tt4g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v39 = a3;
  v44 = a2;
  v36 = a1;
  v31[1] = v4;
  v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>.PrefetchMode);
  v34 = *(v33 - 8);
  v5 = *(v34 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v35 = v29;
  v8 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v40 = *(v8 - 8);
  v37 = *(v40 + 64);
  v9 = alloca(v37);
  v10 = alloca(v37);
  v41 = v29;
  v11 = type metadata accessor for LearningPhase(0);
  v12 = *(v11 - 8);
  v43 = v11;
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v42 = v29;
  v31[0] = a1;
  v16 = v39;
  v32 = *(v39 + *(v8 + 20));
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  (*(v12 + 16))(v29, v38, v11);
  outlined init with copy of MLHandActionClassifier.ModelParameters(v16, v29);
  v17 = *(v12 + 80);
  v18 = ~*(v12 + 80) & (v17 + 16);
  v19 = *(v40 + 80);
  v20 = ~v19 & (v18 + v19 + v13);
  v21 = (v37 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject(&unk_38F2E0, v21 + 8, v19 | v17 | 7);
  (*(v12 + 32))(v22 + v18, v42, v43);
  outlined init with take of MLHandActionClassifier.ModelParameters(v41, v22 + v20);
  *(v22 + v21) = v44;
  v23 = v35;
  (*(v34 + 104))(v35, enum case for Dataset.PrefetchMode.serial<A, B>(_:), v33);

  v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [(label: Int, keypoints: MLMultiArray)]);
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
  v25 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [(label: Int, keypoints: MLMultiArray)] and conformance [A], &demangling cache variable for type metadata for [(label: Int, keypoints: MLMultiArray)], &protocol conformance descriptor for [A]);
  v26 = lazy protocol witness table accessor for type DataSample<Tensor, Tensor> and conformance <> DataSample<A, B>();
  v27 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type DataSample<Tensor, Tensor> and conformance DataSample<A, B>, &demangling cache variable for type metadata for DataSample<Tensor, Tensor>, &protocol conformance descriptor for DataSample<A, B>);
  return Dataset.init(samples:batchSize:batchSampler:dropsLastPartialBatch:prefetchMode:transform:)(v31, v32, v29, 0, v23, partial apply for closure #1 in static MLHandActionClassifier.makeDataset<A>(from:classLabelsCount:parameters:learningPhase:), v22, v44, v24, v25, v26, v27);
}

uint64_t closure #1 in static MLHandActionClassifier.makeDataset<A>(from:classLabelsCount:parameters:learningPhase:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a4;
  v94 = a3;
  v90 = a2;
  v79 = v4;
  v81 = type metadata accessor for ScalarType(0);
  v82 = *(v81 - 8);
  v5 = *(v82 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v80 = v76;
  v8 = *(*(type metadata accessor for TensorShape(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v83 = v76;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v87 = v76;
  v89 = type metadata accessor for Tensor(0);
  v92 = *(v89 - 8);
  v14 = *(v92 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v88 = v76;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v93 = v76;
  v19 = alloca(v14);
  v20 = alloca(v14);
  v85 = v76;
  v21 = alloca(v14);
  v22 = alloca(v14);
  v86 = v76;
  v23 = type metadata accessor for LearningPhase(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v78 = *a1;
  v28 = a1[1];
  (*(v24 + 104))(v76, enum case for LearningPhase.training(_:), v23);
  v29 = lazy protocol witness table accessor for type LearningPhase and conformance LearningPhase();
  v91 = v28;
  dispatch thunk of RawRepresentable.rawValue.getter(v23, v29);
  dispatch thunk of RawRepresentable.rawValue.getter(v23, v29);
  v30 = v84;
  v31 = v76[2];
  (*(v24 + 8))(v76, v23);
  if (v30 == v31)
  {
    v32 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    v33 = v94;
    v84 = *(v94 + *(v32 + 32));
    v34 = v91;
    v35 = static MLHandActionClassifier.dataAugmentation(_:options:)(v91, &v84);

    v36 = v35;
    v37 = v33;
  }

  else
  {
    v36 = v91;
    v37 = v94;
  }

  v94 = *(v37 + *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 28));
  v38 = [v36 shape];
  v39 = v38;
  v40 = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v39, v40);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v41 & 0xC000000000000003) == 0, v41);
  if ((v41 & 0xC000000000000003) != 0)
  {
    v42 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
  }

  else
  {
    v42 = *(v41 + 32);
  }

  v43 = v42;
  v41;
  v90 = Int.init(truncating:)(v43);

  v91 = v36;
  v44 = MLMultiArray.cast(to:)(&loc_10020);
  v45 = type metadata accessor for ComputeDevice(0);
  v46 = v87;
  __swift_storeEnumTagSinglePayload(v87, 1, 1, v45);
  v47 = v86;
  Tensor.init(_:device:)(v44, v46);
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v45);
  v48 = v77;
  Tensor.init(oneHotAtIndex:depth:onValue:offValue:on:)(v78, v77, v46, 1.0, 0.0);
  v50 = v94;
  v51 = v90;
  if (v90 < v94)
  {
    v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v53 = swift_allocObject(v52, 56, 7);
    v53[2] = 3;
    v53[3] = 6;
    v54 = __OFSUB__(v50, v51);
    v55 = v50 - v51;
    if (v54)
    {
      BUG();
    }

    v53[4] = v55;
    v53[5] = 3;
    v53[6] = 21;
    v56 = v83;
    TensorShape.init(_:)(v53);
    v57 = v80;
    (*(v82 + 104))(v80, enum case for ScalarType.float32(_:), v81);
    v58 = v87;
    __swift_storeEnumTagSinglePayload(v87, 1, 1, v45);
    v59 = v93;
    Tensor.init(zeros:scalarType:on:)(v56, v57, v58);
    v60 = v88;
    Tensor.concatenated(with:alongAxis:)(v59, 0);
    v61 = v92;
    v62 = *(v92 + 8);
    v63 = v59;
    v64 = v89;
    v62(v63, v89);
LABEL_14:
    v62(v47, v64);
    (*(v61 + 32))(v47, v60, v64);
    goto LABEL_15;
  }

  v64 = v89;
  v61 = v92;
  if (v90 > v94)
  {
    v65 = v90 - v94;
    if (__OFSUB__(v90, v94))
    {
      BUG();
    }

    if (v65 < 0)
    {
      BUG();
    }

    if (!v65)
    {
      BUG();
    }

    v66 = specialized RandomNumberGenerator.next<A>(upperBound:)(v65, v48, v49);
    v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v68 = swift_allocObject(v67, 56, 7);
    *(v68 + 16) = 3;
    *(v68 + 24) = 6;
    *(v68 + 32) = v66;
    *(v68 + 40) = 0;
    v69 = swift_allocObject(v67, 56, 7);
    LOBYTE(v66) = v69;
    v69[2] = 3;
    v69[3] = 6;
    v69[4] = v94;
    v69[5] = 3;
    v64 = v89;
    v69[6] = 21;
    Tensor.slice(lowerBounds:sizes:)(v68, v69);
    v68;
    v66;
    v61 = v92;
    v62 = *(v92 + 8);
    v60 = v93;
    goto LABEL_14;
  }

LABEL_15:
  v70 = *(v61 + 16);
  v71 = v93;
  v70(v93, v47, v64);
  v72 = v88;
  v73 = v85;
  v70(v88, v85, v64);
  DataSample.init(features:labels:)(v71, v72, v64, v64);

  v74 = *(v92 + 8);
  v74(v73, v64);
  return (v74)(v86, v64);
}

id static MLHandActionClassifier.dataAugmentation(_:options:)(id a1, uint64_t *a2)
{
  v6 = v2;
  v6 = *a2;
  switch(static MLHandActionClassifier.chooseAugmentationOption(_:)(&v6))
  {
    case 1:
      v4 = specialized RandomNumberGenerator.next<A>(upperBound:)(4uLL, a2, v3);
      result = static MLHandActionClassifier.horizontalFlip(_:caseSelected:)(a1, v4);
      break;
    case 2:
      result = static MLHandActionClassifier.randomMove(_:)(a1);
      break;
    case 3:
      result = static MLHandActionClassifier.randomShift(_:)(a1, a2, v3);
      break;
    case 4:
      result = static MLHandActionClassifier.randomScale(_:)(a1, a2, v3);
      break;
    case 5:
      result = static MLHandActionClassifier.timeInterpolate(_:)(a1, a2, v3);
      break;
    case 6:
      result = static MLHandActionClassifier.frameDrop(_:)(a1, a2, v3);
      break;
    default:
      result = a1;
      break;
  }

  return result;
}

uint64_t static MLHandActionClassifier.chooseAugmentationOption(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  inited = swift_initStackObject(v2, v15);
  v5 = inited;
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = 0;
  if (v1)
  {
    v6 = 2;
    v2 = 1;
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 2, 1, inited);
    v5[2] = 2;
    v5[5] = 1;
  }

  else
  {
    v6 = 1;
  }

  if ((v1 & 2) != 0)
  {
    if (v5[3] >> 1 <= v6)
    {
      v2 = v5[3] >= 2uLL;
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v2, v6 + 1, 1, v5);
    }

    v5[2] = v6 + 1;
    v5[v6 + 4] = 2;
  }

  if ((v1 & 4) != 0)
  {
    v7 = v5[2];
    if (v5[3] >> 1 <= v7)
    {
      v2 = v5[3] >= 2uLL;
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v2, v7 + 1, 1, v5);
    }

    v5[2] = v7 + 1;
    v5[v7 + 4] = 3;
  }

  if ((v1 & 8) != 0)
  {
    v8 = v5[2];
    if (v5[3] >> 1 <= v8)
    {
      v2 = v5[3] >= 2uLL;
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v2, v8 + 1, 1, v5);
    }

    v5[2] = v8 + 1;
    v5[v8 + 4] = 4;
  }

  if ((v1 & 0x10) != 0)
  {
    v9 = v5[2];
    if (v5[3] >> 1 <= v9)
    {
      v2 = v5[3] >= 2uLL;
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v2, v9 + 1, 1, v5);
    }

    v5[2] = v9 + 1;
    v5[v9 + 4] = 5;
  }

  if ((v1 & 0x20) != 0)
  {
    v10 = v5[2];
    if (v5[3] >> 1 <= v10)
    {
      v2 = v5[3] >= 2uLL;
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v2, v10 + 1, 1, v5);
    }

    v5[2] = v10 + 1;
    v5[v10 + 4] = 6;
  }

  v11 = specialized Collection.randomElement<A>(using:)(v2, v5, v4);
  v13 = v12;
  v5;
  result = 0;
  if ((v13 & 1) == 0)
  {
    return v11;
  }

  return result;
}

id static MLHandActionClassifier.horizontalFlip(_:caseSelected:)(id a1, uint64_t a2)
{
  v2 = [a1 shape];
  v3 = v2;
  v87 = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v3, v87);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v4 & 0xC000000000000003) == 0, v4);
  if ((v4 & 0xC000000000000003) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v6 = v5;
  v4;
  v83 = [v6 integerValue];

  v7 = [a1 shape];
  v8 = v7;
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v8, v87);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2uLL, (v9 & 0xC000000000000003) == 0, v9);
  if ((v9 & 0xC000000000000003) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
  }

  else
  {
    v10 = *(v9 + 48);
  }

  v11 = v10;
  v9;
  v82 = [v11 integerValue];

  v12 = [a1 shape];
  v13 = v12;
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v13, v87);

  objc_allocWithZone(MLMultiArray);
  v15 = @nonobjc MLMultiArray.init(shape:dataType:)(v14, 65600);
  v16 = v15;
  __dst = UnsafeMutableBufferPointer.init(_:)(v16, &type metadata for Double);
  v18 = v17;
  v86 = a1;
  v19 = UnsafeMutableBufferPointer.init(_:)(v86, &type metadata for Double);
  v81 = v16;
  if (v20 && v18)
  {
    if (v20 < v18)
    {
      v18 = v20;
    }

    memcpy(__dst, v19, 8 * v18);
  }

  if (a2 != 3)
  {
    if (v83 < 0)
    {
      BUG();
    }

    if (v83)
    {
      for (i = 0; i != v83; ++i)
      {
        if (a2 == 1)
        {
          goto LABEL_32;
        }

        if (v82 < 0)
        {
          BUG();
        }

        if (v82)
        {
          for (j = 0; j != v82; ++j)
          {
            v22 = [v86 strides];
            v23 = v22;
            v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v23, v87);

            if ((v24 & 0xC000000000000003) != 0)
            {
              v25 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
            }

            else
            {
              if (!*(&dword_10 + (v24 & 0xFFFFFFFFFFFFF8)))
              {
                BUG();
              }

              v25 = *(v24 + 32);
            }

            v26 = v25;
            v24;
            v27 = [v26 integerValue];

            v29 = v27;
            v28 = i * v27;
            if (!is_mul_ok(i, v29))
            {
              BUG();
            }

            v30 = [v86 strides];
            v31 = v30;
            v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v31, v87);

            if ((v32 & 0xC000000000000003) != 0)
            {
              v33 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
            }

            else
            {
              if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFF8)) < 3uLL)
              {
                BUG();
              }

              v33 = *(v32 + 48);
            }

            v34 = v33;
            v32;
            v35 = [v34 integerValue];

            v37 = v35;
            v36 = j * v35;
            if (!is_mul_ok(j, v37))
            {
              BUG();
            }

            v38 = __OFADD__(v36, v28);
            v39 = v36 + v28;
            if (v38)
            {
              BUG();
            }

            *(__dst + v39) = 1.0 - *(__dst + v39);
          }
        }

        if (a2)
        {
LABEL_32:
          v40 = 0;
          do
          {
            v41 = *(&outlined read-only object #8 of static MLHandActionClassifier.horizontalFlip(_:caseSelected:) + v40 + 4);

            v42 = [v86 strides];
            v43 = v42;
            v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v43, v87);

            if ((v44 & 0xC000000000000003) != 0)
            {
              v45 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
            }

            else
            {
              if (!*(&dword_10 + (v44 & 0xFFFFFFFFFFFFF8)))
              {
                BUG();
              }

              v45 = *(v44 + 32);
            }

            v46 = v45;
            v44;
            v47 = [v46 integerValue];

            v49 = v47;
            v48 = i * v47;
            if (!is_mul_ok(i, v49))
            {
              BUG();
            }

            if (!v41[2])
            {
              BUG();
            }

            v80 = v40;
            v50 = v41[4];
            v51 = [v86 strides];
            v52 = v51;
            v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v52, v87);

            if ((v53 & 0xC000000000000003) != 0)
            {
              v54 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
            }

            else
            {
              if (*(&dword_10 + (v53 & 0xFFFFFFFFFFFFF8)) < 3uLL)
              {
                BUG();
              }

              v54 = *(v53 + 48);
            }

            v55 = v54;
            v53;
            v56 = [v55 integerValue];

            v58 = v50;
            v57 = v56 * v50;
            if (!is_mul_ok(v56, v58))
            {
              BUG();
            }

            v38 = __OFADD__(v57, v48);
            v59 = v57 + v48;
            if (v38)
            {
              BUG();
            }

            v60 = [v86 strides];
            v61 = v60;
            v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v61, v87);

            if ((v62 & 0xC000000000000003) != 0)
            {
              v63 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
            }

            else
            {
              if (!*(&dword_10 + (v62 & 0xFFFFFFFFFFFFF8)))
              {
                BUG();
              }

              v63 = *(v62 + 32);
            }

            v64 = v63;
            v62;
            v65 = [v64 integerValue];

            v67 = v65;
            v66 = i * v65;
            if (!is_mul_ok(i, v67))
            {
              BUG();
            }

            if (v41[2] < 2uLL)
            {
              BUG();
            }

            v68 = v41[5];
            v41;
            v69 = [v86 strides];
            v70 = v69;
            v71 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v70, v87);

            if ((v71 & 0xC000000000000003) != 0)
            {
              v72 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
            }

            else
            {
              if (*(&dword_10 + (v71 & 0xFFFFFFFFFFFFF8)) < 3uLL)
              {
                BUG();
              }

              v72 = *(v71 + 48);
            }

            v73 = v72;
            v71;
            v74 = [v73 integerValue];

            v76 = v68;
            v75 = v74 * v68;
            if (!is_mul_ok(v74, v76))
            {
              BUG();
            }

            v38 = __OFADD__(v75, v66);
            v77 = v75 + v66;
            if (v38)
            {
              BUG();
            }

            v40 = v80 + 1;
            v78 = *(__dst + v59);
            *(__dst + v59) = *(__dst + v77);
            *(__dst + v77) = v78;
          }

          while (v80 != 7);
        }
      }
    }
  }

  return v81;
}

id static MLHandActionClassifier.randomMove(_:)(id a1)
{
  v1 = [a1 shape];
  v2 = v1;
  v99 = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v2, v99);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v3 & 0xC000000000000003) == 0, v3);
  if ((v3 & 0xC000000000000003) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;
  v3;
  v102 = [v5 integerValue];

  v6 = [a1 shape];
  v7 = v6;
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v7, v99);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2uLL, (v8 & 0xC000000000000003) == 0, v8);
  v92 = a1;
  if ((v8 & 0xC000000000000003) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
  }

  else
  {
    v9 = *(v8 + 48);
  }

  v10 = v9;
  v8;
  v93 = [v10 integerValue];

  specialized MutableCollection<>.shuffle<A>(using:)(v10, "integerValue", v11);
  v94 = specialized MutableCollection.subscript.getter(0, 1, &outlined read-only object #0 of static MLHandActionClassifier.randomMove(_:));
  v111 = v12;
  v112 = v13;
  v15 = v14;

  specialized MutableCollection<>.shuffle<A>(using:)(&outlined read-only object #0 of static MLHandActionClassifier.randomMove(_:), 1, v16);
  v95 = specialized MutableCollection.subscript.getter(0, 1, &outlined read-only object #1 of static MLHandActionClassifier.randomMove(_:));
  v103 = v17;
  v108 = v18;
  v109 = v19;

  specialized MutableCollection<>.shuffle<A>(using:)(&outlined read-only object #1 of static MLHandActionClassifier.randomMove(_:), 1, v20);
  v96 = specialized MutableCollection.subscript.getter(0, 1, &outlined read-only object #2 of static MLHandActionClassifier.randomMove(_:));
  v107 = v21;
  v106 = v22;
  v104 = v23;

  v110 = &outlined read-only object #2 of static MLHandActionClassifier.randomMove(_:);
  specialized MutableCollection<>.shuffle<A>(using:)(&outlined read-only object #2 of static MLHandActionClassifier.randomMove(_:), 1, v24);
  v97 = specialized MutableCollection.subscript.getter(0, 1, &outlined read-only object #2 of static MLHandActionClassifier.randomMove(_:));
  v26 = v25;
  v105 = v27;
  v29 = v28;

  v30 = v102;
  if (v102 == &dword_0 + 1)
  {
    v31 = v29;
    v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Float>);
    v33 = swift_allocObject(v32, 36, 7);
    *(v33 + 16) = 1;
    *(v33 + 24) = 2;
    if (v112 > 0 || v15 < 2)
    {
      BUG();
    }

    v34 = (*v111 * 3.1415925) / 180.0;
    v112 = v33;
    *(v33 + 32) = v34;
    v35 = swift_allocObject(v32, 36, 7);
    *(v35 + 16) = 1;
    v111 = v35;
    *(v35 + 24) = 2;
    if (v108 > 0 || v109 < 2)
    {
      BUG();
    }

    v111[8] = *v103;
    v36 = swift_allocObject(v32, 36, 7);
    *(v36 + 16) = 1;
    *(v36 + 24) = 2;
    if (v106 > 0 || v104 < 2)
    {
      BUG();
    }

    v37 = v36;
    *(v36 + 32) = *v107;
    v110 = v36;
    v38 = swift_allocObject(v32, 36, 7);
    *(v38 + 16) = 1;
    *(v38 + 24) = 2;
    if (v105 > 0 || v31 < 2)
    {
      BUG();
    }

    v106 = v37;
    *(v38 + 32) = *v26;
  }

  else
  {
    if (v112 > 0 || v15 < 2)
    {
      BUG();
    }

    if (v15 < 4)
    {
      BUG();
    }

    v39 = specialized linearSpace #1 <A>(from:through:count:) in static MLHandActionClassifier.randomMove(_:)(v102, *v111, v111[1]);
    v40 = *(v39 + 2);
    if (v40)
    {
      *&v98 = v29;
      v111 = v26;
      v110 = _swiftEmptyArrayStorage;
      v41 = 0;
      v112 = v39;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40, 0);
      v42 = _swiftEmptyArrayStorage;
      v43 = _swiftEmptyArrayStorage[2];
      do
      {
        v44 = v39[v41 + 8];
        v110 = v42;
        v45 = v42[3];
        if (v45 >> 1 <= v43)
        {
          v100 = v44;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v45 >= 2, v43 + 1, 1);
          v39 = v112;
          v42 = v110;
        }

        ++v41;
        v42[2] = v43 + 1;
        *(v42 + v43++ + 8) = (v44 * 3.1415925) / 180.0;
      }

      while (v40 != v41);
      v39;
      v46 = v42;
      v30 = v102;
      v26 = v111;
      v29 = v98;
    }

    else
    {
      v39;
      v46 = _swiftEmptyArrayStorage;
    }

    if (v108 > 0 || v109 < 2)
    {
      BUG();
    }

    if (v109 < 4)
    {
      BUG();
    }

    v112 = v46;
    v111 = specialized linearSpace #1 <A>(from:through:count:) in static MLHandActionClassifier.randomMove(_:)(v30, *v103, v103[1]);
    if (v106 > 0 || v104 < 2)
    {
      BUG();
    }

    if (v104 < 4)
    {
      BUG();
    }

    v47 = specialized linearSpace #1 <A>(from:through:count:) in static MLHandActionClassifier.randomMove(_:)(v30, *v107, v107[1]);
    v110 = v47;
    if (v105 > 0 || v29 < 2)
    {
      BUG();
    }

    if (v29 < 4)
    {
      BUG();
    }

    v106 = v47;
    v38 = specialized linearSpace #1 <A>(from:through:count:) in static MLHandActionClassifier.randomMove(_:)(v30, *v26, v26[1]);
  }

  v104 = v38;
  v91 = v38;
  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<[[Float]]>);
  inited = swift_initStackObject(v48, v90);
  inited[2] = 2;
  v108 = inited;
  inited[3] = 4;
  v109 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<[Float]>);
  v50 = swift_allocObject(v109, 48, 7);
  *(v50 + 2) = 2;
  *(v50 + 3) = 4;
  v51 = cos #1 (_:) in static MLHandActionClassifier.randomMove(_:)(v112, &cosf);
  v52 = v111;

  v53 = 0;
  MLSFRzlE1moi33_5442BF52D76DA1BBD780DB5A1A47CDFALLySayxGAD_ADtFZxx_xt_tXEfU_Sf_TG5Tf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySfGAHG_Sfs5NeverOTg592_sSa8CreateMLSFRzlE1moi33_5442BF52D76DA1BBD780DB5A1A47CDFALLySayxGAD_ADtFZxx_xt_tXEfU_Sf_TG5Tf1cn_n(v51, v52);
  v51;
  v52;
  v103 = v50;
  *(v50 + 4) = MLSFRzlE1moi33_5442BF52D76DA1BBD780DB5A1A47CDFALLySayxGAD_ADtFZxx_xt_tXEfU_Sf_TG5Tf1cn_n;
  v55 = cos #1 (_:) in static MLHandActionClassifier.randomMove(_:)(v112, &sinf);
  v56 = *(v55 + 2);
  if (v56)
  {
    v105 = 0;
    v101 = _swiftEmptyArrayStorage;
    v57 = 0;
    v107 = v55;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56, 0);
    v58 = v107;
    v59 = v101;
    v60 = v101[2];
    do
    {
      v61 = LODWORD(v58[v57 + 8]);
      v101 = v59;
      v62 = v59[3];
      if (v62 >> 1 <= v60)
      {
        v98 = v61;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v62 >= 2, v60 + 1, 1);
        LODWORD(v61) = v98;
        v58 = v107;
        v59 = v101;
      }

      ++v57;
      v59[2] = v60 + 1;
      *(v59 + v60++ + 8) = -*&v61;
    }

    while (v56 != v57);
    v58;
    v53 = v105;
  }

  else
  {
    v55;
    v59 = _swiftEmptyArrayStorage;
  }

  v63 = v111;

  v64 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySfGAHG_Sfs5NeverOTg592_sSa8CreateMLSFRzlE1moi33_5442BF52D76DA1BBD780DB5A1A47CDFALLySayxGAD_ADtFZxx_xt_tXEfU_Sf_TG5Tf1cn_n(v59, v63);
  v63;
  swift_bridgeObjectRelease_n(v59, 2);
  v65 = v103;
  *(v103 + 5) = v64;
  v108[4] = v65;
  v66 = swift_allocObject(v109, 48, 7);
  v66[2] = 2;
  v66[3] = 4;
  v67 = v112;
  v68 = cos #1 (_:) in static MLHandActionClassifier.randomMove(_:)(v112, &sinf);

  v109 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySfGAHG_Sfs5NeverOTg592_sSa8CreateMLSFRzlE1moi33_5442BF52D76DA1BBD780DB5A1A47CDFALLySayxGAD_ADtFZxx_xt_tXEfU_Sf_TG5Tf1cn_n(v68, v63);
  v68;
  v63;
  v66[4] = v109;
  v69 = cos #1 (_:) in static MLHandActionClassifier.randomMove(_:)(v67, &cosf);
  v67;

  v70 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySfGAHG_Sfs5NeverOTg592_sSa8CreateMLSFRzlE1moi33_5442BF52D76DA1BBD780DB5A1A47CDFALLySayxGAD_ADtFZxx_xt_tXEfU_Sf_TG5Tf1cn_n(v69, v63);
  swift_bridgeObjectRelease_n(v63, 2);
  swift_bridgeObjectRelease_n(v69, 2);
  v66[5] = v70;
  v108[5] = v66;
  v71 = v92;
  v72 = [v92 shape];
  v73 = v72;
  v74 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v73, v99);

  objc_allocWithZone(MLMultiArray);
  v75 = @nonobjc MLMultiArray.init(shape:dataType:)(v74, 65600);
  v112 = v53;
  if (v53)
  {
    v88 = 260;
    v89 = v112;
    goto LABEL_63;
  }

  v76 = v75;
  v77 = [v76 dataPointer];
  v78 = v71;
  v79 = [v78 dataPointer];
  v80 = [v78 count];
  if (((v80 - 0x1000000000000000) >> 61) < 7)
  {
    BUG();
  }

  memcpy(v77, v79, 8 * v80);
  v81 = v76;
  v82 = v112;
  v83 = UnsafeMutableBufferPointer.init(_:)(v81, &type metadata for Double);
  if (v82)
  {
    v88 = 221;
    v89 = v82;
LABEL_63:
    swift_unexpectedError(v89, "CreateML/_MLHandActionClassifier+DataHandling.swift", 51, 1, v88);
    BUG();
  }

  v85 = v78;
  v86 = v108;
  closure #3 in static MLHandActionClassifier.randomMove(_:)(v83, v84, v102, v93, v85, v108, &v110, &v91);
  v106;
  v104;
  v86;
  swift_unknownObjectRelease(v94);
  swift_unknownObjectRelease(v95);
  swift_unknownObjectRelease(v96);
  swift_unknownObjectRelease(v97);
  return v81;
}

id static MLHandActionClassifier.randomShift(_:)(id a1, uint64_t a2, uint64_t a3)
{
  *&v67 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(-0.1, 0.1, a1, a2, a3);
  *&v68 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(-0.1, 0.1, a1, a2, v3);
  v4 = [a1 shape];
  v5 = v4;
  v75 = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v5, v75);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v6 & 0xC000000000000003) == 0, v6);
  if ((v6 & 0xC000000000000003) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v8 = v7;
  v6;
  v71 = [v8 integerValue];

  v9 = [a1 shape];
  v10 = v9;
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v10, v75);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2uLL, (v11 & 0xC000000000000003) == 0, v11);
  if ((v11 & 0xC000000000000003) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
  }

  else
  {
    v12 = *(v11 + 48);
  }

  v13 = v12;
  v11;
  v72 = [v13 integerValue];

  v14 = [a1 shape];
  v15 = v14;
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v15, v75);

  objc_allocWithZone(MLMultiArray);
  v17 = @nonobjc MLMultiArray.init(shape:dataType:)(v16, 65600);
  v18 = v17;
  __dst = UnsafeMutableBufferPointer.init(_:)(v18, &type metadata for Double);
  v20 = v19;
  v74 = a1;
  v21 = UnsafeMutableBufferPointer.init(_:)(v74, &type metadata for Double);
  if (v22 && v20)
  {
    if (v22 < v20)
    {
      v20 = v22;
    }

    memcpy(__dst, v21, 8 * v20);
  }

  if (v71 < 0)
  {
    BUG();
  }

  v69 = v18;
  if (v71)
  {
    if (v72 < 0)
    {
      BUG();
    }

    for (i = 0; i != v71; ++i)
    {
      if (v72)
      {
        for (j = 0; j != v72; ++j)
        {
          v24 = [v74 strides];
          v25 = v24;
          v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v25, v75);

          if ((v26 & 0xC000000000000003) != 0)
          {
            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
          }

          else
          {
            if (!*(&dword_10 + (v26 & 0xFFFFFFFFFFFFF8)))
            {
              BUG();
            }

            v27 = *(v26 + 32);
          }

          v28 = v27;
          v26;
          v29 = [v28 integerValue];

          v31 = v29;
          v30 = i * v29;
          if (!is_mul_ok(i, v31))
          {
            BUG();
          }

          v32 = [v74 strides];
          v33 = v32;
          v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v33, v75);

          if ((v34 & 0xC000000000000003) != 0)
          {
            v35 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
          }

          else
          {
            if (*(&dword_10 + (v34 & 0xFFFFFFFFFFFFF8)) < 3uLL)
            {
              BUG();
            }

            v35 = *(v34 + 48);
          }

          v36 = v35;
          v34;
          v37 = [v36 integerValue];

          v39 = v37;
          v38 = j * v37;
          if (!is_mul_ok(j, v39))
          {
            BUG();
          }

          v40 = __OFADD__(v38, v30);
          v41 = v38 + v30;
          if (v40)
          {
            BUG();
          }

          v42 = [v74 strides];
          v43 = v42;
          v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v43, v75);

          if ((v44 & 0xC000000000000003) != 0)
          {
            v45 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
          }

          else
          {
            if (!*(&dword_10 + (v44 & 0xFFFFFFFFFFFFF8)))
            {
              BUG();
            }

            v45 = *(v44 + 32);
          }

          v46 = v45;
          v44;
          v47 = [v46 integerValue];

          v49 = v47;
          v48 = i * v47;
          if (!is_mul_ok(i, v49))
          {
            BUG();
          }

          v50 = [v74 strides];
          v51 = v50;
          v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v51, v75);

          if ((v52 & 0xC000000000000003) != 0)
          {
            v53 = specialized _ArrayBuffer._getElementSlowPath(_:)(1);
          }

          else
          {
            if (*(&dword_10 + (v52 & 0xFFFFFFFFFFFFF8)) < 2uLL)
            {
              BUG();
            }

            v53 = *(v52 + 40);
          }

          v54 = v53;
          v52;
          v55 = [v54 integerValue];

          v40 = __OFADD__(v55, v48);
          v56 = &v55[v48];
          if (v40)
          {
            BUG();
          }

          v57 = [v74 strides];
          v58 = v57;
          v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v58, v75);

          if ((v59 & 0xC000000000000003) != 0)
          {
            v60 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
          }

          else
          {
            if (*(&dword_10 + (v59 & 0xFFFFFFFFFFFFF8)) < 3uLL)
            {
              BUG();
            }

            v60 = *(v59 + 48);
          }

          v61 = v60;
          v59;
          v62 = [v61 integerValue];

          v64 = v62;
          v63 = j * v62;
          if (!is_mul_ok(j, v64))
          {
            BUG();
          }

          v40 = __OFADD__(v63, v56);
          v65 = &v56[v63];
          if (v40)
          {
            BUG();
          }

          *(__dst + v41) = *(__dst + v41) + v67;
          *(__dst + v65) = *(__dst + v65) + v68;
        }
      }
    }
  }

  return v69;
}

id static MLHandActionClassifier.randomScale(_:)(id a1, uint64_t a2, uint64_t a3)
{
  *&v66 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.8, 1.2, a1, a2, a3);
  v3 = [a1 shape];
  v4 = v3;
  v73 = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v4, v73);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v5 & 0xC000000000000003) == 0, v5);
  if ((v5 & 0xC000000000000003) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
  }

  else
  {
    v6 = *(v5 + 32);
  }

  v7 = v6;
  v5;
  v69 = [v7 integerValue];

  v8 = [a1 shape];
  v9 = v8;
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v9, v73);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2uLL, (v10 & 0xC000000000000003) == 0, v10);
  if ((v10 & 0xC000000000000003) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
  }

  else
  {
    v11 = *(v10 + 48);
  }

  v12 = v11;
  v10;
  v70 = [v12 integerValue];

  v13 = [a1 shape];
  v14 = v13;
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v14, v73);

  objc_allocWithZone(MLMultiArray);
  v16 = @nonobjc MLMultiArray.init(shape:dataType:)(v15, 65600);
  v17 = v16;
  __dst = UnsafeMutableBufferPointer.init(_:)(v17, &type metadata for Double);
  v19 = v18;
  v72 = a1;
  v20 = UnsafeMutableBufferPointer.init(_:)(v72, &type metadata for Double);
  if (v21 && v19)
  {
    if (v21 < v19)
    {
      v19 = v21;
    }

    memcpy(__dst, v20, 8 * v19);
  }

  if (v69 < 0)
  {
    BUG();
  }

  v67 = v17;
  if (v69)
  {
    if (v70 < 0)
    {
      BUG();
    }

    for (i = 0; i != v69; ++i)
    {
      if (v70)
      {
        for (j = 0; j != v70; ++j)
        {
          v23 = [v72 strides];
          v24 = v23;
          v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v24, v73);

          if ((v25 & 0xC000000000000003) != 0)
          {
            v26 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
          }

          else
          {
            if (!*(&dword_10 + (v25 & 0xFFFFFFFFFFFFF8)))
            {
              BUG();
            }

            v26 = *(v25 + 32);
          }

          v27 = v26;
          v25;
          v28 = [v27 integerValue];

          v30 = v28;
          v29 = i * v28;
          if (!is_mul_ok(i, v30))
          {
            BUG();
          }

          v31 = [v72 strides];
          v32 = v31;
          v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v32, v73);

          if ((v33 & 0xC000000000000003) != 0)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
          }

          else
          {
            if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFF8)) < 3uLL)
            {
              BUG();
            }

            v34 = *(v33 + 48);
          }

          v35 = v34;
          v33;
          v36 = [v35 integerValue];

          v38 = v36;
          v37 = j * v36;
          if (!is_mul_ok(j, v38))
          {
            BUG();
          }

          v39 = __OFADD__(v37, v29);
          v40 = v37 + v29;
          if (v39)
          {
            BUG();
          }

          v41 = [v72 strides];
          v42 = v41;
          v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v42, v73);

          if ((v43 & 0xC000000000000003) != 0)
          {
            v44 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
          }

          else
          {
            if (!*(&dword_10 + (v43 & 0xFFFFFFFFFFFFF8)))
            {
              BUG();
            }

            v44 = *(v43 + 32);
          }

          v45 = v44;
          v43;
          v46 = [v45 integerValue];

          v48 = v46;
          v47 = i * v46;
          if (!is_mul_ok(i, v48))
          {
            BUG();
          }

          v49 = [v72 strides];
          v50 = v49;
          v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v50, v73);

          if ((v51 & 0xC000000000000003) != 0)
          {
            v52 = specialized _ArrayBuffer._getElementSlowPath(_:)(1);
          }

          else
          {
            if (*(&dword_10 + (v51 & 0xFFFFFFFFFFFFF8)) < 2uLL)
            {
              BUG();
            }

            v52 = *(v51 + 40);
          }

          v53 = v52;
          v51;
          v54 = [v53 integerValue];

          v39 = __OFADD__(v54, v47);
          v55 = &v54[v47];
          if (v39)
          {
            BUG();
          }

          v56 = [v72 strides];
          v57 = v56;
          v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v57, v73);

          if ((v58 & 0xC000000000000003) != 0)
          {
            v59 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
          }

          else
          {
            if (*(&dword_10 + (v58 & 0xFFFFFFFFFFFFF8)) < 3uLL)
            {
              BUG();
            }

            v59 = *(v58 + 48);
          }

          v60 = v59;
          v58;
          v61 = [v60 integerValue];

          v63 = v61;
          v62 = j * v61;
          if (!is_mul_ok(j, v63))
          {
            BUG();
          }

          v39 = __OFADD__(v62, v55);
          v64 = &v55[v62];
          if (v39)
          {
            BUG();
          }

          *(__dst + v40) = *(__dst + v40) * v66;
          *(__dst + v64) = *(__dst + v64) * v66;
        }
      }
    }
  }

  return v67;
}

id static MLHandActionClassifier.timeInterpolate(_:)(id a1, uint64_t a2, uint64_t a3)
{
  *&v75 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.0, 0.2, a1, a2, a3);
  *&v68 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.0, 1.0, a1, a2, v3);
  v4 = [a1 shape];
  v5 = v4;
  v71 = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v5, v71);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v6 & 0xC000000000000003) == 0, v6);
  if ((v6 & 0xC000000000000003) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v8 = v7;
  v6;
  v74 = [v8 integerValue];

  v9 = [a1 shape];
  v10 = v9;
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v10, v71);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1uLL, (v11 & 0xC000000000000003) == 0, v11);
  if ((v11 & 0xC000000000000003) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)(1);
  }

  else
  {
    v12 = *(v11 + 40);
  }

  v13 = v12;
  v11;
  v14 = [v13 integerValue];

  v15 = [a1 shape];
  v16 = v15;
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v16, v71);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2uLL, (v17 & 0xC000000000000003) == 0, v17);
  if ((v17 & 0xC000000000000003) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
  }

  else
  {
    v18 = *(v17 + 48);
  }

  v19 = v18;
  v17;
  v20 = [v19 integerValue];

  v21 = v20 * v14;
  if (!is_mul_ok(v20, v14))
  {
    BUG();
  }

  v22 = v75 * v74;
  if (COERCE__INT64(fabs(v22)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v22 <= -9.223372036854778e18)
  {
    BUG();
  }

  v23 = 9.223372036854776e18;
  if (v22 >= 9.223372036854776e18)
  {
    BUG();
  }

  v24 = v22;
  v25 = MLMultiArray.doubleArray()();
  v70 = v25;
  if (v22)
  {
    if (!v21)
    {
      BUG();
    }

    v73 = v21;
    do
    {
      v26 = v70;
      v27 = v70[2] / v21;
      v28 = v70[2] % v21;
      if (v27 <= 0)
      {
        BUG();
      }

      v29 = v70[2] / v21;
      if (v27 == 1)
      {
        BUG();
      }

      v65 = v24;
      v30 = v27 - 1;
      v72 = 0;
      swift_stdlib_random(&v72, 8, v28);
      v31 = (v72 * v30) >> 64;
      v74 = v70;
      if (v30 > v72 * v30)
      {
        *(&v32 + 1) = (1 - v29) % v30;
        if (*(&v32 + 1) > v72 * v30)
        {
          v33 = (1 - v29) % v30;
          do
          {
            v72 = 0;
            swift_stdlib_random(&v72, 8, *(&v32 + 1));
            v32 = v72 * v30;
          }

          while (v33 > v32);
          v31 = (v72 * v30) >> 64;
          v26 = v74;
        }
      }

      v34 = v31 + 1;
      v35 = v73 * (v31 + 1);
      if (!is_mul_ok(v73, v31 + 1))
      {
        BUG();
      }

      v37 = v31;
      v36 = v73 * v31;
      if (!is_mul_ok(v73, v37))
      {
        BUG();
      }

      v38 = v73 + v35;
      if (__OFADD__(v73, v35))
      {
        BUG();
      }

      v39 = v73;
      if (v38 < v35)
      {
        BUG();
      }

      if (v35 < 0)
      {
        BUG();
      }

      v40 = v26[2];
      if (v40 < v35 || v40 < v38)
      {
        BUG();
      }

      v66 = v34;
      v75 = COERCE_DOUBLE(type metadata accessor for __ContiguousArrayStorageBase(0));

      swift_unknownObjectRetain_n(v26, 2);
      v41 = swift_dynamicCastClass(v26, *&v75);
      if (!v41)
      {
        v26;
        v41 = _swiftEmptyArrayStorage;
      }

      v69 = (v26 + 4);
      v42 = v41[2];

      if (v42 == v39)
      {
        v43 = v74;
        v44 = swift_dynamicCastClass(v74, *&v75);
        v45 = v73;
        if (!v44)
        {
          v43;
          v44 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v43 = v74;
        v74;
        v44 = specialized _copyCollectionToContiguousArray<A>(_:)(v43, v69, v35, 2 * v38 + 1);
        v45 = v73;
      }

      v43;
      v46 = v45 + v36;
      if (__OFADD__(v45, v36))
      {
        BUG();
      }

      if (v46 < v36)
      {
        BUG();
      }

      if (v36 < 0)
      {
        BUG();
      }

      v47 = v43[2];
      if (v47 < v36 || v47 < v46)
      {
        BUG();
      }

      v67 = v44;

      swift_unknownObjectRetain_n(v43, 2);
      v48 = swift_dynamicCastClass(v43, *&v75);
      if (!v48)
      {
        v43;
        v48 = _swiftEmptyArrayStorage;
      }

      v49 = v43;
      v50 = v48[2];

      if (v50 == v45)
      {
        v51 = v49;
        v52 = swift_dynamicCastClass(v49, *&v75);
        v21 = v73;
        if (!v52)
        {
          v51;
          v52 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v51 = v49;
        v49;
        v52 = specialized _copyCollectionToContiguousArray<A>(_:)(v49, v69, v36, 2 * v46 + 1);
        v21 = v73;
      }

      v51;
      v23 = v68;
      v53 = static MLHandActionClassifier.generatePaddedFrame(lastFrame:currentFrame:frameLen:displaceScaleFactor:)(v52, v67, v21, v68);

      specialized Array.replaceSubrange<A>(_:with:)(v66, v66, v53);
      v24 = v65 - 1;
    }

    while (v65 > 1);
    v54 = v70;
  }

  else
  {
    v54 = v25;
  }

  v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
  v56 = swift_allocObject(v55, 56, 7);
  *(v56 + 16) = 3;
  *(v56 + 24) = 7;
  if (!v21)
  {
    BUG();
  }

  v57 = v56;
  v58 = v54[2] / v21;
  v59 = objc_allocWithZone(NSNumber);
  v57[4].super.super.isa = [v59 initWithInteger:v58];
  v57[5].super.super.isa = NSNumber.init(integerLiteral:)(3).super.super.isa;
  v57[6].super.super.isa = NSNumber.init(integerLiteral:)(21).super.super.isa;
  v60 = [a1 strides];
  v61 = v60;
  v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v61, v71);

  if (!swift_isUniquelyReferenced_nonNull_native(v54))
  {
    v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54[2], 0, v54);
  }

  objc_allocWithZone(MLMultiArray);
  v63 = @nonobjc MLMultiArray.init(dataPointer:shape:dataType:strides:deallocator:)((v54 + 4), v57, 65600, v62, 0, 0, v23);
  v54;
  return v63;
}

id static MLHandActionClassifier.frameDrop(_:)(id a1, uint64_t a2, uint64_t a3)
{
  v57 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.0, 0.2, a1, a2, a3);
  v3 = [a1 shape];
  v4 = v3;
  v54 = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v4, v54);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v5 & 0xC000000000000003) == 0, v5);
  if ((v5 & 0xC000000000000003) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
  }

  else
  {
    v6 = *(v5 + 32);
  }

  v7 = v6;
  v5;
  v8 = [v7 integerValue];

  v9 = [a1 shape];
  v10 = v9;
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v10, v54);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1uLL, (v11 & 0xC000000000000003) == 0, v11);
  v51 = v8;
  if ((v11 & 0xC000000000000003) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)(1);
  }

  else
  {
    v12 = *(v11 + 40);
  }

  v13 = v12;
  v11;
  v14 = [v13 integerValue];

  v15 = [a1 shape];
  v16 = v15;
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v16, v54);

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2uLL, (v17 & 0xC000000000000003) == 0, v17);
  if ((v17 & 0xC000000000000003) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
  }

  else
  {
    v18 = *(v17 + 48);
  }

  v19 = v18;
  v17;
  v20 = [v19 integerValue];

  v21 = v20 * v14;
  if (!is_mul_ok(v20, v14))
  {
    BUG();
  }

  v22 = *&v57 * v51;
  if (COERCE__INT64(fabs(v22)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v22 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v22 >= 9.223372036854776e18)
  {
    BUG();
  }

  v23 = v22;
  v24 = MLMultiArray.doubleArray()();
  if (v22)
  {
    if (!v21)
    {
      BUG();
    }

    v53 = v21;
    do
    {
      v25 = v24[2] / v21;
      if (v25 < 0)
      {
        BUG();
      }

      if (!v25)
      {
        BUG();
      }

      v26 = v24[2] % v21;
      v27 = v24[2] / v21;
      v52 = v23;
      v57 = v24;
      v56 = 0;
      swift_stdlib_random(&v56, 8, v26);
      v28 = (v56 * v27) >> 64;
      if (v27 <= v56 * v27)
      {
        v30 = v57;
      }

      else
      {
        *(&v29 + 1) = -v27 % v27;
        v30 = v57;
        if (*(&v29 + 1) > v56 * v27)
        {
          do
          {
            v56 = 0;
            swift_stdlib_random(&v56, 8, *(&v29 + 1));
            v29 = v56 * v27;
          }

          while (-v27 % v27 > v29);
          v28 = (v56 * v27) >> 64;
          v30 = v57;
          v21 = v53;
        }
      }

      v31 = v21 + v28;
      if (__OFADD__(v21, v28))
      {
        BUG();
      }

      v32 = -v21;
      if (v28 > v31)
      {
        BUG();
      }

      v33 = v30[2];
      if (v33 < v31)
      {
        BUG();
      }

      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        BUG();
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v30);
      v24 = v57;
      if (!isUniquelyReferenced_nonNull_native || v57[3] >> 1 < v34)
      {
        if (v33 > v34)
        {
          v34 = v33;
        }

        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v34, 1, v57);
      }

      v21 = v53;
      if (v28 != v31)
      {
        v36 = &v24[v28 + 4];
        v37 = v24;
        memmove(v36, &v24[v31 + 4], 8 * (v24[2] - v31));
        v38 = __OFADD__(v37[2], v32);
        v39 = v37[2] + v32;
        if (v38)
        {
          BUG();
        }

        v24 = v37;
        v37[2] = v39;
      }

      v23 = v52 - 1;
    }

    while (v52 > 1);
  }

  v40 = v24;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
  v42 = swift_allocObject(v41, 56, 7);
  *(v42 + 16) = 3;
  *(v42 + 24) = 7;
  if (!v21)
  {
    BUG();
  }

  v43 = v42;
  v44 = v40[2] / v21;
  v45 = objc_allocWithZone(NSNumber);
  v43[4].super.super.isa = [v45 initWithInteger:v44];
  v43[5].super.super.isa = NSNumber.init(integerLiteral:)(3).super.super.isa;
  v43[6].super.super.isa = NSNumber.init(integerLiteral:)(21).super.super.isa;
  v46 = [a1 strides];
  v47 = v46;
  v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v47, v54);

  if (!swift_isUniquelyReferenced_nonNull_native(v40))
  {
    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40[2], 0, v40);
  }

  objc_allocWithZone(MLMultiArray);
  v49 = @nonobjc MLMultiArray.init(dataPointer:shape:dataType:strides:deallocator:)((v40 + 4), v43, 65600, v48, 0, 0, 9.223372036854776e18);
  v40;
  return v49;
}

void *specialized linearSpace #1 <A>(from:through:count:) in static MLHandActionClassifier.randomMove(_:)(uint64_t a1, float a2, float a3)
{
  v7 = a2;
  if (__OFSUB__(a1, 1))
  {
    BUG();
  }

  v8 = (a3 - a2) / (a1 - 1);
  if (a1 < 0)
  {
    BUG();
  }

  v3 = alloca(32);
  v4 = alloca(32);
  v9 = &v7;
  v10 = &v8;
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sfs5NeverOTg5(partial apply for specialized closure #1 in linearSpace #1 <A>(from:through:count:) in static MLHandActionClassifier.randomMove(_:), &v6, 0, a1);
}

void *cos #1 (_:) in static MLHandActionClassifier.randomMove(_:)(uint64_t a1, float (*a2)(double))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = _swiftEmptyArrayStorage[2];
    do
    {
      *&v5 = *(a1 + 4 * v3 + 32);
      if (_swiftEmptyArrayStorage[3] >> 1 <= v4)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v4 + 1, 1);
        *&v5 = LODWORD(v5);
      }

      ++v3;
      v6 = a2(v5);
      _swiftEmptyArrayStorage[2] = v4 + 1;
      *(&_swiftEmptyArrayStorage[4] + v4++) = v6;
    }

    while (v2 != v3);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t specialized MutableCollection.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __OFADD__(1, a2);
  v4 = a2 + 1;
  if (v3)
  {
    BUG();
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    BUG();
  }

  v6 = *(a3 + 16);
  if (v6 < a1 || v6 < v4)
  {
    BUG();
  }

  if (v4 < 0)
  {
    BUG();
  }

  return a3;
}

uint64_t specialized MutableCollection.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) < a1)
  {
    BUG();
  }

  if (a1 < 0)
  {
    BUG();
  }

  return a2;
}

void closure #3 in static MLHandActionClassifier.randomMove(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 0)
  {
    BUG();
  }

  if (a3)
  {
    if (a4 < 0)
    {
      BUG();
    }

    v8 = a5;
    for (i = 0; i != a3; ++i)
    {
      if (a4)
      {
        if (a6[2] < 2uLL)
        {
          BUG();
        }

        v10 = 0;
        v69 = i;
        v62 = a6[4];
        v63 = a6[5];
        do
        {
          v70 = v10;
          v11 = [v8 strides];
          v12 = v11;
          v72 = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
          v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v12, v72);

          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v13 & 0xC000000000000003) == 0, v13);
          if ((v13 & 0xC000000000000003) != 0)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
          }

          else
          {
            v14 = *(v13 + 32);
          }

          v15 = v14;
          v13;
          v16 = [v15 integerValue];

          v18 = v16;
          v17 = v69 * v16;
          if (!is_mul_ok(v69, v18))
          {
            BUG();
          }

          v19 = [v8 strides];
          v20 = v19;
          v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v20, v72);
          (objc_release)(v20);
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2uLL, (v21 & 0xC000000000000003) == 0, v21);
          if ((v21 & 0xC000000000000003) != 0)
          {
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
          }

          else
          {
            v22 = *(v21 + 48);
          }

          v23 = v22;
          v21;
          v24 = [v23 integerValue];

          v26 = v24;
          v25 = v70 * v24;
          if (!is_mul_ok(v70, v26))
          {
            BUG();
          }

          v67 = v25 + v17;
          if (__OFADD__(v25, v17))
          {
            BUG();
          }

          v27 = [v8 strides];
          v28 = v27;
          v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v28, v72);

          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v29 & 0xC000000000000003) == 0, v29);
          if ((v29 & 0xC000000000000003) != 0)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
          }

          else
          {
            v30 = *(v29 + 32);
          }

          v31 = v30;
          v29;
          v32 = [v31 integerValue];

          v34 = v32;
          v33 = v69 * v32;
          if (!is_mul_ok(v69, v34))
          {
            BUG();
          }

          v35 = [v8 strides];
          v36 = v35;
          v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v36, v72);

          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1uLL, (v37 & 0xC000000000000003) == 0, v37);
          if ((v37 & 0xC000000000000003) != 0)
          {
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)(1);
          }

          else
          {
            v38 = *(v37 + 40);
          }

          v39 = v38;
          v37;
          v40 = [v39 integerValue];

          v41 = __OFADD__(v40, v33);
          v42 = &v40[v33];
          if (v41)
          {
            BUG();
          }

          v43 = [a5 strides];
          v44 = v43;
          v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v44, v72);

          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2uLL, (v45 & 0xC000000000000003) == 0, v45);
          if ((v45 & 0xC000000000000003) != 0)
          {
            v46 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
          }

          else
          {
            v46 = *(v45 + 48);
          }

          v47 = v46;
          v45;
          v48 = [v47 integerValue];

          v50 = v48;
          v49 = v70 * v48;
          if (!is_mul_ok(v70, v50))
          {
            BUG();
          }

          v41 = __OFADD__(v49, v42);
          v51 = &v42[v49];
          if (v41)
          {
            BUG();
          }

          v52 = v62[2];
          if (!v52)
          {
            BUG();
          }

          v53 = v62[4];
          i = v69;
          if (v69 >= *(v53 + 16))
          {
            BUG();
          }

          if (v52 == 1)
          {
            BUG();
          }

          v54 = v62[5];
          if (v69 >= *(v54 + 16))
          {
            BUG();
          }

          if (v69 >= *(*a7 + 16))
          {
            BUG();
          }

          v55 = v63[2];
          if (!v55)
          {
            BUG();
          }

          v56 = v63[4];
          if (v69 >= *(v56 + 16))
          {
            BUG();
          }

          if (v55 == 1)
          {
            BUG();
          }

          v57 = v63[5];
          if (v69 >= *(v57 + 16))
          {
            BUG();
          }

          if (v69 >= *(*a8 + 16))
          {
            BUG();
          }

          v58 = *(a1 + 8 * v67);
          v59 = *(a1 + 8 * v51);
          v10 = v70 + 1;
          v60 = ((*(v54 + 4 * v69 + 32) * v59) + (*(v53 + 4 * v69 + 32) * v58)) + *(*a7 + 4 * v69 + 32);
          v61 = ((v59 * *(v57 + 4 * v69 + 32)) + (v58 * *(v56 + 4 * v69 + 32))) + *(*a8 + 4 * v69 + 32);
          *(a1 + 8 * v67) = v60;
          *(a1 + 8 * v51) = v61;
          v8 = a5;
        }

        while (a4 != v70 + 1);
      }
    }
  }
}

uint64_t MLMultiArray.doubleArray()()
{
  v4 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  MLMultiArray.withUnsafeBytes<A>(_:)(partial apply for closure #1 in MLMultiArray.doubleArray(), v3, v1);
  return v5;
}

void *static MLHandActionClassifier.generatePaddedFrame(lastFrame:currentFrame:frameLen:displaceScaleFactor:)(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    BUG();
  }

  if (!a3)
  {
    return _swiftEmptyArrayStorage;
  }

  if (*(a1 + 16) < a3)
  {
    BUG();
  }

  if (*(a2 + 16) < a3)
  {
    BUG();
  }

  v5 = 0;
  v11 = a2;
  v10 = a4;
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
  v7 = result[2];
  do
  {
    v8 = *(a1 + 8 * v5 + 32);
    v9 = *(a2 + 8 * v5 + 32);
    if (result[3] >> 1 <= v7)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v7 + 1, 1, result);
      a2 = v11;
      a4 = v10;
    }

    ++v5;
    result[2] = v7 + 1;
    *&result[v7++ + 4] = (v9 - v8) * a4 + v8;
  }

  while (a3 != v5);
  return result;
}

float *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySfGAHG_Sfs5NeverOTg592_sSa8CreateMLSFRzlE1moi33_5442BF52D76DA1BBD780DB5A1A47CDFALLySayxGAD_ADtFZxx_xt_tXEfU_Sf_TG5Tf1cn_n(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v25 = v2;
  v26 = *(a2 + 16);
  if (v26 < v2)
  {
    v2 = *(a2 + 16);
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v28 = v2;
  if (v2)
  {

    v4 = 0;
    v5 = 1;
    v6 = v25;
    v7 = v26;
    v8 = v28;
    do
    {
      if (v6 == v4)
      {
        BUG();
      }

      if (v7 == v4)
      {
        BUG();
      }

      v9 = *(a1 + 4 * v4 + 32);
      v10 = *(a2 + 4 * v4 + 32);
      v29 = v3;
      v11 = *(v3 + 2);
      v12 = *(v3 + 3);
      v13 = v11 + 1;
      if (v12 >> 1 <= v11)
      {
        v14 = v5;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 >= 2, v13, v5);
        v13 = v11 + 1;
        v5 = v14;
        v8 = v28;
        v7 = v26;
        v6 = v25;
        v3 = v29;
      }

      ++v4;
      *(v3 + 2) = v13;
      v3[v11 + 8] = v9 * v10;
    }

    while (v8 != v4);
  }

  else
  {

    v6 = v25;
    v7 = v26;
    v8 = 0;
  }

  v15 = a1;
  v16 = a2;
  while (v6 != v8)
  {
    if (v6 <= v8)
    {
      BUG();
    }

    v17 = v8 + 1;
    if (__OFADD__(1, v8))
    {
      BUG();
    }

    if (v7 == v8)
    {
      break;
    }

    if (v7 <= v8)
    {
      BUG();
    }

    v18 = *(v15 + 4 * v8 + 32);
    v19 = *(v16 + 4 * v8 + 32);
    v20 = *(v3 + 2);
    v21 = v20 + 1;
    if (*(v3 + 3) >> 1 <= v20)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v3 + 3) >= 2uLL, v21, 1);
      v7 = v26;
      v6 = v25;
      v16 = a2;
      v15 = a1;
    }

    *(v3 + 2) = v21;
    v3[v20 + 8] = v18 * v19;
    v8 = v17;
  }

  v22 = v15;
  v16;
  v22;
  return v3;
}

void *closure #1 in MLMultiArray.doubleArray()(void *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    BUG();
  }

  v4 = v3;
  v5 = [a3 count];
  result = specialized _copyCollectionToContiguousArray<A>(_:)(a1, v5);
  *v4 = result;
  return result;
}

uint64_t outlined init with copy of MLHandActionClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t sub_31A5E()
{
  v1 = v0;
  v2 = type metadata accessor for LearningPhase(0);
  v3 = *(v2 - 8);
  v22 = *(v3 + 80);
  v4 = ~*(v3 + 80) & (v22 + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) - 8);
  v23 = *(v6 + 80);
  v7 = ~v23 & (v23 + v5);
  v24 = *(v6 + 64);
  (*(v3 + 8))(v1 + v4, v2);
  v8 = v1 + v7;
  v9 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v1 + v7, v9) == 1)
  {
    v10 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v1 + v7, v10))
    {
      case 0u:
        v13 = type metadata accessor for URL(0);
        v14 = *(*(v13 - 8) + 8);
        v14(v1 + v7);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        (v14)(v8 + v15[12], v13);
        *(v8 + v15[16] + 8);
        *(v8 + v15[20] + 8);
        *(v8 + v15[24] + 8);
        v16 = v15[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 8))(v1 + v7, v11);
        return swift_deallocObject(v1, ((v24 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v23 | v22 | 7);
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v8, *(v8 + 8));
        *(v8 + 24);
        *(v8 + 40);
        v12 = *(v8 + 56);
        goto LABEL_10;
      case 4u:
        outlined consume of Result<_DataTable, Error>(*v8, *(v8 + 8));
        *(v8 + 24);
        *(v8 + 40);
        *(v8 + 56);
        v12 = *(v8 + 72);
        goto LABEL_10;
      case 5u:
        v17 = type metadata accessor for DataFrame(0);
        (*(*(v17 - 8) + 8))(v1 + v7, v17);
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v8 + v18[12] + 8);
        *(v8 + v18[16] + 8);
        v16 = v18[20];
        goto LABEL_9;
      case 6u:
        v19 = type metadata accessor for DataFrame(0);
        (*(*(v19 - 8) + 8))(v1 + v7, v19);
        v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(v8 + v20[12] + 8);
        *(v8 + v20[16] + 8);
        *(v8 + v20[20] + 8);
        v16 = v20[24];
LABEL_9:
        v12 = *(v8 + v16 + 8);
LABEL_10:
        v12;
        break;
      default:
        return swift_deallocObject(v1, ((v24 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v23 | v22 | 7);
    }
  }

  return swift_deallocObject(v1, ((v24 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v23 | v22 | 7);
}

uint64_t outlined init with take of MLHandActionClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t partial apply for closure #1 in static MLHandActionClassifier.makeDataset<A>(from:classLabelsCount:parameters:learningPhase:)(uint64_t *a1)
{
  v2 = *(type metadata accessor for LearningPhase(0) - 8);
  v3 = ~*(v2 + 80) & (*(v2 + 80) + 16);
  v4 = v3 + *(v2 + 64);
  v5 = *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) - 8);
  v6 = (*(v5 + 80) + v4) & ~*(v5 + 80);
  return closure #1 in static MLHandActionClassifier.makeDataset<A>(from:classLabelsCount:parameters:learningPhase:)(a1, v1 + v3, v1 + v6, *(v1 + ((v6 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t lazy protocol witness table accessor for type DataSample<Tensor, Tensor> and conformance <> DataSample<A, B>()
{
  result = lazy protocol witness table cache variable for type DataSample<Tensor, Tensor> and conformance <> DataSample<A, B>;
  if (!lazy protocol witness table cache variable for type DataSample<Tensor, Tensor> and conformance <> DataSample<A, B>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> DataSample<A, B>, v1);
    lazy protocol witness table cache variable for type DataSample<Tensor, Tensor> and conformance <> DataSample<A, B> = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LearningPhase and conformance LearningPhase()
{
  result = lazy protocol witness table cache variable for type LearningPhase and conformance LearningPhase;
  if (!lazy protocol witness table cache variable for type LearningPhase and conformance LearningPhase)
  {
    v1 = type metadata accessor for LearningPhase(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for LearningPhase, v1);
    lazy protocol witness table cache variable for type LearningPhase and conformance LearningPhase = result;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v2(a2);
}

id @nonobjc MLMultiArray.init(dataPointer:shape:dataType:strides:deallocator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, double a7)
{
  v18 = v7;
  v8 = a4;
  v9 = 0;
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  a2;
  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v8;
  if (a5)
  {
    aBlock[4] = a5;
    v23 = a6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer) -> ();
    aBlock[3] = &block_descriptor;
    v9 = _Block_copy(aBlock);
  }

  aBlock[0] = 0;
  v11 = [v18 initWithDataPointer:a1 shape:isa dataType:a3 strides:v10.super.isa deallocator:a7 error:v9];
  _Block_release(v9);

  v12 = v10.super.isa;
  v13 = v11;

  v14 = aBlock[0];
  if (v13)
  {
    aBlock[0];
  }

  else
  {
    v15 = aBlock[0];
    _convertNSErrorToError(_:)(v14);

    swift_willThrow();
  }

  return v13;
}

uint64_t specialized Collection.randomElement<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = specialized RandomNumberGenerator.next<A>(upperBound:)(*(a2 + 16), a2, a3);
  if (v4 >= v3)
  {
    BUG();
  }

  return *(a2 + 8 * v4 + 32);
}

uint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    BUG();
  }

  v6[0] = 0;
  swift_stdlib_random(v6, 8, a3);
  v3 = (v6[0] * a1) >> 64;
  if (v6[0] * a1 < a1)
  {
    *(&v4 + 1) = -a1 % a1;
    if (*(&v4 + 1) > v6[0] * a1)
    {
      do
      {
        v6[0] = 0;
        swift_stdlib_random(v6, 8, *(&v4 + 1));
        v4 = v6[0] * a1;
      }

      while (-a1 % a1 > v4);
      return (v6[0] * a1) >> 64;
    }
  }

  return v3;
}

void specialized MutableCollection<>.shuffle<A>(using:)(uint64_t a1, uint64_t a2, uint64_t rdx0)
{
  *(&a3 + 1) = rdx0;
  v15 = v4;
  v5 = *v4;
  v6 = v5[2];
  if (v6 >= 2)
  {
    v14 = v6 - 2;
    v7 = 0;
    do
    {
      v18[0] = 0;
      swift_stdlib_random(v18, 8, *(&a3 + 1));
      a3 = v18[0] * v6;
      v8 = *(&a3 + 1);
      if (v6 > a3)
      {
        *(&a3 + 1) = -v6 % v6;
        if (*(&a3 + 1) > a3)
        {
          do
          {
            v18[0] = 0;
            swift_stdlib_random(v18, 8, *(&a3 + 1));
            a3 = v18[0] * v6;
          }

          while (-v6 % v6 > a3);
          v8 = (v18[0] * v6) >> 64;
        }
      }

      v9 = __OFADD__(v7, v8);
      v10 = v7 + v8;
      if (v9)
      {
        BUG();
      }

      if (v7 != v10)
      {
        v11 = v5[2];
        if (v7 >= v11)
        {
          BUG();
        }

        if (v10 >= v11)
        {
          BUG();
        }

        v16 = *(v5 + v7 + 8);
        v17 = *(v5 + v10 + 8);
        if (!swift_isUniquelyReferenced_nonNull_native(v5))
        {
          v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
        }

        v12 = v5[2];
        if (v7 >= v12)
        {
          BUG();
        }

        *(v5 + v7 + 8) = v17;
        if (v10 >= v12)
        {
          BUG();
        }

        *(v5 + v10 + 8) = v16;
        *v15 = v5;
      }

      --v6;
    }

    while (v7++ != v14);
  }
}

{
  *(&a3 + 1) = rdx0;
  v26 = v4;
  v5 = *v4;
  v6 = *(*v4 + 16);
  if (v6 >= 2)
  {
    v7 = 0;
    v29 = v6 - 2;
    do
    {
      v32[0] = 0;
      swift_stdlib_random(v32, 8, *(&a3 + 1));
      a3 = v32[0] * v6;
      v8 = *(&a3 + 1);
      if (v6 > a3)
      {
        *(&a3 + 1) = -v6 % v6;
        if (*(&a3 + 1) > a3)
        {
          do
          {
            v32[0] = 0;
            swift_stdlib_random(v32, 8, *(&a3 + 1));
            a3 = v32[0] * v6;
          }

          while (-v6 % v6 > a3);
          v8 = (v32[0] * v6) >> 64;
        }
      }

      v9 = __OFADD__(v7, v8);
      v10 = v7 + v8;
      if (v9)
      {
        BUG();
      }

      if (v7 == v10)
      {
        v11 = v29;
      }

      else
      {
        v12 = v5[2];
        if (v7 >= v12)
        {
          BUG();
        }

        if (v10 >= v12)
        {
          BUG();
        }

        v30 = v7;
        v13 = 4 * v7;
        v22 = v5[v13 + 4];
        v24 = v5[v13 + 6];
        v28 = v5[v13 + 7];
        v14 = 4 * v10;
        v20 = v5[4 * v10 + 4];
        v31 = v5[4 * v10 + 5];
        v21 = v5[4 * v10 + 6];
        v27 = v5[4 * v10 + 7];
        v23 = v5[v13 + 5];

        if (!swift_isUniquelyReferenced_nonNull_native(v5))
        {
          v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
        }

        if (v30 >= v5[2])
        {
          BUG();
        }

        v25 = v5[v13 + 5];
        v15 = v5[v13 + 7];
        v5[v13 + 4] = v20;
        v5[v13 + 5] = v31;
        v5[v13 + 6] = v21;
        v5[v13 + 7] = v27;
        v15;
        v25;
        if (v10 >= v5[2])
        {
          BUG();
        }

        v16 = v5 + 4;
        v17 = v5[v14 + 5];
        v18 = v5[v14 + 7];
        v16[v14] = v22;
        v16[v14 + 1] = v23;
        v16[v14 + 2] = v24;
        v16[v14 + 3] = v28;
        v18;
        v17;
        *v26 = v5;
        v11 = v29;
        v7 = v30;
      }

      --v6;
    }

    while (v7++ != v11);
  }
}

__int128 specialized static BinaryFloatingPoint<>.random<A>(in:using:)@<xmm0>(double a1@<xmm0>, double a2@<xmm1>, uint64_t a3@<rdi>, uint64_t a4@<rsi>, uint64_t a5@<rdx>)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  v10 = a2 - a1;
  v5 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL, a4, a5);
  result = *&a2;
  if (v5 != 0x20000000000000)
  {
    v7 = _mm_sub_pd(_mm_unpacklo_epi32(v5, xmmword_33D8B0), xmmword_33D8C0);
    v8 = *&v10;
    *&v8 = v10 * (_mm_hadd_pd(v7, v7).f64[0] * 1.110223024625157e-16) + a1;
    return v8;
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    BUG();
  }

  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
    BUG();
  }

  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  v5 = a1 - a2;
  if (__OFSUB__(a1 - a2, 1))
  {
    BUG();
  }

  v6 = v4 - (a2 - a1);
  if (__OFADD__(v5, v4))
  {
    BUG();
  }

  v14 = *(*v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v3);
  if (!isUniquelyReferenced_nonNull_native || v3[3] >> 1 < v6)
  {
    if (v14 > v6)
    {
      v6 = v14;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v6, 1, v3);
  }

  result = swift_arrayDestroy(&v3[2 * a1 + 4], a2 - a1, &type metadata for String);
  if (v5)
  {
    v9 = v3[2];
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (v10)
    {
      BUG();
    }

    result = specialized UnsafeMutablePointer.moveInitialize(from:count:)(&v3[2 * a2 + 4], v11, &v3[2 * a1 + 4]);
    v10 = __OFADD__(v3[2], v5);
    v12 = v3[2] + v5;
    if (v10)
    {
      BUG();
    }

    v3[2] = v12;
  }

  *v2 = v3;
  return result;
}

uint64_t *specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    BUG();
  }

  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
    BUG();
  }

  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (__OFSUB__(a1 - a2, 1))
  {
    BUG();
  }

  v5 = v4 - (a2 - a1);
  if (__OFADD__(a1 - a2, v4))
  {
    BUG();
  }

  v18 = a1 - a2;
  v16 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v3);
  if (!isUniquelyReferenced_nonNull_native || v3[3] >> 1 < v5)
  {
    if (v4 > v5)
    {
      v5 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 1, v3);
  }

  v7 = type metadata accessor for FeatureDescription(0);
  v8 = *(v7 - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  v11 = &v9[v10 * a1];
  swift_arrayDestroy(v11, a2 - a1, v7);
  if (v18)
  {
    v12 = v3[2];
    v13 = __OFSUB__(v12, a2);
    v14 = v12 - a2;
    if (v13)
    {
      BUG();
    }

    specialized UnsafeMutablePointer.moveInitialize(from:count:)(&v9[a2 * v10], v14, v11);
    if (__OFADD__(v3[2], v18))
    {
      BUG();
    }

    v3[2] += v18;
  }

  result = v16;
  *v16 = v3;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    BUG();
  }

  v4 = *v3;
  v5 = *(*v3 + 16);
  if (v5 < a2)
  {
    BUG();
  }

  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  v17 = *(a3 + 16);
  v7 = v17 - v6;
  if (__OFSUB__(v17, v6))
  {
    BUG();
  }

  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    BUG();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v4);
  if (!isUniquelyReferenced_nonNull_native || v4[3] >> 1 < v8)
  {
    if (v5 > v8)
    {
      v8 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v8, 1, v4);
  }

  v10 = &v4[a1 + 4];
  if (v7)
  {
    v11 = v4[2];
    v12 = __OFSUB__(v11, a2);
    v13 = (v11 - a2);
    if (v12)
    {
      BUG();
    }

    specialized UnsafeMutablePointer.moveInitialize(from:count:)(&v4[a2 + 4], v13, &v10[8 * v17]);
    v12 = __OFADD__(v4[2], v7);
    v14 = v4[2] + v7;
    if (v12)
    {
      BUG();
    }

    v4[2] = v14;
  }

  if (v17)
  {
    if (*(a3 + 16) != v17)
    {
      BUG();
    }

    memcpy(v10, (a3 + 32), 8 * v17);
  }

  result = a3;
  *v3 = v4;
  return result;
}

void specialized closure #1 in linearSpace #1 <A>(from:through:count:) in static MLHandActionClassifier.randomMove(_:)(void *a1, float *a2, float *a3)
{
  v5 = v3;
  v6 = specialized closure #1 in linearSpace #1 <A>(from:through:count:) in static MLHandActionClassifier.randomMove(_:)(*a1, *a2, *a3);
  if (!v4)
  {
    *v5 = v6;
  }
}

uint64_t type metadata accessor for NSNumber(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v4 = objc_opt_self(*a3);
    result = swift_getObjCClassMetadata(v4);
    *a2 = result;
  }

  return result;
}

uint64_t InteractionTableBuilder.init(itemCount:maximumInteractionsPerItem:minimumInteractionScore:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 32) = a1;
  v18 = a2;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  ML11InteractionV_Tt0g5 = _s4HeapAAV12arrayLiteralAByxGxd_tcfC8CreateML11InteractionV_Tt0g5(_swiftEmptyArrayStorage);
  ML11InteractionVG_Tt1g5 = _sSa9repeating5countSayxGx_SitcfC4HeapADVy8CreateML11InteractionVG_Tt1g5(ML11InteractionV_Tt0g5, a1);
  *(v3 + 40) = ML11InteractionVG_Tt1g5;
  v15 = *(ML11InteractionVG_Tt1g5 + 16);
  if (v15)
  {
    v17 = v3;
    v6 = (v3 + 40);
    v7 = 0;
    swift_beginAccess(v6, v14, 33, 0);
    v8 = 32;
    v16 = v6;
    do
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(ML11InteractionVG_Tt1g5);
      *v6 = ML11InteractionVG_Tt1g5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        ML11InteractionVG_Tt1g5 = specialized _ArrayBuffer._consumeAndCreateNew()(ML11InteractionVG_Tt1g5);
        *v6 = ML11InteractionVG_Tt1g5;
      }

      if (v7 >= *(ML11InteractionVG_Tt1g5 + 16))
      {
        BUG();
      }

      v10 = *(ML11InteractionVG_Tt1g5 + 8 * v7 + 32);
      v11 = swift_isUniquelyReferenced_nonNull_native(v10);
      *(ML11InteractionVG_Tt1g5 + 8 * v7 + 32) = v10;
      if (!v11 || *(v10 + 24) >> 1 < v18)
      {
        v12 = *(v10 + 16);
        if (v12 <= v18)
        {
          v12 = v18;
        }

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11, v12, 0);
        v6 = v16;
      }

      ++v7;
      *v6 = ML11InteractionVG_Tt1g5;
      v8 += 8;
    }

    while (v15 != v7);
    swift_endAccess(v14);
    return v17;
  }

  return v3;
}

char *_s4HeapAAV12arrayLiteralAByxGxd_tcfC8CreateML11InteractionV_Tt0g5(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) >= 2uLL)
  {

    v2 = a1;
    if (!swift_isUniquelyReferenced_nonNull_native(a1))
    {
      v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(a1);
    }

    specialized Heap._UnsafeHandle.heapify()((v2 + 32), *(v2 + 2));
    a1;
    return v2;
  }

  return v1;
}

Swift::Void __swiftcall InteractionTableBuilder.insert(_:_:score:)(Swift::Int _, Swift::Int a2, Swift::Double score)
{
  if (score > *(v3 + 24))
  {
    v17 = score;
    v5 = (v3 + 40);
    swift_beginAccess(v3 + 40, v15, 0, 0);
    if (_ < 0)
    {
      BUG();
    }

    v6 = *(v3 + 40);
    if (*(v6 + 16) <= _)
    {
      BUG();
    }

    v7 = *(v6 + 8 * _ + 32);
    if (*(v7 + 16) < *(v3 + 16))
    {
      swift_beginAccess(v3 + 40, v16, 33, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v6);
      *v5 = v6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
        *v5 = v6;
      }

      v9 = v17;
      if (*(v6 + 16) <= _)
      {
        BUG();
      }

      v10 = a2;
LABEL_16:
      specialized Heap.insert(_:)(v10, v9);
      *v5 = v6;
      swift_endAccess(v16);
      return;
    }

    specialized Collection.first.getter(v7);
    if ((v12 & 1) == 0)
    {
      v13 = v11;
      if (v17 > v11)
      {
        swift_beginAccess(v3 + 40, v16, 33, 0);
        v14 = swift_isUniquelyReferenced_nonNull_native(v6);
        *v5 = v6;
        if (!v14)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          *v5 = v6;
        }

        if (*(v6 + 16) <= _)
        {
          BUG();
        }

        specialized Heap.popMin()(v13);
        *v5 = v6;
        if (*(v6 + 16) <= _)
        {
          BUG();
        }

        v10 = a2;
        v9 = v17;
        goto LABEL_16;
      }
    }
  }
}

void specialized Heap.insert(_:)(uint64_t a1, double a2)
{
  v3 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
  *v2 = v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1);
    v3 = *v2;
  }

  v5 = *(v3 + 16);
  v6 = v5 + 1;
  if (*(v3 + 24) >> 1 <= v5)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v3 + 24) >= 2uLL, v5 + 1, 1);
    v3 = *v2;
  }

  *(v3 + 16) = v6;
  v7 = 16 * v5;
  *(v3 + v7 + 32) = a1;
  *(v3 + v7 + 40) = a2;
  _BitScanReverse64(&v8, v6);
  specialized Heap._UnsafeHandle.bubbleUp(_:)(v5, v8, v3 + 32, a2);
  *v2 = v3;
}

uint64_t specialized Heap.popMin()(double a1)
{
  if (!*(*v1 + 2))
  {
    return 0;
  }

  v2 = specialized RangeReplaceableCollection<>.removeLast()();
  v4 = v3;
  v5 = *v1;
  if (*(*v1 + 2))
  {
    if (!swift_isUniquelyReferenced_nonNull_native(v5))
    {
      v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
    }

    v6 = *(v5 + 2);
    v7 = *(v5 + 4);
    *(v5 + 4) = v4;
    *(v5 + 5) = v2;
    specialized Heap._UnsafeHandle.trickleDownMin(_:)(0, 0, (v5 + 32), v6);
    *v1 = v5;
    return v7;
  }

  return v4;
}

CreateML::InteractionLookupTable __swiftcall InteractionTableBuilder.finalize()()
{
  v1 = *(v0 + 32);
  v2 = v1 + 1;
  if (__OFADD__(1, v1))
  {
    BUG();
  }

  if (v2 <= 0)
  {
    v2 = 0;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, _swiftEmptyArrayStorage);
  v4 = v1 * *(v0 + 16);
  if (!is_mul_ok(v1, *(v0 + 16)))
  {
    BUG();
  }

  v5 = v3;
  if (v4 <= 0)
  {
    v4 = 0;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0, _swiftEmptyArrayStorage);
  if (v1 < 0)
  {
    BUG();
  }

  v39 = v6;
  if (v1)
  {
    v7 = 0;
    v8 = v0 + 40;
    v9 = 0;
    swift_beginAccess(v8, v31, 0, 0);
    v10 = 0;
    v36 = v1;
    v37 = v8;
    do
    {
      v11 = *v8;
      if (v10 >= *(*v8 + 16))
      {
        BUG();
      }

      v33 = v9;
      v32 = v5;
      v35 = v10;
      v38 = *(v11 + 8 * v10 + 32);
      swift_retain_n(v38, 2);
      specialized MutableCollection<>.sort(by:)(&v38);
      v34 = v7;
      if (v7)
      {

        BUG();
      }

      v12 = v38;
      v13 = *(v38 + 2);
      v14 = v39[2];
      v15 = v13 + v14;
      if (__OFADD__(v13, v14))
      {
        BUG();
      }

      v16 = v39[3] >> 1;

      if (v16 < v15)
      {
        if (v14 > v15)
        {
          v15 = v14;
        }

        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v15, 1, v39);
        v14 = v18[2];
        v17 = *(v12 + 2);
      }

      else
      {
        v17 = v13;
        v18 = v39;
      }

      v39 = v18;
      if (v17)
      {
        if (((v18[3] >> 1) - v14) < v13)
        {
          BUG();
        }

        memcpy(&v18[2 * v14 + 4], v12 + 32, 16 * v13);
        if (v13)
        {
          v19 = __OFADD__(v39[2], v13);
          v20 = v39[2] + v13;
          if (v19)
          {
            BUG();
          }

          v39[2] = v20;
        }
      }

      else if (v13)
      {
        BUG();
      }

      v21 = v32;
      v22 = v32[2];
      if (v32[3] >> 1 <= v22)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32[3] >= 2uLL, v22 + 1, 1, v32);
      }

      v21[2] = v22 + 1;
      v23 = v33;
      v5 = v21;
      v21[v22 + 4] = v33;
      v24 = *(v12 + 2);

      v19 = __OFADD__(v24, v23);
      v9 = v24 + v23;
      if (v19)
      {
        BUG();
      }

      v10 = v35 + 1;
      v1 = v36;
      v8 = v37;
      v7 = v34;
    }

    while (v36 != v35 + 1);
  }

  else
  {
    v9 = 0;
  }

  v25 = v9;
  v26 = v5[2];
  v27 = v5;
  if (v5[3] >> 1 <= v26)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v5[3] >= 2uLL, v26 + 1, 1, v5);
  }

  v28 = v27;
  v27[2] = v26 + 1;
  v27[v26 + 4] = v25;
  v29 = v1;
  v30 = v39;
  result.boundaries._rawValue = v28;
  result.interactions._rawValue = v30;
  result.itemCount = v29;
  return result;
}

unint64_t static InteractionTableBuilder.createFromItemInteractions(interactions:maximumInteractionsPerItem:minimumInteractionScore:)(uint64_t a1, uint64_t a2, double a3)
{
  v12 = a3;
  v4 = a1;
  v5 = *(a1 + 16);
  swift_initStackObject(v3, v11);
  InteractionTableBuilder.init(itemCount:maximumInteractionsPerItem:minimumInteractionScore:)(v5, a2, v12);
  if (v5)
  {

    v6 = (a1 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      if (v7 != v8)
      {
        InteractionTableBuilder.insert(_:_:score:)(v7, v8, *v6);
      }

      v6 += 3;
      --v5;
    }

    while (v5);
    v4;
  }

  v9 = InteractionTableBuilder.finalize()();

  return v9;
}

void specialized MutableCollection<>.sort(by:)(char **a1)
{
  v1 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
  }

  v2 = *(v1 + 2);
  v3[0] = (v1 + 32);
  v3[1] = v2;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v3);
  *a1 = v1;
}

{
  v1 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
  }

  v2 = *(v1 + 2);
  v3[0] = (v1 + 32);
  v3[1] = v2;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v3);
  *a1 = v1;
}

{
  v1 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
  }

  v2 = *(v1 + 2);
  v3[0] = (v1 + 32);
  v3[1] = v2;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v3);
  *a1 = v1;
}

{
  v1 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
  }

  v2 = *(v1 + 2);
  v3[0] = v1 + 32;
  v3[1] = v2;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v3);
  *a1 = v1;
}

{
  v1 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
  }

  v2 = *(v1 + 2);
  v3[0] = (v1 + 32);
  v3[1] = v2;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v3);
  *a1 = v1;
}

{
  specialized MutableCollection<>.sort(by:)(a1);
}