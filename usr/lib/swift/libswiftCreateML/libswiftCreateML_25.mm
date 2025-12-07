void *assignWithCopy for MLHandActionClassifier(void *a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *a1;
  *a1 = *a2;

  v6;
  a1[1] = a2[1];

  v7 = a2[2];
  v8 = v5[2];
  v5[2] = v7;
  v7;

  v63 = a3;
  v9 = *(a3 + 28);
  v10 = v5 + v9;
  v11 = a2 + v9;
  if (v5 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    v12 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v11, v12) == 1)
    {
      v65 = type metadata accessor for MLHandActionClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v11, v65);
      switch(EnumCaseMultiPayload)
      {
        case 0u:
          v76 = type metadata accessor for URL(0);
          v15 = *(*(v76 - 8) + 16);
          v15(v10, v11, v76);
          v73 = v12;
          v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v15(&v10[v16[12]], &v11[v16[12]], v76);
          v4 = a2;
          v17 = v16[16];
          *&v10[v17] = *&v11[v17];
          *&v10[v17 + 8] = *&v11[v17 + 8];
          v18 = v16[20];
          *&v10[v18] = *&v11[v18];
          *&v10[v18 + 8] = *&v11[v18 + 8];
          v19 = v16[24];
          *&v10[v19] = *&v11[v19];
          *&v10[v19 + 8] = *&v11[v19 + 8];
          v20 = v16[28];
          *&v10[v20] = *&v11[v20];
          goto LABEL_11;
        case 1u:
        case 2u:
          v13 = type metadata accessor for URL(0);
          (*(*(v13 - 8) + 16))(v10, v11, v13);
          goto LABEL_14;
        case 3u:
          v74 = v12;
          v21 = *v11;
          v77 = v11[8];
          outlined copy of Result<_DataTable, Error>(*v11, v77);
          *v10 = v21;
          v10[8] = v77;
          *(v10 + 2) = *(v11 + 2);
          *(v10 + 3) = *(v11 + 3);
          *(v10 + 4) = *(v11 + 4);
          *(v10 + 5) = *(v11 + 5);
          *(v10 + 6) = *(v11 + 6);
          *(v10 + 7) = *(v11 + 7);

          v12 = v74;

          goto LABEL_13;
        case 4u:
          v72 = v12;
          v14 = *v11;
          v75 = v11[8];
          outlined copy of Result<_DataTable, Error>(*v11, v75);
          *v10 = v14;
          v10[8] = v75;
          *(v10 + 2) = *(v11 + 2);
          *(v10 + 3) = *(v11 + 3);
          *(v10 + 4) = *(v11 + 4);
          *(v10 + 5) = *(v11 + 5);
          *(v10 + 6) = *(v11 + 6);
          *(v10 + 7) = *(v11 + 7);
          *(v10 + 8) = *(v11 + 8);
          *(v10 + 9) = *(v11 + 9);

          v12 = v72;

          goto LABEL_13;
        case 5u:
          v22 = type metadata accessor for DataFrame(0);
          (*(*(v22 - 8) + 16))(v10, v11, v22);
          v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v24 = v23[12];
          *&v10[v24] = *&v11[v24];
          *&v10[v24 + 8] = *&v11[v24 + 8];
          v25 = v23[16];
          *&v10[v25] = *&v11[v25];
          *&v10[v25 + 8] = *&v11[v25 + 8];
          v26 = v23[20];
          *&v10[v26] = *&v11[v26];
          v73 = v12;
          *&v10[v26 + 8] = *&v11[v26 + 8];

          goto LABEL_12;
        case 6u:
          v27 = type metadata accessor for DataFrame(0);
          (*(*(v27 - 8) + 16))(v10, v11, v27);
          v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v29 = v28[12];
          *&v10[v29] = *&v11[v29];
          *&v10[v29 + 8] = *&v11[v29 + 8];
          v30 = v28[16];
          *&v10[v30] = *&v11[v30];
          *&v10[v30 + 8] = *&v11[v30 + 8];
          v31 = v28[20];
          *&v10[v31] = *&v11[v31];
          *&v10[v31 + 8] = *&v11[v31 + 8];
          v20 = v28[24];
          *&v10[v20] = *&v11[v20];
          v73 = v12;
LABEL_11:
          *&v10[v20 + 8] = *&v11[v20 + 8];

LABEL_12:

          v12 = v73;
LABEL_13:

LABEL_14:
          swift_storeEnumTagMultiPayload(v10, v65, EnumCaseMultiPayload);
          swift_storeEnumTagMultiPayload(v10, v12, 1);
          break;
      }
    }

    else
    {
      memcpy(v10, v11, *(*(v12 - 8) + 64));
    }
  }

  v32 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *&v10[v32[5]] = *&v11[v32[5]];
  *&v10[v32[6]] = *&v11[v32[6]];
  *&v10[v32[7]] = *&v11[v32[7]];
  *&v10[v32[8]] = *&v11[v32[8]];
  *&v10[v32[10]] = *&v11[v32[10]];
  if (v5 != v4)
  {
    v33 = *(v63 + 32);
    v34 = (v5 + v33);
    v35 = (v4 + v33);
    outlined destroy of MLActivityClassifier.ModelParameters(v34, type metadata accessor for MLClassifierMetrics.Contents);
    v66 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v36 = swift_getEnumCaseMultiPayload(v35, v66);
    v62 = v5;
    v70 = v4;
    if (v36 == 2)
    {
      v41 = *v35;
      swift_errorRetain(*v35);
      *v34 = v41;
    }

    else if (v36 == 1)
    {
      *v34 = *v35;
      v68 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v37 = *(v68 + 20);
      v78 = v34 + v37;
      v38 = type metadata accessor for DataFrame(0);
      v39 = *(*(v38 - 8) + 16);
      v40 = v35 + v37;
      v5 = v62;
      v39(v78, v40, v38);
      v39(v34 + *(v68 + 24), v35 + *(v68 + 24), v38);
      v36 = 1;
    }

    else
    {
      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v43 = swift_getEnumCaseMultiPayload(v35, v42);
      v44 = v43 == 1;
      v45 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v43 == 1)
      {
        v45 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v46 = __swift_instantiateConcreteTypeFromMangledName(v45);
      (*(*(v46 - 8) + 16))(v34, v35, v46);
      swift_storeEnumTagMultiPayload(v34, v42, v44);
      v5 = v62;
    }

    swift_storeEnumTagMultiPayload(v34, v66, v36);
    v47 = *(v63 + 36);
    v48 = (v5 + v47);
    v49 = (v70 + v47);
    outlined destroy of MLActivityClassifier.ModelParameters(v5 + v47, type metadata accessor for MLClassifierMetrics.Contents);
    v50 = swift_getEnumCaseMultiPayload(v49, v66);
    if (v50 == 2)
    {
      v55 = *v49;
      swift_errorRetain(v55);
      *v48 = v55;
    }

    else if (v50 == 1)
    {
      *v48 = *v49;
      v64 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v51 = *(v64 + 20);
      v69 = v48 + v51;
      v52 = type metadata accessor for DataFrame(0);
      v53 = *(*(v52 - 8) + 16);
      v54 = v49 + v51;
      v5 = v62;
      v53(v69, v54, v52);
      v53(v48 + *(v64 + 24), v49 + *(v64 + 24), v52);
      v50 = 1;
    }

    else
    {
      v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v57 = swift_getEnumCaseMultiPayload(v49, v56);
      v71 = v49;
      v58 = v57 == 1;
      v59 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v57 == 1)
      {
        v59 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v60 = __swift_instantiateConcreteTypeFromMangledName(v59);
      (*(*(v60 - 8) + 16))(v48, v71, v60);
      swift_storeEnumTagMultiPayload(v48, v56, v58);
    }

    swift_storeEnumTagMultiPayload(v48, v66, v50);
  }

  return v5;
}

uint64_t initializeWithTake for MLHandActionClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = a2;
  v4 = a1;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = a3[7];
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v7, v8) == 1)
  {
    v72 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v7, v72))
    {
      case 0u:
        v63 = type metadata accessor for URL(0);
        v9 = *(*(v63 - 8) + 32);
        v9(v6, v7, v63);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v9(&v6[v10[12]], &v7[v10[12]], v63);
        v4 = a1;
        *&v6[v10[16]] = *&v7[v10[16]];
        *&v6[v10[20]] = *&v7[v10[20]];
        *&v6[v10[24]] = *&v7[v10[24]];
        v11 = v10[28];
        v3 = a2;
        *&v6[v11] = *&v7[v11];
        v12 = v6;
        v13 = v72;
        v14 = 0;
        goto LABEL_11;
      case 1u:
        v16 = type metadata accessor for URL(0);
        (*(*(v16 - 8) + 32))(v6, v7, v16);
        v61 = 1;
        goto LABEL_10;
      case 2u:
        v15 = type metadata accessor for URL(0);
        (*(*(v15 - 8) + 32))(v6, v7, v15);
        v61 = 2;
        goto LABEL_10;
      case 5u:
        v17 = type metadata accessor for DataFrame(0);
        (*(*(v17 - 8) + 32))(v6, v7, v17);
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&v6[v18[12]] = *&v7[v18[12]];
        *&v6[v18[16]] = *&v7[v18[16]];
        *&v6[v18[20]] = *&v7[v18[20]];
        v61 = 5;
        goto LABEL_10;
      case 6u:
        v19 = type metadata accessor for DataFrame(0);
        (*(*(v19 - 8) + 32))(v6, v7, v19);
        v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&v6[v20[12]] = *&v7[v20[12]];
        *&v6[v20[16]] = *&v7[v20[16]];
        *&v6[v20[20]] = *&v7[v20[20]];
        *&v6[v20[24]] = *&v7[v20[24]];
        v61 = 6;
LABEL_10:
        v14 = v61;
        v12 = v6;
        v13 = v72;
LABEL_11:
        swift_storeEnumTagMultiPayload(v12, v13, v14);
        break;
      default:
        memcpy(v6, v7, *(*(v72 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload(v6, v8, 1);
  }

  else
  {
    memcpy(v6, v7, *(*(v8 - 8) + 64));
  }

  v21 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *&v6[v21[5]] = *&v7[v21[5]];
  *&v6[v21[6]] = *&v7[v21[6]];
  *&v6[v21[7]] = *&v7[v21[7]];
  *&v6[v21[8]] = *&v7[v21[8]];
  *&v6[v21[10]] = *&v7[v21[10]];
  v22 = a3[8];
  v23 = (v4 + v22);
  v24 = (v3 + v22);
  v25 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v24, v25);
  v73 = v25;
  if (EnumCaseMultiPayload == 1)
  {
    *v23 = *v24;
    v64 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v36 = *(v64 + 20);
    v62 = &v23[v36];
    v70 = v4;
    v37 = type metadata accessor for DataFrame(0);
    v67 = v3;
    v38 = *(*(v37 - 8) + 32);
    v39 = &v24[v36];
    v25 = v73;
    v38(v62, v39, v37);
    v40 = v37;
    v4 = v70;
    v38(&v23[*(v64 + 24)], &v24[*(v64 + 24)], v40);
    v3 = v67;
    v35 = 1;
    v33 = v23;
    v34 = v73;
LABEL_19:
    swift_storeEnumTagMultiPayload(v33, v34, v35);
    goto LABEL_21;
  }

  if (!EnumCaseMultiPayload)
  {
    v69 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v27 = swift_getEnumCaseMultiPayload(v24, v69);
    v28 = v3;
    v29 = v27 == 1;
    v30 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v27 == 1)
    {
      v30 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v31 = __swift_instantiateConcreteTypeFromMangledName(v30);
    (*(*(v31 - 8) + 32))(v23, v24, v31);
    v32 = v29;
    v3 = v28;
    v25 = v73;
    swift_storeEnumTagMultiPayload(v23, v69, v32);
    v33 = v23;
    v34 = v73;
    v35 = 0;
    goto LABEL_19;
  }

  memcpy(v23, v24, *(*(v25 - 8) + 64));
LABEL_21:
  v41 = a3[9];
  v42 = (v4 + v41);
  v43 = (v41 + v3);
  v44 = swift_getEnumCaseMultiPayload(v43, v25);
  if (v44 == 1)
  {
    *v42 = *v43;
    v66 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v71 = v4;
    v56 = *(v66 + 20);
    v68 = &v42[v56];
    v57 = type metadata accessor for DataFrame(0);
    v58 = *(*(v57 - 8) + 32);
    v59 = &v43[v56];
    v4 = v71;
    v58(v68, v59, v57);
    v58(&v42[*(v66 + 24)], &v43[*(v66 + 24)], v57);
    v55 = 1;
    v53 = v42;
    v54 = v73;
  }

  else
  {
    if (v44)
    {
      memcpy(v42, v43, *(*(v25 - 8) + 64));
      return v4;
    }

    v45 = v43;
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v47 = swift_getEnumCaseMultiPayload(v45, v46);
    v48 = v4;
    v49 = v47 == 1;
    v50 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v47 == 1)
    {
      v50 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v51 = __swift_instantiateConcreteTypeFromMangledName(v50);
    (*(*(v51 - 8) + 32))(v42, v45, v51);
    v52 = v49;
    v4 = v48;
    swift_storeEnumTagMultiPayload(v42, v46, v52);
    v53 = v42;
    v54 = v73;
    v55 = 0;
  }

  swift_storeEnumTagMultiPayload(v53, v54, v55);
  return v4;
}

uint64_t *assignWithTake for MLHandActionClassifier(uint64_t *a1, uint64_t *a2, int *a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = *a2;
  v6;
  a1[1] = a2[1];

  v7 = a1[2];
  a1[2] = a2[2];

  v8 = a3[7];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v64 = a3;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v9, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    v11 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v10, v11) == 1)
    {
      v70 = type metadata accessor for MLHandActionClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(v10, v70))
      {
        case 0u:
          v66 = type metadata accessor for URL(0);
          v12 = *(*(v66 - 8) + 32);
          v12(v9, v10, v66);
          v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v12(&v9[v62[12]], &v10[v62[12]], v66);
          v4 = a2;
          *&v9[v62[16]] = *&v10[v62[16]];
          *&v9[v62[20]] = *&v10[v62[20]];
          *&v9[v62[24]] = *&v10[v62[24]];
          *&v9[v62[28]] = *&v10[v62[28]];
          v13 = v9;
          v14 = v70;
          v15 = 0;
          goto LABEL_12;
        case 1u:
          v17 = type metadata accessor for URL(0);
          (*(*(v17 - 8) + 32))(v9, v10, v17);
          v59 = 1;
          goto LABEL_11;
        case 2u:
          v16 = type metadata accessor for URL(0);
          (*(*(v16 - 8) + 32))(v9, v10, v16);
          v59 = 2;
          goto LABEL_11;
        case 5u:
          v18 = type metadata accessor for DataFrame(0);
          (*(*(v18 - 8) + 32))(v9, v10, v18);
          v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          *&v9[v19[12]] = *&v10[v19[12]];
          *&v9[v19[16]] = *&v10[v19[16]];
          *&v9[v19[20]] = *&v10[v19[20]];
          v59 = 5;
          goto LABEL_11;
        case 6u:
          v20 = type metadata accessor for DataFrame(0);
          (*(*(v20 - 8) + 32))(v9, v10, v20);
          v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          *&v9[v21[12]] = *&v10[v21[12]];
          *&v9[v21[16]] = *&v10[v21[16]];
          *&v9[v21[20]] = *&v10[v21[20]];
          *&v9[v21[24]] = *&v10[v21[24]];
          v59 = 6;
LABEL_11:
          v15 = v59;
          v13 = v9;
          v14 = v70;
LABEL_12:
          swift_storeEnumTagMultiPayload(v13, v14, v15);
          break;
        default:
          memcpy(v9, v10, *(*(v70 - 8) + 64));
          break;
      }

      swift_storeEnumTagMultiPayload(v9, v11, 1);
    }

    else
    {
      memcpy(v9, v10, *(*(v11 - 8) + 64));
    }

    a3 = v64;
  }

  v22 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *&v9[v22[5]] = *&v10[v22[5]];
  *&v9[v22[6]] = *&v10[v22[6]];
  *&v9[v22[7]] = *&v10[v22[7]];
  *&v9[v22[8]] = *&v10[v22[8]];
  *&v9[v22[10]] = *&v10[v22[10]];
  if (a1 == v4)
  {
    return a1;
  }

  v23 = a3[8];
  v24 = a1 + v23;
  v25 = v4 + v23;
  outlined destroy of MLActivityClassifier.ModelParameters(v24, type metadata accessor for MLClassifierMetrics.Contents);
  v71 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v25, v71);
  if (EnumCaseMultiPayload == 1)
  {
    *v24 = *v25;
    v63 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v36 = *(v63 + 20);
    v60 = &v24[v36];
    v61 = v4;
    v37 = type metadata accessor for DataFrame(0);
    v68 = *(*(v37 - 8) + 32);
    v38 = &v25[v36];
    a3 = v64;
    v68(v60, v38, v37);
    v39 = v37;
    v4 = v61;
    v68(&v24[*(v63 + 24)], &v25[*(v63 + 24)], v39);
    v35 = 1;
    v32 = v24;
    v33 = v71;
    v34 = v71;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v40 = v25;
      v33 = v71;
      memcpy(v24, v40, *(*(v71 - 8) + 64));
      goto LABEL_24;
    }

    v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v27 = swift_getEnumCaseMultiPayload(v25, v67);
    v28 = v27 == 1;
    v29 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v27 == 1)
    {
      v29 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v30 = __swift_instantiateConcreteTypeFromMangledName(v29);
    (*(*(v30 - 8) + 32))(v24, v25, v30);
    v31 = v28;
    a3 = v64;
    swift_storeEnumTagMultiPayload(v24, v67, v31);
    v32 = v24;
    v33 = v71;
    v34 = v71;
    v35 = 0;
  }

  swift_storeEnumTagMultiPayload(v32, v34, v35);
LABEL_24:
  v41 = a3[9];
  v42 = a1 + v41;
  v43 = v4 + v41;
  outlined destroy of MLActivityClassifier.ModelParameters(a1 + v41, type metadata accessor for MLClassifierMetrics.Contents);
  v44 = swift_getEnumCaseMultiPayload(v43, v33);
  if (v44 == 1)
  {
    *v42 = *v43;
    v65 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v54 = *(v65 + 20);
    v69 = &v42[v54];
    v55 = type metadata accessor for DataFrame(0);
    v56 = &v43[v54];
    v57 = *(*(v55 - 8) + 32);
    v57(v69, v56, v55);
    v57(&v42[*(v65 + 24)], &v43[*(v65 + 24)], v55);
    v53 = 1;
    v51 = v42;
    v52 = v71;
  }

  else
  {
    if (v44)
    {
      memcpy(v42, v43, *(*(v33 - 8) + 64));
      return a1;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v46 = swift_getEnumCaseMultiPayload(v43, v45);
    v47 = v43;
    v48 = v46 == 1;
    v49 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v46 == 1)
    {
      v49 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v50 = __swift_instantiateConcreteTypeFromMangledName(v49);
    (*(*(v50 - 8) + 32))(v42, v47, v50);
    swift_storeEnumTagMultiPayload(v42, v45, v48);
    v51 = v42;
    v52 = v71;
    v53 = 0;
  }

  swift_storeEnumTagMultiPayload(v51, v52, v53);
  return a1;
}

uint64_t sub_1A3849(void *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*a1 & 0xFFFFFFFF00000001) == 0)
    {
      return (*a1 >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    if (*(*(v5 - 8) + 84) == a2)
    {
      v6 = *(a3 + 28);
    }

    else
    {
      v5 = type metadata accessor for MLClassifierMetrics(0);
      v6 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v6, a2, v5);
  }

  return result;
}

void sub_1A38E6(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v6 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    if (*(*(v6 - 8) + 84) == a3)
    {
      v7 = *(a4 + 28);
    }

    else
    {
      v6 = type metadata accessor for MLClassifierMetrics(0);
      v7 = *(a4 + 32);
    }

    __swift_storeEnumTagSinglePayload(a1 + v7, a2, a2, v6);
  }
}

uint64_t type metadata completion function for MLHandActionClassifier(uint64_t a1)
{
  v4[0] = &value witness table for Builtin.BridgeObject + 64;
  v4[1] = &value witness table for Builtin.NativeObject + 64;
  v4[2] = &value witness table for Builtin.UnknownObject + 64;
  result = type metadata accessor for MLHandActionClassifier.ModelParameters(319);
  if (v2 <= 0x3F)
  {
    v4[3] = *(result - 8) + 64;
    result = type metadata accessor for MLClassifierMetrics.Contents(319);
    if (v3 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      v6 = v5;
      swift_initStructMetadata(a1, 256, 6, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t static MLSoundClassifier.__Defaults.validation.getter()
{
  v1 = v0;
  if (one-time initialization token for validation != -1)
  {
    swift_once(&one-time initialization token for validation, one-time initialization function for validation);
  }

  v2 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v3 = __swift_project_value_buffer(v2, static MLSoundClassifier.__Defaults.validation);
  return outlined init with copy of MLSoundClassifier.ModelParameters.ValidationData(v3, v1);
}

uint64_t static MLSoundClassifier.__Defaults.algorithm.getter()
{
  *result = 1;
  *(result + 8) = 1;
  *(result + 16) = 0;
  return result;
}

uint64_t one-time initialization function for validation()
{
  v0 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  __swift_allocate_value_buffer(v0, static MLSoundClassifier.__Defaults.validation);
  v1 = __swift_project_value_buffer(v0, static MLSoundClassifier.__Defaults.validation);
  *v1 = 0;
  *(v1 + 16) = 256;
  return swift_storeEnumTagMultiPayload(v1, v0, 0);
}

{
  v0 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  __swift_allocate_value_buffer(v0, static MLImageClassifier.__Defaults.validation);
  v1 = __swift_project_value_buffer(v0, static MLImageClassifier.__Defaults.validation);
  *v1 = 0;
  *(v1 + 16) = 256;
  return swift_storeEnumTagMultiPayload(v1, v0, 0);
}

uint64_t static MLSoundClassifier.__Defaults.featureExtractor.getter()
{
  *result = 1;
  *(result + 8) = 1;
  return result;
}

uint64_t MLSupportVectorClassifier.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Any?(v1 + 8, &v9);
  if (!v10)
  {
    BUG();
  }

  outlined init with take of Any(&v9, v8);
  swift_dynamicCast(&v7, v8, &type metadata for Any + 8, v2, 7);
  MLSupportVectorClassifier.ModelParameters.ValidationData.asTable()(a1);
  return outlined destroy of MLSupportVectorClassifier.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLSupportVectorClassifier.ModelParameters.validationData : MLSupportVectorClassifier.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLSupportVectorClassifier.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLSupportVectorClassifier.ModelParameters.validationData : MLSupportVectorClassifier.ModelParameters(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLSupportVectorClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLSupportVectorClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v18 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *a1;
  v8 = *(a1 + 8);
  v15 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13 + 1);
  if (v8 == 0xFF)
  {
    v13 = 0;
    v14 = 256;
  }

  else
  {
    v16 = v7;
    v9 = v8;
    v10 = v8 & 1;
    v17 = v10;
    v21 = v9;
    outlined copy of Result<_DataTable, Error>(v7, v9);
    v20 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v16, v17);
    if (v20)
    {
      *&v13 = v7;
      BYTE8(v13) = v10;
      v12 = 1;
    }

    else
    {
      outlined consume of MLDataTable?(v7, v21);
      v12 = 3;
    }

    v2 = v12;
  }

  swift_storeEnumTagMultiPayload(&v13, v3, v2);
  outlined init with take of MLSupportVectorClassifier.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  return outlined assign with take of Any?(&v13 + 8, v18 + 8);
}

uint64_t MLSupportVectorClassifier.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Any?(v1 + 8, &v6);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t outlined destroy of MLSupportVectorClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t outlined init with take of MLSupportVectorClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t (*MLSupportVectorClassifier.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  MLSupportVectorClassifier.ModelParameters.validationData.getter(a2);
  return MLSupportVectorClassifier.ModelParameters.validationData.modify;
}

uint64_t MLSupportVectorClassifier.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v6 = *a1;
  v7 = v3;
  if ((a2 & 1) == 0)
  {
    return MLSupportVectorClassifier.ModelParameters.validationData.setter(&v6);
  }

  v4 = v3;
  outlined copy of MLDataTable?(v2, v3);
  MLSupportVectorClassifier.ModelParameters.validationData.setter(&v6);
  return outlined consume of MLDataTable?(v2, v4);
}

uint64_t key path setter for MLSupportVectorClassifier.ModelParameters.validation : MLSupportVectorClassifier.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLSupportVectorClassifier.ModelParameters.ValidationData(a1, v6);
  return MLSupportVectorClassifier.ModelParameters.validation.setter(v6);
}

uint64_t MLSupportVectorClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLSupportVectorClassifier.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1 + 8);
}

void (*MLSupportVectorClassifier.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  *(v2 + 17) = v3;
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 18) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 19) = v5;
  outlined init with copy of Any?(v1 + 8, (v2 + 2));
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLSupportVectorClassifier.ModelParameters.validation.modify;
}

void MLSupportVectorClassifier.ModelParameters.validation.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[19];
  v4 = (*a1)[18];
  v5 = (*a1)[17];
  v6 = (*a1)[16] + 8;
  if (a2)
  {
    v10 = (*a1)[18];
    outlined init with copy of MLSupportVectorClassifier.ModelParameters.ValidationData((*a1)[19], v4);
    v2[11] = v5;
    v7 = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLSupportVectorClassifier.ModelParameters.ValidationData(v10, boxed_opaque_existential_0);
    outlined assign with take of Any?((v2 + 8), v6);
    outlined destroy of MLSupportVectorClassifier.ModelParameters.ValidationData(v3);
  }

  else
  {
    v2[15] = v5;
    v7 = v4;
    v9 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLSupportVectorClassifier.ModelParameters.ValidationData(v3, v9);
    outlined assign with take of Any?((v2 + 12), v6);
  }

  free(v3);
  free(v7);
  free(v2);
}

uint64_t outlined init with copy of MLSupportVectorClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t MLSupportVectorClassifier.ModelParameters.init(validation:maxIterations:penalty:convergenceThreshold:featureRescaling:)(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v19 = a5;
  v20 = a4;
  v17 = a1;
  v7 = v5;
  v8 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v18 = v7 + 8;
  *(v7 + 24) = 0;
  *(v7 + 8) = 0;
  *v7 = a2;
  *(v7 + 40) = v20;
  *(v7 + 48) = v19;
  *(v7 + 56) = a3 & 1;
  v12 = v17;
  outlined init with copy of MLSupportVectorClassifier.ModelParameters.ValidationData(v17, &v15);
  v16[3] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  outlined init with take of MLSupportVectorClassifier.ModelParameters.ValidationData(&v15, boxed_opaque_existential_0);
  outlined assign with take of Any?(v16, v18);
  return outlined destroy of MLSupportVectorClassifier.ModelParameters.ValidationData(v12);
}

uint64_t MLSupportVectorClassifier.ModelParameters.init(validationData:maxIterations:penalty:convergenceThreshold:featureRescaling:)(uint64_t *a1, uint64_t a2, char a3, double a4, double a5)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  *(v5 + 24) = 0;
  *(v5 + 8) = 0;
  *v5 = a2;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 56) = a3 & 1;
  v9 = v6;
  v10 = v7;
  return MLSupportVectorClassifier.ModelParameters.validationData.setter(&v9);
}

unint64_t MLSupportVectorClassifier.ModelParameters.description.getter()
{
  _StringGuts.grow(_:)(19);
  0;
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v1._object;
  String.append(_:)(v1);
  object;
  v3._object = 0xE100000000000000;
  v3._countAndFlagsBits = 10;
  String.append(_:)(v3);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x3A79746C616E6550;
  v3._object = 0xE900000000000020;
  String.append(_:)(v3);
  Double.write<A>(to:)(&v11, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4 = v11._object;
  String.append(_:)(v11);
  v4;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v3._object = "ml.actionClassifier" + 0x8000000000000000;
  v3._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v3);
  Double.write<A>(to:)(&v11, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v3._countAndFlagsBits = 10;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v5 = v11._object;
  String.append(_:)(v11);
  v5;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v11._object;
  v11._countAndFlagsBits = 0xD000000000000013;
  v6 = *(v0 + 56);
  v7._countAndFlagsBits = 0x65736C6166;
  if (v6)
  {
    v7._countAndFlagsBits = 1702195828;
  }

  v11._object = "Convergence Threshold: " + 0x8000000000000000;
  v7._object = ((v6 ^ 1u | 0xFFFFFFFFFFFFFFE4) << 56);
  String.append(_:)(v7);
  0;
  v8._countAndFlagsBits = 10;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = v11._object;
  String.append(_:)(v11);
  v9;
  return 0xD000000000000010;
}

unint64_t MLSupportVectorClassifier.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLSupportVectorClassifier.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t initializeWithCopy for MLSupportVectorClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = (a2 + 8);
  v6 = *(a2 + 32);
  if (v6)
  {
    *(a1 + 32) = v6;
    (**(v6 - 8))(v4, v5);
  }

  else
  {
    v7 = *v5;
    v4[1] = v5[1];
    *v4 = v7;
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for MLSupportVectorClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v2)
    {
      *(a1 + 32) = v2;
      (**(v2 - 8))(a1 + 8, a2 + 8);
      goto LABEL_8;
    }

LABEL_7:
    v3 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v3;
    goto LABEL_8;
  }

  if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0((a1 + 8), (a2 + 8));
LABEL_8:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

_OWORD *__swift_memcpy57_8(_OWORD *a1, __int128 *a2)
{
  result = a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(a1 + 41) = *(a2 + 41);
  a1[2] = v5;
  a1[1] = v4;
  *a1 = v3;
  return result;
}

uint64_t assignWithTake for MLSupportVectorClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a1 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
  }

  v2 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v2;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLSupportVectorClassifier.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = v3 & 0xFFFFFFFF00000001;
      v5 = (v3 >> 1) - 1;
      v6 = -1;
      if (v5 >= 0)
      {
        v6 = v5;
      }

      v2 = v4 != 0 ? -1 : v6;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLSupportVectorClassifier.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    *(a1 + 56) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 57) = 0;
    }

    if (a2)
    {
      *(a1 + 32) = 2 * a2;
    }
  }
}

uint64_t static _PowerUtilities.createPowerAssertion()()
{
  AssertionID = 0;
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  v2 = IOPMAssertionCreateWithName(v0, 0xFFu, v1, &AssertionID);

  if (v2)
  {
    v3 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v3, 0, 0);
    v4 = 45;
    *v5 = 0xD00000000000002DLL;
    *(v5 + 8) = "ssertion Request" + 0x8000000000000000;
    *(v5 + 16) = 0;
    *(v5 + 32) = 0;
    *(v5 + 48) = 0;
    swift_willThrow();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v7 = swift_allocObject(v6, 72, 7);
    *(v7 + 16) = 1;
    *(v7 + 24) = 2;
    v4 = AssertionID;
    *(v7 + 56) = &type metadata for UInt32;
    *(v7 + 64) = &protocol witness table for UInt32;
    *(v7 + 32) = v4;
    type metadata accessor for OS_os_log();
    v8 = static OS_os_log.default.getter(0, 72);
    static os_log_type_t.default.getter(0);
    os_log(_:dso:log:type:_:)("Created power assertion %d for CreateML\n");
    v7;
  }

  return v4;
}

char static _PowerUtilities.endPowerAssertion(from:)(IOPMAssertionID AssertionID)
{
  if (!AssertionID)
  {
    return 0;
  }

  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v2 = swift_allocObject(v1, 72, 7);
  *(v2 + 16) = 1;
  *(v2 + 24) = 2;
  *(v2 + 56) = &type metadata for UInt32;
  *(v2 + 64) = &protocol witness table for UInt32;
  *(v2 + 32) = AssertionID;
  type metadata accessor for OS_os_log();
  v3 = static OS_os_log.default.getter(0, 72);
  static os_log_type_t.default.getter(0);
  os_log(_:dso:log:type:_:)("Releasing power assertion %d ");
  v2;

  if (IOPMAssertionRelease(AssertionID))
  {
    v4 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v4, 0, 0);
    *v5 = 0xD00000000000002ELL;
    *(v5 + 8) = "Releasing power assertion %d " + 0x8000000000000000;
    *(v5 + 16) = 0;
    *(v5 + 32) = 0;
    *(v5 + 48) = 0;
    return swift_willThrow();
  }

  else
  {
    v7 = static OS_os_log.default.getter(AssertionID, 29);
    static os_log_type_t.default.getter(AssertionID);
    os_log(_:dso:log:type:_:)("succeeded for CreateML\n");

    return 1;
  }
}

NSURL *MLWordEmbedding.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v14 = v2;
  v11 = a2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v12 = *(v3 + 8);
  *v13 = _mm_loadu_si128((v3 + 24));
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(a1, 0x65626D4564726F57, 0xED0000676E696464, 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v14 = v4;
    si128 = _mm_load_si128(v13);
    v13[0] = si128.i64[0];
    static MLWordEmbedding.write(dictionary:parameters:to:metadata:)(v12, si128.i64, &si128, v11);

    return (*(v5 + 8))(&si128, v14);
  }

  return result;
}

NSURL *static MLWordEmbedding.write(dictionary:parameters:to:metadata:)(uint64_t a1, uint64_t *a2, uint64_t a3, const void *a4)
{
  v12 = *a2;
  v13 = a2[1];
  qmemcpy(v15, a4, sizeof(v15));
  v4 = static _TextUtilities.optionsDictionary(from:)(v15);
  v14 = objc_opt_self(NLEmbedding);
  v5 = specialized _dictionaryUpCast<A, B, C, D>(_:)(a1);
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v8 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v4);
  v4;
  v15[0] = 0;
  LOBYTE(v5) = outlined bridged method (mbnnnbnnn) of @objc static NLEmbedding.writeMLModel(for:language:revision:to:options:)(v5, v12, v13, v7, v8, v15, v14);

  v9 = v15[0];
  if (v5)
  {
    v15[0];
  }

  else
  {
    v11 = v15[0];
    _convertNSErrorToError(_:)(v9);

    swift_willThrow();
  }

  return __stack_chk_guard;
}

uint64_t MLWordEmbedding.write(toFile:metadata:)(Swift::String string, const void *a2)
{
  v17 = v2;
  v19 = a2;
  stringa = string._object;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v14 = *v3;
  v20 = *(v3 + 2);
  v15 = *(v3 + 24);
  v16 = *(v3 + 40);
  v21 = &v10;
  result = static _ValidationUtilities.validateWriteLocation(atPath:defaultName:)(string, 0x65626D4564726F57, 0xED0000676E696464);
  if (!v2)
  {
    v10 = v14;
    v11 = v20;
    v12 = v15;
    v13 = v16;
    MLWordEmbedding.write(to:metadata:)(v21, v19);
    return (*(v5 + 8))(v21, v4);
  }

  return result;
}

uint64_t outlined bridged method (mbnnnbnnn) of @objc static NLEmbedding.writeMLModel(for:language:revision:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, id a7)
{
  v7 = a5;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [NSNumber]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a1;
  v10 = Dictionary._bridgeToObjectiveC()().super.isa;
  v7;
  LODWORD(a3) = [a7 writeEmbeddingMLModelForDictionary:isa language:a2 revision:a3 toURL:a4 options:v10 error:?];

  return a3;
}

void *initializeBufferWithCopyOfBuffer for MLSoundClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for MLSoundClassifier.DataSource(0);
    v45 = v7;
    switch(swift_getEnumCaseMultiPayload(a2, v7))
    {
      case 0u:
        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 16))(a1, a2, v8);
        v9 = v7;
        v10 = 0;
        goto LABEL_10;
      case 1u:
        v21 = type metadata accessor for URL(0);
        (*(*(v21 - 8) + 16))(a1, a2, v21);
        v40 = 1;
        goto LABEL_9;
      case 2u:
        *a1 = *a2;

        v40 = 2;
        goto LABEL_9;
      case 3u:
        v18 = *a2;
        v19 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v19);
        *a1 = v18;
        *(a1 + 8) = v19;
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        v20 = *(a2 + 64);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v20;
        *(a1 + 80) = *(a2 + 80);

        v10 = 3;
        v9 = v45;
        goto LABEL_10;
      case 4u:
        v12 = type metadata accessor for DataFrame(0);
        (*(*(v12 - 8) + 16))(a1, a2, v12);
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        v14 = v13[12];
        *(a1 + v14) = *(a2 + v14);
        *(a1 + v14 + 8) = *(a2 + v14 + 8);
        v15 = v13[16];
        *(a1 + v15) = *(a2 + v15);
        *(a1 + v15 + 8) = *(a2 + v15 + 8);
        v16 = v13[20];
        *(a1 + v16 + 32) = *(a2 + v16 + 32);
        v17 = *(a2 + v16);
        *(a1 + v16 + 16) = *(a2 + v16 + 16);
        *(a1 + v16) = v17;

        v40 = 4;
LABEL_9:
        v10 = v40;
        v9 = v7;
LABEL_10:
        swift_storeEnumTagMultiPayload(a1, v9, v10);
        v22 = a3[5];
        v23 = (a1 + v22);
        v24 = a2 + v22;
        v43 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v24, v43);
        if (EnumCaseMultiPayload == 2)
        {
          *v23 = *v24;

          swift_storeEnumTagMultiPayload(v23, v43, 2);
        }

        else if (EnumCaseMultiPayload == 1)
        {
          switch(swift_getEnumCaseMultiPayload(v24, v45))
          {
            case 0u:
              v26 = type metadata accessor for URL(0);
              (*(*(v26 - 8) + 16))(v23, v24, v26);
              v27 = v23;
              v28 = v45;
              v29 = 0;
              goto LABEL_23;
            case 1u:
              v37 = type metadata accessor for URL(0);
              (*(*(v37 - 8) + 16))(v23, v24, v37);
              v41 = 1;
              goto LABEL_22;
            case 2u:
              *v23 = *v24;

              v41 = 2;
LABEL_22:
              v29 = v41;
              v27 = v23;
              v28 = v45;
LABEL_23:
              swift_storeEnumTagMultiPayload(v27, v28, v29);
              swift_storeEnumTagMultiPayload(v23, v43, 1);
              break;
            case 3u:
              v42 = *v24;
              v44 = *(v24 + 8);
              outlined copy of Result<_DataTable, Error>(*v24, v44);
              *v23 = v42;
              v23[8] = v44;
              *(v23 + 2) = *(v24 + 16);
              *(v23 + 3) = *(v24 + 24);
              *(v23 + 4) = *(v24 + 32);
              *(v23 + 5) = *(v24 + 40);
              v36 = *(v24 + 64);
              *(v23 + 3) = *(v24 + 48);
              *(v23 + 4) = v36;
              JUMPOUT(0x1A5303);
            case 4u:
              v30 = type metadata accessor for DataFrame(0);
              (*(*(v30 - 8) + 16))(v23, v24, v30);
              v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
              v32 = v31[12];
              *&v23[v32] = *(v24 + v32);
              *&v23[v32 + 8] = *(v24 + v32 + 8);
              v33 = v31[16];
              *&v23[v33] = *(v24 + v33);
              *&v23[v33 + 8] = *(v24 + v33 + 8);
              v34 = v31[20];
              v23[v34 + 32] = *(v24 + v34 + 32);
              v35 = *(v24 + v34);
              *&v23[v34 + 16] = *(v24 + v34 + 16);
              *&v23[v34] = v35;
              JUMPOUT(0x1A5272);
            case 5u:
              JUMPOUT(0x1A53BCLL);
          }
        }

        else
        {
          memcpy(v23, v24, *(*(v43 - 8) + 64));
        }

        *(v4 + a3[6]) = *(a2 + a3[6]);
        *(v4 + a3[7]) = *(a2 + a3[7]);
        *(v4 + a3[8]) = *(a2 + a3[8]);
        v38 = a3[9];
        *(v4 + v38 + 8) = *(a2 + v38 + 8);
        *(v4 + v38) = *(a2 + v38);
        *(v4 + v38 + 16) = *(a2 + v38 + 16);

        break;
    }
  }

  return v4;
}

uint64_t destroy for MLSoundClassifier.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MLSoundClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(a1, v3))
  {
    case 0u:
    case 1u:
      v4 = type metadata accessor for URL(0);
      (*(*(v4 - 8) + 8))(a1, v4);
      break;
    case 2u:
      v7 = *a1;
      goto LABEL_6;
    case 3u:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      v7 = *(a1 + 40);
      goto LABEL_6;
    case 4u:
      v5 = type metadata accessor for DataFrame(0);
      (*(*(v5 - 8) + 8))(a1, v5);
      v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *(a1 + *(v6 + 48) + 8);
      v7 = *(a1 + *(v6 + 64) + 8);
LABEL_6:
      v7;
      break;
    default:
      break;
  }

  v8 = a1 + *(a2 + 20);
  v9 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v9);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_11:
    v12 = *v8;
LABEL_12:
    v12;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    switch(swift_getEnumCaseMultiPayload(v8, v3))
    {
      case 0u:
      case 1u:
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 8))(v8, v11);
        break;
      case 2u:
        goto LABEL_11;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v8, *(v8 + 8));
        *(v8 + 24);
        v12 = *(v8 + 40);
        goto LABEL_12;
      case 4u:
        v14 = type metadata accessor for DataFrame(0);
        (*(*(v14 - 8) + 8))(v8, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v8 + *(v15 + 48) + 8);
        v12 = *(v8 + *(v15 + 64) + 8);
        goto LABEL_12;
      default:
        return *(a1 + *(a2 + 36) + 16);
    }
  }

  return *(a1 + *(a2 + 36) + 16);
}

uint64_t initializeWithCopy for MLSoundClassifier.PersistentParameters(uint64_t a1, uint64_t *a2, int *a3)
{
  v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(a2, v6))
  {
    case 0u:
      v7 = type metadata accessor for URL(0);
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v8 = v6;
      v9 = v6;
      v10 = 0;
      goto LABEL_8;
    case 1u:
      v21 = type metadata accessor for URL(0);
      (*(*(v21 - 8) + 16))(a1, a2, v21);
      v42 = 1;
      goto LABEL_7;
    case 2u:
      *a1 = *a2;

      v42 = 2;
      goto LABEL_7;
    case 3u:
      v17 = a3;
      v18 = *a2;
      v47 = v6;
      v19 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v19);
      *a1 = v18;
      *(a1 + 8) = v19;
      *(a1 + 16) = a2[2];
      *(a1 + 24) = a2[3];
      *(a1 + 32) = a2[4];
      *(a1 + 40) = a2[5];
      v20 = *(a2 + 4);
      *(a1 + 48) = *(a2 + 3);
      *(a1 + 64) = v20;
      *(a1 + 80) = *(a2 + 80);

      a3 = v17;

      v10 = 3;
      v9 = v47;
      v8 = v47;
      goto LABEL_8;
    case 4u:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      v13 = v12[12];
      *(a1 + v13) = *(a2 + v13);
      *(a1 + v13 + 8) = *(a2 + v13 + 8);
      v14 = v12[16];
      *(a1 + v14) = *(a2 + v14);
      *(a1 + v14 + 8) = *(a2 + v14 + 8);
      v15 = v12[20];
      *(a1 + v15 + 32) = *(a2 + v15 + 32);
      v16 = *(a2 + v15);
      *(a1 + v15 + 16) = *(a2 + v15 + 16);
      *(a1 + v15) = v16;

      v42 = 4;
LABEL_7:
      v10 = v42;
      v8 = v6;
      v9 = v6;
LABEL_8:
      swift_storeEnumTagMultiPayload(a1, v9, v10);
      v45 = a3;
      v22 = a3[5];
      v23 = (a1 + v22);
      v24 = a2 + v22;
      v48 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v24, v48);
      if (EnumCaseMultiPayload == 2)
      {
        *v23 = *v24;

        v30 = 2;
        v31 = v23;
        v32 = v48;
      }

      else
      {
        if (EnumCaseMultiPayload != 1)
        {
          memcpy(v23, v24, *(*(v48 - 8) + 64));
          goto LABEL_23;
        }

        switch(swift_getEnumCaseMultiPayload(v24, v8))
        {
          case 0u:
            v26 = type metadata accessor for URL(0);
            (*(*(v26 - 8) + 16))(v23, v24, v26);
            v27 = v23;
            v28 = v8;
            v29 = 0;
            goto LABEL_21;
          case 1u:
            v39 = type metadata accessor for URL(0);
            (*(*(v39 - 8) + 16))(v23, v24, v39);
            v43 = 1;
            goto LABEL_20;
          case 2u:
            *v23 = *v24;

            v43 = 2;
LABEL_20:
            v29 = v43;
            v27 = v23;
            v28 = v8;
LABEL_21:
            swift_storeEnumTagMultiPayload(v27, v28, v29);
            v32 = v48;
            v30 = 1;
            v31 = v23;
            break;
          case 3u:
            v44 = *v24;
            v46 = v24[8];
            outlined copy of Result<_DataTable, Error>(*v24, v46);
            *v23 = v44;
            *(v23 + 8) = v46;
            v23[2] = *(v24 + 2);
            v23[3] = *(v24 + 3);
            JUMPOUT(0x1A58C3);
          case 4u:
            v33 = type metadata accessor for DataFrame(0);
            (*(*(v33 - 8) + 16))(v23, v24, v33);
            v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
            v35 = v34[12];
            *(v23 + v35) = *&v24[v35];
            *(v23 + v35 + 8) = *&v24[v35 + 8];
            v36 = v34[16];
            *(v23 + v36) = *&v24[v36];
            *(v23 + v36 + 8) = *&v24[v36 + 8];
            v37 = v34[20];
            *(v23 + v37 + 32) = v24[v37 + 32];
            v38 = *&v24[v37];
            *(v23 + v37 + 16) = *&v24[v37 + 16];
            *(v23 + v37) = v38;
            JUMPOUT(0x1A585ELL);
        }
      }

      swift_storeEnumTagMultiPayload(v31, v32, v30);
LABEL_23:
      *(a1 + v45[6]) = *(a2 + v45[6]);
      *(a1 + v45[7]) = *(a2 + v45[7]);
      *(a1 + v45[8]) = *(a2 + v45[8]);
      v40 = v45[9];
      *(a1 + v40 + 8) = *(a2 + v40 + 8);
      *(a1 + v40) = *(a2 + v40);
      *(a1 + v40 + 16) = *(a2 + v40 + 16);

      return a1;
  }
}

uint64_t assignWithCopy for MLSoundClassifier.PersistentParameters(uint64_t a1, uint64_t *a2, int *a3)
{
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLSoundClassifier.DataSource);
    v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
    v45 = v6;
    switch(swift_getEnumCaseMultiPayload(a2, v6))
    {
      case 0u:
        v7 = type metadata accessor for URL(0);
        (*(*(v7 - 8) + 16))(a1, a2, v7);
        v8 = v6;
        v9 = 0;
        goto LABEL_9;
      case 1u:
        v19 = type metadata accessor for URL(0);
        (*(*(v19 - 8) + 16))(a1, a2, v19);
        v40 = 1;
        goto LABEL_8;
      case 2u:
        *a1 = *a2;

        v40 = 2;
        goto LABEL_8;
      case 3u:
        v16 = *a2;
        v17 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v17);
        *a1 = v16;
        *(a1 + 8) = v17;
        *(a1 + 16) = a2[2];
        *(a1 + 24) = a2[3];
        *(a1 + 32) = a2[4];
        *(a1 + 40) = a2[5];
        v18 = *(a2 + 4);
        *(a1 + 48) = *(a2 + 3);
        *(a1 + 64) = v18;
        *(a1 + 80) = *(a2 + 80);

        v9 = 3;
        v8 = v45;
        goto LABEL_9;
      case 4u:
        v10 = type metadata accessor for DataFrame(0);
        (*(*(v10 - 8) + 16))(a1, a2, v10);
        v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        v12 = v11[12];
        *(a1 + v12) = *(a2 + v12);
        *(a1 + v12 + 8) = *(a2 + v12 + 8);
        v13 = v11[16];
        *(a1 + v13) = *(a2 + v13);
        *(a1 + v13 + 8) = *(a2 + v13 + 8);
        v14 = v11[20];
        *(a1 + v14 + 32) = *(a2 + v14 + 32);
        v15 = *(a2 + v14);
        *(a1 + v14 + 16) = *(a2 + v14 + 16);
        *(a1 + v14) = v15;

        v40 = 4;
LABEL_8:
        v9 = v40;
        v8 = v6;
LABEL_9:
        swift_storeEnumTagMultiPayload(a1, v8, v9);
        v20 = a3[5];
        v21 = (a1 + v20);
        v22 = a2 + v20;
        outlined destroy of MLActivityClassifier.ModelParameters(v21, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
        v43 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v22, v43);
        if (EnumCaseMultiPayload == 2)
        {
          *v21 = *v22;

          swift_storeEnumTagMultiPayload(v21, v43, 2);
        }

        else if (EnumCaseMultiPayload == 1)
        {
          switch(swift_getEnumCaseMultiPayload(v22, v45))
          {
            case 0u:
              v24 = type metadata accessor for URL(0);
              (*(*(v24 - 8) + 16))(v21, v22, v24);
              v25 = v21;
              v26 = v45;
              v27 = 0;
              goto LABEL_21;
            case 1u:
              v35 = type metadata accessor for URL(0);
              (*(*(v35 - 8) + 16))(v21, v22, v35);
              v41 = 1;
              goto LABEL_20;
            case 2u:
              *v21 = *v22;

              v41 = 2;
              goto LABEL_20;
            case 3u:
              v42 = *v22;
              v44 = v22[8];
              outlined copy of Result<_DataTable, Error>(*v22, v44);
              *v21 = v42;
              v21[8] = v44;
              *(v21 + 2) = *(v22 + 2);
              *(v21 + 3) = *(v22 + 3);
              *(v21 + 4) = *(v22 + 4);
              *(v21 + 5) = *(v22 + 5);
              v34 = *(v22 + 4);
              *(v21 + 3) = *(v22 + 3);
              *(v21 + 4) = v34;
              JUMPOUT(0x1A5D20);
            case 4u:
              v28 = type metadata accessor for DataFrame(0);
              (*(*(v28 - 8) + 16))(v21, v22, v28);
              v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
              v30 = v29[12];
              *&v21[v30] = *&v22[v30];
              *&v21[v30 + 8] = *&v22[v30 + 8];
              v31 = v29[16];
              *&v21[v31] = *&v22[v31];
              *&v21[v31 + 8] = *&v22[v31 + 8];
              v32 = v29[20];
              v21[v32 + 32] = v22[v32 + 32];
              v33 = *&v22[v32];
              *&v21[v32 + 16] = *&v22[v32 + 16];
              *&v21[v32] = v33;

              v41 = 4;
LABEL_20:
              v27 = v41;
              v25 = v21;
              v26 = v45;
LABEL_21:
              swift_storeEnumTagMultiPayload(v25, v26, v27);
              swift_storeEnumTagMultiPayload(v21, v43, 1);
              break;
          }
        }

        else
        {
          memcpy(v21, v22, *(*(v43 - 8) + 64));
        }

        break;
    }
  }

  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v36 = a3[9];
  *(a1 + v36 + 8) = *(a2 + v36 + 8);
  *(a1 + v36) = *(a2 + v36);
  v37 = *(a2 + v36 + 16);
  v38 = *(a1 + v36 + 16);
  *(a1 + v36 + 16) = v37;

  v38;
  return a1;
}

_BYTE *initializeWithTake for MLSoundClassifier.PersistentParameters(_BYTE *__dst, _BYTE *__src, int *a3)
{
  v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v6);
  v35 = v6;
  switch(EnumCaseMultiPayload)
  {
    case 4:
      v12 = type metadata accessor for DataFrame(0);
      (*(*(v12 - 8) + 32))(__dst, __src, v12);
      v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *&__dst[v13[12]] = *&__src[v13[12]];
      *&__dst[v13[16]] = *&__src[v13[16]];
      v14 = v13[20];
      v15 = *&__src[v14 + 16];
      *&__dst[v14] = *&__src[v14];
      *&__dst[v14 + 16] = v15;
      __dst[v14 + 32] = __src[v14 + 32];
      v32 = 4;
      goto LABEL_7;
    case 1:
      v11 = type metadata accessor for URL(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v32 = 1;
LABEL_7:
      v10 = v32;
      v9 = v6;
      goto LABEL_8;
    case 0:
      v8 = type metadata accessor for URL(0);
      (*(*(v8 - 8) + 32))(__dst, __src, v8);
      v9 = v6;
      v10 = 0;
LABEL_8:
      swift_storeEnumTagMultiPayload(__dst, v9, v10);
      goto LABEL_10;
  }

  memcpy(__dst, __src, *(*(v6 - 8) + 64));
LABEL_10:
  v34 = a3;
  v16 = a3[5];
  v17 = &__dst[v16];
  v18 = &__src[v16];
  v19 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v18, v19) == 1)
  {
    v20 = swift_getEnumCaseMultiPayload(v18, v35);
    if (v20 == 4)
    {
      v26 = type metadata accessor for DataFrame(0);
      (*(*(v26 - 8) + 32))(v17, v18, v26);
      v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *&v17[v27[12]] = *&v18[v27[12]];
      *&v17[v27[16]] = *&v18[v27[16]];
      v28 = v27[20];
      v29 = *&v18[v28 + 16];
      *&v17[v28] = *&v18[v28];
      *&v17[v28 + 16] = v29;
      v17[v28 + 32] = v18[v28 + 32];
      v33 = 4;
    }

    else
    {
      if (v20 != 1)
      {
        if (v20)
        {
          memcpy(v17, v18, *(*(v35 - 8) + 64));
          goto LABEL_21;
        }

        v21 = type metadata accessor for URL(0);
        (*(*(v21 - 8) + 32))(v17, v18, v21);
        v22 = v17;
        v23 = v35;
        v24 = 0;
LABEL_19:
        swift_storeEnumTagMultiPayload(v22, v23, v24);
LABEL_21:
        swift_storeEnumTagMultiPayload(v17, v19, 1);
        goto LABEL_22;
      }

      v25 = type metadata accessor for URL(0);
      (*(*(v25 - 8) + 32))(v17, v18, v25);
      v33 = 1;
    }

    v24 = v33;
    v22 = v17;
    v23 = v35;
    goto LABEL_19;
  }

  memcpy(v17, v18, *(*(v19 - 8) + 64));
LABEL_22:
  *&__dst[v34[6]] = *&__src[v34[6]];
  *&__dst[v34[7]] = *&__src[v34[7]];
  *&__dst[v34[8]] = *&__src[v34[8]];
  v30 = v34[9];
  *&__dst[v30 + 16] = *&__src[v30 + 16];
  *&__dst[v30] = *&__src[v30];
  return __dst;
}

_BYTE *assignWithTake for MLSoundClassifier.PersistentParameters(_BYTE *__dst, _BYTE *__src, int *a3)
{
  if (__dst == __src)
  {
    goto LABEL_22;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLSoundClassifier.DataSource);
  v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v6);
  v36 = v6;
  if (EnumCaseMultiPayload == 4)
  {
    v12 = type metadata accessor for DataFrame(0);
    (*(*(v12 - 8) + 32))(__dst, __src, v12);
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    *&__dst[v13[12]] = *&__src[v13[12]];
    *&__dst[v13[16]] = *&__src[v13[16]];
    v14 = v13[20];
    v15 = *&__src[v14 + 16];
    *&__dst[v14] = *&__src[v14];
    *&__dst[v14 + 16] = v15;
    __dst[v14 + 32] = __src[v14 + 32];
    v33 = 4;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for URL(0);
    (*(*(v11 - 8) + 32))(__dst, __src, v11);
    v33 = 1;
LABEL_8:
    v10 = v33;
    v9 = v6;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload)
  {
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
    goto LABEL_11;
  }

  v8 = type metadata accessor for URL(0);
  (*(*(v8 - 8) + 32))(__dst, __src, v8);
  v9 = v6;
  v10 = 0;
LABEL_9:
  swift_storeEnumTagMultiPayload(__dst, v9, v10);
LABEL_11:
  v35 = a3;
  v16 = a3[5];
  v17 = &__dst[v16];
  v18 = &__src[v16];
  outlined destroy of MLActivityClassifier.ModelParameters(v17, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v19 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v18, v19) == 1)
  {
    v34 = v19;
    v20 = swift_getEnumCaseMultiPayload(v18, v36);
    if (v20 == 4)
    {
      v26 = type metadata accessor for DataFrame(0);
      v21 = v17;
      (*(*(v26 - 8) + 32))(v17, v18, v26);
      v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *&v17[v27[12]] = *&v18[v27[12]];
      *&v17[v27[16]] = *&v18[v27[16]];
      v28 = v27[20];
      v29 = *&v18[v28 + 16];
      *&v17[v28] = *&v18[v28];
      *&v17[v28 + 16] = v29;
      v17[v28 + 32] = v18[v28 + 32];
      v24 = 4;
      v25 = v17;
    }

    else
    {
      v21 = v17;
      if (v20 != 1)
      {
        a3 = v35;
        if (v20)
        {
          memcpy(v21, v18, *(*(v36 - 8) + 64));
        }

        else
        {
          v22 = type metadata accessor for URL(0);
          (*(*(v22 - 8) + 32))(v21, v18, v22);
          swift_storeEnumTagMultiPayload(v21, v36, 0);
        }

        goto LABEL_21;
      }

      v23 = type metadata accessor for URL(0);
      (*(*(v23 - 8) + 32))(v17, v18, v23);
      v24 = 1;
      v25 = v17;
    }

    swift_storeEnumTagMultiPayload(v25, v36, v24);
    a3 = v35;
LABEL_21:
    swift_storeEnumTagMultiPayload(v21, v34, 1);
    goto LABEL_22;
  }

  memcpy(v17, v18, *(*(v19 - 8) + 64));
  a3 = v35;
LABEL_22:
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  *&__dst[a3[8]] = *&__src[a3[8]];
  v30 = a3[9];
  __dst[v30 + 8] = __src[v30 + 8];
  *&__dst[v30] = *&__src[v30];
  v31 = *&__dst[v30 + 16];
  *&__dst[v30 + 16] = *&__src[v30 + 16];
  v31;
  return __dst;
}

uint64_t sub_1A638E(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLSoundClassifier.DataSource(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v6 = 0;
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v4 = *(a3 + 20) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v8 = -1;
  if (((*(a1 + *(a3 + 36) + 16) >> 1) - 1) >= 0)
  {
    v8 = (*(a1 + *(a3 + 36) + 16) >> 1) - 1;
  }

  v9 = v8 + 1;
  if ((*(a1 + *(a3 + 36) + 16) & 0xFFFFFFFF00000001) == 0)
  {
    return v9;
  }

  return v6;
}

uint64_t sub_1A6436(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLSoundClassifier.DataSource(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v6 = *(a4 + 20) + a1;
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  result = *(a4 + 36);
  *(a1 + result + 16) = 2 * a2;
  return result;
}

uint64_t type metadata accessor for MLSoundClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSoundClassifier.PersistentParameters;
  if (!type metadata singleton initialization cache for MLSoundClassifier.PersistentParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLSoundClassifier.PersistentParameters);
  }

  return result;
}

uint64_t type metadata completion function for MLSoundClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata accessor for MLSoundClassifier.DataSource(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      v4[2] = &value witness table for Builtin.Int64 + 64;
      v4[3] = &value witness table for Builtin.Int64 + 64;
      v4[4] = &value witness table for Builtin.Int64 + 64;
      v4[5] = &unk_3445A8;
      swift_initStructMetadata(a1, 256, 6, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
    v8 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a2, a3, isUniquelyReferenced_nonNull_native);
    a3;
    result = v8;
    *v3 = v8;
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &demangling cache variable for type metadata for Any?);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7, &demangling cache variable for type metadata for Any?);
    return a3;
  }

  return result;
}

{
  v20 = v3;
  v19 = a3;
  v21 = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLProgram.Block?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLProgram.Block(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  if (__swift_getEnumTagSinglePayload(a1, 1, v7) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &demangling cache variable for type metadata for MLProgram.Block?);
    v12 = v19;
    specialized Dictionary._Variant.removeValue(forKey:)(v21, v19, &demangling cache variable for type metadata for _NativeDictionary<String, MLProgram.Block>, &type metadata accessor for MLProgram.Block);
    v12;
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v17, &demangling cache variable for type metadata for MLProgram.Block?);
  }

  else
  {
    (*(v8 + 32))(&v17, a1, v7);
    v14 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v20);
    v18 = *v14;
    v16 = v19;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v17, v21, v19, isUniquelyReferenced_nonNull_native);
    v16;
    result = v18;
    *v14 = v18;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
    v8 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v8;
    v4 = type metadata accessor for CodingUserInfoKey(0);
    return (*(*(v4 - 8) + 8))(a2, v4);
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &demangling cache variable for type metadata for Sendable?);
    specialized Dictionary._Variant.removeValue(forKey:)(a2);
    v6 = type metadata accessor for CodingUserInfoKey(0);
    (*(*(v6 - 8) + 8))(a2, v6);
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7, &demangling cache variable for type metadata for Sendable?);
  }
}

uint64_t MLSoundClassifier.PersistentParameters.init(trainingData:modelParameters:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v17 = v4[6];
  v19 = v4[7];
  v18 = v4[8];
  v5 = v4[9];
  *(v3 + v5) = 1;
  *(v3 + v5 + 8) = 1;
  v16 = v5;
  *(v3 + v5 + 16) = 0;
  v15 = a1;
  outlined init with copy of MLTrainingSessionParameters(a1, v3, type metadata accessor for MLSoundClassifier.DataSource);
  outlined init with copy of MLTrainingSessionParameters(a2, v3 + v4[5], type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *(v3 + v17) = *(a2 + v6[6]);
  *(v3 + v19) = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
  *(v3 + v18) = *(a2 + v6[5]);
  outlined init with copy of Any?(a2 + v6[7], v10);
  if (!v11)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &demangling cache variable for type metadata for Any?);
    goto LABEL_5;
  }

  if (!swift_dynamicCast(&v12, v10, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
  {
LABEL_5:
    v7 = 1;
    v18 = 1;
    v19 = 0;
    goto LABEL_6;
  }

  v18 = v12;
  v7 = v13;
  v19 = v14;
LABEL_6:
  outlined destroy of MLActivityClassifier.ModelParameters(a2, type metadata accessor for MLSoundClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLSoundClassifier.DataSource);
  v8 = v16;
  *(v3 + v16 + 16);
  *(v3 + v8) = v18;
  *(v3 + v8 + 8) = v7 & 1;
  result = v19;
  *(v3 + v8 + 16) = v19;
  return result;
}

NSURL *MLSoundClassifier.PersistentParameters.save(toSessionDirectory:)(uint64_t a1)
{
  v98 = v1;
  v101 = v2;
  v92 = a1;
  v3 = *(*(type metadata accessor for MLSoundClassifier.DataSource(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v86 = v78;
  v97 = type metadata accessor for URL(0);
  v94 = *(v97 - 8);
  v6 = *(v94 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v81 = v78;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v80 = v78;
  v11 = alloca(v6);
  v12 = alloca(v6);
  v79 = v78;
  v83 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v13 = *(*(v83 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v82 = v78;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v87 = v78;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v93 = v78;
  v88 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v20 = *(*(v88 - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v84 = v78;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v25, v107);
  *(inited + 16) = 5;
  *(inited + 24) = 10;
  *(inited + 32) = 0x676E696E69617274;
  *(inited + 40) = 0xE800000000000000;
  v27 = MLSoundClassifier.DataSource.dictionary.getter();
  v99 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  *(inited + 72) = v99;
  *(inited + 48) = v27;
  *(inited + 80) = 0x69746164696C6176;
  *(inited + 88) = 0xEA00000000006E6FLL;
  v28 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v29 = v101;
  v85 = v101 + v28[5];
  outlined init with copy of MLTrainingSessionParameters(v85, v93, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v100 = v28;
  v30 = v29;
  v89 = *(v29 + v28[8]);
  v90 = *(v29 + v28[6]);
  v31 = v28[9];
  v32 = *(v29 + v31);
  LOBYTE(v91) = *(v30 + v31 + 8);
  v95 = *(v30 + v31 + 16);
  v33 = v88;
  v34 = *(v88 + 28);
  *&v78[v34] = 0;
  *(&v80 + v34) = 0;
  v35 = *(v33 + 32);
  *&v78[v35] = 0;
  v96 = &v78[v34];
  v78[v35 + 8] = 1;
  *&v78[*(v33 + 36)] = 32;
  outlined init with copy of MLTrainingSessionParameters(v93, v78, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v36 = v88;
  *&v78[*(v88 + 20)] = v89;
  *&v78[*(v36 + 24)] = v90;
  v106 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  *&v104 = v32;
  BYTE8(v104) = v91;
  v105 = v95;

  outlined assign with take of Any?(&v104, v96);
  v37 = v93;
  outlined destroy of MLActivityClassifier.ModelParameters(v93, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  outlined init with copy of MLTrainingSessionParameters(v78, v37, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  outlined destroy of MLActivityClassifier.ModelParameters(v78, type metadata accessor for MLSoundClassifier.ModelParameters);
  v38 = MLSoundClassifier.ModelParameters.ValidationData.dictionary.getter();
  outlined destroy of MLActivityClassifier.ModelParameters(v37, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  *(inited + 120) = v99;
  *(inited + 96) = v38;
  *(inited + 128) = 0x70616C7265766FLL;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 168) = &type metadata for Double;
  *(inited + 144) = v90;
  strcpy((inited + 176), "max_iterations");
  *(inited + 191) = -18;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v89;
  *(inited + 224) = 0x687469726F676C61;
  *(inited + 232) = 0xE90000000000006DLL;
  v39 = *(v101 + v31);
  v40 = *(v101 + v31 + 8);
  v91 = v31;
  v41 = *(v101 + v31 + 16);
  *&v104 = v39;
  BYTE8(v104) = v40;
  v105 = v41;

  v42 = MLSoundClassifier.ModelParameters.ModelAlgorithmType.dictionary.getter();
  v41;
  *(inited + 264) = v99;
  *(inited + 240) = v42;
  v43 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v44 = *(v101 + *(v100 + 28));
  v106 = &type metadata for Double;
  *&v104 = v44.i64[0];
  outlined init with take of Any(&v104, v103);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v43);
  v102 = v43;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v103, 0xD000000000000010, ("sertion %d for CreateML\n" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
  v46 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v104 = 0;
  v48 = [v46 dataWithPropertyList:isa format:200 options:0 error:&v104];
  v49 = v48;

  v50 = v104;
  if (!v49)
  {
    v56 = v50;
    _convertNSErrorToError(_:)(v50);

    swift_willThrow();
    return __stack_chk_guard;
  }

  v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v49);
  v53 = v52;

  v54 = v79;
  URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
  v55 = v98;
  Data.write(to:options:)(v54, 0, v51, v53);
  if (!v55)
  {
    v96 = v53;
    v99 = 0;
    v95 = *(v94 + 8);
    *v44.i64 = v95(v54, v97);
    MLSoundClassifier.DataSource.table.getter(v44);
    v57 = BYTE8(v104);
    v100 = v51;
    if (BYTE8(v104) != 0xFF)
    {
      v98 = v104;
      BYTE8(v104) &= 1u;
      v58 = v80;
      URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
      v59 = v99;
      MLDataTable.write(to:)(v58);
      if (v59)
      {
        v95(v58, v97);
        outlined consume of Data._Representation(v100, v96);
        v60 = v57;
        v61 = v98;
LABEL_15:
        outlined consume of MLDataTable?(v61, v60);
        return __stack_chk_guard;
      }

      v99 = 0;
      v95(v58, v97);
      outlined consume of MLDataTable?(v98, v57);
    }

    v62 = v93;
    outlined init with copy of MLTrainingSessionParameters(v85, v93, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v98 = *(v101 + v91);
    LOBYTE(v94) = *(v101 + v91 + 8);
    v101 = *(v101 + v91 + 16);
    v63 = v88;
    v64 = *(v88 + 28);
    v65 = v84;
    v66 = v84;
    *&v84[v64 + 16] = 0;
    *&v66[v64] = 0;
    v67 = v63[8];
    *&v66[v67] = 0;
    v68 = &v66[v64];
    *(v65 + v67 + 8) = 1;
    *(v65 + v63[9]) = 32;
    outlined init with copy of MLTrainingSessionParameters(v62, v65, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    *(v65 + v63[5]) = v89;
    v69 = v90;
    *(v65 + v63[6]) = v90;
    v106 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
    *&v104 = v98;
    BYTE8(v104) = v94;
    v105 = v101;

    outlined assign with take of Any?(&v104, v68);
    outlined destroy of MLActivityClassifier.ModelParameters(v62, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v70 = v87;
    outlined init with copy of MLTrainingSessionParameters(v65, v87, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    outlined destroy of MLActivityClassifier.ModelParameters(v65, type metadata accessor for MLSoundClassifier.ModelParameters);
    v71 = v82;
    outlined init with copy of MLTrainingSessionParameters(v70, v82, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v72 = -1;
    switch(swift_getEnumCaseMultiPayload(v71, v83))
    {
      case 0u:
      case 3u:
        goto LABEL_12;
      case 1u:
        v73 = v86;
        outlined init with take of MLClassifierMetrics(v71, v86, type metadata accessor for MLSoundClassifier.DataSource);
        MLSoundClassifier.DataSource.table.getter(v69);
        v70 = v87;
        outlined destroy of MLActivityClassifier.ModelParameters(v73, type metadata accessor for MLSoundClassifier.DataSource);
        v74 = v104;
        v72 = BYTE8(v104);
        break;
      case 2u:
        outlined destroy of MLActivityClassifier.ModelParameters(v71, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
LABEL_12:
        v74 = 0;
        break;
    }

    v75 = v100;
    outlined destroy of MLActivityClassifier.ModelParameters(v70, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v76 = v81;
    if (v72 == -1)
    {
      outlined consume of Data._Representation(v75, v96);
      return __stack_chk_guard;
    }

    *&v104 = v74;
    BYTE8(v104) = v72 & 1;
    v101 = v74;
    URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
    MLDataTable.write(to:)(v76);
    v95(v76, v97);
    outlined consume of Data._Representation(v100, v96);
    v60 = v72;
    v61 = v101;
    goto LABEL_15;
  }

  (*(v94 + 8))(v54, v97);
  outlined consume of Data._Representation(v51, v53);
  return __stack_chk_guard;
}

NSURL *MLSoundClassifier.PersistentParameters.init(sessionDirectory:)(uint64_t *a1)
{
  v108 = v2;
  v3 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v96 = &v92;
  v103 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v7 = *(*(v103 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v97 = &v92;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.DataSource?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v93 = &v92;
  v94 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v13 = *(*(v94 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v95 = &v92;
  v113 = type metadata accessor for URL(0);
  v107 = *(v113 - 8);
  v16 = *(v107 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v105 = &v92;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v102 = &v92;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v110 = &v92;
  v23 = alloca(v16);
  v24 = alloca(v16);
  v25 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v26 = *(v25 + 36);
  *(v3 + v26) = 1;
  *(v3 + v26 + 8) = 1;
  v109 = v3;
  v101 = v26;
  *(v3 + v26 + 16) = 0;
  URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
  v27 = v108;
  v28 = Data.init(contentsOf:options:)(&v92, 0);
  v108 = v27;
  if (!v27)
  {
    v32 = v29;
    v106 = v25;
    v116 = a1;
    v33 = *(v107 + 8);
    v34 = v28;
    v33(&v92, v113);
    v35 = objc_opt_self(NSPropertyListSerialization);
    v115 = v34;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v114 = v32;
    v119 = 0;
    v37 = [v35 propertyListWithData:isa options:0 format:0 error:&v119];
    v38 = v37;

    v39 = v119;
    if (!v38)
    {
      v44 = v39;
      _convertNSErrorToError(_:)(v39);

      swift_willThrow();
      outlined consume of Data._Representation(v115, v114);
      v33(v116, v113);
      goto LABEL_20;
    }

    v112 = v33;
    _bridgeAnyObjectToAny(_:)(v38);
    swift_unknownObjectRelease(v38);
    outlined init with copy of Any(v123, &v119);
    v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
    if (!swift_dynamicCast(&v118, &v119, &type metadata for Any + 8, v40, 6))
    {
      v45 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v45, 0, 0);
      *v46 = 0xD000000000000037;
      *(v46 + 8) = "parameters.plist" + 0x8000000000000000;
      *(v46 + 16) = 0;
      *(v46 + 32) = 0;
      *(v46 + 48) = 0;
      swift_willThrow();
      outlined consume of Data._Representation(v115, v114);
      v47 = v116;
LABEL_18:
      v112(v47, v113);
      goto LABEL_19;
    }

    v111 = &type metadata for Any + 8;
    v104 = v40;
    v41 = v118;
    specialized Dictionary.subscript.getter(0x70616C7265766FLL, 0xE700000000000000, v118);
    v42 = v116;
    if (!v122)
    {
      goto LABEL_15;
    }

    v117 = v41;
    if (swift_dynamicCast(&v118, &v119, v111, &type metadata for Double, 6))
    {
      v98 = v118;
      LOBYTE(v41) = v117;
      specialized Dictionary.subscript.getter(0x726574695F78616DLL, 0xEE00736E6F697461, v117);
      if (!v122)
      {
        goto LABEL_15;
      }

      if (swift_dynamicCast(&v118, &v119, v111, &type metadata for Int, 6))
      {
        v99 = v118;
        LOBYTE(v41) = v117;
        specialized Dictionary.subscript.getter(0x687469726F676C61, 0xE90000000000006DLL, v117);
        if (v122)
        {
          if (swift_dynamicCast(&v118, &v119, v111, v104, 6))
          {
            MLSoundClassifier.ModelParameters.ModelAlgorithmType.init(dictionary:)(v118);
            v43 = v121;
            if (v121 != 2)
            {
              v100 = v119;
              v51 = v120;
              specialized Dictionary.subscript.getter(0xD000000000000010, ("sertion %d for CreateML\n" + 0x8000000000000000), v117);
              if (v122)
              {
                v52 = swift_dynamicCast(&v118, &v119, v111, &type metadata for Double, 6);
                v53 = v106;
                if (v52)
                {
                  v54 = v118;
                }

                else
                {
                  v54 = 0x3FEF333333333333;
                }
              }

              else
              {
                outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v119, &demangling cache variable for type metadata for Any?);
                v54 = 0x3FEF333333333333;
                v53 = v106;
              }

              v55 = v53[6];
              v56 = v53[7];
              v57 = v53[8];
              v58 = v109;
              *(v109 + v56) = v54;
              *(v58 + v57) = v99;
              *(v58 + v55) = v98;
              v59 = v101;
              *(v58 + v101 + 16);
              *(v58 + v59) = v100;
              *(v58 + v59 + 8) = v51 & 1;
              *(v58 + v59 + 16) = v43;
              v60 = v110;
              URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
              v61 = v117;
              specialized Dictionary.subscript.getter(0x676E696E69617274, 0xE800000000000000, v117);
              if (v122)
              {
                v62 = swift_dynamicCast(&v118, &v119, v111, v104, 6);
                v63 = v113;
                if (v62)
                {
                  v64 = v118;
                  v65 = v102;
                  v107 = *(v107 + 16);
                  (v107)(v102, v60, v113);
                  v66 = v65;
                  v67 = v93;
                  MLSoundClassifier.DataSource.init(dictionary:tableFile:)(v64, v66);
                  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v67, 1, v94);
                  v69 = v116;
                  if (EnumTagSinglePayload != 1)
                  {
                    v77 = v95;
                    outlined init with take of MLClassifierMetrics(v67, v95, type metadata accessor for MLSoundClassifier.DataSource);
                    outlined init with take of MLClassifierMetrics(v77, v109, type metadata accessor for MLSoundClassifier.DataSource);
                    v78 = v105;
                    URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
                    v79 = v117;
                    specialized Dictionary.subscript.getter(0x69746164696C6176, 0xEA00000000006E6FLL, v117);
                    v79;
                    if (v122)
                    {
                      if (swift_dynamicCast(&v118, &v119, v111, v104, 6))
                      {
                        v80 = v118;
                        v81 = v102;
                        v82 = v113;
                        (v107)(v102, v78, v113);
                        v83 = v96;
                        MLSoundClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(v80, v81);
                        if (__swift_getEnumTagSinglePayload(v83, 1, v103) != 1)
                        {
                          outlined consume of Data._Representation(v115, v114);
                          v90 = v112;
                          v112(v116, v82);
                          v90(v105, v82);
                          v90(v110, v82);
                          __swift_destroy_boxed_opaque_existential_1Tm(v123);
                          v91 = v97;
                          outlined init with take of MLClassifierMetrics(v83, v97, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
                          outlined init with take of MLClassifierMetrics(v91, v106[5] + v109, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
                          return __stack_chk_guard;
                        }

                        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v83, &demangling cache variable for type metadata for MLSoundClassifier.ModelParameters.ValidationData?);
                        v84 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                        swift_allocError(&type metadata for MLCreateError, v84, 0, 0);
                        *v85 = 0xD000000000000037;
                        *(v85 + 8) = "ion Classification algorithm." + 0x8000000000000000;
                        *(v85 + 16) = 0;
                        *(v85 + 32) = 0;
                        *(v85 + 48) = 0;
                        swift_willThrow();
                        outlined consume of Data._Representation(v115, v114);
                        v86 = v112;
                        v112(v116, v82);
                        v86(v105, v82);
                        v86(v110, v82);
                        __swift_destroy_boxed_opaque_existential_1Tm(v123);
                        outlined destroy of MLActivityClassifier.ModelParameters(v109, type metadata accessor for MLSoundClassifier.DataSource);
                        goto LABEL_20;
                      }

                      outlined consume of Data._Representation(v115, v114);
                    }

                    else
                    {
                      outlined consume of Data._Representation(v115, v114);
                      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v119, &demangling cache variable for type metadata for Any?);
                    }

                    v87 = v103;
                    v88 = v113;
                    v89 = v112;
                    v112(v116, v113);
                    v89(v105, v88);
                    v89(v110, v88);
                    __swift_destroy_boxed_opaque_existential_1Tm(v123);
                    swift_storeEnumTagMultiPayload(v106[5] + v109, v87, 3);
                    return __stack_chk_guard;
                  }

                  v117;
                  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, &demangling cache variable for type metadata for MLSoundClassifier.DataSource?);
                  v70 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                  swift_allocError(&type metadata for MLCreateError, v70, 0, 0);
                  *v71 = 0xD000000000000035;
                  *(v71 + 8) = "o load validation data." + 0x8000000000000000;
                  *(v71 + 16) = 0;
                  *(v71 + 32) = 0;
                  *(v71 + 48) = 0;
                  swift_willThrow();
                  outlined consume of Data._Representation(v115, v114);
                  v72 = v112;
                  v112(v69, v63);
                  v72(v110, v63);
                  goto LABEL_19;
                }

                v61;
                v74 = v112;
                v73 = v63;
              }

              else
              {
                v61;
                outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v119, &demangling cache variable for type metadata for Any?);
                v73 = v113;
                v74 = v112;
              }

              v75 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v75, 0, 0);
              *v76 = 0xD00000000000002ELL;
              *(v76 + 8) = "audioFeaturePrint" + 0x8000000000000000;
              *(v76 + 16) = 0;
              *(v76 + 32) = 0;
              *(v76 + 48) = 0;
              swift_willThrow();
              outlined consume of Data._Representation(v115, v114);
              v74(v116, v73);
              v74(v110, v73);
LABEL_19:
              __swift_destroy_boxed_opaque_existential_1Tm(v123);
              goto LABEL_20;
            }

            v117;
            v42 = v116;
            goto LABEL_17;
          }

          goto LABEL_16;
        }

LABEL_15:
        v41;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v119, &demangling cache variable for type metadata for Any?);
LABEL_17:
        v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
        *v49 = 0xD000000000000034;
        *(v49 + 8) = "ad training parameters." + 0x8000000000000000;
        *(v49 + 16) = 0;
        *(v49 + 32) = 0;
        *(v49 + 48) = 0;
        swift_willThrow();
        outlined consume of Data._Representation(v115, v114);
        v47 = v42;
        goto LABEL_18;
      }
    }

LABEL_16:
    v117;
    goto LABEL_17;
  }

  v30 = *(v107 + 8);
  v31 = v113;
  v30(a1, v113);
  v30(&v92, v31);
LABEL_20:
  *(v109 + v101 + 16);
  return __stack_chk_guard;
}

uint64_t MLSoundClassifier.ModelParameters.ModelAlgorithmType.init(dictionary:)(uint64_t a1)
{
  v3 = v1;
  if (!*(a1 + 16))
  {
    goto LABEL_40;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_40;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, v31);
  if (!swift_dynamicCast(&v34, v31, &type metadata for Any + 8, &type metadata for String, 6))
  {
    goto LABEL_40;
  }

  v37 = v34;
  v6 = v35;
  specialized Dictionary.subscript.getter(0x6E6F6973726576, 0xE700000000000000, a1);
  if (v32)
  {
    if (!swift_dynamicCast(&v34, v31, &type metadata for Any + 8, &type metadata for Int, 6))
    {
      goto LABEL_15;
    }

    v33 = v34;
    specialized Dictionary.subscript.getter(0x6966697373616C63, 0xEA00000000007265, a1);
    if (v32)
    {
      if (swift_dynamicCast(&v34, v31, &type metadata for Any + 8, &type metadata for String, 6))
      {
        v7 = v34;
        v8 = v35;
        LOBYTE(v36) = (v37 ^ 0x687369676776 | v6 ^ 0xE600000000000000) == 0;
        v39 = v35;
        v38 = v34;
        if (!(v37 ^ 0x687369676776 | v6 ^ 0xE600000000000000) || (v9 = _stringCompareWithSmolCheck(_:_:expecting:)(0x687369676776, 0xE600000000000000, v37, v6, 0), v7 = v38, v10 = v37, v8 = v39, (v9 & 1) != 0))
        {
          if (!(v7 ^ 0xD000000000000012 | v8 ^ (&aLogisticRegres_0[-32] | 0x8000000000000000)) || (v11 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000012, &aLogisticRegres_0[-32] | 0x8000000000000000, v7, v8, 0), v12 = v38, v10 = v37, v8 = v39, (v11 & 1) != 0))
          {
            v13 = v8;
            v6;
            a1;
            v13;
            result = v33;
            *v3 = v33;
            *(v3 + 8) = 0;
            return result;
          }

          if (v36)
          {
            goto LABEL_45;
          }
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)(0x687369676776, 0xE600000000000000, v10, v6, 0);
        v12 = v38;
        v17 = v37;
        v8 = v39;
        if (v16)
        {
LABEL_45:
          if (!(v12 ^ 0xD000000000000015 | v8 ^ (&aMultilayerPerc_0[-32] | 0x8000000000000000)) || (v18 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000015, &aMultilayerPerc_0[-32] | 0x8000000000000000, v12, v8, 0), v12 = v38, v17 = v37, v8 = v39, (v18 & 1) != 0))
          {
            v19 = v8;
            specialized Dictionary.subscript.getter(0x69735F726579616CLL, 0xEB0000000073657ALL, a1);
            v19;
            v6;
            a1;
            if (v32)
            {
              v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
              result = swift_dynamicCast(&v34, v31, &type metadata for Any + 8, v20, 6);
              if (result)
              {
                result = v34;
                *v3 = v33;
                *(v3 + 8) = 0;
LABEL_23:
                *(v3 + 16) = result;
                return result;
              }

              goto LABEL_42;
            }

            goto LABEL_14;
          }
        }

        v21 = 0xD000000000000013;
        v22 = v17 ^ 0xD000000000000013 | v6 ^ (&aAudioFeaturePr_0[-32] | 0x8000000000000000);
        v40 = v22 == 0;
        if (v22)
        {
          v36 = 0xD000000000000013;
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000013, &aAudioFeaturePr_0[-32] | 0x8000000000000000, v17, v6, 0);
          v21 = v36;
          v12 = v38;
          v24 = v37;
          v8 = v39;
          if ((v23 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        if (!(v12 ^ 0xD000000000000012 | v8 ^ (&aLogisticRegres_0[-32] | 0x8000000000000000)) || (v36 = v21, v25 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000012, &aLogisticRegres_0[-32] | 0x8000000000000000, v12, v8, 0), v21 = v36, v26 = v38, v24 = v37, v8 = v39, (v25 & 1) != 0))
        {
          v27 = v8;
          v6;
          a1;
          v27;
          result = v33;
          *v3 = v33;
          *(v3 + 8) = 1;
          *(v3 + 16) = 0;
          return result;
        }

        if (!v40)
        {
LABEL_30:
          if ((_stringCompareWithSmolCheck(_:_:expecting:)(v21, &aAudioFeaturePr_0[-32] | 0x8000000000000000, v24, v6, 0) & 1) == 0)
          {
            goto LABEL_38;
          }

          v8 = v39;
          v26 = v38;
        }

        if (v26 ^ 0xD000000000000015 | v8 ^ (&aMultilayerPerc_0[-32] | 0x8000000000000000))
        {
          v28 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000015, &aMultilayerPerc_0[-32] | 0x8000000000000000, v26, v8, 0);
          v29 = v39;
          if ((v28 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        if (_stdlib_isOSVersionAtLeastOrVariantVersionAtLeast(_:_:_:_:_:_:)(0xCuLL, 0, 0, 0xFuLL, 0, 0))
        {
          specialized Dictionary.subscript.getter(0x69735F726579616CLL, 0xEB0000000073657ALL, a1);
          v39;
          v6;
          a1;
          if (v32)
          {
            v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
            result = swift_dynamicCast(&v34, v31, &type metadata for Any + 8, v30, 6);
            if (result)
            {
              result = v34;
              *v3 = v33;
              *(v3 + 8) = 1;
              goto LABEL_23;
            }

            goto LABEL_42;
          }

          goto LABEL_14;
        }

LABEL_38:
        v29 = v39;
LABEL_39:
        v29;
        v6;
LABEL_40:
        v15 = a1;
        goto LABEL_41;
      }

LABEL_15:
      a1;
      v15 = v6;
LABEL_41:
      result = v15;
      goto LABEL_42;
    }
  }

  a1;
  v6;
LABEL_14:
  result = outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, &demangling cache variable for type metadata for Any?);
LABEL_42:
  *v3 = 0;
  *(v3 + 16) = 2;
  return result;
}

uint64_t MLSoundClassifier.DataSource.init(dictionary:tableFile:)(uint64_t *a1, uint64_t a2)
{
  v76 = a2;
  v3 = v2;
  v70 = type metadata accessor for URL(0);
  v4 = *(v70 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  if (a1[2])
  {
    v66 = &v44;
    v77 = v4;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
    if (v13)
    {
      v73 = v8;
      outlined init with copy of Any(a1[7] + 32 * v12, v45);
      v69 = &type metadata for Any + 8;
      if (swift_dynamicCast(__src, v45, &type metadata for Any + 8, &type metadata for String, 6))
      {
        v72 = v3;
        v14 = __src[0];
        if (!(*&__src[0] ^ 0xD000000000000013 | *(&__src[0] + 1) ^ (&aLabeledDirecto[-32] | 0x8000000000000000)) || (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000013, &aLabeledDirecto[-32] | 0x8000000000000000, *&__src[0], *(&__src[0] + 1), 0) & 1) != 0)
        {
          SBYTE8(v14);
          specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
          a1;
          v3 = v72;
          v15 = v70;
          if (v48)
          {
            v16 = swift_dynamicCast(__src, v45, v69, &type metadata for String, 6);
            v8 = v73;
            if (v16)
            {
              v17 = BYTE8(__src[0]);
              v18 = v66;
              URL.init(fileURLWithPath:)(*&__src[0], *(&__src[0] + 1));
              v17;
              (*(v77 + 8))(v76, v15);
              v19 = v18;
              v20 = v8;
              v21 = 0;
LABEL_22:
              swift_storeEnumTagMultiPayload(v19, v20, v21);
LABEL_23:
              outlined init with take of MLClassifierMetrics(v18, v3, type metadata accessor for MLSoundClassifier.DataSource);
              v22 = 0;
              return __swift_storeEnumTagSinglePayload(v3, v22, 1, v8);
            }

            goto LABEL_25;
          }

          goto LABEL_24;
        }

        if (!(v14 ^ 0x5F64656C6562616CLL | *(&v14 + 1) ^ 0xED000073656C6966) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x5F64656C6562616CLL, 0xED000073656C6966, v14, *(&v14 + 1), 0) & 1) != 0)
        {
          SBYTE8(v14);
          specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
          a1;
          v3 = v72;
          v15 = v70;
          if (!v48)
          {
LABEL_24:
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v45, &demangling cache variable for type metadata for Any?);
            v8 = v73;
            goto LABEL_25;
          }

          v24 = swift_dynamicCast(__src, v45, v69, &type metadata for String, 6);
          v8 = v73;
          if (v24)
          {
            v25 = BYTE8(__src[0]);
            v18 = v66;
            URL.init(fileURLWithPath:)(*&__src[0], *(&__src[0] + 1));
            v25;
            (*(v77 + 8))(v76, v15);
            v43 = 1;
LABEL_21:
            v21 = v43;
            v19 = v18;
            v20 = v8;
            goto LABEL_22;
          }

          goto LABEL_25;
        }

        if (!(v14 ^ 0x79625F73656C6966 | *(&v14 + 1) ^ 0xEE006C6562616C5FLL) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x79625F73656C6966, 0xEE006C6562616C5FLL, v14, *(&v14 + 1), 0) & 1) != 0)
        {
          SBYTE8(v14);
          specialized Dictionary.subscript.getter(0x73656C6966, 0xE500000000000000, a1);
          a1;
          v3 = v72;
          v8 = v73;
          v15 = v70;
          if (!v48)
          {
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v45, &demangling cache variable for type metadata for Any?);
            goto LABEL_25;
          }

          v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : [String]]);
          if (swift_dynamicCast(__src, v45, v69, v26, 6))
          {
            v27 = __src[0];
            v28 = specialized _NativeDictionary.mapValues<A>(_:)(*&__src[0]);
            v3 = v72;
            v29 = v28;
            v27;
            (*(v77 + 8))(v76, v15);
            v18 = v66;
            *v66 = v29;
            v8 = v73;
            v43 = 2;
            goto LABEL_21;
          }

LABEL_25:
          (*(v77 + 8))(v76, v15);
          goto LABEL_14;
        }

        if (v14 ^ 0x7365727574616566 | *(&v14 + 1) ^ 0xE800000000000000)
        {
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)(0x7365727574616566, 0xE800000000000000, v14, *(&v14 + 1), 0);
          SBYTE8(v14);
          v30 = v77;
          if ((v31 & 1) == 0)
          {
            (*(v77 + 8))(v76, v70);
            a1;
            goto LABEL_52;
          }
        }

        else
        {
          SBYTE8(v14);
          v30 = v77;
        }

        v71 = &v44;
        v32 = v70;
        (*(v30 + 16))(&v44, v76, v70);
        LOBYTE(__src[0]) = 1;
        *(&__src[0] + 1) = 44;
        __src[1] = 0xE100000000000000;
        *&__src[2] = 0xE000000000000000;
        *(&__src[2] + 1) = 92;
        *&__src[3] = 0xE100000000000000;
        BYTE8(__src[3]) = 1;
        *&__src[4] = 34;
        *(&__src[4] + 1) = 0xE100000000000000;
        LOBYTE(__src[5]) = 1;
        *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
        *&__src[6] = 10;
        *(&__src[6] + 1) = 0xE100000000000000;
        __src[7] = 0;
        LOBYTE(__src[8]) = 1;
        *(&__src[8] + 1) = 0;
        LOBYTE(__dst[0]) = 1;
        v45[0] = 1;
        v46 = 44;
        v47 = 0xE100000000000000;
        v48 = 0;
        v49 = 0xE000000000000000;
        v50 = 92;
        v51 = 0xE100000000000000;
        v52 = 1;
        v53 = 34;
        v54 = 0xE100000000000000;
        v55 = 1;
        v56 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
        v57 = 10;
        v58 = 0xE100000000000000;
        v59 = 0;
        v60 = 1;
        v61 = 0;
        outlined retain of MLDataTable.ParsingOptions(__src);
        outlined release of MLDataTable.ParsingOptions(v45);
        memcpy(__dst, __src, sizeof(__dst));
        MLDataTable.init(contentsOf:options:)(v71, __dst);
        v33 = v67;
        v34 = v68;
        specialized Dictionary.subscript.getter(0x5F65727574616566, 0xEE006E6D756C6F63, a1);
        if (__dst[3])
        {
          if (!swift_dynamicCast(&v67, __dst, v69, &type metadata for String, 6))
          {
            outlined consume of Result<_DataTable, Error>(v33, v34);
LABEL_49:
            a1;
            goto LABEL_50;
          }

          v64 = v67;
          v71 = v68;
          specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
          if (__dst[3])
          {
            if (swift_dynamicCast(&v67, __dst, v69, &type metadata for String, 6))
            {
              v65 = v67;
              v35 = v68;
              specialized Dictionary.subscript.getter(0x6574656D61726170, 0xEA00000000007372, a1);
              a1;
              if (__dst[3])
              {
                v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
                if (swift_dynamicCast(&v67, __dst, v69, v36, 6))
                {
                  MLSoundClassifier.FeatureExtractionParameters.init(dictionary:)(v67);
                  (*(v77 + 8))(v76, v70);
                  if (LOBYTE(__dst[4]) != 0xFF)
                  {
                    v37 = __dst[3];
                    v38 = __dst[1];
                    v39 = __dst[0];
                    LOBYTE(v67) = v34 & 1;
                    v74 = __dst[2] & 1;
                    v75 = __dst[4] & 1;
                    v18 = v66;
                    *v66 = v33;
                    *(v18 + 8) = v67;
                    *(v18 + 16) = v64;
                    *(v18 + 24) = v71;
                    *(v18 + 32) = v65;
                    *(v18 + 40) = v35;
                    *(v18 + 48) = v39;
                    *(v18 + 56) = v38;
                    *(v18 + 64) = v74;
                    *(v18 + 72) = v37;
                    *(v18 + 80) = v75;
                    v8 = v73;
                    swift_storeEnumTagMultiPayload(v18, v73, 3);
                    v3 = v72;
                    goto LABEL_23;
                  }

                  v35;
                  v71;
                  outlined consume of Result<_DataTable, Error>(v33, v34);
LABEL_52:
                  v22 = 1;
                  v3 = v72;
                  v8 = v73;
                  return __swift_storeEnumTagSinglePayload(v3, v22, 1, v8);
                }

                outlined consume of Result<_DataTable, Error>(v33, v34);
                v35;
                v71;
              }

              else
              {
                outlined consume of Result<_DataTable, Error>(v33, v34);
                v35;
                v71;
                outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(__dst, &demangling cache variable for type metadata for Any?);
              }

              v41 = v76;
              v42 = v70;
              v40 = v77;
LABEL_51:
              (*(v40 + 8))(v41, v42);
              goto LABEL_52;
            }

            outlined consume of Result<_DataTable, Error>(v33, v34);
            a1;
            LOBYTE(a1) = v71;
            goto LABEL_49;
          }

          outlined consume of Result<_DataTable, Error>(v33, v34);
          a1;
          LOBYTE(a1) = v71;
        }

        else
        {
          outlined consume of Result<_DataTable, Error>(v33, v34);
        }

        a1;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(__dst, &demangling cache variable for type metadata for Any?);
LABEL_50:
        v40 = v77;
        v41 = v76;
        v42 = v32;
        goto LABEL_51;
      }

      a1;
      v8 = v73;
    }

    else
    {
      a1;
    }

    v4 = v77;
  }

  else
  {
    a1;
  }

  (*(v4 + 8))(v76, v70);
LABEL_14:
  v22 = 1;
  return __swift_storeEnumTagSinglePayload(v3, v22, 1, v8);
}

uint64_t MLSoundClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = v2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v39 = &v37;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.DataSource?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v38 = &v37;
  v12 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v40 = &v37;
  v52 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v16 = *(*(v52 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v47 = &v37;
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v20 & 1) == 0)
  {
    goto LABEL_9;
  }

  v51 = v3;
  outlined init with copy of Any(*(a1 + 56) + 32 * v19, &v41);
  v49 = (&type metadata for Any + 8);
  if (!swift_dynamicCast(&v45, &v41, &type metadata for Any + 8, &type metadata for String, 6))
  {
    v3 = v51;
    goto LABEL_9;
  }

  v21 = v46;
  if (v45 ^ 0x656E6F6E | v46 ^ 0xE400000000000000)
  {
    v48 = v45;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)(1701736302, 0xE400000000000000, v45, v46, 0) & 1) == 0)
    {
      if (!(v48 ^ 0x756F735F61746164 | v21 ^ 0xEB00000000656372) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x756F735F61746164, 0xEB00000000656372, v48, v21, 0) & 1) != 0)
      {
        v21;
        specialized Dictionary.subscript.getter(1635017060, 0xE400000000000000, a1);
        a1;
        if (v44)
        {
          v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
          if (swift_dynamicCast(&v45, &v41, v49, v27, 6))
          {
            v49 = v45;
            v28 = v39;
            (*(v5 + 16))(v39, v50, v4);
            v29 = v38;
            MLSoundClassifier.DataSource.init(dictionary:tableFile:)(v49, v28);
            (*(v5 + 8))(v50, v4);
            v30 = v29;
            v22 = 1;
            if (__swift_getEnumTagSinglePayload(v30, 1, v12) == 1)
            {
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for MLSoundClassifier.DataSource?);
              v25 = 1;
              v3 = v51;
              goto LABEL_11;
            }

            v34 = v30;
            v35 = v40;
            outlined init with take of MLClassifierMetrics(v34, v40, type metadata accessor for MLSoundClassifier.DataSource);
            v36 = v35;
            v24 = v47;
            outlined init with take of MLClassifierMetrics(v36, v47, type metadata accessor for MLSoundClassifier.DataSource);
LABEL_29:
            v23 = v52;
            goto LABEL_7;
          }
        }

        else
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v41, &demangling cache variable for type metadata for Any?);
        }

        v3 = v51;
        (*(v5 + 8))(v50, v4);
        goto LABEL_10;
      }

      if (!(v48 ^ 0x74696C7073 | v21 ^ 0xE500000000000000))
      {
        v21;
        v3 = v51;
        goto LABEL_24;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)(0x74696C7073, 0xE500000000000000, v48, v21, 0);
      v21;
      v3 = v51;
      if (v31)
      {
LABEL_24:
        specialized Dictionary.subscript.getter(1635017060, 0xE400000000000000, a1);
        a1;
        if (v44)
        {
          v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
          if (swift_dynamicCast(&v45, &v41, v49, v32, 6))
          {
            MLSplitStrategy.init(dictionary:)(v45);
            (*(v5 + 8))(v50, v4);
            if (!v43)
            {
              v33 = v42;
              v24 = v47;
              *v47 = v41;
              *(v24 + 16) = v33;
              *(v24 + 17) = HIBYTE(v33) & 1;
              v22 = 0;
              goto LABEL_29;
            }

LABEL_10:
            v25 = 1;
LABEL_11:
            v23 = v52;
            return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
          }
        }

        else
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v41, &demangling cache variable for type metadata for Any?);
        }

        v23 = v52;
        (*(v5 + 8))(v50, v4);
        v25 = 1;
        return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
      }

LABEL_9:
      (*(v5 + 8))(v50, v4);
      a1;
      goto LABEL_10;
    }
  }

  (*(v5 + 8))(v50, v4);
  a1;
  v21;
  v22 = 3;
  v23 = v52;
  v24 = v47;
LABEL_7:
  swift_storeEnumTagMultiPayload(v24, v23, v22);
  v3 = v51;
  outlined init with take of MLClassifierMetrics(v24, v51, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v25 = 0;
  return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
}

uint64_t MLSoundClassifier.DataSource.dictionary.getter()
{
  v1 = v0;
  v55 = type metadata accessor for URL(0);
  v2 = *(v55 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  outlined init with copy of MLTrainingSessionParameters(v1, &v35, type metadata accessor for MLSoundClassifier.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v35, v6))
  {
    case 0u:
      v10 = v55;
      v56 = v2;
      (*(v2 + 32))(&v35, &v35, v55);
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      inited = swift_initStackObject(v11, v45);
      inited[2] = 2;
      inited[3] = 4;
      inited[4] = 1684957547;
      inited[5] = 0xE400000000000000;
      v13 = "session_id_column" + 0x8000000000000000;
      inited[9] = &type metadata for String;
      inited[6] = 0xD000000000000013;
      goto LABEL_9;
    case 1u:
      v10 = v55;
      v56 = v2;
      (*(v2 + 32))(&v35, &v35, v55);
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      inited = swift_initStackObject(v11, v44);
      inited[2] = 2;
      inited[3] = 4;
      inited[4] = 1684957547;
      inited[5] = 0xE400000000000000;
      inited[9] = &type metadata for String;
      inited[6] = 0x5F64656C6562616CLL;
      v13 = 0xED000073656C6966;
LABEL_9:
      inited[7] = v13;
      inited[10] = 1752457584;
      inited[11] = 0xE400000000000000;
      v32 = URL.path.getter(v11);
      inited[15] = &type metadata for String;
      inited[12] = v32;
      inited[13] = v33;
      v31 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      (*(v56 + 8))(&v35, v10);
      return v31;
    case 2u:
      v22 = v35;
      v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v24 = swift_initStackObject(v23, v43);
      *(v24 + 16) = 2;
      *(v24 + 24) = 4;
      *(v24 + 32) = 1684957547;
      *(v24 + 40) = 0xE400000000000000;
      *(v24 + 72) = &type metadata for String;
      strcpy((v24 + 48), "files_by_label");
      *(v24 + 63) = -18;
      *(v24 + 80) = 0x73656C6966;
      *(v24 + 88) = 0xE500000000000000;
      v25 = specialized _NativeDictionary.mapValues<A>(_:)(v22);
      v22;
      *(v24 + 120) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : [String]]);
      *(v24 + 96) = v25;
      v26 = &type metadata for Any + 8;
      v27 = v24;
      return Dictionary.init(dictionaryLiteral:)(v27, &type metadata for String, v26, &protocol witness table for String);
    case 3u:
      v54 = v37;
      v16 = v38;
      v52 = v39[0];
      v53 = v39[1];
      v55 = v39[2];
      v56 = v39[3];
      v19 = v40;
      v51 = v41;
      v20 = v42;
      outlined consume of Result<_DataTable, Error>(v35, v36);
      goto LABEL_6;
    case 4u:
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      v15 = v14[12];
      v54 = *(&v35 + v15);
      v16 = *(&v35 + v15 + 8);
      v17 = v14[16];
      v52 = *(&v35 + v17);
      v53 = *(&v35 + v17 + 8);
      v18 = v14[20];
      v55 = *(&v35 + v18);
      v56 = *(&v35 + v18 + 8);
      v19 = *(&v37 + v18);
      v51 = *(&v39[-1] + v18);
      v20 = *(v39 + v18);
      v21 = type metadata accessor for DataFrame(0);
      (*(*(v21 - 8) + 8))(&v35, v21);
LABEL_6:
      v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v29 = swift_initStackObject(v28, &v37);
      *(v29 + 16) = 4;
      *(v29 + 24) = 8;
      *(v29 + 32) = 1684957547;
      *(v29 + 40) = 0xE400000000000000;
      *(v29 + 72) = &type metadata for String;
      *(v29 + 48) = 0x7365727574616566;
      *(v29 + 56) = 0xE800000000000000;
      strcpy((v29 + 80), "feature_column");
      *(v29 + 95) = -18;
      *(v29 + 120) = &type metadata for String;
      *(v29 + 96) = v54;
      *(v29 + 104) = v16;
      strcpy((v29 + 128), "label_column");
      *(v29 + 141) = 0;
      *(v29 + 142) = -5120;
      *(v29 + 168) = &type metadata for String;
      *(v29 + 144) = v52;
      *(v29 + 152) = v53;
      *(v29 + 176) = 0x6574656D61726170;
      *(v29 + 184) = 0xEA00000000007372;
      v46 = v55;
      v47 = v56;
      v48 = v19 & 1;
      v49 = v51;
      v50 = v20 & 1;
      v30 = MLSoundClassifier.FeatureExtractionParameters.dictionary.getter();
      *(v29 + 216) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
      *(v29 + 192) = v30;
      v26 = &type metadata for Any + 8;
      v27 = v29;
      return Dictionary.init(dictionaryLiteral:)(v27, &type metadata for String, v26, &protocol witness table for String);
    case 5u:
      JUMPOUT(0x1A98C8);
  }
}

uint64_t MLSoundClassifier.ModelParameters.ValidationData.dictionary.getter()
{
  v1 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of MLTrainingSessionParameters(v0, &v26, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  switch(swift_getEnumCaseMultiPayload(&v26, v5))
  {
    case 0u:
      v9 = v27;
      v10 = v28;
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v35 = v26;
      inited = swift_initStackObject(v11, &v26);
      inited[2] = 2;
      inited[3] = 4;
      inited[4] = 1684957547;
      inited[5] = 0xE400000000000000;
      inited[9] = &type metadata for String;
      inited[6] = 0x74696C7073;
      inited[7] = 0xE500000000000000;
      inited[10] = 1635017060;
      inited[11] = 0xE400000000000000;
      v32 = v35;
      v33 = v9;
      v34 = v10;
      v13 = MLSplitStrategy.dictionary.getter();
      inited[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
      inited[12] = v13;
      v14 = &type metadata for Any + 8;
      v15 = inited;
      goto LABEL_5;
    case 1u:
      outlined init with take of MLClassifierMetrics(&v26, &v26, type metadata accessor for MLSoundClassifier.DataSource);
      v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v23 = swift_initStackObject(v22, v30);
      v23[2] = 2;
      v23[3] = 4;
      v23[4] = 1684957547;
      v23[5] = 0xE400000000000000;
      v23[9] = &type metadata for String;
      v23[6] = 0x756F735F61746164;
      v23[7] = 0xEB00000000656372;
      v23[10] = 1635017060;
      v23[11] = 0xE400000000000000;
      v24 = MLSoundClassifier.DataSource.dictionary.getter();
      v23[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
      v23[12] = v24;
      v19 = Dictionary.init(dictionaryLiteral:)(v23, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      goto LABEL_7;
    case 2u:
      swift_storeEnumTagMultiPayload(&v26, v1, 2);
      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v17 = swift_initStackObject(v16, v29);
      v17[2] = 2;
      v17[3] = 4;
      v17[4] = 1684957547;
      v17[5] = 0xE400000000000000;
      v17[9] = &type metadata for String;
      v17[6] = 0x756F735F61746164;
      v17[7] = 0xEB00000000656372;
      v17[10] = 1635017060;
      v17[11] = 0xE400000000000000;
      v18 = MLSoundClassifier.DataSource.dictionary.getter();
      v17[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
      v17[12] = v18;
      v19 = Dictionary.init(dictionaryLiteral:)(v17, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
LABEL_7:
      outlined destroy of MLActivityClassifier.ModelParameters(&v26, type metadata accessor for MLSoundClassifier.DataSource);
      break;
    case 3u:
      v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v21 = swift_initStackObject(v20, v31);
      v21[2] = 1;
      v21[3] = 2;
      v21[4] = 1684957547;
      v21[5] = 0xE400000000000000;
      v21[9] = &type metadata for String;
      v21[6] = 1701736302;
      v21[7] = 0xE400000000000000;
      v14 = &type metadata for Any + 8;
      v15 = v21;
LABEL_5:
      v19 = Dictionary.init(dictionaryLiteral:)(v15, &type metadata for String, v14, &protocol witness table for String);
      break;
  }

  return v19;
}

uint64_t MLSoundClassifier.ModelParameters.ModelAlgorithmType.dictionary.getter()
{
  v24 = *v0;
  v23 = v0[2];
  v1 = *(v0 + 8);
  v2 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v21 = &type metadata for String;
  if (v1)
  {
    *&v20 = 0xD000000000000013;
    *(&v20 + 1) = "time_window_size" + 0x8000000000000000;
    outlined init with take of Any(&v20, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v2);
    v25 = v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 1684957547, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v4 = v25;
    v21 = &type metadata for String;
    *&v20 = 0x646E756F73;
    *(&v20 + 1) = 0xE500000000000000;
    outlined init with take of Any(&v20, v22);
    v5 = swift_isUniquelyReferenced_nonNull_native(v4);
    v25 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 1701869940, 0xE400000000000000, v5);
    v6 = v25;
    v21 = &type metadata for Int;
    *&v20 = v24;
    outlined init with take of Any(&v20, v22);
    v7 = swift_isUniquelyReferenced_nonNull_native(v6);
    v25 = v6;
  }

  else
  {
    *&v20 = 0x687369676776;
    *(&v20 + 1) = 0xE600000000000000;
    outlined init with take of Any(&v20, v22);
    v8 = swift_isUniquelyReferenced_nonNull_native(v2);
    v25 = v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 1684957547, 0xE400000000000000, v8);
    v9 = v25;
    v21 = &type metadata for Int;
    *&v20 = v24;
    outlined init with take of Any(&v20, v22);
    v7 = swift_isUniquelyReferenced_nonNull_native(v9);
    v25 = v9;
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 0x6E6F6973726576, 0xE700000000000000, v7);
  v10 = v25;
  v11 = v23;
  v21 = &type metadata for String;
  if (v23)
  {
    *&v20 = 0xD000000000000015;
    *(&v20 + 1) = "audio_feature_print" + 0x8000000000000000;
    outlined init with take of Any(&v20, v22);

    v12 = swift_isUniquelyReferenced_nonNull_native(v10);
    v25 = v10;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 0x6966697373616C63, 0xEA00000000007265, v12);
    v13 = v25;
    v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
    *&v20 = v11;
    outlined init with take of Any(&v20, v22);
    v14 = swift_isUniquelyReferenced_nonNull_native(v13);
    v25 = v13;
    v15 = v14;
    v16 = 0x69735F726579616CLL;
    v17 = 0xEB0000000073657ALL;
  }

  else
  {
    *&v20 = 0xD000000000000012;
    *(&v20 + 1) = "multilayer_perceptron" + 0x8000000000000000;
    outlined init with take of Any(&v20, v22);
    v18 = swift_isUniquelyReferenced_nonNull_native(v10);
    v25 = v10;
    v15 = v18;
    v16 = 0x6966697373616C63;
    v17 = 0xEA00000000007265;
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v16, v17, v15);
  return v25;
}

void *MLSoundClassifier.DataSource.table.getter(__m128 a1)
{
  v37 = v1;
  v3 = type metadata accessor for DataFrame(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v36 = &v29;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v35 = &v29;
  v10 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLTrainingSessionParameters(v2, &v29, type metadata accessor for MLSoundClassifier.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v29, v10))
  {
    case 0u:
    case 1u:
      v14 = type metadata accessor for URL(0);
      (*(*(v14 - 8) + 8))(&v29, v14);
      goto LABEL_5;
    case 2u:
      outlined destroy of MLActivityClassifier.ModelParameters(&v29, type metadata accessor for MLSoundClassifier.DataSource);
LABEL_5:
      result = v37;
      *v37 = 0;
      *(result + 8) = -1;
      break;
    case 3u:
      v23 = v29;
      v24 = v30;
      v25 = v34;
      v32;
      v25;
      result = v37;
      *v37 = v23;
      *(result + 8) = v24;
      break;
    case 4u:
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      v16 = *(v15 + 48);
      v32 = *(&v29 + v16);
      v17 = *(&v29 + v16 + 8);
      *(&v29 + *(v15 + 64) + 8);
      v18 = v35;
      v31 = v3;
      v30 = v4;
      (*(v4 + 32))(v35, &v29, v3);
      static MLSoundClassifier.DataSource.reformatFeatures(dataFrame:featureColumn:)(v18, v32, v17);
      v19 = v36;
      v17;
      v20 = v35;
      v21 = v31;
      v22 = v30;
      *a1.i64 = (*(v30 + 16))(v19, v35, v31);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v19, 0, a1);
      (*(v22 + 8))(v20, v21);
      result = v33;
      v27 = v34;
      v28 = v37;
      *v37 = v33;
      *(v28 + 8) = v27;
      break;
  }

  return result;
}

uint64_t MLSoundClassifier.FeatureExtractionParameters.dictionary.getter()
{
  v11 = *v0;
  v1 = v0[3];
  v2 = *(v0 + 32);
  if (*(v0 + 16))
  {
    v3 = 0x3FEF333333333333;
  }

  else
  {
    v3 = v0[1];
  }

  v12 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v4, v8);
  *(inited + 16) = 3;
  *(inited + 24) = 6;
  strcpy((inited + 32), "overlap_factor");
  *(inited + 47) = -18;
  *(inited + 72) = &type metadata for Double;
  *(inited + 48) = v11;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = "sertion %d for CreateML\n" + 0x8000000000000000;
  *(inited + 120) = &type metadata for Double;
  *(inited + 96) = v12;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = "logistic_regressor" + 0x8000000000000000;
  v9 = v1;
  v10 = v2;
  v6 = MLSoundClassifier.ModelParameters.FeatureExtractorType.dictionary.getter();
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  *(inited + 144) = v6;
  return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
}

uint64_t MLSoundClassifier.FeatureExtractionParameters.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  specialized Dictionary.subscript.getter(0x5F70616C7265766FLL, 0xEE00726F74636166, a1);
  if (!v11)
  {
    goto LABEL_9;
  }

  if (!swift_dynamicCast(v12, &v9, &type metadata for Any + 8, &type metadata for Double, 6))
  {
LABEL_11:
    result = a1;
    goto LABEL_12;
  }

  v7 = v12[0];
  specialized Dictionary.subscript.getter(0xD000000000000011, ("logistic_regressor" + 0x8000000000000000), a1);
  if (!v11)
  {
LABEL_9:
    a1;
    goto LABEL_10;
  }

  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  if (!swift_dynamicCast(v12, &v9, &type metadata for Any + 8, v3, 6))
  {
    goto LABEL_11;
  }

  MLSoundClassifier.ModelParameters.FeatureExtractorType.init(dictionary:)(v12[0]);
  v4 = v10;
  if (v10 == -1)
  {
    goto LABEL_11;
  }

  v8 = v9;
  specialized Dictionary.subscript.getter(0xD000000000000010, ("sertion %d for CreateML\n" + 0x8000000000000000), a1);
  a1;
  if (!v11)
  {
LABEL_10:
    result = outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v9, &demangling cache variable for type metadata for Any?);
    goto LABEL_12;
  }

  result = swift_dynamicCast(v12, &v9, &type metadata for Any + 8, &type metadata for Double, 6);
  if (result)
  {
    v6 = v12[0];
    *v2 = v7;
    *(v2 + 8) = v6;
    *(v2 + 16) = 0;
    result = v8;
    *(v2 + 24) = v8;
    *(v2 + 32) = v4 & 1;
    return result;
  }

LABEL_12:
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 32) = -1;
  return result;
}

uint64_t MLSoundClassifier.ModelParameters.FeatureExtractorType.dictionary.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    v2 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
    v13 = &type metadata for String;
    *&v12 = 0xD000000000000011;
    *(&v12 + 1) = "feature_extractor" + 0x8000000000000000;
    v15 = v1;
    outlined init with take of Any(&v12, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v2);
    v16 = v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 1684957547, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v4 = v16;
    v13 = &type metadata for String;
    *&v12 = 0x646E756F73;
    *(&v12 + 1) = 0xE500000000000000;
    outlined init with take of Any(&v12, v14);
    v5 = swift_isUniquelyReferenced_nonNull_native(v4);
    v16 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 1701869940, 0xE400000000000000, v5);
    v6 = v16;
    v13 = &type metadata for Int;
    *&v12 = v15;
    outlined init with take of Any(&v12, v14);
    v7 = swift_isUniquelyReferenced_nonNull_native(v6);
    v16 = v6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0x6E6F697369766572, 0xE800000000000000, v7);
    return v16;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    inited = swift_initStackObject(v9, v11);
    inited[2] = 2;
    inited[3] = 4;
    inited[4] = 1684957547;
    inited[5] = 0xE400000000000000;
    inited[9] = &type metadata for String;
    inited[6] = 0x687369676776;
    inited[7] = 0xE600000000000000;
    inited[10] = 0x6E6F697369766572;
    inited[11] = 0xE800000000000000;
    inited[15] = &type metadata for Int;
    inited[12] = v1;
    return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  }
}

char MLSoundClassifier.ModelParameters.FeatureExtractorType.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  specialized Dictionary.subscript.getter(0x6E6F697369766572, 0xE800000000000000, a1);
  if (v13)
  {
    if (swift_dynamicCast(&v14, v12, &type metadata for Any + 8, &type metadata for Int, 6))
    {
      v3 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, &demangling cache variable for type metadata for Any?);
  }

  v3 = 1;
LABEL_6:
  specialized Dictionary.subscript.getter(1684957547, 0xE400000000000000, a1);
  if (!v13)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, &demangling cache variable for type metadata for Any?);
    goto LABEL_12;
  }

  if (!swift_dynamicCast(&v14, v12, &type metadata for Any + 8, &type metadata for String, 6))
  {
LABEL_12:
    a1;
    goto LABEL_13;
  }

  v16 = v2;
  v4 = v14;
  v5 = v15;
  if (v14 ^ 0x687369676776 | v15 ^ 0xE600000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x687369676776, 0xE600000000000000, v14, v15, 0) & 1) == 0)
  {
    v7 = &aAudiofeaturepr[-32] | 0x8000000000000000;
    if (!(v4 ^ 0xD000000000000011 | v7 ^ v5))
    {
      v5;
      goto LABEL_18;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000011, v7, v4, v5, 0);
    v5;
    if (v8)
    {
LABEL_18:
      specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, a1);
      a1;
      if (v13)
      {
        if (swift_dynamicCast(&v14, v12, &type metadata for Any + 8, &type metadata for String, 6))
        {
          v9 = v14;
          v10 = v15;
          v2 = v16;
LABEL_23:
          if (!(v9 ^ 0x646E756F73 | v10 ^ 0xE500000000000000))
          {
            v10;
            result = 1;
            goto LABEL_14;
          }

          v11 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x646E756F73, 0xE500000000000000, 0);
          v10;
          result = 1;
          if (v11)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }
      }

      else
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, &demangling cache variable for type metadata for Any?);
      }

      v2 = v16;
      v9 = 0x646E756F73;
      v10 = 0xE500000000000000;
      goto LABEL_23;
    }

    a1;
    v2 = v16;
LABEL_13:
    result = -1;
    v3 = 0;
    goto LABEL_14;
  }

  v5;
  a1;
  result = 0;
  v2 = v16;
LABEL_14:
  *v2 = v3;
  *(v2 + 8) = result;
  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v6 = *v3;

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v9 = v8;
  result = v6;
  if (v9)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v4);
    v13 = *v4;
    v12 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Any>);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);
    *(*(v13 + 48) + 16 * v7 + 8);
    outlined init with take of Any((*(v13 + 56) + 32 * v7), v5);
    result = _NativeDictionary._delete(at:)(v7, v13, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
    *v4 = v13;
  }

  else
  {
    v5[1] = 0;
    *v5 = 0;
  }

  return result;
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, a2, &demangling cache variable for type metadata for _NativeDictionary<String, Tensor>, &type metadata accessor for Tensor);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = v5;
  v7 = v4;
  v8 = *v5;

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v11 = v10;
  v8;
  if (v11)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v6);
    v18 = *v6;
    v20 = v7;
    v13 = *(*v6 + 24);
    __swift_instantiateConcreteTypeFromMangledName(a3);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v13);
    *(*(v18 + 48) + 16 * v9 + 8);
    v14 = *(v18 + 56);
    v15 = a4(0);
    (*(*(v15 - 8) + 32))(v20, v14 + v9 * *(*(v15 - 8) + 72), v15);
    _NativeDictionary._delete(at:)(v9, v18, &type metadata for String, v15, &protocol witness table for String);
    *v6 = v18;
    return __swift_storeEnumTagSinglePayload(v20, 0, 1, v15);
  }

  else
  {
    v17 = a4(0);
    return __swift_storeEnumTagSinglePayload(v7, 1, 1, v17);
  }
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v5 = *v2;

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v8 = v7;
  result = v5;
  if (v8)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
    v15 = *v3;
    v16 = v4;
    v11 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<CodingUserInfoKey, Sendable>);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11);
    v12 = *(v15 + 48);
    v13 = type metadata accessor for CodingUserInfoKey(0);
    (*(*(v13 - 8) + 8))(v12 + v6 * *(*(v13 - 8) + 72), v13);
    outlined init with take of Any((*(v15 + 56) + 32 * v6), v16);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    result = _NativeDictionary._delete(at:)(v6, v15, v13, v14, &protocol witness table for CodingUserInfoKey);
    *v3 = v15;
  }

  else
  {
    v4[1] = 0;
    *v4 = 0;
  }

  return result;
}

{
  v3 = v2;
  v4 = v1;
  v5 = *v2;

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v8 = v7;
  result = v5;
  if (v8)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
    v12 = *v3;
    v11 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<AnyHashable, Any>);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11);
    outlined destroy of AnyHashable(*(v12 + 48) + 40 * v6);
    outlined init with take of Any((*(v12 + 56) + 32 * v6), v4);
    result = _NativeDictionary._delete(at:)(v6, v12, &type metadata for AnyHashable, &type metadata for Any + 8, &protocol witness table for AnyHashable);
    *v3 = v12;
  }

  else
  {
    v4[1] = 0;
    *v4 = 0;
  }

  return result;
}

void EventCollector.add(_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  specialized NSLocking.withLock<A>(_:)(partial apply for closure #1 in EventCollector.add(_:));
}

uint64_t EventCollector.init()()
{
  v1 = objc_allocWithZone(NSLock);
  *(v0 + 16) = [v1 init];
  *(v0 + 24) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t closure #1 in EventCollector.add(_:)(uint64_t a1, uint64_t a2)
{
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v2 = *(*(a1 + 24) + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v2);
  v3 = *(a1 + 24);
  *(v3 + 16) = v2 + 1;
  v4 = type metadata accessor for Event(0);
  result = (*(*(v4 - 8) + 16))(v3 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)) + *(*(v4 - 8) + 72) * v2, a2, v4);
  *(a1 + 24) = v3;
  return result;
}

uint64_t closure #1 in closure #1 in EventCollector.getLast<A>(metric:type:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = Event.metrics.getter();
  v4 = v3;
  specialized Dictionary.subscript.getter(a2, v3);
  v4;
  LOBYTE(v2) = v7 != 0;
  outlined destroy of Sendable?(v6);
  return v2;
}

uint64_t outlined destroy of Sendable?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

id @nonobjc VNCoreMLModel.__allocating_init(for:)(id a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = 0;
  v2 = [ObjCClassFromMetadata modelForMLModel:a1 error:&v7];
  v3 = v2;
  v4 = v7;
  if (v3)
  {
    v7;
  }

  else
  {
    v6 = v7;
    _convertNSErrorToError(_:)(v4);

    swift_willThrow();
  }

  return v3;
}

void *specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, VNRecognizedObjectObservation_ptr, a3, a4);
}

{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, VNPixelBufferObservation_ptr, a3, a4);
}

{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, VNRecognizedPointsObservation_ptr, a3, a4);
}

void *specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v17 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of URL?(i, v12, &demangling cache variable for type metadata for Any?);
      v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
      if (!swift_dynamicCast(&v13, v12, v4, &type metadata for String, 6))
      {
        break;
      }

      v5 = v13;
      v6 = v14;
      v17 = v2;
      v7 = v2[2];
      v8 = v2[3];
      v9 = v7 + 1;
      if (v8 >> 1 <= v7)
      {
        v15 = v14;
        v16 = v13;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v8 >= 2, v9, 1);
        v6 = v15;
        v5 = v16;
        v2 = v17;
      }

      v2[2] = v9;
      v10 = 2 * v7;
      v2[v10 + 4] = v5;
      v2[v10 + 5] = v6;
      if (!--v1)
      {
        return v2;
      }
    }

    return 0;
  }

  return v2;
}

void *specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized Array._getCount()(a1, a2, a3, a4);
  specialized ContiguousArray.reserveCapacity(_:)(v4);
  v14 = specialized Array._getCount()(a1, a2, v5, v6);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = 0;
  while (1)
  {
    v8 = (a1 & 0xC000000000000003) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)(v7) : *(a1 + 8 * v7 + 32);
    v9 = v8;
    if (__OFADD__(1, v7++))
    {
      BUG();
    }

    v11 = objc_opt_self(*a2);
    if (!swift_dynamicCastObjCClass(v9, v11))
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v9);
    v12 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v12);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v12);
    specialized ContiguousArray._endMutation()(v12);
    if (v7 == v14)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return 0;
}

Swift::String __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLImageClassifier.prediction(from:)(CGImageRef from)
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v4);
  v5 = MLImageClassifier.performRequest(url:cgImage:)(v9, from);
  v7 = v6;
  outlined destroy of URL?(v9);
  result._countAndFlagsBits = v5;
  result._object = v7;
  return result;
}

uint64_t MLImageClassifier.performRequest(url:cgImage:)(void *a1, void *a2)
{
  v79 = v2;
  v73[0] = a2;
  v78 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v77 = &v71;
  v76 = type metadata accessor for URL(0);
  v7 = *(v76 - 1);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v72 = &v71;
  v11 = alloca(v8);
  v12 = alloca(v8);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNCoreMLModel, VNCoreMLModel_ptr);
  v13 = *v3;
  v14 = v79;
  v15 = @nonobjc VNCoreMLModel.__allocating_init(for:)(v13);
  if (v14)
  {
    return v7;
  }

  v16 = v15;
  v75 = v7;
  v17 = objc_allocWithZone(VNCoreMLRequest);
  v79 = [v17 initWithModel:v16];
  v18 = v16;
  v19 = v77;
  outlined init with copy of URL?(v78, v77, &demangling cache variable for type metadata for URL?);
  if (__swift_getEnumTagSinglePayload(v19, 1, v76) == 1)
  {
    v20 = v18;
    outlined destroy of URL?(v77);
    v21 = v73[0];
    if (!v73[0])
    {
      v60 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v60, 0, 0);
      *v61 = 0xD000000000000019;
      *(v61 + 8) = "the vision request." + 0x8000000000000000;
      *(v61 + 16) = 0;
      *(v61 + 32) = 0;
      *(v61 + 48) = 2;
      swift_willThrow();
      v7 = &objc_release;

      v59 = v20;
      goto LABEL_16;
    }

    v74 = 0;
    v78 = v18;
    v22 = type metadata accessor for VNImageOption(0);
    v23 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNImageOption and conformance VNImageOption, type metadata accessor for VNImageOption, &protocol conformance descriptor for VNImageOption);
    v24 = v21;
    v25 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v22, &type metadata for Any + 8, v23);
    objc_allocWithZone(VNImageRequestHandler);
    v26 = @nonobjc VNImageRequestHandler.init(cgImage:options:)(v24, v25);
  }

  else
  {
    v74 = 0;
    v78 = v18;
    (*(v75 + 32))(&v71, v77, v76);
    v27 = objc_opt_self(NSFileManager);
    v28 = [v27 defaultManager];
    v29 = v28;
    v77 = &v71;
    URL.path.getter(v28);
    v31 = v30;
    v32 = String._bridgeToObjectiveC()();
    v31;
    v33 = [v29 fileExistsAtPath:v32];

    if (!v33)
    {
      *&v80 = 0;
      *(&v80 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      SBYTE8(v80);
      *&v80 = 0xD000000000000012;
      *(&v80 + 1) = "Input image is not valid." + 0x8000000000000000;
      v62 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v63 = v77;
      v64 = v76;
      v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(v76, v62);
      object = v65._object;
      String.append(_:)(v65);
      object;
      v67._object = "Input image URL: '" + 0x8000000000000000;
      v67._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v67);
      *v73 = v80;
      v68 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v68, 0, 0);
      *v69 = *v73;
      *(v69 + 16) = 0;
      *(v69 + 32) = 0;
      *(v69 + 48) = 2;
      swift_willThrow();
      v7 = &objc_release;

      (*(v75 + 8))(v63, v64);
      return v7;
    }

    v34 = v72;
    v35 = v76;
    v36 = v75;
    (*(v75 + 16))(v72, v77, v76);
    v37 = type metadata accessor for VNImageOption(0);
    v38 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNImageOption and conformance VNImageOption, type metadata accessor for VNImageOption, &protocol conformance descriptor for VNImageOption);
    v39 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v37, &type metadata for Any + 8, v38);
    objc_allocWithZone(VNImageRequestHandler);
    v26 = @nonobjc VNImageRequestHandler.init(url:options:)(v34, v39);
    (*(v36 + 8))(v77, v35);
  }

  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
  v41 = swift_allocObject(v40, 40, 7);
  v42 = v41;
  v41[2] = 1;
  v41[3] = 3;
  v43 = v79;
  v41[4] = v79;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNRequest, VNRequest_ptr);
  v79 = v43;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v42;
  *&v80 = 0;
  v45 = v26;
  v46 = [v26 performRequests:isa error:&v80];

  v7 = v80;
  if (!v46)
  {
    v58 = v80;
    _convertNSErrorToError(_:)(v7);
    v7 = &objc_release;

    swift_willThrow();
    v59 = v78;
LABEL_16:

    return v7;
  }

  v76 = v45;
  v47 = v79;
  v7;
  v79 = v47;
  v48 = outlined bridged method (ob) of @objc VNRequest.results.getter(v47);
  if (v48 && (v51 = v48, v7 = specialized _arrayConditionalCast<A, B>(_:)(v48, VNClassificationObservation_ptr, v49, v50), v51, v7))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v7 & 0xC000000000000003) == 0, v7);
    if ((v7 & 0xC000000000000003) != 0)
    {
      v52 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
    }

    else
    {
      v52 = *(v7 + 32);
    }

    v53 = v52;
    v7;
    v54 = [v53 identifier];
    v55 = v54;

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)(v55);
  }

  else
  {
    v56 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v56, 0, 0);
    *v57 = 0xD000000000000033;
    *(v57 + 8) = "ventCollector" + 0x8000000000000000;
    *(v57 + 16) = 0;
    *(v57 + 32) = 0;
    *(v57 + 48) = 0;
    swift_willThrow();
  }

  return v7;
}

uint64_t MLImageClassifier.prediction(from:)(uint64_t a1)
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = type metadata accessor for URL(0);
  (*(*(v4 - 8) + 16))(&v7, a1, v4);
  __swift_storeEnumTagSinglePayload(&v7, 0, 1, v4);
  v5 = MLImageClassifier.performRequest(url:cgImage:)(&v7, 0);
  outlined destroy of URL?(&v7);
  return v5;
}

void *MLImageClassifier.predictions(from:)(uint64_t a1)
{
  v3 = v1;
  v4 = type metadata accessor for URL(0);
  v6 = v4;
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(a1 + 16);
  if (v11)
  {
    v24 = v2;
    v26 = _swiftEmptyArrayStorage;
    v22 = v11;
    v28 = a1;
    v29 = &v20;
    specialized ContiguousArray.reserveCapacity(_:)(v11);
    v12 = ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v28;
    v21 = *(v7 + 16);
    v25 = v7;
    v23 = *(v7 + 72);
    while (1)
    {
      v13 = v29;
      v28 = v12;
      v21(v29, v12, v6);
      static ImageReader.read(url:)(v13);
      v27 = v3;
      if (v3)
      {
        break;
      }

      v14 = v29;
      (*(v25 + 8))(v29, v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v14);
      v15 = v26[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v15);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v15);
      specialized ContiguousArray._endMutation()(v15);
      v12 = v23 + v28;
      v16 = v22-- == 1;
      v3 = v27;
      if (v16)
      {
        v17 = v26;
        goto LABEL_7;
      }
    }

    (*(v25 + 8))(v29, v6);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_7:
    v18 = v3;
    v3 = MLImageClassifier.performRequests(_:)(v17);
    v17;
    v27 = v18;
  }

  return v3;
}

void *MLImageClassifier.performRequests(_:)(uint64_t a1)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNCoreMLModel, VNCoreMLModel_ptr);
  v3 = *v2;
  result = @nonobjc VNCoreMLModel.__allocating_init(for:)(v3);
  if (!v1)
  {
    v5 = result;
    v8[0] = _swiftEmptyArrayStorage;
    v6 = _objc_autoreleasePoolPush();
    closure #1 in MLImageClassifier.performRequests(_:)(v5, a1, v8, &v7);
    _objc_autoreleasePoolPop(v6);

    return v8[0];
  }

  return result;
}

NSURL *closure #1 in MLImageClassifier.performRequests(_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  v6 = objc_allocWithZone(VNCoreMLRequest);
  v7 = [v6 initWithModel:a1];
  v50 = specialized Array._getCount()(a2, "initWithModel:", v8, v9);
  if (v50)
  {
    v49 = v7;
    v52 = a4;

    v10 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000003) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)(v10);
      }

      else
      {
        v11 = *(v5 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = __OFADD__(1, v10);
      v14 = v10 + 1;
      if (v13)
      {
        BUG();
      }

      v48 = v14;
      v15 = type metadata accessor for VNImageOption(0);
      v16 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNImageOption and conformance VNImageOption, type metadata accessor for VNImageOption, &protocol conformance descriptor for VNImageOption);
      v17 = v12;
      v18 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v15, &type metadata for Any + 8, v16);
      objc_allocWithZone(VNImageRequestHandler);
      v53 = v17;
      v19 = @nonobjc VNImageRequestHandler.init(ciImage:options:)(v17, v18);
      v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
      v21 = swift_allocObject(v20, 40, 7);
      v21[2] = 1;
      v21[3] = 3;
      v21[4] = v49;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNRequest, VNRequest_ptr);
      v22 = v49;
      isa = Array._bridgeToObjectiveC()().super.isa;
      v21;
      v57 = 0;
      v54 = v19;
      LOBYTE(v21) = [v19 performRequests:isa error:&v57];

      v24 = v57;
      if (!v21)
      {
        break;
      }

      v25 = v22;
      v24;
      v51 = v25;
      v26 = outlined bridged method (ob) of @objc VNRequest.results.getter(v25);
      if (!v26 || (v29 = v26, v30 = specialized _arrayConditionalCast<A, B>(_:)(v26, VNClassificationObservation_ptr, v27, v28), v29, !v30))
      {
        a2;
        v42 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        v43 = v19;
        v44 = swift_allocError(&type metadata for MLCreateError, v42, 0, 0);
        *v45 = 0xD000000000000033;
        *(v45 + 8) = "ventCollector" + 0x8000000000000000;
        *(v45 + 16) = 0;
        *(v45 + 32) = 0;
        *(v45 + 48) = 0;
        v46 = v53;
        goto LABEL_23;
      }

      if ((v30 & 0xC000000000000003) != 0)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
      }

      else
      {
        if (!*(&dword_10 + (v30 & 0xFFFFFFFFFFFFF8)))
        {
          BUG();
        }

        v31 = *(v30 + 32);
      }

      v32 = v31;
      v30;
      v33 = [v32 identifier];
      v34 = v33;

      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)(v34);
      v36 = v35;

      v37 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*a3);
      *a3 = v37;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 16) + 1, 1, v37);
        *a3 = v37;
      }

      v39 = *(v37 + 16);
      if (*(v37 + 24) >> 1 <= v39)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v37 + 24) >= 2uLL, v39 + 1, 1, v37);
        *a3 = v37;
      }

      *(v37 + 16) = v39 + 1;
      v40 = 16 * v39;
      *(v37 + v40 + 32) = v55;
      *(v37 + v40 + 40) = v36;

      v10 = v48;
      v5 = a2;
      if (v48 == v50)
      {

        a2;
        return __stack_chk_guard;
      }
    }

    v47 = v57;
    a2;
    v44 = _convertNSErrorToError(_:)(v24);

    v46 = v54;
    v43 = v53;
LABEL_23:
    swift_willThrow();

    *v52 = v44;
    return __stack_chk_guard;
  }

  else
  {

    return __stack_chk_guard;
  }
}

id @nonobjc VNImageRequestHandler.init(url:options:)(uint64_t a1, uint64_t a2)
{
  URL._bridgeToObjectiveC()(v2);
  v5 = v4;
  type metadata accessor for VNImageOption(0);
  lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNImageOption and conformance VNImageOption, type metadata accessor for VNImageOption, &protocol conformance descriptor for VNImageOption);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a2;
  v7 = [v3 initWithURL:v5 options:isa];

  v8 = type metadata accessor for URL(0);
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id @nonobjc VNImageRequestHandler.init(ciImage:options:)(id a1, uint64_t a2)
{
  type metadata accessor for VNImageOption(0);
  lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNImageOption and conformance VNImageOption, type metadata accessor for VNImageOption, &protocol conformance descriptor for VNImageOption);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a2;
  v4 = [v2 initWithCIImage:a1 options:isa];

  return v4;
}

uint64_t outlined bridged method (ob) of @objc VNRequest.results.getter(id a1)
{
  v1 = [a1 results];
  v2 = v1;

  if (!v2)
  {
    return 0;
  }

  v3 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNObservation, VNObservation_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v2, v3);

  return v4;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(a3);
  (*(*(v3 - 8) + 16))(a2, a1, v3);
  return a2;
}

uint64_t MLGazetteer.ModelParameters.description.getter()
{
  v6 = *v0;
  v6;
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NLLanguage?);
  v6 = String.init<A>(describing:)(&v6, v1);
  v7 = v2;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v3._countAndFlagsBits = v6;
  v4 = v7;
  v6 = 0x65676175676E614CLL;
  v7 = 0xEA0000000000203ALL;
  v3._object = v4;
  String.append(_:)(v3);
  v4;
  return v6;
}

id MLGazetteer.ModelParameters.language.getter()
{
  v1 = *v0;
  *v0;
  return v1;
}

uint64_t MLGazetteer.ModelParameters.debugDescription.getter()
{
  v8 = *v0;
  v1 = v8;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NLLanguage?);
  v8 = String.init<A>(describing:)(&v8, v3);
  v9 = v4;
  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v5._countAndFlagsBits = v8;
  v6 = v9;
  v8 = 0x65676175676E614CLL;
  v9 = 0xEA0000000000203ALL;
  v5._object = v6;
  String.append(_:)(v5);

  v6;
  return v8;
}

void *MLGazetteer.ModelParameters.playgroundDescription.getter()
{
  v2 = v0;
  *&v11 = *v1;
  v3 = v11;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NLLanguage?);
  *&v6 = String.init<A>(describing:)(&v11, v5);
  v11 = v6;
  v7._countAndFlagsBits = 10;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8 = *(&v11 + 1);
  v7._countAndFlagsBits = v11;
  *&v11 = 0x65676175676E614CLL;
  *(&v11 + 1) = 0xEA0000000000203ALL;
  v7._object = v8;
  String.append(_:)(v7);

  v8;
  v9 = v11;
  result = &type metadata for String;
  *(v2 + 24) = &type metadata for String;
  *v2 = v9;
  return result;
}

void **initializeBufferWithCopyOfBuffer for MLGazetteer.ModelParameters(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  v3;
  return a1;
}

void **assignWithCopy for MLGazetteer.ModelParameters(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  v4;

  return a1;
}

void **assignWithTake for MLGazetteer.ModelParameters(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for MLGazetteer.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = -1;
      if (((*a1 >> 1) - 1) >= 0)
      {
        v3 = (*a1 >> 1) - 1;
      }

      v2 = (*a1 & 0xFFFFFFFF00000001) != 0 ? -1 : v3;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLGazetteer.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 8) = 0;
    }

    if (a2)
    {
      *a1 = 2 * a2;
    }
  }
}

uint64_t *MLDataTable.group<A>(columnsNamed:aggregators:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v76 = v4;
  fromColumnName._object = a2;
  v93 = 0;
  v91 = *(a3 - 8);
  v7 = *(v91 + 8);
  v8 = alloca(v7);
  v9 = alloca(v7);
  aggColumnName = v71;
  v81 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v75 = *(AssociatedTypeWitness - 8);
  v10 = *(v75 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v84 = v71;
  v78 = *v5;
  v13 = *(v5 + 8);
  v14 = tc_v1_flex_list_create(0);
  if (!v14)
  {
    BUG();
  }

  v15 = v14;
  v89 = v13;
  v16 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v16, v72);
  v77 = v15;
  *(inited + 16) = v15;
  v86 = inited;
  *(inited + 24) = 1;
  v18 = a1[2];
  if (v18)
  {
    v92 = v6;
    fromColumnName._countAndFlagsBits = type metadata accessor for CMLFeatureValue();

    v82 = a1;
    v19 = a1 + 5;
    do
    {
      v87 = v18;
      v20 = *(v19 - 1);
      v21 = *v19;
      swift_bridgeObjectRetain_n(*v19, 2);
      v22 = v93;
      v23 = CMLFeatureValue.__allocating_init(_:)(v20, v21);
      if (v22)
      {
        v66 = "CreateML/MLDataValueConvertible.swift";
        v67 = 37;
        v68 = 170;
        goto LABEL_57;
      }

      v24 = v23;
      v21;
      CMLSequence.append(_:)(v24);

      v93 = 0;
      v19 += 2;
      v18 = (v87 - 1);
    }

    while (v87 != &dword_0 + 1);
    v82;
    v6 = v92;
  }

  v25 = tc_v1_groupby_aggregator_create(0);
  if (!v25)
  {
    BUG();
  }

  v26 = v25;
  v27 = type metadata accessor for CMLAggregator();
  v92 = swift_initStackObject(v27, v73);
  *(v92 + 16) = v26;
  (*(v91 + 2))(aggColumnName, fromColumnName._object, v6);
  v28 = v81;
  dispatch thunk of Sequence.makeIterator()(v6, v81);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v28, v6, AssociatedTypeWitness, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()(AssociatedTypeWitness, AssociatedConformanceWitness);
    if (!toColumnName._countAndFlagsBits)
    {
      break;
    }

    object = toColumnName._object;
    v30 = v80;
    countAndFlagsBits = toColumnName._countAndFlagsBits;

    outlined consume of MLDataTable.Aggregator?(countAndFlagsBits, object, v30);
    v31 = *(countAndFlagsBits + 16);
    if (v31)
    {
      v32 = (countAndFlagsBits + 48);
      aggColumnName = v30;
      fromColumnName._countAndFlagsBits = object;
      while (1)
      {
        fromColumnName._object = v31;
        v33 = *(v32 - 2);
        v81 = *v32;
        v34 = 0x616E6F6974636944;
        v35 = 0xEF656772654D7972;
        switch(v81)
        {
          case 0:
            break;
          case 1:
            v34 = 0x6E696D677241;
            goto LABEL_15;
          case 2:
            v34 = 0x78616D677241;
LABEL_15:
            v35 = 0xE600000000000000;
            break;
          case 3:
            switch(v33)
            {
              case 0:
              case 2:
                JUMPOUT(0x1AD3D1);
              case 1:
                JUMPOUT(0x1AD3CBLL);
            }
        }

        v91 = v32;
        v36 = *(v32 - 1);
        toColumnName._countAndFlagsBits = fromColumnName._countAndFlagsBits;
        v30 = aggColumnName;
        toColumnName._object = aggColumnName;

        v87 = v36;
        v37 = v36;
        LODWORD(v36) = v81;
        outlined copy of MLDataTable.Aggregator.Operations(v33, v37, v81);
        v38._countAndFlagsBits = v34;
        v38._object = v35;
        String.append(_:)(v38);
        v35;
        v39 = toColumnName._countAndFlagsBits;
        v40 = toColumnName._object;
        switch(v36)
        {
          case 0:
            v82 = toColumnName._object;

            JUMPOUT(0x1AD0C0);
          case 1:

            v95._countAndFlagsBits = v33;
            v95._object = v87;
            CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(0, __PAIR128__(v40, v39), __PAIR128__(v30, fromColumnName._countAndFlagsBits), v95);
            if (v22)
            {
              v66 = "CreateML/MLDataTable+Group.swift";
              v67 = 32;
              v70 = 125;
              goto LABEL_56;
            }

            v93 = 0;
            v40;
            v41 = v33;
            v42 = v87;
            v43 = v87;
            v44 = v33;
            v69 = 1;
            goto LABEL_26;
          case 2:

            v94._countAndFlagsBits = v33;
            v94._object = v87;
            CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(1, __PAIR128__(v40, v39), __PAIR128__(v30, fromColumnName._countAndFlagsBits), v94);
            if (v22)
            {
              v66 = "CreateML/MLDataTable+Group.swift";
              v67 = 32;
              v68 = 131;
              goto LABEL_57;
            }

            v93 = 0;
            v40;
            v41 = v33;
            v42 = v87;
            v43 = v87;
            v44 = v33;
            v69 = 2;
LABEL_26:
            outlined consume of MLDataTable.Aggregator.Operations(v41, v43, v69);
            outlined consume of MLDataTable.Aggregator.Operations(v44, v42, v69);
            goto LABEL_38;
          case 3:
            switch(v33)
            {
              case 0:
                JUMPOUT(0x1AD187);
              case 1:
                JUMPOUT(0x1AD40BLL);
              case 2:
                JUMPOUT(0x1AD30ELL);
              case 3:
                JUMPOUT(0x1AD361);
              case 4:
                JUMPOUT(0x1AD269);
              case 5:
                toColumnName._object;
                v45._countAndFlagsBits = 0x746E756F43;
                v46._countAndFlagsBits = 0x746E756F63;
                v45._object = 0xE500000000000000;
                v46._object = 0xE500000000000000;
                v47._countAndFlagsBits = 0;
                v47._object = 0xE000000000000000;
                CMLAggregator.add(operation:toColumnName:fromColumnName:)(v46, v45, v47);
                JUMPOUT(0x1AD477);
              case 6:
                JUMPOUT(0x1AD4CFLL);
              case 7:
                JUMPOUT(0x1AD3B8);
              case 8:
                v48._countAndFlagsBits = 0x7461636E6F63;
                v48._object = 0xE600000000000000;
                v49._countAndFlagsBits = fromColumnName._countAndFlagsBits;
                LOBYTE(v30) = aggColumnName;
                v49._object = aggColumnName;
                CMLAggregator.add(operation:toColumnName:fromColumnName:)(v48, toColumnName, v49);
                if (v22)
                {
                  v66 = "CreateML/MLDataTable+Group.swift";
                  v67 = 32;
                  v70 = 96;
LABEL_56:
                  v68 = v70;
LABEL_57:
                  swift_unexpectedError(v22, v66, v67, 1, v68);
                  BUG();
                }

                v93 = 0;
                v40;
LABEL_38:
                v32 = v91 + 24;
                v31 = fromColumnName._object - 1;
                if (fromColumnName._object == &dword_0 + 1)
                {
                  goto LABEL_39;
                }

                break;
              case 9:
                JUMPOUT(0x1AD2C5);
            }

            return result;
        }
      }
    }

LABEL_39:
    v30;
    countAndFlagsBits;
  }

  (*(v75 + 8))(v84, AssociatedTypeWitness);
  v50 = v78;
  if (v89)
  {
    toColumnName._countAndFlagsBits = v78;
    outlined copy of Result<_DataTable, Error>(v78, 1);
    swift_errorRetain(v50);
    v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v52 = _getErrorEmbeddedNSError<A>(_:)(&toColumnName, v51, &protocol self-conformance witness table for Error);
    if (v52)
    {
      v53 = v52;
      outlined consume of Result<_DataTable, Error>(v50, 1);
    }

    else
    {
      v53 = swift_allocError(v51, &protocol self-conformance witness table for Error, 0, 0);
      *v59 = v50;
    }

    v58 = 1;
    v57 = v50;
    goto LABEL_47;
  }

  v54 = *(*(v78 + 16) + 16);
  v55 = *(v92 + 16);
  outlined copy of Result<_DataTable, Error>(v78, 0);
  v53 = v93;
  v56 = specialized handling<A, B, C, D>(_:_:_:_:)(v54, v77, v55);
  if (v53)
  {
    v57 = v50;
    v58 = 0;
LABEL_47:
    outlined consume of Result<_DataTable, Error>(v57, v58);

    v60 = 1;
    goto LABEL_48;
  }

  v62 = v56;
  if (!v56)
  {
    BUG();
  }

  v60 = 0;
  v63 = type metadata accessor for CMLTable();
  v64 = swift_allocObject(v63, 24, 7);
  *(v64 + 16) = v62;
  v65 = type metadata accessor for _DataTable();
  swift_allocObject(v65, 40, 7);
  v53 = _DataTable.init(impl:)(v64);
  outlined consume of Result<_DataTable, Error>(v78, 0);

LABEL_48:
  result = v76;
  *v76 = v53;
  *(result + 8) = v60;
  return result;
}

uint64_t MLDataTable.Aggregator.operations.setter(uint64_t a1)
{
  result = *v1;
  *v1 = a1;
  return result;
}

uint64_t MLDataTable.Aggregator.columnName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MLDataTable.Aggregator.columnName.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 16);
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void *MLDataTable.Aggregator.init(operations:of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *result = a1;
  result[1] = a2;
  result[2] = a3;
  return result;
}

uint64_t outlined consume of MLDataTable.Aggregator?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a3;
    a1;
    return v3;
  }

  return result;
}

uint64_t outlined copy of MLDataTable.Aggregator.Operations(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t outlined consume of MLDataTable.Aggregator.Operations(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    return a2;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MLDataTable.Aggregator.Operations(uint64_t a1, uint64_t a2)
{
  return initializeBufferWithCopyOfBuffer for MLDataTable.Aggregator.Operations(a1, a2);
}

{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  outlined copy of MLDataTable.Aggregator.Operations(*a2, v3, v4);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return a1;
}

uint64_t assignWithCopy for MLDataTable.Aggregator.Operations(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of MLDataTable.Aggregator.Operations(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of MLDataTable.Aggregator.Operations(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for MLDataTable.Aggregator.Operations(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of MLDataTable.Aggregator.Operations(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLDataTable.Aggregator.Operations(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v2 = -1;
      if (*(a1 + 16) >= 4u)
      {
        v2 = *(a1 + 16) ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLDataTable.Aggregator.Operations(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(a1 + 8) = 0;
    *a1 = a2 - 253;
    *(a1 + 16) = 0;
    if (a3 >= 0xFD)
    {
      *(a1 + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(a1 + 17) = 0;
    }

    if (a2)
    {
      *(a1 + 16) = -a2;
    }
  }
}

uint64_t getEnumTag for MLDataTable.Aggregator.Operations(uint64_t a1)
{
  result = (*a1 + 3);
  if (*(a1 + 16) < 3u)
  {
    return *(a1 + 16);
  }

  return result;
}

void destructiveInjectEnumTag for MLDataTable.Aggregator.Operations(uint64_t a1, unsigned int a2)
{
  if (a2 >= 3)
  {
    *a1 = a2 - 3;
    *(a1 + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(a1 + 16) = a2;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_Sis5NeverOTg5159_s8CreateML19MLClassifierMetricsV26precisionRecallDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  v20 = *(a1 + 16);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = _swiftEmptyArrayStorage;
  v4 = specialized _NativeSet.startIndex.getter(a1);
  v6 = v5;
  v8 = v7;
  do
  {
    if (v4 < 0 || v4 >= 1 << *(v2 + 32))
    {
      BUG();
    }

    v9 = *(v2 + 8 * (v4 >> 6) + 56);
    if (!_bittest64(&v9, v4))
    {
      BUG();
    }

    if (*(v2 + 36) != v6)
    {
      BUG();
    }

    v22 = v3;
    v10 = *(*(v2 + 48) + 16 * v4 + 8);

    v19 = String.count.getter();
    v11 = v10;
    v3 = v22;
    v11;
    v12 = v22[2];
    v13 = v22[3];
    v14 = v12 + 1;
    if (v13 >> 1 <= v12)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13 >= 2, v12 + 1, 1);
      v14 = v12 + 1;
      v3 = v22;
    }

    v3[2] = v14;
    v3[v12 + 4] = v19;
    v2 = a1;
    v15 = specialized _NativeSet.index(after:)(v4, v6, v8 & 1, a1);
    v4 = v15;
    v6 = v16;
    v8 = v17;
    --v20;
  }

  while (v20);
  outlined consume of [MLDataValue : MLDataValue].Index._Variant(v15, v16, v17);
  return v3;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_Sis5NeverOTg5169_s8CreateML19MLClassifierMetricsV8ContentsO26confusionMatrixDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = (a1 + 40);
    do
    {
      v8 = v1;
      v3 = *v2;

      v4 = String.count.getter();
      v3;
      v5 = _swiftEmptyArrayStorage[2];
      v6 = v5 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v5)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v5 + 1, 1);
        v6 = v5 + 1;
      }

      _swiftEmptyArrayStorage[2] = v6;
      _swiftEmptyArrayStorage[v5 + 4] = v4;
      v2 += 2;
      v1 = v8 - 1;
    }

    while (v8 != 1);
  }

  return _swiftEmptyArrayStorage;
}

unint64_t MLClassifierMetrics.description.getter()
{
  v1 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLClassifierMetrics.Contents(v0, &v14);
  if (swift_getEnumCaseMultiPayload(&v14, v1) > 1)
  {
    v11 = v14;
    v15 = 0;
    v16 = 0xE000000000000000;
    v17[0] = v14;
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(v17, &v15, v12, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v11;
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLClassifierMetrics.Contents);
    v15 = 0xD000000000000023;
    v16 = "Empty ArraySlice" + 0x8000000000000000;
    v5._countAndFlagsBits = MLClassifierMetrics.accuracyDescription.getter();
    object = v5._object;
    String.append(_:)(v5);
    object;
    v7._countAndFlagsBits = MLClassifierMetrics.Contents.confusionMatrixDescription.getter();
    v8 = v7._object;
    String.append(_:)(v7);
    v8;
    v9._countAndFlagsBits = MLClassifierMetrics.precisionRecallDescription.getter();
    v10 = v9._object;
    String.append(_:)(v9);
    v10;
  }

  return v15;
}

uint64_t MLClassifierMetrics.isValid.getter()
{
  v7[0] = v0;
  v2 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of MLClassifierMetrics.Contents(v1, v7);
  LOBYTE(v2) = swift_getEnumCaseMultiPayload(v7, v2) < 2;
  outlined destroy of MLActivityClassifier.ModelParameters(v7, type metadata accessor for MLClassifierMetrics.Contents);
  return v2;
}

double MLClassifierMetrics.classificationError.getter()
{
  v16[0] = v0;
  v2 = *(*(type metadata accessor for MLClassifierMetrics.Precomputed(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of MLClassifierMetrics.Contents(v1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v16, v8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLClassifierMetrics.Contents);
      v14 = 0.0;
      return 1.0 - v14;
    }

    outlined init with take of MLClassifierMetrics(v16, v16, type metadata accessor for MLClassifierMetrics.Precomputed);
    v16[0] = 1.0 - v16[0];
    v13 = type metadata accessor for MLClassifierMetrics.Precomputed;
  }

  else
  {
    outlined init with take of MLClassifierMetrics(v16, v16, type metadata accessor for AnyClassificationMetrics);
    v16[0] = AnyClassificationMetrics.accuracy.getter();
    v13 = type metadata accessor for AnyClassificationMetrics;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v16, v13);
  v14 = v16[0];
  return 1.0 - v14;
}

uint64_t MLClassifierMetrics.init(classificationError:confusion:precisionRecall:)(uint64_t *a1, uint64_t *a2, double a3)
{
  v12 = a3;
  v4 = v3;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v10 = *a1;
  v11 = v5;
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  DataFrame.init(_:)(&v10);
  v10 = v6;
  v11 = v7;
  DataFrame.init(_:)(&v10);
  *v4 = v12;
  v8 = type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload(v4, v8, 1);
}

uint64_t MLClassifierMetrics.error.getter()
{
  v1 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLClassifierMetrics.Contents(v0, v6);
  if (swift_getEnumCaseMultiPayload(v6, v1) == 2)
  {
    return v6[0];
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLClassifierMetrics.Contents);
  return 0;
}

double MLClassifierMetrics.Contents.accuracy.getter()
{
  v15[0] = v0;
  v2 = *(*(type metadata accessor for MLClassifierMetrics.Precomputed(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of MLClassifierMetrics.Contents(v1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v15, v8);
  if (!EnumCaseMultiPayload)
  {
    outlined init with take of MLClassifierMetrics(v15, v15, type metadata accessor for AnyClassificationMetrics);
    v15[0] = AnyClassificationMetrics.accuracy.getter();
    v13 = type metadata accessor for AnyClassificationMetrics;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with take of MLClassifierMetrics(v15, v15, type metadata accessor for MLClassifierMetrics.Precomputed);
    v15[0] = 1.0 - v15[0];
    v13 = type metadata accessor for MLClassifierMetrics.Precomputed;
LABEL_5:
    outlined destroy of MLActivityClassifier.ModelParameters(v15, v13);
    return v15[0];
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLClassifierMetrics.Contents);
  return 0.0;
}

uint64_t MLClassifierMetrics.confusion.getter(__m128 a1)
{
  v2 = v1;
  v3 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  MLClassifierMetrics.confusionDataFrame.getter();
  MLDataTable.init(_:convertArraysToShapedArrays:)(&v17, 0, a1);
  MLDataTable.willMutate()();
  v6._countAndFlagsBits = 0x6574636964657250;
  v7._countAndFlagsBits = 0x6574636964657270;
  v7._object = 0xEF7373616C635F64;
  v6._object = 0xE900000000000064;
  MLDataTable.renameImpl(named:to:)(v7, v6);
  if (!v19)
  {
    v8 = v18;
    outlined copy of Result<_DataTable, Error>(v18, 0);
    _DataTable.columnNamesDidChange()();
    outlined consume of Result<_DataTable, Error>(v8, 0);
  }

  MLDataTable.willMutate()();
  v9._countAndFlagsBits = 0x7373616C63;
  v10._countAndFlagsBits = 0x62614C2065757254;
  v10._object = 0xEA00000000006C65;
  v9._object = 0xE500000000000000;
  MLDataTable.renameImpl(named:to:)(v9, v10);
  if (!v19)
  {
    v11 = v18;
    outlined copy of Result<_DataTable, Error>(v18, 0);
    _DataTable.columnNamesDidChange()();
    outlined consume of Result<_DataTable, Error>(v11, 0);
  }

  MLDataTable.willMutate()();
  v12._countAndFlagsBits = 0x746E756F43;
  v13._countAndFlagsBits = 0x746E756F63;
  v13._object = 0xE500000000000000;
  v12._object = 0xE500000000000000;
  result = MLDataTable.renameImpl(named:to:)(v13, v12);
  v15 = v19;
  v16 = v18;
  if (!v19)
  {
    outlined copy of Result<_DataTable, Error>(v18, 0);
    _DataTable.columnNamesDidChange()();
    result = outlined consume of Result<_DataTable, Error>(v16, 0);
  }

  *v2 = v16;
  *(v2 + 8) = v15;
  return result;
}

uint64_t MLClassifierMetrics.confusionDataFrame.getter()
{
  v47 = v1;
  v50 = v0;
  v42 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v2 = *(*(v42 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v41 = &v40;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
  v45 = *(v43 - 8);
  v5 = *(v45 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v44 = &v40;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v46 = &v40;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v14 = *(*(v13 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v49 = &v40;
  v17 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v48 = &v40;
  v20 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLClassifierMetrics.Contents(v47, &v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v40, v20);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(&v40, type metadata accessor for MLClassifierMetrics.Contents);
      return DataFrame.init()(&v40);
    }

    v25 = v41;
    outlined init with take of MLClassifierMetrics(&v40, v41, type metadata accessor for MLClassifierMetrics.Precomputed);
    v26 = v25 + *(v42 + 20);
    v27 = type metadata accessor for DataFrame(0);
    (*(*(v27 - 8) + 16))(v50, v26, v27);
    v28 = v25;
    v29 = type metadata accessor for MLClassifierMetrics.Precomputed;
  }

  else
  {
    v47 = v9;
    v30 = v44;
    v31 = v43;
    v32 = v48;
    outlined init with take of MLClassifierMetrics(&v40, v48, type metadata accessor for AnyClassificationMetrics);
    v33 = v32;
    v34 = v49;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v33, v49, &demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    if (swift_getEnumCaseMultiPayload(v34, v13) == 1)
    {
      v35 = v45;
      (*(v45 + 32))(v30, v49, v31);
      _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSi_Tt1g5();
      v36 = v30;
      v37 = v31;
    }

    else
    {
      v39 = v46;
      v35 = v47;
      (*(v47 + 32))(v46, v49, v8);
      _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
      v36 = v39;
      v37 = v8;
    }

    (*(v35 + 8))(v36, v37);
    v29 = type metadata accessor for AnyClassificationMetrics;
    v28 = v48;
  }

  return outlined destroy of MLActivityClassifier.ModelParameters(v28, v29);
}

uint64_t MLClassifierMetrics.precisionRecall.getter(__m128 a1)
{
  v6 = v1;
  v2 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  MLClassifierMetrics.precisionRecallDataFrame.getter();
  return MLDataTable.init(_:convertArraysToShapedArrays:)(&v6, 0, a1);
}

uint64_t MLClassifierMetrics.precisionRecallDataFrame.getter()
{
  v47 = v1;
  v50 = v0;
  v42 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v2 = *(*(v42 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v41 = &v40;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
  v45 = *(v43 - 8);
  v5 = *(v45 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v44 = &v40;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v46 = &v40;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v14 = *(*(v13 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v49 = &v40;
  v17 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v48 = &v40;
  v20 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLClassifierMetrics.Contents(v47, &v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v40, v20);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(&v40, type metadata accessor for MLClassifierMetrics.Contents);
      return DataFrame.init()(&v40);
    }

    v25 = v41;
    outlined init with take of MLClassifierMetrics(&v40, v41, type metadata accessor for MLClassifierMetrics.Precomputed);
    v26 = v25 + *(v42 + 24);
    v27 = type metadata accessor for DataFrame(0);
    (*(*(v27 - 8) + 16))(v50, v26, v27);
    v28 = v25;
    v29 = type metadata accessor for MLClassifierMetrics.Precomputed;
  }

  else
  {
    v47 = v9;
    v30 = v44;
    v31 = v43;
    v32 = v48;
    outlined init with take of MLClassifierMetrics(&v40, v48, type metadata accessor for AnyClassificationMetrics);
    v33 = v32;
    v34 = v49;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v33, v49, &demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    if (swift_getEnumCaseMultiPayload(v34, v13) == 1)
    {
      v35 = v45;
      (*(v45 + 32))(v30, v49, v31);
      _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSi_Tt1g5(v30);
      v36 = v30;
      v37 = v31;
    }

    else
    {
      v39 = v46;
      v35 = v47;
      (*(v47 + 32))(v46, v49, v8);
      _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v39);
      v36 = v39;
      v37 = v8;
    }

    (*(v35 + 8))(v36, v37);
    v29 = type metadata accessor for AnyClassificationMetrics;
    v28 = v48;
  }

  return outlined destroy of MLActivityClassifier.ModelParameters(v28, v29);
}

void *MLClassifierMetrics.Contents.stringLabels.getter()
{
  v16[0] = v0;
  v2 = *(*(type metadata accessor for MLClassifierMetrics.Precomputed(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of MLClassifierMetrics.Contents(v1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v16, v8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v16[0];
      return &_swiftEmptySetSingleton;
    }

    outlined init with take of MLClassifierMetrics(v16, v16, type metadata accessor for MLClassifierMetrics.Precomputed);
    v13 = MLClassifierMetrics.Precomputed.stringLabels.getter();
    v14 = type metadata accessor for MLClassifierMetrics.Precomputed;
  }

  else
  {
    outlined init with take of MLClassifierMetrics(v16, v16, type metadata accessor for AnyClassificationMetrics);
    v13 = AnyClassificationMetrics.stringLabels.getter();
    v14 = type metadata accessor for AnyClassificationMetrics;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v16, v14);
  return v13;
}

uint64_t MLClassifierMetrics.Precomputed.stringLabels.getter()
{
  v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v76 = *(v71 - 8);
  v0 = v76[8];
  v1 = alloca(v0);
  v2 = alloca(v0);
  v78 = &v65;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v72 = &v65;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v79 = *(v6 - 8);
  v7 = *(v79 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>);
  v68 = *(v73 - 8);
  v10 = *(v68 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v75 = &v65;
  v74 = type metadata accessor for AnyColumn(0);
  v70 = *(v74 - 8);
  v13 = *(v70 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  DataFrame.subscript.getter(0x7373616C63, 0xE500000000000000);
  v16 = AnyColumn.wrappedElementType.getter(0x7373616C63);
  if (swift_dynamicCastMetatype(v16, &type metadata for Int))
  {
    v76 = &v65;
    AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    v66[0] = 0;
    v17 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
    v18 = v75;
    OptionalColumnProtocol.filled(with:)(v66, v6, v17);
    (*(v79 + 8))(&v65, v6);
    v19 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
    v20 = v73;
    v21 = dispatch thunk of Collection.count.getter(v73, v19);
    v22 = v20;
    v23 = v18;
    if (v21)
    {
      v24 = v21;
      v67[0] = _swiftEmptyArrayStorage;
      v25 = 0;
      if (v21 > 0)
      {
        v25 = v21;
      }

      v26 = v20;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
      v79 = v67[0];
      v78 = v19;
      dispatch thunk of Collection.startIndex.getter(v20, v19);
      if (v24 < 0)
      {
        BUG();
      }

      v27 = v78;
      v23 = v75;
      v28 = v79;
      v22 = v26;
      do
      {
        v79 = v24;
        v29 = v23;
        v30 = v22;
        v31 = dispatch thunk of Collection.subscript.read(v66, &v77, v22, v27);
        v33 = *v32;
        v31(v66, 0);
        v66[0] = v33;
        v34 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v67[0] = v28;
        v36 = v29;
        v37 = v28[2];
        v38 = v28[3];
        if (v38 >> 1 <= v37)
        {
          v71 = v34;
          v72 = v35;
          v43 = v36;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38 >= 2, v37 + 1, 1);
          v35 = v72;
          v34 = v71;
          v36 = v43;
          v28 = v67[0];
        }

        v28[2] = v37 + 1;
        v39 = 2 * v37;
        v28[v39 + 4] = v34;
        v28[v39 + 5] = v35;
        v40 = v36;
        v41 = v30;
        v42 = v78;
        dispatch thunk of Collection.formIndex(after:)(&v77, v41, v78);
        v24 = v79 - 1;
        v22 = v73;
        v23 = v40;
        v27 = v42;
      }

      while (v79 != 1);
    }

    else
    {
      v28 = _swiftEmptyArrayStorage;
    }

    (*(v68 + 8))(v23, v22);
    v48 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v28);
    v49 = v76;
    goto LABEL_15;
  }

  v44 = v78;
  if (swift_dynamicCastMetatype(v16, &type metadata for String))
  {
    v45 = v44;
    AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v66[0] = 0;
    v66[1] = 0xE000000000000000;
    v46 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    v47 = v71;
    OptionalColumnProtocol.filled(with:)(v66, v71, v46);
    (v76[1])(v45, v47);
    v48 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
    v49 = &v65;
LABEL_15:
    v50 = v74;
    goto LABEL_16;
  }

  v52 = lazy protocol witness table accessor for type AnyColumn and conformance AnyColumn();
  v53 = v74;
  v54 = dispatch thunk of Collection.count.getter(v74, v52);
  if (v54)
  {
    v77 = _swiftEmptyArrayStorage;
    v55 = 0;
    if (v54 > 0)
    {
      v55 = v54;
    }

    v79 = v54;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55, 0);
    v56 = v77;
    v76 = &v65;
    dispatch thunk of Collection.startIndex.getter(v53, v52);
    v57 = v79;
    if (v79 < 0)
    {
      BUG();
    }

    v58 = v76;
    v75 = v52;
    do
    {
      v79 = v57;
      v59 = dispatch thunk of Collection.subscript.read(v66, v69, v53, v52);
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, v67, &demangling cache variable for type metadata for Any?);
      v59(v66, 0);
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, v66, &demangling cache variable for type metadata for Any?);
      v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
      v73 = String.init<A>(describing:)(v66, v61);
      v78 = v62;
      outlined destroy of Any?(v67);
      v77 = v56;
      v52 = v75;
      v63 = v56[2];
      if (v56[3] >> 1 <= v63)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v56[3] >= 2uLL, v63 + 1, 1);
        v56 = v77;
      }

      v56[2] = v63 + 1;
      v64 = 2 * v63;
      v56[v64 + 4] = v73;
      v56[v64 + 5] = v78;
      v53 = v74;
      dispatch thunk of Collection.formIndex(after:)(v69, v74, v52);
      v57 = v79 - 1;
    }

    while (v79 != 1);
  }

  else
  {
    v56 = _swiftEmptyArrayStorage;
    v58 = &v65;
  }

  v48 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v56);
  v49 = v58;
  v50 = v53;
LABEL_16:
  (*(v70 + 8))(v49, v50);
  return v48;
}

uint64_t MLClassifierMetrics.Contents.labelCount.getter()
{
  v17[0] = v0;
  v2 = *(*(type metadata accessor for MLClassifierMetrics.Precomputed(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of MLClassifierMetrics.Contents(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v17, v8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v17[0];
      return 0;
    }

    outlined init with take of MLClassifierMetrics(v17, v17, type metadata accessor for MLClassifierMetrics.Precomputed);
    v13 = MLClassifierMetrics.Precomputed.stringLabels.getter();
    v14 = *(v13 + 16);
    v13;
    v15 = type metadata accessor for MLClassifierMetrics.Precomputed;
  }

  else
  {
    outlined init with take of MLClassifierMetrics(v17, v17, type metadata accessor for AnyClassificationMetrics);
    v14 = AnyClassificationMetrics.labelCount.getter();
    v15 = type metadata accessor for AnyClassificationMetrics;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v17, v15);
  return v14;
}

uint64_t MLClassifierMetrics.Contents.exampleCount.getter()
{
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v23 = *(v24 - 8);
  v1 = *(v23 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v25 = &v22;
  v4 = *(*(type metadata accessor for MLClassifierMetrics.Precomputed(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v26 = &v22;
  v7 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLClassifierMetrics.Contents(v0, &v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v22, v10);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(&v22, type metadata accessor for MLClassifierMetrics.Contents);
      return 0;
    }

    v15 = v26;
    outlined init with take of MLClassifierMetrics(&v22, v26, type metadata accessor for MLClassifierMetrics.Precomputed);
    v16 = v25;
    DataFrame.subscript.getter(0x746E756F63, 0xE500000000000000, &type metadata for Int);
    v17 = v24;
    Column<A>.sum()(v24, &protocol witness table for Int);
    (*(v23 + 8))(v16, v17);
    v18 = v22;
    v19 = v15;
    v20 = type metadata accessor for MLClassifierMetrics.Precomputed;
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v22, &v22, type metadata accessor for AnyClassificationMetrics);
    v18 = AnyClassificationMetrics.exampleCount.getter();
    v19 = &v22;
    v20 = type metadata accessor for AnyClassificationMetrics;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v19, v20);
  return v18;
}

unint64_t MLClassifierMetrics.accuracyDescription.getter()
{
  _StringGuts.grow(_:)(23);
  0;
  MLClassifierMetrics.Contents.exampleCount.getter();
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v0._object;
  String.append(_:)(v0);
  object;
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  _StringGuts.grow(_:)(22);
  0;
  MLClassifierMetrics.Contents.labelCount.getter();
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v4 = v3._object;
  String.append(_:)(v3);
  v4;
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v2._countAndFlagsBits = 0xD000000000000013;
  v2._object = "Number of examples: " + 0x8000000000000000;
  String.append(_:)(v2);
  ("Number of examples: " + 0x8000000000000000);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v6 = swift_allocObject(v5, 72, 7);
  *(v6 + 16) = 1;
  *(v6 + 24) = 2;
  v7 = MLClassifierMetrics.Contents.accuracy.getter();
  *(v6 + 56) = &type metadata for Double;
  *(v6 + 64) = &protocol witness table for Double;
  *(v6 + 32) = v7 * 100.0;
  v8._countAndFlagsBits = String.init(format:_:)(0xD000000000000011, ("Number of classes: " + 0x8000000000000000), v6);
  v9 = v8._object;
  String.append(_:)(v8);
  v9;
  return 0xD000000000000014;
}

char *MLClassifierMetrics.Contents.confusionMatrixDescription.getter()
{
  v83 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v79 = *(v83 - 8);
  v0 = *(v79 + 64);
  v1 = alloca(v0);
  v2 = alloca(v0);
  v3 = MLClassifierMetrics.Contents.stringLabels.getter();

  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(v3);
  v3;
  v91[0] = v4;
  specialized MutableCollection<>.sort(by:)(v91);
  v3;
  v5 = v91[0];
  MLClassifierMetrics.Contents.confusionMatrix(labels:)(v91[0]);
  v82 = v5;
  ML19MLClassifierMetricsV8ContentsO26confusionMatrixDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_Sis5NeverOTg5169_s8CreateML19MLClassifierMetricsV8ContentsO26confusionMatrixDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n(v5);
  LOBYTE(v5) = ML19MLClassifierMetricsV8ContentsO26confusionMatrixDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n;
  v7 = specialized Sequence<>.max()(ML19MLClassifierMetricsV8ContentsO26confusionMatrixDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n);
  v9 = v8;
  v5;
  v10 = 0;
  if ((v9 & 1) == 0)
  {
    v10 = v7;
  }

  v90 = v10;
  v74 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
  v77 = &v73;
  v11 = MLShapedArrayProtocol.scalars.getter(v83, v74);
  v12 = v11;
  v13 = *(v11 + 16);
  if (v13)
  {
    v91[0] = _swiftEmptyArrayStorage;
    v14 = 0;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v15 = v91[0];
    v81 = v12;
    v86 = v13;
    do
    {
      v16 = _mm_cvtsi32_si128(*(v12 + 4 * v14 + 32));
      if ((_mm_cvtsi128_si32(v16) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        BUG();
      }

      if (*v16.i32 <= -9.2233731e18)
      {
        BUG();
      }

      if (*v16.i32 >= 9.223372e18)
      {
        BUG();
      }

      v89._countAndFlagsBits = *v16.i32;
      dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v18 = v17;
      v19 = String.count.getter();
      v18;
      v91[0] = v15;
      v20 = *(v15 + 2);
      if (*(v15 + 3) >> 1 <= v20)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v15 + 3) >= 2uLL, v20 + 1, 1);
        v15 = v91[0];
      }

      ++v14;
      *(v15 + 2) = v20 + 1;
      *&v15[8 * v20 + 32] = v19;
      v12 = v81;
    }

    while (v86 != v14);
    v81;
  }

  else
  {
    v11;
    v15 = _swiftEmptyArrayStorage;
  }

  v21 = specialized Sequence<>.max()(v15);
  v23 = v22;
  v15;
  if (v23)
  {
    v21 = 0;
    if (v90 > 0)
    {
      v21 = v90;
    }
  }

  else if (v21 <= v90)
  {
    v21 = v90;
  }

  v24 = __OFADD__(1, v21);
  v25 = v21 + 1;
  if (v24)
  {
    BUG();
  }

  v26 = String.count.getter();
  v27 = v90;
  if (v26 > v90)
  {
    v27 = v26;
  }

  v90 = v27 + 1;
  if (__OFADD__(1, v27))
  {
    BUG();
  }

  v81 = v25;
  v28 = v82;
  v29 = specialized Collection.prefix(_:)(20, v82);
  v78 = v30;
  v87 = v31;
  v88 = v32;
  v91[0] = 0xD00000000000001ELL;
  v91[1] = "%@ %-15.2f %-15.2f\n" + 0x8000000000000000;
  v33 = *(v28 + 16) < 0x15uLL;
  v80 = v29;
  if (!v33)
  {
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v89._object;
    v89._countAndFlagsBits = 0xD000000000000010;
    v89._object = "\n******CONFUSION MATRIX******\n" + 0x8000000000000000;
    v84 = 20;
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v34._object;
    String.append(_:)(v34);
    object;
    v36._object = 0xE400000000000000;
    v36._countAndFlagsBits = 762929709;
    String.append(_:)(v36);
    v84 = 20;
    v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v38 = v37._object;
    String.append(_:)(v37);
    v38;
    v36._countAndFlagsBits = 0xA2A2A2A2A2029;
    v36._object = 0xE700000000000000;
    String.append(_:)(v36);
    v39 = v89._object;
    v29 = v80;
    String.append(_:)(v89);
    v39;
  }

  v40._object = "Empty ArraySlice" + 0x8000000000000000;
  v40._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v40);
  v89._countAndFlagsBits = 0x6572505C65757254;
  v89._object = 0xE900000000000064;
  v84 = 32;
  v85 = 0xE100000000000000;
  v86 = lazy protocol witness table accessor for type String and conformance String();
  v41 = StringProtocol.padding<A>(toLength:withPad:startingAt:)(v90, &v84, 0, &type metadata for String, &type metadata for String, v86, v86);
  v43 = v42;
  v40._countAndFlagsBits = v41;
  v40._object = v42;
  String.append(_:)(v40);
  v43;
  v44 = v88 >> 1;
  v45 = v87;
  v88 = v44;
  if (v87 == v44)
  {
    v46._countAndFlagsBits = 10;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    v47 = v83;
  }

  else
  {
    if (v87 >= v44)
    {
      BUG();
    }

    swift_unknownObjectRetain(v29);
    v48 = 16 * v45 + v78 + 8;
    v49 = v88;
    v50 = v86;
    do
    {
      v89 = *(v48 - 8);
      v84 = 32;
      v85 = 0xE100000000000000;
      v51._countAndFlagsBits = StringProtocol.padding<A>(toLength:withPad:startingAt:)(v81, &v84, 0, &type metadata for String, &type metadata for String, v50, v50);
      v52 = v51._object;
      String.append(_:)(v51);
      v52;
      --v49;
      v48 += 16;
    }

    while (v87 != v49);
    v53 = v80;
    swift_unknownObjectRelease(v80);
    v54._countAndFlagsBits = 10;
    v54._object = 0xE100000000000000;
    String.append(_:)(v54);
    v55 = v87;
    v82 = (v88 - v87);
    if (__OFSUB__(v88, v87))
    {
      BUG();
    }

    if ((v88 - v87) < 0)
    {
      BUG();
    }

    swift_unknownObjectRetain(v53);
    v56 = 1;
    v76 = 0;
    v47 = v83;
    do
    {
      v75 = v56;
      v87 = v55;
      v89 = *(v78 + 16 * v55);
      v84 = 32;
      v85 = 0xE100000000000000;
      v57._countAndFlagsBits = StringProtocol.padding<A>(toLength:withPad:startingAt:)(v90, &v84, 0, &type metadata for String, &type metadata for String, v86, v86);
      v58 = v57._object;
      String.append(_:)(v57);
      v58;
      if (v82)
      {
        v59 = 0;
        do
        {
          v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
          v61 = swift_allocObject(v60, 48, 7);
          v62 = v61;
          v61[2] = 2;
          v61[3] = 4;
          v61[4] = v76;
          v61[5] = v59;
          MLShapedArrayProtocol.subscript.getter(v61, v47, v74);
          v62;
          v63 = _mm_cvtsi32_si128(v89._countAndFlagsBits);
          if ((_mm_cvtsi128_si32(v63) & 0x7FFFFFFFu) > 0x7F7FFFFF)
          {
            BUG();
          }

          if (*v63.i32 <= -9.2233731e18)
          {
            BUG();
          }

          if (*v63.i32 >= 9.223372e18)
          {
            BUG();
          }

          ++v59;
          v89._countAndFlagsBits = *v63.i32;
          v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
          v65 = v64._object;
          v89 = v64;
          v84 = 32;
          v85 = 0xE100000000000000;
          v66 = StringProtocol.padding<A>(toLength:withPad:startingAt:)(v81, &v84, 0, &type metadata for String, &type metadata for String, v86, v86);
          v68 = v67;
          v65;
          v69._countAndFlagsBits = v66;
          v69._object = v68;
          String.append(_:)(v69);
          LOBYTE(v69._countAndFlagsBits) = v68;
          v47 = v83;
          v69._countAndFlagsBits;
        }

        while (v82 != v59);
      }

      v70._countAndFlagsBits = 10;
      v70._object = 0xE100000000000000;
      String.append(_:)(v70);
      v56 = v75 + 1;
      if (__OFADD__(1, v75))
      {
        BUG();
      }

      v55 = v87 + 1;
      v76 = v75;
    }

    while (v87 + 1 != v88);
    v29 = v80;
    swift_unknownObjectRelease(v80);
  }

  v71 = v79;
  swift_unknownObjectRelease(v29);
  (*(v71 + 8))(v77, v47);
  return v91[0];
}

unint64_t MLClassifierMetrics.precisionRecallDescription.getter()
{
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v57 = *(v62 - 8);
  v0 = *(v57 + 64);
  v1 = alloca(v0);
  v2 = alloca(v0);
  v61 = v47;
  v3 = alloca(v0);
  v4 = alloca(v0);
  v64 = v47;
  v71 = type metadata accessor for AnyColumn(0);
  v65 = *(v71 - 8);
  v5 = *(v65 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v66 = v47;
  v63 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v58 = *(v63 - 8);
  v8 = *(v58 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v70 = v47;
  v11 = type metadata accessor for DataFrame(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  MLClassifierMetrics.precisionRecallDataFrame.getter();
  v67 = v47;
  if (DataFrameProtocol.isEmpty.getter(v11, &protocol witness table for DataFrame))
  {
    (*(v12 + 8))(v67, v11);
    return 0;
  }

  else
  {
    v60 = v12;
    v59 = v11;
    v17 = MLClassifierMetrics.Contents.stringLabels.getter();
    v18 = v17;
    ML19MLClassifierMetricsV26precisionRecallDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_Sis5NeverOTg5159_s8CreateML19MLClassifierMetricsV26precisionRecallDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n(v17);
    v18;
    v20 = specialized Sequence<>.max()(ML19MLClassifierMetricsV26precisionRecallDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n);
    v22 = v21;
    ML19MLClassifierMetricsV26precisionRecallDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n;
    if (v22)
    {
      v20 = 0;
    }

    v49 = 0xD000000000000041;
    v50 = "ifierMetrics.swift" + 0x8000000000000000;
    v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v23 = swift_allocObject(v53, 152, 7);
    *(v23 + 16) = 3;
    *(v23 + 24) = 6;
    v68 = 0x7373616C43;
    v69 = 0xE500000000000000;
    v51 = 32;
    v52 = 0xE100000000000000;
    v24 = lazy protocol witness table accessor for type String and conformance String();
    v54 = v20;
    v55 = v24;
    v25 = StringProtocol.padding<A>(toLength:withPad:startingAt:)(v20, &v51, 0, &type metadata for String, &type metadata for String, v24, v24);
    v27 = v26;
    *(v23 + 56) = &type metadata for String;
    v28 = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 64) = v28;
    *(v23 + 32) = v25;
    *(v23 + 40) = v27;
    *(v23 + 96) = &type metadata for String;
    *(v23 + 104) = v28;
    strcpy((v23 + 72), "Precision(%)");
    *(v23 + 85) = 0;
    *(v23 + 86) = -5120;
    *(v23 + 136) = &type metadata for String;
    v56 = v28;
    *(v23 + 144) = v28;
    *(v23 + 112) = 0x25286C6C61636552;
    *(v23 + 120) = 0xE900000000000029;
    v29._countAndFlagsBits = String.init(format:_:)(0x4035312D25204025, 0xEF0A4035312D2520, v23);
    LOBYTE(v23) = v29._object;
    String.append(_:)(v29);
    v23;
    v30 = v66;
    DataFrame.subscript.getter(0x7373616C63, 0xE500000000000000);
    AnyColumn.convertedToStrings()();
    (*(v65 + 8))(v30, v71);
    DataFrame.subscript.getter(0x6F69736963657270, 0xE90000000000006ELL, &type metadata for Double);
    v31 = v61;
    DataFrame.subscript.getter(0x6C6C61636572, 0xE600000000000000, &type metadata for Double);
    v32 = Column.count.getter(v63);
    v65 = v32;
    if (v32 < 0)
    {
      BUG();
    }

    if (v32)
    {
      v66 = "----------------\n" + 0x8000000000000000;
      v71 = 0;
      do
      {
        v33 = swift_allocObject(v53, 152, 7);
        *(v33 + 16) = 3;
        *(v33 + 24) = 6;
        Column.subscript.getter(v71, v63);
        v34 = v69;
        if (!v69)
        {
          BUG();
        }

        v51 = v68;
        v52 = v69;
        v48[0] = 32;
        v48[1] = 0xE100000000000000;
        v35 = StringProtocol.padding<A>(toLength:withPad:startingAt:)(v54, v48, 0, &type metadata for String, &type metadata for String, v55, v55);
        v37 = v36;
        v34;
        *(v33 + 56) = &type metadata for String;
        *(v33 + 64) = v56;
        *(v33 + 32) = v35;
        *(v33 + 40) = v37;
        v38 = v62;
        Column.subscript.getter(v71, v62);
        if (v69)
        {
          BUG();
        }

        v39 = *&v68 * 100.0;
        *(v33 + 96) = &type metadata for Double;
        *(v33 + 104) = &protocol witness table for Double;
        *(v33 + 72) = v39;
        v31 = v61;
        Column.subscript.getter(v71, v38);
        if (v69)
        {
          BUG();
        }

        v40 = v71 + 1;
        v41 = *&v68 * 100.0;
        *(v33 + 136) = &type metadata for Double;
        *(v33 + 144) = &protocol witness table for Double;
        *(v33 + 112) = v41;
        v42._countAndFlagsBits = String.init(format:_:)(0xD000000000000013, v66, v33);
        object = v42._object;
        String.append(_:)(v42);
        object;
        v71 = v40;
      }

      while (v65 != v40);
    }

    v44._countAndFlagsBits = 10;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    v45 = *(v57 + 8);
    v44._countAndFlagsBits = v31;
    v46 = v62;
    v45(v44._countAndFlagsBits, v62);
    v45(v64, v46);
    (*(v58 + 8))(v70, v63);
    (*(v60 + 8))(v67, v59);
    return v49;
  }
}

uint64_t MLClassifierMetrics.playgroundDescription.getter()
{
  v1 = v0;
  v2 = MLClassifierMetrics.accuracyDescription.getter();
  v4 = v3;
  objc_allocWithZone(NSAttributedString);
  v5 = @nonobjc NSAttributedString.init(string:attributes:)(v2, v4, 0);
  result = type metadata accessor for NSAttributedString();
  v1[3] = result;
  *v1 = v5;
  return result;
}

uint64_t MLClassifierMetrics.Contents.confusionMatrix(labels:)(void *a1)
{
  v128 = v2;
  v125 = a1;
  v3 = v1;
  v106 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v123 = *(v106 - 8);
  v4 = *(v123 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v99 = &v97;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v124 = &v97;
  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>);
  v102 = *(v115 - 8);
  v9 = *(v102 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v116 = &v97;
  v129 = type metadata accessor for AnyColumn(0);
  v126 = *(v129 - 8);
  v12 = *(v126 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v113 = &v97;
  v108 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v110 = *(v108 - 8);
  v15 = *(v110 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v98 = &v97;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v97 = &v97;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v109 = &v97;
  v121 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v103 = *(v121 - 8);
  v22 = *(v103 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v114 = &v97;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v112 = &v97;
  v117 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v104 = *(v117 - 8);
  v27 = *(v104 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v111 = &v97;
  v30 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v107 = &v97;
  v34 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v37 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v38 = *(*(v37 - 8) + 64);
  v39 = alloca(v38);
  v40 = alloca(v38);
  outlined init with copy of MLClassifierMetrics.Contents(v128, &v97);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v97, v37);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v105 = v3;
      v42 = v107;
      outlined init with take of MLClassifierMetrics(&v97, v107, type metadata accessor for MLClassifierMetrics.Precomputed);
      LODWORD(v119) = 0;
      v100 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
      v43 = swift_allocObject(v100, 48, 7);
      v43[2] = 2;
      v43[3] = 4;
      v44 = v125[2];
      v43[4] = v44;
      v122 = v44;
      v43[5] = v44;
      v101 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
      MLShapedArrayProtocol.init(repeating:shape:)(&v119, v43, v117, v101);
      v128 = v42 + *(v30 + 20);
      v45 = v113;
      DataFrame.subscript.getter(0x7373616C63, 0xE500000000000000);
      v46 = v109;
      AnyColumn.convertedToStrings()();
      v126 = *(v126 + 8);
      (v126)(v45, v129);
      v119 = 0;
      v120 = 0xE000000000000000;
      v118 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
      v47 = v108;
      OptionalColumnProtocol.filled(with:)(&v119, v108, v118);
      v48 = *(v110 + 8);
      (v48)(v46, v47);
      DataFrame.subscript.getter(0x6574636964657270, 0xEF7373616C635F64);
      AnyColumn.convertedToStrings()();
      (v126)(v45, v129);
      v119 = 0;
      v120 = 0xE000000000000000;
      OptionalColumnProtocol.filled(with:)(&v119, v47, v118);
      v113 = v48;
      (v48)(v46, v47);
      v49 = v124;
      DataFrame.subscript.getter(0x746E756F63, 0xE500000000000000, &type metadata for Int);
      v119 = 0;
      v50 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
      v51 = v106;
      OptionalColumnProtocol.filled(with:)(&v119, v106, v50);
      v126 = *(v123 + 8);
      (v126)(v49, v51);
      v52 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
      v53 = v115;
      dispatch thunk of Collection.startIndex.getter(v115, v52);
      dispatch thunk of Collection.endIndex.getter(v53, v52);
      v54 = dispatch thunk of Collection.distance(from:to:)(&v119, &v127, v53, v52);
      v109 = v54;
      if (v54 < 0)
      {
        BUG();
      }

      if (v54)
      {
        v118 = v125 + 9;
        v55 = 0;
        do
        {
          v128 = v55;
          v127 = v55;
          v56 = v97;
          FilledColumn.base.getter(v121);
          v57 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
          v58 = v108;
          v123 = v57;
          v59 = dispatch thunk of Collection.subscript.read(&v119, &v127, v108, v57);
          v129 = *v60;
          v61 = v60[1];

          v59(&v119, 0);
          (v113)(v56, v58);
          if (!v61)
          {
            FilledColumn.defaultValue.getter(v121);
            v129 = v119;
            v61 = v120;
          }

          v62 = v128;
          if (!v122)
          {
            goto LABEL_23;
          }

          v63 = v125[4];
          v64 = v125[5];
          if (v63 == v129 && v64 == v61 || (_stringCompareWithSmolCheck(_:_:expecting:)(v125[4], v125[5], v129, v61, 0) & 1) != 0)
          {
            v124 = v64;
            v65 = 0;
          }

          else
          {
            if (v122 == 1)
            {
              goto LABEL_23;
            }

            v124 = v64;
            v83 = v125[6];
            v84 = v125[7];
            if (v83 != v129 || (v65 = 1, v84 != v61))
            {
              v65 = 1;
              if ((_stringCompareWithSmolCheck(_:_:expecting:)(v83, v84, v129, v61, 0) & 1) == 0)
              {
                v85 = v118;
                v86 = 2;
                while (v122 != v86)
                {
                  v65 = v86;
                  if (v129 ^ *(v85 - 1) | v61 ^ *v85)
                  {
                    v87 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v85 - 1), *v85, v129, v61, 0);
                    v86 = v65 + 1;
                    v85 += 2;
                    if ((v87 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  goto LABEL_13;
                }

LABEL_23:
                v82 = v61;
                goto LABEL_24;
              }
            }
          }

LABEL_13:
          v129 = v63;
          v110 = v65;
          v61;
          v127 = v62;
          v66 = v98;
          FilledColumn.base.getter(v121);
          v67 = v108;
          v68 = dispatch thunk of Collection.subscript.read(&v119, &v127, v108, v123);
          v123 = *v69;
          v70 = v69[1];

          v68(&v119, 0);
          v71 = v67;
          v72 = v123;
          (v113)(v66, v71);
          if (!v70)
          {
            FilledColumn.defaultValue.getter(v121);
            v72 = v119;
            v70 = v120;
          }

          if (v129 == v72 && v124 == v70 || (_stringCompareWithSmolCheck(_:_:expecting:)(v129, v124, v72, v70, 0) & 1) != 0)
          {
            v73 = 0;
LABEL_19:
            v70;
            v74 = swift_allocObject(v100, 48, 7);
            v74[2] = 2;
            v74[3] = 4;
            v74[4] = v110;
            v74[5] = v73;
            v127 = v62;
            v75 = v99;
            FilledColumn.base.getter(v115);
            v76 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
            v77 = v106;
            v78 = dispatch thunk of Collection.subscript.read(&v119, &v127, v106, v76);
            v80 = *v79;
            v81 = *(v79 + 8);
            v78(&v119, 0);
            (v126)(v75, v77);
            if (v81 == 1)
            {
              FilledColumn.defaultValue.getter(v115);
              LODWORD(v80) = v119;
            }

            *&v119 = v80;
            MLShapedArrayProtocol.subscript.setter(&v119, v74, v117, v101);
            v62 = v128;
            goto LABEL_25;
          }

          if (v122 != 1)
          {
            v88 = v125[6];
            v89 = v125[7];
            if (v88 == v72)
            {
              v73 = 1;
              if (v89 == v70)
              {
                goto LABEL_19;
              }
            }

            v73 = 1;
            if (_stringCompareWithSmolCheck(_:_:expecting:)(v88, v89, v72, v70, 0))
            {
              goto LABEL_19;
            }

            v90 = v118;
            v91 = 2;
            while (v122 != v91)
            {
              if (v122 <= v91)
              {
                BUG();
              }

              v73 = v91;
              if (v72 ^ *(v90 - 1) | v70 ^ *v90)
              {
                v92 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v90 - 1), *v90, v72, v70, 0);
                v91 = v73 + 1;
                v90 += 2;
                if ((v92 & 1) == 0)
                {
                  continue;
                }
              }

              goto LABEL_19;
            }
          }

          v82 = v70;
LABEL_24:
          v82;
LABEL_25:
          v55 = v62 + 1;
        }

        while (v55 != v109);
      }

      (*(v102 + 8))(v116, v115);
      v95 = *(v103 + 8);
      v96 = v121;
      v95(v114, v121);
      v95(v112, v96);
      outlined destroy of MLActivityClassifier.ModelParameters(v107, type metadata accessor for MLClassifierMetrics.Precomputed);
      return (*(v104 + 32))(v105, v111, v117);
    }

    else
    {
      v97;
      v94 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
      return MLShapedArrayProtocol.init(arrayLiteral:)(_swiftEmptyArrayStorage, v117, v94);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v97, &v97, type metadata accessor for AnyClassificationMetrics);
    AnyClassificationMetrics.makeConfusionMatrix()();
    return outlined destroy of MLActivityClassifier.ModelParameters(&v97, type metadata accessor for AnyClassificationMetrics);
  }
}

void *initializeBufferWithCopyOfBuffer for MLClassifierMetrics(void *a1, char *a2)
{
  v3 = a1;
  v4 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v4);
    if (EnumCaseMultiPayload == 2)
    {
      v12 = *a2;
      swift_errorRetain(*a2);
      *a1 = v12;
      v21 = 2;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v16 = swift_getEnumCaseMultiPayload(a2, v15);
        v17 = v16 == 1;
        v18 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v16 == 1)
        {
          v18 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v19 = __swift_instantiateConcreteTypeFromMangledName(v18);
        (*(*(v19 - 8) + 16))(v3, a2, v19);
        swift_storeEnumTagMultiPayload(v3, v15, v17);
        a1 = v3;
        v14 = v4;
        v13 = 0;
        goto LABEL_11;
      }

      *a1 = *a2;
      v22 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v7 = *(v22 + 20);
      v23 = a1 + v7;
      v8 = type metadata accessor for DataFrame(0);
      v9 = &a2[v7];
      v10 = *(*(v8 - 8) + 16);
      v10(v23, v9, v8);
      v10(a1 + *(v22 + 24), &a2[*(v22 + 24)], v8);
      v21 = 1;
    }

    v13 = v21;
    v14 = v4;
LABEL_11:
    swift_storeEnumTagMultiPayload(a1, v14, v13);
    return v3;
  }

  v11 = *a2;
  *v3 = *a2;
  v3 = (v11 + ((v5 + 16) & ~v5));

  return v3;
}

uint64_t destroy for MLClassifierMetrics(uint64_t *a1)
{
  v2 = type metadata accessor for MLClassifierMetrics.Contents(0);
  result = swift_getEnumCaseMultiPayload(a1, v2);
  switch(result)
  {
    case 2:
      return *a1;
    case 1:
      v6 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v7 = a1 + *(v6 + 20);
      v8 = type metadata accessor for DataFrame(0);
      v9 = *(*(v8 - 8) + 8);
      v9(v7, v8);
      return (v9)(a1 + *(v6 + 24), v8);
    case 0:
      v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(a1, v4) == 1)
      {
        v5 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v5 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledName(v5);
      return (*(*(v10 - 8) + 8))(a1, v10);
  }

  return result;
}

void *initializeWithCopy for MLClassifierMetrics(void *a1, char *a2)
{
  v2 = a1;
  v3 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
  if (EnumCaseMultiPayload == 2)
  {
    v10 = *a2;
    swift_errorRetain(*a2);
    *a1 = v10;
    v8 = 2;
    v9 = v3;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v19 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v5 = *(v19 + 20);
    v6 = type metadata accessor for DataFrame(0);
    v18 = v3;
    v7 = *(*(v6 - 8) + 16);
    v7(a1 + v5, &a2[v5], v6);
    v7(a1 + *(v19 + 24), &a2[*(v19 + 24)], v6);
    v8 = 1;
    v9 = v18;
  }

  else
  {
    v11 = v3;
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v13 = swift_getEnumCaseMultiPayload(a2, v12);
    v14 = v13 == 1;
    v15 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v13 == 1)
    {
      v15 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledName(v15);
    (*(*(v16 - 8) + 16))(v2, a2, v16);
    swift_storeEnumTagMultiPayload(v2, v12, v14);
    a1 = v2;
    v9 = v11;
    v8 = 0;
  }

  swift_storeEnumTagMultiPayload(a1, v9, v8);
  return v2;
}

char *assignWithCopy for MLClassifierMetrics(char *a1, char *a2)
{
  v2 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLClassifierMetrics.Contents);
    v3 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
    if (EnumCaseMultiPayload == 2)
    {
      v10 = *a2;
      swift_errorRetain(*a2);
      *a1 = v10;
      v8 = 2;
      v9 = v3;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      v19 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v5 = *(v19 + 20);
      v6 = type metadata accessor for DataFrame(0);
      v18 = v3;
      v7 = *(*(v6 - 8) + 16);
      v7(&a1[v5], &a2[v5], v6);
      v7(&a1[*(v19 + 24)], &a2[*(v19 + 24)], v6);
      v8 = 1;
      v9 = v18;
    }

    else
    {
      v11 = v3;
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v13 = swift_getEnumCaseMultiPayload(a2, v12);
      v14 = v13 == 1;
      v15 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v13 == 1)
      {
        v15 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v16 = __swift_instantiateConcreteTypeFromMangledName(v15);
      (*(*(v16 - 8) + 16))(v2, a2, v16);
      swift_storeEnumTagMultiPayload(v2, v12, v14);
      a1 = v2;
      v9 = v11;
      v8 = 0;
    }

    swift_storeEnumTagMultiPayload(a1, v9, v8);
  }

  return v2;
}

char *initializeWithTake for MLClassifierMetrics(char *__dst, char *__src)
{
  v2 = __dst;
  v3 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v3);
  if (EnumCaseMultiPayload == 1)
  {
    *__dst = *__src;
    v17 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v12 = *(v17 + 20);
    v13 = type metadata accessor for DataFrame(0);
    v16 = v3;
    v14 = *(*(v13 - 8) + 32);
    v14(&__dst[v12], &__src[v12], v13);
    v14(&__dst[*(v17 + 24)], &__src[*(v17 + 24)], v13);
    v11 = 1;
    v10 = v16;
LABEL_7:
    swift_storeEnumTagMultiPayload(__dst, v10, v11);
    return v2;
  }

  if (!EnumCaseMultiPayload)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v6 = swift_getEnumCaseMultiPayload(__src, v5);
    v7 = v6 == 1;
    v8 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v6 == 1)
    {
      v8 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledName(v8);
    (*(*(v9 - 8) + 32))(v2, __src, v9);
    swift_storeEnumTagMultiPayload(v2, v5, v7);
    __dst = v2;
    v10 = v3;
    v11 = 0;
    goto LABEL_7;
  }

  return memcpy(__dst, __src, *(*(v3 - 8) + 64));
}

char *assignWithTake for MLClassifierMetrics(char *__dst, char *__src)
{
  v2 = __dst;
  if (__dst == __src)
  {
    return v2;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLClassifierMetrics.Contents);
  v3 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v3);
  if (EnumCaseMultiPayload == 1)
  {
    *__dst = *__src;
    v17 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v12 = *(v17 + 20);
    v13 = type metadata accessor for DataFrame(0);
    v16 = v3;
    v14 = *(*(v13 - 8) + 32);
    v14(&__dst[v12], &__src[v12], v13);
    v14(&__dst[*(v17 + 24)], &__src[*(v17 + 24)], v13);
    v11 = 1;
    v10 = v16;
LABEL_8:
    swift_storeEnumTagMultiPayload(__dst, v10, v11);
    return v2;
  }

  if (!EnumCaseMultiPayload)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v6 = swift_getEnumCaseMultiPayload(__src, v5);
    v7 = v6 == 1;
    v8 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v6 == 1)
    {
      v8 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledName(v8);
    (*(*(v9 - 8) + 32))(v2, __src, v9);
    swift_storeEnumTagMultiPayload(v2, v5, v7);
    __dst = v2;
    v10 = v3;
    v11 = 0;
    goto LABEL_8;
  }

  return memcpy(__dst, __src, *(*(v3 - 8) + 64));
}

uint64_t type metadata completion function for MLClassifierMetrics(uint64_t a1)
{
  v4 = v1;
  result = type metadata accessor for MLClassifierMetrics.Contents(319);
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 1, &v4, a1 + 16);
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLClassifierMetrics.Contents(void *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *a2;
      swift_errorRetain(*a2);
      *a1 = v13;
      v22 = 2;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v17 = swift_getEnumCaseMultiPayload(a2, v16);
        v18 = v17 == 1;
        v19 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v17 == 1)
        {
          v19 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v20 = __swift_instantiateConcreteTypeFromMangledName(v19);
        (*(*(v20 - 8) + 16))(v4, a2, v20);
        swift_storeEnumTagMultiPayload(v4, v16, v18);
        a1 = v4;
        v15 = a3;
        v14 = 0;
        goto LABEL_11;
      }

      *a1 = *a2;
      v23 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v8 = *(v23 + 20);
      v24 = a1 + v8;
      v9 = type metadata accessor for DataFrame(0);
      v10 = &a2[v8];
      v11 = *(*(v9 - 8) + 16);
      v11(v24, v10, v9);
      v11(a1 + *(v23 + 24), &a2[*(v23 + 24)], v9);
      v22 = 1;
    }

    v14 = v22;
    v15 = a3;
LABEL_11:
    swift_storeEnumTagMultiPayload(a1, v15, v14);
    return v4;
  }

  v12 = *a2;
  *v4 = *a2;
  v4 = (v12 + ((v5 + 16) & ~v5));

  return v4;
}

uint64_t destroy for MLClassifierMetrics.Contents(uint64_t *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  switch(result)
  {
    case 2:
      return *a1;
    case 1:
      v6 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v7 = a1 + *(v6 + 20);
      v8 = type metadata accessor for DataFrame(0);
      v9 = *(*(v8 - 8) + 8);
      v9(v7, v8);
      return (v9)(a1 + *(v6 + 24), v8);
    case 0:
      v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(a1, v4) == 1)
      {
        v5 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v5 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledName(v5);
      return (*(*(v10 - 8) + 8))(a1, v10);
  }

  return result;
}

void *initializeWithCopy for MLClassifierMetrics.Contents(void *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v11 = *a2;
    swift_errorRetain(*a2);
    *a1 = v11;
    v9 = 2;
    v10 = a3;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v20 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v6 = *(v20 + 20);
    v7 = type metadata accessor for DataFrame(0);
    v19 = a3;
    v8 = *(*(v7 - 8) + 16);
    v8(a1 + v6, &a2[v6], v7);
    v8(a1 + *(v20 + 24), &a2[*(v20 + 24)], v7);
    v9 = 1;
    v10 = v19;
  }

  else
  {
    v12 = a3;
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v14 = swift_getEnumCaseMultiPayload(a2, v13);
    v15 = v14 == 1;
    v16 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v14 == 1)
    {
      v16 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledName(v16);
    (*(*(v17 - 8) + 16))(v4, a2, v17);
    swift_storeEnumTagMultiPayload(v4, v13, v15);
    a1 = v4;
    v10 = v12;
    v9 = 0;
  }

  swift_storeEnumTagMultiPayload(a1, v10, v9);
  return v4;
}

char *assignWithCopy for MLClassifierMetrics.Contents(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLClassifierMetrics.Contents);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    if (EnumCaseMultiPayload == 2)
    {
      v11 = *a2;
      swift_errorRetain(*a2);
      *a1 = v11;
      v20 = 2;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v15 = swift_getEnumCaseMultiPayload(a2, v14);
        v16 = v15 == 1;
        v17 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v15 == 1)
        {
          v17 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v18 = __swift_instantiateConcreteTypeFromMangledName(v17);
        (*(*(v18 - 8) + 16))(v3, a2, v18);
        swift_storeEnumTagMultiPayload(v3, v14, v16);
        a1 = v3;
        v13 = a3;
        v12 = 0;
        goto LABEL_10;
      }

      *a1 = *a2;
      v21 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v7 = *(v21 + 20);
      v22 = &a1[v7];
      v8 = type metadata accessor for DataFrame(0);
      v9 = &a2[v7];
      v10 = *(*(v8 - 8) + 16);
      v10(v22, v9, v8);
      v10(&a1[*(v21 + 24)], &a2[*(v21 + 24)], v8);
      v20 = 1;
    }

    v12 = v20;
    v13 = a3;
LABEL_10:
    swift_storeEnumTagMultiPayload(a1, v13, v12);
  }

  return v3;
}

char *initializeWithTake for MLClassifierMetrics.Contents(char *__dst, char *__src, uint64_t a3)
{
  v4 = __dst;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 1)
  {
    *__dst = *__src;
    v18 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v13 = *(v18 + 20);
    v14 = type metadata accessor for DataFrame(0);
    v17 = a3;
    v15 = *(*(v14 - 8) + 32);
    v15(&__dst[v13], &__src[v13], v14);
    v15(&__dst[*(v18 + 24)], &__src[*(v18 + 24)], v14);
    v12 = 1;
    v11 = v17;
LABEL_7:
    swift_storeEnumTagMultiPayload(__dst, v11, v12);
    return v4;
  }

  if (!EnumCaseMultiPayload)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v7 = swift_getEnumCaseMultiPayload(__src, v6);
    v8 = v7 == 1;
    v9 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v7 == 1)
    {
      v9 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledName(v9);
    (*(*(v10 - 8) + 32))(v4, __src, v10);
    swift_storeEnumTagMultiPayload(v4, v6, v8);
    __dst = v4;
    v11 = a3;
    v12 = 0;
    goto LABEL_7;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

char *assignWithTake for MLClassifierMetrics.Contents(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  if (__dst == __src)
  {
    return v3;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLClassifierMetrics.Contents);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 1)
  {
    *__dst = *__src;
    v19 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v14 = *(v19 + 20);
    v20 = &__dst[v14];
    v15 = type metadata accessor for DataFrame(0);
    v16 = &__src[v14];
    v17 = *(*(v15 - 8) + 32);
    v17(v20, v16, v15);
    v17(&__dst[*(v19 + 24)], &__src[*(v19 + 24)], v15);
    v13 = 1;
    v12 = a3;
LABEL_8:
    swift_storeEnumTagMultiPayload(__dst, v12, v13);
    return v3;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v8 = swift_getEnumCaseMultiPayload(__src, v7);
    v9 = v8 == 1;
    v10 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v8 == 1)
    {
      v10 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledName(v10);
    (*(*(v11 - 8) + 32))(v3, __src, v11);
    swift_storeEnumTagMultiPayload(v3, v7, v9);
    __dst = v3;
    v12 = a3;
    v13 = 0;
    goto LABEL_8;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLClassifierMetrics.Contents(uint64_t a1)
{
  result = type metadata accessor for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(319);
  if (v2 <= 0x3F)
  {
    v6[0] = *(result - 8) + 64;
    result = type metadata accessor for MLClassifierMetrics.Precomputed(319);
    if (v5 <= 0x3F)
    {
      v6[1] = *(result - 8) + 64;
      v6[2] = "\b";
      swift_initEnumMetadataMultiPayload(a1, 256, 3, v6, v3, v4);
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLClassifierMetrics.Precomputed(void *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = *(a3 + 20);
    v13 = a1 + v7;
    v8 = type metadata accessor for DataFrame(0);
    v9 = &a2[v7];
    v10 = *(*(v8 - 8) + 16);
    v10(v13, v9, v8);
    v10(a1 + *(a3 + 24), &a2[*(a3 + 24)], v8);
  }

  return v4;
}

uint64_t destroy for MLClassifierMetrics.Precomputed(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 20);
  v3 = type metadata accessor for DataFrame(0);
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  return v4(a1 + *(a2 + 24), v3);
}

char *initializeWithCopy for MLClassifierMetrics.Precomputed(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = type metadata accessor for DataFrame(0);
  v5 = *(*(v4 - 8) + 16);
  v5(&a1[v3], &a2[v3], v4);
  v5(&a1[*(a3 + 24)], &a2[*(a3 + 24)], v4);
  return a1;
}

char *assignWithCopy for MLClassifierMetrics.Precomputed(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = type metadata accessor for DataFrame(0);
  v5 = *(*(v4 - 8) + 24);
  v5(&a1[v3], &a2[v3], v4);
  v5(&a1[*(a3 + 24)], &a2[*(a3 + 24)], v4);
  return a1;
}

char *initializeWithTake for MLClassifierMetrics.Precomputed(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = type metadata accessor for DataFrame(0);
  v5 = *(*(v4 - 8) + 32);
  v5(&a1[v3], &a2[v3], v4);
  v5(&a1[*(a3 + 24)], &a2[*(a3 + 24)], v4);
  return a1;
}

char *assignWithTake for MLClassifierMetrics.Precomputed(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = type metadata accessor for DataFrame(0);
  v5 = *(*(v4 - 8) + 40);
  v5(&a1[v3], &a2[v3], v4);
  v5(&a1[*(a3 + 24)], &a2[*(a3 + 24)], v4);
  return a1;
}

uint64_t type metadata completion function for MLClassifierMetrics.Precomputed(uint64_t a1)
{
  v3 = &value witness table for Builtin.Int64 + 64;
  result = type metadata accessor for DataFrame(319);
  if (v2 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    v5 = v4;
    swift_initStructMetadata(a1, 256, 3, &v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnyColumn and conformance AnyColumn()
{
  result = lazy protocol witness table cache variable for type AnyColumn and conformance AnyColumn;
  if (!lazy protocol witness table cache variable for type AnyColumn and conformance AnyColumn)
  {
    v1 = type metadata accessor for AnyColumn(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for AnyColumn, v1);
    lazy protocol witness table cache variable for type AnyColumn and conformance AnyColumn = result;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MLObjectDetector.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *__src;
    *v3 = *__src;
    v3 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v15 = type metadata accessor for DataFrame(0);
        (*(*(v15 - 8) + 16))(__dst, __src, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
        v17 = *(v16 + 48);
        *&__dst[v17] = *&__src[v17];
        *&__dst[v17 + 8] = *&__src[v17 + 8];
        v18 = *(v16 + 64);
        *&__dst[v18] = *&__src[v18];
        *&__dst[v18 + 8] = *&__src[v18 + 8];

        swift_storeEnumTagMultiPayload(__dst, a3, 3);
        break;
      case 2:
        v13 = *__src;
        v14 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v14);
        *__dst = v13;
        __dst[8] = v14;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);

        swift_storeEnumTagMultiPayload(__dst, a3, 2);
        break;
      case 1:
        v8 = type metadata accessor for MLObjectDetector.DataSource(0);
        switch(swift_getEnumCaseMultiPayload(__src, v8))
        {
          case 0u:
            v9 = type metadata accessor for URL(0);
            (*(*(v9 - 8) + 16))(__dst, __src, v9);
            v10 = v8;
            v11 = 0;
            break;
          case 1u:
            v26 = type metadata accessor for URL(0);
            v30 = v8;
            v27 = *(*(v26 - 8) + 16);
            v27(__dst, __src, v26);
            v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
            v27(&__dst[*(v28 + 48)], &__src[*(v28 + 48)], v26);
            v29 = 1;
            goto LABEL_14;
          case 2u:
            v20 = *__src;
            v30 = v8;
            v21 = __src[8];
            outlined copy of Result<_DataTable, Error>(*__src, v21);
            *__dst = v20;
            __dst[8] = v21;
            *(__dst + 2) = *(__src + 2);
            *(__dst + 3) = *(__src + 3);
            *(__dst + 4) = *(__src + 4);
            *(__dst + 5) = *(__src + 5);

            v29 = 2;
LABEL_14:
            v11 = v29;
            v10 = v30;
            break;
          case 3u:
            v22 = type metadata accessor for DataFrame(0);
            (*(*(v22 - 8) + 16))(__dst, __src, v22);
            v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
            v24 = *(v23 + 48);
            *&__dst[v24] = *&__src[v24];
            *&__dst[v24 + 8] = *&__src[v24 + 8];
            v25 = *(v23 + 64);
            *&__dst[v25] = *&__src[v25];
            *&__dst[v25 + 8] = *&__src[v25 + 8];

            v11 = 3;
            v10 = v8;
            break;
          case 4u:
            JUMPOUT(0x1B250CLL);
        }

        swift_storeEnumTagMultiPayload(__dst, v10, v11);
        swift_storeEnumTagMultiPayload(__dst, a3, 1);
        break;
      default:
        return memcpy(__dst, __src, *(v4 + 64));
    }
  }

  return v3;
}

uint64_t destroy for MLObjectDetector.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  switch(result)
  {
    case 3:
LABEL_7:
      v5 = type metadata accessor for DataFrame(0);
      (*(*(v5 - 8) + 8))(a1, v5);
      v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *(a1 + *(v6 + 48) + 8);
      return *(a1 + *(v6 + 64) + 8);
    case 2:
LABEL_6:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      return *(a1 + 40);
    case 1:
      v3 = type metadata accessor for MLObjectDetector.DataSource(0);
      result = swift_getEnumCaseMultiPayload(a1, v3);
      switch(result)
      {
        case 0:
          v4 = type metadata accessor for URL(0);
          result = (*(*(v4 - 8) + 8))(a1, v4);
          break;
        case 1:
          v7 = type metadata accessor for URL(0);
          v8 = *(*(v7 - 8) + 8);
          v8(a1, v7);
          v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL)) + 48);
          result = (v8)(v9, v7);
          break;
        case 2:
          goto LABEL_6;
        case 3:
          goto LABEL_7;
        default:
          return result;
      }

      break;
  }

  return result;
}

char *initializeWithCopy for MLObjectDetector.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 16))(__dst, __src, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      v13 = *(v12 + 48);
      *&__dst[v13] = *&__src[v13];
      *&__dst[v13 + 8] = *&__src[v13 + 8];
      v14 = *(v12 + 64);
      *&__dst[v14] = *&__src[v14];
      *&__dst[v14 + 8] = *&__src[v14 + 8];

      swift_storeEnumTagMultiPayload(__dst, a3, 3);
      break;
    case 2:
      v9 = *__src;
      v10 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v10);
      *__dst = v9;
      __dst[8] = v10;
      *(__dst + 2) = *(__src + 2);
      *(__dst + 3) = *(__src + 3);
      *(__dst + 4) = *(__src + 4);
      *(__dst + 5) = *(__src + 5);

      swift_storeEnumTagMultiPayload(__dst, a3, 2);
      break;
    case 1:
      v5 = type metadata accessor for MLObjectDetector.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v5))
      {
        case 0u:
          v6 = type metadata accessor for URL(0);
          (*(*(v6 - 8) + 16))(__dst, __src, v6);
          v7 = v5;
          v8 = 0;
          break;
        case 1u:
          v22 = type metadata accessor for URL(0);
          v26 = v5;
          v23 = *(*(v22 - 8) + 16);
          v23(__dst, __src, v22);
          v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
          v23(&__dst[*(v24 + 48)], &__src[*(v24 + 48)], v22);
          v25 = 1;
          goto LABEL_12;
        case 2u:
          v16 = *__src;
          v26 = v5;
          v17 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v17);
          *__dst = v16;
          __dst[8] = v17;
          *(__dst + 2) = *(__src + 2);
          *(__dst + 3) = *(__src + 3);
          *(__dst + 4) = *(__src + 4);
          *(__dst + 5) = *(__src + 5);

          v25 = 2;
LABEL_12:
          v8 = v25;
          v7 = v26;
          break;
        case 3u:
          v18 = type metadata accessor for DataFrame(0);
          (*(*(v18 - 8) + 16))(__dst, __src, v18);
          v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
          v20 = *(v19 + 48);
          *&__dst[v20] = *&__src[v20];
          *&__dst[v20 + 8] = *&__src[v20 + 8];
          v21 = *(v19 + 64);
          *&__dst[v21] = *&__src[v21];
          *&__dst[v21 + 8] = *&__src[v21 + 8];

          v8 = 3;
          v7 = v5;
          break;
      }

      swift_storeEnumTagMultiPayload(__dst, v7, v8);
      swift_storeEnumTagMultiPayload(__dst, a3, 1);
      break;
    default:
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  return __dst;
}

char *assignWithCopy for MLObjectDetector.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLObjectDetector.ModelParameters.ValidationData(__dst, type metadata accessor for MLObjectDetector.ModelParameters.ValidationData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 16))(__dst, __src, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
        v13 = *(v12 + 48);
        *&__dst[v13] = *&__src[v13];
        *&__dst[v13 + 8] = *&__src[v13 + 8];
        v14 = *(v12 + 64);
        *&__dst[v14] = *&__src[v14];
        *&__dst[v14 + 8] = *&__src[v14 + 8];

        swift_storeEnumTagMultiPayload(__dst, a3, 3);
        break;
      case 2:
        v9 = *__src;
        v10 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v10);
        *__dst = v9;
        __dst[8] = v10;
        *(__dst + 2) = *(__src + 2);
        *(__dst + 3) = *(__src + 3);
        *(__dst + 4) = *(__src + 4);
        *(__dst + 5) = *(__src + 5);

        swift_storeEnumTagMultiPayload(__dst, a3, 2);
        break;
      case 1:
        v5 = type metadata accessor for MLObjectDetector.DataSource(0);
        switch(swift_getEnumCaseMultiPayload(__src, v5))
        {
          case 0u:
            v6 = type metadata accessor for URL(0);
            (*(*(v6 - 8) + 16))(__dst, __src, v6);
            v7 = v5;
            v8 = 0;
            break;
          case 1u:
            v22 = type metadata accessor for URL(0);
            v26 = v5;
            v23 = *(*(v22 - 8) + 16);
            v23(__dst, __src, v22);
            v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
            v23(&__dst[*(v24 + 48)], &__src[*(v24 + 48)], v22);
            v25 = 1;
            goto LABEL_13;
          case 2u:
            v16 = *__src;
            v26 = v5;
            v17 = __src[8];
            outlined copy of Result<_DataTable, Error>(*__src, v17);
            *__dst = v16;
            __dst[8] = v17;
            *(__dst + 2) = *(__src + 2);
            *(__dst + 3) = *(__src + 3);
            *(__dst + 4) = *(__src + 4);
            *(__dst + 5) = *(__src + 5);

            v25 = 2;
LABEL_13:
            v8 = v25;
            v7 = v26;
            break;
          case 3u:
            v18 = type metadata accessor for DataFrame(0);
            (*(*(v18 - 8) + 16))(__dst, __src, v18);
            v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
            v20 = *(v19 + 48);
            *&__dst[v20] = *&__src[v20];
            *&__dst[v20 + 8] = *&__src[v20 + 8];
            v21 = *(v19 + 64);
            *&__dst[v21] = *&__src[v21];
            *&__dst[v21 + 8] = *&__src[v21 + 8];

            v8 = 3;
            v7 = v5;
            break;
        }

        swift_storeEnumTagMultiPayload(__dst, v7, v8);
        swift_storeEnumTagMultiPayload(__dst, a3, 1);
        break;
      default:
        return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }
  }

  return __dst;
}

uint64_t type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLObjectDetector.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLObjectDetector.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLObjectDetector.ModelParameters.ValidationData);
  }

  return result;
}

char *initializeWithTake for MLObjectDetector.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v5 = type metadata accessor for MLObjectDetector.DataSource(0);
    v6 = swift_getEnumCaseMultiPayload(__src, v5);
    if (v6 == 3)
    {
      v15 = type metadata accessor for DataFrame(0);
      (*(*(v15 - 8) + 32))(__dst, __src, v15);
      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *&__dst[*(v16 + 48)] = *&__src[*(v16 + 48)];
      *&__dst[*(v16 + 64)] = *&__src[*(v16 + 64)];
      v17 = 3;
    }

    else
    {
      if (v6 != 1)
      {
        if (v6)
        {
          memcpy(__dst, __src, *(*(v5 - 8) + 64));
          goto LABEL_14;
        }

        v7 = type metadata accessor for URL(0);
        (*(*(v7 - 8) + 32))(__dst, __src, v7);
        v8 = v5;
        v9 = 0;
LABEL_12:
        swift_storeEnumTagMultiPayload(__dst, v8, v9);
LABEL_14:
        swift_storeEnumTagMultiPayload(__dst, a3, 1);
        return __dst;
      }

      v18 = type metadata accessor for URL(0);
      v13 = *(*(v18 - 8) + 32);
      v13(__dst, __src, v18);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
      v13(&__dst[*(v14 + 48)], &__src[*(v14 + 48)], v18);
      v17 = 1;
    }

    v9 = v17;
    v8 = v5;
    goto LABEL_12;
  }

  v10 = type metadata accessor for DataFrame(0);
  (*(*(v10 - 8) + 32))(__dst, __src, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
  *&__dst[*(v11 + 48)] = *&__src[*(v11 + 48)];
  *&__dst[*(v11 + 64)] = *&__src[*(v11 + 64)];
  swift_storeEnumTagMultiPayload(__dst, a3, 3);
  return __dst;
}

char *assignWithTake for MLObjectDetector.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLObjectDetector.ModelParameters.ValidationData(__dst, type metadata accessor for MLObjectDetector.ModelParameters.ValidationData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v5 = type metadata accessor for MLObjectDetector.DataSource(0);
    v6 = swift_getEnumCaseMultiPayload(__src, v5);
    if (v6 == 3)
    {
      v15 = type metadata accessor for DataFrame(0);
      (*(*(v15 - 8) + 32))(__dst, __src, v15);
      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *&__dst[*(v16 + 48)] = *&__src[*(v16 + 48)];
      *&__dst[*(v16 + 64)] = *&__src[*(v16 + 64)];
      v17 = 3;
    }

    else
    {
      if (v6 != 1)
      {
        if (v6)
        {
          memcpy(__dst, __src, *(*(v5 - 8) + 64));
          goto LABEL_15;
        }

        v7 = type metadata accessor for URL(0);
        (*(*(v7 - 8) + 32))(__dst, __src, v7);
        v8 = v5;
        v9 = 0;
LABEL_13:
        swift_storeEnumTagMultiPayload(__dst, v8, v9);
LABEL_15:
        swift_storeEnumTagMultiPayload(__dst, a3, 1);
        return __dst;
      }

      v18 = type metadata accessor for URL(0);
      v13 = *(*(v18 - 8) + 32);
      v13(__dst, __src, v18);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
      v13(&__dst[*(v14 + 48)], &__src[*(v14 + 48)], v18);
      v17 = 1;
    }

    v9 = v17;
    v8 = v5;
    goto LABEL_13;
  }

  v10 = type metadata accessor for DataFrame(0);
  (*(*(v10 - 8) + 32))(__dst, __src, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
  *&__dst[*(v11 + 48)] = *&__src[*(v11 + 48)];
  *&__dst[*(v11 + 64)] = *&__src[*(v11 + 64)];
  swift_storeEnumTagMultiPayload(__dst, a3, 3);
  return __dst;
}

uint64_t type metadata completion function for MLObjectDetector.ModelParameters.ValidationData(uint64_t a1)
{
  v7[0] = &unk_3447A8;
  result = type metadata accessor for MLObjectDetector.DataSource(319);
  if (v2 <= 0x3F)
  {
    v7[1] = *(result - 8) + 64;
    v7[2] = &unk_3447C0;
    result = type metadata accessor for DataFrame(319);
    if (v3 <= 0x3F)
    {
      swift_getTupleTypeLayout3(v6, *(result - 8) + 64, &unk_3447D8, &unk_3447D8);
      v7[3] = v6;
      swift_initEnumMetadataMultiPayload(a1, 256, 4, v7, v4, v5);
      return 0;
    }
  }

  return result;
}

void *MLObjectDetector.ModelParameters.ValidationData.generateTables(trainingData:)(uint64_t *a1, uint64_t *a2, uint64_t a3, __m128 a4)
{
  v127[1] = v4;
  v134 = v5;
  v125 = a2;
  v124 = a1;
  v126._countAndFlagsBits = type metadata accessor for DataFrame(0);
  v127[0] = *(v126._countAndFlagsBits - 8);
  v7 = *(v127[0] + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v126._object = &v109;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v132 = &v109;
  v12 = *(*(type metadata accessor for MLObjectDetector.DataSource(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  named = &v109;
  v15 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v19 = *a3;
  v20 = *(a3 + 8);
  outlined init with copy of MLObjectDetector.ModelParameters.ValidationData(v134, &v109);
  switch(swift_getEnumCaseMultiPayload(&v109, v15))
  {
    case 0u:
      v117 = v19;
      v118 = v20 & 1;
      v128 = v109;
      v129 = v110;
      MLDataTable.randomSplit(strategy:)(&v130, &v119, &v128);
      result = v130;
      v22 = v131;
      v23 = v120;
      v24 = v124;
      *v124 = v119;
      *(v24 + 8) = v23;
      v25 = v125;
      *v125 = result;
      *(v25 + 8) = v22;
      break;
    case 1u:
      v51 = named;
      outlined init with take of MLObjectDetector.DataSource(&v109, named);
      v52 = v124;
      *v124 = v19;
      *(v52 + 8) = v20 & 1;
      outlined copy of Result<_DataTable, Error>(v19, v20);
      v53 = v127[1];
      static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:)(v51, 0, 0, 0, 0, a4);
      if (v53)
      {
        outlined consume of Result<_DataTable, Error>(v19, v20);
        result = outlined destroy of MLObjectDetector.ModelParameters.ValidationData(named, type metadata accessor for MLObjectDetector.DataSource);
      }

      else
      {
        outlined destroy of MLObjectDetector.ModelParameters.ValidationData(named, type metadata accessor for MLObjectDetector.DataSource);
        result = v128;
        v63 = BYTE8(v128);
        v64 = v125;
        *v125 = v128;
        *(v64 + 8) = v63;
      }

      break;
    case 2u:
      v122._object = v19;
      v33 = v109;
      LOBYTE(v134) = BYTE8(v109);
      named = v111;
      v130 = v109;
      LOBYTE(v131) = BYTE8(v109);
      v132 = v113;
      v127[0] = v112;
      v126._countAndFlagsBits = v110;
      if (BYTE8(v109))
      {
        outlined copy of Result<_DataTable, Error>(v109, 1);
        outlined copy of Result<_DataTable, Error>(v33, 1);
        v34 = tc_v1_flex_list_create(0);
        if (!v34)
        {
          BUG();
        }

        v35 = v34;
        outlined consume of Result<_DataTable, Error>(v33, 1);
        v36 = type metadata accessor for CMLSequence();
        v37 = swift_allocObject(v36, 25, 7);
        *(v37 + 16) = v35;
        *(v37 + 24) = 1;
      }

      else
      {
        outlined copy of Result<_DataTable, Error>(v109, 0);
        outlined copy of Result<_DataTable, Error>(v33, 0);
        _DataTable.columnNames.getter();
        outlined consume of Result<_DataTable, Error>(v33, 0);
        v37 = v128;
      }

      v57 = CMLSequence.size.getter();
      v58 = specialized RandomAccessCollection<>.distance(from:to:)(0, v57);
      v37;
      v135 = v20;
      if (!v58)
      {
        goto LABEL_23;
      }

      if (v134)
      {
        outlined copy of Result<_DataTable, Error>(v33, 1);
        v59 = tc_v1_flex_list_create(0);
        if (!v59)
        {
          BUG();
        }

        v60 = v59;
        v61 = type metadata accessor for CMLSequence();
        v62 = swift_allocObject(v61, 25, 7);
        *(v62 + 16) = v60;
        *(v62 + 24) = 1;
        outlined consume of Result<_DataTable, Error>(v33, 1);
      }

      else
      {
        outlined copy of Result<_DataTable, Error>(v33, 0);
        _DataTable.columnNames.getter();
        outlined consume of Result<_DataTable, Error>(v33, 0);
        v62 = v119;
      }

      *&v128 = v127[0];
      *(&v128 + 1) = v132;
      v65 = alloca(24);
      v66 = alloca(32);
      v110 = &v128;
      v67 = v127[1];
      v68 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v109, v62);
      v127[1] = v67;

      if ((v68 & 1) == 0)
      {
        named;
        outlined consume of Result<_DataTable, Error>(v33, v134);
        *&v128 = 0;
        *(&v128 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(45);
        SBYTE8(v128);
        *&v128 = 0xD00000000000002ALL;
        *(&v128 + 1) = "Accuracy: %.2f%%\n" + 0x8000000000000000;
        v72._countAndFlagsBits = v127[0];
        v73 = v132;
        v72._object = v132;
        String.append(_:)(v72);
        v73;
        v72._countAndFlagsBits = 46;
        v72._object = 0xE100000000000000;
        String.append(_:)(v72);
        *&v127[1] = v128;
        v74 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v74, 0, 0);
        *v75 = *&v127[1];
        *(v75 + 16) = 0;
        *(v75 + 32) = 0;
        *(v75 + 48) = 1;
        swift_willThrow();
        result = outlined consume of Result<_DataTable, Error>(v130, v131);
      }

      else
      {
LABEL_23:
        v69 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
        inited = swift_initStackObject(v69, v115);
        inited[2] = 1;
        inited[3] = 2;
        inited[4] = v126._countAndFlagsBits;
        inited[5] = named;
        *&v128 = v33;
        BYTE8(v128) = v134;

        v71 = v127[1];
        static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v128, 0x6C69466567616D49, 0xED0000656D614E65, inited);
        if (!v71)
        {
          *&v128 = v33;
          BYTE8(v128) = v134;
          v84 = swift_initStackObject(v69, v116);
          v84[2] = 1;
          v84[3] = 2;
          v84[4] = v127[0];
          v84[5] = v132;

          static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v128, 0x697461746F6E6E41, 0xEA00000000006E6FLL, v84);
          v127[1] = 0;
          v88 = v127[0];
          swift_setDeallocating(v84);
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          outlined consume of Result<_DataTable, Error>(v33, v134);
          swift_setDeallocating(inited);
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          MLDataTable.willMutate()();
          v89._object = 0xED0000656D616E65;
          v89._countAndFlagsBits = 0x6C69666567616D69;
          v90._countAndFlagsBits = v126._countAndFlagsBits;
          v90._object = named;
          MLDataTable.renameImpl(named:to:)(v90, v89);
          if (!v131)
          {
            v91 = v130;
            outlined copy of Result<_DataTable, Error>(v130, 0);
            _DataTable.columnNamesDidChange()();
            outlined consume of Result<_DataTable, Error>(v91, 0);
          }

          named;
          MLDataTable.willMutate()();
          v92._countAndFlagsBits = 0x697461746F6E6E61;
          v93._countAndFlagsBits = v88;
          v94 = v132;
          v93._object = v132;
          v92._object = 0xEA00000000006E6FLL;
          MLDataTable.renameImpl(named:to:)(v93, v92);
          LOBYTE(v134) = v131;
          object = v122._object;
          if (v131)
          {
            v94;
            v96 = v130;
          }

          else
          {
            v96 = v130;
            outlined copy of Result<_DataTable, Error>(v130, 0);
            _DataTable.columnNamesDidChange()();
            outlined consume of Result<_DataTable, Error>(v96, 0);
            v94;
          }

          v97 = v124;
          *v124 = object;
          v98 = v135;
          *(v97 + 8) = v135 & 1;
          v99 = v125;
          *v125 = v96;
          *(v99 + 8) = v134;
          goto LABEL_42;
        }

        v127[1] = v71;
        inited;
        v132;
        named;
        v85 = v134;
        outlined consume of Result<_DataTable, Error>(v33, v134);
        result = outlined consume of Result<_DataTable, Error>(v33, v85);
      }

      break;
    case 3u:
      v122._object = v19;
      v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      v39 = *(v38 + 48);
      v122._countAndFlagsBits = *(&v109 + v39);
      named = *(&v109 + v39 + 8);
      v40 = *(v38 + 64);
      v123._countAndFlagsBits = *(&v109 + v40);
      v134 = *(&v109 + v40 + 8);
      v41 = v132;
      countAndFlagsBits = v126._countAndFlagsBits;
      v43 = v127[0];
      (*(v127[0] + 32))(v132, &v109, v126._countAndFlagsBits);
      v44 = DataFrame.columns.getter(v41);
      v45 = *(v44 + 16);
      v44;
      if (v45 && (v46._countAndFlagsBits = v123._countAndFlagsBits, v46._object = v134, DataFrame.indexOfColumn(_:)(v46).is_nil))
      {
        named;
        *&v128 = 0;
        *(&v128 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(45);
        SBYTE8(v128);
        *&v128 = 0xD00000000000002ALL;
        *(&v128 + 1) = "Accuracy: %.2f%%\n" + 0x8000000000000000;
        v47._countAndFlagsBits = v123._countAndFlagsBits;
        v48 = v134;
        v47._object = v134;
        String.append(_:)(v47);
        v48;
        v47._countAndFlagsBits = 46;
        v47._object = 0xE100000000000000;
        String.append(_:)(v47);
        *&v127[1] = v128;
        v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
        *v50 = *&v127[1];
        *(v50 + 16) = 0;
        *(v50 + 32) = 0;
        *(v50 + 48) = 1;
        swift_willThrow();
        result = (*(v43 + 8))(v132, countAndFlagsBits);
      }

      else
      {
        v54 = countAndFlagsBits;
        v55 = v126._object;
        *a4.i64 = (*(v43 + 16))(v126._object, v132, v54);
        v56 = v127[1];
        MLDataTable.init(_:convertArraysToShapedArrays:)(v55, 0, a4);
        if (v56)
        {
          (*(v43 + 8))(v132, v54);
          v134;
          result = named;
        }

        else
        {
          v135 = v20;
          v76 = v128;
          v77 = DWORD2(v128);
          v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
          v127[1] = 0;
          v121 = v78;
          v79 = swift_initStackObject(v78, &v109);
          v79[2] = 1;
          v79[3] = 2;
          v79[4] = v122._countAndFlagsBits;
          v79[5] = named;
          v130 = v76;
          LOBYTE(v131) = v77 & 1;
          v126._object = v76;
          v80 = v76;
          v81 = v79;
          HIDWORD(v123._object) = v77;
          outlined copy of Result<_DataTable, Error>(v80, v77);

          v82 = v127[1];
          static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v130, 0x6C69466567616D49, 0xED0000656D614E65, v81);
          if (v82)
          {
            v83 = v126._object;
            v81;
            v134;
            named;
            v87 = BYTE4(v123._object);
            outlined consume of Result<_DataTable, Error>(v83, SBYTE4(v123._object));
            outlined consume of Result<_DataTable, Error>(v83, v87);
            result = (*(v127[0] + 8))(v132, v126._countAndFlagsBits);
          }

          else
          {
            v130 = v126._object;
            LOBYTE(v131) = v77 & 1;
            v86 = swift_initStackObject(v121, v114);
            v86[2] = 1;
            v86[3] = 2;
            v86[4] = v123._countAndFlagsBits;
            v86[5] = v134;

            static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v130, 0x697461746F6E6E41, 0xEA00000000006E6FLL, v86);
            swift_setDeallocating(v86);
            specialized _ContiguousArrayStorage.__deallocating_deinit();
            outlined consume of Result<_DataTable, Error>(v126._object, SBYTE4(v123._object));
            swift_setDeallocating(v81);
            specialized _ContiguousArrayStorage.__deallocating_deinit();
            MLDataTable.willMutate()();
            v100._countAndFlagsBits = 0x6C69666567616D69;
            v101._countAndFlagsBits = v122._countAndFlagsBits;
            v101._object = named;
            v100._object = 0xED0000656D616E65;
            MLDataTable.renameImpl(named:to:)(v101, v100);
            if (!BYTE8(v128))
            {
              v102 = v128;
              outlined copy of Result<_DataTable, Error>(v128, 0);
              _DataTable.columnNamesDidChange()();
              outlined consume of Result<_DataTable, Error>(v102, 0);
            }

            named;
            MLDataTable.willMutate()();
            v103._countAndFlagsBits = 0x697461746F6E6E61;
            v104._countAndFlagsBits = v123._countAndFlagsBits;
            v104._object = v134;
            v103._object = 0xEA00000000006E6FLL;
            MLDataTable.renameImpl(named:to:)(v104, v103);
            v105 = v124;
            object = v122._object;
            if (!BYTE8(v128))
            {
              v106 = v128;
              outlined copy of Result<_DataTable, Error>(v128, 0);
              _DataTable.columnNamesDidChange()();
              outlined consume of Result<_DataTable, Error>(v106, 0);
            }

            v134;
            (*(v127[0] + 8))(v132, v126._countAndFlagsBits);
            *v105 = object;
            v98 = v135;
            *(v105 + 8) = v135 & 1;
            v107 = BYTE8(v128);
            v108 = v125;
            *v125 = v128;
            *(v108 + 8) = v107;
LABEL_42:
            result = outlined copy of Result<_DataTable, Error>(object, v98);
          }
        }
      }

      break;
    case 4u:
      v26 = v124;
      *v124 = v19;
      *(v26 + 8) = v20 & 1;
      outlined copy of Result<_DataTable, Error>(v19, v20);
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v28 = empty;
      v29 = type metadata accessor for CMLTable();
      v30 = swift_allocObject(v29, 24, 7);
      *(v30 + 16) = v28;
      v31 = type metadata accessor for _DataTable();
      swift_allocObject(v31, 40, 7);
      result = _DataTable.init(impl:)(v30);
      v32 = v125;
      *v125 = result;
      *(v32 + 8) = 0;
      break;
  }

  return result;
}

uint64_t outlined init with copy of MLObjectDetector.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLObjectDetector.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLObjectDetector.DataSource(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of MLObjectDetector.ModelParameters.ValidationData(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _Model.evaluation(from:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return CMLModel.evaluate(table:)(&v3);
}

void *_Model.attributes.getter(double a1)
{
  if (*(v1 + 40))
  {
    v2 = *(v1 + 40);
  }

  else
  {
    v2 = _Model.getAttributes()(a1);
    v3 = *(v1 + 40);
    *(v1 + 40) = v2;

    v3;
  }

  return v2;
}

uint64_t _Model.write(to:metadata:)(uint64_t a1, uint64_t *a2)
{
  object = v2;
  *&v93 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v94 = v79;
  v92 = type metadata accessor for URL(0);
  v89 = *(v92 - 8);
  v7 = *(v89 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v85 = *a2;
  v91 = a2[1];
  v83 = a2[2];
  v84 = a2[3];
  v81 = a2[4];
  v82 = a2[5];
  v95 = a2[6];
  v99 = a2[7];
  v97 = a2[8];
  v88 = v3;
  v10 = ModelType.description.getter(*(v3 + 32));
  v12 = v11;
  v13 = object;
  static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v93, v10, v11, 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (v13)
  {
    return v12;
  }

  v96 = v79;
  v12;
  v15 = v94;
  __swift_storeEnumTagSinglePayload(v94, 1, 1, v92);
  v90 = CMLModel.export(to:)(v15);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v15, &demangling cache variable for type metadata for URL?);
  v16 = tc_v1_flex_dict_create(0);
  if (!v16)
  {
    BUG();
  }

  v17 = v16;
  v94 = type metadata accessor for CMLDictionary();
  inited = swift_initStackObject(v94, v79);
  *(inited + 16) = v17;
  v19 = v91;
  v98 = inited;
  if (v91)
  {
    v20 = type metadata accessor for CMLFeatureValue();

    object = v20;
    v21 = CMLFeatureValue.__allocating_init(_:)(v85, v19);
    CMLDictionary.add(key:value:)(0x726F68747561, 0xE600000000000000, v21);

    v22 = v84;

    v23 = CMLFeatureValue.__allocating_init(_:)(v83, v22);
    CMLDictionary.add(key:value:)(0xD000000000000011, ("No data found for label '" + 0x8000000000000000), v23);

    v24 = v82;
    v25 = v81;
    if (v82)
    {

      v26 = CMLFeatureValue.__allocating_init(_:)(v25, v24);
      CMLDictionary.add(key:value:)(0x65736E6563696CLL, 0xE700000000000000, v26);
    }

    v27 = v95;
    v28 = v99;

    v29 = CMLFeatureValue.__allocating_init(_:)(v27, v28);
    CMLDictionary.add(key:value:)(0x5F6E6F6973726576, 0xEE00676E69727473, v29);
  }

  else
  {
    v30 = NSFullUserName();
    v31 = v30;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)(v31);
    v34 = v33;

    type metadata accessor for CMLFeatureValue();

    v35 = CMLFeatureValue.__allocating_init(_:)(v32, v34);
    v34;
    CMLDictionary.add(key:value:)(0x726F68747561, 0xE600000000000000, v35);
  }

  *&v93 = 0;
  v36 = v91 == 0;

  v37 = getOSVersion()();
  countAndFlagsBits = v37._countAndFlagsBits;
  object = v37._object;
  v39 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
  v40 = v97;
  if (!v36 && v97 != 0)
  {

    v39;
    v39 = v40;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v39);
  v86 = v39;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(countAndFlagsBits, object, 0xD00000000000001ALL, ("Recommender Model" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
  v42 = v86;
  v43 = tc_v1_flex_dict_create(0);
  if (!v43)
  {
    BUG();
  }

  v44 = v43;
  v97 = swift_initStackObject(v94, v80);
  *(v97 + 16) = v44;
  v45 = 1 << *(v42 + 32);
  v46 = ~(-1 << v45);
  if (v45 >= 64)
  {
    v46 = -1;
  }

  v47 = *(v42 + 64) & v46;
  v99 = (v45 + 63) >> 6;

  v48 = 0;
  v49 = v89;
  v95 = v42;
  while (1)
  {
    if (v47)
    {
      goto LABEL_31;
    }

    v50 = v48 + 1;
    if (__OFADD__(1, v48))
    {
      BUG();
    }

    if (v50 >= v99)
    {
      break;
    }

    v47 = *(v42 + 8 * v50 + 64);
    if (v47)
    {
      ++v48;
    }

    else
    {
      v51 = v48 + 2;
      if (v48 + 2 >= v99)
      {
        break;
      }

      v47 = *(v42 + 8 * v50 + 72);
      if (v47)
      {
        goto LABEL_30;
      }

      v51 = v48 + 3;
      if (v48 + 3 >= v99)
      {
        break;
      }

      v47 = *(v42 + 8 * v50 + 80);
      if (v47)
      {
        goto LABEL_30;
      }

      v51 = v48 + 4;
      if (v48 + 4 >= v99)
      {
        break;
      }

      v47 = *(v42 + 8 * v50 + 88);
      if (v47)
      {
        goto LABEL_30;
      }

      v51 = v48 + 5;
      if (v48 + 5 >= v99)
      {
        break;
      }

      v47 = *(v42 + 8 * v50 + 96);
      if (v47)
      {
        goto LABEL_30;
      }

      v51 = v48 + 6;
      if (v48 + 6 >= v99)
      {
        break;
      }

      v47 = *(v42 + 8 * v50 + 104);
      if (v47)
      {
LABEL_30:
        v48 = v51;
      }

      else
      {
        v64 = v48 + 7;
        do
        {
          if (v64 >= v99)
          {
            goto LABEL_37;
          }

          v47 = *(v42 + 8 * v64++ + 64);
        }

        while (!v47);
        v48 = v64 - 1;
      }
    }

LABEL_31:
    v88 = v47;
    _BitScanForward64(&v52, v47);
    v94 = v48;
    v53 = (v48 << 10) | (16 * v52);
    v54 = *(v42 + 48);
    v55 = *(v42 + 56);
    v91 = *(v54 + v53);
    v56 = *(v54 + v53 + 8);
    v57 = *(v55 + v53);
    v58 = *(v55 + v53 + 8);
    type metadata accessor for CMLFeatureValue();
    swift_bridgeObjectRetain_n(v58, 2);
    object = v56;

    v59 = v93;
    v60 = CMLFeatureValue.__allocating_init(_:)(v57, v58);
    v61 = v59;
    if (v59)
    {
      v76 = "CreateML/MLDataValueConvertible.swift";
      v77 = 37;
      v78 = 170;
      goto LABEL_43;
    }

    v62 = v60;
    v58;
    CMLDictionary.add(key:value:)(v91, object, v62);
    *&v93 = 0;
    v63 = (v88 - 1) & v88;
    object;
    v47 = v63;

    v49 = v89;
    v42 = v95;
    v48 = v94;
  }

LABEL_37:

  type metadata accessor for CMLFeatureValue();
  v65 = v97;

  v66 = v93;
  v67 = CMLFeatureValue.__allocating_init(_:)(v65);
  v61 = v66;
  if (v66)
  {
    v76 = "CreateML/_Model.swift";
    v77 = 21;
    v78 = 187;
LABEL_43:
    swift_unexpectedError(v61, v76, v77, 1, v78);
    BUG();
  }

  object = v67;
  v68 = v98;
  CMLDictionary.add(key:value:)(0x6665645F72657375, 0xEC00000064656E69, v67);

  CMLModel.addMetadata(_:)(v68);
  CMLModel.save(to:)();
  object = 0;
  v86 = 0;
  v87 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  v69 = v87;
  v87;
  v86 = 0xD000000000000024;
  v87 = "del to be an MLProgram" + 0x8000000000000000;
  v70._countAndFlagsBits = URL.path.getter(v69);
  LOBYTE(v68) = v70._object;
  String.append(_:)(v70);
  v68;
  v71._countAndFlagsBits = 46;
  v71._object = 0xE100000000000000;
  String.append(_:)(v71);
  v72 = v86;
  v73 = v87;
  v74 = static os_log_type_t.info.getter(46);
  v71._countAndFlagsBits = v72;
  v71._object = v73;
  log(_:type:)(v71, v74);

  v73;
  v75 = v97;
  swift_setDeallocating(v97);
  tc_v1_release(*(v75 + 16));
  return (*(v49 + 8))(v96, v92);
}

uint64_t _Model.write(toFile:metadata:)(uint64_t a1, void *a2, const void *a3)
{
  v20 = v3;
  string = a2;
  v18._countAndFlagsBits = a1;
  v19 = type metadata accessor for URL(0);
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  qmemcpy(v16, a3, sizeof(v16));
  v18._object = v4;
  v10 = ModelType.description.getter(v4[8]);
  v12 = v11;
  v13._countAndFlagsBits = v18._countAndFlagsBits;
  v13._object = string;
  v14 = v20;
  static _ValidationUtilities.validateWriteLocation(atPath:defaultName:)(v13, v10, v11);
  if (v14)
  {
    return v12;
  }

  v20 = v6;
  v12;
  _Model.write(to:metadata:)(v16, v16);
  return (*(v20 + 8))(v16, v19);
}

uint64_t _Model.makeClassifierMetrics(onTraining:onValidation:)(char a1, int a2, double a3)
{
  v43 = v3;
  v42 = a2;
  if (a1 == 2)
  {
    if (a2 == 2)
    {
      LODWORD(v31) = 0;
      LODWORD(v30) = 2;
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "CreateML/_Model.swift", 21, v30, 322, v31);
      BUG();
    }

    v41 = -2.315841784746334e77;
    v32 = 0xD00000000000001ALL;
    v40 = 0xD00000000000001BLL;
    v4 = "should_apply_flip";
    v5 = "e MLClassifierMetrics.";
    v6 = "validation_confusion_matrix";
  }

  else
  {
    v32 = 0xD000000000000018;
    v40 = 0xD000000000000019;
    v4 = "rainingSessionDelegate";
    v5 = "e trainingMetrics.";
    v6 = "training_confusion_matrix";
    v41 = -2.315841784746333e77;
  }

  v7 = v4 | 0x8000000000000000;
  v8 = v5 | 0x8000000000000000;
  v39 = v6 | 0x8000000000000000;
  v9 = _Model.attributes.getter(a3);
  v10 = v9;
  specialized Dictionary.subscript.getter(*&v41, v7, v9);
  v7;
  v10;
  if (!v35)
  {
    v8;
    v21 = v39;
LABEL_14:
    v21;
LABEL_15:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v33, &demangling cache variable for type metadata for Any?);
LABEL_19:
    v20 = v43;
    goto LABEL_20;
  }

  v11 = v8;
  v12 = v39;
  if (!swift_dynamicCast(&v36, &v33, &type metadata for Any + 8, &type metadata for MLDataValue, 6))
  {
LABEL_17:
    v8;
    goto LABEL_18;
  }

  if (v38 != 1)
  {
    outlined consume of MLDataValue(v36, v37, v38);
    goto LABEL_17;
  }

  v41 = *&v36;
  v13 = _Model.attributes.getter(a3);
  v14 = v13;
  specialized Dictionary.subscript.getter(v40, v11, v13);
  v11;
  v14;
  if (!v35)
  {
    v21 = v12;
    goto LABEL_14;
  }

  if (!swift_dynamicCast(&v36, &v33, &type metadata for Any + 8, &type metadata for MLDataTable, 6))
  {
LABEL_18:
    v12;
    goto LABEL_19;
  }

  v40 = v36;
  v15 = v37;
  v16 = _Model.attributes.getter(a3);
  v17 = v16;
  specialized Dictionary.subscript.getter(v32, v12, v16);
  v12;
  v17;
  if (!v35)
  {
    outlined consume of Result<_DataTable, Error>(v40, v15);
    goto LABEL_15;
  }

  v18 = v40;
  v19 = swift_dynamicCast(&v36, &v33, &type metadata for Any + 8, &type metadata for MLDataTable, 6);
  v20 = v43;
  if (v19)
  {
    v39 = v36;
    LOBYTE(v42) = v37;
    v41 = 1.0 - v41;
    v33 = v18;
    v34 = v15 & 1;
    type metadata accessor for MLClassifierMetrics.Precomputed(0);
    outlined copy of Result<_DataTable, Error>(v18, v15);
    DataFrame.init(_:)(&v33);
    v33 = v39;
    v34 = v42;
    DataFrame.init(_:)(&v33);
    v20 = v43;
    outlined consume of Result<_DataTable, Error>(v18, v15);
    *v20 = v41;
    v29 = 1;
    goto LABEL_24;
  }

  outlined consume of Result<_DataTable, Error>(v18, v15);
LABEL_20:
  v22 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v23 = swift_allocError(&type metadata for MLCreateError, v22, 0, 0);
  if (v42 == 2)
  {
    v25 = "validation_report_by_class" + 0x8000000000000000;
    v26 = 0xD000000000000022;
  }

  else
  {
    v25 = "essor\n\nParameters\n" + 0x8000000000000000;
    v26 = 0xD0000000000000C0;
  }

  *v24 = v26;
  *(v24 + 8) = v25;
  *(v24 + 32) = 0;
  *(v24 + 16) = 0;
  *(v24 + 48) = 0;
  *v20 = v23;
  v29 = 2;
LABEL_24:
  v27 = type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload(v20, v27, v29);
}