uint64_t destroy for MLActionClassifier.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = type metadata accessor for MLActionClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(a1, v4))
  {
    case 0u:
      v7 = type metadata accessor for URL(0);
      v8 = *(*(v7 - 8) + 8);
      v8(a1, v7);
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v8(a1 + v9[12], v7);
      v2 = a2;
      *(a1 + v9[16] + 8);
      *(a1 + v9[20] + 8);
      *(a1 + v9[24] + 8);
      v10 = v9[28];
      goto LABEL_8;
    case 1u:
    case 2u:
      v5 = type metadata accessor for URL(0);
      (*(*(v5 - 8) + 8))(a1, v5);
      break;
    case 3u:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      *(a1 + 40);
      v6 = *(a1 + 56);
      goto LABEL_9;
    case 4u:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      *(a1 + 40);
      *(a1 + 56);
      v6 = *(a1 + 72);
      goto LABEL_9;
    case 5u:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 8))(a1, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(a1 + v12[12] + 8);
      *(a1 + v12[16] + 8);
      v10 = v12[20];
      goto LABEL_8;
    case 6u:
      v13 = type metadata accessor for DataFrame(0);
      (*(*(v13 - 8) + 8))(a1, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      *(a1 + v14[12] + 8);
      *(a1 + v14[16] + 8);
      *(a1 + v14[20] + 8);
      v10 = v14[24];
LABEL_8:
      v6 = *(a1 + v10 + 8);
LABEL_9:
      v6;
      break;
    default:
      break;
  }

  v15 = *(v2 + 20) + a1;
  v16 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  result = swift_getEnumCaseMultiPayload(v15, v16);
  if (result == 1)
  {
    result = swift_getEnumCaseMultiPayload(v15, v4);
    switch(result)
    {
      case 0:
        v19 = type metadata accessor for URL(0);
        v20 = *(*(v19 - 8) + 8);
        v20(v15, v19);
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v20(v15 + v21[12], v19);
        *(v15 + v21[16] + 8);
        *(v15 + v21[20] + 8);
        *(v15 + v21[24] + 8);
        v22 = v21[28];
        goto LABEL_19;
      case 1:
      case 2:
        v18 = type metadata accessor for URL(0);
        return (*(*(v18 - 8) + 8))(v15, v18);
      case 3:
        outlined consume of Result<_DataTable, Error>(*v15, *(v15 + 8));
        *(v15 + 24);
        *(v15 + 40);
        return *(v15 + 56);
      case 4:
        outlined consume of Result<_DataTable, Error>(*v15, *(v15 + 8));
        *(v15 + 24);
        *(v15 + 40);
        *(v15 + 56);
        return *(v15 + 72);
      case 5:
        v23 = type metadata accessor for DataFrame(0);
        (*(*(v23 - 8) + 8))(v15, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v15 + v24[12] + 8);
        *(v15 + v24[16] + 8);
        v22 = v24[20];
        goto LABEL_19;
      case 6:
        v25 = type metadata accessor for DataFrame(0);
        (*(*(v25 - 8) + 8))(v15, v25);
        v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(v15 + v26[12] + 8);
        *(v15 + v26[16] + 8);
        *(v15 + v26[20] + 8);
        v22 = v26[24];
LABEL_19:
        result = *(v15 + v22 + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t initializeWithCopy for MLActionClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for MLActionClassifier.DataSource(0);
  v65 = v5;
  switch(swift_getEnumCaseMultiPayload(a2, v5))
  {
    case 0u:
      v6 = type metadata accessor for URL(0);
      v7 = *(*(v6 - 8) + 16);
      v7(a1, a2, v6);
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v7(a1 + v8[12], a2 + v8[12], v6);
      v9 = v8[16];
      *(a1 + v9) = *(a2 + v9);
      *(a1 + v9 + 8) = *(a2 + v9 + 8);
      v10 = v8[20];
      *(a1 + v10) = *(a2 + v10);
      *(a1 + v10 + 8) = *(a2 + v10 + 8);
      v11 = v8[24];
      *(a1 + v11) = *(a2 + v11);
      *(a1 + v11 + 8) = *(a2 + v11 + 8);
      v12 = v8[28];
      *(a1 + v12) = *(a2 + v12);
      *(a1 + v12 + 8) = *(a2 + v12 + 8);

      v13 = v65;
      v14 = 0;
      break;
    case 1u:
      v20 = type metadata accessor for URL(0);
      (*(*(v20 - 8) + 16))(a1, a2, v20);
      v60 = 1;
      goto LABEL_8;
    case 2u:
      v17 = type metadata accessor for URL(0);
      (*(*(v17 - 8) + 16))(a1, a2, v17);
      v60 = 2;
      goto LABEL_8;
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
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);

      v60 = 3;
      goto LABEL_8;
    case 4u:
      v15 = *a2;
      v16 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v16);
      *a1 = v15;
      *(a1 + 8) = v16;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);

      v59 = 4;
      goto LABEL_10;
    case 5u:
      v21 = type metadata accessor for DataFrame(0);
      (*(*(v21 - 8) + 16))(a1, a2, v21);
      v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v23 = v22[12];
      *(a1 + v23) = *(a2 + v23);
      *(a1 + v23 + 8) = *(a2 + v23 + 8);
      v24 = v22[16];
      *(a1 + v24) = *(a2 + v24);
      *(a1 + v24 + 8) = *(a2 + v24 + 8);
      v25 = v22[20];
      *(a1 + v25) = *(a2 + v25);
      *(a1 + v25 + 8) = *(a2 + v25 + 8);

      v60 = 5;
LABEL_8:
      v14 = v60;
      v13 = v5;
      break;
    case 6u:
      v26 = type metadata accessor for DataFrame(0);
      (*(*(v26 - 8) + 16))(a1, a2, v26);
      v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v28 = v27[12];
      *(a1 + v28) = *(a2 + v28);
      *(a1 + v28 + 8) = *(a2 + v28 + 8);
      v29 = v27[16];
      *(a1 + v29) = *(a2 + v29);
      *(a1 + v29 + 8) = *(a2 + v29 + 8);
      v30 = v27[20];
      *(a1 + v30) = *(a2 + v30);
      *(a1 + v30 + 8) = *(a2 + v30 + 8);
      v31 = v27[24];
      *(a1 + v31) = *(a2 + v31);
      *(a1 + v31 + 8) = *(a2 + v31 + 8);

      v59 = 6;
LABEL_10:
      v14 = v59;
      v13 = v5;
      break;
  }

  swift_storeEnumTagMultiPayload(a1, v13, v14);
  v32 = a3[5];
  v33 = (a1 + v32);
  v34 = a2 + v32;
  v35 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v34, v35) == 1)
  {
    v62 = v35;
    switch(swift_getEnumCaseMultiPayload(v34, v65))
    {
      case 0u:
        v64 = type metadata accessor for URL(0);
        v66 = *(*(v64 - 8) + 16);
        v66(v33, v34, v64);
        v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v66(&v33[v36[12]], v34 + v36[12], v64);
        v37 = v36[16];
        *&v33[v37] = *(v34 + v37);
        *&v33[v37 + 8] = *(v34 + v37 + 8);
        v38 = v36[20];
        *&v33[v38] = *(v34 + v38);
        *&v33[v38 + 8] = *(v34 + v38 + 8);
        v39 = v36[24];
        *&v33[v39] = *(v34 + v39);
        *&v33[v39 + 8] = *(v34 + v39 + 8);
        v40 = v36[28];
        *&v33[v40] = *(v34 + v40);
        *&v33[v40 + 8] = *(v34 + v40 + 8);

        JUMPOUT(0x14B6E7);
      case 1u:
        type metadata accessor for URL(0);
        JUMPOUT(0x14B82CLL);
      case 2u:
        v42 = type metadata accessor for URL(0);
        (*(*(v42 - 8) + 16))(v33, v34, v42);
        v44 = 2;
        v45 = v33;
        v46 = v65;
        goto LABEL_25;
      case 3u:
        v43 = *v34;
        v68 = *(v34 + 8);
        outlined copy of Result<_DataTable, Error>(*v34, v68);
        *v33 = v43;
        v33[8] = v68;
        *(v33 + 2) = *(v34 + 16);
        *(v33 + 3) = *(v34 + 24);
        *(v33 + 4) = *(v34 + 32);
        *(v33 + 5) = *(v34 + 40);
        *(v33 + 6) = *(v34 + 48);
        *(v33 + 7) = *(v34 + 56);

        v61 = 3;
        goto LABEL_24;
      case 4u:
        v41 = *v34;
        v67 = *(v34 + 8);
        outlined copy of Result<_DataTable, Error>(*v34, v67);
        *v33 = v41;
        v33[8] = v67;
        *(v33 + 2) = *(v34 + 16);
        *(v33 + 3) = *(v34 + 24);
        *(v33 + 4) = *(v34 + 32);
        *(v33 + 5) = *(v34 + 40);
        *(v33 + 6) = *(v34 + 48);
        *(v33 + 7) = *(v34 + 56);
        *(v33 + 8) = *(v34 + 64);
        *(v33 + 9) = *(v34 + 72);

        JUMPOUT(0x14B778);
      case 5u:
        v47 = type metadata accessor for DataFrame(0);
        (*(*(v47 - 8) + 16))(v33, v34, v47);
        v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v49 = v48[12];
        *&v33[v49] = *(v34 + v49);
        *&v33[v49 + 8] = *(v34 + v49 + 8);
        v50 = v48[16];
        *&v33[v50] = *(v34 + v50);
        *&v33[v50 + 8] = *(v34 + v50 + 8);
        v51 = v48[20];
        *&v33[v51] = *(v34 + v51);
        *&v33[v51 + 8] = *(v34 + v51 + 8);

        v61 = 5;
        goto LABEL_24;
      case 6u:
        v52 = type metadata accessor for DataFrame(0);
        (*(*(v52 - 8) + 16))(v33, v34, v52);
        v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v54 = v53[12];
        *&v33[v54] = *(v34 + v54);
        *&v33[v54 + 8] = *(v34 + v54 + 8);
        v55 = v53[16];
        *&v33[v55] = *(v34 + v55);
        *&v33[v55 + 8] = *(v34 + v55 + 8);
        v56 = v53[20];
        *&v33[v56] = *(v34 + v56);
        *&v33[v56 + 8] = *(v34 + v56 + 8);
        v57 = v53[24];
        *&v33[v57] = *(v34 + v57);
        *&v33[v57 + 8] = *(v34 + v57 + 8);

        v61 = 6;
LABEL_24:
        v44 = v61;
        v45 = v33;
        v46 = v65;
LABEL_25:
        swift_storeEnumTagMultiPayload(v45, v46, v44);
        swift_storeEnumTagMultiPayload(v33, v62, 1);
        break;
    }
  }

  else
  {
    memcpy(v33, v34, *(*(v35 - 8) + 64));
  }

  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t assignWithCopy for MLActionClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a2;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLActionClassifier.DataSource);
    v5 = type metadata accessor for MLActionClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v5);
    v58 = a3;
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v55 = type metadata accessor for URL(0);
        v10 = *(*(v55 - 8) + 16);
        v10(a1, a2, v55);
        v59 = v5;
        v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v10(a1 + v11[12], a2 + v11[12], v55);
        v12 = v11[16];
        *(a1 + v12) = *(a2 + v12);
        *(a1 + v12 + 8) = *(a2 + v12 + 8);
        v13 = v11[20];
        *(a1 + v13) = *(a2 + v13);
        *(a1 + v13 + 8) = *(a2 + v13 + 8);
        v14 = v11[24];
        *(a1 + v14) = *(a2 + v14);
        *(a1 + v14 + 8) = *(a2 + v14 + 8);
        v15 = v11[28];
        *(a1 + v15) = *(a2 + v15);
        *(a1 + v15 + 8) = *(a2 + v15 + 8);

        v5 = v59;
        break;
      case 1u:
      case 2u:
        v6 = type metadata accessor for URL(0);
        (*(*(v6 - 8) + 16))(a1, a2, v6);
        goto LABEL_11;
      case 3u:
        v16 = v5;
        v17 = *a2;
        v18 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v18);
        *a1 = v17;
        *(a1 + 8) = v18;
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        goto LABEL_8;
      case 4u:
        v7 = v5;
        v8 = *a2;
        v9 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v9);
        *a1 = v8;
        *(a1 + 8) = v9;
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);

        v5 = v7;
        a3 = v58;

        break;
      case 5u:
        v19 = type metadata accessor for DataFrame(0);
        (*(*(v19 - 8) + 16))(a1, a2, v19);
        v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v21 = v20[12];
        *(a1 + v21) = *(a2 + v21);
        *(a1 + v21 + 8) = *(a2 + v21 + 8);
        v22 = v20[16];
        *(a1 + v22) = *(a2 + v22);
        v16 = v5;
        *(a1 + v22 + 8) = *(a2 + v22 + 8);
        v23 = v20[20];
        *(a1 + v23) = *(a2 + v23);
        *(a1 + v23 + 8) = *(a2 + v23 + 8);
LABEL_8:

        v5 = v16;
        a3 = v58;

        break;
      case 6u:
        v24 = type metadata accessor for DataFrame(0);
        (*(*(v24 - 8) + 16))(a1, a2, v24);
        v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v26 = v25[12];
        *(a1 + v26) = *(a2 + v26);
        *(a1 + v26 + 8) = *(a2 + v26 + 8);
        v27 = v25[16];
        *(a1 + v27) = *(a2 + v27);
        *(a1 + v27 + 8) = *(a2 + v27 + 8);
        v28 = v25[20];
        *(a1 + v28) = *(a2 + v28);
        *(a1 + v28 + 8) = *(a2 + v28 + 8);
        v29 = v25[24];
        *(a1 + v29) = *(a2 + v29);
        *(a1 + v29 + 8) = *(a2 + v29 + 8);

        break;
    }

LABEL_11:
    swift_storeEnumTagMultiPayload(a1, v5, EnumCaseMultiPayload);
    v30 = a3[5];
    v31 = (a1 + v30);
    v32 = a2 + v30;
    outlined destroy of MLActivityClassifier.ModelParameters(v31, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    v33 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v32, v33) == 1)
    {
      v56 = v33;
      v60 = v5;
      v34 = swift_getEnumCaseMultiPayload(v32, v5);
      switch(v34)
      {
        case 0u:
          v62 = type metadata accessor for URL(0);
          v65 = *(*(v62 - 8) + 16);
          v36 = v31;
          v65(v31, v32, v62);
          v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v65(&v36[v37[12]], v32 + v37[12], v62);
          v38 = v37[16];
          *&v36[v38] = *(v32 + v38);
          *&v36[v38 + 8] = *(v32 + v38 + 8);
          v39 = v37[20];
          *&v36[v39] = *(v32 + v39);
          *&v36[v39 + 8] = *(v32 + v39 + 8);
          v40 = v37[24];
          *&v36[v40] = *(v32 + v40);
          *&v36[v40 + 8] = *(v32 + v40 + 8);
          v41 = v37[28];
          *&v36[v41] = *(v32 + v41);
          *&v36[v41 + 8] = *(v32 + v41 + 8);

          JUMPOUT(0x14BF33);
        case 1u:
        case 2u:
          v35 = type metadata accessor for URL(0);
          (*(*(v35 - 8) + 16))(v31, v32, v35);
          JUMPOUT(0x14BDE0);
        case 3u:
          v63 = *v32;
          v66 = *(v32 + 8);
          outlined copy of Result<_DataTable, Error>(*v32, v66);
          *v31 = v63;
          v31[8] = v66;
          *(v31 + 2) = *(v32 + 16);
          *(v31 + 3) = *(v32 + 24);
          *(v31 + 4) = *(v32 + 32);
          JUMPOUT(0x14BF91);
        case 4u:
          v61 = *v32;
          v64 = *(v32 + 8);
          outlined copy of Result<_DataTable, Error>(*v32, v64);
          *v31 = v61;
          v31[8] = v64;
          *(v31 + 2) = *(v32 + 16);
          *(v31 + 3) = *(v32 + 24);
          *(v31 + 4) = *(v32 + 32);
          *(v31 + 5) = *(v32 + 40);
          *(v31 + 6) = *(v32 + 48);
          *(v31 + 7) = *(v32 + 56);
          *(v31 + 8) = *(v32 + 64);
          JUMPOUT(0x14BE62);
        case 5u:
          v42 = type metadata accessor for DataFrame(0);
          v43 = v31;
          (*(*(v42 - 8) + 16))(v31, v32, v42);
          v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v45 = v44[12];
          *&v31[v45] = *(v32 + v45);
          *&v31[v45 + 8] = *(v32 + v45 + 8);
          v46 = v44[16];
          *&v31[v46] = *(v32 + v46);
          *&v31[v46 + 8] = *(v32 + v46 + 8);
          v47 = v44[20];
          *&v31[v47] = *(v32 + v47);
          v67 = v34;
          *&v31[v47 + 8] = *(v32 + v47 + 8);
          break;
        case 6u:
          v48 = type metadata accessor for DataFrame(0);
          v43 = v31;
          (*(*(v48 - 8) + 16))(v31, v32, v48);
          v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v50 = v49[12];
          *&v31[v50] = *(v32 + v50);
          *&v31[v50 + 8] = *(v32 + v50 + 8);
          v51 = v49[16];
          *&v31[v51] = *(v32 + v51);
          *&v31[v51 + 8] = *(v32 + v51 + 8);
          v52 = v49[20];
          *&v31[v52] = *(v32 + v52);
          *&v31[v52 + 8] = *(v32 + v52 + 8);
          v53 = v49[24];
          *&v31[v53] = *(v32 + v53);
          v67 = v34;
          *&v31[v53 + 8] = *(v32 + v53 + 8);

          break;
        case 7u:
          JUMPOUT(0x14C15CLL);
      }

      swift_storeEnumTagMultiPayload(v43, v60, v67);
      swift_storeEnumTagMultiPayload(v43, v56, 1);
    }

    else
    {
      memcpy(v31, v32, *(*(v33 - 8) + 64));
    }

    a3 = v58;
    v4 = a2;
  }

  *(a1 + a3[6]) = *(v4 + a3[6]);
  *(a1 + a3[7]) = *(v4 + a3[7]);
  *(a1 + a3[8]) = *(v4 + a3[8]);
  *(a1 + a3[9]) = *(v4 + a3[9]);
  *(a1 + a3[10]) = *(v4 + a3[10]);
  return a1;
}

char *initializeWithTake for MLActionClassifier.PersistentParameters(char *__dst, char *__src, int *a3)
{
  v6 = type metadata accessor for MLActionClassifier.DataSource(0);
  v38 = v6;
  switch(swift_getEnumCaseMultiPayload(__src, v6))
  {
    case 0u:
      v7 = type metadata accessor for URL(0);
      v39 = *(*(v7 - 8) + 32);
      v39(__dst, __src, v7);
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v39(&__dst[v8[12]], &__src[v8[12]], v7);
      *&__dst[v8[16]] = *&__src[v8[16]];
      *&__dst[v8[20]] = *&__src[v8[20]];
      *&__dst[v8[24]] = *&__src[v8[24]];
      *&__dst[v8[28]] = *&__src[v8[28]];
      v9 = v38;
      v10 = 0;
      goto LABEL_9;
    case 1u:
      v12 = type metadata accessor for URL(0);
      (*(*(v12 - 8) + 32))(__dst, __src, v12);
      v33 = 1;
      goto LABEL_8;
    case 2u:
      v11 = type metadata accessor for URL(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v33 = 2;
      goto LABEL_8;
    case 5u:
      v13 = type metadata accessor for DataFrame(0);
      (*(*(v13 - 8) + 32))(__dst, __src, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *&__dst[v14[12]] = *&__src[v14[12]];
      *&__dst[v14[16]] = *&__src[v14[16]];
      *&__dst[v14[20]] = *&__src[v14[20]];
      v33 = 5;
      goto LABEL_8;
    case 6u:
      v15 = type metadata accessor for DataFrame(0);
      (*(*(v15 - 8) + 32))(__dst, __src, v15);
      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      *&__dst[v16[12]] = *&__src[v16[12]];
      *&__dst[v16[16]] = *&__src[v16[16]];
      *&__dst[v16[20]] = *&__src[v16[20]];
      *&__dst[v16[24]] = *&__src[v16[24]];
      v33 = 6;
LABEL_8:
      v10 = v33;
      v9 = v6;
LABEL_9:
      swift_storeEnumTagMultiPayload(__dst, v9, v10);
      break;
    default:
      memcpy(__dst, __src, *(*(v6 - 8) + 64));
      break;
  }

  v40 = a3;
  v17 = a3[5];
  v18 = &__dst[v17];
  v19 = &__src[v17];
  v20 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v19, v20) == 1)
  {
    v35 = v20;
    switch(swift_getEnumCaseMultiPayload(v19, v38))
    {
      case 0u:
        v37 = type metadata accessor for URL(0);
        v36 = *(*(v37 - 8) + 32);
        v36(v18, v19, v37);
        v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v36(&v18[v21[12]], &v19[v21[12]], v37);
        *&v18[v21[16]] = *&v19[v21[16]];
        *&v18[v21[20]] = *&v19[v21[20]];
        *&v18[v21[24]] = *&v19[v21[24]];
        *&v18[v21[28]] = *&v19[v21[28]];
        v22 = v18;
        v23 = v38;
        v24 = 0;
        goto LABEL_20;
      case 1u:
        v27 = type metadata accessor for URL(0);
        (*(*(v27 - 8) + 32))(v18, v19, v27);
        v34 = 1;
        goto LABEL_19;
      case 2u:
        v26 = type metadata accessor for URL(0);
        (*(*(v26 - 8) + 32))(v18, v19, v26);
        v34 = 2;
        goto LABEL_19;
      case 5u:
        v28 = type metadata accessor for DataFrame(0);
        (*(*(v28 - 8) + 32))(v18, v19, v28);
        v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&v18[v29[12]] = *&v19[v29[12]];
        *&v18[v29[16]] = *&v19[v29[16]];
        *&v18[v29[20]] = *&v19[v29[20]];
        v34 = 5;
        goto LABEL_19;
      case 6u:
        v30 = type metadata accessor for DataFrame(0);
        (*(*(v30 - 8) + 32))(v18, v19, v30);
        v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&v18[v31[12]] = *&v19[v31[12]];
        *&v18[v31[16]] = *&v19[v31[16]];
        *&v18[v31[20]] = *&v19[v31[20]];
        *&v18[v31[24]] = *&v19[v31[24]];
        v34 = 6;
LABEL_19:
        v24 = v34;
        v22 = v18;
        v23 = v38;
LABEL_20:
        swift_storeEnumTagMultiPayload(v22, v23, v24);
        break;
      default:
        memcpy(v18, v19, *(*(v38 - 8) + 64));
        break;
    }

    v25 = v40;
    swift_storeEnumTagMultiPayload(v18, v35, 1);
  }

  else
  {
    memcpy(v18, v19, *(*(v20 - 8) + 64));
    v25 = v40;
  }

  *&__dst[v25[6]] = *&__src[v25[6]];
  *&__dst[v25[7]] = *&__src[v25[7]];
  *&__dst[v25[8]] = *&__src[v25[8]];
  *&__dst[v25[9]] = *&__src[v25[9]];
  *&__dst[v25[10]] = *&__src[v25[10]];
  return __dst;
}

char *assignWithTake for MLActionClassifier.PersistentParameters(char *__dst, char *__src, int *a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLActionClassifier.DataSource);
    v6 = type metadata accessor for MLActionClassifier.DataSource(0);
    v40 = v6;
    switch(swift_getEnumCaseMultiPayload(__src, v6))
    {
      case 0u:
        v7 = type metadata accessor for URL(0);
        v38 = *(*(v7 - 8) + 32);
        v38(__dst, __src, v7);
        v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v38(&__dst[v8[12]], &__src[v8[12]], v7);
        *&__dst[v8[16]] = *&__src[v8[16]];
        *&__dst[v8[20]] = *&__src[v8[20]];
        *&__dst[v8[24]] = *&__src[v8[24]];
        *&__dst[v8[28]] = *&__src[v8[28]];
        v9 = v40;
        v10 = 0;
        goto LABEL_10;
      case 1u:
        v12 = type metadata accessor for URL(0);
        (*(*(v12 - 8) + 32))(__dst, __src, v12);
        v33 = 1;
        goto LABEL_9;
      case 2u:
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 32))(__dst, __src, v11);
        v33 = 2;
        goto LABEL_9;
      case 5u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 32))(__dst, __src, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&__dst[v14[12]] = *&__src[v14[12]];
        *&__dst[v14[16]] = *&__src[v14[16]];
        *&__dst[v14[20]] = *&__src[v14[20]];
        v33 = 5;
        goto LABEL_9;
      case 6u:
        v15 = type metadata accessor for DataFrame(0);
        (*(*(v15 - 8) + 32))(__dst, __src, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&__dst[v16[12]] = *&__src[v16[12]];
        *&__dst[v16[16]] = *&__src[v16[16]];
        *&__dst[v16[20]] = *&__src[v16[20]];
        *&__dst[v16[24]] = *&__src[v16[24]];
        v33 = 6;
LABEL_9:
        v10 = v33;
        v9 = v6;
LABEL_10:
        swift_storeEnumTagMultiPayload(__dst, v9, v10);
        break;
      default:
        memcpy(__dst, __src, *(*(v6 - 8) + 64));
        break;
    }

    v39 = a3;
    v17 = a3[5];
    v18 = &__dst[v17];
    v19 = &__src[v17];
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    v20 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v19, v20) == 1)
    {
      v35 = v20;
      switch(swift_getEnumCaseMultiPayload(v19, v40))
      {
        case 0u:
          v36 = type metadata accessor for URL(0);
          v37 = *(*(v36 - 8) + 32);
          v21 = v18;
          v37(v18, v19, v36);
          v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v37((v22[12] + v21), &v19[v22[12]], v36);
          *(v21 + v22[16]) = *&v19[v22[16]];
          *(v21 + v22[20]) = *&v19[v22[20]];
          *(v21 + v22[24]) = *&v19[v22[24]];
          *(v21 + v22[28]) = *&v19[v22[28]];
          v23 = v21;
          v24 = v40;
          v25 = 0;
          goto LABEL_21;
        case 1u:
          v27 = type metadata accessor for URL(0);
          v21 = v18;
          (*(*(v27 - 8) + 32))(v18, v19, v27);
          v34 = 1;
          goto LABEL_20;
        case 2u:
          v26 = type metadata accessor for URL(0);
          v21 = v18;
          (*(*(v26 - 8) + 32))(v18, v19, v26);
          v34 = 2;
          goto LABEL_20;
        case 5u:
          v28 = type metadata accessor for DataFrame(0);
          v21 = v18;
          (*(*(v28 - 8) + 32))(v18, v19, v28);
          v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          *&v18[v29[12]] = *&v19[v29[12]];
          *&v18[v29[16]] = *&v19[v29[16]];
          *&v18[v29[20]] = *&v19[v29[20]];
          v34 = 5;
          goto LABEL_20;
        case 6u:
          v30 = type metadata accessor for DataFrame(0);
          v21 = v18;
          (*(*(v30 - 8) + 32))(v18, v19, v30);
          v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          *&v18[v31[12]] = *&v19[v31[12]];
          *&v18[v31[16]] = *&v19[v31[16]];
          *&v18[v31[20]] = *&v19[v31[20]];
          *&v18[v31[24]] = *&v19[v31[24]];
          v34 = 6;
LABEL_20:
          v25 = v34;
          v23 = v18;
          v24 = v40;
LABEL_21:
          swift_storeEnumTagMultiPayload(v23, v24, v25);
          break;
        default:
          v21 = v18;
          memcpy(v18, v19, *(*(v40 - 8) + 64));
          break;
      }

      swift_storeEnumTagMultiPayload(v21, v35, 1);
    }

    else
    {
      memcpy(v18, v19, *(*(v20 - 8) + 64));
    }

    a3 = v39;
  }

  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  *&__dst[a3[8]] = *&__src[a3[8]];
  *&__dst[a3[9]] = *&__src[a3[9]];
  *&__dst[a3[10]] = *&__src[a3[10]];
  return __dst;
}

uint64_t sub_14CADD(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLActionClassifier.DataSource(0);
  if (*(*(v5 - 8) + 84) != a2)
  {
    v5 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    v4 = *(a3 + 20) + a1;
  }

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_14CB44(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLActionClassifier.DataSource(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    v6 = *(a4 + 20) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata accessor for MLActionClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLActionClassifier.PersistentParameters;
  if (!type metadata singleton initialization cache for MLActionClassifier.PersistentParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLActionClassifier.PersistentParameters);
  }

  return result;
}

uint64_t type metadata completion function for MLActionClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata accessor for MLActionClassifier.DataSource(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      v4[2] = &value witness table for Builtin.Int64 + 64;
      v4[3] = &value witness table for Builtin.Int64 + 64;
      v4[4] = &value witness table for Builtin.Int64 + 64;
      v4[5] = &value witness table for Builtin.Int64 + 64;
      v4[6] = &value witness table for Builtin.Int64 + 64;
      v4[7] = &value witness table for () + 64;
      swift_initStructMetadata(a1, 256, 8, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

NSURL *MLActionClassifier.PersistentParameters.init(sessionDirectory:)(uint64_t *a1)
{
  v141 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v136 = &v121;
  v134 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  v6 = *(*(v134 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v124 = &v121;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.DataSource?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v135 = &v121;
  v131 = type metadata accessor for MLActionClassifier.DataSource(0);
  v12 = *(*(v131 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v137 = &v121;
  v123 = type metadata accessor for DataFrame(0);
  v122 = *(v123 - 8);
  v15 = *(v122 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v132 = &v121;
  v153 = type metadata accessor for URL(0);
  v149 = *(v153 - 8);
  v18 = *(v149 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v133 = &v121;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v142 = &v121;
  v23 = alloca(v18);
  v24 = alloca(v18);
  v144 = &v121;
  v25 = alloca(v18);
  v26 = alloca(v18);
  v27 = alloca(v18);
  v28 = alloca(v18);
  URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
  URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
  v29 = Data.init(contentsOf:options:)(&v121, 0);
  v143 = v2;
  if (v2)
  {
    v31 = *(v149 + 8);
    v32 = v153;
    v31(a1, v153);
    v31(&v121, v32);
    v31(&v121, v32);
    return __stack_chk_guard;
  }

  v33 = v30;
  v152 = &v121;
  v147 = a1;
  v34 = v29;
  v150 = *(v149 + 8);
  v150(&v121, v153);
  v35 = objc_opt_self(NSPropertyListSerialization);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v146 = v33;
  v157[0] = 0;
  v37 = [v35 propertyListWithData:isa options:0 format:0 error:v157];
  v38 = v37;

  v39 = v157[0];
  if (!v38)
  {
    v63 = v39;
    _convertNSErrorToError(_:)(v39);

    swift_willThrow();
    outlined consume of Data._Representation(v34, v146);
    v64 = v153;
    v65 = v150;
    v150(v147, v153);
    v65(v152, v64);
    return __stack_chk_guard;
  }

  v145 = v34;
  _bridgeAnyObjectToAny(_:)(v38);
  swift_unknownObjectRelease(v38);
  outlined init with copy of Any(v174, v157);
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  if (!swift_dynamicCast(__src, v157, &type metadata for Any + 8, v40, 6))
  {
    v66 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v66, 0, 0);
    *v67 = 0xD000000000000037;
    *(v67 + 8) = "parameters.plist" + 0x8000000000000000;
    *(v67 + 16) = 0;
    *(v67 + 32) = 0;
    *(v67 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v145, v146);
    v61 = v147;
    v59 = v153;
    v62 = v153;
    v60 = v150;
    goto LABEL_21;
  }

  v148 = &type metadata for Any + 8;
  v41 = *&__src[0];
  specialized Dictionary.subscript.getter(0x69735F6863746162, 0xEA0000000000657ALL, *&__src[0]);
  v42 = v150;
  if (!v158)
  {
    v41;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v157, &demangling cache variable for type metadata for Any?);
LABEL_24:
    v68 = v153;
LABEL_28:
    v69 = v152;
LABEL_29:
    v70 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v70, 0, 0);
    *v71 = 0xD00000000000003FLL;
    *(v71 + 8) = "labeled_directories" + 0x8000000000000000;
    *(v71 + 16) = 0;
    *(v71 + 32) = 0;
    *(v71 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v145, v146);
    v42(v147, v68);
    __swift_destroy_boxed_opaque_existential_1Tm(v174);
    v42(v69, v68);
    return __stack_chk_guard;
  }

  v151 = v41;
  if (!swift_dynamicCast(__src, v157, v148, &type metadata for Int, 6))
  {
    v151;
    goto LABEL_24;
  }

  v43 = *&__src[0];
  v44 = v151;
  specialized Dictionary.subscript.getter(0x726574695F78616DLL, 0xEE00736E6F697461, v151);
  if (!v158)
  {
    goto LABEL_25;
  }

  if (!swift_dynamicCast(__src, v157, v148, &type metadata for Int, 6))
  {
LABEL_26:
    v151;
    goto LABEL_27;
  }

  v138 = v40;
  v45 = *&__src[0];
  v44 = v151;
  specialized Dictionary.subscript.getter(0x6D6172665F6D756ELL, 0xEA00000000007365, v151);
  if (!v158)
  {
LABEL_25:
    v44;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v157, &demangling cache variable for type metadata for Any?);
LABEL_27:
    v68 = v153;
    v42 = v150;
    goto LABEL_28;
  }

  if (!swift_dynamicCast(__src, v157, v148, &type metadata for Int, 6))
  {
    goto LABEL_26;
  }

  v139 = *&__src[0];
  v44 = v151;
  specialized Dictionary.subscript.getter(0xD000000000000014, ("Empty training input." + 0x8000000000000000), v151);
  if (!v158)
  {
    goto LABEL_25;
  }

  if (!swift_dynamicCast(__src, v157, v148, &type metadata for Int, 6))
  {
    goto LABEL_26;
  }

  v125 = *&__src[0];
  v46 = v151;
  specialized Dictionary.subscript.getter(0x7246746567726174, 0xEF65746152656D61, v151);
  if (!v158)
  {
    v46;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v157, &demangling cache variable for type metadata for Any?);
LABEL_33:
    v68 = v153;
    v69 = v152;
    v42 = v150;
    goto LABEL_29;
  }

  if (!swift_dynamicCast(__src, v157, v148, &type metadata for Double, 6))
  {
    v151;
    goto LABEL_33;
  }

  v47 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v48 = v47[6];
  v49 = v47[7];
  v140 = v47;
  v50 = v47[8];
  v126 = *&__src[0];
  v51 = v141;
  *(v141 + v48) = v43;
  v52 = v51;
  *(v51 + v49) = v45;
  *(v51 + v50) = v139;
  v53 = v144;
  URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
  specialized Dictionary.subscript.getter(0x676E696E69617274, 0xE800000000000000, v151);
  if (!v173)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v172, &demangling cache variable for type metadata for Any?);
    goto LABEL_35;
  }

  if (!swift_dynamicCast(v157, v172, v148, v138, 6))
  {
LABEL_35:
    v73 = v153;
    v74 = v142;
    (*(v149 + 16))(v142, v144, v153);
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
    LOBYTE(v157[0]) = 1;
    v157[1] = &stru_20 + 12;
    v157[2] = 0xE100000000000000;
    v158 = 0;
    v159 = 0xE000000000000000;
    v160 = 92;
    v161 = 0xE100000000000000;
    v162 = 1;
    v163 = 34;
    v164 = 0xE100000000000000;
    v165 = 1;
    v166 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    v167 = 10;
    v168 = 0xE100000000000000;
    v169 = 0;
    v170 = 1;
    v171 = 0;
    outlined retain of MLDataTable.ParsingOptions(__src);
    outlined release of MLDataTable.ParsingOptions(v157);
    memcpy(__dst, __src, 0x90uLL);
    v75 = v143;
    MLDataTable.init(contentsOf:options:)(v74, __dst);
    if (v75)
    {
      outlined consume of Data._Representation(v145, v146);
      v151;
      v76 = v150;
      v150(v147, v73);
      v76(v144, v73);
      __swift_destroy_boxed_opaque_existential_1Tm(v174);
      v76(v152, v73);
      return __stack_chk_guard;
    }

    __dst[0] = __dst[18];
    LOBYTE(__dst[1]) = v155;
    DataFrame.init(_:)(__dst);
    v77 = DataFrame.columns.getter(__dst);
    v78 = v77;
    MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(v77);
    v143 = 0;
    v78;
    v80 = 0x7472617473;
    *(&v81 + 1) = 0xE500000000000000;
    *&v81 = 0x7472617473;
    v82 = specialized Sequence<>.contains(_:)(v81, MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n);
    MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n;
    if ((v82 & 1) == 0)
    {
      v80 = 0;
    }

    v142 = v80;
    v83 = 0;
    if (v82)
    {
      v83 = 0xE500000000000000;
    }

    v135 = v83;
    v84 = DataFrame.columns.getter(MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n);
    v85 = v84;
    v86 = v143;
    v87 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(v84);
    v143 = v86;
    v85;
    v88 = 6581861;
    *&v89 = 6581861;
    *(&v89 + 1) = 0xE300000000000000;
    v90 = specialized Sequence<>.contains(_:)(v89, v87);
    v87;
    v91 = 0;
    if ((v90 & 1) == 0)
    {
      v88 = 0;
    }

    v137 = v88;
    if (v90)
    {
      v91 = 0xE300000000000000;
    }

    v139 = v91;
    v92 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
    v130 = v92[12];
    v129 = v92[16];
    v128 = v92[20];
    v127 = v92[24];
    v93 = v141;
    v94 = v132;
    v95 = v123;
    v96 = v122;
    (*(v122 + 16))(v141, v132, v123);
    v97 = v130;
    *(v93 + v130) = 0x7461506F65646976;
    *(v93 + v97 + 8) = 0xE900000000000068;
    (*(v96 + 8))(v94, v95);
    v98 = v129;
    *(v93 + v129) = 0x6C6562616CLL;
    *(v93 + v98 + 8) = 0xE500000000000000;
    v99 = v128;
    *(v93 + v128) = v142;
    *(v93 + v99 + 8) = v135;
    v52 = v93;
    v100 = v127;
    *(v93 + v127) = v137;
    *(v93 + v100 + 8) = v139;
    swift_storeEnumTagMultiPayload(v93, v131, 6);
    goto LABEL_47;
  }

  v54 = v157[0];
  v55 = v133;
  (*(v149 + 16))(v133, v53, v153);
  v56 = v135;
  MLActionClassifier.DataSource.init(dictionary:tableFile:)(v54, v55);
  if (__swift_getEnumTagSinglePayload(v56, 1, v131) == 1)
  {
    v151;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v56, &demangling cache variable for type metadata for MLActionClassifier.DataSource?);
    v57 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v57, 0, 0);
    *v58 = 0xD000000000000035;
    *(v58 + 8) = "o load validation data." + 0x8000000000000000;
    *(v58 + 16) = 0;
    *(v58 + 32) = 0;
    *(v58 + 48) = 0;
    swift_willThrow();
    outlined consume of Data._Representation(v145, v146);
    v59 = v153;
    v60 = v150;
    v150(v147, v153);
    v61 = v144;
    v62 = v59;
LABEL_21:
    v60(v61, v62);
    __swift_destroy_boxed_opaque_existential_1Tm(v174);
    v60(v152, v59);
    return __stack_chk_guard;
  }

  v101 = v56;
  v102 = v137;
  outlined init with take of MLClassifierMetrics(v101, v137, type metadata accessor for MLActionClassifier.DataSource);
  outlined init with take of MLClassifierMetrics(v102, v51, type metadata accessor for MLActionClassifier.DataSource);
LABEL_47:
  specialized Dictionary.subscript.getter(0x69746164696C6176, 0xEA00000000006E6FLL, v151);
  if (!v158)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v157, &demangling cache variable for type metadata for Any?);
    goto LABEL_52;
  }

  if (!swift_dynamicCast(__src, v157, v148, v138, 6))
  {
LABEL_52:
    v109 = v140;
    swift_storeEnumTagMultiPayload(v52 + v140[5], v134, 2);
LABEL_53:
    v110 = v109[9];
    *(v52 + v109[10]) = v125;
    *(v52 + v110) = v126;
    v111 = v151;
    specialized Dictionary.subscript.getter(0x687469726F676C61, 0xE90000000000006DLL, v151);
    v111;
    if (v158)
    {
      LODWORD(v112) = swift_dynamicCast(__src, v157, v148, v138, 6);
      if (v112)
      {
        v112 = MLActionClassifier.ModelParameters.ModelAlgorithmType.init(dictionary:)(*&__src[0]);
        if (LOBYTE(v157[0]) != 1)
        {
          outlined consume of Data._Representation(v145, v146);
          v113 = v153;
          v114 = v150;
          v150(v147, v153);
          v114(v144, v113);
          __swift_destroy_boxed_opaque_existential_1Tm(v174);
          v114(v152, v113);
          return __stack_chk_guard;
        }
      }
    }

    else
    {
      v112 = outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v157, &demangling cache variable for type metadata for Any?);
    }

    LOBYTE(v112) = 1;
    LODWORD(v149) = v112;
    v107 = "rRegressor.Model.swift";
    v108 = v152;
    v106 = 0xD000000000000028;
    goto LABEL_59;
  }

  v103 = *&__src[0];
  v104 = v133;
  (*(v149 + 16))(v133, v152, v153);
  v105 = v136;
  MLActionClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(v103, v104);
  if (__swift_getEnumTagSinglePayload(v105, 1, v134) != 1)
  {
    v120 = v124;
    outlined init with take of MLClassifierMetrics(v136, v124, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    v109 = v140;
    v52 = v141;
    outlined init with take of MLClassifierMetrics(v120, v141 + v140[5], type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    goto LABEL_53;
  }

  v151;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v136, &demangling cache variable for type metadata for MLActionClassifier.ModelParameters.ValidationData?);
  v106 = 0xD000000000000037;
  v107 = "ion Classification algorithm.";
  LODWORD(v149) = 0;
  v108 = v152;
LABEL_59:
  v115 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v115, 0, 0);
  *v116 = v106;
  *(v116 + 8) = v107 | 0x8000000000000000;
  *(v116 + 16) = 0;
  *(v116 + 32) = 0;
  *(v116 + 48) = 0;
  swift_willThrow();
  outlined consume of Data._Representation(v145, v146);
  v117 = v153;
  v118 = v150;
  v150(v147, v153);
  v118(v144, v117);
  __swift_destroy_boxed_opaque_existential_1Tm(v174);
  v118(v108, v117);
  v119 = v141;
  outlined destroy of MLActivityClassifier.ModelParameters(v141, type metadata accessor for MLActionClassifier.DataSource);
  if (v149)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v140[5] + v119, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
  }

  return __stack_chk_guard;
}

uint64_t MLActionClassifier.DataSource.init(dictionary:tableFile:)(uint64_t a1, uint64_t a2)
{
  *(&v98 + 1) = a2;
  v3 = v2;
  v92 = type metadata accessor for DataFrame(0);
  *&v85 = *(v92 - 8);
  v4 = *(v85 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v91 = &v60;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v89 = &v60;
  v97 = type metadata accessor for URL(0);
  *&v98 = *(v97 - 8);
  v9 = *(v98 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = alloca(v9);
  v13 = alloca(v9);
  v14 = type metadata accessor for MLActionClassifier.DataSource(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  if (*(a1 + 16))
  {
    v86 = &v60;
    v99 = v14;
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
    if ((v19 & 1) == 0)
    {
LABEL_18:
      a1;
LABEL_21:
      v14 = v99;
      goto LABEL_22;
    }

    v96 = v3;
    outlined init with copy of Any(*(a1 + 56) + 32 * v18, v62);
    v95 = &type metadata for Any + 8;
    if (!swift_dynamicCast(__src, v62, &type metadata for Any + 8, &type metadata for String, 6))
    {
      a1;
      v3 = v96;
      goto LABEL_21;
    }

    v20 = *(&__src[0] + 1);
    if (!(*&__src[0] ^ 0x726F746365726964 | *(&__src[0] + 1) ^ 0xE900000000000079) || (v93 = *&__src[0], (_stringCompareWithSmolCheck(_:_:expecting:)(0x726F746365726964, 0xE900000000000079, *&__src[0], *(&__src[0] + 1), 0) & 1) != 0))
    {
      v20;
      specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
      v3 = v96;
      if (!v65)
      {
        a1;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, &demangling cache variable for type metadata for Any?);
        goto LABEL_21;
      }

      if (swift_dynamicCast(__src, v62, v95, &type metadata for String, 6))
      {
        v21 = __src[0];
        specialized Dictionary.subscript.getter(0x697461746F6E6E61, 0xEF656C69665F6E6FLL, a1);
        if (v65)
        {
          if (!swift_dynamicCast(__src, v62, v95, &type metadata for String, 6))
          {
            goto LABEL_52;
          }

          v22 = *(&__src[0] + 1);
          v89 = *&__src[0];
          specialized Dictionary.subscript.getter(0x6F635F6F65646976, 0xEC0000006E6D756CLL, a1);
          if (v65)
          {
            v92 = v22;
            if (!swift_dynamicCast(__src, v62, v95, &type metadata for String, 6))
            {
LABEL_51:
              a1;
              LOBYTE(a1) = v92;
LABEL_52:
              a1;
              SBYTE8(v21);
              goto LABEL_53;
            }

            v23 = *(&__src[0] + 1);
            *&v85 = *&__src[0];
            specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
            if (v65)
            {
              if (swift_dynamicCast(__src, v62, v95, &type metadata for String, 6))
              {
                v84 = *(&__src[0] + 1);
                v93 = *&__src[0];
                specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
                if (v65)
                {
                  if (swift_dynamicCast(__src, v62, v95, &type metadata for String, 6))
                  {
                    v90 = __src[0];
LABEL_66:
                    specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
                    a1;
                    v91 = v23;
                    if (v65)
                    {
                      if (swift_dynamicCast(__src, v62, v95, &type metadata for String, 6))
                      {
                        v42 = *(&__src[0] + 1);
                        v41 = *&__src[0];
                      }

                      else
                      {
                        v41 = 0;
                        v42 = 0;
                      }

                      v83 = v42;
                      v95 = v41;
                    }

                    else
                    {
                      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, &demangling cache variable for type metadata for Any?);
                      v95 = 0;
                      v83 = 0;
                    }

                    v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
                    v31 = v86;
                    v44 = v43[16];
                    v82 = v43[20];
                    v81 = v43[24];
                    v80 = v43[28];
                    URL.init(fileURLWithPath:)(v21, *(&v21 + 1));
                    SBYTE8(v21);
                    v45 = v92;
                    URL.init(fileURLWithPath:)(v89, v92);
                    v45;
                    (*(v98 + 8))(*(&v98 + 1), v97);
                    *(v31 + v44) = v85;
                    *(v31 + v44 + 8) = v91;
                    v46 = v82;
                    *(v31 + v82) = v93;
                    *(v31 + v46 + 8) = v84;
                    *(v31 + v81) = v90;
                    v47 = v80;
                    *(v31 + v80) = v95;
                    *(v31 + v47 + 8) = v83;
                    v48 = v31;
                    v14 = v99;
                    v49 = v99;
                    v50 = 0;
                    goto LABEL_73;
                  }
                }

                else
                {
                  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, &demangling cache variable for type metadata for Any?);
                }

                v90 = 0uLL;
                goto LABEL_66;
              }

              a1;
              LOBYTE(a1) = v23;
              goto LABEL_51;
            }

            a1;
            v23;
            LOBYTE(a1) = v92;
          }

          else
          {
            a1;
            LOBYTE(a1) = v22;
          }
        }

        a1;
        SBYTE8(v21);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, &demangling cache variable for type metadata for Any?);
LABEL_53:
        (*(v98 + 8))(*(&v98 + 1), v97);
LABEL_54:
        v27 = 1;
        v3 = v96;
        v14 = v99;
        return __swift_storeEnumTagSinglePayload(v3, v27, 1, v14);
      }

      goto LABEL_18;
    }

    if (!(v93 ^ 0xD000000000000013 | v20 ^ (&aLabeledDirecto[-32] | 0x8000000000000000)) || (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000013, &aLabeledDirecto[-32] | 0x8000000000000000, v93, v20, 0) & 1) != 0)
    {
      v20;
      specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
      a1;
      if (v65)
      {
        v29 = swift_dynamicCast(__src, v62, v95, &type metadata for String, 6);
        v3 = v96;
        v14 = v99;
        if (v29)
        {
          v30 = BYTE8(__src[0]);
          v31 = v86;
          URL.init(fileURLWithPath:)(*&__src[0], *(&__src[0] + 1));
          v30;
          (*(v98 + 8))(*(&v98 + 1), v97);
          swift_storeEnumTagMultiPayload(v31, v14, 1);
LABEL_31:
          outlined init with take of MLClassifierMetrics(v31, v3, type metadata accessor for MLActionClassifier.DataSource);
          v27 = 0;
          return __swift_storeEnumTagSinglePayload(v3, v27, 1, v14);
        }

        goto LABEL_36;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, &demangling cache variable for type metadata for Any?);
      v3 = v96;
      goto LABEL_35;
    }

    if (!(v93 ^ 0x5F64656C6562616CLL | v20 ^ 0xED000073656C6966) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x5F64656C6562616CLL, 0xED000073656C6966, v93, v20, 0) & 1) != 0)
    {
      v20;
      specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
      a1;
      v3 = v96;
      if (v65)
      {
        v32 = swift_dynamicCast(__src, v62, v95, &type metadata for String, 6);
        v14 = v99;
        if (v32)
        {
          v33 = BYTE8(__src[0]);
          v31 = v86;
          URL.init(fileURLWithPath:)(*&__src[0], *(&__src[0] + 1));
          v33;
          (*(v98 + 8))(*(&v98 + 1), v97);
          swift_storeEnumTagMultiPayload(v31, v14, 2);
          goto LABEL_31;
        }

LABEL_36:
        v24 = *(&v98 + 1);
        v26 = v98;
        v25 = v97;
        goto LABEL_23;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, &demangling cache variable for type metadata for Any?);
LABEL_35:
      v14 = v99;
      goto LABEL_36;
    }

    if (!(v93 ^ 0xD000000000000016 | v20 ^ (&aLabeledKeypoin[-32] | 0x8000000000000000)) || (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000016, &aLabeledKeypoin[-32] | 0x8000000000000000, v93, v20, 0) & 1) != 0)
    {
      v20;
      (*(v98 + 16))(&v60, *(&v98 + 1), v97);
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
      v62[0] = 1;
      v63 = 44;
      v64 = 0xE100000000000000;
      v65 = 0;
      v66 = 0xE000000000000000;
      v67 = 92;
      v68 = 0xE100000000000000;
      v69 = 1;
      v70 = 34;
      v71 = 0xE100000000000000;
      v72 = 1;
      v73 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v74 = 10;
      v75 = 0xE100000000000000;
      v76 = 0;
      v77 = 1;
      v78 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(v62);
      memcpy(__dst, __src, sizeof(__dst));
      MLDataTable.init(contentsOf:options:)(&v60, __dst);
      v87 = v94;
      LOBYTE(v88) = BYTE8(v94);
      static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v87, 0x746E696F7079656BLL, 0xE900000000000073);
      v3 = v96;
      v14 = v99;
      specialized Dictionary.subscript.getter(0xD000000000000011, ("labeled_keypoints_data" + 0x8000000000000000), a1);
      if (__dst[3])
      {
        if (swift_dynamicCast(&v94, __dst, v95, &type metadata for String, 6))
        {
          v34 = *(&v94 + 1);
          v35 = v94;
          specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
          if (__dst[3])
          {
            if (swift_dynamicCast(&v94, __dst, v95, &type metadata for String, 6))
            {
              v92 = v35;
              v36 = *(&v94 + 1);
              v89 = v94;
              specialized Dictionary.subscript.getter(0x5F65727574616566, 0xEE006E6D756C6F63, a1);
              a1;
              if (__dst[3])
              {
                if (swift_dynamicCast(&v94, __dst, v95, &type metadata for String, 6))
                {
                  v85 = v94;
                  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
                  v38 = v37[12];
                  v95 = v37[16];
                  v91 = v37[20];
                  __dst[0] = v87;
                  LOBYTE(__dst[1]) = v88;
                  outlined copy of Result<_DataTable, Error>(v87, v88);
                  v31 = v86;
                  DataFrame.init(_:)(__dst);
                  (*(v98 + 8))(*(&v98 + 1), v97);
                  outlined consume of Result<_DataTable, Error>(v87, v88);
                  *(v31 + v38) = v92;
                  *(v31 + v38 + 8) = v34;
                  v39 = v95;
                  *(v31 + v95) = v89;
                  *(v31 + v39 + 8) = v36;
                  *(v91 + v31) = v85;
                  v59 = 5;
LABEL_107:
                  v50 = v59;
                  v48 = v31;
                  v14 = v99;
                  v49 = v99;
LABEL_73:
                  swift_storeEnumTagMultiPayload(v48, v49, v50);
                  v3 = v96;
                  goto LABEL_31;
                }

                v36;
                v34;
              }

              else
              {
                v36;
                v34;
                outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(__dst, &demangling cache variable for type metadata for Any?);
              }

              v3 = v96;
            }

            else
            {
              a1;
              v34;
            }
          }

          else
          {
            a1;
            v34;
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(__dst, &demangling cache variable for type metadata for Any?);
          }

          v14 = v99;
        }

        else
        {
          a1;
        }
      }

      else
      {
        a1;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(__dst, &demangling cache variable for type metadata for Any?);
      }

      (*(v98 + 8))(*(&v98 + 1), v97);
      outlined consume of Result<_DataTable, Error>(v87, v88);
      goto LABEL_24;
    }

    v40 = &aLabeledVideoDa[-32] | 0x8000000000000000;
    if (v93 ^ 0xD000000000000012 | v40 ^ v20)
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000012, v40, v93, v20, 0);
      v20;
      if ((v51 & 1) == 0)
      {
        (*(v98 + 8))(*(&v98 + 1), v97);
        a1;
        goto LABEL_54;
      }
    }

    else
    {
      v20;
    }

    (*(v98 + 16))(&v60, *(&v98 + 1), v97);
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
    v62[0] = 1;
    v63 = 44;
    v64 = 0xE100000000000000;
    v65 = 0;
    v66 = 0xE000000000000000;
    v67 = 92;
    v68 = 0xE100000000000000;
    v69 = 1;
    v70 = 34;
    v71 = 0xE100000000000000;
    v72 = 1;
    v73 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    v74 = 10;
    v75 = 0xE100000000000000;
    v76 = 0;
    v77 = 1;
    v78 = 0;
    outlined retain of MLDataTable.ParsingOptions(__src);
    outlined release of MLDataTable.ParsingOptions(v62);
    memcpy(__dst, __src, sizeof(__dst));
    MLDataTable.init(contentsOf:options:)(&v60, __dst);
    __dst[0] = v94;
    LOBYTE(__dst[1]) = BYTE8(v94);
    v52 = v91;
    DataFrame.init(_:)(__dst);
    v53 = v85;
    v54 = *(v85 + 32);
    v54(v89, v52, v92);
    specialized Dictionary.subscript.getter(0x6F635F6F65646976, 0xEC0000006E6D756CLL, a1);
    if (__dst[3])
    {
      if (swift_dynamicCast(&v94, __dst, v95, &type metadata for String, 6))
      {
        v91 = *(&v94 + 1);
        v93 = v94;
        specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
        if (__dst[3])
        {
          if (swift_dynamicCast(&v94, __dst, v95, &type metadata for String, 6))
          {
            v84 = *(&v94 + 1);
            *&v85 = v94;
            specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
            if (__dst[3])
            {
              if (swift_dynamicCast(&v94, __dst, v95, &type metadata for String, 6))
              {
                v90 = v94;
                goto LABEL_101;
              }
            }

            else
            {
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(__dst, &demangling cache variable for type metadata for Any?);
            }

            v90 = 0uLL;
LABEL_101:
            specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
            a1;
            (*(v98 + 8))(*(&v98 + 1), v97);
            if (__dst[3])
            {
              if (swift_dynamicCast(&v94, __dst, v95, &type metadata for String, 6))
              {
                v98 = v94;
LABEL_106:
                v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
                v56 = v55[12];
                v57 = v55[16];
                v58 = v55[20];
                v97 = v55[24];
                v31 = v86;
                v54(v86, v89, v92);
                *(v31 + v56) = v93;
                *(v31 + v56 + 8) = v91;
                *(v31 + v57) = v85;
                *(v31 + v57 + 8) = v84;
                *(v31 + v58) = v90;
                *(v31 + v97) = v98;
                v59 = 6;
                goto LABEL_107;
              }
            }

            else
            {
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(__dst, &demangling cache variable for type metadata for Any?);
            }

            v98 = 0uLL;
            goto LABEL_106;
          }

          a1;
          v91;
        }

        else
        {
          a1;
          v91;
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(__dst, &demangling cache variable for type metadata for Any?);
        }

        v3 = v96;
        v14 = v99;
        v53 = v85;
LABEL_98:
        (*(v98 + 8))(*(&v98 + 1), v97);
        (*(v53 + 8))(v89, v92);
        goto LABEL_24;
      }

      a1;
    }

    else
    {
      a1;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(__dst, &demangling cache variable for type metadata for Any?);
    }

    v3 = v96;
    v14 = v99;
    goto LABEL_98;
  }

  a1;
LABEL_22:
  v24 = *(&v98 + 1);
  v25 = v97;
  v26 = v98;
LABEL_23:
  (*(v26 + 8))(v24, v25);
LABEL_24:
  v27 = 1;
  return __swift_storeEnumTagSinglePayload(v3, v27, 1, v14);
}

uint64_t MLActionClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = v2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v39 = &v37;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.DataSource?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v38 = &v37;
  v12 = type metadata accessor for MLActionClassifier.DataSource(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v40 = &v37;
  v52 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
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
  v49 = &type metadata for Any + 8;
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
            MLActionClassifier.DataSource.init(dictionary:tableFile:)(v49, v28);
            (*(v5 + 8))(v50, v4);
            v30 = v29;
            v22 = 1;
            if (__swift_getEnumTagSinglePayload(v30, 1, v12) == 1)
            {
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for MLActionClassifier.DataSource?);
              v25 = 1;
              v3 = v51;
              goto LABEL_11;
            }

            v34 = v30;
            v35 = v40;
            outlined init with take of MLClassifierMetrics(v34, v40, type metadata accessor for MLActionClassifier.DataSource);
            v36 = v35;
            v24 = v47;
            outlined init with take of MLClassifierMetrics(v36, v47, type metadata accessor for MLActionClassifier.DataSource);
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
  v22 = 2;
  v23 = v52;
  v24 = v47;
LABEL_7:
  swift_storeEnumTagMultiPayload(v24, v23, v22);
  v3 = v51;
  outlined init with take of MLClassifierMetrics(v24, v51, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
  v25 = 0;
  return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
}

uint64_t MLActionClassifier.ModelParameters.ModelAlgorithmType.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0x687469726F676C61, 0xE90000000000006DLL), (v4 & 1) == 0))
  {
    v10 = 0;
    v9 = 0;
    a1;
    goto LABEL_8;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, &v9);
  a1;
  if (!*(&v10 + 1))
  {
LABEL_8:
    result = outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v9, &demangling cache variable for type metadata for Any?);
    goto LABEL_9;
  }

  result = swift_dynamicCast(&v11, &v9, &type metadata for Any + 8, &type metadata for String, 6);
  if (!result)
  {
LABEL_9:
    v7 = 1;
    goto LABEL_10;
  }

  v6 = v12;
  if (v11 ^ 0x6E63677473 | v12 ^ 0xE500000000000000)
  {
    v7 = 0;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)(0x6E63677473, 0xE500000000000000, v11, v12, 0);
    result = v6;
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  result = v12;
  v7 = 0;
LABEL_10:
  *v2 = v7;
  return result;
}

NSURL *MLActionClassifier.PersistentParameters.save(toSessionDirectory:)(uint64_t a1)
{
  v57 = v1;
  v69 = a1;
  v3 = *(*(type metadata accessor for MLActionClassifier.DataSource(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v64 = &v53;
  v60 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  v6 = *(*(v60 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v61 = &v53;
  v75 = type metadata accessor for URL(0);
  v66 = *(v75 - 8);
  v9 = *(v66 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v68 = &v53;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v59 = &v53;
  v14 = alloca(v9);
  v15 = alloca(v9);
  v58 = &v53;
  v65 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  v16 = *(*(v65 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v67 = &v53;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v73 = &v53;
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v21, v78);
  *(inited + 16) = 8;
  *(inited + 24) = 16;
  *(inited + 32) = 0x676E696E69617274;
  *(inited + 40) = 0xE800000000000000;
  v71 = v2;
  v23 = MLActionClassifier.DataSource.dictionary.getter();
  v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  *(inited + 72) = v74;
  *(inited + 48) = v23;
  *(inited + 80) = 0x69746164696C6176;
  *(inited + 88) = 0xEA00000000006E6FLL;
  v24 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v62 = v2 + v24[5];
  v25 = v73;
  outlined init with copy of MLTrainingSessionParameters(v62, v73, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
  v56 = *&v71[v24[6]];
  v70 = *&v71[v24[7]];
  v55 = *&v71[v24[8]];
  v63 = v24[10];
  v54 = *&v71[v63];
  v72 = *&v71[v24[9]];
  *(v25 + *(v65 + 32)) = v54;
  v26 = MLActionClassifier.ModelParameters.ValidationData.dictionary.getter();
  outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
  v27 = v74;
  *(inited + 120) = v74;
  *(inited + 96) = v26;
  *(inited + 128) = 0x69735F6863746162;
  *(inited + 136) = 0xEA0000000000657ALL;
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v56;
  *(inited + 176) = 0x6D6172665F6D756ELL;
  *(inited + 184) = 0xEA00000000007365;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v55;
  strcpy((inited + 224), "max_iterations");
  *(inited + 239) = -18;
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = v70;
  *(inited + 272) = 0xD000000000000014;
  *(inited + 280) = "Empty training input." + 0x8000000000000000;
  *(inited + 312) = &type metadata for Int;
  *(inited + 288) = v54;
  *(inited + 320) = 0x687469726F676C61;
  *(inited + 328) = 0xE90000000000006DLL;
  v28 = MLActionClassifier.ModelParameters.ModelAlgorithmType.dictionary.getter();
  *(inited + 360) = v27;
  *(inited + 336) = v28;
  *(inited + 368) = 0x7246746567726174;
  *(inited + 376) = 0xEF65746152656D61;
  *(inited + 408) = &type metadata for Double;
  v29 = v72;
  *(inited + 384) = v72;
  LOBYTE(inited) = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v30 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  inited;
  v76 = 0;
  v32 = [v30 dataWithPropertyList:isa format:200 options:0 error:&v76];
  v33 = v32;

  v34 = v76;
  if (v33)
  {
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v33);
    v37 = v36;

    v38 = v58;
    URL.appendingPathComponent(_:)(0xD000000000000010, ("ObjectDetectorMetrics." + 0x8000000000000000));
    v39 = v57;
    Data.write(to:options:)(v38, 0, v35, v37);
    if (v39)
    {
      (*(v66 + 8))(v38, v75);
      v40 = v35;
      v41 = v37;
    }

    else
    {
      v74 = v35;
      v73 = v37;
      v72 = *(v66 + 8);
      *v29.i64 = v72(v38, v75);
      MLActionClassifier.DataSource.table.getter(v29);
      v43 = v77;
      if (v77 != -1)
      {
        v70 = v76;
        v77 &= 1u;
        v44 = v59;
        URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
        MLDataTable.write(to:)(v44);
        v72(v44, v75);
        outlined consume of MLDataTable?(v70, v43);
      }

      v45 = v67;
      outlined init with copy of MLTrainingSessionParameters(v62, v67, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
      *(v45 + *(v65 + 32)) = *&v71[v63];
      v46 = v45;
      v47 = v61;
      outlined init with copy of MLTrainingSessionParameters(v46, v61, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
      if (swift_getEnumCaseMultiPayload(v47, v60) == 1)
      {
        v48 = v64;
        outlined init with take of MLClassifierMetrics(v47, v64, type metadata accessor for MLActionClassifier.DataSource);
        MLActionClassifier.DataSource.table.getter(v29);
        outlined destroy of MLActivityClassifier.ModelParameters(v48, type metadata accessor for MLActionClassifier.DataSource);
        v49 = v77;
        v50 = v76;
      }

      else
      {
        v49 = -1;
        v50 = 0;
      }

      v51 = v68;
      outlined destroy of MLActivityClassifier.ModelParameters(v67, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
      if (v49 != -1)
      {
        v76 = v50;
        v77 = v49 & 1;
        v71 = v50;
        URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
        MLDataTable.write(to:)(v51);
        v72(v51, v75);
        outlined consume of Data._Representation(v74, v73);
        outlined consume of MLDataTable?(v71, v49);
        return __stack_chk_guard;
      }

      v40 = v74;
      v41 = v73;
    }

    outlined consume of Data._Representation(v40, v41);
  }

  else
  {
    v42 = v34;
    _convertNSErrorToError(_:)(v34);

    swift_willThrow();
  }

  return __stack_chk_guard;
}

uint64_t MLActionClassifier.DataSource.dictionary.getter()
{
  v86 = type metadata accessor for URL(0);
  v85 = *(v86 - 8);
  v1 = *(v85 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = alloca(v1);
  v5 = alloca(v1);
  v84 = &v60;
  v6 = alloca(v1);
  v7 = alloca(v1);
  v8 = type metadata accessor for MLActionClassifier.DataSource(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of MLTrainingSessionParameters(v0, &v60, type metadata accessor for MLActionClassifier.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v60, v8))
  {
    case 0u:
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v13 = &v60 + v12[12];
      v77 = *(&v60 + v12[16]);
      v76 = *(&v60 + v12[20]);
      v14 = v12[24];
      v80 = *(&v60 + v14);
      v78 = *(&v60 + v14 + 8);
      v15 = v12[28];
      v79 = *(&v60 + v15);
      v82 = *(&v60 + v15 + 8);
      v16 = *(v85 + 32);
      v17 = v86;
      v16(&v60, &v60, v86);
      v16(v84, v13, v17);
      v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v19 = swift_allocObject(v18, 272, 7);
      *(v19 + 16) = 5;
      *(v19 + 24) = 10;
      *(v19 + 32) = 1684957547;
      *(v19 + 40) = 0xE400000000000000;
      *(v19 + 72) = &type metadata for String;
      *(v19 + 48) = 0x726F746365726964;
      *(v19 + 56) = 0xE900000000000079;
      *(v19 + 80) = 1752457584;
      *(v19 + 88) = 0xE400000000000000;
      v83 = &v60;
      v20 = URL.path.getter(v18);
      *(v19 + 120) = &type metadata for String;
      *(v19 + 96) = v20;
      *(v19 + 104) = v21;
      *(v19 + 128) = 0x697461746F6E6E61;
      *(v19 + 136) = 0xEF656C69665F6E6FLL;
      *(v19 + 168) = v17;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v19 + 144));
      (*(v85 + 16))(boxed_opaque_existential_0, v84, v17);
      strcpy((v19 + 176), "video_column");
      *(v19 + 189) = 0;
      *(v19 + 190) = -5120;
      *(v19 + 216) = &type metadata for String;
      *(v19 + 192) = v77;
      strcpy((v19 + 224), "label_column");
      *(v19 + 237) = 0;
      *(v19 + 238) = -5120;
      *(v19 + 264) = &type metadata for String;
      *(v19 + 240) = v76;
      v23 = Dictionary.init(dictionaryLiteral:)(v19, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      if (v78)
      {
        v74 = &type metadata for String;
        *&v73 = v80;
        *(&v73 + 1) = v78;
        outlined init with take of Any(&v73, v75);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v23);
        v81 = v23;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, 0xD000000000000011, ("labeled_video_data" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
        v23 = v81;
      }

      v25 = v85;
      v26 = v86;
      if (v82)
      {
        v74 = &type metadata for String;
        *&v73 = v79;
        *(&v73 + 1) = v82;
        outlined init with take of Any(&v73, v75);
        v27 = swift_isUniquelyReferenced_nonNull_native(v23);
        v81 = v23;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, 0x656D69745F646E65, 0xEF6E6D756C6F635FLL, v27);
        v23 = v81;
      }

      v28 = *(v25 + 8);
      v28(v84, v26);
      v28(v83, v26);
      return v23;
    case 1u:
      v32 = v85;
      (*(v85 + 32))(&v60, &v60, v86);
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      inited = swift_initStackObject(v33, v72);
      inited[2] = 2;
      inited[3] = 4;
      inited[4] = 1684957547;
      inited[5] = 0xE400000000000000;
      v35 = "session_id_column" + 0x8000000000000000;
      inited[9] = &type metadata for String;
      inited[6] = 0xD000000000000013;
      goto LABEL_11;
    case 2u:
      v32 = v85;
      (*(v85 + 32))(&v60, &v60, v86);
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      inited = swift_initStackObject(v33, v71);
      inited[2] = 2;
      inited[3] = 4;
      inited[4] = 1684957547;
      inited[5] = 0xE400000000000000;
      inited[9] = &type metadata for String;
      inited[6] = 0x5F64656C6562616CLL;
      v35 = 0xED000073656C6966;
LABEL_11:
      inited[7] = v35;
      inited[10] = 1752457584;
      inited[11] = 0xE400000000000000;
      v40 = URL.path.getter(v33);
      inited[15] = &type metadata for String;
      inited[12] = v40;
      inited[13] = v41;
      v23 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      (*(v32 + 8))(&v60, v86);
      return v23;
    case 3u:
      v36 = v62;
      v37 = v63;
      v38 = v64;
      v39 = v65;
      v86 = v66;
      v85 = v67;
      outlined consume of Result<_DataTable, Error>(v60, v61);
      goto LABEL_13;
    case 4u:
      v84 = v62;
      v29 = v63;
      v85 = v64;
      v30 = v65;
      v82 = v66;
      v31 = v67;
      v83 = v68;
      v86 = v69;
      outlined consume of Result<_DataTable, Error>(v60, v61);
      goto LABEL_15;
    case 5u:
      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v43 = v42[12];
      v36 = *(&v60 + v43);
      v37 = *(&v60 + v43 + 8);
      v44 = v42[16];
      v38 = *(&v60 + v44);
      v39 = *(&v60 + v44 + 8);
      v45 = v42[20];
      v86 = *(&v60 + v45);
      v85 = *(&v60 + v45 + 8);
      v46 = type metadata accessor for DataFrame(0);
      (*(*(v46 - 8) + 8))(&v60, v46);
LABEL_13:
      v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v48 = swift_initStackObject(v47, &v60);
      *(v48 + 16) = 4;
      *(v48 + 24) = 8;
      *(v48 + 32) = 1684957547;
      *(v48 + 40) = 0xE400000000000000;
      *(v48 + 72) = &type metadata for String;
      *(v48 + 48) = 0xD000000000000016;
      *(v48 + 56) = "start_time_column" + 0x8000000000000000;
      *(v48 + 80) = 0xD000000000000011;
      *(v48 + 88) = "labeled_keypoints_data" + 0x8000000000000000;
      *(v48 + 120) = &type metadata for String;
      *(v48 + 96) = v36;
      *(v48 + 104) = v37;
      strcpy((v48 + 128), "label_column");
      *(v48 + 141) = 0;
      *(v48 + 142) = -5120;
      *(v48 + 168) = &type metadata for String;
      *(v48 + 144) = v38;
      *(v48 + 152) = v39;
      strcpy((v48 + 176), "feature_column");
      *(v48 + 191) = -18;
      *(v48 + 216) = &type metadata for String;
      *(v48 + 192) = v86;
      *(v48 + 200) = v85;
      v23 = Dictionary.init(dictionaryLiteral:)(v48, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      break;
    case 6u:
      v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v50 = v49[12];
      v84 = *(&v60 + v50);
      v29 = *(&v60 + v50 + 8);
      v51 = v49[16];
      v85 = *(&v60 + v51);
      v30 = *(&v60 + v51 + 8);
      v52 = v49[20];
      v82 = *(&v60 + v52);
      v31 = *(&v60 + v52 + 8);
      v53 = v49[24];
      v83 = *(&v60 + v53);
      v86 = *(&v60 + v53 + 8);
      v54 = type metadata accessor for DataFrame(0);
      (*(*(v54 - 8) + 8))(&v60, v54);
LABEL_15:
      v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v56 = swift_initStackObject(v55, v70);
      *(v56 + 16) = 3;
      *(v56 + 24) = 6;
      *(v56 + 32) = 1684957547;
      *(v56 + 40) = 0xE400000000000000;
      *(v56 + 72) = &type metadata for String;
      *(v56 + 48) = 0xD000000000000012;
      *(v56 + 56) = "augmentation_options" + 0x8000000000000000;
      strcpy((v56 + 80), "video_column");
      *(v56 + 93) = 0;
      *(v56 + 94) = -5120;
      *(v56 + 120) = &type metadata for String;
      *(v56 + 96) = v84;
      *(v56 + 104) = v29;
      strcpy((v56 + 128), "label_column");
      *(v56 + 141) = 0;
      *(v56 + 142) = -5120;
      *(v56 + 168) = &type metadata for String;
      *(v56 + 144) = v85;
      *(v56 + 152) = v30;
      v23 = Dictionary.init(dictionaryLiteral:)(v56, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      if (v31)
      {
        v74 = &type metadata for String;
        *&v73 = v82;
        *(&v73 + 1) = v31;
        outlined init with take of Any(&v73, v75);
        v57 = swift_isUniquelyReferenced_nonNull_native(v23);
        v81 = v23;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, 0xD000000000000011, ("labeled_video_data" + 0x8000000000000000), v57);
        v23 = v81;
      }

      if (v86)
      {
        v74 = &type metadata for String;
        *&v73 = v83;
        *(&v73 + 1) = v86;
        outlined init with take of Any(&v73, v75);
        v58 = swift_isUniquelyReferenced_nonNull_native(v23);
        v81 = v23;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v75, 0x656D69745F646E65, 0xEF6E6D756C6F635FLL, v58);
        v23 = v81;
      }

      break;
  }

  return v23;
}

uint64_t MLActionClassifier.ModelParameters.ValidationData.dictionary.getter()
{
  v1 = *(*(type metadata accessor for MLActionClassifier.DataSource(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  outlined init with copy of MLTrainingSessionParameters(v0, &v23, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v23, v4);
  if (!EnumCaseMultiPayload)
  {
    v13 = v24;
    v14 = v25;
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    v31 = v23;
    inited = swift_initStackObject(v15, &v23);
    inited[2] = 2;
    inited[3] = 4;
    inited[4] = 1684957547;
    inited[5] = 0xE400000000000000;
    inited[9] = &type metadata for String;
    inited[6] = 0x74696C7073;
    inited[7] = 0xE500000000000000;
    inited[10] = 1635017060;
    inited[11] = 0xE400000000000000;
    v28 = v31;
    v29 = v13;
    v30 = v14;
    v17 = MLSplitStrategy.dictionary.getter();
    inited[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
    inited[12] = v17;
    v18 = &type metadata for Any + 8;
    v19 = inited;
    return Dictionary.init(dictionaryLiteral:)(v19, &type metadata for String, v18, &protocol witness table for String);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    v21 = swift_initStackObject(v20, v27);
    v21[2] = 1;
    v21[3] = 2;
    v21[4] = 1684957547;
    v21[5] = 0xE400000000000000;
    v21[9] = &type metadata for String;
    v21[6] = 1701736302;
    v21[7] = 0xE400000000000000;
    v18 = &type metadata for Any + 8;
    v19 = v21;
    return Dictionary.init(dictionaryLiteral:)(v19, &type metadata for String, v18, &protocol witness table for String);
  }

  outlined init with take of MLClassifierMetrics(&v23, &v23, type metadata accessor for MLActionClassifier.DataSource);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  v10 = swift_initStackObject(v9, v26);
  v10[2] = 2;
  v10[3] = 4;
  v10[4] = 1684957547;
  v10[5] = 0xE400000000000000;
  v10[9] = &type metadata for String;
  v10[6] = 0x756F735F61746164;
  v10[7] = 0xEB00000000656372;
  v10[10] = 1635017060;
  v10[11] = 0xE400000000000000;
  v11 = MLActionClassifier.DataSource.dictionary.getter();
  v10[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  v10[12] = v11;
  v12 = Dictionary.init(dictionaryLiteral:)(v10, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  outlined destroy of MLActivityClassifier.ModelParameters(&v23, type metadata accessor for MLActionClassifier.DataSource);
  return v12;
}

uint64_t MLActionClassifier.ModelParameters.ModelAlgorithmType.dictionary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v0, v3);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = 0x687469726F676C61;
  inited[5] = 0xE90000000000006DLL;
  inited[9] = &type metadata for String;
  inited[6] = 0x6E63677473;
  inited[7] = 0xE500000000000000;
  return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
}

uint64_t *MLActionClassifier.DataSource.table.getter(__m128 a1)
{
  v88 = v2;
  v87 = v1;
  v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v75 = *(v76 - 8);
  v3 = *(v75 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v69 = &v68;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v84 = &v68;
  v83 = type metadata accessor for AnyColumn(0);
  v74 = *(v83 - 8);
  v9 = *(v74 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v77 = &v68;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v79 = &v68;
  v14 = type metadata accessor for DataFrame(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v81 = &v68;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v80 = &v68;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v23 = alloca(v16);
  v24 = alloca(v16);
  v73 = &v68;
  v25 = type metadata accessor for MLActionClassifier.DataSource(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  outlined init with copy of MLTrainingSessionParameters(v88, &v68, type metadata accessor for MLActionClassifier.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v68, v25))
  {
    case 0u:
      v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v36 = &v68 + v35[12];
      *(&v68 + v35[16] + 8);
      *(&v68 + v35[20] + 8);
      *(&v68 + v35[24] + 8);
      *(&v68 + v35[28] + 8);
      v37 = type metadata accessor for URL(0);
      v38 = *(*(v37 - 8) + 8);
      v38(v36, v37);
      v38(&v68, v37);
      goto LABEL_11;
    case 1u:
    case 2u:
      v29 = type metadata accessor for URL(0);
      (*(*(v29 - 8) + 8))(&v68, v29);
LABEL_11:
      result = v87;
      *v87 = 0;
      *(result + 8) = -1;
      return result;
    case 3u:
      v39 = v68;
      v40 = v69;
      v41 = v73;
      v42 = v75;
      v71;
      v41;
      v42;
      v85 = v39;
      v86 = v40 & 1;
      outlined copy of Result<_DataTable, Error>(v39, v40);
      static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v85, 0x746E696F7079656BLL, 0xE900000000000073);
      outlined consume of Result<_DataTable, Error>(v39, v40);
      goto LABEL_12;
    case 4u:
      v30 = v68;
      LOBYTE(v88) = v69;
      v31 = v73;
      v32 = v75;
      v33 = v77;
      v71;
      v31;
      v33;
      v32;
      result = v87;
      *v87 = v30;
      *(result + 8) = v88;
      return result;
    case 5u:
      v81 = &v68;
      v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(&v68 + v43[12] + 8);
      *(&v68 + v43[16] + 8);
      v44 = v43[20];
      v45 = *(&v68 + v44);
      v46 = *(&v68 + v44 + 8);
      v80 = v14;
      v88 = v15;
      (*(v15 + 32))(v73, &v68, v14);
      v47 = v79;
      v82 = v45;
      v48 = v46;
      v49 = v46;
      v50 = v73;
      DataFrame.subscript.getter(v45, v49);
      v51 = AnyColumn.wrappedElementType.getter(v45);
      v52 = *(v74 + 8);
      v52(v47, v83);
      v78 = v48;
      if (v51 == &type metadata for String)
      {
        v70 = v52;
        v57 = v69;
        DataFrame.subscript.getter(v82, v48, &type metadata for String);
        Column<A>.parseAsJSONArrays()();
        (*(v75 + 8))(v57, v76);
        v58 = v83;
        __swift_storeEnumTagSinglePayload(v84, 0, 1, v83);
        v59 = v77;
        v60 = v58;
        v61 = v74;
        (*(v74 + 32))(v77, v84, v60);
        v62 = v59;
        v63 = v83;
        (*(v61 + 16))(v79, v62, v83);

        DataFrame.subscript.setter(v79, v82, v48);
        v70(v77, v63);
      }

      v53 = v88;
      v64 = v81;
      v65 = v80;
      *a1.i64 = (*(v88 + 16))(v81, v50, v80);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v64, 0, a1);
      v85 = v71;
      v86 = v72;
      LOBYTE(v64) = v78;
      static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v85, v82, v78);
      (*(v53 + 8))(v50, v65);
      v64;
      goto LABEL_12;
    case 6u:
      v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      *(&v68 + v54[12] + 8);
      *(&v68 + v54[16] + 8);
      *(&v68 + v54[20] + 8);
      *(&v68 + v54[24] + 8);
      v55 = v80;
      (*(v15 + 32))(v80, &v68, v14);
      v56 = v81;
      *a1.i64 = (*(v15 + 16))(v81, v55, v14);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v56, 0, a1);
      (*(v15 + 8))(v55, v14);
LABEL_12:
      result = v85;
      v66 = v86;
      v67 = v87;
      *v87 = v85;
      *(v67 + 8) = v66;
      return result;
  }
}

uint64_t type metadata completion function for Either(uint64_t a1)
{
  v1 = swift_checkMetadataState(319, *(a1 + 16));
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v8[0] = *(v1 - 8) + 64;
    v2 = swift_checkMetadataState(319, *(a1 + 24));
    if (v6 <= 0x3F)
    {
      v8[1] = *(v2 - 8) + 64;
      v2 = 0;
      swift_initEnumMetadataMultiPayload(a1, 0, 2, v8, v4, v5);
    }
  }

  return v2;
}

void *initializeBufferWithCopyOfBuffer for Either(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = *(v4 - 8);
  if (*(v7 + 64) > v6)
  {
    v6 = *(v7 + 64);
  }

  v8 = (*(v5 + 80) | *(v7 + 80));
  if (v8 > 7 || v6 + 1 > 0x18 || ((*(v5 + 80) | *(v7 + 80)) & 0x100000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;

    return (v12 + ((v8 + 16) & ~v8));
  }

  else
  {
    v9 = a2[v6];
    if (v9 >= 2)
    {
      v10 = 4;
      if (v6 < 4)
      {
        v10 = v6;
      }

      switch(v10)
      {
        case 0:
          break;
        case 1:
          v11 = *a2;
          goto LABEL_15;
        case 2:
          v11 = *a2;
          goto LABEL_15;
        case 3:
          v11 = *a2 | (a2[2] << 16);
          goto LABEL_15;
        case 4:
          v11 = *a2;
LABEL_15:
          if (v6 < 4)
          {
            v11 |= (v9 - 2) << (8 * v6);
          }

          v9 = v11 + 2;
          break;
      }
    }

    if (v9 == 1)
    {
      (*(v7 + 16))(a1, a2, v4);
      *(a1 + v6) = 1;
    }

    else
    {
      (*(v5 + 16))(a1);
      *(a1 + v6) = 0;
    }
  }

  return a1;
}

uint64_t destroy for Either(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = *(v4 - 8);
  if (*(v7 + 64) > v6)
  {
    v6 = *(v7 + 64);
  }

  v8 = a1[v6];
  if (v8 >= 2)
  {
    v9 = 4;
    if (v6 < 4)
    {
      v9 = v6;
    }

    switch(v9)
    {
      case 0:
        break;
      case 1:
        v10 = *a1;
        goto LABEL_11;
      case 2:
        v10 = *a1;
        goto LABEL_11;
      case 3:
        v10 = *a1 | (a1[2] << 16);
        goto LABEL_11;
      case 4:
        v10 = *a1;
LABEL_11:
        if (v6 < 4)
        {
          v10 |= (v8 - 2) << (8 * v6);
        }

        v8 = v10 + 2;
        break;
    }
  }

  if (v8 == 1)
  {
    v5 = *(v4 - 8);
    v3 = v4;
  }

  return (*(v5 + 8))(a1, v3);
}

uint64_t initializeWithCopy for Either(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = *(v5 - 8);
  if (*(v8 + 64) > v7)
  {
    v7 = *(v8 + 64);
  }

  v10 = a2[v7];
  if (v10 >= 2)
  {
    v11 = 4;
    if (v7 < 4)
    {
      v11 = v7;
    }

    switch(v11)
    {
      case 0:
        break;
      case 1:
        v12 = *a2;
        goto LABEL_11;
      case 2:
        v12 = *a2;
        goto LABEL_11;
      case 3:
        v12 = *a2 | (a2[2] << 16);
        goto LABEL_11;
      case 4:
        v12 = *a2;
LABEL_11:
        if (v7 < 4)
        {
          v12 |= (v10 - 2) << (8 * v7);
        }

        v10 = v12 + 2;
        break;
    }
  }

  if (v10 == 1)
  {
    v6 = *(v5 - 8);
    v4 = v5;
  }

  (*(v6 + 16))(a1, a2, v4);
  *(a1 + v7) = v10 == 1;
  return a1;
}

unsigned __int8 *assignWithCopy for Either(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *(a3 + 16);
    v5 = *(a3 + 24);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    v8 = *(v5 - 8);
    if (*(v8 + 64) > v7)
    {
      v7 = *(v8 + 64);
    }

    v9 = a1[v7];
    v10 = 4;
    if (v9 < 2)
    {
LABEL_8:
      v12 = a2;
    }

    else
    {
      v11 = v7;
      if (v7 >= 4)
      {
        v11 = 4;
      }

      switch(v11)
      {
        case 0:
          goto LABEL_8;
        case 1:
          v13 = *a1;
          break;
        case 2:
          v13 = *a1;
          break;
        case 3:
          v13 = *a1 | (a1[2] << 16);
          break;
        case 4:
          v13 = *a1;
          break;
      }

      v12 = a2;
      if (v7 < 4)
      {
        v13 |= (v9 - 2) << (8 * v7);
      }

      v10 = (v13 + 2);
      v9 = v10;
    }

    v14 = v9 == 1;
    v15 = *(v4 - 8);
    v24 = *(v5 - 8);
    if (v14)
    {
      v15 = *(v5 - 8);
    }

    v16 = v4;
    if (v14)
    {
      v16 = v5;
    }

    (*(v15 + 8))(a1, v16, v10);
    v17 = v12;
    v18 = v12[v7];
    if (v18 < 2)
    {
LABEL_24:
      v20 = v5;
      v21 = v24;
    }

    else
    {
      v19 = 4;
      if (v7 < 4)
      {
        v19 = v7;
      }

      switch(v19)
      {
        case 0:
          goto LABEL_24;
        case 1:
          v22 = *v17;
          break;
        case 2:
          v22 = *v17;
          break;
        case 3:
          v22 = *v17 | (v17[2] << 16);
          break;
        case 4:
          v22 = *v17;
          break;
      }

      v20 = v5;
      v21 = v24;
      if (v7 < 4)
      {
        v22 |= (v18 - 2) << (8 * v7);
      }

      v18 = v22 + 2;
    }

    if (v18 == 1)
    {
      v6 = v21;
      v4 = v20;
    }

    (*(v6 + 16))(a1, v17, v4);
    a1[v7] = v18 == 1;
  }

  return a1;
}

uint64_t initializeWithTake for Either(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = *(v5 - 8);
  if (*(v8 + 64) > v7)
  {
    v7 = *(v8 + 64);
  }

  v10 = a2[v7];
  if (v10 >= 2)
  {
    v11 = 4;
    if (v7 < 4)
    {
      v11 = v7;
    }

    switch(v11)
    {
      case 0:
        break;
      case 1:
        v12 = *a2;
        goto LABEL_11;
      case 2:
        v12 = *a2;
        goto LABEL_11;
      case 3:
        v12 = *a2 | (a2[2] << 16);
        goto LABEL_11;
      case 4:
        v12 = *a2;
LABEL_11:
        if (v7 < 4)
        {
          v12 |= (v10 - 2) << (8 * v7);
        }

        v10 = v12 + 2;
        break;
    }
  }

  if (v10 == 1)
  {
    v6 = *(v5 - 8);
    v4 = v5;
  }

  (*(v6 + 32))(a1, a2, v4);
  *(a1 + v7) = v10 == 1;
  return a1;
}

unsigned __int8 *assignWithTake for Either(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = *(a3 + 16);
    v5 = *(a3 + 24);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    v8 = *(v5 - 8);
    if (*(v8 + 64) > v7)
    {
      v7 = *(v8 + 64);
    }

    v9 = a1[v7];
    v10 = 4;
    if (v9 < 2)
    {
LABEL_8:
      v12 = a2;
    }

    else
    {
      v11 = v7;
      if (v7 >= 4)
      {
        v11 = 4;
      }

      switch(v11)
      {
        case 0:
          goto LABEL_8;
        case 1:
          v13 = *a1;
          break;
        case 2:
          v13 = *a1;
          break;
        case 3:
          v13 = *a1 | (a1[2] << 16);
          break;
        case 4:
          v13 = *a1;
          break;
      }

      v12 = a2;
      if (v7 < 4)
      {
        v13 |= (v9 - 2) << (8 * v7);
      }

      v10 = (v13 + 2);
      v9 = v10;
    }

    v14 = v9 == 1;
    v15 = *(v4 - 8);
    v24 = *(v5 - 8);
    if (v14)
    {
      v15 = *(v5 - 8);
    }

    v16 = v4;
    if (v14)
    {
      v16 = v5;
    }

    (*(v15 + 8))(a1, v16, v10);
    v17 = v12;
    v18 = v12[v7];
    if (v18 < 2)
    {
LABEL_24:
      v20 = v5;
      v21 = v24;
    }

    else
    {
      v19 = 4;
      if (v7 < 4)
      {
        v19 = v7;
      }

      switch(v19)
      {
        case 0:
          goto LABEL_24;
        case 1:
          v22 = *v17;
          break;
        case 2:
          v22 = *v17;
          break;
        case 3:
          v22 = *v17 | (v17[2] << 16);
          break;
        case 4:
          v22 = *v17;
          break;
      }

      v20 = v5;
      v21 = v24;
      if (v7 < 4)
      {
        v22 |= (v18 - 2) << (8 * v7);
      }

      v18 = v22 + 2;
    }

    if (v18 == 1)
    {
      v6 = v21;
      v4 = v20;
    }

    (*(v6 + 32))(a1, v17, v4);
    a1[v7] = v18 == 1;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for Either(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (*(*(*(a3 + 24) - 8) + 64) > v3)
  {
    v3 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  if ((v3 + 1) > 3)
  {
LABEL_6:
    v5 = a1[v4];
    goto LABEL_14;
  }

  v7 = ((~(-1 << (8 * v4)) + a2 - 254) >> (8 * v4)) + 1;
  if (v7 > 0xFFFF)
  {
    v5 = *&a1[v4];
  }

  else
  {
    if (v7 <= 0xFF)
    {
      if (v7 < 2)
      {
        goto LABEL_22;
      }

      goto LABEL_6;
    }

    v5 = *&a1[v4];
  }

LABEL_14:
  if (v5)
  {
    v8 = (v5 - 1) << (8 * v4);
    v9 = 0;
    if (v4 >= 4)
    {
      v8 = 0;
    }

    if (v4)
    {
      v10 = 4;
      if (v4 < 4)
      {
        v10 = v4;
      }

      switch(v10)
      {
        case 1:
          v9 = *a1;
          break;
        case 2:
          v9 = *a1;
          break;
        case 3:
          v9 = *a1 | (a1[2] << 16);
          break;
        case 4:
          v9 = *a1;
          break;
      }
    }

    return (v8 | v9) + 255;
  }

LABEL_22:
  v11 = a1[v3];
  result = 0;
  if (v11 >= 2)
  {
    return (v11 ^ 0xFF) + 1;
  }

  return result;
}

unint64_t storeEnumTagSinglePayload for Either(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  result = *(*(*(a4 + 16) - 8) + 64);
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 > result)
  {
    result = v5;
  }

  v6 = result + 1;
  v7 = 0;
  if (a3 >= 0xFF)
  {
    if (v6 > 3)
    {
      v12 = 1;
LABEL_11:
      v7 = v12;
      goto LABEL_12;
    }

    v8 = ((~(-1 << (8 * v6)) + a3 - 254) >> (8 * v6)) + 1;
    if (v8 > 0xFFFF)
    {
      v12 = 4;
      goto LABEL_11;
    }

    v7 = 0;
    if (v8 >= 2)
    {
      v7 = ((v8 | 0x200000000uLL) - 256) >> 32;
    }
  }

LABEL_12:
  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 >= 4)
    {
      v10 = 1;
      __bzero(a1, result + 1);
      *a1 = v9;
      result = v7;
      switch(v7)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_28;
        case 2u:
          goto LABEL_30;
        case 3u:
          goto LABEL_32;
        case 4u:
          goto LABEL_29;
      }
    }

    v10 = (v9 >> (8 * v6)) + 1;
    result = v7;
    if (v6)
    {
      v11 = v9 & ~(-1 << (8 * v6));
      __bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v11;
          result = v7;
          switch(v7)
          {
            case 0u:
              return result;
            case 1u:
              goto LABEL_28;
            case 2u:
              goto LABEL_30;
            case 3u:
              goto LABEL_32;
            case 4u:
              goto LABEL_29;
          }
        }

        *a1 = a2 + 1;
        result = v7;
        switch(v7)
        {
          case 0u:
            return result;
          case 1u:
            goto LABEL_28;
          case 2u:
            goto LABEL_30;
          case 3u:
            goto LABEL_32;
          case 4u:
            goto LABEL_29;
        }
      }

      *a1 = v11;
      *(a1 + 2) = BYTE2(v11);
      result = v7;
      switch(v7)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_28;
        case 2u:
          goto LABEL_30;
        case 3u:
          goto LABEL_32;
        case 4u:
          goto LABEL_29;
      }
    }

    switch(v7)
    {
      case 0u:
        return result;
      case 1u:
LABEL_28:
        *(a1 + v6) = v10;
        break;
      case 2u:
LABEL_30:
        *(a1 + v6) = v10;
        break;
      case 3u:
LABEL_32:
        BUG();
      case 4u:
LABEL_29:
        *(a1 + v6) = v10;
        break;
    }
  }

  else
  {
    switch(v7)
    {
      case 0u:
        goto LABEL_23;
      case 1u:
        *(a1 + v6) = 0;
        goto LABEL_23;
      case 2u:
        *(a1 + v6) = 0;
        goto LABEL_23;
      case 3u:
        goto LABEL_32;
      case 4u:
        *(a1 + v6) = 0;
LABEL_23:
        if (a2)
        {
          *(a1 + result) = -a2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for Either(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (*(*(*(a2 + 24) - 8) + 64) > v2)
  {
    v2 = *(*(*(a2 + 24) - 8) + 64);
  }

  result = a1[v2];
  if (result >= 2)
  {
    v4 = 4;
    if (v2 < 4)
    {
      v4 = v2;
    }

    switch(v4)
    {
      case 0:
        return result;
      case 1:
        v5 = *a1;
        goto LABEL_11;
      case 2:
        v5 = *a1;
        goto LABEL_11;
      case 3:
        v5 = *a1 | (a1[2] << 16);
        goto LABEL_11;
      case 4:
        v5 = *a1;
LABEL_11:
        if (v2 < 4)
        {
          v5 |= (result - 2) << (8 * v2);
        }

        result = (v5 + 2);
        break;
    }
  }

  return result;
}

unint64_t destructiveInjectEnumTag for Either(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 1)
  {
    v4 = *(a3 + 24);
    v5 = *(*(*(a3 + 16) - 8) + 64);
    if (*(*(v4 - 8) + 64) > v5)
    {
      v5 = *(*(v4 - 8) + 64);
    }

    v6 = a2 - 2;
    if (v5 < 4)
    {
      v7 = v6 & ~(-1 << (8 * v5));
      *(a1 + v5) = (v6 >> (8 * v5)) + 2;
      result = __bzero(a1, v5);
      if (v5 == 3)
      {
        *a1 = v7;
        *(a1 + 2) = BYTE2(v7);
      }

      else if (v5 == 2)
      {
        *a1 = v7;
      }

      else
      {
        *a1 = v7;
      }
    }

    else
    {
      *(a1 + v5) = 2;
      result = __bzero(a1, v5);
      *a1 = v6;
    }
  }

  else
  {
    result = *(*(*(a3 + 16) - 8) + 64);
    if (*(*(*(a3 + 24) - 8) + 64) > result)
    {
      result = *(*(*(a3 + 24) - 8) + 64);
    }

    *(a1 + result) = a2;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLActivityClassifier.Configuration(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 40) = a2[5];
    *(a1 + 48) = a2[6];
    *(a1 + 56) = a2[7];
    *(a1 + 64) = a2[8];
    *(a1 + 72) = a2[9];
    v5 = *(a3 + 44);
    __dst = (a1 + v5);
    v6 = a2 + v5;
    v7 = type metadata accessor for DataFrame(0);

    if (__swift_getEnumTagSinglePayload(v6, 1, v7))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(__dst, v6, *(*(v8 - 8) + 64));
    }

    else
    {
      (*(*(v7 - 8) + 16))(__dst, v6, v7);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v7);
    }

    v10 = *(a3 + 48);
    v11 = (a1 + v10);
    v12 = a2 + v10;
    if (__swift_getEnumTagSinglePayload(a2 + v10, 1, v7))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(v11, v12, *(*(v13 - 8) + 64));
    }

    else
    {
      (*(*(v7 - 8) + 16))(v11, v12, v7);
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v7);
    }
  }

  return v3;
}

uint64_t destroy for MLActivityClassifier.Configuration(void *a1, uint64_t a2)
{
  a1[5];
  a1[7];
  a1[9];
  v2 = a1 + *(a2 + 44);
  v3 = type metadata accessor for DataFrame(0);
  if (!__swift_getEnumTagSinglePayload(v2, 1, v3))
  {
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  v4 = a1 + *(a2 + 48);
  result = __swift_getEnumTagSinglePayload(v4, 1, v3);
  if (!result)
  {
    return (*(*(v3 - 8) + 8))(v4, v3);
  }

  return result;
}

uint64_t initializeWithCopy for MLActivityClassifier.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v3 = *(a3 + 44);
  __dst = (a1 + v3);
  v4 = (a2 + v3);
  v12 = type metadata accessor for DataFrame(0);

  if (__swift_getEnumTagSinglePayload(v4, 1, v12))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v4, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(*(v12 - 8) + 16))(__dst, v4, v12);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v12);
  }

  v6 = *(a3 + 48);
  v7 = (a1 + v6);
  v8 = (v6 + a2);
  if (__swift_getEnumTagSinglePayload(v6 + a2, 1, v12))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(*(v12 - 8) + 16))(v7, v8, v12);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
  }

  return a1;
}

uint64_t assignWithCopy for MLActivityClassifier.Configuration(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  v5;
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  v6;
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);

  v7;
  v25 = a3;
  v8 = a3[11];
  v9 = a1 + v8;
  v10 = (a2 + v8);
  v11 = type metadata accessor for DataFrame(0);
  __dst = v9;
  LODWORD(v9) = __swift_getEnumTagSinglePayload(v9, 1, v11);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (v9)
  {
    if (EnumTagSinglePayload)
    {
      v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v14 = __dst;
LABEL_6:
      memcpy(v14, v10, v13);
      goto LABEL_9;
    }

    (*(*(v11 - 8) + 16))(__dst, v10, v11);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v11);
  }

  else
  {
    v15 = *(v11 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v15 + 8))(__dst, v11);
      v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v14 = __dst;
      goto LABEL_6;
    }

    (*(v15 + 24))(__dst, v10, v11);
  }

LABEL_9:
  v16 = v25[12];
  v17 = (v16 + a2);
  v26 = (a1 + v16);
  v18 = __swift_getEnumTagSinglePayload(a1 + v16, 1, v11);
  v19 = __swift_getEnumTagSinglePayload(v17, 1, v11);
  if (v18)
  {
    if (!v19)
    {
      (*(*(v11 - 8) + 16))(v26, v17, v11);
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v11);
      return a1;
    }

    v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
    v21 = v26;
  }

  else
  {
    v22 = *(v11 - 8);
    if (!v19)
    {
      (*(v22 + 24))(v26, v17, v11);
      return a1;
    }

    (*(v22 + 8))(v26, v11);
    v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
    v21 = v26;
  }

  memcpy(v21, v17, v20);
  return a1;
}

uint64_t initializeWithTake for MLActivityClassifier.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  v3 = *(a3 + 44);
  v4 = (a1 + v3);
  v5 = (a2 + v3);
  v6 = type metadata accessor for DataFrame(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v4, v5, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(v4, v5, v6);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
  }

  v8 = *(a3 + 48);
  v9 = (a1 + v8);
  v10 = (v8 + a2);
  if (__swift_getEnumTagSinglePayload(v8 + a2, 1, v6))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v9, v10, *(*(v11 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(v9, v10, v6);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithTake for MLActivityClassifier.Configuration(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  v5;
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  v6;
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  v7;
  v25 = a3;
  v8 = a3[11];
  v9 = a1 + v8;
  v10 = (a2 + v8);
  v11 = type metadata accessor for DataFrame(0);
  __dst = v9;
  LODWORD(v9) = __swift_getEnumTagSinglePayload(v9, 1, v11);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (v9)
  {
    if (EnumTagSinglePayload)
    {
      v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v14 = __dst;
LABEL_6:
      memcpy(v14, v10, v13);
      goto LABEL_9;
    }

    (*(*(v11 - 8) + 32))(__dst, v10, v11);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v11);
  }

  else
  {
    v15 = *(v11 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v15 + 8))(__dst, v11);
      v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v14 = __dst;
      goto LABEL_6;
    }

    (*(v15 + 40))(__dst, v10, v11);
  }

LABEL_9:
  v16 = v25[12];
  v17 = (v16 + a2);
  v26 = (a1 + v16);
  v18 = __swift_getEnumTagSinglePayload(a1 + v16, 1, v11);
  v19 = __swift_getEnumTagSinglePayload(v17, 1, v11);
  if (v18)
  {
    if (!v19)
    {
      (*(*(v11 - 8) + 32))(v26, v17, v11);
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v11);
      return a1;
    }

    v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
    v21 = v26;
  }

  else
  {
    v22 = *(v11 - 8);
    if (!v19)
    {
      (*(v22 + 40))(v26, v17, v11);
      return a1;
    }

    (*(v22 + 8))(v26, v11);
    v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
    v21 = v26;
  }

  memcpy(v21, v17, v20);
  return a1;
}

uint64_t sub_152508(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*(a1 + 40) & 0xFFFFFFFF00000001) == 0)
    {
      return (*(a1 + 40) >> 1) + 1;
    }
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    return __swift_getEnumTagSinglePayload(*(a3 + 44) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_152586(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 40) = 2 * (a2 - 1);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    return __swift_storeEnumTagSinglePayload(*(a4 + 44) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for MLActivityClassifier.Configuration(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLActivityClassifier.Configuration;
  if (!type metadata singleton initialization cache for MLActivityClassifier.Configuration)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLActivityClassifier.Configuration);
  }

  return result;
}

uint64_t type metadata completion function for MLActivityClassifier.Configuration(uint64_t a1)
{
  v3[0] = &value witness table for Builtin.Int64 + 64;
  v3[1] = "\t";
  v3[2] = &value witness table for Builtin.Int64 + 64;
  v3[3] = &value witness table for Builtin.Int64 + 64;
  v3[4] = &value witness table for Builtin.BridgeObject + 64;
  v3[5] = &unk_343148;
  v3[6] = &unk_343148;
  result = type metadata accessor for DataFrame?(319);
  if (v2 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    v5 = v4;
    swift_initStructMetadata(a1, 256, 9, v3, a1 + 16);
    return 0;
  }

  return result;
}

MLModel __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> NLModel.asCoreML()()
{
  v54 = v0;
  v65 = type metadata accessor for UUID(0);
  v55 = *(v65 - 1);
  v1 = *(v55 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v56 = &v53;
  v4 = type metadata accessor for URL(0);
  v60 = *(v4 - 1);
  v5 = *(v60 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v57 = &v53;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v61 = &v53;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v12 = alloca(v5);
  v13 = alloca(v5);
  v66 = &v53;
  v14 = alloca(v5);
  v15 = alloca(v5);
  v63 = &v53;
  v16 = objc_opt_self(NSFileManager);
  v17 = [v16 defaultManager];
  v64 = v17;
  NSFileManager.createTemporaryModelDirectory()();
  if (v18)
  {

    return v4;
  }

  v59 = 0;
  NSFileManager.temporaryModelDirectory.getter();
  v19 = v56;
  UUID.init()();
  v58 = UUID.uuidString.getter();
  v62 = v4;
  v21 = v20;
  (*(v55 + 8))(v19, v65);
  URL.appendingPathComponent(_:)(v58, v21);
  v21;
  URL.appendingPathExtension(_:)(0x6C65646F6D6C6DLL, 0xE700000000000000);
  v22 = *(v60 + 8);
  v23 = v22(&v53, v62);
  URL._bridgeToObjectiveC()(v23);
  v25 = v24;
  v26 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for AnyHashable, &type metadata for Any + 8, &protocol witness table for AnyHashable);
  v67 = 0;
  v27 = outlined bridged method (mnbnnn) of @objc NLModel.writeMLModel(to:options:)(v25, v26, &v67, v54);

  v28 = v67;
  if (!v27)
  {
    v44 = v67;
    _convertNSErrorToError(_:)(v28);

    swift_willThrow();
    v45 = v66;
    v4 = v62;
    v46 = v62;
LABEL_9:
    v22(v45, v46);
    v22(v63, v4);
    return v4;
  }

  v65 = v22;
  v29 = objc_opt_self(MLModel);
  v30 = v28;
  URL._bridgeToObjectiveC()(v30);
  v32 = v31;
  v67 = 0;
  v33 = [v29 compileModelAtURL:v31 error:&v67];
  v34 = v33;

  v35 = v67;
  if (!v34)
  {
    v47 = v67;
    _convertNSErrorToError(_:)(v35);

    swift_willThrow();
    v48 = v64;
    v49 = v66;
    $defer #1 () in NLModel.asCoreML()(v64);

    v45 = v49;
    v4 = v62;
    v46 = v62;
    v22 = v65;
    goto LABEL_9;
  }

  v36 = v61;
  static URL._unconditionallyBridgeFromObjectiveC(_:)(v34);
  v35;

  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for MLModel, MLModel_ptr);
  v37 = v57;
  v38 = v62;
  (*(v60 + 16))(v57, v36, v62);
  v39 = v59;
  v40 = @nonobjc MLModel.__allocating_init(contentsOf:)(v37);
  if (v39)
  {
    (v65)(v61, v38);
    v41 = v64;
    v42 = v66;
    $defer #1 () in NLModel.asCoreML()(v64);

    v43 = v42;
    v4 = v65;
    (v65)(v43, v38);
    (v4)(v63, v38);
  }

  else
  {
    v4 = v40;
    (v65)(v61, v38);
    v51 = v64;
    $defer #1 () in NLModel.asCoreML()(v64);

    v52 = v65;
    (v65)(v66, v38);
    v52(v63, v38);
  }

  return v4;
}

NSURL *NLModel.write(to:defaultName:metadata:)(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4)
{
  v13 = v4;
  v15 = v5;
  v16 = a4;
  v14 = a3;
  v6 = type metadata accessor for URL(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v17 = v12;
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(a1, a2, v14, 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v4)
  {
    qmemcpy(v12, v16, sizeof(v12));
    NLModel.writeModel(to:metadata:)(v17, v12);
    return (*(v7 + 8))(v17, v6);
  }

  return result;
}

uint64_t NLModel.write(toFile:defaultName:metadata:)(Swift::String string, void *a2, void *a3, const void *a4)
{
  v14 = v4;
  v16 = v5;
  v17 = a4;
  v15 = a3;
  stringa = string._object;
  v7 = type metadata accessor for URL(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v19 = &v14;
  v12 = v15;
  stringa = a2;
  result = static _ValidationUtilities.validateWriteLocation(atPath:defaultName:)(string, a2, v15);
  if (!v4)
  {
    NLModel.write(to:defaultName:metadata:)(v19, stringa, v12, v17);
    return (*(v8 + 8))(v19, v7);
  }

  return result;
}

NSURL *$defer #1 () in NLModel.asCoreML()(id a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v2 = v1;
  v8 = 0;
  v3 = [a1 removeItemAtURL:v1 error:&v8];

  v4 = v8;
  if (v3)
  {
    return v8;
  }

  v6 = v8;
  v7 = _convertNSErrorToError(_:)(v4);

  swift_willThrow();
  v7;
  return __stack_chk_guard;
}

NSURL *NLModel.writeModel(to:metadata:)(uint64_t a1, uint64_t a2)
{
  v17 = v2;
  v3 = __stack_chk_guard;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *a2;
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NLModel, NLModel_ptr);
    v18[0] = v5;
    v18[1] = v4;
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    v19 = *(a2 + 16);
    v20 = v6;
    v21 = v7;
    v22 = *(a2 + 64);
    v3 = static NLModel.buildMetadataOptions(_:)(v18);
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  URL._bridgeToObjectiveC()(v3);
  v10 = v9;
  if (v8)
  {
    v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v8;
  }

  else
  {
    v11.super.isa = 0;
  }

  v18[0] = 0;
  v12 = v10;
  v13 = [v17 writeMLModelToURL:v10 options:v11.super.isa error:v18];

  v14 = v18[0];
  if (v13)
  {
    v18[0];
  }

  else
  {
    v16 = v18[0];
    _convertNSErrorToError(_:)(v14);

    swift_willThrow();
  }

  return __stack_chk_guard;
}

void *static NLModel.buildMetadataOptions(_:)(uint64_t a1)
{
  v23 = *a1;
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v25 = *(a1 + 32);
  v22 = *(a1 + 40);
  v24 = *(a1 + 48);
  v21 = *(a1 + 64);
  *&v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(MLModelDescriptionKey);
  v26 = v3;
  AnyHashable.init<A>(_:)(&v26, &type metadata for String, &protocol witness table for String);
  v27 = &type metadata for String;
  *&v26 = v1;
  *(&v26 + 1) = v2;
  outlined init with take of Any(&v26, v20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
  v28 = _swiftEmptyDictionarySingleton;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v19, isUniquelyReferenced_nonNull_native);
  v5 = v28;
  outlined destroy of AnyHashable(v19);
  *&v6 = static String._unconditionallyBridgeFromObjectiveC(_:)(MLModelVersionStringKey);
  v26 = v6;
  AnyHashable.init<A>(_:)(&v26, &type metadata for String, &protocol witness table for String);
  v27 = &type metadata for String;
  v26 = v24;
  outlined init with take of Any(&v26, v20);

  v7 = swift_isUniquelyReferenced_nonNull_native(v5);
  v28 = v5;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v19, v7);
  v8 = v28;
  outlined destroy of AnyHashable(v19);
  *&v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(MLModelAuthorKey);
  v26 = v9;
  AnyHashable.init<A>(_:)(&v26, &type metadata for String, &protocol witness table for String);
  v27 = &type metadata for String;
  v26 = v23;
  outlined init with take of Any(&v26, v20);

  v10 = swift_isUniquelyReferenced_nonNull_native(v8);
  v28 = v8;
  v11 = v22;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v19, v10);
  v12 = v28;
  outlined destroy of AnyHashable(v19);
  if (v11)
  {
    *&v13 = static String._unconditionallyBridgeFromObjectiveC(_:)(MLModelLicenseKey);
    v26 = v13;

    AnyHashable.init<A>(_:)(&v26, &type metadata for String, &protocol witness table for String);
    v27 = &type metadata for String;
    *&v26 = v25;
    *(&v26 + 1) = v11;
    outlined init with take of Any(&v26, v20);
    v14 = swift_isUniquelyReferenced_nonNull_native(v12);
    v28 = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v19, v14);
    v12 = v28;
    outlined destroy of AnyHashable(v19);
  }

  v15 = v21;
  if (v21)
  {
    *&v16 = static String._unconditionallyBridgeFromObjectiveC(_:)(MLModelCreatorDefinedKey);
    v26 = v16;

    AnyHashable.init<A>(_:)(&v26, &type metadata for String, &protocol witness table for String);
    v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : String]);
    *&v26 = v15;
    outlined init with take of Any(&v26, v20);
    v17 = swift_isUniquelyReferenced_nonNull_native(v12);
    v28 = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v19, v17);
    v12 = v28;
    outlined destroy of AnyHashable(v19);
  }

  return v12;
}

uint64_t outlined bridged method (mnbnnn) of @objc NLModel.writeMLModel(to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a2;
  LODWORD(a4) = [a4 writeMLModelToURL:a1 options:isa error:a3];

  return a4;
}

uint64_t *specialized OptionSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  *result = a2 & a1;
  return result;
}

{
  return specialized OptionSet.intersection(_:)(a1, a2);
}

BOOL specialized OptionSet<>.insert(_:)(void *a1, uint64_t a2)
{
  v3 = a2 & *v2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  result = v3 != a2;
  *a1 = a2;
  return result;
}

{
  return specialized OptionSet<>.insert(_:)(a1, a2);
}

void specialized OptionSet<>.formUnion(_:)(uint64_t a1)
{
  *v1 |= a1;
}

{
  specialized OptionSet<>.formUnion(_:)(a1);
}

void specialized OptionSet<>.formIntersection(_:)(uint64_t a1)
{
  *v1 &= a1;
}

{
  specialized OptionSet<>.formIntersection(_:)(a1);
}

uint64_t static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = v3;
  v5 = *(a1 + 8);
  v38 = *a1;
  v39 = v5;
  v36 = a2;
  v6._countAndFlagsBits = a2;
  *&v34 = a3;
  v6._object = a3;
  MLDataTable.subscript.getter(v6);
  if (LOBYTE(v37._object) == 1)
  {
    outlined consume of Result<_DataTable, Error>(v37._countAndFlagsBits, 1);
  }

  else
  {

    _UntypedColumn.type.getter();
    outlined consume of Result<_DataTable, Error>(v37._countAndFlagsBits, 0);
    outlined consume of Result<_DataTable, Error>(v37._countAndFlagsBits, 0);
    if (v38 == 3)
    {
      v7 = *(a1 + 8);
      v37._countAndFlagsBits = *a1;
      LOBYTE(v37._object) = v7;
      v8._countAndFlagsBits = v36;
      v8._object = v34;
      MLDataTable.subscript.getter(v8);
      specialized MLUntypedColumn.map<A>(skipUndefined:_:)(1, partial apply for closure #1 in static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:), 0, v38, v39);
      outlined consume of Result<_DataTable, Error>(v38, v39);
      countAndFlagsBits = v37._countAndFlagsBits;
      LOBYTE(v40) = v37._object;
      v9 = *(a1 + 8);
      v38 = *a1;
      v39 = v9;
      v8._countAndFlagsBits = v36;
      v8._object = v34;
      MLDataTable.subscript.getter(v8);
      v10 = -1;
      v33 = -1;
      if (!LOBYTE(v37._object))
      {

        v10 = CMLColumn.size.getter();
        outlined consume of Result<_DataTable, Error>(v37._countAndFlagsBits, 0);
      }

      outlined consume of Result<_DataTable, Error>(v37._countAndFlagsBits, v37._object);
      v40 = v40;
      specialized MLDataColumn.dropMissing()(countAndFlagsBits, v40);
      if (!v39)
      {
        v32 = v10;
        outlined copy of Result<_DataTable, Error>(v38, 0);
        v33 = CMLColumn.size.getter();
        outlined consume of Result<_DataTable, Error>(v38, 0);
      }

      outlined consume of Result<_DataTable, Error>(v38, v39);
      v11 = __OFSUB__(v10, v33);
      v12 = v10 - v33;
      if (v11)
      {
        BUG();
      }

      if (v12)
      {
        v37._countAndFlagsBits = 0;
        v37._object = 0xE000000000000000;
        _StringGuts.grow(_:)(236);
        v13._object = "validation_confusion" + 0x8000000000000000;
        v13._countAndFlagsBits = 0xD00000000000003DLL;
        String.append(_:)(v13);
        v14 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v16 = v15;
        v13._countAndFlagsBits = v14;
        v13._object = v15;
        String.append(_:)(v13);
        v16;
        v13._object = "mn into MLMultiArray format. " + 0x8000000000000000;
        v13._countAndFlagsBits = 0xD00000000000006BLL;
        String.append(_:)(v13);
        v17 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v19 = v18;
        v13._countAndFlagsBits = v17;
        v13._object = v18;
        String.append(_:)(v13);
        v19;
        v13._object = 0xE200000000000000;
        v13._countAndFlagsBits = 8236;
        String.append(_:)(v13);
        v38 = 18;
        v20 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v22 = v21;
        v13._countAndFlagsBits = v20;
        v13._object = v21;
        String.append(_:)(v13);
        v22;
        v13._object = "ld have a dimension of [1, " + 0x8000000000000000;
        v13._countAndFlagsBits = 0xD00000000000003CLL;
        String.append(_:)(v13);
        v23 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v23, 0, 0);
        *v24 = v37;
        *(v24 + 16) = 0;
        *(v24 + 32) = 0;
        *(v24 + 48) = 0;
        swift_willThrow();
        return outlined consume of Result<_DataTable, Error>(countAndFlagsBits, v40);
      }

      specialized MLDataTable.subscript.setter(countAndFlagsBits, v40, v36, v34);
    }
  }

  v27 = *(a1 + 8);
  v37._countAndFlagsBits = *a1;
  v26 = v37._countAndFlagsBits;
  LOBYTE(v37._object) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v28, v30);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = v36;
  inited[5] = v34;
  LOBYTE(v38) = 5;

  outlined copy of Result<_DataTable, Error>(v26, v27);
  static _ValidationUtilities.validateTableTypes(table:columns:type:)(&v37, inited, &v38);
  outlined consume of Result<_DataTable, Error>(v37._countAndFlagsBits, v37._object);
  swift_setDeallocating(inited);
  return specialized _ContiguousArrayStorage.__deallocating_deinit();
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger(0);
  __swift_allocate_value_buffer(v0, static MLActionClassifier.logger);
  __swift_project_value_buffer(v0, static MLActionClassifier.logger);
  return Logger.init(subsystem:category:)(0xD000000000000012, ("Target Frame Rate" + 0x8000000000000000), 0xD000000000000012, (&unk_343200 + 0x8000000000000000));
}

{
  v0 = type metadata accessor for Logger(0);
  __swift_allocate_value_buffer(v0, static MLHandActionClassifier.logger);
  __swift_project_value_buffer(v0, static MLHandActionClassifier.logger);
  return Logger.init(subsystem:category:)(0xD000000000000012, ("Target Frame Rate" + 0x8000000000000000), 0xD000000000000016, (&property descriptor for MLHandActionClassifier.modelParameters + 0x8000000000000000));
}

uint64_t static MLActionClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLActionClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLActionClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLActionClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 20), v2, type metadata accessor for MLActionClassifier.ModelParameters);
}

uint64_t type metadata accessor for MLActionClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLActionClassifier;
  if (!type metadata singleton initialization cache for MLActionClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLActionClassifier);
  }

  return result;
}

uint64_t MLActionClassifier.Prediction.results.setter(uint64_t a1)
{
  result = *(v1 + 16);
  *(v1 + 16) = a1;
  return result;
}

uint64_t MLActionClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, __m128 a3)
{
  v52 = v4;
  v36[1] = v3;
  v50 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  v38 = *(v50 - 8);
  v37 = *(v38 + 64);
  v5 = alloca(v37);
  v6 = alloca(v37);
  v41 = v36;
  v7 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v45 = v36;
  v11 = *(*(type metadata accessor for MLActionClassifier.DataSource(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v39 = v36;
  v14 = v52;
  MLActionClassifier.ModelParameters.ValidationData.extractAnnotations(trainingData:)(&v53, &v42, a3);
  if (v14)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a2, type metadata accessor for MLActionClassifier.ModelParameters);
    return outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLActionClassifier.DataSource);
  }

  v40 = v7;
  v49 = a2;
  v52 = 0;
  v46 = a1;
  v16 = v53;
  v47 = v42;
  v56 = v43;
  v17 = v54;
  if (v54 == 0xFF)
  {
    v48 = v53;
    MLActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(0x403E000000000000uLL);
    v19 = v53;
    v55 = v54;
  }

  else
  {
    type metadata accessor for MLActionClassifier.FeatureExtractor();
    v42 = v16;
    v43 = v17 & 1;
    v48 = *(v49 + *(v50 + 40));
    outlined copy of Result<_DataTable, Error>(v16, v17);
    v18 = v52;
    static MLActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:)(&v42, *&v48);
    if (v18)
    {
      outlined consume of MLDataTable?(v47, v56);
      outlined consume of MLDataTable?(v16, v17);
      outlined destroy of MLActivityClassifier.ModelParameters(v49, type metadata accessor for MLActionClassifier.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLActionClassifier.DataSource);
      return outlined consume of MLDataTable?(v16, v17);
    }

    v48 = v16;
    outlined consume of MLDataTable?(v16, v17);
    v19 = v53;
    v55 = v54;
  }

  v51 = v17;
  v20 = v56;
  v44 = v19;
  v21 = v50;
  if (v56 == -1)
  {
    v22 = v45;
    outlined init with copy of MLTrainingSessionParameters(v49, v45, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(v22, v40) != 1)
    {
      v52 = 0;
      outlined destroy of MLActivityClassifier.ModelParameters(v22, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v25 = empty;
      v45 = 0;
      v26 = type metadata accessor for CMLTable();
      v27 = swift_allocObject(v26, 24, 7);
      *(v27 + 16) = v25;
      v28 = type metadata accessor for _DataTable();
      swift_allocObject(v28, 40, 7);
      v50 = _DataTable.init(impl:)(v27);
      goto LABEL_15;
    }

    v23 = v39;
    outlined init with take of MLClassifierMetrics(v22, v39, type metadata accessor for MLActionClassifier.DataSource);
    MLActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(0x403E000000000000uLL);
    v52 = 0;
    outlined destroy of MLActivityClassifier.ModelParameters(v23, type metadata accessor for MLActionClassifier.DataSource);
  }

  else
  {
    type metadata accessor for MLActionClassifier.FeatureExtractor();
    v42 = v47;
    v43 = v20 & 1;
    static MLActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:)(&v42, *(v49 + *(v21 + 40)));
    v52 = 0;
  }

  v29 = v53;
  v50 = v53;
  LOBYTE(v29) = v54;
  v45 = v29;
LABEL_15:
  outlined init with copy of MLTrainingSessionParameters(v49, v41, type metadata accessor for MLActionClassifier.ModelParameters);
  v30 = *(v38 + 80);
  v31 = ~*(v38 + 80) & (v30 + 41);
  v32 = swift_allocObject(&unk_392078, v31 + v37, v30 | 7);
  v33 = v44;
  *(v32 + 16) = v44;
  v34 = v55;
  *(v32 + 24) = v55 & 1;
  *(v32 + 32) = v50;
  *(v32 + 40) = v45 & 1;
  outlined init with take of MLClassifierMetrics(v41, v32 + v31, type metadata accessor for MLActionClassifier.ModelParameters);
  outlined copy of Result<_DataTable, Error>(v33, v34);
  LOBYTE(v31) = v45;
  outlined copy of Result<_DataTable, Error>(v50, v45);
  v35 = v52;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLActionClassifier.init(trainingData:parameters:), v32);
  v52 = v35;

  outlined consume of MLDataTable?(v47, v56);
  outlined consume of MLDataTable?(v48, v51);
  outlined consume of Result<_DataTable, Error>(v50, v31);
  outlined consume of Result<_DataTable, Error>(v44, v34);
  outlined destroy of MLActivityClassifier.ModelParameters(v49, type metadata accessor for MLActionClassifier.ModelParameters);
  return outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLActionClassifier.DataSource);
}

uint64_t closure #1 in MLActionClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 72) = a6;
  *(v6 + 26) = a5;
  *(v6 + 64) = a4;
  *(v6 + 25) = a3;
  *(v6 + 56) = a2;
  *(v6 + 48) = a1;
  v10 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  *(v6 + 80) = swift_task_alloc((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined copy of Result<_DataTable, Error>(a2, a3);
  outlined copy of Result<_DataTable, Error>(a4, a5);
  return swift_task_switch(closure #1 in MLActionClassifier.init(trainingData:parameters:), 0, 0);
}

uint64_t closure #1 in MLActionClassifier.init(trainingData:parameters:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  v3 = *(v0 + 25);
  v4 = *(v0 + 26);
  v5 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = v3 & 1;
  *(v0 + 32) = v5;
  *(v0 + 40) = v4 & 1;
  outlined init with copy of MLTrainingSessionParameters(v2, v1, type metadata accessor for MLActionClassifier.ModelParameters);
  v6 = swift_task_alloc(96);
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLHandPoseClassifier.init(trainingData:parameters:);
  return MLActionClassifier.init(trainingFeatures:validationFeatures:parameters:)(*(v0 + 48), v0 + 16, v0 + 32, *(v0 + 80));
}

uint64_t MLActionClassifier.init(trainingFeatures:validationFeatures:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  *(v4 + 16) = a1;
  *(v4 + 32) = *a2;
  *(v4 + 84) = *(a2 + 8);
  *(v4 + 40) = *a3;
  *(v4 + 85) = *(a3 + 8);
  return swift_task_switch(MLActionClassifier.init(trainingFeatures:validationFeatures:parameters:), 0, 0);
}

uint64_t MLActionClassifier.init(trainingFeatures:validationFeatures:parameters:)()
{
  v19 = v0 | 0x1000000000000000;
  v18 = v1;
  v2 = *(v1 + 85);
  v3 = *(v1 + 40);
  v4 = *(v1 + 84);
  v5 = *(v1 + 24);
  v16 = *(v1 + 32);
  v17 = v4;
  v14 = v3;
  v15 = v2;
  v6 = static MLActionClassifier.convertParameters(_:trainingFeatures:validationFeatures:)(v5, &v16, &v14);
  *(v1 + 48) = v6;
  v7 = v6;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  outlined consume of Result<_DataTable, Error>(*(v1 + 40), *(v1 + 85));
  v10 = *(type metadata accessor for MLActionClassifier(0) + 20);
  *(v1 + 80) = v10;
  outlined init with copy of MLTrainingSessionParameters(v9, v10 + v8, type metadata accessor for MLActionClassifier.ModelParameters);
  v11 = type metadata accessor for _Model();
  swift_allocObject(v11, 48, 7);

  v12 = swift_task_alloc(112);
  *(v1 + 56) = v12;
  *v12 = v1;
  v12[1] = MLActionClassifier.init(trainingFeatures:validationFeatures:parameters:);
  return _Model.init(type:parameters:modelOptions:)(22, v7, 0);
}

{
  **(v0 + 16) = *(v0 + 72);
  if (AnalyticsReporter.init()())
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 84);
    outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 24), type metadata accessor for MLActionClassifier.ModelParameters);

    outlined consume of Result<_DataTable, Error>(v1, v2);
  }

  else
  {
    v3 = *(v0 + 84);
    v4 = *(v0 + 32);
    outlined copy of Result<_DataTable, Error>(v4, v3);
    v16 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v4, v3 & 1);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_actionClassifier, __PAIR128__(("nClassifier.swift" + 0x8000000000000000), 0xD000000000000010), v16);
    v15 = v3 & 1;
    v5._countAndFlagsBits = 0x6C6562616CLL;
    v5._object = 0xE500000000000000;
    MLDataTable.subscript.getter(v5);
    outlined consume of Result<_DataTable, Error>(v4, v15);
    MLUntypedColumn.dropDuplicates()();
    outlined consume of Result<_DataTable, Error>(v11, v12);
    if (v14)
    {
      outlined consume of Result<_DataTable, Error>(v13, 1);
      v6 = -1.0;
    }

    else
    {

      v7 = CMLColumn.size.getter();
      outlined consume of Result<_DataTable, Error>(v13, 0);
      outlined consume of Result<_DataTable, Error>(v13, 0);
      v6 = v7;
    }

    v8 = *(v0 + 24);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_actionClassifier, __PAIR128__(("Number of Annotations" + 0x8000000000000000), 0xD000000000000010), v6);
    v9 = type metadata accessor for MLActionClassifier.ModelParameters(0);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_actionClassifier, __PAIR128__(0xEE00736E6F697461, 0x726574492078614DLL), *(v8 + v9[6]));
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_actionClassifier, __PAIR128__(("Number of Labels" + 0x8000000000000000), 0xD000000000000016), *(v8 + v9[7]));
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_actionClassifier, __PAIR128__(0xEA0000000000657ALL, 0x6953206863746142), *(v8 + v9[5]));

    outlined destroy of MLActivityClassifier.ModelParameters(v8, type metadata accessor for MLActionClassifier.ModelParameters);
  }

  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + *(v0 + 80);

  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLActionClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLActionClassifier.ModelParameters);
  return (*(v0 + 8))();
}

uint64_t MLActionClassifier.init(trainingFeatures:validationFeatures:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 56);
  v4 = *v2;
  *(*v2 + 64) = v1;
  v5;
  if (v1)
  {
    outlined consume of Result<_DataTable, Error>(*(v4 + 32), *(v4 + 84));
    v6 = MLActionClassifier.init(trainingFeatures:validationFeatures:parameters:);
  }

  else
  {
    *(v4 + 72) = a1;
    v6 = MLActionClassifier.init(trainingFeatures:validationFeatures:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t static MLActionClassifier.convertParameters(_:trainingFeatures:validationFeatures:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = v3;
  v39 = a1;
  v37 = type metadata accessor for _Model.Parameters(0);
  v5 = *(*(v37 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v34 = &v32;
  v41 = *a2;
  v8 = *(a2 + 8);
  v38 = *a3;
  v9 = *(a3 + 8);
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v11 = empty;
  v12 = type metadata accessor for CMLParameters();
  v13 = swift_allocObject(v12, 24, 7);
  *(v13 + 16) = v11;
  v14 = v13;
  v35 = v41;
  v36 = v8 & 1;
  v15 = v40;
  CMLParameters.setTraining(table:)(&v35);
  if (v15)
  {
  }

  else
  {
    v35 = v38;
    v36 = v9 & 1;
    CMLParameters.setValidation(table:)(&v35);
    v17 = v14;
    v40 = type metadata accessor for CMLFeatureValue();
    v18 = CMLFeatureValue.__allocating_init(_:)(0x6C6562616CLL, 0xE500000000000000);
    CMLParameters.add(key:featureValue:)(75, v18);

    v19 = CMLFeatureValue.__allocating_init(_:)(0x746E696F7079656BLL, 0xE900000000000073);
    CMLParameters.add(key:featureValue:)(73, v19);

    v20 = CMLFeatureValue.__allocating_init(_:)(0x5F6E6F6973736573, 0xEA00000000006469);
    CMLParameters.add(key:featureValue:)(74, v20);

    v21 = tc_v1_flex_dict_create(0);
    if (!v21)
    {
      BUG();
    }

    v22 = v21;
    v23 = type metadata accessor for CMLDictionary();
    inited = swift_initStackObject(v23, v33);
    *(inited + 16) = v22;
    v41 = inited;
    v25 = type metadata accessor for MLActionClassifier.ModelParameters(0);
    v26 = *(v25 + 32);
    v38 = v25;
    v35 = *(v39 + v26);
    MLActionClassifier.VideoAugmentationOptions.setOptions(in:)();
    v27 = *(v39 + *(v25 + 24));
    v28 = v34;
    *v34 = v27;
    swift_storeEnumTagMultiPayload(v28, v37, 0);
    CMLDictionary.add(_:)(v28);
    outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for _Model.Parameters);
    *v28 = *(v39 + *(v38 + 20));
    swift_storeEnumTagMultiPayload(v28, v37, 1);
    CMLDictionary.add(_:)(v28);
    outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for _Model.Parameters);
    *v28 = *(v39 + *(v38 + 28));
    swift_storeEnumTagMultiPayload(v28, v37, 23);
    CMLDictionary.add(_:)(v28);
    outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for _Model.Parameters);
    v29 = v41;

    v30 = CMLFeatureValue.__allocating_init(_:)(v29);
    v14 = v17;
    CMLParameters.add(key:featureValue:)(47, v30);

    v31 = v41;
    swift_setDeallocating(v41);
    tc_v1_release(*(v31 + 16));
  }

  return v14;
}

uint64_t MLActionClassifier.init(model:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  v4 = type metadata accessor for _Model();
  swift_allocObject(v4, 48, 7);

  v5 = swift_task_alloc(80);
  v3[5] = v5;
  *v5 = v3;
  v5[1] = MLActionClassifier.init(model:parameters:);
  return _Model.init(impl:)(a2);
}

uint64_t MLActionClassifier.init(model:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 40);
  v4 = *v2;
  *(*v2 + 48) = v1;
  v5;
  if (v1)
  {
    v6 = MLActionClassifier.init(model:parameters:);
  }

  else
  {
    *(v4 + 56) = a1;
    v6 = MLActionClassifier.init(model:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLActionClassifier.init(model:parameters:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  *v3 = v1;
  v4 = type metadata accessor for MLActionClassifier(0);
  outlined init with take of MLClassifierMetrics(v2, v3 + *(v4 + 20), type metadata accessor for MLActionClassifier.ModelParameters);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 32);

  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLActionClassifier.ModelParameters);
  return (*(v0 + 8))();
}

uint64_t MLActionClassifier.init(checkpoint:)(uint64_t a1)
{
  v18 = v1;
  v3 = *(type metadata accessor for MLCheckpoint(0) - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v19 = a1;
  outlined init with copy of MLTrainingSessionParameters(a1, &v17, type metadata accessor for MLCheckpoint);
  v7 = *(v3 + 80);
  v8 = ~*(v3 + 80) & (v7 + 16);
  v9 = swift_allocObject(&unk_3920A0, v8 + v4, v7 | 7);
  outlined init with take of MLClassifierMetrics(&v17, v9 + v8, type metadata accessor for MLCheckpoint);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLActionClassifier.init(checkpoint:), v9);
  if (v2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
  }

  else
  {
    v12 = v10;

    v13 = v18;
    *v18 = v12;
    v14 = v13 + *(type metadata accessor for MLActionClassifier(0) + 20);
    *v14 = 0;
    *(v14 + 16) = 256;
    v15 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    swift_storeEnumTagMultiPayload(v14, v15, 0);
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLCheckpoint);
    v16 = type metadata accessor for MLActionClassifier.ModelParameters(0);
    *(v16[5] + v14) = 32;
    *(v16[6] + v14) = 80;
    *(v16[7] + v14) = 30;
    *(v16[8] + v14) = 1;
    result = v16[10];
    *(result + v14) = 0x403E000000000000;
  }

  return result;
}

void *static MLActionClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static MLActionClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(a1, a2, a3);
  if (!v3)
  {
    v5 = result;
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLActionClassifier>);
    v7 = swift_allocObject(v6, *(v6 + 48), *(v6 + 52));
    return specialized MLJob.init(_:)(v7, v5);
  }

  return result;
}

void *static MLActionClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = v3;
  v26 = a2;
  v24 = a1;
  v5 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v25 = &v21;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v10 = *(*(type metadata accessor for MLActionClassifier.ModelParameters(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = *(*(type metadata accessor for MLActionClassifier.DataSource(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  outlined init with copy of MLTrainingSessionParameters(v24, &v21, type metadata accessor for MLActionClassifier.DataSource);
  outlined init with copy of MLTrainingSessionParameters(v26, &v21, type metadata accessor for MLActionClassifier.ModelParameters);
  v26 = a3;
  outlined init with copy of MLTrainingSessionParameters(a3, &v21, type metadata accessor for MLTrainingSessionParameters);
  v16 = type metadata accessor for ActionClassifierTrainingSessionDelegate(0);
  swift_allocObject(v16, *(v16 + 48), *(v16 + 52));
  v17 = v23;
  result = ActionClassifierTrainingSessionDelegate.init(trainingData:modelParameters:sessionParameters:)(&v21, &v21, &v21);
  if (!v17)
  {
    v22[3] = v16;
    v22[4] = &protocol witness table for ActionClassifierTrainingSessionDelegate;
    v22[0] = result;
    v19 = v25;
    outlined init with copy of MLTrainingSessionParameters(v26, v25, type metadata accessor for MLTrainingSessionParameters);
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>);
    swift_allocObject(v20, *(v20 + 48), *(v20 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v22, v19, 22);
  }

  return result;
}

void *static MLActionClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLActionClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

void *static MLActionClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for ActionClassifierTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = ActionClassifierTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for ActionClassifierTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 22);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLActionClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v59 = a5;
  v60 = a4;
  v63 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLActionClassifier, Error>);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = v51;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v61 = v51;
  v53 = type metadata accessor for MLActionClassifier.PersistentParameters(0);
  v15 = *(*(v53 - 1) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v55 = v51;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v54 = v51;
  v21 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v26 = alloca(v23);
  v27 = alloca(v23);
  v28 = alloca(v23);
  v29 = alloca(v23);
  if (a2)
  {
    v30 = v63;
    v51[0] = v63;
    swift_storeEnumTagMultiPayload(v51, v7, 1);
    swift_errorRetain(v30);
    v60(v51);
    v31 = &demangling cache variable for type metadata for Result<MLActionClassifier, Error>;
  }

  else
  {
    v57 = v21;
    v63 = v22;
    v56 = v51;
    v62 = v51;
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v51);
    v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v33 = type metadata accessor for ActionClassifierTrainingSessionDelegate(0);
    result = swift_dynamicCast(&v52, v51, v32, v33, 6);
    if (!result)
    {
      return result;
    }

    v35 = v52;
    v36 = v52 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters;
    swift_beginAccess(v52 + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_trainingParameters, v51, 0, 0);
    v11 = v54;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, v54, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
    v37 = v53;
    if (!__swift_getEnumTagSinglePayload(v11, 1, v53))
    {
      v58 = v35;
      v38 = v55;
      outlined init with copy of MLTrainingSessionParameters(v11, v55, type metadata accessor for MLActionClassifier.PersistentParameters);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v11, &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?);
      outlined init with copy of MLTrainingSessionParameters(v38 + v37[5], v51, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
      v39 = *(v38 + v37[7]);
      v40 = *(v38 + v37[8]);
      v41 = *(v38 + v37[10]);
      v42 = *(v38 + v37[9]);
      v43 = v57;
      *(v51 + v57[5]) = *(v38 + v37[6]);
      *(v51 + v43[6]) = v39;
      *(v51 + v43[7]) = v40;
      *(v51 + v43[8]) = v41;
      *(v51 + v43[10]) = v42;
      outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLActionClassifier.PersistentParameters);
      v44 = v62;
      outlined init with take of MLClassifierMetrics(v51, v62, type metadata accessor for MLActionClassifier.ModelParameters);
      v45 = type metadata accessor for TaskPriority(0);
      __swift_storeEnumTagSinglePayload(v61, 1, 1, v45);
      v46 = v56;
      outlined init with copy of MLTrainingSessionParameters(v44, v56, type metadata accessor for MLActionClassifier.ModelParameters);
      v47 = *(v63 + 80);
      v48 = ~*(v63 + 80) & (v47 + 40);
      v49 = (v23 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject(&unk_392148, v49 + 16, v47 | 7);
      *(v50 + 16) = 0;
      *(v50 + 32) = v58;
      outlined init with take of MLClassifierMetrics(v46, v50 + v48, type metadata accessor for MLActionClassifier.ModelParameters);
      *(v50 + v49) = v60;
      *(v50 + v49 + 8) = v59;

      _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(v61, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:), v50);

      return outlined destroy of MLActivityClassifier.ModelParameters(v62, type metadata accessor for MLActionClassifier.ModelParameters);
    }

    v31 = &demangling cache variable for type metadata for MLActionClassifier.PersistentParameters?;
  }

  return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v11, v31);
}

uint64_t closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a7;
  v7[4] = a6;
  v7[3] = a5;
  v7[2] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLActionClassifier, Error>);
  v7[6] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:)()
{
  v1 = swift_task_alloc(32);
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc(64);
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC18MLActionClassifierV_Tt1g5Tu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC18MLActionClassifierV_Tt1g5Tu))(*(v0 + 48), &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:), v1);
}

{
  v1 = *(*v0 + 56);
  *(*v0 + 64);
  v1;
  return swift_task_switch(closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:), 0, 0);
}

{
  v1 = *(v0 + 48);
  (*(v0 + 32))(v1);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for Result<MLActionClassifier, Error>);
  v1;
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  v4 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  v3[5] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:)()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC8CreateML39ActionClassifierTrainingSessionDelegate_model);
  outlined init with copy of MLTrainingSessionParameters(v0[4], v0[5], type metadata accessor for MLActionClassifier.ModelParameters);

  v2 = swift_task_alloc(64);
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:);
  return MLActionClassifier.init(model:parameters:)(v0[2], v1, v0[5]);
}

{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;
  v2;
  if (v0)
  {
    return swift_task_switch(closure #1 in closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:), 0, 0);
  }

  *(v3 + 40);
  return (*(v3 + 8))();
}

{
  *(v0 + 40);
  return (*(v0 + 8))();
}

uint64_t static MLActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v22 = a3;
  v20 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v5, v15);
  *(inited + 16) = 4;
  *(inited + 24) = 8;
  *(inited + 32) = 0x746E696F7079656BLL;
  *(inited + 40) = 0xE900000000000073;
  v23 = a1;
  v16 = &v23;

  *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 56) = v7 & 1;
  v23;
  *(inited + 64) = 0x6C6562616CLL;
  *(inited + 72) = 0xE500000000000000;
  v23 = a2;
  v17 = &v23;

  *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 88) = v8 & 1;
  v23;
  *(inited + 96) = 0x5F6E6F6973736573;
  *(inited + 104) = 0xEA00000000006469;
  v23 = v22;
  v18 = &v23;

  *(inited + 112) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 120) = v9 & 1;
  v23;
  *(inited + 128) = 0x7461506F65646976;
  *(inited + 136) = 0xE900000000000068;
  v23 = v21;
  v19 = &v23;

  *(inited + 144) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  *(inited + 152) = v10 & 1;
  v23;
  v11 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v11);
  result = v23;
  v13 = v24;
  v14 = v20;
  *v20 = v23;
  *(v14 + 8) = v13;
  return result;
}

void closure #1 in static MLActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(uint64_t a1)
{
  if (*(a1 + 16) == 3)
  {
    v2 = *a1;
    static MLActionClassifier.convertSequenceToMultiArray(value:)(&v2);
  }

  else
  {
    *v1 = 0;
  }
}

void static MLActionClassifier.convertSequenceToMultiArray(value:)(unint64_t *a1)
{
  v138 = v1;
  v2 = *a1;
  v134 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)(3);
  v3 = objc_allocWithZone(NSNumber);
  [v3 initWithInteger:1];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v3);
  v4 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v4);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v4);
  specialized ContiguousArray._endMutation()(v4);
  v5 = objc_allocWithZone(NSNumber);
  [v5 initWithInteger:3];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v5);
  v6 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v6);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v6);
  specialized ContiguousArray._endMutation()(v6);
  v7 = objc_allocWithZone(NSNumber);
  [v7 initWithInteger:18];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v7);
  v8 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v8);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v8);
  specialized ContiguousArray._endMutation()(v8);
  objc_allocWithZone(MLMultiArray);
  v9 = @nonobjc MLMultiArray.init(shape:dataType:)(_swiftEmptyArrayStorage, 65600);
  if (!v9)
  {
    goto LABEL_67;
  }

  v10 = v9;
  v124 = UnsafeMutableBufferPointer.init(_:)(v10, &type metadata for Double);
  v140 = v10;

  v11 = CMLSequence.size.getter();
  v12 = specialized RandomAccessCollection<>.distance(from:to:)(0, v11);

  if (v12 != 1)
  {

LABEL_67:
    *v138 = 0;
    return;
  }

  v120[1] = v2;
  v13 = 0.0;
  v121 = 0;

LABEL_4:
  specialized EnumeratedSequence.Iterator.next()(v13);
  v14 = v134;
  v15 = v135;
  v16 = v136;
  v17 = v137;
  if (v137 == 3)
  {
    outlined copy of MLDataValue(v135, v136, 3u);
    outlined copy of MLDataValue(v15, v16, 3u);
    v133 = v15;
    v130 = v16;
    v18 = CMLSequence.size.getter();
    v16 = v130;
    v15 = v133;
    v19 = specialized RandomAccessCollection<>.distance(from:to:)(0, v18);
    v132 = v14;
    outlined consume of (offset: Int, element: MLDataValue)?(v14, v15, v16, 3);
    if (v19 == 3)
    {
      outlined copy of MLDataValue(v15, v16, 3u);
      v20 = 0;
      while (1)
      {
        if (v20 == CMLSequence.size.getter())
        {

          v104 = v132;
          v105 = v130;
          outlined consume of (offset: Int, element: MLDataValue)?(v132, v15, v130, 3);
          outlined consume of (offset: Int, element: MLDataValue)?(v104, v15, v105, 3);
          goto LABEL_4;
        }

        v22 = v20;
        v21 = CMLSequence.value(at:)(v20);
        MLDataValue.init(_:)(v21, v13);
        v23 = v134;
        v129 = v135;
        v24 = v136;
        v25 = CMLSequence.size.getter();
        v123 = v22;
        if (v22 >= v25)
        {
          BUG();
        }

        v26 = v129;
        if (v24 != 3)
        {
          break;
        }

        outlined copy of MLDataValue(v23, v129, 3u);
        outlined copy of MLDataValue(v23, v26, 3u);
        v27 = CMLSequence.size.getter();
        if (CMLSequence.size.getter() < 0)
        {
          BUG();
        }

        v28 = v23;
        v29 = CMLSequence.size.getter();
        v131 = v28;
        outlined consume of MLDataValue(v28, v26, 3);
        if (v27 < 0 || v29 < v27)
        {
          BUG();
        }

        if (v27 != 18)
        {
          v23 = v131;
          outlined consume of MLDataValue(v131, v26, 3);
          v24 = 3;
          break;
        }

        v30 = v131;

        if (CMLSequence.size.getter())
        {
          v31 = 0;
          while (1)
          {
            v32 = CMLSequence.value(at:)(v31);
            v33 = CMLFeatureValue.type.getter();
            v122 = v31;
            switch(v33)
            {
              case 0:
                v34 = v32[2];

                countAndFlagsBits = specialized handling<A, B>(_:_:)(v34);
                v32;
                object = 0;
                v142 = 0;
                goto LABEL_39;
              case 1:
                v70 = v32[2];

                specialized handling<A, B>(_:_:)(v70);
                v139 = *&v13;
                v69 = v32;
                v13 = *&v139;
                countAndFlagsBits = v139;
                LOBYTE(v69) = 1;
                goto LABEL_37;
              case 2:

                v63 = CMLFeatureValue.stringValue()();
                countAndFlagsBits = v63._countAndFlagsBits;
                if (v64)
                {
                  v64;

                  BUG();
                }

                object = v63._object;
                v65 = v32;
                LOBYTE(v65) = 2;
                v142 = v65;
                goto LABEL_39;
              case 3:
                v66 = v32[2];

                v67 = specialized handling<A, B>(_:_:)(v66);
                if (!v67)
                {
                  BUG();
                }

                v32;
                v68 = type metadata accessor for CMLSequence();
                v69 = swift_allocObject(v68, 25, 7);
                *(v69 + 16) = v67;
                countAndFlagsBits = v69;
                *(v69 + 24) = 1;
                LOBYTE(v69) = 3;
                goto LABEL_37;
              case 4:
                v36 = v32[2];

                v37 = specialized handling<A, B>(_:_:)(v36);
                if (!v37)
                {
                  BUG();
                }

                v128 = v32;
                v38 = type metadata accessor for CMLDictionary();
                inited = swift_initStackObject(v38, v117);
                inited[2] = v37;
                v127 = _swiftEmptyDictionarySingleton;
                swift_retain_n(inited, 2);
                v40 = 0;
                countAndFlagsBits = _swiftEmptyDictionarySingleton;
                v139 = inited;
                while (v40 != CMLDictionary.size.getter())
                {
                  CMLDictionary.keyAndValue(at:)(v40);
                  v42 = v41;
                  v40 = specialized RandomAccessCollection<>.index(after:)(v40);
                  v43 = CMLFeatureValue.stringValue()();
                  if (v44)
                  {
                    v44;

                    inited = v139;
                  }

                  else
                  {
                    v45 = v43._object;
                    v142 = v43._countAndFlagsBits;

                    MLDataValue.init(_:)(v42, v13);

                    v126 = v134;
                    v125 = v135;
                    v143 = v136;
                    *&v46 = v142;
                    v134 = v142;
                    v135 = v45;
                    LOBYTE(v136) = 2;
                    v47 = v45;
                    *(&v46 + 1) = v45;
                    v48 = countAndFlagsBits;
                    specialized __RawDictionaryStorage.find<A>(_:)(v46, 2, v13);
                    *&v46 = (v50 & 1) == 0;
                    v51 = __OFADD__(v48[2], v46);
                    v52 = v48[2] + v46;
                    if (v51)
                    {
                      BUG();
                    }

                    v53 = v50;
                    if (v48[3] < v52)
                    {
                      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, 1u);
                      *&v54 = v142;
                      *(&v54 + 1) = v47;
                      specialized __RawDictionaryStorage.find<A>(_:)(v54, 2, v13);
                      LOBYTE(v55) = v55 & 1;
                      v56 = v53;
                      if ((v53 & 1) != v55)
                      {
                        LOBYTE(v56) = v53 & 1;
                        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, v47, v55, v56);
                        BUG();
                      }
                    }

                    if (v53)
                    {
                      v114 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
                      swift_willThrow();
                      v120[0] = v114;
                      swift_errorRetain(v114);
                      v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
                      if (swift_dynamicCast(&demangling cache variable for type metadata for Error, v120, v115, &type metadata for _MergeError, 0))
                      {
                        v118 = 0;
                        v119 = 0xE000000000000000;
                        _StringGuts.grow(_:)(30);
                        v116._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
                        v116._countAndFlagsBits = 0xD00000000000001BLL;
                        String.append(_:)(v116);
                        _print_unlocked<A, B>(_:_:)(&v134, &v118, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
                        v116._countAndFlagsBits = 39;
                        v116._object = 0xE100000000000000;
                        String.append(_:)(v116);
                        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v118, v119, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
                        BUG();
                      }

                      outlined consume of MLDataValue(v126, v125, v143);
                      outlined consume of MLDataValue(v134, v135, v136);

                      v120[0];
                      swift_unexpectedError(v114, "Swift/Dictionary.swift", 22, 1, 489);
                      BUG();
                    }

                    v57 = v127;
                    v127[(v49 >> 6) + 8] |= 1 << v49;
                    v58 = v57[6];
                    v59 = 24 * v49;
                    *(v58 + v59) = v142;
                    *(v58 + v59 + 8) = v47;
                    *(v58 + v59 + 16) = 2;
                    v60 = v57[7];
                    *(v60 + v59) = v126;
                    *(v60 + v59 + 8) = v125;
                    *(v60 + v59 + 16) = v143;
                    v61 = v57[2];
                    v51 = __OFADD__(1, v61);
                    v62 = v61 + 1;
                    if (v51)
                    {
                      BUG();
                    }

                    countAndFlagsBits = v57;
                    v57[2] = v62;
                    inited = v139;
                  }
                }

                v128;
                v100 = inited;
                LOBYTE(v100) = 4;
                v142 = v100;
                object = 0;
                v31 = v122;
                goto LABEL_39;
              case 5:

                LOBYTE(v71) = 6;
                v142 = v71;
                countAndFlagsBits = 0;
                goto LABEL_38;
              case 6:

                MLDataValue.MultiArrayType.init(from:)(v32);
                countAndFlagsBits = v134;
                if (!v134)
                {
                  BUG();
                }

                LOBYTE(v69) = 5;
LABEL_37:
                v142 = v69;
LABEL_38:
                object = 0;
LABEL_39:
                if (v31 >= CMLSequence.size.getter())
                {
                  BUG();
                }

                v128 = object;
                v72 = v140;
                v73 = [v140 strides];
                v74 = v73;
                v139 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
                v75 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v74, v139);

                if ((v75 & 0xC000000000000003) != 0)
                {
                  v76 = specialized _ArrayBuffer._getElementSlowPath(_:)(0);
                }

                else
                {
                  if (!*(&dword_10 + (v75 & 0xFFFFFFFFFFFFF8)))
                  {
                    BUG();
                  }

                  v76 = *(v75 + 32);
                }

                v77 = v76;
                v75;
                v78 = [v77 integerValue];

                v80 = v78;
                v79 = v132 * v78;
                if (!is_mul_ok(v132, v80))
                {
                  BUG();
                }

                v81 = [v72 strides];
                v82 = v81;
                v83 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v82, v139);

                if ((v83 & 0xC000000000000003) != 0)
                {
                  v84 = specialized _ArrayBuffer._getElementSlowPath(_:)(1);
                }

                else
                {
                  if (*(&dword_10 + (v83 & 0xFFFFFFFFFFFFF8)) < 2uLL)
                  {
                    BUG();
                  }

                  v84 = *(v83 + 40);
                }

                v85 = v84;
                v83;
                v86 = [v85 integerValue];

                v88 = v86;
                v87 = v123 * v86;
                if (!is_mul_ok(v123, v88))
                {
                  BUG();
                }

                v51 = __OFADD__(v87, v79);
                v89 = v87 + v79;
                if (v51)
                {
                  BUG();
                }

                v90 = [v140 strides];
                v91 = v90;
                v92 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v91, v139);
                (objc_release)(v91);
                if ((v92 & 0xC000000000000003) != 0)
                {
                  v94 = specialized _ArrayBuffer._getElementSlowPath(_:)(2);
                  v93 = v129;
                }

                else
                {
                  v93 = v129;
                  if (*(&dword_10 + (v92 & 0xFFFFFFFFFFFFF8)) < 3uLL)
                  {
                    BUG();
                  }

                  v94 = *(v92 + 48);
                }

                v92;
                v95 = [v94 integerValue];

                v96 = v122;
                v98 = v95;
                v97 = v122 * v95;
                if (!is_mul_ok(v122, v98))
                {
                  BUG();
                }

                v51 = __OFADD__(v97, v89);
                v99 = v97 + v89;
                if (v51)
                {
                  BUG();
                }

                if (v142)
                {
                  v30 = v131;
                  if (v142 != 1)
                  {
                    outlined consume of MLDataValue(countAndFlagsBits, v128, v142);
                    outlined consume of MLDataValue(v30, v93, 3);
                    outlined consume of MLDataValue(v30, v93, 3);
                    v106 = v132;
                    v107 = v133;
                    v108 = v130;
                    outlined consume of (offset: Int, element: MLDataValue)?(v132, v133, v130, 3);
                    outlined consume of (offset: Int, element: MLDataValue)?(v106, v107, v108, 3);

                    goto LABEL_71;
                  }

                  *(v124 + 8 * v99) = countAndFlagsBits;
                }

                else
                {
                  v13 = countAndFlagsBits;
                  *(v124 + 8 * v99) = countAndFlagsBits;
                  v30 = v131;
                }

                v31 = v96 + 1;
                if (v31 == CMLSequence.size.getter())
                {
                  goto LABEL_64;
                }

                break;
            }
          }
        }

LABEL_64:
        v101 = v123 + 1;

        v102 = v129;
        outlined consume of MLDataValue(v30, v129, 3);
        v103 = v30;
        v20 = v101;
        outlined consume of MLDataValue(v103, v102, 3);
        v15 = v133;
      }

      outlined consume of MLDataValue(v23, v26, v24);
      v109 = v132;
      v110 = v133;
      v111 = v130;
      outlined consume of (offset: Int, element: MLDataValue)?(v132, v133, v130, 3);
      outlined consume of (offset: Int, element: MLDataValue)?(v109, v110, v111, 3);
LABEL_71:

      goto LABEL_67;
    }

    v112 = v132;
    outlined consume of (offset: Int, element: MLDataValue)?(v132, v15, v16, 3);
    v17 = 3;
  }

  else
  {
    if (v137 == 255)
    {

      MLDataValue.MultiArrayType.init(_:)(v140);
      *v138 = v134;
      return;
    }

    v112 = v134;
  }

  v113 = v138;
  outlined consume of (offset: Int, element: MLDataValue)?(v112, v15, v16, v17);
  *v113 = 0;
}

void *MLActionClassifier.prediction(from:)(void *a1)
{
  v2 = *(*v1 + 24);
  v3 = MLActionClassifier.modelPrediction(on:using:)(a1, v2);

  return v3;
}

void *MLActionClassifier.modelPrediction(on:using:)(void *a1, void *a2)
{
  v4 = (v3 + *(type metadata accessor for MLActionClassifier(0) + 20));
  v5 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  v6 = static _VideoUtilities.getHumanKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(a1, kCMTimeZero.value, *&kCMTimeZero.timescale, kCMTimeZero.epoch, kCMTimeIndefinite.value, *&kCMTimeIndefinite.timescale, *(v4 + *(v5 + 40)), kCMTimeIndefinite.epoch);
  if (!v2)
  {
    v24 = v6[2];
    if (v24)
    {
      v20 = v4;
      v22 = v6;
      specialized ContiguousArray.reserveCapacity(_:)(v24);
      v7 = 0;
      do
      {
        v8 = v22[v7 + 4];
        v7 = (v7 + 1);
        v8;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v8);
        v9 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v9);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v9);
        specialized ContiguousArray._endMutation()(v9);
      }

      while (v24 != v7);
      v22;
      v4 = v20;
    }

    else
    {
      v6;
    }

    v11 = static _VideoUtilities.generatePredictionWindows(frameKeypoints:windowSize:numOfKeypoints:)(_swiftEmptyArrayStorage, *(v4 + *(v5 + 28)), 18, v10);
    _swiftEmptyArrayStorage;
    v13 = *(v11 + 2);
    if (v13)
    {
      v19 = v11;
      v14 = v11 + 40;
      v4 = _swiftEmptyArrayStorage;
      do
      {
        v23 = v13;
        v18 = *v14;
        v25 = *(v14 - 1);
        MLActionClassifier.modelPrediction(on:using:)(v25, a2);
        v21 = v15;
        if (!swift_isUniquelyReferenced_nonNull_native(v4))
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v16 = v4[2];
        if (v4[3] >> 1 <= v16)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v16 + 1, 1, v4);
        }

        v4[2] = v16 + 1;
        v17 = 3 * v16;
        *&v4[v17 + 4] = v18;
        v4[v17 + 6] = v21;

        v14 = (v14 + 24);
        v13 = v23 - 1;
      }

      while (v23 != 1);
      v19;
    }

    else
    {
      v11;
      return _swiftEmptyArrayStorage;
    }
  }

  return v4;
}

void *closure #1 in MLActionClassifier.predictions(from:)(void *a1, uint64_t a2, void *a3)
{
  v9 = v3;
  v5 = *(*a2 + 24);
  v6 = MLActionClassifier.modelPrediction(on:using:)(a1, v5);

  if (v4)
  {
    result = a3;
    *a3 = v4;
  }

  else
  {
    result = v9;
    *v9 = v6;
  }

  return result;
}

void MLActionClassifier.modelPrediction(on:using:)(void *a1, void *a2)
{
  v4 = [a1 shape];
  v5 = v4;
  v6 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v5, v6);

  v10 = specialized Array._getCount()(v7, v6, v8, v9);
  v7;
  if (v10 == 3 && (v11 = [a1 shape], v12 = v11, v68 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v12, v6), v12, v13 = *(type metadata accessor for MLActionClassifier(0) + 20) + v3, v14 = *(*(type metadata accessor for MLActionClassifier.ModelParameters(0) + 28) + v13), v92[0] = _swiftEmptyArrayStorage, specialized ContiguousArray.reserveCapacity(_:)(3), v15 = objc_allocWithZone(NSNumber), objc_msgSend(v15, "initWithInteger:", v14), specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v15), v70 = v6, v16 = _swiftEmptyArrayStorage[2], specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v16), specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v16), specialized ContiguousArray._endMutation()(v16), v17 = objc_allocWithZone(NSNumber), objc_msgSend(v17, "initWithInteger:", 3), specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v17), v18 = _swiftEmptyArrayStorage[2], specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v18), specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v18), specialized ContiguousArray._endMutation()(v18), v19 = objc_allocWithZone(NSNumber), objc_msgSend(v19, "initWithInteger:", 18), specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v19), v20 = _swiftEmptyArrayStorage[2], specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v20), specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v20), specialized ContiguousArray._endMutation()(v20), LOBYTE(v20) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8NSNumberC_Tt1g5(v68, _swiftEmptyArrayStorage), v68, , (v20 & 1) != 0))
  {
    v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    inited = swift_initStackObject(v21, v93);
    inited[2] = 1;
    inited[3] = 2;
    inited[4] = 0x7365736F70;
    inited[5] = 0xE500000000000000;
    v23 = objc_opt_self(MLFeatureValue);
    v24 = [v23 featureValueWithMultiArray:a1];
    v25 = v24;
    inited[9] = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLFeatureValue, MLFeatureValue_ptr);
    inited[6] = v25;
    v26 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
    objc_allocWithZone(MLDictionaryFeatureProvider);
    v27 = @nonobjc MLDictionaryFeatureProvider.init(dictionary:)(v26);
    if (!v2)
    {
      v92[0] = 0;
      v28 = v27;
      v29 = [a2 predictionFromFeatures:v27 error:v92];
      v30 = v29;
      v31 = v92[0];
      if (v30)
      {
        v72 = v28;
        v32 = v30;
        v92[0];
        v33 = String._bridgeToObjectiveC()();
        v73 = v32;
        v34 = [v32 featureValueForName:v33];
        v35 = v34;

        if (v35)
        {
          v36 = [v35 dictionaryValue];
          v37 = v36;

          v38 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(v37, &type metadata for AnyHashable, v70, &protocol witness table for AnyHashable);
          v39 = *(v38 + 16);
          if (v39)
          {
            v78 = _swiftEmptyArrayStorage;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 0);
            v75 = _swiftEmptyArrayStorage;
            v40 = specialized Dictionary.startIndex.getter(v38);
            v42 = v38 + 64;
            v43 = v39 - 1;
            v65 = v38 + 64;
            for (i = v38; ; v41 = *(i + 36))
            {
              if (v40 < 0 || v40 >= 1 << *(v38 + 32))
              {
                BUG();
              }

              v69 = v43;
              v44 = v40 >> 6;
              v45 = *(v42 + 8 * (v40 >> 6));
              if (!_bittest64(&v45, v40))
              {
                BUG();
              }

              if (v41 != *(v38 + 36))
              {
                BUG();
              }

              v71 = 1 << v40;
              v63 = v41;
              v46 = v40;
              outlined init with copy of AnyHashable(*(v38 + 48) + 40 * v40, v92);
              v67 = v46;
              v47 = *(*(v38 + 56) + 8 * v46);
              v92[5] = v47;
              outlined init with copy of AnyHashable(v92, v89);
              v91 = v47;
              v87 = v90;
              v88 = v47;
              v86[1] = v89[1];
              v86[0] = v89[0];
              v48 = v47;
              v48;
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v92, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));
              outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v86, v81, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));

              v85 = v82;
              v49 = *&v81[0];
              v84[1] = v81[1];
              v84[0] = v81[0];
              swift_dynamicCast(&v76, v84, &type metadata for AnyHashable, &type metadata for String, 7);
              outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v86, v79, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));
              v50 = v80;
              [v80 doubleValue];

              outlined destroy of AnyHashable(v79);
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v86, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));
              v51 = v76;
              v52 = v77;
              v53 = v75;
              v78 = v75;
              v54 = v75[2];
              v55 = v54 + 1;
              if (v75[3] >> 1 <= v54)
              {
                v66 = v77;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v75[3] >= 2uLL, v55, 1);
                v55 = v54 + 1;
                v52 = v66;
                v53 = v78;
              }

              v53[2] = v55;
              v56 = 3 * v54;
              v53[v56 + 4] = v51;
              v53[v56 + 5] = v52;
              v53[v56 + 6] = v49;
              v38 = i;
              v57 = -1 << *(i + 32);
              if (v67 >= -v57)
              {
                BUG();
              }

              v42 = v65;
              if ((v71 & *(v65 + 8 * v44)) == 0)
              {
                BUG();
              }

              if (v63 != *(i + 36))
              {
                BUG();
              }

              v75 = v53;
              v40 = _HashTable.occupiedBucket(after:)(v67, v65, ~v57);
              v43 = v69 - 1;
              if (!v69)
              {
                break;
              }
            }

            i;
            swift_unknownObjectRelease(v73);
          }

          else
          {
            v38;
            swift_unknownObjectRelease(v73);
          }
        }

        else
        {
          v61 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v61, 0, 0);
          *v62 = 0xD000000000000028;
          *(v62 + 8) = "labelProbabilities" + 0x8000000000000000;
          *(v62 + 16) = 0;
          *(v62 + 32) = 0;
          *(v62 + 48) = 0;
          swift_willThrow();

          swift_unknownObjectRelease(v32);
        }
      }

      else
      {
        v60 = v92[0];
        _convertNSErrorToError(_:)(v31);

        swift_willThrow();
      }
    }
  }

  else
  {
    v58 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v58, 0, 0);
    *v59 = 0xD000000000000025;
    *(v59 + 8) = "rt requested type" + 0x8000000000000000;
    *(v59 + 16) = 0;
    *(v59 + 32) = 0;
    *(v59 + 48) = 0;
    swift_willThrow();
  }
}

uint64_t MLActionClassifier.evaluation(on:)()
{
  v2 = v0;
  MLActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(0x403E000000000000uLL);
  if (v1)
  {
    *v2 = v1;
    v3 = type metadata accessor for MLClassifierMetrics.Contents(0);
    return swift_storeEnumTagMultiPayload(v2, v3, 2);
  }

  else
  {
    v5 = v7;
    v6 = v8;
    v9 = v8;
    LOBYTE(v8) = v8 & 1;
    outlined copy of Result<_DataTable, Error>(v7, v6);
    _Model.classifierEvaluation(_:)(&v7, 30.0);
    outlined consume of Result<_DataTable, Error>(v5, v9);
    return outlined consume of MLDataTable?(v7, v8);
  }
}

void *MLActionClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  qmemcpy(v4, a2, 0x48uLL);
  MLActionClassifier.addActionClassifierSpecificMetadata(_:)(v4);
  qmemcpy(v4, v3, 0x48uLL);
  _Model.write(to:metadata:)(a1, v4);
  return outlined release of MLModelMetadata?(v3, outlined consume of MLModelMetadata?);
}

void *MLActionClassifier.addActionClassifierSpecificMetadata(_:)(const void *a1)
{
  v3 = v1;
  v4 = type metadata accessor for MLActionClassifier(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v137 = &v116;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v149 = &v116;
  v10 = type metadata accessor for Logger(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = alloca(v12);
  v16 = alloca(v12);
  qmemcpy(v119, a1, sizeof(v119));
  v132 = v3;
  if (!v119[1])
  {
    v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, String)>);
    inited = swift_initStackObject(v29, v117);
    inited[2] = 2;
    inited[3] = 4;
    inited[4] = 0xD000000000000016;
    inited[5] = "Number of Labels" + 0x8000000000000000;
    v31 = v2 + *(v4 + 20);
    v32 = type metadata accessor for MLActionClassifier.ModelParameters(0);
    v120 = *&v31[*(v32 + 28)];
    inited[6] = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    inited[7] = v33;
    inited[8] = 0xD000000000000011;
    inited[9] = "lassification algorithm." + 0x8000000000000000;
    inited[10] = Double.description.getter(*&v31[*(v32 + 40)]);
    inited[11] = v34;
    v142 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for String, &protocol witness table for String);
    v35 = NSFullUserName();
    v36 = v35;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)(v36);
    v39 = v38;

    *v118 = v37;
    *&v118[8] = v39;
    *&v118[16] = 0xD000000000000033;
    *&v118[24] = "RandomForestRegressor" + 0x8000000000000000;
    *&v118[32] = 0;
    *&v118[48] = 49;
    *&v118[56] = 0xE100000000000000;
    *&v118[64] = v142;
    v120 = v37;
    v121 = v39;
    v122 = 0xD000000000000033;
    v123 = "RandomForestRegressor" + 0x8000000000000000;
    v124 = 0;
    v125 = 49;
    v126 = 0xE100000000000000;
    v127 = v142;
    outlined retain of MLModelMetadata(v118);
    result = outlined release of MLModelMetadata(&v120);
    qmemcpy(v132, v118, 0x48uLL);
    return result;
  }

  v150 = v4;
  log = v2;
  v135 = v119[0];
  v142 = v119[2];
  v133 = v119[4];
  v17 = v119[5];
  v134 = v119[6];
  v145 = v119[1];
  v146 = v119[3];
  v136 = v119[7];
  if (v119[8])
  {
    v140 = &v116;
    v139 = &v116;
    v148 = v10;
    v147 = v11;
    v18 = v119[8];

    outlined release of MLModelMetadata?(v119, outlined copy of MLModelMetadata?);
    v143 = v17;

    v19 = specialized Dictionary.subscript.getter(0xD000000000000016, ("Number of Labels" + 0x8000000000000000), v18);
    v151 = v18;
    if (v20)
    {
      v128 = "Number of Labels" + 0x8000000000000000;
      v141 = 0xD000000000000016;
      v21 = log + *(v150 + 20);
      v144 = v19;
      v22 = v20;
      v23 = type metadata accessor for MLActionClassifier.ModelParameters(0);
      v24 = *&v21[*(v23 + 28)];
      v120 = v24;
      v25 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v27 = v26;
      if (!(v25 ^ v144 | v26 ^ v22))
      {
        v22;
        v28 = v27;
LABEL_11:
        v28;
        v61 = v151;
        goto LABEL_19;
      }

      v129 = v23;
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)(v144, v22, v25, v26, 0);
      v27;
      if (v60)
      {
        v28 = v22;
        goto LABEL_11;
      }

      v130 = v24;
      if (one-time initialization token for logger != -1)
      {
        swift_once(&one-time initialization token for logger, one-time initialization function for logger);
      }

      v62 = v148;
      v63 = __swift_project_value_buffer(v148, static MLActionClassifier.logger);
      v64 = v140;
      (*(v147 + 16))(v140, v63, v62);
      v65 = v149;
      v66 = v149;
      outlined init with copy of MLTrainingSessionParameters(log, v149, type metadata accessor for MLActionClassifier);
      v67 = v22;
      v68 = v22;

      v69 = Logger.logObject.getter(v22, v66);
      v70 = static os_log_type_t.info.getter(v68);
      v71 = v70;
      if (os_log_type_enabled(v69, v70))
      {
        v72 = swift_slowAlloc(22, -1);
        *type = v71;
        v73 = v72;
        v131 = swift_slowAlloc(32, -1);
        v120 = v131;
        *v73 = 136315394;

        *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v67, &v120);
        swift_bridgeObjectRelease_n(v67, 3);
        *(v73 + 12) = 2048;
        v74 = v65;
        v75 = *(*(v129 + 28) + *(v150 + 20) + v65);
        outlined destroy of MLActivityClassifier.ModelParameters(v74, type metadata accessor for MLActionClassifier);
        *(v73 + 14) = v75;
        _os_log_impl(&dword_0, v69, type[0], "Prediction window size %s is set incorrectly, change it to %ld frames.", v73, 0x16u);
        v76 = v131;
        __swift_destroy_boxed_opaque_existential_1Tm(v131);
        v76, -1, -1;
        v73, -1, -1;
      }

      else
      {
        outlined destroy of MLActivityClassifier.ModelParameters(v65, type metadata accessor for MLActionClassifier);

        swift_bridgeObjectRelease_n(v67, 2);
      }

      (*(v147 + 8))(v64, v148);
      v77 = v151;
      v120 = v130;
      v78 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v80 = v79;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v77);
      v120 = v77;
      v55 = isUniquelyReferenced_nonNull_native;
      v56 = v78;
      v57 = v80;
      v58 = v141;
      v59 = v128;
    }

    else
    {
      v50 = log + *(v150 + 20);
      v120 = *&v50[*(type metadata accessor for MLActionClassifier.ModelParameters(0) + 28)];
      v51 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v53 = v52;
      v54 = swift_isUniquelyReferenced_nonNull_native(v18);
      v120 = v18;
      v55 = v54;
      v56 = v51;
      v57 = v53;
      v58 = 0xD000000000000016;
      v59 = "Number of Labels" + 0x8000000000000000;
    }

    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v56, v57, v58, v59, v55);
    v61 = v120;
LABEL_19:
    v82 = specialized Dictionary.subscript.getter(0xD000000000000011, ("lassification algorithm." + 0x8000000000000000), v61);
    if (v83)
    {
      v84 = v83;
      v144 = ("lassification algorithm." + 0x8000000000000000);
      v149 = v61;
      v85 = log + *(v150 + 20);
      v86 = v82;
      v87 = type metadata accessor for MLActionClassifier.ModelParameters(0);
      v140 = *&v85[*(v87 + 40)];
      v88 = Double.description.getter(*&v140);
      v90 = v89;
      if (v86 == v88 && v84 == v89)
      {
        v151;
        v84;
        v91 = v90;
LABEL_26:
        v91;
        v44 = v145;
        v49 = v146;
        v45 = v143;
        v48 = v149;
        goto LABEL_34;
      }

      v98 = _stringCompareWithSmolCheck(_:_:expecting:)(v86, v84, v88, v89, 0);
      v90;
      if (v98)
      {
        v151;
        v91 = v84;
        goto LABEL_26;
      }

      v141 = v87;
      if (one-time initialization token for logger != -1)
      {
        swift_once(&one-time initialization token for logger, one-time initialization function for logger);
      }

      v99 = v148;
      v100 = __swift_project_value_buffer(v148, static MLActionClassifier.logger);
      (*(v147 + 16))(v139, v100, v99);
      v101 = v137;
      v102 = v137;
      outlined init with copy of MLTrainingSessionParameters(log, v137, type metadata accessor for MLActionClassifier);

      v103 = Logger.logObject.getter(v84, v102);
      v104 = static os_log_type_t.info.getter(v84);
      log = v103;
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc(22, -1);
        v106 = swift_slowAlloc(32, -1);
        v120 = v106;
        *v105 = 136315394;

        *(v105 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v84, &v120);
        swift_bridgeObjectRelease_n(v84, 3);
        *(v105 + 12) = 2048;
        v107 = v137;
        *(v105 + 14) = *(v137 + *(v150 + 20) + *(v141 + 40));
        outlined destroy of MLActivityClassifier.ModelParameters(v107, type metadata accessor for MLActionClassifier);
        v108 = log;
        _os_log_impl(&dword_0, log, v104, "Target frame rate %s is set incorrectly, change it to %f.", v105, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v106);
        v106, -1, -1;
        v105, -1, -1;
        v109 = v108;
      }

      else
      {
        swift_bridgeObjectRelease_n(v84, 2);
        outlined destroy of MLActivityClassifier.ModelParameters(v101, type metadata accessor for MLActionClassifier);
        v109 = log;
      }

      (*(v147 + 8))(v139, v148);
      v110 = Double.description.getter(*&v140);
      v112 = v111;
      v113 = v149;
      v114 = swift_isUniquelyReferenced_nonNull_native(v149);
      v120 = v113;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v110, v112, 0xD000000000000011, v144, v114);
      v151;
      v48 = v120;
      v44 = v145;
    }

    else
    {
      v92 = log + *(v150 + 20);
      v93 = type metadata accessor for MLActionClassifier.ModelParameters(0);
      v94 = Double.description.getter(*&v92[*(v93 + 40)]);
      v44 = v145;
      v95 = v94;
      log = v96;
      v97 = swift_isUniquelyReferenced_nonNull_native(v61);
      v120 = v61;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v95, log, 0xD000000000000011, ("lassification algorithm." + 0x8000000000000000), v97);
      v151;
      v48 = v120;
    }

    v49 = v146;
    v45 = v143;
    goto LABEL_34;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, String)>);
  v42 = swift_allocObject(v41, 96, 7);
  v42[2] = 2;
  v42[3] = 4;
  v42[4] = 0xD000000000000016;
  v42[5] = "Number of Labels" + 0x8000000000000000;
  v43 = log + *(v150 + 20);
  log = type metadata accessor for MLActionClassifier.ModelParameters(0);
  v120 = *&v43[*(log + 7)];
  v44 = v145;

  outlined release of MLModelMetadata?(v119, outlined copy of MLModelMetadata?);
  v45 = v17;

  v42[6] = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v42[7] = v46;
  v42[8] = 0xD000000000000011;
  v42[9] = "lassification algorithm." + 0x8000000000000000;
  v42[10] = Double.description.getter(*&v43[*(log + 10)]);
  v42[11] = v47;
  v48 = Dictionary.init(dictionaryLiteral:)(v42, &type metadata for String, &type metadata for String, &protocol witness table for String);
  v49 = v146;
LABEL_34:
  v149 = v48;
  *v118 = v135;
  *&v118[8] = v44;
  *&v118[16] = v142;
  *&v118[24] = v49;
  *&v118[32] = v133;
  *&v118[40] = v45;
  *&v118[48] = v134;
  v115 = v136;
  *&v118[56] = v136;
  *&v118[64] = v48;
  outlined retain of MLModelMetadata(v118);
  v44;
  v49;
  v45;
  v115;
  qmemcpy(v132, v118, 0x48uLL);
  v120 = v135;
  v121 = v44;
  v122 = v142;
  v123 = v49;
  *&v124 = v133;
  *(&v124 + 1) = v45;
  v125 = v134;
  v126 = v115;
  v127 = v149;
  return outlined release of MLModelMetadata(&v120);
}

void *MLActionClassifier.write(toFile:metadata:)(uint64_t a1, void *a2, const void *a3)
{
  qmemcpy(v5, a3, sizeof(v5));
  MLActionClassifier.addActionClassifierSpecificMetadata(_:)(v5);
  qmemcpy(v5, v4, sizeof(v5));
  _Model.write(toFile:metadata:)(a1, a2, v5);
  return outlined release of MLModelMetadata?(v4, outlined consume of MLModelMetadata?);
}

void *MLActionClassifier.debugDescription.getter(double a1)
{
  v38 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v38 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v39 = &v29;
  v5 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v33 = &v29;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v10 = alloca(v5);
  v11 = alloca(v5);
  v34 = ModelType.description.getter(*(*v1 + 32));
  v13 = v12;
  type metadata accessor for MLActionClassifier(0);
  v32._countAndFlagsBits = MLActionClassifier.ModelParameters.description.getter();
  v32._object = v14;
  _Model.makeClassifierMetrics(onTraining:onValidation:)(1, 2, a1);
  v31._countAndFlagsBits = MLClassifierMetrics.accuracyDescription.getter();
  v31._object = v15;
  outlined destroy of MLActivityClassifier.ModelParameters(&v29, type metadata accessor for MLClassifierMetrics);
  _Model.makeClassifierMetrics(onTraining:onValidation:)(2, 1, a1);
  v16 = v39;
  outlined init with copy of MLTrainingSessionParameters(&v29, v39, type metadata accessor for MLClassifierMetrics.Contents);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v16, v38);
  outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLClassifierMetrics.Contents);
  outlined destroy of MLActivityClassifier.ModelParameters(&v29, type metadata accessor for MLClassifierMetrics);
  v17 = v33;
  _Model.makeClassifierMetrics(onTraining:onValidation:)(2, 1, a1);
  v35._countAndFlagsBits = MLClassifierMetrics.accuracyDescription.getter();
  v39 = v18;
  outlined destroy of MLActivityClassifier.ModelParameters(v17, type metadata accessor for MLClassifierMetrics);
  v35._object = v34;
  v36 = v13;
  v38 = v13;

  v19._countAndFlagsBits = 0x656D617261500A0ALL;
  v19._object = 0xED00000A73726574;
  String.append(_:)(v19);
  v20 = v36;

  object = v32._object;
  String.append(_:)(v32);
  v20;
  v30._countAndFlagsBits = 0xD00000000000001ELL;
  v30._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  v22 = v31._object;
  String.append(_:)(v31);
  v23 = v30._object;
  String.append(_:)(v30);
  v23;
  if (EnumCaseMultiPayload > 1)
  {
    v27 = object;
    v25 = v39;
  }

  else
  {
    v30._countAndFlagsBits = 0xD000000000000020;
    v30._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v24._countAndFlagsBits = v35._countAndFlagsBits;
    v25 = v39;
    v24._object = v39;
    String.append(_:)(v24);
    v26 = v30._object;
    String.append(_:)(v30);
    object;
    v27 = v22;
    v22 = v26;
  }

  v27;
  v22;
  v25;
  v38;
  return v35._object;
}

NSAttributedString MLActionClassifier.playgroundDescription.getter(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v4._countAndFlagsBits = MLActionClassifier.debugDescription.getter(a1);
  v4._object = v5;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v4).super.isa;
  v2[3].super.isa = v3;
  v2->super.isa = result.super.isa;
  return result;
}

uint64_t sub_15845C()
{
  v1 = *(type metadata accessor for MLActionClassifier.ModelParameters(0) - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 41);
  v4 = *(v1 + 64);
  outlined consume of Result<_DataTable, Error>(*(v0 + 16), *(v0 + 24));
  outlined consume of Result<_DataTable, Error>(*(v0 + 32), *(v0 + 40));
  v5 = v3 + v0;
  v6 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v3 + v0, v6) == 1)
  {
    v7 = type metadata accessor for MLActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v3 + v0, v7))
    {
      case 0u:
        v17 = type metadata accessor for URL(0);
        v18 = *(*(v17 - 8) + 8);
        v18(v3 + v0, v17);
        v19 = v4;
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v18(v5 + v10[12], v17);
        *(v5 + v10[16] + 8);
        *(v5 + v10[20] + 8);
        *(v5 + v10[24] + 8);
        v11 = v10[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 8))(v3 + v0, v8);
        return swift_deallocObject(v0, v4 + v3, v2 | 7);
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v5, *(v5 + 8));
        *(v5 + 24);
        *(v5 + 40);
        v9 = *(v5 + 56);
        goto LABEL_10;
      case 4u:
        outlined consume of Result<_DataTable, Error>(*v5, *(v5 + 8));
        *(v5 + 24);
        *(v5 + 40);
        *(v5 + 56);
        v9 = *(v5 + 72);
        goto LABEL_10;
      case 5u:
        v12 = type metadata accessor for DataFrame(0);
        (*(*(v12 - 8) + 8))(v3 + v0, v12);
        v19 = v4;
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v5 + v13[12] + 8);
        *(v5 + v13[16] + 8);
        v11 = v13[20];
        goto LABEL_9;
      case 6u:
        v14 = type metadata accessor for DataFrame(0);
        (*(*(v14 - 8) + 8))(v3 + v0, v14);
        v19 = v4;
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(v5 + v15[12] + 8);
        *(v5 + v15[16] + 8);
        *(v5 + v15[20] + 8);
        v11 = v15[24];
LABEL_9:
        v4 = v19;
        v9 = *(v5 + v11 + 8);
LABEL_10:
        v9;
        break;
      default:
        return swift_deallocObject(v0, v4 + v3, v2 | 7);
    }
  }

  return swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t partial apply for closure #1 in MLActionClassifier.init(trainingData:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  v9 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v10 = *(v1 + 40);
  v6 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 41));
  v7 = swift_task_alloc(112);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLActionClassifier.init(trainingData:parameters:)(a1, v4, v9, v5, v10, v6);
}

uint64_t sub_15876A()
{
  v11 = v0;
  v1 = type metadata accessor for MLCheckpoint(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 16);
  v5 = v4 + v0;
  v6 = *(v2 + 64) + v4;
  v7 = type metadata accessor for URL(0);
  (*(*(v7 - 8) + 8))(v5, v7);
  v8 = v5 + *(v1 + 28);
  v9 = type metadata accessor for Date(0);
  (*(*(v9 - 8) + 8))(v8, v9);
  *(*(v1 + 32) + v5);
  return swift_deallocObject(v11, v6, v3 | 7);
}

uint64_t partial apply for closure #1 in MLActionClassifier.init(checkpoint:)(uint64_t a1)
{
  v3 = type metadata accessor for MLCheckpoint(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(96);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLStyleTransfer.init(checkpoint:)(a1, v4);
}

uint64_t *initializeBufferWithCopyOfBuffer for MLActionClassifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v5 = a1;
    v6 = *(a3 + 20);
    v7 = a1 + v6;
    v8 = a2 + v6;
    v9 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);

    if (swift_getEnumCaseMultiPayload(v8, v9) == 1)
    {
      v10 = type metadata accessor for MLActionClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v10);
      switch(EnumCaseMultiPayload)
      {
        case 0u:
          v32 = type metadata accessor for URL(0);
          v37 = *(*(v32 - 8) + 16);
          v37(v7, v8, v32);
          v34 = v10;
          v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v37(&v7[v13[12]], &v8[v13[12]], v32);
          v14 = v13[16];
          *&v7[v14] = *&v8[v14];
          *&v7[v14 + 8] = *&v8[v14 + 8];
          v15 = v13[20];
          *&v7[v15] = *&v8[v15];
          *&v7[v15 + 8] = *&v8[v15 + 8];
          v16 = v13[24];
          *&v7[v16] = *&v8[v16];
          *&v7[v16 + 8] = *&v8[v16 + 8];
          v17 = v13[28];
          *&v7[v17] = *&v8[v17];
          goto LABEL_12;
        case 1u:
        case 2u:
          v11 = type metadata accessor for URL(0);
          (*(*(v11 - 8) + 16))(v7, v8, v11);
          goto LABEL_15;
        case 3u:
          v35 = v10;
          v18 = *v8;
          v38 = v8[8];
          outlined copy of Result<_DataTable, Error>(*v8, v38);
          *v7 = v18;
          v7[8] = v38;
          *(v7 + 2) = *(v8 + 2);
          *(v7 + 3) = *(v8 + 3);
          *(v7 + 4) = *(v8 + 4);
          *(v7 + 5) = *(v8 + 5);
          *(v7 + 6) = *(v8 + 6);
          *(v7 + 7) = *(v8 + 7);

          v10 = v35;

          goto LABEL_14;
        case 4u:
          v33 = v10;
          v12 = *v8;
          v36 = v8[8];
          outlined copy of Result<_DataTable, Error>(*v8, v36);
          *v7 = v12;
          v7[8] = v36;
          *(v7 + 2) = *(v8 + 2);
          *(v7 + 3) = *(v8 + 3);
          *(v7 + 4) = *(v8 + 4);
          *(v7 + 5) = *(v8 + 5);
          *(v7 + 6) = *(v8 + 6);
          *(v7 + 7) = *(v8 + 7);
          *(v7 + 8) = *(v8 + 8);
          *(v7 + 9) = *(v8 + 9);

          v10 = v33;

          goto LABEL_14;
        case 5u:
          v19 = type metadata accessor for DataFrame(0);
          (*(*(v19 - 8) + 16))(v7, v8, v19);
          v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v21 = v20[12];
          *&v7[v21] = *&v8[v21];
          *&v7[v21 + 8] = *&v8[v21 + 8];
          v22 = v20[16];
          *&v7[v22] = *&v8[v22];
          *&v7[v22 + 8] = *&v8[v22 + 8];
          v23 = v20[20];
          *&v7[v23] = *&v8[v23];
          v34 = v10;
          *&v7[v23 + 8] = *&v8[v23 + 8];

          goto LABEL_13;
        case 6u:
          v24 = type metadata accessor for DataFrame(0);
          (*(*(v24 - 8) + 16))(v7, v8, v24);
          v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v26 = v25[12];
          *&v7[v26] = *&v8[v26];
          *&v7[v26 + 8] = *&v8[v26 + 8];
          v27 = v25[16];
          *&v7[v27] = *&v8[v27];
          *&v7[v27 + 8] = *&v8[v27 + 8];
          v28 = v25[20];
          *&v7[v28] = *&v8[v28];
          *&v7[v28 + 8] = *&v8[v28 + 8];
          v17 = v25[24];
          *&v7[v17] = *&v8[v17];
          v34 = v10;
LABEL_12:
          *&v7[v17 + 8] = *&v8[v17 + 8];

LABEL_13:

          v10 = v34;
LABEL_14:

LABEL_15:
          swift_storeEnumTagMultiPayload(v7, v10, EnumCaseMultiPayload);
          swift_storeEnumTagMultiPayload(v7, v9, 1);
          break;
      }
    }

    else
    {
      memcpy(v7, v8, *(*(v9 - 8) + 64));
    }

    v29 = type metadata accessor for MLActionClassifier.ModelParameters(0);
    *&v7[v29[5]] = *&v8[v29[5]];
    *&v7[v29[6]] = *&v8[v29[6]];
    *&v7[v29[7]] = *&v8[v29[7]];
    *&v7[v29[8]] = *&v8[v29[8]];
    *&v7[v29[10]] = *&v8[v29[10]];
  }

  return v5;
}

uint64_t destroy for MLActionClassifier(uint64_t a1, uint64_t a2)
{

  v2 = a1 + *(a2 + 20);
  v3 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  result = swift_getEnumCaseMultiPayload(v2, v3);
  if (result == 1)
  {
    v5 = type metadata accessor for MLActionClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(v2, v5);
    switch(result)
    {
      case 0:
        v7 = type metadata accessor for URL(0);
        v8 = *(*(v7 - 8) + 8);
        v8(v2, v7);
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v8(v2 + v9[12], v7);
        *(v2 + v9[16] + 8);
        *(v2 + v9[20] + 8);
        *(v2 + v9[24] + 8);
        v10 = v9[28];
        goto LABEL_10;
      case 1:
      case 2:
        v6 = type metadata accessor for URL(0);
        return (*(*(v6 - 8) + 8))(v2, v6);
      case 3:
        outlined consume of Result<_DataTable, Error>(*v2, *(v2 + 8));
        *(v2 + 24);
        *(v2 + 40);
        return *(v2 + 56);
      case 4:
        outlined consume of Result<_DataTable, Error>(*v2, *(v2 + 8));
        *(v2 + 24);
        *(v2 + 40);
        *(v2 + 56);
        return *(v2 + 72);
      case 5:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 8))(v2, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v2 + v12[12] + 8);
        *(v2 + v12[16] + 8);
        v10 = v12[20];
        goto LABEL_10;
      case 6:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 8))(v2, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(v2 + v14[12] + 8);
        *(v2 + v14[16] + 8);
        *(v2 + v14[20] + 8);
        v10 = v14[24];
LABEL_10:
        result = *(v2 + v10 + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

void *initializeWithCopy for MLActionClassifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = a1 + v3;
  v5 = a2 + v3;
  v6 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);

  if (swift_getEnumCaseMultiPayload(v5, v6) == 1)
  {
    v7 = type metadata accessor for MLActionClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v5, v7);
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v29 = type metadata accessor for URL(0);
        v34 = *(*(v29 - 8) + 16);
        v34(v4, v5, v29);
        v31 = v7;
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v34(&v4[v10[12]], &v5[v10[12]], v29);
        v11 = v10[16];
        *&v4[v11] = *&v5[v11];
        *&v4[v11 + 8] = *&v5[v11 + 8];
        v12 = v10[20];
        *&v4[v12] = *&v5[v12];
        *&v4[v12 + 8] = *&v5[v12 + 8];
        v13 = v10[24];
        *&v4[v13] = *&v5[v13];
        *&v4[v13 + 8] = *&v5[v13 + 8];
        v14 = v10[28];
        *&v4[v14] = *&v5[v14];
        goto LABEL_10;
      case 1u:
      case 2u:
        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 16))(v4, v5, v8);
        goto LABEL_13;
      case 3u:
        v32 = v7;
        v15 = *v5;
        v35 = v5[8];
        outlined copy of Result<_DataTable, Error>(*v5, v35);
        *v4 = v15;
        v4[8] = v35;
        *(v4 + 2) = *(v5 + 2);
        *(v4 + 3) = *(v5 + 3);
        *(v4 + 4) = *(v5 + 4);
        *(v4 + 5) = *(v5 + 5);
        *(v4 + 6) = *(v5 + 6);
        *(v4 + 7) = *(v5 + 7);

        v7 = v32;

        goto LABEL_12;
      case 4u:
        v30 = v7;
        v9 = *v5;
        v33 = v5[8];
        outlined copy of Result<_DataTable, Error>(*v5, v33);
        *v4 = v9;
        v4[8] = v33;
        *(v4 + 2) = *(v5 + 2);
        *(v4 + 3) = *(v5 + 3);
        *(v4 + 4) = *(v5 + 4);
        *(v4 + 5) = *(v5 + 5);
        *(v4 + 6) = *(v5 + 6);
        *(v4 + 7) = *(v5 + 7);
        *(v4 + 8) = *(v5 + 8);
        *(v4 + 9) = *(v5 + 9);

        v7 = v30;

        goto LABEL_12;
      case 5u:
        v16 = type metadata accessor for DataFrame(0);
        (*(*(v16 - 8) + 16))(v4, v5, v16);
        v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v18 = v17[12];
        *&v4[v18] = *&v5[v18];
        *&v4[v18 + 8] = *&v5[v18 + 8];
        v19 = v17[16];
        *&v4[v19] = *&v5[v19];
        *&v4[v19 + 8] = *&v5[v19 + 8];
        v20 = v17[20];
        *&v4[v20] = *&v5[v20];
        v31 = v7;
        *&v4[v20 + 8] = *&v5[v20 + 8];

        goto LABEL_11;
      case 6u:
        v21 = type metadata accessor for DataFrame(0);
        (*(*(v21 - 8) + 16))(v4, v5, v21);
        v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v23 = v22[12];
        *&v4[v23] = *&v5[v23];
        *&v4[v23 + 8] = *&v5[v23 + 8];
        v24 = v22[16];
        *&v4[v24] = *&v5[v24];
        *&v4[v24 + 8] = *&v5[v24 + 8];
        v25 = v22[20];
        *&v4[v25] = *&v5[v25];
        *&v4[v25 + 8] = *&v5[v25 + 8];
        v14 = v22[24];
        *&v4[v14] = *&v5[v14];
        v31 = v7;
LABEL_10:
        *&v4[v14 + 8] = *&v5[v14 + 8];

LABEL_11:

        v7 = v31;
LABEL_12:

LABEL_13:
        swift_storeEnumTagMultiPayload(v4, v7, EnumCaseMultiPayload);
        swift_storeEnumTagMultiPayload(v4, v6, 1);
        break;
    }
  }

  else
  {
    memcpy(v4, v5, *(*(v6 - 8) + 64));
  }

  v26 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  *&v4[v26[5]] = *&v5[v26[5]];
  *&v4[v26[6]] = *&v5[v26[6]];
  *&v4[v26[7]] = *&v5[v26[7]];
  *&v4[v26[8]] = *&v5[v26[8]];
  *&v4[v26[10]] = *&v5[v26[10]];
  return a1;
}

void *assignWithCopy for MLActionClassifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    v7 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v6, v7) == 1)
    {
      v8 = type metadata accessor for MLActionClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v6, v8);
      switch(EnumCaseMultiPayload)
      {
        case 0u:
          v30 = type metadata accessor for URL(0);
          v35 = *(*(v30 - 8) + 16);
          v35(v5, v6, v30);
          v32 = v8;
          v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v35(&v5[v11[12]], &v6[v11[12]], v30);
          v12 = v11[16];
          *&v5[v12] = *&v6[v12];
          *&v5[v12 + 8] = *&v6[v12 + 8];
          v13 = v11[20];
          *&v5[v13] = *&v6[v13];
          *&v5[v13 + 8] = *&v6[v13 + 8];
          v14 = v11[24];
          *&v5[v14] = *&v6[v14];
          *&v5[v14 + 8] = *&v6[v14 + 8];
          v15 = v11[28];
          *&v5[v15] = *&v6[v15];
          goto LABEL_11;
        case 1u:
        case 2u:
          v9 = type metadata accessor for URL(0);
          (*(*(v9 - 8) + 16))(v5, v6, v9);
          goto LABEL_14;
        case 3u:
          v33 = v8;
          v16 = *v6;
          v36 = v6[8];
          outlined copy of Result<_DataTable, Error>(*v6, v36);
          *v5 = v16;
          v5[8] = v36;
          *(v5 + 2) = *(v6 + 2);
          *(v5 + 3) = *(v6 + 3);
          *(v5 + 4) = *(v6 + 4);
          *(v5 + 5) = *(v6 + 5);
          *(v5 + 6) = *(v6 + 6);
          *(v5 + 7) = *(v6 + 7);

          v8 = v33;

          goto LABEL_13;
        case 4u:
          v31 = v8;
          v10 = *v6;
          v34 = v6[8];
          outlined copy of Result<_DataTable, Error>(*v6, v34);
          *v5 = v10;
          v5[8] = v34;
          *(v5 + 2) = *(v6 + 2);
          *(v5 + 3) = *(v6 + 3);
          *(v5 + 4) = *(v6 + 4);
          *(v5 + 5) = *(v6 + 5);
          *(v5 + 6) = *(v6 + 6);
          *(v5 + 7) = *(v6 + 7);
          *(v5 + 8) = *(v6 + 8);
          *(v5 + 9) = *(v6 + 9);

          v8 = v31;

          goto LABEL_13;
        case 5u:
          v17 = type metadata accessor for DataFrame(0);
          (*(*(v17 - 8) + 16))(v5, v6, v17);
          v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v19 = v18[12];
          *&v5[v19] = *&v6[v19];
          *&v5[v19 + 8] = *&v6[v19 + 8];
          v20 = v18[16];
          *&v5[v20] = *&v6[v20];
          *&v5[v20 + 8] = *&v6[v20 + 8];
          v21 = v18[20];
          *&v5[v21] = *&v6[v21];
          v32 = v8;
          *&v5[v21 + 8] = *&v6[v21 + 8];

          goto LABEL_12;
        case 6u:
          v22 = type metadata accessor for DataFrame(0);
          (*(*(v22 - 8) + 16))(v5, v6, v22);
          v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v24 = v23[12];
          *&v5[v24] = *&v6[v24];
          *&v5[v24 + 8] = *&v6[v24 + 8];
          v25 = v23[16];
          *&v5[v25] = *&v6[v25];
          *&v5[v25 + 8] = *&v6[v25 + 8];
          v26 = v23[20];
          *&v5[v26] = *&v6[v26];
          *&v5[v26 + 8] = *&v6[v26 + 8];
          v15 = v23[24];
          *&v5[v15] = *&v6[v15];
          v32 = v8;
LABEL_11:
          *&v5[v15 + 8] = *&v6[v15 + 8];

LABEL_12:

          v8 = v32;
LABEL_13:

LABEL_14:
          swift_storeEnumTagMultiPayload(v5, v8, EnumCaseMultiPayload);
          swift_storeEnumTagMultiPayload(v5, v7, 1);
          break;
      }
    }

    else
    {
      memcpy(v5, v6, *(*(v7 - 8) + 64));
    }
  }

  v27 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  *&v5[v27[5]] = *&v6[v27[5]];
  *&v5[v27[6]] = *&v6[v27[6]];
  *&v5[v27[7]] = *&v6[v27[7]];
  *&v5[v27[8]] = *&v6[v27[8]];
  *&v5[v27[10]] = *&v6[v27[10]];
  return a1;
}

void *initializeWithTake for MLActionClassifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v6, v7) == 1)
  {
    v8 = type metadata accessor for MLActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v6, v8))
    {
      case 0u:
        v23 = type metadata accessor for URL(0);
        v24 = *(*(v23 - 8) + 32);
        v24(v5, v6, v23);
        v22 = v8;
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v24(&v5[v9[12]], &v6[v9[12]], v23);
        *&v5[v9[16]] = *&v6[v9[16]];
        *&v5[v9[20]] = *&v6[v9[20]];
        *&v5[v9[24]] = *&v6[v9[24]];
        *&v5[v9[28]] = *&v6[v9[28]];
        v10 = v5;
        v11 = v22;
        v12 = 0;
        goto LABEL_11;
      case 1u:
        v14 = type metadata accessor for URL(0);
        (*(*(v14 - 8) + 32))(v5, v6, v14);
        v21 = 1;
        goto LABEL_10;
      case 2u:
        v13 = type metadata accessor for URL(0);
        (*(*(v13 - 8) + 32))(v5, v6, v13);
        v21 = 2;
        goto LABEL_10;
      case 5u:
        v15 = type metadata accessor for DataFrame(0);
        (*(*(v15 - 8) + 32))(v5, v6, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&v5[v16[12]] = *&v6[v16[12]];
        *&v5[v16[16]] = *&v6[v16[16]];
        *&v5[v16[20]] = *&v6[v16[20]];
        v21 = 5;
        goto LABEL_10;
      case 6u:
        v17 = type metadata accessor for DataFrame(0);
        (*(*(v17 - 8) + 32))(v5, v6, v17);
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&v5[v18[12]] = *&v6[v18[12]];
        *&v5[v18[16]] = *&v6[v18[16]];
        *&v5[v18[20]] = *&v6[v18[20]];
        *&v5[v18[24]] = *&v6[v18[24]];
        v21 = 6;
LABEL_10:
        v12 = v21;
        v10 = v5;
        v11 = v8;
LABEL_11:
        swift_storeEnumTagMultiPayload(v10, v11, v12);
        break;
      default:
        memcpy(v5, v6, *(*(v8 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload(v5, v7, 1);
  }

  else
  {
    memcpy(v5, v6, *(*(v7 - 8) + 64));
  }

  v19 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  *&v5[v19[5]] = *&v6[v19[5]];
  *&v5[v19[6]] = *&v6[v19[6]];
  *&v5[v19[7]] = *&v6[v19[7]];
  *&v5[v19[8]] = *&v6[v19[8]];
  *&v5[v19[10]] = *&v6[v19[10]];
  return a1;
}

void *assignWithTake for MLActionClassifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v5 = *(a3 + 20);
  v6 = a1 + v5;
  v7 = a2 + v5;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    v8 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v7, v8) == 1)
    {
      v9 = type metadata accessor for MLActionClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(v7, v9))
      {
        case 0u:
          v24 = type metadata accessor for URL(0);
          v25 = *(*(v24 - 8) + 32);
          v25(v6, v7, v24);
          v23 = v9;
          v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v25(&v6[v10[12]], &v7[v10[12]], v24);
          *&v6[v10[16]] = *&v7[v10[16]];
          *&v6[v10[20]] = *&v7[v10[20]];
          *&v6[v10[24]] = *&v7[v10[24]];
          *&v6[v10[28]] = *&v7[v10[28]];
          v11 = v6;
          v12 = v23;
          v13 = 0;
          goto LABEL_12;
        case 1u:
          v15 = type metadata accessor for URL(0);
          (*(*(v15 - 8) + 32))(v6, v7, v15);
          v22 = 1;
          goto LABEL_11;
        case 2u:
          v14 = type metadata accessor for URL(0);
          (*(*(v14 - 8) + 32))(v6, v7, v14);
          v22 = 2;
          goto LABEL_11;
        case 5u:
          v16 = type metadata accessor for DataFrame(0);
          (*(*(v16 - 8) + 32))(v6, v7, v16);
          v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          *&v6[v17[12]] = *&v7[v17[12]];
          *&v6[v17[16]] = *&v7[v17[16]];
          *&v6[v17[20]] = *&v7[v17[20]];
          v22 = 5;
          goto LABEL_11;
        case 6u:
          v18 = type metadata accessor for DataFrame(0);
          (*(*(v18 - 8) + 32))(v6, v7, v18);
          v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          *&v6[v19[12]] = *&v7[v19[12]];
          *&v6[v19[16]] = *&v7[v19[16]];
          *&v6[v19[20]] = *&v7[v19[20]];
          *&v6[v19[24]] = *&v7[v19[24]];
          v22 = 6;
LABEL_11:
          v13 = v22;
          v11 = v6;
          v12 = v9;
LABEL_12:
          swift_storeEnumTagMultiPayload(v11, v12, v13);
          break;
        default:
          memcpy(v6, v7, *(*(v9 - 8) + 64));
          break;
      }

      swift_storeEnumTagMultiPayload(v6, v8, 1);
    }

    else
    {
      memcpy(v6, v7, *(*(v8 - 8) + 64));
    }
  }

  v20 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  *&v6[v20[5]] = *&v7[v20[5]];
  *&v6[v20[6]] = *&v7[v20[6]];
  *&v6[v20[7]] = *&v7[v20[7]];
  *&v6[v20[8]] = *&v7[v20[8]];
  *&v6[v20[10]] = *&v7[v20[10]];
  return a1;
}

uint64_t sub_159C7D(void *a1, unsigned int a2, uint64_t a3)
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
    v5 = type metadata accessor for MLActionClassifier.ModelParameters(0);
    return __swift_getEnumTagSinglePayload(a1 + *(a3 + 20), a2, v5);
  }

  return result;
}

uint64_t sub_159D04(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for MLActionClassifier.ModelParameters(0);
    return __swift_storeEnumTagSinglePayload(a1 + *(a4 + 20), a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLActionClassifier(uint64_t a1)
{
  v3[0] = &value witness table for Builtin.NativeObject + 64;
  result = type metadata accessor for MLActionClassifier.ModelParameters(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 2, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MLActionClassifier.Prediction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void *assignWithCopy for MLActionClassifier.Prediction(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v2 = a1[2];
  a1[2] = a2[2];

  v2;
  return a1;
}

uint64_t assignWithTake for MLActionClassifier.Prediction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v3;
  return a1;
}

uint64_t getEnumTagSinglePayload for MLActionClassifier.Prediction(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 16) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 16) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLActionClassifier.Prediction(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 24) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 24) = 0;
    }

    if (a2)
    {
      *(a1 + 16) = 2 * (a2 - 1);
    }
  }
}

uint64_t sub_159F1F()
{
  v1 = *(type metadata accessor for MLActionClassifier.ModelParameters(0) - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 40);
  v4 = *(v1 + 64);
  swift_unknownObjectRelease(*(v0 + 16));

  v5 = v3 + v0;
  v6 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v3 + v0, v6) == 1)
  {
    v7 = type metadata accessor for MLActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v3 + v0, v7))
    {
      case 0u:
        v17 = type metadata accessor for URL(0);
        v18 = *(*(v17 - 8) + 8);
        v18(v3 + v0, v17);
        v19 = v4;
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v18(v5 + v10[12], v17);
        *(v5 + v10[16] + 8);
        *(v5 + v10[20] + 8);
        *(v5 + v10[24] + 8);
        v11 = v10[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 8))(v3 + v0, v8);
        break;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v5, *(v5 + 8));
        *(v5 + 24);
        *(v5 + 40);
        v9 = *(v5 + 56);
        goto LABEL_10;
      case 4u:
        outlined consume of Result<_DataTable, Error>(*v5, *(v5 + 8));
        *(v5 + 24);
        *(v5 + 40);
        *(v5 + 56);
        v9 = *(v5 + 72);
        goto LABEL_10;
      case 5u:
        v12 = type metadata accessor for DataFrame(0);
        (*(*(v12 - 8) + 8))(v3 + v0, v12);
        v19 = v4;
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v5 + v13[12] + 8);
        *(v5 + v13[16] + 8);
        v11 = v13[20];
        goto LABEL_9;
      case 6u:
        v14 = type metadata accessor for DataFrame(0);
        (*(*(v14 - 8) + 8))(v3 + v0, v14);
        v19 = v4;
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(v5 + v15[12] + 8);
        *(v5 + v15[16] + 8);
        *(v5 + v15[20] + 8);
        v11 = v15[24];
LABEL_9:
        v4 = v19;
        v9 = *(v5 + v11 + 8);
LABEL_10:
        v9;
        break;
      default:
        break;
    }
  }

  return swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLActionClassifier.ModelParameters(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 40);
  v5 = (v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v7 = v1 + v4;
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);
  v10 = swift_task_alloc(80);
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:)(a1, v6, v12, v13, v7, v8, v9);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = swift_task_alloc(64);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:)(a1, v3, v4);
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML24MLRandomForestClassifierV15ModelParametersV010ValidationD0OTg503_s8g4ML24ijk3V15lm76V13configuration10validationAE0A12MLComponents24BoostedTreeConfigurationV_11c7Data0O5e12VSgtcfcAE010N21O0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(uint64_t a1)
{
  v21 = v1;
  v2 = type metadata accessor for DataFrame(0);
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v19 = &v17;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &v17, &demangling cache variable for type metadata for DataFrame?);
  if (__swift_getEnumTagSinglePayload(&v17, 1, v2) == 1)
  {
    v9 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
    v10 = v21;
    v11 = 1;
    v12 = v9;
  }

  else
  {
    v13 = v19;
    v14 = v18;
    (*(v18 + 32))(v19, &v17, v2);
    v15 = v21;
    (*(v14 + 16))(v21, v13, v2);
    v20 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
    swift_storeEnumTagMultiPayload(v15, v20, 2);
    (*(v14 + 8))(v13, v2);
    v10 = v15;
    v11 = 0;
    v12 = v20;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t MLRandomForestClassifier.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &v9, &demangling cache variable for type metadata for Any?);
  if (!v10)
  {
    BUG();
  }

  outlined init with take of Any(&v9, v8);
  swift_dynamicCast(&v7, v8, &type metadata for Any + 8, v2, 7);
  MLRandomForestClassifier.ModelParameters.ValidationData.asTable()(a1);
  return outlined destroy of MLRandomForestClassifier.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLRandomForestClassifier.ModelParameters.validationData : MLRandomForestClassifier.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLRandomForestClassifier.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLRandomForestClassifier.ModelParameters.validationData : MLRandomForestClassifier.ModelParameters(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLRandomForestClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLRandomForestClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v18 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
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
  outlined init with take of MLRandomForestClassifier.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  return outlined assign with take of Any?(&v13 + 8, v18);
}

uint64_t MLRandomForestClassifier.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &v6, &demangling cache variable for type metadata for Any?);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t outlined destroy of MLRandomForestClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t outlined init with take of MLRandomForestClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t (*MLRandomForestClassifier.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  MLRandomForestClassifier.ModelParameters.validationData.getter(a2);
  return MLRandomForestClassifier.ModelParameters.validationData.modify;
}

uint64_t MLRandomForestClassifier.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v6 = *a1;
  v7 = v3;
  if ((a2 & 1) == 0)
  {
    return MLRandomForestClassifier.ModelParameters.validationData.setter(&v6);
  }

  v4 = v3;
  outlined copy of MLDataTable?(v2, v3);
  MLRandomForestClassifier.ModelParameters.validationData.setter(&v6);
  return outlined consume of MLDataTable?(v2, v4);
}

uint64_t key path setter for MLRandomForestClassifier.ModelParameters.validation : MLRandomForestClassifier.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLRandomForestClassifier.ModelParameters.ValidationData(a1, v6);
  return MLRandomForestClassifier.ModelParameters.validation.setter(v6);
}

uint64_t MLRandomForestClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLRandomForestClassifier.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1);
}

void (*MLRandomForestClassifier.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  *(v2 + 17) = v3;
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 18) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 19) = v5;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, (v2 + 2), &demangling cache variable for type metadata for Any?);
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLRandomForestClassifier.ModelParameters.validation.modify;
}

void MLRandomForestClassifier.ModelParameters.validation.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[19];
  v4 = (*a1)[18];
  v8 = (*a1)[16];
  v5 = (*a1)[17];
  if (a2)
  {
    outlined init with copy of MLRandomForestClassifier.ModelParameters.ValidationData(v3, v4);
    v2[11] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLRandomForestClassifier.ModelParameters.ValidationData(v4, boxed_opaque_existential_0);
    outlined assign with take of Any?((v2 + 8), v8);
    outlined destroy of MLRandomForestClassifier.ModelParameters.ValidationData(v3);
  }

  else
  {
    v2[15] = v5;
    v7 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLRandomForestClassifier.ModelParameters.ValidationData(v3, v7);
    outlined assign with take of Any?((v2 + 12), v8);
  }

  free(v3);
  free(v4);
  free(v2);
}

uint64_t MLRandomForestClassifier.ModelParameters.init(validation:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:rowSubsample:columnSubsample:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v18 = a4;
  v19 = a3;
  v9 = v8;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v10 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 32) = a2;
  *(v9 + 40) = v19;
  *(v9 + 48) = v23;
  *(v9 + 56) = v22;
  *(v9 + 64) = v18;
  *(v9 + 72) = v21;
  *(v9 + 80) = v20;
  outlined init with copy of MLRandomForestClassifier.ModelParameters.ValidationData(a1, &v16);
  v17[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  outlined init with take of MLRandomForestClassifier.ModelParameters.ValidationData(&v16, boxed_opaque_existential_0);
  outlined assign with take of Any?(v17, v9);
  return outlined destroy of MLRandomForestClassifier.ModelParameters.ValidationData(a1);
}

uint64_t MLRandomForestClassifier.ModelParameters.init(validationData:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:rowSubsample:columnSubsample:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  *(v8 + 16) = 0;
  *v8 = 0;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 64) = a4;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  v12 = v9;
  v13 = v10;
  return MLRandomForestClassifier.ModelParameters.validationData.setter(&v12);
}

uint64_t MLRandomForestClassifier.ModelParameters.init(configuration:validation:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLRandomForestClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v18 = v15;
  *(v3 + 16) = 0;
  *v3 = 0;
  *(v3 + 32) = BoostedTreeConfiguration.maximumDepth.getter();
  *(v3 + 40) = BoostedTreeConfiguration.maximumIterations.getter(0);
  *(v3 + 48) = BoostedTreeConfiguration.minimumLossReduction.getter();
  *(v3 + 56) = BoostedTreeConfiguration.minimumChildWeight.getter();
  *(v3 + 64) = BoostedTreeConfiguration.randomSeed.getter();
  *(v3 + 72) = BoostedTreeConfiguration.rowSubsample.getter();
  *(v3 + 80) = BoostedTreeConfiguration.columnSubsample.getter();
  v17 = a2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML24MLRandomForestClassifierV15ModelParametersV010ValidationD0OTg503_s8g4ML24ijk3V15lm76V13configuration10validationAE0A12MLComponents24BoostedTreeConfigurationV_11c7Data0O5e12VSgtcfcAE010N21O0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(a2);
  if (__swift_getEnumTagSinglePayload(v15, 1, v7) == 1)
  {
    v11 = v18;
    swift_storeEnumTagMultiPayload(v18, v7, 3);
    if (__swift_getEnumTagSinglePayload(v15, 1, v7) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v15, &demangling cache variable for type metadata for MLRandomForestClassifier.ModelParameters.ValidationData?);
    }
  }

  else
  {
    v11 = v18;
    outlined init with take of MLRandomForestClassifier.ModelParameters.ValidationData(v15, v18);
  }

  v16[3] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  outlined init with take of MLRandomForestClassifier.ModelParameters.ValidationData(v11, boxed_opaque_existential_0);
  outlined assign with take of Any?(v16, v3);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for DataFrame?);
  v13 = type metadata accessor for BoostedTreeConfiguration(0);
  return (*(*(v13 - 8) + 8))(a1, v13);
}

uint64_t MLRandomForestClassifier.ModelParameters.description.getter()
{
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v0._object;
  String.append(_:)(v0);
  object;
  v2._object = 0xE100000000000000;
  v2._countAndFlagsBits = 10;
  String.append(_:)(v2);
  _StringGuts.grow(_:)(19);
  0;
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v4 = v3._object;
  String.append(_:)(v3);
  v4;
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v2._countAndFlagsBits = 0xD000000000000010;
  v2._object = "ansformer have different types." + 0x8000000000000000;
  String.append(_:)(v2);
  ("ansformer have different types." + 0x8000000000000000);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v2._object = "Max Iterations: " + 0x8000000000000000;
  v2._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v2);
  Double.write<A>(to:)(&v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v5 = v13._object;
  String.append(_:)(v13);
  v5;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v2._object = "Min Loss Reduction: " + 0x8000000000000000;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  Double.write<A>(to:)(&v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v6 = v13._object;
  String.append(_:)(v13);
  v6;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v13._object;
  strcpy(&v13, "Random Seed: ");
  HIWORD(v13._object) = -4864;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v8 = v7._object;
  String.append(_:)(v7);
  v8;
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v9 = v13._object;
  String.append(_:)(v13);
  v9;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v2._countAndFlagsBits = 0x7362755320776F52;
  v2._object = 0xEF203A656C706D61;
  String.append(_:)(v2);
  Double.write<A>(to:)(&v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v10 = v13._object;
  String.append(_:)(v13);
  v10;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v2._object = "Min Child Weight: " + 0x8000000000000000;
  v2._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v2);
  Double.write<A>(to:)(&v13, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v11 = v13._object;
  String.append(_:)(v13);
  v11;
  return 0x747065442078614DLL;
}

uint64_t MLRandomForestClassifier.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLRandomForestClassifier.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t initializeWithCopy for MLRandomForestClassifier.ModelParameters(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 3);
  if (v2)
  {
    *(a1 + 24) = v2;
    (**(v2 - 8))(a1, a2);
  }

  else
  {
    v3 = *a2;
    *(a1 + 16) = a2[1];
    *a1 = v3;
  }

  *(a1 + 32) = a2[2];
  *(a1 + 48) = a2[3];
  *(a1 + 64) = a2[4];
  *(a1 + 80) = *(a2 + 10);
  return a1;
}

uint64_t assignWithCopy for MLRandomForestClassifier.ModelParameters(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 3);
  if (!*(a1 + 24))
  {
    if (v2)
    {
      *(a1 + 24) = v2;
      (**(v2 - 8))(a1, a2);
      goto LABEL_8;
    }

LABEL_7:
    v3 = *a2;
    *(a1 + 16) = a2[1];
    *a1 = v3;
    goto LABEL_8;
  }

  if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0(a1, a2);
LABEL_8:
  *(a1 + 32) = a2[2];
  *(a1 + 48) = a2[3];
  *(a1 + 64) = a2[4];
  *(a1 + 80) = *(a2 + 10);
  return a1;
}

uint64_t assignWithTake for MLRandomForestClassifier.ModelParameters(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v2 = *a2;
  *(a1 + 16) = a2[1];
  *a1 = v2;
  *(a1 + 32) = a2[2];
  *(a1 + 48) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLRandomForestClassifier.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 88))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

void storeEnumTagSinglePayload for MLRandomForestClassifier.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 88) = 0;
    }

    if (a2)
    {
      *(a1 + 24) = 2 * a2;
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier.MLP(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for Dense(0);
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    v7((a1 + *(a3 + 20)), (a2 + *(a3 + 20)), v6);
  }

  return v3;
}

uint64_t destroy for MLFewShotSoundClassifier.MLP(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Dense(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  return (v3)(a1 + *(a2 + 20), v2);
}

uint64_t initializeWithCopy for MLFewShotSoundClassifier.MLP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Dense(0);
  v5 = *(*(v4 - 8) + 16);
  v5(a1, a2, v4);
  v5(a1 + *(a3 + 20), *(a3 + 20) + a2, v4);
  return a1;
}

uint64_t assignWithCopy for MLFewShotSoundClassifier.MLP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Dense(0);
  v5 = *(*(v4 - 8) + 24);
  v5(a1, a2, v4);
  v5(a1 + *(a3 + 20), *(a3 + 20) + a2, v4);
  return a1;
}

uint64_t initializeWithTake for MLFewShotSoundClassifier.MLP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Dense(0);
  v5 = *(*(v4 - 8) + 32);
  v5(a1, a2, v4);
  v5(a1 + *(a3 + 20), *(a3 + 20) + a2, v4);
  return a1;
}

uint64_t assignWithTake for MLFewShotSoundClassifier.MLP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Dense(0);
  v5 = *(*(v4 - 8) + 40);
  v5(a1, a2, v4);
  v5(a1 + *(a3 + 20), *(a3 + 20) + a2, v4);
  return a1;
}

uint64_t type metadata completion function for MLFewShotSoundClassifier.MLP(uint64_t a1)
{
  result = type metadata accessor for Dense(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = v3[0];
    swift_initStructMetadata(a1, 256, 2, v3, a1 + 16);
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier.CausalConv1D(_OWORD *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v6 = *(a3 + 20);
    v7 = type metadata accessor for Conv1D(0);
    (*(*(v7 - 8) + 16))(a1 + v6, &a2[v6], v7);
    *(a1 + *(a3 + 24)) = *&a2[*(a3 + 24)];
  }

  return v3;
}

uint64_t destroy for MLFewShotSoundClassifier.CausalConv1D(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20) + a1;
  v3 = type metadata accessor for Conv1D(0);
  return (*(*(v3 - 8) + 8))(v2, v3);
}

char *initializeWithCopy for MLFewShotSoundClassifier.CausalConv1D(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = type metadata accessor for Conv1D(0);
  (*(*(v5 - 8) + 16))(&a1[v4], &a2[v4], v5);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

char *assignWithCopy for MLFewShotSoundClassifier.CausalConv1D(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v4 = *(a3 + 20);
  v5 = type metadata accessor for Conv1D(0);
  (*(*(v5 - 8) + 24))(&a1[v4], &a2[v4], v5);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

char *initializeWithTake for MLFewShotSoundClassifier.CausalConv1D(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = type metadata accessor for Conv1D(0);
  (*(*(v5 - 8) + 32))(&a1[v4], &a2[v4], v5);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

char *assignWithTake for MLFewShotSoundClassifier.CausalConv1D(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = type metadata accessor for Conv1D(0);
  (*(*(v5 - 8) + 40))(&a1[v4], &a2[v4], v5);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

uint64_t sub_15B9EF(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 20) + a1;
  v4 = type metadata accessor for Conv1D(0);
  return __swift_getEnumTagSinglePayload(v3, a2, v4);
}

uint64_t sub_15BA2B(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 20) + a1;
  v5 = type metadata accessor for Conv1D(0);
  return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
}

uint64_t type metadata completion function for MLFewShotSoundClassifier.CausalConv1D(uint64_t a1)
{
  v3[0] = &unk_343338;
  result = type metadata accessor for Conv1D(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    v3[2] = &value witness table for Builtin.Int32 + 64;
    swift_initStructMetadata(a1, 256, 3, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier.ConvolutionalNetwork(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v18 = *a2;
    *v3 = *a2;
    v3 = (v18 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for Conv2D(0);
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    v7 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
    *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
    v8 = a3[5];
    v24 = a1 + v8;
    v9 = a2 + v8;
    *(a1 + v8) = *(a2 + v8);
    v10 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
    v21 = a3;
    v11 = *(v10 + 20);
    v22 = type metadata accessor for Conv1D(0);
    v20 = *(*(v22 - 8) + 16);
    v20(&v24[v11], &v9[v11], v22);
    *&v24[*(v10 + 24)] = *&v9[*(v10 + 24)];
    v12 = v21[6];
    v25 = a1 + v12;
    v23 = a2 + v12;
    *(a1 + v12) = *(a2 + v12);
    v20(a1 + v12 + *(v10 + 20), a2 + v12 + *(v10 + 20), v22);
    *&v25[*(v10 + 24)] = *&v23[*(v10 + 24)];
    v13 = v21[7];
    v26 = a1 + v13;
    v14 = a2 + v13;
    *(a1 + v13) = *(a2 + v13);
    v20(a1 + v13 + *(v10 + 20), a2 + v13 + *(v10 + 20), v22);
    *&v26[*(v10 + 24)] = *&v14[*(v10 + 24)];
    v15 = v21[8];
    v16 = a1 + v15;
    v17 = a2 + v15;
    *(a1 + v15) = *(a2 + v15);
    v20(a1 + v15 + *(v10 + 20), a2 + v15 + *(v10 + 20), v22);
    *&v16[*(v10 + 24)] = *&v17[*(v10 + 24)];
  }

  return v3;
}

uint64_t destroy for MLFewShotSoundClassifier.ConvolutionalNetwork(uint64_t a1, int *a2)
{
  v2 = type metadata accessor for Conv2D(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = a1 + a2[5];
  v4 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v5 = v3 + *(v4 + 20);
  v6 = type metadata accessor for Conv1D(0);
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v7(a1 + a2[6] + *(v4 + 20), v6);
  v7(a1 + a2[7] + *(v4 + 20), v6);
  return (v7)(a1 + a2[8] + *(v4 + 20), v6);
}

uint64_t initializeWithCopy for MLFewShotSoundClassifier.ConvolutionalNetwork(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for Conv2D(0);
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  v6 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
  v7 = a3[5];
  v24 = a1 + v7;
  v27 = a2 + v7;
  *(a1 + v7) = *(a2 + v7);
  v8 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v9 = *(v8 + 20);
  v22 = v9 + v24;
  v10 = type metadata accessor for Conv1D(0);
  v11 = *(*(v10 - 8) + 16);
  v12 = v27 + v9;
  v13 = v10;
  v11(v22, v12);
  *(*(v8 + 24) + v24) = *(*(v8 + 24) + v27);
  v14 = a3[6];
  v28 = a1 + v14;
  v25 = a2 + v14;
  *(a1 + v14) = *(a2 + v14);
  v21 = v13;
  (v11)(a1 + v14 + *(v8 + 20), a2 + v14 + *(v8 + 20), v13);
  *(*(v8 + 24) + v28) = *(*(v8 + 24) + v25);
  v15 = a3[7];
  v29 = a1 + v15;
  v26 = a2 + v15;
  *(a1 + v15) = *(a2 + v15);
  (v11)(a1 + v15 + *(v8 + 20), a2 + v15 + *(v8 + 20), v13);
  *(*(v8 + 24) + v29) = *(*(v8 + 24) + v26);
  v16 = a3[8];
  v17 = (a1 + v16);
  v18 = *(a2 + v16);
  v19 = v16 + a2;
  *v17 = v18;
  (v11)(a1 + v16 + *(v8 + 20), v19 + *(v8 + 20), v21);
  *(v17 + *(v8 + 24)) = *(*(v8 + 24) + v19);
  return a1;
}

uint64_t assignWithCopy for MLFewShotSoundClassifier.ConvolutionalNetwork(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for Conv2D(0);
  (*(*(v5 - 8) + 24))(a1, a2, v5);
  v6 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
  v7 = a3[5];
  v24 = a1 + v7;
  v27 = a2 + v7;
  *(a1 + v7) = *(a2 + v7);
  *(a1 + v7 + 8) = *(a2 + v7 + 8);
  v8 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v9 = *(v8 + 20);
  v22 = v9 + v24;
  v10 = type metadata accessor for Conv1D(0);
  v11 = *(*(v10 - 8) + 24);
  v12 = v27 + v9;
  v13 = v10;
  v11(v22, v12);
  *(*(v8 + 24) + v24) = *(*(v8 + 24) + v27);
  v14 = a3[6];
  v28 = a1 + v14;
  v25 = a2 + v14;
  *(a1 + v14) = *(a2 + v14);
  *(a1 + v14 + 8) = *(a2 + v14 + 8);
  v21 = v13;
  (v11)(a1 + v14 + *(v8 + 20), a2 + v14 + *(v8 + 20), v13);
  *(*(v8 + 24) + v28) = *(*(v8 + 24) + v25);
  v15 = a3[7];
  v29 = a1 + v15;
  v26 = a2 + v15;
  *(a1 + v15) = *(a2 + v15);
  *(a1 + v15 + 8) = *(a2 + v15 + 8);
  (v11)(a1 + v15 + *(v8 + 20), a2 + v15 + *(v8 + 20), v13);
  v16 = v11;
  *(*(v8 + 24) + v29) = *(*(v8 + 24) + v26);
  v17 = a3[8];
  v18 = a1 + v17;
  v19 = a2 + v17;
  *(a1 + v17) = *(a2 + v17);
  *(a1 + v17 + 8) = *(a2 + v17 + 8);
  v16(a1 + v17 + *(v8 + 20), a2 + v17 + *(v8 + 20), v21);
  *(*(v8 + 24) + v18) = *(*(v8 + 24) + v19);
  return a1;
}

uint64_t initializeWithTake for MLFewShotSoundClassifier.ConvolutionalNetwork(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for Conv2D(0);
  (*(*(v5 - 8) + 32))(a1, a2, v5);
  v6 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
  v7 = a3[5];
  v24 = a1 + v7;
  v27 = a2 + v7;
  *(a1 + v7) = *(a2 + v7);
  v8 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v9 = *(v8 + 20);
  v22 = v9 + v24;
  v10 = type metadata accessor for Conv1D(0);
  v11 = *(*(v10 - 8) + 32);
  v12 = v27 + v9;
  v13 = v10;
  v11(v22, v12);
  *(*(v8 + 24) + v24) = *(*(v8 + 24) + v27);
  v14 = a3[6];
  v28 = a1 + v14;
  v25 = a2 + v14;
  *(a1 + v14) = *(a2 + v14);
  v21 = v13;
  (v11)(a1 + v14 + *(v8 + 20), a2 + v14 + *(v8 + 20), v13);
  *(*(v8 + 24) + v28) = *(*(v8 + 24) + v25);
  v15 = a3[7];
  v29 = a1 + v15;
  v26 = a2 + v15;
  *(a1 + v15) = *(a2 + v15);
  (v11)(a1 + v15 + *(v8 + 20), a2 + v15 + *(v8 + 20), v13);
  *(*(v8 + 24) + v29) = *(*(v8 + 24) + v26);
  v16 = a3[8];
  v17 = (a1 + v16);
  v18 = *(a2 + v16);
  v19 = v16 + a2;
  *v17 = v18;
  (v11)(a1 + v16 + *(v8 + 20), v19 + *(v8 + 20), v21);
  *(v17 + *(v8 + 24)) = *(*(v8 + 24) + v19);
  return a1;
}

uint64_t assignWithTake for MLFewShotSoundClassifier.ConvolutionalNetwork(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for Conv2D(0);
  (*(*(v5 - 8) + 40))(a1, a2, v5);
  v6 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
  v7 = a3[5];
  v24 = a1 + v7;
  v27 = a2 + v7;
  *(a1 + v7) = *(a2 + v7);
  v8 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v9 = *(v8 + 20);
  v22 = v9 + v24;
  v10 = type metadata accessor for Conv1D(0);
  v11 = *(*(v10 - 8) + 40);
  v12 = v27 + v9;
  v13 = v10;
  v11(v22, v12);
  *(*(v8 + 24) + v24) = *(*(v8 + 24) + v27);
  v14 = a3[6];
  v28 = a1 + v14;
  v25 = a2 + v14;
  *(a1 + v14) = *(a2 + v14);
  v21 = v13;
  (v11)(a1 + v14 + *(v8 + 20), a2 + v14 + *(v8 + 20), v13);
  *(*(v8 + 24) + v28) = *(*(v8 + 24) + v25);
  v15 = a3[7];
  v29 = a1 + v15;
  v26 = a2 + v15;
  *(a1 + v15) = *(a2 + v15);
  (v11)(a1 + v15 + *(v8 + 20), a2 + v15 + *(v8 + 20), v13);
  *(*(v8 + 24) + v29) = *(*(v8 + 24) + v26);
  v16 = a3[8];
  v17 = (a1 + v16);
  v18 = *(a2 + v16);
  v19 = v16 + a2;
  *v17 = v18;
  (v11)(a1 + v16 + *(v8 + 20), v19 + *(v8 + 20), v21);
  *(v17 + *(v8 + 24)) = *(*(v8 + 24) + v19);
  return a1;
}

uint64_t type metadata completion function for MLFewShotSoundClassifier.ConvolutionalNetwork(uint64_t a1)
{
  result = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(319);
  if (v2 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(319);
    if (v3 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      v6 = v5;
      v7 = v5;
      v8 = v5;
      swift_initStructMetadata(a1, 256, 5, &v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier.LeakyConv2D(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *v3 = *a2;
    v3 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for Conv2D(0);
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return v3;
}

uint64_t initializeWithCopy for MLFewShotSoundClassifier.LeakyConv2D(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conv2D(0);
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithCopy for MLFewShotSoundClassifier.LeakyConv2D(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conv2D(0);
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t initializeWithTake for MLFewShotSoundClassifier.LeakyConv2D(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conv2D(0);
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for MLFewShotSoundClassifier.LeakyConv2D(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conv2D(0);
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t type metadata completion function for MLFewShotSoundClassifier.LeakyConv2D(uint64_t a1)
{
  result = type metadata accessor for Conv2D(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.Int32 + 64;
    swift_initStructMetadata(a1, 256, 2, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier.TemporalClassifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v32 = *a2;
    *v4 = *a2;
    v4 = (v32 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = type metadata accessor for Conv2D(0);
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    v7 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
    *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
    v37 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
    v8 = v37[5];
    v9 = a1 + v8;
    v38 = a1 + v8;
    v41 = a2 + v8;
    *(a1 + v8) = *(a2 + v8);
    v10 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
    v11 = *(v10 + 20);
    v36 = &v9[v11];
    v12 = type metadata accessor for Conv1D(0);
    v13 = *(*(v12 - 8) + 16);
    v14 = &v41[v11];
    v15 = v12;
    v13(v36, v14);
    v16 = v13;
    *&v38[*(v10 + 24)] = *&v41[*(v10 + 24)];
    v17 = v37[6];
    v42 = a1 + v17;
    v39 = a2 + v17;
    *(a1 + v17) = *(a2 + v17);
    v18 = v15;
    v35 = v15;
    v19 = v15;
    v20 = v16;
    (v16)(a1 + v17 + *(v10 + 20), a2 + v17 + *(v10 + 20), v19);
    *&v42[*(v10 + 24)] = *&v39[*(v10 + 24)];
    v21 = v37[7];
    v43 = a1 + v21;
    v40 = a2 + v21;
    *(a1 + v21) = *(a2 + v21);
    v20(a1 + v21 + *(v10 + 20), a2 + v21 + *(v10 + 20), v18);
    v22 = v20;
    *&v43[*(v10 + 24)] = *&v40[*(v10 + 24)];
    v23 = v37[8];
    v24 = a1 + v23;
    v25 = a2 + v23;
    *(a1 + v23) = *(a2 + v23);
    v22(a1 + v23 + *(v10 + 20), a2 + v23 + *(v10 + 20), v35);
    *&v24[*(v10 + 24)] = *&v25[*(v10 + 24)];
    v26 = *(a3 + 20);
    v27 = a1 + v26;
    v28 = a2 + v26;
    v29 = type metadata accessor for Dense(0);
    v30 = *(*(v29 - 8) + 16);
    v30(v27, v28, v29);
    v31 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
    v30(&v27[*(v31 + 20)], &v28[*(v31 + 20)], v29);
  }

  return v4;
}

uint64_t destroy for MLFewShotSoundClassifier.TemporalClassifier(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Conv2D(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v4 = a1 + v3[5];
  v5 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v6 = v4 + *(v5 + 20);
  v7 = type metadata accessor for Conv1D(0);
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v8(a1 + v3[6] + *(v5 + 20), v7);
  v8(a1 + v3[7] + *(v5 + 20), v7);
  v8(a1 + v3[8] + *(v5 + 20), v7);
  v9 = a1 + *(a2 + 20);
  v10 = type metadata accessor for Dense(0);
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  v12 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  return (v11)(v9 + *(v12 + 20), v10);
}

uint64_t initializeWithCopy for MLFewShotSoundClassifier.TemporalClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conv2D(0);
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  v5 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  v33 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v6 = v33[5];
  v34 = a1 + v6;
  v7 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  v8 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v9 = *(v8 + 20);
  v37 = v34 + v9;
  v10 = type metadata accessor for Conv1D(0);
  v11 = *(*(v10 - 8) + 16);
  v12 = v7 + v9;
  v13 = v10;
  v11(v37, v12);
  v14 = v11;
  *(*(v8 + 24) + v34) = *(*(v8 + 24) + v7);
  v15 = v33[6];
  v35 = (a1 + v15);
  v38 = a2 + v15;
  *v35 = *(a2 + v15);
  v16 = v13;
  v32 = v13;
  v17 = v13;
  v18 = v14;
  (v14)(a1 + v15 + *(v8 + 20), a2 + v15 + *(v8 + 20), v17);
  *(v35 + *(v8 + 24)) = *(*(v8 + 24) + v38);
  v19 = v33[7];
  v36 = a1 + v19;
  v39 = a2 + v19;
  *(a1 + v19) = *(a2 + v19);
  v18(a1 + v19 + *(v8 + 20), a2 + v19 + *(v8 + 20), v16);
  v20 = v18;
  *(*(v8 + 24) + v36) = *(*(v8 + 24) + v39);
  v21 = v33[8];
  v22 = a1 + v21;
  v23 = a2 + v21;
  *(a1 + v21) = *(a2 + v21);
  v20(a1 + v21 + *(v8 + 20), a2 + v21 + *(v8 + 20), v32);
  *(*(v8 + 24) + v22) = *(*(v8 + 24) + v23);
  v24 = *(a3 + 20);
  v25 = a1 + v24;
  v26 = v24 + a2;
  v27 = type metadata accessor for Dense(0);
  v28 = *(*(v27 - 8) + 16);
  v28(v25, v26, v27);
  v29 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v28(*(v29 + 20) + v25, *(v29 + 20) + v26, v27);
  return a1;
}

uint64_t assignWithCopy for MLFewShotSoundClassifier.TemporalClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conv2D(0);
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  v5 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  v33 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v6 = v33[5];
  v34 = a1 + v6;
  v37 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  *(a1 + v6 + 8) = *(a2 + v6 + 8);
  v7 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v8 = *(v7 + 20);
  v32 = v34 + v8;
  v9 = type metadata accessor for Conv1D(0);
  v10 = *(*(v9 - 8) + 24);
  v11 = v37 + v8;
  v12 = v9;
  v10(v32, v11);
  v13 = v10;
  *(*(v7 + 24) + v34) = *(*(v7 + 24) + v37);
  v14 = v33[6];
  v38 = a1 + v14;
  v35 = a2 + v14;
  *(a1 + v14) = *(a2 + v14);
  *(a1 + v14 + 8) = *(a2 + v14 + 8);
  v15 = v12;
  v31 = v12;
  v16 = v12;
  v17 = v13;
  (v13)(a1 + v14 + *(v7 + 20), a2 + v14 + *(v7 + 20), v16);
  *(*(v7 + 24) + v38) = *(*(v7 + 24) + v35);
  v18 = v33[7];
  v39 = a1 + v18;
  v36 = a2 + v18;
  *(a1 + v18) = *(a2 + v18);
  *(a1 + v18 + 8) = *(a2 + v18 + 8);
  v17(a1 + v18 + *(v7 + 20), a2 + v18 + *(v7 + 20), v15);
  v19 = v17;
  *(*(v7 + 24) + v39) = *(*(v7 + 24) + v36);
  v20 = v33[8];
  v21 = a1 + v20;
  v22 = a2 + v20;
  *(a1 + v20) = *(a2 + v20);
  *(a1 + v20 + 8) = *(a2 + v20 + 8);
  v19(a1 + v20 + *(v7 + 20), a2 + v20 + *(v7 + 20), v31);
  *(*(v7 + 24) + v21) = *(*(v7 + 24) + v22);
  v23 = *(a3 + 20);
  v24 = a1 + v23;
  v25 = v23 + a2;
  v26 = type metadata accessor for Dense(0);
  v27 = *(*(v26 - 8) + 24);
  v27(v24, v25, v26);
  v28 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v27(*(v28 + 20) + v24, *(v28 + 20) + v25, v26);
  return a1;
}

uint64_t initializeWithTake for MLFewShotSoundClassifier.TemporalClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conv2D(0);
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  v5 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  v33 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v6 = v33[5];
  v34 = a1 + v6;
  v7 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  v8 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v9 = *(v8 + 20);
  v37 = v34 + v9;
  v10 = type metadata accessor for Conv1D(0);
  v11 = *(*(v10 - 8) + 32);
  v12 = v7 + v9;
  v13 = v10;
  v11(v37, v12);
  v14 = v11;
  *(*(v8 + 24) + v34) = *(*(v8 + 24) + v7);
  v15 = v33[6];
  v35 = (a1 + v15);
  v38 = a2 + v15;
  *v35 = *(a2 + v15);
  v16 = v13;
  v32 = v13;
  v17 = v13;
  v18 = v14;
  (v14)(a1 + v15 + *(v8 + 20), a2 + v15 + *(v8 + 20), v17);
  *(v35 + *(v8 + 24)) = *(*(v8 + 24) + v38);
  v19 = v33[7];
  v36 = a1 + v19;
  v39 = a2 + v19;
  *(a1 + v19) = *(a2 + v19);
  v18(a1 + v19 + *(v8 + 20), a2 + v19 + *(v8 + 20), v16);
  v20 = v18;
  *(*(v8 + 24) + v36) = *(*(v8 + 24) + v39);
  v21 = v33[8];
  v22 = a1 + v21;
  v23 = a2 + v21;
  *(a1 + v21) = *(a2 + v21);
  v20(a1 + v21 + *(v8 + 20), a2 + v21 + *(v8 + 20), v32);
  *(*(v8 + 24) + v22) = *(*(v8 + 24) + v23);
  v24 = *(a3 + 20);
  v25 = a1 + v24;
  v26 = v24 + a2;
  v27 = type metadata accessor for Dense(0);
  v28 = *(*(v27 - 8) + 32);
  v28(v25, v26, v27);
  v29 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v28(*(v29 + 20) + v25, *(v29 + 20) + v26, v27);
  return a1;
}

uint64_t assignWithTake for MLFewShotSoundClassifier.TemporalClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conv2D(0);
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  v5 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  v33 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v6 = v33[5];
  v34 = a1 + v6;
  v7 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  v8 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v9 = *(v8 + 20);
  v37 = v34 + v9;
  v10 = type metadata accessor for Conv1D(0);
  v11 = *(*(v10 - 8) + 40);
  v12 = v7 + v9;
  v13 = v10;
  v11(v37, v12);
  v14 = v11;
  *(*(v8 + 24) + v34) = *(*(v8 + 24) + v7);
  v15 = v33[6];
  v35 = (a1 + v15);
  v38 = a2 + v15;
  *v35 = *(a2 + v15);
  v16 = v13;
  v32 = v13;
  v17 = v13;
  v18 = v14;
  (v14)(a1 + v15 + *(v8 + 20), a2 + v15 + *(v8 + 20), v17);
  *(v35 + *(v8 + 24)) = *(*(v8 + 24) + v38);
  v19 = v33[7];
  v36 = a1 + v19;
  v39 = a2 + v19;
  *(a1 + v19) = *(a2 + v19);
  v18(a1 + v19 + *(v8 + 20), a2 + v19 + *(v8 + 20), v16);
  v20 = v18;
  *(*(v8 + 24) + v36) = *(*(v8 + 24) + v39);
  v21 = v33[8];
  v22 = a1 + v21;
  v23 = a2 + v21;
  *(a1 + v21) = *(a2 + v21);
  v20(a1 + v21 + *(v8 + 20), a2 + v21 + *(v8 + 20), v32);
  *(*(v8 + 24) + v22) = *(*(v8 + 24) + v23);
  v24 = *(a3 + 20);
  v25 = a1 + v24;
  v26 = v24 + a2;
  v27 = type metadata accessor for Dense(0);
  v28 = *(*(v27 - 8) + 40);
  v28(v25, v26, v27);
  v29 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v28(*(v29 + 20) + v25, *(v29 + 20) + v26, v27);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_3Tm(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), uint64_t (*a5)(void))
{
  v7 = a1;
  v8 = a4(0);
  if (*(*(v8 - 8) + 84) != a2)
  {
    v8 = a5(0);
    v7 = *(a3 + 20) + a1;
  }

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

uint64_t __swift_store_extra_inhabitant_index_4Tm(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t a1), uint64_t (*a6)(void))
{
  v9 = a1;
  v10 = a5(0);
  if (*(*(v10 - 8) + 84) != a3)
  {
    v10 = a6(0);
    v9 = *(a4 + 20) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v9, a2, a2, v10);
}

uint64_t type metadata completion function for MLFewShotSoundClassifier.TemporalClassifier(uint64_t a1)
{
  result = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for MLFewShotSoundClassifier.MLP(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      swift_initStructMetadata(a1, 256, 2, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t MLFewShotSoundClassifier.TemporalClassifier.init(outputs:inputChannels:)(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v21 = a1;
  v22 = v2;
  v23 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  v3 = *(*(v23 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v25 = &v20;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for ParameterInitializer(0);
  v30 = type metadata accessor for ComputeDevice(0);
  __swift_storeEnumTagSinglePayload(&v20, 1, 1, v30);
  v10 = static ParameterInitializer.randomNormal(mean:standardDeviation:seed:scalarType:on:)(0xFFFFFFFLL, 0, &type metadata for Float, &protocol witness table for Float, &v20, 0.0, 0.1);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v20, &demangling cache variable for type metadata for ComputeDevice?);
  v11 = static ParameterInitializer.zeros.getter(&v20);
  __swift_storeEnumTagSinglePayload(&v20, 1, 1, v30);
  v27 = v9;
  v30 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(0xFFFFFFFLL, 0, &type metadata for Float, &protocol witness table for Float, &v20);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v20, &demangling cache variable for type metadata for ComputeDevice?);
  v26 = static ParameterInitializer.zeros.getter(&v20);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLFewShotSoundClassifier.CausalConv1D>);
  v13 = *(type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0) - 8);
  v14 = swift_allocObject(v12, ((*(v13 + 80) + 32) & ~*(v13 + 80)) + 4 * *(v13 + 72), *(v13 + 80) | 7);
  v28 = v14;
  *(v14 + 16) = 4;
  *(v14 + 24) = 8;

  MLFewShotSoundClassifier.CausalConv1D.init(alpha:filterCount:kernelSize:stride:dilation:weightInitializer:biasInitializer:)(4, 5, 1, 1uLL, v10, v11, 0.1);

  MLFewShotSoundClassifier.CausalConv1D.init(alpha:filterCount:kernelSize:stride:dilation:weightInitializer:biasInitializer:)(8, 5, 1, 2uLL, v10, v11, 0.1);

  MLFewShotSoundClassifier.CausalConv1D.init(alpha:filterCount:kernelSize:stride:dilation:weightInitializer:biasInitializer:)(8, 5, 1, 4uLL, v10, v11, 0.1);

  v29 = v11;

  MLFewShotSoundClassifier.CausalConv1D.init(alpha:filterCount:kernelSize:stride:dilation:weightInitializer:biasInitializer:)(8, 5, 1, 8uLL, v10, v11, 0.1);

  v15 = static ParameterInitializer.zeros.getter(v10);
  v16 = v25;
  Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(10, v24, 1, 1, 1, 0, 0, 1, 1, 1, v10, v15);
  *(v16 + *(v23 + 20)) = LeakyReLU.init(alpha:)(0.1);
  MLFewShotSoundClassifier.ConvolutionalNetwork.init(causal:featureReduction:)(v28, v16);
  type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
  v17 = v30;

  v18 = v26;

  Dense.init(unitCount:weightInitializer:biasInitializer:)(32, v17, v18);
  type metadata accessor for MLFewShotSoundClassifier.MLP(0);

  Dense.init(unitCount:weightInitializer:biasInitializer:)(v21, v17, v18);
}

uint64_t MLFewShotSoundClassifier.CausalConv1D.init(alpha:kernelSize:stride:dilation:weight:bias:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v30 = a4;
  v32 = a3;
  v25 = a2;
  v31 = a6;
  v8 = v6;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v26 = &v24;
  v12 = type metadata accessor for Tensor(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  if (__OFSUB__(a1, 1))
  {
    BUG();
  }

  if (!is_mul_ok(v32, a1 - 1))
  {
    BUG();
  }

  v27 = v12;
  v17 = v13;
  v28 = v13;
  *v8 = ZeroPad1D.init(size:)(v32 * (a1 - 1), 0);
  v8[1] = v18;
  v29 = v8;
  (*(v17 + 16))(&v24, v30, v12);
  v19 = a5;
  v20 = v26;
  outlined init with copy of Tensor?(a5, v26);
  v21 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v22 = v29;
  Conv1D.init(weight:bias:stride:padding:dilation:groupCount:)(&v24, v20, v25, 0, v32, 1);
  LODWORD(v32) = LeakyReLU.init(alpha:)(v31);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for Tensor?);
  (*(v28 + 8))(v30, v27);
  result = *(v21 + 24);
  *(v22 + result) = v32;
  return result;
}

uint64_t MLFewShotSoundClassifier.CausalConv1D.init(alpha:filterCount:kernelSize:stride:dilation:weightInitializer:biasInitializer:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v8 = v7;
  if (__OFSUB__(a2, 1))
  {
    BUG();
  }

  if (!is_mul_ok(a4, a2 - 1))
  {
    BUG();
  }

  *v7 = ZeroPad1D.init(size:)(a4 * (a2 - 1), 0);
  v8[1] = v11;
  v12 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);

  Conv1D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(a1, a2, a3, 0, a4, 1, a5, a6);
  v16 = LeakyReLU.init(alpha:)(a7);

  result = *(v12 + 24);
  *(v8 + result) = v16;
  return result;
}

uint64_t MLFewShotSoundClassifier.CausalConv1D.forward(_:)(uint64_t a1)
{
  v16 = a1;
  v14 = v1;
  v3 = type metadata accessor for Tensor(0);
  v15 = *(v3 - 8);
  v4 = *(v15 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  v17 = *(v2 + *(type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0) + 24));
  v13 = *v2;
  v9 = lazy protocol witness table accessor for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding();
  Layer.callAsFunction(_:)(v16, &type metadata for MLFewShotSoundClassifier.CausalPadding, v9);
  v10 = type metadata accessor for Conv1D(0);
  Layer.callAsFunction(_:)(&v13, v10, &protocol witness table for Conv1D);
  v11 = *(v15 + 8);
  v11(&v13, v3);
  Layer.callAsFunction(_:)(&v13, &type metadata for LeakyReLU, &protocol witness table for LeakyReLU);
  return (v11)(&v13, v3);
}

uint64_t MLFewShotSoundClassifier.MLP.forward(_:)()
{
  v17 = v0;
  v18 = type metadata accessor for Tensor(0);
  v19 = *(v18 - 8);
  v2 = *(v19 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = alloca(v2);
  v6 = alloca(v2);
  v7 = alloca(v2);
  v8 = alloca(v2);
  v21 = &v17;
  v20 = v1 + *(type metadata accessor for MLFewShotSoundClassifier.MLP(0) + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<TensorRangeExpression?>);
  v10 = swift_allocObject(v9, 152, 7);
  v11 = v10;
  *(v10 + 16) = 3;
  *(v10 + 24) = 6;
  *(v10 + 32) = 0;
  *(v10 + 48) = 0;
  *(v10 + 64) = 0;
  *(v10 + 80) = 0;
  *(v10 + 96) = 0;
  *(v10 + 136) = &type metadata for Int;
  *(v10 + 144) = &protocol witness table for Int;
  *(v10 + 112) = -1;
  Tensor.subscript.getter(v10);
  v11;
  v12 = type metadata accessor for Dense(0);
  Layer.callAsFunction(_:)(&v17, v12, &protocol witness table for Dense);
  v13 = *(v19 + 8);
  v14 = v18;
  v13(&v17, v18);
  v15 = v21;
  relu(_:)(&v17);
  v13(&v17, v14);
  Layer.callAsFunction(_:)(v15, v12, &protocol witness table for Dense);
  return (v13)(v15, v14);
}

uint64_t MLFewShotSoundClassifier.LeakyConv2D.forward(_:)(unint64_t a1, uint64_t a2)
{
  v39 = v3;
  v43 = a1;
  v33 = v2;
  v34 = type metadata accessor for Tensor(0);
  v44 = *(v34 - 8);
  v4 = *(v44 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v35 = v32;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v42 = v32;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v38 = v32;
  v11 = alloca(v4);
  v12 = alloca(v4);
  v37 = v32;
  v13 = type metadata accessor for TensorShape(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  Tensor.shape.getter(0, a2, v18);
  v36 = TensorShape.subscript.getter(0);
  v19 = *(v14 + 8);
  v19(v32, v13);
  Tensor.shape.getter(v32, v13, v20);
  v45 = TensorShape.subscript.getter(1);
  v19(v32, v13);
  Tensor.shape.getter(v32, v13, v21);
  v22 = TensorShape.subscript.getter(2);
  v40 = v13;
  v41 = v19;
  v19(v32, v13);
  Tensor.transposed(permutation:)(&outlined read-only object #0 of MLFewShotSoundClassifier.LeakyConv2D.forward(_:));
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v24 = swift_allocObject(v23, 64, 7);
  v24[2] = 4;
  v24[3] = 8;
  v43 = v22;
  if (!is_mul_ok(v22, v36))
  {
    BUG();
  }

  v24[4] = v22 * v36;
  v24[5] = 1;
  v24[6] = v45;
  v24[7] = 1;
  TensorShape.init(_:)(v24);
  v45 = v23;
  v25 = v38;
  Tensor.reshaped(to:)(v32);
  v41(v32, v40);
  v32[3] = *(v39 + *(type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0) + 20));
  v26 = type metadata accessor for Conv2D(0);
  v27 = v35;
  Layer.callAsFunction(_:)(v25, v26, &protocol witness table for Conv2D);
  Layer.callAsFunction(_:)(v27, &type metadata for LeakyReLU, &protocol witness table for LeakyReLU);
  v44 = *(v44 + 8);
  v28 = v34;
  (v44)(v27, v34);
  v29 = swift_allocObject(v45, 56, 7);
  v29[2] = 3;
  v29[3] = 6;
  v29[4] = v36;
  v29[5] = v43;
  v29[6] = Conv2D.filterCount.getter();
  TensorShape.init(_:)(v29);
  Tensor.reshaped(to:)(v32);
  v41(v32, v40);
  Tensor.transposed(permutation:)(&outlined read-only object #1 of MLFewShotSoundClassifier.LeakyConv2D.forward(_:));
  v30 = v44;
  (v44)(v27, v28);
  v30(v42, v28);
  v30(v38, v28);
  return (v30)(v37, v28);
}

uint64_t MLFewShotSoundClassifier.ConvolutionalNetwork.init(causal:featureReduction:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v5 = *(a1 + 16);
  if (!v5)
  {
    BUG();
  }

  v6 = v4;
  v12 = v3;
  v7 = v3 + *(v4 + 20);
  v8 = *(type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0) - 8);
  v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  outlined init with copy of MLFewShotSoundClassifier.CausalConv1D(v9, v7);
  if (v5 == 1)
  {
    BUG();
  }

  v10 = *(v8 + 72);
  outlined init with copy of MLFewShotSoundClassifier.CausalConv1D(v10 + v9, v12 + v6[6]);
  if (v5 < 3)
  {
    BUG();
  }

  outlined init with copy of MLFewShotSoundClassifier.CausalConv1D(v9 + 2 * v10, v12 + v6[7]);
  if (v5 == 3)
  {
    BUG();
  }

  outlined init with copy of MLFewShotSoundClassifier.CausalConv1D(3 * v10 + v9, v12 + v6[8]);
  a1;
  return outlined init with take of MLFewShotSoundClassifier.LeakyConv2D(a2, v12);
}

uint64_t MLFewShotSoundClassifier.ConvolutionalNetwork.forward(_:)(uint64_t a1)
{
  v3 = v1;
  v18 = type metadata accessor for Tensor(0);
  v19 = *(v18 - 8);
  v4 = *(v19 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v22 = &v17;
  v7 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  v8 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLFewShotSoundClassifier.LeakyConv2D and conformance MLFewShotSoundClassifier.LeakyConv2D, type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D, &protocol conformance descriptor for MLFewShotSoundClassifier.LeakyConv2D);
  Layer.callAsFunction(_:)(a1, v7, v8);
  v24 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v23 = v2;
  v9 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v20 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalConv1D and conformance MLFewShotSoundClassifier.CausalConv1D, type metadata accessor for MLFewShotSoundClassifier.CausalConv1D, &protocol conformance descriptor for MLFewShotSoundClassifier.CausalConv1D);
  v21 = v9;
  Layer.callAsFunction(_:)(v22, v9, v20);
  v25 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork.Output(0);
  v10 = v3 + *(v25 + 20);
  v11 = v9;
  v12 = v20;
  Layer.callAsFunction(_:)(v3, v11, v20);
  v13 = v3 + *(v25 + 24);
  v14 = v10;
  v15 = v21;
  Layer.callAsFunction(_:)(v14, v21, v12);
  Layer.callAsFunction(_:)(v13, v15, v12);
  return (*(v19 + 8))(v22, v18);
}

uint64_t *MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:)(unint64_t a1, uint64_t *a2)
{
  v87 = v3;
  v63 = a1;
  v68 = v2;
  v64 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  v4 = *(*(v64 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v65 = &v63;
  v80 = type metadata accessor for ScalarType(0);
  v85 = *(v80 - 8);
  v7 = *(v85 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v90 = &v63;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v84 = &v63;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v82 = &v63;
  v16 = *(*(type metadata accessor for TensorShape(0) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v19 = type metadata accessor for Tensor(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v23 = v87;
  v24 = BlobsFile.floatBlob(at:)(0);
  if (!v23)
  {
    v87 = v24;
    v92 = &v63;
    v81 = v19;
    v88 = &v63;
    v26 = v80;
    v27 = BlobsFile.floatBlob(at:)(1uLL);
    v86 = BlobsFile.floatBlob(at:)(2uLL);
    v83 = BlobsFile.floatBlob(at:)(3uLL);
    v75 = BlobsFile.floatBlob(at:)(4uLL);
    v69 = BlobsFile.floatBlob(at:)(5uLL);
    v66 = BlobsFile.floatBlob(at:)(6uLL);
    v91 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLFewShotSoundClassifier.CausalConv1D>);
    v28 = *(type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0) - 8);
    v76 = *(v28 + 72);
    v29 = *(v28 + 80);
    v79 = (v29 + 32) & ~v29;
    v30 = swift_allocObject(v91, v79 + 4 * v76, v29 | 7);
    *(v30 + 16) = 4;
    *(v30 + 24) = 8;
    v67 = v30;
    v79 += v30;
    TensorShape.init(_:)(&outlined read-only object #0 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:));
    v71 = specialized Collection.prefix(_:)(200, v27);
    v72 = v31;
    v73 = v32;
    v74 = v33;
    v91 = type metadata accessor for ComputeDevice(0);
    __swift_storeEnumTagSinglePayload(v82, 1, 1, v91);
    v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ArraySlice<Float>);
    v70 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ArraySlice<Float> and conformance ArraySlice<A>, &demangling cache variable for type metadata for ArraySlice<Float>, &protocol conformance descriptor for ArraySlice<A>);
    Tensor.init<A>(shape:scalars:on:)(v92, &v71, v82, v77, v70);
    TensorShape.init(_:)(&outlined read-only object #1 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:));
    v89 = enum case for ScalarType.float32(_:);
    v85 = *(v85 + 104);
    (v85)(v90, enum case for ScalarType.float32(_:), v26);
    v34 = v82;
    __swift_storeEnumTagSinglePayload(v82, 1, 1, v91);
    v35 = v84;
    Tensor.init(zeros:scalarType:on:)(v92, v90, v34);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v81);
    v36 = v79;
    MLFewShotSoundClassifier.CausalConv1D.init(alpha:kernelSize:stride:dilation:weight:bias:)(5, 1, 1uLL, v88, v84, 0.1);
    v78 = v36 + v76;
    TensorShape.init(_:)(&outlined read-only object #2 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:));
    v71 = specialized Collection.prefix(_:)(160, v86);
    v72 = v37;
    v73 = v38;
    v74 = v39;
    v40 = v82;
    __swift_storeEnumTagSinglePayload(v82, 1, 1, v91);
    Tensor.init<A>(shape:scalars:on:)(v92, &v71, v40, v77, v70);
    TensorShape.init(_:)(&outlined read-only object #3 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:));
    (v85)(v90, v89, v80);
    v41 = v40;
    __swift_storeEnumTagSinglePayload(v40, 1, 1, v91);
    v42 = v84;
    Tensor.init(zeros:scalarType:on:)(v92, v90, v41);
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v81);
    MLFewShotSoundClassifier.CausalConv1D.init(alpha:kernelSize:stride:dilation:weight:bias:)(5, 1, 2uLL, v88, v42, 0.1);
    v78 = v79 + 2 * v76;
    TensorShape.init(_:)(&outlined read-only object #4 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:));
    v71 = v83;
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v91);
    v86 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    v83 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
    Tensor.init<A>(shape:scalars:on:)(v92, &v71, v41, v86, v83);
    TensorShape.init(_:)(&outlined read-only object #5 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:));
    (v85)(v90, v89, v80);
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v91);
    v43 = v84;
    Tensor.init(zeros:scalarType:on:)(v92, v90, v41);
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v81);
    MLFewShotSoundClassifier.CausalConv1D.init(alpha:kernelSize:stride:dilation:weight:bias:)(5, 1, 4uLL, v88, v43, 0.1);
    v79 += 3 * v76;
    v44 = v92;
    TensorShape.init(_:)(&outlined read-only object #6 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:));
    v71 = v75;
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v91);
    Tensor.init<A>(shape:scalars:on:)(v44, &v71, v41, v86, v83);
    TensorShape.init(_:)(&outlined read-only object #7 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:));
    (v85)(v90, v89, v80);
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v91);
    v45 = v84;
    Tensor.init(zeros:scalarType:on:)(v92, v90, v41);
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v81);
    MLFewShotSoundClassifier.CausalConv1D.init(alpha:kernelSize:stride:dilation:weight:bias:)(5, 1, 8uLL, v88, v45, 0.1);
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v47 = swift_allocObject(v46, 64, 7);
    v47[2] = 4;
    v47[3] = 8;
    v47[4] = 10;
    v47[5] = 1;
    v48 = v63;
    v47[6] = v63;
    v47[7] = 1;
    TensorShape.init(_:)(v47);
    if (!is_mul_ok(0xAuLL, v48))
    {
      BUG();
    }

    v71 = specialized Collection.prefix(_:)(10 * v48, v87);
    v72 = v49;
    v73 = v50;
    v74 = v51;
    v52 = v82;
    __swift_storeEnumTagSinglePayload(v82, 1, 1, v91);
    Tensor.init<A>(shape:scalars:on:)(v92, &v71, v52, v77, v70);
    TensorShape.init(_:)(&outlined read-only object #8 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:));
    v53 = v90;
    (v85)(v90, v89, v80);
    __swift_storeEnumTagSinglePayload(v52, 1, 1, v91);
    Tensor.init(zeros:scalarType:on:)(v92, v53, v52);
    v54 = v84;
    __swift_storeEnumTagSinglePayload(v84, 0, 1, v81);
    v55 = v65;
    Conv2D.init(weight:bias:stride:padding:dilation:groupCount:)(v88, v54, 1, 1, 0, 0, 1, 1, 1);
    *(v55 + *(v64 + 20)) = LeakyReLU.init(alpha:)(0.1);
    MLFewShotSoundClassifier.ConvolutionalNetwork.init(causal:featureReduction:)(v67, v55);
    v56 = v92;
    TensorShape.init(_:)(&outlined read-only object #9 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:));
    v71 = v69;
    v57 = v82;
    __swift_storeEnumTagSinglePayload(v82, 1, 1, v91);
    Tensor.init<A>(shape:scalars:on:)(v56, &v71, v57, v86, v83);
    TensorShape.init(_:)(&outlined read-only object #10 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:));
    (v85)(v90, v89, v80);
    v58 = v57;
    __swift_storeEnumTagSinglePayload(v57, 1, 1, v91);
    v59 = v84;
    Tensor.init(zeros:scalarType:on:)(v92, v90, v58);
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v81);
    v87 = (v68 + *(type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0) + 20));
    Dense.init(weight:bias:)(v88, v59);
    v60 = v92;
    TensorShape.init(_:)(&outlined read-only object #11 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:));
    v71 = v66;
    __swift_storeEnumTagSinglePayload(v82, 1, 1, v91);
    v61 = v82;
    Tensor.init<A>(shape:scalars:on:)(v60, &v71, v82, v86, v83);
    TensorShape.init(_:)(&outlined read-only object #12 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:));
    (v85)(v90, v89, v80);
    __swift_storeEnumTagSinglePayload(v61, 1, 1, v91);
    v62 = v84;
    Tensor.init(zeros:scalarType:on:)(v92, v90, v61);
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v81);
    type metadata accessor for MLFewShotSoundClassifier.MLP(0);
    Dense.init(weight:bias:)(v88, v62);
  }

  return outlined release of BlobsFile(a2);
}